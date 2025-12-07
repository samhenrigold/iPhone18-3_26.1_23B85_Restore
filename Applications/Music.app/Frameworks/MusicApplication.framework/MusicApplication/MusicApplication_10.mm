void sub_DAE24(uint64_t a1)
{
  if (a1)
  {
    if (qword_DE67F8 != -1)
    {
      swift_once();
    }

    v1 = sub_AB4BC0();
    __swift_project_value_buffer(v1, qword_DEE448);
    swift_errorRetain();
    oslog = sub_AB4BA0();
    v2 = sub_AB9F30();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v13 = v4;
      *v3 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE5A0, &qword_B0EB40);
      v5 = sub_ABA9B0();
      v7 = sub_425E68(v5, v6, &v13);

      *(v3 + 4) = v7;
      _os_log_impl(&dword_0, oslog, v2, "Carrier linking failed with error: %s", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v4);

      return;
    }
  }

  else
  {
    JSStoreFlowSegue.didFinishLinkingWithCarrier.setter(1);
    v8 = [objc_opt_self() sharedController];
    [v8 refreshMusicSubscriptionStatus];

    if (qword_DE67F8 != -1)
    {
      swift_once();
    }

    v9 = sub_AB4BC0();
    __swift_project_value_buffer(v9, qword_DEE448);
    oslog = sub_AB4BA0();
    v10 = sub_AB9F50();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, oslog, v10, "Did finish carrier linking.", v11, 2u);
    }
  }
}

uint64_t sub_DB0E0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

double sub_DB124(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_AB31C0() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);

  return sub_D6E00(a1, a2, v8, v2 + v6, v9, v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_DB1E0()
{
  v1 = sub_AB31C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);

  if (*(v5 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0((v5 + 24));
  }

  return swift_deallocObject();
}

void sub_DB2F4()
{
  v1 = *(sub_AB31C0() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  sub_D6FE8(v5, v6, v0 + v2, v4, v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_DB390()
{
  v1 = sub_AB31C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  v5 = v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);

  if (*(v5 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0((v5 + 24));
  }

  return swift_deallocObject();
}

double sub_DB460(void *a1)
{
  v3 = *(sub_AB31C0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);

  return sub_D7AE4(a1, v1 + v4, v6, v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_DB508()
{

  return swift_deallocObject();
}

uint64_t sub_DB548()
{

  return swift_deallocObject();
}

uint64_t sub_DB5CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_26Tm()
{
  v1 = sub_AB31C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);

  if (*(v5 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0((v5 + 24));
  }

  return swift_deallocObject();
}

double sub_DB740()
{
  v1 = *(sub_AB31C0() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);

  return sub_D7CA4(v4, v0 + v2, v5, v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_DB7DC()
{
  v1 = sub_AB31C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 48));
  }

  (*(v2 + 8))(v0 + ((v3 + 88) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_DB8D4(uint64_t *a1)
{
  v3 = *(sub_AB31C0() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 80);
  v6 = v1 + ((*(v3 + 80) + 88) & ~*(v3 + 80));
  v7 = *(v6 + *(v3 + 64));

  return sub_D823C(a1, v4, v1 + 24, v5, v6, v7);
}

uint64_t sub_DB970(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_DBA6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v24 = *(a1 + 16);
  sub_6D5A0(0, v1, 0);
  v2 = a1 + 56;
  result = sub_ABABC0();
  v4 = v24;
  v5 = a1;
  v6 = 0;
  v7 = *(a1 + 36);
  v26 = v7;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v5 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v2 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_28;
    }

    if (v7 != *(v5 + 36))
    {
      goto LABEL_29;
    }

    if (*(*(v5 + 48) + result))
    {
      v11 = 0x6F4E6E657473696CLL;
    }

    else
    {
      v11 = 0x487972617262696CLL;
    }

    if (*(*(v5 + 48) + result))
    {
      v12 = 0xEF72656461654877;
    }

    else
    {
      v12 = 0xED00007265646165;
    }

    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      v23 = result;
      sub_6D5A0((v13 > 1), v14 + 1, 1);
      v5 = a1;
      v7 = v26;
      v4 = v24;
      result = v23;
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    v15 = &_swiftEmptyArrayStorage[2 * v14];
    v15[4] = v11;
    v15[5] = v12;
    v8 = 1 << *(v5 + 32);
    if (result >= v8)
    {
      goto LABEL_30;
    }

    v16 = *(v2 + 8 * v9);
    if ((v16 & v10) == 0)
    {
      goto LABEL_31;
    }

    if (v7 != *(v5 + 36))
    {
      goto LABEL_32;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v9 << 6;
      v19 = v9 + 1;
      v20 = (a1 + 64 + 8 * v9);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_E1798(result, v26, 0);
          v5 = a1;
          v7 = v26;
          v4 = v24;
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_E1798(result, v26, 0);
      v5 = a1;
      v7 = v26;
      v4 = v24;
    }

LABEL_4:
    ++v6;
    result = v8;
    if (v6 == v4)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_DBDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_E11D4(a3, v24 - v9);
  v11 = sub_AB9990();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_12E1C(v10, &qword_DE9D30, &unk_AF79A0);
  }

  else
  {
    sub_AB9980();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_AB98B0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_AB93A0() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_12E1C(a3, &qword_DE9D30, &unk_AF79A0);

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

  sub_12E1C(a3, &qword_DE9D30, &unk_AF79A0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_DC0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_E11D4(a3, v24 - v9);
  v11 = sub_AB9990();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_12E1C(v10, &qword_DE9D30, &unk_AF79A0);
  }

  else
  {
    sub_AB9980();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_AB98B0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_AB93A0() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_12E1C(a3, &qword_DE9D30, &unk_AF79A0);

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

  sub_12E1C(a3, &qword_DE9D30, &unk_AF79A0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_DC3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_E11D4(a3, v24 - v9);
  v11 = sub_AB9990();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_12E1C(v10, &qword_DE9D30, &unk_AF79A0);
  }

  else
  {
    sub_AB9980();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_AB98B0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_AB93A0() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6E0, &qword_AFCBB8);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_12E1C(a3, &qword_DE9D30, &unk_AF79A0);

      return v21;
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

  sub_12E1C(a3, &qword_DE9D30, &unk_AF79A0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6E0, &qword_AFCBB8);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t *UnifiedMessages.Coordinator.shared.unsafeMutableAddressor()
{
  if (qword_DE6800 != -1)
  {
    swift_once();
  }

  return &static UnifiedMessages.Coordinator.shared;
}

uint64_t UnifiedMessages.Placement.init(rawValue:)(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_CEFEC8;
  v7._object = a2;
  v4 = sub_ABB140(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t UnifiedMessages.Coordinator.isEnabled.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_DC7E8;

  return sub_E09D4();
}

uint64_t sub_DC7E8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_DC8E4(char a1)
{
  *(v2 + 72) = v1;
  *(v2 + 144) = a1;
  return _swift_task_switch(sub_DC908, 0, 0);
}

uint64_t sub_DC908()
{
  v1 = [objc_opt_self() sharedPrivacyInfo];
  v2 = [v1 privacyAcknowledgementRequiredForMusic];

  if (v2)
  {
    if (qword_DE6808 != -1)
    {
      swift_once();
    }

    v3 = sub_AB4BC0();
    __swift_project_value_buffer(v3, qword_DEE5B0);
    v4 = sub_AB4BA0();
    v5 = sub_AB9F50();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "💬 GDPR has not been accepted; prevent getting messages.", v6, 2u);
    }

    v7 = *(v0 + 8);

    return v7(0);
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 80) = v9;
    *v9 = v0;
    v9[1] = sub_DCAD8;

    return sub_E09D4();
  }
}

uint64_t sub_DCAD8(char a1)
{
  *(*v1 + 145) = a1;

  return _swift_task_switch(sub_DCBD8, 0, 0);
}

uint64_t sub_DCBD8()
{
  if (*(v0 + 145) == 1)
  {
    v1 = *(v0 + 72);
    if (*(v0 + 144))
    {
      v2 = 0x6F4E6E657473696CLL;
    }

    else
    {
      v2 = 0x487972617262696CLL;
    }

    if (*(v0 + 144))
    {
      v3 = 0xEF72656461654877;
    }

    else
    {
      v3 = 0xED00007265646165;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = v2;
    *(inited + 40) = v3;

    *(v0 + 88) = sub_11BA4(inited);
    swift_setDeallocating();
    sub_E17A4(inited + 32);
    v5 = v1 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_serviceType;
    *(v0 + 96) = *(v1 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_serviceType);
    *(v0 + 104) = *(v5 + 8);
    v6 = objc_allocWithZone(AMSEngagementMessageEvent);
    v7 = sub_AB9260();
    isa = sub_AB9B30().super.isa;
    v9 = [v6 initWithServiceType:v7 placements:isa];
    *(v0 + 112) = v9;

    v10 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_engagement);
    v11 = swift_task_alloc();
    *(v0 + 120) = v11;
    *(v11 + 16) = v10;
    *(v11 + 24) = v9;
    v12 = swift_task_alloc();
    *(v0 + 128) = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE700, &unk_AFCBF8);
    *v12 = v0;
    v12[1] = sub_DCF20;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 64, 0, 0, 0xD000000000000015, 0x8000000000B4FFC0, sub_E17F8, v11, v13);
  }

  else
  {
    if (qword_DE6808 != -1)
    {
      swift_once();
    }

    v14 = sub_AB4BC0();
    __swift_project_value_buffer(v14, qword_DEE5B0);
    v15 = sub_AB4BA0();
    v16 = sub_AB9F50();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "💬 Unified Messages is disabled.", v17, 2u);
    }

    v18 = *(v0 + 8);

    return v18(0);
  }
}

uint64_t sub_DCF20()
{
  *(*v1 + 136) = v0;

  if (v0)
  {

    v2 = sub_DD740;
  }

  else
  {

    v2 = sub_DD074;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_DD074()
{
  v53 = v0;
  v1 = *(v0 + 64);
  if (!v1)
  {
    goto LABEL_52;
  }

  v2 = v1;
  v3 = [v2 messageActions];
  if (!v3)
  {
LABEL_19:

LABEL_52:

    if (qword_DE6808 != -1)
    {
      swift_once();
    }

    v39 = sub_AB4BC0();
    __swift_project_value_buffer(v39, qword_DEE5B0);

    v40 = sub_AB4BA0();
    v41 = sub_AB9F50();

    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 112);
    if (v42)
    {
      if (*(v0 + 144))
      {
        v44 = 0xEF72656461654877;
      }

      else
      {
        v44 = 0xED00007265646165;
      }

      if (*(v0 + 144))
      {
        v45 = 0x6F4E6E657473696CLL;
      }

      else
      {
        v45 = 0x487972617262696CLL;
      }

      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v52 = v47;
      *v46 = 136315138;
      v48 = sub_425E68(v45, v44, &v52);

      *(v46 + 4) = v48;
      _os_log_impl(&dword_0, v40, v41, "💬 No response for placement=%s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
    }

    else
    {
    }

    goto LABEL_64;
  }

  v4 = v3;
  sub_E1800();
  v5 = sub_AB9760();

  v50 = v2;
  v51 = v1;
  if (v5 >> 62)
  {
    goto LABEL_50;
  }

  v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  if (!v6)
  {
LABEL_51:

    v1 = v51;
    goto LABEL_52;
  }

LABEL_5:
  v7 = 0;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = sub_360614(v7, v5);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      if (v7 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
LABEL_50:
        v6 = sub_ABB060();
        if (!v6)
        {
          goto LABEL_51;
        }

        goto LABEL_5;
      }

      v8 = *(v5 + 8 * v7 + 32);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_18;
      }
    }

    v2 = *(v0 + 96);
    v10 = *(v0 + 104);
    v11 = v8;
    v12 = [v8 serviceType];
    if (sub_AB92A0() == v2 && v13 == v10)
    {

      goto LABEL_22;
    }

    v1 = sub_ABB3C0();

    if (v1)
    {
      break;
    }

    ++v7;
    if (v9 == v6)
    {
      goto LABEL_51;
    }
  }

LABEL_22:

  v15 = v11;
  v16 = [v11 placementsMap];
  if (!v16)
  {
    goto LABEL_38;
  }

  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEE718, &qword_AFCC08);
  v18 = sub_AB8FF0();

  if (!*(v18 + 16))
  {
    goto LABEL_37;
  }

  v19 = (*(v0 + 144) & 1) != 0 ? 0x6F4E6E657473696CLL : 0x487972617262696CLL;
  v20 = (*(v0 + 144) & 1) != 0 ? 0xEF72656461654877 : 0xED00007265646165;
  v21 = sub_2EBF88(v19, v20);
  if ((v22 & 1) == 0)
  {
    goto LABEL_37;
  }

  v23 = *(*(v18 + 56) + 8 * v21);

  if (v23 >> 62)
  {
    if (!sub_ABB060())
    {
      goto LABEL_37;
    }

LABEL_33:

    if ((v23 & 0xC000000000000001) != 0)
    {
      v24 = sub_360600(0, v23);
    }

    else
    {
      if (!*(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        return;
      }

      v24 = *(v23 + 32);
    }

    v25 = v24;
    v26 = *(v0 + 112);

    v27 = [v25 makeDialogRequest];

    v28 = v27;
    goto LABEL_65;
  }

  if (*(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_33;
  }

LABEL_37:

LABEL_38:
  if (qword_DE6808 != -1)
  {
    swift_once();
  }

  v29 = sub_AB4BC0();
  __swift_project_value_buffer(v29, qword_DEE5B0);

  v30 = sub_AB4BA0();
  v31 = sub_AB9F50();

  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 112);
  if (v32)
  {
    if (*(v0 + 144))
    {
      v34 = 0xEF72656461654877;
    }

    else
    {
      v34 = 0xED00007265646165;
    }

    if (*(v0 + 144))
    {
      v35 = 0x6F4E6E657473696CLL;
    }

    else
    {
      v35 = 0x487972617262696CLL;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v52 = v37;
    *v36 = 136315138;
    v38 = sub_425E68(v35, v34, &v52);

    *(v36 + 4) = v38;
    _os_log_impl(&dword_0, v30, v31, "💬 No messageRequest for placement=%s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
  }

  else
  {
  }

LABEL_64:
  v28 = 0;
LABEL_65:
  v49 = *(v0 + 8);

  v49(v28);
}

uint64_t sub_DD740()
{

  if (qword_DE6808 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_DEE5B0);
  swift_errorRetain();
  sub_480B4();

  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "💬 Error getting message %@", v4, 0xCu);
    sub_12E1C(v5, &qword_DF9B20, &unk_AF8C60);
  }

  v7 = *(v0 + 112);

  v8 = *(v0 + 8);

  return v8(0);
}

uint64_t UnifiedMessages.Placement.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F4E6E657473696CLL;
  }

  else
  {
    return 0x487972617262696CLL;
  }
}

uint64_t sub_DD950(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F4E6E657473696CLL;
  }

  else
  {
    v3 = 0x487972617262696CLL;
  }

  if (v2)
  {
    v4 = 0xED00007265646165;
  }

  else
  {
    v4 = 0xEF72656461654877;
  }

  if (*a2)
  {
    v5 = 0x6F4E6E657473696CLL;
  }

  else
  {
    v5 = 0x487972617262696CLL;
  }

  if (*a2)
  {
    v6 = 0xEF72656461654877;
  }

  else
  {
    v6 = 0xED00007265646165;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_DDA10()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_DDAAC(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_DDB34(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

void sub_DDBCC(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_CEFEC8;
  v7._object = v3;
  v5 = sub_ABB140(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_DDC2C(uint64_t *a1@<X8>)
{
  v2 = 0x487972617262696CLL;
  if (*v1)
  {
    v2 = 0x6F4E6E657473696CLL;
  }

  v3 = 0xED00007265646165;
  if (*v1)
  {
    v3 = 0xEF72656461654877;
  }

  *a1 = v2;
  a1[1] = v3;
}

id sub_DDC94()
{
  result = [objc_allocWithZone(type metadata accessor for UnifiedMessages.Coordinator(0)) init];
  static UnifiedMessages.Coordinator.shared = result;
  return result;
}

id static UnifiedMessages.Coordinator.shared.getter()
{
  if (qword_DE6800 != -1)
  {
    swift_once();
  }

  v1 = static UnifiedMessages.Coordinator.shared;

  return v1;
}

uint64_t sub_DDD84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

void sub_DDDF8(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_mliState;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6572676F72506E69;
      v6 = 0xEA00000000007373;
    }

    else
    {
      v5 = 0x6574656C706D6F63;
      v6 = 0xE900000000000064;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6E776F6E6B6E75;
    }

    else
    {
      v5 = 0xD00000000000001ELL;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0x8000000000B48510;
    }
  }

  v7 = 0x6572676F72506E69;
  v8 = 0xEA00000000007373;
  if (*(v1 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_mliState) != 2)
  {
    v7 = 0x6574656C706D6F63;
    v8 = 0xE900000000000064;
  }

  v9 = 0xD00000000000001ELL;
  v10 = 0x8000000000B48510;
  if (*(v1 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_mliState))
  {
    v9 = 0x6E776F6E6B6E75;
    v10 = 0xE700000000000000;
  }

  if (*(v1 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_mliState) <= 1u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (*(v1 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_mliState) <= 1u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {

    return;
  }

  v13 = sub_ABB3C0();

  if (v13)
  {
    return;
  }

  if (*(v1 + v3) > 1u || *(v1 + v3))
  {
    v14 = sub_ABB3C0();

    if ((v14 & 1) == 0)
    {
      v18 = 0x6572676F72506E69;
      v19 = 0xEA00000000007373;
      if (*(v1 + v3) != 2)
      {
        v18 = 0x6574656C706D6F63;
        v19 = 0xE900000000000064;
      }

      v20 = 0xE700000000000000;
      if (*(v1 + v3))
      {
        v21 = 0x6E776F6E6B6E75;
      }

      else
      {
        v21 = 0xD00000000000001ELL;
      }

      if (!*(v1 + v3))
      {
        v20 = 0x8000000000B48510;
      }

      if (*(v1 + v3) <= 1u)
      {
        v22 = v21;
      }

      else
      {
        v22 = v18;
      }

      osloga = v22;
      if (*(v1 + v3) <= 1u)
      {
        v23 = v20;
      }

      else
      {
        v23 = v19;
      }

      v24 = v1;
      if (qword_DE6808 != -1)
      {
        swift_once();
      }

      v25 = sub_AB4BC0();
      __swift_project_value_buffer(v25, qword_DEE5B0);

      v26 = sub_AB4BA0();
      v27 = sub_AB9F50();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v28 = 136315394;
        v29 = 0x6572676F72506E69;
        v30 = 0xEA00000000007373;
        if (v2 != 2)
        {
          v29 = 0x6574656C706D6F63;
          v30 = 0xE900000000000064;
        }

        v31 = 0xE700000000000000;
        if (v2)
        {
          v32 = 0x6E776F6E6B6E75;
        }

        else
        {
          v32 = 0xD00000000000001ELL;
        }

        if (!v2)
        {
          v31 = 0x8000000000B48510;
        }

        if (v2 <= 1u)
        {
          v33 = v32;
        }

        else
        {
          v33 = v29;
        }

        if (v2 <= 1u)
        {
          v34 = v31;
        }

        else
        {
          v34 = v30;
        }

        v35 = sub_425E68(v33, v34, &v49);

        *(v28 + 4) = v35;
        *(v28 + 12) = 2080;
        *(v28 + 14) = sub_425E68(osloga, v23, &v49);
        _os_log_impl(&dword_0, v26, v27, "💬 mliState changing from %s -> %s", v28, 0x16u);
        swift_arrayDestroy();

        v36 = v24;
      }

      else
      {

        v36 = v24;
      }

      v37 = *(v36 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_userDefaults);
      if (v37)
      {
        v38 = sub_AB9260();
        UnifiedMessages.MLI.userDefaultsKey.unsafeMutableAddressor();

        v39 = sub_AB9260();

        [v37 setObject:v38 forKey:v39];
      }

      v40 = [objc_opt_self() defaultStore];
      v41 = sub_AB9260();

      UnifiedMessages.MLI.userDefaultsKey.unsafeMutableAddressor();

      v42 = sub_AB9260();

      [v40 setString:v41 forKey:v42];

      v43 = *(v36 + v3);
      if (v2 == 2)
      {
        if (v43 != 3)
        {
          return;
        }
      }

      else if (v2 != 1 || v43 != 2)
      {
        return;
      }

      v44 = sub_E1B5C(v2, v43);
      v45 = *(v36 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_engagement);
      sub_3E8ADC(v44);
      oslog = sub_AB8FD0().super.isa;

      v46 = [v45 enqueueData:oslog];

      goto LABEL_75;
    }
  }

  else
  {
  }

  if (qword_DE6808 != -1)
  {
    swift_once();
  }

  v15 = sub_AB4BC0();
  __swift_project_value_buffer(v15, qword_DEE5B0);
  oslog = sub_AB4BA0();
  v16 = sub_AB9F10();
  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, oslog, v16, "💬 GDPR acceptance required before retrieving mliState.", v17, 2u);
  }

LABEL_75:
}

uint64_t UnifiedMessages.Coordinator.publishEngagementEvent(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_E0864(v4, v1, v2, v3);
}

char *sub_DE530()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC5F0, &unk_AFACD0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v29 - v4;
  v6 = &v0[OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_serviceType];
  *v6 = 0x636973756DLL;
  v6[1] = 0xE500000000000000;
  v7 = OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_bag;
  v8 = objc_allocWithZone(AMSProcessInfo);
  v9 = sub_AB9260();
  v10 = [v8 initWithBundleIdentifier:v9];

  v11 = sub_AB9260();
  v12 = sub_AB9260();
  v13 = [objc_opt_self() bagForProfile:v11 profileVersion:v12 processInfo:v10];

  *&v0[v7] = v13;
  v14 = OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_observedPlacements;
  *&v0[v14] = sub_11D0C(&off_CF00A8);
  *&v0[OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_privacyAcknowledgementObserver] = 0;
  v15 = OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_userDefaults;
  UnifiedMessages.groupDefaultsSuiteName.unsafeMutableAddressor();
  v16 = objc_allocWithZone(NSUserDefaults);

  v17 = sub_AB9260();

  v18 = [v16 initWithSuiteName:v17];

  *&v0[v15] = v18;
  *&v0[OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_accountDidChangeObserver] = 0;
  v19 = OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator__inlineBubbleTipRequests;
  v31 = sub_97FAC(_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE5D0, &unk_AFC950);
  sub_AB54D0();
  (*(v3 + 32))(&v0[v19], v5, v2);
  v20 = [objc_allocWithZone(AMSEngagement) initWithBag:*&v0[v7]];
  *&v0[OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_engagement] = v20;
  v0[OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_mliState] = 0;
  v30.receiver = v0;
  v30.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v30, "init");
  v22 = [objc_opt_self() sharedPrivacyInfo];
  LODWORD(v2) = [v22 privacyAcknowledgementRequiredForMusic];

  if (v2)
  {
    if (qword_DE6808 != -1)
    {
      swift_once();
    }

    v23 = sub_AB4BC0();
    __swift_project_value_buffer(v23, qword_DEE5B0);
    v24 = sub_AB4BA0();
    v25 = sub_AB9F50();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "💬 GDPR has not been accepted; prevent setup and observing for messages.", v26, 2u);
    }

    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for PrivacyAcknowledgementObserver();
    swift_allocObject();
    *&v21[OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_privacyAcknowledgementObserver] = PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(1, sub_E1788, v27);
  }

  else
  {
    sub_DEAE4();
  }

  return v21;
}

