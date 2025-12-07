id HGSetTemporaryDirectorySuffix()
{
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v0 = _HGObjCLoggingFacility(kHGObjCLogCategoryFramework[0]);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      HGSetTemporaryDirectorySuffix_cold_1(v0);
    }
  }

  return NSTemporaryDirectory();
}

id HGGetTemporaryRawDataDirectory()
{
  v0 = NSTemporaryDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"RawData"];

  return v1;
}

id HGGetTemporaryNotificationDataDirectory()
{
  v0 = NSTemporaryDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"NotificationData"];

  return v1;
}

id _HGObjCLoggingFacility(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___HGObjCLoggingFacility_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_HGObjCLoggingFacility_onceToken[0] != -1)
  {
    dispatch_once(_HGObjCLoggingFacility_onceToken, block);
  }

  v1 = _HGObjCLoggingFacility_oslog;

  return v1;
}

double sub_2510F445C()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  result = (1.0 - *(v0 + 24)) / *(v0 + 16);
  *(v0 + 32) = result;
  *(v0 + 40) = 0;
  return result;
}

double sub_2510F4488()
{
  v1 = (v0 + OBJC_IVAR____TtC12HeadGestures29HGPartialGestureAudioProgress____lazy_storage___lastPartialGestureVolume);
  if ((*(v0 + OBJC_IVAR____TtC12HeadGestures29HGPartialGestureAudioProgress____lazy_storage___lastPartialGestureVolume + 8) & 1) == 0)
  {
    return *v1;
  }

  result = *(v0 + 24);
  *v1 = result;
  v1[8] = 0;
  return result;
}

void sub_2510F44B4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E0E8, &qword_251132AA8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v29 = &v29 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = sub_251130B38();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v30 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251130B08();
  if (*(v1 + 56))
  {
    goto LABEL_5;
  }

  v14 = OBJC_IVAR____TtC12HeadGestures29HGPartialGestureAudioProgress_lastPartialGestureTime;
  swift_beginAccess();
  sub_2510F64EC(v1 + v14, v10);
  v15 = *(v12 + 48);
  v16 = a1;
  v17 = v6;
  v18 = v15(v10, 1, v11);
  sub_2510F655C(v10);
  v19 = v18 == 1;
  v6 = v17;
  a1 = v16;
  if (v19)
  {
    goto LABEL_5;
  }

  v20 = v1 + v14;
  v21 = v29;
  sub_2510F64EC(v20, v29);
  if (v15(v21, 1, v11) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_251130B18();
    v23 = v22;
    (*(v12 + 8))(v21, v11);
    if (v23 > 0.8)
    {
LABEL_5:
      v24 = OBJC_IVAR____TtC12HeadGestures29HGPartialGestureAudioProgress____lazy_storage___lastPartialGestureVolume;
      *(v1 + OBJC_IVAR____TtC12HeadGestures29HGPartialGestureAudioProgress____lazy_storage___lastPartialGestureVolume) = *(v1 + 24);
LABEL_6:
      *(v1 + v24 + 8) = 0;
      *(v1 + 48) = a1;
      *(v1 + 56) = 0;
      (*(v12 + 32))(v6, v30, v11);
      (*(v12 + 56))(v6, 0, 1, v11);
      v25 = OBJC_IVAR____TtC12HeadGestures29HGPartialGestureAudioProgress_lastPartialGestureTime;
      swift_beginAccess();
      sub_2510F647C(v6, v1 + v25);
      swift_endAccess();
      sub_2510F4488();
      return;
    }

    if ((*(v1 + 56) & 1) == 0)
    {
      v26 = *(v1 + 48);
      if (v16 > 2)
      {
        if (v16 == 3)
        {
          if (v26 != 4)
          {
            goto LABEL_5;
          }
        }

        else if (v16 != 4 || v26 != 3)
        {
          goto LABEL_5;
        }
      }

      else if (v16 == 1)
      {
        if (v26 != 2)
        {
          goto LABEL_5;
        }
      }

      else if (v16 != 2 || v26 != 1)
      {
        goto LABEL_5;
      }

      v27 = sub_2510F4488();
      v28 = v27 + sub_2510F445C();
      if (v28 > 1.0)
      {
        v28 = 1.0;
      }

      v24 = OBJC_IVAR____TtC12HeadGestures29HGPartialGestureAudioProgress____lazy_storage___lastPartialGestureVolume;
      *(v1 + OBJC_IVAR____TtC12HeadGestures29HGPartialGestureAudioProgress____lazy_storage___lastPartialGestureVolume) = v28;
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_2510F482C()
{
  sub_2510F655C(v0 + OBJC_IVAR____TtC12HeadGestures29HGPartialGestureAudioProgress_lastPartialGestureTime);

  return swift_deallocClassInstance();
}

void sub_2510F48B8(uint64_t a1)
{
  sub_2510F4964(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2510F4964(uint64_t a1)
{
  if (!qword_27F41DFD0)
  {
    sub_251130B38();
    v1 = sub_251131278();
    if (!v2)
    {
      atomic_store(v1, &qword_27F41DFD0);
    }
  }
}

uint64_t sub_2510F49BC()
{
  if (qword_27F41DFA8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F421A30;
  v2 = *(qword_27F421A30 + 16);
  v3 = sub_251130EE8();
  [v2 doubleForKey_];
  v5 = v4;

  *(v0 + 16) = v5;
  v6 = *(v1 + 16);
  v7 = sub_251130EE8();
  [v6 doubleForKey_];
  v9 = v8;

  *(v0 + 24) = v9;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  v10 = OBJC_IVAR____TtC12HeadGestures29HGPartialGestureAudioProgress_lastPartialGestureTime;
  v11 = sub_251130B38();
  (*(*(v11 - 8) + 56))(v0 + v10, 1, 1, v11);
  v12 = v0 + OBJC_IVAR____TtC12HeadGestures29HGPartialGestureAudioProgress____lazy_storage___lastPartialGestureVolume;
  *v12 = 0;
  *(v12 + 8) = 1;
  return v0;
}

uint64_t sub_2510F4B24()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_251130CA8();

  return v1;
}

id *sub_2510F4B98()
{
  v1 = v0;
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v2 = sub_251130BE8();
  __swift_project_value_buffer(v2, qword_27F421A38);
  v3 = sub_251130BC8();
  v4 = sub_251131178();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2510F2000, v3, v4, "[HGAudioPlayer] dealloc", v5, 2u);
    MEMORY[0x25306CC10](v5, -1, -1);
  }

  (*(*v1 + 33))();

  v6 = OBJC_IVAR____TtC12HeadGestures13HGAudioPlayer__isFreeToStop;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E078, &unk_251132EC0);
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  return v1;
}

uint64_t sub_2510F4D14()
{
  sub_2510F4B98();

  return swift_deallocClassInstance();
}

uint64_t sub_2510F4D94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2510F4DCC(uint64_t a1)
{
  sub_2510F68D0(319, &qword_27F41DFF0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2510F4EB8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E098, &qword_251132A38);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E0A0, &qword_251132A40);
  v9 = *(v8 - 8);
  v26 = v8;
  v27 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E0A8, &qword_251132A48);
  v31 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E0B0, &qword_251132A50);
  v15 = *(v14 - 8);
  v29 = v14;
  v30 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - v16;
  v32 = a1;
  v18 = *(v2 + 16);
  swift_beginAccess();
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E078, &unk_251132EC0);
  sub_251130C78();
  swift_endAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E0B8, &qword_251132A58);
  sub_2510F6658(&qword_27F41E0C0, &qword_27F41E0B8, &qword_251132A58, MEMORY[0x277CBCD90]);
  sub_2510F6658(&qword_27F41E0C8, &qword_27F41E098, &qword_251132A38, MEMORY[0x277CBCEC8]);
  sub_251130D08();
  (*(v5 + 8))(v7, v4);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_2510F6328;
  *(v20 + 24) = v2;
  sub_2510F6658(&qword_27F41E0D0, &qword_27F41E0A0, &qword_251132A40, MEMORY[0x277CBCAF0]);

  v21 = v26;
  sub_251130D38();

  (*(v27 + 8))(v11, v21);
  sub_2510F6658(&qword_27F41E0D8, &qword_27F41E0A8, &qword_251132A48, MEMORY[0x277CBCC08]);

  v22 = v28;
  sub_251130CF8();

  (*(v31 + 8))(v13, v22);
  sub_2510F6658(&qword_27F41E0E0, &qword_27F41E0B0, &qword_251132A50, MEMORY[0x277CBCB60]);
  v23 = v29;
  v24 = sub_251130CD8();
  (*(v30 + 8))(v17, v23);
  return v24;
}

void sub_2510F53E4(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_251130E18();
  v32 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_251130E38();
  v9 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a1;
  v12 = *(a2 + 16);
  [v34 headGesture];
  v13 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioFeedbackForGesture;
  swift_beginAccess();
  v14 = *&v12[v13];

  if (!*(v14 + 16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = sub_25112F9FC();
  if ((v16 & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v33 = a3;
  if (*(*(v14 + 56) + v15) == 1)
  {

LABEL_8:
    v24 = swift_allocObject();
    v25 = v34;
    *(v24 + 16) = a2;
    *(v24 + 24) = v25;
    aBlock[4] = sub_2510F6278;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2511147B8;
    aBlock[3] = &block_descriptor;
    v26 = _Block_copy(aBlock);

    v27 = v34;
    sub_251130E28();
    v35 = MEMORY[0x277D84F90];
    sub_2510F6610(&qword_27F41E080, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E088, &qword_251132A30);
    sub_2510F6658(&qword_27F41E090, &qword_27F41E088, &qword_251132A30, MEMORY[0x277D83970]);
    sub_2511312A8();
    MEMORY[0x25306C010](0, v11, v8, v26);
    _Block_release(v26);
    (*(v32 + 8))(v8, v6);
    (*(v9 + 8))(v11, v31);

    goto LABEL_9;
  }

  v17 = *(a2 + 16);
  sub_25111795C([v34 headGesturePart]);
  v18 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioFeedbackForPartGesture;
  swift_beginAccess();
  v19 = *&v17[v18];

  if (!*(v19 + 16))
  {
    goto LABEL_14;
  }

  v20 = sub_25112F9FC();
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v23 = *(*(v19 + 56) + v20);

  if (v23 == 1)
  {
    goto LABEL_8;
  }

LABEL_9:
  v28 = v34;
  *v33 = v34;

  v29 = v28;
}

__n128 __swift_memcpy16_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2510F5854(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2510F5874(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_2510F5914()
{
  v0 = sub_251130F18();
  v1 = MEMORY[0x25306BDF0](v0);

  return v1;
}

uint64_t sub_2510F5950(uint64_t a1)
{
  sub_251130F18();
  sub_251130F88();
}

uint64_t sub_2510F59A4(uint64_t a1)
{
  sub_251130F18();
  sub_251131598();
  sub_251130F88();
  v1 = sub_2511315B8();

  return v1;
}

uint64_t sub_2510F5A20(uint64_t a1, id *a2)
{
  result = sub_251130EF8();
  *a2 = 0;
  return result;
}

uint64_t sub_2510F5A98(uint64_t a1, id *a2)
{
  v3 = sub_251130F08();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2510F5B18@<X0>(uint64_t *a2@<X8>)
{
  sub_251130F18();
  v3 = sub_251130EE8();

  *a2 = v3;
  return result;
}

uint64_t sub_2510F5C0C(uint64_t a1, uint64_t a2)
{
  sub_251131598();
  swift_getWitnessTable();
  sub_251130BA8();
  return sub_2511315B8();
}

void *sub_2510F5C74@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_2510F5C98@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2510F5D34(void *a1, uint64_t *a2)
{
  v2 = sub_251130F18();
  v4 = v3;
  if (v2 == sub_251130F18() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_251131518();
  }

  return v7 & 1;
}

uint64_t sub_2510F5DBC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_251130B98();
}

uint64_t sub_2510F5E28@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_251130EE8();

  *a2 = v3;
  return result;
}

uint64_t sub_2510F5E70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_251130F18();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2510F5E9C(uint64_t a1)
{
  v2 = sub_2510F6610(&qword_27F41E158, type metadata accessor for MLModelMetadataKey, &unk_251132CB4);
  v3 = sub_2510F6610(&qword_27F41E160, type metadata accessor for MLModelMetadataKey, &unk_251132C08);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2510F5F58(void *a1)
{
  v2 = v1;
  v15 = a1;
  v14 = sub_2511311D8();
  v3 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2511311A8();
  MEMORY[0x28223BE20](v6);
  v7 = sub_251130E38();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2510F65C4();
  v13[0] = "dioProgress";
  v13[1] = v8;
  sub_251130E28();
  v17 = MEMORY[0x277D84F90];
  sub_2510F6610(&qword_27F41E0F8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E100, &qword_251132AB0);
  sub_2510F6658(&qword_27F41E108, &qword_27F41E100, &qword_251132AB0, MEMORY[0x277D83970]);
  sub_2511312A8();
  (*(v3 + 104))(v5, *MEMORY[0x277D85260], v14);
  *(v1 + 24) = sub_251131208();
  *(v1 + 32) = 0;
  *(v1 + 40) = 1028443341;
  type metadata accessor for HGPartialGestureAudioProgress(0);
  v9 = swift_allocObject();
  sub_2510F49BC();
  *(v2 + 48) = v9;
  v10 = v15;
  *(v2 + 16) = v15;
  swift_beginAccess();
  v16 = 0;
  v11 = v10;
  sub_251130C68();
  swift_endAccess();
  return v2;
}

uint64_t sub_2510F6238()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2510F6328(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = a1 & a2;
  v4 = *v2;
  if (a1 & a2)
  {
    (*(v4 + 272))();
  }

  else
  {
    (*(v4 + 280))(nullsub_1, 0);
  }

  return v3 & 1;
}

uint64_t sub_2510F63B8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2510F63F0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result & 1;
  return result;
}

uint64_t sub_2510F647C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E0E8, &qword_251132AA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2510F64EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E0E8, &qword_251132AA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2510F655C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E0E8, &qword_251132AA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2510F65C4()
{
  result = qword_27F41E0F0;
  if (!qword_27F41E0F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F41E0F0);
  }

  return result;
}

uint64_t sub_2510F6610(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2510F6658(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2510F68D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2510F692C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E170, &qword_251132E08);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - v4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E178, &qword_251132E10);
  v21 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E180, &qword_251132E18);
  v9 = *(v8 - 8);
  v19 = v8;
  v20 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  v22 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E188, &qword_251132E20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E190, &qword_251132E28);
  sub_2510F6658(&qword_27F41E198, &qword_27F41E188, &qword_251132E20, MEMORY[0x277CBCD90]);
  sub_251130DA8();

  sub_251130BF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E1A0, &qword_251132E30);
  sub_2510F6658(&qword_27F41E1A8, &qword_27F41E170, &qword_251132E08, MEMORY[0x277CBCCC0]);
  sub_2510F6658(&qword_27F41E1B0, &qword_27F41E1A0, &qword_251132E30, MEMORY[0x277CBCD18]);
  sub_251130DB8();
  (*(v3 + 8))(v5, v2);
  sub_2510F6658(&qword_27F41E1B8, &qword_27F41E178, &qword_251132E10, MEMORY[0x277CBCCE0]);
  sub_2510F72AC();
  v12 = v18;
  sub_251130DE8();
  (*(v21 + 8))(v7, v12);
  sub_2510F6658(&qword_27F41E1C8, &qword_27F41E180, &qword_251132E18, MEMORY[0x277CBCD08]);
  v13 = v19;
  v14 = sub_251130D88();
  (*(v20 + 8))(v11, v13);
  v22 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E1D0, &qword_251132E38);
  sub_2510F6658(&qword_27F41E1D8, &qword_27F41E1D0, &qword_251132E38, MEMORY[0x277CBCC78]);
  v15 = sub_251130CD8();

  return v15;
}

char *sub_2510F6DCC@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, char **a3@<X8>)
{
  v7 = a1[5];
  v47[4] = a1[4];
  v47[5] = v7;
  v48[0] = a1[6];
  *(v48 + 9) = *(a1 + 105);
  v8 = a1[1];
  v47[0] = *a1;
  v47[1] = v8;
  v9 = a1[3];
  v47[2] = a1[2];
  v47[3] = v9;
  v46 = MEMORY[0x277D84F90];
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[4];
  v52 = a2[3];
  v53 = v12;
  v50 = v10;
  v51 = v11;
  v13 = a2[5];
  v14 = a2[6];
  v15 = a2[7];
  *(v56 + 9) = *(a2 + 121);
  v55 = v14;
  v56[0] = v15;
  v54 = v13;
  if (sub_2510F7300(&v50) == 1)
  {
    v16 = a1[5];
    v43 = a1[4];
    v44 = v16;
    v45[0] = a1[6];
    *(v45 + 9) = *(a1 + 105);
    v17 = a1[1];
    v39 = *a1;
    v40 = v17;
    v18 = a1[3];
    v41 = a1[2];
    v42 = v18;
    nullsub_1();
    v19 = v44;
    a2[5] = v43;
    a2[6] = v19;
    a2[7] = v45[0];
    *(a2 + 121) = *(v45 + 9);
    v20 = v40;
    a2[1] = v39;
    a2[2] = v20;
    v21 = v42;
    a2[3] = v41;
    a2[4] = v21;
    result = sub_251109414(0, 1, 1, MEMORY[0x277D84F90]);
    v24 = *(result + 2);
    v23 = *(result + 3);
    if (v24 >= v23 >> 1)
    {
      result = sub_251109414((v23 > 1), v24 + 1, 1, result);
    }

    *(result + 2) = v24 + 1;
    v25 = &result[128 * v24];
    v26 = a1[5];
    *(v25 + 6) = a1[4];
    *(v25 + 7) = v26;
    *(v25 + 8) = a1[6];
    *(v25 + 137) = *(a1 + 105);
    v27 = a1[1];
    *(v25 + 2) = *a1;
    *(v25 + 3) = v27;
    v28 = a1[3];
    *(v25 + 4) = a1[2];
    *(v25 + 5) = v28;
LABEL_5:
    *a3 = result;
    return result;
  }

  v48[6] = v54;
  v48[7] = v55;
  v49[0] = v56[0];
  *(v49 + 9) = *(v56 + 9);
  v48[2] = v50;
  v48[3] = v51;
  v48[4] = v52;
  v48[5] = v53;
  v29 = sub_2511111B8(v47, 0.04);
  if (!v3)
  {
    sub_2510F7064(v29);
    result = v46;
    if (*(v46 + 2))
    {
      v33 = a1[5];
      v43 = a1[4];
      v44 = v33;
      v45[0] = a1[6];
      *(v45 + 9) = *(a1 + 105);
      v34 = a1[1];
      v39 = *a1;
      v40 = v34;
      v35 = a1[3];
      v41 = a1[2];
      v42 = v35;
      nullsub_1();
      result = v46;
      v36 = v44;
      a2[5] = v43;
      a2[6] = v36;
      a2[7] = v45[0];
      *(a2 + 121) = *(v45 + 9);
      v37 = v40;
      a2[1] = v39;
      a2[2] = v37;
      v38 = v42;
      a2[3] = v41;
      a2[4] = v38;
    }

    goto LABEL_5;
  }

  sub_2510F731C(&v39);
  v30 = v44;
  a2[5] = v43;
  a2[6] = v30;
  a2[7] = v45[0];
  *(a2 + 121) = *(v45 + 9);
  v31 = v40;
  a2[1] = v39;
  a2[2] = v31;
  v32 = v42;
  a2[3] = v41;
  a2[4] = v32;
  return swift_willThrow();
}

