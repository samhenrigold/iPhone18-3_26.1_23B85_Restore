uint64_t _s33iCloudSubscriptionOptimizerDaemon10BiomeStatsC03geteF08forArrayACSaySiG_tFZ_0(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    type metadata accessor for BiomeStats();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = 0;
    return result;
  }

  v10 = a1;

  sub_275B16B28(&v10);
  v1 = *(v10 + 2);
  if (v1)
  {
    v7 = *&v10[8 * (v1 >> 1) + 32];
    goto LABEL_8;
  }

  v2 = (v1 - 1) / 2;
  if (v2 >= v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = *&v10[8 * v2 + 32];
  v4 = *&v10[4 * v1 + 32];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5)
  {
LABEL_11:
    __break(1u);

    __break(1u);
    return result;
  }

  v7 = v6 / 2;
LABEL_8:
  v9 = *&v10[8 * v1 + 24];

  type metadata accessor for BiomeStats();
  result = swift_allocObject();
  *(result + 16) = v9;
  *(result + 24) = v7;
  return result;
}

id _s33iCloudSubscriptionOptimizerDaemon10BiomeUtilsC21getBMPublisherOptions5start3end9maxEventsSo0hI0C01iabC4Core9TimestampV_ALSitFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33130, &unk_275B7C8D0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v21 - v10;
  sub_275B7AC2C();
  v12 = sub_275B795CC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v11, 0, 1, v12);
  sub_275B7AC2C();
  v14(v7, 0, 1, v12);
  v15 = sub_275B7ABAC();
  v16 = *(v13 + 48);
  v17 = 0;
  if (v16(v11, 1, v12) != 1)
  {
    v17 = sub_275B795AC();
    (*(v13 + 8))(v11, v12);
  }

  if (v16(v7, 1, v12) == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = sub_275B795AC();
    (*(v13 + 8))(v7, v12);
  }

  v19 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v17 endDate:v18 maxEvents:a3 lastN:0 reversed:v15 & 1];

  return v19;
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon23BuildPFLFeatureAndLabelC18pflMessageToRecord7messageSDySSypG10recordInfo_SaySfG0N4Datat01iabC4Core23SubscriptiondPFLMessageV_tFZ_0(void *a1)
{
  *&v26 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33310, &qword_275B7C8F8);
  sub_275B17A94();
  v1 = sub_275B7ACBC();
  v3 = v2;
  if (sub_275B7A37C())
  {
    sub_275B7A38C();
    v4 = MEMORY[0x277D83A90];
    v27 = MEMORY[0x277D83A90];
    LODWORD(v26) = v5;
    sub_275B17B40(&v26, v25);
    v6 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_275B2C52C(v25, 0xD000000000000021, 0x8000000275B80B20, isUniquelyReferenced_nonNull_native);
    sub_275B7A33C();
    v27 = v4;
    LODWORD(v26) = v8;
    sub_275B17B40(&v26, v25);
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v24 = v6;
    v10 = 0xD00000000000001DLL;
    v11 = 0x8000000275B80B50;
  }

  else
  {
    sub_275B7A35C();
    v12 = MEMORY[0x277D83A90];
    v27 = MEMORY[0x277D83A90];
    LODWORD(v26) = v13;
    sub_275B17B40(&v26, v25);
    v14 = MEMORY[0x277D84F98];
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_275B2C52C(v25, 0xD00000000000001ELL, 0x8000000275B80AE0, v15);
    v16 = sub_275B7A31C();
    v17 = 0.0;
    if (v16)
    {
      v17 = 1.0;
    }

    v27 = v12;
    *&v26 = v17;
    sub_275B17B40(&v26, v25);
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v24 = v14;
    v11 = 0x8000000275B80B00;
    v10 = 0xD000000000000012;
  }

  sub_275B2C52C(v25, v10, v11, v9);
  v27 = MEMORY[0x277D837D0];
  *&v26 = v1;
  *(&v26 + 1) = v3;
  sub_275B17B40(&v26, v25);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_275B2C52C(v25, 0x7365727574616566, 0xE800000000000000, v18);
  v19 = sub_275B7A2BC();
  v27 = MEMORY[0x277D839B0];
  LOBYTE(v26) = v19 & 1;
  sub_275B17B40(&v26, v25);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_275B2C52C(v25, 0x44796D6D75447369, 0xEB00000000617461, v20);
  v21 = sub_275B7A2DC();
  v27 = MEMORY[0x277D84A28];
  *&v26 = v21;
  sub_275B17B40(&v26, v25);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_275B2C52C(v25, 0x65566E6F6D656164, 0xED00006E6F697372, v22);
  return v24;
}