double sub_DE990(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    if (qword_DE6808 != -1)
    {
      swift_once();
    }

    v2 = sub_AB4BC0();
    __swift_project_value_buffer(v2, qword_DEE5B0);
    v3 = sub_AB4BA0();
    v4 = sub_AB9F50();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "💬 GDPR has been acknowledged, start setup.", v5, 2u);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      sub_DEAE4();
    }

    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      *&v8[OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_privacyAcknowledgementObserver] = 0;
    }
  }

  return result;
}

double sub_DEAE4()
{
  v1 = v0;
  v2 = ICActiveUserIdentityDidChangeNotification;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 defaultIdentityStore];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_accountDidChangeObserver) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v4, v5, 1, 1, sub_E1790, v6);

  v7 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_engagement);
  v8 = sub_DBA6C(*(v1 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_observedPlacements));
  sub_2F3B1C(v8);

  isa = sub_AB9B30().super.isa;

  v10 = sub_AB9260();
  [v7 addObserver:v1 placements:isa serviceType:v10];

  return sub_DECA0();
}

double sub_DECA0()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultStore];
  UnifiedMessages.MLI.userDefaultsKey.unsafeMutableAddressor();

  v3 = sub_AB9260();

  v4 = [v2 stringForKey:v3];

  if (v4)
  {
    v5 = sub_AB92A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = *(v0 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_userDefaults);
  if (v8)
  {

    v9 = sub_AB9260();

    v10 = [v8 stringForKey:v9];

    if (v10)
    {
      v11 = sub_AB92A0();
      v8 = v12;
    }

    else
    {
      v11 = 0;
      v8 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  if (qword_DE6808 != -1)
  {
    swift_once();
  }

  v13 = sub_AB4BC0();
  __swift_project_value_buffer(v13, qword_DEE5B0);

  v14 = sub_AB4BA0();
  v15 = sub_AB9F50();

  v43 = v11;
  if (os_log_type_enabled(v14, v15))
  {
    v42 = v1;
    v16 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v16 = 136315394;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0, &unk_AF8970);
    v17 = sub_AB9350();
    v19 = sub_425E68(v17, v18, &v46);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v44 = v5;
    v45 = v7;

    v20 = sub_AB9350();
    v22 = sub_425E68(v20, v21, &v46);

    *(v16 + 14) = v22;
    _os_log_impl(&dword_0, v14, v15, "💬 mliState UserDefaults: %s, NSUbiquitousKeyValueStore: %s", v16, 0x16u);
    swift_arrayDestroy();

    v1 = v42;
  }

  if (v8)
  {
    v23 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v23 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {

      v24 = sub_E14A4(v11, v8);
      if (v24 == 4)
      {

        v25 = sub_AB4BA0();
        v26 = sub_AB9F30();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v45 = v8;
          v46 = v28;
          *v27 = 136315138;
          v44 = v43;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0, &unk_AF8970);
          v29 = sub_AB9350();
          v31 = sub_425E68(v29, v30, &v46);

          *(v27 + 4) = v31;
          _os_log_impl(&dword_0, v25, v26, "💬 UserDefaults mliState=%s is not a valid mliState value", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v28);
        }

LABEL_29:

        return result;
      }

LABEL_35:
      v41 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_mliState);
      *(v1 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_mliState) = v24;
      sub_DDDF8(v41);

      return result;
    }
  }

  if (v7)
  {
    v32 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v32 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {

      v24 = sub_E14A4(v5, v7);
      if (v24 == 4)
      {

        v25 = sub_AB4BA0();
        v33 = sub_AB9F30();

        if (os_log_type_enabled(v25, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v44 = v35;
          *v34 = 136315138;
          *(v34 + 4) = sub_425E68(v5, v7, &v44);
          _os_log_impl(&dword_0, v25, v33, "💬 NSUbiquitousKeyValueStore mliState=%s is not a valid mliState value", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v35);
        }

        goto LABEL_29;
      }

      goto LABEL_35;
    }
  }

  v37 = sub_AB4BA0();
  v38 = sub_AB9F50();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_0, v37, v38, "💬 Setting mliState=unknown", v39, 2u);
  }

  v40 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_mliState);
  *(v1 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_mliState) = 1;
  sub_DDDF8(v40);
  return result;
}

void sub_DF2E8(uint64_t a1, uint64_t a2)
{
  if (qword_DE6808 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  __swift_project_value_buffer(v2, qword_DEE5B0);
  v3 = sub_AB4BA0();
  v4 = sub_AB9F50();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "💬 Active user changed, resetting mliState", v5, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_userDefaults);
    v8 = Strong;
    v9 = v7;

    if (v7)
    {
      UnifiedMessages.MLI.userDefaultsKey.unsafeMutableAddressor();

      v10 = sub_AB9260();

      [v9 removeObjectForKey:v10];
    }
  }
}

double UnifiedMessages.Coordinator.engagement(_:didUpdate:placement:serviceType:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v9 = &v15 - v8;
  v10 = sub_AB9990();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v4;
  v11[5] = a3;
  v11[6] = a4;
  v11[7] = a2;
  v12 = a2;
  v13 = v4;

  sub_DBDC8(0, 0, v9, &unk_AFC968, v11);

  return result;
}

uint64_t sub_DF578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = swift_task_alloc();
  v7[10] = v8;
  *v8 = v7;
  v8[1] = sub_DF620;

  return sub_E09D4();
}

uint64_t sub_DF620(char a1)
{
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_DF720, 0, 0);
}

uint64_t sub_DF720()
{
  v35 = v0;
  if (*(v0 + 88) != 1)
  {
    if (qword_DE6808 != -1)
    {
      swift_once();
    }

    v6 = sub_AB4BC0();
    __swift_project_value_buffer(v6, qword_DEE5B0);
    v7 = sub_AB4BA0();
    v8 = sub_AB9F50();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_24;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "💬 Unified Messages are disabled; preventing the engagement request from displaying.", v9, 2u);
    goto LABEL_23;
  }

  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  v3._rawValue = &off_CEFEC8;
  v37._countAndFlagsBits = v2;
  v37._object = v1;
  v4 = sub_ABB140(v3, v37);

  if (!v4)
  {
    v5 = 0;
    goto LABEL_10;
  }

  if (v4 != 1)
  {
    if (qword_DE6808 != -1)
    {
      swift_once();
    }

    v26 = sub_AB4BC0();
    __swift_project_value_buffer(v26, qword_DEE5B0);

    v7 = sub_AB4BA0();
    v27 = sub_AB9F50();

    if (!os_log_type_enabled(v7, v27))
    {
      goto LABEL_24;
    }

    v29 = *(v0 + 56);
    v28 = *(v0 + 64);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_425E68(v29, v28, &v34);
    _os_log_impl(&dword_0, v7, v27, "💬 Could not create Placement enum for placement string %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);

LABEL_23:

LABEL_24:

    goto LABEL_25;
  }

  v5 = 1;
LABEL_10:
  if (qword_DE6808 != -1)
  {
    swift_once();
  }

  v10 = sub_AB4BC0();
  __swift_project_value_buffer(v10, qword_DEE5B0);

  v11 = sub_AB4BA0();
  v12 = sub_AB9F50();

  if (os_log_type_enabled(v11, v12))
  {
    v14 = *(v0 + 56);
    v13 = *(v0 + 64);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v34 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_425E68(v14, v13, &v34);
    _os_log_impl(&dword_0, v11, v12, "💬 Received pushed message for %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  if (!*(v0 + 72))
  {

    v17 = sub_AB4BA0();
    v18 = sub_AB9F50();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = *(v0 + 56);
      v19 = *(v0 + 64);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_425E68(v20, v19, &v34);
      _os_log_impl(&dword_0, v17, v18, "💬 Request is nil so removing %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }
  }

  v23 = *(v0 + 72);
  swift_getKeyPath();
  swift_getKeyPath();
  v24 = v23;
  v25 = sub_AB5500();
  sub_2E54F4(v23, v5);
  v25(v0 + 16, 0);

LABEL_25:
  v32 = *(v0 + 8);

  return v32();
}

uint64_t UnifiedMessages.Coordinator.engagement(_:handle:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4)
{
  return sub_DFD9C(a1, a2, a3, a4, "💬 Dialogs without a specified placement are not supported.");
}

{
  return sub_DFD9C(a1, a2, a3, a4, "💬 Full sheets are not supported.");
}

uint64_t sub_DFD9C(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4, const char *a5)
{
  if (qword_DE6808 != -1)
  {
    swift_once();
  }

  v7 = sub_AB4BC0();
  __swift_project_value_buffer(v7, qword_DEE5B0);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, a5, v10, 2u);
  }

  sub_E0EC0();
  v11 = swift_allocError();
  a3(0, v11);
}

void sub_DFED8(void *a1, int a2, void *a3, void *a4, void *aBlock, const char *a6)
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_E14F0(v10, a6);
  _Block_release(v10);
  _Block_release(v10);
}

uint64_t sub_E0068@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

void sub_E00A8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE720, &unk_AFCC10);
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin().n128_u64[0];
  v10 = aBlock - v9;
  v11 = [a2 enqueueMessageEvent:{a3, v8}];
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_E18E0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_28;
  v14 = _Block_copy(aBlock);

  [v11 addFinishBlock:v14];
  _Block_release(v14);
}

uint64_t sub_E0280(void *a1, void *a2)
{
  if (a2)
  {
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE720, &unk_AFCC10);
    return sub_AB98C0();
  }

  else
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE720, &unk_AFCC10);
    return sub_AB98D0();
  }
}

uint64_t sub_E0304()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_DEE5B0);
  __swift_project_value_buffer(v0, qword_DEE5B0);
  return static Logger.music(_:)(0x4D64656966696E55, 0xEF73656761737365);
}

void sub_E0374(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v3);

  *a2 = v3;
}

uint64_t sub_E03F4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_AB5520();
}

uint64_t sub_E046C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_E0564;

  return v6(a1);
}

uint64_t sub_E0564()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_E065C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_E0750;

  return v5(v2 + 32);
}

uint64_t sub_E0750()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_E0864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  v11 = *(a2 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages11Coordinator_engagement);
  v12 = (*(a4 + 24))(a3, a4);
  sub_3E8ADC(v12);
  isa = sub_AB8FD0().super.isa;

  return (*(v7 + 8))(v10, a3);
}

uint64_t sub_E09F0(uint64_t a1)
{
  v2 = JSBridge.shared.unsafeMutableAddressor();
  v3 = *v2;
  *(v1 + 288) = *v2;
  v4 = *(&stru_B8.size + (swift_isaMask & *v3));
  v3;
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v1 + 296) = v5;
  *v5 = v1;
  v5[1] = sub_E0B34;

  return v7(v1 + 144);
}

uint64_t sub_E0B34()
{
  v1 = *(*v0 + 288);

  return _swift_task_switch(sub_E0C48, 0, 0);
}

uint64_t sub_E0C48()
{
  v1 = v0[20];
  v2 = OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_isUnifiedMessagesEnabled;
  swift_beginAccess();
  v3 = *(v1 + v2);
  static ApplicationCapabilities.shared.getter((v0 + 2));
  v4 = v0[6];

  sub_70C54((v0 + 2));
  v5 = sub_472A84(10, v4);

  if (qword_DE6808 != -1)
  {
    swift_once();
  }

  v6 = sub_AB4BC0();
  __swift_project_value_buffer(v6, qword_DEE5B0);
  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109376;
    *(v9 + 4) = v3;
    *(v9 + 8) = 1024;
    *(v9 + 10) = v5 & 1;
    _os_log_impl(&dword_0, v7, v8, "💬 Are Unified Messages enabled?: %{BOOL}d, %{BOOL}d", v9, 0xEu);
  }

  sub_E1A44((v0 + 18));
  v10 = v0[1];

  return v10(v3 & v5);
}

uint64_t sub_E0DEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_17CF8;

  return sub_DF578(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_E0EC0()
{
  result = qword_DEE5E0;
  if (!qword_DEE5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEE5E0);
  }

  return result;
}

unint64_t sub_E0F18()
{
  result = qword_DEE5E8;
  if (!qword_DEE5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEE5E8);
  }

  return result;
}

unint64_t sub_E0F70()
{
  result = qword_DEE5F0;
  if (!qword_DEE5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEE5F8, &qword_AFCA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEE5F0);
  }

  return result;
}

uint64_t type metadata accessor for UnifiedMessages.Coordinator(uint64_t a1)
{
  result = qword_DEE6C0;
  if (!qword_DEE6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_E1038(uint64_t a1)
{
  sub_E1108(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_E1108(uint64_t a1)
{
  if (!qword_DEE6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_DEE5D0, &unk_AFC950);
    v1 = sub_AB5540();
    if (!v2)
    {
      atomic_store(v1, &qword_DEE6D0);
    }
  }
}

unint64_t sub_E1180()
{
  result = qword_DEE6D8;
  if (!qword_DEE6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEE6D8);
  }

  return result;
}

uint64_t sub_E11D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E1244()
{

  return swift_deallocObject();
}

uint64_t sub_E127C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17CF8;

  return sub_E065C(a1, v4);
}

uint64_t sub_E1334(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17CF8;

  return sub_E065C(a1, v4);
}

uint64_t sub_E13EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17BD0;

  return sub_E065C(a1, v4);
}

unint64_t sub_E14A4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CF0028;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_E14F0(uint64_t a1, const char *a2)
{
  if (qword_DE6808 != -1)
  {
    swift_once();
  }

  v4 = sub_AB4BC0();
  __swift_project_value_buffer(v4, qword_DEE5B0);
  v5 = sub_AB4BA0();
  v6 = sub_AB9F30();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, a2, v7, 2u);
  }

  sub_E0EC0();
  swift_allocError();
  v8 = sub_AB3040();
  (*(a1 + 16))(a1, 0, v8);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_E167C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_17BD0;

  return sub_DF578(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_E1750()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

double sub_E1798(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_E1800()
{
  result = qword_DEE710;
  if (!qword_DEE710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DEE710);
  }

  return result;
}

uint64_t sub_E184C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE720, &unk_AFCC10);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_E18E0(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE720, &unk_AFCC10);

  return sub_E0280(a1, a2);
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_E1984(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17CF8;

  return sub_E046C(a1, v4);
}

void sub_E1AB0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = sub_AB92A0();
    v5 = v4;
  }

  else
  {

    v5 = 0xEF636973754D2E65;
    v3 = 0x6C7070612E6D6F63;
  }

  qword_E70DF0 = v3;
  *algn_E70DF8 = v5;
}

unint64_t sub_E1B5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v4 = 0xE900000000000064;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85D0;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  strcpy((inited + 48), "mliStateChange");
  *(inited + 63) = -18;
  *(inited + 64) = 7368801;
  *(inited + 72) = 0xE300000000000000;
  if (qword_DE6810 != -1)
  {
    v13 = inited;
    swift_once();
    inited = v13;
  }

  v6 = *algn_E70DF8;
  *(inited + 80) = qword_E70DF0;
  *(inited + 88) = v6;
  *(inited + 96) = 0x6574617453646C6FLL;
  *(inited + 104) = 0xE800000000000000;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v8 = 0x6572676F72506E69;
      v7 = 0xEA00000000007373;
    }

    else
    {
      v8 = 0x6574656C706D6F63;
      v7 = 0xE900000000000064;
    }
  }

  else if (a1)
  {
    v7 = 0xE700000000000000;
    v8 = 0x6E776F6E6B6E75;
  }

  else
  {
    v7 = 0x8000000000B48510;
    v8 = 0xD00000000000001ELL;
  }

  *(inited + 112) = v8;
  *(inited + 120) = v7;
  *(inited + 128) = 0x657461745377656ELL;
  *(inited + 136) = 0xE800000000000000;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v9 = 0x6572676F72506E69;
      v4 = 0xEA00000000007373;
    }

    else
    {
      v9 = 0x6574656C706D6F63;
    }
  }

  else if (a2)
  {
    v4 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
  }

  else
  {
    v4 = 0x8000000000B48510;
    v9 = 0xD00000000000001ELL;
  }

  *(inited + 144) = v9;
  *(inited + 152) = v4;
  v10 = inited;

  v11 = sub_96B2C(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEE730, &qword_AFCCA0);
  swift_arrayDestroy();
  return v11;
}

void *TextDrawing.Context.text.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 24))
  {
    v3 = *(v0 + 16);
    v4 = [v1 string];
    v5 = sub_AB92A0();

    sub_E1E78(v1, v2, v3, 1);
    return v5;
  }

  else
  {
  }

  return v1;
}

double sub_E1E78(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }

  return result;
}

void *TextDrawing.Context.attributedString.getter()
{
  v1 = *v0;
  sub_E1F1C(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  return v1;
}

double sub_E1F1C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    v5 = a1;
  }

  else
  {
  }

  return result;
}

void TextDrawing.Context.hash(into:)(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 24))
  {
    sub_ABA7A0();
  }

  else
  {
    sub_AB93F0();
    type metadata accessor for Key(0);
    sub_3FB3C();
    isa = sub_AB8FD0().super.isa;
    sub_ABA7A0();
  }

  sub_ABB5D0(*(v2 + 40));
  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  sub_ABB600(*&v4);
  if (v5 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v5;
  }

  sub_ABB600(*&v6);
  v7 = *(v2 + 96);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  sub_ABB600(*&v7);
  v8 = *(v2 + 104);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  sub_ABB600(*&v8);
  sub_ABB5D0(*(v2 + 112));
  v9 = *(v2 + 120);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  sub_ABB600(*&v9);
}

Swift::Int TextDrawing.Context.hashValue.getter()
{
  sub_ABB5C0();
  TextDrawing.Context.hash(into:)(v1);
  return sub_ABB610();
}

Swift::Int sub_E2108(uint64_t a1)
{
  sub_ABB5C0();
  TextDrawing.Context.hash(into:)(v2);
  return sub_ABB610();
}

uint64_t sub_E2144(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return _s16MusicApplication11TextDrawingV7ContextV2eeoiySbAE_AEtFZ_0(v13, v14) & 1;
}

void sub_E21B8(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  sub_ABB600(*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  sub_ABB600(*&v3);
}

uint64_t _s16MusicApplication11TextDrawingV7ContextV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if ((*(a1 + 24) & 1) == 0)
  {
    if (*(a2 + 24))
    {
      goto LABEL_22;
    }

    v7 = *(a1 + 16);
    v8 = *(a2 + 16);
    v9 = v4 == v5 && *(a1 + 8) == *(a2 + 8);
    if (!v9 && (sub_ABB3C0() & 1) == 0)
    {
      goto LABEL_22;
    }

    sub_16A080(v7);
    if (!v6)
    {
      return v6 & 1;
    }

    v10 = v6;
    sub_16A080(v8);
    if (!v11)
    {

      goto LABEL_22;
    }

    sub_474250(v10, v11);
    v13 = v12;

    if ((v13 & 1) == 0)
    {
LABEL_22:
      LOBYTE(v6) = 0;
      return v6 & 1;
    }

LABEL_15:
    if (*(a1 + 40) == *(a2 + 40) && (sub_ABA520() & 1) != 0)
    {
      sub_7FD28();
      if ((sub_AB38E0() & 1) != 0 && (sub_AB38E0() & 1) != 0 && *(a1 + 112) == *(a2 + 112))
      {
        LOBYTE(v6) = sub_AB38E0();
        return v6 & 1;
      }
    }

    goto LABEL_22;
  }

  if ((*(a2 + 24) & 1) == 0)
  {
    goto LABEL_22;
  }

  if (v4 == v5)
  {
    goto LABEL_15;
  }

  LODWORD(v6) = [v4 isEqualToAttributedString:?];
  if (v6)
  {
    goto LABEL_15;
  }

  return v6 & 1;
}

unint64_t sub_E23C8()
{
  result = qword_DEE738;
  if (!qword_DEE738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEE738);
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_E2440(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_E2488(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_E24F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_ABB5C0();
  sub_ABA7A0();
  sub_ABA7A0();
  sub_ABB5D0(v1);
  sub_ABB5E0(v2);
  return sub_ABB610();
}

void sub_E257C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_ABA7A0();
  sub_ABA7A0();
  sub_ABB5D0(v2);
  sub_ABB5E0(v3);
}

Swift::Int sub_E25E0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_ABB5C0();
  sub_ABA7A0();
  sub_ABA7A0();
  sub_ABB5D0(v2);
  sub_ABB5E0(v3);
  return sub_ABB610();
}

