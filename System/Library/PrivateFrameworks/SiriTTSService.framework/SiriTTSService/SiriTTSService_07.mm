void sub_1B1B1FF14(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B1C2CB28();
  [a3 setString_];
}

unint64_t sub_1B1B1FFA8()
{
  result = qword_1EB762258;
  if (!qword_1EB762258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762258);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpeakableStringExtractor.InputType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SpeakableStringExtractor.InputType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1B1B201F0()
{
  v1 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B1C00CB4();
    v1 = v3;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    *(v1 + 16) = v2 - 1;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }
}

void TTSAsset.download(reservation:useBattery:progress:then:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v10 = 1;
  }

  else
  {
    v10 = 6;
  }

  v17 = a4;
  v18 = a5;
  OUTLINED_FUNCTION_0_7();
  v14 = 1107296256;
  v15 = sub_1B1B203B8;
  v16 = &block_descriptor_3;
  v11 = _Block_copy(&v13);

  v17 = a6;
  v18 = a7;
  OUTLINED_FUNCTION_0_7();
  v14 = 1107296256;
  v15 = sub_1B1B20428;
  v16 = &block_descriptor_3;
  v12 = _Block_copy(&v13);

  [v7 downloadWithOptions:v10 progress:v11 then:v12];
  _Block_release(v12);
  _Block_release(v11);
}

uint64_t sub_1B1B203B8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);
}

void sub_1B1B20428(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t TTSAsset.download(options:progress:then:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (a4)
  {
    return a4(v4, a2, a3);
  }

  return result;
}

void sub_1B1B206DC(uint64_t a1, void (**a2)(void, void))
{
  a2[2](a2, a1);

  _Block_release(a2);
}

uint64_t (*TTSAsset.purge(then:)(uint64_t (*result)(void)))(void)
{
  if (result)
  {
    return result(0);
  }

  return result;
}

void *sub_1B1B20A50()
{
  type metadata accessor for InlineStreamingStorage();
  v0 = swift_allocObject();
  result = sub_1B1B20A8C();
  qword_1ED9A4FF8 = v0;
  return result;
}

void *sub_1B1B20A8C()
{
  v1 = sub_1B1C2D128();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_16();
  v5 = v4 - v3;
  v6 = sub_1B1C2D118();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16();
  v7 = sub_1B1C2C9D8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_16();
  v8 = MEMORY[0x1E69E7CC0];
  v0[2] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762310, &unk_1B1C379A0);
  v0[3] = sub_1B1C2CAB8();
  v0[4] = v8;
  v0[5] = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  sub_1B1AA7918();
  sub_1B1C2C9B8();
  sub_1B1ACD030(&qword_1ED9A4EC8, MEMORY[0x1E69E8030], MEMORY[0x1E69E8048]);
  sub_1B1C2D958();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8090], v1);
  v0[6] = sub_1B1C2D158();
  return v0;
}

uint64_t sub_1B1B20CF4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = a2;
  MEMORY[0x1B2738320]();
  sub_1B1B3E0D4(*((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1B1C2CEC8();
  return swift_endAccess();
}

uint64_t sub_1B1B20D8C(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, void *))
{
  [a1 lock];
  a4(a2, a3);
  [a1 unlock];
}

uint64_t sub_1B1B20E18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [a1 lock];
  sub_1B1B20ED0(a2, a3, a4, &v10);
  [a1 unlock];
  if (v4)
  {
  }

  else
  {

    a2 = v10;
  }

  return a2;
}

void sub_1B1B20ED0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_beginAccess();
  v7 = *(a1 + 32);
  v8 = sub_1B1A9547C();

  for (i = 0; ; ++i)
  {
    if (v8 == i)
    {

      v11 = 0;
      goto LABEL_16;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1B2738A20](i, v7);
    }

    else
    {
      if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v12 = *&v10[OBJC_IVAR___SiriTTSInlineStreamingSignal_text] == a2 && *&v10[OBJC_IVAR___SiriTTSInlineStreamingSignal_text + 8] == a3;
    if (v12 || (sub_1B1C2D7A8() & 1) != 0)
    {

LABEL_16:
      *a4 = v11;
      return;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_1B1B21004()
{
  v1 = *(v0 + 40);

  [v1 lock];
  sub_1B1B2107C(v0);
  [v1 unlock];
}

void sub_1B1B2107C(uint64_t a1)
{
  swift_beginAccess();
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = MEMORY[0x1E69E7CC0];

  swift_beginAccess();
  *(a1 + 16) = v2;

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762308, &qword_1B1C37998);
  sub_1B1C2CAC8();
  swift_endAccess();
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v3 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v3, qword_1ED9A9120);
  v4 = sub_1B1C2C888();
  v5 = sub_1B1C2D098();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B1A8A000, v4, v5, "Cleared inline streaming object storage.", v6, 2u);
    MEMORY[0x1B2739FD0](v6, -1, -1);
  }
}

void sub_1B1B21254(uint64_t a1, void *a2)
{
  v4 = sub_1B1C2C988();
  v38 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B1C2C9D8();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B1B22AF4(a2);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    swift_beginAccess();
    v14 = *(a1 + 24);

    v15 = sub_1B1A9EC94(v12, v13, v14);
    v17 = v16;

    if (v15)
    {
      v18 = swift_allocObject();
      *(v18 + 16) = v15;
      *(v18 + 24) = v17;
      v19 = swift_allocObject();
      v19[2] = a2;
      v19[3] = sub_1B1B18A3C;
      v19[4] = v18;
      aBlock[4] = sub_1B1B22B88;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B1A95870;
      aBlock[3] = &block_descriptor_23;
      v20 = _Block_copy(aBlock);
      v21 = a2;

      sub_1B1C2C9A8();
      aBlock[10] = MEMORY[0x1E69E7CC0];
      sub_1B1ACD030(&qword_1ED9A8DC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
      sub_1B1AA6F40();
      sub_1B1C2D418();
      MEMORY[0x1B2738610](0, v9, v6, v20);
      _Block_release(v20);

      (*(v38 + 8))(v6, v4);
      (*(v36 + 8))(v9, v37);

      return;
    }

    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v22 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v22, qword_1ED9A9120);
    v23 = a2;
    v24 = sub_1B1C2C888();
    v25 = sub_1B1C2D098();
    if (!os_log_type_enabled(v24, v25))
    {

      goto LABEL_10;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v26 = 136315394;
    v29 = sub_1B1B22AF4(v23);
    v31 = v30;

    if (v31)
    {
      v32 = sub_1B1A930E4(v29, v31, aBlock);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2112;
      *(v26 + 14) = v23;
      *v27 = v23;
      v33 = v23;
      _os_log_impl(&dword_1B1A8A000, v24, v25, "Notification for %s has not started. Cache object %@", v26, 0x16u);
      sub_1B1B1AF0C(v27);
      MEMORY[0x1B2739FD0](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1B2739FD0](v28, -1, -1);
      MEMORY[0x1B2739FD0](v26, -1, -1);
LABEL_10:

      swift_beginAccess();
      v34 = v23;
      MEMORY[0x1B2738320]();
      sub_1B1B3E0D4(*((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1B1C2CEC8();
      swift_endAccess();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1B1B21778(void *a1, void (*a2)(id))
{
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v4 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v4, qword_1ED9A9120);
  v5 = a1;
  v6 = sub_1B1C2C888();
  v7 = sub_1B1C2D098();
  if (!os_log_type_enabled(v6, v7))
  {

    goto LABEL_7;
  }

  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v16 = v10;
  *v8 = 136315394;
  v11 = sub_1B1B22AF4(v5);
  v13 = v12;

  if (v13)
  {
    v14 = sub_1B1A930E4(v11, v13, &v16);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v15 = v5;
    _os_log_impl(&dword_1B1A8A000, v6, v7, "Notification for %s is on-going. Posting object immediately %@", v8, 0x16u);
    sub_1B1B1AF0C(v9);
    MEMORY[0x1B2739FD0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B2739FD0](v10, -1, -1);
    MEMORY[0x1B2739FD0](v8, -1, -1);
LABEL_7:

    a2(v5);
    return;
  }

  __break(1u);
}

void sub_1B1B21958(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 40);
  v9 = a1;

  [v4 lock];
  OUTLINED_FUNCTION_1_8();
  sub_1B1B219F8(v5, v6, v7, v8);
  [v4 unlock];
}

uint64_t sub_1B1B219F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a3;
  v70 = a4;
  v65 = sub_1B1C2C988();
  v7 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1B1C2C9D8();
  v9 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v11 = sub_1B1C2C8A8();
  v12 = __swift_project_value_buffer(v11, qword_1ED9A9120);
  v13 = a1;
  v61 = v12;
  v14 = sub_1B1C2C888();
  v15 = sub_1B1C2D0D8();

  v16 = os_log_type_enabled(v14, v15);
  v55 = v9;
  v17 = v7;
  if (v16)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1B1A930E4(*&v13[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier], *&v13[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier + 8], aBlock);
    _os_log_impl(&dword_1B1A8A000, v14, v15, "Start streaming for %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x1B2739FD0](v19, -1, -1);
    MEMORY[0x1B2739FD0](v18, -1, -1);
  }

  v20 = *&v13[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier];
  v21 = *&v13[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier + 8];
  v22 = swift_allocObject();
  v23 = v70;
  *(v22 + 16) = v69;
  *(v22 + 24) = v23;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75[0] = *(a2 + 24);
  v25 = v22;
  v26 = v21;
  sub_1B1B37380(sub_1B1B18A74, v25, v20, v21, isUniquelyReferenced_nonNull_native);
  *(a2 + 24) = v75[0];
  swift_endAccess();
  swift_beginAccess();
  v68 = *(a2 + 16);
  result = sub_1B1A9547C();
  if (result)
  {
    v67 = result;
    if (result >= 1)
    {
      v53[1] = v4;
      v66 = a2;
      v28 = v68;
      v71 = v68 & 0xC000000000000001;
      v57 = v74;
      v56 = (v17 + 8);
      ++v55;

      v29 = 0;
      *&v30 = 138412290;
      v54 = v30;
      v31 = v67;
      v60 = v13;
      v59 = v20;
      v58 = v21;
      while (1)
      {
        if (v71)
        {
          v32 = MEMORY[0x1B2738A20](v29, v28);
        }

        else
        {
          v32 = *(v28 + 8 * v29 + 32);
        }

        v33 = v32;
        v34 = sub_1B1B22AF4(v32);
        if (v35)
        {
          if (v34 == v20 && v35 == v26)
          {

LABEL_19:
            v38 = v33;
            v39 = sub_1B1C2C888();
            v40 = sub_1B1C2D098();

            if (os_log_type_enabled(v39, v40))
            {
              v41 = swift_slowAlloc();
              v42 = swift_slowAlloc();
              *v41 = v54;
              *(v41 + 4) = v38;
              *v42 = v38;
              v43 = v38;
              _os_log_impl(&dword_1B1A8A000, v39, v40, "Found cached objects %@", v41, 0xCu);
              sub_1B1B1AF0C(v42);
              MEMORY[0x1B2739FD0](v42, -1, -1);
              MEMORY[0x1B2739FD0](v41, -1, -1);
            }

            v44 = swift_allocObject();
            v45 = v70;
            v44[2] = v69;
            v44[3] = v45;
            v44[4] = v38;
            v74[2] = sub_1B1B22B58;
            v74[3] = v44;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            v74[0] = sub_1B1A95870;
            v74[1] = &block_descriptor_4;
            v46 = _Block_copy(aBlock);

            v47 = v38;
            v48 = v62;
            sub_1B1C2C9A8();
            v72 = MEMORY[0x1E69E7CC0];
            sub_1B1ACD030(&qword_1ED9A8DC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
            sub_1B1AA6F40();
            v49 = v64;
            v50 = v65;
            sub_1B1C2D418();
            MEMORY[0x1B2738610](0, v48, v49, v46);
            _Block_release(v46);

            (*v56)(v49, v50);
            (*v55)(v48, v63);

            v13 = v60;
            v20 = v59;
            v26 = v58;
            v31 = v67;
            v28 = v68;
            goto LABEL_22;
          }

          v37 = sub_1B1C2D7A8();

          if (v37)
          {
            goto LABEL_19;
          }
        }

LABEL_22:
        if (v31 == ++v29)
        {

          a2 = v66;
          goto LABEL_24;
        }
      }
    }
  }

  else
  {
LABEL_24:
    swift_beginAccess();
    sub_1B1B225D8((a2 + 16), v13);
    v52 = v51;
    result = sub_1B1A9547C();
    if (result >= v52)
    {
      sub_1B1C00ADC(v52, result);
      return swift_endAccess();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B22138(uint64_t a1, char *a2)
{
  swift_beginAccess();
  v4 = sub_1B1B70654();
  v6 = v5;
  swift_endAccess();
  sub_1B1A949B4(v4, v6);
  swift_beginAccess();
  sub_1B1B22874((a1 + 32), a2);
  v8 = v7;
  result = sub_1B1A9547C();
  if (result < v8)
  {
    __break(1u);
  }

  else
  {
    sub_1B1C00B7C(v8, result);
    return swift_endAccess();
  }

  return result;
}

uint64_t InlineStreamingStorage.deinit()
{

  return v0;
}

uint64_t InlineStreamingStorage.__deallocating_deinit()
{
  InlineStreamingStorage.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void sub_1B1B2236C(uint64_t a1, char *a2)
{
  v4 = sub_1B1A9547C();
  v5 = 0;
  v6 = &a2[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier];
  while (1)
  {
    if (v4 == v5)
    {
LABEL_12:

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1B2738A20](v5, a1);
      goto LABEL_6;
    }

    if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v7 = *(a1 + 8 * v5 + 32);
LABEL_6:
    v8 = v7;
    v9 = sub_1B1B22AF4(v7);
    if (v10)
    {
      if (v9 == *v6 && v10 == *(v6 + 1))
      {

        return;
      }

      v12 = sub_1B1C2D7A8();

      if (v12)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1B1B224B0(uint64_t a1, char *a2)
{
  v4 = sub_1B1A9547C();
  v5 = 0;
  v6 = &a2[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier];
  while (1)
  {
    if (v4 == v5)
    {
LABEL_17:
      v8 = a2;
      goto LABEL_18;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v7 = MEMORY[0x1B2738A20](v5, a1);
LABEL_6:
    v8 = v7;
    if (*&v7[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier] == *v6 && *&v7[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier + 8] == *(v6 + 1))
    {

LABEL_18:
      return;
    }

    v10 = sub_1B1C2D7A8();

    if (v10)
    {
      goto LABEL_17;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_20;
    }
  }

  if (v5 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(a1 + 8 * v5 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1B1B225D8(unint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a2;
  sub_1B1B2236C(v4, v5);
  v8 = v6;
  if (v2)
  {
    goto LABEL_48;
  }

  if (v7)
  {
    sub_1B1A9547C();
LABEL_48:

    return;
  }

  v29 = v5;
  v9 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    goto LABEL_57;
  }

  v10 = &v5[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier];
  while (1)
  {
    if (v4 >> 62)
    {
      v11 = sub_1B1C2D468();
    }

    else
    {
      v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9 == v11)
    {
      goto LABEL_47;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1B2738A20](v9, v4);
      goto LABEL_13;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_50;
    }

    v12 = *(v4 + 8 * v9 + 32);
LABEL_13:
    v13 = v12;
    v14 = sub_1B1B22AF4(v12);
    if (v15)
    {
      if (v14 == *v10 && v15 == *(v10 + 1))
      {

        goto LABEL_40;
      }

      v17 = sub_1B1C2D7A8();

      if (v17)
      {
        goto LABEL_40;
      }
    }

    else
    {
    }

    if (v8 != v9)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1B2738A20](v8, v4);
        v19 = MEMORY[0x1B2738A20](v9, v4);
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_54;
        }

        v20 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v8 >= v20)
        {
          goto LABEL_55;
        }

        if (v9 >= v20)
        {
          goto LABEL_56;
        }

        v21 = *(v4 + 32 + 8 * v9);
        v18 = *(v4 + 32 + 8 * v8);
        v19 = v21;
      }

      v22 = v19;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
      {
        v4 = sub_1B1C00F10(v4);
        v23 = (v4 >> 62) & 1;
      }

      else
      {
        LODWORD(v23) = 0;
      }

      v24 = v4 & 0xFFFFFFFFFFFFFF8;
      v25 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
      *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v22;

      if ((v4 & 0x8000000000000000) != 0 || v23)
      {
        v4 = sub_1B1C00F10(v4);
        v24 = v4 & 0xFFFFFFFFFFFFFF8;
        if ((v9 & 0x8000000000000000) != 0)
        {
LABEL_46:
          __break(1u);
LABEL_47:
          v5 = v29;
          goto LABEL_48;
        }
      }

      else if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_46;
      }

      if (v9 >= *(v24 + 16))
      {
        goto LABEL_53;
      }

      v26 = v24 + 8 * v9;
      v27 = *(v26 + 32);
      *(v26 + 32) = v18;

      *a1 = v4;
    }

    v28 = __OFADD__(v8++, 1);
    if (v28)
    {
      goto LABEL_52;
    }

LABEL_40:
    v28 = __OFADD__(v9++, 1);
    if (v28)
    {
      goto LABEL_51;
    }
  }

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
LABEL_57:
  __break(1u);
}

void sub_1B1B22874(unint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a2;
  sub_1B1B224B0(v4, v5);
  v8 = v6;
  if (v2)
  {
    goto LABEL_45;
  }

  if (v7)
  {
    sub_1B1A9547C();
LABEL_45:

    return;
  }

  v28 = a1;
  v9 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    goto LABEL_54;
  }

  v27 = v5;
  v10 = &v5[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier];
  while (1)
  {
    if (v4 >> 62)
    {
      v11 = sub_1B1C2D468();
    }

    else
    {
      v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9 == v11)
    {
      goto LABEL_44;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1B2738A20](v9, v4);
      goto LABEL_13;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_47;
    }

    v12 = *(v4 + 8 * v9 + 32);
LABEL_13:
    v13 = v12;
    if (*&v12[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier] == *v10 && *&v12[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier + 8] == *(v10 + 1))
    {
    }

    else
    {
      v15 = sub_1B1C2D7A8();

      if ((v15 & 1) == 0)
      {
        if (v8 != v9)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x1B2738A20](v8, v4);
            v17 = MEMORY[0x1B2738A20](v9, v4);
          }

          else
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_51;
            }

            v18 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8 >= v18)
            {
              goto LABEL_52;
            }

            if (v9 >= v18)
            {
              goto LABEL_53;
            }

            v19 = *(v4 + 32 + 8 * v9);
            v16 = *(v4 + 32 + 8 * v8);
            v17 = v19;
          }

          v20 = v17;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
          {
            v4 = sub_1B1C00F10(v4);
            v21 = (v4 >> 62) & 1;
          }

          else
          {
            LODWORD(v21) = 0;
          }

          v22 = v4 & 0xFFFFFFFFFFFFFF8;
          v23 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
          *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v20;

          if ((v4 & 0x8000000000000000) != 0 || v21)
          {
            v4 = sub_1B1C00F10(v4);
            v22 = v4 & 0xFFFFFFFFFFFFFF8;
            if ((v9 & 0x8000000000000000) != 0)
            {
LABEL_43:
              __break(1u);
LABEL_44:
              v5 = v27;
              goto LABEL_45;
            }
          }

          else if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_43;
          }

          if (v9 >= *(v22 + 16))
          {
            goto LABEL_50;
          }

          v24 = v22 + 8 * v9;
          v25 = *(v24 + 32);
          *(v24 + 32) = v16;

          *v28 = v4;
        }

        v26 = __OFADD__(v8++, 1);
        if (v26)
        {
          goto LABEL_49;
        }
      }
    }

    v26 = __OFADD__(v9++, 1);
    if (v26)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
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
}

uint64_t sub_1B1B22AF4(void *a1)
{
  v1 = [a1 streamId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B1C2CB58();

  return v3;
}

unint64_t sub_1B1B22C04()
{
  result = qword_1EB760F90;
  if (!qword_1EB760F90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB760F90);
  }

  return result;
}

void sub_1B1B22C48(void *a1, void *a2, uint64_t a3)
{
  [a1 lock];
  if (!a2)
  {
    v7 = *(a3 + 32);
    *(a3 + 32) = 0;
LABEL_10:

    goto LABEL_11;
  }

  if (*(a3 + 24) > 0)
  {
    v6 = a2;
LABEL_9:
    v7 = *(a3 + 32);
    *(a3 + 32) = a2;
    goto LABEL_10;
  }

  v8 = qword_1EB7612A8;
  v9 = a2;
  if (v8 != -1)
  {
    swift_once();
  }

  if ((byte_1EB7612B0 & 1) == 0)
  {
    goto LABEL_9;
  }

  a2 = v9;
LABEL_11:
  [a1 unlock];
}

void *sub_1B1B22D30()
{
  type metadata accessor for EngineCachingService();
  v0 = swift_allocObject();
  result = EngineCachingService.init()();
  qword_1ED9A5090 = v0;
  return result;
}

uint64_t EngineCachingService.__allocating_init()()
{
  v0 = swift_allocObject();
  EngineCachingService.init()();
  return v0;
}

uint64_t sub_1B1B22DA4()
{
  v1 = *(v0 + 16);

  [v1 lock];
  v2 = *(v0 + 24);
  [v1 unlock];

  return v2;
}