uint64_t sub_2510F7064(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_251109414(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + (v7 << 7) + 32), (v6 + 32), v2 << 7);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2510F7150()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E190, &qword_251132E28);
  sub_2510F6658(&qword_27F41E1E8, &qword_27F41E190, &qword_251132E28, MEMORY[0x277D83970]);
  return sub_251130FF8();
}

uint64_t sub_2510F71E4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E1E0, &qword_251132E40);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

unint64_t sub_2510F72AC()
{
  result = qword_27F41E1C0;
  if (!qword_27F41E1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E1C0);
  }

  return result;
}

uint64_t sub_2510F7300(uint64_t a1)
{
  v1 = *(a1 + 120);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

double sub_2510F731C(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = 2;
  return result;
}

uint64_t sub_2510F7340()
{
  v1 = *v0;
  sub_251131598();
  MEMORY[0x25306C3C0](v1);
  return sub_2511315B8();
}

uint64_t sub_2510F73B4(uint64_t a1)
{
  v2 = *v1;
  sub_251131598();
  MEMORY[0x25306C3C0](v2);
  return sub_2511315B8();
}

unint64_t sub_2510F73F8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2510FC3A4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_2510F742C()
{
  if (qword_27F41DF80 != -1)
  {
    swift_once();
  }

  v0 = qword_27F41DF78;
  v1 = qword_27F41E200;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = qword_27F41E1F8;
  v3 = objc_allocWithZone(type metadata accessor for HGConfiguration());
  v4 = v2;
  v5 = [v3 initWithMlConfig:v1 audioFeedbackConfig:v4 requestPartGestures:0];

  qword_27F41E1F0 = v5;
}

id HGConfiguration.__allocating_init(withML:audioFeedbackConfig:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithMlConfig:a1 audioFeedbackConfig:a2 requestPartGestures:0];

  return v5;
}

id sub_2510F75FC()
{
  v1 = OBJC_IVAR___HGConfigurationInternal_mlConfig;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_2510F76B0(uint64_t a1)
{
  v3 = OBJC_IVAR___HGConfigurationInternal_mlConfig;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_2510F77B4()
{
  v1 = OBJC_IVAR___HGConfigurationInternal_audioFeedbackConfig;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_2510F7868(uint64_t a1)
{
  v3 = OBJC_IVAR___HGConfigurationInternal_audioFeedbackConfig;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_2510F78C0(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

uint64_t sub_2510F79C4()
{
  v1 = OBJC_IVAR___HGConfigurationInternal_requestPartGestures;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2510F7A5C(char a1)
{
  v3 = OBJC_IVAR___HGConfigurationInternal_requestPartGestures;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2510F7B58()
{
  v1 = OBJC_IVAR___HGConfigurationInternal_singleDelivery;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2510F7BF0(char a1)
{
  v3 = OBJC_IVAR___HGConfigurationInternal_singleDelivery;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2510F7CE8()
{
  v1 = OBJC_IVAR___HGConfigurationInternal_enableRawDataLogging;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2510F7D90(char a1)
{
  v3 = OBJC_IVAR___HGConfigurationInternal_enableRawDataLogging;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_2510F7DE4();
}

void sub_2510F7DE4()
{
  v1 = OBJC_IVAR___HGConfigurationInternal_enableRawDataLogging;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    v2 = NSUserName();
    v3 = sub_251130F18();
    v5 = v4;

    if (v3 == 1953460082 && v5 == 0xE400000000000000)
    {
    }

    else
    {
      v6 = sub_251131518();

      if ((v6 & 1) == 0)
      {
        HGSetTemporaryDirectorySuffix();
        if (qword_27F41DFA8 != -1)
        {
          swift_once();
        }

        v13 = *(qword_27F421A30 + 16);
        v14 = sub_251130EE8();
        v12 = [v13 BOOLForKey_];

        goto LABEL_14;
      }
    }

    v7 = v0;
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v8 = sub_251130BE8();
    __swift_project_value_buffer(v8, qword_27F421A38);
    v9 = sub_251130BC8();
    v10 = sub_251131188();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2510F2000, v9, v10, "Raw Data logging will be disabled due to running as root", v11, 2u);
      MEMORY[0x25306CC10](v11, -1, -1);
    }

    v12 = 0;
    v0 = v7;
LABEL_14:
    *(v0 + v1) = v12;
  }
}

void (*sub_2510F7FF8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2510F805C;
}

void sub_2510F805C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_2510F7DE4();
  }
}

id HGConfiguration.__allocating_init(mlConfig:audioFeedbackConfig:requestPartGestures:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = objc_allocWithZone(v3);
  return HGConfiguration.init(mlConfig:audioFeedbackConfig:requestPartGestures:)(a1, a2, v4);
}

id HGConfiguration.init(mlConfig:audioFeedbackConfig:requestPartGestures:)(uint64_t a1, uint64_t a2, char a3)
{
  v3[OBJC_IVAR___HGConfigurationInternal_singleDelivery] = 0;
  v3[OBJC_IVAR___HGConfigurationInternal_enableRawDataLogging] = 0;
  v7 = OBJC_IVAR___HGConfigurationInternal_gesturePartRepeatTimeout;
  if (qword_27F41DFA8 != -1)
  {
    swift_once();
  }

  v8 = qword_27F421A30;
  v9 = *(qword_27F421A30 + 16);
  v10 = sub_251130EE8();
  [v9 floatForKey_];
  v12 = v11;

  *&v3[v7] = v12;
  v13 = OBJC_IVAR___HGConfigurationInternal_gesturePartAcceptableNodVelocity;
  v14 = *(v8 + 16);
  v15 = sub_251130EE8();
  [v14 floatForKey_];
  v17 = v16;

  *&v3[v13] = v17;
  v18 = OBJC_IVAR___HGConfigurationInternal_gesturePartAcceptableShakeVelocity;
  v19 = *(v8 + 16);
  v20 = sub_251130EE8();
  [v19 floatForKey_];
  v22 = v21;

  *&v3[v18] = v22;
  *&v3[OBJC_IVAR___HGConfigurationInternal_mlConfig] = a1;
  *&v3[OBJC_IVAR___HGConfigurationInternal_audioFeedbackConfig] = a2;
  v3[OBJC_IVAR___HGConfigurationInternal_requestPartGestures] = a3 & 1;
  v24.receiver = v3;
  v24.super_class = type metadata accessor for HGConfiguration();
  return objc_msgSendSuper2(&v24, sel_init);
}

id HGConfiguration.init(withML:audioFeedbackConfig:)(void *a1, void *a2)
{
  v5 = [v2 initWithMlConfig:a1 audioFeedbackConfig:a2 requestPartGestures:0];

  return v5;
}

uint64_t sub_2510F8400()
{
  v1 = v0;
  sub_251131358();
  MEMORY[0x25306BDC0](0xD00000000000002ALL, 0x80000002511359A0);
  v2 = OBJC_IVAR___HGConfigurationInternal_requestPartGestures;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v1 + v2))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x25306BDC0](v3, v4);

  MEMORY[0x25306BDC0](0xD000000000000012, 0x80000002511359D0);
  v5 = OBJC_IVAR___HGConfigurationInternal_singleDelivery;
  swift_beginAccess();
  if (*(v1 + v5))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v1 + v5))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x25306BDC0](v6, v7);

  MEMORY[0x25306BDC0](0xD000000000000018, 0x80000002511359F0);
  v8 = OBJC_IVAR___HGConfigurationInternal_enableRawDataLogging;
  swift_beginAccess();
  if (*(v1 + v8))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v1 + v8))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x25306BDC0](v9, v10);

  MEMORY[0x25306BDC0](0x436F69647561202CLL, 0xEF203A6769666E6FLL);
  v11 = OBJC_IVAR___HGConfigurationInternal_audioFeedbackConfig;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v13 = sub_2510FA3DC();
  v15 = v14;

  MEMORY[0x25306BDC0](v13, v15);

  return 0;
}

id HGConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2510F8700()
{
  v0 = objc_allocWithZone(type metadata accessor for HGAudioFeedbackConfiguration(0));
  result = HGAudioFeedbackConfiguration.init(enableAudioFeedback:enableWaitingTone:audioSessionID:)(1, 0, 0);
  qword_27F41E1F8 = result;
  return result;
}

id HGAudioFeedbackConfiguration.__allocating_init(enableAudioFeedback:enableWaitingTone:audioSessionID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v6 = a1;
  v7 = objc_allocWithZone(v3);
  return HGAudioFeedbackConfiguration.init(enableAudioFeedback:enableWaitingTone:audioSessionID:)(v6, v5, v4);
}

uint64_t sub_2510F87FC()
{
  v1 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_enableAudioFeedback;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2510F8894(char a1)
{
  v3 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_enableAudioFeedback;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2510F898C()
{
  v1 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_invertedConfirmationAudioFeedbackMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2510F8A24(char a1)
{
  v3 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_invertedConfirmationAudioFeedbackMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2510F8B54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_251130CA8();

  return v1;
}

uint64_t sub_2510F8C38(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_251130CB8();
}

uint64_t sub_2510F8CA4@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_251130CA8();

  *a2 = v4;
  return result;
}

uint64_t sub_2510F8D24(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_251130CB8();
}

uint64_t (*sub_2510F8D94(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_251130C98();
  return sub_2510F8E38;
}

void sub_2510F8E38(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_2510F8EA0(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E078, &unk_251132EC0);
  sub_251130C78();
  return swift_endAccess();
}

uint64_t sub_2510F8F18(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E098, &qword_251132A38);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E078, &unk_251132EC0);
  sub_251130C88();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2510F909C()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E078, &unk_251132EC0);
  sub_251130C78();
  return swift_endAccess();
}

uint64_t sub_2510F9110(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E098, &qword_251132A38);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E078, &unk_251132EC0);
  sub_251130C88();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_2510F9248(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E098, &qword_251132A38);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal__enableWaitingTone;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E078, &unk_251132EC0);
  sub_251130C78();
  swift_endAccess();
  return sub_2510F93B8;
}

void sub_2510F93B8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_251130C88();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_251130C88();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_2510F9568()
{
  v1 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioSessionID;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2510F9600(int a1)
{
  v3 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioSessionID;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id HGAudioFeedbackConfiguration.init(enableAudioFeedback:enableWaitingTone:audioSessionID:)(char a1, char a2, int a3)
{
  v6 = MEMORY[0x277D84F98];
  *&v3[OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioFeedbackForGesture] = MEMORY[0x277D84F98];
  *&v3[OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioFeedbackForPartGesture] = v6;
  v3[OBJC_IVAR___HGAudioFeedbackConfigurationInternal_invertedConfirmationAudioFeedbackMode] = 0;
  v3[OBJC_IVAR___HGAudioFeedbackConfigurationInternal_enableAudioFeedback] = a1;
  swift_beginAccess();
  v10 = a2;
  sub_251130C68();
  swift_endAccess();
  *&v3[OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioSessionID] = a3;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for HGAudioFeedbackConfiguration(0);
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_2510F9E44();

  return v7;
}

uint64_t sub_2510F97C8(unint64_t a1, char a2)
{
  v3 = v2;
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v6 = sub_251130BE8();
  __swift_project_value_buffer(v6, qword_27F421A38);
  v7 = sub_251130BC8();
  v8 = sub_251131198();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25[0] = v10;
    *v9 = 136315394;
    if (a2)
    {
      v11 = 0x656C62616E45;
    }

    else
    {
      v11 = 0x656C6261736944;
    }

    if (a2)
    {
      v12 = 0xE600000000000000;
    }

    else
    {
      v12 = 0xE700000000000000;
    }

    v13 = sub_2510FAC50(v11, v12, v25);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = 0xE500000000000000;
    v15 = 0x656B616853;
    v16 = 0xE700000000000000;
    v17 = 0x6E776F6E6B6E55;
    if (a1 == 1)
    {
      v17 = 6582094;
      v16 = 0xE300000000000000;
    }

    if (a1 != 2)
    {
      v15 = v17;
      v14 = v16;
    }

    if (a1)
    {
      v18 = v15;
    }

    else
    {
      v18 = 0x756F72476B636142;
    }

    if (a1)
    {
      v19 = v14;
    }

    else
    {
      v19 = 0xEA0000000000646ELL;
    }

    v20 = sub_2510FAC50(v18, v19, v25);

    *(v9 + 14) = v20;
    _os_log_impl(&dword_2510F2000, v7, v8, "[AudioFeedbackConfig] %s audio feedback for %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25306CC10](v10, -1, -1);
    MEMORY[0x25306CC10](v9, -1, -1);
  }

  if (a1 >= 4)
  {
    a1 = 4;
  }

  v21 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioFeedbackForGesture;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v3 + v21);
  *(v3 + v21) = 0x8000000000000000;
  sub_2510FB348(a2 & 1, a1, isUniquelyReferenced_nonNull_native, sub_25112F9FC, sub_251127FD4, sub_251126A88, &type metadata for HGHeadGestureInternal);
  *(v3 + v21) = v24;
  return swift_endAccess();
}

uint64_t sub_2510F9AF0(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v6 = sub_251130BE8();
  __swift_project_value_buffer(v6, qword_27F421A38);
  v7 = sub_251130BC8();
  v8 = sub_251131198();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23[0] = v10;
    *v9 = 136315394;
    if (a2)
    {
      v11 = 0x656C62616E45;
    }

    else
    {
      v11 = 0x656C6261736944;
    }

    if (a2)
    {
      v12 = 0xE600000000000000;
    }

    else
    {
      v12 = 0xE700000000000000;
    }

    v13 = sub_2510FAC50(v11, v12, v23);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v14 = 0xE900000000000074;
        v16 = 0x66654C656B616853;
        goto LABEL_21;
      }

      if (a1 == 4)
      {
        v14 = 0xEA00000000007468;
        v16 = 0x676952656B616853;
LABEL_21:
        v17 = sub_2510FAC50(v16, v14, v23);

        *(v9 + 14) = v17;
        _os_log_impl(&dword_2510F2000, v7, v8, "[AudioFeedbackConfig] %s audio feedback for %s", v9, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25306CC10](v10, -1, -1);
        MEMORY[0x25306CC10](v9, -1, -1);
        goto LABEL_22;
      }
    }

    else
    {
      if (a1 == 1)
      {
        v14 = 0xE500000000000000;
        v16 = 0x7055646F4ELL;
        goto LABEL_21;
      }

      if (a1 == 2)
      {
        v14 = 0xE700000000000000;
        v15 = 1147432782;
LABEL_18:
        v16 = v15 | 0x6E776F00000000;
        goto LABEL_21;
      }
    }

    v14 = 0xE700000000000000;
    v15 = 1852534389;
    goto LABEL_18;
  }

LABEL_22:

  v18 = sub_25111795C(a1);
  v19 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioFeedbackForPartGesture;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v3 + v19);
  *(v3 + v19) = 0x8000000000000000;
  sub_2510FB348(a2 & 1, v18, isUniquelyReferenced_nonNull_native, sub_25112F9FC, sub_251127FE8, sub_251126A9C, &type metadata for HGHeadGesturePartInternal);
  *(v3 + v19) = v22;
  return swift_endAccess();
}

uint64_t sub_2510F9E44()
{
  v1 = v0;
  v64 = MEMORY[0x277D84F90];
  sub_25111B8C4(0, 5, 0);
  v2 = 0;
  v3 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioFeedbackForPartGesture;
  while (1)
  {
    v4 = byte_286331190[v2 + 32];
    if (!v4)
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v1 + v3);
      *(v1 + v3) = 0x8000000000000000;
      v17 = sub_25112F9FC();
      v19 = v16[2];
      v20 = (v18 & 1) == 0;
      v11 = __OFADD__(v19, v20);
      v21 = v19 + v20;
      if (v11)
      {
        goto LABEL_57;
      }

      v22 = v18;
      if (v16[3] >= v21)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v28 = v17;
          sub_251127FE8();
          v17 = v28;
          v24 = v16;
          if ((v22 & 1) == 0)
          {
LABEL_22:
            v24[(v17 >> 6) + 8] |= 1 << v17;
            *(v24[6] + v17) = 0;
            *(v24[7] + v17) = 0;
            v29 = v24[2];
            v11 = __OFADD__(v29, 1);
            v27 = v29 + 1;
            if (v11)
            {
              goto LABEL_61;
            }

            goto LABEL_23;
          }

          goto LABEL_16;
        }
      }

      else
      {
        sub_251126A9C(v21, isUniquelyReferenced_nonNull_native);
        v17 = sub_25112F9FC();
        if ((v22 & 1) != (v23 & 1))
        {
          goto LABEL_62;
        }
      }

      v24 = v16;
      if ((v22 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_16:
      *(v24[7] + v17) = 0;
      goto LABEL_24;
    }

    swift_beginAccess();
    v5 = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v1 + v3);
    *(v1 + v3) = 0x8000000000000000;
    v7 = sub_25112F9FC();
    v9 = v6[2];
    v10 = (v8 & 1) == 0;
    v11 = __OFADD__(v9, v10);
    v12 = v9 + v10;
    if (v11)
    {
      break;
    }

    v13 = v8;
    if (v6[3] >= v12)
    {
      if ((v5 & 1) == 0)
      {
        v25 = v7;
        sub_251127FE8();
        v7 = v25;
        v24 = v6;
        if ((v13 & 1) == 0)
        {
LABEL_18:
          v24[(v7 >> 6) + 8] |= 1 << v7;
          *(v24[6] + v7) = v4;
          *(v24[7] + v7) = 1;
          v26 = v24[2];
          v11 = __OFADD__(v26, 1);
          v27 = v26 + 1;
          if (v11)
          {
            goto LABEL_58;
          }

LABEL_23:
          v24[2] = v27;
          goto LABEL_24;
        }

        goto LABEL_13;
      }
    }

    else
    {
      sub_251126A9C(v12, v5);
      v7 = sub_25112F9FC();
      if ((v13 & 1) != (v14 & 1))
      {
        goto LABEL_62;
      }
    }

    v24 = v6;
    if ((v13 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_13:
    *(v24[7] + v7) = 1;
LABEL_24:
    *(v1 + v3) = v24;
    swift_endAccess();
    v31 = *(v64 + 16);
    v30 = *(v64 + 24);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      sub_25111B8C4((v30 > 1), v31 + 1, 1);
    }

    ++v2;
    *(v64 + 16) = v32;
    if (v2 == 5)
    {

      v65 = MEMORY[0x277D84F90];
      sub_25111B8C4(0, 5, 0);
      v33 = 0;
      v34 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioFeedbackForGesture;
      while (1)
      {
        v35 = byte_2863311B8[v33 + 32];
        if ((v35 - 1) > 1u)
        {
          swift_beginAccess();
          v45 = swift_isUniquelyReferenced_nonNull_native();
          v46 = *(v1 + v34);
          *(v1 + v34) = 0x8000000000000000;
          v47 = sub_25112F9FC();
          v49 = v46[2];
          v50 = (v48 & 1) == 0;
          v11 = __OFADD__(v49, v50);
          v51 = v49 + v50;
          if (v11)
          {
            goto LABEL_55;
          }

          v52 = v48;
          if (v46[3] < v51)
          {
            sub_251126A88(v51, v45);
            v47 = sub_25112F9FC();
            if ((v52 & 1) != (v53 & 1))
            {
              goto LABEL_63;
            }

            goto LABEL_41;
          }

          if (v45)
          {
LABEL_41:
            v54 = v46;
            if ((v52 & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          else
          {
            v58 = v47;
            sub_251127FD4();
            v47 = v58;
            v54 = v46;
            if ((v52 & 1) == 0)
            {
LABEL_48:
              v54[(v47 >> 6) + 8] |= 1 << v47;
              *(v54[6] + v47) = v35;
              *(v54[7] + v47) = 0;
              v59 = v54[2];
              v11 = __OFADD__(v59, 1);
              v57 = v59 + 1;
              if (v11)
              {
                goto LABEL_60;
              }

              goto LABEL_49;
            }
          }

          *(v54[7] + v47) = 0;
          goto LABEL_50;
        }

        swift_beginAccess();
        v36 = swift_isUniquelyReferenced_nonNull_native();
        v37 = *(v1 + v34);
        *(v1 + v34) = 0x8000000000000000;
        v38 = sub_25112F9FC();
        v40 = v37[2];
        v41 = (v39 & 1) == 0;
        v11 = __OFADD__(v40, v41);
        v42 = v40 + v41;
        if (v11)
        {
          goto LABEL_56;
        }

        v43 = v39;
        if (v37[3] >= v42)
        {
          if ((v36 & 1) == 0)
          {
            v55 = v38;
            sub_251127FD4();
            v38 = v55;
            v54 = v37;
            if ((v43 & 1) == 0)
            {
LABEL_44:
              v54[(v38 >> 6) + 8] |= 1 << v38;
              *(v54[6] + v38) = v35;
              *(v54[7] + v38) = 1;
              v56 = v54[2];
              v11 = __OFADD__(v56, 1);
              v57 = v56 + 1;
              if (v11)
              {
                goto LABEL_59;
              }

LABEL_49:
              v54[2] = v57;
              goto LABEL_50;
            }

            goto LABEL_39;
          }
        }

        else
        {
          sub_251126A88(v42, v36);
          v38 = sub_25112F9FC();
          if ((v43 & 1) != (v44 & 1))
          {
            goto LABEL_63;
          }
        }

        v54 = v37;
        if ((v43 & 1) == 0)
        {
          goto LABEL_44;
        }

LABEL_39:
        *(v54[7] + v38) = 1;
LABEL_50:
        *(v1 + v34) = v54;
        swift_endAccess();
        v61 = *(v65 + 16);
        v60 = *(v65 + 24);
        v62 = v61 + 1;
        if (v61 >= v60 >> 1)
        {
          sub_25111B8C4((v60 > 1), v61 + 1, 1);
        }

        ++v33;
        *(v65 + 16) = v62;
        if (v33 == 5)
        {
        }
      }
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  sub_251131538();
  __break(1u);
LABEL_63:
  result = sub_251131538();
  __break(1u);
  return result;
}

uint64_t sub_2510FA3DC()
{
  v1 = v0;
  sub_251131358();
  MEMORY[0x25306BDC0](0xD00000000000002DLL, 0x8000000251135A30);
  v2 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_enableAudioFeedback;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v1 + v2))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x25306BDC0](v3, v4);

  MEMORY[0x25306BDC0](0xD000000000000015, 0x8000000251135A60);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_251130CA8();

  if (v8)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v8)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x25306BDC0](v5, v6);

  return 0;
}