uint64_t sub_E2660(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = a2[2];
  v5 = *(a2 + 24);
  sub_13C80(0, &qword_DFA720, NSObject_ptr);
  if ((sub_ABA790() & 1) == 0)
  {
    return 0;
  }

  v6 = sub_ABA790();
  v7 = v3 ^ v5 ^ 1;
  if (v2 != v4)
  {
    v7 = 0;
  }

  if (v6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

id sub_E270C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);

  v28 = sub_ABA560();
  v5 = objc_opt_self();
  v6 = [v5 secondaryLabelColor];
  v7 = sub_ABA550();
  v8 = [v5 secondaryLabelColor];
  v9 = sub_ABA550();
  v10 = [v5 secondaryLabelColor];
  v11 = UIView.Corner.small.unsafeMutableAddressor();
  v12 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  v13 = v12[13];
  v14 = sub_ABA680();
  (*(*(v14 - 8) + 16))(a3 + v13, v11, v14);
  v15 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v16 = *v15;
  v27 = v15[1];
  v17 = v15[2];
  v18 = v15[3];
  v19 = *(v15 + 2);
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = 1;
  *(a3 + 40) = 1;
  *(a3 + 48) = a1;
  *(a3 + 56) = a2;
  *(a3 + 64) = v28;
  *(a3 + 72) = v6;
  *(a3 + 80) = 1;
  *(a3 + 88) = 1;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0xE000000000000000;
  *(a3 + 112) = v9;
  *(a3 + 120) = v10;
  *(a3 + 128) = 2;
  *(a3 + 136) = 1;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0xE000000000000000;
  *(a3 + 160) = 3;
  *(a3 + 168) = 0;
  v20 = a3 + v12[14];
  *v20 = v16;
  *(v20 + 8) = v27;
  *(v20 + 16) = v17;
  *(v20 + 24) = v18;
  *(v20 + 32) = v19;
  *(a3 + v12[15]) = 0;
  v21 = (a3 + v12[16]);
  *v21 = 0;
  v21[1] = 0;
  v22 = (a3 + v12[17]);
  *v22 = 0;
  v22[1] = 0;
  *(a3 + v12[18]) = 0;
  *(a3 + v12[19]) = 0;
  *(a3 + v12[20]) = 0;
  *(a3 + v12[21]) = 0;
  *(a3 + v12[22]) = 0;
  *(a3 + v12[23]) = 1;
  *(a3 + v12[24]) = 0;
  *(a3 + v12[25]) = 1;
  *(a3 + v12[26]) = 1;
  *(a3 + v12[27]) = 0;
  *(a3 + v12[28]) = 0;
  v23 = v17;
  v24 = v18;
  v25 = v16;

  return v27;
}

id sub_E298C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);

  v29 = sub_ABA580();
  v5 = objc_opt_self();
  v6 = [v5 labelColor];
  v7 = sub_ABA550();
  v8 = [v5 secondaryLabelColor];
  v9 = sub_ABA550();
  v10 = [v5 secondaryLabelColor];
  v11 = UIView.Corner.small.unsafeMutableAddressor();
  v12 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  v13 = v12[13];
  v14 = sub_ABA680();
  (*(*(v14 - 8) + 16))(a3 + v13, v11, v14);
  v15 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v16 = *v15;
  v28 = v15[1];
  v17 = v15[2];
  v18 = v15[3];
  v19 = *(v15 + 2);
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = 1;
  *(a3 + 40) = 1;
  *(a3 + 48) = a1;
  *(a3 + 56) = a2;
  *(a3 + 64) = v29;
  *(a3 + 72) = v6;
  *(a3 + 80) = 2;
  *(a3 + 88) = 1;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0xE000000000000000;
  *(a3 + 112) = v9;
  *(a3 + 120) = v10;
  *(a3 + 128) = 2;
  *(a3 + 136) = 1;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0xE000000000000000;
  *(a3 + 160) = 4;
  *(a3 + 168) = 0;
  v20 = a3 + v12[14];
  *v20 = v16;
  *(v20 + 8) = v28;
  *(v20 + 16) = v17;
  *(v20 + 24) = v18;
  *(v20 + 32) = v19;
  *(a3 + v12[15]) = 0;
  v21 = (a3 + v12[16]);
  *v21 = 0;
  v21[1] = 0;
  v22 = (a3 + v12[17]);
  *v22 = 0;
  v22[1] = 0;
  *(a3 + v12[18]) = 2;
  *(a3 + v12[19]) = 0;
  *(a3 + v12[20]) = 0;
  *(a3 + v12[21]) = 0;
  *(a3 + v12[22]) = 0;
  *(a3 + v12[23]) = 1;
  *(a3 + v12[24]) = 0;
  *(a3 + v12[25]) = 1;
  *(a3 + v12[26]) = 1;
  v23 = v12[27];
  *(a3 + v12[28]) = 0;
  *(a3 + v23) = 1;
  v24 = v17;
  v25 = v18;
  v26 = v16;

  return v28;
}

id sub_E2C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v42 = a2;
  v40 = a1;
  v5 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a3 horizontalSizeClass];
  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
  if (v9 == &dword_0 + 1)
  {
    v10 = sub_ABA550();
  }

  else
  {
    v10 = sub_ABA580();
  }

  v38 = v10;
  v39 = v9 != &dword_0 + 1;
  v11 = [objc_opt_self() labelColor];
  v12 = sub_ABA550();
  v13 = objc_opt_self();
  v14 = [v13 secondaryLabelColor];
  v15 = sub_ABA550();
  v16 = [v13 secondaryLabelColor];
  v17 = UIView.Corner.small.unsafeMutableAddressor();
  v18 = v5[13];
  v19 = sub_ABA680();
  (*(*(v19 - 8) + 16))(&v8[v18], v17, v19);
  v20 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v22 = *v20;
  v37 = v20[1];
  v21 = v37;
  v24 = v20[2];
  v23 = v20[3];
  *v8 = 0;
  *(v8 + 1) = 0xE000000000000000;
  *(v8 + 2) = v12;
  *(v8 + 3) = v14;
  v25 = *(v20 + 2);
  *(v8 + 4) = 1;
  v8[40] = 1;
  v26 = v42;
  *(v8 + 6) = v40;
  *(v8 + 7) = v26;
  *(v8 + 8) = v38;
  *(v8 + 9) = v11;
  *(v8 + 10) = 2;
  v8[88] = 1;
  *(v8 + 12) = 0;
  *(v8 + 13) = 0xE000000000000000;
  *(v8 + 14) = v15;
  *(v8 + 15) = v16;
  *(v8 + 16) = 2;
  v8[136] = 1;
  *(v8 + 18) = 0;
  *(v8 + 19) = 0xE000000000000000;
  v8[160] = 4;
  *(v8 + 21) = 0;
  v27 = &v8[v5[14]];
  *v27 = v22;
  *(v27 + 1) = v21;
  *(v27 + 2) = v24;
  *(v27 + 3) = v23;
  *(v27 + 2) = v25;
  *&v8[v5[15]] = 0;
  v28 = &v8[v5[16]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v8[v5[17]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v8[v5[18]] = 2;
  v8[v5[19]] = 0;
  v8[v5[20]] = 0;
  v8[v5[21]] = 0;
  v8[v5[22]] = 0;
  v8[v5[23]] = 1;
  v8[v5[24]] = 0;
  v30 = v5[25];
  v8[v5[26]] = 1;
  v8[v5[27]] = 0;
  v31 = v5[28];
  v8[v30] = v39;
  v8[v31] = 1;
  sub_E8CF0(v8, v41);
  v32 = v24;
  v33 = v23;

  v34 = v22;
  v35 = v37;

  return v35;
}

id sub_E2F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);

  v29 = sub_ABA580();
  v5 = objc_opt_self();
  v6 = [v5 labelColor];
  v7 = sub_ABA550();
  v8 = [v5 secondaryLabelColor];
  v9 = sub_ABA550();
  v10 = [v5 secondaryLabelColor];
  v11 = UIView.Corner.small.unsafeMutableAddressor();
  v12 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  v13 = v12[13];
  v14 = sub_ABA680();
  (*(*(v14 - 8) + 16))(a3 + v13, v11, v14);
  v15 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v16 = *v15;
  v28 = v15[1];
  v17 = v15[2];
  v18 = v15[3];
  v19 = *(v15 + 2);
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = 1;
  *(a3 + 40) = 1;
  *(a3 + 48) = a1;
  *(a3 + 56) = a2;
  *(a3 + 64) = v29;
  *(a3 + 72) = v6;
  *(a3 + 80) = 2;
  *(a3 + 88) = 1;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0xE000000000000000;
  *(a3 + 112) = v9;
  *(a3 + 120) = v10;
  *(a3 + 128) = 2;
  *(a3 + 136) = 1;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0xE000000000000000;
  *(a3 + 160) = 4;
  *(a3 + 168) = 0;
  v20 = a3 + v12[14];
  *v20 = v16;
  *(v20 + 8) = v28;
  *(v20 + 16) = v17;
  *(v20 + 24) = v18;
  *(v20 + 32) = v19;
  *(a3 + v12[15]) = 0;
  v21 = (a3 + v12[16]);
  *v21 = 0;
  v21[1] = 0;
  v22 = (a3 + v12[17]);
  *v22 = 0;
  v22[1] = 0;
  *(a3 + v12[18]) = 2;
  *(a3 + v12[19]) = 0;
  *(a3 + v12[20]) = 0;
  *(a3 + v12[21]) = 0;
  *(a3 + v12[22]) = 0;
  *(a3 + v12[23]) = 1;
  *(a3 + v12[24]) = 0;
  *(a3 + v12[25]) = 1;
  v23 = v12[26];
  *(a3 + v12[27]) = 0;
  *(a3 + v12[28]) = 0;
  *(a3 + v23) = 0;
  v24 = v17;
  v25 = v18;
  v26 = v16;

  return v28;
}

id sub_E31CC@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
  v2 = sub_ABA550();
  v3 = objc_opt_self();
  v4 = [v3 secondaryLabelColor];
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = 1;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  v5 = sub_ABA580();
  v6 = [v3 labelColor];
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  *(a1 + 80) = 2;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0xE000000000000000;
  v7 = sub_ABA550();
  v8 = [v3 secondaryLabelColor];
  *(a1 + 112) = v7;
  *(a1 + 120) = v8;
  *(a1 + 128) = 2;
  *(a1 + 136) = 1;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0xE000000000000000;
  *(a1 + 160) = 4;
  *(a1 + 168) = 0;
  v9 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  v10 = v9[13];
  v11 = UIView.Corner.small.unsafeMutableAddressor();
  v12 = sub_ABA680();
  (*(*(v12 - 8) + 16))(a1 + v10, v11, v12);
  v13 = a1 + v9[14];
  v14 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v15 = *v14;
  v25 = v14[1];
  v16 = v14[2];
  v17 = v14[3];
  v18 = *(v14 + 2);
  *v13 = *v14;
  *(v13 + 8) = v25;
  *(v13 + 16) = v16;
  *(v13 + 24) = v17;
  *(v13 + 32) = v18;
  *(a1 + v9[15]) = 0;
  v19 = (a1 + v9[16]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (a1 + v9[17]);
  *v20 = 0;
  v20[1] = 0;
  *(a1 + v9[18]) = 0;
  *(a1 + v9[19]) = 0;
  *(a1 + v9[20]) = 0;
  *(a1 + v9[21]) = 0;
  *(a1 + v9[22]) = 0;
  *(a1 + v9[23]) = 1;
  *(a1 + v9[24]) = 0;
  *(a1 + v9[25]) = 1;
  *(a1 + v9[26]) = 1;
  *(a1 + v9[27]) = 0;
  *(a1 + v9[28]) = 0;
  v21 = v16;
  v22 = v17;
  v23 = v15;

  return v25;
}

void *sub_E342C(uint64_t a1)
{
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E8920(v1, v3);
  v4 = objc_allocWithZone(type metadata accessor for DefaultHeaderContentView());
  v5 = sub_E3E14(v3);
  sub_E8C04(&qword_DEE980, type metadata accessor for DefaultHeaderContentView, &unk_AFD0D8);
  return v5;
}

void *sub_E34F8()
{
  type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  __chkstk_darwin();
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v15 - v3;
  v5 = v0 + OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView____lazy_storage___contentView;
  v6 = *(v0 + OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView____lazy_storage___contentView);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView____lazy_storage___contentView);
  }

  else
  {
    v8 = OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView_contentConfiguration;
    swift_beginAccess();
    sub_E8920(v0 + v8, v4);
    sub_E8920(v4, v2);
    v9 = objc_allocWithZone(type metadata accessor for DefaultHeaderContentView());
    v10 = sub_E3E14(v2);
    sub_E8C4C(v4);
    v11 = sub_E8C04(&qword_DEE980, type metadata accessor for DefaultHeaderContentView, &unk_AFD0D8);
    v12 = *v5;
    *v5 = v10;
    *(v5 + 8) = v11;
    v7 = v10;

    v6 = 0;
  }

  v13 = v6;
  return v7;
}

double sub_E37C8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView_artworkCachingReference) = a1;
  swift_retain_n();

  v3 = v1 + OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView_contentConfiguration;
  swift_beginAccess();
  v4 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  *(v3 + *(v4 + 60)) = a1;

  v5 = sub_E34F8();
  swift_getObjectType();
  v8[3] = v4;
  v8[4] = sub_E8C04(&qword_DEE978, type metadata accessor for CollectionViewSection.ContentConfiguration, &unk_AFD0A8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v8);
  sub_E8920(v3, boxed_opaque_existential_0);
  sub_AB4C70();

  return result;
}

uint64_t sub_E3AA0(uint64_t a1)
{
  result = type metadata accessor for CollectionViewSection.ContentConfiguration(319);
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

uint64_t sub_E3C54@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724SectionHeaderContentView_configuration;
  swift_beginAccess();
  return sub_E8BA0(v1 + v3, a1);
}

uint64_t sub_E3CAC(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724SectionHeaderContentView_configuration;
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((v1 + v3), a1);
  v4 = swift_endAccess();
  (*&stru_68.segname[swift_isaMask & *v1])(v4);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t (*sub_E3D48(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_E3DAC;
}

uint64_t sub_E3DAC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*&stru_68.segname[swift_isaMask & **(a1 + 24)])(result);
  }

  return result;
}

void *sub_E3E14(uint64_t a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___chevronImageView] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___artworkComponent] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_systemStyleButton] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_topHairlineView] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_bottomHairlineView] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_tapGestureRecognizerHandler] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_tapGestureRecognizer] = 0;
  sub_E8920(a1, v5);
  v6 = &v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724SectionHeaderContentView_configuration];
  *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724SectionHeaderContentView_configuration + 24] = v3;
  v6[4] = sub_E8C04(&qword_DEE978, type metadata accessor for CollectionViewSection.ContentConfiguration, &unk_AFD0A8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v6);
  sub_E8920(v5, boxed_opaque_existential_0);
  v8 = type metadata accessor for SectionHeaderContentView();
  v15.receiver = v1;
  v15.super_class = v8;
  v9 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  (*&stru_68.segname[swift_isaMask & *v9])();
  sub_E8C4C(v5);
  v10 = v9;
  v11 = sub_E40E8(&OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel);
  [v10 addSubview:v11];

  v12 = sub_E40E8(&OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel);
  [v10 addSubview:v12];

  [*(v10 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel) setHidden:1];
  sub_E4180();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF37F0, qword_B01640);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_AF4EC0;
  *(v13 + 32) = sub_AB5330();
  *(v13 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_ABA6F0();
  sub_E8C4C(a1);

  swift_unknownObjectRelease();

  return v10;
}

id sub_E40E8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(UILabel) init];
    [v5 setNumberOfLines:2];
    [v5 setLineBreakMode:4];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

uint64_t sub_E4180()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v3 = &v113 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v113 - v4;
  v6 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  __chkstk_darwin();
  v117 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v113 - v8;
  __chkstk_darwin();
  v11 = &v113 - v10;
  v12 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724SectionHeaderContentView_configuration;
  swift_beginAccess();
  sub_E8BA0(&v1[v12], v119);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC260, &unk_AFD130);
  swift_dynamicCast();
  v114 = v6[16];
  if (*&v11[v114])
  {
    v14 = *(v11 + 7);
    v15 = *(v11 + 6) & 0xFFFFFFFFFFFFLL;
    if ((v14 & 0x2000000000000000) != 0)
    {
      v15 = HIBYTE(v14) & 0xF;
    }

    v16 = v15 != 0;
  }

  else
  {
    v16 = 0;
  }

  sub_E8BA0(&v1[v12], v119);
  swift_dynamicCast();
  v17 = v9[160];
  if (v17 == 4)
  {
    LOBYTE(v17) = sub_E76D8(v9);
  }

  sub_E8C4C(v9);
  v115 = v13;
  v116 = v12;
  if (v17 <= 1u)
  {
    if (v17)
    {
      v18 = String.trim()();
      v19 = *(v11 + 8);
      v20 = sub_E40E8(&OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel);
      sub_E4F00(v18._countAndFlagsBits, v18._object, v16, v19, v20);

      v21 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel;
      [*&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel] setTextColor:*(v11 + 9)];
      [*&v1[v21] setNumberOfLines:*(v11 + 10)];
      [*&v1[v21] setAdjustsFontForContentSizeCategory:v11[88]];
      v22 = sub_E40E8(&OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel);
      [v22 setHidden:0];

      String.trim()();
      v23 = *(v11 + 14);
      v24 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel;
      v25 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel];
      [v25 setAttributedText:0];
      v26 = sub_AB9260();
      [v25 setText:v26];

      [v25 setFont:v23];

      [*&v1[v24] setNumberOfLines:*(v11 + 16)];
      [*&v1[v24] setTextColor:*(v11 + 15)];
      [*&v1[v24] setAdjustsFontForContentSizeCategory:v11[136]];
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v17 != 2)
  {
LABEL_16:
    v65 = String.trim()();
    v66 = *(v11 + 8);
    v67 = sub_E40E8(&OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel);
    sub_E4F00(v65._countAndFlagsBits, v65._object, v16, v66, v67);

    v68 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel;
    [*&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel] setTextColor:*(v11 + 9)];
    [*&v1[v68] setNumberOfLines:*(v11 + 10)];
    [*&v1[v68] setAdjustsFontForContentSizeCategory:v11[88]];
    v69 = sub_E40E8(&OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel);
    [v69 setHidden:1];

    v70 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel;
    [*&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel] setText:0];
    [*&v1[v70] setAttributedText:0];
    goto LABEL_17;
  }

  v113 = v3;
  String.trim()();
  v27 = *(v11 + 2);
  v28 = sub_E40E8(&OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel);
  [v28 setAttributedText:0];
  v29 = sub_AB9260();
  [v28 setText:v29];

  [v28 setFont:v27];

  v30 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel;
  [*&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel] setTextColor:*(v11 + 3)];
  [*&v1[v30] setNumberOfLines:*(v11 + 4)];
  [*&v1[v30] setAdjustsFontForContentSizeCategory:v11[40]];
  v31 = sub_E40E8(&OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel);
  [v31 setHidden:0];

  v32 = String.trim()();
  v33 = *(v11 + 8);
  v34 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel;
  v35 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel];
  sub_E4F00(v32._countAndFlagsBits, v32._object, v16, v33, v35);

  [*&v1[v34] setNumberOfLines:*(v11 + 10)];
  [*&v1[v34] setTextColor:*(v11 + 9)];
  [*&v1[v34] setAdjustsFontForContentSizeCategory:v11[88]];
  v36 = sub_E53CC();
  v37 = v36;
  v38 = *(v11 + 21);
  if (v38)
  {
    v39 = v38;
    sub_74EA4(v38);
    v40 = v6[13];
    v41 = sub_ABA680();
    v42 = *(v41 - 8);
    (*(v42 + 16))(v5, &v11[v40], v41);
    (*(v42 + 56))(v5, 0, 1, v41);
    v43 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
    swift_beginAccess();
    v44 = v113;
    sub_15F84(v37 + v43, v113, &unk_DFFBC0, &unk_AF85C0);
    swift_beginAccess();
    sub_8A01C(v5, v37 + v43);
    swift_endAccess();
    sub_75AE8(v44);
    sub_12E1C(v44, &unk_DFFBC0, &unk_AF85C0);
    sub_12E1C(v5, &unk_DFFBC0, &unk_AF85C0);
    v45 = &v11[v6[14]];
    v46 = *v45;
    v47 = *(v45 + 1);
    v48 = *(v45 + 2);
    v49 = *(v45 + 3);
    v50 = *(v45 + 2);
    v51 = *(v37 + 168);
    v119[0] = *(v37 + 152);
    v119[1] = v51;
    v119[2] = *(v37 + 184);
    *(v37 + 152) = v46;
    *(v37 + 160) = v47;
    *(v37 + 168) = v48;
    *(v37 + 176) = v49;
    *(v37 + 184) = v50;
    v52 = v48;
    v53 = v49;
    v54 = v46;
    v55 = v47;
    v56 = v52;
    v57 = v53;
    v58 = v54;
    v59 = v55;
    sub_75948(v119);
    sub_12E1C(v119, &unk_DF8690, &unk_AF9900);

    v60 = UIView.Border.artwork.unsafeMutableAddressor();
    v61 = *v60;
    v62 = *(v60 + 8);
    v63 = v60[2];
    v64 = v63;
    sub_75E64(v61, v62, v63);
    *(v37 + 16) = *&v11[v6[15]];

    *(v37 + 24) = 0x70756B636F6CLL;
    *(v37 + 32) = 0xE600000000000000;

    if (([*(v37 + 112) isDescendantOfView:v1] & 1) == 0)
    {
      [v1 addSubview:*(v37 + 112)];
    }
  }

  else
  {
    [*(v36 + 112) removeFromSuperview];
  }

