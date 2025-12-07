uint64_t sub_1AC713540(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FullPayloadCorrector.correctPostITNOutput(_:withOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AC7135CC, 0, 0);
}

uint64_t sub_1AC7135CC()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1AC713670;

  return sub_1AC713910();
}

uint64_t sub_1AC713670(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  OUTLINED_FUNCTION_50();
  v11 = *v4;

  v9 = *(v11 + 8);

  return v9(a1, a2, a3 & 1, a4);
}

uint64_t FullPayloadCorrector.deinit()
{
  v1 = OBJC_IVAR____TtC6Speech20FullPayloadCorrector_locale;
  v2 = sub_1AC79FB18();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t FullPayloadCorrector.__deallocating_deinit()
{
  FullPayloadCorrector.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1AC71386C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  *(v3 + OBJC_IVAR____TtC6SpeechP33_62876FE84B3142C220F84970CC8D7F0025FullPayloadCorrectorActor__fullPayloadCorrectorService) = 0;
  v7 = OBJC_IVAR____TtC6SpeechP33_62876FE84B3142C220F84970CC8D7F0025FullPayloadCorrectorActor_locale;
  v8 = sub_1AC79FB18();
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  v9 = (v3 + OBJC_IVAR____TtC6SpeechP33_62876FE84B3142C220F84970CC8D7F0025FullPayloadCorrectorActor_clientID);
  *v9 = a2;
  v9[1] = a3;
  return v3;
}

uint64_t sub_1AC713910()
{
  OUTLINED_FUNCTION_85();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = swift_task_alloc();
  v1[6] = v5;
  *v5 = v1;
  v5[1] = sub_1AC7139A0;

  return sub_1AC713EBC();
}

uint64_t sub_1AC7139A0()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 56) = v6;

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7(v0, 0, 1, 0);
  }

  else
  {
    v9 = *(v3 + 40);

    return MEMORY[0x1EEE6DFA0](sub_1AC713AE8, v9, 0);
  }
}

uint64_t sub_1AC713AE8()
{
  OUTLINED_FUNCTION_72();

  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1AC713BAC;
  v2 = v0[7];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return sub_1AC6E7B14(v2, v5, v3, v4);
}

uint64_t sub_1AC713BAC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  *v4 = *v1;
  v3[9] = v5;
  v3[10] = v0;

  if (v0)
  {
    v6 = v3[5];
    v7 = sub_1AC713E50;
  }

  else
  {
    v8 = v3[5];

    v7 = sub_1AC713CC4;
    v6 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

id sub_1AC713CC4()
{
  v1 = [*(v0 + 72) error];
  v2 = v1;
  v3 = *(v0 + 72);
  if (!v1)
  {
    v5 = sub_1AC714808(*(v0 + 72));
    v6 = v9;
    v10 = [v3 loggingInfo];
    v11 = *(v0 + 72);
    if (v10)
    {
      v12 = v10;
      v8 = sub_1AC79FE28();

      goto LABEL_10;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  result = [v3 error];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [*(v0 + 72) loggingInfo];
  v7 = *(v0 + 72);
  if (!v6)
  {

    goto LABEL_9;
  }

  v8 = sub_1AC79FE28();

  v6 = 0;
LABEL_10:
  v13 = *(v0 + 8);

  return v13(v5, v6, v2 != 0, v8);
}

uint64_t sub_1AC713E50()
{
  OUTLINED_FUNCTION_85();

  v1 = *(v0 + 80);
  v2 = *(v0 + 8);

  return v2(v1, 0, 1, 0);
}

uint64_t sub_1AC713EDC()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC6SpeechP33_62876FE84B3142C220F84970CC8D7F0025FullPayloadCorrectorActor__fullPayloadCorrectorService;
  v0[3] = OBJC_IVAR____TtC6SpeechP33_62876FE84B3142C220F84970CC8D7F0025FullPayloadCorrectorActor__fullPayloadCorrectorService;
  if (*(v1 + v2))
  {
    v6 = v0[1];

    return v6(v3);
  }

  else
  {
    if (qword_1ED938050 != -1)
    {
      swift_once();
    }

    v5 = swift_task_alloc();
    v0[4] = v5;
    *v5 = v0;
    v5[1] = sub_1AC71403C;

    return sub_1AC63C294();
  }
}

uint64_t sub_1AC71403C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 40) = v6;

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = *(v3 + 16);

    return MEMORY[0x1EEE6DFA0](sub_1AC714174, v9, 0);
  }
}

uint64_t sub_1AC714174()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D9C0, &qword_1AC7B1170);
  v4 = swift_allocObject();
  v0[6] = v4;
  *(v4 + 16) = v1;
  *(v3 + v2) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1AC714238, 0, 0);
}

uint64_t sub_1AC714238()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1AC7142C8;

  return sub_1AC754E28();
}

uint64_t sub_1AC7142C8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = v1;
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  *(v2 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_1AC7143D4;
  }

  else
  {
    v5 = sub_1AC71443C;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1AC7143D4()
{
  OUTLINED_FUNCTION_85();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AC71443C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1AC7144A4, v1, 0);
}

uint64_t sub_1AC7144A4()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[2];
  v2 = v0[3];

  result = *(v1 + v2);
  if (result)
  {
    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC714528()
{
  v1 = OBJC_IVAR____TtC6SpeechP33_62876FE84B3142C220F84970CC8D7F0025FullPayloadCorrectorActor_locale;
  v2 = sub_1AC79FB18();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1AC7145B4()
{
  v0 = sub_1AC714528();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1AC7145DC()
{
  result = qword_1EB56B458;
  if (!qword_1EB56B458)
  {
    sub_1AC79FB18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B458);
  }

  return result;
}

uint64_t sub_1AC71467C(uint64_t a1)
{
  result = sub_1AC79FB18();
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

uint64_t sub_1AC714758(uint64_t a1)
{
  result = sub_1AC79FB18();
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

uint64_t sub_1AC714808(void *a1)
{
  v1 = [a1 result];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1AC79FF68();

  return v3;
}

uint64_t sub_1AC71486C(uint64_t a1)
{
  v33 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  v29 = v6 - v5;
  v7 = *(a1 + 16);
  if (!v7)
  {
    return OUTLINED_FUNCTION_39_9();
  }

  v36 = MEMORY[0x1E69E7CC0];
  sub_1AC63110C(0, v7, 0);
  result = sub_1AC6C2CA0();
  v11 = result;
  v12 = 0;
  v13 = a1 + 56;
  v32 = v3;
  v28 = a1 + 64;
  v14 = v29;
  v30 = v7;
  v31 = a1 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_25;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_26;
      }

      v35 = v10;
      v34 = v9;
      v16 = a1;

      sub_1AC79F968();
      v17 = v14;
      v19 = *(v36 + 16);
      v18 = *(v36 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1AC63110C(v18 > 1, v19 + 1, 1);
      }

      *(v36 + 16) = v19 + 1;
      result = (*(v32 + 32))(v36 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v19, v17, v33);
      if (v35)
      {
        goto LABEL_30;
      }

      v20 = 1 << *(v16 + 32);
      if (v11 >= v20)
      {
        goto LABEL_27;
      }

      v14 = v17;
      a1 = v16;
      v13 = v31;
      v21 = *(v31 + 8 * v15);
      if ((v21 & (1 << v11)) == 0)
      {
        goto LABEL_28;
      }

      if (*(a1 + 36) != v34)
      {
        goto LABEL_29;
      }

      v22 = v21 & (-2 << (v11 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v15 << 6;
        v24 = v15 + 1;
        v25 = (v28 + 8 * v15);
        while (v24 < (v20 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_1AC637E98(v11, v34, 0);
            v20 = __clz(__rbit64(v26)) + v23;
            goto LABEL_19;
          }
        }

        result = sub_1AC637E98(v11, v34, 0);
LABEL_19:
        v14 = v29;
      }

      if (++v12 == v30)
      {
        return OUTLINED_FUNCTION_39_9();
      }

      v10 = 0;
      v9 = *(a1 + 36);
      v11 = v20;
      if (v20 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_25:
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
  __break(1u);
  return result;
}

uint64_t sub_1AC714B6C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v36 = a2;
  v38 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v32 = v8 - v9;
  result = MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v14 = 0;
  v37 = *(a3 + 16);
  v34 = v6 + 16;
  v15 = (v6 + 8);
  v31 = (v6 + 32);
  v33 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v37 == v14)
    {

      return OUTLINED_FUNCTION_39_9();
    }

    if (v14 >= *(a3 + 16))
    {
      break;
    }

    v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v17 = *(v6 + 72);
    v18 = a3;
    (*(v6 + 16))(v13, a3 + v16 + v17 * v14, v38);
    v19 = v35(v13);
    if (v3)
    {
      (*v15)(v13, v38);

      return OUTLINED_FUNCTION_39_9();
    }

    if (v19)
    {
      v30 = *v31;
      v30(v32, v13, v38);
      v20 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v20;
      if (isUniquelyReferenced_nonNull_native)
      {
        v22 = v20;
      }

      else
      {
        v23 = OUTLINED_FUNCTION_37_12();
        sub_1AC63110C(v23, v24, v25);
        v22 = v39;
      }

      a3 = v18;
      v27 = *(v22 + 16);
      v26 = *(v22 + 24);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v33 = v27 + 1;
        v29 = v27;
        sub_1AC63110C(v26 > 1, v27 + 1, 1);
        v28 = v33;
        v27 = v29;
        a3 = v18;
        v22 = v39;
      }

      ++v14;
      *(v22 + 16) = v28;
      v33 = v22;
      result = (v30)(v22 + v16 + v27 * v17, v32, v38);
    }

    else
    {
      result = (*v15)(v13, v38);
      ++v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1AC714E0C(uint64_t (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  v9 = MEMORY[0x1E69E7CC0];
  v17 = result;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_14;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    sub_1AC68A30C(v8, v19);
    v10 = v5(v19);
    if (v3)
    {
      __swift_destroy_boxed_opaque_existential_0(v19);

LABEL_14:

      return v9;
    }

    if (v10)
    {
      sub_1AC5D9384(v19, v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = OUTLINED_FUNCTION_37_12();
        sub_1AC631620(v12, v13, v14);
        v9 = v20;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1AC631620((v15 > 1), v16 + 1, 1);
        v9 = v20;
      }

      *(v9 + 16) = v16 + 1;
      result = sub_1AC5D9384(v18, v9 + 40 * v16 + 32);
      v5 = v17;
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_0(v19);
    }

    v8 += 40;
    ++v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC714F68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_1AC79FF68();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2(v3, v5);
}

Speech::PhoneticEmbedder::InputFormat_optional __swiftcall PhoneticEmbedder.InputFormat.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t PhoneticEmbedder.__allocating_init(locale:clientID:inputFormat:loadingOption:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, unsigned __int8 *a5)
{
  v10 = swift_allocObject();
  PhoneticEmbedder.init(locale:clientID:inputFormat:loadingOption:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t PhoneticEmbedder.init(locale:clientID:inputFormat:loadingOption:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, unsigned __int8 *a5)
{
  v6 = v5;
  v59 = a2;
  v60 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
  v11 = OUTLINED_FUNCTION_167(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - v12;
  v14 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v18 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v57 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v57 - v26;
  v28 = *a4;
  v29 = *a5;
  *(v6 + OBJC_IVAR____TtC6Speech16PhoneticEmbedder__syncClient) = 0;
  *(v6 + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_embeddingDimensions) = 40;
  *(v6 + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_maxWordLength) = 30;
  *(v6 + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_modelVersion) = 0;
  Locale.languageRegionLocale.getter(v25, v30, v31, v32, v33, v34, v35, v36, v57, v58, v59, v60, a1, v62, v63, v64[0], v64[1], v64[2], v64[3], v64[4]);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    v45 = v61;
    v46 = v24;
    sub_1AC71B9C8(v13, &qword_1EB56BFD8, &qword_1AC7A83F0);
    if (off_1ED937D60 != -1)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v47 = sub_1AC79FDE8();
      __swift_project_value_buffer(v47, qword_1ED9386C8);
      (*(v16 + 16))(v46, v45, v14);
      v48 = sub_1AC79FDC8();
      v49 = sub_1AC7A05F8();
      if (os_log_type_enabled(v48, v49))
      {
        swift_slowAlloc();
        v50 = OUTLINED_FUNCTION_202();
        *v45 = 136315138;
        v62 = 0;
        v63 = 0xE000000000000000;
        v64[0] = v50;
        sub_1AC7A09C8();
        MEMORY[0x1B26E8C40](0xD00000000000004ELL, 0x80000001AC7B8F00);
        sub_1AC70FE1C(&qword_1EB56B458, MEMORY[0x1E6969798]);
        v51 = sub_1AC7A0CC8();
        MEMORY[0x1B26E8C40](v51);

        MEMORY[0x1B26E8C40](46, 0xE100000000000000);
        v52 = *(v16 + 8);
        v16 += 8;
        v52(v46, v14);
        v53 = OUTLINED_FUNCTION_123();
        v14 = sub_1AC5CFE74(v53, v54, v55);

        *(v45 + 4) = v14;
        _os_log_impl(&dword_1AC5BC000, v48, v49, "Failed precondition: %s", v45, 0xCu);
        OUTLINED_FUNCTION_67();
        OUTLINED_FUNCTION_77_1();
      }

      else
      {

        v56 = *(v16 + 8);
        v16 += 8;
        v56(v46, v14);
      }

      __break(1u);
LABEL_8:
      OUTLINED_FUNCTION_3(&off_1ED937D60);
    }
  }

  v37 = *(v16 + 32);
  v37(v27, v13, v14);
  (*(v16 + 16))(v20, v27, v14);
  LOBYTE(v62) = v28;
  LOBYTE(v64[0]) = v29;
  type metadata accessor for EuclidActor(0);
  swift_allocObject();
  HIDWORD(v58) = v29;
  v38 = v28;
  v39 = v60;

  v40 = v20;
  v41 = v59;
  v42 = sub_1AC7192F0(v40, v59, v39, &v62, v64);
  (*(v16 + 8))(v61, v14);
  *(v6 + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_euclidActor) = v42;
  v37((v6 + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_locale), v27, v14);
  v43 = (v6 + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_clientID);
  *v43 = v41;
  v43[1] = v39;
  *(v6 + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_inputFormat) = v38;
  *(v6 + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_loadingOption) = BYTE4(v58);
  return v6;
}

char *sub_1AC715560()
{
  v1 = OBJC_IVAR____TtC6Speech16PhoneticEmbedder__syncClient;
  v2 = *&v0[OBJC_IVAR____TtC6Speech16PhoneticEmbedder__syncClient];
  if (v2)
  {
    v0 = *&v0[OBJC_IVAR____TtC6Speech16PhoneticEmbedder__syncClient];
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = 0;

    v5 = sub_1AC7156C8(sub_1AC71BEC8, v4);

    swift_beginAccess();
    v6 = *(v4 + 16);
    if (v6)
    {
      swift_willThrow();
      v7 = v6;

      return v0;
    }

    v9 = *&v0[v1];
    *&v0[v1] = v5;
    v0 = v5;

    v2 = 0;
  }

  v3 = v2;
  return v0;
}

void sub_1AC715668(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;
  v5 = a1;
}

id sub_1AC7156C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(SFLocalSpeechRecognitionClient) init];
  Locale.languageRegionIdentifier.getter();
  v7 = sub_1AC79FF58();
  v8 = SFReplacementLocaleCodeForLocaleIdentifier(v7);

  if (v8)
  {
    sub_1AC79FF68();
  }

  v9 = sub_1AC79FF58();

  v10 = sub_1AC79FF58();
  v11 = *(v3 + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_inputFormat);
  v12 = *(v3 + OBJC_IVAR____TtC6Speech16PhoneticEmbedder_loadingOption);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v16[4] = sub_1AC71BED0;
  v16[5] = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1AC715904;
  v16[3] = &block_descriptor_79;
  v14 = _Block_copy(v16);

  [v6 synchronousCreateEuclidInstanceForLanguageStr:v9 clientID:v10 inputFormat:v11 loadingOption:v12 completion:v14];

  _Block_release(v14);
  return v6;
}

void sub_1AC715894(void *a1, void (*a2)(void *))
{
  if (a1)
  {
    v4 = a1;
    a2(a1);
  }

  else
  {
    (a2)();
  }
}

void sub_1AC715904(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1AC715970()
{
  v1 = sub_1AC79FF48();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C060, &unk_1AC7A8760);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v61 - v5;
  v7 = sub_1AC79FAF8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v63 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v73 = v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C070, &qword_1AC7A8770);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v64 = v61 - v13;
  v76 = sub_1AC79FB18();
  v14 = *(v76 - 8);
  v15 = MEMORY[0x1EEE9AC00](v76);
  v61[3] = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v74 = v61 - v17;
  v18 = static PhoneticEmbedder.supportedLocales()();
  v19 = *(v18 + 16);
  if (v19)
  {
    v62 = v6;
    v61[1] = v0;
    v61[2] = v3;
    v79 = MEMORY[0x1E69E7CC0];
    sub_1AC6310CC(0, v19, 0);
    v75 = v79;
    v21 = *(v14 + 16);
    v20 = v14 + 16;
    v70 = v21;
    v22 = (*(v20 + 64) + 32) & ~*(v20 + 64);
    v61[0] = v18;
    v23 = v18 + v22;
    v24 = (v8 + 8);
    v67 = *(v20 + 56);
    v68 = (v20 - 8);
    v71 = v20;
    v72 = v7;
    v25 = v64;
    v26 = v74;
    v69 = v24;
    do
    {
      v70(v26, v23, v76);
      v27 = v73;
      sub_1AC79FB08();
      sub_1AC79FAC8();
      v28 = *v24;
      (*v24)(v27, v7);
      v29 = v7;
      v30 = sub_1AC79F9C8();
      if (__swift_getEnumTagSinglePayload(v25, 1, v30) == 1)
      {
        sub_1AC71B9C8(v25, &qword_1EB56C070, &qword_1AC7A8770);
        v31 = 0;
        v32 = 0xE000000000000000;
      }

      else
      {
        v65 = sub_1AC79F988();
        v66 = v33;
        (*(*(v30 - 8) + 8))(v25, v30);
        v34 = v63;
        sub_1AC79FB08();
        v35 = v62;
        sub_1AC79FAD8();
        v36 = v35;
        v28(v34, v29);
        v37 = sub_1AC79FA48();
        if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
        {
          sub_1AC71B9C8(v36, &qword_1EB56C060, &unk_1AC7A8760);
          v25 = v64;
          v31 = v65;
          v32 = v66;
        }

        else
        {
          v38 = sub_1AC79F988();
          v40 = v39;
          (*(*(v37 - 8) + 8))(v36, v37);
          v77 = v65;
          v78 = v66;
          MEMORY[0x1B26E8C40](45, 0xE100000000000000);
          MEMORY[0x1B26E8C40](v38, v40);

          v31 = v77;
          v32 = v78;
          v25 = v64;
        }
      }

      v26 = v74;
      (*v68)(v74, v76);
      v41 = v75;
      v79 = v75;
      v43 = *(v75 + 16);
      v42 = *(v75 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1AC6310CC(v42 > 1, v43 + 1, 1);
        v26 = v74;
        v41 = v79;
      }

      *(v41 + 16) = v43 + 1;
      v75 = v41;
      v44 = v41 + 16 * v43;
      *(v44 + 32) = v31;
      *(v44 + 40) = v32;
      v23 += v67;
      --v19;
      v7 = v72;
      v24 = v69;
    }

    while (v19);

    v45 = v75;
  }

  else
  {

    v45 = MEMORY[0x1E69E7CC0];
  }

  Locale.languageRegionIdentifier.getter();
  v77 = v46;
  v78 = v47;
  MEMORY[0x1EEE9AC00](v46);
  v61[-2] = &v77;
  v48 = sub_1AC6F488C(sub_1AC637EC4, &v61[-4], v45);

  if (!v48)
  {
    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v50 = sub_1AC79FDE8();
    __swift_project_value_buffer(v50, qword_1ED9386C8);

    v51 = sub_1AC79FDC8();
    v52 = sub_1AC7A05F8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v77 = v54;
      *v53 = 136315138;
      sub_1AC70FE1C(&qword_1EB56B458, MEMORY[0x1E6969798]);
      v55 = sub_1AC7A0CC8();
      v57 = sub_1AC5CFE74(v55, v56, &v77);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_1AC5BC000, v51, v52, "PhoneticEmbedder.nearest(_:neighborsOf:) cannot be called on an unsupported locale: %s.\nPlease consult PhoneticEmbedder.supportedLocales.", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x1B26EAB10](v54, -1, -1);
      MEMORY[0x1B26EAB10](v53, -1, -1);
    }

    sub_1AC79FEE8();
    if (qword_1EB56B610 != -1)
    {
      swift_once();
    }

    v58 = qword_1EB56DF80;
    sub_1AC79FA88();
    v59 = sub_1AC79FFC8();
    related decl 'e' for SFSpeechErrorCode.init(_:description:)(4, v59, v60);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AC7161A0()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC71A464();
}

uint64_t sub_1AC716230()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_11_3();

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    v11 = OUTLINED_FUNCTION_6_12();

    return MEMORY[0x1EEE6DFA0](v11, v12, 0);
  }
}

uint64_t sub_1AC716368()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC71A130();
}

uint64_t sub_1AC7163F8()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_11_3();

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    v11 = OUTLINED_FUNCTION_6_12();

    return MEMORY[0x1EEE6DFA0](v11, v12, 0);
  }
}

uint64_t sub_1AC71651C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 32);
  v2 = [v1 integerValue];

  OUTLINED_FUNCTION_82();

  return v3(v2);
}

uint64_t sub_1AC7165A4()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC71A854();
}

uint64_t sub_1AC716634()
{
  OUTLINED_FUNCTION_72();
  v4 = v3;
  OUTLINED_FUNCTION_15_3();
  v5 = *v2;
  OUTLINED_FUNCTION_18();
  *v6 = v5;

  v9 = *(v5 + 8);
  if (!v0)
  {
    v7 = v1;
    v8 = v4;
  }

  return v9(v7, v8);
}

uint64_t sub_1AC716744()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC71ABF8();
}

uint64_t sub_1AC7167E8()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC71AF38();
}

uint64_t sub_1AC71688C()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC71B15C();
}

