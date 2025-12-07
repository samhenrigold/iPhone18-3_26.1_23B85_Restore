uint64_t StaticAccessory.offServicesCount.getter()
{
  v0 = type metadata accessor for StaticService(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1BD0D48();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v8 = *(v1 + 72);
    while (1)
    {
      sub_1D1BD4044(v7, v3, type metadata accessor for StaticService);
      v9 = StaticService.isActivated.getter();
      result = sub_1D1BD40AC(v3, type metadata accessor for StaticService);
      v11 = (v9 & 1) == 0;
      v12 = __OFADD__(v6, v11);
      v6 += v11;
      if (v12)
      {
        break;
      }

      v7 += v8;
      if (!--v5)
      {

        return v6;
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

uint64_t StaticAccessory.totalEligibleServicesCount.getter()
{
  sub_1D1BD0D48();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t StaticAccessory.allServicessOn.getter()
{
  v0 = type metadata accessor for StaticService(0);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  sub_1D1BD0D48();
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v11 = v7 + v10;
    v12 = *(v1 + 72);
    do
    {
      sub_1D1BD4044(v11, v6, type metadata accessor for StaticService);
      v13 = StaticService.isActivated.getter();
      result = sub_1D1BD40AC(v6, type metadata accessor for StaticService);
      v15 = __OFADD__(v9, v13 & 1);
      v9 += v13 & 1;
      if (v15)
      {
        __break(1u);
        goto LABEL_16;
      }

      v11 += v12;
      --v8;
    }

    while (v8);

    if (v9 <= 0)
    {
      return 0;
    }

    sub_1D1BD0D48();
    v17 = *(v16 + 16);
    if (!v17)
    {

      return 1;
    }

    v18 = 0;
    v19 = v16 + v10;
    while (1)
    {
      sub_1D1BD4044(v19, v4, type metadata accessor for StaticService);
      v20 = StaticService.isActivated.getter();
      result = sub_1D1BD40AC(v4, type metadata accessor for StaticService);
      v21 = (v20 & 1) == 0;
      v15 = __OFADD__(v18, v21);
      v18 += v21;
      if (v15)
      {
        break;
      }

      v19 += v12;
      if (!--v17)
      {

        return v18 == 0;
      }
    }

LABEL_16:
    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

BOOL StaticAccessory.tileShouldShowCount.getter()
{
  sub_1D1BD0D48();
  v1 = *(v0 + 16);

  if (v1 > 3)
  {
    return 1;
  }

  sub_1D1BD0D48();
  v4 = *(v3 + 16);

  if (v4 != 2)
  {
    return 0;
  }

  return StaticAccessory.allServicesAreTheSameKind.getter();
}

uint64_t StaticAccessory.allServicesOff.getter()
{
  v0 = type metadata accessor for StaticService(0);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  sub_1D1BD0D48();
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v11 = v7 + v10;
    v12 = *(v1 + 72);
    do
    {
      sub_1D1BD4044(v11, v6, type metadata accessor for StaticService);
      v13 = StaticService.isActivated.getter();
      result = sub_1D1BD40AC(v6, type metadata accessor for StaticService);
      v15 = (v13 & 1) == 0;
      v16 = __OFADD__(v9, v15);
      v9 += v15;
      if (v16)
      {
        __break(1u);
        goto LABEL_16;
      }

      v11 += v12;
      --v8;
    }

    while (v8);

    if (v9 <= 0)
    {
      return 0;
    }

    sub_1D1BD0D48();
    v18 = *(v17 + 16);
    if (!v18)
    {

      return 1;
    }

    v19 = 0;
    v20 = v17 + v10;
    while (1)
    {
      sub_1D1BD4044(v20, v4, type metadata accessor for StaticService);
      v21 = StaticService.isActivated.getter();
      result = sub_1D1BD40AC(v4, type metadata accessor for StaticService);
      v16 = __OFADD__(v19, v21 & 1);
      v19 += v21 & 1;
      if (v16)
      {
        break;
      }

      v20 += v12;
      if (!--v18)
      {

        return v19 == 0;
      }
    }

LABEL_16:
    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

void sub_1D1BD3934(uint64_t a1)
{
  v2 = type metadata accessor for StaticCluster(0);
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448C8, &qword_1D1E94060);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v39 - v5;
  v7 = type metadata accessor for StaticEndpoint(0);
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for StaticClusterPowerSource(0);
  v10 = *(v50 - 8);
  v11 = MEMORY[0x1EEE9AC00](v50);
  v40 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v41 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v39 - v15;
  v16 = *(a1 + *(type metadata accessor for StaticMatterDevice(0) + 56));
  v17 = 1 << *(v16 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v16 + 64);
  v20 = (v17 + 63) >> 6;
  v21 = (v10 + 56);
  v43 = v10;
  v22 = (v10 + 48);
  swift_bridgeObjectRetain_n();
  v23 = 0;
  v47 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v24 = v23;
    if (!v19)
    {
      break;
    }

LABEL_8:
    sub_1D1BD4044(*(v16 + 56) + *(v48 + 72) * (__clz(__rbit64(v19)) | (v23 << 6)), v9, type metadata accessor for StaticEndpoint);
    v25 = *&v9[*(v49 + 36)];
    if (!*(v25 + 16))
    {
      goto LABEL_13;
    }

    v26 = sub_1D171D278(2);
    if ((v27 & 1) == 0)
    {
      goto LABEL_13;
    }

    v28 = *(v25 + 56);
    v29 = v44;
    sub_1D1BD4044(v28 + *(v45 + 72) * v26, v44, type metadata accessor for StaticCluster);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      sub_1D1BD40AC(v29, type metadata accessor for StaticCluster);
LABEL_13:
      v30 = 1;
      goto LABEL_14;
    }

    sub_1D1BD410C(v29, v6, type metadata accessor for StaticClusterPowerSource);
    v30 = 0;
LABEL_14:
    v19 &= v19 - 1;
    v31 = v50;
    (*v21)(v6, v30, 1, v50);
    sub_1D1BD40AC(v9, type metadata accessor for StaticEndpoint);
    if ((*v22)(v6, 1, v31) == 1)
    {
      sub_1D1741A30(v6, &qword_1EC6448C8, &qword_1D1E94060);
    }

    else
    {
      sub_1D1BD410C(v6, v40, type metadata accessor for StaticClusterPowerSource);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_1D177D8BC(0, v47[2] + 1, 1, v47);
      }

      v33 = v47[2];
      v32 = v47[3];
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v39 = v33 + 1;
        v36 = sub_1D177D8BC((v32 > 1), v33 + 1, 1, v47);
        v34 = v39;
        v47 = v36;
      }

      v35 = v47;
      v47[2] = v34;
      sub_1D1BD410C(v40, v35 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v33, type metadata accessor for StaticClusterPowerSource);
    }
  }

  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      return;
    }

    if (v23 >= v20)
    {
      break;
    }

    v19 = *(v16 + 64 + 8 * v23);
    ++v24;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  if (v47[2])
  {
    v37 = v41;
    sub_1D1BD4044(v47 + ((*(v43 + 80) + 32) & ~*(v43 + 80)), v41, type metadata accessor for StaticClusterPowerSource);

    v38 = v42;
    sub_1D1BD410C(v37, v42, type metadata accessor for StaticClusterPowerSource);
    sub_1D1BD40AC(v38, type metadata accessor for StaticClusterPowerSource);
  }

  else
  {
  }
}

void *sub_1D1BD3F0C()
{
  if (qword_1EC642398 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC6BE1B0;

  result = sub_1D1B65564(&unk_1F4D5F3C8, v0);
  off_1EC64C610 = result;
  return result;
}

double sub_1D1BD3F80@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D18CE6D8();
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtC13HomeDataModel9DataModel__homesToMatterSnapshots;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

uint64_t sub_1D1BD4044(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1BD40AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1BD410C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D1BD4174(void *a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 0xC000000000000001) != 0)
  {

    sub_1D1E686EC();
    sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
    sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
    sub_1D1E681BC();
    v2 = v39[1];
    v4 = v39[2];
    v5 = v39[3];
    v6 = v39[4];
    v7 = v39[5];
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
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

    v7 = v10 & *(a2 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  while (v2 < 0)
  {
    v18 = sub_1D1E6877C();
    if (!v18 || (v38 = v18, sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8), swift_dynamicCast(), v17 = v39[0], v15 = v6, v16 = v7, !v39[0]))
    {
LABEL_33:
      sub_1D1716918(v2);
      return;
    }

LABEL_19:
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (!v19)
    {
      v12 = v17;
      goto LABEL_9;
    }

    v37 = v16;
    v20 = [v19 characteristic];
    v12 = [v20 service];

    if (v12)
    {
      v36 = a1;
      v21 = [v12 associatedServiceType];
      if (v21)
      {
        v22 = v21;
        v23 = sub_1D1E6781C();
        v25 = v24;

        v26._countAndFlagsBits = v23;
        v26._object = v25;
        ServiceKind.init(rawValue:)(v26);
        v27 = v39[0];
        if (LOBYTE(v39[0]) == 53)
        {
          v27 = 0;
        }

        LOBYTE(v39[0]) = v27;
        sub_1D1BDB200(v39, &v38);
        v28 = v38;
        if (v38 != 8)
        {
          goto LABEL_31;
        }
      }

      else
      {
        LOBYTE(v38) = 8;
      }

      v29 = [v12 serviceType];
      v30 = sub_1D1E6781C();
      v32 = v31;

      v33._countAndFlagsBits = v30;
      v33._object = v32;
      ServiceKind.init(rawValue:)(v33);
      v34 = v39[0];
      if (LOBYTE(v39[0]) == 53)
      {
        v34 = 0;
      }

      v40 = v34;
      ServiceKind.umbrellaCategory.getter(v39);
      v28 = LOBYTE(v39[0]);
LABEL_31:
      v39[0] = v36;

      sub_1D176989C(&v38, v28);
      v35 = v39[0];

      a1 = v35;
      goto LABEL_32;
    }

    v12 = v17;
LABEL_32:
    v16 = v37;
LABEL_9:

    v6 = v15;
    v7 = v16;
  }

  v13 = v6;
  v14 = v7;
  v15 = v6;
  if (v7)
  {
LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v2 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_33;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
      goto LABEL_33;
    }

    v14 = *(v4 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1D1BD451C()
{
  v1 = 0x6E69747563657865;
  if (*v0 != 1)
  {
    v1 = 0x64656C696166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1D1BD4570@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1BDBA50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1BD4598(uint64_t a1)
{
  v2 = sub_1D1BD4AF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BD45D4(uint64_t a1)
{
  v2 = sub_1D1BD4AF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BD4610(uint64_t a1)
{
  v2 = sub_1D1BD4BA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BD464C(uint64_t a1)
{
  v2 = sub_1D1BD4BA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BD4688(uint64_t a1)
{
  v2 = sub_1D1BD4B4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BD46C4(uint64_t a1)
{
  v2 = sub_1D1BD4B4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BD4700(uint64_t a1)
{
  v2 = sub_1D1BD4BF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BD473C(uint64_t a1)
{
  v2 = sub_1D1BD4BF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticActionSet.ExecutionStatus.encode(to:)(void *a1, int a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C618, &qword_1D1E9FA60);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C620, &qword_1D1E9FA68);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C628, &qword_1D1E9FA70);
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C630, &unk_1D1E9FA78);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1BD4AF8();
  sub_1D1E6930C();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_1D1BD4BA0();
      sub_1D1E68DFC();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_1D1BD4B4C();
      v16 = v22;
      sub_1D1E68DFC();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_1D1BD4BF4();
    sub_1D1E68DFC();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

unint64_t sub_1D1BD4AF8()
{
  result = qword_1EC64C638;
  if (!qword_1EC64C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C638);
  }

  return result;
}

unint64_t sub_1D1BD4B4C()
{
  result = qword_1EC64C640;
  if (!qword_1EC64C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C640);
  }

  return result;
}

unint64_t sub_1D1BD4BA0()
{
  result = qword_1EC64C648;
  if (!qword_1EC64C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C648);
  }

  return result;
}

unint64_t sub_1D1BD4BF4()
{
  result = qword_1EC64C650;
  if (!qword_1EC64C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C650);
  }

  return result;
}

uint64_t StaticActionSet.ExecutionStatus.hashValue.getter(unsigned __int8 a1)
{
  sub_1D1E6920C();
  MEMORY[0x1D3892850](a1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1BD4CD0@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D1BDBB6C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t StaticActionSet.Error.hashValue.getter()
{
  sub_1D1E6920C();
  MEMORY[0x1D3892850](0);
  return sub_1D1E6926C();
}

uint64_t StaticActionSet.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticActionSet.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticActionSet(0) + 20));

  return v1;
}

uint64_t StaticActionSet.actionSetKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticActionSet(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t StaticActionSet.homeId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticActionSet(0) + 28);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StaticActionSet.tileIcon.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StaticActionSet(0) + 36));
  v4 = v3[3];
  v12 = v3[2];
  v13 = v4;
  v14[0] = v3[4];
  v5 = v14[0];
  *(v14 + 9) = *(v3 + 73);
  v6 = *(v14 + 9);
  v8 = v3[1];
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  a1[2] = v12;
  a1[3] = v4;
  a1[4] = v5;
  *(a1 + 73) = v6;
  *a1 = v7;
  a1[1] = v8;
  return sub_1D18A9844(v11, &v10);
}

double StaticActionSet.roomIds.getter()
{
  type metadata accessor for StaticActionSet(0);

  return result;
}

double StaticActionSet.umbrellaCategories.getter()
{
  type metadata accessor for StaticActionSet(0);

  return result;
}

unint64_t sub_1D1BD5078(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x65536E6F69746361;
      break;
    case 3:
      result = 0x6449656D6F68;
      break;
    case 4:
      result = 0x7463416F4E736168;
      break;
    case 5:
      result = 0x6E6F6349656C6974;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0x7364496D6F6F72;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x6176697463417369;
      break;
    case 11:
      result = 0x6F69747563657865;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D1BD5208@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1BDCE40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1BD5230(uint64_t a1)
{
  v2 = sub_1D1BDC128();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BD526C(uint64_t a1)
{
  v2 = sub_1D1BDC128();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticActionSet.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C658, &qword_1D1E9FA88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1BDC128();
  sub_1D1E6930C();
  LOBYTE(v29[0]) = 0;
  sub_1D1E66A7C();
  sub_1D1BDC278(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  v34 = v3;
  v9 = v5;
  sub_1D1E68F1C();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v18 = v6;
  v11 = type metadata accessor for StaticActionSet(0);
  LOBYTE(v29[0]) = 1;
  sub_1D1E68ECC();
  LOBYTE(v29[0]) = *(v34 + v11[6]);
  LOBYTE(v24) = 2;
  sub_1D18F1588();
  sub_1D1E68E5C();
  LOBYTE(v29[0]) = 3;
  sub_1D1E68F1C();
  v33[0] = 4;
  sub_1D1E68EDC();
  v12 = (v34 + v11[9]);
  v13 = v12[3];
  v14 = v12[1];
  v30 = v12[2];
  v31 = v13;
  v15 = v12[3];
  *v32 = v12[4];
  *&v32[9] = *(v12 + 73);
  v16 = v12[1];
  v29[0] = *v12;
  v29[1] = v16;
  v26 = v30;
  v27 = v15;
  v28[0] = v12[4];
  *(v28 + 9) = *(v12 + 73);
  v24 = v29[0];
  v25 = v14;
  v23 = 5;
  sub_1D18A9844(v29, v21);
  sub_1D1BDC17C();
  sub_1D1E68F1C();
  v21[2] = v26;
  v21[3] = v27;
  *v22 = v28[0];
  *&v22[9] = *(v28 + 9);
  v21[0] = v24;
  v21[1] = v25;
  sub_1D18A98A0(v21);
  v20 = *(v34 + v11[10]);
  v19 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643420, &qword_1D1E718A0);
  sub_1D1BDC314(&qword_1EC64C670, MEMORY[0x1E69E6160], MEMORY[0x1E69E63C0], MEMORY[0x1E69E5E38]);
  sub_1D1E68E5C();
  v20 = *(v34 + v11[11]);
  v19 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1BDC384(&qword_1EC646B10, &qword_1EE07B258, MEMORY[0x1E69695B0], MEMORY[0x1E69E64F0]);
  sub_1D1E68F1C();
  LOBYTE(v20) = 8;
  sub_1D1E68EDC();
  v20 = *(v34 + v11[13]);
  v19 = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C678, &qword_1D1E9FA90);
  sub_1D1BDC420(&qword_1EC64C680, sub_1D1BDC1D0, MEMORY[0x1E69E64F0]);
  sub_1D1E68F1C();
  LOBYTE(v20) = 10;
  sub_1D1E68EDC();
  LOBYTE(v20) = *(v34 + v11[15]);
  v19 = 11;
  sub_1D1BDC224();
  sub_1D1E68F1C();
  LOBYTE(v20) = 12;
  sub_1D1E669FC();
  sub_1D1BDC278(&qword_1EC642EC8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1D1E68E5C();
  return (*(v18 + 8))(v8, v9);
}

uint64_t StaticActionSet.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v28 = sub_1D1E669FC();
  v4 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v22 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v26 = &v21 - v7;
  sub_1D1E66A7C();
  sub_1D1BDC278(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v8 = type metadata accessor for StaticActionSet(0);
  sub_1D1E678EC();
  v9 = *(v1 + v8[6]);
  v27 = v4;
  sub_1D1E6922C();
  if (v9 != 7)
  {
    sub_1D1E678EC();
  }

  sub_1D1E676EC();
  sub_1D1E6922C();
  v10 = v1 + v8[9];
  v11 = *(v10 + 16);
  v12 = *(v10 + 40);
  v13 = *(v10 + 64);
  v14 = *(v10 + 72);
  v23 = *(v10 + 80);
  v24 = v14;
  v25 = *(v10 + 88);
  sub_1D1E678EC();
  MEMORY[0x1D3892850](v11);
  sub_1D1E678EC();
  MEMORY[0x1D3892850](v12);
  sub_1D1E678EC();
  MEMORY[0x1D3892850](v13);
  sub_1D1E678EC();
  MEMORY[0x1D3892850](v25);
  v15 = *(v2 + v8[10]);
  sub_1D1E6922C();
  if (v15)
  {
    sub_1D185B98C(a1, v15);
  }

  v17 = v27;
  v16 = v28;
  sub_1D176D4E8(a1, *(v2 + v8[11]));
  sub_1D1E6922C();
  sub_1D176E30C(a1, *(v2 + v8[13]));
  sub_1D1E6922C();
  MEMORY[0x1D3892850](*(v2 + v8[15]));
  v18 = v26;
  sub_1D1741C08(v2 + v8[16], v26, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    return sub_1D1E6922C();
  }

  v20 = v22;
  (*(v17 + 32))(v22, v18, v16);
  sub_1D1E6922C();
  sub_1D1BDC278(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D1E676EC();
  return (*(v17 + 8))(v20, v16);
}

uint64_t StaticActionSet.hashValue.getter()
{
  sub_1D1E6920C();
  StaticActionSet.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticActionSet.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = &v35 - v4;
  v5 = sub_1D1E66A7C();
  v42 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v35 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C698, &qword_1D1E9FA98);
  v11 = *(v10 - 8);
  v44 = v10;
  v45 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - v12;
  v14 = type metadata accessor for StaticActionSet(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1BDC128();
  v46 = v13;
  v17 = v47;
  sub_1D1E692FC();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v8;
  v47 = a1;
  v38 = v14;
  v39 = v16;
  LOBYTE(v49) = 0;
  sub_1D1BDC278(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v18 = v43;
  sub_1D1E68D7C();
  v19 = *(v42 + 32);
  v20 = v39;
  v19(v39, v18, v5);
  LOBYTE(v49) = 1;
  v21 = sub_1D1E68D2C();
  v36 = v5;
  v43 = 0;
  v35 = v19;
  v22 = v20;
  v23 = v38;
  v24 = &v22[v38[5]];
  *v24 = v21;
  v24[1] = v25;
  LOBYTE(v48) = 2;
  sub_1D18F187C();
  sub_1D1E68CBC();
  v39[v23[6]] = v49;
  LOBYTE(v49) = 3;
  v26 = v37;
  v27 = v36;
  sub_1D1E68D7C();
  v28 = v26;
  v29 = v39;
  v35(&v39[v23[7]], v28, v27);
  LOBYTE(v49) = 4;
  v29[v23[8]] = sub_1D1E68D3C() & 1;
  v55 = 5;
  sub_1D1BDC2C0();
  sub_1D1E68D7C();
  v30 = &v29[v23[9]];
  v31 = v52;
  *(v30 + 2) = v51;
  *(v30 + 3) = v31;
  *(v30 + 4) = v53[0];
  *(v30 + 73) = *(v53 + 9);
  v32 = v50;
  *v30 = v49;
  *(v30 + 1) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643420, &qword_1D1E718A0);
  v54 = 6;
  sub_1D1BDC314(&qword_1EC64C6A8, MEMORY[0x1E69E6190], MEMORY[0x1E69E63E8], MEMORY[0x1E69E5E58]);
  sub_1D1E68CBC();
  *&v39[v23[10]] = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  v54 = 7;
  sub_1D1BDC384(&qword_1EC646B78, &qword_1EC644B20, MEMORY[0x1E69695D0], MEMORY[0x1E69E6510]);
  sub_1D1E68D7C();
  *&v39[v23[11]] = v48;
  LOBYTE(v48) = 8;
  v39[v23[12]] = sub_1D1E68D3C() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C678, &qword_1D1E9FA90);
  v54 = 9;
  sub_1D1BDC420(&qword_1EC64C6B0, sub_1D1BDC498, MEMORY[0x1E69E6510]);
  sub_1D1E68D7C();
  *&v39[v38[13]] = v48;
  LOBYTE(v48) = 10;
  v39[v38[14]] = sub_1D1E68D3C() & 1;
  v54 = 11;
  sub_1D1BDC4EC();
  sub_1D1E68D7C();
  v39[v38[15]] = v48;
  sub_1D1E669FC();
  LOBYTE(v48) = 12;
  sub_1D1BDC278(&qword_1EC642EB8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1D1E68CBC();
  (*(v45 + 8))(v46, v44);
  v33 = v39;
  sub_1D1741A90(v41, &v39[v38[16]], &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1BDD270(v33, v40, type metadata accessor for StaticActionSet);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return sub_1D1BDD340(v33, type metadata accessor for StaticActionSet);
}

uint64_t sub_1D1BD695C()
{
  sub_1D1E6920C();
  StaticActionSet.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1BD69A0(uint64_t a1)
{
  sub_1D1E6920C();
  StaticActionSet.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t StaticActionSet.foregroundColor.getter()
{
  if (!*(v0 + *(type metadata accessor for StaticActionSet(0) + 40)) || (v1 = , (result = Color.init(_:)(v1)) == 0))
  {
    if (qword_1EC642158 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
  }

  return result;
}

uint64_t StaticActionSet.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D1E669FC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t StaticActionSet.statusString(with:associatedMatterDevice:)()
{
  v1 = type metadata accessor for StaticActionSet(0);
  result = 0;
  if (*(v0 + *(v1 + 60)) == 2)
  {
    return static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EC64E0);
  }

  return result;
}

uint64_t StaticActionSet.set(showInDashboard:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1D1BD6C88;

  return sub_1D1E387D4();
}

uint64_t sub_1D1BD6C88(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BD6D88, 0, 0);
}

uint64_t sub_1D1BD6D88()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = StaticActionSet.get(from:)(*(v0 + 32));

    if (v2)
    {
      v3 = *(v0 + 40);
      v4 = v2;
      HMActionSet.shouldShowInDashboard.setter(v3);
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t StaticActionSet.actionSet.getter()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D1BD6EC4;

  return sub_1D1E387D4();
}

uint64_t sub_1D1BD6EC4(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BD6FC4, 0, 0);
}

uint64_t sub_1D1BD6FC4()
{
  isa = v0[4].super.isa;
  if (isa)
  {
    v2 = StaticActionSet.get(from:)(v0[4]);
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1].super.isa;

  return v3(v2);
}

uint64_t sub_1D1BD705C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (v2 + *(a1 + 36));
  v4 = v3[3];
  v12 = v3[2];
  v13 = v4;
  v14[0] = v3[4];
  v5 = v14[0];
  *(v14 + 9) = *(v3 + 73);
  v6 = *(v14 + 9);
  v8 = v3[1];
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  a2[2] = v12;
  a2[3] = v4;
  a2[4] = v5;
  *(a2 + 73) = v6;
  *a2 = v7;
  a2[1] = v8;
  return sub_1D18A9844(v11, &v10);
}

uint64_t sub_1D1BD70BC(uint64_t a1)
{
  if (!*(v1 + *(a1 + 40)) || (v2 = , (result = Color.init(_:)(v2)) == 0))
  {
    if (qword_1EC642158 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
  }

  return result;
}

uint64_t sub_1D1BD716C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + *(a3 + 60)) == 2)
  {
    return static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EC64E0);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1BD71BC(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1D1BD6C88;

  return sub_1D1E387D4();
}

uint64_t static StaticActionSet.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for StaticActionSet(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v5 == *v7 && v6 == v7[1];
  if (v8 || (v9 = 1, (sub_1D1E6904C() & 1) == 0) && (v9 = 0, (sub_1D1E6904C() & 1) != 0))
  {

    JUMPOUT(0x1D3890070);
  }

  return v9;
}

uint64_t sub_1D1BD7364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a1 + v3 + 8);
  v6 = (a2 + v3);
  v7 = v4 == *v6 && v5 == v6[1];
  if (v7 || (v8 = 1, (sub_1D1E6904C() & 1) == 0) && (v8 = 0, (sub_1D1E6904C() & 1) != 0))
  {

    JUMPOUT(0x1D3890070);
  }

  return v8;
}

uint64_t sub_1D1BD7434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = *(a2 + v5);
  v7 = *(a2 + v5 + 8);
  v8 = (a1 + v5);
  if (v6 == *v8 && v7 == v8[1])
  {
LABEL_8:
    v10 = MEMORY[0x1D3890070](a2, a1) ^ 1;
    return v10 & 1;
  }

  if ((sub_1D1E6904C() & 1) == 0)
  {
    if ((sub_1D1E6904C() & 1) == 0)
    {
      v10 = 1;
      return v10 & 1;
    }

    goto LABEL_8;
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1D1BD74E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a1 + v3 + 8);
  v6 = (a2 + v3);
  if (v4 == *v6 && v5 == v6[1])
  {
LABEL_8:
    v10 = MEMORY[0x1D3890070](a1, a2) ^ 1;
    return v10 & 1;
  }

  v8 = a1;
  v9 = a2;
  if ((sub_1D1E6904C() & 1) == 0)
  {
    v11 = sub_1D1E6904C();
    a2 = v9;
    a1 = v8;
    if ((v11 & 1) == 0)
    {
      v10 = 1;
      return v10 & 1;
    }

    goto LABEL_8;
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1D1BD7598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a2 + v3);
  v5 = *(a2 + v3 + 8);
  v6 = (a1 + v3);
  v7 = v4 == *v6 && v5 == v6[1];
  if (v7 || (v8 = 1, (sub_1D1E6904C() & 1) == 0) && (v8 = 0, (sub_1D1E6904C() & 1) != 0))
  {

    JUMPOUT(0x1D3890070);
  }

  return v8;
}

uint64_t sub_1D1BD7668@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v48 = a7;
  v49 = a5;
  v50 = a6;
  v46 = a3;
  v52 = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643718, &qword_1D1E71E70);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v47 = &v45 - v12;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated - 8);
  v51 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D1E66A7C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v45 - v20;
  v22 = *a1;
  v23 = sub_1D1CC905C(a2);
  if (v23 && (v24 = v23, v25 = [v22 uniqueIdentifier], sub_1D1E66A5C(), v25, LOBYTE(v25) = sub_1D1719534(v21, v24), , (*(v16 + 8))(v21, v15), (v25 & 1) == 0))
  {
    v37 = type metadata accessor for StaticActionSet(0);
    return (*(*(v37 - 8) + 56))(v52, 1, 1, v37);
  }

  else
  {
    v26 = v51;
    sub_1D1BDD270(v46, v51, type metadata accessor for StateSnapshot.UpdateType);
    if (a4)
    {
      v27 = v22;
      v28 = [v22 uniqueIdentifier];
      sub_1D1E66A5C();

      if (*(a4 + 16) && (v29 = sub_1D1742188(), (v30 & 1) != 0))
      {
        v31 = v29;
        v32 = *(a4 + 56);
        v33 = type metadata accessor for StaticActionSet(0);
        v34 = *(v33 - 8);
        v35 = v32 + *(v34 + 72) * v31;
        v27 = v22;
        v36 = v47;
        sub_1D1BDD270(v35, v47, type metadata accessor for StaticActionSet);
        (*(v16 + 8))(v19, v15);
        (*(v34 + 56))(v36, 0, 1, v33);
        v26 = v51;
      }

      else
      {
        (*(v16 + 8))(v19, v15);
        v39 = type metadata accessor for StaticActionSet(0);
        v36 = v47;
        (*(*(v39 - 8) + 56))(v47, 1, 1, v39);
      }
    }

    else
    {
      v40 = type metadata accessor for StaticActionSet(0);
      v36 = v47;
      (*(*(v40 - 8) + 56))(v47, 1, 1, v40);
      v27 = v22;
      v41 = v22;
    }

    v42 = v49;

    v43 = v50;

    v44 = v48;
    return sub_1D1BD7AC8(v26, v27, v36, v42, v43, v44, v52);
  }
}

