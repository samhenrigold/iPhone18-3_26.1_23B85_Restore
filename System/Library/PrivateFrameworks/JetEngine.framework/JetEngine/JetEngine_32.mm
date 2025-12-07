__n128 MetricsEmitter.Event.eventTime.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[2];
  *a1 = result;
  return result;
}

void sub_1AB298E50(uint64_t *a1@<X8>)
{
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v2 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v2[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v2 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
    goto LABEL_23;
  }

  if (qword_1ED4D1D40 != -1)
  {
    swift_once();
  }

  v4 = sub_1AB026D00(0xD00000000000001BLL, 0x80000001AB506A00);
  if (v4 != 2 && (v4 & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90, &qword_1AB4D6A80);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1AB4D9850;
    if (qword_1ED4D0030 != -1)
    {
      swift_once();
    }

    *(v5 + 32) = sub_1AB461614();
    *(v5 + 40) = v6;
    if (qword_1ED4CFFE8 != -1)
    {
      swift_once();
    }

    *(v5 + 48) = sub_1AB461614();
    *(v5 + 56) = v7;
    if (qword_1ED4CFFE0 != -1)
    {
      swift_once();
    }

    *(v5 + 64) = sub_1AB461614();
    *(v5 + 72) = v8;
    if (qword_1ED4CFFD0 != -1)
    {
      swift_once();
    }

    *(v5 + 80) = sub_1AB461614();
    *(v5 + 88) = v9;
    goto LABEL_24;
  }

  v10 = sub_1AB17B494(0xD000000000000019, 0x80000001AB506A20);
  if (!v10)
  {
LABEL_23:
    v5 = 1;
    goto LABEL_24;
  }

  v5 = v10;
  v12[0] = 1819042084;
  v12[1] = 0xE400000000000000;
  MEMORY[0x1EEE9AC00](v10);
  v11[2] = v12;
  if (sub_1AB0A1064(sub_1AB021538, v11, v5))
  {

    v5 = 0;
  }

LABEL_24:
  *a1 = v5;
}

uint64_t static MetricsEmitter.emitterConfig.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ED4D0068 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1ED4D0070;
  *a1 = qword_1ED4D0070;

  return sub_1AB2991B8(v2);
}

uint64_t sub_1AB2991B8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1AB2991C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439718, &unk_1AB4E3D40);
  swift_allocObject();
  result = sub_1AB03356C();
  qword_1EB433138 = result;
  return result;
}

uint64_t static MetricsEmitter.eventStream.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4396E8, &qword_1AB4E3C50);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  if (qword_1EB433130 != -1)
  {
    swift_once();
  }

  (*(v1 + 104))(v3, *MEMORY[0x1E69E8650], v0);
  return sub_1AB460C84();
}

void sub_1AB2993B4()
{
  v0 = sub_1AB460514();
  v1 = NSClassFromString(v0);

  if (!v1 || ((ObjCClassMetadata = swift_getObjCClassMetadata(), (v3 = swift_conformsToProtocol2()) != 0) ? (v4 = ObjCClassMetadata == 0) : (v4 = 1), v4))
  {
    qword_1EB4396E0 = 0;
    xmmword_1EB4396C0 = 0u;
    unk_1EB4396D0 = 0u;
  }

  else
  {
    v5 = *(v3 + 8);
    qword_1EB4396D8 = ObjCClassMetadata;
    qword_1EB4396E0 = v3;
    v6 = v3;
    __swift_allocate_boxed_opaque_existential_0(&xmmword_1EB4396C0);
    v5(ObjCClassMetadata, v6);
  }
}

void sub_1AB299488(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v19 = a2;
  v18 = sub_1AB4601F4();
  v5 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB4601B4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB014A58(a1, &aBlock, &qword_1EB4396F8, &qword_1AB4E3D18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439708, &qword_1AB4E3D30);
  v12 = swift_allocObject();
  v13 = v21;
  *(v12 + 16) = aBlock;
  *(v12 + 32) = v13;
  *(v12 + 48) = v22;
  *(v12 + 64) = v23;
  v17 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439700, &unk_1AB4E3D20);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AB4D4720;
  sub_1AB4601A4();
  *&aBlock = v14;
  sub_1AB016500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540, &unk_1AB4DCF50);
  sub_1AB01649C();
  sub_1AB4614E4();
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  *(v15 + 24) = v12;
  *&v22 = sub_1AB299E1C;
  *(&v22 + 1) = v15;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v21 = sub_1AB01D528;
  *(&v21 + 1) = &block_descriptor_21_0;
  v16 = _Block_copy(&aBlock);

  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  MEMORY[0x1AC59C480](0, v7, v11, v16);
  _Block_release(v16);
  (*(v5 + 8))(v7, v18);
  (*(v9 + 8))(v11, v8);

  *v19 = v12;
}

double sub_1AB2997C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 24) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1AB2B137C(0, v4[2] + 1, 1, v4);
    *(a1 + 24) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1AB2B137C((v6 > 1), v7 + 1, 1, v4);
  }

  v4[2] = v7 + 1;
  v4[v7 + 4] = a2;
  *(a1 + 24) = v4;
  swift_endAccess();

  return result;
}

double sub_1AB299898(uint64_t a1)
{
  v2 = v1;
  v16 = sub_1AB4601F4();
  v4 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AB4601B4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439700, &unk_1AB4E3D20);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AB4D4720;
  sub_1AB4601A4();
  aBlock[0] = v11;
  sub_1AB016500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540, &unk_1AB4DCF50);
  sub_1AB01649C();
  sub_1AB4614E4();
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1AB299DD4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB01D528;
  aBlock[3] = &block_descriptor_19;
  v13 = _Block_copy(aBlock);

  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  MEMORY[0x1AC59C480](0, v6, v10, v13);
  _Block_release(v13);
  (*(v4 + 8))(v6, v16);
  (*(v8 + 8))(v10, v7);

  return result;
}

double sub_1AB299B68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(a1 + 24);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    while (*(v8 + 8 * v7) != a2)
    {
      if (v6 == ++v7)
      {
        return result;
      }
    }

    swift_beginAccess();
    sub_1AB3C1C00(v7, &v9);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1AB299C14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439710, &qword_1AB4E3D38);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v10 - v4;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  v11 = *(a1 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4396F0, &qword_1AB4E3D10);
  sub_1AB460C24();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1AB299D30(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4396F0, &qword_1AB4E3D10);

  return sub_1AB299C14(a1);
}

uint64_t objectdestroy_11Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB299E24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = result;
  v9 = *a5;
  v10 = a5[1];
  if (qword_1ED4D0068 != -1)
  {
    result = swift_once();
  }

  v11 = qword_1ED4D0070;
  if (!qword_1ED4D0070 || qword_1ED4D0070 != 1 && (*&v17 = v8, *(&v17 + 1) = a2, MEMORY[0x1EEE9AC00](result), v16[2] = &v17, , v12 = sub_1AB0A1064(sub_1AB29A030, v16, v11), result = sub_1AB29A020(v11), (v12 & 1) != 0))
  {
    if (qword_1EB435D18 != -1)
    {
      swift_once();
    }

    sub_1AB014A58(&xmmword_1EB4396C0, &v17, &qword_1EB439720, &qword_1AB4E3D50);
    if (v19)
    {
      sub_1AB0149B0(&v17, v22);
      v13 = v23;
      v14 = v24;
      __swift_project_boxed_opaque_existential_1Tm(v22, v23);
      *&v17 = v8;
      *(&v17 + 1) = a2;
      v18 = a3;
      v19 = a4;
      v20 = v9;
      v21 = v10;
      v15 = *(v14 + 16);

      v15(&v17, v13, v14);

      return __swift_destroy_boxed_opaque_existential_1Tm(v22);
    }

    else
    {
      return sub_1AB014AC0(&v17, &qword_1EB439720, &qword_1AB4E3D50);
    }
  }

  return result;
}

uint64_t sub_1AB29A020(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t NetResponse.init(status:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NetResponse(0);
  v5 = v4[9];
  v6 = sub_1AB45F764();
  v7 = *(*(v6 - 8) + 56);
  v7(a2 + v5, 1, 1, v6);
  v8 = (a2 + v4[10]);
  *a2 = (a1 - 200) < 0x64;
  *(a2 + 8) = a1;
  v9 = [objc_opt_self() localizedStringForStatusCode_];
  v10 = sub_1AB460544();
  v12 = v11;

  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  v13 = MEMORY[0x1E69E7CC0];
  *(a2 + 32) = sub_1AB0B22E0(MEMORY[0x1E69E7CC0]);
  *(a2 + 40) = 0;
  sub_1AB03BCD0(a2 + v5);
  result = (v7)(a2 + v5, 1, 1, v6);
  *v8 = 0;
  v8[1] = 0;
  *(a2 + v4[11]) = v13;
  return result;
}

uint64_t NetResponse.headers.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t NetResponse.url.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NetResponse(0) + 36);

  return sub_1AB04F3C8(a1, v3);
}

uint64_t NetResponse.body.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NetResponse(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t NetResponse.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NetResponse(0) + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t NetResponse.statusText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NetResponse.statusText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t NetResponse.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NetResponse(0) + 36);

  return sub_1AB03BC60(v3, a1);
}

uint64_t NetResponse.body.getter()
{
  v1 = *(v0 + *(type metadata accessor for NetResponse(0) + 40));

  return v1;
}

uint64_t NetResponse.metrics.getter()
{
  type metadata accessor for NetResponse(0);
}

uint64_t sub_1AB29A578(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *a1;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1AB2B13A0(0, v7[2] + 1, 1, v7);
    v7 = result;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    result = sub_1AB2B13A0((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = &unk_1AB4E3DF0;
  v11[5] = v6;
  *a1 = v7;
  return result;
}

uint64_t sub_1AB29A65C(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1AB027460;

  return v5();
}

uint64_t sub_1AB29A768(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027460;

  return sub_1AB29A65C(a1, v4);
}

void static Unstable.runLoopInstallAutoreleasePools(for:)()
{
  if (!_CFRunLoopSetPerCalloutAutoreleasepoolEnabled())
  {

    sub_1AB40FFD0("JetEngine/RunLoopAutoreleasePools.swift", 0x27uLL, 2, 0x11uLL);
  }
}

uint64_t dispatch thunk of _IntentReplayStorage.append(file:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1AB027460;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of _IntentReplayStorage.get(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AB23D808;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1AB29AB08(uint64_t a1)
{
  v2 = sub_1AB29B1E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB29AB44(uint64_t a1)
{
  v2 = sub_1AB29B1E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB29AB98(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439728, &qword_1AB4E3EE0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB29B1E8();
  sub_1AB462274();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1AB29ACAC(unint64_t *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v2);
  v4 = (*(v3 + 24))(v2, v3);
  if (!*(v4 + 16))
  {
  }

  v5 = sub_1AB014DB4(0x707954746E657665, 0xE900000000000065);
  if ((v6 & 1) == 0)
  {
  }

  sub_1AB0165C4(*(v4 + 56) + 32 * v5, &v36);

  v7 = MEMORY[0x1E69E6158];
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  if (v39 == 0x6973736572706D69 && v40 == 0xEB00000000736E6FLL)
  {
  }

  else
  {
    v9 = sub_1AB461DA4();

    if ((v9 & 1) == 0)
    {
      return result;
    }
  }

  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v10);
  v12 = (*(v11 + 24))(v10, v11);
  if (!*(v12 + 16) || (v13 = sub_1AB014DB4(0x6973736572706D69, 0xEB00000000736E6FLL), (v14 & 1) == 0))
  {

    goto LABEL_16;
  }

  sub_1AB0165C4(*(v12 + 56) + 32 * v13, &v36);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436DA8, &qword_1AB4EAC30);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v17 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1AB4D4720;
    v42 = sub_1AB0168A8(0, 39, 0, MEMORY[0x1E69E7CC0]);
    v19._object = 0x80000001AB506AD0;
    v19._countAndFlagsBits = 0xD00000000000001ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    v41 = v7;
    v39 = 0x6973736572706D69;
    v40 = 0xEB00000000736E6FLL;
    sub_1AB01522C(&v39, v35);
    v36 = 0u;
    v37 = 0u;
    sub_1AB0169C4(v35, &v36);
    v38 = 0;
    v20 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
    }

    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    if (v22 >= v21 >> 1)
    {
      v20 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
    }

    *(v20 + 2) = v22 + 1;
    v23 = &v20[40 * v22];
    v24 = v36;
    v25 = v37;
    v23[64] = v38;
    *(v23 + 2) = v24;
    *(v23 + 3) = v25;
    v42 = v20;
    sub_1AB0167A8(&v39);
    v26._countAndFlagsBits = 0x73646C6569662022;
    v26._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    *(v18 + 32) = v42;
    v27 = sub_1AB461094();
    if (os_log_type_enabled(v17, v27))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v28 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v28[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v28 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v30 = swift_allocObject();
      *(v30 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v36 = v18;
      *(&v36 + 1) = sub_1AB01A8D8;
      *&v37 = v30;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00, &unk_1AB4D6D40);
      sub_1AB016A34();
      v31 = sub_1AB460484();
      v33 = v32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10, &qword_1AB4D6D50);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1AB4D4720;
      *(v34 + 56) = v7;
      *(v34 + 64) = sub_1AB016854();
      *(v34 + 32) = v31;
      *(v34 + 40) = v33;
      sub_1AB45FF14("%{public}@", 10, 2, &dword_1AB012000, v17, v27, v34);
    }
  }

  v15 = *(v39 + 16);

  if (!v15)
  {
    v16 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    a1[3] = &type metadata for StandardMetricsFieldsBuilder;
    a1[4] = &protocol witness table for StandardMetricsFieldsBuilder;
    *a1 = v16;
  }

  return result;
}

unint64_t sub_1AB29B1E8()
{
  result = qword_1EB439730;
  if (!qword_1EB439730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB439730);
  }

  return result;
}

unint64_t sub_1AB29B250()
{
  result = qword_1EB439738;
  if (!qword_1EB439738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB439738);
  }

  return result;
}

unint64_t sub_1AB29B2A8()
{
  result = qword_1EB439740;
  if (!qword_1EB439740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB439740);
  }

  return result;
}

void ConditionallyExpressibleByJSValue<>.init(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AB0890D8(a1, v9);
  if (v4)
  {
  }

  else
  {
    v8 = sub_1AB1DAC18(MEMORY[0x1E69E7CC0]);
    JSONObject.decode<A>(_:withUserInfo:)(a2, v8, a2, a4);
    sub_1AB066D84(v9);
  }
}

uint64_t static JSValue._make(from:)(void *a1)
{
  v2 = swift_dynamicCastUnknownClass();
  if (v2)
  {
    v3 = a1;
  }

  else
  {
    swift_getMetatypeMetadata();
    v4 = a1;
    v5 = sub_1AB462314();
    v7 = v6;
    sub_1AB0C3EF0();
    swift_allocError();
    JSError.init(badValue:expected:)(v4, v5, v7, v8);
    swift_willThrow();
  }

  return v2;
}

id sub_1AB29B4CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = swift_dynamicCastUnknownClass();
  if (v4)
  {
    *a2 = v4;
    return a1;
  }

  else
  {
    swift_getMetatypeMetadata();
    v6 = a1;
    v7 = sub_1AB462314();
    v9 = v8;
    sub_1AB0C3EF0();
    swift_allocError();
    JSError.init(badValue:expected:)(v6, v7, v9, v10);
    return swift_willThrow();
  }
}