unint64_t sub_275B17A94()
{
  result = qword_280A33318;
  if (!qword_280A33318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A33310, &qword_275B7C8F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A33318);
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

_OWORD *sub_275B17B40(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t BundledNotificationDelayModel.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t BundledNotificationDelayModel.notificationDataSource.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t BundledNotificationDelayModel.__allocating_init()()
{
  v0 = swift_allocObject();
  BundledNotificationDelayModel.init()();
  return v0;
}

void *BundledNotificationDelayModel.init()()
{
  v2 = v0;
  v0[2] = 0xD000000000000024;
  v0[3] = 0x8000000275B7FCE0;
  type metadata accessor for BundledNotificationDelaySamePropensities();
  sub_275B78A78([objc_allocWithZone(MEMORY[0x277CBFF38]) init]);
  if (!v1)
  {
    v4 = *(v3 + 16);

    v0[4] = v4;
    v5 = v4;
    v6 = [v5 modelDescription];
    v7 = [v6 inputDescriptionsByName];

    sub_275B18088();
    v8 = sub_275B7AC8C();

    if (*(v8 + 16))
    {
      sub_275B180D4(0x4165727574616566, 0xEC00000079617272);
      v10 = v9;

      if ((v10 & 1) == 0)
      {
        v28 = MEMORY[0x277D84F90];
        goto LABEL_11;
      }

      v11._countAndFlagsBits = 0x7365727574616566;
      v11._object = 0xE800000000000000;
      v12 = MLModel.getMetadataStringValueFor(_:)(v11);
      if (!v12.value._object)
      {
        sub_275B1814C();
        swift_allocError();
        *v27 = 0xD00000000000003ELL;
        v27[1] = 0x8000000275B80B70;
        swift_willThrow();

        goto LABEL_3;
      }

      v28 = sub_275B405D8(v12.value._countAndFlagsBits, v12.value._object);
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
    }

LABEL_11:

    v2[10] = v28;
    v13 = v2[4];
    v14 = MLModel.getOffsetTimeIntervalOrDefault()();

    v2[5] = v14;
    v15 = v2[4];
    v16 = MLModel.getPercentileToChooseOffsetOrDefault()();

    v2[7] = v16;
    v17 = v2[4];
    v18 = MLModel.getNumOffsetsOrDefault()();

    v2[6] = v18;
    v19 = v2[4];
    v20 = MLModel.getOverwriteDelayOrDefault()();
    v22 = v21;

    v2[8] = v20;
    *(v2 + 72) = v22 & 1;
    v23 = v2[4];
    LOBYTE(v20) = MLModel.getUseMaxDelayTimestampOrDefault()();

    *(v2 + 88) = v20 & 1;
    v24 = v2[4];
    v25 = MLModel.getNotificationDataSource()();

    *(v2 + 6) = v25;
    return v2;
  }

LABEL_3:
  type metadata accessor for BundledNotificationDelayModel();
  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t BundledNotificationDelayModel.deinit()
{

  return v0;
}

uint64_t BundledNotificationDelayModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_275B17FE4()
{
  v1 = *(*v0 + 96);

  return v1;
}

uint64_t sub_275B18024()
{
  v1 = *(*v0 + 16);

  return v1;
}

unint64_t sub_275B18088()
{
  result = qword_280A33320;
  if (!qword_280A33320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A33320);
  }

  return result;
}

unint64_t sub_275B180D4(uint64_t a1, uint64_t a2)
{
  sub_275B7B26C();
  sub_275B7AD7C();
  v4 = sub_275B7B2AC();

  return sub_275B183F0(a1, a2, v4);
}

unint64_t sub_275B1814C()
{
  result = qword_280A33328;
  if (!qword_280A33328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A33328);
  }

  return result;
}

unint64_t sub_275B181A0(uint64_t a1)
{
  v1 = a1;
  sub_275B7B26C();
  sub_275B7B28C();
  v2 = sub_275B7B2AC();

  return sub_275B184A8(v1, v2);
}

unint64_t sub_275B1820C(uint64_t a1)
{
  sub_275B7AD0C();
  sub_275B7B26C();
  sub_275B7AD7C();
  v2 = sub_275B7B2AC();

  return sub_275B18514(a1, v2);
}

unint64_t sub_275B182A0(uint64_t a1)
{
  v2 = sub_275B7B03C();

  return sub_275B18618(a1, v2);
}

unint64_t sub_275B182E4(uint64_t a1)
{
  sub_275B7B26C();
  FeatureName.rawValue.getter(a1);
  sub_275B7AD7C();

  v2 = sub_275B7B2AC();

  return sub_275B186E0(a1, v2);
}

unint64_t sub_275B1836C(uint64_t a1)
{
  sub_275B795FC();
  sub_275B18A40(&qword_28140FBD8, MEMORY[0x277CC9600]);
  v2 = sub_275B7ACAC();

  return sub_275B187E4(a1, v2);
}

unint64_t sub_275B183F0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_275B7B1BC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_275B184A8(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_275B18514(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_275B7AD0C();
      v8 = v7;
      if (v6 == sub_275B7AD0C() && v8 == v9)
      {
        break;
      }

      v11 = sub_275B7B1BC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_275B18618(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_275B18990(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x277C894F0](v9, a1);
      sub_275B189EC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_275B186E0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = a1;
    v6 = ~v3;
    while (1)
    {
      v7 = FeatureName.rawValue.getter(*(*(v2 + 48) + v4));
      v9 = v8;
      if (v7 == FeatureName.rawValue.getter(v5) && v9 == v10)
      {
        break;
      }

      v12 = sub_275B7B1BC();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_275B187E4(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_275B795FC();
  v5 = *(v4 - 8);
  v7.n128_f64[0] = MEMORY[0x28223BE20](v4, v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4, v7);
      sub_275B18A40(&qword_280A33330, MEMORY[0x277CC9610]);
      v17 = sub_275B7ACCC();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_275B18A40(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_275B795FC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_275B18A84()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A33338);
  __swift_project_value_buffer(v0, qword_280A33338);
  type metadata accessor for CliDelayedActivity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33350, &unk_275B7C9D0);
  return sub_275B7A97C();
}

uint64_t sub_275B18B00()
{
  v0 = sub_275B79D3C();
  v2 = *v0;
  v1 = v0[1];
  qword_28140EB78 = v2;
  unk_28140EB80 = v1;
}

void *static CliDelayedActivity.shared.getter()
{
  if (off_28140EB68)
  {
    v0 = off_28140EB68;
  }

  else
  {
    if (qword_280A32C78 != -1)
    {
      swift_once();
    }

    v1 = sub_275B7A96C();
    __swift_project_value_buffer(v1, qword_280A33338);
    v2 = sub_275B7A93C();
    v0 = _s33iCloudSubscriptionOptimizerDaemon18CliDelayedActivityC10initSharedACyFZ_0(v2);
  }

  return v0;
}

uint64_t CliDelayedActivity.register(withDelay:)(uint64_t a1)
{
  sub_275B66D40(a1, 0);
}

Swift::Void __swiftcall CliDelayedActivity.run()()
{
  v39 = sub_275B79E2C();
  MEMORY[0x28223BE20](v39, v0);
  v38 = v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A330F8, &qword_275B7C9A0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v37 - v8;
  v10 = sub_275B79ABC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v40 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_275B79CFC();
  v15 = *v14;
  v16 = v14[1];
  type metadata accessor for DaemonStateManager();
  inited = swift_initStackObject();
  *(inited + 16) = v15;
  *(inited + 24) = v16;
  (*(v11 + 56))(v5, 1, 1, v10);
  v18 = qword_28140F988;

  if (v18 != -1)
  {
    v19 = swift_once();
  }

  v21 = off_28140F990;
  v22 = MEMORY[0x28223BE20](v19, v20);
  v37[-2] = v5;
  v37[-1] = inited;
  (*(*v21 + 136))(0x6574617453746567, 0xE800000000000000, sub_275B094A8, v22);
  sub_275B0952C(v5, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_275B094C4(v9);
    if (qword_280A32C78 != -1)
    {
      swift_once();
    }

    v23 = sub_275B7A96C();
    __swift_project_value_buffer(v23, qword_280A33338);
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_275B7B09C();
    MEMORY[0x277C89240](0xD000000000000014, 0x8000000275B80CE0);
    MEMORY[0x277C89240](*(v41 + 16), *(v41 + 24));
    MEMORY[0x277C89240](0xD000000000000023, 0x8000000275B80D00);
    sub_275B7A95C();
  }

  else
  {
    v24 = v40;
    sub_275B0959C(v9, v40);
    _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
    v25 = v38;
    sub_275B798AC();
    sub_275B79DEC();
    sub_275B19458(v25, MEMORY[0x277D7F638]);
    sub_275B7AB6C();
    v26 = sub_275B7ABCC();
    if (qword_280A32C78 != -1)
    {
      swift_once();
    }

    v27 = sub_275B7A96C();
    v37[1] = __swift_project_value_buffer(v27, qword_280A33338);
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_275B7B09C();
    MEMORY[0x277C89240](0xD000000000000024, 0x8000000275B80D30);
    v42 = v26;
    sub_275B7B0EC();
    MEMORY[0x277C89240](0xD000000000000020, 0x8000000275B80D60);
    v28 = v43;
    v29 = v44;
    v43 = 0;
    v44 = 0xE000000000000000;
    MEMORY[0x277C89240](0x5B3D657461747320, 0xE800000000000000);
    sub_275B798AC();
    sub_275B7B0EC();
    sub_275B19458(v25, MEMORY[0x277D7F638]);
    MEMORY[0x277C89240](93, 0xE100000000000000);
    v30 = v24;
    v31 = v43;
    v32 = v44;
    v43 = v28;
    v44 = v29;

    MEMORY[0x277C89240](v31, v32);

    v33 = v43;
    v34 = v44;
    v43 = 0;
    v44 = 0xE000000000000000;
    MEMORY[0x277C89240](0x7469766974636120, 0xEB000000005B3D79);
    v42 = v41;
    type metadata accessor for CliDelayedActivity();
    sub_275B7B0EC();
    MEMORY[0x277C89240](93, 0xE100000000000000);
    v35 = v43;
    v36 = v44;
    v43 = v33;
    v44 = v34;

    MEMORY[0x277C89240](v35, v36);

    sub_275B7A91C();

    sub_275B19458(v30, MEMORY[0x277D7F5A8]);
  }
}

uint64_t sub_275B1926C(uint64_t a1, uint64_t a2)
{
  v3 = sub_275B79E2C();
  MEMORY[0x28223BE20](v3 - 8, v4);
  sub_275B196F8(a2, &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_275B798BC();
}

uint64_t CliDelayedActivity.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon18CliDelayedActivityC10initSharedACyFZ_0(uint64_t a1)
{
  type metadata accessor for CliDelayedActivity();
  v1 = swift_allocObject();
  if (qword_28140EB70 != -1)
  {
    swift_once();
  }

  v3 = qword_28140EB78;
  v2 = unk_28140EB80;
  *(v1 + 40) = 0;
  *(v1 + 48) = 258;
  *(v1 + 16) = v3;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;

  sub_275B68C7C();

  off_28140EB68 = v1;

  return v1;
}

uint64_t sub_275B19458(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon18CliDelayedActivityC12persistStateyy01iabC4Core0egI0VFZ_0(uint64_t a1)
{
  v2 = sub_275B79CFC();
  v4 = *v2;
  v3 = v2[1];
  type metadata accessor for DaemonStateManager();
  inited = swift_initStackObject();
  *(inited + 16) = v4;
  *(inited + 24) = v3;
  v17 = a1;
  v6 = qword_28140F988;

  if (v6 != -1)
  {
    v7 = swift_once();
  }

  v9 = off_28140F990;
  v10 = MEMORY[0x28223BE20](v7, v8);
  v13 = inited;
  v14 = sub_275B196F0;
  v15 = &v16;
  (*(*v9 + 136))(0xD000000000000021, v11 | 0x8000000000000000, sub_275B09408, v10);
}

uint64_t sub_275B196F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_275B79E2C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

iCloudSubscriptionOptimizerDaemon::CloudNotifActionLabel_optional __swiftcall CloudNotifActionLabel.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

unint64_t sub_275B1979C()
{
  result = qword_280A33358;
  if (!qword_280A33358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A33358);
  }

  return result;
}

uint64_t sub_275B197F0()
{
  v1 = *v0;
  sub_275B7B26C();
  MEMORY[0x277C89720](v1);
  return sub_275B7B2AC();
}

uint64_t sub_275B19864(uint64_t a1)
{
  v2 = *v1;
  sub_275B7B26C();
  MEMORY[0x277C89720](v2);
  return sub_275B7B2AC();
}

unint64_t *sub_275B198A8@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CloudNotifActionLabel(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CloudNotifActionLabel(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_275B19A38()
{
  v0 = sub_275B79CDC();
  v2 = *v0;
  v1 = v0[1];
  qword_28140F700 = v2;
  unk_28140F708 = v1;
}

uint64_t DaemonEvent.__allocating_init(withName:andSink:)(uint64_t a1, void *a2)
{
  v3 = a1;
  swift_allocObject();
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v7[0] = qword_28140F700;
  v7[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  v4 = DaemonEventName.rawValue.getter(v3);
  MEMORY[0x277C89240](v4);

  sub_275B19CD4(a2, v7);
  v5 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v5;
}

uint64_t DaemonEvent.init(withName:andSink:)(uint64_t a1, void *a2)
{
  v3 = a1;
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v7[0] = qword_28140F700;
  v7[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  v4 = DaemonEventName.rawValue.getter(v3);
  MEMORY[0x277C89240](v4);

  sub_275B19CD4(a2, v7);
  v5 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v5;
}

uint64_t static DaemonEvent.fullyScoped(_:)(uint64_t a1)
{
  v1 = a1;
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4 = qword_28140F700;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  v2 = DaemonEventName.rawValue.getter(v1);
  MEMORY[0x277C89240](v2);

  return v4;
}

uint64_t sub_275B19CD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t DaemonEvent.__deallocating_deinit()
{
  _s33iCloudSubscriptionOptimizerDaemon0D5EventCfd_0();

  return swift_deallocClassInstance();
}

unint64_t DaemonEventName.rawValue.getter(char a1)
{
  result = 0x614C6E6F6D656164;
  switch(a1)
  {
    case 1:
      result = 0x78456E6F6D656164;
      break;
    case 2:
      result = 0x536C6C6143637078;
      break;
    case 3:
      result = 0x466C6C6143637078;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x53617461446C6670;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x5079616C65446C6DLL;
      break;
    case 9:
      result = 0x63416D6574737973;
      break;
    case 10:
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_275B19F98(char *a1, char *a2)
{
  v2 = *a2;
  v3 = DaemonEventName.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == DaemonEventName.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_275B7B1BC();
  }

  return v8 & 1;
}

uint64_t sub_275B1A020()
{
  v1 = *v0;
  sub_275B7B26C();
  DaemonEventName.rawValue.getter(v1);
  sub_275B7AD7C();

  return sub_275B7B2AC();
}

uint64_t sub_275B1A084(uint64_t a1)
{
  DaemonEventName.rawValue.getter(*v1);
  sub_275B7AD7C();
}

uint64_t sub_275B1A0D8(uint64_t a1)
{
  v2 = *v1;
  sub_275B7B26C();
  DaemonEventName.rawValue.getter(v2);
  sub_275B7AD7C();

  return sub_275B7B2AC();
}

unint64_t sub_275B1A138@<X0>(Swift::String *a1@<X0>, iCloudSubscriptionOptimizerDaemon::DaemonEventName_optional *a2@<X8>)
{
  result = _s33iCloudSubscriptionOptimizerDaemon0D9EventNameO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_275B1A168@<X0>(unint64_t *a1@<X8>)
{
  result = DaemonEventName.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t _s33iCloudSubscriptionOptimizerDaemon0D9EventNameO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_275B7B17C();

  if (v2 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_275B1A1E4()
{
  result = qword_280A33360;
  if (!qword_280A33360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A33360);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DaemonEventName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DaemonEventName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_275B1A388()
{
  v0 = sub_275B79C7C();
  swift_allocObject();
  v1 = sub_275B79C6C();
  type metadata accessor for DaemonEvents();
  result = swift_allocObject();
  v3 = MEMORY[0x277D7F5F8];
  result[5] = v0;
  result[6] = v3;
  result[2] = v1;
  qword_28140F5C8 = result;
  return result;
}

uint64_t *DaemonEvents.__allocating_init(withSink:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_275B1B0AC(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t static DaemonEvents.get()()
{
  if (qword_28140F5C0 != -1)
  {
    swift_once();
  }
}

uint64_t static DaemonEvents.initSharedInstance(_:)(uint64_t a1)
{
  if (qword_28140F5C0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  qword_28140F5C8 = a1;
}

void *DaemonEvents.init(withSink:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = MEMORY[0x28223BE20](v5, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_275B1B03C(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t DaemonEvents.petDataCollection()()
{
  sub_275B19CD4(v0 + 16, v5);
  type metadata accessor for PetDataCollectionEvent();
  swift_allocObject();
  sub_275B19CD4(v5, v4);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v3[0] = qword_28140F700;
  v3[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000011, 0x8000000275B7F480);
  sub_275B19CD4(v4, v3);
  v1 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v1;
}

uint64_t DaemonEvents.notificationDelay()()
{
  sub_275B19CD4(v0 + 16, v5);
  type metadata accessor for NotificationDelayEvent();
  swift_allocObject();
  sub_275B19CD4(v5, v4);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v3[0] = qword_28140F700;
  v3[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000011, 0x8000000275B7F4A0);
  sub_275B19CD4(v4, v3);
  v1 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v1;
}

uint64_t DaemonEvents.mobileAssetDownload()()
{
  sub_275B19CD4(v0 + 16, v5);
  type metadata accessor for MobileAssetDownloadEvent();
  swift_allocObject();
  sub_275B19CD4(v5, v4);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v3[0] = qword_28140F700;
  v3[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000013, 0x8000000275B7F4C0);
  sub_275B19CD4(v4, v3);
  v1 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v1;
}

uint64_t sub_275B1AAA8(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  sub_275B19CD4(v3 + 16, v11);
  a1(0);
  swift_allocObject();
  sub_275B19CD4(v11, v10);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v9[0] = qword_28140F700;
  v9[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](a2, a3);
  sub_275B19CD4(v10, v9);
  v7 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t DaemonEvents.mlModelPerformance()()
{
  sub_275B19CD4(v0 + 16, v5);
  type metadata accessor for MLModelPerformanceEvent();
  swift_allocObject();
  sub_275B19CD4(v5, v4);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v3[0] = qword_28140F700;
  v3[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000012, 0x8000000275B7F500);
  sub_275B19CD4(v4, v3);
  v1 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v1;
}

uint64_t DaemonEvents.mlDelayPerformance()()
{
  sub_275B19CD4(v0 + 16, v5);
  type metadata accessor for MLDelayPerformanceEvent();
  swift_allocObject();
  sub_275B19CD4(v5, v4);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v3[0] = qword_28140F700;
  v3[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000012, 0x8000000275B7F520);
  sub_275B19CD4(v4, v3);
  v1 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v1;
}

uint64_t DaemonEvents.xpcCallToIndFinished()()
{
  sub_275B19CD4(v0 + 16, v5);
  type metadata accessor for XpcCallToIndFinishedEvent();
  swift_allocObject();
  sub_275B19CD4(v5, v4);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v3[0] = qword_28140F700;
  v3[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000014, 0x8000000275B7F540);
  sub_275B19CD4(v4, v3);
  v1 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v1;
}

uint64_t DaemonEvents.deleteDaemonState()()
{
  sub_275B19CD4(v0 + 16, v5);
  type metadata accessor for DeleteDaemonStateEvent();
  swift_allocObject();
  sub_275B19CD4(v5, v4);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v3[0] = qword_28140F700;
  v3[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000011, 0x8000000275B7F560);
  sub_275B19CD4(v4, v3);
  v1 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v1;
}

uint64_t DaemonEvents.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void *sub_275B1B03C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  return a2;
}

uint64_t *sub_275B1B0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DaemonEvents();
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v10[5] = a3;
  v10[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10 + 2);
  (*(v7 + 32))(boxed_opaque_existential_1, v9, a3);
  return v10;
}

uint64_t DaemonExitEvent.__allocating_init(withSink:)(void *a1)
{
  swift_allocObject();
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x78456E6F6D656164, 0xEA00000000007469);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t DaemonExitEvent.init(withSink:)(void *a1)
{
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x78456E6F6D656164, 0xEA00000000007469);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t DaemonExitEvent.addRunDuration(_:)(uint64_t a1)
{
  sub_275B7AB1C();
  sub_275B79B7C();
}

uint64_t DaemonExitEvent.__deallocating_deinit()
{
  _s33iCloudSubscriptionOptimizerDaemon0D5EventCfd_0();

  return swift_deallocClassInstance();
}

uint64_t DaemonLaunchedEvent.__allocating_init(withSink:)(void *a1)
{
  swift_allocObject();
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x614C6E6F6D656164, 0xEE00646568636E75);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t DaemonLaunchedEvent.init(withSink:)(void *a1)
{
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x614C6E6F6D656164, 0xEE00646568636E75);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t DaemonLaunchedEvent.addDuration(_:)(uint64_t a1)
{
  sub_275B7AB1C();
  sub_275B79B7C();
}

uint64_t DaemonLaunchedEvent.__deallocating_deinit()
{
  _s33iCloudSubscriptionOptimizerDaemon0D5EventCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_275B1B828()
{
  result = sub_275B7AB2C();
  static DaemonMLConstants.kDefaultOffsetTimeInterval = result;
  return result;
}

uint64_t *DaemonMLConstants.kDefaultOffsetTimeInterval.unsafeMutableAddressor()
{
  if (qword_280A32C88 != -1)
  {
    swift_once();
  }

  return &static DaemonMLConstants.kDefaultOffsetTimeInterval;
}

uint64_t static DaemonMLConstants.kDefaultOffsetTimeInterval.getter()
{
  if (qword_280A32C88 != -1)
  {
    swift_once();
  }

  return static DaemonMLConstants.kDefaultOffsetTimeInterval;
}

uint64_t DaemonStateManager.__allocating_init(usingFile:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_275B1BA6C()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140F968);
  __swift_project_value_buffer(v0, qword_28140F968);
  type metadata accessor for DaemonStateManager();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33368, qword_275B7CCE0);
  return sub_275B7A97C();
}

void *sub_275B1BAE8()
{
  sub_275B7A8FC();
  swift_allocObject();
  result = sub_275B7A90C();
  off_28140F990 = result;
  return result;
}

uint64_t DaemonStateManager.init(usingFile:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t DaemonStateManager.getState()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_275B79ABC();
  v4 = (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  if (qword_28140F988 != -1)
  {
    v4 = swift_once();
  }

  v6 = MEMORY[0x28223BE20](v4, v5);
  result = (*(*v7 + 136))(0x6574617453746567, 0xE800000000000000, sub_275B094A8, v6);
  if (v1)
  {
    return sub_275B094C4(a1);
  }

  return result;
}

uint64_t sub_275B1BC88(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A330F8, &qword_275B7C9A0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v8 - v5;
  result = sub_275B1D720(&v8 - v5);
  if (!v1)
  {
    return sub_275B1E218(v6, a1);
  }

  return result;
}

uint64_t DaemonStateManager.update(notificationState:)(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  if (qword_28140F988 != -1)
  {
    a1 = swift_once();
  }

  v3 = MEMORY[0x28223BE20](a1, a2);
  v7 = v2;
  v8 = sub_275B1D150;
  v9 = &v10;
  return (*(*v4 + 136))(0xD000000000000021, v5 | 0x8000000000000000, sub_275B09408, v3);
}

uint64_t sub_275B1BE24(uint64_t a1, uint64_t a2)
{
  v3 = sub_275B7A06C();
  MEMORY[0x28223BE20](v3 - 8, v4);
  sub_275B1E1B4(a2, &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_275B798DC();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DaemonStateManager.deleteNotificationState()()
{
  if (qword_28140F988 != -1)
  {
    v0 = swift_once();
  }

  v2 = MEMORY[0x28223BE20](v0, v1);
  (*(*v3 + 136))(0xD000000000000021, v4 | 0x8000000000000000, sub_275B1E288, v2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DaemonStateManager.deleteAllState()()
{
  if (qword_28140F988 != -1)
  {
    v0 = swift_once();
  }

  v2 = off_28140F990;
  v3 = MEMORY[0x28223BE20](v0, v1);
  (*(*v2 + 136))(0x6C416574656C6564, 0xEE0065746174536CLL, sub_275B1D32C, v3);
}

uint64_t sub_275B1C0CC(uint64_t a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = sub_275B794EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static DaemonStateManager.toUrl(_:)(*(a1 + 16), *(a1 + 24), v7);
  if (!v1)
  {
    v9 = objc_opt_self();
    v10 = [v9 defaultManager];
    sub_275B794CC();
    v11 = sub_275B7ACDC();

    v12 = [v10 fileExistsAtPath_];

    if (v12)
    {
      v13 = [v9 defaultManager];
      sub_275B794CC();
      v14 = sub_275B7ACDC();

      v19[0] = 0;
      v15 = [v13 removeItemAtPath:v14 error:v19];

      if (v15)
      {
        v16 = *(v4 + 8);
        v17 = v19[0];
        return v16(v7, v3);
      }

      else
      {
        v18 = v19[0];
        sub_275B7944C();

        swift_willThrow();
        return (*(v4 + 8))(v7, v3);
      }
    }

    else
    {
      return (*(v4 + 8))(v7, v3);
    }
  }

  return result;
}

uint64_t static DaemonStateManager.toUrl(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32[3] = a1;
  v32[4] = a2;
  v32[2] = a3;
  v35 = *MEMORY[0x277D85DE8];
  v4 = sub_275B794EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v32 - v11;
  v13 = objc_opt_self();
  v14 = [v13 defaultManager];
  v15 = [v14 URLsForDirectory:14 inDomains:1];

  v16 = sub_275B7AE7C();
  if (!*(v16 + 16))
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v32[1] = v3;
  (*(v5 + 16))(v12, v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

  sub_275B79D0C();

  sub_275B794AC();

  v17 = [v13 defaultManager];
  sub_275B794CC();
  v18 = sub_275B7ACDC();

  v19 = [v17 fileExistsAtPath_];

  if (v19)
  {
LABEL_6:
    sub_275B7949C();
    v28 = *(v5 + 8);
    v28(v8, v4);
    return (v28)(v12, v4);
  }

  if (qword_28140F960 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v20 = sub_275B7A96C();
  __swift_project_value_buffer(v20, qword_28140F968);
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_275B7B09C();

  v33 = 0x726F746365726944;
  v34 = 0xEB000000005B2079;
  v21 = sub_275B794CC();
  MEMORY[0x277C89240](v21);

  MEMORY[0x277C89240](0xD000000000000020, 0x8000000275B81070);
  sub_275B7A91C();

  v22 = [v13 defaultManager];
  v23 = sub_275B7948C();
  v33 = 0;
  v24 = [v22 createDirectoryAtURL:v23 withIntermediateDirectories:1 attributes:0 error:&v33];

  v25 = v33;
  if (v24)
  {
    v33 = 0;
    v34 = 0xE000000000000000;
    v26 = v25;
    sub_275B7B09C();

    v33 = 0xD000000000000019;
    v34 = 0x8000000275B810A0;
    v27 = sub_275B794CC();
    MEMORY[0x277C89240](v27);

    MEMORY[0x277C89240](11869, 0xE200000000000000);
    sub_275B7A91C();

    goto LABEL_6;
  }

  v30 = v33;
  sub_275B7944C();

  swift_willThrow();
  v31 = *(v5 + 8);
  v31(v8, v4);
  return (v31)(v12, v4);
}

uint64_t sub_275B1C930(uint64_t a1, uint64_t a2)
{
  if (qword_28140F988 != -1)
  {
    v6 = a2;
    a1 = swift_once();
    a2 = v6;
  }

  v2 = MEMORY[0x28223BE20](a1, a2);
  return (*(*v3 + 136))(0xD000000000000021, v4 | 0x8000000000000000, v2);
}

uint64_t DaemonStateManager.readOrDeleteNotificationStateIfAccountChanged(currentAccount:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v52 = a1;
  v53 = a2;
  v56 = a3;
  v6 = sub_275B7A06C();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v50 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A330F8, &qword_275B7C9A0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v57 = &v49 - v15;
  v16 = sub_275B79ABC();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v51 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = (*(v17 + 56))(v12, 1, 1, v16, v19);
  if (qword_28140F988 != -1)
  {
    v21 = swift_once();
  }

  v23 = off_28140F990;
  v24 = MEMORY[0x28223BE20](v21, v22);
  *(&v49 - 2) = v12;
  *(&v49 - 1) = v5;
  v25 = *(*v23 + 136);
  v25(0x6574617453746567, 0xE800000000000000, sub_275B1E2A0, v24);
  if (v4)
  {
    return sub_275B094C4(v12);
  }

  v27 = v57;
  sub_275B0952C(v12, v57);
  if ((*(v17 + 48))(v27, 1, v16) != 1)
  {
    v28 = v51;
    sub_275B0959C(v27, v51);
    if (!v53)
    {
      goto LABEL_14;
    }

    v29 = HIBYTE(v53) & 0xF;
    if ((v53 & 0x2000000000000000) == 0)
    {
      v29 = v52 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      v30 = v50;
      sub_275B798CC();
      v31 = sub_275B79F7C();
      v33 = v32;
      sub_275B1D438(v30, MEMORY[0x277D7F690]);
      if (v31 == v52 && v33 == v53)
      {

LABEL_21:
        v43 = v56;
        sub_275B798CC();
        sub_275B1D438(v28, MEMORY[0x277D7F5A8]);
        v40 = v43;
        v39 = 0;
        return (*(v54 + 56))(v40, v39, 1, v55);
      }

      v41 = v25;
      v42 = sub_275B7B1BC();

      if (v42)
      {
        goto LABEL_21;
      }

      if (qword_28140F960 != -1)
      {
        swift_once();
      }

      v44 = sub_275B7A96C();
      __swift_project_value_buffer(v44, qword_28140F968);
      v45 = sub_275B7A91C();
      v47 = MEMORY[0x28223BE20](v45, v46);
      *(&v49 - 4) = v5;
      *(&v49 - 3) = sub_275B1BF98;
      *(&v49 - 2) = 0;
      v41(0xD000000000000021, v48 | 0x8000000000000000, sub_275B1E288, v47);
    }

    else
    {
LABEL_14:
      if (qword_28140F960 != -1)
      {
        swift_once();
      }

      v34 = sub_275B7A96C();
      __swift_project_value_buffer(v34, qword_28140F968);
      v35 = sub_275B7A91C();
      v37 = MEMORY[0x28223BE20](v35, v36);
      *(&v49 - 4) = v5;
      *(&v49 - 3) = sub_275B1BF98;
      *(&v49 - 2) = 0;
      v25(0xD000000000000021, v38 | 0x8000000000000000, sub_275B1E288, v37);
    }

    sub_275B1D438(v28, MEMORY[0x277D7F5A8]);
    goto LABEL_18;
  }

  sub_275B094C4(v27);
LABEL_18:
  v39 = 1;
  v40 = v56;
  return (*(v54 + 56))(v40, v39, 1, v55);
}

uint64_t DaemonStateManager.updateWithLock(_:)(uint64_t a1, uint64_t a2)
{
  if (qword_28140F988 != -1)
  {
    v9 = a1;
    v10 = a2;
    swift_once();
    a1 = v9;
    a2 = v10;
  }

  v3 = MEMORY[0x28223BE20](a1, a2);
  v11 = v2;
  v12 = v4;
  v13 = v5;
  return (*(*v6 + 136))(0xD000000000000021, v7 | 0x8000000000000000, sub_275B1E288, v3);
}

uint64_t sub_275B1D158(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A330F8, &qword_275B7C9A0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v15 - v6;
  v8 = sub_275B79ABC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_275B1D720(v7);
  if (!v2)
  {
    v14 = *(v9 + 48);
    if (v14(v7, 1, v8) == 1)
    {
      sub_275B79AAC();
      if (v14(v7, 1, v8) != 1)
      {
        sub_275B094C4(v7);
      }
    }

    else
    {
      sub_275B0959C(v7, v12);
    }

    a2(v12);
    sub_275B1D5AC();
    return sub_275B1D438(v12, MEMORY[0x277D7F5A8]);
  }

  return result;
}

uint64_t sub_275B1D438(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DaemonStateManager.writeWithLock(_:)(uint64_t a1, uint64_t a2)
{
  if (qword_28140F988 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v3 = MEMORY[0x28223BE20](a1, a2);
  v9 = v2;
  v10 = v4;
  return (*(*v5 + 136))(0xD000000000000020, v6 | 0x8000000000000000, sub_275B1D584, v3);
}

uint64_t sub_275B1D5AC()
{
  v2 = v0;
  v3 = sub_275B794EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275B79ABC();
  sub_275B1E108();
  result = sub_275B7967C();
  if (!v1)
  {
    v10 = result;
    v11 = v9;
    static DaemonStateManager.toUrl(_:)(*(v2 + 16), *(v2 + 24), v7);
    sub_275B7952C();
    (*(v4 + 8))(v7, v3);
    return sub_275B1E160(v10, v11);
  }

  return result;
}

uint64_t sub_275B1D720@<X0>(unint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v3 = sub_275B7964C();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_275B79ABC();
  v77 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v69 - v13;
  v15 = sub_275B794EC();
  v79 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v69 - v21;
  v24 = *(v2 + 16);
  v23 = *(v2 + 24);
  v25 = v80;
  result = static DaemonStateManager.toUrl(_:)(v24, v23, &v69 - v21);
  if (!v25)
  {
    v72 = v10;
    v73 = v6;
    v70 = v23;
    v71 = v18;
    v74 = v14;
    v75 = v7;
    v76 = v15;
    v80 = 0;
    v27 = [objc_opt_self() defaultManager];
    sub_275B794CC();
    v28 = sub_275B7ACDC();

    v29 = [v27 fileExistsAtPath_];

    v30 = v22;
    if ((v29 & 1) == 0)
    {
      v34 = v75;
      if (qword_28140F960 != -1)
      {
        swift_once();
      }

      v35 = sub_275B7A96C();
      __swift_project_value_buffer(v35, qword_28140F968);
      *&v81 = 0;
      *(&v81 + 1) = 0xE000000000000000;
      sub_275B7B09C();

      *&v81 = 0x6966206574617453;
      *(&v81 + 1) = 0xEB0000000020656CLL;
      v36 = sub_275B794CC();
      MEMORY[0x277C89240](v36);

      MEMORY[0x277C89240](0xD000000000000010, 0x8000000275B811E0);
      sub_275B7A91C();

      (*(v79 + 8))(v22, v76);
      v37 = 1;
      v38 = v78;
      return (*(v77 + 56))(v38, v37, 1, v34);
    }

    v31 = v80;
    v32 = sub_275B794FC();
    if (v31)
    {
      return (*(v79 + 8))(v22, v76);
    }

    v39 = v32;
    v40 = v33;
    v80 = 0;
    if (qword_28140F960 != -1)
    {
      swift_once();
    }

    v41 = sub_275B7A96C();
    v69 = __swift_project_value_buffer(v41, qword_28140F968);
    *&v81 = 0;
    *(&v81 + 1) = 0xE000000000000000;
    sub_275B7B09C();

    *&v81 = 0x2064616552;
    *(&v81 + 1) = 0xE500000000000000;
    v42 = v40 >> 62;
    v43 = v74;
    if ((v40 >> 62) > 1)
    {
      v44 = 0;
      if (v42 != 2)
      {
        goto LABEL_20;
      }

      v46 = *(v39 + 16);
      v45 = *(v39 + 24);
      v47 = __OFSUB__(v45, v46);
      v44 = v45 - v46;
      if (!v47)
      {
        goto LABEL_20;
      }

      __break(1u);
    }

    else if (!v42)
    {
      v44 = BYTE6(v40);
      goto LABEL_20;
    }

    LODWORD(v44) = HIDWORD(v39) - v39;
    if (__OFSUB__(HIDWORD(v39), v39))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      return result;
    }

    v44 = v44;
LABEL_20:
    v84 = v44;
    v48 = sub_275B7B19C();
    MEMORY[0x277C89240](v48);

    MEMORY[0x277C89240](0x6620736574796220, 0xED00005B206D6F72);
    v49 = sub_275B794CC();
    MEMORY[0x277C89240](v49);

    MEMORY[0x277C89240](11869, 0xE200000000000000);
    sub_275B7A91C();

    sub_275B79AAC();
    v83 = 0;
    v81 = 0u;
    v82 = 0u;
    sub_275B1E0B4(v39, v40);
    sub_275B7963C();
    v50 = sub_275B1E108();
    v51 = v72;
    v34 = v75;
    v73 = v50;
    v52 = v80;
    sub_275B7966C();
    v80 = v52;
    if (!v52)
    {
      sub_275B1E160(v39, v40);
      sub_275B1D438(v43, MEMORY[0x277D7F5A8]);
      (*(v79 + 8))(v22, v76);
      sub_275B0959C(v51, v43);
      v55 = v78;
LABEL_25:
      sub_275B0959C(v43, v55);
      v38 = v55;
      v37 = 0;
      return (*(v77 + 56))(v38, v37, 1, v34);
    }

    v72 = v24;
    v53 = v39;
    *&v81 = 0;
    *(&v81 + 1) = 0xE000000000000000;
    sub_275B7B09C();

    *&v81 = 0xD000000000000014;
    *(&v81 + 1) = 0x8000000275B81200;
    if (v42 > 1)
    {
      v54 = 0;
      v55 = v78;
      if (v42 != 2)
      {
        goto LABEL_33;
      }

      v57 = *(v39 + 16);
      v56 = *(v39 + 24);
      v47 = __OFSUB__(v56, v57);
      v54 = v56 - v57;
      if (!v47)
      {
        goto LABEL_33;
      }

      __break(1u);
    }

    else if (!v42)
    {
      v54 = BYTE6(v40);
LABEL_32:
      v55 = v78;
LABEL_33:
      v78 = v40;
      v84 = v54;
      v58 = sub_275B7B19C();
      MEMORY[0x277C89240](v58);

      MEMORY[0x277C89240](93, 0xE100000000000000);
      v59 = v81;
      *&v81 = 0xD000000000000036;
      *(&v81 + 1) = 0x8000000275B81220;
      MEMORY[0x277C89240](v59, *(&v59 + 1));

      v60 = *(&v81 + 1);
      v61 = v81;
      *&v81 = 0;
      *(&v81 + 1) = 0xE000000000000000;
      MEMORY[0x277C89240](0x5B3D726F72726520, 0xE800000000000000);
      v84 = v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AC0, &unk_275B7C2A0);
      sub_275B7B0EC();
      MEMORY[0x277C89240](93, 0xE100000000000000);
      v62 = v81;
      v81 = __PAIR128__(v60, v61);

      MEMORY[0x277C89240](v62, *(&v62 + 1));

      sub_275B7A95C();

      v63 = sub_275B7967C();
      v65 = v64;
      static DaemonStateManager.toUrl(_:)(v72, v70, v71);
      sub_275B7952C();
      v66 = v79;
      v67 = v76;
      sub_275B1E160(v63, v65);

      sub_275B1E160(v53, v78);
      v68 = *(v66 + 8);
      v68(v71, v67);
      v68(v30, v67);
      v80 = 0;
      v34 = v75;
      goto LABEL_25;
    }

    LODWORD(v54) = HIDWORD(v39) - v39;
    if (!__OFSUB__(HIDWORD(v39), v39))
    {
      v54 = v54;
      goto LABEL_32;
    }

    goto LABEL_36;
  }

  return result;
}

uint64_t DaemonStateManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_275B1E0B4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_275B1E108()
{
  result = qword_28140FBC8;
  if (!qword_28140FBC8)
  {
    sub_275B79ABC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28140FBC8);
  }

  return result;
}

uint64_t sub_275B1E160(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_275B1E1B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_275B7A06C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275B1E218(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A330F8, &qword_275B7C9A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_275B1E2B8()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140E248);
  __swift_project_value_buffer(v0, qword_28140E248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33370, &unk_275B7CD90);
  return sub_275B7A97C();
}

uint64_t sub_275B1E338()
{
  result = sub_275B7AB2C();
  qword_28140E270 = result;
  return result;
}

unint64_t DataCollectionScheduler.debugDescription.getter()
{
  sub_275B7B09C();

  v1 = v0[4];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 1, v1);
  v3 = (*(v2 + 8))(v1, v2);
  MEMORY[0x277C89240](v3);

  return 0xD000000000000021;
}

Swift::Bool __swiftcall DataCollectionScheduler.isDataCollectionNeeded()()
{
  v1 = sub_275B79ABC();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275B1E4C0(v4);
  v5 = _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  v6 = _s33iCloudSubscriptionOptimizerDaemon23DataCollectionSchedulerV02iseF6Needed8pipeline5state3nowSbAA0eF8Pipeline_p_01iabC4Core0D5StateVAI9TimestampVtFZ_0((v0 + 8), v4, v5);
  sub_275B09600(v4);
  return v6 & 1;
}

uint64_t sub_275B1E4C0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A330F8, &qword_275B7C9A0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v23 - v8;
  v10 = sub_275B79CFC();
  v12 = *v10;
  v11 = v10[1];
  type metadata accessor for DaemonStateManager();
  inited = swift_initStackObject();
  *(inited + 16) = v12;
  *(inited + 24) = v11;
  v14 = sub_275B79ABC();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v5, 1, 1, v14);
  v16 = qword_28140F988;

  if (v16 != -1)
  {
    v17 = swift_once();
  }

  v19 = off_28140F990;
  v20 = MEMORY[0x28223BE20](v17, v18);
  *(&v23 - 2) = v5;
  *(&v23 - 1) = inited;
  (*(*v19 + 136))(0x6574617453746567, 0xE800000000000000, sub_275B094A8, v20);
  swift_setDeallocating();

  sub_275B0952C(v5, v9);
  v21 = *(v15 + 48);
  if (v21(v9, 1, v14) != 1)
  {
    return sub_275B0959C(v9, a1);
  }

  sub_275B79AAC();
  result = (v21)(v9, 1, v14);
  if (result != 1)
  {
    return sub_275B094C4(v9);
  }

  return result;
}

uint64_t DataCollectionScheduler.runDataCollection(_:_:_:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v8);

  return sub_275B1EE44(v10, a2, a3, a4, v4, v8, v9);
}

uint64_t sub_275B1E92C(uint64_t a1)
{
  v2 = v1;
  v3 = _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  if (qword_28140F988 != -1)
  {
    v3 = swift_once();
  }

  v5 = off_28140F990;
  v6 = MEMORY[0x28223BE20](v3, v4);
  (*(*v5 + 136))(0xD000000000000021, v7 | 0x8000000000000000, sub_275B09408, v6);
  if (qword_28140E240 != -1)
  {
    swift_once();
  }

  v8 = sub_275B7A96C();
  __swift_project_value_buffer(v8, qword_28140E248);
  sub_275B7B09C();

  v9 = v2[4];
  v10 = v2[5];
  __swift_project_boxed_opaque_existential_1(v2 + 1, v9);
  v11 = (*(v10 + 8))(v9, v10);
  MEMORY[0x277C89240](v11);

  MEMORY[0x277C89240](0x7572207473616C20, 0xEA0000000000206ELL);
  sub_275B7B09C();
  MEMORY[0x277C89240](0x2064657461647075, 0xEC0000005B206F74);
  sub_275B7B0EC();
  MEMORY[0x277C89240](11869, 0xE200000000000000);

  MEMORY[0x277C89240](0, 0xE000000000000000);

  sub_275B7A91C();
}

uint64_t sub_275B1ED70(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_275B79ABC();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[4];
  v11 = a2[5];
  __swift_project_boxed_opaque_existential_1(a2 + 1, v10);
  sub_275B0959C(a1, v9);
  (*(v11 + 32))(a3, v9, v10, v11);
  return sub_275B09600(v9);
}

uint64_t sub_275B1EE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v18[3] = a6;
  v18[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_1, a1, a6);
  v14 = a5[4];
  v15 = a5[5];
  __swift_project_boxed_opaque_existential_1(a5 + 1, v14);
  v16 = (*(v15 + 40))(v18, a2, a3, a4, v14, v15);
  sub_275B1E92C(v16);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon23DataCollectionSchedulerV10isSeedOrGMSbyFZ_0()
{
  v0 = [objc_opt_self() isInternalBuild];
  if (qword_28140E240 != -1)
  {
    swift_once();
  }

  v1 = sub_275B7A96C();
  __swift_project_value_buffer(v1, qword_28140E248);
  sub_275B7B09C();

  if (v0)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v0)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x277C89240](v2, v3);

  MEMORY[0x277C89240](93, 0xE100000000000000);
  sub_275B7A91C();

  return v0 ^ 1;
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon23DataCollectionSchedulerV02iseF6Needed8pipeline5state3nowSbAA0eF8Pipeline_p_01iabC4Core0D5StateVAI9TimestampVtFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_28140E240 != -1)
  {
    swift_once();
  }

  v4 = sub_275B7A96C();
  __swift_project_value_buffer(v4, qword_28140E248);
  sub_275B7B09C();
  MEMORY[0x277C89240](0x656E696C65706950, 0xEA00000000005B20);
  v6 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v7 = *(v5 + 8);
  v8 = v7(v6, v5);
  MEMORY[0x277C89240](v8);

  MEMORY[0x277C89240]();
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 16))(v9, v10);
  v12 = (v11 & 1) == 0;
  if (v11)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v12)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  MEMORY[0x277C89240](v13, v14);

  MEMORY[0x277C89240](93, 0xE100000000000000);

  MEMORY[0x277C89240](91, 0xE100000000000000);

  sub_275B7A91C();

  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  if ((*(v16 + 16))(v15, v16))
  {
    sub_275B7B09C();
    MEMORY[0x277C89240](0x6570697020656854, 0xEE005B20656E696CLL);
    v35 = v6;
    v17 = v7(v6, v5);
    MEMORY[0x277C89240](v17);

    MEMORY[0x277C89240](0xD000000000000026, 0x8000000275B813C0);

    MEMORY[0x277C89240](0xD00000000000002ALL, 0x8000000275B813F0);

    sub_275B7A91C();

    v18 = _s33iCloudSubscriptionOptimizerDaemon23DataCollectionSchedulerV10isSeedOrGMSbyFZ_0();
    v19 = _s33iCloudSubscriptionOptimizerDaemon14SystemSettingsV010isSharingiA14DiagnosticDataSbyFZ_0();
    sub_275B7B09C();

    if (v18)
    {
      v20 = 1702195828;
    }

    else
    {
      v20 = 0x65736C6166;
    }

    if (v18)
    {
      v21 = 0xE400000000000000;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    MEMORY[0x277C89240](v20, v21);

    MEMORY[0x277C89240](2112349, 0xE300000000000000);
    sub_275B7B09C();

    if (v19)
    {
      v22 = 1702195828;
    }

    else
    {
      v22 = 0x65736C6166;
    }

    if (v19)
    {
      v23 = 0xE400000000000000;
    }

    else
    {
      v23 = 0xE500000000000000;
    }

    MEMORY[0x277C89240](v22, v23);

    MEMORY[0x277C89240](11869, 0xE200000000000000);

    MEMORY[0x277C89240](0xD000000000000027, 0x8000000275B81450);

    sub_275B7A91C();

    if ((v18 & 1) != 0 && (v19 & 1) == 0)
    {
      sub_275B7B09C();

      v24 = v7(v35, v5);
      MEMORY[0x277C89240](v24);

      MEMORY[0x277C89240](93, 0xE100000000000000);
      MEMORY[0x277C89240](0x7069702070696B73, 0xEF5B20656E696C65);
LABEL_32:

      sub_275B7A91C();

      return 0;
    }

    sub_275B7B09C();

    v6 = v35;
    v25 = v7(v35, v5);
    MEMORY[0x277C89240](v25);

    MEMORY[0x277C89240](0x75527473616C205DLL, 0xEE00656D6974206ELL);
    MEMORY[0x277C89240](0xD000000000000019, 0x8000000275B814D0);

    sub_275B7A91C();
  }

  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  (*(v27 + 24))(a2, v26, v27);
  if (v28)
  {
    sub_275B7B09C();

    v29 = v7(v6, v5);
    MEMORY[0x277C89240](v29);

    MEMORY[0x277C89240](0x76656E2073616820, 0xEB00000000207265);

    MEMORY[0x277C89240](0xD000000000000019, 0x8000000275B81350);
  }

  else
  {
    sub_275B7ABCC();
    sub_275B7B09C();

    v30 = v7(v6, v5);
    MEMORY[0x277C89240](v30);

    MEMORY[0x277C89240](0xD000000000000014, 0x8000000275B81370);
    MEMORY[0x277C89240](91, 0xE100000000000000);
    v31 = sub_275B7AB7C();
    MEMORY[0x277C89240](v31);

    MEMORY[0x277C89240](0x61746C6564202E5DLL, 0xE90000000000003DLL);
    sub_275B7B0EC();

    MEMORY[0x277C89240](0, 0xE000000000000000);

    sub_275B7A91C();

    if (qword_28140E268 != -1)
    {
      swift_once();
    }

    if (sub_275B7AADC())
    {
      sub_275B7B09C();

      v32 = v7(v6, v5);
      MEMORY[0x277C89240](v32);

      MEMORY[0x277C89240](0xD000000000000022, 0x8000000275B81390);
      sub_275B7B0EC();
      MEMORY[0x277C89240](0x6C6E6F2074756220, 0xEA00000000002079);

      MEMORY[0x277C89240](0, 0xE000000000000000);

      sub_275B7B0EC();
      MEMORY[0x277C89240](0x616C652073616820, 0xED00002E64657370);

      MEMORY[0x277C89240](0, 0xE000000000000000);

      goto LABEL_32;
    }

    sub_275B7B09C();

    v34 = v7(v6, v5);
    MEMORY[0x277C89240](v34);

    MEMORY[0x277C89240](0x742074756F626120, 0xEF202E6E7572206FLL);
    sub_275B7B09C();
    MEMORY[0x277C89240](0x6E7572207473614CLL, 0xED00002073617720);
    sub_275B7B0EC();
    MEMORY[0x277C89240](0x2E6F676120, 0xE500000000000000);

    MEMORY[0x277C89240](0, 0xE000000000000000);
  }

  sub_275B7A91C();

  return 1;
}

uint64_t sub_275B1FC4C()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140EA08);
  __swift_project_value_buffer(v0, qword_28140EA08);
  type metadata accessor for DataCollectorUtils();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33378, &qword_275B7CDB8);
  return sub_275B7A97C();
}

uint64_t static DataCollectorUtils.shuffleAndSelect(labeledNotifications:maximum:)(uint64_t a1, unint64_t a2)
{
  v12 = a1;

  v4 = &v12;
  sub_275B2005C();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_15:
    swift_unknownObjectRelease();
    sub_275B1FF6C(v2, v2 + 32, 0, v4);
    v9 = v11;
    goto LABEL_12;
  }

  v2 = v12;
  v5 = *(v12 + 16);
  if (v5 >= a2)
  {
    v5 = a2;
  }

  v6 = 2 * v5;
  if (a2)
  {
    v4 = v6 + 1;
  }

  else
  {
    v4 = 1;
  }

  sub_275B7B1DC();
  swift_unknownObjectRetain_n();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v7 + 16);

  if (v8 != v4 >> 1)
  {
    goto LABEL_15;
  }

  v9 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v9)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_12:
    swift_unknownObjectRelease();
  }

  return v9;
}

uint64_t sub_275B1FDF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v9);

  return a5(v11, a2, a3, a4, v5, v9, v10);
}

void sub_275B1FE94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33140, &qword_275B7C430);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_275B1FF6C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A331E8, &unk_275B7CDC0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 56);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_275B2005C()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v27 = v2 - 2;
  if (v2 >= 2)
  {
    v3 = 0;
    while (1)
    {
      v28 = 0;
      MEMORY[0x277C89DC0](&v28, 8);
      v5 = (v28 * v2) >> 64;
      if (v2 > v28 * v2)
      {
        v6 = -v2 % v2;
        if (v6 > v28 * v2)
        {
          do
          {
            v28 = 0;
            MEMORY[0x277C89DC0](&v28, 8);
          }

          while (v6 > v28 * v2);
          v5 = (v28 * v2) >> 64;
        }
      }

      v7 = v3 + v5;
      if (__OFADD__(v3, v5))
      {
        break;
      }

      if (v3 != v7)
      {
        v8 = *(v1 + 2);
        if (v3 >= v8)
        {
          goto LABEL_19;
        }

        if (v7 >= v8)
        {
          goto LABEL_20;
        }

        v9 = &v1[56 * v3 + 32];
        v20 = *v9;
        v10 = *(v9 + 16);
        v11 = *(v9 + 32);
        v12 = *(v9 + 40);
        v13 = *(v9 + 48);
        v14 = &v1[56 * v7 + 32];
        v25 = *v14;
        v26 = *(v9 + 24);
        v24 = *(v14 + 8);
        v15 = *(v14 + 16);
        v23 = *(v14 + 24);
        v16 = *(v14 + 32);
        v22 = *(v14 + 40);
        v21 = *(v14 + 48);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_275B5A2D0(v1);
        }

        if (v3 >= *(v1 + 2))
        {
          goto LABEL_21;
        }

        v17 = &v1[56 * v3 + 32];
        *v17 = v25;
        *(v17 + 8) = v24;
        *(v17 + 16) = v15;
        *(v17 + 24) = v23;
        *(v17 + 32) = v16;
        *(v17 + 40) = v22;
        *(v17 + 48) = v21;

        if (v7 >= *(v1 + 2))
        {
          goto LABEL_22;
        }

        v18 = &v1[56 * v7 + 32];
        *v18 = v20;
        *(v18 + 16) = v10;
        *(v18 + 24) = v26;
        *(v18 + 32) = v11;
        *(v18 + 40) = v12;
        *(v18 + 48) = v13;

        *v19 = v1;
      }

      --v2;
      if (v3++ == v27)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

uint64_t sub_275B202AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = MEMORY[0x28223BE20](a1, a1);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v12;
  (*(v12 + 16))(v11, v9);
  _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  sub_275B7AB2C();
  v13 = sub_275B7ABCC();
  sub_275B7AB2C();
  v14 = sub_275B7ABCC();
  v15 = *(a7 + 64);
  v50 = v14;
  v51 = v13;
  v57 = v11;
  v58 = a6;
  v16 = v15(v14, v13, a6, a7);
  v17 = *(v16 + 16);
  v49 = v16;
  if (v17)
  {
    v18 = v16;
    v19 = sub_275B7AB2C();
    v53 = *(a7 + 72);
    v54 = a7 + 72;
    v55 = v19;
    v20 = (v18 + 64);
    v21 = MEMORY[0x277D84F90];
    v56 = a7;
    do
    {
      v22 = *(v20 - 2);
      v23 = *(v20 - 1);
      v24 = *v20;
      v64 = *(v20 - 2);
      v65 = v22;
      v66 = v23;
      v67 = v24;

      v60 = v53(&v64, v55, v58, a7);
      v59 = v25;
      v26 = v64;
      v27 = v65;
      v28 = v66;
      v29 = v67;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_275B11A1C(0, *(v21 + 2) + 1, 1, v21);
      }

      v31 = *(v21 + 2);
      v30 = *(v21 + 3);
      if (v31 >= v30 >> 1)
      {
        v21 = sub_275B11A1C((v30 > 1), v31 + 1, 1, v21);
      }

      *(v21 + 2) = v31 + 1;
      v32 = &v21[56 * v31];
      *(v32 + 2) = v26;
      *(v32 + 6) = v27;
      *(v32 + 7) = v28;
      *(v32 + 8) = v29;
      v32[72] = v60;
      *(v32 + 10) = v59;
      v20 += 5;
      --v17;
      a7 = v56;
    }

    while (v17);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v33 = _s33iCloudSubscriptionOptimizerDaemon18DataCollectorUtilsC17sampleWithSpacing20labeledNotifications7maximum13spacingInDaysSayAA19LabeledNotificationVGAJ_s5Int64VALtFZ_0(v21, 3, 3);

  v62 = v33;

  sub_275B2005C();
  v34 = v62;
  if (*(v62 + 16) >= 4uLL)
  {
    sub_275B1FF6C(v62, v62 + 32, 0, 7uLL);
    v36 = v35;

    v34 = v36;
  }

  v37 = v49;
  v38 = v50;

  if (qword_28140EA00 != -1)
  {
    swift_once();
  }

  v39 = sub_275B7A96C();
  __swift_project_value_buffer(v39, qword_28140EA08);
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_275B7B09C();
  MEMORY[0x277C89240](0x20646E756F46, 0xE600000000000000);
  v40 = *(v37 + 16);

  v61 = v40;
  v41 = sub_275B7B19C();
  MEMORY[0x277C89240](v41);

  MEMORY[0x277C89240](0xD00000000000001ELL, 0x8000000275B815A0);
  v61 = v38;
  sub_275B7B0EC();
  MEMORY[0x277C89240](0x20646E6120, 0xE500000000000000);
  v61 = v51;
  sub_275B7B0EC();
  MEMORY[0x277C89240](8238, 0xE200000000000000);
  v43 = v62;
  v42 = v63;
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_275B7B09C();

  v62 = 0xD000000000000012;
  v63 = 0x8000000275B815C0;
  v61 = *(v34 + 16);
  v44 = sub_275B7B19C();
  MEMORY[0x277C89240](v44);

  MEMORY[0x277C89240](0xD000000000000011, 0x8000000275B815E0);
  v45 = v62;
  v46 = v63;
  v62 = v43;
  v63 = v42;

  MEMORY[0x277C89240](v45, v46);

  sub_275B7A91C();

  (*(v52 + 8))(v57, v58);
  return v34;
}

char *sub_275B207F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = MEMORY[0x28223BE20](a1, a1);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v12;
  (*(v12 + 16))(v11, v9);
  _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  sub_275B7AB2C();
  v13 = sub_275B7ABCC();
  sub_275B7AB2C();
  v14 = sub_275B7ABCC();
  v15 = *(a7 + 152);
  v42 = v11;
  v43 = a6;
  v16 = v15(v14, v13, a6, a7);
  v17 = *(v16 + 16);
  v35[1] = v16;
  if (v17)
  {
    v18 = v16;
    v44 = sub_275B7AB2C();
    v19 = 0;
    v37 = *(a7 + 160);
    v38 = a7 + 160;
    v39 = v17 - 1;
    v20 = v18 + 56;
    v21 = MEMORY[0x277D84F90];
    v40 = v17;
    v41 = a7;
    do
    {
      v22 = *(v20 - 24);
      v23 = *(v20 - 16);
      if (v19 < v39)
      {
        sub_275B7ABCC();
        sub_275B7AADC();
      }

      v24 = v22;
      v25 = v37();
      v27 = v26;
      v29 = v28;
      v45 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_275B11B44(0, *(v21 + 2) + 1, 1, v21);
      }

      v32 = *(v21 + 2);
      v31 = *(v21 + 3);
      if (v32 >= v31 >> 1)
      {
        v21 = sub_275B11B44((v31 > 1), v32 + 1, 1, v21);
      }

      ++v19;
      *(v21 + 2) = v32 + 1;
      v33 = &v21[48 * v32];
      *(v33 + 4) = v24;
      *(v33 + 5) = v23;
      v33[48] = v25 & 1;
      *(v33 + 7) = v27;
      v33[64] = v29 & 1;
      *(v33 + 9) = v45;
      v20 += 16;
    }

    while (v40 != v19);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  (*(v36 + 8))(v42, v43);
  return v21;
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon18DataCollectorUtilsC18newFeatureProvideryAA0iJ0CAA12BiomeManager_p_01iabC4Core9TimestampVs5Int64VtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_280A32C88 != -1)
  {
    swift_once();
  }

  v5 = static DaemonMLConstants.kDefaultOffsetTimeInterval;
  result = sub_275B7AB1C();
  v7 = a3 * result;
  if ((a3 * result) >> 64 == (a3 * result) >> 63)
  {
    v8 = sub_275B7AC4C();
    sub_275B19CD4(a1, v22);
    v9 = sub_275B7AB6C();
    type metadata accessor for FeatureProvider();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D84F90];
    *(v10 + 88) = MEMORY[0x277D84F90];
    v21 = v11;
    sub_275B0E5B0(0, 55, 0);
    v12 = 0;
    do
    {
      v13 = FeatureName.rawValue.getter(*(&unk_2884A7FB0 + v12 + 32));
      v16 = *(v21 + 16);
      v15 = *(v21 + 24);
      if (v16 >= v15 >> 1)
      {
        v19 = v14;
        v20 = v13;
        sub_275B0E5B0((v15 > 1), v16 + 1, 1);
        v14 = v19;
        v13 = v20;
      }

      ++v12;
      *(v21 + 16) = v16 + 1;
      v17 = v21 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
    }

    while (v12 != 55);
    v18 = sub_275B31714(v21);

    *(v10 + 104) = v18;
    *(v10 + 112) = 0u;
    *(v10 + 128) = 0u;
    *(v10 + 144) = 0;
    sub_275B075DC(v22, v10 + 16);
    *(v10 + 56) = v8;
    *(v10 + 80) = v7;
    *(v10 + 64) = sub_275B7AC0C();
    *(v10 + 72) = v5;
    *(v10 + 96) = v9;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *_s33iCloudSubscriptionOptimizerDaemon18DataCollectorUtilsC17sampleWithSpacing20labeledNotifications7maximum13spacingInDaysSayAA19LabeledNotificationVGAJ_s5Int64VALtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v11 = *(a1 + 16);
  if (v11 <= a2)
  {

    return v10;
  }

  if (!v11)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v9 = sub_275B11A1C(0, *(v9 + 2) + 1, 1, v9);
    goto LABEL_27;
  }

  v10 = a1 + 32;
  v7 = sub_275B7AC0C();
  v9 = 0;
  v4 = 0;
  v5 = (v11 - 1);
  v6 = MEMORY[0x277D84F90];
  v8 = 56;
  v34 = v11;
  v35 = v10;
  v33 = v11 - 1;
  while (1)
  {
    if (sub_275B7ABAC())
    {
      v12 = &v9[-v4];
      if (v9 <= v4)
      {
        goto LABEL_34;
      }

      v3 = &v9[~v4];
      if (v3 == -1)
      {
        v36 = 0;
        MEMORY[0x277C89DC0](&v36, 8);
        v14 = v36;
        if (v36 >= v11)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v36 = 0;
        MEMORY[0x277C89DC0](&v36, 8);
        v13 = (v36 * v12) >> 64;
        if (v3 >= v36 * v12)
        {
          v3 = (v4 - v9) % v12;
          if (v3 > v36 * v12)
          {
            do
            {
              v36 = 0;
              MEMORY[0x277C89DC0](&v36, 8);
            }

            while (v3 > v36 * v12);
            v13 = (v36 * v12) >> 64;
          }
        }

        v14 = v13 + v4;
        if (v14 >= v11)
        {
          goto LABEL_35;
        }
      }

      v15 = v10 + 56 * v14;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      v19 = *(v15 + 24);
      v20 = *(v15 + 32);
      v3 = *(v15 + 40);
      v21 = *(v15 + 48);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_275B11A1C(0, *(v6 + 2) + 1, 1, v6);
      }

      v23 = *(v6 + 2);
      v22 = *(v6 + 3);
      v24 = v6;
      if (v23 >= v22 >> 1)
      {
        v24 = sub_275B11A1C((v22 > 1), v23 + 1, 1, v6);
      }

      *(v24 + 2) = v23 + 1;
      v6 = v24;
      v25 = &v24[56 * v23];
      *(v25 + 4) = v16;
      *(v25 + 5) = v17;
      v8 = 56;
      *(v25 + 6) = v18;
      *(v25 + 7) = v19;
      *(v25 + 8) = v20;
      v25[72] = v3;
      *(v25 + 10) = v21;
      v7 = sub_275B7AC0C();
      v4 = v9;
      v11 = v34;
      v10 = v35;
      v5 = v33;
    }

    if (v9 == v5)
    {
      break;
    }

    if (++v9 == v11)
    {
      goto LABEL_33;
    }
  }

  if (v11 <= v4)
  {
    goto LABEL_37;
  }

  if (&v5[-v4] != -1)
  {
    v26 = sub_275B3A360(&v5[-v4 + 1]) + v4;
    if (v26 < v11)
    {
      goto LABEL_26;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v36 = 0;
  MEMORY[0x277C89DC0](&v36, 8);
  v26 = v36;
  if (v36 >= v11)
  {
    goto LABEL_32;
  }

LABEL_26:
  v27 = v10 + 56 * v26;
  v4 = *v27;
  v5 = *(v27 + 8);
  v28 = v6;
  v3 = *(v27 + 16);
  v6 = *(v27 + 24);
  v10 = *(v27 + 32);
  v7 = *(v27 + 40);
  v8 = *(v27 + 48);

  v9 = v28;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_27:
  v30 = *(v9 + 2);
  v29 = *(v9 + 3);
  if (v30 >= v29 >> 1)
  {
    v9 = sub_275B11A1C((v29 > 1), v30 + 1, 1, v9);
  }

  *(v9 + 2) = v30 + 1;
  v31 = &v9[56 * v30];
  *(v31 + 4) = v4;
  *(v31 + 5) = v5;
  *(v31 + 6) = v3;
  *(v31 + 7) = v6;
  *(v31 + 8) = v10;
  v31[72] = v7;
  *(v31 + 10) = v8;
  return v9;
}

uint64_t DelayActionDaemonWakeUp.DelayAndState.delayTime.getter()
{
  v1 = v0 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon23DelayActionDaemonWakeUp13DelayAndState_delayTime;
  swift_beginAccess();
  return *v1;
}

uint64_t DelayActionDaemonWakeUp.DelayAndState.delayTime.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon23DelayActionDaemonWakeUp13DelayAndState_delayTime;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_275B211CC(uint64_t a1)
{
  v2 = sub_275B7A06C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DelayActionDaemonWakeUp.DelayAndState.__deallocating_deinit()
{
  sub_275B211CC(v0 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon23DelayActionDaemonWakeUp13DelayAndState_state);

  return swift_deallocClassInstance();
}

uint64_t DelayActionDaemonWakeUp.init(withDaemonStateManager:withHashedAltDsid:withMLDelayProvider:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33380, &qword_275B7CDD0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v23[-v10];
  v12 = sub_275B7A06C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s33iCloudSubscriptionOptimizerDaemon011DelayActionD6WakeUpC5state33_45F62FAA23722750EBCEDE73CBCF2DE201iabC4Core17NotificationStateVvpfi_0();

  v17 = v24;
  v18 = NotificationDelayAction.init(_:_:_:)(a1, a2, a3, a4);
  if (!v17)
  {
    v19 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_pendingNotificationState;
    swift_beginAccess();
    sub_275B21564(v18 + v19, v11);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {

      sub_275B21690(v11, v16);
      v22 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23DelayActionDaemonWakeUp_state;
      swift_beginAccess();
      sub_275B216F4(v16, v18 + v22);
      swift_endAccess();
      return v18;
    }

    sub_275B215D4(v11);
    sub_275B2163C();
    swift_allocError();
    *v20 = 0xD00000000000001ELL;
    v20[1] = 0x8000000275B81600;
    swift_willThrow();
  }

  return v18;
}

uint64_t sub_275B21564(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33380, &qword_275B7CDD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275B215D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33380, &qword_275B7CDD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_275B2163C()
{
  result = qword_280A33390;
  if (!qword_280A33390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A33390);
  }

  return result;
}

uint64_t sub_275B21690(uint64_t a1, uint64_t a2)
{
  v4 = sub_275B7A06C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275B216F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_275B7A06C();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_275B21788(uint64_t (*a1)(uint64_t))
{
  v2 = swift_beginAccess();
  a1(v2);
  swift_endAccess();
  return sub_275B7AB6C();
}

uint64_t DelayActionDaemonWakeUp.getLitmusInfo()()
{
  v1 = sub_275B7A06C();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23DelayActionDaemonWakeUp_state;
  swift_beginAccess();
  sub_275B1E1B4(v0 + v5, v4);
  sub_275B79FBC();
  return sub_275B211CC(v4);
}

Swift::Int64 __swiftcall DelayActionDaemonWakeUp.getDelayCount()()
{
  swift_beginAccess();
  v0 = sub_275B79F9C();
  swift_endAccess();
  return v0;
}

uint64_t DelayActionDaemonWakeUp.getDelayAndState()()
{
  v2 = sub_275B7A06C();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  NotificationDelayAction.getDelayDecision()(v14);
  if (v1)
  {
    return v0;
  }

  v6 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23DelayActionDaemonWakeUp_state;
  swift_beginAccess();
  sub_275B1E1B4(v0 + v6, v5);
  sub_275B21BEC(v14);
  v7 = v15;
  v8 = v16;
  if (v16)
  {
LABEL_5:
    type metadata accessor for DelayActionDaemonWakeUp.DelayAndState(0);
    v0 = swift_allocObject();
    v11 = v0 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon23DelayActionDaemonWakeUp13DelayAndState_delayTime;
    *v11 = 0;
    *(v11 + 8) = 1;
    sub_275B21690(v5, v0 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon23DelayActionDaemonWakeUp13DelayAndState_state);
    v12 = v0 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon23DelayActionDaemonWakeUp13DelayAndState_delayTime;
    swift_beginAccess();
    *v12 = v7;
    *(v12 + 8) = v8;
    return v0;
  }

  swift_beginAccess();
  v9 = sub_275B79F9C();
  swift_endAccess();
  result = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    sub_275B79FAC();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t DelayActionDaemonWakeUp.deinit()
{
  sub_275B215D4(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_pendingNotificationState);

  sub_275B211CC(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23DelayActionDaemonWakeUp_state);
  return v0;
}

uint64_t DelayActionDaemonWakeUp.__deallocating_deinit()
{
  sub_275B215D4(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_pendingNotificationState);

  sub_275B211CC(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23DelayActionDaemonWakeUp_state);

  return swift_deallocClassInstance();
}

uint64_t sub_275B21C88(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_275B21CC0(uint64_t a1)
{
  result = sub_275B7A06C();
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

uint64_t sub_275B21D58(uint64_t a1)
{
  result = sub_275B7A06C();
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

uint64_t DelayActionNewOfferRequest.DelayAndStateUpdate.delayTime.getter()
{
  v1 = v0 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_delayTime;
  swift_beginAccess();
  return *v1;
}

uint64_t DelayActionNewOfferRequest.DelayAndStateUpdate.delayTime.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_delayTime;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t DelayActionNewOfferRequest.DelayAndStateUpdate.deinit()
{
  sub_275B215D4(v0 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_state);
  sub_275B251F0(v0 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_response, MEMORY[0x277D7F660]);
  return v0;
}

uint64_t DelayActionNewOfferRequest.DelayAndStateUpdate.__deallocating_deinit()
{
  sub_275B215D4(v0 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_state);
  sub_275B251F0(v0 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_response, MEMORY[0x277D7F660]);

  return swift_deallocClassInstance();
}

uint64_t sub_275B22030()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A333B8);
  __swift_project_value_buffer(v0, qword_280A333B8);
  type metadata accessor for DelayActionNewOfferRequest(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33418, &unk_275B7CE80);
  return sub_275B7A97C();
}

uint64_t DelayActionNewOfferRequest.__allocating_init(withDaemonStateManager:withHashedAltDsid:withMLDelayProvider:withNewOfferRequest:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  _s33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequestC7request33_35C3B97F6143DFB9EDA7E76A03E6286801iabC4Core0ghI0Vvpfi_0();
  v11 = NotificationDelayAction.init(_:_:_:)(a1, a2, a3, a4);
  if (v5)
  {
    sub_275B251F0(a5, MEMORY[0x277D7F628]);
  }

  else
  {
    v12 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest_request;
    swift_beginAccess();

    sub_275B222A0(a5, v11 + v12);
    swift_endAccess();
  }

  return v11;
}

uint64_t DelayActionNewOfferRequest.init(withDaemonStateManager:withHashedAltDsid:withMLDelayProvider:withNewOfferRequest:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  _s33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequestC7request33_35C3B97F6143DFB9EDA7E76A03E6286801iabC4Core0ghI0Vvpfi_0();
  v11 = NotificationDelayAction.init(_:_:_:)(a1, a2, a3, a4);
  if (v5)
  {
    sub_275B251F0(a5, MEMORY[0x277D7F628]);
  }

  else
  {
    v12 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest_request;
    swift_beginAccess();

    sub_275B222A0(a5, v11 + v12);
    swift_endAccess();
  }

  return v11;
}

uint64_t sub_275B222A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_275B79DDC();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t DelayActionNewOfferRequest.getMaxDelayTimestamp()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33380, &qword_275B7CDD0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v15 - v3;
  v5 = sub_275B7A06C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_pendingNotificationState;
  swift_beginAccess();
  sub_275B21564(v0 + v10, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_275B215D4(v4);
    swift_beginAccess();
    sub_275B79DAC();
    swift_endAccess();
    v11 = sub_275B7AC0C();
    if (qword_280A32CA0 != -1)
    {
      swift_once();
    }

    v12 = sub_275B7AB7C();
    v15 = 0xD000000000000032;
    v16 = 0x8000000275B81720;
    MEMORY[0x277C89240](v12);

    sub_275B7A9CC();
  }

  else
  {
    sub_275B24D70(v4, v9, MEMORY[0x277D7F690]);
    sub_275B7A02C();
    v11 = sub_275B7AB6C();
    if (qword_280A32CA0 != -1)
    {
      swift_once();
    }

    v13 = sub_275B7AB7C();
    v15 = 0xD00000000000003CLL;
    v16 = 0x8000000275B81760;
    MEMORY[0x277C89240](v13);

    sub_275B7A9CC();

    sub_275B251F0(v9, MEMORY[0x277D7F690]);
  }

  return v11;
}

uint64_t DelayActionNewOfferRequest.getPushTimestamp()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33380, &qword_275B7CDD0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v12 - v3;
  v5 = sub_275B7A06C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_pendingNotificationState;
  swift_beginAccess();
  sub_275B21564(v0 + v10, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_275B215D4(v4);
    return *(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_now);
  }

  else
  {
    sub_275B24D70(v4, v9, MEMORY[0x277D7F690]);
    sub_275B79FFC();
    sub_275B251F0(v9, MEMORY[0x277D7F690]);
    return sub_275B7AB6C();
  }
}

Swift::Int64 __swiftcall DelayActionNewOfferRequest.getDelayCount()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33380, &qword_275B7CDD0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v13 - v3;
  v5 = sub_275B7A06C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_pendingNotificationState;
  swift_beginAccess();
  sub_275B21564(v0 + v10, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_275B215D4(v4);
    return 0;
  }

  else
  {
    sub_275B24D70(v4, v9, MEMORY[0x277D7F690]);
    v12 = sub_275B79F9C();
    sub_275B251F0(v9, MEMORY[0x277D7F690]);
    return v12;
  }
}

uint64_t DelayActionNewOfferRequest.getLitmusInfo()()
{
  v1 = sub_275B79DDC();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest_request;
  swift_beginAccess();
  v6 = MEMORY[0x277D7F628];
  sub_275B25704(v0 + v5, v4, MEMORY[0x277D7F628]);
  sub_275B79D8C();
  return sub_275B251F0(v4, v6);
}

char **DelayActionNewOfferRequest.getDelayAndStateUpdate()()
{
  v1 = v0;
  v91 = *v0;
  v95 = sub_275B79EEC();
  MEMORY[0x28223BE20](v95, v2);
  v94 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_275B79F4C();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v90 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v92 = &v85 - v9;
  v10 = sub_275B79DDC();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v89 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v93 = &v85 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v85 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33380, &qword_275B7CDD0);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v85 - v26;
  v28 = sub_275B7A06C();
  v96 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v85 - v34;
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v85 - v38;
  v40 = v101;
  NotificationDelayAction.getDelayDecision()(v97);
  if (!v40)
  {
    v85 = v31;
    v86 = v35;
    v88 = v39;
    v87 = v23;
    v41 = v94;
    v101 = 0;
    v42 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_maxDelayTimestamp;
    swift_beginAccess();
    v43 = *(v1 + v42);
    v44 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_pendingNotificationState;
    swift_beginAccess();
    sub_275B21564(v1 + v44, v27);
    v45 = v96;
    if ((*(v96 + 48))(v27, 1, v28) == 1)
    {
      sub_275B215D4(v27);
      v46 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest_request;
      v47 = v87;
      if (v97[0] < 1)
      {
        swift_beginAccess();
        v61 = v1 + v46;
        v62 = v93;
        sub_275B25704(v61, v93, MEMORY[0x277D7F628]);
        if (qword_280A32CA0 != -1)
        {
          swift_once();
        }

        v63 = sub_275B7A9CC();
        MEMORY[0x28223BE20](v63, v64);
        *(&v85 - 2) = v62;
        *(&v85 - 1) = v97;
        sub_275B25268(&qword_280A333D8, MEMORY[0x277D7F660], MEMORY[0x277D7F658]);
        sub_275B7968C();
        sub_275B21BEC(v97);
        (*(v45 + 56))(v47, 1, 1, v28);
        type metadata accessor for DelayActionNewOfferRequest.DelayAndStateUpdate(0);
        v0 = swift_allocObject();
        v65 = v0 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_delayTime;
        *v65 = 0;
        v65[8] = 1;
        sub_275B24D00(v47, v0 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_state);
        sub_275B24D70(v41, v0 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_response, MEMORY[0x277D7F660]);
        v66 = v0 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_delayTime;
        swift_beginAccess();
        *v66 = 0;
        v66[8] = 1;
        sub_275B251F0(v62, MEMORY[0x277D7F628]);
      }

      else
      {
        swift_beginAccess();
        v48 = MEMORY[0x277D7F628];
        v49 = v89;
        sub_275B25704(v1 + v46, v89, MEMORY[0x277D7F628]);
        v0 = DelayActionNewOfferRequest.updateForDelayWithNoPending(_:_:_:)(v49, v43, v97);
        sub_275B251F0(v49, v48);
        sub_275B21BEC(v97);
      }
    }

    else
    {
      v89 = v1;
      v50 = v88;
      sub_275B24D70(v27, v88, MEMORY[0x277D7F690]);
      v51 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest_request;
      if (v97[0] < 1)
      {
        v67 = v89;
        swift_beginAccess();
        v68 = MEMORY[0x277D7F628];
        v69 = v93;
        sub_275B25704(v67 + v51, v93, MEMORY[0x277D7F628]);
        v0 = DelayActionNewOfferRequest.updateForDisplayWithPending(_:_:_:)(v50, v69, v97);
        sub_275B21BEC(v97);
        sub_275B251F0(v69, v68);
        v70 = MEMORY[0x277D7F690];
        v71 = v50;
      }

      else
      {
        v52 = v89;
        swift_beginAccess();
        sub_275B25704(v52 + v51, v19, MEMORY[0x277D7F628]);
        if (qword_280A32CA0 != -1)
        {
          swift_once();
        }

        sub_275B7A9CC();
        v53 = v86;
        sub_275B25704(v88, v86, MEMORY[0x277D7F690]);
        v54 = v90;
        sub_275B79DBC();
        v55 = v92;
        DelayActionNewOfferRequest.getUpdatedQuotaServerStateWithDaemonState(_:_:)(v54, v92);
        sub_275B251F0(v54, MEMORY[0x277D7F670]);
        sub_275B79D9C();
        if (v56 >= 0.0 && (sub_275B79D9C(), v57 <= 1.0))
        {
          v58 = v28;
          v59 = sub_275B79D9C();
        }

        else
        {
          v58 = v28;
          v59 = sub_275B79FDC();
        }

        v72 = MEMORY[0x28223BE20](v59, v60);
        *(&v85 - 6) = v73;
        *(&v85 - 5) = v72;
        *(&v85 - 4) = v19;
        *(&v85 - 3) = v43;
        *(&v85 - 2) = v55;
        sub_275B25268(&qword_280A333E0, MEMORY[0x277D7F690], MEMORY[0x277D7F680]);
        v74 = v85;
        v75 = v101;
        sub_275B7968C();
        v93 = v19;
        v90 = MEMORY[0x277D7F690];
        sub_275B251F0(v53, MEMORY[0x277D7F690]);
        v76 = MEMORY[0x277D7F690];
        v77 = sub_275B24D70(v74, v53, MEMORY[0x277D7F690]);
        MEMORY[0x28223BE20](v77, v78);
        *(&v85 - 6) = v55;
        *(&v85 - 5) = v79;
        *(&v85 - 4) = v89;
        *(&v85 - 3) = v97;
        *(&v85 - 2) = v91;
        sub_275B25268(&qword_280A333D8, MEMORY[0x277D7F660], MEMORY[0x277D7F658]);
        v80 = v94;
        sub_275B7968C();
        v101 = v75;
        v81 = v87;
        sub_275B24D70(v53, v87, v76);
        (*(v96 + 56))(v81, 0, 1, v58);
        sub_275B21BEC(v97);
        v99 = v97[1];
        v100 = v98;
        type metadata accessor for DelayActionNewOfferRequest.DelayAndStateUpdate(0);
        v0 = swift_allocObject();
        v82 = v0 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_delayTime;
        *v82 = 0;
        v82[8] = 1;
        sub_275B24D00(v81, v0 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_state);
        sub_275B24D70(v80, v0 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_response, MEMORY[0x277D7F660]);
        v83 = v0 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_delayTime;
        swift_beginAccess();
        *v83 = v99;
        v83[8] = v100;
        sub_275B251F0(v55, MEMORY[0x277D7F670]);
        sub_275B251F0(v93, MEMORY[0x277D7F628]);
        v71 = v88;
        v70 = v90;
      }

      sub_275B251F0(v71, v70);
    }
  }

  return v0;
}

uint64_t DelayActionNewOfferRequest.updateForDisplayWithNoPending(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33380, &qword_275B7CDD0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v19 - v6;
  v8 = sub_275B79EEC();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280A32CA0 != -1)
  {
    swift_once();
  }

  v12 = sub_275B7A9CC();
  MEMORY[0x28223BE20](v12, v13);
  *(&v19 - 2) = a1;
  *(&v19 - 1) = a2;
  sub_275B25268(&qword_280A333D8, MEMORY[0x277D7F660], MEMORY[0x277D7F658]);
  sub_275B7968C();
  v14 = sub_275B7A06C();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  type metadata accessor for DelayActionNewOfferRequest.DelayAndStateUpdate(0);
  v15 = swift_allocObject();
  v16 = v15 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_delayTime;
  *v16 = 0;
  *(v16 + 8) = 1;
  sub_275B24D00(v7, v15 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_state);
  sub_275B24D70(v11, v15 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_response, MEMORY[0x277D7F660]);
  v17 = v15 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_delayTime;
  swift_beginAccess();
  *v17 = 0;
  *(v17 + 8) = 1;
  return v15;
}

uint64_t DelayActionNewOfferRequest.updateForDisplayWithPending(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33380, &qword_275B7CDD0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v28 - v6;
  v8 = sub_275B79F4C();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v28 - v14;
  v16 = sub_275B79EEC();
  MEMORY[0x28223BE20](v16, v17);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280A32CA0 != -1)
  {
    swift_once();
  }

  sub_275B7A9CC();
  sub_275B79DBC();
  DelayActionNewOfferRequest.getUpdatedQuotaServerStateWithDaemonState(_:_:)(v11, v15);
  v20 = MEMORY[0x277D7F670];
  v21 = sub_275B251F0(v11, MEMORY[0x277D7F670]);
  MEMORY[0x28223BE20](v21, v22);
  v28[-2] = v15;
  v28[-1] = a3;
  sub_275B25268(&qword_280A333D8, MEMORY[0x277D7F660], MEMORY[0x277D7F658]);
  sub_275B7968C();
  v23 = sub_275B7A06C();
  (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  type metadata accessor for DelayActionNewOfferRequest.DelayAndStateUpdate(0);
  v24 = swift_allocObject();
  v25 = v24 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_delayTime;
  *v25 = 0;
  *(v25 + 8) = 1;
  sub_275B24D00(v7, v24 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_state);
  sub_275B24D70(v19, v24 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_response, MEMORY[0x277D7F660]);
  v26 = v24 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_delayTime;
  swift_beginAccess();
  *v26 = 0;
  *(v26 + 8) = 1;
  sub_275B251F0(v15, v20);
  return v24;
}

uint64_t sub_275B23B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_275B79F4C();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275B79EDC();
  sub_275B25704(a2, v7, MEMORY[0x277D7F670]);
  sub_275B79E9C();

  return sub_275B79E8C();
}

