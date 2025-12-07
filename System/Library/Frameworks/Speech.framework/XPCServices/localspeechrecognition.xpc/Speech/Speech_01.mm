uint64_t SelfLoggingHelper.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t SelfLoggingPreheatWithPowerContainer.__deallocating_deinit()
{
  SelfLoggingPreheatWithPowerContainer.deinit();

  return _swift_deallocClassInstance(v0, 40, 7);
}

void sub_1000167D0(_TtC22localspeechrecognition19EARSpeechRecognizer *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (*a1->transaction && (sub_10000ECEC(&qword_10006F130, &qword_10004CCC0), v9 = sub_10004721C(), v10 = v9, (v11 = *a1->transaction) != 0))
  {
    v12 = 0;
    v13 = v9 + 56;
    while (v12 < *a1->transaction)
    {
      v14 = &a1->audioBufferListeners[16 * v12];
      v16 = *v14;
      v15 = *(v14 + 1);
      ++v12;
      sub_10004745C();

      sub_100046EAC();
      v17 = sub_10004748C();
      v18 = ~(-1 << *(v10 + 32));
      while (1)
      {
        v19 = v17 & v18;
        v20 = (v17 & v18) >> 6;
        v21 = *(v13 + 8 * v20);
        v22 = 1 << (v17 & v18);
        if ((v22 & v21) == 0)
        {
          break;
        }

        v23 = (*(v10 + 48) + 16 * v19);
        a2 = v23[1];
        v24 = *v23 == v16 && a2 == v15;
        if (v24 || (sub_1000473EC() & 1) != 0)
        {
          v15, a2, a3, a4, a5, a6, a7, a8;
          goto LABEL_16;
        }

        v17 = v19 + 1;
      }

      *(v13 + 8 * v20) = v22 | v21;
      v25 = (*(v10 + 48) + 16 * v19);
      *v25 = v16;
      v25[1] = v15;
      v26 = *(v10 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_19;
      }

      *(v10 + 16) = v28;
LABEL_16:
      if (v12 == v11)
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
    a1, a2, a3, a4, a5, a6, a7, a8;
  }
}

uint64_t sub_100016960(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_1000029E4(0, a3, a4);
  sub_100005424();
  v8 = sub_100046EFC();

  return v8;
}

unint64_t sub_1000169D0()
{
  result = qword_10006F160;
  if (!qword_10006F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F160);
  }

  return result;
}

__n128 sub_100016AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a17, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a18)
{
  result = a18;
  *v18 = a18.n128_u32[0];
  return result;
}

void sub_100016B20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 96);

  _os_log_impl(a1, v8, v4, a4, v5, 2u);
}

id sub_100016B40(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void sub_100016B58(uint64_t a1, uint64_t a2, _TtC22localspeechrecognition19EARSpeechRecognizer *a3)
{
  sub_10000ECEC(&qword_10006F228, &qword_10004CD08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10004CCE0;
  *(inited + 32) = 0x6E65764520525341;
  *(inited + 40) = 0xE900000000000074;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v7 = sub_100046D8C();
  if (a3)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v7;
    sub_100017048(a3, sub_100017304, 0, isUniquelyReferenced_nonNull_native, &v26);
    v7 = v26;
  }

  v9 = sub_100046E4C();
  v10 = sub_100023550(v7);
  v7, v11, v12, v13, v14, v15, v16, v17;
  isa = sub_100046D6C().super.isa;
  v10, v19, v20, v21, v22, v23, v24, v25;
  SFPLLogRegisteredEvent();
}

void sub_100016CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10000ECEC(&qword_10006F228, &qword_10004CD08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10004CCE0;
  *(inited + 32) = 0x746163696C707041;
  *(inited + 40) = 0xEF656D614E6E6F69;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v13 = sub_100046D8C();
  if (a4)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100025B6C(a3, a4, 0x65676175676E614CLL, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    v15 = sub_1000041D0(0x65676175676E614CLL, 0xE800000000000000);
    if (v16)
    {
      v17 = v15;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v63 = v13;
      v19 = *v13->resultStream;
      sub_10000ECEC(&qword_10006FF10, &unk_10004CD10);
      sub_1000472EC(v18, v19);
      v13 = v63;
      *(*v63->assets + 16 * v17 + 8), v20, v21, v22, v23, v24, v25, v26;
      v27 = *(*v63->languageStr + 16 * v17 + 8);
      sub_10004730C();
      v27, v28, v29, v30, v31, v32, v33, v34;
    }
  }

  if (a6)
  {

    v35 = swift_isUniquelyReferenced_nonNull_native();
    sub_100025B6C(a5, a6, 0x7265566C65646F4DLL, 0xEC0000006E6F6973, v35);
  }

  else
  {
    v36 = sub_1000041D0(0x7265566C65646F4DLL, 0xEC0000006E6F6973);
    if (v37)
    {
      v38 = v36;
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v64 = v13;
      v40 = *v13->resultStream;
      sub_10000ECEC(&qword_10006FF10, &unk_10004CD10);
      sub_1000472EC(v39, v40);
      v13 = v64;
      *(*v64->assets + 16 * v38 + 8), v41, v42, v43, v44, v45, v46, v47;
      v48 = *(*v64->languageStr + 16 * v38 + 8);
      sub_10004730C();
      v48, v49, v50, v51, v52, v53, v54, v55;
    }
  }

  sub_100016B58(0xD000000000000024, 0x800000010004E430, v13);
  v13, v56, v57, v58, v59, v60, v61, v62;
}

uint64_t sub_100016FFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;

  return a2;
}

