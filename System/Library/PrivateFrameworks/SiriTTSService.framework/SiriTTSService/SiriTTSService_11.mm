void sub_1B1B6D27C(void *a1, void (*a2)(void *, void *), uint64_t a3, void *a4)
{
  if (a1)
  {
    v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x118);
    v31 = a1;
    v6 = v5();
    if (v6)
    {
      v7 = v6;
      v8 = sub_1B1ABFFF8();
      v9 = [v7 bundlePath];
      v10 = sub_1B1C2CB58();
      v12 = v11;

      type metadata accessor for VoiceAsset();
      v13 = swift_allocObject();
      v13[2] = v8;
      v13[3] = v10;
      v13[4] = v12;
      a2(0, v13);

      v14 = [objc_opt_self() defaultCenter];
      v29 = v14;
      if (qword_1EB760FF8 != -1)
      {
        swift_once();
        v14 = v29;
      }

      [v14 postNotificationName:qword_1EB761000 object:{0, v29}];

      v15 = v30;
    }

    else
    {
      sub_1B1C2D538();
      MEMORY[0x1B27381B0](0xD000000000000039, 0x80000001B1C4FBD0);
      v23 = [v31 description];
      v24 = sub_1B1C2CB58();
      v26 = v25;

      MEMORY[0x1B27381B0](v24, v26);

      sub_1B1A9EC9C();
      v27 = swift_allocError();
      *v28 = 1;
      *(v28 + 8) = 0;
      *(v28 + 16) = 0xE000000000000000;
      a2(v27, 0);

      v15 = v31;
    }
  }

  else
  {
    sub_1B1C2D538();

    v17 = [a4 description];
    v18 = sub_1B1C2CB58();
    v20 = v19;

    MEMORY[0x1B27381B0](v18, v20);

    sub_1B1A9EC9C();
    v21 = swift_allocError();
    *v22 = 1;
    *(v22 + 8) = 0xD00000000000001ALL;
    *(v22 + 16) = 0x80000001B1C4DD80;
    a2(v21, 0);
    v15 = v21;
  }
}

void sub_1B1B6D604()
{
  OUTLINED_FUNCTION_26_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_38_1();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B1C38B50;
  if (qword_1ED9A9978 != -1)
  {
LABEL_25:
    OUTLINED_FUNCTION_6(&qword_1ED9A9978);
  }

  v1 = qword_1ED9A9980;
  *(v0 + 32) = qword_1ED9A9980;
  v2 = qword_1ED9A9850;
  v3 = v1;
  if (v2 != -1)
  {
    OUTLINED_FUNCTION_22(&qword_1ED9A9850);
  }

  v4 = qword_1ED9A97E0;
  *(v0 + 40) = qword_1ED9A97E0;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_34_7();
  sub_1B1B6B778(v6, v7);
  v8 = OUTLINED_FUNCTION_33_2();
  v10 = static TTSAsset.listAssets(ofTypes:matching:)(v8, v9);

  v0 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v11 = sub_1B1A9547C();
  v12 = 0;
  while (v11 != v12)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1B2738A20](v12, v10);
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v13 = *(v10 + 8 * v12 + 32);
    }

    v14 = v13;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    type metadata accessor for TTSAssetTrialAsset();
    if (swift_dynamicCastClass())
    {
      MEMORY[0x1B2738320]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B1C2CE98();
      }

      sub_1B1C2CEC8();
      v0 = v18;
      ++v12;
    }

    else
    {

      ++v12;
    }
  }

  type metadata accessor for TTSAssetTrialAsset();
  static TTSAssetTrialAsset.purge(assets:then:)(v0, 0, 0);

  if (v11)
  {
    v15 = [objc_opt_self() defaultCenter];
    v16 = v15;
    if (qword_1EB760FF8 != -1)
    {
      swift_once();
      v15 = v16;
    }

    [v15 postNotificationName:qword_1EB761000 object:{0, v16}];
  }
}

uint64_t sub_1B1B6D8E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627A8, &unk_1B1C396D0);
  inited = swift_initStackObject();
  v4 = OUTLINED_FUNCTION_14_2(inited, xmmword_1B1C36280);
  v5 = MEMORY[0x1E69E6370];
  v4[2].n128_u8[8] = 1;
  v4[4].n128_u64[0] = v5;
  v4[4].n128_u64[1] = 7;
  if (qword_1ED9A94C8 != -1)
  {
LABEL_19:
    OUTLINED_FUNCTION_6_19(&qword_1ED9A94C8);
  }

  v6 = qword_1ED9A94B8;
  inited[6].n128_u64[1] = sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  inited[5].n128_u64[0] = v6;
  type metadata accessor for TTSAssetProperty(0);
  OUTLINED_FUNCTION_0_26();
  v9 = sub_1B1A97A5C(v7, v8, &unk_1B1C35CF4);
  v10 = v6;
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_46_5();
  type metadata accessor for TTSAsset();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_66();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B1C37D90;
  if (qword_1ED9A9960 != -1)
  {
    OUTLINED_FUNCTION_12_4(&qword_1ED9A9960);
  }

  v12 = qword_1ED9A9968;
  *(v11 + 32) = qword_1ED9A9968;
  v13 = v12;
  inited = static TTSAsset.listAssets(ofTypes:matching:)(v11, v9);

  v14 = MEMORY[0x1E69E7CC0];
  v35 = MEMORY[0x1E69E7CC0];
  sub_1B1A9547C();
  OUTLINED_FUNCTION_23_4();
  while (v9 != v0)
  {
    if (v1)
    {
      v15 = MEMORY[0x1B2738A20](v0, inited);
    }

    else
    {
      if (v0 >= *(v2 + 16))
      {
        goto LABEL_18;
      }

      v15 = inited[2].n128_u64[v0];
    }

    v16 = v15;
    if (__OFADD__(v0, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_21_6();
    v18 = (*(v17 + 280))();
    if (v18)
    {
      v19 = v18;
      v34 = sub_1B1ABC174();
      v20 = [v19 bundlePath];
      sub_1B1C2CB58();
      v33 = v21;

      type metadata accessor for ResourceAsset();
      OUTLINED_FUNCTION_66();
      v22 = swift_allocObject();
      OUTLINED_FUNCTION_17_10(v22, v23, v24, v25, v26, v27, v28, v29, v32, v33, v34);
      OUTLINED_FUNCTION_10_3();
      if (v30)
      {
        OUTLINED_FUNCTION_9_14();
      }

      OUTLINED_FUNCTION_39_6();
      v14 = v35;
      ++v0;
    }

    else
    {

      ++v0;
    }
  }

  return v14;
}

uint64_t sub_1B1B6DBA4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3[1])
  {
    v7 = *a3 | 2;
  }

  else
  {
    v7 = *a3;
  }

  return sub_1B1B6DBBC(a1, a2, v7, a4, a5, a6, a7);
}

uint64_t sub_1B1B6DBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_46_5();
  sub_1B1C2C988();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_16_13();
  v28 = sub_1B1C2C9D8();
  OUTLINED_FUNCTION_7();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22_5();
  v18 = swift_allocObject();
  v18[2] = v7;
  v18[3] = a2;
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = a5;
  OUTLINED_FUNCTION_10_21(v18);
  OUTLINED_FUNCTION_8_14(COERCE_DOUBLE(1107296256));
  v30 = v19;
  v31 = &block_descriptor_6_3;
  v20 = _Block_copy(aBlock);

  sub_1B1A94514(a4, a5);
  sub_1B1C2C9A8();
  OUTLINED_FUNCTION_13_19();
  sub_1B1A97A5C(v21, v22, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
  sub_1B1A97978(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430);
  sub_1B1C2D418();
  MEMORY[0x1B2738610](0, v9, v8, v20);
  _Block_release(v20);
  v23 = OUTLINED_FUNCTION_33_2();
  v24(v23);
  (*(v16 + 8))(v9, v28);
}

void sub_1B1B6DE34(uint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627A8, &unk_1B1C396D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C36280;
  v14 = MEMORY[0x1E69E6158];
  *(inited + 32) = 1;
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  *(inited + 64) = v14;
  *(inited + 72) = 7;
  v15 = qword_1ED9A94C8;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1ED9A94B8;
  *(inited + 104) = sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  *(inited + 80) = v16;
  type metadata accessor for TTSAssetProperty(0);
  sub_1B1A97A5C(&qword_1ED9A90A0, type metadata accessor for TTSAssetProperty, &unk_1B1C35CF4);
  v17 = v16;
  v18 = sub_1B1C2CAB8();
  type metadata accessor for TTSAsset();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B1C37D90;
  if (qword_1ED9A9960 != -1)
  {
    swift_once();
  }

  v20 = qword_1ED9A9968;
  *(v19 + 32) = qword_1ED9A9968;
  v21 = v20;
  v22 = static TTSAsset.bestAsset(ofTypes:matching:)(v19, v18);

  if (v22)
  {
    if ([v22 locallyAvailable])
    {
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v23 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v23, qword_1ED9A9120);

      v24 = sub_1B1C2C888();
      v25 = sub_1B1C2D0D8();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        aBlock = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_1B1A930E4(a1, a2, &aBlock);
        _os_log_impl(&dword_1B1A8A000, v24, v25, "Resource asset is locally available: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x1B2739FD0](v27, -1, -1);
        MEMORY[0x1B2739FD0](v26, -1, -1);
      }

      (a3)(0);
    }

    else
    {
      v30 = swift_allocObject();
      *(v30 + 16) = a6;
      *(v30 + 24) = a7;
      v39 = sub_1B1B4B178;
      v40 = v30;
      aBlock = MEMORY[0x1E69E9820];
      v36 = 1107296256;
      v37 = sub_1B1B203B8;
      v38 = &block_descriptor_54_0;
      v31 = _Block_copy(&aBlock);
      sub_1B1A94514(a6, a7);

      v32 = swift_allocObject();
      v32[2] = a3;
      v32[3] = a4;
      v32[4] = a1;
      v32[5] = a2;
      v39 = sub_1B1B4B104;
      v40 = v32;
      aBlock = MEMORY[0x1E69E9820];
      v36 = 1107296256;
      v37 = sub_1B1B20428;
      v38 = &block_descriptor_60_0;
      v33 = _Block_copy(&aBlock);

      [v22 downloadWithOptions:a5 progress:v31 then:v33];
      _Block_release(v33);
      _Block_release(v31);
    }
  }

  else
  {
    sub_1B1C2D538();

    MEMORY[0x1B27381B0](a1, a2);
    sub_1B1A9EC9C();
    v28 = swift_allocError();
    *v29 = 1;
    *(v29 + 8) = 0xD00000000000001CLL;
    *(v29 + 16) = 0x80000001B1C4DD20;
    a3();
  }
}

void sub_1B1B6E374(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627A8, &unk_1B1C396D0);
  inited = swift_initStackObject();
  v5 = OUTLINED_FUNCTION_14_2(inited, xmmword_1B1C364D0);
  v6 = OUTLINED_FUNCTION_32_8(v5, MEMORY[0x1E69E6370]);
  v7 = MEMORY[0x1E69E6158];
  v6[10] = a1;
  v6[11] = a2;
  v6[13] = v7;
  v6[14] = 7;
  v8 = qword_1ED9A94C8;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_6_19(&qword_1ED9A94C8);
  }

  v9 = qword_1ED9A94B8;
  inited[9].n128_u64[0] = sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  inited[7].n128_u64[1] = v9;
  type metadata accessor for TTSAssetProperty(0);
  OUTLINED_FUNCTION_0_26();
  sub_1B1A97A5C(v10, v11, &unk_1B1C35CF4);
  v12 = v9;
  OUTLINED_FUNCTION_25_4();
  v13 = OUTLINED_FUNCTION_26_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_66();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B1C37D90;
  if (qword_1ED9A9960 != -1)
  {
    OUTLINED_FUNCTION_12_4(&qword_1ED9A9960);
  }

  v15 = qword_1ED9A9968;
  *(v14 + 32) = qword_1ED9A9968;
  v16 = v15;
  v17 = OUTLINED_FUNCTION_72();
  static TTSAsset.bestAsset(ofTypes:matching:)(v17, v18);
  OUTLINED_FUNCTION_5_4();

  if (v13)
  {
    [v13 purgeThen_];
  }
}

void sub_1B1B6E520(uint64_t a1)
{
  sub_1B1A93378(a1, aBlock);
  type metadata accessor for TTSAsset();
  if (swift_dynamicCast())
  {
    v1 = aBlock[6];
    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B1B20428;
    aBlock[3] = &block_descriptor_9_0;
    v2 = _Block_copy(aBlock);
    [v1 cancelDownloadingThen_];
    _Block_release(v2);
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v3 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v3, qword_1ED9A9120);
    v1 = sub_1B1C2C888();
    v4 = sub_1B1C2D0B8();
    if (OUTLINED_FUNCTION_10_2(v4))
    {
      OUTLINED_FUNCTION_45_0();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_25_7(&dword_1B1A8A000, v5, v6, "Unable to cancel download of non-TTSAssetTrialAsset asset");
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }
  }
}

uint64_t sub_1B1B6E6BC(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_1B1ABAF00(1u);
  }

  else
  {
    type metadata accessor for TTSAssetProperty(0);
    OUTLINED_FUNCTION_0_26();
    sub_1B1A97A5C(v2, v3, &unk_1B1C35CF4);
    v1 = sub_1B1C2CAB8();
  }

  v12 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762520, &qword_1B1C39820);
  OUTLINED_FUNCTION_40_5(v4, &unk_1F28BA508, v9, v10[0], v10[1], v10[2], v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_66();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B1C37D90;
  if (qword_1ED9A4F08 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED9A4F10;
  *(v5 + 32) = qword_1ED9A4F10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762930, &qword_1B1C39C08);
  v10[0] = v5;
  v7 = v6;
  sub_1B1AB51D0(v10, 7);
  return v12;
}

uint64_t sub_1B1B6E800()
{
  OUTLINED_FUNCTION_26_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_38_1();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C38B50;
  if (qword_1ED9A9978 != -1)
  {
LABEL_19:
    OUTLINED_FUNCTION_6(&qword_1ED9A9978);
  }

  v5 = qword_1ED9A9980;
  *(v4 + 32) = qword_1ED9A9980;
  v6 = qword_1ED9A9850;
  v7 = v5;
  if (v6 != -1)
  {
    OUTLINED_FUNCTION_22(&qword_1ED9A9850);
  }

  v8 = qword_1ED9A97E0;
  *(v4 + 40) = qword_1ED9A97E0;
  v9 = v8;
  v10 = sub_1B1B6E6BC(v0);
  OUTLINED_FUNCTION_27_9(v10);
  OUTLINED_FUNCTION_37_6();

  v11 = MEMORY[0x1E69E7CC0];
  v32 = MEMORY[0x1E69E7CC0];
  sub_1B1A9547C();
  OUTLINED_FUNCTION_23_4();
  while (v4 != v1)
  {
    if (v2)
    {
      v12 = MEMORY[0x1B2738A20](v1, v0);
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_18;
      }

      v12 = *(v0 + 8 * v1 + 32);
    }

    v13 = v12;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_21_6();
    v15 = (*(v14 + 280))();
    if (v15)
    {
      v16 = v15;
      v31 = sub_1B1ABFFF8();
      v17 = [v16 bundlePath];
      sub_1B1C2CB58();
      v30 = v18;

      type metadata accessor for VoiceAsset();
      OUTLINED_FUNCTION_66();
      v19 = swift_allocObject();
      OUTLINED_FUNCTION_17_10(v19, v20, v21, v22, v23, v24, v25, v26, v29, v30, v31);
      OUTLINED_FUNCTION_10_3();
      if (v27)
      {
        OUTLINED_FUNCTION_9_14();
      }

      OUTLINED_FUNCTION_39_6();
      v11 = v32;
      ++v1;
    }

    else
    {

      ++v1;
    }
  }

  return v11;
}

void *sub_1B1B6EA54(uint64_t a1, uint64_t a2, uint64_t *a3, void **a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627A8, &unk_1B1C396D0);
  inited = swift_initStackObject();
  v10 = OUTLINED_FUNCTION_14_2(inited, xmmword_1B1C364D0);
  v11 = OUTLINED_FUNCTION_32_8(v10, MEMORY[0x1E69E6370]);
  v12 = MEMORY[0x1E69E6158];
  v11[10] = a1;
  v11[11] = a2;
  v11[13] = v12;
  v11[14] = 7;
  v13 = *a3;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = *a4;
  inited[9].n128_u64[0] = sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  inited[7].n128_u64[1] = v14;
  type metadata accessor for TTSAssetProperty(0);
  OUTLINED_FUNCTION_0_26();
  sub_1B1A97A5C(v15, v16, &unk_1B1C35CF4);
  v17 = v14;
  OUTLINED_FUNCTION_25_4();
  v18 = OUTLINED_FUNCTION_26_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_66();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B1C37D90;
  if (qword_1ED9A9960 != -1)
  {
    OUTLINED_FUNCTION_12_4(&qword_1ED9A9960);
  }

  v20 = qword_1ED9A9968;
  *(v19 + 32) = qword_1ED9A9968;
  v21 = v20;
  v22 = OUTLINED_FUNCTION_72();
  static TTSAsset.bestAsset(ofTypes:matching:)(v22, v23);
  OUTLINED_FUNCTION_5_4();

  if (v18)
  {
    OUTLINED_FUNCTION_21_6();
    v25 = (*(v24 + 280))();
    if (v25)
    {
      v26 = v25;
      sub_1B1ABC174();
      v27 = [v26 bundlePath];
      sub_1B1C2CB58();
      OUTLINED_FUNCTION_52_3();

      type metadata accessor for ResourceAsset();
      OUTLINED_FUNCTION_66();
      v28 = swift_allocObject();
      return OUTLINED_FUNCTION_47_4(v28);
    }
  }

  return 0;
}

void *sub_1B1B6EC88()
{
  result = sub_1B1B6ECA8();
  qword_1EB772E90 = result;
  return result;
}

void *sub_1B1B6ECA8()
{
  v0 = sub_1B1C2CAB8();
  type metadata accessor for VoiceAsset();
  v1 = sub_1B1C2CAB8();
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 allCompactResources];

  sub_1B1A8E474(0, &qword_1EB762938, off_1E7AF1A50);
  v4 = sub_1B1C2CE78();

  v5 = sub_1B1A9547C();
  if (!v5)
  {
LABEL_21:

    return v1;
  }

  v6 = v5;
  if (v5 < 1)
  {
    goto LABEL_24;
  }

  v7 = 0;
  v48 = v4 & 0xC000000000000001;
  v45 = v4;
  v46 = v0;
  v44 = v5;
  while (1)
  {
    if (v48)
    {
      v8 = MEMORY[0x1B2738A20](v7, v4);
    }

    else
    {
      v8 = *(v4 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = [v8 language];
    sub_1B1C2CB58();

    MEMORY[0x1B27381B0](95, 0xE100000000000000);
    v11 = [v9 name];
    v12 = sub_1B1C2CB58();
    v14 = v13;

    MEMORY[0x1B27381B0](v12, v14);

    if (!*(v0 + 16))
    {

LABEL_16:

      goto LABEL_20;
    }

    v15 = sub_1B1A8EB10();
    v17 = v16;

    if ((v17 & 1) == 0)
    {
      goto LABEL_16;
    }

    v18 = (*(v0 + 56) + 16 * v15);
    v19 = *v18;
    v20 = v18[1];
    swift_bridgeObjectRetain_n();
    v21 = [v9 name];
    sub_1B1C2CB58();

    v22 = objc_allocWithZone(type metadata accessor for SynthesisVoice());
    v23 = SynthesisVoice.init(language:name:)();
    v24 = OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0];
    swift_beginAccess();
    *&v23[v24] = 1;
    v25 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
    swift_beginAccess();
    *&v23[v25] = 1;
    v26 = v23;
    v27 = [v9 path];
    v28 = sub_1B1C2CB58();
    v30 = v29;

    v31 = swift_allocObject();
    v47 = v26;
    v31[2] = v26;
    v31[3] = v28;
    v31[4] = v30;
    swift_isUniquelyReferenced_nonNull_native();
    v32 = v19;
    v33 = sub_1B1A8EB10();
    if (__OFADD__(v1[2], (v34 & 1) == 0))
    {
      break;
    }

    v35 = v33;
    v36 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762940, &unk_1B1C39C10);
    if (sub_1B1C2D628())
    {
      v37 = sub_1B1A8EB10();
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_25;
      }

      v35 = v37;
    }

    if (v36)
    {
      *(v1[7] + 8 * v35) = v31;
    }

    else
    {
      v1[(v35 >> 6) + 8] |= 1 << v35;
      v39 = (v1[6] + 16 * v35);
      *v39 = v32;
      v39[1] = v20;
      *(v1[7] + 8 * v35) = v31;
      v40 = v1[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_23;
      }

      v1[2] = v42;
    }

    v4 = v45;
    v0 = v46;
    v6 = v44;
LABEL_20:
    if (v6 == ++v7)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1B1C2D818();
  __break(1u);
  return result;
}

void sub_1B1B6F118()
{
  OUTLINED_FUNCTION_23_1();
  v2 = v0 == 0x4F4E2D626ELL && v1 == 0xE500000000000000;
  if (v2 || (v3 = v1, v4 = v0, (sub_1B1C2D7A8() & 1) != 0))
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v5 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v5, qword_1ED9A9120);
    v6 = sub_1B1C2C888();
    v7 = sub_1B1C2D098();
    if (OUTLINED_FUNCTION_10_2(v7))
    {
      OUTLINED_FUNCTION_45_0();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_25_7(&dword_1B1A8A000, v8, v9, "Falling back to no-NO voice since nb-NO is not available");
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }

LABEL_11:
    OUTLINED_FUNCTION_72();
    if ((sub_1B1C2D7A8() & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (v4 != 0x2D752D4E562D6976 || v3 != 0xEF74636E762D6473)
  {
    goto LABEL_11;
  }

LABEL_18:

  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v11 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v11, qword_1ED9A9120);
  v12 = sub_1B1C2C888();
  v13 = sub_1B1C2D098();
  if (OUTLINED_FUNCTION_10_2(v13))
  {
    OUTLINED_FUNCTION_45_0();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_25_7(&dword_1B1A8A000, v14, v15, "Falling back to vi-VN buildInVoiceAsset for vi-VN-u-sd-vnct");
    OUTLINED_FUNCTION_14();
    MEMORY[0x1B2739FD0]();
  }

LABEL_23:
  if (qword_1EB761640 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_72();
  if (sub_1B1B302B4())
  {
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v16 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v16, qword_1ED9A9120);

    v17 = sub_1B1C2C888();
    v18 = sub_1B1C2D0C8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v19 = 136446210;
      v20 = OUTLINED_FUNCTION_72();
      v23 = sub_1B1A930E4(v20, v21, v22);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1B1A8A000, v17, v18, "Unfound built-in voice for language %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_22_4();
}

uint64_t sub_1B1B6F454()
{
  v1 = OUTLINED_FUNCTION_46_5();
  type metadata accessor for TTSAssetProperty(v1);
  OUTLINED_FUNCTION_0_26();
  sub_1B1A97A5C(v2, v3, &unk_1B1C35CF4);
  v85 = sub_1B1C2CAB8();
  v11 = OUTLINED_FUNCTION_36_8(v85, v4, v5, v6, v7, v8, v9, v10, v63, v66, v69, v72, v75, v78, v81, 1);
  sub_1B1AB51D0(v11, 5);
  if (v0)
  {
    v12 = &v0[OBJC_IVAR___SiriTTSSynthesisVoice_language];
    swift_beginAccess();
    v13 = *(v12 + 1);
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = *v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      v84 = *v12;

      v23 = OUTLINED_FUNCTION_36_8(v15, v16, v17, v18, v19, v20, v21, v22, v64, v67, v70, v73, v76, v79, v82, v84);
      sub_1B1AB51D0(v23, 1);
    }

    v24 = OBJC_IVAR___SiriTTSSynthesisVoice_gender;
    swift_beginAccess();
    v25 = *&v0[v24];
    if (!v25)
    {
      v26 = v0;
      sub_1B1B6F6E8(v26);
      v25 = v27;
    }

    if (v25 == 2)
    {
      type metadata accessor for TTSAssetVoiceGender(0);
      v36 = 2;
    }

    else
    {
      if (v25 != 1)
      {
        goto LABEL_13;
      }

      type metadata accessor for TTSAssetVoiceGender(0);
      v36 = 1;
    }

    v37 = OUTLINED_FUNCTION_36_8(v28, v29, v30, v31, v32, v33, v34, v35, v64, v67, v70, v73, v76, v79, v82, v36);
    sub_1B1AB51D0(v37, 2);
  }

LABEL_13:
  if (qword_1ED9A97B8 != -1)
  {
    OUTLINED_FUNCTION_8_0(&qword_1ED9A97B8);
  }

  v38 = qword_1ED9A97C0;
  sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
  v39 = v38;
  v47 = OUTLINED_FUNCTION_36_8(v39, v40, v41, v42, v43, v44, v45, v46, v64, v67, v70, v73, v76, v79, v82, v38);
  sub_1B1AB51D0(v47, 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_38_1();
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1B1C38B50;
  if (qword_1ED9A9840 != -1)
  {
    OUTLINED_FUNCTION_19_8(&qword_1ED9A9840);
  }

  v49 = qword_1ED9A9728;
  *(v48 + 32) = qword_1ED9A9728;
  v50 = qword_1ED9A9630;
  v51 = v49;
  if (v50 != -1)
  {
    OUTLINED_FUNCTION_18_7(&qword_1ED9A9630);
  }

  v52 = qword_1ED9A9638;
  *(v48 + 40) = qword_1ED9A9638;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762930, &qword_1B1C39C08);
  v53 = v52;
  v61 = OUTLINED_FUNCTION_36_8(v53, v54, v55, v56, v57, v58, v59, v60, v65, v68, v71, v74, v77, v80, v83, v48);
  sub_1B1AB51D0(v61, 7);
  return v85;
}

