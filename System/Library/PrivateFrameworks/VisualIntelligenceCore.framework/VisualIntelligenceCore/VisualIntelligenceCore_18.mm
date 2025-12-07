uint64_t sub_1D89215E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = 0;
  v13 = *(a2 + 16);
  while (v13 != v12)
  {
    v14 = *(type metadata accessor for BundleClassification.ClassificationType(0) - 8);
    v15 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO2eeoiySbAE_AEtFZ_0(a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12++, a1);
    if (v15)
    {
      sub_1D8917FF0(a1, a5, type metadata accessor for BundleClassification.ClassificationType);
      v16 = type metadata accessor for BundleClassification(0);
      v17 = a5 + *(v16 + 20);
      *v17 = 2;
      *(v17 + 8) = 0u;
      *(v17 + 24) = 0u;
      sub_1D88E0FE4(2, 0, 0, 0);
      *v17 = 2;
      *(v17 + 8) = 0u;
      *(v17 + 24) = 0u;
      *(a5 + *(v16 + 24)) = a6;
      type metadata accessor for RefinementState(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  v18 = 0;
  v19 = *(a3 + 16);
  while (v19 != v18)
  {
    v20 = *(type metadata accessor for BundleClassification.ClassificationType(0) - 8);
    v21 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO2eeoiySbAE_AEtFZ_0(a3 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v18++, a1);
    if (v21)
    {
      type metadata accessor for RefinementState(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  v22 = *(a4 + 16);
  v23 = type metadata accessor for BundleClassification.ClassificationType(0);
  v24 = 0;
  v26 = *(v23 - 8);
  result = v23 - 8;
  v27 = v26;
  v28 = a4 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
  while (v22 != v24)
  {
    v29 = v24 + 1;
    result = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO2eeoiySbAE_AEtFZ_0(v28 + *(v27 + 72) * v24, a1);
    v24 = v29;
    if (result)
    {
      *a5 = 0;
      *(a5 + 8) = xmmword_1D8B26630;
      *(a5 + 24) = 2;
      *(a5 + 32) = a6;
      type metadata accessor for RefinementState(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8921890(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = *a1;
  CVBundle.latestEstimate.getter(&v12);
  if (v12 >> 60 || v5 > 0xD || ((1 << v5) & 0x3002) == 0)
  {

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v6 = swift_projectBox();
    sub_1D87A0E38(v6, v4, &qword_1ECA67750, &unk_1D8B1E0C0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631F0, &unk_1D8B1E7B0);
    v7 = *(type metadata accessor for DetectionRequest.Annotation(0) - 8);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D8B1AB90;
    sub_1D881F6FC(v4, v9 + v8, &qword_1ECA67750, &unk_1D8B1E0C0);
    swift_storeEnumTagMultiPayload();
    return v9;
  }
}

void *sub_1D8921A48()
{
  v1 = type metadata accessor for ObjectDetectorResult(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = *v0 >> 60;
  if (v7 <= 5)
  {
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        v14 = swift_projectBox();
        sub_1D8917FF0(v14, v3, type metadata accessor for ObjectDetectorResult);
        v15 = &v3[*(v1 + 28)];
        v16 = *v15;
        v17 = *(v15 + 1);
        v18 = *v15 == 1852270963 && v17 == 0xE400000000000000;
        if (v18 || (sub_1D8B16BA0() & 1) != 0)
        {
          v19 = &unk_1F5427F40;
        }

        else
        {
          v20 = v16 == 0x746E656D75636F64 && v17 == 0xE800000000000000;
          if (v20 || (sub_1D8B16BA0() & 1) != 0)
          {
            v19 = &unk_1F5427F68;
          }

          else
          {
            v19 = &unk_1F5427F68;
            v21 = v16 == 0x656C74746F62 && v17 == 0xE600000000000000;
            if (!v21 && (sub_1D8B16BA0() & 1) == 0)
            {
              v19 = &unk_1F5427F90;
            }
          }
        }

        sub_1D89388D8(v3, type metadata accessor for ObjectDetectorResult);
        return v19;
      }

      else if (v7 == 4)
      {
        return &unk_1F5427FB8;
      }

      else
      {
        return &unk_1F5427F18;
      }
    }

    else if (v7)
    {
      if (v7 == 1)
      {
        return &unk_1F5427FE0;
      }

      else
      {
        return &unk_1F5427EF0;
      }
    }

    else
    {
      v12 = swift_projectBox();
      sub_1D87A0E38(v12, v6, &qword_1ECA67750, &unk_1D8B1E0C0);
      v13 = sub_1D8921D2C();
      sub_1D87A14E4(v6, &qword_1ECA67750, &unk_1D8B1E0C0);
      return v13;
    }
  }

  else
  {
    v8 = &unk_1F5428080;
    if ((v7 - 12) >= 2)
    {
      v8 = &unk_1F5428058;
    }

    if ((v7 - 9) >= 2)
    {
      v9 = v8;
    }

    else
    {
      v9 = &unk_1F5428030;
    }

    v10 = MEMORY[0x1E69E7CC0];
    if ((v7 - 6) < 2)
    {
      v10 = &unk_1F5428008;
    }

    if (v7 <= 8)
    {
      return v10;
    }

    else
    {
      return v9;
    }
  }
}

char sub_1D8921D2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  v2 = *(v0 + *(v1 + 44));
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_14;
  }

  LOBYTE(v1) = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v2 + 32));
  switch(v8)
  {
    case 0xB5u:
LABEL_14:
      __break(1u);
      return v1;
    case 0x1Cu:
      return &unk_1F5427E50;
    case 0xA0u:
      return &unk_1F5427E78;
    default:
      v3 = sub_1D88F8978();
      v4 = *(v3 + 16) + 1;
      v5 = 32;
      while (--v4)
      {
        v6 = *(v3 + v5);
        v5 += 8;
        if (v6 == 28)
        {

          return &unk_1F5427EA0;
        }
      }

      return &unk_1F5427EC8;
  }
}

uint64_t sub_1D8921DF8()
{
  v1 = *(v0 + 88);
  result = sub_1D8940548();
  v3 = result;
  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = MEMORY[0x1E69E7CC0];
  while (v8)
  {
    v11 = v8;
LABEL_10:
    v8 = (v11 - 1) & v11;
    if (*(v1 + 16))
    {
      v13 = *(*(v3 + 48) + (__clz(__rbit64(v11)) | (v4 << 6)));
      result = sub_1D881F7DC();
      if ((v14 & 1) != 0 && *(*(v1 + 56) + result) != 2)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v20 = v10;
        if ((result & 1) == 0)
        {
          result = sub_1D87F4534(0, *(v10 + 16) + 1, 1);
        }

        v15 = *(v10 + 16);
        v16 = *(v10 + 24);
        v17 = v15 + 1;
        if (v15 >= v16 >> 1)
        {
          v18 = v15 + 1;
          v19 = v15;
          result = sub_1D87F4534((v16 > 1), v15 + 1, 1);
          v17 = v18;
          v15 = v19;
          v10 = v20;
        }

        *(v10 + 16) = v17;
        *(v10 + v15 + 32) = v13;
      }
    }
  }

  while (1)
  {
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return v10;
    }

    v11 = *(v5 + 8 * v12);
    ++v4;
    if (v11)
    {
      v4 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

__n128 BundleManager.Output.latestFrameMetadata.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  v3 = *(v1 + 56);
  *(a1 + 32) = *(v1 + 40);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 72);
  *a1 = *(v1 + 8);
  *(a1 + 16) = result;
  return result;
}

void BundleManager.Output.hash(into:)(uint64_t a1)
{
  v3 = v1[11];
  sub_1D87CF97C(a1, *v1);
  CameraSourceFrameMetadata.hash(into:)(a1);

  sub_1D893A2B0(a1, v3);
}

uint64_t BundleManager.Output.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[11];
  sub_1D8B16D20();
  sub_1D87CF97C(v4, v1);
  CameraSourceFrameMetadata.hash(into:)(v4);
  sub_1D893A2B0(v4, v2);
  return sub_1D8B16D80();
}

uint64_t sub_1D8922100()
{
  v1 = *v0;
  v2 = v0[11];
  sub_1D8B16D20();
  sub_1D87CF97C(v4, v1);
  CameraSourceFrameMetadata.hash(into:)(v4);
  sub_1D893A2B0(v4, v2);
  return sub_1D8B16D80();
}

void sub_1D892218C(uint64_t a1)
{
  v3 = v1[11];
  sub_1D87CF97C(a1, *v1);
  CameraSourceFrameMetadata.hash(into:)(a1);

  sub_1D893A2B0(a1, v3);
}

uint64_t sub_1D892220C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[11];
  sub_1D8B16D20();
  sub_1D87CF97C(v5, v2);
  CameraSourceFrameMetadata.hash(into:)(v5);
  sub_1D893A2B0(v5, v3);
  return sub_1D8B16D80();
}

__n128 sub_1D8922294@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  v3 = *(v1 + 56);
  *(a1 + 32) = *(v1 + 40);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 72);
  *a1 = *(v1 + 8);
  *(a1 + 16) = result;
  return result;
}

void sub_1D89222B8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D8B151C0();
  v4 = sub_1D8B161F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D8783000, v3, v4, "reset() begin", v5, 2u);
    MEMORY[0x1DA721330](v5, -1, -1);
  }

  *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_bundles) = MEMORY[0x1E69E7CC0];

  *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_bundleIdToBundleClassifier) = MEMORY[0x1E69E7CC8];

  v6 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_otherSyntheticTracks;
  swift_beginAccess();
  *(v2 + v6) = MEMORY[0x1E69E7CD0];

  v7 = (v2 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState);
  v8 = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 48);
  v14[2] = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 32);
  v14[3] = v8;
  v9 = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 80);
  v14[4] = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 64);
  v14[5] = v9;
  v10 = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 16);
  v14[0] = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState);
  v14[1] = v10;
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  v7[4] = 0u;
  v7[5] = 0u;
  sub_1D87A14E4(v14, &qword_1ECA64858, &unk_1D8B2ABF0);
  sub_1D892C038();
  v11 = sub_1D8B151C0();
  v12 = sub_1D8B161F0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1D8783000, v11, v12, "reset() end", v13, 2u);
    MEMORY[0x1DA721330](v13, -1, -1);
  }
}

unint64_t sub_1D8922494()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657B8, &qword_1D8B2D5D0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v102 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v78 - v4;
  v111 = type metadata accessor for BundleClassification.ClassificationType(0);
  v6 = *(v111 - 8);
  v7 = MEMORY[0x1EEE9AC00](v111);
  v98 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v97 = &v78 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v109 = &v78 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v78 - v14);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v108 = &v78 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v110 = &v78 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657C0, &qword_1D8B2AC00);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v78 - v20;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63430, &qword_1D8B1EA18);
  v81 = *(v96 - 8);
  v22 = MEMORY[0x1EEE9AC00](v96);
  v89 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v80 = &v78 - v24;
  v83 = type metadata accessor for CVBundle(0);
  v90 = *(v83 - 8);
  v25 = MEMORY[0x1EEE9AC00](v83);
  v91 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = (v0 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState);
  v28 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 48);
  v114[2] = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 32);
  v114[3] = v28;
  v29 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 80);
  v114[4] = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 64);
  v114[5] = v29;
  v30 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 16);
  v114[0] = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState);
  v114[1] = v30;
  if (!v29)
  {
    v74 = MEMORY[0x1E69E7CC0];

    return sub_1D893EC50(v74);
  }

  v99 = v6;
  v31 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_bundles);
  v32 = v27[3];
  v113[2] = v27[2];
  v113[3] = v32;
  v113[4] = v27[4];
  v33 = v27[1];
  v113[0] = *v27;
  v113[1] = v33;
  MEMORY[0x1EEE9AC00](v25);
  *(&v78 - 4) = v113;
  *(&v78 - 3) = v34;
  v88 = v34;
  *(&v78 - 2) = v0;
  swift_bridgeObjectRetain_n();
  sub_1D87A0E38(v114, v112, &qword_1ECA64858, &unk_1D8B2ABF0);
  sub_1D8927E98(MEMORY[0x1E69E7CC8], sub_1D88C7C98, (&v78 - 6), v31, type metadata accessor for CVBundle);
  v78 = v35;
  v79 = 0;
  sub_1D87A14E4(v114, &qword_1ECA64858, &unk_1D8B2ABF0);

  v87 = *(v31 + 16);
  if (v87)
  {
    v36 = 0;
    v84 = (v81 + 48);
    v85 = (v81 + 56);
    v95 = *MEMORY[0x1E69C9C08];
    v100 = xmmword_1D8B1AB90;
    v94 = xmmword_1D8B190C0;
    v92 = MEMORY[0x1E69E7CC0];
    v37 = v99;
    v101 = v15;
    v38 = v91;
    v82 = v21;
    v86 = v31;
    while (1)
    {
      if (v36 >= *(v31 + 16))
      {
        goto LABEL_57;
      }

      v39 = v31 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
      v40 = *(v90 + 72);
      v93 = v36;
      sub_1D8917FF0(v39 + v40 * v36, v38, type metadata accessor for CVBundle);
      v112[0] = MEMORY[0x1E69E7CD0];
      v41 = *v88;
      v106 = *(*v88 + 16);
      if (v106)
      {
        break;
      }

      v66 = MEMORY[0x1E69E7CD0];
LABEL_38:
      v67 = v96;
      if (*(v66 + 16))
      {
        v68 = *(v96 + 48);
        v38 = v91;
        sub_1D8917FF0(v91, v21, type metadata accessor for CVBundle);
        v69 = 0;
        *&v21[v68] = v66;
        v67 = v96;
      }

      else
      {

        v69 = 1;
        v38 = v91;
      }

      (*v85)(v21, v69, 1, v67);
      sub_1D89388D8(v38, type metadata accessor for CVBundle);
      if ((*v84)(v21, 1, v67) == 1)
      {
        sub_1D87A14E4(v21, &qword_1ECA657C0, &qword_1D8B2AC00);
        v37 = v99;
      }

      else
      {
        v70 = v80;
        sub_1D881F6FC(v21, v80, &qword_1ECA63430, &qword_1D8B1EA18);
        sub_1D881F6FC(v70, v89, &qword_1ECA63430, &qword_1D8B1EA18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_1D87C9210(0, v92[2] + 1, 1, v92);
        }

        v72 = v92[2];
        v71 = v92[3];
        if (v72 >= v71 >> 1)
        {
          v92 = sub_1D87C9210((v71 > 1), v72 + 1, 1, v92);
        }

        v73 = v92;
        v92[2] = v72 + 1;
        sub_1D881F6FC(v89, v73 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v72, &qword_1ECA63430, &qword_1D8B1EA18);
        v37 = v99;
        v38 = v91;
      }

      v36 = v93 + 1;
      v31 = v86;
      if (v93 + 1 == v87)
      {
        goto LABEL_51;
      }
    }

    v42 = 0;
    v43 = *(v37 + 80);
    v107 = (v43 + 32) & ~v43;
    v103 = v41 + v107;
    v104 = v43;
    v44 = *(v38 + *(v83 + 28));
    v105 = v41;
    while (1)
    {
      if (v42 >= *(v41 + 16))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v45 = v44;
      v46 = v103 + *(v37 + 72) * v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63410, &qword_1D8B23AD0);
      v47 = v107;
      v48 = swift_allocObject();
      *(v48 + 16) = v100;
      sub_1D8917FF0(v46, v48 + v47, type metadata accessor for BundleClassification.ClassificationType);
      v49 = v110;
      sub_1D8917FF0(v48 + v47, v110, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D8917FF0(v49, v109, type metadata accessor for BundleClassification.ClassificationType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 4)
      {
        v51 = MEMORY[0x1E69E7CD0];
        if (EnumCaseMultiPayload <= 6)
        {
          v44 = v45;
          if (EnumCaseMultiPayload == 5)
          {
            sub_1D89388D8(v109, type metadata accessor for BundleClassification.ClassificationType);
            *v15 = v51;
          }
        }

        else
        {
          v44 = v45;
        }

        goto LABEL_28;
      }

      if (EnumCaseMultiPayload <= 1)
      {
        v44 = v45;
        if (!EnumCaseMultiPayload)
        {
          sub_1D89388D8(v109, type metadata accessor for BundleClassification.ClassificationType);
          *v15 = MEMORY[0x1E69E7CC0];
          v15[1] = 0xBFF0000000000000;
          goto LABEL_28;
        }

        v53 = type metadata accessor for VisualLookupClassifier.Result(0);
        (*(*(v53 - 8) + 56))(v15, 1, 1, v53);
      }

      else
      {
        v44 = v45;
        if (EnumCaseMultiPayload == 2)
        {
          sub_1D89388D8(v109, type metadata accessor for BundleClassification.ClassificationType);
          *v15 = v94;
          v15[2] = 0xE700000000000000;
          v15[3] = 0x7974706D65;
          v15[4] = 0xE500000000000000;
          v15[5] = 0;
          goto LABEL_28;
        }

        if (EnumCaseMultiPayload == 3)
        {
          *v15 = 0;
LABEL_28:
          swift_storeEnumTagMultiPayload();
          goto LABEL_29;
        }

        *v15 = 0x7974706D65;
        v15[1] = 0xE500000000000000;
        v52 = sub_1D8B145A0();
        (*(*(v52 - 8) + 104))(v15, v95, v52);
      }

      swift_storeEnumTagMultiPayload();
      sub_1D89388D8(v109, type metadata accessor for BundleClassification.ClassificationType);
LABEL_29:
      v54 = v15;
      v55 = v108;
      sub_1D8918058(v54, v108, type metadata accessor for BundleClassification.ClassificationType);
      if (*(v44 + 16) && (v56 = sub_1D87EF6AC(v55), (v57 & 1) != 0))
      {
        v58 = v56;
        v59 = *(v45 + 56);
        v60 = type metadata accessor for RefinementState(0);
        v61 = *(v60 - 8);
        v62 = v59 + *(v61 + 72) * v58;
        v44 = v45;
        sub_1D8917FF0(v62, v5, type metadata accessor for RefinementState);
        sub_1D89388D8(v108, type metadata accessor for BundleClassification.ClassificationType);
        sub_1D89388D8(v110, type metadata accessor for BundleClassification.ClassificationType);
        (*(v61 + 56))(v5, 0, 1, v60);
        v37 = v99;
      }

      else
      {
        sub_1D89388D8(v55, type metadata accessor for BundleClassification.ClassificationType);
        sub_1D89388D8(v110, type metadata accessor for BundleClassification.ClassificationType);
        v60 = type metadata accessor for RefinementState(0);
        (*(*(v60 - 8) + 56))(v5, 1, 1, v60);
      }

      type metadata accessor for RefinementState(0);
      v63 = (*(*(v60 - 8) + 48))(v5, 1, v60);
      v15 = v101;
      if (v63 != 1)
      {
        sub_1D87A0E38(v5, v102, &qword_1ECA657B8, &qword_1D8B2D5D0);
        if ((swift_getEnumCaseMultiPayload() | 2) != 2)
        {
          sub_1D89388D8(v102, type metadata accessor for RefinementState);
          sub_1D87A14E4(v5, &qword_1ECA657B8, &qword_1D8B2D5D0);
          v64 = v97;
          sub_1D8917FF0(v48 + v107, v97, type metadata accessor for BundleClassification.ClassificationType);
          v65 = v98;
          sub_1D87F8208(v98, v64);
          sub_1D89388D8(v65, type metadata accessor for BundleClassification.ClassificationType);
          goto LABEL_11;
        }

        sub_1D89388D8(v102, type metadata accessor for RefinementState);
      }

      sub_1D87A14E4(v5, &qword_1ECA657B8, &qword_1D8B2D5D0);
LABEL_11:
      ++v42;

      v41 = v105;
      if (v106 == v42)
      {
        v66 = v112[0];
        v21 = v82;
        goto LABEL_38;
      }
    }
  }

  v92 = MEMORY[0x1E69E7CC0];
LABEL_51:

  if (v92[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657C8, &qword_1D8B2AC08);
    v76 = sub_1D8B16910();
  }

  else
  {
    v76 = MEMORY[0x1E69E7CC8];
  }

  v112[0] = v76;
  v77 = v79;
  sub_1D8938EE8(v92, 1, v112);
  if (v77)
  {
    goto LABEL_58;
  }

  return v112[0];
}

void sub_1D8923290(__int128 *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for CVBundle(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v126 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v115 - v11);
  v13 = a1[3];
  v184 = a1[2];
  v185 = v13;
  v14 = a1[5];
  v186 = a1[4];
  v187 = v14;
  v15 = a1[1];
  v182 = *a1;
  v183 = v15;
  v181 = v186;
  v179 = v184;
  v180 = v13;
  v178 = v15;
  v177 = v182;
  v16 = BYTE8(v184);
  if (BYTE8(v184) == 1)
  {
    v17 = *(sub_1D8921DF8() + 16);

    if (v17)
    {
      sub_1D88C7A20(&v182, v143);
      v18 = sub_1D8B151C0();
      v19 = sub_1D8B161F0();
      sub_1D8943A60(&v182);
      if (!os_log_type_enabled(v18, v19))
      {
LABEL_95:

        return;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v165 = v21;
      *v20 = 136315138;
      v143[2] = v184;
      v143[3] = v185;
      v143[4] = v186;
      v143[5] = v187;
      v143[0] = v182;
      v143[1] = v183;
      v22 = sub_1D8921DF8();
      v23 = *(v22 + 16);
      if (v23)
      {
        v122 = v21;
        v123 = v20;
        LODWORD(v124) = v19;
        v125 = v18;
        *&v164[0] = MEMORY[0x1E69E7CC0];
        v126 = v22;
        sub_1D87F3F54(0, v23, 0);
        v24 = v126;
        v25 = *&v164[0];
        v26 = 0x80000001D8B439A0;
        v27 = 0x80000001D8B439C0;
        v28 = 32;
        do
        {
          v29 = 0xE900000000000067;
          v30 = 0x6E69646E756F7267;
          switch(*(v24 + v28))
          {
            case 1:
              v30 = 0x6465646E756F7267;
              v29 = 0xED00006573726150;
              break;
            case 2:
              v29 = 0xE400000000000000;
              v30 = 1635018093;
              break;
            case 3:
              v29 = 0xE600000000000000;
              v30 = 0x7463656A626FLL;
              break;
            case 4:
              v29 = 0xE500000000000000;
              v30 = 0x6573726170;
              break;
            case 5:
              v29 = 0xE400000000000000;
              v30 = 1954047348;
              break;
            case 6:
              v29 = 0xE600000000000000;
              v30 = 0x65646F437271;
              break;
            case 7:
              v29 = 0xE700000000000000;
              v30 = 0x70696C43707061;
              break;
            case 8:
              v30 = 0x6E696D6165727473;
              v29 = 0xED00007478655467;
              break;
            case 9:
              v30 = 0x6C61636974726576;
              v29 = 0xEF746E65746E6F43;
              break;
            case 0xA:
              v29 = 0xEA00000000006C61;
              v30 = 0x646F6D69746C756DLL;
              break;
            case 0xB:
              v30 = 0x69746568746E7973;
              v29 = 0xE900000000000063;
              break;
            case 0xC:
              v30 = 0xD000000000000017;
              v29 = v27;
              break;
            case 0xD:
              v30 = 0xD00000000000001CLL;
              v29 = v26;
              break;
            default:
              break;
          }

          *&v164[0] = v25;
          v32 = *(v25 + 16);
          v31 = *(v25 + 24);
          if (v32 >= v31 >> 1)
          {
            v120 = v27;
            v121 = v26;
            sub_1D87F3F54((v31 > 1), v32 + 1, 1);
            v27 = v120;
            v26 = v121;
            v24 = v126;
            v25 = *&v164[0];
          }

          *(v25 + 16) = v32 + 1;
          v33 = v25 + 16 * v32;
          *(v33 + 32) = v30;
          *(v33 + 40) = v29;
          ++v28;
          --v23;
        }

        while (v23);

        v18 = v125;
        LOBYTE(v19) = v124;
        v21 = v122;
        v20 = v123;
      }

      else
      {

        v25 = MEMORY[0x1E69E7CC0];
      }

      v111 = MEMORY[0x1DA71F1E0](v25, MEMORY[0x1E69E6158]);
      v113 = v112;

      v114 = sub_1D89AC714(v111, v113, &v165);

      *(v20 + 4) = v114;
      v53 = "Suppressing still image update while root node production is pending for %s.";
LABEL_94:
      _os_log_impl(&dword_1D8783000, v18, v19, v53, v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1DA721330](v21, -1, -1);
      MEMORY[0x1DA721330](v20, -1, -1);
      goto LABEL_95;
    }
  }

  v120 = v7;
  LODWORD(v122) = v16;
  v34 = v3 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_configuration;
  MEMORY[0x1EEE9AC00](v10);
  *(&v115 - 4) = &v177;
  *(&v115 - 3) = v34;
  *(&v115 - 2) = v3;
  sub_1D8927E98(MEMORY[0x1E69E7CC8], sub_1D894478C, (&v115 - 6), a2, type metadata accessor for CVBundle);
  v161 = v179;
  v162 = v180;
  v159 = v177;
  v160 = v178;
  v167 = v178;
  v168 = v179;
  v169 = v180;
  v170 = v181;
  v166 = v177;
  v165 = a2;
  v171 = v35;
  v36 = (v3 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState);
  v37 = *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState);
  v38 = *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 16);
  v163 = v181;
  v164[0] = v37;
  v39 = *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 80);
  v164[4] = *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 64);
  v164[5] = v39;
  v40 = *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 32);
  v164[3] = *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 48);
  v164[1] = v38;
  v164[2] = v40;
  v124 = v35;
  v125 = v12;
  if (v39)
  {
    v121 = &v115;
    v41 = *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_bundles);
    v42 = v36[3];
    v174 = v36[2];
    v175 = v42;
    v176 = v36[4];
    v43 = *v36;
    v173 = v36[1];
    v172 = v43;
    MEMORY[0x1EEE9AC00](v35);
    *(&v115 - 4) = &v172;
    *(&v115 - 3) = v34;
    *(&v115 - 2) = v3;
    swift_bridgeObjectRetain_n();

    sub_1D8943B30(&v165, v143);
    sub_1D87A0E38(v164, v143, &qword_1ECA64858, &unk_1D8B2ABF0);
    sub_1D8927E98(MEMORY[0x1E69E7CC8], sub_1D894478C, (&v115 - 6), v41, type metadata accessor for CVBundle);
    v45 = v44;
    v123 = 0;
    v12 = v125;
    sub_1D87A14E4(v164, &qword_1ECA64858, &unk_1D8B2ABF0);

    *&v157[3] = v173;
    *&v157[5] = v174;
    *&v157[7] = v175;
    *&v157[9] = v176;
    *&v157[1] = v172;
    v157[0] = v41;
  }

  else
  {
    v123 = 0;

    sub_1D8943B30(&v165, v143);
    v41 = 0;
    v45 = 0;
    memset(v157, 0, sizeof(v157));
  }

  v158 = v45;
  v153 = *&v157[5];
  v154 = *&v157[7];
  v155 = *&v157[9];
  v156 = v45;
  v151 = *&v157[1];
  v152 = *&v157[3];
  if (!a2)
  {
    v46 = v124;
    if (!v41)
    {

      *(&v143[1] + 8) = v160;
      *(&v143[2] + 8) = v161;
      *(&v143[3] + 8) = v162;
      *(&v143[4] + 8) = v163;
      *(v143 + 8) = v159;
      *&v143[0] = 0;
      *(&v143[5] + 1) = v46;
      sub_1D87A14E4(v143, &qword_1ECA67E50, &qword_1D8B25ED8);
      goto LABEL_35;
    }

    goto LABEL_44;
  }

  *(&v143[1] + 8) = v160;
  *(&v143[2] + 8) = v161;
  *(&v143[3] + 8) = v162;
  *(&v143[4] + 8) = v163;
  *(v143 + 8) = v159;
  *&v143[0] = a2;
  v46 = v124;
  *(&v143[5] + 1) = v124;
  if (!v41)
  {
    v138 = v160;
    v139 = v161;
    v140 = v162;
    v141 = v163;
    v137 = v159;
    v136 = a2;
    v142 = v124;
    sub_1D87A0E38(v143, v134, &qword_1ECA67E50, &qword_1D8B25ED8);
    sub_1D88C39F8(&v136);
LABEL_44:
    *(&v143[1] + 8) = v160;
    *(&v143[2] + 8) = v161;
    *(&v143[3] + 8) = v162;
    *(&v143[4] + 8) = v163;
    *(v143 + 8) = v159;
    v149 = v155;
    v148 = v154;
    v147 = v153;
    v145 = v151;
    *&v143[0] = a2;
    *(&v143[5] + 1) = v46;
    v144 = v41;
    v150 = v156;
    v146 = v152;
    sub_1D87A14E4(v143, &qword_1ECA65B58, &qword_1D8B2BEC0);
    goto LABEL_45;
  }

  v139 = *&v157[5];
  v140 = *&v157[7];
  v141 = *&v157[9];
  v136 = v41;
  v142 = v158;
  v137 = *&v157[1];
  v138 = *&v157[3];
  v131 = *&v157[5];
  v132 = *&v157[7];
  v133 = *&v157[9];
  v129 = *&v157[1];
  v130 = *&v157[3];
  v47 = v158;
  sub_1D8943B30(&v165, v134);
  sub_1D87A0E38(v157, v134, &qword_1ECA67E50, &qword_1D8B25ED8);
  sub_1D87A0E38(v143, v134, &qword_1ECA67E50, &qword_1D8B25ED8);
  if ((sub_1D88E4444(a2, v41) & 1) == 0 || (*&v134[32] = v161, *&v134[48] = v162, *&v134[64] = v163, *v134 = v159, *&v134[16] = v160, *&v127[32] = v131, *&v127[48] = v132, *&v127[64] = v133, *v127 = v129, *&v127[16] = v130, !_s22VisualIntelligenceCore25CameraSourceFrameMetadataV2eeoiySbAC_ACtFZ_0(v134, v127)))
  {
    sub_1D87A14E4(v157, &qword_1ECA67E50, &qword_1D8B25ED8);
    sub_1D88C39F8(&v165);
    sub_1D87A14E4(&v136, &qword_1ECA67E50, &qword_1D8B25ED8);
    *v127 = a2;
    *&v127[24] = v160;
    *&v127[40] = v161;
    *&v127[56] = v162;
    *&v127[72] = v163;
    *&v127[8] = v159;
    v128 = v46;
    sub_1D88C39F8(v127);
    *&v134[24] = v160;
    *&v134[40] = v161;
    *&v134[56] = v162;
    *&v134[72] = v163;
    *&v134[8] = v159;
    *v134 = a2;
    v135 = v46;
    sub_1D87A14E4(v134, &qword_1ECA67E50, &qword_1D8B25ED8);
    v12 = v125;
    goto LABEL_45;
  }

  v48 = sub_1D8855170(v46, v47);
  sub_1D87A14E4(v157, &qword_1ECA67E50, &qword_1D8B25ED8);
  sub_1D88C39F8(&v165);
  sub_1D87A14E4(&v136, &qword_1ECA67E50, &qword_1D8B25ED8);
  *v127 = a2;
  *&v127[24] = v160;
  *&v127[40] = v161;
  *&v127[56] = v162;
  *&v127[72] = v163;
  *&v127[8] = v159;
  v128 = v46;
  sub_1D88C39F8(v127);
  *&v134[24] = v160;
  *&v134[40] = v161;
  *&v134[56] = v162;
  *&v134[72] = v163;
  *&v134[8] = v159;
  *v134 = a2;
  v135 = v46;
  sub_1D87A14E4(v134, &qword_1ECA67E50, &qword_1D8B25ED8);
  v12 = v125;
  if ((v48 & 1) == 0)
  {
LABEL_45:
    v54 = v36[3];
    v143[2] = v36[2];
    v143[3] = v54;
    v55 = v36[5];
    v143[4] = v36[4];
    v143[5] = v55;
    v56 = v36[1];
    v143[0] = *v36;
    v143[1] = v56;
    v57 = v185;
    v36[2] = v184;
    v36[3] = v57;
    v58 = v187;
    v36[4] = v186;
    v36[5] = v58;
    v59 = v183;
    *v36 = v182;
    v36[1] = v59;
    sub_1D88C7A20(&v182, &v136);
    sub_1D87A14E4(v143, &qword_1ECA64858, &unk_1D8B2ABF0);
    *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_bundles) = a2;

    v60 = v187;

    v62 = sub_1D8940658(v61);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AA0, &qword_1D8B3E5B0);
    v63 = sub_1D8B168F0();
    v64 = 0;
    v65 = 1 << *(v62 + 32);
    v66 = -1;
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    v67 = v66 & v62[8];
    v68 = (v65 + 63) >> 6;
    if (v67)
    {
      while (1)
      {
        v69 = __clz(__rbit64(v67));
        v67 &= v67 - 1;
        v70 = v69 | (v64 << 6);
LABEL_54:
        v73 = *(v62[6] + v70);
        v74 = *(*(v62[7] + 8 * v70) + 16);
        *(v63 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v70;
        *(v63[6] + v70) = v73;
        *(v63[7] + 8 * v70) = v74;
        v75 = v63[2];
        v76 = __OFADD__(v75, 1);
        v77 = v75 + 1;
        if (v76)
        {
          break;
        }

        v63[2] = v77;
        if (!v67)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
LABEL_49:
      v71 = v64;
      while (1)
      {
        v64 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          __break(1u);
          goto LABEL_97;
        }

        if (v64 >= v68)
        {
          break;
        }

        v72 = v62[v64 + 8];
        ++v71;
        if (v72)
        {
          v67 = (v72 - 1) & v72;
          v70 = __clz(__rbit64(v72)) | (v64 << 6);
          goto LABEL_54;
        }
      }

      v123 = v60;

      v78 = 0;
      v79 = 0;
      v80 = 1 << *(v46 + 32);
      v81 = -1;
      if (v80 < 64)
      {
        v81 = ~(-1 << v80);
      }

      v82 = v81 & *(v46 + 64);
      v83 = (v80 + 63) >> 6;
      while (v82)
      {
        v84 = v78;
LABEL_66:
        v85 = __clz(__rbit64(v82));
        v82 &= v82 - 1;
        v86 = *(*(*(v46 + 56) + ((v84 << 9) | (8 * v85))) + 16);
        v76 = __OFADD__(v79, v86);
        v79 += v86;
        if (v76)
        {
          __break(1u);
LABEL_69:

          sub_1D88C7A20(&v182, &v136);

          sub_1D88C7A20(&v182, &v136);

          v87 = sub_1D8B151C0();
          v88 = sub_1D8B16200();

          if (os_log_type_enabled(v87, v88))
          {
            v116 = v88;
            v121 = v3;
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            *v134 = v90;
            *v89 = 134219266;
            v91 = a2;
            v92 = a2[2];
            *(v89 + 4) = v92;
            v117 = v89;
            v118 = v87;
            *(v89 + 12) = 2048;
            v119 = v91;
            v115 = v90;
            if (v92)
            {
              v124 = (*(v120 + 80) + 32) & ~*(v120 + 80);
              v93 = v91 + v124;
              v94 = *(v120 + 72);
              v95 = MEMORY[0x1E69E7CC0];
              do
              {
                sub_1D8917FF0(v93, v12, type metadata accessor for CVBundle);
                if (sub_1D8919304())
                {
                  sub_1D8918058(v12, v126, type metadata accessor for CVBundle);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v136 = v95;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_1D87F4074(0, *(v95 + 16) + 1, 1);
                    v95 = v136;
                  }

                  v98 = *(v95 + 16);
                  v97 = *(v95 + 24);
                  if (v98 >= v97 >> 1)
                  {
                    sub_1D87F4074((v97 > 1), v98 + 1, 1);
                    v95 = v136;
                  }

                  *(v95 + 16) = v98 + 1;
                  sub_1D8918058(v126, v95 + v124 + v98 * v94, type metadata accessor for CVBundle);
                  v12 = v125;
                }

                else
                {
                  sub_1D89388D8(v12, type metadata accessor for CVBundle);
                }

                v93 += v94;
                --v92;
              }

              while (v92);
            }

            else
            {
              v95 = MEMORY[0x1E69E7CC0];
            }

            v99 = *(v95 + 16);

            v100 = v117;
            *(v117 + 14) = v99;

            *(v100 + 22) = 2048;
            v101 = *(v123 + 16);
            sub_1D8943A60(&v182);
            *(v100 + 24) = v101;
            sub_1D8943A60(&v182);
            *(v100 + 32) = 2080;
            sub_1D87C4938();
            v102 = sub_1D8B15740();
            v104 = v103;

            v105 = sub_1D89AC714(v102, v104, v134);

            *(v100 + 34) = v105;
            *(v100 + 42) = 2048;
            *(v100 + 44) = v79;
            *(v100 + 52) = 2080;
            v136 = 0;
            *&v137 = 0xE000000000000000;
            sub_1D8B16020();
            if (v122)
            {
              v106 = 0x296C6C6974532820;
            }

            else
            {
              v106 = 0;
            }

            if (v122)
            {
              v107 = 0xE800000000000000;
            }

            else
            {
              v107 = 0xE000000000000000;
            }

            MEMORY[0x1DA71EFA0](v106, v107);

            v108 = sub_1D89AC714(v136, v137, v134);

            *(v100 + 54) = v108;
            v109 = v118;
            _os_log_impl(&dword_1D8783000, v118, v116, "BundleManager.Output produced: %ld bundles (%ld fully refined), %ld total tracks by type: %s, %ld detection requests @ t=%s", v100, 0x3Eu);
            v110 = v115;
            swift_arrayDestroy();
            MEMORY[0x1DA721330](v110, -1, -1);
            MEMORY[0x1DA721330](v100, -1, -1);
          }

          else
          {
            sub_1D8943A60(&v182);
            sub_1D8943A60(&v182);

            swift_bridgeObjectRelease_n();
          }

          sub_1D8AF5F70(&v165);
          goto LABEL_90;
        }
      }

      while (1)
      {
        v84 = v78 + 1;
        if (__OFADD__(v78, 1))
        {
          break;
        }

        if (v84 >= v83)
        {
          goto LABEL_69;
        }

        v82 = *(v46 + 64 + 8 * v84);
        ++v78;
        if (v82)
        {
          v78 = v84;
          goto LABEL_66;
        }
      }

LABEL_97:
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_35:
  sub_1D8943B30(&v165, v143);
  v18 = sub_1D8B151C0();
  LOBYTE(v19) = sub_1D8B16200();
  sub_1D88C39F8(&v165);
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v136 = v21;
    *v20 = 136315138;
    v49 = BYTE8(v168);
    v50 = 0xE000000000000000;
    *&v143[0] = 0;
    *(&v143[0] + 1) = 0xE000000000000000;
    sub_1D8B16020();
    if (v49)
    {
      v51 = 0x296C6C6974532820;
    }

    else
    {
      v51 = 0;
    }

    if (v49)
    {
      v50 = 0xE800000000000000;
    }

    MEMORY[0x1DA71EFA0](v51, v50);

    sub_1D88C39F8(&v165);
    v52 = sub_1D89AC714(*&v143[0], *(&v143[0] + 1), &v136);

    *(v20 + 4) = v52;
    v53 = "Squelched an unneeded update @ t=%s";
    goto LABEL_94;
  }

