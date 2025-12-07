void *sub_1E65467E0()
{
  v1 = v0;
  v2 = sub_1E65D7B58();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074158, &unk_1E660A490);
  v6 = *v0;
  v7 = sub_1E65E6858();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_1E6546A18(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1E65D7B58();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074158, &unk_1E660A490);
  v7 = sub_1E65E6868();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1E6546ED0(&qword_1ED074160, MEMORY[0x1E69CB020], MEMORY[0x1E69CB028]);
      result = sub_1E65E5B38();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1E6546D34(uint64_t a1)
{
  v2 = sub_1E65D7B58();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E6546ED0(&qword_1ED074160, MEMORY[0x1E69CB020], MEMORY[0x1E69CB028]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E6545F00(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E6546ED0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ImageAssetRequest.template.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ImageAssetRequest.cropCode.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ImageAssetRequest.fileType.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ImageAssetRequest.cacheBehavior.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImageAssetRequest(0) + 40);
  v4 = sub_1E65DB748();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ImageAssetRequest(uint64_t a1)
{
  result = qword_1EE2D6E68;
  if (!qword_1EE2D6E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImageAssetRequest.init(template:size:cropCode:fileType:priority:expirationPolicy:cacheBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, char a12, uint64_t a13)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a10;
  *(a9 + 24) = a11;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a12 & 1;
  v14 = *(type metadata accessor for ImageAssetRequest(0) + 40);
  v15 = sub_1E65DB748();
  v16 = *(*(v15 - 8) + 32);

  return v16(a9 + v14, a13, v15);
}

void sub_1E6547158(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for QualityOfService(319);
    if (v2 <= 0x3F)
    {
      sub_1E65DB748();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t AssetService.fetchRemoteImage.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AssetService.queryStandardImageBestMatches.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AssetService.reportFailedRemoteImageURL.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AssetService.queryAllAssetBundles.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t AssetService.queryWorkoutAssetBundles.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t AssetService.queryCompletedAssetBundlesOnCurrentDevice.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t AssetService.queryCompletedAssetBundleCountOnCurrentDevice.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t AssetService.filterAssetBundlesOnCurrentDevice.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t AssetService.makeAssetBundleUpdatedStream.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t AssetService.downloadAssetBundleOnCurrentDevice.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t AssetService.cancelAssetBundleOnCurrentDevice.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t AssetService.cancelAssetBundleOnActivePairedDevice.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t AssetService.makeAssetBundleProgressUpdatedStream.getter()
{
  v1 = *(v0 + 192);

  return v1;
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_1E65474C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_1E6547508(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MetricService.publishTrainerTipQuarantineRegionEntered.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MetricService.publishTrainerTipQuarantineRegionExited.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MetricService.record.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MetricService.recordMetricPerformanceStream.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t MetricService.makeOverlayMetricFields.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void static MetricService.simulator()(void (**a1)()@<X8>)
{
  *a1 = nullsub_1;
  a1[1] = 0;
  a1[2] = nullsub_1;
  a1[3] = 0;
  a1[4] = nullsub_1;
  a1[5] = 0;
  a1[6] = nullsub_1;
  a1[7] = 0;
  a1[8] = &unk_1E660A5C8;
  a1[9] = 0;
}

uint64_t sub_1E65476F0()
{
  v1 = sub_1E642764C(MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t LiveMetricService.init(eventHub:metricFieldsProvider:serviceSubscriptionCache:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  sub_1E5DF599C(a3, (a5 + 2));

  return sub_1E5DF599C(a4, (a5 + 7));
}

uint64_t sub_1E65477A4(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_1E65D76A8();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v4 = sub_1E65D92D8();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65478C0, 0, 0);
}

uint64_t sub_1E65478C0()
{
  v1 = v0[12];
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v2);
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_1E6547980;
  v5 = v0[18];

  return MEMORY[0x1EEE37848](v5, v2, v3);
}

uint64_t sub_1E6547980()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1E6547BC0;
  }

  else
  {
    v2 = sub_1E6547A94;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6547A94(uint64_t a1)
{
  v3 = v1[17];
  v2 = v1[18];
  v5 = v1[15];
  v4 = v1[16];
  v6 = v1[13];
  v7 = v1[14];
  sub_1E65D7698();
  v8 = sub_1E65D92A8();
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v9 = sub_1E65DB7D8();
  v10 = MEMORY[0x1E69CD5F0];
  if ((v8 & 1) == 0)
  {
    v10 = MEMORY[0x1E69CD5F8];
  }

  (*(*(v9 - 8) + 104))(v1[11], *v10, v9);

  v11 = v1[1];

  return v11();
}

uint64_t sub_1E6547BC0()
{
  v1 = v0[20];
  swift_getErrorValue();
  v0[5] = MEMORY[0x1E69CC9A8];
  v0[6] = sub_1E5FFF464();
  *(v0 + 16) = 4;
  v2 = sub_1E65E6CA8();

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = sub_1E65DB7D8();
  v4 = MEMORY[0x1E69CD5F8];
  if ((v2 & 1) == 0)
  {
    v4 = MEMORY[0x1E69CD600];
  }

  (*(*(v3 - 8) + 104))(v0[11], *v4, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6547CF4(uint64_t *a1)
{
  v1 = sub_1E65DB908();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_1E65DB8F8();
  sub_1E6548924(&qword_1ED07AED8, MEMORY[0x1E69CD6A0], MEMORY[0x1E69CD698]);
  sub_1E65DDDE8();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1E6547E24(uint64_t *a1)
{
  v1 = sub_1E65DB8E8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_1E65DB8D8();
  sub_1E6548924(&qword_1ED07AED0, MEMORY[0x1E69CD690], MEMORY[0x1E69CD688]);
  sub_1E65DDDE8();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1E6547F54(uint64_t a1, void *a2)
{
  v3 = sub_1E65D8C88();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65DB758();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  sub_1E65DB768();
  swift_getObjectType();
  sub_1E6548924(&qword_1EE2D6D38, MEMORY[0x1E69CD5C8], MEMORY[0x1E69CD5C0]);
  sub_1E65DDDE8();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1E654812C(uint64_t a1, void *a2)
{
  v3 = sub_1E65D9B48();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65DB898();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  sub_1E65DB8A8();
  swift_getObjectType();
  sub_1E6548924(&unk_1EE2D6D08, MEMORY[0x1E69CD668], MEMORY[0x1E69CD660]);
  sub_1E65DDDE8();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1E6548304(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 96) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  v4 = sub_1E65DB7D8();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  v5 = swift_task_alloc();
  *(v3 + 48) = v5;
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  *v6 = v3;
  v6[1] = sub_1E6548404;

  return sub_1E65477A4(v5);
}

uint64_t sub_1E6548404()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1E6548708;
  }

  else
  {
    v2 = sub_1E6548518;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6548518()
{
  v1 = *(v0 + 24);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1E65485E0;
  v5 = *(v0 + 48);
  v6 = *(v0 + 16);
  v7 = *(v0 + 96);

  return MEMORY[0x1EEE378C0](v6, v5, v7, v2, v3);
}

uint64_t sub_1E65485E0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_1E65487F0;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_1E654876C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6548708()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E654876C()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];
  v2 = v0[11];

  return v1(v2);
}

uint64_t sub_1E65487F0()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E654886C(uint64_t a1, char a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5FE99E8;

  return sub_1E6548304(a1, a2, v2 + 16);
}

uint64_t sub_1E6548924(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double static ConfigurationService.simulator()@<D0>(void *a1@<X8>)
{
  type metadata accessor for SimulatorConfigurationService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *a1 = &unk_1E660A648;
  a1[1] = v2;
  a1[2] = &unk_1E660A658;
  a1[3] = v2;

  return result;
}

uint64_t sub_1E6548A04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E6548AB0()
{
  sub_1E65D82E8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6548B14(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E6548A94(a1, v1);
}

uint64_t ConfigurationService.fetchRemoteConfiguration.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ConfigurationService.queryConfiguration.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1E6548C10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1E6548C58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E6548C98()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6548D64, v0, 0);
}

uint64_t sub_1E6548D64()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 112), *(*(v0 + 16) + 136));
  sub_1E65DD498();

  return MEMORY[0x1EEE6DFA0](sub_1E6548DF8, 0, 0);
}

uint64_t sub_1E6548DF8()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = "ConfigurationService/LiveConfigurationService.swift";
  *(v2 + 24) = 51;
  *(v2 + 32) = 2;
  *(v2 + 40) = 21;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E6523A50;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6549DB0, v2, v4);
}

uint64_t sub_1E6548F08(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AEE8, &qword_1E660AB60);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6548FD4, v1, 0);
}

uint64_t sub_1E6548FD4()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 112), *(*(v0 + 24) + 136));
  sub_1E65DD4A8();

  return MEMORY[0x1EEE6DFA0](sub_1E6549068, 0, 0);
}

uint64_t sub_1E6549068()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "ConfigurationService/LiveConfigurationService.swift";
  *(v2 + 24) = 51;
  *(v2 + 32) = 2;
  *(v2 + 40) = 25;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = sub_1E65D82F8();
  *v3 = v0;
  v3[1] = sub_1E6549180;
  v5 = v0[2];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6549938, v2, v4);
}

uint64_t sub_1E6549180()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6522D30, 0, 0);
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_1E6549304()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E6548C98();
}

uint64_t sub_1E6549394()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E6549304();
}

uint64_t sub_1E6549424(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E6548F08(a1);
}

uint64_t sub_1E65494C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E6549424(a1);
}

uint64_t sub_1E654955C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AEF0, &unk_1E660A7B0);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AEE8, &qword_1E660AB60);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E6549CB4;
  *(v34 + 24) = v32;

  v33(sub_1E6531034, v34);
}

uint64_t sub_1E6549950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_1E65D82F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AEF8, &unk_1E660A7C0);
  MEMORY[0x1EEE9AC00](v44);
  v15 = (&v34 - v14);
  v16 = sub_1E65E3B68();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v19 = sub_1E65E3B48();
  v20 = sub_1E65E6338();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_1E65E68B8();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_1E5DFD4B0(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_1E5DE9000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1E694F1C0](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x1E694F1C0](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_1E6549D40(a1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AEF0, &unk_1E660A7B0);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AEF0, &unk_1E660A7B0);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E6549CB4(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AEF0, &unk_1E660A7B0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_1E6549950(a1, v4, v5, v6, v8, v7, v9);
}

uint64_t sub_1E6549D40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AEF8, &unk_1E660A7C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SessionService.requireNewSessionsAllowed.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SessionService.makeQueueSessionItems.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SessionService.makeSessionConfiguration.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SessionService.makeSampleContentSessionConfiguration.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SessionService.makeSessionTerminatedStream.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t SessionService.makeSessionSummaryDismissedStream.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t SessionService.makeAudioLanguagePreferenceUpdatedStream.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t SessionService.queryAudioLanguagePreference.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t SessionService.updateAudioLanguagePreference.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t sub_1E6549F90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1E6549FD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static SessionService.simulator()@<X0>(void *a1@<X8>)
{
  type metadata accessor for SimulatorSessionService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *a1 = &unk_1E660A878;
  a1[1] = v2;
  a1[2] = &unk_1E660A888;
  a1[3] = v2;
  a1[4] = &unk_1E660A898;
  a1[5] = v2;
  a1[6] = &unk_1E660A8A8;
  a1[7] = v2;
  a1[8] = &unk_1E660A8B8;
  a1[9] = v2;
  a1[10] = &unk_1E660A8C8;
  a1[11] = v2;
  a1[12] = &unk_1E660A8D8;
  a1[13] = v2;
  a1[14] = &unk_1E660A8E8;
  a1[15] = v2;
  a1[16] = &unk_1E660A8F8;
  a1[17] = v2;
  return swift_retain_n();
}

uint64_t sub_1E654A158()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E654A208()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FE99E8;

  return sub_1E654A1E8();
}

uint64_t sub_1E654A2B0(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077780, &unk_1E66097F0);
  v1[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF18, &qword_1E660A960);
  v1[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF20, &qword_1E660A968);
  v1[5] = swift_task_alloc();
  v1[6] = sub_1E65DDCF8();
  v1[7] = swift_task_alloc();
  sub_1E65DA3D8();
  v1[8] = swift_task_alloc();
  sub_1E65D8668();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E654A44C, v4, 0);
}

uint64_t sub_1E654A44C()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  sub_1E65D8648();
  sub_1E65DA3C8();
  sub_1E65E5D08();
  sub_1E65DDC38();
  swift_allocObject();
  *v1 = sub_1E65DDC18();
  swift_storeEnumTagMultiPayload();
  v5 = sub_1E65E3978();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = sub_1E65D88C8();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = sub_1E65D96F8();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_1E65E5748();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E654A65C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E654A2B0(a1);
}

uint64_t sub_1E654A768(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077780, &unk_1E66097F0);
  v1[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF18, &qword_1E660A960);
  v1[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF20, &qword_1E660A968);
  v1[5] = swift_task_alloc();
  v1[6] = sub_1E65DDCF8();
  v1[7] = swift_task_alloc();
  sub_1E65DA3D8();
  v1[8] = swift_task_alloc();
  sub_1E65D8668();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E654B290, v4, 0);
}

uint64_t sub_1E654A904(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E654A768(a1);
}

uint64_t sub_1E654AA10(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF10, &unk_1E660A950);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E654AAE0, a2, 0);
}

uint64_t sub_1E654AAE0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1E65DDE98();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E654ABB8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E654AA10(a1, v1);
}

uint64_t sub_1E654AC54(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF08, &qword_1E660A948);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E654AD24, a2, 0);
}

uint64_t sub_1E654AD24()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1E65E5538();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E654ADFC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E654AC54(a1, v1);
}

uint64_t sub_1E654AE98(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF00, &qword_1E660A940);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E654AF68, a2, 0);
}

uint64_t sub_1E654AF68()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1E65D9AC8();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E654B040(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E654AE98(a1, v1);
}

uint64_t sub_1E654B0F8()
{
  sub_1E65D9AB8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E654B15C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E654B0DC(a1, v1);
}

uint64_t sub_1E654B1F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E654B294()
{
  v1[3] = v0;
  v2 = sub_1E65D8018();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF80, &unk_1E660AB20);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = sub_1E65DACD8();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E654B418, v0, 0);
}

uint64_t sub_1E654B418()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 296), *(*(v0 + 24) + 320));
  sub_1E65DDAB8();

  return MEMORY[0x1EEE6DFA0](sub_1E654B4AC, 0, 0);
}

uint64_t sub_1E654B4AC()
{
  v1 = v0[9];
  v2 = swift_task_alloc();
  v0[13] = v2;
  *(v2 + 16) = "FitnessSessionService/LiveSessionService.swift";
  *(v2 + 24) = 46;
  *(v2 + 32) = 2;
  *(v2 + 40) = 39;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1E654B5BC;
  v4 = v0[12];
  v5 = v0[10];

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6557BA8, v2, v5);
}

uint64_t sub_1E654B5BC()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1E654B968;
    v4 = 0;
  }

  else
  {
    v6 = v2[11];
    v5 = v2[12];
    v8 = v2[9];
    v7 = v2[10];
    v9 = v2[7];
    v10 = v2[8];
    v11 = v2[3];
    (*(v6 + 8))(v5, v7);
    (*(v10 + 8))(v8, v9);
    v3 = sub_1E654B734;
    v4 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E654B734()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1E6557C18(&qword_1ED077378, MEMORY[0x1E69CB200], MEMORY[0x1E69CB208]);
  v3 = swift_allocError();
  v4 = *MEMORY[0x1E69CB1F8];
  (*(v2 + 104))(v5, v4, v1);
  swift_willThrow();
  *(v0 + 16) = v3;
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 40) + 88))(*(v0 + 48), *(v0 + 32)) == v4)
    {
      v7 = *(v0 + 40);
      v8 = *(v0 + 32);

      swift_allocError();
      (*(v7 + 104))(v9, v4, v8);
      swift_willThrow();

      v10 = *(v0 + 8);
      goto LABEL_6;
    }

    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  }

  v10 = *(v0 + 8);
LABEL_6:

  return v10();
}