void sub_1B1B6F6E8(uint64_t a1)
{
  v2 = [type metadata accessor for TTSAsset() assistantVoiceMaps];
  swift_beginAccess();

  v3 = sub_1B1AE795C();

  if (v3)
  {
    v4 = sub_1B1A9547C();
    v5 = (a1 + OBJC_IVAR___SiriTTSSynthesisVoice_name);
    swift_beginAccess();
    for (i = 0; ; ++i)
    {
      if (v4 == i)
      {

        goto LABEL_18;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1B2738A20](i, v3);
      }

      else
      {
        if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v7 = *(v3 + 8 * i + 32);
      }

      v8 = v7;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v9 = v5[1];
      if (v9)
      {
        v10 = *&v7[OBJC_IVAR___TTSAssistantAsset_name] == *v5 && v9 == *&v7[OBJC_IVAR___TTSAssistantAsset_name + 8];
        if (v10 || (sub_1B1C2D7A8() & 1) != 0)
        {

          v11 = *&v8[OBJC_IVAR___TTSAssistantAsset_assistantGender];

          sub_1B1B6B718(v11);
          return;
        }
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void *sub_1B1B6F8B4(uint64_t a1)
{
  v2 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
  swift_beginAccess();
  if ((*(a1 + v2) | 2) == 2)
  {
    type metadata accessor for TTSAsset();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
    OUTLINED_FUNCTION_66();
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1B1C37D90;
    if (qword_1ED9A98D0 != -1)
    {
      swift_once();
    }

    v4 = qword_1ED9A98D8;
    *(v3 + 32) = qword_1ED9A98D8;
    v5 = v4;
    sub_1B1B6F454();
    v6 = OUTLINED_FUNCTION_33_2();
    v8 = static TTSAsset.bestAsset(ofTypes:matching:)(v6, v7);

    if (v8)
    {
      OUTLINED_FUNCTION_21_6();
      v10 = (*(v9 + 280))();
      if (v10)
      {
        v11 = v10;
        sub_1B1ABFFF8();
        v12 = [v11 bundlePath];
        sub_1B1C2CB58();
        OUTLINED_FUNCTION_52_3();

        type metadata accessor for VoiceAsset();
        OUTLINED_FUNCTION_66();
        v13 = swift_allocObject();
        return OUTLINED_FUNCTION_47_4(v13);
      }
    }
  }

  return 0;
}

uint64_t sub_1B1B6FA80(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_1B1ABAF00(1u);
  }

  else
  {
    type metadata accessor for TTSAssetProperty(0);
    OUTLINED_FUNCTION_0_26();
    sub_1B1A97A5C(v2, v3, &unk_1B1C35CF4);
    v1 = sub_1B1C2CAB8();
  }

  v15 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762520, &qword_1B1C39820);
  OUTLINED_FUNCTION_40_5(v4, &unk_1F28BA508, v12, v13[0], v13[1], v13[2], v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_38_1();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B1C38B50;
  if (qword_1ED9A9630 != -1)
  {
    OUTLINED_FUNCTION_18_7(&qword_1ED9A9630);
  }

  v6 = qword_1ED9A9638;
  *(v5 + 32) = qword_1ED9A9638;
  v7 = qword_1ED9A4EF8;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED9A4F00;
  *(v5 + 40) = qword_1ED9A4F00;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762930, &qword_1B1C39C08);
  v13[0] = v5;
  v10 = v9;
  sub_1B1AB51D0(v13, 7);
  return v15;
}

void sub_1B1B6FBF4()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_26_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_66();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B1C37D90;
  if (qword_1ED9A9978 != -1)
  {
    OUTLINED_FUNCTION_6(&qword_1ED9A9978);
  }

  v2 = qword_1ED9A9980;
  *(v1 + 32) = qword_1ED9A9980;
  v3 = v2;
  v4 = sub_1B1B6FA80(v0);
  OUTLINED_FUNCTION_27_9(v4);
  OUTLINED_FUNCTION_37_6();

  v5 = sub_1B1A9547C();
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  sub_1B1C2D5B8();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v8 = OUTLINED_FUNCTION_33_2();
        v9 = MEMORY[0x1B2738A20](v8);
      }

      else
      {
        v9 = *(v0 + 8 * v7 + 32);
      }

      v10 = v9;
      ++v7;
      sub_1B1ABFFF8();

      sub_1B1C2D588();
      OUTLINED_FUNCTION_38_5();
      sub_1B1C2D5C8();
      OUTLINED_FUNCTION_38_5();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
    }

    while (v6 != v7);
LABEL_10:

    OUTLINED_FUNCTION_22_4();
    return;
  }

  __break(1u);
}

void *sub_1B1B6FD70(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_46_5();
  type metadata accessor for TTSAsset();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_66();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C37D90;
  if (qword_1ED9A9978 != -1)
  {
    OUTLINED_FUNCTION_6(&qword_1ED9A9978);
  }

  v5 = qword_1ED9A9980;
  *(v4 + 32) = qword_1ED9A9980;
  v6 = v5;
  a2(v2);
  v7 = OUTLINED_FUNCTION_33_2();
  v9 = static TTSAsset.bestAsset(ofTypes:matching:)(v7, v8);

  if (v9)
  {
    OUTLINED_FUNCTION_21_6();
    v11 = (*(v10 + 280))();
    if (v11)
    {
      v12 = v11;
      sub_1B1ABFFF8();
      v13 = [v12 bundlePath];
      sub_1B1C2CB58();
      OUTLINED_FUNCTION_52_3();

      type metadata accessor for VoiceAsset();
      OUTLINED_FUNCTION_66();
      v14 = swift_allocObject();
      return OUTLINED_FUNCTION_47_4(v14);
    }
  }

  return 0;
}

uint64_t sub_1B1B6FEC8()
{
  type metadata accessor for ResourceAsset();
  result = sub_1B1C2CAB8();
  qword_1EB7610E0 = result;
  return result;
}

void *sub_1B1B6FF08(uint64_t a1, uint64_t a2)
{
  if (qword_1EB7610D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  OUTLINED_FUNCTION_72();
  v4 = sub_1B1B302B4();
  if (v4)
  {
    v5 = v4;
    swift_endAccess();
    v6 = [objc_opt_self() defaultManager];

    v7 = sub_1B1C2CB28();

    v8 = [v6 fileExistsAtPath_];

    if (v8)
    {
      return v5;
    }

    swift_beginAccess();
    OUTLINED_FUNCTION_72();
    sub_1B1B70744();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627A8, &unk_1B1C396D0);
  inited = swift_initStackObject();
  v10 = OUTLINED_FUNCTION_14_2(inited, xmmword_1B1C364D0);
  v11 = OUTLINED_FUNCTION_32_8(v10, MEMORY[0x1E69E6370]);
  v12 = MEMORY[0x1E69E6158];
  v11[10] = a1;
  v11[11] = a2;
  v11[13] = v12;
  v11[14] = 7;
  v13 = qword_1ED9A9840;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_19_8(&qword_1ED9A9840);
  }

  v14 = qword_1ED9A9728;
  inited[9].n128_u64[0] = sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  inited[7].n128_u64[1] = v14;
  type metadata accessor for TTSAssetProperty(0);
  OUTLINED_FUNCTION_0_26();
  sub_1B1A97A5C(v15, v16, &unk_1B1C35CF4);
  v17 = v14;
  v18 = sub_1B1C2CAB8();
  type metadata accessor for TTSAsset();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_66();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B1C37D90;
  if (qword_1ED9A9960 != -1)
  {
    OUTLINED_FUNCTION_12_4(&qword_1ED9A9960);
  }

  v20 = qword_1ED9A9968;
  *(v19 + 32) = qword_1ED9A9968;
  v21 = v20;
  v22 = static TTSAsset.bestAsset(ofTypes:matching:)(v19, v18);

  if (!v22)
  {
    return 0;
  }

  v24 = MEMORY[0x1E69E7D40];
  v25 = (*((*MEMORY[0x1E69E7D40] & *v22) + 0x118))(v23);
  if (v25)
  {
    v26 = v25;
    v27 = objc_allocWithZone(type metadata accessor for SynthesisResource());

    v28 = OUTLINED_FUNCTION_72();
    v30 = SynthesisResource.init(language:)(v28, v29);
    v31 = (*((*v24 & *v22) + 0xA8))();
    v32 = OBJC_IVAR___SiriTTSSynthesisResource_version;
    v33 = v31 / 100000;
    OUTLINED_FUNCTION_66_0(&v30[OBJC_IVAR___SiriTTSSynthesisResource_version], v41);
    *&v30[v32] = v33;
    v34 = v30;
    v35 = [v26 bundlePath];
    v36 = sub_1B1C2CB58();
    v38 = v37;

    type metadata accessor for ResourceAsset();
    OUTLINED_FUNCTION_66();
    v5 = swift_allocObject();
    v5[2] = v34;
    v5[3] = v36;
    v5[4] = v38;
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v40 = qword_1EB7610E0;
    OUTLINED_FUNCTION_38_5();
    sub_1B1B374BC();
    qword_1EB7610E0 = v40;
    swift_endAccess();

    v22 = v26;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1B1B7037C(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7622F8, &qword_1B1C37910), v2 = sub_1B1C2D4F8(), v3 = v2, (v24 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v22 = v1;
    v23 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v23 + 8 * v4++);
      sub_1B1C2CB58();
      sub_1B1C2D888();
      v25 = v6;
      sub_1B1C2CC48();
      v7 = sub_1B1C2D8E8();

      v8 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v9 = v7 & v8;
        v10 = (v7 & v8) >> 6;
        v11 = *(v5 + 8 * v10);
        v12 = 1 << (v7 & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        v13 = sub_1B1C2CB58();
        v15 = v14;
        if (v13 == sub_1B1C2CB58() && v15 == v16)
        {

          goto LABEL_17;
        }

        v18 = sub_1B1C2D7A8();

        if (v18)
        {

          goto LABEL_17;
        }

        v7 = v9 + 1;
      }

      *(v5 + 8 * v10) = v12 | v11;
      *(*(v3 + 48) + 8 * v9) = v25;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      *(v3 + 16) = v21;
LABEL_17:
      v1 = v22;
      if (v4 == v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

double sub_1B1B70580@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1B1A8EB10();
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762480, &unk_1B1C37E50);
    OUTLINED_FUNCTION_43_6();
    v8 = sub_1B1C2D628();
    OUTLINED_FUNCTION_49_4(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18);
    sub_1B1A9EEE0((*(v4 + 56) + 32 * v7), a1);
    sub_1B1C2D648();
    *v2 = v4;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_1B1B70654()
{
  v1 = v0;
  v2 = sub_1B1A8EB10();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7625C8, &qword_1B1C39C20);
  OUTLINED_FUNCTION_43_6();
  sub_1B1C2D628();

  v5 = *(*(v7 + 56) + 16 * v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762310, &unk_1B1C379A0);
  sub_1B1C2D648();
  *v1 = v7;
  return v5;
}

uint64_t sub_1B1B70744()
{
  v1 = v0;
  v2 = sub_1B1A8EB10();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762578, &qword_1B1C38130);
  sub_1B1C2D628();

  v5 = *(*(v7 + 56) + 8 * v4);
  type metadata accessor for ResourceAsset();
  sub_1B1C2D648();
  *v1 = v7;
  return v5;
}

uint64_t sub_1B1B7081C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1B1A8EB10();
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762570, &qword_1B1C39C00);
    OUTLINED_FUNCTION_43_6();
    v8 = sub_1B1C2D628();
    OUTLINED_FUNCTION_49_4(v8, v9, v10, v11, v12, v13, v14, v15, v22, v23);
    v16 = *(v4 + 56);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624A8, &unk_1B1C38120);
    sub_1B1B37D08(v16 + *(*(v17 - 8) + 72) * v7, a1);
    sub_1B1C2D648();
    *v2 = v4;
    v18 = a1;
    v19 = 0;
    v20 = v17;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624A8, &unk_1B1C38120);
    v18 = OUTLINED_FUNCTION_34_7();
  }

  return __swift_storeEnumTagSinglePayload(v18, v19, 1, v20);
}

uint64_t getEnumTagSinglePayload for DownloadOption(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DownloadOption(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B1B70F7C()
{
  swift_beginAccess();
  [*(*(v0 + 48) + 40) lock];
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  [*(v1 + 40) unlock];
  return v2;
}

void *sub_1B1B70FE4()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  [*(*(v0 + 32) + 40) lock];
  v1 = *(v0 + 32);
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  v4 = v2;
  [v3 unlock];
  return v2;
}

void *sub_1B1B71054()
{
  swift_beginAccess();
  [*(*(v0 + 48) + 40) lock];
  v1 = *(v0 + 48);
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  v4 = v2;
  [v3 unlock];
  return v2;
}

uint64_t sub_1B1B710F4()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
}

uint64_t sub_1B1B71128(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

double sub_1B1B711C0()
{
  sub_1B1B53CC0();
  if ((v1 & 0x100000000) != 0)
  {
    v9 = v0[12];
    v10 = v0[13];
    __swift_project_boxed_opaque_existential_1(v0 + 9, v9);
    *&v11 = COERCE_DOUBLE((*(v10 + 8))(v9, v10));
    if (v12)
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v13 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v13, qword_1ED9A9120);
      v14 = sub_1B1C2C888();
      v15 = sub_1B1C2D0D8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1B1A8A000, v14, v15, "Default Osprey timeout: 1.0", v16, 2u);
        OUTLINED_FUNCTION_14();
        MEMORY[0x1B2739FD0]();
      }

      return 1.0;
    }

    else
    {
      v17 = v11;
      v8 = *&v11;
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v18 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v18, qword_1ED9A9120);
      v19 = sub_1B1C2C888();
      v20 = sub_1B1C2D0D8();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 134217984;
        *(v21 + 4) = v17;
        _os_log_impl(&dword_1B1A8A000, v19, v20, "Osprey config specifies timeout: %f", v21, 0xCu);
        OUTLINED_FUNCTION_14();
        MEMORY[0x1B2739FD0]();
      }
    }
  }

  else
  {
    v2 = *&v1;
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v3 = v2;
    v4 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v4, qword_1ED9A9120);
    v5 = sub_1B1C2C888();
    v6 = sub_1B1C2D0D8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      v8 = v3;
      *(v7 + 4) = v8;
      _os_log_impl(&dword_1B1A8A000, v5, v6, "Internal setting specifies timeout: %f", v7, 0xCu);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }

    else
    {

      return v3;
    }
  }

  return v8;
}

uint64_t OspreyTTSAction.init(pool:)(uint64_t a1)
{
  v2 = v1;
  v1[5] = MEMORY[0x1E69E7CC0];
  type metadata accessor for AsynchronousContext();
  swift_allocObject();
  v1[6] = sub_1B1ADA774();
  v3 = OBJC_IVAR____TtC14SiriTTSService15OspreyTTSAction_streamingStartedDate;
  v4 = sub_1B1C2C428();
  __swift_storeEnumTagSinglePayload(v2 + v3, 1, 1, v4);
  v2[4] = sub_1B1AA1E5C();
  v2[8] = sub_1B1B19360();
  v2[7] = sub_1B1AA1C5C();
  sub_1B1B194FC();
  sub_1B1B197C4(&v8, &v9);
  v5 = sub_1B1B197C4(&v9, (v2 + 9));
  v2[15] = sub_1B1ADB340(v5);
  type metadata accessor for Timeout(0);
  swift_allocObject();
  v2[14] = sub_1B1BC78CC();
  v6 = _s14SiriTTSService17PassThroughActionCACycfc_0();

  return v6;
}

uint64_t sub_1B1B716BC()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

  return sub_1B1A90C20(v0 + OBJC_IVAR____TtC14SiriTTSService15OspreyTTSAction_streamingStartedDate, &qword_1EB761D88, &qword_1B1C36488);
}

uint64_t OspreyTTSAction.deinit()
{
  sub_1B1B323C8();
  v0 = Buffer.deinit();

  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

  sub_1B1A90C20(v0 + OBJC_IVAR____TtC14SiriTTSService15OspreyTTSAction_streamingStartedDate, &qword_1EB761D88, &qword_1B1C36488);
  return v0;
}

uint64_t OspreyTTSAction.__deallocating_deinit()
{
  v0 = OspreyTTSAction.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1B1B71810()
{
  v2 = *v0;
  v127 = v0;
  v3 = v2;
  v4 = sub_1B1C2C428();
  OUTLINED_FUNCTION_7();
  v124 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762088, &unk_1B1C371C0);
  OUTLINED_FUNCTION_45();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v111 - v11;
  v13 = type metadata accessor for SynthesisCacheFile(0);
  OUTLINED_FUNCTION_45();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_16();
  v17 = v16 - v15;
  sub_1B1AA61C0(0x74736575716572, &v133);
  if (!v134)
  {
    sub_1B1A90C20(&v133, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762318, &qword_1B1C38FA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    sub_1B1A9EC9C();
    swift_allocError();
    *v24 = 1;
    *(v24 + 8) = 0xD000000000000031;
    *(v24 + 16) = 0x80000001B1C4FC10;
    swift_willThrow();
    return;
  }

  v116 = v4;
  v117 = v3;
  v18 = v13;
  v121 = v17;
  v122 = v1;
  v19 = v132;
  ObjectType = swift_getObjectType();
  v21 = SynthesizingRequestProtocol.voice.getter(ObjectType);
  v22 = &v21[OBJC_IVAR___SiriTTSSynthesisVoice_name];
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v23 = *(v22 + 1);

  if (v23)
  {
  }

  else
  {
    v25 = SynthesizingRequestProtocol.voice.getter(ObjectType);
    v26 = OBJC_IVAR___SiriTTSSynthesisVoice_gender;
    OUTLINED_FUNCTION_11_0();
    swift_beginAccess();
    v27 = *&v25[v26];

    if (!v27)
    {
      v130 = 0;
      v131 = 0xE000000000000000;
      sub_1B1C2D538();

      v130 = 0xD00000000000002ELL;
      v131 = 0x80000001B1C4FC50;
      v129 = (*((*MEMORY[0x1E69E7D40] & *v19) + 0x90))(v90);
      v91 = sub_1B1C2D778();
      MEMORY[0x1B27381B0](v91);

      MEMORY[0x1B27381B0](32032, 0xE200000000000000);
      v92 = v130;
      v93 = v131;
      sub_1B1A9EC9C();
      swift_allocError();
      *v94 = 6;
      *(v94 + 8) = v92;
      *(v94 + 16) = v93;
      swift_willThrow();

      return;
    }
  }

  v126 = v19;
  v29 = SynthesizingRequestProtocol.text.getter() == 0xD000000000000010 && 0x80000001B1C4A490 == v28;
  v123 = v18;
  if (v29)
  {

    v31 = 0;
  }

  else
  {
    v30 = sub_1B1C2D7A8();

    v31 = 0;
    if ((v30 & 1) == 0)
    {
      sub_1B1AC5D40();
      if (v32 == 2)
      {
        v31 = 1;
      }

      else
      {
        v31 = v32 ^ 1;
      }
    }
  }

  HIDWORD(v115) = v31;
  v125 = type metadata accessor for DataContainer();
  OUTLINED_FUNCTION_17();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1B1C2CAB8();
  v34 = v126;
  v35 = v126;
  sub_1B1ACFA84(v34);
  v36 = [objc_allocWithZone(type metadata accessor for AudioData()) init];
  v37 = &v36[OBJC_IVAR___SiriTTSAudioData_asbd];
  swift_beginAccess();
  *v37 = 0x40E7700000000000;
  *(v37 + 8) = xmmword_1B1C387F0;
  *(v37 + 24) = xmmword_1B1C38800;
  v118 = v36;
  sub_1B1ACC2E4(v36);
  v119 = v33;
  v38 = v127;
  sub_1B1AA81A8(v33);
  v39 = v38[15];
  if (!v39)
  {
    v40 = v35;

    goto LABEL_20;
  }

  v40 = v35;
  v41 = v35;

  v42 = sub_1B1B75704(v41, ObjectType);
  v44 = v43;

  sub_1B1AEA43C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v123) == 1)
  {

    sub_1B1A90C20(v12, &qword_1EB762088, &unk_1B1C371C0);
LABEL_20:
    v45 = v123;
    if (qword_1ED9A4D38 != -1)
    {
      swift_once();
    }

    v46 = qword_1ED9A4D40;
    OUTLINED_FUNCTION_17();
    v47 = swift_allocObject();
    v48 = v127;
    swift_weakInit();

    sub_1B1B340E4(v46, sub_1B1B75628, v47, v49, v50, v51, v52, v53, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122);

    sub_1B1B33170();
    v54 = v40;
    v120 = sub_1B1B75704(v54, ObjectType);
    v121 = v55;
    v114 = v54;

    v126 = swift_allocBox();
    __swift_storeEnumTagSinglePayload(v56, 1, 1, v45);
    v57 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
    v58 = v48[4];
    v59 = v116;
    if (v58)
    {
      if (qword_1ED9A4DF8 != -1)
      {
        OUTLINED_FUNCTION_32(&qword_1ED9A4DF8);
      }

      sub_1B1AEAD14();
      if (qword_1ED9A4DE0 != -1)
      {
        OUTLINED_FUNCTION_4_20(&qword_1ED9A4DE0);
      }

      [v58 postNotificationName:qword_1ED9A4DE8 object:0];
    }

    v60 = v127;
    v61 = v127[14];
    sub_1B1B711C0();
    sub_1B1C2C3A8();
    v62 = OBJC_IVAR____TtC14SiriTTSService7Timeout_timeoutDate;
    v113 = v61;
    swift_beginAccess();
    (*(v124 + 40))(v61 + v62, v9, v59);
    swift_endAccess();
    OUTLINED_FUNCTION_17();
    v63 = swift_allocObject();
    *(v63 + 16) = 0;
    v64 = v63;
    OUTLINED_FUNCTION_17();
    v125 = swift_allocObject();
    *(v125 + 16) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_17();
    v65 = swift_allocObject();
    *(v65 + 16) = 0;
    v123 = swift_allocObject();
    *(v123 + 16) = 0;
    v116 = v60[8];
    v66 = swift_allocObject();
    *(v66 + 16) = v57;
    *(v66 + 24) = v60;
    *(v66 + 32) = v64;
    v124 = v64;
    *(v66 + 40) = BYTE4(v115) & 1;
    v67 = v114;
    v68 = v126;
    *(v66 + 48) = v114;
    *(v66 + 56) = v68;
    v69 = v121;
    *(v66 + 64) = v120;
    *(v66 + 72) = v69;
    *(v66 + 80) = v117;
    v70 = swift_allocObject();
    v70[2] = v57;
    v70[3] = v60;
    v70[4] = v65;
    v70[5] = v67;
    v71 = v125;
    v70[6] = v64;
    v70[7] = v71;
    v70[8] = v68;
    v72 = swift_allocObject();
    v72[2] = v57;
    v72[3] = v60;
    v72[4] = v71;
    v72[5] = v65;
    v112 = v65;
    v72[6] = v123;
    v73 = v57;
    swift_retain_n();
    v74 = v67;
    v75 = v73;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v76 = v74;
    v77 = v75;
    v78 = v121;

    sub_1B1B29698(v76, sub_1B1B75B40, v66, sub_1B1B75B80, v70, sub_1B1B75BB4, v72);

    v79 = swift_allocObject();
    v79[2] = v77;
    v79[3] = v60;
    v80 = v112;
    v79[4] = v76;
    v79[5] = v80;
    v81 = v123;
    v79[6] = v126;
    v79[7] = v81;
    v79[8] = v120;
    v79[9] = v78;
    v82 = v76;
    v83 = v77;

    sub_1B1BC7124(sub_1B1B75BC4, v79);

    return;
  }

  v117 = v42;
  v120 = v44;
  v124 = v39;
  v84 = v121;
  sub_1B1AEACB0(v12, v121);
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v85 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v85, qword_1ED9A9120);
  v86 = v41;
  v87 = sub_1B1C2C888();
  v88 = sub_1B1C2D0D8();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 134217984;
    *(v89 + 4) = (*((*MEMORY[0x1E69E7D40] & v86->isa) + 0x90))();

    _os_log_impl(&dword_1B1A8A000, v87, v88, "Osprey cache is found, requestId: %llu", v89, 0xCu);
    v84 = v121;
    OUTLINED_FUNCTION_14();
    MEMORY[0x1B2739FD0]();
  }

  else
  {

    v87 = v86;
  }

  v95 = v127[4];
  if (v95)
  {
    if (qword_1ED9A4DF8 != -1)
    {
      OUTLINED_FUNCTION_32(&qword_1ED9A4DF8);
    }

    sub_1B1AEAD14();
    if (qword_1ED9A4DE0 != -1)
    {
      OUTLINED_FUNCTION_4_20(&qword_1ED9A4DE0);
    }

    [v95 postNotificationName:qword_1ED9A4DE8 object:0];
    v96 = *(v84 + *(v123 + 24));
    if (v96)
    {
      v97 = qword_1ED9A4EB8;
      v98 = v96;
      if (v97 != -1)
      {
        swift_once();
      }

      [v95 postNotificationName:qword_1ED9A4EC0 object:v98];
    }

    v99 = *(v84 + *(v123 + 28));
    if (v99)
    {
      v100 = qword_1ED9A4D20;
      v101 = v99;
      if (v100 != -1)
      {
        swift_once();
      }

      [v95 postNotificationName:qword_1ED9A4D28 object:v101];
    }
  }

  v128 = *(v84 + *(v123 + 20));
  v102 = v128;
  v103 = 0.0;
  while (1)
  {
    SynthesisCacheFile.SynthesisCacheChunkIterator.next()(&v129);
    v104 = v129;
    if (!v129)
    {
      break;
    }

    if (v95)
    {
      if (qword_1ED9A4EA8 != -1)
      {
        swift_once();
      }

      [v95 postNotificationName:qword_1ED9A4EB0 object:v104];
      if (qword_1ED9A4DA0 != -1)
      {
        swift_once();
      }

      sub_1B1AC4DD4();
    }

    AudioData.duration.getter();
    v103 = v103 + v105;
    OUTLINED_FUNCTION_17();
    v106 = swift_allocObject();
    v107 = v86;
    *(v106 + 16) = sub_1B1C2CAB8();
    v108 = v104;
    sub_1B1ACC2E4(v104);

    sub_1B1ACC308(v109);
    sub_1B1ACFA84(v126);
    sub_1B1AA81A8(v106);

    sub_1B1AD8690(v104);
  }

  v110 = v121;
  if (v95)
  {
    if (qword_1ED9A4E88 != -1)
    {
      swift_once();
    }

    sub_1B1ADED40(v103);
  }

  sub_1B1B7461C(v86, v117, v120);

  sub_1B1ACD41C(v110);
}