uint64_t static PhoneticEmbedder.installedVersions(for:)()
{
  OUTLINED_FUNCTION_85();
  v1[4] = v2;
  v1[5] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C060, &unk_1AC7A8760);
  OUTLINED_FUNCTION_167(v3);
  v1[6] = swift_task_alloc();
  v4 = sub_1AC79FAF8();
  v1[7] = v4;
  v1[8] = *(v4 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C070, &qword_1AC7A8770);
  OUTLINED_FUNCTION_167(v5);
  v1[11] = swift_task_alloc();
  v6 = sub_1AC79FB18();
  v1[12] = v6;
  v1[13] = *(v6 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC716AE0()
{
  v63 = v0;
  v1 = v0 + 2;
  v2 = static PhoneticEmbedder.installedLocales()();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[13];
    v5 = v0[8];
    v61 = MEMORY[0x1E69E7CC0];
    sub_1AC6310CC(0, v3, 0);
    v6 = v61;
    v7 = *(v4 + 16);
    v4 += 16;
    v8 = v2 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v9 = (v5 + 8);
    v56 = *(v4 + 56);
    v57 = (v4 - 8);
    v58 = (v5 + 8);
    v59 = v7;
    do
    {
      v60 = v3;
      v10 = v0[11];
      v11 = v0[10];
      v12 = v0[7];
      v59(v0[15], v8, v0[12]);
      sub_1AC79FB08();
      sub_1AC79FAC8();
      v13 = *v9;
      (*v9)(v11, v12);
      v14 = sub_1AC79F9C8();
      if (__swift_getEnumTagSinglePayload(v10, 1, v14) == 1)
      {
        sub_1AC71B9C8(v0[11], &qword_1EB56C070, &qword_1AC7A8770);
        v15 = 0;
        v16 = 0xE000000000000000;
      }

      else
      {
        v55 = v6;
        v17 = v0[9];
        v19 = v0[6];
        v18 = v0[7];
        v53 = sub_1AC79F988();
        v54 = v20;
        OUTLINED_FUNCTION_106();
        v21 = OUTLINED_FUNCTION_123();
        v22(v21);
        sub_1AC79FB08();
        sub_1AC79FAD8();
        v13(v17, v18);
        v23 = sub_1AC79FA48();
        if (__swift_getEnumTagSinglePayload(v19, 1, v23) == 1)
        {
          sub_1AC71B9C8(v0[6], &qword_1EB56C060, &unk_1AC7A8760);
          v16 = v54;
          v15 = v53;
        }

        else
        {
          v24 = sub_1AC79F988();
          v26 = v25;
          OUTLINED_FUNCTION_106();
          v27 = OUTLINED_FUNCTION_123();
          v28(v27);
          v62[0] = v53;
          v62[1] = v54;
          MEMORY[0x1B26E8C40](45, 0xE100000000000000);
          MEMORY[0x1B26E8C40](v24, v26);

          v15 = v53;
          v16 = v54;
          v6 = v55;
        }
      }

      (*v57)(v0[15], v0[12]);
      v30 = *(v6 + 16);
      v29 = *(v6 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1AC6310CC(v29 > 1, v30 + 1, 1);
      }

      *(v6 + 16) = v30 + 1;
      v31 = v6 + 16 * v30;
      *(v31 + 32) = v15;
      *(v31 + 40) = v16;
      v8 += v56;
      v3 = v60 - 1;
      v9 = v58;
    }

    while (v60 != 1);

    v1 = v0 + 2;
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  Locale.languageRegionIdentifier.getter();
  v0[2] = v32;
  v0[3] = v33;
  v34 = swift_task_alloc();
  *(v34 + 16) = v1;
  v35 = sub_1AC6F488C(sub_1AC637CD4, v34, v6);

  if (v35)
  {
    v36 = &unk_1F212FEB8;
  }

  else
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3(&off_1ED937D60);
    }

    v37 = sub_1AC79FDE8();
    v38 = __swift_project_value_buffer(v37, qword_1ED9386C8);
    v39 = OUTLINED_FUNCTION_123();
    v40(v39);
    v41 = sub_1AC79FDC8();
    v42 = sub_1AC7A05E8();
    v43 = os_log_type_enabled(v41, v42);
    v45 = v0[13];
    v44 = v0[14];
    v46 = v0[12];
    if (v43)
    {
      swift_slowAlloc();
      v62[0] = OUTLINED_FUNCTION_202();
      *v38 = 136315138;
      v47 = sub_1AC79F978();
      v49 = v48;
      (*(v45 + 8))(v44, v46);
      v50 = sub_1AC5CFE74(v47, v49, v62);

      *(v38 + 4) = v50;
      _os_log_impl(&dword_1AC5BC000, v41, v42, "Assets needed for PhoneticEmbedder in %s are not installed on this device.", v38, 0xCu);
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_77_1();
    }

    else
    {

      (*(v45 + 8))(v44, v46);
    }

    v36 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_82();

  return v51(v36);
}

uint64_t sub_1AC717030(SEL *a1)
{
  v1 = [objc_opt_self() *a1];
  v2 = sub_1AC7A0448();

  v3 = sub_1AC71486C(v2);

  return v3;
}

uint64_t sub_1AC7170EC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v84 = a3;
  v83 = a2;
  v91 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C060, &unk_1AC7A8760);
  v4 = OUTLINED_FUNCTION_167(v3);
  MEMORY[0x1EEE9AC00](v4);
  v76 = &v72 - v5;
  v87 = sub_1AC79FAF8();
  OUTLINED_FUNCTION_40();
  v80 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v72 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C070, &qword_1AC7A8770);
  v11 = OUTLINED_FUNCTION_167(v10);
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v72 - v12;
  v13 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_13();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v89 = &v72 - v19;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v72 - v21;
  v23 = [objc_opt_self() installedLanguagesForTaskHint_];
  v24 = sub_1AC7A0448();

  v25 = sub_1AC71486C(v24);
  v72 = 0;

  v27 = 0;
  v92 = *(v25 + 16);
  v93 = v15 + 16;
  v88 = (v15 + 32);
  v94 = v15;
  v90 = (v15 + 8);
  v95 = MEMORY[0x1E69E7CC0];
  v86 = v25;
  while (v27 != v92)
  {
    if (v27 >= *(v25 + 16))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    v28 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v29 = *(v94 + 72);
    v30 = (*(v94 + 16))(v22, v25 + v28 + v29 * v27++, v13);
    v31 = v91(v30);
    v32 = v31 + v28;
    v33 = *(v31 + 16) + 1;
    do
    {
      if (!--v33)
      {

        result = (*v90)(v22, v13);
        goto LABEL_13;
      }

      sub_1AC70FE1C(&qword_1EB56B460, MEMORY[0x1E6969788]);
      v32 += v29;
    }

    while ((sub_1AC79FED8() & 1) == 0);

    v34 = *v88;
    (*v88)(v85, v22, v13);
    v35 = v95;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AC63110C(0, *(v35 + 16) + 1, 1);
      v35 = aBlock;
    }

    v38 = *(v35 + 16);
    v37 = *(v35 + 24);
    if (v38 >= v37 >> 1)
    {
      sub_1AC63110C(v37 > 1, v38 + 1, 1);
      v35 = aBlock;
    }

    *(v35 + 16) = v38 + 1;
    v95 = v35;
    result = (v34)(v35 + v28 + v38 * v29, v85, v13);
LABEL_13:
    v25 = v86;
  }

  v85 = [objc_allocWithZone(SFLocalSpeechRecognitionClient) init];
  v39 = 0;
  result = v95;
  v86 = *(v95 + 16);
  v40 = v80 + 1;
  v74 = MEMORY[0x1E69E7CC0];
  v79 = v98;
  v41 = v87;
  v42 = v89;
  ++v80;
  while (v86 != v39)
  {
    if (v39 >= *(result + 16))
    {
      goto LABEL_31;
    }

    v78 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v43 = *(v94 + 72);
    v92 = v39;
    v77 = v43;
    (*(v94 + 16))(v42, result + v78 + v43 * v39, v13);
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    v91 = (v44 + 16);
    *(v44 + 24) = 0;
    v45 = v82;
    sub_1AC79FB08();
    v46 = v81;
    sub_1AC79FAC8();
    v47 = v46;
    v48 = *v40;
    (*v40)(v45, v41);
    v49 = sub_1AC79F9C8();
    if (__swift_getEnumTagSinglePayload(v47, 1, v49) == 1)
    {
      sub_1AC71B9C8(v47, &qword_1EB56C070, &qword_1AC7A8770);
    }

    else
    {
      v50 = v41;
      v51 = sub_1AC79F988();
      v53 = v52;
      OUTLINED_FUNCTION_106();
      (*(v54 + 8))(v47, v49);
      v55 = v75;
      sub_1AC79FB08();
      v56 = v76;
      sub_1AC79FAD8();
      v48(v55, v50);
      v57 = sub_1AC79FA48();
      if (__swift_getEnumTagSinglePayload(v56, 1, v57) == 1)
      {
        sub_1AC71B9C8(v56, &qword_1EB56C060, &unk_1AC7A8760);
      }

      else
      {
        v58 = v56;
        v59 = sub_1AC79F988();
        v61 = v60;
        OUTLINED_FUNCTION_106();
        (*(v62 + 8))(v58, v57);
        aBlock = v51;
        v97 = v53;
        MEMORY[0x1B26E8C40](45, 0xE100000000000000);
        MEMORY[0x1B26E8C40](v59, v61);
      }
    }

    v63 = v92;
    v64 = sub_1AC79FF58();

    v98[2] = v83;
    v98[3] = v44;
    aBlock = MEMORY[0x1E69E9820];
    v97 = 1107296256;
    v98[0] = sub_1AC714F68;
    v98[1] = v84;
    v65 = _Block_copy(&aBlock);

    [v85 synchronousEuclidConfigPathForLanguageStr:v64 completion:v65];
    _Block_release(v65);

    swift_beginAccess();
    v66 = *(v44 + 24);

    if (v66)
    {
      v67 = *v88;
      (*v88)(v73, v89, v13);
      v68 = v74;
      v69 = swift_isUniquelyReferenced_nonNull_native();
      v99 = v68;
      v41 = v87;
      v40 = v80;
      if ((v69 & 1) == 0)
      {
        sub_1AC63110C(0, *(v68 + 16) + 1, 1);
        v68 = v99;
      }

      v71 = *(v68 + 16);
      v70 = *(v68 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_1AC63110C(v70 > 1, v71 + 1, 1);
        v68 = v99;
      }

      v39 = v63 + 1;
      *(v68 + 16) = v71 + 1;
      v74 = v68;
      v67((v68 + v78 + v71 * v77), v73, v13);
      v42 = v89;
      result = v95;
    }

    else
    {
      v42 = v89;
      (*v90)(v89, v13);
      v39 = v63 + 1;
      v41 = v87;
      result = v95;
      v40 = v80;
    }
  }

  return v74;
}

uint64_t sub_1AC717A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
}

uint64_t PhoneticEmbedder.distanceBetween(source:and:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC717AE4()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1AC717B84;
  OUTLINED_FUNCTION_111_3(*(v0 + 16));

  return sub_1AC7198A4();
}

uint64_t sub_1AC717B84()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_11_3();

    return v9();
  }

  else
  {
    *(v5 + 64) = v3;
    v11 = OUTLINED_FUNCTION_6_12();

    return MEMORY[0x1EEE6DFA0](v11, v12, 0);
  }
}

uint64_t sub_1AC717CA8()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 64);
  sub_1AC7A03C8();
  v3 = v2;

  OUTLINED_FUNCTION_44();
  v5.n128_u64[0] = v3;

  return v4(v5);
}

uint64_t PhoneticEmbedder.nearest(_:neighborsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_2_1();
}

{
  sub_1AC715970();
  if (!v3)
  {
    OUTLINED_FUNCTION_235();
    *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC0];
    v5 = sub_1AC715560();
    v6 = sub_1AC79FF58();
    sub_1AC71BA64();
    v7 = sub_1AC7A0738();
    OUTLINED_FUNCTION_14_14();
    v17[1] = 1107296256;
    v17[2] = sub_1AC7183FC;
    v17[3] = &block_descriptor_28_1;
    v8 = _Block_copy(v17);

    [v5 synchronousEuclidNearestNeighborsForSource:v6 numberOfNeighbors:v7 completion:v8];
    _Block_release(v8);

    OUTLINED_FUNCTION_40_10(v9, v10, v11, v12, v13, v14, v15, v16, v17[0]);
  }

  return OUTLINED_FUNCTION_39_9();
}

uint64_t sub_1AC717D2C()
{
  OUTLINED_FUNCTION_72();
  sub_1AC715970();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1AC717E18;
  v2 = OUTLINED_FUNCTION_111_3(*(v0 + 24));

  return sub_1AC7193BC(v2, v3, v4);
}

uint64_t sub_1AC717E18()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1AC717F34()
{
  v1 = sub_1AC61C24C();
  if (v1)
  {
    v2 = v1;
    result = sub_1AC7A0A88();
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = 0;
    v5 = *(v0 + 56);
    v6 = v5 & 0xC000000000000001;
    v18 = v5 + 32;
    do
    {
      if (v6)
      {
        v7 = MEMORY[0x1B26E95B0](v4, *(v0 + 56));
      }

      else
      {
        v7 = *(v18 + 8 * v4);
      }

      v8 = v7;
      ++v4;
      v9 = [v7 name];
      v10 = sub_1AC79FF68();
      v12 = v11;

      v13 = [v8 distance];
      sub_1AC7A03C8();
      v15 = v14;

      type metadata accessor for PhoneticNeighbor();
      v16 = swift_allocObject();
      v16[2] = v10;
      v16[3] = v12;
      v16[4] = v15;
      sub_1AC7A0A68();
      sub_1AC7A0A98();
      sub_1AC7A0AA8();
      sub_1AC7A0A78();
    }

    while (v2 != v4);
  }

  OUTLINED_FUNCTION_82();

  return v17();
}

uint64_t PhoneticNeighbor.__allocating_init(name:distance:)(uint64_t a1, uint64_t a2, double a3)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t sub_1AC7182A0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (a2)
    {
      v4 = *(result + 16);
      if (v4)
      {
        v6 = (result + 40);
        do
        {
          if (*(a2 + 16))
          {
            v8 = *(v6 - 1);
            v7 = *v6;

            v9 = sub_1AC6E0808();
            if (v10)
            {
              v11 = *(*(a2 + 56) + 8 * v9);
              sub_1AC7A03C8();
              v13 = v12;
              type metadata accessor for PhoneticNeighbor();
              v14 = swift_allocObject();
              v14[2] = v8;
              v14[3] = v7;
              v14[4] = v13;
              swift_beginAccess();

              MEMORY[0x1B26E8CF0](v15);
              if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1AC7A0178();
              }

              sub_1AC7A0198();
              swift_endAccess();
            }

            else
            {
            }
          }

          v6 += 2;
          --v4;
        }

        while (v4);
      }
    }
  }

  return result;
}

uint64_t sub_1AC7183FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1AC7A0158();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  if (a3)
  {
LABEL_3:
    sub_1AC71BA64();
    v3 = sub_1AC79FE28();
  }

LABEL_4:

  v4(v5, v3);
}

uint64_t PhoneticEmbedder.embeddings(of:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

{
  OUTLINED_FUNCTION_235();
  *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC0];
  v2 = sub_1AC715560();
  if (v1)
  {
  }

  else
  {
    v3 = v2;
    v4 = sub_1AC7A0148();
    OUTLINED_FUNCTION_14_14();
    v15[1] = 1107296256;
    v15[2] = sub_1AC718C24;
    v15[3] = &block_descriptor_36;
    v5 = _Block_copy(v15);

    [v3 synchronousComputeEuclidEmbeddingsForSources:v4 completion:v5];
    _Block_release(v5);

    OUTLINED_FUNCTION_40_10(v6, v7, v8, v9, v10, v11, v12, v13, v15[0]);
  }

  return OUTLINED_FUNCTION_39_9();
}

uint64_t sub_1AC7184CC()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1AC718568;
  v2 = OUTLINED_FUNCTION_111_3(*(v0 + 16));

  return sub_1AC719CB0(v2);
}

uint64_t sub_1AC718568()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

void sub_1AC718684()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (!v2)
  {

    v4 = MEMORY[0x1E69E7CC0];
LABEL_22:
    OUTLINED_FUNCTION_82();

    v17(v4);
    return;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1AC6317C0(0, v2, 0);
  v3 = 0;
  v4 = v21;
  v19 = v1;
  v20 = v1 + 32;
  v18 = v2;
  while (v3 < *(v1 + 16))
  {
    v5 = *(v20 + 8 * v3);
    if (v5 >> 62)
    {
      v6 = sub_1AC7A08E8();
      if (!v6)
      {
LABEL_16:
        v8 = MEMORY[0x1E69E7CC0];
        goto LABEL_17;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_16;
      }
    }

    v22 = MEMORY[0x1E69E7CC0];

    sub_1AC6312E0(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      goto LABEL_26;
    }

    v7 = 0;
    v8 = v22;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1B26E95B0](v7, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      sub_1AC7A03C8();
      v12 = v11;

      v14 = *(v22 + 16);
      v13 = *(v22 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1AC6312E0(v13 > 1, v14 + 1, 1);
      }

      ++v7;
      *(v22 + 16) = v14 + 1;
      *(v22 + 8 * v14 + 32) = v12;
    }

    while (v6 != v7);

    v2 = v18;
    v1 = v19;
LABEL_17:
    v16 = *(v21 + 16);
    v15 = *(v21 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1AC6317C0(v15 > 1, v16 + 1, 1);
    }

    ++v3;
    *(v21 + 16) = v16 + 1;
    *(v21 + 8 * v16 + 32) = v8;
    if (v3 == v2)
    {

      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1AC718A0C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = a2;
    v4 = *(result + 16);
    v5 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      v23 = MEMORY[0x1E69E7CC0];
      sub_1AC6317C0(0, v4, 0);
      v6 = 0;
      v7 = v23;
      v21 = v4;
      v22 = result + 32;
      while (1)
      {
        v8 = *(v22 + 8 * v6);
        if (v8 >> 62)
        {
          v9 = sub_1AC7A08E8();
          if (!v9)
          {
LABEL_16:
            v11 = v5;
            goto LABEL_17;
          }
        }

        else
        {
          v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v9)
          {
            goto LABEL_16;
          }
        }

        sub_1AC6312E0(0, v9 & ~(v9 >> 63), 0);
        if (v9 < 0)
        {
          __break(1u);
          return;
        }

        v10 = 0;
        v11 = v5;
        do
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x1B26E95B0](v10, v8);
          }

          else
          {
            v12 = *(v8 + 8 * v10 + 32);
          }

          v13 = v12;
          sub_1AC7A03C8();
          v15 = v14;

          v17 = *(v11 + 16);
          v16 = *(v11 + 24);
          if (v17 >= v16 >> 1)
          {
            sub_1AC6312E0(v16 > 1, v17 + 1, 1);
          }

          ++v10;
          *(v11 + 16) = v17 + 1;
          *(v11 + 8 * v17 + 32) = v15;
        }

        while (v9 != v10);

        v5 = MEMORY[0x1E69E7CC0];
        v4 = v21;
LABEL_17:
        v19 = *(v23 + 16);
        v18 = *(v23 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1AC6317C0(v18 > 1, v19 + 1, 1);
        }

        ++v6;
        *(v23 + 16) = v19 + 1;
        *(v23 + 8 * v19 + 32) = v11;
        if (v6 == v4)
        {
          v2 = a2;
          goto LABEL_22;
        }
      }
    }

    v7 = MEMORY[0x1E69E7CC0];
LABEL_22:
    swift_beginAccess();
    *(v2 + 16) = v7;
  }
}

uint64_t sub_1AC718C24(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C650, &unk_1AC7AB400);
    v2 = sub_1AC7A0158();
  }

  v3(v2);
}

uint64_t PhoneticEmbedder.__allocating_init(locale:clientID:inputFormat:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  v14 = v13 - v12;
  LOBYTE(a4) = *a4;
  (*(v10 + 16))(v13 - v12, a1, v8);
  v18 = a4;
  v17 = 0;
  v15 = swift_allocObject();
  PhoneticEmbedder.init(locale:clientID:inputFormat:loadingOption:)(v14, a2, a3, &v18, &v17);
  (*(v10 + 8))(a1, v8);
  return v15;
}

void *static PhoneticEmbedder.allVersions(locale:)(uint64_t a1)
{
  v2 = static PhoneticEmbedder.supportedLocales()();
  v4[2] = a1;
  LOBYTE(a1) = sub_1AC6F47B8(sub_1AC637BAC, v4, v2);

  if (a1)
  {
    return &unk_1F212FEE8;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

{
  v2 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6();
  v8 = v7 - v6;
  v9 = static PhoneticEmbedder.supportedLocales()();
  v20 = a1;
  v10 = sub_1AC6F47B8(sub_1AC71BEEC, v19, v9);

  if (v10)
  {
    return &unk_1F212FF10;
  }

  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v12 = sub_1AC79FDE8();
  __swift_project_value_buffer(v12, qword_1ED9386C8);
  (*(v4 + 16))(v8, a1, v2);
  v13 = sub_1AC79FDC8();
  v14 = sub_1AC7A05E8();
  if (os_log_type_enabled(v13, v14))
  {
    swift_slowAlloc();
    v21 = OUTLINED_FUNCTION_202();
    *v9 = 136315138;
    v15 = sub_1AC79F978();
    v17 = v16;
    (*(v4 + 8))(v8, v2);
    v18 = sub_1AC5CFE74(v15, v17, &v21);

    *(v9 + 4) = v18;
    _os_log_impl(&dword_1AC5BC000, v13, v14, "%s is not yet supported by PhoneticEmbedder", v9, 0xCu);
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_77_1();
  }

  else
  {

    (*(v4 + 8))(v8, v2);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t PhoneticEmbedder.embeddings(of:completion:)(uint64_t a1, void (*a2)(void))
{
  PhoneticEmbedder.embeddings(of:)(a1);
  if (v2)
  {
    v4 = v2;
    (a2)(0, v2);

    return swift_willThrow();
  }

  else
  {
    a2();
  }
}

uint64_t PhoneticEmbedder.deinit()
{
  v1 = OBJC_IVAR____TtC6Speech16PhoneticEmbedder_locale;
  sub_1AC79FB18();
  OUTLINED_FUNCTION_106();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t PhoneticEmbedder.__deallocating_deinit()
{
  PhoneticEmbedder.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t PhoneticNeighbor.init(name:distance:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t PhoneticNeighbor.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PhoneticNeighbor.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1AC7192F0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v9 = *a4;
  v10 = *a5;
  swift_defaultActor_initialize();
  *(v5 + OBJC_IVAR____TtC6SpeechP33_BB256D071C96542CEBFBAC43A1B470C111EuclidActor__euclidService) = 0;
  v11 = OBJC_IVAR____TtC6SpeechP33_BB256D071C96542CEBFBAC43A1B470C111EuclidActor_locale;
  v12 = sub_1AC79FB18();
  (*(*(v12 - 8) + 32))(v5 + v11, a1, v12);
  v13 = (v5 + OBJC_IVAR____TtC6SpeechP33_BB256D071C96542CEBFBAC43A1B470C111EuclidActor_clientID);
  *v13 = a2;
  v13[1] = a3;
  *(v5 + OBJC_IVAR____TtC6SpeechP33_BB256D071C96542CEBFBAC43A1B470C111EuclidActor_inputFormat) = v9;
  *(v5 + OBJC_IVAR____TtC6SpeechP33_BB256D071C96542CEBFBAC43A1B470C111EuclidActor_loadingOption) = v10;
  return v5;
}

uint64_t sub_1AC7193BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_1AC719450;

  return sub_1AC71B380();
}

uint64_t sub_1AC719450()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 56) = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_27();

    return v6();
  }

  else
  {
    v8 = OUTLINED_FUNCTION_37();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1AC719578()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1AC7195DC()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1AC719674;
  OUTLINED_FUNCTION_111_3(*(v0 + 16));

  return sub_1AC756034();
}

uint64_t sub_1AC719674()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC71977C()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_82();
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_1AC7197E8()
{
  OUTLINED_FUNCTION_85();

  v0 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1AC719848()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t sub_1AC7198A4()
{
  OUTLINED_FUNCTION_85();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = swift_task_alloc();
  v1[7] = v6;
  *v6 = v1;
  OUTLINED_FUNCTION_85_0(v6);

  return sub_1AC71B380();
}

uint64_t sub_1AC719934()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 64) = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_27();

    return v6();
  }

  else
  {
    v8 = OUTLINED_FUNCTION_37();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1AC719A5C()
{
  OUTLINED_FUNCTION_72();

  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1AC719B20;
  v2 = OUTLINED_FUNCTION_111_3(*(v0 + 64));

  return (sub_1AC6E7DA0)(v2);
}

uint64_t sub_1AC719B20()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v4 + 80) = v0;

  if (v0)
  {
    v8 = OUTLINED_FUNCTION_37();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {

    v11 = *(v6 + 8);

    return v11(v1);
  }
}

uint64_t sub_1AC719C54()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t sub_1AC719CB0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1AC719D40;

  return sub_1AC71B380();
}

uint64_t sub_1AC719D40()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 40) = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_27();

    return v6();
  }

  else
  {
    v8 = OUTLINED_FUNCTION_37();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1AC719E68()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1AC719ECC()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1AC719F60;
  OUTLINED_FUNCTION_111_3(*(v0 + 16));

  return sub_1AC757004();
}