uint64_t sub_1E654B968()
{
  v1 = v0[3];
  (*(v0[8] + 8))(v0[9], v0[7]);

  return MEMORY[0x1EEE6DFA0](sub_1E654B9E4, v1, 0);
}

uint64_t sub_1E654B9E4()
{
  v1 = *(v0 + 120);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
  if (swift_dynamicCast())
  {
    v3 = (*(*(v0 + 40) + 88))(*(v0 + 48), *(v0 + 32));
    if (v3 == *MEMORY[0x1E69CB1F8])
    {
      v4 = v3;
      v5 = *(v0 + 40);
      v6 = *(v0 + 32);

      sub_1E6557C18(&qword_1ED077378, MEMORY[0x1E69CB200], MEMORY[0x1E69CB208]);
      swift_allocError();
      (*(v5 + 104))(v7, v4, v6);
      swift_willThrow();

      v8 = *(v0 + 8);
      goto LABEL_6;
    }

    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  }

  v8 = *(v0 + 8);
LABEL_6:

  return v8();
}

uint64_t sub_1E654BBD4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_1E65D7F88();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF40, &unk_1E660AAD0);
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_1E65DAEB8();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v7 = sub_1E65D8948();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();
  v8 = sub_1E65D8B08();
  v3[18] = v8;
  v3[19] = *(v8 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF48, &unk_1E660FC30);
  v3[22] = v9;
  v3[23] = *(v9 - 8);
  v3[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E654BE88, v2, 0);
}

uint64_t sub_1E654BE88()
{
  v1 = *(v0 + 40);
  if (*(v0 + 32))
  {
    __swift_project_boxed_opaque_existential_1(v1 + 20, v1[23]);
    sub_1E65DDAF8();
    v2 = sub_1E654BF70;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v1 + 47, v1[50]);
    sub_1E65DD378();
    v2 = sub_1E654C1E8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E654BF70()
{
  v1 = v0[11];
  v2 = swift_task_alloc();
  v0[25] = v2;
  *(v2 + 16) = "FitnessSessionService/LiveSessionService.swift";
  *(v2 + 24) = 46;
  *(v2 + 32) = 2;
  *(v2 + 40) = 61;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_1E654C080;
  v4 = v0[14];
  v5 = v0[12];

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65579F4, v2, v5);
}

uint64_t sub_1E654C080()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {

    v3 = sub_1E654CCDC;
    v4 = 0;
  }

  else
  {
    v6 = v2[10];
    v5 = v2[11];
    v7 = v2[9];
    v8 = v2[5];

    (*(v6 + 8))(v5, v7);
    v3 = sub_1E654C8DC;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E654C1E8()
{
  v1 = v0[24];
  v2 = swift_task_alloc();
  v0[28] = v2;
  *(v2 + 16) = "FitnessSessionService/LiveSessionService.swift";
  *(v2 + 24) = 46;
  *(v2 + 32) = 2;
  *(v2 + 40) = 49;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[29] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF50, &unk_1E660AAE0);
  *v3 = v0;
  v3[1] = sub_1E654C30C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6557A0C, v2, v4);
}

uint64_t sub_1E654C30C()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {

    v3 = sub_1E654C7A0;
    v4 = 0;
  }

  else
  {
    v6 = v2[23];
    v5 = v2[24];
    v7 = v2[22];
    v8 = v2[5];
    v2[31] = v2[2];

    (*(v6 + 8))(v5, v7);
    v3 = sub_1E654C484;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E654C484()
{
  v26 = v0;
  v1 = v0[30];
  v25 = v0[31];

  sub_1E6555004(&v25, MEMORY[0x1E69CB6B0], sub_1E636B294, MEMORY[0x1E69CB6B0], MEMORY[0x1E69CB698]);
  if (v1)
  {
  }

  else
  {

    v3 = v25;
    v4 = *(v25 + 16);
    if (v4)
    {
      v5 = v0[19];
      v6 = v0[16];
      v25 = MEMORY[0x1E69E7CC0];
      sub_1E6556744(0, v4, 0);
      v7 = v25;
      v9 = *(v6 + 16);
      v8 = v6 + 16;
      v10 = v3 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
      v20 = *(v8 + 56);
      v21 = v9;
      v22 = v5;
      do
      {
        v23 = v4;
        v24 = v7;
        v11 = v0[17];
        v12 = v0;
        v13 = v0[15];
        v21(v11, v10, v13);
        sub_1E65D88F8();
        sub_1E65D8908();
        sub_1E65D8938();
        sub_1E65D8928();
        sub_1E65D8AF8();
        v14 = v13;
        v7 = v24;
        (*(v8 - 8))(v11, v14);
        v25 = v24;
        v16 = *(v24 + 16);
        v15 = *(v24 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1E6556744((v15 > 1), v16 + 1, 1);
          v7 = v25;
        }

        v17 = v12[21];
        v18 = v12[18];
        *(v7 + 16) = v16 + 1;
        (*(v22 + 32))(v7 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v16, v17, v18);
        v10 += v20;
        --v4;
        v0 = v12;
      }

      while (v23 != 1);
    }

    else
    {

      v7 = MEMORY[0x1E69E7CC0];
    }

    v19 = v0[1];

    return v19(v7);
  }
}

uint64_t sub_1E654C7A0()
{
  v1 = v0[5];
  (*(v0[23] + 8))(v0[24], v0[22]);

  return MEMORY[0x1EEE6DFA0](sub_1E654C81C, v1, 0);
}

uint64_t sub_1E654C81C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E654C8DC(uint64_t a1)
{
  v35 = v1;
  v2 = sub_1E65DAE88();
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3 && (v5 = v1[7], v4 = sub_1E65550DC(v3, 0), v6 = sub_1E6556F7C(&v34, &v4[(*(v5 + 80) + 32) & ~*(v5 + 80)], v3, v2), v7 = v34, , result = sub_1E5E24EE4(v7), v6 != v3))
  {
    __break(1u);
  }

  else
  {
    v9 = v1[27];
    v34 = v4;
    sub_1E6555004(&v34, MEMORY[0x1E69CB1B8], sub_1E6557220, MEMORY[0x1E69CB1B8], MEMORY[0x1E69CB1B0]);
    if (v9)
    {
    }

    else
    {

      v10 = v34;
      v11 = v34[2];
      if (v11)
      {
        v12 = v1[19];
        v13 = v1[7];
        v34 = MEMORY[0x1E69E7CC0];
        sub_1E6556744(0, v11, 0);
        v14 = v34;
        v16 = *(v13 + 16);
        v15 = v13 + 16;
        v17 = v10 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
        v29 = *(v15 + 56);
        v30 = v16;
        v31 = v1;
        do
        {
          v32 = v11;
          v33 = v14;
          v18 = v1[8];
          v19 = v1[6];
          v30(v18, v17, v19);
          sub_1E65D7F38();
          sub_1E65D7F48();
          sub_1E65D7F78();
          sub_1E65D7F68();

          sub_1E65D8AF8();
          v20 = v19;
          v14 = v33;
          (*(v15 - 8))(v18, v20);
          v34 = v33;
          v22 = *(v33 + 16);
          v21 = *(v33 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_1E6556744((v21 > 1), v22 + 1, 1);
            v14 = v34;
          }

          v23 = v31[20];
          v24 = v31[18];
          *(v14 + 16) = v22 + 1;
          (*(v12 + 32))(v14 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v23, v24);
          v17 += v29;
          --v11;
          v1 = v31;
        }

        while (v32 != 1);
        (*(v31[13] + 8))(v31[14], v31[12]);
      }

      else
      {
        v26 = v1[13];
        v25 = v1[14];
        v27 = v1[12];

        (*(v26 + 8))(v25, v27);
        v14 = MEMORY[0x1E69E7CC0];
      }

      v28 = v1[1];

      return v28(v14);
    }
  }

  return result;
}

uint64_t sub_1E654CCDC()
{
  v1 = v0[5];
  (*(v0[10] + 8))(v0[11], v0[9]);

  return MEMORY[0x1EEE6DFA0](sub_1E654CD58, v1, 0);
}

uint64_t sub_1E654CD58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E654CE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E65E6748();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_1E655726C(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = sub_1E65DA3D8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_1E654CED4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E654CEF4, 0, 0);
}

uint64_t sub_1E654CEF4()
{
  sub_1E65DE188();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E654CF58(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E654D024, v1, 0);
}

uint64_t sub_1E654D024()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 336), *(*(v0 + 24) + 360));
  sub_1E65DD6C8();

  return MEMORY[0x1EEE6DFA0](sub_1E654D0C0, 0, 0);
}

uint64_t sub_1E654D0C0()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessSessionService/LiveSessionService.swift";
  *(v2 + 24) = 46;
  *(v2 + 32) = 2;
  *(v2 + 40) = 182;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1E654D1D0;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65579C4, v2, v4);
}

uint64_t sub_1E654D1D0()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1E65231C0;
    v4 = 0;
  }

  else
  {
    v5 = v2[3];
    (*(v2[5] + 8))(v2[6], v2[4]);
    v3 = sub_1E653C7E4;
    v4 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E654D328(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF28, &qword_1E660AAB0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E654D3F4, v1, 0);
}

uint64_t sub_1E654D3F4()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 336), *(*(v0 + 24) + 360));
  sub_1E65DD6B8();

  return MEMORY[0x1EEE6DFA0](sub_1E654D488, 0, 0);
}

uint64_t sub_1E654D488()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessSessionService/LiveSessionService.swift";
  *(v2 + 24) = 46;
  *(v2 + 32) = 2;
  *(v2 + 40) = 186;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = sub_1E65D9AC8();
  *v3 = v0;
  v3[1] = sub_1E6549180;
  v5 = v0[2];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6557984, v2, v4);
}

uint64_t sub_1E654D5A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E654B294();
}

uint64_t sub_1E654D630(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E60ABB70;

  return sub_1E654BBD4(a1, a2);
}

uint64_t sub_1E654D6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  *(v9 + 104) = v20;
  *(v9 + 112) = v21;
  *(v9 + 88) = v19;
  *(v9 + 72) = a7;
  *(v9 + 80) = a8;
  *(v9 + 64) = a9;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077780, &unk_1E66097F0);
  *(v9 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF18, &qword_1E660A960);
  *(v9 + 128) = swift_task_alloc();
  *(v9 + 136) = sub_1E65DDCF8();
  *(v9 + 144) = swift_task_alloc();
  v10 = sub_1E65D8668();
  *(v9 + 152) = v10;
  *(v9 + 160) = *(v10 - 8);
  *(v9 + 168) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFB0, &qword_1E660AB70);
  *(v9 + 176) = v11;
  *(v9 + 184) = *(v11 - 8);
  *(v9 + 192) = swift_task_alloc();
  *(v9 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF20, &qword_1E660A968);
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD18, &qword_1E660AB50);
  *(v9 + 232) = v12;
  *(v9 + 240) = *(v12 - 8);
  *(v9 + 248) = swift_task_alloc();
  *(v9 + 256) = swift_task_alloc();
  v13 = sub_1E65D9658();
  *(v9 + 264) = v13;
  *(v9 + 272) = *(v13 - 8);
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = swift_task_alloc();
  *(v9 + 296) = swift_task_alloc();
  v14 = sub_1E65DA3D8();
  *(v9 + 304) = v14;
  *(v9 + 312) = *(v14 - 8);
  *(v9 + 320) = swift_task_alloc();
  *(v9 + 328) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF98, &qword_1E660AB58);
  *(v9 + 336) = swift_task_alloc();
  *(v9 + 344) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AEE8, &qword_1E660AB60);
  *(v9 + 352) = v15;
  *(v9 + 360) = *(v15 - 8);
  *(v9 + 368) = swift_task_alloc();
  v16 = sub_1E65D82F8();
  *(v9 + 376) = v16;
  *(v9 + 384) = *(v16 - 8);
  *(v9 + 392) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E654DBA4, v21, 0);
}

uint64_t sub_1E654DBA4()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 240), *(*(v0 + 112) + 264));
  sub_1E65DD4A8();

  return MEMORY[0x1EEE6DFA0](sub_1E654DC64, 0, 0);
}

uint64_t sub_1E654DC64()
{
  v1 = v0;
  v2 = v0[46];
  v3 = swift_task_alloc();
  v1[50] = v3;
  *(v3 + 16) = "FitnessSessionService/LiveSessionService.swift";
  *(v3 + 24) = 46;
  *(v3 + 32) = 2;
  *(v3 + 40) = 126;
  *(v3 + 48) = v2;
  v4 = swift_task_alloc();
  v1[51] = v4;
  *v4 = v1;
  v4[1] = sub_1E654DDA0;
  v5 = v1[49];
  v6 = v1[47];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6557D78, v3, v6);
}

uint64_t sub_1E654DDA0()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = sub_1E654E5E8;
    v4 = 0;
  }

  else
  {
    v5 = v2[14];
    (*(v2[45] + 8))(v2[46], v2[44]);
    v3 = sub_1E654DF40;
    v4 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E654DF40()
{
  v56 = v0;
  v55 = *MEMORY[0x1E69E9840];
  v1 = v0[7];
  v2 = sub_1E65D82D8();
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = *(v2 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  v54 = v0;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v47 = v5;
    v48 = v3;
    v46 = v45;
    v0 = v0[39];
    MEMORY[0x1EEE9AC00](v3);
    v49 = v45 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v49, v6);
    v7 = 0;
    v53 = v2;
    v9 = *(v2 + 56);
    v2 += 56;
    v8 = v9;
    v10 = 1 << *(v2 - 24);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & v8;
    v5 = (v10 + 63) >> 6;
    v52 = v0 + 2;
    v50 = 0;
    v51 = v0 + 1;
    while (v12)
    {
      v13 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v16 = v13 | (v7 << 6);
      v17 = v54[41];
      v18 = v54[38];
      v19 = v54[7];
      (v0[2])(v17, *(v53 + 48) + v0[9] * v16, v18);
      v20 = sub_1E65DA3B8();
      v3 = (v0[1])(v17, v18);
      if (v20 == v19)
      {
        *&v49[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v50++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = sub_1E6556C54(v49, v47, v50, v53);
          v0 = v54;
          goto LABEL_17;
        }
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v5)
      {
        goto LABEL_16;
      }

      v15 = *(v2 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v12 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_25:
    v42 = v3;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v3 = v42;
  }

  v43 = v0[52];
  v44 = swift_slowAlloc();
  v22 = sub_1E6556BC4(v44, v5, v2, sub_1E6557C60);

  result = MEMORY[0x1E694F1C0](v44, -1, -1);
  if (!v43)
  {
LABEL_17:
    v24 = v0[42];
    v23 = v0[43];
    v26 = v0[38];
    v25 = v0[39];

    sub_1E654CE18(v22, v23);

    sub_1E5DFD1CC(v23, v24, &qword_1ED07AF98, &qword_1E660AB58);
    if ((*(v25 + 48))(v24, 1, v26) == 1)
    {
      v28 = v0[48];
      v27 = v0[49];
      v29 = v0[47];
      v30 = v0[43];
      sub_1E5DFE50C(v0[42], &qword_1ED07AF98, &qword_1E660AB58);
      v31 = sub_1E65D7EC8();
      sub_1E6557C18(&qword_1ED078850, MEMORY[0x1E69CB148], MEMORY[0x1E69CB150]);
      v32 = swift_allocError();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69CB140], v31);
      v45[0] = v32;
      swift_willThrow();
      sub_1E5DFE50C(v30, &qword_1ED07AF98, &qword_1E660AB58);
      (*(v28 + 8))(v27, v29);
      v34 = v54[28];
      v45[1] = v54[31];
      v46 = v34;
      v35 = v54[26];
      v47 = v54[27];
      v48 = v35;
      v36 = v54[21];
      v49 = v54[24];
      v50 = v36;
      v37 = v54[16];
      v51 = v54[18];
      v52 = v37;
      v53 = v54[15];

      v38 = v54;

      v39 = v38[1];

      return v39();
    }

    else
    {
      v41 = v0[14];
      (*(v0[39] + 32))(v0[40], v0[42], v0[38]);
      __swift_project_boxed_opaque_existential_1((v41 + 200), *(v41 + 224));
      sub_1E65DDA98();

      return MEMORY[0x1EEE6DFA0](sub_1E654E818, 0, 0);
    }
  }

  return result;
}

