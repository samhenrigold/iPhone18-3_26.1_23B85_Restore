void sub_1B1B5BB5C(void *a1)
{
  v2 = sub_1B1B70FE4();
  if (v2)
  {
  }

  else
  {
    sub_1B1BC760C();
    sub_1B1B5BC54(a1);
  }
}

void sub_1B1B5BC54(void *a1)
{
  v3 = v1;
  if (*(v1 + 64))
  {
    sub_1B1B55438();
    if (v5 != 2 && (v5 & 1) != 0 && *(v1 + 136) > 0.8)
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v6 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v6, qword_1ED9A9120);
      v7 = sub_1B1C2C888();
      v8 = sub_1B1C2D098();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1B1A8A000, v7, v8, "Simulate network stall is on, ignore inline streaming objects", v9, 2u);
        MEMORY[0x1B2739FD0](v9, -1, -1);
      }

      return;
    }
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    [v10 streamingPlaybackBufferSize];
    *(v1 + 144) = v11;
    sub_1B1B59D60(v122);
    v12 = v123;
    *(v1 + 72) = v122[0];
    *(v1 + 88) = v122[1];
    *(v1 + 104) = v12;
    *(v1 + 112) = 0;
    v13 = sub_1B1B5A060();
    v14 = v13;
    v15 = *(v1 + 128);
    if (!v15)
    {
LABEL_66:
      v74 = *(v3 + 48);
      if (v74)
      {
        if (qword_1ED9A4EB8 != -1)
        {
          swift_once();
        }

        [v74 postNotificationName:qword_1ED9A4EC0 object:v14];
      }

      v75 = sub_1B1B5A8A8();
      if (v74)
      {
        if (qword_1ED9A4D20 != -1)
        {
          swift_once();
        }

        [v74 postNotificationName:qword_1ED9A4D28 object:v75];
      }

      v76 = [objc_allocWithZone(type metadata accessor for AudioData()) init];
      sub_1B1B59D60(v124);
      v77 = &v76[OBJC_IVAR___SiriTTSAudioData_asbd];
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      v78 = v124[1];
      *v77 = v124[0];
      *(v77 + 1) = v78;
      *(v77 + 4) = v125;
      type metadata accessor for DataContainer();
      OUTLINED_FUNCTION_17();
      v79 = swift_allocObject();
      *(v79 + 16) = sub_1B1C2CAB8();
      v80 = v76;
      sub_1B1ACC2E4(v76);
      v81 = *(v3 + 128);
      v82 = v81;
      sub_1B1AD7464(v81);
      sub_1B1AA81A8(v79);

      return;
    }

    v115 = v13;
    ObjectType = swift_getObjectType();
    v17 = v15;
    v18 = SynthesizingRequestProtocol.voice.getter(ObjectType);
    v19 = &v18[OBJC_IVAR___SiriTTSSynthesisVoice_name];
    OUTLINED_FUNCTION_11_0();
    swift_beginAccess();
    v20 = *(v19 + 1);

    if (v20)
    {
      v112 = v17;
      v14 = v115;
      v21 = &v115[OBJC_IVAR___SiriTTSSynthesisVoice_name];
      OUTLINED_FUNCTION_11_0();
      swift_beginAccess();
      v22 = *v21;
      if (v21[1])
      {
        v22 = sub_1B1C2CBE8();
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v52 = sub_1B1C2CBE8();
      v54 = v53;

      if (!v24)
      {

        goto LABEL_63;
      }

      if (v22 == v52 && v24 == v54)
      {
      }

      else
      {
        v56 = sub_1B1C2D7A8();

        if ((v56 & 1) == 0)
        {
          goto LABEL_63;
        }
      }

      v57 = &v115[OBJC_IVAR___SiriTTSSynthesisVoice_language];
      OUTLINED_FUNCTION_11_0();
      swift_beginAccess();
      v59 = *v57;
      v58 = *(v57 + 1);

      v60 = SynthesizingRequestProtocol.voice.getter(ObjectType);
      v61 = &v60[OBJC_IVAR___SiriTTSSynthesisVoice_language];
      OUTLINED_FUNCTION_11_0();
      swift_beginAccess();
      v63 = *v61;
      v62 = *(v61 + 1);

      if (v59 != v63 || v58 != v62)
      {
        v65 = sub_1B1C2D7A8();

        v14 = v115;
        if (v65)
        {

          goto LABEL_66;
        }

LABEL_63:
        sub_1B1C2D538();

        OUTLINED_FUNCTION_12_10();
        v118 = v67;
        v120 = v66;
        v68 = [v14 description];
        v69 = sub_1B1C2CB58();
        v71 = v70;

        MEMORY[0x1B27381B0](v69, v71);

        MEMORY[0x1B27381B0](32, 0xE100000000000000);
        v72 = sub_1B1A9EC9C();
        OUTLINED_FUNCTION_34(&type metadata for TTSError, v72);
        *v73 = 23;
        *(v73 + 8) = v118;
        *(v73 + 16) = v120;
        swift_willThrow();

        return;
      }
    }

    else
    {
    }

    v14 = v115;
    goto LABEL_66;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v27 = swift_dynamicCastObjCClass();
    if (v27)
    {
      v28 = v27;
      if (*(v1 + 48))
      {
        if (qword_1ED9A4E88 != -1)
        {
          swift_once();
        }

        sub_1B1ADED40(*(v1 + 136));
      }

      OUTLINED_FUNCTION_11_0();
      swift_beginAccess();
      if (sub_1B1A9547C())
      {
        v29 = *(v1 + 152);
        v30 = sub_1B1A9547C();
        if (v30)
        {
          v31 = v30;
          if (v30 < 1)
          {
            __break(1u);
            goto LABEL_112;
          }

          for (i = 0; i != v31; i = i + 1)
          {
            if ((v29 & 0xC000000000000001) != 0)
            {
              v33 = MEMORY[0x1B2738A20](i, v29);
            }

            else
            {
              v33 = *&v29[8 * i + 32];
            }

            sub_1B1AA81A8(v33);
          }
        }
      }

      if (![v28 errorCode] || objc_msgSend(v28, sel_errorCode) == 200)
      {
        sub_1B1BC7598();
        return;
      }

      sub_1B1C2D538();
      MEMORY[0x1B27381B0](0xD000000000000036, 0x80000001B1C4E9E0);
      [v28 errorCode];
      v91 = sub_1B1C2D778();
      MEMORY[0x1B27381B0](v91);

      MEMORY[0x1B27381B0](8236, 0xE200000000000000);
      v92 = sub_1B1B5CD20(v28);
      if (!v93)
      {
        goto LABEL_115;
      }

      MEMORY[0x1B27381B0](v92);

      v89 = 0;
      v90 = 0xE000000000000000;
    }

    else
    {
      sub_1B1C2D538();

      OUTLINED_FUNCTION_12_10();
      v119 = v84 + 18;
      v121 = v83;
      v85 = [a1 description];
      v86 = sub_1B1C2CB58();
      v88 = v87;

      MEMORY[0x1B27381B0](v86, v88);

      v89 = v119;
      v90 = v121;
    }

    v94 = sub_1B1A9EC9C();
    v95 = OUTLINED_FUNCTION_34(&type metadata for TTSError, v94);
    OUTLINED_FUNCTION_59(v95, v96);
    *(v97 + 8) = v89;
    *(v97 + 16) = v90;
    goto LABEL_79;
  }

  if (*(v1 + 112))
  {
    v25 = sub_1B1A9EC9C();
    OUTLINED_FUNCTION_34(&type metadata for TTSError, v25);
    *v26 = 20;
    *(v26 + 8) = 0xD000000000000045;
    *(v26 + 16) = 0x80000001B1C4EA20;
LABEL_79:
    swift_willThrow();
    return;
  }

  v35 = *(v1 + 96);
  v34 = *(v1 + 104);
  v37 = *(v1 + 80);
  v36 = *(v1 + 88);
  v126[0] = *(v1 + 72);
  v126[1] = v37;
  v126[2] = v36;
  v126[3] = v35;
  v126[4] = v34;
  v38 = sub_1B1B5ABE0(v126);
  if (v2)
  {
    return;
  }

  v29 = v38;
  v39 = sub_1B1B5ADD0();
  v40 = sub_1B1A9547C();
  if (!v40)
  {

    goto LABEL_82;
  }

  v31 = v40;
  v111 = v29;
  sub_1B1C2D5B8();
  if (v31 < 0)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v41 = 0;
  v116 = v39 & 0xC000000000000001;
  v113 = v39;
  v114 = v1;
  do
  {
    if (v116)
    {
      v42 = MEMORY[0x1B2738A20](v41, v39);
    }

    else
    {
      v42 = *(v39 + 8 * v41 + 32);
    }

    v43 = v42;
    v44 = *(v3 + 128);
    if (v44)
    {
      OUTLINED_FUNCTION_11_0();
      swift_beginAccess();
      type metadata accessor for NSRangeUtil();
      v45 = &v43[OBJC_IVAR___SiriTTSWordTimingInfo_textRange];
      OUTLINED_FUNCTION_11_0();
      swift_beginAccess();
      v47 = *v45;
      v46 = v45[1];
      swift_getObjectType();
      v48 = v44;
      v49 = SynthesizingRequestProtocol.text.getter();
      static NSRangeUtil.mapUtf8RangeToUtf16(_:inText:)(v47, v46, v49, v50);

      v51 = objc_allocWithZone(type metadata accessor for WordTimingInfo());
      v39 = v113;
      v3 = v114;
      WordTimingInfo.init(startTiming:textRange:)();
    }

    v41 = v41 + 1;
    sub_1B1C2D588();
    sub_1B1C2D5C8();
    sub_1B1C2D5D8();
    sub_1B1C2D598();
  }

  while (v31 != v41);

  v29 = v111;
LABEL_82:
  if (*(v3 + 136) == 0.0)
  {
    v98 = *(v3 + 48);
    if (v98)
    {
      if (qword_1ED9A4CD8 != -1)
      {
        swift_once();
      }

      [v98 postNotificationName:qword_1ED9A4CE0 object:{0, v111}];
    }
  }

  v31 = *(v3 + 48);
  if (v31)
  {
    if (qword_1ED9A4CF0 == -1)
    {
LABEL_89:
      [v31 postNotificationName:qword_1ED9A4CF8 object:{0, v111}];
      goto LABEL_90;
    }

LABEL_113:
    swift_once();
    goto LABEL_89;
  }