uint64_t sub_1B1B22E04(uint64_t a1)
{
  v3 = *(v1 + 16);

  [v3 lock];
  sub_1B1B22E84(v1, a1);
  [v3 unlock];
}

void sub_1B1B22E84(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = a2 & ~(a2 >> 63);
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2 <= 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v5 = qword_1EB7612A8;
    v6 = v2;
    if (v5 != -1)
    {
      swift_once();
    }

    if (byte_1EB7612B0 == 1)
    {
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v7 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v7, qword_1ED9A9120);
      v8 = v6;
      v9 = sub_1B1C2C888();
      v10 = sub_1B1C2D0D8();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18 = v17;
        *v11 = 136315138;
        v12 = [v8 voicePath];
        v13 = sub_1B1C2CB58();
        v15 = v14;

        v16 = sub_1B1A930E4(v13, v15, &v18);

        *(v11 + 4) = v16;
        _os_log_impl(&dword_1B1A8A000, v9, v10, "No active session now, unloading cached engine with path %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x1B2739FD0](v17, -1, -1);
        MEMORY[0x1B2739FD0](v11, -1, -1);
      }

      else
      {
      }

      v6 = *(a1 + 32);
      *(a1 + 32) = 0;
    }
  }
}

uint64_t (*sub_1B1B23098(uint64_t a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_0_9(a1);
  [v3 lock];
  v4 = *(v2 + 24);
  [v3 unlock];

  *v1 = v4;
  return sub_1B1B2310C;
}

void sub_1B1B23130(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1B1B231C4(v1);
}

void *sub_1B1B23160()
{
  v1 = *(v0 + 16);

  [v1 lock];
  v2 = *(v0 + 32);
  v3 = v2;
  [v1 unlock];

  return v2;
}

void sub_1B1B231C4(void *a1)
{
  v3 = *(v1 + 16);
  v4 = a1;

  sub_1B1B22C48(v3, a1, v1);
}

void (*sub_1B1B23230(uint64_t a1))(void **a1, char a2)
{
  OUTLINED_FUNCTION_0_9(a1);
  [v3 lock];
  v4 = *(v2 + 32);
  v5 = v4;
  [v3 unlock];

  *v1 = v4;
  return sub_1B1B232A8;
}

void sub_1B1B232A8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1B1B231C4(v2);
  }

  else
  {
    sub_1B1B231C4(*a1);
  }
}

void *EngineCachingService.init()()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  return v0;
}

uint64_t EngineCachingService.__deallocating_deinit()
{
  EngineCachingService.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

id sub_1B1B23504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B1C2CB28();

  if (a4)
  {
    v7 = sub_1B1C2CB28();
  }

  else
  {
    v7 = 0;
  }

  v12[0] = 0;
  v8 = [v4 initWithVoicePath:v6 resourcePath:v7 error:v12];

  if (v8)
  {
    v9 = v12[0];
  }

  else
  {
    v10 = v12[0];
    sub_1B1C2C058();

    swift_willThrow();
  }

  return v8;
}

uint64_t sub_1B1B23658()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_1B1A91B08(v0);
  v3 = static WorkoutConfig.isClientAllowed(_:)(v1, v2);

  byte_1EB772CF1 = v3;
  return result;
}

BOOL static WorkoutConfig.isClientAllowed(_:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a1;
  if (qword_1EB7612E0 != -1)
  {
    a1 = swift_once();
  }

  v7[0] = v3;
  v7[1] = a2;
  MEMORY[0x1EEE9AC00](a1);
  v6[2] = v7;
  return sub_1B1ABAA5C(sub_1B1ABAB38, v6, v4);
}

uint64_t getEnumTagSinglePayload for WorkoutConfig(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for WorkoutConfig(_BYTE *result, int a2, int a3)
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

uint64_t SignpostHandler.__allocating_init(notificationCenter:)()
{
  v0 = swift_allocObject();
  SignpostHandler.init(notificationCenter:)();
  return v0;
}

uint64_t sub_1B1B238CC(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B1B23964();
  }

  return result;
}

void sub_1B1B23964()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v4 = v3;
  v5 = sub_1B1C2C838();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16();
  v11 = v10 - v9;
  sub_1B1C2C7F8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_10_8();
  if (*(v0 + OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_engineSelectionInterval))
  {
    v23 = v4;

    v13 = sub_1B1C2C818();
    sub_1B1C2C848();
    v22 = sub_1B1C2D178();

    if (sub_1B1C2D278())
    {

      sub_1B1C2C878();

      if ((*(v7 + 88))(v11, v5) == *MEMORY[0x1E69E93E8])
      {
        v14 = 0;
        v15 = 0;
        v21 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v11, v5);
        v21 = "engineTag=%s";
        v15 = 2;
        v14 = 1;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = v15;
      *(v16 + 1) = v14;
      *(v16 + 2) = 2080;
      *(v16 + 4) = sub_1B1A930E4(v23, v2, &v24);
      v18 = sub_1B1C2C7D8();
      _os_signpost_emit_with_name_impl(&dword_1B1A8A000, v13, v22, v18, "TTSEngineSelect", v21, v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }

    v19 = OUTLINED_FUNCTION_9_5();
    v20(v19);
  }

  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1B23C04()
{
  v1 = sub_1B1C2C7F8();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_10_8();
  sub_1B1C2C7E8();
  v5 = sub_1B1C2C818();
  v6 = sub_1B1C2D198();
  if (sub_1B1C2D278())
  {
    v7 = OUTLINED_FUNCTION_20_0();
    *v7 = 0;
    v8 = sub_1B1C2C7D8();
    _os_signpost_emit_with_name_impl(&dword_1B1A8A000, v5, v6, v8, "TTSServerFirstPacket", "", v7, 2u);
    OUTLINED_FUNCTION_11();
  }

  return (*(v3 + 8))(v0, v1);
}

uint64_t sub_1B1B23DD4(uint64_t a1)
{
  result = sub_1B1C2C828();
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

id sub_1B1B23EBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [a1 lock];
  sub_1B1B25D9C(a2, a3);
  return [a1 unlock];
}

id sub_1B1B23F3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserPreferences();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1B1B23F94()
{
  result = sub_1B1C2CB28();
  qword_1EB772D70 = result;
  return result;
}

uint64_t sub_1B1B23FCC()
{
  result = sub_1B1C2CB28();
  qword_1EB772D78 = result;
  return result;
}

uint64_t sub_1B1B24004()
{
  result = sub_1B1C2CB28();
  qword_1EB772D80 = result;
  return result;
}

uint64_t sub_1B1B2403C()
{
  result = sub_1B1C2CB28();
  qword_1EB772D88 = result;
  return result;
}

uint64_t sub_1B1B2407C()
{
  result = sub_1B1C2CB28();
  qword_1EB772D90 = result;
  return result;
}

uint64_t sub_1B1B240B4()
{
  result = sub_1B1C2CB28();
  qword_1EB772D98 = result;
  return result;
}

void static UserPreferences.setSpokenLanguageIdentifier(_:)(uint64_t a1, uint64_t a2)
{
  v5 = static UserPreferences.getSpokenLanguageIdentifier()();
  if (v6)
  {
    if (a2)
    {
      v7 = v5 == a1 && v6 == a2;
      if (v7 || (OUTLINED_FUNCTION_7_7() & 1) != 0)
      {

        return;
      }

      v14 = OUTLINED_FUNCTION_7_7();

      if (v14)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a2)
  {
    return;
  }

  if (qword_1EB761538 != -1)
  {
    OUTLINED_FUNCTION_4_6(&qword_1EB761538);
  }

  v8 = qword_1EB772D98;
  if (a2)
  {
    v9 = sub_1B1C2CB28();
  }

  else
  {
    v9 = 0;
  }

  if (qword_1EB761530 != -1)
  {
    OUTLINED_FUNCTION_3_9(&qword_1EB761530);
  }

  v10 = qword_1EB772D90;
  CFPreferencesSetAppValue(v8, v9, qword_1EB772D90);
  CFPreferencesAppSynchronize(v10);
  swift_unknownObjectRelease();
  if (qword_1EB761540 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_1EB761540);
  }

  v11 = qword_1EB772DB0;

  v12 = v11;
  [v12 lock];
  sub_1B1B243F4(v2, a1, a2);
  [v12 unlock];

  v13 = CFNotificationCenterGetDarwinNotifyCenter();
  OUTLINED_FUNCTION_8_5();
  v15 = sub_1B1C2CB28();
  OUTLINED_FUNCTION_9_6(v15, v15);
}

uint64_t static UserPreferences.getSpokenLanguageIdentifier()()
{
  sub_1B1B244C8();
  if (qword_1EB761540 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_1EB761540);
  }

  v0 = qword_1EB772DB0;
  [v0 lock];
  v1 = sub_1B1B24574();
  [v0 unlock];

  return v1;
}

uint64_t sub_1B1B243F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  qword_1EB772DA0 = a2;
  qword_1EB772DA8 = a3;

  if (__OFADD__(qword_1EB772E08, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_1EB772E08;
  }

  return result;
}

void sub_1B1B244C8()
{
  if (qword_1EB761540 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_1EB761540);
  }

  v0 = qword_1EB772DB0;
  [v0 lock];
  if (qword_1EB761550 != -1)
  {
    swift_once();
  }

  [v0 unlock];
}

uint64_t sub_1B1B24574()
{
  v0 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - v7;
  v9 = sub_1B1C2C4D8();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!qword_1EB772DA8)
  {
    if (qword_1EB761538 != -1)
    {
      OUTLINED_FUNCTION_4_6(&qword_1EB761538);
    }

    v15 = qword_1EB772D98;
    if (qword_1EB761530 != -1)
    {
      OUTLINED_FUNCTION_3_9(&qword_1EB761530);
    }

    v16 = CFPreferencesCopyAppValue(v15, qword_1EB772D90);
    if (v16)
    {
      v34 = v16;
      v17 = swift_dynamicCast();
      v18 = v32;
      v19 = v33;
      if (!v17)
      {
        v18 = 0;
        v19 = 0;
      }
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    qword_1EB772DA0 = v18;
    qword_1EB772DA8 = v19;

    if (!qword_1EB772DA8)
    {
      if (qword_1EB772DC0)
      {
        goto LABEL_23;
      }

      sub_1B1C2C4C8();
      v20 = sub_1B1B24ED8();
      if (v21)
      {
        v22 = v21;
        v31 = v20;
        if (qword_1EB761568 != -1)
        {
          OUTLINED_FUNCTION_2_10(&qword_1EB761568);
          v20 = v31;
        }

        if (sub_1B1A93A00(v20, v22, qword_1EB772E18))
        {
          qword_1EB772DB8 = v31;
          qword_1EB772DC0 = v22;

LABEL_22:
          (*(v11 + 8))(v14, v9);
LABEL_23:
          qword_1EB772DA0 = qword_1EB772DB8;
          qword_1EB772DA8 = qword_1EB772DC0;

          if (!qword_1EB772DA8)
          {
            qword_1EB772DA0 = sub_1B1B25314();
            qword_1EB772DA8 = v26;
          }

          goto LABEL_25;
        }
      }

      if (qword_1EB761560 != -1)
      {
        swift_once();
      }

      v31 = qword_1EB772E10;
      v23 = sub_1B1C2CB28();
      v29 = v23;
      v30 = sub_1B1C2CB28();
      v24 = [v31 URLForResource:v23 withExtension:0 subdirectory:v30];

      if (v24)
      {
        sub_1B1C2C168();

        (*(v2 + 32))(v8, v6, v0);
        qword_1EB772DB8 = sub_1B1B2513C(v14, v8);
        qword_1EB772DC0 = v25;

        (*(v2 + 8))(v8, v0);
      }

      goto LABEL_22;
    }
  }

LABEL_25:
  v27 = qword_1EB772DA0;

  return v27;
}

uint64_t static UserPreferences.getAvailableLanguageIdentifiers()()
{
  if (qword_1EB761540 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_1EB761540);
  }

  v0 = qword_1EB772DB0;
  [v0 lock];
  if (qword_1EB761568 != -1)
  {
    OUTLINED_FUNCTION_2_10(&qword_1EB761568);
  }

  v1 = qword_1EB772E18;

  [v0 unlock];

  return v1;
}

uint64_t static UserPreferences.defaultOutputLanguageIdentifier()()
{
  sub_1B1B244C8();
  v3[0] = 0;
  v3[1] = 0;
  if (qword_1EB761540 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_1EB761540);
  }

  v1 = qword_1EB772DB0;
  [v1 lock];
  sub_1B1B24B48(v0, v3);
  [v1 unlock];

  return v3[0];
}

uint64_t sub_1B1B24B48(uint64_t a1, void *a2)
{
  v5 = sub_1B1C2C1C8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v29 - v10;
  v12 = sub_1B1C2C4D8();
  MEMORY[0x1EEE9AC00](v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = qword_1EB772DD0;
  if (qword_1EB772DD0)
  {
    goto LABEL_15;
  }

  v30 = v6;
  v31 = v13;
  v32 = v2;
  sub_1B1C2C4C8();
  v29[1] = a1;
  v17 = sub_1B1B24ED8();
  if (!v18)
  {
    goto LABEL_8;
  }

  v19 = v17;
  v20 = v18;
  if (qword_1EB761570 != -1)
  {
    swift_once();
  }

  if (!sub_1B1A93A00(v19, v20, qword_1EB772E20))
  {

LABEL_8:
    if (qword_1EB761560 != -1)
    {
      swift_once();
    }

    v21 = qword_1EB772E10;
    v22 = sub_1B1C2CB28();
    v23 = sub_1B1C2CB28();
    v24 = [v21 URLForResource:v22 withExtension:0 subdirectory:v23];

    if (v24)
    {
      sub_1B1C2C168();

      v25 = v30;
      (*(v30 + 32))(v11, v9, v5);
      qword_1EB772DC8 = sub_1B1B2513C(v15, v11);
      qword_1EB772DD0 = v26;

      (*(v25 + 8))(v11, v5);
    }

    goto LABEL_12;
  }

  qword_1EB772DC8 = v19;
  qword_1EB772DD0 = v20;

LABEL_12:
  if (!qword_1EB772DD0)
  {
    qword_1EB772DC8 = sub_1B1B25314();
    qword_1EB772DD0 = v27;
  }

  (*(v31 + 8))(v15, v12);
  v16 = qword_1EB772DD0;
LABEL_15:
  *a2 = qword_1EB772DC8;
  a2[1] = v16;
}

uint64_t sub_1B1B24ED8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762328, &unk_1B1C37AB0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v22 - v1;
  v3 = sub_1B1B25D08();
  v6 = v5;
  v8 = v7;
  if (v4)
  {
    v9 = v3;
    v10 = v4;

    sub_1B1C2C4B8();
    v11 = sub_1B1C2C4A8();
    if (__swift_getEnumTagSinglePayload(v2, 1, v11) == 1)
    {

      sub_1B1A90C78(v2, &qword_1EB762328, &unk_1B1C37AB0);
LABEL_4:

      return v6;
    }

    v12 = sub_1B1C2C498();
    v14 = v13;
    (*(*(v11 - 8) + 8))(v2, v11);
    if (v8)
    {
      v15 = v6 == 0x42472D6E65 && v8 == 0xE500000000000000;
      if (!v15 && (sub_1B1C2D7A8() & 1) == 0)
      {

        swift_bridgeObjectRelease_n();
        return v6;
      }

      v16 = v12 == 21825 && v14 == 0xE200000000000000;
      if (v16 || ((v17 = sub_1B1C2D7A8(), v12 == 23118) ? (v18 = v14 == 0xE200000000000000) : (v18 = 0), !v18 ? (v19 = 0) : (v19 = 1), (v17 & 1) != 0 || (v19 & 1) != 0))
      {
      }

      else
      {
        v20 = sub_1B1C2D7A8();

        if ((v20 & 1) == 0)
        {

          goto LABEL_4;
        }
      }
    }

    v22[0] = v9;
    v22[1] = v10;
    MEMORY[0x1B27381B0](45, 0xE100000000000000);
    MEMORY[0x1B27381B0](v12, v14);

    return v22[0];
  }

  return v6;
}

uint64_t sub_1B1B2513C(uint64_t a1, uint64_t a2)
{
  sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a2);
  v7 = objc_allocWithZone(MEMORY[0x1E695DF90]);
  v8 = sub_1B1B267A4(v5);
  if (v8)
  {
    v20 = 0;
    v11 = v8;
    sub_1B1C2CA88();

    v12 = v20;
    if (v20)
    {
      v13 = sub_1B1B24ED8();
      if (v14)
      {
        v9 = sub_1B1A945F4(v13, v14, v12);
        v16 = v15;

        if (v16)
        {
LABEL_13:

          return v9;
        }
      }

      else
      {
        v9 = 0;
      }

      v17 = sub_1B1B25D08();
      v19 = v18;

      if (v19)
      {

        v9 = sub_1B1A945F4(v17, v19, v12);
      }

      goto LABEL_13;
    }
  }

  return 0;
}