uint64_t DelayActionNewOfferRequest.updateForDelayWithNoPending(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a3;
  v4 = v3;
  v69 = a1;
  v61 = *v3;
  v62 = a2;
  v5 = sub_275B7A06C();
  v75 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v63 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33380, &qword_275B7CDD0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v61 - v10;
  v68 = sub_275B79EEC();
  MEMORY[0x28223BE20](v68, v12);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_275B79F4C();
  MEMORY[0x28223BE20](v67, v15);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v61 - v20;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v61 - v24;
  if (qword_280A32CA0 != -1)
  {
    swift_once();
  }

  sub_275B7A9CC();
  v26 = *(v4 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_hashedAltDsid + 8);
  if (v26)
  {
    v64 = v5;
    v65 = v11;
    v66 = v14;
    v27 = *(v4 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_hashedAltDsid);
    v28 = v69;
    sub_275B79DBC();
    v29 = sub_275B79EFC();
    v31 = v30;
    sub_275B251F0(v25, MEMORY[0x277D7F670]);

    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (!v32)
    {
      goto LABEL_11;
    }

    sub_275B79DBC();
    v33 = sub_275B79F1C();
    v35 = v34;
    sub_275B251F0(v21, MEMORY[0x277D7F670]);

    v38 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v38 = v33 & 0xFFFFFFFFFFFFLL;
    }

    if (v38)
    {
      MEMORY[0x28223BE20](v36, v37);
      *(&v61 - 6) = v27;
      *(&v61 - 5) = v26;
      *(&v61 - 4) = v28;
      *(&v61 - 3) = v4;
      v39 = v62;
      *(&v61 - 2) = v62;
      sub_275B25268(&qword_280A333E0, MEMORY[0x277D7F690], MEMORY[0x277D7F680]);
      v41 = v63;
      v40 = v64;
      v42 = sub_275B7968C();
      MEMORY[0x28223BE20](v42, v43);
      *(&v61 - 6) = v28;
      *(&v61 - 5) = v39;
      v44 = v70;
      *(&v61 - 4) = v4;
      *(&v61 - 3) = v44;
      *(&v61 - 2) = v61;
      sub_275B25268(&qword_280A333D8, MEMORY[0x277D7F660], MEMORY[0x277D7F658]);
      v45 = v66;
      sub_275B7968C();
      v46 = v65;
      sub_275B24D70(v41, v65, MEMORY[0x277D7F690]);
      (*(v75 + 56))(v46, 0, 1, v40);
      v73 = *(v44 + 8);
      v74 = *(v44 + 16);
      type metadata accessor for DelayActionNewOfferRequest.DelayAndStateUpdate(0);
      v47 = swift_allocObject();
      v48 = v47 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_delayTime;
      *v48 = 0;
      *(v48 + 8) = 1;
      sub_275B24D00(v46, v47 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_state);
      sub_275B24D70(v45, v47 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_response, MEMORY[0x277D7F660]);
      v49 = v47 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_delayTime;
      swift_beginAccess();
      *v49 = v73;
      *(v49 + 8) = v74;
    }

    else
    {
LABEL_11:
      v71 = 0;
      v72 = 0xE000000000000000;
      sub_275B7B09C();
      MEMORY[0x277C89240](0xD000000000000012, 0x8000000275B81900);
      sub_275B79DBC();
      sub_275B7B0EC();
      sub_275B251F0(v17, MEMORY[0x277D7F670]);
      MEMORY[0x277C89240](93, 0xE100000000000000);
      v50 = v71;
      v51 = v72;
      v71 = 0xD00000000000005DLL;
      v72 = 0x8000000275B818A0;
      MEMORY[0x277C89240](v50, v51);

      sub_275B7A9CC();

      MEMORY[0x28223BE20](v52, v53);
      v54 = v70;
      *(&v61 - 2) = v28;
      *(&v61 - 1) = v54;
      sub_275B25268(&qword_280A333D8, MEMORY[0x277D7F660], MEMORY[0x277D7F658]);
      v55 = v66;
      sub_275B7968C();
      v56 = v65;
      (*(v75 + 56))(v65, 1, 1, v64);
      type metadata accessor for DelayActionNewOfferRequest.DelayAndStateUpdate(0);
      v47 = swift_allocObject();
      v57 = v47 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_delayTime;
      *v57 = 0;
      *(v57 + 8) = 1;
      sub_275B24D00(v56, v47 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_state);
      sub_275B24D70(v55, v47 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_response, MEMORY[0x277D7F660]);
      v58 = v47 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_delayTime;
      swift_beginAccess();
      *v58 = 0;
      *(v58 + 8) = 1;
    }
  }

  else
  {
    v47 = 0x8000000275B81860;
    sub_275B252F8();
    swift_allocError();
    *v59 = 0xD00000000000003CLL;
    v59[1] = 0x8000000275B81860;
    swift_willThrow();
  }

  return v47;
}