id sub_2510FA5C0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2510FA6FC(double a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E328, qword_251134070);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = sub_2511309E8();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 1, 1, v12);
  v14 = type metadata accessor for HGMLConfiguration(0);
  v15 = objc_allocWithZone(v14);
  v16 = OBJC_IVAR___HGMLConfigurationInternal_testModelURL;
  v13(&v15[OBJC_IVAR___HGMLConfigurationInternal_testModelURL], 1, 1, v12);
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_windowSize] = 30;
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_stride] = 5;
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_modelType] = a4;
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_minGateOpenConfScoreThresholdNod] = a1;
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_minGestureConfScoreThresholdNod] = a1;
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_numWindowsInPoolNod] = 8;
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_maxNumBackgroundPredictionsNod] = 4;
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_numConsecutivePredictionsNod] = 3;
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_minTimeBetweenPoolsNod] = 0x3FD0000000000000;
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_minGateOpenConfScoreThresholdShake] = a2;
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_minGestureConfScoreThresholdShake] = a2;
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_numWindowsInPoolShake] = 8;
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_maxNumBackgroundPredictionsShake] = 4;
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_numConsecutivePredictionsShake] = 3;
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_minTimeBetweenPoolsShake] = 0x3FD0000000000000;
  swift_beginAccess();
  sub_2510FC478(v11, &v15[v16]);
  swift_endAccess();
  v20.receiver = v15;
  v20.super_class = v14;
  v17 = objc_msgSendSuper2(&v20, sel_init);
  result = sub_2510FC410(v11);
  *a5 = v17;
  return result;
}

id sub_2510FA9C0(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

id sub_2510FAA44(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

uint64_t sub_2510FAB80(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2510FABF4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_2510FAC50(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_2510FAC50(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2510FAD1C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2510FC4E8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2510FAD1C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2510FAE28(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_251131398();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2510FAE28(uint64_t a1, unint64_t a2)
{
  v3 = sub_2510FAE74(a1, a2);
  sub_2510FAFA4(&unk_286331168);
  return v3;
}

void *sub_2510FAE74(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2510FB090(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_251131398();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_251130FC8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2510FB090(v10, 0);
        result = sub_251131338();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2510FAFA4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2510FB104(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2510FB090(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E330, &qword_251133040);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2510FB104(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E330, &qword_251133040);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_2510FB1F8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

_OWORD *sub_2510FB208(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_25112EB00(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_251127E54();
      v8 = v16;
      goto LABEL_8;
    }

    sub_2511267D8(v13, a3 & 1);
    v8 = sub_25112EB00(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_251131538();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return sub_2510FC400(a1, v19);
  }

  else
  {
    sub_2510FB5C8(v8, a2, a1, v18);

    return a2;
  }
}

unint64_t sub_2510FB348(char a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), void (*a5)(void), void (*a6)(uint64_t, void), unint64_t a7)
{
  v11 = v7;
  v15 = *v7;
  result = a4(a2);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v22 = v17;
  v23 = *(v15 + 24);
  if (v23 >= v21 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v23 >= v21 && (a3 & 1) == 0)
  {
    v24 = result;
    a5();
    result = v24;
    goto LABEL_8;
  }

  a6(v21, a3 & 1);
  result = a4(a2);
  if ((v22 & 1) == (v25 & 1))
  {
LABEL_8:
    v26 = *v11;
    if (v22)
    {
      *(v26[7] + result) = a1 & 1;
      return result;
    }

    v26[(result >> 6) + 8] |= 1 << result;
    *(v26[6] + result) = a2;
    *(v26[7] + result) = a1 & 1;
    v27 = v26[2];
    v20 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v20)
    {
      v26[2] = v28;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_251131538();
  __break(1u);
  return result;
}

unint64_t sub_2510FB4A0(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v6 = a1;
  v8 = *v3;
  result = sub_25112F9FC();
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_251128424();
    result = v17;
    goto LABEL_8;
  }

  sub_2511276A8(v14, a2 & 1);
  result = sub_25112F9FC();
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a3;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = v6;
    *(v19[7] + 8 * result) = a3;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_251131538();
  __break(1u);
  return result;
}

_OWORD *sub_2510FB5C8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_2510FC400(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_2510FB630(unint64_t result, char a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

id keypath_get_7Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

void sub_2510FB78C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HGConfigurationInternal_enableRawDataLogging;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_2510F7DE4();
}

uint64_t keypath_get_11Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_12Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_2510FB8C0@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioSessionID;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2510FB918(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioSessionID;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void sub_2510FBCF0(uint64_t a1)
{
  sub_2510FC1BC();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2510FC1BC()
{
  if (!qword_27F41DFF0)
  {
    v0 = sub_251130CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F41DFF0);
    }
  }
}

void sub_2510FC214(uint64_t a1)
{
  sub_2510FC2E4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2510FC2E4(uint64_t a1)
{
  if (!qword_27F41E318)
  {
    sub_2511309E8();
    v1 = sub_251131278();
    if (!v2)
    {
      atomic_store(v1, &qword_27F41E318);
    }
  }
}

unint64_t sub_2510FC350()
{
  result = qword_27F41E320;
  if (!qword_27F41E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E320);
  }

  return result;
}

unint64_t sub_2510FC3A4(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

_OWORD *sub_2510FC400(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2510FC410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E328, qword_251134070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2510FC478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E328, qword_251134070);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2510FC4E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_2510FC554()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E338, "܈");
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v30 = v27 - v3;
  v28 = sub_2511311D8();
  v4 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2511311A8();
  MEMORY[0x28223BE20](v7);
  v8 = sub_251130E38();
  MEMORY[0x28223BE20](v8 - 8);
  v0[2] = MEMORY[0x277D84FA0];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E340, &unk_2511330D0);
  swift_allocObject();
  v0[3] = sub_251130C38();
  v9 = sub_2510FE944(0, &qword_27F41E0F0, 0x277D85C78);
  v0[5] = 0;
  v0[6] = 0;
  v27[0] = &OBJC_IVAR____TtC12HeadGestures23HGConfirmationRegulator_kConfirmationArrivalDiff;
  v27[1] = v9;
  v0[4] = 0;
  sub_251130E28();
  v33 = MEMORY[0x277D84F90];
  sub_2510FF820(&qword_27F41E0F8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E100, &qword_251132AB0);
  sub_2510F6658(&qword_27F41E108, &qword_27F41E100, &qword_251132AB0, MEMORY[0x277D83970]);
  sub_2511312A8();
  (*(v4 + 104))(v6, *MEMORY[0x277D85260], v28);
  v0[7] = sub_251131208();
  if (qword_27F41DFA8 != -1)
  {
    swift_once();
  }

  v10 = qword_27F421A30;
  v11 = *(qword_27F421A30 + 16);
  v12 = sub_251130EE8();
  [v11 doubleForKey_];
  v14 = v13;

  v1[8] = v14;
  v15 = *(v10 + 16);
  v16 = sub_251130EE8();
  [v15 doubleForKey_];
  v18 = v17;

  v1[9] = v18;
  v19 = *(v10 + 16);
  v20 = sub_251130EE8();
  [v19 doubleForKey_];
  v22 = v21;

  v1[10] = v22;
  v33 = v1[3];
  swift_allocObject();
  swift_weakInit();
  sub_2510FE944(0, &qword_27F41E348, off_2796ABC58);
  sub_2510F6658(&qword_27F41E350, &qword_27F41E340, &unk_2511330D0, MEMORY[0x277CBCE20]);

  v23 = v30;
  sub_251130CE8();

  sub_2510F6658(&qword_27F41E358, &qword_27F41E338, "܈", MEMORY[0x277CBCB10]);
  v24 = v32;
  v25 = sub_251130CD8();
  (*(v31 + 8))(v23, v24);
  v1[4] = v25;

  return v1;
}

char *sub_2510FCACC@<X0>(void **a1@<X0>, void *a3@<X8>)
{
  v5 = sub_251130B38();
  v48 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251130B88();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v15 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_4;
  }

  v17 = result;
  v46 = v7;
  v47 = v5;
  v49 = a3;
  swift_beginAccess();
  v18 = *(v17 + 2);

  v19 = [v15 uuid];
  sub_251130B68();

  LOBYTE(v19) = sub_2511033FC(v14, v18);

  v20 = *(v9 + 8);
  v20(v14, v8);
  if (v19)
  {

    a3 = v49;
LABEL_4:
    *a3 = 0;
    return result;
  }

  v21 = [v15 uuid];
  sub_251130B68();

  swift_beginAccess();
  sub_2510FE98C(v14, v12);
  v20(v14, v8);
  swift_endAccess();
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v22 = sub_251130BE8();
  __swift_project_value_buffer(v22, qword_27F421A38);
  v50 = v15;
  v23 = sub_251130BC8();
  v24 = sub_251131178();

  if (os_log_type_enabled(v23, v24))
  {
    v45 = v24;
    v25 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v51[0] = v44;
    *v25 = 136315650;
    v26 = [v50 headGesture];
    if (v26)
    {
      v27 = 0xE700000000000000;
      v28 = 0x6E776F6E6B6E55;
      if (v26 == 1)
      {
        v28 = 6582094;
        v27 = 0xE300000000000000;
      }

      v29 = v26 == 2;
      if (v26 == 2)
      {
        v30 = 0x656B616853;
      }

      else
      {
        v30 = v28;
      }

      if (v29)
      {
        v31 = 0xE500000000000000;
      }

      else
      {
        v31 = v27;
      }
    }

    else
    {
      v31 = 0xEA0000000000646ELL;
      v30 = 0x756F72476B636142;
    }

    v32 = sub_2510FAC50(v30, v31, v51);

    *(v25 + 4) = v32;
    *(v25 + 12) = 2080;
    v33 = [v50 uuid];
    sub_251130B68();

    sub_2510FF820(&qword_27F41E360, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v34 = sub_251131508();
    v36 = v35;
    v20(v14, v8);
    v37 = sub_2510FAC50(v34, v36, v51);

    *(v25 + 14) = v37;
    *(v25 + 22) = 2048;
    v38 = [v50 timestamp];
    v39 = v46;
    sub_251130AF8();

    sub_251130AE8();
    v41 = v40;
    (*(v48 + 8))(v39, v47);
    *(v25 + 24) = v41;
    _os_log_impl(&dword_2510F2000, v23, v45, "[CR] Fired %s %s %f", v25, 0x20u);
    v42 = v44;
    swift_arrayDestroy();
    MEMORY[0x25306CC10](v42, -1, -1);
    MEMORY[0x25306CC10](v25, -1, -1);
  }

  v43 = v50;
  *v49 = v50;

  return v43;
}

uint64_t sub_2510FD048(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E380, &qword_2511330E8);
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E388, &qword_2511330F0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  v19 = a1;
  v20 = a2;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E390, &qword_2511330F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E398, &qword_251133100);
  sub_2510F6658(&qword_27F41E3A0, &qword_27F41E390, &qword_2511330F8, MEMORY[0x277CBCD90]);
  sub_251130D18();

  sub_2510F6658(&qword_27F41E3A8, &qword_27F41E388, &qword_2511330F0, MEMORY[0x277CBCC08]);
  v13 = sub_251130CD8();
  (*(v10 + 8))(v12, v9);
  *(v3 + 40) = v13;

  if (*(v3 + 32))
  {
    v20 = *(v3 + 32);
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();

    sub_251130CF8();

    sub_2510F6658(&qword_27F41E3B0, &qword_27F41E380, &qword_2511330E8, MEMORY[0x277CBCB60]);
    v15 = v18;
    v16 = sub_251130CD8();
    (*(v17 + 8))(v8, v15);
    *(v3 + 32) = v16;

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2510FD434@<X0>(void **a1@<X0>, id *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v89 = a3;
  v90 = a4;
  v6 = sub_251130B38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v87 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v80 - v10;
  v12 = sub_251130B88();
  v85 = *(v12 - 8);
  v86 = v12;
  MEMORY[0x28223BE20](v12);
  v84 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *a2;
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v16 = sub_251130BE8();
  v17 = __swift_project_value_buffer(v16, qword_27F421A38);
  v18 = v14;
  v83 = v17;
  v19 = v18;
  v20 = sub_251130BC8();
  v21 = sub_251131178();

  v22 = os_log_type_enabled(v20, v21);
  v91 = v19;
  v88 = v6;
  if (v22)
  {
    v92 = v15;
    v23 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v93[0] = v81;
    *v23 = 136315650;
    v24 = [v19 headGesture];
    v82 = v7;
    if (v24)
    {
      v25 = 0xE700000000000000;
      v26 = 0x6E776F6E6B6E55;
      if (v24 == 1)
      {
        v26 = 6582094;
        v25 = 0xE300000000000000;
      }

      v27 = v24 == 2;
      if (v24 == 2)
      {
        v28 = 0x656B616853;
      }

      else
      {
        v28 = v26;
      }

      if (v27)
      {
        v29 = 0xE500000000000000;
      }

      else
      {
        v29 = v25;
      }
    }

    else
    {
      v28 = 0x756F72476B636142;
      v29 = 0xEA0000000000646ELL;
    }

    v30 = sub_2510FAC50(v28, v29, v93);

    *(v23 + 4) = v30;
    *(v23 + 12) = 2080;
    v31 = v91;
    v32 = [v91 uuid];
    v33 = v84;
    sub_251130B68();

    sub_2510FF820(&qword_27F41E360, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v34 = v86;
    v35 = sub_251131508();
    v37 = v36;
    (*(v85 + 8))(v33, v34);
    v38 = sub_2510FAC50(v35, v37, v93);

    *(v23 + 14) = v38;
    *(v23 + 22) = 2048;
    v39 = [v31 timestamp];
    sub_251130AF8();

    sub_251130AE8();
    v41 = v40;
    v7 = v82;
    v6 = v88;
    (*(v82 + 8))(v11, v88);
    *(v23 + 24) = v41;
    _os_log_impl(&dword_2510F2000, v20, v21, "[CR HR]:%s %s %f", v23, 0x20u);
    v42 = v81;
    swift_arrayDestroy();
    MEMORY[0x25306CC10](v42, -1, -1);
    MEMORY[0x25306CC10](v23, -1, -1);

    v15 = v92;
  }

  else
  {
  }

  v92 = v15;
  v43 = sub_251130BC8();
  v44 = sub_251131178();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v93[0] = v46;
    *v45 = 136315650;
    v47 = [v92 headGesture];
    if (v47)
    {
      v48 = 0xE700000000000000;
      v49 = 0x6E776F6E6B6E55;
      if (v47 == 1)
      {
        v49 = 6582094;
        v48 = 0xE300000000000000;
      }

      v50 = v47 == 2;
      if (v47 == 2)
      {
        v51 = 0x656B616853;
      }

      else
      {
        v51 = v49;
      }

      if (v50)
      {
        v52 = 0xE500000000000000;
      }

      else
      {
        v52 = v48;
      }
    }

    else
    {
      v52 = 0xEA0000000000646ELL;
      v51 = 0x756F72476B636142;
    }

    v54 = sub_2510FAC50(v51, v52, v93);

    *(v45 + 4) = v54;
    *(v45 + 12) = 2080;
    v55 = [v92 uuid];
    v56 = v84;
    sub_251130B68();

    sub_2510FF820(&qword_27F41E360, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v57 = v86;
    v58 = sub_251131508();
    v60 = v59;
    (*(v85 + 8))(v56, v57);
    v61 = sub_2510FAC50(v58, v60, v93);

    *(v45 + 14) = v61;
    *(v45 + 22) = 2048;
    v53 = &off_2796AC000;
    v62 = [v92 timestamp];
    sub_251130AF8();

    sub_251130AE8();
    v64 = v63;
    v6 = v88;
    (*(v7 + 8))(v11, v88);
    *(v45 + 24) = v64;
    _os_log_impl(&dword_2510F2000, v43, v44, "[CR MR]:%s %s %f", v45, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25306CC10](v46, -1, -1);
    MEMORY[0x25306CC10](v45, -1, -1);
  }

  else
  {

    v53 = &off_2796AC000;
  }

  v65 = [v92 v53[127]];
  sub_251130AF8();

  sub_251130AE8();
  v67 = v66;
  v68 = *(v7 + 8);
  v68(v11, v6);
  v69 = [v91 v53[127]];
  v70 = v87;
  sub_251130AF8();

  sub_251130AE8();
  v72 = v71;
  v68(v70, v6);
  v73 = vabdd_f64(v67, v72);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v75 = *(Strong + 80);

    if (v73 < v75)
    {
LABEL_31:
      v76 = 1;
      goto LABEL_34;
    }
  }

  else if (v73 < 0.8)
  {
    goto LABEL_31;
  }

  v76 = 0;
LABEL_34:
  v77 = v92;
  v78 = v90;
  *v90 = v92;
  *(v78 + 8) = v76;

  return v77;
}

uint64_t sub_2510FDC14(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 40))
    {
      v3 = result;
      swift_retain_n();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E3B8, &qword_251133108);
      sub_2510F6658(&qword_27F41E3C0, &qword_27F41E3B8, &qword_251133108, MEMORY[0x277CBCD90]);
      v4 = sub_251130D48();

      result = v3;
    }

    else
    {
      v4 = 0;
    }

    *(result + 48) = v4;
  }

  return result;
}

uint64_t sub_2510FDD4C(char *a1, uint64_t a2)
{

  sub_251130C18();
}

uint64_t sub_2510FDD94(uint64_t a1, uint64_t a2)
{
  v4 = sub_251130E18();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v68 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_251130E38();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_251130E58();
  v67 = *(v69 - 8);
  v10 = MEMORY[0x28223BE20](v69);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v65 = &v59 - v13;
  v14 = sub_251130B88();
  v15 = *(v14 - 8);
  result = MEMORY[0x28223BE20](v14);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  if (*a1)
  {
    v63 = v5;
    v64 = v4;
    v20 = *(a1 + 8);
    v21 = qword_27F41DFB0;
    v22 = v19;
    v61 = v8;
    v62 = v7;
    if (v20 == 1)
    {
      if (v21 != -1)
      {
        swift_once();
      }

      v23 = sub_251130BE8();
      __swift_project_value_buffer(v23, qword_27F421A38);
      v24 = v22;

      v25 = sub_251130BC8();
      v26 = sub_251131178();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        aBlock = v60;
        *v27 = 136315394;
        v28 = [v24 uuid];
        LODWORD(v59) = v26;
        v29 = v28;
        sub_251130B68();

        sub_2510FF820(&qword_27F41E360, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v30 = sub_251131508();
        v31 = v24;
        v33 = v32;
        (*(v15 + 8))(v18, v14);
        v34 = sub_2510FAC50(v30, v33, &aBlock);
        v24 = v31;

        *(v27 + 4) = v34;
        *(v27 + 12) = 2048;
        *(v27 + 14) = *(a2 + 72);
        _os_log_impl(&dword_2510F2000, v25, v59, "[CR] Immediately firing %s after %fs", v27, 0x16u);
        v35 = v60;
        __swift_destroy_boxed_opaque_existential_0(v60);
        MEMORY[0x25306CC10](v35, -1, -1);
        MEMORY[0x25306CC10](v27, -1, -1);
      }

      v60 = *(a2 + 56);
      sub_251130E48();
      v36 = v65;
      sub_251130E68();
      v67 = *(v67 + 8);
      (v67)(v12, v69);
      v37 = swift_allocObject();
      swift_weakInit();
      v38 = swift_allocObject();
      *(v38 + 16) = v24;
      *(v38 + 24) = v37;
      v75 = sub_2510FF8B0;
      v76 = v38;
      aBlock = MEMORY[0x277D85DD0];
      v72 = 1107296256;
      v39 = &block_descriptor_33;
    }

    else
    {
      if (v21 != -1)
      {
        swift_once();
      }

      v40 = sub_251130BE8();
      __swift_project_value_buffer(v40, qword_27F421A38);
      v24 = v22;

      v41 = sub_251130BC8();
      v42 = sub_251131178();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        aBlock = v60;
        *v43 = 136315394;
        v44 = [v24 uuid];
        LODWORD(v59) = v42;
        v45 = v44;
        sub_251130B68();

        sub_2510FF820(&qword_27F41E360, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v46 = sub_251131508();
        v47 = v24;
        v49 = v48;
        (*(v15 + 8))(v18, v14);
        v50 = sub_2510FAC50(v46, v49, &aBlock);
        v24 = v47;

        *(v43 + 4) = v50;
        *(v43 + 12) = 2048;
        *(v43 + 14) = *(a2 + 64);
        _os_log_impl(&dword_2510F2000, v41, v59, "[CR] Postpone firing %s after %fs", v43, 0x16u);
        v51 = v60;
        __swift_destroy_boxed_opaque_existential_0(v60);
        MEMORY[0x25306CC10](v51, -1, -1);
        MEMORY[0x25306CC10](v43, -1, -1);
      }

      v60 = *(a2 + 56);
      sub_251130E48();
      v36 = v65;
      sub_251130E68();
      v67 = *(v67 + 8);
      (v67)(v12, v69);
      v52 = swift_allocObject();
      swift_weakInit();
      v53 = swift_allocObject();
      *(v53 + 16) = v24;
      *(v53 + 24) = v52;
      v75 = sub_2510FF7EC;
      v76 = v53;
      aBlock = MEMORY[0x277D85DD0];
      v72 = 1107296256;
      v39 = &block_descriptor_0;
    }

    v73 = sub_2511147B8;
    v74 = v39;
    v54 = _Block_copy(&aBlock);
    v59 = v24;

    v55 = v66;
    sub_251130E28();
    v70 = MEMORY[0x277D84F90];
    sub_2510FF820(&qword_27F41E080, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E088, &qword_251132A30);
    sub_2510F6658(&qword_27F41E090, &qword_27F41E088, &qword_251132A30, MEMORY[0x277D83970]);
    v56 = v68;
    v57 = v64;
    sub_2511312A8();
    v58 = v60;
    MEMORY[0x25306BFD0](v36, v55, v56, v54);
    _Block_release(v54);

    (*(v63 + 8))(v56, v57);
    (*(v61 + 8))(v55, v62);
    (v67)(v36, v69);
  }

  return result;
}

uint64_t sub_2510FE6D0(void *a1, uint64_t a2)
{
  v3 = sub_251130B38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251130B08();
  v7 = sub_251130AA8();
  (*(v4 + 8))(v6, v3);
  [a1 setTimestamp_];

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v9 = a1;
    sub_251130C28();
  }

  return result;
}

uint64_t sub_2510FE810(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 48))
    {

      sub_251130C08();
    }
  }

  return result;
}