uint64_t sub_1B1B25314()
{
  v0 = sub_1B1C2C488();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id sub_1B1B25388(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  swift_getObjCClassMetadata();
  a3();
  if (v4)
  {
    v5 = sub_1B1C2CB28();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t static UserPreferences.setLogging(_:)(char a1)
{
  if (a1)
  {
    v1 = 6;
  }

  else
  {
    v1 = -1;
  }

  if (qword_1EB761520 != -1)
  {
    OUTLINED_FUNCTION_6_7(&qword_1EB761520);
  }

  v2 = qword_1EB772D80;
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  if (qword_1EB761518 != -1)
  {
    OUTLINED_FUNCTION_5_6(&qword_1EB761518);
  }

  v4 = qword_1EB772D78;
  v5 = sub_1B1C2CB28();
  v6 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(v2, v3, v4, v5, *MEMORY[0x1E695E898]);

  if (qword_1EB761528 != -1)
  {
    swift_once();
  }

  v7 = qword_1EB772D88;
  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v9 = sub_1B1C2CB28();
  CFPreferencesSetValue(v7, v8, v4, v9, v6);

  v10 = sub_1B1C2CB28();
  CFPreferencesSynchronize(v4, v10, v6);

  return notify_post("com.apple.AppSupport.loggingDefaultsChanged");
}

uint64_t static UserPreferences.getLogging()()
{
  if (qword_1EB761520 != -1)
  {
    OUTLINED_FUNCTION_6_7(&qword_1EB761520);
  }

  v0 = qword_1EB772D80;
  if (qword_1EB761518 != -1)
  {
    OUTLINED_FUNCTION_5_6(&qword_1EB761518);
  }

  v1 = qword_1EB772D78;
  v2 = sub_1B1C2CB28();
  v3 = CFPreferencesCopyValue(v0, v1, v2, *MEMORY[0x1E695E898]);

  if (!v3)
  {
    return 0;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v5 > 0;
  }

  return result;
}

id UserPreferences.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserPreferences();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B1B25714()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  qword_1EB772DB0 = result;
  return result;
}

id sub_1B1B25748()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  qword_1EB772E00 = result;
  return result;
}

void sub_1B1B25780()
{
  v0 = CFNotificationCenterGetDarwinNotifyCenter();
  v1 = sub_1B1C2CB28();
  CFNotificationCenterAddObserver(v0, 0, sub_1B1B25950, v1, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v2 = CFNotificationCenterGetLocalCenter();
  if (*MEMORY[0x1E695E6E0])
  {
    v3 = v2;
    CFNotificationCenterAddObserver(v2, 0, sub_1B1B25968, *MEMORY[0x1E695E6E0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  else
  {
    __break(1u);
  }
}

void sub_1B1B2585C()
{
  v4 = 0;
  if (qword_1EB761540 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_1EB761540);
  }

  v1 = qword_1EB772DB0;
  [v1 lock];
  sub_1B1B25980(v0, &v4);
  [v1 unlock];

  if (v4 == 1)
  {
    v2 = CFNotificationCenterGetLocalCenter();
    OUTLINED_FUNCTION_8_5();
    v3 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_9_6(v3, v3);
  }
}

void sub_1B1B25980(uint64_t a1, _BYTE *a2)
{
  if (qword_1EB772E08 >= 1)
  {
    --qword_1EB772E08;
    return;
  }

  *a2 = 1;
  if (qword_1EB761530 != -1)
  {
    swift_once();
  }

  CFPreferencesAppSynchronize(qword_1EB772D90);
  qword_1EB772DB8 = 0;
  qword_1EB772DC0 = 0;

  qword_1EB772DC8 = 0;
  qword_1EB772DD0 = 0;

  v3 = qword_1EB772DA8;
  if (qword_1EB772DA8)
  {
    v4 = qword_1EB772DA0;
    qword_1EB772DA0 = 0;
    qword_1EB772DA8 = 0;
    v5 = sub_1B1B24574();
    if (!v6)
    {

      return;
    }

    if (v4 == v5 && v3 == v6)
    {

LABEL_16:
      *a2 = 0;
      return;
    }

    v8 = sub_1B1C2D7A8();

    if (v8)
    {
      goto LABEL_16;
    }
  }
}

void sub_1B1B25AC4()
{
  v0 = CFNotificationCenterGetDarwinNotifyCenter();
  v1 = v0;
  if (qword_1EB761510 != -1)
  {
    swift_once();
    v0 = v1;
  }

  CFNotificationCenterAddObserver(v0, 0, sub_1B1B25C4C, qword_1EB772D70, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void sub_1B1B25B60()
{
  if (qword_1EB761548 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB772E00;
  [v0 lock];
  sub_1B1B25C00();
  [v0 unlock];

  type metadata accessor for UserPreferences();
  sub_1B1B2585C();
}

uint64_t sub_1B1B25C00()
{
  qword_1EB772DD8 = 0;
  qword_1EB772DE0 = 0;

  xmmword_1EB772DF0 = 0uLL;
}

void sub_1B1B25C64(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(void *, uint64_t, void *, uint64_t, void *))
{
  v12 = a1;
  v13 = a3;
  v14 = a5;
  a6(a1, a2, a3, a4, a5);
}

uint64_t sub_1B1B25D08()
{
  memset(v3, 0, sizeof(v3));
  if (qword_1EB761548 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB772E00;
  sub_1B1B23EBC(v1, v0, v3, v0);

  return *&v3[0];
}

uint64_t sub_1B1B25D9C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762320, &unk_1B1C39760);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v29 - v4;
  if (!qword_1EB772DE0)
  {
    if (qword_1EB761558 != -1)
    {
      swift_once();
    }

    v6 = sub_1B1C2C488();
    if (!v6[2])
    {
      goto LABEL_15;
    }

    v8 = v6[4];
    v7 = v6[5];

    v29[2] = v8;
    v29[3] = v7;
    v29[0] = 45;
    v29[1] = 0xE100000000000000;
    v9 = sub_1B1C2C4D8();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
    sub_1B1A8EDAC();
    sub_1B1C2D3C8();
    v11 = v10;
    v13 = v12;
    sub_1B1A90C78(v5, &qword_1EB762320, &unk_1B1C39760);
    if (v13)
    {
      qword_1EB772DD8 = v8;
      qword_1EB772DE0 = v7;

      goto LABEL_16;
    }

    v14 = sub_1B1C2CC98();
    if ((v15 & 1) != 0 || (v14 ^ v11) >> 14)
    {
      if ((sub_1B1C2CDA8() & 1) == 0)
      {
LABEL_14:
        v16 = sub_1B1C2CE08();
        v18 = v17;
        v20 = v19;
        v22 = v21;

        v23 = MEMORY[0x1B27380D0](v16, v18, v20, v22);
        v25 = v24;

        qword_1EB772DD8 = v23;
        qword_1EB772DE0 = v25;
LABEL_15:

        goto LABEL_16;
      }

      xmmword_1EB772DF0 = xmmword_1B1C37A70;
    }

    else
    {
      *&xmmword_1EB772DF0 = v8;
      *(&xmmword_1EB772DF0 + 1) = v7;
    }

    goto LABEL_14;
  }

LABEL_16:
  v26 = qword_1EB772DE0;
  v27 = xmmword_1EB772DF0;
  *a2 = qword_1EB772DD8;
  *(a2 + 8) = v26;

  *(a2 + 16) = v27;
}

id sub_1B1B26090()
{
  sub_1B1B268F0();
  result = sub_1B1B26C98(0xD000000000000017, 0x80000001B1C4AEA0);
  if (result)
  {
    qword_1EB772E10 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1B260E4()
{
  result = sub_1B1B26128();
  qword_1EB772E18 = result;
  return result;
}

uint64_t sub_1B1B26128()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762320, &unk_1B1C39760);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v35 - v1;
  v3 = sub_1B1C2C1C8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1E69E7CD0];
  if (qword_1EB761560 != -1)
  {
    swift_once();
  }

  v7 = qword_1EB772E10;
  v8 = sub_1B1C2CB28();
  v9 = sub_1B1B26934(7235938, 0xE300000000000000, v8, v7);

  if (!v9)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v10 = *(v9 + 16);
  if (!v10)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v12 = *(v4 + 16);
  v11 = v4 + 16;
  v13 = *(v11 + 64);
  v35 = v9;
  v36 = v2;
  v14 = v9 + ((v13 + 32) & ~v13);
  v38 = *(v11 + 56);
  v39 = v12;
  v37 = (v11 - 8);
  do
  {
    v39(v6, v14, v3);
    v15 = sub_1B1C2C0F8();
    v17 = v16;
    (*v37)(v6, v3);
    v42[0] = v15;
    v42[1] = v17;
    v40 = 46;
    v41 = 0xE100000000000000;
    v18 = sub_1B1C2C4D8();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v18);
    sub_1B1A8EDAC();
    v19 = sub_1B1C2D3C8();
    v21 = v20;
    sub_1B1A90C78(v2, &qword_1EB762320, &unk_1B1C39760);
    if ((v21 & 1) == 0 && v19 >= 0x4000)
    {
      v22 = sub_1B1C2CE08();
      v24 = v23;
      v26 = v25;
      v27 = v11;
      v28 = v3;
      v30 = v29;

      v31 = MEMORY[0x1B27380D0](v22, v24, v26, v30);
      v33 = v32;
      v3 = v28;
      v11 = v27;
      v2 = v36;

      sub_1B1ACB778(v42, v31, v33);
    }

    v14 += v38;
    --v10;
  }

  while (v10);

  return v43;
}

uint64_t sub_1B1B2647C()
{
  result = sub_1B1B2649C();
  qword_1EB772E20 = result;
  return result;
}

uint64_t sub_1B1B2649C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762320, &unk_1B1C39760);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v24 - v1;
  v3 = sub_1B1C2C1C8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1E69E7CD0];
  if (qword_1EB761560 != -1)
  {
    swift_once();
  }

  v7 = qword_1EB772E10;
  v8 = sub_1B1C2CB28();
  v9 = [v7 URLsForResourcesWithExtension:0 subdirectory:v8];

  if (!v9)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v10 = sub_1B1C2CE78();

  v11 = *(v10 + 16);
  if (!v11)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v12 = v4 + 16;
  v13 = *(v4 + 16);
  v14 = *(v4 + 80);
  v24[1] = v10;
  v15 = v10 + ((v14 + 32) & ~v14);
  v25 = *(v12 + 56);
  v26 = v13;
  v27 = v12;
  v16 = (v12 - 8);
  do
  {
    v26(v6, v15, v3);
    v17 = sub_1B1C2C0F8();
    v19 = v18;
    (*v16)(v6, v3);
    v30[0] = v17;
    v30[1] = v19;
    v28 = 45;
    v29 = 0xE100000000000000;
    v20 = sub_1B1C2C4D8();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v20);
    sub_1B1A8EDAC();
    sub_1B1C2D3C8();
    v22 = v21;
    sub_1B1A90C78(v2, &qword_1EB762320, &unk_1B1C39760);
    if ((v22 & 1) == 0)
    {
      sub_1B1ACB778(v30, v17, v19);
    }

    v15 += v25;
    --v11;
  }

  while (v11);

  return v31;
}

id sub_1B1B267A4(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1B1C2C118();
  v13[0] = 0;
  v5 = [v2 initWithContentsOfURL:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_1B1C2C1C8();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_1B1C2C058();

    swift_willThrow();
    v11 = sub_1B1C2C1C8();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

unint64_t sub_1B1B268F0()
{
  result = qword_1ED9A9810;
  if (!qword_1ED9A9810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9A9810);
  }

  return result;
}

uint64_t sub_1B1B26934(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1B1C2CB28();

  v7 = [a4 URLsForResourcesWithExtension:v6 subdirectory:a3];

  if (!v7)
  {
    return 0;
  }

  sub_1B1C2C1C8();
  v8 = sub_1B1C2CE78();

  return v8;
}

uint64_t sub_1B1B269CC(int a1)
{
  v2 = 0;
  while (v2 != 32)
  {
    v3 = *(&unk_1F28B84F8 + v2 + 32);
    if (v3 < -32)
    {
      goto LABEL_12;
    }

    v4 = a1 >> 31;
    if (v3 <= 32)
    {
      if (v3 < 0)
      {
        if (v3 == -32)
        {
LABEL_12:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
          v5 = swift_allocObject();
          v6 = MEMORY[0x1E69E72F0];
          v7 = MEMORY[0x1E69E7358];
          *(v5 + 16) = xmmword_1B1C361C0;
          *(v5 + 56) = v6;
          *(v5 + 64) = v7;
          *(v5 + 32) = a1;
          return sub_1B1C2CB98();
        }

        v4 = a1 << -v3;
      }

      else
      {
        v4 = a1 >> 31;
        if (v3 != 32)
        {
          v4 = a1 >> v3;
        }
      }
    }

    v2 += 8;
    if (v4 - 32 >= 0x5F)
    {
      goto LABEL_12;
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
  sub_1B1B2F958(0, 4, 0);
  for (i = 0; i != 32; i += 8)
  {
    v9 = sub_1B1C2CC38();
    v11 = v10;
    v13 = *(v17 + 16);
    v12 = *(v17 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1B1B2F958(v12 > 1, v13 + 1, 1);
    }

    *(v17 + 16) = v13 + 1;
    v14 = v17 + 16 * v13;
    *(v14 + 32) = v9;
    *(v14 + 40) = v11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7623D8, &qword_1B1C37B78);
  sub_1B1B27C48();
  v15 = sub_1B1C2CDE8();
  MEMORY[0x1B27381B0](v15);

  MEMORY[0x1B27381B0](39, 0xE100000000000000);
  return 39;
}

id sub_1B1B26C98(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B1C2CB28();

  v3 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v3;
}

id sub_1B1B26CFC()
{
  sub_1B1A8E474(0, &qword_1ED9A9810, 0x1E696AAE8);
  result = sub_1B1B26C98(0xD00000000000001DLL, 0x80000001B1C4AF60);
  if (result)
  {
    qword_1ED9AA640 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B1B26D9C()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    byte_1EB762331 = deviceClassNumber == 1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1B1B26E10()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    byte_1EB762332 = deviceClassNumber == 2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1B1B26E84()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    byte_1EB762333 = deviceClassNumber == 3;
  }

  else
  {
    __break(1u);
  }
}

void sub_1B1B26F0C(uint64_t a1, uint64_t (*a2)(void), _BYTE *a3)
{
  v5 = MobileGestalt_get_current_device();
  if (v5)
  {
    v6 = v5;
    v7 = a2();

    *a3 = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B1B26F88()
{
  result = SiriTTSService_DiagnosticLogSubmissionEnabled();
  byte_1ED9A7AD5 = result;
  return result;
}

void sub_1B1B26FD4()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    v2 = MobileGestalt_copy_buildVersion_obj();

    if (v2)
    {
      v3 = sub_1B1C2CB58();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0xE000000000000000;
    }

    qword_1EB762338 = v3;
    unk_1EB762340 = v5;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static MobileGestalt.buildVersion.getter()
{
  if (qword_1EB761590 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB762338;

  return v0;
}

uint64_t sub_1B1B2710C()
{
  sub_1B1C2D888();
  MEMORY[0x1B2738D60](0);
  return sub_1B1C2D8E8();
}

uint64_t sub_1B1B27158(uint64_t a1)
{
  sub_1B1C2D888();
  MEMORY[0x1B2738D60](0);
  return sub_1B1C2D8E8();
}

uint64_t sub_1B1B271A0()
{
  v2[3] = &type metadata for Features.Flags;
  v2[4] = sub_1B1B27BF4();
  v0 = sub_1B1C2C4E8();
  result = __swift_destroy_boxed_opaque_existential_0(v2);
  byte_1EB7612B0 = v0 & 1;
  return result;
}

uint64_t sub_1B1B2721C(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return *a2;
}

uint64_t sub_1B1B273A4(uint64_t a1, void *a2, _BYTE *a3, _BYTE *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    result = swift_once();
  }

  *a4 = *a3;
  return result;
}

id sub_1B1B27490(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_opt_self();
  v5 = sub_1B1C2CB28();
  v6 = [v4 *a3];

  return v6;
}

id static NeuralUtils.compileANEModel(voicePath:)(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_self();
  v3 = sub_1B1C2CB28();
  v7[0] = 0;
  v4 = [v2 compileANEModel:v3 error:v7];

  if (v4)
  {
    return v7[0];
  }

  v6 = v7[0];
  sub_1B1C2C058();

  return swift_willThrow();
}

id sub_1B1B275F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NSRangeUtil();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NSRangeUtil.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NSRangeUtil();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B1B276E0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_1B1C2CD98();
    OUTLINED_FUNCTION_5_7(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x1B2738200](15, a1 >> 16);
    OUTLINED_FUNCTION_5_7(v3);
    return v4 | 8;
  }
}

uint64_t sub_1B1B2777C(uint64_t a1)
{
  result = sub_1B1A8E474(319, &qword_1EB7623D0, 0x1E696AD10);
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B1B27814(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 8) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 8) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1B1B27994(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 8) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v22 = &a1[v10 + 8] & ~v10;

            __swift_storeEnumTagSinglePayload(v22, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *a1 = v21;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1B1B27BF4()
{
  result = qword_1EB761298;
  if (!qword_1EB761298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB761298);
  }

  return result;
}

unint64_t sub_1B1B27C48()
{
  result = qword_1EB7623E0;
  if (!qword_1EB7623E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7623D8, &qword_1B1C37B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7623E0);
  }

  return result;
}

uint64_t sub_1B1B27CAC(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_53();
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *sub_1B1B27CF8(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B1B27DA8()
{
  result = qword_1EB7623E8;
  if (!qword_1EB7623E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7623E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TTSFeatureFlags(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for TTSFeatureFlags.FFKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TTSFeatureFlags.FFKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B1B28030()
{
  result = qword_1EB7623F0;
  if (!qword_1EB7623F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7623F0);
  }

  return result;
}

uint64_t RetryTextModificationAction.__allocating_init(pool:)(uint64_t a1)
{
  swift_allocObject();
  v1 = _s14SiriTTSService17PassThroughActionCACycfc_0();

  return v1;
}

uint64_t RetryTextModificationAction.init(pool:)(uint64_t a1)
{
  v1 = _s14SiriTTSService17PassThroughActionCACycfc_0();

  return v1;
}

void sub_1B1B28100(uint64_t a1)
{
  v2 = sub_1B1AA95C4();
  if (v2)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    type metadata accessor for Localization();
    v5 = SynthesizingRequestProtocol.voice.getter(ObjectType);
    v6 = &v5[OBJC_IVAR___SiriTTSSynthesisVoice_language];
    swift_beginAccess();
    v8 = *v6;
    v7 = v6[1];

    sub_1B1B63794(v8, v7);

    MEMORY[0x1B27381B0](32, 0xE100000000000000);

    v9 = SynthesizingRequestProtocol.text.getter();
    v11 = v10;

    MEMORY[0x1B27381B0](v9, v11);

    SynthesizingRequestProtocol.text.setter();
    sub_1B1AA81A8(a1);
  }

  else
  {
    sub_1B1A9EC9C();
    swift_allocError();
    *v12 = 1;
    *(v12 + 8) = 0xD000000000000036;
    *(v12 + 16) = 0x80000001B1C4B190;
    swift_willThrow();
  }
}

uint64_t RetryTextModificationAction.__deallocating_deinit()
{
  v0 = Buffer.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1B1B2830C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = RetryTextModificationAction.__allocating_init(pool:)(a1);
  *a2 = result;
  return result;
}

id sub_1B1B283BC(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  ObjectType = swift_getObjectType();
  v4 = v2;
  v5 = SynthesizingRequestProtocol.voice.getter(ObjectType);
  OUTLINED_FUNCTION_1_11(v5, v47);

  v6 = sub_1B1C2CB28();

  [v4 setLanguage_];

  v7 = SynthesizingRequestProtocol.text.getter();
  sub_1B1AD55EC(v7, v8, v4, &selRef_setText_);
  v9 = SynthesizingRequestProtocol.voice.getter(ObjectType);
  v10 = &v9[OBJC_IVAR___SiriTTSSynthesisVoice_name];
  swift_beginAccess();
  v11 = *(v10 + 1);

  if (v11)
  {
    v12 = sub_1B1C2CB28();
  }

  else
  {
    v12 = 0;
  }

  [v4 setVoiceName_];

  v13 = MEMORY[0x1E69E7D40];
  v14 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xA8))();
  sub_1B1AD55EC(v14, v15, v4, &selRef_setAppId_);
  *&v16 = SynthesizingRequestProtocol.pitch.getter(ObjectType);
  [v4 setPitch_];
  *&v17 = SynthesizingRequestProtocol.rate.getter(ObjectType);
  [v4 setRate_];
  *&v18 = SynthesizingRequestProtocol.volume.getter(ObjectType);
  [v4 setVolume_];
  v19 = SynthesizingRequestProtocol.voice.getter(ObjectType);
  v20 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
  swift_beginAccess();
  v21 = *&v19[v20];

  SynthesisVoice.VoiceType.description.getter(v21);
  v22 = sub_1B1C2CB28();

  [v4 setPreferredType_];

  [v4 setRequestCreatedTime_];
  v23 = SynthesizingRequestProtocol.prosodyProperties.getter(ObjectType);
  OUTLINED_FUNCTION_1_11(v23, v46);

  OUTLINED_FUNCTION_3_10(v25, v24, sel_setNeuralSentencePitch_);
  v26 = SynthesizingRequestProtocol.prosodyProperties.getter(ObjectType);
  OUTLINED_FUNCTION_1_11(v26, v45);

  OUTLINED_FUNCTION_3_10(v28, v27, sel_setNeuralSentencePitchRange_);
  v29 = SynthesizingRequestProtocol.prosodyProperties.getter(ObjectType);
  OUTLINED_FUNCTION_1_11(v29, v44);

  OUTLINED_FUNCTION_3_10(v31, v30, sel_setNeuralSentenceDuration_);
  v32 = SynthesizingRequestProtocol.prosodyProperties.getter(ObjectType);
  OUTLINED_FUNCTION_1_11(v32, v43);

  OUTLINED_FUNCTION_3_10(v34, v33, sel_setNeuralSentenceEnergy_);
  v35 = SynthesizingRequestProtocol.prosodyProperties.getter(ObjectType);
  OUTLINED_FUNCTION_1_11(v35, v42);

  OUTLINED_FUNCTION_3_10(v37, v36, sel_setNeuralSentenceTilt_);
  v38 = SynthesizingRequestProtocol.prosodyProperties.getter(ObjectType);
  swift_beginAccess();

  OUTLINED_FUNCTION_3_10(v40, v39, sel_setNeuralSentencePitch_);
  return v4;
}

uint64_t sub_1B1B287C0(uint64_t a1)
{
  v1 = sub_1B1C2CBE8();
  v3 = v2;
  v4 = v1 == 0x746361706D6F63 && v2 == 0xE700000000000000;
  if (v4 || (v5 = v1, (OUTLINED_FUNCTION_3(0x746361706D6F63, 0xE700000000000000) & 1) != 0))
  {

    return 1;
  }

  else
  {
    v7 = v5 == 0x6D75696D657270 && v3 == 0xE700000000000000;
    if (v7 || (OUTLINED_FUNCTION_3(0x6D75696D657270, 0xE700000000000000) & 1) != 0)
    {

      return 2;
    }

    else if (v5 == 0x686D75696D657270 && v3 == 0xEB00000000686769)
    {

      return 3;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_3(0x686D75696D657270, 0xEB00000000686769);

      if (v9)
      {
        return 3;
      }

      else
      {
        return 0;
      }
    }
  }
}

uint64_t sub_1B1B288C0(uint64_t a1)
{
  v2 = sub_1B1C2CBE8();
  v4 = v3;
  v5 = v2 == 0x657A696C61636F76 && v3 == 0xE900000000000072;
  if (v5 || (v6 = OUTLINED_FUNCTION_5_4(), (OUTLINED_FUNCTION_3(v6, 0xE900000000000072) & 1) != 0))
  {

    return 1;
  }

  else
  {
    v8 = v1 == 0x6D6F74737563 && v4 == 0xE600000000000000;
    if (v8 || (OUTLINED_FUNCTION_3(0x6D6F74737563, 0xE600000000000000) & 1) != 0)
    {

      return 2;
    }

    else
    {
      v9 = v1 == 0x6E6F6870797267 && v4 == 0xE700000000000000;
      if (v9 || (OUTLINED_FUNCTION_3(0x6E6F6870797267, 0xE700000000000000) & 1) != 0)
      {

        return 3;
      }

      else
      {
        v10 = v1 == 0x6C617275656ELL && v4 == 0xE600000000000000;
        if (v10 || (OUTLINED_FUNCTION_3(0x6C617275656ELL, 0xE600000000000000) & 1) != 0)
        {

          return 4;
        }

        else if (v1 == 0x6C61727574616ELL && v4 == 0xE700000000000000)
        {

          return 6;
        }

        else
        {
          v12 = OUTLINED_FUNCTION_3(0x6C61727574616ELL, 0xE700000000000000);

          if (v12)
          {
            return 6;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }
}

uint64_t sub_1B1B28A30(uint64_t a1)
{
  v2 = sub_1B1C2CBE8();
  v4 = v3;
  v5 = v2 == 0x656C616D6566 && v3 == 0xE600000000000000;
  if (v5 || (v6 = OUTLINED_FUNCTION_5_4(), (OUTLINED_FUNCTION_3(v6, 0xE600000000000000) & 1) != 0))
  {

    return 2;
  }

  else if (v1 == 1701601645 && v4 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3(1701601645, 0xE400000000000000);

    return v9 & 1;
  }
}

char *sub_1B1B28AE0()
{
  v1 = v0;
  v2 = [v0 voiceLanguage];
  sub_1B1C2CB58();

  v3 = [v1 voiceName];
  sub_1B1C2CB58();

  v4 = objc_allocWithZone(type metadata accessor for SynthesisVoice());
  OUTLINED_FUNCTION_5_4();
  v5 = SynthesisVoice.init(language:name:)();
  v6 = [v1 voiceFootprint];
  v7 = sub_1B1C2CB58();

  v8 = sub_1B1B287C0(v7);

  v9 = OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0];
  OUTLINED_FUNCTION_66_0(&v5[OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0]], v24);
  *&v5[v9] = v8;
  v10 = [v1 voiceType];
  v11 = sub_1B1C2CB58();

  v12 = sub_1B1B288C0(v11);

  v13 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
  OUTLINED_FUNCTION_66_0(&v5[OBJC_IVAR___SiriTTSSynthesisVoice_type], v23);
  *&v5[v13] = v12;
  v14 = [v1 voiceVersion];
  v15 = OBJC_IVAR___SiriTTSSynthesisVoice_version;
  OUTLINED_FUNCTION_66_0(OBJC_IVAR___SiriTTSSynthesisVoice_version + v5, v22);
  *(v15 + v5) = v14;
  v16 = [v1 voiceGender];
  v17 = sub_1B1C2CB58();

  v18 = sub_1B1B28A30(v17);

  v19 = OBJC_IVAR___SiriTTSSynthesisVoice_gender;
  OUTLINED_FUNCTION_66_0(&v5[OBJC_IVAR___SiriTTSSynthesisVoice_gender], &v21);
  *&v5[v19] = v18;
  return v5;
}

char *sub_1B1B28CE8()
{
  v1 = v0;
  v2 = [v0 resourceLanguage];
  sub_1B1C2CB58();
  v4 = v3;

  v5 = objc_allocWithZone(type metadata accessor for SynthesisResource());
  v6 = OUTLINED_FUNCTION_5_4();
  v7 = SynthesisResource.init(language:)(v6, v4);
  v8 = [v1 resourceVersion];
  v9 = OBJC_IVAR___SiriTTSSynthesisResource_version;
  OUTLINED_FUNCTION_66_0(&v7[OBJC_IVAR___SiriTTSSynthesisResource_version], v11);
  *&v7[v9] = v8;
  return v7;
}

char *sub_1B1B28D94()
{
  type metadata accessor for AudioData();
  v1 = [v0 audioData];
  v2 = sub_1B1C2C2B8();
  v4 = v3;

  [v0 asbd];
  return AudioData.__allocating_init(serverOpusBytes:asbd:)(v2, v4, v6);
}

uint64_t sub_1B1B28E3C()
{
  v1 = [v0 timingInfos];
  sub_1B1A8E474(0, &qword_1ED9A4C68, off_1E7AF1A48);
  v2 = sub_1B1C2CE78();

  v3 = sub_1B1A9547C();
  if (v3)
  {
    v4 = v3;
    v10 = MEMORY[0x1E69E7CC0];
    result = sub_1B1C2D5B8();
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v6 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1B2738A20](v6, v2);
        }

        else
        {
          v7 = *(v2 + 8 * v6 + 32);
        }

        v8 = v7;
        ++v6;
        [v7 timestamp];
        [v8 textRange];
        v9 = objc_allocWithZone(type metadata accessor for WordTimingInfo());
        WordTimingInfo.init(startTiming:textRange:)();

        sub_1B1C2D588();
        sub_1B1C2D5C8();
        sub_1B1C2D5D8();
        sub_1B1C2D598();
      }

      while (v4 != v6);

      return v10;
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1B1B28FE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1B1C2C1C8();
  __swift_allocate_value_buffer(v3, qword_1EB772E30);
  v4 = __swift_project_value_buffer(v3, qword_1EB772E30);
  sub_1B1C2C188();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B290F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1B1C2C1C8();
  __swift_allocate_value_buffer(v3, qword_1EB772CB8);
  v4 = __swift_project_value_buffer(v3, qword_1EB772CB8);
  sub_1B1C2C188();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B29204()
{
  type metadata accessor for OspreyClient(0);
  v0 = swift_allocObject();
  result = sub_1B1B29480();
  qword_1ED9A51F0 = v0;
  return result;
}

uint64_t sub_1B1B29244()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_1B1C2C1C8();
  __swift_allocate_value_buffer(v3, qword_1ED9AA4E0);
  v4 = __swift_project_value_buffer(v3, qword_1ED9AA4E0);
  v9 = v4;
  if (qword_1ED9A96B8 != -1)
  {
    v4 = swift_once();
  }

  sub_1B1B551CC(v4, v5, v6, v7, v8);
  if (v10)
  {
    sub_1B1C2C188();

    if (__swift_getEnumTagSinglePayload(v2, 1, v3) != 1)
    {
      return (*(*(v3 - 8) + 32))(v9, v2, v3);
    }

    sub_1B1B29E6C(v2);
  }

  if (qword_1ED9A96E0 != -1)
  {
    swift_once();
  }

  if (byte_1ED9A9738 == 1)
  {
    if (qword_1EB761220 != -1)
    {
      swift_once();
    }

    v11 = qword_1EB772CB8;
  }

  else
  {
    if (qword_1EB761598 != -1)
    {
      swift_once();
    }

    v11 = qword_1EB772E30;
  }

  v12 = __swift_project_value_buffer(v3, v11);
  return (*(*(v3 - 8) + 16))(v9, v12, v3);
}

uint64_t sub_1B1B29480()
{
  v1 = v0;
  v2 = sub_1B1C2C478();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() defaultSessionConfiguration];
  [v14 setTimeoutIntervalForRequest_];
  [v14 setTimeoutIntervalForResource_];
  if (qword_1ED9A5200 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_1ED9AA4E0);
  (*(v10 + 16))(v13, v15, v8);
  v16 = objc_allocWithZone(SiriTTSOspreyChannel);
  v17 = v14;
  *(v1 + 16) = sub_1B1B29C94(v13, v17);
  sub_1B1C2C468();

  (*(v4 + 32))(v1 + OBJC_IVAR____TtC14SiriTTSService12OspreyClient_speechId, v7, v2);
  return v1;
}

void sub_1B1B29698(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B1A8E474(0, &qword_1ED9A4C70, off_1E7AF1A40);
  v14 = sub_1B1B283BC(a1);
  v15 = sub_1B1C2C438();
  sub_1B1AD55EC(v15, v16, v14, &selRef_setSpeechId_);
  [v14 setExperimentId_];
  if (qword_1ED9A96B8 != -1)
  {
    swift_once();
  }

  sub_1B1B53A3C();
  [v14 setServerLogs_];
  v18 = *(v7 + 16);
  OUTLINED_FUNCTION_2_11();
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v30 = sub_1B1B29D2C;
  v31 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1B1B18B50;
  v29 = &block_descriptor_5;
  v20 = _Block_copy(&aBlock);

  OUTLINED_FUNCTION_2_11();
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  v30 = sub_1B1B29D34;
  v31 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1B1B18B50;
  v29 = &block_descriptor_6;
  v22 = _Block_copy(&aBlock);

  OUTLINED_FUNCTION_2_11();
  v23 = swift_allocObject();
  *(v23 + 16) = a6;
  *(v23 + 24) = a7;
  v30 = sub_1B1B29D3C;
  v31 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1B1A955E0;
  v29 = &block_descriptor_12;
  v24 = _Block_copy(&aBlock);

  [v18 streamTTS:v14 beginHandler:v20 chunkHandler:v22 completion:v24];
  _Block_release(v24);
  _Block_release(v22);
  _Block_release(v20);
}

void sub_1B1B29978(void *a1, void (*a2)(char *, char *, _BYTE *, double))
{
  v4 = sub_1B1B28AE0();
  v7 = sub_1B1B28CE8();
  [a1 bufferDuration];
  v6 = v5;
  [a1 asbd];
  a2(v4, v7, v8, v6);
}

char *sub_1B1B29A24(uint64_t a1, void (*a2)(char *, uint64_t))
{
  result = sub_1B1B28D94();
  if (result)
  {
    v4 = result;
    v5 = sub_1B1B28E3C();
    a2(v4, v5);
  }

  return result;
}

void sub_1B1B29AB0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  [v5 preconnect];
  OUTLINED_FUNCTION_2_11();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_1B1B29EE4;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B1A955E0;
  v8[3] = &block_descriptor_18;
  v7 = _Block_copy(v8);

  [v5 initializeDeviceAuthenticationSessionWithCompletion_];
  _Block_release(v7);
}

uint64_t OspreyClient.deinit()
{
  v1 = OBJC_IVAR____TtC14SiriTTSService12OspreyClient_speechId;
  sub_1B1C2C478();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t OspreyClient.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14SiriTTSService12OspreyClient_speechId;
  sub_1B1C2C478();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

id sub_1B1B29C94(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1B1C2C118();
  v7 = [v3 initWithURL:v6 configuration:a2];

  v8 = sub_1B1C2C1C8();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

uint64_t sub_1B1B29D6C(uint64_t a1)
{
  result = sub_1B1C2C478();
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

uint64_t sub_1B1B29E6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1B1B29EE8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return OUTLINED_FUNCTION_67_1();
  }

  v2 = sub_1B1B36DD0();
  if ((v3 & 1) == 0)
  {
    return OUTLINED_FUNCTION_67_1();
  }

  v4 = OUTLINED_FUNCTION_27_3(v2);

  sub_1B1A93378(v4, v5);
  return result;
}

double sub_1B1B29F40(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return OUTLINED_FUNCTION_67_1();
  }

  v2 = sub_1B1AE3960(a1);
  if ((v3 & 1) == 0)
  {
    return OUTLINED_FUNCTION_67_1();
  }

  v4 = OUTLINED_FUNCTION_27_3(v2);

  sub_1B1A93378(v4, v5);
  return result;
}

uint64_t sub_1B1B29F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_1B1A8EB10(), (v3 & 1) != 0))
  {
  }

  else
  {
    OUTLINED_FUNCTION_50_1();
  }

  return OUTLINED_FUNCTION_43_0();
}

