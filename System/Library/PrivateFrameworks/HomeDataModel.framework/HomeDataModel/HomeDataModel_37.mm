uint64_t sub_1D19F96C8()
{
  sub_1D17419CC(*(v0 + 104), v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 112);
    v2 = *(v0 + 144);
    v3 = *(v0 + 148);
    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    *(v4 + 16) = v2;
    *(v4 + 20) = v3;
    *(v4 + 24) = v1;
    v5 = swift_task_alloc();
    *(v0 + 128) = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
    *v5 = v0;
    v5[1] = sub_1D19F7E3C;
    v7 = *(v0 + 96);

    return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000010, 0x80000001D1EC2AC0, sub_1D19FA86C, v4, v6);
  }

  else
  {
    sub_1D17419CC(*(v0 + 104), v0 + 56);
    sub_1D19EDF88();
    swift_allocError();
    v9 = v8;
    v10 = swift_unknownObjectRetain();
    sub_1D19F67F8(v10, &off_1EEC1E228, (v0 + 56), v9);
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

void sub_1D19F98B8(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648D68, &qword_1D1E90DF8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &aBlock - v8;
  if (BYTE4(a2) == 1)
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E696F5E0]) init];
    v15 = sub_1D1E692AC();
    [v10 setEnhancedHue_];

    v16 = sub_1D1E691BC();
    [v10 setSaturation_];

    (*(v7 + 16))(v9, a1, v6);
    v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v18 = swift_allocObject();
    (*(v7 + 32))(v18 + v17, v9, v6);
    v27 = sub_1D19FC8B4;
    v28 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = sub_1D1C40BA8;
    v26 = &block_descriptor_31;
    v14 = _Block_copy(&aBlock);

    [a3 enhancedMoveToHueAndSaturationWithParams:v10 expectedValues:0 expectedValueInterval:0 completion:v14];
    goto LABEL_5;
  }

  if (BYTE4(a2) == 3)
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E696F5F0]) init];
    v11 = sub_1D1E692AC();
    [v10 setColorTemperatureMireds_];

    (*(v7 + 16))(v9, a1, v6);
    v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v13 = swift_allocObject();
    (*(v7 + 32))(v13 + v12, v9, v6);
    v27 = sub_1D19FC8B4;
    v28 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = sub_1D1C40BA8;
    v26 = &block_descriptor_285;
    v14 = _Block_copy(&aBlock);

    [a3 moveToColorTemperatureWithParams:v10 expectedValues:0 expectedValueInterval:0 completion:v14];
LABEL_5:
    _Block_release(v14);

    return;
  }

  v26 = &type metadata for StaticColorControlCluster.Command;
  v27 = sub_1D18FA3FC();
  LODWORD(aBlock) = a2;
  BYTE4(aBlock) = BYTE4(a2);
  sub_1D19EDF88();
  v19 = swift_allocError();
  v21 = v20;
  v22 = swift_unknownObjectRetain();
  sub_1D19F67F8(v22, &off_1EEC1E228, &aBlock, v21);
  aBlock = v19;
  sub_1D1E67D5C();
}

uint64_t sub_1D19F9C90(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648D68, &qword_1D1E90DF8);
    return sub_1D1E67D5C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648D68, &qword_1D1E90DF8);
    return sub_1D1E67D6C();
  }
}

unint64_t sub_1D19F9D60(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3)
{
  *&v5[0] = a2;
  v6 = 2;
  sub_1D1B0DAF8(v5, 0);
  *&v5[0] = a3;
  v6 = 2;
  return sub_1D1B0DAF8(v5, 1);
}

uint64_t sub_1D19F9E18(void *a1, int a2, void *a3, uint64_t a4, void *a5, void *aBlock, uint64_t a7, uint64_t a8, void (*a9)(id, uint64_t, uint64_t, uint64_t))
{
  v14 = _Block_copy(aBlock);
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    a4 = sub_1D1E67C1C();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = a3;
  v17 = a5;
  v18 = a1;
  a9(v16, a4, a8, v15);
}

void sub_1D19FA044(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D19FA08C(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel23MockColorControlCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1D19FA0BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return sub_1D19F96A4(a1, a2);
}

void sub_1D19FA29C(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D19FA2E4(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel22MockPowerSourceCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

void sub_1D19FA4EC(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D19FA534(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel19MockDoorLockCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1D19FA564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = v4;
  v5[9] = a4;
  v5[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D19FA588, 0, 0);
}

uint64_t sub_1D19FA588()
{
  v1 = v0[9];
  sub_1D17419CC(v0[7], (v0 + 2));
  sub_1D19EDF88();
  swift_allocError();
  v3 = v2;
  v4 = swift_unknownObjectRetain();
  sub_1D19F67F8(v4, v1, v0 + 2, v3);
  swift_willThrow();
  v5 = v0[1];

  return v5();
}

id sub_1D19FA690(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1D19FA6F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void, void))
{

  a5(*(a1 + *a4), *(a1 + *a4 + 8));

  JUMPOUT(0x1D3893750);
}

void sub_1D19FA7F4(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D19FA83C(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel24MockAppleDoorLockCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_1D19FA910(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1D19FAEA0(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1D19FAA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(void))
{
  v36 = a4;
  v37 = a8;
  v30 = a2;
  v31 = a7;
  v32 = a1;
  v9 = a6(0);
  v35 = *(v9 - 8);
  result = MEMORY[0x1EEE9AC00](v9 - 8);
  v33 = 0;
  v34 = &v30 - v11;
  v12 = 0;
  v38 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v39 = (v18 - 1) & v18;
LABEL_11:
    v23 = v37;
    v24 = v34;
    v25 = v20 | (v12 << 6);
    sub_1D19FC720(*(v38 + 48) + *(v35 + 72) * v25, v34, v37);
    v26 = v40;
    v27 = v36(v24);
    result = sub_1D19FC788(v24, v23);
    v40 = v26;
    if (v26)
    {
      return result;
    }

    v18 = v39;
    if (v27)
    {
      *(v32 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
LABEL_16:
        v29 = v38;

        return v31(v32, v30, v33, v29);
      }
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_16;
    }

    v22 = *(v14 + 8 * v12);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v39 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D19FAD58(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v20 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v21 = *(*(a3 + 48) + v17);
    result = a4(&v21);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v20 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_1D19E119C(v20, a2, v7, a3);
      }
    }
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
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1D19FAEA0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_1D19E16A8(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1D19FB048(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v20 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v21 = *(*(a3 + 48) + v17);
    result = a4(&v21);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v20 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_1D19E1A90(v20, a2, v7, a3);
      }
    }
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
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D19FB190(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v35 = a4;
  v29 = a2;
  v30 = a1;
  v38 = sub_1D1E66A7C();
  result = MEMORY[0x1EEE9AC00](v38);
  v36 = a3;
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v33 = v7 + 16;
  v34 = v7;
  v31 = 0;
  v32 = (v7 + 8);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = v17 | (v9 << 6);
    v19 = v38;
    v20 = v37;
LABEL_11:
    (*(v34 + 16))(v20, *(v36 + 48) + *(v34 + 72) * v18, v19);
    v23 = v35(v20);
    v24 = v20;
    if (v4)
    {
      return (*v32)(v20, v19);
    }

    v25 = v23;
    result = (*v32)(v24, v19);
    if (v25)
    {
      *(v30 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_16:
        v27 = v36;

        return sub_1D19E13B0(v30, v29, v31, v27);
      }
    }
  }

  v21 = v9;
  v19 = v38;
  v20 = v37;
  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v22 = *(v11 + 8 * v9);
    ++v21;
    if (v22)
    {
      v15 = (v22 - 1) & v22;
      v18 = __clz(__rbit64(v22)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D19FB4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v29 = a2;
  v30 = a8;
  v36 = a4;
  v37 = a6;
  v31 = a1;
  v38 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v35 = *(v9 - 8);
  result = MEMORY[0x1EEE9AC00](v9 - 8);
  v34 = &v29 - v11;
  v12 = 0;
  v39 = a3;
  v13 = *(a3 + 56);
  v32 = 0;
  v33 = a3 + 56;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v40 = (v16 - 1) & v16;
LABEL_11:
    v21 = v38;
    v22 = v34;
    v23 = v18 | (v12 << 6);
    v24 = v37;
    sub_1D1741C08(*(v39 + 48) + *(v35 + 72) * v23, v34, v37, v38);
    v25 = v41;
    v26 = v36(v22);
    result = sub_1D1741A30(v22, v24, v21);
    v41 = v25;
    if (v25)
    {
      return result;
    }

    v16 = v40;
    if (v26)
    {
      *(v31 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_16:
        v28 = v39;

        return v30(v31, v29, v32, v28);
      }
    }
  }

  v19 = v12;
  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v12 >= v17)
    {
      goto LABEL_16;
    }

    v20 = *(v33 + 8 * v12);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v40 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D19FB700(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC13HomeDataModel19MockIdentifyCluster_containingDevice);
  if (v3)
  {
    if (*(a1 + OBJC_IVAR____TtC13HomeDataModel19MockIdentifyCluster_lastKnownEndpointID + 2))
    {
      v4 = 0;
    }

    else
    {
      v4 = *(a1 + OBJC_IVAR____TtC13HomeDataModel19MockIdentifyCluster_lastKnownEndpointID);
    }

    v5 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedCommands;
    swift_beginAccess();
    v6 = *&v3[v5];
    v7 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v3[v5] = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_1D177EEB4(0, *(v6 + 2) + 1, 1, v6);
      *&v3[v5] = v6;
    }

    v10 = *(v6 + 2);
    v9 = *(v6 + 3);
    if (v10 >= v9 >> 1)
    {
      v6 = sub_1D177EEB4((v9 > 1), v10 + 1, 1, v6);
    }

    *(v6 + 2) = v10 + 1;
    v11 = &v6[8 * v10];
    *(v11 + 16) = v4;
    v11[34] = 10;
    *(v11 + 9) = 0;
    *&v3[v5] = v6;
    swift_endAccess();
  }

  return (*(a2 + 16))(a2, 0);
}

uint64_t sub_1D19FB838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v24 = a2;
    if (*(v4 + OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_lastKnownEndpointID + 2))
    {
      v10 = 0;
    }

    else
    {
      v10 = *(v4 + OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_lastKnownEndpointID);
    }

    v11 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedCommands;
    swift_beginAccess();
    v12 = *&v9[v11];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v9[v11] = v12;
    v14 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1D177EEB4(0, *(v12 + 2) + 1, 1, v12);
      *&v9[v11] = v12;
    }

    v16 = *(v12 + 2);
    v15 = *(v12 + 3);
    if (v16 >= v15 >> 1)
    {
      v12 = sub_1D177EEB4((v15 > 1), v16 + 1, 1, v12);
    }

    *(v12 + 2) = v16 + 1;
    v17 = &v12[8 * v16];
    *(v17 + 16) = v10;
    v17[34] = 11;
    *(v17 + 9) = 1;
    *&v9[v11] = v12;
    swift_endAccess();

    a3 = v14;
    a2 = v24;
  }

  v18 = *(v4 + OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_commandObserver);
  if (v18)
  {
    v19 = *(v4 + OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_commandObserver + 8);

    v18(1, a1, 1);
    sub_1D17169C0(v18, v19);
  }

  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    sub_1D19F6AB0(a1);
  }

  v22 = swift_allocObject();
  *(v22 + 16) = 1;
  sub_1D1A05F58(a2, a3, sub_1D19FC8B8, v22);
}

uint64_t sub_1D19FBA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v24 = a2;
    if (*(v4 + OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_lastKnownEndpointID + 2))
    {
      v10 = 0;
    }

    else
    {
      v10 = *(v4 + OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_lastKnownEndpointID);
    }

    v11 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedCommands;
    swift_beginAccess();
    v12 = *&v9[v11];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v9[v11] = v12;
    v14 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1D177EEB4(0, *(v12 + 2) + 1, 1, v12);
      *&v9[v11] = v12;
    }

    v16 = *(v12 + 2);
    v15 = *(v12 + 3);
    if (v16 >= v15 >> 1)
    {
      v12 = sub_1D177EEB4((v15 > 1), v16 + 1, 1, v12);
    }

    *(v12 + 2) = v16 + 1;
    v17 = &v12[8 * v16];
    *(v17 + 16) = v10;
    v17[34] = 11;
    *(v17 + 9) = 0;
    *&v9[v11] = v12;
    swift_endAccess();

    a3 = v14;
    a2 = v24;
  }

  v18 = *(v4 + OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_commandObserver);
  if (v18)
  {
    v19 = *(v4 + OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_commandObserver + 8);

    v18(0, a1, 0);
    sub_1D17169C0(v18, v19);
  }

  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    sub_1D19F6AB0(a1);
  }

  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  sub_1D1A05F58(a2, a3, sub_1D19FC8B8, v22);
}

uint64_t sub_1D19FBC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D19F86D0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v26 = a1;
    v27 = a2;
    if (*(v4 + OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_lastKnownEndpointID + 2))
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v4 + OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_lastKnownEndpointID);
    }

    v12 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedCommands;
    swift_beginAccess();
    v13 = *&v10[v12];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v10[v12] = v13;
    v15 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1D177EEB4(0, *(v13 + 2) + 1, 1, v13);
      *&v10[v12] = v13;
    }

    v17 = *(v13 + 2);
    v16 = *(v13 + 3);
    if (v17 >= v16 >> 1)
    {
      v13 = sub_1D177EEB4((v16 > 1), v17 + 1, 1, v13);
    }

    *(v13 + 2) = v17 + 1;
    v18 = &v13[8 * v17];
    *(v18 + 16) = v11;
    v18[34] = 11;
    *(v18 + 9) = 2;
    *&v10[v12] = v13;
    swift_endAccess();

    a3 = v15;
    a1 = v26;
    a2 = v27;
  }

  v19 = v8 ^ 1;
  v20 = *(v4 + OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_commandObserver);
  if (v20)
  {
    v21 = *(v4 + OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_commandObserver + 8);

    v20(2, a1, v19 & 1);
    sub_1D17169C0(v20, v21);
  }

  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    sub_1D19F6AB0(a1);
  }

  v24 = swift_allocObject();
  *(v24 + 16) = v19 & 1;
  sub_1D1A05F58(a2, a3, sub_1D19FC5B0, v24);
}

uint64_t sub_1D19FBE24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = [a1 level];
  v10 = [v9 unsignedCharValue];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v27 = a2;
    v28 = a4;
    if (*(v5 + OBJC_IVAR____TtC13HomeDataModel23MockLevelControlCluster_lastKnownEndpointID + 2))
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v5 + OBJC_IVAR____TtC13HomeDataModel23MockLevelControlCluster_lastKnownEndpointID);
    }

    v14 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedCommands;
    swift_beginAccess();
    v15 = *&v12[v14];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v12[v14] = v15;
    v17 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_1D177EEB4(0, *(v15 + 2) + 1, 1, v15);
      *&v12[v14] = v15;
    }

    v19 = *(v15 + 2);
    v18 = *(v15 + 3);
    if (v19 >= v18 >> 1)
    {
      v15 = sub_1D177EEB4((v18 > 1), v19 + 1, 1, v15);
    }

    *(v15 + 2) = v19 + 1;
    v20 = &v15[8 * v19];
    *(v20 + 16) = v13;
    v20[34] = 12;
    *(v20 + 9) = 0;
    *&v12[v14] = v15;
    swift_endAccess();

    a3 = v17;
    a2 = v27;
    a4 = v28;
  }

  v21 = *(v5 + OBJC_IVAR____TtC13HomeDataModel23MockLevelControlCluster_commandObserver);
  if (v21)
  {
    v22 = *(v5 + OBJC_IVAR____TtC13HomeDataModel23MockLevelControlCluster_commandObserver + 8);

    v21(0, a2, v10);
    sub_1D17169C0(v21, v22);
  }

  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    sub_1D19F6AB0(a2);
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v10;
  sub_1D1A05F88(a3, a4, sub_1D19FC558, v25);
}

uint64_t sub_1D19FC040(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = [a1 colorTemperatureMireds];
  v10 = [v9 unsignedShortValue];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v27 = a2;
    v28 = a4;
    if (*(v5 + OBJC_IVAR____TtC13HomeDataModel23MockColorControlCluster_lastKnownEndpointID + 2))
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v5 + OBJC_IVAR____TtC13HomeDataModel23MockColorControlCluster_lastKnownEndpointID);
    }

    v14 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedCommands;
    swift_beginAccess();
    v15 = *&v12[v14];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v12[v14] = v15;
    v17 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_1D177EEB4(0, *(v15 + 2) + 1, 1, v15);
      *&v12[v14] = v15;
    }

    v19 = *(v15 + 2);
    v18 = *(v15 + 3);
    if (v19 >= v18 >> 1)
    {
      v15 = sub_1D177EEB4((v18 > 1), v19 + 1, 1, v15);
    }

    *(v15 + 2) = v19 + 1;
    v20 = &v15[8 * v19];
    *(v20 + 16) = v13;
    v20[34] = 17;
    *(v20 + 9) = 10;
    *&v12[v14] = v15;
    swift_endAccess();

    a3 = v17;
    a2 = v27;
    a4 = v28;
  }

  v21 = *(v5 + OBJC_IVAR____TtC13HomeDataModel23MockColorControlCluster_commandObserver);
  if (v21)
  {
    v22 = *(v5 + OBJC_IVAR____TtC13HomeDataModel23MockColorControlCluster_commandObserver + 8);
    v29[3] = MEMORY[0x1E69E75F8];
    LOWORD(v29[0]) = v10;

    v21(10, a2, v29);
    sub_1D17169C0(v21, v22);
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    sub_1D19F6AB0(a2);
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v10;
  sub_1D1A05FB8(a3, a4, sub_1D19FC510, v25);
}

uint64_t sub_1D19FC278(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = [a1 enhancedHue];
  v11 = [v10 unsignedShortValue];

  v12 = [a1 saturation];
  v13 = [v12 unsignedShortValue];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v30 = v13;
    v31 = a4;
    if (*(v5 + OBJC_IVAR____TtC13HomeDataModel23MockColorControlCluster_lastKnownEndpointID + 2))
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v5 + OBJC_IVAR____TtC13HomeDataModel23MockColorControlCluster_lastKnownEndpointID);
    }

    v17 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedCommands;
    swift_beginAccess();
    v18 = *&v15[v17];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v15[v17] = v18;
    v20 = a2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_1D177EEB4(0, *(v18 + 2) + 1, 1, v18);
      *&v15[v17] = v18;
    }

    v22 = *(v18 + 2);
    v21 = *(v18 + 3);
    if (v22 >= v21 >> 1)
    {
      v18 = sub_1D177EEB4((v21 > 1), v22 + 1, 1, v18);
    }

    *(v18 + 2) = v22 + 1;
    v23 = &v18[8 * v22];
    *(v23 + 16) = v16;
    v23[34] = 17;
    *(v23 + 9) = 67;
    *&v15[v17] = v18;
    swift_endAccess();

    a4 = v31;
    a2 = v20;
    v13 = v30;
  }

  v24 = *(v5 + OBJC_IVAR____TtC13HomeDataModel23MockColorControlCluster_commandObserver);
  if (v24)
  {
    v25 = *(v5 + OBJC_IVAR____TtC13HomeDataModel23MockColorControlCluster_commandObserver + 8);
    v32[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648D70, &qword_1D1E90E00);
    LOWORD(v32[0]) = v11;
    WORD1(v32[0]) = v13;

    v24(67, a2, v32);
    sub_1D17169C0(v24, v25);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    sub_1D19F6AB0(a2);
  }

  v28 = swift_allocObject();
  *(v28 + 16) = v11;
  *(v28 + 18) = v13;
  sub_1D1A05FB8(a3, a4, sub_1D19FC504, v28);
}

unint64_t sub_1D19FC510()
{
  *&v2[0] = *(v0 + 16);
  v3 = 2;
  return sub_1D1B0DAF8(v2, 7);
}

unint64_t sub_1D19FC558()
{
  *&v2[0] = *(v0 + 16);
  v3 = 2;
  return sub_1D1B0DAF8(v2, 0);
}

unint64_t sub_1D19FC5B4()
{
  LOBYTE(v2) = *(v0 + 16);
  v3 = 0;
  return sub_1D1B0DAF8(&v2, 0);
}

uint64_t objectdestroyTm_5()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648D68, &qword_1D1E90DF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

unint64_t sub_1D19FC698()
{
  result = qword_1EC648D80;
  if (!qword_1EC648D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC648D78, &qword_1D1E90E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648D80);
  }

  return result;
}

