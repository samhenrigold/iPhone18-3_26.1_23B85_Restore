uint64_t QueryScope.rawValue.getter()
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

unint64_t sub_2541BB99C()
{
  result = qword_27F5BA4F8;
  if (!qword_27F5BA4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA4F8);
  }

  return result;
}

unint64_t sub_2541BB9F4()
{
  result = qword_27F5BA500;
  if (!qword_27F5BA500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BA508, &qword_254259870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA500);
  }

  return result;
}

uint64_t sub_2541BBB04()
{
  v0 = sub_25424DA78();
  __swift_allocate_value_buffer(v0, qword_27F5BA510);
  __swift_project_value_buffer(v0, qword_27F5BA510);
  return sub_25424DA58();
}

uint64_t sub_2541BBB50()
{
  v0 = sub_25424DA78();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F5B8410 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_27F5BA510);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_25424DA68();
  result = (*(v1 + 8))(v3, v0);
  qword_27F5BC830 = v5 / 8;
  return result;
}

uint64_t LubyRackoffEncryptionKey.init()()
{
  v0 = sub_25424DA78();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F5B8410 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_27F5BA510);
  (*(v1 + 16))(v3, v4, v0);
  return sub_25424DA28();
}

uint64_t LubyRackoffEncryptionKey.init(data:)(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v3 = v4 - v5;
    if (!__OFSUB__(v4, v5))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v3 = BYTE6(a2);
    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_16;
  }

  v3 = HIDWORD(result) - result;
LABEL_11:
  if (qword_27F5B8418 != -1)
  {
    v6 = result;
    swift_once();
    result = v6;
  }

  if (v3 == qword_27F5BC830)
  {
    return sub_25424DA18();
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

BOOL static LubyRackoffEncryptionKey.isValidInputData(_:)(_BOOL8 result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v3 = v4 - v5;
    if (!__OFSUB__(v4, v5))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v3 = BYTE6(a2);
    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
    __break(1u);
    return result;
  }

  v3 = HIDWORD(result) - result;
LABEL_11:
  if (qword_27F5B8418 != -1)
  {
    swift_once();
  }

  return v3 == qword_27F5BC830;
}

BOOL sub_2541BBF5C(_BOOL8 result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v3 = v4 - v5;
    if (!__OFSUB__(v4, v5))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v3 = BYTE6(a2);
    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
    __break(1u);
    return result;
  }

  v3 = HIDWORD(result) - result;
LABEL_11:
  if (qword_27F5B8418 != -1)
  {
    swift_once();
  }

  return v3 == qword_27F5BC830;
}

uint64_t sub_2541BC060(uint64_t a1)
{
  *(a1 + 8) = sub_2541BC114(&qword_27F5BA528, &protocol conformance descriptor for LubyRackoffEncryptionKey);
  result = sub_2541BC114(&qword_27F5BA530, &protocol conformance descriptor for LubyRackoffEncryptionKey);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for LubyRackoffEncryptionKey(uint64_t a1)
{
  result = qword_27F5BA538;
  if (!qword_27F5BA538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2541BC114(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LubyRackoffEncryptionKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2541BC184(uint64_t a1)
{
  result = sub_25424DA48();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static Configuration.zoneName(forHomeIdentifier:target:)(uint64_t a1, _BYTE *a2)
{
  v4 = sub_25424D948();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  if (*a2)
  {
    static Configuration.energyKitZoneUUID(forHomeIdentifier:)(a1, v8);
  }

  else
  {
    static Configuration.zoneUUID(forHomeIdentifier:)(a1, v8);
  }

  (*(v5 + 32))(v10, v8, v4);
  v16 = sub_25424D8D8();
  v17 = v11;
  v14 = 0x2D73746E657665;
  v15 = 0xE700000000000000;
  v14 = sub_25424DE78();
  v15 = v12;
  sub_25424DDD8();
  (*(v5 + 8))(v10, v4);

  return v14;
}

int8x8_t static Configuration.defaultFeaturesDataSource.getter@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_2541BE050();
  *a2 = v3 & 1;
  v4 = vdupq_n_s64(v3);
  *v4.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v4, xmmword_2542588C0), vshlq_u64(v4, xmmword_2542588B0))), 0x1000100010001);
  result = vuzp1_s8(*v4.i8, *v4.i8);
  *(a2 + 1) = result.i32[0];
  return result;
}

id static Configuration.containerID.getter()
{
  v0 = sub_2541BC5E0();
  v1 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v2 = sub_25424DCA8();
  v3 = [v1 initWithContainerIdentifier:v2 environment:v0];

  return v3;
}

uint64_t sub_2541BC5E0()
{
  v1 = sub_25424DAA8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281407080 != -1)
  {
    swift_once();
  }

  if (byte_281407088 != 1)
  {
    return 1;
  }

  v5 = objc_opt_self();
  v6 = [v5 standardUserDefaults];
  v7 = sub_25424DCA8();
  v8 = [v6 objectForKey_];

  if (v8)
  {
    sub_25424E5D8();
    swift_unknownObjectRelease();
    sub_254132E5C(v26, &qword_27F5BA568, &qword_254259B88);
    v9 = [v5 standardUserDefaults];
    v10 = sub_25424DCA8();
    v11 = [v9 BOOLForKey_];

    if (v11)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    static LoggedObject.logger.getter(v0, &protocol witness table for Configuration, v4);
    v13 = sub_25424DA88();
    v14 = sub_25424E448();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v26[0] = v25;
      *v15 = 136315650;
      *(v15 + 4) = sub_2542203C4(0xD000000000000020, 0x8000000254250FC0, v26);
      *(v15 + 12) = 1024;
      *(v15 + 14) = v11;
      *(v15 + 18) = 2080;
      v16 = CKContainerEnvironmentString();
      v17 = sub_25424DCB8();
      v18 = v2;
      v20 = v19;

      v21 = sub_2542203C4(v17, v20, v26);

      *(v15 + 20) = v21;
      _os_log_impl(&dword_254124000, v13, v14, "Detected preference '%s' = %{BOOL}d, using environment: %s", v15, 0x1Cu);
      v22 = v25;
      swift_arrayDestroy();
      MEMORY[0x259C07330](v22, -1, -1);
      MEMORY[0x259C07330](v15, -1, -1);

      (*(v18 + 8))(v4, v1);
    }

    else
    {

      (*(v2 + 8))(v4, v1);
    }
  }

  else
  {
    memset(v26, 0, sizeof(v26));
    sub_254132E5C(v26, &qword_27F5BA568, &qword_254259B88);
    return 1;
  }

  return v12;
}

id sub_2541BC988(uint64_t a1, unint64_t a2, id a3, uint64_t (*a4)(id), uint64_t a5)
{
  v11 = sub_25424DAA8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v38 - v17;
  if (qword_281407080 != -1)
  {
    v36 = a1;
    v37 = v16;
    swift_once();
    v16 = v37;
    a1 = v36;
  }

  if (byte_281407088 == 1)
  {
    v38[1] = a5;
    v39 = a4;
    v41 = v16;
    v42 = a3;
    v40 = v12;
    v19 = objc_opt_self();
    v20 = [v19 standardUserDefaults];
    v21 = sub_25424DCA8();
    v22 = a1;
    v23 = [v20 objectForKey_];

    if (v23)
    {
      v24 = v5;
      sub_25424E5D8();
      swift_unknownObjectRelease();
      sub_254132E5C(v43, &qword_27F5BA568, &qword_254259B88);
      v25 = [v19 standardUserDefaults];
      v38[0] = v22;
      v26 = sub_25424DCA8();
      a3 = [v25 integerForKey_];

      if (v39(a3))
      {
        static LoggedObject.logger.getter(v24, &protocol witness table for Configuration, v18);

        v27 = sub_25424DA88();
        v28 = sub_25424E448();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *&v43[0] = v30;
          *v29 = 136315394;
          *(v29 + 4) = sub_2542203C4(v38[0], a2, v43);
          *(v29 + 12) = 2048;
          *(v29 + 14) = a3;
          _os_log_impl(&dword_254124000, v27, v28, "Detected preference '%s' = %ld", v29, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v30);
          MEMORY[0x259C07330](v30, -1, -1);
          MEMORY[0x259C07330](v29, -1, -1);
        }

        (*(v40 + 8))(v18, v41);
        return a3;
      }

      static LoggedObject.logger.getter(v24, &protocol witness table for Configuration, v15);

      v31 = sub_25424DA88();
      v32 = sub_25424E428();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *&v43[0] = v34;
        *v33 = 136315394;
        *(v33 + 4) = sub_2542203C4(v38[0], a2, v43);
        *(v33 + 12) = 2048;
        *(v33 + 14) = a3;
        _os_log_impl(&dword_254124000, v31, v32, "Ignoring invalid preference '%s' = %ld", v33, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x259C07330](v34, -1, -1);
        MEMORY[0x259C07330](v33, -1, -1);
      }

      (*(v40 + 8))(v15, v41);
    }

    else
    {
      memset(v43, 0, sizeof(v43));
      sub_254132E5C(v43, &qword_27F5BA568, &qword_254259B88);
    }

    return v42;
  }

  return a3;
}

id sub_2541BCDF8()
{
  result = sub_2541BCE18();
  qword_27F5BA548 = result;
  return result;
}

id sub_2541BCE18()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBC230]) init];
  [v0 setUseZoneWidePCS_];
  type metadata accessor for Configuration();
  v1 = sub_2541BC5E0();
  v2 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v3 = sub_25424DCA8();
  v4 = [v2 initWithContainerIdentifier:v3 environment:v1];

  v5 = [objc_allocWithZone(MEMORY[0x277CBC218]) initWithContainerID:v4 options:v0];
  return v5;
}

id static Configuration.cloudKitContainer.getter()
{
  if (qword_27F5B8420 != -1)
  {
    swift_once();
  }

  v1 = qword_27F5BA548;

  return v1;
}

uint64_t static Configuration.zoneUUID(forHomeIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22[8] = *MEMORY[0x277D85DE8];
  v21 = sub_25424DCF8();
  v3 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25424D948();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v22[0] = sub_25424D928();
  v22[1] = v10;
  sub_25424D928();
  v11 = sub_2541BAC60(v22, 0x10uLL);
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9270, &qword_254253EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_254254360;
  sub_25424DCE8();
  v15 = sub_25424DCC8();
  v17 = v16;
  (*(v3 + 8))(v5, v21);
  if (v17 >> 60 == 15)
  {
    __break(1u);
  }

  *(inited + 32) = v15;
  *(inited + 40) = v17;
  sub_25420B638(v11, v13, inited, v20);
  return (*(v7 + 8))(v9, v6);
}

uint64_t static Configuration.energyKitZoneUUID(forHomeIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22[8] = *MEMORY[0x277D85DE8];
  v21 = sub_25424DCF8();
  v3 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25424D948();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v22[0] = sub_25424D928();
  v22[1] = v10;
  sub_25424D928();
  v11 = sub_2541BAC60(v22, 0x10uLL);
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9270, &qword_254253EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_254254360;
  sub_25424DCE8();
  v15 = sub_25424DCC8();
  v17 = v16;
  (*(v3 + 8))(v5, v21);
  if (v17 >> 60 == 15)
  {
    __break(1u);
  }

  *(inited + 32) = v15;
  *(inited + 40) = v17;
  sub_25420B638(v11, v13, inited, v20);
  return (*(v7 + 8))(v9, v6);
}

uint64_t static Configuration.zoneName(forZoneUUID:)(uint64_t a1)
{
  sub_25424D8D8();
  v2 = sub_25424DE78();
  sub_25424DDD8();

  return v2;
}

uint64_t static Configuration.reset(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_25424E128();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = v2;

  sub_25419CC1C(0, 0, v7, &unk_2542599E8, v9);
}

uint64_t sub_2541BD878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_25424DAA8();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2541BD948, 0, 0);
}

uint64_t sub_2541BD948()
{
  static LoggedObject.logger.getter(v0[4], &protocol witness table for Configuration, v0[8]);
  v1 = sub_25424DA88();
  v2 = sub_25424E448();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_254124000, v1, v2, "Resetting configuration", v3, 2u);
    MEMORY[0x259C07330](v3, -1, -1);
  }

  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];

  v7 = *(v6 + 8);
  v0[9] = v7;
  v7(v4, v5);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_2541BDABC;

  return (sub_2542199F4)();
}

uint64_t sub_2541BDABC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_2541BDC48;
  }

  else
  {
    v2 = sub_2541BDBD0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2541BDBD0()
{
  (*(v0 + 16))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2541BDC48()
{
  v1 = v0[11];
  static LoggedObject.logger.getter(v0[4], &protocol witness table for Configuration, v0[7]);
  v2 = v1;
  v3 = sub_25424DA88();
  v4 = sub_25424E428();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_254124000, v3, v4, "Failed to reset configuration: %{public}@", v6, 0xCu);
    sub_254132E5C(v7, &unk_27F5BBED0, &qword_254253F80);
    MEMORY[0x259C07330](v7, -1, -1);
    MEMORY[0x259C07330](v6, -1, -1);
  }

  v10 = v0[11];
  v11 = v0[9];
  v12 = v0[7];
  v13 = v0[5];
  v14 = v0[2];

  v11(v12, v13);
  v15 = v10;
  v14(v10);

  v16 = v0[1];

  return v16();
}

void sub_2541BDEA0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_25424D398();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

HomeKitEvents::Configuration::TargetCloudKitZone_optional __swiftcall Configuration.TargetCloudKitZone.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_2541BDF70@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

id Configuration.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for Configuration();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2541BDFD8()
{
  if (qword_281407080 != -1)
  {
    swift_once();
  }

  return byte_281407088;
}

unint64_t sub_2541BE050()
{
  v12 = &type metadata for FeatureFlags;
  v0 = sub_2541BE404();
  v13 = v0;
  LOBYTE(v11[0]) = 1;
  v1 = sub_25424D9B8();
  __swift_destroy_boxed_opaque_existential_1(v11);
  v12 = &type metadata for FeatureFlags;
  v13 = v0;
  LOBYTE(v11[0]) = 3;
  v2 = sub_25424D9B8();
  __swift_destroy_boxed_opaque_existential_1(v11);
  v12 = &type metadata for FeatureFlags;
  v13 = v0;
  LOBYTE(v11[0]) = 4;
  v3 = sub_25424D9B8();
  __swift_destroy_boxed_opaque_existential_1(v11);
  v12 = &type metadata for FeatureFlags;
  v13 = v0;
  LOBYTE(v11[0]) = 5;
  v4 = sub_25424D9B8();
  __swift_destroy_boxed_opaque_existential_1(v11);
  if (v1)
  {
    v12 = &type metadata for FeatureFlags;
    v13 = v0;
    LOBYTE(v11[0]) = 2;
    v5 = sub_25424D9B8();
    __swift_destroy_boxed_opaque_existential_1(v11);
    v6 = 256;
    if ((v5 & 1) == 0)
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 0x100000000;
  if ((v4 & 1) == 0)
  {
    v7 = 0;
  }

  v8 = 0x1000000;
  if ((v3 & 1) == 0)
  {
    v8 = 0;
  }

  v9 = 0x10000;
  if ((v2 & 1) == 0)
  {
    v9 = 0;
  }

  return v9 & 0xFFFFFFFFFFFFFFFELL | v1 & 1 | v8 | v7 | v6;
}

uint64_t sub_2541BE184(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25412F724;

  return sub_2541BD878(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_2541BE274()
{
  result = qword_27F5BA550;
  if (!qword_27F5BA550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA550);
  }

  return result;
}

unint64_t sub_2541BE2CC()
{
  result = qword_27F5BA558;
  if (!qword_27F5BA558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BA560, &qword_254259A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA558);
  }

  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Configuration.DefaultFeaturesDataSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Configuration.DefaultFeaturesDataSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_2541BE404()
{
  result = qword_27F5BA570;
  if (!qword_27F5BA570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA570);
  }

  return result;
}

uint64_t sub_2541BE458()
{
  sub_25424EBD8();
  sub_25424EBF8();
  return sub_25424EC28();
}

uint64_t sub_2541BE4CC(uint64_t a1)
{
  sub_25424EBD8();
  sub_25424EBF8();
  return sub_25424EC28();
}

_BYTE *sub_2541BE510@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_2541BE53C(uint64_t result, unint64_t a2, unint64_t *a3)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_8;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 >= 4)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 4)
      {
        goto LABEL_11;
      }

LABEL_8:
      *a3 = 0xD00000000000001CLL;
      a3[1] = 0x8000000254251080;
LABEL_32:
      sub_254182650();
      swift_willThrowTypedImpl();
      sub_254134D04(v4, a2);
      return v4;
    }

    goto LABEL_35;
  }

  if (BYTE6(a2) < 4uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v5 == 2)
  {
    v13 = *(result + 16);
    v12 = *(result + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      v10 = a3;
LABEL_17:
      result = sub_254140660(result, a2);
      if (v11 >= 4)
      {
        goto LABEL_18;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v5 == 1)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      v10 = a3;
      v11 = HIDWORD(result) - result;
      goto LABEL_17;
    }

    goto LABEL_36;
  }

  v10 = a3;
  LODWORD(v11) = BYTE6(a2);
  if (BYTE6(a2) < 4uLL)
  {
    goto LABEL_25;
  }

