uint64_t sub_1B1B33EEC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1B1C2C2B8();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1B1AA9670(v6, v10);
}

uint64_t sub_1B1B33FB4(uint64_t a1)
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B1B33224();
  }

  return result;
}

void *sub_1B1B3400C(void *result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(v3 + 40);
  if (v5)
  {
    v8 = result;
    v9 = v5;
    v10 = NSNotificationCenter.addObserver(event:callback:)(v8, a2, a3);
    swift_beginAccess();
    swift_unknownObjectRetain();
    v11 = v8;
    sub_1B1B36ED4();
    v12 = *(*(v4 + 48) + 16);
    sub_1B1B3DB74(v12);
    v13 = *(v4 + 48);
    *(v13 + 16) = v12 + 1;
    v14 = v13 + 16 * v12;
    *(v14 + 32) = v10;
    *(v14 + 40) = v11;
    *(v4 + 48) = v13;
    swift_endAccess();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1B1B340E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_11_7();
  v23 = *(v20 + 32);
  if (v23)
  {
    OUTLINED_FUNCTION_5_9(v23);
    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_0(v20 + 40, v24);
    swift_unknownObjectRetain();
    v22;
    sub_1B1B36ED4();
    v25 = *(*(v20 + 40) + 16);
    sub_1B1B3DB74(v25);
    OUTLINED_FUNCTION_1_12(v25 + 1);
    *(v20 + 40) = v26;
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_15_10();
}

void sub_1B1B34180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_11_7();
  v23 = *(v20 + 24);
  if (v23)
  {
    OUTLINED_FUNCTION_5_9(v23);
    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_0(v20 + 32, v24);
    swift_unknownObjectRetain();
    v22;
    sub_1B1B36ED4();
    v25 = *(*(v20 + 32) + 16);
    sub_1B1B3DB74(v25);
    OUTLINED_FUNCTION_1_12(v25 + 1);
    *(v20 + 32) = v26;
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_15_10();
}

void sub_1B1B3421C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_11_7();
  v23 = *(v20 + 48);
  if (v23)
  {
    OUTLINED_FUNCTION_5_9(v23);
    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_0(v20 + 56, v24);
    swift_unknownObjectRetain();
    v22;
    sub_1B1B36ED4();
    v25 = *(*(v20 + 56) + 16);
    sub_1B1B3DB74(v25);
    OUTLINED_FUNCTION_1_12(v25 + 1);
    *(v20 + 56) = v26;
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B342DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = AlpineTTSAction.__allocating_init(pool:)(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1B1B3437C()
{
  result = qword_1EB7624D8;
  if (!qword_1EB7624D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB761EE0, &unk_1B1C38950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7624D8);
  }

  return result;
}

unint64_t sub_1B1B3441C()
{
  result = qword_1EB7624E0;
  if (!qword_1EB7624E0)
  {
    sub_1B1C2BD68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7624E0);
  }

  return result;
}

id sub_1B1B34578()
{
  v0 = SecTaskCreateFromSelf(0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_1B1C2CB28();
  v3 = SecTaskCopyValueForEntitlement(v1, v2, 0);

  if (!v3)
  {

    return 0;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = sub_1B1C2CB28();
    v4 = [v4 containsObject_];

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v4;
}

uint64_t sub_1B1B34664()
{
  result = sub_1B1B34688();
  byte_1EB772D29 = result & 1;
  return result;
}

id sub_1B1B34688()
{
  v0 = SecTaskCreateFromSelf(0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_1B1C2CB28();
  v3 = SecTaskCopyValueForEntitlement(v1, v2, 0);

  if (!v3)
  {

    return 0;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    swift_unknownObjectRetain();
    v5 = sub_1B1C2CB28();
    v4 = [v4 containsObject_];

    swift_unknownObjectRelease_n();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v4;
}

dispatch_semaphore_t sub_1B1B347A4()
{
  result = dispatch_semaphore_create(1);
  qword_1ED9A9928 = result;
  return result;
}

uint64_t sub_1B1B347C8(void *a1)
{
  if (qword_1ED9A98D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED9A98D8;
  sub_1B1AB940C();
  v3 = OUTLINED_FUNCTION_18_0(v2);

  if (v3)
  {
    return 1;
  }

  if (qword_1ED9A98B8 != -1)
  {
    swift_once();
  }

  v4 = OUTLINED_FUNCTION_18_0(qword_1ED9A98C0);

  if (v4)
  {
    return 1;
  }

  if (qword_1ED9A98A8 != -1)
  {
    swift_once();
  }

  v5 = OUTLINED_FUNCTION_18_0(qword_1ED9A98B0);

  if (v5)
  {
    return 1;
  }

  if (qword_1ED9A9978 != -1)
  {
    OUTLINED_FUNCTION_6(&qword_1ED9A9978);
  }

  v7 = OUTLINED_FUNCTION_18_0(qword_1ED9A9980);

  if ((v7 & 1) == 0)
  {
    if (qword_1ED9A9850 != -1)
    {
      swift_once();
    }

    v8 = OUTLINED_FUNCTION_18_0(qword_1ED9A97E0);

    if ((v8 & 1) == 0)
    {
      if (qword_1ED9A9960 != -1)
      {
        OUTLINED_FUNCTION_12_4(&qword_1ED9A9960);
      }

      v9 = OUTLINED_FUNCTION_18_0(qword_1ED9A9968);

      if ((v9 & 1) == 0)
      {
        v10 = sub_1B1C2D0C8();
        if (qword_1ED9A99B8 != -1)
        {
          swift_once();
        }

        v11 = qword_1ED9AA668;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1B1C361C0;
        v13 = [a1 string];
        v14 = sub_1B1C2CB58();
        v16 = v15;

        *(v12 + 56) = MEMORY[0x1E69E6158];
        *(v12 + 64) = sub_1B1AC9204();
        *(v12 + 32) = v14;
        *(v12 + 40) = v16;
        sub_1B1C2C7C8(v10, &dword_1B1A8A000, v11, "TTSAsset encountered unknown asset type %{public}@ and tentatively tried to handle through non-MobileAsset", 106, 2, v12);
      }
    }
  }

  return 0;
}

uint64_t NSNotificationCenter.post<A>(event:object:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [v3 postNotificationName:a1 object:sub_1B1C2D798()];

  return swift_unknownObjectRelease();
}

uint64_t sub_1B1B34B00()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_3_11(v0, v1);
  qword_1ED9A4D40 = result;
  return result;
}

uint64_t sub_1B1B34B50()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4D88 = result;
  return result;
}

uint64_t sub_1B1B34BA8()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_3_11(v0, v1);
  qword_1ED9A4D50 = result;
  return result;
}

uint64_t sub_1B1B34BF8()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4D98 = result;
  return result;
}

uint64_t sub_1B1B34C50()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_3_11(v0, v1);
  qword_1ED9A4D60 = result;
  return result;
}

uint64_t sub_1B1B34CA0()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4DC8 = result;
  return result;
}

uint64_t sub_1B1B34CF8()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_5_10(v0, v1);
  qword_1ED9A4E00 = result;
  return result;
}

uint64_t sub_1B1B34D48()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_4_9(v0, v1);
  qword_1EB761028 = result;
  return result;
}

uint64_t sub_1B1B34D98()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_4_9(v0, v1);
  qword_1ED9A4E90 = result;
  return result;
}

uint64_t sub_1B1B34DE8()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4E48 = result;
  return result;
}

uint64_t sub_1B1B34E40()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_4_9(v0, v1);
  qword_1ED9A4EB0 = result;
  return result;
}

uint64_t sub_1B1B34E90()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4DA8 = result;
  return result;
}

uint64_t sub_1B1B34EE8()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1EB7624E8 = result;
  return result;
}

uint64_t sub_1B1B34F40()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_5_10(v0, v1);
  qword_1ED9A4DE8 = result;
  return result;
}

uint64_t sub_1B1B34F90()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4EC0 = result;
  return result;
}

uint64_t sub_1B1B34FE8()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4DD8 = result;
  return result;
}

uint64_t sub_1B1B35040()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4E60 = result;
  return result;
}

uint64_t sub_1B1B35098()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_3_11(v0, v1);
  qword_1ED9A4D28 = result;
  return result;
}

uint64_t sub_1B1B350E8()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4CE0 = result;
  return result;
}

uint64_t sub_1B1B35140()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4CF8 = result;
  return result;
}

uint64_t sub_1B1B35198()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4D10 = result;
  return result;
}

uint64_t sub_1B1B351F0()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_5_10(v0, v1);
  qword_1ED9A52D8 = result;
  return result;
}

uint64_t sub_1B1B35240()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_5_10(v0, v1);
  qword_1ED9A4E30 = result;
  return result;
}

uint64_t sub_1B1B35290()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4DB8 = result;
  return result;
}

uint64_t sub_1B1B352E8()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4D70 = result;
  return result;
}

uint64_t sub_1B1B35340()
{
  result = sub_1B1C2CB28();
  qword_1ED9A4E18 = result;
  return result;
}

uint64_t sub_1B1B3539C()
{
  result = sub_1B1C2CB28();
  qword_1EB760FF0 = result;
  return result;
}

uint64_t sub_1B1B353F8()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_5_10(v0, v1);
  qword_1EB761018 = result;
  return result;
}

uint64_t sub_1B1B35448()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_3_11(v0, v1);
  qword_1EB760FE0 = result;
  return result;
}

uint64_t sub_1B1B35498()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_3_11(v0, v1);
  qword_1EB760FC8 = result;
  return result;
}

uint64_t sub_1B1B354E8()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_4_9(v0, v1);
  qword_1ED9A4EA0 = result;
  return result;
}

uint64_t sub_1B1B35538()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4CC8 = result;
  return result;
}

uint64_t sub_1B1B35590()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4CB0 = result;
  return result;
}

uint64_t sub_1B1B355E8()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1ED9A4C98 = result;
  return result;
}

uint64_t sub_1B1B35640()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1EB760FB0 = result;
  return result;
}

uint64_t sub_1B1B35698()
{
  OUTLINED_FUNCTION_75();
  result = OUTLINED_FUNCTION_4_9(v0, v1);
  qword_1ED9A4E78 = result;
  return result;
}

uint64_t sub_1B1B356C4()
{
  OUTLINED_FUNCTION_75();
  result = sub_1B1C2CB28();
  qword_1EB761000 = result;
  return result;
}

id NSNotificationCenter.addObserver<A>(event:callback:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_2_16();
  v15[2] = v10;
  v15[3] = &block_descriptor_6_0;
  v11 = _Block_copy(v15);
  v12 = a1;

  v13 = [v4 addObserverForName:v12 object:0 queue:0 usingBlock:v11];
  _Block_release(v11);
  return v13;
}

void sub_1B1B35808(uint64_t a1, void *a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v38 = a3;
  v39 = a2;
  v7 = sub_1B1C2BEE8();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B1C2D2B8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - v13;
  v15 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1C2BED8();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v14, 0, 1, a5);
    (*(v15 + 32))(v17, v14, a5);
    v38(v17);
    (*(v15 + 8))(v17, a5);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, a5);
    (*(v11 + 8))(v14, v10);
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v19 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v19, qword_1ED9A9120);
    v21 = v40;
    v20 = v41;
    (*(v40 + 16))(v9, a1, v41);
    v22 = v39;
    v23 = sub_1B1C2C888();
    v24 = sub_1B1C2D0C8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v42 = v39;
      *v25 = 136315650;
      v26 = sub_1B1C2CB58();
      v28 = sub_1B1A930E4(v26, v27, &v42);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      v29 = sub_1B1C2D968();
      v31 = sub_1B1A930E4(v29, v30, &v42);

      *(v25 + 14) = v31;
      *(v25 + 22) = 2080;
      sub_1B1C2BED8();
      sub_1B1A9937C(v43);
      v43[0] = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA0, &qword_1B1C364A8);
      v32 = sub_1B1C2CBD8();
      v34 = v33;
      (*(v21 + 8))(v9, v20);
      v35 = sub_1B1A930E4(v32, v34, &v42);

      *(v25 + 24) = v35;
      _os_log_impl(&dword_1B1A8A000, v23, v24, "Event '%s' expect associated object as %s, got: %s", v25, 0x20u);
      v36 = v39;
      swift_arrayDestroy();
      MEMORY[0x1B2739FD0](v36, -1, -1);
      MEMORY[0x1B2739FD0](v25, -1, -1);
    }

    else
    {

      (*(v21 + 8))(v9, v20);
    }
  }
}

uint64_t static SHA256.preinstalledAudioHash(request:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return sub_1B1AD8B64(a1, ObjectType);
}

void sub_1B1B35CF8()
{
  OUTLINED_FUNCTION_53_0();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762560, &qword_1B1C38118);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624A8, &unk_1B1C38120);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  if (__swift_getEnumTagSinglePayload(v3, 1, v10) == 1)
  {
    sub_1B1A90C78(v3, &unk_1EB762560, &qword_1B1C38118);
    OUTLINED_FUNCTION_33();
    sub_1B1B7081C(v11);

    sub_1B1A90C78(v6, &unk_1EB762560, &qword_1B1C38118);
  }

  else
  {
    sub_1B1B37D08(v3, v9);
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *v1;
    OUTLINED_FUNCTION_37_1();
    sub_1B1B37880(v12, v13, v14, v15);

    *v1 = v17;
  }

  OUTLINED_FUNCTION_34_3();
}

unint64_t sub_1B1B35E7C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B1C2D6C8();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B1B35EC8(uint64_t a1)
{
  if (a1 == 7005)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 7001)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1B1B35F04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B1B35E7C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1B1B35F34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B1AE53F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1B1B35F60(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  type metadata accessor for TTSAssetUAFStrategy();
  swift_initStaticObject();
  v7 = sub_1B1B67EAC();
  type metadata accessor for TTSAssetTrialStrategy();
  swift_initStaticObject();
  v8 = sub_1B1B3BEDC();
  sub_1B1ABF93C(v8);
  v9 = 0;
  v10 = *(v7 + 16);
  v11 = v7 + 40;
  v23 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v12 = (v11 + 16 * v9);
  while (1)
  {
    if (v10 == v9)
    {

      return;
    }

    if (v9 >= *(v7 + 16))
    {
      break;
    }

    ++v9;
    v13 = v12 + 2;
    v14 = *(v12 - 1);
    v15 = *v12;

    v16 = sub_1B1B36180(a1, a2, a3, a4, v14, v15);
    v18 = v17;

    v12 = v13;
    if (v18)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B1A9ED54();
        v23 = v21;
      }

      v19 = *(v23 + 16);
      if (v19 >= *(v23 + 24) >> 1)
      {
        sub_1B1A9ED54();
        v23 = v22;
      }

      *(v23 + 16) = v19 + 1;
      v20 = v23 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v18;
      v11 = v7 + 40;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t sub_1B1B36180(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v32 = HIDWORD(a1);
  v12 = HIDWORD(a2);
  v13 = HIDWORD(a3);
  v14 = HIDWORD(a4);
  if (sub_1B1C2CDA8())
  {
    MEMORY[0x1B27381B0](a5, a6);
    v15 = 0x657461766972702FLL;
    a6 = 0xE800000000000000;
  }

  else
  {

    v15 = a5;
  }

  v31 = v15;
  v33 = a6;
  sub_1B1C2CBF8();
  v34 = __PAIR64__(v32, v11);
  v35 = v10;
  v36 = v12;
  v37 = v9;
  v38 = v13;
  v39 = v8;
  v40 = v14;
  v16 = sandbox_extension_issue_file_to_process();

  if (v16)
  {
    v17 = MEMORY[0x1B27380E0](v16);
    if (v18)
    {
      v19 = sub_1B1C2D098();
      if (qword_1ED9A99B8 != -1)
      {
        swift_once();
      }

      v20 = qword_1ED9AA668;
      if (os_log_type_enabled(qword_1ED9AA668, v19))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v34 = v22;
        *v21 = 136315138;
        v23 = sub_1B1A930E4(v31, v33, &v34);

        *(v21 + 4) = v23;
        _os_log_impl(&dword_1B1A8A000, v20, v19, "Issued sandbox extension to path %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x1B2739FD0](v22, -1, -1);
        MEMORY[0x1B2739FD0](v21, -1, -1);
      }

      else
      {
      }

      free(v16);
    }

    else
    {

      v29 = sub_1B1C2D0B8();
      if (qword_1ED9A99B8 != -1)
      {
        swift_once();
      }

      sub_1B1C2C7C8(v29, &dword_1B1A8A000, qword_1ED9AA668, "Unable to convert C string into Swift string for authToken'", 59, 2, MEMORY[0x1E69E7CC0]);
      free(v16);
    }
  }

  else
  {
    v24 = sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      swift_once();
    }

    v25 = qword_1ED9AA668;
    if (os_log_type_enabled(qword_1ED9AA668, v24))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34 = v27;
      *v26 = 136446210;
      v28 = sub_1B1A930E4(v31, a6, &v34);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_1B1A8A000, v25, v24, "Unable to issue sandbox extension to path '%{public}s'", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1B2739FD0](v27, -1, -1);
      MEMORY[0x1B2739FD0](v26, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v17;
}

void *sub_1B1B36550()
{
  type metadata accessor for TTSAssetProxyStrategy();
  v0 = swift_allocObject();
  result = sub_1B1B36D74();
  qword_1ED9AA630 = v0;
  return result;
}

uint64_t sub_1B1B3658C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1B1B365EC(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = v1;
    type metadata accessor for TTSAsset();
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762510, &unk_1B1C380C0);
    sub_1B1AE6CC8();
    v4 = MEMORY[0x1E69E7CC0];
    sub_1B1C2CAB8();
    sub_1B1AEFB90();
    v6 = v5;

    v7 = sub_1B1C2D0A8();
    if (qword_1ED9A9500 != -1)
    {
      goto LABEL_31;
    }

    while (1)
    {
      v8 = qword_1ED9AA628;
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
      v10 = OUTLINED_FUNCTION_54_0(v9);
      *(v10 + 16) = xmmword_1B1C361C0;
      if ([v6 respondsToSelector_])
      {
        v11 = [v6 debugDescription];
        v12 = v6;
        v13 = sub_1B1C2CB58();
        v15 = v14;
      }

      else
      {
        v12 = v6;
        v13 = 0;
        v15 = 0;
      }

      *(v10 + 56) = MEMORY[0x1E69E6158];
      *(v10 + 64) = sub_1B1AC9204();
      if (v15)
      {
        v20 = v13;
      }

      else
      {
        v20 = 0;
      }

      v21 = 0xE000000000000000;
      if (v15)
      {
        v21 = v15;
      }

      *(v10 + 32) = v20;
      *(v10 + 40) = v21;
      sub_1B1C2C7C8(v7, &dword_1B1A8A000, v8, "-> %@", 5, 2, v10);

      xpc_connection_send_message_with_reply_sync(v2, v12);
      swift_getObjectType();
      if (!sub_1B1AE03A8(7))
      {
        break;
      }

      swift_getObjectType();
      sub_1B1AE5508(v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        swift_unknownObjectRelease();
        break;
      }

      v6 = v31;
      v22 = v31[2];
      if (!v22)
      {
        swift_unknownObjectRelease();

        break;
      }

      v29 = v3;
      v31 = v4;
      sub_1B1B2FB58(0, v22, 0);
      v2 = 0;
      v4 = 0;
      v7 = v31;
      v3 = v6 + 5;
      while (v2 < v6[2])
      {
        v23 = *v3;
        v32[0] = *(v3 - 1);
        v32[1] = v23;
        sub_1B1B36A24(v32, &v30);
        v24 = v30;
        v31 = v7;
        v26 = *(v7 + 16);
        v25 = *(v7 + 24);
        if (v26 >= v25 >> 1)
        {
          v27 = OUTLINED_FUNCTION_19_1(v25);
          sub_1B1B2FB58(v27, v26 + 1, 1);
          v7 = v31;
        }

        v2 = (v2 + 1);
        *(v7 + 16) = v26 + 1;
        *(v7 + 8 * v26 + 32) = v24;
        v3 += 2;
        if (v22 == v2)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          v29[5] = v7;
        }
      }

      __break(1u);
LABEL_31:
      OUTLINED_FUNCTION_12_6(&qword_1ED9A9500);
    }

    v28 = sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      OUTLINED_FUNCTION_0_12(&qword_1ED9A99B8);
    }

    sub_1B1C2C7C8(v28, &dword_1B1A8A000, qword_1ED9AA668, "Failed to get sandbox extensions", 32, 2, MEMORY[0x1E69E7CC0]);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  else
  {
    v16 = sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      OUTLINED_FUNCTION_0_12(&qword_1ED9A99B8);
    }

    v17 = qword_1ED9AA668;
    v18 = MEMORY[0x1E69E7CC0];

    return sub_1B1C2C7C8(v16, &dword_1B1A8A000, v17, "Failed to establish connection & sandbox", 40, 2, v18);
  }
}

