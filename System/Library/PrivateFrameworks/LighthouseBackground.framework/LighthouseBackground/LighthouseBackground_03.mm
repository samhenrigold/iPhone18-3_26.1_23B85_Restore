void TaskRequest.asSystemRequest<A>(request:)(id *a1)
{
  v2 = *(v1 + 44);
  v3 = *(v1 + 45);
  v4 = *(v1 + 48);
  v59 = *(v1 + 56);
  v64 = *(v1 + 72);
  v65 = *(v1 + 80);
  v66 = *(v1 + 81);
  v68 = *(v1 + 88);
  v67 = *(v1 + 96);
  v70 = *(v1 + 104);
  v69 = *(v1 + 112);
  v71 = *(v1 + 113);
  v72 = *(v1 + 114);
  v73 = *(v1 + 128);
  v75 = *(v1 + 136);
  v74 = *(v1 + 144);
  v47 = *(v1 + 160);
  v5 = *(v1 + 168);
  v48 = *(v1 + 176);
  v49 = *(v1 + 177);
  v50 = *(v1 + 178);
  v51 = *(v1 + 184);
  v52 = *(v1 + 192);
  v53 = *(v1 + 202);
  v54 = *(v1 + 208);
  v55 = *(v1 + 224);
  v57 = *(v1 + 232);
  v6 = *a1;
  v56 = *(v1 + 233);
  v7 = *(v1 + 248);
  v58 = *(v1 + 240);
  v8 = *(v1 + 42);
  v9 = *(v1 + 43);
  v10 = *(v1 + 46);
  v11 = *(v1 + 57);
  v12 = *(v1 + 58);
  v13 = *(v1 + 59);
  v60 = *(v1 + 60);
  v61 = *(v1 + 61);
  v62 = *(v1 + 62);
  v63 = *(v1 + 63);
  v14 = *(v1 + 64);
  [*a1 setRequiresNetworkConnectivity_];
  [v6 setRequiresExternalPower_];
  [v6 setPriority_];
  [v6 setRequiresProtectionClass_];
  [v6 setPreventsDeviceSleep_];
  v15 = 0.0;
  if (!v59)
  {
    v15 = v4;
  }

  [v6 setRandomInitialDelay_];
  [v6 setPostInstall_];
  [v6 setRequiresInexpensiveNetworkConnectivity_];
  [v6 setRequiresUnconstrainedNetworkConnectivity_];
  [v6 setAppRefresh_];
  [v6 setRequiresUserInactivity_];
  [v6 setRequiresSignificantUserInactivity_];
  [v6 setPowerNap_];
  [v6 setResourceIntensive_];
  if (v64)
  {
    v16 = *(v64 + 16);
    if (v16)
    {
      v17 = 0;
      v18 = (v64 + 32);
      do
      {
        v19 = *v18++;
        v20 = qword_1DF230010[v19];
        if ((v20 & v17) != 0)
        {
          v20 = 0;
        }

        v17 |= v20;
        --v16;
      }

      while (v16);
    }

    else
    {
      v17 = 0;
    }

    [v6 setResources_];
  }

  [v6 setMayRebootDevice_];
  [v6 setUserRequestedBackupTask_];
  if (v67)
  {
    v21 = 0;
  }

  else
  {
    v21 = v68;
  }

  [v6 setNetworkDownloadSize_];
  if (v69)
  {
    v22 = 0;
  }

  else
  {
    v22 = v70;
  }

  [v6 setNetworkUploadSize_];
  [v6 setCommunicatesWithPairedDevice_];
  [v6 setShouldWakeDevice_];
  if (v73)
  {
    v23 = sub_1DF22ACA0();
  }

  else
  {
    v23 = 0;
  }

  [v6 setGroupName_];

  if (v74)
  {
    v24 = 1;
  }

  else
  {
    v24 = v75;
  }

  if (v24 < 0)
  {
LABEL_66:
    __break(1u);
    return;
  }

  [v6 setGroupConcurrencyLimit_];
  if (v47)
  {
    v25 = sub_1DF22ACA0();
  }

  else
  {
    v25 = 0;
  }

  [v6 setRateLimitConfigurationName_];

  v26 = 0.0;
  if (!v48)
  {
    v26 = v5;
  }

  [v6 setExpectedDuration_];
  [v6 setPowerBudgeted_];
  [v6 setDataBudgeted_];
  if (v51)
  {
    v27 = sub_1DF22AE70();
  }

  else
  {
    v27 = 0;
  }

  [v6 setRelatedApplications_];

  if (v52)
  {
    v28 = sub_1DF22AE70();
  }

  else
  {
    v28 = 0;
  }

  [v6 setInvolvedProcesses_];

  [v6 setRequiresBuddyComplete_];
  v29 = v58;
  if (v54)
  {
    v30 = *(v54 + 16);
    if (v30)
    {
      v31 = 0;
      v32 = (v54 + 32);
      do
      {
        v34 = *v32++;
        v33 = v34;
        if ((~v31 & (v34 + 1)) != 0)
        {
          v35 = v33 + 1;
        }

        else
        {
          v35 = 0;
        }

        v31 |= v35;
        --v30;
      }

      while (v30);
    }

    else
    {
      v31 = 0;
    }

    [v6 setTargetDevice_];
  }

  if (v55)
  {
    v36 = sub_1DF22ACA0();
  }

  else
  {
    v36 = 0;
  }

  [v6 setRemoteDevice_];

  [v6 setRequiresRemoteDeviceWake_];
  [v6 setRunOnMotionState_];
  if (v58)
  {

    sub_1DF1925DC(v37);

    v29 = sub_1DF22B060();
  }

  [v6 setProducedResultIdentifiers_];

  if (v7)
  {
    v38 = 0;
    v76 = MEMORY[0x1E69E7CC0];
    v78 = MEMORY[0x1E69E7CC0];
    v39 = *(v7 + 16);
    v40 = v7 + 40;
LABEL_53:
    v41 = v40 + 16 * v38;
    while (1)
    {
      if (v39 == v38)
      {
        v46 = sub_1DF192674(v76);

        sub_1DF1922AC(v46);

        v77 = sub_1DF22B060();

        goto LABEL_62;
      }

      if (v38 >= *(v7 + 16))
      {
        break;
      }

      ++v38;
      v42 = v41 + 16;
      v43 = objc_allocWithZone(MEMORY[0x1E698E4B0]);

      v44 = sub_1DF22ACA0();

      v45 = [v43 initWithIdentifier:v44 batchSize:1];

      v41 = v42;
      if (v45)
      {
        MEMORY[0x1E12CF930]();
        if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DF22AEC0();
        }

        sub_1DF22AF00();
        v76 = v78;
        v40 = v7 + 40;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_66;
  }

  v77 = 0;
LABEL_62:
  [v6 setDependencies_];
}

uint64_t sub_1DF1922AC(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_1DF22B260())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x1E69E7CD0];
    if (v2)
    {
      goto LABEL_4;
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
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D2D8, &qword_1DF22FFD8);
  v3 = sub_1DF22B2E0();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_1DF22B250();
  sub_1DF19286C();
  sub_1DF1928B8();
  result = sub_1DF22B080();
  v1 = v30;
  v5 = v31;
  v6 = v32;
  v7 = v33;
  v8 = v34;
LABEL_11:
  v12 = v3 + 56;
  while (v1 < 0)
  {
    v16 = sub_1DF22B280();
    if (!v16)
    {
LABEL_34:
      sub_1DF178EDC(v1);

      return v3;
    }

    *&v27 = v16;
    sub_1DF19286C();
    swift_dynamicCast();
LABEL_25:
    sub_1DF19286C();
    swift_dynamicCast();
    result = sub_1DF22B290();
    v20 = -1 << *(v3 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) != 0)
    {
      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      do
      {
        if (++v22 == v24 && (v23 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v22);
      }

      while (v26 == -1);
      v13 = __clz(__rbit64(~v26)) + (v22 << 6);
    }

    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v3 + 48) + 40 * v13;
    *(v14 + 32) = v29;
    *v14 = v27;
    *(v14 + 16) = v28;
    ++*(v3 + 16);
  }

  if (v8)
  {
    v15 = v7;
LABEL_24:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(*(v1 + 48) + ((v15 << 9) | (8 * v18)));
    goto LABEL_25;
  }

  v17 = v7;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v15);
    ++v17;
    if (v8)
    {
      v7 = v15;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1DF1925DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E12CFB40](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1DF1EA9A8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1DF192674(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DF22B260())
  {
    v4 = sub_1DF19286C();
    v5 = sub_1DF1928B8();
    result = MEMORY[0x1E12CFB40](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1E12CFE10](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1DF1EA770(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1DF22B260();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1DF1927A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1DF192818();
  result = MEMORY[0x1E12CFB40](v2, &type metadata for TaskStatus, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1DF1EAAF8(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1DF192818()
{
  result = qword_1ECE0D2D0;
  if (!qword_1ECE0D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D2D0);
  }

  return result;
}

unint64_t sub_1DF19286C()
{
  result = qword_1ECE0D2E0;
  if (!qword_1ECE0D2E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECE0D2E0);
  }

  return result;
}

unint64_t sub_1DF1928B8()
{
  result = qword_1ECE0D2E8;
  if (!qword_1ECE0D2E8)
  {
    sub_1DF19286C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D2E8);
  }

  return result;
}

uint64_t sub_1DF192910(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D2F0, &qword_1DF22FFE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF192980(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D2F0, &qword_1DF22FFE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF1929E8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1DF22B0B0();
  if (!v19)
  {
    return sub_1DF22AED0();
  }

  v41 = v19;
  v45 = sub_1DF22B380();
  v32 = sub_1DF22B390();
  sub_1DF22B360();
  result = sub_1DF22B0A0();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1DF22B0D0();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1DF22B370();
      result = sub_1DF22B0C0();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF192E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD70, &qword_1DF2300E0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v44 - v14;
  swift_beginAccess();
  v16 = *(v4 + 32);
  if (!*(v16 + 16))
  {
    goto LABEL_8;
  }

  v17 = sub_1DF175254(a1, a2);
  if ((v18 & 1) == 0)
  {

LABEL_8:
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD60, &qword_1DF22FFC0);
    (*(*(v35 - 8) + 56))(v15, 1, 1, v35);
    v36 = v15;
LABEL_11:
    sub_1DF1964C0(v36);
    return 0;
  }

  v19 = v17;
  v45 = a2;
  v46 = a1;
  v47 = a4;
  v48 = a3;
  v20 = *(v16 + 56);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD60, &qword_1DF22FFC0);
  v22 = *(*(v21 - 8) + 72);
  v23 = v20 + v22 * v19;
  v24 = *(v21 - 8);
  sub_1DF17A6A8(v23, v15, &qword_1ECE0CD60, &qword_1DF22FFC0);

  v25 = *(v24 + 56);
  v25(v15, 0, 1, v21);
  sub_1DF1964C0(v15);
  v26 = *(v5 + 32);
  if (!*(v26 + 16))
  {
LABEL_10:
    v25(v13, 1, 1, v21);
    v36 = v13;
    goto LABEL_11;
  }

  v27 = v47;
  v28 = sub_1DF175254(v48, v47);
  if ((v29 & 1) == 0)
  {

    goto LABEL_10;
  }

  sub_1DF17A6A8(*(v26 + 56) + v28 * v22, v13, &qword_1ECE0CD60, &qword_1DF22FFC0);

  v25(v13, 0, 1, v21);
  sub_1DF1964C0(v13);
  v30 = sub_1DF1623A4(v50);
  v31 = v45;
  v32 = sub_1DF193214(v49, v46, v45);
  v34 = v33;
  if ((*(v24 + 48))(v33, 1, v21))
  {
    (v32)(v49, 0);
    (v30)(v50, 0);
  }

  else
  {
    v38 = *(v21 + 52);
    v39 = *(v34 + v38);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + v38) = v39;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = sub_1DF174730(0, *(v39 + 2) + 1, 1, v39);
      *(v34 + v38) = v39;
    }

    v42 = *(v39 + 2);
    v41 = *(v39 + 3);
    if (v42 >= v41 >> 1)
    {
      v39 = sub_1DF174730((v41 > 1), v42 + 1, 1, v39);
      *(v34 + v38) = v39;
    }

    *(v39 + 2) = v42 + 1;
    v43 = &v39[32 * v42];
    *(v43 + 4) = v46;
    *(v43 + 5) = v31;
    *(v43 + 6) = v48;
    *(v43 + 7) = v27;
    (v32)(v49, 0);
    (v30)(v50, 0);
  }

  return 1;
}

uint64_t (*sub_1DF193214(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1DF195A04(v6, a2, a3);
  return sub_1DF19329C;
}

void sub_1DF19329C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t CustomEventAnalytics.stateCountMap.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t CustomEventAnalytics.transitionStatsMap.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t type metadata accessor for CustomEventAnalytics(uint64_t a1)
{
  result = qword_1ECE0D378;
  if (!qword_1ECE0D378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CustomEventAnalytics.taskName.getter()
{
  v1 = *(v0 + *(type metadata accessor for CustomEventAnalytics(0) + 32));

  return v1;
}

uint64_t CustomEventAnalytics.taskName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CustomEventAnalytics(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1DF1936EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t CustomEventAnalytics.init()@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = sub_1DF18FC1C(MEMORY[0x1E69E7CC0]);
  *(a1 + 1) = sub_1DF18FD18(v2);
  v3 = type metadata accessor for CustomEventAnalytics(0);
  v4 = v3[6];
  v5 = type metadata accessor for LedgerState(0);
  v6 = *(*(v5 - 8) + 56);
  v6(&a1[v4], 1, 1, v5);
  v6(&a1[v3[7]], 1, 1, v5);
  v7 = &a1[v3[8]];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = v3[9];
  v9 = sub_1DF22A800();
  v12 = *(*(v9 - 8) + 56);
  (v12)((v9 - 8), &a1[v8], 1, 1, v9);
  v10 = &a1[v3[10]];

  return v12(v10, 1, 1, v9);
}

uint64_t sub_1DF1939CC()
{
  v1 = *v0;
  v2 = 0x756F436574617473;
  v3 = 0x745374656B637562;
  if (v1 != 5)
  {
    v3 = 0x6E4574656B637562;
  }

  v4 = 0x656D614E6B736174;
  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 1)
  {
    v5 = 0x6C61567473726966;
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

uint64_t sub_1DF193AD0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF196220(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF193AF8(uint64_t a1)
{
  v2 = sub_1DF196000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF193B34(uint64_t a1)
{
  v2 = sub_1DF196000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CustomEventAnalytics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D2F8, &unk_1DF2300C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF196000();
  sub_1DF22B740();
  v12 = *v3;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D308, &unk_1DF239C50);
  sub_1DF1960A8(&qword_1ECE0D310, MEMORY[0x1E69E6160], MEMORY[0x1E69E6538], MEMORY[0x1E69E5E38]);
  sub_1DF22B5C0();
  if (!v2)
  {
    v12 = v3[1];
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D318, &qword_1DF2300D0);
    sub_1DF196118(&qword_1ECE0D320, sub_1DF17C3E4, sub_1DF196054, MEMORY[0x1E69E5E38]);
    sub_1DF22B5C0();
    type metadata accessor for CustomEventAnalytics(0);
    LOBYTE(v12) = 2;
    type metadata accessor for LedgerState(0);
    sub_1DF1965D4(&qword_1ECE0CE10, type metadata accessor for LedgerState, &protocol conformance descriptor for LedgerState);
    sub_1DF22B560();
    LOBYTE(v12) = 3;
    sub_1DF22B560();
    LOBYTE(v12) = 4;
    sub_1DF22B510();
    LOBYTE(v12) = 5;
    sub_1DF22A800();
    sub_1DF1965D4(&qword_1ECE0C728, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1DF22B560();
    LOBYTE(v12) = 6;
    sub_1DF22B560();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CustomEventAnalytics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v39 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v38 - v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D330, &qword_1DF2300D8);
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v11 = &v38 - v10;
  v12 = type metadata accessor for CustomEventAnalytics(0);
  v13 = (v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1E69E7CC0];
  v48 = sub_1DF18FC1C(MEMORY[0x1E69E7CC0]);
  *v15 = v48;
  v46 = sub_1DF18FD18(v16);
  v15[1] = v46;
  v17 = v13[8];
  v18 = type metadata accessor for LedgerState(0);
  v19 = *(*(v18 - 8) + 56);
  v44 = v17;
  v19(v15 + v17, 1, 1, v18);
  v43 = v13[9];
  v19(v15 + v43, 1, 1, v18);
  v20 = (v15 + v13[10]);
  *v20 = 0;
  v20[1] = 0;
  v21 = v13[11];
  v22 = sub_1DF22A800();
  v23 = *(*(v22 - 8) + 56);
  v40 = v21;
  v23(v15 + v21, 1, 1, v22);
  v24 = v13[12];
  v53 = v15;
  v23(v15 + v24, 1, 1, v22);
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  sub_1DF196000();
  v50 = v11;
  v25 = v52;
  sub_1DF22B730();
  if (v25)
  {
    v26 = v53;
  }

  else
  {
    v52 = v20;
    v38 = v24;
    v27 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D308, &unk_1DF239C50);
    v55 = 0;
    sub_1DF1960A8(&qword_1ECE0D338, MEMORY[0x1E69E6190], MEMORY[0x1E69E6560], MEMORY[0x1E69E5E58]);
    sub_1DF22B4E0();

    v26 = v53;
    *v53 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D318, &qword_1DF2300D0);
    v55 = 1;
    sub_1DF196118(&qword_1ECE0D340, sub_1DF17C390, sub_1DF1961A8, MEMORY[0x1E69E5E58]);
    sub_1DF22B4E0();

    *(v26 + 8) = v56;
    LOBYTE(v56) = 2;
    sub_1DF1965D4(&qword_1ECE0CE08, type metadata accessor for LedgerState, &protocol conformance descriptor for LedgerState);
    v28 = v47;
    sub_1DF22B480();
    sub_1DF1936EC(v28, v26 + v44, &qword_1ECE0CCF8, &qword_1DF22FF80);
    LOBYTE(v56) = 3;
    v30 = v45;
    v31 = v50;
    sub_1DF22B480();
    sub_1DF1936EC(v30, v26 + v43, &qword_1ECE0CCF8, &qword_1DF22FF80);
    LOBYTE(v56) = 4;
    v32 = sub_1DF22B430();
    v33 = v52;
    *v52 = v32;
    v33[1] = v34;
    LOBYTE(v56) = 5;
    sub_1DF1965D4(&qword_1ED8E6BE0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v35 = v42;
    sub_1DF22B480();
    sub_1DF1936EC(v35, v26 + v40, &qword_1ECE0CDC0, &unk_1DF22D7C0);
    LOBYTE(v56) = 6;
    v36 = v41;
    v37 = v51;
    sub_1DF22B480();
    (*(v27 + 8))(v31, v37);
    sub_1DF1936EC(v36, v26 + v38, &qword_1ECE0CDC0, &unk_1DF22D7C0);
    sub_1DF196FD0(v26, v39, type metadata accessor for CustomEventAnalytics);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  return sub_1DF197038(v26, type metadata accessor for CustomEventAnalytics);
}

uint64_t sub_1DF194694(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1DF1946E8(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1DF194844@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = sub_1DF18FC1C(MEMORY[0x1E69E7CC0]);
  *(a2 + 1) = sub_1DF18FD18(v4);
  v5 = a1[6];
  v6 = type metadata accessor for LedgerState(0);
  v7 = *(*(v6 - 8) + 56);
  v7(&a2[v5], 1, 1, v6);
  v7(&a2[a1[7]], 1, 1, v6);
  v8 = a1[9];
  v9 = &a2[a1[8]];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = sub_1DF22A800();
  v13 = *(*(v10 - 8) + 56);
  (v13)((v10 - 8), &a2[v8], 1, 1, v10);
  v11 = &a2[a1[10]];

  return v13(v11, 1, 1, v10);
}

char *getCustomStateMachine<A>(states:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v113 = a3;
  v107 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD70, &qword_1DF2300E0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v111 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v120 = &v99 - v9;
  v128 = *(a2 - 1);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v123 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v122 = &v99 - v12;
  v13 = sub_1DF22B1A0();
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v115 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v106 = &v99 - v16;
  v17 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v105 = AssociatedConformanceWitness[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v109 = *(AssociatedTypeWitness - 8);
  v19 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v121 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v108 = &v99 - v21;
  v22 = swift_checkMetadataState();
  v126 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v99 - v23;
  v135 = 0x72476D6F74737543;
  v136 = 0xEB00000000687061;
  v133 = a2;
  swift_getMetatypeMetadata();
  v25 = sub_1DF22ACE0();
  MEMORY[0x1E12CF820](v25);

  v26 = v135;
  v27 = v136;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D350, &qword_1DF2300E8);
  v28 = swift_allocObject();
  v29 = MEMORY[0x1E69E7CC0];
  v28[4] = sub_1DF18FE5C(MEMORY[0x1E69E7CC0]);
  v28[2] = v26;
  v28[3] = v27;
  v30 = AssociatedTypeWitness;
  v31 = sub_1DF18FE5C(v29);
  swift_beginAccess();
  v124 = v28 + 4;
  v28[4] = v31;

  sub_1DF22B320();
  v130 = a2;
  v131 = v113;
  v101 = v28;
  v132 = v28;
  sub_1DF1929E8(sub_1DF1961FC, v129, v22, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], AssociatedConformanceWitness, MEMORY[0x1E69E7410], v32);

  v126[1](v24, v22);
  v104 = v17;
  sub_1DF22B320();
  v102 = v24;
  sub_1DF22ADE0();
  v103 = v22;
  v33 = swift_getAssociatedConformanceWitness();
  v34 = v106;
  sub_1DF22B1B0();
  v35 = v34;
  v36 = v128;
  v38 = v128 + 48;
  v37 = *(v128 + 48);
  if ((v37)(v35, 1, a2) != 1)
  {
    v40 = *(v36 + 32);
    v39 = v36 + 32;
    v125 = (v39 - 24);
    v126 = v40;
    ++v109;
    v41 = v122;
    v42 = v115;
    v43 = v121;
    v128 = v39;
    v119 = v30;
    v118 = v33;
    v117 = v38;
    AssociatedConformanceWitness = v37;
    v116 = a2;
    (v40)(v122, v35, a2);
    while (1)
    {
      sub_1DF22B320();
      sub_1DF22ADE0();
      v48 = v43;
      sub_1DF22B1B0();
      v49 = (v37)(v42, 1, a2);
      v50 = v123;
      if (v49 != 1)
      {
        break;
      }

LABEL_4:
      v43 = v48;
      v44 = *v109;
      (*v109)(v48, v30);
      (*v125)(v41, a2);
      v45 = v106;
      sub_1DF22B1B0();
      v46 = v45;
      v47 = v45;
      v37 = AssociatedConformanceWitness;
      if ((AssociatedConformanceWitness)(v47, 1, a2) == 1)
      {
        v44(v108, v30);
        goto LABEL_32;
      }

      (v126)(v41, v46, a2);
    }

    while (1)
    {
      (v126)(v50, v42, a2);
      if ((sub_1DF22B630() & 1) == 0)
      {
        break;
      }

      (*v125)(v50, a2);
LABEL_9:
      v51 = AssociatedConformanceWitness;
LABEL_10:
      sub_1DF22B1B0();
      if (v51(v42, 1, a2) == 1)
      {
        goto LABEL_4;
      }
    }

    sub_1DF22AE10();
    v133 = v135;
    v134 = v136;
    v52 = sub_1DF22ADC0();
    v54 = v53;
    sub_1DF22AE10();
    v133 = v135;
    v134 = v136;
    v55 = sub_1DF22ADC0();
    v57 = v56;
    v58 = *v124;
    if (!*(*v124 + 16))
    {

LABEL_20:
      v51 = AssociatedConformanceWitness;
      v81 = v123;
      a2 = v116;
      (*v125)(v123, v116);
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD60, &qword_1DF22FFC0);
      v83 = v120;
      (*(*(v82 - 8) + 56))(v120, 1, 1, v82);
      v84 = v83;
      v50 = v81;
      sub_1DF1964C0(v84);
      v30 = v119;
      v48 = v121;
      v41 = v122;
      goto LABEL_10;
    }

    v59 = v55;

    v60 = sub_1DF175254(v52, v54);
    if ((v61 & 1) == 0)
    {

      v42 = v115;
      goto LABEL_20;
    }

    v62 = v60;
    v114 = v54;
    v112 = v52;
    v63 = *(v58 + 56);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD60, &qword_1DF22FFC0);
    v65 = *(v64 - 8);
    v66 = *(v65 + 72);
    v67 = v120;
    v68 = v64;
    sub_1DF17A6A8(v63 + v66 * v62, v120, &qword_1ECE0CD60, &qword_1DF22FFC0);

    v69 = *(v65 + 56);
    v69(v67, 0, 1, v68);
    sub_1DF1964C0(v67);
    v70 = *v124;
    if (*(*v124 + 16))
    {

      v110 = v59;
      v71 = sub_1DF175254(v59, v57);
      a2 = v116;
      v72 = v114;
      if (v73)
      {
        v74 = *(v70 + 56) + v71 * v66;
        v75 = v111;
        sub_1DF17A6A8(v74, v111, &qword_1ECE0CD60, &qword_1DF22FFC0);

        v69(v75, 0, 1, v68);
        sub_1DF1964C0(v75);
        v76 = sub_1DF1623A4(&v135);
        v77 = v112;
        v78 = sub_1DF193214(&v133, v112, v72);
        v80 = v79;
        if (!(*(v65 + 48))(v79, 1, v68))
        {
          v100 = v76;
          v88 = *(v68 + 52);
          v89 = *(v80 + v88);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v80 + v88) = v89;
          v41 = v122;
          v91 = v78;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v89 = sub_1DF174730(0, *(v89 + 2) + 1, 1, v89);
            *(v80 + v88) = v89;
          }

          v93 = *(v89 + 2);
          v92 = *(v89 + 3);
          v94 = v93 + 1;
          if (v93 >= v92 >> 1)
          {
            v99 = v93 + 1;
            v96 = sub_1DF174730((v92 > 1), v93 + 1, 1, v89);
            v94 = v99;
            v89 = v96;
            *(v80 + v88) = v96;
          }

          v42 = v115;
          *(v89 + 2) = v94;
          v95 = &v89[32 * v93];
          *(v95 + 4) = v77;
          *(v95 + 5) = v72;
          *(v95 + 6) = v110;
          *(v95 + 7) = v57;
          (v91)(&v133, 0);

          (v100)(&v135, 0);
          v50 = v123;
          (*v125)(v123, a2);
          goto LABEL_25;
        }

        (v78)(&v133, 0);

        (v76)(&v135, 0);
        v50 = v123;
        (*v125)(v123, a2);
        v41 = v122;
LABEL_24:
        v42 = v115;
LABEL_25:
        v30 = v119;
        v48 = v121;
        goto LABEL_9;
      }

      v41 = v122;
    }

    else
    {

      v41 = v122;
      a2 = v116;
    }

    v85 = v123;
    (*v125)(v123, a2);
    v86 = v111;
    v69(v111, 1, 1, v68);
    v87 = v86;
    v50 = v85;
    sub_1DF1964C0(v87);
    goto LABEL_24;
  }

  v109[1](v108, v30);
LABEL_32:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D358, &unk_1DF2300F0);
  swift_allocObject();
  v97 = sub_1DF1969F4(v101, type metadata accessor for CustomEventAnalytics, type metadata accessor for CustomEventAnalytics);

  return v97;
}