uint64_t sub_1B1B2A000(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3[2] && (sub_1B1A8EB10(), (v4 & 1) != 0))
  {
    OUTLINED_FUNCTION_28_1();
    v5 = a3;
  }

  else
  {
    OUTLINED_FUNCTION_50_1();
  }

  return OUTLINED_FUNCTION_43_0();
}

uint64_t sub_1B1B2A044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1B1A8EB10();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_70_0(v3);
}

uint64_t sub_1B1B2A090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_1B1A8EB10(), (v5 & 1) != 0))
  {
    return *(*(a3 + 56) + 20 * v4);
  }

  else
  {
    return 0;
  }
}

void *sub_1B1B2A104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1B1A8EB10();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_1B1B2A14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1B1A8EB10();
  if (v4)
  {
    return OUTLINED_FUNCTION_70_0(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1B2A1A0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1B1A8EB10(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624A8, &unk_1B1C38120);
    OUTLINED_FUNCTION_45();
    sub_1B1AA101C(v7 + *(v9 + 72) * v6, a2, &qword_1EB7624A8, &unk_1B1C38120);
    v10 = a2;
    v11 = 0;
    v12 = v8;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624A8, &unk_1B1C38120);
    v10 = a2;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

void *sub_1B1B2A278(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1B1A954B0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_1B1B2A2C0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1B1AB2870(a1), (v2 & 1) != 0))
  {
    OUTLINED_FUNCTION_28_1();
  }

  else
  {
    OUTLINED_FUNCTION_50_1();
  }

  return OUTLINED_FUNCTION_43_0();
}