uint64_t sub_1D1BD7AC8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v159 = a6;
  v156 = a4;
  v157 = a5;
  v161 = a7;
  v162 = a3;
  v165 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643718, &qword_1D1E71E70);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v144 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v152 = &v144 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v144 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v147 = &v144 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v145 = &v144 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v150 = &v144 - v24;
  v25 = sub_1D1E669FC();
  v26 = *(v25 - 8);
  v153 = v25;
  v154 = v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v148 = &v144 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v144 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v144 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v35 = MEMORY[0x1EEE9AC00](v34 - 8);
  v155 = (&v144 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = MEMORY[0x1EEE9AC00](v35);
  v151 = &v144 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v146 = &v144 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v149 = &v144 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v45 = &v144 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v144 - v46;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v50 = (&v144 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = type metadata accessor for StaticActionSet(0);
  v52 = *(v51 - 8);
  v163 = v51;
  v164 = v52;
  MEMORY[0x1EEE9AC00](v51);
  v158 = &v144 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = a1;
  sub_1D1BDD270(a1, v50, type metadata accessor for StateSnapshot.UpdateType);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1D1BDD340(v50, type metadata accessor for StateSnapshot.UpdateType);
    goto LABEL_11;
  }

  v54 = *v50;
  if (!*(v54 + 16) || (v55 = sub_1D171D3B8(v165), (v56 & 1) == 0))
  {

LABEL_11:
    v71 = v162;
    sub_1D1741C08(v162, v19, &qword_1EC643718, &qword_1D1E71E70);
    v72 = v163;
    v73 = *(v164 + 48);
    if (v73(v19, 1, v163) == 1)
    {
      sub_1D1741A30(v19, &qword_1EC643718, &qword_1D1E71E70);
    }

    else
    {
      v74 = v19[v72[15]];
      sub_1D1BDD340(v19, type metadata accessor for StaticActionSet);
      if (v74 == 1)
      {
        v75 = v152;
        sub_1D1741C08(v71, v152, &qword_1EC643718, &qword_1D1E71E70);
        v76 = v73(v75, 1, v72);
        v77 = v165;
        if (v76 != 1)
        {

          v83 = *(v75 + v72[14]);
          sub_1D1BDD340(v75, type metadata accessor for StaticActionSet);
          goto LABEL_18;
        }

        sub_1D1741A30(v75, &qword_1EC643718, &qword_1D1E71E70);
        v78 = [v77 actions];
        sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
        sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
        v72 = v163;
        v79 = sub_1D1E6816C();

        v80 = v156;

        v81 = v157;

        sub_1D1BDB7F8(1u, v79, v80, v81);
        v83 = v82;

        swift_bridgeObjectRelease_n();
LABEL_17:
        swift_bridgeObjectRelease_n();
LABEL_18:
        v91 = v155;
        sub_1D1741C08(v71, v14, &qword_1EC643718, &qword_1D1E71E70);
        if (v73(v14, 1, v72) == 1)
        {
          sub_1D1741A30(v14, &qword_1EC643718, &qword_1D1E71E70);
          v92 = 0;
        }

        else
        {
          v92 = v14[v72[15]];
          sub_1D1BDD340(v14, type metadata accessor for StaticActionSet);
        }

        sub_1D1741C08(v71, v11, &qword_1EC643718, &qword_1D1E71E70);
        v93 = v73(v11, 1, v72);
        v59 = v158;
        if (v93 == 1)
        {
          sub_1D1741A30(v11, &qword_1EC643718, &qword_1D1E71E70);
          (*(v154 + 56))(v91, 1, 1, v153);
        }

        else
        {
          sub_1D1741C08(&v11[v72[16]], v91, &qword_1EC642570, &qword_1D1E6C6A0);
          sub_1D1BDD340(v11, type metadata accessor for StaticActionSet);
        }

        sub_1D1BDA3F8(v165, v83 & 1, v92, v91, v159, v59);
        v94 = v71;
        goto LABEL_25;
      }
    }

    v84 = [v165 actions];
    sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
    sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
    v72 = v163;
    v85 = sub_1D1E6816C();

    v86 = v14;
    v87 = v11;
    v88 = v156;

    v89 = v157;

    sub_1D1BDB7F8(1u, v85, v88, v89);
    v83 = v90;

    v11 = v87;
    v14 = v86;
    swift_bridgeObjectRelease_n();
    goto LABEL_17;
  }

  v57 = *(*(v54 + 56) + 2 * v55);

  if (v57 >> 14)
  {
    v58 = v165;
    v59 = v158;
    v60 = v153;
    if (v57 >> 14 != 1)
    {
      v103 = [v165 actions];
      sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
      sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
      v104 = sub_1D1E6816C();

      v105 = v156;

      v106 = v157;

      v107 = 1;
      sub_1D1BDB7F8(1u, v104, v105, v106);
      v109 = v108;

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v110 = [v58 isExecuting];
      v111 = [v58 lastExecutionDate];
      if (v111)
      {
        v112 = v111;
        sub_1D1E669BC();

        v107 = 0;
      }

      v113 = v162;
      v72 = v163;
      (*(v154 + 56))(v47, v107, 1, v60);
      sub_1D1BDA3F8(v58, v109 & 1, v110, v47, v159, v59);
      v94 = v113;
      goto LABEL_25;
    }

    v61 = [v165 lastExecutionDate];
    if (!v61)
    {
      goto LABEL_39;
    }

    v62 = v61;
    sub_1D1E669BC();

    v63 = v154;
    v64 = *(v154 + 32);
    v64(v33, v31, v60);
    v65 = v60;
    v66 = v150;
    sub_1D1741C08(v162, v150, &qword_1EC643718, &qword_1D1E71E70);
    v67 = *(v164 + 48);
    v68 = v33;
    v69 = v163;
    v144 = v164 + 48;
    v155 = v67;
    if (v67(v66, 1, v163) == 1)
    {
      (*(v63 + 8))(v68, v65);
      sub_1D1741A30(v66, &qword_1EC643718, &qword_1D1E71E70);
      v70 = v149;
      (*(v63 + 56))(v149, 1, 1, v65);
      v60 = v65;
    }

    else
    {
      v152 = v68;
      v114 = v66 + v69[16];
      v70 = v149;
      sub_1D1741C08(v114, v149, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1BDD340(v66, type metadata accessor for StaticActionSet);
      v60 = v65;
      if ((*(v63 + 48))(v70, 1, v65) != 1)
      {
        v126 = v148;
        v64(v148, v70, v65);
        sub_1D1BDC278(&unk_1EC649E50, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        v127 = v152;
        if ((sub_1D1E6771C() & 1) == 0)
        {
          v129 = [v58 actions];
          sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
          sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
          v130 = sub_1D1E6816C();

          v131 = v156;

          v132 = v157;

          sub_1D1BDB7F8(1u, v130, v131, v132);
          v134 = v133;

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v135 = v145;
          sub_1D1741C08(v162, v145, &qword_1EC643718, &qword_1D1E71E70);
          v136 = v163;
          if (v155(v135, 1, v163) == 1)
          {
            sub_1D1741A30(v135, &qword_1EC643718, &qword_1D1E71E70);
            v137 = 0;
          }

          else
          {
            v137 = *(v135 + v136[15]);
            sub_1D1BDD340(v135, type metadata accessor for StaticActionSet);
          }

          v138 = v154;
          v139 = v147;
          sub_1D1741C08(v162, v147, &qword_1EC643718, &qword_1D1E71E70);
          if (v155(v139, 1, v136) == 1)
          {
            sub_1D1741A30(v139, &qword_1EC643718, &qword_1D1E71E70);
            v140 = v146;
            (*(v138 + 56))(v146, 1, 1, v65);
          }

          else
          {
            v141 = v146;
            sub_1D1741C08(v139 + v136[16], v146, &qword_1EC642570, &qword_1D1E6C6A0);
            v142 = v139;
            v140 = v141;
            sub_1D1BDD340(v142, type metadata accessor for StaticActionSet);
          }

          v72 = v136;
          sub_1D1BDA3F8(v58, v134 & 1, v137, v140, v159, v59);
          sub_1D1741A30(v162, &qword_1EC643718, &qword_1D1E71E70);
          sub_1D1BDD340(v160, type metadata accessor for StateSnapshot.UpdateType);
          v143 = *(v138 + 8);
          v143(v126, v60);
          v143(v152, v60);
          goto LABEL_26;
        }

        v128 = *(v154 + 8);
        v128(v126, v65);
        v128(v127, v65);
        goto LABEL_39;
      }

      (*(v63 + 8))(v152, v65);
    }

    sub_1D1741A30(v70, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_39:
    v115 = [v58 actions];
    sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
    sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
    v116 = sub_1D1E6816C();

    v117 = v156;

    v118 = v157;

    v119 = 1;
    sub_1D1BDB7F8(1u, v116, v117, v118);
    v121 = v120;

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v122 = [v58 lastExecutionDate];
    if (v122)
    {
      v123 = v151;
      v124 = v122;
      sub_1D1E669BC();

      v119 = 0;
      v125 = v162;
      v72 = v163;
    }

    else
    {
      v125 = v162;
      v72 = v163;
      v123 = v151;
    }

    (*(v154 + 56))(v123, v119, 1, v60);
    sub_1D1BDA3F8(v58, v121 & 1, v57, v123, v159, v59);
    v94 = v125;
LABEL_25:
    sub_1D1741A30(v94, &qword_1EC643718, &qword_1D1E71E70);
    sub_1D1BDD340(v160, type metadata accessor for StateSnapshot.UpdateType);
LABEL_26:
    v95 = v161;
    goto LABEL_27;
  }

  v97 = v165;
  v98 = [v165 lastExecutionDate];
  v95 = v161;
  v99 = v162;
  v59 = v158;
  v100 = v153;
  if (v98)
  {
    v101 = v98;
    sub_1D1E669BC();

    v102 = 0;
  }

  else
  {
    v102 = 1;
  }

  (*(v154 + 56))(v45, v102, 1, v100);
  sub_1D1BDA3F8(v97, v57 & 1, SBYTE1(v57), v45, v159, v59);
  sub_1D1741A30(v99, &qword_1EC643718, &qword_1D1E71E70);
  sub_1D1BDD340(v160, type metadata accessor for StateSnapshot.UpdateType);
  v72 = v163;
LABEL_27:
  sub_1D1BDD2D8(v59, v95, type metadata accessor for StaticActionSet);
  return (*(v164 + 56))(v95, 0, 1, v72);
}

void sub_1D1BD8C8C(unsigned __int8 *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v149 = a4;
  v163 = a3;
  v167 = a2;
  v144 = a5;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643720, &qword_1D1E71E78);
  v161 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v162 = &v134 - v6;
  v7 = type metadata accessor for StaticMediaProfile(0);
  v141 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v140 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v139 = &v134 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C778, &qword_1D1EA02E0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v164 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v168 = &v134 - v14;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C780, &qword_1D1EA02E8);
  v155 = *(v170 - 8);
  v15 = MEMORY[0x1EEE9AC00](v170);
  v17 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v134 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v134 - v22);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v134 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v134 - v27;
  v151 = type metadata accessor for StaticCharacteristic(0);
  v152 = *(v151 - 8);
  v29 = MEMORY[0x1EEE9AC00](v151);
  v153 = &v134 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v154 = (&v134 - v31);
  v156 = type metadata accessor for StaticService(0);
  v157 = *(v156 - 8);
  v32 = MEMORY[0x1EEE9AC00](v156);
  v159 = &v134 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v160 = &v134 - v34;
  v158 = sub_1D1E66A7C();
  v166 = *(v158 - 8);
  v35 = MEMORY[0x1EEE9AC00](v158);
  v37 = &v134 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v134 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v165 = &v134 - v41;
  LODWORD(v42) = *a1;
  objc_opt_self();
  v43 = swift_dynamicCastObjCClass();
  if (v43)
  {
    v137 = v42;
    v44 = v144;
    v45 = v43;
    v46 = [v43 characteristic];
    v47 = [v46 service];

    if (v47)
    {
      v48 = [v47 uniqueIdentifier];

      sub_1D1E66A5C();
      v50 = v165;
      v49 = v166;
      (*(v166 + 32))(v165, v40, v158);
      v51 = v163;
      if (*(v163 + 16) && (v52 = sub_1D1742188(), (v53 & 1) != 0))
      {
        v54 = *(v51 + 56) + *(v157 + 9) * v52;
        v55 = v159;
        sub_1D1BDD270(v54, v159, type metadata accessor for StaticService);
        v56 = v160;
        sub_1D1BDD2D8(v55, v160, type metadata accessor for StaticService);
        v57 = [v45 characteristic];
        v58 = [v57 characteristicType];

        v59 = sub_1D1E6781C();
        v61 = v60;

        v62._countAndFlagsBits = v59;
        v62._object = v61;
        CharacteristicKind.init(rawValue:)(v62);
        v63 = v174;
        if (v174 != 174)
        {
          v64 = *(v56 + *(v156 + 128));
          if (*(v64 + 16))
          {
            v65 = sub_1D171D140(v174);
            if (v66)
            {
              v67 = *(v64 + 56) + *(v152 + 72) * v65;
              v68 = v153;
              sub_1D1BDD270(v67, v153, type metadata accessor for StaticCharacteristic);
              v23 = v154;
              sub_1D1BDD2D8(v68, v154, type metadata accessor for StaticCharacteristic);
              LOBYTE(v174) = v63;
              if (CharacteristicKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB4E30 == v69)
              {

                LOBYTE(v42) = v137;
              }

              else
              {
                v128 = sub_1D1E6904C();

                LOBYTE(v42) = v137;
                if ((v128 & 1) == 0)
                {
LABEL_72:
                  v129 = v23 + *(v151 + 24);
                  v130 = *(v129 + 1);
                  v131 = v129[16];
                  v174 = *v129;
                  v175 = v130;
                  LOBYTE(v176) = v131;
                  sub_1D1778244(v174, v130, v131);
                  v132 = [v45 targetValue];
                  IsRoughlyEqualToG0ySbAA0E4KindO0G0O_So8NSObjectCtFZ_0 = _s13HomeDataModel20StaticCharacteristicV026typedValueIsRoughlyEqualToG0ySbAA0E4KindO0G0O_So8NSObjectCtFZ_0(&v174, v132);

                  sub_1D1778284(v174, v175, v176);
                  sub_1D1BDD340(v23, type metadata accessor for StaticCharacteristic);
                  (*(v49 + 8))(v50, v158);
                  LOBYTE(v42) = v42 & IsRoughlyEqualToG0ySbAA0E4KindO0G0O_So8NSObjectCtFZ_0;
                  goto LABEL_73;
                }
              }

              sub_1D1BDD340(v23, type metadata accessor for StaticCharacteristic);
              (*(v49 + 8))(v50, v158);
LABEL_73:
              sub_1D1BDD340(v56, type metadata accessor for StaticService);
              goto LABEL_68;
            }
          }
        }

        (*(v49 + 8))(v50, v158);
        sub_1D1BDD340(v56, type metadata accessor for StaticService);
      }

      else
      {
        (*(v49 + 8))(v50, v158);
      }
    }

    LOBYTE(v42) = 0;
LABEL_68:
    *v44 = v42;
    return;
  }

  v70 = v144;
  v157 = v37;
  v160 = v28;
  v147 = v26;
  v145 = v23;
  v142 = v20;
  v143 = v17;
  objc_opt_self();
  v71 = swift_dynamicCastObjCClass();
  if (!v71)
  {
    v44 = v70;
    goto LABEL_68;
  }

  v72 = v71;
  v137 = v42;
  v73 = [v71 state];
  v74 = 0x5000403020100uLL >> (8 * v73);
  if (v73 >= 7)
  {
    LODWORD(v74) = 0;
  }

  LODWORD(v154) = v74;
  v159 = [v72 playbackArchive];
  v75 = [v72 volume];
  v76 = v75;
  if (v75)
  {
    [v75 floatValue];
    v78 = v77;

    v152 = v78;
  }

  else
  {
    v152 = 0;
  }

  v56 = v169;
  v50 = v164;
  v153 = v76;
  v79 = [v72 playbackArchive];
  if (v79)
  {
    v80 = v79;
    LODWORD(v151) = [v79 BOOLValueForOption_];
  }

  else
  {
    LODWORD(v151) = 2;
  }

  v81 = [v72 playbackArchive];
  if (v81)
  {
    v82 = v81;
    v150 = [v81 BOOLValueForOption_];
  }

  else
  {
    v150 = 2;
  }

  v83 = v145;
  v84 = [v72 mediaProfiles];
  v85 = sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
  sub_1D1771944(&qword_1EC642FC0, &qword_1EC642FB8, 0x1E696CBF0);
  v86 = sub_1D1E6816C();

  v87 = swift_allocObject();
  *(v87 + 16) = v149;
  v136 = v87;
  v135 = v86;
  v138 = v85;
  if ((v86 & 0xC000000000000001) != 0)
  {
    swift_bridgeObjectRetain_n();

    sub_1D1E686EC();
    sub_1D1E681BC();
    v88 = v174;
    v148 = v175;
    v89 = v176;
    v90 = v177;
    v45 = v178;
  }

  else
  {
    v91 = -1 << *(v86 + 32);
    v92 = *(v86 + 56);
    v148 = v86 + 56;
    v89 = ~v91;
    v93 = -v91;
    if (v93 < 64)
    {
      v94 = ~(-1 << v93);
    }

    else
    {
      v94 = -1;
    }

    v45 = v94 & v92;
    swift_bridgeObjectRetain_n();

    v90 = 0;
    v88 = v86;
  }

  v134 = v89;
  v42 = (v89 + 64) >> 6;
  v146 = (v166 + 8);
  v165 = (v161 + 56);
  v166 = v161 + 48;
  v156 = (v155 + 7);
  v155 += 6;
  v167 = v90;
  v44 = v170;
  v163 = v88;
  v161 = v42;
  while (1)
  {
    while ((v88 & 0x8000000000000000) == 0)
    {
      v95 = v167;
      v96 = v168;
      if (!v45)
      {
        while (1)
        {
          v49 = (v95 + 1);
          if (__OFADD__(v95, 1))
          {
            __break(1u);
            goto LABEL_72;
          }

          if (v49 >= v42)
          {
            break;
          }

          v45 = *(v148 + 8 * v49);
          ++v95;
          if (v45)
          {
            v167 = v49;
            goto LABEL_42;
          }
        }

        v45 = 0;
        if (v42 <= (v167 + 1))
        {
          v115 = v167 + 1;
        }

        else
        {
          v115 = v42;
        }

        v114 = 1;
        v167 = v115 - 1;
        goto LABEL_58;
      }

      v49 = v167;
LABEL_42:
      v97 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v98 = *(*(v88 + 48) + ((v49 << 9) | (8 * v97)));
LABEL_45:
      v100 = v157;
      if (!v98)
      {
        v114 = 1;
        v56 = v169;
        v44 = v170;
        goto LABEL_58;
      }

      v101 = [v98 uniqueIdentifier];
      sub_1D1E66A5C();

      v102 = v149;
      if (*(v149 + 16) && (v103 = sub_1D1742188(), (v104 & 1) != 0))
      {
        v105 = v140;
        sub_1D1BDD270(*(v102 + 56) + *(v141 + 72) * v103, v140, type metadata accessor for StaticMediaProfile);
        (*v146)(v100, v158);
        v106 = v105;
        v107 = v139;
        sub_1D1BDD2D8(v106, v139, type metadata accessor for StaticMediaProfile);
        v108 = v169;
        v109 = *(v169 + 48);
        *v83 = v98;
        v56 = v108;
        v110 = v107;
        v50 = v164;
        sub_1D1BDD2D8(v110, v83 + v109, type metadata accessor for StaticMediaProfile);
        (*v165)(v83, 0, 1, v56);
      }

      else
      {
        (*v146)(v100, v158);
        v111 = v169;
        (*v165)(v83, 1, 1, v169);

        v56 = v111;
      }

      v112 = v147;
      v23 = &qword_1D1EA02E8;
      sub_1D1741A90(v83, v147, &qword_1EC64C780, &qword_1D1EA02E8);
      if ((*v166)(v112, 1, v56) != 1)
      {
        v113 = v112;
        v96 = v168;
        sub_1D1741A90(v113, v168, &qword_1EC64C780, &qword_1D1EA02E8);
        v114 = 0;
        v44 = v170;
        v42 = v161;
        goto LABEL_58;
      }

      sub_1D1741A30(v112, &qword_1EC64C780, &qword_1D1EA02E8);
      v44 = v170;
      v88 = v163;
      v42 = v161;
    }

    v99 = sub_1D1E6877C();
    if (v99)
    {
      v172 = v99;
      swift_dynamicCast();
      v98 = v173;
      v96 = v168;
      goto LABEL_45;
    }

    v114 = 1;
    v96 = v168;
    v44 = v170;
LABEL_58:
    (*v156)(v96, v114, 1, v44);
    sub_1D1741A90(v96, v50, &qword_1EC64C778, &qword_1D1EA02E0);
    if ((*v155)(v50, 1, v44) == 1)
    {
      v116 = v160;
      (*v165)(v160, 1, 1, v56);
      v117 = (*v166)(v116, 1, v56);
      goto LABEL_62;
    }

    v118 = v142;
    sub_1D1741A90(v50, v142, &qword_1EC64C780, &qword_1D1EA02E8);
    v119 = v143;
    sub_1D1741C08(v118, v143, &qword_1EC64C780, &qword_1D1EA02E8);
    v120 = v56;
    v121 = v166;
    v122 = *v166;
    if ((*v166)(v119, 1, v120) == 1)
    {
      break;
    }

    v123 = v119;
    v116 = v160;
    sub_1D1741A90(v123, v160, &qword_1EC643720, &qword_1D1E71E78);
    sub_1D1741A30(v118, &qword_1EC64C780, &qword_1D1EA02E8);
    (*v165)(v116, 0, 1, v120);
    v83 = v145;
    v42 = v161;
    v117 = v122(v116, 1, v120);
LABEL_62:
    if (v117 == 1)
    {
      LOBYTE(v42) = v137;
      goto LABEL_67;
    }

    v124 = v153 == 0;
    v121 = v162;
    v23 = &qword_1EC643720;
    sub_1D1741A90(v116, v162, &qword_1EC643720, &qword_1D1E71E78);
    LOBYTE(v173) = v124;
    v125 = v171;
    v126 = sub_1D1BD9F00(v121, v152 | (v124 << 32), v154, v159, v151, v150);
    v171 = v125;
    if (v125)
    {
      goto LABEL_75;
    }

    v127 = v126;
    sub_1D1741A30(v121, &qword_1EC643720, &qword_1D1E71E78);
    v56 = v169;
    v44 = v170;
    v88 = v163;
    v50 = v164;
    if (!v127)
    {
      LOBYTE(v42) = 0;
LABEL_67:

      sub_1D1716918(v163);

      v44 = v144;
      goto LABEL_68;
    }
  }

  __break(1u);
LABEL_75:

  sub_1D1741A30(v121, &qword_1EC643720, &qword_1D1E71E78);
  sub_1D1716918(v163);

  __break(1u);
}