uint64_t sub_1DF195804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD70, &qword_1DF2300E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v15 - v5;
  v7 = type metadata accessor for LedgerState(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DF22AE10();
  v15[4] = v15[1];
  v15[5] = v15[2];
  v10 = sub_1DF22ADC0();
  v12 = v11;
  sub_1DF22A740();
  *v9 = v10;
  v9[1] = v12;
  sub_1DF196FD0(v9, v6, type metadata accessor for LedgerState);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD60, &qword_1DF22FFC0);
  *&v6[*(v13 + 52)] = MEMORY[0x1E69E7CC0];
  (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  swift_beginAccess();

  sub_1DF167430(v6, v10, v12);
  swift_endAccess();
  return sub_1DF197038(v9, type metadata accessor for LedgerState);
}

void (*sub_1DF195A04(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1DF195FCC(v7);
  v7[9] = sub_1DF195B10(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1DF195AB0;
}

void sub_1DF195AB0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1DF195B10(void *a1, uint64_t a2, uint64_t a3, char a4))(void **a1, char a2)
{
  v5 = v4;
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x68uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v5;
  *v10 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD60, &qword_1DF22FFC0);
  v11[3] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v11[4] = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v11[6] = malloc(v15);
    v16 = malloc(v15);
  }

  v11[7] = v16;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD70, &qword_1DF2300E0) - 8) + 64);
  if (v9)
  {
    v11[8] = swift_coroFrameAlloc();
    v11[9] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v11[8] = malloc(v17);
    v11[9] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v11[10] = v18;
  v20 = *v5;
  v22 = sub_1DF175254(a2, a3);
  *(v11 + 96) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a4 & 1) != 0)
    {
LABEL_16:
      v11[11] = v22;
      if (v26)
      {
LABEL_17:
        sub_1DF196EF8(*(*v5 + 56) + *(v14 + 72) * v22, v19);
        v28 = 0;
LABEL_21:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_1DF195DE4;
      }

LABEL_20:
      v28 = 1;
      goto LABEL_21;
    }

    if (v27 >= v25 && (a4 & 1) == 0)
    {
      sub_1DF17605C();
      goto LABEL_16;
    }

    sub_1DF1A5DF0(v25, a4 & 1);
    v29 = sub_1DF175254(a2, a3);
    if ((v26 & 1) == (v30 & 1))
    {
      v22 = v29;
      v11[11] = v29;
      if (v26)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_1DF22B660();
  __break(1u);
  return result;
}

void sub_1DF195DE4(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  v4 = (*(*a1 + 4) + 48);
  v5 = *(*a1 + 10);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_1DF17A6A8(v5, v6, &qword_1ECE0CD70, &qword_1DF2300E0);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      sub_1DF196EF8(v9, *(v2 + 6));
      v11 = *v10;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        sub_1DF196EF8(v13, v14);
        sub_1DF1A85A4(v12, v16, v15, v14, v11);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_1DF17A6A8(v5, v17, &qword_1ECE0CD70, &qword_1DF2300E0);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v18 != 1)
    {
      v21 = *(v2 + 2);
      sub_1DF196EF8(v9, *(v2 + 7));
      v11 = *v21;
      v12 = *(v2 + 11);
      v13 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_1DF196EF8(v13, v11[7] + *(*(v2 + 4) + 72) * v12);
      goto LABEL_10;
    }
  }

  sub_1DF1964C0(v9);
  if (v8)
  {
    v19 = *(v2 + 11);
    v20 = **(v2 + 2);
    sub_1DF196EA4(*(v20 + 48) + 16 * v19);
    sub_1DF1759CC(v19, v20);
  }

LABEL_10:
  v22 = *(v2 + 9);
  v23 = *(v2 + 10);
  v25 = *(v2 + 7);
  v24 = *(v2 + 8);
  v27 = *(v2 + 5);
  v26 = *(v2 + 6);
  sub_1DF1964C0(v23);
  free(v23);
  free(v22);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t (*sub_1DF195FCC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1DF195FF4;
}

unint64_t sub_1DF196000()
{
  result = qword_1ECE0D300;
  if (!qword_1ECE0D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D300);
  }

  return result;
}

unint64_t sub_1DF196054()
{
  result = qword_1ECE0D328;
  if (!qword_1ECE0D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D328);
  }

  return result;
}

uint64_t sub_1DF1960A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE0D308, &unk_1DF239C50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF196118(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE0D318, &qword_1DF2300D0);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF1961A8()
{
  result = qword_1ECE0D348;
  if (!qword_1ECE0D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D348);
  }

  return result;
}

uint64_t sub_1DF196220(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F436574617473 && a2 == 0xED000070614D746ELL;
  if (v4 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DF23D960 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61567473726966 && a2 == 0xEF65746174536469 || (sub_1DF22B620() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DF23D980 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D614E6B736174 && a2 == 0xE800000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x745374656B637562 && a2 == 0xEB00000000747261 || (sub_1DF22B620() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E4574656B637562 && a2 == 0xE900000000000064)
  {

    return 6;
  }

  else
  {
    v6 = sub_1DF22B620();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1DF1964C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD70, &qword_1DF2300E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF196528(void *a1)
{
  a1[1] = sub_1DF1965D4(&qword_1ECE0D360, type metadata accessor for CustomEventAnalytics, &protocol conformance descriptor for CustomEventAnalytics);
  a1[2] = sub_1DF1965D4(&qword_1ECE0D368, type metadata accessor for CustomEventAnalytics, &protocol conformance descriptor for CustomEventAnalytics);
  result = sub_1DF1965D4(&qword_1ECE0D370, type metadata accessor for CustomEventAnalytics, &protocol conformance descriptor for CustomEventAnalytics);
  a1[3] = result;
  return result;
}

uint64_t sub_1DF1965D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DF196644(uint64_t a1)
{
  sub_1DF196748();
  if (v1 <= 0x3F)
  {
    sub_1DF1967A8(319);
    if (v2 <= 0x3F)
    {
      sub_1DF19685C(319, &qword_1ECE0D398, type metadata accessor for LedgerState);
      if (v3 <= 0x3F)
      {
        sub_1DF19680C();
        if (v4 <= 0x3F)
        {
          sub_1DF19685C(319, &unk_1ED8E7330, MEMORY[0x1E6969530]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1DF196748()
{
  if (!qword_1ECE0D388)
  {
    v0 = sub_1DF22ABE0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE0D388);
    }
  }
}

void sub_1DF1967A8(uint64_t a1)
{
  if (!qword_1ECE0D390)
  {
    sub_1DF17C438();
    v1 = sub_1DF22ABE0();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECE0D390);
    }
  }
}

void sub_1DF19680C()
{
  if (!qword_1ED8E6C08)
  {
    v0 = sub_1DF22B1A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8E6C08);
    }
  }
}

void sub_1DF19685C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DF22B1A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DF1968C4()
{
  result = qword_1ECE0D3A0;
  if (!qword_1ECE0D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D3A0);
  }

  return result;
}

unint64_t sub_1DF19691C()
{
  result = qword_1ECE0D3A8;
  if (!qword_1ECE0D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D3A8);
  }

  return result;
}

unint64_t sub_1DF196974()
{
  result = qword_1ECE0D3B0;
  if (!qword_1ECE0D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D3B0);
  }

  return result;
}

char *sub_1DF1969F4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v22 = a3;
  v5 = a2(0);
  v6 = (v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v22 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  v12 = qword_1ECE0F348;
  v13 = type metadata accessor for LedgerState(0);
  v14 = *(*(v13 - 8) + 56);
  v14(&v3[v12], 1, 1, v13);
  *(v3 + 2) = a1;
  v14(v11, 1, 1, v13);
  v15 = qword_1ECE0F348;
  swift_beginAccess();

  sub_1DF1936EC(v11, &v3[v15], &qword_1ECE0CCF8, &qword_1DF22FF80);
  swift_endAccess();
  v16 = MEMORY[0x1E69E7CC0];
  *v8 = sub_1DF18FC1C(MEMORY[0x1E69E7CC0]);
  v8[1] = sub_1DF18FD18(v16);
  v14(v8 + v6[8], 1, 1, v13);
  v14(v8 + v6[9], 1, 1, v13);
  v17 = (v8 + v6[10]);
  *v17 = 0;
  v17[1] = 0;
  v18 = v6[11];
  v19 = sub_1DF22A800();
  v20 = *(*(v19 - 8) + 56);
  v20(v8 + v18, 1, 1, v19);
  v20(v8 + v6[12], 1, 1, v19);
  sub_1DF196F68(v8, &v3[*(*v3 + 112)], v22);
  return v3;
}

char *sub_1DF196C80(uint64_t a1)
{
  v3 = type metadata accessor for MLHostAnalytics(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = qword_1ECE0F348;
  v11 = type metadata accessor for LedgerState(0);
  v12 = *(*(v11 - 8) + 56);
  v12(&v1[v10], 1, 1, v11);
  *(v1 + 2) = a1;
  v12(v9, 1, 1, v11);
  v13 = qword_1ECE0F348;
  swift_beginAccess();

  sub_1DF1936EC(v9, &v1[v13], &qword_1ECE0CCF8, &qword_1DF22FF80);
  swift_endAccess();
  v14 = MEMORY[0x1E69E7CC0];
  *v6 = sub_1DF18FC1C(MEMORY[0x1E69E7CC0]);
  v6[1] = sub_1DF18FD18(v14);
  v12(v6 + *(v4 + 32), 1, 1, v11);
  v12(v6 + *(v4 + 36), 1, 1, v11);
  sub_1DF196F68(v6, &v1[*(*v1 + 112)], type metadata accessor for MLHostAnalytics);
  return v1;
}

uint64_t sub_1DF196EF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD60, &qword_1DF22FFC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF196F68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF196FD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF197038(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DediscoAnalytics.stateCountMap.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t DediscoAnalytics.transitionStatsMap.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t type metadata accessor for DediscoAnalytics(uint64_t a1)
{
  result = qword_1ECE0C508;
  if (!qword_1ECE0C508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DediscoAnalytics.taskName.getter()
{
  v1 = *(v0 + *(type metadata accessor for DediscoAnalytics(0) + 32));

  return v1;
}

uint64_t DediscoAnalytics.taskName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DediscoAnalytics(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DediscoAnalytics.init()@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = sub_1DF18FC1C(MEMORY[0x1E69E7CC0]);
  *(a1 + 1) = sub_1DF18FD18(v2);
  v3 = type metadata accessor for DediscoAnalytics(0);
  v4 = v3[6];
  v5 = type metadata accessor for LedgerState(0);
  v6 = *(*(v5 - 8) + 56);
  v6(&a1[v4], 1, 1, v5);
  v6(&a1[v3[7]], 1, 1, v5);
  v7 = &a1[v3[8]];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = v3[9];
  v9 = sub_1DF22A800();
  v12 = *(*(v9 - 8) + 56);
  (v12)((v9 - 8), &a1[v8], 1, 1, v9);
  v10 = &a1[v3[10]];

  return v12(v10, 1, 1, v9);
}

uint64_t sub_1DF197714(uint64_t a1)
{
  v2 = sub_1DF198FF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF197750(uint64_t a1)
{
  v2 = sub_1DF198FF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DediscoAnalytics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D3B8, &qword_1DF230300);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF198FF0();
  sub_1DF22B740();
  v12 = *v3;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D308, &unk_1DF239C50);
  sub_1DF1960A8(&qword_1ECE0D310, MEMORY[0x1E69E6160], MEMORY[0x1E69E6538], MEMORY[0x1E69E5E38]);
  sub_1DF22B5C0();
  if (!v2)
  {
    v12 = v3[1];
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D318, &qword_1DF2300D0);
    sub_1DF196118(&qword_1ECE0D320, sub_1DF17C3E4, sub_1DF196054, MEMORY[0x1E69E5E38]);
    sub_1DF22B5C0();
    type metadata accessor for DediscoAnalytics(0);
    LOBYTE(v12) = 2;
    type metadata accessor for LedgerState(0);
    sub_1DF1990F0(&qword_1ECE0CE10, type metadata accessor for LedgerState, &protocol conformance descriptor for LedgerState);
    sub_1DF22B560();
    LOBYTE(v12) = 3;
    sub_1DF22B560();
    LOBYTE(v12) = 4;
    sub_1DF22B510();
    LOBYTE(v12) = 5;
    sub_1DF22A800();
    sub_1DF1990F0(&qword_1ECE0C728, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1DF22B560();
    LOBYTE(v12) = 6;
    sub_1DF22B560();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DediscoAnalytics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v39 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v38 - v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D3C8, &qword_1DF230308);
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v11 = &v38 - v10;
  v12 = type metadata accessor for DediscoAnalytics(0);
  v13 = (v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1E69E7CC0];
  v48 = sub_1DF18FC1C(MEMORY[0x1E69E7CC0]);
  *v15 = v48;
  v46 = sub_1DF18FD18(v16);
  v15[1] = v46;
  v17 = v13[8];
  v18 = type metadata accessor for LedgerState(0);
  v19 = *(*(v18 - 8) + 56);
  v44 = v17;
  v19(v15 + v17, 1, 1, v18);
  v43 = v13[9];
  v19(v15 + v43, 1, 1, v18);
  v20 = (v15 + v13[10]);
  *v20 = 0;
  v20[1] = 0;
  v21 = v13[11];
  v22 = sub_1DF22A800();
  v23 = *(*(v22 - 8) + 56);
  v40 = v21;
  v23(v15 + v21, 1, 1, v22);
  v24 = v13[12];
  v53 = v15;
  v23(v15 + v24, 1, 1, v22);
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  sub_1DF198FF0();
  v50 = v11;
  v25 = v52;
  sub_1DF22B730();
  if (v25)
  {
    v26 = v53;
  }

  else
  {
    v52 = v20;
    v38 = v24;
    v27 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D308, &unk_1DF239C50);
    v55 = 0;
    sub_1DF1960A8(&qword_1ECE0D338, MEMORY[0x1E69E6190], MEMORY[0x1E69E6560], MEMORY[0x1E69E5E58]);
    sub_1DF22B4E0();

    v26 = v53;
    *v53 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D318, &qword_1DF2300D0);
    v55 = 1;
    sub_1DF196118(&qword_1ECE0D340, sub_1DF17C390, sub_1DF1961A8, MEMORY[0x1E69E5E58]);
    sub_1DF22B4E0();

    *(v26 + 8) = v56;
    LOBYTE(v56) = 2;
    sub_1DF1990F0(&qword_1ECE0CE08, type metadata accessor for LedgerState, &protocol conformance descriptor for LedgerState);
    v28 = v47;
    sub_1DF22B480();
    sub_1DF1936EC(v28, v26 + v44, &qword_1ECE0CCF8, &qword_1DF22FF80);
    LOBYTE(v56) = 3;
    v30 = v45;
    v31 = v50;
    sub_1DF22B480();
    sub_1DF1936EC(v30, v26 + v43, &qword_1ECE0CCF8, &qword_1DF22FF80);
    LOBYTE(v56) = 4;
    v32 = sub_1DF22B430();
    v33 = v52;
    *v52 = v32;
    v33[1] = v34;
    LOBYTE(v56) = 5;
    sub_1DF1990F0(&qword_1ED8E6BE0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v35 = v42;
    sub_1DF22B480();
    sub_1DF1936EC(v35, v26 + v40, &qword_1ECE0CDC0, &unk_1DF22D7C0);
    LOBYTE(v56) = 6;
    v36 = v41;
    v37 = v51;
    sub_1DF22B480();
    (*(v27 + 8))(v31, v37);
    sub_1DF1936EC(v36, v26 + v38, &qword_1ECE0CDC0, &unk_1DF22D7C0);
    sub_1DF1992DC(v26, v39, type metadata accessor for DediscoAnalytics);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  return sub_1DF199344(v26, type metadata accessor for DediscoAnalytics);
}

uint64_t sub_1DF1982D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD70, &qword_1DF2300E0);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v109 = &v99 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v108 = &v99 - v3;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD60, &qword_1DF22FFC0);
  v107 = *(v113 - 8);
  v4 = MEMORY[0x1EEE9AC00](v113);
  v116 = (&v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v106 = (&v99 - v6);
  v7 = type metadata accessor for LedgerState(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v112 = (&v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v9);
  v111 = (&v99 - v12);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v99 - v14);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v99 - v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D350, &qword_1DF2300E8);
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E7CC0];
  *(v18 + 32) = sub_1DF18FE5C(MEMORY[0x1E69E7CC0]);
  strcpy((v18 + 16), "DediscoGraph");
  *(v18 + 29) = 0;
  *(v18 + 30) = -5120;
  v104 = v18;
  v20 = sub_1DF18FE5C(v19);
  swift_beginAccess();
  v117 = (v18 + 32);
  *(v18 + 32) = v20;

  v21 = 0;
  v114 = 0x80000001DF23D9A0;
  v118 = v19;
  do
  {
    v22 = *(&unk_1F5A470C0 + v21 + 32);
    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = 0x6843746567647562;
        v24 = 0xEB000000006B6365;
        goto LABEL_16;
      }

      if (v22 != 4)
      {
        if (v22 == 5)
        {
          v24 = 0xE600000000000000;
          v23 = 0x64616F6C7075;
          goto LABEL_16;
        }

        goto LABEL_13;
      }

      v23 = 0x4364616F6C796170;
      v24 = 0xEF6E6F6974616572;
    }

    else
    {
      if (!v22)
      {
        v24 = 0xE700000000000000;
        v23 = 0x6E776F6E6B6E75;
        goto LABEL_16;
      }

      if (v22 != 1)
      {
        if (v22 == 2)
        {
          v23 = 0x7A696D6F646E6172;
          v24 = 0xED00006E6F697461;
          goto LABEL_16;
        }

LABEL_13:
        v24 = 0xE700000000000000;
        v23 = 0x746C7561666564;
        goto LABEL_16;
      }

      v23 = 0xD000000000000010;
      v24 = v114;
    }