char *sub_1B1B36A24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_1B1C2CBF8();
  v5 = sandbox_extension_consume();

  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = sub_1B1C2D098();
    if (qword_1ED9A99B8 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED9AA668;
    result = os_log_type_enabled(qword_1ED9AA668, v6);
    if (!result)
    {
      goto LABEL_12;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1B1A930E4(v3, v4, &v20);
    _os_log_impl(&dword_1B1A8A000, v7, v6, "Consume sandbox extension %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B2739FD0](v10, -1, -1);
    v11 = v9;
LABEL_11:
    result = MEMORY[0x1B2739FD0](v11, -1, -1);
LABEL_12:
    *a2 = v5;
    return result;
  }

  v12 = sub_1B1C2D0B8();
  if (qword_1ED9A99B8 != -1)
  {
    swift_once();
  }

  v13 = qword_1ED9AA668;
  result = os_log_type_enabled(qword_1ED9AA668, v12);
  if (!result)
  {
    goto LABEL_12;
  }

  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v20 = v15;
  *v14 = 136315650;
  *(v14 + 4) = sub_1B1A930E4(v3, v4, &v20);
  *(v14 + 12) = 1024;
  *(v14 + 14) = MEMORY[0x1B2737E10]();
  *(v14 + 18) = 2080;
  v16 = MEMORY[0x1B2737E10]();
  result = strerror(v16);
  if (result)
  {
    v17 = sub_1B1C2CCF8();
    v19 = sub_1B1A930E4(v17, v18, &v20);

    *(v14 + 20) = v19;
    _os_log_impl(&dword_1B1A8A000, v13, v12, "Failed to consume sandbox extension %s, errno: %d, error: %s", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1B2739FD0](v15, -1, -1);
    v11 = v14;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B36D08()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1B1B36D40()
{
  sub_1B1B36D08();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void *sub_1B1B36D74()
{
  v0[2] = 0xD000000000000023;
  v0[3] = 0x80000001B1C4C600;
  v0[4] = 0;
  v0[5] = 0;
  v0[6] = dispatch_semaphore_create(1);
  return v0;
}

unint64_t sub_1B1B36DD0()
{
  sub_1B1C2D498();
  v0 = OUTLINED_FUNCTION_107();

  return sub_1B1B36E10(v0, v1);
}

unint64_t sub_1B1B36E10(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1B1B37DE8(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1B2738970](v8, a1);
    sub_1B1B08B44(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1B1B36F34(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void *sub_1B1B36F90(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DB8, &unk_1B1C364C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 8);
  return v4;
}

void *sub_1B1B3700C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_1B1B37088(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_1B1B37108(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762490, &qword_1B1C37E70);
  v4 = *(sub_1B1C2C1C8() - 8);
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

void *sub_1B1B37204(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1B1B37088(v2, 0);

    MEMORY[0x1B2738A10](v3 + 4, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_1B1C2D468();
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void sub_1B1B372A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_1B1B37108((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      sub_1B1C2C1C8();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

id sub_1B1B37394(uint64_t a1, void *a2, char a3)
{
  sub_1B1AEBB3C();
  OUTLINED_FUNCTION_1_14();
  if (v7)
  {
    __break(1u);
LABEL_14:
    sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    result = sub_1B1C2D818();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7625B8, &unk_1B1C38170);
  if (sub_1B1C2D628())
  {
    sub_1B1AEBB3C();
    OUTLINED_FUNCTION_23_7();
    if (!v11)
    {
      goto LABEL_14;
    }

    v8 = v10;
  }

  v12 = *v3;
  if (v9)
  {
    *(v12[7] + 8 * v8) = a1;
  }

  else
  {
    sub_1B1AD6C78(v8, a2, a1, v12);

    return a2;
  }
}

uint64_t sub_1B1B374BC()
{
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_5_12(v4, v5, v6);
  OUTLINED_FUNCTION_1_14();
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = sub_1B1C2D818();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_40_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762578, &qword_1B1C38130);
  if (OUTLINED_FUNCTION_9_10(v8))
  {
    OUTLINED_FUNCTION_32_4();
    OUTLINED_FUNCTION_6_10();
    if (!v10)
    {
      goto LABEL_14;
    }

    v3 = v9;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    OUTLINED_FUNCTION_34_3();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_13_10();
    sub_1B1B37A20(v13, v14, v15, v16, v17);
    OUTLINED_FUNCTION_34_3();
  }
}

uint64_t sub_1B1B3758C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_36_3();
  v3 = v2;
  OUTLINED_FUNCTION_45_4();
  OUTLINED_FUNCTION_1_14();
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v4;
  v8 = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762590, &unk_1B1C38148);
  if ((OUTLINED_FUNCTION_47_3(v9) & 1) == 0)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_30_4();
  v10 = sub_1B1A8EB10();
  if ((v8 & 1) != (v11 & 1))
  {
LABEL_13:
    result = sub_1B1C2D818();
    __break(1u);
    return result;
  }

  v7 = v10;
LABEL_5:
  if (v8)
  {
    v12 = (*(*v1 + 56) + 16 * v7);
    *v12 = v0;
    v12[1] = v3;
    OUTLINED_FUNCTION_26_1();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_42_5();
    sub_1B1B37A68(v15, v16, v17, v18, v3, v19);
    OUTLINED_FUNCTION_26_1();
  }
}

uint64_t sub_1B1B37694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  OUTLINED_FUNCTION_36_3();
  v27 = v11;
  OUTLINED_FUNCTION_45_4();
  OUTLINED_FUNCTION_1_14();
  if (v14)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v12;
  v16 = v13;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  if ((OUTLINED_FUNCTION_47_3(v17) & 1) == 0)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_30_4();
  v18 = sub_1B1A8EB10();
  if ((v16 & 1) != (v19 & 1))
  {
LABEL_13:
    result = sub_1B1C2D818();
    __break(1u);
    return result;
  }

  v15 = v18;
LABEL_5:
  if (v16)
  {
    v20 = (*(*v8 + 56) + 16 * v15);
    *v20 = v7;
    v20[1] = v27;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_42_5();
    sub_1B1B37AB4(v22, v23, v24, v25, v27, v26);
  }
}

void sub_1B1B377C4()
{
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_5_12(v4, v5, v6);
  OUTLINED_FUNCTION_1_14();
  if (v7)
  {
    __break(1u);
LABEL_12:
    sub_1B1C2D818();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_40_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762588, &qword_1B1C38140);
  if (OUTLINED_FUNCTION_9_10(v8))
  {
    OUTLINED_FUNCTION_32_4();
    OUTLINED_FUNCTION_6_10();
    if (!v10)
    {
      goto LABEL_12;
    }

    v3 = v9;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    OUTLINED_FUNCTION_34_3();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_13_10();
    sub_1B1B37A20(v11, v12, v13, v14, v15);
    OUTLINED_FUNCTION_34_3();
  }
}

uint64_t sub_1B1B37880(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1B1A8EB10();
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762570, &qword_1B1C39C00);
  if ((sub_1B1C2D628() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1B1A8EB10();
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1B1C2D818();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = v17 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624A8, &unk_1B1C38120) - 8) + 72) * v12;

    return sub_1B1B37D78(a1, v18);
  }

  else
  {
    sub_1B1B37B00(v12, a2, a3, a1, v16);
  }
}

unint64_t sub_1B1B37A20(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1B1B37A68(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
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

uint64_t sub_1B1B37AB4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_8_9(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

uint64_t sub_1B1B37B00(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624A8, &unk_1B1C38120);
  result = sub_1B1B37D08(a4, v9 + *(*(v10 - 8) + 72) * a1);
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

uint64_t sub_1B1B37BA4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_8_9(a1, a5 + 8 * (a1 >> 6));
  v7 = (v6[6] + 16 * result);
  *v7 = v8;
  v7[1] = v9;
  *(v6[7] + 8 * result) = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v6[2] = v13;
  }

  return result;
}

unint64_t sub_1B1B37BEC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_7_10(a1, a2, a3, a4);
  *(v7 + 8 * result) = v6;
  *(*(v5 + 56) + 8 * result) = v8;
  v9 = *(v5 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v11;
  }

  return result;
}

uint64_t sub_1B1B37C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_2_17(a1, a2, a3);
  sub_1B1A9EC44(v5, v6, v7);
  if (v4)
  {
    v8 = OUTLINED_FUNCTION_35_6();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_36();
    v8 = MEMORY[0x1B2738A20](v10);
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_48_1();
}

uint64_t sub_1B1B37C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_2_17(a1, a2, a3);
  sub_1B1A9EC44(v5, v6, v7);
  if (v4)
  {
    v8 = OUTLINED_FUNCTION_35_6();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_36();
    v8 = MEMORY[0x1B2738A20](v10);
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_48_1();
}

uint64_t sub_1B1B37D08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624A8, &unk_1B1C38120);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1B37D78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624A8, &unk_1B1C38120);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B1B37E44()
{
  result = qword_1ED9A90A0;
  if (!qword_1ED9A90A0)
  {
    type metadata accessor for TTSAssetProperty(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A90A0);
  }

  return result;
}

uint64_t _s8ProxyKeyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s8ProxyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B1B38004()
{
  result = qword_1EB761080[0];
  if (!qword_1EB761080[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB761080);
  }

  return result;
}

id sub_1B1B38068()
{
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  OUTLINED_FUNCTION_75();
  result = sub_1B1AAFB2C(0xD00000000000002ALL, v0);
  qword_1ED9A98B0 = result;
  return result;
}

id sub_1B1B38158()
{
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  OUTLINED_FUNCTION_75();
  result = sub_1B1AAFB2C(0xD00000000000003BLL, v0);
  qword_1ED9A98C0 = result;
  return result;
}

id sub_1B1B381FC()
{
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  OUTLINED_FUNCTION_75();
  result = sub_1B1AAFB2C(0xD00000000000002FLL, v0);
  qword_1ED9A98D8 = result;
  return result;
}

id sub_1B1B382C8()
{
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  OUTLINED_FUNCTION_75();
  result = sub_1B1AAFB2C(0xD000000000000032, v0);
  qword_1ED9A9968 = result;
  return result;
}

Swift::String __swiftcall TTSAssetType.pathComponent()()
{
  v1 = [v0 string];
  sub_1B1C2CB58();

  sub_1B1A8EDAC();
  v2 = sub_1B1C2D398();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

id sub_1B1B38494()
{
  sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  result = sub_1B1BFFEC8();
  qword_1EB7625D0 = result;
  return result;
}

id sub_1B1B38540()
{
  sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  result = sub_1B1BFFEC8();
  qword_1ED9A9728 = result;
  return result;
}

id sub_1B1B385EC()
{
  sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  result = sub_1B1BFFEC8();
  qword_1ED9A94B8 = result;
  return result;
}

id sub_1B1B38694()
{
  sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  result = sub_1B1BFFEC8();
  qword_1EB761318 = result;
  return result;
}

id sub_1B1B38730()
{
  sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  result = sub_1B1BFFEC8();
  qword_1ED9A4F10 = result;
  return result;
}

id sub_1B1B3881C()
{
  sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  result = sub_1B1BFFEC8();
  qword_1ED9A4F00 = result;
  return result;
}

id sub_1B1B38BB8()
{
  sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
  result = sub_1B1ABAA54();
  qword_1EB7625D8 = result;
  return result;
}

id sub_1B1B38C54()
{
  sub_1B1A8E474(0, &unk_1EB762650, off_1E7AF1A80);
  v0 = OUTLINED_FUNCTION_1_15();
  result = sub_1B1B67B98((v0 | 0x69746375646F0000), 0xEA00000000006E6FLL);
  qword_1EB7625E0 = result;
  return result;
}

id sub_1B1B38CF8()
{
  sub_1B1A8E474(0, &unk_1EB762650, off_1E7AF1A80);
  result = sub_1B1B67B98(0x696C69626176696CLL, 0xEA00000000007974);
  qword_1EB7625E8 = result;
  return result;
}

id sub_1B1B38DA0()
{
  sub_1B1A8E474(0, &unk_1EB762650, off_1E7AF1A80);
  result = sub_1B1B67B98(0x676E6967617473, 0xE700000000000000);
  qword_1EB7625F0 = result;
  return result;
}

uint64_t TTSAssetServer.isEqual(_:)(uint64_t a1)
{
  sub_1B1A9D80C(a1, v39);
  if (v40)
  {
    sub_1B1A8E474(0, &unk_1EB762650, off_1E7AF1A80);
    if (swift_dynamicCast())
    {
      v3 = [v1 string];
      v4 = sub_1B1C2CB58();
      v6 = v5;

      v7 = v37[1];
      v8 = [v7 string];
      v9 = sub_1B1C2CB58();
      v11 = v10;

      if (v4 == v9 && v6 == v11)
      {

        goto LABEL_16;
      }

      v13 = sub_1B1C2D7A8();

      if (v13)
      {

LABEL_9:
LABEL_16:
        v20 = 1;
        return v20 & 1;
      }

      type metadata accessor for TTSAssetMAStrategy();
      v22 = [v1 string];
      v23 = sub_1B1C2CB58();
      v25 = v24;

      v26 = sub_1B1B39404(v23, v25);
      v28 = v27;

      v29 = [v7 string];

      v30 = sub_1B1C2CB58();
      v32 = v31;

      v33 = sub_1B1B39404(v30, v32);
      v35 = v34;

      if (v28)
      {
        if (v35)
        {
          if (v26 != v33 || v28 != v35)
          {
            v20 = sub_1B1C2D7A8();

            return v20 & 1;
          }

          goto LABEL_9;
        }
      }

      else
      {

        if (!v35)
        {
          goto LABEL_16;
        }
      }

      v20 = 0;
      return v20 & 1;
    }
  }

  else
  {
    sub_1B1A9937C(v39);
  }

  sub_1B1A9D80C(a1, v39);
  v14 = v40;
  if (v40)
  {
    v15 = __swift_project_boxed_opaque_existential_1(v39, v40);
    v16 = *(v14 - 8);
    MEMORY[0x1EEE9AC00](v15);
    v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v18);
    v19 = sub_1B1C2D798();
    (*(v16 + 8))(v18, v14);
    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  else
  {
    v19 = 0;
  }

  v38.receiver = v1;
  v38.super_class = TTSAssetServer;
  v20 = objc_msgSendSuper2(&v38, sel_isEqual_, v19);
  swift_unknownObjectRelease();
  return v20 & 1;
}

uint64_t TTSAssetServer.hash.getter()
{
  type metadata accessor for TTSAssetMAStrategy();
  v1 = [v0 string];
  v2 = sub_1B1C2CB58();
  v4 = v3;

  sub_1B1B39404(v2, v4);
  v6 = v5;

  if (!v6)
  {
    return 0;
  }

  sub_1B1A8EDAC();
  v7 = sub_1B1C2D3B8();

  return v7;
}

unint64_t VoiceBrand.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B1B39300@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = VoiceBrand.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1B1B39348()
{
  result = qword_1EB7625F8;
  if (!qword_1EB7625F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7625F8);
  }

  return result;
}

unint64_t sub_1B1B393A0()
{
  result = qword_1EB762600;
  if (!qword_1EB762600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB762520, &qword_1B1C39820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762600);
  }

  return result;
}

uint64_t sub_1B1B39404(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B1C2BEA8();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {

    OUTLINED_FUNCTION_9_11();
    OUTLINED_FUNCTION_5_13();
    if ((sub_1B1C2CDB8() & 1) == 0)
    {
      v42 = a1;
      v43 = a2;

      v10 = OUTLINED_FUNCTION_9_11();
      MEMORY[0x1B27381B0](v10);

      a1 = v42;
      a2 = v43;
    }

    OUTLINED_FUNCTION_5_13();
    v11 = sub_1B1C2CDA8();

    if (v11)
    {
      v42 = 0xD00000000000001DLL;
      v43 = 0x80000001B1C4CBD0;
      v12 = OUTLINED_FUNCTION_72();
      MEMORY[0x1B27381B0](v12);
    }

    else
    {
      OUTLINED_FUNCTION_5_13();
      if (sub_1B1C2CDA8())
      {
        OUTLINED_FUNCTION_9_11();
        OUTLINED_FUNCTION_5_13();
        v41 = sub_1B1BCFF9C(v13, v14, v15, v16);
        if ((v17 & 1) == 0)
        {
          v18 = HIBYTE(a2) & 0xF;
          if ((a2 & 0x2000000000000000) == 0)
          {
            v18 = a1 & 0xFFFFFFFFFFFFLL;
          }

          v19 = 4 * v18;
          v20 = (v6 + 8);
          for (i = 15; i >> 14 != v19; i = sub_1B1C2CC78())
          {
            v22 = sub_1B1C2CDD8();
            v24 = v23;
            sub_1B1C2BE48();
            sub_1B1BC8E3C(v22, v24);
            LOBYTE(v22) = sub_1B1C2BE88();

            result = (*v20)(v9, v4);
            if (v22)
            {
              if (i >> 14 >= v41 >> 14)
              {
                v26 = v41;
                OUTLINED_FUNCTION_5_13();
                v27 = sub_1B1C2CE08();
                v46 = 0xD000000000000023;
                v47 = 0x80000001B1C4CBA0;
                v42 = v27;
                v43 = v28;
                v44 = v29;
                v45 = v30;
                sub_1B1B3B7CC();
                OUTLINED_FUNCTION_14_10();

                v32 = v46;
                v31 = v47;
                v33 = sub_1B1B5E6F8(v26, a1, a2);
                v35 = v34;
                v37 = v36;
                v39 = v38;

                v46 = v32;
                v47 = v31;
                v42 = v33;
                v43 = v35;
                v44 = v37;
                v45 = v39;

                OUTLINED_FUNCTION_14_10();

                return OUTLINED_FUNCTION_72();
              }

              __break(1u);
              return result;
            }
          }
        }
      }
    }
  }

  return OUTLINED_FUNCTION_72();
}

void sub_1B1B39710(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69B1948]) init];
  [v2 setDiscretionary_];
  [v2 setAllowsExpensiveAccess_];
  if (qword_1EB7610B8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB772C38;
  [qword_1EB772C38 lock];
  if (__OFADD__(qword_1EB772C30, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_1EB772C30;
    [v3 unlock];
    v4 = objc_opt_self();
    v5 = [a1 string];
    v6 = sub_1B1C2CB58();
    v8 = v7;

    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    v13[4] = sub_1B1B3B6E4;
    v13[5] = v9;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1B1B4B398;
    v13[3] = &block_descriptor_9;
    v10 = _Block_copy(v13);
    v11 = v2;
    v12 = a1;

    sub_1B1B3B6EC(v6, v8, v2, v10, v4);
    _Block_release(v10);
  }
}

id sub_1B1B398F8(void *a1, void *a2)
{
  if (!a1)
  {
    goto LABEL_4;
  }

  v3 = a2;
  v4 = a1;
  v2 = sub_1B1C2D0B8();
  if (qword_1ED9A99C0 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v5 = qword_1ED9AA670;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1B1C36280;
    v3 = [v3 string];
    v7 = sub_1B1C2CB58();
    v9 = v8;

    *(v6 + 56) = MEMORY[0x1E69E6158];
    v10 = sub_1B1AC9204();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    v11 = MEMORY[0x1E69E65A8];
    *(v6 + 96) = MEMORY[0x1E69E6530];
    *(v6 + 104) = v11;
    *(v6 + 64) = v10;
    *(v6 + 72) = v4;
    sub_1B1C2C7C8(v2, &dword_1B1A8A000, v5, "Catalog %{public}@ download failed: %d", 38, 2, v6);

LABEL_4:
    if (qword_1EB7610B8 != -1)
    {
      swift_once();
    }

    v4 = qword_1EB772C38;
    [qword_1EB772C38 lock];
    v12 = qword_1EB772C30 - 1;
    if (!__OFSUB__(qword_1EB772C30, 1))
    {
      break;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  --qword_1EB772C30;
  if (!v12)
  {
    [v4 broadcast];
  }

  return [v4 unlock];
}

uint64_t sub_1B1B39AC0()
{
  result = sub_1B1B39AE4();
  byte_1EB762610 = result & 1;
  return result;
}

uint64_t sub_1B1B39AE4()
{
  v0 = sub_1B1C2C428();
  v52 = *(v0 - 8);
  v1 = MEMORY[0x1EEE9AC00](v0);
  v59 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v47 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C38370;
  if (qword_1ED9A98A8 != -1)
  {
LABEL_48:
    swift_once();
  }

  v6 = qword_1ED9A98B0;
  *(inited + 32) = qword_1ED9A98B0;
  v7 = qword_1ED9A9850;
  v58 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_1ED9A97E0;
  *(inited + 40) = qword_1ED9A97E0;
  v9 = qword_1ED9A98B8;
  v56 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v54 = v4;
  v10 = qword_1ED9A98C0;
  *(inited + 48) = qword_1ED9A98C0;
  v11 = qword_1ED9A98D0;
  v60 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_1ED9A98D8;
  *(inited + 56) = qword_1ED9A98D8;
  v13 = qword_1ED9A9978;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v55 = v0;
  v15 = qword_1ED9A9980;
  *(inited + 64) = qword_1ED9A9980;
  v16 = qword_1ED9A9960;
  v57 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_1ED9A9968;
  *(inited + 72) = qword_1ED9A9968;
  v61 = MEMORY[0x1E69E7CC0];
  v53 = v17;
  v18 = 0;
  v51 = xmmword_1B1C361C0;
  while (v18 != 6)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1B2738A20](v18, inited);
    }

    else
    {
      if (v18 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_48;
      }

      v19 = *(inited + 8 * v18 + 32);
    }

    v20 = v19;
    v0 = sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    v21 = v14;
    v22 = sub_1B1C2D248();

    if (v22 & 1) != 0 || (v23 = v60, v24 = sub_1B1C2D248(), v23, (v24) || (v25 = v58, v26 = sub_1B1C2D248(), v25, (v26))
    {
      v0 = &v61;
      sub_1B1C2D588();
      v4 = *(v61 + 16);
      sub_1B1C2D5C8();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
    }

    else
    {
      v4 = v57;
      v27 = sub_1B1C2D248();

      if (v27 & 1) != 0 || (v4 = v56, v28 = sub_1B1C2D248(), v4, (v28) || (v4 = v53, v0 = sub_1B1C2D248(), v4, (v0))
      {
      }

      else
      {
        v50 = sub_1B1C2D0C8();
        if (qword_1ED9A99B8 != -1)
        {
          swift_once();
        }

        v49 = qword_1ED9AA668;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
        v29 = swift_allocObject();
        *(v29 + 16) = v51;
        v0 = [v20 string];
        v4 = sub_1B1C2CB58();
        v48 = v30;

        *(v29 + 56) = MEMORY[0x1E69E6158];
        *(v29 + 64) = sub_1B1AC9204();
        v31 = v48;
        *(v29 + 32) = v4;
        *(v29 + 40) = v31;
        sub_1B1C2C7C8(v50, &dword_1B1A8A000, v49, "TTSAsset encountered unknown asset type %{public}@ and tentatively tried to handle through non-MobileAsset", 106, 2, v29);
      }
    }

    ++v18;
  }

  swift_setDeallocating();
  sub_1B1B2EFA8();
  v32 = v61;
  v33 = sub_1B1A9547C();
  v35 = v54;
  v34 = v55;
  if (v33)
  {
    v36 = v33;
    type metadata accessor for TTSAssetMAStrategy();
    if (v36 < 1)
    {
      __break(1u);
LABEL_50:
      swift_once();
      goto LABEL_41;
    }

    v37 = 0;
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x1B2738A20](v37, v32);
      }

      else
      {
        v38 = *(v32 + 8 * v37 + 32);
      }

      v39 = v38;
      v40 = [v38 string];
      if (!v40)
      {
        sub_1B1C2CB58();
        v40 = sub_1B1C2CB28();
      }

      ++v37;
      MEMORY[0x1B2739140](v40);

      sub_1B1B39710(v39);
    }

    while (v36 != v37);
  }

  LODWORD(v4) = byte_1EB772E70;
  if (byte_1EB772E70)
  {
    return v4 ^ 1;
  }

  byte_1EB772E70 = 1;
  sub_1B1C2C3A8();
  if (qword_1EB7610B8 != -1)
  {
    goto LABEL_50;
  }