LABEL_90:
  sub_1D88C39F8(&v165);
}

uint64_t sub_1D8924580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for BundleManager.Configuration(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  if (!a1)
  {
    return sub_1D8917FF0(v4, a3, type metadata accessor for BundleManager.Configuration);
  }

  sub_1D8917FF0(v4, &v33 - v12, type metadata accessor for BundleManager.Configuration);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  if (ConfigStorage.isVisualLookUpEagerModeEnabled.getter(ObjectType, a2, v15))
  {
    v16 = *(v8 + 44);
    if (*(v4 + v16) > 1u)
    {
      v33 = a3;
LABEL_10:
      v18 = sub_1D8B16BA0();

      if ((v18 & 1) == 0)
      {
        if (*(v4 + v16) <= 1u && !*(v4 + v16))
        {
          swift_unknownObjectRelease();

LABEL_32:
          a3 = v33;
          return sub_1D8918058(v13, a3, type metadata accessor for BundleManager.Configuration);
        }

        v19 = sub_1D8B16BA0();

        if ((v19 & 1) == 0)
        {
          if (qword_1EE0E44F0 != -1)
          {
            swift_once();
          }

          v20 = sub_1D8B151E0();
          __swift_project_value_buffer(v20, qword_1EE0E44F8);
          sub_1D8917FF0(v4, v11, type metadata accessor for BundleManager.Configuration);
          v21 = sub_1D8B151C0();
          v22 = sub_1D8B161F0();
          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            v24 = swift_slowAlloc();
            *v23 = 136315138;
            v25 = v11[*(v8 + 44)];
            v26 = 0x7265676145;
            v34 = v24;
            v27 = 0xE500000000000000;
            v28 = 0xE900000000000064;
            if (v25 != 2)
            {
              v28 = 0xEF29776172282064;
            }

            if (v25)
            {
              v26 = 0x4520796B63697453;
              v27 = 0xEC00000072656761;
            }

            if (v25 <= 1)
            {
              v29 = v26;
            }

            else
            {
              v29 = 0x6E616D6544206E4FLL;
            }

            if (v25 <= 1)
            {
              v30 = v27;
            }

            else
            {
              v30 = v28;
            }

            v31 = v24;
            sub_1D89388D8(v11, type metadata accessor for BundleManager.Configuration);
            v32 = sub_1D89AC714(v29, v30, &v34);

            *(v23 + 4) = v32;
            _os_log_impl(&dword_1D8783000, v21, v22, "Overriding VisualLookUp mode to .eagerSticky (from %s) based on storage", v23, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v31);
            MEMORY[0x1DA721330](v31, -1, -1);
            MEMORY[0x1DA721330](v23, -1, -1);
            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
            sub_1D89388D8(v11, type metadata accessor for BundleManager.Configuration);
          }

          v13[*(v8 + 44)] = 1;
          goto LABEL_32;
        }
      }

      swift_unknownObjectRelease();
      goto LABEL_32;
    }

    if (!*(v4 + v16))
    {
      v33 = a3;
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return sub_1D8918058(v13, a3, type metadata accessor for BundleManager.Configuration);
}

uint64_t BundleManager.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E0, &unk_1D8B26010);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - v4;
  v6 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_classificationRequestsStreamContinuation;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  sub_1D8B15EF0();
  v7 = *(v3 + 8);
  v7(v5, v2);
  if (*(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_classificationMergerTask))
  {

    sub_1D8B15F80();
  }

  if (*(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_classificationWorkerTask))
  {

    sub_1D8B15F80();
  }

  if (*(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_trackReadingTask))
  {

    sub_1D8B15F80();
  }

  sub_1D89388D8(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_configuration, type metadata accessor for BundleManager.Configuration);

  v8 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_outputStreamBufferingPolicy;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64800, &unk_1D8B2EBC0);
  (*(*(v9 - 8) + 8))(v1 + v8, v9);

  sub_1D8940088(*(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState), *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 8), *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 16), *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 24), *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 32), *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 40), *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 48), *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 56), *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 64), *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 72), *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 80), *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 88));
  v10 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_logger;
  v11 = sub_1D8B151E0();
  (*(*(v11 - 8) + 8))(v1 + v10, v11);

  sub_1D885E5A0(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager__bundleClassificationRunner);

  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_stillRankingAlgorithm));
  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_streamingRankingAlgorithm));
  v12 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_classificationRequestsStream;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E8, &qword_1D8B2AC10);
  (*(*(v13 - 8) + 8))(v1 + v12, v13);
  v7((v1 + v6), v2);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t BundleManager.__deallocating_deinit()
{
  BundleManager.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

void sub_1D8924E48(uint64_t a1@<X0>, unint64_t *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v240.size.width = a5;
  v240.size.height = a6;
  v240.origin.x = a3;
  v240.origin.y = a4;
  v223 = a2;
  v8 = type metadata accessor for CVTrackSnapshot(0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v218 = &v217 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v226 = &v217 - v11;
  v233 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v233);
  v13 = &v217 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D8B13240();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v245 = &v217 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v217 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v250 = &v217 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980, &qword_1D8B231C0);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v217 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v222 = &v217 - v26;
  v224 = type metadata accessor for CVBundle(0);
  v239 = *(v224 - 8);
  v27 = MEMORY[0x1EEE9AC00](v224);
  v217 = &v217 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v238 = &v217 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v219 = &v217 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v227 = &v217 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v228 = &v217 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v217 - v37;
  v220 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_bundles;
  v221 = v6;
  v39 = *(v6 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_bundles);
  v40 = *(v39 + 16);
  v241 = (v6 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState);
  v235 = v39;

  v41 = MEMORY[0x1E69E7CC0];
  v225 = v15;
  v234 = v25;
  v232 = v40;
  if (!v40)
  {
LABEL_57:

    v93 = *(v41 + 16);
    if (!v93)
    {

      v95 = 1;
      v94 = v222;
LABEL_61:
      v96 = v239;
      v97 = v224;
      (*(v239 + 56))(v94, v95, 1, v224);
      sub_1D87A0E38(v94, v25, &qword_1ECA67980, &qword_1D8B231C0);
      if ((*(v96 + 48))(v25, 1, v97) == 1)
      {
        sub_1D87A14E4(v25, &qword_1ECA67980, &qword_1D8B231C0);
      }

      else
      {
        v98 = v219;
        v99 = sub_1D8918058(v25, v219, type metadata accessor for CVBundle);
        v100 = v241[3];
        v280 = v241[2];
        v281 = v100;
        v101 = v241[5];
        v282 = v241[4];
        v283 = v101;
        v102 = v241[1];
        v278 = *v241;
        v279 = v102;
        if (v101)
        {
          v103 = *(v221 + v220);
          v104 = v241[3];
          v268 = v241[2];
          v269 = v104;
          v270 = v241[4];
          v105 = v241[1];
          v266 = *v241;
          v267 = v105;
          MEMORY[0x1EEE9AC00](v99);
          *(&v217 - 4) = &v266;
          *(&v217 - 3) = v106;
          *(&v217 - 2) = v107;
          swift_bridgeObjectRetain_n();
          sub_1D87A0E38(&v278, &v272, &qword_1ECA64858, &unk_1D8B2ABF0);
          sub_1D8927E98(MEMORY[0x1E69E7CC8], sub_1D894478C, (&v217 - 6), v103, type metadata accessor for CVBundle);
          v109 = v108;

          sub_1D87A14E4(&v278, &qword_1ECA64858, &unk_1D8B2ABF0);
          sub_1D87A14E4(v94, &qword_1ECA67980, &qword_1D8B231C0);
          v274 = v268;
          v275 = v269;
          v276 = v270;
          v272 = v266;
          v273 = v267;
          v110 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECA64880, &qword_1D8B25770);
          v111 = v223 + *(v110 + 48);
          sub_1D8918058(v98, v223, type metadata accessor for CVBundle);
          *v111 = v103;
          v112 = v272;
          *(v111 + 24) = v273;
          v113 = v275;
          *(v111 + 40) = v274;
          *(v111 + 56) = v113;
          *(v111 + 72) = v276;
          *(v111 + 8) = v112;
          *(v111 + 11) = v109;
          type metadata accessor for BundleManager.SelectionResult(0);
LABEL_151:
          swift_storeEnumTagMultiPayload();
          return;
        }

        sub_1D89388D8(v98, type metadata accessor for CVBundle);
      }

      v172 = v241[3];
      v280 = v241[2];
      v281 = v172;
      v173 = v241[5];
      v282 = v241[4];
      v283 = v173;
      v174 = v241[1];
      v278 = *v241;
      v279 = v174;
      if (v173)
      {
        v250 = v280;
        v248 = v279;
        v175 = v241[3];
        v268 = v241[2];
        v269 = v175;
        v176 = v241[5];
        v270 = v241[4];
        v271 = v176;
        v177 = v241[1];
        v266 = *v241;
        v267 = v177;
        v178 = type metadata accessor for SyntheticDetectionResult(0);
        v179 = swift_allocBox();
        v181 = v180;
        sub_1D88C7A20(&v266, &v251);
        v182 = v245;
        sub_1D8B13230();
        x = v240.origin.x;
        y = v240.origin.y;
        width = v240.size.width;
        height = v240.size.height;
        MinX = CGRectGetMinX(v240);
        v301.origin.x = x;
        v301.origin.y = y;
        v301.size.width = width;
        v301.size.height = height;
        MinY = CGRectGetMinY(v301);
        v302.origin.x = x;
        v302.origin.y = y;
        v302.size.width = width;
        v302.size.height = height;
        v244 = COERCE_CHAR_(CGRectGetMaxX(v302));
        v303.origin.x = x;
        v303.origin.y = y;
        v303.size.width = width;
        v303.size.height = height;
        v187 = CGRectGetMinY(v303);
        v304.origin.x = x;
        v304.origin.y = y;
        v304.size.width = width;
        v304.size.height = height;
        v188 = CGRectGetMinX(v304);
        v305.origin.x = x;
        v305.origin.y = y;
        v305.size.width = width;
        v305.size.height = height;
        MaxY = CGRectGetMaxY(v305);
        v306.origin.x = x;
        v306.origin.y = y;
        v306.size.width = width;
        v306.size.height = height;
        MaxX = CGRectGetMaxX(v306);
        v307.origin.x = x;
        v307.origin.y = y;
        v307.size.width = width;
        v307.size.height = height;
        v191 = CGRectGetMaxY(v307);
        sub_1D87A14E4(&v278, &qword_1ECA64858, &unk_1D8B2ABF0);
        (*(v225 + 32))(v181, v182, v14);
        v192 = (v181 + v178[5]);
        v193 = MinY;
        *v192 = MinX;
        v192[1] = v193;
        *(v192 + 2) = v244;
        v192[3] = v187;
        v192[4] = v188;
        v192[5] = MaxY;
        v192[6] = MaxX;
        v192[7] = v191;
        *(v181 + v178[6]) = 1;
        *(v181 + v178[7]) = v248;
        *(v181 + v178[8]) = v250;
        *(v181 + v178[9]) = 0xF000000000000007;
        *&v251 = v179 | 0xB000000000000000;
        LOBYTE(v284) = 2;
        v194 = v218;
        v195 = sub_1D8AC0D00(&v251, &v284, v218);
        v196 = v241[3];
        v274 = v241[2];
        v275 = v196;
        v197 = v241[5];
        v276 = v241[4];
        v277 = v197;
        v198 = v241[1];
        v272 = *v241;
        v273 = v198;
        if (v197)
        {
          v199 = *(v221 + v220);
          v200 = v241[3];
          v286 = v241[2];
          v287 = v200;
          v288 = v241[4];
          v201 = v241[1];
          v284 = *v241;
          v285 = v201;
          MEMORY[0x1EEE9AC00](v195);
          *(&v217 - 4) = &v284;
          *(&v217 - 3) = v202;
          *(&v217 - 2) = v203;
          swift_bridgeObjectRetain_n();
          sub_1D87A0E38(&v272, &v251, &qword_1ECA64858, &unk_1D8B2ABF0);
          sub_1D8927E98(MEMORY[0x1E69E7CC8], sub_1D894478C, (&v217 - 6), v199, type metadata accessor for CVBundle);
          v205 = v204;
          sub_1D87A14E4(&v272, &qword_1ECA64858, &unk_1D8B2ABF0);

          v253 = v286;
          v254 = v287;
          v255 = v288;
          v251 = v284;
          v252 = v285;
          v206 = v217;
          sub_1D8917FF0(v194, v217, type metadata accessor for CVTrackSnapshot);
          swift_storeEnumTagMultiPayload();
          v207 = MEMORY[0x1E69E7CC0];
          v208 = sub_1D893C688(MEMORY[0x1E69E7CC0]);
          sub_1D89388D8(v194, type metadata accessor for CVTrackSnapshot);
          sub_1D87A14E4(v94, &qword_1ECA67980, &qword_1D8B231C0);
          v209 = v224;
          *(v206 + *(v224 + 20)) = v207;
          *(v206 + *(v209 + 24)) = v207;
          *(v206 + *(v209 + 28)) = v208;
          v210 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECA64880, &qword_1D8B25770);
          v211 = v223 + *(v210 + 48);
          sub_1D8918058(v206, v223, type metadata accessor for CVBundle);
          *v211 = v199;
          v212 = v251;
          *(v211 + 24) = v252;
          v213 = v254;
          *(v211 + 40) = v253;
          *(v211 + 56) = v213;
          *(v211 + 72) = v255;
          *(v211 + 8) = v212;
          *(v211 + 11) = v205;
          type metadata accessor for BundleManager.SelectionResult(0);
          goto LABEL_151;
        }

        v214 = 0x80000001D8B44790;
        sub_1D89388D8(v194, type metadata accessor for CVTrackSnapshot);
        sub_1D87A14E4(v94, &qword_1ECA67980, &qword_1D8B231C0);
        v215 = 0xD00000000000002FLL;
      }

      else
      {
        v214 = 0x80000001D8B44750;
        sub_1D87A14E4(v94, &qword_1ECA67980, &qword_1D8B231C0);
        v215 = 0xD00000000000003DLL;
      }

      v216 = v223;
      *v223 = v215;
      v216[1] = v214;
      type metadata accessor for BundleManager.SelectionResult(0);
      goto LABEL_151;
    }

    v248 = (v41 + ((*(v239 + 80) + 32) & ~*(v239 + 80)));
    sub_1D8917FF0(v248, v228, type metadata accessor for CVBundle);
    if (v93 == 1)
    {
LABEL_59:

      v94 = v222;
      sub_1D8918058(v228, v222, type metadata accessor for CVBundle);
      v95 = 0;
      v25 = v234;
      goto LABEL_61;
    }

    v114 = 1;
    while (1)
    {
      if (v114 >= *(v41 + 16))
      {
        goto LABEL_153;
      }

      v116 = v41;
      sub_1D8917FF0(v248 + *(v239 + 72) * v114, v238, type metadata accessor for CVBundle);
      CVBundle.latestEstimate.getter(&v265);
      *&v272 = v265;
      CVDetection.detection.getter(&v278);
      v117 = *(&v279 + 1);
      v118 = v280;
      __swift_project_boxed_opaque_existential_1(&v278, *(&v279 + 1));
      (*(v118 + 64))(&v284, v117, v118);
      __swift_destroy_boxed_opaque_existential_1(&v278);

      v119 = *&v284;
      if (*&v285 >= *&v284)
      {
        v120 = *&v284;
      }

      else
      {
        v120 = *&v285;
      }

      if (*&v286 < v120)
      {
        v120 = *&v286;
      }

      if (*&v287 >= v120)
      {
        v121 = v120;
      }

      else
      {
        v121 = *&v287;
      }

      if (*(&v285 + 1) >= *(&v284 + 1))
      {
        v122 = *(&v284 + 1);
      }

      else
      {
        v122 = *(&v285 + 1);
      }

      if (*(&v286 + 1) < v122)
      {
        v122 = *(&v286 + 1);
      }

      if (*(&v287 + 1) >= v122)
      {
        v123 = v122;
      }

      else
      {
        v123 = *(&v287 + 1);
      }

      if (*&v284 <= *&v285)
      {
        v119 = *&v285;
      }

      if (v119 <= *&v286)
      {
        v119 = *&v286;
      }

      if (v119 > *&v287)
      {
        v124 = v119;
      }

      else
      {
        v124 = *&v287;
      }

      if (*(&v284 + 1) > *(&v285 + 1))
      {
        v125 = *(&v284 + 1);
      }

      else
      {
        v125 = *(&v285 + 1);
      }

      v126 = v241[5];
      v282 = v241[4];
      v283 = v126;
      v127 = v241[3];
      if (v125 <= *(&v286 + 1))
      {
        v125 = *(&v286 + 1);
      }

      v280 = v241[2];
      v281 = v127;
      if (v125 > *(&v287 + 1))
      {
        v128 = v125;
      }

      else
      {
        v128 = *(&v287 + 1);
      }

      v129 = v241[1];
      v278 = *v241;
      v279 = v129;
      v130 = *(&v281 + 1);
      v131 = *&v281;
      v132 = *(&v282 + 1);
      v133 = *&v282;
      v134 = v241[1];
      v272 = *v241;
      v273 = v134;
      v274 = v241[2];
      v275 = v281;
      v276 = v282;
      if (v283)
      {
        v277 = v283;
        sub_1D87A0E38(&v278, &v266, &qword_1ECA64858, &unk_1D8B2ABF0);
        sub_1D87A14E4(&v272, &qword_1ECA64858, &unk_1D8B2ABF0);
      }

      else
      {
        v277 = __PAIR128__(*(&v283 + 1), 0);
        sub_1D87A0E38(&v278, &v266, &qword_1ECA64858, &unk_1D8B2ABF0);
        sub_1D87A14E4(&v272, &qword_1ECA64858, &unk_1D8B2ABF0);
        v133 = 1.0;
        v131 = 0.0;
        v130 = 0.0;
        v132 = 1.0;
      }

      v293.size.width = v124 - v121;
      v293.size.height = v128 - v123;
      v293.origin.x = v121;
      v293.origin.y = v123;
      v311.origin.x = v131;
      v311.origin.y = v130;
      v311.size.width = v133;
      v311.size.height = v132;
      v294 = CGRectIntersection(v293, v311);
      v135 = v294.origin.x;
      v136 = v294.origin.y;
      v137 = v294.size.width;
      v138 = v294.size.height;
      v312.origin.x = v131;
      v312.origin.y = v130;
      v312.size.width = v133;
      v312.size.height = v132;
      v295 = CGRectIntersection(v240, v312);
      v313.origin.x = v295.origin.x;
      v313.origin.y = v295.origin.y;
      v139 = v295.size.width;
      v140 = v295.size.height;
      v295.origin.x = v135;
      v295.origin.y = v136;
      v295.size.width = v137;
      v295.size.height = v138;
      v313.size.width = v139;
      v313.size.height = v140;
      v296 = CGRectIntersection(v295, v313);
      v141 = v296.size.width;
      v142 = v296.size.height;
      IsNull = CGRectIsNull(v296);
      v144 = 0.0;
      if (!IsNull)
      {
        v144 = v141 * v142 / (v137 * v138 + v139 * v140 - v141 * v142);
      }

      *&v250 = v144;
      CVBundle.latestEstimate.getter(&v264);
      *&v266 = v264;
      CVDetection.detection.getter(&v272);
      v145 = *(&v273 + 1);
      v146 = v274;
      __swift_project_boxed_opaque_existential_1(&v272, *(&v273 + 1));
      (*(v146 + 64))(&v256, v145, v146);
      __swift_destroy_boxed_opaque_existential_1(&v272);

      v147 = v256;
      if (v258 >= v256)
      {
        v148 = v256;
      }

      else
      {
        v148 = v258;
      }

      if (v260 < v148)
      {
        v148 = v260;
      }

      if (v262 >= v148)
      {
        v149 = v148;
      }

      else
      {
        v149 = v262;
      }

      if (v259 >= v257)
      {
        v150 = v257;
      }

      else
      {
        v150 = v259;
      }

      if (v261 < v150)
      {
        v150 = v261;
      }

      if (v263 >= v150)
      {
        v151 = v150;
      }

      else
      {
        v151 = v263;
      }

      if (v256 <= v258)
      {
        v147 = v258;
      }

      if (v147 <= v260)
      {
        v147 = v260;
      }

      if (v147 > v262)
      {
        v152 = v147;
      }

      else
      {
        v152 = v262;
      }

      if (v257 > v259)
      {
        v153 = v257;
      }

      else
      {
        v153 = v259;
      }

      v154 = v241[5];
      v276 = v241[4];
      v277 = v154;
      v155 = v241[3];
      if (v153 <= v261)
      {
        v153 = v261;
      }

      v274 = v241[2];
      v275 = v155;
      if (v153 > v263)
      {
        v156 = v153;
      }

      else
      {
        v156 = v263;
      }

      v157 = v241[1];
      v272 = *v241;
      v273 = v157;
      v158 = *(&v275 + 1);
      v159 = *&v275;
      v160 = *(&v276 + 1);
      v161 = *&v276;
      v162 = v241[1];
      v266 = *v241;
      v267 = v162;
      v268 = v241[2];
      v269 = v275;
      v270 = v276;
      if (v277)
      {
        v271 = v277;
        sub_1D87A0E38(&v272, &v251, &qword_1ECA64858, &unk_1D8B2ABF0);
        sub_1D87A14E4(&v266, &qword_1ECA64858, &unk_1D8B2ABF0);
      }

      else
      {
        v271 = __PAIR128__(*(&v277 + 1), 0);
        sub_1D87A0E38(&v272, &v251, &qword_1ECA64858, &unk_1D8B2ABF0);
        sub_1D87A14E4(&v266, &qword_1ECA64858, &unk_1D8B2ABF0);
        v161 = 1.0;
        v159 = 0.0;
        v158 = 0.0;
        v160 = 1.0;
      }

      v297.size.width = v152 - v149;
      v297.size.height = v156 - v151;
      v297.origin.x = v149;
      v297.origin.y = v151;
      v314.origin.x = v159;
      v314.origin.y = v158;
      v314.size.width = v161;
      v314.size.height = v160;
      v298 = CGRectIntersection(v297, v314);
      v163 = v298.origin.x;
      v164 = v298.origin.y;
      v165 = v298.size.width;
      v166 = v298.size.height;
      v315.origin.x = v159;
      v315.origin.y = v158;
      v315.size.width = v161;
      v315.size.height = v160;
      v299 = CGRectIntersection(v240, v315);
      v316.origin.x = v299.origin.x;
      v316.origin.y = v299.origin.y;
      v167 = v299.size.width;
      v168 = v299.size.height;
      v299.origin.x = v163;
      v299.origin.y = v164;
      v299.size.width = v165;
      v299.size.height = v166;
      v316.size.width = v167;
      v316.size.height = v168;
      v300 = CGRectIntersection(v299, v316);
      v169 = v300.size.width;
      v170 = v300.size.height;
      if (CGRectIsNull(v300))
      {
        if (*&v250 >= 0.0)
        {
          goto LABEL_143;
        }
      }

      else
      {
        v171 = v169 * v170 / (v165 * v166 + v167 * v168 - v169 * v170);
        if (*&v250 >= v171)
        {
LABEL_143:
          sub_1D89388D8(v238, type metadata accessor for CVBundle);
          goto LABEL_67;
        }
      }

      v115 = v228;
      sub_1D89388D8(v228, type metadata accessor for CVBundle);
      sub_1D8918058(v238, v115, type metadata accessor for CVBundle);
LABEL_67:
      v41 = v116;
      if (v93 == ++v114)
      {
        goto LABEL_59;
      }
    }
  }

  v42 = 0;
  v229 = (v15 + 32);
  v230 = v20;
  *&MinY = a1 + 56;
  *&MinX = v15 + 16;
  v248 = (v15 + 8);
  v249 = v14;
  v231 = v13;
  v43 = v235;
  v244 = v38;
  while (v42 < *(v43 + 16))
  {
    v242 = v42;
    v243 = v41;
    v237 = (*(v239 + 80) + 32) & ~*(v239 + 80);
    v236 = *(v239 + 72);
    sub_1D8917FF0(v43 + v237 + v236 * v42, v38, type metadata accessor for CVBundle);
    sub_1D8917FF0(v38, v13, type metadata accessor for CVBundle.BundleType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v45 = v229;
    if (EnumCaseMultiPayload == 1)
    {
      v46 = *v229;
      (*v229)(v20, v13, v14);
    }

    else
    {
      v47 = v226;
      sub_1D8918058(v13, v226, type metadata accessor for CVTrackSnapshot);
      (**&MinX)(v20, v47, v14);
      sub_1D89388D8(v47, type metadata accessor for CVTrackSnapshot);
      v46 = *v45;
    }

    v46(v250, v20, v14);
    if (*(a1 + 16) && (sub_1D893FD6C(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v48 = sub_1D8B15790(), v49 = -1 << *(a1 + 32), v50 = v48 & ~v49, ((*(*&MinY + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) != 0))
    {
      v51 = ~v49;
      v52 = *(v225 + 72);
      v53 = *(v225 + 16);
      while (1)
      {
        v54 = a1;
        v55 = *(a1 + 48) + v52 * v50;
        v56 = v245;
        v57 = v249;
        v53(v245, v55, v249);
        sub_1D893FD6C(&qword_1EE0E9898, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v58 = sub_1D8B158C0();
        v59 = *v248;
        (*v248)(v56, v57);
        if (v58)
        {
          break;
        }

        v50 = (v50 + 1) & v51;
        a1 = v54;
        if (((*(*&MinY + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v92 = v249;
      v59(v250, v249);
      v38 = v244;
      sub_1D89388D8(v244, type metadata accessor for CVBundle);
      v41 = v243;
      a1 = v54;
      v14 = v92;
      v20 = v230;
      v13 = v231;
      v25 = v234;
      v43 = v235;
    }

    else
    {
LABEL_14:
      v14 = v249;
      (*v248)(v250, v249);
      CVBundle.latestEstimate.getter(&v256);
      *&v272 = v256;
      CVDetection.detection.getter(&v278);
      v60 = *(&v279 + 1);
      v61 = v280;
      __swift_project_boxed_opaque_existential_1(&v278, *(&v279 + 1));
      (*(v61 + 64))(&v251, v60, v61);
      __swift_destroy_boxed_opaque_existential_1(&v278);

      v62 = *&v251;
      if (*&v252 >= *&v251)
      {
        v63 = *&v251;
      }

      else
      {
        v63 = *&v252;
      }

      if (*&v253 < v63)
      {
        v63 = *&v253;
      }

      if (*&v254 >= v63)
      {
        v64 = v63;
      }

      else
      {
        v64 = *&v254;
      }

      if (*(&v252 + 1) >= *(&v251 + 1))
      {
        v65 = *(&v251 + 1);
      }

      else
      {
        v65 = *(&v252 + 1);
      }

      if (*(&v253 + 1) < v65)
      {
        v65 = *(&v253 + 1);
      }

      if (*(&v254 + 1) >= v65)
      {
        v66 = v65;
      }

      else
      {
        v66 = *(&v254 + 1);
      }

      if (*&v251 <= *&v252)
      {
        v62 = *&v252;
      }

      if (v62 <= *&v253)
      {
        v62 = *&v253;
      }

      if (v62 > *&v254)
      {
        v67 = v62;
      }

      else
      {
        v67 = *&v254;
      }

      if (*(&v251 + 1) > *(&v252 + 1))
      {
        v68 = *(&v251 + 1);
      }

      else
      {
        v68 = *(&v252 + 1);
      }

      v69 = v241[5];
      v282 = v241[4];
      v283 = v69;
      v70 = v241[3];
      if (v68 <= *(&v253 + 1))
      {
        v68 = *(&v253 + 1);
      }

      v280 = v241[2];
      v281 = v70;
      if (v68 > *(&v254 + 1))
      {
        v71 = v68;
      }

      else
      {
        v71 = *(&v254 + 1);
      }

      v72 = v241[1];
      v278 = *v241;
      v279 = v72;
      v73 = *(&v281 + 1);
      v74 = *&v281;
      v75 = *(&v282 + 1);
      v76 = *&v282;
      v77 = v241[1];
      v272 = *v241;
      v273 = v77;
      v274 = v241[2];
      v275 = v281;
      v276 = v282;
      if (v283)
      {
        v277 = v283;
        sub_1D87A0E38(&v278, &v266, &qword_1ECA64858, &unk_1D8B2ABF0);
        sub_1D87A14E4(&v272, &qword_1ECA64858, &unk_1D8B2ABF0);
      }

      else
      {
        v277 = __PAIR128__(*(&v283 + 1), 0);
        sub_1D87A0E38(&v278, &v266, &qword_1ECA64858, &unk_1D8B2ABF0);
        sub_1D87A14E4(&v272, &qword_1ECA64858, &unk_1D8B2ABF0);
        v76 = 1.0;
        v74 = 0.0;
        v73 = 0.0;
        v75 = 1.0;
      }

      v25 = v234;
      v43 = v235;
      v41 = v243;
      v289.size.width = v67 - v64;
      v289.size.height = v71 - v66;
      v289.origin.x = v64;
      v289.origin.y = v66;
      v308.origin.x = v74;
      v308.origin.y = v73;
      v308.size.width = v76;
      v308.size.height = v75;
      v290 = CGRectIntersection(v289, v308);
      v78 = v290.origin.x;
      v79 = v290.origin.y;
      v80 = v290.size.width;
      v81 = v290.size.height;
      v309.origin.x = v74;
      v309.origin.y = v73;
      v309.size.width = v76;
      v309.size.height = v75;
      v291 = CGRectIntersection(v240, v309);
      v310.origin.x = v291.origin.x;
      v310.origin.y = v291.origin.y;
      v82 = v291.size.width;
      v83 = v291.size.height;
      v291.origin.x = v78;
      v291.origin.y = v79;
      v291.size.width = v80;
      v291.size.height = v81;
      v310.size.width = v82;
      v310.size.height = v83;
      v292 = CGRectIntersection(v291, v310);
      v84 = v292.size.width;
      v85 = v292.size.height;
      v86 = CGRectIsNull(v292);
      v87 = 0.0;
      v13 = v231;
      v38 = v244;
      if (!v86)
      {
        v87 = v84 * v85 / (v80 * v81 + v82 * v83 - v84 * v85);
      }

      v88 = sub_1D8940278();
      v20 = v230;
      if (v88 > v87)
      {
        sub_1D89388D8(v38, type metadata accessor for CVBundle);
      }

      else
      {
        sub_1D8918058(v38, v227, type metadata accessor for CVBundle);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v284 = v41;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D87F4074(0, *(v41 + 16) + 1, 1);
          v41 = v284;
        }

        v91 = *(v41 + 16);
        v90 = *(v41 + 24);
        if (v91 >= v90 >> 1)
        {
          sub_1D87F4074((v90 > 1), v91 + 1, 1);
          v41 = v284;
        }

        *(v41 + 16) = v91 + 1;
        sub_1D8918058(v227, v41 + v237 + v91 * v236, type metadata accessor for CVBundle);
        v38 = v244;
      }
    }

    v42 = v242 + 1;
    if (v242 + 1 == v232)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_153:
  __break(1u);
}

void sub_1D892668C(uint64_t a1)
{
  v3 = sub_1D8B13240();
  v77 = *(v3 - 8);
  v78 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v75 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v76 = &v67 - v6;
  v7 = type metadata accessor for CVBundle(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CVBundle.BundleType(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v67 - v14;
  v16 = type metadata accessor for CVTrackSnapshot(0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v79 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v80 = &v67 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v67 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v67 - v24;
  sub_1D8917FF0(a1, v15, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = type metadata accessor for CVBundle.BundleType;
    v27 = v15;
LABEL_13:
    sub_1D89388D8(v27, v26);
    v41 = sub_1D8B151C0();
    v42 = sub_1D8B16210();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1D8783000, v41, v42, "Cannot insert of wrong type", v43, 2u);
      MEMORY[0x1DA721330](v43, -1, -1);
    }

    return;
  }

  sub_1D8918058(v15, v25, type metadata accessor for CVTrackSnapshot);
  if (*&v25[*(v16 + 24)] >> 60 != 11)
  {
    goto LABEL_12;
  }

  v28 = type metadata accessor for SyntheticDetectionResult(0);
  if ((*(swift_projectBox() + *(v28 + 24)) & 1) == 0)
  {
    v29 = sub_1D8B16BA0();

    if (v29)
    {
      goto LABEL_7;
    }

LABEL_12:
    v26 = type metadata accessor for CVTrackSnapshot;
    v27 = v25;
    goto LABEL_13;
  }

LABEL_7:
  v30 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_otherSyntheticTracks;
  swift_beginAccess();
  v31 = *(*(v1 + v30) + 16);
  v74 = v1;
  if (v31)
  {
    swift_isUniquelyReferenced_nonNull_native();
    *&v84[0] = *(v1 + v30);
    *(v1 + v30) = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B50, &qword_1D8B2BEB8);
    sub_1D8B165B0();
    *(v74 + v30) = *&v84[0];
  }

  swift_endAccess();
  v32 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_logger;
  sub_1D8917FF0(a1, v9, type metadata accessor for CVBundle);
  sub_1D8917FF0(v25, v23, type metadata accessor for CVTrackSnapshot);
  v33 = sub_1D8B151C0();
  v34 = sub_1D8B16200();
  if (os_log_type_enabled(v33, v34))
  {
    v69 = v34;
    v71 = v33;
    v72 = v32;
    v73 = v30;
    v35 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *&v85 = v68;
    v70 = v35;
    *v35 = 136315394;
    sub_1D8917FF0(v9, v13, type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = v77;
      v37 = *(v77 + 32);
      v38 = v75;
      v39 = v13;
      v40 = v78;
      v37(v75, v39, v78);
    }

    else
    {
      v44 = v80;
      sub_1D8918058(v13, v80, type metadata accessor for CVTrackSnapshot);
      v36 = v77;
      v40 = v78;
      v38 = v75;
      (*(v77 + 16))(v75, v44, v78);
      sub_1D89388D8(v44, type metadata accessor for CVTrackSnapshot);
      v37 = *(v36 + 32);
    }

    v45 = v76;
    v37(v76, v38, v40);
    sub_1D893FD6C(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v46 = sub_1D8B16B50();
    v48 = v47;
    (*(v36 + 8))(v45, v40);
    sub_1D89388D8(v9, type metadata accessor for CVBundle);
    v49 = sub_1D89AC714(v46, v48, &v85);

    v50 = v70;
    *(v70 + 1) = v49;
    *(v50 + 6) = 2080;
    v51 = sub_1D8B16B50();
    v53 = v52;
    sub_1D89388D8(v23, type metadata accessor for CVTrackSnapshot);
    v54 = sub_1D89AC714(v51, v53, &v85);

    *(v50 + 14) = v54;
    v55 = v71;
    _os_log_impl(&dword_1D8783000, v71, v69, "insertNewSynthetic: Adding synthetic bundle %s with track %s", v50, 0x16u);
    v56 = v68;
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v56, -1, -1);
    MEMORY[0x1DA721330](v50, -1, -1);
  }

  else
  {

    sub_1D89388D8(v23, type metadata accessor for CVTrackSnapshot);
    sub_1D89388D8(v9, type metadata accessor for CVBundle);
  }

  v57 = *(v74 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 48);
  v87 = *(v74 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 32);
  v88 = v57;
  v58 = *(v74 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 80);
  v89 = *(v74 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 64);
  v90 = v58;
  v59 = *(v74 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 16);
  v85 = *(v74 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState);
  v86 = v59;
  v93 = v87;
  v94 = v57;
  v95 = v89;
  v91 = v85;
  v92 = v59;
  v60 = v58;
  if (v58)
  {
    v61 = *(&v90 + 1);
    v62 = v79;
    sub_1D8917FF0(v25, v79, type metadata accessor for CVTrackSnapshot);
    swift_beginAccess();
    v84[2] = v87;
    v84[3] = v88;
    v84[4] = v89;
    v84[5] = v90;
    v84[0] = v85;
    v84[1] = v86;
    sub_1D88C7A20(v84, v81);
    v63 = v80;
    sub_1D87FD030(v80, v62);
    sub_1D89388D8(v63, type metadata accessor for CVTrackSnapshot);
    swift_endAccess();
    v81[2] = v93;
    v81[3] = v94;
    v81[4] = v95;
    v81[0] = v91;
    v81[1] = v92;
    v82 = v60;
    v83 = v61;
    sub_1D89293D8(v81);
    sub_1D89388D8(v25, type metadata accessor for CVTrackSnapshot);
    sub_1D87A14E4(&v85, &qword_1ECA64858, &unk_1D8B2ABF0);
  }

  else
  {
    v64 = sub_1D8B151C0();
    v65 = sub_1D8B16210();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_1D8783000, v64, v65, "Failed to get latest frame metadata during insertNewSynthetic", v66, 2u);
      MEMORY[0x1DA721330](v66, -1, -1);
    }

    sub_1D89388D8(v25, type metadata accessor for CVTrackSnapshot);
  }
}

uint64_t sub_1D8926FE4()
{
  v0 = sub_1D8B13240();
  __swift_allocate_value_buffer(v0, qword_1EE0ED758);
  v1 = __swift_project_value_buffer(v0, qword_1EE0ED758);
  if (qword_1EE0E3EB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ActionPin(0);
  v3 = __swift_project_value_buffer(v2, qword_1EE0E3EC0);
  v4 = *(*(v0 - 8) + 16);

  return v4(v1, v3, v0);
}

uint64_t sub_1D89270B0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DC0, &qword_1D8B25FE0);
  v70 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v72 = &v69 - v4;
  v82 = type metadata accessor for CVBundle(0);
  v81 = *(v82 - 8);
  v5 = MEMORY[0x1EEE9AC00](v82);
  v69 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v71 = &v69 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v69 - v9;
  v11 = type metadata accessor for CVTrackSnapshot(0);
  v76 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MinX = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  MinY = &v69 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v69 - v16;
  v99 = *a1;
  v18 = *(a1 + 2);
  v73 = *(a1 + 3);
  v19 = *(a1 + 4);
  v98 = *(a1 + 40);
  v97[0] = *(a1 + 41);
  *(v97 + 3) = *(a1 + 11);
  v20 = *(a1 + 6);
  v21 = *(a1 + 7);
  v23 = *(a1 + 8);
  v22 = *(a1 + 9);
  v24 = *(a1 + 10);
  v25 = *(v24 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    v27 = 0;
    v28 = v76;
    v78 = v11;
    v77 = v25;
    while (v27 < *(v24 + 16))
    {
      v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v30 = *(v28 + 72);
      sub_1D8917FF0(v24 + v29 + v30 * v27, v17, type metadata accessor for CVTrackSnapshot);
      if (*&v17[*(v11 + 24)] >> 60)
      {
        sub_1D89388D8(v17, type metadata accessor for CVTrackSnapshot);
      }

      else
      {
        sub_1D8918058(v17, MinY, type metadata accessor for CVTrackSnapshot);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v83 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D87F4628(0, *(v26 + 16) + 1, 1);
          v28 = v76;
          v26 = v83;
        }

        v33 = *(v26 + 16);
        v32 = *(v26 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_1D87F4628((v32 > 1), v33 + 1, 1);
          v28 = v76;
          v26 = v83;
        }

        *(v26 + 16) = v33 + 1;
        sub_1D8918058(MinY, v26 + v29 + v33 * v30, type metadata accessor for CVTrackSnapshot);
        v11 = v78;
        v25 = v77;
      }

      if (v25 == ++v27)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v28 = v76;
LABEL_13:
  v34 = *(v26 + 16);
  if (v34)
  {
    *&v83 = MEMORY[0x1E69E7CC0];
    sub_1D87F4074(0, v34, 0);
    v35 = v83;
    v36 = v26 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v37 = *(v28 + 72);
    do
    {
      v38 = MinX;
      sub_1D8917FF0(v36, MinX, type metadata accessor for CVTrackSnapshot);
      sub_1D8917FF0(v38, v10, type metadata accessor for CVTrackSnapshot);
      type metadata accessor for CVBundle.BundleType(0);
      swift_storeEnumTagMultiPayload();
      sub_1D89388D8(v38, type metadata accessor for CVTrackSnapshot);
      v39 = v82;
      v40 = MEMORY[0x1E69E7CC0];
      *&v10[*(v82 + 20)] = MEMORY[0x1E69E7CC0];
      *&v10[*(v39 + 24)] = v40;
      *&v10[*(v39 + 28)] = MEMORY[0x1E69E7CC8];
      *&v83 = v35;
      v42 = *(v35 + 16);
      v41 = *(v35 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1D87F4074((v41 > 1), v42 + 1, 1);
        v35 = v83;
      }

      *(v35 + 16) = v42 + 1;
      sub_1D8918058(v10, v35 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v42, type metadata accessor for CVBundle);
      v36 += v37;
      --v34;
    }

    while (v34);

    v43 = &OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_stillRankingAlgorithm;
    if (!v98)
    {
      v43 = &OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_streamingRankingAlgorithm;
    }

    sub_1D87C1470(v74 + *v43, v94);
    v44 = v95;
    v45 = v96;
    __swift_project_boxed_opaque_existential_1(v94, v95);
    v93 = v35;
    v83 = v99;
    v84 = v18;
    v85 = v73;
    v86 = v19;
    v87 = v98;
    *v88 = v97[0];
    *&v88[3] = *(v97 + 3);
    v89 = v20;
    v90 = v21;
    v91 = v23;
    v92 = v22;
    v46 = *(v45 + 24);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65758, &qword_1D8B2ABD0);
    v48 = sub_1D881CF20(&qword_1ECA65B48, &qword_1ECA65758, &qword_1D8B2ABD0, MEMORY[0x1E69E6340]);
    v49 = v46(&v93, &v83, v82, v47, &protocol witness table for CVBundle, v48, v44, v45);

    if (*(v49 + 16))
    {
      v50 = v72;
      sub_1D87A0E38(v49 + ((*(v70 + 80) + 32) & ~*(v70 + 80)), v72, &qword_1ECA63DC0, &qword_1D8B25FE0);

      v51 = v50;
      v52 = v69;
      sub_1D8918058(v51, v69, type metadata accessor for CVBundle);
      v53 = v52;
      v54 = v71;
      sub_1D8918058(v53, v71, type metadata accessor for CVBundle);
      CVBundle.latestEstimate.getter(&v83);
      sub_1D89388D8(v54, type metadata accessor for CVBundle);
      __swift_destroy_boxed_opaque_existential_1(v94);
      v27 = v83;
      goto LABEL_25;
    }

    __swift_destroy_boxed_opaque_existential_1(v94);
  }

  else
  {
  }

  v27 = 0xF000000000000007;
LABEL_25:
  v81 = v19;
  v82 = v18;
  v25 = type metadata accessor for SyntheticDetectionResult(0);
  v28 = swift_allocBox();
  v11 = v55;
  if (qword_1EE0E8648 != -1)
  {
LABEL_28:
    swift_once();
  }

  v56 = sub_1D8B13240();
  v57 = __swift_project_value_buffer(v56, qword_1EE0ED758);
  v100.origin.x = v20;
  v100.origin.y = v21;
  v100.size.width = v23;
  v100.size.height = v22;
  MinX = CGRectGetMinX(v100);
  v101.origin.x = v20;
  v101.origin.y = v21;
  v101.size.width = v23;
  v101.size.height = v22;
  MinY = CGRectGetMinY(v101);
  v102.origin.x = v20;
  v102.origin.y = v21;
  v102.size.width = v23;
  v102.size.height = v22;
  MaxX = CGRectGetMaxX(v102);
  v103.origin.x = v20;
  v103.origin.y = v21;
  v103.size.width = v23;
  v103.size.height = v22;
  v59 = CGRectGetMinY(v103);
  v104.origin.x = v20;
  v104.origin.y = v21;
  v104.size.width = v23;
  v104.size.height = v22;
  v60 = CGRectGetMinX(v104);
  v105.origin.x = v20;
  v105.origin.y = v21;
  v105.size.width = v23;
  v105.size.height = v22;
  MaxY = CGRectGetMaxY(v105);
  v106.origin.x = v20;
  v106.origin.y = v21;
  v106.size.width = v23;
  v106.size.height = v22;
  v62 = CGRectGetMaxX(v106);
  v63 = v20;
  v64 = v62;
  v107.origin.x = v63;
  v107.origin.y = v21;
  v107.size.width = v23;
  v107.size.height = v22;
  v65 = CGRectGetMaxY(v107);
  (*(*(v56 - 8) + 16))(v11, v57, v56);
  v66 = (v11 + v25[5]);
  v67 = MinY;
  *v66 = MinX;
  *(v66 + 1) = v67;
  v66[2] = MaxX;
  v66[3] = v59;
  v66[4] = v60;
  v66[5] = MaxY;
  v66[6] = v64;
  v66[7] = v65;
  *(v11 + v25[6]) = 0;
  *(v11 + v25[7]) = v82;
  *(v11 + v25[8]) = v81;
  *(v11 + v25[9]) = v27;
  *&v83 = v28 | 0xB000000000000000;
  LOBYTE(v94[0]) = 2;
  return sub_1D8AC0D00(&v83, v94, v75);
}

void sub_1D8927ABC(void *a1, uint64_t a2)
{
  CVBundle.latestEstimate.getter(&v38);
  v3 = sub_1D8921A48();

  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = *v5++;
      if (v7 == 3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1D87C9284(0, *(v6 + 2) + 1, 1, v6);
        }

        v9 = *(v6 + 2);
        v8 = *(v6 + 3);
        v10 = v9 + 1;
        if (v9 >= v8 >> 1)
        {
          v6 = sub_1D87C9284((v8 > 1), v9 + 1, 1, v6);
        }

        *(v6 + 2) = v10;
      }

      --v4;
    }

    while (v4);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v36 = *(v6 + 2);
  if (!v36)
  {
LABEL_35:

    return;
  }

  v11 = 0;
  while (v11 < *(v6 + 2))
  {
    v12 = *a1;
    if (*(*a1 + 16) && (v13 = sub_1D881C1D8(), (v14 & 1) != 0))
    {
      v15 = *(*(v12 + 56) + 8 * v13);
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA634D0, &qword_1D8B22DD0);
    v16 = *(type metadata accessor for CVBundle(0) - 8);
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D8B1AB90;
    sub_1D8917FF0(a2, v18 + v17, type metadata accessor for CVBundle);
    v19 = v15[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v21 = v15[3] >> 1, v21 <= v19))
    {
      v15 = sub_1D87C7E90(isUniquelyReferenced_nonNull_native, v19 + 1, 1, v15);
      v21 = v15[3] >> 1;
    }

    if (v21 <= v15[2])
    {
      goto LABEL_37;
    }

    swift_arrayInitWithCopy();

    ++v15[2];
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v38 = *a1;
    v23 = v38;
    v25 = sub_1D881C1D8();
    v26 = *(v23 + 16);
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_38;
    }

    v29 = v24;
    if (*(v23 + 24) >= v28)
    {
      if (v22)
      {
        v32 = v38;
        if (v24)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_1D896AFA0();
        v32 = v38;
        if (v29)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      sub_1D8974920(v28, v22);
      v30 = sub_1D881C1D8();
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_40;
      }

      v25 = v30;
      v32 = v38;
      if (v29)
      {
LABEL_13:
        *(*(v32 + 56) + 8 * v25) = v15;

        goto LABEL_14;
      }
    }

    *(v32 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    *(*(v32 + 56) + 8 * v25) = v15;
    v33 = *(v32 + 16);
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_39;
    }

    *(v32 + 16) = v35;
LABEL_14:
    ++v11;
    *a1 = v32;
    if (v36 == v11)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  sub_1D8B16C30();
  __break(1u);
}

void sub_1D8927E98(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = 0;
  v12 = a1;
  v10 = *(a4 + 16);
  while (v10 != v9)
  {
    v11 = *((a5)(0, a2, a3) - 8);
    a2(&v12, a4 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9++);
    if (v5)
    {

      return;
    }
  }
}

uint64_t sub_1D8927F8C(uint64_t a1, uint64_t a2)
{
  v159 = a2;
  v3 = type metadata accessor for CVBundle(0);
  v172 = *(v3 - 8);
  v173 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v165 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v157 = &v156 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v156 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v156 - v11;
  v171 = type metadata accessor for CVTrackSnapshot(0);
  v13 = MEMORY[0x1EEE9AC00](v171);
  v164 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v162 = &v156 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v158 = &v156 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v156 = &v156 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v156 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v156 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v170 = &v156 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v156 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = a1;
  v35 = &v156 - v34;
  v36 = *(v33 + 16);
  v160 = v33;
  v161 = v32;
  v174 = v36;
  if (v36)
  {
    v37 = 0;
    v38 = *(v32 + 72);
    v163 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v169 = v33 + v163;
    v166 = v31;
    v167 = MEMORY[0x1E69E7CC0];
    do
    {
      v39 = v169 + v38 * v37++;
      sub_1D8917FF0(v39, v35, type metadata accessor for CVTrackSnapshot);
      v40 = *(v171 + 24);
      v176 = *&v35[v40];
      v41 = sub_1D8921A48();
      v42 = *(v41 + 2);
      v43 = (v41 + 32);
      do
      {
        if (!v42)
        {

LABEL_4:
          sub_1D89388D8(v35, type metadata accessor for CVTrackSnapshot);
          goto LABEL_5;
        }

        v44 = *v43++;
        --v42;
      }

      while (v44 != 2);

      v176 = *&v35[v40];
      v45 = sub_1D8A5BE40();
      if (!v45)
      {
        goto LABEL_4;
      }

      v46 = *(v45 + 16);

      if (!v46)
      {
        goto LABEL_4;
      }

      sub_1D8918058(v35, v31, type metadata accessor for CVTrackSnapshot);
      v47 = v167;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v177 = v47;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D87F4628(0, *(v47 + 16) + 1, 1);
        v47 = v177;
      }

      v50 = *(v47 + 16);
      v49 = *(v47 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1D87F4628((v49 > 1), v50 + 1, 1);
        v47 = v177;
      }

      *(v47 + 16) = v50 + 1;
      v167 = v47;
      v51 = v47 + v163 + v50 * v38;
      v31 = v166;
      sub_1D8918058(v166, v51, type metadata accessor for CVTrackSnapshot);
LABEL_5:
      ;
    }

    while (v37 != v174);
  }

  else
  {
    v167 = MEMORY[0x1E69E7CC0];
  }

  v52 = *(v167 + 16);
  if (v52)
  {
    v166 = v26;
    v53 = v23;
    v177 = MEMORY[0x1E69E7CC0];
    v54 = v167;
    sub_1D87F4074(0, v52, 0);
    v55 = v177;
    v56 = v54 + ((*(v161 + 80) + 32) & ~*(v161 + 80));
    v57 = *(v161 + 72);
    do
    {
      v58 = v170;
      sub_1D8917FF0(v56, v170, type metadata accessor for CVTrackSnapshot);
      sub_1D8917FF0(v58, v12, type metadata accessor for CVTrackSnapshot);
      type metadata accessor for CVBundle.BundleType(0);
      swift_storeEnumTagMultiPayload();
      sub_1D89388D8(v58, type metadata accessor for CVTrackSnapshot);
      v59 = v173;
      v60 = MEMORY[0x1E69E7CC0];
      *&v12[*(v173 + 20)] = MEMORY[0x1E69E7CC0];
      *&v12[*(v59 + 24)] = v60;
      *&v12[*(v59 + 28)] = MEMORY[0x1E69E7CC8];
      v177 = v55;
      v62 = *(v55 + 16);
      v61 = *(v55 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1D87F4074((v61 > 1), v62 + 1, 1);
        v55 = v177;
      }

      *(v55 + 16) = v62 + 1;
      sub_1D8918058(v12, v55 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v62, type metadata accessor for CVBundle);
      v56 += v57;
      --v52;
    }

    while (v52);
    v169 = v55;

    v23 = v53;
    v26 = v166;
  }

  else
  {

    v169 = MEMORY[0x1E69E7CC0];
  }

  if (v174)
  {
    v63 = 0;
    v64 = (*(v161 + 80) + 32) & ~*(v161 + 80);
    v65 = *(v161 + 72);
    v66 = v160 + v64;
    v166 = MEMORY[0x1E69E7CC0];
    do
    {
      v67 = v66 + v65 * v63++;
      sub_1D8917FF0(v67, v26, type metadata accessor for CVTrackSnapshot);
      v68 = *(v171 + 24);
      v176 = *&v26[v68];
      v69 = sub_1D8921A48();
      v70 = *(v69 + 2);
      v71 = (v69 + 32);
      do
      {
        if (!v70)
        {

LABEL_27:
          sub_1D89388D8(v26, type metadata accessor for CVTrackSnapshot);
          goto LABEL_28;
        }

        v72 = *v71++;
        --v70;
      }

      while (v72 != 2);

      v176 = *&v26[v68];
      v73 = sub_1D8A5BE40();
      if (v73)
      {
        v74 = *(v73 + 16);

        if (v74)
        {
          goto LABEL_27;
        }
      }

      sub_1D8918058(v26, v23, type metadata accessor for CVTrackSnapshot);
      v75 = v166;
      v76 = swift_isUniquelyReferenced_nonNull_native();
      v177 = v75;
      if ((v76 & 1) == 0)
      {
        sub_1D87F4628(0, *(v75 + 16) + 1, 1);
        v75 = v177;
      }

      v78 = *(v75 + 16);
      v77 = *(v75 + 24);
      if (v78 >= v77 >> 1)
      {
        sub_1D87F4628((v77 > 1), v78 + 1, 1);
        v75 = v177;
      }

      *(v75 + 16) = v78 + 1;
      v166 = v75;
      sub_1D8918058(v23, v75 + v64 + v78 * v65, type metadata accessor for CVTrackSnapshot);
LABEL_28:
      ;
    }

    while (v63 != v174);
  }

  else
  {
    v166 = MEMORY[0x1E69E7CC0];
  }

  v79 = *(v166 + 2);
  if (v79)
  {
    v177 = MEMORY[0x1E69E7CC0];
    v80 = v166;
    sub_1D87F4074(0, v79, 0);
    v81 = v177;
    v82 = v80 + ((*(v161 + 80) + 32) & ~*(v161 + 80));
    v167 = *(v161 + 72);
    do
    {
      v83 = v170;
      v84 = sub_1D8917FF0(v82, v170, type metadata accessor for CVTrackSnapshot);
      MEMORY[0x1EEE9AC00](v84);
      v85 = v168;
      v86 = v169;
      *(&v156 - 2) = v83;
      *(&v156 - 1) = v85;

      v87 = sub_1D87C6A8C(sub_1D8943AD0, (&v156 - 4), v86);
      sub_1D8917FF0(v83, v10, type metadata accessor for CVTrackSnapshot);
      type metadata accessor for CVBundle.BundleType(0);
      swift_storeEnumTagMultiPayload();
      v88 = MEMORY[0x1E69E7CC0];
      v89 = sub_1D893C688(MEMORY[0x1E69E7CC0]);
      v90 = v173;
      *&v10[*(v173 + 20)] = v88;
      *&v10[*(v90 + 24)] = v87;
      *&v10[*(v90 + 28)] = v89;
      sub_1D89388D8(v83, type metadata accessor for CVTrackSnapshot);
      v177 = v81;
      v92 = *(v81 + 16);
      v91 = *(v81 + 24);
      if (v92 >= v91 >> 1)
      {
        sub_1D87F4074((v91 > 1), v92 + 1, 1);
        v81 = v177;
      }

      *(v81 + 16) = v92 + 1;
      sub_1D8918058(v10, v81 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v92, type metadata accessor for CVBundle);
      v82 += v167;
      --v79;
    }

    while (v79);
  }

  else
  {

    v81 = MEMORY[0x1E69E7CC0];
  }

  v166 = v81;
  v93 = MEMORY[0x1E69E7CC0];
  v94 = v158;
  if (v174)
  {
    v95 = 0;
    v96 = (*(v161 + 80) + 32) & ~*(v161 + 80);
    v97 = v160 + v96;
    v98 = *(v161 + 72);
    v99 = v156;
    do
    {
      sub_1D8917FF0(v97 + v98 * v95++, v99, type metadata accessor for CVTrackSnapshot);
      v176 = *(v99 + *(v171 + 24));
      v100 = sub_1D8921A48();
      v101 = *(v100 + 2);
      v102 = (v100 + 32);
      do
      {
        if (!v101)
        {

          sub_1D89388D8(v99, type metadata accessor for CVTrackSnapshot);
          goto LABEL_50;
        }

        v103 = *v102++;
        --v101;
      }

      while (v103 != 1);

      sub_1D8918058(v99, v94, type metadata accessor for CVTrackSnapshot);
      v104 = swift_isUniquelyReferenced_nonNull_native();
      v177 = v93;
      if ((v104 & 1) == 0)
      {
        sub_1D87F4628(0, *(v93 + 2) + 1, 1);
        v93 = v177;
      }

      v106 = *(v93 + 2);
      v105 = *(v93 + 3);
      v107 = v93;
      if (v106 >= v105 >> 1)
      {
        sub_1D87F4628((v105 > 1), v106 + 1, 1);
        v107 = v177;
      }

      *(v107 + 16) = v106 + 1;
      sub_1D8918058(v94, v107 + v96 + v106 * v98, type metadata accessor for CVTrackSnapshot);
      v93 = v107;
LABEL_50:
      ;
    }

    while (v95 != v174);
  }

  v108 = *(v93 + 2);
  if (v108)
  {
    v177 = MEMORY[0x1E69E7CC0];
    sub_1D87F4074(0, v108, 0);
    v109 = v93;
    v110 = v177;
    v111 = *(v161 + 80);
    v158 = v109;
    v112 = &v109[(v111 + 32) & ~v111];
    v163 = *(v161 + 72);
    v113 = v157;
    do
    {
      v167 = v108;
      v114 = v170;
      v115 = sub_1D8917FF0(v112, v170, type metadata accessor for CVTrackSnapshot);
      MEMORY[0x1EEE9AC00](v115);
      v116 = v168;
      *(&v156 - 2) = v114;
      *(&v156 - 1) = v116;
      v117 = v166;

      v118 = sub_1D87C6A8C(sub_1D8943AF0, (&v156 - 4), v117);
      MEMORY[0x1EEE9AC00](v118);
      *(&v156 - 2) = v114;
      *(&v156 - 1) = v116;
      v119 = v169;

      v120 = sub_1D87C6A8C(sub_1D894474C, (&v156 - 4), v119);
      sub_1D8917FF0(v114, v113, type metadata accessor for CVTrackSnapshot);
      type metadata accessor for CVBundle.BundleType(0);
      swift_storeEnumTagMultiPayload();
      v121 = sub_1D893C688(MEMORY[0x1E69E7CC0]);
      v122 = v173;
      *(v113 + *(v173 + 20)) = v118;
      *(v113 + *(v122 + 24)) = v120;
      *(v113 + *(v122 + 28)) = v121;
      sub_1D89388D8(v114, type metadata accessor for CVTrackSnapshot);
      v177 = v110;
      v124 = *(v110 + 16);
      v123 = *(v110 + 24);
      if (v124 >= v123 >> 1)
      {
        sub_1D87F4074((v123 > 1), v124 + 1, 1);
        v110 = v177;
      }

      *(v110 + 16) = v124 + 1;
      sub_1D8918058(v113, v110 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v124, type metadata accessor for CVBundle);
      v112 += v163;
      v108 = v167 - 1;
    }

    while (v167 != 1);
    v167 = v110;
  }

  else
  {

    v167 = MEMORY[0x1E69E7CC0];
  }

  v125 = v162;
  v126 = MEMORY[0x1E69E7CC0];
  if (v174)
  {
    v127 = 0;
    v128 = (*(v161 + 80) + 32) & ~*(v161 + 80);
    v129 = v160 + v128;
    v130 = *(v161 + 72);
    do
    {
      sub_1D8917FF0(v129 + v130 * v127++, v125, type metadata accessor for CVTrackSnapshot);
      v176 = *(v125 + *(v171 + 24));
      v131 = sub_1D8921A48();
      v132 = *(v131 + 2);
      v133 = (v131 + 32);
      do
      {
        if (!v132)
        {

          sub_1D89388D8(v125, type metadata accessor for CVTrackSnapshot);
          goto LABEL_69;
        }

        v134 = *v133++;
        --v132;
      }

      while (v134);

      sub_1D8918058(v125, v164, type metadata accessor for CVTrackSnapshot);
      v135 = swift_isUniquelyReferenced_nonNull_native();
      v177 = v126;
      if ((v135 & 1) == 0)
      {
        sub_1D87F4628(0, *(v126 + 16) + 1, 1);
        v126 = v177;
      }

      v137 = *(v126 + 16);
      v136 = *(v126 + 24);
      if (v137 >= v136 >> 1)
      {
        sub_1D87F4628((v136 > 1), v137 + 1, 1);
        v126 = v177;
      }

      *(v126 + 16) = v137 + 1;
      sub_1D8918058(v164, v126 + v128 + v137 * v130, type metadata accessor for CVTrackSnapshot);
      v125 = v162;
LABEL_69:
      ;
    }

    while (v127 != v174);
  }

  v138 = *(v126 + 16);
  if (v138)
  {
    v177 = MEMORY[0x1E69E7CC0];
    sub_1D87F4074(0, v138, 0);
    v139 = v177;
    v140 = v126 + ((*(v161 + 80) + 32) & ~*(v161 + 80));
    v174 = *(v161 + 72);
    v141 = v170;
    do
    {
      v142 = sub_1D8917FF0(v140, v141, type metadata accessor for CVTrackSnapshot);
      MEMORY[0x1EEE9AC00](v142);
      v143 = v168;
      v144 = v169;
      *(&v156 - 2) = v141;
      *(&v156 - 1) = v143;

      v145 = sub_1D87C6A8C(sub_1D894474C, (&v156 - 4), v144);
      v146 = v165;
      sub_1D8917FF0(v141, v165, type metadata accessor for CVTrackSnapshot);
      type metadata accessor for CVBundle.BundleType(0);
      swift_storeEnumTagMultiPayload();
      v147 = MEMORY[0x1E69E7CC0];
      v148 = sub_1D893C688(MEMORY[0x1E69E7CC0]);
      v149 = v173;
      *(v146 + *(v173 + 20)) = v147;
      *(v146 + *(v149 + 24)) = v145;
      *(v146 + *(v149 + 28)) = v148;
      sub_1D89388D8(v141, type metadata accessor for CVTrackSnapshot);
      v177 = v139;
      v151 = *(v139 + 16);
      v150 = *(v139 + 24);
      if (v151 >= v150 >> 1)
      {
        sub_1D87F4074((v150 > 1), v151 + 1, 1);
        v139 = v177;
      }

      *(v139 + 16) = v151 + 1;
      sub_1D8918058(v146, v139 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v151, type metadata accessor for CVBundle);
      v140 += v174;
      --v138;
    }

    while (v138);
  }

  else
  {

    v139 = MEMORY[0x1E69E7CC0];
  }

  v152 = v167;
  sub_1D8940998(v167, v159);
  v154 = v153;
  v175 = v152;
  sub_1D88F3C08(v139);
  sub_1D88F3C08(v154);
  return v175;
}

BOOL sub_1D8929094(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178, &unk_1D8B1E6B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v31 - v6;
  CVBundle.latestEstimate.getter(v31);
  v32[0] = *&v31[0];
  v8 = sub_1D8A5BE40();

  if (v8)
  {
    sub_1D89C5AE8(v8, v7);

    v9 = sub_1D8B13240();
    if ((*(*(v9 - 8) + 48))(v7, 1, v9) != 1)
    {
      sub_1D87A14E4(v7, &qword_1ECA63178, &unk_1D8B1E6B0);
      return 0;
    }
  }

  else
  {
    v11 = sub_1D8B13240();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  }

  sub_1D87A14E4(v7, &qword_1ECA63178, &unk_1D8B1E6B0);
  v35 = *(v3 + *(type metadata accessor for CVTrackSnapshot(0) + 24));
  CVDetection.detection.getter(v32);
  v12 = v33;
  v13 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  (*(v13 + 64))(v31, v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v32);
  Corners.bounds.getter();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  CVBundle.corners.getter(v31);
  Corners.bounds.getter();
  v38.origin.x = v22;
  v38.origin.y = v23;
  v25 = v24;
  v27 = v26;
  v36.origin.x = v15;
  v36.origin.y = v17;
  v36.size.width = v19;
  v36.size.height = v21;
  v38.size.width = v25;
  v38.size.height = v27;
  v37 = CGRectIntersection(v36, v38);
  width = v37.size.width;
  height = v37.size.height;
  CVBundle.latestEstimate.getter(v31);
  v32[0] = *&v31[0];
  CVDetection.detectionType.getter(&v35);

  if (v35 == 2)
  {
    v30 = v19 * v21;
  }

  else
  {
    v30 = v25 * v27;
  }

  return v30 * *(a2 + 8) <= width * height;
}

uint64_t sub_1D8929348(uint64_t a1, uint64_t a2)
{
  CVBundle.latestEstimate.getter(&v7);
  v3 = sub_1D8A5BE40();
  if (v3)
  {
    v4 = v3;

    v5 = sub_1D89A5880(a2, v4);

    return v5 & 1;
  }

  else
  {

    return 0;
  }
}

void sub_1D89293D8(__int128 *a1)
{
  v2 = v1;
  v209 = type metadata accessor for BundleClassification(0);
  MEMORY[0x1EEE9AC00](v209);
  v219 = &v194 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = type metadata accessor for RefinementStateInternal(0);
  MEMORY[0x1EEE9AC00](v243);
  v246 = &v194 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RefinementState(0);
  v241 = *(v6 - 8);
  v242 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v208 = &v194 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v240 = &v194 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v239 = &v194 - v11;
  v12 = type metadata accessor for BundleClassifier.ClassificationInfo(0);
  v237 = *(v12 - 8);
  v238 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v236 = &v194 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BundleClassification.ClassificationType(0);
  v235 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v247 = &v194 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E0, &unk_1D8B26010);
  v205 = *(v16 - 8);
  v206 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v200 = &v194 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B28, &unk_1D8B2BE88);
  v198 = *(v18 - 8);
  v199 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v197 = &v194 - v19;
  v20 = type metadata accessor for BundleManager.BundleClassificationRequest(0);
  v195 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v213 = (&v194 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v225 = &v194 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D8B13240();
  v227 = *(v24 - 8);
  v228 = v24;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v221 = &v194 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v223 = &v194 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v212 = &v194 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v194 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v244 = &v194 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v194 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v224 = &v194 - v39;
  isUniquelyReferenced_nonNull_native = type metadata accessor for CVBundle.BundleType(0);
  v41 = MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  v222 = &v194 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v214 = &v194 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v194 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v226 = (&v194 - v48);
  v217 = type metadata accessor for CVBundle(0);
  v233 = *(v217 - 8);
  v49 = MEMORY[0x1EEE9AC00](v217);
  v231 = &v194 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v230 = &v194 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v216 = &v194 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v194 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA650E0, &qword_1D8B28250);
  v58 = MEMORY[0x1EEE9AC00](v57 - 8);
  v245 = &v194 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v234 = (&v194 - v60);
  v61 = type metadata accessor for LoggingSignposter(0);
  v62 = MEMORY[0x1EEE9AC00](v61);
  v64 = &v194 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1[3];
  v261 = a1[2];
  v262 = v65;
  v66 = a1[5];
  v263 = a1[4];
  v264 = v66;
  v67 = a1[1];
  v259 = *a1;
  v260 = v67;
  if (qword_1EE0E6340 != -1)
  {
    goto LABEL_92;
  }

  while (1)
  {
    v68 = __swift_project_value_buffer(v62, qword_1EE0E6348);
    sub_1D8917FF0(v68, v64, type metadata accessor for LoggingSignposter);
    LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("BundleManager.updateWithTrackManagerState", 41, 2u, 1, 0, v256);
    sub_1D89388D8(v64, type metadata accessor for LoggingSignposter);
    v69 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_logger;
    sub_1D88C7A20(&v259, &v250);
    v204 = v2;
    v196 = v69;
    v70 = sub_1D8B151C0();
    v71 = sub_1D8B16200();
    sub_1D8943A60(&v259);
    v72 = os_log_type_enabled(v70, v71);
    v232 = isUniquelyReferenced_nonNull_native;
    v211 = v33;
    if (v72)
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v249[0] = v74;
      *v73 = 136315138;
      v252 = v261;
      v253 = v262;
      v254 = v263;
      v255 = v264;
      v250 = v259;
      v251 = v260;
      v75 = TrackManager.State.description.getter();
      v77 = v38;
      v78 = sub_1D89AC714(v75, v76, v249);

      *(v73 + 4) = v78;
      v38 = v77;
      _os_log_impl(&dword_1D8783000, v70, v71, "updateWithTrackManagerState received: %s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x1DA721330](v74, -1, -1);
      MEMORY[0x1DA721330](v73, -1, -1);
    }

    v33 = v214;
    v79 = v261;
    if ((BYTE8(v261) & 1) == 0)
    {
      v80 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_otherSyntheticTracks;
      v81 = v204;
      swift_beginAccess();
      *(v81 + v80) = MEMORY[0x1E69E7CD0];
    }

    v82 = v264;
    v252 = v261;
    v253 = v262;
    v254 = v263;
    v255 = v264;
    v250 = v259;
    v251 = v260;

    v83 = v234;
    v84 = v204;
    sub_1D89270B0(&v250, v234);
    *&v250 = v82;
    v85 = v245;
    sub_1D87A0E38(v83, v245, &qword_1ECA650E0, &qword_1D8B28250);
    sub_1D88F53D4(v85);
    sub_1D87A14E4(v83, &qword_1ECA650E0, &qword_1D8B28250);
    v86 = v250;
    swift_beginAccess();
    *&v250 = v86;

    sub_1D88F4D10(v87);
    v88 = v250;
    v89 = sub_1D893EF20(MEMORY[0x1E69E7CC0]);
    v202 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_bundles;
    v203 = v89;
    v90 = *(v84 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_bundles);
    v234 = *(v90 + 16);
    if (v234)
    {
      v201 = v88;
      v229 = (v90 + ((*(v233 + 80) + 32) & ~*(v233 + 80)));
      v220 = v227 + 8;
      v210 = (v227 + 16);
      v91 = (v227 + 32);
      v207 = v227 + 40;
      v245 = v90;

      v62 = v245;
      v33 = 0;
      v218 = v91;
      v2 = v91 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v64 = v228;
      isUniquelyReferenced_nonNull_native = v232;
      v92 = v203;
      v215 = v47;
      v93 = v226;
      do
      {
        if (v33 >= *(v62 + 16))
        {
          goto LABEL_86;
        }

        sub_1D8917FF0(v229 + *(v233 + 72) * v33, v56, type metadata accessor for CVBundle);
        sub_1D8917FF0(v56, v93, type metadata accessor for CVBundle.BundleType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          (*v220)(v93, v64);
          sub_1D8917FF0(v56, v47, type metadata accessor for CVBundle.BundleType);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v94 = *v218;
            (*v218)(v38, v47, v64);
          }

          else
          {
            v95 = v92;
            v96 = v225;
            sub_1D8918058(v47, v225, type metadata accessor for CVTrackSnapshot);
            (*v210)(v38, v96, v64);
            v97 = v96;
            v92 = v95;
            sub_1D89388D8(v97, type metadata accessor for CVTrackSnapshot);
            v94 = *v218;
          }

          v98 = v224;
          v47 = v38;
          v94(v224, v38, v64);
          v94(v244, v98, v64);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v250 = v92;
          v64 = sub_1D881C1D8();
          v100 = v92[2];
          v101 = (v99 & 1) == 0;
          v62 = v100 + v101;
          if (__OFADD__(v100, v101))
          {
            goto LABEL_90;
          }

          v38 = v99;
          if (v92[3] >= v62)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D896AD68();
            }
          }

          else
          {
            sub_1D89745C8(v62, isUniquelyReferenced_nonNull_native);
            v102 = sub_1D881C1D8();
            if ((v38 & 1) != (v103 & 1))
            {
              sub_1D8B16C30();
              __break(1u);
              return;
            }

            v64 = v102;
          }

          isUniquelyReferenced_nonNull_native = v232;
          v92 = v250;
          if (v38)
          {
            v104 = *(v250 + 56) + *(v227 + 72) * v64;
            v64 = v228;
            (*(v227 + 40))(v104, v244, v228);
            sub_1D89388D8(v56, type metadata accessor for CVBundle);
          }

          else
          {
            *(v250 + 8 * (v64 >> 6) + 64) |= 1 << v64;
            v105 = v92[7] + *(v227 + 72) * v64;
            v64 = v228;
            v94(v105, v244, v228);
            v62 = sub_1D89388D8(v56, type metadata accessor for CVBundle);
            v106 = v92[2];
            v107 = __OFADD__(v106, 1);
            v108 = v106 + 1;
            if (v107)
            {
              goto LABEL_91;
            }

            v92[2] = v108;
          }

          v38 = v47;
          v47 = v215;
          v93 = v226;
        }

        else
        {
          sub_1D89388D8(v56, type metadata accessor for CVBundle);
          sub_1D89388D8(v93, type metadata accessor for CVBundle.BundleType);
        }

        v62 = v245;
        ++v33;
      }

      while (v234 != v33);
      v203 = v92;

      v33 = v214;
      v88 = v201;
    }

    else
    {
      isUniquelyReferenced_nonNull_native = v232;
    }

    v109 = sub_1D8927F8C(v88, v203);

    v201 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_bundleIdToBundleClassifier;
    v252 = v261;
    v253 = v262;
    v254 = v263;
    v255 = v264;
    v250 = v259;
    v251 = v260;

    v224 = v109;
    sub_1D892AEC8(v110, v109, &v250);
    v220 = v111;
    v38 = v112;

    v47 = v222;
    v2 = v223;
    if (*(v38 + 16))
    {
      sub_1D88C7A20(&v259, &v250);

      v113 = sub_1D8B151C0();
      v114 = sub_1D8B16200();
      sub_1D8943A60(&v259);
      v115 = os_log_type_enabled(v113, v114);
      v64 = v228;
      if (v115)
      {
        LODWORD(v229) = v114;
        v116 = swift_slowAlloc();
        v226 = swift_slowAlloc();
        *&v250 = v226;
        *v116 = 134218498;
        *(v116 + 4) = *(v38 + 16);

        *(v116 + 12) = 2048;
        *(v116 + 14) = v79;
        *(v116 + 22) = 2080;
        v117 = *(v38 + 16);
        v118 = MEMORY[0x1E69E7CC0];
        if (v117)
        {
          v210 = v116;
          v215 = v113;
          v248[0] = MEMORY[0x1E69E7CC0];
          sub_1D87F3EE0(0, v117, 0);
          v118 = v248[0];
          v119 = (*(v195 + 80) + 32) & ~*(v195 + 80);
          v218 = v38;
          v120 = v38 + v119;
          v121 = *(v195 + 72);
          v234 = (v227 + 16);
          v244 = (v227 + 32);
          v245 = v121;
          do
          {
            v122 = v213;
            sub_1D8917FF0(v120, v213, type metadata accessor for BundleManager.BundleClassificationRequest);
            sub_1D8917FF0(v122, v33, type metadata accessor for CVBundle.BundleType);
            sub_1D89388D8(v122, type metadata accessor for BundleManager.BundleClassificationRequest);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v123 = *v244;
              v124 = v212;
              (*v244)(v212, v33, v64);
            }

            else
            {
              v125 = v225;
              sub_1D8918058(v33, v225, type metadata accessor for CVTrackSnapshot);
              v124 = v212;
              (*v234)(v212, v125, v64);
              sub_1D89388D8(v125, type metadata accessor for CVTrackSnapshot);
              v123 = *v244;
            }

            v126 = v211;
            v123(v211, v124, v64);
            v248[0] = v118;
            v128 = *(v118 + 16);
            v127 = *(v118 + 24);
            if (v128 >= v127 >> 1)
            {
              sub_1D87F3EE0((v127 > 1), v128 + 1, 1);
              v118 = v248[0];
            }

            *(v118 + 16) = v128 + 1;
            v123((v118 + ((*(v227 + 80) + 32) & ~*(v227 + 80)) + *(v227 + 72) * v128), v126, v64);
            v120 += v245;
            --v117;
            v33 = v214;
          }

          while (v117);
          isUniquelyReferenced_nonNull_native = v232;
          v38 = v218;
          v113 = v215;
          v116 = v210;
        }

        v129 = MEMORY[0x1DA71F1E0](v118, v64);
        v131 = v130;

        v132 = v129;
        v64 = v228;
        v133 = sub_1D89AC714(v132, v131, &v250);

        *(v116 + 24) = v133;
        _os_log_impl(&dword_1D8783000, v113, v229, "Created classificationRequests for %ld bundles @ %f. Bundle ids: %s", v116, 0x20u);
        v134 = v226;
        __swift_destroy_boxed_opaque_existential_1(v226);
        MEMORY[0x1DA721330](v134, -1, -1);
        MEMORY[0x1DA721330](v116, -1, -1);

        v47 = v222;
        v2 = v223;
      }

      else
      {
      }

      v135 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_classificationRequestsStreamContinuation;
      v136 = v204;
      swift_beginAccess();
      v137 = v205;
      v138 = v136 + v135;
      v139 = v200;
      v140 = v206;
      v205[2](v200, v138, v206);
      *&v250 = v38;
      v33 = v197;
      sub_1D8B15EE0();
      (v137[1])(v139, v140);
      (*(v198 + 8))(v33, v199);
    }

    else
    {

      v64 = v228;
    }

    v141 = *(v224 + 2);
    v56 = v221;
    if (!v141)
    {
      break;
    }

    *&v250 = MEMORY[0x1E69E7CC0];
    v218 = v141;
    sub_1D87F4074(0, v141, 0);
    v142 = v224;
    v229 = v250;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657B0, &qword_1D8B2ABE8);
    v143 = 0;
    v210 = ((*(v233 + 80) + 32) & ~*(v233 + 80));
    v215 = (v210 + v142);
    v205 = (v227 + 16);
    v211 = (v227 + 8);
    v212 = v62;
    v213 = (v227 + 32);
    v214 = ((v227 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
    while (1)
    {
      if (v143 >= *(v142 + 2))
      {
        goto LABEL_87;
      }

      v144 = *(v233 + 72);
      v234 = v143;
      v227 = v144;
      v145 = v230;
      sub_1D8917FF0(v215 + v144 * v143, v230, type metadata accessor for CVBundle);
      sub_1D8917FF0(v145, v231, type metadata accessor for CVBundle);
      sub_1D8917FF0(v145, v47, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v146 = *v213;
        (*v213)(v56, v47, v64);
      }

      else
      {
        v147 = v225;
        sub_1D8918058(v47, v225, type metadata accessor for CVTrackSnapshot);
        (*v205)(v56, v147, v64);
        sub_1D89388D8(v147, type metadata accessor for CVTrackSnapshot);
        v146 = *v213;
      }

      v62 = v146(v2, v56, v64);
      v148 = v220;
      if (!*(v220 + 16))
      {
        break;
      }

      v62 = sub_1D87EF764(v2);
      if ((v149 & 1) == 0)
      {
        goto LABEL_89;
      }

      v234 = (v234 + 1);
      v150 = *(*(v148 + 56) + 8 * v62);
      v151 = *v211;

      v151(v2, v64);
      v152 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_emptyClassificationTypeToClassificationInfo;
      swift_beginAccess();
      v226 = v150;
      v2 = *(v150 + v152);
      v153 = sub_1D8B168F0();
      v154 = v153;
      isUniquelyReferenced_nonNull_native = v2 + 64;
      v155 = 1 << *(v2 + 32);
      if (v155 < 64)
      {
        v156 = ~(-1 << v155);
      }

      else
      {
        v156 = -1;
      }

      v64 = v156 & *(v2 + 64);
      v56 = ((v155 + 63) >> 6);
      v244 = (v153 + 64);
      v245 = v2;

      v47 = 0;
      if (v64)
      {
        while (1)
        {
          v157 = __clz(__rbit64(v64));
          v64 &= v64 - 1;
LABEL_61:
          v38 = v157 | (v47 << 6);
          v160 = v245;
          v33 = *(v235 + 72) * v38;
          sub_1D8917FF0(*(v245 + 48) + v33, v247, type metadata accessor for BundleClassification.ClassificationType);
          v161 = v236;
          sub_1D8917FF0(*(v160 + 56) + *(v237 + 72) * v38, v236, type metadata accessor for BundleClassifier.ClassificationInfo);
          sub_1D8917FF0(v161 + *(v238 + 20), v246, type metadata accessor for RefinementStateInternal);
          sub_1D89388D8(v161, type metadata accessor for BundleClassifier.ClassificationInfo);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload <= 2)
          {
            break;
          }

          if (EnumCaseMultiPayload != 3)
          {
            v164 = v240;
LABEL_72:
            swift_storeEnumTagMultiPayload();
            goto LABEL_73;
          }

          v168 = v219;
          sub_1D8918058(v246, v219, type metadata accessor for BundleClassification);
          v169 = v168;
          v170 = (v168 + *(v209 + 20));
          v171 = *v170;
          if (v171 == 2)
          {
            v172 = v208;
            sub_1D8918058(v169, v208, type metadata accessor for BundleClassification);
          }

          else
          {
            v178 = *(v170 + 4);
            v179 = *(v170 + 2);
            v206 = *(v170 + 1);
            v180 = v170[24];
            LODWORD(v207) = v170[24];
            sub_1D8912A68(v206, v179, v180);
            sub_1D89388D8(v219, type metadata accessor for BundleClassification);
            v181 = v171 & 1;
            v172 = v208;
            *v208 = v181;
            *(v172 + 1) = v206;
            *(v172 + 2) = v179;
            v172[24] = v207;
            *(v172 + 4) = v178;
          }

          swift_storeEnumTagMultiPayload();
          v164 = v240;
          sub_1D8918058(v172, v240, type metadata accessor for RefinementState);
LABEL_73:
          v2 = type metadata accessor for RefinementState;
          v174 = v164;
          v175 = v239;
          sub_1D8918058(v174, v239, type metadata accessor for RefinementState);
          *&v244[(v38 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v38;
          sub_1D8918058(v247, v154[6] + v33, type metadata accessor for BundleClassification.ClassificationType);
          v62 = sub_1D8918058(v175, v154[7] + *(v241 + 72) * v38, type metadata accessor for RefinementState);
          v176 = v154[2];
          v107 = __OFADD__(v176, 1);
          v177 = v176 + 1;
          if (v107)
          {
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          v154[2] = v177;
          if (!v64)
          {
            goto LABEL_56;
          }
        }

        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v163 = v246;
          }

          else
          {
            v173 = v246;

            v163 = v173 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A88, &qword_1D8B2BDF0) + 48);
          }

          v164 = v240;
          sub_1D881F6FC(v163, v240, &qword_1ECA641B8, &unk_1D8B23AC0);
        }

        else
        {
          v165 = v246;
          v166 = *(v246 + 24);
          v167 = *(v246 + 32);
          v164 = v240;
          *v240 = *v246;
          *(v164 + 8) = *(v165 + 8);
          v164[24] = v166;
          *(v164 + 4) = v167;
        }

        goto LABEL_72;
      }

LABEL_56:
      v158 = v47;
      while (1)
      {
        v47 = v158 + 1;
        if (__OFADD__(v158, 1))
        {
          __break(1u);
          goto LABEL_85;
        }

        if (v47 >= v56)
        {
          break;
        }

        v159 = *(isUniquelyReferenced_nonNull_native + 8 * v47);
        ++v158;
        if (v159)
        {
          v157 = __clz(__rbit64(v159));
          v64 = (v159 - 1) & v159;
          goto LABEL_61;
        }
      }

      sub_1D89388D8(v230, type metadata accessor for CVBundle);
      v182 = *(v217 + 28);
      v183 = v231;

      *(v183 + v182) = v154;
      v184 = v183;
      v185 = v216;
      sub_1D8918058(v184, v216, type metadata accessor for CVBundle);
      v186 = v229;
      *&v250 = v229;
      v188 = v229[2];
      v187 = v229[3];
      if (v188 >= v187 >> 1)
      {
        sub_1D87F4074((v187 > 1), v188 + 1, 1);
        v186 = v250;
      }

      v186[2] = v188 + 1;
      v229 = v186;
      v62 = sub_1D8918058(v185, v210 + v186 + v188 * v227, type metadata accessor for CVBundle);
      v143 = v234;
      v64 = v228;
      v56 = v221;
      v47 = v222;
      v2 = v223;
      v142 = v224;
      isUniquelyReferenced_nonNull_native = v232;
      if (v234 == v218)
      {

        v189 = v229;
        goto LABEL_83;
      }
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    v193 = v62;
    swift_once();
    v62 = v193;
  }

  v189 = MEMORY[0x1E69E7CC0];