LABEL_17:
  v71 = *&v11[v114];
  v72 = sub_E5474();
  v73 = v72;
  if (v71)
  {
    v74 = [v72 isDescendantOfView:v1];

    if ((v74 & 1) == 0)
    {
      [v1 addSubview:*&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___chevronImageView]];
    }

    v75 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v76 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v77 = objc_allocWithZone(type metadata accessor for TapGestureRecognizer());

    v78 = [v77 init];
    v79 = &v78[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB720TapGestureRecognizer_onTouchDown];
    v80 = *&v78[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB720TapGestureRecognizer_onTouchDown];
    v81 = *&v78[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB720TapGestureRecognizer_onTouchDown + 8];
    *v79 = sub_E8DFC;
    v79[1] = v75;

    v82 = v78;
    sub_17654(v80, v81);

    v83 = &v82[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB720TapGestureRecognizer_onTouchUp];
    v84 = *&v82[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB720TapGestureRecognizer_onTouchUp];
    v85 = *&v82[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB720TapGestureRecognizer_onTouchUp + 8];
    *v83 = sub_E8E24;
    v83[1] = v76;

    sub_17654(v84, v85);

    v86 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_tapGestureRecognizer];
    *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_tapGestureRecognizer] = v82;
    v87 = v82;
    sub_E774C(v86);
  }

  else
  {
    [v72 removeFromSuperview];

    v86 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_tapGestureRecognizer];
    *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_tapGestureRecognizer] = 0;
    sub_E774C(v86);
  }

  if (!*&v11[v6[17]])
  {
    goto LABEL_33;
  }

  v88 = *(v11 + 19);
  v89 = HIBYTE(v88) & 0xF;
  if ((v88 & 0x2000000000000000) == 0)
  {
    v89 = *(v11 + 18) & 0xFFFFFFFFFFFFLL;
  }

  if (!v89)
  {
LABEL_33:
    v104 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_systemStyleButton;
    v105 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_systemStyleButton];
    if (v105)
    {
      [v105 removeFromSuperview];
      v103 = *&v1[v104];
    }

    else
    {
      v103 = 0;
    }

    *&v1[v104] = 0;
    goto LABEL_37;
  }

  v90 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_systemStyleButton;
  v91 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_systemStyleButton];
  if (v91)
  {
    goto LABEL_48;
  }

  v92 = objc_opt_self();
  v93 = [v92 buttonWithType:1];
  v94 = [v93 titleLabel];
  if (v94)
  {
    v95 = v94;
    v96 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v95 setFont:v96];
  }

  [v92 easyTouchDefaultHitRectInsets];
  [v93 setHitRectInsets:?];
  [v93 setContentHorizontalAlignment:2];
  v97 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v98 = sub_13C80(0, &qword_E0BC00, MPButton_ptr);
  ControlEventHandling<>.on(_:handler:)(64, sub_E8DF4, v97, v98);

  v99 = *&v1[v90];
  *&v1[v90] = v93;

  v91 = *&v1[v90];
  if (v91)
  {
LABEL_48:
    v100 = v91;
    v101 = sub_AB9260();
    [v100 setTitle:v101 forState:0];

    v102 = *&v1[v90];
    if (v102)
    {
      v103 = v102;
      if (([v103 isDescendantOfView:v1] & 1) == 0)
      {
        [v1 addSubview:v103];
      }

LABEL_37:
    }
  }

  sub_E8BA0(&v1[v116], v118);
  v106 = v117;
  swift_dynamicCast();
  v107 = *(v106 + v6[18]);
  sub_E8C4C(v106);
  if (!v107)
  {
    [v1 setPreservesSuperviewLayoutMargins:0];
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
LABEL_43:
    [v1 setLayoutMargins:{top, left, bottom, right}];
    return sub_E8C4C(v11);
  }

  if (v107 != 1)
  {
    [v1 setPreservesSuperviewLayoutMargins:0];
    [v1 music_inheritedLayoutInsets];
    goto LABEL_43;
  }

  [v1 setPreservesSuperviewLayoutMargins:1];
  return sub_E8C4C(v11);
}

void sub_E4F00(uint64_t a1, void *a2, char a3, void *a4, id a5)
{
  if (a3)
  {
    v10 = [objc_opt_self() defaultParagraphStyle];
    [v10 mutableCopy];
    sub_ABAB50();
    v11 = sub_13C80(0, &unk_E05360, NSMutableParagraphStyle_ptr);
    swift_dynamicCast();

    swift_unknownObjectRelease();
    [v39 setLineBreakMode:4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED8, qword_AF4EF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF85F0;
    *(inited + 32) = NSFontAttributeName;
    v13 = sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
    *(inited + 40) = a4;
    *(inited + 64) = v13;
    *(inited + 72) = NSParagraphStyleAttributeName;
    *(inited + 104) = v11;
    *(inited + 80) = v39;
    v14 = NSFontAttributeName;
    v15 = a4;
    v16 = NSParagraphStyleAttributeName;
    v36 = v39;
    sub_96EB8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6EE8, qword_AF8B50);
    swift_arrayDestroy();
    v17 = [objc_allocWithZone(NSMutableAttributedString) init];
    v18 = [v5 effectiveUserInterfaceLayoutDirection];
    if (v18 == &dword_0 + 1)
    {
      v41._countAndFlagsBits = a1;
      v41._object = a2;
      sub_AB94A0(v41);
      v19 = String.nonBreakingSpace.unsafeMutableAddressor();
      v20 = *v19;
      v21 = v19[1];

      v42._countAndFlagsBits = v20;
      v42._object = v21;
      sub_AB94A0(v42);
    }

    else
    {
      v23 = String.nonBreakingSpace.unsafeMutableAddressor();
      v24 = *v23;
      v25 = v23[1];

      v43._countAndFlagsBits = v24;
      v43._object = v25;
      sub_AB94A0(v43);
    }

    v26 = objc_allocWithZone(NSAttributedString);
    v27 = sub_AB9260();
    type metadata accessor for Key(0);
    sub_E8C04(&qword_DE6EF0, type metadata accessor for Key, &unk_AF674C);
    isa = sub_AB8FD0().super.isa;

    v29 = [v26 initWithString:v27 attributes:isa];

    [v17 appendAttributedString:v29];
    v30 = [objc_allocWithZone(NSTextAttachment) init];
    v31 = sub_E8E4C();
    [v30 setImage:v31];

    v32 = [objc_opt_self() attributedStringWithAttachment:v30];
    [v17 appendAttributedString:v32];

    if (v18 == &dword_0 + 1)
    {
      v33 = objc_allocWithZone(NSAttributedString);
      v34 = sub_AB9260();
      v35 = [v33 initWithString:{v34, v36}];

      [v17 appendAttributedString:v35];
    }

    [a5 setText:{0, v36}];
    [a5 setFont:0];
    [a5 setAttributedText:v17];
  }

  else
  {
    [a5 setAttributedText:0];
    v22 = sub_AB9260();
    [a5 setText:v22];

    [a5 setFont:a4];
  }
}

uint64_t sub_E53CC()
{
  v1 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___artworkComponent;
  if (*(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___artworkComponent))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___artworkComponent);
  }

  else
  {
    v3 = v0;
    type metadata accessor for ArtworkComponentImageView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    _s9ComponentCMa(0);
    swift_allocObject();
    v2 = sub_80104(v4);

    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_E5474()
{
  v1 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___chevronImageView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___chevronImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___chevronImageView);
  }

  else
  {
    v4 = sub_E8E4C();
    v5 = [objc_allocWithZone(UIImageView) initWithImage:v4];

    [v5 setContentMode:4];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_E5518(uint64_t a1, float a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong layer];
    *&v6 = a2;
    [v5 setOpacity:v6];
  }
}

void sub_E55A0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  __chkstk_darwin();
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong superview];
    if (v8)
    {
      v9 = v8;
      type metadata accessor for CollectionViewSection.SectionHeaderView(0);
      v10 = swift_dynamicCastClass();
      if (!v10)
      {

        goto LABEL_9;
      }

      v11 = v10;
      v12 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724SectionHeaderContentView_configuration;
      swift_beginAccess();
      sub_E8BA0(v7 + v12, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC260, &unk_AFD130);
      swift_dynamicCast();
      v13 = &v5[*(v3 + 68)];
      v15 = *v13;
      v14 = v13[1];
      sub_307CC(*v13, v14);
      sub_E8C4C(v5);
      if (v15)
      {
        v15(v11, a1);

        sub_17654(v15, v14);
LABEL_9:

        return;
      }
    }

    v9 = v7;
    goto LABEL_9;
  }
}

double sub_E573C(double a1, double a2)
{
  v5 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  __chkstk_darwin();
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v34[-v8];
  v10 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724SectionHeaderContentView_configuration;
  swift_beginAccess();
  sub_E8BA0(&v2[v10], v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC260, &unk_AFD130);
  swift_dynamicCast();
  v11 = [v2 traitCollection];
  [v11 displayScale];

  sub_E8BA0(&v2[v10], v35);
  swift_dynamicCast();
  if (v7[160] == 4)
  {
    sub_E76D8(v7);
  }

  sub_E8C4C(v7);
  [v2 layoutMargins];
  sub_AB9E60();
  v13 = a1 - v12;
  v14 = v9[21];
  if (v14)
  {
    v15 = v13 + -52.0;
  }

  else
  {
    v15 = v13;
  }

  v16 = *&v2[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_systemStyleButton];
  if (v16)
  {
    [v16 sizeThatFits:{a1, a2}];
    v19 = v18;
  }

  else
  {
    v17 = 0.0;
    v19 = 0.0;
  }

  if (*(v9 + *(v5 + 68)))
  {
    v20 = v9[19];
    v21 = v9[18] & 0xFFFFFFFFFFFFLL;
    if ((v20 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(v20) & 0xF;
    }

    if (v21 && (v17 != 0.0 || v19 != 0.0))
    {
      v15 = v15 - (v17 + 10.0);
    }
  }

  v22 = sub_E40E8(&OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel);
  [v22 sizeThatFits:{v15, a2}];
  v24 = v23;

  v25 = sub_E40E8(&OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel);
  [v25 sizeThatFits:{v15, a2}];
  v27 = v26;

  v28 = 52.0;
  if (!v14)
  {
    v28 = 0.0;
  }

  if (v24 > v27)
  {
    v29 = v24;
  }

  else
  {
    v29 = v27;
  }

  v30 = v28 + v29;
  [v2 layoutMargins];
  sub_AB9E60();
  v32 = v31;
  sub_E8C4C(v9);
  return v30 + v32;
}

double sub_E5BD0()
{
  type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  __chkstk_darwin();
  v2 = &v21[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v4 = &v21[-v3];
  v5 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724SectionHeaderContentView_configuration;
  swift_beginAccess();
  sub_E8BA0(&v0[v5], v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC260, &unk_AFD130);
  swift_dynamicCast();
  v6 = [v0 traitCollection];
  [v6 displayScale];

  sub_E8BA0(&v0[v5], v22);
  swift_dynamicCast();
  if (v2[160] == 4)
  {
    sub_E76D8(v2);
  }

  sub_E8C4C(v2);
  v7 = sub_E40E8(&OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel);
  [v7 intrinsicContentSize];
  v9 = v8;

  v10 = sub_E40E8(&OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel);
  [v10 intrinsicContentSize];
  v12 = v11;

  v13 = *&v0[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_systemStyleButton];
  if (v13)
  {
    [v13 intrinsicContentSize];
  }

  else
  {
    v14 = 0.0;
  }

  v15 = 52.0;
  if (!*(v4 + 21))
  {
    v15 = v9;
  }

  if (v9 > v12)
  {
    v16 = v9;
  }

  else
  {
    v16 = v12;
  }

  v17 = v16 - v14 + v15;
  [v0 layoutMargins];
  sub_AB9E60();
  v19 = v18;
  sub_E8C4C(v4);
  return v17 + v19;
}

id sub_E5F1C()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  *&v3 = __chkstk_darwin().n128_u64[0];
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15.receiver = v0;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, "music_inheritedLayoutInsetsDidChange", v3);
  v6 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724SectionHeaderContentView_configuration;
  swift_beginAccess();
  sub_E8BA0(v0 + v6, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC260, &unk_AFD130);
  swift_dynamicCast();
  v7 = v5[*(v2 + 72)];
  sub_E8C4C(v5);
  if (v7)
  {
    if (v7 == 1)
    {
      return [v0 setPreservesSuperviewLayoutMargins:1];
    }

    [v0 setPreservesSuperviewLayoutMargins:0];
    [v0 music_inheritedLayoutInsets];
  }

  else
  {
    [v0 setPreservesSuperviewLayoutMargins:0];
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  return [v0 setLayoutMargins:{top, left, bottom, right}];
}

id sub_E60D0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  __chkstk_darwin();
  v5 = v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = (v132 - v7);
  v143.receiver = v1;
  v143.super_class = ObjectType;
  objc_msgSendSuper2(&v143, "layoutSubviews", v6);
  v9 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724SectionHeaderContentView_configuration;
  swift_beginAccess();
  sub_E8BA0(&v1[v9], v142);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC260, &unk_AFD130);
  swift_dynamicCast();
  sub_E8BA0(&v1[v9], v142);
  swift_dynamicCast();
  v10 = v5[160];
  if (v10 == 4)
  {
    LOBYTE(v10) = sub_E76D8(v5);
  }

  sub_E8C4C(v5);
  v11 = [v1 traitCollection];
  [v11 displayScale];
  v135 = v12;
  v13 = COERCE_DOUBLE([v1 effectiveUserInterfaceLayoutDirection]);
  [v1 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [v1 layoutMargins];
  v23 = v22;
  v136 = v15;
  v140 = v19;
  v141 = v17;
  v139 = v21;
  v133 = v24;
  v26 = UIEdgeInsetsInsetRect(v15, v17, v19, v21, v25, v22);
  v28 = v27;
  v134 = v29;
  v30 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_topHairlineView;
  v31 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_topHairlineView];
  if (*(v8 + v3[19]) == 1)
  {
    if (v31)
    {
      v32 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_topHairlineView];
    }

    else
    {
      v33 = v11;
      v34 = [objc_allocWithZone(UIView) init];
      v35 = qword_DE6C70;
      v32 = v34;
      if (v35 != -1)
      {
        swift_once();
      }

      [v32 setBackgroundColor:qword_E718B0];
      [v1 addSubview:v32];
      v36 = *&v1[v30];
      *&v1[v30] = v32;

      v31 = 0;
      v11 = v33;
    }

    v37 = v31;
    sub_ABA490();
    [v32 setFrame:?];
  }

  else if (v31)
  {
    [v31 removeFromSuperview];
  }

  v38 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_bottomHairlineView;
  v39 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_bottomHairlineView];
  v40 = *(v8 + v3[22]) == 1;
  v137 = v26;
  v138 = v28;
  if (v40)
  {
    if (v39)
    {
      v41 = v39;
    }

    else
    {
      v42 = v11;
      v43 = [objc_allocWithZone(UIView) init];
      v44 = qword_DE6C70;
      v41 = v43;
      if (v44 != -1)
      {
        swift_once();
      }

      [v41 setBackgroundColor:qword_E718B0];
      [v1 addSubview:v41];
      v45 = *&v1[v38];
      *&v1[v38] = v41;

      v39 = 0;
      v11 = v42;
    }

    v46 = v140;
    v47 = v140 - v23;
    if (!*(v8 + v3[23]))
    {
      v47 = v140;
    }

    v48 = v136;
    if (*(v8 + v3[23]))
    {
      v49 = v23;
    }

    else
    {
      v49 = v136;
    }

    if (*(v8 + v3[24]))
    {
      v50 = v47 - v133;
    }

    else
    {
      v50 = v47;
    }

    v51 = 1.0 / v135;
    v52 = v39;
    v144.origin.x = v48;
    v53 = v141;
    v144.origin.y = v141;
    v144.size.width = v46;
    v144.size.height = v139;
    CGRectGetMaxY(v144);
    v145.origin.x = v49;
    v145.origin.y = v53;
    v145.size.width = v50;
    v145.size.height = v51;
    CGRectGetHeight(v145);
    sub_ABA490();
    [v41 setFrame:?];

    v26 = v137;
    v28 = v138;
  }

  else if (v39)
  {
    [v39 removeFromSuperview];
  }

  v54 = dbl_AFD140[v10];
  v55 = sub_E40E8(off_CF87B0[v10]);
  v56 = v3[25];
  v57 = *(v8 + v56);
  if (*(v8 + v56))
  {
    v58 = v54;
  }

  else
  {
    v58 = 0.0;
  }

  v59 = v134 - v58;
  v60 = v8[21];
  v134 = v134 - v58;
  if (v60)
  {
    v61 = sub_E53CC();
    v62 = *(v61 + 80);
    v63 = *(v61 + 88);
    v64 = v11;
    v65 = v13;
    v66 = v55;
    *(v61 + 80) = vdupq_n_s64(0x4044000000000000uLL);
    sub_75614(v62, v63);
    v146.origin.x = v26;
    v146.origin.y = v58;
    v146.size.width = v28;
    v146.size.height = v59;
    CGRectGetMinX(v146);
    v147.origin.x = v26;
    v147.origin.y = v58;
    v147.size.width = v28;
    v147.size.height = v59;
    CGRectGetMinY(v147);
    sub_ABA470();
    v67 = [objc_opt_self() defaultMetrics];
    [v67 scaledValueForValue:2.0];

    v55 = v66;
    v13 = v65;
    v11 = v64;
    v68 = sub_76368(0, 0, 1);
    v69 = v137;
    v70 = v138;
    sub_ABA490();
    sub_76B28(v71, v72, v73, v74);

    v75 = v68 + 0.0 + 12.0;
    v26 = v69 + v75;
    v28 = v70 - v75;
  }

  v76 = &selRef__authenticateReturningError_;
  if (*(v8 + v3[17]))
  {
    v77 = v8[19];
    v78 = v8[18] & 0xFFFFFFFFFFFFLL;
    if ((v77 & 0x2000000000000000) != 0)
    {
      v78 = HIBYTE(v77) & 0xF;
    }

    v79 = v134;
    if (v78)
    {
      v80 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_systemStyleButton];
      if (v80)
      {
        v135 = v13;
        v81 = v55;
        v82 = v80;
        [v82 sizeThatFits:{v28, v79}];
        v84 = v83;
        v132[1] = v85;
        v148.origin.x = v26;
        v148.origin.y = v58;
        v148.size.width = v28;
        v148.size.height = v79;
        MaxX = CGRectGetMaxX(v148);
        v138 = v84;
        v133 = MaxX - v84;
        v149.origin.x = v26;
        v149.origin.y = v58;
        v149.size.width = v28;
        v149.size.height = v79;
        CGRectGetMinY(v149);
        [v55 _firstBaselineOffsetFromTop];
        v87 = [v82 titleLabel];
        if (v87)
        {
          v88 = v87;
          [v87 _baselineOffsetFromBottom];
          [v82 frame];
          CGRectGetHeight(v150);
          v76 = &selRef__authenticateReturningError_;
          [v88 frame];
          CGRectGetMaxY(v151);

          v55 = v81;
        }

        sub_ABA490();
        sub_ABA490();
        [v82 setFrame:?];

        v28 = v28 - (v138 + 10.0);
      }
    }
  }

  else
  {
    v79 = v134;
  }

  v90 = sub_E40E8(&OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel);
  [v90 v76[307]];
  v92 = v91;

  v152.origin.x = v26;
  v152.origin.y = v58;
  v152.size.width = v28;
  v152.size.height = v79;
  MinX = CGRectGetMinX(v152);
  v153.origin.x = v26;
  v153.origin.y = v58;
  v153.size.width = v28;
  v153.size.height = v79;
  MinY = CGRectGetMinY(v153);
  v154.origin.x = v26;
  v154.origin.y = v58;
  v138 = v28;
  v154.size.width = v28;
  v154.size.height = v79;
  Width = CGRectGetWidth(v154);
  v137 = v26;
  if (v57)
  {
    if (*(v8 + v3[27]))
    {
      MinY = MinY + 12.0;
    }

    v96 = 2.0;
  }

  else
  {
    v96 = 0.0;
  }

  v97 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel];
  sub_ABA490();
  [v97 setFrame:?];

  v155.origin.x = MinX;
  v155.origin.y = MinY;
  v155.size.width = Width;
  v155.size.height = v92;
  MaxY = CGRectGetMaxY(v155);
  v156.origin.x = MinX;
  v156.origin.y = MinY;
  v156.size.width = Width;
  v156.size.height = v92;
  v99 = v79 - CGRectGetMaxY(v156);
  if (v10 == 1)
  {
    v100 = v96 + MaxY;
  }

  else
  {
    v100 = MaxY;
  }

  if (v10 == 1)
  {
    v101 = v99 - v96;
  }

  else
  {
    v101 = v99;
  }

  v102 = sub_E40E8(&OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel);
  v103 = v138;
  [v102 v76[307]];

  v104 = v137;
  v157.origin.x = v137;
  v157.origin.y = v100;
  v157.size.width = v103;
  v157.size.height = v101;
  CGRectGetMinX(v157);
  v158.origin.x = v104;
  v158.origin.y = v100;
  v158.size.width = v103;
  v158.size.height = v101;
  CGRectGetMinY(v158);
  v159.origin.x = v104;
  v159.origin.y = v100;
  v159.size.width = v103;
  v159.size.height = v101;
  CGRectGetWidth(v159);
  v105 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel];
  sub_ABA490();
  [v105 setFrame:?];

  if (!*(v8 + v3[16]))
  {
    goto LABEL_64;
  }

  v106 = v8[7];
  v107 = v8[6] & 0xFFFFFFFFFFFFLL;
  if ((v106 & 0x2000000000000000) != 0)
  {
    v107 = HIBYTE(v106) & 0xF;
  }

  if (!v107 || (sub_E6E94(v55) & 1) == 0)
  {
LABEL_64:
    v131 = sub_E5474();
    [v131 setHidden:1];
LABEL_65:

    return sub_E8C4C(v8);
  }

  v108 = sub_E5474();
  [v108 v76[307]];

  v109 = v55;
  [v109 frame];
  [v109 setFrame:?];
  [v109 _firstBaselineOffsetFromTop];
  [v109 _baselineOffsetFromBottom];
  result = [v109 font];
  if (result)
  {
    v111 = result;
    [result lineHeight];

    [v109 frame];
    v113 = v112;
    v115 = v114;
    v117 = v116;
    v119 = v118;

    v160.origin.x = v113;
    v160.origin.y = v115;
    v160.size.width = v117;
    v160.size.height = v119;
    CGRectGetMaxX(v160);
    [v109 frame];
    v121 = v120;
    v123 = v122;
    v125 = v124;
    v127 = v126;

    v161.origin.x = v121;
    v161.origin.y = v123;
    v161.size.width = v125;
    v161.size.height = v127;
    CGRectGetMaxY(v161);
    v128 = [v11 preferredContentSizeCategory];
    LOBYTE(v111) = sub_ABA330();

    if (v111)
    {
      v129 = [objc_opt_self() defaultMetrics];
      [v129 scaledValueForValue:1.0];
    }

    v130 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___chevronImageView;
    [*&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___chevronImageView] setHidden:0];
    v131 = *&v1[v130];
    sub_ABA490();
    [v131 setFrame:?];
    goto LABEL_65;
  }

  __break(1u);
  return result;
}