LABEL_41:
  v41 = qword_1EB772C38;
  [qword_1EB772C38 lock];
  v42 = (v52 + 8);
  while (qword_1EB772C30 >= 1)
  {
    v43 = v59;
    sub_1B1C2C418();
    v44 = sub_1B1C2C388();
    (*v42)(v43, v34);
    if ((v44 & 1) == 0)
    {
      break;
    }

    v45 = sub_1B1C2C378();
    [v41 waitUntilDate_];
  }

  [v41 unlock];
  (*v42)(v35, v34);
  return v4 ^ 1;
}

void sub_1B1B3A1E8()
{
  v0 = [objc_opt_self() processInfo];
  [v0 operatingSystemVersion];

  if (!v6)
  {
    v2 = 0;
    v4 = 0xE000000000000000;
    goto LABEL_9;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v1 = v6 + 65;
  if (v6 >= 0xFFFFFFBF)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v1 >> 11 != 27)
  {
    if (HIWORD(v1) <= 0x10u)
    {
LABEL_7:
      v2 = sub_1B1C2CC38();
      v4 = v3;
LABEL_9:
      MEMORY[0x1B27381B0](v2, v4);

      MEMORY[0x1B27381B0](0x6C617473797243, 0xE700000000000000);

      v5 = OUTLINED_FUNCTION_9_11();
      MEMORY[0x1B27381B0](v5);

      return;
    }

LABEL_13:
    __break(1u);
    goto LABEL_7;
  }

  __break(1u);
}

id sub_1B1B3A3C4(uint64_t a1, uint64_t a2, id a3)
{
  v4 = [a3 string];
  if (!v4)
  {
    sub_1B1C2CB58();
    v4 = sub_1B1C2CB28();
  }

  v5 = sub_1B1C2CB28();
  MEMORY[0x1B2739150](v4, v5);

  type metadata accessor for TTSAssetMAStrategy();
  sub_1B1B39710(a3);
  v6 = type metadata accessor for TTSAsset();

  return [v6 waitForCatalogUpdates];
}

uint64_t sub_1B1B3A488(void *a1, id a2)
{
  v4 = v2;
  if (!a1)
  {
    v10 = 0;
    goto LABEL_7;
  }

  if (qword_1EB7615E8 != -1)
  {
    OUTLINED_FUNCTION_0_16(&qword_1EB7615E8);
  }

  v7 = qword_1EB7625E0;
  sub_1B1A8E474(0, &unk_1EB762650, off_1E7AF1A80);
  v8 = OUTLINED_FUNCTION_8_10(v7);

  if (v8)
  {
    v9 = 0x80000001B1C4CB00;
    v10 = 0xD00000000000001ELL;
    goto LABEL_18;
  }

  if (qword_1EB7615F0 != -1)
  {
    OUTLINED_FUNCTION_2_19(&qword_1EB7615F0);
  }

  v11 = OUTLINED_FUNCTION_8_10(qword_1EB7625E8);

  if ((v11 & 1) == 0)
  {
    if (qword_1EB7615F8 != -1)
    {
      OUTLINED_FUNCTION_1_16(&qword_1EB7615F8);
    }

    v14 = OUTLINED_FUNCTION_8_10(qword_1EB7625F0);

    if (v14)
    {
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      goto LABEL_17;
    }

    type metadata accessor for TTSAssetMAStrategy();
    v15 = [a1 string];
    v16 = sub_1B1C2CB58();
    v18 = v17;

    v10 = sub_1B1B39404(v16, v18);
    v9 = v19;

    if (v9)
    {
      goto LABEL_17;
    }

LABEL_7:
    sub_1B1B3A3C4(*(v4 + 16), *(v4 + 24), a2);
    v9 = 0;
    goto LABEL_22;
  }

  sub_1B1B3A1E8();
  v10 = v12;
  v9 = v13;
LABEL_17:
  swift_bridgeObjectRetain_n();
LABEL_18:
  if (sub_1B1C2CDA8())
  {

    sub_1B1B3A1E8();
    sub_1B1B3A3C4(v20, v21, a2);
  }

  else
  {
    sub_1B1A8EDAC();
    v22 = sub_1B1C2D3D8();

    if (v22)
    {
      sub_1B1B3A3C4(*(v4 + 16), *(v4 + 24), a2);
    }
  }

LABEL_22:
  v23 = OUTLINED_FUNCTION_10_12();
  if (v23)
  {
    if (v9)
    {
LABEL_24:

      v24 = sub_1B1C2CB28();

      goto LABEL_27;
    }
  }

  else
  {
    sub_1B1C2CB58();
    v23 = sub_1B1C2CB28();

    if (v9)
    {
      goto LABEL_24;
    }
  }

  v24 = 0;
LABEL_27:
  v25 = MEMORY[0x1E69E6158];
  v26 = MEMORY[0x1B2739150](v23, v24);

  if (v9)
  {
    v47 = sub_1B1C2D098();
    if (qword_1ED9A99C0 != -1)
    {
      OUTLINED_FUNCTION_0_13(&qword_1ED9A99C0);
    }

    v27 = qword_1ED9AA670;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1B1C364D0;
    *(v28 + 56) = v25;
    v29 = sub_1B1AC9204();
    *(v28 + 64) = v29;
    *(v28 + 32) = v10;
    *(v28 + 40) = v9;
    v30 = OUTLINED_FUNCTION_10_12();
    v31 = sub_1B1C2CB58();
    v32 = a2;
    v34 = v33;

    *(v28 + 96) = v25;
    *(v28 + 104) = v29;
    v35 = MEMORY[0x1E69E7360];
    *(v28 + 72) = v31;
    *(v28 + 80) = v34;
    v36 = MEMORY[0x1E69E73D8];
    *(v28 + 136) = v35;
    *(v28 + 144) = v36;
    *(v28 + 112) = v26;
    sub_1B1C2C7C8(v47, &dword_1B1A8A000, v27, "Server %{public}@ for %{public}@: %d", 36, 2, v28);

    if (v26)
    {

      return 0;
    }

    a2 = v32;
  }

  else
  {
    v38 = sub_1B1C2D098();
    if (qword_1ED9A99C0 != -1)
    {
      OUTLINED_FUNCTION_0_13(&qword_1ED9A99C0);
    }

    v39 = qword_1ED9AA670;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1B1C361C0;
    v41 = OUTLINED_FUNCTION_10_12();
    v42 = sub_1B1C2CB58();
    v44 = v43;

    *(v40 + 56) = v25;
    *(v40 + 64) = sub_1B1AC9204();
    *(v40 + 32) = v42;
    *(v40 + 40) = v44;
    sub_1B1C2C7C8(v38, &dword_1B1A8A000, v39, "Server (default) for %{public}@", 31, 2, v40);

    if (v26)
    {
      v45 = OUTLINED_FUNCTION_10_12();
      if (!v45)
      {
        sub_1B1C2CB58();
        v45 = sub_1B1C2CB28();
      }

      ASSetAssetServerURLForAssetType();

      v46 = OUTLINED_FUNCTION_10_12();
      if (!v46)
      {
        sub_1B1C2CB58();
        v46 = sub_1B1C2CB28();
      }

      ASSetDefaultAssetServerURLForAssetType();

      goto LABEL_42;
    }
  }

LABEL_42:
  type metadata accessor for TTSAssetMAStrategy();
  sub_1B1B39710(a2);
  return 1;
}

unint64_t sub_1B1B3A9FC()
{
  v1 = v0;
  if (qword_1EB7615E8 != -1)
  {
    OUTLINED_FUNCTION_0_16(&qword_1EB7615E8);
  }

  v2 = qword_1EB7625E0;
  sub_1B1A8E474(0, &unk_1EB762650, off_1E7AF1A80);
  v3 = OUTLINED_FUNCTION_8_10(v2);

  if (v3)
  {
    return 0xD00000000000001ELL;
  }

  if (qword_1EB7615F0 != -1)
  {
    OUTLINED_FUNCTION_2_19(&qword_1EB7615F0);
  }

  v5 = OUTLINED_FUNCTION_8_10(qword_1EB7625E8);

  if (v5)
  {
    sub_1B1B3A1E8();
    return v6;
  }

  else
  {
    if (qword_1EB7615F8 != -1)
    {
      OUTLINED_FUNCTION_1_16(&qword_1EB7615F8);
    }

    v7 = OUTLINED_FUNCTION_8_10(qword_1EB7625F0);

    if (v7)
    {
      v4 = *(v1 + 16);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1B1B3AB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_text);
  v7 = 1;
  swift_beginAccess();
  *v6 = 0;
  v6[1] = 0xE000000000000000;

  if (a2 != 7955819 || a3 != 0xE300000000000000)
  {
    OUTLINED_FUNCTION_72();
    result = sub_1B1C2D7A8();
    v7 = result;
  }

  *(v3 + OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_inKey) = v7 & 1;
  return result;
}

uint64_t sub_1B1B3ACE8()
{
  v1 = (v0 + OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_inKey);
  if (*(v0 + OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_inKey) == 1)
  {
    v2 = (v0 + OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_text);
    swift_beginAccess();
    if (*v2 == 0x64616F6C6E776F44 && v2[1] == 0xEE006D6F72466465)
    {
      v4 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_5_13();
      v4 = sub_1B1C2D7A8();
    }

    *(v0 + OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_wantValue) = v4 & 1;
    goto LABEL_11;
  }

  v1 = (v0 + OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_wantValue);
  if (*(v0 + OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_wantValue) == 1)
  {
    v5 = (v0 + OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_text);
    swift_beginAccess();
    v6 = v5[1];
    v7 = (v0 + OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_source);
    *v7 = *v5;
    v7[1] = v6;

LABEL_11:
    *v1 = 0;
  }

  v8 = (v0 + OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_text);
  swift_beginAccess();
  *v8 = 0;
  v8[1] = 0xE000000000000000;
}

uint64_t sub_1B1B3AEDC()
{
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_72();
  MEMORY[0x1B27381B0](v0);
  return swift_endAccess();
}

id sub_1B1B3AFB4()
{
  v0[OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_inKey] = 0;
  v0[OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_wantValue] = 0;
  v1 = &v0[OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_text];
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = &v0[OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_source];
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for TTSAssetMAStrategy.DownloadSourceExtractor();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1B1B3B048()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSAssetMAStrategy.DownloadSourceExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B1B3B0D0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v53 - v3;
  v5 = sub_1B1C2C0A8();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v54 = v12;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v53 - v17;
  v19 = [a1 pathComponent];
  v20 = sub_1B1C2CB58();
  v22 = v21;

  v55 = 0xD00000000000001ALL;
  v56 = 0x80000001B1C4CAE0;
  MEMORY[0x1B27381B0](v20, v22);
  v23 = OUTLINED_FUNCTION_9_11();
  MEMORY[0x1B27381B0](v23);
  MEMORY[0x1B27381B0](v20, v22);
  v24 = v11;
  v25 = v54;

  MEMORY[0x1B27381B0](1819113518, 0xE400000000000000);
  (*(v7 + 104))(v10, *MEMORY[0x1E6968F68], v5);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v24);
  sub_1B1C2C198();
  sub_1B1A8E474(0, &qword_1EB763F60, 0x1E696B0A8);
  (*(v25 + 16))(v16, v18, v24);
  v26 = sub_1B1B3B5BC(v16);
  if (!v26)
  {
    v34 = OUTLINED_FUNCTION_7_11();
    v35(v34);
    return 0;
  }

  v27 = v26;
  v28 = [objc_allocWithZone(type metadata accessor for TTSAssetMAStrategy.DownloadSourceExtractor()) init];
  [v27 setDelegate_];
  [v27 parse];
  v29 = &v28[OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_source];
  v31 = *&v28[OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_source];
  v30 = *&v28[OBJC_IVAR____TtCC14SiriTTSService18TTSAssetMAStrategy23DownloadSourceExtractor_source + 8];
  if ((v31 || v30 != 0xE000000000000000) && (OUTLINED_FUNCTION_6_11(0, 0xE000000000000000) & 1) == 0)
  {
    v38 = v31 == 0xD00000000000001ELL && 0x80000001B1C4CB00 == v30;
    if (v38 || (OUTLINED_FUNCTION_6_11(0xD00000000000001ELL, 0x80000001B1C4CB00) & 1) != 0)
    {
      if (qword_1EB7615E8 != -1)
      {
        OUTLINED_FUNCTION_0_16(&qword_1EB7615E8);
      }

      v39 = qword_1EB7625E0;
      goto LABEL_17;
    }

    sub_1B1B3A1E8();
    if (v43 == v31 && v44 == v30)
    {
    }

    else
    {
      v46 = OUTLINED_FUNCTION_6_11(v43, v44);

      if ((v46 & 1) == 0)
      {
        v47 = *(v53 + 16);
        v48 = *(v53 + 24);
        if (v47 == v31 && v48 == v30)
        {
        }

        else
        {
          v50 = OUTLINED_FUNCTION_6_11(v47, v48);

          if ((v50 & 1) == 0)
          {
            sub_1B1A8E474(0, &unk_1EB762650, off_1E7AF1A80);
            v52 = *v29;
            v51 = *(v29 + 1);

            v40 = sub_1B1B67B98(v52, v51);
            goto LABEL_18;
          }
        }

        if (qword_1EB7615F8 != -1)
        {
          OUTLINED_FUNCTION_1_16(&qword_1EB7615F8);
        }

        v39 = qword_1EB7625F0;
LABEL_17:
        v40 = v39;
LABEL_18:
        v36 = v40;

        v41 = OUTLINED_FUNCTION_7_11();
        v42(v41);
        return v36;
      }
    }

    if (qword_1EB7615F0 != -1)
    {
      OUTLINED_FUNCTION_2_19(&qword_1EB7615F0);
    }

    v39 = qword_1EB7625E8;
    goto LABEL_17;
  }

  v32 = OUTLINED_FUNCTION_7_11();
  v33(v32);

  return 0;
}

id sub_1B1B3B5BC(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1B1C2C118();
  v4 = [v2 initWithContentsOfURL_];

  v5 = sub_1B1C2C1C8();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_1B1B3B658()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_1B1B3B6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1B1C2CB28();

  [a5 startCatalogDownload:v8 options:a3 then:a4];
}

unint64_t sub_1B1B3B768()
{
  result = qword_1EB762648;
  if (!qword_1EB762648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB762640, &qword_1B1C383E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762648);
  }

  return result;
}

unint64_t sub_1B1B3B7CC()
{
  result = qword_1EB762660;
  if (!qword_1EB762660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762660);
  }

  return result;
}

uint64_t sub_1B1B3B874()
{
  v9 = sub_1B1C2D128();
  OUTLINED_FUNCTION_7();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_16();
  v5 = v4 - v3;
  v6 = sub_1B1C2D118();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16();
  v7 = sub_1B1C2C9D8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_16();
  sub_1B1A8E474(0, &qword_1ED9A9940, 0x1E69E9610);
  sub_1B1C2C9A8();
  sub_1B1ACD030(&qword_1ED9A9720, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7629A0, &unk_1B1C38440);
  sub_1B1A97978(&qword_1ED9A96A0, &qword_1EB7629A0, &unk_1B1C38440);
  sub_1B1C2D418();
  (*(v1 + 104))(v5, *MEMORY[0x1E69E8090], v9);
  result = sub_1B1C2D158();
  qword_1ED9AA608 = result;
  return result;
}

id sub_1B1B3BAB0()
{
  result = sub_1B1B3BAD0();
  qword_1ED9AA610 = result;
  return result;
}

