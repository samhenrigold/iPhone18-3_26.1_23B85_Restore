uint64_t sub_1C49A210C(uint64_t a1, char a2)
{
  if (a2)
  {
    return 1;
  }

  if (qword_1EC0B68C0 != -1)
  {
    swift_once();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4836304();
  v4 = v3;

  return v4 & 1;
}

uint64_t sub_1C49A2194()
{

  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_config);

  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_eventSource));

  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_eventTracker));

  sub_1C49A28A0(*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_sampleTaskUUIDPair), *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_sampleTaskUUIDPair + 8));
  sub_1C45942C8(*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_postProcessor));
  return v0;
}

uint64_t sub_1C49A2258()
{
  sub_1C49A2194();

  return swift_deallocClassInstance();
}

uint64_t sub_1C49A22D8(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1C49A2458@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C46C3940((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1C49A2490(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_1C46C3CC4();
  v33[2] = v35;
  v33[3] = v36;
  v33[4] = v37;
  v34 = v38;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  while (1)
  {
    sub_1C45E7890(v32);
    v7 = *(&v32[0] + 1);
    if (!*(&v32[0] + 1))
    {
      sub_1C449BB0C();
    }

    v8 = *&v32[0];
    v29 = v32[1];
    v30 = v32[2];
    v31[0] = v33[0];
    *(v31 + 9) = *(v33 + 9);
    v9 = *a5;
    v11 = sub_1C445FAA8(*&v32[0], *(&v32[0] + 1));
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v14 = v10;
    if (*(v9 + 24) >= v12 + v13)
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
        sub_1C456902C(&qword_1EC0C0928, &unk_1C4F3F540);
        sub_1C4F02468();
        if (v14)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1C467AC18();
      v15 = sub_1C445FAA8(v8, v7);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_18;
      }

      v11 = v15;
      if (v14)
      {
LABEL_10:
        v17 = *a5;
        sub_1C4460050(*(*a5 + 56) + (v11 << 6), v28, &qword_1EC0B9AE0, &qword_1C4F16C40);
        sub_1C4420C3C(&v29, &qword_1EC0B9AE0, &qword_1C4F16C40);

        sub_1C49A28E4(v28, *(v17 + 56) + (v11 << 6));
        goto LABEL_14;
      }
    }

    v18 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v8;
    v19[1] = v7;
    v20 = (v18[7] + (v11 << 6));
    v21 = v29;
    v22 = v30;
    v23 = v31[0];
    *(v20 + 41) = *(v31 + 9);
    v20[1] = v22;
    v20[2] = v23;
    *v20 = v21;
    v24 = v18[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    v18[2] = v26;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void *sub_1C49A26FC(void *result)
{
  if (result)
  {
    v1 = result;

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

uint64_t sub_1C49A277C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

uint64_t sub_1C49A27C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JointHUDataCollectionTaskManager.Point(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C49A2824()
{
  result = qword_1EC0C0908;
  if (!qword_1EC0C0908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0908);
  }

  return result;
}

uint64_t sub_1C49A28A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C49A28E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9AE0, &qword_1C4F16C40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C49A299C(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C49A2A1C()
{
  result = qword_1EC0C0940;
  if (!qword_1EC0C0940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0940);
  }

  return result;
}

unint64_t sub_1C49A2A70()
{
  result = qword_1EC0C0950;
  if (!qword_1EC0C0950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0950);
  }

  return result;
}

uint64_t sub_1C49A2AC4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C0958, &qword_1C4F3F700);
    sub_1C44724C0(a2, type metadata accessor for JointHUDataCollectionTaskManager.Point, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C49A2B60()
{
  result = qword_1EC0C0990;
  if (!qword_1EC0C0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0990);
  }

  return result;
}

_BYTE *sub_1C49A2BC4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C49A2CA4()
{
  result = qword_1EC0C09A0;
  if (!qword_1EC0C09A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C09A0);
  }

  return result;
}

unint64_t sub_1C49A2CFC()
{
  result = qword_1EC0C09A8;
  if (!qword_1EC0C09A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C09A8);
  }

  return result;
}

unint64_t sub_1C49A2D54()
{
  result = qword_1EC0C09B0;
  if (!qword_1EC0C09B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C09B0);
  }

  return result;
}

unint64_t sub_1C49A2DAC()
{
  result = qword_1EC0C09B8;
  if (!qword_1EC0C09B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C09B8);
  }

  return result;
}

unint64_t sub_1C49A2E04()
{
  result = qword_1EC0C09C0;
  if (!qword_1EC0C09C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C09C0);
  }

  return result;
}

unint64_t sub_1C49A2E5C()
{
  result = qword_1EC0C09C8;
  if (!qword_1EC0C09C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C09C8);
  }

  return result;
}

uint64_t JSONDecoder.decode<A>(_:fromURL:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1C4F00978();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1C4EF9938();
  v14 = v13;
  v15 = objc_autoreleasePoolPush();
  sub_1C49A3158(v6, a1, v12, v14, a3, a4, a5, &v18);
  objc_autoreleasePoolPop(v15);
  sub_1C4434000(v12, v14);
  return sub_1C440BAA8(a6, 0, 1, a3);
}

uint64_t sub_1C49A3158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  result = sub_1C4EF9328();
  if (v8)
  {
    *a8 = v8;
  }

  return result;
}

uint64_t static NSJSONSerialization.decode<A>(_:fromURL:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v66 = a3;
  sub_1C4EF98F8();
  sub_1C43FCDF8();
  v61 = v6;
  v62 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C4F00978();
  sub_1C43FCDF8();
  v64 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  v67 = a2;
  v16 = sub_1C4F01F48();
  v17 = sub_1C4F01F48();
  sub_1C43FCDF8();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v55 - v24;
  v26 = sub_1C4EF9938();
  v65 = v9;
  v59 = v22;
  v60 = v19;
  v56 = a1;
  v57 = v8;
  v58 = v15;
  v28 = v27;
  v29 = v26;
  v30 = objc_autoreleasePoolPush();
  sub_1C49A37FC(v69, v25);
  v63 = v29;
  v68 = v28;
  objc_autoreleasePoolPop(v30);
  v32 = v59;
  v31 = v60;
  v33 = v17;
  (*(v60 + 16))(v59, v25, v17);
  v34 = sub_1C44157D4(v32, 1, v16);
  v37 = *(v31 + 8);
  v35 = v31 + 8;
  v36 = v37;
  if (v34 == 1)
  {
    v55 = v25;
    v36(v32, v17);
    v38 = v58;
    sub_1C4F00148();
    v39 = v61;
    v40 = v62;
    v41 = v57;
    (*(v61 + 16))(v57, v56, v62);
    v42 = sub_1C4F00968();
    v43 = sub_1C4F01CD8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v60 = v35;
      v45 = v44;
      v46 = swift_slowAlloc();
      v69[0] = v46;
      *v45 = 136315138;
      sub_1C44266D0();
      v47 = sub_1C4F02858();
      v48 = v41;
      v50 = v49;
      (*(v39 + 8))(v48, v40);
      v51 = sub_1C441D828(v47, v50, v69);

      *(v45 + 4) = v51;
      _os_log_impl(&dword_1C43F8000, v42, v43, "JSONSerialization: decode fromURL: failed to decode %s as JSON of expected type.", v45, 0xCu);
      sub_1C440962C(v46);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
      sub_1C4434000(v63, v68);

      sub_1C442CD24();
      v52(v58);
    }

    else
    {
      sub_1C4434000(v63, v68);

      (*(v39 + 8))(v41, v40);
      sub_1C442CD24();
      v54(v38);
    }

    v36(v55, v33);
    return sub_1C440BAA8(v66, 1, 1, v67);
  }

  else
  {
    v36(v25, v17);
    sub_1C4434000(v63, v68);
    return (*(*(v16 - 8) + 32))(v66, v32, v16);
  }
}

uint64_t sub_1C49A37FC@<X0>(uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v16[4] = *MEMORY[0x1E69E9840];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = sub_1C4EF9A38();
  v16[0] = 0;
  v9 = [ObjCClassFromMetadata JSONObjectWithData:v8 options:0 error:v16];

  if (v9)
  {
    v10 = v16[0];
    sub_1C4F02078();
    swift_unknownObjectRelease();
    v11 = sub_1C4F01F48();
    v12 = swift_dynamicCast();
    return sub_1C440BAA8(a5, v12 ^ 1u, 1, v11);
  }

  else
  {
    v14 = v16[0];
    v15 = sub_1C4EF97A8();

    result = swift_willThrow();
    *a4 = v15;
  }

  return result;
}

Swift::String_optional __swiftcall String.removeNullFieldsFromJsonString()()
{
  v2 = v1;
  v3 = v0;
  v43 = *MEMORY[0x1E69E9840];
  v4 = sub_1C4F01188();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4F01178();
  sub_1C4F01148();
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  v10 = 0;
  v11 = 0;
  if (v9 >> 60 == 15)
  {
    goto LABEL_12;
  }

  v12 = objc_opt_self();
  sub_1C4402120();
  v13 = sub_1C4EF9A38();
  *&v38 = 0;
  v11 = [v12 JSONObjectWithData:v13 options:0 error:&v38];

  v14 = v38;
  if (!v11)
  {
    v24 = v14;
    v25 = sub_1C4EF97A8();

    swift_willThrow();
    v26 = sub_1C4402120();
    sub_1C441DFEC(v26, v27);

LABEL_8:
    v10 = 0;
    goto LABEL_12;
  }

  sub_1C4F02078();
  swift_unknownObjectRelease();
  sub_1C44482AC(&v40, v42);
  sub_1C49A3C84(v42, v3, v2, &v38);
  if (!v39)
  {
    sub_1C440962C(v42);
    v28 = sub_1C4402120();
    sub_1C441DFEC(v28, v29);
    sub_1C4448244(&v38);
LABEL_11:
    v10 = 0;
    v11 = 0;
    goto LABEL_12;
  }

  sub_1C44482AC(&v38, &v40);
  sub_1C4409678(&v40, v41);
  v15 = sub_1C4F02918();
  *&v38 = 0;
  v16 = [v12 dataWithJSONObject:v15 options:0 error:&v38];
  swift_unknownObjectRelease();
  v17 = v38;
  if (!v16)
  {
    v30 = v17;
    v31 = sub_1C4EF97A8();

    swift_willThrow();
    v32 = sub_1C4402120();
    sub_1C441DFEC(v32, v33);

    sub_1C440962C(v42);
    sub_1C440962C(&v40);
    goto LABEL_11;
  }

  v18 = sub_1C4EF9A68();
  v20 = v19;

  sub_1C4F01178();
  v10 = sub_1C4F01158();
  v11 = v21;
  v22 = sub_1C4402120();
  sub_1C441DFEC(v22, v23);
  sub_1C4434000(v18, v20);
  sub_1C440962C(v42);
  sub_1C440962C(&v40);
  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_12:
  v34 = v10;
  v35 = v11;
  result.value._object = v35;
  result.value._countAndFlagsBits = v34;
  return result;
}

void sub_1C49A3C84(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1C442B870(a1, &v52);
  v6 = sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
  if (swift_dynamicCast())
  {
    v42 = v6;
    v7 = 0;
    v8 = v49 + 64;
    v44 = v49;
    v9 = 1 << *(v49 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v49 + 64);
    v12 = MEMORY[0x1E69E7CC8];
    v13 = (v9 + 63) >> 6;
    v43 = v49 + 64;
    while (1)
    {
      if (!v11)
      {
        while (1)
        {
          v14 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v14 >= v13)
          {
            v11 = 0;
            v50 = 0u;
            v51 = 0u;
            v49 = 0u;
            goto LABEL_12;
          }

          v11 = *(v8 + 8 * v14);
          ++v7;
          if (v11)
          {
            v7 = v14;
            goto LABEL_11;
          }
        }

        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        sub_1C4F029F8();
        __break(1u);
        return;
      }

      v14 = v7;
LABEL_11:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (v14 << 6);
      v17 = (*(v44 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      sub_1C442B870(*(v44 + 56) + 32 * v16, &v54);
      *&v49 = v19;
      *(&v49 + 1) = v18;
      sub_1C44482AC(&v54, &v50);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_12:
      v52 = v49;
      v53[0] = v50;
      v53[1] = v51;
      v20 = *(&v49 + 1);
      if (!*(&v49 + 1))
      {
        break;
      }

      v21 = v52;
      sub_1C44482AC(v53, &v49);
      sub_1C49A3C84(&v49, a2, a3, &v47);
      if (v48)
      {
        sub_1C44482AC(&v47, &v54);
        sub_1C442B870(&v54, &v47);
        swift_isUniquelyReferenced_nonNull_native();
        v22 = v21;
        v23 = sub_1C445FAA8(v21, v20);
        if (__OFADD__(v12[2], (v24 & 1) == 0))
        {
          goto LABEL_49;
        }

        v25 = v23;
        v26 = v24;
        sub_1C456902C(&unk_1EC0C47F0, &unk_1C4F22550);
        if (sub_1C4F02458())
        {
          v27 = sub_1C445FAA8(v22, v20);
          if ((v26 & 1) != (v28 & 1))
          {
            goto LABEL_51;
          }

          v25 = v27;
        }

        if (v26)
        {

          v29 = (v12[7] + 32 * v25);
          sub_1C440962C(v29);
          sub_1C44482AC(&v47, v29);
          sub_1C440962C(&v54);
          sub_1C440962C(&v49);
        }

        else
        {
          v12[(v25 >> 6) + 8] |= 1 << v25;
          v30 = (v12[6] + 16 * v25);
          *v30 = v22;
          v30[1] = v20;
          sub_1C44482AC(&v47, (v12[7] + 32 * v25));
          sub_1C440962C(&v54);
          sub_1C440962C(&v49);
          v31 = v12[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_50;
          }

          v12[2] = v33;
        }

        v8 = v43;
      }

      else
      {
        sub_1C440962C(&v49);

        sub_1C4448244(&v47);
      }
    }

    if (v12[2])
    {
      *(a4 + 24) = v42;
      *a4 = v12;
    }

    else
    {

      *a4 = 0u;
      *(a4 + 16) = 0u;
    }
  }

  else
  {
    sub_1C442B870(a1, &v52);
    v34 = sub_1C456902C(&unk_1EC0C5D60, &unk_1C4F5BC70);
    if (swift_dynamicCast())
    {
      v35 = *(v49 + 16);
      if (v35)
      {
        v36 = v49 + 32;
        v37 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1C442B870(v36, &v52);
          sub_1C49A3C84(&v52, a2, a3, &v54);
          sub_1C440962C(&v52);
          if (v55)
          {
            sub_1C44482AC(&v54, &v49);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C458B364(0, *(v37 + 16) + 1, 1, v37);
              v37 = v40;
            }

            v39 = *(v37 + 16);
            v38 = *(v37 + 24);
            if (v39 >= v38 >> 1)
            {
              sub_1C458B364(v38 > 1, v39 + 1, 1, v37);
              v37 = v41;
            }

            *(v37 + 16) = v39 + 1;
            sub_1C44482AC(&v49, (v37 + 32 * v39 + 32));
          }

          else
          {
            sub_1C4448244(&v54);
          }

          v36 += 32;
          --v35;
        }

        while (v35);
      }

      else
      {

        v37 = MEMORY[0x1E69E7CC0];
      }

      if (*(v37 + 16))
      {
        *(a4 + 24) = v34;
        *a4 = v37;
        return;
      }
    }

    else
    {
      sub_1C442B870(a1, &v52);
      sub_1C49A4194();
      if (!swift_dynamicCast())
      {
        sub_1C442B870(a1, a4);
        return;
      }
    }

    *a4 = 0u;
    *(a4 + 16) = 0u;
  }
}

unint64_t sub_1C49A4194()
{
  result = qword_1EC0C09D0;
  if (!qword_1EC0C09D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0C09D0);
  }

  return result;
}

uint64_t sub_1C49A41D8()
{
  v0 = sub_1C4EFB0B8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[1] = MEMORY[0x1E69E7CC0];
  sub_1C44FAF64(&unk_1EDDFCD18, MEMORY[0x1E699FE00], MEMORY[0x1E699FE08]);
  sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4829BD0();
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1C49A436C()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  sub_1C4EFBDD8();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C4423A0C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = *MEMORY[0x1E69A00D0];
  v8 = sub_1C4EFBF38();
  (*(*(v8 - 8) + 104))(v2, v7, v8);
  sub_1C440BAA8(v2, 0, 1, v8);
  sub_1C4EFB4F8();

  sub_1C4423A0C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDB8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  return sub_1C4423A0C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
}

uint64_t sub_1C49A4588()
{
  v1 = sub_1C4EFB0B8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C4EFBF68();
  if (!v0)
  {
    v6[1] = MEMORY[0x1E69E7CC0];
    sub_1C44FAF64(&unk_1EDDFCD18, MEMORY[0x1E699FE00], MEMORY[0x1E699FE08]);
    sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
    sub_1C4829BD0();
    sub_1C4F020C8();
    sub_1C4EFBFC8();
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_1C49A4740()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v10 - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  sub_1C4EFBDD8();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4423A0C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4423A0C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDB8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4423A0C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = *MEMORY[0x1E69A00D0];
  v8 = sub_1C4EFBF38();
  (*(*(v8 - 8) + 104))(v2, v7, v8);
  sub_1C440BAA8(v2, 0, 1, v8);
  sub_1C4EFB478();
  return sub_1C4423A0C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

unint64_t sub_1C49A4994()
{
  sub_1C4F02248();

  v0 = sub_1C4EF98E8();
  MEMORY[0x1C6940010](v0);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t sub_1C49A4A54()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_url;
  v2 = sub_1C4EF98F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_config);

  return v0;
}

uint64_t sub_1C49A4AD4()
{
  sub_1C49A4A54();

  return swift_deallocClassInstance();
}

uint64_t sub_1C49A4B34(uint64_t a1)
{
  result = sub_1C4EF98F8();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Configuration(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C49A4C30()
{
  if (qword_1EDDFF230 != -1)
  {
    swift_once();
  }
}

void *sub_1C49A4CB8(uint64_t a1)
{
  v2 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C44098F0(a1, v4);
  sub_1C4419BC4();
  return sub_1C49A4E54(v4, v5, v6);
}

double sub_1C49A4D58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  sub_1C44098F0(a1, &v14 - v8);
  sub_1C44098F0(v9, v6);
  sub_1C4419BC4();
  sub_1C49A4F58(v6, v10, v11, 0xD00000000000001ELL, 0x80000001C4FAB720, 0, 1, v15);
  sub_1C4467948(v9);
  result = *v15;
  v13 = v15[1];
  *a2 = v15[0];
  *(a2 + 16) = v13;
  *(a2 + 32) = v16;
  return result;
}

void *sub_1C49A4E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C44098F0(a1, v8);
  type metadata accessor for KeyValueStore(0);
  swift_allocObject();
  v9 = KeyValueStore.init(config:domain:)(v8, a2, a3);
  sub_1C4467948(a1);
  return v9;
}

uint64_t sub_1C49A4F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C44098F0(a1, v18);
  type metadata accessor for KeyValueStore(0);
  swift_allocObject();
  v19 = KeyValueStore.init(config:domain:)(v18, a2, a3);
  result = sub_1C4467948(a1);
  *a8 = v19;
  *(a8 + 8) = a4;
  *(a8 + 16) = a5;
  *(a8 + 24) = a6;
  *(a8 + 32) = a7 & 1;
  return result;
}

uint64_t KeyValueStore.fetch<A>(key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  v6[6] = a1;
  v6[7] = a2;
  sub_1C4F01F48();

  sub_1C4777004(sub_1C49A6BEC, v6);
}

uint64_t KeyValueStore.__allocating_init(config:domain:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  KeyValueStore.init(config:domain:)(a1, a2, a3);
  return v6;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> KeyValueStore.delete(key:)(Swift::String key)
{

  v1 = sub_1C445AD5C();

  return v1 & 1;
}

uint64_t KeyValueStore.keys()()
{

  v1 = sub_1C443D764(sub_1C49A8C10, v0, sub_1C47D1EDC);

  return v1;
}

uint64_t sub_1C49A5870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v36 = a1;
  v30 = a3;
  v31 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v4 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v6 = &v29 - v5;
  v7 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = sub_1C456902C(&qword_1EC0BD3F0, &qword_1C4F2DBC8);
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  sub_1C4EFBD18();
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v13 = sub_1C4EFBD38();
  v14 = sub_1C442B738(v13, qword_1EDE2E068);
  v38[3] = v13;
  v38[4] = MEMORY[0x1E69A0050];
  v15 = sub_1C4422F90(v38);
  v16 = *(*(v13 - 8) + 16);
  v16(v15, v14, v13);
  v17 = *(a2 + 16);
  v18 = *(a2 + 24);
  v37[3] = MEMORY[0x1E69E6158];
  v37[4] = MEMORY[0x1E69A0130];
  v37[0] = v17;
  v37[1] = v18;
  v39[3] = sub_1C4EFB298();
  v39[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v39);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4423A0C(v37, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v38);
  v19 = v31;
  sub_1C4EFBCD8();
  (*(v4 + 8))(v6, v19);
  sub_1C440962C(v39);
  sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C4F0D130;
  if (qword_1EDDFE100 != -1)
  {
    swift_once();
  }

  v21 = sub_1C442B738(v13, qword_1EDE2DF28);
  v22 = MEMORY[0x1E69A0038];
  *(v20 + 56) = v13;
  *(v20 + 64) = v22;
  v23 = sub_1C4422F90((v20 + 32));
  v16(v23, v21, v13);
  v24 = v33;
  sub_1C4EFB878();

  (*(v32 + 8))(v9, v24);
  sub_1C4401CBC(&qword_1EDDFCCF0, &qword_1EC0BD3F0, &qword_1C4F2DBC8, MEMORY[0x1E699FF60]);
  v25 = v35;
  v26 = v39[7];
  v27 = sub_1C4EFB008();
  result = (*(v34 + 8))(v12, v25);
  if (!v26)
  {
    *v30 = v27;
  }

  return result;
}

uint64_t KeyValueStore.store<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a1;

  sub_1C4418704(sub_1C49A8C2C, v11, v4, v5, v6, v7, v8, v9, v11[0], v11[1]);
}

{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  swift_getTupleTypeMetadata2();
  sub_1C4F00FA8();
  swift_getWitnessTable();
  v7 = sub_1C4F017B8();
  KeyValueStore.store<A>(_:)(v7, a2, a3, a4);
}