uint64_t sub_2510FE880()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2510FE904()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2510FE944(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2510FE98C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_251130B88();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2510FF820(&qword_27F41E368, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_251130EA8();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_2510FF820(&qword_27F41E370, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_251130ED8();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_2510FEFC8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2510FEC6C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_251130B88();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E378, &qword_2511330E0);
  result = sub_251131318();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_2510FF820(&qword_27F41E368, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_251130EA8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_2510FEFC8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_251130B88();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2510FEC6C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2510FF26C();
      goto LABEL_12;
    }

    sub_2510FF4A4(v10 + 1);
  }

  v12 = *v3;
  sub_2510FF820(&qword_27F41E368, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v13 = sub_251130EA8();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_2510FF820(&qword_27F41E370, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_251130ED8();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_251131528();
  __break(1u);
  return result;
}

void *sub_2510FF26C()
{
  v1 = v0;
  v2 = sub_251130B88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E378, &qword_2511330E0);
  v6 = *v0;
  v7 = sub_251131308();
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

uint64_t sub_2510FF4A4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_251130B88();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E378, &qword_2511330E0);
  v7 = sub_251131318();
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
      sub_2510FF820(&qword_27F41E368, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_251130EA8();
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

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2510FF820(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_25Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2510FF8B8(uint64_t a1)
{
  v2 = v1;
  v19 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E098, &qword_251132A38);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E4A0, &qword_251133278);
  v18 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_caManager);
  type metadata accessor for HGCoreAnalyticsManager.HGCAStartEvent(0);
  swift_allocObject();
  sub_251130B08();
  swift_beginAccess();

  MEMORY[0x25306BE60](v11);
  if (*((*(v10 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v10 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v17 = v1;
    sub_251131078();
    v2 = v17;
  }

  sub_251131098();
  swift_endAccess();

  sub_251100ADC(v19);
  if (*(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_audioPlayer))
  {
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E078, &unk_251132EC0);
    sub_251130C78();
    swift_endAccess();
    sub_2510F6658(&qword_27F41E0C8, &qword_27F41E098, &qword_251132A38, MEMORY[0x277CBCEC8]);
    sub_251130DF8();
    (*(v4 + 8))(v6, v3);
    sub_2510F6658(&qword_27F41E4A8, &qword_27F41E4A0, &qword_251133278, MEMORY[0x277CBCBE0]);
    v12 = sub_251130CD8();
    (*(v18 + 8))(v9, v7);
    v13 = sub_2510F4EB8(v12);

    v20 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E0B8, &qword_251132A58);
    v17 = v2;
    sub_2510F6658(&qword_27F41E0C0, &qword_27F41E0B8, &qword_251132A58, MEMORY[0x277CBCD90]);
    v2 = v17;
    v14 = sub_251130E08();
  }

  else
  {
    v14 = 0;
  }

  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_waitingToneTask) = v14;

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E078, &unk_251132EC0);
  sub_251130C78();
  swift_endAccess();
  sub_2510F6658(&qword_27F41E0C8, &qword_27F41E098, &qword_251132A38, MEMORY[0x277CBCEC8]);
  sub_251130DF8();
  (*(v4 + 8))(v6, v3);
  *(swift_allocObject() + 16) = v19;
  sub_2510F6658(&qword_27F41E4A8, &qword_27F41E4A0, &qword_251133278, MEMORY[0x277CBCBE0]);
  swift_unknownObjectRetain();
  v15 = sub_251130E08();

  (*(v18 + 8))(v9, v7);
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_motionStatusTask) = v15;
}

void sub_2510FFE54(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v69 = a1;
  v70 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E4B0, &unk_251133520);
  MEMORY[0x28223BE20](v4 - 8);
  v62 = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E4B8, &qword_251133280);
  MEMORY[0x28223BE20](v6 - 8);
  v56 = &v52 - v7;
  v8 = sub_251131268();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E4C0, &qword_251133288);
  v59 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E4C8, &qword_251133290);
  v63 = *(v14 - 8);
  v64 = v14;
  MEMORY[0x28223BE20](v14);
  v61 = &v52 - v15;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E098, &qword_251132A38);
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v17 = &v52 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E4D0, &qword_251133298);
  v66 = *(v18 - 8);
  v67 = v18;
  MEMORY[0x28223BE20](v18);
  v65 = &v52 - v19;
  v20 = *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_caManager);
  type metadata accessor for HGCoreAnalyticsManager.HGCAStopEvent(0);
  swift_allocObject();
  sub_251130B08();
  swift_beginAccess();

  MEMORY[0x25306BE60](v21);
  if (*((*(v20 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v20 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_251131078();
  }

  sub_251131098();
  swift_endAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E4D8, &unk_2511332A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251133110;
  v23 = *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_headGesturesTask);
  *(inited + 32) = v23;
  v24 = *(v3 + OBJC_IVAR____TtC12HeadGestures9HGSession_motionStatusTask);
  *(inited + 40) = v24;
  v68 = v3;
  v25 = *(v3 + OBJC_IVAR____TtC12HeadGestures9HGSession_waitingToneTask);
  *(inited + 48) = v25;
  if (v23)
  {

    swift_retain_n();

    sub_251130C08();

    if (!v24)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v24)
  {
LABEL_5:

    sub_251130C08();
  }

LABEL_6:

  if (v25)
  {
    sub_251130C08();
  }

  sub_251125540();
  v26 = v69;
  v27 = v70;
  if (v69)
  {
    v28 = *(v68 + OBJC_IVAR____TtC12HeadGestures9HGSession_audioPlayer);
    if (v28)
    {
      sub_25110300C(v69, v70);
      v29 = qword_27F41DFB0;

      if (v29 != -1)
      {
        swift_once();
      }

      v30 = sub_251130BE8();
      __swift_project_value_buffer(v30, qword_27F421A38);
      v31 = sub_251130BC8();
      v32 = sub_251131198();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_2510F2000, v31, v32, "[Session] Start waiting for FTS signal, will force release FTS after 2s.", v33, 2u);
        MEMORY[0x25306CC10](v33, -1, -1);
      }

      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E078, &unk_251132EC0);
      v55 = v17;
      sub_251130C78();
      swift_endAccess();
      LOBYTE(v71) = 1;
      sub_251130C58();
      v34 = v11;
      sub_251131258();
      v35 = *(v9 + 56);
      v36 = v56;
      v53 = v8;
      v35(v56, 1, 1, v8);
      v37 = [objc_opt_self() mainRunLoop];
      v71 = v37;
      v38 = sub_251131248();
      v39 = v62;
      (*(*(v38 - 8) + 56))(v62, 1, 1, v38);
      sub_2510FE944(0, &qword_27F41E4E0, 0x277CBEB88);
      sub_2510F6658(&qword_27F41E4E8, &qword_27F41E4C0, &qword_251133288, MEMORY[0x277CBCE80]);
      sub_25110301C();
      v54 = v28;
      v40 = v61;
      v41 = v57;
      sub_251130D58();
      sub_251103084(v39, &qword_27F41E4B0, &unk_251133520);

      sub_251103084(v36, &qword_27F41E4B8, &qword_251133280);
      (*(v9 + 8))(v34, v53);
      (*(v59 + 8))(v13, v41);
      sub_2510F6658(&qword_27F41E0C8, &qword_27F41E098, &qword_251132A38, MEMORY[0x277CBCEC8]);
      sub_2510F6658(&qword_27F41E4F8, &qword_27F41E4C8, &qword_251133290, MEMORY[0x277CBCC48]);
      v42 = v64;
      v43 = v65;
      v44 = v60;
      v45 = v55;
      sub_251130D68();
      (*(v63 + 8))(v40, v42);
      (*(v58 + 8))(v45, v44);
      v46 = swift_allocObject();
      v48 = v69;
      v47 = v70;
      *(v46 + 16) = v69;
      *(v46 + 24) = v47;
      sub_25110300C(v48, v47);
      sub_2510F6658(&qword_27F41E500, &qword_27F41E4D0, &qword_251133298, MEMORY[0x277CBCC60]);
      v49 = v67;
      v50 = sub_251130E08();

      sub_251102FFC(v48, v47);
      (*(v66 + 8))(v43, v49);
      *(v68 + OBJC_IVAR____TtC12HeadGestures9HGSession_cleanupTask) = v50;
    }

    else
    {

      v26(v51);
      sub_251102FFC(v26, v27);
    }
  }
}

void sub_251100848(unsigned __int8 *a1, void (*a2)(void))
{
  v3 = *a1;
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v4 = sub_251130BE8();
  __swift_project_value_buffer(v4, qword_27F421A38);
  v5 = sub_251130BC8();
  v6 = sub_251131178();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3;
    _os_log_impl(&dword_2510F2000, v5, v6, "[Session] Current FTS signal: %{BOOL}d", v7, 8u);
    MEMORY[0x25306CC10](v7, -1, -1);
  }

  if (v3)
  {
    v8 = sub_251130BC8();
    v9 = sub_251131198();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2510F2000, v8, v9, "[Session] audio finished playing, free to execute completion", v10, 2u);
      MEMORY[0x25306CC10](v10, -1, -1);
    }

    a2();
  }
}

uint64_t sub_2511009C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC12HeadGestures9HGSession_caManager);
  type metadata accessor for HGCoreAnalyticsManager.HGCAPipelineResetEventEvent(0);
  swift_allocObject();
  sub_251130B08();
  swift_beginAccess();

  MEMORY[0x25306BE60](v2);
  if (*((*(v1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_251131078();
  }

  sub_251131098();
  swift_endAccess();

  if (*(v0 + OBJC_IVAR____TtC12HeadGestures9HGSession_headGesturesTask))
  {

    sub_251130C08();
  }

  return sub_2511015F0();
}

uint64_t sub_251100ADC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E488, &unk_251133260);
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  if (*(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_resultPublisher))
  {
    v12[1] = *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_resultPublisher);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E390, &qword_2511330F8);
    sub_2510F6658(&qword_27F41E3A0, &qword_27F41E390, &qword_2511330F8, MEMORY[0x277CBCD90]);
    sub_251130D28();

    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = a1;
    *(swift_allocObject() + 16) = a1;
    sub_2510F6658(&qword_27F41E490, &qword_27F41E488, &unk_251133260, MEMORY[0x277CBCBE0]);
    swift_unknownObjectRetain_n();
    v11 = sub_251130D48();

    (*(v5 + 8))(v8, v4);
    *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_headGesturesTask) = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_251100D60(void **a1, id *a2)
{
  v4 = sub_251130B88();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = *a1;
  v12 = [*a2 uuid];
  sub_251130B68();

  v13 = [v11 uuid];
  sub_251130B68();

  LOBYTE(v13) = sub_251130B58();
  v14 = *(v5 + 8);
  v14(v8, v4);
  v14(v10, v4);
  return v13 & 1;
}

void sub_251100EC8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (v3 == 3)
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v4 = sub_251130BE8();
    __swift_project_value_buffer(v4, qword_27F421A38);
    oslog = sub_251130BC8();
    v5 = sub_251131198();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2510F2000, oslog, v5, "Pipeline finsihed", v6, 2u);
      MEMORY[0x25306CC10](v6, -1, -1);
    }
  }

  else
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v8 = sub_251130BE8();
    __swift_project_value_buffer(v8, qword_27F421A38);
    v9 = sub_251130BC8();
    v10 = sub_251131188();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      sub_2510F72AC();
      swift_allocError();
      *v13 = v3;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_2510F2000, v9, v10, "Pipeline encountered an error %@", v11, 0xCu);
      sub_251103084(v12, &qword_27F41E498, &qword_251133270);
      MEMORY[0x25306CC10](v12, -1, -1);
      MEMORY[0x25306CC10](v11, -1, -1);
    }

    if (v3 == 1)
    {
      v15 = sub_251130BC8();
      v16 = sub_251131198();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_2510F2000, v15, v16, "Pipeline reseting", v17, 2u);
        MEMORY[0x25306CC10](v17, -1, -1);
      }

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_2511009C4();
      }

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_251100ADC(a3);
      }
    }
  }
}