void Array<A>.init(_:)(id a1)
{
  v2 = sub_1AB460514();
  v3 = [a1 valueForProperty_];

  if (v3)
  {
    if ([v3 isNumber])
    {
      v4 = [v3 toInt32];

      MEMORY[0x1EEE9AC00](v4);
      sub_1AB4609C4();
    }

    else
    {

      sub_1AB0C3EF0();
      swift_allocError();
      v6 = v5;
      a1 = a1;
      JSError.init(badValue:expected:)(a1, 0x7961727241, 0xE500000000000000, v6);
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1AB29B6F4(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v23 = a4;
  v22 = a1;
  v10 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v15 < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v19 = v11;
  if (a3)
  {
    v16 = 0;
    v20 = v10 + 40;
    v21 = a6 + 8;
    do
    {
      v17 = *v22;
      v18 = [v23 valueAtIndex_];
      if (!v18)
      {
        goto LABEL_10;
      }

      (*(a6 + 8))(v18, a5, a6);
      if (v6)
      {
        return;
      }

      (*(v10 + 40))(v17 + *(v10 + 72) * v16++, v14, a5);
    }

    while (a3 != v16);
  }

  *v19 = a3;
}

void sub_1AB29B874(void *a1@<X0>, void *a2@<X8>)
{
  Array<A>.init(_:)(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

void Dictionary<>.init(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v6 = sub_1AB461354();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v26 = v23 - v8;
  if ([a1 isObject] && (objc_msgSend(a1, sel_isNull) & 1) == 0)
  {
    v28 = v3;
    v31 = sub_1AB4602A4();
    v12 = JSValue.propertyNames.getter();
    v25 = sub_1AB4603C4();
    sub_1AB460344();
    v24 = *(v12 + 16);
    if (v24)
    {
      v13 = 0;
      v23[1] = a2 - 8;
      v23[2] = v27 + 8;
      v14 = (v12 + 40);
      while (v13 < *(v12 + 16))
      {
        v15 = *(v14 - 1);
        v16 = *v14;

        v17 = sub_1AB460514();
        v18 = a1;
        v19 = [a1 valueForProperty_];

        if (!v19)
        {
          goto LABEL_13;
        }

        v20 = v19;
        v21 = v26;
        v22 = v28;
        (*(v27 + 8))(v20, a2);
        v28 = v22;
        if (v22)
        {

          return;
        }

        ++v13;
        (*(*(a2 - 8) + 56))(v21, 0, 1, a2);
        v29 = v15;
        v30 = v16;
        sub_1AB460424();
        v14 += 2;
        a1 = v18;
        if (v24 == v13)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
    }

    else
    {
LABEL_10:
    }
  }

  else
  {
    sub_1AB0C3EF0();
    swift_allocError();
    v10 = v9;
    v11 = a1;
    JSError.init(badValue:expected:)(v11, 0x7463656A626FLL, 0xE600000000000000, v10);
    swift_willThrow();
  }
}

void sub_1AB29BB74(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  Dictionary<>.init(_:)(a1, *(a2 + 24), *(a3 - 8));
  if (!v4)
  {
    *a4 = v6;
  }
}

uint64_t Optional<A>.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1AB461354();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  if ([a1 isUndefined] & 1) != 0 || (objc_msgSend(a1, sel_isNull))
  {

    return (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
  }

  else
  {
    result = (*(a3 + 8))(a1, a2, a3);
    if (!v4)
    {
      (*(*(a2 - 8) + 56))(v13, 0, 1, a2);
      return (*(v10 + 32))(a4, v13, v9);
    }
  }

  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Bool.init(_:)(JSValue a1)
{
  isa = a1.super.isa;
  if (([(objc_class *)a1.super.isa isBoolean]& 1) != 0)
  {
    LOBYTE(v2) = [(objc_class *)isa toBool];
  }

  else
  {
    sub_1AB0C3EF0();
    swift_allocError();
    v2 = v3;
    isa = isa;
    JSError.init(badValue:expected:)(isa, 0x6E61656C6F6F62, 0xE700000000000000, v2);
    swift_willThrow();
  }

  return v2 & 1;
}

void sub_1AB29BE2C(void *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  if ([a1 isBoolean])
  {
    v4 = [a1 toBool];

    *a2 = v4;
  }

  else
  {
    sub_1AB0C3EF0();
    swift_allocError();
    v6 = v5;
    v7 = a1;
    JSError.init(badValue:expected:)(v7, 0x6E61656C6F6F62, 0xE700000000000000, v6);
    swift_willThrow();
  }
}

void Date.init(_:)(void *a1)
{
  v1 = a1;
  if (![a1 isDate])
  {
    sub_1AB0C3EF0();
    swift_allocError();
    v5 = v4;
    v1 = v1;
    JSError.init(badValue:expected:)(v1, 1702125892, 0xE400000000000000, v5);
    swift_willThrow();
    goto LABEL_5;
  }

  v2 = [v1 toDate];
  if (v2)
  {
    v3 = v2;
    sub_1AB45F984();

LABEL_5:
    return;
  }

  __break(1u);
}

void sub_1AB29BFA8(void *a1)
{
  v1 = a1;
  if (![a1 isDate])
  {
    sub_1AB0C3EF0();
    swift_allocError();
    v5 = v4;
    v1 = v1;
    JSError.init(badValue:expected:)(v1, 1702125892, 0xE400000000000000, v5);
    swift_willThrow();
    goto LABEL_5;
  }

  v2 = [v1 toDate];
  if (v2)
  {
    v3 = v2;
    sub_1AB45F984();

LABEL_5:
    return;
  }

  __break(1u);
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Double.init(_:)(JSValue a1)
{
  if ([(objc_class *)a1.super.isa isNumber])
  {
    [(objc_class *)a1.super.isa toDouble];
    v3 = v2;

    return v3;
  }

  else
  {
    sub_1AB0C3EF0();
    swift_allocError();
    v6 = v5;
    v7 = a1.super.isa;
    JSError.init(badValue:expected:)(v7, 0x7265626D756ELL, 0xE600000000000000, v6);
    swift_willThrow();
  }

  return result;
}

void sub_1AB29C124(void *a1@<X0>, void *a2@<X8>)
{
  if ([a1 isNumber])
  {
    [a1 toDouble];
    v5 = v4;

    *a2 = v5;
  }

  else
  {
    sub_1AB0C3EF0();
    swift_allocError();
    v7 = v6;
    v8 = a1;
    JSError.init(badValue:expected:)(v8, 0x7265626D756ELL, 0xE600000000000000, v7);
    swift_willThrow();
  }
}

id static NSNull._make(from:)(void *a1)
{
  if ([a1 isNull])
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  sub_1AB0C3EF0();
  swift_allocError();
  JSError.init(badValue:expected:)(a1, 1819047278, 0xE400000000000000, v3);
  return swift_willThrow();
}

id sub_1AB29C2E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if ([a1 isNull])
  {
    result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    *a2 = result;
  }

  else
  {
    sub_1AB0C3EF0();
    swift_allocError();
    JSError.init(badValue:expected:)(a1, 1819047278, 0xE400000000000000, v5);
    return swift_willThrow();
  }

  return result;
}

CGPoint __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CGPoint.init(_:)(JSValue a1)
{
  [(objc_class *)a1.super.isa toPoint];
  v3 = v2;
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

void sub_1AB29C3D8(void *a1@<X0>, void *a2@<X8>)
{
  [a1 toPoint];
  v5 = v4;
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

__C::_NSRange __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _NSRange.init(_:)(JSValue a1)
{
  v2 = [(objc_class *)a1.super.isa toRange];
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result.length = v6;
  result.location = v5;
  return result;
}

void sub_1AB29C480(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 toRange];
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

CGSize __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CGSize.init(_:)(JSValue a1)
{
  [(objc_class *)a1.super.isa toSize];
  v3 = v2;
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

void sub_1AB29C528(void *a1@<X0>, void *a2@<X8>)
{
  [a1 toSize];
  v5 = v4;
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

__C::CGRect __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CGRect.init(_:)(JSValue a1)
{
  [(objc_class *)a1.super.isa toRect];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

void sub_1AB29C5E8(void *a1@<X0>, void *a2@<X8>)
{
  [a1 toRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v11;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> String.init(_:)(JSValue a1)
{
  if ([(objc_class *)a1.super.isa isString])
  {
    v2 = [(objc_class *)a1.super.isa toString];
    if (v2)
    {
      v4 = v2;
      v5 = sub_1AB460544();
      v7 = v6;

      v2 = v5;
      v3 = v7;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1AB0C3EF0();
    swift_allocError();
    v9 = v8;
    v10 = a1.super.isa;
    JSError.init(badValue:expected:)(v10, 0x676E69727473, 0xE600000000000000, v9);
    swift_willThrow();
  }

  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

void sub_1AB29C730(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if ([a1 isString])
  {
    v4 = [a1 toString];
    if (v4)
    {
      v5 = v4;
      v6 = sub_1AB460544();
      v8 = v7;

      *a2 = v6;
      a2[1] = v8;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1AB0C3EF0();
    swift_allocError();
    v10 = v9;
    v11 = a1;
    JSError.init(badValue:expected:)(v11, 0x676E69727473, 0xE600000000000000, v10);
    swift_willThrow();
  }
}

void sub_1AB29C82C(void *a1, SEL *a2)
{
  v3 = a1;
  if ([a1 isNumber])
  {
    [v3 *a2];
  }

  else
  {
    sub_1AB0C3EF0();
    swift_allocError();
    v5 = v4;
    v3 = v3;
    JSError.init(badValue:expected:)(v3, 0x7265626D756ELL, 0xE600000000000000, v5);
    swift_willThrow();
  }
}

void sub_1AB29C8FC(void *a1@<X0>, SEL *a2@<X3>, unsigned int *a3@<X8>)
{
  if ([a1 isNumber])
  {
    v6 = [a1 *a2];

    *a3 = v6;
  }

  else
  {
    sub_1AB0C3EF0();
    swift_allocError();
    v8 = v7;
    v9 = a1;
    JSError.init(badValue:expected:)(v9, 0x7265626D756ELL, 0xE600000000000000, v8);
    swift_willThrow();
  }
}

uint64_t sub_1AB29CA44(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1AB4601C4();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1AB45F0A4();
  v6 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = v7;
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438AC8, &unk_1AB4F2D20);
  v9 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = MEMORY[0x1E69E7CC0];
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = 0;
  v12 = *v1;
  v13 = sub_1AB45F024();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1AB29D7D8;
  *(v14 + 24) = v9;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AB29D7E0;
  *(v15 + 24) = v14;
  v45[0] = sub_1AB29D818;
  v45[1] = v15;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1AB29CF2C;
  v44 = &block_descriptor_20;
  v16 = _Block_copy(&aBlock);

  v35 = v12;
  v17 = [v12 dataTaskWithRequest:v13 completionHandler:v16];
  _Block_release(v16);

  if (v2[2])
  {
    swift_retain_n();
    v18 = v17;
    sub_1AB4610A4();
  }

  [v17 resume];
  v34 = v17;
  v19 = v2[1];
  v20 = swift_allocObject();
  v21 = *(v2 + 1);
  *(v20 + 16) = *v2;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(v2 + 2);
  *(v20 + 64) = v2[6];
  v22 = v37;
  (*(v6 + 16))(v8, a1, v37);
  v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = swift_allocObject();
  (*(v6 + 32))(v24 + v23, v8, v22);
  v25 = sub_1AB015664();
  v26 = v38;
  v27 = v39;
  v28 = v40;
  (*(v39 + 104))(v38, *MEMORY[0x1E69E7F98], v40);

  v29 = v35;
  v30 = v19;

  v31 = sub_1AB461164();
  (*(v27 + 8))(v26, v28);
  v47[3] = v25;
  v47[4] = &protocol witness table for OS_dispatch_queue;
  v47[0] = v31;
  aBlock = sub_1AB29D840;
  v42 = v20;
  v43 = sub_1AB29D848;
  v44 = v24;
  sub_1AB01494C(v47, v45);
  v46 = 0;

  sub_1AB09CF00(&aBlock);

  sub_1AB014AC0(&aBlock, &unk_1EB439880, &qword_1AB4D8A10);
  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  return v9;
}

void sub_1AB29CF2C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

uint64_t sub_1AB29CFB0(void **a1)
{
  v1 = _s9JetEngine27JSNetworkPerformanceMetricsV7metrics10fromResultSayACGSo12AMSURLResultC_tFZ_0(*a1);
  sub_1AB385E74(v1);
}

uint64_t sub_1AB29D000(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AC8, &qword_1AB4D9548);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v32 - v3;
  v4 = sub_1AB45F764();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0, &qword_1AB4D6720);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  if (qword_1ED4D1D90 != -1)
  {
    swift_once();
  }

  v37 = qword_1ED4D1D98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AB4D9850;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
  v14 = swift_allocObject();
  v40 = xmmword_1AB4D4720;
  *(v14 + 16) = xmmword_1AB4D4720;
  v15 = MEMORY[0x1E69E6158];
  *(&v45 + 1) = MEMORY[0x1E69E6158];
  *&v44 = 0xD000000000000019;
  *(&v44 + 1) = 0x80000001AB506B20;
  *(v14 + 48) = 0u;
  *(v14 + 32) = 0u;
  sub_1AB0169C4(&v44, v14 + 32);
  *(v14 + 64) = 0;
  *(v13 + 32) = v14;
  v39 = a2;
  sub_1AB45F074();
  v16 = *(v5 + 48);
  v17 = v16(v12, 1, v4);
  v34 = v5;
  if (v17 == 1)
  {
    sub_1AB014AC0(v12, &unk_1EB4395B0, &qword_1AB4D6720);
    v44 = 0u;
    v45 = 0u;
  }

  else
  {
    *(&v45 + 1) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v44);
    (*(v5 + 32))(boxed_opaque_existential_0, v12, v4);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v40;
  sub_1AB01522C(&v44, v43);
  *(v19 + 48) = 0u;
  *(v19 + 32) = 0u;
  sub_1AB0169C4(v43, v19 + 32);
  *(v19 + 64) = 2;
  *(v13 + 40) = v19;
  sub_1AB014AC0(&v44, &unk_1EB437E60, &qword_1AB4D4730);
  v20 = swift_allocObject();
  *(v20 + 16) = v40;
  *(&v45 + 1) = v15;
  *&v44 = 0x3A64656C696166;
  *(&v44 + 1) = 0xE700000000000000;
  *(v20 + 48) = 0u;
  *(v20 + 32) = 0u;
  sub_1AB0169C4(&v44, v20 + 32);
  *(v20 + 64) = 0;
  *(v13 + 48) = v20;
  swift_getErrorValue();
  v22 = v41;
  v21 = v42;
  *(&v45 + 1) = v42;
  v23 = __swift_allocate_boxed_opaque_existential_0(&v44);
  (*(*(v21 - 8) + 16))(v23, v22, v21);
  v24 = swift_allocObject();
  *(v24 + 16) = v40;
  sub_1AB01522C(&v44, v43);
  *(v24 + 48) = 0u;
  *(v24 + 32) = 0u;
  sub_1AB0169C4(v43, v24 + 32);
  *(v24 + 64) = 2;
  *(v13 + 56) = v24;
  sub_1AB014AC0(&v44, &unk_1EB437E60, &qword_1AB4D4730);
  *&v44 = v37;
  v43[0] = 0;
  OSLogger.log(contentsOf:withLevel:)(v13, v43);

  sub_1AB45F074();
  if (v16(v9, 1, v4) == 1)
  {
    return sub_1AB014AC0(v9, &unk_1EB4395B0, &qword_1AB4D6720);
  }

  v26 = v34;
  v27 = v33;
  v28 = (*(v34 + 32))(v33, v9, v4);
  if (qword_1EB433428 != -1)
  {
    v28 = swift_once();
  }

  v29 = *(qword_1EB46BEF8 + 16);
  MEMORY[0x1EEE9AC00](v28);
  *(&v32 - 2) = v27;
  os_unfair_lock_lock(v29 + 6);
  v30 = v35;
  sub_1AB19E6B4(v35);
  os_unfair_lock_unlock(v29 + 6);
  v31 = *(v26 + 8);
  v31(&v30[*(v36 + 48)], v4);
  return v31(v27, v4);
}

uint64_t sub_1AB29D5E0(uint64_t *a1, void (*a2)(uint64_t *, double))
{
  v4 = sub_1AB45F0A4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  a2(&v11, v6);
  sub_1AB42F3C4(v8);
  return (*(v5 + 8))(v8, v4);
}

void sub_1AB29D700(id *a1, id a2)
{
  if (*a1)
  {
    v5 = *a1;
    sub_1AB0B2288(v5);
    v2 = v5;

LABEL_4:

    return;
  }

  if (a2)
  {
    v4 = a2;
    sub_1AB2A1D60(a2);
    v2 = a2;

    goto LABEL_4;
  }

  sub_1AB461884();
  __break(1u);
}

uint64_t sub_1AB29D7E0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1AB29D848(uint64_t a1)
{
  v3 = *(sub_1AB45F0A4() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1AB29D000(a1, v4);
}

void *sub_1AB29D8B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v45 = a4;
  v46 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437820, &unk_1AB4D9570);
  MEMORY[0x1EEE9AC00](v47);
  v8 = (&v43 - v7);
  v9 = sub_1AB45F764();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1AB45F0A4();
  v13 = *(v48 - 8);
  v14 = MEMORY[0x1EEE9AC00](v48);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, v9, v14);
  v17 = sub_1AB45F064();
  if (qword_1EB433428 != -1)
  {
    v17 = swift_once();
  }

  v18 = *(qword_1EB46BEF8 + 16);
  MEMORY[0x1EEE9AC00](v17);
  *(&v43 - 2) = a1;
  os_unfair_lock_lock((v18 + 24));
  sub_1AB29E040((v18 + 16), &v49);
  os_unfair_lock_unlock((v18 + 24));
  if (a5)
  {
    v19 = v49;
    if (qword_1ED4D1D90 != -1)
    {
      swift_once();
    }

    v44 = qword_1ED4D1D98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v20 = swift_allocObject();
    v43 = xmmword_1AB4D4720;
    *(v20 + 16) = xmmword_1AB4D4720;
    v56 = sub_1AB0168A8(0, 40, 0, MEMORY[0x1E69E7CC0]);
    v21._object = 0x80000001AB506BA0;
    v21._countAndFlagsBits = 0xD000000000000027;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    v53 = MEMORY[0x1E69E6370];
    LOBYTE(v52[0]) = v19;
    sub_1AB01522C(v52, v55);
    v49 = 0u;
    v50 = 0u;
    sub_1AB0169C4(v55, &v49);
    v51[0] = 0;
    v22 = v56;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1AB0168A8(0, *(v22 + 2) + 1, 1, v22);
    }

    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    if (v24 >= v23 >> 1)
    {
      v22 = sub_1AB0168A8((v23 > 1), v24 + 1, 1, v22);
    }

    *(v22 + 2) = v24 + 1;
    v25 = &v22[40 * v24];
    v26 = v49;
    v27 = v50;
    v25[64] = v51[0];
    *(v25 + 2) = v26;
    *(v25 + 3) = v27;
    v56 = v22;
    sub_1AB014AC0(v52, &unk_1EB437E60, &qword_1AB4D4730);
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    *(v20 + 32) = v56;
    v29 = sub_1AB461094();
    if (os_log_type_enabled(v44, v29))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v30 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v30[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v30 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v32 = swift_allocObject();
      *(v32 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v49 = v20;
      *(&v49 + 1) = sub_1AB01A8D8;
      *&v50 = v32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00, &unk_1AB4D6D40);
      sub_1AB016A34();
      v33 = sub_1AB460484();
      v35 = v34;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10, &qword_1AB4D6D50);
      v36 = swift_allocObject();
      *(v36 + 16) = v43;
      *(v36 + 56) = MEMORY[0x1E69E6158];
      *(v36 + 64) = sub_1AB016854();
      *(v36 + 32) = v33;
      *(v36 + 40) = v35;
      sub_1AB45FF14("%{public}@", 10, 2, &dword_1AB012000, v44, v29, v36);
    }

    else
    {
    }
  }

  sub_1AB45F004();
  v37 = sub_1AB45F024();
  v38 = [v46 requestByEncodingRequest:v37 parameters:0];

  sub_1AB0C1A90(v38);
  v53 = &type metadata for SyncTaskScheduler;
  v54 = &protocol witness table for SyncTaskScheduler;
  *v8 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AE0, &qword_1AB4D9580);
  v39 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  v39[2] = v40;
  sub_1AB29E080(v8, v39 + *(*v39 + 96));
  v41 = swift_allocObject();
  v41[2] = sub_1AB29CF00;
  v41[3] = 0;
  v41[4] = v39;
  *&v49 = sub_1AB29E0F0;
  *(&v49 + 1) = v41;
  *&v50 = sub_1AB19E754;
  *(&v50 + 1) = v39;
  sub_1AB01494C(v52, v51);
  v51[40] = 0;
  swift_retain_n();

  sub_1AB0C1FD4(&v49);

  sub_1AB014AC0(&v49, &unk_1EB437760, &qword_1AB4D8BD8);
  (*(v13 + 8))(v16, v48);
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  return v39;
}

uint64_t sub_1AB29E040@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AB15A854(*(v2 + 16), *a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1AB29E080(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437820, &unk_1AB4D9570);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB29E114(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1AB29E15C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB29E464()
{
  v2 = sub_1AB2C5758(2);
  if (v1)
  {
    return v0;
  }

  v0 = v2;
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
LABEL_18:
      v14 = v3;
      sub_1AB19B9F4();
      swift_allocError();
      *v15 = 1;
      swift_willThrow();
      sub_1AB017254(v0, v14);
      return v0;
    }

    v6 = *(v2 + 16);
    v5 = *(v2 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 == 2)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
    if (v4)
    {
      goto LABEL_16;
    }

    if (BYTE6(v3) != 2)
    {
      goto LABEL_18;
    }

LABEL_9:
    while (v4 != 2)
    {
      if (v4 != 1)
      {
        sub_1AB017254(v0, v3);
        return v0;
      }

      if (v0 > v0 >> 32)
      {
        goto LABEL_27;
      }

      v9 = v3;
      v10 = sub_1AB45F414();
      if (!v10)
      {
        goto LABEL_32;
      }

      v11 = v10;
      v12 = sub_1AB45F444();
      if (__OFSUB__(v0, v12))
      {
        goto LABEL_29;
      }

      v13 = (v0 - v12 + v11);
      sub_1AB45F434();
      if (v13)
      {
        goto LABEL_23;
      }

      __break(1u);
LABEL_16:
      if (__OFSUB__(HIDWORD(v0), v0))
      {
        goto LABEL_26;
      }

      if (HIDWORD(v0) - v0 != 2)
      {
        goto LABEL_18;
      }
    }

    v17 = *(v0 + 16);
    v9 = v3;
    v18 = sub_1AB45F414();
    if (!v18)
    {
      goto LABEL_30;
    }

    v19 = v18;
    v20 = sub_1AB45F444();
    if (!__OFSUB__(v17, v20))
    {
      v13 = (v17 - v20 + v19);
      sub_1AB45F434();
      if (!v13)
      {
        goto LABEL_31;
      }

LABEL_23:
      v21 = *v13;
      sub_1AB017254(v0, v9);
      return v21;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  sub_1AB45F434();
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1AB45F434();
  __break(1u);
  return result;
}

uint64_t JetPackageFormatError.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

unint64_t sub_1AB29E6B8()
{
  result = qword_1EB439748;
  if (!qword_1EB439748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB439748);
  }

  return result;
}

void *sub_1AB29E71C()
{
  if (*(v0 + 56))
  {
    sub_1AB29F1B8();
    swift_allocError();
    *v2 = 0;
    swift_willThrow();
    return v0;
  }

  v3 = v0[5];
  v4 = v0[6];
  v5 = v0;
  v0 = __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v3);
  v6 = (*(v4 + 24))(8, v3, v4);
  if (v1)
  {
    return v0;
  }

  if (qword_1EB4356F0 != -1)
  {
    v0 = v6;
    v29 = v7;
    swift_once();
    v6 = v0;
    v7 = v29;
  }

  v8 = v6;
  v9 = v7;
  if (!sub_1AB0672FC(v6, v7, qword_1EB46C2B0, *algn_1EB46C2B8))
  {
    sub_1AB29F1B8();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
    sub_1AB017254(v8, v9);
    return v0;
  }

  v10 = v5[5];
  v11 = v5[6];
  __swift_project_boxed_opaque_existential_1Tm(v5 + 2, v10);
  v12 = (*(v11 + 24))(1, v10, v11);
  v14 = v13;
  v15 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v15 != 2)
    {
      v0 = 0;
      v16 = v5;
      goto LABEL_23;
    }

    v19 = v12;
    v20 = *(v12 + 16);
    v21 = sub_1AB45F414();
    if (!v21)
    {
      goto LABEL_27;
    }

    v22 = v21;
    v23 = sub_1AB45F444();
    if (__OFSUB__(v20, v23))
    {
      goto LABEL_25;
    }

    v24 = (v20 - v23 + v22);
    v12 = sub_1AB45F434();
    if (v24)
    {
LABEL_21:
      v0 = *v24;
      v16 = v5;
      v12 = v19;
      goto LABEL_23;
    }

    __break(1u);
  }

  else if (!v15)
  {
    v16 = v5;
    v0 = v12;
LABEL_23:
    sub_1AB017254(v12, v14);
    sub_1AB017254(v8, v9);
    *(v16 + 56) = 1;
    return v0;
  }

  v25 = v12;
  if (v12 > v12 >> 32)
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    sub_1AB45F434();
    __break(1u);
    goto LABEL_28;
  }

  v19 = v12;
  v26 = sub_1AB45F414();
  if (!v26)
  {
LABEL_28:
    result = sub_1AB45F434();
    goto LABEL_29;
  }

  v27 = v26;
  v28 = sub_1AB45F444();
  if (__OFSUB__(v25, v28))
  {
    goto LABEL_26;
  }

  v24 = (v25 - v28 + v27);
  result = sub_1AB45F434();
  if (v24)
  {
    goto LABEL_21;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1AB29E9BC@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 56) == 1)
  {
    v3 = v1;
    v5 = *(v1 + 40);
    v6 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_1Tm((v3 + 16), v5);
    result = sub_1AB19B940(v5, v6);
    if (!v2)
    {
      v8 = result;
      v9 = *(v3 + 40);
      v10 = *(v3 + 48);
      __swift_project_boxed_opaque_existential_1Tm((v3 + 16), v9);
      result = (*(v10 + 24))(v8, v9, v10);
      v12 = v11 >> 62;
      if ((v11 >> 62) > 1)
      {
        if (v12 != 2)
        {
          if (!v8)
          {
            goto LABEL_15;
          }

LABEL_17:
          v21 = v11;
          v22 = result;
          sub_1AB29F1B8();
          swift_allocError();
          *v23 = 2;
          swift_willThrow();
          return sub_1AB017254(v22, v21);
        }

        v16 = *(result + 16);
        v15 = *(result + 24);
        v17 = __OFSUB__(v15, v16);
        v13 = v15 - v16;
        if (!v17)
        {
LABEL_14:
          if (v13 == v8)
          {
LABEL_15:
            v18 = result;
            v19 = v11;
            sub_1AB29EBA4(result, v11, v24);
            result = sub_1AB017254(v18, v19);
            *(v3 + 56) = 2;
            v20 = v24[1];
            *a1 = v24[0];
            *(a1 + 16) = v20;
            *(a1 + 32) = v24[2];
            *(a1 + 48) = v25;
            return result;
          }

          goto LABEL_17;
        }

        __break(1u);
      }

      else if (!v12)
      {
        v13 = BYTE6(v11);
        goto LABEL_14;
      }

      LODWORD(v13) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v13 = v13;
        goto LABEL_14;
      }

      __break(1u);
    }
  }

  else
  {
    sub_1AB29F1B8();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  return result;
}

void sub_1AB29EBA4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3;
  v10 = type metadata accessor for DataInputStream();
  v11 = swift_allocObject();
  v12 = a2;
  v13 = v11;
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v14 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v14)
    {
      v15 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v15 = 0;
  if (v14 != 2)
  {
    goto LABEL_11;
  }

  v17 = *(a1 + 16);
  v16 = *(a1 + 24);
  v15 = v16 - v17;
  if (__OFSUB__(v16, v17))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      goto LABEL_28;
    }

    v15 = HIDWORD(a1) - a1;
  }

  sub_1AB017200(a1, v12);
LABEL_11:
  v13[4] = v15;
  v18 = sub_1AB2C5758(2);
  if (v3)
  {
LABEL_12:

    return;
  }

  v20 = v18;
  v21 = v19;
  sub_1AB29EFFC(v18, v19, v54);
  sub_1AB017254(v20, v21);
  LODWORD(v21) = v54[0];
  v5 = v54[1];
  v22 = sub_1AB2C5758(2);
  v57 = v21;
  v23 = v22;
  v25 = v24;
  sub_1AB29EFFC(v22, v24, v54);
  sub_1AB017254(v23, v25);
  v4 = v54[1];
  v53 = v54[0];
  v26 = sub_1AB2C5758(2);
  v28 = v27;
  sub_1AB29EFFC(v26, v27, v54);
  sub_1AB017254(v26, v28);
  if (v54[1])
  {
    sub_1AB29F1B8();
    swift_allocError();
    *v29 = 2;
    swift_willThrow();
    goto LABEL_12;
  }

  LOBYTE(a1) = v54[0];
  v6 = &off_1F20079E0;
  v55 = v10;
  v56 = &off_1F20079E0;
  *v54 = v13;

  v51 = sub_1AB29F20C(v54);
  v52 = v30;
  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  v31 = v13[2];
  v32 = v13[3];
  v33 = v32 >> 62;
  if ((v32 >> 62) <= 1)
  {
    if (!v33)
    {
      v34 = BYTE6(v32);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (v33 != 2)
  {
    goto LABEL_26;
  }

  v36 = *(v31 + 16);
  v35 = *(v31 + 24);
  v37 = __OFSUB__(v35, v36);
  v34 = v35 - v36;
  if (v37)
  {
    __break(1u);
LABEL_22:
    LODWORD(v34) = HIDWORD(v31) - v31;
    if (__OFSUB__(HIDWORD(v31), v31))
    {
      __break(1u);
      goto LABEL_49;
    }

    v34 = v34;
  }

LABEL_24:
  if (v34)
  {
    LOWORD(v11) = sub_1AB29E464();
LABEL_28:
    v50 = v11;
    v31 = v13[2];
    v32 = v13[3];
    v33 = v32 >> 62;
    goto LABEL_29;
  }

LABEL_26:
  v50 = 0;
LABEL_29:
  if (v33 > 1)
  {
    if (v33 != 2)
    {
      goto LABEL_41;
    }

    v40 = v31 + 16;
    v38 = *(v31 + 16);
    v39 = *(v40 + 8);
    v37 = __OFSUB__(v39, v38);
    v31 = v39 - v38;
    if (!v37)
    {
LABEL_38:
      if (v31)
      {
        v55 = v10;
        v56 = v6;
        *v54 = v13;
        v41 = sub_1AB2C5758(2);
        if (v3)
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v54);
          return;
        }

        v46 = v41;
        v47 = v42;
        sub_1AB29EFFC(v41, v42, v58);
        sub_1AB017254(v46, v47);
        if ((v58[1] & 1) != 0 || (v43 = v58[0], v48 = sub_1AB29F434(v54), v45 = v49, v49 >> 60 == 15))
        {
          v43 = 0;
          v44 = 0;
          v45 = 0xF000000000000000;
        }

        else
        {
          v44 = v48;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        goto LABEL_42;
      }

LABEL_41:

      v43 = 0;
      v44 = 0;
      v45 = 0xF000000000000000;
LABEL_42:
      v54[0] = v5;
      v58[0] = v4;
      *a3 = v57;
      *(a3 + 1) = v5;
      *(a3 + 2) = v53;
      *(a3 + 3) = v4;
      *(a3 + 4) = a1;
      *(a3 + 8) = v51;
      *(a3 + 16) = v52;
      *(a3 + 24) = v50;
      *(a3 + 32) = v43;
      *(a3 + 40) = v44;
      *(a3 + 48) = v45;
      return;
    }

    __break(1u);
  }

  else if (!v33)
  {
    v31 = BYTE6(v32);
    goto LABEL_38;
  }

  v37 = __OFSUB__(HIDWORD(v31), v31);
  LODWORD(v31) = HIDWORD(v31) - v31;
  if (!v37)
  {
    v31 = v31;
    goto LABEL_38;
  }

LABEL_49:
  __break(1u);
}

uint64_t sub_1AB29EFFC@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v5 = *(result + 16);
      v4 = *(result + 24);
      v6 = __OFSUB__(v4, v5);
      v7 = v4 - v5;
      if (v6)
      {
        __break(1u);
        goto LABEL_16;
      }

      if (v7 == 2)
      {
        goto LABEL_8;
      }
    }

LABEL_14:
    sub_1AB31D6E0(0xD000000000000029, 0x80000001AB506C50);
    sub_1AB29F1B8();
    swift_allocError();
    *v9 = 2;
    return swift_willThrow();
  }

  if (!v3)
  {
    if (BYTE6(a2) != 2)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (HIDWORD(result) - result != 2)
  {
    goto LABEL_14;
  }

LABEL_8:
  result = sub_1AB45F814();
  if (result == 1 && (result = sub_1AB45F814(), result))
  {
    *a3 = result - 1;
    a3[1] = 0;
  }

  else
  {
    *a3 = 256;
  }

  return result;
}

unint64_t sub_1AB29F164()
{
  result = qword_1EB439750;
  if (!qword_1EB439750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB439750);
  }

  return result;
}