uint64_t sub_1D19FC720(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D19FC788(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D19FC7E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D19FC830(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D19FC8C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_1D178D5B4(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1D1E6869C();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + 4 * result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_1D178D5B4((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 4 * v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1D1716920(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1D1716920(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1D19FCADC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_delegates;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648DF0, &qword_1D1E91108);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_unknownObjectWeakAssign();
  MEMORY[0x1D3891220](v3);
  if (*((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D1E67C5C();
  }

  sub_1D1E67CAC();
  return swift_endAccess();
}

uint64_t sub_1D19FCBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_mockEndpoints;
  swift_beginAccess();
  v7 = *&v4[v6];
  if (*(v7 + 16) && (v8 = sub_1D171D15C(a2), (v9 & 1) != 0))
  {
    v10 = (*(v7 + 56) + 16 * v8);
    v11 = *v10;
    v12 = v10[1];
    swift_bridgeObjectRetain_n();

    swift_endAccess();
    result = sub_1D1791518(v11, v12);
    v14 = 0;
    v15 = 1 << *(v11 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v11 + 64);
    v18 = (v15 + 63) >> 6;
    do
    {
      if (!v17)
      {
        while (1)
        {
          v19 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v19 >= v18)
          {

            return 0;
          }

          v17 = *(v11 + 64 + 8 * v19);
          ++v14;
          if (v17)
          {
            v14 = v19;
            goto LABEL_11;
          }
        }

        __break(1u);
        return result;
      }

LABEL_11:
      v17 &= v17 - 1;
      result = swift_dynamicCastUnknownClass();
    }

    while (!result);
    swift_unknownObjectRetain();

    v20 = swift_dynamicCastUnknownClass();
    if (v20)
    {
      ObjectType = swift_getObjectType();
      v22 = swift_conformsToProtocol2();
      if (!v22)
      {
        return v20;
      }

      v23 = v22;
      v24 = *(v22 + 72);
      swift_unknownObjectRetain();
      v25 = v4;
      v24(v4, ObjectType, v23);
      (*(v23 + 96))(a2, ObjectType, v23);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_endAccess();
    return 0;
  }

  return v20;
}

uint64_t sub_1D19FCDD8@<X0>(unsigned int a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  v57 = *(v7 + 16);
  v58 = v7;
  v9 = v57(v8, v7);
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  (*(v11 + 24))(v64, v10, v11);
  v12 = LOBYTE(v64[0]);
  v13 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedReads;
  swift_beginAccess();
  v55 = a1;
  if (!*(v4 + v13))
  {
    goto LABEL_6;
  }

  v14 = a1 | (v9 << 32) | (v12 << 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v61 = *(v4 + v13);
  v16 = v61;
  *(v4 + v13) = 0x8000000000000000;
  v17 = sub_1D171D848(v14, 0);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_38;
  }

  LOBYTE(v11) = v18;
  if (v16[3] >= v22)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    sub_1D1729400(v22, isUniquelyReferenced_nonNull_native);
    v16 = v61;
    v17 = sub_1D171D848(v14, 0);
    if ((v11 & 1) != (v23 & 1))
    {
      sub_1D1E690FC();
      __break(1u);
LABEL_6:
      v24 = 0;
      goto LABEL_12;
    }
  }

  *(v4 + v13) = v16;
  if (v11)
  {
    goto LABEL_10;
  }

LABEL_9:
  v25 = v17;
  sub_1D19DBA0C(v17, v14, 0, 0, v16);
  v17 = v25;
LABEL_10:
  while (1)
  {
    v26 = v16[7];
    v27 = *(v26 + 8 * v17);
    v21 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v21)
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    v54 = v17;
    sub_1D1739610();
    v17 = v54;
    v16 = v61;
    *(v4 + v13) = v61;
    if ((v11 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  *(v26 + 8 * v17) = v28;
  v24 = sub_1D17421C8;
LABEL_12:
  swift_endAccess();
  v29 = v57(v8, v58);
  v30 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_mockEndpoints;
  swift_beginAccess();
  v31 = *(v4 + v30);
  if (!*(v31 + 16) || (v32 = sub_1D171D15C(v29), (v33 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_21;
  }

  v34 = *(*(v31 + 56) + 16 * v32);
  swift_endAccess();
  v35 = a2[3];
  v36 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v35);
  v37 = *(v36 + 24);

  v37(v64, v35, v36);
  if (!*(v34 + 16) || (v38 = sub_1D171D278(LOBYTE(v64[0])), (v39 & 1) == 0))
  {

    goto LABEL_21;
  }

  v40 = *(*(v34 + 56) + 16 * v38 + 8);
  swift_unknownObjectRetain();

  ObjectType = swift_getObjectType();
  v42 = (*(v40 + 16))(ObjectType, v40);
  if (*(v42 + 16))
  {
    v43 = sub_1D171D4E0(v55);
    if (v44)
    {
      sub_1D17417AC(*(v42 + 56) + 40 * v43, v64);

LABEL_30:
      if (v55 == 65531)
      {
        v52 = sub_1D19F6A1C(ObjectType, v40);
        v53 = sub_1D19FC8C0(v52);

        *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646A50, &unk_1D1E910D0);
        swift_unknownObjectRelease();
        *a3 = v53;
        goto LABEL_34;
      }

      sub_1D1741C08(v64, v59, &qword_1EC648B70, &qword_1D1E90DF0);
      if (v60 != 255)
      {
        v61 = v59[0];
        v62 = v59[1];
        v63 = v60;
        sub_1D19F41AC(a3);
        swift_unknownObjectRelease();
        sub_1D17805D8(&v61);
        goto LABEL_34;
      }

      swift_unknownObjectRelease();
      sub_1D1741A30(v64, &qword_1EC648B70, &qword_1D1E90DF0);
      sub_1D1741A30(v59, &qword_1EC648B70, &qword_1D1E90DF0);
      goto LABEL_21;
    }
  }

  memset(v64, 0, sizeof(v64));
  v65 = -1;
  if (qword_1EC642288 != -1)
  {
    swift_once();
  }

  v46 = qword_1EC6BE130;
  if (!*(qword_1EC6BE130 + 16))
  {
    goto LABEL_30;
  }

  sub_1D171D4E0(v55);
  if ((v47 & 1) == 0)
  {
    goto LABEL_30;
  }

  if (*(v46 + 16))
  {
    v48 = sub_1D171D4E0(v55);
    if (v49)
    {
      sub_1D17417AC(*(v46 + 56) + 40 * v48, &v61);
      *(a3 + 24) = &type metadata for MockMatterAttributeValue;
      v50 = swift_allocObject();
      *a3 = v50;
      v51 = v62;
      *(v50 + 16) = v61;
      *(v50 + 32) = v51;
      *(v50 + 48) = v63;
      swift_unknownObjectRelease();
LABEL_34:
      sub_1D1741A30(v64, &qword_1EC648B70, &qword_1D1E90DF0);
      return sub_1D17169C0(v24, 0);
    }
  }

  swift_unknownObjectRelease();
  sub_1D1741A30(v64, &qword_1EC648B70, &qword_1D1E90DF0);
LABEL_21:
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return sub_1D17169C0(v24, 0);
}

uint64_t sub_1D19FD350@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2;
  v6 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedReads;
  swift_beginAccess();
  if (!*(v2 + v6))
  {
    goto LABEL_6;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  *&v177 = *(v4 + v6);
  *(v4 + v6) = 0x8000000000000000;
  v9 = sub_1D171D848(a1, 1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    goto LABEL_186;
  }

  LOBYTE(v3) = v10;
  if (v8[3] >= v14)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_195;
    }
  }

  else
  {
    sub_1D1729400(v14, isUniquelyReferenced_nonNull_native);
    v8 = v177;
    v9 = sub_1D171D848(a1, 1);
    if ((v3 & 1) != (v15 & 1))
    {
      sub_1D1E690FC();
      __break(1u);
LABEL_6:
      v143 = 0;
      goto LABEL_12;
    }
  }

  *(v4 + v6) = v8;
  if (v3)
  {
    goto LABEL_10;
  }

LABEL_9:
  v3 = v9;
  sub_1D19DBA0C(v9, a1, 1, 0, v8);

  v9 = v3;
LABEL_10:
  v16 = v8[7];
  v17 = *(v16 + 8 * v9);
  v13 = __OFADD__(v17, 1);
  v18 = v17 + 1;
  if (v13)
  {
    goto LABEL_187;
  }

  *(v16 + 8 * v9) = v18;
  v143 = sub_1D17421C8;
LABEL_12:
  swift_endAccess();
  v145 = *(a1 + 16);
  if (v145)
  {
    v19 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_mockEndpoints;
    swift_beginAccess();
    v20 = a1 + 32;
    v6 = 0;
    v3 = 0;
    v21 = 0;
    v22 = MEMORY[0x1E69E7CC8];
    v159 = v4;
    v152 = v19;
    v142 = a1 + 32;
    while (1)
    {
      v146 = v21;
      v23 = (v20 + 12 * v21);
      v151 = *(v23 + 3);
      v153 = *(v23 + 1);
      v158 = *(v23 + 8);
      if (v23[1])
      {
        v170 = v3;
        v24 = *(*(v4 + v19) + 16);

        *&v183 = sub_1D177DD60(0, v24 + 1, 0, MEMORY[0x1E69E7CC0]);

        sub_1D17A4414(v25);
        sub_1D17A4328(byte_1F4D5FF90);

        v26 = v183;
        v27 = MEMORY[0x1D38917C0](*(v183 + 16), MEMORY[0x1E69E75F8], MEMORY[0x1E69E7608]);
        a1 = v27;
        v28 = *(v26 + 16);
        v162 = v6;
        if (v28)
        {
          v29 = v22;
          v30 = 0;
          v31 = v27 + 56;
          do
          {
            while (1)
            {
              v32 = *(v26 + 32 + 2 * v30++);
              v33 = MEMORY[0x1D3892820](*(a1 + 40), v32, 2);
              v34 = -1 << *(a1 + 32);
              v35 = v33 & ~v34;
              if ((*(v31 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
              {
                break;
              }

LABEL_22:
              v37 = swift_isUniquelyReferenced_nonNull_native();
              *&v183 = a1;
              sub_1D1940EF8(v32, v35, v37);
              a1 = v183;
              if (v30 == v28)
              {
                goto LABEL_25;
              }

              v31 = v183 + 56;
            }

            v36 = ~v34;
            while (*(*(a1 + 48) + 2 * v35) != v32)
            {
              v35 = (v35 + 1) & v36;
              if (((*(v31 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
              {
                goto LABEL_22;
              }
            }
          }

          while (v30 != v28);
LABEL_25:

          v4 = v159;
          v19 = v152;
          v22 = v29;
          v6 = v162;
        }

        else
        {
        }

        v38 = *(a1 + 16);
        v3 = v170;
        if (v38)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643130, &qword_1D1E81F40);
          v6 = swift_allocObject();
          v39 = _swift_stdlib_malloc_size(v6);
          *(v6 + 16) = v38;
          *(v6 + 24) = (v39 - 32 + ((v39 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
          a1 = sub_1D1805608(&v183, (v6 + 32), v38, a1);
          v9 = sub_1D1716918(v183);
          if (a1 != v38)
          {
            goto LABEL_194;
          }

          v9 = v6;
          v6 = v162;
        }

        else
        {

          v9 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        a1 = *v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643130, &qword_1D1E81F40);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1D1E739C0;
        *(v9 + 32) = a1;
      }

      v147 = *(v9 + 16);
      if (v147)
      {
        break;
      }

LABEL_168:

      v21 = v146 + 1;
      v20 = v142;
      if (v146 + 1 == v145)
      {
        goto LABEL_171;
      }
    }

    v40 = 0;
    v148 = v9 + 32;
    v149 = v9;
    while (1)
    {
      if (v40 >= *(v9 + 16))
      {
        goto LABEL_185;
      }

      v150 = v40;
      v174 = *(v148 + 2 * v40);
      a1 = v151;
      if (v151 != 30)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433F8, &unk_1D1E910E0);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1D1E739C0;
        *(v9 + 32) = v151;
        goto LABEL_47;
      }

      swift_beginAccess();
      v41 = *(v4 + v19);
      if (!*(v41 + 16))
      {
        break;
      }

      v42 = sub_1D171D15C(v174);
      if ((v43 & 1) == 0)
      {
        break;
      }

      v44 = *(*(v41 + 56) + 16 * v42);
      swift_endAccess();
      if (!*(v44 + 16))
      {
        goto LABEL_46;
      }

      v45 = sub_1D171D278(0);
      if ((v46 & 1) == 0)
      {
        goto LABEL_46;
      }

      a1 = *(*(v44 + 56) + 16 * v45);
      type metadata accessor for MockDescriptorCluster();
      if (!swift_dynamicCastClass())
      {
        goto LABEL_46;
      }

      swift_unknownObjectRetain();
      v47 = sub_1D19F78C4();
      swift_unknownObjectRelease();
      a1 = *(v47 + 16);
      if (!a1)
      {

        goto LABEL_46;
      }

      v154 = sub_1D18043F4(*(v47 + 16), 0);
      v48 = sub_1D18085B0();
      sub_1D1716918(v183);
      if (v48 != a1)
      {
LABEL_198:
        __break(1u);
LABEL_199:
        sub_1D1E690FC();
        __break(1u);
LABEL_200:
        sub_1D1E690FC();
        __break(1u);
LABEL_201:
        type metadata accessor for MTRAttributeIDType(0);
        result = sub_1D1E690FC();
        __break(1u);
        return result;
      }

      v9 = v154;
LABEL_47:
      v156 = *(v9 + 16);
      if (v156)
      {
        v49 = 0;
        v157 = v9 + 32;
        v155 = v9;
        while (1)
        {
          if (v49 >= *(v9 + 16))
          {
            goto LABEL_184;
          }

          v160 = v49;
          v173 = *(v157 + v49);
          if ((v158 & 1) == 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433F0, &unk_1D1E71870);
            v9 = swift_allocObject();
            *(v9 + 16) = xmmword_1D1E739C0;
            *(v9 + 32) = v153;
            goto LABEL_66;
          }

          swift_beginAccess();
          v50 = *(v4 + v19);
          if (!*(v50 + 16))
          {
            break;
          }

          v51 = sub_1D171D15C(v174);
          if ((v52 & 1) == 0)
          {
            break;
          }

          v53 = (*(v50 + 56) + 16 * v51);
          v54 = *v53;
          a1 = v53[1];
          if (!*(*v53 + 16) || (v55 = sub_1D171D278(v173), (v56 & 1) == 0))
          {

            goto LABEL_65;
          }

          v171 = v3;
          v57 = *(*(v54 + 56) + 16 * v55 + 8);

          swift_unknownObjectRetain();
          swift_endAccess();
          sub_1D1791518(v54, a1);
          ObjectType = swift_getObjectType();
          v59 = (*(v57 + 16))(ObjectType, v57);
          v9 = swift_unknownObjectRelease();
          v60 = *(v59 + 16);
          v163 = v6;
          if (v60)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433F0, &unk_1D1E71870);
            v61 = swift_allocObject();
            v62 = _swift_stdlib_malloc_size(v61);
            v63 = v62 - 32;
            if (v62 < 32)
            {
              v63 = v62 - 29;
            }

            *(v61 + 16) = v60;
            *(v61 + 24) = 2 * (v63 >> 2);
            a1 = v61;
            v3 = sub_1D1805808(&v183, (v61 + 32), v60, v59);
            v6 = *(&v183 + 1);
            v64 = v183;

            v9 = sub_1D1716918(v64);
            if (v3 != v60)
            {
              goto LABEL_191;
            }

            v4 = v159;
            v19 = v152;
            v6 = v163;
            v65 = a1;
          }

          else
          {
            v65 = MEMORY[0x1E69E7CC0];
          }

          if (qword_1EC642288 != -1)
          {
            v137 = v65;
            v9 = swift_once();
            v65 = v137;
          }

          v123 = qword_1EC6BE130;
          v3 = *(qword_1EC6BE130 + 16);
          if (v3)
          {
            v167 = v65;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433F0, &unk_1D1E71870);
            v124 = swift_allocObject();
            v125 = _swift_stdlib_malloc_size(v124);
            v126 = v125 - 32;
            if (v125 < 32)
            {
              v126 = v125 - 29;
            }

            *(v124 + 16) = v3;
            *(v124 + 24) = 2 * (v126 >> 2);
            v176 = v124;
            v127 = sub_1D1805808(&v183, (v124 + 32), v3, v123);
            v128 = v183;
            a1 = *(&v184 + 1);
            v6 = v185;

            v9 = sub_1D1716918(v128);
            if (v127 != v3)
            {
              goto LABEL_192;
            }

            v4 = v159;
            v19 = v152;
            v6 = v163;
            v65 = v167;
          }

          else
          {
            v176 = MEMORY[0x1E69E7CC0];
          }

          a1 = *(v176 + 16);
          v3 = *(v65 + 16);
          v129 = v3 + a1;
          if (__OFADD__(v3, a1))
          {
            goto LABEL_188;
          }

          v130 = v65;
          v9 = swift_isUniquelyReferenced_nonNull_native();
          v131 = v130;
          if (!v9 || v129 > *(v130 + 24) >> 1)
          {
            if (v3 <= v129)
            {
              v132 = v3 + a1;
            }

            else
            {
              v132 = v3;
            }

            v9 = sub_1D177DE70(v9, v132, 1, v130);
            v131 = v9;
          }

          v3 = v171;
          v168 = v131;
          if (*(v176 + 16))
          {
            v133 = *(v131 + 16);
            if ((*(v131 + 24) >> 1) - v133 < a1)
            {
              goto LABEL_193;
            }

            memcpy((v131 + 4 * v133 + 32), (v176 + 32), 4 * a1);

            v134 = v168;
            v135 = *(v168 + 16);
            if (a1)
            {
              v13 = __OFADD__(v135, a1);
              v135 += a1;
              if (v13)
              {
                __break(1u);
                goto LABEL_198;
              }

              *(v168 + 16) = v135;
            }
          }

          else
          {

            if (a1)
            {
              goto LABEL_189;
            }

            v134 = v168;
            v135 = *(v168 + 16);
          }

          v136 = *(v134 + 24) >> 1;
          if (v136 <= v135)
          {
            v9 = sub_1D177DE70(1, v135 + 1, 1, v134);
            v134 = v9;
            v135 = *(v9 + 16);
            if (*(v9 + 24) >> 1 <= v135)
            {
              goto LABEL_190;
            }
          }

          else if (v136 <= v135)
          {
            goto LABEL_190;
          }

          *(v134 + 4 * v135 + 32) = dword_1F4D5FFD8;
          *(v134 + 16) = v135 + 1;
          a1 = v134;

          v9 = a1;
LABEL_66:
          v169 = *(v9 + 16);
          if (v169)
          {
            a1 = 0;
            v165 = v9 + 32;
            v166 = v9;
            while (1)
            {
              if (a1 >= *(v9 + 16))
              {
                __break(1u);
LABEL_173:
                __break(1u);
LABEL_174:
                __break(1u);
LABEL_175:
                __break(1u);
LABEL_176:
                __break(1u);
LABEL_177:
                __break(1u);
LABEL_178:
                __break(1u);
                goto LABEL_179;
              }

              v175 = *(v165 + 4 * a1);
              swift_beginAccess();
              v67 = *(v4 + v19);
              v172 = v3;
              if (!*(v67 + 16))
              {
                break;
              }

              v68 = sub_1D171D15C(v174);
              if ((v69 & 1) == 0)
              {
                break;
              }

              v164 = v6;
              v70 = (*(v67 + 56) + 16 * v68);
              v71 = *v70;
              v72 = v70[1];
              if (!*(*v70 + 16) || (v73 = sub_1D171D278(v173), (v74 & 1) == 0))
              {

                swift_endAccess();
                sub_1D1791518(v71, v72);
                v6 = v164;
                goto LABEL_81;
              }

              v75 = (*(v71 + 56) + 16 * v73);
              v3 = *v75;
              v76 = v75[1];

              swift_unknownObjectRetain();
              swift_endAccess();
              sub_1D1791518(v71, v72);
              v6 = v164;
              if (!v3)
              {
                goto LABEL_81;
              }

              v77 = swift_getObjectType();
              swift_unknownObjectRetain();
              sub_1D19F6680(v175, v77, v76, &v177);
              swift_unknownObjectRelease();
              if (v179 != 255)
              {
                v183 = v177;
                v184 = v178;
                LOBYTE(v185) = v179;
                sub_1D19F41AC(&v180);
                sub_1D17805D8(&v183);
                v4 = v159;
                goto LABEL_85;
              }

              sub_1D1741A30(&v177, &qword_1EC648B70, &qword_1D1E90DF0);
              if (v175 != 65531)
              {
                v78 = 0uLL;
                v4 = v159;
LABEL_84:
                v180 = v78;
                v181 = v78;
                goto LABEL_85;
              }

              v114 = swift_getObjectType();
              swift_unknownObjectRetain();
              v3 = sub_1D19F6A1C(v114, v76);
              swift_unknownObjectRelease();
              v6 = *(v3 + 16);
              v4 = v159;
              if (v6)
              {
                *&v183 = MEMORY[0x1E69E7CC0];
                sub_1D178D5B4(0, v6, 0);
                v115 = v183;
                v9 = sub_1D1E6869C();
                v116 = v9;
                v161 = v22;
                while ((v116 & 0x8000000000000000) == 0 && v116 < 1 << *(v3 + 32))
                {
                  v117 = v3 + 56;
                  v4 = 1 << v116;
                  if ((*(v3 + 56 + 8 * (v116 >> 6)) & (1 << v116)) == 0)
                  {
                    goto LABEL_180;
                  }

                  v118 = *(*(v3 + 48) + 4 * v116);
                  v119 = *(v3 + 36);
                  *&v183 = v115;
                  v121 = *(v115 + 16);
                  v120 = *(v115 + 24);
                  if (v121 >= v120 >> 1)
                  {
                    v141 = v119;
                    v9 = sub_1D178D5B4((v120 > 1), v121 + 1, 1);
                    v119 = v141;
                    v117 = v3 + 56;
                    v115 = v183;
                  }

                  *(v115 + 16) = v121 + 1;
                  *(v115 + 4 * v121 + 32) = v118;
                  if (v116 >= -(-1 << *(v3 + 32)))
                  {
                    goto LABEL_181;
                  }

                  if ((*(v117 + 8 * (v116 >> 6)) & v4) == 0)
                  {
                    goto LABEL_182;
                  }

                  if (v119 != *(v3 + 36))
                  {
                    goto LABEL_183;
                  }

                  v9 = sub_1D1E686BC();
                  v116 = v9;
                  --v6;
                  v22 = v161;
                  if (!v6)
                  {

                    v4 = v159;
                    v19 = v152;
                    goto LABEL_133;
                  }
                }

LABEL_179:
                __break(1u);
LABEL_180:
                __break(1u);
LABEL_181:
                __break(1u);
LABEL_182:
                __break(1u);
LABEL_183:
                __break(1u);
LABEL_184:
                __break(1u);
LABEL_185:
                __break(1u);
LABEL_186:
                __break(1u);
LABEL_187:
                __break(1u);
LABEL_188:
                __break(1u);
LABEL_189:
                __break(1u);
LABEL_190:
                __break(1u);
LABEL_191:
                __break(1u);
LABEL_192:
                __break(1u);
LABEL_193:
                __break(1u);
LABEL_194:
                __break(1u);
LABEL_195:
                v140 = v9;
                sub_1D1739610();
                v9 = v140;
                v8 = v177;
                *(v4 + v6) = v177;
                if ((v3 & 1) == 0)
                {
                  goto LABEL_9;
                }

                goto LABEL_10;
              }

              v115 = MEMORY[0x1E69E7CC0];
LABEL_133:
              *(&v181 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646A50, &unk_1D1E910D0);
              *&v180 = v115;
              v6 = v164;
LABEL_85:
              v182[0] = v180;
              v182[1] = v181;
              sub_1D1741C08(v182, &v183, &qword_1EC645D58, &unk_1D1E7E530);
              sub_1D17169C0(v6, 0);
              v6 = swift_isUniquelyReferenced_nonNull_native();
              *&v177 = v22;
              v80 = sub_1D171D15C(v174);
              v81 = v22[2];
              v82 = (v79 & 1) == 0;
              v9 = v81 + v82;
              if (__OFADD__(v81, v82))
              {
                goto LABEL_173;
              }

              LOBYTE(v3) = v79;
              if (v22[3] >= v9)
              {
                if (v6)
                {
                  v85 = v177;
                  if (v79)
                  {
                    goto LABEL_94;
                  }
                }

                else
                {
                  sub_1D17395FC();
                  v85 = v177;
                  if (v3)
                  {
                    goto LABEL_94;
                  }
                }
              }

              else
              {
                sub_1D17293EC(v9, v6);
                v83 = sub_1D171D15C(v174);
                if ((v3 & 1) != (v84 & 1))
                {
                  goto LABEL_199;
                }

                v80 = v83;
                v85 = v177;
                if (v3)
                {
                  goto LABEL_94;
                }
              }

              v9 = sub_1D18D9B40(MEMORY[0x1E69E7CC0]);
              v85[(v80 >> 6) + 8] |= 1 << v80;
              *(v85[6] + 2 * v80) = v174;
              *(v85[7] + 8 * v80) = v9;
              v86 = v85[2];
              v13 = __OFADD__(v86, 1);
              v87 = v86 + 1;
              if (v13)
              {
                goto LABEL_176;
              }

              v85[2] = v87;
LABEL_94:
              v88 = v85;
              v89 = v85[7];
              sub_1D17169C0(v172, 0);
              v6 = swift_isUniquelyReferenced_nonNull_native();
              *&v177 = *(v89 + 8 * v80);
              v90 = v177;
              *(v89 + 8 * v80) = 0x8000000000000000;
              v92 = sub_1D171D278(v173);
              v93 = *(v90 + 16);
              v94 = (v91 & 1) == 0;
              v9 = v93 + v94;
              if (__OFADD__(v93, v94))
              {
                goto LABEL_174;
              }

              LOBYTE(v3) = v91;
              if (*(v90 + 24) >= v9)
              {
                if ((v6 & 1) == 0)
                {
                  sub_1D17395E8();
                  v90 = v177;
                }
              }

              else
              {
                sub_1D1729150(v9, v6);
                v90 = v177;
                v95 = sub_1D171D278(v173);
                if ((v3 & 1) != (v96 & 1))
                {
                  goto LABEL_200;
                }

                v92 = v95;
              }

              *(v89 + 8 * v80) = v90;

              v97 = *(v89 + 8 * v80);
              v22 = v88;
              if ((v3 & 1) == 0)
              {
                v9 = sub_1D18D9B68(MEMORY[0x1E69E7CC0]);
                v97[(v92 >> 6) + 8] |= 1 << v92;
                *(v97[6] + v92) = v173;
                *(v97[7] + 8 * v92) = v9;
                v98 = v97[2];
                v13 = __OFADD__(v98, 1);
                v99 = v98 + 1;
                if (v13)
                {
                  goto LABEL_177;
                }

                v97[2] = v99;
              }

              v100 = v97[7];
              if (!*(&v184 + 1))
              {
                sub_1D1741A30(&v183, &qword_1EC645D58, &unk_1D1E7E530);
                v107 = sub_1D171D4E0(v175);
                if (v108)
                {
                  v109 = v107;
                  v110 = swift_isUniquelyReferenced_nonNull_native();
                  v111 = *(v100 + 8 * v92);
                  *&v180 = v111;
                  *(v100 + 8 * v92) = 0x8000000000000000;
                  if (!v110)
                  {
                    sub_1D173946C();
                    v111 = v180;
                  }

                  sub_1D1742194((*(v111 + 56) + 32 * v109), &v177);
                  sub_1D1750920(v109, v111);
                  *(v100 + 8 * v92) = v111;
                }

                else
                {
                  v177 = 0u;
                  v178 = 0u;
                }

                sub_1D1741A30(&v177, &qword_1EC645D58, &unk_1D1E7E530);
                goto LABEL_70;
              }

              sub_1D1742194(&v183, &v177);
              v6 = swift_isUniquelyReferenced_nonNull_native();
              *&v180 = *(v100 + 8 * v92);
              v101 = v180;
              *(v100 + 8 * v92) = 0x8000000000000000;
              v9 = sub_1D171D4E0(v175);
              v103 = *(v101 + 16);
              v104 = (v102 & 1) == 0;
              v13 = __OFADD__(v103, v104);
              v105 = v103 + v104;
              if (v13)
              {
                goto LABEL_175;
              }

              LOBYTE(v3) = v102;
              if (*(v101 + 24) < v105)
              {
                sub_1D1728EBC(v105, v6);
                v9 = sub_1D171D4E0(v175);
                if ((v3 & 1) != (v106 & 1))
                {
                  goto LABEL_201;
                }

LABEL_113:
                v6 = v180;
                if ((v3 & 1) == 0)
                {
                  goto LABEL_114;
                }

                goto LABEL_68;
              }

              if (v6)
              {
                goto LABEL_113;
              }

              v122 = v9;
              sub_1D173946C();
              v9 = v122;
              v6 = v180;
              if ((v3 & 1) == 0)
              {
LABEL_114:
                *(v6 + 8 * (v9 >> 6) + 64) |= 1 << v9;
                *(*(v6 + 48) + 4 * v9) = v175;
                v9 = sub_1D1742194(&v177, (*(v6 + 56) + 32 * v9));
                v112 = *(v6 + 16);
                v13 = __OFADD__(v112, 1);
                v113 = v112 + 1;
                if (v13)
                {
                  goto LABEL_178;
                }

                *(v6 + 16) = v113;
                goto LABEL_69;
              }

LABEL_68:
              v66 = (*(v6 + 56) + 32 * v9);
              __swift_destroy_boxed_opaque_existential_1(v66);
              sub_1D1742194(&v177, v66);
LABEL_69:
              *(v100 + 8 * v92) = v6;

LABEL_70:
              ++a1;
              swift_unknownObjectRelease();
              sub_1D1741A30(v182, &qword_1EC645D58, &unk_1D1E7E530);
              v3 = sub_1D18F3798;
              v6 = sub_1D18F3768;
              v9 = v166;
              if (a1 == v169)
              {

                v3 = sub_1D18F3798;
                v6 = sub_1D18F3768;
                goto LABEL_50;
              }
            }

            swift_endAccess();
LABEL_81:
            v177 = 0u;
            v178 = 0u;
            v179 = -1;
            sub_1D1741A30(&v177, &qword_1EC648B70, &qword_1D1E90DF0);
            if (v175 == 65531)
            {
              v180 = 0u;
              v181 = 0u;
              goto LABEL_85;
            }

            v78 = 0uLL;
            goto LABEL_84;
          }

LABEL_50:
          v49 = v160 + 1;
          v9 = v155;
          if (v160 + 1 == v156)
          {
            goto LABEL_33;
          }
        }

        v54 = 0;
        a1 = 0;
LABEL_65:
        sub_1D1791518(v54, a1);
        swift_endAccess();
        v9 = MEMORY[0x1E69E7CC0];
        goto LABEL_66;
      }

LABEL_33:

      v9 = v149;
      v40 = v150 + 1;
      if (v150 + 1 == v147)
      {
        goto LABEL_168;
      }
    }

    swift_endAccess();
LABEL_46:
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_47;
  }

  v6 = 0;
  v3 = 0;
  v22 = MEMORY[0x1E69E7CC8];
LABEL_171:
  v138 = *(v4 + OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_nodeID);
  sub_1D17169C0(v143, 0);
  sub_1D17169C0(v6, 0);
  result = sub_1D17169C0(v3, 0);
  *a2 = v138;
  a2[1] = v22;
  return result;
}

unint64_t sub_1D19FE700(void *a1, unsigned int a2)
{
  v3 = v2;
  v7 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v74 = *(v6 + 16);
  v75 = v6;
  v8 = v74(v7, v6);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 24))(&v82, v9, v10);
  v11 = v82;
  v12 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedReads;
  swift_beginAccess();
  v73 = a2;
  if (!*(v3 + v12))
  {
    goto LABEL_6;
  }

  v13 = a2 | (v8 << 32) | (v11 << 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v79 = *(v3 + v12);
  v15 = v79;
  *(v3 + v12) = 0x8000000000000000;
  v16 = sub_1D171D848(v13, 2);
  v18 = v15[2];
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_41;
  }

  LOBYTE(v9) = v17;
  if (v15[3] >= v21)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    sub_1D1729400(v21, isUniquelyReferenced_nonNull_native);
    v15 = v79;
    v16 = sub_1D171D848(v13, 2);
    if ((v9 & 1) != (v22 & 1))
    {
      sub_1D1E690FC();
      __break(1u);
LABEL_6:
      v23 = 0;
      goto LABEL_12;
    }
  }

  *(v3 + v12) = v15;
  if (v9)
  {
    goto LABEL_10;
  }

LABEL_9:
  v9 = v16;
  sub_1D19DBA0C(v16, v13, 2, 0, v15);
  v16 = v9;
LABEL_10:
  while (1)
  {
    v24 = v15[7];
    v25 = *(v24 + 8 * v16);
    v20 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v20)
    {
      break;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    v71 = v16;
    sub_1D1739610();
    v16 = v71;
    v15 = v79;
    *(v3 + v12) = v79;
    if ((v9 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  *(v24 + 8 * v16) = v26;
  v23 = sub_1D17421C8;
LABEL_12:
  swift_endAccess();
  v27 = v74(v7, v75);
  v28 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_mockEndpoints;
  swift_beginAccess();
  v29 = *(v3 + v28);
  if (!*(v29 + 16) || (v30 = sub_1D171D15C(v27), (v31 & 1) == 0))
  {
    swift_endAccess();
    v45 = v23;
LABEL_22:
    sub_1D17169C0(v45, 0);
    return 0;
  }

  v72 = v23;
  v32 = (*(v29 + 56) + 16 * v30);
  v33 = *v32;
  v34 = v32[1];
  v36 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v36);
  v37 = *(v35 + 24);

  v37(&v79, v36, v35);
  if (!*(v33 + 16) || (v38 = sub_1D171D278(v79), (v39 & 1) == 0))
  {
    swift_endAccess();
    sub_1D1791518(v33, v34);
LABEL_21:
    v45 = v72;
    goto LABEL_22;
  }

  v40 = *(*(v33 + 56) + 16 * v38 + 8);
  swift_unknownObjectRetain();
  swift_endAccess();
  sub_1D1791518(v33, v34);
  ObjectType = swift_getObjectType();
  v42 = (*(v40 + 16))(ObjectType, v40);
  if (*(v42 + 16) && (v43 = sub_1D171D4E0(v73), (v44 & 1) != 0))
  {
    sub_1D17417AC(*(v42 + 56) + 40 * v43, &v82);
  }

  else
  {

    v82 = 0u;
    v83 = 0u;
    v84 = -1;
  }

  sub_1D1741C08(&v82, &v79, &qword_1EC648B70, &qword_1D1E90DF0);
  v47 = v81;
  sub_1D1741A30(&v79, &qword_1EC648B70, &qword_1D1E90DF0);
  if (v47 != 255)
  {
    goto LABEL_25;
  }

  if (qword_1EC642288 != -1)
  {
    swift_once();
  }

  v51 = qword_1EC6BE130;
  if (*(qword_1EC6BE130 + 16) && (sub_1D171D4E0(v73), (v52 & 1) != 0))
  {
    if (*(v51 + 16) && (v53 = sub_1D171D4E0(v73), (v54 & 1) != 0))
    {
      sub_1D17417AC(*(v51 + 56) + 40 * v53, &v79);
      sub_1D1741A30(&v82, &qword_1EC648B70, &qword_1D1E90DF0);
    }

    else
    {
      sub_1D1741A30(&v82, &qword_1EC648B70, &qword_1D1E90DF0);
      v79 = 0u;
      v80 = 0u;
      v81 = -1;
    }

    v82 = v79;
    v83 = v80;
    v50 = v81;
  }

  else
  {
LABEL_25:
    if (v73 != 65531)
    {
      goto LABEL_37;
    }

    v48 = sub_1D19F6A1C(ObjectType, v40);
    v49 = sub_1D19F6430(v48);

    sub_1D1741A30(&v82, &qword_1EC648B70, &qword_1D1E90DF0);
    *&v82 = v49;
    v50 = 5;
  }

  v84 = v50;
LABEL_37:
  sub_1D1741C08(&v82, &v76, &qword_1EC648B70, &qword_1D1E90DF0);
  if (v78 == 255)
  {
    sub_1D1741A30(&v82, &qword_1EC648B70, &qword_1D1E90DF0);
    swift_unknownObjectRelease();
    sub_1D1741A30(&v76, &qword_1EC648B70, &qword_1D1E90DF0);
    goto LABEL_21;
  }

  v79 = v76;
  v80 = v77;
  v81 = v78;
  v74(v7, v75);
  v55 = sub_1D1E692AC();
  v56 = a1[3];
  v57 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v56);
  (*(v57 + 24))(&v76, v56, v57);
  v58 = sub_1D1E692CC();
  v59 = sub_1D1E692CC();
  v60 = [objc_opt_self() attributePathWithEndpointID:v55 clusterID:v58 attributeID:v59];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E6F900;
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v62;
  *(inited + 72) = sub_1D1741B10(0, &qword_1EC650120, 0x1E696F570);
  *(inited + 48) = v60;
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v63;
  v64 = v60;
  v65 = sub_1D19F531C();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  *(inited + 96) = v65;
  *(inited + 120) = v66;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x80000001D1EBE020;
  sub_1D19F41AC(&v76);
  v67 = *(&v77 + 1);
  v68 = __swift_project_boxed_opaque_existential_1(&v76, *(&v77 + 1));
  *(inited + 168) = v67;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 144));
  (*(*(v67 - 8) + 16))(boxed_opaque_existential_1, v68, v67);
  __swift_destroy_boxed_opaque_existential_1(&v76);
  v70 = sub_1D18D6538(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
  swift_arrayDestroy();
  swift_unknownObjectRelease();

  sub_1D17805D8(&v79);
  sub_1D1741A30(&v82, &qword_1EC648B70, &qword_1D1E90DF0);
  sub_1D17169C0(v72, 0);
  return v70;
}

uint64_t sub_1D19FEEC8(uint64_t a1, __int16 a2)
{
  *(v3 + 552) = a2;
  *(v3 + 424) = a1;
  *(v3 + 432) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1D19FEEEC, 0, 0);
}

uint64_t sub_1D19FEEEC()
{
  v63 = v0;
  v1 = *(*(v0 + 424) + 16);
  *(v0 + 440) = v1;
  if (!v1)
  {
LABEL_17:
    v32 = *(v0 + 8);
    v33 = MEMORY[0x1E69E7CC0];

    return v32(v33);
  }

  v2 = 0;
  v3 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedCommands;
  *(v0 + 448) = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_mockEndpoints;
  *(v0 + 456) = v3;
  v4 = *MEMORY[0x1E696F530];
  *(v0 + 464) = *MEMORY[0x1E696F510];
  *(v0 + 472) = v4;
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *(v0 + 480) = v2;
    v6 = *(*(v0 + 424) + 8 * v2 + 32);
    *(v0 + 488) = v6;
    v7 = *(v6 + 16);
    *(v0 + 496) = v7;
    if (v7)
    {
      break;
    }

LABEL_4:
    if (++v2 == v1)
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
  while (1)
  {
    *(v0 + 504) = v9;
    *(v0 + 512) = v5;
    *(v0 + 554) = 0;
    sub_1D17419CC(v8 + 40 * v9 + 32, v0 + 272);
    v10 = *(v0 + 296);
    v11 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((v0 + 272), v10);
    (*(v11 + 40))(&v62, v10, v11);
    v12 = v62;
    v13 = *(v0 + 296);
    v14 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((v0 + 272), v13);
    v15 = (*(v14 + 24))(v13, v14);
    if ((v15 & 0x100000000) == 0)
    {
      v16 = v15;
      v17 = *(v0 + 296);
      v18 = *(v0 + 304);
      __swift_project_boxed_opaque_existential_1((v0 + 272), v17);
      if (((*(v18 + 32))(v17, v18) & 0x100000000) == 0)
      {
        break;
      }
    }

LABEL_15:
    v30 = *(v0 + 496);
    v31 = *(v0 + 504) + 1;
    __swift_destroy_boxed_opaque_existential_1((v0 + 272));
    if (v31 == v30)
    {

      v2 = *(v0 + 480);
      v1 = *(v0 + 440);
      goto LABEL_4;
    }

    v9 = *(v0 + 504) + 1;
    v8 = *(v0 + 488);
  }

  v19 = *(v0 + 448);
  v20 = *(v0 + 432);
  swift_beginAccess();
  v21 = *(v20 + v19);
  if (!*(v21 + 16) || (v22 = sub_1D171D15C(*(v0 + 552)), (v23 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_15;
  }

  v24 = (*(v21 + 56) + 16 * v22);
  v26 = *v24;
  v25 = v24[1];
  if (!*(*v24 + 16) || (v27 = v12, v28 = sub_1D171D278(v12), (v29 & 1) == 0))
  {

    swift_endAccess();
    sub_1D1791518(v26, v25);
    goto LABEL_15;
  }

  v60 = *(v0 + 432);
  v35 = (*(v26 + 56) + 16 * v28);
  *(v0 + 520) = *v35;
  v36 = v35[1];
  v56 = *(v0 + 552);

  swift_unknownObjectRetain();
  swift_endAccess();
  sub_1D1791518(v26, v25);
  ObjectType = swift_getObjectType();
  v58 = *(v36 + 72);
  swift_unknownObjectRetain();
  v38 = v60;
  v58(v60, ObjectType, v36);
  swift_unknownObjectRelease();
  v55 = *(v36 + 96);
  swift_unknownObjectRetain();
  v59 = ObjectType;
  v61 = v36;
  v55(v56, ObjectType, v36);
  swift_unknownObjectRelease();
  v39 = sub_1D1E692AC();
  v40 = *(v0 + 456);
  v41 = *(v0 + 432);
  v42 = sub_1D1E692CC();
  v43 = sub_1D1E692CC();
  *(v0 + 528) = [objc_opt_self() commandPathWithEndpointID:v39 clusterID:v42 commandID:v43];

  swift_beginAccess();
  v44 = *(v41 + v40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v41 + v40) = v44;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v53 = *(v0 + 456);
    v54 = *(v0 + 432);
    v44 = sub_1D177EEB4(0, *(v44 + 2) + 1, 1, v44);
    *(v54 + v53) = v44;
  }

  v47 = *(v44 + 2);
  v46 = *(v44 + 3);
  if (v47 >= v46 >> 1)
  {
    v44 = sub_1D177EEB4((v46 > 1), v47 + 1, 1, v44);
  }

  v48 = *(v0 + 456);
  v49 = *(v0 + 432);
  v50 = *(v0 + 552);
  *(v44 + 2) = v47 + 1;
  v51 = &v44[8 * v47];
  *(v51 + 16) = v50;
  v51[34] = v27;
  *(v51 + 9) = v16;
  *(v49 + v48) = v44;
  swift_endAccess();
  v57 = (*(v61 + 120) + **(v61 + 120));
  v52 = swift_task_alloc();
  *(v0 + 536) = v52;
  *v52 = v0;
  v52[1] = sub_1D19FF478;

  return v57(v0 + 312, v0 + 272, v59, v61);
}

uint64_t sub_1D19FF478()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_1D19FFC7C;
  }

  else
  {
    v2 = sub_1D19FF58C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D19FF58C()
{
  v73 = v0;
  v1 = *(v0 + 528);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v3;
  v4 = sub_1D1741B10(0, &qword_1EC648DE0, 0x1E696F600);
  *(inited + 48) = v1;
  *(inited + 72) = v4;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x80000001D1EBE020;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  v5 = swift_allocObject();
  *(inited + 96) = v5;
  sub_1D1741C08(v0 + 312, v5 + 16, &qword_1EC645D58, &unk_1D1E7E530);
  v6 = v1;
  v7 = sub_1D18D6E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + 512);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1D177D340(0, v9[2] + 1, 1, *(v0 + 512));
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1D177D340((v10 > 1), v11 + 1, 1, v9);
  }

  v12 = *(v0 + 528);
  swift_unknownObjectRelease();

  sub_1D1741A30(v0 + 312, &qword_1EC645D58, &unk_1D1E7E530);
  v9[2] = v11 + 1;
  v9[v11 + 4] = v7;
  v13 = *(v0 + 554);
  while (1)
  {
    v14 = *(v0 + 496);
    v15 = *(v0 + 504) + 1;
    __swift_destroy_boxed_opaque_existential_1((v0 + 272));
    if (v15 == v14)
    {
      break;
    }

    v21 = *(v0 + 504) + 1;
    v20 = *(v0 + 488);
LABEL_13:
    *(v0 + 504) = v21;
    *(v0 + 512) = v9;
    *(v0 + 554) = v13 & 1;
    sub_1D17419CC(v20 + 40 * v21 + 32, v0 + 272);
    v22 = *(v0 + 296);
    v23 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((v0 + 272), v22);
    (*(v23 + 40))(&v72, v22, v23);
    v24 = v72;
    v25 = *(v0 + 296);
    v26 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((v0 + 272), v25);
    v27 = (*(v26 + 24))(v25, v26);
    if ((v27 & 0x100000000) == 0)
    {
      v28 = v27;
      v29 = *(v0 + 296);
      v30 = *(v0 + 304);
      __swift_project_boxed_opaque_existential_1((v0 + 272), v29);
      if (((*(v30 + 32))(v29, v30) & 0x100000000) == 0)
      {
        v31 = *(v0 + 448);
        v32 = *(v0 + 432);
        swift_beginAccess();
        v33 = *(v32 + v31);
        if (*(v33 + 16) && (v34 = sub_1D171D15C(*(v0 + 552)), (v35 & 1) != 0))
        {
          v36 = (*(v33 + 56) + 16 * v34);
          v38 = *v36;
          v37 = v36[1];
          if (*(*v36 + 16))
          {
            v39 = sub_1D171D278(v24);
            if (v40)
            {
              v69 = v24;
              v43 = *(v0 + 432);
              v44 = (*(v38 + 56) + 16 * v39);
              *(v0 + 520) = *v44;
              v45 = v44[1];
              v46 = *(v0 + 552);

              swift_unknownObjectRetain();
              swift_endAccess();
              sub_1D1791518(v38, v37);
              ObjectType = swift_getObjectType();
              v48 = *(v45 + 72);
              swift_unknownObjectRetain();
              v49 = v43;
              v48(v43, ObjectType, v45);
              swift_unknownObjectRelease();
              v50 = *(v45 + 96);
              swift_unknownObjectRetain();
              v70 = ObjectType;
              v51 = ObjectType;
              v52 = v45;
              v50(v46, v51, v45);
              swift_unknownObjectRelease();
              v53 = sub_1D1E692AC();
              v54 = *(v0 + 456);
              v55 = *(v0 + 432);
              v56 = sub_1D1E692CC();
              v57 = sub_1D1E692CC();
              *(v0 + 528) = [objc_opt_self() commandPathWithEndpointID:v53 clusterID:v56 commandID:v57];

              swift_beginAccess();
              v58 = *(v55 + v54);
              v59 = swift_isUniquelyReferenced_nonNull_native();
              *(v55 + v54) = v58;
              if ((v59 & 1) == 0)
              {
                v67 = *(v0 + 456);
                v68 = *(v0 + 432);
                v58 = sub_1D177EEB4(0, *(v58 + 2) + 1, 1, v58);
                *(v68 + v67) = v58;
              }

              v61 = *(v58 + 2);
              v60 = *(v58 + 3);
              if (v61 >= v60 >> 1)
              {
                v58 = sub_1D177EEB4((v60 > 1), v61 + 1, 1, v58);
              }

              v62 = *(v0 + 456);
              v63 = *(v0 + 432);
              v64 = *(v0 + 552);
              *(v58 + 2) = v61 + 1;
              v65 = &v58[8 * v61];
              *(v65 + 16) = v64;
              v65[34] = v69;
              *(v65 + 9) = v28;
              *(v63 + v62) = v58;
              swift_endAccess();
              v71 = (*(v52 + 120) + **(v52 + 120));
              v66 = swift_task_alloc();
              *(v0 + 536) = v66;
              *v66 = v0;
              v66[1] = sub_1D19FF478;

              return v71(v0 + 312, v0 + 272, v70, v52);
            }
          }

          swift_endAccess();
          sub_1D1791518(v38, v37);
        }

        else
        {
          swift_endAccess();
        }
      }
    }
  }

  if ((v13 & 1) == 0)
  {
    v16 = *(v0 + 480) + 5;
    v17 = 1 - *(v0 + 440);
    while (v17 + v16 != 5)
    {
      *(v0 + 480) = v16 - 4;
      v18 = *(*(v0 + 424) + 8 * v16);
      *(v0 + 488) = v18;
      v19 = *(v18 + 16);
      *(v0 + 496) = v19;
      ++v16;
      if (v19)
      {

        v13 = 0;
        v21 = 0;
        goto LABEL_13;
      }
    }
  }

  v41 = *(v0 + 8);

  return v41(v9);
}

uint64_t sub_1D19FFC7C()
{
  v72 = v0;
  v1 = *(v0 + 528);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v3;
  *(inited + 72) = sub_1D1741B10(0, &qword_1EC648DE0, 0x1E696F600);
  *(inited + 48) = v1;
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v4;
  swift_getErrorValue();
  v5 = *(v0 + 392);
  v6 = *(v0 + 400);
  *(inited + 120) = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 96));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v5, v6);
  v8 = v1;
  v9 = sub_1D18D6E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + 512);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1D177D340(0, v11[2] + 1, 1, *(v0 + 512));
  }

  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1D177D340((v12 > 1), v13 + 1, 1, v11);
  }

  v14 = *(v0 + 528);

  swift_unknownObjectRelease();
  v11[2] = v13 + 1;
  v11[v13 + 4] = v9;
  v15 = *(v0 + 496);
  v16 = *(v0 + 504) + 1;
  __swift_destroy_boxed_opaque_existential_1((v0 + 272));
  v17 = *(v0 + 488);
  if (v16 == v15)
  {
LABEL_6:

    v18 = *(v0 + 8);

    return v18(v11);
  }

  while (1)
  {
    v22 = *(v0 + 504);
    *(v0 + 504) = v22 + 1;
    *(v0 + 512) = v11;
    *(v0 + 554) = 1;
    sub_1D17419CC(v17 + 40 * v22 + 72, v0 + 272);
    v23 = *(v0 + 296);
    v24 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((v0 + 272), v23);
    (*(v24 + 40))(&v71, v23, v24);
    v25 = v71;
    v26 = *(v0 + 296);
    v27 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((v0 + 272), v26);
    v28 = (*(v27 + 24))(v26, v27);
    if ((v28 & 0x100000000) != 0)
    {
      goto LABEL_11;
    }

    v29 = v28;
    v30 = *(v0 + 296);
    v31 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((v0 + 272), v30);
    if (((*(v31 + 32))(v30, v31) & 0x100000000) != 0)
    {
      goto LABEL_11;
    }

    v32 = *(v0 + 448);
    v33 = *(v0 + 432);
    swift_beginAccess();
    v34 = *(v33 + v32);
    if (*(v34 + 16))
    {
      v35 = sub_1D171D15C(*(v0 + 552));
      if (v36)
      {
        break;
      }
    }

    swift_endAccess();
LABEL_11:
    v20 = *(v0 + 496);
    v21 = *(v0 + 504) + 1;
    __swift_destroy_boxed_opaque_existential_1((v0 + 272));
    v17 = *(v0 + 488);
    if (v21 == v20)
    {
      goto LABEL_6;
    }
  }

  v37 = (*(v34 + 56) + 16 * v35);
  v39 = *v37;
  v38 = v37[1];
  if (!*(*v37 + 16) || (v40 = sub_1D171D278(v25), (v41 & 1) == 0))
  {

    swift_endAccess();
    sub_1D1791518(v39, v38);
    goto LABEL_11;
  }

  v68 = v25;
  v42 = *(v0 + 432);
  v43 = (*(v39 + 56) + 16 * v40);
  *(v0 + 520) = *v43;
  v44 = v43[1];
  v45 = *(v0 + 552);

  swift_unknownObjectRetain();
  swift_endAccess();
  sub_1D1791518(v39, v38);
  ObjectType = swift_getObjectType();
  v47 = *(v44 + 72);
  swift_unknownObjectRetain();
  v48 = v42;
  v47(v42, ObjectType, v44);
  swift_unknownObjectRelease();
  v49 = *(v44 + 96);
  swift_unknownObjectRetain();
  v69 = ObjectType;
  v50 = ObjectType;
  v51 = v44;
  v49(v45, v50, v44);
  swift_unknownObjectRelease();
  v52 = sub_1D1E692AC();
  v53 = *(v0 + 456);
  v54 = *(v0 + 432);
  v55 = sub_1D1E692CC();
  v56 = sub_1D1E692CC();
  *(v0 + 528) = [objc_opt_self() commandPathWithEndpointID:v52 clusterID:v55 commandID:v56];

  swift_beginAccess();
  v57 = *(v54 + v53);
  v58 = swift_isUniquelyReferenced_nonNull_native();
  *(v54 + v53) = v57;
  if ((v58 & 1) == 0)
  {
    v66 = *(v0 + 456);
    v67 = *(v0 + 432);
    v57 = sub_1D177EEB4(0, *(v57 + 2) + 1, 1, v57);
    *(v67 + v66) = v57;
  }

  v60 = *(v57 + 2);
  v59 = *(v57 + 3);
  if (v60 >= v59 >> 1)
  {
    v57 = sub_1D177EEB4((v59 > 1), v60 + 1, 1, v57);
  }

  v61 = *(v0 + 456);
  v62 = *(v0 + 432);
  v63 = *(v0 + 552);
  *(v57 + 2) = v60 + 1;
  v64 = &v57[8 * v60];
  *(v64 + 16) = v63;
  v64[34] = v68;
  *(v64 + 9) = v29;
  *(v62 + v61) = v57;
  swift_endAccess();
  v70 = (*(v51 + 120) + **(v51 + 120));
  v65 = swift_task_alloc();
  *(v0 + 536) = v65;
  *v65 = v0;
  v65[1] = sub_1D19FF478;

  return v70(v0 + 312, v0 + 272, v69, v51);
}