uint64_t sub_100017048(_TtC22localspeechrecognition19EARSpeechRecognizer *a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v87 = a5;
  sub_100019824(a1, a2, a3, v86);
  v7 = v86[1];
  v8 = v86[3];
  v9 = v86[4];
  v78 = v86[5];
  v79 = v86[0];
  v10 = (v86[2] + 64) >> 6;
  v75 = a1;

  v76 = v10;
  v77 = v7;
  if (v9)
  {
    while (1)
    {
      v80 = a4;
      v11 = v8;
LABEL_8:
      v13 = (v11 << 10) | (16 * __clz(__rbit64(v9)));
      v14 = (*(v79 + 48) + v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = (*(v79 + 56) + v13);
      v18 = *v17;
      v19 = v17[1];
      v85[0] = v15;
      v85[1] = v16;
      v85[2] = v18;
      v85[3] = v19;

      v78(&v81, v85);
      v19, v20, v21, v22, v23, v24, v25, v26;
      v16, v27, v28, v29, v30, v31, v32, v33;
      v34 = v81;
      v35 = v82;
      v36 = v83;
      v37 = v84;
      v38 = *v87;
      v46 = sub_1000041D0(v81, v82);
      v47 = v38[2];
      v48 = (v39 & 1) == 0;
      v49 = v47 + v48;
      if (__OFADD__(v47, v48))
      {
        break;
      }

      v50 = v39;
      if (v38[3] >= v49)
      {
        if ((v80 & 1) == 0)
        {
          sub_10000ECEC(&qword_10006FF10, &unk_10004CD10);
          sub_1000472FC();
        }
      }

      else
      {
        sub_10002DB48(v49, v80 & 1);
        v51 = sub_1000041D0(v34, v35);
        if ((v50 & 1) != (v39 & 1))
        {
          goto LABEL_24;
        }

        v46 = v51;
      }

      v9 &= v9 - 1;
      v52 = *v87;
      if (v50)
      {
        v35, v39, v40, v41, v42, v43, v44, v45;
        v53 = (v52[7] + 16 * v46);
        v54 = v53[1];
        *v53 = v36;
        v53[1] = v37;
        v54, v55, v56, v57, v58, v59, v60, v61;
      }

      else
      {
        v52[(v46 >> 6) + 8] |= 1 << v46;
        v62 = (v52[6] + 16 * v46);
        *v62 = v34;
        v62[1] = v35;
        v63 = (v52[7] + 16 * v46);
        *v63 = v36;
        v63[1] = v37;
        v64 = v52[2];
        v65 = __OFADD__(v64, 1);
        v66 = v64 + 1;
        if (v65)
        {
          goto LABEL_23;
        }

        v52[2] = v66;
      }

      a4 = 1;
      v8 = v11;
      v10 = v76;
      v7 = v77;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v12 = v8;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        sub_100003C40(v79);

        v75, v67, v68, v69, v70, v71, v72, v73;
      }

      v9 = *(v7 + 8 * v11);
      ++v12;
      if (v9)
      {
        v80 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_10004740C();
  __break(1u);
  return result;
}

uint64_t sub_100017304@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100016FFC(v7, *a1, a1[1], a1[2], a1[3]);
  v4 = v7[0];
  v5 = v7[1];
  *a2 = result;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

uint64_t sub_100017348()
{
  sub_10000619C(v0 + OBJC_IVAR____TtC22localspeechrecognition14OndeviceRecord_asrId);
  sub_10000619C(v0 + OBJC_IVAR____TtC22localspeechrecognition14OndeviceRecord_requestId);
  sub_100004E68(OBJC_IVAR____TtC22localspeechrecognition14OndeviceRecord_invocationType, v1, v2, v3, v4, v5, v6, v7);
  sub_100004E68(OBJC_IVAR____TtC22localspeechrecognition14OndeviceRecord_triggerType, v8, v9, v10, v11, v12, v13, v14);
  sub_100004E68(OBJC_IVAR____TtC22localspeechrecognition14OndeviceRecord_asrTask, v15, v16, v17, v18, v19, v20, v21);
  sub_100004E68(OBJC_IVAR____TtC22localspeechrecognition14OndeviceRecord_bundleId, v22, v23, v24, v25, v26, v27, v28);
  sub_100004E68(OBJC_IVAR____TtC22localspeechrecognition14OndeviceRecord_clientId, v29, v30, v31, v32, v33, v34, v35);
  sub_100004E68(OBJC_IVAR____TtC22localspeechrecognition14OndeviceRecord_geoLMRegionId, v36, v37, v38, v39, v40, v41, v42);
  sub_100004E68(OBJC_IVAR____TtC22localspeechrecognition14OndeviceRecord_locale, v43, v44, v45, v46, v47, v48, v49);
  sub_100004E68(OBJC_IVAR____TtC22localspeechrecognition14OndeviceRecord_deviceClass, v50, v51, v52, v53, v54, v55, v56);
  sub_100004E68(OBJC_IVAR____TtC22localspeechrecognition14OndeviceRecord_deviceType, v57, v58, v59, v60, v61, v62, v63);
  sub_100004E68(OBJC_IVAR____TtC22localspeechrecognition14OndeviceRecord_deviceBuild, v64, v65, v66, v67, v68, v69, v70);
  *(v0 + OBJC_IVAR____TtC22localspeechrecognition14OndeviceRecord_enabledDictationLocales), v71, v72, v73, v74, v75, v76, v77;
  *(v0 + OBJC_IVAR____TtC22localspeechrecognition14OndeviceRecord_activeDictationLanguages), v78, v79, v80, v81, v82, v83, v84;
  return v0;
}

uint64_t sub_100017418()
{
  sub_100017348();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for OndeviceRecord(uint64_t a1)
{
  result = qword_10006F258;
  if (!qword_10006F258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000174C4(uint64_t a1)
{
  sub_1000175D4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000175D4(uint64_t a1)
{
  if (!qword_100070000)
  {
    sub_100046BBC();
    v1 = sub_10004710C();
    if (!v2)
    {
      atomic_store(v1, &qword_100070000);
    }
  }
}

uint64_t sub_10001762C()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

localspeechrecognition::TaskHint_optional __swiftcall TaskHint.init(taskString:)(Swift::String taskString)
{
  object = taskString._object;
  v2 = sub_100046E8C();
  v4 = v3;
  object, v3, v5, v6, v7, v8, v9, v10;
  v11 = 0;
LABEL_2:
  v12 = &off_100065740 + v11;
  v13 = *(&off_100065740 + v11++ + 32);
  v14 = TaskHint.preferredModelTaskNames.getter(v12[32]);
  v22 = v14;
  v23 = &v14->audioBufferListeners[8];
  v24 = -*v14->transaction;
  v25 = -1;
  while (1)
  {
    if (v24 + v25 == -1)
    {
      v22, v15, v16, v17, v18, v19, v20, v21;
      if (v11 != 16)
      {
        goto LABEL_2;
      }

      v4, v44, v45, v46, v47, v48, v49, v50;
      v13 = 16;
      goto LABEL_15;
    }

    if (++v25 >= *v22->transaction)
    {
      break;
    }

    v26 = sub_100046E8C();
    v34 = v27;
    if (v26 == v2 && v27 == v4)
    {
      v4, v27, v28, v29, v30, v31, v32, v33;
      v22, v51, v52, v53, v54, v55, v56, v57;
      v65 = v34;
LABEL_14:
      v65, v58, v59, v60, v61, v62, v63, v64;
LABEL_15:
      LOBYTE(v14) = v13;
      return v14;
    }

    v23 += 16;
    v36 = sub_1000473EC();
    v34, v37, v38, v39, v40, v41, v42, v43;
    if (v36)
    {
      v4, v15, v16, v17, v18, v19, v20, v21;
      v65 = v22;
      goto LABEL_14;
    }
  }

  __break(1u);
  return v14;
}

BOOL sub_1000177C8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v18[0] = *(v5 - 1);
    v18[1] = v7;

    v8 = a1(v18);
    if (v3)
    {
      v7, v9, v10, v11, v12, v13, v14, v15;
      return v6 != 0;
    }

    v16 = v8;
    v5 += 2;
    v7, v9, v10, v11, v12, v13, v14, v15;
  }

  while ((v16 & 1) == 0);
  return v6 != 0;
}

Swift::Int TaskHint.hashValue.getter(unsigned __int8 a1)
{
  sub_10004745C();
  sub_10004746C(a1);
  return sub_10004748C();
}

Swift::Int sub_100017928(uint64_t a1)
{
  v2 = *v1;
  sub_10004745C();
  TaskHint.hash(into:)(v4, v2);
  return sub_10004748C();
}

unint64_t sub_100017970()
{
  result = qword_10006F730;
  if (!qword_10006F730)
  {
    sub_1000179D4(&qword_10006F738, &qword_10004CE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F730);
  }

  return result;
}

uint64_t sub_1000179D4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100017A20()
{
  result = qword_10006F740;
  if (!qword_10006F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F740);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TaskHint(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for TaskHint(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_100017C00(uint64_t a1, void (**a2)(void, void))
{
  v12 = &_swiftEmptySetSingleton;
  sub_1000186D8(a1, &v12);
  v3 = v12;
  sub_100046C3C();
  sub_100019FCC(&qword_10006F878, &protocol conformance descriptor for Locale);
  isa = sub_100046FAC().super.isa;
  (a2)[2](a2, isa);
  v3, v5, v6, v7, v8, v9, v10, v11;

  _Block_release(a2);
}

void sub_100017D20(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v96 = a2;
  v5 = sub_100046E3C();
  __chkstk_darwin(v5 - 8);
  v102 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100046C3C();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v101 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v97 = &v93 - v11;
  v12 = sub_10000ECEC(&unk_10006FF20, &qword_10004D2E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v93 - v13;
  v15 = [objc_opt_self() supportedLanguagesForAssetType:3];
  v16 = sub_100046EFC();

  v24 = *v16->transaction;
  if (v24)
  {
    v94 = v14;
    v95 = a1;
    v98 = v8;
    v99 = v7;
    v100 = a3;
    v108 = _swiftEmptyArrayStorage;
    sub_100004A54(0, v24, 0);
    v25 = v108;
    v26 = sub_1000169D0();
    v93 = v16;
    v27 = &v16->audioBufferListeners[8];
    do
    {
      v28 = *v27;
      v106 = *(v27 - 1);
      v107 = v28;
      v104 = 45;
      v105 = 0xE100000000000000;
      v103[0] = 95;
      v103[1] = 0xE100000000000000;
      v91 = v26;
      v92 = v26;
      v89 = &type metadata for String;
      v90 = v26;
      v36 = sub_10004711C();
      v37 = v29;
      v108 = v25;
      v39 = *v25->transaction;
      v38 = *v25->resultStream;
      if (v39 >= v38 >> 1)
      {
        sub_100004A54((v38 > 1), v39 + 1, 1);
        v25 = v108;
      }

      *v25->transaction = v39 + 1;
      v40 = v25 + 16 * v39;
      *(v40 + 4) = v36;
      *(v40 + 5) = v37;
      v27 += 2;
      --v24;
    }

    while (v24);
    v93, v29, v30, v31, v32, v33, v34, v35;
    v7 = v99;
    a3 = v100;
    v8 = v98;
    v14 = v94;
  }

  else
  {
    v16, v17, v18, v19, v20, v21, v22, v23;
    v25 = _swiftEmptyArrayStorage;
  }

  sub_100046C0C();
  if (sub_100004844(v14, 1, v7) == 1)
  {
    v25, v41, v42, v43, v44, v45, v46, v47;
    sub_100019F64(v14);
LABEL_14:
    sub_100046DCC();
    sub_10001A010();
    sub_1000470BC();
    sub_100046C2C();
    sub_100046E6C();
    sub_10004706C();
    v87 = sub_100046D5C();
    v88 = sub_100046A6C();
    (a3)[2](a3, 0, v88);

    goto LABEL_17;
  }

  v48 = sub_100046BDC();
  v50 = v49;
  v51 = *(v8 + 8);
  v52 = v51(v14, v7);
  v106 = v48;
  v107 = v50;
  __chkstk_darwin(v52);
  v91 = &v106;
  v53 = sub_1000177C8(sub_10001A080, &v89, v25);
  v25, v54, v55, v56, v57, v58, v59, v60;
  if (!v53)
  {
    v50, v61, v62, v63, v64, v65, v66, v67;
    goto LABEL_14;
  }

  v68 = v97;
  v69 = sub_100046BCC();
  LOBYTE(v103[0]) = 0;
  LOBYTE(v108) = 0;
  __chkstk_darwin(v69);
  v89 = &v108;
  v90 = v68;
  v91 = v103;
  sub_100018B4C(sub_10001A0A0, (&v93 - 6));
  if (v103[0])
  {
    sub_10004705C();
    v106 = 0;
    v107 = 0xE000000000000000;
    sub_10004723C(39);
    v107, v70, v71, v72, v73, v74, v75, v76;
    v106 = 0xD00000000000001CLL;
    v107 = 0x800000010004E7A0;
    sub_100046D4C();
    v104 = sub_100046D3C();
    v109._countAndFlagsBits = sub_1000473CC();
    object = v109._object;
    sub_100046EBC(v109);
    object, v78, v79, v80, v81, v82, v83, v84;
    v110._countAndFlagsBits = 0x6D756D6978616D20;
    v110._object = 0xE90000000000002ELL;
    sub_100046EBC(v110);
    v85 = sub_100046D5C();
    v86 = sub_100046A6C();
    (a3)[2](a3, 0, v86);
  }

  else
  {
    a3[2](a3, v108, 0);
  }

  v51(v68, v7);
LABEL_17:
  _Block_release(a3);
}

BOOL sub_100018304(uint64_t a1, _BYTE *a2, uint64_t a3, char *a4)
{
  v8 = sub_100046C3C();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v20 - v13;
  (*(v9 + 16))(v12, a3, v8);
  LOBYTE(a3) = sub_10002E1BC(v14, v12);
  (*(v9 + 8))(v14, v8);
  *a2 = a3 & 1;
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  v15 = *(*a1 + 16);
  sub_100046D4C();
  v16 = sub_100046D3C();
  v17 = v16 < v15;
  result = v16 >= v15;
  v19 = v17;
  *a4 = v19;
  return result;
}

void sub_100018480(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = 0;
  v4[2] = &v5;
  v4[3] = a1;
  sub_100018B4C(sub_100019F5C, v4);
  a3[2](a3, v5);
  _Block_release(a3);
}

BOOL sub_1000184F0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = sub_10000ECEC(&unk_10006FF20, &qword_10004D2E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  sub_1000191E4(a3, &v11 - v6);
  v8 = sub_100046C3C();
  v9 = sub_100004844(v7, 1, v8) != 1;
  sub_100019F64(v7);
  *a2 = v9;
  return v9;
}

uint64_t sub_1000185C4(void *a1, uint64_t a2, uint64_t a3, const void *a4, void (*a5)(char *, id, void *))
{
  v8 = sub_100046C3C();
  sub_100004E00();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a4);
  sub_100046BFC();
  _Block_copy(v14);
  v15 = a1;
  a5(v13, v15, v14);
  _Block_release(v14);

  return (*(v10 + 8))(v13, v8);
}

void sub_1000186D8(uint64_t a1, _TtC22localspeechrecognition19EARSpeechRecognizer **a2)
{
  v61 = a2;
  v3 = sub_100046C3C();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v66 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v67 = &v59 - v7;
  v71 = *(a1 + OBJC_IVAR____TtC22localspeechrecognition20LSRLSRAssetInventory_bundleId);
  v69 = 0xD000000000000040;
  v70 = 0x800000010004E6F0;
  sub_100046EBC(v71);
  v8 = v70;
  v9 = [objc_opt_self() standardUserDefaults];
  v60 = v8;
  v10 = sub_100046E4C();
  v11 = [v9 stringArrayForKey:v10];

  if (v11)
  {
    v12 = sub_100046EFC();
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v13 = sub_100026780(v12, sub_100019078, 0);
  v69 = v13;
  v14 = sub_100046D4C();
  v15 = *(v13 + 16);
  v65 = v14;
  if (sub_100046D3C() >= v15)
  {
LABEL_18:
    v50 = v60;
    v51 = *v61;
    *v61 = v13;
    v50, v16, v17, v18, v19, v20, v21, v22;
    v51, v52, v53, v54, v55, v56, v57, v58;
  }

  else
  {
    v24 = (v4 + 16);
    v64 = (v4 + 8);
    p_base_props = &EARInterface.base_props;
    *&v23 = 136315138;
    v63 = v23;
    v62 = (v4 + 16);
    while (*(v13 + 16))
    {
      v26 = 0;
      v27 = (v13 + 56);
      v28 = 1 << *(v13 + 32);
      v29 = (v28 + 63) >> 6;
      if (v29)
      {
        while (!*v27)
        {
          v26 -= 64;
          --v29;
          ++v27;
          if (!v29)
          {
            goto LABEL_12;
          }
        }

        v28 = __clz(__rbit64(*v27)) - v26;
      }

LABEL_12:
      sub_100019728(v28, *(v13 + 36), v67);
      if (p_base_props[424] != -1)
      {
        swift_once();
      }

      v30 = sub_100046D1C();
      sub_100004D64(v30, qword_1000714B8);
      (*v24)(v66, v67, v3);
      v31 = sub_100046D0C();
      v32 = sub_10004700C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v68 = v34;
        *v33 = v63;
        sub_100019FCC(&qword_10006F870, &protocol conformance descriptor for Locale);
        v35 = v66;
        v36 = sub_1000473CC();
        v38 = v37;
        v39 = *v64;
        (*v64)(v35, v3);
        v40 = sub_100004EB4(v36, v38, &v68);
        v41 = v38;
        v24 = v62;
        v41, v42, v43, v44, v45, v46, v47, v48;
        *(v33 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v31, v32, "Too many locales in allocatedLocales, removing %s.", v33, 0xCu);
        sub_1000050D4(v34);

        p_base_props = (&EARInterface + 64);
      }

      else
      {

        v39 = *v64;
        (*v64)(v66, v3);
      }

      v39(v67, v3);
      v13 = v69;
      v49 = *(v69 + 16);
      if (sub_100046D3C() >= v49)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }
}

void sub_100018B4C(uint64_t (*a1)(unint64_t *), uint64_t a2)
{
  v84 = a2;
  v85 = a1;
  v3 = sub_100046C3C();
  sub_100004E00();
  v5 = v4;
  v7 = __chkstk_darwin(v6);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v81 - v10;
  v95 = *(v2 + OBJC_IVAR____TtC22localspeechrecognition20LSRLSRAssetInventory_bundleId);
  v93 = 0xD000000000000040;
  v94 = 0x800000010004E6F0;
  sub_100046EBC(v95);
  v13 = v93;
  v12 = v94;
  v82 = objc_opt_self();
  v14 = [v82 standardUserDefaults];
  v83 = v13;
  v86 = v12;
  v15 = sub_100046E4C();
  v16 = [v14 stringArrayForKey:v15];

  if (v16)
  {
    v17 = sub_100046EFC();
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v18 = sub_100026780(v17, sub_100019078, 0);
  v93 = v18;
  v19 = sub_100046D4C();
  v20 = *v18->transaction;
  v91 = v19;
  if (sub_100046D3C() >= v20)
  {
LABEL_18:
    if (v85(&v93))
    {
      v55 = v93;
      sub_10001989C(v93, sub_1000190C8, 0);
      v55, v56, v57, v58, v59, v60, v61, v62;
      v63 = [v82 standardUserDefaults];
      isa = sub_100046EEC().super.isa;

      v65 = v86;
      v66 = sub_100046E4C();
      v65, v67, v68, v69, v70, v71, v72, v73;
      [v63 setObject:isa forKey:v66];
    }

    else
    {
      v86, v48, v49, v50, v51, v52, v53, v54;
      v93, v74, v75, v76, v77, v78, v79, v80;
    }
  }

  else
  {
    v22 = (v5 + 16);
    v90 = (v5 + 8);
    p_base_props = &EARInterface.base_props;
    *&v21 = 136315138;
    v87 = v21;
    v88 = v11;
    v89 = (v5 + 16);
    while (*v18->transaction)
    {
      v24 = 0;
      languageStr = v18->languageStr;
      v26 = 1 << v18->audioBufferListeners[0];
      v27 = (v26 + 63) >> 6;
      if (v27)
      {
        while (!*languageStr)
        {
          v24 -= 64;
          --v27;
          ++languageStr;
          if (!v27)
          {
            goto LABEL_12;
          }
        }

        v26 = __clz(__rbit64(*languageStr)) - v24;
      }

LABEL_12:
      sub_100019728(v26, *&v18->audioBufferListeners[4], v11);
      if (p_base_props[424] != -1)
      {
        swift_once();
      }

      v28 = sub_100046D1C();
      sub_100004D64(v28, qword_1000714B8);
      (*v22)(v9, v11, v3);
      v29 = sub_100046D0C();
      v30 = sub_10004700C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v92 = v32;
        *v31 = v87;
        sub_100019FCC(&qword_10006F870, &protocol conformance descriptor for Locale);
        v33 = sub_1000473CC();
        v35 = v34;
        v36 = v9;
        v37 = *v90;
        (*v90)(v36, v3);
        v38 = sub_100004EB4(v33, v35, &v92);
        v35, v39, v40, v41, v42, v43, v44, v45;
        *(v31 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v29, v30, "Too many locales in allocatedLocales, removing %s.", v31, 0xCu);
        sub_1000050D4(v32);
        v11 = v88;

        v22 = v89;

        v37(v11, v3);
        v9 = v36;
        p_base_props = (&EARInterface + 64);
      }

      else
      {

        v46 = *v90;
        (*v90)(v9, v3);
        v46(v11, v3);
      }

      v18 = v93;
      v47 = *v93->transaction;
      if (sub_100046D3C() >= v47)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100019078(uint64_t *a1)
{

  return sub_100046BCC();
}

uint64_t sub_1000190C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100046BDC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_100019134()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LSRLSRAssetInventory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000191A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1000473EC() & 1;
  }
}

uint64_t sub_1000191E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_100046C3C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = *v2;
  sub_100019FCC(&qword_10006F878, &protocol conformance descriptor for Locale);
  v25 = a1;
  v9 = sub_100046D9C();
  v24 = v8;
  v10 = ~(-1 << *(v8 + 32));
  while (1)
  {
    v11 = v9 & v10;
    if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
    {
      v14 = 1;
      v15 = v23;
      return sub_1000045DC(v15, v14, 1, v4);
    }

    v12 = *(v5 + 72) * v11;
    (*(v5 + 16))(v7, *(v24 + 48) + v12, v4);
    sub_100019FCC(&qword_10006FF30, &protocol conformance descriptor for Locale);
    v13 = sub_100046DBC();
    (*(v5 + 8))(v7, v4);
    if (v13)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v16;
  v26 = *v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10002F750();
    v18 = v26;
  }

  v19 = *(v18 + 48) + v12;
  v15 = v23;
  (*(v5 + 32))(v23, v19, v4);
  sub_100019430(v11);
  v14 = 0;
  *v16 = v26;
  return sub_1000045DC(v15, v14, 1, v4);
}

uint64_t sub_100019430(int64_t a1)
{
  v3 = sub_100046C3C();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_10004714C();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v37 = (v13 + 1) & v12;
      v15 = *(v4 + 16);
      v14 = v4 + 16;
      v36 = v15;
      v16 = *(v14 + 56);
      v38 = v14;
      v39 = v16;
      v17 = v12;
      v18 = (v14 - 8);
      v19 = v8;
      while (1)
      {
        v20 = v9;
        v21 = v39 * v11;
        v22 = v17;
        v36(v7, *(v19 + 48) + v39 * v11, v3);
        v23 = v19;
        sub_100019FCC(&qword_10006F878, &protocol conformance descriptor for Locale);
        v24 = sub_100046D9C();
        (*v18)(v7, v3);
        v17 = v22;
        v25 = v24 & v22;
        if (a1 >= v37)
        {
          if (v25 < v37 || a1 < v25)
          {
LABEL_20:
            v19 = v23;
            goto LABEL_24;
          }
        }

        else if (v25 < v37 && a1 < v25)
        {
          goto LABEL_20;
        }

        v19 = v23;
        v27 = *(v23 + 48);
        v28 = v39 * a1;
        v29 = v27 + v39 * a1;
        v30 = v27 + v21 + v39;
        if (v39 * a1 < v21 || v29 >= v30)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v17 = v22;
          a1 = v11;
          goto LABEL_24;
        }

        a1 = v11;
        if (v28 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v11 = (v11 + 1) & v17;
        v9 = v20;
        if (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v19 = v8;
LABEL_28:
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v19 = v8;
  }

  v33 = *(v19 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v35;
    ++*(v19 + 36);
  }

  return result;
}

uint64_t sub_100019728@<X0>(int64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a1 < 0 || (v9 = *v4, 1 << *(*v4 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v9 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v9 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = *v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
LABEL_10:
    sub_10002F750();
    v9 = v13;
  }

  v10 = *(v9 + 48);
  v11 = sub_100046C3C();
  (*(*(v11 - 8) + 32))(a3, v10 + *(*(v11 - 8) + 72) * a1, v11);
  result = sub_100019430(a1);
  *v4 = v13;
  return result;
}

uint64_t sub_100019824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_100019860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 56);
  result = a1 + 56;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_10001989C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = sub_100046C3C();
  v69 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000ECEC(&unk_10006FF20, &qword_10004D2E0);
  v8 = __chkstk_darwin(v7 - 8);
  v64 = (v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v74 = v60 - v11;
  v12 = __chkstk_darwin(v10);
  v67 = v60 - v13;
  __chkstk_darwin(v12);
  v15 = v60 - v14;
  v16 = *(a1 + 16);
  if (v16)
  {
    sub_10000ECEC(&qword_10006F880, &unk_10004CF10);
    v17 = swift_allocObject();
    v18 = 2 * ((j__malloc_size(v17) - 32) / 16);
    v17[2] = v16;
    v17[3] = v18;
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
    v18 = _swiftEmptyArrayStorage[3];
  }

  v65 = v17;
  v19 = v17 + 4;
  v20 = v18 >> 1;
  sub_100019860(a1, a2, a3, v77);
  v68 = v77[0];
  v21 = v77[1];
  v22 = v79;
  v23 = v80;
  v70 = v81;
  v72 = v82;
  v60[0] = v78;
  v24 = (v78 + 64) >> 6;
  v66 = v15;
  if (v16)
  {
    v25 = v16;
    v60[1] = v69 + 16;
    v62 = (v69 + 32);
    v61 = (v69 + 8);
    v20 -= v16;

    v27 = 0;
    v28 = v73;
    v63 = v25;
    while (v23)
    {
      v29 = v22;
      v30 = v74;
LABEL_13:
      v31 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      (*(v69 + 16))(v30, *(v68 + 48) + *(v69 + 72) * (v31 | (v29 << 6)), v28);
      v32 = 0;
LABEL_14:
      sub_1000045DC(v30, v32, 1, v28);
      v33 = v64;
      sub_100019EEC(v30, v64);
      result = sub_100004844(v33, 1, v28);
      if (result == 1)
      {
        goto LABEL_53;
      }

      v27 = (v27 + 1);
      v34 = v71;
      (*v62)(v71, v33, v28);
      v70(&v75, v34);
      v28 = v73;
      result = (*v61)(v34, v73);
      v35 = v76;
      *v19 = v75;
      v19[1] = v35;
      v19 += 2;
      if (v27 == v63)
      {
        v15 = v66;
        goto LABEL_19;
      }
    }

    v30 = v74;
    while (1)
    {
      v29 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v29 >= v24)
      {
        v23 = 0;
        v32 = 1;
        goto LABEL_14;
      }

      v23 = *(v21 + 8 * v29);
      ++v22;
      if (v23)
      {
        v22 = v29;
        goto LABEL_13;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  else
  {

    v28 = v73;
LABEL_19:
    v62 = (v69 + 16);
    v63 = (v69 + 8);
    v64 = (v69 + 32);
    while (1)
    {
      v36 = v23;
      v37 = v22;
      if (!v23)
      {
        v38 = v22;
        while (1)
        {
          v37 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            break;
          }

          if (v37 >= v24)
          {
            v74 = 0;
            v39 = 1;
            goto LABEL_26;
          }

          v36 = *(v21 + 8 * v37);
          ++v38;
          if (v36)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
        goto LABEL_49;
      }

LABEL_25:
      v74 = ((v36 - 1) & v36);
      (*(v69 + 16))(v15, *(v68 + 48) + *(v69 + 72) * (__clz(__rbit64(v36)) | (v37 << 6)), v28);
      v39 = 0;
      v38 = v37;
LABEL_26:
      sub_1000045DC(v15, v39, 1, v28);
      v40 = v67;
      sub_100019EEC(v15, v67);
      if (sub_100004844(v40, 1, v28) == 1)
      {
        break;
      }

      v41 = v71;
      (*v64)(v71, v40, v28);
      v70(&v75, v41);
      result = (*v63)(v41, v28);
      v43 = v75;
      v42 = v76;
      if (!v20)
      {
        v44 = v65;
        v45 = *(v65 + 24);
        if (((v45 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_51;
        }

        v46 = v45 & 0xFFFFFFFFFFFFFFFELL;
        if (v46 <= 1)
        {
          v47 = 1;
        }

        else
        {
          v47 = v46;
        }

        sub_10000ECEC(&qword_10006F880, &unk_10004CF10);
        v48 = swift_allocObject();
        v49 = (j__malloc_size(v48) - 32) / 16;
        v48[2] = v47;
        v48[3] = 2 * v49;
        v50 = (v48 + 4);
        v51 = *(v44 + 16);
        v52 = *(v44 + 24);
        v53 = v44;
        v54 = v52 >> 1;
        if (v51)
        {
          if (v48 != v53 || v50 >= &v53[2 * v54 + 4])
          {
            memmove(v48 + 4, v53 + 4, 16 * v54);
          }

          *(v65 + 16) = 0;
        }

        v19 = (v50 + 16 * v54);
        v20 = (v49 & 0x7FFFFFFFFFFFFFFFLL) - (v52 >> 1);

        v65 = v48;
      }

      v56 = __OFSUB__(v20--, 1);
      if (v56)
      {
        goto LABEL_50;
      }

      *v19 = v43;
      v19[1] = v42;
      v19 += 2;
      v22 = v38;
      v28 = v73;
      v23 = v74;
      v15 = v66;
    }

    sub_100003C40(v68);

    result = v65;
    v57 = *(v65 + 24);
    if (v57 < 2)
    {
      return result;
    }

    v58 = v57 >> 1;
    v56 = __OFSUB__(v58, v20);
    v59 = v58 - v20;
    if (!v56)
    {
      *(v65 + 16) = v59;
      return result;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_100019EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ECEC(&unk_10006FF20, &qword_10004D2E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019F64(uint64_t a1)
{
  v2 = sub_10000ECEC(&unk_10006FF20, &qword_10004D2E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100019FCC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100046C3C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001A010()
{
  result = qword_10006F888;
  if (!qword_10006F888)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006F888);
  }

  return result;
}

id sub_10001A0AC(uint64_t a1, uint64_t a2, _TtC22localspeechrecognition19EARSpeechRecognizer *a3, uint64_t a4, uint64_t a5)
{
  v113 = a4;
  v114 = a5;
  sub_100046C3C();
  sub_100004E00();
  v122 = v8;
  v123 = v7;
  __chkstk_darwin(v7);
  sub_10000B804();
  v116 = v9;
  v10 = sub_100046E3C();
  __chkstk_darwin(v10 - 8);
  sub_10000B804();
  v115 = v11;
  v119 = sub_100046A8C();
  sub_100004E00();
  v117 = v12;
  __chkstk_darwin(v13);
  sub_10000B804();
  v118 = v14;
  v15 = sub_10000ECEC(&qword_10006FED0, &qword_10004CF38);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v111 - v20;
  __chkstk_darwin(v19);
  v23 = &v111 - v22;
  v24 = sub_100046B0C();
  sub_100004E00();
  v126 = v25;
  v27 = __chkstk_darwin(v26);
  v29 = &v111 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v120 = &v111 - v30;
  v124 = a1;
  v31 = sub_100046C1C();
  v33 = v32;
  sub_1000045DC(v23, 1, 1, v24);
  v112 = v31;
  v121 = v33;
  v34 = sub_100046E4C();
  v35 = sub_100046E4C();
  a3, v36, v37, v38, v39, v40, v41, v42;
  sub_1000048DC(v23, v21);
  v44 = 0;
  if (sub_100004844(v21, 1, v24) != 1)
  {
    sub_100046A9C(v43);
    v44 = v45;
    (*(v126 + 8))(v21, v24);
  }

  v46 = objc_opt_self();
  v128 = 0;
  v47 = [v46 modelRootWithLanguage:v34 assetType:3 shouldSubscribe:1 clientID:v35 modelOverrideURL:v44 isSpelling:0 error:&v128];

  v48 = v128;
  if (!v47)
  {
    v89 = v128;
    v121, v90, v91, v92, v93, v94, v95, v96;
    sub_100046A7C();

    swift_willThrow();
    v97 = sub_100004160();
    v98(v97);
    sub_100005808(v23, &qword_10006FED0, &qword_10004CF38);
LABEL_15:
    type metadata accessor for EAREuclid();
    swift_deallocPartialClassInstance();
    return v48;
  }

  sub_100046E5C();
  v49 = v48;

  (*(v117 + 104))(v118, enum case for URL.DirectoryHint.isDirectory(_:), v119);
  sub_1000045DC(v18, 1, 1, v24);
  v50 = v120;
  sub_100046AFC();
  sub_100005808(v23, &qword_10006FED0, &qword_10004CF38);
  v51 = [objc_opt_self() jsonFilenameForAssetType:3];
  sub_100046E5C();
  v53 = v52;

  sub_100046AAC();
  v53, v54, v55, v56, v57, v58, v59, v60;
  v61 = sub_100046ADC();
  v63 = v62;
  v64 = *(v126 + 8);
  v64(v29, v24);
  sub_100046ADC();
  v66 = v65;
  v67 = sub_100046E4C();
  v66, v68, v69, v70, v71, v72, v73, v74;
  LOBYTE(v66) = [v46 isEuclidAvailableForConfigPath:v67];

  if ((v66 & 1) == 0)
  {
    v63, v75, v76, v77, v78, v79, v80, v81;
    v121, v99, v100, v101, v102, v103, v104, v105;
    sub_100046DCC();
    if (qword_10006DD78 != -1)
    {
      sub_100004E34(&qword_10006DD78);
    }

    v106 = off_100071650;
    sub_100046C2C();
    v48 = sub_100002B8C();
    sub_10004707C();
    goto LABEL_14;
  }

  v82 = objc_allocWithZone(_EAREuclid);
  v83 = sub_10001C410(v61, v63, v113, v114, v112, v121);
  if (!v83)
  {
    sub_100046DCC();
    if (qword_10006DD78 != -1)
    {
      sub_100004E34(&qword_10006DD78);
    }

    v48 = off_100071650;
    v107 = off_100071650;
    sub_100046C2C();
    sub_100002B8C();
LABEL_14:
    sub_100046D5C();
    swift_willThrow();
    v108 = sub_100004160();
    v109(v108);
    v64(v50, v24);
    goto LABEL_15;
  }

  v84 = v83;
  v64(v50, v24);
  v85 = v125;
  *&v125[OBJC_IVAR____TtC22localspeechrecognition9EAREuclid_euclidInstance] = v84;
  v86 = type metadata accessor for EAREuclid();
  v127.receiver = v85;
  v127.super_class = v86;
  v48 = objc_msgSendSuper2(&v127, "init");
  v87 = sub_100004160();
  v88(v87);
  return v48;
}

void sub_10001A7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v7 = sub_100046D1C();
  sub_100004D64(v7, qword_1000714B8);
  v8 = sub_100046D0C();
  v9 = sub_100046FFC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v63 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_100004EB4(0xD000000000000030, 0x800000010004E9B0, &v63);
    *(v10 + 12) = 2048;
    *(v10 + 14) = a3;
    _os_log_impl(&_mh_execute_header, v8, v9, "EAREuclid.%s with %ld requested neighbor(s)", v10, 0x16u);
    sub_1000050D4(v11);
  }

  v12 = *(a4 + OBJC_IVAR____TtC22localspeechrecognition9EAREuclid_euclidInstance);
  v13 = sub_100046E4C();
  v14 = [v12 findNearestNeighbors:v13 numberOfNeighbors:a3];

  sub_1000029E4(0, &qword_10006F928, _EAREuclidNeighbor_ptr);
  v15 = sub_100046EFC();

  v16 = sub_100046D0C();
  v17 = sub_100046FFC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v63 = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_100004EB4(0xD000000000000030, 0x800000010004E9B0, &v63);
    *(v18 + 12) = 2048;
    *(v18 + 14) = sub_10000AD40(v15);
    v15, v20, v21, v22, v23, v24, v25, v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "EAREuclid.%s replying with %ld neighbor(s)", v18, 0x16u);
    sub_1000050D4(v19);
  }

  else
  {

    v15, v27, v28, v29, v30, v31, v32, v33;
  }

  v34 = sub_10000AD40(v15);
  if (v34)
  {
    v42 = v34;
    v63 = _swiftEmptyArrayStorage;
    sub_1000472AC();
    if (v42 < 0)
    {
      __break(1u);
      return;
    }

    v43 = 0;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v44 = sub_10004725C();
      }

      else
      {
        v44 = *(v15 + 8 * v43 + 32);
      }

      v45 = v44;
      ++v43;
      [objc_allocWithZone(EAREuclidNeighbor) initWithEuclidNeighbor:v44];

      sub_10004728C();
      sub_1000472BC();
      sub_1000472CC();
      sub_10004729C();
    }

    while (v42 != v43);
    v15, v46, v47, v48, v49, v50, v51, v52;
    v53 = v63;
  }

  else
  {
    v15, v35, v36, v37, v38, v39, v40, v41;
    v53 = _swiftEmptyArrayStorage;
  }

  sub_1000029E4(0, &qword_10006F930, EAREuclidNeighbor_ptr);
  isa = sub_100046EEC().super.isa;
  (a5)[2](a5, isa);
  v53, v55, v56, v57, v58, v59, v60, v61;

  _Block_release(a5);
}

void sub_10001AC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void))
{
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v8 = sub_100046D1C();
  sub_100004D64(v8, qword_1000714B8);
  v9 = sub_100046D0C();
  v10 = sub_100046FFC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = a6;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100004EB4(0xD000000000000026, 0x800000010004E980, &v25);
    _os_log_impl(&_mh_execute_header, v9, v10, "EAREuclid.%s", v12, 0xCu);
    sub_1000050D4(v13);

    a6 = v11;
  }

  v14 = *(a5 + OBJC_IVAR____TtC22localspeechrecognition9EAREuclid_euclidInstance);
  v15 = sub_100046E4C();
  v16 = sub_100046E4C();
  v17 = [v14 distanceBetweenSource:v15 target:v16];

  v18 = v17;
  v19 = sub_100046D0C();
  v20 = sub_100046FFC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v21 = 136315394;
    *(v21 + 4) = sub_100004EB4(0xD000000000000026, 0x800000010004E980, &v25);
    *(v21 + 12) = 2112;
    *(v21 + 14) = v18;
    *v22 = v18;
    v24 = v18;
    _os_log_impl(&_mh_execute_header, v19, v20, "EAREuclid.%s replying with distance of %@", v21, 0x16u);
    sub_100005808(v22, &qword_1000704F0, &qword_10004CF40);

    sub_1000050D4(v23);
  }

  (a6)[2](a6, v18);

  _Block_release(a6);
}

void sub_10001B090(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = *(a2 + OBJC_IVAR____TtC22localspeechrecognition9EAREuclid_euclidInstance);
  isa = sub_100046EEC().super.isa;
  v6 = [v4 computeEmbeddings:isa];

  sub_10000ECEC(&qword_10006F920, &qword_10004CF48);
  v7 = sub_100046EFC();

  v8 = sub_100046EEC().super.isa;
  (a3)[2](a3, v8);
  v7, v9, v10, v11, v12, v13, v14, v15;

  _Block_release(a3);
}

void sub_10001B1F4(uint64_t a1, void (**a2)(void, void))
{
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v4 = sub_100046D1C();
  sub_100004D64(v4, qword_1000714B8);
  v5 = sub_100046D0C();
  v6 = sub_100046FFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100004EB4(0xD000000000000016, 0x800000010004E960, &v16);
    _os_log_impl(&_mh_execute_header, v5, v6, "EAREuclid.%s", v7, 0xCu);
    sub_1000050D4(v8);
  }

  v9 = [*(a1 + OBJC_IVAR____TtC22localspeechrecognition9EAREuclid_euclidInstance) maxInputLength];
  v10 = sub_100046D0C();
  v11 = sub_100046FFC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_100004EB4(0xD000000000000016, 0x800000010004E960, &v16);
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v9;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "EAREuclid.%s replying with %@", v12, 0x16u);
    sub_100005808(v13, &qword_1000704F0, &qword_10004CF40);

    sub_1000050D4(v14);
  }

  (a2)[2](a2, v9);

  _Block_release(a2);
}

void sub_10001B4C4(uint64_t a1, void (**a2)(void, void))
{
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v4 = sub_100046D1C();
  sub_100004D64(v4, qword_1000714B8);
  v5 = sub_100046D0C();
  v6 = sub_100046FFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100004EB4(0xD000000000000014, 0x800000010004E940, &v16);
    _os_log_impl(&_mh_execute_header, v5, v6, "EAREuclid.%s", v7, 0xCu);
    sub_1000050D4(v8);
  }

  v9 = [*(a1 + OBJC_IVAR____TtC22localspeechrecognition9EAREuclid_euclidInstance) embeddingDim];
  v10 = sub_100046D0C();
  v11 = sub_100046FFC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_100004EB4(0xD000000000000014, 0x800000010004E940, &v16);
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v9;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "EAREuclid.%s replying with %@", v12, 0x16u);
    sub_100005808(v13, &qword_1000704F0, &qword_10004CF40);

    sub_1000050D4(v14);
  }

  (a2)[2](a2, v9);

  _Block_release(a2);
}

void sub_10001B794(uint64_t a1, void (**a2)(void, void))
{
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v4 = sub_100046D1C();
  sub_100004D64(v4, qword_1000714B8);
  v5 = sub_100046D0C();
  v6 = sub_100046FFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100004EB4(0xD000000000000013, 0x800000010004E920, &v31);
    _os_log_impl(&_mh_execute_header, v5, v6, "EAREuclid.%s", v7, 0xCu);
    sub_1000050D4(v8);
  }

  v9 = [*(a1 + OBJC_IVAR____TtC22localspeechrecognition9EAREuclid_euclidInstance) fullVersion];
  v10 = sub_100046E5C();
  v12 = v11;

  v13 = sub_100046D0C();
  v14 = sub_100046FFC();
  v12, v15, v16, v17, v18, v19, v20, v21;
  if (os_log_type_enabled(v13, v14))
  {
    v22 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v22 = 136315394;
    *(v22 + 4) = sub_100004EB4(0xD000000000000013, 0x800000010004E920, &v31);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_100004EB4(v10, v12, &v31);
    _os_log_impl(&_mh_execute_header, v13, v14, "EAREuclid.%s replying with %s", v22, 0x16u);
    swift_arrayDestroy();
  }

  v23 = sub_100046E4C();
  (a2)[2](a2, v23);
  v12, v24, v25, v26, v27, v28, v29, v30;

  _Block_release(a2);
}

void sub_10001BA6C(uint64_t a1, void (**a2)(void, void))
{
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v4 = sub_100046D1C();
  sub_100004D64(v4, qword_1000714B8);
  v5 = sub_100046D0C();
  v6 = sub_100046FFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100004EB4(0xD000000000000014, 0x800000010004E900, &v31);
    _os_log_impl(&_mh_execute_header, v5, v6, "EAREuclid.%s", v7, 0xCu);
    sub_1000050D4(v8);
  }

  v9 = [*(a1 + OBJC_IVAR____TtC22localspeechrecognition9EAREuclid_euclidInstance) majorVersion];
  v10 = sub_100046E5C();
  v12 = v11;

  v13 = sub_100046D0C();
  v14 = sub_100046FFC();
  v12, v15, v16, v17, v18, v19, v20, v21;
  if (os_log_type_enabled(v13, v14))
  {
    v22 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v22 = 136315394;
    *(v22 + 4) = sub_100004EB4(0xD000000000000014, 0x800000010004E900, &v31);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_100004EB4(v10, v12, &v31);
    _os_log_impl(&_mh_execute_header, v13, v14, "EAREuclid.%s replying with %s", v22, 0x16u);
    swift_arrayDestroy();
  }

  v23 = sub_100046E4C();
  (a2)[2](a2, v23);
  v12, v24, v25, v26, v27, v28, v29, v30;

  _Block_release(a2);
}

void sub_10001BD44(uint64_t a1, void (**a2)(void, void))
{
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v4 = sub_100046D1C();
  sub_100004D64(v4, qword_1000714B8);
  v5 = sub_100046D0C();
  v6 = sub_100046FFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100004EB4(0xD000000000000014, 0x800000010004E8E0, &v31);
    _os_log_impl(&_mh_execute_header, v5, v6, "EAREuclid.%s", v7, 0xCu);
    sub_1000050D4(v8);
  }

  v9 = [*(a1 + OBJC_IVAR____TtC22localspeechrecognition9EAREuclid_euclidInstance) minorVersion];
  v10 = sub_100046E5C();
  v12 = v11;

  v13 = sub_100046D0C();
  v14 = sub_100046FFC();
  v12, v15, v16, v17, v18, v19, v20, v21;
  if (os_log_type_enabled(v13, v14))
  {
    v22 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v22 = 136315394;
    *(v22 + 4) = sub_100004EB4(0xD000000000000014, 0x800000010004E8E0, &v31);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_100004EB4(v10, v12, &v31);
    _os_log_impl(&_mh_execute_header, v13, v14, "EAREuclid.%s replying with %s", v22, 0x16u);
    swift_arrayDestroy();
  }

  v23 = sub_100046E4C();
  (a2)[2](a2, v23);
  v12, v24, v25, v26, v27, v28, v29, v30;

  _Block_release(a2);
}

void sub_10001C01C(uint64_t a1, void (**a2)(void, void))
{
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v4 = sub_100046D1C();
  sub_100004D64(v4, qword_1000714B8);
  v5 = sub_100046D0C();
  v6 = sub_100046FFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100004EB4(0xD000000000000014, 0x800000010004E8C0, &v31);
    _os_log_impl(&_mh_execute_header, v5, v6, "EAREuclid.%s", v7, 0xCu);
    sub_1000050D4(v8);
  }

  v9 = [*(a1 + OBJC_IVAR____TtC22localspeechrecognition9EAREuclid_euclidInstance) patchVersion];
  v10 = sub_100046E5C();
  v12 = v11;

  v13 = sub_100046D0C();
  v14 = sub_100046FFC();
  v12, v15, v16, v17, v18, v19, v20, v21;
  if (os_log_type_enabled(v13, v14))
  {
    v22 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v22 = 136315394;
    *(v22 + 4) = sub_100004EB4(0xD000000000000014, 0x800000010004E8C0, &v31);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_100004EB4(v10, v12, &v31);
    _os_log_impl(&_mh_execute_header, v13, v14, "EAREuclid.%s replying with %s", v22, 0x16u);
    swift_arrayDestroy();
  }

  v23 = sub_100046E4C();
  (a2)[2](a2, v23);
  v12, v24, v25, v26, v27, v28, v29, v30;

  _Block_release(a2);
}

