uint64_t sub_1D1AC2938(uint64_t *a1)
{
  _s24SnapshotUpdateControllerC13UpdateRequestVMa(255, a1[10], a1[11], a1[12]);
  result = sub_1D1E67F2C();
  if (v2 <= 0x3F)
  {
    result = sub_1D1E67EEC();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of HomeState.Stream.SnapshotUpdateController.performAndWait(_:snapshotCoverageConfig:setResultImmediately:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 256) + **(*v3 + 256));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1D1AC3C3C;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of HomeState.Stream.StateSnapshotUpdateController.performAndWait(_:snapshotCoverageConfig:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 320) + **(*v2 + 320));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D19C8EA0;

  return v8(a1, a2);
}

uint64_t sub_1D1AC2DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D1AC2E00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1D1AC2E48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_1D1AC2EA0(uint64_t a1)
{
  sub_1D1AC2FEC();
  if (v1 <= 0x3F)
  {
    sub_1D1E66A7C();
    sub_1D1AC359C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E6769C();
    sub_1D1E67D7C();
    sub_1D1E685AC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D1AC2FEC()
{
  if (!qword_1EC64A638[0])
  {
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, qword_1EC64A638);
    }
  }
}

uint64_t sub_1D1AC303C(void *a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = _s24SnapshotUpdateControllerC13UpdateRequestV8ScheduleOMa(319, result, a1[3], a1[4]);
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D1AC30F4(uint64_t *a1)
{
  updated = _s24SnapshotUpdateControllerC13UpdateRequestV17PrioritizedConfigVMa(319, a1[2], a1[3], a1[4]);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return updated;
}

uint64_t sub_1D1AC317C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for MatterStateSnapshot(0);
  v44 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v53 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1D1E66A7C();
  v12 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491D0, &qword_1D1E92BD8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v41 - v16;
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v46 = a1;
  v47 = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v48 = v19;
  v49 = 0;
  v50 = v22 & v20;
  v51 = a2;
  v52 = a3;
  v23 = (v12 + 32);
  v42 = (v12 + 8);
  v43 = v12;

  v41[1] = a3;

  while (1)
  {
    sub_1D1AC031C(v17);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646208, &unk_1D1E7E860);
    if ((*(*(v24 - 8) + 48))(v17, 1, v24) == 1)
    {
      sub_1D1716918(v46);
    }

    v25 = *(v24 + 48);
    v26 = *v23;
    (*v23)(v14, v17, v45);
    sub_1D1AC3BD0(&v17[v25], v53, type metadata accessor for MatterStateSnapshot);
    v27 = *a5;
    v29 = sub_1D1742188();
    v30 = v27[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      break;
    }

    v33 = v28;
    if (v27[3] >= v32)
    {
      if (a4)
      {
        v36 = *a5;
        if ((v28 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1D173A304();
        v36 = *a5;
        if ((v33 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      (*v42)(v14, v45);
      sub_1D1AC36D4(v53, v36[7] + *(v44 + 72) * v29, type metadata accessor for MatterStateSnapshot);
      a4 = 1;
    }

    else
    {
      sub_1D172AA04(v32, a4 & 1);
      v34 = sub_1D1742188();
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_21;
      }

      v29 = v34;
      v36 = *a5;
      if (v33)
      {
        goto LABEL_5;
      }

LABEL_14:
      v36[(v29 >> 6) + 8] |= 1 << v29;
      v26((v36[6] + *(v43 + 72) * v29), v14, v45);
      sub_1D1AC3BD0(v53, v36[7] + *(v44 + 72) * v29, type metadata accessor for MatterStateSnapshot);
      v37 = v36[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_20;
      }

      v36[2] = v39;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D1AC359C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1AC35E4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D17C4CF0;

  return sub_1D1E5D0C4(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D1AC36D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1AC373C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 < 4u)
  {
  }

  if (a3 == 4)
  {
  }

  return result;
}

uint64_t sub_1D1AC3798(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D1AC3828(uint64_t result, uint64_t a2, char a3)
{
  if (result)
  {

    return sub_1D186145C(a2, a3);
  }

  return result;
}

uint64_t sub_1D1AC38BC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D17C4BFC;

  return sub_1D1AB5714(a1, a2, v6, v7, v8);
}

uint64_t sub_1D1AC3980(uint64_t a1)
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

  return sub_1D1AB59A8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D1AC3A48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1AB5E24(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1AC3B08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1AC3B68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1AC3BD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1D1AC3C48(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D1E677EC();
  v4 = [v2 _beginActiveAssertionWithReason_];

  return v4;
}

uint64_t static HomeState.Stream.isSupported.getter()
{
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  v0 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  return v0 & 1;
}

void *sub_1D1AC3D00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  result = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v16 - v3;
  v5 = *v0;
  v6 = *(*v0 + 128);
  if (!*(v0 + v6))
  {
    v7 = sub_1D1E67E7C();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v8;
    v10 = sub_1D1B1DFC0(0, 0, v4, &unk_1D1E96DC0, v9);
    sub_1D1741A30(v4, &unk_1EC6442C0, &qword_1D1E741A0);
    *(v0 + v6) = v10;

    v5 = *v0;
  }

  v11 = *(v5 + 136);
  if (!*(v0 + v11))
  {
    result = (*(v5 + 216))(&v16, result);
    if (v17)
    {
      sub_1D16EEE20(&v16, v18);
      v12 = sub_1D1E67E7C();
      (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
      v13 = swift_allocObject();
      swift_weakInit();
      sub_1D17419CC(v18, &v16);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      sub_1D16EEE20(&v16, (v14 + 4));
      v14[9] = v13;
      v15 = sub_1D1B1DFC0(0, 0, v4, &unk_1D1E96DD0, v14);
      sub_1D1741A30(v4, &unk_1EC6442C0, &qword_1D1E741A0);
      __swift_destroy_boxed_opaque_existential_1(v18);
      *(v0 + v11) = v15;
    }
  }

  return result;
}

void *sub_1D1AC3FD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  result = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v16 - v3;
  v5 = *v0;
  v6 = *(*v0 + 128);
  if (!*(v0 + v6))
  {
    v7 = sub_1D1E67E7C();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v8;
    v10 = sub_1D1B1DFC0(0, 0, v4, &unk_1D1E96C98, v9);
    sub_1D1741A30(v4, &unk_1EC6442C0, &qword_1D1E741A0);
    *(v0 + v6) = v10;

    v5 = *v0;
  }

  v11 = *(v5 + 136);
  if (!*(v0 + v11))
  {
    result = (*(v5 + 216))(&v16, result);
    if (v17)
    {
      sub_1D16EEE20(&v16, v18);
      v12 = sub_1D1E67E7C();
      (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
      v13 = swift_allocObject();
      swift_weakInit();
      sub_1D17419CC(v18, &v16);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      sub_1D16EEE20(&v16, (v14 + 4));
      v14[9] = v13;
      v15 = sub_1D1B1DFC0(0, 0, v4, &unk_1D1E96CE8, v14);
      sub_1D1741A30(v4, &unk_1EC6442C0, &qword_1D1E741A0);
      __swift_destroy_boxed_opaque_existential_1(v18);
      *(v0 + v11) = v15;
    }
  }

  return result;
}

uint64_t sub_1D1AC42A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7C0, &qword_1D1E96CF0);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643318, &qword_1D1E71770);
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7C8, &qword_1D1E96CF8);
  v4[29] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7D0, &qword_1D1E96D00);
  v4[30] = v6;
  v4[31] = *(*(v6 - 8) + 64);
  v4[32] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C40, qword_1D1E968E0);
  v4[33] = v7;
  v4[34] = *(v7 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7D8, &qword_1D1E96D08);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AC4520, 0, 0);
}

uint64_t sub_1D1AC4520()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[38];
    v2 = v0[39];
    v4 = v0[37];
    v5 = v0[34];
    v15 = v0[36];
    v16 = v0[35];
    v6 = v0[33];
    v19 = v0[32];
    __n = v0[31];
    v7 = v0[29];
    v17 = v0[28];
    v18 = v0[30];
    v8 = *(v5 + 16);
    v8(v3, Strong + *(*Strong + 112), v6);

    *(v3 + *(v4 + 36)) = 0;
    sub_1D1741A90(v3, v2, &qword_1EC64A7D8, &qword_1D1E96D08);
    v8(v15, v2, v6);
    LOBYTE(v4) = *(v2 + *(v4 + 36));
    v8(v16, v15, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7E0, &qword_1D1E96D10);
    v9 = swift_allocObject();
    v0[40] = v9;
    *(v7 + *(v17 + 36)) = 0;
    *(v7 + *(v17 + 40)) = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7E8, &qword_1D1E96D18);
    swift_storeEnumTagMultiPayload();
    *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7F0, &qword_1D1E96D20) + 36)) = v4;
    *v19 = 0;
    v10 = *(v18 + 28);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7F8, &qword_1D1E96D28);
    bzero(v19 + v10, *(*(v11 - 8) + 64));
    sub_1D1741A90(v7, v19 + v10, &qword_1EC64A7C8, &qword_1D1E96CF8);
    memcpy((v9 + *(*v9 + 96)), v19, __n);
    (*(v5 + 32))(v9 + *(*v9 + 104), v16, v6);
    (*(v5 + 8))(v15, v6);
    swift_beginAccess();
    swift_beginAccess();
    v12 = swift_task_alloc();
    v0[41] = v12;
    *v12 = v0;
    v12[1] = sub_1D1AC4924;

    return sub_1D1ACDCB4();
  }

  else
  {
    sub_1D1AB648C();

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1D1AC4924(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {
    v4 = sub_1D1AC52E0;
  }

  else
  {
    v4 = sub_1D1AC4A38;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1D1AC4A54()
{
  v1 = *(v0 + 336);
  if (v1)
  {
    v2 = *(v1 + 16);
    *(v0 + 352) = v2;
    v57 = v2;
    if (v2)
    {
      v3 = 0;
      v59 = MEMORY[0x1E69E7CC0];
      v55 = v1;
      while (v3 < *(v1 + 16))
      {
        v4 = *(v0 + 216);
        v6 = *(v0 + 168);
        v5 = *(v0 + 176);
        v7 = *(v0 + 160);
        v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v9 = *(v5 + 72);
        sub_1D1741C08(v1 + v8 + v9 * v3, v4, &qword_1EC643318, &qword_1D1E71770);
        sub_1D1741C08(v4 + *(v6 + 44), v7, &qword_1EC64A7C0, &qword_1D1E96CF0);
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
        v11 = (*(*(v10 - 8) + 48))(v7, 1, v10);
        v12 = *(v0 + 216);
        if (v11 == 1)
        {
          sub_1D1741A30(*(v0 + 216), &qword_1EC643318, &qword_1D1E71770);
        }

        else
        {
          v13 = *(v0 + 208);
          sub_1D1741A30(*(v0 + 160), &qword_1EC64A7C0, &qword_1D1E96CF0);
          sub_1D1741A90(v12, v13, &qword_1EC643318, &qword_1D1E71770);
          v14 = v59;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 120) = v59;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D178DAB0(0, *(v59 + 16) + 1, 1);
            v14 = *(v0 + 120);
          }

          v17 = *(v14 + 16);
          v16 = *(v14 + 24);
          if (v17 >= v16 >> 1)
          {
            sub_1D178DAB0((v16 > 1), v17 + 1, 1);
            v14 = *(v0 + 120);
          }

          v18 = *(v0 + 208);
          *(v14 + 16) = v17 + 1;
          v59 = v14;
          sub_1D1741A90(v18, v14 + v8 + v17 * v9, &qword_1EC643318, &qword_1D1E71770);
        }

        ++v3;
        v1 = v55;
        if (v57 == v3)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_49;
    }

    v59 = MEMORY[0x1E69E7CC0];
LABEL_17:
    *(v0 + 360) = v59;
    Strong = swift_weakLoadStrong();
    *(v0 + 368) = Strong;
    if (Strong)
    {
      v22 = swift_task_alloc();
      *(v0 + 376) = v22;
      *v22 = v0;
      v22[1] = sub_1D1AC536C;

      sub_1D1AC8570(v59);
    }

    else
    {

      if (*(v0 + 352))
      {
        v23 = 0;
        v60 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v24 = *(v0 + 336);
          if (v23 >= *(v24 + 16))
          {
            break;
          }

          v25 = *(v0 + 200);
          v27 = *(v0 + 168);
          v26 = *(v0 + 176);
          v28 = *(v0 + 152);
          v29 = (*(v26 + 80) + 32) & ~*(v26 + 80);
          v30 = *(v26 + 72);
          sub_1D1741C08(v24 + v29 + v30 * v23, v25, &qword_1EC643318, &qword_1D1E71770);
          sub_1D1741C08(v25 + *(v27 + 44), v28, &qword_1EC64A7C0, &qword_1D1E96CF0);
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
          v32 = (*(*(v31 - 8) + 48))(v28, 1, v31);
          v33 = *(v0 + 200);
          if (v32 == 1)
          {
            sub_1D1741A90(*(v0 + 200), *(v0 + 192), &qword_1EC643318, &qword_1D1E71770);
            v34 = v60;
            v35 = swift_isUniquelyReferenced_nonNull_native();
            *(v0 + 128) = v60;
            if ((v35 & 1) == 0)
            {
              sub_1D178DAB0(0, *(v60 + 16) + 1, 1);
              v34 = *(v0 + 128);
            }

            v37 = *(v34 + 16);
            v36 = *(v34 + 24);
            if (v37 >= v36 >> 1)
            {
              sub_1D178DAB0((v36 > 1), v37 + 1, 1);
              v34 = *(v0 + 128);
            }

            v38 = *(v0 + 192);
            *(v34 + 16) = v37 + 1;
            v60 = v34;
            sub_1D1741A90(v38, v34 + v29 + v37 * v30, &qword_1EC643318, &qword_1D1E71770);
          }

          else
          {
            sub_1D1741A30(*(v0 + 152), &qword_1EC64A7C0, &qword_1D1E96CF0);
            sub_1D1741A30(v33, &qword_1EC643318, &qword_1D1E71770);
          }

          if (++v23 == *(v0 + 352))
          {
            goto LABEL_33;
          }
        }

LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        return;
      }

      v60 = MEMORY[0x1E69E7CC0];
LABEL_33:

      v39 = swift_weakLoadStrong();
      *(v0 + 384) = v39;
      if (v39)
      {
        v40 = v39;
        v41 = *(v60 + 16);
        if (v41)
        {
          v56 = v39;
          v42 = *(v0 + 176);
          *(v0 + 136) = MEMORY[0x1E69E7CC0];
          sub_1D178DA58(0, v41, 0);
          v43 = 0;
          v44 = *(v0 + 136);
          v45 = v60;
          v58 = v60 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
          while (v43 < *(v45 + 16))
          {
            v46 = *(v0 + 184);
            sub_1D1741C08(v58 + *(*(v0 + 176) + 72) * v43, v46, &qword_1EC643318, &qword_1D1E71770);
            v47 = *v46;
            v48 = *(v46 + 8);
            v49 = *(v46 + 16);
            sub_1D1A28388(*v46, v48, v49);
            sub_1D1741A30(v46, &qword_1EC643318, &qword_1D1E71770);
            *(v0 + 136) = v44;
            v51 = *(v44 + 16);
            v50 = *(v44 + 24);
            if (v51 >= v50 >> 1)
            {
              sub_1D178DA58((v50 > 1), v51 + 1, 1);
              v44 = *(v0 + 136);
            }

            ++v43;
            *(v44 + 16) = v51 + 1;
            v52 = v44 + 24 * v51;
            *(v52 + 32) = v47;
            *(v52 + 40) = v48;
            *(v52 + 48) = v49;
            v45 = v60;
            if (v41 == v43)
            {

              v40 = v56;
              goto LABEL_45;
            }
          }

          goto LABEL_50;
        }

        v44 = MEMORY[0x1E69E7CC0];
LABEL_45:
        *(v0 + 392) = v44;
        *(v0 + 96) = 0;
        *(v0 + 104) = 0;
        *(v0 + 88) = 0;
        v61 = (*(*v40 + 272) + **(*v40 + 272));
        v54 = swift_task_alloc();
        *(v0 + 400) = v54;
        *v54 = v0;
        v54[1] = sub_1D1AC59AC;

        v61(v44, v0 + 88);
      }

      else
      {

        v53 = swift_task_alloc();
        *(v0 + 328) = v53;
        *v53 = v0;
        v53[1] = sub_1D1AC4924;

        sub_1D1ACDCB4();
      }
    }
  }

  else
  {
    v19 = *(v0 + 312);

    sub_1D1741A30(v19, &qword_1EC64A7D8, &qword_1D1E96D08);
    sub_1D1AB648C();

    v20 = *(v0 + 8);

    v20();
  }
}

uint64_t sub_1D1AC52E0()
{
  *(v0 + 112) = *(v0 + 344);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1D1AC536C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1AC54A0, 0, 0);
}

void sub_1D1AC54A0()
{
  if (*(v0 + 352))
  {
    v1 = 0;
    v35 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v2 = *(v0 + 336);
      if (v1 >= *(v2 + 16))
      {
        break;
      }

      v3 = *(v0 + 200);
      v5 = *(v0 + 168);
      v4 = *(v0 + 176);
      v6 = *(v0 + 152);
      v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v8 = *(v4 + 72);
      sub_1D1741C08(v2 + v7 + v8 * v1, v3, &qword_1EC643318, &qword_1D1E71770);
      sub_1D1741C08(v3 + *(v5 + 44), v6, &qword_1EC64A7C0, &qword_1D1E96CF0);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
      v10 = (*(*(v9 - 8) + 48))(v6, 1, v9);
      v11 = *(v0 + 200);
      if (v10 == 1)
      {
        sub_1D1741A90(*(v0 + 200), *(v0 + 192), &qword_1EC643318, &qword_1D1E71770);
        v12 = v35;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 128) = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D178DAB0(0, *(v35 + 16) + 1, 1);
          v12 = *(v0 + 128);
        }

        v15 = *(v12 + 16);
        v14 = *(v12 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1D178DAB0((v14 > 1), v15 + 1, 1);
          v12 = *(v0 + 128);
        }

        v16 = *(v0 + 192);
        *(v12 + 16) = v15 + 1;
        v35 = v12;
        sub_1D1741A90(v16, v12 + v7 + v15 * v8, &qword_1EC643318, &qword_1D1E71770);
      }

      else
      {
        sub_1D1741A30(*(v0 + 152), &qword_1EC64A7C0, &qword_1D1E96CF0);
        sub_1D1741A30(v11, &qword_1EC643318, &qword_1D1E71770);
      }

      if (++v1 == *(v0 + 352))
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  v35 = MEMORY[0x1E69E7CC0];
LABEL_13:

  Strong = swift_weakLoadStrong();
  *(v0 + 384) = Strong;
  if (Strong)
  {
    v18 = Strong;
    v19 = *(v35 + 16);
    if (v19)
    {
      v33 = Strong;
      v20 = *(v0 + 176);
      *(v0 + 136) = MEMORY[0x1E69E7CC0];
      sub_1D178DA58(0, v19, 0);
      v21 = 0;
      v22 = *(v0 + 136);
      v23 = v35;
      v34 = v35 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
      while (v21 < *(v23 + 16))
      {
        v24 = *(v0 + 184);
        sub_1D1741C08(v34 + *(*(v0 + 176) + 72) * v21, v24, &qword_1EC643318, &qword_1D1E71770);
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = *(v24 + 16);
        sub_1D1A28388(*v24, v26, v27);
        sub_1D1741A30(v24, &qword_1EC643318, &qword_1D1E71770);
        *(v0 + 136) = v22;
        v29 = *(v22 + 16);
        v28 = *(v22 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1D178DA58((v28 > 1), v29 + 1, 1);
          v22 = *(v0 + 136);
        }

        ++v21;
        *(v22 + 16) = v29 + 1;
        v30 = v22 + 24 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v26;
        *(v30 + 48) = v27;
        v23 = v35;
        if (v19 == v21)
        {

          v18 = v33;
          goto LABEL_25;
        }
      }

LABEL_29:
      __break(1u);
      return;
    }

    v22 = MEMORY[0x1E69E7CC0];
LABEL_25:
    *(v0 + 392) = v22;
    *(v0 + 96) = 0;
    *(v0 + 104) = 0;
    *(v0 + 88) = 0;
    v36 = (*(*v18 + 272) + **(*v18 + 272));
    v32 = swift_task_alloc();
    *(v0 + 400) = v32;
    *v32 = v0;
    v32[1] = sub_1D1AC59AC;

    v36(v22, v0 + 88);
  }

  else
  {

    v31 = swift_task_alloc();
    *(v0 + 328) = v31;
    *v31 = v0;
    v31[1] = sub_1D1AC4924;

    sub_1D1ACDCB4();
  }
}

uint64_t sub_1D1AC59AC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 328) = v3;
  *v3 = v2;
  v3[1] = sub_1D1AC4924;

  return sub_1D1ACDCB4();
}

uint64_t sub_1D1AC5B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v4[19] = *(type metadata accessor for StateSnapshot.UpdateType(0) - 8);
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A868, &qword_1D1E96DD8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A870, &qword_1D1E96DE0);
  v4[31] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A878, &qword_1D1E96DE8);
  v4[32] = v6;
  v4[33] = *(*(v6 - 8) + 64);
  v4[34] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C50, &qword_1D1E96058);
  v4[35] = v7;
  v4[36] = *(v7 - 8);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A880, &qword_1D1E96DF0);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AC5E20, 0, 0);
}

uint64_t sub_1D1AC5E20()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[40];
    v2 = v0[41];
    v4 = v0[39];
    v5 = v0[36];
    v15 = v0[38];
    v16 = v0[37];
    v6 = v0[35];
    v19 = v0[34];
    __n = v0[33];
    v7 = v0[31];
    v17 = v0[30];
    v18 = v0[32];
    v8 = *(v5 + 16);
    v8(v3, Strong + *(*Strong + 112), v6);

    *(v3 + *(v4 + 36)) = 0;
    sub_1D1741A90(v3, v2, &qword_1EC64A880, &qword_1D1E96DF0);
    v8(v15, v2, v6);
    LOBYTE(v4) = *(v2 + *(v4 + 36));
    v8(v16, v15, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A888, &qword_1D1E96DF8);
    v9 = swift_allocObject();
    v0[42] = v9;
    *(v7 + *(v17 + 36)) = 0;
    *(v7 + *(v17 + 40)) = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A890, &qword_1D1E96E00);
    swift_storeEnumTagMultiPayload();
    *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A898, &qword_1D1E96E08) + 36)) = v4;
    *v19 = 0;
    v10 = *(v18 + 28);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8A0, &qword_1D1E96E10);
    bzero(v19 + v10, *(*(v11 - 8) + 64));
    sub_1D1741A90(v7, v19 + v10, &qword_1EC64A870, &qword_1D1E96DE0);
    memcpy((v9 + *(*v9 + 96)), v19, __n);
    (*(v5 + 32))(v9 + *(*v9 + 104), v16, v6);
    (*(v5 + 8))(v15, v6);
    swift_beginAccess();
    swift_beginAccess();
    v12 = swift_task_alloc();
    v0[43] = v12;
    *v12 = v0;
    v12[1] = sub_1D1AC6234;

    return sub_1D1ACDF04();
  }

  else
  {
    sub_1D1AB648C();

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1D1AC6234(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v4 = sub_1D1AC6C28;
  }

  else
  {
    v4 = sub_1D1AC6348;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1D1AC6364()
{
  v1 = *(v0 + 352);
  if (v1)
  {
    v2 = *(v1 + 16);
    *(v0 + 368) = v2;
    v56 = v2;
    if (v2)
    {
      v3 = 0;
      v58 = MEMORY[0x1E69E7CC0];
      v55 = v1;
      while (v3 < *(v1 + 16))
      {
        v4 = *(v0 + 232);
        v6 = *(v0 + 184);
        v5 = *(v0 + 192);
        v7 = *(v0 + 176);
        v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v9 = *(v5 + 72);
        sub_1D1741C08(v1 + v8 + v9 * v3, v4, &unk_1EC64A270, &qword_1D1E71780);
        sub_1D1741C08(v4 + *(v6 + 44), v7, &qword_1EC64A868, &qword_1D1E96DD8);
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC8, &qword_1D1E96508);
        v11 = (*(*(v10 - 8) + 48))(v7, 1, v10);
        v12 = *(v0 + 232);
        if (v11 == 1)
        {
          sub_1D1741A30(*(v0 + 232), &unk_1EC64A270, &qword_1D1E71780);
        }

        else
        {
          v13 = *(v0 + 224);
          sub_1D1741A30(*(v0 + 176), &qword_1EC64A868, &qword_1D1E96DD8);
          sub_1D1741A90(v12, v13, &unk_1EC64A270, &qword_1D1E71780);
          v14 = v58;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 120) = v58;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D178DAF0(0, *(v58 + 16) + 1, 1);
            v14 = *(v0 + 120);
          }

          v17 = *(v14 + 16);
          v16 = *(v14 + 24);
          if (v17 >= v16 >> 1)
          {
            sub_1D178DAF0((v16 > 1), v17 + 1, 1);
            v14 = *(v0 + 120);
          }

          v18 = *(v0 + 224);
          *(v14 + 16) = v17 + 1;
          v58 = v14;
          sub_1D1741A90(v18, v14 + v8 + v17 * v9, &unk_1EC64A270, &qword_1D1E71780);
        }

        ++v3;
        v1 = v55;
        if (v56 == v3)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_49;
    }

    v58 = MEMORY[0x1E69E7CC0];
LABEL_17:
    *(v0 + 376) = v58;
    Strong = swift_weakLoadStrong();
    *(v0 + 384) = Strong;
    if (Strong)
    {
      v22 = swift_task_alloc();
      *(v0 + 392) = v22;
      *v22 = v0;
      v22[1] = sub_1D1AC6CB4;

      sub_1D1AC9EC0(v58);
    }

    else
    {

      if (*(v0 + 368))
      {
        v23 = 0;
        v59 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v24 = *(v0 + 352);
          if (v23 >= *(v24 + 16))
          {
            break;
          }

          v25 = *(v0 + 216);
          v27 = *(v0 + 184);
          v26 = *(v0 + 192);
          v28 = *(v0 + 168);
          v29 = (*(v26 + 80) + 32) & ~*(v26 + 80);
          v30 = *(v26 + 72);
          sub_1D1741C08(v24 + v29 + v30 * v23, v25, &unk_1EC64A270, &qword_1D1E71780);
          sub_1D1741C08(v25 + *(v27 + 44), v28, &qword_1EC64A868, &qword_1D1E96DD8);
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC8, &qword_1D1E96508);
          v32 = (*(*(v31 - 8) + 48))(v28, 1, v31);
          v33 = *(v0 + 216);
          if (v32 == 1)
          {
            sub_1D1741A90(*(v0 + 216), *(v0 + 208), &unk_1EC64A270, &qword_1D1E71780);
            v34 = v59;
            v35 = swift_isUniquelyReferenced_nonNull_native();
            *(v0 + 128) = v59;
            if ((v35 & 1) == 0)
            {
              sub_1D178DAF0(0, *(v59 + 16) + 1, 1);
              v34 = *(v0 + 128);
            }

            v37 = *(v34 + 16);
            v36 = *(v34 + 24);
            if (v37 >= v36 >> 1)
            {
              sub_1D178DAF0((v36 > 1), v37 + 1, 1);
              v34 = *(v0 + 128);
            }

            v38 = *(v0 + 208);
            *(v34 + 16) = v37 + 1;
            v59 = v34;
            sub_1D1741A90(v38, v34 + v29 + v37 * v30, &unk_1EC64A270, &qword_1D1E71780);
          }

          else
          {
            sub_1D1741A30(*(v0 + 168), &qword_1EC64A868, &qword_1D1E96DD8);
            sub_1D1741A30(v33, &unk_1EC64A270, &qword_1D1E71780);
          }

          if (++v23 == *(v0 + 368))
          {
            goto LABEL_33;
          }
        }

LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        return;
      }

      v59 = MEMORY[0x1E69E7CC0];
LABEL_33:

      v39 = swift_weakLoadStrong();
      *(v0 + 400) = v39;
      if (v39)
      {
        v40 = v39;
        v41 = *(v59 + 16);
        if (v41)
        {
          v57 = v39;
          v42 = *(v0 + 192);
          *(v0 + 136) = MEMORY[0x1E69E7CC0];
          sub_1D178D7B4(0, v41, 0);
          v43 = 0;
          v44 = *(v0 + 136);
          v45 = v59;
          v46 = v59 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
          while (v43 < *(v45 + 16))
          {
            v47 = *(v0 + 200);
            v48 = *(v0 + 160);
            sub_1D1741C08(v46 + *(*(v0 + 192) + 72) * v43, v47, &unk_1EC64A270, &qword_1D1E71780);
            sub_1D1AD7678(v47, v48, type metadata accessor for StateSnapshot.UpdateType);
            sub_1D1741A30(v47, &unk_1EC64A270, &qword_1D1E71780);
            *(v0 + 136) = v44;
            v50 = *(v44 + 16);
            v49 = *(v44 + 24);
            if (v50 >= v49 >> 1)
            {
              sub_1D178D7B4((v49 > 1), v50 + 1, 1);
              v44 = *(v0 + 136);
            }

            v52 = *(v0 + 152);
            v51 = *(v0 + 160);
            ++v43;
            *(v44 + 16) = v50 + 1;
            sub_1D1AD76E0(v51, v44 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v50, type metadata accessor for StateSnapshot.UpdateType);
            v45 = v59;
            if (v41 == v43)
            {

              v40 = v57;
              goto LABEL_45;
            }
          }

          goto LABEL_50;
        }

        v44 = MEMORY[0x1E69E7CC0];
LABEL_45:
        *(v0 + 408) = v44;
        *(v0 + 96) = 0;
        *(v0 + 104) = 0;
        *(v0 + 88) = 0;
        v60 = (*(*v40 + 272) + **(*v40 + 272));
        v54 = swift_task_alloc();
        *(v0 + 416) = v54;
        *v54 = v0;
        v54[1] = sub_1D1AC731C;

        v60(v44, v0 + 88);
      }

      else
      {

        v53 = swift_task_alloc();
        *(v0 + 344) = v53;
        *v53 = v0;
        v53[1] = sub_1D1AC6234;

        sub_1D1ACDF04();
      }
    }
  }

  else
  {
    v19 = *(v0 + 328);

    sub_1D1741A30(v19, &qword_1EC64A880, &qword_1D1E96DF0);
    sub_1D1AB648C();

    v20 = *(v0 + 8);

    v20();
  }
}