LABEL_83:
  v190 = v204;
  *(v204 + v201) = v220;

  v252 = v261;
  v253 = v262;
  v254 = v263;
  v255 = v264;
  v250 = v259;
  v251 = v260;
  sub_1D8923290(&v250, v189);
  v191 = v257;
  v192 = v258;
  __swift_project_boxed_opaque_existential_1(v256, v257);
  (*(v192 + 8))(v191, v192);
  __swift_destroy_boxed_opaque_existential_1(v256);
  *(v190 + v202) = v189;
}

void sub_1D892AEC8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v126 = a1;
  v5 = 0;
  v130 = type metadata accessor for RefinementStateInternal(0);
  MEMORY[0x1EEE9AC00](v130);
  v134 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for BundleClassifier.ClassificationInfo(0);
  v128 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v127 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BundleManager.BundleClassificationRequest(0);
  v111 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v124 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v123 = &v105 - v11;
  v12 = type metadata accessor for BundleManager.Configuration(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v116 = (&v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v110 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v122);
  v125 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D8B13240();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v107 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v106 = &v105 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = (&v105 - v24);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v105 - v26;
  v28 = type metadata accessor for CVBundle(0);
  v29 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v115 = &v105 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v105 - v32;
  v34 = a3[3];
  v143 = a3[2];
  v144 = v34;
  v35 = a3[5];
  v145 = a3[4];
  v146 = v35;
  v36 = a3[1];
  v141 = *a3;
  v142 = v36;
  v37 = a2;
  v38 = *(a2 + 16);
  v39 = type metadata accessor for BundleClassifier(0);
  v40 = sub_1D893FD6C(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v131 = v17;
  v114 = v39;
  v133 = MEMORY[0x1DA71EC30](v38, v17, v39, v40);
  v108 = v18;
  if (v38)
  {
    v121 = v25;
    v113 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_configuration;
    v112 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_vapClient;
    v41 = v37 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v120 = *(v29 + 72);
    v109 = (v18 + 16);
    v119 = (v18 + 32);
    v118 = (v18 + 8);
    v132 = MEMORY[0x1E69E7CC0];
    v42 = v131;
    v43 = v125;
    do
    {
      sub_1D8917FF0(v41, v33, type metadata accessor for CVBundle);
      sub_1D8917FF0(v33, v43, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v45 = v43;
        v46 = *v119;
        v47 = v121;
        (*v119)(v121, v45, v42);
      }

      else
      {
        v48 = v43;
        v49 = v110;
        v50 = v5;
        v51 = v41;
        v52 = v38;
        v53 = v33;
        v54 = v27;
        v55 = v119;
        sub_1D8918058(v48, v110, type metadata accessor for CVTrackSnapshot);
        v47 = v121;
        (*v109)(v121, v49, v42);
        sub_1D89388D8(v49, type metadata accessor for CVTrackSnapshot);
        v46 = *v55;
        v27 = v54;
        v33 = v53;
        v38 = v52;
        v41 = v51;
        v5 = v50;
      }

      v46(v27, v47, v42);
      v56 = v126;
      if (*(v126 + 16) && (v57 = sub_1D87EF764(v27), (v58 & 1) != 0))
      {
        v59 = *(*(v56 + 56) + 8 * v57);
      }

      else
      {
        v60 = v115;
        sub_1D8917FF0(v33, v115, type metadata accessor for CVBundle);
        v61 = v117;
        v62 = v116;
        sub_1D8917FF0(v117 + v113, v116, type metadata accessor for BundleManager.Configuration);
        v63 = *(v61 + v112);
        swift_allocObject();

        v59 = sub_1D8930B7C(v60, v62, v63);
      }

      v137 = v143;
      v138 = v144;
      v139 = v145;
      v140 = v146;
      v135 = v141;
      v136 = v142;

      sub_1D8931F84(v33, &v135);
      v64 = v133;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v135 = v64;
      sub_1D8B05D58(v59, v27, isUniquelyReferenced_nonNull_native);
      v133 = v135;
      v66 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_emptyClassificationTypeToClassificationInfo;
      v67 = swift_beginAccess();
      v68 = *(v59 + v66);
      MEMORY[0x1EEE9AC00](v67);
      *(&v105 - 4) = v33;
      *(&v105 - 3) = &v141;
      *(&v105 - 2) = v59;

      sub_1D8AD04F0(sub_1D8944770, (&v105 - 6), v68);
      v70 = v69;

      if (v70)
      {
        v137 = v143;
        v138 = v144;
        v139 = v145;
        v140 = v146;
        v135 = v141;
        v136 = v142;
        v71 = v123;
        sub_1D8933880(v33, &v135, v123);
        sub_1D8917FF0(v71, v124, type metadata accessor for BundleManager.BundleClassificationRequest);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v132 = sub_1D87C925C(0, v132[2] + 1, 1, v132);
        }

        v73 = v132[2];
        v72 = v132[3];
        if (v73 >= v72 >> 1)
        {
          v132 = sub_1D87C925C((v72 > 1), v73 + 1, 1, v132);
        }

        sub_1D89388D8(v123, type metadata accessor for BundleManager.BundleClassificationRequest);
        v42 = v131;
        (*v118)(v27, v131);
        v74 = v132;
        v132[2] = v73 + 1;
        sub_1D8918058(v124, v74 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v73, type metadata accessor for BundleManager.BundleClassificationRequest);
      }

      else
      {
        v44 = v131;
        (*v118)(v27, v131);
        v42 = v44;
      }

      sub_1D89388D8(v33, type metadata accessor for CVBundle);
      v41 += v120;
      --v38;
      v43 = v125;
    }

    while (v38);
  }

  else
  {
    v132 = MEMORY[0x1E69E7CC0];
  }

  v76 = sub_1D87C2FA0(v75);

  v78 = sub_1D87C2FA0(v77);
  if (*(v78 + 16) <= *(v76 + 16) >> 3)
  {
    *&v135 = v76;
    sub_1D88B8588(v78);

    v79 = v135;
  }

  else
  {
    v79 = sub_1D88BA124(v78, v76);
  }

  v80 = v108;
  v81 = v107;
  v82 = v79 + 56;
  v83 = 1 << *(v79 + 32);
  v84 = -1;
  if (v83 < 64)
  {
    v84 = ~(-1 << v83);
  }

  v85 = v84 & *(v79 + 56);
  v86 = (v83 + 63) >> 6;
  v124 = v108 + 16;
  v123 = v108 + 32;
  v121 = (v108 + 8);

  v87 = 0;
  v122 = v79;
  v88 = v127;
  while (v85)
  {
LABEL_32:
    v90 = *(v79 + 48) + *(v80 + 72) * (__clz(__rbit64(v85)) | (v87 << 6));
    v91 = v106;
    v92 = v131;
    (*(v80 + 16))(v106, v90, v131);
    (*(v80 + 32))(v81, v91, v92);
    v93 = v126;
    if (!*(v126 + 16))
    {
      goto LABEL_47;
    }

    v94 = sub_1D87EF764(v81);
    if ((v95 & 1) == 0)
    {
      goto LABEL_48;
    }

    v125 = v5;
    v85 &= v85 - 1;
    v96 = *(*(v93 + 56) + 8 * v94);

    v97 = sub_1D8931AE4();
    v98 = *(v97 + 16);
    if (v98)
    {
      v99 = 0;
      while (1)
      {
        if (v99 >= *(v97 + 16))
        {
          goto LABEL_46;
        }

        sub_1D8917FF0(v97 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v99, v88, type metadata accessor for BundleClassifier.ClassificationInfo);
        sub_1D8917FF0(v88 + *(v129 + 20), v134, type metadata accessor for RefinementStateInternal);
        sub_1D89388D8(v88, type metadata accessor for BundleClassifier.ClassificationInfo);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 2)
        {
          break;
        }

        if (EnumCaseMultiPayload == 1)
        {

          v101 = v134;
LABEL_43:
          sub_1D87A14E4(v101, &qword_1ECA641B8, &unk_1D8B23AC0);
          v103 = v133;
          v104 = swift_isUniquelyReferenced_nonNull_native();
          *&v135 = v103;
          v81 = v107;
          sub_1D8B05D58(v96, v107, v104);
          v133 = v135;
          (*v121)(v81, v131);
          goto LABEL_26;
        }

        ++v99;
        sub_1D89388D8(v134, type metadata accessor for RefinementStateInternal);
        if (v98 == v99)
        {
          goto LABEL_25;
        }
      }

      v102 = v134;

      v101 = v102 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A88, &qword_1D8B2BDF0) + 48);
      goto LABEL_43;
    }

