void sub_1B1B49954(void *a1, void (*a2)(void *, void *), uint64_t a3, void (*a4)(void **), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = type metadata accessor for TTSAsset();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B1C38B50;
  if (qword_1ED9A9978 != -1)
  {
    swift_once();
  }

  v15 = qword_1ED9A9980;
  *(v14 + 32) = qword_1ED9A9980;
  v16 = qword_1ED9A9850;
  v17 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = qword_1ED9A97E0;
  *(v14 + 40) = qword_1ED9A97E0;
  v19 = v18;
  v20 = sub_1B1ABB11C(a1, 2u);
  v21 = static TTSAsset.bestAsset(ofTypes:matching:)(v14, v20);

  if (v21)
  {
    if (([v21 locallyAvailable] & 1) != 0 && (v22 = (*((*MEMORY[0x1E69E7D40] & *v21) + 0x118))()) != 0)
    {
      v23 = v22;
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v24 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v24, qword_1ED9A9120);
      v25 = v21;
      v26 = sub_1B1C2C888();
      v27 = sub_1B1C2D0D8();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        *(v28 + 4) = v25;
        *v29 = v21;
        v30 = v25;
        _os_log_impl(&dword_1B1A8A000, v26, v27, "Voice is locally available already: %@", v28, 0xCu);
        sub_1B1B1AF0C(v29);
        MEMORY[0x1B2739FD0](v29, -1, -1);
        MEMORY[0x1B2739FD0](v28, -1, -1);
      }

      v31 = sub_1B1ABFFF8();
      v32 = [v23 bundlePath];
      v33 = sub_1B1C2CB58();
      v35 = v34;

      type metadata accessor for VoiceAsset();
      v36 = swift_allocObject();
      v36[2] = v31;
      v36[3] = v33;
      v36[4] = v35;
      a2(0, v36);
    }

    else
    {
      if (a4)
      {
        v55 = v13;
        aBlock = v21;
        v37 = v21;
        sub_1B1A94514(a4, a5);
        a4(&aBlock);
        sub_1B1A949B4(a4, a5);
        __swift_destroy_boxed_opaque_existential_0(&aBlock);
      }

      v38 = swift_allocObject();
      *(v38 + 16) = a7;
      *(v38 + 24) = a8;
      v56 = sub_1B1B4B110;
      v57 = v38;
      aBlock = MEMORY[0x1E69E9820];
      v53 = 1107296256;
      v54 = sub_1B1B203B8;
      v55 = &block_descriptor_39;
      v39 = _Block_copy(&aBlock);
      sub_1B1A94514(a7, a8);

      v40 = swift_allocObject();
      v40[2] = a2;
      v40[3] = a3;
      v40[4] = v21;
      v56 = sub_1B1B4B150;
      v57 = v40;
      aBlock = MEMORY[0x1E69E9820];
      v53 = 1107296256;
      v54 = sub_1B1B20428;
      v55 = &block_descriptor_45;
      v41 = _Block_copy(&aBlock);
      v42 = v21;

      [v42 downloadWithOptions:a6 progress:v39 then:v41];
      _Block_release(v41);
      _Block_release(v39);
    }
  }

  else
  {
    sub_1B1C2D538();

    v43 = [a1 description];
    v44 = sub_1B1C2CB58();
    v46 = v45;

    MEMORY[0x1B27381B0](v44, v46);

    sub_1B1A9EC9C();
    v47 = swift_allocError();
    *v48 = 5;
    *(v48 + 8) = 0xD00000000000001ELL;
    *(v48 + 16) = 0x80000001B1C4DD60;
    a2(v47, 0);
  }
}

void sub_1B1B49F3C(void *a1, void (*a2)(void *, void *), uint64_t a3, void *a4)
{
  if (a1)
  {
    v6 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x118);
    v7 = a1;
    v8 = v6();
    if (v8)
    {
      v9 = v8;
      v10 = sub_1B1ABFFF8();
      v11 = [v9 bundlePath];
      v12 = sub_1B1C2CB58();
      v14 = v13;

      type metadata accessor for VoiceAsset();
      v15 = swift_allocObject();
      v15[2] = v10;
      v15[3] = v12;
      v15[4] = v14;
      a2(0, v15);

      return;
    }
  }

  sub_1B1C2D538();

  v16 = [a4 description];
  v17 = sub_1B1C2CB58();
  v19 = v18;

  MEMORY[0x1B27381B0](v17, v19);

  sub_1B1A9EC9C();
  v20 = swift_allocError();
  *v21 = 1;
  *(v21 + 8) = 0xD00000000000001ALL;
  *(v21 + 16) = 0x80000001B1C4DD80;
  a2(v20, 0);
}

uint64_t sub_1B1B4A17C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627A8, &unk_1B1C396D0);
  inited = swift_initStackObject();
  v4 = OUTLINED_FUNCTION_14_2(inited, xmmword_1B1C36280);
  v5 = MEMORY[0x1E69E6370];
  v4[2].n128_u8[8] = 1;
  v4[4].n128_u64[0] = v5;
  v4[4].n128_u64[1] = 7;
  if (qword_1EB761310 != -1)
  {
LABEL_19:
    OUTLINED_FUNCTION_6_14(&qword_1EB761310);
  }

  v6 = qword_1EB761318;
  inited[6].n128_u64[1] = sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  inited[5].n128_u64[0] = v6;
  type metadata accessor for TTSAssetProperty(0);
  OUTLINED_FUNCTION_0_19();
  sub_1B1A97A14(v7, v8, &unk_1B1C35CF4);
  v9 = v6;
  v10 = OUTLINED_FUNCTION_25_4();
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
  inited = static TTSAsset.listAssets(ofTypes:matching:)(v11, v10);

  v14 = MEMORY[0x1E69E7CC0];
  v35 = MEMORY[0x1E69E7CC0];
  sub_1B1A9547C();
  OUTLINED_FUNCTION_23_4();
  while (v10 != v0)
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

      OUTLINED_FUNCTION_20_7();
      sub_1B1C2CEC8();
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

void sub_1B1B4A464()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v25 = v5;
  v26 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1B1C2C988();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_16_13();
  v27 = sub_1B1C2C9D8();
  OUTLINED_FUNCTION_7();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22_5();
  v18 = swift_allocObject();
  v18[2] = v13;
  v18[3] = v11;
  v18[4] = v25;
  v18[5] = v3;
  v18[6] = v9;
  v18[7] = v7;
  v18[8] = v26;
  v28[4] = sub_1B1B4AF14;
  v28[5] = v18;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8_14(COERCE_DOUBLE(1107296256));
  v28[2] = v19;
  v28[3] = &block_descriptor_15_0;
  v20 = _Block_copy(v28);

  sub_1B1A94514(v7, v26);
  sub_1B1C2C9A8();
  OUTLINED_FUNCTION_3_15();
  sub_1B1A97A14(v21, v22, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
  sub_1B1A97978(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430);
  sub_1B1C2D418();
  MEMORY[0x1B2738610](0, v1, v0, v20);
  _Block_release(v20);
  v23 = OUTLINED_FUNCTION_13_13();
  v24(v23);
  (*(v16 + 8))(v1, v27);

  OUTLINED_FUNCTION_26_1();
}

void sub_1B1B4A6D0(uint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  v15 = qword_1EB761310;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1EB761318;
  *(inited + 104) = sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  *(inited + 80) = v16;
  type metadata accessor for TTSAssetProperty(0);
  sub_1B1A97A14(&qword_1ED9A90A0, type metadata accessor for TTSAssetProperty, &unk_1B1C35CF4);
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
      v38 = &block_descriptor_27;
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
      v38 = &block_descriptor_33;
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

void sub_1B1B4AC10(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    (a2)(0, a2, a3, a4, a5);
  }

  else
  {
    sub_1B1C2D538();

    MEMORY[0x1B27381B0](a4, a5);
    sub_1B1A9EC9C();
    v8 = swift_allocError();
    *v9 = 1;
    *(v9 + 8) = 0xD00000000000001DLL;
    *(v9 + 16) = 0x80000001B1C4DD40;
    a2();
  }
}

void sub_1B1B4AD18(uint64_t a1)
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
    aBlock[3] = &block_descriptor_18_0;
    v2 = _Block_copy(aBlock);
    [v1 cancelDownloadingThen:v2];
    _Block_release(v2);
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v3 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v3, qword_1ED9A9120);
    v1 = sub_1B1C2C888();
    v4 = sub_1B1C2D0B8();
    if (os_log_type_enabled(v1, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1B1A8A000, v1, v4, "Unable to cancel download of non-TTSAssetUAFAsset asset", v5, 2u);
      MEMORY[0x1B2739FD0](v5, -1, -1);
    }
  }
}

uint64_t sub_1B1B4B114(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    return v3(result / a2);
  }

  return result;
}

uint64_t ObjectPool.__allocating_init()()
{
  v0 = swift_allocObject();
  ObjectPool.init()();
  return v0;
}

uint64_t sub_1B1B4B1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v9 = sub_1B1A93280(MetatypeMetadata, MetatypeMetadata);
  v11 = v10;
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a1;
  v12[4] = a2;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + 16);
  sub_1B1B37680(sub_1B1B4B304, v12, v9, v11, isUniquelyReferenced_nonNull_native);
  *(v4 + 16) = v15;

  return swift_endAccess();
}

uint64_t sub_1B1B4B2C8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  a3[3] = a2;
  __swift_allocate_boxed_opaque_existential_1(a3);
  return a1();
}