uint64_t sub_1D1A0030C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + *(type metadata accessor for EndpointPath(0) + 24));
  v8 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_mockEndpoints;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (!*(v9 + 16))
  {
    return swift_endAccess();
  }

  v10 = sub_1D171D15C(v7);
  if ((v11 & 1) == 0)
  {
    return swift_endAccess();
  }

  v12 = *(*(v9 + 56) + 16 * v10);
  swift_endAccess();
  result = type metadata accessor for ClusterPath(0);
  if (*(v12 + 16))
  {
    result = sub_1D171D278(*(a1 + *(result + 20)));
    if (v14)
    {
      v15 = *(*(v12 + 56) + 16 * result + 8);
      sub_1D1741970(a3, v18);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
      if (swift_dynamicCast())
      {
        sub_1D19F4834(v17[0], v18);
      }

      else
      {
        sub_1D1741970(a3, v17);
        sub_1D19F43EC(v17, v18);
        sub_1D1741A30(v17, &qword_1EC649700, &qword_1D1E6E910);
      }

      ObjectType = swift_getObjectType();
      sub_1D19F6730(v18, a2, ObjectType, v15);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1D1A0048C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a1;
  if ((a2 & 0x10000) != 0)
  {
    v16 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_metadata;
    swift_beginAccess();
    v17 = *(v3 + v16);
    if (*(v17 + 16) && (v18 = sub_1D171D63C(v5), (v19 & 1) != 0))
    {
      sub_1D1741970(*(v17 + 56) + 32 * v18, a3);
    }

    else
    {
      *a3 = 0u;
      a3[1] = 0u;
    }

    return swift_endAccess();
  }

  else
  {
    v7 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_mockEndpoints;
    swift_beginAccess();
    v8 = *(v3 + v7);
    if (*(v8 + 16) && (v9 = sub_1D171D15C(a2), (v10 & 1) != 0))
    {
      v11 = (*(v8 + 56) + 16 * v9);
      v13 = *v11;
      v12 = v11[1];
      if (*(v12 + 16))
      {

        v14 = sub_1D171D63C(v5);
        if (v15)
        {
          sub_1D1741970(*(v12 + 56) + 32 * v14, a3);
        }

        else
        {
          *a3 = 0u;
          a3[1] = 0u;
        }
      }

      else
      {
        *a3 = 0u;
        a3[1] = 0u;
      }

      swift_endAccess();
      return sub_1D1791518(v13, v12);
    }

    else
    {
      result = swift_endAccess();
      *a3 = 0u;
      a3[1] = 0u;
    }
  }

  return result;
}

uint64_t sub_1D1A005F0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if ((a2 & 0x10000) != 0)
  {
    sub_1D1741C08(a3, v10, &qword_1EC649700, &qword_1D1E6E910);
    swift_beginAccess();
    sub_1D1B0D8E4(v10, v4);
  }

  else
  {
    swift_beginAccess();
    v6 = sub_1D1C76F54(v10, a2);
    if (*v7)
    {
      sub_1D1741C08(a3, v9, &qword_1EC649700, &qword_1D1E6E910);
      sub_1D1B0D8E4(v9, v4);
    }

    (v6)(v10, 0);
  }

  return swift_endAccess();
}

