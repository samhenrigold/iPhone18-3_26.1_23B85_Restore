unint64_t sub_222AD77F8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_52;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v4 = MEMORY[0x277D84F90];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x223DC6F00](v3, v27);
        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v3 >= *(v30 + 16))
        {
          goto LABEL_47;
        }

        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
LABEL_46:
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
          v26 = isUniquelyReferenced_nonNull_bridgeObject;
          v1 = sub_222B02DC8();
          isUniquelyReferenced_nonNull_bridgeObject = v26;
          goto LABEL_3;
        }
      }

      v6 = sub_222AD5EEC();

      v7 = v6 ? v6 : v2;
      v2 = v7 >> 62;
      v8 = v7 >> 62 ? sub_222B02DC8() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v4 >> 62;
      if (v4 >> 62)
      {
        v24 = sub_222B02DC8();
        v11 = v24 + v8;
        if (__OFADD__(v24, v8))
        {
LABEL_43:
          __break(1u);
          return v2;
        }
      }

      else
      {
        v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = v10 + v8;
        if (__OFADD__(v10, v8))
        {
          goto LABEL_43;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        break;
      }

      if (v9)
      {
        goto LABEL_22;
      }

LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = sub_222B02CC8();
      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v2)
      {
        v16 = v12;
        isUniquelyReferenced_nonNull_bridgeObject = sub_222B02DC8();
        v12 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_5:

          if (v8 > 0)
          {
            goto LABEL_48;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v15)
        {
          goto LABEL_5;
        }
      }

      if (((v14 >> 1) - v13) < v8)
      {
        goto LABEL_49;
      }

      v33 = v3;
      v17 = v12 + 8 * v13 + 32;
      v29 = v12;
      if (v2)
      {
        if (v15 < 1)
        {
          goto LABEL_51;
        }

        sub_222AD7B84();
        for (i = 0; i != v15; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E280, &unk_222B0DAB0);
          v19 = sub_222A6E094(v32, i, v7);
          v21 = *v20;

          (v19)(v32, 0);
          *(v17 + 8 * i) = v21;
        }
      }

      else
      {
        sub_222B01C18();
        swift_arrayInitWithCopy();
      }

      v1 = v28;
      v3 = v33;
      if (v8 >= 1)
      {
        v22 = *(v29 + 16);
        v5 = __OFADD__(v22, v8);
        v23 = v22 + v8;
        if (v5)
        {
          goto LABEL_50;
        }

        *(v29 + 16) = v23;
      }

LABEL_6:
      v2 = MEMORY[0x277D84F90];
      if (v3 == v1)
      {
        return v4;
      }
    }

    if (!v9)
    {
      v12 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v11 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_22:
    sub_222B02DC8();
    goto LABEL_23;
  }

  return v2;
}

unint64_t sub_222AD7B84()
{
  result = qword_27D01E288;
  if (!qword_27D01E288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D01E280, &unk_222B0DAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E288);
  }

  return result;
}

void *DebugModeFlagUserDefaultsStore.__allocating_init()()
{
  result = swift_allocObject();
  result[2] = 0xD000000000000038;
  result[3] = 0x8000000222B15640;
  result[4] = 0xD000000000000012;
  result[5] = 0x8000000222B15680;
  return result;
}

void *DebugModeFlagUserDefaultsStore.init()()
{
  result = v0;
  v0[2] = 0xD000000000000038;
  v0[3] = 0x8000000222B15640;
  v0[4] = 0xD000000000000012;
  v0[5] = 0x8000000222B15680;
  return result;
}

void sub_222AD7C7C(unsigned __int8 *a2@<X8>)
{
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v5 = [v3 initWithSuiteName_];

  if (v5)
  {
    v6 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
    v7 = [v5 BOOLForKey_];
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
}

id sub_222AD7D2C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v4 = [v2 BOOLForKey_];

  return v4;
}

void sub_222AD7DCC(char a1)
{
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    v4 = sub_222B026D8();
    v5 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
    [v3 setValue:v4 forKey:v5];
  }
}

void (*sub_222AD7EAC(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v5 = [v3 initWithSuiteName_];

  if (v5)
  {
    v6 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
    v7 = [v5 BOOLForKey_];
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 8) = v7;
  return sub_222AD7F7C;
}

uint64_t DebugModeFlagUserDefaultsStore.deinit()
{

  return v0;
}

uint64_t DebugModeFlagUserDefaultsStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_222AD800C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v4 = [v2 BOOLForKey_];

  return v4;
}

uint64_t (*sub_222AD80D4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_222AD7EAC(v2);
  return sub_222AD8148;
}

void sub_222AD8148(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_222AD8298()
{
  v0 = sub_222B01748();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_280CBC438);
  __swift_project_value_buffer(v0, qword_280CBC438);
  v5 = MEMORY[0x223DC7490]();
  sub_222B02388();

  sub_222B01678();

  sub_222B016D8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_222AD83E0()
{
  v0 = sub_222B021B8();
  __swift_allocate_value_buffer(v0, qword_280CB7BB0);
  *__swift_project_value_buffer(v0, qword_280CB7BB0) = 60;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

id SiriUserFeedbackLearningPluginBase.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriUserFeedbackLearningPluginBase.init()()
{
  v1 = &v0[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics34SiriUserFeedbackLearningPluginBase_usageLogger];
  *(v1 + 3) = &type metadata for UsageLogger;
  *(v1 + 4) = &protocol witness table for UsageLogger;
  if (qword_280CB7BA0 != -1)
  {
    swift_once();
  }

  v2 = sub_222B021B8();
  v3 = __swift_project_value_buffer(v2, qword_280CB7BB0);
  (*(*(v2 - 8) + 16))(&v0[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics34SiriUserFeedbackLearningPluginBase_timeout], v3, v2);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SiriUserFeedbackLearningPluginBase(0);
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t type metadata accessor for SiriUserFeedbackLearningPluginBase(uint64_t a1)
{
  result = qword_280CBA1C8;
  if (!qword_280CBA1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *SiriUserFeedbackLearningPluginBase.__allocating_init(usageLogger:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_222A42E40(a1, v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics34SiriUserFeedbackLearningPluginBase_usageLogger);
  if (qword_280CB7BA0 != -1)
  {
    swift_once();
  }

  v4 = sub_222B021B8();
  v5 = __swift_project_value_buffer(v4, qword_280CB7BB0);
  (*(*(v4 - 8) + 16))(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics34SiriUserFeedbackLearningPluginBase_timeout, v5, v4);
  v8.receiver = v3;
  v8.super_class = v1;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

void *SiriUserFeedbackLearningPluginBase.init(usageLogger:)(void *a1)
{
  sub_222A42E40(a1, v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics34SiriUserFeedbackLearningPluginBase_usageLogger);
  if (qword_280CB7BA0 != -1)
  {
    swift_once();
  }

  v3 = sub_222B021B8();
  v4 = __swift_project_value_buffer(v3, qword_280CB7BB0);
  (*(*(v3 - 8) + 16))(v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics34SiriUserFeedbackLearningPluginBase_timeout, v4, v3);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SiriUserFeedbackLearningPluginBase(0);
  v5 = objc_msgSendSuper2(&v7, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

id sub_222AD88A4(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v6 = sub_222B02148();
  __swift_project_value_buffer(v6, qword_280CBC458);
  v7 = a1;
  v8 = sub_222B02128();
  v9 = sub_222B028D8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25[0] = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_222A230FC(0x286D726F66726570, 0xEB00000000293A5FLL, v25);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    v13 = v7;
    _os_log_impl(&dword_222A1C000, v8, v9, "SiriUserFeedbackLearningPluginBase.%s task:%@", v10, 0x16u);
    sub_222A8DF88(v11);
    MEMORY[0x223DC7E30](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223DC7E30](v12, -1, -1);
    MEMORY[0x223DC7E30](v10, -1, -1);
  }

  sub_222A42E40(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics34SiriUserFeedbackLearningPluginBase_usageLogger, v22);
  SiriUserFeedbackLearningTask.init(mlrTask:usageLogger:)(v7, v22, v25);
  if (!v2)
  {
    v14 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics34SiriUserFeedbackLearningPluginBase_timeout;
    sub_222A4DE5C(v25, v22);
    v15 = swift_allocObject();
    *(v15 + 16) = v3;
    v16 = v22[1];
    *(v15 + 24) = v22[0];
    *(v15 + 40) = v16;
    *(v15 + 56) = v22[2];
    *(v15 + 72) = v23;
    *(v15 + 80) = ObjectType;
    v17 = v3;
    sub_222A4D05C(v3 + v14, &unk_222B0DB98, v15, v24);
    sub_222A4DEB8(v25);

    v19 = v24[0];
    v20 = v24[1];
    v21 = v24[3];
    v3 = v24[2];
    sub_222A39248(v19, v20);
  }

  return v3;
}

uint64_t sub_222AD8B58(uint64_t a1, void *a2, uint64_t a3)
{
  *(v3 + 48) = a1;
  v5 = *((*MEMORY[0x277D85000] & *a2) + 0x78);
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  *v6 = v3;
  v6[1] = sub_222AD8C9C;

  return v8(v3 + 16, a3);
}

uint64_t sub_222AD8C9C()
{

  return MEMORY[0x2822009F8](sub_222AD8D98, 0, 0);
}

uint64_t sub_222AD8D98()
{
  *(v0 + 64) = *(v0 + 16);
  v1 = *(v0 + 40);
  *(v0 + 80) = *(v0 + 32);
  *(v0 + 88) = v1;
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_222AD8E7C;
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v2, 0, 0, 0xD000000000000016, 0x8000000222B15800, sub_222AD9338, 0, v3);
}

uint64_t sub_222AD8E7C()
{

  return MEMORY[0x2822009F8](sub_222AD8F78, 0, 0);
}

uint64_t sub_222AD8F78()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_222AD9004;

  return sub_222AD9B20();
}

uint64_t sub_222AD9004()
{

  return MEMORY[0x2822009F8](sub_222AD9100, 0, 0);
}

uint64_t sub_222AD9100()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 48);
  *v3 = *(v0 + 64);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_222AD9128(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222A35344;

  return sub_222AD8B58(a1, v4, v1 + 24);
}

uint64_t sub_222AD92B8()
{
  v5 = v0;
  v1 = *(v0 + 16);
  v4[0] = 0xD000000000000036;
  v4[1] = 0x8000000222B15750;
  SiriUserFeedbackLearningTaskResult.init(status:)(v4, v1);
  v2 = *(v0 + 8);

  return v2();
}

void sub_222AD9338(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E308, &unk_222B0DC50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v6 = sub_222B02148();
  __swift_project_value_buffer(v6, qword_280CBC458);
  v7 = sub_222B02128();
  v8 = sub_222B028D8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_222A1C000, v7, v8, "Waiting for all-clear from outgoing SELF logging queue...", v9, 2u);
    MEMORY[0x223DC7E30](v9, -1, -1);
  }

  v10 = [objc_opt_self() sharedAnalytics];
  v11 = [v10 defaultMessageStream];

  (*(v3 + 16))(v5, a1, v2);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  (*(v3 + 32))(v13 + v12, v5, v2);
  aBlock[4] = sub_222AD9F30;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222AD9FB4;
  aBlock[3] = &block_descriptor_11;
  v14 = _Block_copy(aBlock);

  [v11 barrierWithCompletion_];
  _Block_release(v14);
}

uint64_t sub_222AD95DC()
{
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v0 = sub_222B02148();
  __swift_project_value_buffer(v0, qword_280CBC458);
  v1 = sub_222B02128();
  v2 = sub_222B028D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_222A1C000, v1, v2, "The outgoing SELF logging queue is now empty/completed", v3, 2u);
    MEMORY[0x223DC7E30](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E308, &unk_222B0DC50);
  return sub_222B02708();
}

id SiriUserFeedbackLearningPluginBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriUserFeedbackLearningPluginBase(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_222AD978C(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & **v2) + 0x78);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_222A34620;

  return v9(a1, a2);
}

uint64_t sub_222AD98D4(uint64_t a1)
{
  result = sub_222B021B8();
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

uint64_t dispatch thunk of SiriUserFeedbackLearningPluginBase.run(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x78);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_222A34620;

  return v9(a1, a2);
}

uint64_t sub_222AD9B3C()
{
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v1 = sub_222B02148();
  v0[7] = __swift_project_value_buffer(v1, qword_280CBC458);
  v2 = sub_222B02128();
  v3 = sub_222B028D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_222A1C000, v2, v3, "Waiting for all-clear from bookmarks write queue...", v4, 2u);
    MEMORY[0x223DC7E30](v4, -1, -1);
  }

  if (qword_280CB9D48 != -1)
  {
    swift_once();
  }

  sub_222A42E40(qword_280CB9D50 + 96, (v0 + 2));
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v9 = (*(v6 + 40) + **(v6 + 40));
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_222AD9D5C;

  return v9(v5, v6);
}

uint64_t sub_222AD9D5C()
{

  return MEMORY[0x2822009F8](sub_222AD9E58, 0, 0);
}

uint64_t sub_222AD9E58()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = sub_222B02128();
  v2 = sub_222B028D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_222A1C000, v1, v2, "The bookmarks write queue is now empty/completed", v3, 2u);
    MEMORY[0x223DC7E30](v3, -1, -1);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_222AD9F30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E308, &unk_222B0DC50);

  return sub_222AD95DC();
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_222AD9FB4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

SiriPrivateLearningAnalytics::PluginEventsSchedulerStatus_optional __swiftcall PluginEventsSchedulerStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222B02E48();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PluginEventsSchedulerStatus.rawValue.getter()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646570706F7473;
  }
}

uint64_t sub_222ADA0B4()
{
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222ADA15C(uint64_t a1)
{
  sub_222B02448();
}

uint64_t sub_222ADA1F0(uint64_t a1)
{
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

void sub_222ADA2A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000012;
  v5 = 0x8000000222B10310;
  if (v2 != 1)
  {
    v4 = 0xD000000000000015;
    v5 = 0x8000000222B10330;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x646570706F7473;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_222ADA304(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000012;
  v3 = *a1;
  v4 = 0x8000000222B10310;
  if (v3 == 1)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (v3 == 1)
  {
    v6 = 0x8000000222B10310;
  }

  else
  {
    v6 = 0x8000000222B10330;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x646570706F7473;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000015;
    v4 = 0x8000000222B10330;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x646570706F7473;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_222B02F78();
  }

  return v11 & 1;
}

uint64_t PluginEventsScheduler.__allocating_init()()
{
  v0 = swift_allocObject();
  PluginEventsScheduler.init()();
  return v0;
}

uint64_t PluginEventsScheduler.init()()
{
  v1 = v0;
  v21 = sub_222B02988();
  v2 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_222B02968();
  MEMORY[0x28223BE20](v5);
  v6 = sub_222B02238();
  MEMORY[0x28223BE20](v6 - 8);
  *(v0 + 16) = 0;
  v7 = sub_222A250BC(0, &qword_280CBA208, 0x277D85C78);
  v20[0] = "drainSELFOutputQueue()";
  v20[1] = v7;
  sub_222B02228();
  v22 = MEMORY[0x277D84F90];
  sub_222ADD3F4(&unk_280CBA210, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D728, &unk_222B08D20);
  sub_222A77D7C(&unk_280CBA220, &qword_27D01D728, &unk_222B08D20);
  sub_222B02BB8();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v21);
  *(v0 + 24) = sub_222B029A8();
  *(v0 + 56) = &type metadata for EnvironmentFeatureFlags;
  *(v0 + 64) = &protocol witness table for EnvironmentFeatureFlags;
  v8 = type metadata accessor for TrialStatusResolver();
  swift_allocObject();
  v9 = TrialStatusResolver.init()();
  *(v0 + 96) = v8;
  *(v0 + 104) = &protocol witness table for TrialStatusResolver;
  *(v0 + 72) = v9;
  v10 = type metadata accessor for TrialPrivateLearningSuggestionsStatusResolver();
  swift_allocObject();
  v11 = TrialPrivateLearningSuggestionsStatusResolver.init()();
  *(v0 + 136) = v10;
  *(v0 + 144) = &protocol witness table for TrialPrivateLearningSuggestionsStatusResolver;
  *(v0 + 112) = v11;
  if (qword_280CB9568 != -1)
  {
    swift_once();
  }

  v12 = sub_222B01748();
  v13 = __swift_project_value_buffer(v12, qword_280CBC438);
  (*(*(v12 - 8) + 16))(v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_pluginPath, v13, v12);
  *(v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_pluginScheduler) = _s28SiriPrivateLearningAnalytics15PluginSchedulerCACycfC_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DD80, &unk_222B0BCC8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_222B05250;
  v15 = type metadata accessor for BiomeFilterUserCallAfterHangupSiriCall();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_222B0DC60;
  *(v16 + 32) = 0;
  *(v16 + 40) = 1;
  *(v16 + 48) = 0;
  *(v16 + 56) = 1;
  *(v14 + 56) = v15;
  *(v14 + 64) = &off_2835F5D48;
  *(v14 + 32) = v16;
  v17 = sub_222A8B0BC(v14);
  v18 = (v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_siriEventProcessor);
  v18[3] = type metadata accessor for BiomeSiriEventScenarioProcessor();
  v18[4] = &off_2835F5D30;
  *v18 = v17;
  *(v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_pluginRunDelay) = 0x4024000000000000;
  return v1;
}

void sub_222ADA854(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = sub_222B021D8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222B02238();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((*(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_pluginScheduler) + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceConfiguration), *(*(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_pluginScheduler) + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceConfiguration + 24));
  if ((sub_222ADD258() & 1) != 0 || !AFDeviceSupportsSiriUOD())
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v17 = sub_222B02148();
    __swift_project_value_buffer(v17, qword_280CBC458);
    v18 = sub_222B02128();
    v19 = sub_222B028D8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_222A1C000, v18, v19, "PluginEventsScheduler is skipping starting events and trial subscriptions, incompatible device configuration", v20, 2u);
      MEMORY[0x223DC7E30](v20, -1, -1);
    }

    if (a1)
    {
      a1(MEMORY[0x277D84F90]);
    }
  }

  else
  {
    v14 = swift_allocObject();
    swift_weakInit();
    v21[2] = *(v3 + 24);
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a1;
    v21[1] = v14;
    v15[4] = a2;
    aBlock[4] = sub_222ADD704;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_222AD9FB4;
    aBlock[3] = &block_descriptor_47_0;
    v21[0] = _Block_copy(aBlock);

    sub_222ADD6EC(a1, a2);
    sub_222B02208();
    v21[3] = MEMORY[0x277D84F90];
    sub_222ADD3F4(qword_280CBA240, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
    sub_222A77D7C(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160);
    sub_222B02BB8();
    v16 = v21[0];
    MEMORY[0x223DC6BE0](0, v13, v9, v21[0]);
    _Block_release(v16);
    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v10);
  }
}