id sub_1B1B4B3E4()
{
  result = [*(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset) assetType];
  if (result)
  {
    v2 = result;
    sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    v3 = sub_1B1C2CB58();
    v5 = v4;

    return sub_1B1AAFB2C(v3, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B1B4B51C()
{
  v0 = OUTLINED_FUNCTION_29_3();
  if (!v0)
  {
    __break(1u);
    goto LABEL_79;
  }

  v1 = v0;
  v2 = sub_1B1C2CA98();

  v25[0] = 0x325665707954;
  v25[1] = 0xE600000000000000;
  sub_1B1C2D4B8();
  sub_1B1B29EE8(&v28, v2);

  if (v27)
  {
    sub_1B1B08B44(&v28);
    sub_1B1A9EEE0(&v26, &v30);
  }

  else
  {
    v3 = OUTLINED_FUNCTION_29_3();
    if (!v3)
    {
      __break(1u);
      goto LABEL_81;
    }

    v4 = v3;
    sub_1B1B08B44(&v28);
    v5 = sub_1B1C2CA98();

    sub_1B1C2D4B8();
    sub_1B1B29EE8(v25, v5);

    sub_1B1B08B44(v25);
    if (v27)
    {
      sub_1B1A90C78(&v26, &qword_1EB761DE0, &qword_1B1C352C0);
    }
  }

  if (!v31)
  {
    sub_1B1A90C78(&v30, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_16;
  }

  if (!swift_dynamicCast())
  {
LABEL_16:
    v9 = sub_1B1B4B3E4();
    if (qword_1ED9A98D0 != -1)
    {
      OUTLINED_FUNCTION_23_0(&qword_1ED9A98D0);
    }

    v10 = qword_1ED9A98D8;
    sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    v11 = v10;
    v12 = sub_1B1C2D248();

    if (v12)
    {

LABEL_20:
      if (qword_1ED9A97B8 != -1)
      {
        swift_once();
      }

      v13 = &qword_1ED9A97C0;
      goto LABEL_32;
    }

    if (qword_1ED9A98A8 != -1)
    {
      OUTLINED_FUNCTION_21(&qword_1ED9A98A8);
    }

    v14 = qword_1ED9A98B0;
    v15 = sub_1B1C2D248();

    if ((v15 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v7 = v28;
  v6 = v29;
  v8 = v28 == 0x657A696C61636F76 && v29 == 0xE900000000000072;
  if (v8 || (OUTLINED_FUNCTION_8_6(0x657A696C61636F76, 0xE900000000000072) & 1) != 0)
  {

LABEL_29:
    if (qword_1ED9A9890 != -1)
    {
      swift_once();
    }

    v13 = &qword_1ED9A9818;
    goto LABEL_32;
  }

  v18 = v7 == 0x6D6F74737563 && v6 == 0xE600000000000000;
  if (v18 || (OUTLINED_FUNCTION_8_6(0x6D6F74737563, 0xE600000000000000) & 1) != 0)
  {

    goto LABEL_20;
  }

  v19 = v7 == 0x6E6F6870797267 && v6 == 0xE700000000000000;
  if (v19 || (OUTLINED_FUNCTION_8_6(0x6E6F6870797267, 0xE700000000000000) & 1) != 0)
  {

    if (qword_1ED9A97A8 != -1)
    {
      swift_once();
    }

    v13 = &qword_1ED9A9898;
    goto LABEL_32;
  }

  v20 = v7 == 0x6C617275656ELL && v6 == 0xE600000000000000;
  if (v20 || (OUTLINED_FUNCTION_8_6(0x6C617275656ELL, 0xE600000000000000) & 1) != 0)
  {

    if (qword_1ED9A9820 != -1)
    {
      swift_once();
    }

    v13 = &qword_1ED9A9828;
    goto LABEL_32;
  }

  v21 = v7 == 0x58416C617275656ELL && v6 == 0xE800000000000000;
  if (v21 || (OUTLINED_FUNCTION_8_6(0x58416C617275656ELL, 0xE800000000000000) & 1) != 0)
  {

    if (qword_1ED9A9698 == -1)
    {
LABEL_63:
      v13 = &qword_1ED9A9710;
      goto LABEL_32;
    }

LABEL_79:
    swift_once();
    goto LABEL_63;
  }

  v22 = v7 == 0x6C61727574616ELL && v6 == 0xE700000000000000;
  if (v22 || (OUTLINED_FUNCTION_8_6(0x6C61727574616ELL, 0xE700000000000000) & 1) != 0)
  {

    if (qword_1ED9A8D90 == -1)
    {
LABEL_70:
      v13 = &qword_1ED9A8D98;
      goto LABEL_32;
    }

LABEL_81:
    swift_once();
    goto LABEL_70;
  }

  if (v7 != 0x6C61746E6963616DLL || v6 != 0xE90000000000006BLL)
  {
    v24 = OUTLINED_FUNCTION_8_6(0x6C61746E6963616DLL, 0xE90000000000006BLL);

    if (v24)
    {
      goto LABEL_26;
    }

    goto LABEL_16;
  }

LABEL_26:
  if (qword_1ED9A5280 != -1)
  {
    swift_once();
  }

  v13 = &qword_1ED9A5288;
LABEL_32:
  v16 = *v13;

  return v16;
}

uint64_t sub_1B1B4BAE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627D8, &qword_1B1C38C58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C36280;
  *(inited + 32) = 2019912769;
  *(inited + 40) = 0xE400000000000000;
  if (qword_1ED9A9100 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED9A90A8;
  *(inited + 48) = 1;
  *(inited + 56) = v1;
  *(inited + 64) = 0x6169726F74636956;
  *(inited + 72) = 0xE800000000000000;
  v2 = qword_1ED9A97D8;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED9A9830;
  *(inited + 80) = 2;
  *(inited + 88) = v4;
  v5 = v4;
  result = sub_1B1C2CAB8();
  qword_1EB772E78 = result;
  return result;
}

id sub_1B1B4BC54()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset);
  result = [v1 attributes];
  if (!result)
  {
    __break(1u);
    goto LABEL_52;
  }

  v3 = result;
  v4 = sub_1B1C2CA98();

  OUTLINED_FUNCTION_33_3();
  v53 = v5;
  v7 = OUTLINED_FUNCTION_22_6(v6, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v15 = OUTLINED_FUNCTION_8_15(v7, v8, v9, v10, v11, v12, v13, v14, v50, v53, 0xE900000000000074, v59[0]);
  sub_1B1B29EE8(v15, v4);

  v16 = sub_1B1B08B44(v59);
  if (!v61)
  {
    sub_1B1A90C78(v60, &qword_1EB761DE0, &qword_1B1C352C0);
LABEL_13:
    result = [v1 attributes];
    if (result)
    {
      v25 = result;
      v26 = sub_1B1C2CA98();

      OUTLINED_FUNCTION_14_11();
      v28 = OUTLINED_FUNCTION_22_6(v27, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
      v36 = OUTLINED_FUNCTION_8_15(v28, v29, v30, v31, v32, v33, v34, v35, v51, v54, v57, v59[0]);
      sub_1B1B29EE8(v36, v26);

      v37 = sub_1B1B08B44(v59);
      if (v61)
      {
        OUTLINED_FUNCTION_16_14(v37, v38, v39, MEMORY[0x1E69E6158], v40, v41, v42, v43, v52, v55);
        if (swift_dynamicCast())
        {
          if (qword_1EB761618 != -1)
          {
            OUTLINED_FUNCTION_10_15(&qword_1EB761618);
          }

          sub_1B1B2A000(v56, v58, qword_1EB772E78);
          v45 = v44;

          if (v45)
          {
            return v45;
          }
        }
      }

      else
      {
        sub_1B1A90C78(v60, &qword_1EB761DE0, &qword_1B1C352C0);
      }

      goto LABEL_21;
    }

LABEL_52:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_16_14(v16, v17, v18, MEMORY[0x1E69E6158], v19, v20, v21, v22, v51, v54);
  if (!swift_dynamicCast())
  {
    goto LABEL_13;
  }

  v23 = v54 == 0x746361706D6F63 && v57 == 0xE700000000000000;
  if (!v23 && (OUTLINED_FUNCTION_21_7(0x746361706D6F63, 0xE700000000000000) & 1) == 0)
  {
    v46 = v54 == 0x6D75696D657270 && v57 == 0xE700000000000000;
    if (v46 || (OUTLINED_FUNCTION_21_7(0x6D75696D657270, 0xE700000000000000) & 1) != 0)
    {

LABEL_21:
      if (qword_1ED9A9100 != -1)
      {
        OUTLINED_FUNCTION_2_0(&qword_1ED9A9100);
      }

      v24 = qword_1ED9A90A8;
      goto LABEL_24;
    }

    v47 = v54 == 0x686D75696D657270 && v57 == 0xEB00000000686769;
    if (v47 || (OUTLINED_FUNCTION_21_7(0x686D75696D657270, 0xEB00000000686769) & 1) != 0)
    {

      if (qword_1ED9A9628 != -1)
      {
        OUTLINED_FUNCTION_14_0(&qword_1ED9A9628);
      }

      v24 = qword_1ED9A9598;
      goto LABEL_24;
    }

    if (v54 == 1635018082 && v57 == 0xE400000000000000)
    {

LABEL_48:
      if (qword_1EB7615E0 != -1)
      {
        swift_once();
      }

      v24 = qword_1EB7625D8;
      goto LABEL_24;
    }

    v49 = OUTLINED_FUNCTION_21_7(1635018082, 0xE400000000000000);

    if (v49)
    {
      goto LABEL_48;
    }

    goto LABEL_13;
  }

  if (qword_1ED9A97D8 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1ED9A97D8);
  }

  v24 = qword_1ED9A9830;
LABEL_24:

  return v24;
}

uint64_t sub_1B1B4C028()
{
  result = sub_1B1C2CAB8();
  qword_1EB772E80 = result;
  return result;
}

id sub_1B1B4C080()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset);
  result = [v1 attributes];
  if (result)
  {
    v3 = result;
    v4 = sub_1B1C2CA98();

    OUTLINED_FUNCTION_14_11();
    v6 = OUTLINED_FUNCTION_22_6(v5, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    v14 = OUTLINED_FUNCTION_8_15(v6, v7, v8, v9, v10, v11, v12, v13, v47, v49, v52, v55[0]);
    sub_1B1B29EE8(v14, v4);

    v15 = sub_1B1B08B44(v55);
    if (v57)
    {
      if (OUTLINED_FUNCTION_5_16(v15, v16, v17, MEMORY[0x1E69E6158], v18))
      {
        v55[0] = v50;
        v55[1] = v53;
        sub_1B1A8EDAC();
        v19 = sub_1B1C2D378();
        v21 = v20;
        if (*(sub_1B1B4DC6C() + 2))
        {

          OUTLINED_FUNCTION_33();
          sub_1B1C2CBE8();
          sub_1B1C2CBE8();

          v22 = sub_1B1C2CDA8();

          if (v22)
          {

            v19 = v50;
            v21 = v53;
          }
        }

        else
        {
        }

        v45 = OUTLINED_FUNCTION_33();
        v44 = sub_1B1AC8BF0(v45, v46, v19, v21);

        goto LABEL_19;
      }
    }

    else
    {
      sub_1B1A90C78(v56, &qword_1EB761DE0, &qword_1B1C352C0);
    }

    result = [v1 attributes];
    if (result)
    {
      v23 = result;
      v24 = sub_1B1C2CA98();

      OUTLINED_FUNCTION_3_16();
      v26 = OUTLINED_FUNCTION_22_6(v25, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
      v34 = OUTLINED_FUNCTION_8_15(v26, v27, v28, v29, v30, v31, v32, v33, v48, v50, v53, v55[0]);
      sub_1B1B29EE8(v34, v24);

      v35 = sub_1B1B08B44(v55);
      if (v57)
      {
        if (OUTLINED_FUNCTION_5_16(v35, v36, v37, MEMORY[0x1E69E6158], v38))
        {
          if (qword_1EB761620 != -1)
          {
            OUTLINED_FUNCTION_17_11(&qword_1EB761620);
          }

          v39 = sub_1B1B29F98(v51, v54, qword_1EB772E80);
          v41 = v40;

          if (v41)
          {
            v42 = OUTLINED_FUNCTION_33();
            v44 = sub_1B1AC8BF0(v42, v43, v39, v41);
LABEL_19:

            return v44;
          }
        }
      }

      else
      {
        sub_1B1A90C78(v56, &qword_1EB761DE0, &qword_1B1C352C0);
      }

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1B1B4C3B8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset);
  result = [v2 attributes];
  if (result)
  {
    v4 = result;
    v5 = sub_1B1C2CA98();

    v6 = MEMORY[0x1E69E6158];
    sub_1B1C2D4B8();
    sub_1B1B29EE8(&v105, v5);

    sub_1B1B08B44(&v105);
    if (v111)
    {
      v7 = MEMORY[0x1E69E6158];
      if (swift_dynamicCast())
      {
        v8 = sub_1B1B4B3E4();
        if (qword_1ED9A98B8 != -1)
        {
          OUTLINED_FUNCTION_13_14(&qword_1ED9A98B8);
        }

        v9 = qword_1ED9A98C0;
        sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
        v10 = v9;
        v11 = sub_1B1C2D248();

        if ((v11 & 1) == 0)
        {
          v105 = 0x64496563696F56;
          v106 = 0xE700000000000000;
          strcpy(v110, "speech.voice");
          BYTE5(v110[1]) = 0;
          HIWORD(v110[1]) = -5120;
          v34 = sub_1B1A8EDAC();
          OUTLINED_FUNCTION_12_9(v34, v35, v36, v37, v38, v39, v40, v41, v99, v100, v34, v34, v102, 0xD000000000000016, 0x80000001B1C4DDF0, v105, v106, v107, v108, v109, v110[0]);
          OUTLINED_FUNCTION_4();
          v42 = sub_1B1C2D398();
          v44 = v43;

          v110[1] = 0xE900000000000065;
          OUTLINED_FUNCTION_12_9(v45, v46, v47, v48, v49, v50, v51, v52, v7, v34, v34, v34, v103, 0xD000000000000016, 0x80000001B1C4DDF0, v42, v44, v107, v108, v109, 116);
          OUTLINED_FUNCTION_4();
          v28 = sub_1B1C2D398();

          return v28;
        }

        v6 = MEMORY[0x1E69E6158];
      }
    }

    else
    {
      sub_1B1A90C78(v110, &qword_1EB761DE0, &qword_1B1C352C0);
    }

    v12 = sub_1B1B4B3E4();
    v13 = qword_1ED9A9978;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = qword_1ED9A9980;
    sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    v16 = v15;
    v17 = sub_1B1C2D248();

    if (v17)
    {
      goto LABEL_15;
    }

    v18 = qword_1ED9A98D0;
    v19 = v14;
    if (v18 != -1)
    {
      OUTLINED_FUNCTION_23_0(&qword_1ED9A98D0);
    }

    v17 = qword_1ED9A98D8;
    v20 = sub_1B1C2D248();

    if (v20)
    {
LABEL_15:

      v21 = 0x80000001B1C4B5A0;
      v6 = type metadata accessor for TTSAsset();
      sub_1B1B4C080();
      v22 = sub_1B1C2CBE8();

      sub_1B1B19BF8(v22);
      OUTLINED_FUNCTION_32_5();

      sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
      v23 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
      if (qword_1ED9A97D8 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_1ED9A97D8);
      }

      v24 = OUTLINED_FUNCTION_35_7(qword_1ED9A9830);

      if (v24)
      {
        v25 = 0x746361706D6F632ELL;
      }

      else
      {
        v25 = 0x6D75696D6572702ELL;
      }

      v26 = 0xD00000000000002DLL;
      goto LABEL_21;
    }

    v29 = qword_1ED9A98A8;
    v30 = v19;
    if (v29 != -1)
    {
      OUTLINED_FUNCTION_21(&qword_1ED9A98A8);
    }

    v22 = qword_1ED9A98B0;
    v31 = sub_1B1C2D248();

    if (v31)
    {

      v21 = 0x80000001B1C4B570;
      sub_1B1B4C080();
      OUTLINED_FUNCTION_32_5();
      sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
      v32 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
      if (qword_1ED9A97D8 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_1ED9A97D8);
      }

      v26 = 0xD000000000000021;
      v33 = OUTLINED_FUNCTION_35_7(qword_1ED9A9830);

      if (v33)
      {
        v25 = 0x746361706D6F632ELL;
      }

      else
      {
        v25 = 0;
      }

      if (v33)
      {
        v27 = 0xE800000000000000;
      }

      else
      {
        v27 = 0xE000000000000000;
      }

      goto LABEL_22;
    }

    v53 = qword_1ED9A9850;
    v54 = v30;
    if (v53 != -1)
    {
      swift_once();
    }

    v55 = qword_1ED9A97E0;
    v56 = sub_1B1C2D248();

    if (v56)
    {
      goto LABEL_42;
    }

    v57 = qword_1ED9A98B8;
    v58 = v54;
    if (v57 != -1)
    {
      OUTLINED_FUNCTION_13_14(&qword_1ED9A98B8);
    }

    v59 = qword_1ED9A98C0;
    v60 = sub_1B1C2D248();

    if (v60)
    {
LABEL_42:

      v21 = 0x80000001B1C4B570;
      v61 = sub_1B1B4C080();
      v22 = v62;
      v105 = v61;
      v106 = v62;
      v110[0] = 45;
      v110[1] = 0xE100000000000000;
      v63 = sub_1B1A8EDAC();
      OUTLINED_FUNCTION_12_9(v63, v64, v65, v66, v67, v68, v69, v70, v99, v100, v63, v63, v102, 0, 0xE000000000000000, v105, v106, v107, v108, v109, v110[0]);
      OUTLINED_FUNCTION_4();
      sub_1B1C2D398();

      sub_1B1C2CBE8();
      OUTLINED_FUNCTION_32_5();

      v72 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))(v71);
      v73 = qword_1ED9A97D8;
      v74 = v72;
      if (v73 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_1ED9A97D8);
      }

      v26 = 0xD000000000000021;
      v75 = qword_1ED9A9830;
      sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
      v76 = v75;
      v77 = sub_1B1C2D248();

      if (v77)
      {
        v25 = 0x746361706D6F632ELL;
      }

      else
      {
        v78 = qword_1ED9A9100;
        v74 = v74;
        if (v78 != -1)
        {
          OUTLINED_FUNCTION_2_0(&qword_1ED9A9100);
        }

        v25 = 0x6D75696D6572702ELL;
        v79 = qword_1ED9A90A8;
        v80 = sub_1B1C2D248();

        if ((v80 & 1) == 0)
        {
          if (qword_1ED9A9628 != -1)
          {
            OUTLINED_FUNCTION_14_0(&qword_1ED9A9628);
          }

          v98 = qword_1ED9A9598;
          sub_1B1C2D248();

          goto LABEL_21;
        }
      }

LABEL_21:
      v27 = 0xE800000000000000;
LABEL_22:
      v105 = v26;
      v106 = v21;

      MEMORY[0x1B27381B0](v22, v6);

      MEMORY[0x1B27381B0](v25, v27);

      return v105;
    }

    v81 = sub_1B1B4B3E4();
    v82 = [v81 string];

    v83 = sub_1B1C2CB58();
    v22 = v84;

    v105 = v83;
    v106 = v22;

    MEMORY[0x1B27381B0](46, 0xE100000000000000);

    v26 = v105;
    v21 = v106;
    v105 = sub_1B1B4C080();
    v106 = v85;
    v110[0] = 45;
    v110[1] = 0xE100000000000000;
    v86 = sub_1B1A8EDAC();
    OUTLINED_FUNCTION_12_9(v86, v87, v88, v89, v90, v91, v92, v93, v99, v100, v86, v86, v102, 0, 0xE000000000000000, v105, v106, v107, v108, v109, v110[0]);
    v101 = v94;
    OUTLINED_FUNCTION_4();
    sub_1B1C2D398();
    OUTLINED_FUNCTION_32_5();

    result = [v2 &selRef:v6 sleepForTimeInterval:v101];
    if (result)
    {
      v95 = result;

      v96 = sub_1B1C2CA98();
      OUTLINED_FUNCTION_33_3();
      v104 = v97;
      sub_1B1C2D4B8();
      sub_1B1B29EE8(&v105, v96);

      sub_1B1B08B44(&v105);
      if (v111)
      {
        if (swift_dynamicCast())
        {
          v105 = 46;
          v106 = 0xE100000000000000;
          MEMORY[0x1B27381B0](v104, 0xE900000000000074);

          v25 = v105;
          v27 = v106;
          goto LABEL_22;
        }
      }

      else
      {
        sub_1B1A90C78(v110, &qword_1EB761DE0, &qword_1B1C352C0);
      }

      v25 = 0;
      v27 = 0xE000000000000000;
      goto LABEL_22;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1B1B4CE58(uint64_t a1, uint64_t a2)
{
  result = [*&v2[OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset] attributes];
  if (!result)
  {
    goto LABEL_98;
  }

  v6 = result;
  v7 = sub_1B1C2CA98();

  v72[0] = a1;
  v72[1] = a2;

  v8 = MEMORY[0x1E69E6158];
  v9 = sub_1B1C2D4B8();
  v17 = OUTLINED_FUNCTION_8_15(v9, v10, v11, v12, v13, v14, v15, v16, v65, v66, v68, v70[0]);
  sub_1B1B29EE8(v17, v7);

  sub_1B1B08B44(v70);
  sub_1B1A9D80C(v72, v70);
  if (v71)
  {
    v18 = MEMORY[0x1E69E6530];
    if (swift_dynamicCast())
    {
      v19 = v67;
      if (v67 <= 19999)
      {
        sub_1B1A90C78(v72, &qword_1EB761DE0, &qword_1B1C352C0);
        return v19;
      }

      v35 = sub_1B1C2D0C8();
      if (qword_1ED9A99C0 != -1)
      {
        OUTLINED_FUNCTION_0_13(&qword_1ED9A99C0);
      }

      v36 = qword_1ED9AA670;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1B1C364D0;
      v38 = MEMORY[0x1E69E65A8];
      *(v37 + 56) = v18;
      *(v37 + 64) = v38;
      *(v37 + 32) = v67;
      *(v37 + 96) = v8;
      v39 = sub_1B1AC9204();
      *(v37 + 104) = v39;
      *(v37 + 72) = a1;
      *(v37 + 80) = a2;

      v40 = [v2 description];
      v41 = sub_1B1C2CB58();
      v43 = v42;

      *(v37 + 136) = v8;
      *(v37 + 144) = v39;
      *(v37 + 112) = v41;
      *(v37 + 120) = v43;
      sub_1B1C2C7C8(v35, &dword_1B1A8A000, v36, "Preposterous integer version %d for key %{public}@ in %@", 56, 2, v37);
      goto LABEL_89;
    }
  }

  else
  {
    sub_1B1A90C78(v70, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  sub_1B1A9D80C(v72, v70);
  if (!v71)
  {
    OUTLINED_FUNCTION_30();
    sub_1B1A90C78(v29, v30, v31);
    OUTLINED_FUNCTION_30();
LABEL_91:
    sub_1B1A90C78(v32, v33, v34);
    return 0;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_90:
    v33 = &qword_1EB761DE0;
    v34 = &qword_1B1C352C0;
    v32 = v72;
    goto LABEL_91;
  }

  v20 = HIBYTE(v69) & 0xF;
  v21 = v67 & 0xFFFFFFFFFFFFLL;
  if ((v69 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v69) & 0xF;
  }

  else
  {
    v22 = v67 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
LABEL_89:

    goto LABEL_90;
  }

  if ((v69 & 0x1000000000000000) != 0)
  {

    sub_1B1B2EFF0(v67, v69, 10);
    v19 = v54;
    v56 = v55;

    if (v56)
    {
      goto LABEL_89;
    }

    goto LABEL_84;
  }

  if ((v69 & 0x2000000000000000) != 0)
  {
    v70[0] = v67;
    v70[1] = v69 & 0xFFFFFFFFFFFFFFLL;
    if (v67 == 43)
    {
      if (v20)
      {
        if (v20 != 1)
        {
          OUTLINED_FUNCTION_31_3();
          while (1)
          {
            OUTLINED_FUNCTION_6_0();
            if (!v25 & v24)
            {
              break;
            }

            OUTLINED_FUNCTION_1_20();
            if (!v25)
            {
              break;
            }

            v19 = v49 + v48;
            if (__OFADD__(v49, v48))
            {
              break;
            }

            OUTLINED_FUNCTION_16_2();
            if (v25)
            {
              goto LABEL_81;
            }
          }
        }

        goto LABEL_80;
      }

      goto LABEL_97;
    }

    if (v67 != 45)
    {
      if (v20)
      {
        while (1)
        {
          OUTLINED_FUNCTION_6_0();
          if (!v25 & v24)
          {
            break;
          }

          OUTLINED_FUNCTION_1_20();
          if (!v25)
          {
            break;
          }

          v19 = v53 + v52;
          if (__OFADD__(v53, v52))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
          if (v25)
          {
            goto LABEL_81;
          }
        }
      }

      goto LABEL_80;
    }

    if (v20)
    {
      if (v20 != 1)
      {
        OUTLINED_FUNCTION_31_3();
        while (1)
        {
          OUTLINED_FUNCTION_6_0();
          if (!v25 & v24)
          {
            break;
          }

          OUTLINED_FUNCTION_1_20();
          if (!v25)
          {
            break;
          }

          v19 = v45 - v44;
          if (__OFSUB__(v45, v44))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
          if (v25)
          {
            goto LABEL_81;
          }
        }
      }

      goto LABEL_80;
    }
  }

  else
  {
    if ((v67 & 0x1000000000000000) != 0)
    {
      result = (v69 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1B1C2D578();
    }

    v23 = *result;
    if (v23 == 43)
    {
      if (v21 >= 1)
      {
        if (v21 != 1)
        {
          v19 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_6_0();
              if (!v25 & v24)
              {
                goto LABEL_80;
              }

              OUTLINED_FUNCTION_1_20();
              if (!v25)
              {
                goto LABEL_80;
              }

              v19 = v47 + v46;
              if (__OFADD__(v47, v46))
              {
                goto LABEL_80;
              }

              OUTLINED_FUNCTION_16_2();
              if (v25)
              {
                goto LABEL_81;
              }
            }
          }

          goto LABEL_71;
        }

        goto LABEL_80;
      }

      goto LABEL_96;
    }

    if (v23 != 45)
    {
      if (v21)
      {
        v19 = 0;
        if (result)
        {
          while (1)
          {
            v50 = *result - 48;
            if (v50 > 9)
            {
              goto LABEL_80;
            }

            v51 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_80;
            }

            v19 = v51 + v50;
            if (__OFADD__(v51, v50))
            {
              goto LABEL_80;
            }

            ++result;
            if (!--v21)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_71;
      }

LABEL_80:
      v19 = 0;
      v28 = 1;
LABEL_81:
      if (v28)
      {
        goto LABEL_89;
      }

LABEL_84:
      if (v19 <= 19999)
      {
        sub_1B1A90C78(v72, &qword_1EB761DE0, &qword_1B1C352C0);

        return v19;
      }

      v57 = sub_1B1C2D0C8();
      if (qword_1ED9A99C0 != -1)
      {
        OUTLINED_FUNCTION_0_13(&qword_1ED9A99C0);
      }

      v58 = qword_1ED9AA670;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_1B1C364D0;
      *(v59 + 56) = v8;
      v60 = sub_1B1AC9204();
      *(v59 + 32) = v67;
      *(v59 + 40) = v69;
      *(v59 + 96) = v8;
      *(v59 + 104) = v60;
      *(v59 + 64) = v60;
      *(v59 + 72) = a1;
      *(v59 + 80) = a2;

      v61 = [v2 description];
      v62 = sub_1B1C2CB58();
      v64 = v63;

      *(v59 + 136) = v8;
      *(v59 + 144) = v60;
      *(v59 + 112) = v62;
      *(v59 + 120) = v64;
      sub_1B1C2C7C8(v57, &dword_1B1A8A000, v58, "Preposterous string version %{public}@ for key %{public}@ in %@", 63, 2, v59);
      goto LABEL_89;
    }

    if (v21 >= 1)
    {
      if (v21 != 1)
      {
        v19 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_6_0();
            if (!v25 & v24)
            {
              goto LABEL_80;
            }

            OUTLINED_FUNCTION_1_20();
            if (!v25)
            {
              goto LABEL_80;
            }

            v19 = v27 - v26;
            if (__OFSUB__(v27, v26))
            {
              goto LABEL_80;
            }

            OUTLINED_FUNCTION_16_2();
            if (v25)
            {
              goto LABEL_81;
            }
          }
        }

LABEL_71:
        v28 = 0;
        goto LABEL_81;
      }

      goto LABEL_80;
    }

    __break(1u);
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
  return result;
}

uint64_t sub_1B1B4D498(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B1C2CB58();
  v4 = sub_1B1B4CE58(v2, v3);

  v6 = 100000 * v4;
  if ((v4 * 100000) >> 64 != (100000 * v4) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  v7 = sub_1B1C2CB58();
  v9 = sub_1B1B4CE58(v7, v8);

  result = v6 + v9;
  if (__OFADD__(v6, v9))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

id sub_1B1B4D544(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B1C2CB28();

  return v5;
}

uint64_t sub_1B1B4D5B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset);
  result = [v1 attributes];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = result;
  v4 = sub_1B1C2CA98();

  v47[0] = sub_1B1C2CB58();
  v47[1] = v5;
  sub_1B1C2D4B8();
  sub_1B1B29EE8(v40, v4);

  sub_1B1B08B44(v40);
  result = [v1 attributes];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = result;
  v7 = sub_1B1C2CA98();

  v46[0] = sub_1B1C2CB58();
  v46[1] = v8;
  sub_1B1C2D4B8();
  sub_1B1B29EE8(v40, v7);

  sub_1B1B08B44(v40);
  result = [v1 attributes];
  if (result)
  {
    v9 = result;
    v10 = sub_1B1C2CA98();

    *&v43 = sub_1B1C2CB58();
    *(&v43 + 1) = v11;
    sub_1B1C2D4B8();
    sub_1B1B29EE8(v40, v10);

    sub_1B1B08B44(v40);
    if (v44)
    {
      sub_1B1A9EEE0(&v43, v45);
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      MEMORY[0x1B27381B0](23328, 0xE200000000000000);
      sub_1B1C2D618();
      MEMORY[0x1B27381B0](93, 0xE100000000000000);
      __swift_destroy_boxed_opaque_existential_0(v45);
    }

    else
    {
      sub_1B1A90C78(&v43, &qword_1EB761DE0, &qword_1B1C352C0);
    }

    sub_1B1A9D80C(v47, v40);
    sub_1B1A9D80C(v46, &v41);
    if (v40[3])
    {
      sub_1B1A9D80C(v40, v45);
      if (v42)
      {
        sub_1B1A9EEE0(v45, &v43);
        sub_1B1A9EEE0(&v41, v39);
        MEMORY[0x1B27381B0](2119235, 0xE300000000000000);
        OUTLINED_FUNCTION_36_5(&v43, v12, v13, v14, v15, v16, v17, v18, 0);
        MEMORY[0x1B27381B0](0x20564D202F20, 0xE600000000000000);
        OUTLINED_FUNCTION_36_5(v39, v19, v20, v21, v22, v23, v24, v25, v37);

        v26 = OUTLINED_FUNCTION_72();
        MEMORY[0x1B27381B0](v26);

        v27 = v38;
        __swift_destroy_boxed_opaque_existential_0(v39);
      }

      else
      {
        sub_1B1A9EEE0(v45, &v43);
        *&v39[0] = 0;
        *(&v39[0] + 1) = 0xE000000000000000;
        MEMORY[0x1B27381B0](2119235, 0xE300000000000000);
        sub_1B1C2D618();

        v30 = OUTLINED_FUNCTION_72();
        MEMORY[0x1B27381B0](v30);

        v27 = 0;
      }

      v29 = &v43;
    }

    else
    {
      if (!v42)
      {

        OUTLINED_FUNCTION_30();
        sub_1B1A90C78(v31, v32, v33);
        OUTLINED_FUNCTION_30();
        sub_1B1A90C78(v34, v35, v36);
        sub_1B1A90C78(v40, &qword_1EB7627C0, &qword_1B1C39550);
        return 0x6E776F6E6B6E555BLL;
      }

      sub_1B1A9EEE0(&v41, v45);
      *&v43 = 0;
      *(&v43 + 1) = 0xE000000000000000;
      MEMORY[0x1B27381B0](2119245, 0xE300000000000000);
      sub_1B1C2D618();

      v28 = OUTLINED_FUNCTION_72();
      MEMORY[0x1B27381B0](v28);

      v27 = v43;
      v29 = v45;
    }

    __swift_destroy_boxed_opaque_existential_0(v29);
    sub_1B1A90C78(v46, &qword_1EB761DE0, &qword_1B1C352C0);
    sub_1B1A90C78(v47, &qword_1EB761DE0, &qword_1B1C352C0);
    sub_1B1A90C78(v40, &qword_1EB761DE0, &qword_1B1C352C0);
    return v27;
  }

LABEL_19:
  __break(1u);
  return result;
}

_OWORD *sub_1B1B4DADC()
{
  result = [*(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset) attributes];
  if (result)
  {
    v2 = result;
    v3 = sub_1B1C2CA98();

    OUTLINED_FUNCTION_3_16();
    v5 = OUTLINED_FUNCTION_22_6(v4, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    v13 = OUTLINED_FUNCTION_8_15(v5, v6, v7, v8, v9, v10, v11, v12, v21, v23, v26, v28[0]);
    sub_1B1B29EE8(v13, v3);

    v14 = sub_1B1B08B44(v28);
    if (v30)
    {
      OUTLINED_FUNCTION_16_14(v14, v15, v16, MEMORY[0x1E69E6158], v17, v18, v19, v20, v22, v24);
      if (swift_dynamicCast())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
        result = swift_allocObject();
        result[1] = xmmword_1B1C361C0;
        *(result + 4) = v25;
        *(result + 5) = v27;
        return result;
      }
    }

    else
    {
      sub_1B1A90C78(v29, &qword_1EB761DE0, &qword_1B1C352C0);
    }

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B1B4DC6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset);
  result = [v1 attributes];
  if (!result)
  {
    __break(1u);
    goto LABEL_21;
  }

  v3 = result;
  v4 = sub_1B1C2CA98();

  v34 = 0xD000000000000016;
  sub_1B1C2D4B8();
  sub_1B1B29EE8(v35, v4);

  sub_1B1B08B44(v35);
  if (v37)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
    if (OUTLINED_FUNCTION_26_4(v5, v6, v7, v8, v9, v10, v11, v12))
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1B1A90C78(v36, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  result = [v1 attributes];
  if (!result)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = sub_1B1C2CA98();

  v34 = 0x65676175676E614CLL;
  sub_1B1C2D4B8();
  sub_1B1B29EE8(v35, v14);

  sub_1B1B08B44(v35);
  if (!v37)
  {
    sub_1B1A90C78(v36, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  if ((OUTLINED_FUNCTION_26_4(v15, v16, v17, v18, v19, v20, v21, v22) & 1) == 0)
  {
LABEL_11:
    v23 = sub_1B1B4DADC();
    goto LABEL_12;
  }

LABEL_9:
  v23 = v34;
LABEL_12:
  v24 = *(v23 + 2);
  if (v24)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1B1AC9FA8();
    v25 = v33;
    sub_1B1A8EDAC();
    v26 = v23 + 5;
    do
    {
      v27 = *v26;
      v35[0] = *(v26 - 1);
      v35[1] = v27;
      v36[0] = 95;
      v36[1] = 0xE100000000000000;
      OUTLINED_FUNCTION_4();
      v28 = sub_1B1C2D398();
      v30 = v29;
      v31 = *(v33 + 16);
      if (v31 >= *(v33 + 24) >> 1)
      {
        sub_1B1AC9FA8();
      }

      *(v33 + 16) = v31 + 1;
      v32 = v33 + 16 * v31;
      *(v32 + 32) = v28;
      *(v32 + 40) = v30;
      v26 += 2;
      --v24;
    }

    while (v24);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v25;
}

uint64_t sub_1B1B4DFB4()
{
  result = OUTLINED_FUNCTION_29_3();
  if (!result)
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v1 = result;
  v2 = sub_1B1C2CA98();

  v4 = OUTLINED_FUNCTION_22_6(v3, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v12 = OUTLINED_FUNCTION_8_15(v4, v5, v6, v7, v8, v9, v10, v11, v59, 0x7265646E6547, 0xE600000000000000, v68[0]);
  sub_1B1B29EE8(v12, v2);

  v13 = sub_1B1B08B44(v68);
  if (v70)
  {
    if (OUTLINED_FUNCTION_5_16(v13, v14, v15, MEMORY[0x1E69E6158], v16))
    {
      v17 = v62 == 1701601645 && v65 == 0xE400000000000000;
      if (v17 || (OUTLINED_FUNCTION_3(1701601645, 0xE400000000000000) & 1) != 0)
      {

        return 1;
      }

      v56 = v62 == 0x656C616D6566 && v65 == 0xE600000000000000;
      if (v56 || (OUTLINED_FUNCTION_3(0x656C616D6566, 0xE600000000000000) & 1) != 0)
      {

        return 2;
      }

      if (v62 == 0x6C61727475656ELL && v65 == 0xE700000000000000)
      {

        return 3;
      }

      v58 = OUTLINED_FUNCTION_3(0x6C61727475656ELL, 0xE700000000000000);

      if (v58)
      {
        return 3;
      }

      return 0;
    }
  }

  else
  {
    sub_1B1A90C78(v69, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  result = OUTLINED_FUNCTION_29_3();
  if (!result)
  {
    goto LABEL_44;
  }

  v19 = result;
  v20 = sub_1B1C2CA98();

  OUTLINED_FUNCTION_14_11();
  v22 = OUTLINED_FUNCTION_22_6(v21, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v30 = OUTLINED_FUNCTION_8_15(v22, v23, v24, v25, v26, v27, v28, v29, v60, v62, v65, v68[0]);
  sub_1B1B29EE8(v30, v20);

  v31 = sub_1B1B08B44(v68);
  if (v70)
  {
    if (OUTLINED_FUNCTION_5_16(v31, v32, v33, MEMORY[0x1E69E6158], v34))
    {
      if (qword_1EB761618 != -1)
      {
        OUTLINED_FUNCTION_10_15(&qword_1EB761618);
      }

      v18 = sub_1B1B2A000(v63, v66, qword_1EB772E78);
      v36 = v35;

      if (v36)
      {

        return v18;
      }
    }
  }

  else
  {
    sub_1B1A90C78(v69, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  result = OUTLINED_FUNCTION_29_3();
  if (result)
  {
    v37 = result;
    v38 = sub_1B1C2CA98();

    OUTLINED_FUNCTION_3_16();
    v40 = OUTLINED_FUNCTION_22_6(v39, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    v48 = OUTLINED_FUNCTION_8_15(v40, v41, v42, v43, v44, v45, v46, v47, v61, v63, v66, v68[0]);
    sub_1B1B29EE8(v48, v38);

    v49 = sub_1B1B08B44(v68);
    if (v70)
    {
      if (OUTLINED_FUNCTION_5_16(v49, v50, v51, MEMORY[0x1E69E6158], v52))
      {
        if (qword_1EB761620 != -1)
        {
          OUTLINED_FUNCTION_17_11(&qword_1EB761620);
        }

        sub_1B1B29F98(v64, v67, qword_1EB772E80);
        v54 = v53;
        v18 = v55;

        if (v54)
        {

          return v18;
        }
      }
    }

    else
    {
      sub_1B1A90C78(v69, &qword_1EB761DE0, &qword_1B1C352C0);
    }

    return 0;
  }

LABEL_45:
  __break(1u);
  return result;
}

id sub_1B1B4E3A0()
{
  result = [*(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset) attributes];
  if (result)
  {
    v2 = result;
    v3 = sub_1B1C2CA98();

    v15[0] = 6645569;
    v15[1] = 0xE300000000000000;
    sub_1B1C2D4B8();
    sub_1B1B29EE8(v14, v3);

    sub_1B1B08B44(v14);
    if (v15[3])
    {
      v4 = sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
      if (OUTLINED_FUNCTION_27_6(v4, v5, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1], v14[2], v14[3], v14[4], v15[0]))
      {
        return v13;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1B1A90C78(v15, &qword_1EB761DE0, &qword_1B1C352C0);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1B4E530()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset) attributes];
  if (!v1 || (v2 = v1, v3 = sub_1B1C2CA98(), v2, v4 = sub_1B1B4E600(v3), , !v4))
  {
    v4 = sub_1B1C2CAB8();
  }

  v5 = sub_1B1AE0B90(v4);

  return v5;
}

unint64_t sub_1B1B4E600(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627C8, &unk_1B1C40E70);
    v2 = sub_1B1C2D6A8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1B1B37DE8(*(a1 + 48) + 40 * v10, __src);
    sub_1B1A93378(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1B1B37DE8(__dst, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_1B1A93378(&__dst[40], v20);
    sub_1B1A90C78(__dst, &qword_1EB7627D0, &qword_1B1C38C50);
    v21 = v18;
    sub_1B1A9EEE0(v20, v22);
    v11 = v21;
    sub_1B1A9EEE0(v22, v23);
    sub_1B1A9EEE0(v23, &v21);
    result = sub_1B1A8EB10();
    v12 = result;
    if (v13)
    {
      *(v2[6] + 16 * result) = v11;

      v14 = (v2[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_0(v14);
      result = sub_1B1A9EEE0(&v21, v14);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_1B1A9EEE0(&v21, (v2[7] + 32 * result));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v8 = v9;
    }
  }

  sub_1B1A90C78(__dst, &qword_1EB7627D0, &qword_1B1C38C50);

  return 0;
}

id sub_1B1B4E8FC()
{
  result = [*(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset) attributes];
  if (result)
  {
    v2 = result;
    v3 = sub_1B1C2CA98();

    v16[0] = sub_1B1C2CB58();
    v16[1] = v4;
    sub_1B1C2D4B8();
    sub_1B1B29EE8(v15, v3);

    sub_1B1B08B44(v15);
    if (v16[3])
    {
      v5 = sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
      if (OUTLINED_FUNCTION_27_6(v5, v6, v7, v8, v9, v10, v11, v12, v13, v15[0], v15[1], v15[2], v15[3], v15[4], v16[0]))
      {
        return v14;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1B1A90C78(v16, &qword_1EB761DE0, &qword_1B1C352C0);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B1B4EA60()
{
  result = [*(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset) attributes];
  if (result)
  {
    v2 = result;
    v3 = sub_1B1C2CA98();

    v25 = sub_1B1C2CB58();
    v28 = v4;
    v5 = OUTLINED_FUNCTION_22_6(v25, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    v13 = OUTLINED_FUNCTION_8_15(v5, v6, v7, v8, v9, v10, v11, v12, v23, v25, v28, v29[0]);
    sub_1B1B29EE8(v13, v3);

    sub_1B1B08B44(v29);
    if (v31)
    {
      v14 = sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
      OUTLINED_FUNCTION_16_14(v14, v15, v16, v14, v17, v18, v19, v20, v24, v26);
      if (swift_dynamicCast())
      {
        return v27;
      }
    }

    else
    {
      sub_1B1A90C78(v30, &qword_1EB761DE0, &qword_1B1C352C0);
    }

    v21 = TTSAsset.effectiveDiskSize.getter();
    if (v22)
    {
      return 0;
    }

    else
    {
      return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B1B4EBF0()
{
  v1 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v19 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  v13 = [*(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset) getLocalFileUrl];
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  sub_1B1C2C168();

  (*(v3 + 32))(v12, v10, v1);
  sub_1B1A8E474(0, &qword_1ED9A9810, 0x1E696AAE8);
  (*(v3 + 16))(v7, v12, v1);
  v15 = sub_1B1AB30DC(v7);
  v16 = OUTLINED_FUNCTION_72();
  v17(v16);
  return v15;
}

void sub_1B1B4EEC4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_allocWithZone(MEMORY[0x1E69B1948]) init];
  [v10 setDiscretionary_];
  [v10 setRequiresPowerPluggedIn_];
  v11 = *&v5[OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset];
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v23 = sub_1B1B500F8;
  v24 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1B1B20428;
  v22 = &block_descriptor_15;
  v13 = _Block_copy(&aBlock);
  sub_1B1A94514(a2, a3);

  [v11 attachProgressCallBack_];
  _Block_release(v13);
  OUTLINED_FUNCTION_66();
  v14 = swift_allocObject();
  v14[2] = v5;
  v14[3] = a4;
  v14[4] = a5;
  v23 = sub_1B1B50100;
  v24 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1B1B4B398;
  v22 = &block_descriptor_6_2;
  v15 = _Block_copy(&aBlock);
  v16 = v10;
  v17 = v5;
  sub_1B1A94514(a4, a5);

  [v11 startDownload:v16 then:v15];
  _Block_release(v15);

  [v11 refreshState];
}

void sub_1B1B4F0EC(void *a1, void (*a2)(id, id, double))
{
  if (a1 && a2)
  {
    v4 = a1;
    [v4 expectedTimeRemaining];
    a2([v4 totalWritten], objc_msgSend(v4, sel_totalExpected), v3);
  }
}

id sub_1B1B4F1AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = *(a2 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset);
  [v6 attachProgressCallBack_];
  result = [v6 refreshState];
  if (a1)
  {
    if (!a3)
    {
      return result;
    }

    v8 = 0;
  }

  else
  {
    v9 = type metadata accessor for TTSAsset();
    result = sub_1B1B7693C(v9, v10);
    if (!a3)
    {
      return result;
    }

    v8 = a2;
  }

  return a3(v8);
}

void sub_1B1B4F370(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset];
  OUTLINED_FUNCTION_66();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  OUTLINED_FUNCTION_1_13();
  v9[1] = 1107296256;
  v9[2] = sub_1B1B4F4B4;
  v9[3] = &block_descriptor_12_0;
  v7 = _Block_copy(v9);
  v8 = v2;

  [v5 cancelDownload_];
  _Block_release(v7);
}

uint64_t sub_1B1B4F44C(uint64_t a1, char *a2, uint64_t (*a3)(char *))
{
  [*&a2[OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset] refreshState];
  if ([a2 locallyAvailable])
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  return a3(v5);
}

uint64_t sub_1B1B4F4BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1B1B4F5A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset);
  [v1 purgeSync];
  [v1 refreshState];
  v2 = type metadata accessor for TTSAsset();
  return sub_1B1B7693C(v2, v3);
}

void sub_1B1B4F648(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset];
  OUTLINED_FUNCTION_66();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  OUTLINED_FUNCTION_1_13();
  v11[1] = 1107296256;
  v11[2] = sub_1B1B4B374;
  v11[3] = &block_descriptor_18_1;
  v7 = _Block_copy(v11);
  v8 = v2;
  v9 = OUTLINED_FUNCTION_33();
  sub_1B1A94514(v9, v10);

  [v5 purge_];
  _Block_release(v7);
}

void sub_1B1B4F724(void *a1, uint64_t a2, void (*a3)(void *))
{
  [*(a2 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset) refreshState];
  v5 = type metadata accessor for TTSAsset();
  sub_1B1B7693C(v5, v6);
  if (a3)
  {
    if (a1)
    {
      sub_1B1C2D538();
      MEMORY[0x1B27381B0](0xD000000000000019, 0x80000001B1C49540);
      type metadata accessor for MAPurgeResult(0);
      sub_1B1C2D618();
      sub_1B1A9EC9C();
      a1 = swift_allocError();
      *v7 = 1;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0xE000000000000000;
    }

    a3(a1);
  }
}

id TTSAssetMAAsset.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1B1B4FA54()
{
  v60[3] = *MEMORY[0x1E69E9840];
  v57 = sub_1B1C2C0A8();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v56 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v59 = v44 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v55 = v44 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v44 - v17;
  v19 = [*(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset) getLocalFileUrl];
  if (!v19)
  {
    return v19;
  }

  sub_1B1C2C168();

  v20 = OUTLINED_FUNCTION_33();
  v21(v20);
  v22 = [objc_opt_self() defaultManager];
  v23 = sub_1B1C2C118();
  v60[0] = 0;
  v24 = [v22 contentsOfDirectoryAtURL:v23 includingPropertiesForKeys:0 options:0 error:v60];

  v25 = v60[0];
  if (!v24)
  {
    v38 = v60[0];
    v39 = sub_1B1C2C058();

    swift_willThrow();
    (*(v7 + 8))(v18, v5);
    return 0;
  }

  v54 = v5;
  v26 = sub_1B1C2CE78();
  v27 = v25;

  v53 = *(v26 + 16);
  if (!v53)
  {

    v35 = *(v7 + 8);
    v29 = v54;
LABEL_11:
    v35(v18, v29);
    return 0;
  }

  v44[0] = v11;
  v45 = v18;
  v28 = 0;
  v50 = v26 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v52 = v7 + 16;
  v49 = *MEMORY[0x1E6968F58];
  v51 = v7;
  v47 = (v2 + 8);
  v48 = (v2 + 104);
  v44[1] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29 = v54;
  v30 = v55;
  v46 = v26;
  v31 = v57;
  while (1)
  {
    if (v28 >= *(v26 + 16))
    {
      __break(1u);
    }

    v32 = v51;
    v33 = v50 + *(v51 + 72) * v28;
    v58 = *(v51 + 16);
    v58(v30, v33, v29);
    v60[0] = 0x746361706D6F63;
    v60[1] = 0xE700000000000000;
    v34 = v56;
    (*v48)(v56, v49, v31);
    sub_1B1A8EDAC();
    sub_1B1C2C1B8();
    v35 = *(v32 + 8);
    v35(v30, v29);
    (*v47)(v34, v31);
    v36 = sub_1B1C2C148();
    v37 = v58;
    v26 = v46;
    if (v36)
    {
      break;
    }

    ++v28;
    v29 = v54;
    v35(v59, v54);
    if (v53 == v28)
    {

      v18 = v45;
      goto LABEL_11;
    }
  }

  sub_1B1A8E474(0, &qword_1ED9A9810, 0x1E696AAE8);
  v41 = v44[0];
  v42 = v59;
  v43 = v54;
  v37(v44[0], v59, v54);
  v19 = sub_1B1AB30DC(v41);
  v35(v42, v43);
  v35(v45, v43);
  return v19;
}

uint64_t (*sub_1B1B4FFC4(uint64_t (*result)(void)))(void)
{
  if (result)
  {
    return result(0);
  }

  return result;
}

id sub_1B1B500C0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B1B50184(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1B501C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B1B50210(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1B50250(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t AudioHandler.__allocating_init(notificationCenter:)(void *a1)
{
  v2 = swift_allocObject();
  AudioHandler.init(notificationCenter:)(a1);
  return v2;
}

void AudioHandler.audioPower.getter(int32x2_t *a1@<X8>)
{
  os_unfair_lock_lock(v1 + 8);
  sub_1B1B50350(&v1[10], a1);

  os_unfair_lock_unlock(v1 + 8);
}

int32x2_t sub_1B1B50350@<D0>(uint64_t a1@<X0>, int32x2_t *a2@<X8>)
{
  sub_1B1B50850(a1, &v6, &unk_1EB762990, &unk_1B1C352D0);
  if (v7)
  {
    sub_1B1A8D0E0(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    sub_1B1A90C78(&v6, &unk_1EB762990, &unk_1B1C352D0);
    result = vdup_n_s32(0xC2F00000);
    *a2 = result;
  }

  return result;
}

float AudioHandler.audioVolume.getter()
{
  OUTLINED_FUNCTION_0_20();
  swift_beginAccess();
  sub_1B1B50850(v0 + 80, &v5, &qword_1EB7618F8, &unk_1B1C352E0);
  if (v6)
  {
    sub_1B1A8D0E0(&v5, v7);
    v1 = v8;
    v2 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v3 = (*(v2 + 8))(v1, v2);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    sub_1B1A90C78(&v5, &qword_1EB7618F8, &unk_1B1C352E0);
    return 1.0;
  }

  return v3;
}

uint64_t AudioHandler.audioVolume.setter(float a1)
{
  OUTLINED_FUNCTION_0_20();
  swift_beginAccess();
  sub_1B1B50850(v1 + 80, &v6, &qword_1EB7618F8, &unk_1B1C352E0);
  if (!v7)
  {
    return sub_1B1A90C78(&v6, &qword_1EB7618F8, &unk_1B1C352E0);
  }

  sub_1B1A8D0E0(&v6, v8);
  v3 = v9;
  v4 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v4 + 16))(v3, v4, a1);
  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t (*AudioHandler.audioVolume.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = AudioHandler.audioVolume.getter();
  return sub_1B1B50618;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHandler.adjust(volume:rampTime:)(Swift::Float volume, Swift::Double rampTime)
{
  OUTLINED_FUNCTION_0_20();
  swift_beginAccess();
  sub_1B1B50850(v2 + 80, &v8, &qword_1EB7618F8, &unk_1B1C352E0);
  if (v9)
  {
    sub_1B1A8D0E0(&v8, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v6 + 32))(v5, v6, volume, rampTime);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    sub_1B1A90C78(&v8, &qword_1EB7618F8, &unk_1B1C352E0);
    sub_1B1A9EC9C();
    swift_allocError();
    *v7 = 14;
    *(v7 + 8) = 0xD00000000000002ALL;
    *(v7 + 16) = 0x80000001B1C4DF60;
    swift_willThrow();
  }
}

uint64_t (*sub_1B1B507B4(uint64_t a1))(uint64_t a1)
{
  *a1 = *v1;
  *(a1 + 8) = AudioHandler.audioVolume.getter();
  return sub_1B1B50618;
}

uint64_t sub_1B1B50850(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t OpusEncodingAction.__allocating_init(pool:)(uint64_t a1)
{
  *(swift_allocObject() + 32) = 0;
  v1 = _s14SiriTTSService17PassThroughActionCACycfc_0();

  return v1;
}

uint64_t OpusEncodingAction.deinit()
{
  v0 = Buffer.deinit();

  return v0;
}

uint64_t sub_1B1B5093C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = OpusEncodingAction.__allocating_init(pool:)(a1);
  *a2 = result;
  return result;
}

id sub_1B1B509C8()
{
  if (!*v0)
  {
    return 0;
  }

  v1 = *v0;
  v2 = sub_1B1C2CB28();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_1B1C2D3F8();
    swift_unknownObjectRelease();
    sub_1B1A93378(v9, v8);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v9);

      return v7;
    }

    else
    {
      v5 = sub_1B1C2CB28();
      v4 = [v1 integerForKey_];

      __swift_destroy_boxed_opaque_existential_0(v9);
    }
  }

  else
  {

    return *(v0 + 24);
  }

  return v4;
}

uint64_t sub_1B1B50B04()
{
  if (*v0)
  {
    v1 = *v0;
    v2 = sub_1B1C2CB28();
    v3 = [v1 objectForKey_];

    if (v3)
    {
      sub_1B1C2D3F8();
      swift_unknownObjectRelease();
      sub_1B1A93378(v10, v9);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v10);

        return v8;
      }

      else
      {
        v5 = sub_1B1C2CB28();
        [v1 floatForKey_];
        v7 = v6;

        __swift_destroy_boxed_opaque_existential_0(v10);
        *&result = v7;
      }
    }

    else
    {

      return *(v0 + 24);
    }
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

void InternalSettings.Default.wrappedValue.getter(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(a1 + 16);
  sub_1B1C2D2B8();
  OUTLINED_FUNCTION_35_1();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v53 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v53 - v13;
  OUTLINED_FUNCTION_35_1();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v53 - v22;
  v24 = *v2;
  if (*v2)
  {
    v54 = v21;
    v55 = a1;
    v57 = a2;
    v58 = v20;
    v56 = v19;
    v25 = v24;
    v26 = sub_1B1C2CB28();
    v27 = [v25 objectForKey_];

    if (!v27)
    {

      OUTLINED_FUNCTION_26_1();

      __asm { BRAA            X3, X16 }
    }

    sub_1B1C2D3F8();
    swift_unknownObjectRelease();
    sub_1B1A9EEE0(v59, v60);
    sub_1B1A93378(v60, v59);
    if (swift_dynamicCast())
    {

      OUTLINED_FUNCTION_57_2();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
      __swift_destroy_boxed_opaque_existential_0(v60);
      v32 = *(v54 + 32);
      v32(v23, v14, v5);
      v33 = v57;
      v34 = v23;
    }

    else
    {
      OUTLINED_FUNCTION_57_2();
      __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
      v46 = *(v58 + 8);
      v47 = v14;
      v48 = v56;
      v46(v47, v56);
      sub_1B1B518BC(v25, v5, v12);

      __swift_destroy_boxed_opaque_existential_0(v60);
      (*(v58 + 32))(v9, v12, v48);
      if (__swift_getEnumTagSinglePayload(v9, 1, v5) == 1)
      {
        v46(v9, v48);
        (*(v58 + 16))(v57, v2 + *(v55 + 32), v48);
LABEL_15:
        OUTLINED_FUNCTION_26_1();
        return;
      }

      v32 = *(v54 + 32);
      v32(v18, v9, v5);
      v33 = v57;
      v34 = v18;
    }

    v32(v33, v34, v5);
    OUTLINED_FUNCTION_57_2();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_26_1();

  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
}

void sub_1B1B51084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = sub_1B1C2D2B8();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  (*(v9 + 16))(&v13 - v7, a1);
  v12 = type metadata accessor for InternalSettings.Default(0, v5, v10, v11);
  InternalSettings.Default.wrappedValue.setter(v8, v12);
}

void sub_1B1B51164(char a1)
{
  v2 = *v1;
  if (a1 == 2)
  {
    if (v2)
    {
      v5 = sub_1B1C2CB28();
      [v2 removeObjectForKey_];
    }
  }

  else if (v2)
  {
    v3 = sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    [v2 setObject:v3 forKey:v4];
    swift_unknownObjectRelease();
  }
}

void sub_1B1B5123C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *v2;
    if (*v2)
    {

      v4 = sub_1B1C2D7F8();
      v5 = sub_1B1C2CB28();
      [v3 setObject:v4 forKey:v5];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v6 = *v2;
    if (*v2)
    {
      v7 = sub_1B1C2CB28();
      [v6 removeObjectForKey_];
    }
  }
}

void sub_1B1B5134C(uint64_t a1)
{
  v2 = *v1;
  if ((a1 & 0x100000000) != 0)
  {
    if (v2)
    {
      v5 = sub_1B1C2CB28();
      [v2 removeObjectForKey_];
    }
  }

  else if (v2)
  {
    v3 = sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    [v2 setObject:v3 forKey:v4];
    swift_unknownObjectRelease();
  }
}

void sub_1B1B5141C(uint64_t a1, char a2)
{
  v3 = *v2;
  if (a2)
  {
    if (v3)
    {
      v6 = sub_1B1C2CB28();
      [v3 removeObjectForKey_];
    }
  }

  else if (v3)
  {
    v4 = sub_1B1C2D7F8();
    v5 = sub_1B1C2CB28();
    [v3 setObject:v4 forKey:v5];
    swift_unknownObjectRelease();
  }
}

void sub_1B1B514E8(uint64_t a1, char a2)
{
  v3 = *v2;
  if (a2)
  {
    if (v3)
    {
      v6 = sub_1B1C2CB28();
      [v3 removeObjectForKey_];
    }
  }

  else if (v3)
  {
    v4 = sub_1B1C2D7F8();
    v5 = sub_1B1C2CB28();
    [v3 setObject:v4 forKey:v5];
    swift_unknownObjectRelease();
  }
}

void InternalSettings.Default.wrappedValue.setter(char *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_1B1C2D2B8();
  OUTLINED_FUNCTION_35_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  OUTLINED_FUNCTION_35_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v5);
  if (__swift_getEnumTagSinglePayload(v10, 1, v4) == 1)
  {
    v16 = *(v7 + 8);
    v16(v10, v5);
    v17 = *v2;
    if (*v2)
    {
      v18 = sub_1B1C2CB28();
      [v17 removeObjectForKey_];
    }

    v16(a1, v5);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v4);
    v19 = *v2;
    if (*v2)
    {
      v20 = sub_1B1C2D798();
      v21 = sub_1B1C2CB28();
      [v19 setObject:v20 forKey:v21];
      swift_unknownObjectRelease();
    }

    (*(v7 + 8))(a1, v5);
    (*(v12 + 8))(v15, v4);
  }

  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1B517F4(void *a1, uint64_t a2)
{
  v3 = sub_1B1C2CB28();
  v4 = [a1 stringForKey_];

  if (v4)
  {
    sub_1B1C2CB58();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761D78, &qword_1B1C38F90);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1B518BC@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (swift_dynamicCastMetatype())
  {
    v7 = sub_1B1C2CB28();
    [a1 integerForKey_];

LABEL_9:
    v11 = swift_dynamicCast();
    return __swift_storeEnumTagSinglePayload(a4, v11 ^ 1u, 1, a3);
  }

  if (swift_dynamicCastMetatype())
  {
    v8 = sub_1B1C2CB28();
    v9 = [a1 stringForKey_];

    if (v9)
    {
      sub_1B1C2CB58();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761D78, &qword_1B1C38F90);
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    v10 = sub_1B1C2CB28();
    [a1 floatForKey_];

    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype())
  {
    v13 = sub_1B1C2CB28();
    [a1 BOOLForKey_];

    goto LABEL_9;
  }

  return __swift_storeEnumTagSinglePayload(a4, 1, 1, a3);
}

void (*InternalSettings.Default.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v6 = sub_1B1C2D2B8();
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  v8 = *(v7 + 64);
  v5[4] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v5[5] = v9;
  InternalSettings.Default.wrappedValue.getter(a2, v9);
  return sub_1B1B51C0C;
}

void sub_1B1B51C0C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = *v2;
    v6 = OUTLINED_FUNCTION_51();
    v7(v6);
    InternalSettings.Default.wrappedValue.setter(v3, v5);
    v8 = OUTLINED_FUNCTION_126();
    v9(v8);
  }

  else
  {
    InternalSettings.Default.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1B1B51CC4()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 16, v2);
  v3 = *(v0 + 16);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B51D70()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 16);
  v4 = *(v0 + 16);
  *(v1 + 32) = v4;
  v5 = *(v0 + 24);
  *(v1 + 40) = v5;
  v6 = *(v0 + 32);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 40));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B51DE8(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B51EB0()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 48, v2);
  v3 = *(v0 + 48);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B51F5C()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 48);
  v4 = *(v0 + 48);
  *(v1 + 32) = v4;
  v5 = *(v0 + 56);
  *(v1 + 40) = v5;
  v6 = *(v0 + 64);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 72));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B51FD4(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B5209C()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 80, v2);
  v3 = *(v0 + 80);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B52148()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 80);
  v4 = *(v0 + 80);
  *(v1 + 32) = v4;
  v5 = *(v0 + 88);
  *(v1 + 40) = v5;
  v6 = *(v0 + 96);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 104));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B521C0(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B52288()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 112, v2);
  v3 = *(v0 + 112);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B52334()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 112);
  v4 = *(v0 + 112);
  *(v1 + 32) = v4;
  v5 = *(v0 + 120);
  *(v1 + 40) = v5;
  v6 = *(v0 + 128);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 136));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B523AC(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B52474()
{
  OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_67(v1 + 144, v4);
  if (v0)
  {
    if (!*(v1 + 144))
    {

      return swift_endAccess();
    }

    OUTLINED_FUNCTION_53_3();
    sub_1B1C2D7F8();
    v2 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_29_4(v2, sel_setObject_forKey_);

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  if (*(v1 + 144))
  {
    v2 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_38_4(v2, sel_removeObjectForKey_);
LABEL_6:
  }

  return swift_endAccess();
}

uint64_t sub_1B1B52538()
{
  v2 = OUTLINED_FUNCTION_43_5();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_8_16(v3);
  OUTLINED_FUNCTION_67(&v0[9], v1 + 40);
  *(v1 + 64) = OUTLINED_FUNCTION_32_6(v0[11].n128_u64[0], v0[9], v0[10]);
  *(v1 + 72) = v4;
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B525A0(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_31_4();
    v5 = OUTLINED_FUNCTION_51();
    sub_1B1B5123C(v5, v6);
LABEL_6:

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_15();
  if (v3)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_30_6();
      sub_1B1C2D7F8();
      OUTLINED_FUNCTION_126();
      v7 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_28_3(v7, sel_setObject_forKey_);

      swift_unknownObjectRelease();
    }

    goto LABEL_6;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_126();
    v8 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v8, sel_removeObjectForKey_);
  }

LABEL_7:
  swift_endAccess();

  free(v4);
}

void sub_1B1B5267C()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1(v0 + 184, v2);
  v3 = *(v0 + 184);
  v4 = *(v0 + 208);
  v5 = v3;
  OUTLINED_FUNCTION_7_13();

  v6 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v6, v7, v8, v4);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B526E0()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 184, v2);
  v3 = *(v0 + 184);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B5278C()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 184);
  v4 = *(v0 + 184);
  *(v1 + 32) = v4;
  v5 = *(v0 + 192);
  *(v1 + 40) = v5;
  v6 = *(v0 + 200);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 208));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B52804(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

void sub_1B1B528CC()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1(v0 + 216, v2);
  v3 = *(v0 + 216);
  v4 = *(v0 + 240);
  v5 = v3;
  OUTLINED_FUNCTION_7_13();

  v6 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v6, v7, v8, v4);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B52930()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 216, v2);
  v3 = *(v0 + 216);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B529DC()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 216);
  v4 = *(v0 + 216);
  *(v1 + 32) = v4;
  v5 = *(v0 + 224);
  *(v1 + 40) = v5;
  v6 = *(v0 + 232);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 240));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B52A54(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

void sub_1B1B52B1C()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1(v0 + 248, v2);
  v3 = *(v0 + 248);
  v4 = *(v0 + 272);
  v5 = v3;
  OUTLINED_FUNCTION_7_13();

  v6 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v6, v7, v8, v4);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B52B80()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 248, v2);
  v3 = *(v0 + 248);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B52C2C()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 248);
  v4 = *(v0 + 248);
  *(v1 + 32) = v4;
  v5 = *(v0 + 256);
  *(v1 + 40) = v5;
  v6 = *(v0 + 264);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 272));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B52CA4(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B52D6C()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 280, v2);
  v3 = *(v0 + 280);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B52E18()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 280);
  v4 = *(v0 + 280);
  *(v1 + 32) = v4;
  v5 = *(v0 + 288);
  *(v1 + 40) = v5;
  v6 = *(v0 + 296);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 304));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B52E90(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B52F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_33_4(a1, a2, a3, a4, a5);
  *&v5 = OUTLINED_FUNCTION_58_4().n128_u64[0];
  OUTLINED_FUNCTION_6_15(v6, v7, v8, v9, v10, v11, v12, v13, v23, v25, v27, v29, v31, v33, v35, v37, v5);
  v14 = sub_1B1AC09EC();
  OUTLINED_FUNCTION_5_17(v14, v15, v16, v17, v18, v19, v20, v21, v24, v26, v28, v30, v32, v34, v36, v38);
  return OUTLINED_FUNCTION_42_1();
}