id sub_1D1A0073C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D1A008B8(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1D1A00914(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_containingHome;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1D1A009AC;
}

void sub_1D1A009AC(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1D1A00A60(uint64_t a1, int a2)
{
  *(v3 + 56) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1D1A00A84, 0, 0);
}

uint64_t sub_1D1A00A84()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v1 + *(type metadata accessor for EndpointPath(0) + 24));
  v4 = *(v1 + *(type metadata accessor for ClusterPath(0) + 20));
  v5 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedCommands;
  swift_beginAccess();
  v6 = *(v2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v5) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1D177EEB4(0, *(v6 + 2) + 1, 1, v6);
    *(v2 + v5) = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1D177EEB4((v8 > 1), v9 + 1, 1, v6);
  }

  v10 = *(v0 + 56);
  *(v6 + 2) = v9 + 1;
  v11 = &v6[8 * v9];
  *(v11 + 16) = v3;
  v11[34] = v4;
  *(v11 + 9) = v10;
  *(v2 + v5) = v6;
  swift_endAccess();
  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_1D1A00BD4(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_delegates;
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_1D1DA0A54((v1 + v3), a1);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D1A00C48(uint64_t a1, __int16 a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D1A00CEC;

  return sub_1D19FEEC8(a1, a2);
}

uint64_t sub_1D1A00CEC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1D1A00DEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648DE8, &unk_1D1E910F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E72CC0;
  *(inited + 32) = 65532;
  *(inited + 40) = 0;
  *(inited + 72) = 2;
  *(inited + 80) = 65533;
  *(inited + 88) = 0;
  *(inited + 120) = 2;
  *(inited + 128) = 65529;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643128, &unk_1D1E71580);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D1E739C0;
  *(v1 + 32) = 0;
  *(v1 + 64) = 2;
  *(inited + 136) = v1;
  *(inited + 168) = 5;
  *(inited + 176) = 65528;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D1E739C0;
  *(v2 + 32) = 0;
  *(v2 + 64) = 2;
  *(inited + 184) = v2;
  *(inited + 216) = 5;
  v3 = sub_1D18D640C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6460C8, &qword_1D1E91100);
  result = swift_arrayDestroy();
  qword_1EC6BE130 = v3;
  return result;
}

uint64_t sub_1D1A00F34()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D1E6920C();
  if (!v2)
  {
    v3 = 0;
LABEL_6:
    MEMORY[0x1D3892850](v3);
    sub_1D1E6924C();
    sub_1D1E6923C();
    sub_1D1E6924C();
    return sub_1D1E6926C();
  }

  if (v2 != 1)
  {
    v3 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1D3892850](1);
  sub_1D1770648(v5, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1A00FF8(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  if (!v5)
  {
    v7 = 0;
LABEL_8:
    MEMORY[0x1D3892850](v7);
    sub_1D1E6924C();
    sub_1D1E6923C();
    return sub_1D1E6924C();
  }

  if (v5 != 1)
  {
    v7 = 2;
    goto LABEL_8;
  }

  MEMORY[0x1D3892850](1);

  return sub_1D1770648(a1, v4);
}

uint64_t sub_1D1A010A4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1D1E6920C();
  if (!v3)
  {
    v4 = 0;
LABEL_6:
    MEMORY[0x1D3892850](v4);
    sub_1D1E6924C();
    sub_1D1E6923C();
    sub_1D1E6924C();
    return sub_1D1E6926C();
  }

  if (v3 != 1)
  {
    v4 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1D3892850](1);
  sub_1D1770648(v6, v2);
  return sub_1D1E6926C();
}

unint64_t sub_1D1A01168()
{
  result = qword_1EC648DD8;
  if (!qword_1EC648DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648DD8);
  }

  return result;
}

BOOL sub_1D1A011BC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v3 == 1)
    {
      v6 = *a1;
      if (v5 == 1)
      {
        v7 = sub_1D177A2B8(v6, *a2);
        sub_1D1741808(v4, 1);
        sub_1D1741808(v2, 1);
        sub_1D174181C(v2, 1);
        sub_1D174181C(v4, 1);
        return v7 & 1;
      }

      goto LABEL_14;
    }

    if (v5 == 2)
    {
      sub_1D174181C(*a1, 2);
      v9 = v4;
      v10 = 2;
      goto LABEL_9;
    }

LABEL_14:
    sub_1D1741808(v4, v5);
    sub_1D174181C(v2, v3);
    sub_1D174181C(v4, v5);
    return 0;
  }

  if (*(a2 + 8))
  {
    goto LABEL_14;
  }

  sub_1D174181C(*a1, 0);
  v9 = v4;
  v10 = 0;
LABEL_9:
  sub_1D174181C(v9, v10);
  return v2 == v4 && WORD2(v2) == WORD2(v4) && dword_1D1E91114[v2 << 8 >> 56] == dword_1D1E91114[v4 << 8 >> 56];
}

uint64_t _s12WaitingStateVMa(uint64_t a1)
{
  result = qword_1EC648DF8;
  if (!qword_1EC648DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D1A01368(uint64_t a1)
{
  sub_1D1A013EC(319);
  if (v1 <= 0x3F)
  {
    sub_1D1A01460(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D1A013EC(uint64_t a1)
{
  if (!qword_1EC648E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC648E10, &unk_1D1E911A8);
    v1 = sub_1D1E6769C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC648E08);
    }
  }
}

void sub_1D1A01460(uint64_t a1)
{
  if (!qword_1EC648E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC646FC0, &qword_1D1E840F0);
    v1 = sub_1D1E685AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC648E18);
    }
  }
}

uint64_t sub_1D1A014C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1D1E68A6C();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A015C4, 0, 0);
}

uint64_t sub_1D1A015C4()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1D1E68A8C();
  v5 = sub_1D1A054B8(&qword_1EC648E60, MEMORY[0x1E69E8848], MEMORY[0x1E69E8850]);
  sub_1D1E6910C();
  sub_1D1A054B8(&qword_1EC648E68, MEMORY[0x1E69E8838], MEMORY[0x1E69E8840]);
  sub_1D1E68A5C();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1D1A01754;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1D1A01754()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1A05510, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1D1A01910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1D1E68A2C();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A01A10, 0, 0);
}

uint64_t sub_1D1A01A10()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1D1E68A4C();
  v5 = sub_1D1A054B8(&qword_1EC648E30, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1D1E6910C();
  sub_1D1A054B8(&qword_1EC648E38, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1D1E68A5C();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1D1A01BA0;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1D1A01BA0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1A01D5C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1D1A01D5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1A01E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v22 - v12;
  sub_1D1741C08(a1, v22 - v12, &unk_1EC6442C0, &qword_1D1E741A0);
  v14 = sub_1D1E67E7C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1D1741A30(v13, &unk_1EC6442C0, &qword_1D1E741A0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = sub_1D1E67D4C();
      v18 = v17;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D1E67E6C();
    (*(v15 + 8))(v13, v14);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
  v18 = 0;
LABEL_6:
  v19 = *v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v20 = (v18 | v16);
  if (v18 | v16)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v16;
    v23[3] = v18;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v19;
  swift_task_create();
}

uint64_t sub_1D1A02010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v19 - v9;
  sub_1D1741C08(a1, v19 - v9, &unk_1EC6442C0, &qword_1D1E741A0);
  v11 = sub_1D1E67E7C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D1741A30(v10, &unk_1EC6442C0, &qword_1D1E741A0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_1D1E67D4C();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D1E67E6C();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v5;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t sub_1D1A0222C(uint64_t a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4BFC;

  return sub_1D1A022D0(a1, a2);
}

uint64_t sub_1D1A022D0(uint64_t a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 24) = a2;
  *(v3 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A022F8, 0, 0);
}

uint64_t sub_1D1A022F8()
{
  v1 = *(v0 + 32);
  v2 = sub_1D1A04D34(*(v0 + 16));
  v3 = *(v1 + OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_attributeWaitingState);
  *(v0 + 40) = v3;
  *(swift_task_alloc() + 16) = v2;
  v4 = *v3;
  v5 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  *(v0 + 48) = v5;
  v6 = *(v4 + 48);
  *(v0 + 80) = v6;
  v7 = (v6 + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock(&v3[v7]);
  sub_1D1A05090(&v3[v5]);
  os_unfair_lock_unlock(&v3[v7]);
  v8 = *(v0 + 24);

  sub_1D1E6884C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648E10, &unk_1D1E911A8);
  v9 = sub_1D1E6760C();
  v11 = v10;

  MEMORY[0x1D3890F70](v9, v11);

  sub_1D1E66A8C();

  v12 = swift_task_alloc();
  *(v0 + 56) = v12;
  *(v12 + 16) = v3;
  *(v12 + 24) = v8;
  v13 = swift_task_alloc();
  *(v0 + 64) = v13;
  *v13 = v0;
  v13[1] = sub_1D1A025AC;
  v14 = MEMORY[0x1E69E7CA8] + 8;
  v15 = MEMORY[0x1E69E7CA8] + 8;
  v16 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v13, v14, v15, 0, 0, &unk_1D1E911D0, v12, v16);
}

uint64_t sub_1D1A025AC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D1A027AC;
  }

  else
  {

    v2 = sub_1D1A026C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1A026C8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = (*(v0 + 80) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v3));
  sub_1D1741A30(v2 + v1, &qword_1EC648E20, &unk_1D1E911D8);
  v4 = _s12WaitingStateVMa(0);
  (*(*(v4 - 8) + 56))(v2 + v1, 1, 1, v4);
  os_unfair_lock_unlock((v2 + v3));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D1A027AC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  v3 = (*(v0 + 80) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v2 + v3));
  sub_1D1741A30(v2 + v1, &qword_1EC648E20, &unk_1D1E911D8);
  v4 = _s12WaitingStateVMa(0);
  (*(*(v4 - 8) + 56))(v2 + v1, 1, 1, v4);
  os_unfair_lock_unlock((v2 + v3));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D1A02898(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648E20, &unk_1D1E911D8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = _s12WaitingStateVMa(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1741C08(a1, v6, &qword_1EC648E20, &unk_1D1E911D8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D1741A30(a1, &qword_1EC648E20, &unk_1D1E911D8);
    sub_1D1741A30(v6, &qword_1EC648E20, &unk_1D1E911D8);
    v11 = *(v7 + 20);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
    (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
    *a1 = a2;
    (*(v8 + 56))(a1, 0, 1, v7);
  }

  else
  {
    sub_1D1A053A4(v6, v10);
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_1D1E6884C();
    MEMORY[0x1D3890F70](0xD000000000000073, 0x80000001D1EC2D60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648E10, &unk_1D1E911A8);
    v14 = sub_1D1E6760C();
    MEMORY[0x1D3890F70](v14);

    v15 = v19;
    v16 = v20;
    v19 = 0;
    v20 = 0xE000000000000000;

    sub_1D1E6884C();
    MEMORY[0x1D3890F70](0xD000000000000036, 0x80000001D1EC2DE0);
    v17 = sub_1D1E6760C();
    MEMORY[0x1D3890F70](v17);

    MEMORY[0x1D3890F70](8250, 0xE200000000000000);
    MEMORY[0x1D3890F70](v15, v16);

    sub_1D1E66A8C();

    sub_1D1A05408();
    swift_allocError();
    *v18 = v15;
    v18[1] = v16;
    swift_willThrow();
    return sub_1D1A0545C(v10);
  }
}

uint64_t sub_1D1A02C10(uint64_t a1, uint64_t a2)
{
  v94 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6486D8, &qword_1D1E91190);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v78[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648E20, &unk_1D1E911D8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v78[-v8];
  v10 = _s12WaitingStateVMa(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v78[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D1741C08(a1, v9, &qword_1EC648E20, &unk_1D1E911D8);
  v93 = v11;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1D1741A30(v9, &qword_1EC648E20, &unk_1D1E911D8);
  }

  v80 = v10;
  v81 = v6;
  v82 = a1;
  v84 = v2;
  sub_1D1A053A4(v9, v13);
  v83 = v13;
  v15 = *v13;
  v16 = *v13 + 64;
  v17 = 1 << *(*v13 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(*v13 + 64);
  v96 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_mockEndpoints;
  v20 = (v17 + 63) >> 6;

  v21 = 0;
  v22 = v94;
  v95 = v20;
  v85 = v16;
  v86 = v15;
  if (!v19)
  {
    goto LABEL_9;
  }

LABEL_13:
  while (2)
  {
    while (1)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v25 = v24 | (v21 << 6);
      v26 = *(*(v15 + 48) + 2 * v25);
      v27 = *(*(v15 + 56) + 8 * v25);
      v28 = v96;
      swift_beginAccess();
      v29 = *(v22 + v28);
      if (*(v29 + 16))
      {
        v30 = sub_1D171D15C(v26);
        if (v31)
        {
          break;
        }
      }

      result = swift_endAccess();
      v20 = v95;
      if (!v19)
      {
        goto LABEL_9;
      }
    }

    v79 = v26;
    v32 = *(*(v29 + 56) + 16 * v30);
    swift_endAccess();
    v33 = v27 + 64;
    v34 = 1 << *(v27 + 32);
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v36 = v35 & *(v27 + 64);
    v37 = (v34 + 63) >> 6;

    v38 = 0;
    v87 = v32;
    v88 = v27;
    v89 = v37;
    if (v36)
    {
LABEL_25:
      while (1)
      {
        v40 = __clz(__rbit64(v36)) | (v38 << 6);
        v41 = *(v27 + 56);
        v42 = *(v27 + 48) + 8 * v40;
        v97 = *v42;
        v110 = *(v42 + 4);
        sub_1D17417AC(v41 + 40 * v40, v101);
        if (v102 == 255)
        {
          break;
        }

        v36 &= v36 - 1;
        v108[0] = v101[0];
        v108[1] = v101[1];
        v109 = v102;
        if (*(v32 + 16) && (v92 = v110, v43 = sub_1D171D278(v110), (v44 & 1) != 0))
        {
          v45 = (*(v32 + 56) + 16 * v43);
          v46 = *v45;
          v47 = v45[1];
          ObjectType = swift_getObjectType();
          v90 = *(v47 + 16);
          swift_unknownObjectRetain();
          v91 = v46;
          v49 = v90(ObjectType, v47);
          if (*(v49 + 16) && (v50 = sub_1D171D4E0(v97), (v51 & 1) != 0))
          {
            sub_1D17417AC(*(v49 + 56) + 40 * v50, v106);
          }

          else
          {

            memset(v106, 0, sizeof(v106));
            v107 = -1;
          }

          v37 = v89;
          sub_1D17417AC(v108, v105);
          sub_1D1741C08(v106, v101, &qword_1EC648B70, &qword_1D1E90DF0);
          sub_1D1741C08(v105, v103, &qword_1EC648B70, &qword_1D1E90DF0);
          if (v102 == 255)
          {
            sub_1D1741A30(v105, &qword_1EC648B70, &qword_1D1E90DF0);
            if (v104 != 255)
            {
              goto LABEL_49;
            }

            swift_unknownObjectRelease();
            sub_1D1741A30(v101, &qword_1EC648B70, &qword_1D1E90DF0);
          }

          else
          {
            sub_1D1741C08(v101, v100, &qword_1EC648B70, &qword_1D1E90DF0);
            if (v104 == 255)
            {

              sub_1D1741A30(v105, &qword_1EC648B70, &qword_1D1E90DF0);
              sub_1D17805D8(v100);
              goto LABEL_50;
            }

            v98[0] = v103[0];
            v98[1] = v103[1];
            v99 = v104;
            LODWORD(v90) = sub_1D19F5CA8(v100, v98);
            sub_1D17805D8(v98);
            sub_1D1741A30(v105, &qword_1EC648B70, &qword_1D1E90DF0);
            sub_1D17805D8(v100);
            sub_1D1741A30(v101, &qword_1EC648B70, &qword_1D1E90DF0);
            if ((v90 & 1) == 0)
            {

              goto LABEL_51;
            }

            swift_unknownObjectRelease();
          }

          sub_1D1741A30(v106, &qword_1EC648B70, &qword_1D1E90DF0);
          sub_1D17805D8(v108);
          v32 = v87;
          v27 = v88;
          if (!v36)
          {
            goto LABEL_21;
          }
        }

        else
        {
          sub_1D17805D8(v108);
          if (!v36)
          {
            goto LABEL_21;
          }
        }
      }

LABEL_40:

      v16 = v85;
      v15 = v86;
      v22 = v94;
      v20 = v95;
      if (v19)
      {
        continue;
      }

      while (1)
      {
LABEL_9:
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
          return result;
        }

        if (v23 >= v20)
        {
          break;
        }

        v19 = *(v16 + 8 * v23);
        ++v21;
        if (v19)
        {
          v21 = v23;
          goto LABEL_13;
        }
      }

      v52 = v82;
      sub_1D1741A30(v82, &qword_1EC648E20, &unk_1D1E911D8);
      sub_1D1E66A8C();
      v54 = v80;
      v53 = v81;
      v55 = v83;
      sub_1D1741C08(&v83[*(v80 + 20)], v81, &qword_1EC6486D8, &qword_1D1E91190);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
      v57 = *(v56 - 8);
      if ((*(v57 + 48))(v53, 1, v56) == 1)
      {
        sub_1D1A0545C(v55);
        sub_1D1741A30(v53, &qword_1EC6486D8, &qword_1D1E91190);
      }

      else
      {
        sub_1D1E67D6C();
        sub_1D1A0545C(v55);
        (*(v57 + 8))(v53, v56);
      }

      return (*(v93 + 56))(v52, 1, 1, v54);
    }

    else
    {
LABEL_21:
      while (1)
      {
        v39 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v39 >= v37)
        {
          goto LABEL_40;
        }

        v36 = *(v33 + 8 * v39);
        ++v38;
        if (v36)
        {
          v38 = v39;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_49:

LABEL_50:
      sub_1D1741A30(v101, &qword_1EC648E48, &unk_1D1E91230);
LABEL_51:
      v58 = MTRAttributeNameForID();
      if (v58)
      {
        v59 = v58;
        v60 = sub_1D1E6781C();
        v62 = v61;
      }

      else
      {
        v60 = 0;
        v62 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1D1E74700;
      LOBYTE(v101[0]) = v92;
      v64 = sub_1D1E6789C();
      v66 = v65;
      v67 = MEMORY[0x1E69E6158];
      *(v63 + 56) = MEMORY[0x1E69E6158];
      v68 = sub_1D1757D20();
      v69 = v68;
      *(v63 + 32) = v64;
      *(v63 + 40) = v66;
      *(v63 + 96) = v67;
      *(v63 + 104) = v68;
      v70 = 0x6E776F6E6B6E75;
      if (v62)
      {
        v70 = v60;
      }

      v71 = 0xE700000000000000;
      if (v62)
      {
        v71 = v62;
      }

      *(v63 + 64) = v68;
      *(v63 + 72) = v70;
      *(v63 + 80) = v71;
      sub_1D17417AC(v108, v101);
      v72 = sub_1D1E6789C();
      *(v63 + 136) = v67;
      *(v63 + 144) = v69;
      *(v63 + 112) = v72;
      *(v63 + 120) = v73;
      sub_1D1741C08(v106, v101, &qword_1EC648B70, &qword_1D1E90DF0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648B70, &qword_1D1E90DF0);
      v74 = sub_1D1E6789C();
      *(v63 + 176) = v67;
      *(v63 + 184) = v69;
      v75 = MEMORY[0x1E69E75F8];
      *(v63 + 152) = v74;
      *(v63 + 160) = v76;
      v77 = MEMORY[0x1E69E7660];
      *(v63 + 216) = v75;
      *(v63 + 224) = v77;
      *(v63 + 192) = v79;
      sub_1D1E66A8C();
      swift_unknownObjectRelease();

      sub_1D1741A30(v106, &qword_1EC648B70, &qword_1D1E90DF0);
      sub_1D17805D8(v108);
      return sub_1D1A0545C(v83);
    }
  }
}

uint64_t sub_1D1A0354C(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a1;
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  *(v4 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A035EC, 0, 0);
}

uint64_t sub_1D1A035EC()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[3];
  v4 = sub_1D1E67E7C();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;

  v7 = MEMORY[0x1E69E7CA8];
  sub_1D1A02010(v1, &unk_1D1E911F0, v6, MEMORY[0x1E69E7CA8] + 8);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  v5(v1, 1, 1, v4);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  sub_1D1A02010(v1, &unk_1D1E91200, v8, v7 + 8);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  v9 = swift_task_alloc();
  v0[6] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648E28, &unk_1D1E9CB30);
  *v9 = v0;
  v9[1] = sub_1D1A037F8;

  return MEMORY[0x1EEE6DAC8](v0 + 9, 0, 0, v10);
}

uint64_t sub_1D1A037F8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1D1A03B0C;
  }

  else
  {
    v2 = sub_1D1A0390C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1A0390C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  sub_1D1E67FFC();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1D1A039F4;

  return sub_1D1A047E0(0, 0);
}

uint64_t sub_1D1A039F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D1A03B0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1A03B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D1A03B90, 0, 0);
}