void sub_222ADAC68(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v6 = sub_222B02148();
  __swift_project_value_buffer(v6, qword_280CBC458);
  v7 = sub_222B02128();
  v8 = sub_222B028D8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_222A1C000, v7, v8, "PluginEventsScheduler is starting events and trial subscriptions", v9, 2u);
    MEMORY[0x223DC7E30](v9, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (*(Strong + 16))
    {
      v12 = sub_222B02F78();

      if ((v12 & 1) == 0)
      {
        v13 = sub_222B02128();
        v14 = sub_222B028E8();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&dword_222A1C000, v13, v14, "PluginEventsScheduler cannot start event / status subscriptions - the scheduler is already subscribed", v15, 2u);
          MEMORY[0x223DC7E30](v15, -1, -1);
        }

        goto LABEL_15;
      }
    }

    else
    {
    }

    v18 = swift_allocObject();
    v18[2] = a1;
    v18[3] = a2;
    v18[4] = a3;
    v19 = *(v11 + 96);
    v20 = *(v11 + 104);
    __swift_project_boxed_opaque_existential_1((v11 + 72), v19);
    v21 = *(v20 + 16);
    v22 = *(v21 + 8);

    sub_222ADD6EC(a2, a3);
    v22(v19, v21);
    v24 = *(v11 + 136);
    v23 = *(v11 + 144);
    __swift_project_boxed_opaque_existential_1((v11 + 112), v24);
    (*(*(v23 + 8) + 8))(v24);
    sub_222ADB4D8(a2, a3);
    v25 = *(v11 + 104);
    __swift_project_boxed_opaque_existential_1((v11 + 72), *(v11 + 96));
    v26 = *(*(v25 + 16) + 16);
    v27 = *(v11 + 24);
    v26();

    v28 = *(v11 + 144);
    __swift_project_boxed_opaque_existential_1((v11 + 112), *(v11 + 136));
    v29 = *(*(v28 + 8) + 16);
    v13 = *(v11 + 24);
    v29();

LABEL_15:

    goto LABEL_16;
  }

  v13 = sub_222B02128();
  v16 = sub_222B028E8();
  if (os_log_type_enabled(v13, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_222A1C000, v13, v16, "PluginEventsScheduler cannot start event / status subscriptions - the scheduler was deallocated", v17, 2u);
    MEMORY[0x223DC7E30](v17, -1, -1);
  }

LABEL_16:
}

void sub_222ADB040(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v7 = sub_222B02148();
  __swift_project_value_buffer(v7, qword_280CBC458);
  sub_222ADD770(a1, v41);
  v8 = sub_222B02128();
  v9 = sub_222B028C8();
  if (os_log_type_enabled(v8, v9))
  {
    v38 = a3;
    v10 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v40[0] = v12;
    *v11 = 136315138;
    v14 = v42;
    v13 = v43;

    sub_222ADD7CC(v41);
    v15 = sub_222A230FC(v14, v13, v40);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_222A1C000, v8, v9, "PluginEventsScheduler received a Trial experiment update for namespace %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223DC7E30](v12, -1, -1);
    v16 = v11;
    a4 = v10;
    a3 = v38;
    MEMORY[0x223DC7E30](v16, -1, -1);
  }

  else
  {

    sub_222ADD7CC(v41);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    if (*(Strong + 16))
    {
      v19 = sub_222B02F78();

      if ((v19 & 1) == 0)
      {
        v20 = v18[12];
        v21 = v18[13];
        __swift_project_boxed_opaque_existential_1(v18 + 9, v20);
        (*(*(v21 + 16) + 8))(v20);
        v22 = v18[17];
        v23 = v18[18];
        __swift_project_boxed_opaque_existential_1(v18 + 14, v22);
        (*(*(v23 + 8) + 8))(v22);
        sub_222ADB4D8(a3, a4);

        return;
      }
    }

    else
    {
    }

    sub_222ADD770(a1, v41);
    v31 = sub_222B02128();
    v32 = sub_222B028D8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39 = v34;
      *v33 = 136315138;
      v35 = v42;
      v36 = v43;

      sub_222ADD7CC(v41);
      v37 = sub_222A230FC(v35, v36, &v39);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_222A1C000, v31, v32, "PluginEventsScheduler is ignoring a Trial experiment update for namespace %s after halting", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x223DC7E30](v34, -1, -1);
      MEMORY[0x223DC7E30](v33, -1, -1);

      return;
    }
  }

  else
  {
    sub_222ADD770(a1, v41);
    v24 = sub_222B02128();
    v25 = sub_222B028E8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v39 = v27;
      *v26 = 136315138;
      v28 = v42;
      v29 = v43;

      sub_222ADD7CC(v41);
      v30 = sub_222A230FC(v28, v29, &v39);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_222A1C000, v24, v25, "PluginEventsScheduler received a Trial experiment update after deallocation for namespace %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x223DC7E30](v27, -1, -1);
      MEMORY[0x223DC7E30](v26, -1, -1);

      return;
    }
  }

  sub_222ADD7CC(v41);
}

void sub_222ADB4D8(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v7 = sub_222B02148();
  __swift_project_value_buffer(v7, qword_280CBC458);
  v8 = sub_222B02128();
  v9 = sub_222B028D8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_222A1C000, v8, v9, "PluginEventsScheduler received a subscribe request", v10, 2u);
    MEMORY[0x223DC7E30](v10, -1, -1);
  }

  v11 = v3[7];
  v12 = v3[8];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v11);
  v35[3] = &type metadata for SiriPrivateLearningFeatureFlag;
  v35[4] = sub_222A36228();
  LOBYTE(v35[0]) = 0;
  v13 = (*(v12 + 8))(v35, v11, v12);
  __swift_destroy_boxed_opaque_existential_0(v35);
  if (v13 & 1) != 0 || (v14 = v3[17], v15 = v3[18], __swift_project_boxed_opaque_existential_1(v3 + 14, v14), ((*(v15 + 16))(v14, v15)))
  {
    if (*(v3 + 16) && *(v3 + 16) == 1)
    {

LABEL_16:
      v20 = sub_222B02128();
      v21 = sub_222B028D8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_222A1C000, v20, v21, "Skipping PluginEventsScheduler subscription - the scheduler is already subscribed", v22, 2u);
        MEMORY[0x223DC7E30](v22, -1, -1);
      }

      return;
    }

    v19 = sub_222B02F78();

    if (v19)
    {
      goto LABEL_16;
    }

    v23 = sub_222B02128();
    v24 = sub_222B028D8();

    if (os_log_type_enabled(v23, v24))
    {
      v34 = v6;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35[0] = v26;
      *v25 = 136315138;
      v27 = 0x8000000222B10330;
      v28 = 0xD000000000000015;
      if (*(v3 + 16) == 1)
      {
        v28 = 0xD000000000000012;
        v27 = 0x8000000222B10310;
      }

      if (*(v3 + 16))
      {
        v29 = v28;
      }

      else
      {
        v29 = 0x646570706F7473;
      }

      if (*(v3 + 16))
      {
        v30 = v27;
      }

      else
      {
        v30 = 0xE700000000000000;
      }

      v31 = sub_222A230FC(v29, v30, v35);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_222A1C000, v23, v24, "PluginEventsScheduler subscription started; previous state was %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x223DC7E30](v26, -1, -1);
      MEMORY[0x223DC7E30](v25, -1, -1);

      v6 = v34;
    }

    else
    {
    }

    *(v3 + 16) = 1;
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_siriEventProcessor), *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_siriEventProcessor + 24));
    v32 = swift_allocObject();
    swift_weakInit();
    v33 = swift_allocObject();
    v33[2] = v32;
    v33[3] = a1;
    v33[4] = a2;
    v33[5] = v6;

    sub_222ADD6EC(a1, a2);
    sub_222A86E7C(sub_222ADD6E0, v33);
  }

  else
  {
    v16 = sub_222B02128();
    v17 = sub_222B028D8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_222A1C000, v16, v17, "Skipping PluginEventsScheduler subscription - the feature flags are disabled", v18, 2u);
      MEMORY[0x223DC7E30](v18, -1, -1);
    }

    LOBYTE(v35[0]) = 2;
    sub_222ADC55C(v35);
    if (a1)
    {
      a1(MEMORY[0x277D84F90]);
    }
  }
}

void sub_222ADBA08(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v7 = sub_222B021D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v86 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222B02238();
  v85 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v84 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_222B01748();
  v81 = *(v12 - 8);
  v82 = v12;
  MEMORY[0x28223BE20](v12);
  v79 = v13;
  v80 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_222B02268();
  v83 = *(v89 - 8);
  v14 = MEMORY[0x28223BE20](v89);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v88 = &v73 - v17;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v75 = v10;
    v76 = v8;
    v77 = v7;
    v87 = Strong;
    v78 = a4;
    v19 = 0;
    v20 = *(a1 + 16);
    v21 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v20 == v19)
      {
        v20 = v21[2];
        if (v20)
        {
          if (qword_280CBA628 != -1)
          {
            goto LABEL_46;
          }

          goto LABEL_14;
        }

        if (!a3)
        {
          goto LABEL_41;
        }

        v44 = MEMORY[0x277D84F90];
        goto LABEL_40;
      }

      if (v19 >= v20)
      {
        break;
      }

      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_44;
      }

      v23 = *(a1 + 32 + 8 * v19++);
      if (v23)
      {
        sub_222A8B7EC(v23);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222A23DB4(0, v21[2] + 1, 1);
          v21 = aBlock[0];
        }

        v26 = v21[2];
        v25 = v21[3];
        if (v26 >= v25 >> 1)
        {
          sub_222A23DB4((v25 > 1), v26 + 1, 1);
          v21 = aBlock[0];
        }

        v21[2] = v26 + 1;
        v21[v26 + 4] = v23;
        v19 = v22;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
LABEL_14:
    v27 = sub_222B02148();
    __swift_project_value_buffer(v27, qword_280CBC458);

    v28 = sub_222B02128();
    v29 = sub_222B028D8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v74 = a3;
      v32 = v31;
      aBlock[0] = v31;
      *v30 = 136315138;
      v33 = MEMORY[0x223DC6850](v21, &type metadata for BiomeSiriEventScenario);
      v35 = sub_222A230FC(v33, v34, aBlock);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_222A1C000, v28, v29, "PluginEventsScheduler is preparing to run plugins, discovered Biome scenarios=%s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      v36 = v32;
      a3 = v74;
      MEMORY[0x223DC7E30](v36, -1, -1);
      MEMORY[0x223DC7E30](v30, -1, -1);
    }

    v37 = v21[2];
    if (v37)
    {
      v38 = v21[4];
      if ((v38 - 1) < 2)
      {
        v39 = 1;
        goto LABEL_32;
      }

      if ((v38 - 3) < 2)
      {
        v39 = 2;
LABEL_32:
        v54 = 4;
        do
        {
          if (!v20)
          {
            break;
          }

          if (!v37)
          {
            goto LABEL_45;
          }

          v55 = v21[v54] - 1;
          --v37;
          ++v54;
          --v20;
        }

        while (v55 > 3);

        v56 = *(v87 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_pluginScheduler);
        v57 = v87;
        v58 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_pluginPath;
        v59 = swift_allocObject();
        v60 = v78;
        *(v59 + 16) = a3;
        *(v59 + 24) = v60;
        v74 = *(v56 + 16);
        sub_222ADD6EC(a3, v60);
        sub_222B02248();
        sub_222B02288();
        v83 = *(v83 + 8);
        (v83)(v16, v89);
        v61 = swift_allocObject();
        swift_weakInit();
        v62 = v81;
        v63 = v57 + v58;
        v64 = v80;
        v65 = v82;
        (*(v81 + 16))(v80, v63, v82);
        v66 = (*(v62 + 80) + 41) & ~*(v62 + 80);
        v67 = swift_allocObject();
        *(v67 + 16) = v61;
        *(v67 + 24) = sub_222ADD6FC;
        *(v67 + 32) = v59;
        *(v67 + 40) = v39;
        (*(v62 + 32))(v67 + v66, v64, v65);
        aBlock[4] = sub_222A77CC8;
        aBlock[5] = v67;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_222AD9FB4;
        aBlock[3] = &block_descriptor_40;
        v68 = _Block_copy(aBlock);

        v69 = v84;
        sub_222B02208();
        v90 = MEMORY[0x277D84F90];
        sub_222ADD3F4(qword_280CBA240, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
        sub_222A77D7C(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160);
        v70 = v86;
        v71 = v77;
        sub_222B02BB8();
        v72 = v88;
        MEMORY[0x223DC6BC0](v88, v69, v70, v68);
        _Block_release(v68);

        (*(v76 + 8))(v70, v71);
        (*(v85 + 8))(v69, v75);
        (v83)(v72, v89);

LABEL_41:

        return;
      }

      if (v38)
      {
        v39 = 0;
        goto LABEL_32;
      }

      v45 = sub_222B02128();
      v46 = sub_222B028E8();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        aBlock[0] = v48;
        *v47 = 136315138;
        v49 = v21[4];
        sub_222A8B7EC(v49);

        v50 = sub_222A866C0(v49);
        v52 = v51;
        sub_222A8B7FC(v49);
        v53 = sub_222A230FC(v50, v52, aBlock);

        *(v47 + 4) = v53;
        _os_log_impl(&dword_222A1C000, v45, v46, "PluginEventsScheduler cannot convert a Biome scenario (%s) to a plugin run scenario", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x223DC7E30](v48, -1, -1);
        MEMORY[0x223DC7E30](v47, -1, -1);
      }

      else
      {
      }

      if (!a3)
      {
        goto LABEL_41;
      }

      v44 = MEMORY[0x277D84F90];
LABEL_40:
      a3(v44);
      goto LABEL_41;
    }

    __break(1u);
    goto LABEL_48;
  }

  if (qword_280CBA628 != -1)
  {
LABEL_48:
    swift_once();
  }

  v40 = sub_222B02148();
  __swift_project_value_buffer(v40, qword_280CBC458);
  v41 = sub_222B02128();
  v42 = sub_222B028E8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_222A1C000, v41, v42, "PluginEventsScheduler was deallocated while subscribed", v43, 2u);
    MEMORY[0x223DC7E30](v43, -1, -1);
  }

  if (a3)
  {
    a3(MEMORY[0x277D84F90]);
  }
}

void sub_222ADC45C(uint64_t a1, void (*a2)(uint64_t))
{
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v4 = sub_222B02148();
  __swift_project_value_buffer(v4, qword_280CBC458);
  v5 = sub_222B02128();
  v6 = sub_222B028D8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_222A1C000, v5, v6, "PluginEventsScheduler finished running plugins", v7, 2u);
    MEMORY[0x223DC7E30](v7, -1, -1);
  }

  if (a2)
  {
    a2(a1);
  }
}

uint64_t sub_222ADC55C(char *a1)
{
  v2 = v1;
  v3 = *a1;
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v4 = sub_222B02148();
  __swift_project_value_buffer(v4, qword_280CBC458);

  v5 = sub_222B02128();
  v6 = sub_222B028D8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v9 = 0x8000000222B10310;
    v10 = 0xD000000000000015;
    if (*(v2 + 16) == 1)
    {
      v10 = 0xD000000000000012;
    }

    else
    {
      v9 = 0x8000000222B10330;
    }

    if (*(v2 + 16))
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x646570706F7473;
    }

    if (*(v2 + 16))
    {
      v12 = v9;
    }

    else
    {
      v12 = 0xE700000000000000;
    }

    v13 = sub_222A230FC(v11, v12, &v16);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_222A1C000, v5, v6, "PluginEventsScheduler unsubscribing from Biome streams; previous state was %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223DC7E30](v8, -1, -1);
    MEMORY[0x223DC7E30](v7, -1, -1);
  }

  if (*(v2 + 16) && *(v2 + 16) == 1)
  {

LABEL_18:
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_siriEventProcessor), *(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_siriEventProcessor + 24));
    result = sub_222A87D2C();
    goto LABEL_19;
  }

  v14 = sub_222B02F78();

  if (v14)
  {
    goto LABEL_18;
  }

LABEL_19:
  *(v2 + 16) = v3;
  return result;
}