uint64_t sub_1B1B72790(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1B1BC7598();
  }

  return result;
}

id sub_1B1B727FC(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char a7, void *a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v53 = a11;
  v54 = a12;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762088, &unk_1B1C371C0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v49 - v22;
  v55 = swift_projectBox();
  [a4 lock];
  if (sub_1B1B70F7C())
  {
    v56 = 0x40E7700000000000;
    v57 = xmmword_1B1C387F0;
    v58 = xmmword_1B1C38800;
    if (sub_1B1B01D2C(a3, &v56))
    {
      v50 = a8;
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v24 = sub_1B1C2C8A8();
      v25 = __swift_project_value_buffer(v24, qword_1ED9A9120);
      v26 = a1;
      v27 = a2;
      v49 = v25;
      v28 = sub_1B1C2C888();
      v29 = sub_1B1C2D0D8();
      v52 = v27;

      v51 = v26;
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = v52;
        v32 = v30;
        v33 = swift_slowAlloc();
        *v32 = 138412802;
        v34 = v51;
        *(v32 + 4) = v51;
        *(v32 + 12) = 2112;
        *(v32 + 14) = v31;
        *v33 = v34;
        v33[1] = v31;
        *(v32 + 22) = 2048;
        *(v32 + 24) = a9;
        v35 = v34;
        v36 = v31;
        _os_log_impl(&dword_1B1A8A000, v28, v29, "Server voice: %@, resource: %@, buffer size: %f", v32, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7625C0, &qword_1B1C37990);
        swift_arrayDestroy();
        MEMORY[0x1B2739FD0](v33, -1, -1);
        MEMORY[0x1B2739FD0](v32, -1, -1);
      }

      swift_beginAccess();
      *(a6 + 16) = a9;
      if (*(a5 + 120) && (a7 & 1) != 0)
      {

        v37 = v50;
        v38 = sub_1B1C2C888();
        v39 = sub_1B1C2D098();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *v40 = 138412290;
          *(v40 + 4) = v37;
          *v41 = v37;
          v42 = v37;
          _os_log_impl(&dword_1B1A8A000, v38, v39, "Osprey Synthesis cache starting...{%@}.", v40, 0xCu);
          sub_1B1A90C20(v41, &qword_1EB7625C0, &qword_1B1C37990);
          MEMORY[0x1B2739FD0](v41, -1, -1);
          MEMORY[0x1B2739FD0](v40, -1, -1);
        }

        sub_1B1ACC580();

        v46 = type metadata accessor for SynthesisCacheFile(0);
        __swift_storeEnumTagSinglePayload(v23, 0, 1, v46);
        v47 = v55;
        swift_beginAccess();
        sub_1B1B75E88(v23, v47, &qword_1EB762088, &unk_1B1C371C0);
      }

      v48 = *(a5 + 32);
      if (v48)
      {
        if (qword_1ED9A4EB8 != -1)
        {
          swift_once();
        }

        [v48 postNotificationName:qword_1ED9A4EC0 object:v51];
        if (qword_1ED9A4D20 != -1)
        {
          swift_once();
        }

        [v48 postNotificationName:qword_1ED9A4D28 object:v52];
      }

      return [a4 unlock];
    }

    sub_1B1A9EC9C();
    v43 = swift_allocError();
    *v44 = 19;
    *(v44 + 8) = 0xD00000000000001BLL;
    *(v44 + 16) = 0x80000001B1C4FD50;
    sub_1B1BD08E8(v43);
    sub_1B1BC7598();
  }

  return [a4 unlock];
}

id sub_1B1B72D34(void *a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v101 = a7;
  v102 = a8;
  v106 = a6;
  v107 = a2;
  v103 = a1;
  v104 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762088, &unk_1B1C371C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v89 - v12;
  v14 = type metadata accessor for SynthesisCacheFile(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B1C2C428();
  v99 = *(v17 - 8);
  v100 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v98 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761D88, &qword_1B1C36488);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v97 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v96 = &v89 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v89 - v24;
  v26 = swift_projectBox();
  [a3 lock];
  if ((sub_1B1B70F7C() & 1) == 0)
  {
    goto LABEL_4;
  }

  v27 = sub_1B1B71054();
  if (v27)
  {

LABEL_4:

    return [a3 unlock];
  }

  v29 = v104;
  swift_beginAccess();
  if (*(v29 + 16) > 0.8)
  {
    sub_1B1B55438();
    if (v30 != 2 && (v30 & 1) != 0)
    {
      if (qword_1ED9A9288 == -1)
      {
LABEL_11:
        v31 = sub_1B1C2C8A8();
        __swift_project_value_buffer(v31, qword_1ED9A9120);
        v32 = sub_1B1C2C888();
        v33 = sub_1B1C2D0D8();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_1B1A8A000, v32, v33, "Simulate network stall is on, ignore audio object", v34, 2u);
          MEMORY[0x1B2739FD0](v34, -1, -1);
        }

        return [a3 unlock];
      }

LABEL_57:
      swift_once();
      goto LABEL_11;
    }
  }

  v35 = v104;
  swift_beginAccess();
  if (*(v35 + 16) == 0.0)
  {
    v36 = *(a4 + 32);
    if (v36)
    {
      if (qword_1ED9A4CD8 != -1)
      {
        swift_once();
      }

      [v36 postNotificationName:qword_1ED9A4CE0 object:0];
    }
  }

  v92 = v25;
  AudioData.duration.getter();
  v38 = v37;
  v39 = v104;
  swift_beginAccess();
  *(v39 + 16) = v38 + *(v39 + 16);
  v40 = sub_1B1A9547C();
  v41 = MEMORY[0x1E69E7CC0];
  v94 = v14;
  v95 = v26;
  if (v40)
  {
    v42 = v40;
    v89 = a4;
    v90 = v16;
    v93 = v13;
    v91 = a3;
    v109 = MEMORY[0x1E69E7CC0];
    v43 = &v109;
    sub_1B1C2D5B8();
    if (v42 < 0)
    {
      __break(1u);
      goto LABEL_55;
    }

    v105 = type metadata accessor for NSRangeUtil();
    swift_getObjectType();
    v44 = 0;
    v45 = v107 & 0xC000000000000001;
    do
    {
      if (v45)
      {
        v46 = MEMORY[0x1B2738A20](v44, v107);
      }

      else
      {
        v46 = *(v107 + 8 * v44 + 32);
      }

      v47 = v46;
      ++v44;
      swift_beginAccess();
      v48 = &v47[OBJC_IVAR___SiriTTSWordTimingInfo_textRange];
      swift_beginAccess();
      v49 = *v48;
      v50 = v48[1];
      v51 = SynthesizingRequestProtocol.text.getter();
      static NSRangeUtil.mapUtf8RangeToUtf16(_:inText:)(v49, v50, v51, v52);

      v53 = objc_allocWithZone(type metadata accessor for WordTimingInfo());
      WordTimingInfo.init(startTiming:textRange:)();

      sub_1B1C2D588();
      sub_1B1C2D5C8();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
    }

    while (v42 != v44);
    v41 = v109;
    v16 = v90;
    a3 = v91;
    v13 = v93;
    a4 = v89;
    v26 = v95;
  }

  type metadata accessor for DataContainer();
  v54 = swift_allocObject();
  v55 = MEMORY[0x1E69E7CC0];
  v54[2] = sub_1B1C2CAB8();
  v56 = v106;
  v57 = v106;
  sub_1B1ACFA84(v56);
  v58 = v103;
  v107 = v103;
  sub_1B1ACC2E4(v58);

  sub_1B1ACC308(v59);
  v60 = v104;
  swift_beginAccess();
  v61 = *(v60 + 16);
  v62 = v101;
  swift_beginAccess();
  v63 = *(v62 + 16);
  v105 = v41;
  if (v61 < v63)
  {
    v64 = v102;
    swift_beginAccess();

    MEMORY[0x1B2738320](v65);
    sub_1B1B3E0D4(*((*(v64 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1B1C2CEC8();
    swift_endAccess();
    v14 = v94;
    goto LABEL_44;
  }

  v106 = v54;
  v66 = v102;
  swift_beginAccess();
  if (sub_1B1A9547C())
  {
    v67 = v55;
    swift_beginAccess();
    v68 = *(v66 + 16);
    v69 = sub_1B1A9547C();
    if (v69)
    {
      v70 = v69;
      v93 = v13;
      if (v69 < 1)
      {
        __break(1u);
        goto LABEL_57;
      }

      v71 = a4;

      for (i = 0; i != v70; ++i)
      {
        if ((v68 & 0xC000000000000001) != 0)
        {
          v73 = MEMORY[0x1B2738A20](i, v68);
        }

        else
        {
          v73 = *(v68 + 8 * i + 32);
        }

        sub_1B1AA81A8(v73);
      }

      v13 = v93;
      a4 = v71;
    }

    v74 = v102;
    swift_beginAccess();
    *(v74 + 16) = v67;
  }

  sub_1B1AA81A8(v106);
  v75 = a4;
  v76 = OBJC_IVAR____TtC14SiriTTSService15OspreyTTSAction_streamingStartedDate;
  swift_beginAccess();
  v77 = v92;
  sub_1B1AA7A0C(v75 + v76, v92, &qword_1EB761D88, &qword_1B1C36488);
  v78 = v100;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v77, 1, v100);
  sub_1B1A90C20(v77, &qword_1EB761D88, &qword_1B1C36488);
  if (EnumTagSinglePayload != 1)
  {
    AudioData.duration.getter();
    swift_beginAccess();
    sub_1B1C2C3C8();
    swift_endAccess();
    v14 = v94;
    a4 = v75;
    goto LABEL_43;
  }

  v80 = v96;
  sub_1B1C2C3E8();
  __swift_storeEnumTagSinglePayload(v80, 0, 1, v78);
  swift_beginAccess();
  sub_1B1B75E88(v80, v75 + v76, &qword_1EB761D88, &qword_1B1C36488);
  swift_endAccess();
  v81 = *(v75 + 112);
  v82 = v97;
  sub_1B1AA7A0C(v75 + v76, v97, &qword_1EB761D88, &qword_1B1C36488);
  result = __swift_getEnumTagSinglePayload(v82, 1, v78);
  if (result != 1)
  {
    a4 = v75;
    swift_beginAccess();
    v83 = v98;
    sub_1B1C2C398();
    v84 = v82;
    v85 = v99;
    (*(v99 + 8))(v84, v78);
    v86 = OBJC_IVAR____TtC14SiriTTSService7Timeout_timeoutDate;
    swift_beginAccess();
    (*(v85 + 40))(v81 + v86, v83, v78);
    swift_endAccess();
    v14 = v94;
LABEL_43:
    v26 = v95;
LABEL_44:
    sub_1B1BC760C();
    v43 = *(a4 + 32);
    v41 = v105;
    if (!v43)
    {
LABEL_51:
      swift_beginAccess();
      sub_1B1AA7A0C(v26, v13, &qword_1EB762088, &unk_1B1C371C0);
      if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
      {

        sub_1B1A90C20(v13, &qword_1EB762088, &unk_1B1C371C0);
      }

      else
      {
        sub_1B1AEACB0(v13, v16);
        *&v108 = v107;
        *(&v108 + 1) = v41;
        v87 = v107;
        SynthesisCacheFile.append(chunk:)(&v108);

        v88 = v108;

        sub_1B1ACD41C(v16);
      }

      return [a3 unlock];
    }

    if (qword_1ED9A4EA8 == -1)
    {
LABEL_46:
      [v43 postNotificationName:qword_1ED9A4EB0 object:v107];
      if (qword_1ED9A4DA0 != -1)
      {
        swift_once();
      }

      sub_1B1AC4DD4();
      if (qword_1ED9A4CF0 != -1)
      {
        swift_once();
      }

      [v43 postNotificationName:qword_1ED9A4CF8 object:0];
      goto LABEL_51;
    }

LABEL_55:
    swift_once();
    goto LABEL_46;
  }

  __break(1u);
  return result;
}

id sub_1B1B738C8(void *a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  [a2 lock];
  if (sub_1B1B70F7C())
  {
    v11 = sub_1B1B71054();
    if (v11)
    {

      goto LABEL_4;
    }

    swift_beginAccess();
    v13 = *(a4 + 16);
    v14 = sub_1B1A9547C();
    if (v14)
    {
      v15 = v14;
      v24 = a1;
      if (v14 < 1)
      {
        __break(1u);
        goto LABEL_25;
      }

      for (i = 0; i != v15; ++i)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1B2738A20](i, v13);
        }

        else
        {
          v17 = *(v13 + 8 * i + 32);
        }

        sub_1B1AA81A8(v17);
      }
    }

    swift_beginAccess();
    if (*(a5 + 16) <= 0.8 || (sub_1B1B55438(), v18 == 2) || (v18 & 1) == 0)
    {
      swift_beginAccess();
      *(a6 + 16) = 1;
      v23 = a1;
      sub_1B1BD08E8(a1);
      sub_1B1BC7598();
      return [a2 unlock];
    }

    if (qword_1ED9A9288 == -1)
    {
LABEL_19:
      v19 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v19, qword_1ED9A9120);
      v20 = sub_1B1C2C888();
      v21 = sub_1B1C2D0D8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1B1A8A000, v20, v21, "Simulate network stall is on, ignore audio object", v22, 2u);
        MEMORY[0x1B2739FD0](v22, -1, -1);
      }

      return [a2 unlock];
    }

LABEL_25:
    swift_once();
    goto LABEL_19;
  }

LABEL_4:

  return [a2 unlock];
}

id sub_1B1B73B68(int a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v84 = a8;
  v86 = a7;
  v85 = a5;
  v83 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762088, &unk_1B1C371C0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v78 - v16;
  v89 = type metadata accessor for SynthesisCacheFile(0);
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762948, &qword_1B1C39D08);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v78 - v19;
  v87 = swift_projectBox();
  [a2 lock];
  v21 = sub_1B1B71054();
  if (v21)
  {
    v22 = v21;
    v81 = v15;
    v82 = a3;
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v23 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v23, qword_1ED9A9120);
    v24 = a4;
    v25 = v22;
    v26 = sub_1B1C2C888();
    v27 = sub_1B1C2D0B8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v80 = a2;
      v29 = v28;
      v30 = swift_slowAlloc();
      v79 = a4;
      v31 = v30;
      v94[0] = v30;
      *v29 = 136315394;
      swift_getErrorValue();
      v32 = sub_1B1C2D828();
      v34 = sub_1B1A930E4(v32, v33, v94);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2048;
      v36 = (*((*MEMORY[0x1E69E7D40] & *v24) + 0x90))(v35);

      *(v29 + 14) = v36;
      _os_log_impl(&dword_1B1A8A000, v26, v27, "Encountered Osprey error: %s, { id: %llu }", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v31);
      v37 = v31;
      a4 = v79;
      MEMORY[0x1B2739FD0](v37, -1, -1);
      v38 = v29;
      a2 = v80;
      MEMORY[0x1B2739FD0](v38, -1, -1);
    }

    else
    {
    }

    a3 = v82;
    v15 = v81;
  }

  v39 = sub_1B1B71054();
  v40 = OBJC_IVAR____TtC14SiriTTSService15OspreyTTSAction_streamingStartedDate;
  swift_beginAccess();
  v41 = *(v18 + 64);
  sub_1B1AA7A0C(a3 + v40, &v20[v41], &qword_1EB761D88, &qword_1B1C36488);
  if (v39)
  {
    v42 = sub_1B1C2C428();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v20[v41], 1, v42);
    v44 = v87;
    if (EnumTagSinglePayload == 1)
    {
      v91 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762090, &qword_1B1C38450);
      if (swift_dynamicCast())
      {

        goto LABEL_20;
      }

LABEL_18:
      v92 = 0;
      v93 = 0xE000000000000000;
      sub_1B1C2D538();

      v92 = 0xD000000000000021;
      v93 = 0x80000001B1C4FD20;
      v91 = (*((*MEMORY[0x1E69E7D40] & *a4) + 0x90))(v53);
      v54 = sub_1B1C2D778();
      MEMORY[0x1B27381B0](v54);

      MEMORY[0x1B27381B0](32032, 0xE200000000000000);
      v48 = v92;
      v49 = v93;
      sub_1B1A9EC9C();
      v50 = swift_allocError();
      v52 = 17;
      goto LABEL_19;
    }
  }

  else
  {
    v44 = v87;
    if (v83)
    {
      sub_1B1A90C20(&v20[v41], &qword_1EB761D88, &qword_1B1C36488);
      goto LABEL_20;
    }

    v45 = sub_1B1C2C428();
    if (__swift_getEnumTagSinglePayload(&v20[v41], 1, v45) == 1)
    {
      goto LABEL_18;
    }
  }

  sub_1B1A90C20(&v20[v41], &qword_1EB761D88, &qword_1B1C36488);
  v92 = 0;
  v93 = 0xE000000000000000;
  sub_1B1C2D538();

  v92 = 0xD000000000000025;
  v93 = 0x80000001B1C4FCF0;
  v91 = (*((*MEMORY[0x1E69E7D40] & *a4) + 0x90))(v46);
  v47 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v47);

  MEMORY[0x1B27381B0](32032, 0xE200000000000000);
  v48 = v92;
  v49 = v93;
  sub_1B1A9EC9C();
  v50 = swift_allocError();
  v52 = 18;
LABEL_19:
  *v51 = v52;
  *(v51 + 8) = v48;
  *(v51 + 16) = v49;
  sub_1B1BD08E8(v50);
LABEL_20:
  v55 = v89;
  if (*(a3 + 32))
  {
    if (qword_1ED9A4E88 != -1)
    {
      swift_once();
    }

    v56 = v85;
    swift_beginAccess();
    sub_1B1ADED40(*(v56 + 16));
  }

  swift_beginAccess();
  v57 = v88;
  sub_1B1AA7A0C(v44, v88, &qword_1EB762088, &unk_1B1C371C0);
  if (__swift_getEnumTagSinglePayload(v57, 1, v55) == 1)
  {
    sub_1B1A90C20(v57, &qword_1EB762088, &unk_1B1C371C0);
  }

  else
  {
    sub_1B1AEACB0(v57, v90);
    SynthesisCacheFile.close()();
    if (v58)
    {
    }

    __swift_storeEnumTagSinglePayload(v15, 1, 1, v55);
    swift_beginAccess();
    sub_1B1B75E88(v15, v44, &qword_1EB762088, &unk_1B1C371C0);
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v59 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v59, qword_1ED9A9120);
    v60 = a4;
    v61 = sub_1B1C2C888();
    v62 = sub_1B1C2D098();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = a4;
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v64 = 138412290;
      *(v64 + 4) = v60;
      *v65 = v60;
      v66 = v60;
      _os_log_impl(&dword_1B1A8A000, v61, v62, "Osprey Synthesis cache complete {%@}.", v64, 0xCu);
      sub_1B1A90C20(v65, &qword_1EB7625C0, &qword_1B1C37990);
      MEMORY[0x1B2739FD0](v65, -1, -1);
      v67 = v64;
      a4 = v63;
      MEMORY[0x1B2739FD0](v67, -1, -1);
    }

    sub_1B1ACD41C(v90);
  }

  if (*(a3 + 120))
  {
    v68 = v86;
    swift_beginAccess();
    LODWORD(v68) = *(v68 + 16);

    if (v68 == 1)
    {
      v69 = sub_1B1B71054();
      if (!v69)
      {

        goto LABEL_42;
      }
    }

    sub_1B1BD8C94();
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v70 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v70, qword_1ED9A9120);
    v71 = a4;
    v72 = sub_1B1C2C888();
    v73 = sub_1B1C2D098();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v74 = 138412290;
      *(v74 + 4) = v71;
      *v75 = v71;
      v76 = v71;
      _os_log_impl(&dword_1B1A8A000, v72, v73, "Osprey Synthesis cache removed {%@}.", v74, 0xCu);
      sub_1B1A90C20(v75, &qword_1EB7625C0, &qword_1B1C37990);
      MEMORY[0x1B2739FD0](v75, -1, -1);
      MEMORY[0x1B2739FD0](v74, -1, -1);
    }
  }

LABEL_42:
  sub_1B1B33170();
  return [a2 unlock];
}

uint64_t sub_1B1B7461C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B1C2C988();
  OUTLINED_FUNCTION_7();
  v32 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  v31 = sub_1B1C2C9D8();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_16();
  v15 = v14 - v13;
  v16 = sub_1B1C2C998();
  OUTLINED_FUNCTION_7();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_16();
  v22 = v21 - v20;
  sub_1B1AA7918();
  (*(v18 + 104))(v22, *MEMORY[0x1E69E7FA0], v16);
  v23 = sub_1B1C2D168();
  (*(v18 + 8))(v22, v16);
  v24 = swift_allocObject();
  v24[2] = v3;
  v24[3] = a1;
  v24[4] = a2;
  v24[5] = a3;
  aBlock[4] = sub_1B1B75E5C;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B1A95870;
  aBlock[3] = &block_descriptor_19;
  v25 = _Block_copy(aBlock);

  v26 = a1;

  sub_1B1C2C9A8();
  sub_1B1ACD078(&qword_1ED9A8DC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
  sub_1B1AA6F40();
  sub_1B1C2D418();
  MEMORY[0x1B2738610](0, v15, v9, v25);
  _Block_release(v25);

  (*(v32 + 8))(v9, v4);
  (*(v11 + 8))(v15, v31);
}

uint64_t sub_1B1B74974(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 120);
  if (v4)
  {
    v8 = qword_1ED9A9288;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v9, qword_1ED9A9120);
    v10 = sub_1B1C2C888();
    v11 = sub_1B1C2D098();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B1A8A000, v10, v11, "Updating osprey cache", v12, 2u);
      MEMORY[0x1B2739FD0](v12, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762088, &unk_1B1C371C0);
    v13 = swift_allocBox();
    v15 = v14;
    v16 = type metadata accessor for SynthesisCacheFile(0);
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = v4;
    v17[3] = a3;
    v17[4] = a4;
    v17[5] = v13;
    v18 = swift_allocObject();
    *(v18 + 16) = v13;
    *(v18 + 24) = a2;
    v19 = swift_allocObject();
    v19[2] = v13;
    v19[3] = v4;
    v19[4] = a3;
    v19[5] = a4;
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    sub_1B1B29698(a2, sub_1B1B75E68, v17, sub_1B1B75E74, v18, sub_1B1B75E7C, v19);
  }

  return result;
}

void sub_1B1B74BE4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762088, &unk_1B1C371C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23[-v10];
  v12 = swift_projectBox();
  sub_1B1BD8C94();
  sub_1B1ACC580();
  v13 = type metadata accessor for SynthesisCacheFile(0);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
  swift_beginAccess();
  sub_1B1B75E88(v11, v12, &qword_1EB762088, &unk_1B1C371C0);
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v14 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v14, qword_1ED9A9120);
  v15 = a1;
  v16 = a2;
  v17 = sub_1B1C2C888();
  v18 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412546;
    *(v19 + 4) = v15;
    *(v19 + 12) = 2112;
    *(v19 + 14) = v16;
    *v20 = v15;
    v20[1] = v16;
    v21 = v15;
    v22 = v16;
    _os_log_impl(&dword_1B1A8A000, v17, v18, "Updated Server cache voice: %@, resource: %@", v19, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7625C0, &qword_1B1C37990);
    swift_arrayDestroy();
    MEMORY[0x1B2739FD0](v20, -1, -1);
    MEMORY[0x1B2739FD0](v19, -1, -1);
  }
}

uint64_t sub_1B1B74E60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762088, &unk_1B1C371C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for SynthesisCacheFile(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_projectBox();
  swift_beginAccess();
  sub_1B1AA7A0C(v12, v8, &qword_1EB762088, &unk_1B1C371C0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_1B1A90C20(v8, &qword_1EB762088, &unk_1B1C371C0);
  }

  sub_1B1AEACB0(v8, v11);
  v14 = sub_1B1A9547C();
  v15 = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
    goto LABEL_11;
  }

  v16 = v14;
  *&v34 = MEMORY[0x1E69E7CC0];
  result = sub_1B1C2D5B8();
  if ((v16 & 0x8000000000000000) == 0)
  {
    v30 = v11;
    v31 = a1;
    v32 = type metadata accessor for NSRangeUtil();
    swift_getObjectType();
    v17 = 0;
    v18 = a2 & 0xC000000000000001;
    v19 = a2;
    do
    {
      if (v18)
      {
        v20 = MEMORY[0x1B2738A20](v17, a2);
      }

      else
      {
        v20 = *(a2 + 8 * v17 + 32);
      }

      v21 = v20;
      ++v17;
      swift_beginAccess();
      v22 = &v21[OBJC_IVAR___SiriTTSWordTimingInfo_textRange];
      swift_beginAccess();
      v23 = *v22;
      v24 = v22[1];
      v25 = SynthesizingRequestProtocol.text.getter();
      static NSRangeUtil.mapUtf8RangeToUtf16(_:inText:)(v23, v24, v25, v26);

      v27 = objc_allocWithZone(type metadata accessor for WordTimingInfo());
      WordTimingInfo.init(startTiming:textRange:)();

      sub_1B1C2D588();
      sub_1B1C2D5C8();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
      a2 = v19;
    }

    while (v16 != v17);
    v15 = v34;
    v11 = v30;
    a1 = v31;
LABEL_11:
    *&v34 = a1;
    *(&v34 + 1) = v15;
    v28 = a1;
    SynthesisCacheFile.append(chunk:)(&v34);
    v29 = v34;

    return sub_1B1ACD41C(v11);
  }

  __break(1u);
  return result;
}