id sub_E6E94(void *a1)
{
  result = [a1 text];
  if (result)
  {
    v3 = result;
    v4 = sub_AB92A0();
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v6 && (v7 = [a1 font]) != 0)
    {
      v8 = v7;
      v9 = [objc_allocWithZone(NSStringDrawingContext) init];
      [v9 setWantsBaselineOffset:1];
      [v9 setMaximumNumberOfLines:0];
      [a1 bounds];
      v11 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED8, qword_AF4EF0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_AF4EC0;
      *(inited + 32) = NSFontAttributeName;
      *(inited + 64) = sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
      *(inited + 40) = v8;
      v13 = NSFontAttributeName;
      v14 = v8;
      sub_96EB8(inited);
      swift_setDeallocating();
      sub_12E1C(inited + 32, &qword_DE6EE8, qword_AF8B50);
      type metadata accessor for Key(0);
      sub_E8C04(&qword_DE6EF0, type metadata accessor for Key, &unk_AF674C);
      isa = sub_AB8FD0().super.isa;

      [v3 boundingRectWithSize:1 options:isa attributes:v9 context:{v11, 1.79769313e308}];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v34.origin.x = v17;
      v34.origin.y = v19;
      v34.size.width = v21;
      v34.size.height = v23;
      Height = CGRectGetHeight(v34);
      [a1 _firstBaselineOffsetFromTop];
      v26 = v25;
      [a1 _baselineOffsetFromBottom];
      v28 = v27;
      result = [a1 font];
      if (result)
      {
        v29 = result;
        v30 = v26 + v28;
        [result lineHeight];
        v32 = v31;

        if (v30 > v32)
        {
          v32 = v30;
        }

        v33 = [a1 numberOfLines];

        return (v32 * v33 < Height);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_E726C()
{
  type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  __chkstk_darwin();
  v2 = &v18[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724SectionHeaderContentView_configuration;
  swift_beginAccess();
  sub_E8BA0(v0 + v3, &v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC260, &unk_AFD130);
  swift_dynamicCast();
  v4 = v2[1];
  v19 = *v2;
  v20[0] = v4;
  v5 = v2[7];
  v20[1] = v2[6];
  v20[2] = v5;
  v6 = v2[13];
  v20[3] = v2[12];
  v20[4] = v6;

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
LABEL_2:
  if (v7 <= 3)
  {
    v9 = 3;
  }

  else
  {
    v9 = v7;
  }

  v10 = v9 + 1;
  v11 = &v20[2 * v7];
  while (1)
  {
    if (v7 == 3)
    {
      swift_arrayDestroy();
      v21 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70, &unk_AF7D30);
      sub_2ECD4();
      sub_AB9140();

      sub_E8C4C(v2);
      return;
    }

    if (v10 == ++v7)
    {
      break;
    }

    v13 = *(v11 - 1);
    v12 = *v11;
    v11 += 2;
    v14 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v14 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_6B0F0(0, *(v8 + 2) + 1, 1, v8);
      }

      v16 = *(v8 + 2);
      v15 = *(v8 + 3);
      if (v16 >= v15 >> 1)
      {
        v8 = sub_6B0F0((v15 > 1), v16 + 1, 1, v8);
      }

      *(v8 + 2) = v16 + 1;
      v17 = &v8[16 * v16];
      *(v17 + 4) = v13;
      *(v17 + 5) = v12;
      goto LABEL_2;
    }
  }

  __break(1u);
}

UIAccessibilityTraits sub_E74F0()
{
  v1 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  __chkstk_darwin();
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v12[-v4];
  v6 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724SectionHeaderContentView_configuration;
  swift_beginAccess();
  sub_E8BA0(v0 + v6, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC260, &unk_AFD130);
  swift_dynamicCast();
  v7 = v5[160];
  if (v7 == 4)
  {
    LOBYTE(v7) = sub_E76D8(v5);
  }

  sub_E8C4C(v5);
  if (v7 != 3)
  {
    sub_E8BA0(v0 + v6, v13);
    swift_dynamicCast();
    if (*&v3[*(v1 + 64)])
    {
      goto LABEL_6;
    }

    if (!*&v3[*(v1 + 68)])
    {
      goto LABEL_13;
    }

    v9 = *(v3 + 19);
    v10 = *(v3 + 18) & 0xFFFFFFFFFFFFLL;
    if ((v9 & 0x2000000000000000) != 0)
    {
      v10 = HIBYTE(v9) & 0xF;
    }

    if (v10)
    {
LABEL_6:
      v8 = UIAccessibilityTraitButton;
      if (UIAccessibilityTraitButton)
      {
        if ((UIAccessibilityTraitHeader & ~UIAccessibilityTraitButton) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (!UIAccessibilityTraitHeader)
      {
        v8 = 0;
        goto LABEL_17;
      }

      v8 = UIAccessibilityTraitHeader | UIAccessibilityTraitButton;
    }

    else
    {
LABEL_13:
      v8 = UIAccessibilityTraitHeader;
    }

LABEL_17:
    sub_E8C4C(v3);
    return v8;
  }

  return UIAccessibilityTraitNone;
}

uint64_t sub_E76D8(void *a1)
{
  v1 = a1[1];
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  v4 = a1[6];
  v3 = a1[7];
  if (v2)
  {
    v5 = HIBYTE(v3) & 0xF;
    v6 = v4 & 0xFFFFFFFFFFFFLL;
    if ((v3 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(v3) & 0xF;
    }

    else
    {
      v7 = v6;
    }

    if (v7)
    {
      return 2;
    }
  }

  else
  {
    v5 = HIBYTE(v3) & 0xF;
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = a1[13];
  v11 = a1[12] & 0xFFFFFFFFFFFFLL;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v10) & 0xF;
  }

  return v11 != 0;
}

void sub_E774C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_tapGestureRecognizer;
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_tapGestureRecognizer];
  if (!a1)
  {
    if (!v5)
    {
      return;
    }

LABEL_7:
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = sub_13C80(0, &qword_DEE998, UITapGestureRecognizer_ptr);
    v11 = v5;

    v12 = UIGestureRecognizerHandling<>.addHandler(_:)(sub_E8E44, v9, v10);

    *&v2[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_tapGestureRecognizerHandler] = v12;

    [v2 addGestureRecognizer:v11];

    if (!a1)
    {
      return;
    }

    goto LABEL_8;
  }

  if (v5)
  {
    sub_13C80(0, &qword_DEE998, UITapGestureRecognizer_ptr);
    v6 = v5;
    v7 = a1;
    v8 = sub_ABA790();

    if (v8)
    {
      return;
    }

    v5 = *&v2[v4];
    if (v5)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  v14 = a1;
  [v2 removeGestureRecognizer:?];
  if (*&v2[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_tapGestureRecognizerHandler])
  {
    sub_13C80(0, &qword_DEE998, UITapGestureRecognizer_ptr);

    UIGestureRecognizerHandling<>.removeHandler(_:)(v13);
  }

  else
  {
  }
}

void sub_E7960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  __chkstk_darwin();
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong superview];
    if (v8)
    {
      v9 = v8;
      type metadata accessor for CollectionViewSection.SectionHeaderView(0);
      v10 = swift_dynamicCastClass();
      if (!v10)
      {

        goto LABEL_9;
      }

      v11 = v10;
      v12 = OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724SectionHeaderContentView_configuration;
      swift_beginAccess();
      sub_E8BA0(v7 + v12, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC260, &unk_AFD130);
      swift_dynamicCast();
      v13 = &v5[*(v3 + 64)];
      v15 = *v13;
      v14 = v13[1];
      sub_307CC(*v13, v14);
      sub_E8C4C(v5);
      if (v15)
      {
        v15(v11);

        sub_17654(v15, v14);
LABEL_9:

        return;
      }
    }

    v9 = v7;
    goto LABEL_9;
  }
}

void sub_E7AEC()
{

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_tapGestureRecognizer);
}

void sub_E7CA4(void *a1, uint64_t a2, void *a3, void *a4, SEL *a5, void *a6)
{
  sub_13C80(0, &qword_DEE988, UITouch_ptr);
  sub_E8D54();
  sub_AB9B40();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  isa = sub_AB9B30().super.isa;
  v19.receiver = v13;
  v19.super_class = type metadata accessor for TapGestureRecognizer();
  objc_msgSendSuper2(&v19, *a5, isa, v12);

  v15 = &v13[*a6];
  v16 = *v15;
  if (*v15)
  {
    v17 = *(v15 + 1);

    v16(v18);
    sub_17654(v16, v17);
  }
}

id sub_E7E94(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB720TapGestureRecognizer_onTouchDown];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v2[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB720TapGestureRecognizer_onTouchUp];
  *v6 = 0;
  *(v6 + 1) = 0;
  sub_15F84(a1, v17, &unk_DE8E40, &unk_AF8050);
  v7 = v18;
  if (v18)
  {
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v8 = *(v7 - 8);
    v9 = __chkstk_darwin();
    v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = sub_ABB3A0();
    (*(v8 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for TapGestureRecognizer();
  v16.receiver = v2;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, "initWithTarget:action:", v12, a2);
  sub_12E1C(a1, &unk_DE8E40, &unk_AF8050);
  swift_unknownObjectRelease();
  return v14;
}

id sub_E80C0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_E819C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_ABA680();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_E825C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_ABA680();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_E8300(uint64_t a1)
{
  sub_E8440();
  if (v1 <= 0x3F)
  {
    sub_E8490(319);
    if (v2 <= 0x3F)
    {
      sub_ABA680();
      if (v3 <= 0x3F)
      {
        sub_E84F8(319);
        if (v4 <= 0x3F)
        {
          sub_E8550(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_E8440()
{
  if (!qword_DEE8C0)
  {
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_DEE8C0);
    }
  }
}

void sub_E8490(uint64_t a1)
{
  if (!qword_DEB670)
  {
    sub_13C80(255, &qword_E04530, MPArtworkCatalog_ptr);
    v1 = sub_ABA9C0();
    if (!v2)
    {
      atomic_store(v1, &qword_DEB670);
    }
  }
}

void sub_E84F8(uint64_t a1)
{
  if (!qword_DEE8C8)
  {
    type metadata accessor for Artwork.CachingReference();
    v1 = sub_ABA9C0();
    if (!v2)
    {
      atomic_store(v1, &qword_DEE8C8);
    }
  }
}

void sub_E8550(uint64_t a1)
{
  if (!qword_DEC940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E07D90, &qword_AF9030);
    v1 = sub_ABA9C0();
    if (!v2)
    {
      atomic_store(v1, &qword_DEC940);
    }
  }
}

uint64_t getEnumTagSinglePayload for ImpressionTracker.CalculationRule(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImpressionTracker.CalculationRule(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_E8724(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_E876C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_E87C4()
{
  result = qword_DEE958;
  if (!qword_DEE958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEE958);
  }

  return result;
}

unint64_t sub_E881C()
{
  result = qword_DEE960;
  if (!qword_DEE960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEE960);
  }

  return result;
}

unint64_t sub_E8874()
{
  result = qword_DEE968;
  if (!qword_DEE968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEE968);
  }

  return result;
}

unint64_t sub_E88CC()
{
  result = qword_DEE970;
  if (!qword_DEE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEE970);
  }

  return result;
}

uint64_t sub_E8920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double __swift_assign_boxed_opaque_existential_1(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v2 = a1[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v13 = *a2;

        *a1 = v13;
      }

      else
      {
        v11 = *(v10 + 24);

        v11();
      }
    }

    else
    {
      a1[3] = v3;
      a1[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        (*(v4 + 32))(v15);
        if ((v7 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v6 + 16))(a1, a2, v3);
        }

        (*(v4 + 8))(v15, v2);
      }
    }
  }

  return result;
}

uint64_t sub_E8BA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_E8C04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_E8C4C(uint64_t a1)
{
  v2 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_E8CA8(void *a1)
{
  [a1 invalidateIntrinsicContentSize];

  return [a1 setNeedsLayout];
}

uint64_t sub_E8CF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionViewSection.ContentConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_E8D54()
{
  result = qword_DEE990;
  if (!qword_DEE990)
  {
    sub_13C80(255, &qword_DEE988, UITouch_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEE990);
  }

  return result;
}

uint64_t sub_E8DBC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

id sub_E8E4C()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithTextStyle:UIFontTextStyleTitle2 scale:1];
  v2 = [v0 configurationWithWeight:7];
  v3 = [v1 configurationByApplyingConfiguration:v2];

  v4 = v3;
  v5 = sub_AB9260();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  if (v6)
  {
    v7 = [objc_opt_self() secondaryLabelColor];
    v8 = [v6 flattenedImageWithColor:v7];
    v9 = [v8 imageWithRenderingMode:1];

    return v9;
  }

  else
  {
    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

void sub_E9034()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___topLabel) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___bottomLabel) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___chevronImageView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView____lazy_storage___artworkComponent) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_systemStyleButton) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_topHairlineView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_bottomHairlineView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_tapGestureRecognizerHandler) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB724DefaultHeaderContentView_tapGestureRecognizer) = 0;
  sub_ABAFD0();
  __break(1u);
}

double sub_E90FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a4;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEAA0, &qword_AFD290) - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v19 - v10;
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v12 = swift_allocObject();
  swift_weakInit();
  sub_15F84(a1, v11, &qword_DEEAA0, &qword_AFD290);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  sub_36B0C(v11, v16 + v13, &qword_DEEAA0, &qword_AFD290);
  *(v16 + v14) = v12;
  v17 = (v16 + v15);
  *v17 = v20;
  v17[1] = a5;
  *(v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8)) = a2;

  swift_errorRetain();
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_EC64C, v16);

  return result;
}

void sub_E92E4(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v27 = a3;
  v28 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEAA0, &qword_AFD290);
  __chkstk_darwin();
  v7 = &v26 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v9 = &v26 - v8;
  v10 = sub_AB31C0();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v26 - v14;
  sub_15F84(a1, v7, &qword_DEEAA0, &qword_AFD290);
  v16 = type metadata accessor for SocialOnboardingOAuthTwoProtocolDescriptor.FlowDescriptor.OutputURLDescriptor(0);
  if ((*(*(v16 - 8) + 48))(v7, 1, v16) == 1)
  {
    sub_12E1C(v7, &qword_DEEAA0, &qword_AFD290);
    (*(v11 + 56))(v9, 1, 1, v10);
LABEL_4:
    sub_12E1C(v9, &unk_DF2AE0, &qword_AFC930);
LABEL_5:
    v27(0, v26);
    return;
  }

  v17 = *(v11 + 16);
  v17(v9, v7, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  sub_EBC8C(v7);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_4;
  }

  (*(v11 + 32))(v15, v9, v10);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(v11 + 8))(v15, v10);
    goto LABEL_5;
  }

  v26 = Strong;
  v17(v13, v15, v10);
  v19 = swift_allocObject();
  v20 = v28;
  *(v19 + 16) = v27;
  *(v19 + 24) = v20;
  v21 = type metadata accessor for SocialOnboardingNetworkRegistrationController.Operation(0);
  v22 = objc_allocWithZone(v21);
  v17(&v22[OBJC_IVAR____TtCC16MusicApplication45SocialOnboardingNetworkRegistrationControllerP33_A38BE87C3BD3A87290E3ECE22270D9819Operation_registrationURL], v13, v10);
  v23 = &v22[OBJC_IVAR____TtCC16MusicApplication45SocialOnboardingNetworkRegistrationControllerP33_A38BE87C3BD3A87290E3ECE22270D9819Operation_responseHandler];
  *v23 = sub_EBD20;
  v23[1] = v19;
  v29.receiver = v22;
  v29.super_class = v21;

  v24 = objc_msgSendSuper2(&v29, "init");
  v25 = *(v11 + 8);
  v25(v13, v10);
  [*(v26 + 16) addOperation:v24];
  v25(v15, v10);
}

double sub_E9708(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a1;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  v12[7] = a6;

  v13 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_EA660, v12);

  return result;
}

void sub_E97E4(uint64_t a1, void *a2, void (*a3)(void, void, __n128), uint64_t a4, void (*a5)(char *, char *, uint64_t), uint64_t a6)
{
  v43 = a5;
  v44 = a6;
  v47 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v9 = v40 - v8;
  v10 = sub_AB31C0();
  v11 = *(v10 - 8);
  v45 = v10;
  v46 = v11;
  __chkstk_darwin();
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = v40 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E07D40, &unk_AFD280);
  __chkstk_darwin();
  v17 = v40 - v16;
  v18 = sub_AB2CE0();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v23 = Strong;
  v24 = [a2 dictionaryForBagKey:MPStoreSocialBagKey];
  if (!v24)
  {

    goto LABEL_12;
  }

  v42 = a4;
  v25 = v24;
  v26 = sub_AB8FF0();

  v49 = 0xD000000000000018;
  v50 = 0x8000000000B50510;
  sub_ABAD10();
  if (!*(v26 + 16) || (v41 = v26, v27 = sub_2EC004(v51), (v28 & 1) == 0))
  {
    sub_8085C(v51);
    goto LABEL_9;
  }

  sub_808B0(*(v41 + 56) + 32 * v27, v52);
  sub_8085C(v51);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  v29 = v50;
  sub_AB2CC0();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_12E1C(v17, &unk_E07D40, &unk_AFD280);

LABEL_10:

LABEL_12:
    v47(0, 0);
    return;
  }

  v40[1] = v29;
  (*(v19 + 32))(v21, v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEA98, &unk_B0D760);
  v30 = v19;
  sub_AB2C10();
  *(swift_allocObject() + 16) = xmmword_AF4EC0;
  sub_AB2BE0();
  sub_AB2C30();
  sub_AB2C50();
  v32 = v45;
  v31 = v46;
  if ((*(v46 + 48))(v9, 1, v45) == 1)
  {
    sub_12E1C(v9, &unk_DF2AE0, &qword_AFC930);
    v47(0, 0);
    (*(v30 + 8))(v21, v18);
  }

  else
  {
    (*(v31 + 32))(v15, v9, v32);
    v44 = v30;
    v43 = *(v31 + 16);
    v43(v13, v15, v32);
    v33 = swift_allocObject();
    v34 = v42;
    *(v33 + 16) = v47;
    *(v33 + 24) = v34;
    v35 = type metadata accessor for SocialOnboardingNetworkRegistrationController.Operation(0);
    v36 = objc_allocWithZone(v35);
    v43(&v36[OBJC_IVAR____TtCC16MusicApplication45SocialOnboardingNetworkRegistrationControllerP33_A38BE87C3BD3A87290E3ECE22270D9819Operation_registrationURL], v13, v32);
    v37 = &v36[OBJC_IVAR____TtCC16MusicApplication45SocialOnboardingNetworkRegistrationControllerP33_A38BE87C3BD3A87290E3ECE22270D9819Operation_responseHandler];
    *v37 = sub_EB074;
    v37[1] = v33;
    v48.receiver = v36;
    v48.super_class = v35;

    v38 = objc_msgSendSuper2(&v48, "init");
    v39 = *(v46 + 8);
    v39(v13, v32);
    [*(v23 + 16) addOperation:v38];
    v39(v15, v32);
    (*(v44 + 8))(v21, v18);
  }
}

double sub_E9EAC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;

  swift_errorRetain();
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(a6, v11);

  return result;
}

double sub_E9F68()
{
  v1 = v0;
  v2 = sub_AB31C0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB2A90();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13C80(0, &unk_DF2B00, ICUserIdentity_ptr);
  v10 = static ICUserIdentity.active.getter();
  v11 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v10];

  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtCC16MusicApplication45SocialOnboardingNetworkRegistrationControllerP33_A38BE87C3BD3A87290E3ECE22270D9819Operation_registrationURL, v2);
  sub_AB2A50();
  v12 = objc_allocWithZone(ICStoreURLRequest);
  v13 = v11;
  v14 = sub_AB2A30();
  v15 = [v12 initWithURLRequest:v14 requestContext:v13];
  (*(v7 + 8))(v9, v6);

  sub_13C80(0, &qword_E07CC0, ICURLSessionManager_ptr);
  v16 = static ICURLSessionManager.musicSession.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  v18 = v1;
  ICURLSession.enqueueDataRequestRecordingPerformanceMetrics(_:_:)(v15, sub_EBFD4, v17);

  return result;
}

void sub_EA1F8(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v5 = [a1 urlResponse];
    if (v5)
    {
      v6 = v5;
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7 && [v7 statusCode] != stru_B8.segname)
      {
        if (!a2)
        {
          sub_EBFDC();
          swift_allocError();
        }

        goto LABEL_7;
      }
    }
  }

  if (a2)
  {
LABEL_7:
    swift_errorRetain();
    v8 = sub_AB3040();
    goto LABEL_9;
  }

  v8 = 0;
LABEL_9:
  v9 = v8;
  [a3 finishWithError:?];
}

id sub_EA438()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SocialOnboardingNetworkRegistrationController.Operation(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_EA4F0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_EA574(uint64_t a1)
{
  result = sub_AB31C0();
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

uint64_t sub_EA610()
{

  return swift_deallocObject();
}

uint64_t sub_EA670@<X0>(uint64_t a2@<X8>)
{
  v40 = a2;
  v2 = sub_AB2C10();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v34 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E07D40, &unk_AFD280);
  __chkstk_darwin();
  v11 = &v34 - v10;
  v12 = sub_AB2CE0();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB2C40();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_12E1C(v11, &unk_E07D40, &unk_AFD280);
LABEL_13:
    v31 = v40;
    v32 = sub_AB31C0();
    return (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
  }

  (*(v13 + 32))(v15, v11, v12);
  v16 = sub_AB2C20();
  v17 = v13;
  if (!v16)
  {
    (*(v13 + 8))(v15, v12);
    goto LABEL_13;
  }

  v18 = v16;
  v36 = v15;
  v37 = v17;
  v38 = v12;
  v35 = v7;
  v19 = sub_AB31C0();
  v20 = *(*(v19 - 8) + 56);
  v39 = v9;
  result = v20(v9, 1, 1, v19);
  v22 = *(v18 + 16);
  if (v22)
  {
    v23 = 0;
    v41 = v3 + 16;
    v24 = (v3 + 8);
    while (v23 < *(v18 + 16))
    {
      (*(v3 + 16))(v5, v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v23, v2);
      sub_AB2BF0();
      v25 = sub_AB9370();
      v27 = v26;

      if (v25 == 0x7463657269646572 && v27 == 0xEC0000006972755FLL)
      {

LABEL_15:

        sub_AB2C00();
        v33 = v35;
        sub_AB3180();
        (*v24)(v5, v2);
        v30 = v39;
        sub_12E1C(v39, &unk_DF2AE0, &qword_AFC930);
        (*(v37 + 8))(v36, v38);

        sub_36B0C(v33, v30, &unk_DF2AE0, &qword_AFC930);
        v29 = v40;
        return sub_36B0C(v30, v29, &unk_DF2AE0, &qword_AFC930);
      }

      v28 = sub_ABB3C0();

      if (v28)
      {
        goto LABEL_15;
      }

      ++v23;
      result = (*v24)(v5, v2);
      if (v22 == v23)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    (*(v37 + 8))(v36, v38);

    v30 = v39;
    v29 = v40;
    return sub_36B0C(v30, v29, &unk_DF2AE0, &qword_AFC930);
  }

  return result;
}

uint64_t sub_EAB94(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v9 = type metadata accessor for SocialOnboardingOAuthTwoProtocolDescriptor.FlowDescriptor.OutputURLDescriptor(0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v36 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v13 = &v32 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEAA0, &qword_AFD290);
  __chkstk_darwin();
  v15 = &v32 - v14;
  if (a2)
  {
    v32 = a1;
    v33 = v9;
    v34 = a5;
    v35 = a4;
    v16 = sub_AB3040();
    v17 = [v16 domain];
    v18 = sub_AB92A0();
    v20 = v19;
    if (v18 == sub_AB92A0() && v20 == v21)
    {
    }

    else
    {
      v23 = sub_ABB3C0();

      if ((v23 & 1) == 0)
      {

LABEL_11:
        a4 = v35;
        a1 = v32;
        v9 = v33;
        goto LABEL_12;
      }
    }

    v24 = [v16 code];

    if (v24 == &dword_0 + 1)
    {
      a2 = 0;
    }

    goto LABEL_11;
  }

LABEL_12:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }

  sub_15F84(a1, v13, &unk_DF2AE0, &qword_AFC930);
  v27 = sub_AB31C0();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v13, 1, v27) == 1)
  {
    sub_12E1C(v13, &unk_DF2AE0, &qword_AFC930);
    v29 = 1;
  }

  else
  {
    v30 = v36;
    (*(v28 + 32))(v36, v13, v27);
    sub_EBC28(v30, v15);
    v29 = 0;
  }

  (*(v10 + 56))(v15, v29, 1, v9);
  a4(v15, a2);
  return sub_12E1C(v15, &qword_DEEAA0, &qword_AFD290);
}