uint64_t sub_222ADC7B4()
{
  v1 = sub_222B021D8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_222B02238();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + 24);
  aBlock[4] = sub_222ADD3D4;
  v14 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222AD9FB4;
  aBlock[3] = &block_descriptor_12;
  v8 = _Block_copy(aBlock);

  sub_222B02208();
  v12 = MEMORY[0x277D84F90];
  sub_222ADD3F4(qword_280CBA240, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
  sub_222A77D7C(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160);
  sub_222B02BB8();
  MEMORY[0x223DC6BE0](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

uint64_t sub_222ADCA54(void *a1)
{
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v2 = sub_222B02148();
  __swift_project_value_buffer(v2, qword_280CBC458);
  v3 = sub_222B02128();
  v4 = sub_222B028D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_222A1C000, v3, v4, "PluginEventsScheduler received an unsubscribe request", v5, 2u);
    MEMORY[0x223DC7E30](v5, -1, -1);
  }

  v7 = a1[12];
  v6 = a1[13];
  __swift_project_boxed_opaque_existential_1(a1 + 9, v7);
  (*(*(v6 + 16) + 24))(v7);
  v9 = a1[17];
  v8 = a1[18];
  __swift_project_boxed_opaque_existential_1(a1 + 14, v9);
  (*(*(v8 + 8) + 24))(v9);
  v11 = 0;
  return sub_222ADC55C(&v11);
}

uint64_t PluginEventsScheduler.deinit()
{
  v1 = v0;
  v2 = sub_222B021D8();
  v25 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_222B02238();
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_siriEventProcessor;
  sub_222A42E40(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_siriEventProcessor, v33);
  sub_222A42E40(v0 + 72, aBlock);
  v9 = v29;
  v8 = v30;
  __swift_project_boxed_opaque_existential_1(aBlock, v29);
  (*(*(v8 + 2) + 24))(v9);
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  sub_222A42E40(v1 + 112, aBlock);
  v11 = v29;
  v10 = v30;
  __swift_project_boxed_opaque_existential_1(aBlock, v29);
  (*(*(v10 + 1) + 24))(v11);
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  v12 = *(v1 + 24);
  sub_222A42E40(v33, v32);
  v13 = swift_allocObject();
  sub_222A1E5A8(v32, v13 + 16);
  v30 = sub_222ADD43C;
  v31 = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222AD9FB4;
  v29 = &block_descriptor_3;
  v14 = _Block_copy(aBlock);
  v15 = v12;
  sub_222B02208();
  v27 = MEMORY[0x277D84F90];
  sub_222ADD3F4(qword_280CBA240, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
  sub_222A77D7C(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160);
  sub_222B02BB8();
  MEMORY[0x223DC6BE0](0, v7, v4, v14);
  _Block_release(v14);

  (*(v25 + 8))(v4, v2);
  (*(v23 + 8))(v7, v24);

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v16 = sub_222B02148();
  __swift_project_value_buffer(v16, qword_280CBC458);
  v17 = sub_222B02128();
  v18 = sub_222B028D8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_222A1C000, v17, v18, "PluginEventsScheduler will be deallocated", v19, 2u);
    MEMORY[0x223DC7E30](v19, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0(v33);
  __swift_destroy_boxed_opaque_existential_0((v1 + 32));
  __swift_destroy_boxed_opaque_existential_0((v1 + 72));
  __swift_destroy_boxed_opaque_existential_0((v1 + 112));
  v20 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_pluginPath;
  v21 = sub_222B01748();
  (*(*(v21 - 8) + 8))(v1 + v20, v21);

  __swift_destroy_boxed_opaque_existential_0((v1 + v26));
  return v1;
}

uint64_t PluginEventsScheduler.__deallocating_deinit()
{
  PluginEventsScheduler.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_222ADD0B0()
{
  v1 = v0;
  if ([objc_opt_self() sharedMGWrapper])
  {
    sub_222B02BA8();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    sub_222A250BC(0, &qword_280CB83E0, off_2784B85F8);
    if (swift_dynamicCast())
    {
      v2 = [v8 isDeviceIPad];

      *(v0 + 16) = v2;
      return v1;
    }
  }

  else
  {
    sub_222A254C4(v11);
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v3 = sub_222B02148();
  __swift_project_value_buffer(v3, qword_280CBC458);
  v4 = sub_222B02128();
  v5 = sub_222B028E8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_222A1C000, v4, v5, "DeviceConfiguration cannot initialise MobileGestalt instance", v6, 2u);
    MEMORY[0x223DC7E30](v6, -1, -1);
  }

  *(v1 + 16) = 0;
  return v1;
}

id sub_222ADD258()
{
  v1 = v0;
  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v3 = result;
    v4 = [result isSharedIPad];

    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v5 = sub_222B02148();
    __swift_project_value_buffer(v5, qword_280CBC458);

    v6 = sub_222B02128();
    v7 = sub_222B028D8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109376;
      *(v8 + 4) = *(v1 + 16);

      *(v8 + 8) = 1024;
      *(v8 + 10) = v4;
      _os_log_impl(&dword_222A1C000, v6, v7, "DeviceConfiguration fetched device parameters: isIPad=%{BOOL}d, isSharedIPad=%{BOOL}d", v8, 0xEu);
      MEMORY[0x223DC7E30](v8, -1, -1);
    }

    else
    {
    }

    return (*(v1 + 16) & v4 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_222ADD3F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_222ADD470()
{
  result = qword_27D01E310;
  if (!qword_27D01E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E310);
  }

  return result;
}

uint64_t type metadata accessor for PluginEventsScheduler(uint64_t a1)
{
  result = qword_280CB6570;
  if (!qword_280CB6570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222ADD528(uint64_t a1)
{
  result = sub_222B01748();
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

uint64_t sub_222ADD6EC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_27Tm(uint64_t a1)
{

  if (*(v1 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

NSObject __swiftcall Int.toNSObject()()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  return [v2 initWithInteger_];
}

id sub_222ADD8A4()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  return [v2 initWithInteger_];
}

NSObject __swiftcall Double.toNSObject()()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  return [v2 initWithDouble_];
}

id sub_222ADD934()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  return [v2 initWithDouble_];
}

NSObject __swiftcall Bool.toNSObject()()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  return [v2 initWithInteger_];
}

id sub_222ADD9C4()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  return [v2 initWithInteger_];
}

uint64_t sub_222ADDA20(void (*a1)(uint64_t *__return_ptr, int *))
{
  v2 = v1;
  v3 = sub_222B02D68();
  sub_222B02E18();
  if (v37)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_37:

    return v4;
  }

  v4 = MEMORY[0x277D84F90];
  v5 = v36;
  v31 = v3;
  while (1)
  {
    v39 = v5;
    v7 = v2;
    a1(&v38, &v39);
    if (v2)
    {
      goto LABEL_36;
    }

    v8 = v38;
    v9 = v38 >> 62;
    if (v38 >> 62)
    {
      v10 = sub_222B02DC8();
    }

    else
    {
      v10 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v4 >> 62;
    if (v4 >> 62)
    {
      v30 = sub_222B02DC8();
      v13 = v30 + v10;
      if (__OFADD__(v30, v10))
      {
LABEL_35:
        __break(1u);
LABEL_36:

        goto LABEL_37;
      }
    }

    else
    {
      v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_35;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v35 = v10;
    if (!result)
    {
      if (!v11)
      {
        goto LABEL_18;
      }

LABEL_17:
      sub_222B02DC8();
      goto LABEL_18;
    }

    if (v11)
    {
      goto LABEL_17;
    }

    v14 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v13 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v15 = v3;
      goto LABEL_19;
    }

LABEL_18:
    v15 = v3;
    result = sub_222B02CC8();
    v4 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
LABEL_19:
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    v18 = v8;
    if (v9)
    {
      v20 = v14;
      result = sub_222B02DC8();
      v14 = v20;
      v19 = result;
    }

    else
    {
      v19 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v19)
    {
      break;
    }

    if (((v17 >> 1) - v16) < v35)
    {
      goto LABEL_39;
    }

    v34 = v4;
    v21 = v14 + 8 * v16 + 32;
    v32 = v14;
    if (v9)
    {
      if (v19 < 1)
      {
        goto LABEL_41;
      }

      sub_222A352E8(&unk_27D01E360, &qword_27D01DB88, &qword_222B0B2E0, MEMORY[0x277D83988]);
      v22 = 0;
      v23 = v18;
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DB88, &qword_222B0B2E0);
        v24 = sub_222A6E00C(&v36, v22, v23);
        v26 = *v25;
        (v24)(&v36, 0);
        *(v21 + 8 * v22++) = v26;
      }

      while (v19 != v22);
    }

    else
    {
      sub_222A250BC(0, &qword_280CB4BB0, 0x277D5A790);
      swift_arrayInitWithCopy();
    }

    v2 = v7;
    v3 = v31;
    v4 = v34;
    if (v35 > 0)
    {
      v27 = *(v32 + 16);
      v28 = __OFADD__(v27, v35);
      v29 = v27 + v35;
      if (v28)
      {
        goto LABEL_40;
      }

      *(v32 + 16) = v29;
    }

LABEL_5:
    sub_222B02E18();
    v5 = v36;
    if (v37)
    {
      goto LABEL_37;
    }
  }

  v2 = v7;
  v3 = v15;
  if (v35 <= 0)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_222ADDD74(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = *(a3 + 16);
  if (!v30)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v29 = a3 + 32;
  while (1)
  {
    v36 = *(v29 + 8 * v5);
    a1(&v35, &v36);
    if (v4)
    {

      return v6;
    }

    v8 = v35;
    v9 = v35 >> 62;
    if (v35 >> 62)
    {
      v10 = sub_222B02DC8();
    }

    else
    {
      v10 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v6 >> 62;
    if (v6 >> 62)
    {
      v27 = sub_222B02DC8();
      v13 = v27 + v10;
      if (__OFADD__(v27, v10))
      {
LABEL_34:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_34;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v33 = v10;
    if (!result)
    {
      if (!v11)
      {
        goto LABEL_17;
      }

LABEL_16:
      sub_222B02DC8();
      goto LABEL_17;
    }

    if (v11)
    {
      goto LABEL_16;
    }

    v14 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v13 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v32 = v6;
      goto LABEL_18;
    }

LABEL_17:
    result = sub_222B02CC8();
    v32 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v9)
    {
      break;
    }

    v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v16 >> 1) - v15) < v33)
    {
      goto LABEL_39;
    }

    v19 = v14 + 8 * v15 + 32;
    v28 = v14;
    if (v9)
    {
      if (v17 < 1)
      {
        goto LABEL_41;
      }

      sub_222A352E8(&qword_27D01E338, &qword_27D01E330, &unk_222B0E0D0, MEMORY[0x277D83988]);
      for (i = 0; i != v17; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E330, &unk_222B0E0D0);
        v21 = sub_222A6E11C(v34, i, v8);
        v23 = *v22;
        swift_unknownObjectRetain();
        (v21)(v34, 0);
        *(v19 + 8 * i) = v23;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E328, &qword_222B0E0C8);
      swift_arrayInitWithCopy();
    }

    v6 = v32;
    v4 = 0;
    if (v33 > 0)
    {
      v24 = *(v28 + 16);
      v25 = __OFADD__(v24, v33);
      v26 = v24 + v33;
      if (v25)
      {
        goto LABEL_40;
      }

      *(v28 + 16) = v26;
    }

LABEL_4:
    if (++v5 == v30)
    {
      return v6;
    }
  }

  v18 = v14;
  result = sub_222B02DC8();
  v14 = v18;
  v17 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  v6 = v32;
  if (v33 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

void sub_222ADE08C(uint64_t a2@<X1>, uint64_t a3@<X2>, void *x8_0@<X8>)
{
  v6 = sub_222ADE468(a2, a3);
  if (!v4)
  {
    v7 = v6;
    sub_222B017C8();
    v8 = [v7 publisherFromStartTime_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA70, &unk_222B0AB20);
    nullsub_1();
    v10 = v9;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E318, &unk_222B0E048);
    WitnessTable = swift_getWitnessTable();
    sub_222ACCD28(v11, WitnessTable, x8_0);
  }
}

uint64_t static DefaultBiomeReader.shared.getter()
{
  type metadata accessor for DefaultBiomeReader();

  return swift_initStaticObject();
}

void *sub_222ADE1AC(uint64_t a1, uint64_t a2)
{
  v11[3] = a1;
  v4 = sub_222ADDD74(sub_222ADE794, v11, a2);
  if (!v3)
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E320, &unk_222B0E058);
    v2 = swift_allocObject();
    v2[6] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DCE0, &qword_222B0D8D0);
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    if (v5 >> 62)
    {
      v7 = sub_222B02DC8();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = sub_222A352E8(&qword_280CB4AB0, &unk_27D01DCE0, &qword_222B0D8D0, MEMORY[0x277D84F38]);
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    v2[2] = v6;
    v2[3] = v8;
    v2[4] = v9;
    v2[5] = v8;
  }

  return v2;
}

double sub_222ADE2E4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1;
  MEMORY[0x223DC6810]();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_222B02648();
  }

  sub_222B02688();
  swift_endAccess();
  return result;
}

id sub_222ADE3E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

  if (a4)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v9 = [v4 initWithPrivateStreamIdentifier:v7 storeConfig:a3 eventDataClass:ObjCClassFromMetadata];

  return v9;
}

id sub_222ADE468(uint64_t a1, uint64_t a2)
{
  sub_222A250BC(0, &qword_27D01E350, 0x277CF1A10);
  if (!swift_dynamicCastMetatype())
  {
    sub_222B02C88();

    v21 = 0xD000000000000019;
    v22 = 0x8000000222B159E0;
    swift_getMetatypeMetadata();
    v18 = sub_222B023D8();
    MEMORY[0x223DC66E0](v18);

    MEMORY[0x223DC66E0](41, 0xE100000000000000);
LABEL_9:
    sub_222ADECBC();
    swift_allocError();
    *v20 = v21;
    v20[1] = v22;
    return swift_willThrow();
  }

  v2 = [BiomeLibrary() Media];
  swift_unknownObjectRelease();
  v3 = [v2 NowPlaying];
  swift_unknownObjectRelease();
  v4 = [v3 configuration];

  if (!v4)
  {
    sub_222B02C88();

    v21 = 0xD00000000000002CLL;
    v22 = 0x8000000222B15A00;
    swift_getMetatypeMetadata();
    v19 = sub_222B023D8();
    MEMORY[0x223DC66E0](v19);

    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v5 storeConfig];
  if ([objc_opt_self() isTestPathOverridden])
  {
    v7 = [v6 pruningPolicy];
    if (v7)
    {
      v8 = v7;
      [v7 setFilterByAgeOnRead_];
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E358, &qword_222B0E0E8);
  v9 = [v5 streamIdentifier];
  v10 = sub_222B02388();
  v12 = v11;

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = v6;
  v15 = objc_allocWithZone(ObjCClassFromMetadata);
  v16 = sub_222ADE3E0(v10, v12, v6, 0);

  return v16;
}

unint64_t sub_222ADE794@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_222ADEC48(*(v2 + 24), *a1, *a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_222ADE858(void *a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v29 = a1;
  v3 = sub_222B01848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222B01588();
  sub_222B017C8();
  v8 = v7;
  v9 = *(v4 + 8);
  v9(v6, v3);
  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  sub_222B01578();
  sub_222B017C8();
  v12 = v11;
  v9(v6, v3);
  v13 = v29;
  v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v15 = [v13 publisherWithStartTime:v10 endTime:v14 maxEvents:0 reversed:0];

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = MEMORY[0x277D84F90];
    v34 = nullsub_1;
    v35 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_222A30CA0;
    v33 = &block_descriptor_13;
    v19 = _Block_copy(&aBlock);
    v20 = swift_allocObject();
    *(v20 + 16) = v28;
    *(v20 + 24) = v18;
    v34 = sub_222ADED28;
    v35 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_222A30CA0;
    v33 = &block_descriptor_11;
    v21 = _Block_copy(&aBlock);

    v22 = [v17 sinkWithCompletion:v19 receiveInput:v21];
    swift_unknownObjectRelease();
    _Block_release(v21);
    _Block_release(v19);

    swift_beginAccess();
    v23 = *(v18 + 16);
  }

  else
  {
    swift_unknownObjectRelease();
    aBlock = 0;
    v31 = 0xE000000000000000;
    sub_222B02C88();

    aBlock = 0xD00000000000002BLL;
    v31 = 0x8000000222B159B0;
    v36 = v13;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E340, &qword_222B0E0E0);
    v24 = sub_222B023D8();
    MEMORY[0x223DC66E0](v24);

    v25 = aBlock;
    v23 = v31;
    sub_222ADECBC();
    swift_allocError();
    *v26 = v25;
    v26[1] = v23;
    swift_willThrow();
  }

  return v23;
}

unint64_t sub_222ADEC48(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v6 = sub_222ADE468(a2, a3);
  if (!v3)
  {
    v7 = v6;
    v4 = sub_222ADE858(v7, a1, v4);
  }

  return v4;
}