void sub_1B1B7516C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762088, &unk_1B1C371C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  v10 = type metadata accessor for SynthesisCacheFile(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_projectBox();
  swift_beginAccess();
  sub_1B1AA7A0C(v13, v9, &qword_1EB762088, &unk_1B1C371C0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1B1A90C20(v9, &qword_1EB762088, &unk_1B1C371C0);
  }

  else
  {
    sub_1B1AEACB0(v9, v12);
    SynthesisCacheFile.close()();
    if (v14)
    {
    }

    if (a1)
    {
      v15 = a1;
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v16 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v16, qword_1ED9A9120);
      v17 = a1;
      v18 = sub_1B1C2C888();
      v19 = sub_1B1C2D0B8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v32 = a4;
        v21 = v20;
        v31 = swift_slowAlloc();
        v33 = v31;
        *v21 = 136315138;
        swift_getErrorValue();
        v22 = sub_1B1C2D828();
        v24 = sub_1B1A930E4(v22, v23, &v33);

        *(v21 + 4) = v24;
        _os_log_impl(&dword_1B1A8A000, v18, v19, "OspreyTTSAction: error when updating osprey cache, %s", v21, 0xCu);
        v25 = v31;
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x1B2739FD0](v25, -1, -1);
        MEMORY[0x1B2739FD0](v21, -1, -1);
      }

      sub_1B1BD8C94();
      sub_1B1ACD41C(v12);
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v26 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v26, qword_1ED9A9120);
      v27 = sub_1B1C2C888();
      v28 = sub_1B1C2D0D8();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1B1A8A000, v27, v28, "Updated osprey cache", v29, 2u);
        MEMORY[0x1B2739FD0](v29, -1, -1);
      }

      sub_1B1ACD41C(v12);
    }
  }
}

uint64_t sub_1B1B75600@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = OspreyTTSAction.__allocating_init(pool:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B1B75630(uint64_t a1, uint64_t a2)
{
  sub_1B1C2CA68();
  sub_1B1ACD078(&qword_1ED9A4F48, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  return sub_1B1C2CA28();
}

void *sub_1B1B75704(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B1C2CA38();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1B1C2CBC8();
  v6 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B1C2CA68();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1C2CA58();
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_1B1C2D538();
  v35 = v33;
  v36 = v34;
  v12 = SynthesizingRequestProtocol.voice.getter(a2);
  v13 = &v12[OBJC_IVAR___SiriTTSSynthesisVoice_language];
  swift_beginAccess();
  v14 = *v13;
  v15 = *(v13 + 1);

  MEMORY[0x1B27381B0](v14, v15);

  MEMORY[0x1B27381B0](10, 0xE100000000000000);
  v16 = SynthesizingRequestProtocol.voice.getter(a2);
  v17 = &v16[OBJC_IVAR___SiriTTSSynthesisVoice_name];
  swift_beginAccess();
  v19 = *v17;
  v18 = *(v17 + 1);

  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0xE000000000000000;
  }

  MEMORY[0x1B27381B0](v20, v21);

  MEMORY[0x1B27381B0](10, 0xE100000000000000);
  v22 = SynthesizingRequestProtocol.text.getter();
  MEMORY[0x1B27381B0](v22);

  MEMORY[0x1B27381B0](10, 0xE100000000000000);
  SynthesizingRequestProtocol.pitch.getter(a2);
  sub_1B1C2CF38();
  MEMORY[0x1B27381B0](10, 0xE100000000000000);
  SynthesizingRequestProtocol.rate.getter(a2);
  sub_1B1C2CF38();
  MEMORY[0x1B27381B0](10, 0xE100000000000000);
  SynthesizingRequestProtocol.volume.getter(a2);
  sub_1B1C2CF38();
  sub_1B1C2CBB8();
  v23 = sub_1B1C2CB68();
  v25 = v24;
  result = (*(v6 + 8))(v8, v32);
  if (v25 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    sub_1B1AA64DC(v23, v25);
    sub_1B1ACCEA4(v23, v25, v11);
    sub_1B1AA9670(v23, v25);
    sub_1B1AA9670(v23, v25);
    sub_1B1C2CA48();
    v27 = sub_1B1ACD0C0();
    (*(v30 + 8))(v5, v31);
    (*(v28 + 8))(v11, v29);
    return v27;
  }

  return result;
}

uint64_t type metadata accessor for OspreyTTSAction(uint64_t a1)
{
  result = qword_1ED9A5178;
  if (!qword_1ED9A5178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B1B75C4C(uint64_t a1)
{
  sub_1B1B75E04(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B1B75E04(uint64_t a1)
{
  if (!qword_1ED9A5240)
  {
    sub_1B1C2C428();
    v1 = sub_1B1C2D2B8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9A5240);
    }
  }
}

uint64_t sub_1B1B75E88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_11_18(a1, a2, a3, a4);
  OUTLINED_FUNCTION_45();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t sub_1B1B75ED8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762108, &qword_1B1C372C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762110, &qword_1B1C372D0);
  v2 = sub_1B1C2CBD8();
  v4 = v3;
  v6[3] = type metadata accessor for LocalAssetProvider();
  v6[0] = a1;
  swift_beginAccess();

  sub_1B1A9EE20(v6, v2, v4);
  return swift_endAccess();
}

uint64_t sub_1B1B75F90(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7620F8, &qword_1B1C372B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762100, &qword_1B1C372C0);
  v2 = sub_1B1C2CBD8();
  v4 = v3;
  v6[3] = type metadata accessor for TTSAssetUAFAssetProvider();
  v6[0] = a1;
  swift_beginAccess();

  sub_1B1A9EE20(v6, v2, v4);
  return swift_endAccess();
}

uint64_t sub_1B1B76048(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7620E8, &qword_1B1C372A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7620F0, &qword_1B1C372B0);
  v2 = sub_1B1C2CBD8();
  v4 = v3;
  v6[3] = type metadata accessor for TrialAssetProvider();
  v6[0] = a1;
  swift_beginAccess();

  sub_1B1A9EE20(v6, v2, v4);
  return swift_endAccess();
}

uint64_t sub_1B1B76100(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7620D8, &qword_1B1C37298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7620E0, &qword_1B1C372A0);
  v2 = sub_1B1C2CBD8();
  v4 = v3;
  v6[3] = type metadata accessor for BuiltInVoiceProvider();
  v6[0] = a1;
  swift_beginAccess();

  sub_1B1A9EE20(v6, v2, v4);
  return swift_endAccess();
}

uint64_t sub_1B1B761B8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7620C8, &qword_1B1C37288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7620D0, &qword_1B1C37290);
  v2 = sub_1B1C2CBD8();
  v4 = v3;
  v6[3] = type metadata accessor for VocalizerCustomVoiceProvider();
  v6[0] = a1;
  swift_beginAccess();

  sub_1B1A9EE20(v6, v2, v4);
  return swift_endAccess();
}

uint64_t sub_1B1B76270(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7620B8, &qword_1B1C37278);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7620C0, &qword_1B1C37280);
  v2 = sub_1B1C2CBD8();
  v4 = v3;
  v6[3] = type metadata accessor for PreinstalledVoiceProvider();
  v6[0] = a1;
  swift_beginAccess();

  sub_1B1A9EE20(v6, v2, v4);
  return swift_endAccess();
}

uint64_t sub_1B1B76328(uint64_t a1)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762188, &unk_1B1C37350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762190, &qword_1B1C39E00);
  sub_1B1C2CBD8();
  v1 = type metadata accessor for InternalSettings();
  OUTLINED_FUNCTION_5_23(v1, v2, v3, v4, v5, v6, v7, v8, v18, v19, v20, v21, v22, v23, v24, v25);

  OUTLINED_FUNCTION_10_22(v9, v10, v11, v12, v13, v14, v15, v16);
  return swift_endAccess();
}

uint64_t sub_1B1B763B8(void *a1)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762198, &unk_1B1C37360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7621A0, &unk_1B1C39DF0);
  sub_1B1C2CBD8();
  v2 = sub_1B1B766EC();
  OUTLINED_FUNCTION_5_23(v2, v3, v4, v5, v6, v7, v8, v9, v19, v20, v21, v22, v23, v24, v25, v26);
  v10 = a1;
  OUTLINED_FUNCTION_10_22(v10, v11, v12, v13, v14, v15, v16, v17);
  return swift_endAccess();
}

uint64_t static VoiceSelectionAction.defaultSetupAction()()
{
  type metadata accessor for ObjectPool();
  swift_initStackObject();
  v0 = ObjectPool.init()();
  v1 = type metadata accessor for LocalAssetProvider();
  v2 = OUTLINED_FUNCTION_12_14(v1);
  sub_1B1B75ED8(v2);

  type metadata accessor for TTSAssetUAFAssetProvider();
  swift_allocObject();
  TTSAssetUAFAssetProvider.init()();
  sub_1B1B75F90(v3);

  type metadata accessor for TrialAssetProvider();
  swift_allocObject();
  v4 = TrialAssetProvider.init()();
  sub_1B1B76048(v4);

  v5 = type metadata accessor for BuiltInVoiceProvider();
  v6 = OUTLINED_FUNCTION_12_14(v5);
  sub_1B1B76100(v6);

  v7 = type metadata accessor for VocalizerCustomVoiceProvider();
  v8 = OUTLINED_FUNCTION_12_14(v7);
  sub_1B1B761B8(v8);

  v9 = type metadata accessor for PreinstalledVoiceProvider();
  v10 = OUTLINED_FUNCTION_12_14(v9);
  sub_1B1B76270(v10);

  if (qword_1ED9A96B8 != -1)
  {
    swift_once();
  }

  sub_1B1B76328(qword_1ED9A96C0);
  type metadata accessor for VoiceSelectionAction();
  swift_allocObject();
  return VoiceSelectionAction.init(pool:)(v0);
}

uint64_t sub_1B1B76600()
{
}

uint64_t sub_1B1B76660@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = VoiceSelectionAction.__allocating_init(pool:)(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1B1B766EC()
{
  result = qword_1ED9A4C78;
  if (!qword_1ED9A4C78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9A4C78);
  }

  return result;
}

uint64_t sub_1B1B7675C()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
}

uint64_t sub_1B1B76790(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

void sub_1B1B76814()
{

  v1 = *(v0 + 40);
}

uint64_t sub_1B1B76844@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = RequestParsingAction.__allocating_init(pool:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B1B7693C(uint64_t a1, uint64_t a2)
{
  if (qword_1EB7610A0 != -1)
  {
    OUTLINED_FUNCTION_0_27(&qword_1EB7610A0);
  }

  sub_1B1C2CB58();
  v2 = sub_1B1C2CBF8();

  notify_post((v2 + 32));
}

uint64_t sub_1B1B769B4()
{
  result = sub_1B1C2CB28();
  qword_1EB7610A8 = result;
  return result;
}

id static TTSAsset.NewAssetNotification.getter()
{
  if (qword_1EB7610A0 != -1)
  {
    OUTLINED_FUNCTION_0_27(&qword_1EB7610A0);
  }

  v1 = qword_1EB7610A8;

  return v1;
}

uint64_t sub_1B1B76A60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624A8, &unk_1B1C38120);
  result = sub_1B1C2CAB8();
  dword_1EB762950 = 0;
  qword_1EB762958 = result;
  return result;
}

void static Logger.log(_:thresholdFrequency:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762560, &qword_1B1C38118);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  if (qword_1EB761650 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB762950);
  sub_1B1B76DF4(&qword_1EB762958, a1, a2, &v25, a3);
  os_unfair_lock_unlock(&dword_1EB762950);
  v9 = v25;
  if (v25)
  {
    if (v25 == 1)
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
      }

      v10 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v10, qword_1ED9A9120);

      v11 = sub_1B1C2C888();
      v12 = sub_1B1C2D0D8();

      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_14;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *(v13 + 4) = OUTLINED_FUNCTION_1_30(4.8149e-34);
      v15 = "%s";
      v16 = v12;
      v17 = v11;
      v18 = v13;
      v19 = 12;
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
      }

      v20 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v20, qword_1ED9A9120);

      v11 = sub_1B1C2C888();
      v21 = sub_1B1C2D0D8();

      if (!os_log_type_enabled(v11, v21))
      {
        goto LABEL_14;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *(v13 + 4) = OUTLINED_FUNCTION_1_30(4.8152e-34);
      *(v13 + 12) = 2048;
      *(v13 + 14) = v9;
      *(v13 + 22) = 2048;
      *(v13 + 24) = a3;
      v15 = "%s (%ld times in past %f sec)";
      v16 = v21;
      v17 = v11;
      v18 = v13;
      v19 = 32;
    }

    _os_log_impl(&dword_1B1A8A000, v17, v16, v15, v18, v19);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1B2739FD0](v14, -1, -1);
    MEMORY[0x1B2739FD0](v13, -1, -1);
LABEL_14:

    os_unfair_lock_lock(&dword_1EB762950);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624A8, &unk_1B1C38120);
    v23 = *(v22 + 48);

    sub_1B1C2C3E8();
    *&v8[v23] = 0;
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v22);
    sub_1B1B35CF8();
    os_unfair_lock_unlock(&dword_1EB762950);
  }
}

uint64_t sub_1B1B76DF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v56 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762560, &qword_1B1C38118);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v52 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v53 = v48 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v54 = v48 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = v48 - v16;
  v18 = sub_1B1C2C428();
  v55 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v48 - v22;
  v24 = a1;
  v25 = *a1;
  v26 = a2;
  v27 = a3;
  sub_1B1B2A1A0(v25, v17);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624A8, &unk_1B1C38120);
  if (__swift_getEnumTagSinglePayload(v17, 1, v28))
  {
    result = sub_1B1B773D8(v17);
LABEL_3:
    v30 = 1;
LABEL_14:
    v46 = v56;
LABEL_15:
    *v46 = v30;
    return result;
  }

  v49 = v25;
  v50 = v28;
  v48[1] = v24;
  v48[2] = v26;
  v51 = v27;
  v32 = v54;
  v31 = v55;
  v33 = *(v55 + 16);
  v33(v21, v17, v18);
  sub_1B1B773D8(v17);
  (*(v31 + 32))(v23, v21, v18);
  sub_1B1C2C3B8();
  v35 = fabs(v34);
  if (v35 >= a5)
  {
    if (v35 >= a5 + a5)
    {
      result = (*(v55 + 8))(v23, v18, v49);
      goto LABEL_3;
    }

    v43 = v52;
    sub_1B1B2A1A0(v49, v52);
    (*(v55 + 8))(v23, v18);
    v44 = v50;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v50);
    v46 = v56;
    if (EnumTagSinglePayload)
    {
      v47 = 0;
    }

    else
    {
      v47 = *(v43 + *(v44 + 48));
    }

    result = sub_1B1B773D8(v43);
    v30 = v47 + 1;
    if (!__OFADD__(v47, 1))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
    v36 = v32;
    v37 = v23;
    v33(v32, v23, v18);
    v38 = v53;
    sub_1B1B2A1A0(v49, v53);
    v39 = v50;
    v40 = __swift_getEnumTagSinglePayload(v38, 1, v50);
    v41 = *(v39 + 48);
    if (v40)
    {
      v42 = 0;
    }

    else
    {
      v42 = *(v38 + v41);
    }

    result = sub_1B1B773D8(v38);
    if (!__OFADD__(v42, 1))
    {
      *(v36 + v41) = v42 + 1;
      __swift_storeEnumTagSinglePayload(v36, 0, 1, v50);

      sub_1B1B35CF8();
      result = (*(v55 + 8))(v37, v18);
      v30 = 0;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B771F0()
{
  v0 = sub_1B1C2C8A8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B1C2C828();
  __swift_allocate_value_buffer(v4, qword_1ED9A4F70);
  __swift_project_value_buffer(v4, qword_1ED9A4F70);
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
  }

  v5 = __swift_project_value_buffer(v0, qword_1ED9A9120);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1B1C2C808();
}

_BYTE *sub_1B1B7732C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1B1B773D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762560, &qword_1B1C38118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B1B77444()
{
  v0 = sub_1B1B77498(0);

  return sub_1B1B35EC8(v0);
}

int64_t sub_1B1B77498(char a1)
{
  sub_1B1AE53F8(a1);
  v2 = sub_1B1C2CBF8();

  int64 = xpc_dictionary_get_int64(v1, (v2 + 32));

  return int64;
}

uint64_t sub_1B1B774F0(uint64_t result, unint64_t a2, uint64_t a3, OpaqueCMBlockBuffer **a4, const opaqueCMFormatDescription **a5, uint64_t a6, void *a7, CMSampleBufferRef *a8)
{
  v46 = *MEMORY[0x1E69E9840];
  switch(a2 >> 62)
  {
    case 1uLL:
      v29 = result >> 32;
      if (result >> 32 < result)
      {
        goto LABEL_40;
      }

      v42 = a4;
      v43 = a8;
      p_packetDescriptions = &packetDescriptions;
      v30 = result;
      swift_retain_n();
      swift_retain_n();
      v31 = sub_1B1C2BF08();
      if (!v31)
      {
        goto LABEL_22;
      }

      v32 = sub_1B1C2BF38();
      if (__OFSUB__(v30, v32))
      {
        goto LABEL_43;
      }

      v31 += v30 - v32;
LABEL_22:
      result = sub_1B1C2BF28();
      if (!v31)
      {
        goto LABEL_32;
      }

      v33 = v29 - v30;
      if (result < v29 - v30)
      {
        v33 = result;
      }

      if (v33 < a3)
      {
        goto LABEL_45;
      }

      v20 = (v31 + a3);
      goto LABEL_34;
    case 2uLL:
      goto LABEL_5;
    case 3uLL:
      memset(v44, 0, 14);
      if (a3 <= 0)
      {
        v12 = *a5;
        if (*a5)
        {
LABEL_17:
          v43 = &packetDescriptions;
          v22 = *a4;
          v23 = *MEMORY[0x1E695E480];
          v24 = (v44 + a3);
          v25 = *(a6 + 40);
          v26 = a7[8];
          v27 = a7[10];

          presentationTimeStamp.value = v26;
          *&presentationTimeStamp.timescale = a7[9];
          presentationTimeStamp.epoch = v27;
          v28 = CMAudioSampleBufferCreateWithPacketDescriptions(v23, v22, 1u, 0, 0, v12, v25, &presentationTimeStamp, v24, a8);

LABEL_37:

          return v28;
        }

        __break(1u);
        goto LABEL_49;
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    default:
      v44[0] = result;
      LOWORD(v44[1]) = a2;
      BYTE2(v44[1]) = BYTE2(a2);
      BYTE3(v44[1]) = BYTE3(a2);
      BYTE4(v44[1]) = BYTE4(a2);
      BYTE5(v44[1]) = BYTE5(a2);
      if (a3 > BYTE6(a2))
      {
        goto LABEL_39;
      }

      v12 = *a5;
      if (*a5)
      {
        goto LABEL_17;
      }

      __break(1u);
LABEL_5:
      v42 = a4;
      v43 = a8;
      p_packetDescriptions = &packetDescriptions;
      v13 = *(result + 16);
      v14 = *(result + 24);
      swift_retain_n();
      swift_retain_n();
      v15 = sub_1B1C2BF08();
      if (!v15)
      {
        goto LABEL_8;
      }

      v16 = sub_1B1C2BF38();
      if (__OFSUB__(v13, v16))
      {
        goto LABEL_42;
      }

      v15 += v13 - v16;
LABEL_8:
      v17 = __OFSUB__(v14, v13);
      v18 = v14 - v13;
      if (v17)
      {
        goto LABEL_41;
      }

      result = sub_1B1C2BF28();
      if (v15)
      {
        if (result >= v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = result;
        }

        if (v19 >= a3)
        {
          v20 = (v15 + a3);
          goto LABEL_29;
        }

LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (a3 > 0)
      {
        goto LABEL_46;
      }

      v20 = 0;
LABEL_29:
      v34 = *a5;
      if (!*a5)
      {
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (v20)
      {
LABEL_36:
        v35 = *MEMORY[0x1E695E480];
        v36 = *v42;
        v37 = a7[10];
        v38 = a7[8];
        v39 = *(a6 + 40);

        presentationTimeStamp.value = v38;
        *&presentationTimeStamp.timescale = a7[9];
        presentationTimeStamp.epoch = v37;
        v28 = CMAudioSampleBufferCreateWithPacketDescriptions(v35, v36, 1u, 0, 0, v34, v39, &presentationTimeStamp, v20, v43);

        goto LABEL_37;
      }

      __break(1u);
LABEL_32:
      if (a3 > 0)
      {
LABEL_47:
        __break(1u);
      }

      v20 = 0;
LABEL_34:
      v34 = *a5;
      if (!*a5)
      {
        goto LABEL_50;
      }

      if (v20)
      {
        goto LABEL_36;
      }

LABEL_51:
      __break(1u);
      return result;
  }
}

uint64_t sub_1B1B778E0(uint64_t result, unint64_t a2, uint64_t a3, size_t a4, id *a5)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v14 = result >> 32;
      if (result >> 32 < result)
      {
        __break(1u);
        goto LABEL_25;
      }

      v21 = &v20;
      v15 = result;
      v11 = sub_1B1C2BF08();
      if (v11)
      {
        result = sub_1B1C2BF38();
        if (__OFSUB__(v15, result))
        {
          goto LABEL_26;
        }

        v11 += v15 - result;
      }

      v13 = v14 - v15;
      goto LABEL_17;
    case 2uLL:
      v21 = &v20;
      v10 = *(result + 16);
      v9 = *(result + 24);
      v11 = sub_1B1C2BF08();
      if (!v11)
      {
        goto LABEL_6;
      }

      result = sub_1B1C2BF38();
      if (__OFSUB__(v10, result))
      {
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
      }

      else
      {
        v11 += v10 - result;
LABEL_6:
        v12 = __OFSUB__(v9, v10);
        v13 = v9 - v10;
        if (v12)
        {
          __break(1u);
LABEL_9:
          result = 0;
          v8 = 0;
          return sub_1B1B7E134(result, v8, a3, a4, a5);
        }

        else
        {
LABEL_17:
          v16 = sub_1B1C2BF28();
          if (v16 >= v13)
          {
            v17 = v13;
          }

          else
          {
            v17 = v16;
          }

          v18 = v17 + v11;
          if (v11)
          {
            v19 = v18;
          }

          else
          {
            v19 = 0;
          }

          return sub_1B1B1C0A0(v11, v19, a3, a4, a5);
        }
      }

      return result;
    case 3uLL:
      goto LABEL_9;
    default:
      v8 = a2 & 0xFFFFFFFFFFFFFFLL;
      return sub_1B1B7E134(result, v8, a3, a4, a5);
  }
}

uint64_t sub_1B1B77A48(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1B1A9EC44(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
      }
    }

    return MEMORY[0x1B2738A20](v3, a1);
  }

  result = sub_1B1C2D468();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1B1B77ADC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16 * v2);

  return v4;
}