uint64_t sub_1C49A5D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a6;
  v65 = a3;
  v53 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v58 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v49 - v12);
  v50 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v49 - v16);
  v73 = sub_1C4F01688();
  v57 = OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_encoder;
  v64 = a4;
  v55 = a4 - 8;
  v54 = v9;
  v59 = (v9 + 8);
  v56 = (v9 + 16);
  v18 = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v52 = a2;
  v63 = TupleTypeMetadata2;
  v51 = v17;
  v62 = v13;
  while (1)
  {
    result = sub_1C4F01758();
    v20 = v73;
    if (v73 == result)
    {
      return result;
    }

    v21 = sub_1C4F01738();
    sub_1C4F016B8();
    v66 = v18;
    if (v21)
    {
      v22 = a2 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v20;
      v67 = *(v54 + 16);
      v67(v17, v22, TupleTypeMetadata2);
      goto LABEL_5;
    }

    result = sub_1C4F02298();
    if (v50 != 8)
    {
      break;
    }

    v69[0] = result;
    v67 = *v56;
    v67(v17, v69, TupleTypeMetadata2);
    swift_unknownObjectRelease();
LABEL_5:
    sub_1C4F01788();
    v23 = v17[1];
    v24 = *(TupleTypeMetadata2 + 48);
    *v13 = *v17;
    v13[1] = v23;
    v25 = v64;
    v26 = *(v64 - 8);
    v27 = *(v26 + 32);
    v27(v13 + v24, v17 + v24, v64);
    v61 = *(v65 + v57);
    sub_1C4470614(v25, v25);
    swift_allocObject();
    v28 = sub_1C4F016A8();
    v29 = v13;
    v31 = v30;
    v32 = v58;
    v67(v58, v29, TupleTypeMetadata2);

    v27(v31, &v32[*(TupleTypeMetadata2 + 48)], v25);
    sub_1C4470680(v28, v25);
    v69[0] = v33;
    sub_1C4F017A8();
    v72 = v60;
    swift_getWitnessTable();
    v34 = v68;
    v35 = sub_1C4EF96D8();
    v68 = v34;
    if (v34)
    {

      return (*v59)(v62, v63);
    }

    v37 = v35;
    v38 = v36;

    v39 = *(v65 + 24);
    v61 = *(v65 + 16);
    v40 = v63;
    v67(v32, v62, v63);
    v41 = *v32;
    v42 = v64;
    v67 = *(v32 + 1);
    v43 = *(v40 + 48);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44344B8(v37, v38);
    (*(v26 + 8))(&v32[v43], v42);
    v69[0] = v61;
    v69[1] = v39;
    v69[2] = v41;
    v69[3] = v67;
    v70 = v37;
    v71 = v38;
    sub_1C446C4A0();
    v44 = v68;
    sub_1C4EFB6C8();
    v68 = v44;
    if (v44)
    {
      sub_1C4434000(v37, v38);
      v47 = v70;
      v48 = v71;

      sub_1C4434000(v47, v48);
      return (*v59)(v62, v63);
    }

    sub_1C4434000(v37, v38);
    v45 = v70;
    v46 = v71;

    sub_1C4434000(v45, v46);
    v13 = v62;
    TupleTypeMetadata2 = v63;
    (*v59)(v62, v63);
    a2 = v52;
    v17 = v51;
    v18 = v66;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall KeyValueStore.copyAllKeyValues(to:clearCurrentDomain:clearNewDomain:)(Swift::String to, Swift::Bool clearCurrentDomain, Swift::Bool clearNewDomain)
{
  v3[16] = clearNewDomain;
  v4 = to;
  v5 = clearCurrentDomain;

  sub_1C44652E0(sub_1C49A8C48, v3, sub_1C4418704);
}

uint64_t sub_1C49A6468(uint64_t a1, char a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v54 = a6;
  v59 = a5;
  v10 = sub_1C4EFB4E8();
  v61 = *(v10 - 8);
  v62 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v49 - v14;
  v16 = sub_1C456902C(&qword_1EC0B8EB0, &unk_1C4F0E910);
  v63 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v60 = &v49 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v49 - v21;
  v23 = MEMORY[0x1E69E6158];
  v64 = a1;
  if ((a2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v24 = a3;
  v25 = a4;
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v26 = sub_1C4EFBD38();
  v27 = sub_1C442B738(v26, qword_1EDE2E068);
  v70 = v26;
  v71 = MEMORY[0x1E69A0050];
  v28 = sub_1C4422F90(v69);
  (*(*(v26 - 8) + 16))(v28, v27, v26);
  v67 = v23;
  v68 = MEMORY[0x1E69A0130];
  v65 = v24;
  v66 = v25;
  a4 = v25;
  v73 = sub_1C4EFB298();
  v74 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v72);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4423A0C(&v65, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v69);
  sub_1C446B728();
  sub_1C4EFAE28();
  sub_1C440962C(v72);
  v29 = v75;
  sub_1C4EFB898();
  result = (*(v63 + 8))(v22, v16);
  if (!v29)
  {
    v75 = 0;
    a3 = v24;
LABEL_6:
    v55 = v12;
    v56 = a3;
    v57 = a4;
    v58 = v16;
    v31 = MEMORY[0x1E69A0050];
    if (qword_1EDDFE0F8 != -1)
    {
      swift_once();
    }

    v32 = sub_1C4EFBD38();
    v33 = sub_1C442B738(v32, qword_1EDE2E068);
    v70 = v32;
    v71 = v31;
    v34 = sub_1C4422F90(v69);
    v35 = *(v32 - 8);
    v52 = *(v35 + 16);
    v51 = v35 + 16;
    v52(v34, v33, v32);
    v36 = *(v59 + 16);
    v37 = *(v59 + 24);
    v38 = MEMORY[0x1E69E6158];
    v67 = MEMORY[0x1E69E6158];
    v39 = MEMORY[0x1E69A0130];
    v68 = MEMORY[0x1E69A0130];
    v59 = v36;
    v65 = v36;
    v66 = v37;
    v50 = sub_1C4EFB298();
    v73 = v50;
    v74 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v72);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFBB28();
    sub_1C4423A0C(&v65, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v69);
    v40 = sub_1C446B728();
    v41 = v60;
    sub_1C4EFAE28();
    sub_1C440962C(v72);
    v42 = sub_1C4EFBF38();
    sub_1C440BAA8(v15, 1, 1, v42);
    v73 = v38;
    v74 = v39;
    v72[0] = v56;
    v72[1] = v57;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v43 = v55;
    v57 = v33;
    sub_1C4EFB568();
    sub_1C4423A0C(v72, &qword_1EC0C5040, &qword_1C4F0F950);
    v44 = v58;
    v45 = v75;
    sub_1C4EFB8B8();
    if (v45)
    {
      (*(v61 + 8))(v43, v62);
      sub_1C4423A0C(v15, &unk_1EC0BCAB0, &unk_1C4F111A0);
      return (*(v63 + 8))(v41, v44);
    }

    else
    {
      v56 = v40;
      v75 = 0;
      (*(v61 + 8))(v43, v62);
      sub_1C4423A0C(v15, &unk_1EC0BCAB0, &unk_1C4F111A0);
      v46 = *(v63 + 8);
      result = v46(v41, v44);
      if (v54)
      {
        v70 = v32;
        v71 = MEMORY[0x1E69A0050];
        v47 = sub_1C4422F90(v69);
        v52(v47, v57, v32);
        v67 = MEMORY[0x1E69E6158];
        v68 = MEMORY[0x1E69A0130];
        v65 = v59;
        v66 = v37;
        v73 = v50;
        v74 = MEMORY[0x1E699FE60];
        sub_1C4422F90(v72);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EFBB28();
        sub_1C4423A0C(&v65, &qword_1EC0C5040, &qword_1C4F0F950);
        sub_1C440962C(v69);
        v48 = v53;
        sub_1C4EFAE28();
        sub_1C440962C(v72);
        sub_1C4EFB898();
        return v46(v48, v44);
      }
    }
  }

  return result;
}

void sub_1C49A6C1C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a5;
  v46 = a3;
  v45 = a2;
  v43 = a1;
  v39 = a6;
  v42 = a4;
  v37 = sub_1C4F01F48();
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v35 - v7;
  v8 = sub_1C456902C(&qword_1EC0B8EB0, &unk_1C4F0E910);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v15 = sub_1C4EFBD38();
  v16 = sub_1C442B738(v15, qword_1EDE2E068);
  v52 = v15;
  v53 = MEMORY[0x1E69A0050];
  v17 = sub_1C4422F90(v51);
  v18 = *(*(v15 - 8) + 16);
  v18(v17, v16, v15);
  v40 = v6;
  v19 = *(v6 + 16);
  v20 = *(v6 + 24);
  v49 = MEMORY[0x1E69E6158];
  v50 = MEMORY[0x1E69A0130];
  v47 = v19;
  v48 = v20;
  v21 = sub_1C4EFB298();
  v55 = v21;
  v56 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v54);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4423A0C(&v47, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v51);
  sub_1C446B728();
  sub_1C4EFAE28();
  sub_1C440962C(v54);
  if (qword_1EDDFE100 != -1)
  {
    swift_once();
  }

  v22 = sub_1C442B738(v15, qword_1EDE2DF28);
  v52 = v15;
  v53 = MEMORY[0x1E69A0050];
  v23 = sub_1C4422F90(v51);
  v18(v23, v22, v15);
  v49 = MEMORY[0x1E69E6158];
  v50 = MEMORY[0x1E69A0130];
  v47 = v45;
  v48 = v46;
  v55 = v21;
  v56 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v54);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4423A0C(&v47, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v51);
  sub_1C4401CBC(&qword_1EDDFE858, &qword_1EC0B8EB0, &unk_1C4F0E910, MEMORY[0x1E699FF70]);
  sub_1C4EFB438();
  v24 = *(v9 + 8);
  v24(v11, v8);
  sub_1C440962C(v54);
  sub_1C4401CBC(&unk_1EDDFE860, &qword_1EC0B8EB0, &unk_1C4F0E910, MEMORY[0x1E699FF60]);
  sub_1C446B794();
  v25 = v44;
  sub_1C4EFAFF8();
  v24(v14, v8);
  if (!v25)
  {
    v26 = v58;
    if (v58)
    {
      v44 = v57;
      v28 = v59;
      v27 = v60;
      v29 = v61;
      v30 = v62;
      v31 = v42;
      sub_1C4F017A8();
      v63 = v41;
      swift_getWitnessTable();
      sub_1C4EF9698();
      v43 = v28;
      v41 = v57;
      swift_getWitnessTable();
      v34 = v38;
      sub_1C4F01BC8();
      if (sub_1C44157D4(v34, 1, v31) == 1)
      {
        (*(v36 + 8))(v34, v37);
        v57 = 0;
        v58 = 0xE000000000000000;
        sub_1C4F02248();

        v57 = 0xD00000000000002FLL;
        v58 = 0x80000001C4F8A7E0;
        MEMORY[0x1C6940010](v45, v46);
        sub_1C4F024A8();
        __break(1u);
        return;
      }

      sub_1C4470E30(v44, v26, v43, v27, v29, v30);
      v33 = v39;
      (*(*(v31 - 8) + 32))(v39, v34, v31);

      v32 = 0;
    }

    else
    {
      v32 = 1;
      v31 = v42;
      v33 = v39;
    }

    sub_1C440BAA8(v33, v32, 1, v31);
  }
}

uint64_t KeyValueStore.fetch<A>(keys:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a4;
  v6[5] = a1;
  sub_1C4F00FA8();

  sub_1C4777004(sub_1C49A8C70, v6);

  if (!v4)
  {
    return v6[9];
  }

  return result;
}

uint64_t sub_1C49A740C@<X0>(uint64_t *a7@<X8>)
{
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  swift_getTupleTypeMetadata2();
  sub_1C4401CBC(&qword_1EDDFCEC0, &unk_1EC0B9620, &unk_1C4F0E870, MEMORY[0x1E69E6328]);
  result = sub_1C4F014E8();
  if (!v7)
  {
    sub_1C4F017A8();
    swift_getWitnessTable();
    result = sub_1C4F00F38();
    *a7 = result;
  }

  return result;
}

void sub_1C49A7560(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v28 = a4;
  v29 = a5;
  v27 = a6;
  v9 = sub_1C4F01F48();
  v26 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v16 = a1[1];
  v18 = v30;
  sub_1C49A6C1C(a2, v17, v16, a3, v28, v11);
  if (!v18)
  {
    v19 = v26;
    if (sub_1C44157D4(v11, 1, a3) == 1)
    {
      (*(v19 + 8))(v11, v9);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1C440BAA8(v27, 1, 1, TupleTypeMetadata2);
    }

    else
    {
      v21 = *(v12 + 32);
      v21(v15, v11, a3);
      v22 = v21;
      v23 = swift_getTupleTypeMetadata2();
      v24 = *(v23 + 48);
      v25 = v27;
      *v27 = v17;
      v25[1] = v16;
      v22(v25 + v24, v15, a3);
      sub_1C440BAA8(v25, 0, 1, v23);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

uint64_t sub_1C49A77C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, BOOL *a5@<X8>)
{
  v28 = a3;
  v29 = a4;
  v30 = a1;
  v27 = a5;
  v6 = sub_1C456902C(&qword_1EC0B8EB0, &unk_1C4F0E910);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v13 = sub_1C4EFBD38();
  v14 = sub_1C442B738(v13, qword_1EDE2E068);
  v36 = v13;
  v37 = MEMORY[0x1E69A0050];
  v15 = sub_1C4422F90(v35);
  v16 = *(*(v13 - 8) + 16);
  v16(v15, v14, v13);
  v17 = *(a2 + 16);
  v18 = *(a2 + 24);
  v33 = MEMORY[0x1E69E6158];
  v34 = MEMORY[0x1E69A0130];
  v31 = v17;
  v32 = v18;
  v19 = sub_1C4EFB298();
  v39 = v19;
  v40 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v38);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4423A0C(&v31, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v35);
  sub_1C446B728();
  sub_1C4EFAE28();
  sub_1C440962C(v38);
  if (qword_1EDDFE100 != -1)
  {
    swift_once();
  }

  v20 = sub_1C442B738(v13, qword_1EDE2DF28);
  v36 = v13;
  v37 = MEMORY[0x1E69A0050];
  v21 = sub_1C4422F90(v35);
  v16(v21, v20, v13);
  v33 = MEMORY[0x1E69E6158];
  v34 = MEMORY[0x1E69A0130];
  v31 = v28;
  v32 = v29;
  v39 = v19;
  v40 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v38);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4423A0C(&v31, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v35);
  sub_1C4401CBC(&qword_1EDDFE858, &qword_1EC0B8EB0, &unk_1C4F0E910, MEMORY[0x1E699FF70]);
  sub_1C4EFB438();
  v22 = *(v7 + 8);
  v22(v9, v6);
  sub_1C440962C(v38);
  v23 = v41;
  v24 = sub_1C4EFB898();
  result = (v22)(v12, v6);
  if (!v23)
  {
    *v27 = v24 == 1;
  }

  return result;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> KeyValueStore.delete(keys:)(Swift::OpaquePointer keys)
{
  v3[3] = keys._rawValue;

  v1 = sub_1C443D764(sub_1C49A8C8C, v3, sub_1C443D814);

  return v1;
}

uint64_t sub_1C49A7C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v26 = a3;
  v27 = a1;
  v25 = a4;
  v5 = sub_1C456902C(&qword_1EC0B8EB0, &unk_1C4F0E910);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v12 = sub_1C4EFBD38();
  v13 = sub_1C442B738(v12, qword_1EDE2E068);
  v30 = v12;
  v31 = MEMORY[0x1E69A0050];
  v14 = sub_1C4422F90(v29);
  v15 = *(*(v12 - 8) + 16);
  v15(v14, v13, v12);
  v16 = *(a2 + 16);
  v17 = *(a2 + 24);
  v28[3] = MEMORY[0x1E69E6158];
  v28[4] = MEMORY[0x1E69A0130];
  v28[0] = v16;
  v28[1] = v17;
  v18 = sub_1C4EFB298();
  v33 = v18;
  v34 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v32);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4423A0C(v28, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v29);
  sub_1C446B728();
  sub_1C4EFAE28();
  sub_1C440962C(v32);
  v28[0] = v26;
  if (qword_1EDDFE100 != -1)
  {
    swift_once();
  }

  v19 = sub_1C442B738(v12, qword_1EDE2DF28);
  v30 = v12;
  v31 = MEMORY[0x1E69A0050];
  v20 = sub_1C4422F90(v29);
  v15(v20, v19, v12);
  v33 = v18;
  v34 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v32);
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4401CBC(&qword_1EDDFCEC0, &unk_1EC0B9620, &unk_1C4F0E870, MEMORY[0x1E69E6328]);
  sub_1C4F01458();
  sub_1C440962C(v29);
  sub_1C4401CBC(&qword_1EDDFE858, &qword_1EC0B8EB0, &unk_1C4F0E910, MEMORY[0x1E699FF70]);
  sub_1C4EFB438();
  v21 = *(v6 + 8);
  v21(v8, v5);
  sub_1C440962C(v32);
  v22 = v35;
  v23 = sub_1C4EFB898();
  result = (v21)(v11, v5);
  if (!v22)
  {
    *v25 = v23;
  }

  return result;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> KeyValueStore.clear()()
{

  v1 = sub_1C443D764(sub_1C49A8CA8, v0, sub_1C443D814);

  return v1;
}

uint64_t sub_1C49A8090@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1C456902C(&qword_1EC0B8EB0, &unk_1C4F0E910);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18[-1] - v8;
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1C4EFBD38();
  v11 = sub_1C442B738(v10, qword_1EDE2E068);
  v19[3] = v10;
  v19[4] = MEMORY[0x1E69A0050];
  v12 = sub_1C4422F90(v19);
  (*(*(v10 - 8) + 16))(v12, v11, v10);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v18[3] = MEMORY[0x1E69E6158];
  v18[4] = MEMORY[0x1E69A0130];
  v18[0] = v13;
  v18[1] = v14;
  v20[3] = sub_1C4EFB298();
  v20[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v20);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4423A0C(v18, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v19);
  sub_1C446B728();
  sub_1C4EFAE28();
  sub_1C440962C(v20);
  v15 = sub_1C4EFB898();
  result = (*(v7 + 8))(v9, v6);
  if (!v3)
  {
    *a3 = v15;
  }

  return result;
}

uint64_t sub_1C49A82D0()
{
  v6 = 0;
  v5[2] = &v6;

  sub_1C44652E0(sub_1C49A8DE0, v5, sub_1C446572C);

  sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0x736E69616D6F44;
  *(inited + 40) = 0xE700000000000000;
  v1 = v6;
  *(inited + 72) = sub_1C456902C(&qword_1EC0B97F8, &unk_1C4F3FA10);
  v2 = MEMORY[0x1E69E7CC8];
  if (v1)
  {
    v2 = v1;
  }

  *(inited + 48) = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v3 = sub_1C4F00F28();

  return v3;
}

uint64_t sub_1C49A8410(unint64_t a1, uint64_t *a2)
{
  v51 = a1;
  v47 = a2;
  v2 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v48 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v46 - v3;
  v5 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  v50 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v46 - v9;
  if (qword_1EDDFE0F8 != -1)
  {
LABEL_30:
    swift_once();
  }

  v10 = sub_1C4EFBD38();
  v11 = sub_1C442B738(v10, qword_1EDE2E068);
  sub_1C4EFBD18();
  sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C4F0CE60;
  v13 = MEMORY[0x1E69A0038];
  *(v12 + 56) = v10;
  *(v12 + 64) = v13;
  v14 = sub_1C4422F90((v12 + 32));
  v15 = *(*(v10 - 8) + 16);
  v15(v14, v11, v10);
  v53[3] = v10;
  v53[4] = MEMORY[0x1E69A0050];
  v16 = sub_1C4422F90(v53);
  v15(v16, v11, v10);
  v17 = sub_1C4EFB298();
  v18 = MEMORY[0x1E699FE50];
  *(v12 + 96) = v17;
  *(v12 + 104) = v18;
  sub_1C4422F90((v12 + 72));
  sub_1C4EFBD28();
  sub_1C440962C(v53);
  sub_1C4EFBCF8();

  (*(v48 + 8))(v4, v2);
  sub_1C456902C(&qword_1EC0BE5D8, &qword_1C4F376E0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C4F0D130;
  v20 = MEMORY[0x1E69A0040];
  *(v19 + 56) = v10;
  *(v19 + 64) = v20;
  v21 = sub_1C4422F90((v19 + 32));
  v15(v21, v11, v10);
  sub_1C4401CBC(&qword_1EDDFA270, &qword_1EC0B9AC8, &unk_1C4F10E00, MEMORY[0x1E699FF58]);
  v2 = v49;
  sub_1C4EFB6E8();

  v22 = *(v50 + 8);
  v22(v7, v5);
  sub_1C4401CBC(&qword_1EDDFE850, &qword_1EC0B9AC8, &unk_1C4F10E00, MEMORY[0x1E699FF60]);
  v23 = v52;
  v24 = sub_1C4EFB038();
  result = (v22)(v2, v5);
  if (!v23)
  {
    v26 = sub_1C4428DA0(v24);
    if (v26)
    {
      v5 = v26;
      v52 = 0;
      v54 = MEMORY[0x1E69E7CC0];
      v4 = &v54;
      v27 = sub_1C459E6D0(0, v26 & ~(v26 >> 63), 0);
      if ((v5 & 0x8000000000000000) == 0)
      {
        v28 = 0;
        v7 = v54;
        v50 = v24;
        v51 = v24 & 0xC000000000000001;
        v48 = v24 & 0xFFFFFFFFFFFFFF8;
        v49 = v5;
        while (1)
        {
          v29 = (v28 + 1);
          if (__OFADD__(v28, 1))
          {
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          if (v51)
          {
            v4 = MEMORY[0x1C6940F90](v28, v24);
          }

          else
          {
            if (v28 >= *(v48 + 16))
            {
              goto LABEL_29;
            }

            v4 = *(v24 + 8 * v28 + 32);
          }

          sub_1C4EFBBA8();
          v30 = sub_1C4EFBBE8();
          if (v30)
          {
            MEMORY[0x1EEE9AC00](v30);
            v2 = &v46 - 4;
            *(&v46 - 2) = v4;
            *(&v46 - 1) = 0;
            v27 = sqlite3_column_type(v31, 0);
            if (v27 == 5)
            {
              goto LABEL_32;
            }

            v32 = sub_1C4F011E8();
            v34 = v33;
          }

          else
          {
            v35 = v52;
            sub_1C4EFBB98();
            v52 = v35;
            if (v35)
            {
              goto LABEL_34;
            }

            v32 = v53[0];
            v34 = v53[1];
          }

          sub_1C4EFBBA8();
          v36 = sub_1C4EFBBE8();
          if (v36)
          {
            MEMORY[0x1EEE9AC00](v36);
            *(&v46 - 2) = v4;
            *(&v46 - 1) = 1;
            v38 = sqlite3_column_type(v37, 1);
            if (v38 == 5)
            {
              MEMORY[0x1EEE9AC00](v38);
              *(&v46 - 2) = sub_1C487BDA4;
              *(&v46 - 1) = (&v46 - 4);
              v45 = v52;
              sub_1C4EFB968();
              v52 = v45;
              goto LABEL_34;
            }

            v5 = sub_1C4F02AA8();
          }

          else
          {
            v39 = v52;
            sub_1C4EFBB98();
            v52 = v39;
            if (v39)
            {
              goto LABEL_34;
            }

            v5 = v53[0];
          }

          v54 = v7;
          v41 = *(v7 + 2);
          v40 = *(v7 + 3);
          v2 = (v41 + 1);
          if (v41 >= v40 >> 1)
          {
            v4 = &v54;
            sub_1C459E6D0((v40 > 1), v41 + 1, 1);
            v7 = v54;
          }

          *(v7 + 2) = v2;
          v42 = &v7[24 * v41];
          *(v42 + 4) = v32;
          *(v42 + 5) = v34;
          *(v42 + 6) = v5;
          ++v28;
          v24 = v50;
          if (v29 == v49)
          {

            goto LABEL_26;
          }
        }
      }

      __break(1u);
LABEL_32:
      MEMORY[0x1EEE9AC00](v27);
      *(&v46 - 2) = sub_1C487BF24;
      *(&v46 - 1) = v2;
      v44 = v52;
      sub_1C4EFB968();
      v52 = v44;
LABEL_34:
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {

      v7 = MEMORY[0x1E69E7CC0];
LABEL_26:
      v43 = sub_1C4BA04F4(v7);
      *v47 = v43;
    }
  }

  return result;
}

uint64_t sub_1C49A8CD8(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
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

uint64_t sub_1C49A8E1C(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = sub_1C4EFBD38();
  sub_1C44F9918(v4, a2);
  sub_1C442B738(v4, a2);
  sub_1C446C744();
  return sub_1C4EFBD58();
}

_BYTE *storeEnumTagSinglePayload for KeyValuePair.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C49A8F84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7955819 && a2 == 0xE300000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C49A908C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C49A8F84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C49A90B4(uint64_t a1)
{
  v2 = sub_1C446C744();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C49A90F0(uint64_t a1)
{
  v2 = sub_1C446C744();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C49A912C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C446C4A0();

  return sub_1C4EFB6D8();
}

unint64_t sub_1C49A9224()
{
  result = qword_1EDDFE0E0;
  if (!qword_1EDDFE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE0E0);
  }

  return result;
}

unint64_t sub_1C49A9280()
{
  result = qword_1EC0C09E0;
  if (!qword_1EC0C09E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C09E0);
  }

  return result;
}

unint64_t sub_1C49A92D8()
{
  result = qword_1EDDFC180;
  if (!qword_1EDDFC180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC180);
  }

  return result;
}

unint64_t sub_1C49A9330()
{
  result = qword_1EDDFE108;
  if (!qword_1EDDFE108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE108);
  }

  return result;
}

unint64_t sub_1C49A9388()
{
  result = qword_1EDDFE110;
  if (!qword_1EDDFE110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE110);
  }

  return result;
}

uint64_t KnosisServer.init(config:platformConfig:)(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v4 = sub_1C4EFDBB8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = sub_1C4EFDB38();
  sub_1C43FCDF8();
  v30 = v16;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBD08();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v28 - v22;
  sub_1C44098F0(a2, v14);
  sub_1C49A9674(v14, 0, v23);
  if (v2)
  {
    sub_1C4467948(a2);
    (*(v6 + 8))(v31, v4);
  }

  else
  {
    v29 = a2;
    v24 = v31;
    (*(v6 + 16))(v10, v31, v4);
    (*(v30 + 16))(v20, v23, v15);
    a2 = sub_1C4EFDC48();
    sub_1C4467948(v29);
    (*(v6 + 8))(v24, v4);
    v26 = sub_1C440ADD8();
    v27(v26);
  }

  return a2;
}

uint64_t sub_1C49A9674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1C43FBD08();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v58 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  if (Configuration.isGlobalKnowledgeServiceEnabled.getter())
  {
    type metadata accessor for GlobalKnowledgeStore(0);
    sub_1C44098F0(a1, v16);
    v17 = sub_1C48300AC(v16);
    if (v3)
    {
      sub_1C4467948(a1);
    }

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  sub_1C44098F0(a1, v13);
  v19 = type metadata accessor for GraphStore(0);
  swift_allocObject();

  v20 = GraphStore.init(config:)(v13);
  if (v3)
  {
    sub_1C4467948(a1);
  }

  v69 = v18;
  v70 = a2;
  v61 = a3;
  v72 = v19;
  v73 = &off_1EDDED0E8;
  *&v71 = v20;
  sub_1C441D670(&v71, v74);
  sub_1C456902C(&qword_1EC0C09F8, &qword_1C4F3FDC0);
  v22 = sub_1C456902C(&qword_1EC0B9B18, &unk_1C4F10E90);
  v23 = *(v22 - 8);
  v65 = v10;
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C4F0F820;
  v68 = v26;
  v27 = v26 + v25;
  v28 = v26 + v25 + *(v22 + 48);
  v29 = *MEMORY[0x1E69A9790];
  v30 = sub_1C4EFEFB8();
  v63 = *(v30 - 8);
  v75 = a1;
  v31 = *(v63 + 104);
  (v31)(v27, v29, v30);
  *(v28 + 24) = &type metadata for TriplesIndexHandler;
  v32 = sub_1C49A9F34();
  *(v28 + 32) = v32;
  sub_1C44006A8();
  v33 = swift_allocObject();
  sub_1C4411FB4(v33);
  v34 = v27 + v24 + *(v22 + 48);
  v62 = v27 + v24;
  v31();
  *(v34 + 24) = &type metadata for TriplesIndexHandler;
  *(v34 + 32) = v32;
  sub_1C44006A8();
  v35 = swift_allocObject();
  sub_1C4411FB4(v35);
  v64 = v22;
  v36 = (v27 + 2 * v24 + *(v22 + 48));
  (v31)(v27 + 2 * v24, *MEMORY[0x1E69A9798], v30);
  v36[3] = &type metadata for TriplesIndexHandler;
  v36[4] = v32;
  v58 = v32;
  sub_1C44006A8();
  v37 = swift_allocObject();
  *v36 = v37;
  sub_1C49A9F88(v74, v37 + 16);
  v60 = v24;
  v66 = v27;
  v38 = v27 + 3 * v24;
  v39 = *MEMORY[0x1E69A97C0];
  v67 = v30;
  v59 = v31;
  (v31)(v38, v39, v30);
  v40 = v65;
  sub_1C44098F0(v75, v65);
  v41 = type metadata accessor for OntologyStore(0);
  swift_allocObject();
  v42 = OntologyStore.init(config:)(v40);
  v43 = v64;
  v44 = (v38 + *(v64 + 48));
  v72 = v41;
  v73 = &off_1EEB2CDE8;
  *&v71 = v42;
  v45 = v58;
  v44[3] = &type metadata for TriplesIndexHandler;
  v44[4] = v45;
  sub_1C44006A8();
  v46 = swift_allocObject();
  *v44 = v46;
  sub_1C441D670(&v71, v46 + 16);
  v47 = v66;
  v48 = v60;
  v49 = (v66 + 4 * v60 + *(v43 + 48));
  v50 = v59;
  v59();
  v49[3] = &type metadata for GlobalKnowledgeIndexHandler;
  v51 = sub_1C49AA0A0();
  v49[4] = v51;
  v52 = v69;
  *v49 = v69;
  v53 = (v47 + 5 * v48 + *(v64 + 48));
  v50();
  v53[3] = &type metadata for GlobalKnowledgeIndexHandler;
  v53[4] = v51;
  *v53 = v52;

  sub_1C456902C(&qword_1EC0C0A00, &qword_1C4F3FDC8);
  sub_1C49AA0F4();
  v54 = sub_1C4F00F28();
  v55 = v70;
  if (v70)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v71 = v54;
    sub_1C49AA1C8(v55, sub_1C49AA14C, 0, isUniquelyReferenced_nonNull_native, &v71);
  }

  v57 = v75;
  sub_1C4EFDB28();

  sub_1C4467948(v57);
  return sub_1C49A9FE4(v74);
}