unint64_t sub_222ADECBC()
{
  result = qword_27D01E348;
  if (!qword_27D01E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E348);
  }

  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_222ADED68(uint64_t a1, void (*a2)(void))
{
  v4 = v2;
  v5 = sub_222A26F40(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a2();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = sub_222B018D8();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
  v12 = *(*(v9 + 56) + 8 * v7);
  sub_222ADF894(v7, v9);
  *v4 = v9;
  return v12;
}

uint64_t sub_222ADEE38(uint64_t a1)
{
  v2 = v1;
  v3 = sub_222A26F40(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_222A2C4C0();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_222B018D8();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_222ADF894(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_222ADEF00(uint64_t a1)
{
  v2 = v1;
  v3 = sub_222A26F40(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v20 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_222A2D4D8();
    v7 = v20;
  }

  v8 = *(v7 + 48);
  v9 = sub_222B018D8();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = (*(v7 + 56) + 16 * v5);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  sub_222ADFE18(v5, v7);
  *v2 = v7;
  v15 = 256;
  if (!v12)
  {
    v15 = 0;
  }

  v16 = v15 | v11;
  v17 = 0x10000;
  if (!v13)
  {
    v17 = 0;
  }

  v18 = 0x1000000;
  if (!v14)
  {
    v18 = 0;
  }

  return v16 | v17 | v18;
}

uint64_t sub_222ADF020(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = a1;
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_222A2E3A4(), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v12 = sub_222A3A264(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D7B8, &unk_222B09100);
    v11 = swift_allocObject();
    *(v11 + 16) = v12;
  }

  sub_222ADF440(a2, a3);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_222AE9600(v11, v7, isUniquelyReferenced_nonNull_native);
  *(v4 + 16) = v15;
  swift_endAccess();
}

uint64_t sub_222ADF14C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (!*(*(v2 + 16) + 16))
  {
    return MEMORY[0x277D84F90];
  }

  sub_222A2E3A4();
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v6 = MEMORY[0x277D84F90];
    swift_beginAccess();

    v7 = sub_222ADEE38(a2);
    swift_endAccess();

    if (v7)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

double sub_222ADF238(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_222B018D8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(v2 + 16);
  if (*(v10 + 16) && (v11 = sub_222A2E3A4(), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  (*(v7 + 16))(v9, a2, v6);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_222AA8E90(0, v13[2] + 1, 1, v13);
  }

  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = sub_222AA8E90((v14 > 1), v15 + 1, 1, v13);
  }

  v13[2] = v15 + 1;
  (*(v7 + 32))(v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, v9, v6);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  sub_222AE8EA8(v13, a1, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v19;
  swift_endAccess();
  return result;
}

double sub_222ADF440(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 16);
  if (*(v6 + 16))
  {

    v7 = sub_222A26F40(a1);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = a2;
  MEMORY[0x223DC6810]();
  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_222B02648();
  }

  sub_222B02688();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  sub_222AE974C(v9, a1, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v13;
  swift_endAccess();
  return result;
}

unint64_t sub_222ADF594(int64_t a1, uint64_t a2)
{
  v4 = sub_222B018D8();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_222B02BD8();
    v14 = v12;
    v41 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v42 = *(v15 + 56);
    v39 = (v15 - 8);
    v40 = v16;
    do
    {
      v17 = v9;
      v18 = v42 * v11;
      v19 = v14;
      v20 = v15;
      v40(v8, *(a2 + 48) + v42 * v11, v4);
      sub_222AE00D0();
      v21 = sub_222B022E8();
      result = (*v39)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v41)
      {
        if (v22 >= v41 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          v26 = v25 + v42 * a1;
          v27 = v25 + v18 + v42;
          v28 = v42 * a1 < v18 || v26 >= v27;
          v15 = v20;
          if (v28)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v42 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v29 = *(a2 + 56);
          v30 = *(*(type metadata accessor for LogicalClockTable.DeviceFixedContextTime(0) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v11;
          v33 = v29 + v30 * v11 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v17;
            v14 = v19;
          }

          else
          {
            a1 = v11;
            v35 = v31 == v32;
            v9 = v17;
            v14 = v19;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v41 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_222ADF894(int64_t a1, uint64_t a2)
{
  v4 = sub_222B018D8();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_222B02BD8();
    v14 = v12;
    v37 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = *(v15 + 56);
    v35 = (v15 - 8);
    v36 = v16;
    do
    {
      v17 = v9;
      v18 = v38 * v11;
      v19 = v14;
      v20 = v15;
      v36(v8, *(a2 + 48) + v38 * v11, v4);
      sub_222AE00D0();
      v21 = sub_222B022E8();
      result = (*v35)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v37)
      {
        if (v22 >= v37 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v38 * a1;
          v26 = v25 + v18 + v38;
          v27 = v38 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v38 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v11);
          if (a1 != v11 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v37 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(a2 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v34;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_222ADFB4C(int64_t a1, uint64_t a2)
{
  v4 = sub_222B018D8();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_222B02BD8();
    v14 = v12;
    v37 = (v13 + 1) & v12;
    v38 = a2 + 64;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    v36 = v16;
    do
    {
      v18 = v17 * v11;
      v19 = v14;
      v20 = v15;
      v36(v8, *(a2 + 48) + v17 * v11, v4);
      sub_222AE00D0();
      v21 = sub_222B022E8();
      result = (*v35)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v37)
      {
        if (v22 >= v37 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          v26 = v17 * a1;
          v27 = v25 + v17 * a1;
          v28 = v25 + v18 + v17;
          if (v17 * a1 < v18 || v27 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v26 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v30 = *(a2 + 56);
          result = v30 + v26;
          if (v26 < v18 || result >= v30 + v18 + v17)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v15 = v20;
            v14 = v19;
          }

          else
          {
            a1 = v11;
            v31 = v26 == v18;
            v15 = v20;
            v14 = v19;
            if (!v31)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v37 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v9 = v38;
    }

    while (((*(v38 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(a2 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v34;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_222ADFE18(int64_t a1, uint64_t a2)
{
  v4 = sub_222B018D8();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_222B02BD8();
    v14 = v12;
    v37 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = *(v15 + 56);
    v35 = (v15 - 8);
    v36 = v16;
    do
    {
      v17 = v9;
      v18 = v38 * v11;
      v19 = v14;
      v20 = v15;
      v36(v8, *(a2 + 48) + v38 * v11, v4);
      sub_222AE00D0();
      v21 = sub_222B022E8();
      result = (*v35)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v37)
      {
        if (v22 >= v37 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v38 * a1;
          v26 = v25 + v18 + v38;
          v27 = v38 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v38 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 16 * a1);
          v31 = (v29 + 16 * v11);
          if (a1 != v11 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v37 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(a2 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v34;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_222AE00D0()
{
  result = qword_280CBA1F0;
  if (!qword_280CBA1F0)
  {
    sub_222B018D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA1F0);
  }

  return result;
}

uint64_t PLUSSuggestionRedundancyState.hashValue.getter()
{
  v1 = *v0;
  sub_222B03128();
  MEMORY[0x223DC7380](v1);
  return sub_222B03168();
}

uint64_t PLUSSuggestionMetadata.__allocating_init(suggestionSurfaced:suggestionNoveltyState:)(_BYTE *a1, char *a2)
{
  result = swift_allocObject();
  v5 = *a2;
  *(result + 16) = *a1;
  *(result + 17) = v5;
  return result;
}

uint64_t PLUSSuggestionMetadata.init(suggestionSurfaced:suggestionNoveltyState:)(_BYTE *a1, char *a2)
{
  v3 = *a2;
  *(v2 + 16) = *a1;
  *(v2 + 17) = v3;
  return v2;
}

unint64_t sub_222AE02E8()
{
  result = qword_27D01E370;
  if (!qword_27D01E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E370);
  }

  return result;
}

unint64_t sub_222AE0370()
{
  result = qword_27D01E388;
  if (!qword_27D01E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E388);
  }

  return result;
}

unint64_t sub_222AE03F8()
{
  result = qword_27D01E3A0;
  if (!qword_27D01E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E3A0);
  }

  return result;
}

void *Queue.__allocating_init()()
{
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *Queue.init()()
{
  result = v0;
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  return result;
}

uint64_t sub_222AE05A0@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[2];
  if (v3)
  {
    v4 = *(v2 + 80);
    v11 = *(v4 - 8);
    (*(v11 + 16))(a1, v3 + *(*v3 + 88), v4);
    v6 = *(v11 + 56);
    v7 = a1;
    v8 = 0;
    v9 = v4;
  }

  else
  {
    v9 = *(v2 + 80);
    v6 = *(*(v9 - 8) + 56);
    v7 = a1;
    v8 = 1;
  }

  return v6(v7, v8, 1, v9);
}

uint64_t sub_222AE06D0(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v16 - v5;
  type metadata accessor for Queue.QueueNode(0, v3, v7, v8);
  (*(v4 + 16))(v6, a1, v3);
  v9 = swift_allocObject();
  v10 = *v9;
  *(v9 + *(*v9 + 96)) = 0;
  result = (*(*(*(v10 + 80) - 8) + 32))(v9 + *(*v9 + 88), v6);
  *(v9 + *(*v9 + 96)) = 0;
  v12 = v1[4];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v1[4] = v14;
    v15 = v1[3];
    if (v15)
    {
      *(v15 + *(*v15 + 96)) = v9;
    }

    v1[3] = v9;

    if (!v1[2])
    {
      v1[2] = v1[3];
    }
  }

  return result;
}

uint64_t sub_222AE0924@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[2];
  if (v3)
  {
    v4 = *(v2 + 80);
    v5 = *(v4 - 8);
    (*(v5 + 16))(a1, v3 + *(*v3 + 88), v4);
    (*(v5 + 56))(a1, 0, 1, v4);
  }

  else
  {
    (*(*(*(v2 + 80) - 8) + 56))(a1, 1, 1);
  }

  return sub_222A95844(v1);
}

uint64_t sub_222AE0A64(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v10 - v4;
  v11 = sub_222B02658();
  sub_222B026C8();
  sub_222B02638();
  v6 = v1[2];

  if (v6)
  {
    v7 = (v3 + 16);
    do
    {
      (*v7)(v5, v6 + *(*v6 + 88), v2);
      sub_222B026A8();
      v8 = *(v6 + *(*v6 + 96));

      v6 = v8;
    }

    while (v8);
  }

  return v11;
}

uint64_t *sub_222AE0BDC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  *(v2 + *(*v2 + 96)) = 0;
  (*(*(*(v4 + 80) - 8) + 32))(v2 + *(*v2 + 88), a1);
  *(v2 + *(*v2 + 96)) = a2;
  return v2;
}

uint64_t sub_222AE0C8C()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 96);
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  if (v2)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v3 = *(v2 + *(*v2 + 96));
      swift_retain_n();

      v2 = v3;
    }

    while (v3);
  }

  return v0;
}

uint64_t sub_222AE0D84()
{
  sub_222AE0C8C();

  return swift_deallocClassInstance();
}

uint64_t Queue.deinit()
{

  return v0;
}

uint64_t Queue.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t Queue.pop(if:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X8>)
{
  v15 = a1;
  v4 = *(*v2 + 80);
  v5 = sub_222B02B28();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v7);
  v12 = &v14 - v11;
  sub_222AE05A0(v9);
  if ((*(v10 + 48))(v9, 1, v4) == 1)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    (*(v10 + 32))(v12, v9, v4);
    if (v15(v12))
    {
      sub_222AE0924(a2);
      return (*(v10 + 8))(v12, v4);
    }

    (*(v10 + 8))(v12, v4);
  }

  return (*(v10 + 56))(a2, 1, 1, v4);
}

uint64_t Queue.pop(while:)(uint64_t (*a1)(char *), uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = sub_222B02B28();
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  v10 = *(v5 - 8);
  v11 = MEMORY[0x28223BE20](v7);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = sub_222B02658();
  v25 = v2;
  v26 = v16;
  v23 = a1;
  v24 = a2;
  Queue.pop(if:)(a1, v9);
  v17 = *(v10 + 48);
  if (v17(v9, 1, v5) != 1)
  {
    v22 = *(v10 + 32);
    do
    {
      v22(v15, v9, v5);
      (*(v10 + 16))(v13, v15, v5);
      sub_222B026C8();
      sub_222B026A8();
      (*(v10 + 8))(v15, v5);
      Queue.pop(if:)(v23, v9);
    }

    while (v17(v9, 1, v5) != 1);
  }

  (*(v20 + 8))(v9, v21);
  return v26;
}

uint64_t Queue.popAll()()
{
  v1 = *(*v0 + 80);
  v2 = sub_222B02B28();
  v16 = *(v2 - 8);
  v17 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v15 - v4;
  v6 = *(v1 - 8);
  v7 = MEMORY[0x28223BE20](v3);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = sub_222B02658();
  v19 = v0;
  v20 = v12;
  sub_222AE0924(v5);
  v13 = *(v6 + 48);
  if (v13(v5, 1, v1) != 1)
  {
    v18 = *(v6 + 32);
    do
    {
      v18(v11, v5, v1);
      (*(v6 + 16))(v9, v11, v1);
      sub_222B026C8();
      sub_222B026A8();
      (*(v6 + 8))(v11, v1);
      sub_222AE0924(v5);
    }

    while (v13(v5, 1, v1) != 1);
  }

  (*(v16 + 8))(v5, v17);
  return v20;
}

uint64_t sub_222AE16C4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t FeatureManager.init(trialStatus:featureFlags:currentLocales:osResolver:)(void *a1, void *a2, _OWORD *a3, void *a4)
{
  v27 = a3;
  v7 = a1[3];
  v26 = a1[4];
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = a2[3];
  v25 = a2[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a2, v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v18 = a4[3];
  v17 = a4[4];
  v19 = __swift_mutable_project_boxed_opaque_existential_1(a4, v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21);
  v23 = sub_222AE2324(v10, v15, v27, v21, v28, v7, v12, v18, v26, v25, v17);
  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v23;
}

void *FeatureManager.deinit()
{
  sub_222A35F58(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  return v0;
}

uint64_t sub_222AE1A74(void *a1)
{
  v2 = v1;
  v10 = *(v1 + 128);
  v3 = *(v1 + 144);
  v4 = v2[19];
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v12 = v10;
  v13 = v3;
  v14 = v4;
  v7 = v2[29];
  v8 = v2[30];
  __swift_project_boxed_opaque_existential_1(v2 + 26, v7);
  (*(v8 + 8))(&v11, v7, v8);
  return (*(v6 + 8))(v2 + 2, &v12, &v11, v5, v6) & 1;
}

uint64_t sub_222AE1B44(void *a1, __int128 *a2)
{
  v3 = v2;
  v11 = *a2;
  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v13 = v11;
  v14 = v4;
  v15 = v5;
  v8 = v3[29];
  v9 = v3[30];
  __swift_project_boxed_opaque_existential_1(v3 + 26, v8);
  (*(v9 + 8))(&v12, v8, v9);
  return (*(v7 + 8))(v3 + 2, &v13, &v12, v6, v7) & 1;
}

double sub_222AE1C10@<D0>(void *a1@<X8>)
{
  v2 = v1[17];
  v3 = v1[18];
  v4 = v1[19];
  *a1 = v1[16];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;

  return result;
}

uint64_t sub_222AE1C54(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v7[0] = v1;
  v7[1] = v3;

  FeatureResolver.getTrialFactorValue(_:scope:)(v2, v7);
  v5 = v4;

  return v5;
}

uint64_t FeatureManager.__allocating_init(trialStatus:featureFlags:)(void *a1, void *a2)
{
  v5 = sub_222B01988();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_222A42E40(a1, v18);
  sub_222A42E40(a2, v17);
  v8 = [objc_opt_self() currentLocale];
  sub_222B01918();

  v9 = [objc_opt_self() sharedPreferences];
  CurrentLocales.init(deviceLocale:siriPreferences:)(v7, v9, v16);
  v14 = &type metadata for OSTypeResolver;
  v15 = &protocol witness table for OSTypeResolver;
  v10 = (*(v2 + 104))(v18, v17, v16, v13);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

uint64_t FeatureManager.__allocating_init(trialStatus:featureFlags:currentLocales:osResolver:)(void *a1, void *a2, _OWORD *a3, void *a4)
{
  v29 = a3;
  v7 = swift_allocObject();
  v8 = a1[3];
  v27 = a1[4];
  v28 = v7;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = a2[3];
  v26 = a2[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v19 = a4[3];
  v18 = a4[4];
  v20 = __swift_mutable_project_boxed_opaque_existential_1(a4, v19);
  MEMORY[0x28223BE20](v20);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  v24 = sub_222AE2324(v11, v16, v29, v22, v28, v8, v13, v19, v27, v26, v18);
  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v24;
}

uint64_t FeatureManager.__deallocating_deinit()
{
  sub_222A35F58(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));

  return swift_deallocClassInstance();
}

uint64_t sub_222AE2188(void *a1, __int128 *a2)
{
  v3 = *v2;
  v11 = *a2;
  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v13 = v11;
  v14 = v4;
  v15 = v5;
  v8 = v3[29];
  v9 = v3[30];
  __swift_project_boxed_opaque_existential_1(v3 + 26, v8);
  (*(v9 + 8))(&v12, v8, v9);
  return (*(v7 + 8))(v3 + 2, &v13, &v12, v6, v7) & 1;
}

double sub_222AE2254@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 152);
  *a1 = *(*v1 + 128);
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;

  return result;
}

uint64_t sub_222AE229C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v7[0] = v1;
  v7[1] = v3;

  FeatureResolver.getTrialFactorValue(_:scope:)(v2, v7);
  v5 = v4;

  return v5;
}

uint64_t sub_222AE2324(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a5 + 80) = a6;
  *(a5 + 88) = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a5 + 56));
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  *(a5 + 40) = a7;
  *(a5 + 48) = a10;
  v20 = __swift_allocate_boxed_opaque_existential_1((a5 + 16));
  (*(*(a7 - 8) + 32))(v20, a2, a7);
  *(a5 + 232) = a8;
  *(a5 + 240) = a11;
  v21 = __swift_allocate_boxed_opaque_existential_1((a5 + 208));
  (*(*(a8 - 8) + 32))(v21, a4, a8);
  v22 = a3[5];
  *(a5 + 160) = a3[4];
  *(a5 + 176) = v22;
  *(a5 + 192) = a3[6];
  v23 = a3[1];
  *(a5 + 96) = *a3;
  *(a5 + 112) = v23;
  v24 = a3[3];
  *(a5 + 128) = a3[2];
  *(a5 + 144) = v24;
  return a5;
}

uint64_t FindDeviceAndFriendsIntentFeatureExtractor.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = &unk_2835F1F38;
  return result;
}

uint64_t FindDeviceAndFriendsIntentFeatureExtractor.init()()
{
  result = v0;
  *(v0 + 16) = &unk_2835F1F38;
  return result;
}

uint64_t sub_222AE264C(id *a1)
{
  v1 = *a1;
  v2 = [*a1 intent];
  v3 = sub_222A816E4();
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v3;
  v6 = v4;
  v7 = [v2 parametersByName];
  if (!v7)
  {

LABEL_19:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = sub_222B022B8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9E8, &unk_222B06120);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_222B05260;
  DeviceAndFriends = type metadata accessor for FindDeviceAndFriendsFeature.EventType(0);
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = v6;
  *(v10 + 56) = DeviceAndFriends;
  *(v10 + 64) = sub_222AE2EF0(&qword_27D01E3B8, type metadata accessor for FindDeviceAndFriendsFeature.EventType);
  *(v10 + 32) = v12;

  v13 = [v1 _donatedBySiri];
  v14 = type metadata accessor for FindDeviceAndFriendsFeature.DonatedBySiri(0);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v10 + 96) = v14;
  *(v10 + 104) = sub_222AE2EF0(&qword_27D01E3C0, type metadata accessor for FindDeviceAndFriendsFeature.DonatedBySiri);
  *(v10 + 72) = v15;
  if (v5 == 0xD000000000000012 && v6 == 0x8000000222B10350 || (sub_222B02F78() & 1) != 0)
  {

    if (*(v9 + 16))
    {
      v16 = sub_222A26EC8(0x656369766564, 0xE600000000000000);
      if (v17)
      {
        sub_222A25344(*(v9 + 56) + 32 * v16, &v55);
        sub_222A250BC(0, &qword_27D01E3E0, 0x277CD3B58);
        if (swift_dynamicCast())
        {
          v18 = v58;
          v19 = [v58 displayString];
          v20 = sub_222B02388();
          v22 = v21;

          v23 = type metadata accessor for FindDeviceAndFriendsFeature.Name(0);
          v24 = swift_allocObject();
          *(v24 + 16) = v20;
          *(v24 + 24) = v22;
          v10 = sub_222AA8FDC(1, 3, 1, v10);

          v56 = v23;
          v57 = sub_222AE2EF0(&qword_27D01E3D0, type metadata accessor for FindDeviceAndFriendsFeature.Name);
          *&v55 = v24;
          *(v10 + 16) = 3;
          sub_222A2577C(&v55, v10 + 112);
        }
      }
    }

    if (!*(v9 + 16))
    {
      goto LABEL_38;
    }

    v25 = "playSoundDeviceClass";
    v26 = 0xD000000000000011;
    goto LABEL_12;
  }

  if (v5 == 0x6E756F5379616C50 && v6 == 0xEF746E65746E4964 || (sub_222B02F78() & 1) != 0)
  {

    if (*(v9 + 16))
    {
      v35 = sub_222A26EC8(0x656369766564, 0xE600000000000000);
      if (v36)
      {
        sub_222A25344(*(v9 + 56) + 32 * v35, &v55);
        sub_222A250BC(0, &qword_27D01E3E0, 0x277CD3B58);
        if (swift_dynamicCast())
        {
          v37 = v58;
          v38 = [v58 displayString];
          v39 = sub_222B02388();
          v41 = v40;

          v42 = type metadata accessor for FindDeviceAndFriendsFeature.Name(0);
          v43 = swift_allocObject();
          *(v43 + 16) = v39;
          *(v43 + 24) = v41;
          v10 = sub_222AA8FDC(1, 3, 1, v10);

          v56 = v42;
          v57 = sub_222AE2EF0(&qword_27D01E3D0, type metadata accessor for FindDeviceAndFriendsFeature.Name);
          *&v55 = v43;
          *(v10 + 16) = 3;
          sub_222A2577C(&v55, v10 + 112);
        }
      }
    }

    if (!*(v9 + 16))
    {
      goto LABEL_38;
    }

    v25 = "er";
    v26 = 0xD000000000000014;
LABEL_12:
    v27 = sub_222A26EC8(v26, v25 | 0x8000000000000000);
    if (v28)
    {
      sub_222A25344(*(v9 + 56) + 32 * v27, &v55);

      if (swift_dynamicCast())
      {
        v29 = v58;
        v30 = type metadata accessor for FindDeviceAndFriendsFeature.DeviceClass(0);
        v31 = swift_allocObject();
        *(v31 + 16) = v29;
        v33 = *(v10 + 16);
        v32 = *(v10 + 24);
        if (v33 >= v32 >> 1)
        {
          v10 = sub_222AA8FDC((v32 > 1), v33 + 1, 1, v10);
        }

        v56 = v30;
        v57 = sub_222AE2EF0(&qword_27D01E3D8, type metadata accessor for FindDeviceAndFriendsFeature.DeviceClass);
        *&v55 = v31;
        *(v10 + 16) = v33 + 1;
        v34 = v10 + 40 * v33 + 32;
        goto LABEL_17;
      }

LABEL_39:

      return v10;
    }

LABEL_38:

    goto LABEL_39;
  }

  if (v5 != 0x6E49657461636F4CLL || v6 != 0xEC000000746E6574)
  {
    v44 = sub_222B02F78();

    if (v44)
    {
      goto LABEL_34;
    }

    return MEMORY[0x277D84F90];
  }

LABEL_34:
  if (!*(v9 + 16))
  {
    goto LABEL_38;
  }

  v45 = sub_222A26EC8(0x6E6F73726570, 0xE600000000000000);
  if ((v46 & 1) == 0)
  {
    goto LABEL_38;
  }

  sub_222A25344(*(v9 + 56) + 32 * v45, &v55);

  sub_222A250BC(0, &qword_27D01E3C8, 0x277CD3E90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_39;
  }

  v47 = v58;
  v48 = [v58 displayName];
  v49 = sub_222B02388();
  v51 = v50;

  v52 = type metadata accessor for FindDeviceAndFriendsFeature.Name(0);
  v53 = swift_allocObject();
  *(v53 + 16) = v49;
  *(v53 + 24) = v51;
  v10 = sub_222AA8FDC(1, 3, 1, v10);

  v56 = v52;
  v57 = sub_222AE2EF0(&qword_27D01E3D0, type metadata accessor for FindDeviceAndFriendsFeature.Name);
  *&v55 = v53;
  *(v10 + 16) = 3;
  v34 = v10 + 112;
LABEL_17:
  sub_222A2577C(&v55, v34);
  return v10;
}

uint64_t FindDeviceAndFriendsFeature.DonatedBySiri.__allocating_init(value:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t FindDeviceAndFriendsFeature.Name.__allocating_init(value:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t FindDeviceAndFriendsFeature.DeviceClass.__allocating_init(value:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t FindDeviceAndFriendsIntentFeatureExtractor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FindDeviceAndFriendsFeature.DonatedBySiri.init(value:)(char a1)
{
  *(v1 + 16) = a1;
  return v1;
}

{
  if (a1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v1 + 16) = a1 & 1;
  }

  return v1;
}

uint64_t sub_222AE2EF0(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t FindDeviceAndFriendsFeature.DonatedBySiri.__allocating_init(value:)(unsigned __int8 a1)
{
  v2 = a1;
  result = swift_allocObject();
  if (v2 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = a1 & 1;
  }

  return result;
}

uint64_t sub_222AE3044(char *a1)
{
  v1 = *a1;
  type metadata accessor for FindDeviceAndFriendsFeature.DonatedBySiri(0);
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222AE307C(unsigned __int8 *a1)
{
  v1 = *a1;
  type metadata accessor for FindDeviceAndFriendsFeature.DonatedBySiri(0);
  result = swift_allocObject();
  if (v1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = v1 & 1;
  }

  return result;
}

uint64_t FindDeviceAndFriendsFeature.Name.init(value:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t FindDeviceAndFriendsFeature.Name.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222AE317C(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a1[1];
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v3;
  return result;
}

uint64_t sub_222AE31D0(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v2 = a1[1];
  a2(0);
  result = swift_allocObject();
  if (v2)
  {
    *(result + 16) = v3;
    *(result + 24) = v2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0B8, &unk_222B07340);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t FindDeviceAndFriendsFeature.DeviceClass.__allocating_init(value:)(uint64_t a1, char a2)
{
  result = swift_allocObject();
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E3E8, &qword_222B0E568);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = a1;
  }

  return result;
}

uint64_t FindDeviceAndFriendsFeature.DeviceClass.init(value:)(uint64_t a1, char a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E3E8, &qword_222B0E568);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v2 + 16) = a1;
  }

  return v2;
}

uint64_t sub_222AE3340(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for FindDeviceAndFriendsFeature.DeviceClass(0);
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222AE3378(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  type metadata accessor for FindDeviceAndFriendsFeature.DeviceClass(0);
  result = swift_allocObject();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E3E8, &qword_222B0E568);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = v1;
  }

  return result;
}

Swift::Void __swiftcall UsageLogger.register(disabled:)(Swift::Bool disabled)
{
  v2 = [objc_opt_self() standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CF38, &unk_222B0A520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222B05250;
  *(inited + 32) = 0xD000000000000014;
  v4 = inited + 32;
  *(inited + 40) = 0x8000000222B11DA0;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = disabled;
  sub_222A396CC(inited);
  swift_setDeallocating();
  sub_222AE3850(v4);
  v5 = sub_222B022A8();

  [v2 registerDefaults_];
}

Swift::Bool __swiftcall UsageLogger.isDisabled()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_222AE36AC(char a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CF38, &unk_222B0A520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222B05250;
  *(inited + 32) = 0xD000000000000014;
  v4 = inited + 32;
  *(inited + 40) = 0x8000000222B11DA0;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = a1;
  sub_222A396CC(inited);
  swift_setDeallocating();
  sub_222AE3850(v4);
  v5 = sub_222B022A8();

  [v2 registerDefaults_];
}

id sub_222AE37C4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t sub_222AE3850(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CF40, &unk_222B055D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222AE3904(uint64_t a1)
{
  v3 = sub_222B018D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E430, &qword_222B0E728);
  v7 = swift_allocObject();
  *(v7 + *(*v7 + 96)) = 0;
  result = (*(v4 + 32))(v7 + *(*v7 + 88), v6, v3);
  *(v7 + *(*v7 + 96)) = 0;
  v9 = v1[4];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v1[4] = v11;
    v12 = v1[3];
    if (v12)
    {
      *(v12 + *(*v12 + 96)) = v7;
    }

    v1[3] = v7;

    if (!v1[2])
    {
      v1[2] = v1[3];
    }
  }

  return result;
}

uint64_t sub_222AE3AFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = swift_allocObject();
  v6 = result;
  *(result + 16) = a1;
  *(result + 24) = 0;
  v7 = v3[4];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v3[4] = v9;
    v10 = v3[3];
    if (v10)
    {
      *(v10 + 24) = result;
    }

    else
    {
    }

    v3[3] = v6;

    if (!v3[2])
    {
      v3[2] = v3[3];
    }
  }

  return result;
}

void sub_222AE3BD8(uint64_t a1, double a2)
{
  v5 = sub_222B018D8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v2 + 40);
  *(v2 + 40) = 0x8000000000000000;
  sub_222AE9778(a1, isUniquelyReferenced_nonNull_native, a2);
  *(v2 + 40) = v14;
  swift_endAccess();
  (*(v6 + 16))(v9, a1, v5);
  swift_beginAccess();
  v13 = sub_222AE4114(v11, v9);
  (*(v6 + 8))(v11, v5);
  swift_endAccess();
  if (v13)
  {
    sub_222AE3904(a1);
  }
}

BOOL sub_222AE3D88(double a1)
{
  v3 = sub_222B018D8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = *(*(v1 + 32) + 16);
  if (v10)
  {
    (*(v4 + 16))(v7, v10 + *(*v10 + 88), v3);
    (*(v4 + 32))(v9, v7, v3);
    swift_beginAccess();
    v11 = *(v1 + 40);
    if (*(v11 + 16))
    {

      v12 = sub_222A26F40(v9);
      if (v13)
      {
        v14 = *(*(v11 + 56) + 8 * v12);
        (*(v4 + 8))(v9, v3);

        return a1 - v14 > 60.0;
      }
    }

    (*(v4 + 8))(v9, v3);
  }

  return 0;
}

uint64_t sub_222AE3F58()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222AE3FC4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_222B03128();
  sub_222B02448();
  v8 = sub_222B03168();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_222B02F78() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_222AE4EBC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_222AE4114(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_222B018D8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_222A2DB64(&qword_280CBA1F0, MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_222B022E8();
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
      sub_222A2DB64(&qword_280CB8300, MEMORY[0x277CC9610]);
      v21 = sub_222B02338();
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
    sub_222AE503C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_222AE43CC(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_222B03128();
  v27 = a2;

  MEMORY[0x223DC66E0](95, 0xE100000000000000);
  v28 = a4;
  v29 = a5;
  MEMORY[0x223DC66E0](a4, a5);
  sub_222B02448();

  v11 = sub_222B03168();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      v15 = (*(v10 + 48) + 32 * v13);
      v16 = v15[2];
      v17 = v15[3];
      v30 = *v15;
      v32 = v15[1];
      swift_bridgeObjectRetain_n();

      MEMORY[0x223DC66E0](95, 0xE100000000000000);
      MEMORY[0x223DC66E0](v16, v17);

      MEMORY[0x223DC66E0](95, 0xE100000000000000);
      MEMORY[0x223DC66E0](v28, v29);
      if (v30 == v27 && v32 == a3)
      {
        break;
      }

      v18 = sub_222B02F78();

      if (v18)
      {
        goto LABEL_9;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

LABEL_9:

    v21 = (*(v10 + 48) + 32 * v13);
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[3];
    *a1 = *v21;
    a1[1] = v22;
    a1[2] = v23;
    a1[3] = v24;

    return 0;
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v25;

    sub_222AE52B8(v27, a3, v28, v29, v13, isUniquelyReferenced_nonNull_native);
    *v25 = v31;
    *a1 = v27;
    a1[1] = a3;
    a1[2] = v28;
    a1[3] = v29;
    return 1;
  }
}

uint64_t sub_222AE466C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D730, qword_222B0E750);
  result = sub_222B02C28();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_222B03128();
      sub_222B02448();
      result = sub_222B03168();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_222AE48CC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_222B018D8();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E438, &qword_222B0E730);
  result = sub_222B02C28();
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
      sub_222A2DB64(&qword_280CBA1F0, MEMORY[0x277CC9600]);
      result = sub_222B022E8();
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

uint64_t sub_222AE4C14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01E450, &qword_222B0E748);
  result = sub_222B02C28();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v1;
    v32 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      sub_222B03128();

      MEMORY[0x223DC66E0](95, 0xE100000000000000);
      MEMORY[0x223DC66E0](v21, v22);
      sub_222B02448();

      result = sub_222B03168();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v22;
      ++*(v5 + 16);
      v3 = v32;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v7, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_222AE4EBC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_222AE466C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_222AE5538();
      goto LABEL_16;
    }

    sub_222AE5A38(v8 + 1);
  }

  v10 = *v4;
  sub_222B03128();
  sub_222B02448();
  v11 = sub_222B03168();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_222B02F78() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_222B030A8();
  __break(1u);
}