uint64_t sub_1B1B52FBC()
{
  OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_67(v1 + 312, v4);
  if (v0)
  {
    if (!*(v1 + 312))
    {

      return swift_endAccess();
    }

    OUTLINED_FUNCTION_53_3();
    sub_1B1C2D7F8();
    v2 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_29_4(v2, sel_setObject_forKey_);

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  if (*(v1 + 312))
  {
    v2 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_38_4(v2, sel_removeObjectForKey_);
LABEL_6:
  }

  return swift_endAccess();
}

uint64_t sub_1B1B53080()
{
  v2 = OUTLINED_FUNCTION_43_5();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_8_16(v3);
  OUTLINED_FUNCTION_34_4(v4);
  *(v1 + 64) = OUTLINED_FUNCTION_32_6(*(v0 + 344), *(v0 + 312), *(v0 + 328));
  *(v1 + 72) = v5;
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B530E4(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_31_4();
    v5 = OUTLINED_FUNCTION_51();
    sub_1B1B5123C(v5, v6);
LABEL_6:

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_15();
  if (v3)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_30_6();
      sub_1B1C2D7F8();
      OUTLINED_FUNCTION_126();
      v7 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_28_3(v7, sel_setObject_forKey_);

      swift_unknownObjectRelease();
    }

    goto LABEL_6;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_126();
    v8 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v8, sel_removeObjectForKey_);
  }