LABEL_16:
    v120 = v23;
    v121 = v24;

    MEMORY[0x1E12CF820](0x6564656563637553, 0xE900000000000064);

    v25 = v120;
    v26 = v121;
    sub_1DF22A740();
    *v17 = v25;
    v17[1] = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v118 = sub_1DF17483C(0, v118[2] + 1, 1, v118);
    }

    v28 = v118[2];
    v27 = v118[3];
    if (v28 >= v27 >> 1)
    {
      v118 = sub_1DF17483C((v27 > 1), v28 + 1, 1, v118);
    }

    v29 = v118;
    v118[2] = v28 + 1;
    v115 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v30 = *(v8 + 72);
    sub_1DF199278(v17, v29 + v115 + v30 * v28);
    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v31 = 0x6843746567647562;
        v32 = 0xEB000000006B6365;
        goto LABEL_34;
      }

      if (v22 != 4)
      {
        if (v22 == 5)
        {
          v32 = 0xE600000000000000;
          v31 = 0x64616F6C7075;
          goto LABEL_34;
        }

        goto LABEL_31;
      }

      v31 = 0x4364616F6C796170;
      v32 = 0xEF6E6F6974616572;
    }

    else
    {
      if (!v22)
      {
        v32 = 0xE700000000000000;
        v31 = 0x6E776F6E6B6E75;
        goto LABEL_34;
      }

      if (v22 != 1)
      {
        if (v22 == 2)
        {
          v31 = 0x7A696D6F646E6172;
          v32 = 0xED00006E6F697461;
          goto LABEL_34;
        }

LABEL_31:
        v32 = 0xE700000000000000;
        v31 = 0x746C7561666564;
        goto LABEL_34;
      }

      v31 = 0xD000000000000010;
      v32 = v114;
    }

LABEL_34:
    v33 = v115;
    v120 = v31;
    v121 = v32;

    MEMORY[0x1E12CF820](0x64656C696146, 0xE600000000000000);

    v34 = v120;
    v35 = v121;
    sub_1DF22A740();
    *v15 = v34;
    v15[1] = v35;
    v37 = v118[2];
    v36 = v118[3];
    if (v37 >= v36 >> 1)
    {
      v118 = sub_1DF17483C((v36 > 1), v37 + 1, 1, v118);
    }

    v38 = v118;
    v118[2] = v37 + 1;
    v39 = v38 + v33;
    sub_1DF199278(v15, v38 + v33 + v37 * v30);
    v21 += 4;
  }

  while (v21 != 24);
  v105 = v39;
  v110 = v118[2];
  if (!v110)
  {
LABEL_80:

    return v104;
  }

  v40 = 0;
  v41 = v118 + v33;
  while (2)
  {
    if (v40 < v118[2])
    {
      v44 = v111;
      sub_1DF1992DC(v41, v111, type metadata accessor for LedgerState);
      v45 = *v44;
      v46 = v44[1];
      v47 = v44;
      v48 = v106;
      sub_1DF1992DC(v47, v106, type metadata accessor for LedgerState);
      *(v48 + *(v113 + 52)) = MEMORY[0x1E69E7CC0];
      v49 = v117;
      swift_beginAccess();
      sub_1DF196EF8(v48, v116);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = *v49;
      v119[0] = v51;
      v53 = sub_1DF175254(v45, v46);
      v54 = v51[2];
      v55 = (v52 & 1) == 0;
      v56 = v54 + v55;
      if (__OFADD__(v54, v55))
      {
        goto LABEL_82;
      }

      v57 = v52;
      if (v51[3] >= v56)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v60 = v119[0];
          if ((v52 & 1) == 0)
          {
            goto LABEL_49;
          }
        }

        else
        {
          sub_1DF17605C();
          v60 = v119[0];
          if ((v57 & 1) == 0)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        sub_1DF1A5DF0(v56, isUniquelyReferenced_nonNull_native);
        v58 = sub_1DF175254(v45, v46);
        if ((v57 & 1) != (v59 & 1))
        {
          goto LABEL_85;
        }

        v53 = v58;
        v60 = v119[0];
        if ((v57 & 1) == 0)
        {
LABEL_49:
          v60[(v53 >> 6) + 8] |= 1 << v53;
          v61 = (v60[6] + 16 * v53);
          *v61 = v45;
          v61[1] = v46;
          v62 = v60[7];
          v114 = *(v107 + 9);
          sub_1DF196EF8(v116, v62 + v114 * v53);
          v63 = v60[2];
          v64 = __OFADD__(v63, 1);
          v65 = v63 + 1;
          if (v64)
          {
            goto LABEL_84;
          }

          v60[2] = v65;

LABEL_40:
          ++v40;
          *v117 = v60;
          swift_endAccess();
          sub_1DF199344(v111, type metadata accessor for LedgerState);
          v41 += v30;
          v43 = v108;
          if (v110 == v40)
          {
            v66 = 0;
            v116 = (v107 + 56);
            v111 = v118[2];
            v103 = (v107 + 48);
            v106 = (v118 + v115 + 8);
            v67 = v113;
            while (1)
            {
              if (v66 >= v118[2])
              {
                goto LABEL_83;
              }

              v115 = v66;
              sub_1DF1992DC(&v105[v66 * v30], v112, type metadata accessor for LedgerState);
              if (v111)
              {
                break;
              }

LABEL_54:
              v66 = v115 + 1;
              sub_1DF199344(v112, type metadata accessor for LedgerState);
              if (v66 == v110)
              {
                goto LABEL_80;
              }
            }

            v68 = v111;
            v69 = *v112;
            v70 = v112[1];
            v71 = v106;
            while (2)
            {
              v73 = *(v71 - 1);
              v74 = *v71;
              v75 = v69 == v73 && v70 == v74;
              if (v75 || (sub_1DF22B620() & 1) != 0)
              {
LABEL_61:
                v71 = (v71 + v30);
                if (!--v68)
                {
                  goto LABEL_54;
                }

                continue;
              }

              break;
            }

            v76 = *v117;
            if ((*v117)[2])
            {

              v77 = sub_1DF175254(v69, v70);
              if (v78)
              {
                sub_1DF17A6A8(v76[7] + v114 * v77, v43, &qword_1ECE0CD60, &qword_1DF22FFC0);

                v79 = v67;
                v80 = *v116;
                (*v116)(v43, 0, 1, v79);
                sub_1DF1964C0(v43);
                if (v76[2])
                {

                  v81 = sub_1DF175254(v73, v74);
                  if (v82)
                  {
                    v83 = v109;
                    sub_1DF17A6A8(v76[7] + v81 * v114, v109, &qword_1ECE0CD60, &qword_1DF22FFC0);

                    v84 = v113;
                    v80(v83, 0, 1, v113);
                    v67 = v84;
                    sub_1DF1964C0(v83);
                    v107 = sub_1DF1623A4(&v120);
                    v85 = sub_1DF193214(v119, v69, v70);
                    v87 = v86;
                    if ((*v103)(v86, 1, v67))
                    {

                      (v85)(v119, 0);
                      (v107)(&v120, 0);
                      v43 = v108;
                    }

                    else
                    {
                      v102 = v85;
                      v90 = *(v67 + 52);
                      v91 = *(v87 + v90);

                      v92 = swift_isUniquelyReferenced_nonNull_native();
                      v101 = v90;
                      *(v87 + v90) = v91;
                      v43 = v108;
                      v100 = v87;
                      if ((v92 & 1) == 0)
                      {
                        v91 = sub_1DF174730(0, *(v91 + 2) + 1, 1, v91);
                        *(v87 + v101) = v91;
                      }

                      v94 = *(v91 + 2);
                      v93 = *(v91 + 3);
                      v95 = v94 + 1;
                      if (v94 >= v93 >> 1)
                      {
                        v99 = v94 + 1;
                        v97 = sub_1DF174730((v93 > 1), v94 + 1, 1, v91);
                        v95 = v99;
                        v91 = v97;
                        *(v100 + v101) = v97;
                      }

                      *(v91 + 2) = v95;
                      v96 = &v91[32 * v94];
                      *(v96 + 4) = v69;
                      *(v96 + 5) = v70;
                      *(v96 + 6) = v73;
                      *(v96 + 7) = v74;
                      (v102)(v119, 0);
                      (v107)(&v120, 0);
                      v67 = v113;
                    }

                    goto LABEL_61;
                  }
                }

                v88 = v109;
                v89 = v113;
                v80(v109, 1, 1, v113);
                v67 = v89;
                v72 = v88;
LABEL_60:
                sub_1DF1964C0(v72);
                goto LABEL_61;
              }
            }

            (*v116)(v43, 1, 1, v67);
            v72 = v43;
            goto LABEL_60;
          }

          continue;
        }
      }

      v42 = v60[7];
      v114 = *(v107 + 9);
      sub_1DF1936EC(v116, v42 + v114 * v53, &qword_1ECE0CD60, &qword_1DF22FFC0);
      goto LABEL_40;
    }

    break;
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  result = sub_1DF22B660();
  __break(1u);
  return result;
}

unint64_t sub_1DF198FF0()
{
  result = qword_1ECE0D3C0;
  if (!qword_1ECE0D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D3C0);
  }

  return result;
}

uint64_t sub_1DF199044(void *a1)
{
  a1[1] = sub_1DF1990F0(&qword_1ECE0D3D0, type metadata accessor for DediscoAnalytics, &protocol conformance descriptor for DediscoAnalytics);
  a1[2] = sub_1DF1990F0(&qword_1ECE0D3D8, type metadata accessor for DediscoAnalytics, &protocol conformance descriptor for DediscoAnalytics);
  result = sub_1DF1990F0(&qword_1ECE0D3E0, type metadata accessor for DediscoAnalytics, &protocol conformance descriptor for DediscoAnalytics);
  a1[3] = result;
  return result;
}

uint64_t sub_1DF1990F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DF199174()
{
  result = qword_1ECE0D3E8;
  if (!qword_1ECE0D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D3E8);
  }

  return result;
}

unint64_t sub_1DF1991CC()
{
  result = qword_1ECE0D3F0;
  if (!qword_1ECE0D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D3F0);
  }

  return result;
}

unint64_t sub_1DF199224()
{
  result = qword_1ECE0D3F8;
  if (!qword_1ECE0D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D3F8);
  }

  return result;
}

uint64_t sub_1DF199278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LedgerState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF1992DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF199344(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MLHostAsset.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20LighthouseBackground11MLHostAsset_url;
  v4 = sub_1DF22A6B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLHostAsset.deinit()
{
  v1 = v0;
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF22A8C0();
  __swift_project_value_buffer(v2, qword_1ED8E92C0);

  v3 = sub_1DF22A8A0();
  v4 = sub_1DF22B100();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26 = v6;
    *v5 = 136315138;
    v7 = [*(v0 + OBJC_IVAR____TtC20LighthouseBackground11MLHostAsset_autoAsset) description];
    v8 = sub_1DF22ACC0();
    v10 = v9;

    v11 = sub_1DF160728(v8, v10, &v26);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_1DF15A000, v3, v4, "MAAutoAsset endLockUsage: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12D0B40](v6, -1, -1);
    MEMORY[0x1E12D0B40](v5, -1, -1);
  }

  v12 = OBJC_IVAR____TtC20LighthouseBackground11MLHostAsset_autoAsset;
  v13 = *(v0 + OBJC_IVAR____TtC20LighthouseBackground11MLHostAsset_autoAsset);

  v14 = sub_1DF22ACA0();

  v15 = [v13 endLockUsageSync_];

  if (v15)
  {
    v16 = v15;
    v17 = sub_1DF22A8A0();
    v18 = sub_1DF22B110();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v16;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_1DF15A000, v17, v18, "MAAutoAsset endLockUsage error: %@", v19, 0xCu);
      sub_1DF16184C(v20, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v20, -1, -1);
      MEMORY[0x1E12D0B40](v19, -1, -1);
      v16 = v17;
      v17 = v21;
    }
  }

  v23 = OBJC_IVAR____TtC20LighthouseBackground11MLHostAsset_url;
  v24 = sub_1DF22A6B0();
  (*(*(v24 - 8) + 8))(v1 + v23, v24);

  return v1;
}

uint64_t MLHostAsset.__deallocating_deinit()
{
  MLHostAsset.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DF1997C8(SEL *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC20LighthouseBackground11MLHostAsset_autoAsset) assetSelector];
  v4 = [v3 *a1];

  v5 = sub_1DF22ACC0();
  return v5;
}

void sub_1DF199848()
{
  sub_1DF22A660();

  JUMPOUT(0x1E12CF4A0);
}

void sub_1DF1998C8(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69B1908]) init];
  [v3 setInterestAcrossTermination_];
  [v3 setPreventGarbageCollectionSecs_];

  *a2 = v3;
}

id sub_1DF199960(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t sub_1DF1999C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "failedToGetAutoAsset";
  v4 = 0xD00000000000001ELL;
  if (v2 == 1)
  {
    v5 = 0xD00000000000001ELL;
  }

  else
  {
    v5 = 0xD000000000000023;
  }

  if (v2 == 1)
  {
    v6 = "failedToGetAutoAsset";
  }

  else
  {
    v6 = "failedToExpressInterestInAsset";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "CategoricalType";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000023;
    v3 = "failedToExpressInterestInAsset";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000014;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "CategoricalType";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DF22B620();
  }

  return v11 & 1;
}

uint64_t sub_1DF199A98()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF199B34(uint64_t a1)
{
  sub_1DF22AD20();
}

uint64_t sub_1DF199BBC(uint64_t a1)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

unint64_t sub_1DF199C54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DF19B294(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DF199C84(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = "failedToGetAutoAsset";
  v4 = 0xD00000000000001ELL;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000023;
    v3 = "failedToExpressInterestInAsset";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "CategoricalType";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t static MLHostAsset.isRemoteAssetAvailable(context:assetType:assetSpecifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DF199DB8;

  return sub_1DF19BCE4(a1, a2, a3, a4, a5);
}

uint64_t sub_1DF199DB8(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_1DF199EC0(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D448, &qword_1DF2305D8);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

void sub_1DF199F90(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D468, &qword_1DF2305E8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_1DF19DB18;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF19A310;
  aBlock[3] = &block_descriptor_18;
  v10 = _Block_copy(aBlock);

  [a2 currentStatus_];
  _Block_release(v10);
}

void sub_1DF19A140(void *a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v4 = sub_1DF22A8C0();
    __swift_project_value_buffer(v4, qword_1ED8E92C0);
    v5 = a2;
    v6 = sub_1DF22A8A0();
    v7 = sub_1DF22B110();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1DF15A000, v6, v7, "MAAutoAsset currentStatus failed: %@", v8, 0xCu);
      sub_1DF16184C(v9, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v9, -1, -1);
      MEMORY[0x1E12D0B40](v8, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D468, &qword_1DF2305E8);
    sub_1DF22AFA0();
  }

  else
  {
    if (a1)
    {
      v12 = a1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D468, &qword_1DF2305E8);
    sub_1DF22AFA0();
  }
}

void sub_1DF19A310(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t static MLHostAsset.getRemoteAsset(context:assetType:assetSpecifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DF19A474;

  return sub_1DF19B2E0(a1, a2, a3, a4, a5);
}

uint64_t sub_1DF19A474(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_1DF19A570(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D430, &qword_1DF2305C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v31 - v8;
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v10 = sub_1DF22A8C0();
  __swift_project_value_buffer(v10, qword_1ED8E92C0);
  v11 = a2;
  v12 = sub_1DF22A8A0();
  v13 = sub_1DF22B0F0();

  v14 = os_log_type_enabled(v12, v13);
  v33 = v11;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v32 = v5;
    v16 = v15;
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315138;
    v18 = [v11 description];
    v31[0] = v9;
    v31[1] = v7;
    v19 = a1;
    v20 = v18;
    v21 = sub_1DF22ACC0();
    v23 = v22;

    v24 = sub_1DF160728(v21, v23, aBlock);

    *(v16 + 4) = v24;
    a1 = v19;
    v9 = v31[0];
    _os_log_impl(&dword_1DF15A000, v12, v13, "MAAutoAsset lockContent: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1E12D0B40](v17, -1, -1);
    v25 = v16;
    v5 = v32;
    MEMORY[0x1E12D0B40](v25, -1, -1);
  }

  v26 = sub_1DF22ACA0();
  if (qword_1ECE0C750 != -1)
  {
    swift_once();
  }

  v27 = qword_1ECE0D408;
  (*(v6 + 16))(v9, a1, v5);
  v28 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v29 = swift_allocObject();
  (*(v6 + 32))(v29 + v28, v9, v5);
  aBlock[4] = sub_1DF19D8B8;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF19B0FC;
  aBlock[3] = &block_descriptor;
  v30 = _Block_copy(aBlock);

  [v33 lockContent:v26 withUsagePolicy:v27 withTimeout:0 completion:v30];
  _Block_release(v30);
}

void sub_1DF19A8F8(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v66 = a6;
  v10 = sub_1DF22A6B0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v60 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D428, &qword_1DF2305C0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v60 - v21;
  if (a5)
  {
    v23 = a5;
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v24 = sub_1DF22A8C0();
    __swift_project_value_buffer(v24, qword_1ED8E92C0);
    v25 = a5;
    v26 = sub_1DF22A8A0();
    v27 = sub_1DF22B110();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = a5;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_1DF15A000, v26, v27, "MAAutoAsset lockContent failed: %@", v28, 0xCu);
      sub_1DF16184C(v29, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v29, -1, -1);
      MEMORY[0x1E12D0B40](v28, -1, -1);
    }

    (*(v11 + 56))(v22, 1, 1, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D430, &qword_1DF2305C8);
    sub_1DF22AFA0();

    return;
  }

  if ((a2 & 1) == 0)
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v37 = sub_1DF22A8C0();
    __swift_project_value_buffer(v37, qword_1ED8E92C0);
    v33 = sub_1DF22A8A0();
    v34 = sub_1DF22B110();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_18;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "MAAutoAsset lockContent failed: locked false";
    goto LABEL_17;
  }

  sub_1DF19D848(a3, v20);
  if ((*(v11 + 48))(v20, 1, v10) == 1)
  {
    sub_1DF16184C(v20, &qword_1ECE0D428, &qword_1DF2305C0);
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v32 = sub_1DF22A8C0();
    __swift_project_value_buffer(v32, qword_1ED8E92C0);
    v33 = sub_1DF22A8A0();
    v34 = sub_1DF22B110();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_18;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "MAAutoAsset lockContent failed: url nil";
LABEL_17:
    _os_log_impl(&dword_1DF15A000, v33, v34, v36, v35, 2u);
    MEMORY[0x1E12D0B40](v35, -1, -1);
LABEL_18:

    (*(v11 + 56))(v22, 1, 1, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D430, &qword_1DF2305C8);
    sub_1DF22AFA0();
    return;
  }

  (*(v11 + 32))(v16, v20, v10);
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v38 = sub_1DF22A8C0();
  v39 = __swift_project_value_buffer(v38, qword_1ED8E92C0);
  v64 = *(v11 + 16);
  v65 = v11 + 16;
  v64(v14, v16, v10);
  v40 = sub_1DF22A8A0();
  v41 = sub_1DF22B0F0();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v62 = v39;
    v43 = v42;
    v61 = swift_slowAlloc();
    v67 = v61;
    *v43 = 136315138;
    v44 = v43;
    sub_1DF19D97C();
    v60 = sub_1DF22B600();
    v46 = v45;
    v63 = *(v11 + 8);
    v63(v14, v10);
    v47 = sub_1DF160728(v60, v46, &v67);

    v48 = v44;
    *(v44 + 1) = v47;
    _os_log_impl(&dword_1DF15A000, v40, v41, "MAAutoAsset url: %s", v44, 0xCu);
    v49 = v61;
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    MEMORY[0x1E12D0B40](v49, -1, -1);
    MEMORY[0x1E12D0B40](v48, -1, -1);
  }

  else
  {

    v63 = *(v11 + 8);
    v63(v14, v10);
  }

  v50 = a4;
  v51 = sub_1DF22A8A0();
  v52 = sub_1DF22B0F0();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v67 = v62;
    *v53 = 136315138;
    if (a4)
    {
      v54 = [v50 description];
      v55 = sub_1DF22ACC0();
      v57 = v56;
    }

    else
    {
      v57 = 0xE300000000000000;
      v55 = 4271950;
    }

    v58 = sub_1DF160728(v55, v57, &v67);

    *(v53 + 4) = v58;
    _os_log_impl(&dword_1DF15A000, v51, v52, "MAAutoAsset newerInProgress: %s", v53, 0xCu);
    v59 = v62;
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    MEMORY[0x1E12D0B40](v59, -1, -1);
    MEMORY[0x1E12D0B40](v53, -1, -1);
  }

  v64(v22, v16, v10);
  (*(v11 + 56))(v22, 0, 1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D430, &qword_1DF2305C8);
  sub_1DF22AFA0();
  v63(v16, v10);
}

uint64_t sub_1DF19B0FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D428, &qword_1DF2305C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v15 = *(a1 + 32);
  if (a4)
  {
    sub_1DF22A670();
    v16 = sub_1DF22A6B0();
    (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
  }

  else
  {
    v17 = sub_1DF22A6B0();
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  }

  v18 = a2;
  v19 = a5;
  v20 = a6;
  v15(v18, a3, v14, a5, a6);

  return sub_1DF16184C(v14, &qword_1ECE0D428, &qword_1DF2305C0);
}

unint64_t sub_1DF19B294(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DF22B420();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DF19B2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_1DF22A6B0();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D428, &qword_1DF2305C0);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF19B428, 0, 0);
}