uint64_t sub_275B24428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_275B79F4C();
  MEMORY[0x28223BE20](v3 - 8, v4);
  sub_275B79EDC();
  sub_275B79DBC();
  sub_275B79E9C();

  return sub_275B79E8C();
}

uint64_t sub_275B244F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_275B79F4C();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = sub_275B7989C();
  MEMORY[0x28223BE20](v8 - 8, v9);

  sub_275B79F8C();
  sub_275B79D9C();
  sub_275B79FEC();
  sub_275B79D8C();
  sub_275B79FCC();
  sub_275B7AB5C();
  sub_275B7A00C();
  sub_275B7AB5C();
  sub_275B7A03C();
  sub_275B79DBC();
  sub_275B79F6C();
  return sub_275B79FAC();
}

uint64_t sub_275B24660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_275B79F4C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  sub_275B79EDC();
  sub_275B79DBC();
  sub_275B79E9C();
  sub_275B7AB5C();
  sub_275B79EBC();
  sub_275B2557C(*(a4 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_now), *(a5 + 8), *(a5 + 16));
  sub_275B79EAC();

  return sub_275B79E8C();
}

uint64_t DelayActionNewOfferRequest.updateForDelayWithPending(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v46 = *v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33380, &qword_275B7CDD0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v49 = &v45 - v10;
  v45 = sub_275B79EEC();
  MEMORY[0x28223BE20](v45, v11);
  v47 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_275B79F4C();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v45 - v19;
  v21 = sub_275B7A06C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v45 - v28;
  if (qword_280A32CA0 != -1)
  {
    swift_once();
  }

  sub_275B7A9CC();
  sub_275B25704(a1, v29, MEMORY[0x277D7F690]);
  sub_275B79DBC();
  DelayActionNewOfferRequest.getUpdatedQuotaServerStateWithDaemonState(_:_:)(v16, v20);
  sub_275B251F0(v16, MEMORY[0x277D7F670]);
  sub_275B79D9C();
  if (v30 >= 0.0 && (sub_275B79D9C(), v31 <= 1.0))
  {
    v32 = sub_275B79D9C();
  }

  else
  {
    v32 = sub_275B79FDC();
  }

  v34 = MEMORY[0x28223BE20](v32, v33);
  *(&v45 - 6) = a1;
  *(&v45 - 5) = v34;
  *(&v45 - 4) = a2;
  *(&v45 - 3) = a3;
  *(&v45 - 2) = v20;
  sub_275B25268(&qword_280A333E0, MEMORY[0x277D7F690], MEMORY[0x277D7F680]);
  sub_275B7968C();
  sub_275B251F0(v29, MEMORY[0x277D7F690]);
  v35 = MEMORY[0x277D7F690];
  v36 = sub_275B24D70(v25, v29, MEMORY[0x277D7F690]);
  MEMORY[0x28223BE20](v36, v37);
  *(&v45 - 6) = v20;
  *(&v45 - 5) = a3;
  v38 = v50;
  *(&v45 - 4) = v48;
  *(&v45 - 3) = v38;
  *(&v45 - 2) = v46;
  sub_275B25268(&qword_280A333D8, MEMORY[0x277D7F660], MEMORY[0x277D7F658]);
  v39 = v47;
  sub_275B7968C();
  v40 = v49;
  sub_275B24D70(v29, v49, v35);
  (*(v22 + 56))(v40, 0, 1, v21);
  v51 = *(v38 + 8);
  v52 = *(v38 + 16);
  type metadata accessor for DelayActionNewOfferRequest.DelayAndStateUpdate(0);
  v41 = swift_allocObject();
  v42 = v41 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_delayTime;
  *v42 = 0;
  *(v42 + 8) = 1;
  sub_275B24D00(v40, v41 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_state);
  sub_275B24D70(v39, v41 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_response, MEMORY[0x277D7F660]);
  v43 = v41 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest19DelayAndStateUpdate_delayTime;
  swift_beginAccess();
  *v43 = v51;
  *(v43 + 8) = v52;
  sub_275B251F0(v20, MEMORY[0x277D7F670]);
  return v41;
}