uint64_t sub_1B1B77B24(char a1)
{
  result = 0x646573756170;
  switch(a1)
  {
    case 1:
      result = 0x64657472617473;
      break;
    case 2:
      result = OUTLINED_FUNCTION_19_9();
      break;
    case 3:
      result = OUTLINED_FUNCTION_25_8() & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B1B77BBC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B1C2D6C8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B1B77C2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B1B77BBC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1B1B77C5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B1B77B24(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1B1B77C90()
{
  if (__OFSUB__(*(v0 + 32), *(v0 + 24)))
  {
    __break(1u);
  }
}

uint64_t sub_1B1B77D3C()
{
  v0 = sub_1B1B77D14();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

void sub_1B1B77D6C()
{
  if (*(v0 + 16))
  {
    v1 = qword_1EB762980;
    qword_1EB762980 = 0;
  }
}

void sub_1B1B77D88(void *a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  v3 = a1;

  sub_1B1B77D6C();
}

uint64_t sub_1B1B77DD8()
{
  os_unfair_lock_lock((v0 + 56));
  v1 = *(v0 + 60);
  os_unfair_lock_unlock((v0 + 56));
  return v1;
}

void sub_1B1B77E0C(char a1)
{
  os_unfair_lock_lock((v1 + 56));
  *(v1 + 60) = a1;

  os_unfair_lock_unlock((v1 + 56));
}

double sub_1B1B77E4C@<D0>(uint64_t a1@<X8>)
{
  sub_1B1B77E94(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

__n128 sub_1B1B77E94@<Q0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  result = *(v1 + 128);
  v4 = *(v1 + 144);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v1 + 160);
  return result;
}

__n128 sub_1B1B77EDC(uint64_t a1)
{
  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 128) = *a1;
  *(v1 + 144) = v4;
  *(v1 + 160) = *(a1 + 32);
  return result;
}

uint64_t (*sub_1B1B77F24())(uint64_t a1)
{
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_1B1B77F70(uint64_t a1@<X8>)
{
  *a1 = 0x524142535641;
  *(a1 + 8) = 0xE600000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
}

uint64_t sub_1B1B77F94()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  return *(v0 + 168);
}

uint64_t sub_1B1B77FC4(char a1)
{
  OUTLINED_FUNCTION_15_0();
  result = swift_beginAccess();
  *(v1 + 168) = a1;
  return result;
}

uint64_t (*sub_1B1B78000())(uint64_t a1)
{
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B1B7804C@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  return sub_1B1AA7A0C(v1 + 176, a1, &unk_1EB762990, &unk_1B1C352D0);
}

uint64_t sub_1B1B780A0(uint64_t a1)
{
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  sub_1B1B75E88(a1, v1 + 176, &unk_1EB762990, &unk_1B1C352D0);
  return swift_endAccess();
}

uint64_t (*sub_1B1B780FC())(uint64_t a1)
{
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B1B78194@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  return sub_1B1AA7A0C(v1 + 216, a1, &qword_1EB7618F8, &unk_1B1C352E0);
}

uint64_t sub_1B1B781E8(uint64_t a1)
{
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  sub_1B1B75E88(a1, v1 + 216, &qword_1EB7618F8, &unk_1B1C352E0);
  return swift_endAccess();
}

uint64_t (*sub_1B1B78244())(uint64_t a1)
{
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t AVSBARPlayback.__allocating_init(audioSessionId:asbd:)(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = swift_allocObject();
  AVSBARPlayback.init(audioSessionId:asbd:)(v2);
  return v3;
}

uint64_t AVSBARPlayback.init(audioSessionId:asbd:)(unsigned int a1)
{
  v72 = sub_1B1C2D128();
  OUTLINED_FUNCTION_7();
  v71 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16();
  v6 = v5 - v4;
  sub_1B1C2D118();
  OUTLINED_FUNCTION_45();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16();
  v8 = sub_1B1C2C9D8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_16();
  v74 = v1;
  *(v1 + 16) = 0;
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  sub_1B1A8E474(0, &qword_1ED9A9940, 0x1E69E9610);
  sub_1B1C2C9A8();
  v75 = MEMORY[0x1E69E7CC0];
  sub_1B1A979CC(&qword_1ED9A9720, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7629A0, &unk_1B1C38440);
  sub_1B1A97978(&qword_1ED9A96A0, &qword_1EB7629A0, &unk_1B1C38440);
  v9 = a1;
  sub_1B1C2D418();
  (*(v71 + 104))(v6, *MEMORY[0x1E69E8090], v72);
  OUTLINED_FUNCTION_22_10();
  *(v6 + 48) = sub_1B1C2D158();
  *(v6 + 56) = 0;
  *(v6 + 60) = 0;
  v10 = MEMORY[0x1E6960CC0];
  v11 = *(MEMORY[0x1E6960CC0] + 16);
  *(v6 + 64) = *MEMORY[0x1E6960CC0];
  *(v6 + 72) = *(v10 + 8);
  *(v6 + 80) = v11;
  *(v6 + 88) = 0;
  type metadata accessor for MappedData();
  v12 = sub_1B1B1AFA4();
  *(v6 + 176) = 0u;
  v13 = v6 + 176;
  *(v6 + 96) = v12;
  *(v6 + 104) = MEMORY[0x1E69E7CC0];
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  *(v6 + 168) = 0;
  *(v6 + 192) = 0u;
  *(v6 + 208) = 0u;
  *(v6 + 224) = 0u;
  *(v6 + 240) = 0u;
  mach_absolute_time();
  OUTLINED_FUNCTION_41_2();
  v15 = *(v14 + 16);
  *(v6 + 128) = *v14;
  *(v6 + 144) = v15;
  *(v6 + 160) = *(v14 + 32);
  v16 = [objc_opt_self() retrieveSessionWithID_];
  if (!v16)
  {
    sub_1B1C2D538();

    v26 = sub_1B1C2D778();
    MEMORY[0x1B27381B0](v26);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1C361C0;
    *(inited + 32) = sub_1B1C2CB58();
    *(inited + 40) = v28;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = 0xD000000000000020;
    *(inited + 56) = 0x80000001B1C500D0;
    v29 = sub_1B1C2CAB8();
    v30 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1B1B1AE5C(0xD00000000000001BLL, 0x80000001B1C50100, 0, v29);
    swift_willThrow();
    goto LABEL_28;
  }

  v17 = v16;
  v18 = qword_1EB762980;
  v19 = 0x1E6988000;
  v20 = &qword_1EB762000;
  if (qword_1EB762980)
  {
    v21 = qword_1EB762980;
    v22 = [v21 renderers];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7629A8, &qword_1B1C39ED8);
    v23 = sub_1B1C2CE78();

    if (!sub_1B1A9547C())
    {

      goto LABEL_18;
    }

    sub_1B1A9EC44(0, (v23 & 0xC000000000000001) == 0, v23);
    if ((v23 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1B2738A20](0, v23);
    }

    else
    {
      v6 = *(v23 + 32);
      swift_unknownObjectRetain();
    }

    v19 = 0x1E6988000uLL;
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (v24)
    {
      v25 = v24;
      if ([v24 status] == 2)
      {

        swift_unknownObjectRelease();
LABEL_17:
        OUTLINED_FUNCTION_22_10();
        v20 = &qword_1EB762000;
        goto LABEL_19;
      }

      v31 = [v25 audioSession];
      v32 = [v31 opaqueSessionID];

      v33 = v32 == a1;
      v9 = a1;
      if (v33)
      {
        [v21 currentTime];
        v19 = 0x1E6988000;
        if (!v75 && byte_1EB762988 != 1)
        {
          *(v74 + 32) = v25;
          *(v74 + 40) = v21;
          v69 = v21;
          v6 = v74;
          swift_unknownObjectRetain();
LABEL_22:
          v42 = [objc_opt_self() defaultCenter];
          [v42 addObserver:v6 selector:sel_handleMediaServerReset name:*MEMORY[0x1E6958128] object:0];

          if (qword_1ED9A9288 != -1)
          {
            OUTLINED_FUNCTION_0_0();
            swift_once();
          }

          v43 = sub_1B1C2C8A8();
          __swift_project_value_buffer(v43, qword_1ED9A9120);
          v44 = OUTLINED_FUNCTION_43_7();
          sub_1B1B7D9EC(v44, v45);
          v46 = sub_1B1C2C888();
          v47 = sub_1B1C2D0D8();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            *v48 = 67109376;
            *(v48 + 4) = v9;
            *(v48 + 8) = 1024;
            *(v48 + 10) = v18 != 0;
            v49 = OUTLINED_FUNCTION_43_7();
            sub_1B1B7DA2C(v49, v50);
            _os_log_impl(&dword_1B1A8A000, v46, v47, "#AVSBAR initialized with session ID: %u, reusing previous synchronizer: %{BOOL}d", v48, 0xEu);
            OUTLINED_FUNCTION_14();
            MEMORY[0x1B2739FD0]();
          }

          else
          {
            v55 = OUTLINED_FUNCTION_43_7();
            sub_1B1B7DA2C(v55, v56);
          }

          v6 = mach_absolute_time();
          v57 = sub_1B1C2C888();
          v58 = sub_1B1C2D098();
          v59 = OUTLINED_FUNCTION_9_22();
          if (!os_log_type_enabled(v59, v60))
          {
            goto LABEL_35;
          }

          OUTLINED_FUNCTION_23_6();
          *swift_slowAlloc() = 134217984;
          OUTLINED_FUNCTION_41_2();
          v63 = v6 >= v62;
          v64 = v6 - v62;
          if (v63)
          {
            v46 = v61;
            v65 = v64;
            if (qword_1ED9A5270 == -1)
            {
LABEL_34:
              *(v46 + 4) = *&qword_1ED9AA500 * v65;
              _os_log_impl(&dword_1B1A8A000, v57, v58, "VSAudioPlaybackService init latency: %f", v46, 0xCu);
              OUTLINED_FUNCTION_14();
              MEMORY[0x1B2739FD0]();
LABEL_35:
              v66 = OUTLINED_FUNCTION_43_7();
              sub_1B1B7DA2C(v66, v67);

              OUTLINED_FUNCTION_22_10();
              return v6;
            }
          }

          else
          {
            __break(1u);
          }

          OUTLINED_FUNCTION_0_6();
          v73 = v70;
          swift_once();
          v65 = v73;
          goto LABEL_34;
        }

        swift_unknownObjectRelease();

        goto LABEL_17;
      }

      swift_unknownObjectRelease();

      OUTLINED_FUNCTION_22_10();
      v20 = &qword_1EB762000;
LABEL_18:
      v19 = 0x1E6988000uLL;
      goto LABEL_19;
    }

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_22_10();
  }

LABEL_19:
  v34 = [objc_allocWithZone(*(v19 + 296)) init];
  if (v34)
  {
    v35 = v34;
    v36 = [objc_allocWithZone(MEMORY[0x1E6988140]) init];
    if (v36)
    {
      v37 = v36;
      [v35 setAudioSession_];
      [v37 setDelaysRateChangeUntilHasSufficientMediaData_];
      [v37 addRenderer_];
      *(v6 + 32) = v35;
      *(v6 + 40) = v37;
      v38 = v9;
      v39 = qword_1EB762980;
      qword_1EB762980 = v37;
      v40 = v35;
      v41 = v37;

      v9 = v38;
      *(v20 + 2440) = 0;

      v18 = 0;
      goto LABEL_22;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1B1C361C0;
  *(v51 + 32) = sub_1B1C2CB58();
  *(v51 + 40) = v52;
  *(v51 + 72) = MEMORY[0x1E69E6158];
  *(v51 + 48) = 0xD000000000000098;
  *(v51 + 56) = 0x80000001B1C50120;
  v53 = sub_1B1C2CAB8();
  v54 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  sub_1B1B1AE5C(0xD00000000000001BLL, 0x80000001B1C50100, 1, v53);
  swift_willThrow();

LABEL_28:

  sub_1B1A90C20(v13, &unk_1EB762990, &unk_1B1C352D0);
  sub_1B1A90C20(v13 + 40, &qword_1EB7618F8, &unk_1B1C352E0);
  type metadata accessor for AVSBARPlayback();
  swift_deallocPartialClassInstance();
  return v6;
}

id *AVSBARPlayback.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  sub_1B1B7CBD0();
  sub_1B1B7D614();

  sub_1B1A90C20((v0 + 22), &unk_1EB762990, &unk_1B1C352D0);
  sub_1B1A90C20((v0 + 27), &qword_1EB7618F8, &unk_1B1C352E0);
  return v0;
}

uint64_t AVSBARPlayback.__deallocating_deinit()
{
  AVSBARPlayback.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 256, 7);
}

void sub_1B1B78E7C(void (*a1)(void *))
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  if (*(v1 + 168) == 1 && (v3 = *(v1 + 16)) != 0)
  {
    v4 = v3;
    a1(v3);
  }

  else
  {
    sub_1B1B77E0C(1);
    if (*(v1 + 88) > 0.15)
    {
      sub_1B1B78F2C();
    }

    a1(0);
  }
}

uint64_t sub_1B1B78F2C()
{
  v1 = v0;
  v2 = sub_1B1C2C988();
  OUTLINED_FUNCTION_7();
  v33 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16();
  v7 = v6 - v5;
  sub_1B1C2C9D8();
  OUTLINED_FUNCTION_7();
  v31 = v9;
  v32 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16();
  v12 = v11 - v10;
  v13 = sub_1B1C2C998();
  OUTLINED_FUNCTION_7();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16();
  v19 = v18 - v17;
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v20 = sub_1B1C2C8A8();
  OUTLINED_FUNCTION_12_1(v20, qword_1ED9A9120);

  v21 = sub_1B1C2C888();
  v22 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_34_8();
    v23 = swift_slowAlloc();
    *v23 = 134218240;
    *(v23 + 4) = *(v1 + 88);
    *(v23 + 12) = 2048;
    [*(v1 + 40) rate];
    *(v23 + 14) = v24;
    _os_log_impl(&dword_1B1A8A000, v21, v22, "#AVSBAR synchronizer.rate will be set to 1 with enqueued audio duration %f sec. Previous rate: %f", v23, 0x16u);
    OUTLINED_FUNCTION_14();
    MEMORY[0x1B2739FD0]();
  }

  sub_1B1A8E474(0, &qword_1ED9A9940, 0x1E69E9610);
  (*(v15 + 104))(v19, *MEMORY[0x1E69E7F90], v13);
  v25 = sub_1B1C2D168();
  (*(v15 + 8))(v19, v13);
  v38 = sub_1B1B7E1D4;
  v39 = v1;
  OUTLINED_FUNCTION_2_2();
  v35 = 1107296256;
  OUTLINED_FUNCTION_25_0();
  v36 = v26;
  v37 = &block_descriptor_95;
  v27 = _Block_copy(aBlock);

  sub_1B1C2C9A8();
  OUTLINED_FUNCTION_15_15();
  sub_1B1A979CC(v28, v29, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
  sub_1B1A97978(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430);
  sub_1B1C2D418();
  MEMORY[0x1B2738610](0, v12, v7, v27);
  _Block_release(v27);

  (*(v33 + 8))(v7, v2);
  (*(v31 + 8))(v12, v32);
}

void sub_1B1B79318(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 56));
  sub_1B1B79658((a1 + 60), &v22);
  os_unfair_lock_unlock((a1 + 56));
  if (v22 == 1)
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v3 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v3, qword_1ED9A9120);
    oslog = sub_1B1C2C888();
    v4 = sub_1B1C2D098();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "#AVSBAR already stopped or paused: will not resume rate";
      v7 = v4;
      v8 = oslog;
      v9 = v5;
      v10 = 2;
LABEL_18:
      _os_log_impl(&dword_1B1A8A000, v8, v7, v6, v9, v10);
      MEMORY[0x1B2739FD0](v5, -1, -1);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v11 = mach_absolute_time();
  LODWORD(v12) = 1.0;
  [*(a1 + 40) setRate_];
  v13 = mach_absolute_time();
  if (v13 < v11)
  {
    __break(1u);
  }

  else
  {
    v1 = (v13 - v11);
    if (qword_1ED9A5270 == -1)
    {
      goto LABEL_8;
    }
  }

  swift_once();
LABEL_8:
  if (*&qword_1ED9AA500 * v1 > 0.25)
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v14 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v14, qword_1ED9A9120);
    v15 = sub_1B1C2C888();
    v16 = sub_1B1C2D0B8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = *&qword_1ED9AA500 * v1;
      _os_log_impl(&dword_1B1A8A000, v15, v16, "synchronizer play rate high latency: %f sec", v17, 0xCu);
      MEMORY[0x1B2739FD0](v17, -1, -1);
    }
  }

  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v18 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v18, qword_1ED9A9120);

  oslog = sub_1B1C2C888();
  v19 = sub_1B1C2D098();

  if (os_log_type_enabled(oslog, v19))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    [*(a1 + 40) rate];
    *(v5 + 4) = v20;
    v6 = "#AVSBAR synchronizer.rate was set to 1. Current rate: %f";
    v7 = v19;
    v8 = oslog;
    v9 = v5;
    v10 = 12;
    goto LABEL_18;
  }

LABEL_19:
}

uint64_t sub_1B1B79658@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  v3 = 1;
  switch(*a1)
  {
    case 3u:
      goto LABEL_7;
    default:
      v5 = sub_1B1C2D7A8();

      if (v5)
      {
        v3 = 1;
      }

      else
      {
        if (v2)
        {
          v3 = sub_1B1C2D7A8();
        }

        else
        {
          v3 = 1;
        }

LABEL_7:
      }

      *a2 = v3 & 1;
      return result;
  }
}

void sub_1B1B797C4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v2 = *(a1 + 24) == *(a1 + 32) ? sub_1B1B7AB80() : sub_1B1B7988C(a1);
    v3 = v2;
    v4 = *(a1 + 16);
    *(a1 + 16) = v2;
    target = v2;

    if (v3)
    {
      if (*(a1 + 64) == 1)
      {
        CMSetAttachment(target, *MEMORY[0x1E69604C0], *MEMORY[0x1E695E4D0], 0);
      }
    }
  }
}