void sub_EAF20(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v7 = &v12 - v6;
  v8 = *(a1 + 32);
  if (a2)
  {
    sub_AB3150();
    v9 = sub_AB31C0();
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  }

  else
  {
    v10 = sub_AB31C0();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  }

  v11 = a3;
  v8(v7, a3);
  sub_12E1C(v7, &unk_DF2AE0, &qword_AFC930);
}

double sub_EB0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t))
{
  v88 = a2;
  v82 = a1;
  sub_AB35C0();
  __chkstk_darwin();
  v74 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB9250();
  __chkstk_darwin();
  v73 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB9230();
  __chkstk_darwin();
  v72 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEAA0, &qword_AFD290) - 8);
  __chkstk_darwin();
  v78 = v11;
  v79 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v83 = &v70 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEAA8, &qword_AFD298);
  __chkstk_darwin();
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v70 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v86 = &v70 - v18;
  v19 = sub_AB31C0();
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v81 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  v87 = a3;
  v22[2] = a3;
  v22[3] = a4;
  v23 = v88;
  v80 = a4;
  v84 = v22;
  v89 = a5;
  v22[4] = a5;
  v24 = *(type metadata accessor for SocialOnboardingOAuthTwoProtocolDescriptor.FlowDescriptor(0) + 20);
  sub_15F84(v23 + v24, v17, &qword_DEEAA8, &qword_AFD298);
  v25 = *(v13 + 48);
  v26 = *(v20 + 48);
  v85 = v17;
  v27 = v26(&v17[v25], 1, v19);
  v76 = v15;
  v75 = v13;
  if (v27 == 1)
  {
    v71 = v24;
    sub_15F84(v23 + v24, v15, &qword_DEEAA8, &qword_AFD298);
    v28 = *(v13 + 48);

    sub_EA670(v86);
    sub_12E1C(&v15[v28], &unk_DF2AE0, &qword_AFC930);
    v70 = v20;
    v29 = *(v20 + 8);
    v29(v15, v19);
    if (v26(&v85[v25], 1, v19) == 1)
    {
      v30 = v86;
      v31 = v19;
      v24 = v71;
      v20 = v70;
      v32 = v85;
      goto LABEL_7;
    }

    v33 = v85;
    sub_12E1C(&v85[v25], &unk_DF2AE0, &qword_AFC930);
    v30 = v86;
    v31 = v19;
    v24 = v71;
    v20 = v70;
  }

  else
  {
    v33 = v85;
    v30 = v86;
    (*(v20 + 32))(v86, &v85[v25], v19);
    (*(v20 + 56))(v30, 0, 1, v19);
    v31 = v19;
    v29 = *(v20 + 8);
  }

  v32 = v33;
LABEL_7:
  v29(v32, v31);
  if (v26(v30, 1, v31) == 1)
  {
    sub_12E1C(v30, &unk_DF2AE0, &qword_AFC930);
    v34 = type metadata accessor for SocialOnboardingOAuthTwoProtocolDescriptor.FlowDescriptor.OutputURLDescriptor(0);
    v35 = v83;
    (*(*(v34 - 8) + 56))(v83, 1, 1, v34);
    v36 = [objc_allocWithZone(NSError) initWithDomain:MPStoreSocialErrorDomain code:-3002 userInfo:0];
    v88 = sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = v89;
    v39 = v35;
    v40 = v79;
    sub_15F84(v39, v79, &qword_DEEAA0, &qword_AFD290);
    v41 = (*(v77 + 80) + 16) & ~*(v77 + 80);
    v42 = (v78 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    sub_36B0C(v40, v44 + v41, &qword_DEEAA0, &qword_AFD290);
    *(v44 + v42) = v37;
    v45 = (v44 + v43);
    *v45 = v80;
    v45[1] = v38;
    *(v44 + ((v43 + 23) & 0xFFFFFFFFFFFFFFF8)) = v36;

    v46 = v36;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_EBBC8, v44);

    sub_12E1C(v83, &qword_DEEAA0, &qword_AFD290);
  }

  else
  {
    v48 = v81;
    (*(v20 + 32))(v81, v30, v31);
    v49 = v88;
    v50 = v76;
    sub_15F84(v88 + v24, v76, &qword_DEEAA8, &qword_AFD298);
    v51 = *(v75 + 48);
    v52 = objc_allocWithZone(MSCLOAuthWebViewController);
    v53 = v29;
    sub_AB30F0(v54);
    v56 = v55;
    sub_AB30F0(v57);
    v59 = v58;
    v60 = [v52 initWithAuthURL:v56 redirectURL:v58];
    v87 = v31;
    v89 = v53;
    v53(v50, v31);

    sub_12E1C(v50 + v51, &unk_DF2AE0, &qword_AFC930);
    v61 = objc_allocWithZone(UINavigationController);
    v62 = v60;
    v63 = [v61 initWithRootViewController:v62];
    v64 = *(v49 + 24);
    v65 = v62;
    if (v64)
    {
      v66 = *(v49 + 16);
      sub_AB9220();
      v91._countAndFlagsBits = 0x207463656E6E6F43;
      v91._object = 0xE800000000000000;
      sub_AB9210(v91);
      v92._countAndFlagsBits = v66;
      v92._object = v64;
      sub_AB9200(v92);
      v93._countAndFlagsBits = 0;
      v93._object = 0xE000000000000000;
      sub_AB9210(v93);
      sub_AB9240();
      sub_AB3550();
      sub_AB9320();
      v65 = sub_AB9260();

      [v62 setTitle:v65];
    }

    v67 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v68 = swift_allocObject();
    v68[2] = v67;
    v68[3] = sub_EBB40;
    v68[4] = v84;
    aBlock[4] = sub_EBC04;
    aBlock[5] = v68;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_EAF20;
    aBlock[3] = &block_descriptor_29;
    v69 = _Block_copy(aBlock);

    [v62 setCompletionBlock:v69];
    _Block_release(v69);
    [v63 setModalPresentationStyle:2];
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v63, 0, 1, 0, 0);
    [v62 startAuthentication];

    v89(v48, v87);
  }

  return result;
}

uint64_t sub_EBB8C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_EBBCC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_EBC28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialOnboardingOAuthTwoProtocolDescriptor.FlowDescriptor.OutputURLDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_EBC8C(uint64_t a1)
{
  v2 = type metadata accessor for SocialOnboardingOAuthTwoProtocolDescriptor.FlowDescriptor.OutputURLDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_EBCE8()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_10Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEAA0, &qword_AFD290) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for SocialOnboardingOAuthTwoProtocolDescriptor.FlowDescriptor.OutputURLDescriptor(0);
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 1, v3))
  {
    v4 = sub_AB31C0();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

void sub_EBEE8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEAA0, &qword_AFD290) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v0 + v4);
  v8 = *(v0 + v4 + 8);

  sub_E92E4(v0 + v2, v5, v7, v8, v6);
}

uint64_t sub_EBF9C()
{

  return swift_deallocObject();
}

unint64_t sub_EBFDC()
{
  result = qword_DEEAB0;
  if (!qword_DEEAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEEAB0);
  }

  return result;
}

uint64_t sub_EC0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEAA8, &qword_AFD298);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_EC1A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEAA8, &qword_AFD298);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_EC254(uint64_t a1)
{
  sub_EC2D0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_EC2D0(uint64_t a1)
{
  if (!qword_DEEBB0)
  {
    sub_AB31C0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_DF2AE0, &qword_AFC930);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_DEEBB0);
    }
  }
}

uint64_t sub_EC350(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_EC398(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_EC55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_EC5E8()
{
  result = qword_DEECD8;
  if (!qword_DEECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEECD8);
  }

  return result;
}

void sub_EC654(char a1)
{
  v2 = v1;
  [v1 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v1 traitCollection];
  v13 = &v1[OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_normalizedContentOffset];
  v14 = *&v1[OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_normalizedContentOffset + 8];
  v15 = -v14;
  v16 = v14 < -0.0;
  v17 = 0.0;
  if (!v16)
  {
    v17 = v15;
  }

  MaxY = v17 + *&v1[OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_contentInsetAdditions + 8];
  v19 = *&v1[OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_upsellBannerView];
  v55 = v12;
  if (v19)
  {
    v20 = v19;
    v21 = v20;
    if (a1)
    {
      [v20 bounds];
      Height = CGRectGetHeight(v64);
    }

    else
    {
      sub_1D4684(v9);
      Height = v23;
    }

    v65.origin.x = v5;
    v65.origin.y = v7;
    v65.size.width = v9;
    v65.size.height = v11;
    Width = CGRectGetWidth(v65);
    [v21 setFrame:{0.0, MaxY, Width, Height}];
    v66.origin.x = 0.0;
    v66.origin.y = MaxY;
    v66.size.width = Width;
    v66.size.height = Height;
    MaxY = CGRectGetMaxY(v66);

    v12 = v55;
  }

  v25 = OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_promotionalParallaxContentView;
  v26 = *&v2[OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_promotionalParallaxContentView];
  if (v26)
  {
    v27 = v26;
    v67.origin.x = v5;
    v67.origin.y = v7;
    v67.size.width = v9;
    v67.size.height = v11;
    v28 = CGRectGetWidth(v67);
    v29 = sub_1A70C4(v55, v28);
    v30 = *&v2[v25];
    if (v30)
    {
      v31 = v30;
      v68.origin.x = v5;
      v68.origin.y = v7;
      v68.size.width = v9;
      v68.size.height = v11;
      v32 = CGRectGetWidth(v68);
      v33 = sub_1AAAF0(v55, v32);
    }

    else
    {
      v33 = 0.0;
    }

    v34 = *v13;
    v35 = v13[1];
    v36 = &v27[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_normalizedContentOffset];
    v37 = *&v27[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_normalizedContentOffset];
    v38 = *&v27[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_normalizedContentOffset + 8];
    *v36 = *v13;
    v36[1] = v35;
    if (*&v37 != v34 || *&v38 != v35)
    {
      sub_1A7634(v37, v38, 0);
      [v27 setNeedsLayout];
      [v27 layoutIfNeeded];
    }

    v40 = *&v27[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_baseHeight];
    *&v27[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_baseHeight] = v29;
    v57 = v40;
    if (sub_AB38D0())
    {
      v41 = &v27[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_cachedAdditionalContentStackViewSizeContext];
      *v41 = 0;
      *(v41 + 1) = 0;
      *(v41 + 2) = 0;
      v41[24] = 1;
      sub_1A7634(0, 0, 1);
      [v27 setNeedsLayout];
    }

    v69.origin.x = v5;
    v69.origin.y = v7;
    v69.size.width = v9;
    v69.size.height = v11;
    v42 = CGRectGetWidth(v69);
    v43 = v13[1];
    if (v43 <= 0.0)
    {
      v44 = v29 - v43;
      if (v33 <= 0.0)
      {
LABEL_31:
        v46 = type metadata accessor for PromotionalParallaxContentView();
        v62.receiver = v27;
        v62.super_class = v46;
        objc_msgSendSuper2(&v62, "frame");
        v48 = v47;
        v50 = v49;
        v52 = v51;
        v54 = v53;
        v61.receiver = v27;
        v61.super_class = v46;
        objc_msgSendSuper2(&v61, "setFrame:", 0.0, MaxY, v42, v44);
        type metadata accessor for CGRect(0);
        v57 = v48;
        v58 = v50;
        v59 = v52;
        v60 = v54;
        v56.receiver = v27;
        v56.super_class = v46;
        objc_msgSendSuper2(&v56, "frame");
        if (sub_AB38D0())
        {
          sub_1A7634(0, 0, 1);
        }

        return;
      }
    }

    else
    {
      v44 = v29 + 0.0;
      if (v33 <= 0.0)
      {
        goto LABEL_31;
      }
    }

    if (MaxY < 0.0)
    {
      v45 = v29 - fabs(MaxY);
      if (v33 > v45)
      {
        v44 = v33;
      }

      else
      {
        v44 = v45;
      }

      MaxY = 0.0;
    }

    goto LABEL_31;
  }
}

void sub_ECA8C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *&v2[*a2];
  *&v2[*a2] = a1;
  if (v4)
  {
    v5 = a1;
    v6 = v4;
    if ([v6 isDescendantOfView:v2])
    {
      [v6 removeFromSuperview];
    }

    v7 = *&v2[v3];
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = a1;
    v7 = a1;
    if (a1)
    {
LABEL_5:
      v8 = v7;
      [v2 addSubview:v8];
      sub_EC654(0);
    }
  }
}

char *sub_ECC34(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_promotionalParallaxContentView);
  if (v7)
  {
    v26.receiver = *(v3 + OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_promotionalParallaxContentView);
    v26.super_class = type metadata accessor for PromotionalParallaxContentView();
    v8 = v7;
    objc_msgSendSuper2(&v26, "frame");
    v27.x = a2;
    v27.y = a3;
    if (CGRectContainsPoint(v30, v27))
    {
      v9 = *&v8[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_pageHeaderContentView];
      if (v9)
      {
        v10 = v9;
        [v10 frame];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        [v8 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
        v28.x = v19;
        v28.y = v20;
        v31.origin.x = v12;
        v31.origin.y = v14;
        v31.size.width = v16;
        v31.size.height = v18;
        if (CGRectContainsPoint(v31, v28))
        {
          [v10 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
          v21 = [v10 hitTest:a1 withEvent:?];

          if (v21)
          {

            return v21;
          }
        }

        else
        {
        }
      }

      v25 = [v8 hitTest:a1 withEvent:{a2, a3, v26.receiver, v26.super_class}];

      return v25;
    }

    return 0;
  }

  v23 = *(v3 + OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_upsellBannerView);
  if (!v23)
  {
    return 0;
  }

  v24 = v23;
  [v24 frame];
  v29.x = a2;
  v29.y = a3;
  if (!CGRectContainsPoint(v32, v29))
  {

    return 0;
  }

  v25 = sub_1D455C(a1, a2, a3);

  return v25;
}

id sub_ECFF8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_promotionalParallaxContentView] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_upsellBannerView] = 0;
  v4 = &v1[OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_normalizedContentOffset];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_contentInsetAdditions] = UIOffsetZero;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "initWithCoder:", a1);
}

void sub_ED12C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13.receiver = v2;
  v13.super_class = type metadata accessor for JSSocialProfileCollectionModelRequest();
  objc_msgSendSuper2(&v13, "copyWithZone:", a1);
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_808B0(a2, v12);
  if (swift_dynamicCast())
  {
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication37JSSocialProfileCollectionModelRequest_profileCollection];
    v6 = *&v11[OBJC_IVAR____TtC16MusicApplication37JSSocialProfileCollectionModelRequest_profileCollection];
    *&v11[OBJC_IVAR____TtC16MusicApplication37JSSocialProfileCollectionModelRequest_profileCollection] = v5;
    v7 = v5;

    v8 = *&v2[OBJC_IVAR____TtC16MusicApplication37JSSocialProfileCollectionModelRequest_previousResponse];
    v9 = *&v11[OBJC_IVAR____TtC16MusicApplication37JSSocialProfileCollectionModelRequest_previousResponse];
    *&v11[OBJC_IVAR____TtC16MusicApplication37JSSocialProfileCollectionModelRequest_previousResponse] = v8;
    v10 = v8;
  }
}

double sub_ED26C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;

  v13 = a4;

  v14 = a1;
  swift_errorRetain();
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_F02BC, v12);

  return result;
}

double sub_ED34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v13 = *(*a1 + 152);

  v14 = a5;
  swift_errorRetain();
  v13(a2, sub_AAED4, v12);

  return result;
}