uint64_t sub_1E654E5E8()
{
  v1 = v0[14];
  (*(v0[45] + 8))(v0[46], v0[44]);

  return MEMORY[0x1EEE6DFA0](sub_1E654E690, v1, 0);
}

uint64_t sub_1E654E690()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E654E818()
{
  v1 = v0;
  v2 = v0[32];
  v3 = swift_task_alloc();
  v1[53] = v3;
  *(v3 + 16) = "FitnessSessionService/LiveSessionService.swift";
  *(v3 + 24) = 46;
  *(v3 + 32) = 2;
  *(v3 + 40) = 138;
  *(v3 + 48) = v2;
  v4 = swift_task_alloc();
  v1[54] = v4;
  *v4 = v1;
  v4[1] = sub_1E654E954;
  v5 = v1[36];
  v6 = v1[33];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6557D74, v3, v6);
}

uint64_t sub_1E654E954()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {

    v3 = sub_1E654F024;
    v4 = 0;
  }

  else
  {
    v5 = v2[32];
    v6 = v2[29];
    v7 = v2[30];
    v8 = v2[14];

    (*(v7 + 8))(v5, v6);
    v3 = sub_1E654EB08;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E654EB08()
{
  v1 = v0[4];
  (*(v0[34] + 32))(v0[37], v0[36], v0[33]);
  if (!v1)
  {
    sub_1E65E5D08();
  }

  sub_1E65DDC38();
  swift_allocObject();

  v0[61] = sub_1E65DDC18();
  if (v1)
  {
    v2 = v0[28];
    v3 = sub_1E65E3978();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v17 = v0[61];
    v27 = v0[47];
    v28 = v0[49];
    v25 = v0[43];
    v26 = v0[48];
    v5 = v0[40];
    v4 = v0[41];
    v6 = v0[38];
    v7 = v0[39];
    v22 = v0[37];
    v23 = v0[34];
    v24 = v0[33];
    v8 = v0[28];
    v9 = v0[26];
    v10 = v0[18];
    v18 = v0[16];
    v29 = v0[15];
    v19 = v0[11];
    v21 = v0[10];
    v20 = v0[9];
    sub_1E65D9618();
    (*(v7 + 16))(v4, v5, v6);
    *v10 = v17;
    swift_storeEnumTagMultiPayload();
    sub_1E5DFD1CC(v8, v9, &qword_1ED07AF20, &qword_1E660A968);
    v11 = sub_1E65D88C8();
    (*(*(v11 - 8) + 56))(v18, 1, 1, v11);
    sub_1E5DFD1CC(v19, v29, &unk_1ED077780, &unk_1E66097F0);
    sub_1E5FA9D34(v20, v21);

    sub_1E65E5748();
    sub_1E5DFE50C(v8, &qword_1ED07AF20, &qword_1E660A968);
    (*(v23 + 8))(v22, v24);
    (*(v7 + 8))(v5, v6);
    sub_1E5DFE50C(v25, &qword_1ED07AF98, &qword_1E660AB58);
    (*(v26 + 8))(v28, v27);

    v12 = v0[1];

    return v12();
  }

  else
  {
    v15 = v0[20];
    v14 = v0[21];
    v16 = v0[19];
    sub_1E65DDC28();
    sub_1E65D9618();
    sub_1E65E3968();

    (*(v15 + 8))(v14, v16);

    return MEMORY[0x1EEE6DFA0](sub_1E654F484, 0, 0);
  }
}

uint64_t sub_1E654F024()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[14];
  v5 = *(v3 + 8);
  v0[56] = v5;
  v0[57] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_1E654F0D8, v4, 0);
}

uint64_t sub_1E654F0D8()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 200), *(*(v0 + 112) + 224));
  sub_1E65DDA88();

  return MEMORY[0x1EEE6DFA0](sub_1E654F1B0, 0, 0);
}

uint64_t sub_1E654F1B0()
{
  v1 = v0;
  v2 = v0[31];
  v3 = swift_task_alloc();
  v1[58] = v3;
  *(v3 + 16) = "FitnessSessionService/LiveSessionService.swift";
  *(v3 + 24) = 46;
  *(v3 + 32) = 2;
  *(v3 + 40) = 140;
  *(v3 + 48) = v2;
  v4 = swift_task_alloc();
  v1[59] = v4;
  *v4 = v1;
  v4[1] = sub_1E654F2EC;
  v5 = v1[35];
  v6 = v1[33];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6557D74, v3, v6);
}

uint64_t sub_1E654F2EC()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = sub_1E65504D4;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 112);
    (*(v2 + 448))(*(v2 + 248), *(v2 + 232));
    v3 = sub_1E654FFAC;
    v4 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E654F484()
{
  v1 = v0;
  v2 = v0[24];
  v3 = swift_task_alloc();
  v1[62] = v3;
  *(v3 + 16) = "FitnessSessionService/LiveSessionService.swift";
  *(v3 + 24) = 46;
  *(v3 + 32) = 2;
  *(v3 + 40) = 153;
  *(v3 + 48) = v2;
  v4 = swift_task_alloc();
  v1[63] = v4;
  *v4 = v1;
  v4[1] = sub_1E654F5C0;
  v5 = v1[27];
  v6 = v1[25];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6557CA0, v3, v6);
}

uint64_t sub_1E654F5C0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_1E654FB24;
    v4 = 0;
  }

  else
  {
    v6 = v2[23];
    v5 = v2[24];
    v7 = v2[22];
    v8 = v2[14];

    (*(v6 + 8))(v5, v7);
    v3 = sub_1E654F788;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E654F788()
{
  sub_1E6557CB8(v0[27], v0[28]);
  v11 = v0[61];
  v21 = v0[47];
  v22 = v0[49];
  v19 = v0[43];
  v20 = v0[48];
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[38];
  v4 = v0[39];
  v16 = v0[37];
  v17 = v0[34];
  v18 = v0[33];
  v5 = v0[28];
  v6 = v0[26];
  v7 = v0[18];
  v12 = v0[16];
  v23 = v0[15];
  v13 = v0[11];
  v15 = v0[10];
  v14 = v0[9];
  sub_1E65D9618();
  (*(v4 + 16))(v1, v2, v3);
  *v7 = v11;
  swift_storeEnumTagMultiPayload();
  sub_1E5DFD1CC(v5, v6, &qword_1ED07AF20, &qword_1E660A968);
  v8 = sub_1E65D88C8();
  (*(*(v8 - 8) + 56))(v12, 1, 1, v8);
  sub_1E5DFD1CC(v13, v23, &unk_1ED077780, &unk_1E66097F0);
  sub_1E5FA9D34(v14, v15);

  sub_1E65E5748();
  sub_1E5DFE50C(v5, &qword_1ED07AF20, &qword_1E660A968);
  (*(v17 + 8))(v16, v18);
  (*(v4 + 8))(v2, v3);
  sub_1E5DFE50C(v19, &qword_1ED07AF98, &qword_1E660AB58);
  (*(v20 + 8))(v22, v21);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E654FB24()
{
  v1 = v0[14];
  (*(v0[23] + 8))(v0[24], v0[22]);

  return MEMORY[0x1EEE6DFA0](sub_1E654FBCC, v1, 0);
}

uint64_t sub_1E654FBCC()
{
  v1 = v0[27];
  v2 = sub_1E65E3978();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_1E6557CB8(v0[27], v0[28]);
  v13 = v0[61];
  v23 = v0[47];
  v24 = v0[49];
  v21 = v0[43];
  v22 = v0[48];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[38];
  v6 = v0[39];
  v18 = v0[37];
  v19 = v0[34];
  v20 = v0[33];
  v7 = v0[28];
  v8 = v0[26];
  v9 = v0[18];
  v14 = v0[16];
  v25 = v0[15];
  v15 = v0[11];
  v17 = v0[10];
  v16 = v0[9];
  sub_1E65D9618();
  (*(v6 + 16))(v3, v4, v5);
  *v9 = v13;
  swift_storeEnumTagMultiPayload();
  sub_1E5DFD1CC(v7, v8, &qword_1ED07AF20, &qword_1E660A968);
  v10 = sub_1E65D88C8();
  (*(*(v10 - 8) + 56))(v14, 1, 1, v10);
  sub_1E5DFD1CC(v15, v25, &unk_1ED077780, &unk_1E66097F0);
  sub_1E5FA9D34(v16, v17);

  sub_1E65E5748();
  sub_1E5DFE50C(v7, &qword_1ED07AF20, &qword_1E660A968);
  (*(v19 + 8))(v18, v20);
  (*(v6 + 8))(v4, v5);
  sub_1E5DFE50C(v21, &qword_1ED07AF98, &qword_1E660AB58);
  (*(v22 + 8))(v24, v23);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E654FFAC()
{
  v1 = *(v0 + 32);
  (*(*(v0 + 272) + 32))(*(v0 + 296), *(v0 + 280), *(v0 + 264));
  if (!v1)
  {
    sub_1E65E5D08();
  }

  sub_1E65DDC38();
  swift_allocObject();

  *(v0 + 488) = sub_1E65DDC18();
  if (v1)
  {
    v2 = *(v0 + 224);
    v3 = sub_1E65E3978();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v17 = *(v0 + 488);
    v27 = *(v0 + 376);
    v28 = *(v0 + 392);
    v25 = *(v0 + 344);
    v26 = *(v0 + 384);
    v5 = *(v0 + 320);
    v4 = *(v0 + 328);
    v6 = *(v0 + 304);
    v7 = *(v0 + 312);
    v22 = *(v0 + 296);
    v23 = *(v0 + 272);
    v24 = *(v0 + 264);
    v8 = *(v0 + 224);
    v9 = *(v0 + 208);
    v10 = *(v0 + 144);
    v18 = *(v0 + 128);
    v29 = *(v0 + 120);
    v19 = *(v0 + 88);
    v21 = *(v0 + 80);
    v20 = *(v0 + 72);
    sub_1E65D9618();
    (*(v7 + 16))(v4, v5, v6);
    *v10 = v17;
    swift_storeEnumTagMultiPayload();
    sub_1E5DFD1CC(v8, v9, &qword_1ED07AF20, &qword_1E660A968);
    v11 = sub_1E65D88C8();
    (*(*(v11 - 8) + 56))(v18, 1, 1, v11);
    sub_1E5DFD1CC(v19, v29, &unk_1ED077780, &unk_1E66097F0);
    sub_1E5FA9D34(v20, v21);

    sub_1E65E5748();
    sub_1E5DFE50C(v8, &qword_1ED07AF20, &qword_1E660A968);
    (*(v23 + 8))(v22, v24);
    (*(v7 + 8))(v5, v6);
    sub_1E5DFE50C(v25, &qword_1ED07AF98, &qword_1E660AB58);
    (*(v26 + 8))(v28, v27);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v15 = *(v0 + 160);
    v14 = *(v0 + 168);
    v16 = *(v0 + 152);
    sub_1E65DDC28();
    sub_1E65D9618();
    sub_1E65E3968();

    (*(v15 + 8))(v14, v16);

    return MEMORY[0x1EEE6DFA0](sub_1E654F484, 0, 0);
  }
}

uint64_t sub_1E65504D4()
{
  v1 = *(v0 + 112);
  (*(v0 + 448))(*(v0 + 248), *(v0 + 232));

  return MEMORY[0x1EEE6DFA0](sub_1E6550574, v1, 0);
}

uint64_t sub_1E6550574()
{
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);
  v4 = *(v0 + 344);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  v7 = *(v0 + 304);

  (*(v6 + 8))(v5, v7);
  sub_1E5DFE50C(v4, &qword_1ED07AF98, &qword_1E660AB58);
  (*(v2 + 8))(v1, v3);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1E6550760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  *(v9 + 104) = v18;
  *(v9 + 112) = v19;
  *(v9 + 88) = v17;
  *(v9 + 72) = a7;
  *(v9 + 80) = a8;
  *(v9 + 64) = a9;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077780, &unk_1E66097F0);
  *(v9 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF18, &qword_1E660A960);
  *(v9 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF20, &qword_1E660A968);
  *(v9 + 136) = swift_task_alloc();
  *(v9 + 144) = sub_1E65DDCF8();
  *(v9 + 152) = swift_task_alloc();
  sub_1E65D8668();
  *(v9 + 160) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD18, &qword_1E660AB50);
  *(v9 + 168) = v10;
  *(v9 + 176) = *(v10 - 8);
  *(v9 + 184) = swift_task_alloc();
  *(v9 + 192) = swift_task_alloc();
  v11 = sub_1E65D9658();
  *(v9 + 200) = v11;
  *(v9 + 208) = *(v11 - 8);
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = swift_task_alloc();
  *(v9 + 232) = swift_task_alloc();
  v12 = sub_1E65DA3D8();
  *(v9 + 240) = v12;
  *(v9 + 248) = *(v12 - 8);
  *(v9 + 256) = swift_task_alloc();
  *(v9 + 264) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF98, &qword_1E660AB58);
  *(v9 + 272) = swift_task_alloc();
  *(v9 + 280) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AEE8, &qword_1E660AB60);
  *(v9 + 288) = v13;
  *(v9 + 296) = *(v13 - 8);
  *(v9 + 304) = swift_task_alloc();
  v14 = sub_1E65D82F8();
  *(v9 + 312) = v14;
  *(v9 + 320) = *(v14 - 8);
  *(v9 + 328) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6550B78, v19, 0);
}

uint64_t sub_1E6550B78()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 240), *(*(v0 + 112) + 264));
  sub_1E65DD4A8();

  return MEMORY[0x1EEE6DFA0](sub_1E6550C38, 0, 0);
}

uint64_t sub_1E6550C38()
{
  v1 = v0;
  v2 = v0[38];
  v3 = swift_task_alloc();
  v1[42] = v3;
  *(v3 + 16) = "FitnessSessionService/LiveSessionService.swift";
  *(v3 + 24) = 46;
  *(v3 + 32) = 2;
  *(v3 + 40) = 85;
  *(v3 + 48) = v2;
  v4 = swift_task_alloc();
  v1[43] = v4;
  *v4 = v1;
  v4[1] = sub_1E6550D74;
  v5 = v1[41];
  v6 = v1[39];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6557BE8, v3, v6);
}

uint64_t sub_1E6550D74()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_1E6551584;
    v4 = 0;
  }

  else
  {
    v5 = v2[14];
    (*(v2[37] + 8))(v2[38], v2[36]);
    v3 = sub_1E6550F14;
    v4 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E6550F14()
{
  v54 = v0;
  v53 = *MEMORY[0x1E69E9840];
  v1 = v0[7];
  v2 = sub_1E65D82D8();
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = *(v2 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  v52 = v0;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v45 = v5;
    v46 = v3;
    v44 = &v44;
    v0 = v0[31];
    MEMORY[0x1EEE9AC00](v3);
    v47 = &v44 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v47, v6);
    v7 = 0;
    v51 = v2;
    v9 = *(v2 + 56);
    v2 += 56;
    v8 = v9;
    v10 = 1 << *(v2 - 24);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & v8;
    v5 = (v10 + 63) >> 6;
    v50 = v0 + 2;
    v48 = 0;
    v49 = v0 + 1;
    while (v12)
    {
      v13 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v16 = v13 | (v7 << 6);
      v17 = v52[33];
      v18 = v52[30];
      v19 = v52[7];
      (v0[2])(v17, *(v51 + 48) + v0[9] * v16, v18);
      v20 = sub_1E65DA3B8();
      v3 = (v0[1])(v17, v18);
      if (v20 == v19)
      {
        *&v47[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v48++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = sub_1E6556C54(v47, v45, v48, v51);
          v0 = v52;
          goto LABEL_17;
        }
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v5)
      {
        goto LABEL_16;
      }

      v15 = *(v2 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v12 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_25:
    v41 = v3;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v3 = v41;
  }

  v42 = v0[44];
  v43 = swift_slowAlloc();
  v22 = sub_1E6556BC4(v43, v5, v2, sub_1E6557D54);

  result = MEMORY[0x1E694F1C0](v43, -1, -1);
  if (!v42)
  {
LABEL_17:
    v24 = v0[34];
    v23 = v0[35];
    v26 = v0[30];
    v25 = v0[31];

    sub_1E654CE18(v22, v23);

    sub_1E5DFD1CC(v23, v24, &qword_1ED07AF98, &qword_1E660AB58);
    if ((*(v25 + 48))(v24, 1, v26) == 1)
    {
      v28 = v0[40];
      v27 = v0[41];
      v29 = v0[39];
      v30 = v0[35];
      sub_1E5DFE50C(v0[34], &qword_1ED07AF98, &qword_1E660AB58);
      v31 = sub_1E65D7EC8();
      sub_1E6557C18(&qword_1ED078850, MEMORY[0x1E69CB148], MEMORY[0x1E69CB150]);
      v32 = swift_allocError();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69CB140], v31);
      v45 = v32;
      swift_willThrow();
      sub_1E5DFE50C(v30, &qword_1ED07AF98, &qword_1E660AB58);
      (*(v28 + 8))(v27, v29);
      v34 = v52[20];
      v46 = v52[23];
      v47 = v34;
      v35 = v52[17];
      v48 = v52[19];
      v49 = v35;
      v36 = v52[15];
      v50 = v52[16];
      v51 = v36;

      v37 = v52;

      v38 = v37[1];

      return v38();
    }

    else
    {
      v40 = v0[14];
      (*(v0[31] + 32))(v0[32], v0[34], v0[30]);
      __swift_project_boxed_opaque_existential_1((v40 + 200), *(v40 + 224));
      sub_1E65DDA98();

      return MEMORY[0x1EEE6DFA0](sub_1E655178C, 0, 0);
    }
  }

  return result;
}