void sub_2511011E8(id *a1, void *a2)
{
  v3 = *a1;
  if ([*a1 headGesture] || !objc_msgSend(v3, sel_headGesturePart))
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v4 = sub_251130BE8();
    __swift_project_value_buffer(v4, qword_27F421A38);
    v5 = v3;
    v6 = sub_251130BC8();
    v7 = sub_251131198();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23[0] = v9;
      *v8 = 136315138;
      v10 = HGHeadGestureResult.description()();
      v11 = sub_2510FAC50(v10._countAndFlagsBits, v10._object, v23);

      *(v8 + 4) = v11;
      _os_log_impl(&dword_2510F2000, v6, v7, "[Gesture Result]: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x25306CC10](v9, -1, -1);
      MEMORY[0x25306CC10](v8, -1, -1);
    }

    if (qword_27F41DFA0 != -1)
    {
      swift_once();
    }

    v12 = qword_27F421A00;
    v13 = [v5 headGesture];
    type metadata accessor for HGCoreAnalyticsManager.HGCAGestureDetectionEvent(0);
    *(swift_allocObject() + OBJC_IVAR____TtCC12HeadGestures22HGCoreAnalyticsManager25HGCAGestureDetectionEvent_detectedGesture) = v13;
    sub_251130B08();
    swift_beginAccess();

    MEMORY[0x25306BE60](v14);
    if (*((*(v12 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v12 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_251131078();
    }

    sub_251131098();
    swift_endAccess();

    if (a2)
    {
      [a2 didDetectedWithHeadGesture_];
    }
  }

  else
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v15 = sub_251130BE8();
    __swift_project_value_buffer(v15, qword_27F421A38);
    v16 = v3;
    v17 = sub_251130BC8();
    v18 = sub_251131198();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23[0] = v20;
      *v19 = 136315138;
      v21 = HGHeadGestureResult.description()();
      v22 = sub_2510FAC50(v21._countAndFlagsBits, v21._object, v23);

      *(v19 + 4) = v22;
      _os_log_impl(&dword_2510F2000, v17, v18, "[Part Result]: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x25306CC10](v20, -1, -1);
      MEMORY[0x25306CC10](v19, -1, -1);
    }

    if (a2)
    {

      [a2 didDetectedWithHeadGesture_];
    }
  }
}

uint64_t sub_2511015F0()
{
  v1 = v0;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E3D8, &qword_251133208);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v89 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E3E0, &qword_251133210);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v96 = &v89 - v5;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E3E8, &qword_251133218);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v89 - v6;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E3F0, &qword_251133220);
  v120 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v107 = &v89 - v7;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E3F8, &qword_251133228);
  v121 = *(v109 - 8);
  v8 = MEMORY[0x28223BE20](v109);
  v92 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v99 = &v89 - v10;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E400, &qword_251133230);
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v114 = &v89 - v11;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E408, &qword_251133238);
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v115 = &v89 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E410, &qword_251133240);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v113 = &v89 - v15;
  v16 = OBJC_IVAR____TtC12HeadGestures9HGSession_config;
  type metadata accessor for HGBuffer();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D84F90];
  *(v17 + 32) = MEMORY[0x277D84F90];
  *(v17 + 40) = v18;
  *(v17 + 48) = v18;
  *(v17 + 56) = v18;
  *(v17 + 64) = v18;
  *(v17 + 72) = v18;
  *(v17 + 16) = xmmword_251133120;
  v19 = OBJC_IVAR____TtC12HeadGestures9HGSession_buffer;
  *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_buffer) = v17;

  type metadata accessor for HGPredictionAggregator(0);
  swift_allocObject();
  v20 = sub_251119B24(&unk_2863312D0, v18);
  v21 = OBJC_IVAR____TtC12HeadGestures9HGSession_aggregator;
  *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_aggregator) = v20;

  v22 = *(v1 + v16);
  type metadata accessor for HGPartGestureRecognizer(0);
  swift_allocObject();
  v23 = v22;
  v24 = sub_25112BE94(v23);
  v122 = v23;

  v98 = OBJC_IVAR____TtC12HeadGestures9HGSession_partGesturesRecognizer;
  *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_partGesturesRecognizer) = v24;

  type metadata accessor for HGMotionStateRecognizer();
  swift_allocObject();
  v25 = sub_25110E600();
  v111 = OBJC_IVAR____TtC12HeadGestures9HGSession_motionStateRecognizer;
  *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_motionStateRecognizer) = v25;

  type metadata accessor for HGDataRegulator();
  v26 = swift_allocObject();
  sub_2510F731C(v127);
  v27 = v127[5];
  v26[5] = v127[4];
  v26[6] = v27;
  v26[7] = *v128;
  *(v26 + 121) = *&v128[9];
  v28 = v127[1];
  v26[1] = v127[0];
  v26[2] = v28;
  v29 = v127[3];
  v26[3] = v127[2];
  v26[4] = v29;
  v30 = OBJC_IVAR____TtC12HeadGestures9HGSession_regulator;
  *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_regulator) = v26;

  type metadata accessor for HGHeuristicHeadGestureRecognizer(0);
  swift_allocObject();
  v31 = sub_251110EA4();
  v100 = OBJC_IVAR____TtC12HeadGestures9HGSession_heuristicRecognizer;
  *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_heuristicRecognizer) = v31;

  v32 = swift_allocObject();
  *(v32 + 16) = 1;
  *(v32 + 24) = sub_251120B48(&unk_286331280);
  *(v32 + 32) = xmmword_251133130;
  *(v32 + 48) = xmmword_251133140;
  *(v32 + 64) = 5;
  sub_251130A88();
  *(v32 + 48) = xmmword_251133150;
  *(v32 + 32) = 0x3FD999999999999ALL;
  v33 = OBJC_IVAR____TtC12HeadGestures9HGSession_sensitivePartGestureRecognizer;
  *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_sensitivePartGestureRecognizer) = v32;

  type metadata accessor for HGConfirmationRegulator();
  swift_allocObject();
  v34 = sub_2510FC554();
  v101 = OBJC_IVAR____TtC12HeadGestures9HGSession_confirmationRegulator;
  *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_confirmationRegulator) = v34;

  if (!*(v1 + v30))
  {
    __break(1u);
    goto LABEL_22;
  }

  if (!*(*(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_motionDataProvider) + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_motionDataPublisher))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v123 = sub_2510F692C(v36);

  v37 = OBJC_IVAR___HGConfigurationInternal_enableRawDataLogging;
  v38 = v122;
  result = swift_beginAccess();
  v39 = v38[v37] == 1;
  v97 = v33;
  if (v39)
  {
    if (!*(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_recorder))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v40 = sub_2511292E0(v123);

    v123 = v40;
  }

  v112 = v14;
  if (!*(v1 + v21))
  {
    goto LABEL_23;
  }

  v90 = v4;
  v91 = v3;
  if (!*(v1 + v19))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v41 = v13;
  v110 = *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_mlRecognizer);
  v126 = v123;
  swift_retain_n();

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E418, &qword_251133248);
  type metadata accessor for HGMLInput();
  v43 = MEMORY[0x277CBCD90];
  v44 = sub_2510F6658(&qword_27F41E420, &qword_27F41E418, &qword_251133248, MEMORY[0x277CBCD90]);
  v45 = v113;
  v106 = v42;
  v105 = v44;
  sub_251130CE8();

  v46 = MEMORY[0x277CBCB10];
  sub_2510F6658(&qword_27F41E428, &qword_27F41E410, &qword_251133240, MEMORY[0x277CBCB10]);
  v47 = sub_251130CD8();

  (*(v112 + 8))(v45, v41);
  v48 = sub_2511187E8(v47);

  v126 = v48;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E430, &qword_251133250);
  v49 = sub_2510FE944(0, &qword_27F41E348, off_2796ABC58);
  sub_2510F6658(&qword_27F41E438, &qword_27F41E430, &qword_251133250, v43);
  v50 = v114;
  v113 = v49;
  sub_251130CE8();

  sub_2510F6658(&qword_27F41E440, &qword_27F41E400, &qword_251133230, v46);
  v51 = v115;
  v52 = v117;
  sub_251130D98();
  (*(v116 + 8))(v50, v52);
  sub_2510F6658(&qword_27F41E448, &qword_27F41E408, &qword_251133238, MEMORY[0x277CBCC90]);
  v53 = v119;
  v54 = sub_251130CD8();

  (*(v118 + 8))(v51, v53);
  v126 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E390, &qword_2511330F8);
  v56 = sub_2510F6658(&qword_27F41E3A0, &qword_27F41E390, &qword_2511330F8, v43);
  v57 = sub_251130CD8();

  v58 = OBJC_IVAR___HGConfigurationInternal_requestPartGestures;
  v59 = v122;
  result = swift_beginAccess();
  if (v59[v58] == 1)
  {
    v60 = *(v1 + v101);
    if (v60)
    {
      if (*(v1 + v100))
      {
        if (*(v1 + v97))
        {
          v118 = v56;
          v119 = v55;
          if (*(v1 + v111))
          {
            v125 = v123;
            swift_retain_n();

            v122 = v60;
            v61 = v107;
            sub_251130CE8();

            v62 = MEMORY[0x277CBCB10];
            v63 = sub_2510F6658(&qword_27F41E458, &qword_27F41E3F0, &qword_251133220, MEMORY[0x277CBCB10]);
            v64 = v108;
            v116 = v63;
            v65 = sub_251130D88();

            v66 = *(v120 + 8);
            v120 += 8;
            v115 = v66;
            (v66)(v61, v64);
            v125 = v65;

            v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E460, &qword_251133258);
            v68 = sub_2510F6658(&qword_27F41E468, &qword_27F41E460, &qword_251133258, MEMORY[0x277CBCC78]);
            v69 = v99;
            v117 = v67;
            v114 = v68;
            sub_251130CE8();

            sub_2510F6658(&qword_27F41E470, &qword_27F41E3F8, &qword_251133228, v62);
            v70 = v109;
            v71 = sub_251130CD8();
            v72 = *(v121 + 8);
            v121 += 8;
            v72(v69, v70);
            v73 = sub_25110FA0C(v71);

            v74 = sub_2510FD048(v57, v73);

            if (*(v1 + v98))
            {
              if (*(v1 + v111))
              {
                v125 = v123;
                swift_retain_n();

                v75 = v107;
                sub_251130CE8();

                v76 = v108;
                v77 = sub_251130D88();

                (v115)(v75, v76);
                v125 = v77;

                v78 = v92;
                sub_251130CE8();

                v79 = v93;
                v80 = v109;
                sub_251130D38();
                v72(v78, v80);
                sub_2510F6658(&qword_27F41E478, &qword_27F41E3E8, &qword_251133218, MEMORY[0x277CBCC08]);
                v81 = v95;
                v82 = sub_251130CD8();
                (*(v94 + 8))(v79, v81);
                v125 = v82;
                v124 = v74;
                v83 = v96;
                sub_251130D78();

                sub_2510F6658(&qword_27F41E480, &qword_27F41E3E0, &qword_251133210, MEMORY[0x277CBCD48]);
                v84 = v91;
                v57 = sub_251130CD8();

                (*(v90 + 8))(v83, v84);
                goto LABEL_17;
              }

LABEL_31:
              __break(1u);
              return result;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_17:
  if (*(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_audioPlayer))
  {
    v125 = v57;

    v85 = v102;
    sub_251130D38();

    sub_2510F6658(&qword_27F41E450, &qword_27F41E3D8, &qword_251133208, MEMORY[0x277CBCC08]);
    v86 = v104;
    v87 = sub_251130CD8();
    (*(v103 + 8))(v85, v86);
    v125 = v87;
    v88 = sub_251130CD8();

    v57 = v88;
  }

  else
  {
  }

  *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_resultPublisher) = v57;
}

id sub_25110292C@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_251117398(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_251102958()
{
  v1 = OBJC_IVAR____TtC12HeadGestures9HGSession_id;
  v2 = sub_251130B88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_251102AE8()
{
  sub_251102958();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HGSession(uint64_t a1)
{
  result = qword_27F41E3C8;
  if (!qword_27F41E3C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251102B94(uint64_t a1)
{
  result = sub_251130B88();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_251102C64@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12HeadGestures9HGSession_id;
  v5 = sub_251130B88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_251102CE0()
{
  v1 = sub_251130B88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v10[0] = 0x3A6E6F6973736553;
  v10[1] = 0xE800000000000000;
  (*(v2 + 16))(v4, v5 + OBJC_IVAR____TtC12HeadGestures9HGSession_id, v1);
  v6 = sub_251130B48();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  MEMORY[0x25306BDC0](v6, v8);

  return v10[0];
}

unint64_t sub_251102E18()
{
  result = qword_27F41E368;
  if (!qword_27F41E368)
  {
    sub_251130B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E368);
  }

  return result;
}

uint64_t sub_251102EC4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_251102F1C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251102F54()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251102F9C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_251102FDC(unsigned __int8 *a1)
{
  result = *(v1 + 16);
  if (result)
  {
    return [result didStartStreamingWithIsStreaming_];
  }

  return result;
}

uint64_t sub_251102FFC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25110300C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_25110301C()
{
  result = qword_27F41E4F0;
  if (!qword_27F41E4F0)
  {
    sub_2510FE944(255, &qword_27F41E4E0, 0x277CBEB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E4F0);
  }

  return result;
}

uint64_t sub_251103084(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2511030E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251103124(void *a1)
{
  v2 = v1;
  sub_251130B78();
  v4 = OBJC_IVAR____TtC12HeadGestures9HGSession_caManager;
  if (qword_27F41DFA0 != -1)
  {
    swift_once();
  }

  *(v2 + v4) = qword_27F421A00;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_aggregator) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_buffer) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_regulator) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_recorder) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_motionStateRecognizer) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_partGesturesRecognizer) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_confirmationRegulator) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_heuristicRecognizer) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_sensitivePartGestureRecognizer) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_resultPublisher) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_headGesturesTask) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_motionStatusTask) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_waitingToneTask) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_cleanupTask) = 0;
  v5 = OBJC_IVAR____TtC12HeadGestures9HGSession_config;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_config) = a1;
  v6 = objc_allocWithZone(type metadata accessor for HGHeadphoneMotionDataProvider(0));

  v7 = a1;
  v8 = [v6 init];
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_motionDataProvider) = v8;
  type metadata accessor for HGMLHeadGesturesClassifier();
  swift_allocObject();
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_mlRecognizer) = sub_2511181B4(v7);
  v9 = *(v2 + v5);
  v10 = OBJC_IVAR___HGConfigurationInternal_audioFeedbackConfig;
  swift_beginAccess();
  v11 = *(v9 + v10);
  v12 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_enableAudioFeedback;
  swift_beginAccess();
  v13 = 0;
  if (v11[v12] == 1)
  {
    v14 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioSessionID;
    swift_beginAccess();
    if (*&v11[v14])
    {
      type metadata accessor for HGCustomizedAudioPlayer(0);
      swift_allocObject();
      v13 = sub_251109F20(v11);
    }

    else
    {
      type metadata accessor for HGSystemAudioPlayer(0);
      swift_allocObject();
      v15 = v11;
      v13 = sub_2511167FC(v15);
    }
  }

  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_audioPlayer) = v13;
  type metadata accessor for HGDataCollector();
  swift_allocObject();
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_recorder) = sub_251128E98();

  sub_2511015F0();
  return v2;
}

uint64_t sub_2511033FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_251130B88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_2511052C0(&qword_27F41E368, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]), v7 = sub_251130EA8(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_2511052C0(&qword_27F41E370, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_251130ED8();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_251103614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_251131598();
  sub_251130F88();
  v6 = sub_2511315B8();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_251131518() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_25110370C()
{
  v1 = [v0 modelDescription];
  v2 = [v1 metadata];

  type metadata accessor for MLModelMetadataKey(0);
  sub_2511052C0(&qword_27F41E158, type metadata accessor for MLModelMetadataKey, &unk_251132CB4);
  v3 = sub_251130E88();

  if (!*(v3 + 16) || (v4 = sub_25112EB84(*MEMORY[0x277CBFE90]), (v5 & 1) == 0))
  {
LABEL_7:

    return 0;
  }

  sub_2510FC4E8(*(v3 + 56) + 32 * v4, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E530, &unk_251133350);
  if (swift_dynamicCast())
  {
    if (*(v10 + 16))
    {
      v6 = sub_25112EA1C(0x64695F746C6F62, 0xE700000000000000);
      if (v7)
      {
        v8 = *(*(v10 + 56) + 16 * v6);

        return v8;
      }
    }

    goto LABEL_7;
  }

  return 0;
}

id sub_25110394C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  v6 = sub_251103614(a1, a2, v5);

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  if (a1 == 0xD000000000000010 && 0x8000000251135550 == a2 || (sub_251131518() & 1) != 0)
  {
    sub_2510FE944(0, &qword_27F41E518, 0x277CBFEF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E520, &qword_251133340);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2511332B0;
    sub_2511312F8();
    sub_2510FE944(0, &qword_27F41E510, 0x277CCABB0);
    *(inited + 72) = sub_251131238();
    v8 = sub_251120C28(inited);
    swift_setDeallocating();
    sub_251103084(inited + 32, &qword_27F41E528, &qword_251133348);
    return sub_25112DD98(v8);
  }

  if ((a1 != 0x62614C7373616C63 || a2 != 0xEA00000000006C65) && (sub_251131518() & 1) == 0)
  {
    return 0;
  }

  v10 = sub_251130EE8();
  v11 = [objc_opt_self() featureValueWithString_];

  return v11;
}

uint64_t sub_251103BE4()
{

  return swift_deallocClassInstance();
}

id sub_251103E0C(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for FooModel();
  v4 = objc_msgSendSuper2(&v8, sel_initInterfaceAndMetadataWithCompiledArchive_error_, a1, v9);
  if (v4)
  {
    v5 = v9[0];
  }

  else
  {
    v6 = v9[0];
    sub_251130978();

    swift_willThrow();
  }

  return v4;
}

id sub_251103F60(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for FooModel();
  return objc_msgSendSuper2(&v7, *a4, a3);
}

id sub_251104178(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FooModel();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2511041F4(void *a1)
{
  v2 = v1;
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  v3 = qword_27F41DFB0;
  v4 = a1;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = sub_251130BE8();
  __swift_project_value_buffer(v5, qword_27F421A38);
  v6 = sub_251130BC8();
  v7 = sub_251131168();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2510F2000, v6, v7, "[HGModel] using v1 model", v8, 2u);
    MEMORY[0x25306CC10](v8, -1, -1);
  }

  return v2;
}

void sub_2511042EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E328, qword_251134070);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + 16);
  v5 = *(v4 + OBJC_IVAR___HGMLConfigurationInternal_modelType);
  if (v5 == 1)
  {
    *(v0 + 24) = [objc_allocWithZone(type metadata accessor for FooModel()) init];
  }

  else
  {
    if (!v5)
    {
      v6 = OBJC_IVAR___HGMLConfigurationInternal_testModelURL;
      swift_beginAccess();
      sub_251104BEC(v4 + v6, v3);
      v7 = sub_251104E84(v3);
      sub_251103084(v3, &qword_27F41E328, qword_251134070);
      if (v7)
      {
        v8 = *(v0 + 24);
        *(v0 + 24) = v7;

        return;
      }
    }

    sub_2511313B8();
    __break(1u);
  }

  MEMORY[0x2821F96F8]();
}

void sub_251104494()
{
  if (*(*(v0 + 16) + OBJC_IVAR___HGMLConfigurationInternal_modelType) == 1)
  {
    return;
  }

  v1 = *(v0 + 24);
  if (!v1)
  {
    goto LABEL_28;
  }

  v2 = v1;
  v3 = [v2 modelDescription];
  v4 = [v3 inputDescriptionsByName];

  sub_2510FE944(0, &qword_27F41E508, 0x277CBFEE0);
  v5 = sub_251130E88();

  sub_251104908(v5);
  v7 = v6;
  v9 = v8;

  if (!v7)
  {
    goto LABEL_28;
  }

  if ([v9 type] == 5)
  {

    v10 = [v9 multiArrayConstraint];
    if (!v10)
    {
      goto LABEL_27;
    }

    v11 = v10;
    v12 = [v10 shape];

    sub_2510FE944(0, &qword_27F41E510, 0x277CCABB0);
    v13 = sub_251131058();
    v14 = v13;
    if (v13 >> 62)
    {
      if (sub_2511313C8())
      {
LABEL_8:

        if ((v14 & 0xC000000000000001) == 0)
        {
          if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v15 = *(v14 + 32);
            goto LABEL_11;
          }

          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_25:
        v15 = MEMORY[0x25306C180](0, v14);
LABEL_11:
        v16 = v15;

        v17 = [v16 integerValue];

        if (v17 == 30)
        {
          goto LABEL_12;
        }

LABEL_28:
        sub_2511313B8();
        __break(1u);
        return;
      }
    }

    else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_12:
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v18 = sub_251130BE8();
  __swift_project_value_buffer(v18, qword_27F421A38);
  v19 = v2;
  v20 = sub_251130BC8();
  v21 = sub_251131198();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28 = v23;
    *v22 = 136315138;
    v24 = sub_25110370C();
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v24 = 0x6E776F6E6B6E55;
      v26 = 0xE700000000000000;
    }

    v27 = sub_2510FAC50(v24, v26, &v28);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_2510F2000, v20, v21, "[HGEspressoV1Model] ML model version: %s loaded.", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x25306CC10](v23, -1, -1);
    MEMORY[0x25306CC10](v22, -1, -1);
  }

  else
  {
  }
}