uint64_t sub_275B24D00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33380, &qword_275B7CDD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275B24D70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_275B24DD8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_275B79F4C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_275B7989C();
  MEMORY[0x28223BE20](v11 - 8, v12);
  sub_275B79F7C();
  sub_275B79F8C();
  sub_275B79FEC();
  sub_275B79D8C();
  sub_275B79FCC();
  sub_275B79FFC();
  sub_275B7A00C();
  sub_275B7AB5C();
  sub_275B7A03C();
  sub_275B25704(a6, v10, MEMORY[0x277D7F670]);
  sub_275B79F6C();
  v13 = sub_275B79F9C();
  v14 = __OFADD__(v13, 1);
  result = v13 + 1;
  if (!v14)
  {
    return sub_275B79FAC();
  }

  __break(1u);
  return result;
}

uint64_t sub_275B24F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_275B79F4C();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275B79EDC();
  sub_275B25704(a2, v11, MEMORY[0x277D7F670]);
  sub_275B79E9C();
  sub_275B7AB5C();
  sub_275B79EBC();
  sub_275B2557C(*(a4 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_now), *(a5 + 8), *(a5 + 16));
  sub_275B79EAC();

  return sub_275B79E8C();
}

uint64_t DelayActionNewOfferRequest.getUpdatedQuotaServerStateWithDaemonState(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_275B79F4C();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275B25704(a1, a2, MEMORY[0x277D7F670]);
  v8 = sub_275B79EFC();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    sub_275B79F5C();
    sub_275B79EFC();
    sub_275B251F0(v7, MEMORY[0x277D7F670]);
    sub_275B79F0C();
  }

  v12 = sub_275B79F1C();
  v14 = v13;

  v16 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v16 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    sub_275B79F5C();
    sub_275B79F1C();
    sub_275B251F0(v7, MEMORY[0x277D7F670]);
    return sub_275B79F2C();
  }

  return result;
}

uint64_t sub_275B251F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_275B25268(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_275B252F8()
{
  result = qword_280A333E8;
  if (!qword_280A333E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A333E8);
  }

  return result;
}

uint64_t DelayActionNewOfferRequest.deinit()
{
  sub_275B215D4(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_pendingNotificationState);

  sub_275B251F0(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest_request, MEMORY[0x277D7F628]);
  return v0;
}

uint64_t DelayActionNewOfferRequest.__deallocating_deinit()
{
  sub_275B215D4(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23NotificationDelayAction_pendingNotificationState);

  sub_275B251F0(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon26DelayActionNewOfferRequest_request, MEMORY[0x277D7F628]);

  return swift_deallocClassInstance();
}

uint64_t sub_275B2557C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (qword_280A32C98 != -1)
    {
      swift_once();
    }

    v3 = sub_275B7A96C();
    __swift_project_value_buffer(v3, qword_280A333B8);
    sub_275B7B09C();
    MEMORY[0x277C89240](0xD000000000000035, 0x8000000275B81A20);
    sub_275B7B0EC();
    MEMORY[0x277C89240](93, 0xE100000000000000);
    sub_275B7A93C();

    return 0;
  }

  else
  {
    v5 = sub_275B7ABBC();

    return MEMORY[0x2821E93D0](v5);
  }
}

uint64_t sub_275B25704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275B25794(uint64_t a1)
{
  result = sub_275B79DDC();
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

void sub_275B2582C(uint64_t a1)
{
  sub_275B25900(319);
  if (v1 <= 0x3F)
  {
    sub_275B79EEC();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_275B25900(uint64_t a1)
{
  if (!qword_280A33410)
  {
    sub_275B7A06C();
    v1 = sub_275B7AFCC();
    if (!v2)
    {
      atomic_store(v1, &qword_280A33410);
    }
  }
}

uint64_t DelayDecision.delayTime.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t DelayDecision.mlModelName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t DelayDecision.mlModelName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t DelayDecision.init(chosenOffsetIndex:delayTime:mlModelName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
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

uint64_t sub_275B25AA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_275B25AEC(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_275B25B44()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A33420);
  __swift_project_value_buffer(v0, qword_280A33420);
  type metadata accessor for DelayedNotificationActivity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33450, "©");
  return sub_275B7A97C();
}

uint64_t sub_275B25BC0()
{
  v0 = sub_275B79D4C();
  v2 = *v0;
  v1 = v0[1];
  qword_28140DC90 = v2;
  unk_28140DC98 = v1;
}

uint64_t sub_275B25BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  *(v3 + 72) = a3;
  v4 = qword_28140DC88;

  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_28140DC90;
  v5 = unk_28140DC98;
  *(v3 + 40) = 0;
  *(v3 + 48) = 258;
  *(v3 + 16) = v6;
  *(v3 + 24) = v5;
  *(v3 + 32) = 0;

  sub_275B68C7C();

  return v3;
}

void *static DelayedNotificationActivity.initShared(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v8 = sub_275B79CFC();
    v10 = *v8;
    v9 = v8[1];
    type metadata accessor for DaemonStateManager();
    v5 = swift_allocObject();
    *(v5 + 16) = v10;
    *(v5 + 24) = v9;

    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = sub_275B25ED8;
    v6 = 0;
    goto LABEL_6;
  }

  v5 = a1;
  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = sub_275B26294;
LABEL_6:
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v6;
  type metadata accessor for DelayedNotificationActivity();
  swift_allocObject();

  sub_275B26284(a2, a3);

  v12 = sub_275B25BF8(v5, sub_275B26258, v11);
  off_28140DC78 = v12;

  return v12;
}

uint64_t sub_275B25E34(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v7 = *a2;
  v6 = a2[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;

  a3(v4, v5, sub_275B28290, v8);
}

uint64_t sub_275B25ED8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v24 = a1[1];
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = type metadata accessor for ICloudNotificationXpcClient();
  v7 = swift_allocObject();
  swift_retain_n();
  v8 = sub_275B79CFC();
  v10 = *v8;
  v9 = v8[1];
  type metadata accessor for DaemonStateManager();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v12 = qword_280A32C38;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = static BackingOffINDNotifier.kDefaultBackoffDuration;
  type metadata accessor for BackingOffINDNotifier();
  v14 = swift_allocObject();
  v14[2] = v7;
  v14[5] = v6;
  v14[6] = &off_2884AA078;
  v14[7] = v11;
  v14[8] = v13;
  BackingOffINDNotifier.checkIsNotTooEarlyToCallIndAgain()();
  if (v15)
  {
    v25 = v15;
    v16 = v15;
    v4(&v25);
  }

  else
  {
    v17 = _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
    v18 = v14[5];
    v19 = v14[6];
    __swift_project_boxed_opaque_existential_1(v14 + 2, v18);
    v20 = swift_allocObject();
    v20[2] = sub_275B282D4;
    v20[3] = v5;
    v20[4] = v14;
    v20[5] = v17;
    v21 = v2;
    v22 = *(v19 + 8);

    v22(v21, v24, sub_275B282C8, v20, v18, v19);
  }
}

uint64_t sub_275B26124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[0] = a1;
  v9[1] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  v8[0] = sub_275B28264;
  v8[1] = v6;

  sub_275B25ED8(v9, v8);
}

uint64_t sub_275B261B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, void *))
{
  v11[0] = a1;
  v11[1] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[0] = sub_275B282E8;
  v10[1] = v8;

  a5(v11, v10);
}