void sub_ED62C(char *a1)
{
  v167 = sub_AB7CC0();
  v165 = *(v167 - 8);
  __chkstk_darwin();
  v166 = (&v161 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v185 = a1;
  v3 = *&a1[OBJC_IVAR____TtC16MusicApplicationP33_9AFC986C3EE3F16591D3B34D5D62C9B146JSSocialProfileCollectionModelRequestOperation_request];
  v169 = *&v3[OBJC_IVAR____TtC16MusicApplication37JSSocialProfileCollectionModelRequest_profileCollection];
  v177 = v169;
  v171 = v3;
  isEscapingClosureAtFileLocation = [v3 itemProperties];
  v5 = &off_DF9000;
  v6 = &OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_requestedProperties;
  if (isEscapingClosureAtFileLocation)
  {
    v7 = type metadata accessor for JSModelSocialPersonProfileBuilder();
    v8 = objc_allocWithZone(v7);
    v8[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_initializedProperties] = 2;
    *&v8[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_requestedProperties] = isEscapingClosureAtFileLocation;
    v9 = objc_allocWithZone(MPStoreModelSocialPersonBuilder);
    v10 = isEscapingClosureAtFileLocation;
    v11 = [v9 initWithRequestedPropertySet:v10];
    if (!v11)
    {
LABEL_129:
      __break(1u);
      return;
    }

    *&v8[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_storePlatformPersonBuilder] = v11;
    v188.receiver = v8;
    v188.super_class = v7;
    v12 = objc_msgSendSuper2(&v188, "init");

    isEscapingClosureAtFileLocation = v12;
  }

  v13 = [objc_allocWithZone(MPMutableSectionedCollection) init];
  v14 = [objc_allocWithZone(MPMutableSectionedCollection) init];
  v15 = sub_AB9260();
  v173 = v13;
  [v13 appendSection:v15];

  v16 = sub_AB9260();
  v172 = v14;
  [v14 appendSection:v16];

  v186 = isEscapingClosureAtFileLocation;
  if (!v169)
  {
    goto LABEL_57;
  }

  v17 = OBJC_IVAR____TtC11MusicJSCore25JSSocialProfileCollection_items;
  v18 = v177;
  swift_beginAccess();
  v19 = *&v18[v17];
  if (v19 >> 62)
  {
    goto LABEL_120;
  }

  v20 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
  if (!v20)
  {
    goto LABEL_57;
  }

LABEL_7:
  v21 = v19 & 0xC000000000000001;
  v180 = v19 + 32;
  v181 = v19 & 0xFFFFFFFFFFFFFF8;
  v170 = MPModelPropertySocialPersonPendingRequestsCount;
  v168 = &v191;
  v164 = enum case for DispatchPredicate.onQueue(_:);
  v162 = v165 + 1;
  v163 = (v165 + 13);
  v178 = v177;

  v22 = 0;
  v182 = v19;
  v183 = v20;
  v184 = (v19 & 0xC000000000000001);
  while (1)
  {
    if (v21)
    {
      v25 = sub_360924(v22, v19);
    }

    else
    {
      if (v22 >= *(v181 + 16))
      {
        goto LABEL_116;
      }

      v25 = *(v180 + 8 * v22);
    }

    v24 = v25;
    v26 = __OFADD__(v22++, 1);
    if (v26)
    {
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
      v20 = sub_ABB060();
      if (!v20)
      {
        goto LABEL_57;
      }

      goto LABEL_7;
    }

    v27 = OBJC_IVAR____TtC11MusicJSCore29JSSocialProfileCollectionItem_profile;
    swift_beginAccess();
    v28 = *(v24 + v27);
    if (v28)
    {
      v29 = isEscapingClosureAtFileLocation == 0;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      goto LABEL_11;
    }

    v187 = v28;
    v30 = [v185 userIdentity];
    if (!v30)
    {
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    v31 = v30;
    v32 = v5[99];
    if (*(v32 + isEscapingClosureAtFileLocation) == 2)
    {
      v33 = *(isEscapingClosureAtFileLocation + *v6);
      v34 = [v33 properties];
      v35 = sub_AB9B40();

      v36 = sub_AB92A0();
      v38 = sub_4DFDA8(v36, v37, v35);
      v40 = v39;
      v42 = v41;

      LOBYTE(v33) = v42 != -1;
      v43 = v38;
      isEscapingClosureAtFileLocation = v186;
      v44 = v42;
      v6 = &OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_requestedProperties;
      sub_F01A0(v43, v40, v44);
      *(v32 + isEscapingClosureAtFileLocation) = v33;
      v20 = v183;
    }

    v45 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_storeItemMetadata;
    v46 = v187;
    swift_beginAccess();
    v47 = *(v46 + v45);
    if (!v47)
    {
      v23 = v24;
      v24 = v31;
LABEL_35:
      v5 = &off_DF9000;
LABEL_36:
      v21 = v184;
      goto LABEL_10;
    }

    v48 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_storePlatformPersonBuilder);
    v49 = v47;
    v50 = [v48 modelObjectWithStoreItemMetadata:v49 userIdentity:v31];
    if (!v50)
    {

      v187 = v24;
      v23 = v31;
      v24 = v49;
      goto LABEL_35;
    }

    v176 = v50;
    v175 = [v50 identifiers];
    v19 = swift_allocObject();
    v174 = v49;
    v51 = v187;
    *(v19 + 16) = isEscapingClosureAtFileLocation;
    *(v19 + 24) = v51;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_F0334;
    *(v52 + 24) = v19;
    v193 = sub_C3FB8;
    v194 = v52;
    v189 = _NSConcreteStackBlock;
    v190 = 1107296256;
    v191 = sub_41A314;
    v192 = &block_descriptor_57;
    v6 = _Block_copy(&v189);
    v187 = v51;

    v53 = isEscapingClosureAtFileLocation;

    v54 = v175;
    v5 = v176;
    v179 = [v176 copyWithIdentifiers:v175 block:v6];

    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_117;
    }

    v55 = OBJC_IVAR____TtC11MusicJSCore25JSSocialProfileCollection_collectionStyle;
    v56 = v178;
    swift_beginAccess();
    isEscapingClosureAtFileLocation = v186;
    v5 = &off_DF9000;
    v6 = &OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_requestedProperties;
    v20 = v183;
    v21 = v184;
    if (!v56[v55])
    {
      goto LABEL_9;
    }

    if (v56[v55] != 1)
    {
      break;
    }

    v57 = qword_DE6BE8;
    v58 = v178;
    if (v57 != -1)
    {
      swift_once();
    }

    v59 = sub_43D968(v179);

    if ((v59 & 1) == 0)
    {
      v23 = v179;
      goto LABEL_10;
    }

LABEL_9:
    v23 = v24;
    v24 = v179;
    [v173 appendItem:v179];
    [v172 appendItem:v23];
LABEL_10:

    v19 = v182;
LABEL_11:

    if (v22 == v20)
    {

LABEL_57:
      v80 = *&v171[OBJC_IVAR____TtC16MusicApplication37JSSocialProfileCollectionModelRequest_previousResponse];
      if (!v80 || (type metadata accessor for JSSocialProfileCollectionModelResponse(), (v81 = swift_dynamicCastClass()) == 0) || (v61 = *(v81 + OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_pendingAppendedItems)) == 0)
      {
        v87 = 0;
        goto LABEL_125;
      }

      v82 = objc_allocWithZone(MPMutableSectionedCollection);
      v83 = v80;

      v84 = [v82 init];
      v85 = sub_AB9260();
      [v84 appendSection:v85];

      v174 = v84;
      v170 = v83;
      v182 = v61 & 0xFFFFFFFFFFFFFF8;
      if (v61 >> 62)
      {
        goto LABEL_123;
      }

      v19 = *(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8));
      if (!v19)
      {
        goto LABEL_124;
      }

      goto LABEL_62;
    }
  }

  v60 = qword_DE6BE8;
  v61 = v178;
  if (v60 != -1)
  {
    swift_once();
  }

  v62 = qword_E71820;
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v63 = sub_ABA150();
  v64 = v166;
  isEscapingClosureAtFileLocation = v167;
  *v166 = v63;
  (*v163)(v64, v164, isEscapingClosureAtFileLocation);
  v65 = sub_AB7CF0();
  (*v162)(v64, isEscapingClosureAtFileLocation);
  if (v65)
  {
    v176 = v61;
    swift_beginAccess();
    v66 = *(v62 + 88);

    v67 = [v179 identifiers];
    v68 = [v67 universalStore];

    if (v68)
    {
      v69 = [v68 socialProfileID];
      if (v69)
      {
        v70 = v69;
        v71 = sub_AB92A0();
        v73 = v72;
        swift_unknownObjectRelease();

        if (!*(v66 + 16))
        {
          goto LABEL_8;
        }

LABEL_46:
        sub_ABB5C0();
        sub_AB93F0();
        v74 = sub_ABB610();
        v75 = -1 << *(v66 + 32);
        v76 = v74 & ~v75;
        if ((*(v66 + 56 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76))
        {
          v77 = ~v75;
          while (1)
          {
            v78 = (*(v66 + 48) + 16 * v76);
            v79 = *v78 == v71 && v78[1] == v73;
            if (v79 || (sub_ABB3C0() & 1) != 0)
            {
              break;
            }

            v76 = (v76 + 1) & v77;
            if (((*(v66 + 56 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76) & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          v23 = v179;
          isEscapingClosureAtFileLocation = v186;
          v6 = &OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_requestedProperties;
          v20 = v183;
          v5 = &off_DF9000;
          goto LABEL_36;
        }

LABEL_8:

        isEscapingClosureAtFileLocation = v186;
        v6 = &OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_requestedProperties;
        v5 = &off_DF9000;
        v20 = v183;
        v21 = v184;
        goto LABEL_9;
      }

      swift_unknownObjectRelease();
    }

    v71 = 0;
    v73 = 0xE000000000000000;
    if (*(v66 + 16))
    {
      goto LABEL_46;
    }

    goto LABEL_8;
  }

  __break(1u);
LABEL_123:
  v19 = sub_ABB060();
  if (v19)
  {
LABEL_62:
    v6 = 0;
    v86 = v61 & 0xC000000000000001;
    v180 = v61 + 32;
    v178 = MPModelPropertySocialPersonPendingRequestsCount;
    v176 = &v191;
    v168 = (v165 + 13);
    ++v165;
    v164 = enum case for DispatchPredicate.onQueue(_:);
    v183 = v61;
    v181 = v19;
    v175 = (v61 & 0xC000000000000001);
    do
    {
      while (1)
      {
        if (v86)
        {
          v90 = sub_360924(v6, v61);
          v26 = __OFADD__(v6++, 1);
          if (v26)
          {
            goto LABEL_115;
          }
        }

        else
        {
          if (v6 >= *(v182 + 16))
          {
            goto LABEL_118;
          }

          v90 = *(v180 + 8 * v6);
          v26 = __OFADD__(v6++, 1);
          if (v26)
          {
            goto LABEL_115;
          }
        }

        v91 = OBJC_IVAR____TtC11MusicJSCore29JSSocialProfileCollectionItem_profile;
        v187 = v90;
        swift_beginAccess();
        v89 = v187;
        v92 = *(v187 + v91);
        if (v92 && isEscapingClosureAtFileLocation != 0)
        {
          break;
        }

LABEL_66:

        if (v6 == v19)
        {
          goto LABEL_124;
        }
      }

      v94 = v86;
      v184 = v92;
      v95 = [v185 userIdentity];
      if (!v95)
      {
        goto LABEL_128;
      }

      v96 = v95;
      v97 = v5[99];
      if (*(v97 + isEscapingClosureAtFileLocation) == 2)
      {
        v98 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_requestedProperties);
        v99 = [v98 properties];
        v100 = sub_AB9B40();

        v101 = sub_AB92A0();
        v103 = sub_4DFDA8(v101, v102, v100);
        v105 = v104;
        v107 = v106;

        v108 = v103;
        isEscapingClosureAtFileLocation = v186;
        v109 = v105;
        v5 = &off_DF9000;
        sub_F01A0(v108, v109, v107);
        *(v97 + isEscapingClosureAtFileLocation) = v107 != -1;
      }

      v110 = v5;
      v111 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_storeItemMetadata;
      v5 = v184;
      swift_beginAccess();
      v112 = *(v5 + v111);
      v86 = v94;
      if (!v112)
      {
        v88 = v187;
        v19 = v181;
LABEL_65:

        v89 = v96;
        v5 = v110;
        v61 = v183;
        goto LABEL_66;
      }

      v113 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_storePlatformPersonBuilder);
      v114 = v112;
      v115 = [v113 modelObjectWithStoreItemMetadata:v114 userIdentity:v96];
      if (!v115)
      {
        v128 = v187;
        v5 = v96;
        v96 = v114;
        v19 = v181;
LABEL_91:

        v88 = v184;
        goto LABEL_65;
      }

      v116 = v115;
      v179 = [v115 identifiers];
      v19 = swift_allocObject();
      v117 = v184;
      *(v19 + 16) = isEscapingClosureAtFileLocation;
      *(v19 + 24) = v117;
      v118 = swift_allocObject();
      *(v118 + 16) = sub_F01B8;
      *(v118 + 24) = v19;
      v193 = sub_57B84;
      v194 = v118;
      v189 = _NSConcreteStackBlock;
      v190 = 1107296256;
      v191 = sub_41A314;
      v192 = &block_descriptor_46;
      v119 = _Block_copy(&v189);
      v120 = isEscapingClosureAtFileLocation;
      v184 = v117;

      v121 = v114;
      v122 = v179;
      v5 = [v116 copyWithIdentifiers:v179 block:v119];

      _Block_release(v119);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_119;
      }

      if (!v169)
      {
        v88 = v184;
        isEscapingClosureAtFileLocation = v186;
        v96 = v187;
        v110 = 14651392;
        v19 = v181;
        v86 = v175;
        goto LABEL_65;
      }

      v179 = v5;
      v123 = OBJC_IVAR____TtC11MusicJSCore25JSSocialProfileCollection_collectionStyle;
      v124 = v177;
      swift_beginAccess();
      isEscapingClosureAtFileLocation = v186;
      v5 = &off_DF9000;
      v61 = v183;
      v86 = v175;
      if (v124[v123])
      {
        if (v124[v123] != 1)
        {
          v129 = qword_DE6BE8;
          v163 = v177;
          if (v129 != -1)
          {
            swift_once();
          }

          v130 = qword_E71820;
          sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
          v131 = sub_ABA150();
          v133 = v166;
          v132 = v167;
          *v166 = v131;
          (*v168)(v133, v164, v132);
          v134 = sub_AB7CF0();
          (*v165)(v133, v132);
          if ((v134 & 1) == 0)
          {
            __break(1u);
            goto LABEL_127;
          }

          swift_beginAccess();
          v135 = *(v130 + 88);

          v136 = [v179 identifiers];
          v137 = [v136 universalStore];

          if (v137)
          {
            v138 = [v137 socialProfileID];
            if (v138)
            {
              v139 = v138;
              v140 = sub_AB92A0();
              v142 = v141;
              swift_unknownObjectRelease();

              if (!*(v135 + 16))
              {
                goto LABEL_110;
              }

              goto LABEL_102;
            }

            swift_unknownObjectRelease();
          }

          v140 = 0;
          v142 = 0xE000000000000000;
          if (!*(v135 + 16))
          {
LABEL_110:

            isEscapingClosureAtFileLocation = v186;
            v5 = &off_DF9000;
            v61 = v183;
            goto LABEL_111;
          }

LABEL_102:
          sub_ABB5C0();
          sub_AB93F0();
          v143 = sub_ABB610();
          v144 = -1 << *(v135 + 32);
          v145 = v143 & ~v144;
          if ((*(v135 + 56 + ((v145 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v145))
          {
            v146 = ~v144;
            while (1)
            {
              v147 = (*(v135 + 48) + 16 * v145);
              v148 = *v147 == v140 && v147[1] == v142;
              if (v148 || (sub_ABB3C0() & 1) != 0)
              {
                break;
              }

              v145 = (v145 + 1) & v146;
              if (((*(v135 + 56 + ((v145 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v145) & 1) == 0)
              {
                goto LABEL_110;
              }
            }

            isEscapingClosureAtFileLocation = v186;
            v96 = v187;
            v110 = 14651392;
            v19 = v181;
            v5 = v179;
            v128 = v163;
            goto LABEL_91;
          }

          goto LABEL_110;
        }

        v125 = qword_DE6BE8;
        v126 = v177;
        if (v125 != -1)
        {
          swift_once();
        }

        v127 = sub_43D968(v179);

        if ((v127 & 1) == 0)
        {
          v110 = 14651392;
          v88 = v184;
          v5 = v179;
          v96 = v187;
          v19 = v181;
          goto LABEL_65;
        }
      }

LABEL_111:
      v149 = v179;
      [v174 appendItem:v179];

      v19 = v181;
    }

    while (v6 != v181);
  }

LABEL_124:

  v87 = v174;
  v150 = v174;
LABEL_125:
  v151 = objc_allocWithZone(type metadata accessor for JSSocialProfileCollectionModelResponse());
  v152 = v87;
  v153 = v173;
  v154 = v172;
  v155 = v153;
  v156 = v154;
  v157 = v171;
  v159 = sub_EEA90(v157, v155, v156, v87, v158);
  v160 = v185;
  (*&v185[OBJC_IVAR____TtC16MusicApplicationP33_9AFC986C3EE3F16591D3B34D5D62C9B146JSSocialProfileCollectionModelRequestOperation_responseHandler])(v159, 0);
  [v160 finish];
}

char *sub_EEA90(char *a1, void *a2, void *a3, void *a4, __n128 a5)
{
  *&v5[OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_appendedModelResults] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_pendingAppendedItems] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_profileCollectionItemsDidChangeNotificationObserver] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_profileCollectionDidAppendItemsNotificationObserver] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_pendingRequestStateUpdateNotificationObserver] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_didRemoveFollowerNotificationObserver] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_jsResults] = a3;
  v38.receiver = v5;
  v38.super_class = type metadata accessor for JSSocialProfileCollectionModelResponse();
  v10 = a3;
  result = objc_msgSendSuper2(&v38, "initWithRequest:", a1);
  if (result)
  {
    v35 = v10;
    v12 = result;
    v36 = a2;
    [v12 setResults:a2];
    if (a4)
    {
      v13 = [a4 itemsInSectionAtIndex:{0, v35}];
      v14 = sub_AB9760();

      v16 = sub_12DABC(v14, v15);

      if (v16)
      {
        *&v12[OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_appendedModelResults] = v16;
      }
    }

    v37 = a4;
    v17 = *&a1[OBJC_IVAR____TtC16MusicApplication37JSSocialProfileCollectionModelRequest_profileCollection];
    v18 = v17;
    v19 = *JSSocialProfileCollection.Notifications.existingItemsDidChangeNotification.unsafeMutableAddressor();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v21 = v18;
    *&v12[OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_profileCollectionItemsDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v19, v17, 1, 1, sub_AAF10, v20);

    v22 = *JSSocialProfileCollection.Notifications.didAppendNewItemsNotification.unsafeMutableAddressor();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = v21;
    v25 = v22;

    swift_allocObject();
    *&v12[OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_profileCollectionDidAppendItemsNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v25, v17, 1, 1, sub_F0208, v23);

    if (v17)
    {
      v26 = OBJC_IVAR____TtC11MusicJSCore25JSSocialProfileCollection_collectionStyle;
      swift_beginAccess();
      if (v24[v26])
      {
        if (v24[v26] == 1)
        {
          if (qword_DE6BF8 != -1)
          {
            swift_once();
          }

          v27 = qword_E71830;
          v28 = swift_allocObject();
          swift_unknownObjectWeakInit();
          swift_allocObject();
          v29 = v27;

          v30 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v29, 0, 1, 1, sub_AADB4, v28);

          v31 = OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_pendingRequestStateUpdateNotificationObserver;
        }

        else
        {
          if (qword_DE6C00 != -1)
          {
            swift_once();
          }

          v32 = qword_E71838;
          v33 = swift_allocObject();
          swift_unknownObjectWeakInit();
          swift_allocObject();
          v34 = v32;

          v30 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v34, 0, 1, 1, sub_AAF10, v33);

          v31 = OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_didRemoveFollowerNotificationObserver;
        }

        *&v12[v31] = v30;

        goto LABEL_18;
      }
    }

    else
    {
    }

LABEL_18:
    return v12;
  }

  __break(1u);
  return result;
}

void sub_EEF50(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_AB2BC0();
    if (v4)
    {
      v5 = v4;
      v6 = JSSocialProfileCollection.Notifications.UserInfoKeys.appendedItems.unsafeMutableAddressor();
      v8 = *v6;
      v7 = v6[1];
      v15[0] = v8;
      v15[1] = v7;

      sub_ABAD10();
      if (*(v5 + 16) && (v9 = sub_2EC004(v14), (v10 & 1) != 0))
      {
        sub_808B0(*(v5 + 56) + 32 * v9, v15);
        sub_8085C(v14);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEFE8, &qword_AFD4F0);
        v11 = swift_dynamicCast();
        v12 = v13;
        if (!v11)
        {
          v12 = 0;
        }
      }

      else
      {
        sub_8085C(v14);
        v12 = 0;
      }

      *&v3[OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_pendingAppendedItems] = v12;
    }

    [v3 _invalidate];
  }
}

void sub_EF090(void *a1, void (*a2)(id), __n128 a3)
{
  if (a1)
  {
    type metadata accessor for JSSocialProfileCollectionModelResponse();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = v3;
      v9 = objc_allocWithZone(MPChangeDetails);
      v15[4] = sub_F0074;
      v15[5] = v8;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 1107296256;
      v15[2] = sub_1546C;
      v15[3] = &block_descriptor_30;
      v10 = _Block_copy(v15);
      v11 = a1;
      v12 = v3;
      v13 = [v9 initWithBlock:v10];
      _Block_release(v10);

      if (a2)
      {
        v14 = v13;
        a2(v13);

        return;
      }

      goto LABEL_9;
    }
  }

  if (!a2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  (a2)(0, a3);
}

void sub_EF1FC(void *a1, void *a2, char *a3)
{
  v106 = a1;
  v5 = sub_AB3820();
  v104 = *(v5 - 8);
  __chkstk_darwin();
  v93 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v100 = &v90 - v7;
  __chkstk_darwin();
  v99 = &v90 - v8;
  __chkstk_darwin();
  v95 = &v90 - v9;
  __chkstk_darwin();
  v92 = &v90 - v10;
  __chkstk_darwin();
  v91 = &v90 - v11;
  __chkstk_darwin();
  v13 = &v90 - v12;
  __chkstk_darwin();
  v96 = &v90 - v14;
  __chkstk_darwin();
  v105 = &v90 - v15;
  *&v16 = __chkstk_darwin().n128_u64[0];
  v18 = &v90 - v17;
  v19 = [a2 results];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 itemsInSectionAtIndex:0];

    v22 = sub_AB9760();
    v24 = sub_12DABC(v22, v23);

    if (v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = _swiftEmptyArrayStorage;
    }

    v90 = *&a3[OBJC_IVAR____TtC16MusicApplication38JSSocialProfileCollectionModelResponse_appendedModelResults];
    if (v90)
    {
      if (v25 >> 62)
      {
        goto LABEL_64;
      }

      v103 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
LABEL_8:
      v26 = v90;

      v27 = (v26 & 0xFFFFFFFFFFFFFF8);
      if (v26 >> 62)
      {
        v28 = sub_ABB060();
        if (v28)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v28 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
        if (v28)
        {
LABEL_10:
          v29 = 0;
          v101 = (v26 & 0xFFFFFFFFFFFFFF8);
          v102 = v90 & 0xC000000000000001;
          v30 = (v104 + 16);
          v98 = (v104 + 8);
          v99 = (v104 + 32);
          v100 = v28;
          v31 = v104;
          while (1)
          {
            if (v102)
            {
              sub_3602E8(v29, v90);
              swift_unknownObjectRelease();
              v32 = (v29 + 1);
              if (__OFADD__(v29, 1))
              {
                goto LABEL_61;
              }
            }

            else
            {
              if (v29 >= v27[2])
              {
                goto LABEL_62;
              }

              v32 = (v29 + 1);
              if (__OFADD__(v29, 1))
              {
LABEL_61:
                __break(1u);
LABEL_62:
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                v103 = sub_ABB060();
                goto LABEL_8;
              }
            }

            if (__OFADD__(v103, v29))
            {
              goto LABEL_63;
            }

            sub_AB37C0();
            (*v30)(v105, v18, v5);
            v33 = [v106 insertedItemIndexPaths];
            v34 = sub_AB9760();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v34 = sub_6AE4C(0, v34[2] + 1, 1, v34);
            }

            v36 = v34[2];
            v35 = v34[3];
            if (v36 >= v35 >> 1)
            {
              v34 = sub_6AE4C((v35 > 1), v36 + 1, 1, v34);
            }

            v34[2] = v36 + 1;
            (*(v31 + 32))(v34 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v36, v105, v5);
            isa = sub_AB9740().super.isa;
            [v106 setInsertedItemIndexPaths:isa];
            (*(v31 + 8))(v18, v5);

            ++v29;
            v38 = v32 == v100;
            v27 = v101;
            if (v38)
            {
              goto LABEL_66;
            }
          }
        }
      }

      goto LABEL_66;
    }

    v39 = [a3 results];
    if (v39)
    {
      v40 = v39;
      v41 = [v39 itemsInSectionAtIndex:0];

      v42 = sub_AB9760();
      v44 = sub_12DABC(v42, v43);

      if (v44)
      {
        v45 = v44;
      }

      else
      {
        v45 = _swiftEmptyArrayStorage;
      }

      v107[0] = v45;
      v107[1] = v25;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE80D0, &qword_AF7B80);
      v47 = sub_F0094();
      v48 = sub_F00F8();
      Collection<>.compare<A>(with:comparator:)(v107, 0, 0, v46, v46, v47, v47, v48, v49);
      v51 = v50;

      v52 = *(v51 + 16);
      if (v52)
      {
        v53 = (v104 + 8);
        v105 = (v104 + 32);
        v103 = (v104 + 16);
        v54 = v52 - 1;
        v90 = v51;
        v55 = (v51 + 56);
        v98 = v13;
        v56 = v96;
        v94 = (v104 + 8);
        while (1)
        {
          v57 = *(v55 - 3);
          v58 = *(v55 - 16);
          v101 = *v55;
          sub_AB37C0();
          sub_AB37C0();
          v102 = v54;
          if (v58 == 1)
          {
            v59 = *v103;
            if (v57)
            {
              if (v57 == 1)
              {
                v59(v91, v13, v5);
                v60 = [v106 insertedItemIndexPaths];
                v61 = sub_AB9760();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v61 = sub_6AE4C(0, v61[2] + 1, 1, v61);
                }

                v63 = v61[2];
                v62 = v61[3];
                if (v63 >= v62 >> 1)
                {
                  v61 = sub_6AE4C((v62 > 1), v63 + 1, 1, v61);
                }

                v61[2] = v63 + 1;
                v64 = v104;
                (*(v104 + 32))(v61 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v63, v91, v5);
                v65.super.isa = sub_AB9740().super.isa;
                [v106 setInsertedItemIndexPaths:{v65.super.isa, v90}];
              }

              else
              {
                v59(v93, v13, v5);
                v60 = [v106 updatedItemIndexPaths];
                v86 = sub_AB9760();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v86 = sub_6AE4C(0, v86[2] + 1, 1, v86);
                }

                v88 = v86[2];
                v87 = v86[3];
                if (v88 >= v87 >> 1)
                {
                  v86 = sub_6AE4C((v87 > 1), v88 + 1, 1, v86);
                }

                v86[2] = v88 + 1;
                v64 = v104;
                (*(v104 + 32))(v86 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v88, v93, v5);
                v65.super.isa = sub_AB9740().super.isa;
                [v106 setUpdatedItemIndexPaths:{v65.super.isa, v90}];
              }
            }

            else
            {
              v59(v92, v56, v5);
              v60 = [v106 deletedItemIndexPaths];
              v83 = sub_AB9760();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v83 = sub_6AE4C(0, v83[2] + 1, 1, v83);
              }

              v85 = v83[2];
              v84 = v83[3];
              if (v85 >= v84 >> 1)
              {
                v83 = sub_6AE4C((v84 > 1), v85 + 1, 1, v83);
              }

              v83[2] = v85 + 1;
              v64 = v104;
              (*(v104 + 32))(v83 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v85, v92, v5);
              v65.super.isa = sub_AB9740().super.isa;
              [v106 setDeletedItemIndexPaths:{v65.super.isa, v90}];
            }

            v89 = *(v64 + 8);
            v89(v13, v5);
            v89(v56, v5);
          }

          else
          {
            v66 = v95;
            sub_AB37C0();
            v67 = *v53;
            (*v53)(v56, v5);
            v68 = *v105;
            (*v105)(v56, v66, v5);
            v69 = *v103;
            (*v103)(v99, v56, v5);
            v70 = [v106 deletedItemIndexPaths];
            v71 = sub_AB9760();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v71 = sub_6AE4C(0, *(v71 + 2) + 1, 1, v71);
            }

            v73 = *(v71 + 2);
            v72 = *(v71 + 3);
            v97 = v67;
            if (v73 >= v72 >> 1)
            {
              v71 = sub_6AE4C((v72 > 1), v73 + 1, 1, v71);
            }

            *(v71 + 2) = v73 + 1;
            v74 = (*(v104 + 80) + 32) & ~*(v104 + 80);
            v75 = *(v104 + 72);
            v68(&v71[v74 + v75 * v73], v99, v5);
            v76 = sub_AB9740().super.isa;
            v77 = v106;
            [v106 setDeletedItemIndexPaths:v76];

            v69(v100, v98, v5);
            v60 = [v77 insertedItemIndexPaths];
            v78 = sub_AB9760();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v78 = sub_6AE4C(0, *(v78 + 2) + 1, 1, v78);
            }

            v79 = v101;
            v81 = *(v78 + 2);
            v80 = *(v78 + 3);
            if (v81 >= v80 >> 1)
            {
              v78 = sub_6AE4C((v80 > 1), v81 + 1, 1, v78);
            }

            *(v78 + 2) = v81 + 1;
            v68(&v78[v74 + v81 * v75], v100, v5);
            v65.super.isa = sub_AB9740().super.isa;
            [v106 setInsertedItemIndexPaths:v65.super.isa];
            v82 = v97;
            v13 = v98;
            v53 = v94;
            v97(v98, v5);
            v56 = v96;
            v82(v96, v5);
          }

          if (!v102)
          {
            break;
          }

          v54 = v102 - 1;
          v55 += 4;
        }
      }