BOOL sub_1D1BD9F00(uint64_t a1, uint64_t a2, char a3, void *a4, int a5, int a6)
{
  v44 = a5;
  v45 = a6;
  v46 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643720, &qword_1D1E71E78);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v42 - v11);
  v13 = type metadata accessor for StaticMediaProfile(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1741C08(a1, v12, &qword_1EC643720, &qword_1D1E71E78);
  v16 = *v12;
  sub_1D1BDD2D8(v12 + *(v10 + 56), v15, type metadata accessor for StaticMediaProfile);
  v17 = [v16 mediaSession];
  v18 = v17;
  v19 = 1;
  if ((a2 & 0x100000000) == 0 && v17)
  {
    v20 = [v17 audioControl];
    [v20 volume];
    v22 = v21;

    v19 = vabds_f32(*&a2 / 100.0, v22) <= 0.02;
  }

  if (a3 == 2)
  {
    if (!v19 || v15[*(v13 + 76)] < 2u)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  if (a3 == 1)
  {
    if (!v19 || v15[*(v13 + 76)] != 1)
    {
      goto LABEL_13;
    }

LABEL_16:
    if (v46)
    {
      v24 = v46;
      v25 = [v16 mediaSession];
      if (v25)
      {
        v26 = v25;
        v42 = [v25 shuffleState];
        v43 = [v26 repeatState];
        v27 = [v26 mediaUniqueIdentifier];
        if (v27)
        {
          v28 = v27;
          v29 = sub_1D1E6781C();
          v31 = v30;
        }

        else
        {
          v29 = 0;
          v31 = 0;
        }

        v46 = v24;
        v32 = [v24 playbackSessionIdentifier];
        if (v32)
        {
          v33 = v32;
          v34 = v29;
          v35 = sub_1D1E6781C();
          v37 = v36;

          if (v31)
          {
            v38 = v45;
            if (v37)
            {
              if (v34 == v35 && v31 == v37)
              {

                LODWORD(v31) = 0;
              }

              else
              {
                v41 = sub_1D1E6904C();

                LODWORD(v31) = v41 ^ 1;
              }

              goto LABEL_34;
            }
          }

          else
          {
            v38 = v45;
            if (!v37)
            {
              LODWORD(v31) = 0;
              goto LABEL_34;
            }
          }
        }

        else
        {
          v38 = v45;
          if (!v31)
          {
LABEL_34:
            v39 = 1;
            if (v44 != 2 && (((v42 == 1) ^ v44) & 1) != 0)
            {
              v39 = [v26 shuffleState] == 0;
            }

            if (v38 == 2 || (((v43 == 1) ^ v38) & 1) == 0)
            {
              sub_1D1BDD340(v15, type metadata accessor for StaticMediaProfile);
            }

            else
            {
              v40 = [v26 repeatState];

              sub_1D1BDD340(v15, type metadata accessor for StaticMediaProfile);
              v19 = v40 != 0;
              if (((v31 | v39) & 1) == 0)
              {
                return v19;
              }
            }

            return 0;
          }
        }

        LODWORD(v31) = 1;
        goto LABEL_34;
      }

      sub_1D1BDD340(v15, type metadata accessor for StaticMediaProfile);
    }

    else
    {
      sub_1D1BDD340(v15, type metadata accessor for StaticMediaProfile);
    }

    return 1;
  }

  if (a3)
  {
LABEL_13:
    sub_1D1BDD340(v15, type metadata accessor for StaticMediaProfile);

    return 0;
  }

  sub_1D1BDD340(v15, type metadata accessor for StaticMediaProfile);

  return v19;
}

uint64_t sub_1D1BDA3F8@<X0>(void *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v12 = [a1 name];
  v13 = sub_1D1E6781C();
  v15 = v14;

  v16 = type metadata accessor for StaticActionSet(0);
  v17 = (a6 + v16[5]);
  *v17 = v13;
  v17[1] = v15;
  v18 = v16;
  *(a6 + v16[14]) = a2;
  *(a6 + v16[15]) = a3;
  v65 = a6;
  v69 = a4;
  sub_1D1741C08(a4, a6 + v16[16], &qword_1EC642570, &qword_1D1E6C6A0);
  v66 = a1;
  v19 = [a1 actions];
  sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
  sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
  v20 = sub_1D1E6816C();

  *&v71[0] = MEMORY[0x1E69E7CD0];
  v68 = v18;
  if ((v20 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D1E686EC();
    sub_1D1E681BC();
    v21 = v73;
    v22 = v74;
    v23 = v75;
    v24 = v76;
    v25 = v77;
  }

  else
  {
    v26 = -1 << *(v20 + 32);
    v22 = v20 + 56;
    v23 = ~v26;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v25 = v28 & *(v20 + 56);

    v24 = 0;
    v21 = v20;
  }

  v29 = (v23 + 64) >> 6;
  if ((v21 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

  while (sub_1D1E6877C())
  {
    swift_dynamicCast();
    v23 = *v70;
    v30 = v24;
    v31 = v25;
    if (!*v70)
    {
      break;
    }

    while (1)
    {
      *v70 = v23;
      sub_1D1BDAB8C(v71, v70);

      v24 = v30;
      v25 = v31;
      if (v21 < 0)
      {
        break;
      }

LABEL_11:
      v32 = v24;
      v33 = v25;
      v30 = v24;
      if (!v25)
      {
        while (1)
        {
          v30 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if (v30 >= v29)
          {
            goto LABEL_18;
          }

          v33 = *(v22 + 8 * v30);
          ++v32;
          if (v33)
          {
            goto LABEL_15;
          }
        }

        __break(1u);

        sub_1D1716918(v21);

        __break(1u);
        return result;
      }

LABEL_15:
      v31 = (v33 - 1) & v33;
      v23 = *(*(v21 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v33)))));
      if (!v23)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_18:
  sub_1D1716918(v21);

  v34 = *&v71[0];
  if (*(*&v71[0] + 16))
  {
    v35 = a5;
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
    v36 = sub_1D1E66A7C();
    v37 = *(v36 - 8);
    v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1D1E739C0;
    v35 = a5;
    v40 = [a5 roomForEntireHome];
    v41 = [v40 uniqueIdentifier];

    sub_1D1E66A5C();
    v34 = sub_1D179BE14(v39);
    swift_setDeallocating();
    (*(v37 + 8))(v39 + v38, v36);
    swift_deallocClassInstance();
  }

  *(v65 + v68[11]) = v34;
  v42 = [v66 actionSetType];
  sub_1D1E6781C();

  HMActionSet.ActionSetKind.init(rawValue:)(v71);
  *(v65 + v68[6]) = v71[0];
  HMActionSet.icon.getter(v71);
  v43 = (v65 + v68[9]);
  v44 = v71[3];
  v43[2] = v71[2];
  v43[3] = v44;
  v43[4] = v72[0];
  *(v43 + 73) = *(v72 + 9);
  v45 = v71[1];
  *v43 = v71[0];
  v43[1] = v45;
  v46 = HMActionSet.iconTintDictionary.getter();
  if (!v46)
  {
    if (MEMORY[0x1E69815E0])
    {
      if (MEMORY[0x1E69815E8])
      {
        if (MEMORY[0x1E69815C8])
        {
          if (MEMORY[0x1E69815A8])
          {
            if (MEMORY[0x1E69815B0])
            {
              if (MEMORY[0x1E69815B8])
              {
                v46 = HMActionSet.defaultTint.getter();
                if (v46)
                {
                  v54 = Color.colorDictionary.getter(v46);

                  v46 = v54;
                }
              }
            }
          }
        }
      }
    }
  }

  *(v65 + v68[10]) = v46;
  v47 = [v66 actions];
  v48 = sub_1D1E6816C();

  sub_1D1BD4174(MEMORY[0x1E69E7CD0], v48);
  v50 = v49;

  *(v65 + v68[13]) = v50;
  v51 = [v66 actions];
  v52 = sub_1D1E6816C();

  if ((v52 & 0xC000000000000001) != 0)
  {
    v53 = sub_1D1E6873C();
  }

  else
  {
    v53 = *(v52 + 16);
  }

  *(v65 + v68[8]) = v53 == 0;
  if (!v53)
  {
    goto LABEL_39;
  }

  v55 = [v66 applicationData];
  v56 = sub_1D1E677EC();
  v57 = [v55 objectForKeyedSubscript_];

  if (!v57)
  {
    v59 = [v66 home];
    if (!v59 || (v60 = v59, v61 = HMHome.showPredictedScenesOnDashboard.getter(), v60, (v61 & 1) != 0))
    {
      v62 = [v66 actionSetType];
      sub_1D1E6781C();

      HMActionSet.ActionSetKind.init(rawValue:)(v70);
      v58 = sub_1D17C5604(v70[0], &unk_1F4D65F90);
      goto LABEL_40;
    }

LABEL_39:
    v58 = 0;
    goto LABEL_40;
  }

  swift_unknownObjectRelease();
  v58 = HMActionSet.shouldShowInDashboard.getter();
LABEL_40:
  *(v65 + v68[12]) = v58 & 1;
  v63 = [v35 uniqueIdentifier];
  sub_1D1E66A5C();

  return sub_1D1741A30(v69, &qword_1EC642570, &qword_1D1E6C6A0);
}

void sub_1D1BDAB8C(uint64_t a1, void **a2)
{
  v5 = sub_1D1E66A7C();
  v75 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v64 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v76 = v64 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v77 = v64 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v64 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v64 - v19;
  v21 = *a2;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v22 = swift_dynamicCastObjCClassUnconditional();
    v23 = v21;
    v24 = [v22 characteristic];
    v25 = [v24 service];

    if (v25 && (v26 = [v25 accessory], v25, v26) && (v27 = objc_msgSend(v26, sel_room), v26, v27))
    {
      v28 = [v27 uniqueIdentifier];

      sub_1D1E66A5C();
      v29 = v75;
      (*(v75 + 32))(v20, v18, v5);
      v30 = v76;
      (*(v29 + 16))(v76, v20, v5);
      v31 = v77;
      sub_1D1762CB8(v77, v30);

      v32 = *(v29 + 8);
      v32(v31, v5);
      v32(v20, v5);
    }

    else
    {
    }
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v33 = a1;
      v72 = v8;
      objc_opt_self();
      v34 = swift_dynamicCastObjCClassUnconditional();
      v65 = v21;
      v35 = [v34 mediaProfiles];
      v36 = sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
      sub_1D1771944(&qword_1EC642FC0, &qword_1EC642FB8, 0x1E696CBF0);
      v37 = sub_1D1E6816C();

      v73 = v33;
      v74 = v5;
      v66 = v2;
      if ((v37 & 0xC000000000000001) != 0)
      {
        sub_1D1E686EC();
        sub_1D1E681BC();
        v37 = v79;
        v38 = v80;
        v39 = v81;
        v40 = v82;
        v41 = v83;
      }

      else
      {
        v40 = 0;
        v42 = -1 << *(v37 + 32);
        v38 = v37 + 56;
        v39 = ~v42;
        v43 = -v42;
        if (v43 < 64)
        {
          v44 = ~(-1 << v43);
        }

        else
        {
          v44 = -1;
        }

        v41 = v44 & *(v37 + 56);
      }

      v64[1] = v39;
      v45 = (v39 + 64) >> 6;
      v68 = (v75 + 16);
      v69 = (v75 + 32);
      v67 = (v75 + 8);
      v70 = v37;
      v71 = v11;
      if ((v37 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_17:
      v46 = sub_1D1E6877C();
      if (v46)
      {
        v78 = v46;
        swift_dynamicCast();
        v47 = v84;
        v48 = v40;
        v49 = v41;
        while (v47)
        {
          v52 = [v47 accessory];
          if (v52)
          {
            v75 = v49;
            v53 = v52;
            v54 = [v52 room];

            if (v54)
            {
              v55 = [v54 uniqueIdentifier];

              v56 = v72;
              sub_1D1E66A5C();

              v57 = v36;
              v58 = v71;
              v59 = v74;
              (*v69)(v71, v56, v74);
              v60 = v76;
              (*v68)(v76, v58, v59);
              v61 = v77;
              sub_1D1762CB8(v77, v60);

              v62 = *v67;
              (*v67)(v61, v59);
              v63 = v58;
              v36 = v57;
              v37 = v70;
              v62(v63, v59);
            }

            else
            {
            }

            v40 = v48;
            v41 = v75;
            if (v37 < 0)
            {
              goto LABEL_17;
            }
          }

          else
          {

            v40 = v48;
            v41 = v49;
            if (v37 < 0)
            {
              goto LABEL_17;
            }
          }

LABEL_19:
          v50 = v40;
          v51 = v41;
          v48 = v40;
          if (!v41)
          {
            while (1)
            {
              v48 = v50 + 1;
              if (__OFADD__(v50, 1))
              {
                break;
              }

              if (v48 >= v45)
              {
                goto LABEL_31;
              }

              v51 = *(v38 + 8 * v48);
              ++v50;
              if (v51)
              {
                goto LABEL_23;
              }
            }

            __break(1u);
            return;
          }

LABEL_23:
          v49 = (v51 - 1) & v51;
          v47 = *(*(v37 + 48) + ((v48 << 9) | (8 * __clz(__rbit64(v51)))));
        }
      }

LABEL_31:
      sub_1D1716918(v37);
    }
  }
}

void sub_1D1BDB200(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  v3[1] = *a1;
  ServiceKind.umbrellaCategory.getter(v3);
  *a2 = v3[0];
}

BOOL _s13HomeDataModel15StaticActionSetV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for StaticActionSet(0);
  v15 = v14[5];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v20 = v14[6];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 == 7)
  {
    if (v22 != 7)
    {
      return 0;
    }
  }

  else if (v22 == 7 || (sub_1D179F2F8(v21, v22) & 1) == 0)
  {
    return 0;
  }

  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v14[8]) != *(a2 + v14[8]))
  {
    return 0;
  }

  v23 = (a1 + v14[9]);
  v24 = v23[3];
  v25 = v23[1];
  v56 = v23[2];
  v57 = v24;
  v26 = v23[3];
  v58[0] = v23[4];
  *(v58 + 9) = *(v23 + 73);
  v27 = v23[1];
  v55[0] = *v23;
  v55[1] = v27;
  v52 = v56;
  v53 = v26;
  v54[0] = v23[4];
  *(v54 + 9) = *(v23 + 73);
  v50 = v55[0];
  v51 = v25;
  v28 = (a2 + v14[9]);
  v29 = v28[3];
  v30 = v28[1];
  v60 = v28[2];
  v61 = v29;
  v31 = v28[3];
  v62[0] = v28[4];
  *(v62 + 9) = *(v28 + 73);
  v32 = v28[1];
  v59[0] = *v28;
  v59[1] = v32;
  v47 = v60;
  v48 = v31;
  v49[0] = v28[4];
  *(v49 + 9) = *(v28 + 73);
  v45 = v59[0];
  v46 = v30;
  LODWORD(v43) = _s13HomeDataModel4IconV2eeoiySbAC_ACtFZ_0(&v50, &v45);
  v63[2] = v47;
  v63[3] = v48;
  v64[0] = v49[0];
  *(v64 + 9) = *(v49 + 9);
  v63[0] = v45;
  v63[1] = v46;
  sub_1D18A9844(v55, v44);
  sub_1D18A9844(v59, v44);
  sub_1D18A98A0(v63);
  v65[2] = v52;
  v65[3] = v53;
  v66[0] = v54[0];
  *(v66 + 9) = *(v54 + 9);
  v65[0] = v50;
  v65[1] = v51;
  sub_1D18A98A0(v65);
  if ((v43 & 1) == 0)
  {
    return 0;
  }

  v33 = v14[10];
  v34 = *(a1 + v33);
  v35 = *(a2 + v33);
  if (v34)
  {
    if (!v35)
    {
      return 0;
    }

    v42 = v34;
    v43 = v35;

    LODWORD(v42) = sub_1D184DC4C(v42, v43);

    if ((v42 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v35)
  {
    return 0;
  }

  if ((sub_1D17A6E98(*(a1 + v14[11]), *(a2 + v14[11])) & 1) == 0 || *(a1 + v14[12]) != *(a2 + v14[12]) || (sub_1D17A8A48(*(a1 + v14[13]), *(a2 + v14[13])) & 1) == 0 || *(a1 + v14[14]) != *(a2 + v14[14]) || *(a1 + v14[15]) != *(a2 + v14[15]))
  {
    return 0;
  }

  v36 = v14[16];
  v37 = *(v11 + 48);
  sub_1D1741C08(a1 + v36, v13, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741C08(a2 + v36, &v13[v37], &qword_1EC642570, &qword_1D1E6C6A0);
  v38 = *(v5 + 48);
  if (v38(v13, 1, v4) == 1)
  {
    if (v38(&v13[v37], 1, v4) == 1)
    {
      sub_1D1741A30(v13, &qword_1EC642570, &qword_1D1E6C6A0);
      return 1;
    }

    goto LABEL_30;
  }

  sub_1D1741C08(v13, v10, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v38(&v13[v37], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_30:
    sub_1D1741A30(v13, &qword_1EC642AC0, &qword_1D1E6E810);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v37], v4);
  sub_1D1BDC278(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v40 = sub_1D1E6775C();
  v41 = *(v5 + 8);
  v41(v7, v4);
  v41(v10, v4);
  sub_1D1741A30(v13, &qword_1EC642570, &qword_1D1E6C6A0);
  return (v40 & 1) != 0;
}

void sub_1D1BDB7F8(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a2;
  v27 = a1;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D1E686EC();
    sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
    sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
    sub_1D1E681BC();
    v6 = v26[1];
    v7 = v26[2];
    v8 = v26[3];
    v9 = v26[4];
    v10 = v26[5];
  }

  else
  {
    v11 = -1 << *(a2 + 32);
    v7 = a2 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a2 + 56);

    v9 = 0;
  }

  v14 = (v8 + 64) >> 6;
  v24 = v6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v15 = v9;
  v16 = v10;
  v17 = v9;
  if (v10)
  {
LABEL_12:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v6 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (v19)
    {
      while (1)
      {
        v26[0] = v19;
        sub_1D1BD8C8C(&v27, v26, a3, a4, &v25);

        if (v5)
        {
          break;
        }

        v27 = v25;
        v9 = v17;
        v10 = v18;
        v6 = v24;
        if ((v24 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v20 = sub_1D1E6877C();
        if (v20)
        {
          v25 = v20;
          sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
          swift_dynamicCast();
          v19 = v26[0];
          v17 = v9;
          v18 = v10;
          if (v26[0])
          {
            continue;
          }
        }

        goto LABEL_20;
      }

      v21 = v24;
    }

    else
    {
LABEL_20:
      v6 = v24;
LABEL_21:
      v21 = v6;
    }

    sub_1D1716918(v21);
  }

  else
  {
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        goto LABEL_21;
      }

      v16 = *(v7 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D1BDBA50(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69747563657865 && a2 == 0xE900000000000067 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D1BDBB6C(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C758, &qword_1D1EA02C0);
  v28 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v26 - v2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C760, &qword_1D1EA02C8);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C768, &qword_1D1EA02D0);
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C770, &qword_1D1EA02D8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1D1BD4AF8();
  v13 = v34;
  sub_1D1E692FC();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = sub_1D1E68DDC();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_1D18085C8();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_1D1BD4BA0();
          sub_1D1E68C4C();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v35);
          return v9;
        }

        v40 = 2;
        sub_1D1BD4B4C();
        v24 = v11;
        sub_1D1E68C4C();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_1D1BD4BF4();
        v24 = v11;
        sub_1D1E68C4C();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = sub_1D1E688EC();
    swift_allocError();
    v22 = v21;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
    *v22 = &type metadata for StaticActionSet.ExecutionStatus;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v9;
}

uint64_t type metadata accessor for StaticActionSet(uint64_t a1)
{
  result = qword_1EE07D748;
  if (!qword_1EE07D748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D1BDC128()
{
  result = qword_1EC64C660;
  if (!qword_1EC64C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C660);
  }

  return result;
}

unint64_t sub_1D1BDC17C()
{
  result = qword_1EC64C668;
  if (!qword_1EC64C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C668);
  }

  return result;
}

unint64_t sub_1D1BDC1D0()
{
  result = qword_1EC64C688;
  if (!qword_1EC64C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C688);
  }

  return result;
}