uint64_t sub_1DF19B428()
{
  v34 = v0;
  v33[1] = *MEMORY[0x1E69E9840];
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF22A8C0();
  v0[15] = __swift_project_value_buffer(v1, qword_1ED8E92C0);

  v2 = sub_1DF22A8A0();
  v3 = sub_1DF22B0F0();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[6];
    v4 = v0[7];
    v7 = v0[4];
    v6 = v0[5];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33[0] = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1DF160728(v7, v6, v33);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_1DF160728(v5, v4, v33);
    _os_log_impl(&dword_1DF15A000, v2, v3, "Querying MAAutoAsset for %s: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D0B40](v9, -1, -1);
    MEMORY[0x1E12D0B40](v8, -1, -1);
  }

  v10 = objc_allocWithZone(MEMORY[0x1E69B1910]);
  v11 = sub_1DF22ACA0();
  v12 = sub_1DF22ACA0();
  v13 = [v10 initForAssetType:v11 withAssetSpecifier:v12];
  v0[16] = v13;

  v0[2] = 0;
  v14 = objc_allocWithZone(MEMORY[0x1E69B18F8]);
  v15 = v13;
  v16 = sub_1DF22ACA0();
  v17 = [v14 initForClientName:v16 selectingAsset:v15 error:v0 + 2];
  v0[17] = v17;

  v18 = v0[2];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1DF22A8A0();
    v21 = sub_1DF22B110();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v18;
      v24 = v19;
      _os_log_impl(&dword_1DF15A000, v20, v21, "MAAutoAsset failed: %@", v22, 0xCu);
      sub_1DF16184C(v23, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v23, -1, -1);
      MEMORY[0x1E12D0B40](v22, -1, -1);
      v25 = v24;
    }

    else
    {
      v24 = v17;
      v25 = v20;
      v17 = v19;
      v20 = v19;
    }

    v31 = v0[1];

    return v31(0);
  }

  else
  {
    v26 = v0[3];
    v27 = swift_task_alloc();
    v0[18] = v27;
    *(v27 + 16) = v17;
    *(v27 + 24) = v26;
    v28 = swift_task_alloc();
    v0[19] = v28;
    *v28 = v0;
    v28[1] = sub_1DF19B908;
    v29 = v0[14];
    v30 = v0[12];

    return MEMORY[0x1EEE6DDE0](v29, 0, 0, 0xD000000000000031, 0x80000001DF23DA30, sub_1DF19D840, v27, v30);
  }
}

uint64_t sub_1DF19B908()
{

  return MEMORY[0x1EEE6DFA0](sub_1DF19BA4C, 0, 0);
}

uint64_t sub_1DF19BA4C()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[9];
  sub_1DF19D848(v0[14], v1);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1DF16184C(v0[13], &qword_1ECE0D428, &qword_1DF2305C0);
    v4 = sub_1DF22A8A0();
    v5 = sub_1DF22B110();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[16];
    v8 = v0[17];
    v9 = v0[14];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DF15A000, v4, v5, "MAAutoAsset lockContent failed: url nil", v10, 2u);
      MEMORY[0x1E12D0B40](v10, -1, -1);
    }

    else
    {
    }

    sub_1DF16184C(v9, &qword_1ECE0D428, &qword_1DF2305C0);
    v23 = 0;
  }

  else
  {
    v12 = v0[16];
    v11 = v0[17];
    v13 = v0[13];
    v15 = v0[10];
    v14 = v0[11];
    v16 = v0[8];
    v17 = v0[9];
    v18 = v0[3];
    sub_1DF16184C(v0[14], &qword_1ECE0D428, &qword_1DF2305C0);

    v19 = *(v17 + 32);
    v19(v14, v13, v16);
    v19(v15, v14, v16);
    v20 = v18 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName;
    v22 = *(v18 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName);
    v21 = *(v20 + 8);
    type metadata accessor for MLHostAsset(0);
    v23 = swift_allocObject();
    v19(v23 + OBJC_IVAR____TtC20LighthouseBackground11MLHostAsset_url, v15, v16);
    *(v23 + OBJC_IVAR____TtC20LighthouseBackground11MLHostAsset_autoAsset) = v11;
    v24 = (v23 + OBJC_IVAR____TtC20LighthouseBackground11MLHostAsset_clientName);
    *v24 = v22;
    v24[1] = v21;
  }

  v25 = v0[1];

  return v25(v23);
}

uint64_t sub_1DF19BCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[28] = a4;
  v5[29] = a5;
  v5[26] = a2;
  v5[27] = a3;
  v5[25] = a1;
  v6 = sub_1DF22A6B0();
  v5[30] = v6;
  v5[31] = *(v6 - 8);
  v5[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF19BDD8, 0, 0);
}

uint64_t sub_1DF19BDD8()
{
  v40 = v0;
  v39[1] = *MEMORY[0x1E69E9840];
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF22A8C0();
  v0[33] = __swift_project_value_buffer(v1, qword_1ED8E92C0);

  v2 = sub_1DF22A8A0();
  v3 = sub_1DF22B0F0();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[28];
    v4 = v0[29];
    v7 = v0[26];
    v6 = v0[27];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v39[0] = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1DF160728(v7, v6, v39);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_1DF160728(v5, v4, v39);
    _os_log_impl(&dword_1DF15A000, v2, v3, "Querying MAAutoAsset for %s: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D0B40](v9, -1, -1);
    MEMORY[0x1E12D0B40](v8, -1, -1);
  }

  v10 = objc_allocWithZone(MEMORY[0x1E69B1910]);
  v11 = sub_1DF22ACA0();
  v12 = sub_1DF22ACA0();
  v13 = [v10 initForAssetType:v11 withAssetSpecifier:v12];
  v0[34] = v13;

  v0[18] = 0;
  v14 = objc_allocWithZone(MEMORY[0x1E69B18F8]);
  v15 = v13;
  v16 = sub_1DF22ACA0();
  v17 = [v14 initForClientName:v16 selectingAsset:v15 error:v0 + 18];
  v0[35] = v17;

  v18 = v0[18];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1DF22A8A0();
    v21 = sub_1DF22B110();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v18;
      v24 = v19;
      _os_log_impl(&dword_1DF15A000, v20, v21, "MAAutoAsset failed: %@", v22, 0xCu);
      sub_1DF16184C(v23, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v23, -1, -1);
      MEMORY[0x1E12D0B40](v22, -1, -1);
    }

    sub_1DF19DA38();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();

    v26 = v0[1];

    return v26(0);
  }

  else
  {
    v28 = v0 + 19;

    v29 = sub_1DF22A8A0();
    v30 = sub_1DF22B0F0();

    if (os_log_type_enabled(v29, v30))
    {
      v38 = v0[29];
      v31 = v0[28];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v39[0] = v33;
      *v32 = 136315138;
      v34 = v31;
      v28 = v0 + 19;
      *(v32 + 4) = sub_1DF160728(v34, v38, v39);
      _os_log_impl(&dword_1DF15A000, v29, v30, "MAAutoAsset expressing interest for assetSpecifier: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x1E12D0B40](v33, -1, -1);
      MEMORY[0x1E12D0B40](v32, -1, -1);
    }

    v35 = sub_1DF22ACA0();
    v0[36] = v35;
    if (qword_1ECE0C748 != -1)
    {
      swift_once();
    }

    v36 = qword_1ECE0D400;
    v0[2] = v0;
    v0[7] = v28;
    v0[3] = sub_1DF19C3F0;
    v37 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D440, &qword_1DF2305D0);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1DF199EC0;
    v0[13] = &block_descriptor_9;
    v0[14] = v37;
    [v17 interestInContent:v35 withInterestPolicy:v36 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1DF19C3F0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 296) = v1;
  if (v1)
  {
    v2 = sub_1DF19D48C;
  }

  else
  {
    v2 = sub_1DF19C52C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF19C52C()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);

  v3 = swift_task_alloc();
  *(v0 + 304) = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  *(v0 + 312) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D460, &qword_1DF2305E0);
  *v4 = v0;
  v4[1] = sub_1DF19C66C;

  return MEMORY[0x1EEE6DDE0](v0 + 176, 0, 0, 0xD000000000000039, 0x80000001DF23DAF0, sub_1DF19DA8C, v3, v5);
}

uint64_t sub_1DF19C66C()
{

  return MEMORY[0x1EEE6DFA0](sub_1DF19C7B0, 0, 0);
}

uint64_t sub_1DF19C7B0(uint64_t a1)
{
  v70 = v1;
  v69[1] = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 176);
  *(v1 + 320) = v2;
  if (!v2)
  {
    v16 = sub_1DF22A8A0();
    v17 = sub_1DF22B110();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DF15A000, v16, v17, "MAAutoAsset failed at calling currentStatus.", v18, 2u);
      MEMORY[0x1E12D0B40](v18, -1, -1);
    }

    v20 = *(v1 + 272);
    v19 = *(v1 + 280);

    sub_1DF19DA38();
    swift_allocError();
    *v21 = 2;
    swift_willThrow();

    v22 = *(v1 + 8);
    v23 = 0;
    goto LABEL_35;
  }

  v3 = v2;
  v4 = sub_1DF22A8A0();
  v5 = sub_1DF22B0F0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v2;
    v8 = v3;
    _os_log_impl(&dword_1DF15A000, v4, v5, "MAAutoAsset status: %@", v6, 0xCu);
    sub_1DF16184C(v7, &qword_1ECE0C7E8, &qword_1DF230550);
    MEMORY[0x1E12D0B40](v7, -1, -1);
    MEMORY[0x1E12D0B40](v6, -1, -1);
  }

  v9 = [v3 availableForUseError];
  if (v9)
  {
    *(v1 + 184) = v9;
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D448, &qword_1DF2305D8);
    sub_1DF19D9EC();
    if (swift_dynamicCast())
    {
      v11 = *(v1 + 192);
      v12 = [v11 domain];
      v13 = sub_1DF22ACC0();
      v15 = v14;

      if (v13 == 0xD000000000000024 && 0x80000001DF23DB30 == v15)
      {
      }

      else
      {
        v31 = sub_1DF22B620();

        if ((v31 & 1) == 0)
        {

LABEL_24:
          goto LABEL_25;
        }
      }

      if (([v11 code]| 4) == 0x183D)
      {
        v32 = sub_1DF22A8A0();
        v33 = sub_1DF22B0F0();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_1DF15A000, v32, v33, "Found an error that we can proceed through, continuing...", v34, 2u);
          MEMORY[0x1E12D0B40](v34, -1, -1);
        }

        v35 = *(v1 + 280);

        goto LABEL_34;
      }

      v11 = v11;
      v36 = sub_1DF22A8A0();
      v37 = sub_1DF22B110();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138412290;
        *(v38 + 4) = v11;
        *v39 = v11;
        v40 = v3;
        v41 = v11;
        _os_log_impl(&dword_1DF15A000, v36, v37, "Found a real error, continuing: %@", v38, 0xCu);
        sub_1DF16184C(v39, &qword_1ECE0C7E8, &qword_1DF230550);
        MEMORY[0x1E12D0B40](v39, -1, -1);
        MEMORY[0x1E12D0B40](v38, -1, -1);
        v11 = v36;
        v36 = v41;
        v3 = v40;
      }

      goto LABEL_24;
    }

    v24 = v10;
    v25 = sub_1DF22A8A0();
    v26 = sub_1DF22B110();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = v24;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_1DF15A000, v25, v26, "Found an error which couldn't be cast to NSError: %@", v27, 0xCu);
      sub_1DF16184C(v28, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v28, -1, -1);
      MEMORY[0x1E12D0B40](v27, -1, -1);
    }

    else
    {
    }
  }

LABEL_25:
  v42 = [v3 availableForUseAttributes];
  if (v42)
  {
    v43 = v42;
    sub_1DF22ABA0();

    v44 = sub_1DF22A8A0();
    v45 = sub_1DF22B0F0();

    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v1 + 272);
    v48 = *(v1 + 280);
    if (v46)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v69[0] = v50;
      *v49 = 136315138;
      v51 = sub_1DF22ABB0();
      v68 = v3;
      v53 = v52;

      v54 = sub_1DF160728(v51, v53, v69);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_1DF15A000, v44, v45, "MAAutoAsset available: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x1E12D0B40](v50, -1, -1);
      MEMORY[0x1E12D0B40](v49, -1, -1);
    }

    else
    {
    }

LABEL_34:

    v22 = *(v1 + 8);
    v23 = 1;
LABEL_35:

    return v22(v23);
  }

  v55 = v3;
  v56 = sub_1DF22A8A0();
  v57 = sub_1DF22B0F0();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v58 = 138412290;
    *(v58 + 4) = v55;
    *v59 = v2;
    v60 = v55;
    _os_log_impl(&dword_1DF15A000, v56, v57, "MAAutoAsset not available on the device: %@", v58, 0xCu);
    sub_1DF16184C(v59, &qword_1ECE0C7E8, &qword_1DF230550);
    MEMORY[0x1E12D0B40](v59, -1, -1);
    MEMORY[0x1E12D0B40](v58, -1, -1);
  }

  v61 = swift_task_alloc();
  *(v1 + 328) = v61;
  *v61 = v1;
  v61[1] = sub_1DF19D07C;
  v62 = *(v1 + 224);
  v63 = *(v1 + 232);
  v64 = *(v1 + 208);
  v65 = *(v1 + 216);
  v66 = *(v1 + 200);

  return sub_1DF19B2E0(v66, v64, v65, v62, v63);
}

uint64_t sub_1DF19D07C(uint64_t a1)
{
  *(*v1 + 336) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DF19D1A8, 0, 0);
}

uint64_t sub_1DF19D1A8(uint64_t a1)
{
  v31 = v1;
  v30[1] = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 336);
  if (v2)
  {

    v3 = sub_1DF22A8A0();
    v4 = sub_1DF22B0F0();

    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v1 + 320);
    v7 = *(v1 + 280);
    if (v5)
    {
      log = v3;
      v27 = *(v1 + 272);
      v29 = *(v1 + 320);
      v9 = *(v1 + 248);
      v8 = *(v1 + 256);
      v10 = *(v1 + 240);
      v28 = *(v1 + 280);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v30[0] = v12;
      *v11 = 136315138;
      (*(v9 + 16))(v8, v2 + OBJC_IVAR____TtC20LighthouseBackground11MLHostAsset_url, v10);
      sub_1DF19D97C();
      v13 = sub_1DF22B600();
      v15 = v14;
      (*(v9 + 8))(v8, v10);
      v16 = sub_1DF160728(v13, v15, v30);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1DF15A000, log, v4, "MAAutoAsset available on the filesystem: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12D0B40](v12, -1, -1);
      MEMORY[0x1E12D0B40](v11, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v17 = sub_1DF22A8A0();
    v18 = sub_1DF22B0F0();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v1 + 320);
    v22 = *(v1 + 272);
    v21 = *(v1 + 280);
    if (v19)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DF15A000, v17, v18, "MAAutoAsset not available on the device after lock.", v23, 2u);
      MEMORY[0x1E12D0B40](v23, -1, -1);
    }

    else
    {
    }
  }

  v24 = *(v1 + 8);

  return v24(v2 != 0);
}

uint64_t sub_1DF19D48C(uint64_t a1)
{
  v2 = *(v1 + 288);
  v3 = *(v1 + 296);
  swift_willThrow();

  *(v1 + 160) = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D448, &qword_1DF2305D8);
  sub_1DF19D9EC();
  if (swift_dynamicCast())
  {

    v5 = *(v1 + 168);
    v6 = sub_1DF22A8A0();
    v7 = sub_1DF22B110();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&dword_1DF15A000, v6, v7, "MAAutoAsset interest failed: %@", v8, 0xCu);
      sub_1DF16184C(v9, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v9, -1, -1);
      MEMORY[0x1E12D0B40](v8, -1, -1);
    }

    v12 = *(v1 + 272);
    v11 = *(v1 + 280);

    sub_1DF19DA38();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
  }

  else
  {
    v14 = *(v1 + 280);
  }

  v15 = *(v1 + 8);

  return v15(0);
}

uint64_t type metadata accessor for MLHostAsset(uint64_t a1)
{
  result = qword_1ECE0D418;
  if (!qword_1ECE0D418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DF19D714(uint64_t a1)
{
  result = sub_1DF22A6B0();
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

uint64_t sub_1DF19D848(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D428, &qword_1DF2305C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DF19D8B8(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5)
{
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D430, &qword_1DF2305C8) - 8);
  v12 = v5 + ((*(v11 + 80) + 16) & ~*(v11 + 80));

  sub_1DF19A8F8(a1, a2, a3, a4, a5, v12);
}

double block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1DF19D97C()
{
  result = qword_1ECE0D438;
  if (!qword_1ECE0D438)
  {
    sub_1DF22A6B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D438);
  }

  return result;
}

unint64_t sub_1DF19D9EC()
{
  result = qword_1ECE0D450;
  if (!qword_1ECE0D450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECE0D450);
  }

  return result;
}

unint64_t sub_1DF19DA38()
{
  result = qword_1ECE0D458;
  if (!qword_1ECE0D458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D458);
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

void sub_1DF19DB18(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D468, &qword_1DF2305E8);

  sub_1DF19A140(a1, a2);
}

unint64_t sub_1DF19DBB8()
{
  result = qword_1ECE0D470;
  if (!qword_1ECE0D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D470);
  }

  return result;
}

unint64_t sub_1DF19DC10(uint64_t a1)
{
  *(a1 + 8) = sub_1DF19DA38();
  result = sub_1DF19DC40();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DF19DC40()
{
  result = qword_1ECE0D478;
  if (!qword_1ECE0D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D478);
  }

  return result;
}

BOOL sub_1DF19DC9C(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v6 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v8 = 0xD000000000000013;
    if (*v4 == 1)
    {
      v8 = 0xD000000000000010;
      v9 = 0x80000001DF23CF80;
    }

    else
    {
      v9 = 0x80000001DF23CFA0;
    }

    if (*v4)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0x546E776F6E6B6E75;
    }

    if (*v4)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xEE00726567676972;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        v12 = 0xD000000000000010;
      }

      else
      {
        v12 = 0xD000000000000013;
      }

      if (a1 == 1)
      {
        v13 = 0x80000001DF23CF80;
      }

      else
      {
        v13 = 0x80000001DF23CFA0;
      }

      if (v10 != v12)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v13 = 0xEE00726567676972;
      if (v10 != 0x546E776F6E6B6E75)
      {
        goto LABEL_2;
      }
    }

    if (v11 == v13)
    {

      return v6 != 0;
    }

LABEL_2:
    v5 = sub_1DF22B620();

    ++v4;
  }

  while ((v5 & 1) == 0);
  return v6 != 0;
}

LighthouseBackground::TaskValidationError_optional __swiftcall TaskValidationError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TaskValidationError.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x4564696C61766E69;
    if (v1 != 6)
    {
      v5 = 0x4F64696C61766E69;
    }

    v6 = 0xD000000000000019;
    if (v1 != 4)
    {
      v6 = 0xD000000000000010;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x4E64696C61766E69;
    v3 = 0xD000000000000011;
    if (v1 != 2)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0)
    {
      v2 = 0xD000000000000017;
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
}

void sub_1DF19DFBC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0xEE0065746144646ELL;
    v9 = 0x4564696C61766E69;
    if (v2 != 6)
    {
      v9 = 0x4F64696C61766E69;
      v8 = 0xED00006570795453;
    }

    v10 = 0x80000001DF23D290;
    v11 = 0xD000000000000019;
    if (v2 != 4)
    {
      v11 = 0xD000000000000010;
      v10 = 0x80000001DF23D2B0;
    }

    if (*v1 <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xEB00000000656D61;
    v4 = 0x4E64696C61766E69;
    v5 = 0x80000001DF23D250;
    v6 = 0xD000000000000011;
    if (v2 != 2)
    {
      v6 = 0xD000000000000012;
      v5 = 0x80000001DF23D270;
    }

    if (*v1)
    {
      v4 = 0xD000000000000017;
      v3 = 0x80000001DF23D230;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t _s20LighthouseBackground26validateTaskTriggerRequestyyAA0deF0VAA0D15ValidationErrorOYKF(uint64_t *a1, _BYTE *a2)
{
  v123 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7D8, &qword_1DF230700);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v120 = (&v112 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D480, &qword_1DF230708);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v112 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7E0, &unk_1DF22C510);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v112 - v13;
  v15 = *a1;
  v16 = a1[1];
  v121 = a1[2];
  v122 = v15;
  v17 = a1[4];
  v118 = a1[3];
  v119 = v16;
  v19 = a1[5];
  v18 = a1[6];
  v20 = a1[7];
  v117 = "setStatus8@NSError16";
  v21 = v128;
  sub_1DF22A880();
  if (v21)
  {

    v9[7](v7, 1, 1, v8);
    sub_1DF16184C(v7, &qword_1ECE0D480, &qword_1DF230708);
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v22 = sub_1DF22A8C0();
    __swift_project_value_buffer(v22, qword_1ED8E92C0);
    v23 = sub_1DF22A8A0();
    v24 = sub_1DF22B110();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v126 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1DF160728(0xD000000000000017, v117 | 0x8000000000000000, &v126);
      _os_log_impl(&dword_1DF15A000, v23, v24, "Failed to compile regex: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1E12D0B40](v26, -1, -1);
      MEMORY[0x1E12D0B40](v25, -1, -1);
    }

    *v123 = 0;
    LOBYTE(v126) = 0;
    sub_1DF1A09AC();
    return swift_willThrowTypedImpl();
  }

  v114 = v12;
  v115 = v19;
  v28 = v120;
  v116 = 0;
  v117 = v20;
  v9[7](v7, 0, 1, v8);
  (v9[4])(v14, v7, v8);
  v29 = v8;
  v30 = v9;
  v128 = v14;
  if ((v122 - 86401) < 0xFFFFFFFFFFFEAEBBLL)
  {
    v120 = v9;
    v31 = v121;
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v32 = sub_1DF22A8C0();
    __swift_project_value_buffer(v32, qword_1ED8E92C0);
    v34 = v118;
    v33 = v119;
    v35 = v17;
    sub_1DF180D2C(v119, v31, v118, v17);

    v36 = sub_1DF22A8A0();
    v37 = sub_1DF22B110();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = v35;
      v40 = v38;
      *v38 = 134217984;
      *(v38 + 4) = v122;
      sub_1DF180DA8(v33, v31, v34, v39);

      _os_log_impl(&dword_1DF15A000, v36, v37, "Invalid inactivityTimeout: %ld", v40, 0xCu);
      v41 = v29;
      MEMORY[0x1E12D0B40](v40, -1, -1);

      v42 = v128;
    }

    else
    {
      sub_1DF180DA8(v33, v31, v34, v35);

      v42 = v128;
      v41 = v29;
    }

    *v123 = 4;
    LOBYTE(v126) = 4;
    sub_1DF1A09AC();
    swift_willThrowTypedImpl();
    return v120[1](v42, v41);
  }

  v43 = v18;
  v44 = v121;
  if (!v121)
  {
    if (v18)
    {
      v45 = sub_1DF19DC9C(2, &unk_1F5A47240);
      if (v45)
      {
        goto LABEL_20;
      }
    }

    else if (sub_1DF19DC9C(0, &unk_1F5A47240))
    {
      return v30[1](v128, v29);
    }

    goto LABEL_43;
  }

  if (!v18)
  {
    if (sub_1DF19DC9C(1, &unk_1F5A47240))
    {
      goto LABEL_29;
    }

LABEL_43:
    v120 = v30;
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v59 = sub_1DF22A8C0();
    __swift_project_value_buffer(v59, qword_1ED8E92C0);
    v60 = v118;
    v61 = v119;
    v62 = v17;
    sub_1DF180D2C(v119, v44, v118, v17);

    v63 = sub_1DF22A8A0();
    v64 = sub_1DF22B110();
    sub_1DF180DA8(v61, v44, v60, v62);

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v113 = v29;
      v67 = v66;
      v126 = v66;
      *v65 = 136315138;
      v68 = 0x80000001DF23CFA0;
      v69 = 0xD000000000000013;
      if (!v18)
      {
        v69 = 0x546E776F6E6B6E75;
        v68 = 0xEE00726567676972;
      }

      v70 = 0x80000001DF23CF80;
      v71 = 0xD000000000000010;
      if (v18)
      {
        v71 = 0x546E776F6E6B6E75;
      }

      v72 = v120;
      if (v18)
      {
        v70 = 0xEE00726567676972;
      }

      if (v44)
      {
        v73 = v71;
      }

      else
      {
        v73 = v69;
      }

      if (v44)
      {
        v74 = v70;
      }

      else
      {
        v74 = v68;
      }

      v75 = sub_1DF160728(v73, v74, &v126);

      *(v65 + 4) = v75;
      v76 = v128;
      _os_log_impl(&dword_1DF15A000, v63, v64, "Invalid taskTriggerRequest category: %s.", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      v29 = v113;
      MEMORY[0x1E12D0B40](v67, -1, -1);
      MEMORY[0x1E12D0B40](v65, -1, -1);
    }

    else
    {

      v76 = v128;
      v72 = v120;
    }

    *v123 = 4;
    LOBYTE(v126) = 4;
    sub_1DF1A09AC();
    swift_willThrowTypedImpl();
    return v72[1](v76, v29);
  }

  if (!sub_1DF19DC9C(0, &unk_1F5A47240))
  {
    goto LABEL_43;
  }