uint64_t sub_1E6551584()
{
  v1 = v0[14];
  (*(v0[37] + 8))(v0[38], v0[36]);

  return MEMORY[0x1EEE6DFA0](sub_1E655162C, v1, 0);
}

uint64_t sub_1E655162C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E655178C()
{
  v1 = v0;
  v2 = v0[24];
  v3 = swift_task_alloc();
  v1[45] = v3;
  *(v3 + 16) = "FitnessSessionService/LiveSessionService.swift";
  *(v3 + 24) = 46;
  *(v3 + 32) = 2;
  *(v3 + 40) = 97;
  *(v3 + 48) = v2;
  v4 = swift_task_alloc();
  v1[46] = v4;
  *v4 = v1;
  v4[1] = sub_1E65518C8;
  v5 = v1[28];
  v6 = v1[25];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6557C00, v3, v6);
}

uint64_t sub_1E65518C8()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {

    v3 = sub_1E6551E50;
    v4 = 0;
  }

  else
  {
    v5 = v2[24];
    v6 = v2[21];
    v7 = v2[22];
    v8 = v2[14];

    (*(v7 + 8))(v5, v6);
    v3 = sub_1E6551A7C;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E6551A7C()
{
  v1 = v0[4];
  (*(v0[26] + 32))(v0[29], v0[28], v0[25]);
  if (!v1)
  {
    sub_1E65E5D08();
  }

  v20 = v0[40];
  v21 = v0[39];
  v22 = v0[41];
  v19 = v0[35];
  v2 = v0[32];
  v11 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v13 = v0[29];
  v17 = v0[26];
  v18 = v0[25];
  v5 = v0[19];
  v12 = v0[17];
  v23 = v0[16];
  v24 = v0[15];
  v16 = v0[10];
  v14 = v0[11];
  v15 = v0[9];
  sub_1E65DDC38();
  swift_allocObject();

  v6 = sub_1E65DDC18();
  sub_1E65D9618();
  (*(v3 + 16))(v11, v2, v4);
  *v5 = v6;
  swift_storeEnumTagMultiPayload();
  v7 = sub_1E65E3978();
  (*(*(v7 - 8) + 56))(v12, 1, 1, v7);
  v8 = sub_1E65D88C8();
  (*(*(v8 - 8) + 56))(v23, 1, 1, v8);
  sub_1E5DFD1CC(v14, v24, &unk_1ED077780, &unk_1E66097F0);
  sub_1E5FA9D34(v15, v16);

  sub_1E65E5748();
  (*(v17 + 8))(v13, v18);
  (*(v3 + 8))(v2, v4);
  sub_1E5DFE50C(v19, &qword_1ED07AF98, &qword_1E660AB58);
  (*(v20 + 8))(v22, v21);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E6551E50()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[14];
  v5 = *(v3 + 8);
  v0[48] = v5;
  v0[49] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_1E6551F04, v4, 0);
}

uint64_t sub_1E6551F04()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 200), *(*(v0 + 112) + 224));
  sub_1E65DDA88();

  return MEMORY[0x1EEE6DFA0](sub_1E6551FDC, 0, 0);
}

uint64_t sub_1E6551FDC()
{
  v1 = v0;
  v2 = v0[23];
  v3 = swift_task_alloc();
  v1[50] = v3;
  *(v3 + 16) = "FitnessSessionService/LiveSessionService.swift";
  *(v3 + 24) = 46;
  *(v3 + 32) = 2;
  *(v3 + 40) = 99;
  *(v3 + 48) = v2;
  v4 = swift_task_alloc();
  v1[51] = v4;
  *v4 = v1;
  v4[1] = sub_1E6552118;
  v5 = v1[27];
  v6 = v1[25];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6557D74, v3, v6);
}

uint64_t sub_1E6552118()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = sub_1E6552690;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 112);
    (*(v2 + 384))(*(v2 + 184), *(v2 + 168));
    v3 = sub_1E65522B0;
    v4 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E65522B0()
{
  v1 = *(v0 + 32);
  (*(*(v0 + 208) + 32))(*(v0 + 232), *(v0 + 216), *(v0 + 200));
  if (!v1)
  {
    sub_1E65E5D08();
  }

  v20 = *(v0 + 320);
  v21 = *(v0 + 312);
  v22 = *(v0 + 328);
  v19 = *(v0 + 280);
  v2 = *(v0 + 256);
  v11 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v13 = *(v0 + 232);
  v17 = *(v0 + 208);
  v18 = *(v0 + 200);
  v5 = *(v0 + 152);
  v12 = *(v0 + 136);
  v23 = *(v0 + 128);
  v24 = *(v0 + 120);
  v16 = *(v0 + 80);
  v14 = *(v0 + 88);
  v15 = *(v0 + 72);
  sub_1E65DDC38();
  swift_allocObject();

  v6 = sub_1E65DDC18();
  sub_1E65D9618();
  (*(v3 + 16))(v11, v2, v4);
  *v5 = v6;
  swift_storeEnumTagMultiPayload();
  v7 = sub_1E65E3978();
  (*(*(v7 - 8) + 56))(v12, 1, 1, v7);
  v8 = sub_1E65D88C8();
  (*(*(v8 - 8) + 56))(v23, 1, 1, v8);
  sub_1E5DFD1CC(v14, v24, &unk_1ED077780, &unk_1E66097F0);
  sub_1E5FA9D34(v15, v16);

  sub_1E65E5748();
  (*(v17 + 8))(v13, v18);
  (*(v3 + 8))(v2, v4);
  sub_1E5DFE50C(v19, &qword_1ED07AF98, &qword_1E660AB58);
  (*(v20 + 8))(v22, v21);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1E6552690()
{
  v1 = *(v0 + 112);
  (*(v0 + 384))(*(v0 + 184), *(v0 + 168));

  return MEMORY[0x1EEE6DFA0](sub_1E6552730, v1, 0);
}

uint64_t sub_1E6552730()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  v4 = *(v0 + 280);
  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  v7 = *(v0 + 240);

  (*(v6 + 8))(v5, v7);
  sub_1E5DFE50C(v4, &qword_1ED07AF98, &qword_1E660AB58);
  (*(v2 + 8))(v1, v3);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1E65528F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6552910, a2, 0);
}

uint64_t sub_1E6552910()
{
  swift_getObjectType();
  sub_1E65DDE98();
  sub_1E65DDE38();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E65529B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65529CC, a2, 0);
}

uint64_t sub_1E65529CC()
{
  swift_getObjectType();
  sub_1E65E5538();
  sub_1E6557C18(&qword_1EE2D49B8, MEMORY[0x1E69CD890], MEMORY[0x1E69CD888]);
  sub_1E65DDE38();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6552AAC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6552AC8, a2, 0);
}

uint64_t sub_1E6552AC8()
{
  swift_getObjectType();
  sub_1E65DE198();
  sub_1E65D9AC8();
  sub_1E65DDE28();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6552B9C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E654D328(a1);
}

uint64_t sub_1E6552C38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E654CF58(a1);
}

uint64_t sub_1E6552CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF88, &qword_1E660AB30);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF80, &unk_1E660AB20);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E6557BC0;
  *(v34 + 24) = v32;

  v33(sub_1E6557D70, v34);
}

uint64_t sub_1E65530AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF70, &qword_1E660AB10);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF40, &unk_1E660AAD0);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E6557AE8;
  *(v34 + 24) = v32;

  v33(sub_1E6557D70, v34);
}

uint64_t sub_1E6553488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF58, &qword_1E660FC40);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF48, &unk_1E660FC30);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E6557A24;
  *(v34 + 24) = v32;

  v33(sub_1E5E20B18, v34);
}

uint64_t sub_1E6553864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFB8, &qword_1E660AB78);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFB0, &qword_1E660AB70);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E6557D28;
  *(v34 + 24) = v32;

  v33(sub_1E6557D50, v34);
}

uint64_t sub_1E6553C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF30, &qword_1E660AAB8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF28, &qword_1E660AAB0);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E655799C;
  *(v34 + 24) = v32;

  v33(sub_1E6557D70, v34);
}

uint64_t sub_1E655401C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_1E65DACD8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF90, &qword_1E660AB38);
  MEMORY[0x1EEE9AC00](v44);
  v15 = (&v34 - v14);
  v16 = sub_1E65E3B68();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v19 = sub_1E65E3B48();
  v20 = sub_1E65E6338();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_1E65E68B8();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_1E5DFD4B0(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_1E5DE9000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1E694F1C0](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x1E694F1C0](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_1E5DFD1CC(a1, v15, &qword_1ED07AF90, &qword_1E660AB38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF88, &qword_1E660AB30);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF88, &qword_1E660AB30);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E6554390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_1E65DAEB8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF78, &qword_1E660AB18);
  MEMORY[0x1EEE9AC00](v44);
  v15 = (&v34 - v14);
  v16 = sub_1E65E3B68();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v19 = sub_1E65E3B48();
  v20 = sub_1E65E6338();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_1E65E68B8();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_1E5DFD4B0(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_1E5DE9000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1E694F1C0](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x1E694F1C0](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_1E5DFD1CC(a1, v15, &qword_1ED07AF78, &qword_1E660AB18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF70, &qword_1E660AB10);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF70, &qword_1E660AB10);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E6554704(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v31 = a7;
  v30 = a6;
  v29 = a5;
  LODWORD(v10) = a2;
  v12 = sub_1E65E3B68();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v16 = sub_1E65E3B48();
  v17 = sub_1E65E6338();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = a8;
    v19 = v18;
    v20 = swift_slowAlloc();
    HIDWORD(v27) = v10;
    v10 = v20;
    v32 = v20;
    *v19 = 134218498;
    *(v19 + 4) = a3;
    *(v19 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v23 = sub_1E5DFD4B0(v21, v22, &v32);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v31;
    _os_log_impl(&dword_1E5DE9000, v16, v17, "Finished P->A conversion: %ld:%s:%lu", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    v24 = v10;
    LOBYTE(v10) = BYTE4(v27);
    MEMORY[0x1E694F1C0](v24, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v32 = a1;
  if (v10)
  {
    v25 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF58, &qword_1E660FC40);
    return sub_1E65E5FE8();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF58, &qword_1E660FC40);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E6554960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v37 = a5;
  v35 = a3;
  v36 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF20, &qword_1E660A968);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFC0, &unk_1E660AB80);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v31 - v15);
  v17 = sub_1E65E3B68();
  v38 = *(v17 - 8);
  v39 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v20 = sub_1E65E3B48();
  v21 = sub_1E65E6338();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v32 = a6;
    v23 = v22;
    v33 = swift_slowAlloc();
    v34 = a7;
    v40 = v33;
    *v23 = 134218498;
    *(v23 + 4) = a2;
    *(v23 + 12) = 2080;
    v24 = sub_1E65E68B8();
    v26 = a1;
    v27 = v13;
    v28 = sub_1E5DFD4B0(v24, v25, &v40);

    *(v23 + 14) = v28;
    v13 = v27;
    a1 = v26;
    *(v23 + 22) = 2048;
    *(v23 + 24) = v32;
    _os_log_impl(&dword_1E5DE9000, v20, v21, "Finished P->A conversion: %ld:%s:%lu", v23, 0x20u);
    v29 = v33;
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v23, -1, -1);
  }

  (*(v38 + 8))(v19, v39);
  sub_1E5DFD1CC(a1, v16, &qword_1ED07AFC0, &unk_1E660AB80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = *v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFB8, &qword_1E660AB78);
    return sub_1E65E5FE8();
  }

  else
  {
    sub_1E6557CB8(v16, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFB8, &qword_1E660AB78);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E6554C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_1E65D9AC8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF38, &unk_1E660C6B0);
  MEMORY[0x1EEE9AC00](v44);
  v15 = (&v34 - v14);
  v16 = sub_1E65E3B68();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v19 = sub_1E65E3B48();
  v20 = sub_1E65E6338();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_1E65E68B8();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_1E5DFD4B0(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_1E5DE9000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1E694F1C0](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x1E694F1C0](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_1E5DFD1CC(a1, v15, &qword_1ED07AF38, &unk_1E660C6B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF30, &qword_1E660AAB8);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF30, &qword_1E660AAB8);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E6555004(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v9 = *(a2(0) - 8);
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a3(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v13[1] = v11;
  result = sub_1E65551D8(v13, a4, a4, a5);
  *a1 = v10;
  return result;
}

void *sub_1E65550DC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF68, &qword_1E660AB08);
  v4 = *(sub_1E65D7F88() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E65551D8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v8 = *(a1 + 8);
  result = sub_1E65E6BA8();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v12 = sub_1E65E5F98();
        *(v12 + 16) = v11;
      }

      v13 = *(a2(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      sub_1E65555F8(v14, v15, a1, v10, a3, a4, a3, a4);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return sub_1E6555340(0, v8, 1, a1, a3, a4);
  }

  return result;
}