unint64_t sub_1D1BDC224()
{
  result = qword_1EC64C690;
  if (!qword_1EC64C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C690);
  }

  return result;
}

uint64_t sub_1D1BDC278(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D1BDC2C0()
{
  result = qword_1EC64C6A0;
  if (!qword_1EC64C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C6A0);
  }

  return result;
}

uint64_t sub_1D1BDC314(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC643420, &qword_1D1E718A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1BDC384(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1BDC278(a2, MEMORY[0x1E69695A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1BDC420(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64C678, &qword_1D1E9FA90);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1BDC498()
{
  result = qword_1EC64C6B8;
  if (!qword_1EC64C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C6B8);
  }

  return result;
}

unint64_t sub_1D1BDC4EC()
{
  result = qword_1EC64C6C0;
  if (!qword_1EC64C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C6C0);
  }

  return result;
}

unint64_t sub_1D1BDC544()
{
  result = qword_1EC64C6C8;
  if (!qword_1EC64C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C6C8);
  }

  return result;
}

unint64_t sub_1D1BDC59C()
{
  result = qword_1EC64C6D0;
  if (!qword_1EC64C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C6D0);
  }

  return result;
}

uint64_t sub_1D1BDC638(void *a1)
{
  a1[1] = sub_1D1BDC278(&qword_1EC64C6E0, type metadata accessor for StaticActionSet, &protocol conformance descriptor for StaticActionSet);
  a1[2] = sub_1D1BDC278(&qword_1EC64C6E8, type metadata accessor for StaticActionSet, &protocol conformance descriptor for StaticActionSet);
  a1[3] = sub_1D1BDC278(&qword_1EC64BFF0, type metadata accessor for StaticActionSet, &protocol conformance descriptor for StaticActionSet);
  a1[4] = sub_1D1BDC278(&qword_1EC64C060, type metadata accessor for StaticActionSet, &protocol conformance descriptor for StaticActionSet);
  a1[5] = sub_1D1BDC278(&qword_1EC643500, type metadata accessor for StaticActionSet, &protocol conformance descriptor for StaticActionSet);
  result = sub_1D1BDC278(&qword_1EC64C6F0, type metadata accessor for StaticActionSet, &protocol conformance descriptor for StaticActionSet);
  a1[6] = result;
  return result;
}

void sub_1D1BDC784(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D1BDC8A0();
    if (v2 <= 0x3F)
    {
      sub_1D1BDC8F0(319);
      if (v3 <= 0x3F)
      {
        sub_1D1791340(319);
        if (v4 <= 0x3F)
        {
          sub_1D1BDC954(319);
          if (v5 <= 0x3F)
          {
            sub_1D17B77BC(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D1BDC8A0()
{
  if (!qword_1EE07B688)
  {
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07B688);
    }
  }
}

void sub_1D1BDC8F0(uint64_t a1)
{
  if (!qword_1EE07B778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC643420, &qword_1D1E718A0);
    v1 = sub_1D1E685AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE07B778);
    }
  }
}

void sub_1D1BDC954(uint64_t a1)
{
  if (!qword_1EE07B6B0)
  {
    sub_1D1B4DF78();
    v1 = sub_1D1E681FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE07B6B0);
    }
  }
}

unint64_t sub_1D1BDCA24()
{
  result = qword_1EC64C6F8;
  if (!qword_1EC64C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C6F8);
  }

  return result;
}

unint64_t sub_1D1BDCA7C()
{
  result = qword_1EC64C700;
  if (!qword_1EC64C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C700);
  }

  return result;
}

unint64_t sub_1D1BDCAD4()
{
  result = qword_1EC64C708;
  if (!qword_1EC64C708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C708);
  }

  return result;
}

unint64_t sub_1D1BDCB2C()
{
  result = qword_1EC64C710;
  if (!qword_1EC64C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C710);
  }

  return result;
}

unint64_t sub_1D1BDCB84()
{
  result = qword_1EC64C718;
  if (!qword_1EC64C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C718);
  }

  return result;
}

unint64_t sub_1D1BDCBDC()
{
  result = qword_1EC64C720;
  if (!qword_1EC64C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C720);
  }

  return result;
}

unint64_t sub_1D1BDCC34()
{
  result = qword_1EC64C728;
  if (!qword_1EC64C728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C728);
  }

  return result;
}

unint64_t sub_1D1BDCC8C()
{
  result = qword_1EC64C730;
  if (!qword_1EC64C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C730);
  }

  return result;
}

unint64_t sub_1D1BDCCE4()
{
  result = qword_1EC64C738;
  if (!qword_1EC64C738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C738);
  }

  return result;
}

unint64_t sub_1D1BDCD3C()
{
  result = qword_1EC64C740;
  if (!qword_1EC64C740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C740);
  }

  return result;
}

unint64_t sub_1D1BDCD94()
{
  result = qword_1EC64C748;
  if (!qword_1EC64C748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C748);
  }

  return result;
}

unint64_t sub_1D1BDCDEC()
{
  result = qword_1EC64C750;
  if (!qword_1EC64C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C750);
  }

  return result;
}

uint64_t sub_1D1BDCE40(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65536E6F69746361 && a2 == 0xED0000646E694B74 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449656D6F68 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7463416F4E736168 && a2 == 0xEC000000736E6F69 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6349656C6974 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D1EC6510 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7364496D6F6F72 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC5DC0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC6530 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6176697463417369 && a2 == 0xEB00000000646574 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6F69747563657865 && a2 == 0xEF7375746174536ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC6550 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D1BDD270(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1BDD2D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1BDD340(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D1BDD3B8(uint64_t a1)
{
  v1 = a1;
  v22 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D1E686EC();
    sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
    sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
    sub_1D1E681BC();
    v1 = v17;
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_1D1E6877C() || (sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8), swift_dynamicCast(), v13 = v16, v4 = v9, v5 = v10, !v16))
      {
LABEL_23:
        sub_1D1716918(v1);
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_23;
    }

LABEL_18:
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {

      goto LABEL_8;
    }

    v15 = [v14 characteristic];

    v9 = v4;
    v10 = v5;
    if (v15)
    {
      MEMORY[0x1D3891220]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D1E67C5C();
      }

      sub_1D1E67CAC();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1D1BDD65C(uint64_t a1)
{
  v1 = a1;
  v18 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D1E686EC();
    sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
    sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
    sub_1D1E681BC();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_1D1E6877C() || (sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_1D1716918(v1);
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x1D3891220]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D1E67C5C();
      }

      sub_1D1E67CAC();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1D1BDD8E0()
{
  v1[10] = v0;
  v2 = sub_1D1E669FC();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BDD9AC, 0, 0);
}

uint64_t sub_1D1BDD9AC()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);
  v6 = [v5 valueUpdatedTime];
  sub_1D1E669BC();

  v7 = [v5 notificationEnabledTime];
  sub_1D1E669BC();

  LOBYTE(v7) = sub_1D1E6695C();
  v8 = *(v4 + 8);
  v8(v2, v3);
  v8(v1, v3);
  if (v7)
  {
    if ([*(v0 + 80) value])
    {
      sub_1D1E6866C();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    *(v0 + 48) = v13;
    *(v0 + 64) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
    if (swift_dynamicCast())
    {
      v11 = *(v0 + 128);
    }

    else
    {
      v11 = 2;
    }

    v12 = *(v0 + 8);

    return v12(v11);
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 120) = v9;
    *v9 = v0;
    v9[1] = sub_1D1BDDBD0;

    return HMCharacteristic.fetchedValue()(v0 + 16);
  }
}

uint64_t sub_1D1BDDBD0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1BDDCCC, 0, 0);
}

uint64_t sub_1D1BDDCCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 128);
  }

  else
  {
    v1 = 2;
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D1BDDD78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D17C4BFC;

  return StaticActionSet.toggle()(a1);
}

uint64_t StaticActionSet.toggle()(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for StateSnapshot.UpdateType(0);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C788, &qword_1D1EA02F8);
  v2[9] = swift_task_alloc();
  v3 = swift_task_alloc();
  v2[10] = v3;
  *v3 = v2;
  v3[1] = sub_1D1BDDF1C;

  return sub_1D1E387D4();
}

uint64_t sub_1D1BDDF1C(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BDE01C, 0, 0);
}

uint64_t sub_1D1BDE01C()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
    v3 = v0[6];
    if (v2)
    {

      v4 = _s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0();
      v0[12] = v4;
      if (*(v3 + *(type metadata accessor for StaticActionSet(0) + 56)) == 1)
      {
        v5 = swift_task_alloc();
        v0[13] = v5;
        *v5 = v0;
        v5[1] = sub_1D1BDE2E4;
        v6 = v0[9];

        return sub_1D1BE364C(v6, v4);
      }

      else
      {
        v12 = swift_task_alloc();
        v0[14] = v12;
        *v12 = v0;
        v12[1] = sub_1D1BDE42C;
        v13 = v0[9];

        return sub_1D1BE2660(v13, v4, 0, 1);
      }
    }

    else if (*(v3 + *(type metadata accessor for StaticActionSet(0) + 56)))
    {
      v11 = swift_task_alloc();
      v0[18] = v11;
      *v11 = v0;
      v11[1] = sub_1D1BDEB1C;

      return StaticActionSet.turnPowerAndActiveActionsOff(homeManager:)(v1);
    }

    else
    {
      v14 = swift_task_alloc();
      v0[17] = v14;
      *v14 = v0;
      v14[1] = sub_1D1BDE9CC;

      return StaticActionSet.execute(timeout:homeManager:)(0, 1, v1);
    }
  }

  else
  {
    v8 = v0[5];
    v9 = type metadata accessor for StateSnapshot(0);
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1D1BDE2E4()
{

  if (v0)
  {

    v1 = sub_1D1BDE760;
  }

  else
  {

    v1 = sub_1D1BDE574;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D1BDE42C()
{

  if (v0)
  {

    v1 = sub_1D1BDE760;
  }

  else
  {

    v1 = sub_1D1BDE574;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D1BDE574()
{
  v1 = *(v0 + 72);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 40);

    sub_1D1741A30(v1, &qword_1EC64C788, &qword_1D1EA02F8);
    v4 = type metadata accessor for StateSnapshot(0);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v1 + *(v2 + 48));
    *(v0 + 120) = v7;
    v8 = swift_task_alloc();
    *(v0 + 128) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    *v8 = v0;
    v8[1] = sub_1D1BDE814;
    v11 = *(v0 + 40);
    v12 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v11, v7, v9, v10, v12);
  }
}

uint64_t sub_1D1BDE760()
{
  v1 = *(v0 + 40);
  v2 = type metadata accessor for StateSnapshot(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D1BDE814()
{

  if (v0)
  {

    v1 = sub_1D1BDF68C;
  }

  else
  {
    v1 = sub_1D1BDE938;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D1BDE938()
{
  v1 = v0[11];
  v2 = v0[9];

  sub_1D1741A30(v2, &unk_1EC649E30, &unk_1D1E91250);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1BDE9CC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  v4 = swift_task_alloc();
  *(v2 + 152) = v4;
  *v4 = v3;
  v4[1] = sub_1D1BDEC58;

  return sub_1D1E387D4();
}

uint64_t sub_1D1BDEB1C()
{
  v1 = *v0;
  v4 = *v0;

  v2 = swift_task_alloc();
  *(v1 + 152) = v2;
  *v2 = v4;
  v2[1] = sub_1D1BDEC58;

  return sub_1D1E387D4();
}

uint64_t sub_1D1BDEC58(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BDED58, 0, 0);
}

uint64_t sub_1D1BDED58()
{
  isa = v0[20].super.isa;
  if (isa && (v2 = StaticActionSet.get(from:)(v0[20]), isa, v2) && (v3 = [v2 home], v0[21].super.isa = v3, v2, v3))
  {
    v0[22].super.isa = sub_1D1E67E1C();
    v0[23].super.isa = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1BDEEC4, v5, v4);
  }

  else
  {
    v6 = v0[5].super.isa;

    v7 = type metadata accessor for StateSnapshot(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);

    v8 = v0[1].super.isa;

    return v8();
  }
}

uint64_t sub_1D1BDEEC4()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1BDEF5C, 0, 0);
}

uint64_t sub_1D1BDEF5C(uint64_t a1)
{
  *(v1 + 192) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BDEFE8, v3, v2);
}

uint64_t sub_1D1BDEFE8()
{

  *(v0 + 200) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1BDF05C, 0, 0);
}

uint64_t sub_1D1BDF05C(uint64_t a1)
{
  if (qword_1EE07CD90 != -1)
  {
    swift_once();
  }

  v1[26] = qword_1EE07CD98;
  v1[27] = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();
  v1[28] = v3;
  v1[29] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D1BDF124, v3, v2);
}

uint64_t sub_1D1BDF124()
{
  v1 = v0[25];
  v2 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[30] = v3;
  if (v3)
  {
    v4 = qword_1EE07AE28;
    v5 = v3;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = v0[26];
    v7 = v0[21];
    *v0[8] = v7;
    swift_storeEnumTagMultiPayload();
    v8 = v7;
    v9 = swift_task_alloc();
    v0[31] = v9;
    *v9 = v0;
    v9[1] = sub_1D1BDF408;
    v10 = v0[21];
    v11 = v0[8];
    v12 = v0[5];

    return sub_1D1E5A250(v12, v11, v5, v10, v6);
  }

  else
  {

    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v14 = v0[21];
    v15 = sub_1D1E6709C();
    __swift_project_value_buffer(v15, qword_1EE07B5D8);
    v16 = v14;
    v17 = sub_1D1E6707C();
    v18 = sub_1D1E6833C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[21];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v19;
      *v21 = v19;
      v22 = v19;
      _os_log_impl(&dword_1D16EC000, v17, v18, "skipping rebuildSnapshot for %@ due to missing homeManager", v20, 0xCu);
      sub_1D1741A30(v21, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v21, -1, -1);
      MEMORY[0x1D3893640](v20, -1, -1);
    }

    v23 = v0[5];
    v24 = type metadata accessor for StateSnapshot(0);
    (*(*(v24 - 8) + 56))(v23, 1, 1, v24);

    return MEMORY[0x1EEE6DFA0](sub_1D1BDF614, 0, 0);
  }
}