LABEL_25:
    v81 = v107;
    (*v121)(v107, v131);

LABEL_26:
    v5 = v125;
    v80 = v108;
    v79 = v122;
  }

  while (1)
  {
    v89 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      break;
    }

    if (v89 >= v86)
    {

      return;
    }

    v85 = *(v82 + 8 * v89);
    ++v87;
    if (v85)
    {
      v87 = v89;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t sub_1D892BD60(void *a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v30 = a4;
  v31 = a1;
  v7 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D8B13240();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - v18;
  v20 = a3[3];
  v32[2] = a3[2];
  v32[3] = v20;
  v32[4] = a3[4];
  v21 = a3[1];
  v32[0] = *a3;
  v32[1] = v21;
  sub_1D891DCA0(v32, v30, *(v29 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_vapClient));
  v23 = v22;
  sub_1D8917FF0(a2, v12, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *(v14 + 32);
    v24(v17, v12, v13);
  }

  else
  {
    sub_1D8918058(v12, v9, type metadata accessor for CVTrackSnapshot);
    (*(v14 + 16))(v17, v9, v13);
    sub_1D89388D8(v9, type metadata accessor for CVTrackSnapshot);
    v24 = *(v14 + 32);
  }

  v24(v19, v17, v13);
  v25 = v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v32[0] = *v25;
  sub_1D8B05F24(v23, v19, isUniquelyReferenced_nonNull_native);
  result = (*(v14 + 8))(v19, v13);
  *v25 = *&v32[0];
  return result;
}

double sub_1D892C038()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v74 = &v58 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649D8, &qword_1D8B2BF70);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v58 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E8, &qword_1D8B2AC10);
  v81 = *(v8 - 8);
  v82 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v79 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v80 = &v58 - v12;
  v71 = v13;
  MEMORY[0x1EEE9AC00](v11);
  v76 = &v58 - v14;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E0, &unk_1D8B26010);
  v75 = *(v78 - 8);
  v15 = MEMORY[0x1EEE9AC00](v78);
  v77 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v73 = &v58 - v17;
  v70 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_classificationWorkerTask;
  if (*(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_classificationWorkerTask))
  {

    sub_1D8B15F80();
  }

  v72 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_classificationMergerTask;
  if (*(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_classificationMergerTask))
  {

    sub_1D8B15F80();
  }

  v18 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_classificationRequestsStreamContinuation;
  v63 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_classificationRequestsStreamContinuation;
  swift_beginAccess();
  v19 = v75;
  v20 = *(v75 + 16);
  v21 = v1 + v18;
  v22 = v73;
  v23 = v78;
  v65 = v75 + 16;
  v64 = v20;
  v20(v73, v21, v78);
  sub_1D8B15EF0();
  v68 = *(v19 + 8);
  v69 = v19 + 8;
  v68(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649F8, &qword_1D8B2B200);
  LODWORD(v62) = *MEMORY[0x1E69E8650];
  v61 = *(v5 + 104);
  v61(v7);
  v24 = v76;
  sub_1D8B15EB0();
  v60 = *(v5 + 8);
  v60(v7, v4);
  v59 = v4;
  v25 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_classificationRequestsStream;
  swift_beginAccess();
  v26 = v81;
  (*(v81 + 40))(v1 + v25, v24, v82);
  swift_endAccess();
  v27 = v63;
  swift_beginAccess();
  (*(v75 + 40))(v1 + v27, v22, v23);
  swift_endAccess();
  v28 = v59;
  (v61)(v7, v62, v59);
  sub_1D8B15EB0();
  v60(v7, v28);
  v29 = v26 + 16;
  v30 = *(v26 + 16);
  v30(v79, v1 + v25, v82);
  v31 = v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager__bundleClassificationRunner;
  Strong = swift_unknownObjectWeakLoadStrong();
  v66 = v1;
  if (Strong)
  {
    v33 = Strong;
    v34 = *(v31 + 8);
  }

  else
  {
    swift_unknownObjectRetain();
    v34 = &off_1F542F4A8;
    v33 = v1;
  }

  v63 = v33;
  v61 = sub_1D8B15EA0();
  v35 = *(v61 - 1);
  v60 = *(v35 + 56);
  v62 = v35 + 56;
  (v60)(v74, 1, 1, v61);
  v36 = swift_allocObject();
  *(v36 + 24) = v34;
  swift_unknownObjectWeakInit();
  v37 = v73;
  v38 = v78;
  v64(v73, v77, v78);
  v30(v76, v79, v82);
  v39 = v75;
  v40 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v41 = v81;
  v42 = *(v81 + 80);
  v65 = v29;
  v43 = (v67 + v42 + v40) & ~v42;
  v67 = v42 | 7;
  v71 += 7;
  v64 = v30;
  v44 = (v71 + v43) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  (*(v39 + 32))(v45 + v40, v37, v38);
  v75 = *(v41 + 32);
  v46 = v76;
  (v75)(v45 + v43, v76, v82);
  *(v45 + v44) = v36;
  v47 = v74;
  v48 = sub_1D8AD1984(0, 0, v74, &unk_1D8B2BF80, v45);
  sub_1D87A14E4(v47, &unk_1ECA675E0, &qword_1D8B23B60);
  v49 = v66;
  *(v66 + v70) = v48;

  (v60)(v47, 1, 1, v61);
  v50 = swift_allocObject();
  swift_weakInit();
  v51 = v82;
  v64(v46, v80, v82);
  v52 = (v42 + 32) & ~v42;
  v53 = (v71 + v52) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  *(v54 + 24) = 0;
  (v75)(v54 + v52, v46, v51);
  *(v54 + v53) = v50;
  v55 = sub_1D8891CA0(0, 0, v47, &unk_1D8B2BF90, v54);
  swift_unknownObjectRelease();
  v56 = *(v81 + 8);
  v56(v79, v51);
  v68(v77, v78);
  v56(v80, v51);
  *(v49 + v72) = v55;

  return result;
}