uint64_t sub_222AE503C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_222B018D8();
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
    sub_222AE48CC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_222AE5694();
      goto LABEL_12;
    }

    sub_222AE5C70(v10 + 1);
  }

  v12 = *v3;
  sub_222A2DB64(&qword_280CBA1F0, MEMORY[0x277CC9600]);
  v13 = sub_222B022E8();
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
      sub_222A2DB64(&qword_280CB8300, MEMORY[0x277CC9610]);
      v21 = sub_222B02338();
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
  result = sub_222B030A8();
  __break(1u);
  return result;
}

void sub_222AE52B8(uint64_t result, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a6 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a6)
  {
    sub_222AE4C14(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_222AE58CC();
      goto LABEL_14;
    }

    sub_222AE5F78(v9 + 1);
  }

  v11 = *v6;
  sub_222B03128();

  MEMORY[0x223DC66E0](95, 0xE100000000000000);
  MEMORY[0x223DC66E0](a3, a4);
  sub_222B02448();

  v12 = sub_222B03168();
  v13 = -1 << *(v11 + 32);
  a5 = v12 & ~v13;
  if ((*(v11 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v14 = ~v13;
    do
    {
      v15 = (*(v11 + 48) + 32 * a5);
      v16 = v15[2];
      v17 = v15[3];
      v28 = *v15;
      v29 = v15[1];
      swift_bridgeObjectRetain_n();

      MEMORY[0x223DC66E0](95, 0xE100000000000000);
      MEMORY[0x223DC66E0](v16, v17);

      MEMORY[0x223DC66E0](95, 0xE100000000000000);
      MEMORY[0x223DC66E0](a3, a4);
      if (v28 == result && v29 == a2)
      {
        goto LABEL_17;
      }

      v18 = sub_222B02F78();

      if (v18)
      {
        goto LABEL_18;
      }

      a5 = (a5 + 1) & v14;
    }

    while (((*(v11 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_14:
  v19 = *v24;
  *(*v24 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v20 = (*(v19 + 48) + 32 * a5);
  *v20 = result;
  v20[1] = a2;
  v20[2] = a3;
  v20[3] = a4;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_17:

LABEL_18:
  sub_222B030A8();
  __break(1u);
}

void sub_222AE5538()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D730, qword_222B0E750);
  v2 = *v0;
  v3 = sub_222B02C18();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_222AE5694()
{
  v1 = v0;
  v2 = sub_222B018D8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E438, &qword_222B0E730);
  v6 = *v0;
  v7 = sub_222B02C18();
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

void sub_222AE58CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01E450, &qword_222B0E748);
  v2 = *v0;
  v3 = sub_222B02C18();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_222AE5A38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D730, qword_222B0E750);
  result = sub_222B02C28();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_222B03128();

      sub_222B02448();
      result = sub_222B03168();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_222AE5C70(uint64_t a1)
{
  v2 = v1;
  v33 = sub_222B018D8();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E438, &qword_222B0E730);
  v7 = sub_222B02C28();
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
      sub_222A2DB64(&qword_280CBA1F0, MEMORY[0x277CC9600]);
      result = sub_222B022E8();
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

uint64_t sub_222AE5F78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01E450, &qword_222B0E748);
  result = sub_222B02C28();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v1;
    v31 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      sub_222B03128();
      swift_bridgeObjectRetain_n();

      MEMORY[0x223DC66E0](95, 0xE100000000000000);
      MEMORY[0x223DC66E0](v21, v22);
      sub_222B02448();

      result = sub_222B03168();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v22;
      ++*(v5 + 16);
      v3 = v31;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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
    *v2 = v5;
  }

  return result;
}

void getEventTimestampFromContext(from:context:)(void *a1, void *a2)
{
  v4 = [a1 eventMetadata];
  if (v4 && (v5 = v4, v6 = [v4 eventGeneratedTimestampRefId], v5, v6))
  {
    v7 = sub_222B02388();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [a2 eventMetadata];
  if (v10 && (v11 = v10, v12 = [v10 eventGeneratedTimestampRefId], v11, v12))
  {
    v13 = sub_222B02388();
    v15 = v14;

    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (!v9)
    {
LABEL_8:
      if (v15)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }
  }

  if (!v15)
  {
LABEL_15:

    return;
  }

  if (v7 == v13 && v9 == v15)
  {
  }

  else
  {
    v16 = sub_222B02F78();

    if ((v16 & 1) == 0)
    {
      return;
    }
  }

LABEL_18:
  v17 = [a1 eventMetadata];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 eventGeneratedRelativeToBootTimeTimestampNs];

    v20 = [a2 eventMetadata];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 eventGeneratedRelativeToBootTimeTimestampNs];

      v23 = [a2 deviceDynamicContext];
      if (v23)
      {
        v24 = v23;
        [v23 timeIntervalSince1970];

        if (__OFSUB__(v19, v22))
        {
          __break(1u);
        }
      }
    }
  }
}