LABEL_90:
  AudioData.duration.getter();
  *(v3 + 136) = v99 + *(v3 + 136);
  AudioData.duration.getter();
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  sub_1B1C2C3C8();
  swift_endAccess();
  type metadata accessor for DataContainer();
  OUTLINED_FUNCTION_17();
  v100 = swift_allocObject();
  *(v100 + 16) = sub_1B1C2CAB8();
  v101 = v29;
  sub_1B1ACC2E4(v29);

  sub_1B1ACC308(v102);
  v103 = *(v3 + 128);
  v104 = v103;
  sub_1B1AD7464(v103);
  if (*(v3 + 136) >= *(v3 + 144))
  {
    OUTLINED_FUNCTION_15_0();
    swift_beginAccess();
    if (!sub_1B1A9547C())
    {
LABEL_102:
      sub_1B1AA81A8(v100);
      goto LABEL_103;
    }

    v117 = v101;
    v106 = *(v3 + 152);
    v107 = sub_1B1A9547C();
    if (!v107)
    {
LABEL_101:
      *(v3 + 152) = MEMORY[0x1E69E7CC0];

      v101 = v117;
      goto LABEL_102;
    }

    v108 = v107;
    if (v107 >= 1)
    {

      for (j = 0; j != v108; ++j)
      {
        if ((v106 & 0xC000000000000001) != 0)
        {
          v110 = MEMORY[0x1B2738A20](j, v106);
        }

        else
        {
          v110 = *(v106 + 8 * j + 32);
        }

        sub_1B1AA81A8(v110);
      }

      goto LABEL_101;
    }

    __break(1u);
LABEL_115:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();

  MEMORY[0x1B2738320](v105);
  sub_1B1B3E0D4(*((*(v3 + 152) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1B1C2CEC8();
  swift_endAccess();
LABEL_103:
  if (v31)
  {
    if (qword_1ED9A4EA8 != -1)
    {
      swift_once();
    }

    [v31 postNotificationName:qword_1ED9A4EB0 object:{v101, v111}];
    if (qword_1ED9A4DA0 != -1)
    {
      swift_once();
    }

    sub_1B1AC4DD4();
  }

  else
  {
  }
}

uint64_t sub_1B1B5CADC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = InlineStreamingAction.__allocating_init(pool:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B1B5CC54(void *a1)
{
  v1 = [a1 audioData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B1C2C2B8();

  return v3;
}

uint64_t sub_1B1B5CCB8(void *a1)
{
  v2 = [a1 wordTimingInfoList];

  if (!v2)
  {
    return 0;
  }

  sub_1B1B5CD84();
  v3 = sub_1B1C2CE78();

  return v3;
}

uint64_t sub_1B1B5CD20(void *a1)
{
  v1 = [a1 errorMessage];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B1C2CB58();

  return v3;
}

unint64_t sub_1B1B5CD84()
{
  result = qword_1EB762800;
  if (!qword_1EB762800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB762800);
  }

  return result;
}

SiriTTSService::TTSError __swiftcall TTSError.init(code:description:)(SiriTTSService::TTSError::TTSErrorCode code, Swift::String_optional description)
{
  *v2 = *code;
  *(v2 + 8) = description;
  result.description = description;
  result.code = code;
  return result;
}

void __swiftcall TTSError.nsError()(NSError *__return_ptr retstr)
{
  v2 = *v1;
  v4 = *(v1 + 1);
  v3 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C361C0;
  v6 = sub_1B1C2CB58();
  v7 = MEMORY[0x1E69E6158];
  *(inited + 32) = v6;
  *(inited + 40) = v8;
  *(inited + 72) = v7;
  if (v3)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0xE000000000000000;
  if (v3)
  {
    v10 = v3;
  }

  *(inited + 48) = v9;
  *(inited + 56) = v10;
  v11 = qword_1B1C39280[v2];

  v12 = sub_1B1C2CAB8();
  v13 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  sub_1B1B1AE5C(0x726F727245535454, 0xE800000000000000, v11, v12);
}

SiriTTSService::TTSError::TTSErrorCode_optional __swiftcall TTSError.TTSErrorCode.init(rawValue:)(Swift::Int rawValue)
{
  if (!v2 & v1)
  {
    switch(rawValue)
    {
      case 400:
        v4 = 20;
        break;
      case 401:
        v4 = 21;
        break;
      case 402:
        v4 = 22;
        break;
      case 403:
        v4 = 23;
        break;
      default:
        if (rawValue == 200)
        {
          v4 = 14;
        }

        else if (rawValue == 500)
        {
          v4 = 24;
        }

        else
        {
          v4 = 25;
        }

        break;
    }
  }

  else
  {
    v4 = 7;
    switch(rawValue)
    {
      case 'd':
        v4 = 5;
        break;
      case 'e':
        v4 = 6;
        break;
      case 'f':
        break;
      case 'g':
        v4 = 8;
        break;
      case 'h':
        v4 = 9;
        break;
      case 'i':
        v4 = 10;
        break;
      case 'j':
        v4 = 11;
        break;
      case 'k':
        v4 = 12;
        break;
      case 'l':
        v4 = 13;
        break;
      default:
        JUMPOUT(0);
    }
  }

  *v3 = v4;
  return rawValue;
}

uint64_t sub_1B1B5D094@<X0>(uint64_t *a1@<X8>)
{
  result = TTSError.TTSErrorCode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t TTSError.description.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t static TTSError.daemonConnectionError(with:)@<X0>(uint64_t a2@<X8>)
{
  sub_1B1C2D538();

  swift_getErrorValue();
  v3 = sub_1B1C2D828();
  MEMORY[0x1B27381B0](v3);

  *a2 = 3;
  *(a2 + 8) = 0xD00000000000001BLL;
  *(a2 + 16) = 0x80000001B1C4EB20;
  return result;
}

uint64_t TTSError.errorDescription.getter()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);

  MEMORY[0x1B27381B0](40, 0xE100000000000000);
  sub_1B1C2D618();
  MEMORY[0x1B27381B0](32, 0xE100000000000000);
  v3 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v3);

  MEMORY[0x1B27381B0](8250, 0xE200000000000000);
  if (v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 1819047278;
  }

  if (!v1)
  {
    v1 = 0xE400000000000000;
  }

  MEMORY[0x1B27381B0](v4, v1);

  MEMORY[0x1B27381B0](41, 0xE100000000000000);
  return 0;
}

uint64_t static TTSError.== infix(_:_:)(char *a1, char *a2)
{
  if (qword_1B1C39280[*a1] == qword_1B1C39280[*a2])
  {
    v2 = *(a1 + 2);
    v3 = *(a2 + 2);
    if (v2)
    {
      if (v3)
      {
        v4 = *(a1 + 1) == *(a2 + 1) && v2 == v3;
        if (v4 || (sub_1B1C2D7A8() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1B1B5D350()
{
  result = qword_1EB762808;
  if (!qword_1EB762808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762808);
  }

  return result;
}

uint64_t sub_1B1B5D3A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1B5D3FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTSError.TTSErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE8)
  {
    if (a2 + 24 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 24) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 25;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v5 = v6 - 25;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TTSError.TTSErrorCode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE7)
  {
    v6 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
          *result = a2 + 24;
        }

        break;
    }
  }

  return result;
}

uint64_t SynthesisRouter.Route.hashValue.getter()
{
  v1 = *v0;
  sub_1B1C2D888();
  MEMORY[0x1B2738D60](v1);
  return sub_1B1C2D8E8();
}

unint64_t sub_1B1B5D65C()
{
  result = qword_1EB762810;
  if (!qword_1EB762810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762810);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SynthesisRouter(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SynthesisRouter.Route(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SynthesisRouter.Route(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t DirectedAcyclicGraph.traverse(startNode:nextNode:)(void (**a1)(char *, uint64_t), void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v131 = a3;
  v130 = a2;
  v152 = a1;
  v138 = a4;
  v5 = *(a4 + 16);
  OUTLINED_FUNCTION_35_1();
  v151 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B1C2D2B8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_35_1();
  v149 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_2_24();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_24();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v121 - v15;
  OUTLINED_FUNCTION_35_1();
  v157 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_2_24();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_24();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_24();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_24();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_24();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_24();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_7_1();
  v150 = v25;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_7_1();
  v140 = v27;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_7_1();
  v146 = v29;
  OUTLINED_FUNCTION_16_0();
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v121 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v121 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v153 = &v121 - v37;
  v38 = *v4;
  v147 = v4[1];
  v160 = v38;
  OUTLINED_FUNCTION_17_13();
  v39 = sub_1B1C2CEF8();
  OUTLINED_FUNCTION_1_23();
  WitnessTable = swift_getWitnessTable();
  result = sub_1B1C2CFD8();
  if (result)
  {
    return result;
  }

  v155 = *(v157 + 16);
  v156 = v157 + 16;
  (v155)(v36, v152, v10);
  OUTLINED_FUNCTION_0_22(v36);
  if (v58)
  {
    v160 = v38;
    sub_1B1C2CFC8();
    OUTLINED_FUNCTION_0_22(v36);
    v42 = v157;
    if (!v58)
    {
      (*(v157 + 8))(v36, v10);
    }
  }

  else
  {
    v41 = v153;
    (*(v151 + 4))(v153, v36, v5);
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v5);
    v42 = v157;
  }

  OUTLINED_FUNCTION_17_13();
  v43 = sub_1B1C2CEA8();
  v152 = (v42 + 8);
  v160 = v43;
  v144 = v147 + 32;
  v137 = (v151 + 32);
  v142 = (v149 + 8);
  v143 = (v151 + 8);
  v127 = (v42 + 32);
  v141 = v16;
  v44 = v150;
  v128 = v33;
  v145 = v39;
  v148 = v38;
  v134 = v10;
  while (2)
  {
    v45 = v128;
    v155();
    if (__swift_getEnumTagSinglePayload(v45, 1, v5) == 1)
    {
      v117 = *v152;
      (*v152)(v153, v10);
      v118 = OUTLINED_FUNCTION_10_17();
      (v117)(v118);
    }

    v46 = OUTLINED_FUNCTION_10_17();
    v151 = v47;
    v47(v46);
    OUTLINED_FUNCTION_17_13();
    result = sub_1B1C2CEA8();
    v48 = 0;
    v159 = result;
    v149 = *(v147 + 16);
LABEL_9:
    v49 = v146;
    v50 = TupleTypeMetadata2;
    while (v48 != v149)
    {
      if (v48 >= *(v147 + 16))
      {
        __break(1u);
        goto LABEL_63;
      }

      v51 = *(v144 + 8 * v48);
      v157 = v48 + 1;

      sub_1B1C2CF08();
      __swift_storeEnumTagSinglePayload(v49, 0, 1, v5);
      v52 = *(v50 + 48);
      v53 = v10;
      v54 = v10;
      v55 = v155;
      v10 = v156;
      (v155)(v16, v49, v53);
      (v55)(&v16[v52], v153, v54);
      OUTLINED_FUNCTION_0_22(v16);
      if (v58)
      {
        v56 = v151;
        (v151)(v49, v54);
        OUTLINED_FUNCTION_0_22(&v16[v52]);
        if (v58)
        {
          v56(v16, v54);
          v10 = v54;
          goto LABEL_22;
        }

        v10 = v54;
LABEL_20:
        v50 = TupleTypeMetadata2;
        result = (*v142)(v16, TupleTypeMetadata2);
        v48 = v157;
        v44 = v150;
      }

      else
      {
        v57 = v140;
        (v55)(v140, v16, v54);
        OUTLINED_FUNCTION_0_22(&v16[v52]);
        if (v58)
        {

          v59 = v146;
          OUTLINED_FUNCTION_14_13();
          v60();
          v61 = v57;
          v49 = v59;
          (*v143)(v61, v5);
          OUTLINED_FUNCTION_13_16();
          goto LABEL_20;
        }

        v62 = OUTLINED_FUNCTION_9_17();
        v63(v62);
        OUTLINED_FUNCTION_11_12();
        v139 = OUTLINED_FUNCTION_15_12(v57, v64, v65, v66);
        v10 = v143;
        v67 = *v143;
        (*v143)(v9, v5);
        v68 = v151;
        (v151)(v146, v54);
        (v67)(v57, v5);
        v16 = v141;
        v68(v141, v54);
        OUTLINED_FUNCTION_13_16();
        if ((v139 & 1) == 0)
        {

          v48 = v157;
          v44 = v150;
          goto LABEL_9;
        }

LABEL_22:
        v69 = v10;
        v70 = *(v51 + 16);
        if (v70)
        {
          v71 = 32;
          do
          {
            sub_1B1C2CF08();
            sub_1B1C2CEE8();
            v71 += 8;
            --v70;
          }

          while (v70);

          v48 = v157;
          v10 = v69;
          v50 = TupleTypeMetadata2;
          v16 = v141;
        }

        else
        {

          v48 = v157;
          v10 = v69;
          v50 = TupleTypeMetadata2;
        }

        v44 = v150;
        v49 = v146;
      }
    }

    v72 = v160;
    v158 = v160;
    if (sub_1B1C2CFD8())
    {
      __swift_storeEnumTagSinglePayload(v44, 1, 1, v5);
    }

    else
    {
      v158 = v72;
      OUTLINED_FUNCTION_6_16();
      swift_getWitnessTable();
      sub_1B1C2CAF8();
    }

    v73 = v132;
    v74 = v72;
    (v155)(v132, v153, v10);
    result = OUTLINED_FUNCTION_0_22(v73);
    if (v58)
    {
LABEL_63:
      __break(1u);
      break;
    }

    v75 = v73;
    v76 = v150;
    v157 = v159;
    v77 = v135;
    v130(v73, v150);
    v135 = v77;
    if (v77)
    {
      v119 = v151;
      (v151)(v76, v10);
      v120 = OUTLINED_FUNCTION_10_17();
      v119(v120);

      return (*v143)(v75, v5);
    }

    v149 = *v143;
    (v149)(v73, v5);
    v78 = v155;
    v79 = *(TupleTypeMetadata2 + 48);
    v80 = v129;
    OUTLINED_FUNCTION_18_5();
    v78();
    (v78)(v80 + v79, v76, v74);
    OUTLINED_FUNCTION_0_22(v80);
    if (v58)
    {
      OUTLINED_FUNCTION_0_22(v80 + v79);
      if (v58)
      {
        v10 = v74;
        OUTLINED_FUNCTION_14_13();
        v81();
        goto LABEL_55;
      }

      goto LABEL_42;
    }

    v82 = v124;
    (v78)(v124, v80, v74);
    OUTLINED_FUNCTION_0_22(v80 + v79);
    if (v83)
    {
      (v149)(v82, v5);
LABEL_42:
      (*v142)(v80, TupleTypeMetadata2);
      goto LABEL_43;
    }

    (*v137)(v9, v80 + v79, v5);
    OUTLINED_FUNCTION_11_12();
    v97 = OUTLINED_FUNCTION_15_12(v82, v94, v95, v96);
    v98 = v149;
    (v149)(v9, v5);
    v98(v82, v5);
    OUTLINED_FUNCTION_14_13();
    v99();
    v10 = v74;
    if (v97)
    {
LABEL_55:

      OUTLINED_FUNCTION_6_16();
      v100 = v145;
      v44 = swift_getWitnessTable();
      v101 = swift_getWitnessTable();
      v102 = v123;
      MEMORY[0x1B27384E0](v100, v44, v101);
      v103 = v102;
      v104 = v151;
      (v151)(v103, v10);
      v105 = OUTLINED_FUNCTION_12_11();
      v104(v105);
      v91 = v153;
      v106 = OUTLINED_FUNCTION_10_17();
      v104(v106);
      v16 = v141;
      goto LABEL_58;
    }

LABEL_43:
    v84 = v155;
    v85 = *(TupleTypeMetadata2 + 48);
    v86 = v126;
    OUTLINED_FUNCTION_18_5();
    v84();
    (v84)(v86 + v85, v153, v74);
    OUTLINED_FUNCTION_0_22(v86);
    if (v58)
    {
      OUTLINED_FUNCTION_0_22(v86 + v85);
      v44 = v125;
      if (v58)
      {
        OUTLINED_FUNCTION_14_13();
        v87();
        v16 = v141;
LABEL_57:
        v115 = OUTLINED_FUNCTION_12_11();
        v116 = v151;
        v151(v115);
        v91 = v153;
        v116(v153, v134);
        v10 = v134;

        goto LABEL_58;
      }

      goto LABEL_51;
    }

    v88 = v122;
    (v84)(v122, v86, v74);
    OUTLINED_FUNCTION_0_22(v86 + v85);
    v90 = v88;
    v44 = v125;
    if (v89)
    {
      (v149)(v90, v5);
LABEL_51:
      (*v142)(v86, TupleTypeMetadata2);
      v16 = v141;
      v113 = v74;
      goto LABEL_52;
    }

    v107 = OUTLINED_FUNCTION_9_17();
    v108(v107);
    OUTLINED_FUNCTION_11_12();
    v112 = OUTLINED_FUNCTION_15_12(v90, v109, v110, v111);
    v113 = v149;
    (v149)(v9, v5);
    v113(v90, v5);
    OUTLINED_FUNCTION_14_13();
    v114();
    v16 = v141;
    OUTLINED_FUNCTION_13_16();
    if (v112)
    {
      goto LABEL_57;
    }

LABEL_52:
    v91 = v153;
    (v155)(v44, v153, v113);
    result = OUTLINED_FUNCTION_0_22(v44);
    if (!v58)
    {

      sub_1B1C2CEE8();
      v92 = OUTLINED_FUNCTION_12_11();
      v93 = v151;
      v151(v92);
      v93(v91, v134);
      v10 = v134;
LABEL_58:
      (*v127)(v91, v136, v10);
      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B5E698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1B1B5E6F8(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1B1C2CE08();
  }

  __break(1u);
  return result;
}

void sub_1B1B5E780(unint64_t a1, unint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762320, &unk_1B1C39760);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v147 = &v137 - v7;
  if (sub_1B1C2CDA8())
  {

    return;
  }

  v140 = v2;
  OUTLINED_FUNCTION_1_24();
  v154 = 0x3E6B616570733CLL;
  v155 = 0xE700000000000000;
  v8 = HIBYTE(a2) & 0xF;
  v148 = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v156 = a1;
  v9 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v9 = 11;
  }

  v143 = v9 | (v8 << 16);
  v144 = 4 * v8;
  v139 = 0x80000001B1C4EC20;
  v142 = "Unbalanced phoneme tag";
  v10 = &unk_1F28BB6F8;
  v11 = 15;
  while (1)
  {
    v12 = v11 >> 14;
    if (v11 >> 14 >= v144)
    {
      OUTLINED_FUNCTION_11_13();
      goto LABEL_85;
    }

    v13 = v10;
    a2 = v156;
    v3 = v148;
    v149[0] = v156;
    v149[1] = v148;
    v152 = 27;
    v153 = 0xE100000000000000;
    v14 = sub_1B1C2C4D8();
    v15 = v147;
    v145 = v14;
    __swift_storeEnumTagSinglePayload(v147, 1, 1, v14);
    v146 = sub_1B1A8EDAC();
    v16 = v143;
    v17 = sub_1B1C2D3C8();
    v19 = v18;
    sub_1B1A90C78(v15, &qword_1EB762320, &unk_1B1C39760);
    if (v19)
    {
      v20 = v16;
    }

    else
    {
      v20 = v17;
    }

    if (v12 > v20 >> 14)
    {
      goto LABEL_102;
    }

    v21 = v17;
    v22 = sub_1B1C2CE08();
    MEMORY[0x1B2738180](v22);

    v10 = v13;
    if (v19)
    {
      break;
    }

    v3 = sub_1B1B5E6F8(v17, a2, v3);
    v24 = v23;
    v26 = v25;
    v28 = v27;
    OUTLINED_FUNCTION_3_18();
    if (sub_1B1B5FF00(v29, v30, v31, v32, v33, v34))
    {

      MEMORY[0x1B27381B0](0xD00000000000001CLL, v142 | 0x8000000000000000);
      sub_1B1C2CC68();
      v11 = sub_1B1C2CCA8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_25_5();
        v10 = v115;
      }

      OUTLINED_FUNCTION_1_24();
      v35 = v10[2];
      if (v35 >= v10[3] >> 1)
      {
        OUTLINED_FUNCTION_23_9();
        v10 = v116;
      }

      v10[2] = v35 + 1;
      v36 = &v10[2 * v35];
      *(v36 + 4) = v3;
      *(v36 + 5) = 0xE700000000000000;
    }

    else
    {
      OUTLINED_FUNCTION_10_18();
      OUTLINED_FUNCTION_3_18();
      if (sub_1B1B5FF00(v37, v38, v39, v40, v41, v42))
      {

        v43 = (v13 + 16);
        OUTLINED_FUNCTION_1_24();
        if (!v44 || ((v45 = &v43[2 * v44], *v45 == v3) ? (v46 = v45[1] == 0xE700000000000000) : (v46 = 0), !v46 && (sub_1B1C2D7A8() & 1) == 0))
        {
          v129 = v155;

          OUTLINED_FUNCTION_29_5();
          v131 = v130 + 16;
LABEL_100:
          sub_1B1A9EC9C();
          swift_allocError();
          *v136 = 1;
          *(v136 + 8) = v131;
          *(v136 + 16) = v129;
          swift_willThrow();
          return;
        }

        MEMORY[0x1B27381B0](0x6E6F68702F3C3E22, 0xEC0000003E656D65);
        OUTLINED_FUNCTION_10_18();
        sub_1B1C2CC68();
        v47 = sub_1B1C2CCA8();
        if (!*v43)
        {
          goto LABEL_103;
        }

        v11 = v47;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B1C00CB4();
          v10 = v117;
        }

        v48 = v10[2];
        if (!v48)
        {
          goto LABEL_104;
        }

        OUTLINED_FUNCTION_14_14(v48);
      }

      else
      {
        OUTLINED_FUNCTION_9_18();
        OUTLINED_FUNCTION_3_18();
        if (sub_1B1B5FF00(v49, v50, v51, v52, v53, v54))
        {

          sub_1B1B77ADC(v13);
          OUTLINED_FUNCTION_1_24();
          a2 = v148;
          if (!v55)
          {
            goto LABEL_98;
          }

          OUTLINED_FUNCTION_34_5();
          if (v46 && v56 == 0xE600000000000000)
          {
          }

          else
          {
            v58 = sub_1B1C2D7A8();

            if ((v58 & 1) == 0)
            {
LABEL_98:
              v129 = v155;

              OUTLINED_FUNCTION_29_5();
              v131 = v132 + 15;
              goto LABEL_100;
            }
          }

          OUTLINED_FUNCTION_15_13();
          if (!*(v13 + 16))
          {
            goto LABEL_105;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B1C00CB4();
            v10 = v118;
          }

          v91 = v10[2];
          if (!v91)
          {
            goto LABEL_106;
          }

          OUTLINED_FUNCTION_14_14(v91);
          OUTLINED_FUNCTION_9_18();
          sub_1B1C2CC68();
          v11 = sub_1B1C2CCA8();
        }

        else
        {
          OUTLINED_FUNCTION_28_4();
          OUTLINED_FUNCTION_6_17();
          v63 = sub_1B1B5FF00(v59, v60, v61, v62, v26, v28);
          v141 = v26;
          if (v63)
          {
            sub_1B1B77ADC(v13);
            if (!v64)
            {
              goto LABEL_47;
            }

            OUTLINED_FUNCTION_34_5();
            if (v46 && v65 == 0xE600000000000000)
            {
            }

            else
            {
              v67 = sub_1B1C2D7A8();

              if ((v67 & 1) == 0)
              {
LABEL_47:
                v68 = v141;
                goto LABEL_69;
              }
            }

            OUTLINED_FUNCTION_15_13();
            if (!*(v13 + 16))
            {
              goto LABEL_111;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1B1C00CB4();
              v10 = v121;
            }

            v68 = v141;
            v96 = v10[2];
            if (!v96)
            {
              goto LABEL_112;
            }

            OUTLINED_FUNCTION_14_14(v96);
LABEL_69:
            OUTLINED_FUNCTION_28_4();
            sub_1B1C2CC68();
            OUTLINED_FUNCTION_3_18();
            sub_1B1C2D2F8();
            v149[0] = v3;
            v149[1] = v24;
            v150 = v68;
            v151 = v28;
            OUTLINED_FUNCTION_16_15();
            if (!v46 & v75)
            {
              goto LABEL_107;
            }

            v99 = v97;
            v138 = v98;
            a2 = v147;
            v100 = OUTLINED_FUNCTION_19_7();
            __swift_storeEnumTagSinglePayload(v100, v101, v102, v145);
            sub_1B1B600C4();
            OUTLINED_FUNCTION_7_15();
            v103 = sub_1B1C2D3C8();
            v105 = OUTLINED_FUNCTION_21_9(v103, v104);
            sub_1B1A90C78(v105, &qword_1EB762320, &unk_1B1C39760);
            if (v99)
            {

              if (qword_1ED9A9288 != -1)
              {
                OUTLINED_FUNCTION_0_0();
                swift_once();
              }

              v106 = sub_1B1C2C8A8();
              OUTLINED_FUNCTION_12_1(v106, qword_1ED9A9120);
              v84 = sub_1B1C2C888();
              v107 = sub_1B1C2D0D8();
              os_log_type_enabled(v84, v107);
              OUTLINED_FUNCTION_1_24();
              if (v108)
              {
                v87 = swift_slowAlloc();
                *v87 = 0;
                v88 = v107;
                v89 = v84;
                v90 = "Error in tn override tag, ignore";
                goto LABEL_75;
              }

              goto LABEL_76;
            }

            if (v138 > v68 >> 14)
            {
              goto LABEL_109;
            }

            a2 = v21;
            OUTLINED_FUNCTION_6_17();
            OUTLINED_FUNCTION_31_5();
            v109 = sub_1B1C2D348();
            v149[0] = 0xD000000000000016;
            v149[1] = v139;
            v110 = MEMORY[0x1B27380D0](v109);
            v112 = v111;

            MEMORY[0x1B27381B0](v110, v112);

            MEMORY[0x1B27381B0](15906, 0xE200000000000000);
            MEMORY[0x1B27381B0](v149[0], v149[1]);

            OUTLINED_FUNCTION_6_17();
            OUTLINED_FUNCTION_31_5();
            sub_1B1C2D318();

            v11 = OUTLINED_FUNCTION_36_6();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_25_5();
              v10 = v119;
            }

            OUTLINED_FUNCTION_1_24();
            v113 = v10[2];
            if (v113 >= v10[3] >> 1)
            {
              OUTLINED_FUNCTION_23_9();
              v10 = v120;
            }

            v10[2] = v113 + 1;
            v114 = &v10[2 * v113];
            *(v114 + 4) = 0x73612D796173;
            *(v114 + 5) = 0xE600000000000000;
          }

          else
          {
            OUTLINED_FUNCTION_6_17();
            if ((sub_1B1B5FF00(v69, v70, v71, v72, v26, v28) & 1) == 0)
            {

              v149[0] = 0xD000000000000021;
              v149[1] = 0x80000001B1C4EBF0;
              v133 = MEMORY[0x1B27380D0](v3, v24, v26, v28);
              v135 = v134;

              MEMORY[0x1B27381B0](v133, v135);

              v131 = v149[0];
              v129 = v149[1];
              goto LABEL_100;
            }

            sub_1B1C2CC68();
            OUTLINED_FUNCTION_6_17();
            sub_1B1C2D2F8();
            v149[0] = v3;
            v149[1] = v24;
            v150 = v26;
            v151 = v28;
            OUTLINED_FUNCTION_16_15();
            if (!v46 & v75)
            {
              goto LABEL_108;
            }

            v76 = v73;
            v138 = v74;
            a2 = v147;
            v77 = OUTLINED_FUNCTION_19_7();
            __swift_storeEnumTagSinglePayload(v77, v78, v79, v145);
            sub_1B1B600C4();
            OUTLINED_FUNCTION_7_15();
            v80 = sub_1B1C2D3C8();
            v82 = OUTLINED_FUNCTION_21_9(v80, v81);
            sub_1B1A90C78(v82, &qword_1EB762320, &unk_1B1C39760);
            if (v76)
            {

              if (qword_1ED9A9288 != -1)
              {
                OUTLINED_FUNCTION_0_0();
                swift_once();
              }

              v83 = sub_1B1C2C8A8();
              OUTLINED_FUNCTION_12_1(v83, qword_1ED9A9120);
              v84 = sub_1B1C2C888();
              v85 = sub_1B1C2D0D8();
              os_log_type_enabled(v84, v85);
              OUTLINED_FUNCTION_1_24();
              if (v86)
              {
                v87 = swift_slowAlloc();
                *v87 = 0;
                v88 = v85;
                v89 = v84;
                v90 = "Error in pause tag, ignore";
LABEL_75:
                _os_log_impl(&dword_1B1A8A000, v89, v88, v90, v87, 2u);
                OUTLINED_FUNCTION_14();
                MEMORY[0x1B2739FD0]();
              }

LABEL_76:

              v11 = v21;
            }

            else
            {
              if (v138 > 0xF595CDD585C1)
              {
                goto LABEL_110;
              }

              a2 = v21;
              OUTLINED_FUNCTION_6_17();
              OUTLINED_FUNCTION_31_5();
              v92 = sub_1B1C2D348();
              strcpy(v149, "<break time=");
              HIWORD(v149[1]) = -4864;
              v93 = MEMORY[0x1B27380D0](v92);
              v95 = v94;

              MEMORY[0x1B27381B0](v93, v95);

              MEMORY[0x1B27381B0](0x3E2F22736DLL, 0xE500000000000000);
              MEMORY[0x1B27381B0](v149[0], v149[1]);

              OUTLINED_FUNCTION_6_17();
              OUTLINED_FUNCTION_31_5();
              sub_1B1C2D318();

              v11 = OUTLINED_FUNCTION_36_6();
              OUTLINED_FUNCTION_1_24();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_11_13();
  OUTLINED_FUNCTION_1_24();
  while (1)
  {
LABEL_85:
    if (!v10[2])
    {

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B1C00CB4();
      v10 = v128;
    }

    v122 = v10[2];
    if (!v122)
    {
      break;
    }

    v123 = v122 - 1;
    v124 = &v10[2 * v123];
    v126 = *(v124 + 4);
    v125 = *(v124 + 5);
    v10[2] = v123;
    v127 = v126 == v3 && v125 == 0xE700000000000000;
    if (v127 || (sub_1B1C2D7A8() & 1) != 0)
    {

      MEMORY[0x1B27381B0](v12, a2);
    }

    else
    {
      v149[0] = 12092;
      v149[1] = 0xE200000000000000;
      MEMORY[0x1B27381B0](v126, v125);

      MEMORY[0x1B27381B0](62, 0xE100000000000000);
      MEMORY[0x1B27381B0](v149[0], v149[1]);
    }
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
}

uint64_t sub_1B1B5F378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B1C2D318();
  sub_1B1C2CC68();
  MEMORY[0x1B27380D0](15, 7, 0, 0xE000000000000000);
  sub_1B1C2CCC8();
  v6 = sub_1B1C2D338();
  MEMORY[0x1B27380D0](v6);

  sub_1B1B3B7CC();
  sub_1B1C2CCC8();
  return sub_1B1C2D338();
}

uint64_t RequestPreprocessAction.deinit()
{
  v0 = Buffer.deinit();

  return v0;
}

uint64_t sub_1B1B5F494@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = RequestPreprocessAction.__allocating_init(pool:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B1B5F4BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1B1C2D7A8();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1B1B5F584(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1B1C2D7A8();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1B1C2D7A8()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_1B1C2D7A8() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B1B04838();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1B1B04838();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1B1B5FBB8((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_1B1B5FA8C(&v91, *a1, a3);
LABEL_102:
}

uint64_t sub_1B1B5FA8C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1B1BDD728(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1B1B5FBB8((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1B1B5FBB8(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1B1AC9DF0(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1B1C2D7A8() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_1B1AC9DF0(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_1B1C2D7A8() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

BOOL sub_1B1B5FD5C(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1;
  }

  v8 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v8 = 11;
  }

  v9 = v8 | (v7 << 16);
  while (1)
  {
    v11 = ((a4 ^ a3) & 0xFFFFFFFFFFFFC000) != 0;
    if ((a4 ^ a3) < 0x4000)
    {
      break;
    }

    a4 = sub_1B1C2D2D8();
    v12 = sub_1B1C2D328();
    v14 = v13;
    if (v9 < 0x4000)
    {
      goto LABEL_18;
    }

    v15 = v12;
    v9 = sub_1B1C2CC88();
    if (v15 == sub_1B1C2CDD8() && v14 == v16)
    {
    }

    else
    {
      v18 = sub_1B1C2D7A8();

      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (v9 >= 0x4000)
  {
    sub_1B1C2CC88();
    sub_1B1C2CDD8();
LABEL_18:

    return v11;
  }

  return 1;
}

uint64_t sub_1B1B5FF00(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{

  v8 = a3;
  while ((v8 ^ a4) >= 0x4000)
  {
    v9 = sub_1B1C2D328();
    v11 = v10;
    v8 = sub_1B1C2D2C8();
    v12 = sub_1B1C2CD08();
    if (!v13)
    {

      return 1;
    }

    if (v9 == v12 && v13 == v11)
    {
    }

    else
    {
      v15 = sub_1B1C2D7A8();

      if ((v15 & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  sub_1B1C2CD08();
  v17 = v16;

  if (!v17)
  {
    return 1;
  }

LABEL_15:

  return 0;
}

unint64_t sub_1B1B600C4()
{
  result = qword_1EB762820;
  if (!qword_1EB762820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762820);
  }

  return result;
}

id sub_1B1B6011C(uint64_t a1)
{
  v2 = v1;
  v29 = sub_1B1C2C0A8();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  v10 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16();
  v16 = v15 - v14;
  v17 = &v1[OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_lazyAssetType];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = (v17 + 8);
  sub_1B1A8E474(0, &qword_1ED9A9810, 0x1E696AAE8);
  (*(v12 + 16))(v16, a1, v10);
  v19 = sub_1B1AB30DC(v16);
  if (v19)
  {
    v20 = v19;
    v28 = v12;
    v21 = v2;
    *&v2[OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_root] = v19;
    OUTLINED_FUNCTION_37_5();
    *&v32 = v22;
    *(&v32 + 1) = 0xE900000000000061;
    (*(v5 + 104))(v9, *MEMORY[0x1E6968F58], v29);
    sub_1B1A8EDAC();
    v23 = v20;
    sub_1B1C2C1B8();
    (*(v5 + 8))(v9, v29);
    v24 = sub_1B1AB30DC(v16);
    if (!v24)
    {
      v24 = v23;
    }

    *&v21[OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_asset] = v24;
    if (sub_1B1AB5B4C(v23))
    {
      OUTLINED_FUNCTION_29_6("MobileAssetProperties");

      if (*(&v33 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C30, &unk_1B1C38180);
        if (swift_dynamicCast())
        {
          v25 = v30;
LABEL_12:

          *&v21[OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_attr] = v25;
          v31.receiver = v21;
          v31.super_class = type metadata accessor for TTSAssetStaticVoice();
          v26 = objc_msgSendSuper2(&v31, sel_init);
          (*(v28 + 8))(a1, v10);
          return v26;
        }

LABEL_11:
        v25 = sub_1B1C2CAB8();
        goto LABEL_12;
      }
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
    }

    sub_1B1A90C78(&v32, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_11;
  }

  (*(v12 + 8))(a1, v10);
  sub_1B1A90C78(v18, &qword_1EB762860, &qword_1B1C39548);
  type metadata accessor for TTSAssetStaticVoice();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_1B1B604E8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  if (!*a1)
  {
    v7 = [*(a2 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_asset) bundleIdentifier];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1B1C2CB58();
      v11 = v10;

LABEL_12:
      sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
      v15 = sub_1B1AAFB2C(v9, v11);
      *a1 = v15;
      *a3 = v15;
      v16 = v15;
      v4 = 0;
      return v4;
    }

    v12 = [*(a2 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_root) infoDictionary];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1B1C2CA98();

      sub_1B1A93AEC(0xD000000000000012, 0x80000001B1C4EF80, v14);

      if (*(&v21 + 1))
      {
        if (swift_dynamicCast())
        {
          v9 = v18;
          v11 = v19;
          goto LABEL_12;
        }

LABEL_11:
        v9 = 0;
        v11 = 0xE000000000000000;
        goto LABEL_12;
      }
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    sub_1B1A90C78(&v20, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_11;
  }

  *a3 = v4;
  return v4;
}

uint64_t sub_1B1B607B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_attr);
  sub_1B1A93AEC(0x64496563696F56, 0xE700000000000000, v1);
  if (v92)
  {
    v2 = MEMORY[0x1E69E6158];
    if (swift_dynamicCast())
    {
      v3 = sub_1B1AECD40();
      if (qword_1ED9A98B8 != -1)
      {
        OUTLINED_FUNCTION_13_14(&qword_1ED9A98B8);
      }

      v4 = qword_1ED9A98C0;
      sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
      v5 = v4;
      v6 = sub_1B1C2D248();

      if ((v6 & 1) == 0)
      {
        strcpy(v89, "speech.voice");
        v30 = sub_1B1A8EDAC();
        OUTLINED_FUNCTION_15_5(v30, v31, v32, v33, v34, v35, v36, v37, v87, v88, v30, v30, 0xD000000000000016, 0x80000001B1C4DDF0, v89[0]);
        OUTLINED_FUNCTION_4();
        v38 = sub_1B1C2D398();
        v40 = v39;

        v90 = v38;
        v91 = v40;
        v89[1] = 0xE900000000000065;
        OUTLINED_FUNCTION_15_5(v41, v42, v43, v44, v45, v46, v47, v48, v2, v30, v30, v30, 0xD000000000000016, 0x80000001B1C4DDF0, 116);
        OUTLINED_FUNCTION_4();
        sub_1B1C2D398();

        return OUTLINED_FUNCTION_43_0();
      }
    }
  }

  else
  {
    sub_1B1A90C78(&v90, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  v7 = sub_1B1AECD40();
  v8 = qword_1ED9A9978;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED9A9980;
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  v11 = v10;
  v12 = sub_1B1C2D248();

  if (v12)
  {
    goto LABEL_14;
  }

  v13 = qword_1ED9A98D0;
  v14 = v9;
  if (v13 != -1)
  {
    OUTLINED_FUNCTION_23_0(&qword_1ED9A98D0);
  }

  v12 = qword_1ED9A98D8;
  v15 = sub_1B1C2D248();

  if (v15)
  {
LABEL_14:

    v16 = 0x80000001B1C4B5A0;
    type metadata accessor for TTSAsset();
    sub_1B1AED674();
    v17 = sub_1B1C2CBE8();
    v19 = v18;

    sub_1B1B19BF8(v17);
    OUTLINED_FUNCTION_36_7();

    sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
    v20 = sub_1B1AEEC94();
    if (qword_1ED9A97D8 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_1ED9A97D8);
    }

    v21 = OUTLINED_FUNCTION_42_6(qword_1ED9A9830);

    if (v21)
    {
      v22 = 0x746361706D6F632ELL;
    }

    else
    {
      v22 = 0x6D75696D6572702ELL;
    }

    v23 = 0xD00000000000002DLL;
  }

  else
  {
    v26 = qword_1ED9A98A8;
    v27 = v14;
    if (v26 != -1)
    {
      OUTLINED_FUNCTION_21(&qword_1ED9A98A8);
    }

    v17 = qword_1ED9A98B0;
    v12 = sub_1B1C2D248();

    if (v12)
    {

      v16 = 0x80000001B1C4B570;
      sub_1B1AED674();
      OUTLINED_FUNCTION_36_7();
      sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
      v28 = sub_1B1AEEC94();
      if (qword_1ED9A97D8 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_1ED9A97D8);
      }

      v23 = 0xD000000000000021;
      v29 = OUTLINED_FUNCTION_42_6(qword_1ED9A9830);

      if (v29)
      {
        v22 = 0x746361706D6F632ELL;
      }

      else
      {
        v22 = 0;
      }

      if (v29)
      {
        v24 = 0xE800000000000000;
      }

      else
      {
        v24 = 0xE000000000000000;
      }

      goto LABEL_21;
    }

    v49 = qword_1ED9A9850;
    v50 = v27;
    if (v49 != -1)
    {
      swift_once();
    }

    v17 = MEMORY[0x1E69E6158];
    v12 = qword_1ED9A97E0;
    v51 = sub_1B1C2D248();

    if (v51)
    {
    }

    else
    {
      if (qword_1ED9A98B8 != -1)
      {
        OUTLINED_FUNCTION_13_14(&qword_1ED9A98B8);
      }

      v12 = qword_1ED9A98C0;
      v52 = sub_1B1C2D248();

      if ((v52 & 1) == 0)
      {
        v71 = sub_1B1AECD40();
        v72 = [v71 string];

        v73 = sub_1B1C2CB58();
        v12 = v74;

        v90 = v73;
        v91 = v12;

        MEMORY[0x1B27381B0](46, 0xE100000000000000);

        v23 = v90;
        v16 = v91;
        v90 = sub_1B1AED674();
        v91 = v75;
        v89[1] = 0xE100000000000000;
        v76 = sub_1B1A8EDAC();
        OUTLINED_FUNCTION_15_5(v76, v77, v78, v79, v80, v81, v82, v83, v87, v88, v76, v76, 0, 0xE000000000000000, 45);
        OUTLINED_FUNCTION_4();
        sub_1B1C2D398();
        OUTLINED_FUNCTION_36_7();

        v84 = OUTLINED_FUNCTION_40_4();
        sub_1B1A93AEC(v84, v85 + 15, v1);
        if (v92)
        {
          if (swift_dynamicCast())
          {
            v90 = 46;
            v91 = 0xE100000000000000;
            MEMORY[0x1B27381B0](v89[0], v89[1]);

            v22 = v90;
            v24 = v91;
            goto LABEL_21;
          }
        }

        else
        {
          sub_1B1A90C78(&v90, &qword_1EB761DE0, &qword_1B1C352C0);
        }

        v22 = 0;
        v24 = 0xE000000000000000;
        goto LABEL_21;
      }
    }

    v16 = 0x80000001B1C4B570;
    v90 = sub_1B1AED674();
    v91 = v53;
    v89[1] = 0xE100000000000000;
    v54 = sub_1B1A8EDAC();
    OUTLINED_FUNCTION_15_5(v54, v55, v56, v57, v58, v59, v60, v61, v87, v88, v54, v54, 0, 0xE000000000000000, 45);
    OUTLINED_FUNCTION_4();
    sub_1B1C2D398();

    sub_1B1C2CBE8();
    OUTLINED_FUNCTION_36_7();

    v62 = sub_1B1AEEC94();
    v63 = qword_1ED9A97D8;
    v64 = v62;
    if (v63 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_1ED9A97D8);
    }

    v23 = 0xD000000000000021;
    v65 = qword_1ED9A9830;
    sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
    v66 = v65;
    v67 = sub_1B1C2D248();

    if (v67)
    {
      v22 = 0x746361706D6F632ELL;
    }

    else
    {
      v68 = qword_1ED9A9100;
      v64 = v64;
      if (v68 != -1)
      {
        OUTLINED_FUNCTION_2_0(&qword_1ED9A9100);
      }

      v22 = 0x6D75696D6572702ELL;
      v69 = qword_1ED9A90A8;
      v70 = sub_1B1C2D248();

      if ((v70 & 1) == 0)
      {
        if (qword_1ED9A9628 != -1)
        {
          OUTLINED_FUNCTION_14_0(&qword_1ED9A9628);
        }

        v86 = qword_1ED9A9598;
        sub_1B1C2D248();

        goto LABEL_20;
      }
    }
  }

LABEL_20:
  v24 = 0xE800000000000000;
LABEL_21:
  v90 = v23;
  v91 = v16;

  MEMORY[0x1B27381B0](v12, v17);

  MEMORY[0x1B27381B0](v22, v24);

  return OUTLINED_FUNCTION_43_0();
}

unint64_t sub_1B1B610B4(uint64_t a1, uint64_t a2)
{
  sub_1B1A93AEC(a1, a2, *&v2[OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_attr]);
  v13 = OUTLINED_FUNCTION_35_0(v5, v6, v7, v8, v9, v10, v11, v12, v93, v97, v100, v101, v102, v103, v104[0]);
  v15 = sub_1B1A9D80C(v13, v14);
  if (v103)
  {
    v23 = MEMORY[0x1E69E6530];
    OUTLINED_FUNCTION_17_15(v15, v16, v17, v18, v19, v20, v21, v22, v94);
    v24 = swift_dynamicCast();
    if (v24)
    {
      v32 = v94;
      if (v94 <= 19999)
      {
        sub_1B1A90C78(v104, &qword_1EB761DE0, &qword_1B1C352C0);
        return v32;
      }

      v60 = sub_1B1C2D0C8();
      if (qword_1ED9A99C0 != -1)
      {
        OUTLINED_FUNCTION_0_13(&qword_1ED9A99C0);
      }

      v61 = qword_1ED9AA670;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_1B1C364D0;
      v63 = MEMORY[0x1E69E65A8];
      *(v62 + 56) = v23;
      *(v62 + 64) = v63;
      *(v62 + 32) = v94;
      v64 = MEMORY[0x1E69E6158];
      *(v62 + 96) = MEMORY[0x1E69E6158];
      v65 = sub_1B1AC9204();
      *(v62 + 104) = v65;
      *(v62 + 72) = a1;
      *(v62 + 80) = a2;

      v66 = [v2 description];
      v67 = sub_1B1C2CB58();
      v69 = v68;

      *(v62 + 136) = v64;
      *(v62 + 144) = v65;
      *(v62 + 112) = v67;
      *(v62 + 120) = v69;
      sub_1B1C2C7C8(v60, &dword_1B1A8A000, v61, "Preposterous integer version %d for key %{public}@ in %@", 56, 2, v62);
      goto LABEL_90;
    }
  }

  else
  {
    v24 = sub_1B1A90C78(&v100, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  v33 = OUTLINED_FUNCTION_35_0(v24, v25, v26, v27, v28, v29, v30, v31, v94, v98, v100, v101, v102, v103, v104[0]);
  v35 = sub_1B1A9D80C(v33, v34);
  if (!v103)
  {
    OUTLINED_FUNCTION_30();
    sub_1B1A90C78(v54, v55, v56);
    OUTLINED_FUNCTION_30();
LABEL_92:
    sub_1B1A90C78(v57, v58, v59);
    return 0;
  }

  v43 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_17_15(v35, v36, v37, v38, v39, v40, v41, v42, v95);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_91:
    v58 = &qword_1EB761DE0;
    v59 = &qword_1B1C352C0;
    v57 = v104;
    goto LABEL_92;
  }

  v45 = HIBYTE(v99) & 0xF;
  v46 = v96 & 0xFFFFFFFFFFFFLL;
  if ((v99 & 0x2000000000000000) != 0)
  {
    v47 = HIBYTE(v99) & 0xF;
  }

  else
  {
    v47 = v96 & 0xFFFFFFFFFFFFLL;
  }

  if (!v47)
  {
LABEL_90:

    goto LABEL_91;
  }

  if ((v99 & 0x1000000000000000) != 0)
  {

    sub_1B1B2EFF0(v96, v99, 10);
    v32 = v82;
    v84 = v83;

    if (v84)
    {
      goto LABEL_90;
    }

    goto LABEL_85;
  }

  if ((v99 & 0x2000000000000000) == 0)
  {
    if ((v96 & 0x1000000000000000) != 0)
    {
      result = (v99 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1B1C2D578();
    }

    v48 = *result;
    if (v48 == 43)
    {
      if (v46 >= 1)
      {
        if (v46 != 1)
        {
          v32 = 0;
          if (result)
          {
            OUTLINED_FUNCTION_72_1();
            while (1)
            {
              OUTLINED_FUNCTION_6_0();
              if (!v50 & v49)
              {
                goto LABEL_81;
              }

              OUTLINED_FUNCTION_1_20();
              if (!v50)
              {
                goto LABEL_81;
              }

              v32 = v73 + v72;
              if (__OFADD__(v73, v72))
              {
                goto LABEL_81;
              }

              OUTLINED_FUNCTION_16_2();
              if (v50)
              {
                goto LABEL_82;
              }
            }
          }

          goto LABEL_72;
        }

        goto LABEL_81;
      }

      goto LABEL_97;
    }

    if (v48 != 45)
    {
      if (v46)
      {
        v32 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_28_5();
            if (!v50 & v49)
            {
              goto LABEL_81;
            }

            v79 = 10 * v32;
            if ((v32 * v77) >> 64 != (10 * v32) >> 63)
            {
              goto LABEL_81;
            }

            v32 = v79 + v78;
            if (__OFADD__(v79, v78))
            {
              goto LABEL_81;
            }

            if (v76 == 1)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_72;
      }

LABEL_81:
      v32 = 0;
      v53 = 1;
LABEL_82:
      if (v53)
      {
        goto LABEL_90;
      }

LABEL_85:
      if (v32 <= 19999)
      {
        sub_1B1A90C78(v104, &qword_1EB761DE0, &qword_1B1C352C0);

        return v32;
      }

      v85 = sub_1B1C2D0C8();
      if (qword_1ED9A99C0 != -1)
      {
        OUTLINED_FUNCTION_0_13(&qword_1ED9A99C0);
      }

      v86 = qword_1ED9AA670;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_1B1C364D0;
      *(v87 + 56) = v43;
      v88 = sub_1B1AC9204();
      *(v87 + 32) = v96;
      *(v87 + 40) = v99;
      *(v87 + 96) = v43;
      *(v87 + 104) = v88;
      *(v87 + 64) = v88;
      *(v87 + 72) = a1;
      *(v87 + 80) = a2;

      v89 = [v2 description];
      v90 = sub_1B1C2CB58();
      v92 = v91;

      *(v87 + 136) = v43;
      *(v87 + 144) = v88;
      *(v87 + 112) = v90;
      *(v87 + 120) = v92;
      sub_1B1C2C7C8(v85, &dword_1B1A8A000, v86, "Preposterous string version %{public}@ for key %{public}@ in %@", 63, 2, v87);
      goto LABEL_90;
    }

    if (v46 >= 1)
    {
      if (v46 != 1)
      {
        v32 = 0;
        if (result)
        {
          OUTLINED_FUNCTION_72_1();
          while (1)
          {
            OUTLINED_FUNCTION_6_0();
            if (!v50 & v49)
            {
              goto LABEL_81;
            }

            OUTLINED_FUNCTION_1_20();
            if (!v50)
            {
              goto LABEL_81;
            }

            v32 = v52 - v51;
            if (__OFSUB__(v52, v51))
            {
              goto LABEL_81;
            }

            OUTLINED_FUNCTION_16_2();
            if (v50)
            {
              goto LABEL_82;
            }
          }
        }

LABEL_72:
        v53 = 0;
        goto LABEL_82;
      }

      goto LABEL_81;
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v100 = v96;
  v101 = v99 & 0xFFFFFFFFFFFFFFLL;
  if (v96 != 43)
  {
    if (v96 != 45)
    {
      if (v45)
      {
        while (1)
        {
          OUTLINED_FUNCTION_6_0();
          if (!v50 & v49)
          {
            break;
          }

          OUTLINED_FUNCTION_1_20();
          if (!v50)
          {
            break;
          }

          v32 = v81 + v80;
          if (__OFADD__(v81, v80))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
          if (v50)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    if (v45)
    {
      if (v45 != 1)
      {
        OUTLINED_FUNCTION_7_16();
        while (1)
        {
          OUTLINED_FUNCTION_6_0();
          if (!v50 & v49)
          {
            break;
          }

          OUTLINED_FUNCTION_1_20();
          if (!v50)
          {
            break;
          }

          v32 = v71 - v70;
          if (__OFSUB__(v71, v70))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
          if (v50)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    goto LABEL_96;
  }

  if (v45)
  {
    if (v45 != 1)
    {
      OUTLINED_FUNCTION_7_16();
      while (1)
      {
        OUTLINED_FUNCTION_6_0();
        if (!v50 & v49)
        {
          break;
        }

        OUTLINED_FUNCTION_1_20();
        if (!v50)
        {
          break;
        }

        v32 = v75 + v74;
        if (__OFADD__(v75, v74))
        {
          break;
        }

        OUTLINED_FUNCTION_16_2();
        if (v50)
        {
          goto LABEL_82;
        }
      }
    }

    goto LABEL_81;
  }

LABEL_98:
  __break(1u);
  return result;
}

unint64_t sub_1B1B6167C()
{
  v0 = OUTLINED_FUNCTION_22_9();
  result = sub_1B1B610B4(v0, v1);
  v3 = 100000 * result;
  if ((result * 100000) >> 64 != (100000 * result) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = sub_1B1B610B4(0xD000000000000010, 0x80000001B1C4EF00);
  v5 = __OFADD__(v3, v4);
  result = v3 + v4;
  if (v5)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1B616FC()
{
  OUTLINED_FUNCTION_27_8();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_16_16();
  v1 = sub_1B1A8EB10();
  if ((v2 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = OUTLINED_FUNCTION_23_10(v1, v2, v3, v4, v5);
  if ((OUTLINED_FUNCTION_8_18(v6, v7, v8, MEMORY[0x1E69E6158], v9, v10, v11, v12, v14, v16, v18) & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  result = swift_allocObject();
  *(result + 16) = xmmword_1B1C361C0;
  *(result + 32) = v15;
  *(result + 40) = v17;
  return result;
}

uint64_t sub_1B1B617E8()
{
  OUTLINED_FUNCTION_27_8();
  if (!v0)
  {
    return 0;
  }

  v1 = sub_1B1A8EB10();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_23_10(v1, v2, v3, v4, v5);
  if (!OUTLINED_FUNCTION_8_18(v6, v7, v8, MEMORY[0x1E69E6158], v9, v10, v11, v12, v18, v20, v22))
  {
    return 0;
  }

  v13 = v19 == 1701601645 && v21 == 0xE400000000000000;
  if (v13 || (OUTLINED_FUNCTION_3(1701601645, 0xE400000000000000) & 1) != 0)
  {

    return 1;
  }

  v15 = v19 == 0x656C616D6566 && v21 == 0xE600000000000000;
  if (v15 || (OUTLINED_FUNCTION_3(0x656C616D6566, 0xE600000000000000) & 1) != 0)
  {

    return 2;
  }

  if (v19 == 0x6C61727475656ELL && v21 == 0xE700000000000000)
  {
  }

  else
  {
    v17 = OUTLINED_FUNCTION_3(0x6C61727475656ELL, 0xE700000000000000);

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  return 3;
}

uint64_t sub_1B1B61958()
{
  OUTLINED_FUNCTION_27_8();
  if (!v0)
  {
    return 0;
  }

  v1 = sub_1B1A8EB10();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_23_10(v1, v2, v3, v4, v5);
  sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

id sub_1B1B61A5C(uint64_t a1)
{
  v1 = TTSAsset.effectiveDiskSize.getter();
  if (v2)
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }
}

void *sub_1B1B61ADC()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_asset);
  v2 = v1;
  return v1;
}

id sub_1B1B61D0C(uint64_t a1)
{
  v2 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_34_6();
  v9();
  v10 = sub_1B1B6011C(v8);
  v11 = *(v4 + 8);
  v12 = v10;
  v11(a1, v2);
  if (v10)
  {
  }

  return v10;
}

char *sub_1B1B61E34(char *a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v57 = a2;
  v4 = sub_1B1C2C0A8();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16();
  v10 = v9 - v8;
  v11 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v60 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v56 - v17;
  sub_1B1A8E474(0, &qword_1ED9A9810, 0x1E696AAE8);
  v58 = *(v13 + 16);
  v59 = (v13 + 16);
  v58(v18, a1, v11);
  v19 = sub_1B1AB30DC(v18);
  if (!v19)
  {
    (*(v13 + 8))(a1, v11);

    type metadata accessor for TTSAssetStaticResource();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v20 = v19;
  v56 = v11;
  OUTLINED_FUNCTION_37_5();
  *&v66 = v21;
  *(&v66 + 1) = v22;
  (*(v6 + 104))(v10, *MEMORY[0x1E6968F58], v4);
  sub_1B1A8EDAC();
  v23 = a1;
  sub_1B1C2C1B8();
  (*(v6 + 8))(v10, v4);
  v24 = sub_1B1AB30DC(v18);
  v25 = v20;
  if (!v24)
  {
    v24 = v20;
  }

  v27 = v61;
  v26 = v62;
  *&v62[OBJC_IVAR____TtC14SiriTTSService22TTSAssetStaticResource_asset] = v24;
  v28 = sub_1B1AB5B4C(v20);
  v29 = v13;
  if (!v28)
  {
    v66 = 0u;
    v67 = 0u;
    v30 = v56;
    v31 = v60;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_29_6("MobileAssetProperties");

  v30 = v56;
  v31 = v60;
  if (!*(&v67 + 1))
  {
LABEL_10:
    sub_1B1A90C78(&v66, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C30, &unk_1B1C38180);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v32 = sub_1B1C2CAB8();
    goto LABEL_12;
  }

  v32 = v65;
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1B1C361C0;
  *(v34 + 32) = v57;
  *(v34 + 40) = v27;
  *(&v67 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  *&v66 = v34;
  sub_1B1A9EEE0(&v66, &v65);
  swift_isUniquelyReferenced_nonNull_native();
  v64 = v32;
  sub_1B1A9EEF0();
  *&v26[OBJC_IVAR____TtC14SiriTTSService22TTSAssetStaticResource_assetAttr] = v64;
  v35 = type metadata accessor for TTSAssetStaticResource();
  v63.receiver = v26;
  v63.super_class = v35;
  v33 = objc_msgSendSuper2(&v63, sel_init);
  v36 = sub_1B1C2D0A8();
  if (qword_1ED9A99B8 != -1)
  {
    swift_once();
  }

  v37 = qword_1ED9AA668;
  v38 = OUTLINED_FUNCTION_126();
  (v58)(v38);
  if (os_log_type_enabled(v37, v36))
  {
    v39 = swift_slowAlloc();
    v62 = v25;
    v40 = v39;
    v61 = swift_slowAlloc();
    *&v66 = v61;
    *v40 = 136315650;
    v41 = sub_1B1B62620();
    v43 = v31;
    v44 = sub_1B1A930E4(v41, v42, &v66);

    *(v40 + 4) = v44;
    v60 = v23;
    *(v40 + 12) = 2080;
    sub_1B1B317AC();
    v45 = sub_1B1C2D778();
    v47 = v46;
    v59 = *(v29 + 8);
    v59(v43, v30);
    v48 = sub_1B1A930E4(v45, v47, &v66);

    *(v40 + 14) = v48;
    *(v40 + 22) = 2080;

    sub_1B1C2CAA8();

    v49 = OUTLINED_FUNCTION_126();
    v52 = sub_1B1A930E4(v49, v50, v51);

    *(v40 + 24) = v52;
    _os_log_impl(&dword_1B1A8A000, v37, v36, "Resource Asset %s path %s attributes %s", v40, 0x20u);
    v53 = v61;
    swift_arrayDestroy();
    MEMORY[0x1B2739FD0](v53, -1, -1);
    MEMORY[0x1B2739FD0](v40, -1, -1);

    v59(v60, v30);
  }

  else
  {

    v54 = *(v29 + 8);
    v54(v23, v30);
    v54(v31, v30);
  }

  return v33;
}

uint64_t sub_1B1B62620()
{
  v1 = v0;
  if (qword_1ED9A9960 != -1)
  {
    swift_once();
  }

  v2 = [qword_1ED9A9968 string];
  v3 = sub_1B1C2CB58();

  MEMORY[0x1B27381B0](46, 0xE100000000000000);

  v4 = [v1 primaryLanguage];
  sub_1B1C2CB58();

  v5 = OUTLINED_FUNCTION_126();
  MEMORY[0x1B27381B0](v5);

  return v3;
}

void sub_1B1B62738(uint64_t a1, uint64_t a2)
{
  sub_1B1A93AEC(a1, a2, *(v2 + OBJC_IVAR____TtC14SiriTTSService22TTSAssetStaticResource_assetAttr));
  v11 = OUTLINED_FUNCTION_35_0(v3, v4, v5, v6, v7, v8, v9, v10, v76, v80, v82, v83, v84, v85, v86[0]);
  v13 = sub_1B1A9D80C(v11, v12);
  v20 = MEMORY[0x1E69E7CA0];
  if (v85)
  {
    OUTLINED_FUNCTION_17_15(v13, v14, v15, MEMORY[0x1E69E6530], v16, v17, v18, v19, v77);
    v21 = swift_dynamicCast();
    if (v21)
    {
      sub_1B1A90C78(v86, &qword_1EB761DE0, &qword_1B1C352C0);
      return;
    }
  }

  else
  {
    v21 = sub_1B1A90C78(&v82, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  v29 = OUTLINED_FUNCTION_35_0(v21, v22, v23, v24, v25, v26, v27, v28, v77, v81, v82, v83, v84, v85, v86[0]);
  v31 = sub_1B1A9D80C(v29, v30);
  if (!v85)
  {
    OUTLINED_FUNCTION_30();
    sub_1B1A90C78(v55, v56, v57);
    OUTLINED_FUNCTION_30();
LABEL_27:
    sub_1B1A90C78(v58, v59, v60);
    return;
  }

  OUTLINED_FUNCTION_17_15(v31, v32, v33, MEMORY[0x1E69E6158], v34, v35, v36, v37, v78);
  v38 = swift_dynamicCast();
  if ((v38 & 1) == 0)
  {
    v59 = &qword_1EB761DE0;
    v60 = &qword_1B1C352C0;
    v58 = v86;
    goto LABEL_27;
  }

  v46 = OUTLINED_FUNCTION_44_0(v38, v39, v40, v41, v42, v43, v44, v45, v79);
  if (!v48)
  {
LABEL_75:
    sub_1B1A90C78(v86, &qword_1EB761DE0, &qword_1B1C352C0);

    return;
  }

  if ((v20 & 0x1000000000000000) != 0)
  {
    sub_1B1B2EFF0(v46, v20, 10);
    goto LABEL_75;
  }

  if ((v20 & 0x2000000000000000) == 0)
  {
    if ((v46 & 0x1000000000000000) != 0)
    {
      v49 = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v49 = sub_1B1C2D578();
    }

    v50 = *v49;
    if (v50 == 43)
    {
      if (v47 >= 1)
      {
        if (v47 != 1 && v49)
        {
          OUTLINED_FUNCTION_72_1();
          do
          {
            OUTLINED_FUNCTION_6_0();
            if (!v52 & v51)
            {
              break;
            }

            OUTLINED_FUNCTION_3_0();
            if (!v52)
            {
              break;
            }

            if (__OFADD__(v66, v65))
            {
              break;
            }

            OUTLINED_FUNCTION_16_2();
          }

          while (!v52);
        }

        goto LABEL_75;
      }

      goto LABEL_80;
    }

    if (v50 != 45)
    {
      if (v47)
      {
        v69 = 0;
        if (v49)
        {
          do
          {
            OUTLINED_FUNCTION_28_5();
            if (!v52 & v51)
            {
              break;
            }

            v73 = 10 * v69;
            if ((v69 * v71) >> 64 != (10 * v69) >> 63)
            {
              break;
            }

            v69 = v73 + v72;
            if (__OFADD__(v73, v72))
            {
              break;
            }
          }

          while (v70 != 1);
        }
      }

      goto LABEL_75;
    }

    if (v47 >= 1)
    {
      if (v47 != 1 && v49)
      {
        OUTLINED_FUNCTION_72_1();
        do
        {
          OUTLINED_FUNCTION_6_0();
          if (!v52 & v51)
          {
            break;
          }

          OUTLINED_FUNCTION_3_0();
          if (!v52)
          {
            break;
          }

          if (__OFSUB__(v54, v53))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
        }

        while (!v52);
      }

      goto LABEL_75;
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  OUTLINED_FUNCTION_68_1();
  if (!v52)
  {
    if (v62 != 45)
    {
      if (v61)
      {
        do
        {
          OUTLINED_FUNCTION_6_0();
          if (!v52 & v51)
          {
            break;
          }

          OUTLINED_FUNCTION_3_0();
          if (!v52)
          {
            break;
          }

          if (__OFADD__(v75, v74))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
        }

        while (!v52);
      }

      goto LABEL_75;
    }

    if (v61)
    {
      if (v61 != 1)
      {
        OUTLINED_FUNCTION_7_16();
        do
        {
          OUTLINED_FUNCTION_6_0();
          if (!v52 & v51)
          {
            break;
          }

          OUTLINED_FUNCTION_3_0();
          if (!v52)
          {
            break;
          }

          if (__OFSUB__(v64, v63))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
        }

        while (!v52);
      }

      goto LABEL_75;
    }

    goto LABEL_79;
  }

  if (v61)
  {
    if (v61 != 1)
    {
      OUTLINED_FUNCTION_7_16();
      do
      {
        OUTLINED_FUNCTION_6_0();
        if (!v52 & v51)
        {
          break;
        }

        OUTLINED_FUNCTION_3_0();
        if (!v52)
        {
          break;
        }

        if (__OFADD__(v68, v67))
        {
          break;
        }

        OUTLINED_FUNCTION_16_2();
      }

      while (!v52);
    }

    goto LABEL_75;
  }

LABEL_81:
  __break(1u);
}

void sub_1B1B62AC8()
{
  sub_1B1A93AEC(0xD000000000000011, 0x80000001B1C494A0, *(v0 + OBJC_IVAR____TtC14SiriTTSService22TTSAssetStaticResource_assetAttr));
  v1 = v4[3];
  sub_1B1A90C78(v4, &qword_1EB761DE0, &qword_1B1C352C0);
  if (v1)
  {
    v2 = 0x80000001B1C494A0;
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_64();
    v2 = 0xE700000000000000;
  }

  sub_1B1B62738(v3, v2);
}

id sub_1B1B62B74(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B1C2CB28();

  return v5;
}

uint64_t sub_1B1B62BE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService22TTSAssetStaticResource_assetAttr);
  sub_1B1A93AEC(0xD000000000000011, 0x80000001B1C494A0, v1);
  if (v5 || (sub_1B1A90C78(&v4, &qword_1EB761DE0, &qword_1B1C352C0), v2 = OUTLINED_FUNCTION_64(), sub_1B1A93AEC(v2, 0xE700000000000000, v1), v5))
  {
    sub_1B1A9EEE0(&v4, v6);
    OUTLINED_FUNCTION_30_8();
    sub_1B1C2D618();
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_1B1A90C78(&v4, &qword_1EB761DE0, &qword_1B1C352C0);
    OUTLINED_FUNCTION_25_6();
  }

  return OUTLINED_FUNCTION_43_0();
}

id sub_1B1B62CF4(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B1C2CE68();

  return v5;
}

uint64_t sub_1B1B62D5C()
{
  OUTLINED_FUNCTION_27_8();
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_16_16();
  v2 = sub_1B1A8EB10();
  if ((v3 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B1A93378(*(v0 + 56) + 32 * v2, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = *(v14 + 16);
  if (!v4)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v15 = MEMORY[0x1E69E7CC0];
  sub_1B1AC9FA8();
  v5 = v15;
  sub_1B1A8EDAC();
  v6 = (v14 + 40);
  do
  {
    v7 = *v6;
    v16[0] = *(v6 - 1);
    v16[1] = v7;
    OUTLINED_FUNCTION_4();
    v8 = sub_1B1C2D398();
    v10 = v9;
    v11 = *(v15 + 16);
    if (v11 >= *(v15 + 24) >> 1)
    {
      sub_1B1AC9FA8();
    }

    *(v15 + 16) = v11 + 1;
    v12 = v15 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v10;
    v6 += 2;
    --v4;
  }

  while (v4);

  return v5;
}

id sub_1B1B62F28(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B1C2CA78();

  return v5;
}

uint64_t sub_1B1B62FA4()
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
  sub_1B1B62AC8();
  *(inited + 120) = MEMORY[0x1E69E6530];
  *(inited + 96) = v7;
  return sub_1B1C2CAB8();
}

void sub_1B1B630F4()
{
  sub_1B1A93AEC(0x7A69537465737361, 0xE900000000000065, *(v1 + OBJC_IVAR____TtC14SiriTTSService22TTSAssetStaticResource_assetAttr));
  if (!v51)
  {
    sub_1B1A90C78(v50, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_73;
  }

  v9 = OUTLINED_FUNCTION_8_18(v2, v3, v4, MEMORY[0x1E69E6158], v5, v6, v7, v8, v47, v49, v50[0]);
  if ((v9 & 1) == 0)
  {
LABEL_73:
    v43 = TTSAsset.effectiveDiskSize.getter();
    if (v44)
    {
      return;
    }

    v22 = v43;
    goto LABEL_75;
  }

  v17 = OUTLINED_FUNCTION_44_0(v9, v10, v11, v12, v13, v14, v15, v16, v48);
  if (!v19)
  {

    goto LABEL_73;
  }

  if ((v0 & 0x1000000000000000) != 0)
  {
    sub_1B1B2EFF0(v17, v0, 10);
    v22 = v45;
    v42 = v46;
LABEL_72:

    if ((v42 & 1) == 0)
    {
LABEL_75:
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      return;
    }

    goto LABEL_73;
  }

  if ((v0 & 0x2000000000000000) == 0)
  {
    if ((v17 & 0x1000000000000000) != 0)
    {
      v20 = ((v0 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v20 = sub_1B1C2D578();
    }

    v21 = *v20;
    if (v21 == 43)
    {
      if (v18 >= 1)
      {
        if (v18 != 1)
        {
          v22 = 0;
          if (v20)
          {
            OUTLINED_FUNCTION_72_1();
            while (1)
            {
              OUTLINED_FUNCTION_6_0();
              if (!v24 & v23)
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_2_23();
              if (!v24)
              {
                goto LABEL_70;
              }

              v22 = v33 + v32;
              if (__OFADD__(v33, v32))
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_16_2();
              if (v24)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_61;
        }

        goto LABEL_70;
      }

      goto LABEL_81;
    }

    if (v21 != 45)
    {
      if (v18)
      {
        v22 = 0;
        if (v20)
        {
          while (1)
          {
            OUTLINED_FUNCTION_28_5();
            if (!v24 & v23)
            {
              goto LABEL_70;
            }

            v39 = 10 * v22;
            if ((v22 * v37) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_70;
            }

            v22 = v39 + v38;
            if (__OFADD__(v39, v38))
            {
              goto LABEL_70;
            }

            if (v36 == 1)
            {
              goto LABEL_61;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_70:
      v22 = 0;
      v27 = 1;
      goto LABEL_71;
    }

    if (v18 >= 1)
    {
      if (v18 != 1)
      {
        v22 = 0;
        if (v20)
        {
          OUTLINED_FUNCTION_72_1();
          while (1)
          {
            OUTLINED_FUNCTION_6_0();
            if (!v24 & v23)
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_2_23();
            if (!v24)
            {
              goto LABEL_70;
            }

            v22 = v26 - v25;
            if (__OFSUB__(v26, v25))
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_16_2();
            if (v24)
            {
              goto LABEL_71;
            }
          }
        }

LABEL_61:
        v27 = 0;
LABEL_71:
        v42 = v27;
        goto LABEL_72;
      }

      goto LABEL_70;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_68_1();
  if (!v24)
  {
    if (v29 != 45)
    {
      if (v28)
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

          v22 = v41 + v40;
          if (__OFADD__(v41, v40))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
          if (v24)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    if (v28)
    {
      if (v28 != 1)
      {
        OUTLINED_FUNCTION_7_16();
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

          v22 = v31 - v30;
          if (__OFSUB__(v31, v30))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
          if (v24)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    goto LABEL_80;
  }

  if (v28)
  {
    if (v28 != 1)
    {
      OUTLINED_FUNCTION_7_16();
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

        v22 = v35 + v34;
        if (__OFADD__(v35, v34))
        {
          break;
        }

        OUTLINED_FUNCTION_16_2();
        if (v24)
        {
          goto LABEL_71;
        }
      }
    }

    goto LABEL_70;
  }

LABEL_82:
  __break(1u);
}

void *sub_1B1B633F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService22TTSAssetStaticResource_asset);
  v2 = v1;
  return v1;
}

id sub_1B1B63458()
{
  v1 = [objc_opt_self() defaultManager];
  v2 = [*(v0 + OBJC_IVAR____TtC14SiriTTSService22TTSAssetStaticResource_asset) bundlePath];
  if (!v2)
  {
    sub_1B1C2CB58();
    v2 = sub_1B1C2CB28();
  }

  v3 = [v1 isDeletableFileAtPath_];

  return v3;
}

uint64_t sub_1B1B63544()
{
}

char *sub_1B1B6360C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16();
  v12 = (v11 - v10);
  (*(v8 + 16))(v11 - v10, a1, v6);
  v13 = sub_1B1B61E34(v12, a2, a3);
  v14 = *(v8 + 8);
  v15 = v13;
  v16 = OUTLINED_FUNCTION_126();
  v14(v16);
  if (v13)
  {
  }

  return v13;
}

id sub_1B1B63728(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_1B1B63794(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B1B64120();
  v5 = v4;
  v6 = "SIRITTSSERVICE_NETWORK_STALL_2";
  if (v4)
  {
    if (v4 == 1)
    {
      v7 = "SIRITTSSERVICE_NETWORK_STALL_3";
    }

    else
    {
      v7 = "vice12Localization";
    }
  }

  else
  {
    v7 = "SIRITTSSERVICE_NETWORK_STALL_2";
  }

  v8 = sub_1B1B63D9C(0xD00000000000001ELL, v7 | 0x8000000000000000, a1, a2, 0x6974737265746E49, 0xED0000736C616974);
  v10 = v9;

  if (!v10)
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v11 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v11, qword_1ED9A9120);

    v12 = sub_1B1C2C888();
    v13 = sub_1B1C2D0B8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136315394;
      if (v5)
      {
        if (v5 == 1)
        {
          v6 = "SIRITTSSERVICE_NETWORK_STALL_3";
        }

        else
        {
          v6 = "vice12Localization";
        }
      }

      v16 = sub_1B1A930E4(0xD00000000000001ELL, v6 | 0x8000000000000000, &v18);

      *(v14 + 4) = v16;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_1B1A930E4(a1, a2, &v18);
      _os_log_impl(&dword_1B1A8A000, v12, v13, "Unable to find retry phrase '%s', %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2739FD0](v15, -1, -1);
      MEMORY[0x1B2739FD0](v14, -1, -1);
    }

    return 0;
  }

  return v8;
}

id sub_1B1B639E0()
{
  result = sub_1B1B63A00();
  qword_1EB762868 = result;
  return result;
}

id sub_1B1B63A00()
{
  v0 = sub_1B1C2C0A8();
  v28 = *(v0 - 8);
  v29 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  v9 = sub_1B1C2C1C8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v28 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  type metadata accessor for Localization();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  v21 = [v20 resourceURL];

  if (v21)
  {
    sub_1B1C2C168();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  __swift_storeEnumTagSinglePayload(v6, v22, 1, v9);
  sub_1B1B480BC(v6, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1B1B29E6C(v8);
    return 0;
  }

  else
  {
    v30 = 0xD000000000000010;
    v31 = 0x80000001B1C4F060;
    v25 = v28;
    v24 = v29;
    (*(v28 + 104))(v2, *MEMORY[0x1E6968F58], v29);
    sub_1B1A8EDAC();
    sub_1B1C2C1B8();
    (*(v25 + 8))(v2, v24);
    v26 = *(v10 + 8);
    v26(v8, v9);
    (*(v10 + 32))(v18, v16, v9);
    sub_1B1B268F0();
    (*(v10 + 16))(v13, v18, v9);
    v23 = sub_1B1AB30DC(v13);
    v26(v18, v9);
  }

  return v23;
}

void *sub_1B1B63D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32[4] = *MEMORY[0x1E69E9840];
  v12 = sub_1B1C2C1C8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v31 - v17;
  if (qword_1EB761628 != -1)
  {
    swift_once();
  }

  if (qword_1EB762868)
  {
    v31[0] = a2;
    v19 = qword_1EB762868;
    v20 = sub_1B1B64204(a3, a4, 0x73676E69727473, 0xE700000000000000, a5, a6, v19);
    if (!v20)
    {

      return v20;
    }

    sub_1B1C2C168();

    (*(v13 + 32))(v18, v16, v12);
    v22 = sub_1B1C2C208();
    v24 = v23;
    v25 = objc_opt_self();
    v26 = sub_1B1C2C298();
    v32[0] = 0;
    v27 = [v25 propertyListWithData:v26 options:0 format:0 error:v32];

    if (v27)
    {
      v28 = v32[0];
      sub_1B1C2D3F8();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761EE0, &unk_1B1C38950);
      if (swift_dynamicCast())
      {
        v20 = sub_1B1A945F4(a1, v31[0], v31[1]);

        sub_1B1A94524(v22, v24);

        (*(v13 + 8))(v18, v12);
        return v20;
      }

      (*(v13 + 8))(v18, v12);

      sub_1B1A94524(v22, v24);
    }

    else
    {
      v29 = v32[0];
      v30 = sub_1B1C2C058();

      swift_willThrow();
      sub_1B1A94524(v22, v24);

      (*(v13 + 8))(v18, v12);
    }
  }

  return 0;
}

uint64_t sub_1B1B64120()
{
  v0 = sub_1B1B64178(3uLL);
  if (v0 == 2)
  {
    return 2;
  }

  else
  {
    return v0 == 1;
  }
}

unint64_t sub_1B1B64178(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1B2739FF0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1B2739FF0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B1B64204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = sub_1B1C2CB28();
  v9 = sub_1B1C2CB28();

  v10 = sub_1B1C2CB28();
  v11 = [a7 URLForResource:v8 withExtension:v9 subdirectory:v10];

  return v11;
}

void *DelegateHandler.__allocating_init(notificationCenter:delegate:request:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  swift_getObjectType();
  v2 = OUTLINED_FUNCTION_1_25();

  return sub_1B1ADB5F4(v2, v3, v4, v5);
}

uint64_t static BNNSModelCache.sharedCacheURL.getter()
{
  v0 = sub_1B1C2C0A8();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16();
  v6 = v5 - v4;
  v7 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_16();
  v13 = v12 - v11;
  sub_1B1C2C0B8();
  (*(v2 + 104))(v6, *MEMORY[0x1E6968F58], v0);
  sub_1B1A8EDAC();
  sub_1B1C2C1A8();
  (*(v2 + 8))(v6, v0);
  return (*(v9 + 8))(v13, v7);
}

uint64_t sub_1B1B644C4()
{
  v0 = sub_1B1C2C1C8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BNNSModelCache(0);
  static BNNSModelCache.sharedCacheURL.getter();
  v4 = swift_allocObject();
  result = (*(v1 + 32))(v4 + OBJC_IVAR____TtC14SiriTTSService14BNNSModelCache_cacheURL, v3, v0);
  qword_1EB762870 = v4;
  return result;
}

uint64_t BNNSModelCache.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC14SiriTTSService14BNNSModelCache_cacheURL;
  sub_1B1C2C1C8();
  OUTLINED_FUNCTION_45();
  (*(v4 + 32))(v2 + v3, a1);
  return v2;
}

uint64_t static BNNSModelCache.sharedInstance.getter()
{
  if (qword_1EB761630 != -1)
  {
    swift_once();
  }
}

uint64_t BNNSModelCache.init(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriTTSService14BNNSModelCache_cacheURL;
  sub_1B1C2C1C8();
  OUTLINED_FUNCTION_45();
  (*(v4 + 32))(v1 + v3, a1);
  return v1;
}

uint64_t sub_1B1B646F8()
{
  v65[2] = *MEMORY[0x1E69E9840];
  v0 = sub_1B1C2C0A8();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16();
  v6 = v5 - v4;
  v7 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v59 = v8;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v62 = v56 - v13;
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v14 = sub_1B1C2C8A8();
  v61 = __swift_project_value_buffer(v14, qword_1ED9A9120);
  v15 = sub_1B1C2C888();
  v16 = sub_1B1C2D0D8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1B1A8A000, v15, v16, "Cleaning stale BNNS cache contents...", v17, 2u);
    OUTLINED_FUNCTION_11();
  }

  if (qword_1EB761590 != -1)
  {
    swift_once();
  }

  v65[0] = qword_1EB762338;
  v65[1] = unk_1EB762340;
  (*(v2 + 104))(v6, *MEMORY[0x1E6968F58], v0);
  sub_1B1A8EDAC();
  sub_1B1C2C1B8();
  (*(v2 + 8))(v6, v0);
  v18 = [objc_opt_self() defaultManager];
  v19 = sub_1B1C2C118();
  v65[0] = 0;
  v20 = [v18 contentsOfDirectoryAtURL:v19 includingPropertiesForKeys:0 options:0 error:v65];

  v21 = v65[0];
  if (!v20)
  {
    v45 = v65[0];
    v46 = sub_1B1C2C058();

    swift_willThrow();
    v47 = v46;
    v48 = sub_1B1C2C888();
    v49 = sub_1B1C2D0B8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = v7;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      v53 = v46;
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 4) = v54;
      *v52 = v54;
      _os_log_impl(&dword_1B1A8A000, v48, v49, "Error listing BNNS cache contents: %@", v51, 0xCu);
      sub_1B1B1AF0C(v52);
      OUTLINED_FUNCTION_11();
      v7 = v50;
      OUTLINED_FUNCTION_11();
    }

    else
    {
    }

    goto LABEL_25;
  }

  v22 = sub_1B1C2CE78();
  v23 = v21;

  v25 = *(v22 + 16);
  if (!v25)
  {

LABEL_25:
    v31 = v62;
    return (*(v59 + 8))(v31, v7);
  }

  v26 = *(v59 + 16);
  v27 = *(v59 + 80);
  v56[1] = v22;
  v28 = v22 + ((v27 + 32) & ~v27);
  v29 = *(v59 + 72);
  v30 = (v59 + 8);
  *&v24 = 138412290;
  v57 = v24;
  v31 = v62;
  v58 = v7;
  v60 = v18;
  v63 = v29;
  v64 = v59 + 16;
  do
  {
    v26(v12, v28, v7);
    if (sub_1B1C2C158())
    {
      (*v30)(v12, v7);
    }

    else
    {
      v32 = sub_1B1C2C118();
      v65[0] = 0;
      v33 = [v18 removeItemAtURL:v32 error:v65];

      if (v33)
      {
        v34 = *v30;
        v35 = v65[0];
        v34(v12, v7);
      }

      else
      {
        v36 = v65[0];
        v37 = sub_1B1C2C058();

        swift_willThrow();
        v38 = v37;
        v39 = sub_1B1C2C888();
        v40 = sub_1B1C2D0B8();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *v41 = v57;
          v43 = v37;
          v44 = _swift_stdlib_bridgeErrorToNSError();
          *(v41 + 4) = v44;
          *v42 = v44;
          _os_log_impl(&dword_1B1A8A000, v39, v40, "Error removing stale BNNS cache contents: %@", v41, 0xCu);
          sub_1B1B1AF0C(v42);
          v7 = v58;
          OUTLINED_FUNCTION_11();
          v31 = v62;
          OUTLINED_FUNCTION_11();
        }

        else
        {
        }

        (*v30)(v12, v7);
        v18 = v60;
      }

      v29 = v63;
    }

    v28 += v29;
    --v25;
  }

  while (v25);

  return (*(v59 + 8))(v31, v7);
}

uint64_t BNNSModelCache.deinit()
{
  v1 = OBJC_IVAR____TtC14SiriTTSService14BNNSModelCache_cacheURL;
  sub_1B1C2C1C8();
  OUTLINED_FUNCTION_45();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t BNNSModelCache.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14SiriTTSService14BNNSModelCache_cacheURL;
  sub_1B1C2C1C8();
  OUTLINED_FUNCTION_45();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for BNNSModelCache(uint64_t a1)
{
  result = qword_1EB762878;
  if (!qword_1EB762878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B1B64EC4(uint64_t a1)
{
  result = sub_1B1C2C1C8();
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

uint64_t AudioFile.__allocating_init(outputURL:format:)()
{
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_15();
  AudioFile.init(outputURL:format:)(v1, v2);
  return v0;
}

uint64_t sub_1B1B65000()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
}

uint64_t sub_1B1B65034(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1B1B650BC(v1, v2);
}

uint64_t sub_1B1B65074()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1B1B650BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t AudioDumpAction.__allocating_init(pool:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AudioDumpAction.init(pool:)(a1);
  return v2;
}

uint64_t sub_1B1B651C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = AudioDumpAction.__allocating_init(pool:)(a1);
  *a2 = result;
  return result;
}

uint64_t dispatch thunk of AudioFile.__allocating_init(outputURL:format:)(uint64_t a1, uint64_t *a2)
{
  v3 = *(v2 + 144);
  v6 = *a2;
  v4 = *(a2 + 3);
  v7 = *(a2 + 1);
  v8 = v4;
  return v3(a1, &v6);
}

uint64_t sub_1B1B65420(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762320, &unk_1B1C39760);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v18 = a1;
  v19 = a2;
  v16 = 45;
  v17 = 0xE100000000000000;
  sub_1B1C2C4D8();
  OUTLINED_FUNCTION_5_20();
  sub_1B1A8EDAC();
  OUTLINED_FUNCTION_11_0();
  sub_1B1C2D3C8();
  v8 = v7;
  v10 = v9;
  result = sub_1B1A90C78(v6, &qword_1EB762320, &unk_1B1C39760);
  if (v10)
  {
    goto LABEL_6;
  }

  v18 = a1;
  v19 = a2;
  v16 = 45;
  v17 = 0xE100000000000000;
  v12 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v12 >= v8 >> 14)
  {
    OUTLINED_FUNCTION_5_20();
    sub_1B1C2D3C8();
    v14 = v13;
    sub_1B1A90C78(v6, &qword_1EB762320, &unk_1B1C39760);
    if ((v14 & 1) == 0)
    {
      v15 = sub_1B1C2CE08();
      MEMORY[0x1B27380D0](v15);

      return OUTLINED_FUNCTION_72();
    }

LABEL_6:

    return OUTLINED_FUNCTION_72();
  }

  __break(1u);
  return result;
}

id sub_1B1B65618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR___TTSAssistantAsset_supportedLanguages] = a1;
  v8 = &v7[OBJC_IVAR___TTSAssistantAsset_name];
  *v8 = a2;
  *(v8 + 1) = a3;
  v9 = &v7[OBJC_IVAR___TTSAssistantAsset_identifier];
  *v9 = a4;
  *(v9 + 1) = a5;
  *&v7[OBJC_IVAR___TTSAssistantAsset_assistantOrder] = a6;
  *&v7[OBJC_IVAR___TTSAssistantAsset_assistantGender] = a7;
  v11.receiver = v7;
  v11.super_class = type metadata accessor for AssistantAsset();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t AssistantAsset.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___TTSAssistantAsset_name);

  return v1;
}

uint64_t AssistantAsset.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___TTSAssistantAsset_identifier);

  return v1;
}

id sub_1B1B657FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  v3 = sub_1B1C2CB28();

  return v3;
}

uint64_t sub_1B1B6584C()
{
  v1 = *(v0 + OBJC_IVAR___TTSAssistantAsset_supportedLanguages);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = *(v1 + 32);

  return v2;
}

uint64_t sub_1B1B65904()
{
  v3 = *(v0 + OBJC_IVAR___TTSAssistantAsset_name);

  MEMORY[0x1B27381B0](58, 0xE100000000000000);
  v1 = sub_1B1B6584C();
  MEMORY[0x1B27381B0](v1);

  return v3;
}

uint64_t sub_1B1B65974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1B1C2CDA8() & 1) == 0)
  {
    return 0;
  }

  if (a3 == a1 && a4 == a2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_72();
  if (sub_1B1C2D7A8())
  {
    return 1;
  }

  MEMORY[0x1B27381B0](45, 0xE100000000000000);
  v10 = sub_1B1C2CDA8();

  return v10 & 1;
}

void *sub_1B1B65A2C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = sub_1B1B65420(a1, a2);
  v6 = v5;
  v91 = type metadata accessor for TTSAsset();
  v7 = [v91 assistantVoiceMaps];
  v8 = *&v7[OBJC_IVAR___TTSAssistantVoiceMaps_voicesForLanguageMap];

  if (*(v8 + 16))
  {
    sub_1B1A8EB10();
    v10 = v9;

    if (v10)
    {

      goto LABEL_6;
    }
  }

  else
  {
  }

  type metadata accessor for Languages();
  v4 = sub_1B1BE3B3C(v4, v6);
  v6 = v11;
LABEL_6:
  v12 = [v91 assistantVoiceMaps];
  v13 = *&v12[OBJC_IVAR___TTSAssistantVoiceMaps_voicesForLanguageMap];

  v14 = 0;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  v19 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v20 = v14;
    if (!v17)
    {
      break;
    }

LABEL_13:
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v22 = (*(v13 + 48) + ((v14 << 10) | (16 * v21)));
    v24 = *v22;
    v23 = v22[1];

    if (sub_1B1B65974(v4, v6, v24, v23))
    {
      v95 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B1AC9FA8();
        v19 = v95;
      }

      v25 = *(v19 + 16);
      v26 = v25 + 1;
      if (v25 >= *(v19 + 24) >> 1)
      {
        v92 = v25 + 1;
        v88 = *(v19 + 16);
        sub_1B1AC9FA8();
        v26 = v92;
        v19 = v95;
        v25 = v88;
      }

      *(v19 + 16) = v26;
      v27 = v19 + 16 * v25;
      *(v27 + 32) = v24;
      *(v27 + 40) = v23;
    }

    else
    {
    }
  }

  while (1)
  {
    v14 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v14 >= v18)
    {

      v28 = 0;
      v86 = *(v19 + 16);
      v29 = MEMORY[0x1E69E7CC0];
      v85 = v19;
      while (1)
      {
        if (v28 == v86)
        {

          v94 = sub_1B1A9547C();
          if (v94)
          {
            v54 = [v91 assistantVoiceMaps];
            v55 = *&v54[OBJC_IVAR___TTSAssistantVoiceMaps_relativePitchOrderForVoicesMap];

            v56 = sub_1B1B6584C();
            v57 = *(v83 + OBJC_IVAR___TTSAssistantAsset_name);
            v58 = *(v83 + OBJC_IVAR___TTSAssistantAsset_name + 8);
            v95 = v56;
            v96 = v59;

            MEMORY[0x1B27381B0](v57, v58);

            v60 = sub_1B1B2A14C(v95, v96, v55);
            LOBYTE(v57) = v61;

            v90 = v29;
            if (v57)
            {
              v63 = *(v83 + OBJC_IVAR___TTSAssistantAsset_assistantGender);
              v62.n128_u64[0] = 0;
              v64 = 2.5;
              if (v63 == 2)
              {
                v64 = 5.0;
              }

              if (v63 == 1)
              {
                v65 = 0.0;
              }

              else
              {
                v65 = v64;
              }
            }

            else
            {
              v65 = v60;
            }

            v87 = 0;
            v67 = 0;
            v68 = 3.4028e38;
            while (v94 != v67)
            {
              if ((v90 & 0xC000000000000001) != 0)
              {
                v69 = MEMORY[0x1B2738A20](v67, v90, v62);
              }

              else
              {
                if (v67 >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_86;
                }

                v69 = *(v90 + 8 * v67 + 32);
              }

              v70 = v69;
              if (__OFADD__(v67, 1))
              {
                goto LABEL_85;
              }

              v71 = [v91 assistantVoiceMaps];
              v72 = *&v71[OBJC_IVAR___TTSAssistantVoiceMaps_relativePitchOrderForVoicesMap];

              v73 = sub_1B1B6584C();
              v74 = *&v70[OBJC_IVAR___TTSAssistantAsset_name];
              v75 = *&v70[OBJC_IVAR___TTSAssistantAsset_name + 8];
              v95 = v73;
              v96 = v76;

              MEMORY[0x1B27381B0](v74, v75);

              if (!*(v72 + 16))
              {
                goto LABEL_91;
              }

              v77 = sub_1B1A8EB10();
              v79 = v78;

              if ((v79 & 1) == 0)
              {
                goto LABEL_92;
              }

              v80 = *(*(v72 + 56) + 8 * v77);

              v81 = vabds_f32(v80, v65);
              if (v81 < v68)
              {

                v68 = v81;
                v87 = v70;
              }

              else
              {
              }

              ++v67;
            }

            v66 = v87;
          }

          else
          {
            v66 = 0;
          }

          return v66;
        }

        if (v28 >= *(v19 + 16))
        {
          goto LABEL_82;
        }

        v30 = [v91 assistantVoiceMaps];
        v31 = *&v30[OBJC_IVAR___TTSAssistantVoiceMaps_voicesForLanguageMap];

        if (*(v31 + 16) && (v32 = sub_1B1A8EB10(), (v33 & 1) != 0))
        {
          v34 = *(*(v31 + 56) + 8 * v32);
        }

        else
        {
          v34 = MEMORY[0x1E69E7CC0];
        }

        if (v34 >> 62)
        {
          v35 = sub_1B1C2D468();
        }

        else
        {
          v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v36 = v29 >> 62;
        if (v29 >> 62)
        {
          v37 = sub_1B1C2D468();
        }

        else
        {
          v37 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v38 = v37 + v35;
        if (__OFADD__(v37, v35))
        {
          goto LABEL_83;
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          break;
        }

        if (v36)
        {
          goto LABEL_37;
        }

        v39 = v29 & 0xFFFFFFFFFFFFFF8;
        if (v38 > *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_38;
        }

LABEL_39:
        v93 = v28 + 1;
        v40 = *(v39 + 16);
        v41 = (*(v39 + 24) >> 1) - v40;
        v42 = v39 + 8 * v40;
        if (v34 >> 62)
        {
          v44 = sub_1B1C2D468();
          if (!v44)
          {
            goto LABEL_53;
          }

          v45 = v44;
          v84 = sub_1B1C2D468();
          if (v41 < v84)
          {
            goto LABEL_89;
          }

          if (v45 < 1)
          {
            goto LABEL_90;
          }

          v89 = v29;
          v46 = v42 + 32;
          sub_1B1B67998();
          for (i = 0; i != v45; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7628B8, &unk_1B1C396C0);
            v48 = sub_1B1B37C24(&v95, i, v34);
            v50 = *v49;
            v48(&v95, 0);
            *(v46 + 8 * i) = v50;
          }

          v29 = v89;
          v43 = v84;
LABEL_49:

          v19 = v85;
          v28 = v93;
          if (v43 < v35)
          {
            goto LABEL_84;
          }

          if (v43 > 0)
          {
            v51 = *(v39 + 16);
            v52 = __OFADD__(v51, v43);
            v53 = v51 + v43;
            if (v52)
            {
              goto LABEL_87;
            }

            *(v39 + 16) = v53;
          }
        }

        else
        {
          v43 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v43)
          {
            if (v41 < v43)
            {
              goto LABEL_88;
            }

            type metadata accessor for AssistantAsset();
            swift_arrayInitWithCopy();
            goto LABEL_49;
          }

LABEL_53:

          v19 = v85;
          v28 = v93;
          if (v35 > 0)
          {
            goto LABEL_84;
          }
        }
      }

      if (v36)
      {
LABEL_37:
        sub_1B1C2D468();
      }

LABEL_38:
      v29 = sub_1B1C2D568();
      v39 = v29 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_39;
    }

    v17 = *(v13 + 64 + 8 * v14);
    ++v20;
    if (v17)
    {
      goto LABEL_13;
    }
  }

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
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:

LABEL_92:

  __break(1u);
  return result;
}

id AssistantAsset.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1B1B66388(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  v3 = OUTLINED_FUNCTION_72();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  v5 = sub_1B1C2CA78();

  return v5;
}

id sub_1B1B6648C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  a3();
  v4 = sub_1B1C2CA78();

  return v4;
}

id sub_1B1B66500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR___TTSAssistantVoiceMaps_deprecatedVoicesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762738, &unk_1B1C39850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C361C0;
  *(inited + 32) = 0x504A2D616ALL;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = sub_1B1C2CAB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761EE0, &unk_1B1C38950);
  *&v4[v9] = sub_1B1C2CAB8();
  *&v4[OBJC_IVAR___TTSAssistantVoiceMaps_voicesForLanguageMap] = a1;
  *&v4[OBJC_IVAR___TTSAssistantVoiceMaps_relativePitchOrderForVoicesMap] = a2;
  *&v4[OBJC_IVAR___TTSAssistantVoiceMaps_relativeOrderForVoicesMap] = a3;
  *&v4[OBJC_IVAR___TTSAssistantVoiceMaps_identifiersForVoicesMap] = a4;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for TTSAsset.AssistantVoiceMaps();
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_1B1B66694(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1B1B6675C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v77[4] = *MEMORY[0x1E69E9840];
  v8 = sub_1B1C2C1C8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = *a1;
  if (*a1)
  {
    *a3 = v14;
    return v14;
  }

  else
  {
    v65 = a2;
    v63 = &v56 - v13;
    if (qword_1ED9A9588 != -1)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v16 = sub_1B1BE34F8(0xD000000000000011, 0x80000001B1C4F4E0, 0x7473696C70, 0xE500000000000000, qword_1ED9AA640);
      if (!v16)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_45;
      }

      v17 = v16;
      sub_1B1C2C168();

      (*(v9 + 32))(v63, v12, v8);
      v18 = sub_1B1C2C208();
      v66 = v4;
      if (v4)
      {
        goto LABEL_45;
      }

      v20 = v18;
      v21 = v19;
      v22 = objc_opt_self();
      v61 = v20;
      v23 = sub_1B1C2C298();
      v77[0] = 0;
      v24 = [v22 propertyListWithData:v23 options:0 format:0 error:v77];

      v25 = v77[0];
      if (!v24)
      {
        break;
      }

      sub_1B1C2D3F8();
      swift_unknownObjectRelease();
      sub_1B1A93378(v77, v76);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C30, &unk_1B1C38180);
      v4 = MEMORY[0x1E69E7CA0];
      swift_dynamicCast();
      v72 = MEMORY[0x1E69E7CC8];
      v73 = MEMORY[0x1E69E7CC8];
      v71 = MEMORY[0x1E69E7CC8];
      v68 = v74;
      sub_1B1A93AEC(0xD00000000000001ALL, 0x80000001B1C4F530, v74);
      if (!v75)
      {
        goto LABEL_41;
      }

      v57 = v9;
      v58 = v8;
      v59 = a1;
      v60 = a3;
      sub_1B1A9EEE0(&v74, v76);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7628E8, &qword_1B1C39748);
      swift_dynamicCast();
      v26 = v70;
      v27 = *(v70 + 16);
      v9 = MEMORY[0x1E69E7CC0];
      v69 = v21;
      if (v27)
      {
        *&v76[0] = MEMORY[0x1E69E7CC0];
        sub_1B1AC9FA8();
        v9 = *&v76[0];
        v67 = v26;
        v8 = v26 + 32;
        a3 = 0x696669746E656469;
        while (1)
        {
          v12 = *v8;
          if (!*(*v8 + 16))
          {
            break;
          }

          v28 = sub_1B1A8EB10();
          if ((v29 & 1) == 0)
          {
            goto LABEL_38;
          }

          v30 = (*(v12 + 56) + 16 * v28);
          v4 = *v30;
          v31 = v30[1];

          *&v76[0] = v9;
          v32 = *(v9 + 16);
          a1 = (v32 + 1);
          if (v32 >= *(v9 + 24) >> 1)
          {
            sub_1B1AC9FA8();
            v9 = *&v76[0];
          }

          *(v9 + 16) = a1;
          v33 = v9 + 16 * v32;
          *(v33 + 32) = v4;
          *(v33 + 40) = v31;
          v8 += 8;
          --v27;
          v21 = v69;
          if (!v27)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
LABEL_15:
        sub_1B1A93AEC(0x736563696F56, 0xE600000000000000, v68);
        if (!v75)
        {
          goto LABEL_42;
        }

        v12 = 0x54502D7470;

        sub_1B1A9EEE0(&v74, v76);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7628F0, &unk_1B1C39750);
        swift_dynamicCast();
        v34 = v70 + 64;
        v35 = 1 << *(v70 + 32);
        v36 = -1;
        if (v35 < 64)
        {
          v36 = ~(-1 << v35);
        }

        v8 = v36 & *(v70 + 64);
        a1 = ((v35 + 63) >> 6);
        v64 = v70;

        v4 = 0;
        v62 = MEMORY[0x1E69E7CC8];
        while (1)
        {
          v37 = v4;
          if (!v8)
          {
            break;
          }

LABEL_23:
          v38 = __clz(__rbit64(v8)) | (v4 << 6);
          v39 = *(v64 + 56);
          v40 = (*(v64 + 48) + 16 * v38);
          v41 = v40[1];
          v67 = *v40;
          a3 = *(v39 + 8 * v38);
          v42 = qword_1EB7614A0;

          v68 = a3;

          if (v42 != -1)
          {
            swift_once();
          }

          v8 &= v8 - 1;
          if (byte_1ED9AA5A8 & 1) == 0 && (v67 == 0x54502D7470 ? (v43 = v41 == 0xE500000000000000) : (v43 = 0), v43 || (sub_1B1C2D7A8()))
          {
          }

          else
          {
            *&v76[0] = MEMORY[0x1E69E7CC0];
            v44 = *(v68 + 16);

            for (i = 32; v44; --v44)
            {
              *&v74 = *(v68 + i);

              v46 = v66;
              sub_1B1B66FE8(&v74, v65, v67, v41, v76, &v72, v9, &v73, &v71);
              v66 = v46;

              i += 8;
            }

            a3 = *&v76[0];

            v47 = v62;
            swift_isUniquelyReferenced_nonNull_native();
            *&v74 = v47;
            sub_1B1B377B0();

            v62 = v74;
            v21 = v69;
            v12 = 0x54502D7470;
          }
        }

        while (1)
        {
          v4 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          if (v4 >= a1)
          {

            v48 = v72;
            v49 = v73;
            v50 = v62;
            v51 = v71;
            v52 = objc_allocWithZone(type metadata accessor for TTSAsset.AssistantVoiceMaps());

            v53 = sub_1B1B66500(v50, v48, v49, v51);
            sub_1B1A94524(v61, v21);
            __swift_destroy_boxed_opaque_existential_0(v77);
            (*(v57 + 8))(v63, v58);
            v54 = v53;

            *v59 = v54;
            *v60 = v54;
            return result;
          }

          v8 = *(v34 + 8 * v4);
          ++v37;
          if (v8)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      swift_once();
    }

    v55 = v25;
    sub_1B1C2C058();

    swift_willThrow();
LABEL_45:
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void sub_1B1B66FE8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, void *a8, void *a9)
{
  v15 = *a1;
  sub_1B1A93AEC(1701667182, 0xE400000000000000, *a1);
  if (!v25)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = a3;
  v28 = a7;
  sub_1B1A9EEE0(&v24, &v26);
  swift_dynamicCast();
  sub_1B1A93AEC(0x696669746E656469, 0xEA00000000007265, v15);
  if (!v25)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1B1A9EEE0(&v24, &v26);
  swift_dynamicCast();
  sub_1B1A93AEC(0x726564726FLL, 0xE500000000000000, v15);
  if (!v25)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1B1A9EEE0(&v24, &v26);
  swift_dynamicCast();
  sub_1B1A93AEC(0x7265646E6567, 0xE600000000000000, v15);
  if (!v25)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1B1A9EEE0(&v24, &v26);
  swift_dynamicCast();
  sub_1B1A93AEC(0x6E61526863746970, 0xEA00000000006567, v15);
  if (!v25)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1B1A9EEE0(&v24, &v26);
  swift_dynamicCast();
  if (qword_1ED9A9528 != -1)
  {
    swift_once();
  }

  if (byte_1ED9A9536 == 1)
  {
    sub_1B1A93AEC(0x65676175676E616CLL, 0xE900000000000073, v15);
    if (v27)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
      if (swift_dynamicCast())
      {
        v16 = a5;
        v17 = v24;
        v18 = v21;
        goto LABEL_14;
      }
    }

    else
    {
      sub_1B1A90C78(&v26, &qword_1EB761DE0, &qword_1B1C352C0);
    }
  }

  v16 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B1C361C0;
  v18 = v21;
  *(v17 + 32) = v21;
  *(v17 + 40) = a4;

LABEL_14:
  objc_allocWithZone(type metadata accessor for AssistantAsset());

  v19 = sub_1B1B65618(v17, v22, v23, v22, v23, v22, v22);
  MEMORY[0x1B2738320]();
  sub_1B1B3E0D4(*((*v16 & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1B1C2CEC8();
  *&v26 = v18;
  *(&v26 + 1) = a4;

  MEMORY[0x1B27381B0]();
  sub_1B1BD0084(v22, v23, v28);
  if ((v20 & 1) == 0)
  {

    swift_isUniquelyReferenced_nonNull_native();
    *&v26 = *a6;
    sub_1B1B377C4();
    *a6 = v26;
    swift_isUniquelyReferenced_nonNull_native();
    *&v26 = *a8;
    sub_1B1B377C4();
    *a8 = v26;
    swift_isUniquelyReferenced_nonNull_native();
    *&v26 = *a9;
    sub_1B1B3758C();
    *a9 = v26;

    return;
  }

LABEL_21:
  __break(1u);
}

id TTSAsset.siriVoiceSimilarInLanguage(_:)(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_1_26();
  (*(v4 + 184))();
  OUTLINED_FUNCTION_1_26();
  (*(v5 + 152))();
  OUTLINED_FUNCTION_1_26();
  (*(v6 + 192))();
  v7 = objc_allocWithZone(type metadata accessor for AssistantAsset());
  OUTLINED_FUNCTION_2_26();
  v15 = sub_1B1B65618(v8, v9, v10, v11, v12, v13, v14);
  v16 = sub_1B1B65A2C(a1, a2);
  if (v16)
  {
    v17 = v16;
    type metadata accessor for TTSAsset();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1B1C37D90;
    if (qword_1ED9A9978 != -1)
    {
      swift_once();
    }

    v19 = qword_1ED9A9980;
    *(v18 + 32) = qword_1ED9A9980;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627A8, &unk_1B1C396D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1C36280;
    *(inited + 32) = 1;
    v21 = sub_1B1B6584C();
    v22 = MEMORY[0x1E69E6158];
    *(inited + 40) = v21;
    *(inited + 48) = v23;
    *(inited + 64) = v22;
    *(inited + 72) = 0;
    v24 = *&v17[OBJC_IVAR___TTSAssistantAsset_name];
    v25 = *&v17[OBJC_IVAR___TTSAssistantAsset_name + 8];
    *(inited + 104) = v22;
    *(inited + 80) = v24;
    *(inited + 88) = v25;
    type metadata accessor for TTSAssetProperty(0);
    sub_1B1B37E44();
    v26 = v19;

    v27 = sub_1B1C2CAB8();
    v28 = static TTSAsset.bestAsset(ofTypes:matching:)(v18, v27);
  }

  else
  {

    return 0;
  }

  return v28;
}

id SynthesisVoice.siriVoiceSimilarInLanguage(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B1C361C0;
  v2 = (v0 + OBJC_IVAR___SiriTTSSynthesisVoice_language);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  objc_allocWithZone(type metadata accessor for AssistantAsset());

  OUTLINED_FUNCTION_2_26();
  v12 = sub_1B1B65618(v5, v6, v7, v8, v9, v10, v11);
  v13 = OUTLINED_FUNCTION_72();
  v15 = sub_1B1B65A2C(v13, v14);
  if (v15)
  {
    v16 = v15;
    sub_1B1B6584C();
    objc_allocWithZone(type metadata accessor for SynthesisVoice());

    v17 = SynthesisVoice.init(language:name:)();
  }

  else
  {

    return 0;
  }

  return v17;
}

id sub_1B1B678FC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1B1C2CB58();
  v8 = v7;
  v9 = a1;
  v10 = a4(v6, v8);

  return v10;
}

unint64_t sub_1B1B67998()
{
  result = qword_1EB7628C0;
  if (!qword_1EB7628C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7628B8, &unk_1B1C396C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7628C0);
  }

  return result;
}

id sub_1B1B67B98(void *a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1B1C2CB28();
  OUTLINED_FUNCTION_13_17();
  v4 = [v3 initWithString_];

  return v4;
}

uint64_t sub_1B1B67C04(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624D0, &unk_1B1C39860);
  if (v4 >= 9)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1C364E0;
    strcpy((inited + 32), "tts.language");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    v9 = a3[15];
    *(inited + 48) = a3[14];
    *(inited + 56) = v9;
    *(inited + 64) = 0x656D616E2E737474;
    *(inited + 72) = 0xE800000000000000;
    sub_1B1A8EDAC();

    *(inited + 80) = sub_1B1C2D398();
    *(inited + 88) = v10;
    strcpy((inited + 96), "tts.technology");
    *(inited + 111) = -18;
    v11 = a3[19];
    *(inited + 112) = a3[18];
    *(inited + 120) = v11;
    *(inited + 128) = 0x6C6175712E737474;
    *(inited + 136) = 0xEB00000000797469;
    v12 = a3[20];
    v13 = a3[21];
    *(inited + 144) = v12;
    *(inited + 152) = v13;

    return sub_1B1C2CAB8();
  }

  result = swift_initStackObject();
  *(result + 16) = xmmword_1B1C361C0;
  strcpy((result + 32), "tts.language");
  *(result + 45) = 0;
  *(result + 46) = -5120;
  if (v4 >= 6)
  {
    v6 = result;
    v7 = a3[15];
    *(v6 + 48) = a3[14];
    *(v6 + 56) = v7;

    return sub_1B1C2CAB8();
  }

  __break(1u);
  return result;
}

unint64_t sub_1B1B67DE4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3[2] < 5uLL)
  {
    __break(1u);
  }

  else
  {
    v3 = a3[12];
    v4 = a3[13];

    MEMORY[0x1B27381B0](v3, v4);

    return 0xD000000000000013;
  }

  return result;
}

uint64_t sub_1B1B67EAC()
{
  v0 = NSUserName();
  v1 = sub_1B1C2CB58();
  v3 = v2;

  strcpy(v8, "/private/var/");
  HIWORD(v8[1]) = -4864;
  MEMORY[0x1B27381B0](v1, v3);

  v5 = v8[0];
  v4 = v8[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B1C361C0;

  MEMORY[0x1B27381B0](0xD00000000000001FLL, 0x80000001B1C4F5B0);

  *(v6 + 32) = v5;
  *(v6 + 40) = v4;
  sub_1B1ABF93C(&unk_1F28BFBB0);
  return v6;
}

uint64_t sub_1B1B67FBC()
{
  result = sub_1B1AC6C24();
  qword_1EB772D08 = result;
  return result;
}

uint64_t sub_1B1B67FDC()
{
  result = sub_1B1B67FFC();
  qword_1EB772CE8 = result;
  return result;
}

uint64_t sub_1B1B67FFC()
{
  v30[4] = *MEMORY[0x1E69E9840];
  v0 = sub_1B1C2C1C8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - v5;
  if (qword_1ED9A9588 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v7 = sub_1B1BE34F8(0x7365527465737341, 0xEE0073656372756FLL, 0x7473696C70, 0xE500000000000000, qword_1ED9AA640);
    if (!v7)
    {
      __break(1u);
    }

    v8 = v7;
    sub_1B1C2C168();

    (*(v1 + 32))(v6, v4, v0);
    v9 = sub_1B1C2C208();
    v11 = v10;
    v25 = v6;
    v26 = v1;
    v27 = v0;
    v12 = objc_opt_self();
    v23 = v11;
    v24 = v9;
    v13 = sub_1B1C2C298();
    v30[0] = 0;
    v4 = [v12 propertyListWithData:v13 options:0 format:0 error:v30];

    v14 = v30[0];
    if (!v4)
    {
      break;
    }

    sub_1B1C2D3F8();
    swift_unknownObjectRelease();
    sub_1B1A93378(v30, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7628F8, &unk_1B1C39828);
    swift_dynamicCast();
    v6 = v28;
    v15 = MEMORY[0x1E69E7CC0];
    v29[0] = MEMORY[0x1E69E7CC0];
    v16 = 1 << v28[32];
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v0 = v17 & *(v28 + 8);
    v18 = (v16 + 63) >> 6;

    v1 = 0;
    while (v0)
    {
LABEL_12:
      v0 &= v0 - 1;
      v20 = objc_allocWithZone(type metadata accessor for TTSAssetUAFResourceAsset(0));

      v4 = v20;
      if (sub_1B1B46D4C())
      {
        v4 = v29;
        MEMORY[0x1B2738320]();
        if (*((v29[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B1C2CE98();
        }

        sub_1B1C2CEC8();
        v15 = v29[0];
      }
    }

    while (1)
    {
      v19 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v19 >= v18)
      {

        sub_1B1A94524(v24, v23);
        __swift_destroy_boxed_opaque_existential_0(v30);
        (*(v26 + 8))(v25, v27);

        return v15;
      }

      v0 = *&v6[8 * v19 + 64];
      ++v1;
      if (v0)
      {
        v1 = v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

  v22 = v14;
  sub_1B1C2C058();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1B1B68430(void *a1, uint64_t a2)
{
  if (!*a1)
  {
    v4 = [objc_opt_self() sharedManager];
    v5 = sub_1B1C2CB28();
    if (qword_1EB761360 != -1)
    {
      swift_once();
    }

    v6 = qword_1EB772D00;
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    v10[4] = sub_1B1B6ADBC;
    v10[5] = v7;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1B1A95870;
    v10[3] = &block_descriptor_17;
    v8 = _Block_copy(v10);

    v9 = [v4 observeAssetSet:v5 queue:v6 handler:v8];
    _Block_release(v8);

    *a1 = v9;
  }
}

void sub_1B1B685B8(uint64_t a1)
{
  v1 = sub_1B1C2D098();
  if (qword_1ED9A99B8 != -1)
  {
LABEL_33:
    swift_once();
  }

  sub_1B1C2C7C8(v1, &dword_1B1A8A000, qword_1ED9AA668, "Got namespace update", 20, 2, MEMORY[0x1E69E7CC0]);
  if (qword_1EB761370 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB772D08;
  v2 = sub_1B1A9547C();
  for (i = 0; v2 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1B2738A20](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v6 = &v4[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty];
    os_unfair_lock_lock(&v4[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty]);
    LOBYTE(v6[1]._os_unfair_lock_opaque) = 1;
    os_unfair_lock_unlock(v6);
  }

  if (qword_1EB7612C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB772CE8;
  v7 = sub_1B1A9547C();
  for (j = 0; v7 != j; ++j)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1B2738A20](j, v1);
    }

    else
    {
      if (j >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v9 = *(v1 + 8 * j + 32);
    }

    v10 = v9;
    if (__OFADD__(j, 1))
    {
      goto LABEL_31;
    }

    v11 = &v9[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty];
    os_unfair_lock_lock(&v9[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty]);
    LOBYTE(v11[1]._os_unfair_lock_opaque) = 1;
    os_unfair_lock_unlock(v11);
  }

  if (qword_1EB761280 != -1)
  {
    swift_once();
  }

  if (byte_1EB772CE0 == 1)
  {

    notify_post("com.apple.voiceservices.notification.voice-update");
  }
}

void sub_1B1B68860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v95 = *v5;
  v6 = sub_1B1C2C988();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16();
  v101 = v11 - v10;
  v12 = sub_1B1C2C9D8();
  OUTLINED_FUNCTION_7();
  v100 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_16();
  v99 = v16 - v15;
  v98 = sub_1B1C2C998();
  OUTLINED_FUNCTION_7();
  v97 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_16();
  v96 = v20 - v19;
  LOBYTE(v21) = sub_1B1C2D0D8();
  if (qword_1ED9A99C0 != -1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v22 = qword_1ED9AA670;
    if (os_log_type_enabled(qword_1ED9AA670, v21))
    {

      v23 = swift_slowAlloc();
      v24 = OUTLINED_FUNCTION_19_0();
      aBlock = v24;
      *v23 = 134218242;
      *(v23 + 4) = sub_1B1A9547C();

      *(v23 + 12) = 2080;
      v25 = OUTLINED_FUNCTION_5_21();
      *(v23 + 14) = sub_1B1A930E4(v25, v26, v27);
      _os_log_impl(&dword_1B1A8A000, v22, v21, "#UAF updating %ld subscriptions for %s", v23, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v24);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }

    v107 = objc_opt_self();
    v28 = [v107 sharedManager];
    OUTLINED_FUNCTION_5_21();
    v29 = sub_1B1C2CB28();
    v30 = [v28 subscriptionsForSubscriber_];

    v104 = v6;
    v103 = v8;
    v102 = v12;
    if (v30)
    {
      sub_1B1A8E474(0, &qword_1EB760F88, 0x1E69DEEF8);
      v31 = sub_1B1C2CE78();
    }

    else
    {
      v31 = MEMORY[0x1E69E7CC0];
    }

    v112 = v31;
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    v111 = v32;
    *(v32 + 24) = 0;
    v108 = dispatch_group_create();
    v33 = sub_1B1A9547C();
    if (!v33)
    {
      v46 = MEMORY[0x1E69E7CC0];
LABEL_19:
      if (sub_1B1A9547C())
      {
        dispatch_group_enter(v108);
        v47 = [v107 sharedManager];
        OUTLINED_FUNCTION_5_21();
        v48 = sub_1B1C2CB28();
        sub_1B1A8E474(0, &qword_1EB760F88, 0x1E69DEEF8);
        v49 = sub_1B1C2CE68();
        OUTLINED_FUNCTION_66();
        v50 = swift_allocObject();
        v50[2] = v111;
        v50[3] = a1;
        v50[4] = v108;
        OUTLINED_FUNCTION_1_27(v50);
        v116 = 1107296256;
        OUTLINED_FUNCTION_13_1();
        v117 = v51;
        v118 = &block_descriptor_14;
        v52 = _Block_copy(&aBlock);

        v53 = v108;

        OUTLINED_FUNCTION_9_19(v54, sel_subscribe_subscriptions_queue_completion_);
        _Block_release(v52);
      }

      v55 = v112;
      v56 = sub_1B1A9547C();
      if (v56)
      {
        v57 = v56;
        OUTLINED_FUNCTION_8_19(MEMORY[0x1E69E7CC0]);
        if (v57 < 0)
        {
          goto LABEL_53;
        }

        v58 = 0;
        v59 = aBlock;
        do
        {
          if ((v112 & 0xC000000000000001) != 0)
          {
            v60 = MEMORY[0x1B2738A20](v58, v55);
          }

          else
          {
            v60 = *(v55 + 8 * v58 + 32);
          }

          v61 = v60;
          v62 = [v60 name];
          v63 = sub_1B1C2CB58();
          v65 = v64;

          aBlock = v59;
          v66 = *(v59 + 16);
          if (v66 >= *(v59 + 24) >> 1)
          {
            sub_1B1AC9FA8();
            v59 = aBlock;
          }

          ++v58;
          *(v59 + 16) = v66 + 1;
          v67 = v59 + 16 * v66;
          *(v67 + 32) = v63;
          *(v67 + 40) = v65;
          v55 = v112;
        }

        while (v57 != v58);
      }

      else
      {

        v59 = MEMORY[0x1E69E7CC0];
      }

      v68 = sub_1B1ACB6B8(v59);
      v69 = sub_1B1A9547C();
      if (v69)
      {
        v70 = v69;
        OUTLINED_FUNCTION_8_19(MEMORY[0x1E69E7CC0]);
        if (v70 < 0)
        {
          goto LABEL_54;
        }

        v114 = v68;
        v71 = 0;
        v72 = aBlock;
        do
        {
          if ((v46 & 0xC000000000000001) != 0)
          {
            v73 = MEMORY[0x1B2738A20](v71, v46);
          }

          else
          {
            v73 = *(v46 + 8 * v71 + 32);
          }

          v74 = v73;
          v75 = [v73 name];
          v76 = sub_1B1C2CB58();
          v78 = v77;

          aBlock = v72;
          v79 = *(v72 + 16);
          if (v79 >= *(v72 + 24) >> 1)
          {
            sub_1B1AC9FA8();
            v72 = aBlock;
          }

          ++v71;
          *(v72 + 16) = v79 + 1;
          v80 = v72 + 16 * v79;
          *(v80 + 32) = v76;
          *(v80 + 40) = v78;
        }

        while (v70 != v71);

        v68 = v114;
      }

      else
      {

        v72 = MEMORY[0x1E69E7CC0];
      }

      v81 = sub_1B1ACB6B8(v72);
      v82 = sub_1B1B6964C(v81, v68);

      v83 = sub_1B1BD6EF8(v82);
      if (*(v83 + 16))
      {
        dispatch_group_enter(v108);
        v84 = [v107 sharedManager];
        v85 = sub_1B1C2CB28();
        v86 = sub_1B1C2CE68();
        v87 = swift_allocObject();
        v87[2] = v111;
        v87[3] = a2;
        v87[4] = a3;
        v87[5] = v83;
        v87[6] = v108;
        v87[7] = v95;
        OUTLINED_FUNCTION_1_27(v87);
        v116 = 1107296256;
        OUTLINED_FUNCTION_13_1();
        v117 = v88;
        v118 = &block_descriptor_20;
        v89 = _Block_copy(&aBlock);

        v90 = v108;

        OUTLINED_FUNCTION_9_19(v91, sel_unsubscribe_subscriptionNames_queue_completion_);
        _Block_release(v89);
      }

      else
      {
      }

      if (a4)
      {
        sub_1B1A8E474(0, &qword_1ED9A9940, 0x1E69E9610);
        (*(v97 + 104))(v96, *MEMORY[0x1E69E7F98], v98);

        v92 = sub_1B1C2D168();
        (*(v97 + 8))(v96, v98);
        OUTLINED_FUNCTION_66();
        v93 = swift_allocObject();
        v93[2] = a4;
        v93[3] = a5;
        v93[4] = v111;
        OUTLINED_FUNCTION_1_27(v93);
        v116 = 1107296256;
        v117 = sub_1B1A95870;
        v118 = &block_descriptor_26;
        v94 = _Block_copy(&aBlock);

        sub_1B1A94514(a4, a5);
        sub_1B1C2C9A8();
        sub_1B1A979CC(&qword_1ED9A8DC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
        sub_1B1A97978(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430);
        sub_1B1C2D418();
        sub_1B1C2D108();
        _Block_release(v94);

        sub_1B1A949B4(a4, a5);
        v103[1](v101, v104);
        (*(v100 + 8))(v99, v102);
      }

      else
      {
      }

      return;
    }

    v12 = v33;
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1B1C2D5B8();
    if (v12 < 0)
    {
      break;
    }

    v34 = 0;
    v21 = a1 & 0xC000000000000001;
    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v21)
      {
        v36 = MEMORY[0x1B2738A20](v34, a1);
      }

      else
      {
        if (v34 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v36 = *(a1 + 8 * v34 + 32);
      }

      v8 = v36;
      v37 = &v36[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
      v38 = *&v36[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
      v39 = *&v36[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762738, &unk_1B1C39850);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B1C361C0;
      *(inited + 32) = 0xD000000000000012;
      *(inited + 40) = 0x80000001B1C4D870;
      v41 = *(v37 + 2);

      *(inited + 48) = sub_1B1B67C04(v42, v43, v41);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761EE0, &unk_1B1C38950);
      v44 = sub_1B1C2CAB8();
      v45 = objc_allocWithZone(MEMORY[0x1E69DEEF8]);
      if (!sub_1B1B4740C(v38, v39, v44, 0))
      {
        goto LABEL_55;
      }

      sub_1B1C2D588();
      v6 = aBlock[2];
      sub_1B1C2D5C8();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
      ++v34;
      if (v35 == v12)
      {
        v46 = aBlock;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    OUTLINED_FUNCTION_0_13(&qword_1ED9A99C0);
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

void sub_1B1B6946C(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  if (a1)
  {
    v7 = a1;
    os_unfair_lock_lock((a2 + 16));

    *(a2 + 24) = a1;
    os_unfair_lock_unlock((a2 + 16));
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
    v9 = sub_1B1A9547C();
    for (i = 0; v9 != i; ++i)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1B2738A20](i, a3);
      }

      else
      {
        if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v11 = *(a3 + 8 * i + 32);
      }

      v12 = v11;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        return;
      }

      if ([v11 locallyAvailable])
      {
      }

      else
      {
        sub_1B1C2D588();
        sub_1B1C2D5C8();
        sub_1B1C2D5D8();
        sub_1B1C2D598();
      }
    }

    v13 = sub_1B1A9547C();
    for (j = 0; v13 != j; ++j)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1B2738A20](j, v17);
      }

      else
      {
        if (j >= *(v17 + 16))
        {
          goto LABEL_29;
        }

        v15 = *(v17 + 8 * j + 32);
      }

      v16 = v15;
      if (__OFADD__(j, 1))
      {
        goto LABEL_28;
      }

      sub_1B1AF6E30(0, 0, 0, 0, 0);
    }
  }

  dispatch_group_leave(a4);
}

uint64_t sub_1B1B6964C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_1B1B6A048(a1);
    return a2;
  }

  else
  {

    return sub_1B1B6A174(a1, a2);
  }
}

void sub_1B1B696A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v37 = a6;
  if (a1)
  {
    v11 = a1;
    os_unfair_lock_lock((a2 + 16));

    *(a2 + 24) = a1;
    os_unfair_lock_unlock((a2 + 16));
  }

  v12 = a3 == 0x73747469726973 && a4 == 0xE700000000000000;
  if (v12 || (sub_1B1C2D7A8() & 1) != 0)
  {
    if (qword_1EB761370 != -1)
    {
LABEL_32:
      swift_once();
    }

    v13 = qword_1EB772D08;
    v14 = sub_1B1A9547C();
    v15 = 0;
    v16 = v13 & 0xC000000000000001;
    while (v14 != v15)
    {
      sub_1B1A9EC44(v15, v16 == 0, v13);
      if (v16)
      {
        v17 = MEMORY[0x1B2738A20](v15, v13);
      }

      else
      {
        v17 = *(v13 + 8 * v15 + 32);
      }

      v18 = v17;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v19 = *&v17[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
      v38 = *&v17[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
      v39 = v19;
      MEMORY[0x1EEE9AC00](v17);
      v36 = &v38;
      if (sub_1B1ABAA5C(sub_1B1ABB394, v35, a5))
      {
        v20 = &v18[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_path];
        os_unfair_lock_lock(&v18[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_path]);
        v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762728, &unk_1B1C38940) + 28);
        sub_1B1A90C78(v20 + v21, &unk_1EB761F00, &qword_1B1C36480);
        v22 = sub_1B1C2C1C8();
        __swift_storeEnumTagSinglePayload(v20 + v21, 1, 1, v22);
        os_unfair_lock_unlock(v20);
        v23 = &v18[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty];
        os_unfair_lock_lock(&v18[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty]);
        LOBYTE(v23[1]._os_unfair_lock_opaque) = 1;
        os_unfair_lock_unlock(v23);
      }

      ++v15;
    }

    if (qword_1EB7612C8 != -1)
    {
      swift_once();
    }

    v24 = qword_1EB772CE8;
    v25 = sub_1B1A9547C();
    v26 = 0;
    v27 = v24 & 0xC000000000000001;
    while (v25 != v26)
    {
      sub_1B1A9EC44(v26, v27 == 0, v24);
      if (v27)
      {
        v28 = MEMORY[0x1B2738A20](v26, v24);
      }

      else
      {
        v28 = *(v24 + 8 * v26 + 32);
      }

      v29 = v28;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_31;
      }

      v30 = *&v28[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
      v38 = *&v28[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
      v39 = v30;
      MEMORY[0x1EEE9AC00](v28);
      v36 = &v38;
      if (sub_1B1ABAA5C(sub_1B1ABB394, v35, a5))
      {
        v31 = &v29[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_path];
        os_unfair_lock_lock(&v29[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_path]);
        v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762728, &unk_1B1C38940) + 28);
        sub_1B1A90C78(v31 + v32, &unk_1EB761F00, &qword_1B1C36480);
        v33 = sub_1B1C2C1C8();
        __swift_storeEnumTagSinglePayload(v31 + v32, 1, 1, v33);
        os_unfair_lock_unlock(v31);
        v34 = &v29[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty];
        os_unfair_lock_lock(&v29[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty]);
        LOBYTE(v34[1]._os_unfair_lock_opaque) = 1;
        os_unfair_lock_unlock(v34);
      }

      ++v26;
    }
  }

  dispatch_group_leave(v37);
}

void sub_1B1B69AAC(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a3 + 16));
  v5 = *(a3 + 24);
  v6 = v5;
  os_unfair_lock_unlock((a3 + 16));
  a1(v5);
}

void sub_1B1B69B18(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5)
{
  v10 = sub_1B1C2D0D8();
  if (qword_1ED9A99C0 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_1ED9A99C0);
  }

  v11 = qword_1ED9AA670;
  if (os_log_type_enabled(qword_1ED9AA670, v10))
  {

    v12 = swift_slowAlloc();
    v13 = OUTLINED_FUNCTION_19_0();
    aBlock[0] = v13;
    *v12 = 134218242;
    *(v12 + 4) = sub_1B1A9547C();

    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1B1A930E4(a2, a3, aBlock);
    _os_log_impl(&dword_1B1A8A000, v11, v10, "#UAF removing %ld subscription(s) for %s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  if (sub_1B1A9547C())
  {
    v14 = sub_1B1A9547C();
    if (!v14)
    {
LABEL_16:
      v24 = [objc_opt_self() sharedManager];
      v25 = sub_1B1C2CB28();
      v26 = sub_1B1C2CE68();

      v27 = swift_allocObject();
      v27[2] = a2;
      v27[3] = a3;
      v27[4] = a1;
      v27[5] = a4;
      v27[6] = a5;
      aBlock[4] = sub_1B1B6ADEC;
      aBlock[5] = v27;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      OUTLINED_FUNCTION_13_1();
      aBlock[2] = v28;
      aBlock[3] = &block_descriptor_34;
      v29 = _Block_copy(aBlock);

      sub_1B1A94514(a4, a5);

      [v24 unsubscribe:v25 subscriptionNames:v26 queue:0 completion:v29];
      _Block_release(v29);

      return;
    }

    v15 = v14;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B1AC9FA8();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v30 = a2;
      v31 = a3;
      v16 = 0;
      v17 = aBlock[0];
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1B2738A20](v16, a1);
        }

        else
        {
          v18 = *(a1 + 8 * v16 + 32);
        }

        v19 = v18;
        v20 = *&v18[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
        v21 = *&v18[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];

        aBlock[0] = v17;
        v22 = *(v17 + 16);
        if (v22 >= *(v17 + 24) >> 1)
        {
          sub_1B1AC9FA8();
          v17 = aBlock[0];
        }

        ++v16;
        *(v17 + 16) = v22 + 1;
        v23 = v17 + 16 * v22;
        *(v23 + 32) = v20;
        *(v23 + 40) = v21;
      }

      while (v15 != v16);
      a2 = v30;
      a3 = v31;
      goto LABEL_16;
    }

    __break(1u);
  }

  else if (a4)
  {
    a4(0);
  }
}

void sub_1B1B69E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v6 = a2 == 0x73747469726973 && a3 == 0xE700000000000000;
  if (v6 || (sub_1B1C2D7A8() & 1) != 0)
  {
    v7 = sub_1B1A9547C();
    for (i = 0; v7 != i; ++i)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1B2738A20](i, a4);
      }

      else
      {
        if (i >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(a4 + 8 * i + 32);
      }

      v10 = v9;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

      v11 = &v9[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_path];
      os_unfair_lock_lock(&v9[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_path]);
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762728, &unk_1B1C38940) + 28);
      sub_1B1A90C78(v11 + v12, &unk_1EB761F00, &qword_1B1C36480);
      v13 = sub_1B1C2C1C8();
      __swift_storeEnumTagSinglePayload(v11 + v12, 1, 1, v13);
      os_unfair_lock_unlock(v11);
      v14 = &v10[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty];
      os_unfair_lock_lock(&v10[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty]);
      LOBYTE(v14[1]._os_unfair_lock_opaque) = 1;
      os_unfair_lock_unlock(v14);
    }
  }

  if (a5)
  {
    a5(a1);
  }
}

uint64_t sub_1B1B6A048(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1B1B6A64C(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1B1B6A174(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v56 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;

    v15 = 0;
    v49 = v12;
    v50 = v7;
    v51 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        sub_1B1C2D888();

        sub_1B1C2CC48();
        v20 = sub_1B1C2D8E8();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v22 = (*(v5 + 48) + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (sub_1B1C2D7A8() & 1) != 0)
          {
            v53 = v47;
            v54 = v16;
            v55 = v11;
            v3 = v50;
            v12 = v51;
            v52[0] = v51;
            v52[1] = v50;

            v25 = *(v5 + 32);
            v44 = ((1 << v25) + 63) >> 6;
            v2 = 8 * v44;
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_49;
            }

            while (1)
            {
              v45 = &v43;
              MEMORY[0x1EEE9AC00](v24);
              v7 = &v43 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v26 = *(v7 + 8 * v4) & ~v8;
              v27 = *(v5 + 16);
              v48 = v7;
              *(v7 + 8 * v4) = v26;
              v28 = v27 - 1;
              v29 = v49;
              while (1)
              {
                v46 = v28;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v31 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v32 = (*(v12 + 48) + ((v16 << 10) | (16 * v31)));
                v2 = *v32;
                v33 = v32[1];
                sub_1B1C2D888();

                sub_1B1C2CC48();
                v34 = sub_1B1C2D8E8();
                v35 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v34 & v35;
                  v7 = (v34 & v35) >> 6;
                  v8 = 1 << (v34 & v35);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v50;
                    v12 = v51;
                    v29 = v49;
                    goto LABEL_24;
                  }

                  v36 = (*(v5 + 48) + 16 * v4);
                  if (*v36 == v2 && v36[1] == v33)
                  {
                    break;
                  }

                  v38 = sub_1B1C2D7A8();
                  v34 = v4 + 1;
                }

                while ((v38 & 1) == 0);

                v39 = v48[v7];
                v48[v7] = v39 & ~v8;
                v3 = v50;
                v12 = v51;
                v29 = v49;
                if ((v39 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v28 = v46 - 1;
                if (__OFSUB__(v46, 1))
                {
                  __break(1u);
                }

                if (v46 == 1)
                {

                  v5 = MEMORY[0x1E69E7CD0];
                  goto LABEL_43;
                }
              }

              while (1)
              {
                v30 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v30 >= v29)
                {
                  v5 = sub_1B1B6A9E8(v48, v44, v46, v5);
                  goto LABEL_43;
                }

                v11 = *(v3 + 8 * v30);
                ++v16;
                if (v11)
                {
                  v16 = v30;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v41 = swift_slowAlloc();
            v42 = sub_1B1B6A960(v41, v44, (v5 + 56), v44, v5, v7, v52);

            MEMORY[0x1B2739FD0](v41, -1, -1);
            v12 = v52[0];
            v47 = v53;
            v5 = v42;
LABEL_43:
            v14 = v12;
            goto LABEL_45;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v50;
        v14 = v51;
        v12 = v49;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_48;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_45:
    sub_1B1A9D350(v14);
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v5;
}

uint64_t sub_1B1B6A64C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1B1C2D888();
  sub_1B1C2CC48();
  v6 = sub_1B1C2D8E8();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_1B1C2D7A8() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B1B1F12C();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_1B1B6AC04(v8);
  *v2 = v15;
  return v13;
}

unint64_t *sub_1B1B6A774(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    sub_1B1C2D888();

    sub_1B1C2CC48();
    v16 = sub_1B1C2D8E8();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = sub_1B1C2D7A8();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_1B1B6A9E8(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

unint64_t *sub_1B1B6A960(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1B1B6A774(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_1B1B6A9E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7622E8, &qword_1B1C37900);
  result = sub_1B1C2D4F8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1B1C2D888();

    sub_1B1C2CC48();
    result = sub_1B1C2D8E8();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1B1B6AC04(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1B1C2D438();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1B1C2D888();

        sub_1B1C2CC48();
        v10 = sub_1B1C2D8E8();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t CoreAnalyticsSynthesisHandler.__allocating_init(notificationCenter:coreAnalyticsService:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CoreAnalyticsSynthesisHandler.init(notificationCenter:coreAnalyticsService:)(a1, a2);
  return v4;
}

uint64_t sub_1B1B6AFC4(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  OUTLINED_FUNCTION_65(a2 + 16, v7);
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(v4, v5);
  }

  return result;
}

void sub_1B1B6B0F4(char *a1)
{
  v3 = *(v1 + 72);
  v4 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
  OUTLINED_FUNCTION_65(&a1[OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime], v38);
  v5 = *&a1[v4];
  v6 = OBJC_IVAR___SiriTTSInstrumentationMetrics_requestCreatedTime;
  OUTLINED_FUNCTION_66_0(v3 + OBJC_IVAR___SiriTTSInstrumentationMetrics_requestCreatedTime, v37);
  *(v3 + v6) = v5;
  v7 = &a1[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
  OUTLINED_FUNCTION_65(&a1[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId], v36);
  v9 = *v7;
  v8 = *(v7 + 1);
  v10 = (v3 + OBJC_IVAR___SiriTTSInstrumentationMetrics_clientBundleIdentifier);
  OUTLINED_FUNCTION_66_0(v3 + OBJC_IVAR___SiriTTSInstrumentationMetrics_clientBundleIdentifier, v35);
  *v10 = v9;
  v10[1] = v8;

  v11 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isWarmStart;
  OUTLINED_FUNCTION_66_0(v3 + OBJC_IVAR___SiriTTSInstrumentationMetrics_isWarmStart, v34);
  *(v3 + v11) = 1;
  type metadata accessor for AudioRequest(0);
  if (swift_dynamicCastClass())
  {
    goto LABEL_4;
  }

  v33[3] = qword_1F28D9340;
  if (swift_dynamicCastObjCProtocolConditional())
  {
    ObjectType = swift_getObjectType();
    v13 = SynthesizingRequestProtocol.text.getter();
    v15 = v14;
    v16 = (v3 + OBJC_IVAR___SiriTTSInstrumentationMetrics_utterance);
    OUTLINED_FUNCTION_66_0(v3 + OBJC_IVAR___SiriTTSInstrumentationMetrics_utterance, v33);
    *v16 = v13;
    v16[1] = v15;

    LOBYTE(v13) = SynthesizingRequestProtocol.privacySensitive.getter(ObjectType);
    v17 = OBJC_IVAR___SiriTTSInstrumentationMetrics_privacySensitive;
    OUTLINED_FUNCTION_66_0(v3 + OBJC_IVAR___SiriTTSInstrumentationMetrics_privacySensitive, v32);
    *(v3 + v17) = v13 & 1;
    v18 = SynthesizingRequestProtocol.minimizeDeviceUsage.getter(ObjectType);
    v19 = OBJC_IVAR___SiriTTSInstrumentationMetrics_minimizeDeviceUsage;
    OUTLINED_FUNCTION_66_0(v3 + OBJC_IVAR___SiriTTSInstrumentationMetrics_minimizeDeviceUsage, v31);
    *(v3 + v19) = v18 & 1;
LABEL_4:
    if (swift_dynamicCastObjCProtocolConditional())
    {
      v21 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isAudibleRequest;
      OUTLINED_FUNCTION_19_2(v3 + OBJC_IVAR___SiriTTSInstrumentationMetrics_isAudibleRequest, v20);
      *(v3 + v21) = 1;
    }

    return;
  }

  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v22 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v22, qword_1ED9A9120);
  v23 = a1;
  v24 = sub_1B1C2C888();
  v25 = sub_1B1C2D0C8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33[0] = v27;
    *v26 = 136315138;
    v32[0] = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762928, &unk_1B1C39958);
    v28 = sub_1B1C2CBD8();
    v30 = sub_1B1A930E4(v28, v29, v33);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_1B1A8A000, v24, v25, "Unrecognized request type in handleRequestReceived, got: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1B2739FD0](v27, -1, -1);
    MEMORY[0x1B2739FD0](v26, -1, -1);
  }
}

uint64_t sub_1B1B6B454(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 72);
  v4 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isWarmStart;
  result = OUTLINED_FUNCTION_19_2(v3 + OBJC_IVAR___SiriTTSInstrumentationMetrics_isWarmStart, a2);
  *(v3 + v4) = 0;
  return result;
}

uint64_t sub_1B1B6B494(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 72);
  v4 = OBJC_IVAR___SiriTTSInstrumentationMetrics_promptCount;
  result = OUTLINED_FUNCTION_19_2(v3 + OBJC_IVAR___SiriTTSInstrumentationMetrics_promptCount, a2);
  v6 = *(v3 + v4);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v4) = v8;
  }

  return result;
}

uint64_t sub_1B1B6B4FC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (*(v3 + 72) + *a3);
  OUTLINED_FUNCTION_66_0(v6, v8);
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_1B1B6B560(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 72);
  v4 = OBJC_IVAR___SiriTTSInstrumentationMetrics_neuralAlignmentStall;
  result = OUTLINED_FUNCTION_19_2(v3 + OBJC_IVAR___SiriTTSInstrumentationMetrics_neuralAlignmentStall, a2);
  *(v3 + v4) = 1;
  return result;
}

uint64_t sub_1B1B6B5AC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 72);
  v4 = OBJC_IVAR___SiriTTSInstrumentationMetrics_useHydraFrontend;
  result = OUTLINED_FUNCTION_19_2(v3 + OBJC_IVAR___SiriTTSInstrumentationMetrics_useHydraFrontend, a2);
  *(v3 + v4) = 1;
  return result;
}

uint64_t DownloadOption.toOptions()()
{
  if (v0[1])
  {
    return *v0 | 2;
  }

  else
  {
    return *v0;
  }
}

uint64_t VoiceAsset.description.getter()
{
  v1 = v0;
  v2 = [*(v0 + 16) description];
  v3 = sub_1B1C2CB58();

  MEMORY[0x1B27381B0](58, 0xE100000000000000);
  MEMORY[0x1B27381B0](*(v1 + 24), *(v1 + 32));
  return v3;
}

unint64_t sub_1B1B6B718(unint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  return result;
}

SiriTTSService::DownloadOption __swiftcall DownloadOption.init(allowExpensiveData:allowDiscretionary:)(Swift::Bool allowExpensiveData, Swift::Bool allowDiscretionary)
{
  *v2 = allowExpensiveData;
  v2[1] = allowDiscretionary;
  result.allowExpensiveData = allowExpensiveData;
  return result;
}

uint64_t TrialAssetProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  TrialAssetProvider.init()();
  return v0;
}

uint64_t sub_1B1B6B778(void *a1, unsigned __int8 a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = sub_1B1ABAF00(a2);
  }

  else
  {
    if (a2 != 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627A8, &unk_1B1C396D0);
      inited = swift_initStackObject();
      v8 = OUTLINED_FUNCTION_14_2(inited, xmmword_1B1C361C0);
      v8[4].n128_u64[0] = MEMORY[0x1E69E6370];
      v8[2].n128_u8[8] = a2 & 1;
    }

    type metadata accessor for TTSAssetProperty(0);
    OUTLINED_FUNCTION_0_26();
    sub_1B1A97A5C(v5, v6, &unk_1B1C35CF4);
    v4 = sub_1B1C2CAB8();
  }

  v13 = v4;
  if (qword_1ED9A94C8 != -1)
  {
    OUTLINED_FUNCTION_6_19(&qword_1ED9A94C8);
  }

  v9 = qword_1ED9A94B8;
  v12[3] = sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  v12[0] = v9;
  v10 = v9;
  sub_1B1AB51D0(v12, 7);
  return v13;
}

uint64_t sub_1B1B6B90C()
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
  v10 = OUTLINED_FUNCTION_34_7();
  v12 = sub_1B1B6B778(v10, v11);
  OUTLINED_FUNCTION_27_9(v12);
  OUTLINED_FUNCTION_37_6();

  v13 = MEMORY[0x1E69E7CC0];
  v34 = MEMORY[0x1E69E7CC0];
  sub_1B1A9547C();
  OUTLINED_FUNCTION_23_4();
  while (v4 != v1)
  {
    if (v2)
    {
      v14 = MEMORY[0x1B2738A20](v1, v0);
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_18;
      }

      v14 = *(v0 + 8 * v1 + 32);
    }

    v15 = v14;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_21_6();
    v17 = (*(v16 + 280))();
    if (v17)
    {
      v18 = v17;
      v33 = sub_1B1ABFFF8();
      v19 = [v18 bundlePath];
      sub_1B1C2CB58();
      v32 = v20;

      type metadata accessor for VoiceAsset();
      OUTLINED_FUNCTION_66();
      v21 = swift_allocObject();
      OUTLINED_FUNCTION_17_10(v21, v22, v23, v24, v25, v26, v27, v28, v31, v32, v33);
      OUTLINED_FUNCTION_10_3();
      if (v29)
      {
        OUTLINED_FUNCTION_9_14();
      }

      OUTLINED_FUNCTION_39_6();
      v13 = v34;
      ++v1;
    }

    else
    {

      ++v1;
    }
  }

  return v13;
}

void sub_1B1B6BB24()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_26_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_38_1();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B1C38B50;
  if (qword_1ED9A9978 != -1)
  {
    OUTLINED_FUNCTION_6(&qword_1ED9A9978);
  }

  v2 = qword_1ED9A9980;
  *(v1 + 32) = qword_1ED9A9980;
  v3 = qword_1ED9A9850;
  v4 = v2;
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_22(&qword_1ED9A9850);
  }

  v5 = qword_1ED9A97E0;
  *(v1 + 40) = qword_1ED9A97E0;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_34_7();
  v9 = sub_1B1B6B778(v7, v8);
  OUTLINED_FUNCTION_27_9(v9);
  OUTLINED_FUNCTION_37_6();

  v10 = sub_1B1A9547C();
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v10;
  sub_1B1C2D5B8();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v13 = OUTLINED_FUNCTION_33_2();
        v14 = MEMORY[0x1B2738A20](v13);
      }

      else
      {
        v14 = *(v0 + 8 * v12 + 32);
      }

      v15 = v14;
      ++v12;
      sub_1B1ABFFF8();

      sub_1B1C2D588();
      OUTLINED_FUNCTION_38_5();
      sub_1B1C2D5C8();
      OUTLINED_FUNCTION_38_5();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
    }

    while (v11 != v12);
LABEL_12:

    OUTLINED_FUNCTION_22_4();
    return;
  }

  __break(1u);
}

void *sub_1B1B6BCB8()
{
  v0 = OUTLINED_FUNCTION_26_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_38_1();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B1C38B50;
  if (qword_1ED9A9978 != -1)
  {
    OUTLINED_FUNCTION_6(&qword_1ED9A9978);
  }

  v2 = qword_1ED9A9980;
  *(v1 + 32) = qword_1ED9A9980;
  v3 = qword_1ED9A9850;
  v4 = v2;
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_22(&qword_1ED9A9850);
  }

  v5 = qword_1ED9A97E0;
  *(v1 + 40) = qword_1ED9A97E0;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_34_7();
  sub_1B1B6B778(v7, v8);
  v9 = OUTLINED_FUNCTION_72();
  static TTSAsset.bestAsset(ofTypes:matching:)(v9, v10);
  OUTLINED_FUNCTION_5_4();

  if (v0)
  {
    OUTLINED_FUNCTION_21_6();
    v12 = (*(v11 + 280))();
    if (v12)
    {
      v13 = v12;
      sub_1B1ABFFF8();
      v14 = [v13 bundlePath];
      sub_1B1C2CB58();
      OUTLINED_FUNCTION_52_3();

      type metadata accessor for VoiceAsset();
      OUTLINED_FUNCTION_66();
      v15 = swift_allocObject();
      return OUTLINED_FUNCTION_47_4(v15);
    }
  }

  return 0;
}

void sub_1B1B6BE30(char a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_self() clientWithIdentifier_];
  v3 = sub_1B1C2CB28();
  v4 = [v2 rolloutIdentifiersWithNamespaceName_];

  if (v4)
  {
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v5 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v5, qword_1ED9A9120);
    v6 = sub_1B1C2C888();
    v7 = sub_1B1C2D0D8();
    if (os_log_type_enabled(v6, v7))
    {
      OUTLINED_FUNCTION_45_0();
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B1A8A000, v6, v7, "SIRI_TEXT_TO_SPEECH namespace is not downloaded yet. Try downloading now.", v8, 2u);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }

    if ((a1 & 2) != 0)
    {
      sub_1B1A9EC9C();
      swift_allocError();
      *v12 = 1;
      *(v12 + 8) = 0xD000000000000034;
      *(v12 + 16) = 0x80000001B1C4FB90;
      swift_willThrow();
    }

    else
    {
      sub_1B1AB6238(&unk_1F28BFDB0);
      v9 = sub_1B1C2CF48();

      v16[0] = 0;
      v10 = [v2 immediateDownloadForNamespaceNames:v9 allowExpensiveNetworking:0 error:v16];

      if (v10)
      {
        v11 = v16[0];
      }

      else
      {
        v13 = v16[0];
        v14 = sub_1B1C2C058();

        swift_willThrow();
        sub_1B1A9EC9C();
        swift_allocError();
        *v15 = 1;
        *(v15 + 8) = 0xD000000000000030;
        *(v15 + 16) = 0x80000001B1C4FB50;
        swift_willThrow();
      }
    }
  }
}