uint64_t sub_1D1AC6C28()
{
  *(v0 + 112) = *(v0 + 360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1D1AC6CB4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1AC6DE8, 0, 0);
}

void sub_1D1AC6DE8()
{
  if (*(v0 + 368))
  {
    v1 = 0;
    v34 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v2 = *(v0 + 352);
      if (v1 >= *(v2 + 16))
      {
        break;
      }

      v3 = *(v0 + 216);
      v5 = *(v0 + 184);
      v4 = *(v0 + 192);
      v6 = *(v0 + 168);
      v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v8 = *(v4 + 72);
      sub_1D1741C08(v2 + v7 + v8 * v1, v3, &unk_1EC64A270, &qword_1D1E71780);
      sub_1D1741C08(v3 + *(v5 + 44), v6, &qword_1EC64A868, &qword_1D1E96DD8);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC8, &qword_1D1E96508);
      v10 = (*(*(v9 - 8) + 48))(v6, 1, v9);
      v11 = *(v0 + 216);
      if (v10 == 1)
      {
        sub_1D1741A90(*(v0 + 216), *(v0 + 208), &unk_1EC64A270, &qword_1D1E71780);
        v12 = v34;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 128) = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D178DAF0(0, *(v34 + 16) + 1, 1);
          v12 = *(v0 + 128);
        }

        v15 = *(v12 + 16);
        v14 = *(v12 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1D178DAF0((v14 > 1), v15 + 1, 1);
          v12 = *(v0 + 128);
        }

        v16 = *(v0 + 208);
        *(v12 + 16) = v15 + 1;
        v34 = v12;
        sub_1D1741A90(v16, v12 + v7 + v15 * v8, &unk_1EC64A270, &qword_1D1E71780);
      }

      else
      {
        sub_1D1741A30(*(v0 + 168), &qword_1EC64A868, &qword_1D1E96DD8);
        sub_1D1741A30(v11, &unk_1EC64A270, &qword_1D1E71780);
      }

      if (++v1 == *(v0 + 368))
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  v34 = MEMORY[0x1E69E7CC0];
LABEL_13:

  Strong = swift_weakLoadStrong();
  *(v0 + 400) = Strong;
  if (Strong)
  {
    v18 = Strong;
    v19 = *(v34 + 16);
    if (v19)
    {
      v33 = Strong;
      v20 = *(v0 + 192);
      *(v0 + 136) = MEMORY[0x1E69E7CC0];
      sub_1D178D7B4(0, v19, 0);
      v21 = 0;
      v22 = *(v0 + 136);
      v23 = v34;
      v24 = v34 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
      while (v21 < *(v23 + 16))
      {
        v25 = *(v0 + 200);
        v26 = *(v0 + 160);
        sub_1D1741C08(v24 + *(*(v0 + 192) + 72) * v21, v25, &unk_1EC64A270, &qword_1D1E71780);
        sub_1D1AD7678(v25, v26, type metadata accessor for StateSnapshot.UpdateType);
        sub_1D1741A30(v25, &unk_1EC64A270, &qword_1D1E71780);
        *(v0 + 136) = v22;
        v28 = *(v22 + 16);
        v27 = *(v22 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1D178D7B4((v27 > 1), v28 + 1, 1);
          v22 = *(v0 + 136);
        }

        v30 = *(v0 + 152);
        v29 = *(v0 + 160);
        ++v21;
        *(v22 + 16) = v28 + 1;
        sub_1D1AD76E0(v29, v22 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v28, type metadata accessor for StateSnapshot.UpdateType);
        v23 = v34;
        if (v19 == v21)
        {

          v18 = v33;
          goto LABEL_25;
        }
      }

LABEL_29:
      __break(1u);
      return;
    }

    v22 = MEMORY[0x1E69E7CC0];
LABEL_25:
    *(v0 + 408) = v22;
    *(v0 + 96) = 0;
    *(v0 + 104) = 0;
    *(v0 + 88) = 0;
    v35 = (*(*v18 + 272) + **(*v18 + 272));
    v32 = swift_task_alloc();
    *(v0 + 416) = v32;
    *v32 = v0;
    v32[1] = sub_1D1AC731C;

    v35(v22, v0 + 88);
  }

  else
  {

    v31 = swift_task_alloc();
    *(v0 + 344) = v31;
    *v31 = v0;
    v31[1] = sub_1D1AC6234;

    sub_1D1ACDF04();
  }
}

uint64_t sub_1D1AC731C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 344) = v3;
  *v3 = v2;
  v3[1] = sub_1D1AC6234;

  return sub_1D1ACDF04();
}

uint64_t sub_1D1AC74C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = type metadata accessor for MatterStateSnapshot(0);
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AC75B8, 0, 0);
}

uint64_t sub_1D1AC75B8()
{
  v1 = v0[10];
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1D1E6801C();

  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_1D1AC7784;
  v7 = v0[15];

  return MEMORY[0x1EEE6D8D0](v7, 0, 0);
}

uint64_t sub_1D1AC7784()
{

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1AC7894, 0, 0);
  }

  return result;
}

uint64_t sub_1D1AC7894()
{
  v1 = v0[15];
  if ((*(v0[13] + 48))(v1, 1, v0[12]) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v2 = v0[1];

    return v2();
  }

  else
  {
    sub_1D1AD76E0(v1, v0[14], type metadata accessor for MatterStateSnapshot);
    Strong = swift_weakLoadStrong();
    v0[17] = Strong;
    if (Strong)
    {
      v9 = (*(*Strong + 280) + **(*Strong + 280));
      v5 = swift_task_alloc();
      v0[18] = v5;
      *v5 = v0;
      v5[1] = sub_1D1AC7B20;
      v6 = v0[14];

      return v9(v6);
    }

    else
    {
      sub_1D1AD7050(v0[14], type metadata accessor for MatterStateSnapshot);
      __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
      v7 = swift_task_alloc();
      v0[16] = v7;
      *v7 = v0;
      v7[1] = sub_1D1AC7784;
      v8 = v0[15];

      return MEMORY[0x1EEE6D8D0](v8, 0, 0);
    }
  }
}

uint64_t sub_1D1AC7B20()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1AC7C38, 0, 0);
}

uint64_t sub_1D1AC7C38()
{
  sub_1D1AD7050(v0[14], type metadata accessor for MatterStateSnapshot);
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_1D1AC7784;
  v2 = v0[15];

  return MEMORY[0x1EEE6D8D0](v2, 0, 0);
}

uint64_t sub_1D1AC7D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = type metadata accessor for StateSnapshot(0);
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AC7E10, 0, 0);
}

uint64_t sub_1D1AC7E10()
{
  v1 = v0[10];
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1D1E6801C();

  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_1D1AC7FDC;
  v7 = v0[15];

  return MEMORY[0x1EEE6D8D0](v7, 0, 0);
}

uint64_t sub_1D1AC7FDC()
{

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1AC80EC, 0, 0);
  }

  return result;
}

uint64_t sub_1D1AC80EC()
{
  v1 = v0[15];
  if ((*(v0[13] + 48))(v1, 1, v0[12]) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v2 = v0[1];

    return v2();
  }

  else
  {
    sub_1D1AD76E0(v1, v0[14], type metadata accessor for StateSnapshot);
    Strong = swift_weakLoadStrong();
    v0[17] = Strong;
    if (Strong)
    {
      v9 = (*(*Strong + 280) + **(*Strong + 280));
      v5 = swift_task_alloc();
      v0[18] = v5;
      *v5 = v0;
      v5[1] = sub_1D1AC8378;
      v6 = v0[14];

      return v9(v6);
    }

    else
    {
      sub_1D1AD7050(v0[14], type metadata accessor for StateSnapshot);
      __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
      v7 = swift_task_alloc();
      v0[16] = v7;
      *v7 = v0;
      v7[1] = sub_1D1AC7FDC;
      v8 = v0[15];

      return MEMORY[0x1EEE6D8D0](v8, 0, 0);
    }
  }
}

uint64_t sub_1D1AC8378()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1AC8490, 0, 0);
}

uint64_t sub_1D1AC8490()
{
  sub_1D1AD7050(v0[14], type metadata accessor for StateSnapshot);
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_1D1AC7FDC;
  v2 = v0[15];

  return MEMORY[0x1EEE6D8D0](v2, 0, 0);
}

uint64_t sub_1D1AC8570(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A800, &qword_1D1E96D40);
  v2[15] = swift_task_alloc();
  v2[16] = *(type metadata accessor for MatterStateSnapshot(0) - 8);
  v2[17] = swift_task_alloc();
  v3 = sub_1D1E66A7C();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645410, &unk_1D1E799A0);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7C0, &qword_1D1E96CF0);
  v2[23] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643318, &qword_1D1E71770);
  v2[27] = v5;
  v2[28] = *(v5 - 8);
  v2[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AC880C, 0, 0);
}

uint64_t sub_1D1AC880C()
{
  v1 = *(*(v0 + 104) + 16);
  *(v0 + 240) = v1;
  if (v1)
  {
    v2 = 0;
    v3 = *(v0 + 224);
    *(v0 + 92) = *(v3 + 80);
    *(v0 + 248) = *(v3 + 72);
    while (1)
    {
      *(v0 + 256) = v2;
      v4 = *(v0 + 232);
      v5 = *(v0 + 216);
      v6 = *(v0 + 192);
      v7 = *(v0 + 200);
      v8 = *(v0 + 184);
      sub_1D1741C08(*(v0 + 104) + ((*(v0 + 92) + 32) & ~*(v0 + 92)) + *(v0 + 248) * v2, v4, &qword_1EC643318, &qword_1D1E71770);
      sub_1D1741C08(v4 + *(v5 + 44), v8, &qword_1EC64A7C0, &qword_1D1E96CF0);
      if ((*(v7 + 48))(v8, 1, v6) != 1)
      {
        break;
      }

      v9 = *(v0 + 184);
      sub_1D1741A30(*(v0 + 232), &qword_1EC643318, &qword_1D1E71770);
      sub_1D1741A30(v9, &qword_1EC64A7C0, &qword_1D1E96CF0);
      v2 = *(v0 + 256) + 1;
      if (v2 == *(v0 + 240))
      {
        goto LABEL_5;
      }
    }

    v12 = *(v0 + 232);
    v13 = *(v0 + 208);
    v14 = *(v0 + 112);
    sub_1D1741A90(*(v0 + 184), v13, &qword_1EC645C58, &qword_1D1E7C010);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6431B0, &unk_1D1E71F40);
    inited = swift_initStackObject();
    *(v0 + 264) = inited;
    *(inited + 16) = xmmword_1D1E739C0;
    v16 = *v12;
    v17 = *(v12 + 8);
    v18 = *(v12 + 16);
    *(inited + 32) = *v12;
    *(inited + 40) = v17;
    *(inited + 48) = v18;
    v19 = *v13;
    v20 = *(v13 + 8);
    v21 = *(v13 + 16);
    *(v0 + 72) = *v13;
    *(v0 + 80) = v20;
    *(v0 + 88) = v21;
    v22 = *(*v14 + 272);
    sub_1D1A28388(v16, v17, v18);
    sub_1D1AC3828(v19, v20, v21);
    v24 = (v22 + *v22);
    v23 = swift_task_alloc();
    *(v0 + 272) = v23;
    *v23 = v0;
    v23[1] = sub_1D1AC8B84;

    return v24(inited, v0 + 72);
  }

  else
  {
LABEL_5:

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1D1AC8B84(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 280) = a1;

  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1D1AD7288(*(v2 + 72), *(v2 + 80), *(v3 + 88));

  return MEMORY[0x1EEE6DFA0](sub_1D1AC8CF4, 0, 0);
}

uint64_t sub_1D1AC8CF4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  if (*(v1 + *(v2 + 48)))
  {
    v3 = *(v0 + 280);
    v4 = *(v3 + 32);
    *(v0 + 89) = v4;
    v5 = -1;
    v6 = -1 << v4;
    if (-(-1 << v4) < 64)
    {
      v5 = ~(-1 << -v6);
    }

    v7 = v5 & *(v3 + 64);

    if (v7)
    {
      v8 = 0;
LABEL_9:
      v12 = *(v0 + 160);
      v11 = *(v0 + 168);
      v13 = *(v0 + 144);
      v14 = *(v0 + 152);
      v16 = *(v0 + 128);
      v15 = *(v0 + 136);
      v57 = (v7 - 1) & v7;
      v17 = __clz(__rbit64(v7)) | (v8 << 6);
      (*(v14 + 16))(v12, *(v3 + 48) + *(v14 + 72) * v17, v13);
      sub_1D1AD7678(*(v3 + 56) + *(v16 + 72) * v17, v15, type metadata accessor for MatterStateSnapshot);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
      v19 = *(v18 + 48);
      (*(v14 + 32))(v11, v12, v13);
      sub_1D1AD76E0(v15, v11 + v19, type metadata accessor for MatterStateSnapshot);
      (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
      v20 = v57;
      v10 = v8;
    }

    else
    {
      v9 = 0;
      v10 = ((63 - v6) >> 6) - 1;
      while (v10 != v9)
      {
        v8 = v9 + 1;
        v7 = *(v3 + 72 + 8 * v9++);
        if (v7)
        {
          goto LABEL_9;
        }
      }

      v54 = *(v0 + 168);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
      (*(*(v55 - 8) + 56))(v54, 1, 1, v55);
      v20 = 0;
    }

    *(v0 + 288) = v20;
    *(v0 + 296) = v10;
    v21 = *(v0 + 176);
    sub_1D1741A90(*(v0 + 168), v21, &qword_1EC645410, &unk_1D1E799A0);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
    if ((*(*(v22 - 8) + 48))(v21, 1, v22) != 1)
    {
      v39 = *(v0 + 112);
      sub_1D1AD76E0(*(v0 + 176) + *(v22 + 48), *(v0 + 136), type metadata accessor for MatterStateSnapshot);
      v58 = (*(*v39 + 280) + **(*v39 + 280));
      v40 = swift_task_alloc();
      *(v0 + 304) = v40;
      *v40 = v0;
      v40[1] = sub_1D1AC9550;
      v41 = *(v0 + 136);

      return v58(v41);
    }

    v1 = *(v0 + 208);
    v2 = *(v0 + 192);
  }

  v23 = *(v0 + 120);
  sub_1D1741C08(v1 + *(v2 + 44), v23, &qword_1EC64A800, &qword_1D1E96D40);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A788, &qword_1D1E96BC8);
  v25 = *(v24 - 8);
  v26 = (*(v25 + 48))(v23, 1, v24);
  v27 = *(v0 + 232);
  v28 = *(v0 + 208);
  v29 = *(v0 + 120);
  if (v26 == 1)
  {

    sub_1D1741A30(v28, &qword_1EC645C58, &qword_1D1E7C010);
    sub_1D1741A30(v27, &qword_1EC643318, &qword_1D1E71770);
    sub_1D1741A30(v29, &qword_1EC64A800, &qword_1D1E96D40);
  }

  else
  {
    *(v0 + 96) = *(v0 + 280);
    sub_1D1E67D6C();
    sub_1D1741A30(v28, &qword_1EC645C58, &qword_1D1E7C010);
    sub_1D1741A30(v27, &qword_1EC643318, &qword_1D1E71770);
    (*(v25 + 8))(v29, v24);
  }

  v30 = *(v0 + 256) + 1;
  if (v30 == *(v0 + 240))
  {
LABEL_18:

    v37 = *(v0 + 8);

    return v37();
  }

  else
  {
    while (1)
    {
      *(v0 + 256) = v30;
      v31 = *(v0 + 232);
      v32 = *(v0 + 216);
      v33 = *(v0 + 192);
      v34 = *(v0 + 200);
      v35 = *(v0 + 184);
      sub_1D1741C08(*(v0 + 104) + ((*(v0 + 92) + 32) & ~*(v0 + 92)) + *(v0 + 248) * v30, v31, &qword_1EC643318, &qword_1D1E71770);
      sub_1D1741C08(v31 + *(v32 + 44), v35, &qword_1EC64A7C0, &qword_1D1E96CF0);
      if ((*(v34 + 48))(v35, 1, v33) != 1)
      {
        break;
      }

      v36 = *(v0 + 184);
      sub_1D1741A30(*(v0 + 232), &qword_1EC643318, &qword_1D1E71770);
      sub_1D1741A30(v36, &qword_1EC64A7C0, &qword_1D1E96CF0);
      v30 = *(v0 + 256) + 1;
      if (v30 == *(v0 + 240))
      {
        goto LABEL_18;
      }
    }

    v42 = *(v0 + 232);
    v43 = *(v0 + 208);
    v44 = *(v0 + 112);
    sub_1D1741A90(*(v0 + 184), v43, &qword_1EC645C58, &qword_1D1E7C010);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6431B0, &unk_1D1E71F40);
    inited = swift_initStackObject();
    *(v0 + 264) = inited;
    *(inited + 16) = xmmword_1D1E739C0;
    v46 = *v42;
    v47 = *(v42 + 8);
    v48 = *(v42 + 16);
    *(inited + 32) = *v42;
    *(inited + 40) = v47;
    *(inited + 48) = v48;
    v49 = *v43;
    v50 = *(v43 + 8);
    v51 = *(v43 + 16);
    *(v0 + 72) = *v43;
    *(v0 + 80) = v50;
    *(v0 + 88) = v51;
    v52 = *(*v44 + 272);
    sub_1D1A28388(v46, v47, v48);
    sub_1D1AC3828(v49, v50, v51);
    v56 = (v52 + *v52);
    v53 = swift_task_alloc();
    *(v0 + 272) = v53;
    *v53 = v0;
    v53[1] = sub_1D1AC8B84;

    return v56(inited, v0 + 72);
  }
}

uint64_t sub_1D1AC9550()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1AC964C, 0, 0);
}

uint64_t sub_1D1AC964C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  sub_1D1AD7050(*(v0 + 136), type metadata accessor for MatterStateSnapshot);
  result = (*(v3 + 8))(v1, v2);
  v5 = *(v0 + 288);
  v6 = *(v0 + 296);
  if (v5)
  {
    v7 = *(v0 + 280);
LABEL_11:
    v12 = *(v0 + 160);
    v13 = *(v0 + 168);
    v14 = *(v0 + 144);
    v15 = *(v0 + 152);
    v17 = *(v0 + 128);
    v16 = *(v0 + 136);
    v57 = (v5 - 1) & v5;
    v18 = __clz(__rbit64(v5)) | (v6 << 6);
    (*(v15 + 16))(v12, *(v7 + 48) + *(v15 + 72) * v18, v14);
    sub_1D1AD7678(*(v7 + 56) + *(v17 + 72) * v18, v16, type metadata accessor for MatterStateSnapshot);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
    v20 = *(v19 + 48);
    (*(v15 + 32))(v13, v12, v14);
    sub_1D1AD76E0(v16, v13 + v20, type metadata accessor for MatterStateSnapshot);
    (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
    v21 = v57;
    v10 = v6;
LABEL_12:
    *(v0 + 288) = v21;
    *(v0 + 296) = v10;
    v22 = *(v0 + 176);
    sub_1D1741A90(*(v0 + 168), v22, &qword_1EC645410, &unk_1D1E799A0);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
    if ((*(*(v23 - 8) + 48))(v22, 1, v23) == 1)
    {

      v24 = *(v0 + 120);
      sub_1D1741C08(*(v0 + 208) + *(*(v0 + 192) + 44), v24, &qword_1EC64A800, &qword_1D1E96D40);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A788, &qword_1D1E96BC8);
      v26 = *(v25 - 8);
      v27 = (*(v26 + 48))(v24, 1, v25);
      v28 = *(v0 + 232);
      v29 = *(v0 + 208);
      v30 = *(v0 + 120);
      if (v27 == 1)
      {

        sub_1D1741A30(v29, &qword_1EC645C58, &qword_1D1E7C010);
        sub_1D1741A30(v28, &qword_1EC643318, &qword_1D1E71770);
        sub_1D1741A30(v30, &qword_1EC64A800, &qword_1D1E96D40);
      }

      else
      {
        *(v0 + 96) = *(v0 + 280);
        sub_1D1E67D6C();
        sub_1D1741A30(v29, &qword_1EC645C58, &qword_1D1E7C010);
        sub_1D1741A30(v28, &qword_1EC643318, &qword_1D1E71770);
        (*(v26 + 8))(v30, v25);
      }

      v34 = *(v0 + 256) + 1;
      if (v34 == *(v0 + 240))
      {
LABEL_22:

        v41 = *(v0 + 8);

        return v41();
      }

      else
      {
        while (1)
        {
          *(v0 + 256) = v34;
          v35 = *(v0 + 232);
          v36 = *(v0 + 216);
          v37 = *(v0 + 192);
          v38 = *(v0 + 200);
          v39 = *(v0 + 184);
          sub_1D1741C08(*(v0 + 104) + ((*(v0 + 92) + 32) & ~*(v0 + 92)) + *(v0 + 248) * v34, v35, &qword_1EC643318, &qword_1D1E71770);
          sub_1D1741C08(v35 + *(v36 + 44), v39, &qword_1EC64A7C0, &qword_1D1E96CF0);
          if ((*(v38 + 48))(v39, 1, v37) != 1)
          {
            break;
          }

          v40 = *(v0 + 184);
          sub_1D1741A30(*(v0 + 232), &qword_1EC643318, &qword_1D1E71770);
          sub_1D1741A30(v40, &qword_1EC64A7C0, &qword_1D1E96CF0);
          v34 = *(v0 + 256) + 1;
          if (v34 == *(v0 + 240))
          {
            goto LABEL_22;
          }
        }

        v44 = *(v0 + 232);
        v45 = *(v0 + 208);
        v46 = *(v0 + 112);
        sub_1D1741A90(*(v0 + 184), v45, &qword_1EC645C58, &qword_1D1E7C010);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6431B0, &unk_1D1E71F40);
        inited = swift_initStackObject();
        *(v0 + 264) = inited;
        *(inited + 16) = xmmword_1D1E739C0;
        v48 = *v44;
        v49 = *(v44 + 8);
        v50 = *(v44 + 16);
        *(inited + 32) = *v44;
        *(inited + 40) = v49;
        *(inited + 48) = v50;
        v51 = *v45;
        v52 = *(v45 + 8);
        v53 = *(v45 + 16);
        *(v0 + 72) = *v45;
        *(v0 + 80) = v52;
        *(v0 + 88) = v53;
        v54 = *(*v46 + 272);
        sub_1D1A28388(v48, v49, v50);
        sub_1D1AC3828(v51, v52, v53);
        v56 = (v54 + *v54);
        v55 = swift_task_alloc();
        *(v0 + 272) = v55;
        *v55 = v0;
        v55[1] = sub_1D1AC8B84;

        return v56(inited, v0 + 72);
      }
    }

    else
    {
      v31 = *(v0 + 112);
      sub_1D1AD76E0(*(v0 + 176) + *(v23 + 48), *(v0 + 136), type metadata accessor for MatterStateSnapshot);
      v58 = (*(*v31 + 280) + **(*v31 + 280));
      v32 = swift_task_alloc();
      *(v0 + 304) = v32;
      *v32 = v0;
      v32[1] = sub_1D1AC9550;
      v33 = *(v0 + 136);

      return v58(v33);
    }
  }

  else
  {
    v8 = ((1 << *(v0 + 89)) + 63) >> 6;
    if (v8 <= (v6 + 1))
    {
      v9 = v6 + 1;
    }

    else
    {
      v9 = ((1 << *(v0 + 89)) + 63) >> 6;
    }

    v10 = v9 - 1;
    while (1)
    {
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        v42 = *(v0 + 168);
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
        (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
        v21 = 0;
        goto LABEL_12;
      }

      v7 = *(v0 + 280);
      v5 = *(v7 + 8 * v11 + 64);
      ++v6;
      if (v5)
      {
        v6 = v11;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1AC9EC0(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8A8, &qword_1D1E96E28);
  v2[8] = swift_task_alloc();
  v2[9] = *(type metadata accessor for StateSnapshot(0) - 8);
  v2[10] = swift_task_alloc();
  v3 = sub_1D1E66A7C();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645430, &qword_1D1E799C0);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A868, &qword_1D1E96DD8);
  v2[16] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC8, &qword_1D1E96508);
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1ACA15C, 0, 0);
}