LABEL_29:
  v50 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v50 = v119 & 0xFFFFFFFFFFFFLL;
  }

  if (!v50)
  {
    goto LABEL_37;
  }

  v51 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v51 = v118 & 0xFFFFFFFFFFFFLL;
  }

  if (!v51)
  {
LABEL_37:
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v52 = sub_1DF22A8C0();
    __swift_project_value_buffer(v52, qword_1ED8E92C0);
    v53 = sub_1DF22A8A0();
    v54 = sub_1DF22B110();
    v55 = os_log_type_enabled(v53, v54);
    v56 = v128;
    if (!v55)
    {
      goto LABEL_67;
    }

    v57 = swift_slowAlloc();
    *v57 = 0;
    v58 = "Invalid taskTriggerRequest: datastoreTriggerKey is empty.";
    goto LABEL_66;
  }

  v126 = v119;
  v127 = v44;
  v124 = 58;
  v125 = 0xE100000000000000;
  sub_1DF17924C();

  if (sub_1DF22B1D0())
  {

LABEL_62:
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v78 = sub_1DF22A8C0();
    __swift_project_value_buffer(v78, qword_1ED8E92C0);
    v53 = sub_1DF22A8A0();
    v54 = sub_1DF22B110();
    v79 = os_log_type_enabled(v53, v54);
    v56 = v128;
    if (!v79)
    {
      goto LABEL_67;
    }

    v57 = swift_slowAlloc();
    *v57 = 0;
    v58 = "Invalid taskTriggerRequest: datastoreTriggerKey is invalid.";
LABEL_66:
    _os_log_impl(&dword_1DF15A000, v53, v54, v58, v57, 2u);
    MEMORY[0x1E12D0B40](v57, -1, -1);
LABEL_67:

    *v123 = 4;
    LOBYTE(v126) = 4;
    sub_1DF1A09AC();
    swift_willThrowTypedImpl();
    return v30[1](v56, v29);
  }

  v126 = v118;
  v127 = v17;
  v124 = 58;
  v125 = 0xE100000000000000;
  v77 = sub_1DF22B1D0();

  if (v77)
  {
    goto LABEL_62;
  }

  v43 = v18;
  if (!v18)
  {
    return v30[1](v128, v29);
  }

LABEL_20:
  v46 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v46 = v115 & 0xFFFFFFFFFFFFLL;
  }

  if (v46)
  {
    v48 = v116;
    v47 = v117;
    if (!v117)
    {
      return v30[1](v128, v29);
    }

LABEL_24:
    if (!*(v47 + 16))
    {
      if (qword_1ED8E7530 != -1)
      {
        swift_once();
      }

      v84 = sub_1DF22A8C0();
      __swift_project_value_buffer(v84, qword_1ED8E92C0);
      v53 = sub_1DF22A8A0();
      v54 = sub_1DF22B110();
      v85 = os_log_type_enabled(v53, v54);
      v56 = v128;
      if (!v85)
      {
        goto LABEL_67;
      }

      v57 = swift_slowAlloc();
      *v57 = 0;
      v58 = "Invalid taskTriggerRequest: subscriptionTopics is empty";
      goto LABEL_66;
    }

    MEMORY[0x1EEE9AC00](v45);
    *(&v112 - 2) = v128;
    v49 = sub_1DF19F300(sub_1DF1A0B40, (&v112 - 4), v47);
    if (v49)
    {
      v126 = v115;
      v127 = v43;
      MEMORY[0x1EEE9AC00](v49);
      *(&v112 - 2) = &v126;
      if (sub_1DF16054C(sub_1DF1A0A00, (&v112 - 4), v47))
      {
        v116 = v48;
        return v30[1](v128, v29);
      }

      if (qword_1ED8E7530 != -1)
      {
        swift_once();
      }

      v104 = sub_1DF22A8C0();
      __swift_project_value_buffer(v104, qword_1ED8E92C0);
      v105 = v117;

      v96 = sub_1DF22A8A0();
      v106 = sub_1DF22B110();

      if (os_log_type_enabled(v96, v106))
      {
        v98 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v108 = v43;
        v99 = v107;
        v126 = v107;
        *v98 = 136315394;
        *(v98 + 4) = sub_1DF160728(v115, v108, &v126);
        *(v98 + 12) = 2080;
        v109 = MEMORY[0x1E12CF970](v105, MEMORY[0x1E69E6158]);
        v111 = sub_1DF160728(v109, v110, &v126);

        *(v98 + 14) = v111;
        v103 = v128;
        _os_log_impl(&dword_1DF15A000, v96, v106, "Trigger topic must be included in subscriptionTopics: %s not in %s", v98, 0x16u);
        swift_arrayDestroy();
        goto LABEL_92;
      }
    }

    else
    {
      if (qword_1ED8E7530 != -1)
      {
        swift_once();
      }

      v94 = sub_1DF22A8C0();
      __swift_project_value_buffer(v94, qword_1ED8E92C0);
      v95 = v117;

      v96 = sub_1DF22A8A0();
      v97 = sub_1DF22B110();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v126 = v99;
        *v98 = 136315138;
        v100 = MEMORY[0x1E12CF970](v95, MEMORY[0x1E69E6158]);
        v102 = sub_1DF160728(v100, v101, &v126);

        *(v98 + 4) = v102;
        v103 = v128;
        _os_log_impl(&dword_1DF15A000, v96, v97, "Invalid taskTriggerRequest format: %s", v98, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v99);
LABEL_92:
        MEMORY[0x1E12D0B40](v99, -1, -1);
        MEMORY[0x1E12D0B40](v98, -1, -1);

LABEL_94:
        *v123 = 4;
        LOBYTE(v126) = 4;
        sub_1DF1A09AC();
        swift_willThrowTypedImpl();
        return v30[1](v103, v29);
      }
    }

    v103 = v128;
    goto LABEL_94;
  }

  sub_1DF164BEC(&qword_1ECE0C718, &qword_1ECE0C7E0, &unk_1DF22C510, MEMORY[0x1E69E9290]);
  v80 = v114;
  sub_1DF22A850();
  sub_1DF22ADD0();
  v81 = v116;
  sub_1DF22A870();
  v113 = v29;
  if (v81)
  {

    v82 = v30[1];
    v82(v80, v29);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7F0, &qword_1DF22C520);
    (*(*(v83 - 8) + 56))(v28, 1, 1, v83);
  }

  else
  {
    v116 = 0;
    v82 = v30[1];
    v82(v80, v29);

    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7F0, &qword_1DF22C520);
    if ((*(*(v86 - 8) + 48))(v28, 1, v86) != 1)
    {
      v45 = sub_1DF16184C(v28, &qword_1ECE0C7D8, &qword_1DF230700);
      v43 = v18;
      v29 = v113;
      v48 = v116;
      v47 = v117;
      if (!v117)
      {
        return v30[1](v128, v29);
      }

      goto LABEL_24;
    }
  }

  sub_1DF16184C(v28, &qword_1ECE0C7D8, &qword_1DF230700);
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v87 = sub_1DF22A8C0();
  __swift_project_value_buffer(v87, qword_1ED8E92C0);
  v88 = sub_1DF22A8A0();
  v89 = sub_1DF22B110();
  v90 = os_log_type_enabled(v88, v89);
  v91 = v113;
  v92 = v128;
  if (v90)
  {
    v93 = swift_slowAlloc();
    *v93 = 0;
    _os_log_impl(&dword_1DF15A000, v88, v89, "Invalid taskTriggerRequest: triggerTopic is empty or invalid.", v93, 2u);
    MEMORY[0x1E12D0B40](v93, -1, -1);
  }

  *v123 = 4;
  LOBYTE(v126) = 4;
  sub_1DF1A09AC();
  swift_willThrowTypedImpl();
  return v82(v92, v91);
}

uint64_t sub_1DF19F300(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    for (i = (a3 + 40); ; i += 2)
    {
      v8 = *i;
      v13[0] = *(i - 1);
      v13[1] = v8;

      v9 = a1(v13);

      if (v3)
      {
        break;
      }

      v11 = v6-- != 0;
      if ((v9 & v11 & 1) == 0)
      {
        return v9 & 1;
      }
    }

    LOBYTE(v9) = 0;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9 & 1;
}

uint64_t _s20LighthouseBackground19validateTaskRequestyyAA0dE0VAA0D15ValidationErrorOYKF(__int128 *a1, _BYTE *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D480, &qword_1DF230708);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v60 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7E0, &unk_1DF22C510);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v60 - v10);
  v12 = a1[13];
  v91 = a1[12];
  v92 = v12;
  v13 = a1[15];
  v93 = a1[14];
  v94 = v13;
  v14 = a1[9];
  v87 = a1[8];
  v88 = v14;
  v15 = a1[11];
  v89 = a1[10];
  v90 = v15;
  v16 = a1[5];
  v83 = a1[4];
  v84 = v16;
  v17 = a1[7];
  v85 = a1[6];
  v86 = v17;
  v18 = a1[1];
  v79 = *a1;
  v80 = v18;
  v19 = a1[3];
  v81 = a1[2];
  v82 = v19;
  sub_1DF22A880();
  if (!v2)
  {
    (*(v9 + 56))(v7, 0, 1, v8);
    v26 = (*(v9 + 32))(v11, v7, v8);
    v27 = *(&v80 + 1);
    if (BYTE1(v80) == 1)
    {
      if (BYTE9(v81))
      {
        if (qword_1ED8E7530 != -1)
        {
          swift_once();
        }

        v28 = sub_1DF22A8C0();
        __swift_project_value_buffer(v28, qword_1ED8E92C0);
        sub_1DF1913C4(&v79, v78);
        v29 = sub_1DF22A8A0();
        v30 = sub_1DF22B110();
        sub_1DF191420(&v79);
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v95 = v61;
          *v31 = 136315138;
          v74 = v91;
          v75 = v92;
          v76 = v93;
          v77 = v94;
          v70 = v87;
          v71 = v88;
          v72 = v89;
          v73 = v90;
          v66 = v83;
          v67 = v84;
          v68 = v85;
          v69 = v86;
          v62 = v79;
          v63 = v80;
          v64 = v81;
          v65 = v82;
          sub_1DF1913C4(&v79, v78);
          LODWORD(v60) = v30;
          v32 = TaskRequest.description.getter();
          v34 = v33;
          v78[12] = v74;
          v78[13] = v75;
          v78[14] = v76;
          v78[15] = v77;
          v78[8] = v70;
          v78[9] = v71;
          v78[10] = v72;
          v78[11] = v73;
          v78[4] = v66;
          v78[5] = v67;
          v78[6] = v68;
          v78[7] = v69;
          v78[0] = v62;
          v78[1] = v63;
          v78[2] = v64;
          v78[3] = v65;
          sub_1DF191420(v78);
          v35 = sub_1DF160728(v32, v34, &v95);

          *(v31 + 4) = v35;
          _os_log_impl(&dword_1DF15A000, v29, v60, "Malformed request: %s", v31, 0xCu);
          v36 = v61;
          __swift_destroy_boxed_opaque_existential_1Tm(v61);
          MEMORY[0x1E12D0B40](v36, -1, -1);
          MEMORY[0x1E12D0B40](v31, -1, -1);
        }

        goto LABEL_46;
      }
    }

    else
    {
      v37 = v79;
      if (*&v79 < 60.0 || *&v79 > 86400.0)
      {
        if (qword_1ED8E7530 != -1)
        {
          swift_once();
        }

        v48 = sub_1DF22A8C0();
        __swift_project_value_buffer(v48, qword_1ED8E92C0);
        v40 = sub_1DF22A8A0();
        v49 = sub_1DF22B110();
        if (!os_log_type_enabled(v40, v49))
        {
          goto LABEL_45;
        }

        v43 = swift_slowAlloc();
        *v43 = 134217984;
        *(v43 + 4) = v37;
        v50 = "Invalid interval: %f";
        goto LABEL_34;
      }

      if (BYTE9(v81))
      {
LABEL_19:
        v38 = *(&v94 + 1);
        if (*(&v94 + 1) && *(*(&v94 + 1) + 16) && (MEMORY[0x1EEE9AC00](v26), *(&v60 - 2) = v11, v26 = sub_1DF19F300(sub_1DF1A0B40, (&v60 - 4), v38), (v26 & 1) == 0))
        {
          if (qword_1ED8E7530 != -1)
          {
            swift_once();
          }

          v39 = sub_1DF22A8C0();
          __swift_project_value_buffer(v39, qword_1ED8E92C0);

          v40 = sub_1DF22A8A0();
          v41 = sub_1DF22B110();

          if (!os_log_type_enabled(v40, v41))
          {
            goto LABEL_45;
          }

          v42 = swift_slowAlloc();
          LODWORD(v61) = v41;
          v43 = v42;
          v60 = swift_slowAlloc();
          *&v78[0] = v60;
          *v43 = 136315138;
          v44 = MEMORY[0x1E12CF970](v38, MEMORY[0x1E69E6158]);
          v46 = sub_1DF160728(v44, v45, v78);

          *(v43 + 4) = v46;
          v47 = "Invalid dependencies format: %s";
        }

        else
        {
          v52 = v94;
          if (!v94)
          {
            return (*(v9 + 8))(v11, v8);
          }

          if (!*(v94 + 16))
          {
            return (*(v9 + 8))(v11, v8);
          }

          MEMORY[0x1EEE9AC00](v26);
          *(&v60 - 2) = v11;
          if (sub_1DF19F300(sub_1DF1A0A20, (&v60 - 4), v52))
          {
            return (*(v9 + 8))(v11, v8);
          }

          if (qword_1ED8E7530 != -1)
          {
            swift_once();
          }

          v53 = sub_1DF22A8C0();
          __swift_project_value_buffer(v53, qword_1ED8E92C0);

          v40 = sub_1DF22A8A0();
          v54 = sub_1DF22B110();

          if (!os_log_type_enabled(v40, v54))
          {
            goto LABEL_45;
          }

          v55 = swift_slowAlloc();
          LODWORD(v61) = v54;
          v43 = v55;
          v60 = swift_slowAlloc();
          *&v78[0] = v60;
          *v43 = 136315138;
          v56 = MEMORY[0x1E12CF970](v52, MEMORY[0x1E69E6158]);
          v58 = sub_1DF160728(v56, v57, v78);

          *(v43 + 4) = v58;
          v47 = "Invalid producedResultIdentifiers format: %s";
        }

        _os_log_impl(&dword_1DF15A000, v40, v61, v47, v43, 0xCu);
        v59 = v60;
        __swift_destroy_boxed_opaque_existential_1Tm(v60);
        MEMORY[0x1E12D0B40](v59, -1, -1);
LABEL_44:
        MEMORY[0x1E12D0B40](v43, -1, -1);
LABEL_45:

LABEL_46:
        *a2 = 3;
        LOBYTE(v78[0]) = 3;
        sub_1DF1A09AC();
        swift_willThrowTypedImpl();
        return (*(v9 + 8))(v11, v8);
      }
    }

    if (*(&v80 + 1) >= 60.0 && *(&v80 + 1) <= 86400.0)
    {
      goto LABEL_19;
    }

    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v51 = sub_1DF22A8C0();
    __swift_project_value_buffer(v51, qword_1ED8E92C0);
    v40 = sub_1DF22A8A0();
    v49 = sub_1DF22B110();
    if (!os_log_type_enabled(v40, v49))
    {
      goto LABEL_45;
    }

    v43 = swift_slowAlloc();
    *v43 = 134217984;
    *(v43 + 4) = v27;
    v50 = "Invalid scheduleAfter: %f";
LABEL_34:
    _os_log_impl(&dword_1DF15A000, v40, v49, v50, v43, 0xCu);
    goto LABEL_44;
  }

  (*(v9 + 56))(v7, 1, 1, v8);
  sub_1DF16184C(v7, &qword_1ECE0D480, &qword_1DF230708);
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v20 = sub_1DF22A8C0();
  __swift_project_value_buffer(v20, qword_1ED8E92C0);
  v21 = sub_1DF22A8A0();
  v22 = sub_1DF22B110();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v78[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_1DF160728(0xD000000000000017, 0x80000001DF23DB90, v78);
    _os_log_impl(&dword_1DF15A000, v21, v22, "Failed to compile regex: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1E12D0B40](v24, -1, -1);
    MEMORY[0x1E12D0B40](v23, -1, -1);
  }

  *a2 = 0;
  LOBYTE(v78[0]) = 0;
  sub_1DF1A09AC();
  return swift_willThrowTypedImpl();
}

uint64_t sub_1DF19FDB0(uint64_t *a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7E0, &unk_1DF22C510);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7D8, &qword_1DF230700);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  sub_1DF164BEC(&qword_1ECE0C718, &qword_1ECE0C7E0, &unk_1DF22C510, MEMORY[0x1E69E9290]);
  sub_1DF22A850();
  sub_1DF22ADD0();
  v8 = v13[1];
  sub_1DF22A870();
  if (v8)
  {

    (*(v2 + 8))(v4, v1);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7F0, &qword_1DF22C520);
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
LABEL_4:
    v11 = 0;
    goto LABEL_5;
  }

  (*(v2 + 8))(v4, v1);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7F0, &qword_1DF22C520);
  v11 = 1;
  if ((*(*(v10 - 8) + 48))(v7, 1, v10) == 1)
  {
    goto LABEL_4;
  }

LABEL_5:
  sub_1DF16184C(v7, &qword_1ECE0C7D8, &qword_1DF230700);
  return v11;
}