uint64_t sub_1D1BDF408()
{
  v1 = *v0;
  v2 = *(*v0 + 64);

  sub_1D1BECDC4(v2, type metadata accessor for StateSnapshot.UpdateType);
  v3 = *(v1 + 232);
  v4 = *(v1 + 224);

  return MEMORY[0x1EEE6DFA0](sub_1D1BDF560, v4, v3);
}

uint64_t sub_1D1BDF560()
{
  v1 = *(v0 + 240);

  v2 = *(v0 + 40);
  v3 = type metadata accessor for StateSnapshot(0);
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1D1BDF614, 0, 0);
}

uint64_t sub_1D1BDF614()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1BDF68C()
{
  v1 = *(v0 + 72);

  sub_1D1741A30(v1, &unk_1EC649E30, &unk_1D1E91250);
  v2 = *(v0 + 40);
  v3 = type metadata accessor for StateSnapshot(0);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t StaticActionSet.toggle(with:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1BDF780, 0, 0);
}

uint64_t sub_1D1BDF780()
{
  v1 = v0[4];
  if (*(v1 + *(type metadata accessor for StaticActionSet(0) + 56)))
  {
    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = sub_1D1BDF8A8;
    v3 = v0[3];
    v4 = v0[2];

    return sub_1D1BE364C(v4, v3);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[5] = v6;
    *v6 = v0;
    v6[1] = sub_1D17D0834;
    v7 = v0[3];
    v8 = v0[2];

    return sub_1D1BE2660(v8, v7, 0, 1);
  }
}

uint64_t sub_1D1BDF8A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t StaticActionSet.execute(timeout:homeManager:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 72) = a3;
  *(v4 + 80) = v3;
  *(v4 + 208) = a2;
  *(v4 + 64) = a1;
  *(v4 + 88) = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v4 + 96) = swift_task_alloc();
  type metadata accessor for StateSnapshot(0);
  *(v4 + 104) = swift_task_alloc();
  v5 = swift_task_alloc();
  *(v4 + 112) = v5;
  *v5 = v4;
  v5[1] = sub_1D1BDFAA4;

  return sub_1D1E387D4();
}

uint64_t sub_1D1BDFAA4(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BDFBA4, 0, 0);
}

uint64_t sub_1D1BDFBA4()
{
  isa = v0[15].super.isa;
  if (isa)
  {
    v2 = StaticActionSet.get(from:)(v0[15]);
    v0[16].super.isa = v2;

    if (v2)
    {
      v3 = [(objc_class *)v2 home];
      v0[17].super.isa = v3;
      if (v3)
      {
        v0[18].super.isa = sub_1D1E67E1C();
        v0[19].super.isa = sub_1D1E67E0C();
        v5 = sub_1D1E67D4C();

        return MEMORY[0x1EEE6DFA0](sub_1D1BDFCC8, v5, v4);
      }
    }
  }

  v6 = v0[1].super.isa;

  return v6();
}

uint64_t sub_1D1BDFCC8()
{

  if (qword_1EE07AE28 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1BDFD60, 0, 0);
}

uint64_t sub_1D1BDFD60(uint64_t a1)
{
  *(v1 + 160) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BDFDEC, v3, v2);
}

uint64_t sub_1D1BDFDEC()
{

  *(v0 + 168) = qword_1EE07AE30;

  return MEMORY[0x1EEE6DFA0](sub_1D1BDFE60, 0, 0);
}

uint64_t sub_1D1BDFE60()
{
  v1 = v0[16];
  v2 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF8, &qword_1D1E96540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v1;
  *(inited + 40) = 256;
  v4 = v1;
  v5 = sub_1D18DA708(inited);
  swift_setDeallocating();
  sub_1D1741A30(inited + 32, &unk_1EC649E00, &unk_1D1E96548);
  *v2 = v5;
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_1D1BDFF9C;
  v7 = v0[17];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[9];

  return sub_1D1E5A250(v8, v9, v10, v7, 0);
}

uint64_t sub_1D1BDFF9C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);

  sub_1D1BECDC4(v2, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1BECDC4(v1, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1BE00F8, 0, 0);
}

uint64_t sub_1D1BE00F8()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 208);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  *(v6 + 48) = v3 & 1;
  v7 = swift_task_alloc();
  *(v0 + 192) = v7;
  *v7 = v0;
  v7[1] = sub_1D1BE0200;
  v8 = MEMORY[0x1E69E7CA8] + 8;
  v9 = MEMORY[0x1E69E7CA8] + 8;
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v7, v8, v9, 0, 0, &unk_1D1EA0330, v6, v10);
}

uint64_t sub_1D1BE0200()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1D1BE0394;
  }

  else
  {

    v2 = sub_1D1BE031C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1BE031C()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1BE0394()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t StaticActionSet.turnPowerAndActiveActionsOff(homeManager:)(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = sub_1D1E66A7C();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = type metadata accessor for StateSnapshot.UpdateType(0);
  v2[26] = swift_task_alloc();
  type metadata accessor for StateSnapshot(0);
  v2[27] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[28] = v4;
  *v4 = v2;
  v4[1] = sub_1D1BE0580;

  return sub_1D1E387D4();
}

uint64_t sub_1D1BE0580(uint64_t a1)
{
  *(*v1 + 232) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BE0680, 0, 0);
}

uint64_t sub_1D1BE0680()
{
  isa = v0[29].super.isa;
  if (isa)
  {
    v2 = StaticActionSet.get(from:)(v0[29]);
    v0[30].super.isa = v2;

    if (v2)
    {
      v3 = [(objc_class *)v2 home];
      v0[31].super.isa = v3;
      if (v3)
      {
        v0[32].super.isa = sub_1D1E67E1C();
        v0[33].super.isa = sub_1D1E67E0C();
        v5 = sub_1D1E67D4C();

        return MEMORY[0x1EEE6DFA0](sub_1D1BE07AC, v5, v4);
      }
    }
  }

  v6 = v0[1].super.isa;

  return v6();
}

uint64_t sub_1D1BE07AC()
{

  if (qword_1EE07AE28 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1BE0844, 0, 0);
}

uint64_t sub_1D1BE0844(uint64_t a1)
{
  *(v1 + 272) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE08D0, v3, v2);
}

uint64_t sub_1D1BE08D0()
{

  *(v0 + 280) = qword_1EE07AE30;

  return MEMORY[0x1EEE6DFA0](sub_1D1BE0944, 0, 0);
}

uint64_t sub_1D1BE0944()
{
  v1 = v0[30];
  v2 = v0[26];
  v0[36] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF8, &qword_1D1E96540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v1;
  *(inited + 40) = 257;
  v4 = v1;
  v5 = sub_1D18DA708(inited);
  swift_setDeallocating();
  sub_1D1741A30(inited + 32, &unk_1EC649E00, &unk_1D1E96548);
  *v2 = v5;
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  v0[37] = v6;
  *v6 = v0;
  v6[1] = sub_1D1BE0A84;
  v7 = v0[31];
  v9 = v0[26];
  v8 = v0[27];
  v10 = v0[20];

  return sub_1D1E5A250(v8, v9, v10, v7, 0);
}

uint64_t sub_1D1BE0A84()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);

  sub_1D1BECDC4(v2, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1BECDC4(v1, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1BE0BE0, 0, 0);
}

uint64_t sub_1D1BE0BE0()
{
  v63 = v0;
  v1 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  v2 = [*(v0 + 240) actions];
  *(v0 + 304) = sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
  *(v0 + 312) = sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
  v3 = sub_1D1E6816C();

  sub_1D1BDD3B8(v3);
  v5 = v4;
  *(v0 + 320) = 0;

  v62 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0; v6; i = v0)
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D3891EF0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v0 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v10 = [v8 characteristicType];
      v11 = sub_1D1E6781C();
      v1 = v12;

      v13._countAndFlagsBits = v11;
      v13._object = v1;
      CharacteristicKind.init(rawValue:)(v13);
      if (v60 != 174 && (v60 == 3 || v60 == 105))
      {
        sub_1D1E6896C();
        sub_1D1E689AC();
        sub_1D1E689BC();
        sub_1D1E6897C();
      }

      else
      {
      }

      ++v7;
      if (v0 == v6)
      {
        v14 = v62;
        v0 = i;
        v1 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v6 = sub_1D1E6873C();
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_20:
  *(v0 + 328) = v14;

  v15 = swift_allocObject();
  *(v0 + 336) = v15;
  v16 = MEMORY[0x1E69E7CC0];
  *(v15 + 16) = sub_1D18D7C70(MEMORY[0x1E69E7CC0]);
  *(v15 + 24) = 0;
  *(v15 + 32) = 2;
  if ((v14 & 0x8000000000000000) == 0 && (v14 & 0x4000000000000000) == 0)
  {
    v17 = *(v14 + 16);
    *(v0 + 344) = v17;
    if (v17)
    {
      goto LABEL_23;
    }

LABEL_42:
    v31 = *(v0 + 240);

    v32 = [v31 v1[108]];
    v33 = sub_1D1E6816C();

    sub_1D1BDD65C(v33);
    v35 = v34;

    v62 = v16;
    if (v35 >> 62)
    {
      goto LABEL_57;
    }

    for (j = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1D1E6873C())
    {
      v37 = 0;
      v0 = v35 & 0xC000000000000001;
      while (1)
      {
        if (v0)
        {
          v38 = MEMORY[0x1D3891EF0](v37, v35);
        }

        else
        {
          if (v37 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_56;
          }

          v38 = *(v35 + 8 * v37 + 32);
        }

        v39 = v38;
        v40 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if ([v38 state] == 1)
        {
          sub_1D1E6896C();
          sub_1D1E689AC();
          sub_1D1E689BC();
          sub_1D1E6897C();
        }

        else
        {
        }

        ++v37;
        if (v40 == j)
        {
          v41 = v62;
          v0 = i;
          goto LABEL_59;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      ;
    }

    v41 = MEMORY[0x1E69E7CC0];
LABEL_59:

    v61 = MEMORY[0x1E69E7CD0];
    if ((v41 & 0x8000000000000000) != 0 || (v41 & 0x4000000000000000) != 0)
    {
      goto LABEL_73;
    }

    for (k = *(v41 + 16); k; k = sub_1D1E6873C())
    {
      v43 = 0;
      while (1)
      {
        if ((v41 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x1D3891EF0](v43, v41);
        }

        else
        {
          if (v43 >= *(v41 + 16))
          {
            goto LABEL_72;
          }

          v44 = *(v41 + 8 * v43 + 32);
        }

        v45 = v44;
        v0 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        v46 = [v44 mediaProfiles];
        sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
        sub_1D1771944(&qword_1EC642FC0, &qword_1EC642FB8, 0x1E696CBF0);
        sub_1D1E6816C();

        v47 = objc_allocWithZone(MEMORY[0x1E696CBE8]);
        v48 = sub_1D1E6815C();

        v49 = [v47 initWithMediaProfiles:v48 playbackState:2 volume:0];

        sub_1D1768400(&v62, v49);
        ++v43;
        v50 = v0 == k;
        v0 = i;
        if (v50)
        {
          v51 = v61;
          goto LABEL_75;
        }
      }

      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      ;
    }

    v51 = MEMORY[0x1E69E7CD0];
LABEL_75:
    *(v0 + 384) = v51;
    v52 = *(v0 + 336);
    v53 = *(v0 + 248);

    v54 = swift_task_alloc();
    *(v0 + 392) = v54;
    v54[2] = v52;
    v54[3] = v51;
    v54[4] = v53;
    v55 = swift_task_alloc();
    *(v0 + 400) = v55;
    *v55 = v0;
    v55[1] = sub_1D1BE1B24;
    v56 = MEMORY[0x1E69E7CA8] + 8;
    v65 = MEMORY[0x1E69E7CA8] + 8;
    v57 = MEMORY[0x1E69E7CA8] + 8;
    v58 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DD58](v55, v56, v57, 0, 0, &unk_1D1EA0348, v54, v58);
  }

LABEL_41:
  v30 = sub_1D1E6873C();
  *(v0 + 344) = v30;
  if (!v30)
  {
    goto LABEL_42;
  }

LABEL_23:
  v18 = 0;
  while (1)
  {
    v19 = *(v0 + 328);
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1D3891EF0](v18);
    }

    else
    {
      if (v18 >= *(v19 + 16))
      {
        goto LABEL_40;
      }

      v20 = *(v19 + 8 * v18 + 32);
    }

    v21 = v20;
    v22 = v18 + 1;
    *(v0 + 352) = v20;
    *(v0 + 360) = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (sub_1D1E67F7C())
    {
      break;
    }

    v23 = [v21 service];
    *(v0 + 368) = v23;
    if (v23)
    {
      v29 = swift_task_alloc();
      *(v0 + 376) = v29;
      *v29 = v0;
      v29[1] = sub_1D1BE1398;

      return sub_1D1BDD8E0();
    }

    v24 = *(v0 + 344);

    ++v18;
    if (v22 == v24)
    {
      goto LABEL_42;
    }
  }

  v25 = *(v0 + 240);
  v26 = *(v0 + 248);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1D1BE1398(char a1)
{
  *(*v1 + 464) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BE1498, 0, 0);
}

uint64_t sub_1D1BE1498()
{
  v57 = v1;
  v2 = *(v1 + 464);
  if (v2 == 2)
  {
    v3 = v1[46];

LABEL_9:
    goto LABEL_10;
  }

  v3 = v1[46];
  v4 = v1[44];
  if ((v2 & 1) == 0)
  {

    goto LABEL_9;
  }

  v5 = v1[42];
  v6 = v1[23];
  v0 = v1[24];
  v7 = v54[22];
  v8 = [v1[44] characteristicType];
  v9 = sub_1D1E6781C();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  CharacteristicKind.init(rawValue:)(v12);
  if (v56 == 174)
  {
    v13 = 0;
  }

  else
  {
    v13 = v56;
  }

  v14 = [v3 uniqueIdentifier];
  sub_1D1E66A5C();

  sub_1D1BECA54(0, v13, v0, (v5 + 16));
  v1 = v54;
  (*(v6 + 8))(v0, v7);
LABEL_10:
  v15 = v1[45];
  if (v15 == v1[43])
  {
LABEL_11:
    v16 = v1[30];

    v17 = [v16 actions];
    v18 = sub_1D1E6816C();

    sub_1D1BDD65C(v18);
    v0 = v19;

    v56 = MEMORY[0x1E69E7CC0];
    if (v0 >> 62)
    {
      goto LABEL_43;
    }

    for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
    {
      v21 = 0;
      while (1)
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1D3891EF0](v21, v0);
        }

        else
        {
          if (v21 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v22 = *(v0 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if ([v22 state] == 1)
        {
          sub_1D1E6896C();
          sub_1D1E689AC();
          sub_1D1E689BC();
          sub_1D1E6897C();
        }

        else
        {
        }

        ++v21;
        if (v24 == i)
        {
          v30 = v56;
          goto LABEL_45;
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
      ;
    }

    v30 = MEMORY[0x1E69E7CC0];
LABEL_45:

    v55 = MEMORY[0x1E69E7CD0];
    v36 = v54;
    if ((v30 & 0x8000000000000000) != 0 || (v30 & 0x4000000000000000) != 0)
    {
      goto LABEL_58;
    }

    for (j = *(v30 + 16); j; j = sub_1D1E6873C())
    {
      v38 = 0;
      while (1)
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v39 = MEMORY[0x1D3891EF0](v38, v30);
        }

        else
        {
          if (v38 >= *(v30 + 16))
          {
            goto LABEL_57;
          }

          v39 = *(v30 + 8 * v38 + 32);
        }

        v40 = v39;
        v41 = (v38 + 1);
        if (__OFADD__(v38, 1))
        {
          break;
        }

        v36 = j;
        v42 = [v39 mediaProfiles];
        sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
        sub_1D1771944(&qword_1EC642FC0, &qword_1EC642FB8, 0x1E696CBF0);
        sub_1D1E6816C();

        v43 = objc_allocWithZone(MEMORY[0x1E696CBE8]);
        v44 = sub_1D1E6815C();

        v45 = [v43 initWithMediaProfiles:v44 playbackState:2 volume:0];

        sub_1D1768400(&v56, v45);
        j = v36;

        ++v38;
        if (v41 == v36)
        {
          v46 = v55;
          v36 = v54;
          goto LABEL_60;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      ;
    }

    v46 = MEMORY[0x1E69E7CD0];
LABEL_60:
    v36[48] = v46;
    v47 = v36[42];
    v48 = v36[31];

    v49 = swift_task_alloc();
    v36[49] = v49;
    v49[2] = v47;
    v49[3] = v46;
    v49[4] = v48;
    v50 = swift_task_alloc();
    v36[50] = v50;
    *v50 = v36;
    v50[1] = sub_1D1BE1B24;
    v51 = MEMORY[0x1E69E7CA8] + 8;
    v59 = MEMORY[0x1E69E7CA8] + 8;
    v52 = MEMORY[0x1E69E7CA8] + 8;
    v53 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DD58](v50, v51, v52, 0, 0, &unk_1D1EA0348, v49, v53);
  }

  else
  {
    while (1)
    {
      v25 = v1[41];
      if ((v25 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1D3891EF0](v15);
      }

      else
      {
        if (v15 >= *(v25 + 16))
        {
          goto LABEL_42;
        }

        v26 = *(v25 + 8 * v15 + 32);
      }

      v27 = v26;
      v0 = v15 + 1;
      v1[44] = v26;
      v1[45] = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_41;
      }

      if (sub_1D1E67F7C())
      {
        break;
      }

      v28 = [v27 service];
      v1[46] = v28;
      if (v28)
      {
        v35 = swift_task_alloc();
        v1[47] = v35;
        *v35 = v1;
        v35[1] = sub_1D1BE1398;

        return sub_1D1BDD8E0();
      }

      v29 = v54[43];

      ++v15;
      v1 = v54;
      if (v0 == v29)
      {
        goto LABEL_11;
      }
    }

    v31 = v1[30];
    v32 = v1[31];

    v33 = v1[1];

    return v33();
  }
}

uint64_t sub_1D1BE1B24()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_1D1BE2140;
  }

  else
  {

    v2 = sub_1D1BE1C48;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1BE1C48(uint64_t a1)
{
  *(v1 + 416) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE1CD4, v3, v2);
}

uint64_t sub_1D1BE1CD4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1BE1D3C, 0, 0);
}

uint64_t sub_1D1BE1D3C(uint64_t a1)
{
  *(v1 + 424) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE1DC8, v3, v2);
}

uint64_t sub_1D1BE1DC8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1BE1E30, 0, 0);
}

uint64_t sub_1D1BE1E30()
{
  v1 = v0[30];
  v2 = v0[26];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v1;
  *(inited + 40) = 0;
  v4 = v1;
  v5 = sub_1D18DA708(inited);
  swift_setDeallocating();
  sub_1D1741A30(inited + 32, &unk_1EC649E00, &unk_1D1E96548);
  *v2 = v5;
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  v0[54] = v6;
  *v6 = v0;
  v6[1] = sub_1D1BE1F58;
  v7 = v0[31];
  v9 = v0[26];
  v8 = v0[27];
  v10 = v0[20];

  return sub_1D1E5A250(v8, v9, v10, v7, 0);
}

uint64_t sub_1D1BE1F58()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);

  sub_1D1BECDC4(v2, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1BECDC4(v1, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1BE20B4, 0, 0);
}

uint64_t sub_1D1BE20B4()
{
  v1 = *(v0 + 240);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1BE2140()
{

  *(v0 + 440) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE21DC, v2, v1);
}

uint64_t sub_1D1BE21DC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1BE2244, 0, 0);
}

uint64_t sub_1D1BE2244(uint64_t a1)
{
  *(v1 + 448) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE22D0, v3, v2);
}

uint64_t sub_1D1BE22D0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1BE2338, 0, 0);
}

uint64_t sub_1D1BE2338()
{
  v1 = v0[30];
  v2 = v0[26];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v1;
  *(inited + 40) = 16386;
  v4 = v1;
  v5 = sub_1D18DA708(inited);
  swift_setDeallocating();
  sub_1D1741A30(inited + 32, &unk_1EC649E00, &unk_1D1E96548);
  *v2 = v5;
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  v0[57] = v6;
  *v6 = v0;
  v6[1] = sub_1D1BE2464;
  v7 = v0[31];
  v9 = v0[26];
  v8 = v0[27];
  v10 = v0[20];

  return sub_1D1E5A250(v8, v9, v10, v7, 0);
}

uint64_t sub_1D1BE2464()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);

  sub_1D1BECDC4(v2, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1BECDC4(v1, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1BE25C0, 0, 0);
}

uint64_t sub_1D1BE25C0()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 240);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D1BE2660(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 272) = a4;
  *(v5 + 104) = a3;
  *(v5 + 112) = v4;
  *(v5 + 88) = a1;
  *(v5 + 96) = a2;
  *(v5 + 120) = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v5 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  *(v5 + 136) = swift_task_alloc();
  v6 = *(type metadata accessor for StaticActionSet(0) - 8);
  *(v5 + 144) = v6;
  *(v5 + 152) = *(v6 + 64);
  *(v5 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  *(v5 + 168) = swift_task_alloc();
  v7 = sub_1D1E66A7C();
  *(v5 + 176) = v7;
  *(v5 + 184) = *(v7 - 8);
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE2840, 0, 0);
}