uint64_t sub_1E6555340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v52 = a6;
  v10 = a5(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v46 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v51 = &v36 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v50 = &v36 - v17;
  v38 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v20 = *(v16 + 16);
    v19 = v16 + 16;
    v21 = *(v19 + 56);
    v47 = (v19 - 8);
    v48 = v20;
    v49 = v19;
    v22 = v18 + v21 * (a3 - 1);
    v43 = -v21;
    v44 = (v19 + 16);
    v23 = a1 - a3;
    v45 = v18;
    v37 = v21;
    v24 = v18 + v21 * a3;
LABEL_5:
    v41 = v22;
    v42 = a3;
    v39 = v24;
    v40 = v23;
    v53 = v23;
    while (1)
    {
      v25 = v50;
      v26 = v48;
      v48(v50, v24, v10);
      v27 = v51;
      v28 = v26(v51, v22, v10);
      v29 = v52;
      v30 = (v52)(v28);
      v31 = v29();
      v32 = *v47;
      (*v47)(v27, v10);
      result = v32(v25, v10);
      if (v30 >= v31)
      {
LABEL_4:
        a3 = v42 + 1;
        v22 = v41 + v37;
        v23 = v40 - 1;
        v24 = v39 + v37;
        if (v42 + 1 == v38)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v45)
      {
        break;
      }

      v33 = *v44;
      v34 = v46;
      (*v44)(v46, v24, v10);
      swift_arrayInitWithTakeFrontToBack();
      result = (v33)(v22, v34, v10);
      v22 += v43;
      v24 += v43;
      if (__CFADD__(v53++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E65555F8(uint64_t *a1, uint64_t a2, char **a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v140 = a7;
  v141 = a8;
  v153 = a6;
  v10 = v8;
  v131 = a1;
  v13 = (a5)(0, a2);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v134 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v147 = &v129 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v152 = &v129 - v20;
  result = MEMORY[0x1EEE9AC00](v19);
  v154 = &v129 - v22;
  v143 = a3;
  if (a3[1] < 1)
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_98:
    v9 = *v131;
    if (!*v131)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_130:
      result = sub_1E636AC44(v25);
      v25 = result;
    }

    v156 = v25;
    v125 = *(v25 + 2);
    if (v125 >= 2)
    {
      while (*v143)
      {
        v126 = *&v25[16 * v125];
        v127 = *&v25[16 * v125 + 24];
        sub_1E6556074(&(*v143)[v14[9] * v126], &(*v143)[v14[9] * *&v25[16 * v125 + 16]], &(*v143)[v14[9] * v127], v9, v140, v141, v140);
        if (v10)
        {
        }

        if (v127 < v126)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1E636AC44(v25);
        }

        if (v125 - 2 >= *(v25 + 2))
        {
          goto LABEL_124;
        }

        v128 = &v25[16 * v125];
        *v128 = v126;
        *(v128 + 1) = v127;
        v156 = v25;
        result = sub_1E636ABB8(v125 - 1);
        v25 = v156;
        v125 = *(v156 + 2);
        if (v125 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v23 = a3[1];
  v129 = a4;
  v24 = 0;
  v150 = (v14 + 1);
  v151 = v14 + 2;
  v149 = (v14 + 4);
  v25 = MEMORY[0x1E69E7CC0];
  v138 = v14;
  v155 = v13;
  while (1)
  {
    v26 = v24;
    v142 = v25;
    if (v24 + 1 >= v23)
    {
      v41 = v24 + 1;
    }

    else
    {
      v144 = v23;
      v130 = v10;
      v27 = *v143;
      v148 = v27;
      v28 = v14[9];
      v29 = v24;
      v132 = v24;
      v30 = &v27[v28 * (v24 + 1)];
      v31 = v14[2];
      v31(v154, v30, v13);
      v32 = &v27[v28 * v29];
      v33 = v152;
      v137 = v31;
      v34 = (v31)(v152, v32, v13);
      v35 = v153;
      v36 = v154;
      v145 = (v153)(v34);
      v139 = v35();
      v37 = v14[1];
      v38 = v33;
      v9 = v150;
      v37(v38, v13);
      v136 = v37;
      result = (v37)(v36, v13);
      v39 = (v132 + 2);
      v146 = v28;
      v40 = &v148[v28 * (v132 + 2)];
      while (1)
      {
        v41 = v144;
        if (v144 == v39)
        {
          break;
        }

        LODWORD(v148) = v145 < v139;
        v43 = v154;
        v42 = v155;
        v44 = v137;
        (v137)(v154, v40, v155);
        v45 = v152;
        v46 = v44(v152, v30, v42);
        v47 = v153;
        v48 = (v153)(v46);
        v49 = v47();
        v50 = v45;
        v9 = v150;
        v51 = v136;
        (v136)(v50, v42);
        result = v51(v43, v42);
        v52 = v48 >= v49;
        v14 = v138;
        v53 = v52;
        v25 = v142;
        ++v39;
        v40 = &v146[v40];
        v30 = &v146[v30];
        if (((v148 ^ v53) & 1) == 0)
        {
          v41 = (v39 - 1);
          break;
        }
      }

      v10 = v130;
      v13 = v155;
      v26 = v132;
      if (v145 < v139)
      {
        if (v41 < v132)
        {
          goto LABEL_127;
        }

        if (v132 < v41)
        {
          v54 = v146 * (v41 - 1);
          v9 = v41 * v146;
          v144 = v41;
          v55 = v41;
          v56 = v132;
          v57 = v132 * v146;
          do
          {
            if (v56 != --v55)
            {
              v58 = *v143;
              if (!*v143)
              {
                goto LABEL_133;
              }

              v59 = *v149;
              (*v149)(v134, &v58[v57], v13);
              if (v57 < v54 || &v58[v57] >= &v58[v9])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v57 != v54)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v59)(&v58[v54], v134, v13);
              v25 = v142;
            }

            ++v56;
            v54 -= v146;
            v9 -= v146;
            v57 += v146;
          }

          while (v56 < v55);
          v10 = v130;
          v14 = v138;
          v26 = v132;
          v41 = v144;
        }
      }
    }

    v60 = v143[1];
    if (v41 < v60)
    {
      if (__OFSUB__(v41, v26))
      {
        goto LABEL_126;
      }

      if (v41 - v26 < v129)
      {
        if (__OFADD__(v26, v129))
        {
          goto LABEL_128;
        }

        if (v26 + v129 >= v60)
        {
          v9 = v143[1];
        }

        else
        {
          v9 = v26 + v129;
        }

        if (v9 < v26)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v41 != v9)
        {
          break;
        }
      }
    }

    v9 = v41;
    if (v41 < v26)
    {
      goto LABEL_125;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E636ADD0(0, *(v25 + 2) + 1, 1, v25);
      v25 = result;
    }

    v62 = *(v25 + 2);
    v61 = *(v25 + 3);
    v63 = v62 + 1;
    if (v62 >= v61 >> 1)
    {
      result = sub_1E636ADD0((v61 > 1), v62 + 1, 1, v25);
      v25 = result;
    }

    *(v25 + 2) = v63;
    v64 = &v25[16 * v62];
    *(v64 + 4) = v26;
    *(v64 + 5) = v9;
    v65 = *v131;
    if (!*v131)
    {
      goto LABEL_135;
    }

    v135 = v9;
    if (v62)
    {
      v66 = v65;
      while (1)
      {
        v67 = v63 - 1;
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v68 = *(v25 + 4);
          v69 = *(v25 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_56:
          if (v71)
          {
            goto LABEL_114;
          }

          v84 = &v25[16 * v63];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_117;
          }

          v90 = &v25[16 * v67 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_121;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              v67 = v63 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v94 = &v25[16 * v63];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_70:
        if (v89)
        {
          goto LABEL_116;
        }

        v97 = &v25[16 * v67];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_119;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_77:
        v105 = v67 - 1;
        if (v67 - 1 >= v63)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*v143)
        {
          goto LABEL_132;
        }

        v106 = *&v25[16 * v105 + 32];
        v9 = *&v25[16 * v67 + 40];
        sub_1E6556074(&(*v143)[v14[9] * v106], &(*v143)[v14[9] * *&v25[16 * v67 + 32]], &(*v143)[v14[9] * v9], v66, v140, v141, v140);
        if (v10)
        {
        }

        if (v9 < v106)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1E636AC44(v25);
        }

        if (v105 >= *(v25 + 2))
        {
          goto LABEL_111;
        }

        v107 = &v25[16 * v105];
        *(v107 + 4) = v106;
        *(v107 + 5) = v9;
        v156 = v25;
        result = sub_1E636ABB8(v67);
        v25 = v156;
        v63 = *(v156 + 2);
        if (v63 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v25[16 * v63 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_112;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_113;
      }

      v79 = &v25[16 * v63];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_115;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_118;
      }

      if (v83 >= v75)
      {
        v101 = &v25[16 * v67 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_122;
        }

        if (v70 < v104)
        {
          v67 = v63 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v23 = v143[1];
    v24 = v135;
    if (v135 >= v23)
    {
      goto LABEL_98;
    }
  }

  v130 = v10;
  v108 = *v143;
  v109 = v14[9];
  v148 = v14[2];
  v110 = &v108[v109 * (v41 - 1)];
  v145 = -v109;
  v132 = v26;
  v111 = (v26 - v41);
  v146 = v108;
  v133 = v109;
  v112 = &v108[v41 * v109];
  v135 = v9;
LABEL_89:
  v144 = v41;
  v136 = v112;
  v137 = v111;
  v139 = v110;
  v113 = v110;
  while (1)
  {
    v114 = v154;
    v115 = v148;
    (v148)(v154, v112, v13);
    v116 = v152;
    v117 = (v115)(v152, v113, v155);
    v118 = v153;
    v119 = (v153)(v117);
    v120 = v118();
    v121 = *v150;
    v122 = v116;
    v13 = v155;
    (*v150)(v122, v155);
    result = v121(v114, v13);
    if (v119 >= v120)
    {
LABEL_88:
      v41 = (v144 + 1);
      v110 = v139 + v133;
      v111 = v137 - 1;
      v112 = &v136[v133];
      v9 = v135;
      if (v144 + 1 != v135)
      {
        goto LABEL_89;
      }

      v10 = v130;
      v14 = v138;
      v25 = v142;
      v26 = v132;
      if (v135 < v132)
      {
        goto LABEL_125;
      }

      goto LABEL_36;
    }

    if (!v146)
    {
      break;
    }

    v123 = *v149;
    v124 = v147;
    (*v149)(v147, v112, v13);
    swift_arrayInitWithTakeFrontToBack();
    v123(v113, v124, v13);
    v113 += v145;
    v112 += v145;
    v52 = __CFADD__(v111++, 1);
    if (v52)
    {
      goto LABEL_88;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_1E6556074(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v68 = a6;
  v12 = a5(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v67 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v14);
  v66 = &v56 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_61;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_62;
  }

  v57 = a7;
  v21 = (a2 - a1) / v19;
  v73 = a1;
  v72 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v23 < 1)
    {
      v42 = a4 + v23;
    }

    else
    {
      v40 = -v19;
      v60 = a4;
      v61 = (v13 + 16);
      v59 = (v13 + 8);
      v41 = a4 + v23;
      v42 = a4 + v23;
      v70 = a1;
      v62 = -v19;
      do
      {
        v56 = v42;
        v43 = a2 + v40;
        v63 = a2;
        v64 = a2 + v40;
        while (1)
        {
          if (a2 <= a1)
          {
            v73 = a2;
            v71 = v56;
            goto LABEL_59;
          }

          v45 = a3;
          v58 = v42;
          v46 = v12;
          v69 = a3 + v40;
          v47 = v43;
          v48 = v41 + v40;
          v49 = *v61;
          v50 = v66;
          (*v61)(v66, v41 + v40, v46);
          v51 = v67;
          v52 = (v49)(v67, v47, v46);
          v53 = v68;
          v65 = (v68)(v52);
          v54 = v53();
          v55 = *v59;
          (*v59)(v51, v46);
          v55(v50, v46);
          if (v65 < v54)
          {
            break;
          }

          v42 = v48;
          a3 = v69;
          if (v45 < v41 || v69 >= v41)
          {
            v12 = v46;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v70;
          }

          else
          {
            v12 = v46;
            a1 = v70;
            if (v45 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v41 = v48;
          v44 = v48 > v60;
          a2 = v63;
          v43 = v64;
          v40 = v62;
          if (!v44)
          {
            goto LABEL_57;
          }
        }

        a3 = v69;
        if (v45 < v63 || v69 >= v63)
        {
          a2 = v64;
          v12 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v70;
          v42 = v58;
        }

        else
        {
          a2 = v64;
          v12 = v46;
          a1 = v70;
          v42 = v58;
          if (v45 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v40 = v62;
      }

      while (v41 > v60);
    }

LABEL_57:
    v73 = a2;
    v71 = v42;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v65 = a4 + v22;
    v71 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v25 = *(v13 + 16);
      v63 = v19;
      v64 = v13 + 16;
      v61 = (v13 + 8);
      v62 = v25;
      v69 = a3;
      do
      {
        v70 = a1;
        v26 = v66;
        v27 = v62;
        (v62)(v66, a2, v12);
        v28 = v12;
        v29 = v67;
        v30 = v27(v67, a4, v28);
        v31 = a4;
        v32 = v68;
        v33 = a2;
        v34 = (v68)(v30);
        v35 = v32();
        v36 = *v61;
        v37 = v29;
        v12 = v28;
        (*v61)(v37, v28);
        v36(v26, v28);
        if (v34 >= v35)
        {
          a2 = v33;
          v38 = v63;
          a4 = v31 + v63;
          v39 = v70;
          if (v70 < v31 || v70 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v72 = a4;
        }

        else
        {
          v38 = v63;
          a2 = v33 + v63;
          v39 = v70;
          a4 = v31;
          if (v70 < v33 || v70 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v39 + v38;
        v73 = a1;
      }

      while (a4 < v65 && a2 < v69);
    }
  }

LABEL_59:
  sub_1E655665C(&v73, &v72, &v71, v57);
  return 1;
}

uint64_t sub_1E655665C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_1E6556744(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E6556788(a1, a2, a3, *v3, &qword_1ED07AF60, &qword_1E660AB00, MEMORY[0x1E69CB880]);
  *v3 = result;
  return result;
}

void *sub_1E6556788(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1E6556964(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v35 = a4;
  v29 = a2;
  v30 = a1;
  v38 = sub_1E65DA3D8();
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

        return sub_1E6556C54(v30, v29, v31, v27);
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

void *sub_1E6556BC4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
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

    v8 = sub_1E6556964(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1E6556C54(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1E65DA3D8();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFA0, &qword_1E660AB68);
  result = sub_1E65E6888();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1E6557C18(&qword_1ED07AFA8, MEMORY[0x1E69CCD28], MEMORY[0x1E69CCD30]);
    result = sub_1E65E5B38();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1E6556F7C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1E65D7F88();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1E655726C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_1E65DA3D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_1E655732C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E654D5A0();
}

uint64_t sub_1E65573BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5FE99E8;

  return sub_1E654D630(a1, a2);
}

uint64_t sub_1E6557464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v16 = swift_task_alloc();
  *(v9 + 16) = v16;
  *v16 = v9;
  v16[1] = sub_1E5DFA78C;

  return sub_1E654D6D8(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1E6557570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v16 = swift_task_alloc();
  *(v9 + 16) = v16;
  *v16 = v9;
  v16[1] = sub_1E5DFE6BC;

  return sub_1E6550760(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1E655767C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65528F4(a1, v1);
}

uint64_t sub_1E6557718(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65529B0(a1, v1);
}

uint64_t sub_1E65577B4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6552AAC(a1, v1);
}

uint64_t sub_1E6557850(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6552B9C(a1);
}

uint64_t sub_1E65578EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6552C38(a1);
}

uint64_t sub_1E6557A4C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(v4 + 40);
  v14 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(v11, v12, v7, v8, v9, v13, v10, v14);
}

uint64_t sub_1E6557B10(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *(v4 + 40);
  v12 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(a1, v7, v8, v9, v11, v10, v12);
}

uint64_t sub_1E6557C18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6557CB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF20, &qword_1E660A968);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6557DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DC0, &qword_1E660ACC0);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFE0, &unk_1E660ACC8);
  v4[7] = swift_task_alloc();
  v6 = sub_1E65E6428();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6557F00, 0, 0);
}

uint64_t sub_1E6557F00()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_1E65E6448();

  sub_1E65E6418();
  v2 = sub_1E655B028();
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E6558000;
  v4 = v0[7];
  v5 = v0[8];

  return MEMORY[0x1EEE6D8C8](v4, v5, v2);
}

uint64_t sub_1E6558000()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1E655B56C;
  }

  else
  {
    v2 = sub_1E6558114;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6558130()
{
  v1 = v0[7];
  v2 = sub_1E65D7068();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8);
    sub_1E65E60E8();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    sub_1E65E60C8();
    (*(v6 + 8))(v5, v7);
    sub_1E5DFE50C(v1, &qword_1ED07AFE0, &unk_1E660ACC8);
    v8 = sub_1E655B028();
    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    v9[1] = sub_1E6558000;
    v10 = v0[7];
    v11 = v0[8];

    return MEMORY[0x1EEE6D8C8](v10, v11, v8);
  }
}

uint64_t sub_1E655831C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DC0, &qword_1E660ACC0);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFE0, &unk_1E660ACC8);
  v4[7] = swift_task_alloc();
  v6 = sub_1E65E6428();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E655847C, 0, 0);
}

uint64_t sub_1E655847C()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_1E65E6448();

  sub_1E65E6418();
  v2 = sub_1E655B028();
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E655857C;
  v4 = v0[7];
  v5 = v0[8];

  return MEMORY[0x1EEE6D8C8](v4, v5, v2);
}