LABEL_7:
  swift_endAccess();

  free(v4);
}

void sub_1B1B531C0(uint64_t a1@<X8>)
{
  sub_1B1ABCB5C();
  *a1 = v2;
  *(a1 + 4) = v3 & 1;
}

uint64_t sub_1B1B531F4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0(v2 + 352, a2);
  v4 = *(v2 + 352);
  if ((a1 & 0x100000000) != 0)
  {
    if (v4)
    {
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
      goto LABEL_6;
    }
  }

  else if (v4)
  {
    sub_1B1C2D7F8();
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
LABEL_6:
  }

  return swift_endAccess();
}

uint64_t sub_1B1B5329C()
{
  v2 = OUTLINED_FUNCTION_49_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 352);
  v4 = *(v0 + 352);
  v1[4] = v4;
  v5 = *(v0 + 360);
  v1[5] = v5;
  v6 = *(v0 + 368);
  v1[6] = v6;
  v7 = OUTLINED_FUNCTION_40_3(v4, v5, v6, *(v0 + 376));
  OUTLINED_FUNCTION_23_8(v7);
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B53320(void **a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    v4 = OUTLINED_FUNCTION_4_17();
    sub_1B1B5134C(v4);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_50_2();
  if (v5)
  {
    if (!v2)
    {
      goto LABEL_9;
    }

    v6 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v6, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_22_7();
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v6 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v6, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_9:
  swift_endAccess();

  free(v3);
}

void sub_1B1B533F0(uint64_t a1@<X8>)
{
  sub_1B1ABCD1C();
  *a1 = v2;
  *(a1 + 4) = v3 & 1;
}

uint64_t sub_1B1B53424(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0(v2 + 384, a2);
  v4 = *(v2 + 384);
  if ((a1 & 0x100000000) != 0)
  {
    if (v4)
    {
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
      goto LABEL_6;
    }
  }

  else if (v4)
  {
    sub_1B1C2D7F8();
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
LABEL_6:
  }

  return swift_endAccess();
}

uint64_t sub_1B1B534CC()
{
  v2 = OUTLINED_FUNCTION_49_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 384);
  v4 = *(v0 + 384);
  v1[4] = v4;
  v5 = *(v0 + 392);
  v1[5] = v5;
  v6 = *(v0 + 400);
  v1[6] = v6;
  v7 = OUTLINED_FUNCTION_40_3(v4, v5, v6, *(v0 + 408));
  OUTLINED_FUNCTION_23_8(v7);
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B53550(void **a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    v4 = OUTLINED_FUNCTION_4_17();
    sub_1B1B5134C(v4);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_50_2();
  if (v5)
  {
    if (!v2)
    {
      goto LABEL_9;
    }

    v6 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v6, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_22_7();
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v6 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v6, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_9:
  swift_endAccess();

  free(v3);
}

void sub_1B1B53620(uint64_t a1@<X8>)
{
  sub_1B1ABDCD0();
  *a1 = v2;
  *(a1 + 4) = v3 & 1;
}

uint64_t sub_1B1B53654(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0(v2 + 416, a2);
  v4 = *(v2 + 416);
  if ((a1 & 0x100000000) != 0)
  {
    if (v4)
    {
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
      goto LABEL_6;
    }
  }

  else if (v4)
  {
    sub_1B1C2D7F8();
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
LABEL_6:
  }

  return swift_endAccess();
}

uint64_t sub_1B1B536FC()
{
  v2 = OUTLINED_FUNCTION_49_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 416);
  v4 = *(v0 + 416);
  v1[4] = v4;
  v5 = *(v0 + 424);
  v1[5] = v5;
  v6 = *(v0 + 432);
  v1[6] = v6;
  v7 = OUTLINED_FUNCTION_40_3(v4, v5, v6, *(v0 + 440));
  OUTLINED_FUNCTION_23_8(v7);
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B53780(void **a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    v4 = OUTLINED_FUNCTION_4_17();
    sub_1B1B5134C(v4);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_50_2();
  if (v5)
  {
    if (!v2)
    {
      goto LABEL_9;
    }

    v6 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v6, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_22_7();
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v6 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v6, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_9:
  swift_endAccess();

  free(v3);
}

uint64_t sub_1B1B53850()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 448, v2);
  v3 = *(v0 + 448);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B538FC()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 448);
  v4 = *(v0 + 448);
  *(v1 + 32) = v4;
  v5 = *(v0 + 456);
  *(v1 + 40) = v5;
  v6 = *(v0 + 464);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 472));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B53974(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

void sub_1B1B53A3C()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1(v0 + 480, v2);
  v3 = *(v0 + 480);
  v4 = *(v0 + 504);
  v5 = v3;
  OUTLINED_FUNCTION_7_13();

  v6 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v6, v7, v8, v4);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B53AA0()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 480, v2);
  v3 = *(v0 + 480);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B53B4C()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 480);
  v4 = *(v0 + 480);
  *(v1 + 32) = v4;
  v5 = *(v0 + 488);
  *(v1 + 40) = v5;
  v6 = *(v0 + 496);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 504));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B53BC4(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

void sub_1B1B53C8C(uint64_t a1@<X8>)
{
  sub_1B1B53CC0();
  *a1 = v2;
  *(a1 + 4) = v3 & 1;
}

void sub_1B1B53CC0()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1((v0 + 64), v1);
  v2 = v0[64];
  OUTLINED_FUNCTION_56_2();
  v3 = OUTLINED_FUNCTION_0_21();
  sub_1B1ABCBC8(v3, v4, v5, v6);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B53D30(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0(v2 + 512, a2);
  v4 = *(v2 + 512);
  if ((a1 & 0x100000000) != 0)
  {
    if (v4)
    {
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
      goto LABEL_6;
    }
  }

  else if (v4)
  {
    sub_1B1C2D7F8();
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
LABEL_6:
  }

  return swift_endAccess();
}

uint64_t sub_1B1B53DE0()
{
  v2 = OUTLINED_FUNCTION_49_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 512);
  v4 = *(v0 + 512);
  v1[4] = v4;
  v5 = *(v0 + 520);
  v1[5] = v5;
  v6 = *(v0 + 528);
  v1[6] = v6;
  v7 = OUTLINED_FUNCTION_40_3(v4, v5, v6, *(v0 + 536));
  OUTLINED_FUNCTION_23_8(v7);
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B53E64(void **a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    v4 = OUTLINED_FUNCTION_4_17();
    sub_1B1B5134C(v4);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_50_2();
  if (v5)
  {
    if (!v2)
    {
      goto LABEL_9;
    }

    v6 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v6, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_22_7();
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v6 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v6, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_9:
  swift_endAccess();

  free(v3);
}

void sub_1B1B53F34(uint64_t a1@<X8>)
{
  sub_1B1B53FAC();
  *a1 = v2;
  *(a1 + 4) = v3 & 1;
}

void sub_1B1B53FAC()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1((v0 + 68), v1);
  v2 = v0[68];
  OUTLINED_FUNCTION_56_2();
  v3 = OUTLINED_FUNCTION_0_21();
  sub_1B1ABCBC8(v3, v4, v5, v6);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B5401C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0(v2 + 544, a2);
  v4 = *(v2 + 544);
  if ((a1 & 0x100000000) != 0)
  {
    if (v4)
    {
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
      goto LABEL_6;
    }
  }

  else if (v4)
  {
    sub_1B1C2D7F8();
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
LABEL_6:
  }

  return swift_endAccess();
}

uint64_t sub_1B1B540CC()
{
  v2 = OUTLINED_FUNCTION_49_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 544);
  v4 = *(v0 + 544);
  v1[4] = v4;
  v5 = *(v0 + 552);
  v1[5] = v5;
  v6 = *(v0 + 560);
  v1[6] = v6;
  v7 = OUTLINED_FUNCTION_40_3(v4, v5, v6, *(v0 + 568));
  OUTLINED_FUNCTION_23_8(v7);
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B54150(void **a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    v4 = OUTLINED_FUNCTION_4_17();
    sub_1B1B5134C(v4);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_50_2();
  if (v5)
  {
    if (!v2)
    {
      goto LABEL_9;
    }

    v6 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v6, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_22_7();
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v6 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v6, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_9:
  swift_endAccess();

  free(v3);
}

void sub_1B1B54220()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1(v0 + 576, v2);
  v3 = *(v0 + 576);
  v4 = *(v0 + 600);
  v5 = v3;
  OUTLINED_FUNCTION_7_13();

  v6 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v6, v7, v8, v4);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B54288()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 576, v2);
  v3 = *(v0 + 576);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B5433C()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 576);
  v4 = *(v0 + 576);
  *(v1 + 32) = v4;
  v5 = *(v0 + 584);
  *(v1 + 40) = v5;
  v6 = *(v0 + 592);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 600));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B543B4(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B5447C()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 608, v2);
  v3 = *(v0 + 608);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B54530()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 608);
  v4 = *(v0 + 608);
  *(v1 + 32) = v4;
  v5 = *(v0 + 616);
  *(v1 + 40) = v5;
  v6 = *(v0 + 624);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 632));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B545A8(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B54670()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 640, v2);
  v3 = *(v0 + 640);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B54724()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 640);
  v4 = *(v0 + 640);
  *(v1 + 32) = v4;
  v5 = *(v0 + 648);
  *(v1 + 40) = v5;
  v6 = *(v0 + 656);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 664));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B5479C(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B54864()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 672, v2);
  v3 = *(v0 + 672);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B54918()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 672);
  v4 = *(v0 + 672);
  *(v1 + 32) = v4;
  v5 = *(v0 + 680);
  *(v1 + 40) = v5;
  v6 = *(v0 + 688);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 696));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B54990(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

void sub_1B1B54A58()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1(v0 + 704, v2);
  v3 = *(v0 + 704);
  v4 = *(v0 + 728);
  v5 = v3;
  OUTLINED_FUNCTION_7_13();

  v6 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v6, v7, v8, v4);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B54AC0()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 704, v2);
  v3 = *(v0 + 704);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B54B74()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 704);
  v4 = *(v0 + 704);
  *(v1 + 32) = v4;
  v5 = *(v0 + 712);
  *(v1 + 40) = v5;
  v6 = *(v0 + 720);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 728));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B54BEC(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

_OWORD *sub_1B1B54CE8()
{
  v1 = OUTLINED_FUNCTION_65(v0 + 736, v29);
  v2 = *(v0 + 752);
  v30[0] = *(v0 + 736);
  v30[1] = v2;
  v31 = *(v0 + 768);
  OUTLINED_FUNCTION_6_15(v1, v3, v4, v5, v6, v7, v8, v9, v19, v21, v23, v25, v27, v29[0], v29[1], v29[2]);
  v10 = sub_1B1B50B04();
  OUTLINED_FUNCTION_5_17(v10, v11, v12, v13, v14, v15, v16, v17, v20, v22, v24, v26, v28, v29[0], v29[1], v29[2]);
  return v30;
}

uint64_t sub_1B1B54D58(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  OUTLINED_FUNCTION_0(v2 + 736, a2);
  v4 = *(v2 + 736);
  if (v3)
  {
    if (v4)
    {
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v4)
  {
    sub_1B1C2D7F8();
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B54E0C(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[11] = v1;
  OUTLINED_FUNCTION_67(v1 + 736, (v3 + 5));
  v4 = *(v1 + 736);
  v5 = *(v1 + 752);
  *(v3 + 32) = *(v1 + 768);
  *v3 = v4;
  *(v3 + 1) = v5;
  v3[8] = sub_1B1B50B04();
  *(v3 + 72) = v6 & 1;
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B54E94(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1B1B5141C(v2[8], *(v2 + 72));
    goto LABEL_9;
  }

  v3 = *v2;
  if (v2[9])
  {
    if (!v3)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_51();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v4, sel_removeObjectForKey_);
  }

  else
  {
    if (!v3)
    {
      goto LABEL_9;
    }

    v2[10] = v2[8];
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_51();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_9:
  swift_endAccess();

  free(v2);
}

void sub_1B1B54F70()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1(v0 + 776, v2);
  v3 = *(v0 + 776);
  v4 = *(v0 + 800);
  v5 = v3;
  OUTLINED_FUNCTION_7_13();

  v6 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v6, v7, v8, v4);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B54FD8()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 776, v2);
  v3 = *(v0 + 776);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B5508C()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 776);
  v4 = *(v0 + 776);
  *(v1 + 32) = v4;
  v5 = *(v0 + 784);
  *(v1 + 40) = v5;
  v6 = *(v0 + 792);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 800));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B55104(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B551CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_33_4(a1, a2, a3, a4, a5);
  *&v5 = OUTLINED_FUNCTION_58_4().n128_u64[0];
  OUTLINED_FUNCTION_6_15(v6, v7, v8, v9, v10, v11, v12, v13, v23, v25, v27, v29, v31, v33, v35, v37, v5);
  v14 = sub_1B1AC09EC();
  OUTLINED_FUNCTION_5_17(v14, v15, v16, v17, v18, v19, v20, v21, v24, v26, v28, v30, v32, v34, v36, v38);
  return OUTLINED_FUNCTION_42_1();
}