CMSampleBufferRef sub_1B1B7988C(uint64_t *a1)
{
  v139[1] = *MEMORY[0x1E69E9840];
  v5 = a1[3];
  v4 = a1[4];
  v6 = v4 - v5;
  if (__OFSUB__(v4, v5))
  {
    __break(1u);
    goto LABEL_44;
  }

  v7 = v1;
  v139[0] = 0;
  v9 = *(v7 + 96);
  v3 = v9[5];
  if (v3)
  {
    destinationBuffer[0] = 0;

    OUTLINED_FUNCTION_35_9();
    v2 = CMBlockBufferCreateWithMemoryBlock(v10, v11, v12, v13, v14, v15, v6, 1u, destinationBuffer);
    result = sub_1B1C2C958();
    if (v2 != result)
    {
LABEL_7:
      v18 = destinationBuffer[0];

      goto LABEL_10;
    }

    if (destinationBuffer[0])
    {
      v2 = CMBlockBufferReplaceDataBytes((v3 + v5), destinationBuffer[0], 0, v6);
      if (v2 == sub_1B1C2C958())
      {
        v139[0] = destinationBuffer[0];
        v17 = destinationBuffer[0];
        v2 = sub_1B1C2C958();
      }

      goto LABEL_7;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v19 = v7;
  OUTLINED_FUNCTION_11_0();
  result = swift_beginAccess();
  v3 = v9[8];
  if (v3 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_46;
  }

  v20 = v9[7];

  sub_1B1B1C108(v20, v3);
  v2 = sub_1B1B778E0(v20, v3, v5, v6, v139);
  sub_1B1AA9670(v20, v3);

  v7 = v19;
LABEL_10:
  if (v2 != sub_1B1C2C958())
  {
    if (qword_1ED9A9288 == -1)
    {
LABEL_17:
      v31 = sub_1B1C2C8A8();
      OUTLINED_FUNCTION_12_1(v31, qword_1ED9A9120);
      v32 = sub_1B1C2C888();
      sub_1B1C2D0B8();
      v33 = OUTLINED_FUNCTION_19();
      if (os_log_type_enabled(v33, v34))
      {
        OUTLINED_FUNCTION_23_6();
        v35 = swift_slowAlloc();
        v36 = OUTLINED_FUNCTION_19_0();
        destinationBuffer[0] = v36;
        *v35 = 136315138;
        v37 = sub_1B1B269CC(v2);
        sub_1B1A930E4(v37, v38, destinationBuffer);
        OUTLINED_FUNCTION_37_7();
        *(v35 + 4) = v3;
        OUTLINED_FUNCTION_23_11();
        _os_log_impl(v39, v40, v41, v42, v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        v43 = OUTLINED_FUNCTION_6_20();
        MEMORY[0x1B2739FD0](v43);
        OUTLINED_FUNCTION_14();
        MEMORY[0x1B2739FD0]();
      }

      sub_1B1C2CB58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B1C361C0;
      v45 = sub_1B1C2CB58();
      *(inited + 32) = v45;
      *(inited + 40) = v46;
      OUTLINED_FUNCTION_31_6(v45, MEMORY[0x1E69E6158]);
      *(inited + 48) = v47 + 9;
      *(inited + 56) = v48;
      OUTLINED_FUNCTION_38_6();
      v49 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v50 = OUTLINED_FUNCTION_32_9();
      sub_1B1B77D88(v50);
      goto LABEL_41;
    }

LABEL_44:
    OUTLINED_FUNCTION_0_0();
    swift_once();
    goto LABEL_17;
  }

  v138 = 0;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v21 = *(v7 + 144);
  *destinationBuffer = *(v7 + 128);
  v136 = v21;
  v137 = *(v7 + 160);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_35_9();
  v29 = CMAudioFormatDescriptionCreate(v22, v23, v24, v25, v26, v27, 0, v28);
  result = sub_1B1C2C958();
  if (v29 != result)
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v51 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v51, qword_1ED9A9120);
    v52 = sub_1B1C2C888();
    sub_1B1C2D0B8();
    v53 = OUTLINED_FUNCTION_9_22();
    if (os_log_type_enabled(v53, v54))
    {
      OUTLINED_FUNCTION_23_6();
      v55 = swift_slowAlloc();
      v56 = OUTLINED_FUNCTION_19_0();
      destinationBuffer[0] = v56;
      *v55 = 136315138;
      v57 = sub_1B1B269CC(v29);
      sub_1B1A930E4(v57, v58, destinationBuffer);
      OUTLINED_FUNCTION_37_7();
      *(v55 + 4) = v3;
      OUTLINED_FUNCTION_29_8();
      _os_log_impl(v59, v60, v61, v62, v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      v64 = OUTLINED_FUNCTION_6_20();
      MEMORY[0x1B2739FD0](v64);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }

    sub_1B1C2CB58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
    v65 = swift_initStackObject();
    *(v65 + 16) = xmmword_1B1C361C0;
    v66 = sub_1B1C2CB58();
    *(v65 + 32) = v66;
    *(v65 + 40) = v67;
    OUTLINED_FUNCTION_31_6(v66, MEMORY[0x1E69E6158]);
    *(v65 + 48) = v69;
    *(v65 + 56) = v68;
    OUTLINED_FUNCTION_38_6();
    v70 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v71 = OUTLINED_FUNCTION_32_9();
    sub_1B1B77D88(v71);
LABEL_40:

LABEL_41:
    v111 = 0;
    goto LABEL_42;
  }

  sbuf = 0;
  if (a1[5] < 1 || (v30 = a1[6], v30 == a1[7]))
  {
    if (v138)
    {
      v84 = *(v7 + 80);
      destinationBuffer[0] = *(v7 + 64);
      destinationBuffer[1] = *(v7 + 72);
      *&v136 = v84;
      OUTLINED_FUNCTION_28_6();
      v93 = CMAudioSampleBufferCreateWithPacketDescriptions(v85, v86, v87, v88, v89, v90, v91, v92, 0, &sbuf);
LABEL_31:
      if (v93 == sub_1B1C2C958())
      {
        result = sbuf;
        if (sbuf)
        {
          CMSampleBufferGetOutputPresentationTimeStamp(destinationBuffer, sbuf);
          result = sbuf;
          if (sbuf)
          {
            v103 = destinationBuffer[0];
            v104 = destinationBuffer[1];
            v105 = v136;
            CMSampleBufferGetOutputDuration(destinationBuffer, sbuf);
            v106 = destinationBuffer[0];
            v107 = v136;
            v108 = destinationBuffer[1];
            destinationBuffer[0] = v103;
            destinationBuffer[1] = v104;
            *&v136 = v105;
            rhs.value = v106;
            *&rhs.timescale = v108;
            rhs.epoch = v107;
            CMTimeAdd(&v132, destinationBuffer, &rhs);
            epoch = v132.epoch;
            v110 = *&v132.timescale;
            *(v7 + 64) = v132.value;
            *(v7 + 72) = v110;
            *(v7 + 80) = epoch;
            v111 = sbuf;

LABEL_42:
            return v111;
          }

          goto LABEL_49;
        }

LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v112 = sub_1B1C2C8A8();
      OUTLINED_FUNCTION_12_1(v112, qword_1ED9A9120);
      v113 = sub_1B1C2C888();
      v114 = sub_1B1C2D0B8();
      v115 = OUTLINED_FUNCTION_9_22();
      if (os_log_type_enabled(v115, v116))
      {
        OUTLINED_FUNCTION_23_6();
        v117 = swift_slowAlloc();
        v118 = OUTLINED_FUNCTION_19_0();
        destinationBuffer[0] = v118;
        *v117 = 136315138;
        v119 = sub_1B1B269CC(v93);
        sub_1B1A930E4(v119, v120, destinationBuffer);
        OUTLINED_FUNCTION_37_7();
        *(v117 + 4) = v3;
        _os_log_impl(&dword_1B1A8A000, v113, v114, "Error in CMAudioSampleBufferCreateWithPacketDescriptions, code: %s", v117, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v118);
        v121 = OUTLINED_FUNCTION_6_20();
        MEMORY[0x1B2739FD0](v121);
        OUTLINED_FUNCTION_14();
        MEMORY[0x1B2739FD0]();
      }

      sub_1B1C2CB58();
      OUTLINED_FUNCTION_27_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
      v122 = swift_initStackObject();
      *(v122 + 16) = xmmword_1B1C361C0;
      v123 = sub_1B1C2CB58();
      *(v122 + 32) = v123;
      *(v122 + 40) = v124;
      OUTLINED_FUNCTION_31_6(v123, MEMORY[0x1E69E6158]);
      *(v122 + 48) = v125 + 17;
      *(v122 + 56) = v126;
      OUTLINED_FUNCTION_38_6();
      v127 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v128 = OUTLINED_FUNCTION_13_20();
      sub_1B1B77D88(v128);

      goto LABEL_40;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v72 = *(v7 + 96);
  v73 = *(v72 + 40);
  if (v73)
  {
    p_blockBufferOut = &blockBufferOut;
    v74 = v138;
    if (!v138)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v3 = v73 + v30;
    v75 = a1[5];
    v76 = *(v7 + 64);
    v77 = *(v7 + 80);

    destinationBuffer[0] = v76;
    destinationBuffer[1] = *(v7 + 72);
    *&v136 = v77;
    blockBufferOut = v3;
    p_sbuf = &sbuf;
    OUTLINED_FUNCTION_28_6();
    v93 = CMAudioSampleBufferCreateWithPacketDescriptions(v78, v79, v80, v81, v82, v74, v75, v83, blockBufferOut, p_sbuf);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_11_0();
  result = swift_beginAccess();
  if (*(v72 + 64) >> 60 != 15)
  {
    swift_retain_n();
    swift_retain_n();

    v94 = OUTLINED_FUNCTION_42_0();
    sub_1B1B1C108(v94, v95);
    v96 = OUTLINED_FUNCTION_42_0();
    v93 = sub_1B1B774F0(v96, v97, v30, v98, v99, a1, v7, v100);
    v101 = OUTLINED_FUNCTION_42_0();
    sub_1B1AA9670(v101, v102);

LABEL_30:

    goto LABEL_31;
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_1B1B7A1A0(uint64_t a1, const void *a2, size_t a3, id *a4)
{
  destinationBuffer[1] = *MEMORY[0x1E69E9840];
  destinationBuffer[0] = 0;
  OUTLINED_FUNCTION_35_9();
  v13 = CMBlockBufferCreateWithMemoryBlock(v7, v8, v9, v10, v11, v12, v9, 1u, destinationBuffer);
  result = sub_1B1C2C958();
  if (v13 != result)
  {
    goto LABEL_5;
  }

  if (destinationBuffer[0])
  {
    v13 = CMBlockBufferReplaceDataBytes(a2, destinationBuffer[0], 0, a3);
    if (v13 == sub_1B1C2C958())
    {

      v15 = destinationBuffer[0];
      *a4 = destinationBuffer[0];
      v16 = v15;
      v13 = sub_1B1C2C958();
    }

LABEL_5:

    return v13;
  }

  __break(1u);
  return result;
}

void sub_1B1B7A28C(char *a1, void (*a2)(void), uint64_t a3)
{
  sub_1B1B7A2F8(a1, 0, 0);
  if (!v3)
  {
    if (a2)
    {

      a2(0);
      sub_1B1A949B4(a2, a3);
    }
  }
}

void sub_1B1B7A2F8(char *a1, void (*a2)(void), uint64_t a3)
{
  v5 = v3;
  os_unfair_lock_lock((v5 + 56));
  sub_1B1B7A850((v5 + 60), v52);
  if (v4)
  {
    os_unfair_lock_unlock((v5 + 56));
    __break(1u);
    return;
  }

  os_unfair_lock_unlock((v5 + 56));
  if (v52[0])
  {
    v9 = &a1[OBJC_IVAR___SiriTTSAudioData_audioData];
    OUTLINED_FUNCTION_11_0();
    swift_beginAccess();
    if (sub_1B1AA5F48(*v9, *(v9 + 1)))
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v10 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v10, qword_1ED9A9120);
      v11 = sub_1B1C2C888();
      sub_1B1C2D0B8();
      v12 = OUTLINED_FUNCTION_19();
      if (os_log_type_enabled(v12, v13))
      {
        OUTLINED_FUNCTION_45_0();
        v14 = swift_slowAlloc();
        *v14 = 0;
        OUTLINED_FUNCTION_23_11();
        _os_log_impl(v15, v16, v17, v18, v14, 2u);
        OUTLINED_FUNCTION_14();
        MEMORY[0x1B2739FD0]();
      }

      if (!a2)
      {
        return;
      }

LABEL_15:
      a2(0);
      return;
    }

    v51 = a3;
    [*(v5 + 24) lock];
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v54 = 0;
    v25 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v25, qword_1ED9A9120);
    v26 = a1;
    v27 = sub_1B1C2C888();
    v28 = sub_1B1C2D098();

    if (os_log_type_enabled(v27, v28))
    {
      OUTLINED_FUNCTION_23_6();
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      AudioData.duration.getter();
      *(v29 + 4) = v30;
      _os_log_impl(&dword_1B1A8A000, v27, v28, "Will add to enqueuedMappedAudioInfo: %f sec", v29, 0xCu);
      v31 = OUTLINED_FUNCTION_6_20();
      MEMORY[0x1B2739FD0](v31);
    }

    type metadata accessor for AVSBARPlayback.AudioMappedInfoAVSBAR();
    v32 = swift_allocObject();
    *(v32 + 16) = 0u;
    *(v32 + 32) = 0u;
    *(v32 + 48) = 0u;
    *(v32 + 64) = 0;
    *(v32 + 72) = 0;
    *(v32 + 80) = 0;
    v33 = *v9;
    v34 = *(v9 + 1);

    sub_1B1AA64DC(v33, v34);
    v35 = sub_1B1B1BD94(v33, v34);
    v37 = v36;
    sub_1B1A94524(v33, v34);

    *(v32 + 24) = v35;
    *(v32 + 32) = v37;
    v38 = OBJC_IVAR___SiriTTSAudioData_packetCount;
    OUTLINED_FUNCTION_11_0();
    swift_beginAccess();
    *(v32 + 40) = *&v26[v38];
    v39 = &v26[OBJC_IVAR___SiriTTSAudioData_packetDescriptions];
    OUTLINED_FUNCTION_11_0();
    swift_beginAccess();
    v41 = *v39;
    v40 = v39[1];

    sub_1B1AA64DC(v41, v40);
    v42 = sub_1B1B1BD94(v41, v40);
    v44 = v43;
    sub_1B1A94524(v41, v40);

    *(v32 + 48) = v42;
    *(v32 + 56) = v44;
    *(v32 + 72) = a2;
    *(v32 + 80) = v51;
    sub_1B1A94514(a2, v51);
    sub_1B1A949B4(0, 0);
    OUTLINED_FUNCTION_15_1();
    swift_beginAccess();

    MEMORY[0x1B2738320](v45);
    sub_1B1B3E0D4(*((*(v5 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1B1C2CEC8();
    swift_endAccess();

    v46 = sub_1B1C2C888();
    v47 = sub_1B1C2D098();

    if (os_log_type_enabled(v46, v47))
    {
      OUTLINED_FUNCTION_23_6();
      v48 = swift_slowAlloc();
      *v48 = 134217984;
      OUTLINED_FUNCTION_11_0();
      swift_beginAccess();
      v49 = *(v5 + 144);
      v52[0] = *(v5 + 128);
      v52[1] = v49;
      v53 = *(v5 + 160);
      sub_1B1B77C90();
      *(v48 + 4) = v50;
      _os_log_impl(&dword_1B1A8A000, v46, v47, "Did add to enqueuedMappedAudioInfo: %f sec", v48, 0xCu);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }

    [*(v5 + 24) unlock];
    sub_1B1B7A9C4();
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v19 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v19, qword_1ED9A9120);
    v20 = sub_1B1C2C888();
    v21 = sub_1B1C2D0B8();
    v22 = OUTLINED_FUNCTION_9_22();
    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_45_0();
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1B1A8A000, v20, v21, "#AVSBAR already stopped or waiting for finish: will not enqueue more", v24, 2u);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }

    OUTLINED_FUNCTION_15_0();
    swift_beginAccess();
    *(v5 + 168) = 1;
    if (a2)
    {
      goto LABEL_15;
    }
  }
}

uint64_t sub_1B1B7A850@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  switch(*a1)
  {
    case 3u:
      goto LABEL_5;
    default:
      v4 = sub_1B1C2D7A8();

      v6 = 0;
      if ((v4 & 1) == 0)
      {
        if (v2 > 1)
        {
LABEL_5:

          v6 = 0;
        }

        else
        {
          v7 = sub_1B1C2D7A8();

          v6 = v7 ^ 1;
        }
      }

      *a2 = v6 & 1;
      return result;
  }
}

void sub_1B1B7A9C4()
{
  if ((*(v0 + 112) & 1) == 0)
  {
    v1 = v0;
    *(v0 + 112) = 1;
    v2 = qword_1EB762980;
    if (qword_1EB762980)
    {
      v3 = *(v0 + 40);
      sub_1B1A8E474(0, &qword_1EB7629C8, 0x1E6988140);
      v4 = v3;
      v5 = v2;
      v6 = sub_1B1C2D248();

      if (v6)
      {
        byte_1EB762988 = 1;
      }
    }

    v7 = *(v1 + 32);
    v8 = *(v1 + 48);
    OUTLINED_FUNCTION_17();
    v9 = swift_allocObject();
    swift_weakInit();
    v18 = sub_1B1B7E1CC;
    v19 = v9;
    v14 = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    OUTLINED_FUNCTION_25_0();
    v16 = v10;
    v17 = &block_descriptor_92;
    v11 = _Block_copy(&v14);
    v12 = v7;
    v13 = v8;

    [v12 requestMediaDataWhenReadyOnQueue:v13 usingBlock:{v11, v14, v15}];
    _Block_release(v11);
  }
}

uint64_t sub_1B1B7AB28(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B1B7B384();
  }

  return result;
}

uint64_t sub_1B1B7AB80()
{
  blockBufferOut[1] = *MEMORY[0x1E69E9840];
  v1 = calloc(2uLL, 0x800uLL);
  blockBufferOut[0] = 0;
  OUTLINED_FUNCTION_35_9();
  v8 = CMBlockBufferCreateWithMemoryBlock(v2, v3, v4, v5, v6, v7, 0x1000uLL, 0, blockBufferOut);
  if (v8 == sub_1B1C2C958())
  {
    v61 = 0;
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_35_9();
    v16 = CMAudioFormatDescriptionCreate(v9, v10, v11, v12, v13, v14, 0, v15);
    result = sub_1B1C2C958();
    if (v16 == result)
    {
      v60[3] = 0;
      __break(1u);
      return result;
    }

    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v37 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v37, qword_1ED9A9120);
    v38 = sub_1B1C2C888();
    sub_1B1C2D0B8();
    v39 = OUTLINED_FUNCTION_19();
    if (os_log_type_enabled(v39, v40))
    {
      OUTLINED_FUNCTION_23_6();
      v41 = swift_slowAlloc();
      v42 = OUTLINED_FUNCTION_19_0();
      v60[0] = v42;
      *v41 = 136315138;
      v43 = sub_1B1B269CC(v16);
      sub_1B1A930E4(v43, v44, v60);
      OUTLINED_FUNCTION_37_7();
      *(v41 + 4) = v0;
      OUTLINED_FUNCTION_12_15();
      _os_log_impl(v45, v46, v47, v48, v49, v50);
      __swift_destroy_boxed_opaque_existential_0(v42);
      v51 = OUTLINED_FUNCTION_6_20();
      MEMORY[0x1B2739FD0](v51);
      v52 = OUTLINED_FUNCTION_10_0();
      MEMORY[0x1B2739FD0](v52);
    }

    sub_1B1C2CB58();
    OUTLINED_FUNCTION_27_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1C361C0;
    v54 = sub_1B1C2CB58();
    *(inited + 32) = v54;
    *(inited + 40) = v55;
    OUTLINED_FUNCTION_40_6(v54, MEMORY[0x1E69E6158]);
    *(inited + 48) = v56 + 19;
    *(inited + 56) = v57;
    OUTLINED_FUNCTION_38_6();
    v58 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v59 = OUTLINED_FUNCTION_13_20();
    sub_1B1B77D88(v59);
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v18 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v18, qword_1ED9A9120);
    v19 = sub_1B1C2C888();
    v20 = sub_1B1C2D0B8();
    v21 = OUTLINED_FUNCTION_9_22();
    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_23_6();
      v23 = swift_slowAlloc();
      v24 = OUTLINED_FUNCTION_19_0();
      v60[0] = v24;
      *v23 = 136315138;
      v25 = sub_1B1B269CC(v8);
      v27 = sub_1B1A930E4(v25, v26, v60);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_1B1A8A000, v19, v20, "Error in creating block buffer for Silence buffer, code: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
      v28 = OUTLINED_FUNCTION_6_20();
      MEMORY[0x1B2739FD0](v28);
    }

    v29 = sub_1B1C2CB58();
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
    v32 = swift_initStackObject();
    *(v32 + 16) = xmmword_1B1C361C0;
    *(v32 + 32) = sub_1B1C2CB58();
    *(v32 + 40) = v33;
    *(v32 + 72) = MEMORY[0x1E69E6158];
    *(v32 + 48) = 0xD000000000000031;
    *(v32 + 56) = 0x80000001B1C50400;
    v34 = sub_1B1C2CAB8();
    v35 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v36 = sub_1B1B1AE5C(v29, v31, v8, v34);
    sub_1B1B77D88(v36);
    free(v1);
  }

  return 0;
}

void sub_1B1B7B1DC()
{
  v1 = v0;
  [*(v0 + 24) lock];
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();

  v3 = sub_1B1B77A48(v2);

  if (v3)
  {
    *(v3 + 64) = 1;
  }

  else
  {
    type metadata accessor for AVSBARPlayback.AudioMappedInfoAVSBAR();
    v4 = swift_allocObject();
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 72) = 0;
    *(v4 + 80) = 0;
    v5 = *(*(v1 + 96) + 32);
    *(v4 + 24) = v5;
    *(v4 + 32) = v5;
    *(v4 + 48) = v5;
    *(v4 + 56) = v5;
    *(v4 + 64) = 1;
    OUTLINED_FUNCTION_15_1();
    v6 = swift_beginAccess();
    MEMORY[0x1B2738320](v6);
    sub_1B1B3E0D4(*((*(v1 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1B1C2CEC8();
    swift_endAccess();
  }

  [*(v1 + 24) unlock];
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v7 = sub_1B1C2C8A8();
  OUTLINED_FUNCTION_12_1(v7, qword_1ED9A9120);
  v8 = sub_1B1C2C888();
  sub_1B1C2D098();
  v9 = OUTLINED_FUNCTION_37_0();
  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_45_0();
    v11 = swift_slowAlloc();
    *v11 = 0;
    OUTLINED_FUNCTION_69();
    _os_log_impl(v12, v13, v14, v15, v11, 2u);
    OUTLINED_FUNCTION_14();
    MEMORY[0x1B2739FD0]();
  }
}

uint64_t sub_1B1B7B384()
{
  v1 = v0;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  if (sub_1B1A9547C())
  {
    if (qword_1ED9A9288 != -1)
    {
LABEL_84:
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v2 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v2, qword_1ED9A9120);

    v3 = sub_1B1C2C888();
    v4 = sub_1B1C2D0A8();

    if (os_log_type_enabled(v3, v4))
    {
      OUTLINED_FUNCTION_23_6();
      v5 = swift_slowAlloc();
      v6 = OUTLINED_FUNCTION_19_0();
      v78[0] = v6;
      *v5 = 136315138;
      v7 = 0xE600000000000000;
      v8 = sub_1B1B77DD8();
      v9 = 0x646573756170;
      switch(v8)
      {
        case 1:
          v10 = OUTLINED_FUNCTION_17_16();
          goto LABEL_8;
        case 2:
          OUTLINED_FUNCTION_19_9();
          OUTLINED_FUNCTION_44_3();
          break;
        case 3:
          v7 = 0xE700000000000000;
          v10 = OUTLINED_FUNCTION_25_8();
LABEL_8:
          v9 = v10 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
          break;
        default:
          break;
      }

      v11 = sub_1B1A930E4(v9, v7, v78);

      *(v5 + 4) = v11;
      _os_log_impl(&dword_1B1A8A000, v3, v4, "#AVSBAR Call to provide more audio data during state %s.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      v12 = OUTLINED_FUNCTION_6_20();
      MEMORY[0x1B2739FD0](v12);
      v13 = OUTLINED_FUNCTION_10_0();
      MEMORY[0x1B2739FD0](v13);
    }
  }

  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  v14 = &selRef_array;
  v15 = &selRef_array;
  v76 = 134217984;
  while ([*(v1 + 32) isReadyForMoreMediaData])
  {
    [*(v1 + 24) v14[126]];
    v16 = *(v1 + 104);
    if (v16 >> 62)
    {
      if (!sub_1B1C2D468())
      {
LABEL_45:
        [*(v1 + 24) v15[273]];
        break;
      }
    }

    else if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_45;
    }

    if ((v16 & 0xC000000000000001) != 0)
    {

      v17 = MEMORY[0x1B2738A20](0, v16);
    }

    else
    {
      if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_82;
      }

      v17 = *(v16 + 32);
    }

    OUTLINED_FUNCTION_15_1();
    swift_beginAccess();
    v18 = *(v1 + 104);
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(v1 + 104) = v18;
    if (!isUniquelyReferenced_nonNull_bridgeObject || v18 < 0 || (v18 & 0x4000000000000000) != 0)
    {
      v18 = sub_1B1C00F10(v18);
      *(v1 + 104) = v18;
    }

    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v21 = v20 - 1;
    memmove(((v18 & 0xFFFFFFFFFFFFFF8) + 32), ((v18 & 0xFFFFFFFFFFFFFF8) + 40), 8 * (v20 - 1));
    *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) = v21;
    *(v1 + 104) = v18;
    swift_endAccess();

    sub_1B1B797C4(v17);
    [*(v1 + 24) v15[273]];
    v22 = v17[2];
    if (v22)
    {
      v23 = v22;
      CMSampleBufferGetOutputDuration(&time, v23);
      Seconds = CMTimeGetSeconds(&time);
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v25 = sub_1B1C2C8A8();
      OUTLINED_FUNCTION_12_1(v25, qword_1ED9A9120);

      v26 = sub_1B1C2C888();
      v27 = sub_1B1C2D098();

      if (os_log_type_enabled(v26, v27))
      {
        OUTLINED_FUNCTION_34_8();
        v28 = swift_slowAlloc();
        v29 = v15;
        v30 = swift_slowAlloc();
        *v28 = 138412546;
        v31 = *(v1 + 32);
        *(v28 + 4) = v31;
        *v30 = v31;
        *(v28 + 12) = 2048;
        *(v28 + 14) = Seconds;
        v32 = v31;
        _os_log_impl(&dword_1B1A8A000, v26, v27, "#AVSBAR Enqueuing to %@: %f sec", v28, 0x16u);
        sub_1B1A90C20(v30, &qword_1EB7625C0, &qword_1B1C37990);
        v15 = v29;
        v14 = &selRef_array;
        OUTLINED_FUNCTION_14();
        MEMORY[0x1B2739FD0]();
        OUTLINED_FUNCTION_14();
        MEMORY[0x1B2739FD0]();
      }

      v33 = mach_absolute_time();
      [*(v1 + 32) enqueueSampleBuffer_];
      v34 = mach_absolute_time();
      v35 = v34 >= v33;
      v36 = v34 - v33;
      if (!v35)
      {
        goto LABEL_83;
      }

      if (qword_1ED9A5270 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v37 = v36;
      if (*&qword_1ED9AA500 * v36 > 0.25)
      {
        v38 = sub_1B1C2C888();
        v39 = sub_1B1C2D0B8();
        v40 = OUTLINED_FUNCTION_9_22();
        if (os_log_type_enabled(v40, v41))
        {
          OUTLINED_FUNCTION_23_6();
          v42 = swift_slowAlloc();
          *v42 = v76;
          *(v42 + 4) = *&qword_1ED9AA500 * v37;
          _os_log_impl(&dword_1B1A8A000, v38, v39, "renderer enqueueSampleBuffer high latency: %f sec", v42, 0xCu);
          OUTLINED_FUNCTION_14();
          MEMORY[0x1B2739FD0]();
        }
      }

      *(v1 + 88) = Seconds + *(v1 + 88);
      v43 = v17[9];
      if (v43)
      {
        v44 = v17[10];

        v43(0);
        sub_1B1A949B4(v43, v44);
      }

      OUTLINED_FUNCTION_11_0();
      kdebug_trace();
    }

    else
    {
      *(v1 + 168) = 1;
      v45 = v17[9];
      if (v45)
      {
        v46 = v17[10];

        v45(0);
        sub_1B1A949B4(v45, v46);
      }
    }
  }

  if (sub_1B1A9547C())
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v47 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v47, qword_1ED9A9120);
    swift_retain_n();
    v48 = sub_1B1C2C888();
    sub_1B1C2D098();
    v49 = OUTLINED_FUNCTION_19();
    if (os_log_type_enabled(v49, v50))
    {
      OUTLINED_FUNCTION_34_8();
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412546;
      v53 = *(v1 + 32);
      *(v51 + 4) = v53;
      *v52 = v53;
      *(v51 + 12) = 2048;
      v54 = sub_1B1A9547C();
      v55 = v53;

      *(v51 + 14) = v54;

      OUTLINED_FUNCTION_23_11();
      _os_log_impl(v56, v57, v58, v59, v51, 0x16u);
      sub_1B1A90C20(v52, &qword_1EB7625C0, &qword_1B1C37990);
      v14 = &selRef_array;
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }

    else
    {
    }

    v60 = 0xE600000000000000;
    v61 = sub_1B1B77DD8();
    v62 = 0x646573756170;
    switch(v61)
    {
      case 1:
        v63 = OUTLINED_FUNCTION_17_16();
        goto LABEL_56;
      case 2:
        OUTLINED_FUNCTION_49_5();
        goto LABEL_58;
      case 3:
        v60 = 0xE700000000000000;
        v63 = OUTLINED_FUNCTION_25_8();
LABEL_56:
        v62 = v63 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
        goto LABEL_57;
      default:
LABEL_57:
        v64 = OUTLINED_FUNCTION_21_10(v62, v60);

        if ((v64 & 1) == 0)
        {
          break;
        }

LABEL_58:
        [*(v1 + 24) v14[126]];
        v65 = *(v1 + 104);
        result = sub_1B1A9547C();
        if (!result)
        {
          goto LABEL_66;
        }

        v67 = result;
        if (result < 1)
        {
          __break(1u);
          return result;
        }

        for (i = 0; i != v67; ++i)
        {
          if ((v65 & 0xC000000000000001) != 0)
          {
            v69 = MEMORY[0x1B2738A20](i, v65);
          }

          else
          {
            v69 = *(v65 + 8 * i + 32);
          }

          sub_1B1B797C4(v69);
        }

LABEL_66:
        [*(v1 + 24) v15[273]];
        break;
    }
  }

  result = [*(v1 + 40) rate];
  if (v70 == 0.0)
  {
    v71 = 0x64657472617473;
    v72 = sub_1B1B77DD8();
    switch(v72)
    {
      case 1:

        goto LABEL_73;
      case 2:
        OUTLINED_FUNCTION_19_9();
        break;
      case 3:
        OUTLINED_FUNCTION_25_8();
        break;
      default:
        break;
    }

    v73 = sub_1B1C2D7A8();

    if (v73)
    {
LABEL_73:
      if (*(v1 + 88) > 0.0)
      {
        return sub_1B1B78F2C();
      }
    }

    v74 = 0xE700000000000000;
    switch(v72)
    {
      case 1:
        break;
      case 2:
        OUTLINED_FUNCTION_49_5();
        return sub_1B1B78F2C();
      case 3:
        v71 = 0x646570706F7473;
        break;
      default:
        v74 = 0xE600000000000000;
        v71 = 0x646573756170;
        break;
    }

    v75 = OUTLINED_FUNCTION_21_10(v71, v74);

    if (v75)
    {
      return sub_1B1B78F2C();
    }
  }

  return result;
}

void sub_1B1B7BCE8(char a1)
{
  if (a1)
  {
    sub_1B1B7CC30();
  }

  else
  {
    sub_1B1B7BE10();
  }
}

id sub_1B1B7BD0C()
{
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v0 = sub_1B1C2C8A8();
  OUTLINED_FUNCTION_12_1(v0, qword_1ED9A9120);
  v1 = sub_1B1C2C888();
  sub_1B1C2D0D8();
  v2 = OUTLINED_FUNCTION_9_22();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_45_0();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_29_8();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_14();
    MEMORY[0x1B2739FD0]();
  }

  return sub_1B1B7CC30();
}

void sub_1B1B7BE10()
{
  v2 = v0;
  v102 = sub_1B1C2C9F8();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v101 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v100 = &v96 - v8;
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v9 = sub_1B1C2C8A8();
  v104 = __swift_project_value_buffer(v9, qword_1ED9A9120);
  v10 = sub_1B1C2C888();
  v11 = sub_1B1C2D098();
  v12 = OUTLINED_FUNCTION_9_22();
  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_45_0();
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1B1A8A000, v10, v11, "#AVSBAR waitUntilFinished", v14, 2u);
    OUTLINED_FUNCTION_14();
    MEMORY[0x1B2739FD0]();
  }

  os_unfair_lock_lock((v2 + 56));
  sub_1B1B7C94C((v2 + 60), v2, &aBlock);
  if (v1)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock((v2 + 56));
  value = aBlock.value;
  if (!aBlock.value)
  {
    v77 = sub_1B1C2C888();
    sub_1B1C2D0B8();
    v78 = OUTLINED_FUNCTION_37_0();
    if (os_log_type_enabled(v78, v79))
    {
      OUTLINED_FUNCTION_45_0();
      v80 = swift_slowAlloc();
      *v80 = 0;
      OUTLINED_FUNCTION_69();
      _os_log_impl(v81, v82, v83, v84, v80, 2u);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }

    return;
  }

  sub_1B1B7B1DC();
  v16 = *(v2 + 48);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B1B7DA90;
  *(v17 + 24) = v2;
  v115 = sub_1B1AF77FC;
  v116 = v17;
  aBlock.value = MEMORY[0x1E69E9820];
  *&aBlock.timescale = 1107296256;
  aBlock.epoch = sub_1B1AAC018;
  v114 = &block_descriptor_21;
  v18 = _Block_copy(&aBlock);
  v19 = v16;

  dispatch_sync(v19, v18);

  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