uint64_t sub_1D892C910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[34] = a5;
  v6[35] = a6;
  v6[33] = a4;
  type metadata accessor for CVBundle(0);
  v6[36] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B28, &unk_1D8B2BE88);
  v6[37] = v7;
  v6[38] = *(v7 - 8);
  v6[39] = swift_task_alloc();
  v8 = type metadata accessor for BundleManager.BundleClassificationRequest(0);
  v6[40] = v8;
  v6[41] = *(v8 - 8);
  v6[42] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BD8, &unk_1D8B2BF98);
  v6[43] = v9;
  v6[44] = *(v9 - 8);
  v6[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D892CAD0, 0, 0);
}

uint64_t sub_1D892CAD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E8, &qword_1D8B2AC10);
  sub_1D8B15F10();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 368) = v1;
  *v1 = v0;
  v1[1] = sub_1D892CBB8;
  v2 = *(v0 + 344);

  return MEMORY[0x1EEE6D9C8](v0 + 232, 0, 0, v2);
}

uint64_t sub_1D892CBB8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D892CCB4, 0, 0);
}

uint64_t sub_1D892CCB4()
{
  v1 = v0[29];
  v0[47] = v1;
  if (!v1)
  {
    (*(v0[44] + 8))(v0[45], v0[43]);
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E0, &unk_1D8B26010);
    sub_1D8B15EF0();

    v4 = v0[1];

    return v4();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[48] = Strong;
  if (!Strong)
  {
    (*(v0[44] + 8))(v0[45], v0[43]);
    goto LABEL_7;
  }

  v3 = Strong;
  if (sub_1D8B15F90())
  {
    (*(v0[44] + 8))(v0[45], v0[43]);
    swift_unknownObjectRelease();
LABEL_7:

    goto LABEL_8;
  }

  return MEMORY[0x1EEE6DFA0](sub_1D892CE34, v3, 0);
}

uint64_t sub_1D892CE34()
{
  v1 = *(v0 + 376);
  v2 = *(v1 + 16);
  if (v2 < 2)
  {
    if (v2)
    {
      v9 = *(v0 + 336);
      v10 = *(*(v0 + 328) + 80);
      *(v0 + 440) = v10;
      sub_1D8917FF0(v1 + ((v10 + 32) & ~v10), v9, type metadata accessor for BundleManager.BundleClassificationRequest);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63338, &qword_1D8B1E910);
      v11 = swift_allocObject();
      *(v0 + 416) = v11;
      *(v11 + 16) = xmmword_1D8B1AB90;
      v12 = sub_1D892D300;
    }

    else
    {

      *(v0 + 408) = MEMORY[0x1E69E7CC0];
      v12 = sub_1D892D1E8;
    }

    return MEMORY[0x1EEE6DFA0](v12, 0, 0);
  }

  else
  {
    v3 = *(v0 + 384);
    v4 = sub_1D893FD6C(&qword_1EE0E85E0, type metadata accessor for BundleManager, &protocol conformance descriptor for BundleManager);
    v5 = swift_task_alloc();
    *(v0 + 392) = v5;
    *(v5 + 16) = v1;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649F8, &qword_1D8B2B200);
    v7 = swift_task_alloc();
    *(v0 + 400) = v7;
    *v7 = v0;
    v7[1] = sub_1D892D04C;
    v8 = *(v0 + 320);

    return MEMORY[0x1EEE6DBF8](v0 + 256, v8, v6, v3, v4, &unk_1D8B2BFC8, v5, v8);
  }
}

uint64_t sub_1D892D04C()
{
  v1 = *(*v0 + 384);

  return MEMORY[0x1EEE6DFA0](sub_1D892D178, v1, 0);
}

uint64_t sub_1D892D178()
{

  *(v0 + 408) = *(v0 + 256);

  return MEMORY[0x1EEE6DFA0](sub_1D892D1E8, 0, 0);
}

uint64_t sub_1D892D1E8()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  v0[31] = v0[51];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E0, &unk_1D8B26010);
  sub_1D8B15EE0();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[46] = v4;
  *v4 = v0;
  v4[1] = sub_1D892CBB8;
  v5 = v0[43];

  return MEMORY[0x1EEE6D9C8](v0 + 29, 0, 0, v5);
}

uint64_t sub_1D892D300()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 320);
  v3 = *(v0 + 288);
  sub_1D8917FF0(v1, v3, type metadata accessor for CVBundle);
  v4 = (v1 + *(v2 + 20));
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[5];
  *(v0 + 80) = v4[4];
  *(v0 + 96) = v7;
  *(v0 + 48) = v5;
  *(v0 + 64) = v6;
  v8 = v4[1];
  *(v0 + 16) = *v4;
  *(v0 + 32) = v8;
  v9 = *(v1 + *(v2 + 28));
  v10 = type metadata accessor for BundleClassification(0);
  v11 = swift_task_alloc();
  *(v0 + 424) = v11;
  v11[2] = v9;
  v11[3] = v3;
  v11[4] = v0 + 16;
  v11[5] = v1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BE0, &qword_1D8B2BFB8);
  sub_1D88C7A20(v0 + 16, v0 + 112);
  v13 = swift_task_alloc();
  *(v0 + 432) = v13;
  *v13 = v0;
  v13[1] = sub_1D892D47C;

  return MEMORY[0x1EEE6DBF8](v0 + 240, v10, v12, 0, 0, &unk_1D8B2BFB0, v11, v10);
}

uint64_t sub_1D892D47C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D892D594, 0, 0);
}

uint64_t sub_1D892D594()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = *(v0 + 288);
  v5 = *(v0 + 416) + ((*(v0 + 440) + 32) & ~*(v0 + 440));
  v6 = *(v0 + 240);
  sub_1D8917FF0(v4, v5, type metadata accessor for CVBundle);
  sub_1D8917FF0(v2 + v3[6], v5 + v3[6], type metadata accessor for BundleManager.Configuration);
  v7 = *(v2 + v3[8]);
  v8 = (v5 + v3[5]);
  v9 = *(v0 + 96);
  v11 = *(v0 + 48);
  v10 = *(v0 + 64);
  v8[4] = *(v0 + 80);
  v8[5] = v9;
  v8[2] = v11;
  v8[3] = v10;
  v12 = *(v0 + 32);
  *v8 = *(v0 + 16);
  v8[1] = v12;
  *(v5 + v3[7]) = v6;
  *(v5 + v3[8]) = v7;

  sub_1D89388D8(v4, type metadata accessor for CVBundle);

  return MEMORY[0x1EEE6DFA0](sub_1D892D6C8, v1, 0);
}

uint64_t sub_1D892D6C8()
{
  sub_1D89388D8(v0[42], type metadata accessor for BundleManager.BundleClassificationRequest);

  v0[51] = v0[52];

  return MEMORY[0x1EEE6DFA0](sub_1D892D1E8, 0, 0);
}

uint64_t sub_1D892D758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BD8, &unk_1D8B2BF98);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D892D824, 0, 0);
}

uint64_t sub_1D892D824()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E8, &qword_1D8B2AC10);
  sub_1D8B15F10();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1D892D90C;
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6D9C8](v0 + 40, 0, 0, v2);
}

uint64_t sub_1D892D90C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D892DA08, 0, 0);
}

uint64_t sub_1D892DA08()
{
  v1 = v0[5];
  v0[12] = v1;
  if (!v1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
LABEL_8:

    v4 = v0[1];

    return v4();
  }

  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (!Strong)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    goto LABEL_7;
  }

  v3 = Strong;
  if (sub_1D8B15F90())
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

LABEL_7:

    goto LABEL_8;
  }

  return MEMORY[0x1EEE6DFA0](sub_1D892DB2C, v3, 0);
}

uint64_t sub_1D892DB2C()
{
  sub_1D892DC50(*(v0 + 96));

  return MEMORY[0x1EEE6DFA0](sub_1D892DBA0, 0, 0);
}

uint64_t sub_1D892DBA0()
{

  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1D892D90C;
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6D9C8](v0 + 40, 0, 0, v2);
}