id sub_1B1B3BAD0()
{
  v0 = [objc_opt_self() clientWithIdentifier_];
  v1 = sub_1B1C2CB28();
  if (qword_1ED9A92A8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED9AA608;
  v6[4] = sub_1B1B3BC28;
  v6[5] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B1B3658C;
  v6[3] = &block_descriptor_15;
  v3 = _Block_copy(v6);
  v4 = [v0 addUpdateHandlerForNamespaceName:v1 queue:v2 usingBlock:v3];
  _Block_release(v3);

  qword_1ED9AA5C8 = v4;
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1B1B3BC28(uint64_t a1)
{
  v1 = sub_1B1C2D0D8();
  if (qword_1ED9A99B8 != -1)
  {
    swift_once();
  }

  sub_1B1C2C7C8(v1, &dword_1B1A8A000, qword_1ED9AA668, "Get namespace update, refreshing trial client", 45, 2, MEMORY[0x1E69E7CC0]);
  type metadata accessor for TTSAssetTrialStrategy();
  result = sub_1B1B3BD20();
  byte_1EB772D30 = 0;
  if (qword_1EB761280 != -1)
  {
    result = swift_once();
  }

  if (byte_1EB772CE0 == 1)
  {

    return notify_post("com.apple.voiceservices.notification.voice-update");
  }

  return result;
}

uint64_t sub_1B1B3BD20()
{
  if (qword_1ED9A92B0 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1ED9A92B0);
  }

  v0 = qword_1ED9AA610;
  [qword_1ED9AA610 refresh];
  if (qword_1ED9A9298 != -1)
  {
    OUTLINED_FUNCTION_6_12(&qword_1ED9A9298);
  }

  v1 = OUTLINED_FUNCTION_11_6();
  v2 = [v0 factorLevelsWithNamespaceName_];

  sub_1B1A8E474(0, &qword_1ED9A9280, 0x1E69DB538);
  v3 = sub_1B1C2CE78();

  qword_1ED9AA620 = v3;
}

void sub_1B1B3BE10()
{
  if (qword_1ED9A92B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED9AA610;
  v1 = sub_1B1C2CB28();
  v2 = [v0 factorLevelsWithNamespaceName_];

  sub_1B1A8E474(0, &qword_1ED9A9280, 0x1E69DB538);
  v3 = sub_1B1C2CE78();

  qword_1ED9AA620 = v3;
}

uint64_t sub_1B1B3BEDC()
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
  *(v6 + 16) = xmmword_1B1C36280;

  OUTLINED_FUNCTION_10_13();

  MEMORY[0x1B27381B0](0xD000000000000013, 0x80000001B1C48290);

  MEMORY[0x1B27381B0](47, 0xE100000000000000);

  *(v6 + 32) = v5;
  *(v6 + 40) = v4;

  OUTLINED_FUNCTION_10_13();

  MEMORY[0x1B27381B0](3551284, 0xE300000000000000);

  MEMORY[0x1B27381B0](47, 0xE100000000000000);

  *(v6 + 48) = v5;
  *(v6 + 56) = v4;
  sub_1B1ABF93C(&unk_1F28BFBE0);
  return v6;
}

uint64_t sub_1B1B3C0BC()
{
  sub_1B1C2C968();
  OUTLINED_FUNCTION_7();
  v69 = v1;
  v70 = v0;
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_16();
  v59 = (v3 - v2);
  sub_1B1C2C9F8();
  OUTLINED_FUNCTION_7();
  v67 = v5;
  v68 = v4;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v65 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v59 - v8;
  v9 = sub_1B1C2C988();
  OUTLINED_FUNCTION_7();
  v63 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_16();
  v14 = v13 - v12;
  sub_1B1C2C9D8();
  OUTLINED_FUNCTION_7();
  v61 = v16;
  v62 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_16();
  v19 = v18 - v17;
  v20 = sub_1B1C2C998();
  OUTLINED_FUNCTION_7();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_16();
  v26 = v25 - v24;
  sub_1B1C2C428();
  OUTLINED_FUNCTION_7();
  v71 = v28;
  v72 = v27;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_16();
  v31 = v30 - v29;
  v32 = sub_1B1C2D0D8();
  if (qword_1ED9A99C0 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_1ED9A99C0);
  }

  v64 = qword_1ED9AA670;
  sub_1B1C2C7C8(v32, &dword_1B1A8A000, qword_1ED9AA670, "#Trial attempting namespace download", 36, 2, MEMORY[0x1E69E7CC0], v59);
  byte_1EB761498 = 0;
  v33 = [objc_opt_self() now];
  sub_1B1C2C3D8();

  v34 = dispatch_semaphore_create(0);
  v60 = v31;
  v35 = v34;
  sub_1B1A8E474(0, &qword_1ED9A9940, 0x1E69E9610);
  (*(v22 + 104))(v26, *MEMORY[0x1E69E7F88], v20);
  v36 = sub_1B1C2D168();
  (*(v22 + 8))(v26, v20);
  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  v78 = sub_1B1B3CCF0;
  v79 = v37;
  OUTLINED_FUNCTION_3_13();
  v75 = 1107296256;
  v76 = sub_1B1A95870;
  v77 = &block_descriptor_10;
  v38 = _Block_copy(aBlock);
  v39 = v35;
  sub_1B1C2C9A8();
  v73 = MEMORY[0x1E69E7CC0];
  sub_1B1ACD030(&qword_1ED9A8DC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
  sub_1B1A97978(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430);
  sub_1B1C2D418();
  MEMORY[0x1B2738610](0, v19, v14, v38);
  _Block_release(v38);

  (*(v63 + 8))(v14, v9);
  (*(v61 + 8))(v19, v62);

  v40 = v65;
  sub_1B1C2C9E8();
  v41 = v59;
  *v59 = 10;
  v43 = v69;
  v42 = v70;
  (*(v69 + 104))(v41, *MEMORY[0x1E69E7F48], v70);
  v44 = v66;
  MEMORY[0x1B2737ED0](v40, v41);
  (*(v43 + 8))(v41, v42);
  v45 = *(v67 + 8);
  v46 = v40;
  v47 = v68;
  v45(v46, v68);
  LOBYTE(v43) = sub_1B1C2D1A8();
  v45(v44, v47);
  v48 = sub_1B1C2D0D8();
  v49 = v48;
  if (v43)
  {
    sub_1B1C2C7C8(v48, &dword_1B1A8A000, v64, "#Trial namespace download timed out", 35, 2, MEMORY[0x1E69E7CC0]);
    v50 = v60;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1B1C361C0;
    v52 = v60;
    sub_1B1C2C3B8();
    v53 = MEMORY[0x1E69E6438];
    *(v51 + 56) = MEMORY[0x1E69E63B0];
    *(v51 + 64) = v53;
    *(v51 + 32) = -v54;
    sub_1B1C2C7C8(v49, &dword_1B1A8A000, v64, "#Trial namespace download took %.1fs", *&v59);

    v50 = v52;
  }

  if (qword_1ED9A92A8 != -1)
  {
    OUTLINED_FUNCTION_5_14(&qword_1ED9A92A8);
  }

  v55 = qword_1ED9AA608;
  v78 = sub_1B1B3B820;
  v79 = 0;
  OUTLINED_FUNCTION_3_13();
  v75 = 1107296256;
  OUTLINED_FUNCTION_4_11();
  v76 = v56;
  v77 = &block_descriptor_6_1;
  v57 = _Block_copy(aBlock);

  dispatch_sync(v55, v57);
  _Block_release(v57);

  (*(v71 + 8))(v50, v72);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1B3C84C()
{
  v6[1] = *MEMORY[0x1E69E9840];
  sub_1B1AB6238(&unk_1F28BFC10);
  if (qword_1ED9A92B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED9AA610;
  v1 = sub_1B1C2CF48();

  v6[0] = 0;
  LODWORD(v0) = [v0 immediateDownloadForNamespaceNames:v1 allowExpensiveNetworking:1 error:v6];

  if (v0)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    v4 = sub_1B1C2C058();

    swift_willThrow();
  }

  return sub_1B1C2D1C8();
}

uint64_t sub_1B1B3C978(uint64_t a1)
{
  type metadata accessor for TTSAssetTrialStrategy();
  result = sub_1B1B3BD20();
  byte_1EB772D30 = 0;
  return result;
}

uint64_t sub_1B1B3C99C()
{
  type metadata accessor for TTSAsset();
  result = sub_1B1B34578();
  if (result)
  {
    type metadata accessor for TTSAssetTrialStrategy();
    swift_initStaticObject();
    return sub_1B1B3C0BC();
  }

  return result;
}

void sub_1B1B3C9E0(char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = 0x656372756F736572;
  }

  else
  {
    v3 = 0x6563696F76;
  }

  v4 = 0xE500000000000000;
  if (a1)
  {
    v4 = 0xE800000000000000;
  }

  v27 = v3;
  v28 = v4;
  v5 = sub_1B1A9547C();
  v6 = 0;
  v7 = a2 & 0xC000000000000001;
  v8 = a2 & 0xFFFFFFFFFFFFFF8;
  v26 = a2;
  v9 = &off_1E7AF4000;
  v10 = &selRef_array;
  while (1)
  {
    if (v5 == v6)
    {

      return;
    }

    if (v7)
    {
      v11 = MEMORY[0x1B2738A20](v6, a2);
    }

    else
    {
      if (v6 >= *(v8 + 16))
      {
        goto LABEL_29;
      }

      v11 = *(a2 + 8 * v6 + 32);
    }

    v12 = v11;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    v13 = [v11 v9[202]];
    if (!v13)
    {
      goto LABEL_30;
    }

    v14 = v13;
    v15 = [v13 v10[271]];

    if (v15 != 101)
    {
      goto LABEL_22;
    }

    v16 = [v12 v9[202]];
    if (!v16)
    {
      goto LABEL_31;
    }

    v17 = v16;
    if (![v16 hasName])
    {
      v25 = sub_1B1C2D0C8();
      if (qword_1ED9A99C0 != -1)
      {
        swift_once();
      }

      sub_1B1C2C7C8(v25, &dword_1B1A8A000, qword_1ED9AA670, "Missing name on TRIFactor.", 26, 2, MEMORY[0x1E69E7CC0]);

LABEL_22:
      goto LABEL_25;
    }

    v18 = v5;
    v19 = v8;
    v20 = v7;
    v21 = v9;
    v22 = v10;
    sub_1B1AF10E0(v17);
    if (!v23)
    {
      goto LABEL_32;
    }

    MEMORY[0x1B27381B0](v27, v28);
    MEMORY[0x1B27381B0](46, 0xE100000000000000);
    v24 = sub_1B1C2CDA8();

    if (v24)
    {
      sub_1B1C2D588();
      sub_1B1C2D5C8();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
    }

    else
    {
    }

    v10 = v22;
    v9 = v21;
    v7 = v20;
    v8 = v19;
    v5 = v18;
    a2 = v26;
LABEL_25:
    ++v6;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t DataContainer.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1B1C2CAB8();
  return v0;
}

uint64_t sub_1B1B3CD68()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_7_12([v1 lock]);
  v2 = sub_1B1A95484(*(v0 + 16));
  [v1 unlock];
  return v2;
}

id Asynchronous<>.isProcessing.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = a1 & 1;
  v7 = *(a3 + 8);
  v8 = OUTLINED_FUNCTION_11_10(a1, a2);
  v7(v8);
  OUTLINED_FUNCTION_6_13();
  v10 = v9;
  OUTLINED_FUNCTION_89_0();

  [v4 lock];

  v11 = OUTLINED_FUNCTION_1_17();
  v12 = *((v7)(v11) + 16);

  if (v12 != v6)
  {
    v13 = OUTLINED_FUNCTION_1_17();
    *((v7)(v13) + 16) = v6;

    v14 = OUTLINED_FUNCTION_1_17();
    v7(v14);
    OUTLINED_FUNCTION_6_13();
    v16 = v15;
    OUTLINED_FUNCTION_89_0();

    [v4 broadcast];
  }

  v17 = OUTLINED_FUNCTION_1_17();
  v7(v17);
  OUTLINED_FUNCTION_6_13();
  v19 = v18;

  [v19 unlock];

  v20 = *(v5 + 24);
  [v20 lock];
  [v20 broadcast];
  return [v20 unlock];
}

void Asynchronous<>.asyncError.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_23_1();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = *(v21 + 8);
  v28 = OUTLINED_FUNCTION_11_10(v25, v23);
  v27(v28);
  OUTLINED_FUNCTION_6_13();
  v30 = v29;

  [v30 lock];

  v34 = v20;
  v31 = (v27)(v24, v22);
  v32 = *(v31 + 24);
  *(v31 + 24) = v26;
  v33 = v26;

  sub_1B1AD0464(v34, v24);

  OUTLINED_FUNCTION_22_4();
}

uint64_t sub_1B1B3D008(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0(v2 + 40, a2);
  v4 = *(v2 + 40);
  [v4 lock];
  *(v2 + 48) = a1;
  [v4 unlock];
  return swift_endAccess();
}

uint64_t Workflow.__allocating_init(graph:notification:errorHandlers:)()
{
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_13_12();
  v0 = swift_allocObject();
  Workflow.init(graph:notification:errorHandlers:)();
  return v0;
}

uint64_t sub_1B1B3D0CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762090, &qword_1B1C38450);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = v9;
    v6 = v10;
    v7 = v11;
  }

  else
  {
    sub_1B1C2D538();

    swift_getErrorValue();
    v8 = sub_1B1C2D828();
    MEMORY[0x1B27381B0](v8);

    v6 = 0x206E776F6E6B6E55;
    v7 = 0xEF203A6575737369;
    v5 = 1;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  return result;
}

uint64_t sub_1B1B3D1C8()
{
  result = sub_1B1AA86E8();
  if ((result & 1) == 0)
  {
    sub_1B1B3D008(1, v2);
    v3 = *(v0 + 56);
    [v3 lock];
    v4 = *(v0 + 64);
    if (v4)
    {
      if (qword_1ED9A4D38 != -1)
      {
        swift_once();
      }

      [v4 postNotificationName:qword_1ED9A4D40 object:0];
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
      v7 = sub_1B1C2D0B8();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_1B1A8A000, v6, v7, "Cannot cancel workflow without a NotificationCenter", v8, 2u);
        OUTLINED_FUNCTION_14();
        MEMORY[0x1B2739FD0]();
      }
    }

    return [v3 unlock];
  }

  return result;
}

uint64_t sub_1B1B3D3A4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  sub_1B1A9D80C(a1, v6);

  return sub_1B1AA5E5C(v6, v4, v3);
}

void (*sub_1B1B3D3FC(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v7;
  v7[9] = a3;
  v7[10] = v3;
  v7[8] = a2;
  sub_1B1AA61C0(a2, v7);
  return sub_1B1B3D47C;
}

void sub_1B1B3D47C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[9];
    v4 = v2[8];
    sub_1B1A9D80C(*a1, (v2 + 4));

    sub_1B1AA5E5C((v2 + 4), v4, v3);
    sub_1B1B3E078(v2, &qword_1EB761DE0);
  }

  else
  {

    v5 = OUTLINED_FUNCTION_5_15();
    sub_1B1AA5E5C(v5, v6, v7);
  }

  free(v2);
}

uint64_t Buffer.__deallocating_deinit()
{
  Buffer.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void Asynchronous<>.isProcessing.setter()
{
  OUTLINED_FUNCTION_23_1();
  v2 = v0;
  v4 = v3;
  v6 = v5 & 1;
  v8 = *(v7 + 8);
  v9 = OUTLINED_FUNCTION_11_10(v5, v3);
  v8(v9);
  OUTLINED_FUNCTION_6_13();
  v11 = v10;
  OUTLINED_FUNCTION_89_0();

  [v1 lock];

  v12 = OUTLINED_FUNCTION_8_11();
  v13 = *((v8)(v12) + 16);

  if (v13 != v6)
  {
    v14 = OUTLINED_FUNCTION_8_11();
    *((v8)(v14) + 16) = v6;

    v15 = OUTLINED_FUNCTION_8_11();
    v8(v15);
    OUTLINED_FUNCTION_6_13();
    v17 = v16;
    OUTLINED_FUNCTION_89_0();

    [v1 broadcast];
  }

  sub_1B1AD0464(v2, v4);
  OUTLINED_FUNCTION_22_4();
}

void (*Asynchronous<>.isProcessing.modify(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  OUTLINED_FUNCTION_11_10(a1, a2);
  Asynchronous<>.isProcessing.getter();
  *(a1 + 24) = v5 & 1;
  return sub_1B1B3D6F4;
}

void Asynchronous<>.asyncError.getter()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_12_7();
  v1();
  OUTLINED_FUNCTION_6_13();
  v3 = v2;
  OUTLINED_FUNCTION_89_0();

  [v0 lock];

  v4 = OUTLINED_FUNCTION_1_17();
  v5 = *((v1)(v4) + 24);

  v6 = OUTLINED_FUNCTION_5_15();
  sub_1B1AD0464(v6, v7);
  OUTLINED_FUNCTION_22_4();
}

uint64_t (*Asynchronous<>.asyncError.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  OUTLINED_FUNCTION_11_10(a1, a2);
  Asynchronous<>.asyncError.getter();
  *a1 = v5;
  return sub_1B1B3D888;
}

uint64_t Asynchronous<>.waitTimeout.setter(double a1)
{
  OUTLINED_FUNCTION_21_5();
  *(v2() + 32) = a1;
}

uint64_t (*Asynchronous<>.waitTimeout.modify(uint64_t a1, uint64_t a2, uint64_t a3))(double *a1)
{
  *(a1 + 16) = a3;
  *(a1 + 24) = v3;
  *(a1 + 8) = a2;
  OUTLINED_FUNCTION_11_10(a1, a2);
  *a1 = Asynchronous<>.waitTimeout.getter();
  return sub_1B1B3D9FC;
}

id (*Asynchronous<>.isProcessing.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  OUTLINED_FUNCTION_11_10(a1, a2);
  Asynchronous<>.isProcessing.getter();
  *(a1 + 24) = v5 & 1;
  return sub_1B1B3DAB4;
}

uint64_t WorkflowNode.__allocating_init(condition:)(void *a1)
{
  v2 = swift_allocObject();
  WorkflowNode.init(condition:)(a1);
  return v2;
}

uint64_t sub_1B1B3DBA4(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1B1C2CE98();
  }

  return result;
}

uint64_t sub_1B1B3DC00(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void *sub_1B1B3DC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WorkflowNode();
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v11 = sub_1B1AA1BA4(v9, v10, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v11;
}

uint64_t sub_1B1B3E078(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_11_10(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1B1B3E130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1B1B3E198();
  result = sub_1B1C2D288();
  *a4 = result;
  return result;
}

unint64_t sub_1B1B3E198()
{
  result = qword_1ED9A99B0;
  if (!qword_1ED9A99B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9A99B0);
  }

  return result;
}

uint64_t static TTSAsset.set(server:forType:)(uint64_t a1, void *a2)
{
  v4 = sub_1B1AE9DE8(a2);
  if (*(v4 + 16))
  {
    v5 = *(v4 + 40);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 8))(a1, a2, ObjectType, v5);
    swift_unknownObjectRelease();
    return v7 & 1;
  }

  else
  {

    return 0;
  }
}

uint64_t static TTSAsset.set(server:forType:source:)(uint64_t a1, uint64_t a2)
{
  sub_1B1AB5F60();
  v5 = v4;
  ObjectType = swift_getObjectType();
  LOBYTE(a2) = (*(v5 + 8))(a1, a2, ObjectType, v5);
  swift_unknownObjectRelease();
  return a2 & 1;
}

uint64_t static TTSAsset.get(serverForType:)(void *a1)
{
  v2 = sub_1B1AE9DE8(a1);
  if (*(v2 + 16))
  {
    v3 = *(v2 + 40);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 16))(a1, ObjectType, v3);
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {

    return 0;
  }
}

uint64_t static TTSAsset.get(serverForType:source:)(uint64_t a1)
{
  sub_1B1AB5F60();
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 16))(a1, ObjectType, v3);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t static TTSAsset.describe(server:forType:)(uint64_t a1, void *a2)
{
  v3 = sub_1B1AE9DE8(a2);
  if (*(v3 + 16))
  {
    v4 = *(v3 + 40);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 24))(a1, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {

    return 0;
  }

  return v6;
}

uint64_t static TTSAsset.describe(server:source:)(uint64_t a1)
{
  sub_1B1AB5F60();
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 24))(a1, ObjectType, v3);
  swift_unknownObjectRelease();
  return v5;
}

id sub_1B1B3E7BC()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AB30]) init];
  qword_1EB772C38 = result;
  return result;
}

id static TTSAsset.waitForCatalogUpdates()()
{
  if (qword_1EB7610B8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB772C38;
  v1 = &selRef_lock;
  do
  {
    [v0 *v1];
    v1 = &selRef_wait;
  }

  while (qword_1EB772C30 > 0);

  return [v0 unlock];
}

uint64_t sub_1B1B3E908(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t SynthesisCacheWritingAction.__allocating_init(pool:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SynthesisCacheWritingAction.init(pool:)(a1);
  return v2;
}

uint64_t sub_1B1B3E990(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B1AC4B6C(0xD00000000000001ALL, 0x80000001B1C4D380, 1);
  }

  return result;
}

uint64_t sub_1B1B3EA04(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B1AC4B6C(0xD000000000000020, 0x80000001B1C4D300, 1);
  }

  return result;
}

uint64_t sub_1B1B3EA78(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B1AC4B6C(0xD000000000000019, 0x80000001B1C4D2E0, 1);
  }

  return result;
}

uint64_t sub_1B1B3EAEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = SynthesisCacheWritingAction.__allocating_init(pool:)(a1);
  *a2 = result;
  return result;
}

void sub_1B1B3EBD0(uint64_t a1)
{
  sub_1B1B3ED9C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B1B3ED9C(uint64_t a1)
{
  if (!qword_1EB761148)
  {
    type metadata accessor for SynthesisCacheFile(255);
    v1 = sub_1B1C2D2B8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB761148);
    }
  }
}

uint64_t sub_1B1B3EE10()
{
  v0 = [objc_opt_self() mainBundle];
  result = sub_1B1A91B08(v0);
  if (v2)
  {
    if (result == 0xD000000000000012 && v2 == 0x80000001B1C439F0)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_1B1C2D7A8();
    }
  }

  else
  {
    v4 = 0;
  }

  byte_1EB772CE0 = v4 & 1;
  return result;
}

void sub_1B1B3EF3C(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7642A0, &qword_1B1C35DF0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B1C361C0;
  v10 = a2(0);
  *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  *(v9 + 32) = v10;
  sub_1B1A8E474(0, &unk_1ED9A90F0, 0x1E695DFD8);
  v11 = MEMORY[0x1B27386A0](v9);
  sub_1B1A8E474(0, &qword_1ED9A9880, 0x1E69E58C0);
  sub_1B1A9C7B4();
  v12 = sub_1B1C2CF68();

  *a5 = v12;
}

void sub_1B1B3F150()
{
  if (qword_1EB761138 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB761140;
  v1 = qword_1EB761100;

  if (v1 != -1)
  {
    swift_once();
  }

  sub_1B1B1C7D8(v2, v0);
  v4 = v3;
  if (qword_1EB761128 != -1)
  {
    swift_once();
  }

  sub_1B1B1C7D8(v5, v4);
  v7 = v6;
  if (qword_1EB761110 != -1)
  {
    swift_once();
  }

  sub_1B1B1C7D8(v8, v7);
  qword_1EB7610F8 = v9;
}

uint64_t sub_1B1B3F2D0(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

_BYTE *sub_1B1B3F334(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Entitlements(unsigned __int8 *a1, unsigned int a2)
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
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Entitlements(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B1B3F54C(uint64_t a1, unint64_t a2)
{
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 >= a1)
      {
        v4 = a1;
        goto LABEL_6;
      }

      __break(1u);
      break;
    case 2uLL:
      v4 = *(a1 + 16);
LABEL_6:
      result = sub_1B1B40604(v4);
      break;
    case 3uLL:
      return result;
    default:
      result = a1;
      break;
  }

  return result;
}

uint64_t OpusDecoder.__allocating_init(destinationFormat:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_0();
  v2 = swift_allocObject();
  OpusDecoder.init(destinationFormat:)(a1);
  return v2;
}

uint64_t OpusDecoder.init(destinationFormat:)(uint64_t a1)
{
  v2 = v1;
  v44 = *MEMORY[0x1E69E9840];
  v41 = 0x40E7700000000000;
  v42 = xmmword_1B1C387F0;
  v43 = xmmword_1B1C38800;
  v4 = [objc_allocWithZone(MEMORY[0x1E6958418]) initWithStreamDescription_];
  if (!v4)
  {
    v21 = sub_1B1A9EC9C();
    v22 = OUTLINED_FUNCTION_34(&type metadata for TTSError, v21);
    OUTLINED_FUNCTION_0_18(v22, v23);
    *(v24 + 8) = 0xD000000000000020;
    *(v24 + 16) = 0x80000001B1C4D3D0;
    swift_willThrow();
    goto LABEL_13;
  }

  v5 = v4;
  *(v2 + 16) = v4;
  v6 = *(a1 + 16);
  v39[0] = *a1;
  v39[1] = v6;
  v40 = *(a1 + 32);
  v7 = objc_allocWithZone(MEMORY[0x1E6958418]);
  v8 = v5;
  v9 = [v7 initWithStreamDescription_];
  if (!v9)
  {
    sub_1B1C2D538();
    MEMORY[0x1B27381B0](0xD00000000000001FLL, 0x80000001B1C4D400);
    OUTLINED_FUNCTION_2_21();
    sub_1B1C2D618();
    v25 = sub_1B1A9EC9C();
    v26 = OUTLINED_FUNCTION_34(&type metadata for TTSError, v25);
    OUTLINED_FUNCTION_0_18(v26, v27);
    *(v28 + 8) = 0;
    *(v28 + 16) = 0xE000000000000000;
    swift_willThrow();

    v29 = *(v2 + 16);
LABEL_12:

    goto LABEL_13;
  }

  v10 = v9;
  *(v2 + 24) = v9;
  sub_1B1B3F9D0();
  v11 = v10;
  v12 = v8;
  v13 = v11;
  v14 = sub_1B1B3FA14(v12, v13);
  v15 = v14;
  if (!v14)
  {
    sub_1B1C2D538();
    MEMORY[0x1B27381B0](0xD000000000000035, 0x80000001B1C4D420);
    OUTLINED_FUNCTION_2_21();
    sub_1B1C2D618();
    v30 = sub_1B1A9EC9C();
    v31 = OUTLINED_FUNCTION_34(&type metadata for TTSError, v30);
    OUTLINED_FUNCTION_0_18(v31, v32);
    *(v33 + 8) = 0;
    *(v33 + 16) = 0xE000000000000000;
    swift_willThrow();
    goto LABEL_10;
  }

  *(v2 + 32) = v14;
  v16 = *(v2 + 24);
  v17 = objc_allocWithZone(MEMORY[0x1E6958440]);
  v18 = v15;
  v19 = [v17 initWithPCMFormat:v16 frameCapacity:4800];
  if (!v19)
  {
    v34 = sub_1B1A9EC9C();
    v35 = OUTLINED_FUNCTION_34(&type metadata for TTSError, v34);
    OUTLINED_FUNCTION_0_18(v35, v36);
    *(v37 + 8) = 0xD000000000000028;
    *(v37 + 16) = 0x80000001B1C4D460;
    swift_willThrow();

    v13 = v18;
LABEL_10:

    if (v15)
    {
      v29 = *(v2 + 32);
      goto LABEL_12;
    }

LABEL_13:
    type metadata accessor for OpusDecoder();
    swift_deallocPartialClassInstance();
    return v2;
  }

  v20 = v19;

  *(v2 + 40) = v20;
  return v2;
}

unint64_t sub_1B1B3F9D0()
{
  result = qword_1EB761030;
  if (!qword_1EB761030)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB761030);
  }

  return result;
}