uint64_t sub_1D1ACA15C()
{
  v1 = *(*(v0 + 48) + 16);
  *(v0 + 184) = v1;
  if (v1)
  {
    v2 = 0;
    v3 = *(v0 + 168);
    *(v0 + 36) = *(v3 + 80);
    *(v0 + 192) = *(v3 + 72);
    while (1)
    {
      *(v0 + 200) = v2;
      v4 = *(v0 + 176);
      v5 = *(v0 + 160);
      v6 = *(v0 + 136);
      v7 = *(v0 + 144);
      v8 = *(v0 + 128);
      sub_1D1741C08(*(v0 + 48) + ((*(v0 + 36) + 32) & ~*(v0 + 36)) + *(v0 + 192) * v2, v4, &unk_1EC64A270, &qword_1D1E71780);
      sub_1D1741C08(v4 + *(v5 + 44), v8, &qword_1EC64A868, &qword_1D1E96DD8);
      if ((*(v7 + 48))(v8, 1, v6) != 1)
      {
        break;
      }

      v9 = *(v0 + 128);
      sub_1D1741A30(*(v0 + 176), &unk_1EC64A270, &qword_1D1E71780);
      sub_1D1741A30(v9, &qword_1EC64A868, &qword_1D1E96DD8);
      v2 = *(v0 + 200) + 1;
      if (v2 == *(v0 + 184))
      {
        goto LABEL_5;
      }
    }

    v12 = *(v0 + 176);
    v13 = *(v0 + 152);
    v14 = *(v0 + 56);
    sub_1D1741A90(*(v0 + 128), v13, &qword_1EC649DC8, &qword_1D1E96508);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643160, &qword_1D1E71F50);
    updated = type metadata accessor for StateSnapshot.UpdateType(0);
    *(v0 + 208) = updated;
    v16 = *(*(updated - 8) + 80);
    *(v0 + 264) = v16;
    v17 = (v16 + 32) & ~v16;
    v18 = swift_allocObject();
    *(v0 + 216) = v18;
    *(v18 + 16) = xmmword_1D1E739C0;
    sub_1D1AD7678(v12, v18 + v17, type metadata accessor for StateSnapshot.UpdateType);
    v19 = *v13;
    v20 = *(v13 + 8);
    v21 = *(v13 + 16);
    *(v0 + 16) = *v13;
    *(v0 + 24) = v20;
    *(v0 + 32) = v21;
    v22 = *(*v14 + 272);
    sub_1D1AC3828(v19, v20, v21);
    v24 = (v22 + *v22);
    v23 = swift_task_alloc();
    *(v0 + 224) = v23;
    *v23 = v0;
    v23[1] = sub_1D1ACA540;

    return v24(v18, v0 + 16);
  }

  else
  {
LABEL_5:

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1D1ACA540(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 232) = a1;

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D1AD7288(*(v2 + 16), *(v2 + 24), *(v3 + 32));

  return MEMORY[0x1EEE6DFA0](sub_1D1ACA6E4, 0, 0);
}

uint64_t sub_1D1ACA6E4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  if (*(v1 + *(v2 + 48)))
  {
    v3 = *(v0 + 232);
    v4 = *(v3 + 32);
    *(v0 + 33) = v4;
    v5 = -1;
    v6 = -1 << v4;
    if (-(-1 << v4) < 64)
    {
      v5 = ~(-1 << -v6);
    }

    v7 = v5 & *(v3 + 64);

    if (v7)
    {
      v8 = 0;
LABEL_9:
      v12 = *(v0 + 104);
      v11 = *(v0 + 112);
      v13 = *(v0 + 88);
      v14 = *(v0 + 96);
      v16 = *(v0 + 72);
      v15 = *(v0 + 80);
      v57 = (v7 - 1) & v7;
      v17 = __clz(__rbit64(v7)) | (v8 << 6);
      (*(v14 + 16))(v12, *(v3 + 48) + *(v14 + 72) * v17, v13);
      sub_1D1AD7678(*(v3 + 56) + *(v16 + 72) * v17, v15, type metadata accessor for StateSnapshot);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645438, &qword_1D1E799C8);
      v19 = *(v18 + 48);
      (*(v14 + 32))(v11, v12, v13);
      sub_1D1AD76E0(v15, v11 + v19, type metadata accessor for StateSnapshot);
      (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
      v20 = v57;
      v10 = v8;
    }

    else
    {
      v9 = 0;
      v10 = ((63 - v6) >> 6) - 1;
      while (v10 != v9)
      {
        v8 = v9 + 1;
        v7 = *(v3 + 72 + 8 * v9++);
        if (v7)
        {
          goto LABEL_9;
        }
      }

      v54 = *(v0 + 112);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645438, &qword_1D1E799C8);
      (*(*(v55 - 8) + 56))(v54, 1, 1, v55);
      v20 = 0;
    }

    *(v0 + 240) = v20;
    *(v0 + 248) = v10;
    v21 = *(v0 + 120);
    sub_1D1741A90(*(v0 + 112), v21, &qword_1EC645430, &qword_1D1E799C0);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645438, &qword_1D1E799C8);
    if ((*(*(v22 - 8) + 48))(v21, 1, v22) != 1)
    {
      v39 = *(v0 + 56);
      sub_1D1AD76E0(*(v0 + 120) + *(v22 + 48), *(v0 + 80), type metadata accessor for StateSnapshot);
      v58 = (*(*v39 + 280) + **(*v39 + 280));
      v40 = swift_task_alloc();
      *(v0 + 256) = v40;
      *v40 = v0;
      v40[1] = sub_1D1ACAFAC;
      v41 = *(v0 + 80);

      return v58(v41);
    }

    v1 = *(v0 + 152);
    v2 = *(v0 + 136);
  }

  v23 = *(v0 + 64);
  sub_1D1741C08(v1 + *(v2 + 44), v23, &qword_1EC64A8A8, &qword_1D1E96E28);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7A0, &qword_1D1E96BF8);
  v25 = *(v24 - 8);
  v26 = (*(v25 + 48))(v23, 1, v24);
  v27 = *(v0 + 176);
  v28 = *(v0 + 152);
  v29 = *(v0 + 64);
  if (v26 == 1)
  {

    sub_1D1741A30(v28, &qword_1EC649DC8, &qword_1D1E96508);
    sub_1D1741A30(v27, &unk_1EC64A270, &qword_1D1E71780);
    sub_1D1741A30(v29, &qword_1EC64A8A8, &qword_1D1E96E28);
  }

  else
  {
    *(v0 + 40) = *(v0 + 232);
    sub_1D1E67D6C();
    sub_1D1741A30(v28, &qword_1EC649DC8, &qword_1D1E96508);
    sub_1D1741A30(v27, &unk_1EC64A270, &qword_1D1E71780);
    (*(v25 + 8))(v29, v24);
  }

  v30 = *(v0 + 200) + 1;
  if (v30 == *(v0 + 184))
  {
LABEL_18:

    v37 = *(v0 + 8);

    return v37();
  }

  else
  {
    while (1)
    {
      *(v0 + 200) = v30;
      v31 = *(v0 + 176);
      v32 = *(v0 + 160);
      v33 = *(v0 + 136);
      v34 = *(v0 + 144);
      v35 = *(v0 + 128);
      sub_1D1741C08(*(v0 + 48) + ((*(v0 + 36) + 32) & ~*(v0 + 36)) + *(v0 + 192) * v30, v31, &unk_1EC64A270, &qword_1D1E71780);
      sub_1D1741C08(v31 + *(v32 + 44), v35, &qword_1EC64A868, &qword_1D1E96DD8);
      if ((*(v34 + 48))(v35, 1, v33) != 1)
      {
        break;
      }

      v36 = *(v0 + 128);
      sub_1D1741A30(*(v0 + 176), &unk_1EC64A270, &qword_1D1E71780);
      sub_1D1741A30(v36, &qword_1EC64A868, &qword_1D1E96DD8);
      v30 = *(v0 + 200) + 1;
      if (v30 == *(v0 + 184))
      {
        goto LABEL_18;
      }
    }

    v42 = *(v0 + 176);
    v43 = *(v0 + 152);
    v44 = *(v0 + 56);
    sub_1D1741A90(*(v0 + 128), v43, &qword_1EC649DC8, &qword_1D1E96508);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643160, &qword_1D1E71F50);
    updated = type metadata accessor for StateSnapshot.UpdateType(0);
    *(v0 + 208) = updated;
    v46 = *(*(updated - 8) + 80);
    *(v0 + 264) = v46;
    v47 = (v46 + 32) & ~v46;
    v48 = swift_allocObject();
    *(v0 + 216) = v48;
    *(v48 + 16) = xmmword_1D1E739C0;
    sub_1D1AD7678(v42, v48 + v47, type metadata accessor for StateSnapshot.UpdateType);
    v49 = *v43;
    v50 = *(v43 + 8);
    v51 = *(v43 + 16);
    *(v0 + 16) = *v43;
    *(v0 + 24) = v50;
    *(v0 + 32) = v51;
    v52 = *(*v44 + 272);
    sub_1D1AC3828(v49, v50, v51);
    v56 = (v52 + *v52);
    v53 = swift_task_alloc();
    *(v0 + 224) = v53;
    *v53 = v0;
    v53[1] = sub_1D1ACA540;

    return v56(v48, v0 + 16);
  }
}

uint64_t sub_1D1ACAFAC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1ACB0A8, 0, 0);
}

uint64_t sub_1D1ACB0A8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  sub_1D1AD7050(*(v0 + 80), type metadata accessor for StateSnapshot);
  result = (*(v3 + 8))(v1, v2);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  if (v5)
  {
    v7 = *(v0 + 232);
LABEL_11:
    v12 = *(v0 + 104);
    v13 = *(v0 + 112);
    v14 = *(v0 + 88);
    v15 = *(v0 + 96);
    v17 = *(v0 + 72);
    v16 = *(v0 + 80);
    v57 = (v5 - 1) & v5;
    v18 = __clz(__rbit64(v5)) | (v6 << 6);
    (*(v15 + 16))(v12, *(v7 + 48) + *(v15 + 72) * v18, v14);
    sub_1D1AD7678(*(v7 + 56) + *(v17 + 72) * v18, v16, type metadata accessor for StateSnapshot);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645438, &qword_1D1E799C8);
    v20 = *(v19 + 48);
    (*(v15 + 32))(v13, v12, v14);
    sub_1D1AD76E0(v16, v13 + v20, type metadata accessor for StateSnapshot);
    (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
    v21 = v57;
    v10 = v6;
LABEL_12:
    *(v0 + 240) = v21;
    *(v0 + 248) = v10;
    v22 = *(v0 + 120);
    sub_1D1741A90(*(v0 + 112), v22, &qword_1EC645430, &qword_1D1E799C0);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645438, &qword_1D1E799C8);
    if ((*(*(v23 - 8) + 48))(v22, 1, v23) == 1)
    {

      v24 = *(v0 + 64);
      sub_1D1741C08(*(v0 + 152) + *(*(v0 + 136) + 44), v24, &qword_1EC64A8A8, &qword_1D1E96E28);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7A0, &qword_1D1E96BF8);
      v26 = *(v25 - 8);
      v27 = (*(v26 + 48))(v24, 1, v25);
      v28 = *(v0 + 176);
      v29 = *(v0 + 152);
      v30 = *(v0 + 64);
      if (v27 == 1)
      {

        sub_1D1741A30(v29, &qword_1EC649DC8, &qword_1D1E96508);
        sub_1D1741A30(v28, &unk_1EC64A270, &qword_1D1E71780);
        sub_1D1741A30(v30, &qword_1EC64A8A8, &qword_1D1E96E28);
      }

      else
      {
        *(v0 + 40) = *(v0 + 232);
        sub_1D1E67D6C();
        sub_1D1741A30(v29, &qword_1EC649DC8, &qword_1D1E96508);
        sub_1D1741A30(v28, &unk_1EC64A270, &qword_1D1E71780);
        (*(v26 + 8))(v30, v25);
      }

      v34 = *(v0 + 200) + 1;
      if (v34 == *(v0 + 184))
      {
LABEL_22:

        v41 = *(v0 + 8);

        return v41();
      }

      else
      {
        while (1)
        {
          *(v0 + 200) = v34;
          v35 = *(v0 + 176);
          v36 = *(v0 + 160);
          v37 = *(v0 + 136);
          v38 = *(v0 + 144);
          v39 = *(v0 + 128);
          sub_1D1741C08(*(v0 + 48) + ((*(v0 + 36) + 32) & ~*(v0 + 36)) + *(v0 + 192) * v34, v35, &unk_1EC64A270, &qword_1D1E71780);
          sub_1D1741C08(v35 + *(v36 + 44), v39, &qword_1EC64A868, &qword_1D1E96DD8);
          if ((*(v38 + 48))(v39, 1, v37) != 1)
          {
            break;
          }

          v40 = *(v0 + 128);
          sub_1D1741A30(*(v0 + 176), &unk_1EC64A270, &qword_1D1E71780);
          sub_1D1741A30(v40, &qword_1EC64A868, &qword_1D1E96DD8);
          v34 = *(v0 + 200) + 1;
          if (v34 == *(v0 + 184))
          {
            goto LABEL_22;
          }
        }

        v44 = *(v0 + 176);
        v45 = *(v0 + 152);
        v46 = *(v0 + 56);
        sub_1D1741A90(*(v0 + 128), v45, &qword_1EC649DC8, &qword_1D1E96508);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643160, &qword_1D1E71F50);
        updated = type metadata accessor for StateSnapshot.UpdateType(0);
        *(v0 + 208) = updated;
        v48 = *(*(updated - 8) + 80);
        *(v0 + 264) = v48;
        v49 = (v48 + 32) & ~v48;
        v50 = swift_allocObject();
        *(v0 + 216) = v50;
        *(v50 + 16) = xmmword_1D1E739C0;
        sub_1D1AD7678(v44, v50 + v49, type metadata accessor for StateSnapshot.UpdateType);
        v51 = *v45;
        v52 = *(v45 + 8);
        v53 = *(v45 + 16);
        *(v0 + 16) = *v45;
        *(v0 + 24) = v52;
        *(v0 + 32) = v53;
        v54 = *(*v46 + 272);
        sub_1D1AC3828(v51, v52, v53);
        v56 = (v54 + *v54);
        v55 = swift_task_alloc();
        *(v0 + 224) = v55;
        *v55 = v0;
        v55[1] = sub_1D1ACA540;

        return v56(v50, v0 + 16);
      }
    }

    else
    {
      v31 = *(v0 + 56);
      sub_1D1AD76E0(*(v0 + 120) + *(v23 + 48), *(v0 + 80), type metadata accessor for StateSnapshot);
      v58 = (*(*v31 + 280) + **(*v31 + 280));
      v32 = swift_task_alloc();
      *(v0 + 256) = v32;
      *v32 = v0;
      v32[1] = sub_1D1ACAFAC;
      v33 = *(v0 + 80);

      return v58(v33);
    }
  }

  else
  {
    v8 = ((1 << *(v0 + 33)) + 63) >> 6;
    if (v8 <= (v6 + 1))
    {
      v9 = v6 + 1;
    }

    else
    {
      v9 = ((1 << *(v0 + 33)) + 63) >> 6;
    }

    v10 = v9 - 1;
    while (1)
    {
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        v42 = *(v0 + 112);
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645438, &qword_1D1E799C8);
        (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
        v21 = 0;
        goto LABEL_12;
      }

      v7 = *(v0 + 232);
      v5 = *(v7 + 8 * v11 + 64);
      ++v6;
      if (v5)
      {
        v6 = v11;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall HomeState.Stream.startIfNeeded(homeManager:)(HMHomeManager_optional homeManager)
{
  v2 = v1;
  isa = homeManager.value.super.isa;
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  v4 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  if (v4 == 2 || (v4 & 1) == 0)
  {
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v14 = sub_1D1E6709C();
    __swift_project_value_buffer(v14, qword_1EC64A290);
    oslog = sub_1D1E6707C();
    v15 = sub_1D1E6834C();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D16EC000, oslog, v15, "Attempted to startIfNeeded but HomeState.Stream isn't supported", v16, 2u);
      MEMORY[0x1D3893640](v16, -1, -1);
    }
  }

  else
  {
    v5 = v2[15];
    os_unfair_lock_lock(v5 + 4);
    swift_weakLoadStrong();
    swift_weakAssign();

    os_unfair_lock_unlock(v5 + 4);
    v6 = (v2[16] + OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream14MatterDelegate__stream);
    os_unfair_lock_lock(v6);
    swift_weakLoadStrong();
    swift_weakAssign();

    os_unfair_lock_unlock(v6);
    v7 = v2[20];
    *(v7 + 120) = sub_1D17D8EA8(&qword_1EC64A7B8, &qword_1EC649C08, &qword_1D1E95F38, &unk_1D1E9639C);
    swift_unknownObjectWeakAssign();
    swift_weakAssign();
    swift_weakAssign();
    sub_1D1AC3D00();
    sub_1D1AC3FD4();
    v8 = v2;
    swift_beginAccess();
    if (!v2[8])
    {
      v9 = isa;
      if (isa || (v8 = v2, (v9 = sub_1D1A81848()) != 0))
      {
        v10 = sub_1D17D8EA8(&unk_1EC649E70, &qword_1EC649C08, &qword_1D1E95F38, &unk_1D1E96450);
        v11 = isa;

        HMHomeManager.homeManagerDelegate.setter(v12, v10);
        v13 = v8[8];
        v8[8] = v9;
      }
    }
  }
}

void *HomeState.Stream.fastStart(with:homesToPerformSnapshotsIfPossible:)(void *a1, uint64_t a2, id a3, uint64_t *a4)
{
  v7 = *a4;
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  v8 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  if (v8 == 2 || (v8 & 1) == 0)
  {
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v17 = sub_1D1E6709C();
    __swift_project_value_buffer(v17, qword_1EC64A290);
    v18 = sub_1D1E6707C();
    v19 = sub_1D1E6834C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D16EC000, v18, v19, "Attempted to fastStart but HomeState.Stream isn't supported", v20, 2u);
      MEMORY[0x1D3893640](v20, -1, -1);
    }
  }

  else
  {
    v9 = sub_1D1A81848();
    if (v9)
    {
      v10 = v9;
      if (a3)
      {
        if (qword_1EE07A070 != -1)
        {
          swift_once();
        }

        v11 = sub_1D1E6709C();
        __swift_project_value_buffer(v11, qword_1EE081480);

        v12 = sub_1D1E6707C();
        v13 = sub_1D1E6835C();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v24 = v15;
          *v14 = 136315138;
          *(v14 + 4) = sub_1D1B1312C(a2, a3, &v24);
          _os_log_impl(&dword_1D16EC000, v12, v13, "Taking assertion for reason %s", v14, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v15);
          MEMORY[0x1D3893640](v15, -1, -1);
          MEMORY[0x1D3893640](v14, -1, -1);
        }

        v16 = sub_1D1E677EC();
        a3 = [v10 _beginActiveAssertionWithReason_];
      }

      v24 = v7;
      v23 = sub_1D1ACBF90(v10, &v24);

      *a1 = a3;
      return v23;
    }
  }

  *a1 = 0;
  v21 = MEMORY[0x1E69E7CC0];

  return sub_1D18DA7F8(v21);
}

void *sub_1D1ACBF90(void *a1, unint64_t *a2)
{
  v3 = v2;
  v103 = type metadata accessor for MatterStateSnapshot(0);
  v97 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v94 = &v76 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v105 = &v76 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v89 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v102 = &v76 - v18;
  v101 = type metadata accessor for HomeState(0);
  v88 = *(v101 - 8);
  v19 = MEMORY[0x1EEE9AC00](v101);
  v104 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v87 = &v76 - v21;
  v86 = type metadata accessor for StateSnapshot(0);
  v22 = *(v86 - 8);
  v23 = MEMORY[0x1EEE9AC00](v86);
  v85 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v100 = &v76 - v25;
  v99 = sub_1D1E66A7C();
  v93 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v76 - v28;
  v106 = *a2;
  v30 = sub_1D1AD6544(&v106, a1);
  v96 = "snapshotModerator";
  sub_1D1E67E3C();
  v31 = sub_1D1E67E7C();
  (*(*(v31 - 8) + 56))(v29, 0, 1, v31);
  v32 = qword_1EC642358;

  v33 = v3;

  v34 = a1;
  if (v32 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v35 = qword_1EC64ABE8;
    v36 = sub_1D1AD642C();
    v37 = swift_allocObject();
    v37[2] = v35;
    v37[3] = v36;
    v37[4] = v30;
    v37[5] = v33;
    v37[6] = v34;

    sub_1D1AD6C28(0xD00000000000001CLL, v96 | 0x8000000000000000, v29, 0, 0, &unk_1D1E96C88, v37, &unk_1F4D7A3F0, &unk_1D1E96C78, &unk_1F4D7A3C8, &unk_1D1E742F0);

    sub_1D1741A30(v29, &unk_1EC6442C0, &qword_1D1E741A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6428F8, &qword_1D1E7E7E0);
    v38 = sub_1D1E68BAC();
    v39 = 0;
    v40 = (v30 + 64);
    v41 = 1 << *(v30 + 32);
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v43 = v42 & *(v30 + 64);
    v76 = (v41 + 63) >> 6;
    v44 = v93;
    v84 = v93 + 16;
    v83 = v22 + 7;
    v82 = (v97 + 56);
    v95 = (v22 + 6);
    v81 = (v97 + 48);
    v92 = v38;
    v80 = v38 + 64;
    v79 = (v93 + 32);
    v29 = v30;
    v90 = v7;
    v91 = v11;
    v78 = v22;
    v77 = v30;
    v34 = v103;
    if (!v43)
    {
      break;
    }

    while (1)
    {
      v45 = __clz(__rbit64(v43));
      v96 = (v43 - 1) & v43;
LABEL_11:
      v30 = v45 | (v39 << 6);
      v48 = *(v44 + 72) * v30;
      (*(v44 + 16))(v98, *(v29 + 6) + v48, v99);
      v49 = *(v29 + 7) + v22[9] * v30;
      v50 = v100;
      sub_1D1AD7678(v49, v100, type metadata accessor for StateSnapshot);
      v51 = v50;
      v52 = v102;
      sub_1D1AD7678(v51, v102, type metadata accessor for StateSnapshot);
      v53 = v22[7];
      v54 = v86;
      v53(v52, 0, 1, v86);
      v55 = v89;
      if (qword_1EE07D498 != -1)
      {
        swift_once();
      }

      v56 = __swift_project_value_buffer(v34, qword_1EE07D4A0);
      v57 = v105;
      sub_1D1AD7678(v56, v105, type metadata accessor for MatterStateSnapshot);
      (*v82)(v57, 0, 1, v34);
      sub_1D1741C08(v52, v55, &unk_1EC649E30, &unk_1D1E91250);
      v58 = *v95;
      if ((*v95)(v55, 1, v54) == 1)
      {
        v59 = v94;
        v60 = v85;
        if (qword_1EE07D9E0 != -1)
        {
          swift_once();
        }

        v61 = __swift_project_value_buffer(v54, qword_1EE07D9E8);
        sub_1D1AD7678(v61, v60, type metadata accessor for StateSnapshot);
        if (v58(v55, 1, v54) != 1)
        {
          sub_1D1741A30(v55, &unk_1EC649E30, &unk_1D1E91250);
        }
      }

      else
      {
        v60 = v85;
        sub_1D1AD76E0(v55, v85, type metadata accessor for StateSnapshot);
        v59 = v94;
      }

      sub_1D1AD76E0(v60, v104, type metadata accessor for StateSnapshot);
      v22 = &qword_1D1E92B10;
      sub_1D1741C08(v105, v59, &unk_1EC64F390, &qword_1D1E92B10);
      v62 = *v81;
      v63 = v59;
      v64 = v59;
      v65 = v103;
      v66 = (*v81)(v63, 1, v103);
      v97 = v48;
      if (v66 == 1)
      {
        v67 = v56;
        v68 = v90;
        sub_1D1AD7678(v67, v90, type metadata accessor for MatterStateSnapshot);
        if (v62(v64, 1, v65) != 1)
        {
          sub_1D1741A30(v94, &unk_1EC64F390, &qword_1D1E92B10);
        }
      }

      else
      {
        v68 = v90;
        sub_1D1AD76E0(v64, v90, type metadata accessor for MatterStateSnapshot);
      }

      v33 = v30;
      sub_1D1AD76E0(v68, v104 + *(v101 + 24), type metadata accessor for MatterStateSnapshot);
      v11 = v91;
      v7 = &unk_1EC64F390;
      sub_1D1741C08(v105, v91, &unk_1EC64F390, &qword_1D1E92B10);
      if (v62(v11, 1, v65) == 1)
      {
        sub_1D1741A30(v11, &unk_1EC64F390, &qword_1D1E92B10);
        v69 = MEMORY[0x1E69E7CC8];
      }

      else
      {
        v69 = *&v11[*(v65 + 28)];

        sub_1D1AD7050(v11, type metadata accessor for MatterStateSnapshot);
      }

      v70 = v102;
      sub_1D1741A30(v105, &unk_1EC64F390, &qword_1D1E92B10);
      sub_1D1741A30(v70, &unk_1EC649E30, &unk_1D1E91250);
      v71 = v104;
      *(v104 + *(v101 + 20)) = v69;
      v29 = v87;
      sub_1D1AD76E0(v71, v87, type metadata accessor for HomeState);
      sub_1D1AD7050(v100, type metadata accessor for StateSnapshot);
      *(v80 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      v34 = v92;
      (*v79)(v92[6] + v97, v98, v99);
      sub_1D1AD76E0(v29, v34[7] + *(v88 + 72) * v30, type metadata accessor for HomeState);
      v72 = v34[2];
      v73 = __OFADD__(v72, 1);
      v74 = v72 + 1;
      if (v73)
      {
        break;
      }

      v34[2] = v74;
      v44 = v93;
      v29 = v77;
      v43 = v96;
      v22 = v78;
      v34 = v103;
      if (!v96)
      {
        goto LABEL_6;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
  }

LABEL_6:
  v46 = v39;
  while (1)
  {
    v39 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v39 >= v76)
    {
      break;
    }

    v47 = v40[v39];
    ++v46;
    if (v47)
    {
      v45 = __clz(__rbit64(v47));
      v96 = (v47 - 1) & v47;
      goto LABEL_11;
    }
  }

  return v92;
}

void *HomeState.Stream.fastStartIndirectly(with:homesToPerformSnapshotsIfPossible:)(objc_class *a1, unint64_t *a2)
{
  v4 = *a2;
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  v5 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  if (v5 == 2 || (v5 & 1) == 0)
  {
    os_unfair_lock_lock((v2 + 16));
    v8 = *(v2 + 20);
    v9 = *(v2 + 21);
    v10 = *(v2 + 23);
    os_unfair_lock_unlock((v2 + 16));
    os_unfair_lock_lock((v2 + 16));
    *(v2 + 20) = v8;
    *(v2 + 21) = v9;
    *(v2 + 22) = 0;
    *(v2 + 23) = v10;
    os_unfair_lock_unlock((v2 + 16));
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v11 = sub_1D1E6709C();
    __swift_project_value_buffer(v11, qword_1EC64A290);
    v12 = sub_1D1E6707C();
    v13 = sub_1D1E6834C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D16EC000, v12, v13, "Attempted to fastStartIndirectly but HomeState.Stream isn't supported", v14, 2u);
      MEMORY[0x1D3893640](v14, -1, -1);
    }

    v15 = MEMORY[0x1E69E7CC0];

    return sub_1D18DA7F8(v15);
  }

  else
  {
    v6.value.super.isa = a1;
    HomeState.Stream.setupIndirectConfiguration(with:)(v6);
    v16 = v4;
    return sub_1D1ACBF90(a1, &v16);
  }
}