uint64_t sub_275B26284(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *static DelayedNotificationActivity.shared.getter()
{
  if (off_28140DC78)
  {
    v0 = off_28140DC78;
  }

  else
  {
    if (qword_280A32CA8 != -1)
    {
      swift_once();
    }

    v1 = sub_275B7A96C();
    __swift_project_value_buffer(v1, qword_280A33420);
    sub_275B7A93C();
    v2 = sub_275B79CFC();
    v4 = *v2;
    v3 = v2[1];
    type metadata accessor for DaemonStateManager();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    type metadata accessor for DelayedNotificationActivity();
    swift_allocObject();

    v0 = sub_275B25BF8(v6, sub_275B26124, 0);
    off_28140DC78 = v0;
  }

  return v0;
}

Swift::Void __swiftcall DelayedNotificationActivity.run()()
{
  v1 = sub_275B7989C();
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v0;
  v19 = *(v0 + 56);

  v5 = sub_275B35FEC();
  if (v6)
  {
    v5 = sub_275B7A98C();
    v18 = v7;
  }

  else
  {
    v18 = 0;
  }

  type metadata accessor for MobileAssetLocalManager();
  v8 = swift_allocObject();
  type metadata accessor for ModelProvider();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = sub_275B79CFC();
  v11 = *v10;
  v12 = v10[1];
  type metadata accessor for DaemonStateManager();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  type metadata accessor for MLDelayProvider(0);
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v13;
  sub_275B2821C(&qword_280A33438, MEMORY[0x277D7F598], MEMORY[0x277D7F590]);

  sub_275B7968C();
  sub_275B27B68(v4, v14 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon15MLDelayProvider_litmusInfo, MEMORY[0x277D7F598]);

  type metadata accessor for DelayActionDaemonWakeUp(0);
  swift_allocObject();
  v15 = DelayActionDaemonWakeUp.init(withDaemonStateManager:withHashedAltDsid:withMLDelayProvider:)(v19, v5, v18, v14);
  DelayedNotificationActivity.runWithDelayAction(_:)(v15);
}

uint64_t DelayedNotificationActivity.runWithDelayAction(_:)(uint64_t a1)
{
  v3 = v1;
  v45 = *v1;
  v5 = sub_275B7A06C();
  v6 = *(v5 - 8);
  v43 = v5;
  v44 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v9 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v39 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v39 - v16;
  sub_275B7AA9C();
  v51 = sub_275B7AA8C();
  if (qword_280A32CB0 != -1)
  {
    swift_once();
  }

  sub_275B7A99C();
  sub_275B7A9CC();
  NotificationDelayAction.getDelayDecision()(v48);
  if (v2)
  {
  }

  v41 = 0;
  v19 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23DelayActionDaemonWakeUp_state;
  swift_beginAccess();
  v42 = a1;
  sub_275B1E1B4(a1 + v19, v17);
  sub_275B21BEC(v48);
  v20 = v49;
  v21 = v50;
  if ((v50 & 1) == 0)
  {
    v22 = v42;
    swift_beginAccess();
    v23 = sub_275B79F9C();
    swift_endAccess();
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_18:
      v29 = swift_once();
      goto LABEL_11;
    }

    sub_275B79FAC();
  }

  type metadata accessor for DelayActionDaemonWakeUp.DelayAndState(0);
  v22 = swift_allocObject();
  v24 = v22 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon23DelayActionDaemonWakeUp13DelayAndState_delayTime;
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_275B27B68(v17, v22 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon23DelayActionDaemonWakeUp13DelayAndState_state, MEMORY[0x277D7F690]);
  sub_275B1E1B4(v22 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon23DelayActionDaemonWakeUp13DelayAndState_state, v13);
  if (v21)
  {
    v40 = sub_275B79CCC();
    sub_275B1E1B4(v13, v9);
    v25 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v26 = swift_allocObject();
    sub_275B27B68(v9, v26 + v25, MEMORY[0x277D7F690]);
    *(v26 + ((v7 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v45;
    DelayedNotificationActivity.notifyQuotaDaemon(_:_:)(v13, sub_275B27BD0, v26);

    sub_275B27268();
    v9 = 0;
    v27 = v42;
LABEL_13:
    if (qword_280A32CA8 != -1)
    {
      swift_once();
    }

    v35 = sub_275B7A96C();
    __swift_project_value_buffer(v35, qword_280A33420);
    sub_275B7A9AC();
    sub_275B7A92C();

    goto LABEL_16;
  }

  v9 = sub_275B7AB1C();
  DelayedNotificationActivity.setNewWakeUpDelay(withDelay:)(v20);
  v40 = sub_275B79CCC();
  v7 = v3[7];
  MEMORY[0x28223BE20](v40, v28);
  v3 = &v39 - 4;
  *(&v39 - 2) = v13;
  if (qword_28140F988 != -1)
  {
    goto LABEL_18;
  }

LABEL_11:
  v31 = off_28140F990;
  v32 = MEMORY[0x28223BE20](v29, v30);
  *(&v39 - 4) = v7;
  *(&v39 - 3) = sub_275B1D150;
  *(&v39 - 2) = v3;
  v34 = v41;
  (*(*v31 + 136))(0xD000000000000021, v33 | 0x8000000000000000, sub_275B09408, v32);
  v27 = v42;
  if (!v34)
  {
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_275B7B09C();
    MEMORY[0x277C89240](0xD000000000000020, 0x8000000275B81AF0);
    sub_275B7B0EC();
    MEMORY[0x277C89240](93, 0xE100000000000000);
    sub_275B7A9CC();

    goto LABEL_13;
  }

LABEL_16:
  v36 = MEMORY[0x277D7F690];
  sub_275B281BC(v13, MEMORY[0x277D7F690]);
  v37 = sub_275B27C6C(v27, v40, v9);
  (*(*v51 + 96))();
  sub_275B7AB1C();

  sub_275B79B7C();

  (*(*v37 + 200))(v38);

  swift_setDeallocating();
  sub_275B281BC(v22 + OBJC_IVAR____TtCC33iCloudSubscriptionOptimizerDaemon23DelayActionDaemonWakeUp13DelayAndState_state, v36);
  return swift_deallocClassInstance();
}

void sub_275B26E14(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_280A32CA8 != -1)
    {
      swift_once();
    }

    v3 = sub_275B7A96C();
    __swift_project_value_buffer(v3, qword_280A33420);
    sub_275B7B09C();
    MEMORY[0x277C89240](0xD000000000000018, 0x8000000275B81DE0);
    sub_275B7A06C();
    sub_275B2821C(&qword_280A333E0, MEMORY[0x277D7F690], MEMORY[0x277D7F680]);
    v4 = sub_275B7965C();
    MEMORY[0x277C89240](v4);

    MEMORY[0x277C89240](0x3D726F727265205DLL, 0xE90000000000005BLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AC0, &unk_275B7C2A0);
    sub_275B7B0EC();
    MEMORY[0x277C89240](93, 0xE100000000000000);
    MEMORY[0x277C89240](0, 0xE000000000000000);

    sub_275B7A95C();
  }

  else
  {
    if (qword_280A32CA8 != -1)
    {
      swift_once();
    }

    v5 = sub_275B7A96C();
    __swift_project_value_buffer(v5, qword_280A33420);
    sub_275B7B09C();

    sub_275B7A06C();
    sub_275B2821C(&qword_280A333E0, MEMORY[0x277D7F690], MEMORY[0x277D7F680]);
    v6 = sub_275B7965C();
    MEMORY[0x277C89240](v6);

    MEMORY[0x277C89240](93, 0xE100000000000000);
    MEMORY[0x277C89240](0xD00000000000001DLL, 0x8000000275B81D80);

    sub_275B7A91C();
  }
}

uint64_t DelayedNotificationActivity.setNewWakeUpDelay(withDelay:)(uint64_t a1)
{
  sub_275B66D40(a1, 0);

  if (qword_280A32CB0 != -1)
  {
    swift_once();
  }

  sub_275B7B09C();
  MEMORY[0x277C89240](0xD00000000000003ALL, 0x8000000275B81B20);
  sub_275B7AB1C();
  v1 = sub_275B7B19C();
  MEMORY[0x277C89240](v1);

  MEMORY[0x277C89240](0x73646E6F63657320, 0xE800000000000000);
  sub_275B7A9CC();
}

uint64_t sub_275B27268()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A330F8, &qword_275B7C9A0);
  MEMORY[0x28223BE20](v1, v2);
  MEMORY[0x28223BE20](v3, v4);
  v7 = *(v0 + 56);
  if (qword_28140F988 != -1)
  {
    v5 = swift_once();
  }

  v8 = off_28140F990;
  v9 = MEMORY[0x28223BE20](v5, v6);
  *(&v12 - 4) = v7;
  *(&v12 - 3) = sub_275B1BF98;
  *(&v12 - 2) = 0;
  return (*(*v8 + 136))(0xD000000000000021, v10 | 0x8000000000000000, sub_275B1E288, v9);
}

uint64_t DelayedNotificationActivity.notifyQuotaDaemon(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_275B7A88C();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a1;
  sub_275B2821C(&qword_280A33440, MEMORY[0x277D7F868], MEMORY[0x277D7F860]);
  sub_275B7968C();
  if (qword_280A32CB0 != -1)
  {
    swift_once();
  }

  v21 = 0;
  v22 = 0xE000000000000000;
  sub_275B7B09C();

  v21 = 0xD000000000000025;
  v22 = 0x8000000275B81B60;
  v12 = sub_275B7965C();
  MEMORY[0x277C89240](v12);

  MEMORY[0x277C89240](93, 0xE100000000000000);
  sub_275B7A9CC();

  sub_275B7A9CC();
  v13 = sub_275B7A07C();
  v15 = v14;
  v16 = *(v4 + 64);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;

  v16(v13, v15, sub_275B28178, v17);

  return sub_275B281BC(v11, MEMORY[0x277D7F868]);
}

uint64_t sub_275B278C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_275B7A14C();
  MEMORY[0x28223BE20](v2, v3);
  sub_275B2821C(&qword_280A33448, MEMORY[0x277D7F6D0], MEMORY[0x277D7F6C8]);
  sub_275B7968C();
  return sub_275B7A87C();
}

uint64_t sub_275B279CC()
{
  v0 = sub_275B79F4C();
  MEMORY[0x28223BE20](v0 - 8, v1);
  sub_275B79F5C();
  sub_275B7A12C();
  sub_275B7A11C();
  return sub_275B7A13C();
}

uint64_t sub_275B27AA0()
{
}

void *DelayedNotificationActivity.deinit()
{

  return v0;
}

uint64_t DelayedNotificationActivity.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_275B27B68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_275B27BD0(void *a1)
{
  sub_275B7A06C();

  sub_275B26E14(a1);
}

uint64_t sub_275B27C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[3] = a3;
  v5 = sub_275B7A06C();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_275B7989C();
  MEMORY[0x28223BE20](v9, v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon23DelayActionDaemonWakeUp_state;
  swift_beginAccess();
  sub_275B79FFC();
  swift_endAccess();
  sub_275B7AB6C();
  swift_beginAccess();
  sub_275B7A02C();
  swift_endAccess();
  sub_275B7AB6C();
  sub_275B7ABCC();
  v17[1] = sub_275B7AB1C();
  v14 = sub_275B79CCC();
  v17[2] = a2;
  if (v14 == a2)
  {
    _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
    sub_275B7ABCC();
    v17[0] = sub_275B7AB1C();
  }

  else
  {
    v17[0] = -1;
  }

  if (qword_28140F5C0 != -1)
  {
    swift_once();
  }

  sub_275B19CD4(qword_28140F5C8 + 16, v20);
  type metadata accessor for NotificationDelayEvent();
  swift_allocObject();
  sub_275B19CD4(v20, v19);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v18[0] = qword_28140F700;
  v18[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000011, 0x8000000275B7F4A0);
  sub_275B19CD4(v19, v18);
  v15 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v20);
  sub_275B7AB5C();
  sub_275B79B7C();

  sub_275B1E1B4(a1 + v13, v8);
  sub_275B79FBC();
  sub_275B281BC(v8, MEMORY[0x277D7F690]);
  sub_275B2821C(&qword_280A33438, MEMORY[0x277D7F598], MEMORY[0x277D7F590]);
  sub_275B7965C();
  sub_275B281BC(v12, MEMORY[0x277D7F598]);
  sub_275B79B4C();

  sub_275B79B7C();

  sub_275B79B7C();

  sub_275B79B7C();

  swift_beginAccess();
  sub_275B79F9C();
  swift_endAccess();
  sub_275B79B7C();

  sub_275B79B7C();

  sub_275B79B4C();

  return v15;
}

uint64_t sub_275B281BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_275B2821C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_275B28290(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_275B282EC()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A33458);
  __swift_project_value_buffer(v0, qword_280A33458);
  type metadata accessor for DeleteDaemonStateAPI();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33488, &unk_275B7CF50);
  return sub_275B7A97C();
}

uint64_t DeleteDaemonStateAPI.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t DeleteDaemonStateAPI.getResponse(_:)(Swift::String *a1)
{
  if (qword_280A32CC0 != -1)
  {
    swift_once();
  }

  v1 = sub_275B7A96C();
  __swift_project_value_buffer(v1, qword_280A33458);
  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  MEMORY[0x277C89240](0x676E696C646E6148, 0xEA00000000005B20);
  sub_275B7A3FC();
  sub_275B7B0EC();
  MEMORY[0x277C89240](11869, 0xE200000000000000);
  sub_275B7A91C();

  v25._countAndFlagsBits = 0xD000000000000014;
  v25._object = 0x8000000275B81E00;
  sub_275B7AA9C();
  v2 = sub_275B7AA8C();
  if (qword_28140F5C0 != -1)
  {
    swift_once();
  }

  sub_275B19CD4(qword_28140F5C8 + 16, v24);
  type metadata accessor for DeleteDaemonStateEvent();
  swift_initStackObject();
  sub_275B19CD4(v24, v23);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v21 = qword_28140F700;
  v22 = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000011, 0x8000000275B7F560);
  sub_275B19CD4(v23, &v21);
  sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v24);
  v3 = sub_275B7A3DC();
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  v21 = v3;
  LOBYTE(v22) = v4 & 1;
  sub_275B7B0EC();
  sub_275B79B4C();

  v5 = sub_275B7A3DC();
  if (v6)
  {
    if (v5 <= 1)
    {
      if (v5)
      {
        sub_275B291D8();
      }
    }

    else if (v5 == 2)
    {
      if (qword_28140F988 != -1)
      {
        v5 = swift_once();
      }

      v12 = off_28140F990;
      v13 = MEMORY[0x28223BE20](v5, v6);
      (*(*v12 + 136))(0xD000000000000021, v14 | 0x8000000000000000, sub_275B1E288, v13);
      sub_275B7A91C();
    }

    else if (v5 == 3)
    {
      v8 = DeleteDaemonStateAPI.deleteMobileAssetState()();
      if (v7)
      {
        sub_275B79B5C();

        v18 = sub_275B797EC();
        MEMORY[0x28223BE20](v18, v19);
        sub_275B29E8C(&qword_280A33470, MEMORY[0x277D7F580], MEMORY[0x277D7F560]);
        sub_275B7968C();

        goto LABEL_23;
      }

      v25 = v8;
    }

    else
    {
      if (qword_28140F988 != -1)
      {
        v5 = swift_once();
      }

      v15 = off_28140F990;
      v16 = MEMORY[0x28223BE20](v5, v6);
      (*(*v15 + 136))(0xD000000000000021, v17 | 0x8000000000000000, sub_275B09408, v16);
    }
  }

  sub_275B79B5C();

  v9 = sub_275B797EC();
  MEMORY[0x28223BE20](v9, v10);
  sub_275B29E8C(&qword_280A33470, MEMORY[0x277D7F580], MEMORY[0x277D7F560]);
  v11 = sub_275B7968C();
LABEL_23:
  (*(*v2 + 96))(v11);
  sub_275B7AB1C();
  sub_275B79B7C();

  sub_275B79B8C();
}

uint64_t sub_275B28AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_275B79C5C();
  MEMORY[0x28223BE20](v3, v4);
  sub_275B29E8C(&qword_280A33478, MEMORY[0x277D7F5F0], MEMORY[0x277D7F5E8]);
  sub_275B7968C();
  return sub_275B797BC();
}

uint64_t sub_275B28BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_275B7B09C();
  MEMORY[0x277C89240](0xD000000000000010, 0x8000000275B820E0);
  sub_275B7A3FC();
  sub_275B7B0EC();
  MEMORY[0x277C89240](0x652068746977205DLL, 0xEE005B20726F7272);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AC0, &unk_275B7C2A0);
  sub_275B7B0EC();
  MEMORY[0x277C89240](11869, 0xE200000000000000);
  return sub_275B79C3C();
}

uint64_t sub_275B28D0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_275B7A44C();
  MEMORY[0x28223BE20](v2, v3);
  sub_275B29E8C(&qword_280A33480, MEMORY[0x277D7F790], MEMORY[0x277D7F788]);
  sub_275B7968C();
  return sub_275B7976C();
}

uint64_t DeleteDaemonStateAPI.deleteNotificationState(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v7 = sub_275B7A06C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33380, &qword_275B7CDD0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v31 - v18;
  v20 = *(v3 + 16);
  result = DaemonStateManager.readOrDeleteNotificationStateIfAccountChanged(currentAccount:)(a1, a2, &v31 - v18);
  if (!v4)
  {
    v22 = v11;
    v23 = v32;
    sub_275B21564(v19, v15);
    if ((*(v8 + 48))(v15, 1, v7) == 1)
    {
      sub_275B29CD4(v15, &qword_280A33380, &qword_275B7CDD0);
      if (qword_280A32CC0 != -1)
      {
        swift_once();
      }

      v24 = sub_275B7A96C();
      __swift_project_value_buffer(v24, qword_280A33458);
      sub_275B7A91C();
      sub_275B29CD4(v19, &qword_280A33380, &qword_275B7CDD0);
      v25 = 1;
    }

    else
    {
      v26 = sub_275B29D34(v15, v22, MEMORY[0x277D7F690]);
      if (qword_28140F988 != -1)
      {
        v26 = swift_once();
      }

      v28 = MEMORY[0x28223BE20](v26, v27);
      *(&v31 - 4) = v20;
      *(&v31 - 3) = sub_275B1BF98;
      *(&v31 - 2) = 0;
      (*(*v29 + 136))(0xD000000000000021, v30 | 0x8000000000000000, sub_275B1E288, v28);
      sub_275B29CD4(v19, &qword_280A33380, &qword_275B7CDD0);
      sub_275B29D34(v22, v23, MEMORY[0x277D7F690]);
      v25 = 0;
    }

    return (*(v8 + 56))(v23, v25, 1, v7);
  }

  return result;
}

uint64_t sub_275B291D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33380, &qword_275B7CDD0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v11 - v3;
  v5 = sub_275B7A06C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = DeleteDaemonStateAPI.deleteNotificationState(_:)(0, 0, v4);
  if (!v0)
  {
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_275B29CD4(v4, &qword_280A33380, &qword_275B7CDD0);
      sub_275B79B5C();
    }

    else
    {
      sub_275B29D34(v4, v9, MEMORY[0x277D7F690]);
      _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
      sub_275B79B5C();

      if (sub_275B7A04C())
      {
        sub_275B7A02C();
        sub_275B7AB6C();
        sub_275B7ABCC();
        sub_275B7AB1C();
        sub_275B79B7C();
      }

      if (sub_275B7A01C())
      {
        sub_275B79FFC();
        sub_275B7AB6C();
        sub_275B7ABCC();
        sub_275B7AB1C();
        sub_275B79B7C();
      }

      return sub_275B29D9C(v9, MEMORY[0x277D7F690]);
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeleteDaemonStateAPI.deletePFLAndPETState()()
{
  if (qword_28140F988 != -1)
  {
    v0 = swift_once();
  }

  v3 = off_28140F990;
  v4 = MEMORY[0x28223BE20](v0, v1);
  (*(*v3 + 136))(0xD000000000000021, v5 | 0x8000000000000000, sub_275B1E288, v4);
  if (!v2)
  {
    if (qword_280A32CC0 != -1)
    {
      swift_once();
    }

    v6 = sub_275B7A96C();
    __swift_project_value_buffer(v6, qword_280A33458);
    sub_275B7A91C();
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeleteDaemonStateAPI.deleteMobileAssetState()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A330F8, &qword_275B7C9A0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v33 = &v32 - v7;
  v8 = sub_275B79ABC();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v32 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + 16);
  v14 = (*(v9 + 56))(v4, 1, 1, v8, v11);
  if (qword_28140F988 != -1)
  {
    v14 = swift_once();
  }

  v16 = off_28140F990;
  v17 = MEMORY[0x28223BE20](v14, v15);
  *(&v32 - 2) = v4;
  *(&v32 - 1) = v13;
  v18 = *(*v16 + 136);
  v19 = v34;
  v18(0x6574617453746567, 0xE800000000000000, sub_275B094A8, v17);
  if (v19)
  {
    v20 = sub_275B29CD4(v4, &qword_280A330F8, &qword_275B7C9A0);
  }

  else
  {
    v22 = v4;
    v23 = v33;
    sub_275B0952C(v22, v33);
    if ((*(v9 + 48))(v23, 1, v8) == 1)
    {
      sub_275B29CD4(v23, &qword_280A330F8, &qword_275B7C9A0);
      v24 = "d with account change";
      v20 = 0xD00000000000002DLL;
    }

    else
    {
      v25 = v23;
      v26 = v32;
      sub_275B29D34(v25, v32, MEMORY[0x277D7F5A8]);
      v27 = sub_275B79A4C();
      if (v27 & 1) != 0 || (v27 = sub_275B7991C(), (v27) || (v27 = sub_275B79A8C(), (v27))
      {
        v29 = MEMORY[0x28223BE20](v27, v28);
        *(&v32 - 4) = v13;
        *(&v32 - 3) = sub_275B299F8;
        *(&v32 - 2) = 0;
        v18(0xD000000000000021, v30 | 0x8000000000000000, sub_275B1E288, v29);
        sub_275B29D9C(v26, MEMORY[0x277D7F5A8]);
        v24 = "on. Nothing was changed.";
        v20 = 0xD00000000000008ALL;
      }

      else
      {
        sub_275B29D9C(v26, MEMORY[0x277D7F5A8]);
        v24 = "not exist. Nothing to delete.";
        v20 = 0xD000000000000058;
      }
    }

    v21 = (v24 | 0x8000000000000000);
  }

  result._object = v21;
  result._countAndFlagsBits = v20;
  return result;
}

uint64_t sub_275B299F8()
{
  sub_275B79A7C();
  sub_275B7992C();
  return sub_275B79A9C();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeleteDaemonStateAPI.deleteIndBackoff()()
{
  if (qword_28140F988 != -1)
  {
    v0 = swift_once();
  }

  v2 = off_28140F990;
  v3 = MEMORY[0x28223BE20](v0, v1);
  (*(*v2 + 136))(0xD000000000000021, v4 | 0x8000000000000000, sub_275B1E288, v3);
}

uint64_t DeleteDaemonStateAPI.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_275B29BC4(uint64_t a1)
{
  if (qword_280A32CC0 != -1)
  {
    swift_once();
  }

  v1 = sub_275B7A96C();
  __swift_project_value_buffer(v1, qword_280A33458);
  sub_275B7B09C();
  MEMORY[0x277C89240](0xD00000000000002ALL, 0x8000000275B820B0);
  sub_275B79ABC();
  sub_275B7B0EC();
  MEMORY[0x277C89240](93, 0xE100000000000000);
  sub_275B7A91C();

  sub_275B79A0C();
  return sub_275B79A1C();
}

uint64_t sub_275B29CD4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_275B29D34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_275B29D9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_275B29E8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DeleteDaemonStateEvent.__allocating_init(withSink:)(void *a1)
{
  swift_allocObject();
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000011, 0x8000000275B7F560);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t DeleteDaemonStateEvent.init(withSink:)(void *a1)
{
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000011, 0x8000000275B7F560);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t DeleteDaemonStateEvent.add(categoryToDelete:)(uint64_t a1, char a2)
{
  sub_275B7B0EC();
  sub_275B79B4C();
}

uint64_t DeleteDaemonStateEvent.add(duration:)(uint64_t a1)
{
  sub_275B7AB1C();
  sub_275B79B7C();
}

uint64_t DeleteDaemonStateEvent.add(timeSinceNotifReceivedMillis:)(uint64_t a1)
{
  sub_275B7AB1C();
  sub_275B79B7C();
}

uint64_t DeleteDaemonStateEvent.add(timeToMaxDelayMillis:)(uint64_t a1)
{
  sub_275B7AB1C();
  sub_275B79B7C();
}

uint64_t DeleteDaemonStateEvent.add(wasPendingNotificationDeleted:)(uint64_t a1)
{
  sub_275B79B5C();
}

uint64_t DeleteDaemonStateEvent.add(wasSuccessful:)(uint64_t a1)
{
  sub_275B79B5C();
}

uint64_t DeleteDaemonStateEvent.__deallocating_deinit()
{
  _s33iCloudSubscriptionOptimizerDaemon0D5EventCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_275B2A4B4()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A33490);
  __swift_project_value_buffer(v0, qword_280A33490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A334B0, qword_275B7CFA8);
  return sub_275B7A97C();
}

uint64_t sub_275B2A534()
{
  v0 = sub_275B7A3EC();
  result = swift_beginAccess();
  v2 = *v0;
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v9 = MEMORY[0x277D84F90];

    sub_275B0E5B0(0, v3, 0);
    v4 = v9;
    v5 = v2 + 40;
    do
    {
      sub_275B7B0EC();
      v7 = *(v9 + 16);
      v6 = *(v9 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_275B0E5B0((v6 > 1), v7 + 1, 1);
      }

      *(v9 + 16) = v7 + 1;
      v8 = v9 + 16 * v7;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0xE000000000000000;
      v5 += 16;
      --v3;
    }

    while (v3);
  }

  static DeleteDaemonStateRequest.StateCategory.allCasesAsString = v4;
  return result;
}

uint64_t *DeleteDaemonStateRequest.StateCategory.allCasesAsString.unsafeMutableAddressor()
{
  if (qword_280A32CD0 != -1)
  {
    swift_once();
  }

  return &static DeleteDaemonStateRequest.StateCategory.allCasesAsString;
}

uint64_t static DeleteDaemonStateRequest.StateCategory.allCasesAsString.getter()
{
  if (qword_280A32CD0 != -1)
  {
    swift_once();
  }
}

uint64_t static DeleteDaemonStateRequest.StateCategory.fromString(_:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_275B7A3EC();
  swift_beginAccess();
  v3 = *v2;
  v4 = *(*v2 + 16);

  v5 = v3 + 40;
  v6 = -1;
  do
  {
    if (v6 - v4 == -1)
    {

      if (qword_280A32CC8 == -1)
      {
LABEL_9:
        v11 = sub_275B7A96C();
        __swift_project_value_buffer(v11, qword_280A33490);
        sub_275B7B09C();

        MEMORY[0x277C89240](a1, a2);
        MEMORY[0x277C89240](11869, 0xE200000000000000);
        sub_275B7A94C();
        v8 = 0;
        goto LABEL_10;
      }

LABEL_12:
      swift_once();
      goto LABEL_9;
    }

    if (++v6 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_12;
    }

    v7 = v5 + 16;
    v8 = *(v5 - 8);
    sub_275B7B0EC();
    sub_275B2AA24();
    v9 = sub_275B7B00C();

    v5 = v7;
  }

  while (v9);

  if (qword_280A32CC8 != -1)
  {
    swift_once();
  }

  v10 = sub_275B7A96C();
  __swift_project_value_buffer(v10, qword_280A33490);
  sub_275B7B09C();
  MEMORY[0x277C89240](0xD000000000000015, 0x8000000275B82180);
  MEMORY[0x277C89240](a1, a2);
  MEMORY[0x277C89240](0x5B207361205DLL, 0xE600000000000000);
  sub_275B7B0EC();
  MEMORY[0x277C89240](11869, 0xE200000000000000);
  sub_275B7A94C();
LABEL_10:

  return v8;
}

unint64_t sub_275B2AA24()
{
  result = qword_280A334A8;
  if (!qword_280A334A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A334A8);
  }

  return result;
}