LABEL_18:
  LODWORD(v11) = sub_2542435B8(v4, a2);
  result = sub_254134D04(v4, a2);
  if (v11 >> 29)
  {
    v15 = 0x8000000254251020;
    v16 = 0xD000000000000022;
LABEL_31:
    *v10 = v16;
    v10[1] = v15;
    goto LABEL_32;
  }

  if (v5 != 2)
  {
    if (v5 != 1)
    {
      v14 = BYTE6(a2);
      goto LABEL_29;
    }

    LODWORD(v14) = HIDWORD(v4) - v4;
    if (!__OFSUB__(HIDWORD(v4), v4))
    {
      v14 = v14;
LABEL_29:
      if (v14 == (v11 & 0xFFFFFFF) + 4)
      {
        return v4;
      }

      v15 = 0x8000000254251050;
      v16 = 0xD000000000000025;
      goto LABEL_31;
    }

    goto LABEL_38;
  }

LABEL_26:
  v18 = *(v4 + 16);
  v17 = *(v4 + 24);
  v8 = __OFSUB__(v17, v18);
  v14 = v17 - v18;
  if (!v8)
  {
    goto LABEL_29;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_2541BE760(unsigned int a1)
{
  v25[5] = *MEMORY[0x277D85DE8];
  LODWORD(v25[0]) = bswap32(a1);
  v1 = sub_2541AF8F4(v25, v25 + 4);
  v25[3] = MEMORY[0x277CC9318];
  v25[4] = MEMORY[0x277CC9300];
  v25[0] = v1;
  v25[1] = v2;
  v3 = __swift_project_boxed_opaque_existential_1(v25, MEMORY[0x277CC9318]);
  v4 = *v3;
  v5 = v3[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 != 2)
    {
      memset(v23, 0, 14);
      v8 = v23;
      v7 = v23;
      goto LABEL_23;
    }

    v9 = *(v4 + 16);
    v10 = *(v4 + 24);
    v11 = sub_25424D268();
    if (v11)
    {
      v12 = sub_25424D298();
      v4 = v9 - v12;
      if (__OFSUB__(v9, v12))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v11 += v4;
    }

    v13 = __OFSUB__(v10, v9);
    v14 = v10 - v9;
    if (!v13)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v23[0] = *v3;
    LOWORD(v23[1]) = v5;
    BYTE2(v23[1]) = BYTE2(v5);
    BYTE3(v23[1]) = BYTE3(v5);
    BYTE4(v23[1]) = BYTE4(v5);
    BYTE5(v23[1]) = BYTE5(v5);
    v7 = v23 + BYTE6(v5);
    v8 = v23;
    goto LABEL_23;
  }

  v15 = v4;
  v16 = v4 >> 32;
  v14 = v16 - v15;
  if (v16 < v15)
  {
    __break(1u);
    goto LABEL_25;
  }

  v11 = sub_25424D268();
  if (v11)
  {
    v17 = sub_25424D298();
    if (!__OFSUB__(v15, v17))
    {
      v11 += v15 - v17;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v18 = sub_25424D288();
  if (v18 >= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = v18;
  }

  v20 = (v19 + v11);
  if (v11)
  {
    v7 = v20;
  }

  else
  {
    v7 = 0;
  }

  v8 = v11;
LABEL_23:
  sub_2541BE964(v8, v7, &v24);
  v21 = v24;
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v21;
}

_BYTE *sub_2541BE964@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2541BEA18(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2541BEAD0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2541BEB4C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t sub_2541BE9F8(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_2541BEA18(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
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

uint64_t sub_2541BEAD0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_25424D2B8();
  swift_allocObject();
  result = sub_25424D258();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25424D468();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2541BEB4C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_25424D2B8();
  swift_allocObject();
  result = sub_25424D258();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2541BEC18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 24))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 16) & 0x1000000000000000) != 0)) | ((*(a1 + 16) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2541BEC6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 3;
    if (a3 >= 3)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

unint64_t sub_2541BED08()
{
  result = qword_27F5BA578;
  if (!qword_27F5BA578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA578);
  }

  return result;
}

uint64_t sub_2541BED64(unint64_t a1, char a2)
{
  v3 = v2;
  if (*(v2 + 120) == 1)
  {
    *(v2 + 120) = 0;
    swift_getObjectType();
    sub_25424E508();
  }

  swift_beginAccess();
  *(v2 + 128) = MEMORY[0x277D84F98];

  v6 = a1;
  v34 = a2;
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_26:
    if (*(*(v3 + 128) + 16))
    {
      if (v34)
      {
        return sub_2541BF428();
      }
    }

    return result;
  }

LABEL_5:
  if (result >= 1)
  {
    v8 = 0;
    v36 = v6;
    v37 = v6 & 0xC000000000000001;
    v35 = result;
    while (1)
    {
      if (v37)
      {
        v10 = MEMORY[0x259C06580](v8);
      }

      else
      {
        v10 = *(v6 + 8 * v8 + 32);
      }

      v39 = v10;
      v11 = [v10 zoneID];
      v12 = [v11 zoneName];
      v13 = sub_25424DCB8();
      v15 = v14;

      v38 = v11;
      v16 = [v11 ownerName];
      v17 = sub_25424DCB8();
      a1 = v18;

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *(v3 + 128);
      v21 = v3;
      *(v3 + 128) = 0x8000000000000000;
      v23 = sub_25422095C(v13, v15);
      v24 = v20[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        result = sub_25424E868();
        v6 = a1;
        if (!result)
        {
          goto LABEL_26;
        }

        goto LABEL_5;
      }

      v3 = v22;
      if (v20[3] >= v26)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v22)
          {
            goto LABEL_7;
          }
        }

        else
        {
          sub_254222B4C();
          if (v3)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
        sub_25422121C(v26, isUniquelyReferenced_nonNull_native);
        v27 = sub_25422095C(v13, v15);
        if ((v3 & 1) != (v28 & 1))
        {
          goto LABEL_31;
        }

        v23 = v27;
        if (v3)
        {
LABEL_7:
          v9 = (v20[7] + 16 * v23);
          *v9 = v17;
          v9[1] = a1;

          goto LABEL_8;
        }
      }

      v20[(v23 >> 6) + 8] |= 1 << v23;
      v29 = (v20[6] + 16 * v23);
      *v29 = v13;
      v29[1] = v15;
      v30 = (v20[7] + 16 * v23);
      *v30 = v17;
      v30[1] = a1;
      v31 = v20[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_24;
      }

      v20[2] = v33;
LABEL_8:
      ++v8;
      v3 = v21;
      *(v21 + 128) = v20;
      swift_endAccess();

      result = v35;
      v6 = v36;
      if (v35 == v8)
      {
        goto LABEL_26;
      }
    }
  }

  __break(1u);
LABEL_31:
  result = sub_25424EB38();
  __break(1u);
  return result;
}

uint64_t sub_2541BF078()
{
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2541BF0DC()
{
  v1 = v0;
  v15 = sub_25424DAC8();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25424E4D8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v14[1] = sub_254148D7C(0, &qword_27F5BA5A8, 0x277D85CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA5B0, &qword_254259FB0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2542542D0;
  sub_25424E4B8();
  sub_25424E4C8();
  v16 = v9;
  sub_2541BFA20(&qword_27F5BA5B8, MEMORY[0x277D85298], MEMORY[0x277D852A8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA5C0, &qword_254259FB8);
  sub_2541BFA68(&qword_27F5BA5C8, &qword_27F5BA5C0, &qword_254259FB8);
  sub_25424E5F8();
  sub_254148D7C(0, &unk_27F5BA5D0, 0x277D85C78);
  v10 = v15;
  (*(v2 + 104))(v4, *MEMORY[0x277D851D0], v15);
  v11 = sub_25424E4A8();
  (*(v2 + 8))(v4, v10);
  v12 = sub_25424E4E8();

  (*(v6 + 8))(v8, v5);
  *(v1 + 112) = v12;
  *(v1 + 120) = 0;
  *(v1 + 128) = MEMORY[0x277D84F98];
  return v1;
}

uint64_t sub_2541BF3EC()
{
  type metadata accessor for SharedZoneOwnerNameCache();
  v0 = swift_allocObject();
  result = sub_2541BF0DC();
  qword_27F5BC838 = v0;
  return result;
}

uint64_t sub_2541BF428()
{
  v1 = sub_25424DAB8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25424DAE8();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 120) & 1) == 0)
  {
    *(v0 + 120) = 1;
    swift_getObjectType();
    v10 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_2541BF94C;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2541FA910;
    aBlock[3] = &block_descriptor_5;
    v11 = _Block_copy(aBlock);

    sub_25424DAD8();
    sub_2541BF874();
    sub_25424E4F8();
    _Block_release(v11);
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v9, v5);

    return sub_25424E518();
  }

  return result;
}

uint64_t sub_2541BF68C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_25424E128();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_25419CC1C(0, 0, v3, &unk_254259FA8, v7);
  }

  return result;
}