unint64_t sub_1AB29F1B8()
{
  result = qword_1EB432CC8;
  if (!qword_1EB432CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432CC8);
  }

  return result;
}

char *sub_1AB29F20C(void *a1)
{
  v3 = sub_1AB4605C4();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v6);
  v8 = sub_1AB19B8E0(v6, v7);
  if (v1)
  {
    return v5;
  }

  v10 = v8;
  if (!v8)
  {
    return 0;
  }

  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v11);
  result = (*(v12 + 24))(v10, v11, v12);
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v16 = *(result + 2);
      v15 = *(result + 3);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v18 == v10)
      {
        goto LABEL_13;
      }
    }

LABEL_16:
    v5 = v13;
    v21 = result;
    sub_1AB31D6E0(0xD000000000000033, 0x80000001AB506C80);
    sub_1AB29F1B8();
    swift_allocError();
    *v22 = 2;
    swift_willThrow();
    sub_1AB017254(v21, v5);
    return v5;
  }

  if (!v14)
  {
    if (BYTE6(v13) != v10)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    if (HIDWORD(result) - result != v10)
    {
      goto LABEL_16;
    }

LABEL_13:
    v23[0] = result;
    v23[1] = v13;
    v19 = v13;
    v20 = result;
    sub_1AB460594();
    sub_1AB29F5A4();
    v5 = sub_1AB460574();
    sub_1AB017254(v20, v19);
    return v5;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1AB29F434(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  result = sub_1AB19B8E0(v3, v4);
  if (!v1)
  {
    v6 = result;
    if (!result)
    {
      return 0;
    }

    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, v7);
    result = (*(v8 + 24))(v6, v7, v8);
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 != 2)
      {
        goto LABEL_15;
      }

      v13 = *(result + 16);
      v12 = *(result + 24);
      v14 = __OFSUB__(v12, v13);
      v11 = v12 - v13;
      if (!v14)
      {
LABEL_14:
        if (v11 == v6)
        {
          return result;
        }

LABEL_15:
        v15 = v9;
        v16 = result;
        sub_1AB31D6E0(0xD000000000000031, 0x80000001AB506C10);
        sub_1AB29F1B8();
        swift_allocError();
        *v17 = 2;
        swift_willThrow();
        return sub_1AB017254(v16, v15);
      }

      __break(1u);
    }

    else if (!v10)
    {
      v11 = BYTE6(v9);
      goto LABEL_14;
    }

    LODWORD(v11) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      return result;
    }

    v11 = v11;
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_1AB29F5A4()
{
  result = qword_1EB4358E0;
  if (!qword_1EB4358E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4358E0);
  }

  return result;
}

uint64_t sub_1AB29F608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB01EC0C(a1, v11);
  v4 = v12;
  if (v12)
  {
    v5 = v13;
    __swift_project_boxed_opaque_existential_1Tm(v11, v12);
    (*(v5 + 160))(&v14, v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    if (*(&v15 + 1))
    {
      result = sub_1AB066D84(a1);
      v7 = v16;
      v19 = v16;
      v8 = v15;
      v17 = v14;
      v18 = v15;
      *a2 = v14;
      *(a2 + 16) = v8;
      *(a2 + 32) = v7;
      return result;
    }
  }

  else
  {
    sub_1AB014AC0(v11, &qword_1EB436BA0, &qword_1AB4D4F40);
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
  }

  sub_1AB014AC0(&v14, &qword_1EB436BC0, &qword_1AB4D52B0);
  sub_1AB163664();
  swift_allocError();
  v9 = MEMORY[0x1E69E7CC0];
  *v10 = &type metadata for LocalizedStringsJSONObject;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;
  swift_willThrow();
  return sub_1AB066D84(a1);
}

uint64_t sub_1AB29F748@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[5] = *MEMORY[0x1E69E9840];
  if (qword_1EB4356D0 != -1)
  {
    swift_once();
  }

  if (sub_1AB0672FC(qword_1EB46C2A0, *algn_1EB46C2A8, a1, a2))
  {
    v6 = 0x1E695DF20;
    v7 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
    v8 = qword_1ED4D1BA0;
LABEL_9:
    v18 = sub_1AB016760(0, v8, v6);
    *&v17 = v7;
LABEL_10:
    sub_1AB014B78(&v17, v16);
    sub_1AB0165C4(v16, &v17);
    v19[3] = &type metadata for FoundationValue;
    v19[4] = &off_1F1FFB5A8;
    v19[0] = swift_allocObject();
    sub_1AB014B78(&v17, (v19[0] + 16));
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    sub_1AB0B9254(v19, v16);
    sub_1AB29F608(v16, a3);
    sub_1AB066D84(v19);
    return sub_1AB017254(a1, a2);
  }

  if (qword_1EB4356D8 != -1)
  {
    swift_once();
  }

  if (sub_1AB0672FC(qword_1EB46C248, unk_1EB46C250, a1, a2))
  {
    v6 = 0x1E695DEC8;
    v7 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) init];
    v8 = &qword_1ED4D0BE0;
    goto LABEL_9;
  }

  v10 = objc_opt_self();
  v11 = sub_1AB45F834();
  v15 = 0;
  v12 = [v10 JSONObjectWithData:v11 options:4 error:&v15];

  v13 = v15;
  if (v12)
  {
    sub_1AB461494();
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v14 = v13;
  sub_1AB45F594();

  swift_willThrow();
  return sub_1AB017254(a1, a2);
}

uint64_t sub_1AB29F9EC(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v5);
  (*(v6 + 24))(v13, a1, a2, v5, v6);
  sub_1AB01EC0C(v13, v10);
  v7 = v11;
  if (v11)
  {
    v8 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v7 = (*(v8 + 24))(v7, v8);
    sub_1AB066D84(v13);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    sub_1AB066D84(v13);
    sub_1AB014AC0(v10, &qword_1EB436BA0, &qword_1AB4D4F40);
  }

  return v7;
}

uint64_t sub_1AB29FAF0()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  return (*(v2 + 56))(v1, v2);
}

id sub_1AB29FB48()
{
  result = [v0 context];
  if (result)
  {
    v2 = result;
    v3 = [result JSGlobalContextRef];

    v4 = JSValueToStringCopy(v3, [v0 JSValueRef], 0);
    if (v4)
    {
      v5 = v4;
      v6 = sub_1AB158D50(v4);
      JSStringRelease(v5);
    }

    else
    {
      sub_1AB0C3EF0();
      v7 = swift_allocError();
      v9 = v8;
      v10 = v0;
      JSError.init(badValue:expected:)(v10, 0x676E69727453, 0xE600000000000000, v9);
      swift_willThrow();
      v11 = [v10 toString];
      if (v11)
      {
        v12 = v11;
        v6 = sub_1AB460544();
      }

      else
      {

        return 0;
      }
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AsyncEvent.__allocating_init()()
{
  v0 = swift_allocObject();
  AsyncEvent.init()();
  return v0;
}

double AsyncEvent.removeObserver(_:)(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1AB4601F4();
  v17 = *(v4 - 8);
  v18 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AB4601B4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16[1] = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439700, &unk_1AB4E3D20);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AB4D4720;
  sub_1AB4601A4();
  aBlock[0] = v12;
  sub_1AB0204F0(&qword_1ED4D2050, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540, &unk_1AB4DCF50);
  sub_1AB01CB68(&qword_1ED4D1FB0, &qword_1EB438540, &unk_1AB4DCF50);
  sub_1AB4614E4();
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = v11;
  aBlock[4] = sub_1AB2A0344;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB01D528;
  aBlock[3] = &block_descriptor_12_0;
  v14 = _Block_copy(aBlock);

  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  MEMORY[0x1AC59C480](0, v6, v10, v14);
  _Block_release(v14);
  (*(v17 + 8))(v6, v18);
  (*(v8 + 8))(v10, v7);

  return result;
}

double sub_1AB29FFDC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  type metadata accessor for EventSubscription(255, *(v2 + 80), v3, v4);
  sub_1AB460A64();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1AB460F74();
  if (v6 != 1)
  {
    swift_beginAccess();
    sub_1AB460A24();
    swift_endAccess();
  }

  return result;
}

void sub_1AB2A00FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EventSubscription(0, *(*a2 + 80), a3, a4);
  if (sub_1AB4609F4())
  {
    swift_beginAccess();
    v4 = 4;
    do
    {
      v5 = v4 - 4;
      v6 = sub_1AB4609D4();
      sub_1AB460974();
      if (v6)
      {

        v7 = v4 - 3;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_1AB461644();
        v7 = v4 - 3;
        if (__OFADD__(v5, 1))
        {
LABEL_10:
          __break(1u);
          return;
        }
      }

      sub_1AB460A64();
      swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1AB460F74();
      if (v8 != 1)
      {
        swift_beginAccess();
        sub_1AB460A24();
        swift_endAccess();
      }

      ++v4;
    }

    while (v7 != sub_1AB4609F4());
  }
}

uint64_t AsyncEvent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1AB2A0390(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v25, &unk_1EB43D1E0, &qword_1AB4E4548);
  if (v26 == 3)
  {
    sub_1AB014AC0(v25, &unk_1EB43D1E0, &qword_1AB4E4548);
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (v26)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = v25[0];
    v23[0] = a1;
    v24 = 2;
    swift_beginAccess();
    v4 = a1;
    sub_1AB017CC4(v23, v1 + 24, &unk_1EB43D1E0, &qword_1AB4E4548);
    swift_endAccess();
    os_unfair_lock_unlock(v2 + 4);
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = v3 + 32;
      do
      {
        sub_1AB014A58(v6, v23, &unk_1EB4397A0, &unk_1AB4E4550);
        sub_1AB014A58(v23, v20, &unk_1EB4397A0, &unk_1AB4E4550);
        if (v22)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v7 = a1;
          v8 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v23, &unk_1EB4397A0, &unk_1AB4E4550);
        }

        else
        {

          v10 = v20[2];
          v9 = v20[3];
          sub_1AB0149B0(&v21, v17);
          v11 = v18;
          v12 = v19;
          __swift_project_boxed_opaque_existential_1Tm(v17, v18);
          v13 = swift_allocObject();
          v13[2] = v10;
          v13[3] = v9;
          v13[4] = a1;
          v14 = *(v12 + 8);
          v15 = a1;

          v14(sub_1AB0C6054, v13, v11, v12);

          sub_1AB014AC0(v23, &unk_1EB4397A0, &unk_1AB4E4550);
          __swift_destroy_boxed_opaque_existential_1Tm(v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB2A0680(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    *(v1 + 24) = a1;
    *(v1 + 32) = 2;
    v4 = a1;
    os_unfair_lock_unlock(v2 + 4);
    v5 = v3[2];
    if (v5)
    {
      v20 = v3;
      v6 = (v3 + 4);
      v7 = &unk_1EB43D1D0;
      do
      {
        sub_1AB014A58(v6, v28, v7, &qword_1AB4F2EA0);
        sub_1AB014A58(v28, v25, v7, &qword_1AB4F2EA0);
        if (v27)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v8 = a1;
          v9 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v28, v7, &qword_1AB4F2EA0);
        }

        else
        {

          v10 = v7;
          v12 = v25[2];
          v11 = v25[3];
          sub_1AB0149B0(&v26, v22);
          v13 = v23;
          v14 = v24;
          __swift_project_boxed_opaque_existential_1Tm(v22, v23);
          v15 = swift_allocObject();
          v15[2] = v12;
          v15[3] = v11;
          v15[4] = a1;
          v16 = *(v14 + 8);
          v17 = a1;

          v16(sub_1AB03D800, v15, v13, v14);
          v7 = v10;

          sub_1AB014AC0(v28, v10, &qword_1AB4F2EA0);
          __swift_destroy_boxed_opaque_existential_1Tm(v22);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
      v18 = MEMORY[0x1E69E7D48];
      v19 = v20;
    }

    else
    {
      v18 = MEMORY[0x1E69E7D48];
      v19 = v3;
    }

    sub_1AB023CD0(v19, 0, v18);
  }
}

void sub_1AB2A0934(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v25, &unk_1EB43D2A0, &unk_1AB4E46F0);
  if (v26 == 3)
  {
    sub_1AB014AC0(v25, &unk_1EB43D2A0, &unk_1AB4E46F0);
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (v26)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = v25[0];
    v23[0] = a1;
    v24 = 2;
    swift_beginAccess();
    v4 = a1;
    sub_1AB017CC4(v23, v1 + 24, &unk_1EB43D2A0, &unk_1AB4E46F0);
    swift_endAccess();
    os_unfair_lock_unlock(v2 + 4);
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = v3 + 32;
      do
      {
        sub_1AB014A58(v6, v23, &unk_1EB4376A0, &unk_1AB4D8B10);
        sub_1AB014A58(v23, v20, &unk_1EB4376A0, &unk_1AB4D8B10);
        if (v22)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v7 = a1;
          v8 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v23, &unk_1EB4376A0, &unk_1AB4D8B10);
        }

        else
        {

          v10 = v20[2];
          v9 = v20[3];
          sub_1AB0149B0(&v21, v17);
          v11 = v18;
          v12 = v19;
          __swift_project_boxed_opaque_existential_1Tm(v17, v18);
          v13 = swift_allocObject();
          v13[2] = v10;
          v13[3] = v9;
          v13[4] = a1;
          v14 = *(v12 + 8);
          v15 = a1;

          v14(sub_1AB0C6054, v13, v11, v12);

          sub_1AB014AC0(v23, &unk_1EB4376A0, &unk_1AB4D8B10);
          __swift_destroy_boxed_opaque_existential_1Tm(v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB2A0C24(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    sub_1AB090188(v3, 0);
    v4 = a1;
    *(v1 + 24) = a1;
    *(v1 + 32) = 2;
    sub_1AB023CD0(v3, 0, MEMORY[0x1E69E7D60]);
    os_unfair_lock_unlock(v2 + 4);
    v5 = v3[2];
    if (v5)
    {
      v20 = v3;
      v6 = (v3 + 4);
      v7 = &unk_1EB4397E0;
      do
      {
        sub_1AB014A58(v6, v28, v7, &unk_1AB4E45A0);
        sub_1AB014A58(v28, v25, v7, &unk_1AB4E45A0);
        if (v27)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v8 = a1;
          v9 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v28, v7, &unk_1AB4E45A0);
        }

        else
        {

          v10 = v7;
          v12 = v25[2];
          v11 = v25[3];
          sub_1AB0149B0(&v26, v22);
          v13 = v23;
          v14 = v24;
          __swift_project_boxed_opaque_existential_1Tm(v22, v23);
          v15 = swift_allocObject();
          v15[2] = v12;
          v15[3] = v11;
          v15[4] = a1;
          v16 = *(v14 + 8);
          v17 = a1;

          v16(sub_1AB0C6054, v15, v13, v14);
          v7 = v10;

          sub_1AB014AC0(v28, v10, &unk_1AB4E45A0);
          __swift_destroy_boxed_opaque_existential_1Tm(v22);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
      v18 = MEMORY[0x1E69E7D60];
      v19 = v20;
    }

    else
    {
      v18 = MEMORY[0x1E69E7D60];
      v19 = v3;
    }

    sub_1AB023CD0(v19, 0, v18);
  }
}

void sub_1AB2A0F38(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (*(v5 + 32) == 3)
  {
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (*(v5 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v9 = *(v5 + 24);
    *(v5 + 24) = a1;
    *(v5 + 32) = 2;
    v10 = a1;
    os_unfair_lock_unlock(v8 + 4);
    v11 = v9[2];
    if (v11)
    {
      v24 = v9;
      v25 = a2;
      v12 = (v9 + 4);
      do
      {
        sub_1AB014A58(v12, v34, a2, a3);
        sub_1AB014A58(v34, v31, a2, a3);
        if (v33)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v13 = a1;
          v14 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v34, a2, a3);
        }

        else
        {

          v15 = v31[2];
          v16 = v31[3];
          sub_1AB0149B0(&v32, v28);
          v18 = v29;
          v17 = v30;
          __swift_project_boxed_opaque_existential_1Tm(v28, v29);
          v19 = swift_allocObject();
          v19[2] = v15;
          v19[3] = v16;
          v19[4] = a1;
          v20 = a3;
          v21 = *(v17 + 8);
          v22 = a1;

          v21(a5, v19, v18, v17);
          a3 = v20;
          a2 = v25;

          sub_1AB014AC0(v34, v25, a3);
          __swift_destroy_boxed_opaque_existential_1Tm(v28);
        }

        v12 += 80;
        --v11;
      }

      while (v11);
      v23 = v24;
    }

    else
    {
      v23 = v9;
    }

    sub_1AB0171C8(v23, 0);
  }
}

void sub_1AB2A11A8(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  v3 = *(v1 + 32);
  if (*(v1 + 56) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 56))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 24);
    v5 = *(v1 + 40);
    v6 = *(v1 + 48);
    sub_1AB2AB398(v4, *(v1 + 32), v5, v6, 0);
    v7 = a1;
    *(v1 + 24) = a1;
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    *(v1 + 32) = 0;
    *(v1 + 56) = 2;
    sub_1AB199B30(v4, v3, v5, v6, 0);
    os_unfair_lock_unlock(v2 + 4);
    v8 = *(v4 + 16);
    if (v8)
    {
      v25 = v5;
      v26 = v4;
      v27 = v3;
      v28 = v6;
      v9 = v4 + 32;
      v10 = &unk_1AB4E46E0;
      do
      {
        sub_1AB014A58(v9, v36, &unk_1EB43D290, v10);
        sub_1AB014A58(v36, v33, &unk_1EB43D290, v10);
        if (v35)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v11 = a1;
          v12 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v36, &unk_1EB43D290, v10);
        }

        else
        {

          v14 = v33[2];
          v13 = v33[3];
          sub_1AB0149B0(&v34, v30);
          v15 = v10;
          v17 = v31;
          v16 = v32;
          __swift_project_boxed_opaque_existential_1Tm(v30, v31);
          v18 = swift_allocObject();
          v18[2] = v14;
          v18[3] = v13;
          v18[4] = a1;
          v19 = *(v16 + 8);
          v20 = a1;

          v21 = v16;
          v10 = v15;
          v19(sub_1AB0C6054, v18, v17, v21);
          v6 = v28;

          sub_1AB014AC0(v36, &unk_1EB43D290, v15);
          __swift_destroy_boxed_opaque_existential_1Tm(v30);
        }

        v9 += 80;
        --v8;
      }

      while (v8);
      v22 = v26;
      v23 = v27;
      v24 = v25;
    }

    else
    {
      v22 = v4;
      v23 = v3;
      v24 = v5;
    }

    sub_1AB199B30(v22, v23, v24, v6, 0);
  }
}