LABEL_39:
    os_unfair_lock_unlock((v2 + 56));
    __break(1u);
    return;
  }

  v97 = 0;
  [*(v2 + 40) currentTime];
  v20 = aBlock.value;
  v96 = *&aBlock.timescale;
  epoch = aBlock.epoch;
  v21 = *(v2 + 64);
  v22 = value;
  v24 = *(v2 + 72);
  v23 = *(v2 + 76);
  v99 = v4;
  v25 = *(v2 + 80);
  v110 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B1C37D90;
  v27 = objc_opt_self();
  v98[0] = v110;
  v109 = v21;
  aBlock.value = v21;
  v28 = v20;
  v108 = v24;
  aBlock.timescale = v24;
  aBlock.flags = v23;
  v107 = v23;
  v106 = v25;
  aBlock.epoch = v25;
  *(v26 + 32) = [v27 valueWithCMTime_];
  sub_1B1A8E474(0, &qword_1ED9A8D78, 0x1E696B098);
  v29 = sub_1B1C2CE68();

  v110 = v2;
  v30 = *(v2 + 48);
  OUTLINED_FUNCTION_17();
  v31 = swift_allocObject();
  *(v31 + 16) = v22;
  v115 = sub_1B1B7DA94;
  v116 = v31;
  aBlock.value = MEMORY[0x1E69E9820];
  *&aBlock.timescale = 1107296256;
  v32 = v96;
  aBlock.epoch = sub_1B1A95870;
  v114 = &block_descriptor_6_4;
  v33 = _Block_copy(&aBlock);
  v34 = v30;
  v103 = v22;

  v35 = v98[0];
  v36 = [v98[0] addBoundaryTimeObserverForTimes:v29 queue:v34 usingBlock:v33];
  _Block_release(v33);

  v37 = HIDWORD(v96);
  sub_1B1C2D3F8();
  v38 = epoch;
  swift_unknownObjectRelease();
  v39 = 0;
  ++v99;
  *&v40 = 134218240;
  *v98 = v40;
  while (2)
  {
    HIDWORD(v96) = v39;
    v41 = v28;
    v42 = v37;
LABEL_10:
    v43 = v38;
    do
    {
      do
      {
        aBlock.value = v41;
        aBlock.timescale = v32;
        aBlock.flags = v42;
        aBlock.epoch = v43;
        OUTLINED_FUNCTION_41_2();
        time2.value = v44;
        OUTLINED_FUNCTION_46_6();
        time2.timescale = v46;
        time2.flags = v45;
        time2.epoch = v106;
        if ((CMTimeCompare(&aBlock, &time2) & 0x80000000) == 0)
        {
          OUTLINED_FUNCTION_22_10();
          goto LABEL_34;
        }

        v47 = sub_1B1C2C888();
        v48 = sub_1B1C2D0D8();
        v49 = OUTLINED_FUNCTION_9_22();
        if (os_log_type_enabled(v49, v50))
        {
          OUTLINED_FUNCTION_34_8();
          v51 = swift_slowAlloc();
          *v51 = v98[0];
          aBlock.value = v41;
          aBlock.timescale = v32;
          aBlock.flags = v42;
          aBlock.epoch = v43;
          *(v51 + 4) = CMTimeGetSeconds(&aBlock);
          *(v51 + 12) = 2048;
          OUTLINED_FUNCTION_41_2();
          aBlock.value = v52;
          OUTLINED_FUNCTION_46_6();
          aBlock.timescale = v54;
          aBlock.flags = v53;
          aBlock.epoch = v106;
          *(v51 + 14) = CMTimeGetSeconds(&aBlock);
          _os_log_impl(&dword_1B1A8A000, v47, v48, "#AVSBAR Waiting for synchronizer finishing playing between current %f sec and until %f sec", v51, 0x16u);
          OUTLINED_FUNCTION_14();
          MEMORY[0x1B2739FD0]();
        }

        v55 = v101;
        sub_1B1C2C9E8();
        v56 = v100;
        sub_1B1C2CA18();
        v57 = *v99;
        v34 = v102;
        (*v99)(v55, v102);
        sub_1B1C2D1A8();
        v57(v56, v34);
        sub_1B1C2C978();
        OUTLINED_FUNCTION_22_10();
        if ((v58 & 1) != 0 || !*(v34 + 120))
        {
          goto LABEL_34;
        }

        [*(v34 + 40) currentTime];
        v59 = aBlock.value;
        timescale = aBlock.timescale;
        flags = aBlock.flags;
        v38 = aBlock.epoch;
        [*(v34 + 40) rate];
        epoch = v59;
        if (v62 <= 0.0)
        {
          v63 = timescale;
          break;
        }

        aBlock.value = v59;
        aBlock.timescale = timescale;
        aBlock.flags = flags;
        aBlock.epoch = v38;
        time2.value = v41;
        time2.timescale = v32;
        time2.flags = v42;
        time2.epoch = v43;
        v43 = v38;
        v41 = v59;
        v63 = timescale;
        v32 = timescale;
        v42 = flags;
      }

      while (CMTimeCompare(&aBlock, &time2) > 0);
      sub_1B1B77DD8();
      OUTLINED_FUNCTION_17_16();
      switch(v64)
      {
        case 1:
          break;
        case 2:
          OUTLINED_FUNCTION_19_9();
          OUTLINED_FUNCTION_44_3();
          break;
        case 3:
          OUTLINED_FUNCTION_25_8();
          break;
        default:

          OUTLINED_FUNCTION_39_7();
          goto LABEL_10;
      }

      v34 = sub_1B1C2D7A8();

      OUTLINED_FUNCTION_39_7();
      v43 = v38;
    }

    while ((v34 & 1) != 0);
    v37 = flags;
    v39 = HIDWORD(v96) + 1;
    v32 = v63;
    v28 = epoch;
    if (HIDWORD(v96) != 4)
    {
      continue;
    }

    break;
  }

  v65 = v110;

  v66 = sub_1B1C2C888();
  v67 = sub_1B1C2D0B8();

  if (os_log_type_enabled(v66, v67))
  {
    OUTLINED_FUNCTION_34_8();
    v68 = swift_slowAlloc();
    *v68 = v98[0];
    [v65[5] rate];
    *(v68 + 4) = v69;
    *(v68 + 12) = 2048;
    aBlock.value = v28;
    aBlock.timescale = v63;
    aBlock.flags = flags;
    aBlock.epoch = v38;
    *(v68 + 14) = CMTimeGetSeconds(&aBlock);
    _os_log_impl(&dword_1B1A8A000, v66, v67, "#AVSBAR Synchronizer is stalled with rate %f at time %f.", v68, 0x16u);
    OUTLINED_FUNCTION_14();
    MEMORY[0x1B2739FD0]();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C361C0;
  v71 = sub_1B1C2CB58();
  v72 = MEMORY[0x1E69E6158];
  *(inited + 32) = v71;
  *(inited + 40) = v73;
  *(inited + 72) = v72;
  *(inited + 48) = 0xD000000000000034;
  *(inited + 56) = 0x80000001B1C501C0;
  v74 = sub_1B1C2CAB8();
  v75 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v76 = sub_1B1B1AE5C(0xD00000000000001BLL, 0x80000001B1C50100, 2, v74);
  sub_1B1B77D88(v76);
  v34 = v65;
LABEL_34:
  v85 = v97;
  v86 = *(v34 + 40);
  __swift_project_boxed_opaque_existential_1(v112, v112[3]);
  v87 = v86;
  [v87 removeTimeObserver_];

  swift_unknownObjectRelease();
  v88 = *(v34 + 120);
  *(v34 + 120) = 0;

  sub_1B1B7CC30();
  if (!v85)
  {
    v89 = *(v34 + 16);
    if (v89)
    {
      v90 = v89;
      v91 = [v90 description];
      v92 = sub_1B1C2CB58();
      v94 = v93;

      sub_1B1A9EC9C();
      swift_allocError();
      *v95 = 14;
      *(v95 + 8) = v92;
      *(v95 + 16) = v94;
      swift_willThrow();
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v112);
}

void sub_1B1B7C94C(_BYTE *a1@<X0>, uint64_t a2@<X1>, dispatch_semaphore_t *a3@<X8>)
{
  v3 = *a1;
  switch(*a1)
  {
    case 3:
      goto LABEL_6;
    default:
      v7 = sub_1B1C2D7A8();

      if (v7)
      {
        goto LABEL_7;
      }

      if (v3 > 1)
      {
LABEL_6:
      }

      else
      {
        v8 = sub_1B1C2D7A8();

        if ((v8 & 1) == 0)
        {
          v9 = dispatch_semaphore_create(0);
          v10 = *(a2 + 120);
          *(a2 + 120) = v9;
          v11 = v9;

          *a1 = 2;
          goto LABEL_8;
        }
      }

LABEL_7:
      v9 = 0;
LABEL_8:
      *a3 = v9;
      return;
  }
}

uint64_t sub_1B1B7CAEC()
{
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v0 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v0, qword_1ED9A9120);
  v1 = sub_1B1C2C888();
  v2 = sub_1B1C2D098();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B1A8A000, v1, v2, "#AVSBAR Synchronizer reached endTime", v3, 2u);
    MEMORY[0x1B2739FD0](v3, -1, -1);
  }

  return sub_1B1C2D1C8();
}

void sub_1B1B7CBD0()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    *(v0 + 120) = 0;
    v2 = v1;
    sub_1B1C2D1C8();
  }
}

id sub_1B1B7CC30()
{
  v2 = v0;
  sub_1B1C2C988();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16();
  v68 = v5 - v4;
  v69 = sub_1B1C2C9D8();
  OUTLINED_FUNCTION_7();
  v67 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16();
  v10 = v9 - v8;
  v66 = sub_1B1C2C998();
  OUTLINED_FUNCTION_7();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16();
  v16 = v15 - v14;
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v17 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v17, qword_1ED9A9120);
  v18 = sub_1B1C2C888();
  v19 = sub_1B1C2D0D8();
  v20 = OUTLINED_FUNCTION_9_22();
  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_45_0();
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1B1A8A000, v18, v19, "Stopping synchronizer and renderer", v22, 2u);
    v23 = OUTLINED_FUNCTION_10_0();
    MEMORY[0x1B2739FD0](v23);
  }

  sub_1B1B77E0C(3);
  sub_1B1B7CBD0();
  [*(v2 + 32) stopRequestingMediaData];

  v24 = sub_1B1C2C888();
  v25 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v24, v25))
  {
    OUTLINED_FUNCTION_23_6();
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    [*(v2 + 40) currentTime];
    *(v26 + 4) = CMTimeGetSeconds(&time);
    OUTLINED_FUNCTION_12_15();
    _os_log_impl(v27, v28, v29, v30, v31, v32);
    v33 = OUTLINED_FUNCTION_10_0();
    MEMORY[0x1B2739FD0](v33);
  }

  v34 = mach_absolute_time();
  v35 = *(v2 + 40);
  v36 = *(MEMORY[0x1E6960CC0] + 16);
  time.value = *MEMORY[0x1E6960CC0];
  *&time.timescale = *(MEMORY[0x1E6960CC0] + 8);
  time.epoch = v36;
  [v35 setRate:&time time:0.0];
  v37 = mach_absolute_time();
  if (v37 < v34)
  {
    __break(1u);
  }

  else
  {
    v1 = (v37 - v34);
    if (qword_1ED9A5270 == -1)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_0_6();
  swift_once();
LABEL_9:
  if (*&qword_1ED9AA500 * v1 > 0.25)
  {
    v38 = sub_1B1C2C888();
    sub_1B1C2D0B8();
    v39 = OUTLINED_FUNCTION_9_22();
    if (os_log_type_enabled(v39, v40))
    {
      OUTLINED_FUNCTION_23_6();
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = *&qword_1ED9AA500 * v1;
      OUTLINED_FUNCTION_12_15();
      _os_log_impl(v42, v43, v44, v45, v46, v47);
      v48 = OUTLINED_FUNCTION_10_0();
      MEMORY[0x1B2739FD0](v48);
    }
  }

  v49 = sub_1B1C2C888();
  v50 = sub_1B1C2D098();

  if (os_log_type_enabled(v49, v50))
  {
    OUTLINED_FUNCTION_23_6();
    v51 = swift_slowAlloc();
    *v51 = 134217984;
    [*(v2 + 40) rate];
    *(v51 + 4) = v52;
    OUTLINED_FUNCTION_69();
    _os_log_impl(v53, v54, v55, v56, v51, 0xCu);
    v57 = OUTLINED_FUNCTION_10_0();
    MEMORY[0x1B2739FD0](v57);
  }

  sub_1B1A8E474(0, &qword_1ED9A9940, 0x1E69E9610);
  (*(v12 + 104))(v16, *MEMORY[0x1E69E7F90], v66);
  v58 = sub_1B1C2D168();
  (*(v12 + 8))(v16, v66);
  v72 = sub_1B1B7DA9C;
  v73 = v2;
  OUTLINED_FUNCTION_2_2();
  *&time.timescale = 1107296256;
  OUTLINED_FUNCTION_25_0();
  time.epoch = v59;
  v71 = &block_descriptor_9_1;
  v60 = _Block_copy(&time);

  sub_1B1C2C9A8();
  OUTLINED_FUNCTION_15_15();
  sub_1B1A979CC(v61, v62, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
  sub_1B1A97978(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430);
  sub_1B1C2D418();
  MEMORY[0x1B2738610](0, v10, v68, v60);
  _Block_release(v60);

  v63 = OUTLINED_FUNCTION_42_0();
  v64(v63);
  (*(v67 + 8))(v10, v69);

  return sub_1B1B7D614();
}

void sub_1B1B7D264(uint64_t a1)
{
  [*(a1 + 32) flush];
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v2 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v2, qword_1ED9A9120);
  v3 = sub_1B1C2C888();
  v4 = sub_1B1C2D098();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B1A8A000, v3, v4, "#AVSBAR renderer was flushed", v5, 2u);
    MEMORY[0x1B2739FD0](v5, -1, -1);
  }

  *(a1 + 112) = 0;
  v6 = qword_1EB762980;
  if (qword_1EB762980)
  {
    v7 = *(a1 + 40);
    sub_1B1A8E474(0, &qword_1EB7629C8, 0x1E6988140);
    v8 = v7;
    v9 = v6;
    v10 = sub_1B1C2D248();

    if (v10)
    {
      byte_1EB762988 = 0;
    }
  }
}

void sub_1B1B7D3B0()
{
  v2 = v0;
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v3 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v3, qword_1ED9A9120);
  v4 = sub_1B1C2C888();
  sub_1B1C2D0D8();
  v5 = OUTLINED_FUNCTION_19();
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_45_0();
    v7 = swift_slowAlloc();
    *v7 = 0;
    OUTLINED_FUNCTION_23_11();
    _os_log_impl(v8, v9, v10, v11, v7, 2u);
    v12 = OUTLINED_FUNCTION_10_0();
    MEMORY[0x1B2739FD0](v12);
  }

  sub_1B1B77E0C(0);

  v13 = sub_1B1C2C888();
  v14 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_23_6();
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    [*(v2 + 40) currentTime];
    *(v15 + 4) = CMTimeGetSeconds(&time);
    OUTLINED_FUNCTION_12_15();
    _os_log_impl(v16, v17, v18, v19, v20, v21);
    v22 = OUTLINED_FUNCTION_10_0();
    MEMORY[0x1B2739FD0](v22);
  }

  v23 = mach_absolute_time();
  [*(v2 + 40) setRate_];
  v24 = mach_absolute_time();
  if (v24 < v23)
  {
    __break(1u);
  }

  else
  {
    v1 = (v24 - v23);
    if (qword_1ED9A5270 == -1)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_0_6();
  swift_once();
LABEL_9:
  if (*&qword_1ED9AA500 * v1 > 0.25)
  {
    v25 = sub_1B1C2C888();
    sub_1B1C2D0B8();
    v26 = OUTLINED_FUNCTION_37_0();
    if (os_log_type_enabled(v26, v27))
    {
      OUTLINED_FUNCTION_23_6();
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      *(v28 + 4) = *&qword_1ED9AA500 * v1;
      OUTLINED_FUNCTION_69();
      _os_log_impl(v29, v30, v31, v32, v28, 0xCu);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }
  }
}

id sub_1B1B7D614()
{
  v1 = v0;
  [*(v0 + 24) lock];
  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  if (sub_1B1A9547C())
  {
    if (qword_1ED9A9288 != -1)
    {
LABEL_21:
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v2 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v2, qword_1ED9A9120);

    v3 = sub_1B1C2C888();
    sub_1B1C2D0D8();
    v4 = OUTLINED_FUNCTION_9_22();
    if (os_log_type_enabled(v4, v5))
    {
      OUTLINED_FUNCTION_23_6();
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = sub_1B1A9547C();

      OUTLINED_FUNCTION_29_8();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }

    else
    {
    }

    v12 = *(v1 + 104);
    v13 = sub_1B1A9547C();

    for (i = 0; v13 != i; ++i)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1B2738A20](i, v12);
      }

      else
      {
        if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v15 = *(v12 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v16 = *(v15 + 72);
      if (v16)
      {
        v17 = *(v15 + 80);

        v16(0);

        sub_1B1A949B4(v16, v17);
      }

      else
      {
      }
    }

    *(v1 + 104) = MEMORY[0x1E69E7CC0];
  }

  return [*(v1 + 24) unlock];
}

uint64_t sub_1B1B7D830(_DWORD *a1, _DWORD *a2)
{
  [*(v2 + 32) volume];
  *a1 = v5;
  [*(v2 + 32) volume];
  *a2 = v6;
  return 1;
}

uint64_t sub_1B1B7D90C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = AVSBARPlayback.__allocating_init(audioSessionId:asbd:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id sub_1B1B7D9EC(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

void sub_1B1B7DA2C(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t dispatch thunk of AVSBARPlayback.asbd.setter()
{
  OUTLINED_FUNCTION_44();
  v1 = *(v0 + 504);
  v6 = v2;
  v4 = *(v3 + 24);
  v7 = *(v3 + 8);
  v8 = v4;
  return v1(&v6);
}

uint64_t dispatch thunk of AVSBARPlayback.__allocating_init(audioSessionId:asbd:)(uint64_t a1, uint64_t *a2)
{
  v3 = *(v2 + 600);
  v6 = *a2;
  v4 = *(a2 + 3);
  v7 = *(a2 + 1);
  v8 = v4;
  return v3(a1, &v6);
}

uint64_t getEnumTagSinglePayload for AudioPlaybackServiceState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AudioPlaybackServiceState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B1B7E0E0()
{
  result = qword_1EB7629B8;
  if (!qword_1EB7629B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7629B8);
  }

  return result;
}

uint64_t sub_1B1B7E134(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, id *a5)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v8 = WORD2(a2);
  v7 = a2;
  if (a3 > BYTE6(a2))
  {
    __break(1u);
  }

  return sub_1B1B7A1A0(*MEMORY[0x1E695E480], &v6 + a3, a4, a5);
}

unint64_t Realtime_V1_ClientEventType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0xA;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B1B7E25C@<X0>(uint64_t *a1@<X8>)
{
  result = Realtime_V1_ClientEventType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B1B7E290(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B8C340();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Realtime_V1_ClientEvent.sessionUpdate.getter()
{
  OUTLINED_FUNCTION_83();
  v2 = OUTLINED_FUNCTION_126();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_23(v4);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_23(v6, v11);
  OUTLINED_FUNCTION_6_21();
  if (v7)
  {
    sub_1B1A90C20(v1, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_27_11();
      OUTLINED_FUNCTION_49();
      return sub_1B1B884C0();
    }

    sub_1B1B8844C();
  }

  sub_1B1C2C5B8();
  v9 = *(type metadata accessor for Realtime_V1_SessionUpdate(0) + 20);
  if (qword_1EB761678 != -1)
  {
    OUTLINED_FUNCTION_41_3(&qword_1EB761678);
  }

  *(v0 + v9) = qword_1EB762A18;
}

uint64_t Realtime_V1_SessionUpdate.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1B1C2C5B8();
  v3 = *(type metadata accessor for Realtime_V1_SessionUpdate(0) + 20);
  if (qword_1EB761678 != -1)
  {
    OUTLINED_FUNCTION_41_3(&qword_1EB761678);
  }

  *(a2 + v3) = qword_1EB762A18;
}

void Realtime_V1_ClientEvent.sessionUpdate.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  v9 = type metadata accessor for Realtime_V1_SessionUpdate(v8);
  OUTLINED_FUNCTION_45();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_80(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_16_3(v14);
  OUTLINED_FUNCTION_3_21();
  if (v15)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    OUTLINED_FUNCTION_126();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_27_11();
      OUTLINED_FUNCTION_67_2();
      sub_1B1B884C0();
      goto LABEL_9;
    }

    sub_1B1B8844C();
  }

  sub_1B1C2C5B8();
  v17 = *(v9 + 20);
  if (qword_1EB761678 != -1)
  {
    OUTLINED_FUNCTION_41_3(&qword_1EB761678);
  }

  *(v11 + v17) = qword_1EB762A18;

LABEL_9:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ClientEvent.inputAudioBufferAppend.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_23(v5, v10);
  OUTLINED_FUNCTION_6_21();
  if (v6)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_31_7();
      OUTLINED_FUNCTION_49();
      return sub_1B1B884C0();
    }

    sub_1B1B8844C();
  }

  OUTLINED_FUNCTION_11_20();
  v9 = type metadata accessor for Realtime_V1_InputAudioBufferAppend(0);
  return OUTLINED_FUNCTION_112_0(v9);
}

uint64_t sub_1B1B7E7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_23(v9);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_126();
  sub_1B1B88514();
  return a7(v7);
}

void Realtime_V1_ClientEvent.inputAudioBufferAppend.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  type metadata accessor for Realtime_V1_InputAudioBufferAppend(v8);
  OUTLINED_FUNCTION_45();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_80(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_16_3(v12);
  OUTLINED_FUNCTION_3_21();
  if (v13)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    sub_1B1C2C5B8();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B1B8844C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_67_2();
  sub_1B1B884C0();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ClientEvent.inputAudioBufferCommit.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_23(v5, v11);
  OUTLINED_FUNCTION_6_21();
  if (v6)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_30_9();
      OUTLINED_FUNCTION_49();
      return sub_1B1B884C0();
    }

    sub_1B1B8844C();
  }

  v9 = OUTLINED_FUNCTION_10_23();
  v10 = type metadata accessor for Realtime_V1_InputAudioBufferCommit(v9);
  return OUTLINED_FUNCTION_106_0(v10);
}

void Realtime_V1_ClientEvent.inputAudioBufferCommit.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  type metadata accessor for Realtime_V1_InputAudioBufferCommit(v8);
  OUTLINED_FUNCTION_45();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_80(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_16_3(v12);
  OUTLINED_FUNCTION_3_21();
  if (v13)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
LABEL_7:
    OUTLINED_FUNCTION_44_4();
    OUTLINED_FUNCTION_77_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1B1B8844C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_30_9();
  OUTLINED_FUNCTION_67_2();
  sub_1B1B884C0();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ClientEvent.inputAudioBufferClear.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_23(v5, v11);
  OUTLINED_FUNCTION_6_21();
  if (v6)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_29_9();
      OUTLINED_FUNCTION_49();
      return sub_1B1B884C0();
    }

    sub_1B1B8844C();
  }

  v9 = OUTLINED_FUNCTION_10_23();
  v10 = type metadata accessor for Realtime_V1_InputAudioBufferClear(v9);
  return OUTLINED_FUNCTION_106_0(v10);
}

uint64_t sub_1B1B7EDA8()
{
  v0 = OUTLINED_FUNCTION_10_23();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_106_0(v2);
}

void Realtime_V1_ClientEvent.inputAudioBufferClear.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  type metadata accessor for Realtime_V1_InputAudioBufferClear(v8);
  OUTLINED_FUNCTION_45();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_80(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_16_3(v12);
  OUTLINED_FUNCTION_3_21();
  if (v13)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
LABEL_7:
    OUTLINED_FUNCTION_44_4();
    OUTLINED_FUNCTION_77_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1B1B8844C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_29_9();
  OUTLINED_FUNCTION_67_2();
  sub_1B1B884C0();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ClientEvent.conversationItemCreate.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_23(v5, v14);
  OUTLINED_FUNCTION_6_21();
  if (v6)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_28_7();
      OUTLINED_FUNCTION_49();
      return sub_1B1B884C0();
    }

    sub_1B1B8844C();
  }

  OUTLINED_FUNCTION_11_20();
  v9 = type metadata accessor for Realtime_V1_ConversationItemCreate(0);
  OUTLINED_FUNCTION_112_0(v9);
  type metadata accessor for Realtime_V1_Item(0);
  v10 = OUTLINED_FUNCTION_55_2();
  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t Realtime_V1_ConversationItemCreate.init()()
{
  OUTLINED_FUNCTION_11_20();
  v0 = type metadata accessor for Realtime_V1_ConversationItemCreate(0);
  OUTLINED_FUNCTION_112_0(v0);
  type metadata accessor for Realtime_V1_Item(0);
  v1 = OUTLINED_FUNCTION_55_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Realtime_V1_ClientEvent.conversationItemCreate.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  type metadata accessor for Realtime_V1_ConversationItemCreate(v8);
  OUTLINED_FUNCTION_45();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_80(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_16_3(v12);
  OUTLINED_FUNCTION_3_21();
  if (v13)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    sub_1B1C2C5B8();
    type metadata accessor for Realtime_V1_Item(0);
    OUTLINED_FUNCTION_115_0();
    OUTLINED_FUNCTION_64_1();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_1B1B8844C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_67_2();
  sub_1B1B884C0();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ClientEvent.conversationItemTruncate.getter()
{
  OUTLINED_FUNCTION_83();
  v2 = OUTLINED_FUNCTION_126();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_23(v4);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_23(v6, v10);
  OUTLINED_FUNCTION_6_21();
  if (v7)
  {
    sub_1B1A90C20(v1, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_26_7();
      OUTLINED_FUNCTION_49();
      return sub_1B1B884C0();
    }

    sub_1B1B8844C();
  }

  OUTLINED_FUNCTION_11_20();
  *(v0 + 48) = 0;
  type metadata accessor for Realtime_V1_ConversationItemTruncate(0);
  return sub_1B1C2C5B8();
}

uint64_t Realtime_V1_ConversationItemTruncate.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_11_20();
  *(a1 + 48) = 0;
  type metadata accessor for Realtime_V1_ConversationItemTruncate(0);
  return sub_1B1C2C5B8();
}

void Realtime_V1_ClientEvent.conversationItemTruncate.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  type metadata accessor for Realtime_V1_ConversationItemTruncate(v8);
  OUTLINED_FUNCTION_45();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_80(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_3(v13);
  OUTLINED_FUNCTION_3_21();
  if (v14)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    *(v10 + 48) = 0;
    sub_1B1C2C5B8();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    sub_1B1B8844C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_26_7();
  OUTLINED_FUNCTION_67_2();
  sub_1B1B884C0();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ClientEvent.conversationItemDelete.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_23(v5, v10);
  OUTLINED_FUNCTION_6_21();
  if (v6)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_25_9();
      OUTLINED_FUNCTION_49();
      return sub_1B1B884C0();
    }

    sub_1B1B8844C();
  }

  OUTLINED_FUNCTION_11_20();
  v9 = type metadata accessor for Realtime_V1_ConversationItemDelete(0);
  return OUTLINED_FUNCTION_112_0(v9);
}

uint64_t sub_1B1B7F618@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  v2 = a1(0);
  return OUTLINED_FUNCTION_112_0(v2);
}

void Realtime_V1_ClientEvent.conversationItemDelete.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  type metadata accessor for Realtime_V1_ConversationItemDelete(v8);
  OUTLINED_FUNCTION_45();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_80(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_16_3(v12);
  OUTLINED_FUNCTION_3_21();
  if (v13)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    sub_1B1C2C5B8();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    sub_1B1B8844C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_25_9();
  OUTLINED_FUNCTION_67_2();
  sub_1B1B884C0();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ClientEvent.responseCreate.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_23(v5, v15);
  OUTLINED_FUNCTION_6_21();
  if (v6)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      OUTLINED_FUNCTION_24_5();
      OUTLINED_FUNCTION_49();
      return sub_1B1B884C0();
    }

    sub_1B1B8844C();
  }

  v9 = OUTLINED_FUNCTION_10_23();
  v10 = type metadata accessor for Realtime_V1_ResponseCreate(v9);
  OUTLINED_FUNCTION_106_0(v10);
  type metadata accessor for Realtime_V1_Response(0);
  v11 = OUTLINED_FUNCTION_55_2();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t Realtime_V1_ResponseCreate.init()()
{
  v0 = OUTLINED_FUNCTION_10_23();
  v1 = type metadata accessor for Realtime_V1_ResponseCreate(v0);
  OUTLINED_FUNCTION_106_0(v1);
  type metadata accessor for Realtime_V1_Response(0);
  v2 = OUTLINED_FUNCTION_55_2();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void Realtime_V1_ClientEvent.responseCreate.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  type metadata accessor for Realtime_V1_ResponseCreate(v8);
  OUTLINED_FUNCTION_45();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_80(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_16_3(v12);
  OUTLINED_FUNCTION_3_21();
  if (v13)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
LABEL_7:
    OUTLINED_FUNCTION_44_4();
    OUTLINED_FUNCTION_77_0();
    type metadata accessor for Realtime_V1_Response(0);
    OUTLINED_FUNCTION_115_0();
    OUTLINED_FUNCTION_64_1();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    sub_1B1B8844C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_67_2();
  sub_1B1B884C0();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ClientEvent.responseCancel.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_23(v5, v11);
  OUTLINED_FUNCTION_6_21();
  if (v6)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      OUTLINED_FUNCTION_21_11();
      OUTLINED_FUNCTION_49();
      return sub_1B1B884C0();
    }

    sub_1B1B8844C();
  }

  v9 = OUTLINED_FUNCTION_10_23();
  v10 = type metadata accessor for Realtime_V1_ResponseCancel(v9);
  return OUTLINED_FUNCTION_106_0(v10);
}