uint64_t sub_1B1B55230()
{
  OUTLINED_FUNCTION_45_5();
  v2 = (v1 + 808);
  OUTLINED_FUNCTION_26_5(v3, v4, v5);
  if (v0)
  {
    if (!*v2)
    {

      return swift_endAccess();
    }

    OUTLINED_FUNCTION_53_3();
    sub_1B1C2D7F8();
    v6 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_29_4(v6, sel_setObject_forKey_);

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  if (*v2)
  {
    v6 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_38_4(v6, sel_removeObjectForKey_);
LABEL_6:
  }

  return swift_endAccess();
}

uint64_t sub_1B1B552F8()
{
  v2 = OUTLINED_FUNCTION_43_5();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_8_16(v3);
  OUTLINED_FUNCTION_34_4(v4);
  *(v1 + 64) = OUTLINED_FUNCTION_32_6(*(v0 + 840), *(v0 + 808), *(v0 + 824));
  *(v1 + 72) = v5;
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B5535C(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_31_4();
    v5 = OUTLINED_FUNCTION_51();
    sub_1B1B5123C(v5, v6);
LABEL_6:

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_15();
  if (v3)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_30_6();
      sub_1B1C2D7F8();
      OUTLINED_FUNCTION_126();
      v7 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_28_3(v7, sel_setObject_forKey_);

      swift_unknownObjectRelease();
    }

    goto LABEL_6;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_126();
    v8 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v8, sel_removeObjectForKey_);
  }