void sub_1AB2A14F4(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    *(v1 + 24) = a1;
    *(v1 + 32) = 2;
    v4 = a1;
    os_unfair_lock_unlock(v2 + 4);
    v5 = v3[2];
    if (v5)
    {
      v20 = v3;
      v6 = (v3 + 4);
      v7 = &unk_1EB4377E0;
      do
      {
        sub_1AB014A58(v6, v28, v7, &unk_1AB4E4570);
        sub_1AB014A58(v28, v25, v7, &unk_1AB4E4570);
        if (v27)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v8 = a1;
          v9 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v28, v7, &unk_1AB4E4570);
        }

        else
        {

          v10 = v7;
          v12 = v25[2];
          v11 = v25[3];
          sub_1AB0149B0(&v26, v22);
          v13 = v23;
          v14 = v24;
          __swift_project_boxed_opaque_existential_1Tm(v22, v23);
          v15 = swift_allocObject();
          v15[2] = v12;
          v15[3] = v11;
          v15[4] = a1;
          v16 = *(v14 + 8);
          v17 = a1;

          v16(sub_1AB0C6054, v15, v13, v14);
          v7 = v10;

          sub_1AB014AC0(v28, v10, &unk_1AB4E4570);
          __swift_destroy_boxed_opaque_existential_1Tm(v22);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
      v18 = MEMORY[0x1E69E7CF8];
      v19 = v20;
    }

    else
    {
      v18 = MEMORY[0x1E69E7CF8];
      v19 = v3;
    }

    sub_1AB023CD0(v19, 0, v18);
  }
}

void sub_1AB2A17A8(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 40) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 40))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    v4 = *(v1 + 32);
    sub_1AB2AB124(v3, v4, 0);
    v5 = a1;
    *(v1 + 24) = a1;
    *(v1 + 32) = 0;
    *(v1 + 40) = 2;
    sub_1AB0802EC(v3, v4, 0);
    os_unfair_lock_unlock(v2 + 4);
    v6 = v3[2];
    if (v6)
    {
      v20 = v3;
      v21 = v4;
      v7 = (v3 + 4);
      v8 = &unk_1AB4D8E00;
      do
      {
        sub_1AB014A58(v7, v29, &unk_1EB437970, v8);
        sub_1AB014A58(v29, v26, &unk_1EB437970, v8);
        if (v28)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v9 = a1;
          v10 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v29, &unk_1EB437970, v8);
        }

        else
        {

          v12 = v26[2];
          v11 = v26[3];
          sub_1AB0149B0(&v27, v23);
          v13 = v24;
          v14 = v25;
          __swift_project_boxed_opaque_existential_1Tm(v23, v24);
          v15 = swift_allocObject();
          v15[2] = v12;
          v15[3] = v11;
          v15[4] = a1;
          v16 = v8;
          v17 = *(v14 + 8);
          v18 = a1;

          v17(sub_1AB0C6054, v15, v13, v14);
          v8 = v16;
          v4 = v21;

          sub_1AB014AC0(v29, &unk_1EB437970, v16);
          __swift_destroy_boxed_opaque_existential_1Tm(v23);
        }

        v7 += 80;
        --v6;
      }

      while (v6);
      v19 = v20;
    }

    else
    {
      v19 = v3;
    }

    sub_1AB0802EC(v19, v4, 0);
  }
}

void sub_1AB2A1AC0(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (*(v5 + 32) == 3)
  {
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (*(v5 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v9 = *(v5 + 24);
    *(v5 + 24) = a1;
    *(v5 + 32) = 2;
    v10 = a1;
    os_unfair_lock_unlock(v8 + 4);
    v11 = v9[2];
    if (v11)
    {
      v24 = v9;
      v25 = a2;
      v12 = (v9 + 4);
      do
      {
        sub_1AB014A58(v12, v34, a2, a3);
        sub_1AB014A58(v34, v31, a2, a3);
        if (v33)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v13 = a1;
          v14 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v34, a2, a3);
        }

        else
        {

          v15 = v31[2];
          v16 = v31[3];
          sub_1AB0149B0(&v32, v28);
          v18 = v29;
          v17 = v30;
          __swift_project_boxed_opaque_existential_1Tm(v28, v29);
          v19 = swift_allocObject();
          v19[2] = v15;
          v19[3] = v16;
          v19[4] = a1;
          v20 = a3;
          v21 = *(v17 + 8);
          v22 = a1;

          v21(a5, v19, v18, v17);
          a3 = v20;
          a2 = v25;

          sub_1AB014AC0(v34, v25, a3);
          __swift_destroy_boxed_opaque_existential_1Tm(v28);
        }

        v12 += 80;
        --v11;
      }

      while (v11);
      v23 = v24;
    }

    else
    {
      v23 = v9;
    }

    sub_1AB074080(v23, 0);
  }
}

void sub_1AB2A1DC0(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    *(v1 + 24) = a1;
    *(v1 + 32) = 2;
    v4 = a1;
    os_unfair_lock_unlock(v2 + 4);
    v18 = v3;
    v5 = v3[2];
    if (v5)
    {
      v6 = (v3 + 4);
      v7 = &unk_1EB4376B0;
      do
      {
        sub_1AB014A58(v6, v26, v7, &unk_1AB4D8B20);
        sub_1AB014A58(v26, v23, v7, &unk_1AB4D8B20);
        if (v25)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v8 = a1;
          v9 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v26, v7, &unk_1AB4D8B20);
        }

        else
        {

          v10 = v7;
          v12 = v23[2];
          v11 = v23[3];
          sub_1AB0149B0(&v24, v20);
          v13 = v21;
          v14 = v22;
          __swift_project_boxed_opaque_existential_1Tm(v20, v21);
          v15 = swift_allocObject();
          v15[2] = v12;
          v15[3] = v11;
          v15[4] = a1;
          v16 = *(v14 + 8);
          v17 = a1;

          v16(sub_1AB0C6054, v15, v13, v14);
          v7 = v10;

          sub_1AB014AC0(v26, v10, &unk_1AB4D8B20);
          __swift_destroy_boxed_opaque_existential_1Tm(v20);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_1AB023CD0(v18, 0, MEMORY[0x1E69E7CF8]);
  }
}

void sub_1AB2A205C(void *a1)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437540, &unk_1AB4FAD30);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v27 - v6);
  v8 = v1[2];
  os_unfair_lock_lock(v8 + 4);
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v9, v7, &qword_1EB437540, &unk_1AB4FAD30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v7, &qword_1EB437540, &unk_1AB4FAD30);
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v11 = *v7;
    v12 = v28;
    *v4 = v28;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v13 = v12;
    sub_1AB017CC4(v4, v1 + v9, &qword_1EB437540, &unk_1AB4FAD30);
    swift_endAccess();
    os_unfair_lock_unlock(v8 + 4);
    v14 = *(v11 + 16);
    if (v14)
    {
      v27[1] = v11;
      v15 = v11 + 32;
      do
      {
        sub_1AB014A58(v15, v37, &unk_1EB4376F0, &qword_1AB4D8B60);
        sub_1AB014A58(v37, v32, &unk_1EB4376F0, &qword_1AB4D8B60);
        if (v36)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          v16 = v28;
          *v17 = v28;
          v18 = v16;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v37, &unk_1EB4376F0, &qword_1AB4D8B60);
        }

        else
        {

          v19 = v33;
          v20 = v34;
          sub_1AB0149B0(&v35, v29);
          v21 = v30;
          v22 = v31;
          __swift_project_boxed_opaque_existential_1Tm(v29, v30);
          v23 = swift_allocObject();
          v23[2] = v19;
          v23[3] = v20;
          v24 = v28;
          v23[4] = v28;
          v25 = *(v22 + 8);
          v26 = v24;

          v25(sub_1AB0C6054, v23, v21, v22);

          sub_1AB014AC0(v37, &unk_1EB4376F0, &qword_1AB4D8B60);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
        }

        v15 += 80;
        --v14;
      }

      while (v14);
    }
  }
}

void sub_1AB2A241C(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 40) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 40))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    v18 = *(v1 + 32);
    *(v1 + 24) = a1;
    *(v1 + 32) = 0;
    *(v1 + 40) = 2;
    v4 = a1;
    os_unfair_lock_unlock(v2 + 4);
    v19 = v3;
    v5 = v3[2];
    if (v5)
    {
      v6 = v19 + 32;
      v7 = &unk_1EB439CC0;
      do
      {
        sub_1AB014A58(v6, v27, v7, &unk_1AB4D8BE0);
        sub_1AB014A58(v27, v24, v7, &unk_1AB4D8BE0);
        if (v26)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v8 = a1;
          v9 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v27, v7, &unk_1AB4D8BE0);
        }

        else
        {

          v10 = v7;
          v12 = v24[2];
          v11 = v24[3];
          sub_1AB0149B0(&v25, v21);
          v13 = v22;
          v14 = v23;
          __swift_project_boxed_opaque_existential_1Tm(v21, v22);
          v15 = swift_allocObject();
          v15[2] = v12;
          v15[3] = v11;
          v15[4] = a1;
          v16 = *(v14 + 8);
          v17 = a1;

          v16(sub_1AB0C6054, v15, v13, v14);
          v7 = v10;

          sub_1AB014AC0(v27, v10, &unk_1AB4D8BE0);
          __swift_destroy_boxed_opaque_existential_1Tm(v21);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_1AB1997F8(v19, v18, 0);
  }
}

void sub_1AB2A26A8(void *a1)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437820, &unk_1AB4D9570);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v27 - v6);
  v8 = v1[2];
  os_unfair_lock_lock(v8 + 4);
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v9, v7, &unk_1EB437820, &unk_1AB4D9570);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v7, &unk_1EB437820, &unk_1AB4D9570);
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v11 = *v7;
    v12 = v28;
    *v4 = v28;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v13 = v12;
    sub_1AB017CC4(v4, v1 + v9, &unk_1EB437820, &unk_1AB4D9570);
    swift_endAccess();
    os_unfair_lock_unlock(v8 + 4);
    v14 = *(v11 + 16);
    if (v14)
    {
      v27[1] = v11;
      v15 = v11 + 32;
      do
      {
        sub_1AB014A58(v15, v37, &qword_1EB439E20, &unk_1AB4D8CA0);
        sub_1AB014A58(v37, v32, &qword_1EB439E20, &unk_1AB4D8CA0);
        if (v36)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          v16 = v28;
          *v17 = v28;
          v18 = v16;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v37, &qword_1EB439E20, &unk_1AB4D8CA0);
        }

        else
        {

          v19 = v33;
          v20 = v34;
          sub_1AB0149B0(&v35, v29);
          v21 = v30;
          v22 = v31;
          __swift_project_boxed_opaque_existential_1Tm(v29, v30);
          v23 = swift_allocObject();
          v23[2] = v19;
          v23[3] = v20;
          v24 = v28;
          v23[4] = v28;
          v25 = *(v22 + 8);
          v26 = v24;

          v25(sub_1AB0C6054, v23, v21, v22);

          sub_1AB014AC0(v37, &qword_1EB439E20, &unk_1AB4D8CA0);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
        }

        v15 += 80;
        --v14;
      }

      while (v14);
    }
  }
}

void sub_1AB2A2A98(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 40) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 40))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    v4 = *(v1 + 32);
    sub_1AB2AB22C(v3, v4, 0, sub_1AB017200);
    v5 = a1;
    *(v1 + 24) = a1;
    *(v1 + 32) = 0;
    *(v1 + 40) = 2;
    v19 = v4;
    sub_1AB199938(v3, v4, 0, sub_1AB017254);
    os_unfair_lock_unlock(v2 + 4);
    v20 = v3;
    v6 = v3[2];
    if (v6)
    {
      v7 = v20 + 32;
      v8 = &unk_1EB4377D0;
      do
      {
        sub_1AB014A58(v7, v28, v8, &unk_1AB4E4600);
        sub_1AB014A58(v28, v25, v8, &unk_1AB4E4600);
        if (v27)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v9 = a1;
          v10 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v28, v8, &unk_1AB4E4600);
        }

        else
        {

          v11 = v8;
          v13 = v25[2];
          v12 = v25[3];
          sub_1AB0149B0(&v26, v22);
          v14 = v23;
          v15 = v24;
          __swift_project_boxed_opaque_existential_1Tm(v22, v23);
          v16 = swift_allocObject();
          v16[2] = v13;
          v16[3] = v12;
          v16[4] = a1;
          v17 = *(v15 + 8);
          v18 = a1;

          v17(sub_1AB0C6054, v16, v14, v15);
          v8 = v11;

          sub_1AB014AC0(v28, v11, &unk_1AB4E4600);
          __swift_destroy_boxed_opaque_existential_1Tm(v22);
        }

        v7 += 80;
        --v6;
      }

      while (v6);
    }

    sub_1AB199938(v20, v19, 0, sub_1AB017254);
  }
}

void sub_1AB2A2DB4(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v25, &unk_1EB4397C0, &unk_1AB4E4590);
  if (v26 == 3)
  {
    sub_1AB014AC0(v25, &unk_1EB4397C0, &unk_1AB4E4590);
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (v26)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = v25[0];
    v23[0] = a1;
    v24 = 2;
    swift_beginAccess();
    v4 = a1;
    sub_1AB017CC4(v23, v1 + 24, &unk_1EB4397C0, &unk_1AB4E4590);
    swift_endAccess();
    os_unfair_lock_unlock(v2 + 4);
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = v3 + 32;
      do
      {
        sub_1AB014A58(v6, v23, &unk_1EB4376E0, &unk_1AB4D8B50);
        sub_1AB014A58(v23, v20, &unk_1EB4376E0, &unk_1AB4D8B50);
        if (v22)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v7 = a1;
          v8 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v23, &unk_1EB4376E0, &unk_1AB4D8B50);
        }

        else
        {

          v10 = v20[2];
          v9 = v20[3];
          sub_1AB0149B0(&v21, v17);
          v11 = v18;
          v12 = v19;
          __swift_project_boxed_opaque_existential_1Tm(v17, v18);
          v13 = swift_allocObject();
          v13[2] = v10;
          v13[3] = v9;
          v13[4] = a1;
          v14 = *(v12 + 8);
          v15 = a1;

          v14(sub_1AB0C6054, v13, v11, v12);

          sub_1AB014AC0(v23, &unk_1EB4376E0, &unk_1AB4D8B50);
          __swift_destroy_boxed_opaque_existential_1Tm(v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB2A30A4(void *a1)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377B0, &qword_1AB4E46D0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v27 - v6);
  v8 = v1[2];
  os_unfair_lock_lock(v8 + 4);
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v9, v7, &unk_1EB4377B0, &qword_1AB4E46D0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v7, &unk_1EB4377B0, &qword_1AB4E46D0);
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v11 = *v7;
    v12 = v28;
    *v4 = v28;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v13 = v12;
    sub_1AB017CC4(v4, v1 + v9, &unk_1EB4377B0, &qword_1AB4E46D0);
    swift_endAccess();
    os_unfair_lock_unlock(v8 + 4);
    v14 = *(v11 + 16);
    if (v14)
    {
      v27[1] = v11;
      v15 = v11 + 32;
      do
      {
        sub_1AB014A58(v15, v37, &qword_1EB439D20, &unk_1AB4D8C30);
        sub_1AB014A58(v37, v32, &qword_1EB439D20, &unk_1AB4D8C30);
        if (v36)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          v16 = v28;
          *v17 = v28;
          v18 = v16;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v37, &qword_1EB439D20, &unk_1AB4D8C30);
        }

        else
        {

          v19 = v33;
          v20 = v34;
          sub_1AB0149B0(&v35, v29);
          v21 = v30;
          v22 = v31;
          __swift_project_boxed_opaque_existential_1Tm(v29, v30);
          v23 = swift_allocObject();
          v23[2] = v19;
          v23[3] = v20;
          v24 = v28;
          v23[4] = v28;
          v25 = *(v22 + 8);
          v26 = v24;

          v25(sub_1AB0C6054, v23, v21, v22);

          sub_1AB014AC0(v37, &qword_1EB439D20, &unk_1AB4D8C30);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
        }

        v15 += 80;
        --v14;
      }

      while (v14);
    }
  }
}

void sub_1AB2A3464(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    *(v1 + 24) = a1;
    *(v1 + 32) = 2;
    v4 = a1;
    os_unfair_lock_unlock(v2 + 4);
    v18 = v3;
    v5 = v3[2];
    if (v5)
    {
      v6 = (v3 + 4);
      v7 = &unk_1EB437960;
      do
      {
        sub_1AB014A58(v6, v26, v7, &qword_1AB4D8DC8);
        sub_1AB014A58(v26, v23, v7, &qword_1AB4D8DC8);
        if (v25)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v8 = a1;
          v9 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v26, v7, &qword_1AB4D8DC8);
        }

        else
        {

          v10 = v7;
          v12 = v23[2];
          v11 = v23[3];
          sub_1AB0149B0(&v24, v20);
          v13 = v21;
          v14 = v22;
          __swift_project_boxed_opaque_existential_1Tm(v20, v21);
          v15 = swift_allocObject();
          v15[2] = v12;
          v15[3] = v11;
          v15[4] = a1;
          v16 = *(v14 + 8);
          v17 = a1;

          v16(sub_1AB0C6054, v15, v13, v14);
          v7 = v10;

          sub_1AB014AC0(v26, v10, &qword_1AB4D8DC8);
          __swift_destroy_boxed_opaque_existential_1Tm(v20);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_1AB023CD0(v18, 0, MEMORY[0x1E69E7D48]);
  }
}

void sub_1AB2A3700(void *a1)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437940, &qword_1AB4D8DA8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v27 - v6);
  v8 = v1[2];
  os_unfair_lock_lock(v8 + 4);
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v9, v7, &unk_1EB437940, &qword_1AB4D8DA8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v7, &unk_1EB437940, &qword_1AB4D8DA8);
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v11 = *v7;
    v12 = v28;
    *v4 = v28;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v13 = v12;
    sub_1AB017CC4(v4, v1 + v9, &unk_1EB437940, &qword_1AB4D8DA8);
    swift_endAccess();
    os_unfair_lock_unlock(v8 + 4);
    v14 = *(v11 + 16);
    if (v14)
    {
      v27[1] = v11;
      v15 = v11 + 32;
      do
      {
        sub_1AB014A58(v15, v37, &unk_1EB439920, &unk_1AB4D8DB0);
        sub_1AB014A58(v37, v32, &unk_1EB439920, &unk_1AB4D8DB0);
        if (v36)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          v16 = v28;
          *v17 = v28;
          v18 = v16;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v37, &unk_1EB439920, &unk_1AB4D8DB0);
        }

        else
        {

          v19 = v33;
          v20 = v34;
          sub_1AB0149B0(&v35, v29);
          v21 = v30;
          v22 = v31;
          __swift_project_boxed_opaque_existential_1Tm(v29, v30);
          v23 = swift_allocObject();
          v23[2] = v19;
          v23[3] = v20;
          v24 = v28;
          v23[4] = v28;
          v25 = *(v22 + 8);
          v26 = v24;

          v25(sub_1AB0C6054, v23, v21, v22);

          sub_1AB014AC0(v37, &unk_1EB439920, &unk_1AB4D8DB0);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
        }

        v15 += 80;
        --v14;
      }

      while (v14);
    }
  }
}