uint64_t _s20LighthouseBackground22validateTaskDefinitionyyAA0dE0VAA0D15ValidationErrorOYKF(uint64_t *a1, _BYTE *a2)
{
  v67 = a1;
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7D8, &qword_1DF230700);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v63 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D480, &qword_1DF230708);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v63 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7E0, &unk_1DF22C510);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v63 - v14;
  sub_1DF22A880();
  if (v2)
  {
    v16 = v68;

    (*(v10 + 56))(v8, 1, 1, v9);
    sub_1DF16184C(v8, &qword_1ECE0D480, &qword_1DF230708);
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v17 = sub_1DF22A8C0();
    __swift_project_value_buffer(v17, qword_1ED8E92C0);
    v18 = sub_1DF22A8A0();
    v19 = sub_1DF22B110();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v87[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1DF160728(0xD000000000000017, 0x80000001DF23DB90, v87);
      _os_log_impl(&dword_1DF15A000, v18, v19, "Failed to compile regex: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1E12D0B40](v21, -1, -1);
      MEMORY[0x1E12D0B40](v20, -1, -1);
    }

    *v16 = 0;
    LOBYTE(v87[0]) = 0;
    sub_1DF1A09AC();
    return swift_willThrowTypedImpl();
  }

  v64 = v13;
  v65 = v5;
  v66 = 0;
  (*(v10 + 56))(v8, 0, 1, v9);
  (*(v10 + 32))(v15, v8, v9);
  v23 = v9;
  v24 = v67[1];
  if ((v24 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v24) & 0xF;
  }

  else
  {
    v25 = *v67 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
    *v68 = 0;
    LOBYTE(v87[0]) = 0;
    sub_1DF1A09AC();
    swift_willThrowTypedImpl();
    return (*(v10 + 8))(v15, v9);
  }

  sub_1DF164BEC(&qword_1ECE0C718, &qword_1ECE0C7E0, &unk_1DF22C510, MEMORY[0x1E69E9290]);
  v26 = v64;
  v63 = v15;
  sub_1DF22A850();
  sub_1DF22ADD0();
  v28 = v65;
  v27 = v66;
  sub_1DF22A870();
  if (v27)
  {

    v29 = *(v10 + 8);
    v29(v26, v9);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7F0, &qword_1DF22C520);
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
LABEL_16:
    v32 = v63;
    sub_1DF16184C(v28, &qword_1ECE0C7D8, &qword_1DF230700);
    *v68 = 0;
    LOBYTE(v87[0]) = 0;
    sub_1DF1A09AC();
    swift_willThrowTypedImpl();
    return (v29)(v32, v23);
  }

  v29 = *(v10 + 8);
  v66 = v9;
  v29(v26, v9);

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7F0, &qword_1DF22C520);
  if ((*(*(v31 - 8) + 48))(v28, 1, v31) == 1)
  {
    v23 = v66;
    goto LABEL_16;
  }

  sub_1DF16184C(v28, &qword_1ECE0C7D8, &qword_1DF230700);
  v33 = v67[3];
  v34 = v67[2] & 0xFFFFFFFFFFFFLL;
  if ((v33 & 0x2000000000000000) != 0)
  {
    v34 = HIBYTE(v33) & 0xF;
  }

  v35 = v63;
  if (!v34)
  {
    *v68 = 1;
    LOBYTE(v87[0]) = 1;
    sub_1DF1A09AC();
    swift_willThrowTypedImpl();
    v46 = v35;
LABEL_26:
    v47 = v66;
    return (v29)(v46, v47);
  }

  v36 = *(v67 + 15);
  v87[12] = *(v67 + 14);
  v87[13] = v36;
  v37 = *(v67 + 17);
  v87[14] = *(v67 + 16);
  v87[15] = v37;
  v38 = *(v67 + 11);
  v87[8] = *(v67 + 10);
  v87[9] = v38;
  v39 = *(v67 + 13);
  v87[10] = *(v67 + 12);
  v87[11] = v39;
  v40 = *(v67 + 7);
  v87[4] = *(v67 + 6);
  v87[5] = v40;
  v41 = *(v67 + 9);
  v87[6] = *(v67 + 8);
  v87[7] = v41;
  v42 = *(v67 + 3);
  v87[0] = *(v67 + 2);
  v87[1] = v42;
  v43 = *(v67 + 5);
  v87[2] = *(v67 + 4);
  v87[3] = v43;
  v44 = sub_1DF182574(v87);
  v45 = v66;
  if (v44 == 1 && v67[38] == 1)
  {
    *v68 = 2;
    LOBYTE(v71) = 2;
    sub_1DF1A09AC();
    swift_willThrowTypedImpl();
    v46 = v35;
    v47 = v45;
    return (v29)(v46, v47);
  }

  v48 = *(v67 + 15);
  v83 = *(v67 + 14);
  v84 = v48;
  v49 = *(v67 + 17);
  v85 = *(v67 + 16);
  v86 = v49;
  v50 = *(v67 + 11);
  v79 = *(v67 + 10);
  v80 = v50;
  v51 = *(v67 + 13);
  v81 = *(v67 + 12);
  v82 = v51;
  v52 = *(v67 + 7);
  v75 = *(v67 + 6);
  v76 = v52;
  v53 = *(v67 + 9);
  v77 = *(v67 + 8);
  v78 = v53;
  v54 = *(v67 + 3);
  v71 = *(v67 + 2);
  v72 = v54;
  v55 = *(v67 + 5);
  v73 = *(v67 + 4);
  v74 = v55;
  if (sub_1DF182574(&v71) != 1)
  {
    v70[11] = v83;
    v70[12] = v84;
    v70[13] = v85;
    v70[14] = v86;
    v70[7] = v79;
    v70[8] = v80;
    v70[9] = v81;
    v70[10] = v82;
    v70[3] = v75;
    v70[4] = v76;
    v70[5] = v77;
    v70[6] = v78;
    v69 = v71;
    v70[0] = v72;
    v70[1] = v73;
    v70[2] = v74;
    _s20LighthouseBackground19validateTaskRequestyyAA0dE0VAA0D15ValidationErrorOYKF(&v69, &v88);
  }

  v56 = v67[38];
  if (v56 != 1)
  {
    v69 = *(v67 + 18);
    *&v70[0] = v56;
    BYTE8(v70[3]) = *(v67 + 360);
    v57 = *(v67 + 41);
    *(v70 + 8) = *(v67 + 39);
    *(&v70[1] + 8) = v57;
    *(&v70[2] + 8) = *(v67 + 43);
    _s20LighthouseBackground26validateTaskTriggerRequestyyAA0deF0VAA0D15ValidationErrorOYKF(&v69, &v88);
  }

  v65 = 0;
  v58 = *(v67 + *(type metadata accessor for TaskDefinition(0) + 40));
  if (v58)
  {
    v59 = *(v58 + 16);
    for (i = (v58 + 32); ; ++i)
    {
      if (!v59)
      {
        *v68 = 7;
        LOBYTE(v69) = 7;
        sub_1DF1A09AC();
        swift_willThrowTypedImpl();
        v46 = v63;
        goto LABEL_26;
      }

      v62 = *i;
      if (v62 <= 2 && v62 != 1 && v62 != 2)
      {
        break;
      }

      v61 = sub_1DF22B620();

      --v59;
      if (v61)
      {
        return (v29)(v63, v66);
      }
    }
  }

  return (v29)(v63, v66);
}

unint64_t sub_1DF1A09AC()
{
  result = qword_1ECE0C358;
  if (!qword_1ECE0C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C358);
  }

  return result;
}

unint64_t sub_1DF1A0A44()
{
  result = qword_1ECE0D488;
  if (!qword_1ECE0D488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D488);
  }

  return result;
}

unint64_t sub_1DF1A0AEC()
{
  result = qword_1ECE0D4A0;
  if (!qword_1ECE0D4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D4A0);
  }

  return result;
}