Swift::Void __swiftcall HomeState.Stream.setupIndirectConfiguration(with:)(HMHomeManager_optional with)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  v5 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  if (v5 == 2 || (v5 & 1) == 0)
  {
    os_unfair_lock_lock((v1 + 16));
    v15 = *(v1 + 20);
    v16 = *(v1 + 21);
    v17 = *(v1 + 23);
    os_unfair_lock_unlock((v1 + 16));
    os_unfair_lock_lock((v1 + 16));
    *(v1 + 20) = v15;
    *(v1 + 21) = v16;
    *(v1 + 22) = 0;
    *(v1 + 23) = v17;
    os_unfair_lock_unlock((v1 + 16));
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v18 = sub_1D1E6709C();
    __swift_project_value_buffer(v18, qword_1EC64A290);
    v23 = sub_1D1E6707C();
    v19 = sub_1D1E6834C();
    if (os_log_type_enabled(v23, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D16EC000, v23, v19, "Attempted to setupIndirectConfiguration but HomeState.Stream isn't supported", v20, 2u);
      MEMORY[0x1D3893640](v20, -1, -1);
    }

    v21 = v23;
  }

  else
  {
    os_unfair_lock_lock((v1 + 16));
    v6 = *(v1 + 20);
    v7 = *(v1 + 21);
    v8 = *(v1 + 23);
    os_unfair_lock_unlock((v1 + 16));
    os_unfair_lock_lock((v1 + 16));
    *(v1 + 20) = v6;
    *(v1 + 21) = v7;
    *(v1 + 22) = 0;
    *(v1 + 23) = v8;
    os_unfair_lock_unlock((v1 + 16));
    atomic_store(1u, (v1 + 57));
    v9 = sub_1D1E67E7C();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = qword_1EC642358;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = qword_1EC64ABE8;
    v13 = sub_1D1AD642C();
    v14 = swift_allocObject();
    v14[2] = v12;
    v14[3] = v13;
    v14[4] = v1;
    v14[5] = v10;

    sub_1D1AD6C28(0, 0, v4, 0, 0, &unk_1D1E96C60, v14, &unk_1F4D7A3F0, &unk_1D1E96C78, &unk_1F4D7A3C8, &unk_1D1E742F0);

    sub_1D1741A30(v4, &unk_1EC6442C0, &qword_1D1E741A0);
  }
}

uint64_t sub_1D1ACD0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1ACD174, v6, 0);
}

uint64_t sub_1D1ACD174()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = Strong;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D1ACD210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v6[8] = *(type metadata accessor for StateSnapshot(0) - 8);
  v6[9] = swift_task_alloc();
  v7 = sub_1D1E66A7C();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645430, &qword_1D1E799C0);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v8 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1ACD3A4, v8, 0);
}

uint64_t sub_1D1ACD3A4()
{
  v1 = v0[5];
  v31 = v1 + 64;
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v30 = (63 - v3) >> 6;
  v32 = v0[8];
  v34 = v0[11];
  v33 = v0[5];

  v6 = 0;
  if (v4)
  {
    while (1)
    {
      v7 = v6;
LABEL_12:
      v11 = v0[12];
      v10 = v0[13];
      v12 = v0[9];
      v13 = v0[10];
      v14 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v15 = v14 | (v7 << 6);
      (*(v34 + 16))(v11, *(v33 + 48) + *(v34 + 72) * v15, v13);
      sub_1D1AD7678(*(v33 + 56) + *(v32 + 72) * v15, v12, type metadata accessor for StateSnapshot);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645438, &qword_1D1E799C8);
      v17 = *(v16 + 48);
      (*(v34 + 32))(v10, v11, v13);
      sub_1D1AD76E0(v12, v10 + v17, type metadata accessor for StateSnapshot);
      (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
      v9 = v7;
LABEL_13:
      v18 = v0[14];
      sub_1D1741A90(v0[13], v18, &qword_1EC645430, &qword_1D1E799C0);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645438, &qword_1D1E799C8);
      if ((*(*(v19 - 8) + 48))(v18, 1, v19) == 1)
      {
        break;
      }

      v20 = v0[14];
      v22 = v0[9];
      v21 = v0[10];
      sub_1D1AD76E0(v20 + *(v19 + 48), v22, type metadata accessor for StateSnapshot);
      sub_1D1AFCD30(v22);
      sub_1D1AD7050(v22, type metadata accessor for StateSnapshot);
      result = (*(v34 + 8))(v20, v21);
      v6 = v9;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v25 = v0[6];
    v26 = v0[7];

    swift_beginAccess();
    v27 = *(v25 + 64);
    *(v25 + 64) = v26;

    v28 = v26;
    v36.value.super.isa = 0;
    HomeState.Stream.startIfNeeded(homeManager:)(v36);

    v29 = v0[1];

    return v29();
  }

  else
  {
LABEL_5:
    if (v30 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    else
    {
      v8 = v30;
    }

    v9 = v8 - 1;
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v30)
      {
        v23 = v0[13];
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645438, &qword_1D1E799C8);
        (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
        v4 = 0;
        goto LABEL_13;
      }

      v4 = *(v31 + 8 * v7);
      ++v6;
      if (v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t static HomeState.Stream.overrideIsSupported.getter()
{
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  v0 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  return v0;
}

void sub_1D1ACD820(char *a1@<X8>)
{
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  v2 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  *a1 = v2;
}

void sub_1D1ACD898(char *a1)
{
  v1 = *a1;
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  byte_1EE07AF84 = v1;

  os_unfair_lock_unlock(&dword_1EE07AF80);
}

void static HomeState.Stream.overrideIsSupported.setter(char a1)
{
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  byte_1EE07AF84 = a1;

  os_unfair_lock_unlock(&dword_1EE07AF80);
}

void (*static HomeState.Stream.overrideIsSupported.modify(char *a1))(char *a1)
{
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  v2 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  *a1 = v2;
  return sub_1D1ACDA1C;
}

void sub_1D1ACDA1C(char *a1)
{
  v1 = *a1;
  os_unfair_lock_lock(&dword_1EE07AF80);
  byte_1EE07AF84 = v1;

  os_unfair_lock_unlock(&dword_1EE07AF80);
}

uint64_t sub_1D1ACDA84()
{
  v1 = swift_allocObject();
  v0[4] = v1;
  swift_weakInit();
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A910, &qword_1D1E96EB8);
  *v2 = v0;
  v2[1] = sub_1D1ACDB98;
  v4 = v0[3];

  return MEMORY[0x1EEE6DE18](v0 + 2, &unk_1D1E96EB0, v4, sub_1D1AD79E4, v1, 0, 0, v3);
}

uint64_t sub_1D1ACDB98()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1D1AD7BF4;
  }

  else
  {

    v2 = sub_1D1AD7BFC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1ACDCD4()
{
  v1 = swift_allocObject();
  v0[4] = v1;
  swift_weakInit();
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A808, &qword_1D1E96D58);
  *v2 = v0;
  v2[1] = sub_1D1ACDDE8;
  v4 = v0[3];

  return MEMORY[0x1EEE6DE18](v0 + 2, &unk_1D1E96D50, v4, sub_1D1AD7380, v1, 0, 0, v3);
}

uint64_t sub_1D1ACDDE8()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1D1A0EFD4;
  }

  else
  {

    v2 = sub_1D19D88F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1ACDF24()
{
  v1 = swift_allocObject();
  v0[4] = v1;
  swift_weakInit();
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8B0, &qword_1D1E96E40);
  *v2 = v0;
  v2[1] = sub_1D1ACDB98;
  v4 = v0[3];

  return MEMORY[0x1EEE6DE18](v0 + 2, &unk_1D1E96E38, v4, sub_1D1AD77F8, v1, 0, 0, v3);
}

uint64_t sub_1D1ACE038(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A918, &qword_1D1E96EC0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A928, &qword_1D1E96ED0);
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  swift_storeEnumTagMultiPayload();
  v8 = (a2 + *(*a2 + 96));
  os_unfair_lock_lock(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CD0, &qword_1D1E961C0);
  sub_1D1ACE7D0(v8 + *(v9 + 28), v6, a2);
  os_unfair_lock_unlock(v8);
  return sub_1D1741A30(v6, &qword_1EC64A918, &qword_1D1E96EC0);
}

uint64_t sub_1D1ACE190(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A810, &qword_1D1E96D60);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A820, &qword_1D1E96D70);
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  swift_storeEnumTagMultiPayload();
  v8 = (a2 + *(*a2 + 96));
  os_unfair_lock_lock(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7D0, &qword_1D1E96D00);
  sub_1D1ACF228(v8 + *(v9 + 28), v6, a2);
  os_unfair_lock_unlock(v8);
  return sub_1D1741A30(v6, &qword_1EC64A810, &qword_1D1E96D60);
}

uint64_t sub_1D1ACE2E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8B8, &qword_1D1E96E48);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8C8, &qword_1D1E96E58);
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  swift_storeEnumTagMultiPayload();
  v8 = (a2 + *(*a2 + 96));
  os_unfair_lock_lock(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A878, &qword_1D1E96DE8);
  sub_1D1ACFE18(v8 + *(v9 + 28), v6, a2);
  os_unfair_lock_unlock(v8);
  return sub_1D1741A30(v6, &qword_1EC64A8B8, &qword_1D1E96E48);
}

uint64_t sub_1D1ACE440(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A918, &qword_1D1E96EC0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_storeEnumTagMultiPayload();
    v6 = (v5 + *(*v5 + 96));
    os_unfair_lock_lock(v6);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CD0, &qword_1D1E961C0);
    sub_1D1ACE7D0(v6 + *(v7 + 28), v3, v5);
    os_unfair_lock_unlock(v6);

    return sub_1D1741A30(v3, &qword_1EC64A918, &qword_1D1E96EC0);
  }

  return result;
}

uint64_t sub_1D1ACE570(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A810, &qword_1D1E96D60);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_storeEnumTagMultiPayload();
    v6 = (v5 + *(*v5 + 96));
    os_unfair_lock_lock(v6);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7D0, &qword_1D1E96D00);
    sub_1D1ACF228(v6 + *(v7 + 28), v3, v5);
    os_unfair_lock_unlock(v6);

    return sub_1D1741A30(v3, &qword_1EC64A810, &qword_1D1E96D60);
  }

  return result;
}

uint64_t sub_1D1ACE6A0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8B8, &qword_1D1E96E48);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_storeEnumTagMultiPayload();
    v6 = (v5 + *(*v5 + 96));
    os_unfair_lock_lock(v6);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A878, &qword_1D1E96DE8);
    sub_1D1ACFE18(v6 + *(v7 + 28), v3, v5);
    os_unfair_lock_unlock(v6);

    return sub_1D1741A30(v3, &qword_1EC64A8B8, &qword_1D1E96E48);
  }

  return result;
}

uint64_t sub_1D1ACE7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v87 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A920, &qword_1D1E96EC8);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v86 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v88 = &v81 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A928, &qword_1D1E96ED0);
  v90 = *(v9 - 8);
  v91 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v82 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v83 = &v81 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v89 = &v81 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  v84 = *(v15 - 8);
  v85 = v15;
  v16 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v81 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v81 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A930, &qword_1D1E96ED8);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v81 - v26;
  v28 = a2;
  v29 = a1;
  sub_1D1AD0A08(v28, &v81 - v26);
  sub_1D1741C08(v27, v25, &qword_1EC64A930, &qword_1D1E96ED8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
  if ((*(*(v30 - 8) + 48))(v25, 1, v30) == 1)
  {
    goto LABEL_2;
  }

  v81 = v27;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (*(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CC8, &qword_1D1E961B8) + 36)))
        {
          sub_1D1E67F5C();
        }

        goto LABEL_33;
      }

      v53 = v87;
      v54 = *(*v87 + 104);
      v55 = sub_1D1E67E7C();
      (*(*(v55 - 8) + 56))(v21, 1, 1, v55);
      v56 = swift_allocObject();
      swift_weakInit();
      v58 = v84;
      v57 = v85;
      (*(v84 + 16))(v18, v53 + v54, v85);
      v59 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v60 = (v16 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
      v61 = swift_allocObject();
      *(v61 + 16) = 0;
      *(v61 + 24) = 0;
      (*(v58 + 32))(v61 + v59, v18, v57);
      *(v61 + v60) = v56;
      v62 = sub_1D17C6EF0(0, 0, v21, &unk_1D1E96F00, v61);
      sub_1D1741A30(v81, &qword_1EC64A930, &qword_1D1E96ED8);
      v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CC8, &qword_1D1E961B8) + 36);

      *(v29 + v63) = v62;
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        v69 = v88;
        sub_1D1741A90(v25, v88, &qword_1EC64A920, &qword_1D1E96EC8);
        v70 = v86;
        sub_1D1741C08(v69, v86, &qword_1EC64A920, &qword_1D1E96EC8);
        v72 = v90;
        v71 = v91;
        if ((*(v90 + 48))(v70, 1, v91) == 1)
        {
          sub_1D1741A30(v70, &qword_1EC64A920, &qword_1D1E96EC8);
        }

        else
        {
          v92 = 0;
          sub_1D1E67D6C();
          (*(v72 + 8))(v70, v71);
        }

        v27 = v81;
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CC8, &qword_1D1E961B8);
        v78 = *(v77 + 40);

        *(v29 + v78) = MEMORY[0x1E69E7CC0];
        if (*(v29 + *(v77 + 36)))
        {
          sub_1D1E67F5C();
        }

        sub_1D1741A30(v69, &qword_1EC64A920, &qword_1D1E96EC8);
        goto LABEL_2;
      }

      v42 = v90;
      v41 = v91;
      v43 = v83;
      (*(v90 + 16))(v83, v25, v91);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CC8, &qword_1D1E961B8);
      v45 = *(v44 + 40);
      v46 = v29;
      v47 = *(v29 + v45);
      if (!*(v47 + 16))
      {
        v79 = v44;
        v80 = *(v42 + 8);
        v80(v43, v41);
        (*(v42 + 32))(v82, v25, v41);
        v92 = 0;
        sub_1D1E67D6C();
        if (*(v46 + *(v79 + 36)))
        {
          sub_1D1E67F5C();
        }

        v80(v82, v41);
        goto LABEL_33;
      }

      v92 = v47;

      sub_1D1E67D6C();
      v48 = *(v42 + 8);
      v48(v43, v41);
      sub_1D1741A30(v81, &qword_1EC64A930, &qword_1D1E96ED8);

      *(v46 + v45) = MEMORY[0x1E69E7CC0];
      return (v48)(v25, v41);
    }
  }

  else
  {
    v34 = a1;
    if (EnumCaseMultiPayload > 1)
    {
      v27 = v81;
      if (EnumCaseMultiPayload != 2)
      {
        v73 = *&v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A940, &qword_1D1E96EE8) + 48)];
        v74 = v89;
        v75 = v90;
        v76 = v91;
        (*(v90 + 32))(v89, v25, v91);
        v92 = v73;
        sub_1D1E67D5C();
        (*(v75 + 8))(v74, v76);
LABEL_2:
        v31 = v27;
        return sub_1D1741A30(v31, &qword_1EC64A930, &qword_1D1E96ED8);
      }

      v49 = v89;
      v50 = v90;
      v51 = v91;
      (*(v90 + 32))(v89, v25, v91);
      v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CC8, &qword_1D1E961B8) + 40);
      v92 = *(v34 + v52);

      sub_1D1E67D6C();
      (*(v50 + 8))(v49, v51);
      sub_1D1741A30(v27, &qword_1EC64A930, &qword_1D1E96ED8);

      *(v34 + v52) = MEMORY[0x1E69E7CC0];
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A948, &qword_1D1E96EF0);
        v36 = *v25;
        v37 = v89;
        v38 = v90;
        v39 = v91;
        (*(v90 + 32))(v89, &v25[*(v35 + 48)], v91);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643338, &qword_1D1E71798);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1D1E739C0;
        *(v40 + 32) = v36;
        v92 = v40;
        sub_1D1E67D6C();
        (*(v38 + 8))(v37, v39);
LABEL_33:
        v31 = v81;
        return sub_1D1741A30(v31, &qword_1EC64A930, &qword_1D1E96ED8);
      }

      v64 = *v25;
      v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CC8, &qword_1D1E961B8) + 40);
      v66 = *(a1 + v65);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_1D177E664(0, v66[2] + 1, 1, v66);
      }

      v68 = v66[2];
      v67 = v66[3];
      if (v68 >= v67 >> 1)
      {
        v66 = sub_1D177E664((v67 > 1), v68 + 1, 1, v66);
      }

      result = sub_1D1741A30(v81, &qword_1EC64A930, &qword_1D1E96ED8);
      v66[2] = v68 + 1;
      v66[v68 + 4] = v64;
      *(a1 + v65) = v66;
    }
  }

  return result;
}

uint64_t sub_1D1ACF228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v91 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A818, &qword_1D1E96D68);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v90 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v92 = &v83 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A820, &qword_1D1E96D70);
  v96 = *(v9 - 8);
  v97 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v84 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v88 = &v83 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v95 = &v83 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643318, &qword_1D1E71770);
  v94 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v89 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v93 = &v83 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v87 = &v83 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C40, qword_1D1E968E0);
  v85 = *(v21 - 8);
  v86 = v21;
  v22 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v83 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v83 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A828, &qword_1D1E96D78);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v83 - v32;
  v34 = a2;
  v35 = a1;
  sub_1D1AD105C(v34, &v83 - v32);
  sub_1D1741C08(v33, v31, &qword_1EC64A828, &qword_1D1E96D78);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
  if ((*(*(v36 - 8) + 48))(v31, 1, v36) == 1)
  {
LABEL_2:
    v37 = v33;
    return sub_1D1741A30(v37, &qword_1EC64A828, &qword_1D1E96D78);
  }

  v83 = v33;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v55 = v91;
        v56 = *(*v91 + 104);
        v57 = sub_1D1E67E7C();
        (*(*(v57 - 8) + 56))(v27, 1, 1, v57);
        v58 = swift_allocObject();
        swift_weakInit();
        v59 = v85;
        v60 = v55 + v56;
        v61 = v86;
        (*(v85 + 16))(v24, v60, v86);
        v62 = (*(v59 + 80) + 32) & ~*(v59 + 80);
        v63 = swift_allocObject();
        *(v63 + 16) = 0;
        *(v63 + 24) = 0;
        (*(v59 + 32))(v63 + v62, v24, v61);
        *(v63 + ((v22 + v62 + 7) & 0xFFFFFFFFFFFFFFF8)) = v58;
        v64 = sub_1D17C6EF0(0, 0, v27, &unk_1D1E96DA0, v63);
        sub_1D1741A30(v83, &qword_1EC64A828, &qword_1D1E96D78);
        v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7C8, &qword_1D1E96CF8) + 36);

        *(v35 + v65) = v64;
        return result;
      }

      if (*(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7C8, &qword_1D1E96CF8) + 36)))
      {
        sub_1D1E67F5C();
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        v72 = v31;
        v73 = v92;
        sub_1D1741A90(v72, v92, &qword_1EC64A818, &qword_1D1E96D68);
        v74 = v90;
        sub_1D1741C08(v73, v90, &qword_1EC64A818, &qword_1D1E96D68);
        v76 = v96;
        v75 = v97;
        if ((*(v96 + 48))(v74, 1, v97) == 1)
        {
          sub_1D1741A30(v74, &qword_1EC64A818, &qword_1D1E96D68);
        }

        else
        {
          v98 = 0;
          sub_1D1E67D6C();
          (*(v76 + 8))(v74, v75);
        }

        v33 = v83;
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7C8, &qword_1D1E96CF8);
        v80 = *(v79 + 40);

        *(v35 + v80) = MEMORY[0x1E69E7CC0];
        if (*(v35 + *(v79 + 36)))
        {
          sub_1D1E67F5C();
        }

        sub_1D1741A30(v73, &qword_1EC64A818, &qword_1D1E96D68);
        goto LABEL_2;
      }

      v47 = v96;
      v46 = v97;
      v48 = v88;
      (*(v96 + 16))(v88, v31, v97);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7C8, &qword_1D1E96CF8);
      v50 = *(v49 + 40);
      if (*(*(v35 + v50) + 16))
      {
        v98 = *(v35 + v50);

        sub_1D1E67D6C();
        v51 = *(v47 + 8);
        v51(v48, v46);
        sub_1D1741A30(v83, &qword_1EC64A828, &qword_1D1E96D78);

        *(v35 + v50) = MEMORY[0x1E69E7CC0];
        return (v51)(v31, v46);
      }

      v81 = v49;
      v82 = *(v47 + 8);
      v82(v48, v46);
      (*(v47 + 32))(v84, v31, v46);
      v98 = 0;
      sub_1D1E67D6C();
      if (*(v35 + *(v81 + 36)))
      {
        sub_1D1E67F5C();
      }

      v82(v84, v46);
    }

LABEL_32:
    v37 = v83;
    return sub_1D1741A30(v37, &qword_1EC64A828, &qword_1D1E96D78);
  }

  v40 = v96;
  v39 = v97;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v53 = v95;
      (*(v96 + 32))(v95, v31, v97);
      v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7C8, &qword_1D1E96CF8) + 40);
      v98 = *(v35 + v54);

      sub_1D1E67D6C();
      (*(v40 + 8))(v53, v39);
      sub_1D1741A30(v83, &qword_1EC64A828, &qword_1D1E96D78);

      *(v35 + v54) = MEMORY[0x1E69E7CC0];
      return result;
    }

    v77 = *&v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A838, &qword_1D1E96D88) + 48)];
    v78 = v95;
    (*(v40 + 32))(v95, v31, v39);
    v98 = v77;
    sub_1D1E67D5C();
    (*(v40 + 8))(v78, v39);
    goto LABEL_32;
  }

  if (!EnumCaseMultiPayload)
  {
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A840, &qword_1D1E96D90) + 48);
    v42 = v87;
    sub_1D1741A90(v31, v87, &qword_1EC643318, &qword_1D1E71770);
    v43 = v95;
    (*(v40 + 32))(v95, &v31[v41], v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643310, &qword_1D1E71768);
    v44 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1D1E739C0;
    sub_1D1741C08(v42, v45 + v44, &qword_1EC643318, &qword_1D1E71770);
    v98 = v45;
    sub_1D1E67D6C();
    (*(v40 + 8))(v43, v39);
    sub_1D1741A30(v42, &qword_1EC643318, &qword_1D1E71770);
    goto LABEL_32;
  }

  v66 = v93;
  sub_1D1741A90(v31, v93, &qword_1EC643318, &qword_1D1E71770);
  v67 = v89;
  sub_1D1741C08(v66, v89, &qword_1EC643318, &qword_1D1E71770);
  v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7C8, &qword_1D1E96CF8) + 40);
  v69 = *(a1 + v68);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v69 = sub_1D177F22C(0, v69[2] + 1, 1, v69);
  }

  v71 = v69[2];
  v70 = v69[3];
  if (v71 >= v70 >> 1)
  {
    v69 = sub_1D177F22C((v70 > 1), v71 + 1, 1, v69);
  }

  sub_1D1741A30(v93, &qword_1EC643318, &qword_1D1E71770);
  sub_1D1741A30(v83, &qword_1EC64A828, &qword_1D1E96D78);
  v69[2] = v71 + 1;
  result = sub_1D1741A90(v67, v69 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v71, &qword_1EC643318, &qword_1D1E71770);
  *(a1 + v68) = v69;
  return result;
}

uint64_t sub_1D1ACFE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v91 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8C0, &qword_1D1E96E50);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v90 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v92 = &v83 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8C8, &qword_1D1E96E58);
  v96 = *(v9 - 8);
  v97 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v84 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v88 = &v83 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v95 = &v83 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  v94 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v89 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v93 = &v83 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v87 = &v83 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C50, &qword_1D1E96058);
  v85 = *(v21 - 8);
  v86 = v21;
  v22 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v83 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v83 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D0, &qword_1D1E96E60);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v83 - v32;
  v34 = a2;
  v35 = a1;
  sub_1D1AD1970(v34, &v83 - v32);
  sub_1D1741C08(v33, v31, &qword_1EC64A8D0, &qword_1D1E96E60);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
  if ((*(*(v36 - 8) + 48))(v31, 1, v36) == 1)
  {
LABEL_2:
    v37 = v33;
    return sub_1D1741A30(v37, &qword_1EC64A8D0, &qword_1D1E96E60);
  }

  v83 = v33;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v55 = v91;
        v56 = *(*v91 + 104);
        v57 = sub_1D1E67E7C();
        (*(*(v57 - 8) + 56))(v27, 1, 1, v57);
        v58 = swift_allocObject();
        swift_weakInit();
        v59 = v85;
        v60 = v55 + v56;
        v61 = v86;
        (*(v85 + 16))(v24, v60, v86);
        v62 = (*(v59 + 80) + 32) & ~*(v59 + 80);
        v63 = swift_allocObject();
        *(v63 + 16) = 0;
        *(v63 + 24) = 0;
        (*(v59 + 32))(v63 + v62, v24, v61);
        *(v63 + ((v22 + v62 + 7) & 0xFFFFFFFFFFFFFFF8)) = v58;
        v64 = sub_1D17C6EF0(0, 0, v27, &unk_1D1E96E88, v63);
        sub_1D1741A30(v83, &qword_1EC64A8D0, &qword_1D1E96E60);
        v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A870, &qword_1D1E96DE0) + 36);

        *(v35 + v65) = v64;
        return result;
      }

      if (*(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A870, &qword_1D1E96DE0) + 36)))
      {
        sub_1D1E67F5C();
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        v72 = v31;
        v73 = v92;
        sub_1D1741A90(v72, v92, &qword_1EC64A8C0, &qword_1D1E96E50);
        v74 = v90;
        sub_1D1741C08(v73, v90, &qword_1EC64A8C0, &qword_1D1E96E50);
        v76 = v96;
        v75 = v97;
        if ((*(v96 + 48))(v74, 1, v97) == 1)
        {
          sub_1D1741A30(v74, &qword_1EC64A8C0, &qword_1D1E96E50);
        }

        else
        {
          v98 = 0;
          sub_1D1E67D6C();
          (*(v76 + 8))(v74, v75);
        }

        v33 = v83;
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A870, &qword_1D1E96DE0);
        v80 = *(v79 + 40);

        *(v35 + v80) = MEMORY[0x1E69E7CC0];
        if (*(v35 + *(v79 + 36)))
        {
          sub_1D1E67F5C();
        }

        sub_1D1741A30(v73, &qword_1EC64A8C0, &qword_1D1E96E50);
        goto LABEL_2;
      }

      v47 = v96;
      v46 = v97;
      v48 = v88;
      (*(v96 + 16))(v88, v31, v97);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A870, &qword_1D1E96DE0);
      v50 = *(v49 + 40);
      if (*(*(v35 + v50) + 16))
      {
        v98 = *(v35 + v50);

        sub_1D1E67D6C();
        v51 = *(v47 + 8);
        v51(v48, v46);
        sub_1D1741A30(v83, &qword_1EC64A8D0, &qword_1D1E96E60);

        *(v35 + v50) = MEMORY[0x1E69E7CC0];
        return (v51)(v31, v46);
      }

      v81 = v49;
      v82 = *(v47 + 8);
      v82(v48, v46);
      (*(v47 + 32))(v84, v31, v46);
      v98 = 0;
      sub_1D1E67D6C();
      if (*(v35 + *(v81 + 36)))
      {
        sub_1D1E67F5C();
      }

      v82(v84, v46);
    }

LABEL_32:
    v37 = v83;
    return sub_1D1741A30(v37, &qword_1EC64A8D0, &qword_1D1E96E60);
  }

  v40 = v96;
  v39 = v97;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v53 = v95;
      (*(v96 + 32))(v95, v31, v97);
      v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A870, &qword_1D1E96DE0) + 40);
      v98 = *(v35 + v54);

      sub_1D1E67D6C();
      (*(v40 + 8))(v53, v39);
      sub_1D1741A30(v83, &qword_1EC64A8D0, &qword_1D1E96E60);

      *(v35 + v54) = MEMORY[0x1E69E7CC0];
      return result;
    }

    v77 = *&v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8E0, &qword_1D1E96E70) + 48)];
    v78 = v95;
    (*(v40 + 32))(v95, v31, v39);
    v98 = v77;
    sub_1D1E67D5C();
    (*(v40 + 8))(v78, v39);
    goto LABEL_32;
  }

  if (!EnumCaseMultiPayload)
  {
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8E8, &qword_1D1E96E78) + 48);
    v42 = v87;
    sub_1D1741A90(v31, v87, &unk_1EC64A270, &qword_1D1E71780);
    v43 = v95;
    (*(v40 + 32))(v95, &v31[v41], v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643320, &qword_1D1E71778);
    v44 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1D1E739C0;
    sub_1D1741C08(v42, v45 + v44, &unk_1EC64A270, &qword_1D1E71780);
    v98 = v45;
    sub_1D1E67D6C();
    (*(v40 + 8))(v43, v39);
    sub_1D1741A30(v42, &unk_1EC64A270, &qword_1D1E71780);
    goto LABEL_32;
  }

  v66 = v93;
  sub_1D1741A90(v31, v93, &unk_1EC64A270, &qword_1D1E71780);
  v67 = v89;
  sub_1D1741C08(v66, v89, &unk_1EC64A270, &qword_1D1E71780);
  v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A870, &qword_1D1E96DE0) + 40);
  v69 = *(a1 + v68);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v69 = sub_1D177F250(0, v69[2] + 1, 1, v69);
  }

  v71 = v69[2];
  v70 = v69[3];
  if (v71 >= v70 >> 1)
  {
    v69 = sub_1D177F250((v70 > 1), v71 + 1, 1, v69);
  }

  sub_1D1741A30(v93, &unk_1EC64A270, &qword_1D1E71780);
  sub_1D1741A30(v83, &qword_1EC64A8D0, &qword_1D1E96E60);
  v69[2] = v71 + 1;
  result = sub_1D1741A90(v67, v69 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v71, &unk_1EC64A270, &qword_1D1E71780);
  *(a1 + v68) = v69;
  return result;
}