id sub_1B1B3FA14(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initFromFormat:a1 toFormat:a2];

  return v4;
}

char *sub_1B1B3FA70()
{
  v2 = [objc_allocWithZone(type metadata accessor for AudioData()) init];
  v3 = sub_1B1B3FAE4(v2);

  if (!v1)
  {
    [*(v0 + 32) reset];
  }

  return v3;
}

char *sub_1B1B3FAE4(void *a1)
{
  v2 = v1;
  v63 = *MEMORY[0x1E69E9840];
  v55 = sub_1B1C2C228();
  v4 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v57 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = xmmword_1B1C35270;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = [objc_allocWithZone(MEMORY[0x1E69583D8]) initWithFormat:*(v2 + 16) packetCapacity:1 maximumPacketSize:1024];
  [v7 setPacketCount_];
  v8 = [v7 packetDescriptions];
  if (v8)
  {
    *v8 = 0;
  }

  v56 = 0;
  v9 = 0;
  v10 = 0;
  v54 = *MEMORY[0x1E6969010];
  v53 = (v4 + 104);
  v52 = (v4 + 8);
  while (1)
  {
    v11 = v9;
    while (1)
    {
      if (v11)
      {
        goto LABEL_16;
      }

      if (v10)
      {
        goto LABEL_17;
      }

      v12 = *(v2 + 32);
      v13 = *(v2 + 40);
      v14 = swift_allocObject();
      v14[2] = a1;
      v14[3] = v6;
      v14[4] = 16;
      v14[5] = v7;
      v60 = sub_1B1B405F8;
      v61 = v14;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v59 = sub_1B1AD121C;
      *(&v59 + 1) = &block_descriptor_12;
      v15 = _Block_copy(&aBlock);
      v16 = a1;

      v17 = v7;

      *&aBlock = 0;
      v18 = v12;
      v19 = v57;
      v9 = [v18 convertToBuffer:v13 error:&aBlock withInputFromBlock:v15];
      _Block_release(v15);
      v10 = aBlock;
      v20 = aBlock;
      v11 = 1;
      if (v9 <= 1)
      {
        v21 = [v13 frameLength];
        v11 = v9;
        if (v21)
        {
          break;
        }
      }
    }

    result = [v13 audioBufferList];
    v50 = *(result + 2);
    if (!v50)
    {
      break;
    }

    v51 = *([v13 audioBufferList] + 3);
    (*v53)(v19, v54, v55);
    v23 = sub_1B1C2C218();
    v49[2] = v24;
    if (v51)
    {
      v49[1] = v23;
      sub_1B1C2BF58();
      swift_allocObject();

      v25 = sub_1B1C2BEF8();
      v26 = sub_1B1C2BF48();
      *v27 |= 0x8000000000000000;
      v26(&aBlock, 0);
      v51 = MEMORY[0x1B2737740](v25, v51);
      v50 = v28;
    }

    else
    {
      v29 = sub_1B1C2C218();
      v29(v50, 0);

      v51 = 0;
      v50 = 0xC000000000000000;
    }

    (*v52)(v57, v55);
    OUTLINED_FUNCTION_4_13();
    sub_1B1C2C318();
    v30 = OUTLINED_FUNCTION_4_13();
    sub_1B1A94524(v30, v31);
    v32 = [v13 frameLength];
    v33 = __OFADD__(v56, v32);
    v56 += v32;
    if (v33)
    {
      __break(1u);
LABEL_16:
      if (v10)
      {
LABEL_17:
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        sub_1B1C2D538();

        *&aBlock = 0xD00000000000002CLL;
        *(&aBlock + 1) = 0x80000001B1C4D490;
        v34 = [v10 localizedDescription];
        v35 = sub_1B1C2CB58();
        v37 = v36;

        MEMORY[0x1B27381B0](v35, v37);

        v39 = *(&aBlock + 1);
        v38 = aBlock;
        v40 = sub_1B1A9EC9C();
        OUTLINED_FUNCTION_34(&type metadata for TTSError, v40);
        *v41 = 1;
        *(v41 + 8) = v38;
        *(v41 + 16) = v39;
        swift_willThrow();

        sub_1B1A94524(v62, *(&v62 + 1));
      }

      else
      {
        v38 = [objc_allocWithZone(type metadata accessor for AudioData()) init];
        v42 = [*(v2 + 24) streamDescription];
        aBlock = *v42;
        v59 = v42[1];
        v60 = *(v42 + 4);

        v43 = &v38[OBJC_IVAR___SiriTTSAudioData_asbd];
        swift_beginAccess();
        *v43 = aBlock;
        *(v43 + 1) = v59;
        *(v43 + 4) = v60;
        v44 = v62;
        v45 = &v38[OBJC_IVAR___SiriTTSAudioData_audioData];
        swift_beginAccess();
        v46 = *v45;
        v47 = v45[1];
        *v45 = v44;
        sub_1B1A94524(v46, v47);
        v48 = OBJC_IVAR___SiriTTSAudioData_packetCount;
        swift_beginAccess();
        *&v38[v48] = v56;
      }

      return v38;
    }
  }

  __break(1u);
  return result;
}

_DWORD *sub_1B1B40160(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v53 = *MEMORY[0x1E69E9840];
  v11 = (a3 + OBJC_IVAR___SiriTTSAudioData_audioData);
  swift_beginAccess();
  v13 = *v11;
  v12 = v11[1];
  switch(v12 >> 62)
  {
    case 1uLL:
      v31 = v13;
      v32 = v13 >> 32;
      goto LABEL_11;
    case 2uLL:
      v31 = *(v13 + 16);
      v32 = *(v13 + 24);
LABEL_11:
      if (v31 == v32)
      {
        goto LABEL_12;
      }

      goto LABEL_3;
    case 3uLL:
      goto LABEL_12;
    default:
      if ((v12 & 0xFF000000000000) == 0)
      {
LABEL_12:
        a6 = 0;
        v33 = 2;
LABEL_14:
        *a2 = v33;
        return a6;
      }

LABEL_3:
      swift_beginAccess();
      v14 = *(a4 + 16);
      v15 = OBJC_IVAR___SiriTTSAudioData_packetCount;
      swift_beginAccess();
      if (v14 >= *(a3 + v15))
      {
        a6 = 0;
        v33 = 1;
        goto LABEL_14;
      }

      *a2 = 0;
      v16 = v14 * a5;
      if ((v14 * a5) >> 64 != (v14 * a5) >> 63)
      {
        __break(1u);
        goto LABEL_35;
      }

      v17 = __OFADD__(v16, a5);
      v18 = v16 + a5;
      if (v17)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      if (v18 < v16)
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v19 = (a3 + OBJC_IVAR___SiriTTSAudioData_packetDescriptions);
      swift_beginAccess();
      v21 = *v19;
      v20 = v19[1];
      sub_1B1AA64DC(v21, v20);
      v22 = sub_1B1C2C288();
      v24 = v23;
      sub_1B1A94524(v21, v20);
      v25 = sub_1B1B3F54C(v22, v24);
      v27 = HIDWORD(v26);
      v29 = *v11;
      v28 = v11[1];
      v30 = v25;
      switch(v28 >> 62)
      {
        case 1uLL:
          v49 = v25;
          v51 = v22;
          if (v29 > v29 >> 32)
          {
            goto LABEL_38;
          }

          v35 = a6;
          sub_1B1AA64DC(v29, v28);
          v41 = sub_1B1C2BF08();
          if (!v41)
          {
            goto LABEL_27;
          }

          v42 = v41;
          v43 = sub_1B1C2BF38();
          if (__OFSUB__(v29, v43))
          {
            goto LABEL_40;
          }

          v39 = v29 - v43 + v42;
          goto LABEL_28;
        case 2uLL:
          v49 = v25;
          v51 = v22;
          v34 = *(v29 + 16);
          v35 = a6;
          sub_1B1AA64DC(v29, v28);
          v36 = sub_1B1C2BF08();
          if (v36)
          {
            v37 = v36;
            v38 = sub_1B1C2BF38();
            if (__OFSUB__(v34, v38))
            {
LABEL_39:
              __break(1u);
LABEL_40:
              __break(1u);
            }

            v39 = v34 - v38 + v37;
          }

          else
          {
            v39 = 0;
          }

          sub_1B1C2BF28();
          if (!v39)
          {
            __break(1u);
LABEL_27:
            v39 = 0;
LABEL_28:
            result = sub_1B1C2BF28();
            if (!v39)
            {
              goto LABEL_42;
            }
          }

          v45 = [v35 data];
          memmove(v45, (v39 + v50), v27);
          sub_1B1A94524(v29, v28);

          v22 = v51;
LABEL_30:
          [a6 setByteLength_];
          result = [a6 packetDescriptions];
          if (result)
          {
            result[3] = v27;
            sub_1B1A94524(v22, v24);
            swift_beginAccess();
            v46 = *(a4 + 16);
            v17 = __OFADD__(v46, 1);
            v47 = v46 + 1;
            if (!v17)
            {
              *(a4 + 16) = v47;
              v48 = a6;
              return a6;
            }

            goto LABEL_37;
          }

          __break(1u);
LABEL_42:
          __break(1u);
          return result;
        case 3uLL:
          memset(v52, 0, 14);
          goto LABEL_19;
        default:
          v52[0] = *v11;
          LOWORD(v52[1]) = v28;
          BYTE2(v52[1]) = BYTE2(v28);
          BYTE3(v52[1]) = BYTE3(v28);
          BYTE4(v52[1]) = BYTE4(v28);
          BYTE5(v52[1]) = BYTE5(v28);
LABEL_19:
          v40 = a6;
          memcpy([v40 data], v52 + v30, v27);
          sub_1B1A94524(v29, v28);

          goto LABEL_30;
      }
  }
}

uint64_t OpusDecoder.__deallocating_deinit()
{
  OpusDecoder.deinit();
  v0 = OUTLINED_FUNCTION_1_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B1B40604(uint64_t a1)
{
  v2 = sub_1B1C2BF08();
  if (v2)
  {
    v3 = v2;
    result = sub_1B1C2BF38();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = a1 - result + v3;
  }

  else
  {
    v5 = 0;
  }

  result = sub_1B1C2BF28();
  if (v5)
  {
    return *v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of OpusDecoder.__allocating_init(destinationFormat:)(uint64_t *a1)
{
  v2 = *(v1 + 112);
  v5 = *a1;
  v3 = *(a1 + 3);
  v6 = *(a1 + 1);
  v7 = v3;
  return v2(&v5);
}

unint64_t sub_1B1B40740(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_proxy_attr);
  v3 = sub_1B1AE3168(a1);
  sub_1B1A93AEC(v3, v4, v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  if (!swift_dynamicCast())
  {
    return 4;
  }

  result = sub_1B1B19970(v6, v7);
  if (result == 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_1B1B407D8(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_proxy_attr);
  v3 = sub_1B1AE3168(a1);
  sub_1B1A93AEC(v3, v4, v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1B40878(char a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_proxy_attr);
  sub_1B1AE3168(a1);
  if (*(v4 + 16) && (v5 = sub_1B1A8EB10(), (v6 & 1) != 0))
  {
    sub_1B1A93378(*(v4 + 56) + 32 * v5, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return a2;
  }
}

uint64_t sub_1B1B40A60()
{
  v1 = sub_1B1AF16C4(5);
  if (v2)
  {
    return v1;
  }

  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
  }

  v3 = 1061109567;
  v4 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v4, qword_1ED9A9120);
  v5 = v0;
  v6 = sub_1B1C2C888();
  v7 = sub_1B1C2D0C8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_21_0();
    v9 = OUTLINED_FUNCTION_19_0();
    v11 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1B1A930E4(*&v5[OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_cookie], *&v5[OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_cookie + 8], &v11);
    _os_log_impl(&dword_1B1A8A000, v6, v7, "Missing identifier: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  return v3;
}

id sub_1B1B40BF0(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B1C2CB28();

  return v5;
}

uint64_t sub_1B1B40E78()
{
  v1 = v0;
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  v2 = sub_1B1AF1750();
  if (qword_1ED9A9960 != -1)
  {
    OUTLINED_FUNCTION_12_4(&qword_1ED9A9960);
  }

  v3 = qword_1ED9A9968;
  v4 = sub_1B1C2D248();

  v5 = *(v1 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_proxy_attr);
  if (v4)
  {
  }

  else
  {

    return sub_1B1AE0B90(v5);
  }
}

void *sub_1B1B40FA0(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_authorizedBundle;
  v4 = *(v1 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_authorizedBundle);
  v5 = v4;
  if (v4)
  {
    goto LABEL_17;
  }

  v6 = *(v2 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_bundlePath + 8);
  if (!v6)
  {
    v16 = sub_1B1C2D0A8();
    if (qword_1ED9A99B8 != -1)
    {
      OUTLINED_FUNCTION_0_12(&qword_1ED9A99B8);
    }

    sub_1B1C2C7C8(v16, &dword_1B1A8A000, qword_1ED9AA668, "No bundle path from proxy presentation", 38, 2, MEMORY[0x1E69E7CC0]);
    goto LABEL_16;
  }

  v7 = *(v2 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_bundlePath);
  sub_1B1A8E474(0, &qword_1ED9A9810, 0x1E696AAE8);

  v8 = sub_1B1AE7720();
  if (!v8)
  {
    v17 = sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      OUTLINED_FUNCTION_0_12(&qword_1ED9A99B8);
    }

    v18 = qword_1ED9AA668;
    if (os_log_type_enabled(qword_1ED9AA668, v17))
    {

      v19 = OUTLINED_FUNCTION_21_0();
      v20 = OUTLINED_FUNCTION_19_0();
      v24 = v20;
      *v19 = 136446210;
      v21 = sub_1B1A930E4(v7, v6, &v24);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_1B1A8A000, v18, v17, "Invalid bundle path %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }

LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  v5 = v8;
  v9 = sub_1B1C2D0A8();
  if (qword_1ED9A99B8 != -1)
  {
    OUTLINED_FUNCTION_0_12(&qword_1ED9A99B8);
  }

  v10 = qword_1ED9AA668;
  if (os_log_type_enabled(qword_1ED9AA668, v9))
  {

    v11 = OUTLINED_FUNCTION_21_0();
    v12 = OUTLINED_FUNCTION_19_0();
    v24 = v12;
    *v11 = 136315138;
    v13 = sub_1B1A930E4(v7, v6, &v24);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_1B1A8A000, v10, v9, "Constructed bundle %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  v14 = *(v2 + v3);
  *(v2 + v3) = v5;
  v15 = v5;

LABEL_17:
  v22 = v4;
  return v5;
}

uint64_t sub_1B1B412CC()
{
  if (([v0 locallyAvailable] & 1) == 0)
  {
    v1 = sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      OUTLINED_FUNCTION_0_12(&qword_1ED9A99B8);
    }

    v2 = qword_1ED9AA668;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v4 = OUTLINED_FUNCTION_54_0(v3);
    *(v4 + 16) = xmmword_1B1C361C0;
    *(v4 + 56) = type metadata accessor for TTSAssetProxyAsset();
    *(v4 + 64) = sub_1B1B41BF4();
    *(v4 + 32) = v0;
    v5 = v0;
    sub_1B1C2C7C8(v1, &dword_1B1A8A000, v2, "Proxy asset [%@] downloading not supported", 42, 2, v4);
  }

  return 0;
}

uint64_t sub_1B1B413A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id))
{
  v6 = sub_1B1C2D0B8();
  if (qword_1ED9A99B8 != -1)
  {
    OUTLINED_FUNCTION_0_12(&qword_1ED9A99B8);
  }

  v7 = qword_1ED9AA668;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
  v9 = OUTLINED_FUNCTION_54_0(v8);
  *(v9 + 16) = xmmword_1B1C361C0;
  *(v9 + 56) = type metadata accessor for TTSAssetProxyAsset();
  *(v9 + 64) = sub_1B1B41BF4();
  *(v9 + 32) = v4;
  v10 = v4;
  sub_1B1C2C7C8(v6, &dword_1B1A8A000, v7, "Proxy asset [%@] download not supported", 39, 2, v9);

  if (a4)
  {
    return a4(v10);
  }

  return result;
}

void sub_1B1B415A8(void *a1, void (**a2)(void, void))
{
  v4 = sub_1B1C2D0B8();
  if (qword_1ED9A99B8 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED9AA668;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B1C361C0;
  *(v6 + 56) = type metadata accessor for TTSAssetProxyAsset();
  *(v6 + 64) = sub_1B1B41BF4();
  *(v6 + 32) = a1;
  v7 = a1;
  sub_1B1C2C7C8(v4, &dword_1B1A8A000, v5, "Proxy asset [%@] cancel download not supported", 46, 2, v6);

  (a2)[2](a2, v7);

  _Block_release(a2);
}

uint64_t sub_1B1B41724(uint64_t (*a1)(void))
{
  v3 = sub_1B1C2D0B8();
  if (qword_1ED9A99B8 != -1)
  {
    OUTLINED_FUNCTION_0_12(&qword_1ED9A99B8);
  }

  v4 = qword_1ED9AA668;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
  v6 = OUTLINED_FUNCTION_54_0(v5);
  *(v6 + 16) = xmmword_1B1C361C0;
  *(v6 + 56) = type metadata accessor for TTSAssetProxyAsset();
  *(v6 + 64) = sub_1B1B41BF4();
  *(v6 + 32) = v1;
  v7 = v1;
  sub_1B1C2C7C8(v3, &dword_1B1A8A000, v4, "Proxy asset [%@] purge not supported", 36, 2, v6);

  if (a1)
  {
    return a1(0);
  }

  return result;
}

uint64_t sub_1B1B418C4(uint64_t a1)
{
  v2 = sub_1B1C2D0B8();
  if (qword_1ED9A99B8 != -1)
  {
    OUTLINED_FUNCTION_0_12(&qword_1ED9A99B8);
  }

  v3 = qword_1ED9AA668;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
  v5 = OUTLINED_FUNCTION_54_0(v4);
  *(v5 + 16) = xmmword_1B1C361C0;
  *(v5 + 56) = type metadata accessor for TTSAssetProxyAsset();
  *(v5 + 64) = sub_1B1B41BF4();
  *(v5 + 32) = v1;
  v6 = v1;
  sub_1B1C2C7C8(v2, &dword_1B1A8A000, v3, "Proxy asset [%@] set purge condition not supported", 50, 2, v5);
}

uint64_t sub_1B1B41A0C(uint64_t a1)
{
  v2 = sub_1B1C2D0B8();
  if (qword_1ED9A99B8 != -1)
  {
    OUTLINED_FUNCTION_0_12(&qword_1ED9A99B8);
  }

  v3 = qword_1ED9AA668;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
  v5 = OUTLINED_FUNCTION_54_0(v4);
  *(v5 + 16) = xmmword_1B1C361C0;
  *(v5 + 56) = type metadata accessor for TTSAssetProxyAsset();
  *(v5 + 64) = sub_1B1B41BF4();
  *(v5 + 32) = v1;
  v6 = v1;
  sub_1B1C2C7C8(v2, &dword_1B1A8A000, v3, "Proxy asset [%@] purge condition not supported", 46, 2, v5);

  return 3;
}

id TTSAssetProxyAsset.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B1B41B48()
{
}

id TTSAssetProxyAsset.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSAssetProxyAsset();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B1B41BF4()
{
  result = qword_1EB762718;
  if (!qword_1EB762718)
  {
    type metadata accessor for TTSAssetProxyAsset();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762718);
  }

  return result;
}

uint64_t sub_1B1B41C60()
{
  v126 = *MEMORY[0x1E69E9840];
  v0 = sub_1B1C2C0A8();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v119 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v102 - v7;
  sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v117 = v9;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v116 = (&v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v11);
  v115 = &v102 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v102 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v102 - v18;
  v121 = v20;
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v20);
  v21 = *(v2 + 104);
  v21(v5, *MEMORY[0x1E6968F70], v0);

  sub_1B1C2C198();
  v123 = 0xD000000000000013;
  v124 = 0x80000001B1C4D810;
  v22 = *MEMORY[0x1E6968F68];
  v21(v5, *MEMORY[0x1E6968F68], v0);
  v23 = sub_1B1A8EDAC();
  v118 = v19;
  sub_1B1C2C1B8();
  v24 = *(v119 + 8);
  v114 = v0;
  v25 = v119 + 8;
  v24(v5, v0);
  v120 = v17;
  v43 = sub_1B1C2C208();
  v45 = v44;
  v108 = v24;
  v109 = v23;
  v110 = v22;
  v111 = v21;
  v112 = v5;
  v113 = v2 + 104;
  v46 = v25;
  v47 = objc_opt_self();
  v48 = sub_1B1C2C298();
  v123 = 0;
  v49 = [v47 propertyListWithData:v48 options:0 format:0 error:&v123];

  if (!v49)
  {
    v89 = v123;
    v90 = sub_1B1C2C058();

    swift_willThrow();
    sub_1B1A94524(v43, v45);

    v39 = v120;
    v55 = v116;
LABEL_2:
    v26 = v121;
    v27 = v117;
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v28 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v28, qword_1ED9A9120);
    (*(v27 + 16))(v55, v39, v26);
    v29 = sub_1B1C2C888();
    v30 = sub_1B1C2D0B8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = v39;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v123 = v33;
      *v32 = 136315138;
      sub_1B1B317AC();
      v34 = sub_1B1C2D778();
      v36 = v35;
      v37 = OUTLINED_FUNCTION_4_15();
      (v21)(v37, v121);
      v38 = sub_1B1A930E4(v34, v36, &v123);
      v26 = v121;

      *(v32 + 4) = v38;
      _os_log_impl(&dword_1B1A8A000, v29, v30, "Unable to load voice_configs.plist from %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      OUTLINED_FUNCTION_11();
      v39 = v31;
      OUTLINED_FUNCTION_11();
    }

    else
    {

      v40 = OUTLINED_FUNCTION_4_15();
      (v21)(v40, v26);
    }

    (v21)(v39, v26);
    (v21)(v118, v26);
    return MEMORY[0x1E69E7CC0];
  }

  v21 = v43;
  v50 = v123;
  sub_1B1C2D3F8();
  swift_unknownObjectRelease();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C30, &unk_1B1C38180);
  v54 = OUTLINED_FUNCTION_1_18(v51, v52, v53, v51);
  v39 = v120;
  v55 = v116;
  if ((v54 & 1) == 0)
  {
    sub_1B1A94524(v43, v45);
    goto LABEL_2;
  }

  v56 = v122;
  sub_1B1A93AEC(0xD000000000000013, 0x80000001B1C4D830, v122);
  v116 = v43;
  if (!v125)
  {

    sub_1B1A9937C(&v123);
LABEL_35:
    v91 = v121;
    v92 = v117;
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v93 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v93, qword_1ED9A9120);
    v94 = sub_1B1C2C888();
    v95 = sub_1B1C2D0B8();
    if (!os_log_type_enabled(v94, v95))
    {
      goto LABEL_46;
    }

    v96 = swift_slowAlloc();
    *v96 = 0;
    v97 = "Unable to parse vocalizer_resources";
    goto LABEL_45;
  }

  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761EE0, &unk_1B1C38950);
  if ((OUTLINED_FUNCTION_1_18(v57, v58, v59, v57) & 1) == 0)
  {

    goto LABEL_35;
  }

  v60 = v122;
  sub_1B1A93AEC(0xD000000000000018, 0x80000001B1C4D850, v56);

  if (!v125)
  {

    sub_1B1A9937C(&v123);
LABEL_41:
    v91 = v121;
    v92 = v117;
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v98 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v98, qword_1ED9A9120);
    v94 = sub_1B1C2C888();
    v95 = sub_1B1C2D0B8();
    if (!os_log_type_enabled(v94, v95))
    {
      goto LABEL_46;
    }

    v96 = swift_slowAlloc();
    *v96 = 0;
    v97 = "Unable to parse vocalizer_resources_order";