uint64_t sub_1AC719F60()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v4 + 56) = v0;

  if (!v0)
  {
    *(v4 + 64) = v1;
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC71A068()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_82();
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_1AC71A0D4()
{
  OUTLINED_FUNCTION_85();

  v0 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1AC71A130()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1AC71A1C0;

  return sub_1AC71B380();
}

uint64_t sub_1AC71A1C0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  *v3 = *v1;
  OUTLINED_FUNCTION_36_9(v4);
  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v5();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_74();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1AC71A2D0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_23_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_422(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC757594();
}

uint64_t sub_1AC71A354()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v4 + 48) = v0;

  if (v0)
  {
    v8 = OUTLINED_FUNCTION_16_14();
  }

  else
  {
    *(v4 + 56) = v1;
    v8 = OUTLINED_FUNCTION_16_14();
    v9 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, 0);
}

uint64_t sub_1AC71A464()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1AC71A4F4;

  return sub_1AC71B380();
}

uint64_t sub_1AC71A4F4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  *v3 = *v1;
  OUTLINED_FUNCTION_36_9(v4);
  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v5();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_74();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1AC71A604()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_23_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_422(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC7578DC();
}

uint64_t sub_1AC71A688()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v4 + 48) = v0;

  if (v0)
  {
    v8 = OUTLINED_FUNCTION_16_14();
  }

  else
  {
    *(v4 + 56) = v1;
    v8 = OUTLINED_FUNCTION_16_14();
    v9 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, 0);
}

uint64_t sub_1AC71A798()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_82();
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_1AC71A7F8()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t sub_1AC71A854()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1AC71A8E4;

  return sub_1AC71B380();
}

uint64_t sub_1AC71A8E4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  *v3 = *v1;
  OUTLINED_FUNCTION_36_9(v4);
  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v5();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_74();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1AC71A9F4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_23_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_422(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC757C24();
}

uint64_t sub_1AC71AA78()
{
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_50();
  v7 = v6;
  OUTLINED_FUNCTION_19();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;
  v7[6] = v0;

  if (v0)
  {
    v11 = OUTLINED_FUNCTION_15_11();
  }

  else
  {
    v7[7] = v3;
    v7[8] = v5;
    v11 = OUTLINED_FUNCTION_6_12();
  }

  return MEMORY[0x1EEE6DFA0](v11, v12, 0);
}

uint64_t sub_1AC71AB94()
{
  OUTLINED_FUNCTION_85();

  v1 = v0[1];
  v3 = v0[7];
  v2 = v0[8];

  return v1(v2, v3);
}

uint64_t sub_1AC71ABF8()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1AC71AC88;

  return sub_1AC71B380();
}

uint64_t sub_1AC71AC88()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  *v3 = *v1;
  OUTLINED_FUNCTION_36_9(v4);
  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v5();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_74();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1AC71AD98()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_23_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_422(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC757F5C();
}

uint64_t sub_1AC71AE1C()
{
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_50();
  v7 = v6;
  OUTLINED_FUNCTION_19();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;
  v7[6] = v0;

  if (v0)
  {
    v11 = OUTLINED_FUNCTION_15_11();
  }

  else
  {
    v7[7] = v3;
    v7[8] = v5;
    v11 = OUTLINED_FUNCTION_6_12();
  }

  return MEMORY[0x1EEE6DFA0](v11, v12, 0);
}

uint64_t sub_1AC71AF38()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1AC71AFC8;

  return sub_1AC71B380();
}

uint64_t sub_1AC71AFC8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  *v3 = *v1;
  OUTLINED_FUNCTION_36_9(v4);
  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v5();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_74();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1AC71B0D8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_23_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_422(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC758294();
}

uint64_t sub_1AC71B15C()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1AC71B1EC;

  return sub_1AC71B380();
}

uint64_t sub_1AC71B1EC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  *v3 = *v1;
  OUTLINED_FUNCTION_36_9(v4);
  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v5();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_74();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1AC71B2FC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_23_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_422(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC7584AC();
}

uint64_t sub_1AC71B3A0()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC6SpeechP33_BB256D071C96542CEBFBAC43A1B470C111EuclidActor__euclidService;
  v0[3] = OBJC_IVAR____TtC6SpeechP33_BB256D071C96542CEBFBAC43A1B470C111EuclidActor__euclidService;
  if (*(v1 + v2))
  {
    OUTLINED_FUNCTION_82();
    v7 = v3;

    return v7(v4);
  }

  else
  {
    if (qword_1ED938050 != -1)
    {
      swift_once();
    }

    v6 = swift_task_alloc();
    v0[4] = v6;
    *v6 = v0;
    v6[1] = sub_1AC71B528;

    return sub_1AC63AAB4();
  }
}

uint64_t sub_1AC71B528()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 40) = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_27();

    return v6();
  }

  else
  {
    v8 = OUTLINED_FUNCTION_37();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1AC71B650()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D9F8, &qword_1AC7B1510);
  OUTLINED_FUNCTION_235();
  v4 = swift_allocObject();
  v0[6] = v4;
  *(v4 + 16) = v1;
  *(v3 + v2) = v4;

  v5 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC71B704()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC7586C4();
}

uint64_t sub_1AC71B790()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    v7 = *(v3 + 16);
    v8 = sub_1AC621648;
  }

  else
  {
    v8 = sub_1AC71B894;
    v7 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1AC71B894()
{
  OUTLINED_FUNCTION_85();

  v0 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1AC71B8F4()
{
  v1 = OBJC_IVAR____TtC6SpeechP33_BB256D071C96542CEBFBAC43A1B470C111EuclidActor_locale;
  v2 = sub_1AC79FB18();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1AC71B980()
{
  v0 = sub_1AC71B8F4();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1AC71B9C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_106();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1AC71BA64()
{
  result = qword_1EB56AAA0;
  if (!qword_1EB56AAA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB56AAA0);
  }

  return result;
}

unint64_t sub_1AC71BAEC()
{
  result = qword_1EB56D9D8;
  if (!qword_1EB56D9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D9D8);
  }

  return result;
}

unint64_t sub_1AC71BB74()
{
  result = qword_1EB56D9F0;
  if (!qword_1EB56D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D9F0);
  }

  return result;
}

uint64_t sub_1AC71BBF0(uint64_t a1)
{
  result = sub_1AC79FB18();
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

_BYTE *sub_1AC71BCFC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1AC71BE0C(uint64_t a1)
{
  result = sub_1AC79FB18();
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

uint64_t OUTLINED_FUNCTION_40_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_beginAccess();
}

void SFAcousticFeature.acousticFeatureValuePerFrame.getter()
{
  v1 = [v0 acousticFeatureValuePerFrame];
  sub_1AC71BA64();
  v2 = sub_1AC7A0158();

  v3 = sub_1AC61C24C();
  if (!v3)
  {
LABEL_10:

    return;
  }

  v4 = v3;
  v12 = MEMORY[0x1E69E7CC0];
  sub_1AC6312E0(0, v3 & ~(v3 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B26E95B0](i, v2);
      }

      else
      {
        v6 = *(v2 + 8 * i + 32);
      }

      v7 = v6;
      sub_1AC7A03C8();
      v9 = v8;

      v11 = *(v12 + 16);
      v10 = *(v12 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1AC6312E0(v10 > 1, v11 + 1, 1);
      }

      *(v12 + 16) = v11 + 1;
      *(v12 + 8 * v11 + 32) = v9;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1AC71C0CC()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v0;
  v2 = sub_1AC79FC78();
  v1[4] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[5] = v3;
  v1[6] = OUTLINED_FUNCTION_126();
  v4 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC71C170()
{
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v2 = sub_1AC5C6544();
    OUTLINED_FUNCTION_13_0(v2);
    nullsub_1();
    if (!v0)
    {
      nullsub_1();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7B68);
      v9 = swift_task_alloc();
      *(v1 + 64) = v9;
      *v9 = v1;
      OUTLINED_FUNCTION_6_0(v9);
      OUTLINED_FUNCTION_155();

      __asm { BR              X3 }
    }

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_155();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_155();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC71C2D8()
{
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v3;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC71C438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC604AC4;

  return sub_1AC71C0CC();
}

uint64_t sub_1AC71C4D0(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_65();
  v10 = v5 == 0xD000000000000022 && v6 == a2;
  if (v10 || (v11 = v9, v12 = v8, v13 = v7, v14 = v5, (OUTLINED_FUNCTION_53(0xD000000000000022, v6) & 1) != 0))
  {
    [a3 hello];
    return 1;
  }

  OUTLINED_FUNCTION_65();
  result = 0xD00000000000004FLL;
  v17 = v14 == 0xD00000000000004FLL && v15 == a2;
  if (v17 || (result = OUTLINED_FUNCTION_53(0xD00000000000004FLL, v15), (result & 1) != 0))
  {
    v18 = *(v13 + 16);
    if (v18)
    {
      result = sub_1AC5D2398(v13 + 32, &v36);
      if (!v37)
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      sub_1AC5C3968(&v36, &v38);
      sub_1AC71E3DC();
      result = swift_dynamicCast();
      if (v18 != 1)
      {
        v19 = v35;
        result = sub_1AC5D2398(v13 + 64, &v32);
        if (v33)
        {
          sub_1AC5C3968(&v32, &v34);
          swift_dynamicCast();
          OUTLINED_FUNCTION_99();
          v20 = swift_allocObject();
          *(v20 + 16) = v12;
          *(v20 + 24) = v11;
          OUTLINED_FUNCTION_0_17(v20);
          v40 = 1107296256;
          v41 = sub_1AC5C0904;
          v42 = &block_descriptor_30;
          v21 = _Block_copy(aBlock);
          sub_1AC5D9374(v12, v11);

          [a3 runLanguageDetectionWithResultStream:v19 samplingRate:v31 reply:v21];

          v22 = v21;
LABEL_25:
          _Block_release(v22);
          return 1;
        }

        goto LABEL_38;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_65();
  result = 0xD000000000000026;
  v24 = v14 == 0xD000000000000026 && v23 == a2;
  if (v24 || (result = OUTLINED_FUNCTION_53(0xD000000000000026, v23), (result & 1) != 0))
  {
    if (!v12)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_99();
    v25 = swift_allocObject();
    *(v25 + 16) = v12;
    *(v25 + 24) = v11;
    OUTLINED_FUNCTION_0_17(v25);
    v40 = 1107296256;
    v41 = sub_1AC5EF570;
    v42 = &block_descriptor_24;
    v26 = _Block_copy(aBlock);

    [a3 modelInfoWithReply_];
LABEL_24:
    v22 = v26;
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_65();
  result = 0xD00000000000002DLL;
  v28 = v14 == 0xD00000000000002DLL && v27 == a2;
  if (v28 || (v29 = OUTLINED_FUNCTION_53(0xD00000000000002DLL, v27), result = 0, (v29 & 1) != 0))
  {
    if (!v12)
    {
LABEL_40:
      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_99();
    v30 = swift_allocObject();
    *(v30 + 16) = v12;
    *(v30 + 24) = v11;
    OUTLINED_FUNCTION_0_17(v30);
    v40 = 1107296256;
    v41 = sub_1AC71E360;
    v42 = &block_descriptor_14;
    v26 = _Block_copy(aBlock);

    [a3 supportedLocalesWithReply_];
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_1AC71C840()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v0;
  v2 = sub_1AC79FC78();
  v1[4] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[5] = v3;
  v1[6] = OUTLINED_FUNCTION_126();
  v4 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC71C8E4()
{
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v2 = sub_1AC5C6544();
    OUTLINED_FUNCTION_13_0(v2);
    nullsub_1();
    if (v0)
    {

      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_155();

      __asm { BRAA            X1, X16 }
    }

    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7A78);
    v9 = swift_task_alloc();
    *(v1 + 64) = v9;
    *v9 = v1;
    OUTLINED_FUNCTION_6_0(v9);
    OUTLINED_FUNCTION_155();

    __asm { BR              X3 }
  }

  OUTLINED_FUNCTION_155();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC71CA40()
{
  OUTLINED_FUNCTION_72();
  *(*v1 + 72) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1AC71CB68()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v0;
  v2 = sub_1AC79FC78();
  v1[4] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[5] = v3;
  v1[6] = OUTLINED_FUNCTION_126();
  v4 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC71CC0C()
{
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v2 = sub_1AC5C6544();
    OUTLINED_FUNCTION_13_0(v2);
    nullsub_1();
    if (!v0)
    {
      nullsub_1();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7A68);
      v8 = swift_task_alloc();
      *(v1 + 64) = v8;
      *v8 = v1;
      OUTLINED_FUNCTION_6_0(v8);
      OUTLINED_FUNCTION_155();

      __asm { BR              X3 }
    }

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_155();

    __asm { BRAA            X1, X16 }
  }

  v5 = swift_task_alloc();
  *(v1 + 88) = v5;
  *v5 = v1;
  v5[1] = sub_1AC71CF44;
  OUTLINED_FUNCTION_155();

  return sub_1AC71D04C(v6);
}

uint64_t sub_1AC71CDA8()
{
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v3;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC71CED8()
{
  OUTLINED_FUNCTION_85();
  v0 = OUTLINED_FUNCTION_61();
  v1(v0);

  v2 = OUTLINED_FUNCTION_12_1();

  return v3(v2);
}

uint64_t sub_1AC71CF44()
{
  OUTLINED_FUNCTION_72();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_19_12();

  return v4(v3);
}

uint64_t sub_1AC71D0E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C5380;

  return sub_1AC71C840();
}

uint64_t sub_1AC71D17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC5E63A4;

  return sub_1AC71CB68();
}

uint64_t sub_1AC71D214()
{
  OUTLINED_FUNCTION_85();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_1AC79FC78();
  v1[8] = v4;
  OUTLINED_FUNCTION_22(v4);
  v1[9] = v5;
  v1[10] = OUTLINED_FUNCTION_126();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F8, &unk_1AC7A6D20);
  v1[11] = v6;
  OUTLINED_FUNCTION_22(v6);
  v1[12] = v7;
  v1[13] = OUTLINED_FUNCTION_126();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9D8, &qword_1AC7A7A58);
  v1[14] = v8;
  OUTLINED_FUNCTION_22(v8);
  v1[15] = v9;
  v1[16] = OUTLINED_FUNCTION_126();
  v10 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC71D36C()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[16];
    v2 = v0[5];
    v3 = sub_1AC5C6544();
    v0[3] = v2;
    v0[2] = v3;
    type metadata accessor for EARLanguageDetectorResultStream();

    sub_1AC79FC98();
    sub_1AC5DEEE0(v1);
    v6 = v0[13];
    v0[4] = v0[6];
    sub_1AC79FC98();
    sub_1AC5DDF60(v6);
    nullsub_1();
    nullsub_1();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7A28);
    v11 = v7;
    v8 = swift_task_alloc();
    v0[17] = v8;
    *v8 = v0;
    v8[1] = sub_1AC71D670;
    v9 = v0[10];
    v10 = v0[7];

    return v11(v10, v9, v0 + 2);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[20] = v4;
    *v4 = v0;
    v4[1] = sub_1AC71D850;

    return sub_1AC71DCA4(v4);
  }
}

uint64_t sub_1AC71D670()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v5 + 144) = v0;

  if (!v0)
  {
    *(v5 + 152) = v3;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC71D790()
{
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_15_12();
  v4(v3);
  (*(v2 + 8))(v0, v1);
  v5 = OUTLINED_FUNCTION_89();
  v6(v5);

  v7 = OUTLINED_FUNCTION_12_1();

  return v8(v7);
}

uint64_t sub_1AC71D850()
{
  OUTLINED_FUNCTION_72();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_19_12();

  return v4(v3);
}

uint64_t sub_1AC71D990()
{
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_15_12();
  v4(v3);
  (*(v2 + 8))(v0, v1);
  v5 = OUTLINED_FUNCTION_89();
  v6(v5);

  OUTLINED_FUNCTION_44();

  return v7();
}

uint64_t sub_1AC71DA50(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1AC6E6540();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v8 = swift_task_alloc();
  v3[9] = v8;
  *v8 = v3;
  v8[1] = sub_1AC6F1EC0;

  return sub_1AC71D214();
}

uint64_t sub_1AC71DD0C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v9 = sub_1AC5EFE6C(a1, a2, a3);
  v10 = v9;
  if (!v4 && !v9)
  {
    type metadata accessor for EARLanguageDetector();
    v10 = swift_distributedActor_remote_initialize();
    *(v10 + 112) = a1;
    *(v10 + 120) = a2;
    *(v10 + 128) = v6;
    *(v10 + 136) = a4;
    sub_1AC5D0DD0(a1, a2, v6);
  }

  return v10;
}

uint64_t sub_1AC71DDB8()
{
  sub_1AC7A0E78();
  type metadata accessor for EARLanguageDetector();
  OUTLINED_FUNCTION_7_18();
  sub_1AC71E428(v0, v1, v2, &unk_1AC7B1794);
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC71DE34()
{
  if ((sub_1AC79FC58() & 1) == 0)
  {
    type metadata accessor for EARLanguageDetector();
    OUTLINED_FUNCTION_7_18();
    sub_1AC71E428(v1, v2, v3, &unk_1AC7B17E4);
    OUTLINED_FUNCTION_89();
    return sub_1AC79FBE8();
  }

  return v0;
}

uint64_t sub_1AC71DEF8(uint64_t a1)
{
  type metadata accessor for EARLanguageDetector();
  sub_1AC71E428(&qword_1EB56B9C8, v1, type metadata accessor for EARLanguageDetector, &unk_1AC7B17E4);
  return sub_1AC79FC28();
}

uint64_t sub_1AC71DF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AC7A0E78();
  type metadata accessor for EARLanguageDetector();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC71DFC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for EARLanguageDetector();
  v6 = sub_1AC71E428(&qword_1EB56B9C8, v5, type metadata accessor for EARLanguageDetector, &unk_1AC7B17E4);

  return MEMORY[0x1EEE6CC98](v2, v3, v4, v6);
}

uint64_t sub_1AC71E050(uint64_t a1)
{
  type metadata accessor for EARLanguageDetector();
  sub_1AC71E428(&qword_1EB56B9C8, v1, type metadata accessor for EARLanguageDetector, &unk_1AC7B17E4);
  sub_1AC6013F0();
  return sub_1AC79FC38();
}

uint64_t sub_1AC71E0E4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EARLanguageDetector();
  sub_1AC71E428(&qword_1EB56B9C8, v4, type metadata accessor for EARLanguageDetector, &unk_1AC7B17E4);
  sub_1AC601444();
  result = sub_1AC79FC48();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1AC71E2A4()
{
  result = xpcInterface_EARLanguageDetector();
  qword_1EB56E890 = result;
  return result;
}

uint64_t sub_1AC71E2CC(uint64_t a1, void (*a2)(_OWORD *, __n128))
{
  if (a1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
    *&v5 = a1;
    sub_1AC5C3968(&v5, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  (a2)(v7);
  return sub_1AC641B24(v7);
}

uint64_t sub_1AC71E360(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_1AC7A0158();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

unint64_t sub_1AC71E3DC()
{
  result = qword_1ED9372A0;
  if (!qword_1ED9372A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9372A0);
  }

  return result;
}

uint64_t sub_1AC71E428(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AC71E47C(unint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v21 = a2;
  v6 = type metadata accessor for CommandRecognizer.Argument(0) - 8;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1AC7A08E8())
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1AC6317E0(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v10 = 0;
    v11 = v23;
    v19 = i;
    v20 = a1 & 0xC000000000000001;
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v20)
      {
        v13 = MEMORY[0x1B26E95B0](v10, a1);
      }

      else
      {
        if (v10 >= *(v18 + 16))
        {
          goto LABEL_17;
        }

        v13 = *(a1 + 8 * v10 + 32);
      }

      v3 = v13;
      v14 = a1;
      v22 = v13;
      sub_1AC722BC4(&v22, v21, v8);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v23 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      v3 = (v16 + 1);
      if (v16 >= v15 >> 1)
      {
        sub_1AC6317E0(v15 > 1, v16 + 1, 1);
        v11 = v23;
      }

      *(v11 + 16) = v3;
      sub_1AC726464();
      ++v10;
      a1 = v14;
      if (v12 == v19)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

void sub_1AC71E6B4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v3);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - v5;
  if (!a1)
  {
    goto LABEL_5;
  }

  v7 = v1 + OBJC_IVAR____TtC6Speech17CommandRecognizer__workerWithLocked;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC6Speech17CommandRecognizer__workerWithLocked));
  v8 = *(v7 + 16);
  os_unfair_lock_unlock(v7);
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v9 = sub_1AC79FDE8();
  __swift_project_value_buffer(v9, qword_1ED9386C8);
  if (v8)
  {
    v13 = sub_1AC79FDC8();
    v14 = sub_1AC7A05F8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315138;
      OUTLINED_FUNCTION_65();
      *(v15 + 4) = sub_1AC5CFE74(0xD00000000000002CLL, v17, &v19);
      _os_log_impl(&dword_1AC5BC000, v13, v14, "Failed precondition: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v10 = v1 + OBJC_IVAR____TtC6Speech17CommandRecognizer__workerWithLocked;
    os_unfair_lock_lock((v1 + OBJC_IVAR____TtC6Speech17CommandRecognizer__workerWithLocked));
    *(v10 + 8) = a1;

    *(v10 + 16) = 1;
    os_unfair_lock_unlock(v10);
    v11 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = a1;
    v12[5] = v1;

    sub_1AC659B08();
  }
}

void sub_1AC71E9B8()
{
  OUTLINED_FUNCTION_104();
  v54 = v0;
  v55 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8B0, &qword_1AC7AADF0);
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A8, &qword_1AC7B1DB0);
  OUTLINED_FUNCTION_167(v10);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v42 - v12;
  v13 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  v48 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_6();
  v47 = v15 - v14;
  v52 = v5;
  v53 = v3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v3);
  OUTLINED_FUNCTION_80();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v45 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v44 = &v42 - v19;
  v56 = v7;
  if (*(v7 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D5C8, &qword_1AC7B1DC0);
    OUTLINED_FUNCTION_35_7();
    v20 = sub_1AC7A0BC8();
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC8];
  }

  v21 = v56 + 64;
  OUTLINED_FUNCTION_35_11();
  v24 = v23 & v22;
  v26 = (v25 + 63) >> 6;
  v42 = v20 + 64;

  v27 = 0;
  for (i = v20; v24; ++*(v39 + 16))
  {
    v28 = v27;
LABEL_10:
    v29 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v30 = v29 | (v28 << 6);
    v31 = v56;
    v57 = *(v48 + 72);
    OUTLINED_FUNCTION_2_21();
    v32 = v44;
    sub_1AC7261C4();
    v33 = v46;
    *&v32[*(v46 + 48)] = *(*(v31 + 56) + 8 * v30);
    v34 = v45;
    sub_1AC637E08();
    v35 = *(v33 + 48);
    v36 = v50;
    v37 = *(v51 + 48);
    sub_1AC726464();
    v58 = *&v34[v35];

    __swift_instantiateConcreteTypeFromMangledNameV2(v54, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D4F0, &unk_1AC7AF180);
    swift_dynamicCast();
    sub_1AC726464();
    v38 = *&v36[v37];
    sub_1AC726464();
    v39 = i;
    sub_1AC7A0E78();
    sub_1AC6F7B7C();
    sub_1AC7A0EC8();
    v40 = v42;
    v41 = sub_1AC7A0888();
    *(v40 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    sub_1AC726464();
    *(*(v39 + 56) + 8 * v41) = v38;
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v26)
    {

      OUTLINED_FUNCTION_105();
      return;
    }

    v24 = *(v21 + 8 * v28);
    ++v27;
    if (v24)
    {
      v27 = v28;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1AC71EDEC()
{
  OUTLINED_FUNCTION_185_0();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DAB0, &unk_1AC7B1D48);
    OUTLINED_FUNCTION_35_7();
    v2 = sub_1AC7A0BC8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_35_11();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  v8 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v11 = (*(v0 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v12 = v11[1];
    *&v31[0] = *v11;
    *(&v31[0] + 1) = v12;

    swift_dynamicCast();
    swift_dynamicCast();
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_1AC5C3968(&v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_1AC5C3968(v30, v31);
    v13 = sub_1AC7A0948();
    v14 = -1 << *(v2 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v8 + 8 * (v15 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v14) >> 6;
      while (++v16 != v19 || (v18 & 1) == 0)
      {
        v20 = v16 == v19;
        if (v16 == v19)
        {
          v16 = 0;
        }

        v18 |= v20;
        v21 = *(v8 + 8 * v16);
        if (v21 != -1)
        {
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          goto LABEL_18;
        }
      }

      goto LABEL_22;
    }

    v17 = __clz(__rbit64((-1 << v15) & ~*(v8 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_18:
    v5 &= v5 - 1;
    *(v8 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    v22 = *(v2 + 48) + 40 * v17;
    *v22 = v23;
    *(v22 + 16) = v24;
    *(v22 + 32) = v25;
    sub_1AC5C3968(v31, (*(v2 + 56) + 32 * v17));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_5:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v5 = *(v0 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_1AC71F090(unint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_1AC7A08E8())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x1E69E7CC8];
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DAB0, &unk_1AC7B1D48);
  v3 = sub_1AC7A0BC8();
  if (v2)
  {
LABEL_4:
    v4 = sub_1AC7A0B48();
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = v4 | 0x8000000000000000;
    goto LABEL_11;
  }

LABEL_7:
  v9 = -1 << *(a1 + 32);
  v6 = ~v9;
  v5 = a1 + 64;
  v10 = -v9;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v7 = v11 & *(a1 + 64);
  v8 = a1;
LABEL_11:
  v12 = (v6 + 64) >> 6;
  v13 = v3 + 64;

  v14 = 0;
  v31 = v8;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  v15 = v7;
  v16 = v14;
  if (v7)
  {
LABEL_18:
    v18 = (v15 - 1) & v15;
    v19 = *(*(v8 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    swift_unknownObjectRetain();
    if (!v19)
    {
LABEL_33:
      sub_1AC5CA508(v31);

      return;
    }

    while (1)
    {
      *&v40[0] = v19;
      sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
      swift_dynamicCast();
      swift_dynamicCast();
      v36 = v32;
      v37 = v33;
      v38 = v34;
      sub_1AC5C3968(&v35, v39);
      v32 = v36;
      v33 = v37;
      v34 = v38;
      sub_1AC5C3968(v39, v40);
      v21 = sub_1AC7A0948();
      v22 = -1 << *(v3 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
      {
        break;
      }

      v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      v8 = v31;
LABEL_31:
      *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v30 = *(v3 + 48) + 40 * v25;
      *v30 = v32;
      *(v30 + 16) = v33;
      *(v30 + 32) = v34;
      sub_1AC5C3968(v40, (*(v3 + 56) + 32 * v25));
      ++*(v3 + 16);
      v14 = v16;
      v7 = v18;
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_20:
      v20 = sub_1AC7A0B68();
      if (v20)
      {
        *&v32 = v20;
        sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
        swift_dynamicCast();
        v19 = v36;
        v16 = v14;
        v18 = v7;
        if (v36)
        {
          continue;
        }
      }

      goto LABEL_33;
    }

    v26 = 0;
    v27 = (63 - v22) >> 6;
    v8 = v31;
    while (++v24 != v27 || (v26 & 1) == 0)
    {
      v28 = v24 == v27;
      if (v24 == v27)
      {
        v24 = 0;
      }

      v26 |= v28;
      v29 = *(v13 + 8 * v24);
      if (v29 != -1)
      {
        v25 = __clz(__rbit64(~v29)) + (v24 << 6);
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = v14;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v16 >= v12)
      {
        goto LABEL_33;
      }

      v15 = *(v5 + 8 * v16);
      ++v17;
      if (v15)
      {
        v8 = v31;
        goto LABEL_18;
      }
    }
  }

  __break(1u);
}

uint64_t CommandRecognizer.__allocating_init(transcriber:)(uint64_t a1)
{
  return sub_1AC7233B8();
}

{
  return sub_1AC7233B8();
}

{
  return sub_1AC7233B8();
}

void CommandRecognizer.init(transcriber:)()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_53_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA18, &qword_1AC7B1860);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_482();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA20, &qword_1AC7B1868);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_234();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA28, &qword_1AC7B1870);
  v6 = OUTLINED_FUNCTION_167(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_14();
  OUTLINED_FUNCTION_9_17(OBJC_IVAR____TtC6Speech17CommandRecognizer__workerWithLocked);
  *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_activeSet) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA30, &unk_1AC7B1878);
  OUTLINED_FUNCTION_5_18(v8);
  v9 = OUTLINED_FUNCTION_39_10();
  v10(v9);
  OUTLINED_FUNCTION_18_12();
  sub_1AC7A03B8();
  v11 = OUTLINED_FUNCTION_8_13(OBJC_IVAR____TtC6Speech17CommandRecognizer__results);
  v12(v11);
  sub_1AC5C6E6C();
  OUTLINED_FUNCTION_6_8(v2);
  if (v13)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_21_11();
    v15 = OUTLINED_FUNCTION_38_12(v14);
    v16(v15);
    sub_1AC71F7C8(&qword_1EB56C3D0, type metadata accessor for DictationTranscriber, &protocol conformance descriptor for DictationTranscriber);
    v17 = sub_1AC71F7C8(&qword_1EB56C3D8, type metadata accessor for DictationTranscriber, &unk_1AC7A8D54);
    OUTLINED_FUNCTION_25_13(v17, OBJC_IVAR____TtC6Speech17CommandRecognizer_transcriber);

    *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_assetConfig) = sub_1AC7440D4();
    *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsVolatile) = sub_1AC637EF8() & 1;
    *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsContextualized) = 1;
    *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_dropAlternatives) = (sub_1AC637EF8() & 1) == 0;
    v18 = sub_1AC637EF8();

    *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsLoggableResults) = v18 & 1;
    sub_1AC5C71B8(v1, &qword_1EB56DA28);
    OUTLINED_FUNCTION_52_6();
    OUTLINED_FUNCTION_105();
  }
}