uint64_t sub_1C49A9CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v34 = a1;
  v4 = sub_1C4EFDBB8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = sub_1C4EFDB38();
  sub_1C43FCDF8();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBD08();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v31 - v23;
  sub_1C44098F0(a2, v14);
  v25 = v33;
  sub_1C49A9674(v14, v32, v24);
  if (v25)
  {
    sub_1C4467948(a2);
    v26 = sub_1C442CD38();
    v27(v26);
  }

  else
  {
    v33 = a2;
    (*(v6 + 16))(v10, v34, v4);
    (*(v17 + 16))(v21, v24, v15);
    v21 = sub_1C4EFDC48();
    sub_1C4467948(v33);
    v29 = sub_1C442CD38();
    v30(v29);
    (*(v17 + 8))(v24, v15);
  }

  return v21;
}

unint64_t sub_1C49A9F34()
{
  result = qword_1EDDE4BA8[0];
  if (!qword_1EDDE4BA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE4BA8);
  }

  return result;
}

uint64_t sub_1C49AA038(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B9B18, &unk_1C4F10E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C49AA0A0()
{
  result = qword_1EDDE0720;
  if (!qword_1EDDE0720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE0720);
  }

  return result;
}

unint64_t sub_1C49AA0F4()
{
  result = qword_1EDDEFF90;
  if (!qword_1EDDEFF90)
  {
    sub_1C4EFEFB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEFF90);
  }

  return result;
}

uint64_t sub_1C49AA14C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_1C456902C(&qword_1EC0B9B08, &qword_1C4F10E80) + 48);
  v5 = a2 + *(sub_1C456902C(&qword_1EC0B9B18, &unk_1C4F10E90) + 48);

  return sub_1C46C3880(a2, v5, a1, a1 + v4);
}

uint64_t sub_1C49AA1C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v44 = sub_1C4EFEFB8();
  v9 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C456902C(&qword_1EC0C0A08, &qword_1C4F3FDD0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v35 - v13;
  sub_1C46C3CC4();
  *&v39[5] = v40;
  *&v39[7] = v41;
  *&v39[9] = v42;
  v39[11] = v43;
  v15 = (v9 + 32);
  v37 = v9;
  v36 = (v9 + 8);
  v35[2] = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v35[1] = a3;

  while (1)
  {
    sub_1C45E7578(v14);
    v16 = sub_1C456902C(&qword_1EC0B9B18, &unk_1C4F10E90);
    if (sub_1C44157D4(v14, 1, v16) == 1)
    {
      sub_1C449BB0C();
    }

    v17 = *(v16 + 48);
    v18 = *v15;
    (*v15)(v11, v14, v44);
    sub_1C441D670(&v14[v17], v39);
    v19 = *a5;
    sub_1C457AFC0();
    v22 = v21;
    v23 = v19[2];
    v24 = (v20 & 1) == 0;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v25 = v20;
    if (v19[3] >= v23 + v24)
    {
      if (a4)
      {
        if (v20)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_1C456902C(&unk_1EC0C0A10, &qword_1C4F3FDD8);
        sub_1C4F02468();
        if (v25)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1C4679D48();
      sub_1C457AFC0();
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_18;
      }

      v22 = v26;
      if (v25)
      {
LABEL_10:
        v28 = *a5;
        sub_1C442E860(v39, v38);
        sub_1C440962C(v39);
        (*v36)(v11, v44);
        v29 = (v28[7] + 40 * v22);
        sub_1C440962C(v29);
        sub_1C441D670(v38, v29);
        goto LABEL_14;
      }
    }

    v30 = *a5;
    *(*a5 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    v18((v30[6] + *(v37 + 72) * v22), v11, v44);
    sub_1C441D670(v39, v30[7] + 40 * v22);
    v31 = v30[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_17;
    }

    v30[2] = v33;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

id sub_1C49AA56C(uint64_t a1, uint64_t a2)
{
  sub_1C44251FC();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C4F01108();

  v4 = [v2 initWithMachServiceName_];

  return v4;
}

uint64_t sub_1C49AA63C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v7 = sub_1C456902C(a2, a3);
  sub_1C44F9918(v7, a4);
  sub_1C43FCEE8(v7, a4);
  v8 = a5(0);

  return sub_1C440BAA8(a4, 1, 1, v8);
}

uint64_t sub_1C49AA6B8()
{
  result = sub_1C49AA6D8();
  qword_1EDE2C930 = result;
  return result;
}

uint64_t sub_1C49AA6D8()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - v4;
  v6 = sub_1C4EFDBB8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = qword_1EC1525D8;
  if (qword_1EC1525D8)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFDBA8();
    if (qword_1EDDDBE00 != -1)
    {
      swift_once();
    }

    v13 = sub_1C442B738(v0, qword_1EDE2C918);
    swift_beginAccess();
    sub_1C4466EEC(v13, v2);
    v14 = type metadata accessor for Configuration(0);
    result = sub_1C44157D4(v2, 1, v14);
    if (result != 1)
    {
      sub_1C4EFDC58();
      return sub_1C49A9CAC(v8, v2, v12);
    }

    __break(1u);
  }

  else
  {
    sub_1C4EFDBA8();
    if (qword_1EDDDBE00 != -1)
    {
      swift_once();
    }

    v16 = sub_1C442B738(v0, qword_1EDE2C918);
    swift_beginAccess();
    sub_1C4466EEC(v16, v5);
    v17 = type metadata accessor for Configuration(0);
    result = sub_1C44157D4(v5, 1, v17);
    if (result != 1)
    {
      sub_1C4EFDC58();
      return KnosisServer.init(config:platformConfig:)(v11, v5);
    }
  }

  __break(1u);
  return result;
}

void sub_1C49AAAC4(void *a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C0A20, &qword_1C4F3FDE0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - v6;
  v8 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v12 = sub_1C4F00978();
  sub_1C442B738(v12, qword_1EDE2DCD8);
  v13 = sub_1C4F00968();
  v14 = sub_1C4F01CF8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = sub_1C43FCED0();
    *v15 = 0;
    _os_log_impl(&dword_1C43F8000, v13, v14, "KnosisXPC: starting...", v15, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDDBE00 != -1)
  {
    sub_1C442CD48(&qword_1EDDDBE00);
  }

  sub_1C43FCEE8(v8, qword_1EDE2C918);
  sub_1C44098F0(a2, v11);
  type metadata accessor for Configuration(0);
  sub_1C43FBD94();
  sub_1C440BAA8(v16, v17, v18, v19);
  sub_1C440076C();
  sub_1C49ADF30(v11, v13, &unk_1EC0B9610, &unk_1C4F0F2E0);
  swift_endAccess();
  if (qword_1EDDDBE18 != -1)
  {
    sub_1C440ADEC(&qword_1EDDDBE18);
  }

  sub_1C43FCEE8(v4, qword_1EDE2C938);
  v20 = sub_1C4EFDBB8();
  sub_1C43FBCE0();
  (*(v21 + 16))(v7, a1, v20);
  sub_1C43FBD94();
  sub_1C440BAA8(v22, v23, v24, v20);
  sub_1C440076C();
  sub_1C49ADF30(v7, v13, &qword_1EC0C0A20, &qword_1C4F3FDE0);
  swift_endAccess();
  sub_1C4461BB8(0, &qword_1EDDFA520, 0x1E696B0D8);
  v25 = sub_1C49AA56C(0xD000000000000025, 0x80000001C4FAB790);
  v26 = qword_1EDE2C900;
  qword_1EDE2C900 = v25;
  v27 = v25;

  if (v27)
  {
    qword_1EDE2C908 = [objc_allocWithZone(type metadata accessor for KnosisXPC.Delegate()) init];
    v28 = qword_1EDE2C908;
    sub_1C44251FC();
    swift_unknownObjectRelease();
    [v27 setDelegate_];

    [v27 resume];
  }

  else
  {
    v27 = sub_1C4F00968();
    v29 = sub_1C4F01CE8();
    if (sub_1C43FCEA4(v29))
    {
      v30 = sub_1C43FCED0();
      sub_1C43FBD24(v30);
      sub_1C44057CC();
      _os_log_impl(v31, v32, v33, v34, v35, 2u);
      sub_1C43FBE2C();
    }
  }
}

void static KnosisXPC.start(knosisConfig:platformConfig:indexHandlers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v5 = sub_1C456902C(&qword_1EC0C0A20, &qword_1C4F3FDE0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - v7;
  v9 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v13 = sub_1C4F00978();
  v14 = sub_1C442B738(v13, qword_1EDE2DCD8);
  v15 = sub_1C4F00968();
  v16 = sub_1C4F01CF8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = sub_1C43FCED0();
    *v17 = 0;
    _os_log_impl(&dword_1C43F8000, v15, v16, "KnosisXPC: starting...", v17, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDDBE00 != -1)
  {
    sub_1C442CD48(&qword_1EDDDBE00);
  }

  sub_1C43FCEE8(v9, qword_1EDE2C918);
  sub_1C44098F0(a2, v12);
  type metadata accessor for Configuration(0);
  sub_1C43FBD94();
  sub_1C440BAA8(v18, v19, v20, v21);
  sub_1C440076C();
  sub_1C49ADF30(v12, v15, &unk_1EC0B9610, &unk_1C4F0F2E0);
  swift_endAccess();
  if (qword_1EDDDBE18 != -1)
  {
    sub_1C440ADEC(&qword_1EDDDBE18);
  }

  sub_1C43FCEE8(v5, qword_1EDE2C938);
  v22 = sub_1C4EFDBB8();
  sub_1C43FBCE0();
  (*(v23 + 16))(v8, v38, v22);
  sub_1C43FBD94();
  sub_1C440BAA8(v24, v25, v26, v22);
  sub_1C440076C();
  sub_1C49ADF30(v8, v15, &qword_1EC0C0A20, &qword_1C4F3FDE0);
  swift_endAccess();
  qword_1EC1525D8 = a3;

  sub_1C4461BB8(0, &qword_1EDDFA520, 0x1E696B0D8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v27 = sub_1C49AA56C(0xD000000000000025, 0x80000001C4FAB790);
  v28 = qword_1EDE2C900;
  qword_1EDE2C900 = v27;
  v29 = v27;

  if (v29)
  {
    qword_1EDE2C908 = [objc_allocWithZone(type metadata accessor for KnosisXPC.Delegate()) init];
    v30 = qword_1EDE2C908;
    sub_1C44251FC();
    swift_unknownObjectRelease();
    [v29 setDelegate_];

    [v29 resume];
  }

  else
  {
    v29 = sub_1C4F00968();
    v31 = sub_1C4F01CE8();
    if (sub_1C43FCEA4(v31))
    {
      v32 = sub_1C43FCED0();
      sub_1C43FBD24(v32);
      sub_1C44057CC();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      sub_1C43FBE2C();
    }
  }
}

id sub_1C49AB1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C44251FC();
  ObjectType = swift_getObjectType();
  v6 = sub_1C4EFF988();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = (v11 - v10);
  v13 = sub_1C4EFF2D8();
  sub_1C43FCDF8();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  *v12 = a2;
  v12[1] = a3;
  (*(v8 + 104))(v12, *MEMORY[0x1E69A9A48], v6);
  sub_1C4598474();
  sub_1C4EFF2C8();
  (*(v15 + 32))(v3 + OBJC_IVAR____TtCC24IntelligencePlatformCore9KnosisXPC6Server_accessConfig, v19, v13);
  v22.receiver = v3;
  v22.super_class = ObjectType;
  return objc_msgSendSuper2(&v22, sel_init);
}

void sub_1C49AB384(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  if (qword_1EDDDBE08 != -1)
  {
    swift_once();
  }

  if (qword_1EDE2C930)
  {
    v5 = qword_1EDE2C930;
    v6 = sub_1C49AE008(a1);
    if (v7)
    {
      v8 = v6;
      v9 = v7;
      if (qword_1EDDFA678 != -1)
      {
        swift_once();
      }

      v10 = sub_1C4F00978();
      sub_1C442B738(v10, qword_1EDE2DCD8);
      v11 = a1;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v12 = sub_1C4F00968();
      v13 = sub_1C4F01CC8();

      if (os_log_type_enabled(v12, v13))
      {
        v38 = v5;
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v39[0] = v16;
        *v14 = 136315650;
        v17 = sub_1C441D828(v8, v9, v39);

        *(v14 + 4) = v17;
        *(v14 + 12) = 2112;
        v18 = [v11 limit];
        *(v14 + 14) = v18;
        *v15 = v18;
        *(v14 + 22) = 2112;
        v19 = [v11 offset];
        *(v14 + 24) = v19;
        v15[1] = v19;
        _os_log_impl(&dword_1C43F8000, v12, v13, "Knosis XPC: Got executeKGQ request kgq:%s, limit:%@, offset:%@", v14, 0x20u);
        sub_1C456902C(&qword_1EC0BDA00, &qword_1C4F10D30);
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v15, -1, -1);
        sub_1C440962C(v16);
        MEMORY[0x1C6942830](v16, -1, -1);
        v20 = v14;
        v5 = v38;
        MEMORY[0x1C6942830](v20, -1, -1);
      }

      else
      {
      }

      v27 = sub_1C4EFDC28();
      v28 = sub_1C4F00968();
      v29 = sub_1C4F01CC8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = v5;
        v31 = swift_slowAlloc();
        *v31 = 134218240;
        v32 = [v27 answers];
        sub_1C4461BB8(0, &unk_1EC0C0A30, 0x1E69A9EB0);
        v33 = sub_1C4F01678();

        v34 = sub_1C4428DA0(v33);

        *(v31 + 4) = v34;

        *(v31 + 12) = 2048;
        v35 = [v27 status];
        sub_1C4F02AF8();
        MEMORY[0x1C69417F0](v35);
        v36 = sub_1C4F02B68();

        *(v31 + 14) = v36;
        _os_log_impl(&dword_1C43F8000, v28, v29, "Knosis XPC: Got executeKGQ result, answersCount:%ld, status:%ld", v31, 0x16u);
        v37 = v31;
        v5 = v30;
        MEMORY[0x1C6942830](v37, -1, -1);
      }

      else
      {

        v28 = v27;
      }

      (a3)[2](a3, v27, 0);
    }

    else
    {
      sub_1C49ADFB4();
      v24 = swift_allocError();
      *v25 = 0xD00000000000002BLL;
      v25[1] = 0x80000001C4FAB7C0;
      v26 = sub_1C4EF9798();
      (a3)[2](a3, 0, v26);
    }
  }

  else
  {
    sub_1C49ADFB4();
    v21 = swift_allocError();
    *v22 = xmmword_1C4F0D7C0;
    v23 = sub_1C4EF9798();
    (a3)[2](a3, 0, v23);
  }

  _Block_release(a3);
}

void KnosisXPC.Server.executeKGQ(_:withCompletion:)(void *a1, void (*a2)(void, void))
{
  if (qword_1EDDDBE08 != -1)
  {
    sub_1C4413408(&qword_1EDDDBE08);
  }

  if (qword_1EDE2C930)
  {
    v34 = qword_1EDE2C930;
    v4 = sub_1C49AE008(a1);
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      if (qword_1EDDFA678 != -1)
      {
        sub_1C43FFCC0(&qword_1EDDFA678);
      }

      v8 = sub_1C4F00978();
      sub_1C442B738(v8, qword_1EDE2DCD8);
      v9 = a1;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v10 = sub_1C4F00968();
      v11 = sub_1C4F01CC8();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = sub_1C43FFD34();
        v32 = a2;
        v13 = swift_slowAlloc();
        v14 = sub_1C43FFD34();
        v35[0] = v14;
        *v12 = 136315650;
        v15 = sub_1C441D828(v6, v7, v35);

        *(v12 + 4) = v15;
        *(v12 + 12) = 2112;
        v16 = [v9 limit];
        *(v12 + 14) = v16;
        *v13 = v16;
        *(v12 + 22) = 2112;
        v17 = [v9 offset];
        *(v12 + 24) = v17;
        v13[1] = v17;
        _os_log_impl(&dword_1C43F8000, v10, v11, "Knosis XPC: Got executeKGQ request kgq:%s, limit:%@, offset:%@", v12, 0x20u);
        sub_1C456902C(&qword_1EC0BDA00, &qword_1C4F10D30);
        swift_arrayDestroy();
        a2 = v32;
        sub_1C43FBE2C();
        sub_1C440962C(v14);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      else
      {
      }

      v23 = sub_1C4EFDC28();
      v24 = sub_1C4F00968();
      v25 = sub_1C4F01CC8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 134218240;
        v27 = [v23 answers];
        sub_1C4461BB8(0, &unk_1EC0C0A30, 0x1E69A9EB0);
        v28 = sub_1C4F01678();

        v29 = sub_1C4428DA0(v28);

        *(v26 + 4) = v29;

        *(v26 + 12) = 2048;
        v30 = [v23 status];
        sub_1C4F02AF8();
        MEMORY[0x1C69417F0](v30);
        v31 = sub_1C4F02B68();

        *(v26 + 14) = v31;
        _os_log_impl(&dword_1C43F8000, v24, v25, "Knosis XPC: Got executeKGQ result, answersCount:%ld, status:%ld", v26, 0x16u);
        sub_1C43FBE2C();
      }

      else
      {

        v24 = v23;
      }

      v33 = v23;
      a2(v23, 0);

      v20 = v33;
    }

    else
    {
      sub_1C49ADFB4();
      v21 = swift_allocError();
      *v22 = 0xD00000000000002BLL;
      v22[1] = 0x80000001C4FAB7C0;
      a2(0, v21);

      v20 = v34;
    }
  }

  else
  {
    sub_1C49ADFB4();
    v18 = swift_allocError();
    *v19 = xmmword_1C4F0D7C0;
    a2(0, v18);
    v20 = v18;
  }
}

void sub_1C49ABD30(void *a1, uint64_t *a2, void (**a3)(void, void, void *))
{
  v75 = a3;
  v83 = sub_1C4EFE0B8();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1C4F002A8();
  v7 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v90 = &v71 - v10;
  if (qword_1EDDDBE08 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    if (!qword_1EDE2C930)
    {
      sub_1C49ADFB4();
      v43 = swift_allocError();
      *v44 = xmmword_1C4F0D7C0;
      v45 = sub_1C4EF9798();
      v46 = v75;
      v75[2](v75, 0, v45);

      _Block_release(v46);
      return;
    }

    v74 = qword_1EDE2C930;
    v11 = sub_1C49AE06C(a1);
    v73 = a2;
    v72 = a1;
    if (!v11)
    {
      goto LABEL_37;
    }

    v12 = v11;
    v81 = sub_1C4428DA0(v11);
    if (!v81)
    {
      break;
    }

    v13 = 0;
    v80 = v12 & 0xC000000000000001;
    v76 = v12 + 32;
    v89 = (v7 + 8);
    v77 = v82 + 32;
    v14 = MEMORY[0x1E69E7CC0];
    v79 = v6;
    v78 = v12;
    while (1)
    {
      v7 = v80;
      sub_1C4431590(v13, v80 == 0, v12);
      v15 = v7 ? MEMORY[0x1C6940F90](v13, v12) : *(v76 + 8 * v13);
      a1 = v15;
      v16 = __OFADD__(v13, 1);
      v17 = v13 + 1;
      if (v16)
      {
        break;
      }

      v86 = v17;
      v96[0] = MEMORY[0x1E69E7CD0];
      a2 = [v15 args];
      v6 = sub_1C4461BB8(0, &qword_1EC0C0A40, 0x1E69A9EB8);
      sub_1C49AE0DC();
      v18 = sub_1C4F01AB8();

      v87 = v14;
      v85 = a1;
      v88 = v6;
      if ((v18 & 0xC000000000000001) != 0)
      {
        sub_1C4F02118();
        sub_1C4F01B08();
        v18 = v96[9];
        a1 = v96[10];
        v19 = v96[11];
        v20 = v96[12];
        v7 = v96[13];
      }

      else
      {
        v20 = 0;
        v21 = -1 << *(v18 + 32);
        a1 = (v18 + 56);
        v19 = ~v21;
        v22 = -v21;
        if (v22 < 64)
        {
          v23 = ~(-1 << v22);
        }

        else
        {
          v23 = -1;
        }

        v7 = v23 & *(v18 + 56);
      }

      v84 = v19;
      v24 = (v19 + 64) >> 6;
      if (v18 < 0)
      {
        goto LABEL_23;
      }

      while (1)
      {
        v25 = v20;
        v26 = v7;
        v27 = v20;
        if (!v7)
        {
          while (1)
          {
            v27 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v27 >= v24)
            {
              goto LABEL_27;
            }

            v26 = *(a1 + v27);
            ++v25;
            if (v26)
            {
              goto LABEL_21;
            }
          }

          __break(1u);
          goto LABEL_46;
        }

LABEL_21:
        v28 = (v26 - 1) & v26;
        v6 = *(*(v18 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));
        if (!v6)
        {
          break;
        }

        while (1)
        {
          v30 = [v6 arg];
          sub_1C4F01138();
          v93 = v28;
          v31 = a1;

          v32 = [v6 value];
          sub_1C4F01138();

          sub_1C4F00298();
          a2 = v96;
          v33 = v90;
          sub_1C483C44C();

          v34 = v33;
          a1 = v31;
          (*v89)(v34, v92);
          v20 = v27;
          v7 = v93;
          if ((v18 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_23:
          v29 = sub_1C4F02148();
          if (v29)
          {
            v94 = v29;
            swift_dynamicCast();
            v6 = v95;
            v27 = v20;
            v28 = v7;
            if (v95)
            {
              continue;
            }
          }

          goto LABEL_27;
        }
      }

LABEL_27:
      sub_1C449BB0C();
      v35 = v85;
      v36 = [v85 intent];
      sub_1C4F01138();
      v6 = v37;

      v38 = [v35 score];
      sub_1C4F01A48();

      v39 = v79;
      sub_1C4EFE0A8();
      v14 = v87;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458E770(0, *(v14 + 16) + 1, 1, v14);
        v14 = v41;
      }

      v12 = v78;
      v13 = v86;
      a2 = *(v14 + 16);
      v40 = *(v14 + 24);
      if (a2 >= v40 >> 1)
      {
        sub_1C458E770(v40 > 1, a2 + 1, 1, v14);
        v14 = v42;
      }

      *(v14 + 16) = a2 + 1;
      (*(v82 + 32))(v14 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * a2, v39, v83);
      if (v13 == v81)
      {
        goto LABEL_36;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    swift_once();
  }

LABEL_36:

LABEL_37:
  if (qword_1EDDFA678 != -1)
  {
    swift_once();
  }

  v47 = sub_1C4F00978();
  sub_1C442B738(v47, qword_1EDE2DCD8);
  v48 = v72;
  v49 = sub_1C4F00968();
  v50 = sub_1C4F01CC8();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v96[0] = v53;
    *v51 = 136315650;
    v54 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v55 = MEMORY[0x1C6940380](v54, v83);
    v57 = v56;

    v58 = sub_1C441D828(v55, v57, v96);

    *(v51 + 4) = v58;
    *(v51 + 12) = 2112;
    v59 = [v48 limit];
    *(v51 + 14) = v59;
    *v52 = v59;
    *(v51 + 22) = 2112;
    v60 = [v48 offset];
    *(v51 + 24) = v60;
    v52[1] = v60;
    _os_log_impl(&dword_1C43F8000, v49, v50, "Knosis XPC: Got executeIntents request intents:%s, limit:%@, offset:%@", v51, 0x20u);
    sub_1C456902C(&qword_1EC0BDA00, &qword_1C4F10D30);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v52, -1, -1);
    sub_1C440962C(v53);
    MEMORY[0x1C6942830](v53, -1, -1);
    MEMORY[0x1C6942830](v51, -1, -1);
  }

  v61 = sub_1C4EFDC38();
  v62 = sub_1C4F00968();
  v63 = sub_1C4F01CC8();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 134218240;
    v65 = [v61 answers];
    sub_1C4461BB8(0, &unk_1EC0C0A30, 0x1E69A9EB0);
    v66 = sub_1C4F01678();

    v67 = sub_1C4428DA0(v66);

    *(v64 + 4) = v67;

    *(v64 + 12) = 2048;
    v68 = [v61 status];
    sub_1C4F02AF8();
    MEMORY[0x1C69417F0](v68);
    v69 = sub_1C4F02B68();

    *(v64 + 14) = v69;
    _os_log_impl(&dword_1C43F8000, v62, v63, "Knosis XPC: Got executeIntents result, answersCount:%ld, status:%ld", v64, 0x16u);
    MEMORY[0x1C6942830](v64, -1, -1);
  }

  else
  {

    v62 = v61;
  }

  v70 = v75;
  (v75)[2](v75, v61, 0);

  _Block_release(v70);
}