uint64_t sub_1E655857C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1E655B56C;
  }

  else
  {
    v2 = sub_1E6558690;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E65586AC()
{
  v1 = v0[7];
  v2 = sub_1E65D7068();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8);
    sub_1E65E60E8();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    sub_1E65E60C8();
    (*(v6 + 8))(v5, v7);
    sub_1E5DFE50C(v1, &qword_1ED07AFE0, &unk_1E660ACC8);
    v8 = sub_1E655B028();
    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    v9[1] = sub_1E655857C;
    v10 = v0[7];
    v11 = v0[8];

    return MEMORY[0x1EEE6D8C8](v10, v11, v8);
  }
}

uint64_t sub_1E6558898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DC0, &qword_1E660ACC0);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFE0, &unk_1E660ACC8);
  v4[7] = swift_task_alloc();
  v6 = sub_1E65E6428();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65589F8, 0, 0);
}

uint64_t sub_1E65589F8()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_1E65E6448();

  sub_1E65E6418();
  v2 = sub_1E655B028();
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E6558AF8;
  v4 = v0[7];
  v5 = v0[8];

  return MEMORY[0x1EEE6D8C8](v4, v5, v2);
}

uint64_t sub_1E6558AF8()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1E655B56C;
  }

  else
  {
    v2 = sub_1E6558C0C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6558C28()
{
  v1 = v0[7];
  v2 = sub_1E65D7068();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8);
    sub_1E65E60E8();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    sub_1E65E60C8();
    (*(v6 + 8))(v5, v7);
    sub_1E5DFE50C(v1, &qword_1ED07AFE0, &unk_1E660ACC8);
    v8 = sub_1E655B028();
    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    v9[1] = sub_1E6558AF8;
    v10 = v0[7];
    v11 = v0[8];

    return MEMORY[0x1EEE6D8C8](v10, v11, v8);
  }
}

uint64_t sub_1E6558E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DC0, &qword_1E660ACC0);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFE0, &unk_1E660ACC8);
  v4[7] = swift_task_alloc();
  v6 = sub_1E65E6428();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6558F74, 0, 0);
}

uint64_t sub_1E6558F74()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_1E65E6448();

  sub_1E65E6418();
  v2 = sub_1E655B028();
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E6559074;
  v4 = v0[7];
  v5 = v0[8];

  return MEMORY[0x1EEE6D8C8](v4, v5, v2);
}

uint64_t sub_1E6559074()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1E655B56C;
  }

  else
  {
    v2 = sub_1E6559188;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E65591A4()
{
  v1 = v0[7];
  v2 = sub_1E65D7068();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8);
    sub_1E65E60E8();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    sub_1E65E60C8();
    (*(v6 + 8))(v5, v7);
    sub_1E5DFE50C(v1, &qword_1ED07AFE0, &unk_1E660ACC8);
    v8 = sub_1E655B028();
    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    v9[1] = sub_1E6559074;
    v10 = v0[7];
    v11 = v0[8];

    return MEMORY[0x1EEE6D8C8](v10, v11, v8);
  }
}

uint64_t sub_1E6559390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DC0, &qword_1E660ACC0);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFE0, &unk_1E660ACC8);
  v4[7] = swift_task_alloc();
  v6 = sub_1E65E6428();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65594F0, 0, 0);
}

uint64_t sub_1E65594F0()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_1E65E6448();

  sub_1E65E6418();
  v2 = sub_1E655B028();
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E65595F0;
  v4 = v0[7];
  v5 = v0[8];

  return MEMORY[0x1EEE6D8C8](v4, v5, v2);
}

uint64_t sub_1E65595F0()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1E65598EC;
  }

  else
  {
    v2 = sub_1E6559704;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6559720()
{
  v1 = v0[7];
  v2 = sub_1E65D7068();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8);
    sub_1E65E60E8();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    sub_1E65E60C8();
    (*(v6 + 8))(v5, v7);
    sub_1E5DFE50C(v1, &qword_1ED07AFE0, &unk_1E660ACC8);
    v8 = sub_1E655B028();
    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    v9[1] = sub_1E65595F0;
    v10 = v0[7];
    v11 = v0[8];

    return MEMORY[0x1EEE6D8C8](v10, v11, v8);
  }
}

uint64_t sub_1E65598EC()
{
  *(v0 + 16) = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_1E6559998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  v12 = sub_1E65E60A8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v6 + 16))(v8, a1, v5);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v6 + 32))(v14 + v13, v8, v5);
  sub_1E64B80F8(0, 0, v11, a3, v14);
}

uint64_t sub_1E6559B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DC0, &qword_1E660ACC0);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFE0, &unk_1E660ACC8);
  v4[7] = swift_task_alloc();
  v6 = sub_1E65E6428();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6559CC8, 0, 0);
}

uint64_t sub_1E6559CC8()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_1E65E6448();

  sub_1E65E6418();
  v2 = sub_1E655B028();
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E6559DC8;
  v4 = v0[7];
  v5 = v0[8];

  return MEMORY[0x1EEE6D8C8](v4, v5, v2);
}

uint64_t sub_1E6559DC8()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1E655B56C;
  }

  else
  {
    v2 = sub_1E6559EDC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6559EF8()
{
  v1 = v0[7];
  v2 = sub_1E65D7068();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8);
    sub_1E65E60E8();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    sub_1E65E60C8();
    (*(v6 + 8))(v5, v7);
    sub_1E5DFE50C(v1, &qword_1ED07AFE0, &unk_1E660ACC8);
    v8 = sub_1E655B028();
    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    v9[1] = sub_1E6559DC8;
    v10 = v0[7];
    v11 = v0[8];

    return MEMORY[0x1EEE6D8C8](v10, v11, v8);
  }
}

uint64_t sub_1E655A0C4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DA0, &qword_1E6609BC0);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E655A194, a2, 0);
}

uint64_t sub_1E655A194()
{
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E69E8650], v0[3]);
  sub_1E65E6128();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E655A250(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E655A0C4(a1, v1);
}

uint64_t sub_1E655A2EC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DA0, &qword_1E6609BC0);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E655A3BC, a2, 0);
}

uint64_t sub_1E655A3BC()
{
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E69E8650], v0[3]);
  sub_1E65E6128();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E655A478(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E655A2EC(a1, v1);
}

uint64_t sub_1E655A514(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E655A530, a2, 0);
}

uint64_t sub_1E655A530()
{
  swift_getObjectType();
  sub_1E65DDDB8();
  sub_1E65DDE28();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E655A5F0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E655A514(a1, v1);
}

uint64_t sub_1E655A68C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DA0, &qword_1E6609BC0);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E655A75C, a2, 0);
}

uint64_t sub_1E655A75C()
{
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E69E8650], v0[3]);
  sub_1E65E6128();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E655A818(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E655A68C(a1, v1);
}

uint64_t sub_1E655A8B4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DA0, &qword_1E6609BC0);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E655A984, a2, 0);
}

uint64_t sub_1E655A984()
{
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E69E8650], v0[3]);
  sub_1E65E6128();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E655AA40(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E655A8B4(a1, v1);
}

uint64_t sub_1E655AADC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DA0, &qword_1E6609BC0);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E655ABAC, a2, 0);
}

uint64_t sub_1E655ABAC()
{
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E69E8650], v0[3]);
  sub_1E65E6128();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E655AC68(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E655AADC(a1, v1);
}

uint64_t sub_1E655AD04(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DA0, &qword_1E6609BC0);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E655ADD4, a2, 0);
}

uint64_t sub_1E655ADD4()
{
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E69E8650], v0[3]);
  sub_1E65E6128();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E655AE90(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E655AD04(a1, v1);
}

uint64_t sub_1E655AF2C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6559B68(a1, v6, v7, v1 + v5);
}

unint64_t sub_1E655B028()
{
  result = qword_1EE2D45C0;
  if (!qword_1EE2D45C0)
  {
    sub_1E65E6428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D45C0);
  }

  return result;
}

uint64_t sub_1E655B080(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFA78C;

  return sub_1E6559390(a1, v6, v7, v1 + v5);
}

uint64_t sub_1E655B17C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6558E14(a1, v6, v7, v1 + v5);
}

uint64_t sub_1E655B278(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6558898(a1, v6, v7, v1 + v5);
}

uint64_t sub_1E655B374(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E655831C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1E655B470(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6557DA0(a1, v6, v7, v1 + v5);
}

uint64_t AppStateService.makeAppDidBecomeActiveStream.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AppStateService.makeAppDidEnterBackgroundStream.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AppStateService.makeAppIdleOccurredStream.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AppStateService.makeAppWillEnterForegroundStream.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t AppStateService.makeAppWillResignActiveStream.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t AppStateService.makeAppWillTerminateStream.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t AppStateService.makeSignificantTimeChangeStream.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1E655B6E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1E655B72C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void static AppStateService.simulator()(void *a1@<X8>)
{
  *a1 = &unk_1E660ADB0;
  a1[1] = 0;
  a1[2] = &unk_1E660ADC0;
  a1[3] = 0;
  a1[4] = &unk_1E660ADD0;
  a1[5] = 0;
  a1[6] = &unk_1E660ADE0;
  a1[7] = 0;
  a1[8] = &unk_1E660ADF0;
  a1[9] = 0;
  a1[10] = &unk_1E660AE00;
  a1[11] = 0;
  a1[12] = &unk_1E660AE10;
  a1[13] = 0;
}

uint64_t sub_1E655B818(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DA0, &qword_1E6609BC0);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6539E14, 0, 0);
}

uint64_t sub_1E655B8E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E655B818(a1);
}

uint64_t sub_1E655B97C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E655B818(a1);
}

uint64_t sub_1E655BA14(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E655B818(a1);
}

uint64_t sub_1E655BAAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E655B818(a1);
}

uint64_t sub_1E655BB44(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E655B818(a1);
}

uint64_t sub_1E655BBDC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E655B818(a1);
}

uint64_t sub_1E655BC74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E655B818(a1);
}

uint64_t sub_1E655BD0C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFF0, &qword_1E660AEB8);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E655BDDC, v2, 0);
}

uint64_t sub_1E655BDDC()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 112), *(*(v0 + 32) + 136));
  sub_1E65DD738();

  return MEMORY[0x1EEE6DFA0](sub_1E655BE78, 0, 0);
}

uint64_t sub_1E655BE78()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "FitnessSiriService/LiveSiriService.swift";
  *(v2 + 24) = 40;
  *(v2 + 32) = 2;
  *(v2 + 40) = 24;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = sub_1E65D9EA8();
  *v3 = v0;
  v3[1] = sub_1E653B6A4;
  v5 = v0[2];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E655C6D8, v2, v4);
}

uint64_t sub_1E655BF90(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E655BFB0, 0, 0);
}

uint64_t sub_1E655BFB0()
{
  sub_1E65DB778();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E655C014(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return sub_1E655BD0C(a1, a2);
}

uint64_t sub_1E655C0C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return sub_1E655C014(a1, a2);
}

uint64_t sub_1E655C16C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E655C188, a2, 0);
}

uint64_t sub_1E655C188()
{
  swift_getObjectType();
  sub_1E65DB788();
  sub_1E65DB718();
  sub_1E655CB48();
  sub_1E65DDE28();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E655C260(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E655C16C(a1, v1);
}

uint64_t sub_1E655C2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFF8, &unk_1E660AEC0);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFF0, &qword_1E660AEB8);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E655CA4C;
  *(v34 + 24) = v32;

  v33(sub_1E6531034, v34);
}

uint64_t sub_1E655C6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_1E65D9EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B000, &qword_1E660AED0);
  MEMORY[0x1EEE9AC00](v44);
  v15 = (&v34 - v14);
  v16 = sub_1E65E3B68();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v19 = sub_1E65E3B48();
  v20 = sub_1E65E6338();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_1E65E68B8();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_1E5DFD4B0(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_1E5DE9000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1E694F1C0](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x1E694F1C0](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_1E655CAD8(a1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFF8, &unk_1E660AEC0);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFF8, &unk_1E660AEC0);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E655CA4C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFF8, &unk_1E660AEC0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_1E655C6E8(a1, v4, v5, v6, v8, v7, v9);
}

uint64_t sub_1E655CAD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B000, &qword_1E660AED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E655CB48()
{
  result = qword_1EE2D6D30;
  if (!qword_1EE2D6D30)
  {
    sub_1E65DB788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D6D30);
  }

  return result;
}

uint64_t SiriService.evaluateStartWorkoutRequest.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SiriService.makeSiriBeginSessionRequestedStream.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double static SiriService.simulator()@<D0>(void *a1@<X8>)
{
  type metadata accessor for SimulatorSiriService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *a1 = &unk_1E660AF28;
  a1[1] = v2;
  a1[2] = &unk_1E660AF38;
  a1[3] = v2;

  return result;
}

uint64_t sub_1E655CCB8()
{
  sub_1E65D9E78();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E655CD3C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFA78C;

  return sub_1E655CC98(a1, a2, v2);
}

uint64_t sub_1E655CDE8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B008, &unk_1E660AF80);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E655CEB8, a2, 0);
}

uint64_t sub_1E655CEB8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1E65DB718();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E655CF90(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E655CDE8(a1, v1);
}

uint64_t sub_1E655D02C(uint64_t a1)
{
  v2 = sub_1E655DF40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E655D068(uint64_t a1)
{
  v2 = sub_1E655DF40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E655D0A4()
{
  v1 = *v0;
  v2 = 1701602409;
  v3 = 0x6979696669726576;
  v4 = 0x697463656E6E6F63;
  if (v1 != 3)
  {
    v4 = 0x657463656E6E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7369747265766461;
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

uint64_t sub_1E655D14C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E655EE68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E655D174(uint64_t a1)
{
  v2 = sub_1E655DCE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E655D1B0(uint64_t a1)
{
  v2 = sub_1E655DCE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E655D20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7069636974726170 && a2 == 0xEB00000000746E61)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E655D298(uint64_t a1)
{
  v2 = sub_1E655DD9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E655D2D4(uint64_t a1)
{
  v2 = sub_1E655DD9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E655D310(uint64_t a1)
{
  v2 = sub_1E655DDF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E655D34C(uint64_t a1)
{
  v2 = sub_1E655DDF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E655D388(uint64_t a1)
{
  v2 = sub_1E655DF94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E655D3C4(uint64_t a1)
{
  v2 = sub_1E655DF94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E655D41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7954656369766564 && a2 == 0xEA00000000006570)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E655D4AC(uint64_t a1)
{
  v2 = sub_1E655DE44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E655D4E8(uint64_t a1)
{
  v2 = sub_1E655DE44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteBrowsingGuestPairingState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B010, &qword_1E660AF90);
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v51 = &v39 - v3;
  v4 = sub_1E65D8DE8();
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B018, &qword_1E660AF98);
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B020, &qword_1E660AFA0);
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B028, &qword_1E660AFA8);
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B030, &qword_1E660AFB0);
  v39 = *(v14 - 8);
  v40 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = type metadata accessor for RemoteBrowsingGuestPairingState(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B038, &qword_1E660AFB8);
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v21 = &v39 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E655DCE4();
  sub_1E65E6DA8();
  sub_1E655DD38(v54, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v24 = v10;
    v26 = v47;
    v25 = v48;
    v27 = v51;
    v28 = v49;
    v29 = v52;
    v30 = v53;
    if (EnumCaseMultiPayload)
    {
      v37 = v19;
      v38 = v50;
      (*(v49 + 32))(v48, v37, v50);
      v63 = 4;
      sub_1E655DD9C();
      sub_1E65E6B18();
      sub_1E655F434(&qword_1ED079738, MEMORY[0x1E69CBB90], MEMORY[0x1E69CBB98]);
      sub_1E65E6B78();
      (*(v29 + 8))(v27, v30);
      (*(v28 + 8))(v25, v38);
      return (*(v55 + 8))(v21, v56);
    }

    else
    {
      v31 = *v19;
      v32 = v19[8];
      v61 = 2;
      sub_1E655DE44();
      v33 = v56;
      sub_1E65E6B18();
      v57 = v31;
      v58 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B060, &qword_1E660AFC0);
      sub_1E655EA7C(&qword_1ED07B068, MEMORY[0x1E69CB1C8]);
      sub_1E65E6B38();
      (*(v46 + 8))(v24, v26);
      return (*(v55 + 8))(v21, v33);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v59 = 0;
    sub_1E655DF94();
    v35 = v56;
    sub_1E65E6B18();
    (*(v39 + 8))(v16, v40);
    return (*(v55 + 8))(v21, v35);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v60 = 1;
      sub_1E655DF40();
      v23 = v56;
      sub_1E65E6B18();
      (*(v41 + 8))(v13, v42);
    }

    else
    {
      v62 = 3;
      sub_1E655DDF0();
      v36 = v43;
      v23 = v56;
      sub_1E65E6B18();
      (*(v44 + 8))(v36, v45);
    }

    return (*(v55 + 8))(v21, v23);
  }
}

uint64_t type metadata accessor for RemoteBrowsingGuestPairingState(uint64_t a1)
{
  result = qword_1EE2D52E0;
  if (!qword_1EE2D52E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E655DCE4()
{
  result = qword_1ED07B040;
  if (!qword_1ED07B040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B040);
  }

  return result;
}

uint64_t sub_1E655DD38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingGuestPairingState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E655DD9C()
{
  result = qword_1ED07B048;
  if (!qword_1ED07B048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B048);
  }

  return result;
}

unint64_t sub_1E655DDF0()
{
  result = qword_1ED07B050;
  if (!qword_1ED07B050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B050);
  }

  return result;
}

unint64_t sub_1E655DE44()
{
  result = qword_1ED07B058;
  if (!qword_1ED07B058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B058);
  }

  return result;
}

unint64_t sub_1E655DE98()
{
  result = qword_1ED07B070;
  if (!qword_1ED07B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B070);
  }

  return result;
}

unint64_t sub_1E655DEEC()
{
  result = qword_1ED07B078;
  if (!qword_1ED07B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B078);
  }

  return result;
}

unint64_t sub_1E655DF40()
{
  result = qword_1ED07B080;
  if (!qword_1ED07B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B080);
  }

  return result;
}