uint64_t sub_1D1A03B90()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1D1A03C68;
  v2 = v0[2];
  v3 = v0[3];
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v2, &unk_1D1E91220, v3, sub_1D1A05378, v3, 0, 0, v4);
}

uint64_t sub_1D1A03C68()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1A03D9C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D1A03DB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1A03DD4, 0, 0);
}

uint64_t sub_1D1A03DD4()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1D1A03EAC;
  v2 = v0[2];
  v3 = v0[3];
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v2, 0, 0, 0xD000000000000013, 0x80000001D1EC2D40, sub_1D1A05380, v3, v4);
}

uint64_t sub_1D1A03EAC()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1A05514, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_1D1A03FE0(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v4));
  sub_1D1A05388(a2 + v3);
  os_unfair_lock_unlock((a2 + v4));
}

uint64_t sub_1D1A04078(uint64_t a1, uint64_t a2)
{
  v4 = _s12WaitingStateVMa(0);
  result = (*(*(v4 - 8) + 48))(a1, 1, v4);
  if (!result)
  {
    v6 = *(v4 + 20);
    sub_1D1741A30(a1 + v6, &qword_1EC6486D8, &qword_1D1E91190);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1 + v6, a2, v7);
    return (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  return result;
}

void sub_1D1A04194(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - v4;
  sub_1D1E66A8C();
  v6 = a1 + *(*a1 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*a1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a1 + v7));
  v8 = _s12WaitingStateVMa(0);
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v6, 1, v8))
  {
    v10 = *(v8 + 20);
    if (!(*(v3 + 48))(v6 + v10, 1, v2))
    {
      (*(v3 + 16))(v5, v6 + v10, v2);
      sub_1D1E67D8C();
      sub_1D1A054B8(&qword_1EC6486C8, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
      v11 = swift_allocError();
      sub_1D1E6759C();
      v12[1] = v11;
      sub_1D1E67D5C();
      (*(v3 + 8))(v5, v2);
    }
  }

  sub_1D1741A30(v6, &qword_1EC648E20, &unk_1D1E911D8);
  (*(v9 + 56))(v6, 1, 1, v8);
  os_unfair_lock_unlock((a1 + v7));
}

uint64_t sub_1D1A04438(double a1)
{
  *(v1 + 16) = a1;
  v2 = sub_1D1E68A4C();
  *(v1 + 24) = v2;
  *(v1 + 32) = *(v2 - 8);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A044F8, 0, 0);
}

uint64_t sub_1D1A044F8()
{
  v1 = sub_1D1E693AC();
  v3 = v2;
  sub_1D1E6912C();
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1D1A045D4;

  return sub_1D1A01910(v1, v3, 0, 0, 1);
}

uint64_t sub_1D1A045D4()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *v1;
  *(v5 + 56) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1A0477C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1D1A0477C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1A047E0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_1D1E67D4C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D1A04874, v4, v6);
}

uint64_t sub_1D1A04874()
{
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  if (sub_1D1E67FEC())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648E28, &unk_1D1E9CB30);
    *v3 = v0;
    v3[1] = sub_1D1A049AC;
    v5 = *(v0 + 24);
    v6 = *(v0 + 16);

    return MEMORY[0x1EEE6DAC8](v0 + 96, v6, v5, v4);
  }
}

uint64_t sub_1D1A049AC()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1D1A04BF8;
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1D1A04AC8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D1A04AC8()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 72);
    if (sub_1D1E67FEC())
    {
      if (v1)
      {
        swift_willThrow();
      }

      v2 = *(v0 + 8);

      return v2();
    }

    *(v0 + 72) = v1;
  }

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648E28, &unk_1D1E9CB30);
  *v4 = v0;
  v4[1] = sub_1D1A049AC;
  v6 = *(v0 + 24);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DAC8](v0 + 96, v7, v6, v5);
}

uint64_t sub_1D1A04BF8()
{
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  if (sub_1D1E67FEC())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[9] = v1;
    v4 = swift_task_alloc();
    v0[10] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648E28, &unk_1D1E9CB30);
    *v4 = v0;
    v4[1] = sub_1D1A049AC;
    v6 = v0[3];
    v7 = v0[2];

    return MEMORY[0x1EEE6DAC8](v0 + 12, v7, v6, v5);
  }
}

void *sub_1D1A04D34(uint64_t a1)
{
  v31 = sub_1D18DA3B8(MEMORY[0x1E69E7CC0]);
  v32 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (v7 << 9) | (8 * v9);
    v11 = *(*(v32 + 56) + v10);
    v12 = *(*(v32 + 48) + v10);
    swift_bridgeObjectRetain_n();
    v13 = v12;
    v14 = [v13 attribute];
    v15 = [v14 unsignedIntValue];

    v16 = v13;
    v17 = [v16 cluster];
    LODWORD(v14) = [v17 unsignedIntValue];

    ClusterKind.init(rawValue:)(v14);
    v18 = v34[0];
    if (v34[0] == 30)
    {
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v19 = sub_1D18A7A4C(v11);

      sub_1D19F4834(v19, v34);
      v20 = [v16 endpoint];

      v21 = [v20 unsignedShortValue];
      sub_1D1741C08(v34, v33, &qword_1EC648B70, &qword_1D1E90DF0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1D171D15C(v21);
      v23 = v31[2];
      v24 = (v22 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        goto LABEL_23;
      }

      if (v31[3] >= v25)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v22)
          {
            goto LABEL_18;
          }

LABEL_17:
          sub_1D18DA4D4(MEMORY[0x1E69E7CC0]);
          sub_1D19DD7DC();
          goto LABEL_18;
        }

        v29 = v22;
        sub_1D173B100();
        if ((v29 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v28 = v22;
        sub_1D172C2A4(v25, isUniquelyReferenced_nonNull_native);
        sub_1D171D15C(v21);
        if ((v28 & 1) != (v26 & 1))
        {
          goto LABEL_24;
        }

        if ((v28 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

LABEL_18:
      sub_1D1B0EBDC(v33, v15 | (v18 << 32));

      sub_1D1741A30(v34, &qword_1EC648B70, &qword_1D1E90DF0);
    }
  }

  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return v31;
    }

    v5 = *(v2 + 8 * v7);
    ++v8;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D1A050AC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D17C4BFC;

  return sub_1D1A0354C(v7, a1, a2, v6);
}

uint64_t sub_1D1A0516C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D1A03B70(a1, v4, v5, v6);
}

uint64_t sub_1D1A05220()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D17C4CF0;

  return sub_1D1A04438(v2);
}

uint64_t sub_1D1A052DC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D17C4CF0;

  return sub_1D1A03DB4(a1, v1);
}

uint64_t sub_1D1A053A4(uint64_t a1, uint64_t a2)
{
  v4 = _s12WaitingStateVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D1A05408()
{
  result = qword_1EC648E40;
  if (!qword_1EC648E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648E40);
  }

  return result;
}

uint64_t sub_1D1A0545C(uint64_t a1)
{
  v2 = _s12WaitingStateVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1A054B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1A05518(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D178D574(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 40)
    {
      sub_1D17419CC(i, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643170, &qword_1D1E7A060);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643180, &unk_1D1E71CD0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_1D1742190(v8, v11);
      sub_1D1742190(v11, v10);
      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D178D574((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      sub_1D1742190(v10, v3 + 40 * v6 + 32);
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_1D1741A30(v8, &qword_1EC6456C0, &unk_1D1E7A3F0);
    return 0;
  }

  return v3;
}

uint64_t sub_1D1A0569C(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1D1E6899C();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1D1741970(i, v5);
    sub_1D1741B10(0, &qword_1EC647398, 0x1E696F6A8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1D1E6896C();
    sub_1D1E689AC();
    sub_1D1E689BC();
    sub_1D1E6897C();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_1D1A057A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1D178D5B4(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1D1741970(i, v9);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D178D5B4((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 4 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1D1A058B4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D1E6873C())
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1D178D4BC(0, i & ~(i >> 63), 0);
    v4 = v8;
    if (v2)
    {
      v2 = sub_1D1E6873C();
      if (!v2)
      {
        return v4;
      }
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        return v4;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(a1 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    ;
  }

  v5 = MEMORY[0x1D3891EF0](0, a1);
LABEL_10:
  v6 = v5;
  sub_1D1E6822C();

  return 0;
}

uint64_t sub_1D1A05A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = a7;
  v45 = a8;
  v39 = a6;
  v38 = a5;
  v42 = a3;
  v43 = a4;
  v40 = a1;
  v41 = a2;
  v8 = sub_1D1E674FC();
  v49 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D1E6753C();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D1E6755C();
  v37 = v13;
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v35 - v18;
  v20 = sub_1D1E6750C();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1741B10(0, &qword_1EC642608, 0x1E69E9610);
  (*(v21 + 104))(v23, *MEMORY[0x1E69E7F98], v20);
  v36 = sub_1D1E683CC();
  (*(v21 + 8))(v23, v20);
  sub_1D1E6754C();
  sub_1D1E6756C();
  v24 = *(v14 + 8);
  v24(v17, v13);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  v27 = v40;
  v28 = v41;
  v26[2] = v25;
  v26[3] = v27;
  v29 = v42;
  v30 = v43;
  v26[4] = v28;
  v26[5] = v29;
  v26[6] = v30;
  aBlock[4] = v44;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1845F94;
  aBlock[3] = v45;
  v31 = _Block_copy(aBlock);

  sub_1D1E6751C();
  v50 = MEMORY[0x1E69E7CC0];
  sub_1D1A08FB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648EA0, &unk_1D1EB0F00);
  sub_1D1A09008();
  v32 = v46;
  sub_1D1E6868C();
  v33 = v36;
  MEMORY[0x1D38919D0](v19, v12, v32, v31);
  _Block_release(v31);

  (*(v49 + 8))(v32, v8);
  (*(v47 + 8))(v12, v48);
  v24(v19, v37);
}

void sub_1D1A05FE8(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(uint64_t *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC13HomeDataModel21MockRVCRunModeCluster_attributeStates;
    swift_beginAccess();
    v14 = *&v7[v8];

    a4(&v14);
    *&v7[v8] = v14;

    if ((v7[OBJC_IVAR____TtC13HomeDataModel21MockRVCRunModeCluster_lastKnownEndpointID + 2] & 1) == 0)
    {
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = *(v9 + OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_attributeWaitingState);
        v13 = MEMORY[0x1EEE9AC00](v9);
        v11 = *(*v10 + *MEMORY[0x1E69E6B68] + 16);
        v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v10 + v12));
        sub_1D1A09280(v10 + v11);
        os_unfair_lock_unlock((v10 + v12));
      }
    }

    (a2)(0);
  }

  else
  {
    a2();
  }
}

void sub_1D1A061B4(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(uint64_t *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC13HomeDataModel23MockRVCCleanModeCluster_attributeStates;
    swift_beginAccess();
    v14 = *&v7[v8];

    a4(&v14);
    *&v7[v8] = v14;

    if ((v7[OBJC_IVAR____TtC13HomeDataModel23MockRVCCleanModeCluster_lastKnownEndpointID + 2] & 1) == 0)
    {
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = *(v9 + OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_attributeWaitingState);
        v13 = MEMORY[0x1EEE9AC00](v9);
        v11 = *(*v10 + *MEMORY[0x1E69E6B68] + 16);
        v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v10 + v12));
        sub_1D1A09280(v10 + v11);
        os_unfair_lock_unlock((v10 + v12));
      }
    }

    (a2)(0);
  }

  else
  {
    a2();
  }
}

void sub_1D1A06380(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(uint64_t *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_attributeStates;
    swift_beginAccess();
    v14 = *&v7[v8];

    a4(&v14);
    *&v7[v8] = v14;

    if ((v7[OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_lastKnownEndpointID + 2] & 1) == 0)
    {
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = *(v9 + OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_attributeWaitingState);
        v13 = MEMORY[0x1EEE9AC00](v9);
        v11 = *(*v10 + *MEMORY[0x1E69E6B68] + 16);
        v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v10 + v12));
        sub_1D1A09280(v10 + v11);
        os_unfair_lock_unlock((v10 + v12));
      }
    }

    (a2)(0);
  }

  else
  {
    a2();
  }
}

void sub_1D1A0654C(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(uint64_t *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_attributeStates;
    swift_beginAccess();
    v14 = *&v7[v8];

    a4(&v14);
    *&v7[v8] = v14;

    if ((v7[OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_lastKnownEndpointID + 2] & 1) == 0)
    {
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = *(v9 + OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_attributeWaitingState);
        v13 = MEMORY[0x1EEE9AC00](v9);
        v11 = *(*v10 + *MEMORY[0x1E69E6B68] + 16);
        v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v10 + v12));
        sub_1D1A09280(v10 + v11);
        os_unfair_lock_unlock((v10 + v12));
      }
    }

    (a2)(0);
  }

  else
  {
    a2();
  }
}

void sub_1D1A06718(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(uint64_t *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC13HomeDataModel23MockLevelControlCluster_attributeStates;
    swift_beginAccess();
    v14 = *&v7[v8];

    a4(&v14);
    *&v7[v8] = v14;

    if ((v7[OBJC_IVAR____TtC13HomeDataModel23MockLevelControlCluster_lastKnownEndpointID + 2] & 1) == 0)
    {
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = *(v9 + OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_attributeWaitingState);
        v13 = MEMORY[0x1EEE9AC00](v9);
        v11 = *(*v10 + *MEMORY[0x1E69E6B68] + 16);
        v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v10 + v12));
        sub_1D1A09280(v10 + v11);
        os_unfair_lock_unlock((v10 + v12));
      }
    }

    (a2)(0);
  }

  else
  {
    a2();
  }
}

void sub_1D1A068E4(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(uint64_t *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC13HomeDataModel23MockColorControlCluster_attributeStates;
    swift_beginAccess();
    v14 = *&v7[v8];

    a4(&v14);
    *&v7[v8] = v14;

    if ((v7[OBJC_IVAR____TtC13HomeDataModel23MockColorControlCluster_lastKnownEndpointID + 2] & 1) == 0)
    {
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = *(v9 + OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_attributeWaitingState);
        v13 = MEMORY[0x1EEE9AC00](v9);
        v11 = *(*v10 + *MEMORY[0x1E69E6B68] + 16);
        v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v10 + v12));
        sub_1D1A09280(v10 + v11);
        os_unfair_lock_unlock((v10 + v12));
      }
    }

    (a2)(0);
  }

  else
  {
    a2();
  }
}

void sub_1D1A06AB0(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(uint64_t *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC13HomeDataModel22MockServiceAreaCluster_attributeStates;
    swift_beginAccess();
    v14 = *&v7[v8];

    a4(&v14);
    *&v7[v8] = v14;

    if ((v7[OBJC_IVAR____TtC13HomeDataModel22MockServiceAreaCluster_lastKnownEndpointID + 2] & 1) == 0)
    {
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = *(v9 + OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_attributeWaitingState);
        v13 = MEMORY[0x1EEE9AC00](v9);
        v11 = *(*v10 + *MEMORY[0x1E69E6B68] + 16);
        v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v10 + v12));
        sub_1D19F4074(v10 + v11);
        os_unfair_lock_unlock((v10 + v12));
      }
    }

    (a2)(0);
  }

  else
  {
    a2();
  }
}

uint64_t sub_1D1A06C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648EA8, &qword_1D1E91460);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  (*(v6 + 16))(&v13 - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;

  sub_1D1A05A9C(sub_1D1A0913C, v10, sub_1D1A09158, v11, &unk_1F4D76EC0, &unk_1F4D76EE8, sub_1D1A08F98, &block_descriptor_69);
}