{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_53_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA18, &qword_1AC7B1860);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_482();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA20, &qword_1AC7B1868);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_234();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA28, &qword_1AC7B1870);
  v6 = OUTLINED_FUNCTION_167(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_14();
  OUTLINED_FUNCTION_9_17(OBJC_IVAR____TtC6Speech17CommandRecognizer__workerWithLocked);
  *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_activeSet) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA30, &unk_1AC7B1878);
  OUTLINED_FUNCTION_5_18(v8);
  v9 = OUTLINED_FUNCTION_39_10();
  v10(v9);
  OUTLINED_FUNCTION_18_12();
  sub_1AC7A03B8();
  v11 = OUTLINED_FUNCTION_8_13(OBJC_IVAR____TtC6Speech17CommandRecognizer__results);
  v12(v11);
  sub_1AC5C6E6C();
  OUTLINED_FUNCTION_6_8(v2);
  if (v13)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_21_11();
    v15 = OUTLINED_FUNCTION_38_12(v14);
    v16(v15);
    sub_1AC71F7C8(&qword_1EB56DA38, type metadata accessor for NormalizingTranscriber, &protocol conformance descriptor for NormalizingTranscriber);
    v17 = sub_1AC71F7C8(&qword_1EB56C970, type metadata accessor for NormalizingTranscriber, &unk_1AC7B3D34);
    OUTLINED_FUNCTION_25_13(v17, OBJC_IVAR____TtC6Speech17CommandRecognizer_transcriber);

    *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_assetConfig) = sub_1AC7440D4();
    *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsVolatile) = sub_1AC637EF8() & 1;
    *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsContextualized) = 0;
    *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_dropAlternatives) = (sub_1AC637EF8() & 1) == 0;
    v18 = sub_1AC637EF8();

    *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsLoggableResults) = v18 & 1;
    sub_1AC5C71B8(v1, &qword_1EB56DA28);
    OUTLINED_FUNCTION_52_6();
    OUTLINED_FUNCTION_105();
  }
}

{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_53_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA18, &qword_1AC7B1860);
  OUTLINED_FUNCTION_40();
  v4 = v3;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_482();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA20, &qword_1AC7B1868);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_234();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA28, &qword_1AC7B1870);
  v8 = OUTLINED_FUNCTION_167(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_19();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_14();
  OUTLINED_FUNCTION_9_17(OBJC_IVAR____TtC6Speech17CommandRecognizer__workerWithLocked);
  *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_activeSet) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA30, &unk_1AC7B1878);
  OUTLINED_FUNCTION_5_18(v10);
  v11 = OUTLINED_FUNCTION_39_10();
  v12(v11);
  OUTLINED_FUNCTION_18_12();
  sub_1AC7A03B8();
  v13 = OUTLINED_FUNCTION_8_13(OBJC_IVAR____TtC6Speech17CommandRecognizer__results);
  v14(v13);
  sub_1AC5C6E6C();
  OUTLINED_FUNCTION_6_8(v2);
  if (v15)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_21_11();
    v17 = OUTLINED_FUNCTION_38_12(v16);
    v18(v17);
    OUTLINED_FUNCTION_14_15();
    sub_1AC71F7C8(v19, v4, &protocol conformance descriptor for Transcriber);
    v20 = OUTLINED_FUNCTION_16_15(&qword_1EB56B2A0);
    OUTLINED_FUNCTION_25_13(v20, OBJC_IVAR____TtC6Speech17CommandRecognizer_transcriber);

    v21 = sub_1AC7440D4();
    *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_assetConfig) = v21;
    Transcriber.reportingOptions.getter(v21, v22, v23, v24, v25, v26, v27, v28, v54, v58, v62, v66, v70, v74);
    sub_1AC637EF8();
    OUTLINED_FUNCTION_44_8();
    OUTLINED_FUNCTION_23_16(OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsVolatile);
    Transcriber.transcriptionOptions.getter(v29, v30, v31, v32, v33, v34, v35, v36, v55, v59, v63, v67, v71, v75);
    OUTLINED_FUNCTION_20_14();
    sub_1AC637EF8();
    OUTLINED_FUNCTION_44_8();
    OUTLINED_FUNCTION_23_16(OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsContextualized);
    Transcriber.reportingOptions.getter(v37, v38, v39, v40, v41, v42, v43, v44, v56, v60, v64, v68, v72, v76);
    OUTLINED_FUNCTION_20_14();
    sub_1AC637EF8();
    v45 = OUTLINED_FUNCTION_44_8();
    OUTLINED_FUNCTION_58_5(OBJC_IVAR____TtC6Speech17CommandRecognizer_dropAlternatives, v45, v46, v47, v48, v49, v50, v51, v52, v57, v61, v65, v69, v73, v77);
    v53 = sub_1AC637EF8();

    *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsLoggableResults) = v53 & 1;
    sub_1AC5C71B8(v1, &qword_1EB56DA28);
    OUTLINED_FUNCTION_52_6();
    OUTLINED_FUNCTION_105();
  }
}

uint64_t sub_1AC71F7C8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1AC71FB88()
{
  OUTLINED_FUNCTION_50_0();
  sub_1AC5C71B8(v0, &qword_1EB56DA28);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA30, &unk_1AC7B1878);
  OUTLINED_FUNCTION_80();
  v2 = OUTLINED_FUNCTION_39();
  v3(v2);

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t CommandRecognizer.results.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA20, &qword_1AC7B1868);
  OUTLINED_FUNCTION_80();
  v0 = OUTLINED_FUNCTION_21();

  return v1(v0);
}

__n128 CommandRecognizer.Result.range.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t CommandRecognizer.Result.description.getter()
{
  v1 = *(v0 + 72);
  v18.start.value = 0;
  *&v18.start.timescale = 0xE000000000000000;
  sub_1AC7A09C8();
  v19 = *&v18.start.value;
  MEMORY[0x1B26E8C40](0xD000000000000028, 0x80000001AC7B9230);
  v2 = *(v0 + 16);
  *&v18.start.value = *v0;
  *&v18.start.epoch = v2;
  *&v18.duration.timescale = *(v0 + 32);
  v3 = CMTimeRangeCopyDescription(0, &v18);
  if (!v3)
  {
    v3 = sub_1AC79FF58();
  }

  v18.start.value = v3;
  type metadata accessor for CFString(0);
  sub_1AC7A0AF8();

  OUTLINED_FUNCTION_65();
  MEMORY[0x1B26E8C40](0xD00000000000001ALL);
  v4 = *(v1 + 16);
  value = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v18.start.value = MEMORY[0x1E69E7CC0];
    result = sub_1AC6310CC(0, v4, 0);
    v7 = 0;
    value = v18.start.value;
    while (v7 < *(v1 + 16))
    {

      v9 = sub_1AC71FF18(v8);
      v11 = v10;

      v18.start.value = value;
      v13 = *(value + 16);
      v12 = *(value + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1AC6310CC(v12 > 1, v13 + 1, 1);
        value = v18.start.value;
      }

      ++v7;
      *(value + 16) = v13 + 1;
      v14 = value + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      if (v4 == v7)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    v18.start.value = value;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
    OUTLINED_FUNCTION_13_11();
    sub_1AC726180(v15, &unk_1EB56C640, &unk_1AC7A9BE0, v16);
    sub_1AC79FEA8();

    v17 = OUTLINED_FUNCTION_57_0();
    MEMORY[0x1B26E8C40](v17);

    MEMORY[0x1B26E8C40](4095242, 0xE300000000000000);
    return v19;
  }

  return result;
}

uint64_t sub_1AC71FF18(uint64_t a1)
{
  v2 = type metadata accessor for CommandRecognizer.Interpretation(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = *(a1 + 16);
  if (v4)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1AC6310CC(0, v4, 0);
    v5 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    do
    {
      sub_1AC7261C4();
      CommandRecognizer.Interpretation.description.getter();
      v8 = v7;
      v10 = v9;
      sub_1AC72621C();
      v12 = *(v18 + 16);
      v11 = *(v18 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1AC6310CC(v11 > 1, v12 + 1, 1);
      }

      *(v18 + 16) = v12 + 1;
      v13 = v18 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      v5 += v6;
      --v4;
    }

    while (v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
  sub_1AC726180(&qword_1EB56AC88, &unk_1EB56C640, &unk_1AC7A9BE0, MEMORY[0x1E69E6310]);
  v14 = sub_1AC79FEA8();
  v16 = v15;

  MEMORY[0x1B26E8C40](v14, v16);

  MEMORY[0x1B26E8C40](32010, 0xE200000000000000);
  return 2683;
}

void CommandRecognizer.Interpretation.description.getter()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v2 = type metadata accessor for CommandRecognizer.Argument(0);
  v37 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_6();
  v3 = sub_1AC79FBA8();
  OUTLINED_FUNCTION_40();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_234();
  sub_1AC7A09C8();
  OUTLINED_FUNCTION_65();
  MEMORY[0x1B26E8C40](0xD00000000000002BLL);
  sub_1AC5C6E6C();
  v11 = sub_1AC79FFD8();
  MEMORY[0x1B26E8C40](v11);

  MEMORY[0x1B26E8C40](8285, 0xE200000000000000);
  v12 = type metadata accessor for CommandRecognizer.Interpretation(0);
  MEMORY[0x1B26E8C40](*(v1 + v12[5]), *(v1 + v12[5] + 8));
  MEMORY[0x1B26E8C40](0x2065676E6172202CLL, 0xE800000000000000);
  v13 = sub_1AC724A88(*(v1 + v12[7]), *(v1 + v12[7] + 8));
  MEMORY[0x1B26E8C40](v13);

  MEMORY[0x1B26E8C40](0x2062726576202CLL, 0xE700000000000000);
  (*(v5 + 16))(v9, v0 + v12[8], v3);
  OUTLINED_FUNCTION_0_18();
  sub_1AC71F7C8(v14, v15, MEMORY[0x1E6969B78]);
  sub_1AC7A0118();
  v16 = MEMORY[0x1B26E8D20]();
  v18 = v17;

  MEMORY[0x1B26E8C40](v16, v18);

  MEMORY[0x1B26E8C40](0x656D75677261202CLL, 0xEE000A7B2073746ELL);
  v19 = *(v0 + v12[9]);
  v20 = *(v19 + 16);
  if (v20)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1AC6310CC(0, v20, 0);
    v21 = v19 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v22 = *(v37 + 72);
    do
    {
      sub_1AC7261C4();
      CommandRecognizer.Argument.description.getter();
      v24 = v23;
      v26 = v25;
      sub_1AC72621C();
      v28 = *(v38 + 16);
      v27 = *(v38 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1AC6310CC(v27 > 1, v28 + 1, 1);
      }

      *(v38 + 16) = v28 + 1;
      v29 = v38 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      v21 += v22;
      --v20;
    }

    while (v20);
  }

  v30 = OUTLINED_FUNCTION_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
  OUTLINED_FUNCTION_13_11();
  sub_1AC726180(v32, &unk_1EB56C640, &unk_1AC7A9BE0, v33);
  v34 = sub_1AC79FEA8();
  v36 = v35;

  MEMORY[0x1B26E8C40](v34, v36);

  MEMORY[0x1B26E8C40](4095242, 0xE300000000000000);
  OUTLINED_FUNCTION_105();
}

double sub_1AC720584@<D0>(_OWORD *a1@<X8>)
{
  CommandRecognizer.Result.range.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t CommandRecognizer.availableCompatibleAudioFormats.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF08, &qword_1AC7AB430);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AC7AA7F0;
  if (qword_1EB56B580 != -1)
  {
    OUTLINED_FUNCTION_3_1(&qword_1EB56B580);
  }

  v1 = qword_1EB56E820;
  *(v0 + 32) = qword_1EB56E820;
  v2 = v1;
  return v0;
}

uint64_t CommandRecognizer.availableCompatibleAudioFormats(clientID:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF08, &qword_1AC7AB430);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AC7AA7F0;
  if (qword_1EB56B580 != -1)
  {
    OUTLINED_FUNCTION_3_1(&qword_1EB56B580);
  }

  v1 = qword_1EB56E820;
  *(v0 + 32) = qword_1EB56E820;
  v2 = v1;
  return v0;
}

uint64_t CommandRecognizer.ActiveSet.init(suiteDictionary:resourceBaseURL:)(unint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_56();
  v5 = sub_1AC79F7F8();
  OUTLINED_FUNCTION_40();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v11 = v10 - v9;
  sub_1AC5CF764(0, &unk_1EB56AB48, 0x1E699B9E0);
  sub_1AC71F090(a1);
  v13 = v12;

  v14 = sub_1AC720898(v13);
  if (v14)
  {
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF08, &qword_1AC7AB430);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AC7AA7F0;
    *(inited + 32) = v15;
    if (sub_1AC61C24C())
    {
      v17 = v15;
      v18 = sub_1AC724688(inited);
    }

    else
    {
      swift_setDeallocating();
      v23 = v15;
      sub_1AC724138();
      v18 = MEMORY[0x1E69E7CD0];
    }

    (*(v7 + 16))(v11, a2, v5);
    v24 = objc_allocWithZone(MEMORY[0x1E699B9C8]);
    v22 = sub_1AC723FF8(v18, v11);

    v25 = OUTLINED_FUNCTION_57_0();
    result = v26(v25);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_57_0();
    result = v20(v19);
    v22 = 0;
  }

  *v2 = v22;
  return result;
}

id sub_1AC720898(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1AC79FE18();

  v3 = [v1 initWithPlistJSONDictionary_];

  return v3;
}

uint64_t static CommandRecognizer.ActiveSet.== infix(_:_:)()
{
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  OUTLINED_FUNCTION_39();
  return sub_1AC7A0758() & 1;
}

uint64_t CommandRecognizer.ActiveSet.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  sub_1AC7A0768();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC7209DC(uint64_t a1)
{
  sub_1AC7A0E78();
  sub_1AC7A0768();
  return sub_1AC7A0EC8();
}

uint64_t CommandRecognizer.Interpretation.commandIdentifier.getter()
{
  type metadata accessor for CommandRecognizer.Interpretation(0);

  return OUTLINED_FUNCTION_39();
}

double CommandRecognizer.Interpretation.suiteIdentifiers.getter()
{
  type metadata accessor for CommandRecognizer.Interpretation(0);

  return result;
}

uint64_t CommandRecognizer.Interpretation.verbIndexes.getter()
{
  v0 = OUTLINED_FUNCTION_56();
  type metadata accessor for CommandRecognizer.Interpretation(v0);
  sub_1AC79FBA8();
  OUTLINED_FUNCTION_80();
  v1 = OUTLINED_FUNCTION_21();

  return v2(v1);
}

double CommandRecognizer.Interpretation.arguments.getter()
{
  type metadata accessor for CommandRecognizer.Interpretation(0);

  return result;
}

void CommandRecognizer.Argument.description.getter()
{
  OUTLINED_FUNCTION_104();
  v1 = sub_1AC79FBA8();
  OUTLINED_FUNCTION_40();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  v7 = v6 - v5;
  sub_1AC7A09C8();
  MEMORY[0x1B26E8C40](0xD000000000000024, 0x80000001AC7B92B0);
  sub_1AC7A0AF8();
  MEMORY[0x1B26E8C40](0x2074786574202CLL, 0xE700000000000000);
  MEMORY[0x1B26E8C40](*(v0 + 8), *(v0 + 16));
  MEMORY[0x1B26E8C40](0x73657865646E6920, 0xE900000000000020);
  v8 = type metadata accessor for CommandRecognizer.Argument(0);
  v9 = *(v3 + 16);
  v9(v7, v0 + *(v8 + 24), v1);
  OUTLINED_FUNCTION_0_18();
  sub_1AC71F7C8(v10, v11, MEMORY[0x1E6969B78]);
  sub_1AC7A0118();
  v12 = MEMORY[0x1B26E8D20]();
  v14 = v13;

  MEMORY[0x1B26E8C40](v12, v14);

  OUTLINED_FUNCTION_65();
  MEMORY[0x1B26E8C40](0xD000000000000014);
  v9(v7, v0 + *(v8 + 28), v1);
  v15 = sub_1AC7A0118();
  MEMORY[0x1B26E8D20](v15, MEMORY[0x1E69E6530]);

  v16 = OUTLINED_FUNCTION_57_0();
  MEMORY[0x1B26E8C40](v16);

  MEMORY[0x1B26E8C40](62, 0xE100000000000000);
  OUTLINED_FUNCTION_105();
}

void CommandRecognizer.Interpretation.hash(into:)()
{
  v2 = v1;
  OUTLINED_FUNCTION_25();
  v3 = sub_1AC79F958();
  OUTLINED_FUNCTION_40();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_167(v10);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  sub_1AC5C6E6C();
  if (__swift_getEnumTagSinglePayload(v13, 1, v3) == 1)
  {
    sub_1AC7A0E98();
  }

  else
  {
    (*(v5 + 32))(v9, v13, v3);
    sub_1AC7A0E98();
    OUTLINED_FUNCTION_15_13();
    sub_1AC71F7C8(v14, v15, MEMORY[0x1E69695B8]);
    sub_1AC79FE58();
    (*(v5 + 8))(v9, v3);
  }

  v16 = type metadata accessor for CommandRecognizer.Interpretation(0);
  sub_1AC7A0048();
  sub_1AC6221D4(v0, *(v2 + *(v16 + 24)));
  v17 = (v2 + *(v16 + 28));
  v18 = v17[1];
  MEMORY[0x1B26E9A40](*v17);
  MEMORY[0x1B26E9A40](v18);
  sub_1AC79FBA8();
  OUTLINED_FUNCTION_0_18();
  sub_1AC71F7C8(v19, v20, MEMORY[0x1E6969B60]);
  sub_1AC79FE58();
  sub_1AC63405C();
}