LABEL_7:
  swift_endAccess();

  free(v4);
}

void sub_1B1B55438()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1(v0 + 848, v2);
  v3 = *(v0 + 848);
  v4 = *(v0 + 872);
  v5 = v3;
  OUTLINED_FUNCTION_7_13();

  v6 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v6, v7, v8, v4);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B554A0()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 848, v2);
  v3 = *(v0 + 848);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B55554()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 848);
  v4 = *(v0 + 848);
  *(v1 + 32) = v4;
  v5 = *(v0 + 856);
  *(v1 + 40) = v5;
  v6 = *(v0 + 864);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 872));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B555CC(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B55694()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 880, v2);
  v3 = *(v0 + 880);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B55748()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 880);
  v4 = *(v0 + 880);
  *(v1 + 32) = v4;
  v5 = *(v0 + 888);
  *(v1 + 40) = v5;
  v6 = *(v0 + 896);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 904));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B557C0(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B55888()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 912, v2);
  v3 = *(v0 + 912);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B5593C()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 912);
  v4 = *(v0 + 912);
  *(v1 + 32) = v4;
  v5 = *(v0 + 920);
  *(v1 + 40) = v5;
  v6 = *(v0 + 928);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 936));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B559B4(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B55A7C()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 944, v2);
  v3 = *(v0 + 944);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B55B30()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 944);
  v4 = *(v0 + 944);
  *(v1 + 32) = v4;
  v5 = *(v0 + 952);
  *(v1 + 40) = v5;
  v6 = *(v0 + 960);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 968));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B55BA8(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

void sub_1B1B55C70()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1(v0 + 976, v2);
  v3 = *(v0 + 976);
  v4 = *(v0 + 1000);
  v5 = v3;
  OUTLINED_FUNCTION_7_13();

  v6 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v6, v7, v8, v4);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B55CD8()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 976, v2);
  v3 = *(v0 + 976);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B55D8C()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 976);
  v4 = *(v0 + 976);
  *(v1 + 32) = v4;
  v5 = *(v0 + 984);
  *(v1 + 40) = v5;
  v6 = *(v0 + 992);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 1000));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B55E04(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B55ECC()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 1008, v2);
  v3 = *(v0 + 1008);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B55F80()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 1008);
  v4 = *(v0 + 1008);
  *(v1 + 32) = v4;
  v5 = *(v0 + 1016);
  *(v1 + 40) = v5;
  v6 = *(v0 + 1024);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 1032));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B55FF8(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B560C0()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 1040, v2);
  v3 = *(v0 + 1040);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B56174()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 1040);
  v4 = *(v0 + 1040);
  *(v1 + 32) = v4;
  v5 = *(v0 + 1048);
  *(v1 + 40) = v5;
  v6 = *(v0 + 1056);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 1064));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B561EC(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

void sub_1B1B562B4()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1(v0 + 1072, v2);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1096);
  v5 = v3;
  OUTLINED_FUNCTION_7_13();

  v6 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v6, v7, v8, v4);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B5631C()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 1072, v2);
  v3 = *(v0 + 1072);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B563D0()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 1072);
  v4 = *(v0 + 1072);
  *(v1 + 32) = v4;
  v5 = *(v0 + 1080);
  *(v1 + 40) = v5;
  v6 = *(v0 + 1088);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 1096));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B56448(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B56510()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 1104, v2);
  v3 = *(v0 + 1104);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B565C4()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 1104);
  v4 = *(v0 + 1104);
  *(v1 + 32) = v4;
  v5 = *(v0 + 1112);
  *(v1 + 40) = v5;
  v6 = *(v0 + 1120);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 1128));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B5663C(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B56704()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 1136, v2);
  v3 = *(v0 + 1136);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B567B8()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 1136);
  v4 = *(v0 + 1136);
  *(v1 + 32) = v4;
  v5 = *(v0 + 1144);
  *(v1 + 40) = v5;
  v6 = *(v0 + 1152);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 1160));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B56830(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

_OWORD *sub_1B1B5692C()
{
  v1 = OUTLINED_FUNCTION_65(v0 + 1168, v29);
  v2 = *(v0 + 1184);
  v30[0] = *(v0 + 1168);
  v30[1] = v2;
  v31 = *(v0 + 1200);
  OUTLINED_FUNCTION_6_15(v1, v3, v4, v5, v6, v7, v8, v9, v19, v21, v23, v25, v27, v29[0], v29[1], v29[2]);
  v10 = sub_1B1B509C8();
  OUTLINED_FUNCTION_5_17(v10, v11, v12, v13, v14, v15, v16, v17, v20, v22, v24, v26, v28, v29[0], v29[1], v29[2]);
  return v30;
}

uint64_t sub_1B1B569A0(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  OUTLINED_FUNCTION_0(v2 + 1168, a2);
  v4 = *(v2 + 1168);
  if (v3)
  {
    if (v4)
    {
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v4)
  {
    sub_1B1C2D7F8();
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B56A54(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[11] = v1;
  OUTLINED_FUNCTION_67(v1 + 1168, (v3 + 5));
  v4 = *(v1 + 1168);
  v5 = *(v1 + 1184);
  *(v3 + 32) = *(v1 + 1200);
  *v3 = v4;
  *(v3 + 1) = v5;
  v3[8] = sub_1B1B509C8();
  *(v3 + 72) = v6 & 1;
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B56AE0(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1B1B514E8(v2[8], *(v2 + 72));
    goto LABEL_9;
  }

  v3 = *v2;
  if (v2[9])
  {
    if (!v3)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_51();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v4, sel_removeObjectForKey_);
  }

  else
  {
    if (!v3)
    {
      goto LABEL_9;
    }

    v2[10] = v2[8];
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_51();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_9:
  swift_endAccess();

  free(v2);
}

void sub_1B1B56BBC()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1(v0 + 1208, v2);
  v3 = *(v0 + 1208);
  v4 = *(v0 + 1232);
  v5 = v3;
  OUTLINED_FUNCTION_7_13();

  v6 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v6, v7, v8, v4);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B56C24()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 1208, v2);
  v3 = *(v0 + 1208);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B56CD8()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 1208);
  v4 = *(v0 + 1208);
  *(v1 + 32) = v4;
  v5 = *(v0 + 1216);
  *(v1 + 40) = v5;
  v6 = *(v0 + 1224);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 1232));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B56D50(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B56E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_33_4(a1, a2, a3, a4, a5);
  *&v5 = OUTLINED_FUNCTION_58_4().n128_u64[0];
  OUTLINED_FUNCTION_6_15(v6, v7, v8, v9, v10, v11, v12, v13, v23, v25, v27, v29, v31, v33, v35, v37, v5);
  v14 = sub_1B1AC09EC();
  OUTLINED_FUNCTION_5_17(v14, v15, v16, v17, v18, v19, v20, v21, v24, v26, v28, v30, v32, v34, v36, v38);
  return OUTLINED_FUNCTION_42_1();
}

uint64_t sub_1B1B56E7C()
{
  OUTLINED_FUNCTION_45_5();
  v2 = (v1 + 1240);
  OUTLINED_FUNCTION_26_5(v3, v4, v5);
  if (v0)
  {
    if (!*v2)
    {

      return swift_endAccess();
    }

    OUTLINED_FUNCTION_53_3();
    sub_1B1C2D7F8();
    v6 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_29_4(v6, sel_setObject_forKey_);

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  if (*v2)
  {
    v6 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_38_4(v6, sel_removeObjectForKey_);
LABEL_6:
  }

  return swift_endAccess();
}

uint64_t sub_1B1B56F44()
{
  v2 = OUTLINED_FUNCTION_43_5();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_8_16(v3);
  OUTLINED_FUNCTION_34_4(v4);
  *(v1 + 64) = OUTLINED_FUNCTION_32_6(*(v0 + 1272), *(v0 + 1240), *(v0 + 1256));
  *(v1 + 72) = v5;
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B56FA8(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_31_4();
    v5 = OUTLINED_FUNCTION_51();
    sub_1B1B5123C(v5, v6);
LABEL_6:

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_15();
  if (v3)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_30_6();
      sub_1B1C2D7F8();
      OUTLINED_FUNCTION_126();
      v7 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_28_3(v7, sel_setObject_forKey_);

      swift_unknownObjectRelease();
    }

    goto LABEL_6;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_126();
    v8 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v8, sel_removeObjectForKey_);
  }

LABEL_7:
  swift_endAccess();

  free(v4);
}

uint64_t sub_1B1B57084()
{
  v1 = OUTLINED_FUNCTION_65(v0 + 1280, v29);
  v2 = *(v0 + 1296);
  v30 = *(v0 + 1280);
  v31 = v2;
  v32 = *(v0 + 1312);
  OUTLINED_FUNCTION_6_15(v1, v3, v4, v5, v6, v7, v8, v9, v19, v21, v23, v25, v27, v29[0], v29[1], v29[2]);
  v10 = sub_1B1AC09EC();
  OUTLINED_FUNCTION_5_17(v10, v11, v12, v13, v14, v15, v16, v17, v20, v22, v24, v26, v28, v29[0], v29[1], v29[2]);
  return OUTLINED_FUNCTION_42_1();
}

uint64_t sub_1B1B570F4()
{
  OUTLINED_FUNCTION_45_5();
  v2 = (v1 + 1280);
  OUTLINED_FUNCTION_26_5(v3, v4, v5);
  if (v0)
  {
    if (!*v2)
    {

      return swift_endAccess();
    }

    OUTLINED_FUNCTION_53_3();
    sub_1B1C2D7F8();
    v6 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_29_4(v6, sel_setObject_forKey_);

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  if (*v2)
  {
    v6 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_38_4(v6, sel_removeObjectForKey_);
LABEL_6:
  }

  return swift_endAccess();
}

uint64_t sub_1B1B571BC()
{
  v2 = OUTLINED_FUNCTION_43_5();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_8_16(v3);
  OUTLINED_FUNCTION_67(&v0[80], v1 + 40);
  *(v1 + 64) = OUTLINED_FUNCTION_32_6(v0[82].n128_u64[0], v0[80], v0[81]);
  *(v1 + 72) = v4;
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B57228(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_31_4();
    v5 = OUTLINED_FUNCTION_51();
    sub_1B1B5123C(v5, v6);
LABEL_6:

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_15();
  if (v3)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_30_6();
      sub_1B1C2D7F8();
      OUTLINED_FUNCTION_126();
      v7 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_28_3(v7, sel_setObject_forKey_);

      swift_unknownObjectRelease();
    }

    goto LABEL_6;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_126();
    v8 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v8, sel_removeObjectForKey_);
  }

LABEL_7:
  swift_endAccess();

  free(v4);
}