void sub_1AB2A3AC0(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  v3 = *(v1 + 32);
  if (*(v1 + 48) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 48))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 24);
    v5 = *(v1 + 40);
    sub_1AB2AB314(v4, *(v1 + 32), v5, 0);
    v6 = a1;
    *(v1 + 24) = a1;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 48) = 2;
    v20 = v5;
    v21 = v3;
    sub_1AB199AA4(v4, v3, v5, 0);
    os_unfair_lock_unlock(v2 + 4);
    v22 = v4;
    v7 = v4[2];
    if (v7)
    {
      v8 = (v4 + 4);
      v9 = &qword_1EB43A050;
      do
      {
        sub_1AB014A58(v8, v30, v9, &qword_1AB4D8DC0);
        sub_1AB014A58(v30, v27, v9, &qword_1AB4D8DC0);
        if (v29)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v10 = a1;
          v11 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v30, v9, &qword_1AB4D8DC0);
        }

        else
        {

          v13 = v27[2];
          v12 = v27[3];
          sub_1AB0149B0(&v28, v24);
          v14 = v25;
          v15 = v26;
          __swift_project_boxed_opaque_existential_1Tm(v24, v25);
          v16 = v9;
          v17 = swift_allocObject();
          v17[2] = v13;
          v17[3] = v12;
          v17[4] = a1;
          v18 = *(v15 + 8);
          v19 = a1;

          v18(sub_1AB0C6054, v17, v14, v15);

          v9 = v16;

          sub_1AB014AC0(v30, v16, &qword_1AB4D8DC0);
          __swift_destroy_boxed_opaque_existential_1Tm(v24);
        }

        v8 += 80;
        --v7;
      }

      while (v7);
    }

    sub_1AB199AA4(v22, v21, v20, 0);
  }
}

void sub_1AB2A3DBC(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v25, &unk_1EB43D230, &qword_1AB4D8C00);
  if (v26 == 3)
  {
    sub_1AB014AC0(v25, &unk_1EB43D230, &qword_1AB4D8C00);
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (v26)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = v25[0];
    v23[0] = a1;
    v24 = 2;
    swift_beginAccess();
    v4 = a1;
    sub_1AB017CC4(v23, v1 + 24, &unk_1EB43D230, &qword_1AB4D8C00);
    swift_endAccess();
    os_unfair_lock_unlock(v2 + 4);
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = v3 + 32;
      do
      {
        sub_1AB014A58(v6, v23, &unk_1EB437790, &qword_1AB4D8C08);
        sub_1AB014A58(v23, v20, &unk_1EB437790, &qword_1AB4D8C08);
        if (v22)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v7 = a1;
          v8 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v23, &unk_1EB437790, &qword_1AB4D8C08);
        }

        else
        {

          v10 = v20[2];
          v9 = v20[3];
          sub_1AB0149B0(&v21, v17);
          v11 = v18;
          v12 = v19;
          __swift_project_boxed_opaque_existential_1Tm(v17, v18);
          v13 = swift_allocObject();
          v13[2] = v10;
          v13[3] = v9;
          v13[4] = a1;
          v14 = *(v12 + 8);
          v15 = a1;

          v14(sub_1AB0C6054, v13, v11, v12);

          sub_1AB014AC0(v23, &unk_1EB437790, &qword_1AB4D8C08);
          __swift_destroy_boxed_opaque_existential_1Tm(v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB2A40AC(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 33) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 33))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    v4 = *(v1 + 32);
    sub_1AB2AB0C8(v3, v4, 0);
    v5 = a1;
    *(v1 + 24) = a1;
    *(v1 + 32) = 512;
    v19 = v4;
    sub_1AB06DD90(v3, v4, 0);
    os_unfair_lock_unlock(v2 + 4);
    v20 = v3;
    v6 = v3[2];
    if (v6)
    {
      v7 = v20 + 32;
      v8 = &unk_1EB439820;
      do
      {
        sub_1AB014A58(v7, v28, v8, &qword_1AB4D8C10);
        sub_1AB014A58(v28, v25, v8, &qword_1AB4D8C10);
        if (v27)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v9 = a1;
          v10 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v28, v8, &qword_1AB4D8C10);
        }

        else
        {

          v11 = v8;
          v13 = v25[2];
          v12 = v25[3];
          sub_1AB0149B0(&v26, v22);
          v14 = v23;
          v15 = v24;
          __swift_project_boxed_opaque_existential_1Tm(v22, v23);
          v16 = swift_allocObject();
          v16[2] = v13;
          v16[3] = v12;
          v16[4] = a1;
          v17 = *(v15 + 8);
          v18 = a1;

          v17(sub_1AB0C6054, v16, v14, v15);
          v8 = v11;

          sub_1AB014AC0(v28, v11, &qword_1AB4D8C10);
          __swift_destroy_boxed_opaque_existential_1Tm(v22);
        }

        v7 += 80;
        --v6;
      }

      while (v6);
    }

    sub_1AB06DD90(v20, v19, 0);
  }
}

void sub_1AB2A4364(void *a1)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377A0, &qword_1AB4D8C18);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v27 - v6);
  v8 = v1[2];
  os_unfair_lock_lock(v8 + 4);
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v9, v7, &unk_1EB4377A0, &qword_1AB4D8C18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v7, &unk_1EB4377A0, &qword_1AB4D8C18);
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v11 = *v7;
    v12 = v28;
    *v4 = v28;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v13 = v12;
    sub_1AB017CC4(v4, v1 + v9, &unk_1EB4377A0, &qword_1AB4D8C18);
    swift_endAccess();
    os_unfair_lock_unlock(v8 + 4);
    v14 = *(v11 + 16);
    if (v14)
    {
      v27[1] = v11;
      v15 = v11 + 32;
      do
      {
        sub_1AB014A58(v15, v37, &unk_1EB43D240, &unk_1AB4D8C20);
        sub_1AB014A58(v37, v32, &unk_1EB43D240, &unk_1AB4D8C20);
        if (v36)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          v16 = v28;
          *v17 = v28;
          v18 = v16;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v37, &unk_1EB43D240, &unk_1AB4D8C20);
        }

        else
        {

          v19 = v33;
          v20 = v34;
          sub_1AB0149B0(&v35, v29);
          v21 = v30;
          v22 = v31;
          __swift_project_boxed_opaque_existential_1Tm(v29, v30);
          v23 = swift_allocObject();
          v23[2] = v19;
          v23[3] = v20;
          v24 = v28;
          v23[4] = v28;
          v25 = *(v22 + 8);
          v26 = v24;

          v25(sub_1AB0C6054, v23, v21, v22);

          sub_1AB014AC0(v37, &unk_1EB43D240, &unk_1AB4D8C20);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
        }

        v15 += 80;
        --v14;
      }

      while (v14);
    }
  }
}

void sub_1AB2A4784(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (*(v5 + 32) == 3)
  {
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (*(v5 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v9 = *(v5 + 24);
    sub_1AB2AB268(v9, 0);
    v10 = a1;
    *(v5 + 24) = a1;
    *(v5 + 32) = 2;
    sub_1AB074080(v9, 0);
    os_unfair_lock_unlock(v8 + 4);
    v23 = v9;
    v11 = v9[2];
    if (v11)
    {
      v12 = (v9 + 4);
      v24 = a2;
      do
      {
        sub_1AB014A58(v12, v33, a2, a3);
        sub_1AB014A58(v33, v30, a2, a3);
        if (v32)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v13 = a1;
          v14 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v33, a2, a3);
        }

        else
        {

          v15 = v30[2];
          v16 = v30[3];
          sub_1AB0149B0(&v31, v27);
          v18 = v28;
          v17 = v29;
          __swift_project_boxed_opaque_existential_1Tm(v27, v28);
          v19 = swift_allocObject();
          v19[2] = v15;
          v19[3] = v16;
          v19[4] = a1;
          v20 = a3;
          v21 = *(v17 + 8);
          v22 = a1;

          v21(a5, v19, v18, v17);
          a3 = v20;
          a2 = v24;

          sub_1AB014AC0(v33, v24, a3);
          __swift_destroy_boxed_opaque_existential_1Tm(v27);
        }

        v12 += 80;
        --v11;
      }

      while (v11);
    }

    sub_1AB074080(v23, 0);
  }
}

void sub_1AB2A4A10(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  v3 = *(v1 + 32);
  if (*(v1 + 72) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 72))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 24);
    v5 = *(v1 + 40);
    v6 = *(v1 + 48);
    v7 = *(v1 + 56);
    v8 = *(v1 + 64);
    sub_1AB2AB28C(v4, *(v1 + 32), v5, v6, v7, v8, 0);
    v9 = a1;
    *(v1 + 24) = a1;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0;
    *(v1 + 72) = 2;
    v26 = v5;
    v27 = v3;
    v24 = v7;
    v25 = v6;
    v23 = v8;
    sub_1AB199A1C(v4, v3, v5, v6, v7, v8, 0);
    os_unfair_lock_unlock(v2 + 4);
    v28 = v4;
    v10 = v4[2];
    if (v10)
    {
      v11 = (v4 + 4);
      v12 = &unk_1EB439FD0;
      do
      {
        sub_1AB014A58(v11, v36, v12, &unk_1AB4D8D80);
        sub_1AB014A58(v36, v33, v12, &unk_1AB4D8D80);
        if (v35)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v13 = a1;
          v14 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v36, v12, &unk_1AB4D8D80);
        }

        else
        {

          v15 = v12;
          v16 = v33[2];
          v17 = v33[3];
          sub_1AB0149B0(&v34, v30);
          v18 = v31;
          v19 = v32;
          __swift_project_boxed_opaque_existential_1Tm(v30, v31);
          v20 = swift_allocObject();
          v20[2] = v16;
          v20[3] = v17;
          v20[4] = a1;
          v21 = *(v19 + 8);
          v22 = a1;

          v21(sub_1AB0C6054, v20, v18, v19);
          v12 = v15;

          sub_1AB014AC0(v36, v15, &unk_1AB4D8D80);
          __swift_destroy_boxed_opaque_existential_1Tm(v30);
        }

        v11 += 80;
        --v10;
      }

      while (v10);
    }

    sub_1AB199A1C(v28, v27, v26, v25, v24, v23, 0);
  }
}

void sub_1AB2A4D0C(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  v33 = *(v1 + 120);
  v3 = *(v1 + 72);
  v4 = *(v1 + 104);
  v32[4] = *(v1 + 88);
  v32[5] = v4;
  v5 = *(v1 + 40);
  v32[0] = *(v1 + 24);
  v32[1] = v5;
  v32[2] = *(v1 + 56);
  v32[3] = v3;
  if (v33 == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (v33)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v6 = *&v32[0];
    v7 = *(v1 + 72);
    v8 = *(v1 + 104);
    v30[4] = *(v1 + 88);
    v30[5] = v8;
    v31 = *(v1 + 120);
    v9 = *(v1 + 40);
    v30[0] = *(v1 + 24);
    v30[1] = v9;
    v30[2] = *(v1 + 56);
    v30[3] = v7;
    sub_1AB014A58(v32, v29, &unk_1EB437900, &qword_1AB4D8D68);
    v10 = a1;
    *(v1 + 24) = a1;
    *(v1 + 120) = 2;
    sub_1AB014AC0(v30, &unk_1EB437900, &qword_1AB4D8D68);
    os_unfair_lock_unlock(v2 + 4);
    v11 = *(v6 + 16);
    if (v11)
    {
      v12 = v6 + 32;
      do
      {
        sub_1AB014A58(v12, v29, &unk_1EB438550, &unk_1AB4D8D70);
        sub_1AB014A58(v29, v26, &unk_1EB438550, &unk_1AB4D8D70);
        if (v28)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v13 = a1;
          v14 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v29, &unk_1EB438550, &unk_1AB4D8D70);
        }

        else
        {

          v15 = v26[2];
          v16 = v26[3];
          sub_1AB0149B0(&v27, v23);
          v17 = v24;
          v18 = v25;
          __swift_project_boxed_opaque_existential_1Tm(v23, v24);
          v19 = swift_allocObject();
          v19[2] = v15;
          v19[3] = v16;
          v19[4] = a1;
          v20 = *(v18 + 8);
          v21 = a1;

          v20(sub_1AB0C6054, v19, v17, v18);

          sub_1AB014AC0(v29, &unk_1EB438550, &unk_1AB4D8D70);
          __swift_destroy_boxed_opaque_existential_1Tm(v23);
        }

        v12 += 80;
        --v11;
      }

      while (v11);
    }

    sub_1AB014AC0(v32, &unk_1EB437900, &qword_1AB4D8D68);
  }
}

void sub_1AB2A501C(void *a1)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377C0, &qword_1AB4D94A0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v27 - v6);
  v8 = v1[2];
  os_unfair_lock_lock(v8 + 4);
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v9, v7, &unk_1EB4377C0, &qword_1AB4D94A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v7, &unk_1EB4377C0, &qword_1AB4D94A0);
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v11 = *v7;
    v12 = v28;
    *v4 = v28;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v13 = v12;
    sub_1AB017CC4(v4, v1 + v9, &unk_1EB4377C0, &qword_1AB4D94A0);
    swift_endAccess();
    os_unfair_lock_unlock(v8 + 4);
    v14 = *(v11 + 16);
    if (v14)
    {
      v27[1] = v11;
      v15 = v11 + 32;
      do
      {
        sub_1AB014A58(v15, v37, &unk_1EB439840, &unk_1AB4D8C40);
        sub_1AB014A58(v37, v32, &unk_1EB439840, &unk_1AB4D8C40);
        if (v36)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          v16 = v28;
          *v17 = v28;
          v18 = v16;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v37, &unk_1EB439840, &unk_1AB4D8C40);
        }

        else
        {

          v19 = v33;
          v20 = v34;
          sub_1AB0149B0(&v35, v29);
          v21 = v30;
          v22 = v31;
          __swift_project_boxed_opaque_existential_1Tm(v29, v30);
          v23 = swift_allocObject();
          v23[2] = v19;
          v23[3] = v20;
          v24 = v28;
          v23[4] = v28;
          v25 = *(v22 + 8);
          v26 = v24;

          v25(sub_1AB0C6054, v23, v21, v22);

          sub_1AB014AC0(v37, &unk_1EB439840, &unk_1AB4D8C40);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
        }

        v15 += 80;
        --v14;
      }

      while (v14);
    }
  }
}

void sub_1AB2A53DC(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v25, &unk_1EB439900, &unk_1AB4D8D30);
  if (v26 == 3)
  {
    sub_1AB014AC0(v25, &unk_1EB439900, &unk_1AB4D8D30);
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (v26)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = v25[0];
    v23[0] = a1;
    v24 = 2;
    swift_beginAccess();
    v4 = a1;
    sub_1AB017CC4(v23, v1 + 24, &unk_1EB439900, &unk_1AB4D8D30);
    swift_endAccess();
    os_unfair_lock_unlock(v2 + 4);
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = v3 + 32;
      do
      {
        sub_1AB014A58(v6, v23, &qword_1EB4378C0, &qword_1AB4E4690);
        sub_1AB014A58(v23, v20, &qword_1EB4378C0, &qword_1AB4E4690);
        if (v22)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v7 = a1;
          v8 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v23, &qword_1EB4378C0, &qword_1AB4E4690);
        }

        else
        {

          v10 = v20[2];
          v9 = v20[3];
          sub_1AB0149B0(&v21, v17);
          v11 = v18;
          v12 = v19;
          __swift_project_boxed_opaque_existential_1Tm(v17, v18);
          v13 = swift_allocObject();
          v13[2] = v10;
          v13[3] = v9;
          v13[4] = a1;
          v14 = *(v12 + 8);
          v15 = a1;

          v14(sub_1AB0C6054, v13, v11, v12);

          sub_1AB014AC0(v23, &qword_1EB4378C0, &qword_1AB4E4690);
          __swift_destroy_boxed_opaque_existential_1Tm(v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB2A56CC(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v25, &unk_1EB4398E0, &unk_1AB4D8D10);
  if (v26 == 3)
  {
    sub_1AB014AC0(v25, &unk_1EB4398E0, &unk_1AB4D8D10);
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (v26)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = v25[0];
    v23[0] = a1;
    v24 = 2;
    swift_beginAccess();
    v4 = a1;
    sub_1AB017CC4(v23, v1 + 24, &unk_1EB4398E0, &unk_1AB4D8D10);
    swift_endAccess();
    os_unfair_lock_unlock(v2 + 4);
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = v3 + 32;
      do
      {
        sub_1AB014A58(v6, v23, &unk_1EB4378A0, &unk_1AB4E4670);
        sub_1AB014A58(v23, v20, &unk_1EB4378A0, &unk_1AB4E4670);
        if (v22)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v7 = a1;
          v8 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v23, &unk_1EB4378A0, &unk_1AB4E4670);
        }

        else
        {

          v10 = v20[2];
          v9 = v20[3];
          sub_1AB0149B0(&v21, v17);
          v11 = v18;
          v12 = v19;
          __swift_project_boxed_opaque_existential_1Tm(v17, v18);
          v13 = swift_allocObject();
          v13[2] = v10;
          v13[3] = v9;
          v13[4] = a1;
          v14 = *(v12 + 8);
          v15 = a1;

          v14(sub_1AB0C6054, v13, v11, v12);

          sub_1AB014AC0(v23, &unk_1EB4378A0, &unk_1AB4E4670);
          __swift_destroy_boxed_opaque_existential_1Tm(v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB2A59BC(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v25, &unk_1EB4398F0, &unk_1AB4D8D20);
  if (v26 == 3)
  {
    sub_1AB014AC0(v25, &unk_1EB4398F0, &unk_1AB4D8D20);
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (v26)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = v25[0];
    v23[0] = a1;
    v24 = 2;
    swift_beginAccess();
    v4 = a1;
    sub_1AB017CC4(v23, v1 + 24, &unk_1EB4398F0, &unk_1AB4D8D20);
    swift_endAccess();
    os_unfair_lock_unlock(v2 + 4);
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = v3 + 32;
      do
      {
        sub_1AB014A58(v6, v23, &unk_1EB4378B0, &unk_1AB4E4680);
        sub_1AB014A58(v23, v20, &unk_1EB4378B0, &unk_1AB4E4680);
        if (v22)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v7 = a1;
          v8 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v23, &unk_1EB4378B0, &unk_1AB4E4680);
        }

        else
        {

          v10 = v20[2];
          v9 = v20[3];
          sub_1AB0149B0(&v21, v17);
          v11 = v18;
          v12 = v19;
          __swift_project_boxed_opaque_existential_1Tm(v17, v18);
          v13 = swift_allocObject();
          v13[2] = v10;
          v13[3] = v9;
          v13[4] = a1;
          v14 = *(v12 + 8);
          v15 = a1;

          v14(sub_1AB0C6054, v13, v11, v12);

          sub_1AB014AC0(v23, &unk_1EB4378B0, &unk_1AB4E4680);
          __swift_destroy_boxed_opaque_existential_1Tm(v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB2A5CDC(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    *(v1 + 24) = a1;
    *(v1 + 32) = 2;
    v4 = a1;
    os_unfair_lock_unlock(v2 + 4);
    v18 = v3;
    v5 = v3[2];
    if (v5)
    {
      v6 = (v3 + 4);
      v7 = &unk_1EB437890;
      do
      {
        sub_1AB014A58(v6, v26, v7, &qword_1AB4D8D08);
        sub_1AB014A58(v26, v23, v7, &qword_1AB4D8D08);
        if (v25)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v8 = a1;
          v9 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v26, v7, &qword_1AB4D8D08);
        }

        else
        {

          v10 = v7;
          v12 = v23[2];
          v11 = v23[3];
          sub_1AB0149B0(&v24, v20);
          v13 = v21;
          v14 = v22;
          __swift_project_boxed_opaque_existential_1Tm(v20, v21);
          v15 = swift_allocObject();
          v15[2] = v12;
          v15[3] = v11;
          v15[4] = a1;
          v16 = *(v14 + 8);
          v17 = a1;

          v16(sub_1AB0C6054, v15, v13, v14);
          v7 = v10;

          sub_1AB014AC0(v26, v10, &qword_1AB4D8D08);
          __swift_destroy_boxed_opaque_existential_1Tm(v20);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_1AB023CD0(v18, 0, MEMORY[0x1E69E7D48]);
  }
}

void sub_1AB2A5F78(void *a1)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437840, &unk_1AB4E4640);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v27 - v6);
  v8 = v1[2];
  os_unfair_lock_lock(v8 + 4);
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v9, v7, &unk_1EB437840, &unk_1AB4E4640);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v7, &unk_1EB437840, &unk_1AB4E4640);
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v11 = *v7;
    v12 = v28;
    *v4 = v28;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v13 = v12;
    sub_1AB017CC4(v4, v1 + v9, &unk_1EB437840, &unk_1AB4E4640);
    swift_endAccess();
    os_unfair_lock_unlock(v8 + 4);
    v14 = *(v11 + 16);
    if (v14)
    {
      v27[1] = v11;
      v15 = v11 + 32;
      do
      {
        sub_1AB014A58(v15, v37, &unk_1EB4398A0, &unk_1AB4D8CC0);
        sub_1AB014A58(v37, v32, &unk_1EB4398A0, &unk_1AB4D8CC0);
        if (v36)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          v16 = v28;
          *v17 = v28;
          v18 = v16;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v37, &unk_1EB4398A0, &unk_1AB4D8CC0);
        }

        else
        {

          v19 = v33;
          v20 = v34;
          sub_1AB0149B0(&v35, v29);
          v21 = v30;
          v22 = v31;
          __swift_project_boxed_opaque_existential_1Tm(v29, v30);
          v23 = swift_allocObject();
          v23[2] = v19;
          v23[3] = v20;
          v24 = v28;
          v23[4] = v28;
          v25 = *(v22 + 8);
          v26 = v24;

          v25(sub_1AB0C6054, v23, v21, v22);

          sub_1AB014AC0(v37, &unk_1EB4398A0, &unk_1AB4D8CC0);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
        }

        v15 += 80;
        --v14;
      }

      while (v14);
    }
  }
}