uint64_t sub_1D1BE2840()
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1BE28D4, v0, 0);
}

uint64_t sub_1D1BE28D4()
{
  v46 = v0;
  v2 = v0;
  v3 = v0[12];
  swift_beginAccess();
  v4 = *(v3 + 64);
  if (v4)
  {
    v5 = [v4 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v45 = sub_1D1749970(v6);
    sub_1D1747DDC(&v45);

    v7 = v45;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = v0[25];
  v9 = v0[22];
  v10 = v0[14];
  v11 = *(v0[23] + 16);
  v11(v0[26], v10, v9);
  v11(v8, v10, v9);
  v43 = v7 >> 62;
  if (v7 >> 62)
  {
LABEL_31:
    v44 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = sub_1D1E6873C();
  }

  else
  {
    v44 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v14 = 0;
  v15 = v7 & 0xC000000000000001;
  v42 = v7 + 32;
  while (v12 != v13)
  {
    if (v15)
    {
      v1 = v7;
      v16 = MEMORY[0x1D3891EF0](v13, v7);
    }

    else
    {
      if (v13 >= *(v44 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v1 = v7;
      v16 = *(v7 + 8 * v13 + 32);
    }

    v17 = v16;
    v18 = v2;
    v19 = v2[25];
    v20 = [v16 actionSets];
    sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
    v21 = sub_1D1E67C1C();

    v22 = swift_task_alloc();
    *(v22 + 16) = v19;
    v23 = sub_1D174A6C4(sub_1D1778988, v22, v21);

    if (v23)
    {
      v12 = v13;
      v7 = v1;
      v2 = v18;
      break;
    }

    v24 = __OFADD__(v13++, 1);
    v7 = v1;
    v2 = v18;
    if (v24)
    {
      goto LABEL_30;
    }
  }

  if (v43)
  {
    if (v12 != sub_1D1E6873C())
    {
LABEL_19:
      if (v15)
      {
        v25 = MEMORY[0x1D3891EF0](v12, v7);
      }

      else
      {
        if (v12 >= *(v44 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v25 = *(v42 + 8 * v12);
      }

      v26 = v25;
      v27 = v2[26];
      v29 = v2[22];
      v28 = v2[23];
      v30 = [v25 actionSets];
      sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
      v31 = sub_1D1E67C1C();

      v32 = swift_task_alloc();
      *(v32 + 16) = v27;
      v33 = v2;
      v34 = sub_1D174A6C4(sub_1D1778988, v32, v31);
      v33[27] = v34;

      v1 = *(v28 + 8);
      v33[28] = v1;
      v33[29] = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v1(v27, v29);

      v12 = v33[25];
      v14 = v33[22];
      if (v34)
      {

        v1(v12, v14);
        v35 = sub_1D1BE2E80;
        goto LABEL_26;
      }

LABEL_34:
      v35 = (v1)(v12, v14);
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v35, v39, v40);
    }
  }

  else if (v12 != *(v44 + 16))
  {
    goto LABEL_19;
  }

  v36 = v2[25];
  v37 = v2[22];
  v38 = *(v2[23] + 8);
  v38(v2[26], v37);

  v38(v36, v37);
  v35 = sub_1D1BE2D78;
LABEL_26:
  v39 = 0;
  v40 = 0;

  return MEMORY[0x1EEE6DFA0](v35, v39, v40);
}

uint64_t sub_1D1BE2D78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
  (*(*(v1 - 8) + 56))(*(v0 + 88), 1, 1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1BE2E80()
{
  v1 = [*(v0 + 216) home];
  *(v0 + 240) = v1;
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 160);
    v3 = *(v0 + 168);
    v27 = v3;
    v28 = *(v0 + 216);
    v6 = *(v0 + 144);
    v5 = *(v0 + 152);
    v29 = *(v0 + 128);
    v26 = *(v0 + 272);
    v7 = *(v0 + 112);
    v25 = *(v0 + 104);
    v8 = *(v0 + 96);
    v9 = sub_1D1E67E7C();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
    sub_1D1BED4F0(v7, v4, type metadata accessor for StaticActionSet);
    v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v11 = (v10 + v5 + 23) & 0xFFFFFFFFFFFFFFF8;
    v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    sub_1D1BED33C(v4, v13 + v10, type metadata accessor for StaticActionSet);
    v14 = v13 + ((v10 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v14 = v25;
    *(v14 + 8) = v26 & 1;
    *(v13 + v11) = v28;
    *(v13 + v12) = v2;
    *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v8;
    v15 = v28;
    v16 = v2;

    *(v0 + 248) = sub_1D1B02614(0, 0, v27, &unk_1D1EA03F0, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF8, &qword_1D1E96540);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = v15;
    *(inited + 40) = 256;
    v18 = v15;
    v19 = sub_1D18DA708(inited);
    swift_setDeallocating();
    sub_1D1741A30(inited + 32, &unk_1EC649E00, &unk_1D1E96548);
    *v29 = v19;
    swift_storeEnumTagMultiPayload();
    v20 = swift_task_alloc();
    *(v0 + 256) = v20;
    *v20 = v0;
    v20[1] = sub_1D1BE323C;
    v21 = *(v0 + 128);

    return sub_1D1AB6894(v21, 0, 0, 0, 0);
  }

  else
  {

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
    (*(*(v23 - 8) + 56))(*(v0 + 88), 1, 1);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_1D1BE323C(uint64_t a1)
{
  v2 = *(*v1 + 128);
  *(*v1 + 264) = a1;

  sub_1D1BECDC4(v2, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1BE3370, 0, 0);
}

uint64_t sub_1D1BE3370()
{
  v1 = *(v0 + 264);
  v2 = [*(v0 + 240) uniqueIdentifier];
  sub_1D1E66A5C();

  if (*(v1 + 16))
  {
    v3 = sub_1D1742188();
    v4 = *(v0 + 240);
    v5 = *(v0 + 216);
    v6 = *(v0 + 224);
    v7 = *(v0 + 192);
    v8 = *(v0 + 176);
    if (v9)
    {
      v26 = *(v0 + 136);
      v10 = *(*(v0 + 264) + 56);
      v11 = type metadata accessor for StateSnapshot(0);
      v12 = *(v11 - 8);
      sub_1D1BED4F0(v10 + *(v12 + 72) * v3, v26, type metadata accessor for StateSnapshot);

      v6(v7, v8);

      v13 = 0;
      goto LABEL_7;
    }

    v6(v7, v8);
  }

  else
  {
    v14 = *(v0 + 240);
    v16 = *(v0 + 216);
    v15 = *(v0 + 224);
    v17 = *(v0 + 192);
    v18 = *(v0 + 176);

    v15(v17, v18);
  }

  v11 = type metadata accessor for StateSnapshot(0);
  v12 = *(v11 - 8);
  v13 = 1;
LABEL_7:
  v19 = *(v0 + 248);
  v20 = *(v0 + 136);
  v21 = *(v0 + 88);
  (*(v12 + 56))(v20, v13, 1, v11);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
  v23 = *(v22 + 48);
  sub_1D1B0ABE4(v20, v21);
  *(v21 + v23) = v19;
  (*(*(v22 - 8) + 56))(*(v0 + 88), 0, 1, v22);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1D1BE364C(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = *(type metadata accessor for StaticActionSet(0) - 8);
  v3[14] = v4;
  v3[15] = *(v4 + 64);
  v3[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v3[17] = swift_task_alloc();
  v3[18] = type metadata accessor for StateSnapshot.UpdateType(0);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v3[20] = swift_task_alloc();
  v5 = sub_1D1E66A7C();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE3828, 0, 0);
}

uint64_t sub_1D1BE3828()
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1BE38BC, v0, 0);
}

uint64_t sub_1D1BE38BC()
{
  v46 = v0;
  v2 = v0;
  v3 = v0[12];
  swift_beginAccess();
  v4 = *(v3 + 64);
  if (v4)
  {
    v5 = [v4 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v45 = sub_1D1749970(v6);
    sub_1D1747DDC(&v45);

    v7 = v45;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = v0[24];
  v9 = v0[21];
  v10 = v0[13];
  v11 = *(v0[22] + 16);
  v11(v0[25], v10, v9);
  v11(v8, v10, v9);
  v43 = v7 >> 62;
  if (v7 >> 62)
  {
LABEL_31:
    v44 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = sub_1D1E6873C();
  }

  else
  {
    v44 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v14 = 0;
  v15 = v7 & 0xC000000000000001;
  v42 = v7 + 32;
  while (v12 != v13)
  {
    if (v15)
    {
      v1 = v7;
      v16 = MEMORY[0x1D3891EF0](v13, v7);
    }

    else
    {
      if (v13 >= *(v44 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v1 = v7;
      v16 = *(v7 + 8 * v13 + 32);
    }

    v17 = v16;
    v18 = v2;
    v19 = v2[24];
    v20 = [v16 actionSets];
    sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
    v21 = sub_1D1E67C1C();

    v22 = swift_task_alloc();
    *(v22 + 16) = v19;
    v23 = sub_1D174A6C4(sub_1D1749C64, v22, v21);

    if (v23)
    {
      v12 = v13;
      v7 = v1;
      v2 = v18;
      break;
    }

    v24 = __OFADD__(v13++, 1);
    v7 = v1;
    v2 = v18;
    if (v24)
    {
      goto LABEL_30;
    }
  }

  if (v43)
  {
    if (v12 != sub_1D1E6873C())
    {
LABEL_19:
      if (v15)
      {
        v25 = MEMORY[0x1D3891EF0](v12, v7);
      }

      else
      {
        if (v12 >= *(v44 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v25 = *(v42 + 8 * v12);
      }

      v26 = v25;
      v27 = v2[25];
      v29 = v2[21];
      v28 = v2[22];
      v30 = [v25 actionSets];
      sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
      v31 = sub_1D1E67C1C();

      v32 = swift_task_alloc();
      *(v32 + 16) = v27;
      v33 = v2;
      v34 = sub_1D174A6C4(sub_1D1778988, v32, v31);
      v33[26] = v34;

      v1 = *(v28 + 8);
      v33[27] = v1;
      v33[28] = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v1(v27, v29);

      v12 = v33[24];
      v14 = v33[21];
      if (v34)
      {

        v1(v12, v14);
        v35 = sub_1D1BE3E68;
        goto LABEL_26;
      }

LABEL_34:
      v35 = (v1)(v12, v14);
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v35, v39, v40);
    }
  }

  else if (v12 != *(v44 + 16))
  {
    goto LABEL_19;
  }

  v36 = v2[24];
  v37 = v2[21];
  v38 = *(v2[22] + 8);
  v38(v2[25], v37);

  v38(v36, v37);
  v35 = sub_1D1BE3D60;
LABEL_26:
  v39 = 0;
  v40 = 0;

  return MEMORY[0x1EEE6DFA0](v35, v39, v40);
}

uint64_t sub_1D1BE3D60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
  (*(*(v1 - 8) + 56))(*(v0 + 88), 1, 1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1BE3E68()
{
  v1 = [*(v0 + 208) home];
  *(v0 + 232) = v1;
  if (v1)
  {
    v2 = *(v0 + 208);
    v3 = *(v0 + 152);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF8, &qword_1D1E96540);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = v2;
    *(inited + 40) = 257;
    v5 = v2;
    v6 = sub_1D18DA708(inited);
    swift_setDeallocating();
    sub_1D1741A30(inited + 32, &unk_1EC649E00, &unk_1D1E96548);
    *v3 = v6;
    swift_storeEnumTagMultiPayload();
    v7 = swift_task_alloc();
    *(v0 + 240) = v7;
    *v7 = v0;
    v7[1] = sub_1D1BE40C4;
    v8 = *(v0 + 152);

    return sub_1D1AB6894(v8, 0, 0, 0, 0);
  }

  else
  {

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
    (*(*(v10 - 8) + 56))(*(v0 + 88), 1, 1);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1D1BE40C4(uint64_t a1)
{
  v2 = *(*v1 + 152);
  *(*v1 + 248) = a1;

  sub_1D1BECDC4(v2, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1BE41F8, 0, 0);
}

uint64_t sub_1D1BE41F8()
{
  v1 = *(v0 + 248);
  v2 = [*(v0 + 232) uniqueIdentifier];
  sub_1D1E66A5C();

  if (*(v1 + 16))
  {
    v3 = sub_1D1742188();
    v4 = *(v0 + 216);
    v5 = *(v0 + 184);
    v6 = *(v0 + 168);
    if (v7)
    {
      v8 = *(v0 + 160);
      v9 = *(*(v0 + 248) + 56);
      v10 = *(type metadata accessor for StateSnapshot(0) - 8);
      sub_1D1BED4F0(v9 + *(v10 + 72) * v3, v8, type metadata accessor for StateSnapshot);
      v4(v5, v6);

      goto LABEL_7;
    }

    v4(v5, v6);
  }

  else
  {
    v11 = *(v0 + 216);
    v12 = *(v0 + 184);
    v13 = *(v0 + 168);

    v11(v12, v13);
  }

  v10 = *(type metadata accessor for StateSnapshot(0) - 8);
LABEL_7:
  v31 = *(v0 + 208);
  v32 = *(v0 + 232);
  v33 = *(v0 + 160);
  v15 = *(v0 + 128);
  v14 = *(v0 + 136);
  v16 = *(v0 + 112);
  v17 = *(v0 + 120);
  v18 = *(v0 + 96);
  v19 = *(v0 + 104);
  v20 = *(v0 + 88);
  (*(v10 + 56))();
  v21 = sub_1D1E67E7C();
  (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  sub_1D1BED4F0(v19, v15, type metadata accessor for StaticActionSet);
  v22 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v23 = (v17 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  sub_1D1BED33C(v15, v25 + v22, type metadata accessor for StaticActionSet);
  *(v25 + v23) = v18;
  *(v25 + v24) = v31;
  *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v32;

  v26 = sub_1D1B02614(0, 0, v14, &unk_1D1EA03A8, v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
  v28 = *(v27 + 48);
  sub_1D1B0ABE4(v33, v20);
  *(v20 + v28) = v26;
  (*(*(v27 - 8) + 56))(*(v0 + 88), 0, 1, v27);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1D1BE45C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 81) = a7;
  *(v7 + 40) = a5;
  *(v7 + 48) = a6;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  *(v7 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE466C, 0, 0);
}

uint64_t sub_1D1BE466C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 81);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = sub_1D1E67E7C();
  v7 = (*(v6 - 8) + 56);
  v23 = *v7;
  (*v7)(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;
  v8[5] = v4;
  v8[6] = v3;
  v9 = v5;
  v10 = v4;
  v11 = v3;
  sub_1D1A01DDC(v1, &unk_1D1EA0388, v8);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  if ((v2 & 1) == 0)
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v12 = sub_1D1E6709C();
    __swift_project_value_buffer(v12, qword_1EE07B5D8);
    v13 = sub_1D1E6707C();
    v14 = sub_1D1E6835C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 48);
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = v15;
      _os_log_impl(&dword_1D16EC000, v13, v14, "executing actionSet with timeout: %f", v16, 0xCu);
      MEMORY[0x1D3893640](v16, -1, -1);
    }

    v18 = *(v0 + 48);
    v17 = *(v0 + 56);

    v23(v17, 1, 1, v6);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v18;
    sub_1D1A01DDC(v17, &unk_1D1EA0398, v19);
    sub_1D1741A30(v17, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  v20 = swift_task_alloc();
  *(v0 + 64) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648E28, &unk_1D1E9CB30);
  *v20 = v0;
  v20[1] = sub_1D1BE494C;

  return MEMORY[0x1EEE6DAC8](v0 + 80, 0, 0, v21);
}

uint64_t sub_1D1BE494C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D18BD2D8;
  }

  else
  {
    v2 = sub_1D1BE4A60;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1BE4A60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  sub_1D1E67FFC();
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EE07B5D8);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D16EC000, v2, v3, "actionSet execution has completed, cancelling timeout", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D1BE4BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[31] = a5;
  v6[32] = a6;
  v6[30] = a4;
  v6[33] = type metadata accessor for StateSnapshot.UpdateType(0);
  v6[34] = swift_task_alloc();
  type metadata accessor for StateSnapshot(0);
  v6[35] = swift_task_alloc();
  v7 = sub_1D1E6702C();
  v6[36] = v7;
  v6[37] = *(v7 - 8);
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v8 = sub_1D1E66FDC();
  v6[40] = v8;
  v6[41] = *(v8 - 8);
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE4D6C, 0, 0);
}

uint64_t sub_1D1BE4D6C()
{
  if (qword_1EE07AE48 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6701C();
  v0[46] = __swift_project_value_buffer(v1, qword_1EE07AE50);
  sub_1D1E66FCC();
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v5, "actionSetExecution", "", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v6 = v0[44];
  v7 = v0[45];
  v8 = v0[40];
  v9 = v0[41];
  v11 = v0[30];
  v10 = v0[31];

  (*(v9 + 16))(v6, v7, v8);
  sub_1D1E6705C();
  swift_allocObject();
  v0[47] = sub_1D1E6704C();
  v12 = *(v9 + 8);
  v0[48] = v12;
  v0[49] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v7, v8);
  v0[2] = v0;
  v0[3] = sub_1D1BE4FE8;
  v13 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_54;
  v0[14] = v13;
  [v11 executeActionSet:v10 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1BE4FE8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 400) = v1;
  if (v1)
  {
    v2 = sub_1D1BE5CD0;
  }

  else
  {
    v2 = sub_1D1BE50F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1BE50F8(uint64_t a1)
{
  v2 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v3 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {
    v4 = v1[39];
    v5 = v1[36];
    v6 = v1[37];

    sub_1D1E6706C();

    if ((*(v6 + 88))(v4, v5) == *MEMORY[0x1E69E93E8])
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[37] + 8))(v1[39], v1[36]);
      v7 = "";
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v9, "actionSetExecution", v7, v8, 2u);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  v10 = v1[48];
  v11 = v1[43];
  v12 = v1[40];

  v10(v11, v12);
  v1[51] = sub_1D1E67E1C();
  v1[52] = sub_1D1E67E0C();
  v14 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE52C0, v14, v13);
}

uint64_t sub_1D1BE52C0()
{

  if (qword_1EE07AE28 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1BE5358, 0, 0);
}

uint64_t sub_1D1BE5358(uint64_t a1)
{
  *(v1 + 424) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE53E4, v3, v2);
}

uint64_t sub_1D1BE53E4()
{

  *(v0 + 432) = qword_1EE07AE30;

  return MEMORY[0x1EEE6DFA0](sub_1D1BE5458, 0, 0);
}

uint64_t sub_1D1BE5458()
{
  v1 = v0[34];
  v2 = v0[31];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF8, &qword_1D1E96540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v2;
  *(inited + 40) = 1;
  v4 = v2;
  v5 = sub_1D18DA708(inited);
  swift_setDeallocating();
  sub_1D1741A30(inited + 32, &unk_1EC649E00, &unk_1D1E96548);
  *v1 = v5;
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  v0[55] = v6;
  *v6 = v0;
  v6[1] = sub_1D1BE5594;
  v8 = v0[34];
  v7 = v0[35];
  v9 = v0[32];
  v10 = v0[30];

  return sub_1D1E5A250(v7, v8, v9, v10, 0);
}

uint64_t sub_1D1BE5594()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);

  sub_1D1BECDC4(v2, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1BECDC4(v1, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1BE56F0, 0, 0);
}

uint64_t sub_1D1BE56F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1BE57BC()
{

  if (qword_1EE07AE28 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1BE5854, 0, 0);
}

uint64_t sub_1D1BE5854(uint64_t a1)
{
  *(v1 + 464) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE58E0, v3, v2);
}

uint64_t sub_1D1BE58E0()
{

  *(v0 + 472) = qword_1EE07AE30;

  return MEMORY[0x1EEE6DFA0](sub_1D1BE5954, 0, 0);
}

uint64_t sub_1D1BE5954()
{
  v1 = v0[34];
  v2 = v0[31];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF8, &qword_1D1E96540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v2;
  *(inited + 40) = 16386;
  v4 = v2;
  v5 = sub_1D18DA708(inited);
  swift_setDeallocating();
  sub_1D1741A30(inited + 32, &unk_1EC649E00, &unk_1D1E96548);
  *v1 = v5;
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  v0[60] = v6;
  *v6 = v0;
  v6[1] = sub_1D1BE5A90;
  v8 = v0[34];
  v7 = v0[35];
  v9 = v0[32];
  v10 = v0[30];

  return sub_1D1E5A250(v7, v8, v9, v10, 0);
}

uint64_t sub_1D1BE5A90()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);

  sub_1D1BECDC4(v2, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1BECDC4(v1, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1BE5BEC, 0, 0);
}

uint64_t sub_1D1BE5BEC(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1D1BE5CD0(uint64_t a1)
{
  swift_willThrow();
  v2 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v3 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {
    v5 = v1[37];
    v4 = v1[38];
    v6 = v1[36];

    sub_1D1E6706C();

    if ((*(v5 + 88))(v4, v6) == *MEMORY[0x1E69E93E8])
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[37] + 8))(v1[38], v1[36]);
      v7 = "";
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v9, "actionSetExecution", v7, v8, 2u);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  v10 = v1[48];
  v11 = v1[42];
  v12 = v1[40];

  v10(v11, v12);
  v1[56] = sub_1D1E67E1C();
  v1[57] = sub_1D1E67E0C();
  v14 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE57BC, v14, v13);
}

uint64_t sub_1D1BE5EA8(double a1)
{
  *(v1 + 32) = a1;
  v2 = sub_1D1E68A4C();
  *(v1 + 40) = v2;
  *(v1 + 48) = *(v2 - 8);
  *(v1 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE5F68, 0, 0);
}

uint64_t sub_1D1BE5F68()
{
  v1 = sub_1D1E693AC();
  v3 = v2;
  sub_1D1E6912C();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1D1BE6044;

  return sub_1D1A01910(v1, v3, 0, 0, 1);
}

uint64_t sub_1D1BE6044()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  (*(v2[6] + 8))(v2[7], v2[5]);
  if (v0)
  {
    v3 = sub_1D1BEDBBC;
  }

  else
  {
    v3 = sub_1D1BE61AC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1BE61AC()
{
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EE07B5D8);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D16EC000, v2, v3, "actionSet execution timeout has been hit", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  type metadata accessor for HMError(0);
  *(v0 + 24) = 8;
  sub_1D1CD8538(MEMORY[0x1E69E7CC0]);
  sub_1D1BED2E4();
  sub_1D1E6654C();
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D1BE6318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE63B8, 0, 0);
}

uint64_t sub_1D1BE63B8()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = sub_1D1E67E7C();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;

  sub_1D1A01DDC(v1, &unk_1D1EA0360, v6);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (!sub_1D1E6873C())
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v0[4] + 16))
  {
LABEL_3:
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[4];
    v5(v7, 1, 1, v4);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    v10[5] = v9;
    v11 = v8;

    sub_1D1A01DDC(v7, &unk_1D1EA0370, v10);
    sub_1D1741A30(v7, &unk_1EC6442C0, &qword_1D1E741A0);
  }

LABEL_4:
  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = sub_1D1BE65E8;

  return sub_1D1A047E0(0, 0);
}

uint64_t sub_1D1BE65E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D1BE66F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C790, &qword_1D1EA0378);
  v4[18] = swift_task_alloc();
  v5 = type metadata accessor for StateSnapshot(0);
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v4[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE6828, 0, 0);
}