void getEventTimestamp(from:)(void *a1)
{
  if ([a1 hasDeviceDynamicContext])
  {
    getEventTimestampFromContext(from:context:)(a1, a1);
  }
}

uint64_t dispatch thunk of InferredGroundTruthStore.write<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 8))(a1, a2, a3, a4);
}

{
  return (*(a5 + 16))(a1, a2, a3, a4);
}

uint64_t sub_222AE651C()
{
  result = sub_222AE653C();
  qword_280CB9D50 = result;
  return result;
}

uint64_t sub_222AE653C()
{
  if (qword_280CB91D8 != -1)
  {
    swift_once();
  }

  v0 = qword_280CB91E0;
  if (qword_280CB9690 != -1)
  {
    swift_once();
  }

  v1 = qword_280CBC450;
  if (qword_280CB8988 != -1)
  {
    swift_once();
  }

  v2 = qword_280CB8990;
  sub_222AE6760(v21);
  if (qword_280CB8D60 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for DefaultBiomeReader();
  inited = swift_initStaticObject();
  sub_222AE690C(v21, v20);
  sub_222A42E40(&qword_280CB8D68, v19);

  __swift_destroy_boxed_opaque_existential_0(v21);
  v17 = type metadata accessor for FlatFileSignalReader();
  v18 = &protocol witness table for FlatFileSignalReader;
  *&v16 = v0;
  v14 = type metadata accessor for BiomeSignalReader();
  v15 = &off_2835F73B8;
  *&v13 = v1;
  v11 = type metadata accessor for FlatFileStreamBookmarkStore(0);
  v12 = &protocol witness table for FlatFileStreamBookmarkStore;
  *&v10 = v2;
  v8 = v3;
  v9 = &protocol witness table for DefaultBiomeReader;
  *&v7 = inited;
  type metadata accessor for PLLoggingReader();
  v5 = swift_allocObject();
  sub_222A1E5A8(&v16, v5 + 16);
  sub_222A1E5A8(&v13, v5 + 56);
  sub_222A1E5A8(&v10, v5 + 96);
  sub_222AE6A94(v20, (v5 + 136));
  sub_222A1E5A8(v19, v5 + 184);
  sub_222A1E5A8(&v7, v5 + 224);
  return v5;
}

void *sub_222AE6760@<X0>(uint64_t *a1@<X8>)
{
  v8[3] = &type metadata for SiriPrivateLearningFeatureFlag;
  v8[4] = sub_222A36228();
  LOBYTE(v8[0]) = 12;
  v2 = _s28SiriPrivateLearningAnalytics23EnvironmentFeatureFlagsV02isF7EnabledySb0fG00fG3Key_pF_0();
  __swift_destroy_boxed_opaque_existential_0(v8);
  if (v2)
  {
    v3 = type metadata accessor for AIMLISSignalReader();
    result = swift_allocObject();
    v5 = result;
    v6 = &off_2835F4148;
    v7 = &off_2835F4120;
  }

  else
  {
    v3 = type metadata accessor for AsyncBiomeSignalReader();
    v5 = swift_allocObject();
    result = [objc_allocWithZone(MEMORY[0x277CF1AF0]) init];
    v5[2] = result;
    v6 = &off_2835F2290;
    v7 = &off_2835F22A8;
  }

  a1[3] = v3;
  a1[4] = v7;
  a1[5] = v6;
  *a1 = v5;
  return result;
}

uint64_t static PLLoggingReader.shared.getter()
{
  if (qword_280CB9D48 != -1)
  {
    swift_once();
  }
}

uint64_t sub_222AE690C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *PLLoggingReader.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0(v0 + 28);
  return v0;
}

uint64_t PLLoggingReader.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0(v0 + 28);

  return swift_deallocClassInstance();
}

_OWORD *sub_222AE6A94(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_222AE6AB0()
{
  v0 = sub_222B01748();
  __swift_allocate_value_buffer(v0, qword_280CB89D8);
  __swift_project_value_buffer(v0, qword_280CB89D8);
  return sub_222B01688();
}

uint64_t static FlatFileStreamBookmarkStore.defaultBookmarkPath.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280CB89D0 != -1)
  {
    swift_once();
  }

  v2 = sub_222B01748();
  v3 = __swift_project_value_buffer(v2, qword_280CB89D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_222AE6BBC()
{
  v0 = sub_222B01748();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  if (qword_280CB89D0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_280CB89D8);
  v8 = *(v1 + 16);
  v8(v6, v7, v0);
  v8(v4, v6, v0);
  if (qword_280CB8540 != -1)
  {
    swift_once();
  }

  v9 = qword_280CBC410;
  type metadata accessor for FlatFileStreamBookmarkStore(0);
  swift_allocObject();

  v10 = sub_222AEA894(0xD00000000000001CLL, 0x8000000222B15FB0, v4, v9);

  result = (*(v1 + 8))(v6, v0);
  qword_280CB8990 = v10;
  return result;
}

uint64_t FlatFileStreamBookmarkStore.__allocating_init(name:path:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222B01748();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a3, v6);
  if (qword_280CB8540 != -1)
  {
    swift_once();
  }

  v10 = qword_280CBC410;
  type metadata accessor for FlatFileStreamBookmarkStore(0);
  swift_allocObject();

  v11 = sub_222AEA894(a1, a2, v9, v10);

  (*(v7 + 8))(a3, v6);
  return v11;
}

uint64_t type metadata accessor for FlatFileStreamBookmarkStore(uint64_t a1)
{
  result = qword_280CB8958;
  if (!qword_280CB8958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static FlatFileStreamBookmarkStore.shared.getter()
{
  if (qword_280CB8988 != -1)
  {
    swift_once();
  }
}

void sub_222AE6FCC(char *a1)
{
  v2 = v1;
  v4 = sub_222B021D8();
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222B02238();
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = -1;
  v11 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_lock;
  swift_beginAccess();
  pthread_rwlock_wrlock((v2 + v11));
  swift_endAccess();
  v12 = *&a1[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name];
  v13 = *&a1[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name + 8];
  v14 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_bookmarks;
  swift_beginAccess();

  v15 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v2 + v14);
  *(v2 + v14) = 0x8000000000000000;
  sub_222AEA068(v15, v12, v13, isUniquelyReferenced_nonNull_native);

  *(v2 + v14) = v30;
  swift_endAccess();
  v17 = *(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_writeSequenceNumber);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_writeSequenceNumber) = v19;
    *(v10 + 16) = v19;
    swift_beginAccess();
    pthread_rwlock_unlock((v2 + v11));
    swift_endAccess();
    dispatch_group_enter(*(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_dispatchGroup));
    v20 = swift_allocObject();
    v20[2] = v2;
    v20[3] = v15;
    v20[4] = v10;
    aBlock[4] = sub_222AEAD14;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_222AD9FB4;
    aBlock[3] = &block_descriptor_14;
    v21 = _Block_copy(aBlock);
    v22 = v15;

    sub_222B02208();
    v30 = MEMORY[0x277D84F90];
    sub_222AEC47C(qword_280CBA240, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
    sub_222A77D7C(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160);
    v23 = v28;
    sub_222B02BB8();
    MEMORY[0x223DC6BE0](0, v9, v6, v21);
    _Block_release(v21);
    (*(v27 + 8))(v6, v23);
    (*(v25 + 8))(v9, v26);
  }
}

uint64_t sub_222AE73D4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_lockPath;
  v7 = *(a1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_queue);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;

  v9 = a2;

  sub_222A7BCAC(a1 + v6);
  sub_222A7A74C(a1 + v6, v7, 5, 0, sub_222AEC12C, v8);
}

void sub_222AE74B0(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  if (!a2)
  {
    v17 = *&a4[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name];
    v18 = *&a4[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name + 8];
    v19 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_writeSequenceNumberLog;
    swift_beginAccess();
    v20 = *(a3 + v19);
    if (*(v20 + 16))
    {

      v21 = sub_222A26EC8(v17, v18);
      if (v22)
      {
        v23 = *(*(v20 + 56) + 8 * v21);

        swift_beginAccess();
        if (v23 >= *(a5 + 16))
        {
          if (qword_280CB4C30 != -1)
          {
            swift_once();
          }

          v24 = sub_222B02148();
          __swift_project_value_buffer(v24, qword_280CB4C38);
          v25 = a4;

          v26 = sub_222B02128();
          v27 = sub_222B028D8();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v34[0] = v29;
            *v28 = 136315650;
            *(v28 + 4) = sub_222A230FC(v17, v18, v34);
            *(v28 + 12) = 2048;
            swift_beginAccess();
            *(v28 + 14) = *(a5 + 16);

            *(v28 + 22) = 2048;
            *(v28 + 24) = v23;
            _os_log_impl(&dword_222A1C000, v26, v27, "Discarding a write for %s with a sequence number %ld, the current number is %ld", v28, 0x20u);
            __swift_destroy_boxed_opaque_existential_0(v29);
            MEMORY[0x223DC7E30](v29, -1, -1);
            MEMORY[0x223DC7E30](v28, -1, -1);
          }

          else
          {
          }

LABEL_19:
          dispatch_group_leave(*(a3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_dispatchGroup));
          return;
        }
      }

      else
      {
      }
    }

    v30 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_filePath;
    swift_beginAccess();
    if (sub_222AEC138((a3 + v30), a4, *(a5 + 16)))
    {
      swift_beginAccess();
      v31 = *(a5 + 16);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *(a3 + v19);
      *(a3 + v19) = 0x8000000000000000;
      sub_222AEA1E0(v31, v17, v18, isUniquelyReferenced_nonNull_native);
      *(a3 + v19) = v33;
      swift_endAccess();
    }

    goto LABEL_19;
  }

  if (qword_280CB4C30 != -1)
  {
    swift_once();
  }

  v9 = sub_222B02148();
  __swift_project_value_buffer(v9, qword_280CB4C38);
  v10 = a4;

  v11 = sub_222B02128();
  v12 = sub_222B028E8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v35[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_222A230FC(*&v10[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name], *&v10[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name + 8], v35);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_222A230FC(a1, a2, v35);
    _os_log_impl(&dword_222A1C000, v11, v12, "Failed to acquire a file lock to write bookmark data for %s: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v14, -1, -1);
    MEMORY[0x223DC7E30](v13, -1, -1);
  }

  v15 = *(a3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_dispatchGroup);

  dispatch_group_leave(v15);
}

void *sub_222AE7928(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_lock;
  swift_beginAccess();
  pthread_rwlock_rdlock((v3 + v6));
  swift_endAccess();
  v7 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_bookmarks;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16))
  {

    v9 = sub_222A26EC8(a1, a2);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);
      v12 = v11;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  swift_beginAccess();
  pthread_rwlock_unlock((v3 + v6));
  swift_endAccess();
  return v11;
}

uint64_t sub_222AE7A24()
{
  v1 = v0;
  sub_222B02948();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_lockPath;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v0;

  sub_222A7BCAC(v0 + v3);
  sub_222A7A74C(v0 + v3, 0, 0, 0, sub_222AEAD38, v4);

  swift_beginAccess();
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_lock;
    swift_beginAccess();

    pthread_rwlock_wrlock((v1 + v6));
    swift_endAccess();
    v7 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_bookmarks;
    swift_beginAccess();
    *(v1 + v7) = v5;

    swift_beginAccess();
    pthread_rwlock_unlock((v1 + v6));
    swift_endAccess();
  }
}

void sub_222AE7BAC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (qword_280CB4C30 != -1)
    {
      swift_once();
    }

    v6 = sub_222B02148();
    __swift_project_value_buffer(v6, qword_280CB4C38);

    oslog = sub_222B02128();
    v7 = sub_222B028E8();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_222A230FC(a1, a2, v13);
      _os_log_impl(&dword_222A1C000, oslog, v7, "Failed to acquire a file lock to refresh bookmark data: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x223DC7E30](v9, -1, -1);
      MEMORY[0x223DC7E30](v8, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v11 = sub_222AEB2D8((a4 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_filePath));
    swift_beginAccess();
    *(a3 + 16) = v11;
  }
}

double sub_222AE7D64()
{
  v1 = v0;
  sub_222B02948();
  v2 = sub_222A3A250(MEMORY[0x277D84F90]);
  v3 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_lockPath;
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v2;

  sub_222A7BCAC(v0 + v3);
  sub_222A7A74C(v0 + v3, 0, 0, 0, sub_222AEAD90, v4);

  v5 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_lock;
  swift_beginAccess();
  pthread_rwlock_wrlock((v1 + v5));
  swift_endAccess();
  v6 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_bookmarks;
  swift_beginAccess();
  *(v1 + v6) = v2;

  swift_beginAccess();
  pthread_rwlock_unlock((v1 + v5));
  swift_endAccess();
  return result;
}

void sub_222AE7EB0(uint64_t a1, unint64_t a2, uint64_t a3, char *a4)
{
  if (a2)
  {
    if (qword_280CB4C30 != -1)
    {
      swift_once();
    }

    v6 = sub_222B02148();
    __swift_project_value_buffer(v6, qword_280CB4C38);

    oslog = sub_222B02128();
    v7 = sub_222B028E8();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_222A230FC(a1, a2, &v12);
      _os_log_impl(&dword_222A1C000, oslog, v7, "Failed to acquire a file lock to reset bookmark data: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x223DC7E30](v9, -1, -1);
      MEMORY[0x223DC7E30](v8, -1, -1);
    }
  }

  else
  {
    v10 = a3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_filePath;

    sub_222AEBAD4(v10, a4);
  }
}

uint64_t sub_222AE8044(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_222B021D8();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_222B02238();
  v7 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222B021E8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_dispatchGroup);
  sub_222A250BC(0, &qword_280CBA208, 0x277D85C78);
  (*(v11 + 104))(v13, *MEMORY[0x277D851C8], v10);
  v14 = sub_222B029C8();
  (*(v11 + 8))(v13, v10);
  v15 = swift_allocObject();
  *(v15 + 16) = v19;
  *(v15 + 24) = a2;
  aBlock[4] = sub_222A556A4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222AD9FB4;
  aBlock[3] = &block_descriptor_18;
  v16 = _Block_copy(aBlock);

  sub_222B02208();
  v23 = MEMORY[0x277D84F90];
  sub_222AEC47C(qword_280CBA240, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
  sub_222A77D7C(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160);
  sub_222B02BB8();
  sub_222B02958();
  _Block_release(v16);

  (*(v22 + 8))(v6, v4);
  (*(v7 + 8))(v9, v21);
}

uint64_t sub_222AE8418()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_222AE84EC;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v1, 0, 0, 0xD000000000000012, 0x8000000222B15EC0, sub_222AEAD98, v2, v3);
}

uint64_t sub_222AE84EC()
{

  return MEMORY[0x2822009F8](sub_222AE85E8, 0, 0);
}

uint64_t sub_222AE85FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E308, &unk_222B0DC50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_222AE8044(sub_222AEB26C, v7);
}

uint64_t FlatFileStreamBookmarkStore.deinit()
{
  v1 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_filePath;
  v2 = sub_222B01748();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_lockPath, v2);

  return v0;
}

uint64_t FlatFileStreamBookmarkStore.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_filePath;
  v2 = sub_222B01748();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_lockPath, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_222AE89F4()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_222AE8AC8;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v1, 0, 0, 0xD000000000000012, 0x8000000222B15EC0, sub_222AEC4D4, v2, v3);
}