void sub_1AB2A6338(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v25, &unk_1EB4398D0, &unk_1AB4D8CF0);
  if (v26 == 3)
  {
    sub_1AB014AC0(v25, &unk_1EB4398D0, &unk_1AB4D8CF0);
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (v26)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = v25[0];
    v23[0] = a1;
    v24 = 2;
    swift_beginAccess();
    v4 = a1;
    sub_1AB017CC4(v23, v1 + 24, &unk_1EB4398D0, &unk_1AB4D8CF0);
    swift_endAccess();
    os_unfair_lock_unlock(v2 + 4);
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = v3 + 32;
      do
      {
        sub_1AB014A58(v6, v23, &unk_1EB437880, &unk_1AB4E4660);
        sub_1AB014A58(v23, v20, &unk_1EB437880, &unk_1AB4E4660);
        if (v22)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v7 = a1;
          v8 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v23, &unk_1EB437880, &unk_1AB4E4660);
        }

        else
        {

          v10 = v20[2];
          v9 = v20[3];
          sub_1AB0149B0(&v21, v17);
          v11 = v18;
          v12 = v19;
          __swift_project_boxed_opaque_existential_1Tm(v17, v18);
          v13 = swift_allocObject();
          v13[2] = v10;
          v13[3] = v9;
          v13[4] = a1;
          v14 = *(v12 + 8);
          v15 = a1;

          v14(sub_1AB0C6054, v13, v11, v12);

          sub_1AB014AC0(v23, &unk_1EB437880, &unk_1AB4E4660);
          __swift_destroy_boxed_opaque_existential_1Tm(v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB2A6628(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v25, &unk_1EB437850, &unk_1AB4E4650);
  if (v26 == 3)
  {
    sub_1AB014AC0(v25, &unk_1EB437850, &unk_1AB4E4650);
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (v26)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = v25[0];
    v23[0] = a1;
    v24 = 2;
    swift_beginAccess();
    v4 = a1;
    sub_1AB017CC4(v23, v1 + 24, &unk_1EB437850, &unk_1AB4E4650);
    swift_endAccess();
    os_unfair_lock_unlock(v2 + 4);
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = v3 + 32;
      do
      {
        sub_1AB014A58(v6, v23, &unk_1EB4398B0, &unk_1AB4D8CD0);
        sub_1AB014A58(v23, v20, &unk_1EB4398B0, &unk_1AB4D8CD0);
        if (v22)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v7 = a1;
          v8 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v23, &unk_1EB4398B0, &unk_1AB4D8CD0);
        }

        else
        {

          v10 = v20[2];
          v9 = v20[3];
          sub_1AB0149B0(&v21, v17);
          v11 = v18;
          v12 = v19;
          __swift_project_boxed_opaque_existential_1Tm(v17, v18);
          v13 = swift_allocObject();
          v13[2] = v10;
          v13[3] = v9;
          v13[4] = a1;
          v14 = *(v12 + 8);
          v15 = a1;

          v14(sub_1AB0C6054, v13, v11, v12);

          sub_1AB014AC0(v23, &unk_1EB4398B0, &unk_1AB4D8CD0);
          __swift_destroy_boxed_opaque_existential_1Tm(v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB2A6918(void *a1)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437810, &unk_1AB4F2D10);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v27 - v6);
  v8 = v1[2];
  os_unfair_lock_lock(v8 + 4);
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v9, v7, &unk_1EB437810, &unk_1AB4F2D10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v7, &unk_1EB437810, &unk_1AB4F2D10);
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v11 = *v7;
    v12 = v28;
    *v4 = v28;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v13 = v12;
    sub_1AB017CC4(v4, v1 + v9, &unk_1EB437810, &unk_1AB4F2D10);
    swift_endAccess();
    os_unfair_lock_unlock(v8 + 4);
    v14 = *(v11 + 16);
    if (v14)
    {
      v27[1] = v11;
      v15 = v11 + 32;
      do
      {
        sub_1AB014A58(v15, v37, &qword_1EB439E10, &unk_1AB4D8C90);
        sub_1AB014A58(v37, v32, &qword_1EB439E10, &unk_1AB4D8C90);
        if (v36)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          v16 = v28;
          *v17 = v28;
          v18 = v16;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v37, &qword_1EB439E10, &unk_1AB4D8C90);
        }

        else
        {

          v19 = v33;
          v20 = v34;
          sub_1AB0149B0(&v35, v29);
          v21 = v30;
          v22 = v31;
          __swift_project_boxed_opaque_existential_1Tm(v29, v30);
          v23 = swift_allocObject();
          v23[2] = v19;
          v23[3] = v20;
          v24 = v28;
          v23[4] = v28;
          v25 = *(v22 + 8);
          v26 = v24;

          v25(sub_1AB0C6054, v23, v21, v22);

          sub_1AB014AC0(v37, &qword_1EB439E10, &unk_1AB4D8C90);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
        }

        v15 += 80;
        --v14;
      }

      while (v14);
    }
  }
}

void sub_1AB2A6CD8(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  v3 = *(v1 + 32);
  if (*(v1 + 48) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 48))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 24);
    v5 = *(v1 + 40);
    sub_1AB2AB1A8(v4, *(v1 + 32), v5, 0);
    v6 = a1;
    *(v1 + 24) = a1;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 48) = 2;
    v20 = v5;
    v21 = v3;
    sub_1AB199834(v4, v3, v5, 0);
    os_unfair_lock_unlock(v2 + 4);
    v22 = v4;
    v7 = v4[2];
    if (v7)
    {
      v8 = (v4 + 4);
      v9 = &unk_1EB4377F0;
      do
      {
        sub_1AB014A58(v8, v30, v9, &unk_1AB4E4620);
        sub_1AB014A58(v30, v27, v9, &unk_1AB4E4620);
        if (v29)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v10 = a1;
          v11 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v30, v9, &unk_1AB4E4620);
        }

        else
        {

          v13 = v27[2];
          v12 = v27[3];
          sub_1AB0149B0(&v28, v24);
          v14 = v25;
          v15 = v26;
          __swift_project_boxed_opaque_existential_1Tm(v24, v25);
          v16 = v9;
          v17 = swift_allocObject();
          v17[2] = v13;
          v17[3] = v12;
          v17[4] = a1;
          v18 = *(v15 + 8);
          v19 = a1;

          v18(sub_1AB0C6054, v17, v14, v15);

          v9 = v16;

          sub_1AB014AC0(v30, v16, &unk_1AB4E4620);
          __swift_destroy_boxed_opaque_existential_1Tm(v24);
        }

        v8 += 80;
        --v7;
      }

      while (v7);
    }

    sub_1AB199834(v22, v21, v20, 0);
  }
}

void sub_1AB2A6FA4(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 40) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 40))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    v4 = *(v1 + 32);
    sub_1AB2AB22C(v3, v4, 0, sub_1AB1998F8);
    v5 = a1;
    *(v1 + 24) = a1;
    *(v1 + 32) = 0;
    *(v1 + 40) = 2;
    v19 = v4;
    sub_1AB199938(v3, v4, 0, sub_1AB1998B8);
    os_unfair_lock_unlock(v2 + 4);
    v20 = v3;
    v6 = v3[2];
    if (v6)
    {
      v7 = v20 + 32;
      v8 = &unk_1EB43D260;
      do
      {
        sub_1AB014A58(v7, v28, v8, &qword_1AB4D8C70);
        sub_1AB014A58(v28, v25, v8, &qword_1AB4D8C70);
        if (v27)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v9 = a1;
          v10 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v28, v8, &qword_1AB4D8C70);
        }

        else
        {

          v11 = v8;
          v13 = v25[2];
          v12 = v25[3];
          sub_1AB0149B0(&v26, v22);
          v14 = v23;
          v15 = v24;
          __swift_project_boxed_opaque_existential_1Tm(v22, v23);
          v16 = swift_allocObject();
          v16[2] = v13;
          v16[3] = v12;
          v16[4] = a1;
          v17 = *(v15 + 8);
          v18 = a1;

          v17(sub_1AB0C6054, v16, v14, v15);
          v8 = v11;

          sub_1AB014AC0(v28, v11, &qword_1AB4D8C70);
          __swift_destroy_boxed_opaque_existential_1Tm(v22);
        }

        v7 += 80;
        --v6;
      }

      while (v6);
    }

    sub_1AB199938(v20, v19, 0, sub_1AB1998B8);
  }
}

void sub_1AB2A7290(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    *(v1 + 24) = a1;
    *(v1 + 32) = 2;
    v4 = a1;
    os_unfair_lock_unlock(v2 + 4);
    v18 = v3;
    v5 = v3[2];
    if (v5)
    {
      v6 = (v3 + 4);
      v7 = &unk_1EB437800;
      do
      {
        sub_1AB014A58(v6, v26, v7, &qword_1AB4D8C78);
        sub_1AB014A58(v26, v23, v7, &qword_1AB4D8C78);
        if (v25)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v8 = a1;
          v9 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v26, v7, &qword_1AB4D8C78);
        }

        else
        {

          v10 = v7;
          v12 = v23[2];
          v11 = v23[3];
          sub_1AB0149B0(&v24, v20);
          v13 = v21;
          v14 = v22;
          __swift_project_boxed_opaque_existential_1Tm(v20, v21);
          v15 = swift_allocObject();
          v15[2] = v12;
          v15[3] = v11;
          v15[4] = a1;
          v16 = *(v14 + 8);
          v17 = a1;

          v16(sub_1AB0C6054, v15, v13, v14);
          v7 = v10;

          sub_1AB014AC0(v26, v10, &qword_1AB4D8C78);
          __swift_destroy_boxed_opaque_existential_1Tm(v20);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_1AB023CD0(v18, 0, MEMORY[0x1E69E7CF8]);
  }
}

void sub_1AB2A752C(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    sub_1AB2AB0EC(v3, 0);
    v4 = a1;
    *(v1 + 24) = a1;
    *(v1 + 32) = 2;
    sub_1AB0171C8(v3, 0);
    os_unfair_lock_unlock(v2 + 4);
    v18 = v3;
    v5 = v3[2];
    if (v5)
    {
      v6 = (v3 + 4);
      v7 = &unk_1EB439850;
      do
      {
        sub_1AB014A58(v6, v26, v7, &unk_1AB4D8C50);
        sub_1AB014A58(v26, v23, v7, &unk_1AB4D8C50);
        if (v25)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v8 = a1;
          v9 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v26, v7, &unk_1AB4D8C50);
        }

        else
        {

          v10 = v7;
          v12 = v23[2];
          v11 = v23[3];
          sub_1AB0149B0(&v24, v20);
          v13 = v21;
          v14 = v22;
          __swift_project_boxed_opaque_existential_1Tm(v20, v21);
          v15 = swift_allocObject();
          v15[2] = v12;
          v15[3] = v11;
          v15[4] = a1;
          v16 = *(v14 + 8);
          v17 = a1;

          v16(sub_1AB0C6054, v15, v13, v14);
          v7 = v10;

          sub_1AB014AC0(v26, v10, &unk_1AB4D8C50);
          __swift_destroy_boxed_opaque_existential_1Tm(v20);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_1AB0171C8(v18, 0);
  }
}

void sub_1AB2A77D0(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v25, &unk_1EB439830, &qword_1AB4E45E8);
  if (v26 == 3)
  {
    sub_1AB014AC0(v25, &unk_1EB439830, &qword_1AB4E45E8);
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (v26)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = v25[0];
    v23[0] = a1;
    v24 = 2;
    swift_beginAccess();
    v4 = a1;
    sub_1AB017CC4(v23, v1 + 24, &unk_1EB439830, &qword_1AB4E45E8);
    swift_endAccess();
    os_unfair_lock_unlock(v2 + 4);
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = v3 + 32;
      do
      {
        sub_1AB014A58(v6, v23, &unk_1EB43D250, &unk_1AB4E45F0);
        sub_1AB014A58(v23, v20, &unk_1EB43D250, &unk_1AB4E45F0);
        if (v22)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v7 = a1;
          v8 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v23, &unk_1EB43D250, &unk_1AB4E45F0);
        }

        else
        {

          v10 = v20[2];
          v9 = v20[3];
          sub_1AB0149B0(&v21, v17);
          v11 = v18;
          v12 = v19;
          __swift_project_boxed_opaque_existential_1Tm(v17, v18);
          v13 = swift_allocObject();
          v13[2] = v10;
          v13[3] = v9;
          v13[4] = a1;
          v14 = *(v12 + 8);
          v15 = a1;

          v14(sub_1AB0C6054, v13, v11, v12);

          sub_1AB014AC0(v23, &unk_1EB43D250, &unk_1AB4E45F0);
          __swift_destroy_boxed_opaque_existential_1Tm(v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB2A7AC0(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    *(v1 + 24) = a1;
    *(v1 + 32) = 2;
    v4 = a1;
    os_unfair_lock_unlock(v2 + 4);
    v18 = v3;
    v5 = v3[2];
    if (v5)
    {
      v6 = (v3 + 4);
      v7 = &unk_1EB437710;
      do
      {
        sub_1AB014A58(v6, v26, v7, &unk_1AB4D8B80);
        sub_1AB014A58(v26, v23, v7, &unk_1AB4D8B80);
        if (v25)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v8 = a1;
          v9 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v26, v7, &unk_1AB4D8B80);
        }

        else
        {

          v10 = v7;
          v12 = v23[2];
          v11 = v23[3];
          sub_1AB0149B0(&v24, v20);
          v13 = v21;
          v14 = v22;
          __swift_project_boxed_opaque_existential_1Tm(v20, v21);
          v15 = swift_allocObject();
          v15[2] = v12;
          v15[3] = v11;
          v15[4] = a1;
          v16 = *(v14 + 8);
          v17 = a1;

          v16(sub_1AB0C6054, v15, v13, v14);
          v7 = v10;

          sub_1AB014AC0(v26, v10, &unk_1AB4D8B80);
          __swift_destroy_boxed_opaque_existential_1Tm(v20);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_1AB023CD0(v18, 0, MEMORY[0x1E69E7D48]);
  }
}

void sub_1AB2A7D5C(void *a1)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D220, &qword_1AB4E45D0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v27 - v6);
  v8 = v1[2];
  os_unfair_lock_lock(v8 + 4);
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v9, v7, &unk_1EB43D220, &qword_1AB4E45D0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v7, &unk_1EB43D220, &qword_1AB4E45D0);
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v11 = *v7;
    v12 = v28;
    *v4 = v28;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v13 = v12;
    sub_1AB017CC4(v4, v1 + v9, &unk_1EB43D220, &qword_1AB4E45D0);
    swift_endAccess();
    os_unfair_lock_unlock(v8 + 4);
    v14 = *(v11 + 16);
    if (v14)
    {
      v27[1] = v11;
      v15 = v11 + 32;
      do
      {
        sub_1AB014A58(v15, v37, &unk_1EB439800, &unk_1AB4E45D8);
        sub_1AB014A58(v37, v32, &unk_1EB439800, &unk_1AB4E45D8);
        if (v36)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          v16 = v28;
          *v17 = v28;
          v18 = v16;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v37, &unk_1EB439800, &unk_1AB4E45D8);
        }

        else
        {

          v19 = v33;
          v20 = v34;
          sub_1AB0149B0(&v35, v29);
          v21 = v30;
          v22 = v31;
          __swift_project_boxed_opaque_existential_1Tm(v29, v30);
          v23 = swift_allocObject();
          v23[2] = v19;
          v23[3] = v20;
          v24 = v28;
          v23[4] = v28;
          v25 = *(v22 + 8);
          v26 = v24;

          v25(sub_1AB0C6054, v23, v21, v22);

          sub_1AB014AC0(v37, &unk_1EB439800, &unk_1AB4E45D8);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
        }

        v15 += 80;
        --v14;
      }

      while (v14);
    }
  }
}

void sub_1AB2A811C(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    *(v1 + 24) = a1;
    *(v1 + 32) = 2;
    v4 = a1;
    os_unfair_lock_unlock(v2 + 4);
    v18 = v3;
    v5 = v3[2];
    if (v5)
    {
      v6 = (v3 + 4);
      v7 = &unk_1EB43D210;
      do
      {
        sub_1AB014A58(v6, v26, v7, &unk_1AB4E45C0);
        sub_1AB014A58(v26, v23, v7, &unk_1AB4E45C0);
        if (v25)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v8 = a1;
          v9 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v26, v7, &unk_1AB4E45C0);
        }

        else
        {

          v10 = v7;
          v12 = v23[2];
          v11 = v23[3];
          sub_1AB0149B0(&v24, v20);
          v13 = v21;
          v14 = v22;
          __swift_project_boxed_opaque_existential_1Tm(v20, v21);
          v15 = swift_allocObject();
          v15[2] = v12;
          v15[3] = v11;
          v15[4] = a1;
          v16 = *(v14 + 8);
          v17 = a1;

          v16(sub_1AB0C6054, v15, v13, v14);
          v7 = v10;

          sub_1AB014AC0(v26, v10, &unk_1AB4E45C0);
          __swift_destroy_boxed_opaque_existential_1Tm(v20);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_1AB023CD0(v18, 0, MEMORY[0x1E69E7CF8]);
  }
}

void sub_1AB2A83B8(void *a1)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437860, &qword_1AB4E35A0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v27 - v6);
  v8 = v1[2];
  os_unfair_lock_lock(v8 + 4);
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v9, v7, &unk_1EB437860, &qword_1AB4E35A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v7, &unk_1EB437860, &qword_1AB4E35A0);
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v11 = *v7;
    v12 = v28;
    *v4 = v28;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v13 = v12;
    sub_1AB017CC4(v4, v1 + v9, &unk_1EB437860, &qword_1AB4E35A0);
    swift_endAccess();
    os_unfair_lock_unlock(v8 + 4);
    v14 = *(v11 + 16);
    if (v14)
    {
      v27[1] = v11;
      v15 = v11 + 32;
      do
      {
        sub_1AB014A58(v15, v37, &unk_1EB4398C0, &unk_1AB4D8CE0);
        sub_1AB014A58(v37, v32, &unk_1EB4398C0, &unk_1AB4D8CE0);
        if (v36)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          v16 = v28;
          *v17 = v28;
          v18 = v16;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v37, &unk_1EB4398C0, &unk_1AB4D8CE0);
        }

        else
        {

          v19 = v33;
          v20 = v34;
          sub_1AB0149B0(&v35, v29);
          v21 = v30;
          v22 = v31;
          __swift_project_boxed_opaque_existential_1Tm(v29, v30);
          v23 = swift_allocObject();
          v23[2] = v19;
          v23[3] = v20;
          v24 = v28;
          v23[4] = v28;
          v25 = *(v22 + 8);
          v26 = v24;

          v25(sub_1AB0C6054, v23, v21, v22);

          sub_1AB014AC0(v37, &unk_1EB4398C0, &unk_1AB4D8CE0);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
        }

        v15 += 80;
        --v14;
      }

      while (v14);
    }
  }
}

void sub_1AB2A8778(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 48) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else
  {
    v19 = *(v1 + 32);
    if (*(v1 + 48))
    {
      sub_1AB461884();
      __break(1u);
    }

    else
    {
      v3 = *(v1 + 24);
      v18 = *(v1 + 40);
      *(v1 + 24) = a1;
      *(v1 + 32) = 0;
      *(v1 + 40) = 0;
      *(v1 + 48) = 2;
      v4 = a1;
      os_unfair_lock_unlock(v2 + 4);
      v20 = v3;
      v5 = v3[2];
      if (v5)
      {
        v6 = (v3 + 4);
        v7 = &qword_1EB4376C8;
        do
        {
          sub_1AB014A58(v6, v28, v7, &qword_1AB4EFC00);
          sub_1AB014A58(v28, v25, v7, &qword_1AB4EFC00);
          if (v27)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
            swift_allocError();
            *v8 = a1;
            v9 = a1;
            swift_continuation_throwingResumeWithError();
            sub_1AB014AC0(v28, v7, &qword_1AB4EFC00);
          }

          else
          {

            v11 = v25[2];
            v10 = v25[3];
            sub_1AB0149B0(&v26, v22);
            v12 = v23;
            v13 = v24;
            __swift_project_boxed_opaque_existential_1Tm(v22, v23);
            v14 = v7;
            v15 = swift_allocObject();
            v15[2] = v11;
            v15[3] = v10;
            v15[4] = a1;
            v16 = *(v13 + 8);
            v17 = a1;

            v16(sub_1AB0C6054, v15, v12, v13);

            v7 = v14;

            sub_1AB014AC0(v28, v14, &qword_1AB4EFC00);
            __swift_destroy_boxed_opaque_existential_1Tm(v22);
          }

          v6 += 80;
          --v5;
        }

        while (v5);
      }

      sub_1AB199768(v20, v19, v18, 0);
    }
  }
}

void sub_1AB2A8A1C(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    *(v1 + 24) = a1;
    *(v1 + 32) = 2;
    v4 = a1;
    os_unfair_lock_unlock(v2 + 4);
    v18 = v3;
    v5 = v3[2];
    if (v5)
    {
      v6 = (v3 + 4);
      v7 = &unk_1EB437750;
      do
      {
        sub_1AB014A58(v6, v26, v7, &unk_1AB4E45B0);
        sub_1AB014A58(v26, v23, v7, &unk_1AB4E45B0);
        if (v25)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v8 = a1;
          v9 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v26, v7, &unk_1AB4E45B0);
        }

        else
        {

          v10 = v7;
          v12 = v23[2];
          v11 = v23[3];
          sub_1AB0149B0(&v24, v20);
          v13 = v21;
          v14 = v22;
          __swift_project_boxed_opaque_existential_1Tm(v20, v21);
          v15 = swift_allocObject();
          v15[2] = v12;
          v15[3] = v11;
          v15[4] = a1;
          v16 = *(v14 + 8);
          v17 = a1;

          v16(sub_1AB0C6054, v15, v13, v14);
          v7 = v10;

          sub_1AB014AC0(v26, v10, &unk_1AB4E45B0);
          __swift_destroy_boxed_opaque_existential_1Tm(v20);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_1AB023CD0(v18, 0, MEMORY[0x1E69E7D60]);
  }
}