unint64_t sub_1D1A06E2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1D178D5D4(0, v2, 0);
    v3 = v15;
    v5 = (a2 + 32);
    v6 = *(v15 + 16);
    v7 = 40 * v6;
    do
    {
      v9 = *v5++;
      v8 = v9;
      v16 = v3;
      v10 = *(v3 + 24);
      v11 = v6 + 1;
      if (v6 >= v10 >> 1)
      {
        sub_1D178D5D4((v10 > 1), v6 + 1, 1);
        v3 = v16;
      }

      *(v3 + 16) = v11;
      v12 = v3 + v7;
      *(v12 + 32) = v8;
      v13 = v17;
      *(v12 + 56) = v18;
      *(v12 + 40) = v13;
      *(v12 + 64) = 2;
      v7 += 40;
      v6 = v11;
      --v2;
    }

    while (v2);
  }

  *&v17 = v3;
  v19 = 5;
  return sub_1D1B0DAF8(&v17, 2);
}

uint64_t sub_1D1A070DC(void *a1, uint64_t a2, void *a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    a2 = sub_1D1E67C1C();
  }

  v5[6] = a2;
  v10 = a1;
  v11 = a3;
  a5;
  v12 = swift_task_alloc();
  v5[7] = v12;
  *v12 = v5;
  v12[1] = sub_1D19EE938;

  return sub_1D1A087E0(v10, a2);
}

uint64_t sub_1D1A071FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648E98, &unk_1D1E91420);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  (*(v6 + 16))(&v14 - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  v12 = a3;
  sub_1D1A05A9C(sub_1D1A08F28, v10, sub_1D1A08F44, v11, &unk_1F4D76EC0, &unk_1F4D76EE8, sub_1D1A08F98, &block_descriptor_69);
}

uint64_t sub_1D1A07558(void *a1, uint64_t a2, void *a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    a2 = sub_1D1E67C1C();
  }

  v5[6] = a2;
  v10 = a1;
  v11 = a3;
  a5;
  v12 = swift_task_alloc();
  v5[7] = v12;
  *v12 = v5;
  v12[1] = sub_1D19F40A0;

  return sub_1D1A08BA0(v10, a2);
}

uint64_t sub_1D1A07678(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A0769C, 0, 0);
}

uint64_t sub_1D1A0769C()
{
  v19 = v0;
  sub_1D17419CC(*(v0 + 168), v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 144);
    *(v0 + 184) = v1;
    v2 = *(v0 + 152);
    if (v2 == 2)
    {
      v3 = *(v0 + 176);
      v4 = [objc_allocWithZone(MEMORY[0x1E696F6B0]) init];
      *(v0 + 192) = v4;
      sub_1D18F95E0(v1);
      v5 = sub_1D1E67BFC();

      [v4 setNewAreas_];

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_1D1A07994;
      v6 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647D18, &qword_1D1E88FC0);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1D17AFE50;
      *(v0 + 104) = &block_descriptor_32;
      *(v0 + 112) = v6;
      [v3 selectAreasWithParams:v4 expectedValues:0 expectedValueInterval:0 completion:v0 + 80];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    v10 = *(v0 + 176);
    v17 = &type metadata for StaticRVCClusterGroup.Command;
    v18 = sub_1D18FA450();
    v15 = v1;
    v16 = v2;
    sub_1D19EDF88();
    swift_allocError();
    v12 = v11;
    sub_1D19637F0(v1, v2);
    sub_1D19F67F8(v10, &off_1EEC1E678, &v15, v12);
    swift_willThrow();
    sub_1D19630E4(v1, v2);
  }

  else
  {
    sub_1D17419CC(*(v0 + 168), v0 + 80);
    sub_1D19EDF88();
    swift_allocError();
    v8 = v7;
    v9 = swift_unknownObjectRetain();
    sub_1D19F67F8(v9, &off_1EEC1E678, (v0 + 80), v8);
    swift_willThrow();
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D1A07994()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1D1A07B44;
  }

  else
  {
    v2 = sub_1D1A07AA4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1A07AA4()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[20];
  v4 = v0[18];
  v3[3] = sub_1D1741B10(0, &qword_1EC647D20, 0x1E696F6B8);

  sub_1D19630E4(v2, 2);
  *v3 = v4;
  v5 = v0[1];

  return v5();
}

uint64_t sub_1D1A07B44(uint64_t a1)
{
  v2 = v1[24];
  v3 = v1[23];
  swift_willThrow();

  sub_1D19630E4(v3, 2);
  v4 = v1[1];

  return v4();
}

id sub_1D1A07BF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockServiceAreaCluster();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D1A07D54(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D1A07D9C(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel22MockServiceAreaCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1D1A07DCC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4BFC;

  return sub_1D1A07678(a1, a2);
}

uint64_t sub_1D1A07E8C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1D17C4CF0;

  return sub_1D1A07558(v2, v3, v4, v5, v6);
}

uint64_t sub_1D1A07F54(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1D17C4CF0;

  return v6();
}

uint64_t sub_1D1A0803C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1D17C4BFC;

  return v7();
}

uint64_t sub_1D1A08124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1D1A08410(a3, v23 - v10);
  v12 = sub_1D1E67E7C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D1741A30(v11, &unk_1EC6442C0, &qword_1D1E741A0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1D1E67E6C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1D1E67D4C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1D1E678CC() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);

    return v21;
  }

LABEL_8:
  sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1D1A08410(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1A08480(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D1A08578;

  return v6(a1);
}

uint64_t sub_1D1A08578()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D1A08670(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return sub_1D1A08480(a1, v4);
}

uint64_t sub_1D1A08728(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4BFC;

  return sub_1D1A08480(a1, v4);
}

uint64_t sub_1D1A087E0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A08804, 0, 0);
}

uint64_t sub_1D1A08804()
{
  v1 = *(v0 + 72);
  v2 = [*(v0 + 56) getNewAreas];
  v3 = sub_1D1E67C1C();

  v4 = sub_1D1A057A8(v3);
  *(v0 + 80) = v4;

  v5 = v1 + OBJC_IVAR____TtC13HomeDataModel22MockServiceAreaCluster_commandObserver;
  v6 = *(v1 + OBJC_IVAR____TtC13HomeDataModel22MockServiceAreaCluster_commandObserver);
  if (v6)
  {
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v5 + 8);

    v10 = [v8 getNewAreas];
    v11 = sub_1D1E67C1C();

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648300, &qword_1D1E8BEE8);
    *(v0 + 16) = v11;
    *(v0 + 40) = v12;
    v6(0, v7, v0 + 16);
    sub_1D19EDFDC(v6, v9);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_1D19F6AB0(*(v0 + 64));
  }

  v15 = *(v0 + 72);
  if (!v4)
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v16 = swift_task_alloc();
  *(v0 + 88) = v16;
  *(v16 + 16) = v15;
  *(v16 + 24) = v4;
  v17 = swift_task_alloc();
  *(v0 + 96) = v17;
  v18 = sub_1D1741B10(0, &qword_1EC647D20, 0x1E696F6B8);
  *v17 = v0;
  v17[1] = sub_1D1A08A40;

  return MEMORY[0x1EEE6DDE0](v0 + 48, 0, 0, 0xD000000000000037, 0x80000001D1EC3030, sub_1D1A09134, v16, v18);
}

uint64_t sub_1D1A08A40()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1A08B84, 0, 0);
}

uint64_t sub_1D1A08BA0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A08BC4, 0, 0);
}

uint64_t sub_1D1A08BC4()
{
  v1 = *(v0 + 72);
  v2 = [*(v0 + 56) skippedArea];
  *(v0 + 80) = v2;
  v3 = v1 + OBJC_IVAR____TtC13HomeDataModel22MockServiceAreaCluster_commandObserver;
  v4 = *(v1 + OBJC_IVAR____TtC13HomeDataModel22MockServiceAreaCluster_commandObserver);
  if (v4)
  {
    v5 = *(v0 + 64);
    v6 = *(v3 + 8);
    v7 = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    *(v0 + 16) = v2;
    *(v0 + 40) = v7;
    sub_1D18AFEFC(v4);
    v8 = v2;
    v4(2, v5, v0 + 16);
    sub_1D19EDFDC(v4, v6);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_1D19F6AB0(*(v0 + 64));
  }

  v11 = *(v0 + 72);
  v12 = swift_task_alloc();
  *(v0 + 88) = v12;
  *(v12 + 16) = v11;
  *(v12 + 24) = v2;
  v13 = swift_task_alloc();
  *(v0 + 96) = v13;
  v14 = sub_1D1741B10(0, &qword_1EC647D10, 0x1E696F6C8);
  *v13 = v0;
  v13[1] = sub_1D1A08DA0;

  return MEMORY[0x1EEE6DDE0](v0 + 48, 0, 0, 0xD000000000000030, 0x80000001D1EC2FF0, sub_1D1A08F20, v12, v14);
}

uint64_t sub_1D1A08DA0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1A08EB8, 0, 0);
}

uint64_t sub_1D1A08EB8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1D1A08F44()
{
  v2[0] = [*(v0 + 16) unsignedIntegerValue];
  v3 = 2;
  return sub_1D1B0DAF8(v2, 3);
}

unint64_t sub_1D1A08FB0()
{
  result = qword_1EE07A040;
  if (!qword_1EE07A040)
  {
    sub_1D1E674FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A040);
  }

  return result;
}

unint64_t sub_1D1A09008()
{
  result = qword_1EE079E30;
  if (!qword_1EE079E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC648EA0, &unk_1D1EB0F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE079E30);
  }

  return result;
}

uint64_t sub_1D1A0906C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1D17C4BFC;

  return sub_1D1A070DC(v2, v3, v4, v5, v6);
}

uint64_t block_copy_helper_108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_65Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1A092C4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for EndpointPath(0);
  v2[8] = swift_task_alloc();
  v3 = sub_1D1E66A7C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A093B4, 0, 0);
}

uint64_t sub_1D1A093B4()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[5];
  v6 = *(v5 + *(v0[7] + 20));
  sub_1D1A0AF34(v5, v4, type metadata accessor for EndpointPath);
  (*(v2 + 32))(v1, v4, v3);
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_1D1A094A8;
  v8 = v0[11];

  return sub_1D1A0A508(v6, v8);
}

uint64_t sub_1D1A094A8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[11];
  v6 = v3[10];
  v7 = v3[9];
  v4[13] = a1;

  (*(v6 + 8))(v5, v7);

  return MEMORY[0x1EEE6DFA0](sub_1D1A09610, 0, 0);
}

uint64_t sub_1D1A09610()
{
  if (v0[13])
  {
    v1 = v0[6];
    v2 = v0[7];
    v3 = v0[4];
    v4 = v0[5];
    ObjectType = swift_getObjectType();
    v6 = *(v3 + 48);
    v7 = *(v4 + *(v2 + 24));
    swift_unknownObjectRetain();
    v8 = v6(v1, v7, v1, ObjectType, v3);
    swift_unknownObjectRelease_n();
  }

  else
  {
    v8 = 0;
  }

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_1D1A09704(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = type metadata accessor for EndpointPath(0);
  v1[7] = swift_task_alloc();
  v2 = sub_1D1E66A7C();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A097F4, 0, 0);
}

uint64_t sub_1D1A097F4()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = *(v5 + *(v0[6] + 20));
  sub_1D1A0AF34(v5, v4, type metadata accessor for EndpointPath);
  (*(v2 + 32))(v1, v4, v3);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_1D1A098E4;
  v8 = v0[10];

  return sub_1D1A0A508(v6, v8);
}

uint64_t sub_1D1A098E4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[10];
  v6 = v3[9];
  v7 = v3[8];
  v4[12] = a1;

  (*(v6 + 8))(v5, v7);

  return MEMORY[0x1EEE6DFA0](sub_1D1A09A4C, 0, 0);
}

uint64_t sub_1D1A09A4C()
{
  if (v0[12])
  {
    v1 = v0[4];
    ObjectType = swift_getObjectType();
    v3 = (*(v1 + 16))(ObjectType, v1);
    if (v3)
    {
      v4 = v0[5];
      v5 = v3;
      v6 = [v3 accessories];

      sub_1D190A1D0();
      v7 = sub_1D1E67C1C();

      v8 = swift_task_alloc();
      *(v8 + 16) = v4;
      v9 = sub_1D174A6C4(sub_1D1A0AF9C, v8, v7);
      swift_unknownObjectRelease();

      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v9 = 0;
LABEL_6:

  v10 = v0[1];

  return v10(v9);
}

uint64_t MatterDevice.attributeListForCluster(path:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClusterPath(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643378, &qword_1D1E717E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D1E739C0;
  sub_1D1A0AF34(a1, v9, type metadata accessor for ClusterPath);
  v11 = *&v9[*(type metadata accessor for EndpointPath(0) + 24)];
  LOBYTE(v7) = v9[*(v7 + 28)];
  sub_1D19B0B70(v9);
  *(v10 + 32) = v11;
  *(v10 + 34) = 0;
  *(v10 + 35) = v7;
  *(v10 + 36) = 65531;
  *(v10 + 40) = 0;
  (*(a3 + 120))(v14, v10, a2, a3);

  v12 = sub_1D19C52F0(a1, v14[0], v14[1]);

  return v12;
}

uint64_t MatterDevice.primaryDeviceType.getter@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643378, &qword_1D1E717E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D1E739C0;
  *(v4 + 32) = 0x10000;
  *(v4 + 40) = 0;
  (*(a1 + 120))(&v6);

  AttributeValueSet.primaryDeviceType.getter(a2);
}

uint64_t MatterDevice.readAllSupportedAttributes()(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643378, &qword_1D1E717E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D1E739C0;
  *(v4 + 32) = 0x10000;
  *(v4 + 40) = 1;
  v39 = a1;
  v40 = a2;
  v38 = *(a2 + 120);
  v38(&v48);

  v5 = v48;
  v6 = v49;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D1E739C0;
  *(v7 + 32) = 0x10000;
  *(v7 + 40) = 1;
  v54 = v7;
  v45 = v5;
  v48 = v5;
  v49 = v6;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;

  result = DescriptorClusterDecoder.endpointIDs.getter();
  v9 = 0;
  v42 = result + 56;
  v10 = 1 << *(result + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(result + 56);
  v41 = (v10 + 63) >> 6;
  v43 = result;
  v44 = v6;
LABEL_6:
  while (v12)
  {
LABEL_11:
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v15 = *(*(result + 48) + ((v9 << 7) | (2 * v14)));
    if (v15)
    {
      v48 = v45;
      v49 = v6;
      v46 = v15;
      v50 = v15;
      v51 = 0;
      v52 = 0;
      v53 = 0;

      result = DescriptorClusterDecoder.availableClusterKinds.getter();
      v16 = 0;
      v17 = result + 56;
      v47 = result;
      v18 = 1 << *(result + 32);
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v20 = v19 & *(result + 56);
      v21 = (v18 + 63) >> 6;
      while (v20)
      {
LABEL_21:
        v23 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v24 = v23 | (v16 << 6);
        v25 = *(v47 + 48);
        v26 = *(v25 + v24);
        v27 = 40;
        switch(*(v25 + v24))
        {
          case 1:
            goto LABEL_50;
          case 2:
            v27 = 47;
            goto LABEL_50;
          case 3:
            v27 = 46;
            goto LABEL_50;
          case 4:
            v27 = 50;
            goto LABEL_50;
          case 5:
            v27 = 51;
            goto LABEL_50;
          case 6:
            v27 = 54;
            goto LABEL_50;
          case 7:
            v27 = 64;
            goto LABEL_50;
          case 8:
            v27 = 65;
            goto LABEL_50;
          case 9:
            v27 = 62;
            goto LABEL_50;
          case 0xA:
            v27 = 3;
            goto LABEL_50;
          case 0xB:
            v27 = 6;
            goto LABEL_50;
          case 0xC:
            v27 = 8;
            goto LABEL_50;
          case 0xD:
            v27 = 69;
            goto LABEL_50;
          case 0xE:
            v27 = 80;
            goto LABEL_50;
          case 0xF:
            v27 = 59;
            goto LABEL_50;
          case 0x10:
            v27 = 96;
            goto LABEL_50;
          case 0x11:
            v27 = 768;
            goto LABEL_50;
          case 0x12:
            v27 = 512;
            goto LABEL_50;
          case 0x13:
            v27 = 513;
            goto LABEL_50;
          case 0x14:
            v27 = 514;
            goto LABEL_50;
          case 0x15:
            v27 = 516;
            goto LABEL_50;
          case 0x16:
            v27 = 257;
            goto LABEL_50;
          case 0x17:
            v27 = 258;
            goto LABEL_50;
          case 0x18:
            v27 = 97;
            goto LABEL_50;
          case 0x19:
            v27 = 84;
            goto LABEL_50;
          case 0x1A:
            v27 = 85;
            goto LABEL_50;
          case 0x1B:
            v27 = 336;
            goto LABEL_50;
          case 0x1C:
            v27 = 323615747;
            goto LABEL_50;
          case 0x1D:
            v27 = 323615749;
LABEL_50:
            if (qword_1EC6422F0 != -1)
            {
              result = swift_once();
            }

            v28 = off_1EC6493A0;
            if (*(off_1EC6493A0 + 2))
            {
              sub_1D1E6920C();
              sub_1D1E6924C();
              result = sub_1D1E6926C();
              v29 = -1 << v28[32];
              v30 = result & ~v29;
              if ((*&v28[((v30 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v30))
              {
                v31 = ~v29;
LABEL_55:
                v32 = 40;
                switch(*(*(v28 + 6) + v30))
                {
                  case 1:
                    goto LABEL_109;
                  case 2:
                    if (v27 == 47)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 3:
                    if (v27 == 46)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 4:
                    if (v27 == 50)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 5:
                    if (v27 == 51)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 6:
                    if (v27 == 54)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 7:
                    if (v27 == 64)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 8:
                    if (v27 == 65)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 9:
                    if (v27 == 62)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0xA:
                    if (v27 == 3)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0xB:
                    if (v27 == 6)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0xC:
                    if (v27 == 8)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0xD:
                    if (v27 == 69)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0xE:
                    if (v27 == 80)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0xF:
                    if (v27 == 59)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0x10:
                    if (v27 == 96)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0x11:
                    if (v27 == 768)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0x12:
                    if (v27 == 512)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0x13:
                    if (v27 == 513)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0x14:
                    if (v27 == 514)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0x15:
                    if (v27 == 516)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0x16:
                    if (v27 == 257)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0x17:
                    if (v27 == 258)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0x18:
                    if (v27 == 97)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0x19:
                    if (v27 == 84)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0x1A:
                    if (v27 == 85)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0x1B:
                    if (v27 == 336)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0x1C:
                    if (v27 == 323615747)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_110;
                  case 0x1D:
                    v32 = 323615749;
LABEL_109:
                    if (v32 != v27)
                    {
                      goto LABEL_110;
                    }

LABEL_113:
                    v33 = v54;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v33 = sub_1D177E09C(0, *(v33 + 2) + 1, 1, v33);
                    }

                    v35 = *(v33 + 2);
                    v34 = *(v33 + 3);
                    if (v35 >= v34 >> 1)
                    {
                      v33 = sub_1D177E09C((v34 > 1), v35 + 1, 1, v33);
                    }

                    *(v33 + 2) = v35 + 1;
                    v36 = &v33[12 * v35];
                    *(v36 + 16) = v46;
                    v36[34] = 0;
                    v36[35] = v26;
                    *(v36 + 9) = 0;
                    v36[40] = 1;
                    v54 = v33;
                    if (v26 == 19)
                    {
                      v37 = swift_allocObject();
                      *(v37 + 16) = xmmword_1D1E739C0;
                      *(v37 + 32) = 150994944;
                      *(v37 + 40) = 1;
                    }

                    else
                    {
                      v37 = MEMORY[0x1E69E7CC0];
                    }

                    result = sub_1D17A4684(v37);
                    continue;
                  default:
LABEL_110:
                    v30 = (v30 + 1) & v31;
                    if (((*&v28[((v30 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v30) & 1) == 0)
                    {
                      continue;
                    }

                    goto LABEL_55;
                }
              }
            }

            break;
          default:
            continue;
        }
      }

      while (1)
      {
        v22 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v22 >= v21)
        {

          v6 = v44;

          result = v43;
          goto LABEL_6;
        }

        v20 = *(v17 + 8 * v22);
        ++v16;
        if (v20)
        {
          v16 = v22;
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_125;
    }
  }

  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v41)
    {

      (v38)(v54, v39, v40);
    }

    v12 = *(v42 + 8 * v13);
    ++v9;
    if (v12)
    {
      v9 = v13;
      goto LABEL_11;
    }
  }

LABEL_125:
  __break(1u);
  return result;
}

uint64_t sub_1D1A0A508(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = sub_1D1E66A7C();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[7] = v5;
  *v5 = v2;
  v5[1] = sub_1D1A0A610;

  return sub_1D1E3766C(a2);
}

uint64_t sub_1D1A0A610(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A0A710, 0, 0);
}

uint64_t sub_1D1A0A710()
{
  v26 = v0;
  v1 = v0[8];
  if (!v1 || (v2 = HMHome.device(for:)(v0[2]), v4 = v3, v1, !v2))
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v6 = v0[5];
    v5 = v0[6];
    v8 = v0[3];
    v7 = v0[4];
    v9 = sub_1D1E6709C();
    __swift_project_value_buffer(v9, qword_1EE07A0B0);
    (*(v6 + 16))(v5, v8, v7);
    v10 = sub_1D1E6707C();
    v11 = sub_1D1E6833C();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[5];
    v13 = v0[6];
    v15 = v0[4];
    if (v12)
    {
      v16 = v0[2];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 134218242;
      *(v17 + 4) = v16;
      *(v17 + 12) = 2080;
      sub_1D1886B8C();
      v19 = sub_1D1E68FAC();
      v21 = v20;
      (*(v14 + 8))(v13, v15);
      v22 = sub_1D1B1312C(v19, v21, &v25);

      *(v17 + 14) = v22;
      _os_log_impl(&dword_1D16EC000, v10, v11, "Couldn't find matter device for '%llu in %s'", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1D3893640](v18, -1, -1);
      MEMORY[0x1D3893640](v17, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }

    v2 = 0;
    v4 = 0;
  }

  v23 = v0[1];

  return v23(v2, v4);
}

uint64_t dispatch thunk of MatterDevice.performCommand(path:commandID:commandFields:expectedValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 80) + **(a6 + 80));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1D1A0AB6C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1D1A0AB6C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of MatterDevice.wait(forAttributeValues:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v12 = (*(a3 + 128) + **(a3 + 128));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D17C4BFC;
  v10.n128_f64[0] = a4;

  return v12(a1, a2, a3, v10);
}

uint64_t dispatch thunk of MatterDevice.perform(commandGroups:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 136) + **(a4 + 136));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D1A0AFF8;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1D1A0AF34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A0AF9C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1D1E682DC();
  return (v3 == *(v2 + *(type metadata accessor for EndpointPath(0) + 20))) & ~v4;
}

id MTRDevice.identifier.getter()
{
  v1 = [v0 hdm_getNodeID];
  v2 = [v1 unsignedLongLongValue];

  return v2;
}

id MTRDevice.add(_:)(uint64_t a1)
{
  if (qword_1EC6422A8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC6BE160;

  return [v1 addDelegate:a1 queue:v3];
}

uint64_t MTRDevice.readValues(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v46 = a2;
    v45 = MEMORY[0x1EEE9AC00](a1);
    v47 = v2;
    v43[2] = v2;
    v44 = MEMORY[0x1EEE9AC00](v45);
    v5 = v44;
    debug_assert(_:_:file:line:)(sub_1D1A104A8, v6, sub_1D1A10508, v43, "/Library/Caches/com.apple.xbs/Sources/Home/HomeDataModel/Matter/MatterDevice/MTRDevice+MatterDevice.swift", 105, 2, 30);
    *&v50 = MEMORY[0x1E69E7CC0];
    sub_1D1E6899C();
    v7 = objc_opt_self();
    v8 = (v5 + 40);
    do
    {
      v11 = *(v8 - 5);
      v12 = *v8;
      if (*(v8 - 6))
      {
        v13 = 0;
      }

      else
      {
        v13 = sub_1D1E692AC();
      }

      v14 = 0;
      switch(v11)
      {
        case 30:
          break;
        default:
          v14 = sub_1D1E692CC();
          break;
      }

      if (v12)
      {
        v9 = 0;
      }

      else
      {
        v9 = sub_1D1E692CC();
      }

      v10 = [v7 requestPathWithEndpointID:v13 clusterID:v14 attributeID:v9];

      sub_1D1E6896C();
      sub_1D1E689AC();
      sub_1D1E689BC();
      sub_1D1E6897C();
      v8 += 12;
      --v4;
    }

    while (v4);
    sub_1D1741B10(0, &qword_1EC648EB0, 0x1E696F580);
    v15 = sub_1D1E67BFC();

    v16 = v47;
    v17 = [v47 readAttributePaths_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v18 = sub_1D1E67C1C();

    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = 0;
      v21 = MEMORY[0x1E69E7CC0];
      while (v20 < *(v18 + 16))
      {
        v22 = *(v18 + 32 + 8 * v20);

        v23 = [v16 hdm_getNodeID];
        v24 = [v23 unsignedLongLongValue];

        sub_1D18F8630(v22, v24, v48);

        if (*(&v48[0] + 1))
        {
          v50 = v48[0];
          v51 = v48[1];
          v52 = v48[2];
          v53 = v49;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_1D177DF74(0, *(v21 + 2) + 1, 1, v21);
          }

          v26 = *(v21 + 2);
          v25 = *(v21 + 3);
          if (v26 >= v25 >> 1)
          {
            v21 = sub_1D177DF74((v25 > 1), v26 + 1, 1, v21);
          }

          *(v21 + 2) = v26 + 1;
          v27 = &v21[56 * v26];
          v28 = v50;
          v29 = v51;
          v30 = v52;
          *(v27 + 10) = v53;
          *(v27 + 3) = v29;
          *(v27 + 4) = v30;
          *(v27 + 2) = v28;
        }

        else
        {
          sub_1D1741A30(v48, &unk_1EC64A350, &qword_1D1E914C0);
        }

        ++v20;
        v16 = v47;
        if (v19 == v20)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
LABEL_28:

      if (qword_1EE07A0A8 == -1)
      {
        goto LABEL_29;
      }
    }

    swift_once();
LABEL_29:
    v38 = sub_1D1E6709C();
    __swift_project_value_buffer(v38, qword_1EE07A0B0);
    sub_1D1A0B8B8(v16, v21);
    v39 = [v16 hdm_getNodeID];
    v40 = [v39 unsignedLongLongValue];

    return sub_1D18F3358(v40, v21, v46);
  }

  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v31 = sub_1D1E6709C();
  __swift_project_value_buffer(v31, qword_1EE07A0B0);
  v32 = v2;
  v33 = sub_1D1E6707C();
  v34 = sub_1D1E6833C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    v36 = [v32 hdm_getNodeID];
    v37 = [v36 unsignedLongLongValue];

    *(v35 + 4) = v37;
    _os_log_impl(&dword_1D16EC000, v33, v34, "Requested to readValues(for: []) on device:%llu with empty paths which is not supported", v35, 0xCu);
    MEMORY[0x1D3893640](v35, -1, -1);
  }

  else
  {

    v33 = v32;
  }

  if (qword_1EC642248 != -1)
  {
    swift_once();
  }

  v42 = unk_1EC6BE120;
  *a2 = qword_1EC6BE118;
  a2[1] = v42;
}

uint64_t sub_1D1A0B79C(void *a1, uint64_t a2)
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD00000000000002BLL, 0x80000001D1EC31A0);
  v4 = [a1 hdm_getNodeID];
  [v4 unsignedLongLongValue];

  v5 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v5);

  MEMORY[0x1D3890F70](0xD000000000000065, 0x80000001D1EC31D0);
  v6 = MEMORY[0x1D3891260](a2, &type metadata for MatterAttributeRequestPath);
  MEMORY[0x1D3890F70](v6);

  return 0;
}