uint64_t sub_275B2AA78()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A334B8);
  __swift_project_value_buffer(v0, qword_280A334B8);
  type metadata accessor for DESRecordStoreOperators();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A334E0, &qword_275B7D020);
  return sub_275B7A97C();
}

uint64_t DESRecordStoreOperators.__allocating_init(store:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_275B075DC(a1, v2 + 16);
  return v2;
}

void DESRecordStoreOperators.writeRecordToStore(data:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  v5 = _s33iCloudSubscriptionOptimizerDaemon23BuildPFLFeatureAndLabelC18pflMessageToRecord7messageSDySSypG10recordInfo_SaySfG0N4Datat01iabC4Core23SubscriptiondPFLMessageV_tFZ_0(a1);
  v7 = v6;
  v8 = sub_275B7AB5C();
  v31 = MEMORY[0x277D84A28];
  *&v30 = v8;
  sub_275B17B40(&v30, v29);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = v5;
  sub_275B2C52C(v29, 0x656D695461746144, 0xED0000706D617453, isUniquelyReferenced_nonNull_native);
  v10 = v32;
  v11 = dispatch_semaphore_create(0);
  v12 = *(v7 + 16);
  if (v12 >> 61)
  {
    __break(1u);
  }

  else
  {
    v13 = v11;
    v27 = v10;
    v28 = sub_275B2CF64((v7 + 32), 4 * v12);
    v15 = v14;

    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    v17 = (v16 + 16);
    v18 = v2[5];
    v19 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v18);
    v20 = swift_allocObject();
    v20[2] = v16;
    v20[3] = v13;
    v20[4] = v4;
    v21 = *(v19 + 8);

    v22 = v13;
    v21(v28, v15, v27, sub_275B2D014, v20, v18, v19);

    sub_275B7AF7C();
    swift_beginAccess();
    v23 = *v17;
    if (*v17)
    {
      v24 = v23;

      *&v29[0] = 0;
      *(&v29[0] + 1) = 0xE000000000000000;
      v32 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AC0, &unk_275B7C2A0);
      sub_275B7B0EC();
      v25 = v29[0];
      sub_275B2D020();
      swift_allocError();
      *v26 = v25;
      swift_willThrow();

      sub_275B1E160(v28, v15);
    }

    else
    {
    }
  }
}

void *static DESRecordStoreOperators.arrayToData(recordData:)(void *result)
{
  v1 = result[2];
  if (v1 >> 61)
  {
    __break(1u);
  }

  else
  {
    v2 = 4 * v1;
    if (4 * v1)
    {
      if (v2 <= 14)
      {
        return sub_275B2CEAC(result + 32, result + v2 + 32);
      }

      else
      {
        sub_275B7941C();
        swift_allocObject();
        sub_275B7940C();
        if (v2 >= 0x7FFFFFFF)
        {
          sub_275B7950C();
          result = swift_allocObject();
          result[2] = 0;
          result[3] = v2;
        }

        else
        {
          return (v1 << 34);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_275B2AF1C(int a1, id a2, uint64_t a3)
{
  if (a2)
  {
    v5 = a2;
    if (qword_28140E338 != -1)
    {
      swift_once();
    }

    v6 = sub_275B7A96C();
    __swift_project_value_buffer(v6, qword_280A334B8);
    sub_275B7B09C();
    MEMORY[0x277C89240](0xD00000000000002ALL, 0x8000000275B82270);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AC0, &unk_275B7C2A0);
    sub_275B7B0EC();
    MEMORY[0x277C89240](46, 0xE100000000000000);
    sub_275B7A95C();

    swift_beginAccess();
    v7 = *(a3 + 16);
    *(a3 + 16) = a2;
  }

  return sub_275B7AF8C();
}

void *DESRecordStoreOperators.fetchAllRecordsFromStore()()
{
  v1 = *v0;
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x277D84F98];
  v3 = dispatch_semaphore_create(0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v6 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v2;
  v7[4] = v3;
  v7[5] = v1;
  v13 = *(v5 + 16);

  v8 = v3;
  v13(sub_275B2D074, v7, v6, v5);

  sub_275B7AF7C();
  swift_beginAccess();
  v9 = *(v4 + 16);
  if (v9)
  {
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AC0, &unk_275B7C2A0);
    sub_275B7B0EC();
    sub_275B2D020();
    swift_allocError();
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    swift_willThrow();
  }

  else
  {

    swift_beginAccess();
    v9 = *(v2 + 16);
  }

  return v9;
}

uint64_t sub_275B2B2D0(unint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v8 = a2;
    if (qword_28140E338 != -1)
    {
      swift_once();
    }

    v9 = sub_275B7A96C();
    __swift_project_value_buffer(v9, qword_280A334B8);
    sub_275B7B09C();
    MEMORY[0x277C89240](0xD00000000000002DLL, 0x8000000275B82240);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AC0, &unk_275B7C2A0);
    sub_275B7B0EC();
    MEMORY[0x277C89240](46, 0xE100000000000000);
    sub_275B7A95C();

    swift_beginAccess();
    v10 = *(a3 + 16);
    *(a3 + 16) = a2;
  }

  if (a1)
  {
    v11 = a1;
  }

  else
  {
    v11 = sub_275B0C294(MEMORY[0x277D84F90]);
  }

  swift_beginAccess();
  *(a4 + 16) = v11;

  return sub_275B7AF8C();
}

uint64_t DESRecordStoreOperators.deleteRecordFromStore(uuid:)(uint64_t a1)
{
  v2 = *v1;
  v3 = dispatch_semaphore_create(0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = v1[5];
  v6 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v2;
  v8 = *(v6 + 24);

  v9 = v3;
  v8(a1, sub_275B2D0C0, v7, v5, v6);

  sub_275B7AF7C();
  swift_beginAccess();
  v10 = *(v4 + 16);
  if (v10)
  {
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AC0, &unk_275B7C2A0);
    sub_275B7B0EC();
    sub_275B2D020();
    swift_allocError();
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    swift_willThrow();
  }
}

uint64_t sub_275B2B668(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_28140E338 != -1)
    {
      swift_once();
    }

    v5 = sub_275B7A96C();
    __swift_project_value_buffer(v5, qword_280A334B8);
    sub_275B7B09C();
    MEMORY[0x277C89240](0xD00000000000002DLL, 0x8000000275B82210);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AC0, &unk_275B7C2A0);
    sub_275B7B0EC();
    MEMORY[0x277C89240](46, 0xE100000000000000);
    sub_275B7A95C();

    swift_beginAccess();
    v6 = *(a2 + 16);
    *(a2 + 16) = a1;
  }

  return sub_275B7AF8C();
}

uint64_t DESRecordStoreOperators.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_275B2B814(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33190, &unk_275B7C480);
  v34 = v4;
  result = sub_275B7B13C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_275B7B26C();
      sub_275B7AD7C();
      result = sub_275B7B2AC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_275B2BAB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33160, &qword_275B7C450);
  result = sub_275B7B13C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_275B7B26C();
      sub_275B7B28C();
      result = sub_275B7B2AC();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_275B2BD34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A334E8, &qword_275B7D028);
  v33 = v4;
  result = sub_275B7B13C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_275B17B40(v24, v34);
      }

      else
      {
        sub_275B0C76C(v24, v34);
      }

      sub_275B7B26C();
      sub_275B7AD7C();
      result = sub_275B7B2AC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_275B17B40(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_275B2BFEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A334D8, &qword_275B7D018);
  result = sub_275B7B13C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_275B17B40((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_275B18990(v23, &v36);
        sub_275B0C76C(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_275B7B03C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_275B17B40(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_275B2C2A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_275B180D4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_275B2B814(v16, a4 & 1);
      result = sub_275B180D4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_275B7B20C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_275B2C8B0();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

unint64_t sub_275B2C408(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_275B181A0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_275B2CA18();
    result = v17;
    goto LABEL_8;
  }

  sub_275B2BAB4(v14, a3 & 1);
  result = sub_275B181A0(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 4 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  type metadata accessor for BMNotificationUsageType(0);
  result = sub_275B7B20C();
  __break(1u);
  return result;
}

_OWORD *sub_275B2C52C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_275B180D4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_275B2CB64();
      v11 = v19;
      goto LABEL_8;
    }

    sub_275B2BD34(v16, a4 & 1);
    v11 = sub_275B180D4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_275B7B20C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_275B17B40(a1, v22);
  }

  else
  {
    sub_275B2C7C8(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_275B2C67C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_275B182A0(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_275B2CD08();
      goto LABEL_7;
    }

    sub_275B2BFEC(v13, a3 & 1);
    v19 = sub_275B182A0(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_275B18990(a2, v21);
      return sub_275B2C834(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_275B7B20C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_275B17B40(a1, v17);
}

_OWORD *sub_275B2C7C8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_275B17B40(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_275B2C834(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_275B17B40(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_275B2C8B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33190, &unk_275B7C480);
  v2 = *v0;
  v3 = sub_275B7B12C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_275B2CA18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33160, &qword_275B7C450);
  v2 = *v0;
  v3 = sub_275B7B12C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_275B2CB64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A334E8, &qword_275B7D028);
  v2 = *v0;
  v3 = sub_275B7B12C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_275B0C76C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_275B17B40(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_275B2CD08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A334D8, &qword_275B7D018);
  v2 = *v0;
  v3 = sub_275B7B12C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_275B18990(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_275B0C76C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_275B17B40(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_275B2CEAC(_BYTE *__src, _BYTE *a2)
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

unint64_t sub_275B2CF64(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_275B2CEAC(a1, &a1[a2]);
  }

  sub_275B7941C();
  swift_allocObject();
  sub_275B7940C();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_275B7950C();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t sub_275B2D020()
{
  result = qword_280A334D0;
  if (!qword_280A334D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A334D0);
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275B2D0F4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_275B7ACDC();
  v5 = [a1 valueForEntitlement_];

  if (v5)
  {
    sub_275B7B01C();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v8[0] = v9;
  v8[1] = v10;
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
      return v7;
    }
  }

  else
  {
    sub_275B2D1D0(v8);
  }

  return 0;
}

uint64_t sub_275B2D1D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A334F0, &qword_275B7D048);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EventLoggingXpcSubscriptionClient.__allocating_init(_:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_275B2DA28(a1);
}

uint64_t EventLoggingXpcSubscriptionClient.init(_:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_275B2DA5C(a1, v1);
}

uint64_t EventLoggingXpcSubscriptionClient.request(_:withReply:)(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  sub_275B7AA9C();
  v8 = sub_275B7AA8C();
  if (qword_28140F5C0 != -1)
  {
    swift_once();
  }

  sub_275B19CD4(qword_28140F5C8 + 16, v16);
  type metadata accessor for XpcCallStartedEvent();
  swift_allocObject();
  sub_275B19CD4(v16, v18);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v17[0] = qword_28140F700;
  v17[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x536C6C6143637078, 0xEE00646574726174);
  sub_275B19CD4(v18, v17);
  v9 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v16);
  sub_275B796FC();

  sub_275B79B4C();

  (*(*v9 + 200))(v10);

  v11 = *(v4 + 16);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v8;
  v12[4] = a2;
  v12[5] = a3;
  v16[4] = sub_275B2DA68;
  v16[5] = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_275B0A330;
  v16[3] = &block_descriptor_3;
  v13 = _Block_copy(v16);
  v14 = a1;

  [v11 request:v14 withReply:v13];
  _Block_release(v13);
}

uint64_t sub_275B2D5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A334F8, &unk_275B7D090);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v17[-1] - v9;
  sub_275B2DAB8(a1 + *MEMORY[0x277D7F510], &v17[-1] - v9);
  v11 = sub_275B7971C();
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    sub_275B2DB28(v10);
  }

  else
  {
    swift_getEnumCaseMultiPayload();
    sub_275B2DB90(v10);
  }

  if (qword_28140F5C0 != -1)
  {
    swift_once();
  }

  sub_275B19CD4(qword_28140F5C8 + 16, v19);
  type metadata accessor for XpcCallFinishedEvent();
  swift_allocObject();
  sub_275B19CD4(v19, v18);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v17[0] = qword_28140F700;
  v17[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x466C6C6143637078, 0xEF64656873696E69);
  sub_275B19CD4(v18, v17);
  v12 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v19);
  sub_275B796FC();

  sub_275B79B4C();

  (*(*a3 + 96))(v13);
  sub_275B7AB1C();
  sub_275B79B7C();

  sub_275B79B5C();

  (*(*v12 + 200))(v14);

  return a4(a1);
}

uint64_t EventLoggingXpcSubscriptionClient.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_275B2DA28(uint64_t a1)
{
  type metadata accessor for EventLoggingXpcSubscriptionClient();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_275B2DAB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A334F8, &unk_275B7D090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275B2DB28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A334F8, &unk_275B7D090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275B2DB90(uint64_t a1)
{
  v2 = sub_275B7971C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Feature.__allocating_init(name:value:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = sub_275B7ACDC();

  v6 = [objc_opt_self() featureValueWithString_];

  *(v4 + 24) = v6;
  *(v4 + 32) = 3;
  return v4;
}

uint64_t Feature.__allocating_init(name:value:)(char a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = [objc_opt_self() featureValueWithInt64_];
  *(v4 + 32) = 1;
  return v4;
}

uint64_t Feature.__allocating_init(name:value:)(char a1, char a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = [objc_opt_self() featureValueWithInt64_];
  *(v4 + 32) = 1;
  return v4;
}

uint64_t Feature.__allocating_init(name:value:)(char a1, double a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = [objc_opt_self() featureValueWithDouble_];
  *(v4 + 32) = 2;
  return v4;
}

uint64_t sub_275B2DDEC()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A33500);
  __swift_project_value_buffer(v0, qword_280A33500);
  type metadata accessor for Feature();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33518, &unk_275B7D0F0);
  return sub_275B7A97C();
}

uint64_t Feature.init(name:value:)(char a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = [objc_opt_self() featureValueWithInt64_];
  *(v2 + 32) = 1;
  return v2;
}

uint64_t Feature.init(name:value:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v4 = sub_275B7ACDC();

  v5 = [objc_opt_self() featureValueWithString_];

  *(v3 + 24) = v5;
  *(v3 + 32) = 3;
  return v3;
}

uint64_t Feature.init(name:value:)(char a1, double a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = [objc_opt_self() featureValueWithDouble_];
  *(v2 + 32) = 2;
  return v2;
}

uint64_t Feature.init(name:value:)(char a1, char a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = [objc_opt_self() featureValueWithInt64_];
  *(v2 + 32) = 1;
  return v2;
}

uint64_t Feature.__allocating_init(name:value:)(char a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = [objc_opt_self() featureValueWithMultiArray_];

  *(v4 + 24) = v5;
  *(v4 + 32) = 5;
  return v4;
}

uint64_t Feature.init(name:value:)(char a1, void *a2)
{
  *(v2 + 16) = a1;
  v4 = [objc_opt_self() featureValueWithMultiArray_];

  *(v2 + 24) = v4;
  *(v2 + 32) = 5;
  return v2;
}

Swift::String __swiftcall Feature.getValueToString(significantDigits:)(Swift::Int significantDigits)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v3 setUsesSignificantDigits_];
  [v3 setMaximumSignificantDigits_];
  v4 = *(v1 + 32);
  switch(v4)
  {
    case 3:
      v15 = [*(v1 + 24) stringValue];
      sub_275B7AD0C();

      v8 = sub_275B7AE3C();
      goto LABEL_13;
    case 2:
      if (significantDigits == -1 || ([*(v1 + 24) doubleValue], v11 = objc_msgSend(objc_allocWithZone(MEMORY[0x277CCABB0]), sel_initWithDouble_, v10), v7 = objc_msgSend(v3, sel_stringFromNumber_, v11), v11, !v7))
      {
        [*(v1 + 24) doubleValue];
        v8 = sub_275B7AECC();
        goto LABEL_13;
      }

      break;
    case 1:
      if (significantDigits == -1 || (v5 = [*(v1 + 24) int64Value], v6 = objc_msgSend(objc_allocWithZone(MEMORY[0x277CCABB0]), sel_initWithLongLong_, v5), v7 = objc_msgSend(v3, sel_stringFromNumber_, v6), v6, !v7))
      {
        [*(v1 + 24) int64Value];
        v8 = sub_275B7B19C();
LABEL_13:
        v12 = v8;
        v14 = v9;

        goto LABEL_14;
      }

      break;
    default:

      v14 = 0x8000000275B82340;
      v12 = 0xD000000000000016;
      goto LABEL_14;
  }

  v12 = sub_275B7AD0C();
  v14 = v13;

LABEL_14:
  v16 = v12;
  v17 = v14;
  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

Swift::tuple_names_OpaquePointer_values_OpaquePointer_optional __swiftcall Feature.floatArrayWithName()()
{
  v1 = *(v0 + 32);
  switch(v1)
  {
    case 3:
      v6 = Feature.getFloatArrayForStringFeature()();
      if (!v6.value._0._rawValue)
      {
        v6.value._1._rawValue = 0;
      }

      break;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33140, &qword_275B7C430);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_275B7D0A0;
      *(v7 + 32) = FeatureName.rawValue.getter(*(v0 + 16));
      *(v7 + 40) = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A331E0, &unk_275B7C560);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_275B7D0A0;
      [*(v0 + 24) doubleValue];
      v6.value._1._rawValue = v9;
      v6.value._0._rawValue = v7;
      *&v10 = v10;
      *(v9 + 32) = LODWORD(v10);
      break;
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33140, &qword_275B7C430);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_275B7D0A0;
      *(v2 + 32) = FeatureName.rawValue.getter(*(v0 + 16));
      *(v2 + 40) = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A331E0, &unk_275B7C560);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_275B7D0A0;
      v6.value._0._rawValue = [*(v0 + 24) int64Value];
      v6.value._1._rawValue = v4;
      rawValue = v6.value._0._rawValue;
      v6.value._0._rawValue = v2;
      *(v4 + 32) = rawValue;
      break;
    default:
      v6.value._0._rawValue = 0;
      v6.value._1._rawValue = 0;
      break;
  }

  return *&v6;
}

Swift::tuple_OpaquePointer_OpaquePointer_optional __swiftcall Feature.getFloatArrayForStringFeature()()
{
  v1 = v0;
  if (qword_280A32D80 != -1)
  {
    swift_once();
  }

  v2 = static OHEVocabulary.kStringFeatureVocabMap;
  v3 = *(v1 + 16);
  if (*(static OHEVocabulary.kStringFeatureVocabMap + 16) && (v4 = sub_275B182E4(*(v1 + 16)), (v5 & 1) != 0))
  {
    v6 = *(*(v2 + 56) + 8 * v4);

    v7 = Feature.simplifiedStringValue()();
    v8 = FeatureName.rawValue.getter(v3);
    v10 = _s33iCloudSubscriptionOptimizerDaemon12FeatureUtilsC13buildOHEArrayySaySSG5names_SaySfG6valuestAE_S2StFZ_0(v6, v7._countAndFlagsBits, v7._object, v8, v9);
    v12 = v11;

    v14 = v12;
    v15 = v10;
  }

  else
  {
    if (qword_280A32CE0 != -1)
    {
      swift_once();
    }

    v16 = sub_275B7A96C();
    __swift_project_value_buffer(v16, qword_280A33500);
    sub_275B7B09C();

    v17 = FeatureName.rawValue.getter(v3);
    MEMORY[0x277C89240](v17);

    sub_275B7A91C();

    v15 = 0;
    v14 = 0;
  }

  result.value._1._rawValue = v14;
  result.value._0._rawValue = v15;
  result.is_nil = v13;
  return result;
}