void KnosisXPC.Server.executeIntent(_:withCompletion:)(void *a1, void (*a2)(NSObject *, uint64_t), uint64_t a3)
{
  v82 = a3;
  v81 = a2;
  v90 = sub_1C4EFE0B8();
  sub_1C43FCDF8();
  v89 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v99 = sub_1C4F002A8();
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v98 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v97 = &v77 - v15;
  if (qword_1EDDDBE08 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    if (!qword_1EDE2C930)
    {
      sub_1C49ADFB4();
      v49 = swift_allocError();
      *v50 = xmmword_1C4F0D7C0;
      v81(0, v49);
      sub_1C44086C4();

      return;
    }

    v80 = qword_1EDE2C930;
    v16 = sub_1C49AE06C(a1);
    v79 = v3;
    v78 = a1;
    if (!v16)
    {
      goto LABEL_37;
    }

    v17 = v16;
    v88 = sub_1C4428DA0(v16);
    if (!v88)
    {
      break;
    }

    v18 = 0;
    v87 = v17 & 0xC000000000000001;
    v83 = v17 + 32;
    v96 = (v11 + 8);
    v84 = v89 + 32;
    v19 = MEMORY[0x1E69E7CC0];
    v86 = v9;
    v85 = v17;
    while (1)
    {
      v11 = v87;
      sub_1C4431590(v18, v87 == 0, v17);
      v20 = v11 ? MEMORY[0x1C6940F90](v18, v17) : *(v83 + 8 * v18);
      v21 = __OFADD__(v18, 1);
      a1 = (v18 + 1);
      if (v21)
      {
        break;
      }

      v94 = v19;
      v104[0] = MEMORY[0x1E69E7CD0];
      v92 = v20;
      v22 = [v20 args];
      v23 = sub_1C4461BB8(0, &qword_1EC0C0A40, 0x1E69A9EB8);
      v3 = sub_1C49AE0DC();
      v24 = sub_1C4F01AB8();

      v93 = a1;
      v95 = v23;
      if ((v24 & 0xC000000000000001) != 0)
      {
        sub_1C4F02118();
        sub_1C4F01B08();
        v24 = v104[9];
        v11 = v104[10];
        v25 = v104[11];
        v9 = v104[12];
        v26 = v104[13];
      }

      else
      {
        v9 = 0;
        v27 = -1 << *(v24 + 32);
        v11 = v24 + 56;
        v25 = ~v27;
        v28 = -v27;
        if (v28 < 64)
        {
          v29 = ~(-1 << v28);
        }

        else
        {
          v29 = -1;
        }

        v26 = v29 & *(v24 + 56);
      }

      v91 = v25;
      a1 = ((v25 + 64) >> 6);
      v100 = a1;
      if (v24 < 0)
      {
        goto LABEL_23;
      }

      while (1)
      {
        v30 = v9;
        v31 = v26;
        v32 = v9;
        if (!v26)
        {
          while (1)
          {
            v32 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              break;
            }

            if (v32 >= a1)
            {
              goto LABEL_27;
            }

            v31 = *(v11 + 8 * v32);
            ++v30;
            if (v31)
            {
              goto LABEL_21;
            }
          }

          __break(1u);
          goto LABEL_46;
        }

LABEL_21:
        v33 = (v31 - 1) & v31;
        v34 = *(*(v24 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v31)))));
        if (!v34)
        {
          break;
        }

        while (1)
        {
          v36 = [v34 arg];
          v101 = v33;
          v37 = v36;
          sub_1C4F01138();
          v38 = v11;

          v39 = [v34 value];
          sub_1C4F01138();

          sub_1C4F00298();
          v3 = v104;
          v40 = v97;
          sub_1C483C44C();

          v41 = v40;
          v11 = v38;
          a1 = v100;
          (*v96)(v41, v99);
          v9 = v32;
          v26 = v101;
          if ((v24 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_23:
          v35 = sub_1C4F02148();
          if (v35)
          {
            v102 = v35;
            swift_dynamicCast();
            v34 = v103;
            v32 = v9;
            v33 = v26;
            if (v103)
            {
              continue;
            }
          }

          goto LABEL_27;
        }
      }

LABEL_27:
      sub_1C449BB0C();
      v42 = v92;
      v43 = [v92 intent];
      sub_1C4F01138();

      v44 = [v42 score];
      sub_1C4F01A48();

      v9 = v86;
      sub_1C4EFE0A8();
      v19 = v94;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458E770(0, *(v19 + 16) + 1, 1, v19);
        v19 = v47;
      }

      v17 = v85;
      v18 = v93;
      v46 = *(v19 + 16);
      v45 = *(v19 + 24);
      v3 = (v46 + 1);
      if (v46 >= v45 >> 1)
      {
        sub_1C458E770(v45 > 1, v46 + 1, 1, v19);
        v19 = v48;
      }

      *(v19 + 16) = v3;
      (*(v89 + 32))(v19 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v46, v9, v90);
      if (v18 == v88)
      {
        goto LABEL_36;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    sub_1C4413408(&qword_1EDDDBE08);
  }

LABEL_36:

LABEL_37:
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v53 = sub_1C4F00978();
  sub_1C442B738(v53, qword_1EDE2DCD8);
  v54 = v78;
  v55 = sub_1C4F00968();
  v56 = sub_1C4F01CC8();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = sub_1C43FFD34();
    v58 = swift_slowAlloc();
    v59 = sub_1C43FFD34();
    v104[0] = v59;
    *v57 = 136315650;
    v60 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v61 = MEMORY[0x1C6940380](v60, v90);
    v63 = v62;

    v64 = sub_1C441D828(v61, v63, v104);

    *(v57 + 4) = v64;
    *(v57 + 12) = 2112;
    v65 = [v54 limit];
    *(v57 + 14) = v65;
    *v58 = v65;
    *(v57 + 22) = 2112;
    v66 = [v54 offset];
    *(v57 + 24) = v66;
    v58[1] = v66;
    _os_log_impl(&dword_1C43F8000, v55, v56, "Knosis XPC: Got executeIntents request intents:%s, limit:%@, offset:%@", v57, 0x20u);
    sub_1C456902C(&qword_1EC0BDA00, &qword_1C4F10D30);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C440962C(v59);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v67 = sub_1C4EFDC38();
  v68 = sub_1C4F00968();
  v69 = sub_1C4F01CC8();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 134218240;
    v71 = [v67 answers];
    sub_1C4461BB8(0, &unk_1EC0C0A30, 0x1E69A9EB0);
    v72 = sub_1C4F01678();

    v73 = sub_1C4428DA0(v72);

    *(v70 + 4) = v73;

    *(v70 + 12) = 2048;
    v74 = [v67 status];
    sub_1C4F02AF8();
    MEMORY[0x1C69417F0](v74);
    v75 = sub_1C4F02B68();

    *(v70 + 14) = v75;
    _os_log_impl(&dword_1C43F8000, v68, v69, "Knosis XPC: Got executeIntents result, answersCount:%ld, status:%ld", v70, 0x16u);
    sub_1C43FBE2C();
  }

  else
  {

    v68 = v67;
  }

  v76 = v67;
  v81(v67, 0);

  sub_1C44086C4();
}

void sub_1C49AD228(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

id KnosisXPC.Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1C49AD390(uint64_t a1, void *a2)
{
  sub_1C456902C(&qword_1EC0C0AB8, qword_1C4F3FE30);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v92 - v4;
  v6 = sub_1C4EFEFB8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = (v11 - v10);
  v13 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v92 - v15;
  if (qword_1EDDDBE00 != -1)
  {
    sub_1C442CD48(&qword_1EDDDBE00);
  }

  v17 = sub_1C442B738(v13, qword_1EDE2C918);
  swift_beginAccess();
  sub_1C4466EEC(v17, v16);
  v18 = type metadata accessor for Configuration(0);
  if (sub_1C44157D4(v16, 1, v18) != 1)
  {
    v19 = &v16[*(v18 + 20)];
    v20 = *v19;
    v21 = *(v19 + 1);
    sub_1C4467948(v16);
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v20) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v21) == *(&xmmword_1EDDFEC90 + 1))
    {
      if (qword_1EDDFA678 != -1)
      {
LABEL_58:
        sub_1C43FFCC0(&qword_1EDDFA678);
      }

      v25 = sub_1C4F00978();
      sub_1C43FCEE8(v25, qword_1EDE2DCD8);
      v26 = sub_1C4F00968();
      v27 = sub_1C4F01CF8();
      if (!sub_1C43FCEA4(v27))
      {
        goto LABEL_52;
      }

      v28 = sub_1C43FCED0();
      sub_1C43FBD24(v28);
      sub_1C44057CC();
      _os_log_impl(v29, v30, v31, v32, v33, 2u);
      goto LABEL_51;
    }

    if ((sub_1C446874C(0xD000000000000025, 0x80000001C4FAB790) & 1) == 0)
    {
LABEL_53:
      sub_1C44086C4();
      return;
    }

    v99 = v8;
    v23 = sub_1C4F01108();
    v24 = [a2 valueForEntitlement_];

    if (v24)
    {
      sub_1C4F02078();
      swift_unknownObjectRelease();
    }

    else
    {
      v106 = 0u;
      v107 = 0u;
    }

    aBlock = v106;
    v101 = v107;
    if (*(&v107 + 1))
    {
      if (swift_dynamicCast())
      {
        v34 = v105;
        v97 = v104;
        if (qword_1EDDFA678 != -1)
        {
          sub_1C43FFCC0(&qword_1EDDFA678);
        }

        v35 = sub_1C4F00978();
        sub_1C43FCEE8(v35, qword_1EDE2DCD8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v98 = v34;
        v36 = sub_1C4F00968();
        v37 = v98;
        v38 = v36;
        v39 = sub_1C4F01CF8();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = sub_1C43FD084();
          v41 = a2;
          v42 = sub_1C43FFD34();
          *&aBlock = v42;
          *v40 = 136315138;
          *(v40 + 4) = sub_1C441D828(v97, v37, &aBlock);
          _os_log_impl(&dword_1C43F8000, v38, v39, "KnosisXPC: clientIdentifier: %s", v40, 0xCu);
          sub_1C440962C(v42);
          a2 = v41;
          sub_1C43FBE2C();
          sub_1C43FBE2C();
        }

        sub_1C440D5A4();
        v43 = sub_1C4F01108();
        v44 = [a2 valueForEntitlement_];

        if (v44)
        {
          sub_1C4F02078();
          swift_unknownObjectRelease();
        }

        else
        {
          v106 = 0u;
          v107 = 0u;
        }

        aBlock = v106;
        v101 = v107;
        if (*(&v107 + 1))
        {
          sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
          if (swift_dynamicCast())
          {
            v93 = a2;
            v51 = v104;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v52 = sub_1C4F00968();
            v53 = sub_1C4F01CF8();

            v54 = os_log_type_enabled(v52, v53);
            v94 = v24;
            if (v54)
            {
              v55 = sub_1C43FD084();
              v56 = sub_1C43FFD34();
              *&aBlock = v56;
              *v55 = 136315138;
              v57 = MEMORY[0x1C6940380](v51, MEMORY[0x1E69E6158]);
              v59 = sub_1C441D828(v57, v58, &aBlock);

              *(v55 + 4) = v59;
              _os_log_impl(&dword_1C43F8000, v52, v53, "KnosisXPC: entitledIndexNames: %s", v55, 0xCu);
              sub_1C440962C(v56);
              sub_1C43FBE2C();
              sub_1C43FBE2C();
            }

            v60 = 0;
            v61 = *(v51 + 16);
            v95 = (v99 + 32);
            v62 = v51 + 40;
            v96 = MEMORY[0x1E69E7CC0];
            v92 = v51 + 40;
LABEL_36:
            v63 = v62 + 16 * v60;
            while (v61 != v60)
            {
              if (v60 >= *(v51 + 16))
              {
                __break(1u);
                goto LABEL_58;
              }

              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C4EFEFA8();
              if (sub_1C44157D4(v5, 1, v6) != 1)
              {
                v64 = *v95;
                (*v95)(v12, v5, v6);
                v65 = v96;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1C458E7B0(0, *(v65 + 16) + 1, 1, v65);
                  v65 = v70;
                }

                v66 = v65;
                v67 = *(v65 + 16);
                v96 = v66;
                v68 = *(v66 + 24);
                if (v67 >= v68 >> 1)
                {
                  sub_1C458E7B0(v68 > 1, v67 + 1, 1, v96);
                  v96 = v71;
                }

                ++v60;
                v69 = v96;
                *(v96 + 16) = v67 + 1;
                v64(v69 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v67, v12, v6);
                v62 = v92;
                goto LABEL_36;
              }

              sub_1C4420C3C(v5, &qword_1EC0C0AB8, qword_1C4F3FE30);
              v63 += 16;
              ++v60;
            }

            v78 = v96;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v79 = sub_1C4F00968();
            v80 = sub_1C4F01CF8();

            if (os_log_type_enabled(v79, v80))
            {
              v81 = sub_1C43FD084();
              v82 = sub_1C43FFD34();
              *&aBlock = v82;
              *v81 = 136315138;
              v83 = MEMORY[0x1C6940380](v78, v6);
              v85 = sub_1C441D828(v83, v84, &aBlock);

              *(v81 + 4) = v85;
              _os_log_impl(&dword_1C43F8000, v79, v80, "KnosisXPC: entitledIndexTypes: %s", v81, 0xCu);
              sub_1C440962C(v82);
              sub_1C43FBE2C();
              sub_1C43FBE2C();
            }

            v86 = v93;
            v87 = [objc_opt_self() interfaceWithProtocol_];
            sub_1C43FC5E8(v87, sel_setExportedInterface_);

            v88 = objc_allocWithZone(type metadata accessor for KnosisXPC.Server(0));
            v89 = sub_1C49AB1E8(v78, v97, v98);
            sub_1C43FC5E8(v89, sel_setExportedObject_);

            v102 = sub_1C49ADE44;
            v103 = 0;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v101 = sub_1C4833DD0;
            *(&v101 + 1) = &unk_1F43F2980;
            v90 = _Block_copy(&aBlock);
            sub_1C43FC5E8(v90, sel_setInterruptionHandler_);
            _Block_release(v90);
            v102 = sub_1C49ADE64;
            v103 = 0;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v101 = sub_1C4833DD0;
            *(&v101 + 1) = &unk_1F43F29A8;
            v91 = _Block_copy(&aBlock);
            sub_1C43FC5E8(v91, sel_setInvalidationHandler_);
            _Block_release(v91);
            [v86 resume];
            goto LABEL_53;
          }
        }

        else
        {

          sub_1C4420C3C(&aBlock, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        }

        v26 = sub_1C4F00968();
        v72 = sub_1C4F01CD8();
        if (!sub_1C43FCEA4(v72))
        {
          goto LABEL_52;
        }

        v47 = sub_1C43FD084();
        v48 = sub_1C43FFD34();
        *&aBlock = v48;
        *v47 = 136315138;
        v50 = sub_1C440D5A4();
LABEL_50:
        *(v47 + 4) = sub_1C441D828(v50, v49, &aBlock);
        sub_1C44057CC();
        _os_log_impl(v73, v74, v75, v76, v77, 0xCu);
        sub_1C440962C(v48);
        sub_1C43FBE2C();
LABEL_51:
        sub_1C43FBE2C();
LABEL_52:

        goto LABEL_53;
      }
    }

    else
    {
      sub_1C4420C3C(&aBlock, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    }

    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0(&qword_1EDDFA678);
    }

    v45 = sub_1C4F00978();
    sub_1C43FCEE8(v45, qword_1EDE2DCD8);
    v26 = sub_1C4F00968();
    v46 = sub_1C4F01CD8();
    if (!sub_1C43FCEA4(v46))
    {
      goto LABEL_52;
    }

    v47 = sub_1C43FD084();
    v48 = sub_1C43FFD34();
    *&aBlock = v48;
    *v47 = 136315138;
    v49 = 0x80000001C4F9BF60;
    v50 = 0xD000000000000016;
    goto LABEL_50;
  }

  __break(1u);
}

uint64_t sub_1C49ADF30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1C456902C(a3, a4);
  sub_1C43FBCE0();
  (*(v6 + 40))(a2, a1);
  return a2;
}

unint64_t sub_1C49ADFB4()
{
  result = qword_1EC0C0A28;
  if (!qword_1EC0C0A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0A28);
  }

  return result;
}

uint64_t sub_1C49AE008(void *a1)
{
  v1 = [a1 kgq];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C49AE06C(void *a1)
{
  v1 = [a1 intentArgs];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C4461BB8(0, &qword_1EC0C0AC0, 0x1E69A9EC0);
  v3 = sub_1C4F01678();

  return v3;
}

unint64_t sub_1C49AE0DC()
{
  result = qword_1EC0C0A48;
  if (!qword_1EC0C0A48)
  {
    sub_1C4461BB8(255, &qword_1EC0C0A40, 0x1E69A9EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0A48);
  }

  return result;
}

uint64_t type metadata accessor for KnosisXPC.Server(uint64_t a1)
{
  result = qword_1EDDDBDF0;
  if (!qword_1EDDDBDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C49AE1BC(uint64_t a1)
{
  result = sub_1C4EFF2D8();
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

uint64_t sub_1C49AE27C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C49AE294(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C49AE2E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1C49AE344(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C49AE378(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0x206E776F6E6B6E55;
  }

  if (a2 == 1)
  {
    return 0xD000000000000028;
  }

  sub_1C4F02248();

  MEMORY[0x1C6940010](a1, a2);
  return 0xD00000000000001CLL;
}

uint64_t sub_1C49AE468(uint64_t a1, uint64_t a2)
{
  v2 = 1;
  if (a2 != 1)
  {
    v2 = 2;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C49AE480(uint64_t a1, uint64_t a2)
{
  sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = sub_1C4F01138();
  *(inited + 40) = v5;
  v6 = sub_1C49AE378(a1, a2);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  return sub_1C4F00F28();
}

uint64_t sub_1C49AE530(uint64_t a1)
{
  v2 = sub_1C49AE5E0();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C49AE56C(uint64_t a1)
{
  v2 = sub_1C49AE5E0();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1C49AE5E0()
{
  result = qword_1EC0C0AC8;
  if (!qword_1EC0C0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0AC8);
  }

  return result;
}

uint64_t static KnowledgeConstructionSystem.start()()
{
  v0 = sub_1C4EF98F8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v50 - v7;
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v9 = sub_1C4F00978();
  v53 = sub_1C442B738(v9, qword_1EDDFECB8);
  v10 = sub_1C4F00968();
  v11 = sub_1C4F01CF8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    sub_1C4407324(&dword_1C43F8000, v13, v14, "KnowledgeConstructionSystem: starting...");
    MEMORY[0x1C6942830](v12, -1, -1);
  }

  if (qword_1EDDFFA78 != -1)
  {
    swift_once();
  }

  v55[0] = xmmword_1EDDFFA80;
  if (qword_1EDDFFA40 != -1)
  {
    swift_once();
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v55[1] = xmmword_1EDDFFA48;
  do
  {
    v19 = v17;
    v20 = &v55[v18];
    v22 = *v20;
    v21 = v20[1];
    if ((v22 & ~v15) != 0 || (v21 & v16) != v21)
    {
      v15 |= v22;
      v16 |= v21;
    }

    v17 = 1;
    v18 = 1;
  }

  while ((v19 & 1) == 0);
  sub_1C4F001A8();
  v51 = *(v1 + 16);
  v51(v8, v3, v0);
  static Features.optionsForEnabledFeatures.getter(v54);
  v24 = *(v1 + 8);
  v24(v3, v0);
  sub_1C4419BF0();
  v26 = &v8[v25];
  *v26 = v27;
  *(v26 + 1) = v28;
  sub_1C4D61780(v8);
  sub_1C4D62120(v8);
  v29 = sub_1C4F00968();
  v30 = sub_1C4F01CF8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    sub_1C4407324(&dword_1C43F8000, v32, v33, "KnowledgeConstructionSystem: running storage cleanup");
    MEMORY[0x1C6942830](v31, -1, -1);
  }

  if (sub_1C4B6A8D0(v8, v34, v35, v36, v37, v38, v39, v40) == 2)
  {
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    sub_1C4F001A8();
    v41 = v52;
    v51(v52, v3, v0);
    static Features.optionsForEnabledFeatures.getter(v54);
    v24(v3, v0);
    sub_1C4419BF0();
    v43 = (v41 + v42);
    *v43 = v44;
    v43[1] = v45;
    sub_1C4467948(v8);
    sub_1C4409954(v41, v8);
    sub_1C4787A70(v8);
    sub_1C4AE8C60();
    type metadata accessor for KnowledgeConstructionXPC();
    sub_1C49AEBEC(v8);
    v46 = sub_1C4F00968();
    v47 = sub_1C4F01CF8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1C43F8000, v46, v47, "KnowledgeConstructionSystem: storage system failed to start, will exit when process becomes clean after handling launch events.", v48, 2u);
      MEMORY[0x1C6942830](v48, -1, -1);
    }

    xpc_transaction_exit_clean();
  }

  else
  {
    sub_1C4787A70(v8);
    sub_1C4AE8C60();
    type metadata accessor for KnowledgeConstructionXPC();
    sub_1C49AEBEC(v8);
  }

  return sub_1C4467948(v8);
}

_BYTE *storeEnumTagSinglePayload for KnowledgeConstructionSystem(_BYTE *result, int a2, int a3)
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

void sub_1C49AEBEC(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v20 - v3;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v5 = sub_1C4F00978();
  sub_1C442B738(v5, qword_1EDE2DCD8);
  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v7))
  {
    v8 = sub_1C43FCED0();
    *v8 = 0;
    _os_log_impl(&dword_1C43F8000, v6, v7, "KnowledgeConstructionXPC: starting...", v8, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDE1A10 != -1)
  {
    sub_1C4407344(&qword_1EDDE1A10);
  }

  sub_1C43FCEE8(v2, qword_1EDE2CB88);
  sub_1C44098F0(a1, v4);
  v9 = type metadata accessor for Configuration(0);
  sub_1C440BAA8(v4, 0, 1, v9);
  swift_beginAccess();
  sub_1C45A6EE0(v4, v6);
  swift_endAccess();
  sub_1C45A6F50();
  v10 = sub_1C44351C0();
  v12 = sub_1C49AA56C(v10, v11);
  v13 = qword_1EDE2CB78;
  qword_1EDE2CB78 = v12;
  v14 = v12;

  if (v14)
  {
    qword_1EDE2CB80 = [objc_allocWithZone(type metadata accessor for KnowledgeConstructionXPC.Delegate()) init];
    v15 = qword_1EDE2CB80;
    swift_unknownObjectRelease();
    [v14 setDelegate_];

    [v14 resume];
  }

  else
  {
    v14 = sub_1C4F00968();
    v16 = sub_1C4F01CE8();
    if (sub_1C4402B64(v16))
    {
      v17 = sub_1C43FCED0();
      sub_1C43FBD24(v17);
      sub_1C43FFFD8(&dword_1C43F8000, v18, v19, "Failed to create KnowledgeConstruction XPC service");
      sub_1C43FE9D4();
    }
  }
}

uint64_t sub_1C49AEE60()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDE2CB88);
  v1 = sub_1C442B738(v0, qword_1EDE2CB88);
  v2 = type metadata accessor for Configuration(0);

  return sub_1C440BAA8(v1, 1, 1, v2);
}

id KnowledgeConstructionXPC.Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t KnowledgeConstructionXPC.Server.runFullPipeline(with:)()
{
  sub_1C43FBCD4();
  v0[6] = v1;
  v0[7] = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v0[8] = swift_task_alloc();
  v2 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C49AF00C()
{
  if ([objc_opt_self() isInternalDevice])
  {
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0(&qword_1EDDFA678);
    }

    v1 = sub_1C4F00978();
    v0[9] = v1;
    v0[10] = sub_1C442B738(v1, qword_1EDE2DCD8);
    v2 = sub_1C4F00968();
    v3 = sub_1C4F01CF8();
    if (sub_1C4402B64(v3))
    {
      v4 = sub_1C43FCED0();
      sub_1C43FBD24(v4);
      sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "KnowledgeConstructionXPC: runFullPipeline");
      sub_1C43FE9D4();
    }

    if (qword_1EDDE1A10 != -1)
    {
      sub_1C4407344(&qword_1EDDE1A10);
    }

    v7 = sub_1C442B738(v0[7], qword_1EDE2CB88);
    sub_1C43FC600(v7);
    v8 = sub_1C43FBC98();
    sub_1C4466EEC(v8, v9);
    v10 = type metadata accessor for Configuration(0);
    result = sub_1C43FD9F0(v10);
    if (v12)
    {
      __break(1u);
    }

    else
    {
      if (qword_1EDDF0AB0 != -1)
      {
        sub_1C4402D88(&qword_1EDDF0AB0);
      }

      v0[11] = sub_1C4468E90();
      sub_1C4467948(v0[8]);
      v21 = swift_task_alloc();
      v0[12] = v21;
      *v21 = v0;
      v21[1] = sub_1C49AF3BC;
      v22 = v0[6];

      return sub_1C4ABFCBC(v22);
    }
  }

  else
  {
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0(&qword_1EDDFA678);
    }

    v13 = sub_1C4F00978();
    sub_1C43FCEE8(v13, qword_1EDE2DCD8);
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CF8();
    if (sub_1C4402B64(v15))
    {
      v16 = sub_1C43FCED0();
      sub_1C43FBD24(v16);
      sub_1C43FFFD8(&dword_1C43F8000, v17, v18, "KnowledgeConstructionXPC: API disabled on customer devices.");
      sub_1C43FE9D4();
    }

    v19 = sub_1C4409E50();

    return v20(v19);
  }

  return result;
}