uint64_t sub_2541BF7CC()
{
  v1 = *(v0 + 40);
  if (*(v1 + 120) == 1)
  {
    *(v1 + 120) = 0;
    swift_getObjectType();
    sub_25424E508();
    v1 = *(v0 + 40);
  }

  swift_beginAccess();
  *(v1 + 128) = MEMORY[0x277D84F98];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2541BF874()
{
  sub_25424DAB8();
  sub_2541BFA20(&qword_27F5BA588, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA590, &unk_254259F90);
  sub_2541BFA68(&unk_27F5BA598, &qword_27F5BA590, &unk_254259F90);
  return sub_25424E5F8();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2541BF96C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25412F724;

  return sub_2541BF7AC(a1, v4, v5, v6);
}

uint64_t sub_2541BFA20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2541BFA68(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t ThermostatReducedEnergyAutomationEvent.State.result.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for ThermostatReducedEnergyAutomationEvent.State(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t ThermostatReducedEnergyAutomationEvent.State.init(trigger:result:)@<X0>(uint64_t a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_2541C62C8(a1, a3, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  result = type metadata accessor for ThermostatReducedEnergyAutomationEvent.State(0);
  *(a3 + *(result + 20)) = v4;
  return result;
}

unint64_t sub_2541BFBB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAA20, &qword_25425B718);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAA28, &unk_25425B720);
  v3 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.State(0);
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_254254360;
  if (qword_27F5B8440 != -1)
  {
    swift_once();
  }

  v6 = off_27F5BA5F8;
  v7 = *(off_27F5BA5F8 + 2);
  if (v7)
  {

    result = sub_25418E184(v7);
    if ((result & 0x8000000000000000) != 0)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v9 = result;
    if (result >= v6[2])
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v10 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger(0);
    v11 = *(v10 - 8);
    sub_2541C6938(v6 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9, v2, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);

    (*(v11 + 56))(v2, 0, 1, v10);
  }

  else
  {
    v10 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger(0);
    (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  }

  type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger(0);
  result = (*(*(v10 - 8) + 48))(v2, 1, v10);
  if (result != 1)
  {
    if (qword_27F5B8448 != -1)
    {
      result = swift_once();
    }

    v12 = off_27F5BA600;
    v13 = *(off_27F5BA600 + 2);
    if (!v13)
    {
      goto LABEL_20;
    }

    result = sub_25418E184(v13);
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(v12 + 2))
    {
      v14 = v12[result + 16];

      result = sub_2541C62C8(v2, v5 + v4, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
      *(v5 + v4 + *(v3 + 20)) = v14;
      qword_27F5BA5E0 = v5;
      return result;
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2541BFF48(uint64_t a1)
{
  v2 = sub_2541C6BE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541BFF84(uint64_t a1)
{
  v2 = sub_2541C6BE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails.init(endDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25424D8B8();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t static ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails.random.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25424D8B8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  result = sub_25424D8A8();
  if (qword_27F5B8438 != -1)
  {
    result = swift_once();
  }

  if (COERCE__INT64(fabs(*(&xmmword_27F5BA5E8 + 1) - *&xmmword_27F5BA5E8)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_2541B1390(0x20000000000001uLL);
    sub_25424D7D8();
    (*(v3 + 8))(v6, v2);
    return (*(v3 + 32))(a1, v8, v2);
  }

  return result;
}

double sub_2541C01F4()
{
  result = 7200.0;
  xmmword_27F5BA5E8 = xmmword_254259FC0;
  return result;
}

uint64_t sub_2541C0228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25424EAB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2541C02B0(uint64_t a1)
{
  v2 = sub_2541C620C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C02EC(uint64_t a1)
{
  v2 = sub_2541C620C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA608, &qword_254259FD0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C620C();
  sub_25424EC78();
  sub_25424D8B8();
  sub_2541C6260(&qword_27F5B8C78, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_25424EA18();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails.hash(into:)(uint64_t a1)
{
  sub_25424D8B8();
  sub_2541C6260(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);

  return sub_25424DC28();
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails.hashValue.getter()
{
  sub_25424EBD8();
  sub_25424D8B8();
  sub_2541C6260(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  return sub_25424EC28();
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_25424D8B8();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA618, &qword_254259FD8);
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C620C();
  sub_25424EC68();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_2541C6260(&qword_27F5B8CA8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_25424E978();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_2541C62C8(v11, v13, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2541C0860(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA608, &qword_254259FD0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C620C();
  sub_25424EC78();
  sub_25424D8B8();
  sub_2541C6260(&qword_27F5B8C78, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_25424EA18();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2541C09D8()
{
  sub_25424EBD8();
  sub_25424D8B8();
  sub_2541C6260(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  return sub_25424EC28();
}

uint64_t sub_2541C0A60(uint64_t a1)
{
  sub_25424D8B8();
  sub_2541C6260(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);

  return sub_25424DC28();
}

uint64_t sub_2541C0AE4(uint64_t a1)
{
  sub_25424EBD8();
  sub_25424D8B8();
  sub_2541C6260(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  return sub_25424EC28();
}

uint64_t sub_2541C0B6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAA18, &qword_25425B710);
  v0 = *(type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger(0) - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_254254360;
  result = static ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails.random.getter(v2 + v1);
  off_27F5BA5F8 = v2;
  return result;
}

uint64_t static ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA620, &qword_254259FE0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16 - v12;
  v14 = *(v11 + 56);
  sub_2541C6938(a1, &v16 - v12, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_2541C6938(a2, &v13[v14], type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_2541C62C8(v13, v9, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  sub_2541C62C8(&v13[v14], v7, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  LOBYTE(a2) = _s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0();
  sub_2541C69A0(v7, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  sub_2541C69A0(v9, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  return a2 & 1;
}

uint64_t sub_2541C0E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000254251120 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_25424EAB8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2541C0E94(uint64_t a1)
{
  v2 = sub_2541C6330();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C0ED0(uint64_t a1)
{
  v2 = sub_2541C6330();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541C0F0C(uint64_t a1)
{
  v2 = sub_2541C6384();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C0F48(uint64_t a1)
{
  v2 = sub_2541C6384();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.encode(to:)(void *a1)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA628, &qword_254259FE8);
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - v3;
  v5 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA630, &qword_254259FF0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C6330();
  sub_25424EC78();
  sub_2541C6938(v14, v7, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_2541C6384();
  sub_25424E9A8();
  type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);
  sub_2541C6260(&qword_27F5BA648, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails, &protocol conformance descriptor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  v12 = v15;
  sub_25424EA18();
  sub_2541C69A0(v7, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  (*(v2 + 8))(v4, v12);
  return (*(v9 + 8))(v11, v8);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2541C6938(v1, v7, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_2541C62C8(v7, v4, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  MEMORY[0x259C06AA0](0);
  sub_25424D8B8();
  sub_2541C6260(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  return sub_2541C69A0(v4, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.hashValue.getter()
{
  v1 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424EBD8();
  sub_2541C6938(v0, v6, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_2541C62C8(v6, v3, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  MEMORY[0x259C06AA0](0);
  sub_25424D8B8();
  sub_2541C6260(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  sub_2541C69A0(v3, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  return sub_25424EC28();
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v22 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger(0);
  MEMORY[0x28223BE20](v22);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA650, &qword_254259FF8);
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA658, &unk_25425A000);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C6330();
  v11 = v30;
  sub_25424EC68();
  if (v11)
  {
    goto LABEL_10;
  }

  v30 = a1;
  v13 = v23;
  v12 = v24;
  v14 = sub_25424E988();
  v15 = (2 * *(v14 + 16)) | 1;
  v26 = v14;
  v27 = v14 + 32;
  v28 = 0;
  v29 = v15;
  v16 = v10;
  if ((sub_25414087C() & 1) != 0 || v28 != v29 >> 1)
  {
    v18 = sub_25424E6F8();
    swift_allocError();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40);
    *v20 = v22;
    sub_25424E908();
    sub_25424E6E8();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84160], v18);
    swift_willThrow();
    (*(v25 + 8))(v16, v8);
    swift_unknownObjectRelease();
    a1 = v30;
LABEL_10:
    v17 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  sub_2541C6384();
  sub_25424E8F8();
  type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);
  sub_2541C6260(&qword_27F5BA660, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails, &protocol conformance descriptor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  v22 = v10;
  sub_25424E978();
  (*(v13 + 8))(v7, v5);
  (*(v25 + 8))(v22, v8);
  swift_unknownObjectRelease();
  sub_2541C62C8(v4, v12, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  v17 = v30;
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_2541C1980()
{
  v1 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424EBD8();
  sub_2541C6938(v0, v6, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_2541C62C8(v6, v4, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  MEMORY[0x259C06AA0](0);
  sub_25424D8B8();
  sub_2541C6260(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  sub_2541C69A0(v4, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  return sub_25424EC28();
}

uint64_t sub_2541C1B00(uint64_t a1)
{
  v2 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2541C6938(v1, v7, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_2541C62C8(v7, v5, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  MEMORY[0x259C06AA0](0);
  sub_25424D8B8();
  sub_2541C6260(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  return sub_2541C69A0(v5, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
}

uint64_t sub_2541C1C6C(uint64_t a1)
{
  v2 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424EBD8();
  sub_2541C6938(v1, v7, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_2541C62C8(v7, v5, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  MEMORY[0x259C06AA0](0);
  sub_25424D8B8();
  sub_2541C6260(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  sub_2541C69A0(v5, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  return sub_25424EC28();
}

uint64_t sub_2541C1E14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA620, &qword_254259FE0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16 - v12;
  v14 = *(v11 + 56);
  sub_2541C6938(a1, &v16 - v12, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_2541C6938(a2, &v13[v14], type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_2541C62C8(v13, v9, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  sub_2541C62C8(&v13[v14], v7, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  LOBYTE(a2) = _s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0();
  sub_2541C69A0(v7, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  sub_2541C69A0(v9, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  return a2 & 1;
}

uint64_t sub_2541C1FE0(uint64_t a1)
{
  v2 = sub_2541C6480();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C201C(uint64_t a1)
{
  v2 = sub_2541C6480();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541C2058(uint64_t a1)
{
  v2 = sub_2541C642C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C2094(uint64_t a1)
{
  v2 = sub_2541C642C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541C20D0()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0x4572656E61656C63;
  }
}

uint64_t sub_2541C211C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4572656E61656C63 && a2 == 0xED0000796772656ELL;
  if (v6 || (sub_25424EAB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000254251140 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25424EAB8();

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

uint64_t sub_2541C2208(uint64_t a1)
{
  v2 = sub_2541C63D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C2244(uint64_t a1)
{
  v2 = sub_2541C63D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PauseDetails.EndCondition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA668, &qword_25425A010);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA670, &qword_25425A018);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA678, &qword_25425A020);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C63D8();
  sub_25424EC78();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_2541C642C();
    v14 = v18;
    sub_25424E9A8();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_2541C6480();
    sub_25424E9A8();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PauseDetails.EndCondition.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA698, &qword_25425A028);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA6A0, &qword_25425A030);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA6A8, &qword_25425A038);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C63D8();
  v12 = v31;
  sub_25424EC68();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_25424E988();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_254140878();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_25424E6F8();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40);
      *v22 = &type metadata for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PauseDetails.EndCondition;
      sub_25424E908();
      sub_25424E6E8();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_2541C642C();
        sub_25424E8F8();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_2541C6480();
        sub_25424E8F8();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

HomeKitEvents::ThermostatReducedEnergyAutomationEvent::ThermostatReducedEnergyAutomationResult::PauseDetails __swiftcall ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PauseDetails.init(runningState:endCondition:)(HomeKitEvents::ThermostatReducedEnergyAutomationEvent::ThermostatReducedEnergyAutomationResult::PausedRunningState runningState, HomeKitEvents::ThermostatReducedEnergyAutomationEvent::ThermostatReducedEnergyAutomationResult::PauseDetails::EndCondition endCondition)
{
  v3 = *endCondition;
  *v2 = *runningState;
  v2[1] = v3;
  result.runningState = runningState;
  return result;
}

unint64_t static ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PauseDetails.random.getter@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25418E184(2uLL);
  if (result > 1)
  {
    __break(1u);
  }

  else
  {
    v3 = byte_286633708[result + 32];
    result = sub_25418E184(2uLL);
    if (result <= 1)
    {
      v4 = byte_286633730[result + 32];
      *a1 = v3;
      a1[1] = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2541C2B20()
{
  if (*v0)
  {
    return 0x69646E6F43646E65;
  }

  else
  {
    return 0x53676E696E6E7572;
  }
}

uint64_t sub_2541C2B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x53676E696E6E7572 && a2 == 0xEC00000065746174;
  if (v6 || (sub_25424EAB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69646E6F43646E65 && a2 == 0xEC0000006E6F6974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25424EAB8();

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

uint64_t sub_2541C2C50(uint64_t a1)
{
  v2 = sub_2541C64D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C2C8C(uint64_t a1)
{
  v2 = sub_2541C64D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PauseDetails.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA6B0, &qword_25425A040);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C64D4();
  sub_25424EC78();
  v15 = v8;
  v14 = 0;
  sub_2541C6528();
  sub_25424EA18();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_2541C657C();
    sub_25424EA18();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PauseDetails.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x259C06AA0](*v0);
  return MEMORY[0x259C06AA0](v1);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PauseDetails.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v1);
  MEMORY[0x259C06AA0](v2);
  return sub_25424EC28();
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PauseDetails.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA6D0, &qword_25425A048);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C64D4();
  sub_25424EC68();
  if (!v2)
  {
    v15 = 0;
    sub_2541C65D0();
    sub_25424E978();
    v9 = v16;
    v13 = 1;
    sub_2541C6624();
    sub_25424E978();
    (*(v6 + 8))(v8, v5);
    v11 = v14;
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2541C3108()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v1);
  MEMORY[0x259C06AA0](v2);
  return sub_25424EC28();
}

uint64_t sub_2541C3168()
{
  v1 = v0[1];
  MEMORY[0x259C06AA0](*v0);
  return MEMORY[0x259C06AA0](v1);
}

uint64_t sub_2541C31A8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v2);
  MEMORY[0x259C06AA0](v3);
  return sub_25424EC28();
}

unint64_t sub_2541C322C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAA10, &qword_25425B708);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2542542D0;
  *(v0 + 32) = 2;
  result = static ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PauseDetails.random.getter(v3);
  if (v3[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 34) = v2 | v3[0];
  off_27F5BA600 = v0;
  return result;
}

uint64_t sub_2541C32D8()
{
  if (*v0)
  {
    return 1952540008;
  }

  else
  {
    return 1819242339;
  }
}

uint64_t sub_2541C32FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1819242339 && a2 == 0xE400000000000000;
  if (v5 || (sub_25424EAB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1952540008 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25424EAB8();

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

uint64_t sub_2541C33D8(uint64_t a1)
{
  v2 = sub_2541C6678();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C3414(uint64_t a1)
{
  v2 = sub_2541C6678();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541C3450(uint64_t a1)
{
  v2 = sub_2541C6720();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C348C(uint64_t a1)
{
  v2 = sub_2541C6720();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541C34C8(uint64_t a1)
{
  v2 = sub_2541C66CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C3504(uint64_t a1)
{
  v2 = sub_2541C66CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PausedRunningState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA6E8, &qword_25425A050);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA6F0, &qword_25425A058);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA6F8, &qword_25425A060);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C6678();
  sub_25424EC78();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_2541C66CC();
    v14 = v18;
    sub_25424E9A8();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_2541C6720();
    sub_25424E9A8();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PausedRunningState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA718, &qword_25425A068);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA720, &qword_25425A070);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA728, &qword_25425A078);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C6678();
  v12 = v31;
  sub_25424EC68();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_25424E988();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_254140878();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_25424E6F8();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40);
      *v22 = &type metadata for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PausedRunningState;
      sub_25424E908();
      sub_25424E6E8();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_2541C66CC();
        sub_25424E8F8();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_2541C6720();
        sub_25424E8F8();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

BOOL static ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.== infix(_:_:)(_WORD *a1, _WORD *a2)
{
  v2 = *a2;
  if (*a1 == 2)
  {
    return v2 == 2;
  }

  if (v2 == 2)
  {
    return 0;
  }

  return ((*a2 ^ *a1) & 0x101) == 0;
}

uint64_t sub_2541C3D38()
{
  if (*v0)
  {
    return 0x646573756170;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_2541C3D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v5 || (sub_25424EAB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646573756170 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25424EAB8();

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

uint64_t sub_2541C3E40(uint64_t a1)
{
  v2 = sub_2541C6774();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C3E7C(uint64_t a1)
{
  v2 = sub_2541C6774();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541C3EB8(uint64_t a1)
{
  v2 = sub_2541C6870();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C3EF4(uint64_t a1)
{
  v2 = sub_2541C6870();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541C3F30(uint64_t a1)
{
  v2 = sub_2541C67C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C3F6C(uint64_t a1)
{
  v2 = sub_2541C67C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA730, &qword_25425A080);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA738, &qword_25425A088);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA740, &qword_25425A090);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C6774();
  sub_25424EC78();
  if (v12 == 2)
  {
    v21 = 0;
    sub_2541C6870();
    sub_25424E9A8();
    (*(v16 + 8))(v7, v17);
  }

  else
  {
    v23 = 1;
    sub_2541C67C8();
    v14 = v18;
    sub_25424E9A8();
    v22 = v12 & 0x101;
    sub_2541C681C();
    v15 = v20;
    sub_25424EA18();
    (*(v19 + 8))(v14, v15);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 2)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x259C06AA0](1);
    MEMORY[0x259C06AA0](v1 & 1);
    v2 = (v1 >> 8) & 1;
  }

  return MEMORY[0x259C06AA0](v2);
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.hashValue.getter()
{
  v1 = *v0;
  sub_25424EBD8();
  v2 = 0;
  if (v1 != 2)
  {
    MEMORY[0x259C06AA0](1);
    MEMORY[0x259C06AA0](v1 & 1);
    v2 = (v1 >> 8) & 1;
  }

  MEMORY[0x259C06AA0](v2);
  return sub_25424EC28();
}

uint64_t ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.init(from:)@<X0>(void *a1@<X0>, __int16 *a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA768, &qword_25425A098);
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA770, &qword_25425A0A0);
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA778, &unk_25425A0A8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2541C6774();
  v15 = v39;
  sub_25424EC68();
  if (!v15)
  {
    v39 = v11;
    v17 = v37;
    v16 = v38;
    v18 = sub_25424E988();
    v19 = (2 * *(v18 + 16)) | 1;
    v41 = v18;
    v42 = v18 + 32;
    v43 = 0;
    v44 = v19;
    v20 = sub_254140878();
    if (v20 == 2 || v43 != v44 >> 1)
    {
      v24 = sub_25424E6F8();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40);
      *v26 = &type metadata for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult;
      sub_25424E908();
      sub_25424E6E8();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v39 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v20)
      {
        v45 = 1;
        sub_2541C67C8();
        v21 = v13;
        v22 = v6;
        sub_25424E8F8();
        v23 = v39;
        v30 = v16;
        sub_2541C68C4();
        v31 = v22;
        v32 = v35;
        sub_25424E978();
        (*(v36 + 8))(v31, v32);
        (*(v23 + 8))(v21, v10);
        swift_unknownObjectRelease();
        if (v46)
        {
          v33 = 256;
        }

        else
        {
          v33 = 0;
        }

        v34 = v33 | v45;
      }

      else
      {
        v45 = 0;
        sub_2541C6870();
        v28 = v9;
        sub_25424E8F8();
        v29 = v39;
        v30 = v16;
        (*(v17 + 8))(v28, v7);
        (*(v29 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v34 = 2;
      }

      *v30 = v34;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_2541C48A4()
{
  v1 = *v0;
  sub_25424EBD8();
  v2 = 0;
  if (v1 != 2)
  {
    MEMORY[0x259C06AA0](1);
    MEMORY[0x259C06AA0](v1 & 1);
    v2 = (v1 >> 8) & 1;
  }

  MEMORY[0x259C06AA0](v2);
  return sub_25424EC28();
}

uint64_t sub_2541C4914()
{
  v1 = *v0;
  if (*v0 == 2)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x259C06AA0](1);
    MEMORY[0x259C06AA0](v1 & 1);
    v2 = (v1 >> 8) & 1;
  }

  return MEMORY[0x259C06AA0](v2);
}

uint64_t sub_2541C4968(uint64_t a1)
{
  v2 = *v1;
  sub_25424EBD8();
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    MEMORY[0x259C06AA0](1);
    MEMORY[0x259C06AA0](v2 & 1);
    v3 = (v2 >> 8) & 1;
  }

  MEMORY[0x259C06AA0](v3);
  return sub_25424EC28();
}

BOOL sub_2541C49FC(_WORD *a1, _WORD *a2)
{
  v2 = *a2;
  if (*a1 == 2)
  {
    return v2 == 2;
  }

  if (v2 == 2)
  {
    return 0;
  }

  return ((*a2 ^ *a1) & 0x101) == 0;
}

uint64_t ThermostatReducedEnergyAutomationEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ThermostatReducedEnergyAutomationEvent.roomName.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryEventBase(0) + 24));

  return v1;
}

uint64_t ThermostatReducedEnergyAutomationEvent.accessoryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryEventBase(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThermostatReducedEnergyAutomationEvent.accessoryName.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryEventBase(0) + 32));

  return v1;
}

uint64_t ThermostatReducedEnergyAutomationEvent.userIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessoryEventBase(0) + 36);

  return sub_254149770(v3, a1);
}

uint64_t ThermostatReducedEnergyAutomationEvent.init(date:homeIdentifier:roomIdentifier:roomName:accessoryIdentifier:accessoryName:state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = type metadata accessor for AccessoryEventBase(0);
  v17 = v16[9];
  v18 = sub_25424D948();
  v19 = *(v18 - 8);
  (*(v19 + 56))(a9 + v17, 1, 1, v18);
  v20 = sub_25424D8B8();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for EventBase(0);
  v22 = *(v19 + 32);
  v22(a9 + v21[5], a2, v18);
  *(a9 + v21[6]) = 3;
  v23 = (a9 + v21[7]);
  v23[1] = 0;
  v23[2] = 0;
  *v23 = 15;
  v22(a9 + v16[5], a3, v18);
  v24 = (a9 + v16[6]);
  *v24 = a4;
  v24[1] = a5;
  v22(a9 + v16[7], a6, v18);
  v25 = (a9 + v16[8]);
  *v25 = a7;
  v25[1] = a8;
  v26 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
  return sub_2541C62C8(a10, a9 + *(v26 + 20), type metadata accessor for ThermostatReducedEnergyAutomationEvent.State);
}

uint64_t ThermostatReducedEnergyAutomationEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8F00, &unk_25425B800);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.State(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AccessoryEventBase(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v21);
  sub_254232240(v21, v13);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v5;
  v20 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25412F1C4();
  sub_25424EC68();
  LOBYTE(v21[0]) = 0;
  sub_2541C6260(&qword_27F5BA788, type metadata accessor for ThermostatReducedEnergyAutomationEvent.State, &protocol conformance descriptor for ThermostatReducedEnergyAutomationEvent.State);
  v14 = v20;
  sub_25424E978();
  (*(v19 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v15 = v22;
  sub_2541C62C8(v13, v22, type metadata accessor for AccessoryEventBase);
  v16 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
  return sub_2541C62C8(v14, v15 + *(v16 + 20), type metadata accessor for ThermostatReducedEnergyAutomationEvent.State);
}

uint64_t ThermostatReducedEnergyAutomationEvent.encode(to:)(void *a1)
{
  v34 = a1;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E60, &qword_254254A10);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v31 = &v30 - v4;
  v5 = type metadata accessor for AccessoryEventBase.DocumentLayout(0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25424D8B8();
  (*(*(v9 - 8) + 16))(v8, v2, v9);
  v10 = type metadata accessor for EventBase(0);
  v11 = *(v10 + 20);
  v12 = v6[7];
  v13 = sub_25424D948();
  v14 = *(*(v13 - 8) + 16);
  v14(&v8[v12], v2 + v11, v13);
  v36 = *(v2 + *(v10 + 24));
  v15 = type metadata accessor for AccessoryEventBase(0);
  v14(&v8[v6[9]], v2 + v15[5], v13);
  v16 = (v2 + v15[6]);
  v18 = *v16;
  v17 = v16[1];
  v14(&v8[v6[11]], v2 + v15[7], v13);
  v19 = v34;
  v20 = v15[9];
  v21 = (v2 + v15[8]);
  v22 = *v21;
  v23 = v21[1];
  sub_254149770(v2 + v20, &v8[v6[13]]);
  v8[v6[8]] = v36;
  v24 = &v8[v6[10]];
  *v24 = v18;
  *(v24 + 1) = v17;
  v25 = &v8[v6[12]];
  *v25 = v22;
  *(v25 + 1) = v23;

  v26 = v35;
  sub_25423298C(v19);
  result = sub_2541C69A0(v8, type metadata accessor for AccessoryEventBase.DocumentLayout);
  if (!v26)
  {
    type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    sub_25412F1C4();
    v28 = v31;
    sub_25424EC78();
    v37 = 0;
    type metadata accessor for ThermostatReducedEnergyAutomationEvent.State(0);
    sub_2541C6260(&qword_27F5BA790, type metadata accessor for ThermostatReducedEnergyAutomationEvent.State, &protocol conformance descriptor for ThermostatReducedEnergyAutomationEvent.State);
    v29 = v33;
    sub_25424EA18();
    return (*(v32 + 8))(v28, v29);
  }

  return result;
}

uint64_t static ThermostatReducedEnergyAutomationEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    return 0;
  }

  v4 = *(type metadata accessor for ThermostatReducedEnergyAutomationEvent(0) + 20);

  return _s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV5StateV2eeoiySbAE_AEtFZ_0(a1 + v4, a2 + v4);
}

uint64_t ThermostatReducedEnergyAutomationEvent.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger(0);
  MEMORY[0x28223BE20](v5 - 8);
  v24 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25424D948();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v23 - v12;
  v14 = sub_25424D8B8();
  v23[1] = sub_2541C6260(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  v23[2] = v14;
  sub_25424DC28();
  v15 = type metadata accessor for EventBase(0);
  sub_2541C6260(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_25425B730[*(v1 + *(v15 + 24))]);
  v16 = type metadata accessor for AccessoryEventBase(0);
  sub_25424DC28();
  sub_25424DD88();
  sub_25424DC28();
  sub_25424DD88();
  sub_254149770(v1 + *(v16 + 36), v13);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    sub_25424EBF8();
    sub_25424DC28();
    (*(v8 + 8))(v10, v7);
  }

  v17 = v1 + *(type metadata accessor for ThermostatReducedEnergyAutomationEvent(0) + 20);
  v18 = v24;
  sub_2541C6938(v17, v24, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_2541C62C8(v18, v4, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  MEMORY[0x259C06AA0](0);
  sub_25424DC28();
  sub_2541C69A0(v4, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  v19 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.State(0);
  v20 = 0;
  v21 = *(v17 + *(v19 + 20));
  if (*(v17 + *(v19 + 20)) != 2)
  {
    MEMORY[0x259C06AA0](1);
    MEMORY[0x259C06AA0](v21 & 1);
    v20 = (v21 >> 8) & 1;
  }

  return MEMORY[0x259C06AA0](v20);
}

uint64_t sub_2541C595C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((j___s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return _s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV5StateV2eeoiySbAE_AEtFZ_0(a1 + v6, a2 + v6);
}

uint64_t ThermostatReducedEnergyAutomationEvent.State.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA798, &qword_25425A0B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C6BE8();
  sub_25424EC78();
  v12 = 0;
  type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger(0);
  sub_2541C6260(&qword_27F5BA7A8, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger, &protocol conformance descriptor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_25424EA18();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for ThermostatReducedEnergyAutomationEvent.State(0) + 20));
    v10[11] = 1;
    sub_2541C6C3C();
    sub_25424EA18();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ThermostatReducedEnergyAutomationEvent.State.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2541C6938(v2, v8, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_2541C62C8(v8, v5, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  MEMORY[0x259C06AA0](0);
  sub_25424D8B8();
  sub_2541C6260(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  sub_2541C69A0(v5, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  v9 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.State(0);
  v10 = 0;
  v11 = *(v2 + *(v9 + 20));
  if (v11 != 2)
  {
    MEMORY[0x259C06AA0](1);
    MEMORY[0x259C06AA0](v11 & 1);
    v10 = (v11 >> 8) & 1;
  }

  return MEMORY[0x259C06AA0](v10);
}

uint64_t sub_2541C5DAC(uint64_t (*a1)(void *))
{
  sub_25424EBD8();
  a1(v3);
  return sub_25424EC28();
}

uint64_t ThermostatReducedEnergyAutomationEvent.State.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger(0);
  MEMORY[0x28223BE20](v4);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA7B8, &qword_25425A0C0);
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.State(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C6BE8();
  sub_25424EC68();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v17;
  v13 = v11;
  v22 = 0;
  sub_2541C6260(&qword_27F5BA7C0, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger, &protocol conformance descriptor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  v14 = v18;
  sub_25424E978();
  sub_2541C62C8(v19, v13, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  v21 = 1;
  sub_2541C6C90();
  sub_25424E978();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 20)) = v20;
  sub_2541C6938(v13, v16, type metadata accessor for ThermostatReducedEnergyAutomationEvent.State);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2541C69A0(v13, type metadata accessor for ThermostatReducedEnergyAutomationEvent.State);
}

uint64_t sub_2541C6160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_25424EBD8();
  a3(v5);
  return sub_25424EC28();
}

uint64_t sub_2541C61C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_25424EBD8();
  a4(v6);
  return sub_25424EC28();
}

unint64_t sub_2541C620C()
{
  result = qword_27F5BA610;
  if (!qword_27F5BA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA610);
  }

  return result;
}

uint64_t sub_2541C6260(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2541C62C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2541C6330()
{
  result = qword_27F5BA638;
  if (!qword_27F5BA638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA638);
  }

  return result;
}

unint64_t sub_2541C6384()
{
  result = qword_27F5BA640;
  if (!qword_27F5BA640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA640);
  }

  return result;
}

unint64_t sub_2541C63D8()
{
  result = qword_27F5BA680;
  if (!qword_27F5BA680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA680);
  }

  return result;
}

unint64_t sub_2541C642C()
{
  result = qword_27F5BA688;
  if (!qword_27F5BA688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA688);
  }

  return result;
}

unint64_t sub_2541C6480()
{
  result = qword_27F5BA690;
  if (!qword_27F5BA690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA690);
  }

  return result;
}

unint64_t sub_2541C64D4()
{
  result = qword_27F5BA6B8;
  if (!qword_27F5BA6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA6B8);
  }

  return result;
}

unint64_t sub_2541C6528()
{
  result = qword_27F5BA6C0;
  if (!qword_27F5BA6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA6C0);
  }

  return result;
}

unint64_t sub_2541C657C()
{
  result = qword_27F5BA6C8;
  if (!qword_27F5BA6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA6C8);
  }

  return result;
}

unint64_t sub_2541C65D0()
{
  result = qword_27F5BA6D8;
  if (!qword_27F5BA6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA6D8);
  }

  return result;
}

unint64_t sub_2541C6624()
{
  result = qword_27F5BA6E0;
  if (!qword_27F5BA6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA6E0);
  }

  return result;
}

unint64_t sub_2541C6678()
{
  result = qword_27F5BA700;
  if (!qword_27F5BA700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA700);
  }

  return result;
}

unint64_t sub_2541C66CC()
{
  result = qword_27F5BA708;
  if (!qword_27F5BA708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA708);
  }

  return result;
}

unint64_t sub_2541C6720()
{
  result = qword_27F5BA710;
  if (!qword_27F5BA710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA710);
  }

  return result;
}

unint64_t sub_2541C6774()
{
  result = qword_27F5BA748;
  if (!qword_27F5BA748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA748);
  }

  return result;
}

unint64_t sub_2541C67C8()
{
  result = qword_27F5BA750;
  if (!qword_27F5BA750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA750);
  }

  return result;
}

unint64_t sub_2541C681C()
{
  result = qword_27F5BA758;
  if (!qword_27F5BA758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA758);
  }

  return result;
}

unint64_t sub_2541C6870()
{
  result = qword_27F5BA760;
  if (!qword_27F5BA760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA760);
  }

  return result;
}

unint64_t sub_2541C68C4()
{
  result = qword_27F5BA780;
  if (!qword_27F5BA780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA780);
  }

  return result;
}

uint64_t sub_2541C6938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2541C69A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV5StateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA620, &qword_254259FE0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - v12;
  v14 = *(v11 + 56);
  sub_2541C6938(a1, &v21 - v12, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_2541C6938(a2, v13 + v14, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger);
  sub_2541C62C8(v13, v9, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  sub_2541C62C8(v13 + v14, v7, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  LOBYTE(v13) = _s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0();
  sub_2541C69A0(v7, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  sub_2541C69A0(v9, type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails);
  if (v13)
  {
    v15 = *(type metadata accessor for ThermostatReducedEnergyAutomationEvent.State(0) + 20);
    v16 = *(a1 + v15);
    v17 = *(a2 + v15);
    if (v16 == 2)
    {
      if (v17 == 2)
      {
        return 1;
      }
    }

    else
    {
      v19 = (v17 ^ v16) & 0x1010101;
      if (v17 != 2 && v19 == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_2541C6BE8()
{
  result = qword_27F5BA7A0;
  if (!qword_27F5BA7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA7A0);
  }

  return result;
}

unint64_t sub_2541C6C3C()
{
  result = qword_27F5BA7B0;
  if (!qword_27F5BA7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA7B0);
  }

  return result;
}

unint64_t sub_2541C6C90()
{
  result = qword_27F5BA7C8;
  if (!qword_27F5BA7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA7C8);
  }

  return result;
}

unint64_t sub_2541C6DD8()
{
  result = qword_27F5BA800;
  if (!qword_27F5BA800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA800);
  }

  return result;
}

unint64_t sub_2541C6E60()
{
  result = qword_27F5BA818;
  if (!qword_27F5BA818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA818);
  }

  return result;
}

unint64_t sub_2541C6EB8()
{
  result = qword_27F5BA820;
  if (!qword_27F5BA820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA820);
  }

  return result;
}

unint64_t sub_2541C6F40()
{
  result = qword_27F5BA838;
  if (!qword_27F5BA838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA838);
  }

  return result;
}

uint64_t sub_2541C6FC4(void *a1)
{
  a1[1] = sub_2541C6260(&qword_27F5BA858, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &protocol conformance descriptor for ThermostatReducedEnergyAutomationEvent);
  a1[2] = sub_2541C6260(&qword_27F5BA860, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &protocol conformance descriptor for ThermostatReducedEnergyAutomationEvent);
  result = sub_2541C6260(&qword_27F5BA868, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &protocol conformance descriptor for ThermostatReducedEnergyAutomationEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_2541C70B8(void *a1)
{
  a1[1] = sub_2541C6260(&qword_27F5BA878, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &protocol conformance descriptor for ThermostatReducedEnergyAutomationEvent);
  a1[2] = sub_2541C6260(&qword_27F5BA880, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &unk_25425A6A8);
  result = sub_2541C6260(&qword_27F5BA888, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &protocol conformance descriptor for ThermostatReducedEnergyAutomationEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_2541C71F4(void *a1)
{
  a1[1] = sub_2541C6260(&qword_27F5BA788, type metadata accessor for ThermostatReducedEnergyAutomationEvent.State, &protocol conformance descriptor for ThermostatReducedEnergyAutomationEvent.State);
  a1[2] = sub_2541C6260(&qword_27F5BA790, type metadata accessor for ThermostatReducedEnergyAutomationEvent.State, &protocol conformance descriptor for ThermostatReducedEnergyAutomationEvent.State);
  result = sub_2541C6260(&qword_27F5BA898, type metadata accessor for ThermostatReducedEnergyAutomationEvent.State, &protocol conformance descriptor for ThermostatReducedEnergyAutomationEvent.State);
  a1[3] = result;
  return result;
}

uint64_t sub_2541C72E8(uint64_t a1)
{
  result = sub_2541C6260(&qword_27F5BA890, type metadata accessor for ThermostatReducedEnergyAutomationEvent.State, &protocol conformance descriptor for ThermostatReducedEnergyAutomationEvent.State);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2541C7368(uint64_t a1)
{
  result = type metadata accessor for AccessoryEventBase(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ThermostatReducedEnergyAutomationEvent.State(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2541C7414(uint64_t a1)
{
  result = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2541C7488(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j____swift_get_extra_inhabitant_index_29Tm);
}

uint64_t sub_2541C74E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j____swift_store_extra_inhabitant_index_30Tm);
}

uint64_t sub_2541C7548(uint64_t a1)
{
  v2 = type metadata accessor for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationTrigger.ReducePeriodDetails(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v4 = sub_25424D8B8();
    v2 = v4;
    if (v5 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
      return 0;
    }
  }

  return v2;
}

uint64_t __swift_get_extra_inhabitant_index_29Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_25424D8B8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_30Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_25424D8B8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2541C7704(uint64_t a1)
{
  result = sub_25424D8B8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65282;
  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 16)) - 65282;
  }

  if (v4 == 2)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

_WORD *storeEnumTagSinglePayload for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult(_WORD *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65282;
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2541C78D4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_WORD *sub_2541C78E8(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PauseDetails(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for ThermostatReducedEnergyAutomationEvent.ThermostatReducedEnergyAutomationResult.PauseDetails(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t sub_2541C7B74()
{
  result = qword_27F5BA8E8;
  if (!qword_27F5BA8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA8E8);
  }

  return result;
}

unint64_t sub_2541C7BCC()
{
  result = qword_27F5BA8F0;
  if (!qword_27F5BA8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA8F0);
  }

  return result;
}

unint64_t sub_2541C7C24()
{
  result = qword_27F5BA8F8;
  if (!qword_27F5BA8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA8F8);
  }

  return result;
}

unint64_t sub_2541C7C7C()
{
  result = qword_27F5BA900;
  if (!qword_27F5BA900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA900);
  }

  return result;
}

unint64_t sub_2541C7CD4()
{
  result = qword_27F5BA908;
  if (!qword_27F5BA908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA908);
  }

  return result;
}

unint64_t sub_2541C7D2C()
{
  result = qword_27F5BA910;
  if (!qword_27F5BA910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA910);
  }

  return result;
}

unint64_t sub_2541C7D84()
{
  result = qword_27F5BA918;
  if (!qword_27F5BA918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA918);
  }

  return result;
}

unint64_t sub_2541C7DDC()
{
  result = qword_27F5BA920;
  if (!qword_27F5BA920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA920);
  }

  return result;
}

unint64_t sub_2541C7E34()
{
  result = qword_27F5BA928;
  if (!qword_27F5BA928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA928);
  }

  return result;
}

unint64_t sub_2541C7E8C()
{
  result = qword_27F5BA930;
  if (!qword_27F5BA930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA930);
  }

  return result;
}

unint64_t sub_2541C7EE4()
{
  result = qword_27F5BA938;
  if (!qword_27F5BA938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA938);
  }

  return result;
}

unint64_t sub_2541C7F3C()
{
  result = qword_27F5BA940;
  if (!qword_27F5BA940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA940);
  }

  return result;
}

unint64_t sub_2541C7F94()
{
  result = qword_27F5BA948;
  if (!qword_27F5BA948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA948);
  }

  return result;
}

unint64_t sub_2541C7FEC()
{
  result = qword_27F5BA950;
  if (!qword_27F5BA950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA950);
  }

  return result;
}

unint64_t sub_2541C8044()
{
  result = qword_27F5BA958;
  if (!qword_27F5BA958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA958);
  }

  return result;
}

unint64_t sub_2541C809C()
{
  result = qword_27F5BA960;
  if (!qword_27F5BA960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA960);
  }

  return result;
}

unint64_t sub_2541C80F4()
{
  result = qword_27F5BA968;
  if (!qword_27F5BA968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA968);
  }

  return result;
}

unint64_t sub_2541C814C()
{
  result = qword_27F5BA970;
  if (!qword_27F5BA970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA970);
  }

  return result;
}

unint64_t sub_2541C81A4()
{
  result = qword_27F5BA978;
  if (!qword_27F5BA978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA978);
  }

  return result;
}

unint64_t sub_2541C81FC()
{
  result = qword_27F5BA980;
  if (!qword_27F5BA980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA980);
  }

  return result;
}

unint64_t sub_2541C8254()
{
  result = qword_27F5BA988;
  if (!qword_27F5BA988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA988);
  }

  return result;
}

unint64_t sub_2541C82AC()
{
  result = qword_27F5BA990;
  if (!qword_27F5BA990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA990);
  }

  return result;
}

unint64_t sub_2541C8304()
{
  result = qword_27F5BA998;
  if (!qword_27F5BA998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA998);
  }

  return result;
}

unint64_t sub_2541C835C()
{
  result = qword_27F5BA9A0;
  if (!qword_27F5BA9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA9A0);
  }

  return result;
}

unint64_t sub_2541C83B4()
{
  result = qword_27F5BA9A8;
  if (!qword_27F5BA9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA9A8);
  }

  return result;
}

unint64_t sub_2541C840C()
{
  result = qword_27F5BA9B0;
  if (!qword_27F5BA9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA9B0);
  }

  return result;
}

unint64_t sub_2541C8464()
{
  result = qword_27F5BA9B8;
  if (!qword_27F5BA9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA9B8);
  }

  return result;
}

unint64_t sub_2541C84BC()
{
  result = qword_27F5BA9C0;
  if (!qword_27F5BA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA9C0);
  }

  return result;
}

unint64_t sub_2541C8514()
{
  result = qword_27F5BA9C8;
  if (!qword_27F5BA9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA9C8);
  }

  return result;
}

unint64_t sub_2541C856C()
{
  result = qword_27F5BA9D0;
  if (!qword_27F5BA9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA9D0);
  }

  return result;
}

unint64_t sub_2541C85C4()
{
  result = qword_27F5BA9D8;
  if (!qword_27F5BA9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA9D8);
  }

  return result;
}

unint64_t sub_2541C861C()
{
  result = qword_27F5BA9E0;
  if (!qword_27F5BA9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA9E0);
  }

  return result;
}

unint64_t sub_2541C8674()
{
  result = qword_27F5BA9E8;
  if (!qword_27F5BA9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA9E8);
  }

  return result;
}

unint64_t sub_2541C86CC()
{
  result = qword_27F5BA9F0;
  if (!qword_27F5BA9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA9F0);
  }

  return result;
}

unint64_t sub_2541C8724()
{
  result = qword_27F5BA9F8;
  if (!qword_27F5BA9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA9F8);
  }

  return result;
}