void *sub_251104908(uint64_t a1)
{
  v2 = sub_2511312B8();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_251104B5C(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_251104988(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 24);
  if (!v2)
  {
    return 0;
  }

  v10[0] = 0;
  v4 = v2;
  v5 = [v4 predictionFromFeatures:a1 error:v10];
  if (v5)
  {
    v6 = v5;
    v7 = v10[0];

    type metadata accessor for HGMLOutput();
    result = swift_allocObject();
    *(result + 16) = v6;
  }

  else
  {
    v9 = v10[0];
    sub_251130978();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_251104A8C()
{

  return swift_deallocClassInstance();
}

void *sub_251104B5C(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(*(a5 + 56) + 8 * a2);
    *result = v6;

    v7 = v6;
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_251104BEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E328, qword_251134070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_251104C5C(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for FooModel();
  v5 = objc_msgSendSuper2(&v9, sel_initDescriptionOnlyWithSpecification_configuration_error_, a1, a2, v10);
  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_251130978();

    swift_willThrow();
  }

  return v5;
}

id sub_251104D24(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2511309A8();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_2511309E8();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_251130978();

    swift_willThrow();
    v11 = sub_2511309E8();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

id sub_251104E84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E328, qword_251134070);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30[-v3];
  v5 = sub_2511309E8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v30[-v11];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v30[-v14];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v30[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v30[-v19];
  sub_251104BEC(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_251103084(v4, &qword_27F41E328, qword_251134070);
    type metadata accessor for HGEspressoV1Model();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v22 = [objc_opt_self() bundleForClass_];
    v23 = sub_251130EE8();
    v24 = sub_251130EE8();
    v25 = [v22 URLForResource:v23 withExtension:v24];

    if (!v25)
    {

      return 0;
    }

    sub_2511309B8();

    (*(v6 + 32))(v15, v12, v5);
    sub_2510FE944(0, &qword_27F41E538, 0x277CBFF20);
    (*(v6 + 16))(v9, v15, v5);
    v26 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
    v29 = sub_251104D24(v9, v26);

    (*(v6 + 8))(v15, v5);
  }

  else
  {
    (*(v6 + 32))(v20, v4, v5);
    sub_2510FE944(0, &qword_27F41E538, 0x277CBFF20);
    (*(v6 + 16))(v18, v20, v5);
    v27 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
    v29 = sub_251104D24(v18, v27);

    (*(v6 + 8))(v20, v5);
  }

  return v29;
}

uint64_t sub_2511052C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25110533C(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_25110539C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

id sub_251105410(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, unint64_t a6)
{
  v67[1] = a5;
  v68 = a6;
  v69 = a4;
  v70[2] = *MEMORY[0x277D85DE8];
  v9 = sub_251130988();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2511309E8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v67 - v18;
  sub_251130998();
  v70[0] = a3;
  v70[1] = v69;
  (*(v10 + 104))(v12, *MEMORY[0x277CC91D0], v9);
  sub_251105D08();
  sub_2511309D8();
  (*(v10 + 8))(v12, v9);
  v20 = *(v14 + 8);
  v20(v17, v13);
  v69 = sub_2511309C8();
  v22 = v21;
  v20(v19, v13);
  v23 = a1;
  v24 = objc_opt_self();
  v25 = [v24 defaultManager];
  v26 = sub_251130EE8();
  v70[0] = 0;
  LODWORD(a3) = [v25 createDirectoryAtPath:v26 withIntermediateDirectories:1 attributes:0 error:v70];

  if (!a3)
  {
    v42 = v70[0];

    v43 = sub_251130978();

    swift_willThrow();
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v44 = sub_251130BE8();
    __swift_project_value_buffer(v44, qword_27F421A38);
    v45 = v43;
    v46 = sub_251130BC8();
    v47 = sub_251131188();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v70[0] = v49;
      *v48 = 136315138;
      swift_getErrorValue();
      v50 = sub_251131548();
      v52 = sub_2510FAC50(v50, v51, v70);

      *(v48 + 4) = v52;
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x25306CC10](v49, -1, -1);
      MEMORY[0x25306CC10](v48, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v27 = qword_27F41DFB0;
  v28 = v70[0];
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = sub_251130BE8();
  __swift_project_value_buffer(v29, qword_27F421A38);

  v30 = sub_251130BC8();
  v31 = sub_251131198();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v70[0] = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_2510FAC50(v23, a2, v70);
    _os_log_impl(&dword_2510F2000, v30, v31, "[HGFileUtil] Directory created at %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x25306CC10](v33, -1, -1);
    MEMORY[0x25306CC10](v32, -1, -1);
  }

  v34 = [v24 defaultManager];
  v35 = v69;
  v36 = sub_251130EE8();
  v37 = [v34 fileExistsAtPath_];

  if ((v37 & 1) == 0)
  {
    v53 = [v24 defaultManager];
    v54 = sub_251130EE8();
    if (v68 >> 60 == 15)
    {
      v55 = 0;
    }

    else
    {
      v55 = sub_251130A38();
    }

    v57 = [v53 createFileAtPath:v54 contents:v55 attributes:0];

    v38 = sub_251130BC8();
    if (v57)
    {
      v58 = sub_251131198();

      if (os_log_type_enabled(v38, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v70[0] = v60;
        *v59 = 136315138;
        *(v59 + 4) = sub_2510FAC50(v35, v22, v70);
        _os_log_impl(&dword_2510F2000, v38, v58, "[HGFileUtil] Empty file created at %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v60);
        MEMORY[0x25306CC10](v60, -1, -1);
        MEMORY[0x25306CC10](v59, -1, -1);
      }

      goto LABEL_22;
    }

    v63 = sub_251131188();

    if (os_log_type_enabled(v38, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v70[0] = v65;
      *v64 = 136315138;
      v66 = sub_2510FAC50(v35, v22, v70);

      *(v64 + 4) = v66;
      _os_log_impl(&dword_2510F2000, v38, v63, "[HGFileUtil] Error creating file at %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x25306CC10](v65, -1, -1);
      MEMORY[0x25306CC10](v64, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v38 = sub_251130BC8();
  v39 = sub_251131198();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v70[0] = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_2510FAC50(v35, v22, v70);
    _os_log_impl(&dword_2510F2000, v38, v39, "[HGFileUtil] File already exists at %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x25306CC10](v41, -1, -1);
    MEMORY[0x25306CC10](v40, -1, -1);
  }

LABEL_22:

  v61 = sub_251130EE8();

  v62 = [objc_opt_self() fileHandleForWritingAtPath_];

  return v62;
}

unint64_t sub_251105D08()
{
  result = qword_27F41E540;
  if (!qword_27F41E540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E540);
  }

  return result;
}

void sub_251105D5C(void *a1, unint64_t a2, void *a3, char a4)
{
  v18[2] = *MEMORY[0x277D85DE8];
  sub_251131158();
  if (a2 >> 60 != 15)
  {
    v18[0] = a1;
    v18[1] = a2;
    sub_251106058(a1, a2);
    sub_2511060AC();
    sub_251131148();
    sub_251106100(a1, a2);
  }

  if (a4)
  {
    v18[0] = 0;
    if ([a3 closeAndReturnError_])
    {

      MEMORY[0x2821F9840]();
    }

    else
    {
      v16 = v18[0];
      v17 = sub_251130978();

      swift_willThrow();
      if (qword_27F41DFB0 != -1)
      {
        swift_once();
      }

      v8 = sub_251130BE8();
      __swift_project_value_buffer(v8, qword_27F421A38);
      v9 = v17;
      v10 = sub_251130BC8();
      v11 = sub_251131188();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        v14 = v17;
        v15 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v15;
        *v13 = v15;
        _os_log_impl(&dword_2510F2000, v10, v11, "[HGDataCollector] Error when trying to write to file %@", v12, 0xCu);
        sub_251105FF0(v13);
        MEMORY[0x25306CC10](v13, -1, -1);
        MEMORY[0x25306CC10](v12, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_251105FF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E498, &qword_251133270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251106058(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_2511060AC()
{
  result = qword_27F41E548;
  if (!qword_27F41E548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E548);
  }

  return result;
}

uint64_t sub_251106100(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_251106114(a1, a2);
  }

  return a1;
}

uint64_t sub_251106114(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_251106168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = objc_opt_self();
  v3 = [v29 defaultManager];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  v7 = [v6 bundlePath];

  sub_251130F18();
  sub_251130FE8();
  sub_251130F98();
  v8 = sub_251130EE8();

  v9 = [v3 fileExistsAtPath_];

  v10 = [v5 bundleForClass_];
  v11 = v10;
  if (v9)
  {
    v12 = [v10 bundlePath];
LABEL_9:
    v24 = v12;

    sub_251130F18();
    v31 = sub_251130FE8();
    sub_251130F98();
    return v31;
  }

  v13 = [v10 resourcePath];

  if (v13)
  {
    sub_251130F18();

    v30 = sub_251130FE8();
    sub_251130F98();
    v14 = [v29 defaultManager];
    v15 = sub_251130EE8();
    v16 = [v14 fileExistsAtPath_];

    if (v16)
    {
      return v30;
    }
  }

  v18 = [v29 defaultManager];
  v19 = [v5 mainBundle];
  v20 = [v19 0x2796ACD78];

  sub_251130F18();
  sub_251130FE8();
  sub_251130F98();
  v21 = sub_251130EE8();

  v22 = [v18 fileExistsAtPath_];

  v23 = [v5 mainBundle];
  v11 = v23;
  if (v22)
  {
    v12 = [v23 0x2796ACD78];
    goto LABEL_9;
  }

  v25 = [v23 resourcePath];

  if (v25)
  {
    sub_251130F18();

    v32 = sub_251130FE8();
    sub_251130F98();
    v26 = [v29 defaultManager];
    v27 = sub_251130EE8();
    v28 = [v26 fileExistsAtPath_];

    if (v28)
    {
      return v32;
    }
  }

  return 0;
}

unint64_t sub_2511066C8()
{
  sub_251131358();

  if (*(v0 + OBJC_IVAR____TtC12HeadGestures29HGHeadphoneMotionDataProvider_headphoneConnected))
  {
    v1 = 5457241;
  }

  else
  {
    v1 = 20302;
  }

  if (*(v0 + OBJC_IVAR____TtC12HeadGestures29HGHeadphoneMotionDataProvider_headphoneConnected))
  {
    v2 = 0xE300000000000000;
  }

  else
  {
    v2 = 0xE200000000000000;
  }

  MEMORY[0x25306BDC0](v1, v2);

  MEMORY[0x25306BDC0](0x696D616572747320, 0xEB000000003A676ELL);
  v3 = [*(v0 + OBJC_IVAR____TtC12HeadGestures29HGHeadphoneMotionDataProvider_cmMotionManager) isDeviceMotionActive];
  v4 = v3 == 0;
  if (v3)
  {
    v5 = 5457241;
  }

  else
  {
    v5 = 20302;
  }

  if (v4)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  MEMORY[0x25306BDC0](v5, v6);

  return 0xD00000000000001BLL;
}

void sub_2511067FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC12HeadGestures29HGHeadphoneMotionDataProvider_cmMotionManager);
  if ([v1 isDeviceMotionAvailable] && (objc_msgSend(v1, sel_isDeviceMotionActive) & 1) == 0)
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v2 = sub_251130BE8();
    __swift_project_value_buffer(v2, qword_27F421A38);
    v3 = sub_251130BC8();
    v4 = sub_251131198();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v13[0] = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_2510FAC50(0x29287472617473, 0xE700000000000000, v13);
      _os_log_impl(&dword_2510F2000, v3, v4, "HGHeadphoneMotionManager:%s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x25306CC10](v6, -1, -1);
      MEMORY[0x25306CC10](v5, -1, -1);
    }

    v7 = *(v0 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_operationQueue);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13[4] = sub_2511072A8;
    v13[5] = v8;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_25112FA00;
    v13[3] = &block_descriptor_1;
    v9 = _Block_copy(v13);

    [v1 startDeviceMotionUpdatesToQueue:v7 withHandler:v9];
    _Block_release(v9);
    v10 = sub_251130BC8();
    v11 = sub_251131198();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2510F2000, v10, v11, "HGHeadphoneMotionManager: started", v12, 2u);
      MEMORY[0x25306CC10](v12, -1, -1);
    }
  }
}

void sub_251106AA4(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_251130B38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = a2;
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v11 = sub_251130BE8();
    __swift_project_value_buffer(v11, qword_27F421A38);
    v12 = a2;
    v13 = sub_251130BC8();
    v14 = sub_251131188();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v48 = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = sub_251131548();
      v19 = sub_2510FAC50(v17, v18, &v48);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_2510F2000, v13, v14, "HeadPhoneMotionError: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x25306CC10](v16, -1, -1);
      MEMORY[0x25306CC10](v15, -1, -1);
    }

    else
    {
    }
  }

  else if (a1)
  {
    v20 = v7;
    v21 = a1;
    sub_251130B08();
    sub_251130AE8();
    v23 = v22;
    (*(v6 + 8))(v9, v20);
    sub_251112740(v21, &v41, v23);

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v52 = v45;
      v53 = v46;
      v54[0] = v47[0];
      *(v54 + 9) = *(v47 + 9);
      v48 = v41;
      v49 = v42;
      v50 = v43;
      v51 = v44;
      v25 = Strong;
      sub_251130C28();
      v38 = v45;
      v39 = v46;
      v40[0] = v47[0];
      *(v40 + 9) = *(v47 + 9);
      v34 = v41;
      v35 = v42;
      v36 = v43;
      v37 = v44;
      nullsub_1();
      v26 = &v25[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion];
      v52 = *&v25[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 64];
      v53 = *&v25[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 80];
      v54[0] = *&v25[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 96];
      *(v54 + 9) = *&v25[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 105];
      v48 = *&v25[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion];
      v49 = *&v25[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 16];
      v50 = *&v25[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 32];
      v51 = *&v25[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 48];
      v27 = v37;
      v29 = v34;
      v28 = v35;
      *(v26 + 2) = v36;
      *(v26 + 3) = v27;
      *v26 = v29;
      *(v26 + 1) = v28;
      v31 = v39;
      v30 = v40[0];
      v32 = v38;
      *(v26 + 105) = *(v40 + 9);
      *(v26 + 5) = v31;
      *(v26 + 6) = v30;
      *(v26 + 4) = v32;
      sub_2511082D0(&v48);
    }
  }
}

void sub_251106E6C()
{
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v1 = sub_251130BE8();
  __swift_project_value_buffer(v1, qword_27F421A38);
  v2 = sub_251130BC8();
  v3 = sub_251131198();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_2510FAC50(0x2928706F7473, 0xE600000000000000, &v9);
    _os_log_impl(&dword_2510F2000, v2, v3, "HGHeadphoneMotionManager:%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x25306CC10](v5, -1, -1);
    MEMORY[0x25306CC10](v4, -1, -1);
  }

  [*(v0 + OBJC_IVAR____TtC12HeadGestures29HGHeadphoneMotionDataProvider_cmMotionManager) stopDeviceMotionUpdates];
  oslog = sub_251130BC8();
  v6 = sub_251131198();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2510F2000, oslog, v6, "HGHeadphoneMotionManager: stopped", v7, 2u);
    MEMORY[0x25306CC10](v7, -1, -1);
  }
}

id sub_251107184()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HGHeadphoneMotionDataProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for HGHeadphoneMotionDataProvider(uint64_t a1)
{
  result = qword_27F41E5B8;
  if (!qword_27F41E5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251107270()
{
  MEMORY[0x25306CC70](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2511072C8()
{
  v1 = v0;
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v2 = sub_251130BE8();
  __swift_project_value_buffer(v2, qword_27F421A38);
  v3 = sub_251130BC8();
  v4 = sub_251131198();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_2510FAC50(0xD000000000000024, 0x80000002511369C0, &v7);
    _os_log_impl(&dword_2510F2000, v3, v4, "HGHeadphoneMotionManager:%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x25306CC10](v6, -1, -1);
    MEMORY[0x25306CC10](v5, -1, -1);
  }

  *(v1 + OBJC_IVAR____TtC12HeadGestures29HGHeadphoneMotionDataProvider_headphoneConnected) = 1;
}

void sub_25110741C()
{
  v1 = v0;
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v2 = sub_251130BE8();
  __swift_project_value_buffer(v2, qword_27F421A38);
  v3 = sub_251130BC8();
  v4 = sub_251131198();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_2510FAC50(0xD000000000000027, 0x8000000251136990, &v7);
    _os_log_impl(&dword_2510F2000, v3, v4, "HGHeadphoneMotionManager:%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x25306CC10](v6, -1, -1);
    MEMORY[0x25306CC10](v5, -1, -1);
  }

  *(v1 + OBJC_IVAR____TtC12HeadGestures29HGHeadphoneMotionDataProvider_headphoneConnected) = 0;
}

uint64_t static HGUtils.headGestureToString(headGesture:)(uint64_t a1)
{
  v1 = 0x656B616853;
  v2 = 0x6E776F6E6B6E55;
  if (a1 == 1)
  {
    v2 = 6582094;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x756F72476B636142;
  }
}

uint64_t static HGUtils.headGesturePartToString(headGesturePart:)(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return 0x676952656B616853;
      }

      goto LABEL_8;
    }

    return 0x66654C656B616853;
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        v1 = 1147432782;
        return v1 | 0x6E776F00000000;
      }

LABEL_8:
      v1 = 1852534389;
      return v1 | 0x6E776F00000000;
    }

    return 0x7055646F4ELL;
  }
}

uint64_t static HGUtils.getCurrentModelVersion()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E328, qword_251134070);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_2511309E8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_251104E84(v2);
  sub_2510FC410(v2);
  if (v4 && (v5 = v4, v6 = sub_25110370C(), v8 = v7, v5, v5, v8))
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for HGUtils(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for HGUtils(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_251107858()
{
  v1 = v0;
  sub_251131358();
  MEMORY[0x25306BDC0](0x6E6F697461746F52, 0xEB00000000203A58);
  v2 = v0[2];
  v3 = [v2 description];
  v4 = sub_251130F18();
  v6 = v5;

  MEMORY[0x25306BDC0](v4, v6);

  MEMORY[0x25306BDC0](0x697461746F520A2CLL, 0xED0000203A596E6FLL);
  v7 = v1[3];
  v8 = [v7 description];
  v9 = sub_251130F18();
  v11 = v10;

  MEMORY[0x25306BDC0](v9, v11);

  MEMORY[0x25306BDC0](0x697461746F520A2CLL, 0xED0000203A5A6E6FLL);
  v12 = v1[4];
  v13 = [v12 description];
  v14 = sub_251130F18();
  v16 = v15;

  MEMORY[0x25306BDC0](v14, v16);

  MEMORY[0x25306BDC0](0xD000000000000011, 0x8000000251136A80);
  v17 = v1[5];
  v18 = [v17 description];
  v19 = sub_251130F18();
  v21 = v20;

  MEMORY[0x25306BDC0](v19, v21);

  MEMORY[0x25306BDC0](0xD000000000000011, 0x8000000251136AA0);
  v22 = v1[6];
  v23 = [v22 description];
  v24 = sub_251130F18();
  v26 = v25;

  MEMORY[0x25306BDC0](v24, v26);

  MEMORY[0x25306BDC0](0xD000000000000011, 0x8000000251136AC0);
  v27 = v1[7];
  v28 = [v27 description];
  v29 = sub_251130F18();
  v31 = v30;

  MEMORY[0x25306BDC0](v29, v31);

  MEMORY[0x25306BDC0](10, 0xE100000000000000);
  return 0;
}

id sub_251107B58(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F697461746F52 && a2 == 0xE900000000000058 || (sub_251131518() & 1) != 0)
  {
    v5 = 16;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  if (a1 == 0x6E6F697461746F52 && a2 == 0xE900000000000059 || (sub_251131518() & 1) != 0)
  {
    v5 = 24;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  if (a1 == 0x6E6F697461746F52 && a2 == 0xE90000000000005ALL || (sub_251131518() & 1) != 0)
  {
    v5 = 32;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  if (a1 == 0x6172656C65636341 && a2 == 0xED0000586E6F6974 || (sub_251131518() & 1) != 0)
  {
    v5 = 40;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  if (a1 == 0x6172656C65636341 && a2 == 0xED0000596E6F6974 || (sub_251131518() & 1) != 0)
  {
    v5 = 48;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  if (a1 == 0x6172656C65636341 && a2 == 0xED00005A6E6F6974 || (sub_251131518() & 1) != 0)
  {
    v5 = 56;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  return 0;
}

uint64_t sub_251107E48()
{

  return swift_deallocClassInstance();
}

uint64_t sub_251107F18()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_251130CA8();

  return v1;
}

uint64_t sub_251107F8C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E4B0, &unk_251133520);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_streamingStatueMonitor;
  if (*&v0[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_streamingStatueMonitor])
  {

    sub_251130C08();
  }

  *&v0[v5] = 0;

  sub_251109DCC();
  v6 = [objc_opt_self() mainRunLoop];
  v7 = sub_251131248();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = sub_251131228();

  sub_251109E18(v4);
  v14 = v8;
  sub_251131218();
  sub_251109E80();
  v9 = sub_251130C48();

  v14 = v9;
  *(swift_allocObject() + 16) = v0;
  v10 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E6B0, &unk_251133640);
  sub_2510F6658(&qword_27F41E6B8, &qword_27F41E6B0, &unk_251133640, MEMORY[0x277CBCB30]);
  v11 = sub_251130E08();

  *&v1[v5] = v11;
}

uint64_t sub_2511081E0@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_251130CA8();

  *a2 = v4;
  return result;
}

uint64_t sub_251108260(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_251130CB8();
}

uint64_t sub_2511082D0(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 104);
  v4 = *(a1 + 80);
  v62[4] = *(a1 + 64);
  v62[5] = v4;
  v63[0] = *(a1 + 96);
  *(v63 + 9) = *(a1 + 105);
  v5 = *(a1 + 16);
  v62[0] = *a1;
  v62[1] = v5;
  v6 = *(a1 + 48);
  v62[2] = *(a1 + 32);
  v62[3] = v6;
  if (sub_2510F7300(v62) == 1)
  {
    v7 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 80);
    v59 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 64);
    v60 = v7;
    v61[0] = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 96);
    *(v61 + 9) = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 105);
    v8 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 16);
    v55 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion);
    v56 = v8;
    v9 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 48);
    v57 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 32);
    v58 = v9;
    result = sub_2510F7300(&v55);
    if (result != 1)
    {
      if (qword_27F41DFB0 != -1)
      {
        swift_once();
      }

      v11 = sub_251130BE8();
      __swift_project_value_buffer(v11, qword_27F421A38);
      v12 = sub_251130BC8();
      v13 = sub_251131198();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_2510F2000, v12, v13, "HGMotionDataProvider started receiving sensor data...", v14, 2u);
        MEMORY[0x25306CC10](v14, -1, -1);
      }

      if (qword_27F41DFA0 != -1)
      {
        swift_once();
      }

      v15 = qword_27F421A00;
      type metadata accessor for HGCoreAnalyticsManager.HGCAMotionDataReceivedEvent(0);
      swift_allocObject();
      sub_251130B08();
      swift_beginAccess();

      MEMORY[0x25306BE60](v16);
      if (*((*(v15 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v15 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_251131078();
      }

      sub_251131098();
      swift_endAccess();

      return sub_251107F8C();
    }

    return result;
  }

  v17 = (v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion);
  v18 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 80);
  v59 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 64);
  v60 = v18;
  v61[0] = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 96);
  *(v61 + 9) = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 105);
  v19 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 16);
  v55 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion);
  v56 = v19;
  v20 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 48);
  v57 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 32);
  v58 = v20;
  if (sub_2510F7300(&v55) == 1)
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v21 = sub_251130BE8();
    __swift_project_value_buffer(v21, qword_27F421A38);
    v22 = sub_251130BC8();
    v23 = sub_251131198();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2510F2000, v22, v23, "HGMotionDataProvider data stream stopped...", v24, 2u);
      MEMORY[0x25306CC10](v24, -1, -1);
    }

    v25 = OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_streamingStatueMonitor;
    if (*(v2 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_streamingStatueMonitor))
    {

      sub_251130C08();
    }

    *(v2 + v25) = 0;
  }

  v26 = v17[5];
  v53[4] = v17[4];
  v53[5] = v26;
  v54[0] = v17[6];
  *(v54 + 9) = *(v17 + 105);
  v27 = v17[1];
  v53[0] = *v17;
  v53[1] = v27;
  v28 = v17[3];
  v53[2] = v17[2];
  v53[3] = v28;
  result = sub_2510F7300(v53);
  if (result != 1)
  {
    v29 = *(v54 + 1) - v3;
    v30 = OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_samplingRatePool;
    v31 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_samplingRatePool);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v30) = v31;
    if ((result & 1) == 0)
    {
      result = sub_251109514(0, *(v31 + 16) + 1, 1, v31);
      v31 = result;
      *(v2 + v30) = result;
    }

    v32 = *(v31 + 16);
    v33 = *(v31 + 24);
    v34 = v32 + 1;
    v35 = 1.0 / v29;
    if (v32 >= v33 >> 1)
    {
      v51 = v31;
      v52 = *(v31 + 16);
      result = sub_251109514((v33 > 1), v32 + 1, 1, v51);
      v32 = v52;
      v31 = result;
    }

    *(v31 + 16) = v34;
    *(v31 + 8 * v32 + 32) = v35;
    *(v2 + v30) = v31;
    if (v32 >= 0x18)
    {
      v36 = v32 + 1;
      v37 = (v32 + 1) & 0x7FFFFFFFFFFFFFFCLL;
      v38 = (v31 + 48);
      v39 = 0.0;
      v40 = v37;
      do
      {
        v39 = v39 + *(v38 - 2) + *(v38 - 1) + *v38 + v38[1];
        v38 += 4;
        v40 -= 4;
      }

      while (v40);
      if (v36 != v37)
      {
        v41 = v32 - v37 + 1;
        v42 = (v31 + 32 * (v36 >> 2) + 32);
        do
        {
          v43 = *v42++;
          v39 = v39 + v43;
          --v41;
        }

        while (v41);
      }

      *(v2 + v30) = MEMORY[0x277D84F90];

      if (qword_27F41DFB0 != -1)
      {
        swift_once();
      }

      v44 = v39 / v34;
      v45 = sub_251130BE8();
      __swift_project_value_buffer(v45, qword_27F421A38);
      v46 = sub_251130BC8();
      v47 = sub_251131178();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 134217984;
        *(v48 + 4) = v44;
        _os_log_impl(&dword_2510F2000, v46, v47, "HGMotionDataProvider current sampling rate: %f Hz", v48, 0xCu);
        MEMORY[0x25306CC10](v48, -1, -1);
      }

      if (qword_27F41DFA0 != -1)
      {
        swift_once();
      }

      v49 = qword_27F421A00;
      type metadata accessor for HGCoreAnalyticsManager.HGCASamplingRateEvent(0);
      *(swift_allocObject() + OBJC_IVAR____TtCC12HeadGestures22HGCoreAnalyticsManager21HGCASamplingRateEvent_currentSamplingRate) = v44;
      sub_251130B08();
      swift_beginAccess();

      MEMORY[0x25306BE60](v50);
      if (*((*(v49 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v49 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_251131078();
      }

      sub_251131098();
      swift_endAccess();
    }
  }

  return result;
}