void sub_1AB2A8CB8(void *a1)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437830, &unk_1AB4E4630);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v27 - v6);
  v8 = v1[2];
  os_unfair_lock_lock(v8 + 4);
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v9, v7, &unk_1EB437830, &unk_1AB4E4630);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v7, &unk_1EB437830, &unk_1AB4E4630);
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v11 = *v7;
    v12 = v28;
    *v4 = v28;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v13 = v12;
    sub_1AB017CC4(v4, v1 + v9, &unk_1EB437830, &unk_1AB4E4630);
    swift_endAccess();
    os_unfair_lock_unlock(v8 + 4);
    v14 = *(v11 + 16);
    if (v14)
    {
      v27[1] = v11;
      v15 = v11 + 32;
      do
      {
        sub_1AB014A58(v15, v37, &unk_1EB439890, &unk_1AB4D8CB0);
        sub_1AB014A58(v37, v32, &unk_1EB439890, &unk_1AB4D8CB0);
        if (v36)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          v16 = v28;
          *v17 = v28;
          v18 = v16;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v37, &unk_1EB439890, &unk_1AB4D8CB0);
        }

        else
        {

          v19 = v33;
          v20 = v34;
          sub_1AB0149B0(&v35, v29);
          v21 = v30;
          v22 = v31;
          __swift_project_boxed_opaque_existential_1Tm(v29, v30);
          v23 = swift_allocObject();
          v23[2] = v19;
          v23[3] = v20;
          v24 = v28;
          v23[4] = v28;
          v25 = *(v22 + 8);
          v26 = v24;

          v25(sub_1AB0C6054, v23, v21, v22);

          sub_1AB014AC0(v37, &unk_1EB439890, &unk_1AB4D8CB0);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
        }

        v15 += 80;
        --v14;
      }

      while (v14);
    }
  }
}

void sub_1AB2A9078(void *a1)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4397B0, &unk_1AB4E4580);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v27 - v6);
  v8 = v1[2];
  os_unfair_lock_lock(v8 + 4);
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v9, v7, &unk_1EB4397B0, &unk_1AB4E4580);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v7, &unk_1EB4397B0, &unk_1AB4E4580);
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v11 = *v7;
    v12 = v28;
    *v4 = v28;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v13 = v12;
    sub_1AB017CC4(v4, v1 + v9, &unk_1EB4397B0, &unk_1AB4E4580);
    swift_endAccess();
    os_unfair_lock_unlock(v8 + 4);
    v14 = *(v11 + 16);
    if (v14)
    {
      v27[1] = v11;
      v15 = v11 + 32;
      do
      {
        sub_1AB014A58(v15, v37, &qword_1EB4376C0, &unk_1AB4D8B30);
        sub_1AB014A58(v37, v32, &qword_1EB4376C0, &unk_1AB4D8B30);
        if (v36)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          v16 = v28;
          *v17 = v28;
          v18 = v16;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v37, &qword_1EB4376C0, &unk_1AB4D8B30);
        }

        else
        {

          v19 = v33;
          v20 = v34;
          sub_1AB0149B0(&v35, v29);
          v21 = v30;
          v22 = v31;
          __swift_project_boxed_opaque_existential_1Tm(v29, v30);
          v23 = swift_allocObject();
          v23[2] = v19;
          v23[3] = v20;
          v24 = v28;
          v23[4] = v28;
          v25 = *(v22 + 8);
          v26 = v24;

          v25(sub_1AB0C6054, v23, v21, v22);

          sub_1AB014AC0(v37, &qword_1EB4376C0, &unk_1AB4D8B30);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
        }

        v15 += 80;
        --v14;
      }

      while (v14);
    }
  }
}

void sub_1AB2A9438(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v27, &qword_1EB439910, &qword_1AB4E4698);
  if (v28 == 3)
  {
    sub_1AB014AC0(v27, &qword_1EB439910, &qword_1AB4E4698);
    os_unfair_lock_unlock(v2 + 4);
    return;
  }

  if (v28)
  {
    goto LABEL_14;
  }

  v3 = v27[0];
  v25[0] = a1;
  v26 = 2;
  swift_beginAccess();
  v4 = a1;
  sub_1AB017CC4(v25, v1 + 24, &qword_1EB439910, &qword_1AB4E4698);
  swift_endAccess();
  os_unfair_lock_unlock(v2 + 4);
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v3 + 32;
    while (v6 < v5)
    {
      sub_1AB014A58(v7, v25, &qword_1EB439918, &unk_1AB4E46A0);
      sub_1AB014A58(v25, v22, &qword_1EB439918, &unk_1AB4E46A0);
      if (v24)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
        swift_allocError();
        *v8 = a1;
        v9 = a1;
        swift_continuation_throwingResumeWithError();
      }

      else
      {

        v10 = v22[2];
        v11 = v22[3];
        sub_1AB0149B0(&v23, v19);
        v12 = v20;
        v13 = v21;
        __swift_project_boxed_opaque_existential_1Tm(v19, v20);
        v14 = swift_allocObject();
        v14[2] = v10;
        v14[3] = v11;
        v14[4] = a1;
        v15 = v3;
        v16 = *(v13 + 8);
        v17 = a1;

        v16(sub_1AB0C6054, v14, v12, v13);
        v3 = v15;

        __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      ++v6;
      sub_1AB014AC0(v25, &qword_1EB439918, &unk_1AB4E46A0);
      v5 = *(v3 + 16);
      v7 += 80;
      if (v6 == v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    sub_1AB461884();
    __break(1u);
    return;
  }

LABEL_11:
}

void sub_1AB2A9764(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
    return;
  }

  if (*(v1 + 32))
  {
    goto LABEL_14;
  }

  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
  *(v1 + 32) = 2;
  v4 = a1;
  os_unfair_lock_unlock(v2 + 4);
  v5 = v3[2];
  if (v5)
  {
    v6 = 0;
    v7 = (v3 + 4);
    v8 = &unk_1AB4E7C10;
    v19 = v3;
    while (v6 < v5)
    {
      sub_1AB014A58(v7, v27, &unk_1EB439A90, v8);
      sub_1AB014A58(v27, v24, &unk_1EB439A90, v8);
      if (v26)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
        swift_allocError();
        *v9 = a1;
        v10 = a1;
        swift_continuation_throwingResumeWithError();
      }

      else
      {

        v11 = v24[2];
        v12 = v24[3];
        sub_1AB0149B0(&v25, v21);
        v13 = v22;
        v14 = v23;
        __swift_project_boxed_opaque_existential_1Tm(v21, v22);
        v15 = swift_allocObject();
        v15[2] = v11;
        v15[3] = v12;
        v15[4] = a1;
        v16 = v8;
        v17 = *(v14 + 8);
        v18 = a1;

        v17(sub_1AB0C6054, v15, v13, v14);
        v8 = v16;
        v3 = v19;

        __swift_destroy_boxed_opaque_existential_1Tm(v21);
      }

      ++v6;
      sub_1AB014AC0(v27, &unk_1EB439A90, v8);
      v5 = v3[2];
      v7 += 80;
      if (v6 == v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    sub_1AB461884();
    __break(1u);
    return;
  }

LABEL_11:
  sub_1AB023CD0(v3, 0, MEMORY[0x1E69E7CF8]);
}

void sub_1AB2A9A08(void *a1)
{
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437730, &unk_1AB4D8BA0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v28 - v6);
  v8 = v1[2];
  os_unfair_lock_lock(v8 + 4);
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v9, v7, &unk_1EB437730, &unk_1AB4D8BA0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v7, &unk_1EB437730, &unk_1AB4D8BA0);
    os_unfair_lock_unlock(v8 + 4);
    return;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_14;
  }

  v11 = *v7;
  v12 = v30;
  *v4 = v30;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v13 = v12;
  sub_1AB017CC4(v4, v1 + v9, &unk_1EB437730, &unk_1AB4D8BA0);
  swift_endAccess();
  os_unfair_lock_unlock(v8 + 4);
  v14 = *(v11 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = v11 + 32;
    v29 = v11;
    while (v15 < v14)
    {
      sub_1AB014A58(v16, v39, &qword_1EB43BD80, &qword_1AB4E7C00);
      sub_1AB014A58(v39, v34, &qword_1EB43BD80, &qword_1AB4E7C00);
      if (v38)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
        swift_allocError();
        v17 = v30;
        *v18 = v30;
        v19 = v17;
        swift_continuation_throwingResumeWithError();
      }

      else
      {

        v20 = v35;
        v21 = v36;
        sub_1AB0149B0(&v37, v31);
        v22 = v32;
        v23 = v33;
        __swift_project_boxed_opaque_existential_1Tm(v31, v32);
        v24 = swift_allocObject();
        v24[2] = v20;
        v24[3] = v21;
        v25 = v30;
        v24[4] = v30;
        v26 = *(v23 + 8);
        v27 = v25;

        v26(sub_1AB0C6054, v24, v22, v23);
        v11 = v29;

        __swift_destroy_boxed_opaque_existential_1Tm(v31);
      }

      ++v15;
      sub_1AB014AC0(v39, &qword_1EB43BD80, &qword_1AB4E7C00);
      v14 = *(v11 + 16);
      v16 += 80;
      if (v15 == v14)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    sub_1AB461884();
    __break(1u);
    return;
  }

LABEL_11:
}

void sub_1AB2A9DFC(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (*(v5 + 32) == 3)
  {
    os_unfair_lock_unlock(v8 + 4);
    return;
  }

  if (*(v5 + 32))
  {
    goto LABEL_14;
  }

  v9 = *(v5 + 24);
  *(v5 + 24) = a1;
  *(v5 + 32) = 2;
  v10 = a1;
  os_unfair_lock_unlock(v8 + 4);
  v11 = v9[2];
  if (v11)
  {
    v12 = 0;
    v13 = (v9 + 4);
    v24 = v9;
    v25 = a3;
    while (v12 < v11)
    {
      sub_1AB014A58(v13, v34, a2, a3);
      sub_1AB014A58(v34, v31, a2, a3);
      if (v33)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
        swift_allocError();
        *v14 = a1;
        v15 = a1;
        swift_continuation_throwingResumeWithError();
      }

      else
      {

        v16 = v31[2];
        v17 = v31[3];
        sub_1AB0149B0(&v32, v28);
        v19 = v29;
        v18 = v30;
        __swift_project_boxed_opaque_existential_1Tm(v28, v29);
        v20 = swift_allocObject();
        v20[2] = v16;
        v20[3] = v17;
        v20[4] = a1;
        v21 = a2;
        v22 = *(v18 + 8);
        v23 = a1;

        v22(a5, v20, v19, v18);
        a2 = v21;
        v9 = v24;
        a3 = v25;

        __swift_destroy_boxed_opaque_existential_1Tm(v28);
      }

      ++v12;
      sub_1AB014AC0(v34, a2, a3);
      v11 = v9[2];
      v13 += 80;
      if (v12 == v11)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    sub_1AB461884();
    __break(1u);
    return;
  }

LABEL_11:
  sub_1AB0171C8(v9, 0);
}

uint64_t sub_1AB2AA0CC(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1AB014A58(v5, v21, a2, a3);
  if (v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
    swift_allocError();
    *v8 = a1;
    v9 = a1;
    return swift_continuation_throwingResumeWithError();
  }

  else
  {

    v12 = v21[2];
    v11 = v21[3];
    sub_1AB0149B0(&v22, v18);
    v13 = v19;
    v14 = v20;
    __swift_project_boxed_opaque_existential_1Tm(v18, v19);
    v15 = swift_allocObject();
    v15[2] = v12;
    v15[3] = v11;
    v15[4] = a1;
    v16 = *(v14 + 8);

    v17 = a1;
    v16(a5, v15, v13, v14);

    return __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }
}

void sub_1AB2AAE4C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AB460134();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v4 + 104))(v7, *MEMORY[0x1E6977AC0], v3, v5);
    sub_1AB460174();
    (*(v4 + 8))(v7, v3);
  }
}

void sub_1AB2AAF3C(uint64_t a1, os_unfair_lock_s *a2, NSObject *a3)
{
  os_unfair_lock_lock(a2 + 6);
  sub_1AB2AB0AC(&a2[4]);
  os_unfair_lock_unlock(a2 + 6);
  dispatch_group_leave(a3);
}

id sub_1AB2AAF9C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB2B0EE8(0, v4[2] + 1, 1, v4);
  }

  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    v4 = sub_1AB2B0EE8((v5 > 1), v6 + 1, 1, v4);
  }

  v4[2] = v6 + 1;
  v4[v6 + 4] = a2;
  *a1 = v4;
  return a2;
}

unint64_t sub_1AB2AB058()
{
  result = qword_1EB4348B0[0];
  if (!qword_1EB4348B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4348B0);
  }

  return result;
}

id sub_1AB2AB0C8(id result, uint64_t a2, char a3)
{
  if (a3 == 3 || a3 == 2)
  {
    return result;
  }

  if (!a3)
  {
  }

  return result;
}

id sub_1AB2AB0EC(id result, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2 || a2 == 3)
    {
      return result;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      return result;
    }
  }

  else
  {
  }

  return result;
}

id sub_1AB2AB124(id result, void *a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2 || a3 == 3)
    {

      return result;
    }
  }

  else
  {
    if (!a3)
    {
    }

    if (a3 == 1)
    {
    }
  }

  return result;
}

id sub_1AB2AB1A8(id result, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2 || a4 == 3)
    {

      return result;
    }
  }

  else
  {
    if (!a4)
    {
    }

    if (a4 == 1)
    {
      sub_1AB1998F8(result, a2);
    }
  }

  return result;
}

id sub_1AB2AB22C(id result, uint64_t a2, unsigned __int8 a3, uint64_t (*a4)(id, uint64_t))
{
  if (a3 > 1u)
  {
    if (a3 == 2 || a3 == 3)
    {
      return result;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      return a4(result, a2);
    }
  }

  else
  {
  }

  return result;
}

id sub_1AB2AB268(id result, char a2)
{
  if (a2 == 3 || a2 == 2)
  {
    return result;
  }

  if (!a2)
  {
  }

  return result;
}

id sub_1AB2AB28C(id result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 1u)
  {
    if (a7 == 2 || a7 == 3)
    {

      return result;
    }
  }

  else
  {
    if (!a7)
    {
    }

    if (a7 == 1)
    {
    }
  }

  return result;
}

id sub_1AB2AB314(id result, unint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2 || a4 == 3)
    {

      return result;
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      sub_1AB017200(result, a2);
      result = a3;

      return result;
    }
  }

  else
  {
  }

  return result;
}

void sub_1AB2AB398(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 == 2 || a5 == 3)
    {
      v5 = a1;
    }
  }

  else if (a5)
  {
    if (a5 == 1)
    {
      sub_1AB144A64(a1, a2, a3, a4);
    }
  }

  else
  {
  }
}

void join<A, B>(_:by:)(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, void *a6, uint64_t a7)
{
  v74 = a7;
  v75 = a6;
  v72 = a5;
  v73 = a4;
  v58 = a3;
  v57 = a2;
  v71 = a1;
  v64 = sub_1AB4601B4();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = *(a4 - 8);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB4610E4();
  MEMORY[0x1EEE9AC00](v11);
  v61 = sub_1AB4601F4();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AB461114();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB015664();
  (*(v15 + 104))(v17, *MEMORY[0x1E69E8098], v14);
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1AB01CA90(&qword_1ED4D1F50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439770, &unk_1AB4D89F0);
  sub_1AB01CB68(&qword_1ED4D1F68, &unk_1EB439770, &unk_1AB4D89F0);
  sub_1AB4614E4();
  v59 = v13;
  v67 = sub_1AB461154();
  v66 = dispatch_group_create();
  v18 = v73;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  aBlock = sub_1AB4609A4();
  v19 = sub_1AB460A64();
  v65 = sub_1AB02FFC0(&aBlock, v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439788, &qword_1AB4E4530);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = MEMORY[0x1E69E7CC0];
  v22 = v68;
  v21 = v69;
  (*(v69 + 16))(v68, v71, v18);
  v23 = (*(v21 + 80) + 48) & ~*(v21 + 80);
  v24 = (v70 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v72;
  *(v27 + 2) = v18;
  *(v27 + 3) = v28;
  v29 = v74;
  *(v27 + 4) = v75;
  *(v27 + 5) = v29;
  (*(v21 + 32))(&v27[v23], v22, v18);
  v30 = v65;
  v31 = v66;
  *&v27[v24] = v66;
  *&v27[v25] = v30;
  *&v27[v26] = v20;
  v32 = v67;
  *&v27[(v26 + 15) & 0xFFFFFFFFFFFFFFF8] = v67;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1AB2AC374;
  *(v33 + 24) = v27;
  v81 = sub_1AB021150;
  v82 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v78 = 1107296256;
  v79 = sub_1AB0C2388;
  v80 = &block_descriptor_23;
  v34 = _Block_copy(&aBlock);
  v71 = v31;
  v35 = v30;

  v36 = v20;

  v37 = v32;

  dispatch_sync(v37, v34);
  _Block_release(v34);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v41 = type metadata accessor for Promise(0, v72, v39, v40);
    v45 = Promise.__allocating_init()(v41, v42, v43, v44);
    v46 = swift_allocObject();
    v47 = v74;
    v48 = v75;
    v46[2] = v73;
    v46[3] = v48;
    v46[4] = v47;
    v46[5] = v45;
    v72 = v45;
    v49 = v58;
    v46[6] = v57;
    v46[7] = v49;
    v46[8] = v35;
    v46[9] = v36;
    v56 = v36;
    v81 = sub_1AB2AC424;
    v82 = v46;
    aBlock = MEMORY[0x1E69E9820];
    v78 = 1107296256;
    v79 = sub_1AB01D528;
    v80 = &block_descriptor_9_1;
    v75 = _Block_copy(&aBlock);

    v50 = v37;
    v51 = v71;
    v52 = v59;
    _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
    v76 = MEMORY[0x1E69E7CC0];
    sub_1AB01CA90(&qword_1ED4D2050, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540, &unk_1AB4DCF50);
    sub_1AB01CB68(&qword_1ED4D1FB0, &qword_1EB438540, &unk_1AB4DCF50);
    v53 = v62;
    v54 = v64;
    sub_1AB4614E4();
    v55 = v75;
    sub_1AB4610C4();
    _Block_release(v55);

    (*(v63 + 8))(v53, v54);
    (*(v60 + 8))(v52, v61);
  }
}

uint64_t sub_1AB2ABC48(void (*a1)(uint64_t (*)(), void *, void (*)(uint64_t a1), uint64_t, void *, uint64_t, uint64_t), NSObject *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a6;
  v43 = a3;
  v44 = a1;
  v15 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  v19 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = &v34 - v20;
  (*(v15 + 16))(v17, v44, v11, v19);
  v22 = a8;
  sub_1AB4607F4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1AB4613F4();
  if (v45[0])
  {
    v37 = a9;
    v38 = AssociatedTypeWitness;
    v36 = a9 + 16;
    v41 = v11;
    v42 = a7;
    v39 = AssociatedConformanceWitness;
    v40 = v21;
    do
    {
      dispatch_group_enter(a2);
      v24 = a2;
      v25 = swift_allocObject();
      v25[2] = v11;
      v25[3] = a7;
      v26 = v37;
      v25[4] = v22;
      v25[5] = v26;
      v25[6] = v43;
      v25[7] = v24;
      v27 = swift_allocObject();
      *(v27 + 16) = a4;
      *(v27 + 24) = v24;
      v45[3] = sub_1AB015664();
      v45[4] = &protocol witness table for OS_dispatch_queue;
      v44 = *(v26 + 16);
      v45[0] = a5;
      v28 = v22;
      v29 = swift_getAssociatedTypeWitness();
      v30 = v24;
      AssociatedTypeWitness = v38;

      v31 = a5;
      v32 = v29;
      v22 = v28;
      v11 = v41;
      v44(sub_1AB2AC438, v25, sub_1AB2AB050, v27, v45, v32, v26);
      a7 = v42;
      swift_unknownObjectRelease();
      a2 = v24;

      v21 = v40;

      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      sub_1AB4613F4();
    }

    while (v45[0]);
  }

  return (*(v35 + 8))(v21, AssociatedTypeWitness);
}

void sub_1AB2ABFA0(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a6;
  v9[5] = a7;
  v9[6] = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  sub_1AB460A64();
  sub_1AB01A1F0(sub_1AB2AC448, v9, a2);
  dispatch_group_leave(a3);
}

uint64_t sub_1AB2AC070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v10 + 16))(&v12 - v9, a2, AssociatedTypeWitness, v8);
  sub_1AB460A64();
  return sub_1AB460A14();
}