unint64_t sub_2541C877C()
{
  result = qword_27F5BAA00;
  if (!qword_27F5BAA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAA00);
  }

  return result;
}

unint64_t sub_2541C87D4()
{
  result = qword_27F5BAA08;
  if (!qword_27F5BAA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAA08);
  }

  return result;
}

unint64_t sub_2541C8854()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BACA8, &unk_25425C548);
  result = swift_allocObject();
  v1 = result;
  *(result + 16) = xmmword_254254360;
  if (qword_27F5B8458 != -1)
  {
    result = swift_once();
  }

  v2 = off_27F5BAA38;
  v3 = *(off_27F5BAA38 + 2);
  if (!v3)
  {
    v4 = 4;
    goto LABEL_8;
  }

  result = sub_25418E184(v3);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v2 + 2))
  {
    v4 = v2[result + 32];

LABEL_8:
    *(v1 + 32) = v4;
    qword_27F5BAA30 = v1;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_2541C896C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25424EAB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2541C89F0(uint64_t a1)
{
  v2 = sub_2541CBC64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C8A2C(uint64_t a1)
{
  v2 = sub_2541CBC64();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2541C8A8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BACA0, &qword_25425C540);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_254254360;
  result = sub_25418E184(4uLL);
  if (result > 3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 32) = byte_2866337F8[result + 32];
    off_27F5BAA38 = v0;
  }

  return result;
}