void sub_1D1A0B8B8(void *a1, uint64_t a2)
{
  if (qword_1EE07B280 != -1)
  {
LABEL_30:
    swift_once();
  }

  if (byte_1EE07B288 == 1)
  {
    v3 = [a1 hdm_containingHome];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 accessories];

      sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v6 = sub_1D1E67C1C();

      v51 = a2;
      if (v6 >> 62)
      {
        a2 = sub_1D1E6873C();
        if (a2)
        {
          goto LABEL_6;
        }
      }

      else
      {
        a2 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (a2)
        {
LABEL_6:
          v7 = 0;
          while (1)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v8 = MEMORY[0x1D3891EF0](v7, v6);
            }

            else
            {
              if (v7 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_29;
              }

              v8 = *(v6 + 8 * v7 + 32);
            }

            v9 = v8;
            v10 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

            v11 = sub_1D1E682DC();
            v13 = v12;
            v14 = [a1 hdm_getNodeID];
            v15 = [v14 unsignedLongLongValue];

            if ((v13 & 1) == 0 && v11 == v15)
            {
              break;
            }

            ++v7;
            if (v10 == a2)
            {
              goto LABEL_32;
            }
          }

          v16 = qword_1EE07A0A8;
          v17 = v9;
          v18 = v17;
          if (v16 != -1)
          {
            swift_once();
          }

          v19 = sub_1D1E6709C();
          __swift_project_value_buffer(v19, qword_1EE07A0B0);
          v49 = v18;
          a2 = v51;

          v20 = a1;
          v21 = sub_1D1E6707C();
          v22 = sub_1D1E6835C();

          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            v24 = swift_slowAlloc();
            v56[0] = v24;
            *v23 = 134349570;
            *(v23 + 4) = *(v51 + 16);

            *(v23 + 12) = 2050;
            v25 = [v20 hdm_getNodeID];
            v26 = [v25 unsignedLongLongValue];

            *(v23 + 14) = v26;
            *(v23 + 22) = 2080;
            v27 = [v49 name];
            v28 = sub_1D1E6781C();
            v30 = v29;

            v31 = sub_1D1B1312C(v28, v30, v56);

            *(v23 + 24) = v31;
            _os_log_impl(&dword_1D16EC000, v21, v22, "Successfully read %{public}ld values from device %{public}llu (named: %s)", v23, 0x20u);
            __swift_destroy_boxed_opaque_existential_1(v24);
            MEMORY[0x1D3893640](v24, -1, -1);
            MEMORY[0x1D3893640](v23, -1, -1);
          }

          else
          {
          }

          v32 = v49;
          v33 = *(v51 + 16);
          if (!v33)
          {
            goto LABEL_25;
          }

LABEL_34:
          v50 = v32;
          v34 = a2 + 32;
          if (qword_1EE07A0A8 != -1)
          {
            swift_once();
          }

          v35 = sub_1D1E6709C();
          v36 = qword_1EE07A0B0;
          v52 = v35;
          do
          {
            __swift_project_value_buffer(v35, v36);
            sub_1D18F5324(v34, v56);
            v37 = a1;
            v38 = sub_1D1E6707C();
            v39 = sub_1D1E6832C();
            if (os_log_type_enabled(v38, v39))
            {
              v40 = swift_slowAlloc();
              v41 = swift_slowAlloc();
              v55 = v41;
              *v40 = 134218242;
              v42 = [v37 hdm_getNodeID];
              v43 = v36;
              v44 = [v42 unsignedLongLongValue];

              *(v40 + 4) = v44;
              *(v40 + 12) = 2080;
              sub_1D18F5324(v56, v54);
              v45 = sub_1D1E6789C();
              v47 = v46;
              sub_1D18F5380(v56);
              v48 = sub_1D1B1312C(v45, v47, &v55);

              *(v40 + 14) = v48;
              v36 = v43;
              v35 = v52;
              _os_log_impl(&dword_1D16EC000, v38, v39, "%llu: %s", v40, 0x16u);
              __swift_destroy_boxed_opaque_existential_1(v41);
              MEMORY[0x1D3893640](v41, -1, -1);
              MEMORY[0x1D3893640](v40, -1, -1);
            }

            else
            {

              sub_1D18F5380(v56);
            }

            v34 += 56;
            --v33;
          }

          while (v33);

          return;
        }
      }

LABEL_32:

      a2 = v51;
    }

    sub_1D1A10370(a1, a2);
    v32 = 0;
    v33 = *(a2 + 16);
    if (!v33)
    {
LABEL_25:

      return;
    }

    goto LABEL_34;
  }

  sub_1D1A10370(a1, a2);
}

void MTRDevice.readValue(for:in:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  (*(v7 + 16))(v6, v7);
  v8 = sub_1D1E692AC();
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  (*(v10 + 24))(&v103, v9, v10);
  v11 = sub_1D1E692CC();
  v12 = MTRDevice.getAttributeData(path:attributeID:)(a2, a1);
  if (!v12)
  {
    goto LABEL_5;
  }

  v13 = v12;
  if (!*(v12 + 16))
  {

LABEL_5:

    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v14 = v8;
  v15 = v11;
  v16 = sub_1D1E692CC();
  v17 = [objc_opt_self() attributePathWithEndpointID:v14 clusterID:v15 attributeID:v16];
  v97 = v14;

  v96 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v19;
  *(inited + 72) = sub_1D1741B10(0, &qword_1EC650120, 0x1E696F570);
  *(inited + 48) = v17;
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v20;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  *(inited + 96) = v13;
  v95 = v17;

  v21 = sub_1D18D6538(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
  swift_arrayDestroy();
  v22 = objc_allocWithZone(MEMORY[0x1E696F578]);
  v23 = sub_1D1A10510(v21);
  v24 = a2[3];
  v25 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v24);
  (*(v25 + 24))(&v103, v24, v25);
  v26 = sub_1D1A38104(a1, &v103);
  v94 = v26;
  v28 = v27;
  memset(v105, 0, sizeof(v105));
  v98 = v27;
  if (v23)
  {
    v29 = [v23 error];
    if (v29)
    {
      v30 = v29;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v31 = sub_1D1E6709C();
      __swift_project_value_buffer(v31, qword_1EE07A0B0);
      sub_1D17419CC(a2, &v103);

      v32 = v30;
      v33 = sub_1D1E6707C();
      v34 = sub_1D1E6833C();

      if (os_log_type_enabled(v33, v34))
      {
        v92 = v23;
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v91 = a3;
        v37 = swift_slowAlloc();
        *&v100 = v37;
        *v35 = 136315650;
        *(v35 + 4) = sub_1D1B1312C(v94, v28, &v100);
        *(v35 + 12) = 2080;
        __swift_project_boxed_opaque_existential_1(&v103, *(&v104 + 1));
        v38 = sub_1D1E68FAC();
        v40 = v39;
        __swift_destroy_boxed_opaque_existential_1(&v103);
        v41 = sub_1D1B1312C(v38, v40, &v100);

        *(v35 + 14) = v41;
        *(v35 + 22) = 2112;
        v42 = v32;
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 24) = v43;
        *v36 = v43;
        _os_log_impl(&dword_1D16EC000, v33, v34, "Got error trying to read attribute (%s) for ClusterPath (%s): %@", v35, 0x20u);
        sub_1D1741A30(v36, &unk_1EC644000, &unk_1D1E75B00);
        MEMORY[0x1D3893640](v36, -1, -1);
        swift_arrayDestroy();
        v44 = v37;
        a3 = v91;
        MEMORY[0x1D3893640](v44, -1, -1);
        v45 = v35;
        v23 = v92;
        MEMORY[0x1D3893640](v45, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&v103);
      }
    }

    else
    {
      if ([v23 value])
      {
        sub_1D1E6866C();
        swift_unknownObjectRelease();
      }

      else
      {
        v100 = 0u;
        v101 = 0u;
      }

      v93 = v23;
      v103 = v100;
      v104 = v101;
      sub_1D1757A78(&v103, v105);
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v56 = sub_1D1E6709C();
      __swift_project_value_buffer(v56, qword_1EE07A0B0);
      sub_1D17419CC(a2, &v103);

      v57 = sub_1D1E6707C();
      v58 = sub_1D1E6835C();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v102[0] = v60;
        *v59 = 136315650;
        __swift_project_boxed_opaque_existential_1(&v103, *(&v104 + 1));
        v61 = sub_1D1E68FAC();
        v63 = v62;
        __swift_destroy_boxed_opaque_existential_1(&v103);
        v64 = sub_1D1B1312C(v61, v63, v102);

        *(v59 + 4) = v64;
        *(v59 + 12) = 2080;
        *(v59 + 14) = sub_1D1B1312C(v94, v98, v102);
        *(v59 + 22) = 2080;
        swift_beginAccess();
        sub_1D1741C08(v105, &v100, &qword_1EC649700, &qword_1D1E6E910);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
        v65 = sub_1D1E6789C();
        v67 = sub_1D1B1312C(v65, v66, v102);

        *(v59 + 24) = v67;
        _os_log_impl(&dword_1D16EC000, v57, v58, "MTRDevice decodedAttribute: %s (attribute:%s) result: %s", v59, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v60, -1, -1);
        MEMORY[0x1D3893640](v59, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&v103);
      }

      v23 = v93;
    }
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v46 = sub_1D1E6709C();
    __swift_project_value_buffer(v46, qword_1EE07A0B0);
    sub_1D17419CC(a2, &v103);

    v47 = sub_1D1E6707C();
    v48 = sub_1D1E6833C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v100 = v50;
      *v49 = 136315394;
      *(v49 + 4) = sub_1D1B1312C(v94, v28, &v100);
      *(v49 + 12) = 2080;
      v51 = a3;
      __swift_project_boxed_opaque_existential_1(&v103, *(&v104 + 1));
      v52 = sub_1D1E68FAC();
      v54 = v53;
      __swift_destroy_boxed_opaque_existential_1(&v103);
      v55 = sub_1D1B1312C(v52, v54, &v100);
      a3 = v51;

      *(v49 + 14) = v55;
      _os_log_impl(&dword_1D16EC000, v47, v48, "Failed to create MTRAttributeReport for attribute (%s) ClusterPath (%s)", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v50, -1, -1);
      MEMORY[0x1D3893640](v49, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v103);
    }

    v23 = 0;
  }

  swift_beginAccess();
  sub_1D1741C08(v105, &v103, &qword_1EC649700, &qword_1D1E6E910);
  if (!*(&v104 + 1))
  {
    sub_1D1741A30(&v103, &qword_1EC649700, &qword_1D1E6E910);
    v68 = sub_1D1E6781C();
    if (*(v13 + 16))
    {
      v70 = sub_1D171D2F0(v68, v69);
      v72 = v71;

      if (v72)
      {
        sub_1D1741970(*(v13 + 56) + 32 * v70, &v103);

LABEL_35:
        sub_1D1757A78(&v103, v105);
        if (qword_1EE07A0A8 != -1)
        {
          swift_once();
        }

        v73 = sub_1D1E6709C();
        __swift_project_value_buffer(v73, qword_1EE07A0B0);
        sub_1D17419CC(a2, &v103);

        v74 = sub_1D1E6707C();
        v75 = sub_1D1E6835C();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = v23;
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v99 = v78;
          *v77 = 136315650;
          __swift_project_boxed_opaque_existential_1(&v103, *(&v104 + 1));
          v79 = sub_1D1E68FAC();
          v81 = v80;
          __swift_destroy_boxed_opaque_existential_1(&v103);
          v82 = sub_1D1B1312C(v79, v81, &v99);

          *(v77 + 4) = v82;
          *(v77 + 12) = 2080;
          v83 = sub_1D1B1312C(v94, v98, &v99);

          *(v77 + 14) = v83;
          *(v77 + 22) = 2080;
          sub_1D1741C08(v105, &v100, &qword_1EC649700, &qword_1D1E6E910);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
          v84 = sub_1D1E6789C();
          v86 = sub_1D1B1312C(v84, v85, &v99);

          *(v77 + 24) = v86;
          _os_log_impl(&dword_1D16EC000, v74, v75, "MTRDevice decodedAttribute: Attempting manual decode %s (attribute:%s) result: %s", v77, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1D3893640](v78, -1, -1);
          v87 = v77;
          v23 = v76;
          MEMORY[0x1D3893640](v87, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(&v103);
        }

        goto LABEL_40;
      }
    }

    else
    {
    }

    v103 = 0u;
    v104 = 0u;
    goto LABEL_35;
  }

  sub_1D1741A30(&v103, &qword_1EC649700, &qword_1D1E6E910);
LABEL_40:
  sub_1D1741C08(v105, &v100, &qword_1EC649700, &qword_1D1E6E910);
  if (*(&v101 + 1))
  {
    sub_1D16EEE38(&v100, &v103);
    v88 = *(&v104 + 1);
    v89 = __swift_project_boxed_opaque_existential_1(&v103, *(&v104 + 1));
    *(a3 + 24) = v88;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    (*(*(v88 - 8) + 16))(boxed_opaque_existential_1, v89, v88);

    __swift_destroy_boxed_opaque_existential_1(&v103);
  }

  else
  {

    sub_1D1741A30(&v100, &qword_1EC649700, &qword_1D1E6E910);
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  sub_1D1741A30(v105, &qword_1EC649700, &qword_1D1E6E910);
}

uint64_t MTRDevice.getAttributeData(path:attributeID:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 16))(v5, v6);
  v7 = sub_1D1E692AC();
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 24))(&v15, v8, v9);
  v10 = sub_1D1E692CC();
  v11 = sub_1D1E692CC();
  v12 = [v3 readAttributeWithEndpointID:v7 clusterID:v10 attributeID:v11 params:0];

  if (v12)
  {
    v13 = sub_1D1E675FC();
  }

  else
  {

    return 0;
  }

  return v13;
}

id MTRDevice.cluster<A>(of:endpointID:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D1E692AC();
  if (qword_1EC6422A8 != -1)
  {
    swift_once();
  }

  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDevice:v2 endpointID:v3 queue:qword_1EC6BE160];

  return v4;
}

uint64_t MTRDevice.writeAttribute(path:attributeID:value:)(uint64_t a1, unsigned int a2, void *a3)
{
  v4 = v3;
  v34 = a2;
  v7 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EndpointPath(0);
  v10 = sub_1D1E692AC();
  v11 = sub_1D1E692CC();
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v12 = sub_1D1E6709C();
  __swift_project_value_buffer(v12, qword_1EE07A0B0);
  sub_1D18F61D4(a1, v9);
  sub_1D1741970(a3, v37);
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6835C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v36 = v16;
    *v15 = 136315906;
    *(v15 + 4) = sub_1D1B1312C(0xD000000000000027, 0x80000001D1EC30E0, &v36);
    v33 = v10;
    *(v15 + 12) = 2080;
    v17 = ClusterPath.description.getter();
    v32 = v11;
    v18 = v4;
    v20 = v19;
    sub_1D19B0B70(v9);
    v21 = sub_1D1B1312C(v17, v20, &v36);

    *(v15 + 14) = v21;
    *(v15 + 22) = 1024;
    *(v15 + 24) = v34;
    *(v15 + 28) = 2080;
    sub_1D1741970(v37, v35);
    v22 = sub_1D1E6789C();
    v24 = v23;
    __swift_destroy_boxed_opaque_existential_1(v37);
    v25 = sub_1D1B1312C(v22, v24, &v36);
    v4 = v18;
    v11 = v32;

    *(v15 + 30) = v25;
    _os_log_impl(&dword_1D16EC000, v13, v14, "%s path: %s attributeID: %u value: %s", v15, 0x26u);
    v10 = v33;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v16, -1, -1);
    MEMORY[0x1D3893640](v15, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v37);
    sub_1D19B0B70(v9);
  }

  v26 = sub_1D1E692CC();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v27 = sub_1D1E6903C();
  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  v28 = qword_1EC649398;
  if (qword_1EC649398)
  {
    v29 = qword_1EC649398;
  }

  else
  {
    sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    v29 = sub_1D1E684DC();
    v28 = 0;
  }

  v30 = v28;
  [v4 writeAttributeWithEndpointID:v10 clusterID:v11 attributeID:v26 value:v27 expectedValueInterval:v29 timedWriteTimeout:0];

  return swift_unknownObjectRelease();
}

uint64_t MTRDevice.clientData(key:endpointID:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = 0xEB00000000656D61;
  v4 = 0x4E79616C70736944;
  v5 = *a1;
  if ((a2 & 0x10000) != 0)
  {
    if (*a1 > 4u)
    {
      v24 = 0x746169636F737341;
      v25 = 0xEE00657079546465;
      v26 = 0x496564756C636E49;
      v27 = 0xEF7375746174536ELL;
      if (v5 != 8)
      {
        v26 = 0x6564644165746144;
        v27 = 0xE900000000000064;
      }

      if (v5 != 7)
      {
        v24 = v26;
        v25 = v27;
      }

      v28 = 0xD000000000000017;
      v29 = 0x80000001D1EB8390;
      if (v5 != 5)
      {
        v28 = 0x657A6953656C6954;
        v29 = 0xE800000000000000;
      }

      if (*a1 <= 6u)
      {
        v16 = v28;
      }

      else
      {
        v16 = v24;
      }

      if (v5 <= 6)
      {
        v17 = v29;
      }

      else
      {
        v17 = v25;
      }
    }

    else
    {
      v12 = 0x6E6564496E6F6349;
      v13 = 0xEE00726569666974;
      v14 = 0xE800000000000000;
      v15 = 0x657469726F766146;
      if (v5 != 3)
      {
        v15 = 0x61446E4F776F6853;
        v14 = 0xEF6472616F626873;
      }

      if (v5 != 2)
      {
        v12 = v15;
        v13 = v14;
      }

      if (*a1)
      {
        v4 = 0x44496D6F6F52;
        v3 = 0xE600000000000000;
      }

      if (*a1 <= 1u)
      {
        v16 = v4;
      }

      else
      {
        v16 = v12;
      }

      if (v5 <= 1)
      {
        v17 = v3;
      }

      else
      {
        v17 = v13;
      }
    }

    sub_1D1A110EC(v16, v17, a3);
  }

  else
  {
    if (*a1 > 4u)
    {
      v18 = 0x746169636F737341;
      v19 = 0xEE00657079546465;
      v20 = 0x496564756C636E49;
      v21 = 0xEF7375746174536ELL;
      if (v5 != 8)
      {
        v20 = 0x6564644165746144;
        v21 = 0xE900000000000064;
      }

      if (v5 != 7)
      {
        v18 = v20;
        v19 = v21;
      }

      v22 = 0xD000000000000017;
      v23 = 0x80000001D1EB8390;
      if (v5 != 5)
      {
        v22 = 0x657A6953656C6954;
        v23 = 0xE800000000000000;
      }

      if (*a1 <= 6u)
      {
        v10 = v22;
      }

      else
      {
        v10 = v18;
      }

      if (*a1 <= 6u)
      {
        v11 = v23;
      }

      else
      {
        v11 = v19;
      }
    }

    else
    {
      v6 = 0x6E6564496E6F6349;
      v7 = 0xEE00726569666974;
      v8 = 0xE800000000000000;
      v9 = 0x657469726F766146;
      if (v5 != 3)
      {
        v9 = 0x61446E4F776F6853;
        v8 = 0xEF6472616F626873;
      }

      if (v5 != 2)
      {
        v6 = v9;
        v7 = v8;
      }

      if (*a1)
      {
        v4 = 0x44496D6F6F52;
        v3 = 0xE600000000000000;
      }

      if (*a1 <= 1u)
      {
        v10 = v4;
      }

      else
      {
        v10 = v6;
      }

      if (*a1 <= 1u)
      {
        v11 = v3;
      }

      else
      {
        v11 = v7;
      }
    }

    sub_1D1A10F50(a2, v10, v11, a3);
  }
}