uint64_t sub_222AE8AC8()
{

  return MEMORY[0x2822009F8](sub_222AEC4CC, 0, 0);
}

uint64_t sub_222AE8BE8()
{
  v0 = sub_222B02148();
  __swift_allocate_value_buffer(v0, qword_280CB4C38);
  v1 = __swift_project_value_buffer(v0, qword_280CB4C38);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CBC458);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_222AE8CDC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_222B018D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_222A26F40(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_222A2B8E0();
      goto LABEL_7;
    }

    sub_222A27AF8(v17, a3 & 1);
    v22 = sub_222A26F40(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_222AEA464(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_222B030B8();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

unint64_t sub_222AE8ED4(uint64_t a1, int a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void))
{
  v8 = v5;
  v12 = *v5;
  result = sub_222A2E3A4();
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 < v18 || (a3 & 1) != 0)
    {
      a5(v18, a3 & 1);
      result = sub_222A2E3A4();
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        type metadata accessor for SISchemaComponentName(0);
        result = sub_222B030B8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      a4();
      result = v21;
    }
  }

  v23 = *v8;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + 4 * result) = a2;
    *(v23[7] + 8 * result) = a1;
    v24 = v23[2];
    v17 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v17)
    {
      v23[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  *(v23[7] + 8 * result) = a1;
}

uint64_t sub_222AE903C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_222B018D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_222A26F40(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_222A2BF34();
      goto LABEL_7;
    }

    sub_222A28404(v17, a3 & 1);
    v24 = sub_222A26F40(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_222AEA388(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_222B030B8();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for LogicalClockTable.DeviceFixedContextTime(0) - 8) + 72) * v14;

  return sub_222AEB208(a1, v22);
}

void sub_222AE9224(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_222B018D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_222A26F40(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_222A2C238();
      goto LABEL_7;
    }

    sub_222A28854(v17, a3 & 1);
    v23 = sub_222A26F40(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_222AEA464(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_222B030B8();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_222AE941C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_222B018D8();
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_222A26F40(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_222A2C4D4();
      goto LABEL_9;
    }

    sub_222A28C44(v16, a3 & 1);
    v19 = sub_222A26F40(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      v13 = v19;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_222B030B8();
    __break(1u);
    return result;
  }

LABEL_9:
  v21 = *v4;
  if (v17)
  {
    v22 = *(v26 + 40);
    v23 = v21[7] + *(v26 + 72) * v13;

    return v22(v23, a1, v8);
  }

  else
  {
    (*(v26 + 16))(v10, a2, v8);
    return sub_222AEA560(v13, v10, a1, v21);
  }
}

unint64_t sub_222AE9600(uint64_t a1, int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_222A2E3A4();
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_222A29458(v14, a3 & 1);
      result = sub_222A2E3A4();
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        type metadata accessor for SISchemaComponentName(0);
        result = sub_222B030B8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_222A2C7B0();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 4 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_222AE9778(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_222B018D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_222A26F40(a1);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
  }

  else
  {
    v18 = v13;
    v19 = v12[3];
    if (v19 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v20 = *v4;
      if (v18)
      {
LABEL_8:
        *(v20[7] + 8 * v14) = a3;
        return result;
      }

      goto LABEL_11;
    }

    if (v19 >= result && (a2 & 1) == 0)
    {
      result = sub_222A2CF68();
      goto LABEL_7;
    }

    sub_222A2A0FC(result, a2 & 1);
    result = sub_222A26F40(a1);
    if ((v18 & 1) == (v21 & 1))
    {
      v14 = result;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v9 + 16))(v11, a1, v8);
      return sub_222AEA6FC(v14, v11, v20, a3);
    }
  }

  result = sub_222B030B8();
  __break(1u);
  return result;
}

void sub_222AE991C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_222A26EC8(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_222A2A4AC(v20, a6 & 1);
      v15 = sub_222A26EC8(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_222B030B8();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_222A2D1DC();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 24 * v15);
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a4;
  v27[1] = a5;
  v28 = (v25[7] + 24 * v15);
  *v28 = a1;
  v28[1] = a2;
  v28[2] = a3;
  v29 = v25[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v30;
}

void sub_222AE9AF8(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void))
{
  v8 = v5;
  v12 = *v5;
  v13 = sub_222A270C0(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 < v18 || (a3 & 1) != 0)
    {
      a5(v18, a3 & 1);
      v13 = sub_222A270C0(a2);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        sub_222B030B8();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      a4();
      v13 = v21;
    }
  }

  v23 = *v8;
  if ((v19 & 1) == 0)
  {
    v23[(v13 >> 6) + 8] |= 1 << v13;
    *(v23[6] + 8 * v13) = a2;
    *(v23[7] + 8 * v13) = a1;
    v26 = v23[2];
    v17 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v17)
    {
      v23[2] = v27;
      return;
    }

    goto LABEL_15;
  }

  v24 = v23[7];
  v25 = *(v24 + 8 * v13);
  *(v24 + 8 * v13) = a1;
}

uint64_t sub_222AE9C5C(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a2;
  v9 = sub_222B018D8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_222A26F40(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_222A2D4D8();
      goto LABEL_9;
    }

    sub_222A2A9F8(v18, a4 & 1);
    v21 = sub_222A26F40(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_222B030B8();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = v24[7] + 16 * v15;
    *v25 = a1 & 1;
    *(v25 + 1) = BYTE1(a1) & 1;
    *(v25 + 2) = BYTE2(a1) & 1;
    *(v25 + 3) = HIBYTE(a1) & 1;
    *(v25 + 8) = v23;

    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_222AEA7B4(v15, v12, a1 & 0x1010101, v23, v24);
  }
}

uint64_t sub_222AE9E84(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void))
{
  v26 = a4;
  v27 = a5;
  v6 = v5;
  v10 = sub_222B018D8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_222A26F40(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v26();
      goto LABEL_7;
    }

    v27();
    v24 = sub_222A26F40(a2);
    if ((v20 & 1) == (v25 & 1))
    {
      v16 = v24;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      return sub_222AEA464(v16, v13, a1, v22);
    }

LABEL_15:
    result = sub_222B030B8();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v22[7] + 8 * v16) = a1;
}