BOOL static ThermostatAutomationFailureEvent.ThermostatAutomationFailureReason.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v3 == 4)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_2541C8B74(uint64_t a1)
{
  v2 = sub_2541C96D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C8BB0(uint64_t a1)
{
  v2 = sub_2541C96D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541C8BEC()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_2541C8C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v6 || (sub_25424EAB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000254251160 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25424EAB8();

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

uint64_t sub_2541C8D10(uint64_t a1)
{
  v2 = sub_2541C9684();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C8D4C(uint64_t a1)
{
  v2 = sub_2541C9684();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541C8D88(uint64_t a1)
{
  v2 = sub_2541C9780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C8DC4(uint64_t a1)
{
  v2 = sub_2541C9780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatAutomationFailureEvent.ThermostatAutomationFailureReason.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAA40, &qword_25425B770);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAA48, &qword_25425B778);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAA50, &qword_25425B780);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541C9684();
  sub_25424EC78();
  if (v12 == 4)
  {
    v21 = 0;
    sub_2541C9780();
    sub_25424E9A8();
    (*(v16 + 8))(v7, v17);
  }

  else
  {
    v23 = 1;
    sub_2541C96D8();
    v14 = v18;
    sub_25424E9A8();
    v22 = v12;
    sub_2541C972C();
    v15 = v20;
    sub_25424EA18();
    (*(v19 + 8))(v14, v15);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t ThermostatAutomationFailureEvent.ThermostatAutomationFailureReason.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAA78, &qword_25425B788);
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAA80, &qword_25425B790);
  v34 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAA88, &unk_25425B798);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2541C9684();
  v15 = v36;
  sub_25424EC68();
  if (!v15)
  {
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_25424E988();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_254140878();
    if (v20 == 2 || v40 != v41 >> 1)
    {
      v24 = sub_25424E6F8();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40);
      *v26 = &type metadata for ThermostatAutomationFailureEvent.ThermostatAutomationFailureReason;
      sub_25424E908();
      sub_25424E6E8();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v20)
      {
        v42 = 1;
        sub_2541C96D8();
        v21 = v13;
        v22 = v6;
        sub_25424E8F8();
        v23 = v36;
        sub_2541CA620();
        v29 = v22;
        v30 = v32;
        sub_25424E978();
        (*(v33 + 8))(v29, v30);
        (*(v23 + 8))(v21, v10);
        swift_unknownObjectRelease();
        v31 = v42;
      }

      else
      {
        v42 = 0;
        sub_2541C9780();
        sub_25424E8F8();
        v28 = v36;
        (*(v17 + 8))(v9, v7);
        (*(v28 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v31 = 4;
      }

      *v16 = v31;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

BOOL sub_2541C9634(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v3 == 4)
  {
    return 0;
  }

  return v2 == v3;
}

unint64_t sub_2541C9684()
{
  result = qword_27F5BAA58;
  if (!qword_27F5BAA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAA58);
  }

  return result;
}

unint64_t sub_2541C96D8()
{
  result = qword_27F5BAA60;
  if (!qword_27F5BAA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAA60);
  }

  return result;
}

unint64_t sub_2541C972C()
{
  result = qword_27F5BAA68;
  if (!qword_27F5BAA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAA68);
  }

  return result;
}

unint64_t sub_2541C9780()
{
  result = qword_27F5BAA70;
  if (!qword_27F5BAA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAA70);
  }

  return result;
}

unint64_t sub_2541C97D4()
{
  v1 = 0x48676E696F676E6FLL;
  v2 = 0x696E696665646E69;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_2541C9868@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2541CCD38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2541C9890(uint64_t a1)
{
  v2 = sub_2541CA674();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C98CC(uint64_t a1)
{
  v2 = sub_2541CA674();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541C9908(uint64_t a1)
{
  v2 = sub_2541CA7C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C9944(uint64_t a1)
{
  v2 = sub_2541CA7C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541C9980(uint64_t a1)
{
  v2 = sub_2541CA71C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C99BC(uint64_t a1)
{
  v2 = sub_2541CA71C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541C99F8(uint64_t a1)
{
  v2 = sub_2541CA770();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C9A34(uint64_t a1)
{
  v2 = sub_2541CA770();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541C9A70(uint64_t a1)
{
  v2 = sub_2541CA6C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541C9AAC(uint64_t a1)
{
  v2 = sub_2541CA6C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatAutomationFailureEvent.AccessoryRestrictionDetails.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAA98, &qword_25425B7A8);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAAA0, &qword_25425B7B0);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAAA8, &qword_25425B7B8);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAAB0, &qword_25425B7C0);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAAB8, &qword_25425B7C8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541CA674();
  sub_25424EC78();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_2541CA71C();
      v18 = v27;
      sub_25424E9A8();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_2541CA6C8();
      v18 = v30;
      sub_25424E9A8();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_2541CA770();
    v18 = v24;
    sub_25424E9A8();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_2541CA7C4();
  sub_25424E9A8();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t ThermostatAutomationFailureEvent.AccessoryRestrictionDetails.hashValue.getter()
{
  v1 = *v0;
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v1);
  return sub_25424EC28();
}

uint64_t ThermostatAutomationFailureEvent.AccessoryRestrictionDetails.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAAE8, &qword_25425B7D0);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAAF0, &qword_25425B7D8);
  v38 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAAF8, &qword_25425B7E0);
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAB00, &qword_25425B7E8);
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAB08, &unk_25425B7F0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2541CA674();
  v15 = v46;
  sub_25424EC68();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_25424E988();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_254140880();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_25424E6F8();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40);
      *v28 = &type metadata for ThermostatAutomationFailureEvent.AccessoryRestrictionDetails;
      sub_25424E908();
      sub_25424E6E8();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_2541CA770();
        v32 = v35;
        sub_25424E8F8();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_2541CA7C4();
        v25 = v35;
        sub_25424E8F8();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_2541CA71C();
      v31 = v35;
      sub_25424E8F8();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_2541CA6C8();
      v33 = v35;
      sub_25424E8F8();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

unint64_t sub_2541CA620()
{
  result = qword_27F5BAA90;
  if (!qword_27F5BAA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAA90);
  }

  return result;
}

unint64_t sub_2541CA674()
{
  result = qword_27F5BAAC0;
  if (!qword_27F5BAAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAAC0);
  }

  return result;
}

unint64_t sub_2541CA6C8()
{
  result = qword_27F5BAAC8;
  if (!qword_27F5BAAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAAC8);
  }

  return result;
}

unint64_t sub_2541CA71C()
{
  result = qword_27F5BAAD0;
  if (!qword_27F5BAAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAAD0);
  }

  return result;
}

unint64_t sub_2541CA770()
{
  result = qword_27F5BAAD8;
  if (!qword_27F5BAAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAAD8);
  }

  return result;
}

unint64_t sub_2541CA7C4()
{
  result = qword_27F5BAAE0;
  if (!qword_27F5BAAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAAE0);
  }

  return result;
}

uint64_t ThermostatAutomationFailureEvent.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ThermostatAutomationFailureEvent(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for ThermostatAutomationFailureEvent(uint64_t a1)
{
  result = qword_27F5BABE0;
  if (!qword_27F5BABE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ThermostatAutomationFailureEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D8B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ThermostatAutomationFailureEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ThermostatAutomationFailureEvent.roomName.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryEventBase(0) + 24));

  return v1;
}

uint64_t ThermostatAutomationFailureEvent.accessoryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryEventBase(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThermostatAutomationFailureEvent.accessoryName.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryEventBase(0) + 32));

  return v1;
}

uint64_t ThermostatAutomationFailureEvent.userIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessoryEventBase(0) + 36);

  return sub_254149770(v3, a1);
}

uint64_t ThermostatAutomationFailureEvent.init(date:homeIdentifier:roomIdentifier:roomName:accessoryIdentifier:accessoryName:state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10)
{
  v28 = *a10;
  v16 = type metadata accessor for AccessoryEventBase(0);
  v17 = v16[9];
  v18 = sub_25424D948();
  v19 = *(v18 - 8);
  (*(v19 + 56))(a9 + v17, 1, 1, v18);
  v20 = sub_25424D8B8();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for EventBase(0);
  v22 = *(v19 + 32);
  v22(a9 + v21[5], a2, v18);
  *(a9 + v21[6]) = 3;
  v23 = (a9 + v21[7]);
  v23[1] = 0;
  v23[2] = 0;
  *v23 = 15;
  v22(a9 + v16[5], a3, v18);
  v24 = (a9 + v16[6]);
  *v24 = a4;
  v24[1] = a5;
  v22(a9 + v16[7], a6, v18);
  v25 = (a9 + v16[8]);
  *v25 = a7;
  v25[1] = a8;
  result = type metadata accessor for ThermostatAutomationFailureEvent(0);
  *(a9 + *(result + 20)) = v28;
  return result;
}

uint64_t ThermostatAutomationFailureEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8F00, &unk_25425B800);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-1] - v7;
  v9 = type metadata accessor for AccessoryEventBase(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v16);
  sub_254232240(v16, v11);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25412F1C4();
  sub_25424EC68();
  v17 = 0;
  sub_2541CAEA4();
  sub_25424E978();
  (*(v6 + 8))(v8, v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v12 = v16[0];
  v13 = v15;
  sub_2541CAEF8(v11, v15);
  result = type metadata accessor for ThermostatAutomationFailureEvent(0);
  *(v13 + *(result + 20)) = v12;
  return result;
}

unint64_t sub_2541CAEA4()
{
  result = qword_27F5BAB10;
  if (!qword_27F5BAB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAB10);
  }

  return result;
}

uint64_t sub_2541CAEF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryEventBase(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ThermostatAutomationFailureEvent.encode(to:)(void *a1)
{
  v34 = a1;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E60, &qword_254254A10);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v31 = &v30 - v4;
  v5 = type metadata accessor for AccessoryEventBase.DocumentLayout(0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25424D8B8();
  (*(*(v9 - 8) + 16))(v8, v2, v9);
  v10 = type metadata accessor for EventBase(0);
  v11 = *(v10 + 20);
  v12 = v6[7];
  v13 = sub_25424D948();
  v14 = *(*(v13 - 8) + 16);
  v14(&v8[v12], v2 + v11, v13);
  v36 = *(v2 + *(v10 + 24));
  v15 = type metadata accessor for AccessoryEventBase(0);
  v14(&v8[v6[9]], v2 + v15[5], v13);
  v16 = (v2 + v15[6]);
  v17 = *v16;
  v18 = v16[1];
  v14(&v8[v6[11]], v2 + v15[7], v13);
  v19 = v15[9];
  v20 = (v2 + v15[8]);
  v21 = *v20;
  v22 = v20[1];
  sub_254149770(v2 + v19, &v8[v6[13]]);
  v8[v6[8]] = v36;
  v23 = &v8[v6[10]];
  *v23 = v17;
  *(v23 + 1) = v18;
  v24 = v34;
  v25 = &v8[v6[12]];
  *v25 = v21;
  *(v25 + 1) = v22;

  v26 = v35;
  sub_25423298C(v24);
  result = sub_2541CBBB0(v8, type metadata accessor for AccessoryEventBase.DocumentLayout);
  if (!v26)
  {
    v38 = *(v2 + *(type metadata accessor for ThermostatAutomationFailureEvent(0) + 20));
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    sub_25412F1C4();
    v28 = v31;
    sub_25424EC78();
    v37 = 0;
    sub_2541CBC10();
    v29 = v33;
    sub_25424EA18();
    return (*(v32 + 8))(v28, v29);
  }

  return result;
}

uint64_t static ThermostatAutomationFailureEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    v4 = *(type metadata accessor for ThermostatAutomationFailureEvent(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);
    if (v5 == 4)
    {
      if (v6 == 4)
      {
        return 1;
      }
    }

    else if (v5 == v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t ThermostatAutomationFailureEvent.hash(into:)(uint64_t a1)
{
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  sub_25424D8B8();
  sub_2541CC040(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  v9 = type metadata accessor for EventBase(0);
  sub_2541CC040(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_25425C558[*(v1 + *(v9 + 24))]);
  v10 = type metadata accessor for AccessoryEventBase(0);
  sub_25424DC28();
  sub_25424DD88();
  sub_25424DC28();
  sub_25424DD88();
  sub_254149770(v1 + *(v10 + 36), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_25424EBF8();
    sub_25424DC28();
    (*(v3 + 8))(v5, v2);
  }

  v11 = type metadata accessor for ThermostatAutomationFailureEvent(0);
  v12 = 0;
  v13 = *(v1 + *(v11 + 20));
  if (v13 != 4)
  {
    MEMORY[0x259C06AA0](1);
    v12 = v13;
  }

  return MEMORY[0x259C06AA0](v12);
}

uint64_t ThermostatAutomationFailureEvent.hashValue.getter()
{
  sub_25424EBD8();
  ThermostatAutomationFailureEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_2541CB66C()
{
  sub_25424EBD8();
  ThermostatAutomationFailureEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_2541CB6B0(uint64_t a1)
{
  sub_25424EBD8();
  ThermostatAutomationFailureEvent.hash(into:)(v2);
  return sub_25424EC28();
}

uint64_t sub_2541CB6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((j___s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7 == 4)
  {
    if (v8 != 4)
    {
      return 0;
    }
  }

  else if (v7 != v8)
  {
    return 0;
  }

  return 1;
}

uint64_t static ThermostatAutomationFailureEvent.State.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      return 1;
    }
  }

  else if (v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t ThermostatAutomationFailureEvent.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAB20, &qword_25425B810);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541CBC64();
  sub_25424EC78();
  v10 = v7;
  sub_2541CBCB8();
  sub_25424EA18();
  return (*(v4 + 8))(v6, v3);
}

uint64_t _s13HomeKitEvents32ThermostatAutomationFailureEventV0deF6ReasonO4hash4intoys6HasherVz_tF_0()
{
  v1 = *v0;
  if (v1 == 4)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x259C06AA0](1);
  }

  return MEMORY[0x259C06AA0](v1);
}

uint64_t _s13HomeKitEvents32ThermostatAutomationFailureEventV0deF6ReasonO9hashValueSivg_0()
{
  v1 = *v0;
  sub_25424EBD8();
  v2 = 0;
  if (v1 != 4)
  {
    MEMORY[0x259C06AA0](1);
    v2 = v1;
  }

  MEMORY[0x259C06AA0](v2);
  return sub_25424EC28();
}

uint64_t ThermostatAutomationFailureEvent.State.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAB38, &qword_25425B818);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541CBC64();
  sub_25424EC68();
  if (!v2)
  {
    sub_2541CBD0C();
    sub_25424E978();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2541CBB20(uint64_t a1)
{
  v2 = *v1;
  sub_25424EBD8();
  if (v2 == 4)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x259C06AA0](1);
  }

  MEMORY[0x259C06AA0](v2);
  return sub_25424EC28();
}

uint64_t sub_2541CBB80(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    if (v3 != 4)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_2541CBBB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2541CBC10()
{
  result = qword_27F5BAB18;
  if (!qword_27F5BAB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAB18);
  }

  return result;
}