LABEL_45:
    _os_log_impl(&dword_1B1A8A000, v94, v95, v97, v96, 2u);
    v91 = v121;
    OUTLINED_FUNCTION_11();
LABEL_46:

    sub_1B1A94524(v116, v45);
    v99 = *(v92 + 8);
    v99(v39, v91);
    v99(v118, v91);
    return MEMORY[0x1E69E7CC0];
  }

  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  if ((OUTLINED_FUNCTION_1_18(v61, v62, v63, v61) & 1) == 0)
  {

    goto LABEL_41;
  }

  v103 = v45;
  v65 = v122;
  v41 = MEMORY[0x1E69E7CC0];
  v122 = MEMORY[0x1E69E7CC0];
  v66 = *(v65 + 16);
  v104 = v65;
  if (v66)
  {
    v105 = (v117 + 8);
    v67 = (v65 + 40);
    *&v64 = 136315138;
    v106 = v64;
    v119 = v46;
    v107 = v60;
    do
    {
      v68 = v66;
      v70 = *(v67 - 1);
      v69 = *v67;
      v71 = v67;
      v72 = *(v60 + 16);

      if (v72 && (sub_1B1A8EB10(), (v73 & 1) != 0))
      {
        v74 = v39;
        v75 = objc_allocWithZone(SiriTTSSynthesisEngineResource);

        v76 = [v75 init];
        v77 = sub_1B1C2CB28();

        [v76 setMimeType_];

        v123 = v70;
        v124 = v69;
        v78 = v112;
        v79 = v114;
        v111(v112, v110, v114);
        v80 = v115;
        sub_1B1C2C1B8();
        v108(v78, v79);

        sub_1B1C2C098();
        (*v105)(v80, v121);
        v81 = sub_1B1C2CB28();

        [v76 setPath_];

        v82 = v76;
        MEMORY[0x1B2738320]();
        if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B1C2CE98();
        }

        sub_1B1C2CEC8();

        v41 = v122;
        v39 = v74;
        v21 = v116;
        v60 = v107;
      }

      else
      {
        if (qword_1ED9A9288 != -1)
        {
          OUTLINED_FUNCTION_0_0();
          swift_once();
        }

        v83 = sub_1B1C2C8A8();
        __swift_project_value_buffer(v83, qword_1ED9A9120);

        v84 = sub_1B1C2C888();
        v85 = sub_1B1C2D0B8();

        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v123 = v87;
          *v86 = v106;
          v88 = sub_1B1A930E4(v70, v69, &v123);

          *(v86 + 4) = v88;
          _os_log_impl(&dword_1B1A8A000, v84, v85, "Unknown mime-type for file %s", v86, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v87);
          OUTLINED_FUNCTION_11();
          v60 = v107;
          v21 = v116;
          OUTLINED_FUNCTION_11();
        }

        else
        {
        }

        v39 = v120;
      }

      v67 = v71 + 2;
      v66 = v68 - 1;
    }

    while (v68 != 1);
  }

  sub_1B1A94524(v21, v103);

  v100 = *(v117 + 8);
  v101 = v121;
  v100(v39, v121);
  v100(v118, v101);
  return v41;
}

void *sub_1B1B42850(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1B1ABF388();
  if (!v5)
  {
    sub_1B1A9EC9C();
    swift_allocError();
    *v15 = 1;
    *(v15 + 8) = 0xD00000000000002DLL;
    *(v15 + 16) = 0x80000001B1C4D7A0;
    return swift_willThrow();
  }

  v6 = v5;
  v7 = *(v1 + 40);
  if (v7)
  {
    if (qword_1ED9A4DD0 != -1)
    {
      swift_once();
    }

    [v7 postNotificationName:qword_1ED9A4DD8 object:0];
  }

  v33 = v7;
  v8 = *(v3 + 32);
  v9 = *(v8 + 16);

  [v9 lock];
  v10 = *(v8 + 32);
  v11 = v10;
  [v9 unlock];

  if (v10)
  {
    v12 = [v11 tag];

    v13 = sub_1B1C2CB58();
    v10 = v14;
  }

  else
  {
    v13 = 0;
  }

  v17 = sub_1B1ABF3D0();
  v18 = sub_1B1ABE028(v6, v17);
  if (v2)
  {
  }

  v19 = v18;

  sub_1B1B22BDC(v19);
  v20 = sub_1B1B22BB4();
  if (!v20)
  {
    v26 = &off_1E7AF4000;
    if (!v10)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  v21 = v20;
  v22 = [v20 tag];

  v23 = sub_1B1C2CB58();
  v25 = v24;

  v26 = &off_1E7AF4000;
  if (!v10)
  {
    if (!v25)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  if (!v25)
  {
LABEL_24:

    goto LABEL_25;
  }

  if (v13 == v23 && v10 == v25)
  {

    goto LABEL_30;
  }

  v28 = sub_1B1C2D7A8();

  if (v28)
  {
LABEL_30:
    v29 = v33;
    if (v33)
    {
      goto LABEL_31;
    }

LABEL_37:
    sub_1B1AA81A8(a1);
  }

LABEL_25:
  v29 = v33;
  if (!v33)
  {
    goto LABEL_37;
  }

  if (qword_1ED9A4D08 != -1)
  {
    swift_once();
  }

  [v33 v26[117]];
LABEL_31:
  if (qword_1ED9A4E58 != -1)
  {
    swift_once();
  }

  v30 = qword_1ED9A4E60;
  result = sub_1B1B22BB4();
  if (result)
  {
    v31 = result;
    v32 = [result tag];

    if (!v32)
    {
      sub_1B1C2CB58();
      v32 = sub_1B1C2CB28();
    }

    [v29 v26[117]];

    goto LABEL_37;
  }

  __break(1u);
  return result;
}

void sub_1B1B42BF8()
{

  v1 = *(v0 + 40);
}

uint64_t sub_1B1B42C4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = SynthesisEngineSelectionAction.__allocating_init(pool:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B1B42CD8()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 24);

  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

uint64_t sub_1B1B42D14()
{
  os_unfair_lock_lock(v0 + 4);
  sub_1B1C2CAA8();
  os_unfair_lock_unlock(v0 + 4);
  return OUTLINED_FUNCTION_92();
}

uint64_t sub_1B1B42D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EB7613B0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EB772D20;
  v7 = sub_1B1AC9F5C(5, qword_1EB772D20);
  if (v7 != 2 && (v7 & 1) != 0)
  {
    v13 = a1;

    MEMORY[0x1B27381B0](0x6267385F3331682DLL, 0xE800000000000000);
    sub_1B1A93AEC(a1, a2, a3);

    if (v15)
    {
      if (swift_dynamicCast())
      {
        return v13;
      }
    }

    else
    {
      sub_1B1A90C20(v14, &qword_1EB761DE0, &qword_1B1C352C0);
    }
  }

  v8 = sub_1B1AC9F5C(4, v6);
  if (v8 != 2 && (v8 & 1) != 0)
  {
    v13 = a1;

    MEMORY[0x1B27381B0](0x416C617275656E2DLL, 0xE900000000000058);
    sub_1B1A93AEC(a1, a2, a3);

    if (v15)
    {
      if (swift_dynamicCast())
      {
        return v13;
      }
    }

    else
    {
      sub_1B1A90C20(v14, &qword_1EB761DE0, &qword_1B1C352C0);
    }
  }

  v9 = sub_1B1AC9F5C(3, v6);
  if (v9 != 2 && (v9 & 1) != 0)
  {
    v13 = a1;

    MEMORY[0x1B27381B0](808545581, 0xE400000000000000);
    sub_1B1A93AEC(a1, a2, a3);

    if (v15)
    {
      if (swift_dynamicCast())
      {
        return v13;
      }
    }

    else
    {
      sub_1B1A90C20(v14, &qword_1EB761DE0, &qword_1B1C352C0);
    }
  }

  v10 = sub_1B1AC9F5C(2, v6);
  if (v10 != 2 && (v10 & 1) != 0)
  {
    v13 = a1;

    MEMORY[0x1B27381B0](0x646F50692DLL, 0xE500000000000000);
    sub_1B1A93AEC(a1, a2, a3);

    if (v15)
    {
      if (swift_dynamicCast())
      {
        return v13;
      }
    }

    else
    {
      sub_1B1A90C20(v14, &qword_1EB761DE0, &qword_1B1C352C0);
    }
  }

  v11 = sub_1B1AC9F5C(1, v6);
  if (v11 != 2 && (v11 & 1) != 0)
  {
    v13 = a1;

    MEMORY[0x1B27381B0](0x656E6F6850692DLL, 0xE700000000000000);
    sub_1B1A93AEC(a1, a2, a3);

    if (v15)
    {
      if (swift_dynamicCast())
      {
        return v13;
      }
    }

    else
    {
      sub_1B1A90C20(v14, &qword_1EB761DE0, &qword_1B1C352C0);
    }
  }

  v13 = a1;

  MEMORY[0x1B27381B0](0x636972656E65672DLL, 0xE800000000000000);
  sub_1B1A93AEC(a1, a2, a3);

  if (v15)
  {
    if (swift_dynamicCast())
    {
      return v13;
    }
  }

  else
  {
    sub_1B1A90C20(v14, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  return 0;
}

uint64_t sub_1B1B431D4()
{
  v1 = &v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_experimentId];
  os_unfair_lock_lock(&v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_experimentId]);
  v2 = *(v1 + 2);

  os_unfair_lock_unlock(v1);
  v3 = type metadata accessor for TTSAssetUAFAsset(0);
  if (v2)
  {
    v9.receiver = v0;
    v9.super_class = v3;
    v4 = objc_msgSendSuper2(&v9, sel_description);
    sub_1B1C2CB58();

    v5 = OUTLINED_FUNCTION_72();
    MEMORY[0x1B27381B0](v5);

    v6 = OUTLINED_FUNCTION_92();
    MEMORY[0x1B27381B0](v6);
  }

  else
  {
    v10.receiver = v0;
    v10.super_class = v3;
    v7 = objc_msgSendSuper2(&v10, sel_description);
    sub_1B1C2CB58();
  }

  return OUTLINED_FUNCTION_43_0();
}

id sub_1B1B432F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1B1C2CB28();

  v5 = sub_1B1C2CB28();

  v6 = [swift_getObjCClassFromMetadata() attributeWithDomain:v4 name:v5];

  return v6;
}

void sub_1B1B43388(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  if (sub_1B1A9547C() == 1)
  {
    if (!sub_1B1B4802C(a3))
    {
      goto LABEL_4;
    }

    sub_1B1B67DE4(*(v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier), *(v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8), *(v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 16));
    v6 = sub_1B1B2A100();

    if (!v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v11 = v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier;
    sub_1B1B67DE4(*(v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier), *(v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8), *(v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 16));
    v12 = sub_1B1C2CB28();

    sub_1B1B67C04(*v11, *(v11 + 8), *(v11 + 16));
    v13 = sub_1B1C2CA78();

    v6 = [a3 assetNamed:v12 withUsage:v13];

    if (!v6)
    {
LABEL_4:
      v7 = (v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_path);
      os_unfair_lock_lock((v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_path));
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762728, &unk_1B1C38940) + 28);
      sub_1B1A90C20(v7 + v8, &unk_1EB761F00, &qword_1B1C36480);
      v9 = sub_1B1C2C1C8();
      __swift_storeEnumTagSinglePayload(v7 + v8, 1, 1, v9);
      os_unfair_lock_unlock(v7);
      v10 = 0;
LABEL_15:
      v30 = v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty;
      os_unfair_lock_lock((v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty));
      *(v30 + 4) = 0;
      os_unfair_lock_unlock(v30);

      return;
    }
  }

  v14 = *(v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_assetAttr);
  v10 = v6;

  v15 = [v10 metadata];
  v16 = sub_1B1C2CA98();

  v17 = sub_1B1B47A68(v16);

  sub_1B1BFFF38(v17);

  os_unfair_lock_lock((v14 + 16));

  sub_1B1B479F4(v18, sub_1B1AA0B88, 0, (v14 + 24));
  if (!v3)
  {
    os_unfair_lock_unlock((v14 + 16));

    v19 = [v10 metadata];
    v20 = sub_1B1C2CA98();

    v21 = sub_1B1C2CB58();
    v23 = sub_1B1A945F4(v21, v22, v20);
    v25 = v24;

    if (v25)
    {
      v26 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v26 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (v26)
      {
        v27 = v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_experimentId;
        os_unfair_lock_lock((v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_experimentId));

        *(v27 + 8) = v23;
        *(v27 + 16) = v25;
LABEL_14:
        os_unfair_lock_unlock(v27);
        v28 = (v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_path);
        os_unfair_lock_lock((v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_path));
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762728, &unk_1B1C38940);
        sub_1B1B43764(v28 + *(v29 + 28), v10);
        os_unfair_lock_unlock(v28);

        goto LABEL_15;
      }
    }

    v27 = v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_experimentId;
    os_unfair_lock_lock((v5 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_experimentId));

    *(v27 + 8) = 0;
    *(v27 + 16) = 0;
    goto LABEL_14;
  }

  os_unfair_lock_unlock((v14 + 16));
  __break(1u);
}

uint64_t sub_1B1B43764(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  sub_1B1A90C20(a1, &unk_1EB761F00, &qword_1B1C36480);
  v7 = [a2 location];
  if (v7)
  {
    v8 = v7;
    sub_1B1C2C168();

    v9 = sub_1B1C2C1C8();
    v10 = 0;
  }

  else
  {
    v9 = sub_1B1C2C1C8();
    v10 = 1;
  }

  __swift_storeEnumTagSinglePayload(v6, v10, 1, v9);
  return sub_1B1B480BC(v6, a1);
}

void sub_1B1B4386C()
{
  type metadata accessor for TTSAssetUAFAsset(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C37D90;
  *(inited + 32) = v0;
  v0;
  sub_1B1AB7D70(inited);
  swift_setDeallocating();
  sub_1B1B2EFA8();
  sub_1B1AA0BC0();
}

uint64_t sub_1B1B43988()
{
  result = sub_1B1AC93E4();
  qword_1EB772D20 = result;
  return result;
}

unint64_t sub_1B1B439A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B1C2D6C8();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B1B43A04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B1B439A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1B1B43A34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B1ACB1D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B1B43AE8(void *a1)
{
  v2 = v1 + *a1;
  os_unfair_lock_lock(v2);
  sub_1B1B43B5C((v2 + 8), v1, &v4);
  os_unfair_lock_unlock(v2);
  return v4;
}

unsigned __int8 *sub_1B1B43B5C@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  if (v5)
  {
    goto LABEL_78;
  }

  v6 = *(a2 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_assetAttr);

  v7 = v6;
  sub_1B1AB9288();

  if (!v25[3])
  {
    sub_1B1A90C20(v25, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_77;
  }

  OUTLINED_FUNCTION_16_12();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_77:
    v5 = 0;
LABEL_78:
    *a3 = v5;
    return v5;
  }

  result = v23;
  v9 = HIBYTE(v24) & 0xF;
  v10 = v23 & 0xFFFFFFFFFFFFLL;
  if ((v24 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v24) & 0xF;
  }

  else
  {
    v11 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    goto LABEL_77;
  }

  if ((v24 & 0x1000000000000000) != 0)
  {
    sub_1B1B2F4AC(v23, v24, 0xAuLL);
    v7 = v20;
    v22 = v21;

    if (v22)
    {
      goto LABEL_77;
    }

    goto LABEL_81;
  }

  if ((v24 & 0x2000000000000000) == 0)
  {
    if ((v23 & 0x1000000000000000) != 0)
    {
      result = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1B1C2D578();
    }

    v12 = *result;
    if (v12 == 43)
    {
      if (v10 >= 1)
      {
        if (v10 != 1)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1();
              if (!v14 && v13)
              {
                goto LABEL_75;
              }

              OUTLINED_FUNCTION_38_3();
              if (!v14)
              {
                goto LABEL_75;
              }

              OUTLINED_FUNCTION_29_2();
              if (v13)
              {
                goto LABEL_75;
              }

              OUTLINED_FUNCTION_5_0();
              if (v14)
              {
                goto LABEL_76;
              }
            }
          }

          goto LABEL_65;
        }

        goto LABEL_75;
      }

      goto LABEL_85;
    }

    if (v12 != 45)
    {
      if (v10)
      {
        v7 = 0;
        if (result)
        {
          while (1)
          {
            v18 = *result - 48;
            if (v18 > 9)
            {
              goto LABEL_75;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              goto LABEL_75;
            }

            v13 = __CFADD__(10 * v7, v18);
            v7 = 10 * v7 + v18;
            if (v13)
            {
              goto LABEL_75;
            }

            ++result;
            if (!--v10)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_65;
      }

LABEL_75:
      v7 = 0;
      v16 = 1;
LABEL_76:
      v19 = v16;

      if (v19)
      {
        goto LABEL_77;
      }

LABEL_81:
      v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
      *a1 = v5;
      goto LABEL_78;
    }

    if (v10 >= 1)
    {
      if (v10 != 1)
      {
        v7 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1();
            if (!v14 && v13)
            {
              goto LABEL_75;
            }

            OUTLINED_FUNCTION_38_3();
            if (!v14)
            {
              goto LABEL_75;
            }

            v13 = 10 * v7 >= v15;
            v7 = 10 * v7 - v15;
            if (!v13)
            {
              goto LABEL_75;
            }

            OUTLINED_FUNCTION_5_0();
            if (v14)
            {
              goto LABEL_76;
            }
          }
        }

LABEL_65:
        v16 = 0;
        goto LABEL_76;
      }

      goto LABEL_75;
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v25[0] = v23;
  v25[1] = v24 & 0xFFFFFFFFFFFFFFLL;
  if (v23 != 43)
  {
    if (v23 != 45)
    {
      if (v9)
      {
        v7 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_1();
          if (!v14 && v13)
          {
            break;
          }

          OUTLINED_FUNCTION_38_3();
          if (!v14)
          {
            break;
          }

          OUTLINED_FUNCTION_29_2();
          if (v13)
          {
            break;
          }

          OUTLINED_FUNCTION_5_0();
          if (v14)
          {
            goto LABEL_76;
          }
        }
      }

      goto LABEL_75;
    }

    if (v9)
    {
      if (v9 != 1)
      {
        OUTLINED_FUNCTION_48_6();
        while (1)
        {
          OUTLINED_FUNCTION_1();
          if (!v14 && v13)
          {
            break;
          }

          OUTLINED_FUNCTION_38_3();
          if (!v14)
          {
            break;
          }

          v13 = 10 * v7 >= v17;
          v7 = 10 * v7 - v17;
          if (!v13)
          {
            break;
          }

          OUTLINED_FUNCTION_5_0();
          if (v14)
          {
            goto LABEL_76;
          }
        }
      }

      goto LABEL_75;
    }

    goto LABEL_84;
  }

  if (v9)
  {
    if (v9 != 1)
    {
      OUTLINED_FUNCTION_48_6();
      while (1)
      {
        OUTLINED_FUNCTION_1();
        if (!v14 && v13)
        {
          break;
        }

        OUTLINED_FUNCTION_38_3();
        if (!v14)
        {
          break;
        }

        OUTLINED_FUNCTION_29_2();
        if (v13)
        {
          break;
        }

        OUTLINED_FUNCTION_5_0();
        if (v14)
        {
          goto LABEL_76;
        }
      }
    }

    goto LABEL_75;
  }