unint64_t sub_1E655DF94()
{
  result = qword_1ED07B088;
  if (!qword_1ED07B088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B088);
  }

  return result;
}

uint64_t RemoteBrowsingGuestPairingState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B090, &qword_1E660AFC8);
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v62 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B098, &qword_1E660AFD0);
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v47 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B0A0, &qword_1E660AFD8);
  v58 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v66 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B0A8, &qword_1E660AFE0);
  v9 = *(v8 - 8);
  v53 = v8;
  v54 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B0B0, &qword_1E660AFE8);
  v51 = *(v11 - 8);
  v52 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B0B8, &unk_1E660AFF0);
  v67 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  v16 = type metadata accessor for RemoteBrowsingGuestPairingState(0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v47 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v47 - v23;
  v25 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1E655DCE4();
  v26 = v68;
  sub_1E65E6D98();
  if (!v26)
  {
    v27 = v64;
    v48 = v22;
    v49 = v19;
    v29 = v65;
    v28 = v66;
    v68 = v24;
    v50 = v16;
    v30 = v13;
    v31 = sub_1E65E6AF8();
    if (*(v31 + 16) != 1 || (v32 = *(v31 + 32), v32 == 5))
    {
      v36 = sub_1E65E68F8();
      swift_allocError();
      v38 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80);
      *v38 = v50;
      sub_1E65E6A78();
      sub_1E65E68E8();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
      swift_willThrow();
      (*(v67 + 8))(v15, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v31 + 32) <= 1u)
      {
        if (*(v31 + 32))
        {
          v73 = 1;
          sub_1E655DF40();
          sub_1E65E6A68();
          v40 = v63;
          (*(v54 + 8))(v29, v53);
        }

        else
        {
          v72 = 0;
          sub_1E655DF94();
          sub_1E65E6A68();
          v40 = v63;
          (*(v51 + 8))(v27, v52);
        }

        (*(v67 + 8))(v15, v30);
        swift_unknownObjectRelease();
        v35 = v68;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v33 = v67;
        if (v32 == 2)
        {
          v65 = v31;
          v74 = 2;
          sub_1E655DE44();
          sub_1E65E6A68();
          v40 = v63;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B060, &qword_1E660AFC0);
          sub_1E655EA7C(&qword_1ED07B0C0, MEMORY[0x1E69CB1D8]);
          v41 = v55;
          sub_1E65E6A98();
          (*(v58 + 8))(v28, v41);
          (*(v33 + 8))(v15, v30);
          swift_unknownObjectRelease();
          v45 = v71;
          v46 = v48;
          *v48 = v70;
          *(v46 + 8) = v45;
          swift_storeEnumTagMultiPayload();
          v35 = v68;
          sub_1E655EA18(v46, v68);
        }

        else
        {
          if (v32 == 3)
          {
            v75 = 3;
            sub_1E655DDF0();
            v34 = v61;
            sub_1E65E6A68();
            (*(v56 + 8))(v34, v57);
            (*(v33 + 8))(v15, v13);
            swift_unknownObjectRelease();
            v35 = v68;
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            v76 = 4;
            sub_1E655DD9C();
            sub_1E65E6A68();
            sub_1E65D8DE8();
            sub_1E655F434(&qword_1ED079768, MEMORY[0x1E69CBB90], MEMORY[0x1E69CBBB0]);
            v42 = v49;
            v43 = v60;
            v44 = v62;
            sub_1E65E6AD8();
            (*(v59 + 8))(v44, v43);
            (*(v33 + 8))(v15, v13);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v35 = v68;
            sub_1E655EA18(v42, v68);
          }

          v40 = v63;
        }
      }

      sub_1E655EA18(v35, v40);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v69);
}

uint64_t sub_1E655EA18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingGuestPairingState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E655EA7C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07B060, &qword_1E660AFC0);
    sub_1E655DE98();
    sub_1E655DEEC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RemoteBrowsingGuestPairingState.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E65D8DE8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RemoteBrowsingGuestPairingState(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E655DD38(v2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v4 + 32))(v6, v9, v3);
      MEMORY[0x1E694E740](4);
      sub_1E655F434(&qword_1ED079748, MEMORY[0x1E69CBB90], MEMORY[0x1E69CBBA0]);
      sub_1E65E5B48();
      return (*(v4 + 8))(v6, v3);
    }

    else
    {
      v12 = *v9;
      v13 = v9[8];
      MEMORY[0x1E694E740](2);
      if (v13 == 255)
      {
        return sub_1E65E6D48();
      }

      else
      {
        sub_1E65E6D48();
        v15 = v12;
        v16 = v13 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B060, &qword_1E660AFC0);
        sub_1E655F398();
        return sub_1E65D7FC8();
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v11 = 0;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v11 = 1;
    }

    else
    {
      v11 = 3;
    }

    return MEMORY[0x1E694E740](v11);
  }
}

uint64_t RemoteBrowsingGuestPairingState.hashValue.getter()
{
  sub_1E65E6D28();
  RemoteBrowsingGuestPairingState.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E655EDE4()
{
  sub_1E65E6D28();
  RemoteBrowsingGuestPairingState.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E655EE28(uint64_t a1)
{
  sub_1E65E6D28();
  RemoteBrowsingGuestPairingState.hash(into:)(v2);
  return sub_1E65E6D78();
}

uint64_t sub_1E655EE68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7369747265766461 && a2 == 0xEB00000000676E69 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6979696669726576 && a2 == 0xEA0000000000676ELL || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEA0000000000676ELL || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657463656E6E6F63 && a2 == 0xE900000000000064)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E65E6C18();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t _s28FitnessRemoteBrowsingService0bC17GuestPairingStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65D8DE8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RemoteBrowsingGuestPairingState(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B150, &unk_1E660B690);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v27 - v16;
  v18 = &v27 + *(v15 + 56) - v16;
  sub_1E655DD38(a1, &v27 - v16);
  sub_1E655DD38(a2, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1E655DD38(v17, v11);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(v5 + 32))(v7, v18, v4);
        v24 = MEMORY[0x1E69407C0](v11, v7);
        v25 = *(v5 + 8);
        v25(v7, v4);
        v25(v11, v4);
        sub_1E655FBC8(v17);
        return v24 & 1;
      }

      (*(v5 + 8))(v11, v4);
    }

    else
    {
      sub_1E655DD38(v17, v13);
      v20 = *v13;
      v21 = v13[8];
      if (!swift_getEnumCaseMultiPayload())
      {
        v22 = v18[8];
        if (v21 == 255)
        {
          if (v22 == 255)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v23 = *v18;
          v29 = v20;
          v30 = v21;
          if (v22 != 255)
          {
            v27 = v23;
            v28 = v22 & 1;
            sub_1E655FC24();
            sub_1E655FC78();
            if (sub_1E65D7FD8())
            {
              goto LABEL_15;
            }
          }
        }

        sub_1E655FBC8(v17);
        goto LABEL_20;
      }
    }

LABEL_19:
    sub_1E655FB60(v17);
LABEL_20:
    v24 = 0;
    return v24 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    goto LABEL_19;
  }

LABEL_15:
  sub_1E655FBC8(v17);
  v24 = 1;
  return v24 & 1;
}

unint64_t sub_1E655F398()
{
  result = qword_1ED07B0C8;
  if (!qword_1ED07B0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B0C8);
  }

  return result;
}

uint64_t sub_1E655F434(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E655F47C(uint64_t a1)
{
  sub_1E655F58C(319, &qword_1EE2D7158, sub_1E655F528);
  if (v1 <= 0x3F)
  {
    sub_1E655F58C(319, &qword_1EE2D70D8, MEMORY[0x1E69CBB90]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E655F528(uint64_t a1)
{
  if (!qword_1EE2D7150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07B060, &qword_1E660AFC0);
    v1 = sub_1E65E6668();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D7150);
    }
  }
}

void sub_1E655F58C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E655F63C()
{
  result = qword_1ED07B0D8;
  if (!qword_1ED07B0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B0D8);
  }

  return result;
}

unint64_t sub_1E655F694()
{
  result = qword_1ED07B0E0;
  if (!qword_1ED07B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B0E0);
  }

  return result;
}

unint64_t sub_1E655F6EC()
{
  result = qword_1ED07B0E8;
  if (!qword_1ED07B0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B0E8);
  }

  return result;
}

unint64_t sub_1E655F744()
{
  result = qword_1ED07B0F0;
  if (!qword_1ED07B0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B0F0);
  }

  return result;
}

unint64_t sub_1E655F79C()
{
  result = qword_1ED07B0F8;
  if (!qword_1ED07B0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B0F8);
  }

  return result;
}

unint64_t sub_1E655F7F4()
{
  result = qword_1ED07B100;
  if (!qword_1ED07B100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B100);
  }

  return result;
}

unint64_t sub_1E655F84C()
{
  result = qword_1ED07B108;
  if (!qword_1ED07B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B108);
  }

  return result;
}

unint64_t sub_1E655F8A4()
{
  result = qword_1ED07B110;
  if (!qword_1ED07B110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B110);
  }

  return result;
}

unint64_t sub_1E655F8FC()
{
  result = qword_1ED07B118;
  if (!qword_1ED07B118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B118);
  }

  return result;
}

unint64_t sub_1E655F954()
{
  result = qword_1ED07B120;
  if (!qword_1ED07B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B120);
  }

  return result;
}

unint64_t sub_1E655F9AC()
{
  result = qword_1ED07B128;
  if (!qword_1ED07B128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B128);
  }

  return result;
}

unint64_t sub_1E655FA04()
{
  result = qword_1ED07B130;
  if (!qword_1ED07B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B130);
  }

  return result;
}

unint64_t sub_1E655FA5C()
{
  result = qword_1ED07B138;
  if (!qword_1ED07B138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B138);
  }

  return result;
}

unint64_t sub_1E655FAB4()
{
  result = qword_1ED07B140;
  if (!qword_1ED07B140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B140);
  }

  return result;
}

unint64_t sub_1E655FB0C()
{
  result = qword_1ED07B148;
  if (!qword_1ED07B148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B148);
  }

  return result;
}

uint64_t sub_1E655FB60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B150, &unk_1E660B690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E655FBC8(uint64_t a1)
{
  v2 = type metadata accessor for RemoteBrowsingGuestPairingState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E655FC24()
{
  result = qword_1ED07B158;
  if (!qword_1ED07B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B158);
  }

  return result;
}

unint64_t sub_1E655FC78()
{
  result = qword_1ED07B160;
  if (!qword_1ED07B160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B160);
  }

  return result;
}

uint64_t sub_1E655FCCC(uint64_t a1, uint64_t a2)
{
  sub_1E655FBC8(a1);
  type metadata accessor for RemoteBrowsingGuestPairingState(0);
  swift_storeEnumTagMultiPayload();
  (*(a2 + 40))(a1);
  sub_1E65DDEB8();
  swift_allocObject();
  swift_unknownObjectRetain();
  v4 = sub_1E65DDEA8();
  swift_getObjectType();
  sub_1E65DE2C8();
  swift_allocObject();
  swift_weakInit();

  sub_1E65DDE18();

  __swift_destroy_boxed_opaque_existential_1(v6);

  sub_1E65DE398();
  swift_allocObject();
  swift_weakInit();
  sub_1E65DDE08();

  __swift_destroy_boxed_opaque_existential_1(v6);
  sub_1E65DE378();
  swift_allocObject();
  swift_weakInit();

  sub_1E65DDE18();

  __swift_destroy_boxed_opaque_existential_1(v6);

  sub_1E65DE298();
  swift_allocObject();
  swift_weakInit();
  sub_1E65DDE08();

  __swift_destroy_boxed_opaque_existential_1(v6);
  *(a2 + 32) = v4;
}

uint64_t sub_1E655FFAC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(result + 56))();
  }

  return result;
}

uint64_t sub_1E656000C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E65DAAA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_1E65DE388();
    v8 = sub_1E65DAA98();
    v10 = v9;
    (*(v3 + 8))(v5, v2);
    v11 = *(v7 + 72);
    v12 = v11 + *(*v11 + *MEMORY[0x1E69E6B68] + 16);
    v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v11 + v13));
    sub_1E655FBC8(v12);
    *v12 = v8;
    *(v12 + 8) = v10;
    type metadata accessor for RemoteBrowsingGuestPairingState(0);
    swift_storeEnumTagMultiPayload();
    (*(v7 + 40))(v12);
    os_unfair_lock_unlock((v11 + v13));
  }

  return result;
}

uint64_t sub_1E65601B0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 72);
    v3 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
    v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v2 + v4));
    sub_1E65606C0(v2 + v3);
    os_unfair_lock_unlock((v2 + v4));
  }

  return result;
}

uint64_t sub_1E6560270(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E65D8DE8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65DA7E8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_1E65DE288();
    sub_1E65DA7D8();
    v12 = (*(v7 + 8))(v9, v6);
    v13 = *(v11 + 72);
    MEMORY[0x1EEE9AC00](v12);
    *(&v16 - 2) = v5;
    *(&v16 - 1) = v11;
    v14 = *(*v13 + *MEMORY[0x1E69E6B68] + 16);
    v15 = (*(*v13 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v13 + v15));
    sub_1E65606A4(v13 + v14);
    os_unfair_lock_unlock((v13 + v15));

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_1E65604AC(uint64_t a1, uint64_t a2)
{
  sub_1E655FBC8(a1);
  *(a2 + 32) = 0;

  type metadata accessor for RemoteBrowsingGuestPairingState(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E6560508(uint64_t a1, uint64_t a2)
{
  sub_1E655FBC8(a1);
  type metadata accessor for RemoteBrowsingGuestPairingState(0);
  swift_storeEnumTagMultiPayload();
  return (*(a2 + 40))(a1);
}

uint64_t sub_1E6560568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E655FBC8(a1);
  v6 = sub_1E65D8DE8();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  type metadata accessor for RemoteBrowsingGuestPairingState(0);
  swift_storeEnumTagMultiPayload();
  return (*(a3 + 40))(a1);
}

uint64_t sub_1E6560608()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1E65606DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65606FC, 0, 0);
}