void sub_10001C2F4(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

id sub_10001C3A8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EAREuclid();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10001C410(uint64_t a1, _TtC22localspeechrecognition19EARSpeechRecognizer *a2, uint64_t a3, uint64_t a4, uint64_t a5, _TtC22localspeechrecognition19EARSpeechRecognizer *a6)
{
  v11 = sub_100046E4C();
  a2, v12, v13, v14, v15, v16, v17, v18;
  v19 = sub_100046E4C();
  a6, v20, v21, v22, v23, v24, v25, v26;
  v27 = [v6 initWithConfiguration:v11 euclidEncoderType:a3 initFlag:a4 language:v19];

  return v27;
}

void *sub_10001C4B4(uint64_t a1)
{
  result = _swiftEmptyArrayStorage;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v6 = objc_allocWithZone(_EARSpeechMessagesContext);

      v7 = [v6 init];
      if (*(v5 + 16) && (v8 = sub_1000041D0(0x7265646E6573, 0xE600000000000000), (v9 & 1) != 0) && (v10 = *(*(v5 + 56) + 8 * v8), *(v10 + 16)))
      {
        v11 = *(v10 + 40);
      }

      else
      {
        v11 = 0xE000000000000000;
      }

      v12 = sub_100046E4C();
      v11, v13, v14, v15, v16, v17, v18, v19;
      [v7 setSender:v12];

      if (*(v5 + 16) && (v27 = sub_1000041D0(0x736567617373656DLL, 0xE800000000000000), (v20 & 1) != 0))
      {
        v28 = *(*(v5 + 56) + 8 * v27);
      }

      else
      {
        v28 = _swiftEmptyArrayStorage;
      }

      v5, v20, v21, v22, v23, v24, v25, v26;
      isa = sub_100046EEC().super.isa;
      v28, v30, v31, v32, v33, v34, v35, v36;
      [v7 setMessages:isa];

      v37 = v7;
      sub_100046EDC();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100046F1C();
      }

      sub_100046F3C();

      ++v4;
      --v3;
    }

    while (v3);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_10001C6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _TtC22localspeechrecognition19EARSpeechRecognizer *a8, uint64_t a9, void (**a10)(void, void))
{
  v57 = a4;
  v58 = a6;
  v13 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  __chkstk_darwin(v13 - 8);
  v15 = v55 - v14;
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v16 = a10;
  v17 = sub_100046D1C();
  sub_100004D64(v17, qword_1000714B8);
  v18 = sub_100046D0C();
  v19 = sub_100046FFC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v55[1] = a5;
    v56 = a10;
    v21 = v20;
    v22 = swift_slowAlloc();
    v59 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_100004EB4(0xD000000000000056, 0x800000010004EA50, &v59);
    _os_log_impl(&_mh_execute_header, v18, v19, "EARTranscriptionEvaluator.%s", v21, 0xCu);
    sub_1000050D4(v22);

    v16 = v56;
  }

  v23 = [objc_allocWithZone(_EARVisualContextEvaluation) init];
  v24 = sub_10001C4B4(a1);
  sub_1000029E4(0, &qword_10006F9C8, _EARSpeechMessagesContext_ptr);
  v25.super.isa = sub_100046EEC().super.isa;
  v24, v26, v27, v28, v29, v30, v31, v32;
  v33 = sub_100046E4C();
  v34 = sub_100046E4C();
  if (a8)
  {
    v35 = a8;
  }

  else
  {
    v35 = 0xE000000000000000;
  }

  v36 = sub_100046E4C();
  v35, v37, v38, v39, v40, v41, v42, v43;
  v44 = [v23 computeContextualizationMetricsWithMesssagesContext:v25.super.isa correctedText:v33 recognizedText:v34 profilePath:v36];

  sub_1000029E4(0, &unk_10006F9D0, _EARVisualContextMetrics_ptr);
  v45 = sub_100046EFC();

  if (qword_10006DD30 != -1)
  {
    swift_once();
  }

  v46 = sub_100046BBC();
  (*(*(v46 - 8) + 16))(v15, v58, v46);
  sub_1000045DC(v15, 0, 1, v46);
  v47 = mach_continuous_time();
  sub_10000DD78(v15, v45, v47);
  v45, v48, v49, v50, v51, v52, v53, v54;
  sub_10000619C(v15);
  v16[2](v16, 1);

  _Block_release(v16);
}

id sub_10001CC34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EARTranscriptionEvaluator();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10001CC8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EARTranscriptionEvaluator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10001CCE4(uint64_t a1, _TtC22localspeechrecognition19EARSpeechRecognizer *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000ECEC(&qword_10006FAD8, &qword_10004CFA0);
  __chkstk_darwin(v9 - 8);
  v11 = v31 - v10;
  sub_10001FCA0(a3, v31 - v10, &qword_10006FAD8, &qword_10004CFA0);
  v12 = sub_100046F9C();
  v13 = sub_100004844(v11, 1, v12);

  if (v13 == 1)
  {
    sub_100005808(v11, &qword_10006FAD8, &qword_10004CFA0);
  }

  else
  {
    sub_100046F8C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_100046F4C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_100046E9C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v32[0] = 0;
        v32[1] = 0;
        v20 = v32;
        v32[2] = v15;
        v32[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v31[1] = 7;
      v31[2] = v20;
      v31[3] = v18;
      v22 = swift_task_create();

      sub_100005808(a3, &qword_10006FAD8, &qword_10004CFA0);
      a2, v23, v24, v25, v26, v27, v28, v29;

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005808(a3, &qword_10006FAD8, &qword_10004CFA0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v32[4] = 0;
    v32[5] = 0;
    v32[6] = v15;
    v32[7] = v17;
  }

  return swift_task_create();
}

unint64_t sub_10001CFC8(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a6;
  v34 = a7;
  v13 = sub_10000ECEC(&qword_10006FAD8, &qword_10004CFA0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v33 - v18;
  __chkstk_darwin(v17);
  v21 = &v33 - v20;
  if (!a4)
  {
    v25 = sub_100046F9C();
    sub_1000045DC(v19, 1, 1, v25);
    v22 = 0;
    goto LABEL_6;
  }

  v22 = a4;
  result = [v22 priority];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    sub_100046F7C();

    v24 = sub_100046F9C();
    sub_1000045DC(v19, 0, 1, v24);
LABEL_6:
    sub_10001F954(v19, v21);
    sub_10001FCA0(v21, v16, &qword_10006FAD8, &qword_10004CFA0);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = a1;
    v26[5] = a2;
    v26[6] = a3;
    v26[7] = a4;
    v26[8] = a5;
    v26[9] = v7;
    v27 = v34;
    v26[10] = v33;
    v26[11] = v27;
    v28 = v22;
    v29 = a1;
    v30 = a2;
    v31 = a3;

    v32 = v7;

    sub_10001CCE4(0, 0, v16, &unk_10004CFE8, v26);

    return sub_100005808(v21, &qword_10006FAD8, &qword_10004CFA0);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001D1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v11;
  *(v8 + 72) = v10;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 32) = a4;
  return _swift_task_switch(sub_10001D228, 0, 0);
}

uint64_t sub_10001D228()
{
  if (qword_10006DD70 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100071640);
  v1 = qword_100071648;
  os_unfair_lock_unlock(&dword_100071640);
  if (v1 >= 2)
  {
    if (qword_10006DD38 != -1)
    {
      swift_once();
    }

    v2 = sub_100046D1C();
    sub_100004D64(v2, qword_1000714A0);
    v3 = sub_100046D0C();
    v4 = sub_10004700C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Maximum number of recognizers reached. This will be an error in a future release!", v5, 2u);
      sub_100002B44(v5);
    }
  }

  v6 = v0[7];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[4];
  objc_allocWithZone(type metadata accessor for EARSpeechRecognizer(0));

  v10 = v9;
  v11 = v8;
  v12 = v7;
  v13 = v6;
  v14 = swift_task_alloc();
  v0[12] = v14;
  *v14 = v0;
  v14[1] = sub_10001D418;

  return sub_100026A7C();
}

uint64_t sub_10001D418()
{
  sub_10000BDA0();
  sub_100005C1C();
  *(v2 + 104) = v1;
  *(v2 + 112) = v0;

  if (v0)
  {
    v3 = sub_10001D608;
  }

  else
  {
    v3 = sub_10001D524;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_10001D524()
{
  sub_10001FD20();
  os_unfair_lock_lock(&dword_100071640);
  if (__OFADD__(qword_100071648, 1))
  {
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 104);
    v2 = *(v0 + 80);
    ++qword_100071648;
    os_unfair_lock_unlock(&dword_100071640);
    v3 = v1;
    v4 = sub_10001EEB0(v3);

    v5 = [v4 endpoint];
    v2();

    sub_100004170();

    v6();
  }
}

uint64_t sub_10001D608()
{
  sub_10001FD20();
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C(&qword_10006DD40);
  }

  v1 = sub_100046D1C();
  sub_100004D64(v1, qword_1000714B8);
  swift_errorRetain();
  v2 = sub_100046D0C();
  v3 = sub_10004700C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    sub_10000C618(&_mh_execute_header, v7, v8, "Could not create EARSpeechRecognizer local actor: %@");
    sub_100005808(v5, &qword_1000704F0, &qword_10004CF40);
    sub_100002B44(v5);
    sub_100002B44(v4);
  }

  v9 = *(v0 + 112);

  *(v0 + 16) = v9;
  swift_errorRetain();
  sub_10000ECEC(&unk_10006FAE0, &unk_10004CFD0);
  type metadata accessor for LSRError(0);
  if (sub_10000427C(v10))
  {
    v11 = *(v0 + 24);
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_100023AD4(v11);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    swift_errorRetain();
    v13 = *(v0 + 112);
  }

  (*(v0 + 80))(0, v13);

  sub_100004170();

  return v14();
}

void sub_10001D8F8(void *a1, uint64_t a2, uint64_t a3, _TtC22localspeechrecognition19EARSpeechRecognizer *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (**a8)(void, void, void))
{
  v22 = a7;
  v9 = a6;
  v13 = a2;
  v15 = sub_10000ECEC(&qword_10006FED0, &qword_10004CF38);
  __chkstk_darwin(v15 - 8);
  v17 = &v22 - v16;
  sub_10001FCA0(a5, &v22 - v16, &qword_10006FED0, &qword_10004CF38);
  v18 = objc_allocWithZone(type metadata accessor for LSRAssets(0));

  v19 = sub_10001FD2C(a1, v13, a3, a4, v17, v9);
  v20 = sub_10001EEB0(v19);

  v21 = [v20 endpoint];
  (a8)[2](a8, v21, 0);

  _Block_release(a8);
}

void sub_10001DDA0(uint64_t a1, uint64_t a2, _TtC22localspeechrecognition19EARSpeechRecognizer *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(void, void, void))
{
  v13 = sub_100046C3C();
  __chkstk_darwin(v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, a1);
  objc_allocWithZone(type metadata accessor for EAREuclid());

  v17 = sub_10001A0AC(v15, a2, a3, a4, a5);
  v18 = sub_10001EEB0(v17);

  v19 = [v18 endpoint];
  (a7)[2](a7, v19, 0);

  _Block_release(a7);
}

unint64_t sub_10001E23C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_10000ECEC(&qword_10006FAD8, &qword_10004CFA0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v28 - v16;
  __chkstk_darwin(v15);
  v19 = &v28 - v18;
  if (!a3)
  {
    v22 = sub_100046F9C();
    v23 = 1;
    goto LABEL_6;
  }

  v20 = a3;
  result = [v20 priority];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    sub_100046F7C();

    v22 = sub_100046F9C();
    v23 = 0;
LABEL_6:
    sub_1000045DC(v17, v23, 1, v22);
    sub_10001F954(v17, v19);
    sub_10001FCA0(v19, v14, &qword_10006FAD8, &qword_10004CFA0);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = a1;
    v24[5] = a2;
    v24[6] = v5;
    v24[7] = a4;
    v24[8] = a5;
    v25 = a1;
    v26 = a2;
    v27 = v5;

    sub_10001CCE4(0, 0, v14, &unk_10004CFB0, v24);

    return sub_100005808(v19, &qword_10006FAD8, &qword_10004CFA0);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001E430(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[4] = a6;
  objc_allocWithZone(type metadata accessor for EARLanguageDetector());
  v11 = a4;
  v12 = a5;
  v13 = swift_task_alloc();
  v8[7] = v13;
  *v13 = v8;
  v13[1] = sub_10001E504;

  return sub_1000110FC(v11, v12);
}

uint64_t sub_10001E504(uint64_t a1)
{
  sub_100005C1C();
  v5 = v4;
  v6 = *v2;
  sub_100004B48();
  *v7 = v6;
  *(v5 + 64) = v1;

  if (v1)
  {
    v8 = sub_10001E6D8;
  }

  else
  {
    *(v5 + 72) = a1;
    v8 = sub_10001E620;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10001E620()
{
  sub_10001FD20();
  v1 = *(v0 + 40);
  v2 = *(v0 + 72);
  v3 = sub_10001EEB0(v2);

  v4 = [v3 endpoint];
  v1();

  sub_100004170();

  return v5();
}

uint64_t sub_10001E6D8()
{
  sub_10001FD20();
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C(&qword_10006DD40);
  }

  v1 = sub_100046D1C();
  sub_100004D64(v1, qword_1000714B8);
  swift_errorRetain();
  v2 = sub_100046D0C();
  v3 = sub_10004700C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    sub_10000C618(&_mh_execute_header, v7, v8, "Could not create EARLanguageDetector local actor: %@");
    sub_100005808(v5, &qword_1000704F0, &qword_10004CF40);
    sub_100002B44(v5);
    sub_100002B44(v4);
  }

  v9 = *(v0 + 64);

  *(v0 + 16) = v9;
  swift_errorRetain();
  sub_10000ECEC(&unk_10006FAE0, &unk_10004CFD0);
  type metadata accessor for LSRError(0);
  if (sub_10000427C(v10))
  {
    v11 = *(v0 + 24);
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_100023AD4(v11);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    swift_errorRetain();
    v13 = *(v0 + 64);
  }

  (*(v0 + 40))(0, v13);

  sub_100004170();

  return v14();
}

void sub_10001E98C(uint64_t a1, uint64_t a2, _TtC22localspeechrecognition19EARSpeechRecognizer *a3, uint64_t a4, void (**a5)(void, void, void))
{
  v9 = sub_100046C3C();
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a1);
  objc_allocWithZone(type metadata accessor for EARFullPayloadCorrector());

  v13 = sub_10001062C(v11, a2, a3);
  v14 = sub_10001EEB0(v13);

  v15 = [v14 endpoint];
  (a5)[2](a5, v15, 0);

  _Block_release(a5);
}

void sub_10001EDF8(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = [objc_allocWithZone(type metadata accessor for EARTranscriptionEvaluator()) init];
  v4 = sub_10001EEB0(v3);
  v5 = [v4 endpoint];
  (a2)[2](a2, v5, 0);

  _Block_release(a2);
}

id sub_10001EEB0(uint64_t a1)
{
  v2 = [objc_opt_self() anonymousListener];
  [v2 setDelegate:v1];
  [v2 activate];
  v3 = (v1 + OBJC_IVAR____TtC22localspeechrecognition12EARInterface_listeners);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC22localspeechrecognition12EARInterface_listeners));
  swift_unknownObjectRetain();
  sub_10002D61C();
  os_unfair_lock_unlock(v3);
  return v2;
}

uint64_t sub_10001EF50(void *a1, void *a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22localspeechrecognition12EARInterface_listeners);
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC22localspeechrecognition12EARInterface_listeners));
  sub_10002D190(a1, v6, v7, v8, v9, v10, v11, v12, v28, v29);
  v14 = v13;
  os_unfair_lock_unlock(v5);
  if (!v14)
  {
    return v14 != 0;
  }

  type metadata accessor for EARSpeechRecognizer(0);
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    v15 = &protocolRef__SFXPCEARSpeechRecognizer;
LABEL_14:
    swift_unknownObjectRelease();
LABEL_15:
    v21 = [objc_opt_self() interfaceWithProtocol:*v15];
    [a2 setExportedInterface:v21];
    [a2 setExportedObject:v14];
    v22 = swift_allocObject();
    *(v22 + 16) = a1;
    aBlock[4] = sub_10001F92C;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002673C;
    aBlock[3] = &unk_100065E20;
    v23 = _Block_copy(aBlock);
    v24 = a1;

    [a2 setInvalidationHandler:v23];
    _Block_release(v23);
    [a2 activate];
    swift_unknownObjectRelease();

    return v14 != 0;
  }

  v16 = type metadata accessor for LSRAssets(0);
  if (sub_100004B58(v16))
  {
    v15 = &protocolRef__SFXPCLSRAssets;
    goto LABEL_14;
  }

  v17 = type metadata accessor for EAREuclid();
  if (sub_100004B58(v17))
  {
    v15 = &protocolRef__SFXPCEAREuclid;
    goto LABEL_14;
  }

  v18 = type metadata accessor for EARLanguageDetector();
  if (sub_100004B58(v18))
  {
    v15 = &protocolRef__SFXPCEARLanguageDetector;
    goto LABEL_14;
  }

  v19 = type metadata accessor for EARFullPayloadCorrector();
  if (sub_100004B58(v19))
  {
    v15 = &protocolRef__SFXPCEARFullPayloadCorrector;
    goto LABEL_14;
  }

  v20 = type metadata accessor for EARTranscriptionEvaluator();
  if (sub_100004B58(v20))
  {
    v15 = &protocolRef__SFXPCEARTranscriptionEvaluator;
    goto LABEL_14;
  }

  v26 = type metadata accessor for LSRLSRAssetInventory();
  v27 = sub_100004B58(v26);
  swift_unknownObjectRelease();
  if (v27)
  {
    v15 = &protocolRef__SFXPCLSRAssetInventory;
    goto LABEL_15;
  }

  sub_10004723C(23);
  v31._object = 0x800000010004EBA0;
  v31._countAndFlagsBits = 0xD000000000000015;
  sub_100046EBC(v31);
  sub_1000472DC();
  result = sub_10004735C();
  __break(1u);
  return result;
}

void sub_10001F2AC(unint64_t a1, uint64_t a2, uint64_t a3, _TtC22localspeechrecognition19EARSpeechRecognizer *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (**a9)(void, void, void))
{
  v9 = sub_100023C84(a1, a2, a3, a4, a5, a6, a7, 0);
  v11 = v10;
  if (v10 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_100046B2C().super.isa;
  }

  (a9)[2](a9, isa, 0);

  sub_10000C198(v9, v11);

  _Block_release(a9);
}

void sub_10001F5C0(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = [objc_opt_self() processStartTimeOnce];
  (a2)[2](a2, v3, 0);

  _Block_release(a2);
}

void sub_10001F64C(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

void sub_10001F6C0(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v7 = type metadata accessor for LSRLSRAssetInventory();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC22localspeechrecognition20LSRLSRAssetInventory_bundleId];
  *v9 = a1;
  *(v9 + 1) = a2;
  v13.receiver = v8;
  v13.super_class = v7;

  v10 = objc_msgSendSuper2(&v13, "init");
  v11 = sub_10001EEB0(v10);
  v12 = [v11 endpoint];
  (a4)[2](a4, v12, 0);

  _Block_release(a4);
}

void sub_10001F7AC(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v5 = objc_opt_self();
  v6 = sub_100046E4C();
  v7 = [v5 isEuclidAvailableForConfigPath:v6];

  (a4)[2](a4, v7, 0);

  _Block_release(a4);
}

void sub_10001F85C(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, uint64_t, id, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = sub_100046E5C();
  v10 = v9;
  _Block_copy(v7);
  v11 = a1;
  a5(v8, v10, v11, v7);
  _Block_release(v7);

  v10, v12, v13, v14, v15, v16, v17, v18;
}