uint64_t sub_1B1B57304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_33_4(a1, a2, a3, a4, a5);
  *&v5 = OUTLINED_FUNCTION_58_4().n128_u64[0];
  OUTLINED_FUNCTION_6_15(v6, v7, v8, v9, v10, v11, v12, v13, v23, v25, v27, v29, v31, v33, v35, v37, v5);
  v14 = sub_1B1AC09EC();
  OUTLINED_FUNCTION_5_17(v14, v15, v16, v17, v18, v19, v20, v21, v24, v26, v28, v30, v32, v34, v36, v38);
  return OUTLINED_FUNCTION_42_1();
}

uint64_t sub_1B1B57368()
{
  OUTLINED_FUNCTION_45_5();
  v2 = (v1 + 1320);
  OUTLINED_FUNCTION_26_5(v3, v4, v5);
  if (v0)
  {
    if (!*v2)
    {

      return swift_endAccess();
    }

    OUTLINED_FUNCTION_53_3();
    sub_1B1C2D7F8();
    v6 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_29_4(v6, sel_setObject_forKey_);

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  if (*v2)
  {
    v6 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_38_4(v6, sel_removeObjectForKey_);
LABEL_6:
  }

  return swift_endAccess();
}

uint64_t sub_1B1B57430()
{
  v2 = OUTLINED_FUNCTION_43_5();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_8_16(v3);
  OUTLINED_FUNCTION_34_4(v4);
  *(v1 + 64) = OUTLINED_FUNCTION_32_6(*(v0 + 1352), *(v0 + 1320), *(v0 + 1336));
  *(v1 + 72) = v5;
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B57494(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_31_4();
    v5 = OUTLINED_FUNCTION_51();
    sub_1B1B5123C(v5, v6);
LABEL_6:

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_15();
  if (v3)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_30_6();
      sub_1B1C2D7F8();
      OUTLINED_FUNCTION_126();
      v7 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_28_3(v7, sel_setObject_forKey_);

      swift_unknownObjectRelease();
    }

    goto LABEL_6;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_126();
    v8 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v8, sel_removeObjectForKey_);
  }

LABEL_7:
  swift_endAccess();

  free(v4);
}

void sub_1B1B57570()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1(v0 + 1360, v2);
  v3 = *(v0 + 1360);
  v4 = *(v0 + 1384);
  v5 = v3;
  OUTLINED_FUNCTION_7_13();

  v6 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v6, v7, v8, v4);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B575D8()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 1360, v2);
  v3 = *(v0 + 1360);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B5768C()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 1360);
  v4 = *(v0 + 1360);
  *(v1 + 32) = v4;
  v5 = *(v0 + 1368);
  *(v1 + 40) = v5;
  v6 = *(v0 + 1376);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 1384));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B57704(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B577CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1B1B57814()
{
  v1 = OUTLINED_FUNCTION_65(v0 + 1392, v29);
  v2 = *(v0 + 1408);
  v30 = *(v0 + 1392);
  v31 = v2;
  v32 = *(v0 + 1424);
  OUTLINED_FUNCTION_6_15(v1, v3, v4, v5, v6, v7, v8, v9, v19, v21, v23, v25, v27, v29[0], v29[1], v29[2]);
  v10 = sub_1B1AC09EC();
  OUTLINED_FUNCTION_5_17(v10, v11, v12, v13, v14, v15, v16, v17, v20, v22, v24, v26, v28, v29[0], v29[1], v29[2]);
  return OUTLINED_FUNCTION_42_1();
}

uint64_t sub_1B1B57884()
{
  OUTLINED_FUNCTION_45_5();
  v2 = (v1 + 1392);
  OUTLINED_FUNCTION_26_5(v3, v4, v5);
  if (v0)
  {
    if (!*v2)
    {

      return swift_endAccess();
    }

    OUTLINED_FUNCTION_53_3();
    sub_1B1C2D7F8();
    v6 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_29_4(v6, sel_setObject_forKey_);

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  if (*v2)
  {
    v6 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_38_4(v6, sel_removeObjectForKey_);
LABEL_6:
  }

  return swift_endAccess();
}

uint64_t sub_1B1B5794C()
{
  v2 = OUTLINED_FUNCTION_43_5();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_8_16(v3);
  OUTLINED_FUNCTION_67(&v0[87], v1 + 40);
  *(v1 + 64) = OUTLINED_FUNCTION_32_6(v0[89].n128_u64[0], v0[87], v0[88]);
  *(v1 + 72) = v4;
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B579B8(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_31_4();
    v5 = OUTLINED_FUNCTION_51();
    sub_1B1B5123C(v5, v6);
LABEL_6:

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_15();
  if (v3)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_30_6();
      sub_1B1C2D7F8();
      OUTLINED_FUNCTION_126();
      v7 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_28_3(v7, sel_setObject_forKey_);

      swift_unknownObjectRelease();
    }

    goto LABEL_6;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_126();
    v8 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v8, sel_removeObjectForKey_);
  }

LABEL_7:
  swift_endAccess();

  free(v4);
}

void sub_1B1B57A94()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1(v0 + 1432, v2);
  v3 = *(v0 + 1432);
  v4 = *(v0 + 1456);
  v5 = v3;
  OUTLINED_FUNCTION_7_13();

  v6 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v6, v7, v8, v4);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B57AFC()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0(v0 + 1432, v2);
  v3 = *(v0 + 1432);
  if (v1 == 2)
  {
    if (v3)
    {
      v4 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v4, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B57BB0()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15(v0 + 1432);
  v4 = *(v0 + 1432);
  *(v1 + 32) = v4;
  v5 = *(v0 + 1440);
  *(v1 + 40) = v5;
  v6 = *(v0 + 1448);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 1456));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B57C28(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v5);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

void *InternalSettings.deinit()
{
  v1 = v0[2];

  v2 = v0[6];

  v3 = v0[10];

  v4 = v0[14];

  v5 = v0[18];

  v6 = v0[23];

  v7 = v0[27];

  v8 = v0[31];

  v9 = v0[35];

  v10 = v0[39];

  v11 = v0[44];

  v12 = v0[48];

  v13 = v0[52];

  v14 = v0[56];

  v15 = v0[60];

  v16 = v0[64];

  v17 = v0[68];

  v18 = v0[72];

  v19 = v0[76];

  v20 = v0[80];

  v21 = v0[84];

  v22 = v0[88];

  v23 = v0[92];

  v24 = v0[97];

  v25 = v0[101];

  v26 = v0[106];

  v27 = v0[110];

  v28 = v0[114];

  v29 = v0[118];

  v30 = v0[122];

  v31 = v0[126];

  v32 = v0[130];

  v33 = v0[134];

  v34 = v0[138];

  v35 = v0[142];

  v36 = v0[146];

  v37 = v0[151];

  v38 = v0[155];

  v39 = v0[160];

  v40 = v0[165];

  v41 = v0[170];

  v42 = v0[174];

  v43 = v0[179];

  return v0;
}

uint64_t InternalSettings.__deallocating_deinit()
{
  InternalSettings.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 1457, 7);
}

uint64_t keypath_get_83Tm()
{
  OUTLINED_FUNCTION_23_3();
  result = v1();
  *v0 = result;
  *(v0 + 8) = v3 & 1;
  return result;
}

void sub_1B1B59768(uint64_t a1)
{
  sub_1B1B59CC4(319);
  if (v1 <= 0x3F)
  {
    sub_1B1C2D2B8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B1B597F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = *(*(v4 - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = v10 + ((v9 + 24) & ~v9);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 < 2)
    {
LABEL_28:
      v18 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
      if ((v7 & 0x80000000) != 0)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v18 + v9 + 16) & ~v9, v6, v4);
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v19 = *(v18 + 8);
        if (v19 >= 0xFFFFFFFF)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_28;
  }

LABEL_20:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return v8 + (v12 | v17) + 1;
}

void sub_1B1B599B4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = (v12 + 24) & ~v12;
  v14 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v14;
  }

  v15 = v13 + v14;
  v16 = 8 * (v13 + v14);
  v17 = a3 >= v11;
  v18 = a3 - v11;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v19 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v19))
      {
        v6 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v6 = v20;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v11 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_61:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v24 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v10 & 0x80000000) != 0)
          {
            v25 = ((v24 + v12 + 16) & ~v12);
            if (v10 >= a2)
            {
              v29 = a2 + 1;

              __swift_storeEnumTagSinglePayload((v24 + v12 + 16) & ~v12, v29, v9, v7);
            }

            else
            {
              if (v14 <= 3)
              {
                v26 = ~(-1 << (8 * v14));
              }

              else
              {
                v26 = -1;
              }

              if (v14)
              {
                v27 = v26 & (~v10 + a2);
                if (v14 <= 3)
                {
                  v28 = v14;
                }

                else
                {
                  v28 = 4;
                }

                bzero(v25, v14);
                switch(v28)
                {
                  case 2:
                    *v25 = v27;
                    break;
                  case 3:
                    *v25 = v27;
                    v25[2] = BYTE2(v27);
                    break;
                  case 4:
                    *v25 = v27;
                    break;
                  default:
                    *v25 = v27;
                    break;
                }
              }
            }
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *v24 = a2 & 0x7FFFFFFF;
            v24[1] = 0;
          }

          else
          {
            v24[1] = a2 - 1;
          }
        }

        break;
    }
  }

  else
  {
    v21 = ~v11 + a2;
    if (v15 < 4)
    {
      v22 = (v21 >> v16) + 1;
      if (v15)
      {
        v23 = v21 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v15 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v21;
      v22 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v15] = v22;
        break;
      case 2:
        *&a1[v15] = v22;
        break;
      case 3:
        goto LABEL_61;
      case 4:
        *&a1[v15] = v22;
        break;
      default:
        return;
    }
  }
}

void sub_1B1B59CC4(uint64_t a1)
{
  if (!qword_1EB761038)
  {
    sub_1B1B59D1C();
    v1 = sub_1B1C2D2B8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB761038);
    }
  }
}

unint64_t sub_1B1B59D1C()
{
  result = qword_1EB761040;
  if (!qword_1EB761040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB761040);
  }

  return result;
}