uint64_t sub_1DF1A0B5C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for LedgerState(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_1DF1A88EC(a3 + v15 + v16 * v13, v12, type metadata accessor for LedgerState);
      v17 = a1(v12);
      if (v3)
      {
        sub_1DF1A8954(v12, type metadata accessor for LedgerState);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_1DF1A89B4(v12, v24, type metadata accessor for LedgerState);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DF160D30(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1DF160D30((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_1DF1A89B4(v24, v14 + v15 + v20 * v16, type metadata accessor for LedgerState);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_1DF1A8954(v12, type metadata accessor for LedgerState);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_1DF1A0DE8(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for TaskStatusEvent(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_1DF1A88EC(a3 + v15 + v16 * v13, v12, type metadata accessor for TaskStatusEvent);
      v17 = a1(v12);
      if (v3)
      {
        sub_1DF1A8954(v12, type metadata accessor for TaskStatusEvent);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_1DF1A89B4(v12, v24, type metadata accessor for TaskStatusEvent);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DF160D94(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1DF160D94((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_1DF1A89B4(v24, v14 + v15 + v20 * v16, type metadata accessor for TaskStatusEvent);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_1DF1A8954(v12, type metadata accessor for TaskStatusEvent);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_1DF1A1074(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &aBlock - v10;
  sub_1DF17A6A8(a2, &aBlock - v10, &qword_1ECE0CDC0, &unk_1DF22D7C0);
  sub_1DF17A6A8(a3, v9, &qword_1ECE0CDC0, &unk_1DF22D7C0);
  v12 = sub_1DF22A800();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = 0;
  if (v14(v11, 1, v12) != 1)
  {
    v15 = sub_1DF22A770();
    (*(v13 + 8))(v11, v12);
  }

  if (v14(v9, 1, v12) == 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_1DF22A770();
    (*(v13 + 8))(v9, v12);
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E698F2D0]) initWithStartDate:v15 endDate:v16 maxEvents:0 lastN:0 reversed:0];

  v18 = sub_1DF22ACA0();
  v19 = [a1 publisherWithUseCase:v18 options:v17];

  v20 = swift_allocObject();
  *(v20 + 16) = MEMORY[0x1E69E7CC0];
  v30 = nullsub_1;
  v31 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1DF21064C;
  v29 = &block_descriptor_0;
  v21 = _Block_copy(&aBlock);
  v30 = sub_1DF1A8A9C;
  v31 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1DF1A1670;
  v29 = &block_descriptor_3;
  v22 = _Block_copy(&aBlock);

  v23 = [v19 sinkWithCompletion:v21 receiveInput:v22];

  _Block_release(v22);
  _Block_release(v21);

  swift_beginAccess();
  v24 = *(v20 + 16);

  return v24;
}

void sub_1DF1A141C(void *a1, uint64_t a2)
{
  v4 = [a1 eventBody];
  if (v4)
  {
    v5 = v4;
    [a1 timestamp];
    v7 = v6;
    swift_beginAccess();
    v8 = *(a2 + 16);
    v9 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1DF174864(0, v8[2] + 1, 1, v8);
      *(a2 + 16) = v8;
    }

    v12 = v8[2];
    v11 = v8[3];
    if (v12 >= v11 >> 1)
    {
      v8 = sub_1DF174864((v11 > 1), v12 + 1, 1, v8);
    }

    v8[2] = v12 + 1;
    v13 = &v8[2 * v12];
    v13[4] = v7;
    v13[5] = v9;
    *(a2 + 16) = v8;
    swift_endAccess();
  }

  else
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v14 = sub_1DF22A8C0();
    __swift_project_value_buffer(v14, qword_1ED8E92C0);
    v15 = a1;
    oslog = sub_1DF22A8A0();
    v16 = sub_1DF22B100();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v15;
      *v18 = v15;
      v19 = v15;
      _os_log_impl(&dword_1DF15A000, oslog, v16, "Invalid event: %@", v17, 0xCu);
      sub_1DF16184C(v18, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v18, -1, -1);
      MEMORY[0x1E12D0B40](v17, -1, -1);
    }
  }
}

void sub_1DF1A1670(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void DediscoAnalytics.coreAnalyticsDictionary.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v85 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v84 - v5;
  v7 = sub_1DF22A800();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v84 - v12;
  v14 = sub_1DF19005C(MEMORY[0x1E69E7CC0]);
  v15 = *v0;
  v16 = *(*v0 + 16);
  v86 = v6;
  if (v16)
  {
    sub_1DF175254(0xD000000000000014, 0x80000001DF23DBB0);
  }

  v17 = sub_1DF22B090();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v87 = v14;
  sub_1DF1A7B40(v17, 0xD000000000000019, 0x80000001DF23DBD0, isUniquelyReferenced_nonNull_native);
  v19 = v87;
  if (*(v15 + 16))
  {
    sub_1DF175254(0xD000000000000011, 0x80000001DF23DBF0);
  }

  v20 = sub_1DF22B090();
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v87 = v19;
  sub_1DF1A7B40(v20, 0xD000000000000016, 0x80000001DF23DC10, v21);
  v22 = v87;
  if (*(v15 + 16))
  {
    sub_1DF175254(0xD000000000000010, 0x80000001DF23DC30);
  }

  v23 = sub_1DF22B090();
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v87 = v22;
  sub_1DF1A7B40(v23, 0xD000000000000015, 0x80000001DF23DC50, v24);
  v25 = v87;
  if (*(v15 + 16))
  {
    sub_1DF175254(0x466E776F6E6B6E75, 0xED000064656C6961);
  }

  v26 = sub_1DF22B090();
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v87 = v25;
  sub_1DF1A7B40(v26, 0xD000000000000012, 0x80000001DF23DC70, v27);
  v28 = v87;
  if (*(v15 + 16))
  {
    sub_1DF175254(0xD000000000000019, 0x80000001DF23DC90);
  }

  v29 = sub_1DF22B090();
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v87 = v28;
  sub_1DF1A7B40(v29, 0xD00000000000001ELL, 0x80000001DF23DCB0, v30);
  v31 = v87;
  if (*(v15 + 16))
  {
    sub_1DF175254(0xD000000000000016, 0x80000001DF23DCD0);
  }

  v32 = sub_1DF22B090();
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v87 = v31;
  sub_1DF1A7B40(v32, 0xD00000000000001BLL, 0x80000001DF23DCF0, v33);
  v34 = v87;
  if (*(v15 + 16))
  {
    sub_1DF175254(0xD000000000000016, 0x80000001DF23DD10);
  }

  v35 = sub_1DF22B090();
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v87 = v34;
  sub_1DF1A7B40(v35, 0xD00000000000001BLL, 0x80000001DF23DD30, v36);
  v37 = v87;
  if (*(v15 + 16))
  {
    sub_1DF175254(0xD000000000000013, 0x80000001DF23DD50);
  }

  v38 = sub_1DF22B090();
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v87 = v37;
  sub_1DF1A7B40(v38, 0xD000000000000018, 0x80000001DF23DD70, v39);
  v40 = v87;
  if (*(v15 + 16))
  {
    sub_1DF175254(0xD000000000000018, 0x80000001DF23DD90);
  }

  v41 = sub_1DF22B090();
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v87 = v40;
  sub_1DF1A7B40(v41, 0xD00000000000001DLL, 0x80000001DF23DDB0, v42);
  v43 = v87;
  if (*(v15 + 16))
  {
    sub_1DF175254(0xD000000000000015, 0x80000001DF23DDD0);
  }

  v44 = sub_1DF22B090();
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v87 = v43;
  sub_1DF1A7B40(v44, 0xD00000000000001ALL, 0x80000001DF23DDF0, v45);
  v46 = v87;
  if (*(v15 + 16))
  {
    sub_1DF175254(0x755364616F6C7075, 0xEF64656465656363);
  }

  v47 = sub_1DF22B090();
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v87 = v46;
  sub_1DF1A7B40(v47, 0xD000000000000014, 0x80000001DF23DE10, v48);
  v49 = v87;
  if (*(v15 + 16))
  {
    sub_1DF175254(0x614664616F6C7075, 0xEC00000064656C69);
  }

  v50 = sub_1DF22B090();
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v87 = v49;
  sub_1DF1A7B40(v50, 0xD000000000000011, 0x80000001DF23DE30, v51);
  v52 = v87;
  if (*(v15 + 16))
  {
    sub_1DF175254(0x6574656C706D6F43, 0xE900000000000064);
  }

  v53 = sub_1DF22B090();
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v87 = v52;
  sub_1DF1A7B40(v53, 0xD000000000000012, 0x80000001DF23DE50, v54);
  v55 = v87;
  if (*(v15 + 16))
  {
    sub_1DF175254(0x64656C696146, 0xE600000000000000);
  }

  v56 = sub_1DF22B090();
  v57 = swift_isUniquelyReferenced_nonNull_native();
  v87 = v55;
  sub_1DF1A7B40(v56, 0x736154746E756F63, 0xEF64656C6961466BLL, v57);
  v58 = v87;
  if (*(v15 + 16))
  {
    sub_1DF175254(0x6465727265666544, 0xE800000000000000);
  }

  v59 = sub_1DF22B090();
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v87 = v58;
  sub_1DF1A7B40(v59, 0xD000000000000011, 0x80000001DF23DE70, v60);
  v61 = v87;
  v62 = type metadata accessor for DediscoAnalytics(0);

  v63 = sub_1DF22ACA0();

  v64 = swift_isUniquelyReferenced_nonNull_native();
  v87 = v61;
  sub_1DF1A7B40(v63, 0x656D614E6B736174, 0xE800000000000000, v64);
  v66 = v86;
  v65 = v87;
  sub_1DF17A6A8(v1 + *(v62 + 36), v86, &qword_1ECE0CDC0, &unk_1DF22D7C0);
  v67 = *(v8 + 48);
  if (v67(v66, 1, v7) == 1)
  {
    sub_1DF16184C(v66, &qword_1ECE0CDC0, &unk_1DF22D7C0);
    return;
  }

  v84 = v11;
  v68 = *(v8 + 32);
  v68(v13, v66, v7);
  v69 = v1 + *(v62 + 40);
  v70 = v85;
  sub_1DF17A6A8(v69, v85, &qword_1ECE0CDC0, &unk_1DF22D7C0);
  if (v67(v70, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    sub_1DF16184C(v70, &qword_1ECE0CDC0, &unk_1DF22D7C0);
    return;
  }

  v85 = v7;
  v86 = v8;
  v68(v84, v70, v7);
  sub_1DF22A7A0();
  if ((*&v71 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_45;
  }

  if (v71 <= -9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v71 >= 9.22337204e18)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v72 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  v73 = [v72 stringValue];
  if (!v73)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v74 = v73;

  v75 = swift_isUniquelyReferenced_nonNull_native();
  v87 = v65;
  sub_1DF1A7B40(v74, 0x745374656B637562, 0xEB00000000747261, v75);
  v76 = v87;
  sub_1DF22A7A0();
  if ((*&v77 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_47;
  }

  if (v77 <= -9.22337204e18)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v77 >= 9.22337204e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v78 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  v79 = [v78 stringValue];
  if (v79)
  {
    v80 = v79;

    v81 = swift_isUniquelyReferenced_nonNull_native();
    v87 = v76;
    sub_1DF1A7B40(v80, 0x6E4574656B637562, 0xE900000000000064, v81);
    v82 = *(v86 + 1);
    v83 = v85;
    v82(v84, v85);
    v82(v13, v83);
    return;
  }

LABEL_51:
  __break(1u);
}

unint64_t getDediscoData(telemetryRange:)(uint64_t a1)
{
  v107 = type metadata accessor for LedgerState(0);
  v104 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v109 = (&v101 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_1DF22A800();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v115 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v101 - v10;
  v12 = [BiomeLibrary() Lighthouse];
  swift_unknownObjectRelease();
  v13 = [v12 Ledger];
  swift_unknownObjectRelease();
  v14 = [v13 DediscoPrivacyEvent];
  swift_unknownObjectRelease();
  v15 = type metadata accessor for TelemetryBucketRange(0);
  v16 = v4 + 2;
  v17 = v4[2];
  v17(v11, a1 + *(v15 + 24), v3);
  v116 = v4;
  v18 = v4[7];
  v18(v11, 0, 1, v3);
  v19 = a1 + *(v15 + 28);
  v105 = v17;
  v106 = v16;
  v17(v9, v19, v3);
  v113 = v3;
  v18(v9, 0, 1, v3);
  v102 = v14;
  v20 = sub_1DF1A1074(v14, v11, v9);
  sub_1DF16184C(v9, &qword_1ECE0CDC0, &unk_1DF22D7C0);
  sub_1DF16184C(v11, &qword_1ECE0CDC0, &unk_1DF22D7C0);
  v112 = sub_1DF190160(MEMORY[0x1E69E7CC0]);
  v21 = *(v20 + 16);
  if (!v21)
  {
    v111 = 0;
LABEL_74:

    sub_1DF15EAC4(v111, 0);
    return v112;
  }

  v110 = *(v20 + 16);
  v111 = 0;
  v22 = 0;
  v101 = 0x80000001DF23D9A0;
  v108 = (v116 + 8);
  v23 = (v20 + 40);
  v24 = &off_1E86AB000;
  v25 = &unk_1ED8E7000;
  v103 = v20;
  while (v22 < *(v20 + 16))
  {
    v28 = *v23;
    v29 = [v28 v24[227]];
    if (v29)
    {
      v30 = v29;
      v31 = [v29 bmltIdentifiers];
      if (v31)
      {
        v32 = v31;
        v33 = [v31 trialTaskID];
        if (!v33)
        {
          v58 = v24;
          v59 = v20;
          v60 = v28;
          if (v25[166] != -1)
          {
            swift_once();
          }

          v61 = sub_1DF22A8C0();
          __swift_project_value_buffer(v61, qword_1ED8E92C0);
          v62 = sub_1DF22A8A0();
          v63 = sub_1DF22B100();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            *v64 = 0;
            _os_log_impl(&dword_1DF15A000, v62, v63, "Dedisco: No Trial experiment ID", v64, 2u);
            v65 = v64;
            v25 = &unk_1ED8E7000;
            MEMORY[0x1E12D0B40](v65, -1, -1);
          }

          v20 = v59;
          v24 = v58;
          v21 = v110;
          goto LABEL_4;
        }

        v34 = v33;
        v114 = sub_1DF22ACC0();
        v36 = v35;

        v37 = [v28 timestamp];
        v116 = v28;
        if (!v37)
        {

          v25 = &unk_1ED8E7000;
          if (qword_1ED8E7530 != -1)
          {
            swift_once();
          }

          v66 = sub_1DF22A8C0();
          __swift_project_value_buffer(v66, qword_1ED8E92C0);
          v67 = sub_1DF22A8A0();
          v68 = sub_1DF22B100();
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            *v69 = 0;
            _os_log_impl(&dword_1DF15A000, v67, v68, "Dedisco: No timestamp", v69, 2u);
            v70 = v69;
            v25 = &unk_1ED8E7000;
            MEMORY[0x1E12D0B40](v70, -1, -1);
          }

          goto LABEL_4;
        }

        v38 = v37;
        sub_1DF22A7C0();

        v39 = [v28 event];
        if (!v39)
        {

          v25 = &unk_1ED8E7000;
          if (qword_1ED8E7530 != -1)
          {
            swift_once();
          }

          v71 = sub_1DF22A8C0();
          __swift_project_value_buffer(v71, qword_1ED8E92C0);
          v72 = sub_1DF22A8A0();
          v73 = sub_1DF22B100();
          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            *v74 = 0;
            _os_log_impl(&dword_1DF15A000, v72, v73, "Dedisco: No event", v74, 2u);
            v75 = v74;
            v25 = &unk_1ED8E7000;
            MEMORY[0x1E12D0B40](v75, -1, -1);
          }

          else
          {
          }

          (*v108)(v115, v113);
          goto LABEL_4;
        }

        v40 = v39;
        v41 = [v39 succeeded];
        if (v41)
        {
          v42 = 0x6564656563637553;
        }

        else
        {
          v42 = 0x64656C696146;
        }

        if (v41)
        {
          v43 = 0xE900000000000064;
        }

        else
        {
          v43 = 0xE600000000000000;
        }

        v44 = [v40 phase];
        if (v44 > 2)
        {
          switch(v44)
          {
            case 3:
              v45 = 0x6843746567647562;
              v46 = 0xEB000000006B6365;
              break;
            case 4:
              v45 = 0x4364616F6C796170;
              v46 = 0xEF6E6F6974616572;
              break;
            case 5:
              v46 = 0xE600000000000000;
              v45 = 0x64616F6C7075;
              break;
            default:
              goto LABEL_54;
          }
        }

        else if (v44)
        {
          if (v44 == 1)
          {
            v45 = 0xD000000000000010;
            v46 = v101;
          }

          else
          {
            if (v44 == 2)
            {
              v45 = 0x7A696D6F646E6172;
              v46 = 0xED00006E6F697461;
              goto LABEL_57;
            }

LABEL_54:
            v46 = 0xE700000000000000;
            v45 = 0x746C7561666564;
          }
        }

        else
        {
          v46 = 0xE700000000000000;
          v45 = 0x6E776F6E6B6E75;
        }

LABEL_57:
        v117 = v45;
        v118 = v46;

        MEMORY[0x1E12CF820](v42, v43);

        v76 = v117;
        v77 = v118;
        v78 = v109;
        v105(v109 + *(v107 + 20), v115, v113);
        *v78 = v76;
        v78[1] = v77;
        sub_1DF15EAC4(v111, 0);
        v79 = v112;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v117 = v79;
        v82 = sub_1DF175254(v114, v36);
        v83 = *(v79 + 16);
        v84 = (v81 & 1) == 0;
        v85 = v83 + v84;
        if (__OFADD__(v83, v84))
        {
          goto LABEL_76;
        }

        v86 = v81;
        if (*(v79 + 24) >= v85)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v89 = v117;
            if ((v81 & 1) == 0)
            {
              goto LABEL_61;
            }
          }

          else
          {
            sub_1DF1761EC();
            v89 = v117;
            if ((v86 & 1) == 0)
            {
              goto LABEL_61;
            }
          }
        }

        else
        {
          sub_1DF1A73B4(v85, isUniquelyReferenced_nonNull_native, &qword_1ECE0CD88, &unk_1DF22FFA0);
          v87 = sub_1DF175254(v114, v36);
          if ((v86 & 1) != (v88 & 1))
          {
            goto LABEL_78;
          }

          v82 = v87;
          v89 = v117;
          if ((v86 & 1) == 0)
          {
LABEL_61:
            v89[(v82 >> 6) + 8] |= 1 << v82;
            v90 = (v89[6] + 16 * v82);
            *v90 = v114;
            v90[1] = v36;
            *(v89[7] + 8 * v82) = MEMORY[0x1E69E7CC0];
            v91 = v89[2];
            v92 = __OFADD__(v91, 1);
            v93 = v91 + 1;
            if (v92)
            {
              goto LABEL_77;
            }

            v89[2] = v93;
            goto LABEL_66;
          }
        }

LABEL_66:
        v112 = v89;
        v94 = v89[7];
        v95 = *(v94 + 8 * v82);
        v96 = swift_isUniquelyReferenced_nonNull_native();
        *(v94 + 8 * v82) = v95;
        if ((v96 & 1) == 0)
        {
          v95 = sub_1DF17483C(0, v95[2] + 1, 1, v95);
          *(v94 + 8 * v82) = v95;
        }

        v98 = v95[2];
        v97 = v95[3];
        if (v98 >= v97 >> 1)
        {
          *(v94 + 8 * v82) = sub_1DF17483C((v97 > 1), v98 + 1, 1, v95);
        }

        (*v108)(v115, v113);
        v99 = *(v94 + 8 * v82);
        *(v99 + 16) = v98 + 1;
        sub_1DF1A89B4(v109, v99 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v98, type metadata accessor for LedgerState);
        v111 = sub_1DF15EAB4;
        v20 = v103;
        v21 = v110;
        v24 = &off_1E86AB000;
        v25 = &unk_1ED8E7000;
        goto LABEL_4;
      }

      if (v25[166] != -1)
      {
        swift_once();
      }

      v50 = sub_1DF22A8C0();
      __swift_project_value_buffer(v50, qword_1ED8E92C0);
      v51 = sub_1DF22A8A0();
      v52 = sub_1DF22B100();
      if (!os_log_type_enabled(v51, v52))
      {

        goto LABEL_36;
      }

      v53 = v21;
      v54 = v24;
      v55 = v20;
      v56 = v28;
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1DF15A000, v51, v52, "Dedisco: No experiment identifiers", v57, 2u);
      MEMORY[0x1E12D0B40](v57, -1, -1);

      v20 = v55;
      v24 = v54;
      v21 = v53;
      v25 = &unk_1ED8E7000;
    }

    else
    {
      if (v25[166] != -1)
      {
        swift_once();
      }

      v47 = sub_1DF22A8C0();
      __swift_project_value_buffer(v47, qword_1ED8E92C0);
      v48 = sub_1DF22A8A0();
      v49 = sub_1DF22B100();
      if (!os_log_type_enabled(v48, v49))
      {

LABEL_36:
        goto LABEL_4;
      }

      v26 = v28;
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1DF15A000, v48, v49, "Dedisco: No identifiers", v27, 2u);
      MEMORY[0x1E12D0B40](v27, -1, -1);
    }

LABEL_4:
    ++v22;
    v23 += 2;
    if (v21 == v22)
    {
      goto LABEL_74;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  result = sub_1DF22B660();
  __break(1u);
  return result;
}

uint64_t processDediscoEvents(dediscoEventMap:telemetryRange:dailyTelemetryResults:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = type metadata accessor for TaskTelemetry(0);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for LedgerState(0);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = type metadata accessor for DediscoAnalytics(0);
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  v3[20] = swift_task_alloc();
  v3[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D4A8, &unk_1DF23A460);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF40, &qword_1DF23AAB0);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v7 = sub_1DF22A800();
  v3[27] = v7;
  v3[28] = *(v7 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF1A320C, 0, 0);
}

void sub_1DF1A320C()
{
  v154 = v0;
  v1 = v0[28];
  v150 = v0[24];
  v140 = v0[21];
  v133 = v0[17];
  v2 = v0[14];
  v3 = v0[10];
  v131 = v0[11];
  v4 = v0[8];
  v136 = v0[9];
  v137 = v0[16];
  v5 = v0[7];
  v6 = sub_1DF1982D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D4B0, &qword_1DF2308D8);
  swift_allocObject();
  v7 = sub_1DF1969C8(v6);

  v8 = v5 + 64;
  v9 = -1;
  v10 = -1 << *(v5 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v5 + 64);
  v143 = v7;
  v138 = *(*v7 + 112);
  v12 = (63 - v10) >> 6;
  v142 = (v1 + 16);
  v139 = (v1 + 32);
  v141 = (v1 + 8);
  v132 = v2;
  v134 = (v1 + 56);
  v135 = (v2 + 56);

  v144 = MEMORY[0x1E69E7CC0];
  v13 = 0;
  if (!v11)
  {
    while (1)
    {
LABEL_5:
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        return;
      }

      if (v14 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v14);
      ++v13;
      if (v11)
      {
        goto LABEL_8;
      }
    }

LABEL_73:

    v117 = v0[1];

    v117(v144);
    return;
  }

  while (1)
  {
    v14 = v13;
LABEL_8:
    v15 = __clz(__rbit64(v11)) | (v14 << 6);
    v16 = (*(v5 + 48) + 16 * v15);
    v151 = v16[1];
    v152 = *v16;
    v17 = *(*(v5 + 56) + 8 * v15);

    if (sub_1DF22B020())
    {

      v144 = 0;
      goto LABEL_73;
    }

    v11 &= v11 - 1;
    v18 = *v0[8];
    v19 = *(v4 + 8);
    if (v19 > v18)
    {
      break;
    }

LABEL_10:

    v13 = v14;
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  swift_beginAccess();
  v20 = 0;
  v122 = v4;
  v123 = v3;
  v121 = v5;
  v118 = v12;
  v119 = v8;
  v130 = v17;
  while (1)
  {
    v24 = __OFADD__(v20, 1);
    v25 = v20 + 1;
    if (v24)
    {
      goto LABEL_87;
    }

    v124 = v25;
    sub_1DF22A720();
    sub_1DF22A760();
    sub_1DF1A8874();
    if ((sub_1DF22AC60() & 1) == 0)
    {
      goto LABEL_88;
    }

    v145 = v0[30];
    v26 = v0[26];
    v27 = v0[27];
    v127 = v26;
    v29 = v0[22];
    v28 = v0[23];
    v30 = *v142;
    (*v142)(v28, v0[29], v27);
    v120 = v30;
    v30(v28 + *(v140 + 48), v145, v27);
    sub_1DF17A6A8(v28, v29, &qword_1ECE0D4A8, &unk_1DF23A460);
    v125 = *(v140 + 48);
    v146 = *v139;
    (*v139)(v26, v29, v27);
    v31 = *v141;
    (*v141)(v29 + v125, v27);
    sub_1DF17A710(v28, v29, &qword_1ECE0D4A8, &unk_1DF23A460);
    v146(v26 + *(v150 + 36), v29 + *(v140 + 48), v27);
    v126 = v31;
    v31(v29, v27);
    v32 = swift_task_alloc();
    *(v32 + 16) = v127;

    v33 = sub_1DF1A0B5C(sub_1DF1A88CC, v32, v130);

    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v34 = v0[25];
    v35 = v0[26];
    v36 = sub_1DF22A8C0();
    __swift_project_value_buffer(v36, qword_1ED8E92C0);
    sub_1DF17A6A8(v35, v34, &qword_1ECE0EF40, &qword_1DF23AAB0);

    v37 = sub_1DF22A8A0();
    v38 = sub_1DF22B100();

    if (!os_log_type_enabled(v37, v38))
    {
      break;
    }

    v39 = v0[25];
    v40 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    v153[0] = v147;
    *v40 = 134218498;
    *(v40 + 4) = *(v33 + 16);

    v128 = v38;
    *(v40 + 12) = 2080;
    *(v40 + 14) = sub_1DF160728(v152, v151, v153);
    *(v40 + 22) = 2080;
    v0[5] = 0;
    v0[6] = 0xE000000000000000;
    sub_1DF22B3B0();
    MEMORY[0x1E12CF820](3943982, 0xE300000000000000);
    sub_1DF22B3B0();
    v41 = v0[5];
    v42 = v0[6];
    sub_1DF16184C(v39, &qword_1ECE0EF40, &qword_1DF23AAB0);
    v43 = sub_1DF160728(v41, v42, v153);

    *(v40 + 24) = v43;
    _os_log_impl(&dword_1DF15A000, v37, v128, "%ld events for %s in %s.", v40, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12D0B40](v147, -1, -1);
    MEMORY[0x1E12D0B40](v40, -1, -1);

    v4 = v122;
    v3 = v123;
    v5 = v121;
    if (*(v33 + 16))
    {
      goto LABEL_23;
    }

LABEL_13:
    v21 = v0[29];
    v22 = v0[30];
    v23 = v0[27];

    v126(v21, v23);
    v126(v22, v23);
LABEL_14:
    v20 = v124;
    sub_1DF16184C(v0[26], &qword_1ECE0EF40, &qword_1DF23AAB0);
    v12 = v118;
    v8 = v119;
    if (v19 <= v18 + v124 * 86400.0)
    {
      goto LABEL_10;
    }
  }

  v44 = v0[25];

  sub_1DF16184C(v44, &qword_1ECE0EF40, &qword_1DF23AAB0);
  v4 = v122;
  v3 = v123;
  v5 = v121;
  if (!*(v33 + 16))
  {
    goto LABEL_13;
  }

LABEL_23:
  v45 = v0[20];
  (*v135)(v45, 1, 1, v0[13]);
  sub_1DF1A4750(v45, type metadata accessor for DediscoAnalytics, type metadata accessor for DediscoAnalytics);
  sub_1DF16184C(v45, &qword_1ECE0CCF8, &qword_1DF22FF80);
  v46 = v33;
  v47 = *(v33 + 16);
  if (v47)
  {
    v48 = v46 + ((*(v132 + 80) + 32) & ~*(v132 + 80));
    v49 = *(v132 + 72);
    do
    {
      v50 = v0[15];
      sub_1DF1A88EC(v48, v50, type metadata accessor for LedgerState);
      sub_1DF1A4C90(v50, type metadata accessor for DediscoAnalytics, type metadata accessor for DediscoAnalytics);
      sub_1DF1A8954(v50, type metadata accessor for LedgerState);
      v48 += v49;
      --v47;
    }

    while (v47);
  }

  v51 = v0[29];
  v148 = v0[30];
  v52 = v0[27];
  v53 = v0[19];
  sub_1DF1A88EC(&v143[v138], v53, type metadata accessor for DediscoAnalytics);
  v54 = (v53 + v137[8]);

  *v54 = v152;
  v54[1] = v151;
  v55 = v137[9];
  sub_1DF16184C(v53 + v55, &qword_1ECE0CDC0, &unk_1DF22D7C0);
  v120(v53 + v55, v51, v52);
  v56 = *v134;
  (*v134)(v53 + v55, 0, 1, v52);
  v57 = v137[10];
  sub_1DF16184C(v53 + v57, &qword_1ECE0CDC0, &unk_1DF22D7C0);
  v120(v53 + v57, v148, v52);
  v58 = v53 + v57;
  v59 = v151;
  v56(v58, 0, 1, v52);
  v60 = *(v136 + 16);
  v3 = v123;
  if (!v60)
  {
LABEL_67:
    sub_1DF1A88EC(v0[19], v0[18], type metadata accessor for DediscoAnalytics);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v144 = sub_1DF174888(0, v144[2] + 1, 1, v144);
    }

    v113 = v144[2];
    v112 = v144[3];
    if (v113 >= v112 >> 1)
    {
      v144 = sub_1DF174888((v112 > 1), v113 + 1, 1, v144);
    }

    v114 = v0[30];
    v115 = v0[27];
    v116 = v0[18];
    v129 = v0[19];
    v126(v0[29], v115);
    v126(v114, v115);
    v144[2] = v113 + 1;
    sub_1DF1A89B4(v116, v144 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v113, type metadata accessor for DediscoAnalytics);
    sub_1DF1A8954(v129, type metadata accessor for DediscoAnalytics);
    v5 = v121;
    v4 = v122;
    goto LABEL_14;
  }

  v61 = v0[9] + ((*(v131 + 80) + 32) & ~*(v131 + 80));
  v149 = *(v131 + 72);
  while (2)
  {
    v62 = v0[12];
    sub_1DF1A88EC(v61, v62, type metadata accessor for TaskTelemetry);
    v63 = (v62 + v123[7]);
    v64 = *v63 == v152 && v63[1] == v59;
    if (!v64 && (sub_1DF22B620() & 1) == 0 || (type metadata accessor for TelemetryBucketRange(0), (sub_1DF22A7B0() & 1) == 0))
    {
LABEL_30:
      sub_1DF1A8954(v0[12], type metadata accessor for TaskTelemetry);
      v61 += v149;
      if (!--v60)
      {
        goto LABEL_67;
      }

      continue;
    }

    break;
  }

  v65 = v0[19];
  v66 = *(v0[12] + v123[10]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v65;
  v153[0] = v68;
  v69 = sub_1DF175254(0x6574656C706D6F43, 0xE900000000000064);
  v71 = v68[2];
  v72 = (v70 & 1) == 0;
  v24 = __OFADD__(v71, v72);
  v73 = v71 + v72;
  if (v24)
  {
    goto LABEL_81;
  }

  v74 = v70;
  if (v68[3] >= v73)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_42;
    }

    v76 = v69;
    sub_1DF176390();
    v69 = v76;
    v68 = v153[0];
    if ((v74 & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_43:
    *(v68[7] + 8 * v69) = v66;
  }

  else
  {
    sub_1DF1A63D0(v73, isUniquelyReferenced_nonNull_native);
    v68 = v153[0];
    v69 = sub_1DF175254(0x6574656C706D6F43, 0xE900000000000064);
    if ((v74 & 1) != (v75 & 1))
    {
      goto LABEL_77;
    }

LABEL_42:
    if (v74)
    {
      goto LABEL_43;
    }

LABEL_45:
    v68[(v69 >> 6) + 8] |= 1 << v69;
    v77 = (v68[6] + 16 * v69);
    *v77 = 0x6574656C706D6F43;
    v77[1] = 0xE900000000000064;
    *(v68[7] + 8 * v69) = v66;
    v78 = v68[2];
    v24 = __OFADD__(v78, 1);
    v79 = v78 + 1;
    if (v24)
    {
      goto LABEL_84;
    }

    v68[2] = v79;
  }

  v80 = v0[19];
  v81 = v0[12];
  *v80 = v68;
  v82 = *(v81 + v123[11]);
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v153[0] = *v80;
  v84 = v153[0];
  v85 = sub_1DF175254(0x64656C696146, 0xE600000000000000);
  v87 = v84[2];
  v88 = (v86 & 1) == 0;
  v24 = __OFADD__(v87, v88);
  v89 = v87 + v88;
  if (v24)
  {
    goto LABEL_82;
  }

  v90 = v86;
  if (v84[3] >= v89)
  {
    if (v83)
    {
      goto LABEL_52;
    }

    v92 = v85;
    sub_1DF176390();
    v85 = v92;
    v84 = v153[0];
    if ((v90 & 1) == 0)
    {
      goto LABEL_55;
    }

LABEL_53:
    *(v84[7] + 8 * v85) = v82;
  }

  else
  {
    sub_1DF1A63D0(v89, v83);
    v84 = v153[0];
    v85 = sub_1DF175254(0x64656C696146, 0xE600000000000000);
    if ((v90 & 1) != (v91 & 1))
    {
      goto LABEL_77;
    }

LABEL_52:
    if (v90)
    {
      goto LABEL_53;
    }

LABEL_55:
    v84[(v85 >> 6) + 8] |= 1 << v85;
    v93 = (v84[6] + 16 * v85);
    *v93 = 0x64656C696146;
    v93[1] = 0xE600000000000000;
    *(v84[7] + 8 * v85) = v82;
    v94 = v84[2];
    v24 = __OFADD__(v94, 1);
    v95 = v94 + 1;
    if (v24)
    {
      goto LABEL_85;
    }

    v84[2] = v95;
  }

  v96 = v0[19];
  v97 = v0[12];
  *v96 = v84;
  v98 = *(v97 + v123[12]);
  v99 = swift_isUniquelyReferenced_nonNull_native();
  v153[0] = *v96;
  v100 = v153[0];
  v101 = sub_1DF175254(0x6465727265666544, 0xE800000000000000);
  v103 = v100[2];
  v104 = (v102 & 1) == 0;
  v24 = __OFADD__(v103, v104);
  v105 = v103 + v104;
  if (v24)
  {
    goto LABEL_83;
  }

  v106 = v102;
  if (v100[3] >= v105)
  {
    if ((v99 & 1) == 0)
    {
      v111 = v101;
      sub_1DF176390();
      v101 = v111;
      v100 = v153[0];
      if ((v106 & 1) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_28;
    }

LABEL_62:
    if ((v106 & 1) == 0)
    {
LABEL_63:
      v100[(v101 >> 6) + 8] |= 1 << v101;
      v108 = (v100[6] + 16 * v101);
      *v108 = 0x6465727265666544;
      v108[1] = 0xE800000000000000;
      *(v100[7] + 8 * v101) = v98;
      v109 = v100[2];
      v24 = __OFADD__(v109, 1);
      v110 = v109 + 1;
      if (v24)
      {
        goto LABEL_86;
      }

      v100[2] = v110;
      goto LABEL_29;
    }

LABEL_28:
    *(v100[7] + 8 * v101) = v98;
LABEL_29:
    *v0[19] = v100;
    v59 = v151;
    goto LABEL_30;
  }

  sub_1DF1A63D0(v105, v99);
  v100 = v153[0];
  v101 = sub_1DF175254(0x6465727265666544, 0xE800000000000000);
  if ((v106 & 1) == (v107 & 1))
  {
    goto LABEL_62;
  }

LABEL_77:

  sub_1DF22B660();
}

uint64_t sub_1DF1A420C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LedgerState(0);
  sub_1DF22A800();
  sub_1DF1A8874();
  if (sub_1DF22AC50())
  {
    v2 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF40, &qword_1DF23AAB0);
    v2 = sub_1DF22AC50() ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_1DF1A42BC(uint64_t a1)
{
  v26 = a1;
  v2 = type metadata accessor for LedgerState(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MLHostAnalytics(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  v14 = *(v3 + 56);
  v14(&v22 - v12, 1, 1, v2);
  v15 = qword_1ECE0F348;
  swift_beginAccess();
  v23 = v15;
  sub_1DF1936EC(v13, v1 + v15, &qword_1ECE0CCF8, &qword_1DF22FF80);
  swift_endAccess();
  v16 = MEMORY[0x1E69E7CC0];
  *v7 = sub_1DF18FC1C(MEMORY[0x1E69E7CC0]);
  v7[1] = sub_1DF18FD18(v16);
  v14(v7 + *(v5 + 24), 1, 1, v2);
  v24 = v5;
  v14(v7 + *(v5 + 28), 1, 1, v2);
  v17 = v1 + *(*v1 + 112);
  swift_beginAccess();
  sub_1DF1A8A1C(v7, v17, type metadata accessor for MLHostAnalytics);
  swift_endAccess();
  sub_1DF17A6A8(v26, v11, &qword_1ECE0CCF8, &qword_1DF22FF80);
  if ((*(v3 + 48))(v11, 1, v2) == 1)
  {
    return sub_1DF16184C(v11, &qword_1ECE0CCF8, &qword_1DF22FF80);
  }

  v19 = v25;
  sub_1DF1A89B4(v11, v25, type metadata accessor for LedgerState);
  sub_1DF1A88EC(v19, v13, type metadata accessor for LedgerState);
  v14(v13, 0, 1, v2);
  v20 = v23;
  swift_beginAccess();
  sub_1DF1936EC(v13, v1 + v20, &qword_1ECE0CCF8, &qword_1DF22FF80);
  swift_endAccess();
  sub_1DF1A88EC(v19, v13, type metadata accessor for LedgerState);
  v14(v13, 0, 1, v2);
  swift_beginAccess();
  v21 = v24;
  sub_1DF1936EC(v13, v17 + *(v24 + 24), &qword_1ECE0CCF8, &qword_1DF22FF80);
  sub_1DF1A88EC(v19, v13, type metadata accessor for LedgerState);
  v14(v13, 0, 1, v2);
  sub_1DF1936EC(v13, v17 + *(v21 + 28), &qword_1ECE0CCF8, &qword_1DF22FF80);
  swift_endAccess();
  return sub_1DF1A8954(v19, type metadata accessor for LedgerState);
}

uint64_t sub_1DF1A4750(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v40 = a3;
  v41 = a1;
  v5 = type metadata accessor for LedgerState(0);
  v39 = *(v5 - 8);
  v6 = v39;
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v35 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v38 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - v14;
  v16 = *(v6 + 56);
  v16(&v35 - v14, 1, 1, v5);
  v17 = qword_1ECE0F348;
  swift_beginAccess();
  v35 = v17;
  sub_1DF1936EC(v15, v3 + v17, &qword_1ECE0CCF8, &qword_1DF22FF80);
  swift_endAccess();
  v18 = MEMORY[0x1E69E7CC0];
  *v10 = sub_1DF18FC1C(MEMORY[0x1E69E7CC0]);
  v10[1] = sub_1DF18FD18(v18);
  v16(v10 + v8[6], 1, 1, v5);
  v19 = v10 + v8[7];
  v36 = v16;
  v16(v19, 1, 1, v5);
  v20 = (v10 + v8[8]);
  *v20 = 0;
  v20[1] = 0;
  v21 = v8[9];
  v22 = sub_1DF22A800();
  v23 = *(*(v22 - 8) + 56);
  v24 = v10 + v21;
  v25 = v3;
  v26 = v8;
  v23(v24, 1, 1, v22);
  v23(v10 + v8[10], 1, 1, v22);
  v27 = v38;
  v28 = v5;
  v29 = v25 + *(*v25 + 112);
  swift_beginAccess();
  sub_1DF1A8A1C(v10, v29, v40);
  swift_endAccess();
  sub_1DF17A6A8(v41, v27, &qword_1ECE0CCF8, &qword_1DF22FF80);
  if ((*(v39 + 48))(v27, 1, v5) == 1)
  {
    return sub_1DF16184C(v27, &qword_1ECE0CCF8, &qword_1DF22FF80);
  }

  v31 = v27;
  v32 = v37;
  sub_1DF1A89B4(v31, v37, type metadata accessor for LedgerState);
  sub_1DF1A88EC(v32, v15, type metadata accessor for LedgerState);
  v33 = v36;
  v36(v15, 0, 1, v5);
  v34 = v35;
  swift_beginAccess();
  sub_1DF1936EC(v15, v25 + v34, &qword_1ECE0CCF8, &qword_1DF22FF80);
  swift_endAccess();
  sub_1DF1A88EC(v32, v15, type metadata accessor for LedgerState);
  v33(v15, 0, 1, v28);
  swift_beginAccess();
  sub_1DF1936EC(v15, v29 + v26[6], &qword_1ECE0CCF8, &qword_1DF22FF80);
  sub_1DF1A88EC(v32, v15, type metadata accessor for LedgerState);
  v33(v15, 0, 1, v28);
  sub_1DF1936EC(v15, v29 + v26[7], &qword_1ECE0CCF8, &qword_1DF22FF80);
  swift_endAccess();
  return sub_1DF1A8954(v32, type metadata accessor for LedgerState);
}

uint64_t sub_1DF1A4C90(unint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v78 = a3;
  v75 = a2;
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v74 - v10;
  v12 = type metadata accessor for LedgerState(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v77 = (&v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v76 = (&v74 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v74 - v18);
  v20 = qword_1ECE0F348;
  swift_beginAccess();
  sub_1DF17A6A8(v4 + v20, v11, &qword_1ECE0CCF8, &qword_1DF22FF80);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    sub_1DF1A89B4(v11, v19, type metadata accessor for LedgerState);
    v29 = *(a1 + 8);
    isUniquelyReferenced_nonNull_native = *a1;
    if (sub_1DF222EC4(*v19, v19[1], *a1, v29))
    {
      sub_1DF1A55C8(v19, a1, v75);
      sub_1DF1A88EC(a1, v9, type metadata accessor for LedgerState);
      (*(v13 + 56))(v9, 0, 1, v12);
      swift_beginAccess();
      sub_1DF1936EC(v9, v4 + v20, &qword_1ECE0CCF8, &qword_1DF22FF80);
LABEL_39:
      swift_endAccess();
      return sub_1DF1A8954(v19, type metadata accessor for LedgerState);
    }

    if (qword_1ED8E7530 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

  v19 = &qword_1DF22FF80;
  sub_1DF16184C(v11, &qword_1ECE0CCF8, &qword_1DF22FF80);
  sub_1DF1A88EC(a1, v9, type metadata accessor for LedgerState);
  v21 = *(v13 + 56);
  v22 = v13 + 56;
  v23 = v12;
  v75 = v21;
  v76 = v22;
  (v21)(v9, 0, 1, v12);
  swift_beginAccess();
  sub_1DF1936EC(v9, v4 + v20, &qword_1ECE0CCF8, &qword_1DF22FF80);
  swift_endAccess();
  v24 = *a1;
  v25 = *(a1 + 8);
  v77 = a1;
  a1 = v24;
  v4 += *(*v4 + 112);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v4;
  v27 = v79;
  *v4 = 0x8000000000000000;
  v29 = sub_1DF175254(a1, v25);
  v30 = v27[2];
  v31 = (v28 & 1) == 0;
  v32 = v30 + v31;
  if (__OFADD__(v30, v31))
  {
    __break(1u);
LABEL_25:
    swift_once();
LABEL_10:
    v35 = sub_1DF22A8C0();
    __swift_project_value_buffer(v35, qword_1ED8E92C0);
    v36 = v76;
    sub_1DF1A88EC(v19, v76, type metadata accessor for LedgerState);
    v37 = v77;
    sub_1DF1A88EC(a1, v77, type metadata accessor for LedgerState);
    v38 = sub_1DF22A8A0();
    v39 = sub_1DF22B100();
    v40 = os_log_type_enabled(v38, v39);
    v78 = isUniquelyReferenced_nonNull_native;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v80[0] = v74;
      *v41 = 136315394;
      v43 = *v36;
      v42 = v36[1];

      v75 = v19;
      sub_1DF1A8954(v36, type metadata accessor for LedgerState);
      v44 = sub_1DF160728(v43, v42, v80);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2080;
      v45 = *v37;
      v46 = v37[1];

      v19 = v75;
      sub_1DF1A8954(v37, type metadata accessor for LedgerState);
      a1 = sub_1DF160728(v45, v46, v80);

      *(v41 + 14) = a1;
      _os_log_impl(&dword_1DF15A000, v38, v39, "Invalid StateMachine transition, incrementing state: %s -> %s", v41, 0x16u);
      v47 = v74;
      swift_arrayDestroy();
      MEMORY[0x1E12D0B40](v47, -1, -1);
      MEMORY[0x1E12D0B40](v41, -1, -1);
    }

    else
    {

      sub_1DF1A8954(v37, type metadata accessor for LedgerState);
      sub_1DF1A8954(v36, type metadata accessor for LedgerState);
    }

    v25 = *(*v4 + 112);
    swift_beginAccess();

    v48 = swift_isUniquelyReferenced_nonNull_native();
    v79 = *(v4 + v25);
    v23 = v79;
    *(v4 + v25) = 0x8000000000000000;
    v9 = sub_1DF175254(v78, v29);
    v50 = v23[2];
    v51 = (v49 & 1) == 0;
    v52 = v50 + v51;
    if (!__OFADD__(v50, v51))
    {
      LOBYTE(a1) = v49;
      if (v23[3] >= v52)
      {
        if (v48)
        {
          *(v4 + v25) = v23;
          if ((v49 & 1) == 0)
          {
LABEL_35:
            sub_1DF226334(&v79);
            v23[(v9 >> 6) + 8] |= 1 << v9;
            v67 = (v23[6] + 16 * v9);
            v68 = v79;
            *v67 = v78;
            v67[1] = v29;
            *(v23[7] + 8 * v9) = v68;
            v69 = v23[2];
            v58 = __OFADD__(v69, 1);
            v70 = v69 + 1;
            if (v58)
            {
LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

            v23[2] = v70;
LABEL_37:
            v71 = v23[7];
            v72 = *(v71 + 8 * v9);
            v58 = __OFADD__(v72, 1);
            v73 = v72 + 1;
            if (!v58)
            {
              *(v71 + 8 * v9) = v73;
              goto LABEL_39;
            }

            __break(1u);
            goto LABEL_41;
          }

LABEL_23:

          goto LABEL_37;
        }

LABEL_34:
        sub_1DF176390();
        v23 = v79;
        *(v4 + v25) = v79;
        if ((a1 & 1) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_23;
      }

      sub_1DF1A63D0(v52, v48);
      v23 = v79;
      v53 = sub_1DF175254(v78, v29);
      if ((a1 & 1) == (v54 & 1))
      {
        v9 = v53;
        *(v4 + v25) = v23;
        if ((a1 & 1) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_23;
      }

      goto LABEL_42;
    }

    __break(1u);
    goto LABEL_27;
  }

  v19 = v28;
  if (v27[3] >= v32)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *v4 = v27;
      if (v28)
      {
        goto LABEL_14;
      }

LABEL_28:
      sub_1DF226334(&v79);
      v55 = v79;
      v27[(v29 >> 6) + 8] |= 1 << v29;
      v56 = (v27[6] + 16 * v29);
      *v56 = a1;
      v56[1] = v25;
      *(v27[7] + 8 * v29) = v55;
      v57 = v27[2];
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v27[2] = v59;
LABEL_30:
      v60 = v27[7];
      v61 = *(v60 + 8 * v29);
      v58 = __OFADD__(v61, 1);
      v62 = v61 + 1;
      if (!v58)
      {
        *(v60 + 8 * v29) = v62;
        swift_endAccess();
        v63 = v77;
        sub_1DF1A88EC(v77, v9, type metadata accessor for LedgerState);
        v64 = v75;
        (v75)(v9, 0, 1, v23);
        swift_beginAccess();
        v65 = v78(0);
        sub_1DF1936EC(v9, v4 + *(v65 + 24), &qword_1ECE0CCF8, &qword_1DF22FF80);
        sub_1DF1A88EC(v63, v9, type metadata accessor for LedgerState);
        (v64)(v9, 0, 1, v23);
        sub_1DF1936EC(v9, v4 + *(v65 + 28), &qword_1ECE0CCF8, &qword_1DF22FF80);
        return swift_endAccess();
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_27:
    sub_1DF176390();
    v27 = v79;
    *v4 = v79;
    if (v19)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

  sub_1DF1A63D0(v32, isUniquelyReferenced_nonNull_native);
  v27 = v79;
  v33 = sub_1DF175254(a1, v25);
  if ((v19 & 1) == (v34 & 1))
  {
    v29 = v33;
    *v4 = v27;
    if ((v19 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_14:

    goto LABEL_30;
  }

LABEL_42:
  result = sub_1DF22B660();
  __break(1u);
  return result;
}

uint64_t sub_1DF1A55C8(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v53 - v9);
  v11 = a1[1];
  v56 = *a1;
  v13 = *a2;
  v12 = a2[1];
  v55 = type metadata accessor for LedgerState(0);
  swift_bridgeObjectRetain_n();

  sub_1DF22A7F0();
  v15 = v14;
  v16 = (v5 + *(*v5 + 112));
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v16;
  v18 = v57;
  *v16 = 0x8000000000000000;
  v19 = sub_1DF175254(v13, v12);
  v21 = v18[2];
  v22 = (v20 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v20;
  if (v18[3] < v24)
  {
    sub_1DF1A63D0(v24, isUniquelyReferenced_nonNull_native);
    v18 = v57;
    v19 = sub_1DF175254(v13, v12);
    if ((v5 & 1) == (v25 & 1))
    {
      goto LABEL_6;
    }

    v19 = sub_1DF22B660();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = a2;
    v26 = v10;
    v27 = a3;
    v28 = v19;
    sub_1DF176390();
    v19 = v28;
    a3 = v27;
    v10 = v26;
    a2 = isUniquelyReferenced_nonNull_native;
    v18 = v57;
    *v16 = v57;
    if (v5)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  *v16 = v18;
  if (v5)
  {
LABEL_7:
    v5 = v19;

    v19 = v5;
    goto LABEL_12;
  }

LABEL_10:
  v18[(v19 >> 6) + 8] |= 1 << v19;
  v29 = (v18[6] + 16 * v19);
  *v29 = v13;
  v29[1] = v12;
  *(v18[7] + 8 * v19) = 0;
  v30 = v18[2];
  v23 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v23)
  {
    goto LABEL_31;
  }

  v18[2] = v31;
LABEL_12:
  v32 = v18[7];
  v33 = *(v32 + 8 * v19);
  v23 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v23)
  {
    __break(1u);
    goto LABEL_29;
  }

  v54 = a2;
  a2 = v10;
  v10 = a3;
  *(v32 + 8 * v19) = v34;
  swift_endAccess();
  swift_beginAccess();
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v16[1];
  v36 = v57;
  v16[1] = 0x8000000000000000;
  v5 = sub_1DF1752CC(v56, v11, v13, v12);
  v38 = v36[2];
  v39 = (v37 & 1) == 0;
  v40 = v38 + v39;
  if (__OFADD__(v38, v39))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  LOBYTE(isUniquelyReferenced_nonNull_native) = v37;
  if (v36[3] < v40)
  {
    sub_1DF1A60CC(v40, v35);
    v36 = v57;
    v41 = sub_1DF1752CC(v56, v11, v13, v12);
    if ((isUniquelyReferenced_nonNull_native & 1) == (v42 & 1))
    {
      v5 = v41;
      goto LABEL_18;
    }

    goto LABEL_34;
  }

  if ((v35 & 1) == 0)
  {
    goto LABEL_32;
  }

  while (1)
  {
LABEL_18:
    v43 = v10;
    v16[1] = v36;
    v10 = a2;
    if (isUniquelyReferenced_nonNull_native)
    {

      a2 = v54;
      goto LABEL_22;
    }

    v36[(v5 >> 6) + 8] |= 1 << v5;
    v44 = (v36[6] + 32 * v5);
    *v44 = v56;
    v44[1] = v11;
    v44[2] = v13;
    v44[3] = v12;
    v45 = (v36[7] + 32 * v5);
    *v45 = 0x7FEFFFFFFFFFFFFFLL;
    v45[1] = 0;
    v45[2] = 0;
    v45[3] = 0;
    v46 = v36[2];
    v23 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    a2 = v54;
    if (v23)
    {
      break;
    }

    v36[2] = v47;
LABEL_22:
    v48 = v36[7] + 32 * v5;
    if (v15 < *v48)
    {
      *v48 = v15;
    }

    if (*(v48 + 8) < v15)
    {
      *(v48 + 8) = v15;
    }

    v49 = *(v48 + 24);
    v23 = __OFADD__(v49, 1);
    v50 = v49 + 1;
    if (!v23)
    {
      *(v48 + 24) = v50;
      *(v48 + 16) = *(v48 + 16) + (v15 - *(v48 + 16)) / v50;
      swift_endAccess();
      sub_1DF1A88EC(a2, v10, type metadata accessor for LedgerState);
      (*(*(v55 - 8) + 56))(v10, 0, 1);
      swift_beginAccess();
      v51 = (v43)(0);
      sub_1DF1936EC(v10, v16 + *(v51 + 28), &qword_1ECE0CCF8, &qword_1DF22FF80);
      return swift_endAccess();
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    sub_1DF176200();
    v36 = v57;
  }

  __break(1u);
LABEL_34:
  result = sub_1DF22B660();
  __break(1u);
  return result;
}

uint64_t sub_1DF1A5AA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v10 = a2;
  v48 = a3;
  v49 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v45 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v47 = &v43 - v12;
  v13 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v46 = v10;
  result = sub_1DF22B3E0();
  v15 = result;
  if (*(v13 + 16))
  {
    v43 = v6;
    v44 = v13;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = result + 64;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(v13 + 56);
      v30 = (*(v13 + 48) + 16 * v28);
      v31 = *v30;
      v32 = v30[1];
      v33 = *(v45 + 72);
      v34 = v29 + v33 * v28;
      if (v46)
      {
        sub_1DF17A710(v34, v47, v48, v49);
      }

      else
      {
        sub_1DF17A6A8(v34, v47, v48, v49);
      }

      sub_1DF22B6C0();
      sub_1DF22AD20();
      result = sub_1DF22B6F0();
      v35 = -1 << *(v15 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v22 + 8 * v37);
          if (v41 != -1)
          {
            v23 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v24 = (*(v15 + 48) + 16 * v23);
      *v24 = v31;
      v24[1] = v32;
      result = sub_1DF17A710(v47, *(v15 + 56) + v33 * v23, v48, v49);
      ++*(v15 + 16);
      v13 = v44;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v9 = v43;
      goto LABEL_34;
    }

    v42 = 1 << *(v13 + 32);
    v9 = v43;
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v9 = v15;
  return result;
}

uint64_t sub_1DF1A5E14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDA0, &qword_1DF22D7A0);
  v35 = v4;
  result = sub_1DF22B3E0();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1DF22B6C0();
      sub_1DF22AD20();
      result = sub_1DF22B6F0();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1DF1A60CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCD0, &qword_1DF22D6C8);
  v40 = v4;
  result = sub_1DF22B3E0();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
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
      v22 = 32 * (v19 | (v8 << 6));
      v23 = *(v5 + 56);
      v24 = (*(v5 + 48) + v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[3];
      v43 = v24[2];
      v28 = (v23 + v22);
      v42 = *v28;
      v29 = *(v28 + 2);
      v41 = *(v28 + 3);
      if ((v40 & 1) == 0)
      {
      }

      sub_1DF22B6C0();
      sub_1DF22AD20();
      sub_1DF22AD20();
      result = sub_1DF22B6F0();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 32 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v25;
      v17[1] = v26;
      v17[2] = v43;
      v17[3] = v27;
      v18 = *(v7 + 56) + v16;
      *v18 = v42;
      *(v18 + 16) = v29;
      *(v18 + 24) = v41;
      ++*(v7 + 16);
      v5 = v39;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_33;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1DF1A63D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD78, &qword_1DF22D770);
  v34 = v4;
  result = sub_1DF22B3E0();
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

      sub_1DF22B6C0();
      sub_1DF22AD20();
      result = sub_1DF22B6F0();
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

uint64_t sub_1DF1A6670(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_1DF22AA80();
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD58, &qword_1DF22FF90);
  v42 = v4;
  result = sub_1DF22B3E0();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_1DF22B6C0();
      sub_1DF22AD20();
      result = sub_1DF22B6F0();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1DF1A69F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD38, &unk_1DF2387C0);
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD40, &unk_1DF22D740);
  v42 = v4;
  result = sub_1DF22B3E0();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_1DF22B6C0();
      sub_1DF22AD20();
      result = sub_1DF22B6F0();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1DF1A6D78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v35 = v6;
  result = sub_1DF22B3E0();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = 16 * (v20 | (v10 << 6));
      v24 = (*(v7 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v36 = *(*(v7 + 56) + v23);
      if ((v35 & 1) == 0)
      {
      }

      sub_1DF22B6C0();
      sub_1DF22AD20();
      result = sub_1DF22B6F0();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = 16 * v17;
      v19 = (*(v9 + 48) + v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v9 + 56) + v18) = v36;
      ++*(v9 + 16);
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_1DF1A7028(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for MLHostAnalytics(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF0, &unk_1DF22D6F0);
  v40 = v4;
  result = sub_1DF22B3E0();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_1DF1A89B4(v28, v41, type metadata accessor for MLHostAnalytics);
      }

      else
      {
        sub_1DF1A88EC(v28, v41, type metadata accessor for MLHostAnalytics);
      }

      sub_1DF22B6C0();
      sub_1DF22AD20();
      result = sub_1DF22B6F0();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_1DF1A89B4(v41, *(v9 + 56) + v27 * v17, type metadata accessor for MLHostAnalytics);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1DF1A73B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_1DF22B3E0();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_1DF22B6C0();
      sub_1DF22AD20();
      result = sub_1DF22B6F0();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

void sub_1DF1A7654(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DF175254(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
      sub_1DF1936EC(a1, v19 + *(*(v20 - 8) + 72) * v12, &qword_1ECE0CBB0, &qword_1DF22CF88);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1DF175DC8();
    goto LABEL_7;
  }

  sub_1DF1A5AA4(v15, a4 & 1, &qword_1ECE0CBB0, &qword_1DF22CF88, &qword_1ECE0CDB0, &qword_1DF22D7B0);
  v21 = sub_1DF175254(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_1DF22B660();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1DF1A84F0(v12, a2, a3, a1, v18, &qword_1ECE0CBB0, &qword_1DF22CF88);
}

void sub_1DF1A77F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DF175254(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
      sub_1DF1936EC(a1, v19 + *(*(v20 - 8) + 72) * v12, &qword_1ECE0CBA8, &qword_1DF22CF80);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1DF175DEC();
    goto LABEL_7;
  }

  sub_1DF1A5AA4(v15, a4 & 1, &qword_1ECE0CBA8, &qword_1DF22CF80, &qword_1ECE0CDB8, &qword_1DF22D7B8);
  v21 = sub_1DF175254(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_1DF22B660();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1DF1A84F0(v12, a2, a3, a1, v18, &qword_1ECE0CBA8, &qword_1DF22CF80);
}

void sub_1DF1A799C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DF175254(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD60, &qword_1DF22FFC0);
      sub_1DF1936EC(a1, v19 + *(*(v20 - 8) + 72) * v12, &qword_1ECE0CD60, &qword_1DF22FFC0);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1DF17605C();
    goto LABEL_7;
  }

  sub_1DF1A5AA4(v15, a4 & 1, &qword_1ECE0CD60, &qword_1DF22FFC0, &qword_1ECE0CD68, &unk_1DF22D760);
  v21 = sub_1DF175254(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_1DF22B660();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1DF1A84F0(v12, a2, a3, a1, v18, &qword_1ECE0CD60, &qword_1DF22FFC0);
}

void sub_1DF1A7B40(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DF175254(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DF1A5E14(v16, a4 & 1);
      v11 = sub_1DF175254(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1DF22B660();
        __break(1u);
_objc_release_x1:
        MEMORY[0x1EEE66BB8]();
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1DF176080();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_1DF1A7CB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DF175254(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1DF1764F8();
      goto LABEL_7;
    }

    sub_1DF1A6670(v15, a4 & 1);
    v25 = sub_1DF175254(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1DF22B660();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1DF22AA80();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_1DF1A865C(v12, a2, a3, a1, v18);
}

void sub_1DF1A7E38(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DF175254(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1DF176778();
      goto LABEL_7;
    }

    sub_1DF1A69F0(v15, a4 & 1);
    v25 = sub_1DF175254(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1DF22B660();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD38, &unk_1DF2387C0);
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_1DF1A870C(v12, a2, a3, a1, v18);
}