void sub_1D1AD0A08(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CE8, &qword_1D1E961D8);
  v5 = MEMORY[0x1EEE9AC00](v36);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A930, &qword_1D1E96ED8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v34 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A928, &qword_1D1E96ED0);
  v35 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A918, &qword_1D1E96EC0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v34 - v16);
  sub_1D1741C08(a1, &v34 - v16, &qword_1EC64A918, &qword_1D1E96EC0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D1AD5180(*v17, v37);
    }

    else
    {
      v22 = v35;
      (*(v35 + 32))(v14, v17, v12);
      sub_1D1AD4100(v14, v37);
      (*(v22 + 8))(v14, v12);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v23 = *v17;
      sub_1D1AD5494(*v17, v37);

      return;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_1D1741C08(v2, v9, &qword_1EC649CE8, &qword_1D1E961D8);
      v19 = swift_getEnumCaseMultiPayload();
      if (v19 <= 7)
      {
        if (((1 << v19) & 0xB8) != 0)
        {
LABEL_8:
          sub_1D1741A30(v2, &qword_1EC649CE8, &qword_1D1E961D8);
          swift_storeEnumTagMultiPayload();
LABEL_9:
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
          v21 = v34;
          (*(*(v20 - 8) + 56))(v34, 1, 1, v20);
LABEL_10:
          sub_1D1741A90(v21, v37, &qword_1EC64A930, &qword_1D1E96ED8);
          return;
        }

        if (((1 << v19) & 6) != 0)
        {
          sub_1D1741A30(v9, &qword_1EC649CE8, &qword_1D1E961D8);
          goto LABEL_8;
        }

        if (v19 == 6)
        {
          goto LABEL_9;
        }
      }

      v27 = v35;
      v28 = *(v35 + 32);
      v28(v14, v9, v12);
      sub_1D1741A30(v3, &qword_1EC649CE8, &qword_1D1E961D8);
      swift_storeEnumTagMultiPayload();
      v21 = v34;
      v28(v34, v14, v12);
      (*(v27 + 56))(v21, 0, 1, v12);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
      swift_storeEnumTagMultiPayload();
      (*(*(v29 - 8) + 56))(v21, 0, 1, v29);
      goto LABEL_10;
    }

    sub_1D1741C08(v2, v7, &qword_1EC649CE8, &qword_1D1E961D8);
    v24 = swift_getEnumCaseMultiPayload();
    if ((v24 - 3) >= 5)
    {
      if ((v24 - 1) >= 2)
      {
        v30 = v35;
        v31 = *(v35 + 32);
        v31(v14, v7, v12);
        sub_1D1741A30(v3, &qword_1EC649CE8, &qword_1D1E961D8);
        swift_storeEnumTagMultiPayload();
        v32 = v37;
        v31(v37, v14, v12);
        (*(v30 + 56))(v32, 0, 1, v12);
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
        swift_storeEnumTagMultiPayload();
        (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
        return;
      }

      sub_1D1741A30(v7, &qword_1EC649CE8, &qword_1D1E961D8);
    }

    sub_1D1741A30(v2, &qword_1EC649CE8, &qword_1D1E961D8);
    swift_storeEnumTagMultiPayload();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
    v26 = v37;
    swift_storeEnumTagMultiPayload();
    (*(*(v25 - 8) + 56))(v26, 0, 1, v25);
  }
}

void sub_1D1AD105C(uint64_t a1@<X0>, char *a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A828, &qword_1D1E96D78);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v55 = &v55 - v4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7E8, &qword_1D1E96D18);
  v5 = MEMORY[0x1EEE9AC00](v58);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v55 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643318, &qword_1D1E71770);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A820, &qword_1D1E96D70);
  v56 = *(v16 - 8);
  v57 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A810, &qword_1D1E96D60);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v55 - v20);
  sub_1D1741C08(a1, &v55 - v20, &qword_1EC64A810, &qword_1D1E96D60);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v28 = v56;
      v27 = v57;
      (*(v56 + 32))(v18, v21, v57);
      sub_1D1AD4680(v18, v60);
      (*(v28 + 8))(v18, v27);
      return;
    }

    v33 = v15;
    sub_1D1741A90(v21, v15, &qword_1EC643318, &qword_1D1E71770);
    v34 = v59;
    sub_1D1741C08(v59, v12, &qword_1EC64A7E8, &qword_1D1E96D18);
    v35 = swift_getEnumCaseMultiPayload();
    if (v35 > 3)
    {
      if ((v35 - 6) < 2)
      {
        goto LABEL_30;
      }

      if (v35 != 4)
      {
        sub_1D1741A30(v34, &qword_1EC64A7E8, &qword_1D1E96D18);
        swift_storeEnumTagMultiPayload();
      }

      v36 = v60;
      sub_1D1741C08(v33, v60, &qword_1EC643318, &qword_1D1E71770);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
      swift_storeEnumTagMultiPayload();
      v38 = *(*(v37 - 8) + 56);
      v39 = v36;
    }

    else
    {
      if ((v35 - 1) < 2)
      {
        sub_1D1741A30(v12, &qword_1EC64A7E8, &qword_1D1E96D18);
LABEL_30:
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
        v38 = *(*(v45 - 8) + 56);
        v39 = v60;
        v44 = 1;
        goto LABEL_31;
      }

      if (v35)
      {
        goto LABEL_30;
      }

      v40 = v57;
      v41 = *(v56 + 32);
      v41(v18, v12, v57);
      sub_1D1741A30(v34, &qword_1EC64A7E8, &qword_1D1E96D18);
      swift_storeEnumTagMultiPayload();
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A840, &qword_1D1E96D90) + 48);
      v43 = v60;
      sub_1D1741C08(v33, v60, &qword_1EC643318, &qword_1D1E71770);
      v41(&v43[v42], v18, v40);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
      swift_storeEnumTagMultiPayload();
      v38 = *(*(v37 - 8) + 56);
      v39 = v43;
    }

    v44 = 0;
    v45 = v37;
LABEL_31:
    v38(v39, v44, 1, v45);
    sub_1D1741A30(v33, &qword_1EC643318, &qword_1D1E71770);
    return;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v29 = *v21;
    sub_1D1AD57F4(*v21, v60);

    return;
  }

  v23 = v59;
  if (EnumCaseMultiPayload == 3)
  {
    sub_1D1741C08(v59, v10, &qword_1EC64A7E8, &qword_1D1E96D18);
    v24 = swift_getEnumCaseMultiPayload();
    if (v24 <= 7)
    {
      if (((1 << v24) & 0xB8) != 0)
      {
LABEL_9:
        sub_1D1741A30(v23, &qword_1EC64A7E8, &qword_1D1E96D18);
        swift_storeEnumTagMultiPayload();
LABEL_10:
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
        v26 = v55;
        (*(*(v25 - 8) + 56))(v55, 1, 1, v25);
LABEL_11:
        sub_1D1741A90(v26, v60, &qword_1EC64A828, &qword_1D1E96D78);
        return;
      }

      if (((1 << v24) & 6) != 0)
      {
        sub_1D1741A30(v10, &qword_1EC64A7E8, &qword_1D1E96D18);
        goto LABEL_9;
      }

      if (v24 == 6)
      {
        goto LABEL_10;
      }
    }

    v47 = v56;
    v46 = v57;
    v48 = *(v56 + 32);
    v48(v18, v10, v57);
    sub_1D1741A30(v23, &qword_1EC64A7E8, &qword_1D1E96D18);
    swift_storeEnumTagMultiPayload();
    v26 = v55;
    v48(v55, v18, v46);
    (*(v47 + 56))(v26, 0, 1, v46);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
    swift_storeEnumTagMultiPayload();
    (*(*(v49 - 8) + 56))(v26, 0, 1, v49);
    goto LABEL_11;
  }

  sub_1D1741C08(v59, v7, &qword_1EC64A7E8, &qword_1D1E96D18);
  v30 = swift_getEnumCaseMultiPayload();
  if ((v30 - 3) >= 5)
  {
    if ((v30 - 1) >= 2)
    {
      v51 = v56;
      v50 = v57;
      v52 = *(v56 + 32);
      v52(v18, v7, v57);
      sub_1D1741A30(v23, &qword_1EC64A7E8, &qword_1D1E96D18);
      swift_storeEnumTagMultiPayload();
      v53 = v60;
      v52(v60, v18, v50);
      (*(v51 + 56))(v53, 0, 1, v50);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
      swift_storeEnumTagMultiPayload();
      (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
      return;
    }

    sub_1D1741A30(v7, &qword_1EC64A7E8, &qword_1D1E96D18);
  }

  sub_1D1741A30(v23, &qword_1EC64A7E8, &qword_1D1E96D18);
  swift_storeEnumTagMultiPayload();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
  v32 = v60;
  swift_storeEnumTagMultiPayload();
  (*(*(v31 - 8) + 56))(v32, 0, 1, v31);
}

void sub_1D1AD1970(uint64_t a1@<X0>, char *a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D0, &qword_1D1E96E60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v55 = &v55 - v4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A890, &qword_1D1E96E00);
  v5 = MEMORY[0x1EEE9AC00](v58);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v55 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8C8, &qword_1D1E96E58);
  v56 = *(v16 - 8);
  v57 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8B8, &qword_1D1E96E48);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v55 - v20);
  sub_1D1741C08(a1, &v55 - v20, &qword_1EC64A8B8, &qword_1D1E96E48);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v28 = v56;
      v27 = v57;
      (*(v56 + 32))(v18, v21, v57);
      sub_1D1AD4C00(v18, v60);
      (*(v28 + 8))(v18, v27);
      return;
    }

    v33 = v15;
    sub_1D1741A90(v21, v15, &unk_1EC64A270, &qword_1D1E71780);
    v34 = v59;
    sub_1D1741C08(v59, v12, &qword_1EC64A890, &qword_1D1E96E00);
    v35 = swift_getEnumCaseMultiPayload();
    if (v35 > 3)
    {
      if ((v35 - 6) < 2)
      {
        goto LABEL_30;
      }

      if (v35 != 4)
      {
        sub_1D1741A30(v34, &qword_1EC64A890, &qword_1D1E96E00);
        swift_storeEnumTagMultiPayload();
      }

      v36 = v60;
      sub_1D1741C08(v33, v60, &unk_1EC64A270, &qword_1D1E71780);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
      swift_storeEnumTagMultiPayload();
      v38 = *(*(v37 - 8) + 56);
      v39 = v36;
    }

    else
    {
      if ((v35 - 1) < 2)
      {
        sub_1D1741A30(v12, &qword_1EC64A890, &qword_1D1E96E00);
LABEL_30:
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
        v38 = *(*(v45 - 8) + 56);
        v39 = v60;
        v44 = 1;
        goto LABEL_31;
      }

      if (v35)
      {
        goto LABEL_30;
      }

      v40 = v57;
      v41 = *(v56 + 32);
      v41(v18, v12, v57);
      sub_1D1741A30(v34, &qword_1EC64A890, &qword_1D1E96E00);
      swift_storeEnumTagMultiPayload();
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8E8, &qword_1D1E96E78) + 48);
      v43 = v60;
      sub_1D1741C08(v33, v60, &unk_1EC64A270, &qword_1D1E71780);
      v41(&v43[v42], v18, v40);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
      swift_storeEnumTagMultiPayload();
      v38 = *(*(v37 - 8) + 56);
      v39 = v43;
    }

    v44 = 0;
    v45 = v37;
LABEL_31:
    v38(v39, v44, 1, v45);
    sub_1D1741A30(v33, &unk_1EC64A270, &qword_1D1E71780);
    return;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v29 = *v21;
    sub_1D1AD5B54(*v21, v60);

    return;
  }

  v23 = v59;
  if (EnumCaseMultiPayload == 3)
  {
    sub_1D1741C08(v59, v10, &qword_1EC64A890, &qword_1D1E96E00);
    v24 = swift_getEnumCaseMultiPayload();
    if (v24 <= 7)
    {
      if (((1 << v24) & 0xB8) != 0)
      {
LABEL_9:
        sub_1D1741A30(v23, &qword_1EC64A890, &qword_1D1E96E00);
        swift_storeEnumTagMultiPayload();
LABEL_10:
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
        v26 = v55;
        (*(*(v25 - 8) + 56))(v55, 1, 1, v25);
LABEL_11:
        sub_1D1741A90(v26, v60, &qword_1EC64A8D0, &qword_1D1E96E60);
        return;
      }

      if (((1 << v24) & 6) != 0)
      {
        sub_1D1741A30(v10, &qword_1EC64A890, &qword_1D1E96E00);
        goto LABEL_9;
      }

      if (v24 == 6)
      {
        goto LABEL_10;
      }
    }

    v47 = v56;
    v46 = v57;
    v48 = *(v56 + 32);
    v48(v18, v10, v57);
    sub_1D1741A30(v23, &qword_1EC64A890, &qword_1D1E96E00);
    swift_storeEnumTagMultiPayload();
    v26 = v55;
    v48(v55, v18, v46);
    (*(v47 + 56))(v26, 0, 1, v46);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
    swift_storeEnumTagMultiPayload();
    (*(*(v49 - 8) + 56))(v26, 0, 1, v49);
    goto LABEL_11;
  }

  sub_1D1741C08(v59, v7, &qword_1EC64A890, &qword_1D1E96E00);
  v30 = swift_getEnumCaseMultiPayload();
  if ((v30 - 3) >= 5)
  {
    if ((v30 - 1) >= 2)
    {
      v51 = v56;
      v50 = v57;
      v52 = *(v56 + 32);
      v52(v18, v7, v57);
      sub_1D1741A30(v23, &qword_1EC64A890, &qword_1D1E96E00);
      swift_storeEnumTagMultiPayload();
      v53 = v60;
      v52(v60, v18, v50);
      (*(v51 + 56))(v53, 0, 1, v50);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
      swift_storeEnumTagMultiPayload();
      (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
      return;
    }

    sub_1D1741A30(v7, &qword_1EC64A890, &qword_1D1E96E00);
  }

  sub_1D1741A30(v23, &qword_1EC64A890, &qword_1D1E96E00);
  swift_storeEnumTagMultiPayload();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
  v32 = v60;
  swift_storeEnumTagMultiPayload();
  (*(*(v31 - 8) + 56))(v32, 0, 1, v31);
}

uint64_t sub_1D1AD2284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA8, &qword_1D1E96180);
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A918, &qword_1D1E96EC0);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AD2400, 0, 0);
}

uint64_t sub_1D1AD2400()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  swift_storeEnumTagMultiPayload();
  (*(v2 + 16))(v1, v4, v3);
  sub_1D17D8EA8(&qword_1EC649CB0, &qword_1EC649C68, &qword_1D1E960B0, MEMORY[0x1E69E87D0]);
  sub_1D1E6801C();
  swift_beginAccess();
  sub_1D17D8EA8(&qword_1EC649CB8, &qword_1EC649CA8, &qword_1D1E96180, MEMORY[0x1E69E87C0]);
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_1D1AD2584;

  return MEMORY[0x1EEE6D8D0](v0 + 8, 0, 0);
}

uint64_t sub_1D1AD2584()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1D1AD29F0;
  }

  else
  {
    v2 = sub_1D1AD2698;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D1AD2698()
{
  v1 = v0[8];
  if (v1)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = v0[25];
      v5 = v0[22];
      *v5 = v1;
      swift_storeEnumTagMultiPayload();
      v6 = (v3 + *(*v3 + 96));

      os_unfair_lock_lock(v6);
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CD0, &qword_1D1E961C0);
      sub_1D1ACE7D0(v6 + *(v7 + 28), v5, v3);
      if (v4)
      {

        os_unfair_lock_unlock(v6);
      }

      else
      {
        v14 = v0[22];
        os_unfair_lock_unlock(v6);

        sub_1D1741A30(v14, &qword_1EC64A918, &qword_1D1E96EC0);
        sub_1D17D8EA8(&qword_1EC649CB8, &qword_1EC649CA8, &qword_1D1E96180, MEMORY[0x1E69E87C0]);
        v15 = swift_task_alloc();
        v0[24] = v15;
        *v15 = v0;
        v15[1] = sub_1D1AD2584;

        MEMORY[0x1EEE6D8D0](v0 + 8, 0, 0);
      }

      return;
    }

    (*(v0[19] + 8))(v0[20], v0[18]);
  }

  else
  {
    (*(v0[19] + 8))(v0[20], v0[18]);
  }

  v8 = v0[25];
  swift_beginAccess();
  v9 = swift_weakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = v0[23];
    v12 = (v9 + *(*v9 + 96));
    os_unfair_lock_lock(v12);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CD0, &qword_1D1E961C0);
    sub_1D1ACE7D0(v12 + *(v13 + 28), v11, v10);
    os_unfair_lock_unlock(v12);
    if (v8)
    {
      return;
    }
  }

  sub_1D1741A30(v0[23], &qword_1EC64A918, &qword_1D1E96EC0);

  v16 = v0[1];

  v16();
}

uint64_t sub_1D1AD29F0()
{
  v1 = v0[9];
  v0[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v2 = sub_1D1E68FEC();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = swift_allocError();
    *v4 = v1;
  }

  v5 = v0[23];
  (*(v0[19] + 8))(v0[20], v0[18]);
  sub_1D1741A30(v5, &qword_1EC64A918, &qword_1D1E96EC0);
  *v5 = v3;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = v0[23];
    v9 = (Strong + *(*Strong + 96));
    os_unfair_lock_lock(v9);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CD0, &qword_1D1E961C0);
    sub_1D1ACE7D0(v9 + *(v10 + 28), v8, v7);
    os_unfair_lock_unlock(v9);
  }

  sub_1D1741A30(v0[23], &qword_1EC64A918, &qword_1D1E96EC0);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D1AD2C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643318, &qword_1D1E71770);
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A848, &qword_1D1E96DA8);
  v5[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C40, qword_1D1E968E0);
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A850, &qword_1D1E96DB0);
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A810, &qword_1D1E96D60);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AD2E1C, 0, 0);
}

uint64_t sub_1D1AD2E1C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[10];
  swift_storeEnumTagMultiPayload();
  (*(v2 + 16))(v1, v4, v3);
  sub_1D17D8EA8(&qword_1EC64A858, &qword_1EC649C40, qword_1D1E968E0, MEMORY[0x1E69E86A0]);
  sub_1D1E6801C();
  swift_beginAccess();
  sub_1D17D8EA8(&qword_1EC64A860, &qword_1EC64A850, &qword_1D1E96DB0, MEMORY[0x1E69E8690]);
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_1D1AD2F9C;
  v6 = v0[15];

  return MEMORY[0x1EEE6D8D0](v6, 0, 0);
}

uint64_t sub_1D1AD2F9C()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1D1AD348C;
  }

  else
  {
    v2 = sub_1D1AD30B0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D1AD30B0()
{
  v1 = v0[15];
  if ((*(v0[13] + 48))(v1, 1, v0[12]) == 1)
  {
    (*(v0[20] + 8))(v0[21], v0[19]);
  }

  else
  {
    sub_1D1741A90(v1, v0[14], &qword_1EC643318, &qword_1D1E71770);
    Strong = swift_weakLoadStrong();
    v3 = v0[14];
    if (Strong)
    {
      v4 = v0[26];
      v5 = v0[23];
      sub_1D1741C08(v3, v5, &qword_1EC643318, &qword_1D1E71770);
      swift_storeEnumTagMultiPayload();
      v6 = (Strong + *(*Strong + 96));
      os_unfair_lock_lock(v6);
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7D0, &qword_1D1E96D00);
      sub_1D1ACF228(v6 + *(v7 + 28), v5, Strong);
      if (v4)
      {

        os_unfair_lock_unlock(v6);
      }

      else
      {
        v18 = v0[23];
        v19 = v0[14];
        os_unfair_lock_unlock(v6);

        sub_1D1741A30(v19, &qword_1EC643318, &qword_1D1E71770);
        sub_1D1741A30(v18, &qword_1EC64A810, &qword_1D1E96D60);
        sub_1D17D8EA8(&qword_1EC64A860, &qword_1EC64A850, &qword_1D1E96DB0, MEMORY[0x1E69E8690]);
        v20 = swift_task_alloc();
        v0[25] = v20;
        *v20 = v0;
        v20[1] = sub_1D1AD2F9C;
        v21 = v0[15];

        MEMORY[0x1EEE6D8D0](v21, 0, 0);
      }

      return;
    }

    v9 = v0[20];
    v8 = v0[21];
    v10 = v0[19];
    sub_1D1741A30(v3, &qword_1EC643318, &qword_1D1E71770);
    (*(v9 + 8))(v8, v10);
  }

  v11 = v0[26];
  swift_beginAccess();
  v12 = swift_weakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = v0[24];
    v15 = (v12 + *(*v12 + 96));
    os_unfair_lock_lock(v15);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7D0, &qword_1D1E96D00);
    sub_1D1ACF228(v15 + *(v16 + 28), v14, v13);
    os_unfair_lock_unlock(v15);
    if (v11)
    {
      return;
    }
  }

  sub_1D1741A30(v0[24], &qword_1EC64A810, &qword_1D1E96D60);

  v17 = v0[1];

  v17();
}

uint64_t sub_1D1AD348C(uint64_t a1)
{
  v2 = sub_1D1E68FEC();
  if (!v2)
  {
    v2 = swift_allocError();
  }

  v3 = v2;
  v4 = v1[24];
  (*(v1[20] + 8))(v1[21], v1[19]);
  sub_1D1741A30(v4, &qword_1EC64A810, &qword_1D1E96D60);
  *v4 = v3;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = v1[24];
    v8 = (Strong + *(*Strong + 96));
    os_unfair_lock_lock(v8);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7D0, &qword_1D1E96D00);
    sub_1D1ACF228(v8 + *(v9 + 28), v7, v6);
    os_unfair_lock_unlock(v8);
  }

  sub_1D1741A30(v1[24], &qword_1EC64A810, &qword_1D1E96D60);

  v10 = v1[1];

  return v10();
}

uint64_t sub_1D1AD3680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8F0, &qword_1D1E96E90);
  v5[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C50, &qword_1D1E96058);
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8F8, &qword_1D1E96E98);
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8B8, &qword_1D1E96E48);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AD389C, 0, 0);
}

uint64_t sub_1D1AD389C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[10];
  swift_storeEnumTagMultiPayload();
  (*(v2 + 16))(v1, v4, v3);
  sub_1D17D8EA8(&qword_1EC64A900, &qword_1EC649C50, &qword_1D1E96058, MEMORY[0x1E69E86A0]);
  sub_1D1E6801C();
  swift_beginAccess();
  sub_1D17D8EA8(&qword_1EC64A908, &qword_1EC64A8F8, &qword_1D1E96E98, MEMORY[0x1E69E8690]);
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_1D1AD3A1C;
  v6 = v0[15];

  return MEMORY[0x1EEE6D8D0](v6, 0, 0);
}

uint64_t sub_1D1AD3A1C()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1D1AD3F0C;
  }

  else
  {
    v2 = sub_1D1AD3B30;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D1AD3B30()
{
  v1 = v0[15];
  if ((*(v0[13] + 48))(v1, 1, v0[12]) == 1)
  {
    (*(v0[20] + 8))(v0[21], v0[19]);
  }

  else
  {
    sub_1D1741A90(v1, v0[14], &unk_1EC64A270, &qword_1D1E71780);
    Strong = swift_weakLoadStrong();
    v3 = v0[14];
    if (Strong)
    {
      v4 = v0[26];
      v5 = v0[23];
      sub_1D1741C08(v3, v5, &unk_1EC64A270, &qword_1D1E71780);
      swift_storeEnumTagMultiPayload();
      v6 = (Strong + *(*Strong + 96));
      os_unfair_lock_lock(v6);
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A878, &qword_1D1E96DE8);
      sub_1D1ACFE18(v6 + *(v7 + 28), v5, Strong);
      if (v4)
      {

        os_unfair_lock_unlock(v6);
      }

      else
      {
        v18 = v0[23];
        v19 = v0[14];
        os_unfair_lock_unlock(v6);

        sub_1D1741A30(v19, &unk_1EC64A270, &qword_1D1E71780);
        sub_1D1741A30(v18, &qword_1EC64A8B8, &qword_1D1E96E48);
        sub_1D17D8EA8(&qword_1EC64A908, &qword_1EC64A8F8, &qword_1D1E96E98, MEMORY[0x1E69E8690]);
        v20 = swift_task_alloc();
        v0[25] = v20;
        *v20 = v0;
        v20[1] = sub_1D1AD3A1C;
        v21 = v0[15];

        MEMORY[0x1EEE6D8D0](v21, 0, 0);
      }

      return;
    }

    v9 = v0[20];
    v8 = v0[21];
    v10 = v0[19];
    sub_1D1741A30(v3, &unk_1EC64A270, &qword_1D1E71780);
    (*(v9 + 8))(v8, v10);
  }

  v11 = v0[26];
  swift_beginAccess();
  v12 = swift_weakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = v0[24];
    v15 = (v12 + *(*v12 + 96));
    os_unfair_lock_lock(v15);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A878, &qword_1D1E96DE8);
    sub_1D1ACFE18(v15 + *(v16 + 28), v14, v13);
    os_unfair_lock_unlock(v15);
    if (v11)
    {
      return;
    }
  }

  sub_1D1741A30(v0[24], &qword_1EC64A8B8, &qword_1D1E96E48);

  v17 = v0[1];

  v17();
}

uint64_t sub_1D1AD3F0C(uint64_t a1)
{
  v2 = sub_1D1E68FEC();
  if (!v2)
  {
    v2 = swift_allocError();
  }

  v3 = v2;
  v4 = v1[24];
  (*(v1[20] + 8))(v1[21], v1[19]);
  sub_1D1741A30(v4, &qword_1EC64A8B8, &qword_1D1E96E48);
  *v4 = v3;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = v1[24];
    v8 = (Strong + *(*Strong + 96));
    os_unfair_lock_lock(v8);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A878, &qword_1D1E96DE8);
    sub_1D1ACFE18(v8 + *(v9 + 28), v7, v6);
    os_unfair_lock_unlock(v8);
  }

  sub_1D1741A30(v1[24], &qword_1EC64A8B8, &qword_1D1E96E48);

  v10 = v1[1];

  return v10();
}