id sub_10001F8F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EARInterface();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10001F93C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001F954(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ECEC(&qword_10006FAD8, &qword_10004CFA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001F9C4()
{
  sub_10001FD0C();
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  v3 = sub_100005430(v2);
  *v3 = v4;
  v3[1] = sub_10000C1AC;
  sub_100004E80();
  sub_10000BF38();

  return sub_10001E430(v5, v6, v7, v8, v9, v10, v11, v1);
}

uint64_t sub_10001FA74()
{
  v0 = swift_task_alloc();
  v1 = sub_100005430(v0);
  *v1 = v2;
  v1[1] = sub_10000C28C;
  v3 = sub_100004E80();

  return v4(v3);
}

uint64_t sub_10001FB1C()
{
  v0 = swift_task_alloc();
  v1 = sub_100005430(v0);
  *v1 = v2;
  v1[1] = sub_10000C1AC;
  v3 = sub_100004E80();

  return v4(v3);
}

uint64_t sub_10001FBC4()
{
  sub_10001FD0C();
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  v3 = sub_100005430(v2);
  *v3 = v4;
  v3[1] = sub_10000C28C;
  sub_100004E80();
  sub_10000BF38();

  return sub_10001D1EC(v5, v6, v7, v8, v9, v10, v11, v1);
}

uint64_t sub_10001FCA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000ECEC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

char *sub_10001FD2C(void *a1, int a2, uint64_t a3, _TtC22localspeechrecognition19EARSpeechRecognizer *a4, uint64_t a5, int a6)
{
  v334 = a4;
  v330 = a6;
  v335 = a5;
  v332 = a3;
  v324 = a2;
  v314 = sub_100046A8C();
  sub_100004E00();
  v312 = v8;
  __chkstk_darwin(v9);
  sub_100002B2C();
  v313 = v11 - v10;
  v12 = sub_10000ECEC(&qword_10006FED0, &qword_10004CF38);
  __chkstk_darwin(v12 - 8);
  sub_100004AB8();
  sub_1000042A0();
  __chkstk_darwin(v13);
  sub_1000042A0();
  __chkstk_darwin(v14);
  v323 = &v305 - v15;
  v326 = sub_100046B0C();
  sub_100004E00();
  v328 = v16;
  __chkstk_darwin(v17);
  sub_100004AB8();
  sub_1000042A0();
  __chkstk_darwin(v18);
  v311 = &v305 - v19;
  v20 = sub_100046C3C();
  sub_100004E00();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_100002B2C();
  v26 = v25 - v24;
  v320 = OBJC_IVAR____TtC22localspeechrecognition9LSRAssets____lazy_storage___contextualData;
  *&v6[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets____lazy_storage___contextualData] = 1;
  v319 = OBJC_IVAR____TtC22localspeechrecognition9LSRAssets____lazy_storage___geoLMHelper;
  *&v6[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets____lazy_storage___geoLMHelper] = 1;
  v322 = v6;
  v27 = v6;
  v28 = [a1 language];
  v29 = sub_100046E5C();
  v31 = v30;

  v32 = &v27[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_language];
  *v32 = v29;
  v32[1] = v31;
  v331 = v32;
  v33 = [a1 language];
  sub_100046E5C();

  sub_100046BCC();
  v318 = v22;
  v34 = *(v22 + 32);
  v317 = OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_locale;
  v321 = v20;
  v34(&v27[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_locale], v26, v20);
  v35 = &v27[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_clientID];
  v315 = &v27[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_clientID];
  v36 = v334;
  *v35 = v332;
  v35[1] = v36;
  v316 = OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelOverridePath;
  v37 = v335;
  sub_10000905C(v335, &v27[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelOverridePath], &qword_10006FED0, &qword_10004CF38);
  v38 = v27;

  v39 = [a1 assetType];
  v40 = OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_assetType;
  *&v27[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_assetType] = v39;
  v41 = SFEntitledAssetTypeToString();
  v325 = sub_100046E5C();
  v43 = v42;

  v44 = v37;
  v45 = a1;
  v46 = v326;
  v47 = sub_100004844(v44, 1, v326);
  v336 = v38;
  v48 = v38;
  v329 = v45;
  v327 = v43;
  if (v47 == 1)
  {
    v48 = v336;
    if ((v330 & 1) == 0)
    {
      v49 = *&v336[v40];

      if ((v49 | 4) != 7)
      {
        goto LABEL_32;
      }

      v308 = v40;
      v50 = *&v336[v40];
      v51 = v331;
      if (v50 == 7)
      {
        if (qword_10006DD88 != -1)
        {
          swift_once();
        }

        v62 = *v51;
        v53 = v51[1];

        v54 = sub_100033E68(v62, v53);
      }

      else
      {
        if (v50 != 3)
        {
          if (qword_10006DD38 != -1)
          {
            sub_100004E14(&qword_10006DD38);
          }

          v64 = sub_100046D1C();
          sub_100004D64(v64, qword_1000714A0);

          v65 = sub_100046D0C();
          v66 = sub_10004700C();
          v43, v67, v68, v69, v70, v71, v72, v73;
          if (os_log_type_enabled(v65, v66))
          {
            v74 = swift_slowAlloc();
            v339 = swift_slowAlloc();
            *v74 = 136315394;
            *(v74 + 4) = sub_10000BF50("init(assetConfig:shouldSubscribe:clientID:modelOverridePath:isSpelling:)");
            *(v74 + 12) = 2080;
            *(v74 + 14) = sub_100004EB4(v325, v43, &v339);
            _os_log_impl(&_mh_execute_header, v65, v66, "LSRAssets.%s %s assets are not cached by an asset delegate.", v74, 0x16u);
            swift_arrayDestroy();
            sub_10000B818();

            sub_100002BBC();
          }

          v63 = 0;
          goto LABEL_18;
        }

        if (qword_10006DD80 != -1)
        {
          swift_once();
        }

        v52 = *v51;
        v53 = v51[1];

        v54 = sub_100033D7C(v52, v53);
      }

      v63 = v54;
      v53, v55, v56, v57, v58, v59, v60, v61;
LABEL_18:
      if (qword_10006DD38 != -1)
      {
        sub_100004E14(&qword_10006DD38);
      }

      v75 = sub_100046D1C();
      sub_100004D64(v75, qword_1000714A0);
      v76 = v336;

      v77 = sub_100046D0C();
      v78 = sub_10004701C();

      v43, v79, v80, v81, v82, v83, v84, v85;
      if (os_log_type_enabled(v77, v78))
      {
        v86 = v43;
        v87 = swift_slowAlloc();
        v306 = swift_slowAlloc();
        v339 = v306;
        *v87 = 136315906;
        *(v87 + 4) = sub_10000BF50("init(assetConfig:shouldSubscribe:clientID:modelOverridePath:isSpelling:)");
        *(v87 + 12) = 2080;
        if (v63)
        {
          v88 = 0x646E756F46;
        }

        else
        {
          v88 = 28494;
        }

        if (v63)
        {
          v89 = 0xE500000000000000;
        }

        else
        {
          v89 = 0xE200000000000000;
        }

        v90 = v46;
        v91 = v51;
        v92 = sub_100004EB4(v88, v89, &v339);
        v89, v93, v94, v95, v96, v97, v98, v99;
        *(v87 + 14) = v92;
        *(v87 + 22) = 2080;
        *(v87 + 24) = sub_100004EB4(v325, v86, &v339);
        *(v87 + 32) = 2080;
        v100 = *v91;
        v101 = v91[1];
        v46 = v90;

        v102 = sub_100004EB4(v100, v101, &v339);
        v101, v103, v104, v105, v106, v107, v108, v109;
        *(v87 + 34) = v102;
        sub_100023294();
        _os_log_impl(v110, v111, v112, v113, v114, 0x2Au);
        swift_arrayDestroy();
        sub_100002BBC();

        sub_10000B818();
      }

      v115 = v328;
      v40 = v308;
      if (v63)
      {
        (*(v328 + 16))(&v336[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelRoot], v63 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelRoot, v46);
        goto LABEL_46;
      }

      v48 = [objc_opt_self() sharedInstance];
      [v48 refreshAssetSetWithConfig:v329 regionId:0];
      v43 = v327;
    }
  }

LABEL_32:
  if (qword_10006DD38 != -1)
  {
    sub_100004E14(&qword_10006DD38);
  }

  v116 = sub_100046D1C();
  sub_100004D64(v116, qword_1000714A0);
  v117 = v336;

  v118 = sub_100046D0C();
  v119 = sub_10004701C();

  v43, v120, v121, v122, v123, v124, v125, v126;
  v127 = os_log_type_enabled(v118, v119);
  v308 = v117;
  if (v127)
  {
    v128 = swift_slowAlloc();
    v339 = swift_slowAlloc();
    *v128 = 136315650;
    *(v128 + 4) = sub_10000BF50("init(assetConfig:shouldSubscribe:clientID:modelOverridePath:isSpelling:)");
    v129 = v40;
    *(v128 + 12) = 2080;
    *(v128 + 14) = sub_100004EB4(v325, v43, &v339);
    *(v128 + 22) = 2080;
    v130 = v331;
    v131 = *v331;
    v132 = v331[1];

    v133 = sub_100004EB4(v131, v132, &v339);
    v134 = v132;
    v40 = v129;
    v134, v135, v136, v137, v138, v139, v140, v141;
    *(v128 + 24) = v133;
    sub_100023294();
    _os_log_impl(v142, v143, v144, v145, v146, 0x20u);
    swift_arrayDestroy();
    sub_100002BBC();

    sub_10000B818();

    v147 = v333;
  }

  else
  {

    v147 = v333;
    v130 = v331;
  }

  v148 = v130[1];
  v149 = *&v336[v40];

  v150 = sub_100046E4C();
  v148, v151, v152, v153, v154, v155, v156, v157;
  v158 = sub_100046E4C();
  v159 = v323;
  sub_10000905C(v335, v323, &qword_10006FED0, &qword_10004CF38);
  v161 = v130;
  if (sub_100004844(v159, 1, v46) == 1)
  {
    v162 = 0;
    v115 = v328;
  }

  else
  {
    sub_100046A9C(v160);
    v162 = v163;
    v115 = v328;
    v164 = sub_10000BDAC();
    v165(v164);
  }

  v166 = objc_opt_self();
  v339 = 0;
  v167 = [v166 modelRootWithLanguage:v150 assetType:v149 shouldSubscribe:v324 & 1 clientID:v158 modelOverrideURL:v162 isSpelling:v330 & 1 error:&v339];

  v168 = v339;
  if (!v167)
  {
    v189 = v339;
    v327, v190, v191, v192, v193, v194, v195, v196;
    v334, v197, v198, v199, v200, v201, v202, v203;
    v204 = sub_100046A7C();

    v333 = v204;
    swift_willThrow();

    goto LABEL_44;
  }

  sub_100046E5C();
  v169 = v168;

  (*(v312 + 104))(v313, enum case for URL.DirectoryHint.isDirectory(_:), v314);
  sub_1000045DC(v309, 1, 1, v46);
  v170 = v311;
  sub_100046AFC();
  v171 = *(v115 + 16);
  v172 = v310;
  v171(v310, v170, v46);
  type metadata accessor for LSRModelInfo(0);
  swift_allocObject();
  v173 = v329;
  v174 = sub_100034160(v172, v173);
  v333 = v147;
  if (v147)
  {
    (*(v115 + 8))(v170, v46);

    v334, v175, v176, v177, v178, v179, v180, v181;
    v327, v182, v183, v184, v185, v186, v187, v188;
    v161 = v331;
LABEL_44:
    sub_1000064CC(v335, &qword_10006FED0, &qword_10004CF38);
    v205 = v336;
    (*(v318 + 8))(&v336[v317], v321);
    v161[1], v206, v207, v208, v209, v210, v211, v212;
    v315[1], v213, v214, v215, v216, v217, v218, v219;
    sub_1000064CC(&v205[v316], &qword_10006FED0, &qword_10004CF38);
    v220 = v322;
    sub_10000CCCC(*&v322[v320]);
    sub_10000CCCC(*&v220[v319]);
    type metadata accessor for LSRAssets(0);
    swift_deallocPartialClassInstance();
    return v220;
  }

  v63 = v174;
  v221 = sub_10000BDAC();
  v222(v221);
  v171(&v336[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelRoot], (v63 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelRoot), v46);
LABEL_46:
  v223 = OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_configurationFile;
  swift_beginAccess();
  v224 = v63 + v223;
  v225 = v46;
  v226 = v307;
  sub_10000905C(v224, v307, &qword_10006FED0, &qword_10004CF38);
  result = sub_100004844(v226, 1, v225);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_58;
  }

  result = (*(v115 + 32))(&v336[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_configurationFile], v226, v225);
  v228 = *(v63 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelVersion + 8);
  if (!v228)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v229 = v336;
  v230 = &v336[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelVersion];
  *v230 = *(v63 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelVersion);
  *(v230 + 1) = v228;
  v231 = *(v63 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelQualityType + 8);
  v232 = &v229[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelQualityType];
  *v232 = *(v63 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelQualityType);
  *(v232 + 1) = v231;
  v233 = *(v63 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelTaskNames);
  if (!v233)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v234 = OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelTaskNames;
  *&v336[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelTaskNames] = v233;
  v235 = *(v63 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelSamplingRates);
  if (v235)
  {

    v334, v236, v237, v238, v239, v240, v241, v242;
    *&v336[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelSamplingRates] = v235;
    if (qword_10006DD38 != -1)
    {
      sub_100004E14(&qword_10006DD38);
    }

    v243 = sub_100046D1C();
    sub_100004D64(v243, qword_1000714A0);
    v244 = v336;
    v245 = v327;

    v246 = sub_100046D0C();
    v247 = sub_100046FFC();

    v245, v248, v249, v250, v251, v252, v253, v254;
    if (os_log_type_enabled(v246, v247))
    {
      v262 = swift_slowAlloc();
      v334 = swift_slowAlloc();
      v338 = v334;
      *v262 = 136315906;
      *(v262 + 4) = sub_100004EB4(0xD000000000000048, 0x800000010004EE70, &v338);
      v332 = v234;
      *(v262 + 12) = 2080;
      v263 = sub_100004EB4(v325, v245, &v338);
      v245, v264, v265, v266, v267, v268, v269, v270;
      *(v262 + 14) = v263;
      *(v262 + 22) = 2080;
      v271 = *v331;
      v272 = v331[1];

      v273 = sub_100004EB4(v271, v272, &v338);
      v272, v274, v275, v276, v277, v278, v279, v280;
      *(v262 + 24) = v273;
      *(v262 + 32) = 2080;
      v281 = *&v336[v332];

      v282 = sub_100046F0C();
      v284 = v283;
      v281, v283, v285, v286, v287, v288, v289, v290;
      v291 = sub_100004EB4(v282, v284, &v338);
      v284, v292, v293, v294, v295, v296, v297, v298;
      *(v262 + 34) = v291;
      sub_100023294();
      _os_log_impl(v299, v300, v301, v302, v303, 0x2Au);
      swift_arrayDestroy();
      sub_100002BBC();

      sub_10000B818();
    }

    else
    {
      v245, v255, v256, v257, v258, v259, v260, v261;
    }

    v304 = type metadata accessor for LSRAssets(0);
    v337.receiver = v244;
    v337.super_class = v304;
    v220 = objc_msgSendSuper2(&v337, "init");

    sub_1000064CC(v335, &qword_10006FED0, &qword_10004CF38);
    return v220;
  }

LABEL_60:
  __break(1u);
  return result;
}

id sub_100020E50(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC22localspeechrecognition9LSRAssets____lazy_storage___contextualData;
  v4 = *(v1 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets____lazy_storage___contextualData);
  v5 = v4;
  if (v4 == 1)
  {
    v6 = sub_100046ADC();
    v8 = v7;
    v9 = objc_allocWithZone(_EARContextualData);
    v5 = sub_100025608(v6, v8, v10);
    v11 = *(v2 + v3);
    *(v2 + v3) = v5;
    v12 = v5;
    sub_10000CCCC(v11);
  }

  sub_10000CCDC(v4);
  return v5;
}

id sub_100020EF4()
{
  v1 = OBJC_IVAR____TtC22localspeechrecognition9LSRAssets____lazy_storage___geoLMHelper;
  v2 = *(v0 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets____lazy_storage___geoLMHelper);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_100022510(*(v0 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_language), *(v0 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_language + 8));
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_10000CCCC(v4);
  }

  sub_10000CCDC(v2);
  return v3;
}

void sub_100020F74(uint64_t a1, void (**a2)(void, void))
{
  v4 = sub_100046B0C();
  __chkstk_darwin(v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelRoot);
  v8 = *(a1 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelVersion);
  v9 = *(a1 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelVersion + 8);
  v10 = *(a1 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelTaskNames);
  v11 = *(a1 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelQualityType + 8);
  v12 = *(a1 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelSamplingRates);
  v13 = *(v12 + 16);
  if (v13)
  {
    v20[1] = *(a1 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelQualityType);
    v22 = v8;
    v23 = a2;
    v24 = &_swiftEmptyArrayStorage;
    v21 = v9;

    sub_1000472AC();
    v14 = (v12 + 32);
    do
    {
      v15 = *v14++;
      [objc_allocWithZone(NSNumber) initWithInteger:v15];
      sub_10004728C();
      sub_1000472BC();
      sub_1000472CC();
      sub_10004729C();
      --v13;
    }

    while (v13);
    a2 = v23;
    v16 = v24;
    v9 = v21;
  }

  else
  {

    v16 = &_swiftEmptyArrayStorage;
  }

  v17 = objc_allocWithZone(_SFModelProperties);
  v19 = sub_100022E38(v6, v9, v10, v11, v16, v18);
  (a2)[2](a2, v19);

  _Block_release(a2);
}

void sub_100021218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void))
{
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v10 = sub_100046D1C();
  sub_100004D64(v10, qword_1000714B8);
  v11 = sub_100046D0C();
  v12 = sub_100046FFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100004EB4(0xD00000000000003FLL, 0x800000010004EE30, aBlock);
    _os_log_impl(&_mh_execute_header, v11, v12, "LSRAssets.%s", v13, 0xCu);
    sub_1000050D4(v14);
  }

  v15 = swift_allocObject();
  *(v15 + 16) = &_swiftEmptyArrayStorage;
  v16 = sub_100020E50(v15);
  if (v16)
  {
    v17 = v16;
    aBlock[4] = sub_100023284;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000217C4;
    aBlock[3] = &unk_100065FB0;
    v18 = _Block_copy(aBlock);

    sub_1000231F4(a1, a2, a3, a4, v18, v17, &selRef_iterNamedEntitySourceWithApplication_task_block_);
    _Block_release(v18);
  }

  v19 = sub_100046D0C();
  v20 = sub_100046FFC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_100004EB4(0xD00000000000003FLL, 0x800000010004EE30, aBlock);
    *(v21 + 12) = 2048;
    swift_beginAccess();
    *(v21 + 14) = sub_10000AD40(*(v15 + 16));

    _os_log_impl(&_mh_execute_header, v19, v20, "LSRAssets.%s replying with %ld sources", v21, 0x16u);
    sub_1000050D4(v22);
  }

  else
  {
  }

  swift_beginAccess();
  v23 = *(v15 + 16);
  sub_1000029E4(0, &qword_10006FB88, _SFContextualNamedEntitySource_ptr);

  isa = sub_100046EEC().super.isa;
  (a6)[2](a6, isa);

  v23, v25, v26, v27, v28, v29, v30, v31;

  _Block_release(a6);
}

