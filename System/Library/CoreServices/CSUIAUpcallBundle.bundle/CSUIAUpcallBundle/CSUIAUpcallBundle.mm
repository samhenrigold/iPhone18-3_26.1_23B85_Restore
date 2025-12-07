id CSUIGetIconChangeRemoteAlertInterface(uint64_t a1)
{
  if (qword_19970 != -1)
  {
    sub_D778();
  }

  v2 = qword_19978;

  return v2;
}

void sub_1494(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CSUIIconChangeRemoteAlert];
  v2 = qword_19978;
  qword_19978 = v1;

  v3 = qword_19978;
  v4 = objc_opt_class();

  [v3 setClass:v4 forSelector:"waitForUserAcknowledgementWithCompletion:" argumentIndex:0 ofReply:1];
}

id CSUIGetRemoteAlertRootInterface(uint64_t a1)
{
  if (qword_19980 != -1)
  {
    sub_D78C();
  }

  v2 = qword_19988;

  return v2;
}

void sub_1554(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CSUIRemoteAlertRoot];
  v2 = qword_19988;
  qword_19988 = v1;

  v3 = [qword_19988 setClass:objc_opt_class() forSelector:"presentIconChangeRemoteAlertForIdentity:completion:" argumentIndex:0 ofReply:0];
  v4 = qword_19988;
  v5 = CSUIGetIconChangeRemoteAlertInterface(v3);
  [v4 setInterface:v5 forSelector:"presentIconChangeRemoteAlertForIdentity:completion:" argumentIndex:0 ofReply:1];

  v6 = qword_19988;
  v7 = objc_opt_class();

  [v6 setClass:v7 forSelector:"presentIconChangeRemoteAlertForIdentity:completion:" argumentIndex:1 ofReply:1];
}

id CSUIGetRemoteAlertInvokerInterface(uint64_t a1)
{
  if (qword_19990 != -1)
  {
    sub_D7A0();
  }

  v2 = qword_19998;

  return v2;
}

void sub_1674(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CSUIRemoteAlertInvoker];
  v2 = qword_19998;
  qword_19998 = v1;

  v3 = qword_19998;
  v5 = CSUIGetRemoteAlertRootInterface(v4);
  [v3 setInterface:v5 forSelector:"checkinRemoteAlertRoot:" argumentIndex:0 ofReply:0];
}

void sub_1854(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = upcallBundleLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138412802;
    v9 = v7;
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "CSUIAUpcallBundle: result for icon change alert for %@: %d %@", &v8, 0x1Cu);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_19A0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC17CSUIAUpcallBundle23IconChangeAlertObserver_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A0C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17CSUIAUpcallBundle23IconChangeAlertObserver_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1AAC;
}

void sub_1AAC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1B34()
{
  v1 = sub_1C70(&qword_19388, &qword_ECC0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v11 - v3;
  result = (*(&stru_20.maxprot + (swift_isaMask & *v0)))(v2);
  if (result)
  {
    v7 = result;
    v8 = v6;
    v9 = sub_D8E4();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v7;
    v10[5] = v8;
    sub_1F6C(0, 0, v4, &unk_ECD0, v10);
  }

  return result;
}

uint64_t sub_1C70(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v10 = (*(a5 + 8) + **(a5 + 8));
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_1DDC;

  return v10(ObjectType, a5);
}

uint64_t sub_1DDC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1ED4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_4964;

  return sub_1CB8(v4, v5, v6, v2, v3);
}