uint64_t sub_1D1AD4100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CE8, &qword_1D1E961D8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v24 - v7);
  sub_1D1741C08(v3, &v24 - v7, &qword_1EC649CE8, &qword_1D1E961D8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload != 4)
      {
        sub_1D1741A30(v3, &qword_1EC649CE8, &qword_1D1E961D8);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A928, &qword_1D1E96ED0);
        (*(*(v20 - 8) + 16))(v3, a1, v20);
        swift_storeEnumTagMultiPayload();
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
        return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
      }

      sub_1D1741A30(v3, &qword_1EC649CE8, &qword_1D1E961D8);
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A928, &qword_1D1E96ED0);
      v17 = *(v16 - 8);
      (*(v17 + 16))(a2, a1, v16);
      (*(v17 + 56))(a2, 0, 1, v16);
    }

    else
    {
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A928, &qword_1D1E96ED0);
      (*(*(v23 - 8) + 16))(a2, a1, v23);
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
        (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
        return sub_1D1741A30(v8, &qword_1EC649CE8, &qword_1D1E961D8);
      }

      v18 = *v8;
      sub_1D1741A30(v3, &qword_1EC649CE8, &qword_1D1E961D8);
      *v3 = v18;
LABEL_14:
      swift_storeEnumTagMultiPayload();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A928, &qword_1D1E96ED0);
      (*(*(v19 - 8) + 16))(a2, a1, v19);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v12 = *v8;
      sub_1D1741A30(v3, &qword_1EC649CE8, &qword_1D1E961D8);
      swift_storeEnumTagMultiPayload();
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A940, &qword_1D1E96EE8) + 48);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A928, &qword_1D1E96ED0);
      (*(*(v14 - 8) + 16))(a2, a1, v14);
      *(a2 + v13) = v12;
    }

    else
    {
      sub_1D1741A30(v3, &qword_1EC649CE8, &qword_1D1E961D8);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A928, &qword_1D1E96ED0);
      (*(*(v22 - 8) + 16))(v3, a1, v22);
      swift_storeEnumTagMultiPayload();
    }
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
LABEL_18:
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

uint64_t sub_1D1AD4680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7E8, &qword_1D1E96D18);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v24 - v7);
  sub_1D1741C08(v3, &v24 - v7, &qword_1EC64A7E8, &qword_1D1E96D18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload != 4)
      {
        sub_1D1741A30(v3, &qword_1EC64A7E8, &qword_1D1E96D18);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A820, &qword_1D1E96D70);
        (*(*(v20 - 8) + 16))(v3, a1, v20);
        swift_storeEnumTagMultiPayload();
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
        return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
      }

      sub_1D1741A30(v3, &qword_1EC64A7E8, &qword_1D1E96D18);
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A820, &qword_1D1E96D70);
      v17 = *(v16 - 8);
      (*(v17 + 16))(a2, a1, v16);
      (*(v17 + 56))(a2, 0, 1, v16);
    }

    else
    {
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A820, &qword_1D1E96D70);
      (*(*(v23 - 8) + 16))(a2, a1, v23);
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
        (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
        return sub_1D1741A30(v8, &qword_1EC64A7E8, &qword_1D1E96D18);
      }

      v18 = *v8;
      sub_1D1741A30(v3, &qword_1EC64A7E8, &qword_1D1E96D18);
      *v3 = v18;
LABEL_14:
      swift_storeEnumTagMultiPayload();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A820, &qword_1D1E96D70);
      (*(*(v19 - 8) + 16))(a2, a1, v19);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v12 = *v8;
      sub_1D1741A30(v3, &qword_1EC64A7E8, &qword_1D1E96D18);
      swift_storeEnumTagMultiPayload();
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A838, &qword_1D1E96D88) + 48);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A820, &qword_1D1E96D70);
      (*(*(v14 - 8) + 16))(a2, a1, v14);
      *(a2 + v13) = v12;
    }

    else
    {
      sub_1D1741A30(v3, &qword_1EC64A7E8, &qword_1D1E96D18);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A820, &qword_1D1E96D70);
      (*(*(v22 - 8) + 16))(v3, a1, v22);
      swift_storeEnumTagMultiPayload();
    }
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
LABEL_18:
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

uint64_t sub_1D1AD4C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A890, &qword_1D1E96E00);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v24 - v7);
  sub_1D1741C08(v3, &v24 - v7, &qword_1EC64A890, &qword_1D1E96E00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload != 4)
      {
        sub_1D1741A30(v3, &qword_1EC64A890, &qword_1D1E96E00);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8C8, &qword_1D1E96E58);
        (*(*(v20 - 8) + 16))(v3, a1, v20);
        swift_storeEnumTagMultiPayload();
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
        return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
      }

      sub_1D1741A30(v3, &qword_1EC64A890, &qword_1D1E96E00);
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8C8, &qword_1D1E96E58);
      v17 = *(v16 - 8);
      (*(v17 + 16))(a2, a1, v16);
      (*(v17 + 56))(a2, 0, 1, v16);
    }

    else
    {
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8C8, &qword_1D1E96E58);
      (*(*(v23 - 8) + 16))(a2, a1, v23);
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
        (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
        return sub_1D1741A30(v8, &qword_1EC64A890, &qword_1D1E96E00);
      }

      v18 = *v8;
      sub_1D1741A30(v3, &qword_1EC64A890, &qword_1D1E96E00);
      *v3 = v18;
LABEL_14:
      swift_storeEnumTagMultiPayload();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8C8, &qword_1D1E96E58);
      (*(*(v19 - 8) + 16))(a2, a1, v19);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v12 = *v8;
      sub_1D1741A30(v3, &qword_1EC64A890, &qword_1D1E96E00);
      swift_storeEnumTagMultiPayload();
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8E0, &qword_1D1E96E70) + 48);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8C8, &qword_1D1E96E58);
      (*(*(v14 - 8) + 16))(a2, a1, v14);
      *(a2 + v13) = v12;
    }

    else
    {
      sub_1D1741A30(v3, &qword_1EC64A890, &qword_1D1E96E00);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8C8, &qword_1D1E96E58);
      (*(*(v22 - 8) + 16))(v3, a1, v22);
      swift_storeEnumTagMultiPayload();
    }
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
LABEL_18:
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

uint64_t sub_1D1AD5180@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A928, &qword_1D1E96ED0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CE8, &qword_1D1E961D8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  sub_1D1741C08(v3, &v19 - v11, &qword_1EC649CE8, &qword_1D1E961D8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if ((EnumCaseMultiPayload - 6) < 2)
    {
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload != 4)
    {
      sub_1D1741A30(v3, &qword_1EC649CE8, &qword_1D1E961D8);
      swift_storeEnumTagMultiPayload();
    }

    *a2 = a1;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
LABEL_10:
    swift_storeEnumTagMultiPayload();
    (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
  }

  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_11;
    }

    v15 = *(v7 + 32);
    v15(v9, v12, v6);
    sub_1D1741A30(v3, &qword_1EC649CE8, &qword_1D1E961D8);
    swift_storeEnumTagMultiPayload();
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A948, &qword_1D1E96EF0) + 48);
    *a2 = a1;
    v15(&a2[v16], v9, v6);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
    goto LABEL_10;
  }

  sub_1D1741A30(v12, &qword_1EC649CE8, &qword_1D1E961D8);
LABEL_11:
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
  return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
}

id sub_1D1AD5494@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A928, &qword_1D1E96ED0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CE8, &qword_1D1E961D8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  sub_1D1741C08(v3, &v20 - v11, &qword_1EC649CE8, &qword_1D1E961D8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 7)
  {
    goto LABEL_8;
  }

  if (((1 << EnumCaseMultiPayload) & 0xC8) != 0)
  {
LABEL_5:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }

  if (((1 << EnumCaseMultiPayload) & 6) != 0)
  {
    sub_1D1741A30(v12, &qword_1EC649CE8, &qword_1D1E961D8);
    goto LABEL_5;
  }

  if (((1 << EnumCaseMultiPayload) & 0x30) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CF0, &qword_1D1E961E0);
    sub_1D1741A30(v3, &qword_1EC649CE8, &qword_1D1E961D8);
    *v3 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
    (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }

  else
  {
LABEL_8:
    v16 = *(v7 + 32);
    v16(v9, v12, v6);
    sub_1D1741A30(v3, &qword_1EC649CE8, &qword_1D1E961D8);
    swift_storeEnumTagMultiPayload();
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A940, &qword_1D1E96EE8) + 48);
    v16(a2, v9, v6);
    *&a2[v17] = a1;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
    swift_storeEnumTagMultiPayload();
    (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
  }

  return a1;
}

id sub_1D1AD57F4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A820, &qword_1D1E96D70);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7E8, &qword_1D1E96D18);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  sub_1D1741C08(v3, &v20 - v11, &qword_1EC64A7E8, &qword_1D1E96D18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 7)
  {
    goto LABEL_8;
  }

  if (((1 << EnumCaseMultiPayload) & 0xC8) != 0)
  {
LABEL_5:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }

  if (((1 << EnumCaseMultiPayload) & 6) != 0)
  {
    sub_1D1741A30(v12, &qword_1EC64A7E8, &qword_1D1E96D18);
    goto LABEL_5;
  }

  if (((1 << EnumCaseMultiPayload) & 0x30) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7F0, &qword_1D1E96D20);
    sub_1D1741A30(v3, &qword_1EC64A7E8, &qword_1D1E96D18);
    *v3 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
    (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }

  else
  {
LABEL_8:
    v16 = *(v7 + 32);
    v16(v9, v12, v6);
    sub_1D1741A30(v3, &qword_1EC64A7E8, &qword_1D1E96D18);
    swift_storeEnumTagMultiPayload();
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A838, &qword_1D1E96D88) + 48);
    v16(a2, v9, v6);
    *&a2[v17] = a1;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
    swift_storeEnumTagMultiPayload();
    (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
  }

  return a1;
}

id sub_1D1AD5B54@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8C8, &qword_1D1E96E58);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A890, &qword_1D1E96E00);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  sub_1D1741C08(v3, &v20 - v11, &qword_1EC64A890, &qword_1D1E96E00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 7)
  {
    goto LABEL_8;
  }

  if (((1 << EnumCaseMultiPayload) & 0xC8) != 0)
  {
LABEL_5:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }

  if (((1 << EnumCaseMultiPayload) & 6) != 0)
  {
    sub_1D1741A30(v12, &qword_1EC64A890, &qword_1D1E96E00);
    goto LABEL_5;
  }

  if (((1 << EnumCaseMultiPayload) & 0x30) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A898, &qword_1D1E96E08);
    sub_1D1741A30(v3, &qword_1EC64A890, &qword_1D1E96E00);
    *v3 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
    (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }

  else
  {
LABEL_8:
    v16 = *(v7 + 32);
    v16(v9, v12, v6);
    sub_1D1741A30(v3, &qword_1EC64A890, &qword_1D1E96E00);
    swift_storeEnumTagMultiPayload();
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8E0, &qword_1D1E96E70) + 48);
    v16(a2, v9, v6);
    *&a2[v17] = a1;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
    swift_storeEnumTagMultiPayload();
    (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
  }

  return a1;
}

uint64_t sub_1D1AD5EB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1AD5ED4, 0, 0);
}

uint64_t sub_1D1AD5ED4()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A910, &qword_1D1E96EB8);
  *v1 = v0;
  v1[1] = sub_1D1AD5FB4;
  v3 = *(v0 + 32);

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0x29287478656ELL, 0xE600000000000000, sub_1D1AD7BEC, v3, v2);
}

uint64_t sub_1D1AD5FB4()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1AD7BF8, 0, 0);
  }

  else
  {
    **(v2 + 24) = *(v2 + 16);
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D1AD60F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1AD6110, 0, 0);
}

uint64_t sub_1D1AD6110()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A808, &qword_1D1E96D58);
  *v1 = v0;
  v1[1] = sub_1D1AD61F0;
  v3 = *(v0 + 32);

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0x29287478656ELL, 0xE600000000000000, sub_1D1AD74B4, v3, v2);
}

uint64_t sub_1D1AD61F0()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D19557A0, 0, 0);
  }

  else
  {
    **(v2 + 24) = *(v2 + 16);
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D1AD632C(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1AD634C, 0, 0);
}

uint64_t sub_1D1AD634C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8B0, &qword_1D1E96E40);
  *v1 = v0;
  v1[1] = sub_1D1AD5FB4;
  v3 = *(v0 + 32);

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0x29287478656ELL, 0xE600000000000000, sub_1D1AD792C, v3, v2);
}

unint64_t sub_1D1AD642C()
{
  result = qword_1EC649DA0;
  if (!qword_1EC649DA0)
  {
    type metadata accessor for HomeDataActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649DA0);
  }

  return result;
}

uint64_t sub_1D1AD6484(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1ACD0DC(a1, v4, v5, v7, v6);
}

void *sub_1D1AD6544(unint64_t *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v62 = &v49 - v5;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v60 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for StateSnapshot(0);
  v63 = *(v59 - 8);
  v7 = MEMORY[0x1EEE9AC00](v59);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v58 = (&v49 - v10);
  v57 = sub_1D1E66A7C();
  v50 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v65 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if (*a1)
  {
    sub_1D1A82B50(*a1);
    sub_1D1A82B60(v12);
    sub_1D1A82B60(0);
    v13 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    v14 = [a2 homes];
    sub_1D1821898();
    v15 = sub_1D1E67C1C();

    if (v15 >> 62)
    {
LABEL_34:
      v16 = sub_1D1E6873C();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v16)
    {
      v17 = [a2 *(v13 + 320)];
      v18 = sub_1D1E67C1C();

      v19 = sub_1D1AD7C00();
      v20 = sub_1D1AD7EF4(v18, v19, v12);

      v21 = sub_1D18D70C0(MEMORY[0x1E69E7CC0]);
      if (v20 >> 62)
      {
        v13 = sub_1D1E6873C();
        if (v13)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v13 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13)
        {
LABEL_7:
          v22 = 0;
          v55 = v20 & 0xFFFFFFFFFFFFFF8;
          v56 = v20 & 0xC000000000000001;
          v49 = v50 + 16;
          v53 = (v50 + 8);
          v54 = (v63 + 56);
          v51 = v13;
          v52 = v20;
          do
          {
            if (v56)
            {
              v23 = MEMORY[0x1D3891EF0](v22, v20);
            }

            else
            {
              if (v22 >= *(v55 + 16))
              {
                goto LABEL_31;
              }

              v23 = *(v20 + 8 * v22 + 32);
            }

            v12 = v23;
            if (__OFADD__(v22, 1))
            {
              __break(1u);
LABEL_31:
              __break(1u);
LABEL_32:
              __break(1u);
LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

            v64 = v22 + 1;
            v24 = [v23 uniqueIdentifier];
            sub_1D1E66A5C();

            v25 = v9;
            v26 = v60;
            *v60 = v12;
            swift_storeEnumTagMultiPayload();
            v27 = v62;
            (*v54)(v62, 1, 1, v59);
            v28 = v12;
            v29 = sub_1D179B6E8(&unk_1F4D65BA8);
            swift_arrayDestroy();
            v12 = v28;
            v30 = a2;
            v31 = v58;
            v32 = v26;
            v9 = v25;
            StateSnapshot.init(updateType:homeManager:home:previousStateSnapshot:coverages:)(v32, v30, v12, v27, v29, v58);
            sub_1D1AD76E0(v31, v25, type metadata accessor for StateSnapshot);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v66 = v21;
            v13 = sub_1D1742188();
            v35 = v21[2];
            v36 = (v34 & 1) == 0;
            v37 = v35 + v36;
            if (__OFADD__(v35, v36))
            {
              goto LABEL_32;
            }

            v38 = v34;
            if (v21[3] >= v37)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v21 = v66;
                if (v34)
                {
                  goto LABEL_8;
                }
              }

              else
              {
                sub_1D17375D4();
                v21 = v66;
                if (v38)
                {
                  goto LABEL_8;
                }
              }
            }

            else
            {
              sub_1D1725B48(v37, isUniquelyReferenced_nonNull_native);
              v39 = sub_1D1742188();
              if ((v38 & 1) != (v40 & 1))
              {
                result = sub_1D1E690FC();
                __break(1u);
                return result;
              }

              v13 = v39;
              v21 = v66;
              if (v38)
              {
LABEL_8:
                sub_1D1AD70B0(v9, v21[7] + *(v63 + 72) * v13);

                (*v53)(v65, v57);
                goto LABEL_9;
              }
            }

            v21[(v13 >> 6) + 8] |= 1 << v13;
            v41 = v50;
            v42 = v65;
            v43 = v57;
            (*(v50 + 16))(v21[6] + *(v50 + 72) * v13, v65, v57);
            sub_1D1AD76E0(v9, v21[7] + *(v63 + 72) * v13, type metadata accessor for StateSnapshot);

            (*(v41 + 8))(v42, v43);
            v44 = v21[2];
            v45 = __OFADD__(v44, 1);
            v46 = v44 + 1;
            if (v45)
            {
              goto LABEL_33;
            }

            v21[2] = v46;
LABEL_9:
            ++v22;
            v13 = v51;
            v20 = v52;
          }

          while (v64 != v51);
        }
      }

      return v21;
    }
  }

  else
  {
    sub_1D1A82B60(0);
    sub_1D1A82B60(0);
  }

  v47 = MEMORY[0x1E69E7CC0];

  return sub_1D18D70C0(v47);
}

uint64_t sub_1D1AD6C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = a8;
  v34 = a6;
  v31 = a5;
  v35 = a4;
  v32 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v30 - v15;
  if (*(a7 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v17 = sub_1D1E67D4C();
    v19 = v18;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v17 = 0;
    v19 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_1D1741C08(a3, v16, &unk_1EC6442C0, &qword_1D1E741A0);
  v21 = sub_1D1E67E7C();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v16, 1, v21) == 1)
  {
    sub_1D1741A30(v16, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v22 + 8))(v16, v21);
  }

  if (a2)
  {
    v23 = sub_1D1E678CC() + 32;
    v24 = swift_allocObject();
    *(v24 + 16) = v34;
    *(v24 + 24) = a7;
    swift_unknownObjectRetain();

    if (v19 | v17)
    {
      v40[0] = 0;
      v40[1] = 0;
      v25 = v40;
      v40[2] = v17;
      v40[3] = v19;
    }

    else
    {
      v25 = 0;
    }

    if (v35 != 1)
    {
      v39[0] = 6;
      v39[1] = v25;
      v39[2] = v35;
      v39[3] = v31;
      v25 = v39;
    }

    v36 = 7;
    v37 = v25;
    v38 = v23;
    v28 = swift_task_create();

    if (isCurrentExecutorWithFlags)
    {
LABEL_16:
      swift_task_immediate();
    }
  }

  else
  {
    v26 = swift_allocObject();
    *(v26 + 16) = v34;
    *(v26 + 24) = a7;
    swift_unknownObjectRetain();

    if (v19 | v17)
    {
      v41[0] = 0;
      v41[1] = 0;
      v27 = v41;
      v41[2] = v17;
      v41[3] = v19;
    }

    else
    {
      v27 = 0;
    }

    if (v35 != 1)
    {
      v40[4] = 6;
      v40[5] = v27;
      v40[6] = v35;
      v40[7] = v31;
    }

    v28 = swift_task_create();
    if (isCurrentExecutorWithFlags)
    {
      goto LABEL_16;
    }
  }

  return v28;
}