LABEL_66:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_EFF04(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_EFFFC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_F0034()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_F0094()
{
  result = qword_DE80D8;
  if (!qword_DE80D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DE80D0, &qword_AF7B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE80D8);
  }

  return result;
}

unint64_t sub_F00F8()
{
  result = qword_DEEFE0;
  if (!qword_DEEFE0)
  {
    sub_13C80(255, &qword_DED7C0, MPModelSocialPerson_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEEFE0);
  }

  return result;
}

uint64_t sub_F0160()
{

  return swift_deallocObject();
}

double sub_F01A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_E1798(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_F01D0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_F0210()
{

  return swift_deallocObject();
}

uint64_t sub_F0264()
{

  return swift_deallocObject();
}

uint64_t sub_F02CC()
{

  return swift_deallocObject();
}

char *sub_F0338(void *a1, uint64_t a2, uint64_t a3)
{
  *&v3[qword_DEEFF0] = 0;
  *&v3[qword_DEEFF8] = _swiftEmptyArrayStorage;
  *&v3[qword_DEF000] = 0;
  v16.receiver = v3;
  v16.super_class = type metadata accessor for SeasonsViewController(0);
  v5 = objc_msgSendSuper2(&v16, "init");
  objc_allocWithZone(type metadata accessor for JSLibraryCollectionViewModel());
  v6 = v5;
  v7 = a1;
  v8 = JSLibraryCollectionViewModel.init(scopingModel:)(v7);
  v9 = objc_allocWithZone(type metadata accessor for JSLibraryCollectionComponentController(0));
  v10 = JSLibraryCollectionComponentController.init(viewModel:)(v8);
  v11 = *&v6[qword_DEEFF0];
  *&v6[qword_DEEFF0] = v10;

  v12 = sub_AB9260();
  [v6 setPlayActivityFeatureName:v12];

  v13 = sub_AB9260();
  [v6 setTitle:v13];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_AF82B0;
  *(v14 + 32) = v7;
  *&v6[qword_DEEFF8] = v14;

  return v6;
}

void sub_F04DC(uint64_t a1)
{
  *(a1 + qword_DEEFF0) = 0;
  *(a1 + qword_DEEFF8) = _swiftEmptyArrayStorage;
  *(a1 + qword_DEF000) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_F05E4(void *a1, uint64_t a2, uint64_t a3, const char **a4, void (*a5)(uint64_t))
{
  v12.receiver = a1;
  v12.super_class = type metadata accessor for SeasonsViewController(0);
  v8 = *a4;
  v9 = v12.receiver;
  objc_msgSendSuper2(&v12, v8, a3);
  v10 = *&v9[qword_DEEFF0];
  if (v10)
  {
    v11 = v10;
    a5(a3);

    v9 = v11;
  }
}

void sub_F0684(void *a1)
{
  v4.receiver = a1;
  v4.super_class = type metadata accessor for SeasonsViewController(0);
  v1 = v4.receiver;
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v2 = *&v1[qword_DEEFF0];
  if (v2)
  {
    v3 = v2;
    JSComponentController.loadIfNeeded()();

    v1 = v3;
  }
}

void sub_F06FC(uint64_t a1)
{
  v2 = v1;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for SeasonsViewController(0);
  objc_msgSendSuper2(&v16, "traitCollectionDidChange:", a1);
  v4 = [v2 traitCollection];
  v5 = UITraitCollection.mediaPickerConfiguration.getter();

  if (v5)
  {
    v6 = objc_allocWithZone(type metadata accessor for JSMediaPickerEnvironment());
    v7 = v5;
    v8 = JSMediaPickerEnvironment.init(configuration:)(v7);
    v9 = *&v2[qword_DEEFF0];
    if (v9)
    {
      v10 = v9;
      v11 = v8;
      v12 = JSComponentController.environment.modify(v15);
      v14 = *v13;
      *v13 = v8;

      v12(v15, 0);
    }
  }
}

void sub_F0804(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_F06FC(a3);
}

double sub_F0870(void *a1)
{
  sub_3B316C(a1);
  v1 = type metadata accessor for AccessoryReusableView(0);
  v2 = sub_AB92A0();
  v4 = v3;
  v5 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)(v1, v2, v4, v5, v6);

  v7 = sub_13C80(0, &qword_DEF620, UICollectionReusableView_ptr);
  v8 = sub_AB92A0();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)(v7, v8, v9, 0x72617065732D6F6ELL, 0xED000073726F7461);

  return result;
}

double sub_F0980()
{
  sub_F2330();
  v1 = *(v0 + qword_DFE2F0);
  if (v1)
  {
    LOBYTE(v1) = [v1 isEmpty];
  }

  sub_3E2E84(v1);

  return result;
}

void sub_F09DC()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v3 = objc_opt_self();
  sub_13C80(0, &unk_DE9C00, MPModelTVEpisode_ptr);
  v4 = v2;
  v5 = static MPModelTVEpisode.defaultMusicKind.getter();
  v6 = [v3 kindWithEpisodeKind:v5];

  [v4 setItemKind:v6];
  v7 = sub_AB9260();
  [v4 setLabel:v7];

  if (*&v1[qword_DEEFF8] >> 62)
  {
    sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);

    sub_ABAFF0();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_ABB3E0();
    sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
  }

  sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
  isa = sub_AB9740().super.isa;

  [v4 setScopedContainers:isa];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF85D0;
  *(v9 + 32) = sub_AB92A0();
  *(v9 + 40) = v10;
  *(v9 + 48) = sub_AB92A0();
  *(v9 + 56) = v11;
  *(v9 + 64) = sub_AB92A0();
  *(v9 + 72) = v12;
  *(v9 + 80) = sub_AB92A0();
  *(v9 + 88) = v13;
  v14 = sub_AB9740().super.isa;
  v15 = [objc_opt_self() propertySetWithProperties:v14];

  [v4 setItemProperties:v15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_AF82B0;
  sub_AB92A0();
  v17 = objc_allocWithZone(NSSortDescriptor);
  v18 = sub_AB9260();

  v19 = [v17 initWithKey:v18 ascending:1];

  *(v16 + 32) = v19;
  sub_13C80(0, &unk_DFDE50, NSSortDescriptor_ptr);
  v20 = sub_AB9740().super.isa;

  [v4 setItemSortDescriptors:v20];

  v21 = [v1 traitCollection];
  UITraitCollection.configure<A, B>(libraryRequest:)(v4);

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24[4] = sub_F2B00;
  v24[5] = v22;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 1107296256;
  v24[2] = sub_151E0;
  v24[3] = &block_descriptor_31;
  v23 = _Block_copy(v24);

  [v4 performWithResponseHandler:v23];
  _Block_release(v23);
}

double sub_F0E68(void *a1, uint64_t a2, uint64_t a3)
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a1;
  v6 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9D320, v5);

  return result;
}

void sub_F0F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  if (sub_AB92A0() == a2 && v10 == a3)
  {
  }

  else
  {
    v12 = sub_ABB3C0();

    if ((v12 & 1) == 0)
    {
      if (sub_AB92A0() == a2 && v13 == a3)
      {
      }

      else
      {
        v15 = sub_ABB3C0();

        if ((v15 & 1) == 0)
        {

          sub_3DE1D8(a1, a4);
          return;
        }
      }

      v60 = sub_13C80(0, &qword_DEF620, UICollectionReusableView_ptr);
      UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(v60, a2, a3, a4, 0x72617065732D6F6ELL, 0xED000073726F7461, v60);
      return;
    }
  }

  v16 = type metadata accessor for AccessoryReusableView(0);
  v17 = static UICollectionReusableView.reuseIdentifier.getter();
  v19 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(v16, a2, a3, a4, v17, v18, v16);

  v20 = *(v5 + qword_DEEFF0);
  if (!v20)
  {
    return;
  }

  v21 = *(v20 + OBJC_IVAR____TtC11MusicJSCore38JSLibraryCollectionComponentController_LibraryCollectionViewModel);
  v22 = OBJC_IVAR____TtC11MusicJSCore28JSLibraryCollectionViewModel_relatedContentLink;
  swift_beginAccess();
  v23 = *(v21 + v22);
  if (!v23)
  {
    return;
  }

  v24 = *(v5 + direct field offset for BrowseCollectionViewController.textDrawingCache);
  v25 = qword_DF4040;
  swift_beginAccess();
  *&v19[v25] = v24;
  swift_retain_n();
  v26 = v19;
  v61 = v23;

  v27 = qword_DF4010;
  v28 = *&v26[qword_DF4010];
  ObjectType = swift_getObjectType();
  v30 = swift_conformsToProtocol2();
  if (!v30)
  {
    __break(1u);
    goto LABEL_28;
  }

  v31 = v30;
  v32 = *(v30 + 16);
  v33 = v28;
  v32(v24, ObjectType, v31);

  sub_AB91E0();
  sub_AB3550();
  v34 = sub_AB9320();
  v36 = v35;
  v37 = *&v26[v27];
  v38 = &v37[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_title];
  *v38 = v34;
  v38[1] = v35;
  v39 = v37;

  v40 = &v39[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textComponents];
  swift_beginAccess();
  v41 = *(v40 + 1);
  swift_beginAccess();
  *(v41 + 112) = v34;
  *(v41 + 120) = v36;

  sub_2EB704();

  v42 = objc_opt_self();
  v43 = sub_AB9260();
  v44 = [v42 kitImageNamed:v43];

  if (!v44)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v45 = [v44 imageWithRenderingMode:2];

  v46 = [v45 imageFlippedForRightToLeftLayoutDirection];
  v47 = *&v26[v27];
  v48 = *&v47[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_accessoryImageView];
  v49 = v47;
  v50 = v46;
  [v48 setImage:v50];
  [v49 setNeedsLayout];

  v51 = v26[qword_DF4028];
  v26[qword_DF4028] = 0;
  if (v51 == 1)
  {
    [*&v26[qword_DF4070] setHidden:0];
  }

  v52 = v26[qword_DF4020];
  v26[qword_DF4020] = 1;
  if ((v52 & 1) == 0)
  {
    v53 = *&v26[qword_DF4068];
    [v53 setHidden:1];
  }

  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = swift_allocObject();
  *(v55 + 2) = v54;
  *(v55 + 3) = v26;
  *(v55 + 4) = v61;
  v56 = &v26[qword_DF4018];
  v57 = *&v26[qword_DF4018];
  v58 = *&v26[qword_DF4018 + 8];
  *v56 = sub_F2AF4;
  v56[1] = v55;
  v59 = v26;
  sub_17654(v57, v58);
}

void sub_F1558(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_AB3430();
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin();
  v58 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB3820();
  v64 = *(v8 - 8);
  __chkstk_darwin();
  v57 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0, &unk_AF8B30);
  __chkstk_darwin();
  v13 = &v56 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v56 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v19 = &v56 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v63 = a4;
  v21 = Strong;
  [a3 bounds];
  v80[0] = a3;
  v80[1] = v22;
  v80[2] = v23;
  v80[3] = v24;
  v80[4] = v25;
  v81 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v80, 15, v72);
  v76[0] = v72[0];
  v76[1] = v72[1];
  v77 = v73;
  v78 = v74;
  v79 = v75;
  v26 = a3;
  v62 = v21;
  PresentationSource.init(viewController:position:)(v21, v76, v71);
  v61 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v27 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v69, 0, sizeof(v69));
  v70 = 0;
  (*(*(v27 - 8) + 56))(v19, 1, 1, v27);
  sub_15F84(v69, &v66, &unk_DE8E30, "\b]\r");
  if (*(&v67 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50, &qword_AF8060);
    v28 = _s30CollectionViewSelectionHandlerVMa(0);
    v29 = swift_dynamicCast();
    v30 = *(v28 - 8);
    (*(v30 + 56))(v13, v29 ^ 1u, 1, v28);
    v31 = (*(v30 + 48))(v13, 1, v28);
    v32 = v64;
    if (v31 != 1)
    {
      (*(v64 + 16))(v17, &v13[*(v28 + 20)], v8);
      sub_2D6C0(v13, _s30CollectionViewSelectionHandlerVMa);
      v33 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    sub_12E1C(&v66, &unk_DE8E30, "\b]\r");
    v34 = _s30CollectionViewSelectionHandlerVMa(0);
    (*(*(v34 - 8) + 56))(v13, 1, 1, v34);
    v32 = v64;
  }

  sub_12E1C(v13, &qword_E037A0, &unk_AF8B30);
  v33 = 1;
LABEL_7:
  (*(v32 + 56))(v17, v33, 1, v8);
  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35 && (v36 = v35, sub_12B2FC(), v38 = v37, v40 = v39, v36, v38))
  {
    ObjectType = swift_getObjectType();
    (*(v40 + 8))(ObjectType, v40);
    v43 = v42;
    swift_unknownObjectRelease();
    sub_15F84(v17, v15, &unk_DE8E20, &qword_AF7990);
    if ((*(v32 + 48))(v15, 1, v8) == 1)
    {
      sub_12E1C(v15, &unk_DE8E20, &qword_AF7990);
      v66 = 0u;
      v67 = 0u;
      v68 = 0;
    }

    else
    {
      (*(v32 + 32))(v57, v15, v8);
      sub_2D668();
      sub_ABAD10();
    }

    v45 = swift_getObjectType();
    v46 = v58;
    sub_3B8F68(v45);
    v44 = sub_21CCAC(1, v46, &v66, v45, v43);
    (*(v59 + 8))(v46, v60);
    sub_12E1C(&v66, &qword_DF2BD0, &unk_AFDC00);
    sub_12E1C(v17, &unk_DE8E20, &qword_AF7990);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v17, &unk_DE8E20, &qword_AF7990);
    v44 = 0;
  }

  v47 = swift_unknownObjectWeakLoadStrong();
  if (v47)
  {
    v48 = v47;
    v49 = v19;
    sub_12AFE8();
    v51 = v50;
  }

  else
  {
    v49 = v19;
    v51 = 0;
  }

  sub_15F28(v71, &v66);
  sub_15F84(v69, (v11 + 104), &unk_DE8E30, "\b]\r");
  v52 = v65;
  sub_15F84(v49, &v11[*(v65 + 28)], &unk_DEA510, "\b]\r");
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *(v11 + 8) = 1;
  *(v11 + 9) = 0;
  *(v11 + 10) = 0;
  *(v11 + 11) = 0;
  sub_2D594(&v66, v11);
  *(v11 + 12) = 0;
  v53 = *v61;
  *(&v67 + 1) = v52;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v66);
  sub_2D604(v11, boxed_opaque_existential_0);
  v55 = v53;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v63, 0, v44, v51, &v66);

  sub_12E1C(v49, &unk_DEA510, "\b]\r");
  sub_12E1C(v69, &unk_DE8E30, "\b]\r");
  sub_1611C(v71);
  sub_2D6C0(v11, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v66, &unk_DE8E40, &unk_AF8050);
}

id sub_F1D94(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB92A0();
  v15 = v14;
  sub_AB3790();
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a1;
  sub_F0F0C(v16, v13, v15, v12);
  v21 = v20;

  (*(v10 + 8))(v12, v9);

  return v21;
}

double sub_F1F00(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_F2B60(v6);

  return v9;
}

void sub_F1F68(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_3B41F4(v11, v10);
  isa = sub_AB3770().super.isa;
  [v11 deselectItemAtIndexPath:isa animated:1];
  (*(v8 + 8))(v10, v7);
}

void sub_F20A4(uint64_t a1, void *a2, uint64_t a3)
{
  type metadata accessor for SongCell(0);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = a2;
    v9 = [v7 tableViewCell];
    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = v9;
    [v9 setSeparatorStyle:(UICollectionView.isLast(indexPath:)(a3) & 1) == 0];
  }

  sub_3B38B0(a1, a2, a3);
}

void sub_F217C(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  type metadata accessor for SongCell(0);
  v13 = swift_dynamicCastClass();
  v14 = a4;
  v15 = v14;
  if (!v13)
  {
    v20 = a3;
    v21 = a5;
    v22 = a1;
    goto LABEL_5;
  }

  v24 = v14;
  a3;
  v16 = a5;
  v17 = a1;
  v18 = [v13 tableViewCell];
  if (v18)
  {
    v19 = v18;
    [v18 setSeparatorStyle:(UICollectionView.isLast(indexPath:)(v12) & 1) == 0];

LABEL_5:
    sub_3B38B0(a3, v15, v12);

    (*(v10 + 8))(v12, v9);
    return;
  }

  __break(1u);
}

void *sub_F2330()
{
  v1 = qword_DEF000;
  if (*&v0[qword_DEF000])
  {
    v2 = *&v0[qword_DEF000];
LABEL_5:

    return v2;
  }

  v3 = v0;
  result = [v0 view];
  if (result)
  {
    v5 = result;
    type metadata accessor for LibraryNoContentStateController();
    swift_allocObject();
    v2 = sub_3E2914(v5);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = v2[6];
    v8 = v2[7];
    v2[6] = sub_9D2B0;
    v2[7] = v6;

    sub_17654(v7, v8);

    *&v3[v1] = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double sub_F247C()
{

  return result;
}

id sub_F24CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeasonsViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_F2504(uint64_t a1)
{

  return result;
}

uint64_t type metadata accessor for SeasonsViewController(uint64_t a1)
{
  result = qword_DEF030;
  if (!qword_DEF030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_F2614(uint64_t a1, id *a2)
{
  v3 = [*a2 artworkCatalog];
  v4 = *(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
  *(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v3;
  v5 = v3;

  sub_74EA4(v3);
}

void sub_F268C(void **a1)
{
  v2 = *a1;
  v3 = *v1;
  MPModelTVSeason.title.getter();
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  type metadata accessor for EpisodesViewController(0);
  v8 = sub_1DF23C(v2, v6, v7);

  sub_728FC(v8, v3, 1, v3);
}

id sub_F2734()
{
  [v0 loadViewIfNeeded];
  result = *&v0[qword_DFE2F8];
  if (result)
  {

    return [result reloadData];
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_F2784(uint64_t a1, void *a2)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB9230();
  __chkstk_darwin();
  v4 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle);
  *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle) = -24575;
  sub_143510(v4);
  sub_AB9220();
  v16._countAndFlagsBits = 0x206E6F73616553;
  v16._object = 0xE700000000000000;
  sub_AB9210(v16);
  [a2 number];
  sub_AB91F0();
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_AB9210(v17);
  sub_AB9240();
  sub_AB3550();
  v5 = sub_AB9320();
  v6 = (a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_title);
  v7 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_title);
  v8 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_title + 8);
  *v6 = v5;
  v6[1] = v9;
  sub_142858(v7, v8);

  sub_AB9220();
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_AB9210(v18);
  [a2 episodesCount];
  sub_AB91F0();
  v19._countAndFlagsBits = 0x65646F7369704520;
  v19._object = 0xEB00000000297328;
  sub_AB9210(v19);
  sub_AB9240();
  sub_AB3550();
  v10 = sub_AB9320();
  v11 = (a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_artistName);
  v12 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_artistName);
  v13 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8);
  *v11 = v10;
  v11[1] = v14;
  sub_142A70(v12, v13);

  return result;
}

uint64_t sub_F2A74()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_F2AAC()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_F2B20()
{

  return swift_deallocObject();
}

double sub_F2B60(void *a1)
{
  v2 = *&v1[qword_DEEFF0];
  v3 = 0.0;
  if (v2)
  {
    v5 = *(v2 + OBJC_IVAR____TtC11MusicJSCore38JSLibraryCollectionComponentController_LibraryCollectionViewModel);
    v6 = OBJC_IVAR____TtC11MusicJSCore28JSLibraryCollectionViewModel_relatedContentLink;
    swift_beginAccess();
    if (*(v5 + v6))
    {
      v7 = [v1 traitCollection];
      [a1 bounds];
      v9 = v8;
      v11 = v10;
      v12 = type metadata accessor for CollectionAccessoryView();
      v13 = swift_conformsToProtocol2();
      if (v13 && v12)
      {
        (*(v13 + 8))(v7, v12, v13, v9, v11);
        v3 = v14;
      }

      else
      {
        v15 = [objc_opt_self() defaultMetrics];
        sub_AB9EF0();
        v3 = v16;
      }
    }
  }

  return v3;
}