Swift::String __swiftcall Feature.simplifiedStringValue()()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 24) stringValue];
  v3 = sub_275B7AD0C();
  v5 = v4;

  if (v1 == 4)
  {
    v6 = _s33iCloudSubscriptionOptimizerDaemon12FeatureUtilsC33getSimplifiedStringForDeviceModelyS2SFZ_0(v3, v5);
  }

  else
  {
    if (v1 == 8)
    {
      _s33iCloudSubscriptionOptimizerDaemon16KnownAppBundleIdO8rawValueACSgSS_tcfC_0(v3, v5);
      sub_275B7AD1C();
    }

    v6 = sub_275B7AD2C();
  }

  v8 = v6;
  v9 = v7;

  v10 = v8;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t Feature.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t FeatureName.rawValue.getter(char a1)
{
  result = 0x6144664F72756F68;
  switch(a1)
  {
    case 1:
      result = 0x656557664F796164;
      break;
    case 2:
    case 15:
    case 24:
    case 30:
    case 44:
      result = 0xD000000000000018;
      break;
    case 3:
    case 5:
    case 6:
    case 7:
    case 12:
    case 43:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x6F4D656369766564;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
    case 46:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 13:
    case 14:
    case 22:
    case 26:
    case 27:
    case 28:
    case 29:
      result = 0xD000000000000019;
      break;
    case 16:
      result = 0xD000000000000016;
      break;
    case 17:
    case 19:
    case 25:
    case 31:
    case 32:
      result = 0xD00000000000001ELL;
      break;
    case 18:
      result = 0xD00000000000001DLL;
      break;
    case 20:
      result = 0xD000000000000016;
      break;
    case 21:
      result = 0xD000000000000013;
      break;
    case 23:
      result = 0xD000000000000016;
      break;
    case 33:
      result = 0xD00000000000001BLL;
      break;
    case 34:
    case 36:
    case 37:
    case 38:
    case 39:
      result = 0xD00000000000001FLL;
      break;
    case 35:
      result = 0xD00000000000001CLL;
      break;
    case 40:
      result = 0x4D7065656C537369;
      break;
    case 41:
    case 53:
      result = 0xD000000000000010;
      break;
    case 42:
      result = 0x6E69766972447369;
      break;
    case 45:
    case 47:
      result = 0xD000000000000017;
      break;
    case 48:
      result = 0xD000000000000016;
      break;
    case 49:
      result = 0x7265767265536C6DLL;
      break;
    case 50:
      result = 0xD000000000000016;
      break;
    case 51:
      result = 0x694D74657366666FLL;
      break;
    case 52:
      result = 0x4165727574616566;
      break;
    case 54:
      result = 0x7265695472657375;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_275B2ECB4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = FeatureName.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == FeatureName.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_275B7B1BC();
  }

  return v8 & 1;
}

uint64_t sub_275B2ED3C()
{
  v1 = *v0;
  sub_275B7B26C();
  FeatureName.rawValue.getter(v1);
  sub_275B7AD7C();

  return sub_275B7B2AC();
}

uint64_t sub_275B2EDA0(uint64_t a1)
{
  FeatureName.rawValue.getter(*v1);
  sub_275B7AD7C();
}

uint64_t sub_275B2EDF4(uint64_t a1)
{
  v2 = *v1;
  sub_275B7B26C();
  FeatureName.rawValue.getter(v2);
  sub_275B7AD7C();

  return sub_275B7B2AC();
}

unint64_t sub_275B2EE54@<X0>(Swift::String *a1@<X0>, iCloudSubscriptionOptimizerDaemon::FeatureName_optional *a2@<X8>)
{
  result = _s33iCloudSubscriptionOptimizerDaemon11FeatureNameO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_275B2EE84@<X0>(unint64_t *a1@<X8>)
{
  result = FeatureName.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon11FeatureNameO10fromStringyACSgSSFZ_0(uint64_t a1)
{
  v1 = 0;
  while (1)
  {
    if (v1 == 55)
    {
      return 55;
    }

    v2 = *(&unk_2884A7FB0 + v1 + 32);
    sub_275B7B0EC();
    v3 = sub_275B7AD2C();
    v5 = v4;

    if (v3 == sub_275B7AD2C() && v5 == v6)
    {
      break;
    }

    ++v1;
    v8 = sub_275B7B1BC();

    if (v8)
    {
      return v2;
    }
  }

  return v2;
}

char *_s33iCloudSubscriptionOptimizerDaemon11FeatureNameO14fromStringListySayACGSgSaySSGFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = a1 + 40;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = *(v2 - 8);

    v5 = _s33iCloudSubscriptionOptimizerDaemon11FeatureNameO10fromStringyACSgSSFZ_0(v4);

    if (v5 == 55)
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_275B1139C(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_275B1139C((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v3[v7 + 32] = v5;
    v2 += 16;
    if (!--v1)
    {
      return v3;
    }
  }

  return 0;
}

unint64_t _s33iCloudSubscriptionOptimizerDaemon11FeatureNameO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_275B7B1EC();

  if (v2 >= 0x37)
  {
    return 55;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_275B2F14C()
{
  result = qword_280A33520;
  if (!qword_280A33520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A33520);
  }

  return result;
}

unint64_t sub_275B2F1A4()
{
  result = qword_280A33528;
  if (!qword_280A33528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A33530, &qword_275B7D1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A33528);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCA)
  {
    goto LABEL_17;
  }

  if (a2 + 54 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 54) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 54;
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

      return (*a1 | (v4 << 8)) - 54;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 54;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x37;
  v8 = v6 - 55;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 54 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 54) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCA)
  {
    v4 = 0;
  }

  if (a2 > 0xC9)
  {
    v5 = ((a2 - 202) >> 8) + 1;
    *result = a2 + 54;
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
    *result = a2 + 54;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t FeatureProvider.__allocating_init(biomeManager:timestamp:offsetMins:offsetTimeInterval:pushTimestamp:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D84F90];
  *(v9 + 88) = MEMORY[0x277D84F90];
  v22 = v10;
  sub_275B0E5B0(0, 55, 0);
  v11 = 0;
  do
  {
    v12 = FeatureName.rawValue.getter(*(&unk_2884A7FB0 + v11 + 32));
    v15 = *(v22 + 16);
    v14 = *(v22 + 24);
    if (v15 >= v14 >> 1)
    {
      v19 = v13;
      v20 = v12;
      sub_275B0E5B0((v14 > 1), v15 + 1, 1);
      v13 = v19;
      v12 = v20;
    }

    ++v11;
    *(v22 + 16) = v15 + 1;
    v16 = v22 + 16 * v15;
    *(v16 + 32) = v12;
    *(v16 + 40) = v13;
  }

  while (v11 != 55);
  v17 = sub_275B31714(v22);

  *(v9 + 104) = v17;
  *(v9 + 112) = 0u;
  *(v9 + 128) = 0u;
  *(v9 + 144) = 0;
  sub_275B075DC(a1, v9 + 16);
  *(v9 + 56) = a2;
  *(v9 + 80) = a3;
  *(v9 + 64) = sub_275B7AC0C();
  *(v9 + 72) = a4;
  *(v9 + 96) = a5;
  return v9;
}

uint64_t sub_275B2F4C8()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A33538);
  __swift_project_value_buffer(v0, qword_280A33538);
  type metadata accessor for FeatureProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33560, &unk_275B7D2C0);
  return sub_275B7A97C();
}

uint64_t FeatureProvider.featureNames.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 104) = a1;
}

uint64_t FeatureProvider.__allocating_init(biomeManager:timestamp:offsetTimeInterval:pushTimestamp:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  *(v8 + 88) = MEMORY[0x277D84F90];
  v20 = v9;
  sub_275B0E5B0(0, 55, 0);
  v10 = 0;
  do
  {
    v11 = FeatureName.rawValue.getter(*(&unk_2884A7FB0 + v10 + 32));
    v14 = *(v20 + 16);
    v13 = *(v20 + 24);
    if (v14 >= v13 >> 1)
    {
      v18 = v12;
      v19 = v11;
      sub_275B0E5B0((v13 > 1), v14 + 1, 1);
      v12 = v18;
      v11 = v19;
    }

    ++v10;
    *(v20 + 16) = v14 + 1;
    v15 = v20 + 16 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = v12;
  }

  while (v10 != 55);
  v16 = sub_275B31714(v20);

  *(v8 + 104) = v16;
  *(v8 + 112) = 0u;
  *(v8 + 128) = 0u;
  *(v8 + 144) = 0;
  sub_275B075DC(a1, v8 + 16);
  *(v8 + 56) = a2;
  *(v8 + 64) = a2;
  *(v8 + 72) = a3;
  *(v8 + 80) = 0;
  *(v8 + 96) = a4;
  return v8;
}

uint64_t FeatureProvider.init(biomeManager:timestamp:offsetTimeInterval:pushTimestamp:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = MEMORY[0x277D84F90];
  *(v4 + 88) = MEMORY[0x277D84F90];
  v20 = v9;
  sub_275B0E5B0(0, 55, 0);
  v10 = 0;
  do
  {
    v11 = FeatureName.rawValue.getter(*(&unk_2884A7FB0 + v10 + 32));
    v14 = *(v20 + 16);
    v13 = *(v20 + 24);
    if (v14 >= v13 >> 1)
    {
      v18 = v12;
      v19 = v11;
      sub_275B0E5B0((v13 > 1), v14 + 1, 1);
      v12 = v18;
      v11 = v19;
    }

    ++v10;
    *(v20 + 16) = v14 + 1;
    v15 = v20 + 16 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = v12;
  }

  while (v10 != 55);
  v16 = sub_275B31714(v20);

  *(v4 + 104) = v16;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0;
  sub_275B075DC(a1, v4 + 16);
  *(v4 + 56) = a2;
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;
  *(v4 + 80) = 0;
  *(v4 + 96) = a4;
  return v4;
}

uint64_t FeatureProvider.init(biomeManager:timestamp:offsetMins:offsetTimeInterval:pushTimestamp:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = MEMORY[0x277D84F90];
  *(v5 + 88) = MEMORY[0x277D84F90];
  v22 = v10;
  sub_275B0E5B0(0, 55, 0);
  v11 = 0;
  do
  {
    v12 = FeatureName.rawValue.getter(*(&unk_2884A7FB0 + v11 + 32));
    v15 = *(v22 + 16);
    v14 = *(v22 + 24);
    if (v15 >= v14 >> 1)
    {
      v19 = v13;
      v20 = v12;
      sub_275B0E5B0((v14 > 1), v15 + 1, 1);
      v13 = v19;
      v12 = v20;
    }

    ++v11;
    *(v22 + 16) = v15 + 1;
    v16 = v22 + 16 * v15;
    *(v16 + 32) = v12;
    *(v16 + 40) = v13;
  }

  while (v11 != 55);
  v17 = sub_275B31714(v22);

  *(v5 + 104) = v17;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0;
  sub_275B075DC(a1, v5 + 16);
  *(v5 + 56) = a2;
  *(v5 + 80) = a3;
  *(v5 + 64) = sub_275B7AC0C();
  *(v5 + 72) = a4;
  *(v5 + 96) = a5;
  return v5;
}

Swift::Void __swiftcall FeatureProvider.setFeatureNamesToBuildFeatureArray(_:)(Swift::OpaquePointer a1)
{
  v1[11]._rawValue = a1._rawValue;
}

uint64_t FeatureProvider.biomeNotificationFeatureProvider.getter()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    sub_275B19CD4(v0 + 16, v5);
    v4 = *(v0 + 56);
    v2 = *(v0 + 72);
    type metadata accessor for BiomeNotificationFeatureProvider();
    v1 = swift_allocObject();
    *(v1 + 80) = 0u;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
    *(v1 + 128) = 0u;
    *(v1 + 144) = 0u;
    *(v1 + 160) = 0u;
    *(v1 + 176) = 0u;
    *(v1 + 192) = 0u;
    *(v1 + 208) = 0u;
    *(v1 + 224) = 0u;
    *(v1 + 240) = 0u;
    *(v1 + 256) = 0u;
    *(v1 + 272) = 0u;
    *(v1 + 288) = 0u;
    *(v1 + 304) = 0;
    sub_275B075DC(v5, v1 + 16);
    *(v1 + 56) = v4;
    *(v1 + 72) = v2;
    *(v0 + 112) = v1;
  }

  return v1;
}

void *FeatureProvider.biomeFocusFeatureProvider.getter()
{
  if (v0[15])
  {
    v1 = v0[15];
  }

  else
  {
    sub_275B19CD4((v0 + 2), v5);
    v2 = v0[7];
    v3 = v0[8];
    type metadata accessor for BiomeFocusFeatureProvider();
    v1 = swift_allocObject();
    v1[9] = 0;
    sub_275B075DC(v5, (v1 + 2));
    v1[7] = v2;
    v1[8] = v3;
    v0[15] = v1;
  }

  return v1;
}

uint64_t FeatureProvider.appLaunchFeatureProvier.getter()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    sub_275B19CD4(v0 + 16, v5);
    v4 = *(v0 + 56);
    v2 = *(v0 + 72);
    type metadata accessor for BiomeAppLaunchFeatureProvider();
    v1 = swift_allocObject();
    *(v1 + 80) = 0u;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
    *(v1 + 128) = 0;
    sub_275B075DC(v5, v1 + 16);
    *(v1 + 56) = v4;
    *(v1 + 72) = v2;
    *(v0 + 128) = v1;
  }

  return v1;
}

uint64_t FeatureProvider.usageTrackingFeatureProvider.getter()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v2 = *(v0 + 56);
    type metadata accessor for UsageTrackingFeatureProvider();
    v1 = swift_allocObject();
    *(v1 + 16) = v2;
    *(v0 + 136) = v1;
  }

  return v1;
}

void *FeatureProvider.simpleTimeFeatureProvider.getter()
{
  if (v0[18])
  {
    v1 = v0[18];
  }

  else
  {
    v2 = v0[7];
    v3 = v0[12];
    v4 = v0[10];
    type metadata accessor for SimpleTimeFeatureProvider();
    v1 = swift_allocObject();
    v1[2] = v2;
    v1[3] = v3;
    v1[4] = v4;
    v0[18] = v1;
  }

  return v1;
}

uint64_t FeatureProvider.getFeatureByName(featureName:)(uint64_t a1)
{
  if (a1 <= 0x17u)
  {
    if (a1 - 8 < 0x10)
    {
      FeatureProvider.appLaunchFeatureProvier.getter();
      v3 = BiomeAppLaunchFeatureProvider.getFeatureByName(_:)(a1);
LABEL_21:
      v5 = v3;

      return v5;
    }

    if (a1 - 2 >= 6)
    {
LABEL_20:
      FeatureProvider.simpleTimeFeatureProvider.getter();
      v3 = SimpleTimeFeatureProvider.getFeatureByName(_:)(a1);
      goto LABEL_21;
    }

    return _s33iCloudSubscriptionOptimizerDaemon23SnapshotFeatureProviderC03getF6ByNameyAA0F0CAA0fJ0OFZ_0(a1);
  }

  else
  {
    if (a1 <= 0x27u)
    {
      if (a1 - 24 >= 0xC)
      {
        FeatureProvider.biomeNotificationFeatureProvider.getter();
        v3 = BiomeNotificationFeatureProvider.getFeatureByNameICloudNotifications(_:)(a1);
      }

      else
      {
        FeatureProvider.biomeNotificationFeatureProvider.getter();
        v3 = BiomeNotificationFeatureProvider.getFeatureByNameAllNotifications(_:)(a1);
      }

      goto LABEL_21;
    }

    if (a1 < 0x31u)
    {
      FeatureProvider.biomeFocusFeatureProvider.getter();
      v3 = BiomeFocusFeatureProvider.getFeatureByName(_:)(a1);
      goto LABEL_21;
    }

    if (a1 > 0x33u)
    {
      if (a1 == 52)
      {

        return FeatureProvider.buildMultiArrayFeature()();
      }

      else
      {
        if (a1 == 53)
        {
          goto LABEL_20;
        }

        v11 = v1[5];
        v12 = v1[6];
        __swift_project_boxed_opaque_existential_1(v1 + 2, v11);
        (*(v12 + 144))(v1[7], v11, v12);
        type metadata accessor for Feature();
        v13 = swift_allocObject();
        *(v13 + 16) = 54;
        v14 = sub_275B7ACDC();

        v15 = [objc_opt_self() featureValueWithString_];

        result = v13;
        *(v13 + 24) = v15;
        *(v13 + 32) = 3;
      }
    }

    else
    {
      if (a1 != 49)
      {
        if (a1 == 50)
        {
          FeatureProvider.usageTrackingFeatureProvider.getter();
          v3 = UsageTrackingFeatureProvider.getFeatureByName(_:)(0x32u);
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      v6 = v1[5];
      v7 = v1[6];
      __swift_project_boxed_opaque_existential_1(v1 + 2, v6);
      v8 = (*(v7 + 136))(v1[7], v6, v7);
      type metadata accessor for Feature();
      v9 = swift_allocObject();
      *(v9 + 16) = 49;
      v10 = [objc_opt_self() featureValueWithDouble_];
      result = v9;
      *(v9 + 24) = v10;
      *(v9 + 32) = 2;
    }
  }

  return result;
}

MLFeatureValue_optional __swiftcall FeatureProvider.featureValue(for:)(Swift::String a1)
{
  if (_s33iCloudSubscriptionOptimizerDaemon11FeatureNameO10fromStringyACSgSSFZ_0(a1._countAndFlagsBits) == 55)
  {
    v3 = 0;
  }

  else
  {
    v4 = *((*(*v1 + 400))() + 24);

    v3 = v4;
  }

  result.value.super.isa = v3;
  result.is_nil = v2;
  return result;
}

uint64_t FeatureProvider.buildMultiArrayFeature()()
{
  *(&v0 - 1) = FeatureProvider.getFeatureArray()();
  if (v1 && (v2 = _s33iCloudSubscriptionOptimizerDaemon15FeatureProviderC019floatArrayToMLMultiH0ySo0jH0CSgSaySfGF_0(v0), , , v2))
  {
    type metadata accessor for Feature();
    v3 = swift_allocObject();
    *(v3 + 16) = 52;
    v4 = [objc_opt_self() featureValueWithMultiArray_];

    v5 = 5;
  }

  else
  {
    type metadata accessor for Feature();
    v3 = swift_allocObject();
    *(v3 + 16) = 52;
    v4 = [objc_opt_self() featureValueWithDouble_];
    v5 = 2;
  }

  *(v3 + 24) = v4;
  *(v3 + 32) = v5;
  return v3;
}

Swift::tuple_names_OpaquePointer_values_OpaquePointer_optional __swiftcall FeatureProvider.getFeatureArray()()
{
  v1 = *(v0[11] + 16);
  if (v1)
  {
    v2 = v0;
    v3 = 0;
    v25 = MEMORY[0x277D84F90];
    v26 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = v2[11];
      if (v3 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v11 = *(v10 + v3 + 32);
      v12 = (*(*v2 + 400))(v11);
      v13 = *(v12 + 32);
      if (v13 == 3)
      {
        *&v15 = Feature.getFloatArrayForStringFeature()();
        if (!v15)
        {
LABEL_16:

          if (qword_280A32CE8 != -1)
          {
            swift_once();
          }

          v20 = sub_275B7A96C();
          __swift_project_value_buffer(v20, qword_280A33538);
          strcpy(v24, "for feature ");
          BYTE5(v24[1]) = 0;
          HIWORD(v24[1]) = -5120;
          v21 = FeatureName.rawValue.getter(v11);
          MEMORY[0x277C89240](v21);

          v22 = v24[0];
          v23 = v24[1];
          v24[0] = 0xD000000000000036;
          v24[1] = 0x8000000275B823E0;
          MEMORY[0x277C89240](v22, v23);

          sub_275B7A95C();

          goto LABEL_19;
        }

        v4 = v15;
        v6 = v16;
      }

      else
      {
        if (v13 == 2)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33140, &qword_275B7C430);
          v4 = swift_allocObject();
          *(v4 + 16) = xmmword_275B7D0A0;
          *(v4 + 32) = FeatureName.rawValue.getter(*(v12 + 16));
          *(v4 + 40) = v5;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A331E0, &unk_275B7C560);
          v6 = swift_allocObject();
          *(v6 + 16) = xmmword_275B7D0A0;
          [*(v12 + 24) doubleValue];
          v8 = v7;
        }

        else
        {
          if (v13 != 1)
          {
            goto LABEL_16;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33140, &qword_275B7C430);
          v4 = swift_allocObject();
          *(v4 + 16) = xmmword_275B7D0A0;
          *(v4 + 32) = FeatureName.rawValue.getter(*(v12 + 16));
          *(v4 + 40) = v14;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A331E0, &unk_275B7C560);
          v6 = swift_allocObject();
          *(v6 + 16) = xmmword_275B7D0A0;
          v8 = [*(v12 + 24) int64Value];
        }

        *(v6 + 32) = v8;
      }

      ++v3;
      sub_275B30898(v4);
      sub_275B30754(v6);
      if (v1 == v3)
      {
        v18 = v25;
        v19 = v26;
        goto LABEL_22;
      }
    }
  }

  if (qword_280A32CE8 != -1)
  {
LABEL_21:
    swift_once();
  }

  v17 = sub_275B7A96C();
  __swift_project_value_buffer(v17, qword_280A33538);
  sub_275B7A95C();
LABEL_19:
  v18 = 0;
  v19 = 0;
LABEL_22:
  result.value.values._rawValue = v19;
  result.value.names._rawValue = v18;
  result.is_nil = v9;
  return result;
}

char *sub_275B30660(char *result)
{
  v2 = *(result + 2);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_275B11170(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
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
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}