void sub_1D892DC50(uint64_t a1)
{
  v103 = type metadata accessor for CVBundle(0);
  v84 = *(v103 - 8);
  v3 = MEMORY[0x1EEE9AC00](v103);
  v119 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v99 = &v84 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v104 = &v84 - v7;
  v8 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v102 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for CVBundle.BundleType(0);
  v10 = MEMORY[0x1EEE9AC00](v116);
  v109 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v84 - v12;
  v110 = sub_1D8B13240();
  v14 = *(v110 - 8);
  v15 = MEMORY[0x1EEE9AC00](v110);
  v106 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v105 = &v84 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v84 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v84 - v22;
  v93 = type metadata accessor for BundleManager.BundleClassificationRequest(0);
  v24 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v90 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);

  v117 = v1;
  v26 = sub_1D8B151C0();
  v27 = sub_1D8B16200();
  v28 = os_log_type_enabled(v26, v27);
  v94 = v23;
  v95 = v13;
  v85 = v21;
  if (v28)
  {
    v29 = swift_slowAlloc();
    *v29 = 134218240;
    v30 = *(a1 + 16);
    *(v29 + 4) = v30;

    *(v29 + 12) = 2048;
    if (v30)
    {
      v31 = v24;
      v32 = *(a1 + *(v93 + 20) + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + 32);
    }

    else
    {
      v31 = v24;
      v32 = 0x7FF8000000000000;
    }

    *(v29 + 14) = v32;
    _os_log_impl(&dword_1D8783000, v26, v27, "Merging classificationResponses for %ld bundles @ %f", v29, 0x16u);
    MEMORY[0x1DA721330](v29, -1, -1);

    v23 = v94;
    v13 = v95;
    v33 = v110;
    v21 = v85;
  }

  else
  {
    v31 = v24;

    v33 = v110;
  }

  v34 = v90;
  v98 = *(a1 + 16);
  if (!v98)
  {
    return;
  }

  v35 = 0;
  v115 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_bundleIdToBundleClassifier;
  v86 = (v117 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState);
  v87 = OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_bundles;
  v97 = a1 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
  v101 = (v14 + 16);
  v36 = (v14 + 32);
  v37 = (v14 + 8);
  v38 = *(v31 + 72);
  v96 = v36;
  v113 = v37;
  v114 = v36 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v92 = v38;
  while (1)
  {
    sub_1D8917FF0(v97 + v38 * v35, v34, type metadata accessor for BundleManager.BundleClassificationRequest);
    sub_1D8917FF0(v34, v13, type metadata accessor for CVBundle.BundleType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v100 = v35;
    if (EnumCaseMultiPayload == 1)
    {
      v41 = *v96;
      v42 = v33;
      (*v96)(v21, v13, v33);
    }

    else
    {
      v43 = v102;
      sub_1D8918058(v13, v102, type metadata accessor for CVTrackSnapshot);
      v42 = v33;
      (*v101)(v21, v43, v33);
      sub_1D89388D8(v43, type metadata accessor for CVTrackSnapshot);
      v41 = *v96;
    }

    v44 = v21;
    v112 = v41;
    v41(v23, v21, v42);
    v45 = *(v117 + v115);
    v46 = v99;
    if (!*(v45 + 16))
    {
      goto LABEL_10;
    }

    v47 = sub_1D87EF764(v23);
    if (v48)
    {
      break;
    }

LABEL_10:
    (*v113)(v23, v33);
    sub_1D89388D8(v34, type metadata accessor for BundleManager.BundleClassificationRequest);
    v39 = v100;
    v21 = v44;
LABEL_11:
    v35 = v39 + 1;
    if (v35 == v98)
    {
      return;
    }
  }

  v49 = *(*(v45 + 56) + 8 * v47);
  v50 = v34;
  v51 = *v113;

  v111 = v51;
  v51(v23, v33);
  v34 = v50;

  sub_1D8934680(v50);
  v52 = v50 + *(v93 + 20);
  if ((*(v52 + 40) & 1) == 0)
  {
    sub_1D89388D8(v50, type metadata accessor for BundleManager.BundleClassificationRequest);

    v39 = v100;
    v38 = v92;
    v21 = v44;
    v23 = v94;
    v13 = v95;
    goto LABEL_11;
  }

  v91 = v49;
  v53 = *(v117 + v87);
  v54 = *(v53 + 16);
  if (!v54)
  {
    v21 = v44;
    v73 = MEMORY[0x1E69E7CC0];
    v23 = v94;
    v13 = v95;
LABEL_31:
    v74 = v86[3];
    v137[2] = v86[2];
    v137[3] = v74;
    v75 = v86[5];
    v137[4] = v86[4];
    v138 = v75;
    v76 = v86[1];
    v137[0] = *v86;
    v137[1] = v76;
    v77 = v75;
    v34 = v90;
    v38 = v92;
    if (v75)
    {
      v78 = v86[3];
      v134 = v86[2];
      v135 = v78;
      v136 = v86[4];
      v79 = v86[1];
      v132 = *v86;
      v133 = v79;
      v80 = *(&v138 + 1);
    }

    else
    {
      v81 = *(v52 + 48);
      v128 = *(v52 + 32);
      v129 = v81;
      v82 = *(v52 + 80);
      v130 = *(v52 + 64);
      v131 = v82;
      v83 = *(v52 + 16);
      v126 = *v52;
      v127 = v83;
      v80 = *(&v82 + 1);
      v77 = v82;
      sub_1D88C7A20(&v126, &v120);
      v134 = v128;
      v135 = v129;
      v136 = v130;
      v132 = v126;
      v133 = v127;
    }

    v122 = v134;
    v123 = v135;
    v124 = v136;
    v120 = v132;
    v121 = v133;
    *&v125 = v77;
    *(&v125 + 1) = v80;
    sub_1D87A0E38(v137, &v126, &qword_1ECA64858, &unk_1D8B2ABF0);
    sub_1D8923290(&v120, v73);

    v128 = v122;
    v129 = v123;
    v130 = v124;
    v131 = v125;
    v126 = v120;
    v127 = v121;
    sub_1D8943A60(&v126);
    sub_1D89388D8(v34, type metadata accessor for BundleManager.BundleClassificationRequest);
    v33 = v110;
    v39 = v100;
    goto LABEL_11;
  }

  v89 = v52;
  *&v137[0] = MEMORY[0x1E69E7CC0];

  sub_1D87F4074(0, v54, 0);
  v55 = *&v137[0];
  v56 = *(v84 + 80);
  v88 = v53;
  v108 = (v56 + 32) & ~v56;
  v57 = v53 + v108;
  v107 = *(v84 + 72);
  v58 = v109;
  while (1)
  {
    v118 = v55;
    sub_1D8917FF0(v57, v46, type metadata accessor for CVBundle);
    sub_1D8917FF0(v46, v119, type metadata accessor for CVBundle);
    sub_1D8917FF0(v46, v58, type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v59 = v106;
      v60 = v58;
      v61 = v112;
      v112(v106, v60, v33);
    }

    else
    {
      v62 = v102;
      sub_1D8918058(v58, v102, type metadata accessor for CVTrackSnapshot);
      v59 = v106;
      (*v101)(v106, v62, v33);
      sub_1D89388D8(v62, type metadata accessor for CVTrackSnapshot);
      v61 = v112;
    }

    v63 = v105;
    v61(v105, v59, v33);
    if (!*(*(v117 + v115) + 16))
    {
      break;
    }

    sub_1D87EF764(v63);
    if ((v64 & 1) == 0)
    {
      goto LABEL_37;
    }

    v65 = v119;

    v111(v63, v33);

    sub_1D893144C();
    v67 = v66;

    sub_1D89388D8(v46, type metadata accessor for CVBundle);
    v68 = *(v103 + 28);

    *(v65 + v68) = v67;
    v69 = v104;
    sub_1D8918058(v65, v104, type metadata accessor for CVBundle);
    v55 = v118;
    *&v137[0] = v118;
    v71 = v118[2];
    v70 = v118[3];
    if (v71 >= v70 >> 1)
    {
      sub_1D87F4074((v70 > 1), v71 + 1, 1);
      v69 = v104;
      v55 = *&v137[0];
    }

    v55[2] = v71 + 1;
    v72 = v107;
    sub_1D8918058(v69, v55 + v108 + v71 * v107, type metadata accessor for CVBundle);
    v57 += v72;
    --v54;
    v58 = v109;
    v33 = v110;
    if (!v54)
    {
      v73 = v55;

      v23 = v94;
      v13 = v95;
      v21 = v85;
      v52 = v89;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_1D892E760(uint64_t a1)
{
  v2 = sub_1D89401D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D892E79C(uint64_t a1)
{
  v2 = sub_1D89401D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D892E7D8()
{
  v1 = 0x6E69666552746F6ELL;
  v2 = 0x676E696E69666572;
  if (*v0 != 2)
  {
    v2 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    v1 = 0x6E696665526E6163;
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

uint64_t sub_1D892E860@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D894105C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D892E888(uint64_t a1)
{
  v2 = sub_1D89400D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D892E8C4(uint64_t a1)
{
  v2 = sub_1D89400D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D892E900(uint64_t a1)
{
  v2 = sub_1D8940128();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D892E93C(uint64_t a1)
{
  v2 = sub_1D8940128();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D892E98C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D892EA10(uint64_t a1)
{
  v2 = sub_1D8940224();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D892EA4C(uint64_t a1)
{
  v2 = sub_1D8940224();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D892EAA0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73756F6976657270 && a2 == 0xE800000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D892EB28(uint64_t a1)
{
  v2 = sub_1D894017C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D892EB64(uint64_t a1)
{
  v2 = sub_1D894017C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RefinementState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657D0, &qword_1D8B2AC18);
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v36 - v3;
  v47 = type metadata accessor for BundleClassification(0);
  MEMORY[0x1EEE9AC00](v47);
  v43 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657D8, &qword_1D8B2AC20);
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B8, &unk_1D8B23AC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v39 = &v36 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657E0, &qword_1D8B2AC28);
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657E8, &qword_1D8B2AC30);
  v37 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = type metadata accessor for RefinementState(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657F0, &qword_1D8B2AC38);
  v49 = *(v17 - 8);
  v50 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D89400D4();
  sub_1D8B16DD0();
  sub_1D8917FF0(v48, v16, type metadata accessor for RefinementState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v27 = v43;
      sub_1D8918058(v16, v43, type metadata accessor for BundleClassification);
      v51[0] = 3;
      sub_1D8940128();
      v28 = v44;
      v29 = v50;
      sub_1D8B16A40();
      sub_1D893FD6C(&qword_1ECA65808, type metadata accessor for BundleClassification, &protocol conformance descriptor for BundleClassification);
      v30 = v46;
      sub_1D8B16AE0();
      (*(v45 + 8))(v28, v30);
      sub_1D89388D8(v27, type metadata accessor for BundleClassification);
      (*(v49 + 8))(v19, v29);
    }

    else
    {
      v51[0] = 1;
      sub_1D89401D0();
      v35 = v50;
      sub_1D8B16A40();
      (*(v36 + 8))(v10, v38);
      (*(v49 + 8))(v19, v35);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v31 = v39;
    sub_1D881F6FC(v16, v39, &qword_1ECA641B8, &unk_1D8B23AC0);
    v51[0] = 2;
    sub_1D894017C();
    v32 = v40;
    v33 = v50;
    sub_1D8B16A40();
    sub_1D893FD6C(&qword_1ECA65808, type metadata accessor for BundleClassification, &protocol conformance descriptor for BundleClassification);
    v34 = v42;
    sub_1D8B16A80();
    (*(v41 + 8))(v32, v34);
    sub_1D87A14E4(v31, &qword_1ECA641B8, &unk_1D8B23AC0);
    (*(v49 + 8))(v19, v33);
  }

  else
  {
    v21 = *v16;
    v22 = *(v16 + 1);
    v23 = *(v16 + 2);
    v24 = *(v16 + 4);
    v25 = v16[24];
    v51[0] = 0;
    sub_1D8940224();
    v26 = v50;
    sub_1D8B16A40();
    v51[0] = v21;
    v52 = v22;
    v53 = v23;
    v54 = v25;
    v55 = v24;
    sub_1D8912AFC();
    sub_1D8B16AE0();
    (*(v37 + 8))(v13, v11);
    (*(v49 + 8))(v19, v26);
    sub_1D88E1004(v22, v23, v25);
  }
}

void RefinementState.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for BundleClassification(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B8, &unk_1D8B23AC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - v7;
  v9 = type metadata accessor for RefinementState(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(v1, v11, type metadata accessor for RefinementState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D881F6FC(v11, v8, &qword_1ECA641B8, &unk_1D8B23AC0);
      MEMORY[0x1DA720210](2);
      sub_1D8939554(a1);
      sub_1D87A14E4(v8, &qword_1ECA641B8, &unk_1D8B23AC0);
      return;
    }

    v13 = *(v11 + 1);
    v14 = *(v11 + 2);
    v15 = v11[24];
    v16 = *(v11 + 4);
    MEMORY[0x1DA720210](0);
    sub_1D8B16D40();
    v17 = v15 >> 6;
    if (v15 >> 6 > 1)
    {
      if (v17 == 2)
      {
        v18 = 3;
        goto LABEL_25;
      }
    }

    else
    {
      if (v17)
      {
        v18 = 2;
        goto LABEL_25;
      }

      MEMORY[0x1DA720210](0);
      if (!v15)
      {
        v18 = 5;
        goto LABEL_25;
      }

      if (v15 == 1)
      {
        v18 = 6;
LABEL_25:
        MEMORY[0x1DA720210](v18);
        sub_1D8B15A60();
LABEL_40:
        v28 = 0.0;
        if (v16 != 0.0)
        {
          v28 = v16;
        }

        MEMORY[0x1DA720250](*&v28);
        sub_1D88E1004(v13, v14, v15);
        return;
      }

      if (v13 > 1)
      {
        if (v13 ^ 2 | v14)
        {
          if (v13 ^ 3 | v14)
          {
            v26 = 4;
          }

          else
          {
            v26 = 3;
          }
        }

        else
        {
          v26 = 2;
        }

        goto LABEL_39;
      }

      if (!(v13 | v14))
      {
        v26 = 0;
LABEL_39:
        MEMORY[0x1DA720210](v26);
        goto LABEL_40;
      }
    }

    v26 = 1;
    goto LABEL_39;
  }

  if (EnumCaseMultiPayload != 2)
  {
    MEMORY[0x1DA720210](1);
    return;
  }

  sub_1D8918058(v11, v5, type metadata accessor for BundleClassification);
  MEMORY[0x1DA720210](3);
  BundleClassification.ClassificationType.hash(into:)(a1);
  v19 = &v5[*(v3 + 20)];
  if (*v19 != 2)
  {
    v21 = *(v19 + 1);
    v20 = *(v19 + 2);
    v22 = *(v19 + 4);
    v23 = v19[24];
    sub_1D8B16D40();
    sub_1D8B16D40();
    v24 = v23 >> 6;
    if (v23 >> 6 > 1)
    {
      if (v24 == 2)
      {
        v25 = 3;
        goto LABEL_31;
      }
    }

    else
    {
      if (v24)
      {
        v25 = 2;
        goto LABEL_31;
      }

      MEMORY[0x1DA720210](0);
      if (!v23)
      {
        v25 = 5;
        goto LABEL_31;
      }

      if (v23 == 1)
      {
        v25 = 6;
LABEL_31:
        MEMORY[0x1DA720210](v25);
        sub_1D8B15A60();
LABEL_49:
        if ((v22 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v29 = v22;
        }

        else
        {
          v29 = 0;
        }

        MEMORY[0x1DA720250](v29);
        goto LABEL_53;
      }

      if (v21 > 1)
      {
        if (v21 ^ 2 | v20)
        {
          if (v21 ^ 3 | v20)
          {
            v27 = 4;
          }

          else
          {
            v27 = 3;
          }
        }

        else
        {
          v27 = 2;
        }

        goto LABEL_48;
      }

      if (!(v21 | v20))
      {
        v27 = 0;
LABEL_48:
        MEMORY[0x1DA720210](v27);
        goto LABEL_49;
      }
    }

    v27 = 1;
    goto LABEL_48;
  }

  sub_1D8B16D40();
LABEL_53:
  v30 = *&v5[*(v3 + 24)];
  if (v30 == 0.0)
  {
    v30 = 0.0;
  }

  MEMORY[0x1DA720250](*&v30);
  sub_1D89388D8(v5, type metadata accessor for BundleClassification);
}

uint64_t RefinementState.hashValue.getter()
{
  sub_1D8B16D20();
  RefinementState.hash(into:)(v1);
  return sub_1D8B16D80();
}

uint64_t RefinementState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65828, &qword_1D8B2AC40);
  v4 = *(v3 - 8);
  v65 = v3;
  v66 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v72 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65830, &qword_1D8B2AC48);
  v7 = *(v6 - 8);
  v63 = v6;
  v64 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v55 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65838, &qword_1D8B2AC50);
  v62 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v67 = &v55 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65840, &qword_1D8B2AC58);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v69 = &v55 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65848, &qword_1D8B2AC60);
  v68 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v12 = &v55 - v11;
  v13 = type metadata accessor for RefinementState(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v55 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v55 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v55 - v23;
  v25 = a1[3];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1D89400D4();
  v26 = v74;
  sub_1D8B16DB0();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(v83);
  }

  v55 = v22;
  v57 = v19;
  v56 = v16;
  v27 = v69;
  v29 = v71;
  v28 = v72;
  v58 = v24;
  v74 = v13;
  v30 = v68;
  v31 = v73;
  v32 = v70;
  v33 = sub_1D8B16A20();
  v34 = (2 * *(v33 + 16)) | 1;
  v79 = v33;
  v80 = v33 + 32;
  v81 = 0;
  v82 = v34;
  v35 = sub_1D881F7BC();
  if (v35 == 4 || v81 != v82 >> 1)
  {
    v36 = sub_1D8B16770();
    swift_allocError();
    v37 = v12;
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0, &qword_1D8B24650);
    *v39 = v74;
    sub_1D8B16960();
    sub_1D8B16760();
    (*(*(v36 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v36);
    swift_willThrow();
    (*(v30 + 8))(v37, v32);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v83);
  }

  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v75[0] = 2;
      sub_1D894017C();
      v41 = v29;
      sub_1D8B16950();
      type metadata accessor for BundleClassification(0);
      sub_1D893FD6C(&qword_1ECA65850, type metadata accessor for BundleClassification, &protocol conformance descriptor for BundleClassification);
      v42 = v63;
      sub_1D8B169B0();
      v69 = 0;
      (*(v64 + 8))(v41, v42);
      (*(v30 + 8))(v12, v32);
      swift_unknownObjectRelease();
      v53 = v57;
      swift_storeEnumTagMultiPayload();
      v54 = v53;
    }

    else
    {
      v75[0] = 3;
      sub_1D8940128();
      v44 = v28;
      sub_1D8B16950();
      type metadata accessor for BundleClassification(0);
      sub_1D893FD6C(&qword_1ECA65850, type metadata accessor for BundleClassification, &protocol conformance descriptor for BundleClassification);
      v51 = v56;
      v52 = v65;
      sub_1D8B16A10();
      v69 = 0;
      (*(v66 + 8))(v44, v52);
      (*(v30 + 8))(v12, v32);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v54 = v51;
    }

    v50 = v58;
    sub_1D8918058(v54, v58, type metadata accessor for RefinementState);
    v45 = v31;
  }

  else if (v35)
  {
    v75[0] = 1;
    sub_1D89401D0();
    v43 = v67;
    sub_1D8B16950();
    v69 = 0;
    v45 = v31;
    (*(v62 + 8))(v43, v59);
    (*(v30 + 8))(v12, v32);
    swift_unknownObjectRelease();
    v50 = v58;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v75[0] = 0;
    sub_1D8940224();
    sub_1D8B16950();
    v45 = v31;
    sub_1D8912B50();
    v46 = v61;
    sub_1D8B16A10();
    (*(v60 + 8))(v27, v46);
    (*(v30 + 8))(v12, v32);
    swift_unknownObjectRelease();
    v69 = 0;
    v47 = v77;
    v48 = v78;
    v49 = v55;
    *v55 = v75[0];
    *(v49 + 8) = v76;
    *(v49 + 24) = v47;
    *(v49 + 32) = v48;
    swift_storeEnumTagMultiPayload();
    v50 = v58;
    sub_1D8918058(v49, v58, type metadata accessor for RefinementState);
  }

  sub_1D8918058(v50, v45, type metadata accessor for RefinementState);
  return __swift_destroy_boxed_opaque_existential_1(v83);
}

void sub_1D8930270(__int128 *a1)
{
  v3 = type metadata accessor for BundleClassification(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B8, &unk_1D8B23AC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33 - v7;
  v9 = type metadata accessor for RefinementStateInternal(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(v1, v11, type metadata accessor for RefinementStateInternal);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1D881F6FC(v11, v8, &qword_1ECA641B8, &unk_1D8B23AC0);
        MEMORY[0x1DA720210](3);
        sub_1D8939554(a1);
      }

      else
      {
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A88, &qword_1D8B2BDF0);
        sub_1D881F6FC(&v11[*(v21 + 48)], v8, &qword_1ECA641B8, &unk_1D8B23AC0);
        MEMORY[0x1DA720210](4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940, &qword_1D8B24040);
        sub_1D8B15F60();
        sub_1D8939554(a1);
      }

      sub_1D87A14E4(v8, &qword_1ECA641B8, &unk_1D8B23AC0);
      return;
    }

    v14 = *(v11 + 1);
    v15 = *(v11 + 2);
    v16 = v11[24];
    v17 = *(v11 + 4);
    MEMORY[0x1DA720210](1);
    sub_1D8B16D40();
    v18 = v16 >> 6;
    if (v16 >> 6 > 1)
    {
      if (v18 == 2)
      {
        v19 = 3;
        goto LABEL_31;
      }
    }

    else
    {
      if (v18)
      {
        v19 = 2;
        goto LABEL_31;
      }

      MEMORY[0x1DA720210](0);
      if (!v16)
      {
        v19 = 5;
        goto LABEL_31;
      }

      if (v16 == 1)
      {
        v19 = 6;
LABEL_31:
        MEMORY[0x1DA720210](v19);
        sub_1D8B15A60();
LABEL_46:
        v30 = 0.0;
        if (v17 != 0.0)
        {
          v30 = v17;
        }

        MEMORY[0x1DA720250](*&v30);
        sub_1D88E1004(v14, v15, v16);
        return;
      }

      if (v14 > 1)
      {
        if (v14 ^ 2 | v15)
        {
          if (v14 ^ 3 | v15)
          {
            v28 = 4;
          }

          else
          {
            v28 = 3;
          }
        }

        else
        {
          v28 = 2;
        }

        goto LABEL_45;
      }

      if (!(v14 | v15))
      {
        v28 = 0;
LABEL_45:
        MEMORY[0x1DA720210](v28);
        goto LABEL_46;
      }
    }

    v28 = 1;
    goto LABEL_45;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v13 = 0;
    }

    else
    {
      v13 = 2;
    }

    MEMORY[0x1DA720210](v13);
    return;
  }

  sub_1D8918058(v11, v5, type metadata accessor for BundleClassification);
  MEMORY[0x1DA720210](5);
  BundleClassification.ClassificationType.hash(into:)(a1);
  v20 = &v5[*(v3 + 20)];
  if (*v20 != 2)
  {
    v23 = *(v20 + 1);
    v22 = *(v20 + 2);
    v24 = *(v20 + 4);
    v25 = v20[24];
    sub_1D8B16D40();
    sub_1D8B16D40();
    v26 = v25 >> 6;
    if (v25 >> 6 > 1)
    {
      if (v26 == 2)
      {
        v27 = 3;
        goto LABEL_37;
      }
    }

    else
    {
      if (v26)
      {
        v27 = 2;
        goto LABEL_37;
      }

      MEMORY[0x1DA720210](0);
      if (!v25)
      {
        v27 = 5;
        goto LABEL_37;
      }

      if (v25 == 1)
      {
        v27 = 6;
LABEL_37:
        MEMORY[0x1DA720210](v27);
        sub_1D8B15A60();
LABEL_55:
        if ((v24 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v31 = v24;
        }

        else
        {
          v31 = 0;
        }

        MEMORY[0x1DA720250](v31);
        goto LABEL_59;
      }

      if (v23 > 1)
      {
        if (v23 ^ 2 | v22)
        {
          if (v23 ^ 3 | v22)
          {
            v29 = 4;
          }

          else
          {
            v29 = 3;
          }
        }

        else
        {
          v29 = 2;
        }

        goto LABEL_54;
      }

      if (!(v23 | v22))
      {
        v29 = 0;
LABEL_54:
        MEMORY[0x1DA720210](v29);
        goto LABEL_55;
      }
    }

    v29 = 1;
    goto LABEL_54;
  }

  sub_1D8B16D40();
LABEL_59:
  v32 = *&v5[*(v3 + 24)];
  if (v32 == 0.0)
  {
    v32 = 0.0;
  }

  MEMORY[0x1DA720250](*&v32);
  sub_1D89388D8(v5, type metadata accessor for BundleClassification);
}

uint64_t sub_1D89307B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_1D8B16D20();
  a3(v5);
  return sub_1D8B16D80();
}

uint64_t sub_1D8930818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1D8B16D20();
  a4(v6);
  return sub_1D8B16D80();
}

unint64_t sub_1D893085C()
{
  v1 = v0;
  v2 = type metadata accessor for RefinementStateInternal(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B8, &unk_1D8B23AC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  sub_1D8917FF0(v1, v4, type metadata accessor for RefinementStateInternal);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1D89388D8(v4, type metadata accessor for RefinementStateInternal);
      return 0x74656C706D6F632ELL;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0xD000000000000011;
    }

    else
    {
      return 0x696665526E61632ELL;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {

      v4 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A88, &qword_1D8B2BDF0) + 48);
    }

    sub_1D881F6FC(v4, v7, &qword_1ECA641B8, &unk_1D8B23AC0);
    v9 = type metadata accessor for BundleClassification(0);
    v10 = (*(*(v9 - 8) + 48))(v7, 1, v9);
    sub_1D87A14E4(v7, &qword_1ECA641B8, &unk_1D8B23AC0);
    if (v10 == 1)
    {
      return 0x6E696E696665722ELL;
    }

    else
    {
      return 0x696665722D65722ELL;
    }
  }

  else
  {
    v12 = *v4;
    v13 = *(v4 + 1);
    v14 = *(v4 + 2);
    v15 = *(v4 + 4);
    v16 = v4[24];
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_1D8B16720();

    v27 = 0xD000000000000014;
    v28 = 0x80000001D8B446E0;
    LOBYTE(v22) = v12;
    v23 = v13;
    v24 = v14;
    v25 = v16;
    v26 = v15;
    sub_1D88E0E0C();
    v17 = sub_1D8B16C90();
    v19 = v18;
    v20 = sub_1D88E1004(v13, v14, v16);
    MEMORY[0x1DA71EFA0](v17, v19, v20);

    return v27;
  }
}