char *sub_2511089B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E680, &unk_251133508);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E078, &unk_251132EC0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v10 = OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_motionDataSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E688, &qword_251133518);
  swift_allocObject();
  *&v0[v10] = sub_251130C38();
  v11 = OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider__isStreamingData;
  LOBYTE(v26[0]) = 0;
  sub_251130C68();
  (*(v7 + 32))(&v1[v11], v9, v6);
  *&v1[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_motionDataPublisher] = 0;
  v12 = OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_operationQueue;
  *&v1[v12] = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  *&v1[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_streamingStatueMonitor] = 0;
  *&v1[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_samplingRatePool] = MEMORY[0x277D84F90];
  v13 = &v1[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion];
  sub_2510F731C(v26);
  v14 = v26[5];
  *(v13 + 4) = v26[4];
  *(v13 + 5) = v14;
  *(v13 + 6) = v27[0];
  *(v13 + 105) = *(v27 + 9);
  v15 = v26[1];
  *v13 = v26[0];
  *(v13 + 1) = v15;
  v16 = v26[3];
  *(v13 + 2) = v26[2];
  *(v13 + 3) = v16;
  v17 = type metadata accessor for HGMotionDataProvider(0);
  v25.receiver = v1;
  v25.super_class = v17;
  v18 = objc_msgSendSuper2(&v25, sel_init);
  v19 = *&v18[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_operationQueue];
  v20 = v18;
  [v19 setMaxConcurrentOperationCount_];
  v24 = *&v20[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_motionDataSubject];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2510F6658(&qword_27F41E690, &qword_27F41E688, &qword_251133518, MEMORY[0x277CBCE20]);

  sub_251130CF8();

  sub_2510F6658(&qword_27F41E698, &qword_27F41E680, &unk_251133508, MEMORY[0x277CBCB60]);
  v21 = sub_251130CD8();
  (*(v3 + 8))(v5, v2);
  *&v20[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_motionDataPublisher] = v21;

  (*((*MEMORY[0x277D85000] & *v20) + 0x130))(v22);

  return v20;
}

void sub_251108E24(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x138))();
  }
}

void sub_251108EB0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x140))();
  }
}

uint64_t sub_251108F60(uint64_t a1, char *a2)
{
  v3 = &a2[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion];
  v4 = *&a2[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 80];
  v25[4] = *&a2[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 64];
  v25[5] = v4;
  v26[0] = *&a2[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 96];
  *(v26 + 9) = *&a2[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 105];
  v5 = *&a2[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 16];
  v25[0] = *&a2[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion];
  v25[1] = v5;
  v6 = *&a2[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 48];
  v25[2] = *&a2[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 32];
  v25[3] = v6;
  result = sub_2510F7300(v25);
  if (result != 1)
  {
    v8 = *&v26[1];
    sub_251130AE8();
    if (vabdd_f64(v8, v9) <= 1.0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v23[0]) = 1;
      v20 = a2;
    }

    else
    {
      sub_2510F731C(v21);
      v10 = *(v3 + 5);
      v23[4] = *(v3 + 4);
      v23[5] = v10;
      v24[0] = *(v3 + 6);
      *(v24 + 9) = *(v3 + 105);
      v11 = *(v3 + 1);
      v23[0] = *v3;
      v23[1] = v11;
      v12 = *(v3 + 3);
      v23[2] = *(v3 + 2);
      v23[3] = v12;
      v13 = v21[0];
      v14 = v21[1];
      v15 = v21[3];
      *(v3 + 2) = v21[2];
      *(v3 + 3) = v15;
      *v3 = v13;
      *(v3 + 1) = v14;
      v16 = v21[4];
      v17 = v21[5];
      v18 = v22[0];
      *(v3 + 105) = *(v22 + 9);
      *(v3 + 5) = v17;
      *(v3 + 6) = v18;
      *(v3 + 4) = v16;
      sub_2511082D0(v23);
      swift_getKeyPath();
      swift_getKeyPath();
      v19 = a2;
    }

    return sub_251130CB8();
  }

  return result;
}