uint64_t CommandRecognizer.Interpretation.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  CommandRecognizer.Interpretation.hash(into:)();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC721394(uint64_t a1)
{
  sub_1AC7A0E78();
  CommandRecognizer.Interpretation.hash(into:)();
  return sub_1AC7A0EC8();
}

uint64_t CommandRecognizer.Argument.text.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t CommandRecognizer.Argument.indexes.getter()
{
  v0 = OUTLINED_FUNCTION_56();
  type metadata accessor for CommandRecognizer.Argument(v0);
  sub_1AC79FBA8();
  OUTLINED_FUNCTION_80();
  v1 = OUTLINED_FUNCTION_21();

  return v2(v1);
}

uint64_t CommandRecognizer.Argument.indexes.setter()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = *(type metadata accessor for CommandRecognizer.Argument(v2) + 24);
  sub_1AC79FBA8();
  OUTLINED_FUNCTION_80();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*CommandRecognizer.Argument.indexes.modify())()
{
  v0 = OUTLINED_FUNCTION_25();
  type metadata accessor for CommandRecognizer.Argument(v0);
  return nullsub_1;
}

uint64_t CommandRecognizer.Argument.adpositionIndexes.getter()
{
  v0 = OUTLINED_FUNCTION_56();
  type metadata accessor for CommandRecognizer.Argument(v0);
  sub_1AC79FBA8();
  OUTLINED_FUNCTION_80();
  v1 = OUTLINED_FUNCTION_21();

  return v2(v1);
}

uint64_t CommandRecognizer.Argument.adpositionIndexes.setter()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = *(type metadata accessor for CommandRecognizer.Argument(v2) + 28);
  sub_1AC79FBA8();
  OUTLINED_FUNCTION_80();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*CommandRecognizer.Argument.adpositionIndexes.modify())()
{
  v0 = OUTLINED_FUNCTION_25();
  type metadata accessor for CommandRecognizer.Argument(v0);
  return nullsub_1;
}

uint64_t CommandRecognizer.Argument.Presence.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_85_1();
  MEMORY[0x1B26E9A40](v1);
  return sub_1AC7A0EC8();
}

uint64_t static CommandRecognizer.Argument.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_50_0();
    v5 = *(v4 + 8) == *(v2 + 8) && *(v3 + 16) == *(v2 + 16);
    if (v5 || (sub_1AC7A0D38() & 1) != 0)
    {
      v6 = type metadata accessor for CommandRecognizer.Argument(0);
      if (MEMORY[0x1B26E8730](v3 + *(v6 + 24), v2 + *(v6 + 24)))
      {

        JUMPOUT(0x1B26E8730);
      }
    }
  }

  return 0;
}

uint64_t CommandRecognizer.Argument.hash(into:)()
{
  OUTLINED_FUNCTION_53_8();
  MEMORY[0x1B26E9A40](*v0);
  sub_1AC7A0048();
  type metadata accessor for CommandRecognizer.Argument(0);
  sub_1AC79FBA8();
  OUTLINED_FUNCTION_0_18();
  sub_1AC71F7C8(v1, v2, MEMORY[0x1E6969B60]);
  sub_1AC79FE58();
  return sub_1AC79FE58();
}

uint64_t CommandRecognizer.Argument.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  MEMORY[0x1B26E9A40](*v0);
  sub_1AC7A0048();
  type metadata accessor for CommandRecognizer.Argument(0);
  sub_1AC79FBA8();
  OUTLINED_FUNCTION_0_18();
  sub_1AC71F7C8(v1, v2, MEMORY[0x1E6969B60]);
  sub_1AC79FE58();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

void *sub_1AC72199C()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer_assetConfig);
  v2 = v1;
  return v1;
}

uint64_t sub_1AC7219DC(uint64_t a1)
{
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](*v1);
  sub_1AC7A0048();
  sub_1AC79FBA8();
  sub_1AC71F7C8(&qword_1EB56C538, MEMORY[0x1E6969B50], MEMORY[0x1E6969B60]);
  sub_1AC79FE58();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC721AB4()
{
  v1 = v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer__workerWithLocked;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer__workerWithLocked));
  v2 = *(v1 + 8);

  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t sub_1AC721AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC721B20, 0, 0);
}

uint64_t sub_1AC721B20()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return MEMORY[0x1EEE6DFA0](sub_1AC721B50, v1, 0);
  }

  **(v0 + 16) = 1;
  return OUTLINED_FUNCTION_34_0();
}

uint64_t sub_1AC721B50()
{
  OUTLINED_FUNCTION_85();
  sub_1AC765B60(*(v0 + 32), *(v0 + 24));

  return MEMORY[0x1EEE6DFA0](sub_1AC6AE248, 0, 0);
}

BOOL sub_1AC721BB4(char *a1)
{
  if (object_getClass(a1) != _TtC6Speech22SpeechRecognizerWorker || a1 == 0)
  {
    return 0;
  }

  swift_unknownObjectRetain();
  v3 = sub_1AC721C28();
  swift_unknownObjectRelease();
  return v3;
}

BOOL sub_1AC721C28()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = type metadata accessor for SpeechRecognizerSupportedFeatures(v2);
  if (*(v0 + *(v3 + 32)) != 1)
  {
    return 0;
  }

  v4 = *(v1 + OBJC_IVAR____TtC6Speech17CommandRecognizer_activeSet);
  v5 = *(v0 + *(v3 + 48) + 8);
  result = (v4 | v5) == 0;
  if (v4)
  {
    if (v5)
    {
      sub_1AC5CF764(0, &unk_1EB56AB00, 0x1E699B9C8);
      v7 = v4;
      v8 = v5;
      v9 = sub_1AC7A0758();

      return v9 & 1;
    }
  }

  return result;
}

uint64_t sub_1AC721CE0@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_2_21();
  sub_1AC7261C4();
  *(v8 + *(v4 + 32)) = 1;
  v9 = *(v2 + OBJC_IVAR____TtC6Speech17CommandRecognizer_activeSet);
  if (v9)
  {
    v10 = v8 + *(v4 + 48);
    v11 = *(v10 + 8);
    if (!v11)
    {
      *v10 = *v10;
      *(v10 + 8) = v9;
      OUTLINED_FUNCTION_2_21();
      sub_1AC7261C4();
      __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
      v17 = v9;
      return sub_1AC72621C();
    }

    sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
    v12 = v9;
    v13 = v11;
    v14 = sub_1AC7A0758();

    if (v14)
    {
      goto LABEL_4;
    }

LABEL_6:
    v15 = a2;
    v16 = 1;
    goto LABEL_7;
  }

  if (*(v8 + *(v4 + 48) + 8))
  {
    goto LABEL_6;
  }

LABEL_4:
  OUTLINED_FUNCTION_2_21();
  sub_1AC7261C4();
  v15 = a2;
  v16 = 0;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v15, v16, 1, v4);
  return sub_1AC72621C();
}

uint64_t CommandRecognizer.recognizerObjectIdentifier.getter()
{
  v0 = sub_1AC721AB4();
  if (!v0)
  {
    return 0;
  }

  v1 = *(v0 + 112);

  return v1;
}

void sub_1AC721EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unsigned __int8 *a27, uint64_t a28, __int128 *a29, uint64_t a30)
{
  OUTLINED_FUNCTION_104();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DAB8, &qword_1AC7B1D78);
  OUTLINED_FUNCTION_40();
  v41 = v40;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v125 - v43;
  v45 = *a27;
  if (v45 >= 3)
  {
    if (v45 == 6 && (*(v30 + OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsLoggableResults) & 1) == 0)
    {
      goto LABEL_77;
    }
  }

  else if (*(v30 + OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsVolatile) != 1)
  {
    goto LABEL_77;
  }

  if (*(v30 + OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsContextualized))
  {
    v36 = v32;
  }

  else
  {
    a21 = v34;
  }

  v47 = *(v30 + OBJC_IVAR____TtC6Speech17CommandRecognizer_dropAlternatives);
  v136 = v44;
  v137 = v38;
  if (v47 == 1)
  {
    v135 = a21;
    sub_1AC7536A4();
    OUTLINED_FUNCTION_54_4();
    if (a21)
    {
      sub_1AC7A0D68();
      swift_unknownObjectRetain_n();
      v55 = swift_dynamicCastClass();
      if (!v55)
      {
        swift_unknownObjectRelease();
        v55 = MEMORY[0x1E69E7CC0];
      }

      v56 = *(v55 + 16);

      if (__OFSUB__(a21 >> 1, v36))
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      if (v56 != (a21 >> 1) - v36)
      {
        goto LABEL_88;
      }

      v53 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v54 = v135;
      v44 = v136;
      if (v53)
      {
        goto LABEL_19;
      }

      v53 = MEMORY[0x1E69E7CC0];
      goto LABEL_18;
    }

    while (1)
    {
      v48 = OUTLINED_FUNCTION_45_10();
      sub_1AC751B94(v48, v49, v50, v51);
      v53 = v52;
      v54 = v135;
LABEL_18:
      swift_unknownObjectRelease();
LABEL_19:
      v134 = v53;
      sub_1AC7536A4();
      OUTLINED_FUNCTION_54_4();
      if ((a21 & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_1AC7A0D68();
      swift_unknownObjectRetain_n();
      v62 = swift_dynamicCastClass();
      if (!v62)
      {
        swift_unknownObjectRelease();
        v62 = MEMORY[0x1E69E7CC0];
      }

      v63 = *(v62 + 16);

      if (!__OFSUB__(a21 >> 1, v54))
      {
        break;
      }

LABEL_87:
      __break(1u);
LABEL_88:
      swift_unknownObjectRelease();
      v44 = v136;
    }

    if (v63 != (a21 >> 1) - v54)
    {
      swift_unknownObjectRelease();
      v44 = v136;
LABEL_20:
      v57 = OUTLINED_FUNCTION_45_10();
      sub_1AC751E60(v57, v58, v59, v60);
      a21 = v61;
      goto LABEL_28;
    }

    a21 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v44 = v136;
    if (a21)
    {
      v38 = v137;
      v36 = v134;
      goto LABEL_29;
    }

    a21 = MEMORY[0x1E69E7CC0];
LABEL_28:
    v36 = v134;
    swift_unknownObjectRelease();
    v38 = v137;
  }

LABEL_29:
  v64 = 0;
  v65 = 0;
  v66 = -*(v36 + 16);
  v67 = MEMORY[0x1E69E7CC0];
  v132 = a30;
  v138 = a29;
  v139 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v68 = v64 + 4;
  while (v66 + v68 != 4)
  {
    v69 = v68 - 4;
    if ((v68 - 4) >= *(v36 + 16))
    {
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v70 = *(a21 + 16);
    if (v69 == v70)
    {
      break;
    }

    if (v69 >= v70)
    {
      goto LABEL_79;
    }

    v71 = *(v36 + 8 * v68);
    v72 = *(a21 + 8 * v68);
    if (v71 >> 62)
    {
      v133 = v65;
      v130 = v72;
      v131 = v66;
      v73 = sub_1AC7A08E8();
      v67 = MEMORY[0x1E69E7CC0];
      v72 = v130;
      v66 = v131;
      v65 = v133;
    }

    else
    {
      v73 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v68;
    if (v73)
    {
      v145[0] = v67;
      if (v73 < 1)
      {
        __break(1u);
        goto LABEL_86;
      }

      v131 = v66;
      v133 = v65;
      v134 = v36;
      v135 = a21;
      v127 = v41;
      v128 = v39;
      v129 = v30;
      v126 = v68 - 4;
      v140 = v73;
      v141 = v71 & 0xC000000000000001;
      v74 = v72;

      v130 = v74;

      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = &selRef_initWithText_confidence_startTime_duration_;
      while (1)
      {
        if (v141)
        {
          v79 = MEMORY[0x1B26E95B0](v76, v71);
        }

        else
        {
          v79 = *(v71 + 8 * v76 + 32);
        }

        v80 = v79;
        v81 = 0;
        if ([v79 v78[310]] && v77)
        {
          v81 = [v77 hasSpaceAfter];
        }

        if ([v80 v78[310]])
        {
          v82 = v145[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v92 = OUTLINED_FUNCTION_53_3();
            sub_1AC60ED68(v92, v93, v94, v82);
            v82 = v95;
          }

          v84 = *(v82 + 16);
          v83 = *(v82 + 24);
          if (v84 >= v83 >> 1)
          {
            v96 = OUTLINED_FUNCTION_49_7(v83);
            sub_1AC60ED68(v96, v97, v98, v82);
            v82 = v99;
          }

          *(v82 + 16) = v84 + 1;
          *(v82 + 8 * v84 + 32) = v75;
          v145[0] = v82;
          if (v81)
          {
            v78 = &selRef_initWithText_confidence_startTime_duration_;
          }

          else
          {
            v85 = __OFADD__(v75++, 1);
            v78 = &selRef_initWithText_confidence_startTime_duration_;
            if (v85)
            {
              goto LABEL_83;
            }
          }
        }

        v86 = [v80 tokenName];
        sub_1AC79FF68();

        v87 = sub_1AC7A0058();

        v88 = v75 + v87;
        if (__OFADD__(v75, v87))
        {
          goto LABEL_80;
        }

        if (v88 < v75)
        {
          goto LABEL_81;
        }

        sub_1AC6593D0(v75, v88);
        if ([v80 hasSpaceAfter])
        {
          v89 = v145[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v100 = OUTLINED_FUNCTION_53_3();
            sub_1AC60ED68(v100, v101, v102, v89);
            v89 = v103;
          }

          v91 = *(v89 + 16);
          v90 = *(v89 + 24);
          if (v91 >= v90 >> 1)
          {
            sub_1AC60ED68(v90 > 1, v91 + 1, 1, v89);
            v89 = v104;
          }

          *(v89 + 16) = v91 + 1;
          *(v89 + 8 * v91 + 32) = v88;
          v145[0] = v89;
          v85 = __OFADD__(v88++, 1);
          if (v85)
          {
            goto LABEL_82;
          }
        }

        else
        {
        }

        ++v76;
        v75 = v88;
        v77 = v80;
        if (v140 == v76)
        {

          MEMORY[0x1EEE9AC00](v105);
          *(&v125 - 2) = v145;
          v106 = v133;
          *(&v125 - 1) = v132;
          sub_1AC72C200(sub_1AC726330, (&v125 - 4), v130);
          v108 = v107;
          v133 = v106;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_53_3();
            sub_1AC60ECAC();
            v139 = v112;
          }

          v39 = v128;
          v30 = v129;
          v41 = v127;
          v44 = v136;
          v38 = v137;
          v110 = *(v139 + 16);
          v109 = *(v139 + 24);
          if (v110 >= v109 >> 1)
          {
            OUTLINED_FUNCTION_49_7(v109);
            sub_1AC60ECAC();
            v139 = v113;
          }

          v111 = v139;
          *(v139 + 16) = v110 + 1;
          *(v111 + 8 * v110 + 32) = v108;

          v36 = v134;
          a21 = v135;
          v65 = v133;
          v66 = v131;
          v67 = MEMORY[0x1E69E7CC0];
          v64 = v126;
          goto LABEL_30;
        }
      }
    }
  }

  v114 = *v138;
  *&v144[4] = *(v138 + 2);
  v115 = v38[1];
  v144[0] = *v38;
  v144[1] = v115;
  v144[2] = v38[2];
  v144[3] = v114;
  memcpy(v145, v144, 0x48uLL);
  v145[9] = v139;
  memcpy(v144, v145, sizeof(v144));
  sub_1AC726350(v145, v143);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA30, &unk_1AC7B1878);
  sub_1AC7A0388();
  (*(v41 + 8))(v44, v39);
  if (off_1ED937D60 == -1)
  {
    goto LABEL_74;
  }

LABEL_84:
  OUTLINED_FUNCTION_3(&off_1ED937D60);
LABEL_74:
  v116 = sub_1AC79FDE8();
  __swift_project_value_buffer(v116, qword_1ED9386C8);
  sub_1AC726350(v145, v144);
  v117 = sub_1AC79FDC8();
  v118 = sub_1AC7A05E8();
  sub_1AC726388(v145);
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v142 = v120;
    *v119 = 136315138;
    memcpy(v143, v145, sizeof(v143));
    v121 = CommandRecognizer.Result.description.getter();
    v123 = v122;
    memcpy(v144, v143, sizeof(v144));
    sub_1AC726388(v144);
    v124 = sub_1AC5CFE74(v121, v123, &v142);

    *(v119 + 4) = v124;
    _os_log_impl(&dword_1AC5BC000, v117, v118, "CommandRecognizer: Yielded result %s", v119, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v120);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
  }

  else
  {

    sub_1AC726388(v145);
  }

LABEL_77:
  OUTLINED_FUNCTION_105();
}

char *sub_1AC722758@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DAC0, &unk_1AC7B1D80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v49 - v8;
  v10 = sub_1AC79FBA8();
  v57 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v49 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v49 - v16;
  v18 = *a1;
  v19 = [v18 arguments];
  sub_1AC5CF764(0, &qword_1EB56DAC8, 0x1E699B9D0);
  v20 = sub_1AC7A0158();

  v21 = v58;
  sub_1AC71E47C(v20, a2);
  v58 = v22;
  v55 = v21;

  v59 = v17;
  sub_1AC5C6E6C();
  v23 = [v18 commandIdentifier];
  v53 = sub_1AC79FF68();
  v25 = v24;

  v26 = [v18 suiteIdentifiers];
  v54 = sub_1AC7A0448();

  v27 = [v18 range];
  v29 = v28;
  result = sub_1AC79F448();
  v31 = 0;
  v32 = 0;
  if (v27 != result)
  {
    v31 = &v27[v29];
    if (__OFADD__(v27, v29))
    {
      __break(1u);
      return result;
    }

    v32 = v27;
  }

  v50 = v32;
  v51 = v31;
  v33 = *a2;

  v34 = [v18 verbIndexes];
  v52 = v25;
  if (v34)
  {
    v35 = v34;
    sub_1AC79FB88();

    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = v53;
  __swift_storeEnumTagSinglePayload(v9, v36, 1, v10);
  v38 = sub_1AC723090(v9, v33);

  sub_1AC5C71B8(v9, &qword_1EB56DAC0);
  sub_1AC71F7C8(&qword_1EB56DAD0, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  sub_1AC7A0858();
  v39 = *(v38 + 16);
  if (v39)
  {
    v40 = (v38 + 32);
    do
    {
      v41 = *v40++;
      v60 = v41;
      sub_1AC7A0848();
      --v39;
    }

    while (v39);
  }

  v42 = v56;
  v43 = *(v57 + 32);
  v43(v56, v13, v10);
  sub_1AC637E08();
  v44 = type metadata accessor for CommandRecognizer.Interpretation(0);
  v45 = (a4 + v44[5]);
  v46 = v52;
  *v45 = v37;
  v45[1] = v46;
  *(a4 + v44[6]) = v54;
  v47 = (a4 + v44[7]);
  v48 = v51;
  *v47 = v50;
  v47[1] = v48;
  result = (v43)(a4 + v44[8], v42, v10);
  *(a4 + v44[9]) = v58;
  return result;
}

uint64_t sub_1AC722BC4@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DAC0, &unk_1AC7B1D80);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v48 - v9;
  v11 = sub_1AC79FBA8();
  v55 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v54 = &v48 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v48 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v48 - v20;
  v21 = *a1;
  v52 = [v21 presence];
  if (v52 >= 4)
  {
    result = sub_1AC7A0B78();
    __break(1u);
  }

  else
  {
    v22 = sub_1AC724A24(v21);
    v50 = v23;
    v51 = v22;
    v49 = a2;
    v24 = *a2;

    v25 = [v21 indexes];
    v56 = a3;
    if (v25)
    {
      v26 = v25;
      sub_1AC79FB88();

      v27 = 0;
    }

    else
    {
      v27 = 1;
    }

    __swift_storeEnumTagSinglePayload(v10, v27, 1, v11);
    v28 = sub_1AC723090(v10, v24);

    sub_1AC5C71B8(v10, &qword_1EB56DAC0);
    sub_1AC71F7C8(&qword_1EB56DAD0, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
    sub_1AC7A0858();
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = (v28 + 32);
      do
      {
        v31 = *v30++;
        v58 = v31;
        sub_1AC7A0848();
        --v29;
      }

      while (v29);
    }

    v32 = *(v55 + 32);
    v32(v57, v19, v11);
    v33 = *v49;

    v34 = [v21 adpositionIndexes];
    if (v34)
    {
      v35 = v34;
      v36 = v53;
      sub_1AC79FB88();

      v37 = 0;
    }

    else
    {
      v37 = 1;
      v36 = v53;
    }

    __swift_storeEnumTagSinglePayload(v36, v37, 1, v11);
    v38 = sub_1AC723090(v36, v33);

    sub_1AC5C71B8(v36, &qword_1EB56DAC0);
    sub_1AC7A0858();
    v39 = *(v38 + 16);
    if (v39)
    {
      v40 = (v38 + 32);
      do
      {
        v41 = *v40++;
        v58 = v41;
        sub_1AC7A0848();
        --v39;
      }

      while (v39);
    }

    if (v50)
    {
      v42 = v50;
    }

    else
    {
      v42 = 0xE000000000000000;
    }

    if (v50)
    {
      v43 = v51;
    }

    else
    {
      v43 = 0;
    }

    v44 = v54;
    v32(v54, v14, v11);
    v45 = v56;
    *v56 = v52;
    *(v45 + 1) = v43;
    *(v45 + 2) = v42;
    v46 = type metadata accessor for CommandRecognizer.Argument(0);
    v32(&v45[*(v46 + 24)], v57, v11);
    return (v32)(&v45[*(v46 + 28)], v44, v11);
  }

  return result;
}

uint64_t sub_1AC723090(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DAC0, &unk_1AC7B1D80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_1AC79FBA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AC5C6E6C();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1AC5C71B8(v5, &qword_1EB56DAC0);
  }

  else
  {
    v10 = (*(v7 + 32))(v9, v5, v6);
    MEMORY[0x1EEE9AC00](v10);
    *(&v19 - 2) = v9;

    sub_1AC723EC4(sub_1AC7263DC, (&v19 - 4), a2);
    v12 = v11;
    v13 = *(v11 + 16);
    if (v13)
    {
      v20 = v7;
      v21 = MEMORY[0x1E69E7CC0];
      sub_1AC631164(0, v13, 0);
      a2 = v21;
      v14 = *(v21 + 16);
      v15 = 40;
      do
      {
        v16 = *(v12 + v15);
        v21 = a2;
        v17 = *(a2 + 24);
        if (v14 >= v17 >> 1)
        {
          sub_1AC631164(v17 > 1, v14 + 1, 1);
          a2 = v21;
        }

        *(a2 + 16) = v14 + 1;
        *(a2 + 8 * v14 + 32) = v16;
        v15 += 16;
        ++v14;
        --v13;
      }

      while (v13);

      v7 = v20;
    }

    else
    {

      a2 = MEMORY[0x1E69E7CC0];
    }

    (*(v7 + 8))(v9, v6);
  }

  return a2;
}

uint64_t sub_1AC723340(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA30, &unk_1AC7B1878);
  return sub_1AC7A0398();
}