uint64_t sub_1F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C70(&qword_19388, &qword_ECC0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_46E8(a3, v25 - v10, &qword_19388, &qword_ECC0);
  v12 = sub_D8E4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_4750(v11, &qword_19388, &qword_ECC0);
  }

  else
  {
    sub_D8D4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_D894();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_D864() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_4750(a3, &qword_19388, &qword_ECC0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_4750(a3, &qword_19388, &qword_ECC0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2400(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C70(&qword_19388, &qword_ECC0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  result = (*(&stru_20.maxprot + (swift_isaMask & *v2)))(v5);
  if (result)
  {
    v10 = result;
    v11 = v9;
    v12 = sub_D8E4();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v10;
    v13[5] = v11;
    v13[6] = a2;
    swift_errorRetain();
    sub_1F6C(0, 0, v7, &unk_ECE0, v13);
  }

  return result;
}

uint64_t sub_2558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  return _swift_task_switch(sub_257C, 0, 0);
}

uint64_t sub_257C()
{
  if (v0[14])
  {
    v1 = v0[14];
  }

  else
  {
    sub_1C70(&qword_19528, &qword_EDA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_ECA0;
    *(inited + 32) = sub_D854();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v3;
    *(inited + 48) = 0xD000000000000020;
    *(inited + 56) = 0x800000000000F600;
    v4 = NSPOSIXErrorDomain;
    sub_41C8(inited);
    swift_setDeallocating();
    sub_4750(inited + 32, &qword_19530, &qword_EDB0);
    v5 = objc_allocWithZone(NSError);
    isa = sub_D834().super.isa;

    v1 = [v5 initWithDomain:v4 code:54 userInfo:isa];
  }

  v0[15] = v1;
  v13 = v0[13];
  ObjectType = swift_getObjectType();
  v8 = *(v13 + 16);
  swift_errorRetain();
  v12 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_27E0;
  v10 = v0[13];

  return v12(v1, ObjectType, v10);
}

uint64_t sub_27E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_28F0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_4964;

  return sub_2558(v5, v6, v7, v2, v3, v4);
}

id IconChangeAlertManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2B8C()
{
  *&v0[OBJC_IVAR____TtC17CSUIAUpcallBundle23IconChangeAlertObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconChangeAlertObserver();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_2C54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconChangeAlertObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_2CC0()
{
  v0 = objc_allocWithZone(type metadata accessor for IconChangeAlertObserver());

  return [v0 init];
}

void *sub_2D04()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_2D48(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t (*sub_2E8C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[2] = v3;
  *a1 = (*(&stru_20.maxprot + (swift_isaMask & *v3)))();
  a1[1] = v4;
  return sub_2F08;
}

uint64_t sub_2F08(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(&stru_20.nsects + (swift_isaMask & *a1[2]));
  if ((a2 & 1) == 0)
  {
    return v3(*a1, v2);
  }

  v4 = swift_unknownObjectRetain();
  v3(v4, v2);

  return swift_unknownObjectRelease();
}

void sub_2FBC()
{
  v1 = (*(*v0 + 96))();
  [v1 invalidate];
}

id sub_3020(void *a1, void *a2)
{
  v3 = v2;
  v36 = a1;
  v5 = sub_D7D4();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_D844();
  v9 = [objc_opt_self() identityForApplicationJobLabel:v8];

  v10 = objc_allocWithZone(SBSRemoteAlertDefinition);
  v11 = v9;
  v12 = sub_D844();
  v13 = [v10 initWithSceneProvidingProcess:v11 configurationIdentifier:v12];
  v37 = v11;

  v14 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  sub_1C70(&qword_19390, &qword_ECE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_ECA0;
  strcpy(v40, "identityString");
  HIBYTE(v40[1]) = -18;
  sub_D9C4();
  v16 = [a2 identityString];
  v17 = sub_D854();
  v19 = v18;

  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v17;
  *(inited + 80) = v19;
  sub_42F8(inited);
  swift_setDeallocating();
  sub_4750(inited + 32, &qword_19398, &qword_ECF0);
  isa = sub_D834().super.isa;

  [v14 setUserInfo:isa];

  [v14 setXpcEndpoint:v36];
  v21 = objc_opt_self();
  v36 = v13;
  v22 = [v21 newHandleWithDefinition:v13 configurationContext:v14];
  v23 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
  [v22 registerObserver:*(v3 + 16)];
  [v22 activateWithContext:v23];
  v24 = sub_C86C();
  (*(v38 + 16))(v7, v24, v39);

  v35 = v7;
  v25 = sub_D7C4();
  v26 = sub_D924();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v40[0] = v28;
    *v27 = 136315138;
    v29 = sub_DA74();
    v31 = sub_39E4(v29, v30, v40);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_0, v25, v26, "%s Activated remote alert", v27, 0xCu);
    sub_4434(v28);

    v32 = v36;
  }

  else
  {

    v32 = v37;
  }

  (*(v38 + 8))(v35, v39);
  return v22;
}

uint64_t sub_34BC()
{
  v1 = (*(*v0 + 152))();
  v2 = *(*v0 + 104);

  return v2(v1);
}

uint64_t sub_354C()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_358C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(type metadata accessor for IconChangeAlertObserver()) init];
  *(v0 + 24) = 0;
  return v0;
}

uint64_t sub_35D8()
{
  *(v0 + 16) = [objc_allocWithZone(type metadata accessor for IconChangeAlertObserver()) init];
  *(v0 + 24) = 0;
  return v0;
}

uint64_t (*sub_3690(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 136))();
  return sub_3724;
}

void sub_3724(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_37F4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_38EC;

  return v6(a1);
}

uint64_t sub_38EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_39E4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_3AB0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_45C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_4434(v11);
  return v7;
}

unint64_t sub_3AB0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_3BBC(a5, a6);
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
    result = sub_DA04();
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

char *sub_3BBC(uint64_t a1, unint64_t a2)
{
  v3 = sub_3C08(a1, a2);
  sub_3D38(&off_146F8);
  return v3;
}

char *sub_3C08(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_3E24(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_DA04();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_D884();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_3E24(v10, 0);
        result = sub_D9D4();
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

uint64_t sub_3D38(uint64_t result)
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

  result = sub_3E98(result, v11, 1, v3);
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

void *sub_3E24(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1C70(&qword_19930, &qword_ED98);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_3E98(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C70(&qword_19930, &qword_ED98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_3F8C(uint64_t a1, uint64_t a2)
{
  sub_DA54();
  sub_D874();
  v4 = sub_DA64();

  return sub_4048(a1, a2, v4);
}

unint64_t sub_4004(uint64_t a1)
{
  v2 = v1;
  v4 = sub_D9A4(*(v2 + 40));

  return sub_4100(a1, v4);
}

unint64_t sub_4048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_DA34())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_4100(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_4638(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_D9B4();
      sub_4694(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_41C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C70(&qword_19538, &qword_EDB8);
    v3 = sub_DA24();
    v4 = a1 + 32;

    while (1)
    {
      sub_46E8(v4, &v13, &qword_19530, &qword_EDB0);
      v5 = v13;
      v6 = v14;
      result = sub_3F8C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_4628(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_42F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C70(&qword_19520, &qword_EDA0);
    v3 = sub_DA24();
    v4 = a1 + 32;

    while (1)
    {
      sub_46E8(v4, v13, &qword_19398, &qword_ECF0);
      result = sub_4004(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_4628(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_4434(void *a1)
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

uint64_t sub_44A8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_44F0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_4530()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DDC;

  return sub_1CB8(v4, v5, v6, v2, v3);
}

uint64_t sub_45C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_4628(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_46E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1C70(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_4750(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1C70(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_47B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_47E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_4964;

  return sub_37F4(a1, v4);
}

uint64_t sub_48A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DDC;

  return sub_37F4(a1, v4);
}

uint64_t sub_4968()
{
  v0 = sub_D944();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_D934();
  __chkstk_darwin(v4);
  v5 = sub_D804();
  __chkstk_darwin(v5 - 8);
  sub_C574();
  sub_D7F4();
  v7[1] = &_swiftEmptyArrayStorage;
  sub_C5C0(&qword_19940, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1C70(&qword_19948, qword_F028);
  sub_C608();
  sub_D994();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = sub_D954();
  qword_199A8 = result;
  return result;
}

uint64_t sub_4BE8(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_4C48(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17CSUIAUpcallBundle39IconChangeAlertOperationXPCInvokerProxy_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_4CE0;
}

void sub_4CE0(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

void *sub_4D60()
{
  v1 = OBJC_IVAR____TtC17CSUIAUpcallBundle39IconChangeAlertOperationXPCInvokerProxy_serviceConnection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_4DAC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17CSUIAUpcallBundle39IconChangeAlertOperationXPCInvokerProxy_serviceConnection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_4EE4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_4F88(uint64_t a1)
{
  v34[1] = a1;
  v2 = sub_D7D4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v34 - v7;
  v9 = sub_1C70(&qword_19388, &qword_ECC0);
  __chkstk_darwin(v9 - 8);
  v11 = v34 - v10;
  v12 = sub_D814();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_199A0 != -1)
  {
    swift_once();
  }

  v16 = qword_199A8;
  *v15 = qword_199A8;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  LOBYTE(v16) = sub_D824();
  result = (*(v13 + 8))(v15, v12);
  if (v16)
  {
    if ((*(&stru_68.offset + (swift_isaMask & *v1)))(result))
    {
      swift_unknownObjectRelease();
      v19 = sub_C86C();
      (*(v3 + 16))(v6, v19, v2);
      v20 = sub_D7C4();
      v21 = sub_D914();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_0, v20, v21, "service tried to checkin twice", v22, 2u);
      }

      return (*(v3 + 8))(v6, v2);
    }

    else
    {
      v23 = (*&stru_68.sectname[swift_isaMask & *v1])();
      if (v23)
      {
        v24 = v23;
        v25 = *(&stru_68.reloff + (swift_isaMask & *v1));
        v26 = swift_unknownObjectRetain();
        v25(v26);
        v27 = sub_D8E4();
        (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
        v28 = swift_allocObject();
        v28[2] = 0;
        v28[3] = 0;
        v28[4] = v24;
        v28[5] = v1;
        v29 = v1;
        sub_1F6C(0, 0, v11, &unk_EE60, v28);
      }

      else
      {
        v30 = sub_C86C();
        (*(v3 + 16))(v8, v30, v2);
        v31 = sub_D7C4();
        v32 = sub_D914();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_0, v31, v32, "No delegate set when remote alert checked in", v33, 2u);
        }

        return (*(v3 + 8))(v8, v2);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_5444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_5464, 0, 0);
}

uint64_t sub_5464()
{
  v1 = (*(&stru_68.offset + (swift_isaMask & **(v0 + 24))))();
  *(v0 + 32) = v1;
  if (v1)
  {
    v2 = *(v0 + 16);
    v4 = *v2 + 256;
    *(v0 + 40) = *v4;
    *(v0 + 48) = v4 & 0xFFFFFFFFFFFFLL | 0xF660000000000000;
    v1 = sub_552C;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_552C()
{
  (*(v0 + 40))(*(v0 + 32));
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_5608()
{
  v1 = (*&stru_68.segname[(swift_isaMask & *v0) + 8])();
  [v1 invalidate];

  v2 = *&stru_68.segname[(swift_isaMask & *v0) + 16];

  return v2(0);
}

id sub_56B0()
{
  swift_weakInit();
  *&v0[OBJC_IVAR____TtC17CSUIAUpcallBundle39IconChangeAlertOperationXPCInvokerProxy_serviceConnection] = 0;
  *&v0[OBJC_IVAR____TtC17CSUIAUpcallBundle39IconChangeAlertOperationXPCInvokerProxy_remoteAlertRoot] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconChangeAlertOperationXPCInvokerProxy();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_57F0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for IconChangeAlertiOSPlatformExpert();
  result = sub_358C();
  *a1 = result;
  return result;
}

uint64_t sub_582C@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_platformExpert;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

uint64_t sub_5884(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_platformExpert;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

id sub_593C(uint64_t a1)
{
  v1 = objc_allocWithZone(type metadata accessor for IconChangeAlertOperationXPCInvokerProxy());

  return [v1 init];
}

void *sub_5980()
{
  v1 = OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_listener;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_59CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_listener;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_5AE0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_5B94()
{
  type metadata accessor for IconChangeAlertOperation.Status(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_5BD8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_status;
  swift_beginAccess();
  return sub_B8A0(v1 + v3, a1);
}

uint64_t sub_5C30(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_status;
  swift_beginAccess();
  sub_B904(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_5CF0(uint64_t a1)
{
  *(v1 + 16) = a1;
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_5DB4;

  return sub_B968(a1);
}

uint64_t sub_5DB4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_5EC8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_C74C;

  return sub_B968(a1);
}

uint64_t sub_5F78()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_invokerSelfProxy;
  v3 = *(v0 + OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_invokerSelfProxy);
  v4 = *&stru_B8.segname[(swift_isaMask & *v3) - 8];
  v5 = v3;
  v4();

  swift_unknownObjectRelease();
  sub_BBA4(v1 + OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_status);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_6050()
{
  sub_5F78();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_607C()
{
  (*(*v0 + 136))(&v2);
  type metadata accessor for IconChangeAlertiOSPlatformExpert();
  sub_376C();
}

uint64_t sub_6114(uint64_t a1)
{
  v2 = v1;
  v83 = a1;
  v3 = sub_D7D4();
  v86 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v80 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v78 = &v76 - v7;
  __chkstk_darwin(v6);
  v87 = &v76 - v8;
  v9 = type metadata accessor for IconChangeAlertOperation.Status(0);
  v10 = __chkstk_darwin(v9);
  v82 = (&v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v10);
  v14 = &v76 - v13;
  __chkstk_darwin(v12);
  v16 = &v76 - v15;
  v17 = sub_1C70(&qword_195C0, &qword_EE80);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v81 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v79 = &v76 - v22;
  __chkstk_darwin(v21);
  v24 = &v76 - v23;
  v25 = sub_1C70(&qword_195C8, &qword_EE88);
  v26 = __chkstk_darwin(v25 - 8);
  v88 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v89 = &v76 - v28;
  v90 = v18;
  v84 = *(v18 + 56);
  v85 = v18 + 56;
  v29 = v84();
  v30 = *(*v2 + 208);
  v30(v29);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v80 = v9;
    v79 = *(v90 + 32);
    (v79)(v24, v16, v17);
    v31 = sub_C86C();
    v32 = v86;
    (*(v86 + 16))(v87, v31, v3);

    v33 = sub_D7C4();
    v34 = sub_D904();

    v35 = v17;
    if (os_log_type_enabled(v33, v34))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v77 = v24;
      v78 = v3;
      v38 = v37;
      v91 = v37;
      *v36 = 136315138;
      v39 = sub_DA74();
      v41 = v2;
      v42 = v35;
      v43 = sub_39E4(v39, v40, &v91);

      *(v36 + 4) = v43;
      v35 = v42;
      v2 = v41;
      _os_log_impl(&dword_0, v33, v34, "%s alert invalidated while waiting for result", v36, 0xCu);
      sub_4434(v38);
      v24 = v77;

      (*(v32 + 8))(v87, v78);
    }

    else
    {

      (*(v32 + 8))(v87, v3);
    }

    v56 = v89;
    sub_4750(v89, &qword_195C8, &qword_EE88);
    v57 = v88;
    (v79)(v56, v24, v35);
    (v84)(v56, 0, 1, v35);
  }

  else
  {
    v44 = v86;
    v87 = v17;
    v45 = sub_BBA4(v16);
    v30(v45);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_BBA4(v14);
      v46 = sub_C86C();
      v47 = v80;
      (*(v44 + 16))(v80, v46, v3);

      v48 = sub_D7C4();
      v49 = sub_D8F4();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v78 = v3;
        v51 = v50;
        v52 = swift_slowAlloc();
        v91 = v52;
        *v51 = 136315138;
        v53 = sub_DA74();
        v55 = sub_39E4(v53, v54, &v91);

        *(v51 + 4) = v55;
        _os_log_impl(&dword_0, v48, v49, "%s alert invalidated while not waiting for result or connection", v51, 0xCu);
        sub_4434(v52);

        (*(v44 + 8))(v47, v78);
      }

      else
      {

        (*(v44 + 8))(v47, v3);
      }

      v35 = v87;
      v57 = v88;
      v56 = v89;
    }

    else
    {
      v80 = v9;
      v35 = v87;
      v77 = *(v90 + 32);
      (v77)(v79, v14, v87);
      v58 = sub_C86C();
      v59 = v78;
      (*(v44 + 16))(v78, v58, v3);

      v60 = sub_D7C4();
      v61 = sub_D904();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v91 = v63;
        *v62 = 136315138;
        v64 = sub_DA74();
        v65 = v3;
        v67 = sub_39E4(v64, v66, &v91);

        *(v62 + 4) = v67;
        _os_log_impl(&dword_0, v60, v61, "%s alert invalidated while waiting for connection", v62, 0xCu);
        sub_4434(v63);
        v35 = v87;

        (*(v44 + 8))(v78, v65);
      }

      else
      {

        (*(v44 + 8))(v59, v3);
      }

      v68 = v89;
      sub_4750(v89, &qword_195C8, &qword_EE88);
      v57 = v88;
      (v77)(v68, v79, v35);
      (v84)(v68, 0, 1, v35);
      v56 = v68;
    }
  }

  sub_46E8(v56, v57, &qword_195C8, &qword_EE88);
  if ((*(v90 + 48))(v57, 1, v35) == 1)
  {
    sub_4750(v56, &qword_195C8, &qword_EE88);
    v69 = v57;
  }

  else
  {
    v70 = v90;
    v71 = v81;
    (*(v90 + 32))(v81, v57, v35);
    v72 = v82;
    v73 = v83;
    *v82 = v83;
    swift_storeEnumTagMultiPayload();
    v74 = *(*v2 + 216);
    swift_errorRetain();
    v74(v72);
    v91 = v73;
    swift_errorRetain();
    sub_D8A4();
    (*(v70 + 8))(v71, v35);
    v69 = v56;
  }

  return sub_4750(v69, &qword_195C8, &qword_EE88);
}

uint64_t sub_6B24(uint64_t a1)
{
  v2 = v1;
  v34[1] = a1;
  v3 = sub_D7D4();
  v35 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v34 - v7;
  v9 = type metadata accessor for IconChangeAlertOperation.Status(0);
  __chkstk_darwin(v9);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C70(&qword_195C0, &qword_EE80);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v34 - v15;
  (*(*v1 + 208))(v14);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_BBA4(v11);
    v17 = sub_C86C();
    v18 = v35;
    (*(v35 + 16))(v6, v17, v3);

    v19 = sub_D7C4();
    v20 = sub_D914();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36 = v22;
      *v21 = 136315138;
      v23 = sub_DA74();
      v25 = sub_39E4(v23, v24, &v36);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_0, v19, v20, "%s Somehow got service connection when we weren't waiting for it?", v21, 0xCu);
      sub_4434(v22);
    }

    return (*(v18 + 8))(v6, v3);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v27 = sub_C86C();
    v28 = v35;
    (*(v35 + 16))(v8, v27, v3);
    v29 = sub_D7C4();
    v30 = sub_D924();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "remote alert checked in", v31, 2u);
    }

    (*(v28 + 8))(v8, v3);
    v32 = *(*v2 + 192);
    v33 = swift_unknownObjectRetain();
    v32(v33);
    sub_D8B4();
    return (*(v13 + 8))(v16, v12);
  }
}

id sub_6F7C()
{
  v1 = [objc_opt_self() anonymousListener];
  v2 = (*(*v0 + 168))(v1);
  v3 = *(*v0 + 160);
  result = (v3)(v2);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  [result setDelegate:*(v0 + OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_invokerSelfProxy)];

  result = v3();
  if (!result)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  if (qword_199A0 != -1)
  {
    swift_once();
  }

  [v6 _setQueue:qword_199A8];

  result = v3();
  if (!result)
  {
    goto LABEL_10;
  }

  v7 = result;
  [result resume];

  result = v3();
  if (result)
  {
    v8 = result;
    v9 = [result endpoint];

    return v9;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_70F4()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for IconChangeAlertOperation.Status(0);
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_7188, v0, 0);
}

uint64_t sub_7188()
{
  sub_C5C0(&qword_195D0, type metadata accessor for IconChangeAlertOperation, &unk_EEC8);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_72A0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_72A0()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_746C;
  }

  else
  {
    v4 = sub_73CC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_73CC()
{
  v1 = v0[4];
  v2 = v0[2];
  swift_storeEnumTagMultiPayload();
  (*(*v2 + 216))(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_746C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_74D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconChangeAlertOperation.Status(0);
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_1C70(&qword_195C0, &qword_EE80);
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  swift_storeEnumTagMultiPayload();
  return (*(*a2 + 216))(v6);
}

uint64_t sub_75FC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_761C, 0, 0);
}

uint64_t sub_761C()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_770C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_770C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_C770;
  }

  else
  {

    v2 = sub_C754;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_7828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v20 = a3;
  v4 = sub_1C70(&qword_195C0, &qword_EE80);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v28 = &OBJC_PROTOCOL___NSXPCProxyCreating;
  v8 = swift_dynamicCastObjCProtocolUnconditional();
  v18 = *(v5 + 16);
  v18(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v17 = *(v5 + 32);
  v17(v10 + v9, v7, v4);
  v26 = sub_C76C;
  v27 = v10;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_7B4C;
  v25 = &unk_149E8;
  v11 = _Block_copy(&aBlock);

  v12 = [v8 remoteObjectProxyWithErrorHandler:v11];
  _Block_release(v11);
  sub_D984();
  swift_unknownObjectRelease();
  sub_1C70(&qword_19920, &unk_F000);
  swift_dynamicCast();
  v13 = v21;
  v18(v7, v19, v4);
  v14 = swift_allocObject();
  v17(v14 + v9, v7, v4);
  v26 = sub_C2B8;
  v27 = v14;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_7FA4;
  v25 = &unk_14A38;
  v15 = _Block_copy(&aBlock);

  [v13 presentIconChangeRemoteAlertForIdentity:v20 completion:v15];
  _Block_release(v15);
  return swift_unknownObjectRelease();
}

void sub_7B4C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_7BB4(uint64_t a1, void **a2, uint64_t a3)
{
  v6 = sub_1C70(&qword_195C0, &qword_EE80);
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = &v21 - v9;
  if (a1)
  {
    v33 = &OBJC_PROTOCOL___NSXPCProxyCreating;
    v11 = swift_dynamicCastObjCProtocolUnconditional();
    v25 = *(v7 + 16);
    v25(v10, a3, v6);
    v21 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v12 = v21;
    v13 = swift_allocObject();
    v22 = a3;
    v14 = v13;
    v24 = *(v7 + 32);
    v24(v13 + v12, v10, v6);
    v31 = sub_C344;
    v32 = v14;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v23 = &v29;
    v29 = sub_7B4C;
    v30 = &unk_14A88;
    v15 = _Block_copy(&aBlock);
    swift_unknownObjectRetain_n();

    v16 = [v11 remoteObjectProxyWithErrorHandler:v15];
    swift_unknownObjectRelease();
    _Block_release(v15);
    sub_D984();
    swift_unknownObjectRelease();
    sub_1C70(&qword_19928, qword_F010);
    swift_dynamicCast();
    v17 = v26;
    v25(v10, v22, v6);
    v18 = v21;
    v19 = swift_allocObject();
    v24(v19 + v18, v10, v6);
    v31 = sub_C488;
    v32 = v19;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_7F38;
    v30 = &unk_14AD8;
    v20 = _Block_copy(&aBlock);

    [v17 waitForUserAcknowledgementWithCompletion:v20];
    swift_unknownObjectRelease();
    _Block_release(v20);
    return swift_unknownObjectRelease();
  }

  else if (a2)
  {
    aBlock = a2;
    swift_errorRetain();
    return sub_D8A4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_7F38(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_7FA4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_8024(void *a1)
{
  v2 = v1;
  v47 = type metadata accessor for IconChangeAlertOperation.Status(0);
  v4 = __chkstk_darwin(v47);
  v45 = (&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v7 = &v39 - v6;
  v46 = sub_1C70(&qword_195C0, &qword_EE80);
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v39 - v8;
  v9 = sub_D7D4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v39 - v14;
  v16 = sub_C86C();
  v41 = *(v10 + 16);
  v42 = v16;
  v41(v15);
  v17 = sub_D7C4();
  v18 = sub_D924();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v40 = v10;
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "handle present and wait error", v19, 2u);
    v10 = v40;
  }

  v20 = *(v10 + 8);
  v21 = v20(v15, v9);
  (*(*v2 + 208))(v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v43;
    v22 = v44;
    v24 = v46;
    (*(v44 + 32))(v43, v7, v46);
    v25 = v45;
    *v45 = a1;
    swift_storeEnumTagMultiPayload();
    v26 = *(*v2 + 216);
    swift_errorRetain();
    v26(v25);
    v48 = a1;
    swift_errorRetain();
    sub_D8A4();
    return (*(v22 + 8))(v23, v24);
  }

  else
  {
    sub_BBA4(v7);
    (v41)(v13, v42, v9);

    v28 = sub_D7C4();
    v29 = sub_D924();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v48 = v31;
      *v30 = 136315138;
      v32 = sub_DA74();
      v34 = v13;
      v35 = v9;
      v36 = sub_39E4(v32, v33, &v48);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_0, v28, v29, "%s Got alert error while not waiting for it, serivce may have failed after dismissal", v30, 0xCu);
      sub_4434(v31);

      v37 = v34;
      v38 = v35;
    }

    else
    {

      v37 = v13;
      v38 = v9;
    }

    return v20(v37, v38);
  }
}

uint64_t sub_8504()
{
  v1 = v0;
  v2 = type metadata accessor for IconChangeAlertOperation.Status(0);
  v3 = __chkstk_darwin(v2);
  v43 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v37 - v5;
  v7 = sub_1C70(&qword_195C0, &qword_EE80);
  v41 = *(v7 - 8);
  v42 = v7;
  __chkstk_darwin(v7);
  v40 = &v37 - v8;
  v9 = sub_D7D4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v37 - v14;
  v16 = sub_C86C();
  v38 = *(v10 + 16);
  v39 = v16;
  v38(v15);
  v17 = sub_D7C4();
  v18 = sub_D924();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37 = v10;
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "handle present and wait success", v19, 2u);
    v10 = v37;
  }

  v20 = *(v10 + 8);
  v21 = v20(v15, v9);
  (*(*v1 + 208))(v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v40;
    v22 = v41;
    v24 = v42;
    (*(v41 + 32))(v40, v6, v42);
    v25 = v43;
    swift_storeEnumTagMultiPayload();
    (*(*v1 + 216))(v25);
    sub_D8B4();
    return (*(v22 + 8))(v23, v24);
  }

  else
  {
    sub_BBA4(v6);
    (v38)(v13, v39, v9);

    v27 = sub_D7C4();
    v28 = v9;
    v29 = sub_D924();

    if (os_log_type_enabled(v27, v29))
    {
      v30 = swift_slowAlloc();
      v31 = v13;
      v32 = swift_slowAlloc();
      v44 = v32;
      *v30 = 136315138;
      v33 = sub_DA74();
      v35 = sub_39E4(v33, v34, &v44);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_0, v27, v29, "%s Got alert success while not waiting for it, serivce may have finished after dismissal", v30, 0xCu);
      sub_4434(v32);

      v36 = v31;
    }

    else
    {

      v36 = v13;
    }

    return v20(v36, v28);
  }
}

uint64_t sub_89B8()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return _swift_task_switch(sub_8A00, v0, 0);
}

uint64_t sub_8A00()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_C5C0(&qword_195D0, type metadata accessor for IconChangeAlertOperation, &unk_EEC8);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_8B34;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_8B34()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_746C;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_8C5C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_8C74(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1C70(&qword_19388, &qword_ECC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for IconChangeAlertOperation.Status(0);
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = sub_1C70(&qword_195C0, &qword_EE80);
  (*(*(v12 - 8) + 16))(v11, a1, v12);
  swift_storeEnumTagMultiPayload();
  v13 = (*(*a2 + 216))(v11);
  result = (*(*a2 + 184))(v13);
  if (result)
  {
    v15 = result;
    v16 = a2[14];
    v17 = sub_D8E4();
    (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
    v18 = sub_C5C0(&qword_195D0, type metadata accessor for IconChangeAlertOperation, &unk_EEC8);
    v19 = swift_allocObject();
    v19[2] = a2;
    v19[3] = v18;
    v19[4] = v16;
    v19[5] = v15;
    v19[6] = a2;
    v19[7] = a3;
    swift_retain_n();
    v20 = v16;
    sub_1F6C(0, 0, v8, &unk_EFF8, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_8F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_8F30, 0, 0);
}

uint64_t sub_8F30()
{
  v1 = swift_task_alloc();
  v0[2].i64[1] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[3].i64[0] = v2;
  *v2 = v0;
  v2[1] = sub_9020;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_9020()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_91E0;
  }

  else
  {

    v2 = sub_913C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_9158()
{
  (*(**(v0 + 32) + 288))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_91E0()
{
  v1 = *(v0 + 32);

  return _swift_task_switch(sub_9248, v1, 0);
}

uint64_t sub_9248()
{
  (*(**(v0 + 32) + 280))(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_92E0()
{
  v1[4] = v0;
  v1[5] = type metadata accessor for IconChangeAlertOperation.Status(0);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v2 = sub_D7D4();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_940C, v0, 0);
}

uint64_t sub_940C(uint64_t a1)
{
  v51 = v1;
  v2 = *(v1 + 112);
  v3 = *(v1 + 72);
  v4 = sub_C86C();
  *(v1 + 120) = v4;
  v5 = *(v3 + 16);
  *(v1 + 128) = v5;
  *(v1 + 136) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v47 = v5;
  v48 = v4;
  (v5)(v2);

  v6 = sub_D7C4();
  v7 = sub_D924();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v1 + 112);
  v11 = *(v1 + 64);
  v10 = *(v1 + 72);
  if (v8)
  {
    v45 = *(v1 + 112);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v50 = v13;
    *v12 = 136315138;
    v14 = sub_DA74();
    v16 = sub_39E4(v14, v15, &v50);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_0, v6, v7, "%s begin running", v12, 0xCu);
    sub_4434(v13);

    v17 = *(v10 + 8);
    v18 = v17(v45, v11);
  }

  else
  {

    v17 = *(v10 + 8);
    v18 = v17(v9, v11);
  }

  *(v1 + 144) = v17;
  v19 = *(v1 + 56);
  (*(**(v1 + 32) + 208))(v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_BBA4(v19);
  if (EnumCaseMultiPayload != 3)
  {
    return sub_DA14();
  }

  v43 = *(v1 + 104);
  v44 = *(v1 + 64);
  v46 = v17;
  v21 = *(v1 + 48);
  v22 = *(v1 + 32);
  swift_storeEnumTagMultiPayload();
  v23 = *(*v22 + 216);
  v24 = (*v22 + 216) & 0xFFFFFFFFFFFFLL | 0xD438000000000000;
  *(v1 + 152) = v23;
  *(v1 + 160) = v24;
  v25 = v23(v21);
  v26 = (*(*v22 + 264))(v25);
  *(v1 + 168) = v26;
  v27 = *(*v22 + 136);
  v28 = (*v22 + 136) & 0xFFFFFFFFFFFFLL | 0x6497000000000000;
  *(v1 + 176) = v27;
  *(v1 + 184) = v28;
  v27(&v50);
  *(v1 + 16) = v50;
  v29 = [v26 _endpoint];
  *(v1 + 192) = type metadata accessor for IconChangeAlertiOSPlatformExpert();
  sub_37B0();
  swift_unknownObjectRelease();

  v47(v43, v48, v44);

  v30 = sub_D7C4();
  v31 = sub_D924();

  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v1 + 104);
  v34 = *(v1 + 64);
  if (v32)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v50 = v36;
    *v35 = 136315138;
    v37 = sub_DA74();
    v39 = sub_39E4(v37, v38, &v50);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_0, v30, v31, "%s Activated remote alert", v35, 0xCu);
    sub_4434(v36);
  }

  v46(v33, v34);
  v40 = *(**(v1 + 32) + 272);
  v49 = (v40 + *v40);
  v41 = swift_task_alloc();
  *(v1 + 200) = v41;
  *v41 = v1;
  v41[1] = sub_99FC;

  return v49();
}

uint64_t sub_99FC()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_A334;
  }

  else
  {
    v4 = sub_9B28;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_9B28()
{
  v18 = v0;
  (*(v0 + 128))(*(v0 + 96), *(v0 + 120), *(v0 + 64));

  v1 = sub_D7C4();
  v2 = sub_D924();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 144);
  v5 = *(v0 + 96);
  v6 = *(v0 + 64);
  if (v3)
  {
    v15 = *(v0 + 144);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v9 = sub_DA74();
    v11 = sub_39E4(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v1, v2, "%s got connection from service", v7, 0xCu);
    sub_4434(v8);

    v15(v5, v6);
  }

  else
  {

    v4(v5, v6);
  }

  v12 = *(**(v0 + 32) + 296);
  v16 = (v12 + *v12);
  v13 = swift_task_alloc();
  *(v0 + 216) = v13;
  *v13 = v0;
  v13[1] = sub_9DD0;

  return v16();
}

uint64_t sub_9DD0()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_A3F8;
  }

  else
  {
    v4 = sub_9EFC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_9EFC()
{
  v39 = v0;
  (*(v0 + 128))(*(v0 + 88), *(v0 + 120), *(v0 + 64));

  v1 = sub_D7C4();
  v2 = sub_D924();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 144);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  if (v3)
  {
    v36 = *(v0 + 144);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v38 = v8;
    *v7 = 136315138;
    v9 = sub_DA74();
    v11 = sub_39E4(v9, v10, &v38);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v1, v2, "%s got alert result", v7, 0xCu);
    sub_4434(v8);

    v36(v5, v6);
  }

  else
  {

    v4(v5, v6);
  }

  v12 = *(v0 + 176);
  v13 = *(v0 + 152);
  v35 = *(v0 + 128);
  v34 = *(v0 + 120);
  v14 = *(v0 + 80);
  v15 = *(v0 + 64);
  v16 = *(v0 + 48);
  swift_storeEnumTagMultiPayload();
  v17 = v13(v16);
  v12(&v38, v17);
  *(v0 + 24) = v38;
  sub_376C();

  v35(v14, v34, v15);

  v18 = sub_D7C4();
  v19 = sub_D924();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 144);
  v22 = *(v0 + 80);
  v23 = *(v0 + 64);
  if (v20)
  {
    v37 = *(v0 + 144);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v38 = v25;
    *v24 = 136315138;
    v26 = sub_DA74();
    v28 = sub_39E4(v26, v27, &v38);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_0, v18, v19, "%s invalidated alert", v24, 0xCu);
    sub_4434(v25);

    v37(v22, v23);
  }

  else
  {

    v21(v22, v23);
  }

  v29 = *(v0 + 168);
  v30 = *(v0 + 152);
  v31 = *(v0 + 48);
  swift_storeEnumTagMultiPayload();
  v30(v31);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_A334()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_A3F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_A4E8()
{
  (*(**(v0 + 16) + 240))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_A568(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_A588, v1, 0);
}

uint64_t sub_A588()
{
  (*(**(v0 + 24) + 248))(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

id IconChangeAlertManager.__allocating_init(identity:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC17CSUIAUpcallBundle22IconChangeAlertManager_identity] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id IconChangeAlertManager.init(identity:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC17CSUIAUpcallBundle22IconChangeAlertManager_identity] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IconChangeAlertManager();
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t sub_A720()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC17CSUIAUpcallBundle22IconChangeAlertManager_identity);
  v0[3] = v1;
  type metadata accessor for IconChangeAlertOperation(0);
  swift_allocObject();
  v2 = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_A804;

  return sub_B968(v2);
}

uint64_t sub_A804(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v8 = *v1;
  *(v3 + 40) = a1;

  v7 = (*(*a1 + 304) + **(*a1 + 304));
  v5 = swift_task_alloc();
  *(v3 + 48) = v5;
  *v5 = v8;
  v5[1] = sub_A9EC;

  return v7();
}

uint64_t sub_A9EC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_AB64;
  }

  else
  {
    v2 = sub_AB00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_AB00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_AB64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t IconChangeAlertManager.showAlert(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C70(&qword_19388, &qword_ECC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_D8E4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;
  v10 = v2;

  sub_1F6C(0, 0, v7, &unk_EEC0, v9);
}

uint64_t sub_ACE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v9 = (*(&stru_20.nsects + (swift_isaMask & *a4)) + **(&stru_20.nsects + (swift_isaMask & *a4)));
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_AE10;

  return v9();
}

uint64_t sub_AE10()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_AF90;
  }

  else
  {
    v2 = sub_AF24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_AF24()
{
  (*(v0 + 16))(1, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_AF90()
{
  v1 = v0[5];
  v2 = v0[2];
  swift_errorRetain();
  v2(0, v1);

  v3 = v0[1];

  return v3();
}

void sub_B168(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_D7B4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

id sub_B250(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_B298(void *a1)
{
  v2 = v1;
  v4 = sub_D7D4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = sub_D814();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_199A0 != -1)
  {
    swift_once();
  }

  v15 = qword_199A8;
  *v14 = qword_199A8;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v33 = v15;
  LOBYTE(v15) = sub_D824();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v17 = (*&stru_68.segname[(swift_isaMask & *v2) + 8])(result);
    v18 = v17;
    if (v17)
    {

      v19 = sub_C86C();
      (*(v5 + 16))(v8, v19, v4);
      v20 = sub_D7C4();
      v21 = sub_D904();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_0, v20, v21, "new connection but already have remote alert root (?)", v22, 2u);
      }

      (*(v5 + 8))(v8, v4);
    }

    else
    {
      v23 = sub_C86C();
      (*(v5 + 16))(v10, v23, v4);
      v24 = sub_D7C4();
      v25 = sub_D924();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_0, v24, v25, "Incoming connection to remote alert invoker", v26, 2u);
      }

      (*(v5 + 8))(v10, v4);
      v27 = CSUIGetRemoteAlertInvokerInterface([a1 _setQueue:v33]);
      [a1 setExportedInterface:v27];

      [a1 setExportedObject:v2];
      v28 = *&stru_68.segname[(swift_isaMask & *v2) + 16];
      v29 = a1;
      v28(a1);
      [v29 resume];
      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_C6A4;
      aBlock[5] = v30;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_4EE4;
      aBlock[3] = &unk_14B78;
      v31 = _Block_copy(aBlock);

      [v29 setInvalidationHandler:v31];
      _Block_release(v31);
    }

    return v18 == 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_B77C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_B7C4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_4964;

  return sub_5444(v4, v5, v6, v2, v3);
}

uint64_t sub_B8A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconChangeAlertOperation.Status(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconChangeAlertOperation.Status(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_B968(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return _swift_task_switch(sub_B988, 0, 0);
}

uint64_t sub_B988()
{
  v2 = v0[5];
  v1 = v0[6];
  swift_defaultActor_initialize();
  v3 = OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_platformExpert;
  v0[7] = type metadata accessor for IconChangeAlertiOSPlatformExpert();
  *(v1 + v3) = sub_358C();
  v4 = OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_invokerSelfProxy;
  *(v1 + v4) = [objc_allocWithZone(type metadata accessor for IconChangeAlertOperationXPCInvokerProxy()) init];
  *(v1 + OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_listener) = 0;
  *(v1 + OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_remoteAlertRoot) = 0;
  type metadata accessor for IconChangeAlertOperation.Status(0);
  swift_storeEnumTagMultiPayload();
  *(v1 + 112) = v2;
  v5 = v2;

  return _swift_task_switch(sub_BA80, v1, 0);
}

uint64_t sub_BA80()
{
  v1 = *(v0 + 48);
  swift_beginAccess();

  sub_364C();
  swift_endAccess();
  v2 = *(v1 + OBJC_IVAR____TtC17CSUIAUpcallBundle24IconChangeAlertOperation_invokerSelfProxy);
  v3 = *&stru_68.segname[(swift_isaMask & *v2) - 8];

  v4 = v2;
  v3(v1);

  v5 = *(v0 + 8);
  v6 = *(v0 + 48);

  return v5(v6);
}

uint64_t sub_BBA4(uint64_t a1)
{
  v2 = type metadata accessor for IconChangeAlertOperation.Status(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_BC20(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_BC98()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_4964;

  return sub_ACE8(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_BD48(uint64_t a1)
{
  result = type metadata accessor for IconChangeAlertiOSPlatformExpert();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for IconChangeAlertOperation.Status(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_BE88(uint64_t a1)
{
  sub_BEFC();
  if (v1 <= 0x3F)
  {
    sub_C004();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_BEFC()
{
  if (!qword_19850)
  {
    sub_BF44(0);
    if (!v1)
    {
      atomic_store(v0, &qword_19850);
    }
  }
}

void sub_BF44(uint64_t a1)
{
  if (!qword_19858)
  {
    sub_BFBC(&qword_19860, &qword_EFC8);
    v1 = sub_D8C4();
    if (!v2)
    {
      atomic_store(v1, &qword_19858);
    }
  }
}

uint64_t sub_BFBC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_C004()
{
  result = qword_19868;
  if (!qword_19868)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_19868);
  }

  return result;
}

uint64_t sub_C074()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_C0B4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_C0FC()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DDC;

  return sub_ACE8(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_C1A4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_C1F4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_4964;

  return sub_8F0C(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_C2A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_C2B8(uint64_t a1, void **a2)
{
  v5 = *(sub_1C70(&qword_195C0, &qword_EE80) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_7BB4(a1, a2, v6);
}

uint64_t sub_C348(uint64_t a1)
{
  sub_1C70(&qword_195C0, &qword_EE80);
  swift_errorRetain();
  sub_1C70(&qword_195C0, &qword_EE80);
  return sub_D8A4();
}

uint64_t sub_C3F4()
{
  v1 = sub_1C70(&qword_195C0, &qword_EE80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_C488(uint64_t a1)
{
  sub_1C70(&qword_195C0, &qword_EE80);
  if (!a1)
  {
    return sub_D8B4();
  }

  swift_errorRetain();
  sub_1C70(&qword_195C0, &qword_EE80);
  return sub_D8A4();
}

uint64_t sub_C53C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_C574()
{
  result = qword_19938;
  if (!qword_19938)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_19938);
  }

  return result;
}

uint64_t sub_C5C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_C608()
{
  result = qword_19950;
  if (!qword_19950)
  {
    sub_BFBC(&qword_19948, qword_F028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19950);
  }

  return result;
}

uint64_t sub_C66C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_C6A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*&stru_68.segname[(swift_isaMask & *Strong) + 16])(0);
  }
}

uint64_t sub_C778()
{
  sub_CA68();
  result = sub_D964();
  qword_19A58 = result;
  return result;
}

uint64_t sub_C7E0()
{
  v0 = sub_D7D4();
  sub_CAB4(v0, qword_19B90);
  sub_C8D0(v0, qword_19B90);
  if (qword_19A50 != -1)
  {
    swift_once();
  }

  v1 = qword_19A58;
  return sub_D7E4();
}

uint64_t sub_C86C()
{
  if (qword_19A60 != -1)
  {
    swift_once();
  }

  v0 = sub_D7D4();

  return sub_C8D0(v0, qword_19B90);
}

uint64_t sub_C8D0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_C908@<X0>(uint64_t a1@<X8>)
{
  if (qword_19A60 != -1)
  {
    swift_once();
  }

  v2 = sub_D7D4();
  v3 = sub_C8D0(v2, qword_19B90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id upcallBundleLogger()
{
  if (qword_19A50 != -1)
  {
    swift_once();
  }

  v1 = qword_19A58;

  return v1;
}

id upcallBundleLogger()()
{
  if (qword_19A50 != -1)
  {
    swift_once();
  }

  v1 = qword_19A58;

  return v1;
}

unint64_t sub_CA68()
{
  result = qword_19960;
  if (!qword_19960)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_19960);
  }

  return result;
}

uint64_t *sub_CAB4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_CB1C@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_D974();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_CB88(uint64_t a1, uint64_t a2)
{
  v4 = sub_D974();
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t sub_CC4C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_D974();
  v6 = *(*(v5 - 8) + 32);

  return v6(a3, a1, v5);
}

uint64_t sub_CCC0(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_CD00(a1);
  return v2;
}

void *sub_CD00(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_D974();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v10 = type metadata accessor for Parcel.State(0, v3, v8, v9);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - v12;
  v14 = *(v3 - 8);
  (*(v14 + 32))(v7, a1, v3);
  (*(v14 + 56))(v7, 0, 1, v3);
  (*(v5 + 32))(v13, v7, v4);
  v15 = sub_D050(v13, v10);
  (*(v11 + 8))(v13, v10);
  v1[2] = v15;
  return v1;
}

uint64_t sub_CF18@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);

  sub_D974();
  v4 = *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_D0CC(v3 + v4, a1);
  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_D018()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_D050(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s();
  sub_D9F4();
  return sub_D9E4();
}

uint64_t sub_D0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = sub_D974();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
}

uint64_t sub_D1E8(uint64_t a1)
{
  result = sub_D974();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_D258(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_D3D8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_19968)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_19968);
    }
  }
}

uint64_t sub_D654@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + class metadata base offset for ManagedBuffer) - 8) + 16))(a2, v3);
}

uint64_t sub_D72C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_D74C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}