LABEL_86:
  __break(1u);
  return result;
}

uint64_t sub_1B1B43F04@<X0>(void *a1@<X0>, void *a3@<X8>)
{
  v3 = a1;
  v5 = *a1;
  if (!v5)
  {

    sub_1B1AB9288();

    if (v18[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
      if (swift_dynamicCast())
      {
        v6 = *(v17 + 16);
        if (v6)
        {
          v16 = v3;
          v19 = MEMORY[0x1E69E7CC0];
          sub_1B1AC9FA8();
          v7 = v19;
          sub_1B1A8EDAC();
          v8 = (v17 + 40);
          do
          {
            v9 = *v8;
            v18[0] = *(v8 - 1);
            v18[1] = v9;
            v10 = sub_1B1C2D398();
            v12 = v11;
            v19 = v7;
            v13 = *(v7 + 16);
            if (v13 >= *(v7 + 24) >> 1)
            {
              sub_1B1AC9FA8();
              v7 = v19;
            }

            *(v7 + 16) = v13 + 1;
            v14 = v7 + 16 * v13;
            *(v14 + 32) = v10;
            *(v14 + 40) = v12;
            v8 += 2;
            --v6;
          }

          while (v6);

          v3 = v16;
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_1B1A90C20(v18, &qword_1EB761DE0, &qword_1B1C352C0);
    }

    v7 = MEMORY[0x1E69E7CC0];
LABEL_14:
    *v3 = v7;
    *a3 = v7;
  }

  *a3 = v5;
}

void sub_1B1B44170(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = objc_opt_self();
  v34 = [v35 sharedManager];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627A0, &unk_1B1C38A88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C36280;
  v11 = *&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
  v10 = *&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
  *(inited + 32) = v11;
  *(inited + 40) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B1C361C0;
  *(v12 + 32) = v11;
  *(v12 + 40) = v10;
  *(inited + 48) = v12;
  *(inited + 56) = 0x73747469726973;
  *(inited + 64) = 0xE700000000000000;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B1C361C0;
  *(v13 + 32) = v11;
  *(v13 + 40) = v10;
  *(inited + 72) = v13;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  sub_1B1C2CAB8();
  v30 = sub_1B1C2CA78();

  if (a2)
  {
    v29 = sub_1B1C2CE68();
  }

  else
  {
    v29 = 0;
  }

  if (qword_1EB761360 != -1)
  {
    swift_once();
  }

  v28 = qword_1EB772D00;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a3;
  v14[4] = a4;
  v40 = sub_1B1B48214;
  v41 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v37 = 1107296256;
  v38 = sub_1B1B10890;
  v39 = &block_descriptor_135;
  v15 = _Block_copy(&aBlock);
  v16 = a1;
  sub_1B1A94514(a3, a4);

  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a5;
  v17[4] = a6;
  v40 = sub_1B1B48220;
  v41 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v37 = 1107296256;
  v38 = sub_1B1A95870;
  v39 = &block_descriptor_141;
  v18 = _Block_copy(&aBlock);
  v19 = v16;
  sub_1B1A94514(a5, a6);

  [v34 updateAssetsForSubscribers:v30 policies:v29 queue:v28 detailedProgress:v15 completion:v18];
  _Block_release(v18);
  _Block_release(v15);

  v20 = [v35 sharedManager];
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1B1C36280;
  *(v21 + 32) = v11;
  *(v21 + 40) = v10;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1B1C361C0;
  *(v22 + 32) = v11;
  *(v22 + 40) = v10;
  *(v21 + 48) = v22;
  *(v21 + 56) = 0x73747469726973;
  *(v21 + 64) = 0xE700000000000000;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1B1C361C0;
  *(v23 + 32) = v11;
  *(v23 + 40) = v10;
  *(v21 + 72) = v23;
  swift_bridgeObjectRetain_n();
  sub_1B1C2CAB8();
  v24 = sub_1B1C2CA78();

  v25 = [v20 downloadStatusForSubscribers_];

  if ((v25 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v26 = &v19[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_updateCounter];
    os_unfair_lock_lock(&v19[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_updateCounter]);
    if (v26[1] >= 1)
    {
      v27 = &v19[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDownloading];
      os_unfair_lock_lock(v27);
      LOBYTE(v27[1]._os_unfair_lock_opaque) = 1;
      os_unfair_lock_unlock(v27);
    }

    os_unfair_lock_unlock(v26);
  }
}

uint64_t sub_1B1B4465C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B1C2C988();
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B1C2C9D8();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([a1 downloadStatus] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v14 = a2 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDownloading;
    os_unfair_lock_lock((a2 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDownloading));
    *(v14 + 4) = 1;
    os_unfair_lock_unlock(v14);
  }

  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  aBlock[4] = sub_1B1B48238;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B1A95870;
  aBlock[3] = &block_descriptor_153;
  v16 = _Block_copy(aBlock);
  sub_1B1A94514(a3, a4);
  v17 = a1;
  sub_1B1C2C9A8();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1B1AADE74(&qword_1ED9A8DC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
  sub_1B1AA624C(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430, MEMORY[0x1E69E6328]);
  sub_1B1C2D418();
  MEMORY[0x1B2738610](0, v13, v10, v16);
  _Block_release(v16);
  (*(v21 + 8))(v10, v8);
  (*(v11 + 8))(v13, v20);
}

uint64_t (*sub_1B1B4498C(uint64_t (*result)(id, double), int a2, id a3))(id, double)
{
  if (result)
  {
    v4 = result;
    [a3 completedPercent];
    return v4([a3 downloadStatus], v5 / 100.0);
  }

  return result;
}

void sub_1B1B44A04(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B1C2C988();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B1C2C9D8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_updateCounter];
  os_unfair_lock_lock(&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_updateCounter]);
  v15 = *(v14 + 1);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 1) = v17;
    os_unfair_lock_unlock(v14);
    v18 = &a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDownloading];
    os_unfair_lock_lock(&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDownloading]);
    v18[4] = 0;
    os_unfair_lock_unlock(v18);
    v24 = *&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_progressQueue];
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = a3;
    aBlock[4] = sub_1B1B4822C;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B1A95870;
    aBlock[3] = &block_descriptor_147_0;
    v20 = _Block_copy(aBlock);
    v21 = a1;
    sub_1B1A94514(a2, a3);
    sub_1B1C2C9A8();
    v25 = MEMORY[0x1E69E7CC0];
    sub_1B1AADE74(&qword_1ED9A8DC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
    v23 = v10;
    sub_1B1AA624C(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430, MEMORY[0x1E69E6328]);
    sub_1B1C2D418();
    MEMORY[0x1B2738610](0, v13, v9, v20);
    _Block_release(v20);
    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v23);
  }
}

void sub_1B1B44D44(void *a1, void (*a2)(void))
{
  if (([a1 locallyAvailable] & 1) == 0)
  {
    sub_1B1B4386C();
  }

  if (a2)
  {
    a2();
  }
}

void sub_1B1B44D98()
{
  OUTLINED_FUNCTION_25();
  v54 = v2;
  v55 = v1;
  v4 = v3;
  v56 = v5;
  v52 = v6;
  v57 = sub_1B1C2C428();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - v14;
  sub_1B1C2C418();
  v16 = &v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDownloading];
  os_unfair_lock_lock(&v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDownloading]);
  v16[4] = 1;
  os_unfair_lock_unlock(v16);
  v53 = v0;
  v17 = &v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762738, &unk_1B1C39850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C361C0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001B1C4D870;
  v19 = *(v17 + 2);

  v20 = OUTLINED_FUNCTION_126();
  *(inited + 48) = sub_1B1B67C04(v20, v21, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761EE0, &unk_1B1C38950);
  v22 = sub_1B1C2CAB8();
  v23 = objc_allocWithZone(MEMORY[0x1E69DEEF8]);
  v24 = OUTLINED_FUNCTION_126();
  v26 = sub_1B1B4740C(v24, v25, v22, 0);
  if (v26)
  {
    v27 = v26;
    v51 = [objc_opt_self() sharedManager];
    OUTLINED_FUNCTION_126();
    v50 = sub_1B1C2CB28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
    OUTLINED_FUNCTION_66();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1B1C37D90;
    *(v28 + 32) = v27;
    sub_1B1A8E474(0, &qword_1EB760F88, 0x1E69DEEF8);
    v49 = v27;
    v48 = sub_1B1C2CE68();

    v29 = v15;
    v30 = v15;
    v31 = v57;
    (*(v8 + 16))(v13, v30, v57);
    v32 = (*(v8 + 80) + 48) & ~*(v8 + 80);
    v33 = swift_allocObject();
    v34 = v8;
    v35 = v52;
    v36 = v53;
    *(v33 + 2) = v53;
    *(v33 + 3) = v4;
    v37 = v4;
    v38 = v54;
    *(v33 + 4) = v54;
    *(v33 + 5) = v35;
    (*(v34 + 32))(&v33[v32], v13, v31);
    v39 = &v33[(v10 + v32 + 7) & 0xFFFFFFFFFFFFFFF8];
    v41 = v55;
    v40 = v56;
    *v39 = v55;
    v39[1] = v40;
    v58[4] = sub_1B1B47500;
    v58[5] = v33;
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 1107296256;
    OUTLINED_FUNCTION_13_1();
    v58[2] = v42;
    v58[3] = &block_descriptor_13;
    v43 = _Block_copy(v58);
    v44 = v36;
    sub_1B1A94514(v37, v38);
    sub_1B1A94514(v41, v40);

    v46 = v50;
    v45 = v51;
    v47 = v48;
    [v51 subscribe:v50 subscriptions:v48 queue:0 completion:v43];
    _Block_release(v43);

    (*(v34 + 8))(v29, v31);
    OUTLINED_FUNCTION_26_1();
  }

  else
  {
    __break(1u);
  }
}

void sub_1B1B45194(void *a1, char *a2, void (*a3)(void), uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v78 = a4;
  v15 = sub_1B1C2C428();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v77 = a3;
    v19 = a1;
    LODWORD(v76) = sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      swift_once();
    }

    v20 = qword_1ED9AA668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1B1C36280;
    v22 = &a2[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
    v23 = a2;
    v24 = *&a2[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
    v25 = *(v22 + 1);
    v26 = MEMORY[0x1E69E6158];
    *(v21 + 56) = MEMORY[0x1E69E6158];
    v27 = sub_1B1AC9204();
    *(v21 + 64) = v27;
    *(v21 + 32) = v24;
    *(v21 + 40) = v25;
    swift_getErrorValue();

    v28 = sub_1B1C2D828();
    *(v21 + 96) = v26;
    *(v21 + 104) = v27;
    *(v21 + 72) = v28;
    *(v21 + 80) = v29;
    sub_1B1C2C7C8(v76, &dword_1B1A8A000, v20, "UAF asset %{public}@ subscribe failed with error %@", 51, 2, v21);

    v30 = &v23[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDownloading];
    os_unfair_lock_lock(&v23[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDownloading]);
    v30[4] = 0;
    os_unfair_lock_unlock(v30);
    if (v77)
    {
      v77(0);
    }

    return;
  }

  v74 = v17;
  v75 = a7;
  if (([a2 locallyAvailable] & 1) == 0)
  {
    if (a5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1B1C361C0;
      *(v41 + 32) = sub_1B1C2CB58();
      *(v41 + 40) = v42;
    }

    else
    {
      v41 = 0;
    }

    v71 = a8;
    LODWORD(v73) = sub_1B1C2D0D8();
    if (qword_1ED9A99B8 != -1)
    {
      swift_once();
    }

    v72 = qword_1ED9AA668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1B1C36280;
    v76 = a2;
    v44 = *&a2[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
    v45 = *&a2[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
    v46 = MEMORY[0x1E69E6158];
    *(v43 + 56) = MEMORY[0x1E69E6158];
    v47 = sub_1B1AC9204();
    *(v43 + 64) = v47;
    *(v43 + 32) = v44;
    *(v43 + 40) = v45;
    if (v41)
    {
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
      v81 = sub_1B1AA624C(&unk_1EB7624B8, &unk_1EB761F10, &unk_1B1C37DA0, MEMORY[0x1E6969E28]);
      *&v79 = v41;
      sub_1B1A8D0E0(&v79, v43 + 72);
      v48 = v41;
    }

    else
    {
      v48 = 0;
      *(v43 + 96) = v46;
      *(v43 + 104) = v47;
      *(v43 + 72) = 7104878;
      *(v43 + 80) = 0xE300000000000000;
    }

    v70[1] = v48;

    sub_1B1C2C7C8(v73, &dword_1B1A8A000, v72, "UAF asset %{public}@ start download with policies %{public}@", 60, 2, v43);

    v49 = sub_1B1AE47E4();
    if (v49)
    {
      v50 = v49;
      v51 = [v49 integerValue];

      v77 = a3;
      v70[0] = v41;
      if (v51 < 1)
      {
        v73 = 500000000;
        goto LABEL_25;
      }

      v52 = sub_1B1AE47E4();
      if (v52)
      {
        v53 = v52;
        v73 = [v52 integerValue];

LABEL_25:
        v54 = a6;
        v55 = swift_allocObject();
        *(v55 + 16) = 0xBFF0000000000000;
        v56 = swift_allocObject();
        *(v56 + 16) = -1;
        v57 = v74;
        (*(v74 + 16))(v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v54, v15);
        v58 = (*(v57 + 80) + 24) & ~*(v57 + 80);
        v59 = (v16 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
        v60 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
        v61 = swift_allocObject();
        *(v61 + 16) = v73;
        (*(v57 + 32))(v61 + v58, v18, v15);
        *(v61 + v59) = v55;
        *(v61 + v60) = v56;
        v62 = (v61 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8));
        v63 = v75;
        v64 = v71;
        *v62 = v75;
        v62[1] = v64;
        v65 = swift_allocObject();
        v66 = v76;
        v67 = v77;
        v65[2] = v76;
        v65[3] = v67;
        v68 = v78;
        v65[4] = v78;

        sub_1B1A94514(v63, v64);
        v69 = v66;
        sub_1B1A94514(v67, v68);
        sub_1B1AF6E30(v70[0], sub_1B1B4812C, v61, sub_1B1B481F8, v65);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v31 = a2;
  v32 = a3;
  v33 = sub_1B1C2D0D8();
  if (qword_1ED9A99B8 != -1)
  {
    swift_once();
  }

  v34 = qword_1ED9AA668;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1B1C361C0;
  v36 = *&v31[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
  v37 = *&v31[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
  *(v35 + 56) = MEMORY[0x1E69E6158];
  *(v35 + 64) = sub_1B1AC9204();
  *(v35 + 32) = v36;
  *(v35 + 40) = v37;

  sub_1B1C2C7C8(v33, &dword_1B1A8A000, v34, "UAF asset %{public}@ already downloaded", 39, 2, v35);

  v38 = &v31[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDownloading];
  os_unfair_lock_lock(&v31[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDownloading]);
  v38[4] = 0;
  os_unfair_lock_unlock(v38);
  v39 = type metadata accessor for TTSAsset();
  sub_1B1B7693C(v39, v40);
  if (v32)
  {
    v32(v31);
  }
}

uint64_t sub_1B1B458C0(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, double), uint64_t a8)
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
  sub_1B1C2C7C8(v25, &dword_1B1A8A000, v26, "UAF download %u%% done, %.2fs left %d written status %d", v33, v34, v35[0], v35[2]);

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

uint64_t sub_1B1B45C28(char *a1, uint64_t (*a2)(char *))
{
  if ([a1 locallyAvailable])
  {
    v4 = sub_1B1C2D0D8();
    if (qword_1ED9A99B8 != -1)
    {
      swift_once();
    }

    v5 = qword_1ED9AA668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1B1C361C0;
    v8 = *&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
    v7 = *&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1B1AC9204();
    *(v6 + 32) = v8;
    *(v6 + 40) = v7;

    sub_1B1C2C7C8(v4, &dword_1B1A8A000, v5, "UAF asset %{public}@ download succeeded", 39, 2, v6);

    v9 = type metadata accessor for TTSAsset();
    result = sub_1B1B7693C(v9, v10);
    if (a2)
    {
      v12 = a1;
      return a2(v12);
    }
  }

  else
  {
    v13 = sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      swift_once();
    }

    v14 = qword_1ED9AA668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1B1C361C0;
    v17 = *&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
    v16 = *&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1B1AC9204();
    *(v15 + 32) = v17;
    *(v15 + 40) = v16;

    sub_1B1C2C7C8(v13, &dword_1B1A8A000, v14, "UAF asset %{public}@ download failed", 36, 2, v15);

    if (a2)
    {
      v12 = 0;
      return a2(v12);
    }
  }

  return result;
}

void sub_1B1B45F6C(char *a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  if ([a1 downloading])
  {
    type metadata accessor for TTSAssetUAFStrategy();
    swift_initStaticObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1B1C37D90;
    *(v5 + 32) = a1;
    v6 = *&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
    v7 = *&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = sub_1B1B20A10;
    v8[4] = v4;
    v9 = a1;

    sub_1B1B69B18(v5, v6, v7, sub_1B1B483C0, v8);
  }

  else
  {
    v10 = [a1 locallyAvailable];
    v11 = sub_1B1C2D098();
    if (v10)
    {
      if (qword_1ED9A99B8 != -1)
      {
        swift_once();
      }

      v12 = qword_1ED9AA668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1B1C361C0;
      v15 = *&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
      v14 = *&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
      *(v13 + 56) = MEMORY[0x1E69E6158];
      *(v13 + 64) = sub_1B1AC9204();
      *(v13 + 32) = v15;
      *(v13 + 40) = v14;

      sub_1B1C2C7C8(v11, &dword_1B1A8A000, v12, "UAF asset %{public}@ already downloaded, unable to cancel", 57, 2, v13);

      (a2)[2](a2, a1);
    }

    else
    {
      if (qword_1ED9A99B8 != -1)
      {
        swift_once();
      }

      v16 = qword_1ED9AA668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1B1C361C0;
      v19 = *&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
      v18 = *&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
      *(v17 + 56) = MEMORY[0x1E69E6158];
      *(v17 + 64) = sub_1B1AC9204();
      *(v17 + 32) = v19;
      *(v17 + 40) = v18;

      sub_1B1C2C7C8(v11, &dword_1B1A8A000, v16, "UAF asset %{public}@ not downloading, unable to cancel", 54, 2, v17);

      a2[2](a2, 0);
    }
  }

  _Block_release(a2);
}

uint64_t sub_1B1B462A8(void *a1, char *a2, uint64_t (*a3)(char *))
{
  v3 = a3;
  if (a1)
  {
    v6 = a1;
    v22 = sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED9AA668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1B1C36280;
    v9 = *&a2[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
    v10 = *&a2[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
    v11 = MEMORY[0x1E69E6158];
    *(v8 + 56) = MEMORY[0x1E69E6158];
    v12 = sub_1B1AC9204();
    *(v8 + 64) = v12;
    *(v8 + 32) = v9;
    *(v8 + 40) = v10;
    swift_getErrorValue();

    v13 = sub_1B1C2D828();
    *(v8 + 96) = v11;
    *(v8 + 104) = v12;
    *(v8 + 72) = v13;
    *(v8 + 80) = v14;
    sub_1B1C2C7C8(v22, &dword_1B1A8A000, v7, "UAF asset %{public}@ download cancellation failed with error %@", 63, 2, v8);

    v3 = a3;
  }

  else
  {
    v15 = sub_1B1C2D098();
    if (qword_1ED9A99B8 != -1)
    {
      swift_once();
    }

    v16 = qword_1ED9AA668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1B1C361C0;
    v19 = *&a2[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
    v18 = *&a2[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1B1AC9204();
    *(v17 + 32) = v19;
    *(v17 + 40) = v18;

    sub_1B1C2C7C8(v15, &dword_1B1A8A000, v16, "UAF asset %{public}@ download cancelled", 39, 2, v17);
  }

  if ([a2 locallyAvailable])
  {
    v20 = a2;
  }

  else
  {
    v20 = 0;
  }

  return v3(v20);
}

uint64_t sub_1B1B46570()
{
  OUTLINED_FUNCTION_62();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v3 = OUTLINED_FUNCTION_72();
  sub_1B1A94514(v3, v4);
  sub_1B1B466F8();
}

uint64_t sub_1B1B465EC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for TTSAsset();
  result = sub_1B1B7693C(v4, v5);
  if (a2)
  {
    return a2(a1);
  }

  return result;
}

uint64_t sub_1B1B466F8()
{
  OUTLINED_FUNCTION_62();
  type metadata accessor for TTSAssetUAFStrategy();
  swift_initStaticObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_66();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B1C37D90;
  *(v3 + 32) = v1;
  v4 = v1;
  v5 = OUTLINED_FUNCTION_30_5();
  sub_1B1B69B18(v5, v6, v7, v2, v0);
}

id TTSAssetUAFAsset.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B1B46828()
{

  v1 = v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_path;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762728, &unk_1B1C38940);
  sub_1B1A90C20(v1 + *(v2 + 28), &unk_1EB761F00, &qword_1B1C36480);

  sub_1B1A90C20(v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_lazyDownloadSize + 8, &qword_1EB762780, &qword_1B1C38A60);
  sub_1B1A90C20(v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_lazyDiskSize + 8, &qword_1EB762780, &qword_1B1C38A60);
  sub_1B1A90C20(v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_lazySupportedLanguages + 8, &qword_1EB762788, &qword_1B1C38A68);
  return sub_1B1A90C20(v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_experimentId + 8, &qword_1EB761D78, &qword_1B1C38F90);
}

id sub_1B1B46B88(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  OUTLINED_FUNCTION_92();
  v5 = sub_1B1C2CB28();

  return v5;
}

id sub_1B1B46CD4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_1B1B46D4C()
{
  sub_1B1AC763C();
  v1 = v0;
  if (v0)
  {
    v2 = v0;
    sub_1B1B46D88();
  }

  return v1;
}

uint64_t sub_1B1B46D88()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 16);

  sub_1B1AB9288();

  v2 = v8;
  result = sub_1B1A90C20(v7, &qword_1EB761DE0, &qword_1B1C352C0);
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
    result = swift_allocObject();
    *(result + 16) = xmmword_1B1C361C0;
    if (v1[2] < 6uLL)
    {
      __break(1u);
    }

    else
    {
      v4 = result;
      v5 = v1[14];
      v6 = v1[15];
      *(result + 32) = v5;
      *(result + 40) = v6;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
      v7[0] = v4;

      sub_1B1AC965C(v7, 0x65676175676E614CLL, 0xE900000000000073);
    }
  }

  return result;
}

id sub_1B1B47084(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B1C2CA78();

  return v5;
}

uint64_t sub_1B1B47100()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C364D0;
  *(inited + 32) = 0x6564496563696F56;
  *(inited + 40) = 0xEF7265696669746ELL;
  v2 = *&v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
  v3 = MEMORY[0x1E69E6158];
  *(inited + 48) = *&v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
  *(inited + 56) = v2;
  *(inited + 72) = v3;
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x80000001B1C41EA0;

  v4 = [v0 primaryLanguage];
  v5 = sub_1B1C2CB58();
  v7 = v6;

  *(inited + 96) = v5;
  *(inited + 104) = v7;
  *(inited + 120) = v3;
  strcpy((inited + 128), "VoiceVersion");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  v8 = sub_1B1AB8434();
  *(inited + 168) = MEMORY[0x1E69E6530];
  *(inited + 144) = v8;
  v9 = sub_1B1C2CAB8();
  v10 = sub_1B1AE47E4();
  if (v10)
  {
    v11 = v10;
    v39 = sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
    v19 = OUTLINED_FUNCTION_35_0(v39, v12, v13, v14, v15, v16, v17, v18, v33, v34, v35, v36, v37, v38, v11);
    sub_1B1A9EEE0(v19, v20);
    swift_isUniquelyReferenced_nonNull_native();
    v34 = v9;
    sub_1B1A9EEF0();
  }

  v21 = sub_1B1AE4808();
  if (v21)
  {
    v22 = v21;
    v40 = sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
    v30 = OUTLINED_FUNCTION_35_0(v40, v23, v24, v25, v26, v27, v28, v29, v33, v34, v35, v36, v37, v38, v22);
    sub_1B1A9EEE0(v30, v31);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1B1A9EEF0();
  }

  return v9;
}

id sub_1B1B47364(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_1B1C2CB28();

  sub_1B1A8E474(0, &qword_1EB762770, 0x1E69C7550);
  v7 = sub_1B1C2CE68();

  v8 = [v4 initWithExplanation:v6 target:a3 attributes:v7];

  return v8;
}

id sub_1B1B4740C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B1C2CB28();

  if (!a3)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761EE0, &unk_1B1C38950);
  v8 = sub_1B1C2CA78();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_1B1C2CA78();

LABEL_6:
  v10 = [v4 initWithName:v7 assetSets:v8 usageAliases:v9];

  return v10;
}

void sub_1B1B47500(void *a1)
{
  v3 = *(sub_1B1C2C428() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  sub_1B1B45194(a1, v5, v6, v7, v8, v1 + v4, v10, v11);
}

void sub_1B1B475C4(uint64_t a1)
{
  sub_1B1B476B8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B1B476B8(uint64_t a1)
{
  if (!qword_1EB761320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB761F00, &qword_1B1C36480);
    v1 = sub_1B1C2C4F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB761320);
    }
  }
}