uint64_t sub_1C49AF3BC()
{
  sub_1C43FBCD4();
  v5 = *v1;
  sub_1C43FBDAC();
  *v2 = v5;
  *(v5 + 104) = v0;

  if (v0)
  {
    v3 = sub_1C49AF570;
  }

  else
  {

    v3 = sub_1C49AF4CC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C49AF4CC()
{
  sub_1C43FCF70();
  v0 = sub_1C4F00968();
  v1 = sub_1C4F01CF8();
  if (sub_1C4402B64(v1))
  {
    v2 = sub_1C43FCED0();
    sub_1C43FBD24(v2);
    sub_1C43FFFD8(&dword_1C43F8000, v3, v4, "KnowledgeConstructionXPC: runFullPipeline: done");
    sub_1C43FE9D4();
  }

  sub_1C43FBCF0();

  return v5(1);
}

uint64_t sub_1C49AF570()
{
  sub_1C43FCF70();

  v1 = *(v0 + 104);
  *(v0 + 40) = v1;
  v2 = v1;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (swift_dynamicCast())
  {

    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    sub_1C43FCEE8(*(v0 + 72), qword_1EDE2DE10);
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CF8();
    if (sub_1C43FEB2C(v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      sub_1C49AFFF8();
      swift_allocError();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      sub_1C442BCC0(&dword_1C43F8000, v8, v9, "%@: Pipeline retired same phase multiple times. Need to invoke long running construction xpc activity");
      sub_1C45B4B90(v6);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    v10 = sub_1C4409E50();
  }

  else
  {

    v10 = sub_1C4409E50();
  }

  return v11(v10);
}

uint64_t sub_1C49AF738(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1C4999D64;

  return KnowledgeConstructionXPC.Server.runFullPipeline(with:)();
}

uint64_t sub_1C49AF7F0()
{
  sub_1C43FBCD4();
  v5 = *v1;
  sub_1C43FBDAC();
  *v2 = v5;
  *(v5 + 88) = v0;

  if (v0)
  {
    v3 = sub_1C49AF9A4;
  }

  else
  {

    v3 = sub_1C49AF900;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C49AF900()
{
  sub_1C43FCF70();
  v1 = sub_1C4F00968();
  v2 = sub_1C4F01CF8();
  if (sub_1C4402B64(v2))
  {
    v3 = sub_1C43FCED0();
    sub_1C43FBD24(v3);
    sub_1C43FFFD8(&dword_1C43F8000, v4, v5, "KnowledgeConstructionXPC: runFastpassPipeline: done");
    sub_1C43FE9D4();
  }

  sub_1C43FBCF0();
  v7 = *(v0 + 96);

  return v6(v7);
}

uint64_t sub_1C49AF9A4()
{
  sub_1C43FBCD4();

  v0 = sub_1C4409E50();

  return v1(v0);
}

uint64_t KnowledgeConstructionXPC.Server.stopPipeline()()
{
  sub_1C43FBCD4();
  *(v0 + 40) = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  *(v0 + 48) = swift_task_alloc();
  v1 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C49AFA98()
{
  v2 = [objc_opt_self() isInternalDevice];
  if (!v2)
  {
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0(&qword_1EDDFA678);
    }

    v12 = sub_1C4F00978();
    sub_1C43FCEE8(v12, qword_1EDE2DCD8);
    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CF8();
    if (!sub_1C43FEB2C(v17))
    {
      goto LABEL_17;
    }

    v13 = sub_1C43FCED0();
    sub_1C43FBD24(v13);
    v14 = "KnowledgeConstructionXPC: API disabled on customer devices.";
    goto LABEL_16;
  }

  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDE2DCD8);
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v5))
  {
    v6 = sub_1C43FCED0();
    *v6 = 0;
    _os_log_impl(&dword_1C43F8000, v4, v5, "KnowledgeConstructionXPC: stopPipeline", v6, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDE1A10 != -1)
  {
    sub_1C4407344(&qword_1EDDE1A10);
  }

  v7 = *(v1 + 48);
  v8 = sub_1C442B738(*(v1 + 40), qword_1EDE2CB88);
  sub_1C43FC600(v8);
  sub_1C4466EEC(v8, v7);
  v9 = type metadata accessor for Configuration(0);
  result = sub_1C43FD9F0(v9);
  if (v11)
  {
    __break(1u);
    return result;
  }

  if (qword_1EDDF0AB0 != -1)
  {
    sub_1C4402D88(&qword_1EDDF0AB0);
  }

  v0 = 0;
  sub_1C4468E90();
  sub_1C4467948(*(v1 + 48));
  sub_1C4ABF738();

  v16 = sub_1C4F00968();
  v17 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v17))
  {
    v19 = sub_1C43FCED0();
    sub_1C43FBD24(v19);
    v14 = "KnowledgeConstructionXPC: stopPipeline: done";
LABEL_16:
    _os_log_impl(&dword_1C43F8000, v16, v17, v14, v0, 2u);
    sub_1C43FE9D4();
  }

LABEL_17:

  sub_1C43FBCF0();

  return v15(v2);
}

uint64_t sub_1C49AFD48(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1C498F20C;

  return KnowledgeConstructionXPC.Server.stopPipeline()();
}

uint64_t sub_1C49AFE08()
{
  sub_1C43FCF70();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v0 = sub_1C4F00978();
  sub_1C43FCEE8(v0, qword_1EDE2DCD8);
  v1 = sub_1C4F00968();
  v2 = sub_1C4F01CF8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = sub_1C43FCED0();
    *v3 = 0;
    _os_log_impl(&dword_1C43F8000, v1, v2, "KnowledgeConstructionXPC: checkIn", v3, 2u);
    sub_1C43FBE2C();
  }

  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CF8();
  if (sub_1C4402B64(v5))
  {
    v6 = sub_1C43FCED0();
    sub_1C43FBD24(v6);
    sub_1C43FFFD8(&dword_1C43F8000, v7, v8, "KnowledgeConstructionXPC: checkIn: done");
    sub_1C43FE9D4();
  }

  sub_1C43FBCF0();

  return v9(1);
}

uint64_t sub_1C49AFF50(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1C4999D64;

  return KnowledgeConstructionXPC.Server.checkIn()();
}

unint64_t sub_1C49AFFF8()
{
  result = qword_1EC0C0AD0;
  if (!qword_1EC0C0AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0AD0);
  }

  return result;
}

uint64_t sub_1C49B0094()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v1[1] = sub_1C4999D74;
  v3 = sub_1C43FBC98();

  return v4(v3);
}

uint64_t sub_1C49B0134()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v1[1] = sub_1C4999B14;
  v3 = sub_1C43FBC98();

  return v4(v3);
}

uint64_t sub_1C49B01D4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C49B0214()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C440E174(v1);

  return v4(v3);
}