uint64_t sub_1D1BE6828()
{
  *(v0 + 184) = sub_1D1E67E1C();
  *(v0 + 192) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE68C0, v2, v1);
}

uint64_t sub_1D1BE68C0()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1BE6958, 0, 0);
}

uint64_t sub_1D1BE6958(uint64_t a1)
{
  *(v1 + 200) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE69E4, v3, v2);
}

uint64_t sub_1D1BE69E4()
{

  *(v0 + 208) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1BE6A58, 0, 0);
}

uint64_t sub_1D1BE6A58()
{
  v1 = *(v0 + 136);
  swift_beginAccess();
  *(v0 + 216) = *(v1 + 16);
  *(v0 + 320) = *(v1 + 24);
  *(v0 + 224) = *(v1 + 32);

  *(v0 + 232) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE6B18, v3, v2);
}

uint64_t sub_1D1BE6B18()
{
  v1 = *(v0 + 208);

  v2 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 240) = v3;
  v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D1BE6BB4, 0, 0);
}

uint64_t sub_1D1BE6BB4(uint64_t a1)
{
  if (*(v1 + 240))
  {
    v2 = *(v1 + 320);
    v3 = *(v1 + 224);
    *(v1 + 64) = *(v1 + 216);
    *(v1 + 72) = v2;
    *(v1 + 80) = v3;
    *(v1 + 248) = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1BE6CFC, v5, v4);
  }

  else
  {

    v6 = *(v1 + 176);
    (*(*(v1 + 160) + 56))(v6, 1, 1, *(v1 + 152));
    sub_1D1741A30(v6, &unk_1EC649E30, &unk_1D1E91250);

    v7 = *(v1 + 8);

    return v7();
  }
}

uint64_t sub_1D1BE6CFC()
{

  *(v0 + 256) = sub_1D1E0FF44((v0 + 64), 0);

  return MEMORY[0x1EEE6DFA0](sub_1D1BE6D78, 0, 0);
}

uint64_t sub_1D1BE6D78()
{
  v1 = *(v0 + 256);
  if (v1)
  {
    v2 = *(v0 + 240);
    v3 = *(v0 + 320);
    v4 = *(v0 + 224);
    *(v0 + 88) = *(v0 + 216);
    *(v0 + 96) = v3;
    *(v0 + 104) = v4;
    v5 = swift_task_alloc();
    *(v0 + 264) = v5;
    *v5 = v0;
    v5[1] = sub_1D1BE6EE8;
    v6 = *(v0 + 144);

    return sub_1D1E10298(v6, (v0 + 88), v1, v2);
  }

  else
  {

    v8 = *(v0 + 176);
    (*(*(v0 + 160) + 56))(v8, 1, 1, *(v0 + 152));
    sub_1D1741A30(v8, &unk_1EC649E30, &unk_1D1E91250);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1D1BE6EE8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1BE6FE4, 0, 0);
}

uint64_t sub_1D1BE6FE4()
{
  v1 = *(v0 + 144);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642958, &unk_1D1EB2A00);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 256);
    v4 = *(v0 + 240);

    sub_1D1741A30(v1, &qword_1EC64C790, &qword_1D1EA0378);
    v5 = 1;
LABEL_5:
    v12 = *(v0 + 176);
    (*(*(v0 + 160) + 56))(v12, v5, 1, *(v0 + 152));
    sub_1D1741A30(v12, &unk_1EC649E30, &unk_1D1E91250);

    v13 = *(v0 + 8);

    return v13();
  }

  v6 = *(v0 + 320);
  v7 = *(v0 + 168);
  *(v0 + 272) = *(v1 + *(v2 + 48));
  sub_1D1BED33C(v1, v7, type metadata accessor for StateSnapshot);
  if (v6)
  {
    v8 = *(v0 + 256);
    v9 = *(v0 + 240);
    v10 = *(v0 + 168);
    v11 = *(v0 + 176);

    sub_1D1BED33C(v10, v11, type metadata accessor for StateSnapshot);
    v5 = 0;
    goto LABEL_5;
  }

  v15 = *(v0 + 224);
  *(v0 + 112) = *(v0 + 216);
  *(v0 + 120) = *(v0 + 320);
  *(v0 + 128) = v15;
  v16 = swift_task_alloc();
  *(v0 + 280) = v16;
  *v16 = v0;
  v16[1] = sub_1D1BE7224;

  return CharacteristicValueSet.characteristicsAndValues.getter();
}

uint64_t sub_1D1BE7224(uint64_t a1)
{
  *(*v1 + 288) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BE7324, 0, 0);
}

uint64_t sub_1D1BE7324()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = sub_1D18A6E38(v0[36]);
  v0[37] = v3;

  v4 = swift_task_alloc();
  v0[38] = v4;
  *v4 = v0;
  v4[1] = sub_1D1BE73F4;
  v5 = v0[34];

  return sub_1D1E13068(v3, v1, v2, v5, 0, 1);
}

uint64_t sub_1D1BE73F4()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1D1BE761C;
  }

  else
  {
    v2 = sub_1D1BE7524;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1BE7524()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[21];
  v4 = v0[22];

  sub_1D1BED33C(v3, v4, type metadata accessor for StateSnapshot);
  v5 = v0[22];
  (*(v0[20] + 56))(v5, 0, 1, v0[19]);
  sub_1D1741A30(v5, &unk_1EC649E30, &unk_1D1E91250);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D1BE761C()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[21];

  sub_1D1BECDC4(v3, type metadata accessor for StateSnapshot);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D1BE76DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = sub_1D1E66A7C();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE779C, 0, 0);
}

uint64_t sub_1D1BE779C()
{
  *(v0 + 184) = sub_1D1E67E1C();
  *(v0 + 192) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE7834, v2, v1);
}

uint64_t sub_1D1BE7834()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1BE78CC, 0, 0);
}

uint64_t sub_1D1BE78CC(uint64_t a1)
{
  *(v1 + 200) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE7958, v3, v2);
}

uint64_t sub_1D1BE7958()
{

  *(v0 + 208) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1BE79CC, 0, 0);
}

uint64_t sub_1D1BE79CC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = [*(v0 + 144) uniqueIdentifier];
  sub_1D1E66A5C();

  *(v0 + 216) = sub_1D1E66A2C();
  (*(v3 + 8))(v1, v2);
  *(v0 + 224) = sub_1D1E67E0C();
  v6 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE7AB4, v6, v5);
}

uint64_t sub_1D1BE7AB4()
{
  v1 = v0[27];
  v2 = v0[26];

  v0[29] = [v2 homeFor_];

  return MEMORY[0x1EEE6DFA0](sub_1D1BE7B44, 0, 0);
}

uint64_t sub_1D1BE7B44()
{
  v1 = v0[29];
  if (v1)
  {
    sub_1D1BFAAD8(v0[19]);
    sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
    sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
    v2 = sub_1D1E6815C();
    v0[30] = v2;

    v0[2] = v0;
    v0[3] = sub_1D1BE7D18;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D17B04C8;
    v0[13] = &block_descriptor_49;
    v0[14] = v3;
    [v1 executeActions:v2 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1D1BE7D18()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_1D1BE7E98;
  }

  else
  {
    v2 = sub_1D1BE7E28;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1BE7E28()
{
  v1 = *(v0 + 240);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1BE7E98(uint64_t a1)
{
  v2 = v1[30];
  v3 = v1[29];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_1D1BE7F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = a8;
  *(v8 + 144) = v12;
  *(v8 + 120) = a5;
  *(v8 + 128) = a7;
  *(v8 + 240) = a6;
  *(v8 + 112) = a1;
  v9 = sub_1D1E66A7C();
  *(v8 + 152) = v9;
  *(v8 + 160) = *(v9 - 8);
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v8 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE8028, 0, 0);
}

uint64_t sub_1D1BE8028()
{
  v1 = v0[15].i8[0];
  v2 = v0[7].i64[1];
  v3 = swift_task_alloc();
  v0[12].i64[0] = v3;
  v3[1] = vextq_s8(v0[8], v0[8], 8uLL);
  v3[2].i64[0] = v2;
  v3[2].i8[8] = v1 & 1;
  v4 = swift_task_alloc();
  v0[12].i64[1] = v4;
  *v4 = v0;
  v4[1] = sub_1D1BE812C;
  v5 = MEMORY[0x1E69E7CA8] + 8;
  v6 = MEMORY[0x1E69E7CA8] + 8;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v4, v5, v6, 0, 0, &unk_1D1EA0400, v3, v7);
}

uint64_t sub_1D1BE812C()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1D1BE8704;
  }

  else
  {

    v2 = sub_1D1BE8248;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1BE8248()
{
  v1 = v0[23];
  v2 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF8, &qword_1D1E96540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v2;
  *(inited + 40) = 1;
  v4 = v2;
  v5 = sub_1D18DA708(inited);
  swift_setDeallocating();
  sub_1D1741A30(inited + 32, &unk_1EC649E00, &unk_1D1E96548);
  *v1 = v5;
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_1D1BE83A4;
  v7 = v0[23];

  return sub_1D1AB6894(v7, 0, 0, 0, 1);
}

uint64_t sub_1D1BE83A4(uint64_t a1)
{
  v2 = *(*v1 + 184);
  *(*v1 + 224) = a1;

  sub_1D1BECDC4(v2, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1BE84D8, 0, 0);
}

uint64_t sub_1D1BE84D8()
{
  v1 = *(v0 + 224);
  v2 = [*(v0 + 136) uniqueIdentifier];
  sub_1D1E66A5C();

  v3 = *(v0 + 168);
  if (*(v1 + 16))
  {
    v4 = sub_1D1742188();
    v6 = *(v0 + 160);
    v5 = *(v0 + 168);
    v7 = *(v0 + 152);
    if (v8)
    {
      v9 = v4;
      v10 = *(v0 + 112);
      v11 = *(*(v0 + 224) + 56);
      v12 = type metadata accessor for StateSnapshot(0);
      v13 = *(v12 - 8);
      sub_1D1BED4F0(v11 + *(v13 + 72) * v9, v10, type metadata accessor for StateSnapshot);
      (*(v6 + 8))(v5, v7);

      v14 = 0;
      goto LABEL_7;
    }

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v15 = *(v0 + 152);
    v16 = *(v0 + 160);

    (*(v16 + 8))(v3, v15);
  }

  v12 = type metadata accessor for StateSnapshot(0);
  v13 = *(v12 - 8);
  v14 = 1;
LABEL_7:
  (*(v13 + 56))(*(v0 + 112), v14, 1, v12);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D1BE8704()
{
  v1 = v0[23];
  v2 = v0[16];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF8, &qword_1D1E96540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v2;
  *(inited + 40) = 16386;
  v4 = v2;
  v5 = sub_1D18DA708(inited);
  swift_setDeallocating();
  sub_1D1741A30(inited + 32, &unk_1EC649E00, &unk_1D1E96548);
  *v1 = v5;
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  v0[29] = v6;
  *v6 = v0;
  v6[1] = sub_1D1BE8868;
  v7 = v0[23];

  return sub_1D1AB6894(v7, 0, 0, 0, 1);
}

uint64_t sub_1D1BE8868()
{
  v1 = *(*v0 + 184);

  sub_1D1BECDC4(v1, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1BE89A0, 0, 0);
}

uint64_t sub_1D1BE89A0(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1D1BE8A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 73) = a6;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  *(v6 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE8AC8, 0, 0);
}

uint64_t sub_1D1BE8AC8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 73);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = sub_1D1E67E7C();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v3;
  v8 = v4;
  v9 = v3;
  sub_1D1A01DDC(v1, &unk_1D1EA0410, v7);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  if ((v2 & 1) == 0)
  {
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v10 = sub_1D1E6709C();
    __swift_project_value_buffer(v10, qword_1EC64A290);
    v11 = sub_1D1E6707C();
    v12 = sub_1D1E6835C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 40);
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v13;
      _os_log_impl(&dword_1D16EC000, v11, v12, "executing actionSet with timeout: %f", v14, 0xCu);
      MEMORY[0x1D3893640](v14, -1, -1);
    }

    v16 = *(v0 + 40);
    v15 = *(v0 + 48);

    v6(v15, 1, 1, v5);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v16;
    sub_1D1A01DDC(v15, &unk_1D1EA0420, v17);
    sub_1D1741A30(v15, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  v18 = swift_task_alloc();
  *(v0 + 56) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648E28, &unk_1D1E9CB30);
  *v18 = v0;
  v18[1] = sub_1D1BE8D98;

  return MEMORY[0x1EEE6DAC8](v0 + 72, 0, 0, v19);
}

uint64_t sub_1D1BE8D98()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D1BE900C;
  }

  else
  {
    v2 = sub_1D1BE8EAC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1BE8EAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  sub_1D1E67FFC();
  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EC64A290);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D16EC000, v2, v3, "actionSet execution has completed, cancelling timeout", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D1BE900C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1BE9070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = sub_1D1E6702C();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v7 = sub_1D1E66FDC();
  v5[24] = v7;
  v5[25] = *(v7 - 8);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE91BC, 0, 0);
}

uint64_t sub_1D1BE91BC()
{
  if (qword_1EC642330 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6701C();
  v0[30] = __swift_project_value_buffer(v1, qword_1EC64A2A8);
  sub_1D1E66FCC();
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v5, "actionSetExecution", "", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v6 = v0[28];
  v7 = v0[29];
  v8 = v0[24];
  v9 = v0[25];
  v11 = v0[18];
  v10 = v0[19];

  (*(v9 + 16))(v6, v7, v8);
  sub_1D1E6705C();
  swift_allocObject();
  v0[31] = sub_1D1E6704C();
  v12 = *(v9 + 8);
  v0[32] = v12;
  v0[33] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v7, v8);
  v0[2] = v0;
  v0[3] = sub_1D1BE9438;
  v13 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_115;
  v0[14] = v13;
  [v11 executeActionSet:v10 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1BE9438()
{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_1D1BE9728;
  }

  else
  {
    v2 = sub_1D1BE9548;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1BE9548(uint64_t a1)
{
  v2 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v3 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {
    v4 = v1[23];
    v5 = v1[20];
    v6 = v1[21];

    sub_1D1E6706C();

    if ((*(v6 + 88))(v4, v5) == *MEMORY[0x1E69E93E8])
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[21] + 8))(v1[23], v1[20]);
      v7 = "";
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v9, "actionSetExecution", v7, v8, 2u);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  v10 = v1[32];
  v11 = v1[27];
  v12 = v1[24];

  v10(v11, v12);

  v13 = v1[1];

  return v13();
}

uint64_t sub_1D1BE9728(uint64_t a1)
{
  swift_willThrow();
  v2 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v3 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {
    v4 = v1[21];
    v5 = v1[22];
    v6 = v1[20];

    sub_1D1E6706C();

    if ((*(v4 + 88))(v5, v6) == *MEMORY[0x1E69E93E8])
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[21] + 8))(v1[22], v1[20]);
      v7 = "";
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v9, "actionSetExecution", v7, v8, 2u);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  v10 = v1[32];
  v11 = v1[26];
  v12 = v1[24];

  v10(v11, v12);
  swift_willThrow();

  v13 = v1[1];

  return v13();
}

uint64_t sub_1D1BE991C(double a1)
{
  *(v1 + 32) = a1;
  v2 = sub_1D1E68A4C();
  *(v1 + 40) = v2;
  *(v1 + 48) = *(v2 - 8);
  *(v1 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE99DC, 0, 0);
}

uint64_t sub_1D1BE99DC()
{
  v1 = sub_1D1E693AC();
  v3 = v2;
  sub_1D1E6912C();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1D1BE9AB8;

  return sub_1D1A01910(v1, v3, 0, 0, 1);
}

uint64_t sub_1D1BE9AB8()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  (*(v2[6] + 8))(v2[7], v2[5]);
  if (v0)
  {
    v3 = sub_1D1B0BC6C;
  }

  else
  {
    v3 = sub_1D1BE9C20;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1BE9C20()
{
  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EC64A290);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D16EC000, v2, v3, "actionSet execution timeout has been hit", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  type metadata accessor for HMError(0);
  *(v0 + 24) = 8;
  sub_1D1CD8538(MEMORY[0x1E69E7CC0]);
  sub_1D1BED2E4();
  sub_1D1E6654C();
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D1BE9D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a1;
  v7[15] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v7[18] = swift_task_alloc();
  v11 = sub_1D1E66A7C();
  v7[19] = v11;
  v7[20] = *(v11 - 8);
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = type metadata accessor for StateSnapshot.UpdateType(0);
  v7[24] = swift_task_alloc();
  v12 = swift_task_alloc();
  v7[25] = v12;
  *v12 = v7;
  v12[1] = sub_1D1BE9F10;

  return sub_1D1BEA9D8(a5, a6, a7);
}