uint64_t sub_1AB2AC194(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(*a1 + 80);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v24[-v13];
  v25 = v15;
  v26 = v11;
  v27 = v16;
  v28 = v17;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  sub_1AB460A64();
  sub_1AB01A1F0(sub_1AB0CCE40, v24, a4);
  v18 = v29;
  os_unfair_lock_lock((a5 + 24));
  v19 = *(a5 + 16);

  os_unfair_lock_unlock((a5 + 24));
  a2(v18, v19);

  Promise.resolve(_:)(v14, v20, v21, v22);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1AB2AC374()
{
  v1 = (*(*(v0[2] - 8) + 80) + 48) & ~*(*(v0[2] - 8) + 80);
  v2 = (*(*(v0[2] - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1AB2ABC48((v0 + v1), *(v0 + v2), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v2 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((((v2 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v0[2], v0[3], v0[4], v0[5]);
}

uint64_t sub_1AB2AC46C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439960, &qword_1AB4E47D0);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB439968, &unk_1AB4E47D8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CD0];
  *(v0 + 16) = result;
  qword_1EB46BEF8 = v0;
  return result;
}

uint64_t static JitterPipelineBackoff.forJavaScriptLoading.getter()
{
  v0 = swift_allocObject();
  type metadata accessor for ExponentialPipelineBackoff();
  v1 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AD8, &unk_1AB4D9560);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  *(v1 + 32) = v2;
  *(v1 + 16) = xmmword_1AB4D9490;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t JitterPipelineBackoff.__allocating_init(baseWaitInterval:maxWaitInterval:)(double a1, double a2)
{
  v4 = swift_allocObject();
  type metadata accessor for ExponentialPipelineBackoff();
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AD8, &unk_1AB4D9560);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = 0;
  *(v5 + 32) = v6;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v4 + 16) = v5;
  return v4;
}

uint64_t JitterPipelineBackoff.init(baseWaitInterval:maxWaitInterval:)(double a1, double a2)
{
  type metadata accessor for ExponentialPipelineBackoff();
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AD8, &unk_1AB4D9560);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = 0;
  *(v5 + 32) = v6;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v2 + 16) = v5;
  return v2;
}

Swift::Double __swiftcall JitterPipelineBackoff.nextWaitInterval()()
{
  v1 = *(*(v0 + 16) + 32);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB2AC824((v1 + 16), &v5);
  os_unfair_lock_unlock((v1 + 24));
  v3 = v5;
  if (v5 < 0.0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = sub_1AB17DA10(0x20000000000001uLL);
  result = v3 * vcvtd_n_f64_u64(v4, 0x35uLL) + 0.0;
  if (v4 == 0x20000000000000)
  {
    return v3;
  }

  return result;
}

Swift::Void __swiftcall JitterPipelineBackoff.reset()()
{
  v1 = *(*(v0 + 16) + 32);
  os_unfair_lock_lock((v1 + 24));
  *(v1 + 16) = 0;

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t JitterPipelineBackoff.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1AB2AC7E0()
{
  v1 = *(*(v0 + 16) + 32);
  os_unfair_lock_lock((v1 + 24));
  *(v1 + 16) = 0;

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1AB2AC8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v29 = a3;
  v5 = *(a2 + 16);
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v25 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v9 = sub_1AB461354();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v13 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v27 = a1;
  v28 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB460414();
  if ((*(v13 + 48))(v12, 1, v8) == 1)
  {
    (*(v10 + 8))(v12, v9);
    v16 = 1;
    v17 = v29;
    return (*(v13 + 56))(v17, v16, 1, v8);
  }

  v18 = v12;
  v19 = *(v13 + 32);
  v19(v28, v18, v8);
  v32 = *(v3 + 16);
  v20 = v5;
  sub_1AB460A64();
  swift_getWitnessTable();
  v21 = v27;
  sub_1AB460F74();
  if ((v31 & 1) == 0)
  {
    v22 = v25;
    sub_1AB460A24();
    v23 = v26;
    (*(v26 + 8))(v22, v20);
    (*(v23 + 16))(v22, v21, v20);
    sub_1AB460A14();
    v17 = v29;
    v19(v29, v28, v8);
    v16 = 0;
    return (*(v13 + 56))(v17, v16, 1, v8);
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB5034B0);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB5034D0);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB2ACC9C(char *a1, uint64_t a2, void *a3)
{
  v6 = a3[3];
  v7 = sub_1AB461354();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = *(v6 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v8 + 16);
  v24 = a1;
  v19(v13, a1, v7, v16);
  if ((*(v14 + 48))(v13, 1, v6) == 1)
  {
    v20 = *(v8 + 8);
    v20(v13, v7);
    sub_1AB2ACF84(a2, a3, v10);
    (*(*(a3[2] - 8) + 8))(a2);
    v20(v24, v7);
    return (v20)(v10, v7);
  }

  else
  {
    (*(v14 + 32))(v18, v13, v6);
    sub_1AB2AD85C(v18, a2, a3, v10);
    (*(*(a3[2] - 8) + 8))(a2);
    v22 = *(v8 + 8);
    v22(v24, v7);
    v22(v10, v7);
    return (*(v14 + 8))(v18, v6);
  }
}

uint64_t sub_1AB2ACF84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v28 = a3;
  v4 = *(a2 + 16);
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v23 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 24);
  v8 = sub_1AB461354();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v12 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v16 = v27;
  sub_1AB4603C4();
  v26 = a1;
  sub_1AB460314();
  if ((*(v12 + 48))(v11, 1, v7) == 1)
  {
    (*(v9 + 8))(v11, v8);
    v17 = 1;
    v18 = v28;
    return (*(v12 + 56))(v18, v17, 1, v7);
  }

  v22 = *(v12 + 32);
  v22(v15, v11, v7);
  v31 = *(v16 + 16);
  v19 = v25;
  sub_1AB460A64();
  swift_getWitnessTable();
  sub_1AB460F74();
  if ((v30 & 1) == 0)
  {
    v20 = v23;
    sub_1AB460A24();
    (*(v24 + 8))(v20, v19);
    v18 = v28;
    v22(v28, v15, v7);
    v17 = 0;
    return (*(v12 + 56))(v18, v17, 1, v7);
  }

  v29 = 0;
  v30 = 0xE000000000000000;
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB5034B0);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB5034D0);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB2AD350@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 3);
  v6 = sub_1AB461354();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  v9 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v33 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 2);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v34 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + 8);
  v16 = sub_1AB4609F4();
  v17 = *(v2 + 16);
  if (v17 != v16)
  {
    v30 = a2;
    v21 = sub_1AB4609D4();
    sub_1AB460974();
    if (v21)
    {
      v22 = v34;
      (*(v35 + 16))(v34, v15 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v17, v12);
    }

    else
    {
      v29 = sub_1AB461644();
      if (v13 != 8)
      {
        goto LABEL_13;
      }

      v36[0] = v29;
      v22 = v34;
      (*(v35 + 16))(v34, v36, v12);
      swift_unknownObjectRelease();
    }

    v23 = v30;
    if (!__OFADD__(v17, 1))
    {
      *(v2 + 16) = v17 + 1;
      sub_1AB460414();
      v24 = v22;
      if ((*(v9 + 48))(v8, 1, v5) != 1)
      {
        v25 = *(v9 + 32);
        v26 = v33;
        v25(v33, v8, v5);
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v28 = *(TupleTypeMetadata2 + 48);
        (*(v35 + 32))(v23, v24, v12);
        v25((v23 + v28), v26, v5);
        return (*(*(TupleTypeMetadata2 - 8) + 56))(v23, 0, 1, TupleTypeMetadata2);
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    (*(v31 + 8))(v8, v32);
    v36[0] = 0;
    v36[1] = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD00000000000002ELL, 0x80000001AB506DC0);
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](96, 0xE100000000000000);
    result = sub_1AB461884();
    __break(1u);
    return result;
  }

  v18 = swift_getTupleTypeMetadata2();
  v19 = *(*(v18 - 8) + 56);

  return v19(a2, 1, 1, v18);
}

uint64_t sub_1AB2AD800(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    sub_1AB4602A4();
    sub_1AB4602B4();
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AB2AD85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a2;
  v42 = a4;
  v7 = a3[2];
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v41 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v37 = sub_1AB461354();
  v11 = *(v37 - 1);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v39 = &v34 - v22;
  (*(v16 + 16))(v19, a1, v10, v21);
  v35 = a3;
  sub_1AB4603C4();
  v23 = v38;
  sub_1AB460324();
  if ((*(v16 + 48))(v15, 1, v10) == 1)
  {
    v24 = *(v11 + 8);
    v25 = v15;
    v26 = v37;
    v24(v25, v37);
    v27 = sub_1AB460384();
    if (v27 >= 1 && *v4 < v27)
    {
      v28 = v36;
      sub_1AB2ADD50(v35, v36);
      v24(v28, v26);
    }

    (*(v40 + 16))(v41, v23, v7);
    sub_1AB460A64();
    sub_1AB460A14();
    v29 = 1;
    v30 = v42;
    return (*(v16 + 56))(v30, v29, 1, v10);
  }

  v37 = *(v16 + 32);
  (v37)(v39, v15, v10);
  v45 = v4[2];
  sub_1AB460A64();
  swift_getWitnessTable();
  sub_1AB460F74();
  if ((v44 & 1) == 0)
  {
    v31 = v41;
    sub_1AB460A24();
    v32 = v40;
    (*(v40 + 8))(v31, v7);
    (*(v32 + 16))(v31, v23, v7);
    sub_1AB460A14();
    v30 = v42;
    (v37)(v42, v39, v10);
    v29 = 0;
    return (*(v16 + 56))(v30, v29, 1, v10);
  }

  v43 = 0;
  v44 = 0xE000000000000000;
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB5034B0);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB5034D0);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB2ADD50@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[2];
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v2 + 16);
  sub_1AB460A64();
  swift_getWitnessTable();
  if (sub_1AB460F44())
  {
    return (*(*(a1[3] - 8) + 56))(a2, 1, 1);
  }

  swift_getWitnessTable();
  sub_1AB460FA4();
  sub_1AB4603C4();
  sub_1AB460314();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1AB2ADF04(uint64_t a1, void *a2)
{
  sub_1AB4603C4();
  sub_1AB4603B4();
  sub_1AB460A64();
  return sub_1AB460A54();
}

uint64_t sub_1AB2ADF70(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return a2;
}

uint64_t sub_1AB2ADFB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1AB2ADF70(a1, *(v2 + 8), *(v2 + 16));
  v6 = v5;
  v8 = v7;

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v8;
  return result;
}

uint64_t sub_1AB2AE01C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AB37669C(v2, a1, a2);

  return v3;
}

uint64_t sub_1AB2AE070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

char *sub_1AB2AE0C4(void *a1, uint64_t a2, void *a3)
{
  result = [a1 globalObject];
  if (result)
  {
    v7 = result;
    v8._countAndFlagsBits = a2;
    v8._object = a3;
    v9.super.isa = JSValue.call(method:withArguments:)(v8, MEMORY[0x1E69E7CC0]).super.isa;

    if (v10)
    {
      return v3;
    }

    JSValue.array.getter();
    v12 = v11;

    if (v12 >> 62)
    {
LABEL_26:
      v13 = sub_1AB4618F4();
      if (v13)
      {
LABEL_5:
        v14 = 0;
        v3 = MEMORY[0x1E69E7CC0];
        do
        {
          v31 = v3;
          v15 = v14;
          while (1)
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              v16 = MEMORY[0x1AC59C990](v15, v12);
              v14 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
                goto LABEL_24;
              }
            }

            else
            {
              if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_25;
              }

              v16 = *(v12 + 8 * v15 + 32);
              v14 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
LABEL_24:
                __break(1u);
LABEL_25:
                __break(1u);
                goto LABEL_26;
              }
            }

            v17 = v16;
            if ([v17 isString])
            {
              v18 = [v17 toString];
              if (v18)
              {
                break;
              }
            }

            ++v15;
            if (v14 == v13)
            {
              v3 = v31;
              goto LABEL_28;
            }
          }

          v19 = v18;
          v20 = sub_1AB460544();
          v29 = v21;
          v30 = v20;

          v22 = v31;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v22 = sub_1AB020904(0, *(v31 + 2) + 1, 1, v31);
          }

          v24 = v22;
          v25 = *(v22 + 2);
          v26 = v24;
          v27 = *(v24 + 3);
          if (v25 >= v27 >> 1)
          {
            v26 = sub_1AB020904((v27 > 1), v25 + 1, 1, v26);
          }

          *(v26 + 2) = v25 + 1;
          v28 = &v26[16 * v25];
          v3 = v26;
          *(v28 + 4) = v30;
          *(v28 + 5) = v29;
        }

        while (v14 != v13);
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_5;
      }
    }

    v3 = MEMORY[0x1E69E7CC0];
LABEL_28:

    return v3;
  }

  __break(1u);
  return result;
}

id sub_1AB2AE304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5)
{
  result = [a5 globalObject];
  if (result)
  {
    v10 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0, &qword_1AB4D6B60);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1AB4D4190;
    v12 = MEMORY[0x1E69E6158];
    *(v11 + 32) = a1;
    *(v11 + 40) = a2;
    *(v11 + 88) = v12;
    *(v11 + 56) = v12;
    *(v11 + 64) = a3;
    *(v11 + 72) = a4;

    v13 = sub_1AB0B22E0(&unk_1F1FF34E8);
    sub_1AB2AE77C(&unk_1F1FF3508);
    *(v11 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436F98, &qword_1AB4DE220);
    *(v11 + 96) = v13;
    v14._countAndFlagsBits = 0x676E69727473;
    v14._object = 0xE600000000000000;
    v15.super.isa = JSValue.call(method:withArguments:)(v14, v11).super.isa;

    if (!v16)
    {
      if ([(objc_class *)v15.super.isa isString]&& (v17 = [(objc_class *)v15.super.isa toString]) != 0)
      {
        v18 = v17;
        v10 = sub_1AB460544();
      }

      else
      {

        return 0;
      }
    }

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1AB2AE514(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0, &qword_1AB4D6720);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for JSSource(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(MEMORY[0x1E696EB60]) init];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = result;
  v24 = a2;
  v25 = v2;
  result = [objc_allocWithZone(MEMORY[0x1E696EB40]) initWithVirtualMachine_];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = sub_1AB460514();
  [v13 setName_];

  v15 = *(v8 + 20);
  v16 = sub_1AB45F764();
  v17 = *(*(v16 - 8) + 56);
  v17(&v10[v15], 1, 1, v16);
  v18 = v24;
  *v10 = a1;
  *(v10 + 1) = v18;
  v19 = v13;
  sub_1AB45F634();
  v17(v7, 0, 1, v16);
  sub_1AB04F3C8(v7, &v10[v15]);
  v26.value.super.isa = 0;
  v26.is_nil = v19;
  v21.super.isa = JSSource.evaluate(against:in:)(v26, v20).super.isa;

  if (v22)
  {
  }

  else
  {
  }

  sub_1AB1AA550(v10);
  return v19;
}

uint64_t sub_1AB2AE77C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438890, &qword_1AB4E2B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ClassicDataVaultUtilities.ClassicDataVaultCreationError.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v3 >> 61;
  if ((v3 >> 61) <= 1)
  {
    if (!v4)
    {
      sub_1AB4615D4();

LABEL_10:
      MEMORY[0x1AC59BA20](v2, v1);
      v13 = 0x3D6F6E727265202ELL;
      v14 = 0xEA00000000006425;
      goto LABEL_11;
    }

LABEL_8:
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000012, 0x80000001AB506EB0);
    MEMORY[0x1AC59BA20](v2, v1);
    v13 = 0xD000000000000024;
    v14 = 0x80000001AB506ED0;
LABEL_11:
    MEMORY[0x1AC59BA20](v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10, &qword_1AB4D6D50);
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E72F0];
    *(v15 + 16) = xmmword_1AB4D4720;
    v17 = MEMORY[0x1E69E7358];
    *(v15 + 56) = v16;
    *(v15 + 64) = v17;
    *(v15 + 32) = v3;
    v18 = sub_1AB460584();

    return v18;
  }

  if (v4 == 2)
  {
    goto LABEL_8;
  }

  if (v4 != 3)
  {
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000029, 0x80000001AB506E40);
    goto LABEL_10;
  }

  v20 = (v3 & 0x1FFFFFFFFFFFFFFFLL);
  v5 = (v3 & 0x1FFFFFFFFFFFFFFFLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
  v6 = sub_1AB19FC20();
  if (swift_dynamicCast())
  {
    sub_1AB4615D4();

    MEMORY[0x1AC59BA20](v2, v1);
    MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB506E90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10, &qword_1AB4D6D50);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1AB4D47F0;
    *(v7 + 56) = v6;
    *(v7 + 64) = sub_1AB2AEB44();
    *(v7 + 32) = v19;
    v8 = v19;
    v9 = [v8 code];
    v10 = MEMORY[0x1E69E65A8];
    *(v7 + 96) = MEMORY[0x1E69E6530];
    *(v7 + 104) = v10;
    *(v7 + 72) = v9;
    v11 = sub_1AB460584();

    return v11;
  }

  else
  {
    result = sub_1AB461D94();
    __break(1u);
  }

  return result;
}

unint64_t sub_1AB2AEB44()
{
  result = qword_1EB4399F0;
  if (!qword_1EB4399F0)
  {
    sub_1AB19FC20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4399F0);
  }

  return result;
}

uint64_t sub_1AB2AEBBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 24))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 16) >> 60) >> 1) & 0xFFFFFFF7 | (8 * ((*(a1 + 16) & 0x1000000000000000) != 0))) ^ 0xF;
  if (v3 >= 0xB)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1AB2AEC10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 3) & 1) - 2 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_1AB2AECA8()
{
  result = qword_1EB4399F8;
  if (!qword_1EB4399F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4399F8);
  }

  return result;
}

uint64_t Preferences.subscript.setter(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AB2B1D98(a1, a2, a3, a4, a5);
  v6 = sub_1AB461354();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

uint64_t sub_1AB2AED74@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a1 + a2 - 24);
  v4 = *(a1 + a2 - 16);
  v6 = *(a1 + a2 - 8);
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;

  Preferences.subscript.getter(v9, v5, v4, v6, a3);
}

uint64_t sub_1AB2AEDF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = a3[1];
  v10[0] = *a3;
  v10[1] = v8;

  return sub_1AB2B1D98(a1, v10, v6, v5, v7);
}

void (*Preferences.subscript.modify(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x50uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[2] = a5;
  v12[3] = v5;
  *v12 = a3;
  v12[1] = a4;
  v14 = sub_1AB461354();
  v13[4] = v14;
  v15 = *(v14 - 8);
  v13[5] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[6] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[6] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v18 = v17;
  v19 = *a2;
  v20 = a2[1];
  v13[7] = v17;
  v13[8] = v19;
  v13[9] = v20;
  v22[0] = v19;
  v22[1] = v20;
  swift_bridgeObjectRetain_n();
  Preferences.subscript.getter(v22, a3, a4, a5, v18);

  return sub_1AB2AEFCC;
}

void sub_1AB2AEFCC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[8];
  v4 = (*a1)[9];
  v5 = (*a1)[6];
  v6 = (*a1)[7];
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = (*a1)[2];
  v11 = **a1;
  v10 = (*a1)[1];
  if (a2)
  {
    v12 = (*a1)[2];
    (*(v8 + 16))(v5, v6, v7);
    v14 = v3;
    v15 = v4;
    sub_1AB2B1D98(v5, &v14, v11, v10, v12);
    v13 = *(v8 + 8);
    v13(v5, v7);
    v13(v6, v7);
  }

  else
  {
    v14 = (*a1)[8];
    v15 = v4;
    sub_1AB2B1D98(v6, &v14, v11, v10, v9);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_1AB2AF0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v20 = *(a3 + a4 - 32);
  v7 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  swift_getAssociatedTypeWitness();
  v9 = sub_1AB461354();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  (*(v17 + 16))(&v19 - v15, a3, v6, v14);
  (*(v10 + 16))(v12, a1, v9);
  return Preferences.subscript.setter(v12, v16, v20, v6, v7, v8);
}

uint64_t Preferences.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v29 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1AB461354();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - v18;
  v20 = *(v12 + 16);
  v31 = a1;
  v20(v14, a1, v11, v17);
  if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    v21 = *(v12 + 8);
    v21(v14, v11);
    v22 = *(a6 + 8);
    v34 = a4;
    v35 = v22;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
    v24 = *(a4 - 8);
    (*(v24 + 16))(boxed_opaque_existential_0, a2, a4);
    memset(v32, 0, sizeof(v32));
    (*(v30 + 16))(v32, v33, v29);
    (*(v24 + 8))(a2, a4);
    return (v21)(v31, v11);
  }

  else
  {
    (*(v15 + 32))(v19, v14, AssociatedTypeWitness);
    v26 = *(a6 + 8);
    v34 = a4;
    v35 = v26;
    v27 = __swift_allocate_boxed_opaque_existential_0(v33);
    v28 = *(a4 - 8);
    (*(v28 + 16))(v27, a2, a4);
    (*(a6 + 24))(v32, v19, a4, a6);
    (*(v30 + 16))(v32, v33, v29);
    (*(v28 + 8))(a2, a4);
    (*(v12 + 8))(v31, v11);
    return (*(v15 + 8))(v19, AssociatedTypeWitness);
  }
}

void (*Preferences.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t **a1, char a2)
{
  v13 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(0x60uLL);
  }

  v15 = v14;
  *a1 = v14;
  v27 = a3;
  v14[3] = a6;
  v14[4] = v6;
  v14[1] = a4;
  v14[2] = a5;
  *v14 = a3;
  swift_getAssociatedTypeWitness();
  v16 = sub_1AB461354();
  v15[5] = v16;
  v17 = *(v16 - 8);
  v15[6] = v17;
  v18 = *(v17 + 64);
  v19 = v13;
  if (v13)
  {
    v15[7] = swift_coroFrameAlloc();
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v15[7] = malloc(*(v17 + 64));
    v20 = malloc(v18);
  }

  v21 = v20;
  v15[8] = v20;
  v22 = *(a4 - 8);
  v23 = v22;
  v15[9] = v22;
  v24 = *(v22 + 64);
  if (v19)
  {
    v15[10] = swift_coroFrameAlloc();
    v25 = swift_coroFrameAlloc();
  }

  else
  {
    v15[10] = malloc(*(v22 + 64));
    v25 = malloc(v24);
  }

  v15[11] = v25;
  (*(v23 + 16))();
  Preferences.subscript.getter(a2, v27, a4, a5, a6, v21);
  return sub_1AB2AF850;
}

void sub_1AB2AF850(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[10];
  v4 = (*a1)[11];
  if (a2)
  {
    v6 = v2[8];
    v5 = v2[9];
    v8 = v2[6];
    v7 = v2[7];
    v9 = v2[5];
    v13 = v2[3];
    v12 = v2[2];
    v10 = *v2;
    v11 = v2[1];
    (*(v8 + 16))(v7, v6, v9);
    (*(v5 + 32))(v3, v4, v11);
    Preferences.subscript.setter(v7, v3, v10, v11, v12, v13);
    (*(v8 + 8))(v6, v9);
  }

  else
  {
    v7 = v2[7];
    v6 = v2[8];
    Preferences.subscript.setter(v6, v4, *v2, v2[1], v2[2], v2[3]);
  }

  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

char *sub_1AB2AF980(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439A80, &qword_1AB4E4C50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AB2AFAE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439E00, &qword_1AB4D6A10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1AB2AFBEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439C10, &qword_1AB4E4D80);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1AB2AFD38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439C40, qword_1AB4E8F60);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1AB2AFE3C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E98, &qword_1AB4D6AE8);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A080, &qword_1AB4D6AF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1AB2AFF70(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439DB0, &qword_1AB4D6A98);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70, &unk_1AB4D6790);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AB2B00DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A088, &qword_1AB4E5000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1AB2B0250(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A138, &qword_1AB4E5068);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}