uint64_t sub_1000215FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10000ECEC(&qword_10006FB80, &unk_10004D060);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v16 = &v20 - v15;
  if (!a1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v17 = sub_100033C00(a1);
  sub_10000905C(a2, v16, &qword_10006FB80, &unk_10004D060);
  v18 = sub_100046B7C();
  result = sub_100004844(v16, 1, v18);
  if (result == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_10000905C(a3, v13, &qword_10006FB80, &unk_10004D060);
  result = sub_100004844(v13, 1, v18);
  if (result != 1)
  {
    v19 = objc_allocWithZone(_SFContextualNamedEntitySource);
    sub_100022F90(v17, v16, v13, a4);
    swift_beginAccess();
    sub_100046EDC();
    sub_100023484(*((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_100046F3C();
    return swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1000217C4(uint64_t a1, _TtC22localspeechrecognition19EARSpeechRecognizer *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10000ECEC(&qword_10006FB80, &unk_10004D060);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v29 - v14;
  v16 = *(a1 + 32);
  if (a2)
  {
    a2 = sub_100046FBC();
  }

  if (a3)
  {
    sub_100046B6C();
    v17 = sub_100046B7C();
    v18 = 0;
  }

  else
  {
    v17 = sub_100046B7C();
    v18 = 1;
  }

  v19 = 1;
  sub_1000045DC(v15, v18, 1, v17);
  if (a4)
  {
    sub_100046B6C();
    v19 = 0;
  }

  v20 = sub_100046B7C();
  sub_1000045DC(v13, v19, 1, v20);

  v16(a2, v15, v13, a5);

  a2, v21, v22, v23, v24, v25, v26, v27;
  sub_1000064CC(v13, &qword_10006FB80, &unk_10004D060);
  return sub_1000064CC(v15, &qword_10006FB80, &unk_10004D060);
}

void sub_100021990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void))
{
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v10 = sub_100046D1C();
  sub_100004D64(v10, qword_1000714B8);
  v11 = sub_100046D0C();
  v12 = sub_100046FFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100004EB4(0xD000000000000041, 0x800000010004EDB0, aBlock);
    _os_log_impl(&_mh_execute_header, v11, v12, "LSRAssets.%s", v13, 0xCu);
    sub_1000050D4(v14);
  }

  v15 = swift_allocObject();
  *(v15 + 16) = &_swiftEmptyArrayStorage;
  v16 = sub_100020E50(v15);
  if (v16)
  {
    v17 = v16;
    aBlock[4] = sub_1000231D4;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100021EE0;
    aBlock[3] = &unk_100065F60;
    v18 = _Block_copy(aBlock);

    sub_1000231F4(a1, a2, a3, a4, v18, v17, &selRef_iterRankedContactSourceWithApplication_task_block_);
    _Block_release(v18);
  }

  v19 = sub_100046D0C();
  v20 = sub_100046FFC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_100004EB4(0xD000000000000041, 0x800000010004EDB0, aBlock);
    *(v21 + 12) = 2048;
    swift_beginAccess();
    *(v21 + 14) = sub_10000AD40(*(v15 + 16));

    _os_log_impl(&_mh_execute_header, v19, v20, "LSRAssets.%s replying with %ld sources", v21, 0x16u);
    sub_1000050D4(v22);
  }

  else
  {
  }

  swift_beginAccess();
  v23 = *(v15 + 16);
  sub_1000029E4(0, &qword_10006FB78, _SFContextualRankedContactSource_ptr);

  isa = sub_100046EEC().super.isa;
  (a6)[2](a6, isa);

  v23, v25, v26, v27, v28, v29, v30, v31;

  _Block_release(a6);
}

uint64_t sub_100021D74(uint64_t a1, _TtC22localspeechrecognition19EARSpeechRecognizer *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10000ECEC(&qword_10006FB80, &unk_10004D060);
  result = __chkstk_darwin(v12 - 8);
  v15 = &v17 - v14;
  if (a2)
  {
    sub_10000905C(a3, &v17 - v14, &qword_10006FB80, &unk_10004D060);
    v16 = sub_100046B7C();
    result = sub_100004844(v15, 1, v16);
    if (result != 1)
    {
      objc_allocWithZone(_SFContextualRankedContactSource);

      sub_10002308C(a1, a2, v15, a4 & 1, a5);
      swift_beginAccess();
      sub_100046EDC();
      sub_100023484(*((*(a6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_100046F3C();
      return swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100021EE0(uint64_t a1, _TtC22localspeechrecognition19EARSpeechRecognizer *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10000ECEC(&qword_10006FB80, &unk_10004D060);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  v13 = *(a1 + 32);
  if (!a2)
  {
    v14 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = sub_100046B7C();
    v17 = 1;
    goto LABEL_6;
  }

  v14 = sub_100046E5C();
  a2 = v15;
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_100046B6C();
  v16 = sub_100046B7C();
  v17 = 0;
LABEL_6:
  sub_1000045DC(v12, v17, 1, v16);

  v13(v14, a2, v12, a4, a5);

  a2, v18, v19, v20, v21, v22, v23, v24;
  return sub_1000064CC(v12, &qword_10006FB80, &unk_10004D060);
}

void sub_100022040(void *a1, int a2, uint64_t a3, uint64_t a4, void *aBlock, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  v9 = sub_100046E5C();
  v11 = v10;
  v12 = sub_100046E5C();
  v14 = v13;
  _Block_copy(v8);
  v15 = a1;
  a6(v9, v11, v12, v14, v15, v8);
  _Block_release(v8);

  v11, v16, v17, v18, v19, v20, v21, v22;

  v14, v23, v24, v25, v26, v27, v28, v29;
}

void sub_100022108(double a1, double a2, uint64_t a3, void (**a4)(void, void))
{
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v7 = sub_100046D1C();
  sub_100004D64(v7, qword_1000714B8);
  v8 = sub_100046D0C();
  v9 = sub_100046FFC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v54 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100004EB4(0xD00000000000002ELL, 0x800000010004ED50, &v54);
    _os_log_impl(&_mh_execute_header, v8, v9, "LSRAssets.%s", v10, 0xCu);
    sub_1000050D4(v11);
  }

  v12 = sub_100020EF4();
  if (v12)
  {
    sub_100046BDC();
    v14 = v13;
    v15 = sub_100046E4C();
    v14, v16, v17, v18, v19, v20, v21, v22;
    v23 = [v12 regionIdForLocale:v15 latitude:a1 longitude:a2];

    if (v23)
    {
      v12 = sub_100046E5C();
      v25 = v24;

      goto LABEL_10;
    }

    v12 = 0;
  }

  v25 = 0;
LABEL_10:

  v26 = sub_100046D0C();
  v27 = sub_100046FFC();
  v25, v28, v29, v30, v31, v32, v33, v34;
  if (os_log_type_enabled(v26, v27))
  {
    v35 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v35 = 136315394;
    *(v35 + 4) = sub_100004EB4(0xD00000000000002ELL, 0x800000010004ED50, &v56);
    *(v35 + 12) = 2080;
    if (v25)
    {
      v54 = 34;
      v55 = 0xE100000000000000;
      v58._countAndFlagsBits = v12;
      v58._object = v25;
      sub_100046EBC(v58);
      v59._countAndFlagsBits = 34;
      v59._object = 0xE100000000000000;
      sub_100046EBC(v59);
      v36 = v54;
      v37 = v55;
    }

    else
    {
      v37 = 0xE300000000000000;
      v36 = 7104878;
    }

    v38 = sub_100004EB4(v36, v37, &v56);
    v37, v39, v40, v41, v42, v43, v44, v45;
    *(v35 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v26, v27, "LSRAssets.%s replying %s", v35, 0x16u);
    swift_arrayDestroy();
  }

  if (v25)
  {
    v46 = sub_100046E4C();
  }

  else
  {
    v46 = 0;
  }

  (a4)[2](a4, v46);
  v25, v47, v48, v49, v50, v51, v52, v53;

  _Block_release(a4);
}

id sub_100022510(uint64_t a1, _TtC22localspeechrecognition19EARSpeechRecognizer *a2)
{
  v3 = v2;
  v6 = sub_10000ECEC(&qword_10006FED0, &qword_10004CF38);
  __chkstk_darwin(v6 - 8);
  v8 = v105 - v7;
  v9 = sub_100046B0C();
  sub_100004E00();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100002B2C();
  v15 = (v14 - v13);
  sub_1000029E4(0, &qword_10006FB70, SFEntitledAssetConfig_ptr);

  v16 = sub_100022A54(a1, a2, 4);
  v17 = objc_opt_self();
  v18 = [v17 sharedInstance];
  v105[1] = v3;
  v19 = sub_100046E4C();
  v106 = v16;
  v20 = [v18 installedAssetWithConfig:v16 regionId:0 shouldSubscribe:1 subscriberId:v19 expiration:0];

  if (!v20)
  {
    goto LABEL_8;
  }

  v21 = sub_100046E5C();
  v23 = v22;

  v31 = (v23 >> 56) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v31 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {
    v23, v24, v25, v26, v27, v28, v29, v30;
LABEL_8:
    if (qword_10006DD40 != -1)
    {
      sub_100002B5C(&qword_10006DD40);
    }

    v51 = sub_100046D1C();
    sub_100004D64(v51, qword_1000714B8);

    v52 = sub_100046D0C();
    v53 = sub_10004700C();
    a2, v54, v55, v56, v57, v58, v59, v60;
    if (os_log_type_enabled(v52, v53))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v107 = v62;
      *v61 = 136315138;
      *(v61 + 4) = sub_100004EB4(a1, a2, &v107);
      _os_log_impl(&_mh_execute_header, v52, v53, "GeoLM: region mapping json file is nil Or there is no regionMapping for given language=%s", v61, 0xCu);
      sub_1000050D4(v62);
      sub_10000B818();

      sub_100002BBC();
    }

    goto LABEL_13;
  }

  v32 = [v17 jsonFilenameForAssetType:4];
  sub_100046E5C();
  v34 = v33;

  sub_100046AEC();
  v23, v35, v36, v37, v38, v39, v40, v41;
  if (sub_100004844(v8, 1, v9) == 1)
  {
    v34, v42, v43, v44, v45, v46, v47, v48;
    sub_1000064CC(v8, &qword_10006FED0, &qword_10004CF38);
    v49 = 0;
    v50 = 0;
  }

  else
  {
    sub_100046AAC();
    v34, v64, v65, v66, v67, v68, v69, v70;
    v71 = *(v11 + 8);
    v71(v8, v9);
    v49 = sub_100046ACC(0);
    v50 = v72;
    v71(v15, v9);
  }

  if (qword_10006DD40 != -1)
  {
    sub_100002B5C(&qword_10006DD40);
  }

  v73 = sub_100046D1C();
  sub_100004D64(v73, qword_1000714B8);

  v74 = sub_100046D0C();
  v75 = sub_100046FFC();
  v50, v76, v77, v78, v79, v80, v81, v82;
  if (os_log_type_enabled(v74, v75))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v107 = v84;
    *v83 = 136315138;
    if (v50)
    {
      v85 = v49;
    }

    else
    {
      v85 = 7104878;
    }

    if (v50)
    {
      v86 = v50;
    }

    else
    {
      v86 = 0xE300000000000000;
    }

    v87 = sub_100004EB4(v85, v86, &v107);
    v86, v88, v89, v90, v91, v92, v93, v94;
    *(v83 + 4) = v87;
    sub_100023294();
    _os_log_impl(v95, v96, v97, v98, v99, 0xCu);
    sub_1000050D4(v84);
    sub_100002BBC();

    sub_10000B818();
  }

  if (v50)
  {
    v100 = sub_100046BDC();
    v102 = v101;
    v103 = objc_allocWithZone(_EARGeoLMHelper);
    v63 = sub_10002314C(v100, v102, v49, v50);

    return v63;
  }

LABEL_13:

  return 0;
}

id sub_100022A54(uint64_t a1, _TtC22localspeechrecognition19EARSpeechRecognizer *a2, uint64_t a3)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = sub_100046E4C();
  a2, v7, v8, v9, v10, v11, v12, v13;
  v14 = [v5 initWithLanguage:v6 assetType:a3];

  return v14;
}

id sub_100022B10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LSRAssets(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LSRAssets(uint64_t a1)
{
  result = qword_10006FB58;
  if (!qword_10006FB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100022CF8(uint64_t a1)
{
  sub_100046C3C();
  if (v1 <= 0x3F)
  {
    sub_1000020D4(319);
    if (v2 <= 0x3F)
    {
      sub_100046B0C();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

id sub_100022E38@<X0>(uint64_t a1@<X0>, _TtC22localspeechrecognition19EARSpeechRecognizer *a3@<X2>, _TtC22localspeechrecognition19EARSpeechRecognizer *a4@<X3>, _TtC22localspeechrecognition19EARSpeechRecognizer *a6@<X5>, _TtC22localspeechrecognition19EARSpeechRecognizer *a7@<X6>, NSURL *x8_0@<X8>)
{
  v9 = v8;
  sub_100046A9C(x8_0);
  v16 = v15;
  v17 = sub_100046E4C();
  a3, v18, v19, v20, v21, v22, v23, v24;
  isa = sub_100046EEC().super.isa;
  a4, v26, v27, v28, v29, v30, v31, v32;
  v33 = sub_100046E4C();
  a6, v34, v35, v36, v37, v38, v39, v40;
  sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
  v41 = sub_100046EEC().super.isa;
  a7, v42, v43, v44, v45, v46, v47, v48;
  v49 = [v9 initWithModelRoot:v16 modelVersion:v17 modelTaskNames:isa modelQualityType:v33 modelSamplingRates:v41];

  v50 = sub_100046B0C();
  (*(*(v50 - 8) + 8))(a1, v50);
  return v49;
}

id sub_100022F90(_TtC22localspeechrecognition19EARSpeechRecognizer *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  isa = sub_100046EEC().super.isa;
  a1, v11, v12, v13, v14, v15, v16, v17;
  v18 = sub_100046B4C().super.isa;
  v19 = sub_100046B4C().super.isa;
  v20 = [v5 initWithSourceApplications:isa fromDate:v18 toDate:v19 limit:a4];

  v21 = sub_100046B7C();
  v22 = *(*(v21 - 8) + 8);
  v22(a3, v21);
  v22(a2, v21);
  return v20;
}

id sub_10002308C(uint64_t a1, _TtC22localspeechrecognition19EARSpeechRecognizer *a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_100046E4C();
  a2, v12, v13, v14, v15, v16, v17, v18;
  isa = sub_100046B4C().super.isa;
  v20 = [v6 initWithSourceApplication:v11 rankDate:isa contactOnly:a4 & 1 limit:a5];

  v21 = sub_100046B7C();
  (*(*(v21 - 8) + 8))(a3, v21);
  return v20;
}

id sub_10002314C(uint64_t a1, _TtC22localspeechrecognition19EARSpeechRecognizer *a2, uint64_t a3, _TtC22localspeechrecognition19EARSpeechRecognizer *a4)
{
  v7 = sub_100046E4C();
  a2, v8, v9, v10, v11, v12, v13, v14;
  v15 = sub_100046E4C();
  a4, v16, v17, v18, v19, v20, v21, v22;
  v23 = [v4 initWithLocale:v7 config:v15];

  return v23;
}

uint64_t sub_1000231DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000231F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, SEL *a7)
{
  v10 = sub_100046E4C();
  v11 = sub_100046E4C();
  [a6 *a7];
}

double sub_1000232A0@<D0>(uint64_t a1@<X8>, const char *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>)
{
  v10 = *(v8 + a1 + 8);

  v10, a2, a3, a4, a5, a6, a7, a8;
  return result;
}

id sub_10002333C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EARModelContextDelegateInterface(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000233DC(uint64_t a1)
{
  sub_1000175D4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100023488(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  else
  {
    return 0;
  }
}

char *sub_1000234BC(unint64_t a1)
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
      sub_100025B48((result - 1), (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    return sub_10004725C();
  }

  result = sub_10004736C();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_100023550(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000ECEC(&qword_10006FC50, &unk_10004D0C0);
    sub_100026488();
    v2 = sub_1000473AC();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100026414(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100026414(v29, v30);
    result = sub_1000471AC(v2[5]);
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*&v7[8 * (v14 >> 6)]) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *&v7[8 * v15];
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*&v7[8 * (v14 >> 6)])) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
    v21 = v2[6] + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    result = sub_100026414(v30, (v2[7] + 32 * v16));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100023810(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000ECEC(&qword_10006FC50, &unk_10004D0C0);
    v2 = sub_1000473AC();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_100005078(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100026414(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100026414(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100026414(v31, v32);
    result = sub_1000471AC(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v17];
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    v23 = v2[6] + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_100026414(v32, (v2[7] + 32 * v18));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void *sub_100023AD4(void *result)
{
  if (result)
  {
    v1 = result;
    v8 = result;
    type metadata accessor for LSRError(0);
    sub_100025B04(&qword_10006E820, type metadata accessor for LSRError);
    sub_100046A1C();
    if ((v7 - 2) >= 2 && (v7 - 101) >= 2)
    {
      if (v7 == 6)
      {
        type metadata accessor for SFSpeechError(0);
        sub_10004704C();
        sub_100046A3C();
        sub_100005440();
        sub_100025B04(v4, v5);
        sub_100046A5C();

        return v6;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      type metadata accessor for SFSpeechError(0);
      sub_10004707C();
      sub_100046A3C();
      sub_100005440();
      sub_100025B04(v2, v3);
      sub_100046A5C();

      return v8;
    }
  }

  return result;
}

void *sub_100023C84(unint64_t a1, uint64_t a2, uint64_t a3, _TtC22localspeechrecognition19EARSpeechRecognizer *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(v348) = a8;
  v341 = a6;
  v342 = a7;
  v340 = a5;
  v346 = a3;
  v347 = a4;
  v9 = sub_100046C3C();
  __chkstk_darwin(v9 - 8);
  p_type = (&v325 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_100046E3C();
  __chkstk_darwin(v12 - 8);
  v338 = (&v325 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100046B0C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v334 = &v325 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026450();
  __chkstk_darwin(v17);
  sub_100026470();
  v335 = v18;
  sub_100026450();
  __chkstk_darwin(v19);
  sub_100026470();
  v336 = v20;
  sub_100026450();
  __chkstk_darwin(v21);
  sub_100026470();
  v337 = v22;
  sub_100026450();
  v24 = __chkstk_darwin(v23);
  v26 = &v325 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v325 - v28;
  v30 = __chkstk_darwin(v27);
  v31 = __chkstk_darwin(v30);
  v33 = &v325 - v32;
  __chkstk_darwin(v31);
  sub_100026470();
  v343 = v34;
  sub_100026450();
  __chkstk_darwin(v35);
  v344 = (&v325 - v36);
  v37 = sub_1000261EC(a1);
  if (v38 >> 60 != 15)
  {
    sub_10000C198(v37, v38);
    if (qword_10006DD40 != -1)
    {
      goto LABEL_103;
    }

    goto LABEL_33;
  }

  v333 = v26;
  v330 = v29;
  v39 = sub_1000262A8(a1, &selRef_enhancedContextualStrings, &qword_10006FC68, _SFEnhancedContextualString_ptr);
  if (v39)
  {
    v40 = v39;
  }

  else
  {
    v40 = &_swiftEmptyArrayStorage;
  }

  v41 = sub_100026250(a1);
  if (v41)
  {
    v42 = v41;
  }

  else
  {
    v42 = &_swiftEmptyArrayStorage;
  }

  v345 = v42;
  v43 = sub_1000262A8(a1, &selRef_contextualNamedEntities, &qword_10006FC60, _SFContextualNamedEntityCodingObject_ptr);
  if (v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = &_swiftEmptyArrayStorage;
  }

  v350 = v40;
  v339 = sub_10000AD1C(v40);
  if (!v339 && !*v345->transaction && !sub_10000AD1C(v44))
  {
    v350, v45, v46, v47, v48, v49, v50, v51;
    v345, v217, v218, v219, v220, v221, v222, v223;
    v44, v224, v225, v226, v227, v228, v229, v230;
    return 0;
  }

  if (v348)
  {
    if (qword_10006DD30 != -1)
    {
      sub_10000418C(&qword_10006DD30);
    }

    mach_continuous_time();
    sub_10000D8DC();
  }

  v332 = v14;
  if (v339)
  {
    v331 = v15;
    v44, v45, v46, v47, v48, v49, v50, v51;
    v52 = sub_100002BC8();
    v53 = v344;
    sub_100005BC4(v52);
    sub_10000C690();
    v54 = sub_100046ADC();
    sub_100046ADC();
    v55 = objc_allocWithZone(_EARJitProfile);
    v56 = v347;

    v57 = sub_100004B70();
    if (v57)
    {
      v65 = v57;
      v66 = sub_10000AD40(v350);
      v67 = v331;
      if (!v66)
      {
LABEL_31:
        sub_1000029E4(0, &qword_10006FC38, _EARWordPart_ptr);
        sub_100026488();
        sub_100046EEC();
        v85 = sub_100026494();
        v85, v86, v87, v88, v89, v90, v91, v92;
        v93 = [(EARSpeechRecognizer *)v65 jitProfileFromWordsWithMetadata:v54];

        v94 = sub_100046B3C();
        v96 = v95;

        v97 = *(v67 + 8);
        sub_10002647C();
        v97();
        (v97)(v53, v93);
LABEL_52:
        v231 = v349;
LABEL_53:
        v232 = v339;
        if (v348)
        {
          v173 = v345;
          if (qword_10006DD30 != -1)
          {
            goto LABEL_106;
          }

          goto LABEL_55;
        }

        v345, v98, v99, v100, v101, v102, v103, v104;
        v260 = v350;
LABEL_82:
        v260, v253, v254, v255, v256, v257, v258, v259;
        return v94;
      }

      v54 = v66;
      v347 = v65;
      v351 = &_swiftEmptyArrayStorage;
      sub_1000472AC();
      if ((v54 & 0x8000000000000000) == 0)
      {
        v33 = 0;
        v68 = v350 & 0xC000000000000001;
        do
        {
          if (v68)
          {
            v69 = sub_10004725C();
          }

          else
          {
            v69 = *(v350 + 8 * v33 + 32);
          }

          v70 = v69;
          v71 = sub_10002631C(v69, &selRef_tagName);
          if (v72)
          {
            v73 = v71;
            v74 = v72;
            v75 = [v70 context];
            v76 = sub_100046E5C();
            v78 = v77;

            v79 = objc_allocWithZone(_EARWordPart);
            sub_100025724(v76, v78, &_swiftEmptySetSingleton, v73, v74, 1, 0, 0);
          }

          else
          {
            v80 = [v70 context];
            v81 = sub_100046E5C();
            v83 = v82;

            v84 = objc_allocWithZone(_EARWordPart);
            sub_100025834(v81, v83, &_swiftEmptySetSingleton, 7);
          }

          ++v33;
          sub_10004728C();
          sub_1000472BC();
          sub_1000472CC();
          sub_10004729C();
        }

        while (v54 != v33);
        v67 = v331;
        v53 = v344;
        v65 = v347;
        goto LABEL_31;
      }

      __break(1u);
    }

    else
    {
      v345, v58, v59, v60, v61, v62, v63, v64;
      v350, v125, v126, v127, v128, v129, v130, v131;
      sub_10004703C();
      sub_100026428();
      v56 = v331;
      if (qword_10006DD78 == -1)
      {
LABEL_40:
        v132 = off_100071650;
        v133 = off_100071650;
        sub_100046C2C();
        v134 = sub_100005C28();
        v137 = sub_100004124(v134, v135, v136, v132, p_type);
        v139 = sub_10000BF74(v137, v138);
        sub_1000264A0(v139);
        v140 = *(v56 + 8);
        v94 = (v56 + 8);
        sub_10002647C();
        v140();
        (v140)(v53, v132);
        return v94;
      }
    }

    sub_100004E34(&qword_10006DD78);
    goto LABEL_40;
  }

  if (*v345->transaction)
  {
    v109 = v15;
    v44, v45, v46, v47, v48, v49, v50, v51;
    v110 = sub_100002BC8();
    sub_100005BC4(v110);
    sub_10000C690();
    sub_100046ADC();
    sub_100046ADC();
    v111 = objc_allocWithZone(_EARJitProfile);
    v94 = v347;

    v112 = sub_100004B70();
    if (v112)
    {
      v120 = v112;
      isa = sub_100046EEC().super.isa;
      v122 = [v120 jitProfileFromContextualStrings:isa];

      v94 = sub_100046B3C();
      v96 = v123;

      v124 = *(v109 + 8);
      sub_10002647C();
      v124();
      (v124)(v33, v120);
      goto LABEL_52;
    }

    v345, v113, v114, v115, v116, v117, v118, v119;
    v350, v201, v202, v203, v204, v205, v206, v207;
    sub_10004703C();
    sub_100026428();
    if (qword_10006DD78 == -1)
    {
LABEL_49:
      v208 = off_100071650;
      v209 = off_100071650;
      sub_100046C2C();
      v210 = sub_100005C28();
      v213 = sub_100004124(v210, v211, v212, v208, p_type);
      v215 = sub_10000BF74(v213, v214);
      sub_1000264A0(v215);
      v216 = *(v109 + 8);
      sub_10002647C();
      v216();
      (v216)(v33, v208);
      return v94;
    }

LABEL_110:
    sub_100004E34(&qword_10006DD78);
    goto LABEL_49;
  }

  v141 = sub_10000AD1C(v44);
  if (!v141)
  {
    v44, v142, v143, v144, v145, v146, v147, v148;
    v94 = 0;
    v96 = 0xF000000000000000;
    goto LABEL_52;
  }

  v326 = v141;
  v344 = v44;
  v327 = p_type;
  v331 = v15;
  v149 = sub_100002BC8();
  sub_100005BC4(v149);
  sub_10000C690();
  sub_100046AAC();
  sub_100046AAC();
  sub_100046AAC();
  sub_100046AAC();
  v343 = sub_100046ADC();
  v329 = v150;
  v151 = v347;

  v328 = sub_100046ADC();
  v153 = v152;
  v154 = sub_100046ADC();
  v156 = v155;
  v33 = sub_100046ADC();
  v158 = v157;
  v159 = sub_100046ADC();
  v161 = v160;
  v162 = objc_allocWithZone(_EARUserProfileBuilder);
  v163 = v349;
  v164 = sub_1000258CC(v343, v329, v346, v151, 0, 0, 0, v328, v153, v154, v156, v33, v158, v159, v161, 1);
  v96 = v163;
  if (v163)
  {

    v172 = v345;
    v173 = v338;
LABEL_44:
    v350, v165, v166, v167, v168, v169, v170, v171;
    v344, v174, v175, v176, v177, v178, v179, v180;
    v172, v181, v182, v183, v184, v185, v186, v187;
    v188 = sub_10004703C();
    sub_100046DCC();
    v189 = v330;
    v94 = v333;
    if (qword_10006DD78 != -1)
    {
      sub_100004E34(&qword_10006DD78);
    }

    v190 = off_100071650;
    v191 = off_100071650;
    v192 = v327;
    sub_100046C2C();
    v193 = sub_100005C28();
    v196 = sub_100004124(v193, v194, v195, v190, v192);
    v198 = sub_10000BF74(v196, v197);
    sub_1000264A0(v198);
    v199 = sub_10002645C();
    v188(v199);
    (v188)(v335, v173);
    (v188)(v336, v173);
    (v188)(v337, v173);
    (v188)(v94, v173);
    v200 = v189;
LABEL_47:
    (v188)(v200, v173);
    return v94;
  }

  v278 = v164;
  v172 = v345;
  v173 = v338;
  if (!v164)
  {
    goto LABEL_44;
  }

  v94 = v330;
  v279 = sub_100046ADC();
  v281 = v280;
  v282 = objc_allocWithZone(_EARContextualData);
  v284 = sub_100025608(v279, v281, v283);
  if (!v284)
  {
    v344, v285, v286, v287, v288, v289, v290, v291;
    v345, v300, v301, v302, v303, v304, v305, v306;
    v350, v307, v308, v309, v310, v311, v312, v313;
    sub_100046DCC();
    if (qword_10006DD78 != -1)
    {
      sub_100004E34(&qword_10006DD78);
    }

    v188 = off_100071650;
    v314 = off_100071650;
    v315 = v327;
    sub_100046C2C();
    v316 = sub_100005C28();
    sub_100004124(v316, v317, v318, v188, v315);
    v319 = sub_100046D5C();
    sub_1000264A0(v319);

    v320 = sub_10002645C();
    v188(v320);
    (v188)(v335, v173);
    (v188)(v336, v173);
    (v188)(v337, v173);
    (v188)(v333, v173);
    v200 = v94;
    goto LABEL_47;
  }

  v292 = v284;
  v232 = 0;
  v293 = v344;
  v94 = (v344 & 0xC000000000000001);
  v294 = v344 & 0xFFFFFFFFFFFFFF8;
  v231 = v326;
  while (1)
  {
    if (v231 == v232)
    {
      v293, v293, v286, v287, v288, v289, v290, v291;
      v296 = sub_100046B2C().super.isa;
      v297 = [v278 createInlineLmeUserDataForContextData:v292 speechProfile:v296];

      if (v297)
      {
        v298 = sub_100046B3C();
        v33 = v299;
      }

      else
      {

        v298 = 0;
        v33 = 0xF000000000000000;
      }

      v231 = 0;
      v321 = v330;
      v322 = v333;
      v323 = v332;
      v324 = *(v331 + 8);
      v324(v334, v332);
      v324(v335, v323);
      v324(v336, v323);
      v324(v337, v323);
      v324(v322, v323);
      v324(v321, v323);
      v94 = v298;
      v96 = v33;
      goto LABEL_53;
    }

    if (v94)
    {
      v295 = sub_10004725C();
    }

    else
    {
      if (v232 >= *(v294 + 16))
      {
        goto LABEL_105;
      }

      v295 = *&v293->audioBufferListeners[8 * v232];
    }

    v173 = v295;
    if (__OFADD__(v232, 1))
    {
      break;
    }

    v351 = v295;
    sub_100025348(&v351, v292);

    ++v232;
    v293 = v344;
  }

  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  sub_10000418C(&qword_10006DD30);
LABEL_55:
  v233 = qword_100071498;
  v234 = mach_continuous_time();
  v242 = v234;
  if (!v232)
  {
    v350, v235, v236, v237, v238, v239, v240, v241;
LABEL_81:
    sub_10000D914(v340, v341, v342, v242, v173, v274, v275, v276, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336);
    v260 = v173;
    goto LABEL_82;
  }

  v344 = v234;
  v346 = v233;
  v347 = v96;
  v348 = v94;
  v349 = v231;
  v173, v235, v236, v237, v238, v239, v240, v241;
  a1 = 0;
  v351 = &_swiftEmptyArrayStorage;
  v250 = v350 & 0xC000000000000001;
  v251 = v350 & 0xFFFFFFFFFFFFFF8;
  p_type = &stru_10006AFF0.type;
  while (2)
  {
    if (v232 == a1)
    {
      v350, v243, v244, v245, v246, v247, v248, v249;
      v261 = v351;
      v262 = sub_10000AD40(v351);
      if (v262)
      {
        v109 = v262;
        v351 = &_swiftEmptyArrayStorage;
        sub_100004A54(0, v262 & ~(v262 >> 63), 0);
        if (v109 < 0)
        {
          __break(1u);
          goto LABEL_110;
        }

        v263 = 0;
        v173 = v351;
        v350 = v261 & 0xC000000000000001;
        v264 = v261;
        do
        {
          if (v350)
          {
            v265 = sub_10004725C();
          }

          else
          {
            v265 = *&v261->audioBufferListeners[8 * v263];
          }

          v266 = v265;
          v267 = [v265 context];
          v268 = sub_100046E5C();
          v270 = v269;

          v351 = v173;
          v272 = *v173->transaction;
          v271 = *v173->resultStream;
          if (v272 >= v271 >> 1)
          {
            sub_100004A54((v271 > 1), v272 + 1, 1);
            v173 = v351;
          }

          ++v263;
          *v173->transaction = v272 + 1;
          v273 = v173 + 16 * v272;
          *(v273 + 4) = v268;
          *(v273 + 5) = v270;
          v261 = v264;
        }

        while (v109 != v263);
      }

      else
      {

        v173 = &_swiftEmptyArrayStorage;
      }

      v94 = v348;
      v242 = v344;
      goto LABEL_81;
    }

    if (v250)
    {
      v252 = sub_10004725C();
    }

    else
    {
      if (a1 >= *(v251 + 16))
      {
        goto LABEL_102;
      }

      v252 = *(v350 + 8 * a1 + 32);
    }

    v94 = v252;
    if (!__OFADD__(a1, 1))
    {
      if ([v252 isLoggable])
      {
        sub_10004728C();
        sub_1000472BC();
        sub_1000472CC();
        sub_10004729C();
      }

      else
      {
      }

      ++a1;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  swift_once();
LABEL_33:
  v105 = sub_100046D1C();
  sub_100004D64(v105, qword_1000714B8);
  v106 = sub_100046D0C();
  v107 = sub_100046FFC();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    *v108 = 0;
    _os_log_impl(&_mh_execute_header, v106, v107, "Using JIT profile data from context", v108, 2u);
  }

  return sub_1000261EC(a1);
}

uint64_t sub_100024E30(void *a1)
{
  v1 = [a1 recognition];
  v2 = [v1 tokenSausage];

  sub_10000ECEC(&qword_10006FC30, &qword_10004D0B0);
  sub_100026488();
  v3 = sub_100046EFC();

  v4 = sub_100023488(v3);
  v3, v5, v6, v7, v8, v9, v10, v11;
  if (!v4)
  {
    return 0;
  }

  v12 = sub_100023488(v4);
  v4, v13, v14, v15, v16, v17, v18, v19;
  if (!v12)
  {
    return 0;
  }

  sub_1000234BC(v12);
  v20 = sub_100026494();
  v20, v21, v22, v23, v24, v25, v26, v27;
  v28 = [(EARSpeechRecognizer *)v4 tokenName];
  v29 = sub_100046E5C();
  v31 = v30;

  if ([(EARSpeechRecognizer *)v4 hasSpaceBefore])
  {
    sub_10000B828();
    v31, v32, v33, v34, v35, v36, v37, v38;
    v29 = v47;
    v31 = v48;
  }

  if (([(EARSpeechRecognizer *)v4 hasSpaceAfter]& 1) != 0)
  {

    sub_10000C638();
    v31, v39, v40, v41, v42, v43, v44, v45;
  }

  return v29;
}

uint64_t sub_100024F98(void *a1)
{
  v1 = [a1 recognition];
  v2 = [v1 tokenSausage];

  sub_10000ECEC(&qword_10006FC30, &qword_10004D0B0);
  v3 = sub_100046EFC();

  if (!*(v3 + 16))
  {
    goto LABEL_12;
  }

  v11 = *(v3 + 32);

  v3, v12, v13, v14, v15, v16, v17, v18;
  if (!*(v11 + 16))
  {
    v54 = v11;
    goto LABEL_14;
  }

  v3 = *(v11 + 32);

  v11, v19, v20, v21, v22, v23, v24, v25;
  result = sub_10000AD1C(v3);
  if (!result)
  {
LABEL_12:
    v54 = v3;
LABEL_14:
    v54, v4, v5, v6, v7, v8, v9, v10;
    return 0;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_10004725C();
    goto LABEL_7;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(v3 + 32);
LABEL_7:
    v28 = sub_100026494();
    v28, v29, v30, v31, v32, v33, v34, v35;
    v36 = [v11 tokenName];
    v37 = sub_100046E5C();
    v39 = v38;

    if ([v11 hasSpaceBefore])
    {
      sub_10000B828();
      v39, v40, v41, v42, v43, v44, v45, v46;
      v37 = v55;
      v39 = v56;
    }

    if ([v11 hasSpaceAfter])
    {

      sub_10000C638();
      v39, v47, v48, v49, v50, v51, v52, v53;
    }

    return v37;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002514C(void *a1)
{
  v1 = [a1 tokens];
  sub_1000029E4(0, &qword_10006FC28, _EARSpeechRecognitionToken_ptr);
  v2 = sub_100046EFC();

  result = sub_10000AD1C(v2);
  if (!result)
  {
    v2, v4, v5, v6, v7, v8, v9, v10;
    return 0;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    sub_10004725C();
    goto LABEL_5;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v2 + 32);
LABEL_5:
    v12 = sub_100026494();
    v12, v13, v14, v15, v16, v17, v18, v19;
    v20 = [v1 tokenName];
    v21 = sub_100046E5C();
    v23 = v22;

    if ([v1 hasSpaceBefore])
    {
      sub_10000B828();
      v23, v24, v25, v26, v27, v28, v29, v30;
      v21 = v38;
      v23 = v39;
    }

    if ([v1 hasSpaceAfter])
    {

      sub_10000C638();
      v23, v31, v32, v33, v34, v35, v36, v37;
    }

    return v21;
  }

  __break(1u);
  return result;
}

id sub_1000252A8()
{
  sub_1000029E4(0, &qword_10006FC58, &off_100064B68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  off_100071650 = result;
  return result;
}

unint64_t sub_100025310()
{
  v1 = [v0 sensitivityLevel];
  v2 = __CFADD__(v1, 1);
  result = v1 + 1;
  if (v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

id sub_100025348(void **a1, void *a2)
{
  v3 = *a1;
  sub_10000ECEC(&qword_10006FC40, &qword_10004D290);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10004CCE0;
  *(inited + 32) = sub_100046E5C();
  *(inited + 40) = v5;
  [v3 sourceFramework];
  isa = sub_100046FDC().super.super.isa;
  v7 = sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
  *(inited + 72) = v7;
  *(inited + 48) = isa;
  v8 = sub_100046D8C();
  v9 = [v3 score];
  if (v9)
  {
    v10 = v9;
    v11 = sub_100046E5C();
    v13 = v12;
    v65 = v7;
    *&v64 = v10;
    sub_100026414(&v64, v63);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v8;
    sub_100025DD0(v63, v11, v13, isUniquelyReferenced_nonNull_native);
    v13, v15, v16, v17, v18, v19, v20, v21;
    v8 = v66;
  }

  v22 = [v3 category];
  if (v22)
  {
    v23 = v22;
    v24 = sub_100046E5C();
    v26 = v25;
    v65 = v7;
    *&v64 = v23;
    sub_100026414(&v64, v63);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v66 = v8;
    sub_100025DD0(v63, v24, v26, v27);
    v26, v28, v29, v30, v31, v32, v33, v34;
    v8 = v66;
  }

  v35 = sub_10002631C(v3, &selRef_language);
  if (v36)
  {
    v37 = v35;
    v38 = v36;
    v39 = sub_100046E5C();
    v41 = v40;
    v65 = &type metadata for String;
    *&v64 = v37;
    *(&v64 + 1) = v38;
    sub_100026414(&v64, v63);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v66 = v8;
    sub_100025DD0(v63, v39, v41, v42);
    v41, v43, v44, v45, v46, v47, v48, v49;
    v8 = v66;
  }

  v50 = [v3 content];
  v51 = sub_100046E5C();
  v53 = v52;

  v54 = sub_100023810(v8);
  v8, v55, v56, v57, v58, v59, v60, v61;
  return sub_10002637C(v51, v53, v54, a2);
}

id sub_100025608(uint64_t a1, _TtC22localspeechrecognition19EARSpeechRecognizer *a2, double a3)
{
  if (a2)
  {
    v5 = sub_100046E4C();
    a2, v6, v7, v8, v9, v10, v11, v12;
  }

  else
  {
    v5 = 0;
  }

  v13 = [v3 initWithConfiguration:v5];

  return v13;
}

id sub_10002566C(uint64_t a1, _TtC22localspeechrecognition19EARSpeechRecognizer *a2, uint64_t a3, _TtC22localspeechrecognition19EARSpeechRecognizer *a4, uint64_t a5, _TtC22localspeechrecognition19EARSpeechRecognizer *a6)
{
  v10 = sub_100046E4C();
  a2, v11, v12, v13, v14, v15, v16, v17;
  v18 = sub_100046E4C();
  a4, v19, v20, v21, v22, v23, v24, v25;
  v26 = sub_100046E4C();
  a6, v27, v28, v29, v30, v31, v32, v33;
  v34 = [v6 initWithConfiguration:v10 ncsRoot:v18 language:v26];

  return v34;
}

id sub_100025724(uint64_t a1, _TtC22localspeechrecognition19EARSpeechRecognizer *a2, _TtC22localspeechrecognition19EARSpeechRecognizer *a3, uint64_t a4, _TtC22localspeechrecognition19EARSpeechRecognizer *a5, uint64_t a6, uint64_t a7, _TtC22localspeechrecognition19EARSpeechRecognizer *a8)
{
  v14 = sub_100046E4C();
  a2, v15, v16, v17, v18, v19, v20, v21;
  if (a3)
  {
    v22.super.isa = sub_100046FAC().super.isa;
    a3, v23, v24, v25, v26, v27, v28, v29;
  }

  else
  {
    v22.super.isa = 0;
  }

  v30 = sub_100046E4C();
  a5, v31, v32, v33, v34, v35, v36, v37;
  if (a8)
  {
    v38 = sub_100046E4C();
    a8, v39, v40, v41, v42, v43, v44, v45;
  }

  else
  {
    v38 = 0;
  }

  v46 = [v8 initWithOrthography:v14 pronunciations:v22.super.isa tagName:v30 frequency:a6 phoneticOrthography:v38];

  return v46;
}

id sub_100025834(uint64_t a1, _TtC22localspeechrecognition19EARSpeechRecognizer *a2, _TtC22localspeechrecognition19EARSpeechRecognizer *a3, uint64_t a4)
{
  v8 = sub_100046E4C();
  a2, v9, v10, v11, v12, v13, v14, v15;
  isa = sub_100046FAC().super.isa;
  a3, v17, v18, v19, v20, v21, v22, v23;
  v24 = [v4 initWithOrthography:v8 pronunciations:isa tag:a4];

  return v24;
}

id sub_1000258CC(uint64_t a1, _TtC22localspeechrecognition19EARSpeechRecognizer *a2, uint64_t a3, _TtC22localspeechrecognition19EARSpeechRecognizer *a4, _TtC22localspeechrecognition19EARSpeechRecognizer *a5, uint64_t a6, _TtC22localspeechrecognition19EARSpeechRecognizer *a7, uint64_t a8, _TtC22localspeechrecognition19EARSpeechRecognizer *a9, uint64_t a10, _TtC22localspeechrecognition19EARSpeechRecognizer *a11, uint64_t a12, _TtC22localspeechrecognition19EARSpeechRecognizer *a13, uint64_t a14, _TtC22localspeechrecognition19EARSpeechRecognizer *a15, char a16)
{
  v88 = sub_100046E4C();
  a2, v20, v21, v22, v23, v24, v25, v26;
  v27 = sub_100046E4C();
  a4, v28, v29, v30, v31, v32, v33, v34;
  if (a5)
  {
    v35.super.isa = sub_100046D6C().super.isa;
    a5, v36, v37, v38, v39, v40, v41, v42;
  }

  else
  {
    v35.super.isa = 0;
  }

  if (a7)
  {
    v43 = sub_100046E4C();
    a7, v44, v45, v46, v47, v48, v49, v50;
  }

  else
  {
    v43 = 0;
  }

  v51 = sub_100046E4C();
  a9, v52, v53, v54, v55, v56, v57, v58;
  v59 = sub_100046E4C();
  a11, v60, v61, v62, v63, v64, v65, v66;
  v67 = sub_100046E4C();
  a13, v68, v69, v70, v71, v72, v73, v74;
  v75 = sub_100046E4C();
  a15, v76, v77, v78, v79, v80, v81, v82;
  v90 = 0;
  LOBYTE(v87) = a16 & 1;
  v83 = [v89 initWithConfig:v88 language:v27 overrides:v35.super.isa textNormalizationModelRoot:v43 sdapiOverrides:v51 emptyVoc:v59 pgVoc:v67 paramsetHolder:v75 isJit:v87 error:&v90];

  if (v83)
  {
    v84 = v90;
  }

  else
  {
    v85 = v90;
    sub_100046A7C();

    swift_willThrow();
  }

  return v83;
}

uint64_t sub_100025B04(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_100026488();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100025B48(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_100025B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  sub_1000041D0(a3, a4);
  sub_1000042B0();
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  sub_10000ECEC(&qword_10006FF10, &unk_10004CD10);
  if (!sub_1000472EC(a5 & 1, v12))
  {
    goto LABEL_5;
  }

  v24 = sub_1000041D0(a3, a4);
  if ((v17 & 1) != (v18 & 1))
  {
LABEL_13:
    sub_10004740C();
    __break(1u);
    return;
  }

  v16 = v24;
LABEL_5:
  v25 = *v6;
  if (v17)
  {
    v26 = (v25[7] + 16 * v16);
    v27 = v26[1];
    *v26 = a1;
    v26[1] = a2;

    v27, v18, v19, v20, v21, v25, v22, v23;
  }

  else
  {
    sub_100026040(v16, a3, a4, a1, a2, v25);
  }
}

id sub_100025CC8(uint64_t a1, uint64_t a2)
{
  sub_10000BDC0(a1, a2);
  sub_1000042B0();
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v4;
  v8 = v5;
  v9 = sub_10000ECEC(&qword_10006FEC0, &qword_10004D270);
  if (!sub_10000ADC0(v9))
  {
    goto LABEL_5;
  }

  v10 = sub_100034548(v14);
  if ((v8 & 1) != (v11 & 1))
  {
LABEL_13:
    sub_1000029E4(0, &qword_10006FAF0, NSXPCListener_ptr);
    result = sub_10004740C();
    __break(1u);
    return result;
  }

  v7 = v10;
LABEL_5:
  v12 = *v3;
  if (v8)
  {
    *(v12[7] + 8 * v7) = v2;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_10002613C(v7, v14, v2, v12);

    return v14;
  }
}

_OWORD *sub_100025DD0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000041D0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_10000ECEC(&qword_10006FC48, &qword_10004D0B8);
  if (!sub_1000472EC(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_1000041D0(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = sub_10004740C();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    v21 = (v20[7] + 32 * v16);
    sub_1000050D4(v21);

    return sub_100026414(a1, v21);
  }

  else
  {
    sub_100026180(v16, a2, a3, a1, v20);
  }
}

void sub_100025F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_10000BDC0(a1, a2);
  sub_1000042B0();
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  v14 = sub_10000ECEC(a4, a5);
  if (!sub_10000ADC0(v14))
  {
    goto LABEL_5;
  }

  v15 = sub_100034548(v21);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_13:
    sub_1000029E4(0, &qword_10006FAF0, NSXPCListener_ptr);
    sub_10004740C();
    __break(1u);
    return;
  }

  v12 = v15;
LABEL_5:
  v17 = *v6;
  if (v13)
  {
    v18 = v17[7];
    v19 = *(v18 + 8 * v12);
    *(v18 + 8 * v12) = v5;
  }

  else
  {
    sub_10002613C(v12, v21, v5, v17);

    v20 = v21;
  }
}

unint64_t sub_100026040(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_10002608C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_100046C6C();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_10002613C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_100026180(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100026414(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1000261EC(void *a1)
{
  v1 = [a1 jitProfileData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100046B3C();

  return v3;
}

uint64_t sub_100026250(void *a1)
{
  v1 = [a1 contextualStrings];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100046EFC();

  return v3;
}

uint64_t sub_1000262A8(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_1000029E4(0, a3, a4);
  v8 = sub_100046EFC();

  return v8;
}

uint64_t sub_10002631C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_100046E5C();

  return v4;
}

id sub_10002637C(uint64_t a1, _TtC22localspeechrecognition19EARSpeechRecognizer *a2, _TtC22localspeechrecognition19EARSpeechRecognizer *a3, void *a4)
{
  v7 = sub_100046E4C();
  a2, v8, v9, v10, v11, v12, v13, v14;
  isa = sub_100046D6C().super.isa;
  a3, v16, v17, v18, v19, v20, v21, v22;
  v23 = [a4 addNamedEntity:v7 metadata:isa];

  return v23;
}

_OWORD *sub_100026414(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100026428()
{

  return sub_100046DCC();
}

uint64_t sub_1000264A0(uint64_t a1)
{

  return swift_willThrow();
}

uint64_t sub_1000264B8(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  return sub_1000041C4();
}

double sub_1000264F8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_100005078(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_100026518(uint64_t a1)
{
  result = sub_100035098(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_100030B18(result, v3, 0, a1);
  }
}

double sub_100026580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000313BC();
  v15 = v14;
  v16 = v13;
  if (v12)
  {
    v17 = v12;
    v18 = v11;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000090BC();
    sub_100025B6C(v18, v17, v16, v15, v19);
    v15, v20, v21, v22, v23, v24, v25, v26;
    *v10 = a10;
LABEL_5:
    sub_1000313A8();
    return result;
  }

  v27 = sub_1000041D0(v13, v14);
  if (v28)
  {
    v29 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000090BC();
    v32 = *(v31 + 24);
    sub_10000ECEC(&qword_10006FF10, &unk_10004CD10);
    sub_1000472EC(isUniquelyReferenced_nonNull_native, v32);
    *(*(a10 + 48) + 16 * v29 + 8), v33, v34, v35, v36, v37, v38, v39;
    v40 = *(*(a10 + 56) + 16 * v29 + 8);
    sub_10004730C();
    v15, v41, v42, v43, v44, v45, v46, v47;
    v40, v48, v49, v50, v51, v52, v53, v54;
    *v10 = a10;
    goto LABEL_5;
  }

  sub_1000313A8();

  v56, v57, v58, v59, v60, v61, v62, v63;
  return result;
}

void sub_1000266D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100046A6C();
  }

  v2 = sub_1000041C4();
  v5 = v3;
  v4(v2);
}

uint64_t sub_10002673C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100026780(_TtC22localspeechrecognition19EARSpeechRecognizer *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100046C3C();
  sub_100004E00();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_10000425C();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v15 = v33 - v14;
  v16 = sub_10000ECEC(&unk_10006FF20, &qword_10004D2E0);
  v17 = sub_100004250(v16);
  __chkstk_darwin(v17);
  v19 = v33 - v18;
  sub_1000041AC();
  sub_100030C98(v20, v21, &protocol conformance descriptor for Locale);
  v22 = sub_100046FCC();
  v33[4] = a3;
  v34 = v22;
  v33[1] = a1;
  v33[2] = 0;
  v23 = (v8 + 32);
  v24 = (v8 + 8);
  v33[3] = a2;
  while (1)
  {
    sub_100030A58(v19);
    if (sub_100004844(v19, 1, v6) == 1)
    {
      break;
    }

    (*v23)(v12, v19, v6);
    sub_10002E1BC(v15, v12);
    (*v24)(v15, v6);
  }

  a1, v25, v26, v27, v28, v29, v30, v31;
  return v34;
}

void sub_100026968(unint64_t a1)
{
  sub_10000AD1C(a1);
  sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
  sub_100030BE8(&qword_10006FEA8, &qword_10006F140, NSNumber_ptr);
  v12[1] = sub_100046FCC();
  v9 = sub_10000AD40(a1);
  for (i = 0; ; ++i)
  {
    if (v9 == i)
    {
      a1, v2, v3, v4, v5, v6, v7, v8;
      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = sub_10004725C();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v11 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_10002E59C(v12, v11);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_100026A7C()
{
  sub_10000BDA0();
  v1[141] = v0;
  v1[140] = v2;
  v1[139] = v3;
  v1[138] = v4;
  v1[137] = v5;
  v1[136] = v6;
  v1[142] = swift_getObjectType();
  v7 = sub_100046E3C();
  sub_100004250(v7);
  v1[143] = swift_task_alloc();
  v8 = sub_10000ECEC(&qword_10006FB80, &unk_10004D060);
  sub_100004250(v8);
  v1[144] = swift_task_alloc();
  v9 = sub_100046F9C();
  v1[145] = v9;
  sub_10000BDE8(v9);
  v1[146] = v10;
  v1[147] = sub_100031360();
  v1[148] = swift_task_alloc();
  v11 = sub_100046B0C();
  v1[149] = v11;
  sub_10000BDE8(v11);
  v1[150] = v12;
  v1[151] = sub_100031360();
  v1[152] = swift_task_alloc();
  v1[153] = swift_task_alloc();
  v1[154] = swift_task_alloc();
  v1[155] = swift_task_alloc();
  v13 = sub_10000ECEC(&qword_10006FED0, &qword_10004CF38);
  sub_100004250(v13);
  v1[156] = sub_100031360();
  v1[157] = swift_task_alloc();
  v14 = sub_100046C3C();
  sub_100004250(v14);
  v1[158] = swift_task_alloc();
  v15 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  sub_10000BDE8(v15);
  v1[159] = v16;
  v1[160] = *(v17 + 64);
  v1[161] = sub_100031360();
  v1[162] = swift_task_alloc();
  v1[163] = swift_task_alloc();
  v1[164] = swift_task_alloc();

  return _swift_task_switch(sub_100006E0C, 0, 0);
}

uint64_t sub_100026D20()
{
  v1 = *(v0 + 1496);
  v2 = *(v0 + 1456);
  v3 = *(v0 + 1416);
  v58 = *(v0 + 1312);
  v4 = *(v0 + 1232);
  v5 = *(v0 + 1192);
  v6 = *(v0 + 1112);
  v7 = *(v0 + 1104);
  v8 = *(v0 + 1096);
  v9 = *(v0 + 1088);

  v10 = sub_100031138();
  v1(v10);
  sub_1000064CC(v58, &unk_10006FB00, &qword_10004C590);
  v59 = *(v0 + 1528);
  sub_10000AD94();

  sub_1000064CC(v5 + 8, &qword_10006FEB8, &qword_10004D268);
  sub_10003101C();
  if (v3)
  {

    sub_1000064CC(v1 + v9, &qword_10006FB80, &unk_10004D060);
    v8[1], v11, v12, v13, v14, v15, v16, v17;
  }

  else
  {

    v18 = sub_100030FF0(OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_languageStr);
    v18, v19, v20, v21, v22, v23, v24, v25;
    *(v9 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_sandboxExtensionHandles), v26, v27, v28, v29, v30, v31, v32;

    sub_1000064CC(v1 + v9, &qword_10006FB80, &unk_10004D060);
    v8[1], v33, v34, v35, v36, v37, v38, v39;

    v40 = sub_100030FF0(OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_hammerModelVersion);
    v40, v41, v42, v43, v44, v45, v46, v47;
    v48 = sub_100030FF0(OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_geoLMRegionID);
    v48, v49, v50, v51, v52, v53, v54, v55;
  }

  type metadata accessor for EARSpeechRecognizer(0);
  swift_deallocPartialClassInstance();
  sub_10000BD34(&unk_10004D2A0, v59);

  sub_100004170();

  return v56();
}

uint64_t sub_100027080()
{
  super_class = v0[93].super_class;
  receiver = v0[91].receiver;
  v3 = v0[88].super_class;
  v4 = v0[82].receiver;
  v5 = v0[77].receiver;
  v6 = v0[74].super_class;
  v7 = v0[70].super_class;
  v8 = v0[69].receiver;
  v13 = v0[68].super_class;
  v14 = v0[68].receiver;
  v15 = v0[69].super_class;

  super_class(v5, v6);
  sub_1000064CC(v4, &unk_10006FB00, &qword_10004C590);
  v9 = type metadata accessor for EARSpeechRecognizer(0);
  v0[65].receiver = v7;
  v0[65].super_class = v9;
  v10 = objc_msgSendSuper2(v0 + 65, "init");

  v11 = v0->super_class;

  return v11(v10);
}

BOOL sub_100027290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_10004745C();
  sub_100046EAC();
  v6 = sub_10004748C();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_1000473EC();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

BOOL sub_10002737C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1000471AC(*(a2 + 40));
  v4 = ~(-1 << *(a2 + 32));
  do
  {
    v5 = v3 & v4;
    v6 = (1 << (v3 & v4)) & *(a2 + 56 + (((v3 & v4) >> 3) & 0xFFFFFFFFFFFFFF8));
    v7 = v6 != 0;
    if (!v6)
    {
      break;
    }

    sub_10000408C(*(a2 + 48) + 40 * v5, v10);
    v8 = sub_1000471BC();
    sub_100030B94(v10);
    v3 = v5 + 1;
  }

  while ((v8 & 1) == 0);
  return v7;
}

uint64_t sub_100027450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(sub_100027478, 0, 0);
}

uint64_t sub_100027478()
{
  sub_10000BF04();
  v1 = sub_100023C84(v0[3], v0[4] + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelRoot, *(v0[4] + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_language), *(v0[4] + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_language + 8), v0[5], v0[6], v0[7], 1);
  v2 = v0[2];
  *v2 = v1;
  v2[1] = v3;
  sub_100004170();

  return v4();
}

uint64_t sub_10002752C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a1 + 16);
  v3 = *(a1 + 16);
  v5 = v3;
  if (v3 == 1)
  {
    v6 = sub_100046E4C();
    v7 = EtiquetteReplacementsForLanguage(v6);

    if (v7)
    {
      v5 = sub_100046D7C();
    }

    else
    {
      v5 = 0;
    }

    swift_beginAccess();
    v8 = *v4;
    *v4 = v5;

    sub_100030F0C(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  sub_100030F1C(v3);
  return v5;
}

void sub_1000275F8()
{
  v1 = *&v0[OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_sandboxExtensionHandles];
  v2 = *v1->transaction;
  if (v2)
  {

    v10 = 32;
    do
    {
      if (*(&v1->super.isa + v10) != -1)
      {
        sandbox_extension_release();
      }

      v10 += 8;
      --v2;
    }

    while (v2);
    v1, v3, v4, v5, v6, v7, v8, v9;
  }

  if (qword_10006DD70 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100071640);
  if (__OFSUB__(qword_100071648, 1))
  {
    __break(1u);
  }

  else
  {
    --qword_100071648;
    os_unfair_lock_unlock(&dword_100071640);
    v11.receiver = v0;
    v11.super_class = type metadata accessor for EARSpeechRecognizer(0);
    objc_msgSendSuper2(&v11, "dealloc");
  }
}

void sub_100027854(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v338 = a4;
  v340 = a3;
  sub_100046F9C();
  sub_100004E00();
  v329 = v9;
  v330 = v8;
  __chkstk_darwin(v8);
  sub_10000425C();
  v328 = v10 - v11;
  __chkstk_darwin(v12);
  v327 = v326 - v13;
  v14 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  v15 = sub_100004250(v14);
  __chkstk_darwin(v15);
  sub_10000425C();
  v332 = v16 - v17;
  __chkstk_darwin(v18);
  v20 = v326 - v19;
  v21 = sub_100046B0C();
  sub_100004E00();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_100002B2C();
  v27 = v26 - v25;
  *(&v5->super.isa + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_cpuInstructionsUsedAtStart) = 0;
  v28 = [a1 taskNames];
  v29 = sub_100046FBC();
  v337 = sub_100026518(v29);
  v31 = v30;
  v29, v30, v32, v33, v34, v35, v36, v37;
  v336 = v31;
  if (!v31)
  {
    __break(1u);
    return;
  }

  v339 = v5;
  v38 = *(&v5->super.isa + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_assets);
  (*(v23 + 16))(v27, v38 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelRoot, v21);
  v39 = v38 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_language;
  v40 = *(v38 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_language);
  v41 = *(v39 + 8);

  v335 = a2;
  v42 = [a2 asrID];
  if (v42)
  {
    v43 = v42;
    sub_100046BAC();

    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  v45 = sub_100046BBC();
  sub_1000045DC(v20, v44, 1, v45);
  v46 = sub_100023C84(v340, v27, v40, v41, v20, v337, v336, 1);
  v334 = v47;
  v41, v47, v48, v49, v50, v51, v52, v53;
  sub_1000064CC(v20, &unk_10006FB00, &qword_10004C590);
  (*(v23 + 8))(v27, v21);
  v54 = v339;
  if (v338)
  {
    v55 = v338;
    v56 = [v55 priority];
    if ((v56 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v56 <= 0xFF)
    {
      v57 = v327;
      sub_100046F7C();
      v58 = v328;
      sub_100046F7C();
      v59 = sub_100046F6C();

      v60 = *(v329 + 8);
      v61 = v58;
      v62 = v330;
      v60(v61, v330);
      v60(v57, v62);
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_98;
  }

  v59 = 0;
LABEL_10:
  v63 = sub_100030478(v340, &selRef_leftContext);
  v326[1] = v21;
  if (v63)
  {
    v71 = v63;
    if (*(v63 + 16))
    {
      v73 = *(v63 + 32);
      v72 = *(v63 + 40);

      v71, v74, v75, v76, v77, v78, v79, v80;
      goto LABEL_15;
    }

    v63, v64, v65, v66, v67, v68, v69, v70;
  }

  v73 = 0;
  v72 = 0;
LABEL_15:
  v81 = (&v54->super.isa + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_analysisLeftContext);
  v82 = *&v54->recognizer[OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_analysisLeftContext];
  *v81 = v73;
  v81[1] = v72;
  v82, v64, v65, v66, v67, v68, v69, v70;
  if ((sub_1000310C8() & 0x40) != 0)
  {
    v83 = 1;
  }

  else if ((sub_1000310C8() & 0x400) != 0 && (*(&v339->super.isa + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_resultsAreSpaceAgnostic) & 1) == 0)
  {
    v83 = [a1 concatenateUtterances] ^ 1;
  }

  else
  {
    v83 = 0;
  }

  v55 = *(&v339->super.isa + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer);
  [v55 setAllowUtteranceDelay:(sub_1000310C8() >> 6) & 1];
  v331 = v45;
  v333 = v46;
  if (v338 && (sub_1000306D8(v338, &selRef_aneContext), v84))
  {
    v72 = v84;
  }

  else
  {
    0, v84, v85, v86, v87, v88, v89, v90;
    sub_1000311E0();
  }

  v91 = sub_100046E4C();
  v72, v92, v93, v94, v95, v96, v97, v98;
  v99 = sub_100031204();
  [v99 v100];

  v101 = sub_100031164();
  if (v101)
  {
    v102 = v101;
    v103 = [v101 atypicalSpeech];
  }

  else
  {
    v103 = 0;
  }

  [v55 setAtypicalSpeech:v103];
  [v55 setConcatenateUtterances:{objc_msgSend(a1, "concatenateUtterances")}];
  v111 = v338;
  if (v338 && (sub_1000306D8(v338, &selRef_cpuContext), v104))
  {
    v103 = v104;
  }

  else
  {
    0, v104, v105, v106, v107, v108, v109, v110;
    sub_1000311E0();
  }

  v112 = sub_100046E4C();
  v103, v113, v114, v115, v116, v117, v118, v119;
  v120 = sub_100031204();
  [v120 v121];

  [v55 setDetectUtterances:{objc_msgSend(a1, "isSingleUtteranceTask") ^ 1}];
  [v55 setDisableAutoPunctuation:(sub_1000310C8() & 2) == 0];
  [v55 setDisablePartialResults:(sub_1000310C8() & 4) == 0];
  v122 = sub_100031164();
  if (v122)
  {
    v123 = v122;
    v124 = [v122 enableFullPayloadCorrection];
  }

  else
  {
    v124 = 0;
  }

  [v55 setEnableFullPayloadCorrection:v124];
  [v55 setEnableVoiceCommands:(sub_1000310C8() >> 9) & 1];
  v125 = [a1 endpointDetectionOptions];
  if (v125)
  {
    v126 = v125;
    [v125 detectAfterTime];
    v128 = v127;
  }

  else
  {
    v128 = 0.0;
  }

  [v55 setEndpointStart:v128];
  v129 = sub_100031164();
  if (v129)
  {
    v130 = v129;
    v131 = [v129 farField];
  }

  else
  {
    v131 = 0;
  }

  v132 = v335;
  [v55 setFarField:v131];
  [v55 setFormatAcrossUtterances:v83];
  if (!v111 || (sub_1000306D8(v111, &selRef_gpuContext), !v133))
  {
    0, v133, v134, v135, v136, v137, v138, v139;
    sub_1000311E0();
  }

  v140 = v334;
  sub_100046E4C();
  v141 = sub_100030F98();
  v141, v142, v143, v144, v145, v146, v147, v148;
  sub_100031390(v149, "setGpuContext:");

  [v55 setHighPriority:v59 & 1];
  v150 = sub_1000306D8(v132, &selRef_inputOrigin);
  sub_100006DF4(v150, v151);
  sub_100046E4C();
  v152 = sub_100030F98();
  v152, v153, v154, v155, v156, v157, v158, v159;
  sub_100031390(v160, "setInputOrigin:");

  if (v140 >> 60 != 15)
  {
    v111 = v333;
    v161 = sub_10000C134();
    sub_100030A00(v161, v162);
    sub_10000C134();
    sub_100046B2C();
    v163 = sub_100026494();
    sub_10000C198(v163, v140);
  }

  [v55 setJitProfileData:0];

  [v55 setRecognizeEagerCandidates:(sub_1000310C8() >> 2) & 1];
  [v55 setRecognizeEmoji:sub_1000310C8() & 1];
  v164 = sub_100030478(v340, &selRef_rightContext);
  if (v164)
  {
    v165 = v164;
    if (*(v164 + 16))
    {
      v111 = *(v164 + 32);
    }

    else
    {
      sub_100031248();
    }

    v165, v166, v167, v168, v169, v170, v171, v172;
  }

  else
  {
    sub_100031248();
  }

  sub_100005BE0();
  sub_100046E4C();
  v173 = sub_100030F98();
  v173, v174, v175, v176, v177, v178, v179, v180;
  sub_100031390(v181, "setRightContext:");

  v182 = sub_100030478(v340, &selRef_selectedText);
  if (v182)
  {
    v183 = v182;
    if (*(v182 + 16))
    {
      v111 = *(v182 + 32);
    }

    else
    {
      sub_100031248();
    }

    v183, v184, v185, v186, v187, v188, v189, v190;
  }

  else
  {
    sub_100031248();
  }

  sub_100005BE0();
  sub_100046E4C();
  v191 = sub_100030F98();
  v191, v192, v193, v194, v195, v196, v197, v198;
  sub_100031390(v199, "setSelectedText:");

  if (v81[1])
  {
    v200 = *v81;
  }

  else
  {
    v200 = 0;
  }

  v41 = v339;

  v201 = sub_1000041C4();
  sub_1000304CC(v201, v202, v55, v203);
  [v55 setShouldGenerateVoiceCommandCandidates:(sub_1000310C8() >> 8) & 1];
  sub_10000B260(v340);
  if (v204 >> 60 == 15)
  {
    v200 = 0;
  }

  else
  {
    v205 = v204;
    sub_100046B2C();
    v206 = sub_100026494();
    sub_10000C198(v206, v205);
  }

  [v55 setUserProfileData:v200];

  v207 = [a1 speechDetectionOptions];
  if (v207)
  {
    v208 = v207;
    v209 = sub_100025310();
  }

  else
  {
    v209 = 0;
  }

  [v55 setVadGatingLevel:v209];
  v20 = [v55 activeConfiguration];
  v342 = sub_100030678(v20);
  if (v342)
  {
    v210 = v336;

    sub_10002E450(v341, v337, v210);
    v341[1], v211, v212, v213, v214, v215, v216, v217;
    if (v342)
    {
      sub_100046FAC();
      v218 = sub_100026494();
      v218, v219, v220, v221, v222, v223, v224, v225;
    }

    else
    {
      v210 = 0;
    }

    [v20 setTaskTypeFilter:v210];
  }

  else
  {
    [v20 setTaskTypeFilter:0];
  }

  [v55 setActiveConfiguration:v20];
  v226 = [v132 clientID];
  sub_100046E5C();

  v227 = sub_10000C134();
  sub_1000304CC(v227, v228, v55, v229);
  v230 = sub_100031164();
  if (v230 && (v238 = sub_10000AC34(v230)) != 0)
  {
    v239 = v238;
  }

  else
  {
    0, v231, v232, v233, v234, v235, v236, v237;
    v239 = &_swiftEmptyArrayStorage;
  }

  v240 = sub_100031164();
  if (v240 && (v241 = sub_10000ACAC(v240)) != 0)
  {
    v242 = v241;
  }

  else
  {
    v242 = sub_100046D8C();
    0, v243, v244, v245, v246, v247, v248, v249;
  }

  v250 = sub_100031164();
  if (v250)
  {
    v251 = v250;
    v252 = [v250 speechProfileURLs];

    v253 = sub_100046EFC();
  }

  else
  {
    v253 = &_swiftEmptyArrayStorage;
  }

  if (!sub_10000AD40(v239))
  {
    v261 = *v253->transaction;
    v253, v254, v255, v256, v257, v258, v259, v260;
    if (v261)
    {
      goto LABEL_86;
    }

    v242, v262, v263, v264, v265, v266, v267, v268;
    v239, v314, v315, v316, v317, v318, v319, v320;
    if (qword_10006DD40 == -1)
    {
LABEL_92:
      v321 = sub_100046D1C();
      v322 = sub_100008FA4(v321, qword_1000714B8);
      v323 = sub_100046FFC();
      if (os_log_type_enabled(v322, v323))
      {
        v324 = sub_100004A8C();
        v325 = sub_100004A74();
        v341[0] = v325;
        *v324 = 136315138;
        *(v324 + 4) = sub_100004EB4(0xD000000000000055, 0x800000010004F5D0, v341);
        sub_100031378(&_mh_execute_header, v322, v323, "EARSpeechRecognizer.%s clearing the configured speech profile.", v326[0]);
        sub_1000050D4(v325);
        sub_100004ACC();
        sub_100030F7C();
      }

      v293 = v332;
      v295 = v333;
      v294 = v335;
      [v55 setUserProfile:0];
      goto LABEL_87;
    }

LABEL_98:
    sub_100002B5C(&qword_10006DD40);
    goto LABEL_92;
  }

  v253, v254, v255, v256, v257, v258, v259, v260;
LABEL_86:
  type metadata accessor for EARSpeechRecognizer(0);
  v269 = *(&v41->super.isa + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_languageStr);
  v270 = *&v41->recognizer[OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_languageStr];
  v271 = *(&v41->super.isa + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_userSpeechProfiles);

  sub_10000ADE0(v271, v239, v242, v340, v269, v270, v55);

  v270, v272, v273, v274, v275, v276, v277, v278;
  v242, v279, v280, v281, v282, v283, v284, v285;
  v239, v286, v287, v288, v289, v290, v291, v292;
  v293 = v332;
  v294 = v335;
  v295 = v333;
LABEL_87:
  v296 = *(&v41->super.isa + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_modelContextDelegateInterface);
  v297 = [v294 asrID];
  if (v297)
  {
    v298 = v297;
    sub_100046BAC();

    sub_10000C198(v295, v334);
  }

  else
  {

    sub_10000C198(v295, v334);
  }

  sub_100031228();
  sub_1000045DC(v299, v300, v301, v302);
  v303 = OBJC_IVAR____TtC22localspeechrecognition32EARModelContextDelegateInterface_asrId;
  swift_beginAccess();
  sub_100030E74(v293, v296 + v303, &unk_10006FB00, &qword_10004C590);
  swift_endAccess();
  v304 = sub_100030FF0(OBJC_IVAR____TtC22localspeechrecognition32EARModelContextDelegateInterface_taskName);
  v305 = v336;
  *v306 = v337;
  v306[1] = v305;
  v304, v307, v308, v309, v310, v311, v312, v313;
}

void sub_10002875C(uint64_t a1, void (**a2)(void, void))
{
  v3 = [*(a1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer) modelInfo];
  v4 = [v3 samplingRates];

  v5 = sub_100046FBC();
  v13 = *(v5 + 16);
  if (v13)
  {
    aBlock = a2;
    v53 = &_swiftEmptyArrayStorage;
    v48 = v5;
    sub_1000472AC();
    v15 = sub_100035098(v5);
    v17 = v16;
    v18 = 0;
    v19 = v5 + 56;
    v49 = v16;
    v47 = v5 + 64;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v5 + 32))
    {
      v20 = v15 >> 6;
      if ((*(v19 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v5 + 36) != v17)
      {
        goto LABEL_25;
      }

      v50 = v18;
      v51 = v14;
      sub_10000408C(*(v5 + 48) + 40 * v15, v52);
      sub_1000471CC();
      sub_100030B94(v52);
      sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
      swift_dynamicCast();
      sub_10004728C();
      sub_1000472BC();
      sub_1000472CC();
      sub_10004729C();
      if (v51)
      {
        goto LABEL_29;
      }

      v27 = 1 << *(v5 + 32);
      if (v15 >= v27)
      {
        goto LABEL_26;
      }

      v28 = *(v19 + 8 * v20);
      if ((v28 & (1 << v15)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v5 + 36) != v17)
      {
        goto LABEL_28;
      }

      v29 = v28 & (-2 << (v15 & 0x3F));
      if (v29)
      {
        v27 = __clz(__rbit64(v29)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v20 << 6;
        v31 = v20 + 1;
        v32 = (v47 + 8 * v20);
        while (v31 < (v27 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            sub_100004B9C(v15, v17, 0, v22, v23, v24, v25, v26);
            v27 = __clz(__rbit64(v33)) + v30;
            goto LABEL_18;
          }
        }

        sub_100004B9C(v15, v17, 0, v22, v23, v24, v25, v26);
LABEL_18:
        v5 = v48;
      }

      v17 = v49;
      v14 = 0;
      v18 = v50 + 1;
      v15 = v27;
      if (v50 + 1 == v13)
      {
        v5, v21, 0, v22, v23, v24, v25, v26;
        v35 = v53;
        a2 = aBlock;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
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
    _Block_release(aBlock);
    __break(1u);
  }

  else
  {
    v5, v6, v7, v8, v9, v10, v11, v12;
    v35 = &_swiftEmptyArrayStorage;
LABEL_22:
    sub_100026968(v35);
    v37 = v36;
    sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
    sub_100030BE8(&qword_10006FEA8, &qword_10006F140, NSNumber_ptr);
    isa = sub_100046FAC().super.isa;
    (a2)[2](a2, isa);
    v37, v39, v40, v41, v42, v43, v44, v45;

    _Block_release(a2);
  }
}

void sub_100028AE8(void *a1, uint64_t a2, id a3, uint64_t a4, _TtC22localspeechrecognition19EARSpeechRecognizer *a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10)
{
  v257 = a8;
  v260 = a7;
  v256 = a1;
  v16 = a9;
  v17 = sub_100046C3C();
  __chkstk_darwin(v17 - 8);
  v266 = &v239 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100046E3C();
  __chkstk_darwin(v19 - 8);
  v265 = &v239 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100046E1C();
  __chkstk_darwin(v21 - 8);
  v22 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  v23 = __chkstk_darwin(v22 - 8);
  v255 = &v239 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v259 = &v239 - v25;
  v26 = sub_10000ECEC(&qword_10006FB80, &unk_10004D060);
  __chkstk_darwin(v26 - 8);
  v253 = &v239 - v27;
  v254 = sub_100046B7C();
  v252 = *&v254[-1].geoLMRegionID[14];
  __chkstk_darwin(v254);
  v251 = &v239 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = sub_100046BBC();
  v258 = *(v262 - 8);
  __chkstk_darwin(v262);
  v261 = &v239 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v30 = a10;
  v31 = sub_100046D1C();
  sub_100004D64(v31, qword_1000714B8);
  v32 = sub_100046D0C();
  v33 = sub_100046FFC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v267 = a3;
    v264 = a4;
    v35 = a6;
    v36 = v34;
    v37 = swift_slowAlloc();
    v268[0] = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_100004EB4(0xD00000000000005FLL, 0x800000010004F6A0, v268);
    _os_log_impl(&_mh_execute_header, v32, v33, "EARSpeechRecognizer.%s", v36, 0xCu);
    sub_1000050D4(v37);

    a6 = v35;
    v30 = a10;
    v16 = a9;
    a4 = v264;
    a3 = v267;
  }

  v38 = sub_100046E4C();
  SetQuasarLoggingLevel(v38);

  v268[0] = a2;
  v268[1] = a3;
  v269 = 45;
  v270 = 0xE100000000000000;
  v268[5] = 95;
  v268[6] = 0xE100000000000000;
  sub_1000169D0();
  v267 = sub_10004711C();
  v40 = v39;
  v263 = *(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer);
  v41 = [v263 modelInfo];
  v42 = [v41 samplingRates];
  v43 = sub_100046FBC();

  v269 = a6;
  sub_1000471DC();
  LOBYTE(v42) = sub_10002737C(v268, v43);
  v43, v44, v45, v46, v47, v48, v49, v50;
  sub_100030B94(v268);
  if (v42 & 1) != 0 && (v51 = [v41 tasks], v52 = sub_100046FBC(), v51, v269 = a4, v270 = a5, , sub_1000471DC(), LOBYTE(v51) = sub_10002737C(v268, v52), v52, v53, v54, v55, v56, v57, v58, v59, sub_100030B94(v268), (v51))
  {
    v264 = a4;
    v265 = v30;
    v266 = a6;
    v60 = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_clientInfo;
    v61 = [*(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_clientInfo) asrID];
    v249 = v41;
    v62 = v260;
    v250 = v16;
    if (!v61)
    {
      goto LABEL_26;
    }

    v63 = v61;
    sub_100046BAC();

    v64 = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_speechProfileLastModifiedDate;
    swift_beginAccess();
    v65 = v253;
    sub_100030CE0(v16 + v64, v253, &qword_10006FB80, &unk_10004D060);
    v66 = v254;
    if (sub_100004844(v65, 1, v254) == 1)
    {
      sub_1000064CC(v65, &qword_10006FB80, &unk_10004D060);
      v10 = 0.0;
    }

    else
    {
      v77 = v252;
      v78 = v251;
      (*(v252 + 32))(v251, v65, v66);
      sub_100046B5C();
      v80 = v79;
      (*(v77 + 8))(v78, v66);
      v10 = -v80;
    }

    v254 = a5;
    if (qword_10006DD30 != -1)
    {
      goto LABEL_47;
    }

    while (1)
    {
      v253 = qword_100071498;
      v81 = v259;
      v82 = v262;
      (*(v258 + 16))(v259, v261, v262);
      sub_1000045DC(v81, 0, 1, v82);
      v83 = sub_100008FD8(*(v16 + v60), &selRef_applicationName);
      if (v84)
      {
        v85 = v83;
      }

      else
      {
        v85 = 0;
      }

      v251 = v85;
      v86 = 0xE000000000000000;
      if (v84)
      {
        v86 = v84;
      }

      v252 = v86;
      v87 = [v41 language];
      v247 = sub_100046E5C();
      v248 = v88;

      v89 = [v41 version];
      v246 = sub_100046E5C();
      v91 = v90;

      v245 = *(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_isHighQualityAsset);
      v92 = *(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_hammerModelVersion + 8);
      v244 = *(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_hammerModelVersion);
      v243 = v92;
      v93 = *(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_geoLMRegionID + 8);
      v242 = *(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_geoLMRegionID);
      v241 = v93;
      v240 = *(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_geoLanguageModelLoaded);
      v239 = sub_100008FD8(*(v16 + v60), &selRef_dictationUIInteractionID);
      v95 = v94;
      v96 = *(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_atypicalSpeechEnabled);
      v97 = mach_continuous_time();
      v98 = v263;
      v99 = [v263 leftContext];
      v100 = sub_100046EFC();

      v101 = *v100->transaction;
      v100, v102, v103, v104, v105, v106, v107, v108;
      if (v101)
      {
        goto LABEL_24;
      }

      v109 = [v98 rightContext];
      v110 = sub_100046E5C();
      v112 = v111;

      v112, v113, v114, v115, v116, v117, v118, v119;
      v120 = (v112 >> 56) & 0xF;
      if ((v112 & 0x2000000000000000) == 0)
      {
        v120 = v110 & 0xFFFFFFFFFFFFLL;
      }

      if (v120)
      {
LABEL_24:
        v121 = 0;
      }

      else
      {
        v226 = [v98 selectedText];
        v227 = sub_100046E5C();
        v229 = v228;

        v229, v230, v231, v232, v233, v234, v235, v236;
        v237 = (v229 >> 56) & 0xF;
        if ((v229 & 0x2000000000000000) == 0)
        {
          v237 = v227 & 0xFFFFFFFFFFFFLL;
        }

        v121 = v237 == 0;
      }

      v238 = v97;
      v122 = v259;
      v123 = v252;
      v124 = v248;
      sub_10000DAAC(v259, v264, v254, v251, v252, v247, v248, v246, v10, v91, v245, v244, v243, v242, v241, v240, v239, v95, 0, 0xE000000000000000, v96, v238, v121);
      v123, v125, v126, v127, v128, v129, v130, v131;
      v124, v132, v133, v134, v135, v136, v137, v138;
      v91, v139, v140, v141, v142, v143, v144, v145;
      v95, v146, v147, v148, v149, v150, v151, v152;
      sub_1000064CC(v122, &unk_10006FB00, &qword_10004C590);
      (*(v258 + 8))(v261, v262);
      v16 = v250;
      v62 = v260;
LABEL_26:
      v153 = v257;
      if (*(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_analysisLeftContext + 8))
      {
        v154 = *(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_analysisLeftContext);
        v155 = *(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_analysisLeftContext + 8);
      }

      else
      {

        v154 = v62;
        v155 = v153;
      }

      sub_1000304CC(v154, v155, v263, &selRef_setLeftContextText_);
      v156 = [*(v16 + v60) asrID];
      if (v156)
      {
        v157 = v156;
        v60 = v255;
        sub_100046BAC();

        v158 = 0;
        v41 = v266;
      }

      else
      {
        v158 = 1;
        v41 = v266;
        v60 = v255;
      }

      sub_1000045DC(v60, v158, 1, v262);
      v159 = *(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_modelContextDelegateInterface);
      v160 = *(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_resultsAreSpaceAgnostic);
      v161 = objc_allocWithZone(type metadata accessor for EARSpeechRecognitionResultStream(0));

      v162 = v159;
      v163 = sub_1000313D0(v256, v60, v162, v160, v62, v153);
      v164 = *(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_resultStream);
      *(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_resultStream) = v163;
      v165 = v163;

      v166 = v165;
      v167 = sub_100046E4C();
      v40, v168, v169, v170, v171, v172, v173, v174;
      v175 = sub_100046E4C();
      if ((v41 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_47:
      swift_once();
    }

    v176 = v175;
    v177 = v263;
    v267 = [v263 runRecognitionWithResultStream:v166 language:v167 task:v175 samplingRate:v41];

    v178 = sub_100046E4C();
    v179 = [v177 deviceId];
    if (!v179)
    {
      sub_100046E5C();
      v181 = v180;
      v179 = sub_100046E4C();
      v181, v182, v183, v184, v185, v186, v187, v188;
    }

    v189 = [v177 farField];
    v190 = [v177 atypicalSpeech];
    v191 = [v177 aneContext];
    if (!v191)
    {
      sub_100046E5C();
      v193 = v192;
      v191 = sub_100046E4C();
      v193, v194, v195, v196, v197, v198, v199, v200;
    }

    v201 = [v177 cpuContext];
    if (!v201)
    {
      sub_100046E5C();
      v203 = v202;
      v201 = sub_100046E4C();
      v203, v204, v205, v206, v207, v208, v209, v210;
    }

    v211 = [v177 gpuContext];
    if (!v211)
    {
      sub_100046E5C();
      v213 = v212;
      v211 = sub_100046E4C();
      v213, v214, v215, v216, v217, v218, v219, v220;
    }

    v221 = [v177 isVadGatingSupported:v266 task:v178 device:v179 farField:v189 atypicalSpeech:v190 aneContext:v191 cpuContext:v201 gpuContext:v211];

    v222 = v250;
    *(v250 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_isVADSupportedForRequest) = v221;
    v75 = [objc_opt_self() anonymousListener];
    [v75 setDelegate:v222];
    [v75 activate];
    v223 = (v222 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_audioBufferListeners);
    os_unfair_lock_lock(v223);
    v224 = objc_allocWithZone(type metadata accessor for EARSpeechRecognitionAudioBuffer());
    v41 = v267;
    v225 = sub_10002BD50(v41);
    sub_10002D680(v225, v75);
    os_unfair_lock_unlock(v223);
    v76 = [v75 endpoint];
    v30 = v265;
    (*(v265 + 2))(v265, v76, 0);
  }

  else
  {
    sub_100046E0C();
    v271._object = 0x800000010004F680;
    v271._countAndFlagsBits = 0xD000000000000018;
    sub_100046DFC(v271);
    v272._countAndFlagsBits = a4;
    v272._object = a5;
    sub_100046DEC(v272);
    v273._countAndFlagsBits = 32;
    v273._object = 0xE100000000000000;
    sub_100046DFC(v273);
    v274._countAndFlagsBits = v267;
    v274._object = v40;
    sub_100046DEC(v274);
    v40, v67, v68, v69, v70, v71, v72, v73;
    v275._countAndFlagsBits = 32;
    v275._object = 0xE100000000000000;
    sub_100046DFC(v275);
    v268[0] = a6;
    sub_100046DDC();
    v276._countAndFlagsBits = 0;
    v276._object = 0xE000000000000000;
    sub_100046DFC(v276);
    sub_100046E2C();
    if (qword_10006DD78 != -1)
    {
      swift_once();
    }

    v74 = off_100071650;
    sub_100046C2C();
    sub_100046E6C();
    sub_10004707C();
    v75 = sub_100046D5C();
    v76 = sub_100046A6C();
    (*(v30 + 2))(v30, 0, v76);
  }

  _Block_release(v30);
}

BOOL sub_100029C48(void *a1, void *a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_audioBufferListeners);
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_audioBufferListeners));
  v6 = sub_10002D368(a1);
  os_unfair_lock_unlock(v5);
  if (v6)
  {
    v7 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____SFXPCEARSpeechRecognitionAudioBuffer];
    [a2 setExportedInterface:v7];

    v8 = sub_100003730();
    [v8 v9];
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    *(v10 + 24) = a1;
    v15[4] = sub_1000309F8;
    v15[5] = v10;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_10002673C;
    v15[3] = &unk_100066140;
    v11 = _Block_copy(v15);
    v12 = v6;
    v13 = a1;

    [a2 setInvalidationHandler:v11];
    _Block_release(v11);
    [a2 activate];
  }

  return v6 != 0;
}

void sub_100029E80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  if (v5)
  {
    sub_100034518(0, v5, 0);
    v7 = (a2 + 40);
    do
    {
      v8 = *v7;
      sub_100046E9C();

      v9 = sandbox_extension_consume();
      v8, v10, v11, v12, v13, v14, v15, v16;

      v18 = *_swiftEmptyArrayStorage.transaction;
      v17 = *_swiftEmptyArrayStorage.resultStream;
      if (v18 >= v17 >> 1)
      {
        v19 = sub_100031108(v17);
        sub_100034518(v19, v18 + 1, 1);
      }

      *_swiftEmptyArrayStorage.transaction = v18 + 1;
      *&_swiftEmptyArrayStorage.audioBufferListeners[8 * v18] = v9;
      v7 += 2;
      --v5;
    }

    while (v5);
  }

  v20 = 0;
  v59 = *(v3 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer);
  v21 = *(a1 + 16);
  v22 = a1 + 40;
  v58 = a1 + 40;
LABEL_7:
  v23 = (v22 + 16 * v20);
  while (v21 != v20)
  {
    if (v20 >= v21)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }

    v24 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_24;
    }

    v25 = *(v23 - 1);
    v26 = *v23;
    v27 = objc_allocWithZone(_EARAppLmArtifact);
    swift_bridgeObjectRetain_n();
    v28 = sub_10002CAC8(v25, v26);
    v29 = [v28 loadLmHandle];

    v26, v30, v31, v32, v33, v34, v35, v36;
    ++v20;
    v23 += 2;
    if (v29)
    {
      sub_100046EDC();
      v37 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= v37 >> 1)
      {
        sub_100031108(v37);
        sub_100046F1C();
      }

      sub_1000310AC();
      sub_100046F3C();
      v20 = v24;
      v22 = v58;
      goto LABEL_7;
    }
  }

  v38 = [v59 extraLmList];
  sub_1000029E4(0, &qword_10006FE58, _EARLmHandle_ptr);
  v39 = sub_100046EFC();

  sub_10002A150(&_swiftEmptyArrayStorage);
  isa = sub_100046EEC().super.isa;
  v39, v41, v42, v43, v44, v45, v46, v47;
  [v59 setExtraLmList:isa];

  v55 = *_swiftEmptyArrayStorage.transaction;
  if (v55)
  {
    audioBufferListeners = _swiftEmptyArrayStorage.audioBufferListeners;
    do
    {
      v57 = *audioBufferListeners;
      audioBufferListeners += 8;
      if (v57 != -1)
      {
        sandbox_extension_release();
      }

      --v55;
    }

    while (v55);
  }

  &_swiftEmptyArrayStorage, v48, v49, v50, v51, v52, v53, v54;
}

void sub_10002A150(unint64_t a1)
{
  v3 = sub_10000AD1C(a1);
  v4 = sub_10000AD1C(*v1);
  v5 = __OFADD__(v4, v3);
  v6 = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_100030364(v6, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  v9 = sub_10003078C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v11 = v10;
  v9, v12, v10, v13, v14, v15, v16, v17;
  if (v11 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v11 < 1)
  {
LABEL_6:
    *v1 = v7;
    return;
  }

  v18 = *(v8 + 16);
  v5 = __OFADD__(v18, v11);
  v19 = v18 + v11;
  if (!v5)
  {
    *(v8 + 16) = v19;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
}

void sub_10002A2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000313BC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v8;
  sub_100046B3C();

  v11 = sub_1000310AC();
  v6(v11);
  v12 = sub_1000310AC();
  sub_10000C140(v12, v13);
  sub_1000313A8();
}

void sub_10002A364(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer);
  isa = sub_100046B2C().super.isa;
  [v5 *a3];
}

void sub_10002A3DC(uint64_t a1, void (**a2)(void, void))
{
  v3 = [*(a1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer) rightContext];
  sub_100046E5C();
  v5 = v4;

  v6 = sub_100046E4C();
  (a2)[2](a2, v6);
  v5, v7, v8, v9, v10, v11, v12, v13;

  _Block_release(a2);
}

void sub_10002A494(uint64_t a1, void (**a2)(void, void))
{
  v3 = [*(a1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer) modelInfo];
  v4 = [objc_allocWithZone(EARSpeechModelInfo) initWithModelInfo:v3];

  (a2)[2](a2, v4);

  _Block_release(a2);
}

void sub_10002A548(uint64_t a1, void (**a2)(void, void))
{
  v3 = [*(a1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer) recognitionStatistics];
  sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
  v4 = sub_100046D7C();

  isa = sub_100046D6C().super.isa;
  (a2)[2](a2, isa);
  v4, v6, v7, v8, v9, v10, v11, v12;

  _Block_release(a2);
}

void sub_10002A648(uint64_t a1, void (**a2)(void, void))
{
  v3 = [*(a1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer) recognitionUtterenceStatistics];
  v4 = sub_100046D7C();

  isa = sub_100046D6C().super.isa;
  (a2)[2](a2, isa);
  v4, v6, v7, v8, v9, v10, v11, v12;

  _Block_release(a2);
}

void sub_10002A728(uint64_t a1, void (**a2)(void, void))
{
  type metadata accessor for Instrumentation();
  v4 = sub_10000ABC4();
  v5 = *(a1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_cpuInstructionsUsedAtStart);
  v6 = v4 >= v5;
  v7 = v4 - v5;
  if (v6)
  {
    v8 = v7 / 1000000.0;
    v9 = [*(a1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer) recognitionMetrics];
    v10 = [objc_allocWithZone(EARRecognitionMetrics) initWithRecognitionMetrics:v9 cpuInstructions:v8];

    (a2)[2](a2, v10);

    _Block_release(a2);
  }

  else
  {
    __break(1u);
  }
}

void sub_10002A824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000313BC();
  v6 = v5;
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C(&qword_10006DD40);
  }

  v7 = sub_100046D1C();
  v8 = sub_100008FA4(v7, qword_1000714B8);
  v9 = sub_100046FFC();
  if (sub_100030F60(v9))
  {
    v10 = sub_100004A8C();
    v23 = sub_100004A74();
    *v10 = 136315138;
    sub_10000BF98();
    *(v10 + 4) = sub_100004EB4(0xD000000000000012, v11, v12);
    sub_10003103C();
    sub_100031378(v13, v14, v15, v16);
    sub_1000050D4(v23);
    sub_100004ACC();
    sub_100030F7C();
  }

  [*(v6 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer) pauseRecognition];
  if (qword_10006DD30 != -1)
  {
    sub_10000418C(&qword_10006DD30);
  }

  mach_continuous_time();
  sub_100031114();
  sub_1000042C4();
  sub_10000FFF0(v17, v18, v19, v20, v21, v22);
  sub_1000313A8();
}

void sub_10002A9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100031290();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C(&qword_10006DD40);
  }

  v12 = sub_100046D1C();
  v13 = sub_100008FA4(v12, qword_1000714B8);
  v14 = sub_100046FFC();
  if (sub_10000BD64(v14))
  {
    v15 = sub_100004A8C();
    v38 = sub_100004A74();
    *v15 = 136315138;
    sub_10000BF98();
    *(v15 + 4) = sub_100004EB4(0xD00000000000003DLL, v16, v17);
    _os_log_impl(&_mh_execute_header, v13, v14, "EARSpeechRecognizer.%s", v15, 0xCu);
    sub_1000050D4(v38);
    sub_100002B44(v38);
    sub_100002B44(v15);
  }

  v18 = (v7 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_analysisLeftContext);
  v19 = *(v7 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_analysisLeftContext + 8);
  *v18 = v11;
  v18[1] = v9;
  v19, v20, v21, v22, v23, v24, v25, v26;

  v27 = sub_100046E4C();
  v28 = sub_100046E4C();
  v29 = sub_100046E4C();
  v30 = sub_100003730();
  [v30 v31];

  if (qword_10006DD30 != -1)
  {
    sub_10000418C(&qword_10006DD30);
  }

  mach_continuous_time();
  sub_100031114();
  sub_1000042C4();
  sub_10000FFF0(v32, v33, v34, v35, v36, v37);
  sub_1000312AC();
}

void sub_10002AC54(uint64_t a1, NSString a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v16 = a10;
  v15 = a11;
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C(&qword_10006DD40);
  }

  v17 = sub_100046D1C();
  v18 = sub_100008FA4(v17, qword_1000714B8);
  v19 = sub_100046FFC();
  if (sub_100030FB0(v19))
  {
    v30 = v12;
    v20 = sub_100004A8C();
    v21 = sub_100004A74();
    v33 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100004EB4(0xD0000000000000A6, 0x800000010004F4A0, &v33);
    sub_100006B04();
    _os_log_impl(v22, v23, v24, v25, v20, 0xCu);
    sub_1000050D4(v21);
    v15 = a11;
    v16 = a10;
    sub_100002B44(v21);
    v26 = v20;
    v12 = v30;
    sub_100002B44(v26);
  }

  v27 = *(v12 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer);
  if ([v27 respondsToSelector:"updateVoiceCommandContextWithPrefixText:postfixText:selectedText:disambiguationActive:cursorInVisibleText:favorCommandSuppression:abortCommandSuppression:undoEvent:"])
  {
    if (a2)
    {
      a2 = sub_100046E4C();
    }

    if (a4)
    {
      v28 = sub_100046E4C();
      if (a6)
      {
LABEL_10:
        v29 = sub_100046E4C();
LABEL_14:
        v32 = v29;
        [v27 updateVoiceCommandContextWithPrefixText:a2 postfixText:v28 selectedText:v16 disambiguationActive:v15 cursorInVisibleText:? favorCommandSuppression:? abortCommandSuppression:? undoEvent:?];

        return;
      }
    }

    else
    {
      v28 = 0;
      if (a6)
      {
        goto LABEL_10;
      }
    }

    v29 = 0;
    goto LABEL_14;
  }
}

void sub_10002AFE0(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, os_log_t oslog, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000311BC();
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C(&qword_10006DD40);
  }

  v23 = sub_100046D1C();
  v24 = sub_100008FA4(v23, qword_1000714B8);
  v25 = sub_100046FFC();
  if (os_log_type_enabled(v24, v25))
  {
    sub_100004A8C();
    sub_10000C394();
    sub_1000311D4();
    *v21 = 136315138;
    sub_10000BF98();
    *(v21 + 4) = sub_100004EB4(0xD000000000000016, v26, v27);
    _os_log_impl(&_mh_execute_header, v24, v25, "EARSpeechRecognizer.%s", v21, 0xCu);
    sub_1000050D4(v22);
    sub_100030F44();
    sub_100005408();
  }

  v28 = *(v20 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer);
  if ([v28 detectUtterances])
  {
    osloga = sub_100046D0C();
    v29 = sub_100046FEC();
    if (os_log_type_enabled(osloga, v29))
    {
      v30 = sub_1000090C8();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, osloga, v29, "Ignoring requestEagerResult; not supported with detectUtterances", v30, 2u);
      sub_100002B44(v30);
    }
  }

  else
  {
    sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
    sub_100046EEC();
    [v28 requestEagerResult:?];
  }

  sub_100009044();
}

void sub_10002B210()
{
  sub_1000313BC();
  v1 = v0;
  v3 = v2;
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C(&qword_10006DD40);
  }

  v4 = sub_100046D1C();
  v5 = sub_100008FA4(v4, qword_1000714B8);
  v6 = sub_100046FFC();
  if (sub_10000BD64(v6))
  {
    v7 = sub_100004A8C();
    v27 = sub_100004A74();
    *v7 = 136315138;
    sub_10000BF98();
    *(v7 + 4) = sub_100004EB4(0xD000000000000011, v8, v9);
    _os_log_impl(&_mh_execute_header, v5, v6, "EARSpeechRecognizer.%s", v7, 0xCu);
    sub_1000050D4(v27);
    sub_100005408();
    sub_100004ACC();
  }

  v10 = *(v1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_clientInfo);
  *(v1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_clientInfo) = v3;

  v11 = *(v1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer);
  v12 = sub_1000306D8(v3, &selRef_inputOrigin);
  sub_100006DF4(v12, v13);
  if (v15)
  {
    v16 = 0xE000000000000000;
  }

  else
  {
    v16 = v14;
  }

  v26 = sub_100046E4C();
  v16, v17, v18, v19, v20, v21, v22, v23;
  [v11 setInputOrigin:v26];
  sub_1000313A8();
}

void sub_10002B3E0(uint64_t a1, void (**a2)(void, void))
{
  (a2)[2](a2, [*(a1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_userSpeechProfiles) count] > 0);

  _Block_release(a2);
}

void sub_10002B45C(uint64_t a1, void (**a2)(void, void))
{
  v3 = [*(a1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_userSpeechProfiles) allValues];
  v4 = sub_100046EFC();

  sub_1000264F8(v4, &v23);
  v4, v5, v6, v7, v8, v9, v10, v11;
  if (!v24)
  {
    sub_1000064CC(&v23, &qword_10006FE90, &unk_10004CCD0);
    goto LABEL_5;
  }

  sub_1000029E4(0, &unk_10006FE98, _EARUserProfileContainer_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v13 = &_swiftEmptySetSingleton;
    goto LABEL_6;
  }

  v12 = [v22 experimentIds];
  v13 = sub_100046FBC();

LABEL_6:
  isa = sub_100046FAC().super.isa;
  (a2)[2](a2, isa);
  v13, v15, v16, v17, v18, v19, v20, v21;

  _Block_release(a2);
}

void sub_10002B5D8(uint64_t a1, void (**a2)(void, double))
{
  a2[2](a2, *(a1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_modelLoadTime));

  _Block_release(a2);
}

void sub_10002B640(uint64_t a1, uint64_t a2)
{
  sub_1000311BC();
  sub_100006B10();
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C(&qword_10006DD40);
  }

  v7 = sub_100046D1C();
  v8 = sub_100008FA4(v7, qword_1000714B8);
  v9 = sub_100046FFC();
  if (sub_10000BD64(v9))
  {
    sub_100004A8C();
    sub_10000C394();
    sub_1000311D4();
    *v5 = 136315138;
    sub_10000BF98();
    *(v5 + 4) = sub_100004EB4(0xD000000000000016, v10, v11);
    sub_100004B04(&_mh_execute_header, v12, v13, "EARSpeechRecognizer.%s");
    sub_1000050D4(v6);
    sub_100030F44();
    sub_100005408();
  }

  v14 = sub_100030FA4();
  sub_100030734(v14, v15, v16);
  v17 = (v4 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_analysisLeftContext);
  v18 = *(v4 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_analysisLeftContext + 8);
  *v17 = v3;
  v17[1] = v2;
  v18, v19, v20, v21, v22, v23, v24, v25;
  v26 = qword_10006DD30;

  if (v26 != -1)
  {
    sub_10000418C(&qword_10006DD30);
  }

  mach_continuous_time();
  sub_100031114();
  sub_1000042C4();
  sub_10000FFF0(v27, v28, v29, v30, v31, v32);
  sub_100009044();
}

void sub_10002B7A4(uint64_t a1, uint64_t a2)
{
  sub_1000311BC();
  sub_100006B10();
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C(&qword_10006DD40);
  }

  v5 = sub_100046D1C();
  v6 = sub_100008FA4(v5, qword_1000714B8);
  v7 = sub_100046FFC();
  if (sub_10000BD64(v7))
  {
    sub_100004A8C();
    sub_10000C394();
    sub_1000311D4();
    *v3 = 136315138;
    sub_10000BF98();
    *(v3 + 4) = sub_100004EB4(0xD000000000000013, v8, v9);
    sub_100004B04(&_mh_execute_header, v10, v11, "EARSpeechRecognizer.%s");
    sub_1000050D4(v4);
    sub_100030F44();
    sub_100005408();
  }

  v12 = *(v2 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer);
  sub_100030FA4();
  v13 = sub_100046E4C();
  [v12 setRightContext:v13];

  if (qword_10006DD30 != -1)
  {
    sub_10000418C(&qword_10006DD30);
  }

  mach_continuous_time();
  sub_100031114();
  sub_1000042C4();
  sub_10000FFF0(v14, v15, v16, v17, v18, v19);
  sub_100009044();
}

void sub_10002B904(uint64_t a1, uint64_t a2)
{
  sub_1000311BC();
  sub_100006B10();
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C(&qword_10006DD40);
  }

  v5 = sub_100046D1C();
  v6 = sub_100008FA4(v5, qword_1000714B8);
  v7 = sub_100046FFC();
  if (sub_10000BD64(v7))
  {
    sub_100004A8C();
    sub_10000C394();
    sub_1000311D4();
    *v3 = 136315138;
    sub_10000BF98();
    *(v3 + 4) = sub_100004EB4(0xD000000000000013, v8, v9);
    sub_100004B04(&_mh_execute_header, v10, v11, "EARSpeechRecognizer.%s");
    sub_1000050D4(v4);
    sub_100030F44();
    sub_100005408();
  }

  v12 = *(v2 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer);
  sub_100030FA4();
  v13 = sub_100046E4C();
  [v12 setSelectedText:v13];

  if (qword_10006DD30 != -1)
  {
    sub_10000418C(&qword_10006DD30);
  }

  mach_continuous_time();
  sub_100031114();
  sub_1000042C4();
  sub_10000FFF0(v14, v15, v16, v17, v18, v19);
  sub_100009044();
}

void sub_10002BA64(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, _TtC22localspeechrecognition19EARSpeechRecognizer *))
{
  v6 = sub_100046E5C();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);

  v8, v10, v11, v12, v13, v14, v15, v16;
}

void sub_10002BAD0(uint64_t a1, void (**a2)(void, void))
{
  a2[2](a2, *(a1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_isVADSupportedForRequest));

  _Block_release(a2);
}

void sub_10002BB38(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

void sub_10002BBEC(uint64_t a1)
{
  sub_10002BCF8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10002BCF8(uint64_t a1)
{
  if (!qword_10006FDB0)
  {
    sub_100046B7C();
    v1 = sub_10004710C();
    if (!v2)
    {
      atomic_store(v1, &qword_10006FDB0);
    }
  }
}

id sub_10002BD50(uint64_t a1)
{
  v2 = v1;
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v4 = sub_100046D1C();
  sub_100004D64(v4, qword_1000714B8);
  v5 = sub_100046D0C();
  v6 = sub_100046FFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100004EB4(0x293A5F2874696E69, 0xE800000000000000, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "EARSpeechRecognitionAudioBuffer.%s", v7, 0xCu);
    sub_1000050D4(v8);
  }

  *&v2[OBJC_IVAR____TtC22localspeechrecognition31EARSpeechRecognitionAudioBuffer_audioBuffer] = a1;
  v9 = type metadata accessor for EARSpeechRecognitionAudioBuffer();
  v12.receiver = v2;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, "init");
}

uint64_t sub_10002BEBC()
{
  sub_10000BDA0();
  sub_100005C1C();
  v1 = *v0;
  sub_100004B48();
  *v2 = v1;

  return _swift_task_switch(sub_10002BFC4, 0, 0);
}

void sub_10002BFDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_10000ECEC(&qword_10006FE50, &qword_10004D1E0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - v9;
  v11 = *(a2 + OBJC_IVAR____TtC22localspeechrecognition31EARSpeechRecognitionAudioBuffer_audioBuffer);
  if (a4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_100046B2C().super.isa;
  }

  (*(v8 + 16))(v10, a1, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v10, v7);
  aBlock[4] = sub_10002CE14;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002C218;
  aBlock[3] = &unk_100066000;
  v15 = _Block_copy(aBlock);

  [v11 addAudio2SampleData:isa withCompletion:v15];
  _Block_release(v15);
}

uint64_t sub_10002C218(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_10002C26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1000313BC();
  a17 = v18;
  a18 = v19;
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C(&qword_10006DD40);
  }

  v20 = sub_100046D1C();
  v21 = sub_100008FA4(v20, qword_1000714B8);
  v22 = sub_100046FFC();
  if (sub_100030F60(v22))
  {
    v23 = sub_100004A8C();
    v24 = sub_100004A74();
    a10 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_100004EB4(0x6F69647541646E65, 0xEA00000000002928, &a10);
    sub_10003103C();
    sub_100031378(v25, v26, v27, v28);
    sub_1000050D4(v24);
    sub_100004ACC();
    sub_100030F7C();
  }

  sub_1000313A8();

  return [v29 v30];
}

id sub_10002C3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000313BC();
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C(&qword_10006DD40);
  }

  v5 = sub_100046D1C();
  v6 = sub_100008FA4(v5, qword_1000714B8);
  v7 = sub_100046FFC();
  if (sub_100030F60(v7))
  {
    v8 = sub_100004A8C();
    v19 = sub_100004A74();
    *v8 = 136315138;
    sub_10000BF98();
    *(v8 + 4) = sub_100004EB4(0xD000000000000013, v9, v10);
    sub_10003103C();
    sub_100031378(v11, v12, v13, v14);
    sub_1000050D4(v19);
    sub_100004ACC();
    sub_100030F7C();
  }

  sub_1000313A8();

  return [v15 v16];
}

uint64_t sub_10002C504(float a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return sub_100002BDC(sub_10002C520);
}

uint64_t sub_10002C520()
{
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C(&qword_10006DD40);
  }

  v1 = sub_100046D1C();
  v2 = sub_100008FA4(v1, qword_1000714B8);
  v3 = sub_100046FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_100004A8C();
    v20 = sub_100004A74();
    *(v4 + 4) = sub_1000310E0(4.8149e-34, v20, v5);
    sub_100031308(&_mh_execute_header, v6, v7, "EARSpeechRecognitionAudioBuffer.%s");
    sub_1000050D4(v20);
    sub_100005408();
    sub_100004ACC();
  }

  LODWORD(v8) = *(v0 + 24);
  v9 = [*(*(v0 + 16) + OBJC_IVAR____TtC22localspeechrecognition31EARSpeechRecognitionAudioBuffer_audioBuffer) packetArrivalTimestampFromAudioTime:v8];
  v10 = sub_100046D0C();
  v11 = sub_100046FFC();
  if (sub_100030F60(v11))
  {
    v12 = swift_slowAlloc();
    v21 = sub_100004A74();
    *(v12 + 4) = sub_1000310E0(4.8151e-34, v21, v13);
    *(v12 + 12) = 2048;
    *(v12 + 14) = v9;
    sub_10003103C();
    _os_log_impl(v14, v15, v16, v17, v12, 0x16u);
    sub_1000050D4(v21);
    sub_100005408();
    sub_100004ACC();
  }

  v18 = *(v0 + 8);

  return v18(v9);
}

uint64_t sub_10002C798(const void *a1, void *a2, float a3)
{
  v3[2] = a2;
  v3[3] = _Block_copy(a1);
  a2;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_10002C850;

  return sub_10002C504(a3);
}

uint64_t sub_10002C850()
{
  sub_10000BF04();
  sub_100005C1C();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100004B48();
  *v5 = v4;

  v6 = sub_1000041C4();
  v7(v6);
  _Block_release(v2);
  sub_100004170();

  return v8();
}

id sub_10002C990()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EARSpeechRecognitionAudioBuffer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10002C9F8(uint64_t a1, uint64_t a2, uint64_t a3, _TtC22localspeechrecognition19EARSpeechRecognizer *a4)
{
  v5 = v4;
  v9.super.isa = sub_100046BEC().super.isa;
  if (a4)
  {
    v10 = sub_100046E4C();
    a4, v11, v12, v13, v14, v15, v16, v17;
  }

  else
  {
    v10 = 0;
  }

  v18 = [v5 initWithAssetType:a1 locale:v9.super.isa regionId:v10];

  v19 = sub_100046C3C();
  (*(*(v19 - 8) + 8))(a2, v19);
  return v18;
}

id sub_10002CAC8(uint64_t a1, _TtC22localspeechrecognition19EARSpeechRecognizer *a2)
{
  if (a2)
  {
    v4 = sub_100046E4C();
    a2, v5, v6, v7, v8, v9, v10, v11;
  }

  else
  {
    v4 = 0;
  }

  v12 = [v2 initWithPath:v4];

  return v12;
}

uint64_t sub_10002CB2C(uint64_t a1, _TtC22localspeechrecognition19EARSpeechRecognizer *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000ECEC(&qword_10006FAD8, &qword_10004CFA0);
  __chkstk_darwin(v9 - 8);
  v11 = v29 - v10;
  sub_100030CE0(a3, v29 - v10, &qword_10006FAD8, &qword_10004CFA0);
  v12 = sub_100046F9C();
  if (sub_100004844(v11, 1, v12) == 1)
  {
    sub_1000064CC(v11, &qword_10006FAD8, &qword_10004CFA0);
  }

  else
  {
    sub_100046F8C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_100046F4C();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_100046E9C() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v30[0] = 0;
        v30[1] = 0;
        v18 = v30;
        v30[2] = v13;
        v30[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v29[1] = 7;
      v29[2] = v18;
      v29[3] = v16;
      v20 = swift_task_create();

      sub_1000064CC(a3, &qword_10006FAD8, &qword_10004CFA0);
      a2, v21, v22, v23, v24, v25, v26, v27;

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000064CC(a3, &qword_10006FAD8, &qword_10004CFA0);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v30[4] = 0;
    v30[5] = 0;
    v30[6] = v13;
    v30[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_10002CE14(char a1)
{
  v2 = sub_10000ECEC(&qword_10006FE50, &qword_10004D1E0);
  sub_100004250(v2);

  return sub_10002C1CC(a1);
}

uint64_t sub_10002CE8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002CEA4()
{
  sub_10000BF04();
  v0 = swift_task_alloc();
  v1 = sub_100008FCC(v0);
  *v1 = v2;
  v1[1] = sub_10000C28C;
  v3 = sub_1000041C4();

  return v4(v3);
}

uint64_t sub_10002CF4C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

void sub_10002CF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, Swift::Int a10)
{
  sub_100031290();
  v12 = v10;
  v13 = *v10;
  if ((*v10 & 0xC000000000000001) == 0)
  {
    v38 = sub_100034548(v11);
    if ((v39 & 1) == 0)
    {
LABEL_11:
      sub_1000312AC();
      return;
    }

    v40 = v38;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000090BC();
    v41 = sub_10000ECEC(&qword_10006FF40, &qword_10004D2F0);
    sub_1000312C8(v41);
    v21 = a10;

    sub_100031210();
    sub_1000029E4(v42, v43, v44);
    type metadata accessor for EARLanguageDetectorAudioBuffer();
    sub_100031210();
    sub_100030BE8(v45, v46, v47);
    sub_10004730C();
LABEL_10:
    *v12 = v21;
    goto LABEL_11;
  }

  if (v13 < 0)
  {
    v14 = *v10;
  }

  else
  {
    v14 = v13 & 0xFFFFFFFFFFFFFF8;
  }

  v15 = v11;
  v16 = sub_10004733C();

  if (!v16)
  {
    goto LABEL_11;
  }

  swift_unknownObjectRelease();

  sub_10004732C();
  sub_10000C6AC();
  v21 = sub_10002D928(v14, v17, v18, v19, 0, v20);

  v22 = sub_100034548(v15);
  v24 = v23;

  if (v24)
  {

    sub_1000311EC();
    sub_1000029E4(v25, v26, v27);
    type metadata accessor for EARLanguageDetectorAudioBuffer();
    sub_1000311EC();
    sub_100030BE8(v28, v29, v30);
    sub_10004730C();
    v13, v31, v32, v33, v34, v35, v36, v37;
    goto LABEL_10;
  }

  __break(1u);
}

void sub_10002D190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, Swift::Int a10)
{
  sub_1000311BC();
  v12 = v10;
  v13 = *v10;
  if ((*v10 & 0xC000000000000001) == 0)
  {
    v35 = sub_100034548(v11);
    if ((v36 & 1) == 0)
    {
LABEL_11:
      sub_100009044();
      return;
    }

    v37 = v35;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000090BC();
    v38 = sub_10000ECEC(&qword_10006FEC0, &qword_10004D270);
    sub_1000312C8(v38);
    v18 = a10;

    sub_100031210();
    sub_1000029E4(v39, v40, v41);
    sub_100031210();
    sub_100030BE8(v42, v43, v44);
    sub_10004730C();
LABEL_10:
    *v12 = v18;
    goto LABEL_11;
  }

  if (v13 < 0)
  {
    v14 = *v10;
  }

  else
  {
    v14 = v13 & 0xFFFFFFFFFFFFFF8;
  }

  v15 = v11;
  v16 = sub_10004733C();

  if (!v16)
  {
    goto LABEL_11;
  }

  swift_unknownObjectRelease();

  v17 = sub_10004732C();
  v18 = sub_10002D73C(v14, v17);

  v19 = sub_100034548(v15);
  v21 = v20;

  if (v21)
  {

    sub_1000311EC();
    sub_1000029E4(v22, v23, v24);
    sub_1000311EC();
    sub_100030BE8(v25, v26, v27);
    sub_10004730C();
    v13, v28, v29, v30, v31, v32, v33, v34;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_10002D368(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v22 = sub_100034548(a1);
    if (v23)
    {
      v24 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = *v1;
      v26 = *(*v1 + 24);
      sub_10000ECEC(&qword_10006FE70, &qword_10004D250);
      sub_1000472EC(isUniquelyReferenced_nonNull_native, v26);
      v9 = v27;

      v14 = *(*(v27 + 56) + 8 * v24);
      sub_1000029E4(0, &qword_10006FAF0, NSXPCListener_ptr);
      type metadata accessor for EARSpeechRecognitionAudioBuffer();
      sub_100030BE8(&qword_10006EE10, &qword_10006FAF0, NSXPCListener_ptr);
      sub_10004730C();
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_10004733C();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_10004732C();
  v9 = sub_10002D928(v4, v7, &unk_10006FE78, &qword_10004D258, v8, type metadata accessor for EARSpeechRecognitionAudioBuffer);

  v10 = sub_100034548(v5);
  v12 = v11;

  if (v12)
  {

    v14 = *(*(v9 + 56) + 8 * v10);
    sub_1000029E4(0, &qword_10006FAF0, NSXPCListener_ptr);
    type metadata accessor for EARSpeechRecognitionAudioBuffer();
    sub_100030BE8(&qword_10006EE10, &qword_10006FAF0, NSXPCListener_ptr);
    sub_10004730C();
    v3, v15, v16, v17, v18, v19, v20, v21;
LABEL_10:
    *v2 = v9;
    return v14;
  }

  __break(1u);
  return result;
}

void sub_10002D5A0()
{
  v2 = sub_100031120();
  if (v3)
  {
    goto LABEL_4;
  }

  if (!__OFADD__(sub_100031328(v2), 1))
  {
    sub_10000C6AC();
    *v0 = sub_10002D928(v1, v4, v5, v6, 0, v7);
LABEL_4:
    swift_isUniquelyReferenced_nonNull_native();
    v8 = sub_100031068();
    sub_100025CB4(v8, v9, v10);
    *v0 = v11;
    return;
  }

  __break(1u);
}

char *sub_10002D61C()
{
  v2 = sub_100031120();
  if (v3)
  {
    goto LABEL_4;
  }

  result = sub_100031328(v2);
  if (!__OFADD__(result, 1))
  {
    *v0 = sub_10002D73C(v1, (result + 1));
LABEL_4:
    swift_isUniquelyReferenced_nonNull_native();
    v5 = sub_100031068();
    result = sub_100025CC8(v5, v6);
    *v0 = v7;
    return result;
  }

  __break(1u);
  return result;
}

void sub_10002D680(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

  if (v6 < 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v8 = sub_10004732C();
  if (!__OFADD__(v8, 1))
  {
    *v3 = sub_10002D928(v7, v8 + 1, &unk_10006FE78, &qword_10004D258, v9, type metadata accessor for EARSpeechRecognitionAudioBuffer);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    sub_100025F18(a1, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v11;
    return;
  }

  __break(1u);
}

Swift::Int sub_10002D73C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000ECEC(&qword_10006FEC8, &qword_10004D278);
    v2 = sub_10004739C();
    v17 = v2;
    sub_10004731C();
    while (1)
    {
      if (!sub_10004734C())
      {

        return v2;
      }

      v4 = v3;
      sub_1000029E4(0, &qword_10006FAF0, NSXPCListener_ptr);
      swift_dynamicCast();
      v5 = *(v2 + 16);
      if (*(v2 + 24) <= v5)
      {
        sub_10002DD84(v5 + 1, 1);
      }

      v2 = v17;
      result = sub_1000470CC(*(v17 + 40));
      v7 = v17 + 64;
      v8 = -1 << *(v17 + 32);
      v9 = result & ~v8;
      v10 = v9 >> 6;
      if (((-1 << v9) & ~*(v17 + 64 + 8 * (v9 >> 6))) == 0)
      {
        break;
      }

      v11 = __clz(__rbit64((-1 << v9) & ~*(v17 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v17 + 48) + 8 * v11) = v16;
      *(*(v17 + 56) + 8 * v11) = v4;
      ++*(v17 + 16);
    }

    v12 = 0;
    v13 = (63 - v8) >> 6;
    while (++v10 != v13 || (v12 & 1) == 0)
    {
      v14 = v10 == v13;
      if (v10 == v13)
      {
        v10 = 0;
      }

      v12 |= v14;
      v15 = *(v7 + 8 * v10);
      if (v15 != -1)
      {
        v11 = __clz(__rbit64(~v15)) + (v10 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

Swift::Int sub_10002D928(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  if (a2)
  {
    sub_10000ECEC(a3, a4);
    v8 = sub_10004739C();
    v28 = v8;
    sub_10004731C();
    while (1)
    {
      v9 = sub_10004734C();
      if (!v9)
      {

        return v8;
      }

      v26 = v9;
      sub_1000029E4(0, &qword_10006FAF0, NSXPCListener_ptr);
      swift_dynamicCast();
      a6(a5);
      swift_dynamicCast();
      v13 = *(v8 + 16);
      if (*(v8 + 24) <= v13)
      {
        sub_10002DFF0(v13 + 1, 1, a3, a4, v10, v11, v12);
      }

      v8 = v28;
      result = sub_1000470CC(*(v28 + 40));
      v15 = v28 + 64;
      v16 = -1 << *(v28 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v28 + 64 + 8 * (v17 >> 6))) == 0)
      {
        break;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v28 + 64 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v28 + 48) + 8 * v19) = v27;
      *(*(v28 + 56) + 8 * v19) = v26;
      ++*(v28 + 16);
    }

    v20 = 0;
    v21 = (63 - v16) >> 6;
    while (++v18 != v21 || (v20 & 1) == 0)
    {
      v22 = v18 == v21;
      if (v18 == v21)
      {
        v18 = 0;
      }

      v20 |= v22;
      v23 = *(v15 + 8 * v18);
      if (v23 != -1)
      {
        v19 = __clz(__rbit64(~v23)) + (v18 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_10002DB48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000ECEC(&qword_10006FF38, &qword_10004D2E8);
  v39 = v4;
  v6 = sub_10004738C();
  if (!v5[2])
  {
LABEL_28:

LABEL_29:
    *v3 = v6;
    return;
  }

  v38 = v5;
  v7 = 0;
  v8 = v5;
  sub_100030FCC();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v6 + 8;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v13)
      {
        break;
      }

      ++v16;
      if (v8[v7])
      {
        sub_100030F34();
        v11 = v18 & v17;
        goto LABEL_9;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_29;
    }

    sub_100006E00();
    v3 = v2;
    if (v37 >= 64)
    {
      sub_1000312E8(v37);
    }

    else
    {
      *v8 = -1 << v37;
    }

    v5[2] = 0;
    goto LABEL_28;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_9:
    v19 = v15 | (v7 << 6);
    v20 = (v5[6] + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (v5[7] + 16 * v19);
    v24 = v23[1];
    v40 = *v23;
    if ((v39 & 1) == 0)
    {
    }

    sub_10004745C();
    sub_100046EAC();
    sub_10004748C();
    sub_10000BEEC();
    if (((v27 << v26) & ~v14[v25]) == 0)
    {
      break;
    }

    sub_10003127C();
LABEL_20:
    sub_100031234();
    *(v14 + v32) |= v33;
    v35 = (v6[6] + 16 * v34);
    *v35 = v21;
    v35[1] = v22;
    v36 = (v6[7] + 16 * v34);
    *v36 = v40;
    v36[1] = v24;
    ++v6[2];
    v5 = v38;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  sub_100031268();
  while (++v28 != v30 || (v29 & 1) == 0)
  {
    v31 = v28 == v30;
    if (v28 == v30)
    {
      v28 = 0;
    }

    v29 |= v31;
    if (v14[v28] != -1)
    {
      sub_100031254();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}