uint64_t sub_1D8930B7C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v61 = a3;
  v63 = a2;
  v4 = type metadata accessor for BundleClassifier.ClassificationInfo(0);
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v56 - v8;
  v10 = type metadata accessor for BundleClassification.ClassificationType(0);
  v11 = *(v10 - 8);
  v58 = v10;
  v59 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1D8B13240();
  v20 = *(v64 - 8);
  v21 = MEMORY[0x1EEE9AC00](v64);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v56 - v24;
  v60 = a1;
  sub_1D8917FF0(a1, v19, type metadata accessor for CVBundle.BundleType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v57 = v20;
  if (EnumCaseMultiPayload == 1)
  {
    v27 = *(v20 + 32);
    v27(v23, v19, v64);
  }

  else
  {
    sub_1D8918058(v19, v16, type metadata accessor for CVTrackSnapshot);
    (*(v20 + 16))(v23, v16, v64);
    sub_1D89388D8(v16, type metadata accessor for CVTrackSnapshot);
    v27 = *(v20 + 32);
  }

  v28 = v64;
  v27(v25, v23, v64);
  v29 = v62;
  v27((v62 + OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_id), v25, v28);
  v56 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_configuration;
  v30 = v63;
  v31 = sub_1D8917FF0(v63, v29 + OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_configuration, type metadata accessor for BundleManager.Configuration);
  v32 = *v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v61;
  *(&v56 - 2) = v30;
  *(&v56 - 1) = v33;
  v34 = MEMORY[0x1E69E7CC8];
  sub_1D8927E98(MEMORY[0x1E69E7CC8], sub_1D8943AB4, (&v56 - 4), v32, type metadata accessor for BundleClassification.ClassificationType);
  *(v29 + OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_classifiers) = v35;
  *(v29 + OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_vapClient) = v33;
  v68 = v34;
  v36 = *(v32 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B20, &qword_1D8B2BE80);
  sub_1D8B15760();
  if (!v36)
  {

    v41 = v68;
LABEL_20:
    sub_1D89388D8(v60, type metadata accessor for CVBundle);
    *(v29 + OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_emptyClassificationTypeToClassificationInfo) = v41;
    sub_1D89388D8(v63, type metadata accessor for BundleManager.Configuration);
    return v29;
  }

  v37 = v32 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
  v38 = *(v59 + 72);
  while (1)
  {
    sub_1D8917FF0(v37, v13, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D8917FF0(v37, v9, type metadata accessor for BundleClassification.ClassificationType);
    v39 = type metadata accessor for BundleClassification(0);
    v40 = &v9[*(v39 + 20)];
    *v40 = 2;
    *(v40 + 8) = 0u;
    *(v40 + 24) = 0u;
    sub_1D88E0FE4(2, 0, 0, 0);
    *v40 = 2;
    *(v40 + 8) = 0u;
    *(v40 + 24) = 0u;
    *&v9[*(v39 + 24)] = 0xFFF0000000000000;
    type metadata accessor for RefinementStateInternal(0);
    swift_storeEnumTagMultiPayload();
    sub_1D8918058(v9, v7, type metadata accessor for BundleClassifier.ClassificationInfo);
    v41 = v68;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v41;
    v43 = sub_1D87EF6AC(v13);
    v45 = v41[2];
    v46 = (v44 & 1) == 0;
    v47 = __OFADD__(v45, v46);
    v48 = v45 + v46;
    if (v47)
    {
      break;
    }

    v49 = v44;
    if (v41[3] < v48)
    {
      sub_1D8974160(v48, isUniquelyReferenced_nonNull_native);
      v41 = v67;
      v43 = sub_1D87EF6AC(v13);
      if ((v49 & 1) != (v50 & 1))
      {
        goto LABEL_23;
      }

LABEL_13:
      v41 = v67;
      if (v49)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    v54 = v43;
    sub_1D896AA68();
    v43 = v54;
    v41 = v67;
    if (v49)
    {
LABEL_6:
      sub_1D89439D4(v7, v41[7] + *(v65 + 72) * v43, type metadata accessor for BundleClassifier.ClassificationInfo);
      sub_1D89388D8(v13, type metadata accessor for BundleClassification.ClassificationType);
      goto LABEL_7;
    }

LABEL_14:
    v41[(v43 >> 6) + 8] |= 1 << v43;
    v51 = v43;
    sub_1D8917FF0(v13, v41[6] + v43 * v38, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D8918058(v7, v41[7] + *(v65 + 72) * v51, type metadata accessor for BundleClassifier.ClassificationInfo);
    sub_1D89388D8(v13, type metadata accessor for BundleClassification.ClassificationType);
    v52 = v41[2];
    v47 = __OFADD__(v52, 1);
    v53 = v52 + 1;
    if (v47)
    {
      goto LABEL_22;
    }

    v41[2] = v53;
LABEL_7:
    v68 = v41;
    v37 += v38;
    if (!--v36)
    {

      v29 = v62;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  sub_1D8B16C30();
  __break(1u);

  (*(v57 + 8))(v41 + 2, v64);
  sub_1D89388D8(v56 + 2, type metadata accessor for BundleManager.Configuration);
  type metadata accessor for BundleClassifier(0);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1D8931378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D8917FF0(a2, v8, type metadata accessor for BundleClassification.ClassificationType);
  sub_1D891B79C(a2, a4, v11);
  return sub_1D895F1D8(v11, v8);
}

void sub_1D893144C()
{
  v53 = type metadata accessor for BundleClassification(0);
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v49 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for RefinementStateInternal(0);
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for RefinementState(0);
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v64 = &v49 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v49 - v8;
  v9 = type metadata accessor for BundleClassifier.ClassificationInfo(0);
  v58 = *(v9 - 8);
  v59 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BundleClassification.ClassificationType(0);
  v56 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v66 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_emptyClassificationTypeToClassificationInfo;
  swift_beginAccess();
  v14 = *(v0 + v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657B0, &qword_1D8B2ABE8);
  v15 = sub_1D8B168F0();
  v16 = v15;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v14 + 64);
  v20 = (v17 + 63) >> 6;
  v55 = v15 + 64;

  for (i = 0; v19; v16[2] = v44)
  {
    v22 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
LABEL_10:
    v25 = v22 | (i << 6);
    v26 = *(v56 + 72) * v25;
    sub_1D8917FF0(*(v14 + 48) + v26, v66, type metadata accessor for BundleClassification.ClassificationType);
    v27 = v57;
    sub_1D8917FF0(*(v14 + 56) + *(v58 + 72) * v25, v57, type metadata accessor for BundleClassifier.ClassificationInfo);
    sub_1D8917FF0(v27 + *(v59 + 20), v65, type metadata accessor for RefinementStateInternal);
    sub_1D89388D8(v27, type metadata accessor for BundleClassifier.ClassificationInfo);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      v29 = v64;
      if (EnumCaseMultiPayload == 3)
      {
        v34 = v54;
        sub_1D8918058(v65, v54, type metadata accessor for BundleClassification);
        v35 = v34;
        v36 = (v34 + *(v53 + 20));
        v37 = *v36;
        if (v37 == 2)
        {
          v38 = v52;
          sub_1D8918058(v35, v52, type metadata accessor for BundleClassification);
        }

        else
        {
          v45 = *(v36 + 4);
          v46 = *(v36 + 2);
          v50 = *(v36 + 1);
          v47 = v36[24];
          v51 = v36[24];
          sub_1D8912A68(v50, v46, v47);
          sub_1D89388D8(v54, type metadata accessor for BundleClassification);
          v48 = v37 & 1;
          v38 = v52;
          *v52 = v48;
          *(v38 + 1) = v50;
          *(v38 + 2) = v46;
          v38[24] = v51;
          *(v38 + 4) = v45;
        }

        swift_storeEnumTagMultiPayload();
        v29 = v64;
        sub_1D8918058(v38, v64, type metadata accessor for RefinementState);
        goto LABEL_22;
      }
    }

    else
    {
      v29 = v64;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v30 = v65;
        }

        else
        {
          v39 = v65;

          v30 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A88, &qword_1D8B2BDF0) + 48);
        }

        sub_1D881F6FC(v30, v29, &qword_1ECA641B8, &unk_1D8B23AC0);
      }

      else
      {
        v31 = v65;
        v32 = *(v65 + 24);
        v33 = *(v65 + 32);
        *v64 = *v65;
        *(v29 + 8) = *(v31 + 8);
        v29[24] = v32;
        *(v29 + 4) = v33;
      }
    }

    swift_storeEnumTagMultiPayload();
LABEL_22:
    v40 = v29;
    v41 = v60;
    sub_1D8918058(v40, v60, type metadata accessor for RefinementState);
    *(v55 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    sub_1D8918058(v66, v16[6] + v26, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D8918058(v41, v16[7] + *(v61 + 72) * v25, type metadata accessor for RefinementState);
    v42 = v16[2];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_29;
    }
  }

  v23 = i;
  while (1)
  {
    i = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (i >= v20)
    {

      return;
    }

    v24 = *(v14 + 64 + 8 * i);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v19 = (v24 - 1) & v24;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_1D8931AE4()
{
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B18, &qword_1D8B2BE78);
  v1 = MEMORY[0x1EEE9AC00](v51);
  v50 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v49 = &v43 - v4;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v43 - v5;
  v6 = type metadata accessor for BundleClassifier.ClassificationInfo(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_emptyClassificationTypeToClassificationInfo;
  swift_beginAccess();
  v11 = *(*(v0 + v10) + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v55 = MEMORY[0x1E69E7CC0];

  sub_1D87F4A94(0, v11, 0);
  v14 = v13;
  v12 = v55;
  v15 = v13 + 64;
  result = sub_1D8B16580();
  v17 = result;
  v18 = 0;
  v43 = v13 + 72;
  v44 = v11;
  v46 = v13;
  v47 = v9;
  v45 = v13 + 64;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(v14 + 32))
  {
    v20 = v17 >> 6;
    if ((*(v15 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_22;
    }

    v21 = *(v14 + 36);
    v52 = v18;
    v53 = v21;
    v22 = v51;
    v23 = *(v51 + 48);
    v24 = *(v14 + 48);
    v25 = v24 + *(*(type metadata accessor for BundleClassification.ClassificationType(0) - 8) + 72) * v17;
    v26 = v12;
    v27 = v48;
    sub_1D8917FF0(v25, v48, type metadata accessor for BundleClassification.ClassificationType);
    v28 = *(v14 + 56);
    v54 = *(v7 + 72);
    sub_1D8917FF0(v28 + v54 * v17, v27 + v23, type metadata accessor for BundleClassifier.ClassificationInfo);
    v29 = v49;
    sub_1D8918058(v27, v49, type metadata accessor for BundleClassification.ClassificationType);
    v30 = v27 + v23;
    v12 = v26;
    sub_1D8918058(v30, v29 + *(v22 + 48), type metadata accessor for BundleClassifier.ClassificationInfo);
    v31 = v50;
    sub_1D881F6FC(v29, v50, &qword_1ECA65B18, &qword_1D8B2BE78);
    v32 = *(v22 + 48);
    v33 = v47;
    sub_1D8918058(v31 + v32, v47, type metadata accessor for BundleClassifier.ClassificationInfo);
    sub_1D89388D8(v31, type metadata accessor for BundleClassification.ClassificationType);
    v55 = v26;
    v35 = *(v26 + 16);
    v34 = *(v26 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_1D87F4A94((v34 > 1), v35 + 1, 1);
      v12 = v55;
    }

    *(v12 + 16) = v35 + 1;
    result = sub_1D8918058(v33, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v35 * v54, type metadata accessor for BundleClassifier.ClassificationInfo);
    v14 = v46;
    v19 = 1 << *(v46 + 32);
    if (v17 >= v19)
    {
      goto LABEL_23;
    }

    v15 = v45;
    v36 = *(v45 + 8 * v20);
    if ((v36 & (1 << v17)) == 0)
    {
      goto LABEL_24;
    }

    if (v53 != *(v46 + 36))
    {
      goto LABEL_25;
    }

    v37 = v36 & (-2 << (v17 & 0x3F));
    if (v37)
    {
      v19 = __clz(__rbit64(v37)) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v38 = v20 << 6;
      v39 = v20 + 1;
      v40 = (v43 + 8 * v20);
      while (v39 < (v19 + 63) >> 6)
      {
        v42 = *v40++;
        v41 = v42;
        v38 += 64;
        ++v39;
        if (v42)
        {
          result = sub_1D87977B4(v17, v53, 0);
          v19 = __clz(__rbit64(v41)) + v38;
          goto LABEL_4;
        }
      }

      result = sub_1D87977B4(v17, v53, 0);
    }

LABEL_4:
    v18 = v52 + 1;
    v17 = v19;
    if (v52 + 1 == v44)
    {

      return v12;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_1D8931F84(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v179 = type metadata accessor for BundleClassification.ClassificationType(0);
  v156 = *(v179 - 8);
  v6 = MEMORY[0x1EEE9AC00](v179);
  v175 = v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v166 = (v144 - v9);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v180 = v144 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v150 = v144 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v151 = v144 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v149 = v144 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = (v144 - v18);
  v157 = type metadata accessor for BundleClassification(0);
  v20 = MEMORY[0x1EEE9AC00](v157);
  v22 = v144 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = v144 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v172 = v144 - v26;
  *&v176 = type metadata accessor for RefinementStateInternal(0);
  v27 = MEMORY[0x1EEE9AC00](v176);
  v158 = v144 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v165 = v144 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B10, &qword_1D8B2BE70);
  v31 = MEMORY[0x1EEE9AC00](v30 - 8);
  v164 = v144 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v34 = v144 - v33;
  v170 = type metadata accessor for BundleClassifier.ClassificationInfo(0);
  v35 = *(v170 - 8);
  v36 = MEMORY[0x1EEE9AC00](v170);
  v177 = v144 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v181 = v144 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v163 = v144 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v162 = v144 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v182 = v144 - v44;
  v45 = a2[3];
  v197 = a2[2];
  v198 = v45;
  v46 = a2[5];
  v199 = a2[4];
  v200 = v46;
  v47 = a2[1];
  v195 = *a2;
  v196 = v47;
  v48 = sub_1D8931AE4();
  v50 = *(v48 + 16);
  v169 = v35;
  if (!v50)
  {

    v117 = MEMORY[0x1E69E7CC0];
    v118 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v118)
    {
LABEL_126:

      return;
    }

    goto LABEL_97;
  }

  v152 = v22;
  v161 = a1;
  v146 = v3 + OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_id;
  v51 = *(v35 + 80);
  v144[1] = v48;
  v153 = (v51 + 32) & ~v51;
  v154 = v19;
  v52 = v48 + v153;
  v155 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_classifiers;
  v174 = (v35 + 56);
  v159 = v25;
  v160 = (v35 + 48);
  v171 = MEMORY[0x1E69E7CC0];
  v173 = *(v35 + 72);
  *&v49 = 136315650;
  v145 = v49;
  v144[0] = 0xE900000000000064;
  v53 = v165;
  v54 = v170;
  v168 = v34;
  while (1)
  {
    v178 = v50;
    v55 = v182;
    sub_1D8917FF0(v52, v182, type metadata accessor for BundleClassifier.ClassificationInfo);
    v56 = *v174;
    (*v174)(v34, 1, 1, v54);
    v57 = *(v54 + 20);
    sub_1D8917FF0(v55 + v57, v53, type metadata accessor for RefinementStateInternal);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      v167 = v56;
      if ((EnumCaseMultiPayload - 4) < 2)
      {
        goto LABEL_23;
      }

      v60 = v159;
      sub_1D8918058(v53, v159, type metadata accessor for BundleClassification);
      CVBundle.latestEstimate.getter(v192);
      v189[0] = v192[0];
      CVDetection.detection.getter(&v183);
      v61 = *(&v184 + 1);
      v62 = v185;
      __swift_project_boxed_opaque_existential_1(&v183, *(&v184 + 1));
      v63 = (*(v62 + 88))(v61, v62);

      __swift_destroy_boxed_opaque_existential_1(&v183);
      v64 = *(v60 + *(v157 + 24));
      if (qword_1EE0E54C0 != -1)
      {
        swift_once();
      }

      v65 = v63 - v64;
      v66 = qword_1EE0E54C8;
      v67 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_classificationsNeverExpire;
      swift_beginAccess();
      v34 = v168;
      v54 = v170;
      if (*(v66 + v67))
      {
        v68 = v171;
        if (v65 == INFINITY)
        {
LABEL_14:
          if (qword_1EE0E44F0 != -1)
          {
            swift_once();
          }

          v69 = sub_1D8B151E0();
          __swift_project_value_buffer(v69, qword_1EE0E44F8);
          v70 = v152;
          sub_1D8917FF0(v159, v152, type metadata accessor for BundleClassification);

          v71 = sub_1D8B151C0();
          v72 = sub_1D8B16210();

          if (os_log_type_enabled(v71, v72))
          {
            v148 = v72;
            v73 = swift_slowAlloc();
            v147 = swift_slowAlloc();
            *&v183 = v147;
            *v73 = v145;
            sub_1D8917FF0(v70, v150, type metadata accessor for BundleClassification.ClassificationType);
            v74 = swift_getEnumCaseMultiPayload();
            if (v74 > 4)
            {
              if (v74 <= 6)
              {
                if (v74 == 5)
                {
                  sub_1D89388D8(v150, type metadata accessor for BundleClassification.ClassificationType);
                  v76 = 0x6974634174786574;
                  v75 = 0xEB00000000736E6FLL;
                }

                else
                {
                  v75 = 0xE500000000000000;
                  v76 = 0x746E657665;
                }
              }

              else
              {
                v104 = 0x74616C736E617274;
                if (v74 != 8)
                {
                  v104 = 0x7A6972616D6D7573;
                }

                if (v74 == 7)
                {
                  v76 = 0x756F6C4164616572;
                }

                else
                {
                  v76 = v104;
                }

                if (v74 == 7)
                {
                  v75 = v144[0];
                }

                else
                {
                  v75 = 0xE900000000000065;
                }
              }
            }

            else if (v74 <= 1)
            {
              if (v74)
              {
                sub_1D89388D8(v150, type metadata accessor for BundleClassification.ClassificationType);
                v75 = 0xE800000000000000;
                v76 = 0x796669746E656469;
              }

              else
              {
                sub_1D89388D8(v150, type metadata accessor for BundleClassification.ClassificationType);
                v75 = 0xE400000000000000;
                v76 = 1936744813;
              }
            }

            else if (v74 == 2)
            {
              sub_1D89388D8(v150, type metadata accessor for BundleClassification.ClassificationType);
              v75 = 0xE700000000000000;
              v76 = 0x65646F63726162;
            }

            else if (v74 == 3)
            {
              v75 = 0xE600000000000000;
              v76 = 0x686372616573;
            }

            else
            {
              sub_1D89388D8(v150, type metadata accessor for BundleClassification.ClassificationType);
              v75 = 0xE400000000000000;
              v76 = 1667459446;
            }

            sub_1D89388D8(v152, type metadata accessor for BundleClassification);
            v107 = sub_1D89AC714(v76, v75, &v183);

            *(v73 + 4) = v107;
            *(v73 + 12) = 2048;
            *(v73 + 14) = v65;
            *(v73 + 22) = 2080;
            sub_1D8B13240();
            sub_1D893FD6C(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
            v108 = sub_1D8B16B50();
            v110 = sub_1D89AC714(v108, v109, &v183);

            *(v73 + 24) = v110;
            _os_log_impl(&dword_1D8783000, v71, v148, "Classification of type %s is too old (%fs) and is transitioning from .completed to .canRefine for (bundle: %s).", v73, 0x20u);
            v111 = v147;
            swift_arrayDestroy();
            MEMORY[0x1DA721330](v111, -1, -1);
            MEMORY[0x1DA721330](v73, -1, -1);

            v98 = v34;
          }

          else
          {

            sub_1D89388D8(v70, type metadata accessor for BundleClassification);
            v98 = v34;
          }

          sub_1D87A14E4(v98, &qword_1ECA65B10, &qword_1D8B2BE70);
          v112 = v159;
          sub_1D8917FF0(v159, v34, type metadata accessor for BundleClassification);
          swift_storeEnumTagMultiPayload();
          sub_1D89388D8(v112, type metadata accessor for BundleClassification);
          v167(v34, 0, 1, v54);
          goto LABEL_87;
        }
      }

      else
      {
        v96 = v151;
        sub_1D8917FF0(v159, v151, type metadata accessor for BundleClassification.ClassificationType);
        v97 = swift_getEnumCaseMultiPayload();
        sub_1D89388D8(v96, type metadata accessor for BundleClassification.ClassificationType);
        v68 = v171;
        if (v97 == 1)
        {
          if (v65 >= 3.0)
          {
            goto LABEL_14;
          }
        }

        else if (v65 >= 2.0)
        {
          goto LABEL_14;
        }
      }

      v102 = v159[*(v157 + 20)];
      if (v102 != 2)
      {
        v92 = v164;
        if (v102)
        {
          sub_1D87A14E4(v34, &qword_1ECA65B10, &qword_1D8B2BE70);
          v103 = v159;
          sub_1D8917FF0(v159, v34, type metadata accessor for BundleClassification);
          swift_storeEnumTagMultiPayload();
          sub_1D89388D8(v103, type metadata accessor for BundleClassification);
          goto LABEL_41;
        }

        sub_1D89388D8(v159, type metadata accessor for BundleClassification);
LABEL_88:
        sub_1D87A0E38(v34, v92, &qword_1ECA65B10, &qword_1D8B2BE70);
        if ((*v160)(v92, 1, v54) == 1)
        {
          sub_1D87A14E4(v34, &qword_1ECA65B10, &qword_1D8B2BE70);
          sub_1D89388D8(v182, type metadata accessor for BundleClassifier.ClassificationInfo);
          sub_1D87A14E4(v92, &qword_1ECA65B10, &qword_1D8B2BE70);
          v53 = v165;
        }

        else
        {
          v113 = v92;
          v114 = v162;
          sub_1D8918058(v113, v162, type metadata accessor for BundleClassifier.ClassificationInfo);
          sub_1D8917FF0(v114, v163, type metadata accessor for BundleClassifier.ClassificationInfo);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v68 = sub_1D87C9234(0, v68[2] + 1, 1, v68);
          }

          v116 = v68[2];
          v115 = v68[3];
          if (v116 >= v115 >> 1)
          {
            v68 = sub_1D87C9234((v115 > 1), v116 + 1, 1, v68);
          }

          sub_1D89388D8(v162, type metadata accessor for BundleClassifier.ClassificationInfo);
          sub_1D87A14E4(v34, &qword_1ECA65B10, &qword_1D8B2BE70);
          sub_1D89388D8(v182, type metadata accessor for BundleClassifier.ClassificationInfo);
          v68[2] = v116 + 1;
          v171 = v68;
          sub_1D8918058(v163, v68 + v153 + v116 * v173, type metadata accessor for BundleClassifier.ClassificationInfo);
          v53 = v165;
          v54 = v170;
        }

        goto LABEL_4;
      }

      sub_1D89388D8(v159, type metadata accessor for BundleClassification);
LABEL_87:
      v92 = v164;
      goto LABEL_88;
    }

    if (!EnumCaseMultiPayload)
    {
      break;
    }

    v34 = v168;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D87A14E4(v168, &qword_1ECA65B10, &qword_1D8B2BE70);
      sub_1D89388D8(v182, type metadata accessor for BundleClassifier.ClassificationInfo);
      v59 = v53;
    }

    else
    {
      sub_1D87A14E4(v168, &qword_1ECA65B10, &qword_1D8B2BE70);
      sub_1D89388D8(v182, type metadata accessor for BundleClassifier.ClassificationInfo);

      v59 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A88, &qword_1D8B2BDF0) + 48);
    }

    sub_1D87A14E4(v59, &qword_1ECA641B8, &unk_1D8B23AC0);
LABEL_4:
    v52 += v173;
    v50 = v178 - 1;
    if (v178 == 1)
    {

      v117 = v171;
      v118 = v171[2];
      if (!v118)
      {
        goto LABEL_126;
      }

LABEL_97:
      v119 = 0;
      v120 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_emptyClassificationTypeToClassificationInfo;
      v182 = v117 + ((*(v169 + 80) + 32) & ~*(v169 + 80));
      LODWORD(v178) = *MEMORY[0x1E69C9C08];
      v176 = xmmword_1D8B190C0;
      while (1)
      {
        if (v119 >= v117[2])
        {
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        v121 = *(v169 + 72);
        v122 = v181;
        sub_1D8917FF0(v182 + v121 * v119, v181, type metadata accessor for BundleClassifier.ClassificationInfo);
        sub_1D8917FF0(v122, v175, type metadata accessor for BundleClassification.ClassificationType);
        v123 = swift_getEnumCaseMultiPayload();
        if (v123 > 4)
        {
          v124 = v166;
          if (v123 == 5)
          {
            sub_1D89388D8(v175, type metadata accessor for BundleClassification.ClassificationType);
            *v124 = MEMORY[0x1E69E7CD0];
          }
        }

        else
        {
          v124 = v166;
          if (v123 <= 1)
          {
            if (v123)
            {
              v126 = type metadata accessor for VisualLookupClassifier.Result(0);
              (*(*(v126 - 8) + 56))(v124, 1, 1, v126);
              goto LABEL_114;
            }

            sub_1D89388D8(v175, type metadata accessor for BundleClassification.ClassificationType);
            *v124 = MEMORY[0x1E69E7CC0];
            v124[1] = 0xBFF0000000000000;
          }

          else if (v123 == 2)
          {
            sub_1D89388D8(v175, type metadata accessor for BundleClassification.ClassificationType);
            *v124 = v176;
            v124[2] = 0xE700000000000000;
            v124[3] = 0x7974706D65;
            v124[4] = 0xE500000000000000;
            v124[5] = 0;
          }

          else
          {
            if (v123 != 3)
            {
              *v166 = 0x7974706D65;
              v124[1] = 0xE500000000000000;
              v125 = sub_1D8B145A0();
              (*(*(v125 - 8) + 104))(v124, v178, v125);
LABEL_114:
              swift_storeEnumTagMultiPayload();
              sub_1D89388D8(v175, type metadata accessor for BundleClassification.ClassificationType);
              goto LABEL_116;
            }

            *v166 = 0;
          }
        }

        swift_storeEnumTagMultiPayload();
LABEL_116:
        v127 = v180;
        sub_1D8918058(v124, v180, type metadata accessor for BundleClassification.ClassificationType);
        swift_beginAccess();
        sub_1D8917FF0(v181, v177, type metadata accessor for BundleClassifier.ClassificationInfo);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v192[0] = *(v3 + v120);
        v129 = v192[0];
        *(v3 + v120) = 0x8000000000000000;
        v130 = sub_1D87EF6AC(v127);
        v132 = *(v129 + 16);
        v133 = (v131 & 1) == 0;
        v134 = __OFADD__(v132, v133);
        v135 = v132 + v133;
        if (v134)
        {
          goto LABEL_128;
        }

        v136 = v131;
        if (*(v129 + 24) < v135)
        {
          sub_1D8974160(v135, isUniquelyReferenced_nonNull_native);
          v130 = sub_1D87EF6AC(v180);
          if ((v136 & 1) != (v137 & 1))
          {
            goto LABEL_132;
          }

LABEL_121:
          v138 = v192[0];
          if (v136)
          {
            goto LABEL_98;
          }

          goto LABEL_122;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_121;
        }

        v143 = v130;
        sub_1D896AA68();
        v130 = v143;
        v138 = v192[0];
        if (v136)
        {
LABEL_98:
          sub_1D89439D4(v177, v138[7] + v130 * v121, type metadata accessor for BundleClassifier.ClassificationInfo);
          sub_1D89388D8(v180, type metadata accessor for BundleClassification.ClassificationType);
          goto LABEL_99;
        }

LABEL_122:
        v138[(v130 >> 6) + 8] |= 1 << v130;
        v139 = v130;
        v140 = v180;
        sub_1D8917FF0(v180, v138[6] + *(v156 + 72) * v130, type metadata accessor for BundleClassification.ClassificationType);
        sub_1D8918058(v177, v138[7] + v139 * v121, type metadata accessor for BundleClassifier.ClassificationInfo);
        sub_1D89388D8(v140, type metadata accessor for BundleClassification.ClassificationType);
        v141 = v138[2];
        v134 = __OFADD__(v141, 1);
        v142 = v141 + 1;
        if (v134)
        {
          goto LABEL_131;
        }

        v138[2] = v142;
LABEL_99:
        ++v119;
        *(v3 + v120) = v138;

        swift_endAccess();
        sub_1D89388D8(v181, type metadata accessor for BundleClassifier.ClassificationInfo);
        if (v118 == v119)
        {
          goto LABEL_126;
        }
      }
    }
  }

  v167 = v56;
  sub_1D89388D8(v53, type metadata accessor for RefinementStateInternal);
LABEL_23:
  sub_1D8917FF0(v182, v172, type metadata accessor for BundleClassification);
  v77 = v154;
  v78 = *(v3 + v155);
  BundleClassification.ClassificationType.asEmpty.getter(v154);
  if (!*(v78 + 16))
  {
    goto LABEL_129;
  }

  v79 = sub_1D87EF6AC(v77);
  if (v80)
  {
    sub_1D87C1470(*(v78 + 56) + 40 * v79, v192);
    sub_1D89388D8(v77, type metadata accessor for BundleClassification.ClassificationType);
    v81 = v161;
    CVBundle.latestEstimate.getter(v189);
    v191 = v189[0];
    CVDetection.detection.getter(&v183);
    v82 = *(&v184 + 1);
    v83 = v185;
    __swift_project_boxed_opaque_existential_1(&v183, *(&v184 + 1));
    v84 = (*(v83 + 88))(v82, v83);

    __swift_destroy_boxed_opaque_existential_1(&v183);
    CVBundle.workState.getter(&v183);
    if (v183 == 2)
    {
      v85 = v193;
      v86 = v194;
      __swift_project_boxed_opaque_existential_1(v192, v193);
      v185 = v197;
      v186 = v198;
      v187 = v199;
      v188 = v200;
      v183 = v195;
      v184 = v196;
      (*(v86 + 8))(v189, v81, &v183, v85, v86);
      v87 = v190;
      v68 = v171;
      if (v190 != 255)
      {
        v88 = v189[0];
        v89 = v189[1];
        __swift_destroy_boxed_opaque_existential_1(v192);
        if (v87 == 2 && v88 == 1 && !v89)
        {
          v90 = v158;
          swift_storeEnumTagMultiPayload();
          goto LABEL_37;
        }

        v84 = *(v172 + *(v157 + 24));
LABEL_36:
        v91 = v158;
        *v158 = 0;
        *(v91 + 1) = v88;
        *(v91 + 2) = v89;
        v90 = v91;
        v91[24] = v87;
        *(v91 + 4) = v84;
        swift_storeEnumTagMultiPayload();
LABEL_37:
        v92 = v164;
        v54 = v170;
LABEL_38:
        if (sub_1D893AE50(v182 + v57, v90))
        {
          sub_1D89388D8(v90, type metadata accessor for RefinementStateInternal);
          sub_1D89388D8(v172, type metadata accessor for BundleClassification);
          v34 = v168;
          goto LABEL_88;
        }

        v34 = v168;
        sub_1D87A14E4(v168, &qword_1ECA65B10, &qword_1D8B2BE70);
        sub_1D8918058(v172, v34, type metadata accessor for BundleClassification);
        sub_1D8918058(v90, &v34[*(v54 + 20)], type metadata accessor for RefinementStateInternal);
LABEL_41:
        v167(v34, 0, 1, v54);
        goto LABEL_88;
      }

      v93 = *(v172 + *(v157 + 24));
      if (qword_1EE0E54C0 != -1)
      {
        swift_once();
      }

      v94 = qword_1EE0E54C8;
      v95 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_classificationsNeverExpire;
      swift_beginAccess();
      v90 = v158;
      v54 = v170;
      if (*(v94 + v95) != 1)
      {
        v99 = v149;
        sub_1D8917FF0(v172, v149, type metadata accessor for BundleClassification.ClassificationType);
        v100 = swift_getEnumCaseMultiPayload();
        sub_1D89388D8(v99, type metadata accessor for BundleClassification.ClassificationType);
        v68 = v171;
        if (v100 == 1)
        {
          v101 = v93 + 3.0;
        }

        else
        {
          v101 = v93 + 2.0;
        }

        v92 = v164;
        if (v84 < v101)
        {
          goto LABEL_69;
        }

LABEL_73:
        __swift_destroy_boxed_opaque_existential_1(v192);
LABEL_74:
        swift_storeEnumTagMultiPayload();
        goto LABEL_38;
      }

      v68 = v171;
      v92 = v164;
      if (v84 >= v93 + INFINITY)
      {
        goto LABEL_73;
      }

LABEL_69:
      v105 = (v172 + *(v157 + 20));
      v106 = *v105;
      if (v106 == 2)
      {
        __swift_destroy_boxed_opaque_existential_1(v192);
        if (v84 <= v93)
        {
          sub_1D8917FF0(v182 + v57, v90, type metadata accessor for RefinementStateInternal);
          goto LABEL_38;
        }

        goto LABEL_74;
      }

      if (v106)
      {
        goto LABEL_73;
      }

      v88 = *(v105 + 1);
      v89 = *(v105 + 2);
      LOBYTE(v87) = v105[24];
      v84 = *(v105 + 4);
      sub_1D8912A68(v88, v89, v87);
    }

    else
    {
      v89 = 0;
      LOBYTE(v87) = 2;
      v88 = 1;
      v68 = v171;
    }

    __swift_destroy_boxed_opaque_existential_1(v192);
    goto LABEL_36;
  }

LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  sub_1D8B16C30();
  __break(1u);
}

void sub_1D8933880(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v101 = a3;
  v7 = type metadata accessor for BundleManager.Configuration(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v100 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CVBundle(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v102 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for BundleClassification.ClassificationType(0);
  v105 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v126 = (&v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for RefinementStateInternal(0);
  MEMORY[0x1EEE9AC00](v12);
  v120 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B8, &unk_1D8B23AC0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v104 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v96 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v124 = &v96 - v20;
  v107 = type metadata accessor for BundleClassification(0);
  v118 = *(v107 - 8);
  v21 = MEMORY[0x1EEE9AC00](v107);
  v98 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v103 = &v96 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v127 = &v96 - v25;
  v117 = type metadata accessor for BundleClassifier.ClassificationInfo(0);
  v119 = *(v117 - 8);
  v26 = MEMORY[0x1EEE9AC00](v117);
  v115 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v125 = &v96 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v114 = &v96 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v113 = &v96 - v32;
  v33 = a2[3];
  v133 = a2[2];
  v134 = v33;
  v34 = a2[5];
  v135 = a2[4];
  v136 = v34;
  v35 = a2[1];
  v131 = *a2;
  v132 = v35;
  v36 = sub_1D8931AE4();
  v99 = a1;
  v128[2] = a1;
  v128[3] = &v131;
  v128[4] = v4;
  v37 = sub_1D87C70C4(sub_1D8943A3C, v128, v36);
  v38 = v37;
  v39 = *(v37 + 16);
  v116 = v37;
  v112 = v39;
  if (!v39)
  {
LABEL_29:
    sub_1D8917FF0(v99, v102, type metadata accessor for CVBundle);
    v80 = v100;
    sub_1D8917FF0(v4 + OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_configuration, v100, type metadata accessor for BundleManager.Configuration);
    v81 = *(v38 + 16);
    if (v81)
    {
      sub_1D88C7A20(&v131, v129);
      v129[0] = MEMORY[0x1E69E7CC0];
      sub_1D87F3FCC(0, v81, 0);
      v82 = v129[0];
      v83 = v38 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
      v84 = *(v119 + 72);
      v85 = v98;
      do
      {
        v86 = v115;
        sub_1D8917FF0(v83, v115, type metadata accessor for BundleClassifier.ClassificationInfo);
        sub_1D8917FF0(v86, v85, type metadata accessor for BundleClassification);
        sub_1D89388D8(v86, type metadata accessor for BundleClassifier.ClassificationInfo);
        v129[0] = v82;
        v88 = *(v82 + 16);
        v87 = *(v82 + 24);
        if (v88 >= v87 >> 1)
        {
          sub_1D87F3FCC((v87 > 1), v88 + 1, 1);
          v85 = v98;
          v82 = v129[0];
        }

        *(v82 + 16) = v88 + 1;
        sub_1D8918058(v85, v82 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v88, type metadata accessor for BundleClassification);
        v83 += v84;
        --v81;
      }

      while (v81);
    }

    else
    {
      sub_1D88C7A20(&v131, v129);

      v82 = MEMORY[0x1E69E7CC0];
    }

    v89 = *(v4 + OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_vapClient);
    v90 = v101;
    sub_1D8918058(v102, v101, type metadata accessor for CVBundle);
    v91 = type metadata accessor for BundleManager.BundleClassificationRequest(0);
    v92 = (v90 + v91[5]);
    v93 = v134;
    v92[2] = v133;
    v92[3] = v93;
    v94 = v136;
    v92[4] = v135;
    v92[5] = v94;
    v95 = v132;
    *v92 = v131;
    v92[1] = v95;
    sub_1D8918058(v80, v90 + v91[6], type metadata accessor for BundleManager.Configuration);
    *(v90 + v91[7]) = v82;
    *(v90 + v91[8]) = v89;

    return;
  }

  v40 = 0;
  v41 = *(v117 + 20);
  v110 = v37 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
  v111 = v41;
  v106 = (v118 + 56);
  v123 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_emptyClassificationTypeToClassificationInfo;
  v42 = &qword_1ECA641B8;
  v43 = &unk_1D8B23AC0;
  v108 = v12;
  v109 = v4;
  while (v40 < *(v38 + 16))
  {
    v44 = *(v119 + 72);
    v45 = v113;
    sub_1D8917FF0(v110 + v44 * v40, v113, type metadata accessor for BundleClassifier.ClassificationInfo);
    sub_1D8918058(v45, v127, type metadata accessor for BundleClassification);
    sub_1D8918058(v45 + v111, v120, type metadata accessor for RefinementStateInternal);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v121 = v40;
    v122 = v44;
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_13;
      }

      v48 = v103;
      sub_1D8918058(v120, v103, type metadata accessor for BundleClassification);
      if (*(v48 + *(v107 + 20)) == 2)
      {
        v49 = v48;
        v50 = v104;
        sub_1D8918058(v49, v104, type metadata accessor for BundleClassification);
        v51 = 0;
      }

      else
      {
        sub_1D89388D8(v48, type metadata accessor for BundleClassification);
        v51 = 1;
        v50 = v104;
      }

      (*v106)(v50, v51, 1, v107);
      v47 = v50;
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1D89388D8(v120, type metadata accessor for RefinementStateInternal);
LABEL_13:
        (*v106)(v19, 1, 1, v107);
        goto LABEL_20;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v47 = v120;
      }

      else
      {
        v52 = v120;

        v47 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A88, &qword_1D8B2BDF0) + 48);
      }
    }

    sub_1D881F6FC(v47, v19, v42, v43);
LABEL_20:
    v53 = v19;
    v54 = v124;
    sub_1D881F6FC(v19, v124, v42, v43);
    v56 = v126;
    v55 = v127;
    BundleClassification.ClassificationType.asEmpty.getter(v126);
    v57 = v114;
    sub_1D8917FF0(v55, v114, type metadata accessor for BundleClassification);
    v58 = v54;
    v59 = v42;
    v60 = v43;
    sub_1D87A0E38(v58, v57 + *(v117 + 20), v42, v43);
    swift_storeEnumTagMultiPayload();
    v61 = v123;
    v62 = v109;
    swift_beginAccess();
    sub_1D8918058(v57, v125, type metadata accessor for BundleClassifier.ClassificationInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v130 = *(v62 + v61);
    v64 = v130;
    v65 = v62;
    *(v62 + v61) = 0x8000000000000000;
    v67 = sub_1D87EF6AC(v56);
    v68 = v64[2];
    v69 = (v66 & 1) == 0;
    v70 = v68 + v69;
    if (__OFADD__(v68, v69))
    {
      goto LABEL_38;
    }

    v71 = v66;
    if (v64[3] >= v70)
    {
      v43 = v60;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D896AA68();
      }
    }

    else
    {
      sub_1D8974160(v70, isUniquelyReferenced_nonNull_native);
      v72 = sub_1D87EF6AC(v126);
      if ((v71 & 1) != (v73 & 1))
      {
        goto LABEL_40;
      }

      v67 = v72;
      v43 = v60;
    }

    v19 = v53;
    v74 = v130;
    v75 = v122;
    if (v71)
    {
      sub_1D89439D4(v125, v130[7] + v67 * v122, type metadata accessor for BundleClassifier.ClassificationInfo);
      sub_1D89388D8(v126, type metadata accessor for BundleClassification.ClassificationType);
    }

    else
    {
      v130[(v67 >> 6) + 8] |= 1 << v67;
      v76 = v126;
      sub_1D8917FF0(v126, v74[6] + *(v105 + 72) * v67, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D8918058(v125, v74[7] + v67 * v75, type metadata accessor for BundleClassifier.ClassificationInfo);
      sub_1D89388D8(v76, type metadata accessor for BundleClassification.ClassificationType);
      v77 = v74[2];
      v78 = __OFADD__(v77, 1);
      v79 = v77 + 1;
      if (v78)
      {
        goto LABEL_39;
      }

      v74[2] = v79;
    }

    v40 = v121 + 1;
    v4 = v65;
    *(v65 + v123) = v74;

    swift_endAccess();
    v42 = v59;
    sub_1D87A14E4(v124, v59, v43);
    sub_1D89388D8(v127, type metadata accessor for BundleClassification);
    v38 = v116;
    if (v112 == v40)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  sub_1D8B16C30();
  __break(1u);
}

uint64_t sub_1D893441C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v29 = a2;
  v7 = type metadata accessor for RefinementStateInternal(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v26 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  v27 = *(a4 + OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_classifiers);
  v16 = *(type metadata accessor for BundleClassifier.ClassificationInfo(0) + 20);
  sub_1D8917FF0(a1 + v16, v15, type metadata accessor for RefinementStateInternal);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1D89388D8(v15, type metadata accessor for RefinementStateInternal);
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_7;
  }

  sub_1D8917FF0(a1 + v16, v13, type metadata accessor for RefinementStateInternal);
  v18 = swift_getEnumCaseMultiPayload();
  if (v18 == 1)
  {
    v19 = v13;
    goto LABEL_6;
  }

  if (v18 == 2)
  {

    v19 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A88, &qword_1D8B2BDF0) + 48)];