uint64_t sub_1AC7233B8()
{
  v2 = OUTLINED_FUNCTION_43_6();
  v0(v1);
  return v2;
}

uint64_t CommandRecognizer.__allocating_init(transcriber:activeSet:)()
{
  v0 = OUTLINED_FUNCTION_43_6();
  CommandRecognizer.init(transcriber:activeSet:)();
  return v0;
}

void CommandRecognizer.init(transcriber:activeSet:)()
{
  OUTLINED_FUNCTION_104();
  v2 = v0;
  v4 = v3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA18, &qword_1AC7B1860);
  OUTLINED_FUNCTION_40();
  v6 = v5;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v59 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA20, &qword_1AC7B1868);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_234();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA28, &qword_1AC7B1870);
  v12 = OUTLINED_FUNCTION_167(v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (&v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_26_14();
  v16 = *v4;
  OUTLINED_FUNCTION_9_17(OBJC_IVAR____TtC6Speech17CommandRecognizer__workerWithLocked);
  *(v2 + OBJC_IVAR____TtC6Speech17CommandRecognizer_activeSet) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA30, &unk_1AC7B1878);
  OUTLINED_FUNCTION_5_18(v17);
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8790], v59);
  v18 = v16;
  OUTLINED_FUNCTION_18_12();
  sub_1AC7A03B8();
  v19 = OUTLINED_FUNCTION_8_13(OBJC_IVAR____TtC6Speech17CommandRecognizer__results);
  v20(v19);
  sub_1AC5C6E6C();
  OUTLINED_FUNCTION_6_8(v15);
  if (v21)
  {
    __break(1u);
  }

  else
  {

    OUTLINED_FUNCTION_21_11();
    (*(v22 + 32))(v2 + v23, v15, v4);
    OUTLINED_FUNCTION_14_15();
    sub_1AC71F7C8(v24, v15, &protocol conformance descriptor for Transcriber);
    v25 = OUTLINED_FUNCTION_16_15(&qword_1EB56B2A0);
    OUTLINED_FUNCTION_25_13(v25, OBJC_IVAR____TtC6Speech17CommandRecognizer_transcriber);

    v26 = sub_1AC7440D4();
    *(v2 + OBJC_IVAR____TtC6Speech17CommandRecognizer_assetConfig) = v26;
    Transcriber.reportingOptions.getter(v26, v27, v28, v29, v30, v31, v32, v33, v59, v60, v61, v62, v63, v64);
    sub_1AC637EF8();
    OUTLINED_FUNCTION_44_8();
    OUTLINED_FUNCTION_23_16(OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsVolatile);
    Transcriber.transcriptionOptions.getter(v34, v35, v36, v37, v38, v39, v40, v41, v59, v60, v61, v62, v63, v64);
    OUTLINED_FUNCTION_20_14();
    sub_1AC637EF8();
    OUTLINED_FUNCTION_44_8();
    OUTLINED_FUNCTION_23_16(OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsContextualized);
    Transcriber.reportingOptions.getter(v42, v43, v44, v45, v46, v47, v48, v49, v59, v60, v61, v62, v63, v64);
    OUTLINED_FUNCTION_20_14();
    sub_1AC637EF8();
    v50 = OUTLINED_FUNCTION_44_8();
    OUTLINED_FUNCTION_58_5(OBJC_IVAR____TtC6Speech17CommandRecognizer_dropAlternatives, v50, v51, v52, v53, v54, v55, v56, v57, v59, v60, v61, v62, v63, v64);
    v58 = sub_1AC637EF8();

    *(v2 + OBJC_IVAR____TtC6Speech17CommandRecognizer_wantsLoggableResults) = v58 & 1;
    sub_1AC5C71B8(v1, &qword_1EB56DA28);
    OUTLINED_FUNCTION_52_6();
    OUTLINED_FUNCTION_105();
  }
}

uint64_t CommandRecognizer.deinit()
{
  v1 = OBJC_IVAR____TtC6Speech17CommandRecognizer__results;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA20, &qword_1AC7B1868);
  OUTLINED_FUNCTION_80();
  (*(v2 + 8))(v0 + v1);
  swift_unknownObjectRelease();

  sub_1AC5C71B8(v0 + OBJC_IVAR____TtC6Speech17CommandRecognizer__workerWithLocked + 8, &qword_1EB56CB00);
  v3 = OBJC_IVAR____TtC6Speech17CommandRecognizer_resultsBuilder;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DA30, &unk_1AC7B1878);
  OUTLINED_FUNCTION_80();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t CommandRecognizer.__deallocating_deinit()
{
  CommandRecognizer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1AC723C5C()
{
  v1 = CommandRecognizer.availableCompatibleAudioFormats.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1AC723CD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6B2F6C;

  return OUTLINED_FUNCTION_28_4();
}

uint64_t sub_1AC723D68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6B30E8;

  return sub_1AC6B2588();
}

void sub_1AC723EC4(uint64_t (*result)(void *), uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_13;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    v9 = *(a3 + 8 * v6 + 32);
    v16[0] = v6;
    v16[1] = v9;
    v10 = v5(v16);
    if (v3)
    {

LABEL_13:

      return;
    }

    if (v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AC631474(0, *(v8 + 16) + 1, 1);
        v8 = v17;
      }

      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1AC631474(v12 > 1, v13 + 1, 1);
        v8 = v17;
      }

      *(v8 + 16) = v13 + 1;
      v14 = v8 + 16 * v13;
      *(v14 + 32) = v6;
      *(v14 + 40) = v9;
      v5 = result;
    }

    ++v6;
  }

  __break(1u);
}

id sub_1AC723FF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1AC5CF764(0, &unk_1EB56AB48, 0x1E699B9E0);
  sub_1AC7263FC();
  v5 = sub_1AC7A0438();

  v6 = sub_1AC79F788();
  v7 = [v3 initWithSuites:v5 resourceBaseURL:v6];

  v8 = sub_1AC79F7F8();
  (*(*(v8 - 8) + 8))(a2, v8);
  return v7;
}

uint64_t sub_1AC7240CC()
{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1AC724138()
{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1AC724194(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v2, 32, 7);
}

void sub_1AC724260()
{
  OUTLINED_FUNCTION_185_0();
  if (!v1)
  {
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BDA8, &unk_1AC7B1E10);
  OUTLINED_FUNCTION_35_7();
  v2 = sub_1AC7A0988();
  v3 = v2;
  v20 = *(v0 + 16);
  if (!v20)
  {
    goto LABEL_31;
  }

  v4 = 0;
  v5 = v2 + 56;
  while (1)
  {
    if (v4 >= *(v0 + 16))
    {
      __break(1u);
      goto LABEL_33;
    }

    v6 = *(v0 + 32 + 8 * v4);
    sub_1AC7A0E78();
    if (!v6)
    {
      v7 = 0;
      goto LABEL_11;
    }

    if (v6 == 1)
    {
      v7 = 1;
      goto LABEL_11;
    }

    if (v6 == 2)
    {
      v7 = 2;
LABEL_11:
      MEMORY[0x1B26E9A40](v7);
      goto LABEL_13;
    }

    MEMORY[0x1B26E9A40](3);
    sub_1AC61C264(v6);
    sub_1AC7A0768();
LABEL_13:
    v8 = sub_1AC7A0EC8();
    v9 = ~(-1 << *(v3 + 32));
    v10 = v8 & v9;
    v11 = (v8 & v9) >> 6;
    v12 = *(v5 + 8 * v11);
    v13 = 1 << (v8 & v9);
    if ((v13 & v12) == 0)
    {
      break;
    }

    while (1)
    {
      v14 = *(*(v3 + 48) + 8 * v10);
      if (v14)
      {
        break;
      }

      sub_1AC623E3C(0);
      if (!v6)
      {
        v19 = 0;
        goto LABEL_29;
      }

LABEL_25:
      v10 = (v10 + 1) & v9;
      v11 = v10 >> 6;
      v12 = *(v5 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if ((v12 & (1 << v10)) == 0)
      {
        goto LABEL_26;
      }
    }

    if (v14 == 1)
    {
      sub_1AC623E3C(1);
      if (v6 == 1)
      {
        v19 = 1;
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    if (v14 == 2)
    {
      sub_1AC623E3C(2);
      if (v6 == 2)
      {
        v19 = 2;
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    if (v6 < 3)
    {
      goto LABEL_25;
    }

    sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
    sub_1AC61C264(v14);
    v15 = sub_1AC7A0758();
    sub_1AC623E3C(v14);
    if ((v15 & 1) == 0)
    {
      goto LABEL_25;
    }

    v19 = v6;
LABEL_29:
    sub_1AC623E3C(v19);
LABEL_30:
    if (++v4 == v20)
    {
LABEL_31:

      return;
    }
  }

LABEL_26:
  *(v5 + 8 * v11) = v12 | v13;
  *(*(v3 + 48) + 8 * v10) = v6;
  v16 = *(v3 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v3 + 16) = v18;
    goto LABEL_30;
  }

LABEL_33:
  __break(1u);
}

void sub_1AC7244B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_185_0();
  if (v31 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE90, &qword_1AC7A82A0), OUTLINED_FUNCTION_35_7(), v32 = sub_1AC7A0988(), v33 = v32, (v34 = *(v30 + 16)) != 0))
  {
    v35 = 0;
    v36 = v32 + 56;
    while (v35 < *(v30 + 16))
    {
      v37 = (v30 + 32 + 16 * v35);
      v39 = *v37;
      v38 = v37[1];
      ++v35;
      sub_1AC7A0E78();

      sub_1AC7A0048();
      v40 = sub_1AC7A0EC8();
      v41 = ~(-1 << *(v33 + 32));
      while (1)
      {
        v42 = v40 & v41;
        v43 = (v40 & v41) >> 6;
        v44 = *(v36 + 8 * v43);
        v45 = 1 << (v40 & v41);
        if ((v45 & v44) == 0)
        {
          break;
        }

        v46 = (*(v33 + 48) + 16 * v42);
        v47 = *v46 == v39 && v46[1] == v38;
        if (v47 || (sub_1AC7A0D38() & 1) != 0)
        {

          goto LABEL_16;
        }

        v40 = v42 + 1;
      }

      *(v36 + 8 * v43) = v45 | v44;
      v48 = (*(v33 + 48) + 16 * v42);
      *v48 = v39;
      v48[1] = v38;
      v49 = *(v33 + 16);
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_19;
      }

      *(v33 + 16) = v51;
LABEL_16:
      if (v35 == v34)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:

    OUTLINED_FUNCTION_61_0();
  }
}

uint64_t sub_1AC724688(uint64_t a1)
{
  if (sub_1AC61C24C())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DAD8, &unk_1AC7B1DA0);
    v2 = sub_1AC7A0988();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v20 = sub_1AC61C24C();
  if (v20)
  {
    v3 = 0;
    v4 = v2 + 56;
    v18 = a1;
    v19 = a1 & 0xC000000000000001;
    v17 = a1 + 32;
    while (1)
    {
      sub_1AC61C25C();
      result = v19 ? MEMORY[0x1B26E95B0](v3, a1) : *(v17 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = sub_1AC7A0748();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_1AC5CF764(0, &unk_1EB56AB48, 0x1E699B9E0);
        v13 = *(*(v2 + 48) + 8 * v9);
        v14 = sub_1AC7A0758();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v15 = *(v2 + 16);
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v16;
LABEL_17:
      a1 = v18;
      if (v3 == v20)
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

    return v2;
  }

  return result;
}

void sub_1AC724860()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_185_0();
  if (v1 && (v6 = OUTLINED_FUNCTION_130_0(v4, v5), __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7), OUTLINED_FUNCTION_35_7(), v8 = sub_1AC7A0988(), (v9 = *(v0 + 16)) != 0))
  {
    OUTLINED_FUNCTION_41_10();
    while (v3 < *(v0 + 16))
    {
      OUTLINED_FUNCTION_59_7();
      MEMORY[0x1B26E9A40](v2);
      sub_1AC7A0EC8();
      while (1)
      {
        OUTLINED_FUNCTION_40_11();
        if (v11)
        {
          break;
        }

        if (v2 == *(*(v8 + 48) + v10))
        {
          goto LABEL_11;
        }
      }

      OUTLINED_FUNCTION_33_10();
      if (v13)
      {
        goto LABEL_14;
      }

      *(v8 + 16) = v12;
LABEL_11:
      if (v3 == v9)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    OUTLINED_FUNCTION_61_0();
  }
}

void sub_1AC72494C()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_185_0();
  if (v1 && (v6 = OUTLINED_FUNCTION_130_0(v4, v5), __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7), OUTLINED_FUNCTION_35_7(), v8 = sub_1AC7A0988(), (v9 = *(v0 + 16)) != 0))
  {
    OUTLINED_FUNCTION_41_10();
    while (v3 < *(v0 + 16))
    {
      OUTLINED_FUNCTION_59_7();
      MEMORY[0x1B26E9A40](v2);
      sub_1AC7A0EC8();
      while (1)
      {
        OUTLINED_FUNCTION_40_11();
        if (v11)
        {
          break;
        }

        if (*(*(v8 + 48) + v10) == v2)
        {
          goto LABEL_11;
        }
      }

      OUTLINED_FUNCTION_33_10();
      if (v13)
      {
        goto LABEL_14;
      }

      *(v8 + 16) = v12;
LABEL_11:
      if (v3 == v9)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    OUTLINED_FUNCTION_61_0();
  }
}

uint64_t sub_1AC724A24(void *a1)
{
  v1 = [a1 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1AC79FF68();

  return v3;
}

uint64_t sub_1AC724A88(uint64_t a1, uint64_t a2)
{
  sub_1AC7A0AF8();
  MEMORY[0x1B26E8C40](3943982, 0xE300000000000000);
  sub_1AC7A0AF8();
  return 0;
}

unint64_t sub_1AC724B40()
{
  result = qword_1EB56DA58;
  if (!qword_1EB56DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56DA58);
  }

  return result;
}

unint64_t sub_1AC724C24()
{
  result = qword_1EB56DA78;
  if (!qword_1EB56DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56DA78);
  }

  return result;
}