unint64_t sub_2541CBC64()
{
  result = qword_27F5BAB28;
  if (!qword_27F5BAB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAB28);
  }

  return result;
}

unint64_t sub_2541CBCB8()
{
  result = qword_27F5BAB30;
  if (!qword_27F5BAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAB30);
  }

  return result;
}

unint64_t sub_2541CBD0C()
{
  result = qword_27F5BAB40;
  if (!qword_27F5BAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAB40);
  }

  return result;
}

unint64_t sub_2541CBD94()
{
  result = qword_27F5BAB58;
  if (!qword_27F5BAB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAB58);
  }

  return result;
}

unint64_t sub_2541CBE1C()
{
  result = qword_27F5BAB70;
  if (!qword_27F5BAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAB70);
  }

  return result;
}

uint64_t sub_2541CBEA0(void *a1)
{
  a1[1] = sub_2541CC040(&qword_27F5BAB90, type metadata accessor for ThermostatAutomationFailureEvent, &protocol conformance descriptor for ThermostatAutomationFailureEvent);
  a1[2] = sub_2541CC040(&qword_27F5BAB98, type metadata accessor for ThermostatAutomationFailureEvent, &protocol conformance descriptor for ThermostatAutomationFailureEvent);
  result = sub_2541CC040(&qword_27F5BABA0, type metadata accessor for ThermostatAutomationFailureEvent, &protocol conformance descriptor for ThermostatAutomationFailureEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_2541CBF94(void *a1)
{
  a1[1] = sub_2541CC040(&qword_27F5BABB0, type metadata accessor for ThermostatAutomationFailureEvent, &protocol conformance descriptor for ThermostatAutomationFailureEvent);
  a1[2] = sub_2541CC040(&qword_27F5BABB8, type metadata accessor for ThermostatAutomationFailureEvent, &unk_25425BAA0);
  result = sub_2541CC040(&qword_27F5BABC0, type metadata accessor for ThermostatAutomationFailureEvent, &protocol conformance descriptor for ThermostatAutomationFailureEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_2541CC040(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2541CC08C()
{
  result = qword_27F5BABC8;
  if (!qword_27F5BABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BABC8);
  }

  return result;
}

unint64_t sub_2541CC128(void *a1)
{
  a1[1] = sub_2541CAEA4();
  a1[2] = sub_2541CBC10();
  result = sub_2541CC160();
  a1[3] = result;
  return result;
}

unint64_t sub_2541CC160()
{
  result = qword_27F5BABD0;
  if (!qword_27F5BABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BABD0);
  }

  return result;
}

unint64_t sub_2541CC1B8()
{
  result = qword_27F5BABD8;
  if (!qword_27F5BABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BABD8);
  }

  return result;
}

unint64_t sub_2541CC20C(uint64_t a1)
{
  result = sub_2541CC08C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2541CC25C(uint64_t a1)
{
  result = type metadata accessor for AccessoryEventBase(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ThermostatAutomationFailureEvent.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 5;
  if (v6 < 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t getEnumTagSinglePayload for ThermostatAutomationFailureEvent.ThermostatAutomationFailureReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 4;
  v9 = v7 - 4;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ThermostatAutomationFailureEvent.ThermostatAutomationFailureReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2541CC4D4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2541CC4E8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

unint64_t sub_2541CC5AC()
{
  result = qword_27F5BABF0;
  if (!qword_27F5BABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BABF0);
  }

  return result;
}

unint64_t sub_2541CC604()
{
  result = qword_27F5BABF8;
  if (!qword_27F5BABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BABF8);
  }

  return result;
}

unint64_t sub_2541CC65C()
{
  result = qword_27F5BAC00;
  if (!qword_27F5BAC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC00);
  }

  return result;
}

unint64_t sub_2541CC6B4()
{
  result = qword_27F5BAC08;
  if (!qword_27F5BAC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC08);
  }

  return result;
}

unint64_t sub_2541CC70C()
{
  result = qword_27F5BAC10;
  if (!qword_27F5BAC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC10);
  }

  return result;
}

unint64_t sub_2541CC764()
{
  result = qword_27F5BAC18;
  if (!qword_27F5BAC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC18);
  }

  return result;
}

unint64_t sub_2541CC7BC()
{
  result = qword_27F5BAC20;
  if (!qword_27F5BAC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC20);
  }

  return result;
}

unint64_t sub_2541CC814()
{
  result = qword_27F5BAC28;
  if (!qword_27F5BAC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC28);
  }

  return result;
}

unint64_t sub_2541CC86C()
{
  result = qword_27F5BAC30;
  if (!qword_27F5BAC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC30);
  }

  return result;
}

unint64_t sub_2541CC8C4()
{
  result = qword_27F5BAC38;
  if (!qword_27F5BAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC38);
  }

  return result;
}

unint64_t sub_2541CC91C()
{
  result = qword_27F5BAC40;
  if (!qword_27F5BAC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC40);
  }

  return result;
}

unint64_t sub_2541CC974()
{
  result = qword_27F5BAC48;
  if (!qword_27F5BAC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC48);
  }

  return result;
}

unint64_t sub_2541CC9CC()
{
  result = qword_27F5BAC50;
  if (!qword_27F5BAC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC50);
  }

  return result;
}

unint64_t sub_2541CCA24()
{
  result = qword_27F5BAC58;
  if (!qword_27F5BAC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC58);
  }

  return result;
}

unint64_t sub_2541CCA7C()
{
  result = qword_27F5BAC60;
  if (!qword_27F5BAC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC60);
  }

  return result;
}

unint64_t sub_2541CCAD4()
{
  result = qword_27F5BAC68;
  if (!qword_27F5BAC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC68);
  }

  return result;
}

unint64_t sub_2541CCB2C()
{
  result = qword_27F5BAC70;
  if (!qword_27F5BAC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC70);
  }

  return result;
}

unint64_t sub_2541CCB84()
{
  result = qword_27F5BAC78;
  if (!qword_27F5BAC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC78);
  }

  return result;
}

unint64_t sub_2541CCBDC()
{
  result = qword_27F5BAC80;
  if (!qword_27F5BAC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC80);
  }

  return result;
}

unint64_t sub_2541CCC34()
{
  result = qword_27F5BAC88;
  if (!qword_27F5BAC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC88);
  }

  return result;
}

unint64_t sub_2541CCC8C()
{
  result = qword_27F5BAC90;
  if (!qword_27F5BAC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC90);
  }

  return result;
}

unint64_t sub_2541CCCE4()
{
  result = qword_27F5BAC98;
  if (!qword_27F5BAC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAC98);
  }

  return result;
}

uint64_t sub_2541CCD38(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000254251180 == a2 || (sub_25424EAB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x48676E696F676E6FLL && a2 == 0xEB00000000646C6FLL || (sub_25424EAB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696E696665646E69 && a2 == 0xEE00646C6F486574 || (sub_25424EAB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_25424EAB8();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t with<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  result = a2();
  if (!v4)
  {
    return (*(*(a3 - 8) + 16))(a4, a1, a3);
  }

  return result;
}

uint64_t sub_2541CCF50(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 2)
  {
    v5 = 3;
    if (v2 != 4)
    {
      v5 = 4;
    }

    if (v2 == 3)
    {
      v4 = 2;
    }

    else
    {
      v4 = v5;
    }

    if (*a2 > 2u)
    {
      goto LABEL_15;
    }
  }

  else if (v2 == 1)
  {
    v4 = 0;
    if (*a2 > 2u)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v2 != 2)
    {
      goto LABEL_23;
    }

    v4 = 1;
    if (*a2 > 2u)
    {
LABEL_15:
      v7 = 3;
      if (v3 != 4)
      {
        v7 = 4;
      }

      if (v3 == 3)
      {
        v6 = 2;
      }

      else
      {
        v6 = v7;
      }

      return v4 == v6;
    }
  }

  if (v3 == 1)
  {
    v6 = 0;
    return v4 == v6;
  }

  if (v3 == 2)
  {
    v6 = 1;
    return v4 == v6;
  }

LABEL_23:
  result = sub_25424EAF8();
  __break(1u);
  return result;
}

uint64_t sub_2541CD010()
{
  v1 = *v0;
  sub_25424EBD8();
  if (v1 > 2)
  {
    v3 = 3;
    if (v1 != 4)
    {
      v3 = 4;
    }

    if (v1 == 3)
    {
      v2 = 2;
    }

    else
    {
      v2 = v3;
    }

    goto LABEL_10;
  }

  v2 = 0;
  if (v1 == 1)
  {
LABEL_10:
    MEMORY[0x259C06AA0](v2);
    return sub_25424EC28();
  }

  if (v1 == 2)
  {
    v2 = 1;
    goto LABEL_10;
  }

  result = sub_25424EAF8();
  __break(1u);
  return result;
}

uint64_t sub_2541CD09C(uint64_t a1)
{
  v2 = *v1;
  if (v2 > 2)
  {
    v4 = 3;
    if (v2 != 4)
    {
      v4 = 4;
    }

    if (v2 == 3)
    {
      v3 = 2;
    }

    else
    {
      v3 = v4;
    }

    return MEMORY[0x259C06AA0](v3);
  }

  if (v2 == 1)
  {
    v3 = 0;
    return MEMORY[0x259C06AA0](v3);
  }

  if (v2 == 2)
  {
    v3 = 1;
    return MEMORY[0x259C06AA0](v3);
  }

  result = sub_25424EAF8();
  __break(1u);
  return result;
}

uint64_t sub_2541CD114(uint64_t a1)
{
  v2 = *v1;
  sub_25424EBD8();
  if (v2 > 2)
  {
    v4 = 3;
    if (v2 != 4)
    {
      v4 = 4;
    }

    if (v2 == 3)
    {
      v3 = 2;
    }

    else
    {
      v3 = v4;
    }

    goto LABEL_11;
  }

  if (v2 == 1)
  {
    v3 = 0;
LABEL_11:
    MEMORY[0x259C06AA0](v3);
    return sub_25424EC28();
  }

  if (v2 == 2)
  {
    v3 = 1;
    goto LABEL_11;
  }

  result = sub_25424EAF8();
  __break(1u);
  return result;
}

const char *sub_2541CD1B4()
{
  v1 = *v0;
  v2 = "";
  v3 = "HomeActivityState";
  v4 = "HomeEnergy2025";
  if (v1 != 4)
  {
    v4 = "ActivityHistory2025";
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = "Tamis";
  if (v1 != 1)
  {
    v5 = "TamisPlus";
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_2541CD254()
{
  result = qword_27F5BACB0;
  if (!qword_27F5BACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BACB0);
  }

  return result;
}

void sub_2541CD320(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_25424DF88();
  v9[4] = sub_2541CD614;
  v9[5] = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2541ED26C;
  v9[3] = &block_descriptor_6;
  v8 = _Block_copy(v9);

  [a1 createEventsWithEventsData:v7 scope:(a4 & 1u) + 1 reply:v8];

  _Block_release(v8);
}

uint64_t sub_2541CD41C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v8 = sub_25424E128();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = a2;
    v9[5] = sub_25412F60C;
    v9[6] = v7;

    v10 = a1;
    v11 = &unk_254252CB8;
    v12 = v6;
    v13 = v9;
  }

  else
  {
    v14 = sub_25424E128();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a2;
    v15[5] = sub_25412F540;
    v15[6] = 0;

    v11 = &unk_254252CB0;
    v12 = v6;
    v13 = v15;
  }

  sub_25419CC1C(0, 0, v12, v11, v13);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

HomeKitEvents::SmokeDetectorEvent::State_optional __swiftcall SmokeDetectorEvent.State.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SmokeDetectorEvent.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SmokeDetectorEvent(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for SmokeDetectorEvent(uint64_t a1)
{
  result = qword_27F5BAD30;
  if (!qword_27F5BAD30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SmokeDetectorEvent.init(date:homeIdentifier:roomIdentifier:roomName:accessoryIdentifier:accessoryName:state:userIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11)
{
  v30 = *a10;
  v17 = sub_25424D8B8();
  (*(*(v17 - 8) + 32))(a9, a1, v17);
  v18 = type metadata accessor for EventBase(0);
  v19 = v18[5];
  v20 = sub_25424D948();
  v21 = *(*(v20 - 8) + 32);
  v21(a9 + v19, a2, v20);
  *(a9 + v18[6]) = 2;
  v22 = (a9 + v18[7]);
  *v22 = 15;
  v23 = type metadata accessor for AccessoryEventBase(0);
  v22[1] = 0;
  v22[2] = 0;
  v21(a9 + v23[5], a3, v20);
  v24 = (a9 + v23[6]);
  *v24 = a4;
  v24[1] = a5;
  v21(a9 + v23[7], a6, v20);
  v25 = (a9 + v23[8]);
  *v25 = a7;
  v25[1] = a8;
  sub_25414A348(a11, a9 + v23[9]);
  result = type metadata accessor for SmokeDetectorEvent(0);
  *(a9 + *(result + 20)) = v30;
  return result;
}

uint64_t SmokeDetectorEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AccessoryEventBaseLegacy(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v11);
  sub_254231924(v11, v7);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_25414913C(a1, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v9 = v11[0];
  sub_25414A414(v7, a2);
  result = type metadata accessor for SmokeDetectorEvent(0);
  *(a2 + *(result + 20)) = v9;
  return result;
}

uint64_t SmokeDetectorEvent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E60, &qword_254254A10);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-v6];
  result = sub_254231F94(a1);
  if (!v2)
  {
    v9[15] = *(v1 + *(type metadata accessor for SmokeDetectorEvent(0) + 20));
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25412F1C4();
    sub_25424EC78();
    v9[14] = 1;
    sub_2541CDB0C();
    sub_25424EA18();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

unint64_t sub_2541CDB0C()
{
  result = qword_27F5BACB8;
  if (!qword_27F5BACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BACB8);
  }

  return result;
}

uint64_t SmokeDetectorEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D8B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SmokeDetectorEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t SmokeDetectorEvent.roomName.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryEventBase(0) + 24));

  return v1;
}

uint64_t SmokeDetectorEvent.accessoryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryEventBase(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SmokeDetectorEvent.accessoryName.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryEventBase(0) + 32));

  return v1;
}

uint64_t SmokeDetectorEvent.userIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessoryEventBase(0) + 36);

  return sub_254149770(v3, a1);
}