uint64_t sub_1B1B477C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1B1AA0B44(v46, a1, a2, a3);
  v42 = v46[0];
  v43 = v46[1];
  v44 = v46[2];
  v45 = v47;
  v35 = a1;

  v34 = a3;

  while (1)
  {
    sub_1B1A9E6FC(&v40);
    v9 = *(&v40 + 1);
    if (!*(&v40 + 1))
    {
      sub_1B1A9D350(v42);
    }

    v10 = v40;
    sub_1B1A9EEE0(&v41, v39);
    v11 = *a5;
    v19 = sub_1B1A8EB10();
    v20 = v11[2];
    v21 = (v12 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      break;
    }

    v23 = v12;
    if (v11[3] >= v22)
    {
      if (a4)
      {
        if (v12)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762480, &unk_1B1C37E50);
        v22 = sub_1B1C2D638();
        if (v23)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1B1AC891C(v22, a4 & 1);
      v22 = sub_1B1A8EB10();
      if ((v23 & 1) != (v12 & 1))
      {
        goto LABEL_18;
      }

      v19 = v22;
      if (v23)
      {
LABEL_10:
        v24 = *a5;
        v25 = OUTLINED_FUNCTION_35_0(v22, v12, v13, v14, v15, v16, v17, v18, v34, v35, v36, *(&v36 + 1), v37, v38, v39[0]);
        sub_1B1A93378(v25, v26);
        __swift_destroy_boxed_opaque_existential_0(v39);

        v27 = (v24[7] + 32 * v19);
        __swift_destroy_boxed_opaque_existential_0(v27);
        sub_1B1A9EEE0(&v36, v27);
        goto LABEL_14;
      }
    }

    v28 = *a5;
    *(*a5 + 8 * (v19 >> 6) + 64) |= 1 << v19;
    v29 = (v28[6] + 16 * v19);
    *v29 = v10;
    v29[1] = v9;
    sub_1B1A9EEE0(v39, (v28[7] + 32 * v19));
    v30 = v28[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_17;
    }

    v28[2] = v32;
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

uint64_t sub_1B1B479F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_1B1B477C8(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

unint64_t *sub_1B1B47A68(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_1B1B47D6C(v8, v4, v2);
      MEMORY[0x1B2739FD0](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = (v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1B1ADFF70(0, v4, v5);
  v6 = sub_1B1B47BCC(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

unint64_t *sub_1B1B47BCC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v17 = result;
  v18 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);

    if (sub_1B1C2CDA8())
    {
    }

    else
    {
      v14 = sub_1B1C2CDA8();

      if ((v14 & 1) == 0)
      {
        *(v17 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v18++, 1))
        {
          __break(1u);
          return sub_1B1B47DE4(v17, a2, v18, a3);
        }
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_1B1B47DE4(v17, a2, v18, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1B1B47D6C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_1B1B47BCC(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1B1B47DE4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762778, &qword_1B1C38A58);
  result = sub_1B1C2D6A8();
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
  v12 = result + 64;
  v34 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 16 * v16);
    v22 = v21[1];
    v35 = *v21;
    sub_1B1C2D888();

    sub_1B1C2CC48();
    result = sub_1B1C2D8E8();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    v32 = (*(v9 + 56) + 16 * v26);
    *v32 = v35;
    v32[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v34;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B1B4802C(void *a1)
{
  v1 = [a1 assets];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1B1A8E474(0, &qword_1EB761278, 0x1E69DEED0);
  v3 = sub_1B1C2CA98();

  return v3;
}

uint64_t sub_1B1B480BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1B4812C(uint64_t a1, double a2)
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

  return sub_1B1B458C0(a1, v11, a2, v2 + v6, v9, v10, v13, v14);
}

uint64_t getEnumTagSinglePayload for TTSAssetUAFAsset.assetDeviceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TTSAssetUAFAsset.assetDeviceType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

void sub_1B1B483DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for URLResourceKey(0);
  v4 = v3;
  v5 = sub_1B1A97A14(&unk_1ED9A94F0, type metadata accessor for URLResourceKey, &unk_1B1C35C64);
  v6 = MEMORY[0x1B2738440](v2, v4, v5);
  v7 = 0;
  v10[1] = v6;
  v8 = *(a1 + 16);
  while (1)
  {
    if (v8 == v7)
    {

      return;
    }

    if (v7 >= *(a1 + 16))
    {
      break;
    }

    v9 = v7 + 1;
    sub_1B1B1DEEC(v10, *(a1 + 8 * v7 + 32));

    v7 = v9;
  }

  __break(1u);
}

uint64_t TTSAssetUAFAssetProvider.__allocating_init()()
{
  OUTLINED_FUNCTION_15_3();
  v0 = swift_allocObject();
  TTSAssetUAFAssetProvider.init()();
  return v0;
}

uint64_t sub_1B1B484F0()
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
  v10 = sub_1B1ABB11C(v0, 1u);
  v0 = static TTSAsset.listAssets(ofTypes:matching:)(v4, v10);

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

      v12 = *(v0 + v1 + 4);
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

      OUTLINED_FUNCTION_20_7();
      sub_1B1C2CEC8();
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

void sub_1B1B48728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = MEMORY[0x1E69E7CC0];
  v41[0] = MEMORY[0x1E69E7CC0];
  v4 = sub_1B1A9547C();
  for (i = 0; v4 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1B2738A20](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v43 = v6;
    sub_1B1B48B10(&v43, &v42);

    if (v42)
    {
      MEMORY[0x1B2738320](v8, v9);
      OUTLINED_FUNCTION_10_3();
      if (v10)
      {
        OUTLINED_FUNCTION_9_14();
      }

      OUTLINED_FUNCTION_20_7();
      sub_1B1C2CEC8();
      v40 = v41[0];
    }
  }

  v11 = sub_1B1A9547C();
  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  while (v11 != v12)
  {
    if ((v40 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1B2738A20](v12, v40);
    }

    else
    {
      if (v12 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v14 = *(v40 + 8 * v12 + 32);
    }

    v15 = v14;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_50;
    }

    v16 = sub_1B1ABA04C();

    v17 = *(v16 + 16);
    v18 = *(v13 + 16);
    if (__OFADD__(v18, v17))
    {
      goto LABEL_52;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v18 + v17 > *(v13 + 24) >> 1)
    {
      sub_1B1A9ED54();
      v13 = v19;
    }

    if (*(v16 + 16))
    {
      if ((*(v13 + 24) >> 1) - *(v13 + 16) < v17)
      {
        goto LABEL_54;
      }

      swift_arrayInitWithCopy();

      if (v17)
      {
        v20 = *(v13 + 16);
        v21 = __OFADD__(v20, v17);
        v22 = v20 + v17;
        if (v21)
        {
          goto LABEL_55;
        }

        *(v13 + 16) = v22;
      }
    }

    else
    {

      if (v17)
      {
        goto LABEL_53;
      }
    }

    ++v12;
  }

  v23 = sub_1B1ACB6B8(v13);
  v24 = v23;
  v43 = MEMORY[0x1E69E7CC0];
  v25 = v23 + 56;
  v26 = 1 << *(v23 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v23 + 56);
  v29 = (v26 + 63) >> 6;

  v30 = 0;
  if (v28)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v31 >= v29)
    {

      type metadata accessor for TTSAssetUAFStrategy();
      swift_initStaticObject();
      v41[0] = v40;
      v37 = OUTLINED_FUNCTION_20_7();
      sub_1B1C004C0(v37);
      sub_1B1B68860(v41[0], 0x73747469726973, 0xE700000000000000, a2, a3);

      return;
    }

    v28 = *(v25 + 8 * v31);
    ++v30;
    if (v28)
    {
      v30 = v31;
      do
      {
LABEL_38:
        v32 = (*(v24 + 48) + ((v30 << 10) | (16 * __clz(__rbit64(v28)))));
        v34 = *v32;
        v33 = v32[1];
        v41[0] = v34;
        v41[1] = v33;
        sub_1B1B48D9C(v41, &v42);
        if (v42)
        {
          MEMORY[0x1B2738320](v35, v36);
          if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B1C2CE98();
          }

          sub_1B1C2CEC8();
        }

        v28 &= v28 - 1;
      }

      while (v28);
    }
  }

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
LABEL_55:
  __break(1u);
}

void sub_1B1B48B10(char **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for TTSAsset();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C38B50;
  if (qword_1ED9A9978 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED9A9980;
  *(v4 + 32) = qword_1ED9A9980;
  v6 = qword_1ED9A9850;
  v7 = v5;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_1ED9A97E0;
  *(v4 + 40) = qword_1ED9A97E0;
  v9 = OBJC_IVAR___SiriTTSVoiceSubscription_voice;
  swift_beginAccess();
  v10 = *&v3[v9];
  v11 = v8;
  v12 = v10;
  v13 = sub_1B1ABB11C(v10, 2u);

  v14 = static TTSAsset.bestAsset(ofTypes:matching:)(v4, v13);

  if (v14)
  {
    type metadata accessor for TTSAssetUAFAsset(0);
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      *a2 = v15;
      return;
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v16 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v16, qword_1ED9A9120);
    v17 = v3;
    v14 = sub_1B1C2C888();
    v18 = sub_1B1C2D0D8();

    if (os_log_type_enabled(v14, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v17;
      *v20 = v17;
      v21 = v17;
      _os_log_impl(&dword_1B1A8A000, v14, v18, "Can't determine asset matching subscription: %@", v19, 0xCu);
      sub_1B1B1AF0C(v20);
      MEMORY[0x1B2739FD0](v20, -1, -1);
      MEMORY[0x1B2739FD0](v19, -1, -1);
    }
  }

  *a2 = 0;
}

void sub_1B1B48D9C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for TTSAsset();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B1C37D90;
  if (qword_1ED9A9960 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED9A9968;
  *(v5 + 32) = qword_1ED9A9968;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627A8, &unk_1B1C396D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C36280;
  v8 = MEMORY[0x1E69E6158];
  *(inited + 32) = 1;
  *(inited + 40) = v3;
  *(inited + 48) = v4;
  *(inited + 64) = v8;
  *(inited + 72) = 7;
  v9 = qword_1EB761310;
  v10 = v6;

  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_1EB761318;
  *(inited + 104) = sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  *(inited + 80) = v11;
  type metadata accessor for TTSAssetProperty(0);
  sub_1B1A97A14(&qword_1ED9A90A0, type metadata accessor for TTSAssetProperty, &unk_1B1C35CF4);
  v12 = v11;
  v13 = sub_1B1C2CAB8();
  v14 = static TTSAsset.bestAsset(ofTypes:matching:)(v5, v13);

  if (v14)
  {
    type metadata accessor for TTSAssetUAFAsset(0);
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      *a2 = v15;
      return;
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v16 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v16, qword_1ED9A9120);

    v14 = sub_1B1C2C888();
    v17 = sub_1B1C2D0D8();

    if (os_log_type_enabled(v14, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1B1A930E4(v3, v4, &v20);
      _os_log_impl(&dword_1B1A8A000, v14, v17, "Can't determine resource asset matching subscription language: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1B2739FD0](v19, -1, -1);
      MEMORY[0x1B2739FD0](v18, -1, -1);
    }
  }

  *a2 = 0;
}

void sub_1B1B490D0()
{
  OUTLINED_FUNCTION_25();
  sub_1B1C2C988();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_16();
  v39 = sub_1B1C2C9D8();
  OUTLINED_FUNCTION_7();
  v38 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_16();
  v37 = v4 - v3;
  sub_1B1C2C998();
  OUTLINED_FUNCTION_7();
  v35 = v6;
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  v40 = dispatch_group_create();
  if (qword_1EB761370 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v10 = qword_1EB772D08;
    v11 = sub_1B1A9547C();
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1B2738A20](v14, v10);
        }

        else
        {
          if (v14 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v15 = *(v10 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if ([v15 locallyAvailable])
        {
          dispatch_group_enter(v40);
          *(swift_allocObject() + 16) = v40;
          v18 = v40;
          sub_1B1B466F8();

          v13 = 1;
        }

        else
        {
        }

        ++v14;
        if (v17 == v12)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

    v13 = 0;
LABEL_15:
    if (qword_1EB7612C8 != -1)
    {
      swift_once();
    }

    v19 = qword_1EB772CE8;
    v20 = sub_1B1A9547C();
    if (!v20)
    {
      break;
    }

    v21 = v20;
    v22 = 0;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1B2738A20](v22, v19);
      }

      else
      {
        if (v22 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v23 = *(v19 + 8 * v22 + 32);
      }

      v24 = v23;
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if ([v23 locallyAvailable])
      {
        dispatch_group_enter(v40);
        *(swift_allocObject() + 16) = v40;
        v26 = v40;
        sub_1B1B466F8();

        v13 = 1;
        ++v22;
        if (v25 == v21)
        {
          goto LABEL_30;
        }
      }

      else
      {

        ++v22;
        if (v25 == v21)
        {
          goto LABEL_29;
        }
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

LABEL_29:
  if (v13)
  {
LABEL_30:
    sub_1B1A8E474(0, &qword_1ED9A9940, 0x1E69E9610);
    (*(v35 + 104))(v9, *MEMORY[0x1E69E7F98], v36);
    v27 = sub_1B1C2D168();
    (*(v35 + 8))(v9, v36);
    v41[4] = sub_1B1B49664;
    v41[5] = 0;
    OUTLINED_FUNCTION_2_2();
    v41[1] = 1107296256;
    v41[2] = sub_1B1A95870;
    v41[3] = &block_descriptor_14;
    v28 = _Block_copy(v41);
    sub_1B1C2C9A8();
    OUTLINED_FUNCTION_3_15();
    sub_1B1A97A14(v29, v30, MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
    sub_1B1A97978(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430);
    sub_1B1C2D418();
    sub_1B1C2D108();
    _Block_release(v28);

    v31 = OUTLINED_FUNCTION_13_13();
    v32(v31);
    (*(v38 + 8))(v37, v39);
    OUTLINED_FUNCTION_26_1();
  }

  else
  {
    OUTLINED_FUNCTION_26_1();
  }
}

void sub_1B1B496A8()
{
  OUTLINED_FUNCTION_25();
  v4 = v3;
  v6 = v5;
  v29 = v7;
  v30 = v8;
  v27 = v9;
  v28 = v10;
  v12 = v11;
  v14 = v13;
  v15 = *v0;
  sub_1B1C2C988();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_16_13();
  v32 = sub_1B1C2C9D8();
  OUTLINED_FUNCTION_7();
  v31 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22_5();
  v19 = swift_allocObject();
  v19[2] = v14;
  v19[3] = v6;
  v19[4] = v4;
  v19[5] = v12;
  v19[6] = v28;
  v19[7] = v27;
  v19[8] = v29;
  v19[9] = v30;
  v19[10] = v15;
  v33[4] = sub_1B1B4AEDC;
  v33[5] = v19;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8_14(COERCE_DOUBLE(1107296256));
  v33[2] = v20;
  v33[3] = &block_descriptor_9;
  v21 = _Block_copy(v33);
  v22 = v14;

  sub_1B1A94514(v12, v28);
  sub_1B1A94514(v29, v30);
  sub_1B1C2C9A8();
  OUTLINED_FUNCTION_3_15();
  sub_1B1A97A14(v23, v24, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
  sub_1B1A97978(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430);
  sub_1B1C2D418();
  MEMORY[0x1B2738610](0, v2, v1, v21);
  _Block_release(v21);
  v25 = OUTLINED_FUNCTION_13_13();
  v26(v25);
  (*(v31 + 8))(v2, v32);

  OUTLINED_FUNCTION_26_1();
}