uint64_t sub_1AC724D80(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  *(a1 + 8) = sub_1AC71F7C8(a4, type metadata accessor for CommandRecognizer, a5);
  result = sub_1AC71F7C8(a6, type metadata accessor for CommandRecognizer, a7);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AC724DEC(uint64_t a1)
{
  result = sub_1AC71F7C8(&qword_1EB56AF88, type metadata accessor for CommandRecognizer, &unk_1AC7B1B98);
  *(a1 + 8) = result;
  return result;
}

void sub_1AC724E94(uint64_t a1)
{
  sub_1AC72502C(319, &qword_1EB56AC18, MEMORY[0x1E69E87C8]);
  if (v1 <= 0x3F)
  {
    sub_1AC72502C(319, &qword_1EB56AC58, MEMORY[0x1E69E87A0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of CommandRecognizer.__allocating_init(transcriber:)()
{
  return (*(v0 + 160))();
}

{
  return (*(v0 + 168))();
}

{
  return (*(v0 + 176))();
}

void sub_1AC72502C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB56D450, &qword_1AC7A7E50);
    v7 = a3(a1, &type metadata for CommandRecognizer.Result, v6, MEMORY[0x1E69E7288]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for CommandRecognizer.Interpretation(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1AC79F958();
    if (__swift_getEnumTagSinglePayload(a2, 1, v7))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
      memcpy(a1, a2, *(*(v8 - 8) + 64));
    }

    else
    {
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      __swift_storeEnumTagSinglePayload(a1, 0, 1, v7);
    }

    v10 = a3[5];
    v11 = a3[6];
    v12 = (a1 + v10);
    v13 = (a2 + v10);
    v14 = v13[1];
    *v12 = *v13;
    v12[1] = v14;
    *(a1 + v11) = *(a2 + v11);
    v15 = a3[8];
    *(a1 + a3[7]) = *(a2 + a3[7]);
    v16 = sub_1AC79FBA8();
    v17 = *(*(v16 - 8) + 16);

    v17(a1 + v15, a2 + v15, v16);
    *(a1 + a3[9]) = *(a2 + a3[9]);
  }

  return a1;
}

uint64_t destroy for CommandRecognizer.Interpretation(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC79F958();
  if (!__swift_getEnumTagSinglePayload(a1, 1, v4))
  {
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  v5 = *(a2 + 32);
  v6 = sub_1AC79FBA8();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
}

char *initializeWithCopy for CommandRecognizer.Interpretation(char *a1, char *a2, int *a3)
{
  v6 = sub_1AC79F958();
  if (__swift_getEnumTagSinglePayload(a2, 1, v6))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
    memcpy(a1, a2, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
  }

  v8 = a3[5];
  v9 = a3[6];
  v10 = &a1[v8];
  v11 = &a2[v8];
  v12 = *(v11 + 1);
  *v10 = *v11;
  *(v10 + 1) = v12;
  *&a1[v9] = *&a2[v9];
  v13 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  v14 = sub_1AC79FBA8();
  v15 = *(*(v14 - 8) + 16);

  v15(&a1[v13], &a2[v13], v14);
  *&a1[a3[9]] = *&a2[a3[9]];

  return a1;
}

char *assignWithCopy for CommandRecognizer.Interpretation(char *a1, char *a2, int *a3)
{
  v6 = sub_1AC79F958();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 1, v6);
  v8 = __swift_getEnumTagSinglePayload(a2, 1, v6);
  if (!EnumTagSinglePayload)
  {
    v9 = *(v6 - 8);
    if (!v8)
    {
      (*(v9 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v9 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v8)
  {
LABEL_6:
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
    memcpy(a1, a2, *(*(v10 - 8) + 64));
    goto LABEL_7;
  }

  (*(*(v6 - 8) + 16))(a1, a2, v6);
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
LABEL_7:
  v11 = a3[5];
  v12 = &a1[v11];
  v13 = &a2[v11];
  *v12 = *v13;
  *(v12 + 1) = *(v13 + 1);

  *&a1[a3[6]] = *&a2[a3[6]];

  v14 = a3[7];
  v15 = &a1[v14];
  v16 = &a2[v14];
  *v15 = *v16;
  *(v15 + 1) = *(v16 + 1);
  v17 = a3[8];
  v18 = sub_1AC79FBA8();
  (*(*(v18 - 8) + 24))(&a1[v17], &a2[v17], v18);
  *&a1[a3[9]] = *&a2[a3[9]];

  return a1;
}

char *initializeWithTake for CommandRecognizer.Interpretation(char *a1, char *a2, int *a3)
{
  v6 = sub_1AC79F958();
  if (__swift_getEnumTagSinglePayload(a2, 1, v6))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
    memcpy(a1, a2, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
  }

  v8 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  *&a1[v8] = *&a2[v8];
  v9 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  v10 = sub_1AC79FBA8();
  (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
  *&a1[a3[9]] = *&a2[a3[9]];
  return a1;
}

char *assignWithTake for CommandRecognizer.Interpretation(char *a1, char *a2, int *a3)
{
  v6 = sub_1AC79F958();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 1, v6);
  v8 = __swift_getEnumTagSinglePayload(a2, 1, v6);
  if (!EnumTagSinglePayload)
  {
    v9 = *(v6 - 8);
    if (!v8)
    {
      (*(v9 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v9 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v8)
  {
LABEL_6:
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
    memcpy(a1, a2, *(*(v10 - 8) + 64));
    goto LABEL_7;
  }

  (*(*(v6 - 8) + 32))(a1, a2, v6);
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
LABEL_7:
  v11 = a3[5];
  v12 = &a1[v11];
  v13 = &a2[v11];
  v15 = *v13;
  v14 = *(v13 + 1);
  *v12 = v15;
  *(v12 + 1) = v14;

  *&a1[a3[6]] = *&a2[a3[6]];

  v16 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  v17 = sub_1AC79FBA8();
  (*(*(v17 - 8) + 40))(&a1[v16], &a2[v16], v17);
  *&a1[a3[9]] = *&a2[a3[9]];

  return a1;
}

void sub_1AC725A48(uint64_t a1)
{
  sub_1AC5DBDA8(319);
  if (v1 <= 0x3F)
  {
    sub_1AC79FBA8();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

char *initializeBufferWithCopyOfBuffer for CommandRecognizer.Argument(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v7 = *(a2 + 2);
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = v7;
    v8 = *(a3 + 24);
    v9 = sub_1AC79FBA8();
    v10 = *(*(v9 - 8) + 16);

    v10(&v4[v8], &a2[v8], v9);
    v10(&v4[*(a3 + 28)], &a2[*(a3 + 28)], v9);
  }

  return v4;
}

uint64_t destroy for CommandRecognizer.Argument(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = sub_1AC79FBA8();
  v8 = *(*(v5 - 8) + 8);
  (v8)((v5 - 8), a1 + v4, v5);
  v6 = a1 + *(a2 + 28);

  return v8(v6, v5);
}

uint64_t initializeWithCopy for CommandRecognizer.Argument(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v6;
  v7 = *(a3 + 24);
  v8 = sub_1AC79FBA8();
  v9 = *(*(v8 - 8) + 16);

  v9(a1 + v7, a2 + v7, v8);
  v9(a1 + *(a3 + 28), a2 + *(a3 + 28), v8);
  return a1;
}

uint64_t assignWithCopy for CommandRecognizer.Argument(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  v6 = *(a3 + 24);
  v7 = sub_1AC79FBA8();
  v8 = *(*(v7 - 8) + 24);
  v8(a1 + v6, a2 + v6, v7);
  v8(a1 + *(a3 + 28), a2 + *(a3 + 28), v7);
  return a1;
}

uint64_t initializeWithTake for CommandRecognizer.Argument(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = sub_1AC79FBA8();
  v8 = *(*(v7 - 8) + 32);
  v8(a1 + v6, a2 + v6, v7);
  v8(a1 + *(a3 + 28), a2 + *(a3 + 28), v7);
  return a1;
}

uint64_t assignWithTake for CommandRecognizer.Argument(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v6;

  v7 = *(a3 + 24);
  v8 = sub_1AC79FBA8();
  v9 = *(*(v8 - 8) + 40);
  v9(a1 + v7, a2 + v7, v8);
  v9(a1 + *(a3 + 28), a2 + *(a3 + 28), v8);
  return a1;
}

uint64_t sub_1AC726004(uint64_t a1)
{
  result = sub_1AC79FBA8();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CommandRecognizer.Argument.Presence(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1AC726180(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_130_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AC7261C4()
{
  OUTLINED_FUNCTION_50_0();
  v1(0);
  OUTLINED_FUNCTION_80();
  v2 = OUTLINED_FUNCTION_39();
  v3(v2);
  return v0;
}

uint64_t sub_1AC72621C()
{
  v1 = OUTLINED_FUNCTION_25();
  v2(v1);
  OUTLINED_FUNCTION_80();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1AC726270(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1AC6B2F6C;

  return sub_1AC721AFC(a1, v4, v5, v7, v6);
}

unint64_t sub_1AC7263FC()
{
  result = qword_1EB56AB40;
  if (!qword_1EB56AB40)
  {
    sub_1AC5CF764(255, &unk_1EB56AB48, 0x1E699B9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56AB40);
  }

  return result;
}

uint64_t sub_1AC726464()
{
  OUTLINED_FUNCTION_50_0();
  v1(0);
  OUTLINED_FUNCTION_80();
  v2 = OUTLINED_FUNCTION_39();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_25_13@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v5 = (v2 + a2);
  *v5 = v3;
  v5[1] = v4;
  v5[2] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_58_5@<X0>(uint64_t a1@<X8>, uint64_t x0_0@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v15 + a1) = (v16 & 1) == 0;

  return Transcriber.reportingOptions.getter(x0_0, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t OUTLINED_FUNCTION_59_7()
{

  return sub_1AC7A0E78();
}

uint64_t sub_1AC72657C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DBA0, &unk_1AC7B2020);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - v4;
  v6 = a1[2];
  if (!v6)
  {
LABEL_5:
    if (off_1ED937D60 != -1)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v13 = sub_1AC79FDE8();
      __swift_project_value_buffer(v13, qword_1ED9386C8);
      v14 = sub_1AC79FDC8();
      v15 = sub_1AC7A05F8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18[0] = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_1AC5CFE74(0xD000000000000025, 0x80000001AC7B7290, v18);
        _os_log_impl(&dword_1AC5BC000, v14, v15, "Failed precondition: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x1B26EAB10](v17, -1, -1);
        MEMORY[0x1B26EAB10](v16, -1, -1);
      }

      __break(1u);
LABEL_9:
      swift_once();
    }
  }

  v8 = a1[4];
  v7 = a1[5];
  OUTLINED_FUNCTION_99();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  if (v6 != 1)
  {

    goto LABEL_5;
  }

  v10 = v9;
  OUTLINED_FUNCTION_99();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1AC727520;
  *(v11 + 24) = v10;
  v18[0] = sub_1AC6AA814;
  v18[1] = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D338, &qword_1AC7AEA80);
  sub_1AC7A02A8();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1AC726824(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DB98, &unk_1AC7B2010);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - v4;
  v6 = a1[2];
  if (!v6)
  {
LABEL_5:
    if (off_1ED937D60 != -1)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v13 = sub_1AC79FDE8();
      __swift_project_value_buffer(v13, qword_1ED9386C8);
      v14 = sub_1AC79FDC8();
      v15 = sub_1AC7A05F8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18[0] = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_1AC5CFE74(0xD000000000000025, 0x80000001AC7B7290, v18);
        _os_log_impl(&dword_1AC5BC000, v14, v15, "Failed precondition: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x1B26EAB10](v17, -1, -1);
        MEMORY[0x1B26EAB10](v16, -1, -1);
      }

      __break(1u);
LABEL_9:
      swift_once();
    }
  }

  v8 = a1[4];
  v7 = a1[5];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  if (v6 != 1)
  {

    goto LABEL_5;
  }

  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1AC727520;
  *(v11 + 24) = v10;
  v18[0] = sub_1AC6A92C0;
  v18[1] = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D360, &qword_1AC7AEAB8);
  sub_1AC7A02A8();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1AC726AD4(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1AC769F9C(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AC726B2C(void *a1, double a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1AC76A8C0(a1, a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AC726B98(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v9 = sub_1AC5EFE94(a1, a2, a3);
  v10 = v9;
  if (!v4 && !v9)
  {
    type metadata accessor for EARLanguageDetectorResultStream();
    v10 = swift_distributedActor_remote_initialize();
    *(v10 + 112) = a1;
    *(v10 + 120) = a2;
    *(v10 + 128) = v6;
    *(v10 + 136) = a4;
    sub_1AC5D0DD0(a1, a2, v6);
  }

  return v10;
}

uint64_t sub_1AC726C44()
{
  sub_1AC7A0E78();
  type metadata accessor for EARLanguageDetectorResultStream();
  OUTLINED_FUNCTION_0_19();
  sub_1AC7274A8(v0, v1, v2, &unk_1AC7B1F44);
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC726CC0()
{
  if ((sub_1AC79FC58() & 1) == 0)
  {
    type metadata accessor for EARLanguageDetectorResultStream();
    OUTLINED_FUNCTION_0_19();
    sub_1AC7274A8(v1, v2, v3, &unk_1AC7B1F94);
    return sub_1AC79FBE8();
  }

  return v0;
}

uint64_t sub_1AC726D88(uint64_t a1)
{
  type metadata accessor for EARLanguageDetectorResultStream();
  sub_1AC7274A8(&qword_1EB56C9D8, v1, type metadata accessor for EARLanguageDetectorResultStream, &unk_1AC7B1F94);
  return sub_1AC79FC28();
}

uint64_t sub_1AC726E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AC7A0E78();
  type metadata accessor for EARLanguageDetectorResultStream();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC726E58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for EARLanguageDetectorResultStream();
  v6 = sub_1AC7274A8(&qword_1EB56C9D8, v5, type metadata accessor for EARLanguageDetectorResultStream, &unk_1AC7B1F94);

  return MEMORY[0x1EEE6CC98](v2, v3, v4, v6);
}

uint64_t sub_1AC726EE0(uint64_t a1)
{
  type metadata accessor for EARLanguageDetectorResultStream();
  sub_1AC7274A8(&qword_1EB56C9D8, v1, type metadata accessor for EARLanguageDetectorResultStream, &unk_1AC7B1F94);
  sub_1AC6013F0();
  return sub_1AC79FC38();
}

uint64_t sub_1AC726F74@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EARLanguageDetectorResultStream();
  sub_1AC7274A8(&qword_1EB56C9D8, v4, type metadata accessor for EARLanguageDetectorResultStream, &unk_1AC7B1F94);
  sub_1AC601444();
  result = sub_1AC79FC48();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1AC727010()
{
  result = xpcInterface_EARLanguageDetectorResultStream();
  qword_1EB56E898 = result;
  return result;
}

id sub_1AC727038(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtCC6Speech31EARLanguageDetectorResultStream8XPCProxy_enqueue;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DB88, &unk_1AC7B1FF8);
  swift_allocObject();
  *&v2[v6] = sub_1AC6E54A8();

  sub_1AC6E4278(a1, a2);

  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  sub_1AC6E5440(a2);
  return v7;
}

uint64_t sub_1AC727100(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DB90, &qword_1AC7B2008);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(inited + 32) = sub_1AC727528;
  *(inited + 40) = v3;
  v4 = a1;
  sub_1AC726824(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

uint64_t sub_1AC72720C(void *a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DB90, &qword_1AC7B2008);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  OUTLINED_FUNCTION_99();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(inited + 32) = sub_1AC7274F0;
  *(inited + 40) = v5;
  v6 = a1;
  sub_1AC726824(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

uint64_t sub_1AC7274A8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AC727560(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    if (![v2 code])
    {

      return 4;
    }

    if ([v2 code] == 2)
    {

      return 1;
    }

    v4 = [v2 code];

    if (v4 == 3)
    {
      return 2;
    }
  }

  else if (*(a2 + 176) != 1)
  {
    return 3;
  }

  return 0;
}

uint64_t sub_1AC727600(void *a1)
{
  if (!a1)
  {
    return 12589;
  }

  v1 = a1;
  v2 = [v1 isFinal];
  if (v2 & 1) != 0 || (v8 = sub_1AC648F8C(v2, v3, v4, v5, v6, v7), (v9))
  {

    return 12589;
  }

  result = sub_1AC648F8C(v8, v9, v10, v11, v12, v13);
  if ((v16 & 1) == 0)
  {
    v14 = sub_1AC7A0CC8();

    return v14;
  }

  __break(1u);
  return result;
}

void *sub_1AC7276A4(uint64_t a1)
{
  type metadata accessor for Instrumentation();
  v1 = swift_allocObject();
  result = sub_1AC72A780();
  qword_1EB56E6E8 = v1;
  return result;
}

void sub_1AC7276E0()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_167(v2);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v57 - v4;
  v6 = sub_1AC79F958();
  OUTLINED_FUNCTION_40();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v12 = v11 - v10;
  v13 = OUTLINED_FUNCTION_23_17();
  sub_1AC5DC36C(v13, v14);
  OUTLINED_FUNCTION_96(v5, 1, v6);
  if (v15)
  {
    sub_1AC5DC870(v5);
  }

  else
  {
    OUTLINED_FUNCTION_19_13();
    v16(v12, v5, v6);
    sub_1AC644160();
    (*(v8 + 8))(v12, v6);
  }

  if (v1 >> 62)
  {
    v17 = sub_1AC7A08E8();
  }

  else
  {
    v17 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v17 == 2)
  {
    sub_1AC61C25C();
    if ((v1 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1B26E95B0](0, v1);
    }

    else
    {
      v18 = *(v1 + 32);
    }

    v19 = *(v18 + 16);
    v20 = v19;

    sub_1AC61C25C();
    if ((v1 & 0xC000000000000001) != 0)
    {
      v21 = *(MEMORY[0x1B26E95B0](1, v1) + 16);
      v22 = v21;
      swift_unknownObjectRelease();
      if (!v19)
      {

        goto LABEL_39;
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_39;
      }

      v21 = *(*(v1 + 40) + 16);
      v27 = v21;
    }

    v28 = [v20 startedOrChanged];
    if (v28)
    {
      v29 = v28;
      if ([v28 exists])
      {
        v30 = v20;
        v36 = sub_1AC6442A4(v30, v31, v32, v33, v34, v35);

        OUTLINED_FUNCTION_3_14();
        sub_1AC707118(v37, v38, v39, v40, v41, v36);
        if (v21)
        {
          v42 = [v21 ended];
          if (v42 || (v42 = [v21 failed]) != 0)
          {

            v43 = [v21 ended];
            if (v43)
            {
              v44 = v43;
              v45 = [v43 status];

              if (v45 == 1)
              {
                v46 = 0x53534543435553;
              }

              else
              {
                v46 = 0x4C79646165726C41;
              }

              if (v45 == 1)
              {
                v47 = 0xE700000000000000;
              }

              else
              {
                v47 = 0xED0000646564616FLL;
              }
            }

            else
            {
              v47 = 0xE600000000000000;
              v46 = 0x64656C696146;
            }

            v57 = 0x3D737574617453;
            v58 = 0xE700000000000000;
            MEMORY[0x1B26E8C40](v46, v47);

            v49 = v57;
            v50 = v58;
            v56 = sub_1AC6442A4(v48, v51, v52, v53, v54, v55);
            sub_1AC7077F4("ondevice_preheat_time", 21, 2, v49, v50, v56);
          }
        }

        else
        {
        }

        goto LABEL_39;
      }
    }

    goto LABEL_39;
  }

  if (v17 >= 1)
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3(&off_1ED937D60);
    }

    v23 = sub_1AC79FDE8();
    __swift_project_value_buffer(v23, qword_1ED9386C8);

    v24 = sub_1AC79FDC8();
    v25 = sub_1AC7A05F8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = sub_1AC61C24C();

      _os_log_impl(&dword_1AC5BC000, v24, v25, "Unexpected pending preheat event count %ld", v26, 0xCu);
      OUTLINED_FUNCTION_70();
    }

    else
    {
    }
  }

LABEL_39:
  OUTLINED_FUNCTION_105();
}

void sub_1AC727BA8()
{
  OUTLINED_FUNCTION_104();
  v50 = v0;
  v54 = v2;
  v55 = v1;
  v53 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v11 = OUTLINED_FUNCTION_167(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  v18 = sub_1AC79F958();
  OUTLINED_FUNCTION_40();
  v52 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v51 = &v50 - v25;
  v26 = [objc_opt_self() systemClientId];
  v27 = sub_1AC79FF68();
  v29 = v28;

  v30 = v27 == v9 && v29 == v7;
  if (v30)
  {
  }

  else
  {
    v31 = sub_1AC7A0D38();

    if ((v31 & 1) == 0)
    {
LABEL_35:
      OUTLINED_FUNCTION_105();
      return;
    }
  }

  if (!v55 || v54 || (OUTLINED_FUNCTION_96(v5, 1, v18), !v30) || (OUTLINED_FUNCTION_96(v53, 1, v18), !v30))
  {
    sub_1AC5DC36C(v5, v17);
    OUTLINED_FUNCTION_96(v17, 1, v18);
    if (v30)
    {
      sub_1AC5DC870(v17);
      if (off_1ED937D60 != -1)
      {
        OUTLINED_FUNCTION_3(&off_1ED937D60);
      }

      v37 = sub_1AC79FDE8();
      __swift_project_value_buffer(v37, qword_1ED9386C8);
      v38 = sub_1AC79FDC8();
      v39 = sub_1AC7A05F8();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1AC5BC000, v38, v39, "SELF: asrId is nil", v40, 2u);
        OUTLINED_FUNCTION_70();
      }
    }

    else
    {
      v42 = v51;
      v41 = v52;
      v43 = *(v52 + 32);
      v43(v51, v17, v18);
      sub_1AC5DC36C(v53, v14);
      OUTLINED_FUNCTION_96(v14, 1, v18);
      if (v44)
      {
        sub_1AC5DC870(v14);
        if (off_1ED937D60 != -1)
        {
          OUTLINED_FUNCTION_3(&off_1ED937D60);
        }

        v45 = sub_1AC79FDE8();
        __swift_project_value_buffer(v45, qword_1ED9386C8);
        v46 = sub_1AC79FDC8();
        v47 = sub_1AC7A05F8();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_1AC5BC000, v46, v47, "SELF: requestId is nil", v48, 2u);
          OUTLINED_FUNCTION_70();
        }

        (*(v41 + 8))(v42, v18);
      }

      else
      {
        v43(v23, v14, v18);
        sub_1AC644360(v42, v23);
        v49 = *(v41 + 8);
        v49(v23, v18);
        v49(v42, v18);
      }
    }

    goto LABEL_35;
  }

  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v32 = sub_1AC79FDE8();
  __swift_project_value_buffer(v32, qword_1ED9386C8);
  v55 = sub_1AC79FDC8();
  v33 = sub_1AC7A05E8();
  if (os_log_type_enabled(v55, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1AC5BC000, v55, v33, "SELF: Preheating request being made; non-nil source but nil inputOrigin, asrId, & requestId", v34, 2u);
    OUTLINED_FUNCTION_70();
  }

  OUTLINED_FUNCTION_105();
}

void sub_1AC728498()
{
  OUTLINED_FUNCTION_104();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_167(v10);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_96(v0, 1, v12);
  if (v14)
  {
    sub_1AC5DC870(v0);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_7_20();
    v16(v15);
    v3(v1, v9, v7, v5);
    v17 = OUTLINED_FUNCTION_23_17();
    v18(v17);
  }

  OUTLINED_FUNCTION_105();
}

void sub_1AC728600()
{
  OUTLINED_FUNCTION_104();
  v23 = v2;
  v24 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_167(v12);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_20_15();
  OUTLINED_FUNCTION_40();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17_11();
  v18 = OUTLINED_FUNCTION_515();
  sub_1AC5DC36C(v18, v19);
  OUTLINED_FUNCTION_96(v0, 1, v14);
  if (v20)
  {
    sub_1AC5DC870(v0);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_429();
    v22(v21);
    v24(v1, v11, v9, v7, v5, v23);
    (*(v16 + 8))(v1, v14);
  }

  OUTLINED_FUNCTION_105();
}

void sub_1AC728A68()
{
  OUTLINED_FUNCTION_104();
  v21 = v1;
  v22 = v2;
  v4 = v3;
  v20 = v5;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_167(v10);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_11_18();
  OUTLINED_FUNCTION_40();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  v18 = v17 - v16;
  sub_1AC5DC36C(v9, v0);
  OUTLINED_FUNCTION_6_13(v0);
  if (v19)
  {
    sub_1AC5DC870(v0);
  }

  else
  {
    (*(v14 + 32))(v18, v0, v12);
    v21(v18, v7, v20, v4);
    (*(v14 + 8))(v18, v12);
  }

  OUTLINED_FUNCTION_3_14();
  v22();
  OUTLINED_FUNCTION_105();
}

void sub_1AC728BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, __int128 *a28, uint64_t a29, uint64_t a30, uint64_t *a31)
{
  OUTLINED_FUNCTION_104();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v92 = v40;
  v93 = v41;
  v91 = v42;
  v44 = v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_167(v45);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v46);
  v47 = OUTLINED_FUNCTION_20_15();
  OUTLINED_FUNCTION_40();
  v49 = v48;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_6();
  v53 = v52 - v51;
  v90 = v44;
  sub_1AC5DC36C(v44, v31);
  OUTLINED_FUNCTION_96(v31, 1, v47);
  if (v54)
  {
    sub_1AC5DC870(v31);
    v56 = a25;
  }

  else
  {
    OUTLINED_FUNCTION_19_13();
    v55(v53, v31, v47);
    OUTLINED_FUNCTION_23_17();
    v56 = a25;
    sub_1AC646270();
    (*(v49 + 8))(v53, v47);
  }

  if (v93)
  {
    v57 = v35;
    sub_1AC762938(a28);
    if (v56)
    {
      v58 = v56;
      [v58 code];
      v59 = sub_1AC7A0CC8();
      v61 = v60;
      v62 = [v58 domain];
      if (!v62)
      {
        __break(1u);
        return;
      }

      v63 = v62;
      sub_1AC762838(a28, v59, v61, v62);
    }

    else
    {
      v64 = sub_1AC76244C(a28);
      sub_1AC762044(104, v64);
    }

    v35 = v57;
  }

  if (v92)
  {
    LOBYTE(v89) = 2;
    sub_1AC5DBEEC(v90, v91, v39, v37, a29, a30, a21, a22, 0x100000000uLL, v89, v56, a31, a26);
  }

  v65 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v65 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (v65)
  {
  }

  else
  {
    v33 = 0x80000001AC7B9C10;
    v35 = 0xD000000000000018;
  }

  sub_1AC6F0980(v35, v33, a21, a22, a23, a24);

  v66 = *(a26 + 112);
  if (v66)
  {
    v67 = *(v66 + 16);
    if (v67)
    {

      v68 = 32;
      do
      {
        v69 = *(v66 + v68);
        if (v69 >> 62)
        {
          v70 = sub_1AC7A08E8();
        }

        else
        {
          v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v70 == 2)
        {
          sub_1AC61C25C();
          if ((v69 & 0xC000000000000001) != 0)
          {

            v72 = MEMORY[0x1B26E95B0](0, v69);
          }

          else
          {
            v71 = *(v69 + 32);

            v72 = v71;
          }

          v73 = v72;
          v74 = [v72 unsignedLongLongValue];

          sub_1AC61C25C();
          if ((v69 & 0xC000000000000001) != 0)
          {
            v75 = MEMORY[0x1B26E95B0](1, v69);
          }

          else
          {
            v75 = *(v69 + 40);
          }

          v76 = v75;

          v77 = [v76 unsignedLongLongValue];

          OUTLINED_FUNCTION_3_14();
          sub_1AC707118(v78, v79, v80, v81, v82, v74);
          OUTLINED_FUNCTION_3_14();
          sub_1AC7077F4(v83, v84, v85, v86, v87, v77);
        }

        v68 += 8;
        --v67;
      }

      while (v67);
    }
  }

  sub_1AC7A09C8();
  MEMORY[0x1B26E8C40](0x203D20524E53, 0xE600000000000000);
  OUTLINED_FUNCTION_14_16();
  sub_1AC7A0428();
  MEMORY[0x1B26E8C40](0xD000000000000014, 0x80000001AC7B9BC0);
  OUTLINED_FUNCTION_14_16();
  sub_1AC7A03F8();
  MEMORY[0x1B26E8C40](0xD00000000000001ALL, 0x80000001AC7B9BE0);
  OUTLINED_FUNCTION_14_16();
  sub_1AC7A03F8();
  MEMORY[0x1B26E8C40](0x545220555043202CLL, 0xEC000000203D2046);
  OUTLINED_FUNCTION_14_16();
  sub_1AC7A0428();
  v88 = mach_continuous_time();
  sub_1AC708070("ES: Engine Complete", 19, 2, 0, 0xE000000000000000, v88);

  OUTLINED_FUNCTION_105();
}

void sub_1AC729570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_104();
  v23 = v21;
  v25 = v24;
  v97 = v26;
  v98 = v27;
  v96 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v101 = a21;
  v102 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_167(v36);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v96 - v38;
  v40 = sub_1AC79F958();
  OUTLINED_FUNCTION_40();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17_11();
  v44 = *(v25 + 4);
  v45 = *v25;
  sub_1AC5DC36C(v34, v39);
  OUTLINED_FUNCTION_6_13(v39);
  v99 = v23;
  v100 = v32;
  if (v87)
  {
    sub_1AC5DC870(v39);
    if (v30)
    {
      goto LABEL_6;
    }

LABEL_37:
    OUTLINED_FUNCTION_105();
    return;
  }

  v46 = v45 | (v44 << 32);
  (*(v42 + 32))(v22, v39, v40);
  BYTE4(v104) = BYTE4(v46);
  LODWORD(v104) = v46;
  sub_1AC645020(v22, v32, v102, v30, v96, v97, v98, &v104, v101);
  v47 = OUTLINED_FUNCTION_429();
  v48(v47);
  if (!v30)
  {
    goto LABEL_37;
  }

LABEL_6:
  v49 = v30;
  v50 = [v49 recognition];
  v51 = [v50 oneBest];

  sub_1AC5CF764(0, &qword_1EB56AAF8, off_1E797AC98);
  v52 = sub_1AC7A0158();

  v53 = sub_1AC61C24C();
  if (v53)
  {
    v54 = v53;
    v104 = MEMORY[0x1E69E7CC0];
    sub_1AC6310CC(0, v53 & ~(v53 >> 63), 0);
    if (v54 < 0)
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v98 = v49;
    v55 = 0;
    v56 = v104;
    do
    {
      if ((v52 & 0xC000000000000001) != 0)
      {
        v57 = MEMORY[0x1B26E95B0](v55, v52);
      }

      else
      {
        v57 = *(v52 + 8 * v55 + 32);
      }

      v58 = v57;
      v59 = [v57 tokenName];
      v60 = sub_1AC79FF68();
      v62 = v61;

      v104 = v56;
      v64 = *(v56 + 16);
      v63 = *(v56 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_1AC6310CC(v63 > 1, v64 + 1, 1);
        v56 = v104;
      }

      ++v55;
      *(v56 + 16) = v64 + 1;
      v65 = v56 + 16 * v64;
      *(v65 + 32) = v60;
      *(v65 + 40) = v62;
    }

    while (v54 != v55);

    v49 = v98;
  }

  else
  {

    v56 = MEMORY[0x1E69E7CC0];
  }

  v104 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
  sub_1AC649C74();
  sub_1AC79FEA8();

  v66 = [v49 isFinal];
  if (v66 & 1) != 0 || (v72 = sub_1AC648F8C(v66, v67, v68, v69, v70, v71), (v73))
  {
    v78 = -1;
    v79 = v102;
    v80 = v100;
LABEL_22:
    if (sub_1AC72A62C(v80, v79))
    {
    }

    v104 = 0;
    v105 = 0xE000000000000000;
    sub_1AC7A09C8();

    OUTLINED_FUNCTION_27_11();
    v104 = v83;
    v105 = v84;
    v85 = OUTLINED_FUNCTION_429();
    MEMORY[0x1B26E8C40](v85);

    OUTLINED_FUNCTION_25_14();
    v86 = [v49 isFinal];
    v87 = v86 == 0;
    if (v86)
    {
      v88 = 1702195828;
    }

    else
    {
      v88 = 0x65736C6166;
    }

    if (v87)
    {
      v89 = 0xE500000000000000;
    }

    else
    {
      v89 = 0xE400000000000000;
    }

    MEMORY[0x1B26E8C40](v88, v89);

    v90 = OUTLINED_FUNCTION_5_19();
    MEMORY[0x1B26E8C40](v90);
    v91 = [v49 firstResultAfterResume];
    v92 = v91 == 0;
    if (v91)
    {
      v93 = 1702195828;
    }

    else
    {
      v93 = 0x65736C6166;
    }

    if (v92)
    {
      v94 = 0xE500000000000000;
    }

    else
    {
      v94 = 0xE400000000000000;
    }

    MEMORY[0x1B26E8C40](v93, v94);

    OUTLINED_FUNCTION_31_11();
    v103 = v78;
    v95 = sub_1AC7A0CC8();
    MEMORY[0x1B26E8C40](v95);

    sub_1AC708070("ES: Package Recognition", 23, 2, v104, v105, v101);

    goto LABEL_37;
  }

  v81 = sub_1AC648F8C(v72, v73, v74, v75, v76, v77);
  if ((v82 & 1) == 0)
  {
    v78 = v81;
    v79 = v102;
    v80 = v100;
    if ((v78 & 0x8000000000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_39;
  }

LABEL_40:
  __break(1u);
}

void sub_1AC729A70(uint64_t a1, uint64_t a2, void *a3, char *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v161 = a5;
  v162 = a8;
  v160 = a6;
  v163 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v15 = OUTLINED_FUNCTION_167(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v16 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v155 = &v150 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v150 - v22;
  sub_1AC79F958();
  OUTLINED_FUNCTION_40();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v151 = (v27 - v28);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v153 = &v150 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v150 - v32;
  v157 = a1;
  v34 = a1;
  v36 = v35;
  sub_1AC5DC36C(v34, v23);
  OUTLINED_FUNCTION_96(v23, 1, v36);
  v152 = v18;
  if (v83)
  {
    v40 = a2;
    v38 = v9;
    sub_1AC5DC870(v23);
    v41 = a3;
    v42 = v163;
  }

  else
  {
    OUTLINED_FUNCTION_19_13();
    v37(v33, v23, v36);
    v38 = v9;
    v39 = a7;
    v40 = a2;
    v23 = v163;
    sub_1AC645590(v33, a2, a3, v163, v160, v39, v162);
    (*(v25 + 8))(v33, v36);
    v41 = a3;
    v42 = v23;
  }

  v156 = v36;
  v154 = v25;
  if (v42)
  {
    v159 = v40;
    v160 = v41;
    v43 = v42;
    v44 = [v43 recognition];
    v45 = [v44 oneBest];

    sub_1AC5CF764(0, &qword_1EB56AAF8, off_1E797AC98);
    v46 = sub_1AC7A0158();

    v47 = sub_1AC61C24C();
    v158 = v38;
    if (v47)
    {
      v48 = v47;
      v165 = MEMORY[0x1E69E7CC0];
      sub_1AC6310CC(0, v47 & ~(v47 >> 63), 0);
      if (v48 < 0)
      {
        __break(1u);
LABEL_62:
        v94 = MEMORY[0x1B26E95B0](0, v46);
        goto LABEL_41;
      }

      v150 = v43;
      v49 = 0;
      v50 = v165;
      do
      {
        if ((v46 & 0xC000000000000001) != 0)
        {
          v51 = MEMORY[0x1B26E95B0](v49, v46);
        }

        else
        {
          v51 = *(v46 + 8 * v49 + 32);
        }

        v52 = v51;
        v53 = [v51 tokenName];
        v54 = sub_1AC79FF68();
        v56 = v55;

        v165 = v50;
        v58 = *(v50 + 16);
        v57 = *(v50 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_1AC6310CC(v57 > 1, v58 + 1, 1);
          v50 = v165;
        }

        ++v49;
        *(v50 + 16) = v58 + 1;
        v59 = v50 + 16 * v58;
        *(v59 + 32) = v54;
        *(v59 + 40) = v56;
      }

      while (v48 != v49);

      v43 = v150;
    }

    else
    {

      v50 = MEMORY[0x1E69E7CC0];
    }

    v165 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
    sub_1AC649C74();
    v60 = sub_1AC79FEA8();
    v62 = v61;

    v63 = [v43 isFinal];
    if (v63 & 1) != 0 || (v69 = sub_1AC648F8C(v63, v64, v65, v66, v67, v68), (v70))
    {
      v75 = -1;
    }

    else
    {
      v76 = sub_1AC648F8C(v69, v70, v71, v72, v73, v74);
      if (v77)
      {
LABEL_71:
        __break(1u);
        return;
      }

      v75 = v76;
      if (v76 < 0)
      {
        goto LABEL_65;
      }
    }

    if (sub_1AC72A62C(v159, v160))
    {

      v62 = 0xE800000000000000;
      v60 = 0x4445544341444552;
    }

    v78 = v158;
    v165 = 0;
    v166 = 0xE000000000000000;
    sub_1AC7A09C8();

    OUTLINED_FUNCTION_27_11();
    v165 = v79;
    v166 = v80;
    v81 = v60;
    v38 = v78;
    MEMORY[0x1B26E8C40](v81, v62);

    OUTLINED_FUNCTION_25_14();
    v82 = [v43 isFinal];
    v83 = v82 == 0;
    if (v82)
    {
      v84 = 1702195828;
    }

    else
    {
      v84 = 0x65736C6166;
    }

    if (v83)
    {
      v85 = 0xE500000000000000;
    }

    else
    {
      v85 = 0xE400000000000000;
    }

    MEMORY[0x1B26E8C40](v84, v85);

    v86 = OUTLINED_FUNCTION_5_19();
    MEMORY[0x1B26E8C40](v86);
    v87 = [v43 firstResultAfterResume];
    v88 = v87 == 0;
    if (v87)
    {
      v89 = 1702195828;
    }

    else
    {
      v89 = 0x65736C6166;
    }

    if (v88)
    {
      v90 = 0xE500000000000000;
    }

    else
    {
      v90 = 0xE400000000000000;
    }

    MEMORY[0x1B26E8C40](v89, v90);

    OUTLINED_FUNCTION_31_11();
    v164 = v75;
    v91 = sub_1AC7A0CC8();
    MEMORY[0x1B26E8C40](v91);

    sub_1AC708070("ES: Final Recognition", 21, 2, v165, v166, v162);

    v42 = v163;
  }

  a3 = *(v161 + 16);
  if (a3 < 2 || !v42)
  {
    return;
  }

  v23 = (v161 + 32);
  v92 = [v42 recognition];
  v93 = [v92 oneBest];

  sub_1AC5CF764(0, &qword_1EB56AAF8, off_1E797AC98);
  v46 = sub_1AC7A0158();

  if (!sub_1AC61C24C())
  {

    return;
  }

  sub_1AC61C25C();
  if ((v46 & 0xC000000000000001) != 0)
  {
    goto LABEL_62;
  }

  v94 = *(v46 + 32);
LABEL_41:
  v95 = v94;

  [v95 start];

  OUTLINED_FUNCTION_13_12();
  if (!(v97 ^ v98 | v83))
  {
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v96 <= -9.22337204e18)
  {
    goto LABEL_63;
  }

  if (v96 >= 9.22337204e18)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v99 = v96;
  if (a3 > v96)
  {
    if (v99 < 0)
    {
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v100 = *&v23[16 * v99 + 8];
    v101 = *(v38 + 24);
    OUTLINED_FUNCTION_3_14();
    sub_1AC707118(v102, v103, v104, v105, v106, v107);
    OUTLINED_FUNCTION_3_14();
    sub_1AC7077F4(v108, v109, v110, v111, v112, v100);
    v113 = v155;
    sub_1AC5DC36C(v157, v155);
    v114 = v156;
    OUTLINED_FUNCTION_96(v113, 1, v156);
    if (v83)
    {
      sub_1AC5DC870(v113);
    }

    else
    {
      v115 = v154;
      OUTLINED_FUNCTION_19_13();
      v162 = v101;
      v163 = v100;
      v116 = v153;
      v117(v153, v113, v114);
      OUTLINED_FUNCTION_28_13();
      sub_1AC6454EC(v118, v119, v120, v163, v121, v122, v123, v124, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161);
      v125 = v116;
      v100 = v163;
      (*(v115 + 8))(v125, v114);
    }

    OUTLINED_FUNCTION_13_12();
    if (!(v97 ^ v98 | v83))
    {
      goto LABEL_67;
    }

    if (v126 <= -9.22337204e18)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (v126 >= 9.22337204e18)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v127 = v126;
    if (a3 > v126)
    {
      if (v127 < 0)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v128 = *&v23[16 * v127 + 8];
      OUTLINED_FUNCTION_3_14();
      sub_1AC707118(v129, v130, v131, v132, v133, v100);
      OUTLINED_FUNCTION_3_14();
      sub_1AC7077F4(v134, v135, v136, v137, v138, v128);
      v139 = v152;
      sub_1AC5DC36C(v157, v152);
      v140 = v156;
      OUTLINED_FUNCTION_96(v139, 1, v156);
      if (v83)
      {
        sub_1AC5DC870(v139);
      }

      else
      {
        v141 = v154;
        v142 = v151;
        (*(v154 + 32))(v151, v139, v140);
        OUTLINED_FUNCTION_28_13();
        sub_1AC6454F8(v143, v144, v145, v128, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161);
        (*(v141 + 8))(v142, v140);
      }
    }
  }
}

void sub_1AC72A354()
{
  OUTLINED_FUNCTION_104();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_167(v4);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_20_15();
  OUTLINED_FUNCTION_40();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17_11();
  v10 = OUTLINED_FUNCTION_515();
  sub_1AC5DC36C(v10, v11);
  OUTLINED_FUNCTION_96(v0, 1, v6);
  if (v12)
  {
    sub_1AC5DC870(v0);
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_429();
    v14(v13);
    sub_1AC647E74();
    (*(v8 + 8))(v1, v6);
  }

  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC72A4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AC707118("ES: Time to Word", 16, 2, a1, a2, a3);
  OUTLINED_FUNCTION_3_14();
  return sub_1AC7077F4(v5, v6, v7, v8, v9, a4);
}

uint64_t sub_1AC72A538(uint64_t result, __int128 *a2, uint64_t a3)
{
  if (result)
  {
    v4 = sub_1AC76244C(a2);
    sub_1AC762044(a3, v4);
  }

  return result;
}

uint64_t sub_1AC72A598(unint64_t a1)
{
  if (a1 >= 6)
  {
    return 5;
  }

  else
  {
    return (0x40302010005uLL >> (8 * a1));
  }
}

uint64_t sub_1AC72A5D4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AC72A598(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AC72A600@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AC727554(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1AC72A62C(uint64_t a1, void *a2)
{

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  TaskHint.init(taskString:)(v4);
  if (v10 == 16)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v6 = [objc_opt_self() standardUserDefaults];
    v7 = sub_1AC79FF58();
    v8 = [v6 BOOLForKey_];

    LOBYTE(v5) = 0;
    if (v10 <= 0xFu && (v8 & 1) == 0)
    {
      v5 = 0xCE80u >> v10;
    }
  }

  return v5 & 1;
}

uint64_t Instrumentation.deinit()
{

  return v0;
}

uint64_t Instrumentation.__deallocating_deinit()
{
  Instrumentation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void *sub_1AC72A780()
{
  v1 = v0;
  type metadata accessor for SelfLoggingHelper();
  v2 = swift_allocObject();
  *(v2 + 16) = [objc_opt_self() sharedStream];
  v1[2] = v2;
  type metadata accessor for SignpostHelper(0);
  swift_allocObject();
  v1[3] = sub_1AC706F98();
  type metadata accessor for PowerlogHelper();
  v1[4] = swift_allocObject();
  type metadata accessor for CoreAnalyticsLoggingHelper();
  v1[5] = swift_allocObject();
  type metadata accessor for OndeviceRecordHelper();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v1[6] = v3;
  return v1;
}

uint64_t sub_1AC72A850(uint64_t a1, uint64_t a2, void *a3, int a4, char a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v14 = v13;
  v15 = a5;
  HIDWORD(v139) = a4;
  v145 = a3;
  v141 = *&a9;
  v143 = *&a10;
  v137 = *&a8;
  v150 = *MEMORY[0x1E69E9840];
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v13 + 36) = 1;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 60) = 1;
  *(v13 + 72) = 0;
  *(v13 + 80) = 0;
  *(v13 + 64) = 0;
  *(v13 + 85) = 0;
  *(v13 + 96) = 0u;
  *(v13 + 112) = 0u;
  *(v13 + 128) = 0;
  *(v13 + 136) = 1;
  *(v13 + 144) = 0;
  *(v13 + 152) = 1;
  *(v13 + 156) = 0;
  *(v13 + 160) = 1;
  *(v13 + 161) = 0;
  *(v13 + 163) = 0;
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;
  *(v13 + 184) = xmmword_1AC7AC470;
  *(v13 + 200) = xmmword_1AC7AC470;
  *(v13 + 224) = 0;
  *(v13 + 216) = 0;
  v135 = (v13 + 216);
  *(v13 + 240) = 0;
  v22 = (v13 + 240);
  *(v13 + 232) = 0xE000000000000000;
  *(v13 + 248) = 0;
  *(v13 + 256) = 0u;
  *(v13 + 272) = 0u;
  *(v13 + 288) = 0u;
  *(v13 + 304) = 0;
  *(v13 + 312) = xmmword_1AC7B2030;
  *(v13 + 328) = xmmword_1AC7B2030;
  *(v13 + 344) = 0xE000000000000000;
  *(v13 + 352) = 0;
  *(v13 + 356) = 1;
  *(v13 + 360) = 0;
  *(v13 + 364) = 1;
  if (a1)
  {

    v15 = a5;
    *(v13 + 16) = sub_1AC6DC828(0xD000000000000015, 0x80000001AC7B9A00, a1);
    *(v13 + 24) = v24;

    *(v13 + 40) = sub_1AC6DC828(0xD000000000000011, 0x80000001AC7B9A20, a1);
    *(v13 + 48) = v25;

    *(v13 + 96) = sub_1AC6DC828(0x646F6365642D4D50, 0xEA00000000007265, a1);
    *(v13 + 104) = v26;

    *(v13 + 184) = sub_1AC6DC828(0x7475706E692D4D50, 0xE800000000000000, a1);
    *(v13 + 192) = v27;

    *(v13 + 200) = sub_1AC6DC828(0x757074756F2D4D50, 0xE900000000000074, a1);
    *(v13 + 208) = v28;

    *(v13 + 224) = sub_1AC6DC828(0x64657355454E41, 0xE700000000000000, a1);
    *(v13 + 232) = v29;

    *(v13 + 304) = sub_1AC6DC828(0xD00000000000001BLL, 0x80000001AC7B9A40, a1);
    *(v13 + 312) = v30;

    *(v13 + 320) = OUTLINED_FUNCTION_33_11("rescoringDeliberationResultOriginalTranscript", v132, v135, v137, v139, v141, v143, v145, a1);
    *(v13 + 328) = v31;

    v32 = OUTLINED_FUNCTION_33_11("rescoringDeliberationResultModifiedTranscript", v133, v136, v138, v140, v142, v144, v146, v148);
    v34 = v33;

    *(v13 + 336) = v32;
    *(v13 + 344) = v34;
  }

  if (a2)
  {

    v35 = sub_1AC6DC87C(0xD00000000000001BLL, 0x80000001AC7B9960, a2);
    v36 = v35;
    v37 = 0;
    v38 = 0;
    if (v35)
    {
      [v35 floatValue];
      v38 = v39;
    }

    OUTLINED_FUNCTION_24_16();
    *(v13 + 32) = v38;
    *(v13 + 36) = v40;
    v41 = sub_1AC6DC87C(5394003, 0xE300000000000000, a2);
    v42 = v41;
    if (v41)
    {
      [v41 floatValue];
      v37 = v43;
    }

    OUTLINED_FUNCTION_24_16();
    *(v13 + 56) = v37;
    *(v13 + 60) = v44;
    v45 = sub_1AC6DC87C(0x6573557265676145, 0xE900000000000064, a2);
    v46 = v145;
    if (v45)
    {
      v47 = OUTLINED_FUNCTION_36_10(v45);
    }

    else
    {
      v47 = 2;
    }

    *(v14 + 80) = v47;
    v49 = OUTLINED_FUNCTION_35_12(0xD000000000000011, "cpuRealTimeFactor");
    v50 = v49;
    if (v49)
    {
      v51 = [v49 unsignedIntValue];
    }

    else
    {
      v51 = 0;
    }

    OUTLINED_FUNCTION_24_16();
    *(v14 + 88) = v51;
    *(v14 + 92) = v52;
    v53 = sub_1AC79FF68();
    v55 = sub_1AC6DC87C(v53, v54, a2);

    if (v55)
    {
      [v55 doubleValue];
      v48 = v56;
    }

    else
    {
      v48 = 0.0;
    }

    v57 = sub_1AC6DC87C(0x7355656D4C74696ALL, 0xEA00000000006465, a2);
    if (v57)
    {
      v58 = v57;
      v59 = [v57 BOOLValue];
    }

    else
    {
      v59 = 2;
    }

    *v22 = v59;
    v60 = sub_1AC6DC87C(0x7355656D4C746F61, 0xEA00000000006465, a2);
    if (v60)
    {
      v61 = OUTLINED_FUNCTION_36_10(v60);
    }

    else
    {
      v61 = 2;
    }

    *(v14 + 241) = v61;
    v62 = OUTLINED_FUNCTION_5_19();
    v64 = sub_1AC6DC87C(v62, v63, a2);
    if (v64)
    {
      v65 = OUTLINED_FUNCTION_36_10(v64);
    }

    else
    {
      v65 = 2;
    }

    *(v14 + 242) = v65;
    v66 = OUTLINED_FUNCTION_5_19();
    v68 = sub_1AC6DC87C(v66, v67, a2);
    if (v68)
    {
      v69 = OUTLINED_FUNCTION_36_10(v68);
    }

    else
    {
      v69 = 2;
    }

    *(v14 + 243) = v69;
    v70 = OUTLINED_FUNCTION_35_12(0xD00000000000001ELL, "AverageActiveTokensPerFrame");
    v71 = v70;
    if (v70)
    {
      v72 = [v70 unsignedIntValue];
    }

    else
    {
      v72 = 0;
    }

    OUTLINED_FUNCTION_24_16();
    *(v14 + 244) = v72;
    *(v14 + 248) = v73;
    v74 = OUTLINED_FUNCTION_35_12(0xD000000000000023, "numContextualBiasingEmbeddings");
    v75 = v74;
    v76 = 0;
    v77 = 0;
    if (v74)
    {
      [v74 floatValue];
      v77 = v78;
    }

    OUTLINED_FUNCTION_24_16();
    *(v14 + 352) = v77;
    v22[116] = v79;
    v80 = OUTLINED_FUNCTION_35_12(0xD000000000000025, "ationResultDuration");

    if (v80)
    {
      [v80 floatValue];
      v76 = v81;
    }

    OUTLINED_FUNCTION_24_16();
    *(v14 + 360) = v76;
    v22[124] = v82;
  }

  else
  {
    v48 = 0.0;
    v46 = v145;
  }

  *(v14 + 64) = a6;
  *(v14 + 72) = a7 * 1000.0;
  if (v46)
  {
    v83 = sub_1AC72B8C0(v46);
    if (v83)
    {
      v84 = v83;
      *(v14 + 112) = v83;

      *(v14 + 156) = 0;
      *(v14 + 160) = 0;
      v85 = *(v84 + 16);
      if (v85)
      {
        v134 = v15;
        v86 = 0;
        v87 = 0.0;
        while (v86 < *(v84 + 16))
        {
          v88 = *(v84 + 8 * v86 + 32);
          if (v88 >> 62)
          {
            v89 = sub_1AC7A08E8();
          }

          else
          {
            v89 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v89 == 2)
          {
            if ((v88 & 0xC000000000000001) != 0)
            {

              v91 = MEMORY[0x1B26E95B0](0, v88);
            }

            else
            {
              if (!*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_100;
              }

              v90 = *(v88 + 32);

              v91 = v90;
            }

            v92 = v91;
            v93 = [v91 unsignedLongLongValue];

            if ((v88 & 0xC000000000000001) != 0)
            {
              v94 = MEMORY[0x1B26E95B0](1, v88);
            }

            else
            {
              if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
              {
                goto LABEL_103;
              }

              v94 = *(v88 + 40);
            }

            v95 = v94;
            v96 = [v94 unsignedLongLongValue];

            v97 = v96 >= v93;
            v98 = v96 - v93;
            if (!v97)
            {
              goto LABEL_101;
            }

            info = 0;
            mach_timebase_info(&info);
            if (info.numer)
            {
              LODWORD(v99) = info.denom;
              v100 = v99 / info.numer * 1000000000.0;
            }

            else
            {
              v100 = 0.0;
            }

            if (*(v14 + 160))
            {
              goto LABEL_111;
            }

            v101 = *(v14 + 156);
            v97 = __CFADD__(v101, 1);
            v102 = v101 + 1;
            if (v97)
            {
              goto LABEL_102;
            }

            v87 = v87 + v98 / v100;
            *(v14 + 156) = v102;
          }

          if (v85 == ++v86)
          {

            v15 = v134;
            v46 = v145;
            goto LABEL_68;
          }
        }

        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

LABEL_68:
      OUTLINED_FUNCTION_13_12();
      if (!(v106 ^ v107 | v105))
      {
        goto LABEL_107;
      }

      if (v104 <= -1.0)
      {
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      if (v104 >= 1.84467441e19)
      {
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      *(v14 + 144) = v104;
      *(v14 + 152) = 0;
    }

    else
    {
    }

    v108 = sub_1AC72B92C(v46);
    if (v108)
    {
      v109 = v108;
      v110 = sub_1AC61C24C();
      if (v110)
      {
        v111 = v110;
        info = MEMORY[0x1E69E7CC0];
        sub_1AC6312E0(0, v110 & ~(v110 >> 63), 0);
        if (v111 < 0)
        {
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
        }

        v112 = 0;
        v113 = info;
        do
        {
          if ((v109 & 0xC000000000000001) != 0)
          {
            v114 = OUTLINED_FUNCTION_23_17();
            v115 = MEMORY[0x1B26E95B0](v114);
          }

          else
          {
            v115 = *(v109 + 8 * v112 + 32);
          }

          v116 = v115;
          [v115 doubleValue];
          v118 = v117;

          info = v113;
          v120 = *(*&v113 + 16);
          v119 = *(*&v113 + 24);
          if (v120 >= v119 >> 1)
          {
            sub_1AC6312E0(v119 > 1, v120 + 1, 1);
            v113 = info;
          }

          ++v112;
          *(*&v113 + 16) = v120 + 1;
          *(*&v113 + 8 * v120 + 32) = v118;
        }

        while (v111 != v112);
      }

      else
      {

        v113 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v113 = 0;
    }

    *(v14 + 120) = v113;

    v103 = 0.0;
    if (v113)
    {
      v121 = *(*&v113 + 16);
      if (v121)
      {
        v122 = 0.0;
        v123 = 32;
        do
        {
          v122 = v122 + *(*&v113 + v123);
          v123 += 8;
          --v121;
        }

        while (v121);

        v103 = v122 * 1000.0;
      }

      else
      {
      }
    }

    v124 = [v145 itnDurationInNs];
    v125 = sub_1AC7A0ED8();

    *(v14 + 128) = v125;
    *(v14 + 136) = 0;
    *(v14 + 161) = [v145 isEmojiPersonalizationUsed];
    *(v14 + 162) = [v145 isEmojiDisambiguationUsed];
    *(v14 + 163) = [v145 isEmojiExpectedButNotRecognized];
    *(v14 + 168) = sub_1AC72B99C(v145);

    [v145 cpuMillionInstructionsPerSecond];
    v127 = v126;
    v128 = v126;

    if ((*&v128 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_104;
    }

    if (v127 <= -1.0)
    {
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    if (v127 >= 1.84467441e19)
    {
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    *v135 = v127;
  }

  else
  {

    v103 = 0.0;
  }

  v129 = *(v14 + 72);
  if (v129 > 0.0)
  {
    v130 = v48 / (v129 - v103);
    *(v14 + 84) = v130;
  }

  *(v14 + 176) = BYTE4(v139) & 1;
  *(v14 + 81) = v15 & 1;
  *(v14 + 83) = v15 & 1;
  *(v14 + 82) = 0;
  *(v14 + 256) = v137;
  *(v14 + 264) = v141;
  *(v14 + 272) = v143;
  *(v14 + 280) = a11;
  *(v14 + 288) = a12;
  *(v14 + 296) = a13;
  return v14;
}