id sub_2511091F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HGMotionDataProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for HGMotionDataProvider(uint64_t a1)
{
  result = qword_27F41E640;
  if (!qword_27F41E640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251109344(uint64_t a1)
{
  sub_2510FC1BC();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_251109414(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E6D0, &qword_251133588);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = v8 << 7;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_251109514(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E650, &qword_2511334D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_251109618(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E678, &qword_251133500);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_25110971C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E670, &qword_2511334F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_251109820(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E6C8, &qword_251133580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_251109924(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E668, &qword_2511334F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_251109A28(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E660, &unk_251134950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_251109B2C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E6C0, &unk_251134640);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_251109C30(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E658, &unk_2511334E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_251109D4C(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_251109D84()
{
  MEMORY[0x25306CC70](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_251109DCC()
{
  result = qword_27F41E6A0;
  if (!qword_27F41E6A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F41E6A0);
  }

  return result;
}

uint64_t sub_251109E18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E4B0, &unk_251133520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_251109E80()
{
  result = qword_27F41E6A8;
  if (!qword_27F41E6A8)
  {
    sub_251131218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E6A8);
  }

  return result;
}

uint64_t sub_251109ED8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251109F20(char *a1)
{
  v19 = sub_251130E18();
  v22 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_251130E38();
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_audioEngine;
  *(v1 + v8) = [objc_allocWithZone(MEMORY[0x277CB8388]) init];
  *(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_backgroundAudioNode) = 0;
  *(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_partGestureAudioNode) = 0;
  *(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_headGestureAudioNode) = 0;
  *(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_environmentNode) = 0;
  *(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_renderAlgo) = 3;
  v9 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_invertedConfirmationAudioFeedbackMode;
  swift_beginAccess();
  sub_25112D144(a1[v9], v25);
  v10 = v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager;
  v11 = v25[1];
  *v10 = v25[0];
  *(v10 + 16) = v11;
  *(v10 + 32) = v26;
  v12 = a1;
  v13 = sub_2510F5F58(v12);

  v14 = *(v13 + 24);
  aBlock[4] = sub_25110DA08;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2511147B8;
  aBlock[3] = &block_descriptor_57;
  v15 = _Block_copy(aBlock);
  swift_retain_n();
  v16 = v14;
  sub_251130E28();
  v23 = MEMORY[0x277D84F90];
  sub_25110D874(&qword_27F41E080, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E088, &qword_251132A30);
  sub_2510F6658(&qword_27F41E090, &qword_27F41E088, &qword_251132A30, MEMORY[0x277D83970]);
  v17 = v19;
  sub_2511312A8();
  MEMORY[0x25306C010](0, v7, v4, v15);
  _Block_release(v15);

  (*(v22 + 8))(v4, v17);
  (*(v20 + 8))(v7, v21);

  return v13;
}

id sub_25110A2B8()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  result = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_partGestureAudioNode);
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  [result stop];
  result = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_headGestureAudioNode);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [result stop];
  result = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_backgroundAudioNode);
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  [result stop];
  v3 = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_audioEngine);

  return [v3 stop];
}

void sub_25110A384(void *a1)
{
  v2 = v1;
  v4 = sub_251130B88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  v9 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_enableAudioFeedback;
  swift_beginAccess();
  if (*(v8 + v9) != 1)
  {
    return;
  }

  v10 = (v2 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager);
  v11 = *(v2 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager + 16);
  v12 = *(v2 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager + 24);
  v13 = [a1 headGesture];
  if (v13 != 2)
  {
    if (v13 != 1)
    {
      goto LABEL_19;
    }

    v12 = v11;
  }

  if (v12)
  {
    v77 = v5;
    v79 = (v2 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_headGestureAudioNode);
    v14 = *(v2 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_headGestureAudioNode);
    if (v14)
    {
      v15 = swift_allocObject();
      swift_weakInit();
      v16 = swift_allocObject();
      *(v16 + 16) = a1;
      *(v16 + 24) = v15;
      aBlock[4] = sub_25110D934;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25110B424;
      aBlock[3] = &block_descriptor_47;
      v17 = _Block_copy(aBlock);
      v18 = v12;
      v19 = v14;
      v20 = a1;

      v78 = v18;
      [v19 scheduleBuffer:v18 completionCallbackType:2 completionHandler:v17];
      _Block_release(v17);

      if (qword_27F41DFB0 != -1)
      {
        swift_once();
      }

      v21 = sub_251130BE8();
      __swift_project_value_buffer(v21, qword_27F421A38);
      v22 = v20;

      v23 = sub_251130BC8();
      v24 = sub_251131178();

      if (!os_log_type_enabled(v23, v24))
      {

        v43 = v79;
LABEL_39:
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(aBlock[0]) = 0;

        sub_251130CB8();
LABEL_61:
        v75 = *v43;
        v76 = *v43;
        sub_25110D264(v2, v75);

        return;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136315650;
      v27 = [v22 headGesture];
      if (v27)
      {
        v28 = 0xE700000000000000;
        v29 = 0x6E776F6E6B6E55;
        if (v27 == 1)
        {
          v29 = 6582094;
          v28 = 0xE300000000000000;
        }

        v30 = v27 == 2;
        if (v27 == 2)
        {
          v31 = 0x656B616853;
        }

        else
        {
          v31 = v29;
        }

        if (v30)
        {
          v32 = 0xE500000000000000;
        }

        else
        {
          v32 = v28;
        }
      }

      else
      {
        v31 = 0x756F72476B636142;
        v32 = 0xEA0000000000646ELL;
      }

      v44 = sub_2510FAC50(v31, v32, aBlock);

      *(v25 + 4) = v44;
      *(v25 + 12) = 2080;
      v45 = [v22 uuid];
      sub_251130B68();

      sub_25110D874(&qword_27F41E360, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v46 = sub_251131508();
      v48 = v47;
      (*(v77 + 8))(v7, v4);
      v49 = sub_2510FAC50(v46, v48, aBlock);

      *(v25 + 14) = v49;
      *(v25 + 22) = 2048;
      v43 = v79;
      if (*v79)
      {
        v50 = *v79;

        [v50 volume];
        v52 = v51;

        *(v25 + 24) = v52;
        _os_log_impl(&dword_2510F2000, v23, v24, "[Audio] Playing Audio feedback %s UUID: %s at volume %f", v25, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25306CC10](v26, -1, -1);
        MEMORY[0x25306CC10](v25, -1, -1);

        goto LABEL_39;
      }

      goto LABEL_66;
    }

    goto LABEL_64;
  }

LABEL_19:
  v34 = *v10;
  v33 = v10[1];
  v35 = [a1 headGesturePart];
  if ((v35 - 1) < 2)
  {
    v33 = v34;
    if (!v34)
    {
      return;
    }

LABEL_25:
    v36 = (v2 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_partGestureAudioNode);
    v37 = *(v2 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_partGestureAudioNode);
    if (!v37)
    {
LABEL_65:
      __break(1u);
LABEL_66:

      __break(1u);
      goto LABEL_67;
    }

    v38 = v33;
    [v37 scheduleBuffer:v38 atTime:0 options:2 completionHandler:0];
    if ([a1 headGesturePart] == 2)
    {
      v41 = *v36;
      if (!*v36)
      {
        goto LABEL_63;
      }

      v42 = 0.0;
      LODWORD(v39) = -1110651699;
    }

    else if ([a1 headGesturePart] == 1)
    {
      v41 = *v36;
      if (!*v36)
      {
        goto LABEL_63;
      }

      v42 = 0.0;
      LODWORD(v39) = 1036831949;
    }

    else if ([a1 headGesturePart] == 3)
    {
      v41 = *v36;
      if (!*v36)
      {
        goto LABEL_63;
      }

      v39 = 0.0;
      LODWORD(v42) = -1.0;
    }

    else
    {
      if ([a1 headGesturePart] != 4)
      {
        goto LABEL_44;
      }

      v41 = *v36;
      if (!*v36)
      {
        goto LABEL_63;
      }

      v39 = 0.0;
      LODWORD(v42) = 1.0;
    }

    LODWORD(v40) = LODWORD(v39);
    [v41 setPosition_];
LABEL_44:
    v53 = *v36;
    if (*v36)
    {
      v77 = v5;
      v78 = v38;
      v79 = v36;
      v54 = v53;
      sub_2510F44B4([a1 headGesturePart]);
      *&v55 = v55;
      [v54 setVolume_];

      if (qword_27F41DFB0 != -1)
      {
        swift_once();
      }

      v56 = sub_251130BE8();
      __swift_project_value_buffer(v56, qword_27F421A38);
      v57 = a1;

      v58 = sub_251130BC8();
      v59 = sub_251131178();

      if (!os_log_type_enabled(v58, v59))
      {

        v43 = v79;
        goto LABEL_61;
      }

      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      aBlock[0] = v61;
      *v60 = 136315650;
      v62 = [v57 headGesturePart];
      if (v62 > 2)
      {
        if (v62 != 3)
        {
          if (v62 == 4)
          {
            v63 = v61;
            v64 = 0xEA00000000007468;
            v65 = 0x676952656B616853;
            goto LABEL_59;
          }

          goto LABEL_56;
        }

        v63 = v61;
        v64 = 0xE900000000000074;
        v65 = 0x66654C656B616853;
      }

      else
      {
        if (v62 != 1)
        {
          if (v62 == 2)
          {
            v63 = v61;
            v64 = 0xE700000000000000;
            v65 = 0x6E776F44646F4ELL;
            goto LABEL_59;
          }

LABEL_56:
          v63 = v61;
          v65 = 0x6E776F6E6B6E75;
          v64 = 0xE700000000000000;
          goto LABEL_59;
        }

        v63 = v61;
        v64 = 0xE500000000000000;
        v65 = 0x7055646F4ELL;
      }

LABEL_59:
      v66 = sub_2510FAC50(v65, v64, aBlock);

      *(v60 + 4) = v66;
      *(v60 + 12) = 2080;
      v67 = [v57 uuid];
      sub_251130B68();

      sub_25110D874(&qword_27F41E360, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v68 = sub_251131508();
      v70 = v69;
      (*(v77 + 8))(v7, v4);
      v71 = sub_2510FAC50(v68, v70, aBlock);

      *(v60 + 14) = v71;
      *(v60 + 22) = 2048;
      v43 = v79;
      if (*v79)
      {
        v72 = *v79;

        [v72 volume];
        v74 = v73;

        *(v60 + 24) = v74;
        _os_log_impl(&dword_2510F2000, v58, v59, "[Audio] Playing Audio feedback %s UUID: %s at volume %f", v60, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25306CC10](v63, -1, -1);
        MEMORY[0x25306CC10](v60, -1, -1);

        goto LABEL_61;
      }

LABEL_67:

      __break(1u);
      return;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if ((v35 == 3 || v35 == 4) && v33)
  {
    goto LABEL_25;
  }
}

uint64_t sub_25110AD80(uint64_t a1, void *a2, uint64_t a3)
{
  v43 = a3;
  v5 = sub_251130E18();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_251130E38();
  v44 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_251130B88();
  v13 = *(v12 - 8);
  result = MEMORY[0x28223BE20](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    v41 = v9;
    v42 = v6;
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v17 = sub_251130BE8();
    __swift_project_value_buffer(v17, qword_27F421A38);
    v18 = a2;
    v19 = sub_251130BC8();
    v20 = sub_251131178();

    if (os_log_type_enabled(v19, v20))
    {
      v39 = v20;
      v40 = v5;
      v21 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v21 = 136315394;
      v22 = [v18 headGesture];
      if (v22)
      {
        v23 = 0xE700000000000000;
        v24 = 0x6E776F6E6B6E55;
        if (v22 == 1)
        {
          v24 = 6582094;
          v23 = 0xE300000000000000;
        }

        v25 = v22 == 2;
        if (v22 == 2)
        {
          v26 = 0x656B616853;
        }

        else
        {
          v26 = v24;
        }

        if (v25)
        {
          v27 = 0xE500000000000000;
        }

        else
        {
          v27 = v23;
        }
      }

      else
      {
        v27 = 0xEA0000000000646ELL;
        v26 = 0x756F72476B636142;
      }

      v28 = sub_2510FAC50(v26, v27, aBlock);

      *(v21 + 4) = v28;
      *(v21 + 12) = 2080;
      v29 = [v18 uuid];
      sub_251130B68();

      sub_25110D874(&qword_27F41E360, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v30 = sub_251131508();
      v32 = v31;
      (*(v13 + 8))(v16, v12);
      v33 = sub_2510FAC50(v30, v32, aBlock);

      *(v21 + 14) = v33;
      _os_log_impl(&dword_2510F2000, v19, v39, "[Audio] Finished playing Audio feedback %s UUID: %s", v21, 0x16u);
      v34 = v38;
      swift_arrayDestroy();
      MEMORY[0x25306CC10](v34, -1, -1);
      MEMORY[0x25306CC10](v21, -1, -1);

      v5 = v40;
    }

    else
    {
    }

    sub_2510FE944(0, &qword_27F41E0F0, 0x277D85C78);
    v35 = sub_2511311E8();
    v36 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    aBlock[4] = sub_25110D93C;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2511147B8;
    aBlock[3] = &block_descriptor_51;
    v37 = _Block_copy(aBlock);

    sub_251130E28();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_25110D874(&qword_27F41E080, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E088, &qword_251132A30);
    sub_2510F6658(&qword_27F41E090, &qword_27F41E088, &qword_251132A30, MEMORY[0x277D83970]);
    sub_2511312A8();
    MEMORY[0x25306C010](0, v11, v8, v37);
    _Block_release(v37);

    (*(v42 + 8))(v8, v5);
    return (*(v44 + 8))(v11, v41);
  }

  return result;
}

uint64_t sub_25110B3A0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_251130CB8();
  }

  return result;
}

uint64_t sub_25110B424(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_25110B478()
{
  v1 = sub_251130E18();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_251130E38();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + 24);
  aBlock[4] = sub_25110D25C;
  v14 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2511147B8;
  aBlock[3] = &block_descriptor_38;
  v8 = _Block_copy(aBlock);

  sub_251130E28();
  v12 = MEMORY[0x277D84F90];
  sub_25110D874(&qword_27F41E080, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E088, &qword_251132A30);
  sub_2510F6658(&qword_27F41E090, &qword_27F41E088, &qword_251132A30, MEMORY[0x277D83970]);
  sub_2511312A8();
  MEMORY[0x25306C010](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

void sub_25110B72C(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_backgroundAudioNode;
  v2 = *(a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_backgroundAudioNode);
  if (v2)
  {
    v4 = v2;
    sub_25110C9D8(v4, nullsub_1, 0, 1.0);
    v5 = *(a1 + v1);
    v6 = v5;
    sub_25110D264(a1, v5);
  }
}

uint64_t sub_25110B7D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_251130E18();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_251130E38();
  v10 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v3 + 24);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_25110D238;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2511147B8;
  aBlock[3] = &block_descriptor_2;
  v14 = _Block_copy(aBlock);

  sub_251130E28();
  v18 = MEMORY[0x277D84F90];
  sub_25110D874(&qword_27F41E080, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E088, &qword_251132A30);
  sub_2510F6658(&qword_27F41E090, &qword_27F41E088, &qword_251132A30, MEMORY[0x277D83970]);
  sub_2511312A8();
  MEMORY[0x25306C010](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

void sub_25110BABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_backgroundAudioNode);
  if (v3)
  {
    v6 = v3;
    sub_25110C9D8(v6, a2, a3, 0.0);
  }
}

void sub_25110BB34(uint64_t a1)
{
  v52[1] = *MEMORY[0x277D85DE8];
  v1 = OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_environmentNode;
  if (*(a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_environmentNode))
  {
    v3 = *(a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_audioEngine);
    if (([v3 isRunning] & 1) == 0)
    {
      v4 = *(a1 + v1);
      if (v4)
      {
        v5 = v4;
        v6 = [v3 mainMixerNode];
        v7 = sub_25110C7E0();
        [v3 connect:v5 to:v6 format:v7];

        v8 = OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_partGestureAudioNode;
        v9 = *(a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_partGestureAudioNode);
        if (v9)
        {
          v10 = *(a1 + v1);
          if (v10)
          {
            v11 = a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager;
            v12 = *(a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager);
            if (v12)
            {
              v13 = v10;
              v14 = v9;
              v15 = [v12 format];
              [v3 connect:v14 to:v13 format:v15];

              v16 = OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_headGestureAudioNode;
              v17 = *(a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_headGestureAudioNode);
              if (v17)
              {
                v18 = *(a1 + v1);
                if (v18)
                {
                  v19 = *(v11 + 16);
                  if (v19)
                  {
                    v20 = v18;
                    v21 = v17;
                    v22 = [v19 format];
                    [v3 connect:v21 to:v20 format:v22];

                    v23 = OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_backgroundAudioNode;
                    v24 = *(a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_backgroundAudioNode);
                    if (v24)
                    {
                      v25 = v24;
                      v26 = [v3 mainMixerNode];
                      v27 = *(v11 + 32);
                      if (v27)
                      {
                        v28 = v26;
                        v29 = [*(v11 + 32) format];
                        [v3 connect:v25 to:v28 format:v29];

                        v30 = *(a1 + v8);
                        if (v30)
                        {
                          [v30 setRenderingAlgorithm_];
                          v32 = *(a1 + v8);
                          if (v32)
                          {
                            LODWORD(v31) = 1050253722;
                            [v32 setReverbBlend_];
                            v33 = *(a1 + v1);
                            if (v33)
                            {
                              [v33 setListenerPosition_];
                              v34 = *(a1 + v16);
                              if (v34)
                              {
                                [v34 setPosition_];
                                v35 = *(a1 + v23);
                                if (v35)
                                {
                                  v36 = v27;
                                  v37 = v35;
                                  [v37 stop];
                                  [v37 scheduleBuffer:v36 atTime:0 options:1 completionHandler:0];
                                  [v37 setVolume_];
                                }

                                if (qword_27F41DFB0 != -1)
                                {
                                  swift_once();
                                }

                                v38 = sub_251130BE8();
                                __swift_project_value_buffer(v38, qword_27F421A38);
                                v39 = sub_251130BC8();
                                v40 = sub_251131168();
                                if (os_log_type_enabled(v39, v40))
                                {
                                  v41 = swift_slowAlloc();
                                  *v41 = 0;
                                  _os_log_impl(&dword_2510F2000, v39, v40, "[HGAudioPlayer] Starting the audio engine", v41, 2u);
                                  MEMORY[0x25306CC10](v41, -1, -1);
                                }

                                [v3 prepare];
                                v52[0] = 0;
                                if (![v3 startAndReturnError_])
                                {
                                  v42 = v52[0];
                                  v43 = sub_251130978();

                                  swift_willThrow();
                                  v44 = v43;
                                  v45 = sub_251130BC8();
                                  v46 = sub_251131188();

                                  if (os_log_type_enabled(v45, v46))
                                  {
                                    v47 = swift_slowAlloc();
                                    v48 = swift_slowAlloc();
                                    v52[0] = v48;
                                    *v47 = 136315138;
                                    swift_getErrorValue();
                                    v49 = sub_251131548();
                                    v51 = sub_2510FAC50(v49, v50, v52);

                                    *(v47 + 4) = v51;
                                    _os_log_impl(&dword_2510F2000, v45, v46, "[HGAudioPlayer] Unable to start the AudioEngine: %s", v47, 0xCu);
                                    __swift_destroy_boxed_opaque_existential_0(v48);
                                    MEMORY[0x25306CC10](v48, -1, -1);
                                    MEMORY[0x25306CC10](v47, -1, -1);
                                  }

                                  else
                                  {
                                  }

                                  return;
                                }

void sub_25110C10C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioSessionID;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4)
  {
    v5 = [objc_opt_self() retrieveSessionWithID_];
    [*(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_audioEngine) setAudioSession_];
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v6 = sub_251130BE8();
    __swift_project_value_buffer(v6, qword_27F421A38);

    v7 = sub_251130BC8();
    v8 = sub_251131198();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      v10 = *(v1 + 16);
      v11 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioSessionID;
      swift_beginAccess();
      *(v9 + 4) = *(v10 + v11);

      _os_log_impl(&dword_2510F2000, v7, v8, "[AudioSession] Attached session ID %u", v9, 8u);
      MEMORY[0x25306CC10](v9, -1, -1);
    }

    else
    {
    }
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CB83E0]) init];
  v13 = OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_backgroundAudioNode;
  v14 = *(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_backgroundAudioNode);
  *(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_backgroundAudioNode) = v12;

  v15 = [objc_allocWithZone(MEMORY[0x277CB83E0]) init];
  v16 = OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_partGestureAudioNode;
  v17 = *(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_partGestureAudioNode);
  *(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_partGestureAudioNode) = v15;

  v18 = [objc_allocWithZone(MEMORY[0x277CB83E0]) init];
  v19 = OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_headGestureAudioNode;
  v20 = *(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_headGestureAudioNode);
  *(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_headGestureAudioNode) = v18;

  v21 = [objc_allocWithZone(MEMORY[0x277CB8390]) init];
  v22 = *(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_environmentNode);
  *(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_environmentNode) = v21;
  v23 = v21;

  if (!v23)
  {
    __break(1u);
    goto LABEL_13;
  }

  v24 = *(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_audioEngine);
  [v24 attachNode_];

  if (!*(v1 + v16))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v24 attachNode_];
  if (!*(v1 + v19))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v24 attachNode_];
  if (*(v1 + v13))
  {
    [v24 attachNode_];
    sub_25110C42C();
    sub_25110BB34(v1);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_251130CB8();
    return;
  }

LABEL_15:
  __break(1u);
}

void sub_25110C42C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_handleAudioEngineConfigurationChangeWithNotification_ name:*MEMORY[0x277CB8008] object:*(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_audioEngine)];
  v2 = *(v0 + 16);
  v3 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioSessionID;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4)
  {
    v5 = [objc_opt_self() retrieveSessionWithID_];
    v6 = *MEMORY[0x277CB8068];
    v7 = v5;
    [v1 addObserver:v0 selector:sel_handleInterruptionWithNotification_ name:v6 object:v7];
  }
}

id sub_25110C578(uint64_t a1, const char *a2)
{
  v4 = v2;
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v5 = sub_251130BE8();
  __swift_project_value_buffer(v5, qword_27F421A38);
  v6 = sub_251130BC8();
  v7 = sub_251131198();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2510F2000, v6, v7, a2, v8, 2u);
    MEMORY[0x25306CC10](v8, -1, -1);
  }

  result = *(v4 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_partGestureAudioNode);
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  [result stop];
  result = *(v4 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_headGestureAudioNode);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [result stop];
  result = *(v4 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_backgroundAudioNode);
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  [result stop];
  v10 = *(v4 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_audioEngine);

  return [v10 stop];
}

uint64_t sub_25110C6EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_251130908();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2511308F8();

  a4(v9);

  return (*(v6 + 8))(v8, v5);
}

id sub_25110C7E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_audioEngine);
  v2 = [v1 mainMixerNode];
  v3 = [v2 outputFormatForBus_];

  v4 = [v3 channelCount];
  v5 = [v1 mainMixerNode];
  v6 = [v5 outputFormatForBus_];

  [v6 sampleRate];
  v8 = v7;

  if (v4 >= 3)
  {
    if (v4 > 5)
    {
      if (v4 == 6)
      {
        v9 = 9109510;
        goto LABEL_17;
      }

      if (v4 != 7)
      {
        if (v4 == 8)
        {
          v9 = 7274504;
          goto LABEL_17;
        }

        goto LABEL_14;
      }

      v9 = 9175047;
LABEL_17:
      result = [objc_allocWithZone(MEMORY[0x277CB8368]) initWithLayoutTag_];
      if (result)
      {
        v12 = result;
        v13 = [objc_allocWithZone(MEMORY[0x277CB83A8]) initStandardFormatWithSampleRate:result channelLayout:v8];

        result = v13;
        v11 = 3;
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    if (v4 != 3)
    {
      if (v4 != 4)
      {
        if (v4 == 5)
        {
          v9 = 7733253;
          goto LABEL_17;
        }

LABEL_14:
        v9 = 6619138;
        goto LABEL_17;
      }

      v9 = 7077892;
      goto LABEL_17;
    }
  }

  result = [objc_allocWithZone(MEMORY[0x277CB83A8]) initStandardFormatWithSampleRate:2 channels:v8];
  if (result)
  {
    v11 = 0;
LABEL_19:
    *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_renderAlgo) = v11;
    return result;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_25110C9D8(void *a1, uint64_t a2, uint64_t a3, float a4)
{
  v5 = v4;
  v32 = a1;
  v33 = a3;
  v31 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E6E8, &unk_251134050);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E4B0, &unk_251133520);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E6F0, &unk_251134060);
  v13 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v15 = &v30 - v14;
  if (*(v4 + 32))
  {

    sub_251130C08();

    *(v4 + 32) = 0;
  }

  sub_2510FE944(0, &qword_27F41E6A0, 0x277CBEBB8);
  v16 = [objc_opt_self() mainRunLoop];
  v17 = sub_251131248();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = sub_251131228();

  sub_251103084(v12, &qword_27F41E4B0, &unk_251133520);
  v35 = v18;
  sub_251131218();
  sub_25110D874(&qword_27F41E6A8, MEMORY[0x277CC9DF0], MEMORY[0x277CC9DE8]);
  v19 = sub_251130C48();

  v34 = *(v4 + 24);
  v20 = v34;
  v35 = v19;
  v21 = sub_2511311C8();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  v22 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E6B0, &unk_251133640);
  sub_2510FE944(0, &qword_27F41E0F0, 0x277D85C78);
  sub_2510F6658(&qword_27F41E6B8, &qword_27F41E6B0, &unk_251133640, MEMORY[0x277CBCB30]);
  sub_25110D944();
  sub_251130DD8();
  sub_251103084(v9, &qword_27F41E6E8, &unk_251134050);

  v23 = swift_allocObject();
  v24 = v31;
  v25 = v32;
  *(v23 + 16) = v32;
  *(v23 + 24) = a4;
  *(v23 + 32) = v5;
  *(v23 + 40) = v24;
  *(v23 + 48) = v33;
  sub_2510F6658(&qword_27F41E700, &qword_27F41E6F0, &unk_251134060, MEMORY[0x277CBCD60]);
  v26 = v25;

  v27 = v30;
  v28 = sub_251130E08();

  (*(v13 + 8))(v15, v27);
  *(v5 + 32) = v28;
}