void sub_1B1B59D60(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_7_14();
  if (!v2)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = v2;
  v4 = [v2 sampleRate];

  if (!v4)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v4 doubleValue];
  v6 = v5;

  v7 = OUTLINED_FUNCTION_7_14();
  if (!v7)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = v7;
  v9 = [v7 formatID];

  if (!v9)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = [v9 unsignedIntValue];

  v11 = OUTLINED_FUNCTION_7_14();
  if (!v11)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v12 = v11;
  v13 = [v11 formatFlags];

  if (!v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = [v13 unsignedIntValue];

  v15 = OUTLINED_FUNCTION_7_14();
  if (!v15)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = v15;
  v17 = [v15 bytesPerPacket];

  if (!v17)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = [v17 unsignedIntValue];

  v19 = OUTLINED_FUNCTION_7_14();
  if (!v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v19;
  v21 = [v19 framesPerPacket];

  if (!v21)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v37 = v18;
  v22 = [v21 unsignedIntValue];

  v23 = OUTLINED_FUNCTION_7_14();
  if (!v23)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v24 = v23;
  v25 = v14;
  v26 = [v23 bytesPerFrame];

  if (!v26)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v27 = v10;
  v28 = [v26 unsignedIntValue];

  v29 = OUTLINED_FUNCTION_7_14();
  if (!v29)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v30 = v29;
  v31 = [v29 channelsPerFrame];

  if (!v31)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v32 = [v31 unsignedIntValue];

  v33 = OUTLINED_FUNCTION_7_14();
  if (!v33)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v34 = v33;
  v35 = [v33 bitsPerChannel];

  if (v35)
  {
    v36 = [v35 unsignedIntValue];

    *a1 = v6;
    *(a1 + 8) = v27;
    *(a1 + 12) = v25;
    *(a1 + 16) = v37;
    *(a1 + 20) = v22;
    *(a1 + 24) = v28;
    *(a1 + 28) = v32;
    *(a1 + 32) = v36;
    *(a1 + 36) = 0;
    return;
  }

LABEL_33:
  __break(1u);
}

unint64_t sub_1B1B5A060()
{
  v1 = v0;
  v2 = [v0 speechSynthesisVoice];
  if (v2)
  {
    sub_1B1AEA2D8(v2, &selRef_languageCode);
    if (v3)
    {
      v44 = sub_1B1A8EDAC();
      v45 = v44;
      v42 = MEMORY[0x1E69E6158];
      v43 = v44;
      OUTLINED_FUNCTION_11_0();
      sub_1B1C2D398();
    }
  }

  v4 = [v0 speechSynthesisVoice];
  if (!v4 || (sub_1B1AEA2D8(v4, &selRef_name), !v5))
  {
  }

  v6 = objc_allocWithZone(type metadata accessor for SynthesisVoice());
  v7 = SynthesisVoice.init(language:name:)();
  v8 = sub_1B1B5A4B8(v0);
  v9 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  *&v7[v9] = v8;
  v10 = sub_1B1B5A60C(v1);
  v11 = OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0];
  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  *&v7[v11] = v10;
  v12 = sub_1B1B5A760(v1);
  v13 = OBJC_IVAR___SiriTTSSynthesisVoice_gender;
  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  *&v7[v13] = v12;
  v14 = [v1 speechSynthesisVoice];
  if (v14 && (result = sub_1B1AEA2D8(v14, &selRef_contentVersion), v16))
  {
    v17 = v16;
  }

  else
  {

    result = 0;
    v17 = 0xE000000000000000;
  }

  v18 = HIBYTE(v17) & 0xF;
  v19 = result & 0xFFFFFFFFFFFFLL;
  if ((v17 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v17) & 0xF;
  }

  else
  {
    v20 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    goto LABEL_83;
  }

  if ((v17 & 0x1000000000000000) != 0)
  {
    sub_1B1B2EFF0(result, v17, 10);
    v22 = v40;
    v38 = v41;
LABEL_82:

    if ((v38 & 1) == 0)
    {
LABEL_84:
      v39 = OBJC_IVAR___SiriTTSSynthesisVoice_version;
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      *(v39 + v7) = v22;
      return v7;
    }

LABEL_83:
    v22 = 0;
    goto LABEL_84;
  }

  if ((v17 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v17 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1B1C2D578();
    }

    v21 = *result;
    if (v21 == 43)
    {
      if (v19 >= 1)
      {
        if (v19 != 1)
        {
          v22 = 0;
          if (result)
          {
            OUTLINED_FUNCTION_72_1();
            while (1)
            {
              OUTLINED_FUNCTION_6_0();
              if (!v24 & v23)
              {
                goto LABEL_80;
              }

              OUTLINED_FUNCTION_2_23();
              if (!v24)
              {
                goto LABEL_80;
              }

              v22 = v31 + v30;
              if (__OFADD__(v31, v30))
              {
                goto LABEL_80;
              }

              OUTLINED_FUNCTION_16_2();
              if (v24)
              {
                goto LABEL_81;
              }
            }
          }

          goto LABEL_71;
        }

        goto LABEL_80;
      }

      goto LABEL_90;
    }

    if (v21 != 45)
    {
      if (v19)
      {
        v22 = 0;
        if (result)
        {
          while (1)
          {
            v34 = *result - 48;
            if (v34 > 9)
            {
              goto LABEL_80;
            }

            v35 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_80;
            }

            v22 = v35 + v34;
            if (__OFADD__(v35, v34))
            {
              goto LABEL_80;
            }

            ++result;
            if (!--v19)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_71;
      }

LABEL_80:
      v22 = 0;
      v27 = 1;
      goto LABEL_81;
    }

    if (v19 >= 1)
    {
      if (v19 != 1)
      {
        v22 = 0;
        if (result)
        {
          OUTLINED_FUNCTION_72_1();
          while (1)
          {
            OUTLINED_FUNCTION_6_0();
            if (!v24 & v23)
            {
              goto LABEL_80;
            }

            OUTLINED_FUNCTION_2_23();
            if (!v24)
            {
              goto LABEL_80;
            }

            v22 = v26 - v25;
            if (__OFSUB__(v26, v25))
            {
              goto LABEL_80;
            }

            OUTLINED_FUNCTION_16_2();
            if (v24)
            {
              goto LABEL_81;
            }
          }
        }

LABEL_71:
        v27 = 0;
LABEL_81:
        v38 = v27;
        goto LABEL_82;
      }

      goto LABEL_80;
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (result != 43)
  {
    if (result != 45)
    {
      if (v18)
      {
        while (1)
        {
          OUTLINED_FUNCTION_6_0();
          if (!v24 & v23)
          {
            break;
          }

          OUTLINED_FUNCTION_2_23();
          if (!v24)
          {
            break;
          }

          v22 = v37 + v36;
          if (__OFADD__(v37, v36))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
          if (v24)
          {
            goto LABEL_81;
          }
        }
      }

      goto LABEL_80;
    }

    if (v18)
    {
      if (v18 != 1)
      {
        OUTLINED_FUNCTION_14_12();
        while (1)
        {
          OUTLINED_FUNCTION_6_0();
          if (!v24 & v23)
          {
            break;
          }

          OUTLINED_FUNCTION_2_23();
          if (!v24)
          {
            break;
          }

          v22 = v29 - v28;
          if (__OFSUB__(v29, v28))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
          if (v24)
          {
            goto LABEL_81;
          }
        }
      }

      goto LABEL_80;
    }

    goto LABEL_89;
  }

  if (v18)
  {
    if (v18 != 1)
    {
      OUTLINED_FUNCTION_14_12();
      while (1)
      {
        OUTLINED_FUNCTION_6_0();
        if (!v24 & v23)
        {
          break;
        }

        OUTLINED_FUNCTION_2_23();
        if (!v24)
        {
          break;
        }

        v22 = v33 + v32;
        if (__OFADD__(v33, v32))
        {
          break;
        }

        OUTLINED_FUNCTION_16_2();
        if (v24)
        {
          goto LABEL_81;
        }
      }
    }

    goto LABEL_80;
  }

LABEL_91:
  __break(1u);
  return result;
}

uint64_t sub_1B1B5A4B8(void *a1)
{
  v1 = [a1 speechSynthesisVoice];
  if (!v1)
  {
    return 0;
  }

  sub_1B1AEA2D8(v1, &selRef_type);
  if (!v2)
  {
    return 0;
  }

  v3 = sub_1B1C2CBE8();
  v5 = v4;

  v6 = v3 == 0x6E6F6870797267 && v5 == 0xE700000000000000;
  if (v6 || (sub_1B1C2D7A8() & 1) != 0)
  {

    return 3;
  }

  v8 = v3 == 0x6C617275656ELL && v5 == 0xE600000000000000;
  if (v8 || (sub_1B1C2D7A8() & 1) != 0)
  {

    return 4;
  }

  if (v3 == 0x657A696C61636F76 && v5 == 0xE900000000000072)
  {
  }

  else
  {
    v10 = sub_1B1C2D7A8();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1B1B5A60C(void *a1)
{
  v1 = [a1 speechSynthesisVoice];
  if (!v1)
  {
    return 0;
  }

  sub_1B1AEA2D8(v1, &selRef_quality);
  if (!v2)
  {
    return 0;
  }

  v3 = sub_1B1C2CBE8();
  v5 = v4;

  v6 = v3 == 0x746361706D6F63 && v5 == 0xE700000000000000;
  if (v6 || (sub_1B1C2D7A8() & 1) != 0)
  {

    return 1;
  }

  v8 = v3 == 0x6D75696D657270 && v5 == 0xE700000000000000;
  if (v8 || (sub_1B1C2D7A8() & 1) != 0)
  {

    return 2;
  }

  if (v3 == 0x686D75696D657270 && v5 == 0xEB00000000686769)
  {
  }

  else
  {
    v10 = sub_1B1C2D7A8();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  return 3;
}

uint64_t sub_1B1B5A760(void *a1)
{
  v1 = [a1 speechSynthesisVoice];
  if (!v1)
  {
    return 0;
  }

  sub_1B1AEA2D8(v1, &selRef_gender);
  if (!v2)
  {
    return 0;
  }

  v3 = sub_1B1C2CBE8();
  v5 = v4;

  v6 = v3 == 1701601645 && v5 == 0xE400000000000000;
  if (v6 || (sub_1B1C2D7A8() & 1) != 0)
  {

    return 1;
  }

  v8 = v3 == 0x656C616D6566 && v5 == 0xE600000000000000;
  if (v8 || (sub_1B1C2D7A8() & 1) != 0)
  {

    return 2;
  }

  if (v3 == 0x6C61727475656ELL && v5 == 0xE700000000000000)
  {
  }

  else
  {
    v10 = sub_1B1C2D7A8();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  return 3;
}

unint64_t sub_1B1B5A8A8()
{
  v1 = v0;
  v2 = [v0 speechSynthesisResource];
  if (v2 && (v3 = sub_1B1AEA2D8(v2, &selRef_languageCode), v4))
  {
    v5 = v3;
    v6 = v4;
  }

  else
  {

    v6 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  v7 = [v1 speechSynthesisResource];
  if (v7 && (result = sub_1B1AEA2D8(v7, &selRef_resourceVersion), v9))
  {
    v10 = v9;
  }

  else
  {

    result = 0;
    v10 = 0xE000000000000000;
  }

  v11 = HIBYTE(v10) & 0xF;
  v12 = result & 0xFFFFFFFFFFFFLL;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v13 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    goto LABEL_81;
  }

  if ((v10 & 0x1000000000000000) != 0)
  {
    sub_1B1B2EFF0(result, v10, 10);
    v15 = v35;
    v31 = v36;
LABEL_80:

    if ((v31 & 1) == 0)
    {
LABEL_82:
      v32 = objc_allocWithZone(type metadata accessor for SynthesisResource());
      v33 = SynthesisResource.init(language:)(v5, v6);
      v34 = OBJC_IVAR___SiriTTSSynthesisResource_version;
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      *&v33[v34] = v15;
      return v33;
    }

LABEL_81:
    v15 = 0;
    goto LABEL_82;
  }

  if ((v10 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v10 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1B1C2D578();
    }

    v14 = *result;
    if (v14 == 43)
    {
      if (v12 >= 1)
      {
        if (v12 != 1)
        {
          v15 = 0;
          if (result)
          {
            OUTLINED_FUNCTION_72_1();
            while (1)
            {
              OUTLINED_FUNCTION_6_0();
              if (!v17 & v16)
              {
                goto LABEL_78;
              }

              OUTLINED_FUNCTION_1_22();
              if (!v17)
              {
                goto LABEL_78;
              }

              v15 = v24 + v23;
              if (__OFADD__(v24, v23))
              {
                goto LABEL_78;
              }

              OUTLINED_FUNCTION_16_2();
              if (v17)
              {
                goto LABEL_79;
              }
            }
          }

          goto LABEL_69;
        }

        goto LABEL_78;
      }

      goto LABEL_88;
    }

    if (v14 != 45)
    {
      if (v12)
      {
        v15 = 0;
        if (result)
        {
          while (1)
          {
            v27 = *result - 48;
            if (v27 > 9)
            {
              goto LABEL_78;
            }

            v28 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              goto LABEL_78;
            }

            v15 = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              goto LABEL_78;
            }

            ++result;
            if (!--v12)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_69;
      }

LABEL_78:
      v15 = 0;
      v20 = 1;
      goto LABEL_79;
    }

    if (v12 >= 1)
    {
      if (v12 != 1)
      {
        v15 = 0;
        if (result)
        {
          OUTLINED_FUNCTION_72_1();
          while (1)
          {
            OUTLINED_FUNCTION_6_0();
            if (!v17 & v16)
            {
              goto LABEL_78;
            }

            OUTLINED_FUNCTION_1_22();
            if (!v17)
            {
              goto LABEL_78;
            }

            v15 = v19 - v18;
            if (__OFSUB__(v19, v18))
            {
              goto LABEL_78;
            }

            OUTLINED_FUNCTION_16_2();
            if (v17)
            {
              goto LABEL_79;
            }
          }
        }

LABEL_69:
        v20 = 0;
LABEL_79:
        v31 = v20;
        goto LABEL_80;
      }

      goto LABEL_78;
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if (result != 43)
  {
    if (result != 45)
    {
      if (v11)
      {
        while (1)
        {
          OUTLINED_FUNCTION_6_0();
          if (!v17 & v16)
          {
            break;
          }

          OUTLINED_FUNCTION_1_22();
          if (!v17)
          {
            break;
          }

          v15 = v30 + v29;
          if (__OFADD__(v30, v29))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
          if (v17)
          {
            goto LABEL_79;
          }
        }
      }

      goto LABEL_78;
    }

    if (v11)
    {
      if (v11 != 1)
      {
        OUTLINED_FUNCTION_9_16();
        while (1)
        {
          OUTLINED_FUNCTION_6_0();
          if (!v17 & v16)
          {
            break;
          }

          OUTLINED_FUNCTION_1_22();
          if (!v17)
          {
            break;
          }

          v15 = v22 - v21;
          if (__OFSUB__(v22, v21))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
          if (v17)
          {
            goto LABEL_79;
          }
        }
      }

      goto LABEL_78;
    }

    goto LABEL_87;
  }

  if (v11)
  {
    if (v11 != 1)
    {
      OUTLINED_FUNCTION_9_16();
      while (1)
      {
        OUTLINED_FUNCTION_6_0();
        if (!v17 & v16)
        {
          break;
        }

        OUTLINED_FUNCTION_1_22();
        if (!v17)
        {
          break;
        }

        v15 = v26 + v25;
        if (__OFADD__(v26, v25))
        {
          break;
        }

        OUTLINED_FUNCTION_16_2();
        if (v17)
        {
          goto LABEL_79;
        }
      }
    }

    goto LABEL_78;
  }

LABEL_89:
  __break(1u);
  return result;
}

char *sub_1B1B5ABE0(uint64_t a1)
{
  v4 = *(a1 + 8);
  if (v4 == 1819304813)
  {
    v4 = [objc_allocWithZone(type metadata accessor for AudioData()) init];
    v9 = v4 + OBJC_IVAR___SiriTTSAudioData_asbd;
    OUTLINED_FUNCTION_15_0();
    swift_beginAccess();
    v10 = *(a1 + 16);
    *v9 = *a1;
    *(v9 + 16) = v10;
    *(v9 + 32) = *(a1 + 32);
    result = sub_1B1B5CC54(v1);
    if (v11 >> 60 == 15)
    {
      goto LABEL_11;
    }

    v12 = result;
    v13 = v11;
    v14 = (v4 + OBJC_IVAR___SiriTTSAudioData_audioData);
    OUTLINED_FUNCTION_15_0();
    swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    *v14 = v12;
    v14[1] = v13;
    sub_1B1A94524(v15, v16);
    return v4;
  }

  if (v4 != 1869641075)
  {
    sub_1B1C2D538();
    MEMORY[0x1B27381B0](0xD000000000000041, 0x80000001B1C4EA90);
    v17 = sub_1B1C2D778();
    MEMORY[0x1B27381B0](v17);

    v18 = sub_1B1A9EC9C();
    v19 = OUTLINED_FUNCTION_34(&type metadata for TTSError, v18);
    OUTLINED_FUNCTION_59(v19, v20);
    *(v21 + 8) = 0;
    *(v21 + 16) = 0xE000000000000000;
    swift_willThrow();
    return v4;
  }

  result = sub_1B1B5CC54(v1);
  if (v6 >> 60 != 15)
  {
    v7 = result;
    v4 = v6;
    type metadata accessor for AudioData();
    v8 = AudioData.__allocating_init(serverOpusBytes:asbd:)(v7, v4, a1);
    if (!v2)
    {
      return v8;
    }

    return v4;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1B1B5ADD0()
{
  v1 = [v0 audioInfo];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_1B1B5CCB8(v1);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v4 = v2;
  v12 = MEMORY[0x1E69E7CC0];
  result = sub_1B1A9547C();
  if (!result)
  {
LABEL_14:

    return v3;
  }

  v6 = result;
  if (result >= 1)
  {
    v7 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1B2738A20](v7, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      [v8 timestamp];
      [v9 offset];
      [v9 length];
      v10 = objc_allocWithZone(type metadata accessor for WordTimingInfo());
      v11 = WordTimingInfo.init(startTiming:textRange:)();
      MEMORY[0x1B2738320]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B1C2CE98();
      }

      ++v7;
      sub_1B1C2CEC8();
    }

    while (v6 != v7);
    v3 = v12;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B5AFB0(uint64_t a1)
{
  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t (*sub_1B1B5AFF4())(uint64_t a1)
{
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_1B1B5B040()
{
  v1 = 1.0;
  if (*(v0 + 64))
  {
    sub_1B1B53CC0();
    if ((v2 & 0x100000000) == 0)
    {
      v3 = *&v2;
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v4 = v3;
      v5 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v5, qword_1ED9A9120);
      v6 = sub_1B1C2C888();
      v7 = sub_1B1C2D098();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 134217984;
        v1 = v4;
        *(v8 + 4) = v1;
        _os_log_impl(&dword_1B1A8A000, v6, v7, "Internal setting specifies timeout: %f", v8, 0xCu);
        MEMORY[0x1B2739FD0](v8, -1, -1);
      }

      else
      {

        return v4;
      }
    }
  }

  return v1;
}

uint64_t InlineStreamingAction.init(pool:)(uint64_t a1)
{
  type metadata accessor for AsynchronousContext();
  swift_allocObject();
  *(v1 + 32) = sub_1B1ADA774();
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 56) = MEMORY[0x1E69E7CC0];
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0;
  *(v1 + 112) = 1;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = v2;
  *(v1 + 40) = sub_1B1B191C4();
  *(v1 + 48) = sub_1B1AA1E5C();
  *(v1 + 64) = sub_1B1AA1C5C();
  type metadata accessor for Timeout(0);
  swift_allocObject();
  *(v1 + 160) = sub_1B1BC78CC();
  v3 = _s14SiriTTSService17PassThroughActionCACycfc_0();

  return v3;
}

uint64_t sub_1B1B5B2E0()
{
}

id *InlineStreamingAction.deinit()
{
  sub_1B1ADA1CC();
  v0 = Buffer.deinit();

  return v0;
}

uint64_t InlineStreamingAction.__deallocating_deinit()
{
  v0 = InlineStreamingAction.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 168, 7);
}

void sub_1B1B5B3EC()
{
  v1 = v0;
  v2 = sub_1B1C2C428();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1AA61C0(0x74736575716572, &v33);
  if (!v34)
  {
    sub_1B1A90C78(&v33, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762318, &qword_1B1C38FA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v23 = sub_1B1A9EC9C();
    v24 = OUTLINED_FUNCTION_34(&type metadata for TTSError, v23);
    OUTLINED_FUNCTION_59(v24, v25);
    *(v26 + 8) = 0xD00000000000002ALL;
    *(v26 + 16) = 0x80000001B1C4E880;
    swift_willThrow();
    return;
  }

  v32[0] = v3;
  v6 = v35;
  v7 = v0[16];
  v1[16] = v35;
  v8 = v6;

  v9 = v1[5];
  swift_getObjectType();
  v10 = SynthesizingRequestProtocol.text.getter();
  v12 = v11;
  v13 = *(v9 + 40);

  v32[1] = v9;
  v14 = sub_1B1B20E18(v13, v9, v10, v12);

  if (v14)
  {
    v15 = v1[15];
    v1[15] = v14;
    v16 = v14;

    sub_1B1B3456C();
    v17 = v1[6];
    v18 = v32[0];
    if (v17)
    {
      if (qword_1ED9A4DF8 != -1)
      {
        swift_once();
      }

      sub_1B1AEAD14();
      if (qword_1ED9A4DE0 != -1)
      {
        swift_once();
      }

      [v17 postNotificationName:qword_1ED9A4DE8 object:0];
    }

    v19 = v1[20];
    sub_1B1B5B040();
    sub_1B1C2C3A8();
    v20 = OBJC_IVAR____TtC14SiriTTSService7Timeout_timeoutDate;
    OUTLINED_FUNCTION_15_1();
    swift_beginAccess();
    (*(v18 + 40))(v19 + v20, v5, v2);
    swift_endAccess();
    if (qword_1ED9A4D38 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_17();
    swift_allocObject();
    swift_weakInit();

    sub_1B1B34568();

    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    *(v21 + 24) = v16;
    v22 = v16;

    sub_1B1BC7124(sub_1B1B5CB30, v21);

    sub_1B1B21958(v22, sub_1B1B5CB38, v1);
  }

  else
  {
    *&v33 = 0;
    *(&v33 + 1) = 0xE000000000000000;
    sub_1B1C2D538();
    MEMORY[0x1B27381B0](0xD000000000000038, 0x80000001B1C4E8B0);
    v35 = v8;
    swift_getWitnessTable();
    sub_1B1C2D788();
    v27 = v33;
    v28 = sub_1B1A9EC9C();
    v29 = OUTLINED_FUNCTION_34(&type metadata for TTSError, v28);
    OUTLINED_FUNCTION_59(v29, v30);
    *(v31 + 8) = v27;
    swift_willThrow();
  }
}

uint64_t sub_1B1B5B8BC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1B1BC7598();
  }

  return result;
}

void sub_1B1B5B928(char a1, uint64_t a2)
{
  v4 = sub_1B1B70FE4();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v7 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v7, qword_1ED9A9120);
    v8 = v5;
    v9 = sub_1B1C2C888();
    v10 = sub_1B1C2D0B8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = v5;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_1B1A8A000, v9, v10, "Encountered internal inline streaming error: %@", v11, 0xCu);
      sub_1B1A90C78(v12, &qword_1EB7625C0, &qword_1B1C37990);
      MEMORY[0x1B2739FD0](v12, -1, -1);
      MEMORY[0x1B2739FD0](v11, -1, -1);
    }

    else
    {
    }
  }

  v15 = 0xD00000000000001ALL;
  if (*(a2 + 136) > 0.0)
  {
    v16 = "Inline streaming timed out";
    v15 = 0xD00000000000001ELL;
    v17 = 21;
    if (v5)
    {
      goto LABEL_12;
    }

LABEL_11:
    if (a1)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v16 = "ing audio format ";
  v17 = 22;
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_12:
  v18 = v16 | 0x8000000000000000;
  sub_1B1A9EC9C();
  swift_allocError();
  *v19 = v17;
  *(v19 + 8) = v15;
  *(v19 + 16) = v18;
  sub_1B1BD2F28();
LABEL_13:
  sub_1B1B22120();
  sub_1B1B21004();
  sub_1B1B3456C();
}