double sub_1B1B2A308@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16) && (v4 = sub_1B1A8EB10(), (v5 & 1) != 0))
  {
    sub_1B1A93378(*(v3 + 56) + 32 * v4, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1B1B2A370()
{
  v1 = sub_1B1C2CAB8();
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

void sub_1B1B2A3B8()
{
  if (qword_1ED9A92B0 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1ED9A92B0);
  }

  v1 = qword_1ED9AA610;
  v2 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName);
  v3 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8);
  v4 = sub_1B1C2CB28();
  v5 = OUTLINED_FUNCTION_11_6();
  v10 = [v1 levelForFactor:v4 withNamespaceName:v5];

  if (v10)
  {
    sub_1B1AE6FEC(v10);
  }

  else
  {
    v6 = sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      OUTLINED_FUNCTION_0_12(&qword_1ED9A99B8);
    }

    v7 = qword_1ED9AA668;
    if (os_log_type_enabled(qword_1ED9AA668, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1B1A930E4(v2, v3, &v11);
      _os_log_impl(&dword_1B1A8A000, v7, v6, "Unable to get level for factor name '%{public}s'", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }
  }
}

void sub_1B1B2A5B0()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_72();
  sub_1B1AB9288();

  v0 = sub_1B1AA101C(v51, v49, &qword_1EB761DE0, &qword_1B1C352C0);
  v7 = MEMORY[0x1E69E7CA0];
  if (v50)
  {
    if (OUTLINED_FUNCTION_73_2(v0, v1, v2, MEMORY[0x1E69E6530], v3, v4, v5, v6, v46, v48, v49[0]))
    {
      sub_1B1A90C20(v51, &qword_1EB761DE0, &qword_1B1C352C0);
      return;
    }
  }

  else
  {
    sub_1B1A90C20(v49, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  v8 = sub_1B1AA101C(v51, v49, &qword_1EB761DE0, &qword_1B1C352C0);
  if (!v50)
  {
    sub_1B1A90C20(v51, &qword_1EB761DE0, &qword_1B1C352C0);
    v32 = v49;
LABEL_27:
    sub_1B1A90C20(v32, &qword_1EB761DE0, &qword_1B1C352C0);
    return;
  }

  v15 = OUTLINED_FUNCTION_73_2(v8, v9, v10, MEMORY[0x1E69E6158], v11, v12, v13, v14, v46, v48, v49[0]);
  if ((v15 & 1) == 0)
  {
    v32 = v51;
    goto LABEL_27;
  }

  v23 = OUTLINED_FUNCTION_44_0(v15, v16, v17, v18, v19, v20, v21, v22, v47);
  if (!v24)
  {
LABEL_77:
    sub_1B1A90C20(v51, &qword_1EB761DE0, &qword_1B1C352C0);

    return;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    sub_1B1B2EFF0(v23, v7, 10);
    goto LABEL_77;
  }

  if ((v7 & 0x2000000000000000) == 0)
  {
    if ((v23 & 0x1000000000000000) != 0)
    {
      OUTLINED_FUNCTION_57_1();
    }

    else
    {
      sub_1B1C2D578();
    }

    OUTLINED_FUNCTION_56_1();
    if (v28)
    {
      if (v26 >= 1)
      {
        if (v26 != 1 && v25)
        {
          OUTLINED_FUNCTION_72_1();
          do
          {
            OUTLINED_FUNCTION_6_0();
            if (!v28 & v29)
            {
              break;
            }

            OUTLINED_FUNCTION_3_0();
            if (!v28)
            {
              break;
            }

            if (__OFADD__(v38, v37))
            {
              break;
            }

            OUTLINED_FUNCTION_16_2();
          }

          while (!v28);
        }

        goto LABEL_77;
      }

      goto LABEL_82;
    }

    if (v27 != 45)
    {
      if (v26 && v25)
      {
        do
        {
          if (*v25 - 48 > 9)
          {
            break;
          }

          OUTLINED_FUNCTION_66_2();
          if (!v28)
          {
            break;
          }

          if (__OFADD__(v43, v42))
          {
            break;
          }

          v25 = OUTLINED_FUNCTION_65_1(v41);
        }

        while (!v28);
      }

      goto LABEL_77;
    }

    if (v26 >= 1)
    {
      if (v26 != 1 && v25)
      {
        OUTLINED_FUNCTION_72_1();
        do
        {
          OUTLINED_FUNCTION_6_0();
          if (!v28 & v29)
          {
            break;
          }

          OUTLINED_FUNCTION_3_0();
          if (!v28)
          {
            break;
          }

          if (__OFSUB__(v31, v30))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
        }

        while (!v28);
      }

      goto LABEL_77;
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_68_1();
  if (!v28)
  {
    if (v34 != 45)
    {
      if (v33)
      {
        do
        {
          OUTLINED_FUNCTION_6_0();
          if (!v28 & v29)
          {
            break;
          }

          OUTLINED_FUNCTION_3_0();
          if (!v28)
          {
            break;
          }

          if (__OFADD__(v45, v44))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
        }

        while (!v28);
      }

      goto LABEL_77;
    }

    if (v33)
    {
      if (v33 != 1)
      {
        OUTLINED_FUNCTION_10();
        do
        {
          OUTLINED_FUNCTION_6_0();
          if (!v28 & v29)
          {
            break;
          }

          OUTLINED_FUNCTION_3_0();
          if (!v28)
          {
            break;
          }

          if (__OFSUB__(v36, v35))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
        }

        while (!v28);
      }

      goto LABEL_77;
    }

    goto LABEL_81;
  }

  if (v33)
  {
    if (v33 != 1)
    {
      OUTLINED_FUNCTION_10();
      do
      {
        OUTLINED_FUNCTION_6_0();
        if (!v28 & v29)
        {
          break;
        }

        OUTLINED_FUNCTION_3_0();
        if (!v28)
        {
          break;
        }

        if (__OFADD__(v40, v39))
        {
          break;
        }

        OUTLINED_FUNCTION_16_2();
      }

      while (!v28);
    }

    goto LABEL_77;
  }

LABEL_83:
  __break(1u);
}

void sub_1B1B2A950()
{

  sub_1B1AB9288();

  v0 = v1[3];
  sub_1B1A90C20(v1, &qword_1EB761DE0, &qword_1B1C352C0);
  if (!v0)
  {
    OUTLINED_FUNCTION_64();
  }

  sub_1B1B2A5B0();
}

uint64_t sub_1B1B2AA14()
{

  sub_1B1AB9288();

  if (v2 || (sub_1B1A90C20(&v1, &qword_1EB761DE0, &qword_1B1C352C0), , OUTLINED_FUNCTION_64(), sub_1B1AB9288(), , v2))
  {
    sub_1B1A9EEE0(&v1, v3);
    *&v1 = 0;
    *(&v1 + 1) = 0xE000000000000000;
    MEMORY[0x1B27381B0](2119235, 0xE300000000000000);
    sub_1B1C2D618();
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  else
  {
    sub_1B1A90C20(&v1, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  return OUTLINED_FUNCTION_43_0();
}

void sub_1B1B2ABA4()
{
  OUTLINED_FUNCTION_39_0();
  sub_1B1AB9288();

  if (v10)
  {
    if ((OUTLINED_FUNCTION_51_1() & 1) != 0 && v8)
    {
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
      goto LABEL_11;
    }
  }

  else
  {
    sub_1B1A90C20(v9, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v1 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v1, qword_1ED9A9120);
  v2 = v0;
  v3 = sub_1B1C2C888();
  v4 = sub_1B1C2D0B8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_1B1A8A000, v3, v4, "Unknown Trial download size for %@", v5, 0xCu);
    sub_1B1A90C20(v6, &qword_1EB7625C0, &qword_1B1C37990);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
  sub_1B1C2D228();
LABEL_11:
  OUTLINED_FUNCTION_76_2();
}

void sub_1B1B2ADDC()
{
  OUTLINED_FUNCTION_39_0();
  sub_1B1AB9288();

  if (!v46)
  {
    sub_1B1A90C20(v45, &qword_1EB761DE0, &qword_1B1C352C0);
    return;
  }

  OUTLINED_FUNCTION_9_7(v1, v2, v3, MEMORY[0x1E69E6158], v4, v5, v6, v7, v43);
  v8 = swift_dynamicCast();
  if (v8)
  {
    v16 = OUTLINED_FUNCTION_44_0(v8, v9, v10, v11, v12, v13, v14, v15, v44);
    if (!v17)
    {

      return;
    }

    if ((v0 & 0x1000000000000000) != 0)
    {
      sub_1B1B2EFF0(v16, v0, 10);
      v22 = v41;
      v40 = v42;
LABEL_74:

      if ((v40 & 1) == 0)
      {
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      }

      return;
    }

    if ((v0 & 0x2000000000000000) != 0)
    {
      OUTLINED_FUNCTION_68_1();
      if (v21)
      {
        if (v27)
        {
          if (v27 != 1)
          {
            OUTLINED_FUNCTION_10();
            while (1)
            {
              OUTLINED_FUNCTION_6_0();
              if (!v21 & v23)
              {
                break;
              }

              OUTLINED_FUNCTION_3_0();
              if (!v21)
              {
                break;
              }

              v22 = v34 + v33;
              if (__OFADD__(v34, v33))
              {
                break;
              }

              OUTLINED_FUNCTION_16_2();
              if (v21)
              {
                goto LABEL_73;
              }
            }
          }

          goto LABEL_72;
        }

LABEL_83:
        __break(1u);
        return;
      }

      if (v28 != 45)
      {
        if (v27)
        {
          while (1)
          {
            OUTLINED_FUNCTION_6_0();
            if (!v21 & v23)
            {
              break;
            }

            OUTLINED_FUNCTION_3_0();
            if (!v21)
            {
              break;
            }

            v22 = v39 + v38;
            if (__OFADD__(v39, v38))
            {
              break;
            }

            OUTLINED_FUNCTION_16_2();
            if (v21)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_72;
      }

      if (v27)
      {
        if (v27 != 1)
        {
          OUTLINED_FUNCTION_10();
          while (1)
          {
            OUTLINED_FUNCTION_6_0();
            if (!v21 & v23)
            {
              break;
            }

            OUTLINED_FUNCTION_3_0();
            if (!v21)
            {
              break;
            }

            v22 = v30 - v29;
            if (__OFSUB__(v30, v29))
            {
              break;
            }

            OUTLINED_FUNCTION_16_2();
            if (v21)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_72;
      }
    }

    else
    {
      if ((v16 & 0x1000000000000000) != 0)
      {
        OUTLINED_FUNCTION_57_1();
      }

      else
      {
        sub_1B1C2D578();
      }

      OUTLINED_FUNCTION_56_1();
      if (v21)
      {
        if (v19 >= 1)
        {
          if (v19 != 1)
          {
            v22 = 0;
            if (v18)
            {
              OUTLINED_FUNCTION_72_1();
              while (1)
              {
                OUTLINED_FUNCTION_6_0();
                if (!v21 & v23)
                {
                  goto LABEL_72;
                }

                OUTLINED_FUNCTION_3_0();
                if (!v21)
                {
                  goto LABEL_72;
                }

                v22 = v32 + v31;
                if (__OFADD__(v32, v31))
                {
                  goto LABEL_72;
                }

                OUTLINED_FUNCTION_16_2();
                if (v21)
                {
                  goto LABEL_73;
                }
              }
            }

            goto LABEL_63;
          }

          goto LABEL_72;
        }

        goto LABEL_82;
      }

      if (v20 != 45)
      {
        if (v19)
        {
          v22 = 0;
          if (v18)
          {
            while (*v18 - 48 <= 9)
            {
              OUTLINED_FUNCTION_66_2();
              if (!v21)
              {
                break;
              }

              v22 = v37 + v36;
              if (__OFADD__(v37, v36))
              {
                break;
              }

              v18 = OUTLINED_FUNCTION_65_1(v35);
              if (v21)
              {
                goto LABEL_63;
              }
            }

            goto LABEL_72;
          }

          goto LABEL_63;
        }

LABEL_72:
        v22 = 0;
        v26 = 1;
        goto LABEL_73;
      }

      if (v19 >= 1)
      {
        if (v19 != 1)
        {
          v22 = 0;
          if (v18)
          {
            OUTLINED_FUNCTION_72_1();
            while (1)
            {
              OUTLINED_FUNCTION_6_0();
              if (!v21 & v23)
              {
                goto LABEL_72;
              }

              OUTLINED_FUNCTION_3_0();
              if (!v21)
              {
                goto LABEL_72;
              }

              v22 = v25 - v24;
              if (__OFSUB__(v25, v24))
              {
                goto LABEL_72;
              }

              OUTLINED_FUNCTION_16_2();
              if (v21)
              {
                goto LABEL_73;
              }
            }
          }

LABEL_63:
          v26 = 0;
LABEL_73:
          v40 = v26;
          goto LABEL_74;
        }

        goto LABEL_72;
      }

      __break(1u);
    }

    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }
}

id sub_1B1B2B138()
{
  if (!*(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_path + 8))
  {
    return 0;
  }

  sub_1B1A8E474(0, &qword_1ED9A9810, 0x1E696AAE8);

  return sub_1B1AE7720();
}

uint64_t sub_1B1B2B1E4()
{
  if ([v0 locallyAvailable])
  {
    return 0;
  }

  v2 = OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_downloadToken;
  swift_beginAccess();
  if (!*&v0[v2])
  {
    sub_1B1B2B368(nullsub_1, 0, nullsub_1, 0);
  }

  return v0[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_isDownloading];
}

id sub_1B1B2B2BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_path + 8);
  if (v1)
  {
    v2 = objc_opt_self();

    v3 = [v2 defaultManager];
    v4 = sub_1B1C2CB28();

    v1 = [v3 isDeletableFileAtPath_];
  }

  return v1;
}

uint64_t sub_1B1B2B368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1ED9A92A8 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED9AA608;
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1B1B301E0;
  *(v11 + 24) = v10;
  v16[4] = sub_1B1AF77FC;
  v16[5] = v11;
  OUTLINED_FUNCTION_13_8();
  v16[1] = 1107296256;
  v16[2] = sub_1B1AAC018;
  v16[3] = &block_descriptor_156;
  v12 = _Block_copy(v16);
  v13 = v4;

  dispatch_sync(v9, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1B1B2B500(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_downloadToken;
  swift_beginAccess();
  v9 = *&a1[v8];
  if (v9)
  {
    v10 = qword_1ED9A92B0;
    swift_unknownObjectRetain();
    if (v10 != -1)
    {
      swift_once();
    }

    [qword_1ED9AA610 removeDownloadStatusHandlersWithToken_];
    swift_unknownObjectRelease();
  }

  if (qword_1ED9A92B0 != -1)
  {
    swift_once();
  }

  v23 = qword_1ED9AA610;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B1C361C0;
  v12 = *&a1[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8];
  *(v11 + 32) = *&a1[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName];
  *(v11 + 40) = v12;

  v22 = sub_1B1C2CE68();

  v13 = sub_1B1C2CB28();
  if (qword_1ED9A92A8 != -1)
  {
    swift_once();
  }

  v21 = qword_1ED9AA608;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v31 = sub_1B1B301F0;
  v32 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1B1B2BBC0;
  v30 = &block_descriptor_162;
  v15 = _Block_copy(&aBlock);
  v16 = a1;

  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a4;
  v17[4] = a5;
  v31 = sub_1B1B301FC;
  v32 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1B1B302B8;
  v30 = &block_descriptor_168;
  v18 = _Block_copy(&aBlock);
  v19 = v16;

  swift_beginAccess();
  v26 = *&a1[v8];
  v20 = [v23 statusOfDownloadForFactors:v22 withNamespace:v13 token:&v26 queue:v21 progress:v15 completion:v18];
  *&a1[v8] = v26;
  swift_unknownObjectRetain();
  swift_endAccess();
  _Block_release(v18);
  _Block_release(v15);
  swift_unknownObjectRelease();

  if ((v20 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v19[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_isDownloading] = 1;
  }
}

uint64_t sub_1B1B2B8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = sub_1B1C2C988();
  v23 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B1C2C9D8();
  v13 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_progressQueue);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a5;
  *(v17 + 40) = a1;
  aBlock[4] = sub_1B1B3023C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B1A95870;
  aBlock[3] = &block_descriptor_180;
  v18 = _Block_copy(aBlock);
  v19 = v16;

  sub_1B1C2C9A8();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1B1ACD030(&qword_1ED9A8DC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
  sub_1B1AA624C(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430, MEMORY[0x1E69E6328]);
  sub_1B1C2D418();
  MEMORY[0x1B2738610](0, v15, v12, v18);
  _Block_release(v18);

  (*(v23 + 8))(v12, v10);
  (*(v13 + 8))(v15, v22);
}

uint64_t sub_1B1B2BBC0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_1B1B2BC24(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v9 = sub_1B1C2C988();
  v26 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1B1C2C9D8();
  v12 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_isDownloading) = 0;
  if (qword_1ED9A92B0 != -1)
  {
    swift_once();
  }

  v15 = qword_1ED9AA610;
  v16 = OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_downloadToken;
  swift_beginAccess();
  [v15 removeDownloadStatusHandlersWithToken_];
  *(a3 + v16) = 0;
  swift_unknownObjectRelease();
  v17 = *(a3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_progressQueue);
  v18 = swift_allocObject();
  *(v18 + 16) = v24;
  *(v18 + 24) = a5;
  *(v18 + 32) = a1 & 1;
  *(v18 + 40) = a2;
  aBlock[4] = sub_1B1B30208;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B1A95870;
  aBlock[3] = &block_descriptor_174;
  v19 = _Block_copy(aBlock);
  v20 = v17;

  v21 = a2;
  sub_1B1C2C9A8();
  v27 = MEMORY[0x1E69E7CC0];
  sub_1B1ACD030(&qword_1ED9A8DC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
  sub_1B1AA624C(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430, MEMORY[0x1E69E6328]);
  sub_1B1C2D418();
  MEMORY[0x1B2738610](0, v14, v11, v19);
  _Block_release(v19);

  (*(v26 + 8))(v11, v9);
  (*(v12 + 8))(v14, v25);
}

void sub_1B1B2BFB4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a4;
  v59 = a5;
  v55 = a2;
  v56 = a3;
  v61 = sub_1B1C2C428();
  OUTLINED_FUNCTION_7();
  v57 = v7;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  v14 = objc_allocWithZone(MEMORY[0x1E69DB528]);
  if (a1)
  {
    v15 = 1;
    v16 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 2;
  }

  v17 = [v14 initWithAllowsCellular:v15 discretionaryBehavior:v16];
  v18 = sub_1B1C2D0D8();
  if (qword_1ED9A99B8 != -1)
  {
    OUTLINED_FUNCTION_0_12(&qword_1ED9A99B8);
  }

  v19 = qword_1ED9AA668;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B1C36280;
  v22 = *&v5[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName];
  v21 = *&v5[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8];
  *(v20 + 56) = MEMORY[0x1E69E6158];
  *(v20 + 64) = sub_1B1AC9204();
  *(v20 + 32) = v22;
  *(v20 + 40) = v21;
  *(v20 + 96) = sub_1B1A8E474(0, &unk_1ED9A5298, 0x1E69DB528);
  *(v20 + 104) = sub_1B1B2F9A4();
  *(v20 + 72) = v17;
  swift_bridgeObjectRetain_n();
  v60 = v17;
  sub_1B1C2C7C8(v18, &dword_1B1A8A000, v19, "Trial asset %{public}@ start download with option %{public}@", 60, 2, v20);

  sub_1B1B2ABA4();
  if (!v23)
  {
    __break(1u);
    goto LABEL_15;
  }

  v24 = v23;
  v25 = [v23 integerValue];

  v26 = v13;
  if (v25 < 1)
  {
    v51 = 500000000;
    goto LABEL_11;
  }

  sub_1B1B2ABA4();
  if (!v27)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v28 = v27;
  v51 = [v27 integerValue];

LABEL_11:
  sub_1B1C2C418();
  v53 = swift_allocObject();
  *(v53 + 16) = 0xBFF0000000000000;
  v52 = swift_allocObject();
  *(v52 + 16) = -1;
  v5[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_isDownloading] = 1;
  if (qword_1ED9A92B0 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1ED9A92B0);
  }

  v29 = qword_1ED9AA610;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  OUTLINED_FUNCTION_38_1();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1B1C361C0;
  *(v30 + 32) = v22;
  *(v30 + 40) = v21;
  v31 = sub_1B1C2CE68();

  v32 = OUTLINED_FUNCTION_11_6();
  v33 = v60;
  [v29 downloadLevelsForFactors:v31 withNamespace:v32 queue:0 options:? progress:? completion:?];

  v34 = v57;
  v35 = *(v57 + 16);
  v36 = v54;
  v50 = v26;
  v37 = v61;
  v35(v54, v26, v61);
  v38 = (*(v34 + 80) + 24) & ~*(v34 + 80);
  v39 = (v9 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  *(v41 + 16) = v51;
  (*(v34 + 32))(v41 + v38, v36, v37);
  v42 = v52;
  *(v41 + v39) = v53;
  *(v41 + v40) = v42;
  v43 = (v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8));
  v44 = v55;
  v45 = v56;
  *v43 = v55;
  v43[1] = v45;
  OUTLINED_FUNCTION_66();
  v46 = swift_allocObject();
  v48 = v58;
  v47 = v59;
  v46[2] = v5;
  v46[3] = v48;
  v46[4] = v47;

  sub_1B1A94514(v44, v45);
  v49 = v5;
  sub_1B1A94514(v48, v47);
  sub_1B1B2B368(sub_1B1B2FA0C, v41, sub_1B1B2FAD8, v46);

  (*(v34 + 8))(v50, v61);
}

uint64_t sub_1B1B2C4A4(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, double), uint64_t a8)
{
  v34 = *&a8;
  v14 = sub_1B1C2C428();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0.0;
  v19 = a1 != 4 && a3 < 1.0;
  v20 = a2;
  if (v19)
  {
    if (a3 <= 0.0)
    {
      v20 = 0;
      v18 = 300.0;
    }

    else
    {
      sub_1B1C2C418();
      sub_1B1C2C408();
      v22 = v21;
      result = (*(v15 + 8))(v17, v14);
      v24 = a2 * a3;
      if (COERCE__INT64(fabs(v24)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v24 <= -9.22337204e18)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= 9.22337204e18)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      v18 = (1.0 - a3) * v22 / a3;
      v20 = v24;
    }
  }

  swift_beginAccess();
  if (v18 == *(a5 + 16))
  {
    result = swift_beginAccess();
    if (v20 == *(a6 + 16))
    {
      return result;
    }
  }

  v25 = sub_1B1C2D0A8();
  if (qword_1ED9A99B8 != -1)
  {
    swift_once();
  }

  v26 = qword_1ED9AA668;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
  result = swift_allocObject();
  *(result + 16) = xmmword_1B1C364E0;
  v27 = a3 * 100.0;
  if (COERCE__INT64(fabs(a3 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v28 = MEMORY[0x1E69E6530];
  v29 = MEMORY[0x1E69E65A8];
  *(result + 56) = MEMORY[0x1E69E6530];
  *(result + 64) = v29;
  *(result + 32) = v27;
  v30 = MEMORY[0x1E69E6438];
  *(result + 96) = MEMORY[0x1E69E63B0];
  *(result + 104) = v30;
  *(result + 72) = v18;
  *(result + 136) = v28;
  *(result + 144) = v29;
  v31 = MEMORY[0x1E69E6810];
  *(result + 112) = v20;
  v32 = MEMORY[0x1E69E6870];
  *(result + 176) = v31;
  *(result + 184) = v32;
  *(result + 152) = a1;
  sub_1B1C2C7C8(v25, &dword_1B1A8A000, v26, "Trial download %u%% done, %.2fs left %d written status %d", v33, v34, v35[0], v35[2]);

  if (a7)
  {
    a7(v20, a2, v18);
  }

  swift_beginAccess();
  *(a5 + 16) = v18;
  result = swift_beginAccess();
  *(a6 + 16) = v20;
  return result;
}

uint64_t sub_1B1B2C80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  *(a3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_isDownloading) = 0;
  if ((a1 & 1) == 0)
  {
    v16 = sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      swift_once();
    }

    v17 = qword_1ED9AA668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1B1C36280;
    v20 = *(a3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName);
    v19 = *(a3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8);
    v21 = MEMORY[0x1E69E6158];
    *(v18 + 56) = MEMORY[0x1E69E6158];
    v22 = sub_1B1AC9204();
    v23 = v22;
    *(v18 + 64) = v22;
    *(v18 + 32) = v20;
    *(v18 + 40) = v19;
    if (a2)
    {
      swift_getErrorValue();

      v24 = sub_1B1C2D828();
      v26 = (v18 + 72);
      *(v18 + 96) = v21;
      *(v18 + 104) = v23;
      if (v25)
      {
        *v26 = v24;
LABEL_13:
        *(v18 + 80) = v25;
        sub_1B1C2C7C8(v16, &dword_1B1A8A000, v17, "Trial asset %{public}@ download failed with error %@", 52, 2, v18);

        if (!a4)
        {
          return result;
        }

        v14 = 0;
        return a4(v14);
      }
    }

    else
    {
      v26 = (v18 + 72);
      *(v18 + 96) = v21;
      *(v18 + 104) = v22;
    }

    *v26 = 63;
    v25 = 0xE100000000000000;
    goto LABEL_13;
  }

  v6 = sub_1B1C2D0D8();
  if (qword_1ED9A99B8 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED9AA668;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B1C361C0;
  v9 = *(a3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName);
  v10 = *(a3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8);
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1B1AC9204();
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;

  sub_1B1C2C7C8(v6, &dword_1B1A8A000, v7, "Trial asset %{public}@ download succeeded", 41, 2, v8);

  sub_1B1B2A3B8();
  v11 = type metadata accessor for TTSAsset();
  result = sub_1B1B7693C(v11, v12);
  if (a4)
  {
    v14 = a3;
    return a4(v14);
  }

  return result;
}

void sub_1B1B2CC00(char *a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  if ([a1 downloading])
  {
    if (qword_1ED9A92B0 != -1)
    {
      swift_once();
    }

    v5 = qword_1ED9AA610;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1B1C361C0;
    v7 = *&a1[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8];
    *(v6 + 32) = *&a1[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName];
    *(v6 + 40) = v7;

    v8 = sub_1B1C2CE68();

    v9 = sub_1B1C2CB28();
    v10 = swift_allocObject();
    v10[2] = a1;
    v10[3] = sub_1B1B20A10;
    v10[4] = v4;
    v23[4] = sub_1B1B30290;
    v23[5] = v10;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 1107296256;
    v23[2] = sub_1B1B302B8;
    v23[3] = &block_descriptor_138;
    v11 = _Block_copy(v23);
    v12 = a1;

    [v5 removeLevelsForFactors:v8 withNamespace:v9 queue:0 completion:v11];
    _Block_release(v11);

    _Block_release(a2);
  }

  else
  {
    v13 = [a1 locallyAvailable];
    v14 = sub_1B1C2D0D8();
    if (v13)
    {
      if (qword_1ED9A99B8 != -1)
      {
        swift_once();
      }

      v15 = qword_1ED9AA668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1B1C361C0;
      v18 = *&a1[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName];
      v17 = *&a1[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8];
      *(v16 + 56) = MEMORY[0x1E69E6158];
      *(v16 + 64) = sub_1B1AC9204();
      *(v16 + 32) = v18;
      *(v16 + 40) = v17;

      sub_1B1C2C7C8(v14, &dword_1B1A8A000, v15, "Trial asset %{public}@ already downloaded, unable to cancel", 59, 2, v16);

      (a2)[2](a2, a1);
    }

    else
    {
      if (qword_1ED9A99B8 != -1)
      {
        swift_once();
      }

      v19 = qword_1ED9AA668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1B1C361C0;
      v22 = *&a1[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName];
      v21 = *&a1[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8];
      *(v20 + 56) = MEMORY[0x1E69E6158];
      *(v20 + 64) = sub_1B1AC9204();
      *(v20 + 32) = v22;
      *(v20 + 40) = v21;

      sub_1B1C2C7C8(v14, &dword_1B1A8A000, v19, "Trial asset %{public}@ not downloading, unable to cancel", 56, 2, v20);

      a2[2](a2, 0);
    }

    _Block_release(a2);
  }
}

uint64_t sub_1B1B2D024(uint64_t a1, id a2, char *a3, uint64_t (*a4)(char *))
{
  if (a1)
  {
    v6 = sub_1B1C2D0D8();
    if (qword_1ED9A99B8 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED9AA668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1B1C361C0;
    v10 = *&a3[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName];
    v9 = *&a3[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8];
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1B1AC9204();
    *(v8 + 32) = v10;
    *(v8 + 40) = v9;

    sub_1B1C2C7C8(v6, &dword_1B1A8A000, v7, "Trial asset %{public}@ download cancelled", 41, 2, v8);
  }

  else if (a2)
  {
    v12 = a2;
    v22 = sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      swift_once();
    }

    v21 = qword_1ED9AA668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1B1C36280;
    v14 = *&a3[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName];
    v15 = *&a3[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    v16 = sub_1B1AC9204();
    *(v13 + 64) = v16;
    *(v13 + 32) = v14;
    *(v13 + 40) = v15;
    swift_getErrorValue();

    v17 = sub_1B1C2D828();
    *(v13 + 96) = MEMORY[0x1E69E6158];
    *(v13 + 104) = v16;
    *(v13 + 72) = v17;
    *(v13 + 80) = v18;
    sub_1B1C2C7C8(v22, &dword_1B1A8A000, v21, "Trial asset %{public}@ download cancellation failed with error %@", 65, 2, v13);
  }

  if ([a3 locallyAvailable])
  {
    v19 = a3;
  }

  else
  {
    v19 = 0;
  }

  return a4(v19);
}

void sub_1B1B2D294(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1B1B2D370()
{
  OUTLINED_FUNCTION_62();
  type metadata accessor for TTSAssetTrialAsset();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C37D90;
  *(inited + 32) = v1;
  v3 = v1;
  v4 = OUTLINED_FUNCTION_33();
  static TTSAssetTrialAsset.purge(assets:then:)(v4, v5, v0);
  swift_setDeallocating();
  return sub_1B1B2EFA8();
}

void static TTSAssetTrialAsset.purge(assets:then:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B1A9547C();
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = v6;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B1AC9FA8();
    if (v8 < 0)
    {
      __break(1u);
      return;
    }

    v26 = a2;
    v27 = a3;
    v9 = 0;
    v7 = aBlock[0];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1B2738A20](v9, a1);
      }

      else
      {
        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = *&v10[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName];
      v13 = *&v10[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8];

      aBlock[0] = v7;
      v14 = *(v7 + 16);
      if (v14 >= *(v7 + 24) >> 1)
      {
        sub_1B1AC9FA8();
        v7 = aBlock[0];
      }

      ++v9;
      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v13;
    }

    while (v8 != v9);
    a2 = v26;
    a3 = v27;
  }

  if (qword_1ED9A92B0 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1ED9A92B0);
  }

  v16 = qword_1ED9AA610;
  v17 = sub_1B1C2CE68();
  v18 = OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_66();
  v19 = swift_allocObject();
  v19[2] = v7;
  v19[3] = a2;
  v19[4] = a3;
  aBlock[4] = sub_1B1B2FAF0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_14_8();
  aBlock[2] = v20;
  aBlock[3] = &block_descriptor_16;
  v21 = _Block_copy(aBlock);
  v22 = OUTLINED_FUNCTION_72();
  sub_1B1A94514(v22, v23);

  [v16 removeLevelsForFactorsImmediately:v17 withNamespace:v18 queue:0 completion:v21];
  _Block_release(v21);

  v24 = type metadata accessor for TTSAsset();
  sub_1B1B7693C(v24, v25);
}

uint64_t sub_1B1B2D6E4(uint64_t a1, id a2, uint64_t a3, uint64_t (*a4)(id))
{
  if ((a1 & 1) == 0)
  {
    if (a2)
    {
      v10 = a2;
      v11 = sub_1B1C2D0B8();
      if (qword_1ED9A99B8 != -1)
      {
        swift_once();
      }

      v12 = qword_1ED9AA668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1B1C36280;
      *(v13 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
      *(v13 + 64) = sub_1B1AA624C(&unk_1EB7624B8, &unk_1EB761F10, &unk_1B1C37DA0, MEMORY[0x1E6969E28]);
      *(v13 + 32) = a3;
      swift_getErrorValue();

      v14 = sub_1B1C2D828();
      v16 = v15;
      *(v13 + 96) = MEMORY[0x1E69E6158];
      *(v13 + 104) = sub_1B1AC9204();
      *(v13 + 72) = v14;
      *(v13 + 80) = v16;
      sub_1B1C2C7C8(v11, &dword_1B1A8A000, v12, "Trial assets %{public}@ immediate removal failed with error %@", 62, 2, v13);
    }

    goto LABEL_8;
  }

  v7 = sub_1B1C2D0D8();
  if (qword_1ED9A99B8 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v8 = qword_1ED9AA668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1B1C361C0;
    *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
    *(v9 + 64) = sub_1B1AA624C(&unk_1EB7624B8, &unk_1EB761F10, &unk_1B1C37DA0, MEMORY[0x1E6969E28]);
    *(v9 + 32) = a3;

    sub_1B1C2C7C8(v7, &dword_1B1A8A000, v8, "Trial assets %{public}@ immediate removal succeeded", 51, 2, v9);

LABEL_8:
    if (qword_1ED9A92A8 != -1)
    {
      swift_once();
    }

    v17 = qword_1ED9AA608;
    aBlock[4] = sub_1B1B2BFB0;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B1AAC018;
    aBlock[3] = &block_descriptor_147;
    v7 = _Block_copy(aBlock);

    dispatch_sync(v17, v7);
    _Block_release(v7);
    result = swift_isEscapingClosureAtFileLocation();
    if ((result & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_15:
    swift_once();
  }

  if (a4)
  {
    return a4(a2);
  }

  return result;
}

void sub_1B1B2DA8C(uint64_t a1)
{
  if (qword_1ED9A92B0 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1ED9A92B0);
  }

  v3 = qword_1ED9AA610;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762448, &unk_1B1C37DB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C361C0;
  v5 = *(v1 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName);
  v6 = *(v1 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8);
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  v7 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  *(inited + 48) = [v7 initWithInteger_];
  sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
  OUTLINED_FUNCTION_33();
  sub_1B1C2CAB8();
  v8 = sub_1B1C2CA78();

  v9 = OUTLINED_FUNCTION_11_6();
  [v3 setPurgeabilityLevelsForFactors:v8 withNamespaceName:v9];
}

uint64_t sub_1B1B2DC70()
{
  if (qword_1ED9A92B0 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1ED9A92B0);
  }

  v1 = qword_1ED9AA610;
  v2 = OUTLINED_FUNCTION_11_6();
  v3 = [v1 purgeabilityLevelsForFactorsWithNamespaceName_];

  sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
  v4 = sub_1B1C2CA98();

  v5 = sub_1B1B2A104(*(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName), *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8), v4);

  if (!v5)
  {
    return 3;
  }

  v6 = [v5 integerValue];

  return v6;
}

id TTSAssetTrialAsset.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1B1B2DDEC()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_progressQueue);
}

id sub_1B1B2DF78(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B1C2CB28();

  return v5;
}

unint64_t sub_1B1B2DFE8()
{
  sub_1B1AE7964();
  v1 = qword_1ED9A9978;
  v3 = v2;
  if (v1 != -1)
  {
    OUTLINED_FUNCTION_6(&qword_1ED9A9978);
  }

  v4 = qword_1ED9A9980;
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  v5 = v4;
  v6 = sub_1B1C2D248();

  if (v6)
  {
    goto LABEL_7;
  }

  v7 = qword_1ED9A98D0;
  v8 = v3;
  if (v7 != -1)
  {
    OUTLINED_FUNCTION_23_0(&qword_1ED9A98D0);
  }

  v9 = qword_1ED9A98D8;
  v10 = sub_1B1C2D248();

  if (v10)
  {
LABEL_7:

    v11 = 0x80000001B1C4B5A0;
    type metadata accessor for TTSAsset();
    sub_1B1AEC7A0();
    v12 = sub_1B1C2CBE8();

    sub_1B1B19BF8(v12);
    OUTLINED_FUNCTION_58();

    sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
    sub_1B1AF1B80();
    v14 = v13;
    if (qword_1ED9A97D8 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_1ED9A97D8);
    }

    v15 = OUTLINED_FUNCTION_74_0(qword_1ED9A9830);

    if (v15)
    {
      v16 = 0x746361706D6F632ELL;
    }

    else
    {
      v16 = 0x6D75696D6572702ELL;
    }

    v17 = 0xD00000000000002DLL;
    goto LABEL_13;
  }

  v21 = qword_1ED9A98A8;
  v22 = v8;
  if (v21 != -1)
  {
    OUTLINED_FUNCTION_21(&qword_1ED9A98A8);
  }

  v23 = qword_1ED9A98B0;
  v24 = sub_1B1C2D248();

  if ((v24 & 1) == 0)
  {
    if (qword_1ED9A9850 != -1)
    {
      OUTLINED_FUNCTION_22(&qword_1ED9A9850);
    }

    v31 = qword_1ED9A97E0;
    v32 = sub_1B1C2D248();

    if ((v32 & 1) == 0)
    {
      sub_1B1AE7964();
      v40 = v39;
      v41 = [v39 string];

      v42 = sub_1B1C2CB58();
      v44 = v43;

      v59 = v42;
      v60 = v44;

      MEMORY[0x1B27381B0](46, 0xE100000000000000);

      v17 = v42;
      v11 = v44;
      sub_1B1AEC7A0();
      OUTLINED_FUNCTION_58();

      OUTLINED_FUNCTION_35_5();

      if (v61)
      {
        OUTLINED_FUNCTION_9_7(v45, v46, v47, MEMORY[0x1E69E6158], v48, v49, v50, v51, v57);
        if (swift_dynamicCast())
        {
          MEMORY[0x1B27381B0](v58);

          v16 = 46;
          v18 = 0xE100000000000000;
          goto LABEL_14;
        }
      }

      else
      {
        sub_1B1A90C20(&v59, &qword_1EB761DE0, &qword_1B1C352C0);
      }

      v16 = 0;
      v18 = 0xE000000000000000;
      goto LABEL_14;
    }

    v11 = 0x80000001B1C4B570;
    sub_1B1AEC7A0();
    sub_1B1C2CBE8();
    OUTLINED_FUNCTION_58();

    sub_1B1AF1B80();
    v33 = qword_1ED9A97D8;
    v35 = v34;
    if (v33 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_1ED9A97D8);
    }

    v17 = 0xD000000000000021;
    v36 = qword_1ED9A9830;
    sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
    v37 = v36;
    v38 = sub_1B1C2D248();

    if (v38)
    {
      v16 = 0x746361706D6F632ELL;
    }

    else
    {
      v52 = qword_1ED9A9100;
      v35 = v35;
      if (v52 != -1)
      {
        OUTLINED_FUNCTION_2_0(&qword_1ED9A9100);
      }

      v16 = 0x6D75696D6572702ELL;
      v53 = qword_1ED9A90A8;
      v54 = sub_1B1C2D248();

      if ((v54 & 1) == 0)
      {
        if (qword_1ED9A9628 != -1)
        {
          OUTLINED_FUNCTION_14_0(&qword_1ED9A9628);
        }

        v55 = qword_1ED9A9598;
        v56 = sub_1B1C2D248();

        v28 = (v56 & 1) == 0;
        v29 = 0xE800000000000000;
        v30 = 0xEC00000068676968;
        goto LABEL_24;
      }
    }

LABEL_13:
    v18 = 0xE800000000000000;
    goto LABEL_14;
  }

  v11 = 0x80000001B1C4B570;
  sub_1B1AEC7A0();
  sub_1B1C2CBE8();
  OUTLINED_FUNCTION_58();

  sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
  sub_1B1AF1B80();
  v26 = v25;
  if (qword_1ED9A97D8 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1ED9A97D8);
  }

  v17 = 0xD000000000000021;
  v27 = OUTLINED_FUNCTION_74_0(qword_1ED9A9830);

  v28 = (v27 & 1) == 0;
  if (v27)
  {
    v16 = 0x746361706D6F632ELL;
  }

  else
  {
    v16 = 0;
  }

  v29 = 0xE000000000000000;
  v30 = 0xE800000000000000;
LABEL_24:
  if (v28)
  {
    v18 = v29;
  }

  else
  {
    v18 = v30;
  }

LABEL_14:
  v59 = v17;
  v60 = v11;

  v19 = OUTLINED_FUNCTION_33();
  MEMORY[0x1B27381B0](v19);

  MEMORY[0x1B27381B0](v16, v18);

  return v59;
}

uint64_t sub_1B1B2E65C()
{

  sub_1B1AB9288();

  if (v7)
  {
    sub_1B1A9EEE0(&v6, &v8);
  }

  else
  {

    sub_1B1AB9288();
  }

  if (!v9)
  {
    sub_1B1A90C20(&v8, &qword_1EB761DE0, &qword_1B1C352C0);
    return 0;
  }

  if (!OUTLINED_FUNCTION_51_1())
  {
    return 0;
  }

  v0 = v6;
  v1 = v6 == 1701601645 && *(&v6 + 1) == 0xE400000000000000;
  if (v1 || (OUTLINED_FUNCTION_3(1701601645, 0xE400000000000000) & 1) != 0)
  {

    return 1;
  }

  v3 = v0 == 0x656C616D6566 && *(&v0 + 1) == 0xE600000000000000;
  if (v3 || (OUTLINED_FUNCTION_3(0x656C616D6566, 0xE600000000000000) & 1) != 0)
  {

    return 2;
  }

  if (v0 != 0x6C61727475656ELL || *(&v0 + 1) != 0xE700000000000000)
  {
    v5 = OUTLINED_FUNCTION_3(0x6C61727475656ELL, 0xE700000000000000);

    if (v5)
    {
      return 3;
    }

    return 0;
  }

  return 3;
}

uint64_t sub_1B1B2E86C()
{
  OUTLINED_FUNCTION_39_0();
  sub_1B1AB9288();

  if (v3)
  {
    sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
    if (OUTLINED_FUNCTION_51_1())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1B1A90C20(v2, &qword_1EB761DE0, &qword_1B1C352C0);
    return 0;
  }
}

uint64_t sub_1B1B2E934()
{
  OUTLINED_FUNCTION_39_0();
  v0 = sub_1B1B42CD8();

  v1 = sub_1B1AE0B90(v0);

  return v1;
}

id sub_1B1B2E9AC(void *a1)
{
  v1 = a1;
  v2 = sub_1B1AEBC74(v1);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    sub_1B1B2E9FC();
  }

  return v3;
}

uint64_t sub_1B1B2E9FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8);
  v8 = *(v0 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName);
  v9 = v1;
  v10 = MEMORY[0x1E69E7CC0];

  if (sub_1B1AE6D1C())
  {

    sub_1B1AB9288();

    if (v7)
    {

      return sub_1B1A90C20(v6, &qword_1EB761DE0, &qword_1B1C352C0);
    }

    else
    {
      sub_1B1A90C20(v6, &qword_1EB761DE0, &qword_1B1C352C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
      OUTLINED_FUNCTION_38_1();
      result = swift_allocObject();
      *(result + 16) = xmmword_1B1C361C0;
      if (v10[2] < 6uLL)
      {
        __break(1u);
      }

      else
      {
        v3 = result;
        v5 = v10[14];
        v4 = v10[15];

        *(v3 + 32) = v5;
        *(v3 + 40) = v4;
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
        v6[0] = v3;
        sub_1B1AC965C(v6, 0x65676175676E614CLL, 0xE900000000000073);
      }
    }
  }

  else
  {
  }

  return result;
}