uint64_t sub_1D1BE9F10()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1D1BEA4EC;
  }

  else
  {
    v2 = sub_1D1BEA024;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1BEA024()
{
  v1 = v0[24];
  v2 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF8, &qword_1D1E96540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v2;
  *(inited + 40) = 0;
  v4 = v2;
  v5 = sub_1D18DA708(inited);
  swift_setDeallocating();
  sub_1D1741A30(inited + 32, &unk_1EC649E00, &unk_1D1E96548);
  *v1 = v5;
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_1D1BEA178;
  v7 = v0[24];

  return sub_1D1AB6894(v7, 0, 0, 0, 1);
}

uint64_t sub_1D1BEA178(uint64_t a1)
{
  v2 = *(*v1 + 192);
  *(*v1 + 224) = a1;

  sub_1D1BECDC4(v2, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1BEA2AC, 0, 0);
}

uint64_t sub_1D1BEA2AC()
{
  v1 = *(v0 + 224);
  v2 = [*(v0 + 136) uniqueIdentifier];
  sub_1D1E66A5C();

  v3 = *(v0 + 176);
  if (*(v1 + 16))
  {
    v4 = sub_1D1742188();
    v5 = *(v0 + 176);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    if (v8)
    {
      v9 = v4;
      v10 = *(v0 + 112);
      v11 = *(*(v0 + 224) + 56);
      v12 = type metadata accessor for StateSnapshot(0);
      v13 = *(v12 - 8);
      sub_1D1BED4F0(v11 + *(v13 + 72) * v9, v10, type metadata accessor for StateSnapshot);
      (*(v7 + 8))(v5, v6);

      v14 = 0;
      goto LABEL_7;
    }

    (*(v7 + 8))(v5, v6);
  }

  else
  {
    v15 = *(v0 + 152);
    v16 = *(v0 + 160);

    (*(v16 + 8))(v3, v15);
  }

  v12 = type metadata accessor for StateSnapshot(0);
  v13 = *(v12 - 8);
  v14 = 1;
LABEL_7:
  (*(v13 + 56))(*(v0 + 112), v14, 1, v12);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D1BEA4EC()
{
  v1 = v0[24];
  v2 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF8, &qword_1D1E96540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v2;
  *(inited + 40) = 16386;
  v4 = v2;
  v5 = sub_1D18DA708(inited);
  swift_setDeallocating();
  sub_1D1741A30(inited + 32, &unk_1EC649E00, &unk_1D1E96548);
  *v1 = v5;
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  v0[29] = v6;
  *v6 = v0;
  v6[1] = sub_1D1BEA644;
  v7 = v0[24];

  return sub_1D1AB6894(v7, 0, 0, 0, 1);
}

uint64_t sub_1D1BEA644(uint64_t a1)
{
  v2 = *(*v1 + 192);
  *(*v1 + 240) = a1;

  sub_1D1BECDC4(v2, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1BEA778, 0, 0);
}

uint64_t sub_1D1BEA778()
{
  v1 = *(v0 + 240);
  v2 = [*(v0 + 136) uniqueIdentifier];
  sub_1D1E66A5C();

  v3 = *(v0 + 168);
  if (*(v1 + 16))
  {
    v4 = sub_1D1742188();
    v6 = *(v0 + 160);
    v5 = *(v0 + 168);
    v7 = *(v0 + 152);
    if (v8)
    {
      v9 = v4;
      v10 = *(v0 + 144);
      v11 = *(*(v0 + 240) + 56);
      v12 = type metadata accessor for StateSnapshot(0);
      v13 = *(v12 - 8);
      sub_1D1BED4F0(v11 + *(v13 + 72) * v9, v10, type metadata accessor for StateSnapshot);
      (*(v6 + 8))(v5, v7);

      v14 = 0;
      goto LABEL_7;
    }

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v15 = *(v0 + 152);
    v16 = *(v0 + 160);

    (*(v16 + 8))(v3, v15);
  }

  v12 = type metadata accessor for StateSnapshot(0);
  v13 = *(v12 - 8);
  v14 = 1;
LABEL_7:
  v17 = *(v0 + 144);
  (*(v13 + 56))(v17, v14, 1, v12);
  sub_1D1741A30(v17, &unk_1EC649E30, &unk_1D1E91250);
  swift_willThrow();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D1BEA9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1D1E66A7C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BEAA9C, 0, 0);
}

uint64_t sub_1D1BEAA9C()
{
  v62 = v0;
  v1 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  v2 = [*(v0 + 24) actions];
  *(v0 + 64) = sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
  *(v0 + 72) = sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
  v3 = sub_1D1E6816C();

  sub_1D1BDD3B8(v3);
  v5 = v4;
  *(v0 + 80) = 0;

  v61 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0; v6; i = v0)
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D3891EF0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v0 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v10 = [v8 characteristicType];
      v11 = sub_1D1E6781C();
      v1 = v12;

      v13._countAndFlagsBits = v11;
      v13._object = v1;
      CharacteristicKind.init(rawValue:)(v13);
      if (v59 != 174 && (v59 == 3 || v59 == 105))
      {
        sub_1D1E6896C();
        sub_1D1E689AC();
        sub_1D1E689BC();
        sub_1D1E6897C();
      }

      else
      {
      }

      ++v7;
      if (v0 == v6)
      {
        v14 = v61;
        v0 = i;
        v1 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v6 = sub_1D1E6873C();
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_20:
  *(v0 + 88) = v14;

  v15 = swift_allocObject();
  *(v0 + 96) = v15;
  v16 = MEMORY[0x1E69E7CC0];
  *(v15 + 16) = sub_1D18D7C70(MEMORY[0x1E69E7CC0]);
  *(v15 + 24) = 0;
  *(v15 + 32) = 2;
  if ((v14 & 0x8000000000000000) == 0 && (v14 & 0x4000000000000000) == 0)
  {
    v17 = *(v14 + 16);
    *(v0 + 104) = v17;
    if (v17)
    {
      goto LABEL_23;
    }

LABEL_42:
    v29 = *(v0 + 24);

    v30 = [v29 v1[108]];
    v31 = sub_1D1E6816C();

    sub_1D1BDD65C(v31);
    v33 = v32;

    v61 = v16;
    if (v33 >> 62)
    {
      goto LABEL_57;
    }

    for (j = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1D1E6873C())
    {
      v35 = 0;
      v0 = v33 & 0xC000000000000001;
      while (1)
      {
        if (v0)
        {
          v36 = MEMORY[0x1D3891EF0](v35, v33);
        }

        else
        {
          if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_56;
          }

          v36 = *(v33 + 8 * v35 + 32);
        }

        v37 = v36;
        v38 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if ([v36 state] == 1)
        {
          sub_1D1E6896C();
          sub_1D1E689AC();
          sub_1D1E689BC();
          sub_1D1E6897C();
        }

        else
        {
        }

        ++v35;
        if (v38 == j)
        {
          v39 = v61;
          v0 = i;
          goto LABEL_59;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      ;
    }

    v39 = MEMORY[0x1E69E7CC0];
LABEL_59:

    v60 = MEMORY[0x1E69E7CD0];
    if ((v39 & 0x8000000000000000) != 0 || (v39 & 0x4000000000000000) != 0)
    {
      goto LABEL_73;
    }

    for (k = *(v39 + 16); k; k = sub_1D1E6873C())
    {
      v41 = 0;
      while (1)
      {
        if ((v39 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x1D3891EF0](v41, v39);
        }

        else
        {
          if (v41 >= *(v39 + 16))
          {
            goto LABEL_72;
          }

          v42 = *(v39 + 8 * v41 + 32);
        }

        v43 = v42;
        v0 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        v44 = [v42 mediaProfiles];
        sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
        sub_1D1771944(&qword_1EC642FC0, &qword_1EC642FB8, 0x1E696CBF0);
        sub_1D1E6816C();

        v45 = objc_allocWithZone(MEMORY[0x1E696CBE8]);
        v46 = sub_1D1E6815C();

        v47 = [v45 initWithMediaProfiles:v46 playbackState:2 volume:0];

        sub_1D1768400(&v61, v47);
        ++v41;
        v48 = v0 == k;
        v0 = i;
        if (v48)
        {
          v49 = v60;
          goto LABEL_75;
        }
      }

      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      ;
    }

    v49 = MEMORY[0x1E69E7CD0];
LABEL_75:
    *(v0 + 144) = v49;
    v50 = *(v0 + 96);
    v51 = *(v0 + 32);
    v52 = *(v0 + 16);

    v53 = swift_task_alloc();
    *(v0 + 152) = v53;
    v53[2] = v52;
    v53[3] = v50;
    v53[4] = v49;
    v53[5] = v51;
    v54 = swift_task_alloc();
    *(v0 + 160) = v54;
    *v54 = v0;
    v54[1] = sub_1D1BEB9A8;
    v55 = MEMORY[0x1E69E7CA8] + 8;
    v64 = MEMORY[0x1E69E7CA8] + 8;
    v56 = MEMORY[0x1E69E7CA8] + 8;
    v57 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DD58](v54, v55, v56, 0, 0, &unk_1D1EA03C0, v53, v57);
  }

LABEL_41:
  v28 = sub_1D1E6873C();
  *(v0 + 104) = v28;
  if (!v28)
  {
    goto LABEL_42;
  }

LABEL_23:
  v18 = 0;
  while (1)
  {
    v19 = *(v0 + 88);
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1D3891EF0](v18);
    }

    else
    {
      if (v18 >= *(v19 + 16))
      {
        goto LABEL_40;
      }

      v20 = *(v19 + 8 * v18 + 32);
    }

    v21 = v20;
    v22 = v18 + 1;
    *(v0 + 112) = v20;
    *(v0 + 120) = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (sub_1D1E67F7C())
    {
      break;
    }

    v23 = [v21 service];
    *(v0 + 128) = v23;
    if (v23)
    {
      v27 = swift_task_alloc();
      *(v0 + 136) = v27;
      *v27 = v0;
      v27[1] = sub_1D1BEB23C;

      return sub_1D1BDD8E0();
    }

    v24 = *(v0 + 104);

    ++v18;
    if (v22 == v24)
    {
      goto LABEL_42;
    }
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1D1BEB23C(char a1)
{
  *(*v1 + 176) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BEB33C, 0, 0);
}

uint64_t sub_1D1BEB33C()
{
  v56 = v1;
  v2 = *(v1 + 176);
  if (v2 == 2)
  {
    v3 = v1[16];

LABEL_9:
    goto LABEL_10;
  }

  v3 = v1[16];
  v4 = v1[14];
  if ((v2 & 1) == 0)
  {

    goto LABEL_9;
  }

  v5 = v1[12];
  v6 = v1[6];
  v0 = v1[7];
  v7 = v53[5];
  v8 = [v1[14] characteristicType];
  v9 = sub_1D1E6781C();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  CharacteristicKind.init(rawValue:)(v12);
  if (v55 == 174)
  {
    v13 = 0;
  }

  else
  {
    v13 = v55;
  }

  v14 = [v3 uniqueIdentifier];
  sub_1D1E66A5C();

  sub_1D1BECA54(0, v13, v0, (v5 + 16));
  v1 = v53;
  (*(v6 + 8))(v0, v7);
LABEL_10:
  v15 = v1[15];
  if (v15 == v1[13])
  {
LABEL_11:
    v16 = v1[3];

    v17 = [v16 actions];
    v18 = sub_1D1E6816C();

    sub_1D1BDD65C(v18);
    v0 = v19;

    v55 = MEMORY[0x1E69E7CC0];
    if (v0 >> 62)
    {
      goto LABEL_43;
    }

    for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
    {
      v21 = 0;
      while (1)
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1D3891EF0](v21, v0);
        }

        else
        {
          if (v21 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v22 = *(v0 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if ([v22 state] == 1)
        {
          sub_1D1E6896C();
          sub_1D1E689AC();
          sub_1D1E689BC();
          sub_1D1E6897C();
        }

        else
        {
        }

        ++v21;
        if (v24 == i)
        {
          v30 = v55;
          goto LABEL_45;
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
      ;
    }

    v30 = MEMORY[0x1E69E7CC0];
LABEL_45:

    v54 = MEMORY[0x1E69E7CD0];
    v34 = v53;
    if ((v30 & 0x8000000000000000) != 0 || (v30 & 0x4000000000000000) != 0)
    {
      goto LABEL_58;
    }

    for (j = *(v30 + 16); j; j = sub_1D1E6873C())
    {
      v36 = 0;
      v34 = 0x1E696CBF0;
      while (1)
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x1D3891EF0](v36, v30);
        }

        else
        {
          if (v36 >= *(v30 + 16))
          {
            goto LABEL_57;
          }

          v37 = *(v30 + 8 * v36 + 32);
        }

        v38 = v37;
        v39 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        v40 = [v37 mediaProfiles];
        sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
        sub_1D1771944(&qword_1EC642FC0, &qword_1EC642FB8, 0x1E696CBF0);
        sub_1D1E6816C();

        v41 = objc_allocWithZone(MEMORY[0x1E696CBE8]);
        v42 = sub_1D1E6815C();

        v43 = [v41 initWithMediaProfiles:v42 playbackState:2 volume:0];

        sub_1D1768400(&v55, v43);
        ++v36;
        if (v39 == j)
        {
          v44 = v54;
          v34 = v53;
          goto LABEL_60;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      ;
    }

    v44 = MEMORY[0x1E69E7CD0];
LABEL_60:
    v34[18] = v44;
    v45 = v34[12];
    v46 = v34[4];
    v47 = v34[2];

    v48 = swift_task_alloc();
    v34[19] = v48;
    v48[2] = v47;
    v48[3] = v45;
    v48[4] = v44;
    v48[5] = v46;
    v49 = swift_task_alloc();
    v34[20] = v49;
    *v49 = v34;
    v49[1] = sub_1D1BEB9A8;
    v50 = MEMORY[0x1E69E7CA8] + 8;
    v58 = MEMORY[0x1E69E7CA8] + 8;
    v51 = MEMORY[0x1E69E7CA8] + 8;
    v52 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DD58](v49, v50, v51, 0, 0, &unk_1D1EA03C0, v48, v52);
  }

  else
  {
    while (1)
    {
      v25 = v1[11];
      if ((v25 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1D3891EF0](v15);
      }

      else
      {
        if (v15 >= *(v25 + 16))
        {
          goto LABEL_42;
        }

        v26 = *(v25 + 8 * v15 + 32);
      }

      v27 = v26;
      v0 = v15 + 1;
      v1[14] = v26;
      v1[15] = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_41;
      }

      if (sub_1D1E67F7C())
      {
        break;
      }

      v28 = [v27 service];
      v1[16] = v28;
      if (v28)
      {
        v33 = swift_task_alloc();
        v1[17] = v33;
        *v33 = v1;
        v33[1] = sub_1D1BEB23C;

        return sub_1D1BDD8E0();
      }

      v29 = v53[13];

      ++v15;
      v1 = v53;
      if (v0 == v29)
      {
        goto LABEL_11;
      }
    }

    v31 = v1[1];

    return v31();
  }
}

uint64_t sub_1D1BEB9A8()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1D1BEBB38;
  }

  else
  {

    v2 = sub_1D1BEBACC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1BEBACC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1BEBB38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1BEBBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v6[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BEBC68, 0, 0);
}

uint64_t sub_1D1BEBC68()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  v5 = sub_1D1E67E7C();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v2;

  sub_1D1A01DDC(v1, &unk_1D1EA03D0, v7);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (!sub_1D1E6873C())
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v0[5] + 16))
  {
LABEL_3:
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[5];
    v6(v8, 1, 1, v5);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    v11[5] = v10;
    v12 = v9;

    sub_1D1A01DDC(v8, &unk_1D1EA03E0, v11);
    sub_1D1741A30(v8, &unk_1EC6442C0, &qword_1D1E741A0);
  }

LABEL_4:
  v13 = swift_task_alloc();
  v0[8] = v13;
  *v13 = v0;
  v13[1] = sub_1D1BEBEA4;

  return sub_1D1A047E0(0, 0);
}

uint64_t sub_1D1BEBEA4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D1BEBFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646080, &qword_1D1E7E488);
  v5[10] = swift_task_alloc();
  v5[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BEC08C, 0, 0);
}

uint64_t sub_1D1BEC08C()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *(v0 + 40) = *(v1 + 16);
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;

  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_1D1BEC178;
  v5 = *(v0 + 80);

  return HomeState.Stream.write(characteristicValueSet:timeout:)(v5, (v0 + 40), 0, 1);
}

uint64_t sub_1D1BEC178()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1BEC290, 0, 0);
}

uint64_t sub_1D1BEC290()
{
  v1 = v0[10];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646088, &qword_1D1E7E4B8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[12];
    sub_1D1741A30(v1, &qword_1EC646080, &qword_1D1E7E488);
    v4 = type metadata accessor for StateSnapshot(0);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    sub_1D1741A30(v3, &unk_1EC649E30, &unk_1D1E91250);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = *(v1 + *(v2 + 48));
    v0[14] = v7;
    v8 = swift_task_alloc();
    v0[15] = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    *v8 = v0;
    v8[1] = sub_1D1BEC46C;
    v11 = v0[11];
    v10 = v0[12];
    v12 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v10, v7, v11, v9, v12);
  }
}

uint64_t sub_1D1BEC46C()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1D1BEC630;
  }

  else
  {
    sub_1D1741A30(*(v2 + 96), &unk_1EC649E30, &unk_1D1E91250);

    v3 = sub_1D1BEC5A4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1BEC5A4()
{
  sub_1D1BECDC4(*(v0 + 80), type metadata accessor for StateSnapshot);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1BEC630()
{
  v1 = *(v0 + 80);

  sub_1D1BECDC4(v1, type metadata accessor for StateSnapshot);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1BEC6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D1BEC6E8, 0, 0);
}

uint64_t sub_1D1BEC6E8()
{
  v1 = v0[18];
  sub_1D1BFAAD8(v0[19]);
  sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
  sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
  v2 = sub_1D1E6815C();
  v0[20] = v2;

  v0[2] = v0;
  v0[3] = sub_1D1BEC870;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_85;
  v0[14] = v3;
  [v1 executeActions:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1BEC870()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1D1BEC9E4;
  }

  else
  {
    v2 = sub_1D1BEC980;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1BEC980()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1BEC9E4(uint64_t a1)
{
  v2 = *(v1 + 160);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1D1BECA54(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20[3] = MEMORY[0x1E69E6370];
  LOBYTE(v20[0]) = a1;
  if (!*(*a4 + 16) || (sub_1D1742188(), (v12 & 1) == 0))
  {
    v13 = sub_1D18D7C94(MEMORY[0x1E69E7CC0]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19[0] = *a4;
    sub_1D1752B8C(v13, a3, isUniquelyReferenced_nonNull_native);
    *a4 = v19[0];
  }

  (*(v9 + 16))(v11, a3, v8);
  v15 = sub_1D1C76E38(v19);
  if (*v16)
  {
    sub_1D1741970(v20, v18);
    sub_1D1B0CE00(v18, a2);
  }

  (v15)(v19, 0);
  (*(v9 + 8))(v11, v8);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_1D1BECC0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20[3] = MEMORY[0x1E69E6530];
  v20[0] = a1;
  if (!*(*a4 + 16) || (sub_1D1742188(), (v12 & 1) == 0))
  {
    v13 = sub_1D18D7C94(MEMORY[0x1E69E7CC0]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19[0] = *a4;
    sub_1D1752B8C(v13, a3, isUniquelyReferenced_nonNull_native);
    *a4 = v19[0];
  }

  (*(v9 + 16))(v11, a3, v8);
  v15 = sub_1D1C76E38(v19);
  if (*v16)
  {
    sub_1D1741970(v20, v18);
    sub_1D1B0CE00(v18, a2);
  }

  (v15)(v19, 0);
  (*(v9 + 8))(v11, v8);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_1D1BECDC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1BECE24(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D17C4CF0;

  return sub_1D1BE45C4(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_1D1BECEFC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1BE6318(a1, a2, v6, v7, v8);
}

uint64_t sub_1D1BECFC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D1BE66F8(a1, v4, v5, v6);
}

uint64_t sub_1D1BED074(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1BE76DC(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1BED160(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1BE4BC0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D1BED228()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D17C4CF0;

  return sub_1D1BE5EA8(v2);
}

unint64_t sub_1D1BED2E4()
{
  result = qword_1EC6428A0;
  if (!qword_1EC6428A0)
  {
    type metadata accessor for HMError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6428A0);
  }

  return result;
}

uint64_t sub_1D1BED33C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1BED3A4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for StaticActionSet(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D17C4CF0;

  return sub_1D1BE9D8C(a1, v9, v10, v1 + v6, v11, v12, v13);
}

uint64_t sub_1D1BED4F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1BED558(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1D17C4CF0;

  return sub_1D1BEBBC4(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1D1BED620(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1BEBFB4(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_30Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1BED728(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1BEC6C8(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1BED7E8(uint64_t a1)
{
  v3 = *(type metadata accessor for StaticActionSet(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = v1 + v6;
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v1 + v7);
  v14 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_1D17C4CF0;

  return sub_1D1BE7F24(a1, v8, v9, v1 + v4, v11, v12, v13, v14);
}

uint64_t sub_1D1BED95C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1D17C4BFC;

  return sub_1D1BE8A24(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_1D1BEDA28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1BE9070(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1BEDAE8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D17C4CF0;

  return sub_1D1BE991C(v2);
}

uint64_t StaticActionSet.toggle(options:context:)(uint64_t a1, uint64_t *a2, _OWORD *a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  *(v4 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646090, &qword_1D1E7E4C8);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646098, &unk_1D1E7E4D0);
  v7 = swift_task_alloc();
  v8 = *a2;
  *(v4 + 56) = v7;
  *(v4 + 64) = v8;
  v9 = a3[1];
  *(v4 + 72) = *a3;
  *(v4 + 88) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D1BEDCBC, 0, 0);
}

uint64_t sub_1D1BEDCBC()
{
  if ((v0[8] & 0x400) != 0 && v0[10] >= 2uLL && v0[12])
  {

    v1 = swift_task_alloc();
    v0[13] = v1;
    *v1 = v0;
    v1[1] = sub_1D1BEDE00;

    return sub_1D1E387D4();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[23] = v3;
    *v3 = v0;
    v3[1] = sub_1D1BEE654;
    v4 = v0[2];

    return StaticActionSet.toggle()(v4);
  }
}

uint64_t sub_1D1BEDE00(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BEDF00, 0, 0);
}

uint64_t sub_1D1BEDF00()
{
  v1 = *(v0 + 112);
  if (v1 && (v2 = StaticActionSet.get(from:)(*(v0 + 112)), *(v0 + 120) = v2, v1, v2))
  {
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v13 = *(v0 + 72);
    v5 = *(v0 + 56);
    type metadata accessor for StaticActionSet(0);
    v6 = [objc_opt_self() executeRequestWithActionSet_];
    *(v0 + 128) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D1E73FA0;
    *(v7 + 32) = v6;
    *(v5 + 8) = v13;
    *(v5 + 24) = v4;
    *(v5 + 32) = v3;
    *v5 = v7;
    *(v5 + 40) = 1;
    v8 = qword_1EC642488;
    v9 = v6;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D1E6701C();
    __swift_project_value_buffer(v10, qword_1EC6BE2B8);
    sub_1D1E66FFC();
    sub_1D1E66FAC();
    if (qword_1EE07AC80 != -1)
    {
      swift_once();
    }

    *(v0 + 136) = qword_1EE07B4E0;
    type metadata accessor for WidgetDataModel();
    *(v0 + 144) = swift_initStaticObject();

    return MEMORY[0x1EEE6DFA0](sub_1D1BEE17C, 0, 0);
  }

  else
  {

    sub_1D1BFA824();
    swift_allocError();
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1D1BEE17C()
{
  sub_1D1741A90(v0[7], v0[5], &qword_1EC646098, &unk_1D1E7E4D0);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_1D1BEE240;

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_1D1BEE240(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[20] = a1;

  v4 = swift_task_alloc();
  v2[21] = v4;
  *v4 = v3;
  v4[1] = sub_1D1BEE3BC;
  v5 = v2[5];
  v6 = v2[2];
  v7.n128_u64[0] = 20.0;

  return (sub_1D1BF8FC0)(v6, v5, v7);
}

uint64_t sub_1D1BEE3BC()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1D1BEE5D8;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 136);
    v3 = sub_1D1BEE4FC;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1D1BEE518()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 16);

  v3 = type metadata accessor for StateSnapshot(0);
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);

  v4 = *(v0 + 8);

  return v4();
}