BOOL static SmokeDetectorEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    return 0;
  }

  v4 = type metadata accessor for SmokeDetectorEvent(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t SmokeDetectorEvent.hash(into:)(uint64_t a1)
{
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_25424D8B8();
  sub_2541CE508(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  v9 = type metadata accessor for EventBase(0);
  sub_2541CE508(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_25425C990[*(v1 + *(v9 + 24))]);
  v10 = type metadata accessor for AccessoryEventBase(0);
  sub_25424DC28();
  sub_25424DD88();
  sub_25424DC28();
  sub_25424DD88();
  sub_254149770(v1 + *(v10 + 36), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_25424EBF8();
    sub_25424DC28();
    (*(v3 + 8))(v5, v2);
  }

  v11 = type metadata accessor for SmokeDetectorEvent(0);
  return MEMORY[0x259C06AA0](*(v1 + *(v11 + 20)));
}

uint64_t SmokeDetectorEvent.hashValue.getter()
{
  sub_25424EBD8();
  SmokeDetectorEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_2541CE11C()
{
  sub_25424EBD8();
  SmokeDetectorEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_2541CE160(uint64_t a1)
{
  sub_25424EBD8();
  SmokeDetectorEvent.hash(into:)(v2);
  return sub_25424EC28();
}

unint64_t sub_2541CE254()
{
  result = qword_27F5BACC0;
  if (!qword_27F5BACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BACC0);
  }

  return result;
}

unint64_t sub_2541CE2AC()
{
  result = qword_27F5BACC8;
  if (!qword_27F5BACC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BACD0, &qword_25425C720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BACC8);
  }

  return result;
}

unint64_t sub_2541CE314()
{
  result = qword_27F5BACD8;
  if (!qword_27F5BACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BACD8);
  }

  return result;
}

uint64_t sub_2541CE368(void *a1)
{
  a1[1] = sub_2541CE508(&qword_27F5BACE8, type metadata accessor for SmokeDetectorEvent, &protocol conformance descriptor for SmokeDetectorEvent);
  a1[2] = sub_2541CE508(&qword_27F5BACF0, type metadata accessor for SmokeDetectorEvent, &protocol conformance descriptor for SmokeDetectorEvent);
  result = sub_2541CE508(&qword_27F5BACF8, type metadata accessor for SmokeDetectorEvent, &protocol conformance descriptor for SmokeDetectorEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_2541CE45C(void *a1)
{
  a1[1] = sub_2541CE508(&qword_27F5BAD08, type metadata accessor for SmokeDetectorEvent, &protocol conformance descriptor for SmokeDetectorEvent);
  a1[2] = sub_2541CE508(&qword_27F5BAD10, type metadata accessor for SmokeDetectorEvent, &unk_25425C850);
  result = sub_2541CE508(&qword_27F5BAD18, type metadata accessor for SmokeDetectorEvent, &protocol conformance descriptor for SmokeDetectorEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_2541CE508(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2541CE598(void *a1)
{
  a1[1] = sub_25414AD28();
  a1[2] = sub_2541CDB0C();
  result = sub_2541CE5D0();
  a1[3] = result;
  return result;
}

unint64_t sub_2541CE5D0()
{
  result = qword_27F5BAD20;
  if (!qword_27F5BAD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAD20);
  }

  return result;
}

unint64_t sub_2541CE624(uint64_t a1)
{
  result = sub_2541CE64C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2541CE64C()
{
  result = qword_27F5BAD28;
  if (!qword_27F5BAD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAD28);
  }

  return result;
}

unint64_t sub_2541CE6A0(uint64_t a1)
{
  result = sub_2541CE314();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2541CE6F0(uint64_t a1)
{
  result = type metadata accessor for AccessoryEventBaseLegacy(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2541CE774()
{
  result = qword_27F5BAD40;
  if (!qword_27F5BAD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BAD40);
  }

  return result;
}

uint64_t static HMVCommands.clearEvents(homes:deleteCloudZones:)(uint64_t a1, char a2)
{
  *(v2 + 48) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2541CE7F0, 0, 0);
}

uint64_t sub_2541CE7F0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_25412F910;

  return sub_25412FDA0(sub_25412FDA0, sub_2541CE9D0, v3);
}

void sub_2541CE8D0(void *a1, uint64_t a2, void *a3, char a4)
{
  v5 = a3;
  if (a3)
  {
    sub_25424D948();
    v5 = sub_25424DF88();
  }

  v9[4] = sub_2541CEBD4;
  v9[5] = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2541ED26C;
  v9[3] = &block_descriptor_7;
  v8 = _Block_copy(v9);

  [a1 hmvutilClearEventsWithHomes:v5 deleteCloudZones:a4 & 1 reply:v8];
  _Block_release(v8);
}

uint64_t sub_2541CE9DC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v8 = sub_25424E128();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = a2;
    v9[5] = sub_25412F60C;
    v9[6] = v7;

    v10 = a1;
    v11 = &unk_254254328;
    v12 = v6;
    v13 = v9;
  }

  else
  {
    v14 = sub_25424E128();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a2;
    v15[5] = sub_25412F540;
    v15[6] = 0;

    v11 = &unk_254252CB0;
    v12 = v6;
    v13 = v15;
  }

  sub_25419CC1C(0, 0, v12, v11, v13);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2541CEC30(void *a1, uint64_t a2, char a3)
{
  v6[4] = sub_2541CF0F4;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2541CF0FC;
  v6[3] = &block_descriptor_8;
  v5 = _Block_copy(v6);

  [a1 collectDiagnosticsWithIncludeSensitiveData:a3 & 1 reply:v5];
  _Block_release(v5);
}

uint64_t sub_2541CED08(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5BAD48, &qword_25425C9E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_25424D418();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - v17;
  sub_2541CF2C0(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    result = sub_2541CF258(v11);
    if (a2)
    {
      v20 = swift_allocObject();
      *(v20 + 16) = a2;
      v21 = sub_25424E128();
      (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
      v22 = swift_allocObject();
      v22[2] = 0;
      v22[3] = 0;
      v22[4] = a3;
      v22[5] = sub_2541A7410;
      v22[6] = v20;

      v23 = a2;
      sub_25419CC1C(0, 0, v8, &unk_254258400, v22);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v30 = a3;
    v24 = *(v13 + 32);
    v24(v18, v11, v12);
    (*(v13 + 16))(v16, v18, v12);
    v25 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v26 = swift_allocObject();
    v24((v26 + v25), v16, v12);
    v27 = sub_25424E128();
    (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v30;
    v28[5] = sub_2541CF410;
    v28[6] = v26;

    sub_25419CC1C(0, 0, v8, &unk_25425C9E8, v28);

    return (*(v13 + 8))(v18, v12);
  }

  return result;
}

uint64_t sub_2541CF0FC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5BAD48, &qword_25425C9E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_25424D3F8();
    v10 = sub_25424D418();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_25424D418();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_2541CF258(v8);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2541CF258(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5BAD48, &qword_25425C9E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2541CF2C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5BAD48, &qword_25425C9E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2541CF330(uint64_t a1, uint64_t a2)
{
  v3 = sub_25424D418();
  MEMORY[0x28223BE20](v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8868, &qword_254252D48);
  return sub_25424E088();
}

uint64_t sub_2541CF410(uint64_t a1)
{
  v3 = *(sub_25424D418() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2541CF330(a1, v4);
}

uint64_t sub_2541CF480(void *a1)
{
  sub_25424E098();
  result = sub_25424E598();
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

uint64_t sub_2541CF530()
{
  v1 = *(*v0 + 112);
  sub_25424E098();
  v2 = sub_25424E598();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2541CF5F0()
{
  sub_2541CF530();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2541CF650(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2541CF698(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2541CF6E8()
{
  result = qword_27F5BADD0[0];
  if (!qword_27F5BADD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5BADD0);
  }

  return result;
}

void sub_2541CF73C()
{
  v4 = v0[1];
  if (v4 >= 1)
  {
    v5 = *v0;
    if (!*(*v0 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v1 = *(v5 + 4);
    v2 = *(v5 + 5);
    v3 = v2 >> 62;
    if ((v2 >> 62) > 1)
    {
      if (v3 == 2)
      {
        v3 = *(v1 + 16);
        sub_254140660(*(v5 + 4), *(v5 + 5));
        v6 = sub_2541347C8(v3, v4, v1, v2);
        goto LABEL_14;
      }
    }

    else if (v3)
    {
      v3 = v1;
      sub_254140660(*(v5 + 4), *(v5 + 5));
      v6 = sub_2541347C8(v1, v4, v1, v2);
LABEL_11:
      v7 = v1 >> 32;
      goto LABEL_15;
    }

    v6 = sub_2541347C8(0, v0[1], *(v5 + 4), *(v5 + 5));
    if (v3 <= 1)
    {
      if (!v3)
      {
        v7 = BYTE6(v2);
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    if (v3 == 3)
    {
      v7 = 0;
      goto LABEL_15;
    }

LABEL_14:
    v7 = *(v1 + 24);
LABEL_15:
    if (v7 >= v6)
    {
      v4 = sub_25424D538();
      v3 = v8;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_17;
      }

      goto LABEL_22;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    v5 = sub_2541EADD0(v5);
LABEL_17:
    sub_254134D04(v1, v2);
    if (*(v5 + 2))
    {
      v9 = *(v5 + 4);
      v10 = *(v5 + 5);
      *(v5 + 4) = v4;
      *(v5 + 5) = v3;
      sub_254134D04(v9, v10);
      *v0 = v5;
      v0[1] = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2541CF898(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, _BYTE *a6, uint64_t a7)
{
  if (result < 0 || (v7 = result, a4 < result))
  {
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
  }

  else
  {
    if (result)
    {
      v10 = 0;
      v60 = a2 + 32;
      while (1)
      {
        if (v7 < 1 || v10 >= *(a2 + 16))
        {
          return v10;
        }

        v16 = *(v60 + 16 * v10);
        v17 = *(v60 + 16 * v10 + 8);
        v18 = v17 >> 62;
        if ((v17 >> 62) <= 1)
        {
          break;
        }

        if (v18 == 2)
        {
          result = *(v60 + 16 * v10);
          v21 = *(v16 + 16);
          v20 = *(v16 + 24);
          v22 = v20 - v21;
          if (__OFSUB__(v20, v21))
          {
            goto LABEL_102;
          }

LABEL_21:
          v61 = *(v60 + 16 * v10);
          result = sub_254140660(result, *(v60 + 16 * v10 + 8));
          v16 = v61;
          v19 = v22 - a3;
          if (__OFSUB__(v22, a3))
          {
            goto LABEL_97;
          }

          goto LABEL_25;
        }

        v19 = -a3;
        if (__OFSUB__(0, a3))
        {
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

LABEL_25:
        if (v7 < v19)
        {
          if (v18 > 1)
          {
            v50 = 0;
            if (v18 == 2)
            {
              v50 = *(v16 + 16);
            }
          }

          else if (v18)
          {
            v50 = v16;
          }

          else
          {
            v50 = 0;
          }

          v51 = v16;
          v52 = sub_2541347C8(v50, a3, v16, v17);
          result = sub_2541347C8(v52, v7, v51, v17);
          if (result >= v52)
          {
            v53 = sub_25424D4B8();
            v55 = v54;
            sub_2541D03D4(v53, v54, a5, a6, a7);
            sub_254134D04(v51, v17);
            sub_254134D04(v53, v55);
            return v10;
          }

          goto LABEL_106;
        }

        if (a3)
        {
          if (v18 > 1)
          {
            if (v18 == 2)
            {
              v23 = *(v16 + 16);
              v15 = __OFADD__(v23, a3);
              a3 += v23;
              if (v15)
              {
                goto LABEL_104;
              }

              v24 = *(v16 + 24);
            }

            else
            {
              v24 = 0;
              v23 = 0;
            }
          }

          else if (v18)
          {
            v23 = v16;
            v15 = __OFADD__(v16, a3);
            a3 += v16;
            if (v15)
            {
              goto LABEL_105;
            }

            v24 = v16 >> 32;
          }

          else
          {
            v23 = 0;
            v24 = BYTE6(v17);
          }

          if (a3 < v23 || v24 < a3)
          {
            goto LABEL_99;
          }

          if (v18 > 1)
          {
            if (v18 == 2)
            {
              v30 = *(v16 + 16);
              v29 = *(v16 + 24);
            }

            else
            {
              v29 = 0;
              v30 = 0;
            }
          }

          else
          {
            if (v18)
            {
              v29 = v16 >> 32;
            }

            else
            {
              v29 = BYTE6(v17);
            }

            if (v18)
            {
              v30 = v16;
            }

            else
            {
              v30 = 0;
            }
          }

          if (v29 < a3 || v29 < v30)
          {
            goto LABEL_100;
          }

          v31 = v16;
          v32 = sub_25424D4B8();
          v34 = *a5;
          v35 = a5[1];
          v36 = v35 >> 62;
          if ((v35 >> 62) > 1)
          {
            if (v36 == 2 && *(v34 + 16) != *(v34 + 24))
            {
              goto LABEL_69;
            }

LABEL_5:
            *a5 = v32;
            a5[1] = v33;
            v11 = v32;
            v12 = v33;
            sub_254140660(v32, v33);
            sub_254134D04(v34, v35);
          }

          else
          {
            if (v36)
            {
              if (v34 == v34 >> 32)
              {
                goto LABEL_5;
              }
            }

            else if ((v35 & 0xFF000000000000) == 0)
            {
              goto LABEL_5;
            }

LABEL_69:
            if ((*a6 & 1) == 0)
            {
              *a6 = 1;
              v63 = v32;
              v37 = v33;
              if (a7)
              {
                if (a7 <= 14)
                {
                  v39 = 0;
                  v40 = v57 & 0xF00000000000000;
                  v57 &= 0xF00000000000000uLL;
                }

                else
                {
                  sub_25424D2B8();
                  swift_allocObject();
                  v38 = sub_25424D2A8();
                  if (a7 >= 0x7FFFFFFF)
                  {
                    sub_25424D468();
                    v39 = swift_allocObject();
                    v40 = v38 | 0x8000000000000000;
                    *(v39 + 16) = 0;
                    *(v39 + 24) = 0;
                  }

                  else
                  {
                    v39 = 0;
                    v40 = v38 | 0x4000000000000000;
                  }
                }
              }

              else
              {
                v39 = 0;
                v40 = 0xC000000000000000;
              }

              *&v65 = v39;
              *(&v65 + 1) = v40;
              v41 = *a5;
              v42 = a5[1];
              sub_254140660(*a5, v42);
              sub_25424D528();
              sub_254134D04(v41, v42);
              v43 = *a5;
              v44 = a5[1];
              *a5 = v65;
              sub_254134D04(v43, v44);
              v33 = v37;
              v32 = v63;
            }

            v11 = v32;
            v12 = v33;
            sub_25424D528();
          }

          sub_254134D04(v31, v17);
          v13 = v11;
          v14 = v12;
          goto LABEL_7;
        }

        v13 = *a5;
        v14 = a5[1];
        v25 = v14 >> 62;
        if ((v14 >> 62) > 1)
        {
          if (v25 == 2 && *(v13 + 16) != *(v13 + 24))
          {
LABEL_39:
            if ((*a6 & 1) == 0)
            {
              *a6 = 1;
              v62 = v16;
              if (a7)
              {
                if (a7 <= 14)
                {
                  v27 = 0;
                  v28 = v56 & 0xF00000000000000;
                  v56 &= 0xF00000000000000uLL;
                }

                else
                {
                  sub_25424D2B8();
                  swift_allocObject();
                  v26 = sub_25424D2A8();
                  if (a7 >= 0x7FFFFFFF)
                  {
                    sub_25424D468();
                    v27 = swift_allocObject();
                    v28 = v26 | 0x8000000000000000;
                    *(v27 + 16) = 0;
                    *(v27 + 24) = 0;
                  }

                  else
                  {
                    v27 = 0;
                    v28 = v26 | 0x4000000000000000;
                  }
                }
              }

              else
              {
                v27 = 0;
                v28 = 0xC000000000000000;
              }

              *&v66 = v27;
              *(&v66 + 1) = v28;
              v45 = *a5;
              v46 = a5[1];
              sub_254140660(*a5, v46);
              sub_25424D528();
              sub_254134D04(v45, v46);
              v47 = *a5;
              v48 = a5[1];
              *a5 = v66;
              sub_254134D04(v47, v48);
              *&v16 = v62;
            }

            v49 = v16;
            sub_25424D528();
            v13 = v49;
            v14 = v17;
            goto LABEL_7;
          }
        }

        else if (v25)
        {
          if (v13 != v13 >> 32)
          {
            goto LABEL_39;
          }
        }

        else if ((v14 & 0xFF000000000000) != 0)
        {
          goto LABEL_39;
        }

        *a5 = v16;
LABEL_7:
        result = sub_254134D04(v13, v14);
        a3 = 0;
        ++v10;
        v15 = __OFSUB__(v7, v19);
        v7 -= v19;
        if (v15)
        {
          goto LABEL_98;
        }
      }

      if (!v18)
      {
        v19 = BYTE6(v17) - a3;
        if (__OFSUB__(BYTE6(v17), a3))
        {
          goto LABEL_97;
        }

        goto LABEL_25;
      }

      result = *(v60 + 16 * v10);
      if (__OFSUB__(DWORD1(v16), v16))
      {
        goto LABEL_101;
      }

      v22 = DWORD1(v16) - v16;
      goto LABEL_21;
    }

    return 0;
  }

  return result;
}

uint64_t sub_2541CFE4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || (v4 = result, a4 < result))
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
  }

  else
  {
    if (result)
    {
      v7 = 0;
      v8 = (a2 + 40);
      while (1)
      {
        if (v4 < 1 || v7 >= *(a2 + 16))
        {
          return v7;
        }

        v13 = *(v8 - 1);
        v12 = *v8;
        v14 = *v8 >> 62;
        if (v14 <= 1)
        {
          break;
        }

        if (v14 == 2)
        {
          v17 = *(v13 + 16);
          v16 = *(v13 + 24);
          v18 = v16 - v17;
          if (__OFSUB__(v16, v17))
          {
            goto LABEL_66;
          }

LABEL_20:
          result = sub_254140660(*(v8 - 1), *v8);
          v11 = __OFSUB__(v18, a3);
          v15 = v18 - a3;
          if (v11)
          {
            goto LABEL_61;
          }

          goto LABEL_24;
        }

        v15 = -a3;
        if (__OFSUB__(0, a3))
        {
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

LABEL_24:
        if (v4 < v15)
        {
          if (v14 > 1)
          {
            v26 = 0;
            if (v14 == 2)
            {
              v26 = *(v13 + 16);
            }
          }

          else if (v14)
          {
            v26 = v13;
          }

          else
          {
            v26 = 0;
          }

          v27 = sub_2541347C8(v26, a3, v13, v12);
          result = sub_2541347C8(v27, v4, v13, v12);
          if (result >= v27)
          {
            v28 = sub_25424D4B8();
            v30 = v29;
            sub_254134D04(v13, v12);
            sub_254134D04(v28, v30);
            return v7;
          }

          goto LABEL_70;
        }

        if (a3)
        {
          if (v14 > 1)
          {
            if (v14 == 2)
            {
              v19 = *(v13 + 16);
              v11 = __OFADD__(v19, a3);
              a3 += v19;
              if (v11)
              {
                goto LABEL_68;
              }

              v20 = *(v13 + 24);
            }

            else
            {
              v20 = 0;
              v19 = 0;
            }
          }

          else if (v14)
          {
            v19 = v13;
            v11 = __OFADD__(v13, a3);
            a3 += v13;
            if (v11)
            {
              goto LABEL_69;
            }

            v20 = v13 >> 32;
          }

          else
          {
            v19 = 0;
            v20 = BYTE6(v12);
          }

          if (a3 < v19 || v20 < a3)
          {
            goto LABEL_63;
          }

          if (v14 > 1)
          {
            if (v14 == 2)
            {
              v22 = *(v13 + 16);
              v21 = *(v13 + 24);
            }

            else
            {
              v21 = 0;
              v22 = 0;
            }
          }

          else
          {
            if (v14)
            {
              v21 = v13 >> 32;
            }

            else
            {
              v21 = BYTE6(v12);
            }

            if (v14)
            {
              v22 = v13;
            }

            else
            {
              v22 = 0;
            }
          }

          if (v21 < a3 || v21 < v22)
          {
            goto LABEL_64;
          }

          v23 = sub_25424D4B8();
          v25 = v24;
          sub_254134D04(v13, v12);
          v9 = v23;
          v10 = v25;
        }

        else
        {
          v9 = v13;
          v10 = v12;
        }

        result = sub_254134D04(v9, v10);
        a3 = 0;
        ++v7;
        v8 += 2;
        v11 = __OFSUB__(v4, v15);
        v4 -= v15;
        if (v11)
        {
          goto LABEL_62;
        }
      }

      if (!v14)
      {
        v15 = BYTE6(v12) - a3;
        if (__OFSUB__(BYTE6(v12), a3))
        {
          goto LABEL_61;
        }

        goto LABEL_24;
      }

      if (__OFSUB__(HIDWORD(v13), v13))
      {
        goto LABEL_65;
      }

      v18 = HIDWORD(v13) - v13;
      goto LABEL_20;
    }

    return 0;
  }

  return result;
}

uint64_t sub_2541D0104(uint64_t result, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v3)
    {
      if (result == result >> 32)
      {
        return result;
      }
    }

    else if ((a2 & 0xFF000000000000) == 0)
    {
      return result;
    }

LABEL_9:
    v4 = result;
    v6 = *v2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_2541B09E0(0, *(v6 + 2) + 1, 1, v6);
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v17 = sub_2541B09E0((v7 > 1), v8 + 1, 1, v6);
      v9 = a2;
      v6 = v17;
    }

    else
    {
      v9 = a2;
    }

    result = v4;
    *(v6 + 2) = v8 + 1;
    v10 = &v6[16 * v8];
    *(v10 + 4) = v4;
    *(v10 + 5) = v9;
    *v2 = v6;
    if (v3 == 2)
    {
      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      v11 = v12 - v13;
      if (__OFSUB__(v12, v13))
      {
LABEL_26:
        __break(1u);
        return result;
      }
    }

    else
    {
      if (v3 != 1)
      {
        v11 = BYTE6(v9);
        goto LABEL_20;
      }

      if (__OFSUB__(HIDWORD(v4), v4))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v11 = HIDWORD(v4) - v4;
    }

    result = sub_254140660(v4, v9);
LABEL_20:
    v14 = *(v2 + 16);
    v15 = __OFADD__(v14, v11);
    v16 = v14 + v11;
    if (!v15)
    {
      *(v2 + 16) = v16;
      return result;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v3 == 2 && *(result + 16) != *(result + 24))
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2541D0258(uint64_t a1)
{
  v11 = xmmword_254252DC0;
  v10 = 0;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  result = sub_2541CF898(a1, *v1, v4, v5, &v11, &v10, a1);
  v8 = v7;
  if (result >= 1)
  {
    if (*(v3 + 16) < result)
    {
LABEL_8:
      __break(1u);
      goto LABEL_9;
    }

    result = sub_2541D1DD8(0, result);
LABEL_5:
    v1[1] = v8;
    if (!__OFSUB__(v5, a1))
    {
      v1[2] = v5 - a1;
      v9 = v11;
      sub_254140660(v11, *(&v11 + 1));
      sub_254134D04(v9, *(&v9 + 1));
      return v9;
    }

    __break(1u);
    goto LABEL_8;
  }

  v8 = v4 + v7;
  if (!__OFADD__(v4, v7))
  {
    goto LABEL_5;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2541D0338(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  result = sub_2541CFE4C(a1, *a2, v5, v6);
  v9 = v8;
  if (result > 0)
  {
    if (*(v4 + 16) < result)
    {
LABEL_8:
      __break(1u);
      goto LABEL_9;
    }

    result = sub_2541D1DD8(0, result);
LABEL_5:
    a2[1] = v9;
    if (!__OFSUB__(v6, a1))
    {
      a2[2] = v6 - a1;
      return result;
    }

    __break(1u);
    goto LABEL_8;
  }

  v9 = v5 + v8;
  if (!__OFADD__(v5, v8))
  {
    goto LABEL_5;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2541D03D4(uint64_t a1, unint64_t a2, uint64_t *a3, _BYTE *a4, uint64_t a5)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 == 2 && *(v6 + 16) != *(v6 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  if (v8)
  {
    if (v6 != v6 >> 32)
    {
      goto LABEL_7;
    }

LABEL_11:
    *a3 = a1;
    a3[1] = a2;
    sub_254140660(a1, a2);

    return sub_254134D04(v6, v7);
  }

  if ((v7 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((*a4 & 1) == 0)
  {
    *a4 = 1;
    *&v15 = sub_2541EFFDC(a5);
    *(&v15 + 1) = v9;
    v10 = *a3;
    v11 = a3[1];
    sub_254140660(*a3, v11);
    sub_25424D528();
    sub_254134D04(v10, v11);
    v12 = *a3;
    v13 = a3[1];
    *a3 = v15;
    sub_254134D04(v12, v13);
  }

  return sub_25424D528();
}

__n128 sub_2541D04F8@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = 0;
  *(a1 + 32) = result.n128_u64[0];
  return result;
}

char *sub_2541D0524()
{
  v1 = sub_2541D1878(*v0, *(v0 + 8), *(v0 + 16));

  return v1;
}

void sub_2541D0590()
{
  if (!v0[2])
  {
    return;
  }

  v1 = v0[3];
  v2 = *v0;
  v3 = *(*v0 + 16);
  if (v1 >= v3)
  {
    return;
  }

  v4 = (v2 + 16 * v1 + 40);
  while (v1 < v3)
  {
    v6 = *(v4 - 1);
    v5 = *v4;
    v7 = v0[4];
    v8 = *v4 >> 62;
    if (v8 <= 1)
    {
      if (!v8)
      {
        if (v7 < BYTE6(v5))
        {
          goto LABEL_18;
        }

        goto LABEL_5;
      }

      if (__OFSUB__(HIDWORD(v6), v6))
      {
        goto LABEL_27;
      }

      v11 = HIDWORD(v6) - v6;
      goto LABEL_17;
    }

    if (v8 == 2)
    {
      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      v11 = v9 - v10;
      if (__OFSUB__(v9, v10))
      {
        goto LABEL_28;
      }

LABEL_17:
      sub_254140660(*(v4 - 1), *v4);
      if (v7 < v11)
      {
LABEL_18:
        if (v8)
        {
          if (v8 == 2)
          {
            v12 = *(v6 + 16);
          }

          else
          {
            v12 = v6;
          }
        }

        else
        {
          v12 = 0;
        }

        goto LABEL_25;
      }

      goto LABEL_5;
    }

    if (v7 < 0)
    {
      v12 = 0;
LABEL_25:
      sub_2541347C8(v12, v7, v6, v5);
      sub_25424D4C8();
      sub_254134D04(v6, v5);
      v0[4] = v7 + 1;
      return;
    }

LABEL_5:
    sub_254134D04(v6, v5);
    v0[3] = ++v1;
    v0[4] = 0;
    v3 = *(v2 + 16);
    v4 += 2;
    if (v1 >= v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_2541D0710(_BYTE *a1@<X8>)
{
  sub_2541D0590();
  *a1 = v2;
  a1[1] = v3 & 1;
}

double sub_2541D0740@<D0>(uint64_t a1@<X8>)
{
  sub_2541D1BC8(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), v5);

  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

char *sub_2541D07A8()
{
  v1 = sub_2541D1524(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));

  return v1;
}

uint64_t sub_2541D07F0(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_25424E868();
LABEL_9:
  result = sub_25424E6D8();
  *v2 = result;
  return result;
}

unint64_t sub_2541D0890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for EncryptionKeyRecord(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_15:
  if (a3 >= 1 && v17 >= 1)
  {
    result = sub_2541D2374(a4, v15, type metadata accessor for EncryptionKeyRecord);
    if (v12 < v17)
    {
      goto LABEL_25;
    }
  }

  return sub_2541D230C(a4);
}

unint64_t sub_2541D0A18(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v39 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (a3)
    {
      if ((a3 & 0x8000000000000000) != 0)
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
      }

      result = a6;
      if (a6)
      {
        v36 = a6 - 1;
        if (a6 < 1)
        {
          __break(1u);
          goto LABEL_46;
        }

        v25 = a6;
        v11 = 0;
        v12 = a5 >> 62;
        v13 = a4;
        v34 = a4 >> 32;
        v35 = BYTE6(a5);
        v37 = a3 - 1;
        v32 = a4 >> 16;
        v33 = a4 >> 8;
        v30 = HIDWORD(a4);
        v31 = a4 >> 24;
        v28 = HIWORD(a4);
        v29 = a4 >> 40;
        v26 = a5 >> 8;
        v27 = HIBYTE(a4);
        if ((a5 >> 62) <= 1)
        {
          goto LABEL_12;
        }

LABEL_7:
        if (v12 == 2)
        {
          v14 = *(a4 + 16);
          v15 = v14 + v11;
          if (__OFADD__(v14, v11))
          {
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

          v16 = *(a4 + 24);
          if (v15 >= v14)
          {
            goto LABEL_18;
          }

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
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v16 = 0;
LABEL_14:
        v15 = v11;
        if (v11 < 0)
        {
          goto LABEL_46;
        }

        while (1)
        {
LABEL_18:
          if (v16 < v15)
          {
            goto LABEL_46;
          }

          if (v12 > 1)
          {
            break;
          }

          if (v12)
          {
            if (v15 < a4 || v15 >= v34)
            {
              goto LABEL_50;
            }

            v22 = sub_25424D268();
            if (!v22)
            {
              goto LABEL_58;
            }

            v19 = v22;
            v23 = sub_25424D298();
            v21 = v15 - v23;
            if (__OFSUB__(v15, v23))
            {
              goto LABEL_52;
            }

LABEL_34:
            v17 = *(v19 + v21);
            goto LABEL_35;
          }

          if (v15 >= v35)
          {
            goto LABEL_49;
          }

          v38[0] = v13;
          v38[1] = v33;
          v38[2] = v32;
          v38[3] = v31;
          v38[4] = v30;
          v38[5] = v29;
          v38[6] = v28;
          v38[7] = v27;
          v38[8] = a5;
          v38[9] = v26;
          v38[10] = BYTE2(a5);
          v38[11] = BYTE3(a5);
          v38[12] = BYTE4(a5);
          v38[13] = BYTE5(a5);
          v17 = v38[v15];
LABEL_35:
          *(a2 + v11) = v17;
          if (v37 == v11)
          {
            result = a3;
            a6 = v25;
            goto LABEL_44;
          }

          if (__OFADD__(v11 + 1, 1))
          {
            goto LABEL_47;
          }

          if (v36 == v11)
          {
            a6 = v25;
            result = v25;
            goto LABEL_44;
          }

          ++v11;
          if (v12 > 1)
          {
            goto LABEL_7;
          }

LABEL_12:
          if (!v12)
          {
            v16 = v35;
            goto LABEL_14;
          }

          v15 = a4 + v11;
          if (__OFADD__(a4, v11))
          {
            goto LABEL_54;
          }

          v16 = v34;
          if (v15 < a4)
          {
            goto LABEL_46;
          }
        }

        if (v12 != 2)
        {
          goto LABEL_57;
        }

        if (v15 < *(a4 + 16))
        {
          goto LABEL_48;
        }

        if (v15 >= *(a4 + 24))
        {
          goto LABEL_51;
        }

        v18 = sub_25424D268();
        if (!v18)
        {
          goto LABEL_59;
        }

        v19 = v18;
        v20 = sub_25424D298();
        v21 = v15 - v20;
        if (__OFSUB__(v15, v20))
        {
          goto LABEL_53;
        }

        goto LABEL_34;
      }
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

LABEL_44:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = a6;
  a1[3] = result;
  return result;
}

uint64_t sub_2541D0D14(void *a1, _BYTE *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_2541D1BC8(a4, a5, a6, a7, &v42);
  v10 = *(&v42 + 1);
  v11 = v42;
  v41 = v43;

  if (!a2)
  {
    goto LABEL_46;
  }

  v13 = *(&v43 + 1);
  v14 = v44;
  if (!a3)
  {
    goto LABEL_53;
  }

  if (a3 < 0)
  {
    goto LABEL_59;
  }

  v40 = 0;
  v38 = v10;
  v15 = *(&v43 + 1);
  v16 = 1;
  v36 = *(&v43 + 1);
  v37 = v44;
  v39 = a3;
  while (1)
  {
    if (!v41)
    {
      a3 = 0;
      v27 = v36;
      v14 = v37;
      goto LABEL_49;
    }

    v17 = *(v11 + 16);
    if (v15 >= v17)
    {
      v27 = v15;
LABEL_48:
      a3 = v40;
LABEL_49:
      *a1 = v11;
      a1[1] = v38;
      a1[2] = v41;
      a1[3] = v27;
      goto LABEL_54;
    }

    if (v15 >= v17)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v18 = (v11 + 32 + 16 * v15);
    v19 = *v18;
    v20 = v18[1];
    v21 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v21 == 2)
      {
        v23 = *(v19 + 16);
        v22 = *(v19 + 24);
        v24 = v22 - v23;
        if (__OFSUB__(v22, v23))
        {
          goto LABEL_58;
        }

        goto LABEL_18;
      }

      if ((v14 & 0x8000000000000000) == 0)
      {
LABEL_24:
        result = sub_254134D04(v19, v20);
        v27 = v15 + 1;
        v28 = *(v11 + 16);
        if (v15 + 1 < v28)
        {
          v29 = (v11 + 56 + 16 * v15);
          do
          {
            if (v27 >= v28)
            {
              goto LABEL_56;
            }

            v19 = *(v29 - 1);
            v20 = *v29;
            v21 = *v29 >> 62;
            if (v21 > 1)
            {
              if (v21 != 2)
              {
                goto LABEL_27;
              }

              v32 = *(v19 + 16);
              v31 = *(v19 + 24);
              v30 = v31 - v32;
              if (__OFSUB__(v31, v32))
              {
                goto LABEL_58;
              }
            }

            else
            {
              if (!v21)
              {
                if (BYTE6(v20))
                {
                  goto LABEL_36;
                }

                goto LABEL_27;
              }

              if (__OFSUB__(HIDWORD(v19), v19))
              {
                goto LABEL_57;
              }

              v30 = HIDWORD(v19) - v19;
            }

            sub_254140660(*(v29 - 1), *v29);
            if (v30 > 0)
            {
LABEL_36:
              v14 = 0;
              v15 = v27;
              if (v21)
              {
                goto LABEL_20;
              }

              goto LABEL_37;
            }

LABEL_27:
            result = sub_254134D04(v19, v20);
            ++v27;
            v28 = *(v11 + 16);
            v29 += 2;
          }

          while (v27 < v28);
        }

        v14 = 0;
        goto LABEL_48;
      }

LABEL_62:
      __break(1u);
      return result;
    }

    if (!v21)
    {
      if (v14 >= BYTE6(v20))
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    if (__OFSUB__(HIDWORD(v19), v19))
    {
      goto LABEL_57;
    }

    v24 = HIDWORD(v19) - v19;
LABEL_18:
    sub_254140660(v19, v20);
    if (v14 >= v24)
    {
      goto LABEL_24;
    }

LABEL_19:
    if (v21)
    {
LABEL_20:
      if (v21 == 2)
      {
        v25 = *(v19 + 16);
        result = v25 + v14;
        if (__OFADD__(v25, v14))
        {
          goto LABEL_61;
        }

        v26 = *(v19 + 24);
      }

      else
      {
        v25 = v19;
        result = v19 + v14;
        if (__OFADD__(v19, v14))
        {
          goto LABEL_60;
        }

        v26 = v19 >> 32;
      }
    }

    else
    {
LABEL_37:
      v25 = 0;
      v26 = BYTE6(v20);
      result = v14;
    }

    if (result < v25 || v26 < result)
    {
      goto LABEL_62;
    }

    v33 = sub_25424D4C8();
    result = sub_254134D04(v19, v20);
    ++v14;
    *a2 = v33;
    a3 = v39;
    if (v16 == v39)
    {
      break;
    }

    ++a2;
    v40 = v16;
    if (__OFADD__(v16++, 1))
    {
      __break(1u);
LABEL_46:
      a3 = 0;
      v35 = v43;
      *a1 = v42;
      *(a1 + 1) = v35;
      a1[4] = v44;
      return a3;
    }
  }

  v13 = v15;
  v10 = v38;
LABEL_53:
  *a1 = v11;
  a1[1] = v10;
  a1[2] = v41;
  a1[3] = v13;
LABEL_54:
  a1[4] = v14;
  return a3;
}