id sub_1B1B2EDC4(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B1C2CA78();

  return v5;
}

uint64_t sub_1B1B2EE40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C36280;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x80000001B1C41EA0;
  v2 = [v0 primaryLanguage];
  v3 = sub_1B1C2CB58();
  v5 = v4;

  v6 = MEMORY[0x1E69E6158];
  *(inited + 48) = v3;
  *(inited + 56) = v5;
  *(inited + 72) = v6;
  strcpy((inited + 80), "VoiceVersion");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  sub_1B1B2A950();
  *(inited + 120) = MEMORY[0x1E69E6530];
  *(inited + 96) = v7;
  return sub_1B1C2CAB8();
}

id sub_1B1B2EF64(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B1B2EFA8()
{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_1B1B2EFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v5 = sub_1B1C2CDF8();
  if ((v4 & 0x1000000000000000) != 0)
  {
    v46 = OUTLINED_FUNCTION_72();
    v5 = sub_1B1BE2064(v46, v47);
    v49 = v48;

    if ((v49 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v4 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v5 & 0x1000000000000000) != 0)
    {
      OUTLINED_FUNCTION_57_1();
    }

    else
    {
      OUTLINED_FUNCTION_72();
      sub_1B1C2D578();
    }

    OUTLINED_FUNCTION_56_1();
    if (v8)
    {
      if (v6 >= 1)
      {
        if (v6 != 1)
        {
          OUTLINED_FUNCTION_7_8();
          if (v23 ^ v24 | v22)
          {
            v27 = 65;
          }

          if (!(v23 ^ v24 | v22))
          {
            v28 = 58;
          }

          if (v25)
          {
            v29 = 0;
            v30 = (v25 + 1);
            while (1)
            {
              v31 = *v30;
              if (v31 < 0x30 || v31 >= v28)
              {
                if (v31 < 0x41 || v31 >= v27)
                {
                  OUTLINED_FUNCTION_15_9();
                  if (!v20 || v31 >= v33)
                  {
                    goto LABEL_137;
                  }

                  v32 = -87;
                }

                else
                {
                  v32 = -55;
                }
              }

              else
              {
                v32 = -48;
              }

              v34 = v29 * a3;
              if ((v29 * a3) >> 64 == (v29 * a3) >> 63)
              {
                v29 = v34 + (v31 + v32);
                if (!__OFADD__(v34, (v31 + v32)))
                {
                  ++v30;
                  if (--v26)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_137;
            }
          }
        }

        goto LABEL_137;
      }

      goto LABEL_141;
    }

    if (v7 != 45)
    {
      if (v6)
      {
        OUTLINED_FUNCTION_47_2();
        if (v36 ^ v37 | v35)
        {
          v39 = v42;
        }

        if (v36 ^ v37 | v35)
        {
          v40 = 65;
        }

        if (!(v36 ^ v37 | v35))
        {
          v41 = 58;
        }

        if (v38)
        {
          v43 = 0;
          while (1)
          {
            v44 = *v38;
            if (v44 < 0x30 || v44 >= v41)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                if (v44 < 0x61 || v44 >= v39)
                {
                  goto LABEL_137;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if ((v43 * a3) >> 64 == (v43 * a3) >> 63 && !__OFADD__(v43 * a3, (v44 + v45)))
            {
              v38 = OUTLINED_FUNCTION_65_1(v38);
              if (!v8)
              {
                continue;
              }
            }

            goto LABEL_137;
          }
        }
      }

      goto LABEL_137;
    }

    if (v6 >= 1)
    {
      if (v6 != 1)
      {
        OUTLINED_FUNCTION_7_8();
        if (v9 ^ v10 | v8)
        {
          v13 = 65;
        }

        if (!(v9 ^ v10 | v8))
        {
          v14 = 58;
        }

        if (v11)
        {
          v15 = 0;
          v16 = (v11 + 1);
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v14)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                OUTLINED_FUNCTION_15_9();
                if (!v20 || v17 >= v19)
                {
                  break;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v21 = v15 * a3;
            if ((v15 * a3) >> 64 == (v15 * a3) >> 63)
            {
              v15 = v21 - (v17 + v18);
              if (!__OFSUB__(v21, (v17 + v18)))
              {
                ++v16;
                if (--v12)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_137:

      return;
    }

    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  OUTLINED_FUNCTION_43_3();
  if (!v8)
  {
    if (v51 != 45)
    {
      if (v50)
      {
        OUTLINED_FUNCTION_2_12();
        while (1)
        {
          OUTLINED_FUNCTION_31_2();
          if (v20 && v67 < v66)
          {
            v68 = -48;
          }

          else if (v67 < 0x41 || v67 >= v65)
          {
            OUTLINED_FUNCTION_15_9();
            if (!v20 || v67 >= v69)
            {
              goto LABEL_137;
            }

            v68 = -87;
          }

          else
          {
            v68 = -55;
          }

          if ((v64 * a3) >> 64 == (v64 * a3) >> 63 && !__OFADD__(v64 * a3, (v67 + v68)))
          {
            OUTLINED_FUNCTION_30_3();
            if (!v8)
            {
              continue;
            }
          }

          goto LABEL_137;
        }
      }

      goto LABEL_137;
    }

    if (v50)
    {
      if (v50 != 1)
      {
        OUTLINED_FUNCTION_2_12();
        OUTLINED_FUNCTION_20_4();
        while (1)
        {
          OUTLINED_FUNCTION_31_2();
          if (v20 && v55 < v54)
          {
            v56 = -48;
          }

          else if (v55 < 0x41 || v55 >= v53)
          {
            OUTLINED_FUNCTION_15_9();
            if (!v20 || v55 >= v57)
            {
              goto LABEL_137;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }

          if ((v52 * a3) >> 64 == (v52 * a3) >> 63 && !__OFSUB__(v52 * a3, (v55 + v56)))
          {
            OUTLINED_FUNCTION_30_3();
            if (!v8)
            {
              continue;
            }
          }

          goto LABEL_137;
        }
      }

      goto LABEL_137;
    }

    goto LABEL_140;
  }

  if (v50)
  {
    if (v50 != 1)
    {
      OUTLINED_FUNCTION_2_12();
      OUTLINED_FUNCTION_20_4();
      while (1)
      {
        OUTLINED_FUNCTION_31_2();
        if (v20 && v61 < v60)
        {
          v62 = -48;
        }

        else if (v61 < 0x41 || v61 >= v59)
        {
          OUTLINED_FUNCTION_15_9();
          if (!v20 || v61 >= v63)
          {
            goto LABEL_137;
          }

          v62 = -87;
        }

        else
        {
          v62 = -55;
        }

        if ((v58 * a3) >> 64 == (v58 * a3) >> 63 && !__OFADD__(v58 * a3, (v61 + v62)))
        {
          OUTLINED_FUNCTION_30_3();
          if (!v8)
          {
            continue;
          }
        }

        goto LABEL_137;
      }
    }

    goto LABEL_137;
  }

LABEL_142:
  __break(1u);
}

void sub_1B1B2F4AC(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v5 = sub_1B1C2CDF8();
  if ((v4 & 0x1000000000000000) != 0)
  {
    v34 = OUTLINED_FUNCTION_72();
    v5 = sub_1B1BE2064(v34, v35);
    v37 = v36;

    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v4 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v5 & 0x1000000000000000) != 0)
    {
      OUTLINED_FUNCTION_57_1();
    }

    else
    {
      OUTLINED_FUNCTION_72();
      sub_1B1C2D578();
    }

    OUTLINED_FUNCTION_56_1();
    if (v23)
    {
      if (v6 >= 1)
      {
        if (v6 != 1)
        {
          OUTLINED_FUNCTION_7_8();
          if (v16)
          {
            while (1)
            {
              OUTLINED_FUNCTION_31_2();
              if (v13 && v20 < v18)
              {
                v21 = -48;
              }

              else if (v20 < 0x41 || v20 >= v17)
              {
                OUTLINED_FUNCTION_15_9();
                if (!v13 || v20 >= v22)
                {
                  goto LABEL_129;
                }

                v21 = -87;
              }

              else
              {
                v21 = -55;
              }

              if (is_mul_ok(v19, a3) && !__CFADD__(v19 * a3, (v20 + v21)))
              {
                OUTLINED_FUNCTION_30_3();
                if (!v23)
                {
                  continue;
                }
              }

              goto LABEL_129;
            }
          }
        }

        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v7 != 45)
    {
      if (v6)
      {
        OUTLINED_FUNCTION_47_2();
        if (v24 ^ v25 | v23)
        {
          v27 = v30;
        }

        if (v24 ^ v25 | v23)
        {
          v28 = 65;
        }

        if (!(v24 ^ v25 | v23))
        {
          v29 = 58;
        }

        if (v26)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v26;
            if (v32 < 0x30 || v32 >= v29)
            {
              if (v32 < 0x41 || v32 >= v28)
              {
                if (v32 < 0x61 || v32 >= v27)
                {
                  goto LABEL_129;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            if (is_mul_ok(v31, a3) && !__CFADD__(v31 * a3, (v32 + v33)))
            {
              v26 = OUTLINED_FUNCTION_65_1(v26);
              if (!v23)
              {
                continue;
              }
            }

            goto LABEL_129;
          }
        }
      }

      goto LABEL_129;
    }

    if (v6 >= 1)
    {
      if (v6 != 1)
      {
        OUTLINED_FUNCTION_7_8();
        if (v8)
        {
          while (1)
          {
            OUTLINED_FUNCTION_31_2();
            if (v13 && v12 < v10)
            {
              v14 = -48;
            }

            else if (v12 < 0x41 || v12 >= v9)
            {
              OUTLINED_FUNCTION_15_9();
              if (!v13 || v12 >= v15)
              {
                break;
              }

              v14 = -87;
            }

            else
            {
              v14 = -55;
            }

            if (is_mul_ok(v11, a3) && v11 * a3 >= (v12 + v14))
            {
              OUTLINED_FUNCTION_30_3();
              if (!v23)
              {
                continue;
              }
            }

            break;
          }
        }
      }

LABEL_129:

      return;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  OUTLINED_FUNCTION_43_3();
  if (!v23)
  {
    if (v39 != 45)
    {
      if (v38)
      {
        OUTLINED_FUNCTION_2_12();
        while (1)
        {
          OUTLINED_FUNCTION_31_2();
          if (v13 && v55 < v54)
          {
            v56 = -48;
          }

          else if (v55 < 0x41 || v55 >= v53)
          {
            OUTLINED_FUNCTION_15_9();
            if (!v13 || v55 >= v57)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }

          if (is_mul_ok(v52, a3) && !__CFADD__(v52 * a3, (v55 + v56)))
          {
            OUTLINED_FUNCTION_30_3();
            if (!v23)
            {
              continue;
            }
          }

          goto LABEL_129;
        }
      }

      goto LABEL_129;
    }

    if (v38)
    {
      if (v38 != 1)
      {
        OUTLINED_FUNCTION_2_12();
        OUTLINED_FUNCTION_20_4();
        while (1)
        {
          OUTLINED_FUNCTION_31_2();
          if (v13 && v43 < v42)
          {
            v44 = -48;
          }

          else if (v43 < 0x41 || v43 >= v41)
          {
            OUTLINED_FUNCTION_15_9();
            if (!v13 || v43 >= v45)
            {
              goto LABEL_129;
            }

            v44 = -87;
          }

          else
          {
            v44 = -55;
          }

          if (is_mul_ok(v40, a3) && v40 * a3 >= (v43 + v44))
          {
            OUTLINED_FUNCTION_30_3();
            if (!v23)
            {
              continue;
            }
          }

          goto LABEL_129;
        }
      }

      goto LABEL_129;
    }

    goto LABEL_132;
  }

  if (v38)
  {
    if (v38 != 1)
    {
      OUTLINED_FUNCTION_2_12();
      OUTLINED_FUNCTION_20_4();
      while (1)
      {
        OUTLINED_FUNCTION_31_2();
        if (v13 && v49 < v48)
        {
          v50 = -48;
        }

        else if (v49 < 0x41 || v49 >= v47)
        {
          OUTLINED_FUNCTION_15_9();
          if (!v13 || v49 >= v51)
          {
            goto LABEL_129;
          }

          v50 = -87;
        }

        else
        {
          v50 = -55;
        }

        if (is_mul_ok(v46, a3) && !__CFADD__(v46 * a3, (v49 + v50)))
        {
          OUTLINED_FUNCTION_30_3();
          if (!v23)
          {
            continue;
          }
        }

        goto LABEL_129;
      }
    }

    goto LABEL_129;
  }

LABEL_134:
  __break(1u);
}

unint64_t sub_1B1B2F9A4()
{
  result = qword_1ED9A5290;
  if (!qword_1ED9A5290)
  {
    sub_1B1A8E474(255, &unk_1ED9A5298, 0x1E69DB528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A5290);
  }

  return result;
}

uint64_t sub_1B1B2FA0C(uint64_t a1, double a2)
{
  v5 = *(sub_1B1C2C428() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + 16);
  v12 = v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);

  return sub_1B1B2C4A4(a1, v11, a2, v2 + v6, v9, v10, v13, v14);
}

void sub_1B1B2FB9C(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_20();
      if (v7)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 16);
  if (v6 <= v9)
  {
    v10 = *(a4 + 16);
  }

  else
  {
    v10 = v6;
  }

  if (!v10)
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762490, &qword_1B1C37E70);
  v11 = *(sub_1B1C2C1C8() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  v15 = _swift_stdlib_malloc_size(v14);
  if (!v12)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v15 - v13 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_23;
  }

  v14[2] = v9;
  v14[3] = 2 * ((v15 - v13) / v12);
LABEL_18:
  v17 = *(sub_1B1C2C1C8() - 8);
  if (a1)
  {
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    sub_1B1B04B98(a4 + v18, v9, v14 + v18);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1B1B2FD3C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C60, &unk_1B1C37E90);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1B1AC9DF0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C68, &unk_1B1C35DE0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1B1B2FE4C(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_2();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762498, &qword_1B1C37E78);
      v11 = swift_allocObject();
      _swift_stdlib_malloc_size(v11);
      OUTLINED_FUNCTION_5();
      *(v11 + 16) = v9;
      *(v11 + 24) = v12;
      if (a1)
      {
LABEL_12:
        sub_1B1AC9DF0((a4 + 32), v9, (v11 + 32));
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624A0, &unk_1B1C37E80);
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_20();
  if (!v7)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1B1B2FF3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1B1AA0B44(v34, a1, a2, a3);
  v30 = v34[0];
  v31 = v34[1];
  v32 = v34[2];
  v33 = v35;

  while (1)
  {
    sub_1B1A9E6FC(&v28);
    v7 = *(&v28 + 1);
    if (!*(&v28 + 1))
    {
      sub_1B1A9D350(v30);
    }

    v8 = v28;
    sub_1B1A9EEE0(&v29, v27);
    v9 = *a5;
    v11 = sub_1B1A8EB10();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762480, &unk_1B1C37E50);
        sub_1B1C2D638();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1B1AC891C(v14, a4 & 1);
      v16 = sub_1B1A8EB10();
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_18;
      }

      v11 = v16;
      if (v15)
      {
LABEL_10:
        v18 = *a5;
        sub_1B1A93378(v27, v26);
        __swift_destroy_boxed_opaque_existential_0(v27);

        v19 = (v18[7] + 32 * v11);
        __swift_destroy_boxed_opaque_existential_0(v19);
        sub_1B1A9EEE0(v26, v19);
        goto LABEL_14;
      }
    }

    v20 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v21 = (v20[6] + 16 * v11);
    *v21 = v8;
    v21[1] = v7;
    sub_1B1A9EEE0(v27, (v20[7] + 32 * v11));
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_17;
    }

    v20[2] = v24;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1B1C2D818();
  __break(1u);
  return result;
}

uint64_t sub_1B1B3016C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_1B1B2FF3C(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_1B1B302BC()
{
  result = sub_1B1B302DC();
  qword_1EB772E48 = result;
  return result;
}

uint64_t sub_1B1B302DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v3 = sub_1B1C2C0A8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762490, &qword_1B1C37E70);
  v7 = sub_1B1C2C1C8();
  v12[1] = *(*(v7 - 8) + 72);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B1C36280;
  v9 = *MEMORY[0x1E6968F58];
  v10 = *(v4 + 104);
  v10(v6, v9, v3);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v7);
  sub_1B1C2C198();
  v10(v6, v9, v3);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v7);
  sub_1B1C2C198();
  return v8;
}

uint64_t sub_1B1B30544()
{
  result = sub_1B1B30564();
  qword_1EB772E50 = result;
  return result;
}

uint64_t sub_1B1B30564()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_1B1C2C0A8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762490, &qword_1B1C37E70);
  v7 = sub_1B1C2C1C8();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B1C361C0;
  (*(v4 + 104))(v6, *MEMORY[0x1E6968F58], v3);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v7);
  sub_1B1C2C198();
  return v8;
}