uint64_t sub_1D1AD6F88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4BFC;

  return sub_1D1ACD210(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D1AD7050(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1AD70B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StateSnapshot(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1AD7114(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D1AC42A8(a1, v4, v5, v6);
}

uint64_t sub_1D1AD71C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D1AC74C0(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1D1AD7288(uint64_t result, uint64_t a2, char a3)
{
  if (result)
  {

    return sub_1D1861470(a2, a3);
  }

  return result;
}

uint64_t sub_1D1AD72D0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D17C4BFC;

  return sub_1D1AD60F0(a1, v1);
}

uint64_t sub_1D1AD7388(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C40, qword_1D1E968E0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1AD2C00(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D1AD74BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D1AC5B50(a1, v4, v5, v6);
}

uint64_t objectdestroy_36Tm()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D1AD75B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D1AC7D18(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1D1AD7678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1AD76E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1AD7748(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D17C4CF0;

  return sub_1D1AD632C(a1, v1);
}

uint64_t sub_1D1AD7800(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C50, &qword_1D1E96058) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1AD3680(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D1AD7934(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D17C4CF0;

  return sub_1D1AD5EB4(a1, v1);
}

uint64_t objectdestroy_54Tm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v7 + 8, v5 | 7);
}

uint64_t sub_1D1AD7AC0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1AD2284(a1, v6, v7, v1 + v5, v8);
}

id sub_1D1AD7C00()
{
  v1 = [v0 currentHome];
  if (v1)
  {
    return v1;
  }

  v2 = sub_1D174A5B8(&qword_1EC642DB8, &unk_1EC649E60, 0x1E696CBA0, &protocol conformance descriptor for HMHomeManager);
  v3 = *(v2 + 48);
  v4 = sub_1D1741B10(0, &unk_1EC649E60, 0x1E696CBA0);
  v3(v4, v2);

  v14 = sub_1D1749970(v5);
  sub_1D1ADFA9C(&v14);

  v6 = v14;
  if ((v14 & 0x8000000000000000) == 0 && (v14 & 0x4000000000000000) == 0)
  {
    v7 = *(v14 + 16);
    if (v7)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = sub_1D1E6873C();
  if (!v7)
  {
LABEL_22:

    return 0;
  }

LABEL_5:
  v8 = 0;
  v9 = v6 & 0xC000000000000001;
  do
  {
    if (v9)
    {
      v10 = MEMORY[0x1D3891EF0](v8, v6);
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        goto LABEL_20;
      }

      v10 = *(v6 + 8 * v8 + 32);
    }

    v1 = v10;
    v11 = (v8 + 1);
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if ([v10 isPrimary])
    {
      goto LABEL_18;
    }

    ++v8;
  }

  while (v11 != v7);
  if (v9)
  {
    v12 = MEMORY[0x1D3891EF0](0, v6);
    goto LABEL_17;
  }

  if (*(v6 + 16))
  {
    v12 = *(v6 + 32);
LABEL_17:
    v1 = v12;
LABEL_18:

    return v1;
  }

  __break(1u);

  __break(1u);
  return result;
}

id sub_1D1AD7DD8(void *a1, void *a2)
{
  v4 = [a1 isPrimary];
  if (v4 != [a2 isPrimary])
  {
    return [a1 isPrimary];
  }

  v6 = [a1 name];
  v7 = sub_1D1E6781C();
  v9 = v8;

  v10 = [a2 name];
  v11 = sub_1D1E6781C();
  v13 = v12;

  if (v7 == v11 && v9 == v13)
  {

    return 0;
  }

  else
  {
    v15 = sub_1D1E6904C();

    return (v15 & 1);
  }
}

unint64_t sub_1D1AD7EF4(unint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v34 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v33 - v10;
  result = MEMORY[0x1E69E7CC0];
  switch(a3)
  {
    case 0:
      return result;
    case 1:
      if (a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1D1E73FA0;
        *(v12 + 32) = a2;
        v13 = a2;
        return v12;
      }

      return result;
    case 2:
      if (a1 >> 62)
      {
        goto LABEL_28;
      }

      return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v44 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (2)
  {
    v15 = 0;
    v37 = a1 & 0xFFFFFFFFFFFFFF8;
    v38 = a1 & 0xC000000000000001;
    v33 = a1;
    v35 = a1 + 32;
    v36 = v14;
    v41 = v34 + 16;
    v42 = a3 + 56;
    v16 = (v34 + 8);
    while (v38)
    {
      v17 = MEMORY[0x1D3891EF0](v15, v33);
      v18 = __OFADD__(v15, 1);
      v19 = v15 + 1;
      if (v18)
      {
LABEL_25:
        __break(1u);
        return v44;
      }

LABEL_16:
      v39 = v17;
      v40 = v19;
      v20 = [v17 uniqueIdentifier];
      sub_1D1E66A5C();

      if (*(a3 + 16) && (sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v21 = sub_1D1E676DC(), v22 = -1 << *(a3 + 32), v23 = v21 & ~v22, ((*(v42 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0))
      {
        v24 = ~v22;
        v25 = *(v34 + 72);
        a1 = *(v34 + 16);
        while (1)
        {
          v26 = a3;
          (a1)(v9, *(a3 + 48) + v25 * v23, v6);
          sub_1D1AE3140(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          v27 = sub_1D1E6775C();
          v28 = *v16;
          (*v16)(v9, v6);
          if (v27)
          {
            break;
          }

          v23 = (v23 + 1) & v24;
          a3 = v26;
          if (((*(v42 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        v28(v43, v6);
        sub_1D1E6896C();
        sub_1D1E689AC();
        sub_1D1E689BC();
        sub_1D1E6897C();
        a3 = v26;
      }

      else
      {
LABEL_11:
        (*v16)(v43, v6);
      }

      v15 = v40;
      if (v40 == v36)
      {
        return v44;
      }
    }

    if (v15 < *(v37 + 16))
    {
      v17 = *(v35 + 8 * v15);
      v18 = __OFADD__(v15, 1);
      v19 = v15 + 1;
      if (v18)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_28:
    v29 = sub_1D1E6873C();
    if (!v29)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v30 = v29;
    v31 = sub_1D1808600();

    sub_1D18D2FC0(v31 + 32, v30, a1);
    a1 = v32;

    result = v31;
    if (a1 != v30)
    {
      __break(1u);
LABEL_31:
      v14 = sub_1D1E6873C();
      if (!v14)
      {
        return MEMORY[0x1E69E7CC0];
      }

      continue;
    }

    return result;
  }
}

uint64_t HomeState.Stream.StateSubscription.Reason.hash(into:)(uint64_t a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HomeState.Stream.StateSubscription.Reason(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1AE37A8(v1, v8, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v10 = (*(*(v9 - 8) + 48))(v8, 3, v9);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v3 + 32))(v5, v8, v2);
      MEMORY[0x1D3892850](1);
      sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      return (*(v3 + 8))(v5, v2);
    }

    v12 = 0;
  }

  return MEMORY[0x1D3892850](v12);
}

uint64_t HomeState.Stream.StateSubscription.Reason.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HomeState.Stream.StateSubscription.Reason(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E6920C();
  sub_1D1AE37A8(v1, v8, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v10 = (*(*(v9 - 8) + 48))(v8, 3, v9);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }

    goto LABEL_8;
  }

  if (v10)
  {
    v11 = 0;
LABEL_8:
    MEMORY[0x1D3892850](v11);
    return sub_1D1E6926C();
  }

  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x1D3892850](1);
  sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  (*(v3 + 8))(v5, v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1AD87A0(uint64_t a1)
{
  sub_1D1E6920C();
  HomeState.Stream.StateSubscription.Reason.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t HomeState.Stream.StateSubscription.HomeSpecification.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  if (!*v1)
  {
    v4 = 0;
    return MEMORY[0x1D3892850](v4);
  }

  if (v3 == 1)
  {
    v4 = 1;
    return MEMORY[0x1D3892850](v4);
  }

  if (v3 == 2)
  {
    v4 = 2;
    return MEMORY[0x1D3892850](v4);
  }

  MEMORY[0x1D3892850](3);

  return sub_1D176D4E8(a1, v3);
}

uint64_t HomeState.Stream.StateSubscription.HomeSpecification.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x1D3892850](3);
        sub_1D176D4E8(v4, v1);
        return sub_1D1E6926C();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1D3892850](v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1AD88F4()
{
  v1 = *v0;
  sub_1D1E6920C();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x1D3892850](3);
        sub_1D176D4E8(v4, v1);
        return sub_1D1E6926C();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1D3892850](v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1AD8978(__int128 *a1)
{
  v3 = *v1;
  if (!*v1)
  {
    v4 = 0;
    return MEMORY[0x1D3892850](v4);
  }

  if (v3 == 1)
  {
    v4 = 1;
    return MEMORY[0x1D3892850](v4);
  }

  if (v3 == 2)
  {
    v4 = 2;
    return MEMORY[0x1D3892850](v4);
  }

  MEMORY[0x1D3892850](3);

  return sub_1D176D4E8(a1, v3);
}

uint64_t sub_1D1AD8A08(uint64_t a1)
{
  v2 = *v1;
  sub_1D1E6920C();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      if (v2 != 2)
      {
        MEMORY[0x1D3892850](3);
        sub_1D176D4E8(v5, v2);
        return sub_1D1E6926C();
      }

      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1D3892850](v3);
  return sub_1D1E6926C();
}

uint64_t HomeState.Stream.set(homeStateSubscriptionSpecification:)(void (***a1)(char *, uint64_t))
{
  v2 = v1;
  v240 = sub_1D1E66A7C();
  v236 = *(v240 - 8);
  v4 = MEMORY[0x1EEE9AC00](v240);
  v6 = &v214 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v214 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v214 - v11);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v234 = &v214 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v214 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v214 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v214 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v225 = (&v214 - v25);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v237 = &v214 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v239 = &v214 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v238 = (&v214 - v31);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v235 = &v214 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v214 - v34;
  v36 = *a1;
  swift_beginAccess();
  v37 = *(v2 + 40);
  if (v37)
  {
    if (v37 == 1)
    {
      if (v36 == 1)
      {
        sub_1D1A82B60(1uLL);
        v38 = 1;
        return sub_1D1A82B60(v38);
      }
    }

    else if (v37 == 2)
    {
      if (v36 == 2)
      {
        sub_1D1A82B60(2uLL);
        v38 = 2;
        return sub_1D1A82B60(v38);
      }
    }

    else
    {
      if (v36 >= 3)
      {
        v217 = v9;
        sub_1D1A82B50(v37);
        sub_1D1A82B50(v37);
        sub_1D1A82B50(v36);
        v48 = sub_1D17A6E98(v37, v36);
        sub_1D1A82B60(v37);
        sub_1D1A82B60(v36);
        result = sub_1D1A82B60(v37);
        if (v48)
        {
          return result;
        }

        goto LABEL_13;
      }

      sub_1D1A82B50(*(v2 + 40));
    }
  }

  else if (!v36)
  {
    sub_1D1A82B60(0);
    v38 = 0;
    return sub_1D1A82B60(v38);
  }

  v217 = v9;
  sub_1D1A82B50(v36);
  sub_1D1A82B60(v37);
  sub_1D1A82B60(v36);
LABEL_13:
  if (qword_1EC642328 != -1)
  {
    goto LABEL_178;
  }

LABEL_14:
  v39 = sub_1D1E6709C();
  v40 = __swift_project_value_buffer(v39, qword_1EC64A290);
  sub_1D1A82B50(v36);
  v220 = v40;
  v41 = sub_1D1E6707C();
  v42 = sub_1D1E6831C();
  sub_1D1A82B60(v36);
  v43 = os_log_type_enabled(v41, v42);
  v233 = v12;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v242[0] = v45;
    *v44 = 136315138;
    LODWORD(v232) = v42;
    v231 = v44;
    v230 = v45;
    if (v36)
    {
      if (v36 == 1)
      {
        v46 = 0xEB00000000656D6FLL;
        v47 = 0x48746E6572727563;
      }

      else if (v36 == 2)
      {
        v46 = 0xE800000000000000;
        v47 = 0x73656D6F486C6C61;
      }

      else
      {
        v244 = 0x2873656D6F68;
        v245 = 0xE600000000000000;
        sub_1D1A82B50(v36);
        sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v50 = sub_1D1E6817C();
        MEMORY[0x1D3890F70](v50);

        MEMORY[0x1D3890F70](41, 0xE100000000000000);
        sub_1D1A82B60(v36);
        v47 = v244;
        v46 = v245;
      }
    }

    else
    {
      v46 = 0xE400000000000000;
      v47 = 1701736302;
    }

    v51 = sub_1D1B1312C(v47, v46, v242);

    v52 = v231;
    *(v231 + 4) = v51;
    _os_log_impl(&dword_1D16EC000, v41, v232, "Setting home state subscription specification: %s", v52, 0xCu);
    v53 = v230;
    __swift_destroy_boxed_opaque_existential_1(v230);
    MEMORY[0x1D3893640](v53, -1, -1);
    MEMORY[0x1D3893640](v52, -1, -1);
  }

  v54 = *(v2 + 40);
  *(v2 + 40) = v36;
  sub_1D1A82B50(v36);
  sub_1D1A82B50(v54);
  sub_1D1A82B60(v54);
  if (!*(*(v2 + 32) + 16))
  {
    v38 = v54;
    return sub_1D1A82B60(v38);
  }

  v215 = v23;
  v214 = v6;
  v219 = v20;
  v218 = v17;
  swift_beginAccess();
  v228 = v2;
  v55 = *(v2 + 64);
  v17 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  if (v55)
  {
    v56 = v55;
    v57 = [v56 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    v58 = sub_1D1E67C1C();

    v59 = sub_1D1AD7C00();
    *&v232 = sub_1D1AD7EF4(v58, v59, v54);
    sub_1D1A82B60(v54);
  }

  else
  {
    sub_1D1A82B60(v54);
    *&v232 = MEMORY[0x1E69E7CC0];
  }

  v60 = v235;
  v61 = *(v228 + 64);
  if (v61)
  {
    v62 = v61;
    v63 = [v62 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    v64 = sub_1D1E67C1C();

    v65 = sub_1D1AD7C00();
    v231 = sub_1D1AD7EF4(v64, v65, v36);
  }

  else
  {
    v231 = MEMORY[0x1E69E7CC0];
  }

  v36 = v225;
  v12 = v233;
  v230 = v232 >> 62;
  if (v232 >> 62)
  {
    v23 = sub_1D1E6873C();
  }

  else
  {
    v23 = *((v232 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v66 = MEMORY[0x1E69E7CC0];
  v227 = v23;
  if (v23)
  {
    v242[0] = MEMORY[0x1E69E7CC0];
    sub_1D178CEFC(0, v23 & ~(v23 >> 63), 0);
    if (v23 < 0)
    {
      __break(1u);
LABEL_182:
      __break(1u);
      goto LABEL_183;
    }

    v66 = v242[0];
    v67 = v234;
    if ((v232 & 0xC000000000000001) != 0)
    {
      v68 = 0;
      v17 = v236 + 32;
      do
      {
        MEMORY[0x1D3891EF0](v68, v232);
        v23 = [swift_unknownObjectRetain() uniqueIdentifier];
        sub_1D1E66A5C();
        swift_unknownObjectRelease_n();

        v242[0] = v66;
        v2 = *(v66 + 16);
        v69 = *(v66 + 24);
        if (v2 >= v69 >> 1)
        {
          sub_1D178CEFC((v69 > 1), v2 + 1, 1);
          v66 = v242[0];
        }

        ++v68;
        *(v66 + 16) = v2 + 1;
        (*(v236 + 32))(v66 + ((*(v236 + 80) + 32) & ~*(v236 + 80)) + *(v236 + 72) * v2, v35, v240);
      }

      while (v227 != v68);
    }

    else
    {
      v17 = v232 + 32;
      do
      {
        v70 = *v17;
        v6 = [v70 uniqueIdentifier];
        sub_1D1E66A5C();

        v242[0] = v66;
        v2 = *(v66 + 16);
        v71 = *(v66 + 24);
        if (v2 >= v71 >> 1)
        {
          sub_1D178CEFC((v71 > 1), v2 + 1, 1);
          v66 = v242[0];
        }

        *(v66 + 16) = v2 + 1;
        (*(v236 + 32))(v66 + ((*(v236 + 80) + 32) & ~*(v236 + 80)) + *(v236 + 72) * v2, v67, v240);
        v17 += 8;
        --v23;
      }

      while (v23);
    }

    v36 = v225;
    v12 = v233;
    v60 = v235;
  }

  v234 = sub_1D17841EC(v66);

  v72 = v231 >> 62;
  if (v231 >> 62)
  {
    v35 = sub_1D1E6873C();
  }

  else
  {
    v35 = *((v231 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v73 = MEMORY[0x1E69E7CC0];
  v226 = v35;
  v216 = v72;
  if (v35)
  {
    v242[0] = MEMORY[0x1E69E7CC0];
    sub_1D178CEFC(0, v35 & ~(v35 >> 63), 0);
    if (v35 < 0)
    {
      goto LABEL_182;
    }

    v74 = v242[0];
    if ((v231 & 0xC000000000000001) != 0)
    {
      v35 = 0;
      v17 = v236 + 32;
      do
      {
        MEMORY[0x1D3891EF0](v35, v231);
        v23 = [swift_unknownObjectRetain() uniqueIdentifier];
        sub_1D1E66A5C();
        swift_unknownObjectRelease_n();

        v242[0] = v74;
        v76 = *(v74 + 16);
        v75 = *(v74 + 24);
        v12 = (v76 + 1);
        if (v76 >= v75 >> 1)
        {
          sub_1D178CEFC((v75 > 1), v76 + 1, 1);
          v74 = v242[0];
        }

        ++v35;
        *(v74 + 16) = v12;
        (*(v236 + 32))(v74 + ((*(v236 + 80) + 32) & ~*(v236 + 80)) + *(v236 + 72) * v76, v60, v240);
      }

      while (v226 != v35);
    }

    else
    {
      v17 = v231 + 32;
      do
      {
        v77 = *v17;
        v6 = [v77 uniqueIdentifier];
        sub_1D1E66A5C();

        v242[0] = v74;
        v79 = *(v74 + 16);
        v78 = *(v74 + 24);
        v23 = v79 + 1;
        if (v79 >= v78 >> 1)
        {
          sub_1D178CEFC((v78 > 1), v79 + 1, 1);
          v74 = v242[0];
        }

        *(v74 + 16) = v23;
        (*(v236 + 32))(v74 + ((*(v236 + 80) + 32) & ~*(v236 + 80)) + *(v236 + 72) * v79, v12, v240);
        v17 += 8;
        --v35;
      }

      while (v35);
    }

    v73 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v74 = MEMORY[0x1E69E7CC0];
  }

  v20 = sub_1D17841EC(v74);

  v80 = v234;
  if (sub_1D17A6E98(v234, v20))
  {
  }

  v242[0] = v73;
  if (v230)
  {
    v2 = sub_1D1E6873C();
    if (!v2)
    {
LABEL_87:
      v6 = v73;
      goto LABEL_88;
    }
  }

  else
  {
    v2 = *((v232 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_87;
    }
  }

  v81 = 0;
  v224 = v232 & 0xC000000000000001;
  v223 = v232 & 0xFFFFFFFFFFFFFF8;
  v221 = v232 + 32;
  v235 = (v20 + 56);
  v233 = (v236 + 16);
  v17 = v236 + 8;
  v222 = v2;
  while (!v224)
  {
    if (v81 >= *(v223 + 16))
    {
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      swift_once();
      goto LABEL_14;
    }

    v82 = *(v221 + 8 * v81);
    v83 = __OFADD__(v81, 1);
    v84 = (v81 + 1);
    if (v83)
    {
      goto LABEL_84;
    }

LABEL_75:
    v230 = v84;
    v229 = v82;
    v85 = [v82 uniqueIdentifier];
    sub_1D1E66A5C();

    if (*(v20 + 16) && (sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v86 = sub_1D1E676DC(), v87 = -1 << *(v20 + 32), v6 = v86 & ~v87, ((*&v235[(v6 >> 3) & 0xFFFFFFFFFFFFFF8] >> v6) & 1) != 0))
    {
      v35 = ~v87;
      v12 = *(v236 + 72);
      v88 = *(v236 + 16);
      while (1)
      {
        v89 = v20;
        v23 = v239;
        v90 = v240;
        v88(v239, *(v20 + 48) + v12 * v6, v240);
        sub_1D1AE3140(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v91 = sub_1D1E6775C();
        v92 = *v17;
        (*v17)(v23, v90);
        if (v91)
        {
          break;
        }

        v6 = (v6 + 1) & v35;
        v20 = v89;
        if (((*&v235[(v6 >> 3) & 0xFFFFFFFFFFFFFF8] >> v6) & 1) == 0)
        {
          goto LABEL_70;
        }
      }

      v92(v238, v240);
      v20 = v89;
    }

    else
    {
LABEL_70:
      (*v17)(v238, v240);
      sub_1D1E6896C();
      v6 = *(v242[0] + 16);
      sub_1D1E689AC();
      sub_1D1E689BC();
      sub_1D1E6897C();
    }

    v2 = v222;
    v81 = v230;
    v36 = v225;
    if (v230 == v222)
    {
      goto LABEL_85;
    }
  }

  v82 = MEMORY[0x1D3891EF0](v81, v232);
  v83 = __OFADD__(v81, 1);
  v84 = (v81 + 1);
  if (!v83)
  {
    goto LABEL_75;
  }

LABEL_84:
  __break(1u);
LABEL_85:
  v6 = v242[0];
  v80 = v234;
  v73 = MEMORY[0x1E69E7CC0];
LABEL_88:

  v242[0] = v73;
  if (v216)
  {
    v93 = sub_1D1E6873C();
  }

  else
  {
    v93 = *((v231 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = MEMORY[0x1E69E7CC0];
  v230 = v6;
  if (!v93)
  {
    goto LABEL_109;
  }

  v23 = 0;
  v229 = (v231 & 0xC000000000000001);
  v224 = v231 & 0xFFFFFFFFFFFFFF8;
  v222 = (v231 + 32);
  v238 = (v80 + 56);
  v235 = (v236 + 16);
  v36 = (v236 + 8);
  v223 = v93;
  while (2)
  {
    if (v229)
    {
      v94 = MEMORY[0x1D3891EF0](v23, v231);
      v83 = __OFADD__(v23++, 1);
      if (v83)
      {
        break;
      }

      goto LABEL_98;
    }

    if (v23 >= *(v224 + 16))
    {
      goto LABEL_177;
    }

    v94 = v222[v23];
    v83 = __OFADD__(v23++, 1);
    if (!v83)
    {
LABEL_98:
      v233 = v94;
      v95 = [v94 uniqueIdentifier];
      sub_1D1E66A5C();

      if (*(v80 + 16) && (sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v96 = sub_1D1E676DC(), v97 = -1 << *(v80 + 32), v98 = v96 & ~v97, ((*(&v238->isa + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98) & 1) != 0))
      {
        v17 = ~v97;
        v35 = *(v236 + 72);
        v2 = *(v236 + 16);
        while (1)
        {
          v99 = *(v80 + 48) + v35 * v98;
          v100 = v239;
          v101 = v240;
          (v2)(v239, v99, v240);
          sub_1D1AE3140(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          v20 = sub_1D1E6775C();
          v12 = *v36;
          (*v36)(v100, v101);
          if (v20)
          {
            break;
          }

          v98 = (v98 + 1) & v17;
          v80 = v234;
          if (((*(&v238->isa + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98) & 1) == 0)
          {
            goto LABEL_93;
          }
        }

        v12(v237, v240);
        v80 = v234;
      }

      else
      {
LABEL_93:
        (*v36)(v237, v240);
        sub_1D1E6896C();
        sub_1D1E689AC();
        sub_1D1E689BC();
        sub_1D1E6897C();
      }

      v6 = v230;
      if (v23 == v223)
      {
        goto LABEL_108;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_108:
  v2 = v242[0];
  v36 = v225;
LABEL_109:

  v102 = sub_1D1E6707C();
  v103 = sub_1D1E6835C();

  v104 = os_log_type_enabled(v102, v103);
  v237 = v2;
  if (!v104)
  {

    v112 = (v6 & 0x4000000000000000);
    goto LABEL_165;
  }

  LODWORD(v235) = v103;
  v23 = swift_slowAlloc();
  v105 = swift_slowAlloc();
  v242[0] = v105;
  *v23 = 136315906;
  v106 = v227;
  v238 = v102;
  v234 = v105;
  if (!v227)
  {

    v107 = MEMORY[0x1E69E7CC0];
    goto LABEL_125;
  }

  v241 = MEMORY[0x1E69E7CC0];
  result = sub_1D178CEFC(0, v227 & ~(v227 >> 63), 0);
  if (v106 < 0)
  {
    __break(1u);
  }

  else
  {
    v107 = v241;
    if ((v232 & 0xC000000000000001) != 0)
    {
      v108 = 0;
      do
      {
        MEMORY[0x1D3891EF0](v108, v232);
        v109 = [swift_unknownObjectRetain() uniqueIdentifier];
        sub_1D1E66A5C();
        swift_unknownObjectRelease_n();

        v241 = v107;
        v111 = *(v107 + 16);
        v110 = *(v107 + 24);
        if (v111 >= v110 >> 1)
        {
          sub_1D178CEFC((v110 > 1), v111 + 1, 1);
          v107 = v241;
        }

        ++v108;
        *(v107 + 16) = v111 + 1;
        (*(v236 + 32))(v107 + ((*(v236 + 80) + 32) & ~*(v236 + 80)) + *(v236 + 72) * v111, v36, v240);
      }

      while (v227 != v108);
    }

    else
    {
      v113 = 32;
      v114 = v217;
      do
      {
        v115 = *(v232 + v113);
        v116 = [v115 uniqueIdentifier];
        sub_1D1E66A5C();

        v241 = v107;
        v118 = *(v107 + 16);
        v117 = *(v107 + 24);
        if (v118 >= v117 >> 1)
        {
          sub_1D178CEFC((v117 > 1), v118 + 1, 1);
          v107 = v241;
        }

        *(v107 + 16) = v118 + 1;
        (*(v236 + 32))(v107 + ((*(v236 + 80) + 32) & ~*(v236 + 80)) + *(v236 + 72) * v118, v114, v240);
        v113 += 8;
        --v106;
      }

      while (v106);
    }

    v2 = v237;
LABEL_125:
    v119 = MEMORY[0x1D3891260](v107, v240);
    v121 = v120;

    v122 = sub_1D1B1312C(v119, v121, v242);

    *(v23 + 4) = v122;
    *(v23 + 12) = 2080;
    v123 = v226;
    if (!v226)
    {

      v124 = MEMORY[0x1E69E7CC0];
      goto LABEL_139;
    }

    v241 = MEMORY[0x1E69E7CC0];
    result = sub_1D178CEFC(0, v226 & ~(v226 >> 63), 0);
    if ((v123 & 0x8000000000000000) == 0)
    {
      v124 = v241;
      if ((v231 & 0xC000000000000001) != 0)
      {
        v125 = 0;
        v126 = v215;
        do
        {
          MEMORY[0x1D3891EF0](v125, v231);
          v127 = [swift_unknownObjectRetain() uniqueIdentifier];
          sub_1D1E66A5C();
          swift_unknownObjectRelease_n();

          v241 = v124;
          v129 = *(v124 + 16);
          v128 = *(v124 + 24);
          if (v129 >= v128 >> 1)
          {
            sub_1D178CEFC((v128 > 1), v129 + 1, 1);
            v124 = v241;
          }

          ++v125;
          *(v124 + 16) = v129 + 1;
          (*(v236 + 32))(v124 + ((*(v236 + 80) + 32) & ~*(v236 + 80)) + *(v236 + 72) * v129, v126, v240);
        }

        while (v226 != v125);
      }

      else
      {
        v130 = 32;
        v131 = v214;
        do
        {
          v132 = *(v231 + v130);
          v133 = [v132 uniqueIdentifier];
          sub_1D1E66A5C();

          v241 = v124;
          v135 = *(v124 + 16);
          v134 = *(v124 + 24);
          if (v135 >= v134 >> 1)
          {
            sub_1D178CEFC((v134 > 1), v135 + 1, 1);
            v124 = v241;
          }

          *(v124 + 16) = v135 + 1;
          (*(v236 + 32))(v124 + ((*(v236 + 80) + 32) & ~*(v236 + 80)) + *(v236 + 72) * v135, v131, v240);
          v130 += 8;
          --v123;
        }

        while (v123);
      }

      v2 = v237;
LABEL_139:
      v136 = MEMORY[0x1D3891260](v124, v240);
      v138 = v137;

      v139 = sub_1D1B1312C(v136, v138, v242);

      *(v23 + 14) = v139;
      *(v23 + 22) = 2080;
      v112 = v230;
      v233 = (v230 & 0x4000000000000000);
      if ((v230 & 0x8000000000000000) != 0 || (v230 & 0x4000000000000000) != 0)
      {
        goto LABEL_209;
      }

      v140 = *(v230 + 16);
      while (2)
      {
        v141 = MEMORY[0x1E69E7CC0];
        if (v140)
        {
          v142 = v112;
          v241 = MEMORY[0x1E69E7CC0];
          result = sub_1D178CEFC(0, v140 & ~(v140 >> 63), 0);
          if (v140 < 0)
          {
            goto LABEL_213;
          }

          v143 = 0;
          v141 = v241;
          v144 = v142;
          v145 = v142 & 0xC000000000000001;
          v146 = v219;
          do
          {
            if (v145)
            {
              v147 = MEMORY[0x1D3891EF0](v143, v144);
            }

            else
            {
              v147 = *(v144 + 8 * v143 + 32);
            }

            v148 = v147;
            v149 = [v148 uniqueIdentifier];
            sub_1D1E66A5C();

            v241 = v141;
            v151 = *(v141 + 16);
            v150 = *(v141 + 24);
            if (v151 >= v150 >> 1)
            {
              sub_1D178CEFC((v150 > 1), v151 + 1, 1);
              v141 = v241;
            }

            ++v143;
            *(v141 + 16) = v151 + 1;
            (*(v236 + 32))(v141 + ((*(v236 + 80) + 32) & ~*(v236 + 80)) + *(v236 + 72) * v151, v146, v240);
            v144 = v230;
          }

          while (v140 != v143);
          v2 = v237;
        }

        v152 = MEMORY[0x1D3891260](v141, v240);
        v154 = v153;

        v155 = sub_1D1B1312C(v152, v154, v242);

        *(v23 + 24) = v155;
        *(v23 + 32) = 2080;
        if ((v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
        {
          v156 = sub_1D1E6873C();
        }

        else
        {
          v156 = *(v2 + 16);
        }

        v157 = MEMORY[0x1E69E7CC0];
        if (v156)
        {
          v241 = MEMORY[0x1E69E7CC0];
          result = sub_1D178CEFC(0, v156 & ~(v156 >> 63), 0);
          if (v156 < 0)
          {
            goto LABEL_214;
          }

          v158 = 0;
          v157 = v241;
          v159 = v2 & 0xC000000000000001;
          v160 = v218;
          do
          {
            if (v159)
            {
              v161 = MEMORY[0x1D3891EF0](v158, v237);
            }

            else
            {
              v161 = *(v237 + 8 * v158 + 32);
            }

            v162 = v161;
            v163 = [v162 uniqueIdentifier];
            sub_1D1E66A5C();

            v241 = v157;
            v2 = *(v157 + 16);
            v164 = *(v157 + 24);
            if (v2 >= v164 >> 1)
            {
              sub_1D178CEFC((v164 > 1), v2 + 1, 1);
              v157 = v241;
            }

            ++v158;
            *(v157 + 16) = v2 + 1;
            (*(v236 + 32))(v157 + ((*(v236 + 80) + 32) & ~*(v236 + 80)) + *(v236 + 72) * v2, v160, v240);
          }

          while (v156 != v158);
        }

        v165 = MEMORY[0x1D3891260](v157, v240);
        v167 = v166;

        v168 = sub_1D1B1312C(v165, v167, v242);

        *(v23 + 34) = v168;
        v169 = v238;
        _os_log_impl(&dword_1D16EC000, v238, v235, "Changing subscribed homes from %s to %s.\nRemoving %s and adding %s", v23, 0x2Au);
        v170 = v234;
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v170, -1, -1);
        MEMORY[0x1D3893640](v23, -1, -1);

        v6 = v230;
        v112 = v233;
LABEL_165:
        if ((v6 & 0x8000000000000000) != 0 || v112)
        {
LABEL_183:
          v171 = sub_1D1E6873C();
          if (!v171)
          {
            goto LABEL_184;
          }

LABEL_168:
          if (v171 >= 1)
          {
            v172 = 0;
            v23 = *(v228 + 128);
            do
            {
              if ((v6 & 0xC000000000000001) != 0)
              {
                v173 = MEMORY[0x1D3891EF0](v172, v6);
              }

              else
              {
                v173 = *(v6 + 8 * v172 + 32);
              }

              v174 = v173;
              v175 = v228;
              os_unfair_lock_lock((v228 + 16));
              v176 = *(v175 + 22);
              os_unfair_lock_unlock((v175 + 16));
              if (v176 == 1)
              {
                sub_1D1ADC8E4(v174, "unregisterForAllRelevantAccessories() called on %s (%{public}s)", 0);
                HMHome.homeDelegate.setter(0, 0);
              }

              ++v172;
              sub_1D1AB1A6C(v174);
            }

            while (v171 != v172);
            goto LABEL_184;
          }

          __break(1u);
        }

        else
        {
          v171 = *(v6 + 16);
          if (v171)
          {
            goto LABEL_168;
          }

LABEL_184:

          v178 = v237;
          if ((v237 & 0x8000000000000000) != 0 || (v237 & 0x4000000000000000) != 0)
          {
            v179 = sub_1D1E6873C();
          }

          else
          {
            v179 = *(v237 + 16);
          }

          v112 = &v246;
          v2 = v228;
          if (!v179)
          {
          }

          if (v179 >= 1)
          {
            v180 = 0;
            v181 = v178 & 0xC000000000000001;
            v233 = (v236 + 8);
            *&v177 = 136315394;
            v232 = v177;
            v236 = v178 & 0xC000000000000001;
            v234 = v179;
            while (1)
            {
              if (v181)
              {
                v182 = MEMORY[0x1D3891EF0](v180, v178);
              }

              else
              {
                v182 = *(v178 + 8 * v180 + 32);
              }

              v183 = v182;
              os_unfair_lock_lock((v2 + 16));
              v184 = *(v2 + 22);
              os_unfair_lock_unlock((v2 + 16));
              if (v184 != 1)
              {
                goto LABEL_203;
              }

              v185 = v183;
              v186 = sub_1D1E6707C();
              v187 = sub_1D1E6835C();

              v188 = os_log_type_enabled(v186, v187);
              v238 = v183;
              if (v188)
              {
                v189 = swift_slowAlloc();
                v235 = swift_slowAlloc();
                v242[0] = v235;
                *v189 = v232;
                v190 = [v185 name];
                v191 = sub_1D1E6781C();
                v193 = v192;

                v194 = sub_1D1B1312C(v191, v193, v242);

                *(v189 + 4) = v194;
                *(v189 + 12) = 2082;
                v195 = [v185 uniqueIdentifier];
                v196 = v239;
                sub_1D1E66A5C();

                sub_1D1AE3140(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
                v197 = v240;
                v198 = sub_1D1E68FAC();
                v200 = v199;
                v201 = v196;
                v179 = v234;
                v202 = v197;
                v178 = v237;
                (*v233)(v201, v202);
                v203 = sub_1D1B1312C(v198, v200, v242);

                *(v189 + 14) = v203;
                _os_log_impl(&dword_1D16EC000, v186, v187, "registerForAllRelevantAccessories() called on %s (%{public}s)", v189, 0x16u);
                v204 = v235;
                swift_arrayDestroy();
                MEMORY[0x1D3893640](v204, -1, -1);
                MEMORY[0x1D3893640](v189, -1, -1);
              }

              sub_1D1ADCBE0(v185, 1);
              v205 = sub_1D1A830C0(&qword_1EC649E80, &unk_1D1E96434);

              if (![v185 delegate])
              {
                goto LABEL_201;
              }

              _s15DelegateAdapterCMa_1();
              v206 = swift_dynamicCastClass();
              if (!v206)
              {
                break;
              }

              *(v206 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate + 8) = v205;
              swift_unknownObjectWeakAssign();
              swift_unknownObjectRelease();
LABEL_202:

              v181 = v236;
              v183 = v238;
LABEL_203:
              if ((*(v2 + 48) & 2) != 0)
              {
                sub_1D1AB1598(v183);
              }

              ++v180;

              if (v179 == v180)
              {
              }
            }

            swift_unknownObjectRelease();
LABEL_201:
            v207 = _s15DelegateAdapterCMa_1();
            v208 = objc_allocWithZone(v207);
            *&v208[OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate + 8] = 0;
            *(swift_unknownObjectWeakInit() + 8) = v205;
            swift_unknownObjectWeakAssign();
            v243.receiver = v208;
            v243.super_class = v207;
            v209 = objc_msgSendSuper2(&v243, sel_init);
            swift_beginAccess();
            v210 = v209;
            objc_setAssociatedObject(v185, &unk_1EC649750, v210, 1);
            swift_endAccess();

            v211 = v210;
            [v185 setDelegate:v211];

            goto LABEL_202;
          }
        }

        __break(1u);
LABEL_209:
        v212 = v112;
        v213 = sub_1D1E6873C();
        v112 = v212;
        v140 = v213;
        continue;
      }
    }
  }

  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
  return result;
}

void HomeState.Stream.add(stateSubscriptionEnabledReason:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HomeState.Stream.StateSubscription.Reason(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v25 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = v25 - v11;
  swift_beginAccess();
  v13 = *(v1 + 32);

  v14 = sub_1D171A1C8(a1, v13);

  if ((v14 & 1) == 0)
  {
    sub_1D1AE37A8(a1, v10, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    swift_beginAccess();
    sub_1D1768638(v12, v10);
    swift_endAccess();
    sub_1D1AE3810(v12, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v15 = sub_1D1E6709C();
    __swift_project_value_buffer(v15, qword_1EC64A290);
    sub_1D1AE37A8(a1, v7, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    swift_retain_n();
    v16 = sub_1D1E6707C();
    v17 = sub_1D1E6831C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25[0] = v19;
      *v18 = 136315394;
      v20 = HomeState.Stream.StateSubscription.Reason.description.getter();
      v22 = v21;
      sub_1D1AE3810(v7, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
      v23 = sub_1D1B1312C(v20, v22, v25);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2048;
      v24 = *(*(v2 + 32) + 16);

      *(v18 + 14) = v24;

      _os_log_impl(&dword_1D16EC000, v16, v17, "Adding reason to enable subscriptions: %s, resulting in %ld subscriptions", v18, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1D3893640](v19, -1, -1);
      MEMORY[0x1D3893640](v18, -1, -1);
    }

    else
    {

      sub_1D1AE3810(v7, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    }

    sub_1D1ADAE50();
  }
}

void sub_1D1ADAE50()
{
  swift_beginAccess();
  if (*(*(v0 + 32) + 16))
  {
    if ((*(v0 + 56) & 1) == 0)
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
        v5 = swift_slowAlloc();
        v14 = v5;
        *v4 = 136315138;
        type metadata accessor for HomeState.Stream.StateSubscription.Reason(0);
        sub_1D1AE3140(&qword_1EC64A998, type metadata accessor for HomeState.Stream.StateSubscription.Reason, &protocol conformance descriptor for HomeState.Stream.StateSubscription.Reason);

        v6 = sub_1D1E6817C();
        v8 = v7;

        v9 = sub_1D1B1312C(v6, v8, &v14);

        *(v4 + 4) = v9;
        _os_log_impl(&dword_1D16EC000, v2, v3, "Subscribing for state for reasons: %s", v4, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v5);
        MEMORY[0x1D3893640](v5, -1, -1);
        MEMORY[0x1D3893640](v4, -1, -1);
      }

      sub_1D1ADB844();
      sub_1D1ADC2BC();
    }
  }

  else if (*(v0 + 56))
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
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D16EC000, v11, v12, "Unsubscribing for state because reasons are empty", v13, 2u);
      MEMORY[0x1D3893640](v13, -1, -1);
    }

    sub_1D1ADC718();
  }
}

void HomeState.Stream.remove(stateSubscriptionEnabledReason:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HomeState.Stream.StateSubscription.Reason(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A950, &qword_1D1E96F10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v22 - v8;
  swift_beginAccess();
  v10 = *(v1 + 32);

  v11 = sub_1D171A1C8(a1, v10);

  if (v11)
  {
    swift_beginAccess();
    sub_1D1AE0A10(a1, v9);
    swift_endAccess();
    sub_1D1741A30(v9, &qword_1EC64A950, &qword_1D1E96F10);
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v12 = sub_1D1E6709C();
    __swift_project_value_buffer(v12, qword_1EC64A290);
    sub_1D1AE37A8(a1, v6, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    swift_retain_n();
    v13 = sub_1D1E6707C();
    v14 = sub_1D1E6831C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22[0] = v16;
      *v15 = 136315394;
      v17 = HomeState.Stream.StateSubscription.Reason.description.getter();
      v19 = v18;
      sub_1D1AE3810(v6, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
      v20 = sub_1D1B1312C(v17, v19, v22);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2048;
      v21 = *(*(v2 + 32) + 16);

      *(v15 + 14) = v21;

      _os_log_impl(&dword_1D16EC000, v13, v14, "Removing reason to enable subscriptions: %s, resulting in %ld subscriptions", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1D3893640](v16, -1, -1);
      MEMORY[0x1D3893640](v15, -1, -1);
    }

    else
    {

      sub_1D1AE3810(v6, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    }

    sub_1D1ADAE50();
  }
}

Swift::Void __swiftcall HomeState.Stream.clearStateSubscriptionReasons()()
{
  swift_beginAccess();
  *(v0 + 32) = MEMORY[0x1E69E7CD0];

  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EC64A290);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6831C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D16EC000, v2, v3, "Clearing reasons to enable subscription", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  sub_1D1ADAE50();
}

void HomeState.Stream.takeActiveAssertion(reason:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 64);
  if (v7)
  {
    v8 = qword_1EE07A070;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D1E6709C();
    __swift_project_value_buffer(v10, qword_1EE081480);

    v11 = sub_1D1E6707C();
    v12 = sub_1D1E6835C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1D1B1312C(a1, a2, &v17);
      _os_log_impl(&dword_1D16EC000, v11, v12, "Taking assertion for reason %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1D3893640](v14, -1, -1);
      MEMORY[0x1D3893640](v13, -1, -1);
    }

    v15 = sub_1D1E677EC();
    v16 = [v9 _beginActiveAssertionWithReason_];

    *a3 = v16;
  }

  else
  {
    sub_1D1E67D8C();
    sub_1D1AE3140(&qword_1EC6486C8, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    sub_1D1E6759C();
    swift_willThrow();
  }
}

uint64_t HomeState.Stream.releaseAssertion(_:)(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 64);
  if (v3)
  {
    v4 = v3;
    sub_1D1AE3188(v2);

    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1D1E67D8C();
    sub_1D1AE3140(&qword_1EC6486C8, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    sub_1D1E6759C();
    return swift_willThrow();
  }
}

uint64_t sub_1D1ADB844()
{
  v1 = v0;
  v89 = sub_1D1E66A7C();
  v2 = *(v89 - 8);
  v3 = MEMORY[0x1EEE9AC00](v89);
  v5 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v84 = &v80 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v80 - v8);
  swift_beginAccess();
  v10 = *(v0 + 40);
  swift_beginAccess();
  v11 = *(v0 + 64);
  sub_1D1A82B50(v10);
  if (v11)
  {
    v12 = v11;
    v13 = [v12 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    v14 = sub_1D1E67C1C();

    v15 = sub_1D1AD7C00();
    v16 = sub_1D1AD7EF4(v14, v15, v10);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v17 = sub_1D1E6709C();
  v18 = __swift_project_value_buffer(v17, qword_1EC64A290);
  sub_1D1A82B50(v10);

  v88 = v18;
  v19 = sub_1D1E6707C();
  v20 = sub_1D1E6835C();

  sub_1D1A82B60(v10);
  v21 = os_log_type_enabled(v19, v20);
  v22 = &qword_1D1E6F000;
  v23 = v16 >> 62;
  v85 = v1;
  if (!v21)
  {

    sub_1D1A82B60(v10);
    goto LABEL_31;
  }

  v87 = v10;
  v24 = swift_slowAlloc();
  *&v80 = swift_slowAlloc();
  v90 = v80;
  v81 = v24;
  *v24 = 136315394;
  LODWORD(v83) = v20;
  if (v23)
  {
    goto LABEL_53;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D1E6873C())
  {
    v26 = MEMORY[0x1E69E7CC0];
    v86 = v19;
    v82 = v23;
    if (i)
    {
      break;
    }

LABEL_23:
    v38 = MEMORY[0x1D3891260](v26, v89);
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v90);

    v5 = v81;
    *(v81 + 4) = v41;
    *(v5 + 6) = 2080;
    v42 = v87;
    if (v87)
    {
      v22 = &qword_1D1E6F000;
      if (v87 == 1)
      {
        v43 = 0xEB00000000656D6FLL;
        v44 = 0x48746E6572727563;
      }

      else if (v87 == 2)
      {
        v43 = 0xE800000000000000;
        v44 = 0x73656D6F486C6C61;
      }

      else
      {
        v91 = 0x2873656D6F68;
        v92 = 0xE600000000000000;
        sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v45 = sub_1D1E6817C();
        MEMORY[0x1D3890F70](v45);

        MEMORY[0x1D3890F70](41, 0xE100000000000000);
        sub_1D1A82B60(v42);
        v44 = v91;
        v43 = v92;
      }
    }

    else
    {
      v43 = 0xE400000000000000;
      v44 = 1701736302;
      v22 = &qword_1D1E6F000;
    }

    v46 = sub_1D1B1312C(v44, v43, &v90);

    *(v5 + 14) = v46;
    v47 = v86;
    _os_log_impl(&dword_1D16EC000, v86, v83, "Subscribing for state in homes %s for specification %s", v5, 0x16u);
    v48 = v80;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v48, -1, -1);
    MEMORY[0x1D3893640](v5, -1, -1);

    v23 = v82;
LABEL_31:
    if (v23)
    {
      v19 = sub_1D1E6873C();
      if (!v19)
      {
LABEL_51:

        *(v1 + 56) = 1;
        return result;
      }
    }

    else
    {
      v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
        goto LABEL_51;
      }
    }

    if (v19 >= 1)
    {
      v49 = 0;
      v81 = (v2 + 8);
      v50 = v16 & 0xC000000000000001;
      *&v32 = *v22;
      v80 = v32;
      v82 = v16 & 0xC000000000000001;
      v83 = v16;
      v87 = v19;
      while (2)
      {
        if (v50)
        {
          v51 = MEMORY[0x1D3891EF0](v49, v16);
        }

        else
        {
          v51 = *(v16 + 8 * v49 + 32);
        }

        v52 = v51;
        os_unfair_lock_lock((v1 + 16));
        v53 = *(v1 + 22);
        os_unfair_lock_unlock((v1 + 16));
        if (v53 != 1)
        {
          goto LABEL_48;
        }

        v54 = v52;
        v55 = sub_1D1E6707C();
        v56 = sub_1D1E6835C();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v91 = v86;
          *v57 = v80;
          v58 = [v54 name];
          v59 = sub_1D1E6781C();
          v61 = v60;

          v62 = sub_1D1B1312C(v59, v61, &v91);

          *(v57 + 4) = v62;
          *(v57 + 12) = 2082;
          v63 = [v54 uniqueIdentifier];
          v64 = v84;
          sub_1D1E66A5C();

          sub_1D1AE3140(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v65 = v89;
          v66 = sub_1D1E68FAC();
          v68 = v67;
          v69 = v65;
          v16 = v83;
          (*v81)(v64, v69);
          v70 = sub_1D1B1312C(v66, v68, &v91);

          *(v57 + 14) = v70;
          _os_log_impl(&dword_1D16EC000, v55, v56, "registerForAllRelevantAccessories() called on %s (%{public}s)", v57, 0x16u);
          v71 = v86;
          swift_arrayDestroy();
          v1 = v85;
          MEMORY[0x1D3893640](v71, -1, -1);
          v72 = v57;
          v50 = v82;
          MEMORY[0x1D3893640](v72, -1, -1);
        }

        sub_1D1ADCBE0(v54, 1);
        v73 = sub_1D1A830C0(&qword_1EC649E80, &unk_1D1E96434);

        if ([v54 delegate])
        {
          _s15DelegateAdapterCMa_1();
          v74 = swift_dynamicCastClass();
          if (v74)
          {
            *(v74 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate + 8) = v73;
            swift_unknownObjectWeakAssign();
            swift_unknownObjectRelease();
            goto LABEL_47;
          }

          swift_unknownObjectRelease();
        }

        v75 = _s15DelegateAdapterCMa_1();
        v76 = objc_allocWithZone(v75);
        *&v76[OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate + 8] = 0;
        *(swift_unknownObjectWeakInit() + 8) = v73;
        swift_unknownObjectWeakAssign();
        v93.receiver = v76;
        v93.super_class = v75;
        v77 = objc_msgSendSuper2(&v93, sel_init);
        swift_beginAccess();
        v78 = v77;
        objc_setAssociatedObject(v54, &unk_1EC649750, v78, 1);
        swift_endAccess();

        v79 = v78;
        [v54 setDelegate_];

LABEL_47:

        v19 = v87;
LABEL_48:
        if ((*(v1 + 48) & 2) != 0)
        {
          sub_1D1AB1598(v52);
        }

        ++v49;

        if (v19 == v49)
        {
          goto LABEL_51;
        }

        continue;
      }
    }

    __break(1u);
LABEL_53:
    ;
  }

  v91 = MEMORY[0x1E69E7CC0];
  result = sub_1D178CEFC(0, i & ~(i >> 63), 0);
  if ((i & 0x8000000000000000) == 0)
  {
    v26 = v91;
    if ((v16 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != i; ++j)
      {
        MEMORY[0x1D3891EF0](j, v16);
        v29 = [swift_unknownObjectRetain() uniqueIdentifier];
        sub_1D1E66A5C();
        swift_unknownObjectRelease_n();

        v91 = v26;
        v31 = *(v26 + 16);
        v30 = *(v26 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1D178CEFC((v30 > 1), v31 + 1, 1);
          v26 = v91;
        }

        *(v26 + 16) = v31 + 1;
        (*(v2 + 32))(v26 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v31, v9, v89);
      }
    }

    else
    {
      v33 = (v16 + 32);
      v9 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
      do
      {
        v34 = *v33;
        v35 = [v34 uniqueIdentifier];
        sub_1D1E66A5C();

        v91 = v26;
        v37 = *(v26 + 16);
        v36 = *(v26 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_1D178CEFC((v36 > 1), v37 + 1, 1);
          v26 = v91;
        }

        *(v26 + 16) = v37 + 1;
        (*(v2 + 32))(v26 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v37, v5, v89);
        ++v33;
        --i;
      }

      while (i);
    }

    v1 = v85;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

void sub_1D1ADC2BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643318, &qword_1D1E71770);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v32 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DE0, &unk_1D1E96BD0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - v6;
  if (qword_1EE07AE38 != -1)
  {
    swift_once();
  }

  if (qword_1EE07AE40 != 4)
  {
    swift_beginAccess();
    if ((*(v0 + 48) & 2) != 0)
    {
      v33 = v4;
      v8 = *(v0 + 40);
      swift_beginAccess();
      v9 = v0;
      v10 = *(v0 + 64);
      if (v10)
      {
        sub_1D1A82B50(v8);
        v11 = v10;
        v12 = [v11 homes];
        sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
        v13 = sub_1D1E67C1C();

        v14 = sub_1D1AD7C00();
        v15 = sub_1D1AD7EF4(v13, v14, v8);
        sub_1D1A82B60(v8);

        if (!(v15 >> 62))
        {
          goto LABEL_7;
        }
      }

      else
      {
        v15 = MEMORY[0x1E69E7CC0];
        if (!(MEMORY[0x1E69E7CC0] >> 62))
        {
LABEL_7:
          v16 = v15;
          v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v17)
          {
LABEL_8:
            if (v17 < 1)
            {
              __break(1u);
              return;
            }

            v18 = *(v9 + 152);
            v35 = v1;
            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = 0;
              v20 = (v5 + 8);
              v21 = v16;
              v34 = v18;
              v22 = v33;
              do
              {
                v23 = MEMORY[0x1D3891EF0](v19++, v21);
                v24 = *(v35 + 44);
                v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
                (*(*(v25 - 8) + 56))(&v3[v24], 1, 1, v25);
                *v3 = v23;
                *(v3 + 1) = 0;
                v3[16] = 0;
                swift_unknownObjectRetain();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF0, &qword_1D1E7C018);
                sub_1D1E67ECC();
                swift_unknownObjectRelease();
                (*v20)(v7, v22);
              }

              while (v17 != v19);
            }

            else
            {
              v26 = (v5 + 8);
              v27 = 32;
              do
              {
                v28 = *(v16 + v27);
                v29 = *(v35 + 44);
                v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
                (*(*(v30 - 8) + 56))(&v3[v29], 1, 1, v30);
                *v3 = v28;
                *(v3 + 1) = 0;
                v3[16] = 0;
                v31 = v28;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF0, &qword_1D1E7C018);
                sub_1D1E67ECC();

                (*v26)(v7, v33);
                v27 += 8;
                --v17;
              }

              while (v17);
            }
          }

LABEL_18:

          return;
        }
      }

      v16 = v15;
      v17 = sub_1D1E6873C();
      if (v17)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }
}

void sub_1D1ADC718()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 64);
  if (v2)
  {
    v3 = [v2 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    v4 = sub_1D1E67C1C();

    if (!(v4 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_3:
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_14:

      swift_beginAccess();
      *(v1 + 56) = 0;
      return;
    }
  }

  v5 = sub_1D1E6873C();
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D3891EF0](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      os_unfair_lock_lock((v1 + 16));
      v9 = *(v1 + 22);
      os_unfair_lock_unlock((v1 + 16));
      if (v9 == 1)
      {
        sub_1D1ADC8E4(v8, "unregisterForAllRelevantAccessories() called on %s (%{public}s)", 0);
        HMHome.homeDelegate.setter(0, 0);
      }

      sub_1D1AB1A6C(v8);
    }

    goto LABEL_14;
  }

  __break(1u);
}

void sub_1D1ADC8E4(void *a1, const char *a2, char a3)
{
  v6 = v3;
  v8 = sub_1D1E66A7C();
  v34 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC64A290);
  v12 = a1;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6835C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = a2;
    v16 = v15;
    v32 = swift_slowAlloc();
    v35 = v32;
    *v16 = 136315394;
    v17 = [v12 name];
    v18 = sub_1D1E6781C();
    v33 = v6;
    v19 = v18;
    v20 = a3;
    v22 = v21;

    v23 = sub_1D1B1312C(v19, v22, &v35);
    a3 = v20;

    *(v16 + 4) = v23;
    *(v16 + 12) = 2082;
    v24 = [v12 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1AE3140(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v25 = sub_1D1E68FAC();
    v27 = v26;
    (*(v34 + 8))(v10, v8);
    v28 = sub_1D1B1312C(v25, v27, &v35);

    *(v16 + 14) = v28;
    _os_log_impl(&dword_1D16EC000, v13, v14, v31, v16, 0x16u);
    v29 = v32;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v29, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  sub_1D1ADCBE0(v12, a3 & 1);
}

void sub_1D1ADCBE0(unint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v44 - v5;
  if (qword_1EE07AF78 != -1)
  {
    goto LABEL_49;
  }

  while (1)
  {
    os_unfair_lock_lock(&dword_1EE07AF80);
    v7 = byte_1EE07AF84;
    os_unfair_lock_unlock(&dword_1EE07AF80);
    if (v7 == 2 || (v7 & 1) == 0)
    {
      break;
    }

    if (v2)
    {
      v8 = v48;
      swift_beginAccess();
      v47 = (*(v8 + 48) >> 2) & 1;
    }

    else
    {
      v47 = 0;
    }

    v46 = v2;
    v9 = sub_1D1E67E7C();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = qword_1EC642358;

    v11 = a1;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = qword_1EC64ABE8;
    v13 = sub_1D1AE3140(&qword_1EC649DA0, type metadata accessor for HomeDataActor, &protocol conformance descriptor for HomeDataActor);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    v15 = v48;
    *(v14 + 32) = v48;
    *(v14 + 40) = v11;
    *(v14 + 48) = v47;

    sub_1D17C6EF0(0, 0, v6, &unk_1D1E97340, v14);

    swift_beginAccess();
    if (*(v15 + 104))
    {
      sub_1D17419CC(v48 + 80, &v52);
      if (*(&v53 + 1))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v16 = *(v48 + 96);
      v52 = *(v48 + 80);
      v53 = v16;
      v54 = *(v48 + 112);
      if (*(&v16 + 1))
      {
LABEL_11:
        sub_1D16EEE20(&v52, &v55);
        goto LABEL_18;
      }
    }

    v17 = v48;
    swift_beginAccess();
    v18 = *(v17 + 64);
    if (v18)
    {
      v19 = [v18 createAccessorySettingsDataSource];
      v6 = sub_1D1741B10(0, &qword_1EC649B18, 0x1E696CAE0);
      v18 = sub_1D174A5B8(&qword_1EC649B10, &qword_1EC649B18, 0x1E696CAE0, &protocol conformance descriptor for HMAccessorySettingsDataSource);
    }

    else
    {
      v19 = 0;
      v6 = 0;
      *(&v55 + 1) = 0;
      *&v56 = 0;
    }

    *&v55 = v19;
    *(&v56 + 1) = v6;
    v57 = v18;
    if (*(&v53 + 1))
    {
      __swift_destroy_boxed_opaque_existential_1(&v52);
    }

LABEL_18:
    v20 = v48;
    swift_beginAccess();
    v21 = *(v20 + 104);
    v22 = *(&v56 + 1);
    if (v21)
    {
      __swift_destroy_boxed_opaque_existential_1((v48 + 80));
      if (!v22)
      {
        goto LABEL_22;
      }
    }

    else if (!*(&v56 + 1))
    {
LABEL_22:
      v23 = v56;
      v24 = v48;
      *(v48 + 80) = v55;
      *(v24 + 96) = v23;
      *(v24 + 112) = v57;
      goto LABEL_23;
    }

    sub_1D16EEE20(&v55, v48 + 80);
LABEL_23:
    v25 = *(v48 + 104);
    if (v25)
    {
      if (v47)
      {
        v6 = *(v48 + 120);
        v26 = sub_1D1A830C0(&qword_1EC649EA0, &unk_1D1E963B8);
      }

      else
      {
        v6 = 0;
        v26 = 0;
      }

      v27 = *(v48 + 112);
      __swift_mutable_project_boxed_opaque_existential_1(v48 + 80, v25);
      (*(v27 + 32))(v6, v26, v25, v27);
    }

    swift_endAccess();
    v28 = [v11 mediaSystems];
    sub_1D1741B10(0, qword_1EE079CF8, 0x1E696CBF8);
    a1 = sub_1D1E67C1C();

    v45 = v11;
    if (a1 >> 62)
    {
      v2 = sub_1D1E6873C();
      if (!v2)
      {
LABEL_51:

        v42 = [v45 accessories];
        sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
        v43 = sub_1D1E67C1C();

        sub_1D1ADD3A8(v43, v46 & 1);

        return;
      }
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        goto LABEL_51;
      }
    }

    v29 = 0;
    v50 = a1 & 0xC000000000000001;
    v49 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v50)
      {
        v35 = MEMORY[0x1D3891EF0](v29, a1);
      }

      else
      {
        if (v29 >= *(v49 + 16))
        {
          goto LABEL_48;
        }

        v35 = *(a1 + 8 * v29 + 32);
      }

      v36 = v35;
      v37 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v38 = [v35 mediaSession];
      if (v38)
      {
        v6 = v38;
        if (v47)
        {
          v39 = sub_1D1A830C0(&qword_1EC649E98, &unk_1D1E963D4);
        }

        else
        {
          v39 = 0;
        }

        if ([v6 delegate])
        {
          _s15DelegateAdapterCMa_3();
          v40 = swift_dynamicCastClass();
          if (v40)
          {
            v41 = v40;

            *(v41 + OBJC_IVAR____TtCE13HomeDataModelCSo14HMMediaSession15DelegateAdapter_delegate + 8) = v39;
            swift_unknownObjectWeakAssign();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_34;
          }

          swift_unknownObjectRelease();
        }

        v30 = _s15DelegateAdapterCMa_3();
        v31 = objc_allocWithZone(v30);
        *&v31[OBJC_IVAR____TtCE13HomeDataModelCSo14HMMediaSession15DelegateAdapter_delegate + 8] = 0;
        *(swift_unknownObjectWeakInit() + 8) = v39;
        swift_unknownObjectWeakAssign();
        v51.receiver = v31;
        v51.super_class = v30;
        v32 = objc_msgSendSuper2(&v51, sel_init);
        swift_beginAccess();
        v33 = v32;
        objc_setAssociatedObject(v6, &unk_1EC649770, v33, 1);
        swift_endAccess();

        v34 = v33;
        [v6 setDelegate_];

        swift_unknownObjectRelease();
      }

LABEL_34:
      ++v29;
      if (v37 == v2)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    swift_once();
  }
}

void sub_1D1ADD3A8(unint64_t a1, char a2)
{
  v3 = v2;
  v27 = *v2;
  if (qword_1EE07AF78 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    os_unfair_lock_lock(&dword_1EE07AF80);
    v6 = byte_1EE07AF84;
    os_unfair_lock_unlock(&dword_1EE07AF80);
    if (v6 == 2 || (v6 & 1) == 0)
    {
      break;
    }

    os_unfair_lock_lock((v3 + 16));
    v7 = *(v3 + 22);
    os_unfair_lock_unlock((v3 + 16));
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v8 = sub_1D1E6709C();
    __swift_project_value_buffer(v8, qword_1EC64A290);

    v9 = sub_1D1E6707C();
    v10 = sub_1D1E6835C();
    v26 = a1;
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109888;
      *(v11 + 4) = a2 & 1;
      *(v11 + 8) = 2048;
      if (a1 >> 62)
      {
        v12 = sub_1D1E6873C();
      }

      else
      {
        v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v11 + 10) = v12;

      *(v11 + 18) = 2048;
      if (qword_1EE07AE38 != -1)
      {
        swift_once();
      }

      *(v11 + 20) = qword_1EE07AE40;
      *(v11 + 28) = 1024;
      *(v11 + 30) = v7;
      _os_log_impl(&dword_1D16EC000, v9, v10, "changeObservationOnAccessories %{BOOL}d for %ld accessories (context: %ld, connectsHomeKitDelegatesDirectly = %{BOOL}d.", v11, 0x22u);
      MEMORY[0x1D3893640](v11, -1, -1);
    }

    else
    {
    }

    v13 = v7;
    if (qword_1EE07AE38 != -1)
    {
      swift_once();
    }

    v14 = v26;
    if (qword_1EE07AE40 == 1)
    {
      v15 = sub_1D1E6707C();
      v16 = sub_1D1E6835C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 67109120;
        *(v17 + 4) = v13;
        _os_log_impl(&dword_1D16EC000, v15, v16, "changeObservationOnAccessories called but running in Home App. connectsHomeKitDelegatesDirectly = %{BOOL}d.", v17, 8u);
        MEMORY[0x1D3893640](v17, -1, -1);
      }
    }

    if (a2)
    {
      swift_beginAccess();
      v18 = *(v3 + 48) & 1;
      v19 = (*(v3 + 48) >> 2) & 1;
      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      LOBYTE(v18) = 0;
      LODWORD(v19) = 0;
      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }
    }

    if ((v26 & 0x4000000000000000) == 0)
    {
      v20 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v20)
      {
        return;
      }

      goto LABEL_25;
    }

LABEL_37:
    v20 = sub_1D1E6873C();
    if (!v20)
    {
      return;
    }

LABEL_25:
    v21 = 0;
    a2 = 0;
    a1 = v26 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1D3891EF0](v21, v14);
      }

      else
      {
        if (v21 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v22 = *(v14 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v28 = v22;
      sub_1D1ADE660(&v28, v18, v3, v19, v27);

      ++v21;
      v25 = v24 == v20;
      v14 = v26;
      if (v25)
      {
        return;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
  }
}