LABEL_6:
    sub_1D87A14E4(v19, &qword_1ECA641B8, &unk_1D8B23AC0);
    goto LABEL_7;
  }

  sub_1D89388D8(v13, type metadata accessor for RefinementStateInternal);
  swift_storeEnumTagMultiPayload();
  v22 = sub_1D893AE50(a1 + v16, v10);
  sub_1D89388D8(v10, type metadata accessor for RefinementStateInternal);
  if ((v22 & 1) == 0)
  {
    v23 = a3[3];
    v28[2] = a3[2];
    v28[3] = v23;
    v24 = a3[5];
    v28[4] = a3[4];
    v28[5] = v24;
    v25 = a3[1];
    v28[0] = *a3;
    v28[1] = v25;
    v20 = sub_1D890F760(v29, v28, v27);
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1D8934680(uint64_t a1)
{
  v2 = v1;
  v100 = type metadata accessor for RefinementStateInternal(0);
  MEMORY[0x1EEE9AC00](v100);
  v91 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BundleClassifier.ClassificationInfo(0);
  v103 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v99 = &v86 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v90 = &v86 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B10, &qword_1D8B2BE70);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v102 = &v86 - v13;
  v86 = type metadata accessor for BundleClassification.ClassificationType(0);
  v92 = *(v86 - 8);
  v14 = MEMORY[0x1EEE9AC00](v86);
  v108 = (&v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v93 = (&v86 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v86 - v18);
  v20 = type metadata accessor for BundleClassification(0);
  v101 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v106 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v86 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v109 = &v86 - v26;
  v27 = *(a1 + *(type metadata accessor for BundleManager.BundleClassificationRequest(0) + 28));
  v28 = *(v27 + 16);
  v29 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_emptyClassificationTypeToClassificationInfo;
  v89 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_id;
  result = swift_beginAccess();
  v98 = v28;
  if (v28)
  {
    v32 = 0;
    v97 = (v103 + 56);
    *&v31 = 136315650;
    v88 = v31;
    v104 = v25;
    v87 = v8;
    v96 = v19;
    v95 = v27;
    v105 = v29;
    while (v32 < *(v27 + 16))
    {
      sub_1D8917FF0(v27 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v32, v109, type metadata accessor for BundleClassification);
      BundleClassification.ClassificationType.asEmpty.getter(v19);
      v33 = *(v2 + v29);
      v34 = *(v33 + 16);

      if (!v34)
      {
        goto LABEL_30;
      }

      v35 = sub_1D87EF6AC(v19);
      if ((v36 & 1) == 0)
      {
        goto LABEL_30;
      }

      v37 = *(v33 + 56);
      v38 = v102;
      v39 = v103;
      v107 = *(v103 + 72);
      sub_1D8917FF0(v37 + v107 * v35, v102, type metadata accessor for BundleClassifier.ClassificationInfo);
      sub_1D89388D8(v19, type metadata accessor for BundleClassification.ClassificationType);

      v40 = *(v39 + 56);
      v41 = v5;
      v40(v38, 0, 1, v5);
      sub_1D87A14E4(v38, &qword_1ECA65B10, &qword_1D8B2BE70);
      if (qword_1EE0E44F0 != -1)
      {
        swift_once();
      }

      v42 = sub_1D8B151E0();
      __swift_project_value_buffer(v42, qword_1EE0E44F8);
      v43 = v109;
      sub_1D8917FF0(v109, v25, type metadata accessor for BundleClassification);
      v5 = v106;
      sub_1D8917FF0(v43, v106, type metadata accessor for BundleClassification);
      swift_retain_n();
      v44 = sub_1D8B151C0();
      v45 = sub_1D8B16200();
      if (os_log_type_enabled(v44, v45))
      {
        v94 = v45;
        v46 = v25;
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v111[0] = v48;
        *v47 = v88;
        v49 = BundleClassification.ClassificationType.caseDescription.getter();
        v51 = v50;
        sub_1D89388D8(v46, type metadata accessor for BundleClassification);
        v52 = sub_1D89AC714(v49, v51, v111);

        *(v47 + 4) = v52;
        *(v47 + 12) = 2080;
        v53 = v93;
        BundleClassification.ClassificationType.asEmpty.getter(v93);
        v54 = *(v2 + v105);
        if (!*(v54 + 16))
        {
          goto LABEL_27;
        }

        v55 = sub_1D87EF6AC(v53);
        v5 = v56;

        if ((v5 & 1) == 0)
        {
          goto LABEL_28;
        }

        v57 = v90;
        sub_1D8917FF0(*(v54 + 56) + v55 * v107, v90, type metadata accessor for BundleClassifier.ClassificationInfo);

        sub_1D89388D8(v53, type metadata accessor for BundleClassification.ClassificationType);
        v58 = v41;
        v59 = v91;
        sub_1D8917FF0(v57 + *(v41 + 20), v91, type metadata accessor for RefinementStateInternal);
        sub_1D89388D8(v57, type metadata accessor for BundleClassifier.ClassificationInfo);
        v60 = sub_1D893085C();
        v62 = v61;
        sub_1D89388D8(v59, type metadata accessor for RefinementStateInternal);
        sub_1D89388D8(v106, type metadata accessor for BundleClassification);
        v63 = sub_1D89AC714(v60, v62, v111);

        *(v47 + 14) = v63;
        *(v47 + 22) = 2080;
        sub_1D8B13240();
        sub_1D893FD6C(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v64 = sub_1D8B16B50();
        v66 = sub_1D89AC714(v64, v65, v111);

        *(v47 + 24) = v66;
        _os_log_impl(&dword_1D8783000, v44, v94, "Classification of type %s is being set to .completed from %s for (bundle: %s).", v47, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v48, -1, -1);
        MEMORY[0x1DA721330](v47, -1, -1);

        v8 = v87;
      }

      else
      {

        sub_1D89388D8(v5, type metadata accessor for BundleClassification);
        sub_1D89388D8(v25, type metadata accessor for BundleClassification);
        v58 = v41;
      }

      v5 = v108;
      v67 = v109;
      BundleClassification.ClassificationType.asEmpty.getter(v108);
      v68 = v99;
      sub_1D8917FF0(v67, v99, type metadata accessor for BundleClassification);
      v69 = v58;
      sub_1D8917FF0(v67, v68 + *(v58 + 20), type metadata accessor for BundleClassification);
      swift_storeEnumTagMultiPayload();
      v29 = v105;
      swift_beginAccess();
      sub_1D8918058(v68, v8, type metadata accessor for BundleClassifier.ClassificationInfo);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v110 = *(v2 + v29);
      v71 = v110;
      *(v2 + v29) = 0x8000000000000000;
      v72 = sub_1D87EF6AC(v5);
      v74 = v71[2];
      v75 = (v73 & 1) == 0;
      v76 = __OFADD__(v74, v75);
      v77 = v74 + v75;
      if (v76)
      {
        goto LABEL_26;
      }

      v78 = v73;
      if (v71[3] >= v77)
      {
        v5 = v69;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v85 = v72;
          sub_1D896AA68();
          v72 = v85;
        }
      }

      else
      {
        sub_1D8974160(v77, isUniquelyReferenced_nonNull_native);
        v72 = sub_1D87EF6AC(v108);
        if ((v78 & 1) != (v79 & 1))
        {
          goto LABEL_31;
        }

        v5 = v69;
      }

      v25 = v104;
      v80 = v110;
      if (v78)
      {
        sub_1D89439D4(v8, v110[7] + v72 * v107, type metadata accessor for BundleClassifier.ClassificationInfo);
        sub_1D89388D8(v108, type metadata accessor for BundleClassification.ClassificationType);
      }

      else
      {
        v110[(v72 >> 6) + 8] |= 1 << v72;
        v81 = v72;
        v82 = v108;
        sub_1D8917FF0(v108, v80[6] + *(v92 + 72) * v72, type metadata accessor for BundleClassification.ClassificationType);
        sub_1D8918058(v8, v80[7] + v81 * v107, type metadata accessor for BundleClassifier.ClassificationInfo);
        sub_1D89388D8(v82, type metadata accessor for BundleClassification.ClassificationType);
        v83 = v80[2];
        v76 = __OFADD__(v83, 1);
        v84 = v83 + 1;
        if (v76)
        {
          goto LABEL_29;
        }

        v80[2] = v84;
        v25 = v104;
      }

      ++v32;
      *(v2 + v29) = v80;

      swift_endAccess();
      result = sub_1D89388D8(v109, type metadata accessor for BundleClassification);
      v27 = v95;
      v19 = v96;
      if (v98 == v32)
      {
        return result;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    (*v97)(v102, 1, 1, v5);
    __break(1u);
LABEL_31:
    result = sub_1D8B16C30();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D89351DC(uint64_t a1, uint64_t a2)
{
  v2[27] = a1;
  v2[28] = a2;
  type metadata accessor for CVBundle(0);
  v2[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D893526C, 0, 0);
}

uint64_t sub_1D893526C()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  sub_1D8917FF0(v2, v1, type metadata accessor for CVBundle);
  v3 = type metadata accessor for BundleManager.BundleClassificationRequest(0);
  *(v0 + 240) = v3;
  v4 = (v2 + *(v3 + 20));
  v5 = v4[1];
  *(v0 + 16) = *v4;
  *(v0 + 32) = v5;
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[5];
  *(v0 + 80) = v4[4];
  *(v0 + 96) = v8;
  *(v0 + 48) = v6;
  *(v0 + 64) = v7;
  v9 = *(v2 + *(v3 + 28));
  v10 = type metadata accessor for BundleClassification(0);
  v11 = swift_task_alloc();
  *(v0 + 248) = v11;
  v11[2] = v9;
  v11[3] = v1;
  v11[4] = v0 + 16;
  v11[5] = v2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BE0, &qword_1D8B2BFB8);
  sub_1D88C7A20(v0 + 16, v0 + 112);
  v13 = swift_task_alloc();
  *(v0 + 256) = v13;
  *v13 = v0;
  v13[1] = sub_1D89353EC;

  return MEMORY[0x1EEE6DBF8](v0 + 208, v10, v12, 0, 0, &unk_1D8B2C020, v11, v10);
}

uint64_t sub_1D89353EC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8935504, 0, 0);
}

uint64_t sub_1D8935504()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v5 = *(v0 + 208);
  sub_1D8917FF0(v1, v3, type metadata accessor for CVBundle);
  sub_1D8917FF0(v4 + v2[6], v3 + v2[6], type metadata accessor for BundleManager.Configuration);
  v6 = *(v4 + v2[8]);
  v7 = (v3 + v2[5]);
  v8 = *(v0 + 96);
  v10 = *(v0 + 48);
  v9 = *(v0 + 64);
  v7[4] = *(v0 + 80);
  v7[5] = v8;
  v7[2] = v10;
  v7[3] = v9;
  v11 = *(v0 + 32);
  *v7 = *(v0 + 16);
  v7[1] = v11;
  *(v3 + v2[7]) = v5;
  *(v3 + v2[8]) = v6;

  sub_1D89388D8(v1, type metadata accessor for CVBundle);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D893561C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[37] = a5;
  v6[38] = a6;
  v6[35] = a3;
  v6[36] = a4;
  v6[33] = a1;
  v6[34] = a2;
  v7 = *(type metadata accessor for BundleManager.BundleClassificationRequest(0) - 8);
  v6[39] = v7;
  v6[40] = *(v7 + 64);
  v6[41] = swift_task_alloc();
  v8 = *(type metadata accessor for CVBundle(0) - 8);
  v6[42] = v8;
  v6[43] = *(v8 + 64);
  v6[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B8, &unk_1D8B23AC0);
  v6[47] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BF8, &qword_1D8B2C000);
  v6[48] = v9;
  v6[49] = *(v9 - 8);
  v6[50] = swift_task_alloc();
  v10 = type metadata accessor for BundleClassification(0);
  v6[51] = v10;
  v11 = *(v10 - 8);
  v6[52] = v11;
  v6[53] = *(v11 + 64);
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89358A8, 0, 0);
}

uint64_t sub_1D89358A8()
{
  v1 = *(v0 + 280);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 416);
    v43 = *(v0 + 312);
    v44 = *(v0 + 336);
    v42 = **(v0 + 272);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = v1 + v4;
    v40 = v4 + *(v0 + 424);
    v41 = v4;
    v38 = *(v3 + 72);
    v39 = *(v0 + 344) + 7;
    do
    {
      v51 = v2;
      v9 = *(v0 + 440);
      v10 = *(v0 + 448);
      v46 = v9;
      v11 = *(v0 + 368);
      v48 = v11;
      v49 = *(v0 + 360);
      v12 = *(v0 + 352);
      v13 = *(v0 + 328);
      v14 = *(v0 + 296);
      v45 = *(v0 + 304);
      v15 = *(v0 + 288);
      v50 = v5;
      sub_1D8917FF0(v5, v10, type metadata accessor for BundleClassification);
      v16 = sub_1D8B15EA0();
      v47 = *(v16 - 8);
      (*(v47 + 56))(v11, 1, 1, v16);
      sub_1D8917FF0(v10, v9, type metadata accessor for BundleClassification);
      sub_1D8917FF0(v15, v12, type metadata accessor for CVBundle);
      sub_1D8917FF0(v45, v13, type metadata accessor for BundleManager.BundleClassificationRequest);
      v17 = (v40 + *(v44 + 80)) & ~*(v44 + 80);
      v18 = (v39 + v17) & 0xFFFFFFFFFFFFFFF8;
      v19 = (*(v43 + 80) + v18 + 96) & ~*(v43 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = 0;
      v21 = (v20 + 16);
      *(v20 + 24) = 0;
      sub_1D8918058(v46, v20 + v41, type metadata accessor for BundleClassification);
      sub_1D8918058(v12, v20 + v17, type metadata accessor for CVBundle);
      v22 = (v20 + v18);
      v23 = v14[1];
      *v22 = *v14;
      v22[1] = v23;
      v24 = v14[5];
      v26 = v14[2];
      v25 = v14[3];
      v22[4] = v14[4];
      v22[5] = v24;
      v22[2] = v26;
      v22[3] = v25;
      sub_1D8918058(v13, v20 + v19, type metadata accessor for BundleManager.BundleClassificationRequest);
      sub_1D87A0E38(v48, v49, &unk_1ECA675E0, &qword_1D8B23B60);
      v27 = (*(v47 + 48))(v49, 1, v16);
      v28 = *(v0 + 360);
      v29 = *(v0 + 296);
      if (v27 == 1)
      {
        sub_1D88C7A20(v29, v0 + 16);
        sub_1D87A14E4(v28, &unk_1ECA675E0, &qword_1D8B23B60);
        if (*v21)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1D88C7A20(v29, v0 + 112);
        sub_1D8B15E90();
        (*(v47 + 8))(v28, v16);
        if (*v21)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v30 = sub_1D8B15E00();
          v31 = v32;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v30 = 0;
      v31 = 0;
LABEL_10:
      v33 = swift_allocObject();
      *(v33 + 16) = &unk_1D8B2C010;
      *(v33 + 24) = v20;

      if (v31 | v30)
      {
        v6 = v0 + 208;
        *(v0 + 208) = 0;
        *(v0 + 216) = 0;
        *(v0 + 224) = v30;
        *(v0 + 232) = v31;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 448);
      v8 = *(v0 + 368);
      *(v0 + 240) = 1;
      *(v0 + 248) = v6;
      *(v0 + 256) = v42;
      swift_task_create();

      sub_1D87A14E4(v8, &unk_1ECA675E0, &qword_1D8B23B60);
      sub_1D89388D8(v7, type metadata accessor for BundleClassification);
      v5 = v50 + v38;
      v2 = v51 - 1;
    }

    while (v51 != 1);
  }

  sub_1D8B15E30();
  *(v0 + 456) = MEMORY[0x1E69E7CC0];
  v34 = swift_task_alloc();
  *(v0 + 464) = v34;
  *v34 = v0;
  v34[1] = sub_1D8935DAC;
  v35 = *(v0 + 376);
  v36 = *(v0 + 384);

  return MEMORY[0x1EEE6D8A8](v35, 0, 0, v36);
}

uint64_t sub_1D8935DAC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8935EA8, 0, 0);
}

uint64_t sub_1D8935EA8()
{
  v1 = v0[47];
  v2 = (*(v0[52] + 48))(v1, 1, v0[51]);
  v3 = v0[57];
  if (v2 == 1)
  {
    v4 = v0[33];
    (*(v0[49] + 8))(v0[50], v0[48]);
    *v4 = v3;

    v5 = v0[1];

    return v5();
  }

  else
  {
    sub_1D8918058(v1, v0[54], type metadata accessor for BundleClassification);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v0[57];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1D87C7D74(0, v8[2] + 1, 1, v0[57]);
    }

    v10 = v8[2];
    v9 = v8[3];
    if (v10 >= v9 >> 1)
    {
      v8 = sub_1D87C7D74((v9 > 1), v10 + 1, 1, v8);
    }

    v11 = v0[54];
    v12 = v0[52];
    v8[2] = v10 + 1;
    sub_1D8918058(v11, v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10, type metadata accessor for BundleClassification);
    v0[57] = v8;
    v13 = swift_task_alloc();
    v0[58] = v13;
    *v13 = v0;
    v13[1] = sub_1D8935DAC;
    v14 = v0[47];
    v15 = v0[48];

    return MEMORY[0x1EEE6D8A8](v14, 0, 0, v15);
  }
}

uint64_t sub_1D893611C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[17] = a6;
  v7[18] = a7;
  v7[15] = a4;
  v7[16] = a5;
  v7[14] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D8936144, 0, 0);
}

uint64_t sub_1D8936144()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = v1[1];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  v4 = v1[5];
  v6 = v1[2];
  v5 = v1[3];
  *(v0 + 80) = v1[4];
  *(v0 + 96) = v4;
  *(v0 + 48) = v6;
  *(v0 + 64) = v5;
  v7 = type metadata accessor for BundleManager.BundleClassificationRequest(0);
  v8 = *(v7 + 24);
  v9 = *(v2 + *(v7 + 32));
  v10 = swift_task_alloc();
  *(v0 + 152) = v10;
  *v10 = v0;
  v10[1] = sub_1D8936220;
  v11 = *(v0 + 128);
  v12 = *(v0 + 112);

  return sub_1D890DE44(v12, v11, (v0 + 16), v2 + v8, v9);
}

uint64_t sub_1D8936220()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D8936314()
{
  v1 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_id;
  v2 = sub_1D8B13240();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D89388D8(v0 + OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_configuration, type metadata accessor for BundleManager.Configuration);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8936404@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22VisualIntelligenceCoreP33_08481D38E9BA75BAB15F2C1D47A8120216BundleClassifier_id;
  v5 = sub_1D8B13240();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t BundleManager.Configuration.summarizationSource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BundleManager.Configuration(0) + 32);
  v4 = sub_1D8B15340();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BundleManager.Configuration.summarizationSource.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BundleManager.Configuration(0) + 32);
  v4 = sub_1D8B15340();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

double BundleManager.Configuration.suppressedDataDetectorTypes.getter()
{
  type metadata accessor for BundleManager.Configuration(0);

  return result;
}

void BundleManager.Configuration.suppressedDataDetectorTypes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BundleManager.Configuration(0) + 36);

  *(v1 + v3) = a1;
}

uint64_t BundleManager.Configuration.vapWorkflow.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BundleManager.Configuration(0) + 40);
  v4 = sub_1D8B150F0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BundleManager.Configuration.vapWorkflow.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BundleManager.Configuration(0) + 40);
  v4 = sub_1D8B150F0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BundleManager.Configuration.visualLookUpMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BundleManager.Configuration(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t BundleManager.Configuration.visualLookUpMode.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for BundleManager.Configuration(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t _s22VisualIntelligenceCore13BundleManagerC13ConfigurationV15factorySettingsAEvgZ_0@<X0>(uint64_t a1@<X8>)
{
  *a1 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO13allEmptyCasesSayAEGvgZ_0();
  *(a1 + 8) = 1061158912;
  if (qword_1EE0E6008 != -1)
  {
    swift_once();
  }

  *(a1 + 12) = (byte_1EE0ED6C0 & 1) == 0;
  v2 = type metadata accessor for InternalSettings();
  v3 = sub_1D8B15940();
  LODWORD(v2) = [v2 BOOLForKey:v3 defaultValue:0];

  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  *(a1 + 13) = v4;
  v5 = type metadata accessor for BundleManager.Configuration(0);
  v6 = v5[8];
  v7 = *MEMORY[0x1E69C9A80];
  v8 = sub_1D8B15340();
  (*(*(v8 - 8) + 104))(a1 + v6, v7, v8);
  *(a1 + v5[9]) = MEMORY[0x1E69E7CD0];
  v9 = v5[10];
  v10 = *MEMORY[0x1E69DFC20];
  v11 = sub_1D8B150F0();
  result = (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  *(a1 + v5[11]) = 2;
  return result;
}

uint64_t static BundleManager.Configuration.cameraSettings.getter@<X0>(uint64_t a1@<X8>)
{
  v74 = type metadata accessor for BundleClassification.ClassificationType(0);
  v70 = *(v74 - 8);
  v2 = MEMORY[0x1EEE9AC00](v74);
  v68 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v67 = &v53 - v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v72 = (&v53 - v7);
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v53 - v8;
  v9 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO13allEmptyCasesSayAEGvgZ_0();
  *(a1 + 8) = 1061158912;
  if (qword_1EE0E6008 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v10 = type metadata accessor for InternalSettings();
    v11 = sub_1D8B15940();
    LODWORD(v10) = [v10 BOOLForKey:v11 defaultValue:0];

    v12 = v10 ? 1 : 2;
    *(a1 + 13) = v12;
    v13 = type metadata accessor for BundleManager.Configuration(0);
    v14 = v13[8];
    v15 = *MEMORY[0x1E69C9A80];
    v16 = sub_1D8B15340();
    v17 = *(v16 - 8);
    v18 = *(v17 + 104);
    v65 = v14;
    v64 = v15;
    v62 = v17 + 104;
    v63 = v16;
    v60 = v17;
    v61 = v18;
    (v18)(a1 + v14, v15);
    *(a1 + v13[9]) = MEMORY[0x1E69E7CD0];
    v19 = v13[10];
    v20 = *MEMORY[0x1E69DFC20];
    v21 = sub_1D8B150F0();
    v22 = *(v21 - 8);
    v23 = *(v22 + 104);
    v58 = v21;
    v59 = v19;
    v57 = v22 + 104;
    v55 = v22;
    v56 = v23;
    result = (v23)(a1 + v19, v20);
    v25 = v13[11];
    v66 = a1;
    v54 = v25;
    *(a1 + v25) = 2;
    v69 = v9[2];
    v75 = v9;
    if (!v69)
    {
      break;
    }

    v26 = 0;
    v71 = *MEMORY[0x1E69C9C08];
    v27 = v72;
    while (1)
    {
      if (v26 >= v9[2])
      {
        __break(1u);
        goto LABEL_40;
      }

      v28 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      a1 = *(v70 + 72);
      v29 = v73;
      sub_1D8917FF0(v9 + v28 + a1 * v26, v73, type metadata accessor for BundleClassification.ClassificationType);
      *v27 = 0x7974706D65;
      v27[1] = 0xE500000000000000;
      v30 = sub_1D8B145A0();
      v31 = *(*(v30 - 8) + 104);
      v31(v27, v71, v30);
      swift_storeEnumTagMultiPayload();
      v32 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO2eeoiySbAE_AEtFZ_0(v29, v27);
      sub_1D89388D8(v27, type metadata accessor for BundleClassification.ClassificationType);
      result = sub_1D89388D8(v29, type metadata accessor for BundleClassification.ClassificationType);
      v33 = v26 + 1;
      if (v32)
      {
        break;
      }

      ++v26;
      v9 = v75;
      if (v69 == v33)
      {
        v33 = v75[2];
        v34 = v33;
        v35 = v66;
        goto LABEL_31;
      }
    }

    v69 = v28;
    v70 = a1;
    v9 = v75;
    v36 = v75[2];
    if (v36 - 1 == v26)
    {
      v35 = v66;
      v34 = v26;
      goto LABEL_31;
    }

    v37 = v69 + v70 * v33;
    a1 = v31;
    v34 = v26;
    v38 = v30;
    while (v33 < v36)
    {
      v75 = v9;
      v40 = v73;
      sub_1D8917FF0(v9 + v37, v73, type metadata accessor for BundleClassification.ClassificationType);
      v41 = v72;
      *v72 = 0x7974706D65;
      *(v41 + 8) = 0xE500000000000000;
      v31(v41, v71, v38);
      swift_storeEnumTagMultiPayload();
      v42 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO2eeoiySbAE_AEtFZ_0(v40, v41);
      sub_1D89388D8(v41, type metadata accessor for BundleClassification.ClassificationType);
      result = sub_1D89388D8(v40, type metadata accessor for BundleClassification.ClassificationType);
      if (v42)
      {
        v9 = v75;
        v39 = v70;
      }

      else
      {
        if (v33 == v34)
        {
          v9 = v75;
        }

        else
        {
          v9 = v75;
          v43 = v69;
          if (v34 < 0)
          {
            goto LABEL_41;
          }

          v44 = v75[2];
          if (v34 >= v44)
          {
            goto LABEL_42;
          }

          v45 = v34 * v70;
          sub_1D8917FF0(v75 + v69 + v34 * v70, v67, type metadata accessor for BundleClassification.ClassificationType);
          if (v33 >= v44)
          {
            goto LABEL_43;
          }

          sub_1D8917FF0(v9 + v37, v68, type metadata accessor for BundleClassification.ClassificationType);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v75 = sub_1D8939478(v75);
          }

          v9 = v75;
          sub_1D89439D4(v68, v75 + v43 + v45, type metadata accessor for BundleClassification.ClassificationType);
          if (v33 >= v9[2])
          {
            goto LABEL_44;
          }

          result = sub_1D89439D4(v67, v9 + v37, type metadata accessor for BundleClassification.ClassificationType);
        }

        v39 = v70;
        ++v34;
      }

      ++v33;
      v36 = v9[2];
      v37 += v39;
      if (v33 == v36)
      {
        v75 = v9;
        v35 = v66;
        if (v33 < v34)
        {
          __break(1u);
        }

        else if ((v34 & 0x8000000000000000) == 0)
        {
          goto LABEL_31;
        }

        __break(1u);
        goto LABEL_48;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  v33 = 0;
  v34 = 0;
  v35 = v66;
LABEL_31:
  if (__OFADD__(v33, v34 - v33))
  {
LABEL_48:
    __break(1u);
  }

  else
  {
    v46 = v75;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v35 = v46;
    if (!isUniquelyReferenced_nonNull_native || v34 > v46[3] >> 1)
    {
      if (v33 <= v34)
      {
        v48 = v34;
      }

      else
      {
        v48 = v33;
      }

      v46 = sub_1D87C9378(isUniquelyReferenced_nonNull_native, v48, 1, v46);
      *v35 = v46;
    }

    sub_1D88641F8(v34, v33, 0);
    *v35 = v46;
    *(v35 + 12) = 1;
    *(v35 + v54) = 1;
    v50 = v58;
    v49 = v59;
    (*(v55 + 8))(v35 + v59, v58);
    v56(v35 + v49, *MEMORY[0x1E69DFC18], v50);
    v51 = v65;
    v52 = v63;
    (*(v60 + 8))(v35 + v65, v63);
    return v61(v35 + v51, v64, v52);
  }

  return result;
}

unint64_t sub_1D8937244()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x666B726F57706176;
    if (v1 != 6)
    {
      v5 = 0xD000000000000010;
    }

    v6 = 0xD00000000000001BLL;
    if (v1 == 4)
    {
      v6 = 0xD000000000000013;
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
    v2 = 0xD00000000000002BLL;
    if (v1 != 2)
    {
      v2 = 0xD000000000000016;
    }

    v3 = 0xD000000000000028;
    if (!*v0)
    {
      v3 = 0xD00000000000001ALL;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D893735C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8943738(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8937390(uint64_t a1)
{
  v2 = sub_1D89411D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D89373CC(uint64_t a1)
{
  v2 = sub_1D89411D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleManager.Configuration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65858, &qword_1D8B2AC68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D89411D4();
  sub_1D8B16DD0();
  v12 = *v3;
  HIBYTE(v11) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65868, &qword_1D8B2AC70);
  sub_1D8941228();
  sub_1D8B16AE0();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1D8B16AC0();
    LOBYTE(v12) = 2;
    sub_1D8B16AA0();
    LOBYTE(v12) = *(v3 + 13);
    HIBYTE(v11) = 3;
    sub_1D89412DC();
    sub_1D8B16AE0();
    v9 = type metadata accessor for BundleManager.Configuration(0);
    LOBYTE(v12) = 4;
    sub_1D8B15340();
    sub_1D893FD6C(&qword_1ECA65880, MEMORY[0x1E69C9A90], MEMORY[0x1E69C9A98]);
    sub_1D8B16AE0();
    v12 = *(v3 + *(v9 + 36));
    HIBYTE(v11) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65888, &qword_1D8B2AC78);
    sub_1D8941330();
    sub_1D8B16AE0();
    LOBYTE(v12) = 6;
    sub_1D8B150F0();
    sub_1D893FD6C(&qword_1ECA658A0, MEMORY[0x1E69DFC28], MEMORY[0x1E69DFC30]);
    sub_1D8B16AE0();
    LOBYTE(v12) = *(v3 + *(v9 + 44));
    HIBYTE(v11) = 7;
    sub_1D89413E4();
    sub_1D8B16AE0();
  }

  return (*(v6 + 8))(v8, v5);
}