uint64_t sub_1B1B30758(void (*a1)(void, void, void), const char **a2)
{
  v120 = a2;
  v122 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v108 = v3;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v115 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v100 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v106 = &v100 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v100 - v13);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v100 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v100 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v105 = &v100 - v21;
  LOBYTE(v22) = sub_1B1C2D0D8();
  if (qword_1ED9A99C0 != -1)
  {
    goto LABEL_73;
  }

  while (1)
  {
    v116 = v9;
    *&v112 = v14;
    v121 = qword_1ED9AA670;
    v23 = os_log_type_enabled(qword_1ED9AA670, v22);
    if (v23)
    {
      v24 = swift_slowAlloc();
      v124[0] = swift_slowAlloc();
      *v24 = 136315394;
      v25 = sub_1B1AB940C();
      v26 = MEMORY[0x1B2738350](a1, v25);
      v28 = sub_1B1A930E4(v26, v27, v124);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      v29 = sub_1B1AB5454(v120);
      v31 = sub_1B1A930E4(v29, v30, v124);

      *(v24 + 14) = v31;
      _os_log_impl(&dword_1B1A8A000, v121, v22, "#Local listing assets for types: %s, filter: %s", v24, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }

    if (qword_1ED9A9960 != -1)
    {
      v23 = swift_once();
    }

    v14 = &v100;
    v124[0] = qword_1ED9A9968;
    MEMORY[0x1EEE9AC00](v23);
    *(&v100 - 2) = v124;
    v9 = 0;
    v32 = sub_1B1ABAB9C(sub_1B1ABACC4, (&v100 - 4), a1);
    v113 = v17;
    if (v32)
    {
      break;
    }

    v124[0] = MEMORY[0x1E69E7CC0];
    if (qword_1EB7615A8 != -1)
    {
      swift_once();
    }

    v9 = v116;
    v105 = *(qword_1EB772E48 + 16);
    if (!v105)
    {
      v114 = MEMORY[0x1E69E7CC0];
LABEL_65:
      v97 = v114;
      if (!(v114 >> 62))
      {

        sub_1B1C2D7B8();
        type metadata accessor for TTSAsset();
        v98 = v97;
        goto LABEL_70;
      }

      goto LABEL_74;
    }

    OUTLINED_FUNCTION_2_13();
    v102 = v38;
    v103 = v36 + v38;
    v14 = (v39 + 16);
    v119 = (v39 + 8);
    v114 = MEMORY[0x1E69E7CC0];
    *&v40 = 136315138;
    v110 = v40;
    *&v40 = 138412290;
    v112 = v40;
    v104 = v36;
    v117 = (v39 + 16);
    while (v37 < *(v36 + 16))
    {
      v41 = v108;
      v42 = v108[9];
      v109 = v37;
      v43 = v108[2];
      v44 = v106;
      a1 = v122;
      v43(v106, v103 + v42 * v37, v122);
      v45 = sub_1B1B314A0(v44, "Unable to list voice folder %s", v100);
      v120 = v41[1];
      (v120)(v44, a1);
      v46 = v45;
      v47 = *(v45 + 16);
      if (v47)
      {
        v107 = v46;
        v48 = v46 + v102;
        v14 = v117;
        v118 = v43;
        v111 = v42;
        do
        {
          v49 = v122;
          v43(v9, v48, v122);
          v43(v17, v9, v49);
          v50 = objc_allocWithZone(type metadata accessor for TTSAssetAdhocVoice());
          a1 = v43;
          v51 = sub_1B1B61C88(v17);
          if (v51)
          {
            v52 = v51;
            v53 = sub_1B1C2D098();
            if (os_log_type_enabled(v121, v53))
            {
              v22 = OUTLINED_FUNCTION_21_0();
              v54 = swift_slowAlloc();
              *v22 = v112;
              *(v22 + 4) = v52;
              *v54 = v52;
              v55 = v52;
              _os_log_impl(&dword_1B1A8A000, v121, v53, "Found adhoc voice %@", v22, 0xCu);
              sub_1B1A90C78(v54, &qword_1EB7625C0, &qword_1B1C37990);
              OUTLINED_FUNCTION_11();
              OUTLINED_FUNCTION_11();
            }

            v56 = v52;
            MEMORY[0x1B2738320]();
            v20 = *((v124[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            v43 = v118;
            if (v20 >= *((v124[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1B1C2CE98();
            }

            sub_1B1C2CEC8();

            v9 = v116;
            (v120)(v116, v122);
            v114 = v124[0];
            v14 = v117;
          }

          else
          {
            v20 = sub_1B1C2D098();
            v43(v115, v9, v122);
            if (os_log_type_enabled(v121, v20))
            {
              v22 = OUTLINED_FUNCTION_21_0();
              v57 = swift_slowAlloc();
              v58 = v115;
              v59 = v57;
              v123[0] = v57;
              *v22 = v110;
              v60 = sub_1B1C2C098();
              v62 = v61;
              v63 = v122;
              a1 = v119;
              (v120)(v58, v122);
              v64 = sub_1B1A930E4(v60, v62, v123);
              v17 = v113;

              *(v22 + 4) = v64;
              v14 = v117;
              _os_log_impl(&dword_1B1A8A000, v121, v20, "Skip invalid voice folder '%s'", v22, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v59);
              v9 = v116;
              OUTLINED_FUNCTION_11();
              OUTLINED_FUNCTION_11();
              v65 = v63;
              v42 = v111;
              (v120)(v9, v65);
            }

            else
            {
              a1 = v122;
              v20 = v120;
              (v120)(v115, v122);
              (v20)(v9, a1);
            }

            v43 = v118;
          }

          v48 += v42;
          --v47;
        }

        while (v47);
      }

      else
      {

        v14 = v117;
      }

      v37 = (v109 + 1);
      v36 = v104;
      if (v109 + 1 == v105)
      {
        goto LABEL_65;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    OUTLINED_FUNCTION_0_13(&qword_1ED9A99C0);
  }

  sub_1B1AA0AEC(1, v120);
  if (v124[3])
  {
    v33 = swift_dynamicCast();
    v34 = v123[0];
    if (!v33)
    {
      v34 = 0;
    }

    v115 = v34;
    if (v33)
    {
      v35 = v123[1];
    }

    else
    {
      v35 = 0;
    }

    v120 = v35;
  }

  else
  {
    sub_1B1A90C78(v124, &qword_1EB761DE0, &qword_1B1C352C0);
    v115 = 0;
    v120 = 0;
  }

  v124[0] = MEMORY[0x1E69E7CC0];
  if (qword_1EB7615B0 != -1)
  {
    swift_once();
  }

  v66 = qword_1EB772E50;
  v104 = *(qword_1EB772E50 + 16);
  if (v104)
  {
    v67 = 0;
    OUTLINED_FUNCTION_2_13();
    v101 = v68;
    v103 = v66 + v68;
    a1 = (v69 + 16);
    v118 = (v69 + 8);
    v70 = MEMORY[0x1E69E7CC0];
    *&v71 = 136315138;
    v110 = v71;
    v102 = v66;
    v114 = v69 + 16;
    v109 = v20;
    while (v67 < *(v66 + 16))
    {
      v14 = v108;
      v116 = v108[9];
      v9 = v105;
      v72 = v122;
      v119 = v108[2];
      v119(v105, v103 + v116 * v67, v122);
      v73 = sub_1B1B314A0(v9, "Unable to list resource folder %s", v100);
      v117 = v14[1];
      (v117)(v9, v72);
      v74 = v73;
      v75 = *(v73 + 16);
      if (v75)
      {
        v107 = v67;
        v106 = v74;
        v76 = &v74[v101];
        a1 = v114;
        v77 = v119;
        do
        {
          v77(v20, v76, v122);
          v78 = sub_1B1C2C0F8();
          v80 = v78;
          v14 = v79;
          if (!v120 || (v115 == v78 ? (v81 = v120 == v79) : (v81 = 0), v81 || (sub_1B1C2D7A8() & 1) != 0))
          {
            v22 = v119;
            v119(v17, v20, v122);
            v82 = objc_allocWithZone(type metadata accessor for TTSAssetAdhocResource());
            v83 = sub_1B1B6360C(v17, v80, v14);
            if (v83)
            {
              v84 = v83;
              v14 = v124;
              MEMORY[0x1B2738320]();
              if (*((v124[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1B1C2CE98();
              }

              sub_1B1C2CEC8();

              (v117)(v20, v122);
              v70 = v124[0];
            }

            else
            {
              v85 = sub_1B1C2D098();
              v86 = v112;
              (v22)(v112, v20, v122);
              if (os_log_type_enabled(v121, v85))
              {
                v87 = OUTLINED_FUNCTION_21_0();
                v111 = v70;
                v88 = v87;
                v22 = swift_slowAlloc();
                v123[0] = v22;
                *v88 = v110;
                v89 = sub_1B1C2C098();
                v90 = v122;
                v91 = v89;
                v93 = v92;
                v9 = v117;
                (v117)(v86, v122);
                v94 = v91;
                v20 = v109;
                v14 = sub_1B1A930E4(v94, v93, v123);
                v17 = v113;

                *(v88 + 4) = v14;
                _os_log_impl(&dword_1B1A8A000, v121, v85, "Skip invalid resource folder '%s'", v88, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v22);
                OUTLINED_FUNCTION_11();
                v70 = v111;
                OUTLINED_FUNCTION_11();
                (v9)(v20, v90);
              }

              else
              {
                v95 = v86;
                v96 = v122;
                v22 = v117;
                v14 = v118;
                (v117)(v95, v122);
                (v22)(v20, v96);
              }

              a1 = v114;
            }
          }

          else
          {

            (v117)(v20, v122);
          }

          v76 += v116;
          --v75;
          v77 = v119;
        }

        while (v75);

        v66 = v102;
        v67 = v107;
      }

      else
      {

        a1 = v114;
      }

      if (++v67 == v104)
      {
        goto LABEL_68;
      }
    }

    goto LABEL_72;
  }

  v70 = MEMORY[0x1E69E7CC0];
LABEL_68:

  if (!(v70 >> 62))
  {

    sub_1B1C2D7B8();
    type metadata accessor for TTSAsset();
    v98 = v70;
    goto LABEL_70;
  }

LABEL_74:
  type metadata accessor for TTSAsset();

  v98 = sub_1B1C2D668();

LABEL_70:

  return v98;
}

uint64_t sub_1B1B314A0(uint64_t a1, const char *a2, ...)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultManager];
  v11 = sub_1B1C2C118();
  v28[0] = 0;
  v12 = [v10 contentsOfDirectoryAtURL:v11 includingPropertiesForKeys:0 options:1 error:v28];

  v13 = v28[0];
  if (v12)
  {
    v14 = sub_1B1C2CE78();
    v15 = v13;
  }

  else
  {
    v16 = v28[0];
    v17 = sub_1B1C2C058();

    swift_willThrow();
    v18 = sub_1B1C2D098();
    if (qword_1ED9A99C0 != -1)
    {
      OUTLINED_FUNCTION_0_13(&qword_1ED9A99C0);
    }

    v19 = qword_1ED9AA670;
    (*(v6 + 16))(v9, a1, v4);
    if (os_log_type_enabled(v19, v18))
    {
      v20 = OUTLINED_FUNCTION_21_0();
      v21 = swift_slowAlloc();
      v28[0] = v21;
      *v20 = 136315138;
      sub_1B1B317AC();
      v22 = sub_1B1C2D778();
      v24 = v23;
      (*(v6 + 8))(v9, v4);
      v25 = sub_1B1A930E4(v22, v24, v28);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1B1A8A000, v19, v18, a2, v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }

    else
    {
      (*(v6 + 8))(v9, v4);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return v14;
}

unint64_t sub_1B1B317AC()
{
  result = qword_1ED9A5260;
  if (!qword_1ED9A5260)
  {
    sub_1B1C2C1C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A5260);
  }

  return result;
}

uint64_t TextToPhonemeAction.__allocating_init(pool:)(uint64_t a1)
{
  v2 = swift_allocObject();
  TextToPhonemeAction.init(pool:)(a1);
  return v2;
}

uint64_t TextToPhonemeAction.init(pool:)(uint64_t a1)
{
  *(v1 + 16) = sub_1B1AA1E5C();
  v2 = sub_1B1AA2740();

  *(v1 + 24) = v2;
  return v1;
}

void sub_1B1B318CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = *MEMORY[0x1E69E9840];
  v4 = sub_1B1B22B9C(a1, a2);
  if (!v4)
  {
    sub_1B1A9EC9C();
    v17 = swift_allocError();
    OUTLINED_FUNCTION_0_14(v17, v18);
    return;
  }

  v5 = v4;
  if (!sub_1B1ABF388())
  {
    sub_1B1A9EC9C();
    v19 = swift_allocError();
    OUTLINED_FUNCTION_0_14(v19, v20);

    return;
  }

  v6 = OBJC_IVAR___SiriTTSPhonemeRequest_phonemeSystem;
  swift_beginAccess();
  v7 = *&v5[v6];
  if (v7 >= 3)
  {
    sub_1B1C2D7E8();
    __break(1u);
  }

  else
  {
    if (*(v3 + 24))
    {
      sub_1B1B231C4(0);
    }

    v8 = objc_opt_self();
    swift_beginAccess();

    v9 = sub_1B1C2CB28();

    v10 = sub_1B1C2CB28();

    v22 = 0;
    v11 = [v8 generateTTSPhonemes:v9 voicePath:v10 phonemeSystem:v7 error:&v22];

    v12 = v22;
    if (!v11)
    {
      v21 = v22;
      sub_1B1C2C058();

      swift_willThrow();
LABEL_14:

      return;
    }

    v13 = sub_1B1C2CB58();
    v15 = v14;
    v16 = v12;

    if (*(v3 + 16))
    {
      if (qword_1EB7615C8 != -1)
      {
        swift_once();
      }

      sub_1B1B18D54(qword_1EB7624E8, v13, v15);

      goto LABEL_14;
    }
  }
}

uint64_t TextToPhonemeAction.__deallocating_deinit()
{
  TextToPhonemeAction.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1B1B31C20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = TextToPhonemeAction.__allocating_init(pool:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B1B31CFC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19_2(v2 + 32, a2);
  *(v2 + 32) = a1;
}

uint64_t sub_1B1B31D88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  __swift_allocate_value_buffer(v0, qword_1EB772E58);
  v1 = __swift_project_value_buffer(v0, qword_1EB772E58);
  return sub_1B1B31DE0(v1);
}

uint64_t sub_1B1B31DE0@<X0>(uint64_t a1@<X8>)
{
  v26[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1B1C2C1C8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - v7;
  sub_1B1B268F0();
  v9 = sub_1B1AE7720();
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = v9;
  v11 = sub_1B1BE34F8(0xD000000000000020, 0x80000001B1C4BB70, 0x7473696C70, 0xE500000000000000, v9);
  if (!v11)
  {

LABEL_7:

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  }

  v12 = v11;
  sub_1B1C2C168();

  (*(v3 + 32))(v8, v6, v2);
  v14 = sub_1B1C2C208();
  v16 = v15;
  v17 = objc_opt_self();
  v18 = sub_1B1C2C298();
  v26[0] = 0;
  v19 = [v17 propertyListWithData:v18 options:0 format:0 error:v26];

  if (v19)
  {
    v20 = v26[0];
    sub_1B1C2D3F8();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761EE0, &unk_1B1C38950);
    if (swift_dynamicCast())
    {
      sub_1B1A945F4(0xD000000000000014, 0x80000001B1C4BBA0, v25[1]);
      v22 = v21;

      if (v22)
      {
        sub_1B1C2C188();

        sub_1B1A94524(v14, v16);

        return (*(v3 + 8))(v8, v2);
      }
    }

    (*(v3 + 8))(v8, v2);

    sub_1B1A94524(v14, v16);
  }

  else
  {
    v23 = v26[0];
    v24 = sub_1B1C2C058();

    swift_willThrow();
    sub_1B1A94524(v14, v16);

    (*(v3 + 8))(v8, v2);
  }

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t AlpineTTSAction.init(pool:)(uint64_t a1)
{
  type metadata accessor for AsynchronousContext();
  swift_allocObject();
  v1[4] = sub_1B1ADA774();
  v1[6] = MEMORY[0x1E69E7CC0];
  v1[5] = sub_1B1AA1E5C();
  v2 = _s14SiriTTSService17PassThroughActionCACycfc_0();

  return v2;
}

uint64_t sub_1B1B32294()
{
}

uint64_t AlpineTTSAction.deinit()
{
  sub_1B1B32310();
  v0 = Buffer.deinit();

  return v0;
}

void sub_1B1B32310()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    swift_beginAccess();
    v2 = *(v0 + 48);
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v1;

      v5 = (v2 + 40);
      do
      {
        [v4 removeObserver:*(v5 - 1) name:*v5 object:0];
        v5 += 2;
        --v3;
      }

      while (v3);
    }

    *(v0 + 48) = MEMORY[0x1E69E7CC0];
  }
}

void sub_1B1B323C8()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v0 + 32);
  if (v2)
  {
    OUTLINED_FUNCTION_19_2(v0 + 40, v1);
    if (*(*(v0 + 40) + 16))
    {
      v3 = v2;
      OUTLINED_FUNCTION_10_9();
      OUTLINED_FUNCTION_17_7();
      do
      {
        OUTLINED_FUNCTION_2_14();
        OUTLINED_FUNCTION_16_9();
      }

      while (!v4);
    }

    *(v0 + 40) = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_15_10();
}

void sub_1B1B3244C()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v0 + 24);
  if (v2)
  {
    OUTLINED_FUNCTION_19_2(v0 + 32, v1);
    if (*(*(v0 + 32) + 16))
    {
      v3 = v2;
      OUTLINED_FUNCTION_10_9();
      OUTLINED_FUNCTION_17_7();
      do
      {
        OUTLINED_FUNCTION_2_14();
        OUTLINED_FUNCTION_16_9();
      }

      while (!v4);
    }

    *(v0 + 32) = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_15_10();
}

uint64_t AlpineTTSAction.__deallocating_deinit()
{
  v0 = AlpineTTSAction.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void sub_1B1B32500()
{
  v1 = v0;
  v2 = sub_1B1C2BD68();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v90 - v9;
  v101 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v99 = v11;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v98 = &v90 - v16;
  v17 = sub_1B1AA95C4();
  if (v17)
  {
    v18 = v17;
    v94 = v1;
    v96 = v7;
    v93 = v4;
    ObjectType = swift_getObjectType();
    v20 = SynthesizingRequestProtocol.voice.getter(ObjectType);
    v21 = &v20[OBJC_IVAR___SiriTTSSynthesisVoice_name];
    OUTLINED_FUNCTION_11_0();
    swift_beginAccess();
    v22 = *v21;
    v23 = *(v21 + 1);
    v92 = v22;

    if (v23)
    {
      v95 = v18;
      if (qword_1EB7615B8 != -1)
      {
        swift_once();
      }

      v24 = __swift_project_value_buffer(v8, qword_1EB772E58);
      sub_1B1AAC2E0(v24, v10);
      v25 = v101;
      if (__swift_getEnumTagSinglePayload(v10, 1, v101) == 1)
      {

        sub_1B1A90C78(v10, &unk_1EB761F00, &qword_1B1C36480);
        sub_1B1A9EC9C();
        swift_allocError();
        *v26 = 1;
        *(v26 + 8) = 0xD00000000000001DLL;
        *(v26 + 16) = 0x80000001B1C4BA40;
        swift_willThrow();
      }

      else
      {
        (*(v99 + 32))(v98, v10, v25);
        if (*(v94 + 40))
        {
          if (qword_1ED9A4DF8 != -1)
          {
            swift_once();
          }

          sub_1B1AEAD14();
        }

        v91 = v2;
        (*(v99 + 16))(v15, v98, v25);
        OUTLINED_FUNCTION_13_9();
        v29 = sub_1B1C2BD38();
        if (qword_1ED9A96B8 != -1)
        {
          v29 = swift_once();
        }

        v34 = sub_1B1B56E18(v29, v30, v31, v32, v33);
        if (v35)
        {
          v36 = v34;
        }

        else
        {
          v36 = 0;
        }

        if (v35)
        {
          v37 = v35;
        }

        else
        {
          v37 = 0xE000000000000000;
        }

        v38 = 0xE000000000000000;
        v39 = sub_1B1B57084();
        if (v40)
        {
          v41 = v39;
        }

        else
        {
          v41 = 0;
        }

        if (v40)
        {
          v38 = v40;
        }

        sub_1B1C2BD18();
        sub_1B1C2BD58();
        OUTLINED_FUNCTION_9_8(0x3D6B63616361);
        MEMORY[0x1B27381B0](v36, v37);

        OUTLINED_FUNCTION_14_9();
        sub_1B1C2BD58();

        OUTLINED_FUNCTION_9_8(0x20726572616542);
        MEMORY[0x1B27381B0](v41, v38);

        OUTLINED_FUNCTION_14_9();
        sub_1B1C2BD58();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624D0, &unk_1B1C39860);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B1C364D0;
        *(inited + 32) = 0x7475706E69;
        *(inited + 40) = 0xE500000000000000;
        v43 = SynthesizingRequestProtocol.text.getter();
        *(inited + 48) = v43;
        *(inited + 56) = v44;
        *(inited + 64) = 0x6563696F76;
        *(inited + 72) = 0xE500000000000000;
        *(inited + 80) = v92;
        *(inited + 88) = v23;
        *(inited + 96) = 0x6C65646F6DLL;
        *(inited + 104) = 0xE500000000000000;
        v48 = sub_1B1B57304(v43, v44, v45, v46, v47);
        if (v49)
        {
          v50 = v48;
        }

        else
        {
          v50 = 0;
        }

        v51 = 0xE000000000000000;
        if (v49)
        {
          v51 = v49;
        }

        *(inited + 112) = v50;
        *(inited + 120) = v51;
        v52 = sub_1B1C2CAB8();
        sub_1B1C2BE28();
        swift_allocObject();
        sub_1B1C2BE18();
        aBlock[0] = v52;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761EE0, &unk_1B1C38950);
        sub_1B1B3437C();
        v53 = v97;
        sub_1B1C2BE08();
        if (v53)
        {

          if (qword_1ED9A9288 != -1)
          {
            OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
          }

          v54 = sub_1B1C2C8A8();
          __swift_project_value_buffer(v54, qword_1ED9A9120);
          v55 = v53;
          v56 = sub_1B1C2C888();
          v57 = sub_1B1C2D0B8();

          os_log_type_enabled(v56, v57);
          v58 = v93;
          OUTLINED_FUNCTION_13_9();
          v59 = v101;
          if (v60)
          {
            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            *v61 = 138412290;
            v63 = v53;
            v64 = _swift_stdlib_bridgeErrorToNSError();
            *(v61 + 4) = v64;
            *v62 = v64;
            _os_log_impl(&dword_1B1A8A000, v56, v57, "Unable to encode payload: %@", v61, 0xCu);
            sub_1B1A90C78(v62, &qword_1EB7625C0, &qword_1B1C37990);
            OUTLINED_FUNCTION_11();
            OUTLINED_FUNCTION_11();
          }

          else
          {
          }

          v76 = v91;
          v77 = OUTLINED_FUNCTION_8_7();
          v78(v77, v59);
        }

        else
        {
          sub_1B1C2BD48();

          sub_1B1B33224();
          if (qword_1ED9A9288 != -1)
          {
            OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
          }

          v65 = sub_1B1C2C8A8();
          __swift_project_value_buffer(v65, qword_1ED9A9120);

          v66 = sub_1B1C2C888();
          v67 = sub_1B1C2D0D8();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            aBlock[0] = swift_slowAlloc();
            *v68 = 136315394;
            OUTLINED_FUNCTION_11_0();
            swift_beginAccess();
            sub_1B1B3441C();
            v69 = sub_1B1C2D778();
            v71 = sub_1B1A930E4(v69, v70, aBlock);

            *(v68 + 4) = v71;
            *(v68 + 12) = 2080;
            v72 = sub_1B1C2CAA8();
            v74 = v73;

            v75 = sub_1B1A930E4(v72, v74, aBlock);

            *(v68 + 14) = v75;
            _os_log_impl(&dword_1B1A8A000, v66, v67, "Sending Alpine request, %s, payload: %s", v68, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_11();
            OUTLINED_FUNCTION_13_9();
            OUTLINED_FUNCTION_11();
          }

          else
          {
          }

          v79 = [objc_opt_self() sharedSession];
          OUTLINED_FUNCTION_11_0();
          swift_beginAccess();
          v80 = sub_1B1C2BD28();
          v81 = swift_allocObject();
          swift_weakInit();
          v82 = swift_allocObject();
          v83 = v95;
          *(v82 + 16) = v81;
          *(v82 + 24) = v83;
          aBlock[4] = sub_1B1B343F8;
          aBlock[5] = v82;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1B1B33EEC;
          aBlock[3] = &block_descriptor_6;
          v84 = _Block_copy(aBlock);
          v85 = v83;

          v20 = [v79 dataTaskWithRequest:v80 completionHandler:v84];
          _Block_release(v84);

          [v20 resume];
          v58 = v93;
          if (qword_1ED9A4D38 != -1)
          {
            swift_once();
          }

          v86 = qword_1ED9A4D40;
          v87 = swift_allocObject();
          swift_weakInit();

          sub_1B1B3400C(v86, sub_1B1B34400, v87);

          v88 = OUTLINED_FUNCTION_8_7();
          v89(v88, v101);

          v76 = v91;
          OUTLINED_FUNCTION_13_9();
        }

        (*(v58 + 8))(v20, v76);
      }
    }

    else
    {
      sub_1B1A9EC9C();
      swift_allocError();
      *v28 = 6;
      *(v28 + 8) = 0xD000000000000012;
      *(v28 + 16) = 0x80000001B1C4BA20;
      swift_willThrow();
    }
  }

  else
  {
    sub_1B1A9EC9C();
    swift_allocError();
    *v27 = 1;
    *(v27 + 8) = 0xD000000000000019;
    *(v27 + 16) = 0x80000001B1C4BA00;
    swift_willThrow();
  }
}

void sub_1B1B33170()
{
  OUTLINED_FUNCTION_11_7();
  v2 = v1 & 1;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  [*(*(v0 + 48) + 40) lock];
  v3 = *(v0 + 48);
  if (*(v3 + 16) != v2)
  {
    *(v3 + 16) = v2;
    [*(v3 + 40) broadcast];
    v3 = *(v0 + 48);
  }

  [*(v3 + 40) unlock];
  v4 = *(v0 + 24);
  [v4 lock];
  [v4 broadcast];
  [v4 unlock];
  OUTLINED_FUNCTION_15_10();
}

void sub_1B1B33224()
{
  OUTLINED_FUNCTION_11_7();
  v2 = v1 & 1;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  [*(*(v0 + 32) + 40) lock];
  v3 = *(v0 + 32);
  if (*(v3 + 16) != v2)
  {
    *(v3 + 16) = v2;
    [*(v3 + 40) broadcast];
    v3 = *(v0 + 32);
  }

  [*(v3 + 40) unlock];
  v4 = *(v0 + 24);
  [v4 lock];
  [v4 broadcast];
  [v4 unlock];
  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B332D8(uint64_t a1, unint64_t a2, void *a3, void *a4, char *a5, void *a6)
{
  v12 = sub_1B1C2CBC8();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v93 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B1C2C0A8();
  v95 = *(v14 - 8);
  v96 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v94 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B1C2C1C8();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v92 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v100 = &v89 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v98 = &v89 - v22;
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v23 = sub_1B1C2C8A8();
  v24 = __swift_project_value_buffer(v23, qword_1ED9A9120);
  v101 = a3;
  v25 = a3;
  v99 = v24;
  v26 = sub_1B1C2C888();
  v27 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v91 = v17;
    v97 = a6;
    v29 = v28;
    v30 = a4;
    v31 = v16;
    v32 = a1;
    v33 = a2;
    v34 = a5;
    v35 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v25;
    *v35 = v101;
    v36 = v25;
    _os_log_impl(&dword_1B1A8A000, v26, v27, "Received Alpine response, %@", v29, 0xCu);
    sub_1B1A90C78(v35, &qword_1EB7625C0, &qword_1B1C37990);
    v37 = v35;
    a5 = v34;
    a2 = v33;
    a1 = v32;
    v16 = v31;
    a4 = v30;
    MEMORY[0x1B2739FD0](v37, -1, -1);
    v38 = v29;
    a6 = v97;
    v17 = v91;
    MEMORY[0x1B2739FD0](v38, -1, -1);
  }

  if (a4)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v103 = 0;
      v104 = 0xE000000000000000;
      v39 = a4;
      sub_1B1C2D538();
      MEMORY[0x1B27381B0](0x6520656E69706C41, 0xEE00203A726F7272);
      v102 = a4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762090, &qword_1B1C38450);
      sub_1B1C2D618();
      v40 = v103;
      v41 = v104;
      sub_1B1A9EC9C();
      swift_allocError();
      *v42 = 1;
      *(v42 + 8) = v40;
      *(v42 + 16) = v41;
      sub_1B1BD2F28();

LABEL_15:
    }
  }

  else if (v101 && (objc_opt_self(), (v43 = swift_dynamicCastObjCClass()) != 0) && a2 >> 60 != 15)
  {
    v44 = v43;
    v45 = v25;
    sub_1B1B1C108(a1, a2);
    v46 = [v44 statusCode];
    v101 = v45;
    if (v46 != 200)
    {
      sub_1B1AA64DC(a1, a2);
      v60 = sub_1B1C2C888();
      v61 = sub_1B1C2D0B8();
      sub_1B1AA9670(a1, a2);
      v62 = os_log_type_enabled(v60, v61);
      v89 = a2;
      v90 = a1;
      if (v62)
      {
        v63 = swift_slowAlloc();
        v64 = a5;
        v65 = swift_slowAlloc();
        v105[0] = v65;
        *v63 = 136315138;
        sub_1B1C2CBB8();
        v66 = sub_1B1C2CB78();
        if (v67)
        {
          v68 = v67;
        }

        else
        {
          v66 = 0x206E776F6E6B6E55;
          v68 = 0xED0000726F727265;
        }

        v69 = sub_1B1A930E4(v66, v68, v105);

        *(v63 + 4) = v69;
        _os_log_impl(&dword_1B1A8A000, v60, v61, "Failed http response: %s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v65);
        v70 = v65;
        a5 = v64;
        MEMORY[0x1B2739FD0](v70, -1, -1);
        MEMORY[0x1B2739FD0](v63, -1, -1);
      }

      swift_beginAccess();
      if (!swift_weakLoadStrong())
      {

        sub_1B1AA9670(v90, v89);
        return sub_1B1B33FB4(a5);
      }

      v103 = 0;
      v104 = 0xE000000000000000;
      sub_1B1C2D538();

      v103 = 0xD000000000000012;
      v104 = 0x80000001B1C4BB00;
      v102 = [v44 statusCode];
      v71 = sub_1B1C2D778();
      MEMORY[0x1B27381B0](v71);

      v72 = v103;
      v73 = v104;
      sub_1B1A9EC9C();
      swift_allocError();
      *v74 = 1;
      *(v74 + 8) = v72;
      *(v74 + 16) = v73;
      sub_1B1BD2F28();

      sub_1B1AA9670(v90, v89);
      goto LABEL_15;
    }

    v93 = a5;
    v47 = sub_1B1C2C108();
    v103 = (*((*MEMORY[0x1E69E7D40] & *a6) + 0x90))(v47);
    v105[0] = sub_1B1C2D778();
    v105[1] = v48;
    MEMORY[0x1B27381B0](1986098990, 0xE400000000000000);
    v97 = a6;
    v49 = v94;
    v50 = v95;
    v51 = v96;
    (*(v95 + 104))(v94, *MEMORY[0x1E6968F70], v96);
    sub_1B1A8EDAC();
    v52 = v98;
    v53 = v100;
    sub_1B1C2C1B8();
    (*(v50 + 8))(v49, v51);

    v54 = *(v17 + 8);
    v54(v53, v16);
    sub_1B1C2C308();
    v55 = v97;
    type metadata accessor for AudioData();
    v56 = v52;
    v57 = v92;
    (*(v17 + 16))(v92, v56, v16);
    v75 = AudioData.__allocating_init(audioFileURL:)(v57);
    v76 = v54;
    v100 = v16;
    v77 = v101;
    v90 = a1;
    v78 = a2;
    type metadata accessor for DataContainer();
    v79 = swift_allocObject();
    *(v79 + 16) = sub_1B1C2CAB8();
    v80 = v75;
    sub_1B1ACC2E4(v75);
    v81 = v55;
    sub_1B1ACFA84(v55);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v83 = *(Strong + 40);
      v84 = v83;

      if (v83)
      {
        if (qword_1ED9A4EA8 != -1)
        {
          swift_once();
        }

        [v84 postNotificationName:qword_1ED9A4EB0 object:v80];
      }
    }

    swift_beginAccess();
    v85 = swift_weakLoadStrong();
    if (v85)
    {
      v86 = *(v85 + 40);
      v87 = v86;

      if (v86)
      {
        if (qword_1ED9A4E88 != -1)
        {
          swift_once();
        }

        AudioData.duration.getter();
        sub_1B1ADED40(v88);
      }
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1B1AA81A8(v79);
    }

    else
    {
    }

    sub_1B1AA9670(v90, v78);
    v76(v98, v100);
    a5 = v93;
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1B1A9EC9C();
      swift_allocError();
      *v58 = 1;
      *(v58 + 8) = 0xD000000000000011;
      *(v58 + 16) = 0x80000001B1C4BAE0;
      sub_1B1BD2F28();
      goto LABEL_15;
    }
  }

  return sub_1B1B33FB4(a5);
}