uint64_t sub_1B1B7FBBC()
{
  sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
  OUTLINED_FUNCTION_67_2();
  sub_1B1B884C0();
  v1 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  OUTLINED_FUNCTION_67_0();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_79_1();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
}

void Realtime_V1_ClientEvent.responseCancel.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  type metadata accessor for Realtime_V1_ResponseCancel(v8);
  OUTLINED_FUNCTION_45();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_80(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_16_3(v12);
  OUTLINED_FUNCTION_3_21();
  if (v13)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
LABEL_7:
    OUTLINED_FUNCTION_44_4();
    OUTLINED_FUNCTION_77_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 8)
  {
    sub_1B1B8844C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_21_11();
  OUTLINED_FUNCTION_67_2();
  sub_1B1B884C0();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

void sub_1B1B7FDC8()
{
  OUTLINED_FUNCTION_25();
  v1 = (*v0)[3];
  v2 = (*v0)[4];
  v3 = (*v0)[1];
  v4 = (*v0)[2];
  v5 = **v0;
  if (v6)
  {
    OUTLINED_FUNCTION_33();
    sub_1B1B88514();
    sub_1B1A90C20(v5, &qword_1EB762AE0, &qword_1B1C3A110);
    sub_1B1B884C0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_79_1();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
    sub_1B1B8844C();
  }

  else
  {
    sub_1B1A90C20(**v0, &qword_1EB762AE0, &qword_1B1C3A110);
    sub_1B1B884C0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_79_1();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v2);
  }

  free(v1);
  free(v4);
  free(v3);
  OUTLINED_FUNCTION_26_1();

  free(v13);
}

uint64_t Realtime_V1_ClientEvent.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_89();
  type metadata accessor for Realtime_V1_ClientEvent(v0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45();
  v1 = OUTLINED_FUNCTION_84_0();

  return v2(v1);
}

uint64_t Realtime_V1_ClientEvent.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_ClientEvent(v0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45();
  v1 = OUTLINED_FUNCTION_113_0();

  return v2(v1);
}

uint64_t Realtime_V1_ClientEvent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Realtime_V1_ClientEvent(v0);
  return OUTLINED_FUNCTION_85_0();
}

void static Realtime_V1_ClientEvent.OneOf_Event.== infix(_:_:)()
{
  OUTLINED_FUNCTION_25();
  v99 = v1;
  v100 = v2;
  v85[5] = type metadata accessor for Realtime_V1_ResponseCancel(0);
  OUTLINED_FUNCTION_45();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_1();
  v95 = v4;
  v5 = OUTLINED_FUNCTION_81_1();
  v6 = type metadata accessor for Realtime_V1_ResponseCreate(v5);
  v7 = OUTLINED_FUNCTION_23(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_1();
  v93 = v8;
  v9 = OUTLINED_FUNCTION_81_1();
  v85[2] = type metadata accessor for Realtime_V1_ConversationItemDelete(v9);
  OUTLINED_FUNCTION_45();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_1();
  v94 = v11;
  v12 = OUTLINED_FUNCTION_81_1();
  v13 = type metadata accessor for Realtime_V1_ConversationItemTruncate(v12);
  v14 = OUTLINED_FUNCTION_23(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_1();
  v89 = v15;
  v16 = OUTLINED_FUNCTION_81_1();
  v17 = type metadata accessor for Realtime_V1_ConversationItemCreate(v16);
  v18 = OUTLINED_FUNCTION_23(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14_1();
  v88 = v19;
  v20 = OUTLINED_FUNCTION_81_1();
  v85[4] = type metadata accessor for Realtime_V1_InputAudioBufferClear(v20);
  OUTLINED_FUNCTION_45();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14_1();
  v92 = v22;
  v23 = OUTLINED_FUNCTION_81_1();
  v85[3] = type metadata accessor for Realtime_V1_InputAudioBufferCommit(v23);
  OUTLINED_FUNCTION_45();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14_1();
  v90 = v25;
  v26 = OUTLINED_FUNCTION_81_1();
  v85[1] = type metadata accessor for Realtime_V1_InputAudioBufferAppend(v26);
  OUTLINED_FUNCTION_45();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_14_1();
  v91 = v28;
  v29 = OUTLINED_FUNCTION_81_1();
  v86 = type metadata accessor for Realtime_V1_SessionUpdate(v29);
  OUTLINED_FUNCTION_45();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_14_1();
  v87 = v31;
  v32 = OUTLINED_FUNCTION_81_1();
  type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(v32);
  OUTLINED_FUNCTION_45();
  MEMORY[0x1EEE9AC00](v33);
  v97 = v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_16_0();
  v36 = MEMORY[0x1EEE9AC00](v35);
  MEMORY[0x1EEE9AC00](v36);
  v98 = v85 - v37;
  OUTLINED_FUNCTION_16_0();
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = v85 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  MEMORY[0x1EEE9AC00](v42);
  v96 = v85 - v43;
  OUTLINED_FUNCTION_16_0();
  v45 = MEMORY[0x1EEE9AC00](v44);
  v47 = v85 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v49 = v85 - v48;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v50);
  v52 = v85 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE8, &qword_1B1C3A118);
  OUTLINED_FUNCTION_23(v53);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_35();
  sub_1B1B88514();
  sub_1B1B88514();
  OUTLINED_FUNCTION_67_2();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_1_32();
      sub_1B1B88514();
      if (OUTLINED_FUNCTION_94_0() != 1)
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_31_7();
      v62 = v91;
      sub_1B1B884C0();
      OUTLINED_FUNCTION_96_0();
      v65 = v56 && v63 == v64;
      if (!v65 && (sub_1B1C2D7A8() & 1) == 0)
      {
        goto LABEL_70;
      }

      if (!OUTLINED_FUNCTION_91_1())
      {
        goto LABEL_70;
      }

      v66 = *(v49 + 4) == *(v62 + 32) && *(v49 + 5) == *(v62 + 40);
      if (!v66 && (sub_1B1C2D7A8() & 1) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_60;
    case 2u:
      OUTLINED_FUNCTION_1_32();
      sub_1B1B88514();
      if (OUTLINED_FUNCTION_94_0() != 2)
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_30_9();
      v55 = v90;
      sub_1B1B884C0();
      v56 = *v47 == *v55 && *(v47 + 1) == v55[1];
      if (v56 || (sub_1B1C2D7A8()) && sub_1B1B1AFA0(*(v47 + 2), v47[24], v55[2]))
      {
        sub_1B1C2C5C8();
        OUTLINED_FUNCTION_0_29();
        sub_1B1B8C2F8(v57, v58, MEMORY[0x1E69AAC10]);
        sub_1B1C2CB18();
      }

      OUTLINED_FUNCTION_73_3();
      sub_1B1B8844C();
      OUTLINED_FUNCTION_43_0();
      goto LABEL_71;
    case 3u:
      OUTLINED_FUNCTION_1_32();
      v59 = v96;
      sub_1B1B88514();
      if (OUTLINED_FUNCTION_94_0() != 3)
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_29_9();
      v60 = v92;
      sub_1B1B884C0();
      v61 = *v59 == *v60 && *(v59 + 1) == v60[1];
      if (v61 || (sub_1B1C2D7A8()) && sub_1B1B1AFA0(*(v59 + 2), v59[24], v60[2]))
      {
        goto LABEL_69;
      }

      goto LABEL_70;
    case 4u:
      OUTLINED_FUNCTION_1_32();
      sub_1B1B88514();
      if (OUTLINED_FUNCTION_94_0() != 4)
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_28_7();
      sub_1B1B884C0();
      static Realtime_V1_ConversationItemCreate.== infix(_:_:)();
      sub_1B1B8844C();
      goto LABEL_71;
    case 5u:
      OUTLINED_FUNCTION_1_32();
      sub_1B1B88514();
      if (OUTLINED_FUNCTION_94_0() != 5)
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_26_7();
      sub_1B1B884C0();
      static Realtime_V1_ConversationItemTruncate.== infix(_:_:)(v41);
      sub_1B1B8844C();
      goto LABEL_71;
    case 6u:
      OUTLINED_FUNCTION_1_32();
      v67 = v98;
      sub_1B1B88514();
      if (OUTLINED_FUNCTION_94_0() != 6)
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_25_9();
      v68 = v94;
      sub_1B1B884C0();
      OUTLINED_FUNCTION_96_0();
      v71 = v56 && v69 == v70;
      if (v71 || (sub_1B1C2D7A8()) && OUTLINED_FUNCTION_91_1())
      {
        v72 = *(v67 + 4) == *(v68 + 32) && *(v67 + 5) == *(v68 + 40);
        if (v72 || (sub_1B1C2D7A8() & 1) != 0)
        {
          goto LABEL_60;
        }
      }

      goto LABEL_70;
    case 7u:
      OUTLINED_FUNCTION_1_32();
      sub_1B1B88514();
      if (OUTLINED_FUNCTION_94_0() != 7)
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_24_5();
      sub_1B1B884C0();
      static Realtime_V1_ResponseCreate.== infix(_:_:)();
      sub_1B1B8844C();
      goto LABEL_71;
    case 8u:
      OUTLINED_FUNCTION_1_32();
      sub_1B1B88514();
      if (OUTLINED_FUNCTION_94_0() != 8)
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_21_11();
      sub_1B1B884C0();
      OUTLINED_FUNCTION_96_0();
      v75 = v56 && v73 == v74;
      if (v75 || (sub_1B1C2D7A8()) && OUTLINED_FUNCTION_91_1())
      {
LABEL_60:
        sub_1B1C2C5C8();
        OUTLINED_FUNCTION_0_29();
        v78 = sub_1B1B8C2F8(v76, v77, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_90_0(v78);
      }

      goto LABEL_70;
    default:
      OUTLINED_FUNCTION_1_32();
      sub_1B1B88514();
      if (OUTLINED_FUNCTION_94_0())
      {
LABEL_61:
        sub_1B1B8844C();
        sub_1B1A90C20(v0, &qword_1EB762AE8, &qword_1B1C3A118);
      }

      else
      {
        OUTLINED_FUNCTION_27_11();
        v79 = v87;
        sub_1B1B884C0();
        if (*&v52[*(v86 + 20)] == *(v79 + *(v86 + 20)) || (, , v80 = OUTLINED_FUNCTION_43_0(), v82 = sub_1B1B88FA8(v80, v81), , , v82))
        {
LABEL_69:
          sub_1B1C2C5C8();
          OUTLINED_FUNCTION_0_29();
          sub_1B1B8C2F8(v83, v84, MEMORY[0x1E69AAC10]);
          sub_1B1C2CB18();
        }

LABEL_70:
        sub_1B1B8844C();
LABEL_71:
        sub_1B1B8844C();
        OUTLINED_FUNCTION_2_29();
        sub_1B1B8844C();
      }

      OUTLINED_FUNCTION_26_1();
      return;
  }
}

uint64_t static Realtime_V1_SessionUpdate.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_51_4();
  v3 = *(type metadata accessor for Realtime_V1_SessionUpdate(v2) + 20);
  v4 = *(v1 + v3);
  v5 = *(v0 + v3);
  if (v4 != v5)
  {

    v6 = sub_1B1B88FA8(v4, v5);

    if (!v6)
    {
      return 0;
    }
  }

  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_0_29();
  sub_1B1B8C2F8(v7, v8, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_49();
  return sub_1B1C2CB18() & 1;
}

void static Realtime_V1_ConversationItemCreate.== infix(_:_:)()
{
  OUTLINED_FUNCTION_25();
  v3 = OUTLINED_FUNCTION_51_4();
  type metadata accessor for Realtime_V1_Item(v3);
  OUTLINED_FUNCTION_45();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AF8, &qword_1B1C3A120);
  OUTLINED_FUNCTION_23(v5);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_82();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B00, &qword_1B1C3A128);
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_35();
  v9 = *v1 == *v0 && v1[1] == *(v0 + 8);
  if (!v9 && (sub_1B1C2D7A8() & 1) == 0)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_98_0();
  if (*(v0 + 24) == 1)
  {
    switch(v11)
    {
      case 1:
        if (v10 == 1)
        {
          goto LABEL_11;
        }

        break;
      case 2:
        if (v10 == 2)
        {
          goto LABEL_11;
        }

        break;
      case 3:
        if (v10 == 3)
        {
          goto LABEL_11;
        }

        break;
      case 4:
        if (v10 == 4)
        {
          goto LABEL_11;
        }

        break;
      case 5:
        if (v10 == 5)
        {
          goto LABEL_11;
        }

        break;
      case 6:
        if (v10 == 6)
        {
          goto LABEL_11;
        }

        break;
      case 7:
        if (v10 == 7)
        {
          goto LABEL_11;
        }

        break;
      case 8:
        if (v10 == 8)
        {
          goto LABEL_11;
        }

        break;
      case 9:
        if (v10 == 9)
        {
          goto LABEL_11;
        }

        break;
      default:
        if (!v10)
        {
          goto LABEL_11;
        }

        break;
    }

    goto LABEL_25;
  }

  if (v10 != v11)
  {
    goto LABEL_25;
  }

LABEL_11:
  OUTLINED_FUNCTION_95_0();
  v14 = v9 && v12 == v13;
  if (v14 || (sub_1B1C2D7A8() & 1) != 0)
  {
    v15 = *(type metadata accessor for Realtime_V1_ConversationItemCreate(0) + 32);
    v16 = *(v7 + 48);
    sub_1B1B8D9D8(v1 + v15, v2, &qword_1EB762AF8, &qword_1B1C3A120);
    sub_1B1B8D9D8(v0 + v15, v2 + v16, &qword_1EB762AF8, &qword_1B1C3A120);
    OUTLINED_FUNCTION_36_9(v2);
    if (v9)
    {
      OUTLINED_FUNCTION_36_9(v2 + v16);
      if (v9)
      {
        sub_1B1A90C20(v2, &qword_1EB762AF8, &qword_1B1C3A120);
        goto LABEL_27;
      }
    }

    else
    {
      v17 = OUTLINED_FUNCTION_126();
      sub_1B1B8D9D8(v17, v18, v19, v20);
      OUTLINED_FUNCTION_36_9(v2 + v16);
      if (!v21)
      {
        OUTLINED_FUNCTION_4_21();
        sub_1B1B884C0();
        v22 = OUTLINED_FUNCTION_3_3();
        v23 = static Realtime_V1_Item.== infix(_:_:)(v22);
        sub_1B1B8844C();
        sub_1B1B8844C();
        sub_1B1A90C20(v2, &qword_1EB762AF8, &qword_1B1C3A120);
        if ((v23 & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_27:
        sub_1B1C2C5C8();
        OUTLINED_FUNCTION_0_29();
        v26 = sub_1B1B8C2F8(v24, v25, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_42(v26);
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_71_1();
      sub_1B1B8844C();
    }

    sub_1B1A90C20(v2, &qword_1EB762B00, &qword_1B1C3A128);
  }

LABEL_25:
  OUTLINED_FUNCTION_26_1();
}

uint64_t static Realtime_V1_ConversationItemTruncate.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_52_4(a1);
  v5 = v5 && v3 == v4;
  if (v5 || (sub_1B1C2D7A8() & 1) != 0)
  {
    OUTLINED_FUNCTION_98_0();
    if (*(v1 + 24) == 1)
    {
      switch(v7)
      {
        case 1:
          if (v6 != 1)
          {
            return 0;
          }

          goto LABEL_11;
        case 2:
          if (v6 != 2)
          {
            return 0;
          }

          goto LABEL_11;
        case 3:
          if (v6 != 3)
          {
            return 0;
          }

          goto LABEL_11;
        case 4:
          if (v6 != 4)
          {
            return 0;
          }

          goto LABEL_11;
        case 5:
          if (v6 != 5)
          {
            return 0;
          }

          goto LABEL_11;
        case 6:
          if (v6 != 6)
          {
            return 0;
          }

          goto LABEL_11;
        case 7:
          if (v6 != 7)
          {
            return 0;
          }

          goto LABEL_11;
        case 8:
          if (v6 != 8)
          {
            return 0;
          }

          goto LABEL_11;
        case 9:
          if (v6 != 9)
          {
            return 0;
          }

          goto LABEL_11;
        default:
          if (!v6)
          {
            goto LABEL_11;
          }

          return 0;
      }
    }

    if (v6 == v7)
    {
LABEL_11:
      OUTLINED_FUNCTION_95_0();
      v10 = v5 && v8 == v9;
      if (v10 || (sub_1B1C2D7A8()) && *(v2 + 48) == *(v1 + 48) && *(v2 + 52) == *(v1 + 52))
      {
        type metadata accessor for Realtime_V1_ConversationItemTruncate(0);
        sub_1B1C2C5C8();
        OUTLINED_FUNCTION_0_29();
        v13 = sub_1B1B8C2F8(v11, v12, MEMORY[0x1E69AAC10]);
        return OUTLINED_FUNCTION_42(v13) & 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1B1B811B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_52_4(a1);
  v7 = v7 && v5 == v6;
  if (v7 || (sub_1B1C2D7A8() & 1) != 0)
  {
    OUTLINED_FUNCTION_98_0();
    if (*(v3 + 24) == 1)
    {
      switch(v9)
      {
        case 1:
          if (v8 != 1)
          {
            return 0;
          }

          goto LABEL_11;
        case 2:
          if (v8 != 2)
          {
            return 0;
          }

          goto LABEL_11;
        case 3:
          if (v8 != 3)
          {
            return 0;
          }

          goto LABEL_11;
        case 4:
          if (v8 != 4)
          {
            return 0;
          }

          goto LABEL_11;
        case 5:
          if (v8 != 5)
          {
            return 0;
          }

          goto LABEL_11;
        case 6:
          if (v8 != 6)
          {
            return 0;
          }

          goto LABEL_11;
        case 7:
          if (v8 != 7)
          {
            return 0;
          }

          goto LABEL_11;
        case 8:
          if (v8 != 8)
          {
            return 0;
          }

          goto LABEL_11;
        case 9:
          if (v8 != 9)
          {
            return 0;
          }

          goto LABEL_11;
        default:
          if (!v8)
          {
            goto LABEL_11;
          }

          return 0;
      }
    }

    if (v8 == v9)
    {
LABEL_11:
      OUTLINED_FUNCTION_95_0();
      v12 = v7 && v10 == v11;
      if (v12 || (sub_1B1C2D7A8() & 1) != 0)
      {
        a3(0);
        sub_1B1C2C5C8();
        OUTLINED_FUNCTION_0_29();
        v15 = sub_1B1B8C2F8(v13, v14, MEMORY[0x1E69AAC10]);
        return OUTLINED_FUNCTION_42(v15) & 1;
      }
    }
  }

  return 0;
}

void static Realtime_V1_ResponseCreate.== infix(_:_:)()
{
  OUTLINED_FUNCTION_25();
  v3 = OUTLINED_FUNCTION_51_4();
  type metadata accessor for Realtime_V1_Response(v3);
  OUTLINED_FUNCTION_45();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B08, &qword_1B1C3A130);
  OUTLINED_FUNCTION_23(v5);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_82();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B10, &qword_1B1C3A138);
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_35();
  v9 = *v1 == *v0 && v1[1] == *(v0 + 8);
  if (!v9 && (sub_1B1C2D7A8() & 1) == 0)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_98_0();
  if (*(v0 + 24) != 1)
  {
    if (v10 != v11)
    {
      goto LABEL_20;
    }

LABEL_11:
    v12 = *(type metadata accessor for Realtime_V1_ResponseCreate(0) + 28);
    v13 = *(v7 + 48);
    sub_1B1B8D9D8(v1 + v12, v2, &qword_1EB762B08, &qword_1B1C3A130);
    sub_1B1B8D9D8(v0 + v12, v2 + v13, &qword_1EB762B08, &qword_1B1C3A130);
    OUTLINED_FUNCTION_36_9(v2);
    if (v9)
    {
      OUTLINED_FUNCTION_36_9(v2 + v13);
      if (v9)
      {
        sub_1B1A90C20(v2, &qword_1EB762B08, &qword_1B1C3A130);
        goto LABEL_22;
      }
    }

    else
    {
      v14 = OUTLINED_FUNCTION_126();
      sub_1B1B8D9D8(v14, v15, v16, v17);
      OUTLINED_FUNCTION_36_9(v2 + v13);
      if (!v18)
      {
        OUTLINED_FUNCTION_5_24();
        sub_1B1B884C0();
        OUTLINED_FUNCTION_3_3();
        v19 = static Realtime_V1_Response.== infix(_:_:)();
        sub_1B1B8844C();
        sub_1B1B8844C();
        sub_1B1A90C20(v2, &qword_1EB762B08, &qword_1B1C3A130);
        if ((v19 & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_22:
        sub_1B1C2C5C8();
        OUTLINED_FUNCTION_0_29();
        v22 = sub_1B1B8C2F8(v20, v21, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_42(v22);
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_74_3();
      sub_1B1B8844C();
    }

    sub_1B1A90C20(v2, &qword_1EB762B10, &qword_1B1C3A138);
    goto LABEL_20;
  }

  switch(v11)
  {
    case 1:
      if (v10 == 1)
      {
        goto LABEL_11;
      }

      break;
    case 2:
      if (v10 == 2)
      {
        goto LABEL_11;
      }

      break;
    case 3:
      if (v10 == 3)
      {
        goto LABEL_11;
      }

      break;
    case 4:
      if (v10 == 4)
      {
        goto LABEL_11;
      }

      break;
    case 5:
      if (v10 == 5)
      {
        goto LABEL_11;
      }

      break;
    case 6:
      if (v10 == 6)
      {
        goto LABEL_11;
      }

      break;
    case 7:
      if (v10 == 7)
      {
        goto LABEL_11;
      }

      break;
    case 8:
      if (v10 == 8)
      {
        goto LABEL_11;
      }

      break;
    case 9:
      if (v10 == 9)
      {
        goto LABEL_11;
      }

      break;
    default:
      if (!v10)
      {
        goto LABEL_11;
      }

      break;
  }

LABEL_20:
  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1B8164C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_52_4(a1);
  v7 = v7 && v5 == v6;
  if (!v7 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_98_0();
  if (*(v3 + 24) == 1)
  {
    switch(v9)
    {
      case 1:
        if (v8 == 1)
        {
          goto LABEL_11;
        }

        return 0;
      case 2:
        if (v8 == 2)
        {
          goto LABEL_11;
        }

        return 0;
      case 3:
        if (v8 == 3)
        {
          goto LABEL_11;
        }

        return 0;
      case 4:
        if (v8 == 4)
        {
          goto LABEL_11;
        }

        return 0;
      case 5:
        if (v8 == 5)
        {
          goto LABEL_11;
        }

        return 0;
      case 6:
        if (v8 == 6)
        {
          goto LABEL_11;
        }

        return 0;
      case 7:
        if (v8 == 7)
        {
          goto LABEL_11;
        }

        return 0;
      case 8:
        if (v8 == 8)
        {
          goto LABEL_11;
        }

        return 0;
      case 9:
        if (v8 == 9)
        {
          goto LABEL_11;
        }

        return 0;
      default:
        if (v8)
        {
          return 0;
        }

        goto LABEL_11;
    }
  }

  if (v8 != v9)
  {
    return 0;
  }

LABEL_11:
  a3(0);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_0_29();
  v13 = sub_1B1B8C2F8(v11, v12, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_42(v13) & 1;
}

uint64_t Realtime_V1_ClientEvent.init()()
{
  v0 = OUTLINED_FUNCTION_89();
  type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(v0);
  OUTLINED_FUNCTION_64_1();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for Realtime_V1_ClientEvent(0);
  return sub_1B1C2C5B8();
}

uint64_t Realtime_V1_SessionUpdate.eventID.getter()
{
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_65(*(v0 + v1) + 16, v3);

  return OUTLINED_FUNCTION_43_0();
}

uint64_t sub_1B1B81818(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Realtime_V1_SessionUpdate.eventID.setter(v1, v2);
}

uint64_t Realtime_V1_SessionUpdate.eventID.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = OUTLINED_FUNCTION_111_0();
  v8 = *(v2 + v3);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_70_1();
    v9 = OUTLINED_FUNCTION_47_5();
    v8 = sub_1B1B886C0(v9);
    *(v4 + v3) = v8;
  }

  OUTLINED_FUNCTION_66_0(v8 + 16, v11);
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
}

uint64_t Realtime_V1_SessionUpdate.eventID.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_69_1();
  *(v3 + 18) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_65(v5 + 16, v3);
  v6 = *(v5 + 24);
  v3[6] = *(v5 + 16);
  v3[7] = v6;

  return OUTLINED_FUNCTION_92();
}

void sub_1B1B81950(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {

    v5 = OUTLINED_FUNCTION_33();
    Realtime_V1_SessionUpdate.eventID.setter(v5, v6);
  }

  else
  {
    v7 = *(v2 + 72);
    v8 = *(v2 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 72);
      v12 = *(v2 + 64);
      OUTLINED_FUNCTION_70_1();
      v13 = OUTLINED_FUNCTION_47_5();
      v10 = sub_1B1B886C0(v13);
      *(v12 + v11) = v10;
    }

    OUTLINED_FUNCTION_66_0(v10 + 16, v2 + 24);
    *(v10 + 16) = v3;
    *(v10 + 24) = v4;
  }

  free(v2);
}

uint64_t Realtime_V1_SessionUpdate.type.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_69_1();
  v4 = *(v1 + v3);
  result = OUTLINED_FUNCTION_65(v4 + 32, v7);
  v6 = *(v4 + 40);
  *a1 = *(v4 + 32);
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1B1B81A58@<X0>(uint64_t a1@<X8>)
{
  result = Realtime_V1_SessionUpdate.type.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1B1B81A9C(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return Realtime_V1_SessionUpdate.type.setter(&v3);
}

uint64_t Realtime_V1_SessionUpdate.type.setter(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = OUTLINED_FUNCTION_111_0();
  v7 = *(v1 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_70_1();
    v8 = OUTLINED_FUNCTION_47_5();
    v7 = sub_1B1B886C0(v8);
    *(v3 + v2) = v7;
  }

  result = OUTLINED_FUNCTION_66_0(v7 + 32, v10);
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  return result;
}