uint64_t sub_1B1B6C0F4(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2[1])
  {
    v8 = *a2 | 2;
  }

  else
  {
    v8 = *a2;
  }

  return sub_1B1B6C10C(a1, v8, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1B1B6C10C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *v8;
  sub_1B1C2C988();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_16_13();
  v33 = sub_1B1C2C9D8();
  OUTLINED_FUNCTION_7();
  v32 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22_5();
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = v8;
  v21[5] = a7;
  v21[6] = a8;
  v21[7] = a3;
  v21[8] = a4;
  v21[9] = a5;
  v21[10] = a6;
  v21[11] = v17;
  OUTLINED_FUNCTION_10_21(v21);
  OUTLINED_FUNCTION_8_14(COERCE_DOUBLE(1107296256));
  v35 = v22;
  v36 = &block_descriptor_18;
  v23 = _Block_copy(aBlock);
  v24 = a1;

  sub_1B1A94514(a3, a4);
  sub_1B1A94514(a5, a6);
  sub_1B1C2C9A8();
  OUTLINED_FUNCTION_13_19();
  sub_1B1A97A5C(v25, v26, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
  sub_1B1A97978(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430);
  sub_1B1C2D418();
  MEMORY[0x1B2738610](0, v10, v9, v23);
  _Block_release(v23);
  v27 = OUTLINED_FUNCTION_33_2();
  v28(v27);
  (*(v32 + 8))(v10, v33);
}

void sub_1B1B6C3D8(void *a1, char *a2, uint64_t a3, void (*a4)(void, void), uint64_t a5, void (*a6)(void **), uint64_t a7, void (*a8)(void, void), char *a9)
{
  v139 = a7;
  v140 = a6;
  v14 = a9;
  v15 = sub_1B1C2C1C8();
  v136 = *(v15 - 8);
  v137 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v132 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v133 = &v127 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v134 = &v127 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v135 = &v127 - v22;
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v23 = sub_1B1C2C8A8();
  v24 = __swift_project_value_buffer(v23, qword_1ED9A9120);
  v25 = a1;
  v26 = sub_1B1C2C888();
  v27 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v138 = a4;
    v30 = a5;
    v31 = v29;
    *v28 = 138412546;
    *(v28 + 4) = v25;
    *v29 = v25;
    *(v28 + 12) = 1024;
    *(v28 + 14) = (a2 >> 1) & 1;
    v32 = v25;
    _os_log_impl(&dword_1B1A8A000, v26, v27, "Attempting voice download, voice: %@, discretionary: %{BOOL}d", v28, 0x12u);
    sub_1B1B1AF0C(v31);
    v33 = v31;
    a5 = v30;
    a4 = v138;
    MEMORY[0x1B2739FD0](v33, -1, -1);
    MEMORY[0x1B2739FD0](v28, -1, -1);
  }

  sub_1B1B6BE30(a2);
  v34 = type metadata accessor for TTSAsset();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1B1C38B50;
  if (qword_1ED9A9978 != -1)
  {
    swift_once();
  }

  v131 = a5;
  v36 = qword_1ED9A9980;
  *(v35 + 32) = qword_1ED9A9980;
  v37 = qword_1ED9A9850;
  v38 = v36;
  if (v37 != -1)
  {
    swift_once();
  }

  v39 = qword_1ED9A97E0;
  *(v35 + 40) = qword_1ED9A97E0;
  v40 = v39;
  v41 = sub_1B1B6B778(v25, 2u);
  v42 = static TTSAsset.bestAsset(ofTypes:matching:)(v35, v41);

  if (v42)
  {
    v130 = v34;
    v43 = [v42 locallyAvailable];
    v44 = v24;
    v45 = v42;
    v138 = v44;
    v46 = sub_1B1C2C888();
    v47 = sub_1B1C2D0D8();

    v48 = os_log_type_enabled(v46, v47);
    if ((v43 & 1) == 0)
    {
      v129 = v45;
      if (v48)
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v69 = 138412290;
        v71 = v129;
        *(v69 + 4) = v129;
        *v70 = v42;
        v72 = v71;
        _os_log_impl(&dword_1B1A8A000, v46, v47, "New voice will be downloaded: %@", v69, 0xCu);
        sub_1B1B1AF0C(v70);
        MEMORY[0x1B2739FD0](v70, -1, -1);
        MEMORY[0x1B2739FD0](v69, -1, -1);
      }

      v73 = v131;
      goto LABEL_23;
    }

    if (v48)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      *(v49 + 4) = v45;
      *v50 = v42;
      v51 = v45;
      _os_log_impl(&dword_1B1A8A000, v46, v47, "Voice is locally available already: %@", v49, 0xCu);
      sub_1B1B1AF0C(v50);
      MEMORY[0x1B2739FD0](v50, -1, -1);
      MEMORY[0x1B2739FD0](v49, -1, -1);
    }

    v52 = (*((*MEMORY[0x1E69E7D40] & *v45) + 0x118))();
    if (v52)
    {
      v53 = v52;
      v54 = sub_1B1ABFFF8();
      v55 = [v53 bundlePath];
      v56 = sub_1B1C2CB58();
      v57 = v45;
      v59 = v58;

      type metadata accessor for VoiceAsset();
      v60 = swift_allocObject();
      v60[2] = v54;
      v60[3] = v56;
      v60[4] = v59;
      a4(0, v60);

      return;
    }

    type metadata accessor for TTSAssetMAAsset();
    v83 = swift_dynamicCastClass();
    v73 = v131;
    v129 = v45;
    if (v83)
    {
      v84 = v83;
      v133 = a2;
      v85 = v45;
      v86 = sub_1B1C2C888();
      v87 = sub_1B1C2D0C8();
      if (!os_log_type_enabled(v86, v87))
      {

        goto LABEL_35;
      }

      v138 = a4;
      v88 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      aBlock = v127;
      v128 = v88;
      *v88 = 136315138;
      v89 = [*(v84 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset) getLocalFileUrl];
      v132 = v85;

      if (v89)
      {
        v90 = v134;
        sub_1B1C2C168();

        v92 = v135;
        v91 = v136;
        v93 = v137;
        (*(v136 + 32))(v135, v90, v137);
        sub_1B1A97A5C(&qword_1ED9A5260, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v94 = sub_1B1C2D778();
        v96 = v95;
        (*(v91 + 8))(v92, v93);
        v97 = sub_1B1A930E4(v94, v96, &aBlock);

        v98 = v128;
        *(v128 + 1) = v97;
        _os_log_impl(&dword_1B1A8A000, v86, v87, "Locally available MAAsset has no bundle: %s", v98, 0xCu);
        v99 = v127;
        __swift_destroy_boxed_opaque_existential_0(v127);
        MEMORY[0x1B2739FD0](v99, -1, -1);
        MEMORY[0x1B2739FD0](v98, -1, -1);

        a4 = v138;
LABEL_35:
        a2 = v133;
LABEL_23:
        v74 = v140;
        v75 = v129;
        if (v140)
        {
          v144 = v130;
          aBlock = v129;
          v76 = v129;
          v77 = v139;
          sub_1B1A94514(v74, v139);
          v74(&aBlock);
          sub_1B1A949B4(v74, v77);
          __swift_destroy_boxed_opaque_existential_0(&aBlock);
        }

        v78 = swift_allocObject();
        *(v78 + 16) = a8;
        *(v78 + 24) = v14;
        v145 = sub_1B1B4B110;
        v146 = v78;
        aBlock = MEMORY[0x1E69E9820];
        v142 = 1107296256;
        v143 = sub_1B1B203B8;
        v144 = &block_descriptor_66_0;
        v79 = _Block_copy(&aBlock);
        sub_1B1A94514(a8, v14);

        v80 = swift_allocObject();
        v80[2] = a4;
        v80[3] = v73;
        v80[4] = v75;
        v145 = sub_1B1B70F48;
        v146 = v80;
        aBlock = MEMORY[0x1E69E9820];
        v142 = 1107296256;
        v143 = sub_1B1B20428;
        v144 = &block_descriptor_72_0;
        v81 = _Block_copy(&aBlock);
        v82 = v75;

        [v82 downloadWithOptions:a2 progress:v79 then:v81];
        _Block_release(v81);
        _Block_release(v79);

        return;
      }

      __break(1u);
LABEL_42:
      __break(1u);
      return;
    }

    v135 = a9;
    type metadata accessor for TTSAssetFactoryTrialAsset();
    v100 = swift_dynamicCastClass();
    v101 = v45;
    v102 = v101;
    if (v100)
    {
      v103 = v101;
      v104 = sub_1B1C2C888();
      v105 = sub_1B1C2D0C8();
      if (os_log_type_enabled(v104, v105))
      {
        v138 = a8;
        v106 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        aBlock = v127;
        v128 = v106;
        *v106 = 136315138;
        v107 = [*(v100 + OBJC_IVAR____TtC14SiriTTSService25TTSAssetFactoryTrialAsset_asset) getLocalUrl];
        v134 = v103;

        if (!v107)
        {
          goto LABEL_42;
        }

        v108 = v132;
        sub_1B1C2C168();

        v109 = v136;
        v110 = v137;
        v111 = v133;
        (*(v136 + 32))(v133, v108, v137);
        sub_1B1A97A5C(&qword_1ED9A5260, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v112 = sub_1B1C2D778();
        v114 = v113;
        (*(v109 + 8))(v111, v110);
        v115 = sub_1B1A930E4(v112, v114, &aBlock);

        v116 = v128;
        *(v128 + 1) = v115;
        _os_log_impl(&dword_1B1A8A000, v104, v105, "Locally available FactoryTrialAsset has no bundle: %s", v116, 0xCu);
        v117 = v127;
        __swift_destroy_boxed_opaque_existential_0(v127);
        MEMORY[0x1B2739FD0](v117, -1, -1);
        MEMORY[0x1B2739FD0](v116, -1, -1);

        a8 = v138;
      }

      else
      {
      }
    }

    else
    {
      v118 = sub_1B1C2C888();
      v119 = sub_1B1C2D0C8();

      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = a8;
        v122 = a2;
        v123 = a4;
        v124 = swift_slowAlloc();
        *v120 = 138412290;
        *(v120 + 4) = v102;
        *v124 = v42;
        v125 = v102;
        _os_log_impl(&dword_1B1A8A000, v118, v119, "Locally available voice has no bundle: %@", v120, 0xCu);
        sub_1B1B1AF0C(v124);
        v126 = v124;
        a4 = v123;
        a2 = v122;
        a8 = v121;
        MEMORY[0x1B2739FD0](v126, -1, -1);
        MEMORY[0x1B2739FD0](v120, -1, -1);
      }
    }

    v14 = v135;
    goto LABEL_23;
  }

  aBlock = 0;
  v142 = 0xE000000000000000;
  sub_1B1C2D538();

  aBlock = 0xD00000000000001ELL;
  v142 = 0x80000001B1C4DD60;
  v61 = [v25 description];
  v62 = sub_1B1C2CB58();
  v64 = v63;

  MEMORY[0x1B27381B0](v62, v64);

  v65 = aBlock;
  v66 = v142;
  sub_1B1A9EC9C();
  v67 = swift_allocError();
  *v68 = 5;
  *(v68 + 8) = v65;
  *(v68 + 16) = v66;
  a4(v67, 0);
}