uint64_t MTRDevice.setClientData(key:endpointID:value:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xEB00000000656D61;
  v4 = 0x4E79616C70736944;
  v5 = *a1;
  if ((a2 & 0x10000) != 0)
  {
    if (*a1 > 4u)
    {
      v24 = 0x746169636F737341;
      v25 = 0xEE00657079546465;
      v26 = 0x496564756C636E49;
      v27 = 0xEF7375746174536ELL;
      if (v5 != 8)
      {
        v26 = 0x6564644165746144;
        v27 = 0xE900000000000064;
      }

      if (v5 != 7)
      {
        v24 = v26;
        v25 = v27;
      }

      v28 = 0xD000000000000017;
      v29 = 0x80000001D1EB8390;
      if (v5 != 5)
      {
        v28 = 0x657A6953656C6954;
        v29 = 0xE800000000000000;
      }

      if (*a1 <= 6u)
      {
        v16 = v28;
      }

      else
      {
        v16 = v24;
      }

      if (v5 <= 6)
      {
        v17 = v29;
      }

      else
      {
        v17 = v25;
      }
    }

    else
    {
      v12 = 0x6E6564496E6F6349;
      v13 = 0xEE00726569666974;
      v14 = 0xE800000000000000;
      v15 = 0x657469726F766146;
      if (v5 != 3)
      {
        v15 = 0x61446E4F776F6853;
        v14 = 0xEF6472616F626873;
      }

      if (v5 != 2)
      {
        v12 = v15;
        v13 = v14;
      }

      if (*a1)
      {
        v4 = 0x44496D6F6F52;
        v3 = 0xE600000000000000;
      }

      if (*a1 <= 1u)
      {
        v16 = v4;
      }

      else
      {
        v16 = v12;
      }

      if (v5 <= 1)
      {
        v17 = v3;
      }

      else
      {
        v17 = v13;
      }
    }

    sub_1D1A1165C(v16, v17, a3);
  }

  else
  {
    if (*a1 > 4u)
    {
      v18 = 0x746169636F737341;
      v19 = 0xEE00657079546465;
      v20 = 0x496564756C636E49;
      v21 = 0xEF7375746174536ELL;
      if (v5 != 8)
      {
        v20 = 0x6564644165746144;
        v21 = 0xE900000000000064;
      }

      if (v5 != 7)
      {
        v18 = v20;
        v19 = v21;
      }

      v22 = 0xD000000000000017;
      v23 = 0x80000001D1EB8390;
      if (v5 != 5)
      {
        v22 = 0x657A6953656C6954;
        v23 = 0xE800000000000000;
      }

      if (*a1 <= 6u)
      {
        v10 = v22;
      }

      else
      {
        v10 = v18;
      }

      if (*a1 <= 6u)
      {
        v11 = v23;
      }

      else
      {
        v11 = v19;
      }
    }

    else
    {
      v6 = 0x6E6564496E6F6349;
      v7 = 0xEE00726569666974;
      v8 = 0xE800000000000000;
      v9 = 0x657469726F766146;
      if (v5 != 3)
      {
        v9 = 0x61446E4F776F6853;
        v8 = 0xEF6472616F626873;
      }

      if (v5 != 2)
      {
        v6 = v9;
        v7 = v8;
      }

      if (*a1)
      {
        v4 = 0x44496D6F6F52;
        v3 = 0xE600000000000000;
      }

      if (*a1 <= 1u)
      {
        v10 = v4;
      }

      else
      {
        v10 = v6;
      }

      if (*a1 <= 1u)
      {
        v11 = v3;
      }

      else
      {
        v11 = v7;
      }
    }

    sub_1D1A113E8(a2, v10, v11, a3);
  }
}

uint64_t MTRDevice.wait(forAttributeValues:timeout:)(uint64_t a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 24) = a2;
  *(v3 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A0D830, 0, 0);
}

uint64_t sub_1D1A0D830()
{
  v24 = v0;
  v1 = [objc_allocWithZone(type metadata accessor for DiscardingMatterDelegate()) init];
  v0[5] = v1;
  v2 = qword_1EC6422A8;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = v0[2];
  v5 = qword_1EC6BE160;
  v6 = *(v4 + 16);
  if (v6)
  {
    v21 = qword_1EC6BE160;
    v22 = v3;
    v7 = sub_1D1808600();
    v8 = sub_1D1805A20(&v23, (v7 + 32), v6, v4);
    v9 = v23;

    result = sub_1D1716918(v9);
    if (v8 != v6)
    {
      __break(1u);
      return result;
    }

    v4 = v0[2];
    v5 = v21;
    v3 = v22;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v11 = v0[4];
  v12 = v0[3];
  sub_1D18F9C6C(v7);

  v13 = sub_1D1E67BFC();

  [v11 addDelegate:v3 queue:v5 interestedPathsForAttributes:v13 interestedPathsForEvents:0];

  v14 = swift_allocObject();
  v14[2] = v11;
  v14[3] = v4;
  v14[4] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB8, &qword_1D1E840E8);
  v15 = swift_allocObject();
  v0[6] = v15;

  v16 = v11;
  swift_defaultActor_initialize();
  *(v15 + 16) = 0;
  v17 = *(*v15 + 112);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
  (*(*(v18 - 8) + 56))(&v15[v17], 1, 1, v18);
  v19 = &v15[*(*v15 + 120)];
  *v19 = 0;
  *(v19 + 1) = 0;
  *(v15 + 14) = &unk_1D1E914D8;
  *(v15 + 15) = v14;
  v20 = swift_task_alloc();
  v0[7] = v20;
  *v20 = v0;
  v20[1] = sub_1D1A0DB30;

  return sub_1D19D7D10(sub_1D19D7D10);
}

uint64_t sub_1D1A0DB30()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D1A0DCC4;
  }

  else
  {
    v2 = sub_1D1A0DC44;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1A0DC44()
{
  v1 = v0[5];
  v2 = v0[4];

  [v2 removeDelegate_];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1A0DCC4()
{
  v1 = v0[5];
  v2 = v0[4];

  [v2 removeDelegate_];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1A0DD44(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a1;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 16) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1D1A0DD6C, 0, 0);
}

uint64_t sub_1D1A0DD6C()
{
  v1 = *(v0 + 40);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  v7 = *(v0 + 24);
  swift_weakInit();
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v7;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1D1A0DEA8;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000021, 0x80000001D1EC3170, sub_1D1A10C18, v3, v5);
}

uint64_t sub_1D1A0DEA8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D1A0E028;
  }

  else
  {

    v2 = sub_1D1A0DFC4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1A0DFC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1A0E028()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1A0E094(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v43 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v42 = &v40 - v10;
  v11 = sub_1D1E66A7C();
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - v16;
  sub_1D18A7CD8(a3);
  sub_1D1741B10(0, &qword_1EC650120, 0x1E696F570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  sub_1D1A10C28();
  v18 = sub_1D1E675DC();

  if (qword_1EC6422A8 != -1)
  {
    swift_once();
  }

  v19 = qword_1EC6BE160;
  (*(v15 + 16))(v17, a1, v14);
  v20 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v21 = swift_allocObject();
  (*(v15 + 32))(v21 + v20, v17, v14);
  aBlock[4] = sub_1D1A10C90;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1C40BA8;
  aBlock[3] = &block_descriptor_37_0;
  v22 = _Block_copy(aBlock);

  v23 = [a2 waitForAttributeValues:v18 timeout:v19 queue:v22 completion:a5];
  _Block_release(v22);

  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v24 = sub_1D1E6709C();
  __swift_project_value_buffer(v24, qword_1EE07A0B0);
  v25 = v23;
  v26 = sub_1D1E6707C();
  v27 = sub_1D1E6835C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v28 = 136315394;
    v30 = [v25 UUID];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v31 = v41;
    v32 = sub_1D1E68FAC();
    v34 = v33;
    (*(v40 + 8))(v13, v31);
    v35 = sub_1D1B1312C(v32, v34, aBlock);

    *(v28 + 4) = v35;
    *(v28 + 12) = 2048;
    *(v28 + 14) = a5;
    _os_log_impl(&dword_1D16EC000, v26, v27, "Starting to wait with value waiter: %s with timeout %f", v28, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1D3893640](v29, -1, -1);
    MEMORY[0x1D3893640](v28, -1, -1);
  }

  v36 = sub_1D1E67E7C();
  v37 = v42;
  (*(*(v36 - 8) + 56))(v42, 1, 1, v36);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v43;
  v38[5] = v25;

  sub_1D17C7B2C(0, 0, v37, &unk_1D1E91558, v38);
}

uint64_t sub_1D1A0E5F8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
    return sub_1D1E67D5C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
    return sub_1D1E67D6C();
  }
}

uint64_t sub_1D1A0E66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A0E690, 0, 0);
}

uint64_t sub_1D1A0E690()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = Strong;

    return MEMORY[0x1EEE6DFA0](sub_1D1A0E75C, v2, 0);
  }

  else
  {
    **(v0 + 40) = 0;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1D1A0E75C()
{
  v1 = *(v0 + 56);
  *(*(v0 + 64) + 128) = v1;
  v2 = v1;
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1D1A0E7DC, 0, 0);
}

uint64_t MTRDevice.performCommand(path:commandID:commandFields:expectedValues:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D1A10DD4;

  return sub_1D1A106BC(a1, a2, a3);
}

void sub_1D1A0E8C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v21 = a4;
  v22 = a5;
  v20 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648EC0, &qword_1D1E91548);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  if (a6)
  {
    a6 = sub_1D1E675DC();
  }

  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  v13 = qword_1EC6422A8;
  v14 = qword_1EC649398;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = qword_1EC6BE160;
  (*(v10 + 16))(v12, a1, v9);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v16, v12, v9);
  aBlock[4] = sub_1D1A10B74;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1A0EBD8;
  aBlock[3] = &block_descriptor_26_1;
  v18 = _Block_copy(aBlock);

  [a2 invokeCommandWithEndpointID:v20 clusterID:v21 commandID:v22 commandFields:a6 expectedValues:0 expectedValueInterval:v14 queue:v15 completion:v18];
  _Block_release(v18);
}

uint64_t sub_1D1A0EB48(uint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648EC0, &qword_1D1E91548);
    return sub_1D1E67D5C();
  }

  else
  {
    if (a1)
    {
      sub_1D18F95CC(a1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648EC0, &qword_1D1E91548);
    return sub_1D1E67D6C();
  }
}

uint64_t sub_1D1A0EBD8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v4 = sub_1D1E67C1C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t MTRDevice.perform(commandGroups:on:)(uint64_t a1, __int16 a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1D1A0EC9C, 0, 0);
}

uint64_t sub_1D1A0EC9C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6486B0, &qword_1D1E8E2C8);
  v5 = swift_allocObject();
  *(v0 + 32) = v5;

  v6 = v3;
  swift_defaultActor_initialize();
  *(v5 + 16) = 0;
  v7 = *(*v5 + 112);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6486B8, &qword_1D1E8E2E0);
  (*(*(v8 - 8) + 56))(&v5[v7], 1, 1, v8);
  v9 = &v5[*(*v5 + 120)];
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v5 + 14) = &unk_1D1E91500;
  *(v5 + 15) = v4;
  v10 = swift_task_alloc();
  *(v0 + 40) = v10;
  *v10 = v0;
  v10[1] = sub_1D1A0EE44;

  return sub_1D19D8050();
}

uint64_t sub_1D1A0EE44(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_1D1A0EFD4;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_1D1A0EF6C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D1A0EF6C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_1D1A0EFD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1A0F038(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  *(v5 + 648) = a5;
  *(v5 + 672) = a4;
  *(v5 + 640) = a3;
  *(v5 + 632) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A0F064, 0, 0);
}

uint64_t sub_1D1A0F064()
{
  v99 = v0;
  v1 = *(v0 + 640);
  v2 = *(v1 + 16);
  if (v2)
  {
    v93 = MEMORY[0x1E69E7CC0];
    v80 = *(v1 + 16);
    sub_1D178D990(0, v2, 0);
    v3 = v80;
    v4 = 0;
    v5 = v1 + 32;
    v6 = 1;
    v7 = v93;
    v77 = v1 + 32;
    while (1)
    {
      v8 = *(v5 + 8 * v4);
      v94 = MEMORY[0x1E69E7CC0];
      v85 = *(v8 + 16);
      if (v85)
      {
        break;
      }

      v67 = MEMORY[0x1E69E7CC0];
LABEL_41:
      v69 = *(v7 + 16);
      v68 = *(v7 + 24);
      if (v69 >= v68 >> 1)
      {
        v70 = v67;
        v71 = v4;
        v72 = v5;
        sub_1D178D990((v68 > 1), v69 + 1, 1);
        v67 = v70;
        v5 = v72;
        v4 = v71;
        v3 = v80;
      }

      ++v4;
      *(v7 + 16) = v69 + 1;
      *(v7 + 8 * v69 + 32) = v67;
      if (v4 == v3)
      {
        goto LABEL_44;
      }
    }

    v78 = v7;
    v79 = v4;
    v84 = v8 + 32;
    v9 = MEMORY[0x1E69E7CC0];

    v11 = 0;
    v81 = v9;
    v83 = v10;
    while (v11 < *(v10 + 16))
    {
      v86 = v11;
      sub_1D17419CC(v84 + 40 * v11, v0 + 448);
      v12 = *(v0 + 472);
      v13 = *(v0 + 480);
      v9 = __swift_project_boxed_opaque_existential_1((v0 + 448), v12);
      if (((*(v13 + 24))(v12, v13) & 0x100000000) != 0)
      {
        __swift_destroy_boxed_opaque_existential_1((v0 + 448));
      }

      else
      {
        v14 = sub_1D1E692AC();
        v15 = *(v0 + 472);
        v16 = *(v0 + 480);
        __swift_project_boxed_opaque_existential_1((v0 + 448), v15);
        (*(v16 + 40))(&v97, v15, v16);
        v17 = sub_1D1E692CC();
        v18 = sub_1D1E692CC();
        v19 = [objc_opt_self() commandPathWithEndpointID:v14 clusterID:v17 commandID:v18];

        v20 = *(v0 + 472);
        v21 = *(v0 + 480);
        __swift_project_boxed_opaque_existential_1((v0 + 448), v20);
        (*(v21 + 64))(&v95, v20, v21);
        v22 = v95;
        v82 = v19;
        if (v95)
        {
          v23 = *(v95 + 16);
          if (v23)
          {
            v96 = MEMORY[0x1E69E7CC0];
            v9 = &v96;
            sub_1D178CFB0(0, v23, 0);
            v24 = v96;
            v25 = v22 + 64;
            v26 = sub_1D1E6869C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BF0, &unk_1D1E7E8B0);
            v27 = 0;
            v87 = v23;
            while ((v26 & 0x8000000000000000) == 0 && v26 < 1 << *(v22 + 32))
            {
              if ((*(v25 + 8 * (v26 >> 6)) & (1 << v26)) == 0)
              {
                goto LABEL_49;
              }

              v90 = v26 >> 6;
              v88 = v27;
              v92 = v24;
              v89 = *(v22 + 36);
              v29 = *(v22 + 56) + 16 * v26;
              v30 = *v29;
              v31 = *(v29 + 8);
              v32 = *(*(v22 + 48) + 8 * v26);
              sub_1D1741AF8(v30, v31);
              sub_1D1741AF8(v30, v31);

              sub_1D1757AE8(v30, v31);
              *(v0 + 112) = sub_1D1E6781C();
              *(v0 + 120) = v33;
              *(v0 + 152) = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
              *(v0 + 128) = v32;
              *(v0 + 160) = sub_1D1E6781C();
              *(v0 + 168) = v34;
              v97 = v30;
              v98 = v31;
              v91 = v32;
              v35 = MatterAttributeDataBuilder.dictionary.getter();
              *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E68, &unk_1D1E717F0);
              *(v0 + 176) = v35;
              v6 = sub_1D1E68BCC();
              sub_1D1741C08(v0 + 112, v0 + 400, &qword_1EC646228, &qword_1D1E8A0C0);
              v37 = *(v0 + 400);
              v36 = *(v0 + 408);

              v9 = v6;
              v38 = sub_1D171D2F0(v37, v36);
              if (v39)
              {
                goto LABEL_50;
              }

              *(v6 + 64 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
              v40 = (*(v6 + 48) + 16 * v38);
              *v40 = v37;
              v40[1] = v36;
              sub_1D16EEE38((v0 + 416), (*(v6 + 56) + 32 * v38));
              v41 = *(v6 + 16);
              v42 = __OFADD__(v41, 1);
              v43 = v41 + 1;
              if (v42)
              {
                goto LABEL_51;
              }

              *(v6 + 16) = v43;
              sub_1D1741C08(v0 + 160, v0 + 400, &qword_1EC646228, &qword_1D1E8A0C0);
              v44 = *(v0 + 400);
              v45 = *(v0 + 408);
              v9 = v6;
              v46 = sub_1D171D2F0(v44, v45);
              if (v47)
              {
                goto LABEL_52;
              }

              *(v6 + 64 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
              v48 = (*(v6 + 48) + 16 * v46);
              *v48 = v44;
              v48[1] = v45;
              sub_1D16EEE38((v0 + 416), (*(v6 + 56) + 32 * v46));
              v49 = *(v6 + 16);
              v42 = __OFADD__(v49, 1);
              v50 = v49 + 1;
              if (v42)
              {
                goto LABEL_53;
              }

              *(v6 + 16) = v50;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
              swift_arrayDestroy();

              sub_1D1757AE8(v30, v31);
              v24 = v92;
              v96 = v92;
              v52 = *(v92 + 16);
              v51 = *(v92 + 24);
              if (v52 >= v51 >> 1)
              {
                sub_1D178CFB0((v51 > 1), v52 + 1, 1);
                v24 = v96;
              }

              *(v24 + 16) = v52 + 1;
              *(v24 + 8 * v52 + 32) = v6;
              v6 = 1;
              v9 = (1 << *(v22 + 32));
              v25 = v22 + 64;
              if (v26 >= v9)
              {
                goto LABEL_54;
              }

              v53 = *(v22 + 64 + 8 * v90);
              if ((v53 & (1 << v26)) == 0)
              {
                goto LABEL_55;
              }

              if (v89 != *(v22 + 36))
              {
                goto LABEL_56;
              }

              v54 = v53 & (-2 << (v26 & 0x3F));
              if (v54)
              {
                v9 = (__clz(__rbit64(v54)) | v26 & 0x7FFFFFFFFFFFFFC0);
                v28 = v87;
              }

              else
              {
                v55 = v90 << 6;
                v56 = (v22 + 72 + 8 * v90);
                v57 = v90 + 1;
                v28 = v87;
                while (v57 < (v9 + 63) >> 6)
                {
                  v59 = *v56++;
                  v58 = v59;
                  v55 += 64;
                  ++v57;
                  if (v59)
                  {
                    sub_1D1716920(v26, v89, 0);
                    v9 = (__clz(__rbit64(v58)) + v55);
                    goto LABEL_13;
                  }
                }

                sub_1D1716920(v26, v89, 0);
              }

LABEL_13:
              v27 = v88 + 1;
              v26 = v9;
              if (v88 + 1 == v28)
              {
                goto LABEL_34;
              }
            }

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
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
            break;
          }

          v24 = MEMORY[0x1E69E7CC0];
LABEL_34:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1D1E73A90;
          *(inited + 32) = sub_1D1E6781C();
          *(inited + 40) = v61;
          v62 = sub_1D1E6781C();
          *(inited + 72) = MEMORY[0x1E69E6158];
          *(inited + 48) = v62;
          *(inited + 56) = v63;
          *(inited + 80) = sub_1D1E6781C();
          *(inited + 88) = v64;
          *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
          *(inited + 96) = v24;
          sub_1D18D6538(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
          swift_arrayDestroy();

          v9 = sub_1D1E675DC();
        }

        else
        {
          v9 = 0;
        }

        v65 = [objc_allocWithZone(MEMORY[0x1E696F608]) initWithPath:v82 commandFields:v9 requiredResponse:0];

        v66 = __swift_destroy_boxed_opaque_existential_1((v0 + 448));
        if (v65)
        {
          v9 = &v94;
          MEMORY[0x1D3891220](v66);
          if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D1E67C5C();
          }

          sub_1D1E67CAC();
          v81 = v94;
        }
      }

      v11 = v86 + 1;
      v10 = v83;
      if (v86 + 1 == v85)
      {

        v4 = v79;
        v3 = v80;
        v5 = v77;
        v7 = v78;
        v67 = v81;
        goto LABEL_41;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_44:
    v6 = v0 + 616;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643800, &qword_1D1E71F70);
    v9 = sub_1D1E67BFC();
    *(v0 + 656) = v9;

    if (qword_1EC6422A8 == -1)
    {
      goto LABEL_45;
    }
  }

  swift_once();
LABEL_45:
  v73 = *(v0 + 648);
  v74 = qword_1EC6BE160;
  *(v0 + 16) = v0;
  *(v0 + 56) = v6;
  *(v0 + 24) = sub_1D1A0FA60;
  v75 = swift_continuation_init();
  *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648EB8, &qword_1D1E91540);
  *(v0 + 336) = MEMORY[0x1E69E9820];
  *(v0 + 344) = 1107296256;
  *(v0 + 352) = sub_1D1A0FE34;
  *(v0 + 360) = &block_descriptor_33;
  *(v0 + 368) = v75;
  [v73 invokeCommands:v9 queue:v74 completion:v0 + 336];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}