void sub_222AEA068(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_222A26EC8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_222A2B0BC(v16, a4 & 1);
      v11 = sub_222A26EC8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_222B030B8();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_222A2DBBC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

void sub_222AEA1E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_222A26EC8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_222A2B36C(v16, a4 & 1);
      v11 = sub_222A26EC8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_222B030B8();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_222A2DD2C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

unint64_t sub_222AEA344(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
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

uint64_t sub_222AEA388(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_222B018D8();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for LogicalClockTable.DeviceFixedContextTime(0);
  result = sub_222A2E290(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_222AEA464(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_222B018D8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_222AEA51C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

uint64_t sub_222AEA560(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_222B018D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_222AEA63C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_222B018D8();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_222AEA6FC(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_222B018D8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_222AEA7B4(unint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_222B018D8();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = a5[7] + 16 * a1;
  *v13 = a3 & 1;
  *(v13 + 1) = BYTE1(a3) & 1;
  *(v13 + 2) = BYTE2(a3) & 1;
  *(v13 + 3) = HIBYTE(a3) & 1;
  *(v13 + 8) = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_222AEA894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a4;
  v9 = sub_222B02988();
  v25 = *(v9 - 8);
  v26 = v9;
  MEMORY[0x28223BE20](v9);
  v24 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_222B02968();
  MEMORY[0x28223BE20](v11);
  v12 = sub_222B02238();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_222B01748();
  v23 = *(v13 - 8);
  v14 = v23;
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  v29 = a2;

  MEMORY[0x223DC66E0](1802330670, 0xE400000000000000);

  v22 = a3;
  sub_222B016E8();

  v17 = *(v14 + 32);
  v21 = v13;
  v17(v5 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_filePath, v16, v13);
  sub_222B016E8();
  v17(v5 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_lockPath, v16, v13);
  sub_222A250BC(0, &qword_280CBA208, 0x277D85C78);
  sub_222B02218();
  v28 = MEMORY[0x277D84F90];
  sub_222AEC47C(&unk_280CBA210, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D728, &unk_222B08D20);
  sub_222A77D7C(&unk_280CBA220, &qword_27D01D728, &unk_222B08D20);
  sub_222B02BB8();
  (*(v25 + 104))(v24, *MEMORY[0x277D85260], v26);
  *(v5 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_queue) = sub_222B029A8();
  *(v5 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_dispatchGroup) = dispatch_group_create();
  v18 = v5 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_lock;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 64) = 0u;
  *(v18 + 80) = 0u;
  *(v18 + 96) = 0u;
  *(v18 + 112) = 0u;
  *(v18 + 128) = 0u;
  *(v18 + 144) = 0u;
  *(v18 + 160) = 0u;
  *(v18 + 176) = 0u;
  *(v18 + 192) = 0;
  swift_beginAccess();
  pthread_rwlock_init(v18, 0);
  swift_endAccess();
  *(v5 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_bookmarkFileLock) = v27;
  *(v5 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_writeSequenceNumber) = 0;

  v19 = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_writeSequenceNumberLog) = sub_222A3A154(MEMORY[0x277D84F90]);
  *(v5 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_bookmarks) = sub_222A3A250(v19);
  sub_222AE7A24();
  (*(v23 + 8))(v22, v21);
  return v5;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_8Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t dispatch thunk of StreamBookmarkStore.notifyOnComplete()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222A34620;

  return v7(a1, a2);
}

uint64_t sub_222AEAF24(uint64_t a1)
{
  result = sub_222B01748();
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

uint64_t dispatch thunk of FlatFileStreamBookmarkStore.notifyOnComplete()()
{
  v4 = (*(*v0 + 296) + **(*v0 + 296));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_222A35344;

  return v4();
}

uint64_t sub_222AEB208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogicalClockTable.DeviceFixedContextTime(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_222AEB2D8(id a1)
{
  v2 = sub_222B01748();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v6 = &v65 - v5;
  v7 = sub_222B01758();
  v23 = v22;
  v24 = v7;
  sub_222A250BC(0, &qword_280CB8440, 0x277CCAAC8);
  type metadata accessor for StreamBookmarkCollection();
  sub_222A55AB8(v24, v23);
  v68 = v24;
  v69 = v23;
  v25 = sub_222B02918();
  if (!v25)
  {
    if (qword_280CB4C30 != -1)
    {
      swift_once();
    }

    v26 = sub_222B02148();
    __swift_project_value_buffer(v26, qword_280CB4C38);
    (*(v3 + 16))(v6, a1, v2);
    v27 = sub_222B02128();
    v28 = sub_222B028E8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v72[0] = v30;
      *v29 = 136315138;
      sub_222AEC47C(&qword_280CB8310, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v31 = sub_222B02F38();
      v33 = v32;
      (*(v3 + 8))(v6, v2);
      v34 = sub_222A230FC(v31, v33, v72);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_222A1C000, v27, v28, "Cannot decode bookmarks read from path=%s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x223DC7E30](v30, -1, -1);
      MEMORY[0x223DC7E30](v29, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    v35 = sub_222A3A250(MEMORY[0x277D84F90]);
    v37 = v68;
    v36 = v69;
    sub_222A26530(v68, v69);
    sub_222A26530(v37, v36);
    return v35;
  }

  v38 = v25;
  sub_222A26530(v68, v69);
  v39 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24StreamBookmarkCollection_bookmarks;
  v40 = *&v38[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24StreamBookmarkCollection_bookmarks];
  v66 = v38;
  if (v40 >> 62)
  {
    v41 = sub_222B02DC8();
  }

  else
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = type metadata accessor for StreamBookmark();
  v35 = MEMORY[0x223DC6520](v41, MEMORY[0x277D837D0], v42, MEMORY[0x277D837E0]);
  v43 = *&v66[v39];
  if (v43 >> 62)
  {
    v44 = sub_222B02DC8();
    if (v44)
    {
      goto LABEL_17;
    }

LABEL_37:
    sub_222A26530(v68, v69);

    return v35;
  }

  v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v44)
  {
    goto LABEL_37;
  }

LABEL_17:
  v71 = v43 & 0xC000000000000001;
  v67 = v43 & 0xFFFFFFFFFFFFFF8;

  v45 = 0;
  v70 = v43;
  while (1)
  {
    if (v71)
    {
      v49 = MEMORY[0x223DC6F00](v45, v43);
    }

    else
    {
      if (v45 >= *(v67 + 16))
      {
        goto LABEL_42;
      }

      v49 = *(v43 + 8 * v45 + 32);
    }

    v50 = v49;
    v2 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    v43 = v44;
    v3 = *&v49[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name];
    v51 = *&v49[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name + 8];

    a1 = v50;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72[0] = v35;
    v24 = sub_222A26EC8(v3, v51);
    v54 = v35[2];
    v55 = (v53 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      goto LABEL_40;
    }

    v57 = v53;
    if (v35[3] >= v56)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v53)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_222A2DBBC();
        if (v57)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      sub_222A2B0BC(v56, isUniquelyReferenced_nonNull_native);
      v58 = sub_222A26EC8(v3, v51);
      if ((v57 & 1) != (v59 & 1))
      {
        result = sub_222B030B8();
        __break(1u);
        return result;
      }

      v24 = v58;
      if (v57)
      {
LABEL_18:

        v35 = v72[0];
        v46 = *(v72[0] + 56);
        v47 = *(v46 + 8 * v24);
        *(v46 + 8 * v24) = a1;

        goto LABEL_19;
      }
    }

    v35 = v72[0];
    *(v72[0] + 8 * (v24 >> 6) + 64) |= 1 << v24;
    v60 = (v35[6] + 16 * v24);
    *v60 = v3;
    v60[1] = v51;
    *(v35[7] + 8 * v24) = a1;

    v61 = v35[2];
    v62 = __OFADD__(v61, 1);
    v63 = v61 + 1;
    if (v62)
    {
      goto LABEL_41;
    }

    v35[2] = v63;
LABEL_19:
    ++v45;
    v44 = v43;
    v48 = v2 == v43;
    v43 = v70;
    if (v48)
    {

      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  swift_once();
  v8 = sub_222B02148();
  __swift_project_value_buffer(v8, qword_280CB4C38);
  (*(v3 + 16))(v24, a1, v2);
  v9 = v43;
  v10 = sub_222B02128();
  v11 = sub_222B028D8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v74[0] = v13;
    *v12 = 136315394;
    sub_222AEC47C(&qword_280CB8310, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v14 = sub_222B02F38();
    v16 = v15;
    (*(v3 + 8))(v24, v2);
    v17 = sub_222A230FC(v14, v16, v74);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v72[0] = v43;
    v72[1] = 0;
    v73 = 1;
    v18 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D708, &unk_222B08CC0);
    v19 = sub_222B023D8();
    v21 = sub_222A230FC(v19, v20, v74);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_222A1C000, v10, v11, "Cannot read bookmarks from path=%s, error=%s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v13, -1, -1);
    MEMORY[0x223DC7E30](v12, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v24, v2);
  }

  v35 = sub_222A3A250(MEMORY[0x277D84F90]);

  return v35;
}

uint64_t sub_222AEBAD4(uint64_t a1, char *a2)
{
  v57[5] = *MEMORY[0x277D85DE8];
  v4 = sub_222B01748();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = *(a2 + 2);
  if (v6)
  {
    v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = a1;
    v8 = sub_222A96820();
    v9 = sub_222A96358(v57, v8 + 4, v6, a2);
    v10 = v57[0];
    v11 = v57[1];
    v12 = v57[4];

    sub_222A965EC(v10);
    if (v9 != v6)
    {
      __break(1u);
      swift_once();
      v22 = sub_222B02148();
      __swift_project_value_buffer(v22, qword_280CB4C38);
      v11[2](v7, v10, v12);
      v23 = v8;
      v24 = sub_222B02128();
      v25 = sub_222B028E8();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v52 = a2;
        v27 = v26;
        v51 = swift_slowAlloc();
        v57[0] = v51;
        *v27 = 136315394;
        sub_222AEC47C(&qword_280CB8310, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v28 = sub_222B02F38();
        v29 = v12;
        v31 = v30;
        (v11[1])(v7, v29);
        v32 = sub_222A230FC(v28, v31, v57);

        *(v27 + 4) = v32;
        *(v27 + 12) = 2080;
        v55 = v8;
        v33 = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
        v34 = sub_222B023D8();
        v36 = sub_222A230FC(v34, v35, v57);

        *(v27 + 14) = v36;
        _os_log_impl(&dword_222A1C000, v24, v25, "Cannot write bookmark data to a file, path=%s, error=%s", v27, 0x16u);
        v37 = v51;
        swift_arrayDestroy();
        MEMORY[0x223DC7E30](v37, -1, -1);
        MEMORY[0x223DC7E30](v27, -1, -1);
        sub_222A26530(v9, v6);
      }

      else
      {

        sub_222A26530(v9, v6);
        (v11[1])(v7, v12);
      }

      return 0;
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v13 = type metadata accessor for StreamBookmarkCollection();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24StreamBookmarkCollection_bookmarks] = v8;
  v56.receiver = v14;
  v56.super_class = v13;
  v15 = objc_msgSendSuper2(&v56, sel_init);
  v16 = objc_opt_self();
  v57[0] = 0;
  v17 = [v16 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:v57];
  v18 = v57[0];
  if (v17)
  {
    v19 = sub_222B01798();
    v21 = v20;

    sub_222B017A8();
    sub_222A26530(v19, v21);

    return 1;
  }

  v38 = v18;
  v39 = sub_222B01628();

  swift_willThrow();
  if (qword_280CB4C30 != -1)
  {
    swift_once();
  }

  v40 = sub_222B02148();
  __swift_project_value_buffer(v40, qword_280CB4C38);
  v41 = v39;
  v42 = sub_222B02128();
  v43 = sub_222B028E8();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v57[0] = v45;
    *v44 = 136315138;
    v55 = v39;
    v46 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
    v47 = sub_222B023D8();
    v49 = sub_222A230FC(v47, v48, v57);

    *(v44 + 4) = v49;
    _os_log_impl(&dword_222A1C000, v42, v43, "Cannot encode bookmarks, error=%s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x223DC7E30](v45, -1, -1);
    MEMORY[0x223DC7E30](v44, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t objectdestroy_2Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_222AEC138(void *a1, char *a2, uint64_t a3)
{
  v6 = sub_222B01748();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222AEB2D8(a1);
  v11 = *&a2[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name];
  v12 = *&a2[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name + 8];

  v13 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v10;
  sub_222AEA068(v13, v11, v12, isUniquelyReferenced_nonNull_native);

  v15 = sub_222AEBAD4(a1, v30);

  if (v15)
  {
    if (qword_280CB4C30 != -1)
    {
      swift_once();
    }

    v16 = sub_222B02148();
    __swift_project_value_buffer(v16, qword_280CB4C38);
    (*(v7 + 16))(v9, a1, v6);
    v17 = v13;
    v18 = sub_222B02128();
    v19 = sub_222B028D8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      HIDWORD(v29) = v19;
      v21 = a3;
      v22 = v20;
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136315650;
      *(v22 + 4) = sub_222A230FC(v11, v12, &v30);
      *(v22 + 12) = 2048;
      *(v22 + 14) = v21;
      *(v22 + 22) = 2080;
      sub_222AEC47C(&qword_280CB8310, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v24 = sub_222B02F38();
      v26 = v25;
      (*(v7 + 8))(v9, v6);
      v27 = sub_222A230FC(v24, v26, &v30);

      *(v22 + 24) = v27;
      _os_log_impl(&dword_222A1C000, v18, BYTE4(v29), "Updated a bookmark, name=%s, sequenceNum=%ld, path=%s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v23, -1, -1);
      MEMORY[0x223DC7E30](v22, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }
  }

  return v15 & 1;
}

uint64_t sub_222AEC47C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void __swiftcall TrialEnrollment.init(treatmentId:experimentId:rolloutId:)(SiriPrivateLearningAnalytics::TrialEnrollment *__return_ptr retstr, Swift::String_optional treatmentId, Swift::String_optional experimentId, Swift::String_optional rolloutId)
{
  retstr->treatmentId = treatmentId;
  retstr->experimentId = experimentId;
  retstr->rolloutId = rolloutId;
}

void sub_222AEC4E8()
{
  v1 = v0;
  v3 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  (*(*(*(v2 + 8) + 8) + 24))(v3);
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  v6 = *v1;
  v7 = v1[1];
  v8 = (*(v5 + 32))(*v1, v7, v4, v5);
  v10 = v9;
  v11 = v1[5];
  v12 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v11);
  v13 = (*(v12 + 40))(v6, v7, v11, v12);
  if (v13)
  {
    v14 = v13;
    v15 = [v13 experimentId];

    v16 = sub_222B02388();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = v1[5];
  v20 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v19);
  v21 = (*(v20 + 48))(v6, v7, v19, v20);
  if (v21)
  {
    v22 = v21;
    v23 = [v21 rolloutId];

    v24 = sub_222B02388();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v1[8] = v8;
  v1[9] = v10;
  v1[10] = v16;
  v1[11] = v18;
  v1[12] = v24;
  v1[13] = v26;
  v27 = sub_222AEC6EC();

  v1[7] = v27;

  sub_222AEC9E4();
}

void *sub_222AEC6EC()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 56))(*v0, v0[1], v1, v2);
  v4 = sub_222A3AB94(MEMORY[0x277D84F90]);
  if (v3 >> 62)
  {
LABEL_30:
    v35 = v3 & 0xFFFFFFFFFFFFFF8;
    v5 = sub_222B02DC8();
    if (!v5)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v35 = v3 & 0xFFFFFFFFFFFFFF8;
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_27;
    }
  }

  v6 = 0;
  while (2)
  {
    while (2)
    {
      v7 = v6;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x223DC6F00](v7, v3);
        }

        else
        {
          if (v7 >= *(v35 + 16))
          {
            goto LABEL_29;
          }

          v8 = *(v3 + 8 * v7 + 32);
        }

        v9 = v8;
        v6 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v10 = [v8 factor];
        if (!v10)
        {
          goto LABEL_34;
        }

        v11 = v10;
        v12 = [v10 name];

        if (v12)
        {
          break;
        }

LABEL_6:

        ++v7;
        if (v6 == v5)
        {
          goto LABEL_27;
        }
      }

      v13 = sub_222B02388();
      v15 = v14;

      v16 = [v9 level];
      if (!v16)
      {

        goto LABEL_6;
      }

      v34 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = sub_222A26EC8(v13, v15);
      v20 = v4[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
        goto LABEL_33;
      }

      v24 = v19;
      if (v4[3] < v23)
      {
        sub_222A2B0A8(v23, isUniquelyReferenced_nonNull_native);
        v18 = sub_222A26EC8(v13, v15);
        if ((v24 & 1) != (v25 & 1))
        {
          goto LABEL_35;
        }

LABEL_21:
        if (v24)
        {
          goto LABEL_22;
        }

LABEL_25:
        v4[(v18 >> 6) + 8] |= 1 << v18;
        v30 = (v4[6] + 16 * v18);
        *v30 = v13;
        v30[1] = v15;
        *(v4[7] + 8 * v18) = v34;

        v31 = v4[2];
        v22 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (!v22)
        {
          v4[2] = v32;
          if (v6 != v5)
          {
            continue;
          }

          goto LABEL_27;
        }

LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        result = sub_222B030B8();
        __break(1u);
        return result;
      }

      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v29 = v18;
    sub_222A2DBA8();
    v18 = v29;
    if ((v24 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_22:
    v26 = v18;

    v27 = v4[7];
    v28 = *(v27 + 8 * v26);
    *(v27 + 8 * v26) = v34;

    if (v6 != v5)
    {
      continue;
    }

    break;
  }

LABEL_27:

  return v4;
}

void sub_222AEC9E4()
{
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v1 = sub_222B02148();
  __swift_project_value_buffer(v1, qword_280CBC458);
  sub_222AEEAC8(v0, v9);
  v2 = sub_222B02128();
  v3 = sub_222B028D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    v6 = TrialManager.makeLogString()();
    sub_222AEEB00(v9);
    v7 = sub_222A230FC(v6._countAndFlagsBits, v6._object, &v8);

    *(v4 + 4) = v7;
    _os_log_impl(&dword_222A1C000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x223DC7E30](v5, -1, -1);
    MEMORY[0x223DC7E30](v4, -1, -1);
  }

  else
  {

    sub_222AEEB00(v9);
  }
}

uint64_t sub_222AECB58(void *a1, void (*a2)(void *))
{
  v9[3] = &type metadata for DefaultTrialNotificationToken;
  v9[4] = &off_2835F9670;
  v9[0] = [a1 token];
  v4 = [a1 namespaceName];
  v5 = sub_222B02388();
  v7 = v6;

  v9[5] = v5;
  v9[6] = v7;
  a2(v9);
  return sub_222ADD7CC(v9);
}

uint64_t TrialNamespaceUpdate.init(token:namespace:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_222A1E5A8(a1, a4);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

void sub_222AECC44(uint64_t a1)
{
  sub_222A42E40(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E498, &qword_222B0ECA0);
  if (swift_dynamicCast())
  {
    v3 = v1[5];
    v4 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
    v5 = *(v4 + 24);
    v6 = swift_unknownObjectRetain();
    v5(v6, v3, v4);
    swift_unknownObjectRelease_n();
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v7 = sub_222B02148();
    __swift_project_value_buffer(v7, qword_280CBC458);
    sub_222A42E40(a1, v17);
    v8 = sub_222B02128();
    v9 = sub_222B028E8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      __swift_project_boxed_opaque_existential_1(v17, v17[3]);
      swift_getDynamicType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01E4A0, &qword_222B0ECA8);
      v12 = sub_222B023D8();
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_0(v17);
      v15 = sub_222A230FC(v12, v14, &v16);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_222A1C000, v8, v9, "Cannot extract Trial notification token: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223DC7E30](v11, -1, -1);
      MEMORY[0x223DC7E30](v10, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v17);
    }
  }
}

Swift::String __swiftcall TrialManager.makeLogString()()
{
  sub_222B02C88();
  MEMORY[0x223DC66E0](0xD000000000000024, 0x8000000222B16000);
  if (v0[9])
  {
    v1 = v0[8];
    v2 = v0[9];
  }

  else
  {
    v2 = 0xE100000000000000;
    v1 = 45;
  }

  MEMORY[0x223DC66E0](v1, v2);

  MEMORY[0x223DC66E0](0xD000000000000011, 0x8000000222B16030);
  if (v0[11])
  {
    v3 = v0[10];
    v4 = v0[11];
  }

  else
  {
    v4 = 0xE100000000000000;
    v3 = 45;
  }

  MEMORY[0x223DC66E0](v3, v4);

  MEMORY[0x223DC66E0](0x6F6C6C6F7220200ALL, 0xEE00203A64497475);
  if (v0[13])
  {
    v5 = v0[12];
    v6 = v0[13];
  }

  else
  {
    v6 = 0xE100000000000000;
    v5 = 45;
  }

  MEMORY[0x223DC66E0](v5, v6);

  MEMORY[0x223DC66E0](0x6F7463616620200ALL, 0xEC0000000A3A7372);
  v7 = v0[7];
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;

  for (i = 0; v10; v12 = )
  {
    v15 = i;
LABEL_18:
    v16 = __clz(__rbit64(v10)) | (v15 << 6);
    v17 = (*(v7 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v7 + 56) + 8 * v16);
    v10 &= v10 - 1;

    v21 = v20;
    MEMORY[0x223DC66E0](v18, v19);

    MEMORY[0x223DC66E0](8250, 0xE200000000000000);
    v22 = [v21 description];
    v23 = sub_222B02388();
    v25 = v24;

    MEMORY[0x223DC66E0](v23, v25);

    MEMORY[0x223DC66E0](10, 0xE100000000000000);
    MEMORY[0x223DC66E0](538976288, 0xE400000000000000);
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v11)
    {

      v12 = 0;
      v13 = 0xE000000000000000;
      goto LABEL_22;
    }

    v10 = *(v7 + 64 + 8 * v15);
    ++i;
    if (v10)
    {
      i = v15;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_22:
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

unint64_t TrialEnrollment.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];

  sub_222B02C88();

  strcpy(v13, "experimentId=");
  HIWORD(v13[1]) = -4864;
  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 7104878;
  }

  if (!v3)
  {
    v3 = 0xE300000000000000;
  }

  MEMORY[0x223DC66E0](v7, v3);

  MEMORY[0x223DC66E0](8236, 0xE200000000000000);
  v8 = v13[1];
  HIDWORD(v13[1]) = -335544318;
  MEMORY[0x223DC66E0](v13[0], v8);

  sub_222B02C88();

  strcpy(v13, "treatmentId=");
  if (v1)
  {
    v9 = v1;
  }

  else
  {
    v2 = 7104878;
    v9 = 0xE300000000000000;
  }

  MEMORY[0x223DC66E0](v2, v9);

  MEMORY[0x223DC66E0](8236, 0xE200000000000000);

  MEMORY[0x223DC66E0](v13[0], v13[1]);

  strcpy(v13, "rolloutId=");
  BYTE3(v13[1]) = 0;
  HIDWORD(v13[1]) = -369098752;
  if (v5)
  {
    v10 = v6;
  }

  else
  {
    v10 = 7104878;
  }

  if (v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x223DC66E0](v10, v11);

  MEMORY[0x223DC66E0](93, 0xE100000000000000);

  MEMORY[0x223DC66E0](v13[0], v13[1]);

  return 0xD000000000000010;
}

uint64_t TrialEnrollment.treatmentId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TrialEnrollment.experimentId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TrialEnrollment.rolloutId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_222AED454()
{
  v1 = 0x656D697265707865;
  if (*v0 != 1)
  {
    v1 = 0x4974756F6C6C6F72;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E656D7461657274;
  }
}

uint64_t sub_222AED4C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_222AEE93C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_222AED4EC(uint64_t a1)
{
  v2 = sub_222AEE5A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222AED528(uint64_t a1)
{
  v2 = sub_222AEE5A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TrialEnrollment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E460, &qword_222B0E8F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222AEE5A0();
  sub_222B031B8();
  v14 = 0;
  v9 = v11[5];
  sub_222B02ED8();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_222B02ED8();
  v12 = 2;
  sub_222B02ED8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t TrialEnrollment.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E470, &qword_222B0E8F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222AEE5A0();
  sub_222B03198();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = 0;
  v9 = sub_222B02E78();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_222B02E78();
  v21 = v12;
  v23 = 2;
  v13 = sub_222B02E78();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t TrialNamespaceUpdate.namespace.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void sub_222AEDA10(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v56 = a3;
  v59 = *a1;
  v5 = *(v59 + 80);
  v60 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v55 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v53 - v8;
  v9 = sub_222B02B28();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v53 - v11;
  v13 = a1[3];
  v14 = *(a2 + 64);
  v58 = a1[2];
  v15 = v14();
  if (v15)
  {
    v16 = v15;
    (*(*(v59 + 88) + 8))(v15, v5);
    v17 = v60;
    v18 = (*(v60 + 48))(v12, 1, v5);
    v54 = v13;
    if (v18 == 1)
    {
      v19 = v5;
      (*(v10 + 8))(v12, v9);
      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v20 = sub_222B02148();
      __swift_project_value_buffer(v20, qword_280CBC458);

      v21 = v16;
      v22 = sub_222B02128();
      v23 = sub_222B028E8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v62 = v26;
        *v24 = 136315650;
        *(v24 + 4) = sub_222A230FC(v58, v54, &v62);
        *(v24 + 12) = 2080;
        v61 = v19;
        swift_getMetatypeMetadata();
        v27 = sub_222B023D8();
        v29 = sub_222A230FC(v27, v28, &v62);

        *(v24 + 14) = v29;
        *(v24 + 22) = 2112;
        *(v24 + 24) = v21;
        *v25 = v16;
        v30 = v21;
        _os_log_impl(&dword_222A1C000, v22, v23, "Trial: Factor %s retrieved from trial but value did not match requested type %s. Raw Level: %@", v24, 0x20u);
        sub_222A8DF88(v25);
        MEMORY[0x223DC7E30](v25, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x223DC7E30](v26, -1, -1);
        MEMORY[0x223DC7E30](v24, -1, -1);
      }

      sub_222AEEB30();
      swift_allocError();
      *v31 = 1;
      swift_willThrow();
    }

    else
    {
      v38 = v56;
      (*(v17 + 32))(v56, v12, v5);
      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v39 = sub_222B02148();
      __swift_project_value_buffer(v39, qword_280CBC458);
      v40 = v17;
      v41 = *(v17 + 16);
      v42 = v57;
      v41(v57, v38, v5);

      v43 = sub_222B02128();
      v44 = sub_222B028D8();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = v42;
        v46 = v5;
        v47 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v62 = v59;
        *v47 = 136315394;
        *(v47 + 4) = sub_222A230FC(v58, v54, &v62);
        *(v47 + 12) = 2080;
        LODWORD(v58) = v44;
        v41(v55, v45, v5);
        v48 = sub_222B023D8();
        v50 = v49;
        (*(v40 + 8))(v45, v46);
        v51 = sub_222A230FC(v48, v50, &v62);

        *(v47 + 14) = v51;
        _os_log_impl(&dword_222A1C000, v43, v58, "Trial: Factor %s retrieved from trial. Value is %s", v47, 0x16u);
        v52 = v59;
        swift_arrayDestroy();
        MEMORY[0x223DC7E30](v52, -1, -1);
        MEMORY[0x223DC7E30](v47, -1, -1);
      }

      else
      {

        (*(v40 + 8))(v42, v5);
      }
    }
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v32 = sub_222B02148();
    __swift_project_value_buffer(v32, qword_280CBC458);

    v33 = sub_222B02128();
    v34 = sub_222B028D8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v62 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_222A230FC(v58, v13, &v62);
      _os_log_impl(&dword_222A1C000, v33, v34, "Trial: Failed to retrieve %s from trial. No matching factor found.", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x223DC7E30](v36, -1, -1);
      MEMORY[0x223DC7E30](v35, -1, -1);
    }

    sub_222AEEB30();
    swift_allocError();
    *v37 = 0;
    swift_willThrow();
  }
}

id sub_222AEE194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v14[4] = a4;
  v14[5] = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_222A89160;
  v14[3] = &block_descriptor_15;
  v11 = _Block_copy(v14);

  v12 = [v9 addUpdateHandlerForNamespaceName:v10 queue:a3 usingBlock:v11];

  _Block_release(v11);

  return v12;
}

uint64_t sub_222AEE294()
{
  v1 = *v0;
  v2 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v3 = [v1 treatmentIdWithNamespaceName_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_222B02388();

  return v4;
}

id sub_222AEE32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = *v5;
  v8 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v9 = [v7 *a5];

  return v9;
}

uint64_t sub_222AEE384()
{
  v1 = *v0;
  v2 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v3 = [v1 factorLevelsWithNamespaceName_];

  sub_222AEEA64();
  v4 = sub_222B025F8();

  return v4;
}

id sub_222AEE3F0()
{
  v1 = *v0;
  v2 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v3 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v4 = [v1 levelForFactor:v2 withNamespaceName:v3];

  return v4;
}