uint64_t sub_1E65606FC()
{
  sub_1E65DE148();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6560760(uint64_t a1, uint64_t a2)
{
  v27 = type metadata accessor for RemoteBrowsingGuestPairingState(0);
  MEMORY[0x1EEE9AC00](v27);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1E8, &qword_1E660B9A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v24 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *(v6 + 16);
  v26 = *(a2 + 112);
  v11(v10, a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v25 = swift_allocObject();
  v13 = *(v6 + 32);
  v13(v25 + v12, v10, v5);
  v14 = v24;
  v11(v24, a1, v5);
  v15 = swift_allocObject();
  v13(v15 + v12, v14, v5);
  type metadata accessor for RemoteBrowsingGuestPairingMonitor();
  v16 = swift_allocObject();
  *(v16 + 32) = 0;
  v17 = v28;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1F0, &qword_1E660B9B0);
  v18 = swift_allocObject();
  *(v18 + ((*(*v18 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v19 = MEMORY[0x1E69E6B68];
  sub_1E655EA18(v17, v18 + *(*v18 + *MEMORY[0x1E69E6B68] + 16));
  *(v16 + 16) = v26;
  *(v16 + 48) = v15;
  *(v16 + 56) = sub_1E65688C8;
  *(v16 + 64) = v25;
  *(v16 + 72) = v18;
  *(v16 + 40) = sub_1E65688DC;
  swift_unknownObjectRetain();

  sub_1E65E60B8();
  v20 = *(v16 + 72);
  v21 = *(*v20 + *v19 + 16);
  v22 = (*(*v20 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v20 + v22));
  sub_1E6568960(v20 + v21);
  os_unfair_lock_unlock((v20 + v22));
}

uint64_t sub_1E6560B34(uint64_t a1)
{
  v2 = type metadata accessor for RemoteBrowsingGuestPairingState(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1F8, &qword_1E660B9B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1E6568998(a1, v4, type metadata accessor for RemoteBrowsingGuestPairingState);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1E8, &qword_1E660B9A8);
  sub_1E65E60D8();
  return (*(v6 + 8))(v8, v5);
}

void sub_1E6560C8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);
  v3 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_1E656897C(v2 + v3);

  os_unfair_lock_unlock((v2 + v4));
}

uint64_t sub_1E6560D2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B210, &qword_1E660B9E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E5DF650C(a2 + 208, v24);
  v10 = *(v5 + 16);
  v23 = *(a2 + 112);
  v10(v9, a1, v4);
  v11 = *(v5 + 80);
  v22 = a1;
  v12 = (v11 + 16) & ~v11;
  v20 = swift_allocObject();
  v13 = *(v5 + 32);
  v13(v20 + v12, v9, v4);
  v14 = v21;
  v10(v21, a1, v4);
  v15 = swift_allocObject();
  v13(v15 + v12, v14, v4);
  type metadata accessor for RemoteParticipantDiscoveryMonitor();
  v16 = swift_allocObject();
  *(v16 + 80) = 0;
  *(v16 + 16) = 2;
  sub_1E5DF650C(v24, v16 + 24);
  *(v16 + 64) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B218, &qword_1E660B9E8);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_1(v24);
  *(v17 + 16) = MEMORY[0x1E69E7CD0];
  *(v16 + 96) = v15;
  *(v16 + 104) = sub_1E6568A08;
  *(v16 + 112) = v20;
  *(v16 + 120) = v17;
  *(v16 + 88) = sub_1E6568A74;

  sub_1E65E60B8();
  sub_1E6568B7C();
}

uint64_t sub_1E6561000(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B220, &unk_1E660B9F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - v4;
  v7[1] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B210, &qword_1E660B9E0);
  sub_1E65E60D8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1E6561104()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65611D0, v0, 0);
}

uint64_t sub_1E65611D0()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 208), *(*(v0 + 16) + 232));
  sub_1E65DD698();

  return MEMORY[0x1EEE6DFA0](sub_1E6561264, 0, 0);
}

uint64_t sub_1E6561264()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = "FitnessRemoteBrowsingService/LiveRemoteBrowsingService.swift";
  *(v2 + 24) = 60;
  *(v2 + 32) = 2;
  *(v2 + 40) = 110;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E6561374;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6568B70, v2, v4);
}

uint64_t sub_1E6561374()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1E6523C0C;
    v4 = 0;
  }

  else
  {
    v5 = v2[2];
    (*(v2[4] + 8))(v2[5], v2[3]);
    v3 = sub_1E65614CC;
    v4 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E65614CC()
{
  *(*(v0 + 16) + 248) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6561538(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1D8, &qword_1E660B998);
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E656166C, v1, 0);
}

uint64_t sub_1E656166C()
{
  v1 = v0[3];
  if (*(v1 + 248) == 3)
  {
    v2 = sub_1E65D99F8();
    sub_1E6568878(&qword_1ED07B1D0, MEMORY[0x1E69CC620], MEMORY[0x1E69CC628]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x1E69CC618], v2);
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }

  else
  {
    *(v1 + 248) = 2;
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_1E6561804;

    return sub_1E6561104();
  }
}

uint64_t sub_1E6561804()
{
  v2 = *v1;

  v3 = *(v2 + 24);
  if (v0)
  {

    v4 = sub_1E6568B78;
  }

  else
  {
    v4 = sub_1E656193C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E656193C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[3];
  type metadata accessor for RemoteBrowsingGuestPairingState(0);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();
  __swift_project_boxed_opaque_existential_1((v4 + 208), *(v4 + 232));
  sub_1E65DD688();

  return MEMORY[0x1EEE6DFA0](sub_1E6561A40, 0, 0);
}

uint64_t sub_1E6561A40()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = "FitnessRemoteBrowsingService/LiveRemoteBrowsingService.swift";
  *(v2 + 24) = 60;
  *(v2 + 32) = 2;
  *(v2 + 40) = 119;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E6561B50;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6568B70, v2, v4);
}

uint64_t sub_1E6561B50()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1E6561D18;
    v4 = 0;
  }

  else
  {
    v5 = v2[3];
    (*(v2[5] + 8))(v2[6], v2[4]);
    v3 = sub_1E6561CA8;
    v4 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E6561CA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6561D18()
{
  v1 = v0[3];
  (*(v0[5] + 8))(v0[6], v0[4]);

  return MEMORY[0x1EEE6DFA0](sub_1E6561D90, v1, 0);
}

uint64_t sub_1E6561D90()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1E0, &qword_1E660B9A0);
  (*(*(v2 - 8) + 8))(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E6561E48()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6561F14, v0, 0);
}

uint64_t sub_1E6561F14()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 208), *(*(v0 + 16) + 232));
  sub_1E65DD678();

  return MEMORY[0x1EEE6DFA0](sub_1E6561FA8, 0, 0);
}

uint64_t sub_1E6561FA8()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = "FitnessRemoteBrowsingService/LiveRemoteBrowsingService.swift";
  *(v2 + 24) = 60;
  *(v2 + 32) = 2;
  *(v2 + 40) = 124;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E65620B8;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6568B70, v2, v4);
}

uint64_t sub_1E65620B8()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1E6562210;
    v4 = 0;
  }

  else
  {
    v5 = v2[2];
    (*(v2[4] + 8))(v2[5], v2[3]);
    v3 = sub_1E6568B6C;
    v4 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E6562210()
{
  v1 = v0[2];
  (*(v0[4] + 8))(v0[5], v0[3]);

  return MEMORY[0x1EEE6DFA0](sub_1E5FEE4E0, v1, 0);
}

uint64_t sub_1E6562288(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1E65DE168();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_1E65D99E8();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1B8, &qword_1E660B980);
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_1E65D9FF8();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6562444, v1, 0);
}

uint64_t sub_1E6562444()
{
  v1 = *(v0 + 24);
  if (*(v1 + 248))
  {
    v2 = sub_1E65D99F8();
    sub_1E6568878(&qword_1ED07B1D0, MEMORY[0x1E69CC620], MEMORY[0x1E69CC628]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x1E69CC618], v2);
    swift_willThrow();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    *(v1 + 248) = 3;
    __swift_project_boxed_opaque_existential_1((v1 + 168), *(v1 + 192));
    sub_1E65DD578();

    return MEMORY[0x1EEE6DFA0](sub_1E6562608, 0, 0);
  }
}

uint64_t sub_1E6562608()
{
  v1 = v0[11];
  v2 = swift_task_alloc();
  v0[15] = v2;
  *(v2 + 16) = "FitnessRemoteBrowsingService/LiveRemoteBrowsingService.swift";
  *(v2 + 24) = 60;
  *(v2 + 32) = 2;
  *(v2 + 40) = 133;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_1E6562718;
  v4 = v0[14];
  v5 = v0[12];

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6568B74, v2, v5);
}

uint64_t sub_1E6562718()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1E6562AB8;
    v4 = 0;
  }

  else
  {
    v5 = v2[3];
    (*(v2[10] + 8))(v2[11], v2[9]);
    v3 = sub_1E6562874;
    v4 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E6562874()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[8];
  v15 = v0[7];
  v5 = v0[6];
  v14 = v0[5];
  v6 = v0[3];
  v13 = v0[4];
  v7 = v0[2];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072890, &qword_1E65EBF00);
  v9 = *(v8 + 48);
  v10 = sub_1E65D8DE8();
  (*(*(v10 - 8) + 16))(v4, v7, v10);
  (*(v2 + 16))(v4 + v9, v1, v3);
  (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
  __swift_project_boxed_opaque_existential_1((v6 + 128), *(v6 + 152));
  sub_1E65DE0F8();
  swift_getObjectType();
  sub_1E6568998(v4, v15, MEMORY[0x1E69CC610]);
  sub_1E65DE158();
  sub_1E65DDDE8();
  (*(v14 + 8))(v5, v13);
  sub_1E65687DC(v4);
  (*(v2 + 8))(v1, v3);
  *(v6 + 248) = 0;

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E6562AB8()
{
  v1 = v0[3];
  (*(v0[10] + 8))(v0[11], v0[9]);

  return MEMORY[0x1EEE6DFA0](sub_1E6562B34, v1, 0);
}

uint64_t sub_1E6562B34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6562BD4()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1B8, &qword_1E660B980);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1E65D9FF8();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079F08, &qword_1E660B960);
  v1[9] = swift_task_alloc();
  v4 = sub_1E65D8DE8();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6562D90, v0, 0);
}

uint64_t sub_1E6562D90()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  __swift_project_boxed_opaque_existential_1((v0[2] + 128), *(v0[2] + 152));
  sub_1E65DE0E8();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(v0[9], &qword_1ED079F08, &qword_1E660B960);
    v4 = sub_1E65D9298();
    sub_1E6568878(&qword_1ED07B1A0, MEMORY[0x1E69CBF90], MEMORY[0x1E69CBF98]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69CBF88], v4);
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[2];
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
    __swift_project_boxed_opaque_existential_1((v8 + 168), *(v8 + 192));
    sub_1E65DD538();

    return MEMORY[0x1EEE6DFA0](sub_1E6562FC0, 0, 0);
  }
}

uint64_t sub_1E6562FC0()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[13] = v2;
  *(v2 + 16) = "FitnessRemoteBrowsingService/LiveRemoteBrowsingService.swift";
  *(v2 + 24) = 60;
  *(v2 + 32) = 2;
  *(v2 + 40) = 144;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1E65630D0;
  v4 = v0[8];
  v5 = v0[6];

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6568838, v2, v5);
}

uint64_t sub_1E65630D0()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1E6563330;
    v4 = 0;
  }

  else
  {
    v5 = v2[2];
    (*(v2[4] + 8))(v2[5], v2[3]);
    v3 = sub_1E6563228;
    v4 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E6563228()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1((v0[2] + 128), *(v0[2] + 152));
  sub_1E65DE108();
  (*(v4 + 8))(v5, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E6563330()
{
  v1 = v0[2];
  (*(v0[4] + 8))(v0[5], v0[3]);

  return MEMORY[0x1EEE6DFA0](sub_1E65633A8, v1, 0);
}

uint64_t sub_1E65633A8()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E656344C()
{
  v1[2] = v0;
  sub_1E65D99E8();
  v1[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079F08, &qword_1E660B960);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6563514, v0, 0);
}

uint64_t sub_1E6563514()
{
  v1 = v0[4];
  v2 = v0[2];
  __swift_project_boxed_opaque_existential_1((v2 + 128), *(v2 + 152));
  sub_1E65DE0E8();
  v3 = sub_1E65D8DE8();
  v4 = (*(*(v3 - 8) + 48))(v1, 1, v3);
  sub_1E5DFE50C(v1, &qword_1ED079F08, &qword_1E660B960);
  __swift_project_boxed_opaque_existential_1((v2 + 128), *(v2 + 152));
  if (v4 == 1)
  {
    sub_1E65DE118();
  }

  else
  {
    v5 = v0[3];
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072890, &qword_1E65EBF00);
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    sub_1E65DE0F8();
    sub_1E65687DC(v5);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E65636AC()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079F08, &qword_1E660B960);
  v1[6] = swift_task_alloc();
  v3 = sub_1E65D8DE8();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E656380C, v0, 0);
}

uint64_t sub_1E656380C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1((v0[2] + 128), *(v0[2] + 152));
  sub_1E65DE0E8();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(v0[6], &qword_1ED079F08, &qword_1E660B960);
    v4 = sub_1E65D9298();
    sub_1E6568878(&qword_1ED07B1A0, MEMORY[0x1E69CBF90], MEMORY[0x1E69CBF98]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69CBF88], v4);
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[2];
    (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
    __swift_project_boxed_opaque_existential_1((v8 + 168), *(v8 + 192));
    sub_1E65DD568();

    return MEMORY[0x1EEE6DFA0](sub_1E6563A30, 0, 0);
  }
}

uint64_t sub_1E6563A30()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *(v2 + 16) = "FitnessRemoteBrowsingService/LiveRemoteBrowsingService.swift";
  *(v2 + 24) = 60;
  *(v2 + 32) = 2;
  *(v2 + 40) = 160;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E6563B40;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6568B70, v2, v4);
}

uint64_t sub_1E6563B40()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1E6563D34;
    v4 = 0;
  }

  else
  {
    v5 = v2[2];
    (*(v2[4] + 8))(v2[5], v2[3]);
    v3 = sub_1E6563C98;
    v4 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E6563C98()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E6563D34()
{
  v1 = v0[2];
  (*(v0[4] + 8))(v0[5], v0[3]);

  return MEMORY[0x1EEE6DFA0](sub_1E6563DAC, v1, 0);
}

uint64_t sub_1E6563DAC()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E6563E44(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1E65D9C28();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_1E65DAC18();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079F08, &qword_1E660B960);
  v2[13] = swift_task_alloc();
  v6 = sub_1E65D8DE8();
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6564068, v1, 0);
}

uint64_t sub_1E6564068()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  __swift_project_boxed_opaque_existential_1((v0[3] + 128), *(v0[3] + 152));
  sub_1E65DE0E8();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(v0[13], &qword_1ED079F08, &qword_1E660B960);
    v4 = sub_1E65D9298();
    sub_1E6568878(&qword_1ED07B1A0, MEMORY[0x1E69CBF90], MEMORY[0x1E69CBF98]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69CBF88], v4);
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[16];
    v9 = v0[17];
    v10 = v0[14];
    v11 = v0[15];
    v13 = v0[8];
    v12 = v0[9];
    v16 = v0[7];
    v15 = v0[2];
    v14 = v0[3];
    (*(v11 + 32))(v9, v0[13], v10);
    (*(v11 + 16))(v8, v9, v10);
    (*(v13 + 16))(v12, v15, v16);
    sub_1E65DAC08();
    __swift_project_boxed_opaque_existential_1((v14 + 168), *(v14 + 192));
    sub_1E65DD588();

    return MEMORY[0x1EEE6DFA0](sub_1E656431C, 0, 0);
  }
}

uint64_t sub_1E656431C()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[18] = v2;
  *(v2 + 16) = "FitnessRemoteBrowsingService/LiveRemoteBrowsingService.swift";
  *(v2 + 24) = 60;
  *(v2 + 32) = 2;
  *(v2 + 40) = 169;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_1E656442C;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65687C4, v2, v4);
}