uint64_t sub_1C49B02C0()
{
  sub_1C456902C(&qword_1EC0C0B60, &unk_1C4F40040);
  v0 = sub_1C4F00F28();
  sub_1C49B1820();
  sub_1C4F01108();
  v1 = sub_1C4F01CA8();
  v2 = [objc_opt_self() supportedLanguages];
  v3 = sub_1C4F01AB8();

  v4 = sub_1C4F01C98();
  if (!v4)
  {

    if (qword_1EDDFECD0 != -1)
    {
      sub_1C44066DC(&qword_1EDDFECD0);
    }

    v58 = sub_1C4F00978();
    sub_1C442B738(v58, qword_1EDE2DF70);
    v59 = sub_1C4F00968();
    v60 = sub_1C4F01CD8();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1C43F8000, v59, v60, "languageView: Error executing Biome AppLanguageConsumption query: No results returned.", v61, 2u);
      MEMORY[0x1C6942830](v61, -1, -1);
    }

    return v0;
  }

  v73 = v0;
  v68 = 0;
  for (i = 0; ; i = sub_1C49B0B00)
  {
    while (1)
    {
      while (1)
      {
        do
        {
          if (![v4 next])
          {

            sub_1C44239FC(i, 0);
            sub_1C44239FC(v68, 0);
            return v73;
          }

          v5 = sub_1C4BD1B7C(v4);
        }

        while (!v5);
        v13 = v5;
        sub_1C4407364(v5, v6, v7, v8, v9, v10, v11, v12, v63, v64, v65);
        if (*(v13 + 16))
        {
          v14 = sub_1C457AA70(v75);
          if (v15)
          {
            sub_1C440078C(v14);
            sub_1C457E804(v75);
            v16 = swift_dynamicCast();
            if ((v16 & 1) == 0)
            {
              goto LABEL_8;
            }

            sub_1C4407364(v16, v17, v18, v19, v20, v21, v22, v23, v63, v64, v65);
            if (*(v13 + 16))
            {
              v24 = sub_1C457AA70(v75);
              if (v25)
              {
                break;
              }
            }
          }
        }

LABEL_9:

        sub_1C457E804(v75);
      }

      sub_1C440078C(v24);
      sub_1C457E804(v75);
      v26 = swift_dynamicCast();
      if ((v26 & 1) == 0)
      {
        goto LABEL_8;
      }

      sub_1C4407364(v26, v27, v28, v29, v30, v31, v32, v33, v63, v64, v65);
      if (!*(v13 + 16) || (v34 = sub_1C457AA70(v75), (v35 & 1) == 0))
      {

        goto LABEL_9;
      }

      sub_1C440078C(v34);
      sub_1C457E804(v75);

      if ((swift_dynamicCast() & 1) != 0 && sub_1C4499AD0(0x4C746E65746E6F63, 0xEF65676175676E61, v3))
      {
        break;
      }

LABEL_8:
    }

    v36 = sub_1C4585948(0x72756F5361746164uLL);
    v37 = v36 == 8 ? 0 : v36;
    LOBYTE(v75[0]) = v37;
    v66 = sub_1C4F01198();
    v39 = v38;
    sub_1C44239FC(i, 0);
    v40 = v73;
    swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v73;
    v65 = v39;
    v71 = sub_1C445FAA8(v66, v39);
    v74 = v41;
    if (__OFADD__(*(v40 + 16), (v41 & 1) == 0))
    {
      break;
    }

    sub_1C456902C(&qword_1EC0C0B70, &qword_1C4F40050);
    if (sub_1C4F02458())
    {
      v71 = sub_1C445FAA8(v66, v39);
      v43 = v74;
      if ((v74 & 1) != (v42 & 1))
      {
        goto LABEL_52;
      }
    }

    else
    {
      v43 = v74;
    }

    v44 = v75[0];
    if ((v43 & 1) == 0)
    {
      sub_1C49B0B00(v75);
      sub_1C44686DC(v71, v66, v39, v75[0], v44);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v73 = v44;
    v45 = *(v44 + 56);
    sub_1C44239FC(v68, 0);
    HIDWORD(v63) = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = *(v45 + 8 * v71);
    v46 = v75[0];
    v64 = v45;
    *(v45 + 8 * v71) = 0x8000000000000000;
    v69 = sub_1C445FAA8(0x4C746E65746E6F63, 0xEF65676175676E61);
    v67 = v47;
    if (__OFADD__(*(v46 + 16), (v47 & 1) == 0))
    {
      goto LABEL_51;
    }

    sub_1C456902C(&qword_1EC0C0B78, &qword_1C4F40058);
    if (sub_1C4F02458())
    {
      v48 = sub_1C445FAA8(0x4C746E65746E6F63, 0xEF65676175676E61);
      if ((v67 & 1) != (v49 & 1))
      {
        goto LABEL_52;
      }

      v69 = v48;
    }

    *(v45 + 8 * v71) = v75[0];

    v50 = *(v45 + 8 * v71);
    if (v67)
    {
    }

    else
    {
      sub_1C44686DC(v69, 0x4C746E65746E6F63, 0xEF65676175676E61, MEMORY[0x1E69E7CC0], v50);
    }

    v51 = *(v50 + 56);
    v52 = *(v51 + 8 * v69);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v52;
    v72 = v51;
    *(v51 + 8 * v69) = v52;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C458A6E0();
      v54 = v56;
      *(v51 + 8 * v69) = v56;
    }

    v55 = *(v54 + 16);
    if (v55 >= *(v54 + 24) >> 1)
    {
      sub_1C458A6E0();
      v54 = v57;
      *(v72 + 8 * v69) = v57;
    }

    *(v54 + 16) = v55 + 1;
    *(v54 + 8 * v55 + 32) = 0x6E657053656D6974;
    v68 = sub_1C455B584;
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C49B0B00@<X0>(uint64_t *a1@<X8>)
{
  sub_1C456902C(&qword_1EC0B9228, &unk_1C4F3DD70);
  result = sub_1C4F00F28();
  *a1 = result;
  return result;
}

void *sub_1C49B0B58(char a1)
{
  sub_1C456902C(&qword_1EC0C0B38, &qword_1C4F40020);
  sub_1C49B0EBC();
  v1 = sub_1C4F00F28();
  sub_1C4F01198();
  v2 = sub_1C4663244();

  if (!v2)
  {
    return v1;
  }

  if (!*(v2 + 16))
  {
    goto LABEL_38;
  }

  v3 = 0;
  v4 = v2 + 64;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = 0.0;
  while (v7)
  {
LABEL_11:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = *(*(v2 + 56) + ((v3 << 9) | (8 * v11)));
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = (v12 + 32);
      do
      {
        v15 = *v14++;
        v9 = v9 + v15;
        --v13;
      }

      while (v13);
    }
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v3;
    if (v7)
    {
      v3 = v10;
      goto LABEL_11;
    }
  }

  if (v9 <= 0.0)
  {
LABEL_38:

    return v1;
  }

  v16 = 0;
  v17 = 1 << *(v2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v2 + 64);
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
LABEL_24:
    v22 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v23 = v22 | (v16 << 6);
    v24 = *(*(v2 + 56) + 8 * v23);
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = (*(v2 + 48) + 16 * v23);
      v27 = *v26;
      v28 = v26[1];
      v29 = 0.0;
      v30 = 32;
      do
      {
        v29 = v29 + *(v24 + v30);
        v30 += 8;
        --v25;
      }

      while (v25);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v31 = sub_1C49B0F38(v27, v28);

      if (*(v31 + 16))
      {
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C457B14C(v31);
        v42 = v33;
        if (__OFADD__(v1[2], (v33 & 1) == 0))
        {
          goto LABEL_43;
        }

        v34 = v32;
        sub_1C456902C(&qword_1EC0C0B48, &qword_1C4F40028);
        if (sub_1C4F02458())
        {
          sub_1C457B14C(v31);
          v37 = v42;
          if ((v42 & 1) != (v36 & 1))
          {
            goto LABEL_45;
          }

          v34 = v35;
        }

        else
        {
          v37 = v42;
        }

        if (v37)
        {
          *(v1[7] + 8 * v34) = v29;
          goto LABEL_28;
        }

        v1[(v34 >> 6) + 8] |= 1 << v34;
        *(v1[6] + 8 * v34) = v31;
        *(v1[7] + 8 * v34) = v29;
        v38 = v1[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_44;
        }

        v1[2] = v40;
      }

      else
      {
LABEL_28:
      }
    }
  }

  while (1)
  {
    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v1;
    }

    v19 = *(v4 + 8 * v21);
    ++v16;
    if (v19)
    {
      v16 = v21;
      goto LABEL_24;
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

unint64_t sub_1C49B0EBC()
{
  result = qword_1EC0C0B40;
  if (!qword_1EC0C0B40)
  {
    sub_1C4572308(&qword_1EC0C0B38, &qword_1C4F40020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0B40);
  }

  return result;
}

uint64_t sub_1C49B0F38(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BE570, &qword_1C4F40030);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v54 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54 - v11;
  v56 = sub_1C456902C(&qword_1EC0BE568, &unk_1C4F374A0);
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54 - v19;
  v57 = a1;
  v58 = a2;
  sub_1C4415EA8();
  v21 = sub_1C4F02058();
  v22 = v21;
  v23 = v21[2];
  if (v23 != 2)
  {
    if (v23 != 1)
    {

      goto LABEL_8;
    }

    sub_1C440AE0C();
    sub_1C4EFCC18();
    sub_1C49B15CC(v20, a1, a2);
    v24 = sub_1C456902C(&qword_1EC0BE578, qword_1C4F374B0);
    if (sub_1C44157D4(v12, 1, v24) == 1)
    {
      v25 = sub_1C442CD68();
      v26(v25);
      sub_1C4423A0C(v12, &qword_1EC0BE570, &qword_1C4F40030);
LABEL_8:
      type metadata accessor for NLLanguage(0);
      sub_1C49B1760();
      return sub_1C4F00F28();
    }

    sub_1C456902C(&qword_1EC0C0B50, &qword_1C4F40038);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    *(inited + 32) = sub_1C4F01108();
    *(inited + 40) = 0;
    *(inited + 48) = 0xE000000000000000;
    type metadata accessor for NLLanguage(0);
    sub_1C49B1760();
    v42 = sub_1C4F00F28();
    v44 = sub_1C442CD68();
    v45(v44);
    v46 = v12;
LABEL_19:
    sub_1C4423A0C(v46, &qword_1EC0BE570, &qword_1C4F40030);
    return v42;
  }

  v27 = v21[4];
  v28 = v21[5];
  v29 = v21[6];
  v30 = v21[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v31 = MEMORY[0x1C693FEF0](v27, v28, v29, v30);
  v33 = v32;

  if (v22[2] >= 2uLL)
  {
    v54 = v31;
    v35 = v22[8];
    v36 = v22[9];
    v38 = v22[10];
    v37 = v22[11];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v39 = MEMORY[0x1C693FEF0](v35, v36, v38, v37);
    v41 = v40;

    sub_1C440AE0C();
    sub_1C4EFCC18();
    sub_1C4EFCC18();
    sub_1C49B15CC(v17, v54, v33);
    sub_1C49B15CC(v14, v39, v41);
    sub_1C456902C(&qword_1EC0BE578, qword_1C4F374B0);
    sub_1C440A6F0(v9);
    if (v47 || (sub_1C440A6F0(v6), v47))
    {

      sub_1C440A6F0(v9);
      if (!v47 && (sub_1C440A6F0(v6), v47))
      {
        sub_1C456902C(&qword_1EC0C0B50, &qword_1C4F40038);
        v48 = swift_initStackObject();
        *(v48 + 16) = xmmword_1C4F0D130;
        v49 = sub_1C4F01108();

        *(v48 + 32) = v49;
        *(v48 + 40) = 0;
        *(v48 + 48) = 0xE000000000000000;
        type metadata accessor for NLLanguage(0);
        sub_1C49B1760();
      }

      else
      {

        type metadata accessor for NLLanguage(0);
        sub_1C49B1760();
      }
    }

    else
    {
      sub_1C456902C(&qword_1EC0C0B50, &qword_1C4F40038);
      v50 = swift_initStackObject();
      *(v50 + 16) = xmmword_1C4F0D130;
      v51 = sub_1C4F01108();

      *(v50 + 32) = v51;
      *(v50 + 40) = v39;
      *(v50 + 48) = v41;
      type metadata accessor for NLLanguage(0);
      sub_1C49B1760();
    }

    v42 = sub_1C4F00F28();
    v52 = *(v55 + 8);
    v53 = v56;
    v52(v14, v56);
    v52(v17, v53);
    sub_1C4423A0C(v9, &qword_1EC0BE570, &qword_1C4F40030);
    v46 = v6;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C49B15CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_1C456902C(&qword_1EC0BE568, &unk_1C4F374A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1C49B17B8();
  sub_1C4EFCB68();
  sub_1C4AA0ED8(sub_1C49B181C, 0, a2, a3);
  sub_1C4EFCBC8();
  (*(v6 + 8))(v8, v5);
}

unint64_t sub_1C49B1760()
{
  result = qword_1EDDDBB40;
  if (!qword_1EDDDBB40)
  {
    type metadata accessor for NLLanguage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBB40);
  }

  return result;
}

unint64_t sub_1C49B17B8()
{
  result = qword_1EC0C0B58;
  if (!qword_1EC0C0B58)
  {
    sub_1C4572308(&qword_1EC0BE568, &unk_1C4F374A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0B58);
  }

  return result;
}

unint64_t sub_1C49B1820()
{
  result = qword_1EC0C0B68;
  if (!qword_1EC0C0B68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0C0B68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LanguageConsumptionStreamMediaType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C49B1944()
{
  result = qword_1EC0C0B80;
  if (!qword_1EC0C0B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0B80);
  }

  return result;
}

void *sub_1C49B19A4(_BYTE *a1)
{
  v1 = sub_1C49B7634(a1);

  return v1;
}

void *sub_1C49B19E8()
{
  v4 = sub_1C456902C(&qword_1EC0C0B88, &qword_1C4F40128);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v986 = &v852 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v852 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v852 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v993 = &v852 - v13;
  v14 = sub_1C4EF9DD8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C4413428();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C444FE10();
  v987 = v18;
  sub_1C4426C58();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C444FE10();
  sub_1C4413428();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C444FE10();
  v988 = v21;
  sub_1C4426C58();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C444FE10();
  sub_1C4413428();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C444FE10();
  v989 = v24;
  sub_1C4426C58();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C444FE10();
  sub_1C4413428();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C444FE10();
  v990 = v27;
  sub_1C4426C58();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C444FE10();
  sub_1C4413428();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C444FE10();
  v991 = v30;
  sub_1C4426C58();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C444FE10();
  sub_1C4413428();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C444FE10();
  v994 = v33;
  sub_1C4426C58();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C444FE10();
  sub_1C4413428();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C444FE10();
  v992 = v36;
  sub_1C4426C58();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C444FE10();
  sub_1C4413428();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C444FE10();
  sub_1C4413428();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C444FE10();
  sub_1C4413428();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C444FE10();
  i = v41;
  sub_1C4426C58();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C444FE10();
  sub_1C4413428();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C444FE10();
  v984 = v44;
  sub_1C4426C58();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C444FE10();
  sub_1C4413428();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C444FE10();
  v985 = v47;
  sub_1C4426C58();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C444FE10();
  sub_1C4413428();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v852 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v996 = &v852 - v53;
  type metadata accessor for NLLanguage(0);
  v55 = v54;
  v56 = sub_1C456902C(&qword_1EC0C0B90, &qword_1C4F40130);
  sub_1C49B7E34(&qword_1EDDDBB40, type metadata accessor for NLLanguage, &unk_1C4F0C800);
  v857 = v55;
  v999 = sub_1C4F00F28();
  v981 = sub_1C49BBC58();
  v998 = sub_1C49B02C0();
  sub_1C49BBF58();
  v58 = *(v57 + 16);
  v1000 = v15;
  v1001 = v14;
  v997 = v16;
  v974 = v8;
  if (v58)
  {
    v970 = v51;
    v971 = v11;
    v51 = v57 + 64;
    sub_1C43FD030();
    v1 = v60 & v59;
    v62 = v61 + 63;
    v63 = v15;
    v64 = v62 >> 6;
    v975 = v63 + 32;
    v969 = (v63 + 16);
    v968 = v16 + 7;
    v982 = (v63 + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4409E8C();
    v65 = 0;
    v67 = v66;
    v983 = v66;
    while (1)
    {
      v68 = v65;
      if (!v1)
      {
        break;
      }

LABEL_7:
      sub_1C43FE6F0();
      sub_1C4703354();
      sub_1C43FC1CC();
      v70 = v69;
      v71 = sub_1C486C29C(v56);
      if (v70 & 1) != 0 || (v73)
      {
        goto LABEL_539;
      }

      if (v16 != v72)
      {
        goto LABEL_498;
      }

      if (v67 == v71)
      {

        sub_1C4418958();
        v74 = sub_1C4F01108();
      }

      else
      {
        sub_1C44BBE60();
        v74 = sub_1C486BF1C();
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v75 = v74;
      sub_1C4703354();
      sub_1C43FC1CC();
      v77 = v76;
      v78 = sub_1C486C29C(v56);
      if (v77 & 1) != 0 || (v80)
      {
        goto LABEL_540;
      }

      if (v16 != v79)
      {
        goto LABEL_499;
      }

      if (v74 == v78)
      {

        v81 = v993;
        v82 = v1001;
        sub_1C440BAA8(v993, 1, 1, v1001);
        sub_1C4418958();
        sub_1C4EF9DC8();
        v83 = sub_1C44157D4(v81, 1, v82);
        v67 = v983;
        if (v83 != 1)
        {
          sub_1C49B7950(v993);
        }
      }

      else
      {
        v84 = v993;
        v85 = sub_1C44BBE60();
        sub_1C4BDF4BC(v85, v86);

        v87 = v1001;
        sub_1C440BAA8(v84, 0, 1, v1001);
        v88 = sub_1C4459BB0();
        v89(v88, v84, v87);
        v67 = v983;
      }

      if (*(v67 + 2))
      {
        sub_1C457B120(v56);
        v91 = v90;
        v93 = v92;

        v2 = 0.0;
        if (v93)
        {
          v2 = *(*(v67 + 7) + 8 * v91);
        }
      }

      else
      {

        v2 = 0.0;
      }

      v1 &= v1 - 1;
      v56 = sub_1C4F01138();
      v16 = v94;

      v95 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v95 = v56 & 0xFFFFFFFFFFFFLL;
      }

      if (v95)
      {
        v98 = v1000;
        v962 = *(v1000 + 16);
        v962(v970, v996, v1001);
        v99 = (*(v98 + 80) + 16) & ~*(v98 + 80);
        sub_1C446244C();
        v100 = swift_allocObject();
        (*(v98 + 32))(v100 + v99, v970, v1001);
        *&v67[v100] = v2;
        sub_1C441D710();
        sub_1C43FBDBC();
        v101 = swift_allocObject();
        sub_1C4414288(v101, &v992);
        sub_1C44754B4();
        sub_1C43FBDBC();
        v102 = swift_allocObject();
        sub_1C4414288(v102, &v991);
        sub_1C442F938();
        sub_1C44042C4();
        v103 = swift_allocObject();
        *(v103 + 16) = sub_1C49B78E0;
        *(v103 + 24) = v100;
        v977 = v100;
        v965 = v103;
        sub_1C4425D60(v980, &v1003);
        sub_1C4433D60();
        v980 = sub_1C457EB50();
        sub_1C43FC438();
        if (__OFADD__(v105, v106))
        {
          goto LABEL_506;
        }

        v107 = v104;
        sub_1C456902C(&qword_1EC0C0B98, &qword_1C4F40138);
        sub_1C440AE20();
        sub_1C4F02458();
        sub_1C444110C();
        if (v108)
        {
          v980 = sub_1C457EB50();
          sub_1C446BF70();
          if (!v109)
          {
            goto LABEL_542;
          }

          v67 = v999;
        }

        if ((v107 & 1) == 0)
        {
          sub_1C440BE20();
          v111 = v110();
          sub_1C457EB30(v980, v75, v111, v999);
          v112 = v75;
          v67 = v999;
        }

        v113 = *(v67 + 7);
        sub_1C44042C4();
        v114 = swift_allocObject();
        v115 = v967;
        v963 = v114;
        *(v114 + 16) = sub_1C49B78F8;
        *(v114 + 24) = v115;
        sub_1C446BC90();
        sub_1C4440D60(&v1005);
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C44050EC();
        *(v113 + 8 * v107) = v116;
        sub_1C457B1F0();
        v118 = sub_1C44365BC(v117, &v1004);
        sub_1C4403428(v118, v119);
        v122 = v120 + v121;
        if (__OFADD__(v120, v121))
        {
          goto LABEL_507;
        }

        sub_1C456902C(&qword_1EC0C0BA0, &unk_1C4F54200);
        sub_1C440AE20();
        v123 = sub_1C4F02458();
        v124 = v1002;
        if (v123)
        {
          sub_1C457B1F0();
          sub_1C4422B50(v125, &v1004);
          sub_1C4417468();
          if (!v109)
          {
            goto LABEL_542;
          }
        }

        sub_1C4440D60(&v1005);
        *(v113 + 8 * v122) = v124;

        v126 = *(v113 + 8 * v122);
        if ((v978 & 1) == 0)
        {
          sub_1C440BE20();
          v122 = v127();
          v128 = v865;
          v962(v865, v996, v1001);
          sub_1C457E054(v979, v128, v122, v126);
        }

        v129 = *(v126 + 56);
        sub_1C44042C4();
        v130 = swift_allocObject();
        v131 = v966;
        v962 = v130;
        *(v130 + 16) = sub_1C49B7E80;
        *(v130 + 24) = v131;
        sub_1C44493E8();
        sub_1C4440D60(&v1004);
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C44050EC();
        *(v129 + 8 * v122) = v132;
        v133 = sub_1C442FF14();
        v135 = sub_1C445FAA8(v133, v134);
        v136 = sub_1C44365BC(v135, &v1003);
        sub_1C4403428(v136, v137);
        v140 = v138 + v139;
        if (__OFADD__(v138, v139))
        {
          goto LABEL_508;
        }

        sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
        sub_1C440AE20();
        v141 = sub_1C4F02458();
        v142 = v1002;
        if (v141)
        {
          v143 = sub_1C442FF14();
          sub_1C445FAA8(v143, v144);
          sub_1C4417468();
          if (!v109)
          {
            goto LABEL_542;
          }

          v16 = v145;
        }

        else
        {
          v16 = v978;
        }

        sub_1C4440D60(&v1004);
        *(v129 + 8 * v140) = v142;

        v56 = *(v129 + 8 * v140);
        v146 = v962;
        if ((v980 & 1) == 0)
        {
          sub_1C440C5C8();
          sub_1C457DBD8(v16, 0x6472616F6279654BLL, 0xE900000000000073, v56);
        }

        *(*(v56 + 56) + 8 * v16) = v2;

        v147 = sub_1C4459BB0();
        v148(v147, v1001);
        v976[1] = sub_1C49B7948;
        v976[3] = sub_1C49B7E7C;
        v980 = sub_1C49B7918;
        v979 = sub_1C49B7E80;
        v976[7] = sub_1C49B78F8;
        v976[5] = sub_1C49B78E0;
        v976[4] = v977;
        v976[6] = v967;
        v977 = v966;
        v978 = v965;
        v976[2] = v963;
        v976[0] = v146;
        v67 = v983;
      }

      else
      {
        v96 = sub_1C4459BB0();
        v97(v96, v1001);
      }
    }

    while (1)
    {
      v65 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        break;
      }

      if (v65 >= v64)
      {

        v15 = v1000;
        v14 = v1001;
        v8 = v974;
        v11 = v971;
        goto LABEL_52;
      }

      v1 = *(v51 + 8 * v65);
      ++v68;
      if (v1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_488:
    __break(1u);
LABEL_489:
    __break(1u);
LABEL_490:
    __break(1u);
LABEL_491:
    __break(1u);
LABEL_492:
    __break(1u);
LABEL_493:
    __break(1u);
LABEL_494:
    __break(1u);
    goto LABEL_495;
  }

  sub_1C4409E8C();
LABEL_52:
  sub_1C49BC878();
  if (!*(v149 + 16))
  {

LABEL_82:
    v871 = 0;
    v875 = 0;
    v872 = 0;
    v983 = 0;
    v873 = 0;
    v874 = 0;
    goto LABEL_87;
  }

  sub_1C4868270(v149);
  if (!v150)
  {
    v150 = sub_1C4F01108();
  }

  v51 = v150;
  sub_1C4868288();

  sub_1C440029C(v11);
  if (v109)
  {
    sub_1C4418958();
    sub_1C4EF9DC8();
    sub_1C440029C(v11);
    if (!v109)
    {
      sub_1C49B7950(v11);
    }
  }

  else
  {
    (*(v15 + 32))(v985, v11, v14);
  }

  v151 = sub_1C4F01138();
  v153 = v152;

  v154 = HIBYTE(v153) & 0xF;
  if ((v153 & 0x2000000000000000) == 0)
  {
    v154 = v151 & 0xFFFFFFFFFFFFLL;
  }

  if (!v154)
  {
    sub_1C443DFA4();
    v194(v985, v14);

    goto LABEL_82;
  }

  v155 = v973;
  v996 = *(v15 + 16);
  (v996)(v973, v985, v14);
  v156 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v157 = swift_allocObject();
  (*(v15 + 32))(v157 + v156, v155, v14);
  sub_1C44042C4();
  v158 = swift_allocObject();
  *(v158 + 16) = sub_1C49B79B8;
  *(v158 + 24) = v157;
  v875 = v157;
  v983 = v158;
  v159 = v999;
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C4433D60();
  sub_1C457EB50();
  sub_1C43FC438();
  if (__OFADD__(v162, v163))
  {
LABEL_501:
    __break(1u);
LABEL_502:
    __break(1u);
    goto LABEL_503;
  }

  v164 = v160;
  v165 = v161;
  sub_1C456902C(&qword_1EC0C0B98, &qword_1C4F40138);
  sub_1C440AE20();
  sub_1C4F02458();
  sub_1C444110C();
  if (v166)
  {
    sub_1C457EB50();
    sub_1C446BF70();
    if (!v109)
    {
      goto LABEL_542;
    }

    sub_1C44553D0();
  }

  if ((v165 & 1) == 0)
  {
    v167 = (*(v983 + 16))();
    sub_1C457EB30(v164, v51, v167, v999);
    v168 = v51;
    v159 = v999;
  }

  v169 = *(v159 + 7);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C44050EC();
  *(v169 + 8 * v164) = v170;
  sub_1C457B1F0();
  sub_1C43FC438();
  v175 = v173 + v174;
  if (__OFADD__(v173, v174))
  {
    goto LABEL_502;
  }

  v176 = v171;
  v177 = v172;
  sub_1C456902C(&qword_1EC0C0BA0, &unk_1C4F54200);
  sub_1C4433588();
  v178 = sub_1C4F02458();
  v179 = v1002;
  if (v178)
  {
    sub_1C457B1F0();
    if ((v177 & 1) != (v181 & 1))
    {
      goto LABEL_542;
    }

    v176 = v180;
  }

  *(v169 + 8 * v164) = v179;

  v182 = *(v169 + 8 * v164);
  if ((v177 & 1) == 0)
  {
    sub_1C49B6EEC(&v1002);
    v183 = sub_1C4401E34();
    (v996)(v183, v985, v1001);
    sub_1C457E054(v176, v175, v1002, v182);
  }

  v184 = *(v182 + 56);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C44050EC();
  *(v184 + 8 * v176) = v185;
  sub_1C445FAA8(0x5220656369766544, 0xED00006E6F696765);
  sub_1C43FC438();
  v16 = v188 + v189;
  if (__OFADD__(v188, v189))
  {
    goto LABEL_504;
  }

  v190 = v186;
  v1 = v187;
  sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
  sub_1C4433588();
  v191 = sub_1C4F02458();
  v192 = v1002;
  if (v191)
  {
    sub_1C445FAA8(0x5220656369766544, 0xED00006E6F696765);
    sub_1C440F418();
    v8 = v974;
    if (!v109)
    {
      goto LABEL_542;
    }

    v190 = v193;
  }

  else
  {
    v8 = v974;
  }

  *(v184 + 8 * v176) = v192;

  v195 = *(v184 + 8 * v176);
  if ((v1 & 1) == 0)
  {
    sub_1C457DBD8(v190, 0x5220656369766544, 0xED00006E6F696765, v195);
  }

  *(*(v195 + 56) + 8 * v190) = 0x3FF0000000000000;

  v15 = v1000;
  v14 = v1001;
  sub_1C443DFA4();
  v196(v985, v14);
  v874 = sub_1C49B1998;
  v873 = sub_1C49B6EEC;
  v872 = sub_1C49B7E7C;
  v871 = sub_1C49B79B8;
LABEL_87:
  sub_1C49BCCB8();
  v198 = v197;
  if (!*(v197 + 16))
  {

LABEL_111:
    v867 = 0;
    v870 = 0;
    v868 = 0;
    v985 = 0;
    v869 = 0;
    goto LABEL_112;
  }

  sub_1C4868270(v197);
  if (!v199)
  {
    v199 = sub_1C4F01108();
  }

  v200 = v199;
  sub_1C4868288();

  sub_1C440029C(v8);
  if (v109)
  {
    sub_1C4418958();
    sub_1C4EF9DC8();
    sub_1C440029C(v8);
    if (!v109)
    {
      sub_1C49B7950(v8);
    }
  }

  else
  {
    (*(v15 + 32))(v984, v8, v14);
  }

  sub_1C4F01138();
  sub_1C43FC1CC();

  sub_1C441D2C4();
  if (!v201)
  {
    sub_1C443DFA4();
    v229(v984, v14);

    goto LABEL_111;
  }

  v1 = v15 + 16;
  v202 = *(v15 + 16);
  v203 = v972;
  v202(v972, v984, v14);
  sub_1C4441504();
  v204 = swift_allocObject();
  (*(v15 + 32))(v204 + v198, v203, v14);
  sub_1C44042C4();
  v205 = swift_allocObject();
  *(v205 + 16) = sub_1C49B7A44;
  *(v205 + 24) = v204;
  v870 = v204;
  v985 = v205;
  v206 = v999;
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C4433D60();
  sub_1C457EB50();
  sub_1C43FC438();
  if (__OFADD__(v209, v210))
  {
LABEL_503:
    __break(1u);
LABEL_504:
    __break(1u);
    goto LABEL_505;
  }

  v51 = v207;
  v211 = v208;
  sub_1C456902C(&qword_1EC0C0B98, &qword_1C4F40138);
  sub_1C440AE20();
  sub_1C4F02458();
  sub_1C444110C();
  if (v212)
  {
    sub_1C457EB50();
    sub_1C44331E4();
    if (!v109)
    {
      goto LABEL_542;
    }

    sub_1C440EFEC();
  }

  v996 = v202;
  if ((v211 & 1) == 0)
  {
    (*(v985 + 16))();
    v213 = sub_1C44584E8();
    sub_1C457EB30(v213, v200, v214, v999);
    v215 = v200;
    v206 = v999;
  }

  v8 = *(v206 + 7);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C44050EC();
  *(v8 + 8 * v51) = v216;
  sub_1C457B1F0();
  sub_1C43FC438();
  v16 = v219 + v220;
  if (__OFADD__(v219, v220))
  {
LABEL_505:
    __break(1u);
LABEL_506:
    __break(1u);
LABEL_507:
    __break(1u);
LABEL_508:
    __break(1u);
LABEL_509:
    __break(1u);
LABEL_510:
    __break(1u);
LABEL_511:
    __break(1u);
LABEL_512:
    __break(1u);
LABEL_513:
    __break(1u);
LABEL_514:
    __break(1u);
LABEL_515:
    __break(1u);
LABEL_516:
    __break(1u);
LABEL_517:
    __break(1u);
LABEL_518:
    __break(1u);
LABEL_519:
    __break(1u);
LABEL_520:
    __break(1u);
LABEL_521:
    __break(1u);
LABEL_522:
    __break(1u);
LABEL_523:
    __break(1u);
LABEL_524:
    __break(1u);
LABEL_525:
    __break(1u);
LABEL_526:
    __break(1u);
LABEL_527:
    __break(1u);
LABEL_528:
    __break(1u);
LABEL_529:
    __break(1u);
LABEL_530:
    __break(1u);
LABEL_531:
    __break(1u);
LABEL_532:
    __break(1u);
LABEL_533:
    __break(1u);
    goto LABEL_534;
  }

  v14 = v217;
  v221 = v218;
  sub_1C456902C(&qword_1EC0C0BA0, &unk_1C4F54200);
  sub_1C4433588();
  v222 = sub_1C4F02458();
  v223 = v1002;
  if ((v222 & 1) == 0)
  {
    goto LABEL_107;
  }

  sub_1C457B1F0();
  if ((v221 & 1) != (v225 & 1))
  {
LABEL_542:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  v14 = v224;
LABEL_107:
  *(v8 + 8 * v51) = v223;

  v226 = *(v8 + 8 * v51);
  if ((v221 & 1) == 0)
  {
    sub_1C49B6F34(&v1002);
    v227 = sub_1C4401E34();
    (v996)(v227, v984, v1001);
    sub_1C457E054(v14, v16, v1002, v226);
  }

  sub_1C466018C();

  v15 = v1000;
  sub_1C443DFA4();
  v228(v984);
  v869 = sub_1C49B6F34;
  v868 = sub_1C49B7E7C;
  v867 = sub_1C49B7A44;
LABEL_112:
  v230 = sub_1C49BD178();
  v231 = v230;
  if (!*(v230 + 16))
  {

    sub_1C441BA9C();
    goto LABEL_160;
  }

  v232 = v230 + 64;
  sub_1C43FD030();
  v8 = v234 & v233;
  v236 = (v235 + 63) >> 6;
  v965 = v15 + 32;
  v963 = (v15 + 16);
  v962 = (v997 + 7);
  v993 = v15 + 8;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C441BA9C();
  v1 = 0;
  v2 = 0.0;
  v996 = v231;
LABEL_114:
  v237 = v1;
  if (!v8)
  {
    goto LABEL_116;
  }

  do
  {
    v1 = v237;
LABEL_119:
    sub_1C442BCE0(__clz(__rbit64(v8)));
    swift_bridgeObjectRetain_n();
    v238 = sub_1C4703354();
    v240 = v239;
    v242 = v241;
    v243 = sub_1C486C29C(v231);
    if (v242 & 1) != 0 || (v245)
    {
      goto LABEL_541;
    }

    if (v240 != v244)
    {
      goto LABEL_500;
    }

    if (v238 == v243)
    {

      sub_1C4418958();
      v246 = sub_1C4F01108();
    }

    else
    {
      v246 = sub_1C486BF1C();
    }

    v247 = v986;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v248 = v246;
    sub_1C4868288();

    v249 = v1001;
    if (sub_1C44157D4(v247, 1, v1001) == 1)
    {
      sub_1C4418958();
      sub_1C4EF9DC8();
      if (sub_1C44157D4(v247, 1, v249) != 1)
      {
        sub_1C49B7950(v247);
      }
    }

    else
    {
      (*v965)(i, v247, v249);
    }

    v8 &= v8 - 1;
    v16 = sub_1C465C3F4(v231, v996);
    v51 = v250;

    v251 = sub_1C4F01138();
    v14 = v252;

    v253 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v253 = v251 & 0xFFFFFFFFFFFFLL;
    }

    if (v253)
    {
      v256 = sub_1C442F6EC();
      v257 = v1000;
      v957 = *(v1000 + 16);
      (v957)(v964, i, v1001, v256);
      sub_1C4441504();
      sub_1C4407384();
      v258 = swift_allocObject();
      (*(v257 + 32))(v258 + v251, v964, v1001);
      *(v258 + v16) = v3;
      sub_1C443EF40();
      sub_1C43FBDBC();
      v259 = swift_allocObject();
      sub_1C443F24C(v259, &v986);
      sub_1C4471CE0();
      sub_1C43FBDBC();
      v260 = swift_allocObject();
      sub_1C443F24C(v260, &v985);
      sub_1C44AE090();
      sub_1C44042C4();
      v261 = swift_allocObject();
      *(v261 + 16) = sub_1C49B7AB4;
      *(v261 + 24) = v258;
      v974 = v258;
      v959 = v261;
      sub_1C4425D60(v984, &v1000);
      sub_1C4433D60();
      v984 = sub_1C457EB50();
      sub_1C43FC438();
      v265 = v263 + v264;
      if (__OFADD__(v263, v264))
      {
        goto LABEL_509;
      }

      v266 = v262;
      sub_1C456902C(&qword_1EC0C0B98, &qword_1C4F40138);
      sub_1C440AE20();
      sub_1C4F02458();
      sub_1C444110C();
      if (v267)
      {
        sub_1C457EB50();
        sub_1C43FED0C();
        if (!v109)
        {
          goto LABEL_542;
        }

        sub_1C44553D0();
        if (v266)
        {
          goto LABEL_142;
        }
      }

      else
      {
        v265 = v984;
        if (v266)
        {
LABEL_142:
          v271 = *(v251 + 56);
          sub_1C44042C4();
          v272 = swift_allocObject();
          v273 = v961;
          v958 = v272;
          *(v272 + 16) = sub_1C49B7ACC;
          *(v272 + 24) = v273;
          sub_1C445ABE8();
          swift_isUniquelyReferenced_nonNull_native();
          sub_1C44050EC();
          v984 = v265;
          *(v271 + 8 * v265) = v274;
          sub_1C457B1F0();
          v276 = sub_1C44365BC(v275, &v1007);
          sub_1C4403428(v276, v277);
          if (__OFADD__(v278, v279))
          {
            goto LABEL_510;
          }

          sub_1C456902C(&qword_1EC0C0BA0, &unk_1C4F54200);
          sub_1C440AE20();
          v280 = sub_1C4F02458();
          v281 = v1002;
          if (v280)
          {
            sub_1C457B1F0();
            sub_1C4417468();
            if (!v109)
            {
              goto LABEL_542;
            }

            v283 = v282;
          }

          else
          {
            v283 = v982;
          }

          v284 = v984;
          *(v271 + 8 * v984) = v281;

          v285 = *(v271 + 8 * v284);
          if ((v975 & 1) == 0)
          {
            sub_1C440BE20();
            v286();
            v287 = sub_1C43FDA80();
            (v957)(v287, i, v1001);
            sub_1C4435970(v283);
          }

          v51 = *(v285 + 56);
          sub_1C44042C4();
          v288 = swift_allocObject();
          v289 = v960;
          v957 = v288;
          *(v288 + 16) = sub_1C49B7AEC;
          *(v288 + 24) = v289;
          sub_1C443E1C0();
          swift_isUniquelyReferenced_nonNull_native();
          sub_1C44050EC();
          v982 = v283;
          *(v51 + 8 * v283) = v290;
          v291 = sub_1C44351D4();
          v293 = sub_1C445FAA8(v291, v292);
          sub_1C44365BC(v293, &v1000);
          LODWORD(v984) = v294;
          sub_1C440E4D8();
          if (v295)
          {
            goto LABEL_511;
          }

          sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
          sub_1C440AE20();
          v296 = sub_1C4F02458();
          v297 = v1002;
          if (v296)
          {
            v298 = sub_1C44351D4();
            v300 = sub_1C445FAA8(v298, v299);
            v302 = v982;
            if ((v984 & 1) != (v301 & 1))
            {
              goto LABEL_542;
            }

            v14 = v300;
          }

          else
          {
            v302 = v982;
            v14 = v975;
          }

          *(v51 + 8 * v302) = v297;

          v16 = *(v51 + 8 * v302);
          v303 = v957;
          if ((v984 & 1) == 0)
          {
            sub_1C440C5C8();
            sub_1C457DBD8(v14, 0x6E6F697461636F4CLL, 0xE900000000000073, v16);
          }

          *(*(v16 + 56) + 8 * v14) = v3;

          v304 = sub_1C447CC2C();
          v305(v304);
          v967 = sub_1C49B7E84;
          v969 = sub_1C49B7E7C;
          v984 = sub_1C49B7E7C;
          v982 = sub_1C49B7AEC;
          v973 = sub_1C49B7ACC;
          v971 = sub_1C49B7AB4;
          v970 = v974;
          v972 = v961;
          v974 = v960;
          v975 = v959;
          v968 = v958;
          v966 = v303;
          v231 = v996;
          goto LABEL_114;
        }
      }

      sub_1C440BE20();
      v269 = v268();
      sub_1C457EB30(v265, v248, v269, v999);
      v270 = v248;
      v251 = v999;
      goto LABEL_142;
    }

    v254 = sub_1C447CC2C();
    v255(v254);

    v237 = v1;
    v231 = v996;
  }

  while (v8);
  while (1)
  {
LABEL_116:
    v1 = v237 + 1;
    if (__OFADD__(v237, 1))
    {
      goto LABEL_488;
    }

    if (v1 >= v236)
    {
      break;
    }

    v8 = *(v232 + 8 * v1);
    ++v237;
    if (v8)
    {
      goto LABEL_119;
    }
  }

LABEL_160:
  v306 = sub_1C49BD738(v981);
  if (!*(v306 + 16))
  {

    sub_1C4415AA0();
    goto LABEL_195;
  }

  sub_1C43FD030();
  sub_1C4430684();
  sub_1C4415AA0();
  v51 = 0;
  while (2)
  {
    v307 = v51;
    if (v1)
    {
LABEL_166:
      v308 = sub_1C4440A14();
      v2 = 0.0;
      if (v231)
      {
        v231 = v306;
        v309 = sub_1C457EB50();
        if (v310)
        {
          v2 = *(*(v306 + 56) + 8 * v309);
        }
      }

      v1 &= v1 - 1;
      sub_1C4F01138();
      sub_1C43FC1CC();

      sub_1C441D2C4();
      if (!v311)
      {

        continue;
      }

      sub_1C43FBDBC();
      v312 = swift_allocObject();
      v312[2] = v2;
      sub_1C44A17EC();
      sub_1C4418958();
      sub_1C4EF9DC8();
      sub_1C43FBDBC();
      v313 = swift_allocObject();
      sub_1C4414288(v313, &v979);
      sub_1C445BDB4();
      sub_1C43FBDBC();
      v314 = swift_allocObject();
      sub_1C4414288(v314, &v978);
      sub_1C44239FC(v986, v964);
      sub_1C44042C4();
      v315 = swift_allocObject();
      *(v315 + 16) = sub_1C49B7AF4;
      *(v315 + 24) = v312;
      v964 = v312;
      v952 = v315;
      sub_1C4425D60(v14, &v990);
      sub_1C4433D60();
      v986 = sub_1C457EB50();
      LODWORD(v993) = v316;
      sub_1C440E4D8();
      if (v295)
      {
        goto LABEL_512;
      }

      sub_1C456902C(&qword_1EC0C0B98, &qword_1C4F40138);
      sub_1C440AE20();
      sub_1C4F02458();
      sub_1C444110C();
      if (v317)
      {
        sub_1C457EB50();
        sub_1C4460AA4();
        if (!v109)
        {
          goto LABEL_542;
        }

        sub_1C44553D0();
        if (v318)
        {
          goto LABEL_179;
        }
      }

      else
      {
        v14 = v986;
        if (v993)
        {
LABEL_179:
          v322 = *(v312 + 7);
          sub_1C44042C4();
          v323 = swift_allocObject();
          v324 = v954;
          v951 = v323;
          *(v323 + 16) = sub_1C49B7B14;
          *(v323 + 24) = v324;
          sub_1C4424754();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_1C441ED78(isUniquelyReferenced_nonNull_native, &v988);
          v986 = v14;
          *(v322 + 8 * v14) = v326;
          sub_1C49B7E88();
          sub_1C457B1F0();
          v993 = v327;
          sub_1C4403428(v327, v328);
          if (__OFADD__(v329, v330))
          {
            goto LABEL_513;
          }

          sub_1C456902C(&qword_1EC0C0BA0, &unk_1C4F54200);
          sub_1C4433588();
          v331 = sub_1C4475B10();
          v332 = v1002;
          if (v331)
          {
            sub_1C49B7E88();
            sub_1C457B1F0();
            v993 = v333;
            sub_1C4417468();
            v334 = v986;
            if (!v109)
            {
              goto LABEL_542;
            }
          }

          else
          {
            v334 = v986;
          }

          *(v322 + 8 * v334) = v332;

          v335 = *(v322 + 8 * v334);
          if ((v965 & 1) == 0)
          {
            sub_1C440BE20();
            v336();
            sub_1C44223D0();
            v334 = v865;
            v337(v865, v955, v1001);
            sub_1C44807C8();
          }

          v338 = *(v335 + 56);
          sub_1C44042C4();
          v339 = swift_allocObject();
          v340 = v953;
          v950 = v339;
          *(v339 + 16) = sub_1C49B7E80;
          *(v339 + 24) = v340;
          sub_1C44289D0();
          sub_1C4418078();
          v341 = swift_isUniquelyReferenced_nonNull_native();
          sub_1C441ED78(v341, &v988);
          *(v338 + 8 * v334) = v342;
          v343 = sub_1C440F860();
          v986 = sub_1C445FAA8(v343, v344);
          sub_1C4403428(v986, v345);
          v348 = v346 + v347;
          if (__OFADD__(v346, v347))
          {
            goto LABEL_514;
          }

          sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
          sub_1C4433588();
          v349 = sub_1C4475B10();
          v231 = v1002;
          if (v349)
          {
            v350 = sub_1C440F860();
            v986 = sub_1C445FAA8(v350, v351);
            sub_1C4417468();
            if (!v109)
            {
              goto LABEL_542;
            }
          }

          sub_1C4418078();
          *(v338 + 8 * v348) = v231;

          v16 = *(v338 + 8 * v348);
          v352 = v986;
          if ((v965 & 1) == 0)
          {
            v231 = v950;
            sub_1C49B7948(&v1002);
            sub_1C457DBD8(v352, 0x736567617373654DLL, 0xE800000000000000, v16);
          }

          *(*(v16 + 56) + 8 * v352) = v2;

          (*v996)(v955, v1001);
          v957 = sub_1C49B7E84;
          v959 = sub_1C49B7E7C;
          v14 = sub_1C49B7E7C;
          v986 = sub_1C49B7E80;
          v963 = sub_1C49B7B14;
          v961 = sub_1C49B7AF4;
          v960 = v964;
          v962 = v954;
          v964 = v953;
          v965 = v952;
          v958 = v951;
          v956 = v950;
          continue;
        }
      }

      sub_1C440BE20();
      v320 = v319();
      sub_1C441B464(v320);
      v321 = v308;
      v312 = v999;
      goto LABEL_179;
    }

    break;
  }

  while (1)
  {
    v51 = v307 + 1;
    if (__OFADD__(v307, 1))
    {
      goto LABEL_489;
    }

    if (v51 >= v8)
    {
      break;
    }

    v1 = *(v306 + 64 + 8 * v51);
    ++v307;
    if (v1)
    {
      goto LABEL_166;
    }
  }

LABEL_195:
  v353 = sub_1C49BDC4C(v981);

  v354 = *(v353 + 16);
  v866 = v14;
  if (v354)
  {
    sub_1C43FD030();
    sub_1C4430684();
    sub_1C442E0AC();
    v51 = 0;
    while (1)
    {
      v355 = v51;
      if (!v1)
      {
        break;
      }

LABEL_201:
      v356 = sub_1C4440A14();
      v2 = 0.0;
      if (v231)
      {
        v231 = v353;
        v357 = sub_1C457EB50();
        if (v358)
        {
          v2 = *(*(v353 + 56) + 8 * v357);
        }
      }

      v1 &= v1 - 1;
      sub_1C4F01138();
      sub_1C43FC1CC();

      sub_1C441D2C4();
      if (v359)
      {
        sub_1C43FBDBC();
        v360 = swift_allocObject();
        v360[2] = v2;
        sub_1C4460864();
        sub_1C4418958();
        sub_1C4EF9DC8();
        sub_1C43FBDBC();
        v361 = swift_allocObject();
        sub_1C4414288(v361, &v975);
        sub_1C44EB8A0();
        sub_1C43FBDBC();
        v362 = swift_allocObject();
        sub_1C4414288(v362, &v974);
        v363 = sub_1C49B7E88();
        sub_1C44239FC(v363, v953);
        sub_1C44042C4();
        v364 = swift_allocObject();
        *(v364 + 16) = sub_1C49B7B34;
        *(v364 + 24) = v360;
        v953 = v360;
        v941 = v364;
        sub_1C4425D60(v981, &v979);
        sub_1C4433D60();
        v365 = sub_1C457EB50();
        sub_1C44365BC(v365, &v1006);
        LODWORD(v993) = v366;
        sub_1C440E4D8();
        if (v295)
        {
          goto LABEL_515;
        }

        sub_1C456902C(&qword_1EC0C0B98, &qword_1C4F40138);
        sub_1C440AE20();
        sub_1C4F02458();
        sub_1C444110C();
        if (v367)
        {
          sub_1C457EB50();
          sub_1C4460AA4();
          if (!v109)
          {
            goto LABEL_542;
          }

          sub_1C44553D0();
        }

        else
        {
          v14 = v981;
          v368 = v993;
        }

        if ((v368 & 1) == 0)
        {
          sub_1C440BE20();
          v370 = v369();
          sub_1C441B464(v370);
          v371 = v356;
          v360 = v999;
        }

        v372 = *(v360 + 7);
        sub_1C44042C4();
        v373 = swift_allocObject();
        v374 = v943;
        v940 = v373;
        *(v373 + 16) = sub_1C49B7B54;
        *(v373 + 24) = v374;
        sub_1C4495254();
        v375 = swift_isUniquelyReferenced_nonNull_native();
        sub_1C441ED78(v375, &v979);
        v981 = v14;
        *(v372 + 8 * v14) = v376;
        sub_1C4401830();
        sub_1C457B1F0();
        v993 = v377;
        sub_1C4403428(v377, v378);
        if (__OFADD__(v379, v380))
        {
          goto LABEL_516;
        }

        sub_1C456902C(&qword_1EC0C0BA0, &unk_1C4F54200);
        sub_1C4433588();
        v381 = sub_1C4475B10();
        v382 = v1002;
        if (v381)
        {
          sub_1C4401830();
          sub_1C457B1F0();
          v993 = v383;
          sub_1C4417468();
          v384 = v981;
          if (!v109)
          {
            goto LABEL_542;
          }
        }

        else
        {
          v384 = v981;
        }

        *(v372 + 8 * v384) = v382;

        v385 = *(v372 + 8 * v384);
        if ((v955 & 1) == 0)
        {
          sub_1C440BE20();
          v386();
          sub_1C44223D0();
          v384 = v865;
          v387(v865, v944, v1001);
          sub_1C44807C8();
        }

        v388 = *(v385 + 56);
        sub_1C44042C4();
        v389 = swift_allocObject();
        v390 = v942;
        v939 = v389;
        *(v389 + 16) = sub_1C49B7E80;
        *(v389 + 24) = v390;
        sub_1C447F54C();
        sub_1C4418078();
        v391 = swift_isUniquelyReferenced_nonNull_native();
        sub_1C441ED78(v391, &v979);
        *(v388 + 8 * v384) = v392;
        v393 = sub_1C4405E18();
        v395 = sub_1C445FAA8(v393, v394);
        v396 = sub_1C44365BC(v395, &v1006);
        sub_1C4403428(v396, v397);
        v400 = v398 + v399;
        if (__OFADD__(v398, v399))
        {
          goto LABEL_517;
        }

        sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
        sub_1C4433588();
        v401 = sub_1C4475B10();
        v402 = v1002;
        if (v401)
        {
          v403 = sub_1C4405E18();
          v405 = sub_1C445FAA8(v403, v404);
          sub_1C4422B50(v405, &v1006);
          sub_1C4417468();
          if (!v109)
          {
            goto LABEL_542;
          }
        }

        sub_1C4418078();
        *(v388 + 8 * v400) = v402;

        v16 = *(v388 + 8 * v400);
        v231 = v939;
        v14 = v981;
        if ((v955 & 1) == 0)
        {
          sub_1C440C5C8();
          sub_1C457DBD8(v14, 0x697261666153, 0xE600000000000000, v16);
        }

        *(*(v16 + 56) + 8 * v14) = v2;

        (*v996)(v944, v1001);
        v946 = sub_1C49B7E84;
        v948 = sub_1C49B7E7C;
        v981 = sub_1C49B7E7C;
        v955 = sub_1C49B7E80;
        v952 = sub_1C49B7B54;
        v950 = sub_1C49B7B34;
        v949 = v953;
        v951 = v943;
        v953 = v942;
        v954 = v941;
        v947 = v940;
        v945 = v231;
      }

      else
      {
      }
    }

    while (1)
    {
      v51 = v355 + 1;
      if (__OFADD__(v355, 1))
      {
        goto LABEL_490;
      }

      if (v51 >= v8)
      {
        break;
      }

      v1 = *(v353 + 64 + 8 * v51);
      ++v355;
      if (v1)
      {
        goto LABEL_201;
      }
    }
  }

  else
  {

    sub_1C442E0AC();
  }

  v406 = sub_1C49B0B58(3);
  v407 = v994;
  if (v406[2])
  {
    sub_1C43FD030();
    sub_1C44007A8();
    v932 = v408;
    sub_1C4441970();
    sub_1C447CDF0(v409);
    sub_1C4414CEC();
    v410 = 0;
    v2 = 0.0;
    for (i = v0; ; v0 = i)
    {
      v411 = v410;
      if (!v353)
      {
        break;
      }

      while (1)
      {
        v410 = v411;
        sub_1C442BCE0(__clz(__rbit64(v353)));
        swift_bridgeObjectRetain_n();
        sub_1C4868270(v231);
        v413 = v412;

        v414 = v992;
        if (v413)
        {
          v996 = v413;
        }

        else
        {
          sub_1C4418958();
          v996 = sub_1C4F01108();
        }

        sub_1C4423C28();
        sub_1C4868354();
        sub_1C447F9C0();
        sub_1C442A458();
        sub_1C4EF9DE8();
        sub_1C465C40C(v231, v406);
        sub_1C442A718();
        if (v406)
        {
          break;
        }

        v415 = sub_1C44602E4();
        v416(v415);

        v411 = v410;
      }

      v417 = sub_1C442F6EC();
      v418 = v1001;
      v925 = *(v1000 + 16);
      v925(v933, v414, v1001, v417);
      sub_1C4441504();
      sub_1C4407384();
      v419 = swift_allocObject();
      sub_1C444AD3C();
      v420();
      *&v413[v419] = v3;
      sub_1C445A998();
      sub_1C43FBDBC();
      v421 = swift_allocObject();
      sub_1C443F24C(v421, &v960);
      sub_1C447E300();
      sub_1C43FBDBC();
      v422 = swift_allocObject();
      sub_1C443F24C(v422, &v959);
      sub_1C449DAE4();
      sub_1C44042C4();
      v423 = swift_allocObject();
      *(v423 + 16) = sub_1C49B7B74;
      *(v423 + 24) = v419;
      v941 = v419;
      v927 = v423;
      v424 = sub_1C4401830();
      sub_1C4425D60(v424, &v974);
      sub_1C4433D60();
      v425 = sub_1C457EB50();
      sub_1C44365BC(v425, &v975);
      LODWORD(v944) = v426;
      sub_1C4411FD4();
      if (v295)
      {
        goto LABEL_518;
      }

      sub_1C456902C(&qword_1EC0C0B98, &qword_1C4F40138);
      sub_1C440AE20();
      sub_1C4F02458();
      sub_1C444110C();
      v407 = v994;
      if (v427)
      {
        v428 = v996;
        sub_1C457EB50();
        if ((v944 & 1) != (v429 & 1))
        {
          goto LABEL_542;
        }

        sub_1C440EFEC();
      }

      else
      {
        v428 = v996;
        v418 = v943;
        v430 = v944;
      }

      if ((v430 & 1) == 0)
      {
        sub_1C440BE20();
        v431();
        v432 = sub_1C44584E8();
        sub_1C457EB30(v432, v428, v433, v999);
        v434 = v428;
        v231 = v999;
      }

      v996 = v428;
      v435 = *(v231 + 7);
      sub_1C44042C4();
      v436 = swift_allocObject();
      v437 = v929;
      v926 = v436;
      *(v436 + 16) = sub_1C49B7B8C;
      *(v436 + 24) = v437;
      sub_1C4488590();
      v438 = swift_isUniquelyReferenced_nonNull_native();
      sub_1C43FF314(v438, &v974);
      v943 = v418;
      *(v435 + 8 * v418) = v439;
      sub_1C457B1F0();
      v944 = v440;
      sub_1C442CD84();
      if (v295)
      {
        goto LABEL_519;
      }

      v442 = v441;
      sub_1C456902C(&qword_1EC0C0BA0, &unk_1C4F54200);
      sub_1C4433588();
      if (sub_1C444C2B8())
      {
        sub_1C457B1F0();
        v944 = v443;
        sub_1C440F418();
        if (!v109)
        {
          goto LABEL_542;
        }
      }

      sub_1C445BFA4(&v975);
      v444 = *(v435 + 8 * v442);
      if ((v442 & 1) == 0)
      {
        sub_1C440BE20();
        v445();
        v446 = sub_1C43FDA80();
        (v925)(v446, v992, v1001);
        v447 = sub_1C4401830();
        sub_1C4435970(v447);
      }

      v448 = *(v444 + 56);
      sub_1C44042C4();
      v449 = swift_allocObject();
      v450 = v928;
      *(v449 + 16) = sub_1C49B7E80;
      *(v449 + 24) = v450;
      sub_1C44627E4();
      v451 = v944;
      v452 = swift_isUniquelyReferenced_nonNull_native();
      sub_1C43FF314(v452, &v972);
      *(v448 + 8 * v451) = v453;
      v454 = sub_1C441DD70();
      v456 = sub_1C445FAA8(v454, v455);
      sub_1C44365BC(v456, &v975);
      LODWORD(v942) = v457;
      sub_1C4411FD4();
      if (v295)
      {
        goto LABEL_520;
      }

      sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
      sub_1C4433588();
      if (sub_1C444C2B8())
      {
        v458 = sub_1C441DD70();
        v460 = sub_1C445FAA8(v458, v459);
        sub_1C4422B50(v460, &v975);
        sub_1C4417468();
        if (!v109)
        {
          goto LABEL_542;
        }
      }

      sub_1C445BFA4(v976);
      v16 = *(v448 + 8 * v449);
      v231 = v449;
      v51 = v943;
      if ((v942 & 1) == 0)
      {
        sub_1C440C5C8();
        sub_1C457DBD8(v51, 0x736B6F6F42, 0xE500000000000000, v16);
      }

      *(*(v16 + 56) + 8 * v51) = v3;

      (*v993)(v992, v1001);
      v935 = sub_1C49B7E84;
      v937[0] = sub_1C49B7E7C;
      v944 = sub_1C49B7E7C;
      v943 = sub_1C49B7E80;
      v940 = sub_1C49B7B8C;
      v938 = sub_1C49B7B74;
      v937[1] = v941;
      v939 = v929;
      v941 = v928;
      v942 = v927;
      v936 = v926;
      v934 = v449;
    }

    while (1)
    {
      if (__OFADD__(v411, 1))
      {
        goto LABEL_491;
      }

      if (v411 + 1 >= v0)
      {
        break;
      }

      sub_1C448F174();
    }
  }

  else
  {

    sub_1C4414CEC();
  }

  v461 = sub_1C49B0B58(6);
  if (v461[2])
  {
    sub_1C43FD030();
    sub_1C44007A8();
    v921 = v462;
    sub_1C4441970();
    sub_1C447CDF0(v463);
    sub_1C443FD80();
    v464 = 0;
    v2 = 0.0;
    for (i = v0; ; v0 = i)
    {
      v465 = v464;
      if (!v353)
      {
        break;
      }

      while (1)
      {
        v464 = v465;
        sub_1C442BCE0(__clz(__rbit64(v353)));
        v466 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4868270(v466);
        if (!v467)
        {
          v467 = sub_1C4F01108();
        }

        v996 = v467;
        sub_1C4423C28();
        sub_1C4868354();
        sub_1C447F9C0();
        sub_1C442A458();
        sub_1C4EF9DE8();
        sub_1C465C40C(v231, v461);
        sub_1C442A718();
        if (v461)
        {
          break;
        }

        v468 = sub_1C44602E4();
        v469(v468);

        v465 = v464;
      }

      v470 = sub_1C442F6EC();
      v471 = v1001;
      v914 = *(v1000 + 16);
      (v914)(v922, v407, v1001, v470);
      sub_1C4441504();
      sub_1C4407384();
      v472 = swift_allocObject();
      sub_1C444AD3C();
      v473();
      *(v472 + v16) = v3;
      sub_1C4495D2C();
      sub_1C43FBDBC();
      v474 = swift_allocObject();
      sub_1C443F24C(v474, &v949);
      sub_1C444343C();
      sub_1C43FBDBC();
      v475 = swift_allocObject();
      sub_1C443F24C(v475, &v948);
      sub_1C4428EC4();
      sub_1C44042C4();
      v476 = swift_allocObject();
      *(v476 + 16) = sub_1C49B7BAC;
      *(v476 + 24) = v472;
      v931 = v472;
      v916 = v476;
      sub_1C4425D60(v992, &v963);
      sub_1C4433D60();
      v477 = sub_1C457EB50();
      sub_1C44365BC(v477, &v964);
      LODWORD(v992) = v478;
      sub_1C4411FD4();
      if (v295)
      {
        goto LABEL_521;
      }

      sub_1C456902C(&qword_1EC0C0B98, &qword_1C4F40138);
      sub_1C440AE20();
      sub_1C4F02458();
      sub_1C444110C();
      v407 = v994;
      if (v479)
      {
        v480 = v996;
        sub_1C457EB50();
        if ((v992 & 1) != (v481 & 1))
        {
          goto LABEL_542;
        }

        sub_1C440EFEC();
      }

      else
      {
        v480 = v996;
        v471 = v933;
        v482 = v992;
      }

      if ((v482 & 1) == 0)
      {
        sub_1C440BE20();
        v483();
        v484 = sub_1C44584E8();
        sub_1C457EB30(v484, v480, v485, v999);
        v486 = v480;
        v231 = v999;
      }

      v996 = v480;
      v487 = *(v231 + 7);
      sub_1C44042C4();
      v488 = swift_allocObject();
      v489 = v918;
      v915 = v488;
      *(v488 + 16) = sub_1C49B7BC4;
      *(v488 + 24) = v489;
      sub_1C445C198();
      v490 = swift_isUniquelyReferenced_nonNull_native();
      sub_1C43FF314(v490, &v963);
      v933 = v471;
      *(v487 + 8 * v471) = v491;
      sub_1C457B1F0();
      v992 = v492;
      sub_1C442CD84();
      if (v295)
      {
        goto LABEL_522;
      }

      v494 = v493;
      sub_1C456902C(&qword_1EC0C0BA0, &unk_1C4F54200);
      sub_1C4433588();
      if (sub_1C444C2B8())
      {
        sub_1C457B1F0();
        v992 = v495;
        sub_1C440F418();
        if (!v109)
        {
          goto LABEL_542;
        }
      }

      sub_1C445BFA4(&v964);
      v496 = *(v487 + 8 * v494);
      if ((v494 & 1) == 0)
      {
        sub_1C440BE20();
        v497();
        v498 = sub_1C43FDA80();
        (v914)(v498, v407, v1001);
        sub_1C4435970(v992);
      }

      v499 = *(v496 + 56);
      sub_1C44042C4();
      v500 = swift_allocObject();
      v501 = v917;
      *(v500 + 16) = sub_1C49B7E80;
      *(v500 + 24) = v501;
      sub_1C441E084();
      v502 = v992;
      v503 = swift_isUniquelyReferenced_nonNull_native();
      sub_1C43FF314(v503, &v961);
      *(v499 + 8 * v502) = v504;
      v505 = sub_1C43FC61C();
      v507 = sub_1C445FAA8(v505, v506);
      sub_1C44365BC(v507, &v964);
      LODWORD(v932) = v508;
      sub_1C4411FD4();
      if (v295)
      {
        goto LABEL_523;
      }

      sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
      sub_1C4433588();
      v509 = sub_1C444C2B8();
      v510 = v1002;
      if (v509)
      {
        v511 = sub_1C43FC61C();
        v513 = sub_1C445FAA8(v511, v512);
        sub_1C4422B50(v513, &v964);
        sub_1C4417468();
        if (!v109)
        {
          goto LABEL_542;
        }
      }

      v514 = v500;
      v515 = v992;
      *(v499 + 8 * v992) = v510;

      v16 = *(v499 + 8 * v515);
      v231 = v514;
      v51 = v933;
      if ((v932 & 1) == 0)
      {
        sub_1C440C5C8();
        sub_1C457DBD8(v51, 0x6F6F626F69647541, 0xEA0000000000736BLL, v16);
      }

      *(*(v16 + 56) + 8 * v51) = v3;

      v516 = sub_1C44602E4();
      v517(v516);
      v924 = sub_1C49B7E84;
      v926 = sub_1C49B7E7C;
      v992 = sub_1C49B7E7C;
      v933 = sub_1C49B7E80;
      v930 = sub_1C49B7BC4;
      v928 = sub_1C49B7BAC;
      v927 = v931;
      v929 = v918;
      v931 = v917;
      v932 = v916;
      v925 = v915;
      v923 = v231;
    }

    while (1)
    {
      if (__OFADD__(v465, 1))
      {
        goto LABEL_492;
      }

      if (v465 + 1 >= v0)
      {
        break;
      }

      sub_1C448F174();
    }
  }

  else
  {

    sub_1C443FD80();
  }

  sub_1C49B0B58(1);
  sub_1C44606B0();
  if (v518)
  {
    sub_1C43FD030();
    sub_1C44007A8();
    sub_1C4434630();
    sub_1C4441970();
    sub_1C442F280(v519);
    sub_1C441E4E4();
    v520 = 0;
    sub_1C440CCB4();
    while (1)
    {
      v521 = v520;
      if (!v353)
      {
        break;
      }

      while (1)
      {
        v520 = v521;
        sub_1C44184C8();
        sub_1C442BCE0(v522);
        swift_bridgeObjectRetain_n();
        sub_1C4868270(v231);
        v524 = v523;

        if (!v524)
        {
          sub_1C4418958();
          v524 = sub_1C4F01108();
        }

        sub_1C4423C28();
        sub_1C4868354();
        sub_1C447F9C0();
        sub_1C442A458();
        v525 = v991;
        sub_1C4EF9DE8();
        sub_1C465C40C(v231, v407);
        sub_1C4414618();
        if (v407)
        {
          break;
        }

        v526 = sub_1C44044D0();
        v527(v526);

        sub_1C443F698();
      }

      sub_1C4408C78();
      v528 = sub_1C441AF98(&v941);
      v902 = v529;
      (v529)(v528);
      sub_1C442EC00();
      sub_1C4407384();
      v530 = swift_allocObject();
      sub_1C44167FC(v530);
      sub_1C444AD3C();
      v531();
      *(v525 + v16) = v3;
      sub_1C449AECC();
      sub_1C43FBDBC();
      v532 = swift_allocObject();
      sub_1C443F24C(v532, &v938);
      sub_1C442576C();
      sub_1C43FBDBC();
      v533 = swift_allocObject();
      sub_1C443F24C(v533, v937);
      sub_1C440EE18();
      sub_1C44042C4();
      v534 = swift_allocObject();
      *(v534 + 16) = sub_1C49B7BE4;
      *(v534 + 24) = v525;
      v919 = v525;
      v904 = v534;
      sub_1C4425D60(v922, &v951);
      sub_1C4433D60();
      v906 = v524;
      sub_1C457EB50();
      sub_1C442CD84();
      if (v295)
      {
        goto LABEL_524;
      }

      v537 = v535;
      v538 = v536;
      sub_1C456902C(&qword_1EC0C0B98, &qword_1C4F40138);
      sub_1C440AE20();
      sub_1C4F02458();
      sub_1C444110C();
      v539 = v907;
      if (v540)
      {
        v541 = v906;
        sub_1C457EB50();
        sub_1C4404D54();
        if (!v109)
        {
          goto LABEL_542;
        }

        v537 = v542;
        v231 = v999;
      }

      else
      {
        v541 = v906;
      }

      if ((v538 & 1) == 0)
      {
        sub_1C440BE20();
        v544 = v543();
        sub_1C457EB30(v537, v541, v544, v999);
        v545 = v541;
        v231 = v999;
      }

      v546 = *(v231 + 7);
      sub_1C44042C4();
      v547 = swift_allocObject();
      *(v547 + 16) = sub_1C49B7BFC;
      *(v547 + 24) = v539;
      v903 = v547;
      sub_1C4485D60();
      LODWORD(v922) = swift_isUniquelyReferenced_nonNull_native();
      sub_1C44050EC();
      v548 = v537;
      *(v546 + 8 * v537) = v549;
      sub_1C457B1F0();
      sub_1C442CD84();
      if (v295)
      {
        goto LABEL_525;
      }

      v552 = v550;
      v553 = v551;
      sub_1C456902C(&qword_1EC0C0BA0, &unk_1C4F54200);
      sub_1C4433588();
      v554 = sub_1C444C2B8();
      v555 = v1002;
      if (v554)
      {
        sub_1C457B1F0();
        sub_1C440F418();
        if (!v109)
        {
          goto LABEL_542;
        }

        v552 = v556;
      }

      *(v546 + 8 * v548) = v555;

      v557 = *(v546 + 8 * v548);
      if ((v553 & 1) == 0)
      {
        sub_1C440BE20();
        v558();
        sub_1C43FDA80();
        sub_1C4413F44();
        v902();
        sub_1C4435970(v552);
      }

      v559 = *(v557 + 56);
      sub_1C44042C4();
      v560 = swift_allocObject();
      v561 = v905;
      v902 = v560;
      *(v560 + 16) = sub_1C49B7E80;
      *(v560 + 24) = v561;
      sub_1C44803C0();
      LODWORD(v922) = swift_isUniquelyReferenced_nonNull_native();
      sub_1C44050EC();
      *(v559 + 8 * v552) = v562;
      v563 = sub_1C447F17C();
      sub_1C445FAA8(v563, v564);
      sub_1C442CD84();
      if (v295)
      {
        goto LABEL_526;
      }

      v567 = v565;
      v568 = v566;
      sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
      sub_1C4433588();
      v569 = sub_1C444C2B8();
      v570 = v1002;
      if (v569)
      {
        v571 = sub_1C447F17C();
        sub_1C445FAA8(v571, v572);
        sub_1C440F418();
        v51 = v907;
        if (!v109)
        {
          goto LABEL_542;
        }

        v567 = v573;
      }

      else
      {
        v51 = v907;
      }

      *(v559 + 8 * v552) = v570;

      v16 = *(v559 + 8 * v552);
      v231 = v902;
      if ((v568 & 1) == 0)
      {
        sub_1C440C5C8();
        sub_1C457DBD8(v567, 0x7374736163646F50, 0xE800000000000000, v16);
      }

      *(*(v16 + 56) + 8 * v567) = v3;

      sub_1C44223D0();
      v574(v991, v1001);
      v912 = sub_1C49B7E84;
      v914 = sub_1C49B7E7C;
      v922 = sub_1C49B7E7C;
      v921 = sub_1C49B7E80;
      v918 = sub_1C49B7BFC;
      v916 = sub_1C49B7BE4;
      v915 = v919;
      v917 = v51;
      v919 = v905;
      v920 = v904;
      v913 = v903;
      v911 = v231;
      sub_1C4423770();
    }

    while (1)
    {
      if (__OFADD__(v521, 1))
      {
        goto LABEL_493;
      }

      if (v521 + 1 >= v0)
      {
        break;
      }

      sub_1C448F174();
    }
  }

  else
  {

    sub_1C441E4E4();
  }

  sub_1C49B0B58(5);
  sub_1C44606B0();
  if (v575)
  {
    v576 = v407 + 64;
    sub_1C43FD030();
    sub_1C44007A8();
    sub_1C4434630();
    sub_1C4441970();
    sub_1C442F280(v577);
    sub_1C4425208();
    v578 = 0;
    sub_1C440CCB4();
    while (1)
    {
      v579 = v578;
      if (v353)
      {
        goto LABEL_337;
      }

      do
      {
        v578 = v579 + 1;
        if (__OFADD__(v579, 1))
        {
          goto LABEL_494;
        }

        if (v578 >= v0)
        {

          goto LABEL_370;
        }

        v353 = *(v576 + 8 * v578);
        ++v579;
      }

      while (!v353);
LABEL_341:
      sub_1C44184C8();
      sub_1C442BCE0(v580);
      swift_bridgeObjectRetain_n();
      sub_1C4868270(v231);
      v582 = v581;

      if (!v582)
      {
        sub_1C4418958();
        v582 = sub_1C4F01108();
      }

      sub_1C4423C28();
      sub_1C4868354();
      sub_1C447F9C0();
      sub_1C442A458();
      v583 = v990;
      sub_1C4EF9DE8();
      v584 = v407;
      sub_1C465C40C(v231, v407);
      sub_1C4414618();
      if (!v407)
      {
        break;
      }

      sub_1C4408C78();
      v587 = sub_1C441AF98(&v931);
      v892 = v588;
      (v588)(v587);
      sub_1C442EC00();
      sub_1C4407384();
      v589 = swift_allocObject();
      sub_1C44167FC(v589);
      sub_1C444AD3C();
      v590();
      *(v583 + v16) = v3;
      sub_1C4416AF8();
      sub_1C43FBDBC();
      v591 = swift_allocObject();
      sub_1C443F24C(v591, &v928);
      sub_1C4424D04();
      sub_1C43FBDBC();
      v592 = swift_allocObject();
      sub_1C443F24C(v592, &v927);
      sub_1C44C1270();
      sub_1C44042C4();
      v593 = swift_allocObject();
      *(v593 + 16) = sub_1C49B7C1C;
      *(v593 + 24) = v583;
      v908 = v583;
      v894 = v593;
      sub_1C4425D60(v991, &v940);
      sub_1C4433D60();
      v594 = v582;
      v991 = sub_1C457EB50();
      sub_1C442CD84();
      if (v295)
      {
        goto LABEL_527;
      }

      v596 = v595;
      sub_1C456902C(&qword_1EC0C0B98, &qword_1C4F40138);
      sub_1C440AE20();
      sub_1C4F02458();
      sub_1C444110C();
      v597 = v896;
      if (v598)
      {
        sub_1C457EB50();
        sub_1C446BF70();
        if (!v109)
        {
          goto LABEL_542;
        }

        sub_1C44553D0();
      }

      else
      {
        v584 = v991;
      }

      if ((v596 & 1) == 0)
      {
        sub_1C440BE20();
        v600 = v599();
        sub_1C441B464(v600);
        v601 = v594;
        v231 = v999;
      }

      v910 = v594;
      v602 = *(v231 + 7);
      sub_1C44042C4();
      v603 = swift_allocObject();
      *(v603 + 16) = sub_1C49B7C38;
      *(v603 + 24) = v597;
      v893 = v603;
      sub_1C44A1EBC();
      LODWORD(v991) = swift_isUniquelyReferenced_nonNull_native();
      sub_1C44050EC();
      v604 = v584;
      *(v602 + 8 * v584) = v605;
      sub_1C457B1F0();
      sub_1C442CD84();
      if (v295)
      {
        goto LABEL_528;
      }

      v608 = v606;
      v609 = v607;
      sub_1C456902C(&qword_1EC0C0BA0, &unk_1C4F54200);
      sub_1C4433588();
      v610 = sub_1C4F02458();
      v611 = v1002;
      if (v610)
      {
        sub_1C457B1F0();
        sub_1C4404D54();
        if (!v109)
        {
          goto LABEL_542;
        }

        v608 = v612;
      }

      *(v602 + 8 * v604) = v611;

      v613 = *(v602 + 8 * v604);
      if ((v609 & 1) == 0)
      {
        sub_1C440BE20();
        v614();
        sub_1C43FDA80();
        sub_1C4413F44();
        v892();
        sub_1C4435970(v608);
      }

      v51 = *(v613 + 56);
      sub_1C44042C4();
      v615 = swift_allocObject();
      v616 = v895;
      v892 = v615;
      *(v615 + 16) = sub_1C49B7E80;
      *(v615 + 24) = v616;
      sub_1C4424988();
      LODWORD(v909) = swift_isUniquelyReferenced_nonNull_native();
      sub_1C44050EC();
      *(v51 + 8 * v608) = v617;
      v618 = sub_1C445075C();
      v991 = v619;
      sub_1C445FAA8(v618, v619);
      sub_1C43FC438();
      if (__OFADD__(v622, v623))
      {
        goto LABEL_529;
      }

      v576 = v620;
      v624 = v621;
      sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
      sub_1C4433588();
      v625 = sub_1C4F02458();
      v626 = v1002;
      if (v625)
      {
        v627 = sub_1C445075C();
        sub_1C445FAA8(v627, v991);
        sub_1C4404D54();
        if (!v109)
        {
          goto LABEL_542;
        }

        v576 = v628;
      }

      *(v51 + 8 * v608) = v626;

      v16 = *(v51 + 8 * v608);
      v231 = v892;
      if ((v624 & 1) == 0)
      {
        sub_1C440C5C8();
        sub_1C457DBD8(v576, 0x69616D6563696F56, v991, v16);
      }

      *(*(v16 + 56) + 8 * v576) = v3;

      sub_1C44223D0();
      v629(v990, v1001);
      v901 = sub_1C49B7E84;
      v903 = sub_1C49B7E7C;
      v991 = sub_1C49B7E7C;
      v910 = sub_1C49B7E80;
      v907 = sub_1C49B7C38;
      v905 = sub_1C49B7C1C;
      v904 = v908;
      v906 = v896;
      v908 = v895;
      v909 = v894;
      v902 = v893;
      v900 = v231;
      sub_1C4423770();
    }

    v585 = sub_1C44044D0();
    v586(v585);

    sub_1C4423770();
LABEL_337:
    v578 = v579;
    goto LABEL_341;
  }

  sub_1C4425208();
LABEL_370:
  sub_1C49B0B58(4);
  sub_1C44606B0();
  if (v630)
  {
    sub_1C43FD030();
    sub_1C44007A8();
    sub_1C4434630();
    sub_1C4441970();
    sub_1C442F280(v631);
    sub_1C4410448();
    v632 = 0;
    sub_1C440CCB4();
    while (1)
    {
      v633 = v632;
      if (!v353)
      {
        break;
      }

      while (1)
      {
        v632 = v633;
        sub_1C44184C8();
        sub_1C442BCE0(v634);
        swift_bridgeObjectRetain_n();
        sub_1C4868270(v231);
        v636 = v635;

        if (!v636)
        {
          sub_1C4418958();
          v636 = sub_1C4F01108();
        }

        sub_1C4423C28();
        sub_1C4868354();
        sub_1C447F9C0();
        sub_1C442A458();
        v637 = v989;
        sub_1C4EF9DE8();
        sub_1C465C40C(v231, v407);
        sub_1C4414618();
        if (v407)
        {
          break;
        }

        v638 = sub_1C44044D0();
        v639(v638);

        sub_1C443F698();
      }

      sub_1C4408C78();
      v640 = sub_1C441AF98(&v920);
      v880 = v641;
      (v641)(v640);
      sub_1C442EC00();
      sub_1C4407384();
      v642 = swift_allocObject();
      sub_1C44167FC(v642);
      sub_1C444AD3C();
      v643();
      *(v637 + v16) = v3;
      sub_1C4441764();
      sub_1C43FBDBC();
      v644 = swift_allocObject();
      sub_1C443F24C(v644, &v917);
      sub_1C49B7E94();
      sub_1C43FBDBC();
      v645 = swift_allocObject();
      sub_1C443F24C(v645, &v916);
      sub_1C4466D24();
      sub_1C44042C4();
      v646 = swift_allocObject();
      *(v646 + 16) = sub_1C49B7C60;
      *(v646 + 24) = v637;
      v897 = v637;
      v883 = v646;
      sub_1C4425D60(v990, &v930);
      sub_1C4433D60();
      v990 = sub_1C457EB50();
      sub_1C442CD84();
      if (v295)
      {
        goto LABEL_530;
      }

      v648 = v647;
      sub_1C456902C(&qword_1EC0C0B98, &qword_1C4F40138);
      sub_1C440AE20();
      sub_1C4F02458();
      sub_1C444110C();
      v882 = v636;
      if (v649)
      {
        sub_1C457EB50();
        sub_1C4404D54();
        v650 = v885;
        if (!v109)
        {
          goto LABEL_542;
        }

        sub_1C440EFEC();
      }

      else
      {
        v650 = v885;
        v51 = v990;
      }

      if ((v648 & 1) == 0)
      {
        sub_1C440BE20();
        v651();
        v652 = sub_1C44584E8();
        v653 = v882;
        sub_1C457EB30(v652, v882, v654, v999);
        v655 = v653;
        v231 = v999;
      }

      v656 = *(v231 + 7);
      sub_1C44042C4();
      v657 = swift_allocObject();
      *(v657 + 16) = sub_1C49B7C78;
      *(v657 + 24) = v650;
      v881 = v657;
      sub_1C4429078();
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C44050EC();
      *(v656 + 8 * v51) = v658;
      sub_1C457B1F0();
      v990 = v659;
      sub_1C442CD84();
      if (v295)
      {
        goto LABEL_531;
      }

      v661 = v660;
      sub_1C456902C(&qword_1EC0C0BA0, &unk_1C4F54200);
      sub_1C4433588();
      v662 = sub_1C4F02458();
      v663 = v1002;
      if (v662)
      {
        sub_1C457B1F0();
        v990 = v664;
        sub_1C446BF70();
        if (!v109)
        {
          goto LABEL_542;
        }
      }

      *(v656 + 8 * v51) = v663;

      v665 = *(v656 + 8 * v51);
      if ((v661 & 1) == 0)
      {
        sub_1C440BE20();
        v666();
        sub_1C43FDA80();
        sub_1C4413F44();
        v880();
        sub_1C4435970(v990);
      }

      v667 = *(v665 + 56);
      sub_1C44042C4();
      v668 = swift_allocObject();
      v669 = v884;
      v670 = v668;
      *(v668 + 16) = sub_1C49B7E80;
      *(v668 + 24) = v669;
      sub_1C44BBC8C();
      v671 = v990;
      v672 = swift_isUniquelyReferenced_nonNull_native();
      sub_1C43FF314(v672, &v931);
      *(v667 + 8 * v671) = v673;
      v674 = sub_1C445FDF0();
      sub_1C445FAA8(v674, v675);
      sub_1C442CD84();
      if (v295)
      {
        goto LABEL_532;
      }

      v678 = v676;
      v679 = v677;
      sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
      sub_1C4433588();
      v680 = sub_1C444C2B8();
      v231 = v1002;
      if (v680)
      {
        v681 = sub_1C445FDF0();
        sub_1C445FAA8(v681, v682);
        sub_1C4404D54();
        if (!v109)
        {
          goto LABEL_542;
        }

        v51 = v683;
      }

      else
      {
        v51 = v678;
      }

      v684 = v670;
      v685 = v990;
      *(v667 + 8 * v990) = v231;

      v16 = *(v667 + 8 * v685);
      if ((v679 & 1) == 0)
      {
        v231 = v684;
        sub_1C49B7948(&v1002);
        sub_1C457DBD8(v51, 0x636973754DLL, 0xE500000000000000, v16);
      }

      *(*(v16 + 56) + 8 * v51) = v3;

      sub_1C44223D0();
      v686(v989, v1001);
      v890 = sub_1C49B7E84;
      v892 = sub_1C49B7E7C;
      v990 = sub_1C49B7E7C;
      v899 = sub_1C49B7E80;
      v896 = sub_1C49B7C78;
      v894 = sub_1C49B7C60;
      v893 = v897;
      v895 = v885;
      v897 = v884;
      v898 = v883;
      v891 = v881;
      v889 = v684;
      sub_1C4423770();
    }

    while (!__OFADD__(v633, 1))
    {
      if (v633 + 1 >= v0)
      {

        goto LABEL_406;
      }

      sub_1C448F174();
    }

LABEL_495:
    __break(1u);
LABEL_496:
    __break(1u);
LABEL_497:
    __break(1u);
LABEL_498:
    __break(1u);
LABEL_499:
    __break(1u);
LABEL_500:
    __break(1u);
    goto LABEL_501;
  }

  sub_1C4410448();
LABEL_406:
  sub_1C49B0B58(2);
  sub_1C44606B0();
  if (v687)
  {
    v688 = v407 + 64;
    sub_1C43FD030();
    sub_1C44007A8();
    sub_1C4434630();
    sub_1C4441970();
    sub_1C442F280(v689);
    sub_1C44161C0();
    v690 = 0;
    sub_1C440CCB4();
    while (1)
    {
      v691 = v690;
      if (!v353)
      {
        goto LABEL_410;
      }

      while (1)
      {
        v690 = v691;
        sub_1C44184C8();
        sub_1C43FE6F0();
        sub_1C4868270(v688);
        v693 = v692;

        if (!v693)
        {
          sub_1C4418958();
          v693 = sub_1C4F01108();
        }

        v353 &= v353 - 1;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4868354();
        sub_1C43FC1CC();

        v694 = v988;
        sub_1C4EF9DE8();
        v695 = v407;
        v696 = COERCE_DOUBLE(sub_1C465C40C(v688, v407));
        v698 = v697;
        v407 = *(v688 + 16);

        if (v407)
        {
          break;
        }

        v699 = sub_1C44044D0();
        v700(v699);

        sub_1C443F698();
        if (!v353)
        {
LABEL_410:
          while (!__OFADD__(v691, 1))
          {
            if (v691 + 1 >= v0)
            {

              goto LABEL_447;
            }

            sub_1C448F174();
          }

          goto LABEL_496;
        }
      }

      if (v698)
      {
        v701 = v2;
      }

      else
      {
        v701 = v696;
      }

      v703 = v1000;
      v702 = v1001;
      v859 = *(v1000 + 16);
      (v859)(v877, v694, v1001);
      v704 = (*(v703 + 80) + 16) & ~*(v703 + 80);
      sub_1C446244C();
      v705 = swift_allocObject();
      (*(v703 + 32))(v705 + v704, v877, v702);
      *(v705 + *&v696) = v701;
      sub_1C4488420();
      sub_1C43FBDBC();
      v706 = swift_allocObject();
      sub_1C443F24C(v706, &v894);
      sub_1C445874C();
      sub_1C43FBDBC();
      v707 = swift_allocObject();
      sub_1C443F24C(v707, &v893);
      sub_1C44B8FBC();
      sub_1C44042C4();
      v708 = swift_allocObject();
      *(v708 + 16) = sub_1C49B7C98;
      *(v708 + 24) = v705;
      v886 = v705;
      v861 = v708;
      sub_1C4425D60(v989, &v919);
      sub_1C4433D60();
      v709 = v693;
      v989 = sub_1C457EB50();
      sub_1C43FC438();
      if (__OFADD__(v711, v712))
      {
        goto LABEL_533;
      }

      v713 = v710;
      sub_1C456902C(&qword_1EC0C0B98, &qword_1C4F40138);
      sub_1C440AE20();
      sub_1C4F02458();
      sub_1C444110C();
      v407 = v695;
      if (v714)
      {
        sub_1C457EB50();
        sub_1C43FED0C();
        if (!v109)
        {
          goto LABEL_542;
        }

        v716 = v715;
        v696 = *&v999;
      }

      else
      {
        v716 = v989;
      }

      if ((v713 & 1) == 0)
      {
        sub_1C440BE20();
        v718 = v717();
        sub_1C457EB30(v716, v709, v718, v999);
        v719 = v709;
        v696 = *&v999;
      }

      v888 = v709;
      v720 = *(*&v696 + 56);
      sub_1C44042C4();
      v721 = swift_allocObject();
      v860 = v721;
      v722 = v863;
      *(v721 + 2) = sub_1C49B7CB0;
      *(v721 + 3) = v722;
      sub_1C443E388();
      LODWORD(v989) = swift_isUniquelyReferenced_nonNull_native();
      sub_1C44050EC();
      v723 = v716;
      *(v720 + 8 * v716) = v724;
      sub_1C457B1F0();
      sub_1C43FC438();
      if (__OFADD__(v727, v728))
      {
        break;
      }

      v729 = v725;
      v730 = v726;
      sub_1C456902C(&qword_1EC0C0BA0, &unk_1C4F54200);
      sub_1C4433588();
      v731 = sub_1C4F02458();
      v732 = v1002;
      if (v731)
      {
        sub_1C457B1F0();
        sub_1C4404D54();
        if (!v109)
        {
          goto LABEL_542;
        }

        v729 = v733;
      }

      *(v720 + 8 * v723) = v732;

      v734 = *(v720 + 8 * v723);
      if ((v730 & 1) == 0)
      {
        sub_1C440BE20();
        v736 = v735();
        sub_1C4401E34();
        sub_1C4413F44();
        v859();
        sub_1C457E054(v729, v720, v736, v734);
      }

      v737 = *(v734 + 56);
      sub_1C44042C4();
      v738 = swift_allocObject();
      v739 = v862;
      v859 = v738;
      *(v738 + 2) = sub_1C49B7E80;
      *(v738 + 3) = v739;
      sub_1C44A1C38();
      LODWORD(v989) = swift_isUniquelyReferenced_nonNull_native();
      sub_1C44050EC();
      *(v737 + 8 * v729) = v740;
      v741 = sub_1C444B1D4();
      sub_1C445FAA8(v741, v742);
      sub_1C43FC438();
      if (__OFADD__(v745, v746))
      {
        goto LABEL_535;
      }

      v747 = v743;
      v748 = v744;
      sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
      sub_1C4433588();
      v749 = sub_1C4F02458();
      v750 = v1002;
      if (v749)
      {
        v751 = sub_1C444B1D4();
        sub_1C445FAA8(v751, v752);
        sub_1C43FED0C();
        v688 = v988;
        if (!v109)
        {
          goto LABEL_542;
        }

        v747 = v753;
      }

      else
      {
        v688 = v988;
      }

      *(v737 + 8 * v729) = v750;

      v754 = *(v737 + 8 * v729);
      v755 = v859;
      if ((v748 & 1) == 0)
      {
        sub_1C440C5C8();
        sub_1C457DBD8(v747, 0x6F69647541205654, 0xE800000000000000, v754);
      }

      *(*(v754 + 56) + 8 * v747) = v701;

      sub_1C44223D0();
      v756(v688, v1001);
      v879 = sub_1C49B7E84;
      v881 = sub_1C49B7E7C;
      v989 = sub_1C49B7E7C;
      v888 = sub_1C49B7E80;
      v885 = sub_1C49B7CB0;
      v883 = sub_1C49B7C98;
      v882 = v886;
      v884 = v863;
      v886 = v862;
      v887 = v861;
      v880 = v860;
      v878 = v755;
      sub_1C4423770();
    }

LABEL_534:
    __break(1u);
LABEL_535:
    __break(1u);
LABEL_536:
    __break(1u);
    goto LABEL_537;
  }

  sub_1C44161C0();
LABEL_447:
  v757 = sub_1C49B0B58(7);

  if (*(v757 + 2))
  {
    v758 = (v757 + 64);
    sub_1C43FD030();
    v761 = v760 & v759;
    v763 = (v762 + 63) >> 6;
    v856 = v764 + 16;
    v855 = v765 + 7;
    v854 = v764 + 32;
    i = v764 + 8;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v766 = 0;
    v767 = 0;
    v768 = 0;
    v769 = 0;
    v863 = 0;
    v770 = 0;
    v864 = 0;
    v771 = 0;
    v862 = 0;
    v861 = 0;
    v860 = 0;
    v859 = 0;
    v772 = 0;
    v993 = (v757 + 64);
    v994 = v763;
    v996 = v757;
    while (1)
    {
      v773 = v772;
      v997 = v771;
      v988 = v770;
      v877 = v766;
      v876 = v767;
      if (!v761)
      {
        goto LABEL_451;
      }

      while (1)
      {
        v772 = v773;
LABEL_454:
        v774 = *(*(v757 + 6) + ((v772 << 9) | (8 * __clz(__rbit64(v761)))));
        swift_bridgeObjectRetain_n();
        sub_1C4868270(v774);
        v776 = v775;

        if (v776)
        {
          v998 = v776;
        }

        else
        {
          sub_1C4418958();
          v998 = sub_1C4F01108();
        }

        v761 &= v761 - 1;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4868354();

        v777 = v987;
        sub_1C4EF9DE8();
        v778 = COERCE_DOUBLE(sub_1C465C40C(v774, v757));
        v780 = v779;
        v781 = *(v774 + 16);

        if (v781)
        {
          break;
        }

        sub_1C44223D0();
        v782(v777, v1001);

        v773 = v772;
        v757 = v996;
        v771 = v997;
        v758 = v993;
        v763 = v994;
        if (!v761)
        {
LABEL_451:
          while (1)
          {
            v772 = v773 + 1;
            if (__OFADD__(v773, 1))
            {
              goto LABEL_497;
            }

            if (v772 >= v763)
            {
              v1000 = v769;
              v1001 = v768;

              v842 = v860;
              v843 = v859;
              v844 = v862;
              v845 = v861;
              v846 = v864;
              v847 = v863;
              goto LABEL_486;
            }

            v761 = *(v758 + 8 * v772);
            ++v773;
            if (v761)
            {
              goto LABEL_454;
            }
          }
        }
      }

      if (v780)
      {
        v783 = 0.0;
      }

      else
      {
        v783 = v778;
      }

      v785 = v1000;
      v784 = v1001;
      v852 = *(v1000 + 16);
      (v852)(v858, v777, v1001);
      sub_1C442EC00();
      sub_1C4407384();
      v786 = swift_allocObject();
      (*(v785 + 32))(v786 + v781, v858, v784);
      *(v786 + *&v778) = v783;
      sub_1C44263F8();
      sub_1C43FBDBC();
      v787 = swift_allocObject();
      sub_1C443F24C(v787, &v909);
      sub_1C44239FC(v768, v769);
      sub_1C43FBDBC();
      v788 = swift_allocObject();
      sub_1C443F24C(v788, &v908);
      sub_1C44239FC(v863, v988);
      sub_1C44042C4();
      v789 = swift_allocObject();
      *(v789 + 16) = sub_1C49B7D5C;
      *(v789 + 24) = v786;
      v853 = v786;
      v988 = v789;
      sub_1C44239FC(v864, v997);
      v790 = v999;
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4433D60();
      v791 = v998;
      sub_1C457EB50();
      sub_1C43FC438();
      if (__OFADD__(v794, v795))
      {
        goto LABEL_536;
      }

      v796 = v792;
      v797 = v793;
      sub_1C456902C(&qword_1EC0C0B98, &qword_1C4F40138);
      sub_1C440AE20();
      sub_1C4F02458();
      sub_1C444110C();
      if (v798)
      {
        v799 = sub_1C457EB50();
        if ((v797 & 1) != (v800 & 1))
        {
          goto LABEL_542;
        }

        v796 = v799;
        v790 = v999;
      }

      if ((v797 & 1) == 0)
      {
        v801 = (*(v988 + 16))();
        sub_1C457EB30(v796, v791, v801, v999);
        v802 = v791;
        v790 = v999;
      }

      v803 = *(v790 + 7);
      sub_1C44042C4();
      v804 = swift_allocObject();
      v805 = v877;
      v997 = v804;
      *(v804 + 16) = sub_1C49B7E14;
      *(v804 + 24) = v805;
      sub_1C44239FC(v862, v861);
      swift_isUniquelyReferenced_nonNull_native();
      v1002 = *(v803 + 8 * v796);
      *(v803 + 8 * v796) = 0x8000000000000000;
      sub_1C457B1F0();
      sub_1C43FC438();
      if (__OFADD__(v808, v809))
      {
        break;
      }

      v810 = v806;
      v811 = v807;
      sub_1C456902C(&qword_1EC0C0BA0, &unk_1C4F54200);
      sub_1C440AE20();
      v812 = sub_1C4F02458();
      v813 = v1002;
      if (v812)
      {
        sub_1C457B1F0();
        sub_1C44331E4();
        if (!v109)
        {
          goto LABEL_542;
        }

        v810 = v814;
      }

      *(v803 + 8 * v796) = v813;

      v816 = *(v803 + 8 * v796);
      v817 = v810;
      if ((v811 & 1) == 0)
      {
        v818 = (*(v997 + 16))(v815);
        v819 = v865;
        (v852)(v865, v987, v1001);
        v820 = v819;
        v810 = v817;
        sub_1C457E054(v817, v820, v818, v816);
      }

      v821 = *(v816 + 56);
      sub_1C44042C4();
      v822 = swift_allocObject();
      v823 = v876;
      v852 = v822;
      *(v822 + 16) = sub_1C49B7E80;
      *(v822 + 24) = v823;
      sub_1C44239FC(v860, v859);
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C44050EC();
      *(v821 + 8 * v810) = v824;
      v825 = sub_1C4410F14();
      sub_1C445FAA8(v825, v826);
      sub_1C43FC438();
      if (__OFADD__(v829, v830))
      {
        goto LABEL_538;
      }

      v831 = v827;
      v832 = v828;
      sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
      sub_1C4433588();
      v833 = sub_1C4F02458();
      v834 = v1002;
      if (v833)
      {
        v835 = sub_1C4410F14();
        sub_1C445FAA8(v835, v836);
        sub_1C44331E4();
        if (!v109)
        {
          goto LABEL_542;
        }

        v831 = v837;
      }

      v838 = v876;
      *(v821 + 8 * v817) = v834;

      v839 = *(v821 + 8 * v817);
      v840 = v852;
      if ((v832 & 1) == 0)
      {
        sub_1C440C5C8();
        sub_1C457DBD8(v831, 0x6974627553205654, 0xEC00000073656C74, v839);
      }

      *(*(v839 + 56) + 8 * v831) = v783;

      sub_1C44223D0();
      v841(v987, v1001);
      v860 = sub_1C49B7E84;
      v862 = sub_1C49B7E7C;
      v864 = sub_1C49B7E7C;
      v863 = sub_1C49B7E80;
      v768 = sub_1C49B7E14;
      v766 = sub_1C49B7D5C;
      v767 = v853;
      v769 = v877;
      v770 = v838;
      v771 = v988;
      v861 = v997;
      v859 = v840;
      v757 = v996;
      v758 = v993;
      v763 = v994;
    }

LABEL_537:
    __break(1u);
LABEL_538:
    __break(1u);
LABEL_539:
    __break(1u);
LABEL_540:
    __break(1u);
LABEL_541:
    __break(1u);
    goto LABEL_542;
  }

  v877 = 0;
  v876 = 0;
  v1000 = 0;
  v1001 = 0;
  v847 = 0;
  v988 = 0;
  v846 = 0;
  v771 = 0;
  v844 = 0;
  v845 = 0;
  v842 = 0;
  v843 = 0;
LABEL_486:
  v848 = sub_1C49B19A4(v999);
  sub_1C441D710();
  sub_1C44754B4();
  sub_1C442F938();
  sub_1C44239FC(v980, v978);
  sub_1C446BC90();
  sub_1C44493E8();
  sub_1C44239FC(v871, v875);
  sub_1C44239FC(v872, v983);
  sub_1C44239FC(v873, 0);
  sub_1C44239FC(v874, 0);
  sub_1C44239FC(v867, v870);
  sub_1C44239FC(v868, v985);
  sub_1C44239FC(v869, 0);
  sub_1C443EF40();
  sub_1C4471CE0();
  sub_1C44AE090();
  sub_1C44239FC(v984, v975);
  sub_1C445ABE8();
  sub_1C443E1C0();
  sub_1C44A17EC();
  sub_1C445BDB4();
  sub_1C44239FC(v986, v964);
  sub_1C44239FC(v866, v965);
  sub_1C4424754();
  sub_1C44289D0();
  sub_1C4460864();
  sub_1C44EB8A0();
  v849 = sub_1C49B7E88();
  sub_1C44239FC(v849, v953);
  sub_1C44239FC(v981, v954);
  sub_1C4495254();
  sub_1C447F54C();
  sub_1C445A998();
  sub_1C447E300();
  sub_1C449DAE4();
  v850 = sub_1C4401830();
  sub_1C44239FC(v850, v942);
  sub_1C4488590();
  sub_1C44627E4();
  sub_1C4495D2C();
  sub_1C444343C();
  sub_1C4428EC4();
  sub_1C44239FC(v992, v932);
  sub_1C445C198();
  sub_1C441E084();
  sub_1C449AECC();
  sub_1C442576C();
  sub_1C440EE18();
  sub_1C44239FC(v922, v920);
  sub_1C4485D60();
  sub_1C44803C0();
  sub_1C4416AF8();
  sub_1C4424D04();
  sub_1C44C1270();
  sub_1C44239FC(v991, v909);
  sub_1C44A1EBC();
  sub_1C4424988();
  sub_1C4441764();
  sub_1C49B7E94();
  sub_1C4466D24();
  sub_1C44239FC(v990, v898);
  sub_1C4429078();
  sub_1C44BBC8C();
  sub_1C4488420();
  sub_1C445874C();
  sub_1C44B8FBC();
  sub_1C44239FC(v989, v887);
  sub_1C443E388();
  sub_1C44A1C38();
  sub_1C44263F8();
  sub_1C44239FC(v1001, v1000);
  sub_1C44239FC(v847, v988);
  sub_1C44239FC(v846, v771);
  sub_1C44239FC(v844, v845);
  sub_1C44239FC(v842, v843);
  return v848;
}