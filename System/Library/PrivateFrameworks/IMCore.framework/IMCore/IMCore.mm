uint64_t IMCoreSimulatedEnvironmentEnabled()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 environment];
  v2 = [v1 valueForKey:@"IMCoreSimulatedEnvironmentEnabled"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1A8241908()
{
  v0 = IMCoreSimulatedEnvironmentEnabled();
  v1 = off_1E780DD08;
  if (!v0)
  {
    v1 = off_1E780D7A8;
  }

  v2 = objc_alloc_init(*v1);
  qword_1ED767848 = v2;

  return MEMORY[0x1EEE66BB8](v2);
}

uint64_t sub_1A8241A60()
{
  if (IMIsRunningInIMDPersistenceAgent())
  {
    v1 = IMLogHandleForCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      sub_1A84E1BA8(v1);
    }

    abort();
  }

  v0 = [[IMChatRegistry alloc] initAsListener:1];
  qword_1ED767790 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A8241B28()
{
  if ((IMIsRunningInFullClient() & 1) != 0 || (result = IMIsRunningInUnitTesting(), result))
  {
    v1 = objc_opt_new();
    qword_1EB2E9FB0 = v1;

    return MEMORY[0x1EEE66BB8](v1);
  }

  return result;
}

uint64_t sub_1A8241E34()
{
  result = MEMORY[0x1AC56C550](@"SGSuggestionsService", @"CoreSuggestions");
  qword_1EB2EA018 = result;
  return result;
}

uint64_t sub_1A8241E64()
{
  v0 = objc_alloc_init(IMDaemonController);
  qword_1ED7677D8 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A8242194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t type metadata accessor for DaemonConnection(uint64_t a1)
{
  result = qword_1ED767570;
  if (!qword_1ED767570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A82422E8()
{
  if (!qword_1ED767590)
  {
    v0 = sub_1A84E5A1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED767590);
    }
  }
}

id DaemonConnection.init(listener:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1A84E623C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1A84E621C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A84E5CCC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = OBJC_IVAR___IMDaemonConnection_queue;
  sub_1A83EA2FC(&qword_1EB2E6578, &qword_1A8500710);
  v7 = sub_1A8242810(MEMORY[0x1E69E7CC0]);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 1;
  v16 = 0;
  v17 = v7;
  v18 = 0;
  v19 = 0;
  sub_1A84E5A8C();
  sub_1A84E5A9C();
  MEMORY[0x1AC56A5A0](&type metadata for DaemonConnection.State);
  *&v1[v6] = sub_1A84E5A7C();
  v8 = OBJC_IVAR___IMDaemonConnection_setupQueue;
  sub_1A83EA2FC(&qword_1EB2E6588, &qword_1A8500718);
  v12 = 0;
  v13 = 0;
  sub_1A84E5A8C();
  sub_1A84E5A9C();
  MEMORY[0x1AC56A5A0](&type metadata for DaemonConnection.SetupState);
  *&v1[v8] = sub_1A84E5A7C();
  LOBYTE(v12) = 0;
  sub_1A84E5A0C();
  *&v1[OBJC_IVAR___IMDaemonConnection_listener] = a1;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

void sub_1A8242724(uint64_t a1)
{
  sub_1A82422E8();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1A8242810(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A83EA2FC(&qword_1EB2E66B8, &qword_1A8500968);
    v3 = sub_1A84E657C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A8243D74(v4, &v13, &unk_1EB2E66C0, &unk_1A8500970);
      v5 = v13;
      v6 = v14;
      result = sub_1A824B390(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1A8243DDC(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

__n128 sub_1A8242940(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 _s12DerivedStateVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1A8242A50()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8242A90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  sub_1A8242AE8(v4, v3);
  result = sub_1A8245638(v5, v6);
  *(a1 + 48) = v4;
  *(a1 + 56) = v3;
  return result;
}

uint64_t sub_1A8242AE8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

char *NicknameProvider.init()()
{
  v1 = v0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR___IMNicknameProvider_Impl_nicknameController;
  *&v1[v2] = [objc_opt_self() sharedInstance];
  if (qword_1ED767520 != -1)
  {
    swift_once();
  }

  v3 = sub_1A84E5C9C();
  sub_1A824431C(v3, qword_1ED7679E0);
  v4 = sub_1A84E5C7C();
  v5 = sub_1A84E61BC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1A823F000, v4, v5, "Opening Daemon connection", v6, 2u);
    MEMORY[0x1AC56D3F0](v6, -1, -1);
  }

  v7 = [objc_opt_self() sharedController];
  v8 = type metadata accessor for NicknameProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v10)
  {
    sub_1A84E5DBC();
    v10 = sub_1A84E5D8C();
  }

  v11 = [v7 multiplexedConnectionWithLabel:v10 capabilities:512 context:0];

  *&v1[OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection] = v11;
  v20.receiver = v1;
  v20.super_class = v8;
  v12 = objc_msgSendSuper2(&v20, sel_init);
  v19[4] = sub_1A824FE40;
  v19[5] = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1A824B720;
  v19[3] = &unk_1F1B764A0;
  v13 = _Block_copy(v19);
  v14 = v12;
  [swift_unknownObjectRetain() connectWithCompletion_];
  _Block_release(v13);
  swift_unknownObjectRelease();
  v15 = objc_opt_self();
  v16 = [v15 defaultCenter];
  [v16 addObserver:v14 selector:sel_nicknamesDidChangeWithNotification_ name:@"__kIMPendingNicknamesDidChangeNotification" object:0];

  v17 = [v15 defaultCenter];
  [v17 addObserver:v14 selector:sel_connectionStartedWithNotification_ name:@"__kIMDaemonDidConnectNotification" object:0];

  return v14;
}

uint64_t sub_1A8242ED8()
{
  v0 = objc_alloc_init(IMNicknameController);
  qword_1ED7678C0 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id sub_1A824340C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  sub_1A83EA2FC(&qword_1EB2E65A8, &qword_1A8500738);
  sub_1A84E5A5C();

  return v5;
}

id sub_1A82434AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained[10] remoteObjectProxy];

  return v2;
}

uint64_t sub_1A8243500(uint64_t result)
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

  result = sub_1A83EEE14(result, v11, 1, v3);
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

void sub_1A82435EC(const char *a1, void (*a2)(uint64_t *), uint64_t a3, char a4, uint64_t a5)
{
  v36 = a3;
  v37 = a2;
  v6 = NSStringFromSelector(a1);
  v38 = sub_1A84E5DBC();
  v8 = v7;

  if (qword_1ED7675D0 != -1)
  {
    swift_once();
  }

  v9 = sub_1A84E5C9C();
  sub_1A824431C(v9, qword_1ED7679F8);

  v10 = sub_1A84E5C7C();
  v11 = sub_1A84E618C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v43 = v13;
    *v12 = 136315394;
    if (a4)
    {
      v14 = 0x6E6F7268636E7973;
    }

    else
    {
      v14 = 0x6F7268636E797361;
    }

    if (a4)
    {
      v15 = 0xEB0000000073756FLL;
    }

    else
    {
      v15 = 0xEC00000073756F6ELL;
    }

    v16 = sub_1A82446BC(v14, v15, &v43);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1A82446BC(v38, v8, &v43);
    _os_log_impl(&dword_1A823F000, v10, v11, "Sending %s message to daemon %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC56D3F0](v13, -1, -1);
    MEMORY[0x1AC56D3F0](v12, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    MEMORY[0x1EEE9AC00](Strong);

    sub_1A83EA2FC(&qword_1EB2E66A8, &qword_1A8500958);
    sub_1A84E5A5C();

    v19 = v43;
    v46[0] = v44;
    v46[1] = v45;
    sub_1A8243D74(v46, &v41, &qword_1EB2E66B0, &qword_1A8500960);
    if (!v42)
    {

      sub_1A8243FD0(&v41);
      v30 = sub_1A84E5C7C();
      v31 = sub_1A84E619C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1A823F000, v30, v31, "Attempted to send daemon request but proxy unavailable!", v32, 2u);
        MEMORY[0x1AC56D3F0](v32, -1, -1);
        v33 = v18;
      }

      else
      {
        v33 = v30;
        v30 = v18;
      }

      goto LABEL_27;
    }

    sub_1A8243DDC(&v41, &v43);
    if (!v19)
    {

      v37(&v43);

LABEL_24:
      sub_1A8244788(&v43);
LABEL_27:
      sub_1A8243FD0(v46);
      return;
    }

    sub_1A8244F40(&v43, &v41);
    sub_1A8244F40(&v41, v40);
    v20 = swift_allocObject();
    *(v20 + 16) = v38;
    *(v20 + 24) = v8;
    v21 = v36;
    *(v20 + 32) = v37;
    *(v20 + 40) = v21;
    v22 = sub_1A8243DDC(&v41, (v20 + 48));
    v35 = &v35;
    MEMORY[0x1EEE9AC00](v22);

    sub_1A84E5A5C();

    if (a4)
    {

      sub_1A84E5A5C();

      v23 = sub_1A84E5C7C();
      v24 = sub_1A84E617C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v39 = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_1A82446BC(v38, v8, &v39);
        _os_log_impl(&dword_1A823F000, v23, v24, "Completing deferred invocation of %s", v25, 0xCu);
        sub_1A8244788(v26);
        MEMORY[0x1AC56D3F0](v26, -1, -1);
        MEMORY[0x1AC56D3F0](v25, -1, -1);
      }

      v37(v40);

      sub_1A8244788(v40);
      goto LABEL_24;
    }

    sub_1A8244788(v40);

    v34 = swift_allocObject();
    *(v34 + 16) = sub_1A824FA68;
    *(v34 + 24) = v20;

    sub_1A84E5A6C();

    sub_1A8244788(&v43);
    sub_1A8243FD0(v46);
  }

  else
  {

    v27 = sub_1A84E5C7C();
    v28 = sub_1A84E619C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1A823F000, v27, v28, "Attempted to send daemon request but daemon connection no longer exists!", v29, 2u);
      MEMORY[0x1AC56D3F0](v29, -1, -1);
    }
  }
}

uint64_t sub_1A8243CF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8243D28()
{

  sub_1A8244788((v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A8243D74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1A83EA2FC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_1A8243DDC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1A8243DF8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_1ED7675D0 != -1)
  {
    swift_once();
  }

  v6 = sub_1A84E5C9C();
  sub_1A824431C(v6, qword_1ED7679F8);

  v7 = sub_1A84E5C7C();
  v8 = sub_1A84E617C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1A82446BC(a2, a3, &v11);
    _os_log_impl(&dword_1A823F000, v7, v8, "Setup has not been requested at time of proxy invocation, deferring invocation of %s to after setup complete", v9, 0xCu);
    sub_1A8244788(v10);
    MEMORY[0x1AC56D3F0](v10, -1, -1);
    MEMORY[0x1AC56D3F0](v9, -1, -1);
  }

  sub_1A8244F9C(a1);
}

void *sub_1A8243F5C(uint64_t a1, uint64_t a2)
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

  sub_1A83EA2FC(&qword_1EB2E6DC8, &unk_1A8500C18);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1A8243FD0(uint64_t a1)
{
  v2 = sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1A8244038(uint64_t a1, unint64_t a2)
{
  v3 = sub_1A8244084(a1, a2);
  sub_1A8243500(&unk_1F1B6FE40);
  return v3;
}

void *sub_1A8244084(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1A8243F5C(v5, 0);
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

  result = sub_1A84E64CC();
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
        v10 = sub_1A84E5EBC();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1A8243F5C(v10, 0);
        result = sub_1A84E645C();
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

uint64_t sub_1A82441B4()
{
  v0 = sub_1A84E5C9C();
  sub_1A82442B8(v0, qword_1ED7679E0);
  sub_1A824431C(v0, qword_1ED7679E0);
  sub_1A84E5C6C();
  return sub_1A84E5C8C();
}

uint64_t sub_1A824424C()
{
  v0 = sub_1A84E5C9C();
  sub_1A82442B8(v0, qword_1ED7679F8);
  sub_1A824431C(v0, qword_1ED7679F8);
  sub_1A84E5C6C();
  return sub_1A84E5C8C();
}

uint64_t *sub_1A82442B8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1A824431C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1A8244354(void **a1)
{
  v2 = sub_1A84E5CFC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = sub_1A84E5A4C();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = sub_1A84E5D1C();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  if (*a1)
  {
    return;
  }

  if (qword_1ED7675D0 != -1)
  {
    goto LABEL_13;
  }

LABEL_4:
  v7 = sub_1A84E5C9C();
  sub_1A824431C(v7, qword_1ED7679F8);
  v8 = sub_1A84E5C7C();
  v9 = sub_1A84E617C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    v12 = *MEMORY[0x1E69A61F0];
    v13 = sub_1A84E5DBC();
    v15 = sub_1A82446BC(v13, v14, &v25);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1A823F000, v8, v9, "Attempting to connect to daemon with mach service %s", v10, 0xCu);
    sub_1A8244788(v11);
    MEMORY[0x1AC56D3F0](v11, -1, -1);
    MEMORY[0x1AC56D3F0](v10, -1, -1);
  }

  else
  {

    v12 = *MEMORY[0x1E69A61F0];
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithMachServiceName:v12 options:0];
  sub_1A82447D4(v16, a1);
  v17 = *a1;
  v18 = v16;

  *a1 = v16;
  [v18 resume];
  v19 = v18;
  v20 = sub_1A84E5C7C();
  v21 = sub_1A84E617C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    v23 = [v19 processIdentifier];

    *(v22 + 4) = v23;
    _os_log_impl(&dword_1A823F000, v20, v21, "Resumed connection for %d", v22, 8u);
    MEMORY[0x1AC56D3F0](v22, -1, -1);
  }

  else
  {

    v20 = v19;
  }
}

unint64_t sub_1A82446BC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1A8244E34(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1A8244F40(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1A8244788(v11);
  return v7;
}

uint64_t sub_1A8244788(void *a1)
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

uint64_t sub_1A82447D4(void *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1ED7675D0 != -1)
  {
    swift_once();
  }

  v6 = sub_1A84E5C9C();
  sub_1A824431C(v6, qword_1ED7679F8);
  v7 = a1;
  v8 = sub_1A84E5C7C();
  v9 = sub_1A84E617C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = [v7 processIdentifier];

    _os_log_impl(&dword_1A823F000, v8, v9, "Configuring XPC connection to PID %d", v10, 8u);
    MEMORY[0x1AC56D3F0](v10, -1, -1);
  }

  else
  {

    v8 = v7;
  }

  sub_1A8244B68(0, &unk_1ED7675A0, 0x1E696B0D0);
  v11 = sub_1A84E61DC();
  [v7 setExportedInterface:v11];

  [v7 setExportedObject:sub_1A8244BC0()];
  swift_unknownObjectRelease();
  v12 = sub_1A84E61CC();
  [v7 setRemoteObjectInterface:v12];

  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  *(v13 + 24) = v3;
  v28 = sub_1A83ECA9C;
  v29 = v13;
  v24 = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1A824B720;
  v27 = &unk_1F1B716F8;
  v14 = _Block_copy(&v24);
  v15 = v7;
  v16 = v3;

  [v15 setInterruptionHandler:v14];
  _Block_release(v14);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
  v28 = sub_1A83ECAA4;
  v29 = v17;
  v24 = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1A824B720;
  v27 = &unk_1F1B71748;
  v18 = _Block_copy(&v24);
  v19 = v15;
  v20 = v16;

  [v19 setInvalidationHandler:v18];
  _Block_release(v18);
  v21 = sub_1A83ECAAC(0);
  swift_unknownObjectRelease();
  *(a2 + 8) = v21;
  v22 = sub_1A83ECAAC(1);
  result = swift_unknownObjectRelease();
  *(a2 + 16) = v22;
  return result;
}

uint64_t sub_1A8244B24()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8244B68(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1A8244BC0()
{
  v0 = IMGetDaemonListenerProtocol();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_allocWithZone(MEMORY[0x1E69A80D0]);
  aBlock[4] = sub_1A824F74C;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A8247230;
  aBlock[3] = &unk_1F1B71928;
  v3 = _Block_copy(aBlock);

  [v2 initWithProtocol:v0 forwardingHandler:v3];

  _Block_release(v3);

  return swift_dynamicCastObjCProtocolUnconditional();
}

uint64_t sub_1A8244D04()
{
  MEMORY[0x1AC56D490](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8244D3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A8244D4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A8244D5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A8244D6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A8244D7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A8244D8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A8244DAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A8244DBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A8244DCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A8244DDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A8244DEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A8244DFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A8244E0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A8244E1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1A8244E34(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1A8244038(a5, a6);
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
    result = sub_1A84E64CC();
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

uint64_t sub_1A8244F40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1A8244F9C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A84E5CFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_1A84E5A4C();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = sub_1A84E5D1C();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_13;
  }

  sub_1A8244354(a1);
  if (*(a1 + 24) != 1)
  {
    return;
  }

  v9 = *a1;
  if (*a1)
  {
    aBlock[4] = sub_1A83EA4B8;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A83EA4C4;
    aBlock[3] = &unk_1F1B71518;
    v10 = _Block_copy(aBlock);

    v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v10);
    sub_1A84E63AC();
    swift_unknownObjectRelease();
    sub_1A83EA2FC(&qword_1EB2E6690, &qword_1A8500948);
    if (swift_dynamicCast())
    {
      v57 = aBlock[0];
      v12 = [objc_opt_self() mainBundle];
      v13 = [v12 bundleIdentifier];

      if (!v13)
      {
        v14 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
        v13 = [v14 UUIDString];
      }

      v15 = sub_1A84E5DBC();
      v17 = v16;

      v18 = *(a1 + 48);
      if (v18)
      {
        v19 = *(a1 + 32);
        v20 = *(a1 + 40);
        v21 = *(a1 + 56);

        sub_1A8242AE8(v18, v21);
        if (qword_1ED7675D0 != -1)
        {
          swift_once();
        }

        v22 = sub_1A84E5C9C();
        sub_1A824431C(v22, qword_1ED7679F8);

        v23 = sub_1A84E5C7C();
        v24 = sub_1A84E617C();

        v56 = v24;
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v54 = v20;
          v26 = v25;
          v52 = swift_slowAlloc();
          aBlock[0] = v52;
          *v26 = 136315394;
          *(v26 + 4) = sub_1A82446BC(v15, v17, aBlock);
          *(v26 + 12) = 2080;
          v53 = v17;
          v27 = v19;
          v28 = IMStringFromClientCapabilities();
          v51 = v23;
          v29 = v15;
          v30 = v28;
          v31 = sub_1A84E5DBC();
          v55 = v21;
          v32 = v31;
          v34 = v33;

          v15 = v29;
          v35 = sub_1A82446BC(v32, v34, aBlock);
          v19 = v27;
          v17 = v53;

          *(v26 + 14) = v35;
          v21 = v55;
          v36 = v51;
          _os_log_impl(&dword_1A823F000, v51, v56, "Dispatching setup request with id: %s capabilities: %s", v26, 0x16u);
          v37 = v52;
          swift_arrayDestroy();
          MEMORY[0x1AC56D3F0](v37, -1, -1);
          v38 = v26;
          v20 = v54;
          MEMORY[0x1AC56D3F0](v38, -1, -1);
        }

        else
        {
        }

        *(a1 + 24) = 0;
        v47 = swift_allocObject();
        v47[2] = v15;
        v47[3] = v17;
        v48 = v57;
        v47[4] = v19;
        v47[5] = v48;
        v47[6] = v20;
        v47[7] = v18;
        v47[8] = v21;
        v47[9] = v2;
        sub_1A8242AE8(v18, v21);
        swift_unknownObjectRetain();
        v49 = v2;
        sub_1A84E5A6C();

        sub_1A8245638(v18, v21);
      }

      else
      {

        if (qword_1ED7675D0 != -1)
        {
          swift_once();
        }

        v43 = sub_1A84E5C9C();
        sub_1A824431C(v43, qword_1ED7679F8);
        v44 = sub_1A84E5C7C();
        v45 = sub_1A84E619C();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_1A823F000, v44, v45, "No closure to handle setup complete, not requesting setup", v46, 2u);
          MEMORY[0x1AC56D3F0](v46, -1, -1);
        }
      }

      swift_unknownObjectRelease();
      return;
    }
  }

  if (qword_1ED7675D0 != -1)
  {
    goto LABEL_26;
  }

LABEL_13:
  v39 = sub_1A84E5C9C();
  sub_1A824431C(v39, qword_1ED7679F8);
  v40 = sub_1A84E5C7C();
  v41 = sub_1A84E619C();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1A823F000, v40, v41, "Setup not requested due to missing remote proxy", v42, 2u);
    MEMORY[0x1AC56D3F0](v42, -1, -1);
  }
}

uint64_t sub_1A8245638(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A8245648()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A82456D4(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v61 = a8;
  v62 = a7;
  v72 = a5;
  v63 = a1;
  v12 = sub_1A84E5CAC();
  v65 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1A84E5CCC();
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v64 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v74 = (v15 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v71 = (v16 + 16);
  if (qword_1ED7675D0 != -1)
  {
    swift_once();
  }

  v17 = sub_1A84E5C9C();
  v18 = sub_1A824431C(v17, qword_1ED7679F8);

  v19 = sub_1A84E5C7C();
  v20 = sub_1A84E617C();

  v69 = v20;
  v21 = os_log_type_enabled(v19, v20);
  v73 = a4;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v60 = v12;
    v23 = v22;
    v59 = swift_slowAlloc();
    aBlock = v59;
    *v23 = 136315394;
    *(v23 + 4) = sub_1A82446BC(a2, a3, &aBlock);
    *(v23 + 12) = 2080;
    v24 = IMStringFromClientCapabilities();
    v25 = sub_1A84E5DBC();
    v70 = v18;
    v26 = v15;
    v27 = v16;
    v29 = v28;

    v30 = sub_1A82446BC(v25, v29, &aBlock);
    v16 = v27;
    v15 = v26;
    v18 = v70;

    *(v23 + 14) = v30;
    _os_log_impl(&dword_1A823F000, v19, v69, "Requesting setup with id: %s capabilities: %s", v23, 0x16u);
    v31 = v59;
    swift_arrayDestroy();
    MEMORY[0x1AC56D3F0](v31, -1, -1);
    v32 = v23;
    v12 = v60;
    MEMORY[0x1AC56D3F0](v32, -1, -1);
  }

  v33 = [objc_opt_self() sharedFeatureFlags];
  v34 = [v33 isNSXPCSetupInfoEnabled];

  v35 = sub_1A84E5D8C();
  v36 = sub_1A84E5D2C();
  v37 = swift_allocObject();
  *(v37 + 16) = v16;
  *(v37 + 24) = v15;
  if (v34)
  {
    v79 = sub_1A83ECA94;
    v80 = v37;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v77 = sub_1A83EA5B0;
    v78 = &unk_1F1B716A8;
    v38 = _Block_copy(&aBlock);

    v39 = &selRef_requestSetupWithClientID_capabilities_context_reply_;
  }

  else
  {
    v79 = sub_1A83ECA1C;
    v80 = v37;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v77 = sub_1A824B11C;
    v78 = &unk_1F1B715E0;
    v38 = _Block_copy(&aBlock);

    v39 = &selRef_requestSetupXPCObjectWithClientID_capabilities_context_reply_;
  }

  [v72 *v39];
  _Block_release(v38);

  v40 = v71;
  swift_beginAccess();
  v41 = *v40;
  if (*v40)
  {
    v42 = v74;
    swift_beginAccess();
    if (*v42 == 1)
    {
      v70 = v18;
      v43 = v63;
      v44 = *v63;
      v45 = v63[1];

      sub_1A8245638(v44, v45);
      v46 = swift_allocObject();
      v47 = v61;
      v46[2] = v62;
      v46[3] = v47;
      v46[4] = v41;
      *v43 = sub_1A83ECA24;
      v43[1] = v46;
      sub_1A8244B68(0, &qword_1ED767638, 0x1E69E9610);

      v48 = sub_1A84E624C();
      v49 = swift_allocObject();
      *(v49 + 16) = a9;
      v79 = sub_1A83ECC74;
      v80 = v49;
      aBlock = MEMORY[0x1E69E9820];
      v76 = 1107296256;
      v77 = sub_1A824B720;
      v78 = &unk_1F1B71658;
      v50 = _Block_copy(&aBlock);
      v51 = a9;

      v52 = v64;
      sub_1A84E5A8C();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1A824B214();
      sub_1A83EA2FC(&unk_1EB2E6680, &qword_1A8500940);
      sub_1A824B26C();
      v53 = v67;
      sub_1A84E63CC();
      MEMORY[0x1AC56AD50](0, v52, v53, v50);
      _Block_release(v50);

      (*(v65 + 8))(v53, v12);
      (*(v66 + 8))(v52, v68);
    }
  }

  v54 = sub_1A84E5C7C();
  v55 = sub_1A84E617C();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 67109120;
    swift_beginAccess();
    *(v56 + 4) = *(v15 + 16);

    _os_log_impl(&dword_1A823F000, v54, v55, "Setup request concluded with success: %{BOOL}d", v56, 8u);
    MEMORY[0x1AC56D3F0](v56, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1A8245F2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8245F74()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8245FB0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A8246040()
{
  v0 = objc_alloc_init(IMChatHistoryController);
  qword_1ED7678F0 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A82461F0()
{
  v0 = objc_alloc_init(IMPinnedConversationsController);
  qword_1ED767840 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A8246858(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  if (!qword_1ED767758)
  {
    v2 = *(a1 + 32);
    v3 = [v2 _createSingleton__im];
    [v2 __setSingleton__im:v3];
  }

  objc_sync_exit(obj);
}

uint64_t sub_1A8246FA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1A8244354(a1);
  *a2 = *(a1 + 8);

  return swift_unknownObjectRetain();
}

double sub_1A8246FF8@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 24);
  v5 = *a1;
  if ((a2 & 1) == 0)
  {
    if (v5)
    {
      v13 = sub_1A83EA96C;
      v14 = 0;
      *&v11 = MEMORY[0x1E69E9820];
      *(&v11 + 1) = 1107296256;
      *&v12 = sub_1A83EA4C4;
      *(&v12 + 1) = &unk_1F1B718B0;
      v6 = _Block_copy(&v11);
      v7 = [v5 remoteObjectProxyWithErrorHandler_];
      goto LABEL_6;
    }

LABEL_7:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_8;
  }

  if (!v5)
  {
    goto LABEL_7;
  }

  v13 = sub_1A83EA960;
  v14 = 0;
  *&v11 = MEMORY[0x1E69E9820];
  *(&v11 + 1) = 1107296256;
  *&v12 = sub_1A83EA4C4;
  *(&v12 + 1) = &unk_1F1B718D8;
  v6 = _Block_copy(&v11);
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler_];
LABEL_6:
  v8 = v7;
  _Block_release(v6);
  sub_1A84E63AC();
  swift_unknownObjectRelease();
LABEL_8:
  *a3 = v4;
  result = *&v11;
  v10 = v12;
  *(a3 + 8) = v11;
  *(a3 + 24) = v10;
  return result;
}

uint64_t sub_1A8247180(void *a1, uint64_t a2)
{
  sub_1A82471E0(a1, a1[3]);
  v3 = sub_1A84E679C();
  (*(a2 + 16))(a2, v3);

  return swift_unknownObjectRelease();
}

void *sub_1A82471E0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1A8247230(uint64_t a1, uint64_t a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  v4(a2, sub_1A8247178, v6);
}

uint64_t sub_1A824734C()
{
  v0 = objc_alloc_init(IMHandleRegistrar);
  qword_1ED7678C8 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A8247448()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 addObserver:qword_1ED7678C8 selector:sel__handleAddContactChangeHistoryEvent_ name:*MEMORY[0x1E69A6A80] object:0];

  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 addObserver:qword_1ED7678C8 selector:sel__handleDeleteContactChangeHistoryEvent_ name:*MEMORY[0x1E69A6A98] object:0];

  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 addObserver:qword_1ED7678C8 selector:sel__handleUpdateContactChangeHistoryEvent_ name:*MEMORY[0x1E69A6AB0] object:0];

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:qword_1ED7678C8 selector:sel__handleDropEverythingChangeHistoryEvent name:*MEMORY[0x1E69A6AA0] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:qword_1ED7678C8 selector:sel__handleNicknameDidChangeNotification_ name:@"__kIMNicknameDidChangeNotification" object:0];
}

void sub_1A8247648(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(a1 + 32);
  *(a1 + 32) = a2;
  if (v7 != a2)
  {
    *(a1 + 24) = 1;
  }

  *(a1 + 40) = a3;
  if (a4)
  {
    *(a1 + 24) = 1;
  }

  sub_1A8244F9C(a1);
}

uint64_t sub_1A8247B70()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8247E78()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8247EC0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1A82505F4;

  return v7();
}

uint64_t sub_1A8247FAC()
{
  v18 = v0;
  if (qword_1ED7675D0 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_1A84E5C9C();
  sub_1A824431C(v2, qword_1ED7679F8);
  v3 = v1;
  v4 = sub_1A84E5C7C();
  v5 = sub_1A84E617C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[18];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_1A82446BC(*(v6 + OBJC_IVAR___IMMultiplexedDaemonConnection_label), *(v6 + OBJC_IVAR___IMMultiplexedDaemonConnection_label + 8), &v17);
    *(v7 + 12) = 2080;
    v9 = IMStringFromClientCapabilities();
    v10 = sub_1A84E5DBC();
    v12 = v11;

    v13 = sub_1A82446BC(v10, v12, &v17);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_1A823F000, v4, v5, "Multiplexed connection %s is requesting asynchronous connection with capabilities %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC56D3F0](v8, -1, -1);
    MEMORY[0x1AC56D3F0](v7, -1, -1);
  }

  v14 = [objc_opt_self() sharedController];
  v0[19] = v14;
  v0[2] = v0;
  v0[3] = sub_1A8250514;
  v15 = swift_continuation_init();
  v0[17] = sub_1A83EA2FC(&qword_1EB2E8258, &qword_1A8507B58);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A824FBAC;
  v0[13] = &unk_1F1B74C40;
  v0[14] = v15;
  [v14 _connectWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

void sub_1A8248300(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  aBlock[4] = nullsub_4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A824B720;
  aBlock[3] = &unk_1F1B76888;
  v4 = _Block_copy(aBlock);
  [v3 connectWithCompletion_];
  _Block_release(v4);
  v5 = [objc_opt_self() phoneNumbersForCNContact_];
  v6 = sub_1A84E5FFC();

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      v10 = v6 + 40 + 16 * v8;
      v11 = v8;
      while (1)
      {
        if (v11 >= *(v6 + 16))
        {
          __break(1u);
          return;
        }

        v8 = v11 + 1;

        v12 = sub_1A84E5D8C();
        v13 = IMInternationalForPhoneNumberWithOptions();

        if (v13)
        {
          break;
        }

        v10 += 16;
        ++v11;
        if (v7 == v8)
        {
          goto LABEL_15;
        }
      }

      v14 = sub_1A84E5DBC();
      v16 = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1A824A1FC(0, *(v9 + 2) + 1, 1, v9);
      }

      v18 = *(v9 + 2);
      v17 = *(v9 + 3);
      if (v18 >= v17 >> 1)
      {
        v9 = sub_1A824A1FC((v17 > 1), v18 + 1, 1, v9);
      }

      *(v9 + 2) = v18 + 1;
      v19 = &v9[16 * v18];
      *(v19 + 4) = v14;
      *(v19 + 5) = v16;
    }

    while (v7 - 1 != v11);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:

  sub_1A8249338(v9);
}

uint64_t sub_1A8248560(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A824FC44;

  return v6(a1);
}

uint64_t sub_1A8248658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A824FBE0;

  return sub_1A8247EC0(a1, v4, v5, v6);
}

uint64_t sub_1A8248724(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1A824FBE0;

  return v6();
}

uint64_t sub_1A824880C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A82505F4;

  return sub_1A8248A38(v2, v3);
}

void sub_1A82488B8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1A84CFCC8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1A84CFF28();
      goto LABEL_16;
    }

    sub_1A84D0084(v8 + 1);
  }

  v10 = *v4;
  sub_1A84E684C();
  sub_1A84E5E5C();
  v11 = sub_1A84E687C();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1A84E67AC() & 1) != 0)
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
  sub_1A84E67DC();
  __break(1u);
}

uint64_t sub_1A8248A38(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1A8250728;

  return MultiplexedDaemonConnection.connect()();
}

uint64_t sub_1A8248AE8(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  v28[4] = nullsub_4;
  v28[5] = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 1107296256;
  v28[2] = sub_1A824B720;
  v28[3] = &unk_1F1B76608;
  v4 = _Block_copy(v28);
  [v3 connectWithCompletion_];
  _Block_release(v4);
  v28[0] = MEMORY[0x1E69E7CC8];
  sub_1A8248300(a1);
  v5 = [objc_opt_self() emailsForCNContact_];
  v6 = sub_1A84E5FFC();

  sub_1A8249338(v6);

  v7 = *(v1 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
  v8 = sub_1A84E610C();
  v9 = [v7 pendingNicknameForHandleIDs_];

  if (!v9)
  {
    v10 = sub_1A84E610C();
    v9 = [v7 pendingNicknameForHandleIDs_];
  }

  v11 = sub_1A84E610C();
  v12 = [v7 currentNicknameForHandleIDs_];

  if (!v12)
  {
    v13 = sub_1A84E610C();
    v12 = [v7 currentNicknameForHandleIDs_];
  }

  v14 = sub_1A84E610C();

  v15 = [v7 archivedNicknameForHandleIDs_];

  if (v15)
  {

    if (!v9)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v27 = sub_1A84E610C();

  v15 = [v7 archivedNicknameForHandleIDs_];

  if (v9)
  {
LABEL_7:
    v16 = sub_1A84E5DBC();
    v18 = v17;
    v19 = v9;
    sub_1A845EC98(v9, v16, v18);
  }

LABEL_8:
  if (v12)
  {
    v20 = sub_1A84E5DBC();
    v22 = v21;
    v23 = v12;
    sub_1A845EC98(v12, v20, v22);
  }

  if (v15)
  {
    v24 = sub_1A84E5DBC();
    sub_1A845EC98(v15, v24, v25);
  }

  return v28[0];
}

uint64_t sub_1A82490D8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8249120(uint64_t a1, void *a2)
{
  v4 = sub_1A83EA2FC(&unk_1EB2E6670, &qword_1A8500938);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  (*(v5 + 16))(&v12 - v6, a1, v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  (*(v5 + 32))(v9 + v8, v7, v4);
  v10 = a2;
  sub_1A84E5A6C();
}

uint64_t sub_1A8249280(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A824FBE0;

  return sub_1A8248560(a1, v4);
}

uint64_t sub_1A8249338(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1AC56AC20](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1A82493D0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1A82493D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1A84E684C();
  sub_1A84E5E5C();
  v8 = sub_1A84E687C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1A84E67AC() & 1) != 0)
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

    sub_1A82488B8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

unint64_t sub_1A8249548()
{
  result = qword_1ED7674D8;
  if (!qword_1ED7674D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED7674D8);
  }

  return result;
}

uint64_t sub_1A8249594()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A82505F4;

  return sub_1A8249640(v2, v3);
}

uint64_t sub_1A8249640(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x1EEE6DFA0](sub_1A82496B8, 0, 0);
}

uint64_t sub_1A82496B8()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1A82503FC;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1A82497B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A84E5CAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A84E5CCC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A8244B68(0, &qword_1ED767638, 0x1E69E9610);
  v13 = sub_1A84E624C();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  aBlock[4] = sub_1A824C0D8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A824B720;
  aBlock[3] = &unk_1F1B71888;
  v15 = _Block_copy(aBlock);

  sub_1A84E5A8C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A824B214();
  sub_1A83EA2FC(&unk_1EB2E6680, &qword_1A8500940);
  sub_1A824B26C();
  sub_1A84E63CC();
  MEMORY[0x1AC56AD50](0, v12, v8, v15);
  _Block_release(v15);

  (*(v6 + 8))(v8, v5);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1A8249A60(void *a1, uint64_t a2, void *a3)
{
  v31 = a3;
  v5 = sub_1A84E5CAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A84E5CCC();
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A83EA2FC(&unk_1EB2E6670, &qword_1A8500938);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  if (*a1)
  {
    sub_1A8244B68(0, &qword_1ED767638, 0x1E69E9610);
    v29 = sub_1A84E624C();
    (*(v13 + 16))(v15, a2, v12);
    v16 = *(v13 + 80);
    v30 = v6;
    v17 = (v16 + 24) & ~v16;
    v18 = swift_allocObject();
    v19 = v5;
    v20 = v31;
    *(v18 + 16) = v31;
    (*(v13 + 32))(v18 + v17, v15, v12);
    aBlock[4] = sub_1A8250270;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A824B720;
    aBlock[3] = &unk_1F1B714F0;
    v21 = _Block_copy(aBlock);
    v22 = v20;
    sub_1A84E5A8C();
    v34 = MEMORY[0x1E69E7CC0];
    sub_1A824B214();
    sub_1A83EA2FC(&unk_1EB2E6680, &qword_1A8500940);
    sub_1A824B26C();
    sub_1A84E63CC();
    v23 = v29;
    MEMORY[0x1AC56AD50](0, v11, v8, v21);
    _Block_release(v21);

    (*(v30 + 8))(v8, v19);
    (*(v32 + 8))(v11, v33);
  }

  else
  {
    if (qword_1ED7675D0 != -1)
    {
      swift_once();
    }

    v25 = sub_1A84E5C9C();
    sub_1A824431C(v25, qword_1ED7679F8);
    v26 = sub_1A84E5C7C();
    v27 = sub_1A84E617C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1A823F000, v26, v27, "Setup request should be complete, resuming continuation", v28, 2u);
      MEMORY[0x1AC56D3F0](v28, -1, -1);
    }

    return sub_1A84E607C();
  }
}

uint64_t sub_1A8249EA4(void *a1)
{
  v3 = *(sub_1A83EA2FC(&unk_1EB2E6670, &qword_1A8500938) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A8249A60(a1, v1 + v4, v5);
}

uint64_t sub_1A8249F4C(uint64_t a1)
{
  v3 = *(sub_1A83EA2FC(&unk_1EB2E6670, &qword_1A8500938) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1A8249FD0(a1, v4, v5);
}

uint64_t sub_1A8249FD0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1A83EA2FC(&unk_1EB2E6670, &qword_1A8500938);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  sub_1A8244F9C(a1);
  (*(v7 + 16))(v10, a3, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  *(v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v13 = a2;
  sub_1A84E5A6C();
}

uint64_t sub_1A824A148()
{
  v1 = sub_1A83EA2FC(&unk_1EB2E6670, &qword_1A8500938);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

char *sub_1A824A1FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A83EA2FC(&unk_1EB2E8DC0, &qword_1A8500C50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1A824A310(id *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = a1[4];
      *buf = 138412290;
      v24 = v3;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Got back pending nicknames %@", buf, 0xCu);
    }
  }

  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(a1[4], "count")}];
  v5 = a1[4];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1A82B71EC;
  v21[3] = &unk_1E78109A0;
  v6 = v4;
  v22 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v21];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = a1[5];
      *buf = 138412290;
      v24 = v8;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Got back handled nicknames %@", buf, 0xCu);
    }
  }

  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(a1[5], "count")}];
  v10 = a1[5];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1A82B7278;
  v19[3] = &unk_1E78109A0;
  v11 = v9;
  v20 = v11;
  [v10 enumerateKeysAndObjectsUsingBlock:v19];
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = a1[6];
      *buf = 138412290;
      v24 = v13;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Got back archived nicknames %@", buf, 0xCu);
    }
  }

  v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(a1[6], "count")}];
  v15 = a1[6];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1A82B7304;
  v17[3] = &unk_1E78109A0;
  v18 = v14;
  v16 = v14;
  [v15 enumerateKeysAndObjectsUsingBlock:v17];
  [a1[7] updatePendingNicknames:v6 handledNicknames:v11 archivedNicknames:v16];
}

id sub_1A824A700(void *a1)
{
  result = [a1 userInfo];
  if (result)
  {
    v2 = result;
    v3 = sub_1A84E5D3C();

    v4 = sub_1A824A83C(v3);

    if (v4)
    {
      if (*(v4 + 16) && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
      {
        v6 = Strong;
        sub_1A83EA2FC(&qword_1EB2E8E90, &qword_1A850B540);
        v7 = sub_1A84E5D2C();

        [v6 nicknameStoreDidChange_];

        return swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  return result;
}

unint64_t sub_1A824A83C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A83EA2FC(&qword_1EB2E8E98, &qword_1A850B548);
    v2 = sub_1A84E657C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        sub_1A824B334(*(a1 + 48) + 40 * v11, v24);
        sub_1A8244F40(*(a1 + 56) + 32 * v11, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_1A824B334(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_1A824B2D4(v21, &unk_1EB2E8EA0, &unk_1A850B550);

          goto LABEL_23;
        }

        sub_1A8244F40(v22 + 8, v20);
        sub_1A824B2D4(v21, &unk_1EB2E8EA0, &unk_1A850B550);
        sub_1A83EA2FC(&qword_1EB2E8E90, &qword_1A850B540);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_1A824B390(v18, v19);
        v12 = result;
        if (v13)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v18;
          v9[1] = v19;

          *(v2[7] + 8 * v12) = v18;

          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v14 = (v2[6] + 16 * result);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * result) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_27;
          }

          v2[2] = v17;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

Swift::Void __swiftcall DaemonConnection.waitForSetup()()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 isMainThread];
  if (v3)
  {
    swift_beginAccess();
    sub_1A83EA2FC(&qword_1EB2E65A0, &unk_1A8500728);
    sub_1A84E59EC();
    v3 = swift_endAccess();
    if (v26 == 1)
    {
      if (qword_1ED7675D0 != -1)
      {
        swift_once();
      }

      v4 = sub_1A84E5C9C();
      sub_1A824431C(v4, qword_1ED7679F8);
      v5 = sub_1A84E5C7C();
      v6 = sub_1A84E617C();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_16;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "Already invoking setup on this thread, not blocking";
LABEL_15:
      _os_log_impl(&dword_1A823F000, v5, v6, v8, v7, 2u);
      MEMORY[0x1AC56D3F0](v7, -1, -1);
LABEL_16:

      return;
    }
  }

  MEMORY[0x1EEE9AC00](v3);
  sub_1A84E5A5C();
  sub_1A83EA2FC(&unk_1EB2E6590, &qword_1A8500720);
  sub_1A84E5A5C();
  v9 = aBlock;
  if (aBlock)
  {
    v10 = v28;
    if ([v2 isMainThread])
    {
      if (qword_1ED7675D0 != -1)
      {
        swift_once();
      }

      v11 = sub_1A84E5C9C();
      sub_1A824431C(v11, qword_1ED7679F8);
      v12 = sub_1A84E5C7C();
      v13 = sub_1A84E617C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1A823F000, v12, v13, "Starting to handle setup message", v14, 2u);
        MEMORY[0x1AC56D3F0](v14, -1, -1);
      }

      swift_beginAccess();
      sub_1A83EA2FC(&qword_1EB2E65A0, &unk_1A8500728);
      sub_1A84E59FC();
      v15 = swift_endAccess();
      v9(v15);
      sub_1A8245638(v9, v10);
      swift_beginAccess();
      sub_1A84E59FC();
      swift_endAccess();
      sub_1A84E5A5C();
      v5 = sub_1A84E5C7C();
      v6 = sub_1A84E617C();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_16;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "Finished handling setup message";
      goto LABEL_15;
    }

    sub_1A8245638(aBlock, v28);
    if (qword_1ED7675D0 != -1)
    {
      swift_once();
    }

    v16 = sub_1A84E5C9C();
    sub_1A824431C(v16, qword_1ED7679F8);
    v17 = sub_1A84E5C7C();
    v18 = sub_1A84E617C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1A823F000, v17, v18, "Caller needs main queue to wait for setup", v19, 2u);
      MEMORY[0x1AC56D3F0](v19, -1, -1);
    }

    sub_1A8244B68(0, &qword_1ED767638, 0x1E69E9610);
    v20 = sub_1A84E624C();
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1A824B764;
    *(v22 + 24) = v21;
    v31 = sub_1A824C0D8;
    v32 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = sub_1A83EB688;
    v30 = &unk_1F1B710E0;
    v23 = _Block_copy(&aBlock);
    v24 = v1;

    dispatch_sync(v20, v23);

    _Block_release(v23);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_1A824B11C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, v6);
}

unint64_t sub_1A824B214()
{
  result = qword_1ED7675C0;
  if (!qword_1ED7675C0)
  {
    sub_1A84E5CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7675C0);
  }

  return result;
}

unint64_t sub_1A824B26C()
{
  result = qword_1ED7675B0;
  if (!qword_1ED7675B0)
  {
    sub_1A83EC9D4(&unk_1EB2E6680, &qword_1A8500940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7675B0);
  }

  return result;
}

uint64_t sub_1A824B2D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1A83EA2FC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1A824B390(uint64_t a1, uint64_t a2)
{
  sub_1A84E684C();
  sub_1A84E5E5C();
  v4 = sub_1A84E687C();

  return sub_1A824B408(a1, a2, v4);
}

unint64_t sub_1A824B408(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1A84E67AC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1A824B4C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1A824B500(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A824A310;
  v14[3] = &unk_1E78101E0;
  v15 = v7;
  v16 = v8;
  v10 = *(a1 + 32);
  v17 = v9;
  v18 = v10;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void sub_1A824B5E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A824FB14;
  v5[3] = &unk_1E7810140;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void sub_1A824B684(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A8250258;
  v5[3] = &unk_1E7810140;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t sub_1A824B720(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1A824B8C4()
{
  v0 = objc_alloc_init(IMParentalControls);
  qword_1ED7677A0 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A824C064(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A824BD20);
  }

  _Unwind_Resume(a1);
}

void sub_1A824C108(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1A84E5D2C();
  (*(v2 + 16))(v2, v3);
}

void sub_1A824C17C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained listener];
  [v4 setupComplete:1 info:v3];
}

uint64_t sub_1A824C1EC@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A824C0D8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1A8242AE8(v3, v4);
}

id sub_1A824D260(void *a1)
{
  v1 = a1;
  if ([v1 supportsCrossAccountIDSMessaging])
  {
    v2 = [v1 idsServiceNames];
    v3 = [v2 firstObject];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1A824D5F0(uint64_t a1)
{
  if (qword_1ED7677F8 != -1)
  {
    sub_1A824D634();
  }

  v2 = qword_1ED7677F0;

  return v2;
}

uint64_t sub_1A824D648()
{
  v0 = objc_alloc_init(MEMORY[0x1E69A6170]);
  qword_1ED7677F0 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A824D788(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1A84E5CAC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A84E5CCC();
  v48 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED7675D0 != -1)
  {
    swift_once();
  }

  v12 = sub_1A84E5C9C();
  v45 = sub_1A824431C(v12, qword_1ED7679F8);
  v13 = sub_1A84E5C7C();
  v14 = sub_1A84E618C();
  v15 = os_log_type_enabled(v13, v14);
  v46 = a1;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v44 = v7;
    v17 = v16;
    v18 = swift_slowAlloc();
    v43 = a3;
    v19 = v18;
    aBlock[0] = v18;
    *v17 = 136315138;
    v20 = v10;
    v21 = v8;
    v22 = NSStringFromSelector(a1);
    v23 = sub_1A84E5DBC();
    v42 = a2;
    v24 = v23;
    v26 = v25;

    v8 = v21;
    v10 = v20;
    v27 = sub_1A82446BC(v24, v26, aBlock);

    *(v17 + 4) = v27;
    a2 = v42;
    _os_log_impl(&dword_1A823F000, v13, v14, "Receiving message from daemon %s, dispatching to main queue", v17, 0xCu);
    sub_1A8244788(v19);
    v28 = v19;
    a3 = v43;
    MEMORY[0x1AC56D3F0](v28, -1, -1);
    v29 = v17;
    v7 = v44;
    MEMORY[0x1AC56D3F0](v29, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    sub_1A8244B68(0, &qword_1ED767638, 0x1E69E9610);
    v32 = sub_1A84E624C();
    v33 = swift_allocObject();
    v33[2] = v46;
    v33[3] = a2;
    v33[4] = a3;
    v33[5] = v31;
    aBlock[4] = sub_1A825BDC0;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A824B720;
    aBlock[3] = &unk_1F1B71978;
    v34 = _Block_copy(aBlock);

    v35 = v31;

    v36 = v47;
    sub_1A84E5A8C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A824B214();
    sub_1A83EA2FC(&unk_1EB2E6680, &qword_1A8500940);
    sub_1A824B26C();
    v37 = v49;
    sub_1A84E63CC();
    MEMORY[0x1AC56AD50](0, v36, v37, v34);
    _Block_release(v34);

    (*(v8 + 8))(v37, v7);
    (*(v48 + 8))(v36, v10);
  }

  else
  {
    v38 = sub_1A84E5C7C();
    v39 = sub_1A84E619C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1A823F000, v38, v39, "Got daemon request but daemon connection no longer exists!", v40, 2u);
      MEMORY[0x1AC56D3F0](v40, -1, -1);
    }
  }
}

uint64_t sub_1A824DC50()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1A824DC9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A8250264;
  v5[3] = &unk_1E7810140;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t sub_1A824DF2C()
{
  v1 = [v0 brand];
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = [v0 ID];
  if (!v2)
  {
    sub_1A84E5DBC();
    v2 = sub_1A84E5D8C();
  }

  v3 = MEMORY[0x1AC56C3A0](v2);

  if (!v3)
  {
    return 1;
  }

LABEL_5:
  v4 = [v0 ID];
  if (!v4)
  {
    sub_1A84E5DBC();
    v4 = sub_1A84E5D8C();
  }

  v5 = [v4 __im_isChatBot];

  return v5;
}

void sub_1A824EE1C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *exc_buf)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A824EB0CLL);
  }

  JUMPOUT(0x1A824EE14);
}

NSComparisonResult IMComparePersonStatus(IMPersonStatus status, IMPersonStatus compareTo)
{
  v2 = qword_1A84FFD28[status];
  v3 = qword_1A84FFD28[compareTo];
  v4 = v2 == v3;
  v5 = v2 <= v3;
  v6 = NSOrderedDescending;
  if (v5)
  {
    v6 = NSOrderedAscending;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1A824F4AC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 chatResolutionPriority];
  if (v6 <= [v5 chatResolutionPriority])
  {
    v8 = [v4 chatResolutionPriority];
    v7 = v8 < [v5 chatResolutionPriority];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

id sub_1A824F64C()
{
  result = [objc_allocWithZone(IMUltraConstrainedNetworkMonitor) init];
  qword_1ED767518 = result;
  return result;
}

uint64_t sub_1A824F8C0(uint64_t *a1)
{
  result = sub_1A8245638(*a1, a1[1]);
  *a1 = 0;
  a1[1] = 0;
  return result;
}

uint64_t sub_1A824F8F4(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (qword_1ED7675D0 != -1)
  {
    swift_once();
  }

  v9 = sub_1A84E5C9C();
  sub_1A824431C(v9, qword_1ED7679F8);

  v10 = sub_1A84E5C7C();
  v11 = sub_1A84E617C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1A82446BC(a1, a2, &v15);
    _os_log_impl(&dword_1A823F000, v10, v11, "Completing deferred invocation of %s", v12, 0xCu);
    sub_1A8244788(v13);
    MEMORY[0x1AC56D3F0](v13, -1, -1);
    MEMORY[0x1AC56D3F0](v12, -1, -1);
  }

  return a3(a5);
}

void sub_1A824FA78(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A824FF2C;
  v5[3] = &unk_1E7810140;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t sub_1A824FB34()
{
  v1 = *(v0 + 24);

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A824FBAC(uint64_t a1)
{
  v1 = *sub_1A82471E0((a1 + 32), *(a1 + 56));

  return MEMORY[0x1EEE6DED8](v1);
}

uint64_t sub_1A824FBE4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A824FC44()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_1A824FD40()
{
  v1 = v0;
  if (qword_1ED767520 != -1)
  {
    swift_once();
  }

  v2 = sub_1A84E5C9C();
  sub_1A824431C(v2, qword_1ED7679E0);
  v3 = sub_1A84E5C7C();
  v4 = sub_1A84E61BC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A823F000, v3, v4, "Connection started, updating local nickname store.", v5, 2u);
    MEMORY[0x1AC56D3F0](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);

  return [v6 updateLocalNicknameStore];
}

void sub_1A824FE40()
{
  if (qword_1ED767520 != -1)
  {
    swift_once();
  }

  v0 = sub_1A84E5C9C();
  sub_1A824431C(v0, qword_1ED7679E0);
  oslog = sub_1A84E5C7C();
  v1 = sub_1A84E61BC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1A823F000, oslog, v1, "Opened Daemon connection", v2, 2u);
    MEMORY[0x1AC56D3F0](v2, -1, -1);
  }
}

uint64_t sub_1A8250270()
{
  sub_1A83EA2FC(&unk_1EB2E6670, &qword_1A8500938);

  return sub_1A82502E0();
}

uint64_t sub_1A82502E0()
{
  DaemonConnection.waitForSetup()();
  sub_1A83EA2FC(&unk_1EB2E6670, &qword_1A8500938);
  return sub_1A84E607C();
}

uint64_t sub_1A825032C()
{
  v1 = sub_1A83EA2FC(&unk_1EB2E6670, &qword_1A8500938);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A82503FC()
{

  return MEMORY[0x1EEE6DFA0](sub_1A824FB34, 0, 0);
}

uint64_t sub_1A8250514()
{

  return MEMORY[0x1EEE6DFA0](sub_1A824FBE4, 0, 0);
}

uint64_t sub_1A82505F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A82506E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A8250728()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_1A8250878(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1A83EA2FC(a2, a3);
    v5 = sub_1A84E657C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1A824B390(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1A8250988(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_1A82509D4(uint64_t a1)
{
  v2 = v1;
  v13 = sub_1A84E5DBC();
  sub_1A84E641C();
  if (*(a1 + 16) && (v4 = sub_1A8250C0C(v15), (v5 & 1) != 0))
  {
    sub_1A8244F40(*(a1 + 56) + 32 * v4, v16);
    sub_1A8250D18(v15);
    sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
    if (swift_dynamicCast())
    {
      v6 = v13;
      v14 = sub_1A84E5DBC();
      sub_1A84E641C();
      if (*(v6 + 16) && (v7 = sub_1A8250C0C(v15), (v8 & 1) != 0))
      {
        sub_1A8244F40(*(v6 + 56) + 32 * v7, v16);
        sub_1A8250D18(v15);

        if (swift_dynamicCast())
        {
          [v2 keyTransparencyOptInStateChanged_];
        }
      }

      else
      {

        sub_1A8250D18(v15);
      }

      return;
    }
  }

  else
  {
    sub_1A8250D18(v15);
  }

  if (qword_1EB2E4780 != -1)
  {
    swift_once();
  }

  v9 = sub_1A84E5C9C();
  sub_1A824431C(v9, qword_1EB2E47B0);
  v10 = sub_1A84E5C7C();
  v11 = sub_1A84E619C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1A823F000, v10, v11, "Received setup info but it did not contain KT info", v12, 2u);
    MEMORY[0x1AC56D3F0](v12, -1, -1);
  }
}

unint64_t sub_1A8250C0C(uint64_t a1)
{
  v2 = sub_1A84E63FC();

  return sub_1A8250C50(a1, v2);
}

unint64_t sub_1A8250C50(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1A824B334(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1AC56AF00](v9, a1);
      sub_1A8250D18(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_1A8250D6C(char a1)
{
  v3 = a1 & 1;
  v4 = *(v1 + OBJC_IVAR___IMKeyTransparencyController_state);

  os_unfair_lock_lock((v4 + 40));
  v5 = *(v4 + 17);
  *(v4 + 17) = a1;
  v6 = *(v4 + 16);
  *(v4 + 16) = 1;
  os_unfair_lock_unlock((v4 + 40));

  v7 = v6 ^ 1;
  if (v5 != v3 || (v7 & 1) != 0)
  {
    if (qword_1EB2E4780 != -1)
    {
      swift_once();
    }

    v8 = sub_1A84E5C9C();
    sub_1A824431C(v8, qword_1EB2E47B0);
    v9 = sub_1A84E5C7C();
    v10 = sub_1A84E618C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67174913;
      *(v11 + 4) = a1 & 1;
      *(v11 + 8) = 1026;
      *(v11 + 10) = v7 & 1;
      _os_log_impl(&dword_1A823F000, v9, v10, "Key transparency opt-in state changed to %{BOOL,private}d. Initial load? %{BOOL,public}d", v11, 0xEu);
      MEMORY[0x1AC56D3F0](v11, -1, -1);
    }

    sub_1A8250EEC(a1 & 1);
  }
}

void sub_1A8250EEC(char a1)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = IMKeyTransparencySelfOptInStateChangedNotification;
  sub_1A83EA2FC(&qword_1EB2E87A8, &qword_1A8509748);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A85013E0;
  *(inited + 32) = sub_1A84E5DBC();
  *(inited + 40) = v5;
  *(inited + 48) = a1;
  sub_1A8251018(inited);
  swift_setDeallocating();
  sub_1A824B2D4(inited + 32, &qword_1EB2E87B0, &qword_1A8509750);
  v6 = sub_1A84E5D2C();

  [v2 postNotificationName:v3 object:v6];
}

unint64_t sub_1A8251018(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A83EA2FC(&qword_1EB2E65D8, &qword_1A8500880);
    v3 = sub_1A84E657C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A824B390(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id sub_1A82511A0(void *a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = [a3 _stripFZIDPrefix];
  if (!v9 || ([v7 accountForUniqueID:v9], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v23 = 0;
    v12 = sub_1A825246C(v7, v8, v10, &v23);
    v13 = v12;
    if (v23 == 1)
    {
      v11 = v12;
LABEL_14:

      goto LABEL_15;
    }

    v14 = sub_1A8251424(v7, v8, v10, &v23);
    v15 = v14;
    if (v23 == 1)
    {
      v11 = v14;
LABEL_13:

      goto LABEL_14;
    }

    v16 = sub_1A8251638(v7, v8, v10, &v23);
    v17 = v16;
    if (v23 != 1)
    {
      if (v13)
      {
        v18 = v13;
        goto LABEL_11;
      }

      if (!v16)
      {
        v20 = [v7 accountsForService:v8];
        if ([v20 count])
        {
          v11 = [v20 __imFirstObject];
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v21 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v22 = [v7 accounts];
              *buf = 138413058;
              v25 = v8;
              v26 = 2112;
              v27 = v10;
              v28 = 2112;
              v29 = v9;
              v30 = 2112;
              v31 = v22;
              _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Couldn't find any account for service: %@, login: %@, guid: %@, accounts: %@", buf, 0x2Au);
            }
          }

          v11 = 0;
        }

        goto LABEL_12;
      }
    }

    v18 = v16;
LABEL_11:
    v11 = v18;
LABEL_12:

    goto LABEL_13;
  }

LABEL_15:

  return v11;
}

id sub_1A8251424(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = [v7 operationalAccountsForService:v8];
  if ([v10 count])
  {
    if ([v9 length])
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v27;
        v24 = v8;
        v25 = v7;
        v23 = a4;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v27 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v26 + 1) + 8 * i);
            v17 = [v16 strippedLogin];
            if ([v17 isEqualToIgnoringCase:v9])
            {

LABEL_17:
              if (v23)
              {
                *v23 = 1;
              }

              v21 = v16;

              v8 = v24;
              v7 = v25;
              goto LABEL_20;
            }

            v18 = [v16 aliases];
            v19 = [v18 containsObject:v9];

            if (v19)
            {
              goto LABEL_17;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
          v8 = v24;
          v7 = v25;
          a4 = v23;
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v20 = sub_1A8251424(v7, v8, 0, a4);
    }

    else
    {
      v20 = [v10 __imFirstObject];
    }

    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

LABEL_20:

  return v21;
}

id sub_1A8251638(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = [v7 activeAccountsForService:v8];
  if ([v10 count])
  {
    if ([v9 length])
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v27;
        v24 = v8;
        v25 = v7;
        v23 = a4;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v27 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v26 + 1) + 8 * i);
            v17 = [v16 strippedLogin];
            if ([v17 isEqualToIgnoringCase:v9])
            {

LABEL_17:
              if (v23)
              {
                *v23 = 1;
              }

              v21 = v16;

              v8 = v24;
              v7 = v25;
              goto LABEL_20;
            }

            v18 = [v16 aliases];
            v19 = [v18 containsObject:v9];

            if (v19)
            {
              goto LABEL_17;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
          v8 = v24;
          v7 = v25;
          a4 = v23;
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v20 = sub_1A8251638(v7, v8, 0, a4);
    }

    else
    {
      v20 = [v10 __imFirstObject];
    }

    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

LABEL_20:

  return v21;
}

id sub_1A82519EC(void *a1)
{
  v1 = [a1 context];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 senderHandle];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1A8251A48(void *a1)
{
  v1 = [a1 context];
  v2 = [v1 invitation];

  return v2;
}

uint64_t sub_1A8251EAC(int a1)
{
  if ((a1 + 1) > 6)
  {
    return 1;
  }

  else
  {
    return qword_1A84FFE58[a1 + 1];
  }
}

id sub_1A8252004()
{
  result = [objc_allocWithZone(IMKeyTransparencyController) init];
  qword_1EB2E47A8 = result;
  return result;
}

id sub_1A825204C()
{
  v1 = MEMORY[0x1E69E7CC0];
  v2 = sub_1A8252038(MEMORY[0x1E69E7CC0]);
  v3 = sub_1A8250864(v1);
  sub_1A83EA2FC(&qword_1EB2E87B8, &qword_1A8509758);
  v4 = swift_allocObject();
  *(v4 + 40) = 0;
  *(v4 + 16) = 0;
  *&v0[OBJC_IVAR___IMKeyTransparencyController_state] = v4;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  v5 = [objc_allocWithZone(MEMORY[0x1E69DB4F0]) initWithApplication_];
  *&v0[OBJC_IVAR___IMKeyTransparencyController_verifier] = v5;
  v12.receiver = v0;
  v12.super_class = IMKeyTransparencyController;
  v6 = objc_msgSendSuper2(&v12, sel_init);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 sharedController];
  v10 = [v9 listener];

  [v10 addHandler_];
  return v8;
}

uint64_t sub_1A82522A0()
{
  v0 = sub_1A84E5C9C();
  sub_1A82442B8(v0, qword_1EB2E47B0);
  sub_1A824431C(v0, qword_1EB2E47B0);
  sub_1A84E5C6C();
  return sub_1A84E5C8C();
}

void sub_1A825230C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  if (!v2)
  {
    v3 = [MEMORY[0x1E69A7FD0] sharedInstance];
    v4 = *(a1 + 32);
    v5 = *(v4 + 80);
    *(v4 + 80) = v3;

    v2 = *(*(a1 + 32) + 80);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

id sub_1A825246C(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = [v7 connectedAccountsForService:v8];
  if ([v10 count])
  {
    if ([v9 length])
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v27;
        v24 = v8;
        v25 = v7;
        v23 = a4;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v27 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v26 + 1) + 8 * i);
            v17 = [v16 strippedLogin];
            if ([v17 isEqualToIgnoringCase:v9])
            {

LABEL_17:
              if (v23)
              {
                *v23 = 1;
              }

              v21 = v16;

              v8 = v24;
              v7 = v25;
              goto LABEL_20;
            }

            v18 = [v16 aliases];
            v19 = [v18 containsObject:v9];

            if (v19)
            {
              goto LABEL_17;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
          v8 = v24;
          v7 = v25;
          a4 = v23;
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v20 = sub_1A825246C(v7, v8, 0, a4);
    }

    else
    {
      v20 = [v10 __imFirstObject];
    }

    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

LABEL_20:

  return v21;
}

void *_CreateIMMessageFromIMMessageItemDictionary(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (v6 && [v5 count])
  {
    v7 = [objc_alloc(objc_msgSend(MEMORY[0x1E69A80E0] classForMessageItemDictionary:{v5)), "initWithDictionary:", v5}];
    _ConfigureContextForIMItem(v7, v6, a3);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1A8253418(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A82533ECLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A82534F8()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  if ([v0 chatStyle] != 45)
  {
    return;
  }

  v4 = [v0 participants];
  sub_1A8253D64();
  v5 = sub_1A84E5FFC();

  v6 = v5 >> 62 ? sub_1A84E654C() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v6 != 1)
  {
    return;
  }

  v7 = [v0 participants];
  v8 = sub_1A84E5FFC();

  if (v8 >> 62)
  {
    if (sub_1A84E654C())
    {
      goto LABEL_7;
    }

LABEL_25:

    return;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_25;
  }

LABEL_7:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1AC56AF80](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v9 = *(v8 + 32);
  }

  v20 = v9;

  v10 = [v20 ID];
  if (!v10)
  {
    sub_1A84E5DBC();
    v10 = sub_1A84E5D8C();
  }

  v11 = [v10 __im_isChatBotPatterned];

  if (v11)
  {
    v12 = [v0 brandInfo];
    if (v12)
    {

      v13 = [v0 brandLogoURL];
      if (v13)
      {
        v14 = v13;
        sub_1A84E554C();

        v15 = sub_1A84E558C();
        (*(*(v15 - 8) + 56))(v3, 0, 1, v15);
        sub_1A824B2D4(v3, &qword_1EB2E7068, &unk_1A8501EB0);
        v16 = [v0 lastAddressedSIMID];
        [v20 fetchBrandInfoIfNecessaryWithSimID_];
LABEL_21:

        return;
      }

      v18 = sub_1A84E558C();
      (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
      sub_1A824B2D4(v3, &qword_1EB2E7068, &unk_1A8501EB0);
    }

    v16 = [v0 lastAddressedSIMID];
    [v20 forceFetchChatBotBrandInfoWithSimID_];
    goto LABEL_21;
  }

  v17 = v20;
}

uint64_t sub_1A82538EC()
{
  v0 = os_log_create("com.apple.Messages", "ChatItemUpdater");
  qword_1EB2EA100 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id sub_1A8253970(void *a1, uint64_t a2, Class *a3)
{
  v4 = a1;
  v5 = [v4 allChatProperties];
  if (v5 && (v6 = v5, v7 = sub_1A84E5D3C(), v6, v8 = sub_1A8253A88(v7), , v8))
  {
    v9 = objc_allocWithZone(*a3);
    v10 = sub_1A84E5D2C();

    v11 = [v9 initWithDictionary_];

    v4 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

unint64_t sub_1A8253A88(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A83EA2FC(&qword_1EB2E66B8, &qword_1A8500968);
    v2 = sub_1A84E657C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_1A824B334(*(a1 + 48) + 40 * v12, v27);
        sub_1A8244F40(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_1A824B334(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1A8244F40(v25 + 8, v20);
        sub_1A824B2D4(v24, &unk_1EB2E8EA0, &unk_1A850B550);
        v21 = v18;
        sub_1A8243DDC(v20, v22);
        v13 = v21;
        sub_1A8243DDC(v22, v23);
        sub_1A8243DDC(v23, &v21);
        result = sub_1A824B390(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_1A8244788(v10);
          result = sub_1A8243DDC(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_1A8243DDC(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_1A824B2D4(v24, &unk_1EB2E8EA0, &unk_1A850B550);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_1A8253D64()
{
  result = qword_1EB2E4760;
  if (!qword_1EB2E4760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2E4760);
  }

  return result;
}

void _IMItemsControllerSortItems(const __CFArray *a1)
{
  v2.length = CFArrayGetCount(a1);
  v2.location = 0;

  CFArraySortValues(a1, v2, sub_1A8254394, 0);
}

uint64_t sub_1A8254134(void *a1, void *a2, uint64_t a3, int a4)
{
  v6 = a1;
  v7 = a2;
  v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v9 = [v8 stewieEnabled];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v6;
        v11 = v7;
        if ([v10 isStewie] && objc_msgSend(v11, "isStewie"))
        {
          v12 = v10;
          v13 = v11;
          v14 = [v12 stewieConversationUUID];
          v15 = [v13 stewieConversationUUID];
          v16 = [v14 isEqual:v15];

          if (v16 && (v17 = [v12 stewieSequenceNumber], v17 != objc_msgSend(v13, "stewieSequenceNumber")))
          {
            v26 = [v12 stewieSequenceNumber];
            v27 = v26 > [v13 stewieSequenceNumber];
            v28 = [v12 stewieSequenceNumber];
            v18 = v27 - (v28 < [v13 stewieSequenceNumber]);
          }

          else
          {
            v18 = Testing_IMItemOrderMessageByDate_0(v12, v13);
          }

          goto LABEL_25;
        }
      }
    }
  }

  if (a4)
  {
    v19 = Testing_IMItemOrderMessageByDate_0(v6, v7);
  }

  else
  {
    v19 = IMItemCompareSortIDs(v6, v7);
  }

  v18 = v19;
  if (!v19)
  {
    v20 = [v6 isIncomingTypingOrCancelTypingMessage];
    v18 = v20 - [v7 isIncomingTypingOrCancelTypingMessage];
    if (!v18)
    {
      v21 = [v6 consumedSessionPayloads];
      if (v21 && (v22 = v21, [v7 consumedSessionPayloads], v23 = objc_claimAutoreleasedReturnValue(), v23, v22, !v23))
      {
        v18 = 1;
      }

      else
      {
        v24 = [v6 consumedSessionPayloads];
        if (v24)
        {

          v18 = 0;
        }

        else
        {
          v25 = [v7 consumedSessionPayloads];

          if (v25)
          {
            v18 = -1;
          }

          else
          {
            v18 = 0;
          }
        }
      }
    }
  }

LABEL_25:

  return v18;
}

uint64_t Testing_IMItemOrderMessageByDate_0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (![v3 messageID] || !objc_msgSend(v4, "messageID"))
  {
    goto LABEL_8;
  }

  v5 = [v3 time];
  v6 = [v4 time];
  v7 = [v5 compare:v6];

  if (v7 == 1)
  {
    goto LABEL_9;
  }

  if (!v7)
  {
LABEL_8:
    v7 = sub_1A8254B84(v3, v4);
    goto LABEL_9;
  }

  if (v7 != -1)
  {
    v7 = 0;
  }

LABEL_9:

  return v7;
}

void _IMItemsControllerReplaceItems(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = [MEMORY[0x1E695DEC8] array];
  }

  v7 = v6;
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = [MEMORY[0x1E695DEC8] array];
  }

  v25 = v7;
  v9 = [v8 differenceFromArray:v7 withOptions:0 usingEquivalenceTest:{&unk_1F1B6F2A0, v8}];
  v30 = 0;
  v31 = 0;
  IMIndexesFromOrderedCollectionDifference(v9, &v31, &v30);
  v10 = v31;
  v11 = v30;
  v12 = [a2 objectsAtIndexes:v11];
  [a2 removeObjectsAtIndexes:v11];
  v13 = [a3 objectsAtIndexes:v10];
  [a2 insertObjects:v13 atIndexes:v10];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        if (_IMItemsControllerIndexOfExistingItem(a2, v19, 0) == -1 && sub_1A8392DC4(a2, -1, v19, 0))
        {
          v20 = _IMItemsControllerInsertionIndexForItem(a2, v19);
          CFArrayInsertValueAtIndex(a2, v20, v19);
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v16);
  }

  Count = CFArrayGetCount(a2);
  if (Count)
  {
    v22 = Count - 1;
    do
    {
      v23 = CFArrayGetValueAtIndex(a2, v22);
      [v5 _didReplaceItem:a2 oldItem:v23 idx:v22];

      --v22;
    }

    while (v22 != -1);
  }
}

BOOL sub_1A82546E8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (sub_1A8254760(v4, v5))
  {
    v6 = sub_1A8254134(v4, v5, 0, 1) == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1A8254760(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  Class = object_getClass(v3);
  if (Class == object_getClass(v4))
  {
    v6 = sub_1A82547D8(v3, v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1A82547D8(void *a1, void *a2)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3 == v4)
  {
    v8 = 1;
    goto LABEL_24;
  }

  v5 = [v3 isTypingOrCancelTypingMessage];
  v6 = [v4 isTypingOrCancelTypingMessage];
  if (!v5 || !v6)
  {
    v9 = MEMORY[0x1E695DF70];
    v31[0] = *MEMORY[0x1E69A7AF8];
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
    v11 = [v9 arrayWithArray:v10];

    v12 = [MEMORY[0x1E695DFA8] setWithArray:MEMORY[0x1E695E0F0]];
    [v12 addObject:*MEMORY[0x1E69A7AE0]];
    [v12 addObject:*MEMORY[0x1E69A7AD8]];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_22;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_22;
    }

    v13 = v3;
    v14 = v4;
    v15 = [v13 service];
    if ([v11 containsObject:v15])
    {
    }

    else
    {
      v16 = [v14 service];
      v17 = [v11 containsObject:v16];

      if (!v17)
      {
LABEL_15:
        v22 = [v13 service];
        if ([v12 containsObject:v22])
        {
          v23 = [v14 service];
          v24 = [v12 containsObject:v23];

          if (v24)
          {
            v18 = [v13 guid];
            v19 = [v14 originalGUID];
            if ([v18 isEqualToString:v19])
            {
              goto LABEL_12;
            }

            v25 = [v14 guid];
            v26 = [v13 originalGUID];
            v30 = [v25 isEqualToString:v26];

            if (v30)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
        }

LABEL_22:
        v27 = v4;
        v13 = [v3 guid];
        v14 = [v27 guid];

        v8 = [v13 isEqualToString:v14];
        goto LABEL_23;
      }
    }

    v18 = [v13 guid];
    v19 = [v14 fallbackHash];
    if ([v18 isEqualToString:v19])
    {
LABEL_12:

LABEL_14:
      v8 = 1;
LABEL_23:

      goto LABEL_24;
    }

    v20 = [v14 guid];
    v21 = [v13 fallbackHash];
    v29 = [v20 isEqualToString:v21];

    if (v29)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v7 = [v3 isFromMe];
  v8 = v7 ^ [v4 isFromMe] ^ 1;
LABEL_24:

  return v8;
}

uint64_t sub_1A8254B84(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 messageID] - 1;
  v5 = [v3 messageID];

  return (__PAIR128__(v4 > v5 - 1, v4) - (v5 - 1)) >> 64;
}

uint64_t sub_1A8254BE4(void *a1)
{
  v2 = MEMORY[0x1E69A8138];
  [a1 flags];
  [a1 hasEditedParts];

  return MEMORY[0x1EEE66B58](v2, sel_isIncomingTypingOrCancelTypingMessage_isEditedMessage_);
}

void IMIndexesFromOrderedCollectionDifference(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [MEMORY[0x1E696AD50] indexSet];
  v7 = [MEMORY[0x1E696AD50] indexSet];
  v8 = [v5 insertions];
  v9 = [v5 removals];
  if ([v5 hasChanges])
  {
    v22 = a3;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      do
      {
        v14 = 0;
        do
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [v6 addIndex:{objc_msgSend(*(*(&v27 + 1) + 8 * v14++), "index")}];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v12);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = v9;
    v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        v19 = 0;
        do
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [v7 addIndex:{objc_msgSend(*(*(&v23 + 1) + 8 * v19++), "index")}];
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v17);
    }

    a3 = v22;
  }

  v20 = v6;
  *a2 = v6;
  v21 = v7;
  *a3 = v7;
}

id _IMItemsControllerGetTypingMessage(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
LABEL_7:
    v4 = 0;
  }

  else
  {
    v3 = Count + 1;
    while (1)
    {
      v4 = CFArrayGetValueAtIndex(a1, v3 - 2);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && ([v4 isTypingMessage])
      {
        break;
      }

      if (--v3 <= 1)
      {
        goto LABEL_7;
      }
    }
  }

  return v4;
}

uint64_t IMIsOscarEnabled()
{
  v0 = qword_1ED7674A0;
  if (qword_1ED7674A0 == -1)
  {
    v1 = +[IMAccountController sharedInstance];
    qword_1ED7674A0 = [v1 activeAccountsAreEligibleForiMessageJunk];

    [MEMORY[0x1E69A8020] setSupportsiMessageJunk:qword_1ED7674A0 == 1];
    v0 = qword_1ED7674A0;
  }

  if (v0 == 1)
  {
    return 1;
  }

  v3 = +[IMChatRegistry sharedRegistry];
  v4 = [v3 filterediMessageChatsExist];

  return v4;
}

uint64_t sub_1A8255A40()
{
  result = MEMORY[0x1AC56C550](@"FTDeviceSupport", @"FTServices");
  qword_1ED767680 = result;
  return result;
}

void sub_1A8255B88(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "TUConversationManager registered", buf, 2u);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8360D60;
  block[3] = &unk_1E780FCB0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void sub_1A8255F88(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1A8255DA0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A8256084()
{
  v0 = objc_alloc_init(IMTextInputCryptographer);
  qword_1EB2E90C8 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A82561EC()
{
  v0 = objc_alloc_init(IMBalloonPluginManager);
  qword_1ED767668 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A8256FFC()
{
  v0 = os_log_create("com.apple.Messages", "IMBalloonPluginManager");
  qword_1ED767648 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A82572C8()
{
  v0 = objc_alloc_init(IMChorosMonitor);
  qword_1ED7678D8 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id sub_1A82574B8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 lastPathComponent];
  v4 = [v3 hasSuffix:@".bundle"];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithURL:v2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1A8257644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8257768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8257A60(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  if (!qword_1EB2E9FC0)
  {
    v2 = *(a1 + 32);
    v3 = [v2 _createSingleton__im];
    [v2 __setSingleton__im:v3];
  }

  objc_sync_exit(obj);
}

void sub_1A8257D94(uint64_t a1)
{
  v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{@"com.apple.ExtensionTester.NullMessagesAppExtension", @"com.apple.hellbender.messagesextension", @"com.apple.PPTPong.MessagesExtension", @"com.apple.PPTTimeLabel.MessagesExtension", 0}];
  if (IMIsRunningInCameraClient())
  {
    [v4 addObject:*MEMORY[0x1E69A68F8]];
  }

  if ([*(a1 + 32) _shouldAddSafetyMonitorToBlockList])
  {
    [v4 addObject:*MEMORY[0x1E69A6930]];
  }

  if ([*(a1 + 32) _shouldAddFindMyToBlockList])
  {
    [v4 addObject:*MEMORY[0x1E69A6938]];
  }

  if ([*(a1 + 32) _shouldAddGenPlaygroundToBlockList])
  {
    [v4 addObject:*MEMORY[0x1E69A69D0]];
  }

  v2 = [v4 copy];
  v3 = qword_1ED767658;
  qword_1ED767658 = v2;
}

id sub_1A8258434(void *a1)
{
  v2 = [a1 context];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 message];

    if (!v4)
    {
      v5 = [v3 senderHandle];
      v6 = [v3 otherHandle];
      v7 = [IMMessage messageFromIMMessageItem:a1 sender:v5 subject:v6];
      [v3 setMessage:v7];
    }

    v8 = [v3 message];
  }

  else
  {
    v8 = 0;
  }

  [v8 setSortID:{objc_msgSend(a1, "sortID")}];

  return v8;
}

id _IMBestAccountForIMItem(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = [v9 accountID];
  v14 = 0x1E780D000uLL;
  if (!v13 || (+[IMAccountController sharedInstance](IMAccountController, "sharedInstance"), v15 = objc_claimAutoreleasedReturnValue(), [v15 accountForUniqueID:v13], v16 = objc_claimAutoreleasedReturnValue(), v15, !v16))
  {
    v17 = [v9 service];
    v18 = [IMServiceImpl serviceWithInternalName:v17];
    v19 = [v12 service];

    if (v19 == v18)
    {
      if (a5)
      {
        v22 = v12;
        *a5 = v12;
      }

      v16 = v12;
    }

    else
    {
      v20 = +[IMAccountController sharedInstance];
      v16 = [v20 bestAccountForService:v18];

      if (a5)
      {
        v21 = v16;
        *a5 = v16;
      }

      v14 = 0x1E780D000;
    }

    if (!v16)
    {
      v23 = [v10 account];
      if (v23)
      {
        v16 = v23;
      }

      else
      {
        v24 = [*(v14 + 1960) sharedInstance];
        v16 = [v24 accountForUniqueID:v11];

        if (!v16)
        {
          v25 = [*(v14 + 1960) sharedInstance];
          v16 = [v25 bestAccountForService:0];
        }
      }
    }
  }

  return v16;
}

uint64_t _CreateIMMessageFromIMItem(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if (![v5 type])
    {
      if ([v5 isFromMe])
      {
        v9 = [v7 loginIMHandle];
        v11 = [v5 handle];
        v12 = [v7 imHandleWithID:v11 alreadyCanonical:a3];
      }

      else
      {
        v15 = [v5 sender];
        v9 = [v7 imHandleWithID:v15 alreadyCanonical:a3];

        v12 = [v7 loginIMHandle];
      }

      [v5 _updateContextWithSenderHandle:v9 otherHandle:v12];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v5;
        if (([v16 hasUnseenMention] & 1) == 0)
        {
          v17 = [v16 message];
          [v17 setHasMention:0];
        }
      }

      v8 = [v5 message];
      goto LABEL_21;
    }

    v9 = [v5 sender];
    if ([v5 type] == 6)
    {
      [v5 handle];
    }

    else
    {
      [v5 otherHandle];
    }
    v10 = ;
    v12 = v10;
    if (v9)
    {
      v13 = [v7 imHandleWithID:v9 alreadyCanonical:1];
      if (v12)
      {
LABEL_11:
        v14 = [v7 imHandleWithID:v12 alreadyCanonical:1];
LABEL_14:
        [v5 _updateContextWithSenderHandle:v13 otherHandle:v14];

        v8 = 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      v13 = 0;
      if (v10)
      {
        goto LABEL_11;
      }
    }

    v14 = 0;
    goto LABEL_14;
  }

LABEL_22:

  return v8;
}

void sub_1A8258B70(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = *(a1 + 32);
  v6 = [a3 startDate];
  [v5 timeIntervalSinceDate:v6];
  v8 = v7;

  if (v8 > 10.0)
  {
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    if (v10)
    {
      v11 = v10;
      v12 = *(v9 + 40);
      *(v9 + 40) = v11;
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v14 = *(*(a1 + 40) + 8);
      v12 = *(v14 + 40);
      *(v14 + 40) = v13;
    }

    [*(*(*(a1 + 40) + 8) + 40) addObject:v15];
  }
}

uint64_t sub_1A82591E0()
{
  v0 = objc_alloc_init(IMDowntimeController);
  qword_1ED7678E0 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A825967C(uint64_t a1)
{
  v2 = [objc_opt_class() fetchEmergencyNumbersSetWithProviderManager:*(*(a1 + 32) + 40)];
  v3 = sub_1A8259F60();
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = v2;
  v9 = v2;

  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = v3;
  v8 = v3;

  os_unfair_lock_unlock((*(a1 + 32) + 8));
}

void sub_1A82597A0(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E6999F48]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A834BEC0;
  v8[3] = &unk_1E780FDC8;
  objc_copyWeak(&v9, (a1 + 32));
  v3 = [v2 initWithPolicyChangeHandler:v8];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A825F4A0;
  block[3] = &unk_1E7810450;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
}

id IMHashOfHashesForStringArray(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = [a1 sortedArrayUsingComparator:&unk_1F1B6EEC0];
    v2 = objc_opt_new();
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%tu", objc_msgSend(*(*(&v11 + 1) + 8 * i), "hash")];;
          [v2 appendString:v8];
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%tu", objc_msgSend(v2, "hash")];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_1A8259A90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259AA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259AB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259AC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259AD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259AE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259AF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259B00(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259B10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259B20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259B30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259B40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259B50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259B60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259B70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259B80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259B90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259BA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259BB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259BC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259BD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259BE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259BF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259C00(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259C10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259C20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259C30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259C40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259C50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259C60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259C70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259C80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259C90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259CA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259CB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259CC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A8259CD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A8259E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1A8259F60()
{
  if (+[IMDowntimeController isContactLimitsFeatureEnabled])
  {
    if (qword_1ED7676C0 != -1)
    {
      sub_1A8259FC0();
    }

    v0 = qword_1ED7676C8;
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

void sub_1A8259FD4()
{
  qword_1ED767700 = MEMORY[0x1AC56C550](@"STConversation", @"ScreenTimeCore");
  v0 = MEMORY[0x1AC56C550](@"STConversationContext", @"ScreenTimeCore");
  qword_1ED7676F8 = v0;
  if (qword_1ED767700)
  {
    if (v0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v1 = MEMORY[0x1E696AEC0];
  v2 = IMFileLocationTrimFileName();
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1B76F98];
  v4 = [v1 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"IMSTConversationClass", "STConversation *_createSTConversation(void)_block_invoke", v2, 242, v3];

  v5 = IMGetAssertionFailureHandler();
  if (v5)
  {
    v5(v4);
  }

  else
  {
    v6 = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1AB0();
    }
  }

  if (!qword_1ED7676F8)
  {
LABEL_10:
    v7 = MEMORY[0x1E696AEC0];
    v8 = IMFileLocationTrimFileName();
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1B76F98];
    v10 = [v7 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"IMSTConversationContextClass", "STConversation *_createSTConversation(void)_block_invoke", v8, 243, v9];

    v11 = IMGetAssertionFailureHandler();
    if (v11)
    {
      v11(v10);
    }

    else
    {
      v12 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E1AB0();
      }
    }
  }

LABEL_16:
  qword_1ED7676F0 = MEMORY[0x1AC56C560]("STManagementStateStateDidChange", @"ScreenTimeCore");
  if (!qword_1ED7676F0)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = IMFileLocationTrimFileName();
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1B76F98];
    v16 = [v13 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"IMSTManagementStateStateDidChangeNotificationName", "STConversation *_createSTConversation(void)_block_invoke", v14, 245, v15];

    v17 = IMGetAssertionFailureHandler();
    if (v17)
    {
      v17(v16);
    }

    else
    {
      v18 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E1AB0();
      }
    }
  }

  v19 = IMIsRunningInMessages();
  v20 = [qword_1ED767700 alloc];
  if (v19)
  {
    v21 = [v20 initWithBundleIdentifier:@"com.apple.MobileSMS"];
  }

  else
  {
    v21 = [v20 initSynchronouslyWithBundleIdentifier:@"com.apple.MobileSMS"];
  }

  v22 = qword_1ED7676C8;
  qword_1ED7676C8 = v21;
}

uint64_t sub_1A825BDCC(const char *a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  if (qword_1ED7675D0 != -1)
  {
    swift_once();
  }

  v7 = sub_1A84E5C9C();
  sub_1A824431C(v7, qword_1ED7679F8);
  v8 = sub_1A84E5C7C();
  v9 = sub_1A84E617C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136315138;
    v12 = NSStringFromSelector(a1);
    v13 = sub_1A84E5DBC();
    v15 = v14;

    v16 = sub_1A82446BC(v13, v15, v19);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_1A823F000, v8, v9, "Processing message from daemon %s", v10, 0xCu);
    sub_1A8244788(v11);
    MEMORY[0x1AC56D3F0](v11, -1, -1);
    MEMORY[0x1AC56D3F0](v10, -1, -1);
  }

  v17 = *(a4 + OBJC_IVAR___IMDaemonConnection_listener);
  v19[3] = swift_getObjectType();
  v19[0] = v17;
  swift_unknownObjectRetain();
  a2(v19);
  return sub_1A8244788(v19);
}

uint64_t sub_1A825C0DC(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    *(*(result + 32) + 12) = 1;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

void sub_1A825C334()
{
  v0 = +[IMDaemonController sharedController];
  v1 = [v0 isConnected];

  if (v1)
  {
    v3 = +[IMDaemonController sharedController];
    v2 = [v3 remoteDaemon];
    [v2 broadcastCloudKitStateAfterFetchingAccountStatus];
  }
}

uint64_t sub_1A825C49C()
{
  v0 = os_log_create("com.apple.Messages", "IMCloudKitHooks");
  qword_1ED767770 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id sub_1A825C5D0(int a1, uint64_t a2)
{
  v3 = v2;
  if (!a2)
  {
    if (qword_1EB2E46B8 != -1)
    {
      swift_once();
    }

    v6 = sub_1A84E5C9C();
    sub_1A824431C(v6, qword_1EB2FEFF8);
    v7 = sub_1A84E5C7C();
    v8 = sub_1A84E619C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A823F000, v7, v8, "state dictionary is nil when creating CloudKitSyncState", v9, 2u);
      MEMORY[0x1AC56D3F0](v9, -1, -1);
    }
  }

  v3[OBJC_IVAR___IMCloudKitSyncState_accountEnabled] = a1 & 1;
  v10 = sub_1A84E5DBC();
  if (a2)
  {
    *&v159 = v10;
    *(&v159 + 1) = v11;
    sub_1A84E641C();
    if (*(a2 + 16) && (v12 = sub_1A8250C0C(v157), (v13 & 1) != 0))
    {
      sub_1A8244F40(*(a2 + 56) + 32 * v12, &v159);
      sub_1A8250D18(v157);
    }

    else
    {
      sub_1A8250D18(v157);
      v159 = 0u;
      v160 = 0u;
    }

    sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
    v14 = swift_dynamicCast();
    v15 = v155;
    if (!v14)
    {
      v15 = 0;
    }
  }

  else
  {

    v15 = 0;
  }

  *&v3[OBJC_IVAR___IMCloudKitSyncState_accountStatus] = v15;
  v16 = sub_1A84E5DBC();
  if (a2)
  {
    *&v159 = v16;
    *(&v159 + 1) = v17;
    sub_1A84E641C();
    if (*(a2 + 16) && (v18 = sub_1A8250C0C(v157), (v19 & 1) != 0))
    {
      sub_1A8244F40(*(a2 + 56) + 32 * v18, &v159);
      sub_1A8250D18(v157);
    }

    else
    {
      sub_1A8250D18(v157);
      v159 = 0u;
      v160 = 0u;
    }

    sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
    v20 = swift_dynamicCast() & v155;
  }

  else
  {

    v20 = 0;
  }

  v3[OBJC_IVAR___IMCloudKitSyncState_hasExited] = v20;
  v21 = sub_1A84E5DBC();
  v154 = a1;
  if (a2)
  {
    *&v159 = v21;
    *(&v159 + 1) = v22;
    sub_1A84E641C();
    if (*(a2 + 16) && (v23 = sub_1A8250C0C(v157), (v24 & 1) != 0))
    {
      sub_1A8244F40(*(a2 + 56) + 32 * v23, &v159);
      sub_1A8250D18(v157);
    }

    else
    {
      sub_1A8250D18(v157);
      v159 = 0u;
      v160 = 0u;
    }

    sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
    sub_1A83EA2FC(&qword_1EB2E7040, &unk_1A85013C0);
    if (swift_dynamicCast())
    {
      v25 = v155;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {

    v25 = 0;
  }

  *&v3[OBJC_IVAR___IMCloudKitSyncState__exitDate] = v25;
  v26 = sub_1A84E5DBC();
  if (!a2)
  {
    v40 = v25;

    v153 = 0;
    *&v3[OBJC_IVAR___IMCloudKitSyncState__lastSyncDate] = 0;
    goto LABEL_49;
  }

  *&v159 = v26;
  *(&v159 + 1) = v27;
  v28 = v25;
  sub_1A84E641C();
  if (*(a2 + 16) && (v29 = sub_1A8250C0C(v157), (v30 & 1) != 0))
  {
    sub_1A8244F40(*(a2 + 56) + 32 * v29, &v159);
    sub_1A8250D18(v157);
  }

  else
  {
    sub_1A8250D18(v157);
    v159 = 0u;
    v160 = 0u;
  }

  sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
  sub_1A83EA2FC(&qword_1EB2E7040, &unk_1A85013C0);
  if (swift_dynamicCast())
  {
    v31 = v155;
  }

  else
  {
    v31 = 0;
  }

  *&v3[OBJC_IVAR___IMCloudKitSyncState__lastSyncDate] = v31;
  v155 = sub_1A84E5DBC();
  v156 = v32;
  v153 = v31;
  v33 = v31;

  sub_1A84E641C();
  if (!*(a2 + 16) || (v34 = sub_1A8250C0C(v157), (v35 & 1) == 0))
  {

    sub_1A8250D18(v157);
LABEL_49:
    v159 = 0u;
    v160 = 0u;
    goto LABEL_50;
  }

  sub_1A8244F40(*(a2 + 56) + 32 * v34, &v159);
  sub_1A8250D18(v157);

  if (!*(&v160 + 1))
  {
LABEL_50:
    sub_1A824B2D4(&v159, &qword_1EB2E66B0, &qword_1A8500960);
    goto LABEL_51;
  }

  sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  if (swift_dynamicCast())
  {
    v36 = v157[0];
    *&v159 = sub_1A84E5DBC();
    *(&v159 + 1) = v37;
    sub_1A84E641C();
    if (*(v36 + 16) && (v38 = sub_1A8250C0C(v157), (v39 & 1) != 0))
    {
      sub_1A8244F40(*(v36 + 56) + 32 * v38, &v159);
      sub_1A8250D18(v157);
    }

    else
    {
      sub_1A8250D18(v157);
      v159 = 0u;
      v160 = 0u;
    }

    sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
    sub_1A83EA2FC(&qword_1EB2E7030, &qword_1A85013B0);
    if ((swift_dynamicCast() & 1) != 0 && (v156 & 1) == 0)
    {
      v108 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970_];
    }

    else
    {
      v108 = 0;
    }

    *&v3[OBJC_IVAR___IMCloudKitSyncState__lastFullSyncDate] = v108;
    *&v159 = sub_1A84E5DBC();
    *(&v159 + 1) = v140;
    sub_1A84E641C();
    if (*(v36 + 16) && (v141 = sub_1A8250C0C(v157), (v142 & 1) != 0))
    {
      sub_1A8244F40(*(v36 + 56) + 32 * v141, &v159);
      sub_1A8250D18(v157);
    }

    else
    {
      sub_1A8250D18(v157);
      v159 = 0u;
      v160 = 0u;
    }

    if ((swift_dynamicCast() & 1) != 0 && (v156 & 1) == 0)
    {
      v143 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970_];
    }

    else
    {
      v143 = 0;
    }

    *&v3[OBJC_IVAR___IMCloudKitSyncState__lastFullPartialSyncDate] = v143;
    *&v159 = sub_1A84E5DBC();
    *(&v159 + 1) = v144;
    sub_1A84E641C();
    if (*(v36 + 16) && (v145 = sub_1A8250C0C(v157), (v146 & 1) != 0))
    {
      sub_1A8244F40(*(v36 + 56) + 32 * v145, &v159);
      sub_1A8250D18(v157);
    }

    else
    {
      sub_1A8250D18(v157);
      v159 = 0u;
      v160 = 0u;
    }

    sub_1A83EA2FC(&qword_1EB2E7038, &qword_1A85013B8);
    if (swift_dynamicCast())
    {
      v147 = v155;
    }

    else
    {
      v147 = 0;
    }

    *&v159 = sub_1A84E5DBC();
    *(&v159 + 1) = v148;
    sub_1A84E641C();
    if (*(v36 + 16) && (v149 = sub_1A8250C0C(v157), (v150 & 1) != 0))
    {
      sub_1A8244F40(*(v36 + 56) + 32 * v149, &v159);
      sub_1A8250D18(v157);
    }

    else
    {

      sub_1A8250D18(v157);
      v159 = 0u;
      v160 = 0u;
    }

    if (swift_dynamicCast())
    {
      v151 = v155;
    }

    else
    {
      v151 = 0;
    }

    if (v147)
    {

      LOBYTE(v147) = v151 == 0;
    }

    v3[OBJC_IVAR___IMCloudKitSyncState__isBetweenInitialAndFullSync] = v147;
    v41 = sub_1A84E5DBC();
    goto LABEL_52;
  }

LABEL_51:
  *&v3[OBJC_IVAR___IMCloudKitSyncState__lastFullSyncDate] = 0;
  *&v3[OBJC_IVAR___IMCloudKitSyncState__lastFullPartialSyncDate] = 0;
  v3[OBJC_IVAR___IMCloudKitSyncState__isBetweenInitialAndFullSync] = 0;
  v41 = sub_1A84E5DBC();
  if (!a2)
  {

    v45 = 0;
    goto LABEL_58;
  }

LABEL_52:
  *&v159 = v41;
  *(&v159 + 1) = v42;
  sub_1A84E641C();
  if (*(a2 + 16) && (v43 = sub_1A8250C0C(v157), (v44 & 1) != 0))
  {
    sub_1A8244F40(*(a2 + 56) + 32 * v43, &v159);
    sub_1A8250D18(v157);
  }

  else
  {
    sub_1A8250D18(v157);
    v159 = 0u;
    v160 = 0u;
  }

  sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
  v45 = swift_dynamicCast() & v155;
LABEL_58:
  v3[OBJC_IVAR___IMCloudKitSyncState_isDisablingDevices] = v45;
  v46 = sub_1A84E5DBC();
  if (a2)
  {
    *&v159 = v46;
    *(&v159 + 1) = v47;
    sub_1A84E641C();
    if (*(a2 + 16) && (v48 = sub_1A8250C0C(v157), (v49 & 1) != 0))
    {
      sub_1A8244F40(*(a2 + 56) + 32 * v48, &v159);
      sub_1A8250D18(v157);
    }

    else
    {
      sub_1A8250D18(v157);
      v159 = 0u;
      v160 = 0u;
    }

    sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_67;
    }

    v50 = v155;
    if ((v155 & 0x8000000000000000) == 0)
    {
      goto LABEL_68;
    }

    __break(1u);
  }

LABEL_67:
  v50 = 0;
LABEL_68:
  *&v3[OBJC_IVAR___IMCloudKitSyncState_syncControllerSyncState] = v50;
  v51 = sub_1A84E5DBC();
  if (a2)
  {
    *&v159 = v51;
    *(&v159 + 1) = v52;
    sub_1A84E641C();
    if (*(a2 + 16) && (v53 = sub_1A8250C0C(v157), (v54 & 1) != 0))
    {
      sub_1A8244F40(*(a2 + 56) + 32 * v53, &v159);
      sub_1A8250D18(v157);
    }

    else
    {
      sub_1A8250D18(v157);
      v159 = 0u;
      v160 = 0u;
    }

    sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
    v55 = swift_dynamicCast();
    v56 = v155;
    if (!v55)
    {
      v56 = 0;
    }
  }

  else
  {

    v56 = 0;
  }

  *&v3[OBJC_IVAR___IMCloudKitSyncState_syncControllerRecordType] = v56;
  v57 = sub_1A84E5DBC();
  if (!a2)
  {

    *&v3[OBJC_IVAR___IMCloudKitSyncState_syncControllerSyncType] = 0;
    if ((v45 & 1) == 0)
    {
      sub_1A84E5DBC();

      v66 = 0;
      goto LABEL_95;
    }

LABEL_89:
    v66 = 2;
    goto LABEL_95;
  }

  *&v159 = v57;
  *(&v159 + 1) = v58;
  sub_1A84E641C();
  if (*(a2 + 16) && (v59 = sub_1A8250C0C(v157), (v60 & 1) != 0))
  {
    sub_1A8244F40(*(a2 + 56) + 32 * v59, &v159);
    sub_1A8250D18(v157);
  }

  else
  {
    sub_1A8250D18(v157);
    v159 = 0u;
    v160 = 0u;
  }

  sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
  v61 = swift_dynamicCast();
  v62 = v155;
  if (!v61)
  {
    v62 = 0;
  }

  *&v3[OBJC_IVAR___IMCloudKitSyncState_syncControllerSyncType] = v62;
  if (v45)
  {
    goto LABEL_89;
  }

  *&v159 = sub_1A84E5DBC();
  *(&v159 + 1) = v63;
  sub_1A84E641C();
  if (*(a2 + 16) && (v64 = sub_1A8250C0C(v157), (v65 & 1) != 0))
  {
    sub_1A8244F40(*(a2 + 56) + 32 * v64, &v159);
    sub_1A8250D18(v157);
  }

  else
  {
    sub_1A8250D18(v157);
    v159 = 0u;
    v160 = 0u;
  }

  sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
  v67 = swift_dynamicCast();
  v66 = v155;
  if (!v67)
  {
    v66 = 0;
  }

LABEL_95:
  *&v3[OBJC_IVAR___IMCloudKitSyncState_changingEnabledState] = v66;
  v68 = sub_1A84E5DBC();
  if (!a2)
  {

    sub_1A84E5DBC();

    sub_1A84E5DBC();

    sub_1A84E5DBC();

    sub_1A84E5DBC();

    sub_1A84E5DBC();

    v93 = 0;
    v88 = 1;
    v95 = v154;
    goto LABEL_125;
  }

  *&v159 = v68;
  *(&v159 + 1) = v69;
  sub_1A84E641C();
  if (*(a2 + 16) && (v70 = sub_1A8250C0C(v157), (v71 & 1) != 0))
  {
    sub_1A8244F40(*(a2 + 56) + 32 * v70, &v159);
    sub_1A8250D18(v157);
  }

  else
  {
    sub_1A8250D18(v157);
    v159 = 0u;
    v160 = 0u;
  }

  sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
  v72 = swift_dynamicCast();
  *&v159 = sub_1A84E5DBC();
  *(&v159 + 1) = v73;
  sub_1A84E641C();
  if (*(a2 + 16) && (v74 = sub_1A8250C0C(v157), (v75 & 1) != 0))
  {
    sub_1A8244F40(*(a2 + 56) + 32 * v74, &v159);
    sub_1A8250D18(v157);
  }

  else
  {
    sub_1A8250D18(v157);
    v159 = 0u;
    v160 = 0u;
  }

  sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
  v76 = swift_dynamicCast();
  *&v159 = sub_1A84E5DBC();
  *(&v159 + 1) = v77;
  sub_1A84E641C();
  if (*(a2 + 16) && (v78 = sub_1A8250C0C(v157), (v79 & 1) != 0))
  {
    sub_1A8244F40(*(a2 + 56) + 32 * v78, &v159);
    sub_1A8250D18(v157);
  }

  else
  {
    sub_1A8250D18(v157);
    v159 = 0u;
    v160 = 0u;
  }

  sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
  v152 = swift_dynamicCast();
  *&v159 = sub_1A84E5DBC();
  *(&v159 + 1) = v80;
  sub_1A84E641C();
  if (*(a2 + 16) && (v81 = sub_1A8250C0C(v157), (v82 & 1) != 0))
  {
    sub_1A8244F40(*(a2 + 56) + 32 * v81, &v159);
    sub_1A8250D18(v157);
  }

  else
  {
    sub_1A8250D18(v157);
    v159 = 0u;
    v160 = 0u;
  }

  v83 = (v72 & v155);
  sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
  v84 = swift_dynamicCast();
  *&v159 = sub_1A84E5DBC();
  *(&v159 + 1) = v85;
  sub_1A84E641C();
  if (*(a2 + 16) && (v86 = sub_1A8250C0C(v157), (v87 & 1) != 0))
  {
    sub_1A8244F40(*(a2 + 56) + 32 * v86, &v159);
    sub_1A8250D18(v157);
  }

  else
  {
    sub_1A8250D18(v157);
    v159 = 0u;
    v160 = 0u;
  }

  v88 = v83 ^ 1;
  sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
  v89 = swift_dynamicCast();
  *&v159 = sub_1A84E5DBC();
  *(&v159 + 1) = v90;
  sub_1A84E641C();
  if (*(a2 + 16) && (v91 = sub_1A8250C0C(v157), (v92 & 1) != 0))
  {
    sub_1A8244F40(*(a2 + 56) + 32 * v91, &v159);
    sub_1A8250D18(v157);
  }

  else
  {
    sub_1A8250D18(v157);
    v159 = 0u;
    v160 = 0u;
  }

  v93 = v76 & v155;
  sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
  v94 = swift_dynamicCast();
  v95 = v154;
  if ((v154 & v83 & 1) == 0)
  {
LABEL_125:
    v3[OBJC_IVAR___IMCloudKitSyncState_syncState] = 1;
    if (v95)
    {
      goto LABEL_126;
    }

LABEL_150:
    if (qword_1EB2E46B8 != -1)
    {
      swift_once();
    }

    v109 = sub_1A84E5C9C();
    sub_1A824431C(v109, qword_1EB2FEFF8);
    v103 = sub_1A84E5C7C();
    v104 = sub_1A84E619C();
    if (!os_log_type_enabled(v103, v104))
    {
      goto LABEL_155;
    }

    v105 = swift_slowAlloc();
    *v105 = 0;
    v106 = "Account not enabled or not eligible for truth zone, setting sync status to stopped";
LABEL_154:
    _os_log_impl(&dword_1A823F000, v103, v104, v106, v105, 2u);
    MEMORY[0x1AC56D3F0](v105, -1, -1);
LABEL_155:

    goto LABEL_156;
  }

  if ((v76 & v155) == 0)
  {
    v3[OBJC_IVAR___IMCloudKitSyncState_syncState] = 2;
    if (v154)
    {
      goto LABEL_133;
    }

    goto LABEL_150;
  }

  if ((v152 & v155) != 0)
  {
    v96 = OBJC_IVAR___IMCloudKitSyncState_syncState;
    v97 = 4;
  }

  else
  {
    v96 = OBJC_IVAR___IMCloudKitSyncState_syncState;
    if (((v84 & v155 | v89 & v155) | (v94 & v155)))
    {
      v97 = 5;
    }

    else
    {
      v97 = 3;
    }
  }

  v3[v96] = v97;
  v93 = 1;
  if ((v154 & 1) == 0)
  {
    goto LABEL_150;
  }

LABEL_126:
  if (v88)
  {
    goto LABEL_150;
  }

  if ((v93 & 1) == 0)
  {
LABEL_133:
    if (qword_1EB2E46B8 != -1)
    {
      swift_once();
    }

    v102 = sub_1A84E5C9C();
    sub_1A824431C(v102, qword_1EB2FEFF8);
    v103 = sub_1A84E5C7C();
    v104 = sub_1A84E619C();
    if (!os_log_type_enabled(v103, v104))
    {
      goto LABEL_155;
    }

    v105 = swift_slowAlloc();
    *v105 = 0;
    v106 = "Syncing disabled, setting sync status to stopped";
    goto LABEL_154;
  }

  v98 = sub_1A84E5DBC();
  if (a2)
  {
    *&v159 = v98;
    *(&v159 + 1) = v99;
    sub_1A84E641C();
    if (*(a2 + 16) && (v100 = sub_1A8250C0C(v157), (v101 & 1) != 0))
    {
      sub_1A8244F40(*(a2 + 56) + 32 * v100, &v159);
      sub_1A8250D18(v157);
    }

    else
    {
      sub_1A8250D18(v157);
      v159 = 0u;
      v160 = 0u;
    }

    sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_156;
    }

    v107 = v155;
    if ((v155 & 0x8000000000000000) == 0)
    {
      goto LABEL_157;
    }

    __break(1u);
  }

LABEL_156:
  v107 = 0;
LABEL_157:
  *&v3[OBJC_IVAR___IMCloudKitSyncState_syncStatus] = v107;
  v110 = sub_1A84E5DBC();
  if (a2)
  {
    *&v159 = v110;
    *(&v159 + 1) = v111;
    sub_1A84E641C();
    if (*(a2 + 16) && (v112 = sub_1A8250C0C(v157), (v113 & 1) != 0))
    {
      sub_1A8244F40(*(a2 + 56) + 32 * v112, &v159);
      sub_1A8250D18(v157);
    }

    else
    {
      sub_1A8250D18(v157);
      v159 = 0u;
      v160 = 0u;
    }

    sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_166;
    }

    v114 = v155;
    if ((v155 & 0x8000000000000000) == 0)
    {
      goto LABEL_167;
    }

    __break(1u);
  }

LABEL_166:
  v114 = 0;
LABEL_167:
  *&v3[OBJC_IVAR___IMCloudKitSyncState_syncJobState] = v114;
  v115 = sub_1A84E5DBC();
  if (a2)
  {
    *&v159 = v115;
    *(&v159 + 1) = v116;
    sub_1A84E641C();
    if (*(a2 + 16) && (v117 = sub_1A8250C0C(v157), (v118 & 1) != 0))
    {
      sub_1A8244F40(*(a2 + 56) + 32 * v117, &v159);
      sub_1A8250D18(v157);
    }

    else
    {
      sub_1A8250D18(v157);
      v159 = 0u;
      v160 = 0u;
    }

    sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_176;
    }

    v119 = v155;
    if ((v155 & 0x8000000000000000) == 0)
    {
      goto LABEL_177;
    }

    __break(1u);
  }

LABEL_176:
  v119 = 0;
LABEL_177:
  *&v3[OBJC_IVAR___IMCloudKitSyncState_syncType] = v119;
  v120 = sub_1A84E5DBC();
  if (a2)
  {
    *&v159 = v120;
    *(&v159 + 1) = v121;
    sub_1A84E641C();
    if (*(a2 + 16) && (v122 = sub_1A8250C0C(v157), (v123 & 1) != 0))
    {
      sub_1A8244F40(*(a2 + 56) + 32 * v122, &v159);
      sub_1A8250D18(v157);
    }

    else
    {
      sub_1A8250D18(v157);
      v159 = 0u;
      v160 = 0u;
    }

    sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
    v124 = swift_dynamicCast() & v155;
  }

  else
  {

    v124 = 0;
  }

  v3[OBJC_IVAR___IMCloudKitSyncState_hasAvailableRecordsToDownload] = v124;
  v125 = sub_1A84E5DBC();
  if (!a2)
  {

    *&v3[OBJC_IVAR___IMCloudKitSyncState_errors] = 0;
    v159 = 0u;
    v160 = 0u;
    sub_1A824B2D4(&v159, &qword_1EB2E66B0, &qword_1A8500960);
    *&v3[OBJC_IVAR___IMCloudKitSyncState_statistics] = 0;
    v159 = 0u;
    v160 = 0u;
LABEL_202:
    sub_1A824B2D4(&v159, &qword_1EB2E66B0, &qword_1A8500960);
    v137 = 0;
    v136 = v153;
    goto LABEL_204;
  }

  *&v159 = v125;
  *(&v159 + 1) = v126;
  sub_1A84E641C();
  if (*(a2 + 16) && (v127 = sub_1A8250C0C(v157), (v128 & 1) != 0))
  {
    sub_1A8244F40(*(a2 + 56) + 32 * v127, &v159);
    sub_1A8250D18(v157);
  }

  else
  {
    sub_1A8250D18(v157);
    v159 = 0u;
    v160 = 0u;
  }

  sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
  sub_1A83EA2FC(&qword_1EB2E7020, &qword_1A85013A0);
  if (swift_dynamicCast() && v155)
  {
    v129 = objc_opt_self();
    sub_1A83EA2FC(&qword_1EB2E7028, &qword_1A85013A8);
    v130 = sub_1A84E5FEC();
    sub_1A83F8164(v155);
    v131 = [v129 errorArrayFromSerializedErrorArray:v130 im:?];

    sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
    v132 = sub_1A84E5FFC();

    *&v3[OBJC_IVAR___IMCloudKitSyncState_errors] = v132;
  }

  else
  {
    *&v3[OBJC_IVAR___IMCloudKitSyncState_errors] = 0;
  }

  sub_1A84E5DBC();

  sub_1A84E641C();
  sub_1A825E0BC(v157, a2, &v159);

  sub_1A8250D18(v157);
  if (*(&v160 + 1))
  {
    sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
    if (swift_dynamicCast())
    {
      v133 = objc_allocWithZone(IMCloudKitSyncStatistics);
      v134 = sub_1A84E5D2C();

      v135 = [v133 initWithStatisticsDictionary_];

      *&v3[OBJC_IVAR___IMCloudKitSyncState_statistics] = v135;
      goto LABEL_199;
    }
  }

  else
  {
    sub_1A824B2D4(&v159, &qword_1EB2E66B0, &qword_1A8500960);
  }

  *&v3[OBJC_IVAR___IMCloudKitSyncState_statistics] = 0;
LABEL_199:
  sub_1A84E5DBC();
  sub_1A84E641C();
  sub_1A825E0BC(v157, a2, &v159);

  sub_1A8250D18(v157);
  if (!*(&v160 + 1))
  {
    goto LABEL_202;
  }

  v136 = v153;
  if (swift_dynamicCast())
  {
    v137 = v157[0];
  }

  else
  {
    v137 = 0;
  }

LABEL_204:
  *&v3[OBJC_IVAR___IMCloudKitSyncState_lastDownloadProgress] = v137;
  v158.receiver = v3;
  v158.super_class = IMCloudKitSyncState;
  v138 = objc_msgSendSuper2(&v158, sel_init);

  return v138;
}

uint64_t sub_1A825E050()
{
  v0 = sub_1A84E5C9C();
  sub_1A82442B8(v0, qword_1EB2FEFF8);
  sub_1A824431C(v0, qword_1EB2FEFF8);
  sub_1A84E5C6C();
  return sub_1A84E5C8C();
}

double sub_1A825E0BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1A8250C0C(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1A8244F40(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1A825E1A0()
{
  v0 = os_log_create("com.apple.Messages", "iMessageCloudKitEvents");
  qword_1ED767760 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A825E2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A825E48C(uint64_t a1)
{
  v4 = [*(a1 + 32) map];
  v2 = [v4 copy];
  v3 = v2;
  if (!v2)
  {
    v3 = [MEMORY[0x1E695DF20] dictionary];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  if (!v2)
  {
  }
}

void sub_1A825E744(uint64_t a1)
{
  v5 = [*(a1 + 32) map];
  v2 = [v5 allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_1A825E8E0(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = [v11 proxy];
    v6 = [v5 bundleIdentifier];

    v7 = [v11 identifier];
    if ([v7 length] && objc_msgSend(v6, "length"))
    {
      v8 = *(a1 + 32);
      v9 = [v11 identifier];
      [v8 setObject:v9 forKey:v6];
    }
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

void sub_1A825EF3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained fetchScreenTimeAppPolicy];
}

void sub_1A825F398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A825F3B0(uint64_t a1)
{
  v5 = [*(a1 + 32) map];
  v2 = [v5 allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1A825F418(uint64_t a1, void *a2)
{
  v3 = [a2 appBundle];
  v5 = [v3 bundleIdentifier];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

void sub_1A825F4A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAppPolicyMonitor:*(a1 + 32)];
}

id IMTextInputIdentifier(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695E000] messagesAppDomain];
  if ([v2 BOOLForKey:@"CKTextInputIdentifiersMigrated"])
  {
    v3 = IMEncryptedIdentifier(v1);
  }

  else
  {
    v3 = v1;
  }

  v4 = v3;

  return v4;
}

id IMEncryptedIdentifier(void *a1)
{
  v1 = MEMORY[0x1E696AB08];
  v2 = a1;
  v3 = [v1 whitespaceAndNewlineCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  if ([v4 length])
  {
    v5 = +[IMTextInputCryptographer sharedCryptographer];
    v6 = [v5 stringDigestForName:v4];

    if (v6)
    {
      v7 = [@"IM_" stringByAppendingString:v6];
      goto LABEL_10;
    }

    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1F90(v8);
    }
  }

  else
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1FD4(v6);
    }
  }

  v7 = 0;
LABEL_10:

  return v7;
}

IMSPIMessage *_IMSPIMessageFromRecord(uint64_t a1, int a2, unsigned int a3, void *a4, dispatch_qos_class_t a5)
{
  v188 = *MEMORY[0x1E69E9840];
  v132 = a4;
  if (a1)
  {
    Identifier = IMDMessageRecordGetIdentifier();
    v128 = a1;
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = Identifier;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Beginning _IMSPIMessageFromRecord for message record %lld", &buf, 0xCu);
      }

      a1 = v128;
    }

    v164 = 0;
    v163 = 0;
    v162 = 0;
    v161 = 0;
    v160 = 0;
    v159 = 0;
    v158 = 0;
    v157 = 0;
    v156 = 0;
    v155 = 0;
    v154 = 0;
    v153 = 0;
    v152 = 0;
    v151 = 0;
    v150 = 0;
    theString = 0;
    v148 = 0;
    v147 = 0;
    v146 = 0;
    v145 = 0;
    v144 = 0;
    v143 = 0;
    v142 = 0;
    v141 = 0;
    if (qword_1EB2E9198 != -1)
    {
      sub_1A8263DCC();
      a1 = v128;
    }

    off_1EB2E91C8(a1, &v163, &v160, 0, &v158, &v162, &v161, 0, 0, &v157, &v156, &v155, &v154, 0, 0, &v164, &v153, 0, 0, &v143, 0, 0, 0, 0, 0, 0, 0, 0, 0, &v146, &v147, 0, &theString, &v144, &v148, 0, &v145, 0, 0, 0, 0, &v142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, &v141, 0, 0, 0);
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Completed _IMDMessageRecordBulkCopy", &buf, 2u);
      }
    }

    v8 = v157;
    v122 = v153;
    v126 = theString;
    v113 = v146;
    v114 = v156;
    v119 = v158;
    v120 = v154;
    v123 = v142;
    v121 = v141;
    v127 = v155;
    v124 = [v155 unsignedLongLongValue];
    if ((v124 & 4) != 0)
    {
      if ([v123 length])
      {
        v131 = [[IMSPIHandle alloc] initWithAddress:v123 countryCode:0 isMe:1];
        goto LABEL_35;
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_34;
      }

      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "destinationCallerID on outgoing message is nil. Sender information will be missing for this message.", &buf, 2u);
      }

      goto LABEL_33;
    }

    if (v164 < 1)
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "handleID for sender on received message is nil. Sender information will be missing for this message.", &buf, 2u);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v11 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
      v131 = [v132 objectForKey:v11];

      if (v131)
      {
        goto LABEL_35;
      }

      if (qword_1EB2E9188 != -1)
      {
        sub_1A8263E24();
      }

      v12 = off_1EB2E91B8(v128);
      v13 = v12;
      if (v12)
      {
        v131 = sub_1A8262D14(v12);
        v14 = [MEMORY[0x1E696AD98] numberWithLongLong:v164];
        [v132 setObject:v131 forKey:v14];

        CFRelease(v13);
        goto LABEL_35;
      }

      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "handleRef matching handleID on received message is nil. Sender information will be missing for this message.", &buf, 2u);
        }

LABEL_33:
      }
    }

LABEL_34:
    v131 = 0;
LABEL_35:
    v16 = [v8 stringByReplacingOccurrencesOfString:*MEMORY[0x1E69A5F00] withString:&stru_1F1B76F98];
    v17 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v129 = [v16 stringByTrimmingCharactersInSet:v17];

    v18 = v145;
    if (v145)
    {
      v19 = [MEMORY[0x1E695DF20] dictionaryWithMessageSummaryInfoData:v145];
      v20 = v19;
      if (v19)
      {
        v118 = [v19 objectForKey:*MEMORY[0x1E69A7208]];
        v21 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        v22 = [v21 isAutomaticIncomingTranslationEnabled];

        if (v22)
        {
          v23 = [v20 objectForKey:*MEMORY[0x1E69A7278]];
          if (v23)
          {
            v24 = [MEMORY[0x1E69A8138] translationMessagePartClasses];
            v140 = 0;
            v117 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v24 fromData:v23 error:&v140];
            v25 = v140;
            if (v25)
            {
              v26 = IMLogHandleForCategory();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                sub_1A84E4484(v25, v26);
              }
            }
          }

          else
          {
            v117 = 0;
          }
        }

        else
        {
          v117 = 0;
        }
      }

      else
      {
        v117 = 0;
        v118 = 0;
      }
    }

    else
    {
      v117 = 0;
      v118 = 0;
    }

    if (v143)
    {
      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 67109120;
          DWORD1(buf) = a3;
          _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "hasAttachments: 1 loadAttachments:%d", &buf, 8u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "Beginning IMSPIAttachmentsFromMessageRecord", &buf, 2u);
        }
      }

      v29 = IMDMessageRecordCopyAttachments();
      v30 = v29;
      if (v29)
      {
        Count = CFArrayGetCount(v29);
      }

      else
      {
        Count = 0;
      }

      v133 = [MEMORY[0x1E695DF70] arrayWithCapacity:Count];
      if (qword_1EB2E9200 != -1)
      {
        sub_1A84E44FC();
      }

      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v30, i);
          *&buf = 0;
          cf = 0;
          block[0] = 0;
          v171[0] = 0;
          v170 = 0;
          v169 = 0;
          v168 = 0;
          v167 = 0;
          v166 = 0;
          off_1EB2E9208(ValueAtIndex, &buf, 0, 0, 0, &cf, v171, 0, block, &v170, 0, 0, &v170 + 1, &v169, &v168, 0, 0, 0, 0, 0, 0, &v167, &v166);
          if (cf)
          {
            v34 = [cf copy];
            v35 = [v34 componentsSeparatedByString:@"/Attachments/"];

            if ([v35 count] < 2)
            {
              v37 = 0;
            }

            else
            {
              v36 = [v35 objectAtIndexedSubscript:1];
              v37 = sub_1A83DBA08(v36);
            }
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v38 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
              {
                *v165 = 0;
                _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_INFO, "Attachment filename returned empty", v165, 2u);
              }
            }

            v37 = 0;
          }

          v39 = [IMSPIAttachment alloc];
          v40 = [(IMSPIAttachment *)v39 initWithGuid:buf fileUrl:v37 transferState:block[0] uti:v171[0] isSticker:HIBYTE(v170) != 0 isOutgoing:v170 != 0 stickerUserInfo:v169 attributionInfo:v168 creationDate:0 adaptiveImageGlyphContentIdentifier:v167 adaptiveImageGlyphContentDescription:v166];
          [v133 addObject:v40];
          if (buf)
          {
            CFRelease(buf);
            *&buf = 0;
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v171[0])
          {
            CFRelease(v171[0]);
            v171[0] = 0;
          }

          if (v169)
          {
            CFRelease(v169);
            v169 = 0;
          }

          if (v168)
          {
            CFRelease(v168);
            v168 = 0;
          }

          if (v167)
          {
            CFRelease(v167);
            v167 = 0;
          }

          if (v166)
          {
            CFRelease(v166);
            v166 = 0;
          }
        }
      }

      if (v30)
      {
        CFRelease(v30);
      }

      if (IMOSLoggingEnabled())
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1A823F000, v41, OS_LOG_TYPE_INFO, "Completed IMSPIAttachmentsFromMessageRecord", &buf, 2u);
        }
      }
    }

    else
    {
      v133 = 0;
    }

    if (v147 || ![v129 length] || theString && CFStringGetLength(theString))
    {
      if (IMOSLoggingEnabled())
      {
        v42 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1A823F000, v42, OS_LOG_TYPE_INFO, "Beginning description construction for non-text message", &buf, 2u);
        }
      }

      v43 = sub_1A83D22A0(v128);
      v138[0] = MEMORY[0x1E69E9820];
      v138[1] = 3221225472;
      v138[2] = sub_1A83D27F8;
      v138[3] = &unk_1E7814870;
      v139 = v133;
      v130 = [v43 descriptionForPurpose:5 isGroupMessage:0 messageDataSource:&unk_1F1B6F840 attachmentDataSource:v138];

      if (IMOSLoggingEnabled())
      {
        v44 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1A823F000, v44, OS_LOG_TYPE_INFO, "Completed description construction for non-text message", &buf, 2u);
        }
      }
    }

    else
    {
      v130 = 0;
    }

    if (qword_1EB2E9190 != -1)
    {
      sub_1A8263ED4();
    }

    if (v163)
    {
      v45 = 0;
    }

    else
    {
      v46 = off_1EB2E91C0();

      v45 = v46;
    }

    v112 = v45;
    if ([v45 count])
    {
      if (qword_1EB2E91A8 != -1)
      {
        sub_1A84E4524();
      }

      v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v48 = v112;
      v49 = [v48 countByEnumeratingWithState:&v134 objects:v181 count:16];
      if (v49)
      {
        v50 = *v135;
        do
        {
          for (j = 0; j != v49; ++j)
          {
            if (*v135 != v50)
            {
              objc_enumerationMutation(v48);
            }

            v52 = off_1EB2E91D8(0, *(*(&v134 + 1) + 8 * j));
            [v47 addObject:v52];
          }

          v49 = [v48 countByEnumeratingWithState:&v134 objects:v181 count:16];
        }

        while (v49);
      }

      v53 = [v48 __imFirstObject];
      if (v53)
      {
        if (qword_1EB2E91A0 != -1)
        {
          sub_1A84E454C();
        }

        v54 = off_1EB2E91D0(v53);
        v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if ([v54 count])
        {
          v56 = 0;
          while (1)
          {
            v57 = [v54 objectAtIndex:v56];
            v58 = IMDHandleRecordGetIdentifier();
            v59 = [MEMORY[0x1E696AD98] numberWithLongLong:v58];
            v60 = [v132 objectForKey:v59];

            if (v60)
            {
              goto LABEL_135;
            }

            v60 = sub_1A8262D14(v57);
            if (v60)
            {
              break;
            }

LABEL_137:

            if (++v56 >= [v54 count])
            {
              goto LABEL_138;
            }
          }

          v61 = [MEMORY[0x1E696AD98] numberWithLongLong:v58];
          [v132 setObject:v60 forKey:v61];

LABEL_135:
          v62 = [v60 address];
          v63 = [(IMSPIHandle *)v131 address];
          v64 = [v62 isEqualToString:v63];

          if ((v64 & 1) == 0)
          {
            [v55 addObject:v60];
          }

          goto LABEL_137;
        }

LABEL_138:
        if ((v124 & 4) == 0)
        {
          if ([v123 length])
          {
            v65 = [[IMSPIHandle alloc] initWithAddress:v123 countryCode:0 isMe:1];
            [v55 addObject:v65];
          }

          else if (IMOSLoggingEnabled())
          {
            v66 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&dword_1A823F000, v66, OS_LOG_TYPE_INFO, "destinationCallerID is nil, message will not contain own address in recipients", &buf, 2u);
            }
          }
        }

        if (qword_1EB2E9180 != -1)
        {
          sub_1A84E4574();
        }

        off_1EB2E91B0(v53, &v159, 0, 0, 0, &v152, 0, 0, 0, &v151, 0, 0, &v150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
        v110 = v151;
        v115 = v152;
        v116 = v150;
      }

      else
      {
        v55 = 0;
        v115 = 0;
        v116 = 0;
        v110 = 0;
      }
    }

    else
    {
      v55 = 0;
      v115 = 0;
      v116 = 0;
      v110 = 0;
      v47 = 0;
    }

    context = objc_autoreleasePoolPush();
    v67 = [v127 unsignedLongLongValue];
    v68 = [v127 unsignedLongLongValue];
    v69 = [v127 unsignedLongLongValue];
    v70 = objc_alloc_init(IMSPIMessage);
    if ([v130 length])
    {
      v71 = v130;
    }

    else
    {
      v71 = v129;
    }

    [(IMSPIMessage *)v70 setText:v71];
    [(IMSPIMessage *)v70 setBody:v129];
    [(IMSPIMessage *)v70 setSummary:v130];
    [(IMSPIMessage *)v70 setEffect:v148];
    [(IMSPIMessage *)v70 setSubject:v122];
    v72 = [(IMSPIHandle *)v131 address];
    v73 = MEMORY[0x1AC56C3A0]();

    if ((v73 & 1) == 0)
    {
      [(IMSPIMessage *)v70 setDisplayName:v110];
    }

    [(IMSPIMessage *)v70 setItemType:v163];
    v74 = (v68 >> 20) & 1;
    if (v74 && [v114 length])
    {
      v75 = JWDecodeCodableObjectWithStandardAllowlist();
      [(IMSPIMessage *)v70 setAttributedText:v75];
    }

    [(IMSPIMessage *)v70 setHasDataDetectedResults:v74];
    [(IMSPIMessage *)v70 setSender:v131];
    [(IMSPIMessage *)v70 setRecipients:v55];
    v76 = [MEMORY[0x1E695DF00] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:v162];
    [(IMSPIMessage *)v70 setDate:v76];

    v77 = [MEMORY[0x1E695DF00] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:v161];
    [(IMSPIMessage *)v70 setDateRead:v77];

    if (a2)
    {
      v78 = sub_1A8261EA4(v128);
      [(IMSPIMessage *)v70 setDateForLastReadMessageInChat:v78];
    }

    [(IMSPIMessage *)v70 setIsOutgoing:(v124 >> 2) & 1];
    [(IMSPIMessage *)v70 setIsRead:(v67 >> 13) & 1];
    [(IMSPIMessage *)v70 setIsAudioMessage:(v69 >> 21) & 1];
    [(IMSPIMessage *)v70 setGuid:v119];
    [(IMSPIMessage *)v70 setMessageID:v160];
    [(IMSPIMessage *)v70 setChatGuids:v47];
    [(IMSPIMessage *)v70 setGroupID:v116];
    [(IMSPIMessage *)v70 setChatIdentifier:v115];
    [(IMSPIMessage *)v70 setIsGroupChat:v159 != 45];
    [(IMSPIMessage *)v70 setService:v120];
    [(IMSPIMessage *)v70 setAttachments:v133];
    [(IMSPIMessage *)v70 setBundleId:v126];
    [(IMSPIMessage *)v70 setAssociatedMessageEmoji:v121];
    v79 = _IMSPIDetermineMessageType(v126, (v69 & 0x200000) != 0, v133, v147, v118, v144, v129, v130);
    [(IMSPIMessage *)v70 setMessageType:v79];
    v80 = _IMSPIDisplayAppNameFromAttachments(v133);
    [(IMSPIMessage *)v70 setDisplayAppName:v80];
    [(IMSPIMessage *)v70 setTranslatedMessagePartsMap:v117];
    if (v79 != 213)
    {
      if ((v79 - 209) > 1)
      {
        if (v79 != 217 && v79 != 216)
        {
          goto LABEL_193;
        }

        v92 = _IMSPIExtractPayloadURLFromPayloadData(v144);
        [(IMSPIMessage *)v70 setExtensionPayloadURL:v92];
      }

      else
      {
        v92 = _IMSPIExtractPayloadURLFromPayloadData(v144);
        v93 = _IMSPIPeerPaymentAmountFromExtensionPayloadURL(v92);
        [(IMSPIMessage *)v70 setPeerPaymentAmount:v93];
      }

LABEL_192:

LABEL_193:
      v96 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v97 = [v96 isZelkovaEnabled];

      v98 = v97 ^ 1;
      if (v79 != 215)
      {
        v98 = 1;
      }

      if ((v98 & 1) == 0)
      {
        v99 = _IMSPIExtractPayloadURLFromPayloadData(v144);
        [(IMSPIMessage *)v70 setExtensionPayloadURL:v99];
      }

      if (IMSPIMessageTypeHasAssociatedMessage(v79) && [v113 length])
      {
        v100 = IMAssociatedMessageDecodeGUID();
        if (qword_1EB2EA520 != -1)
        {
          sub_1A84E459C();
        }

        v101 = off_1EB2EA518(v100);
        v102 = v101;
        if (v101)
        {
          v103 = _IMSPIMessageFromRecord(v101, 0, a3, v132, a5);
          [(IMSPIMessage *)v70 setReferencedMessage:v103];
          CFRelease(v102);
        }
      }

      objc_autoreleasePoolPop(context);
      if (IMOSLoggingEnabled())
      {
        v104 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = Identifier;
          _os_log_impl(&dword_1A823F000, v104, OS_LOG_TYPE_INFO, "Completed _IMSPIMessageFromRecord for message record %lld", &buf, 0xCu);
        }
      }

      v10 = v70;

      goto LABEL_209;
    }

    if (IMOSLoggingEnabled())
    {
      v81 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A823F000, v81, OS_LOG_TYPE_INFO, "Beginning _IMSPIRichLinkMetadataForMessageRecord", &buf, 2u);
      }
    }

    v82 = sub_1A83D22A0(v128);
    if (v82)
    {
      v83 = [[IMPluginPayload alloc] initWithMessageItem:v82];
      if (v83)
      {
        if (a3)
        {
          v84 = dispatch_group_create();
          dispatch_group_enter(v84);
          v85 = [v82 fileTransferGUIDs];
          v86 = sub_1A826443C(a5);
          *&buf = MEMORY[0x1E69E9820];
          *(&buf + 1) = 3221225472;
          v183 = sub_1A83DFAEC;
          v184 = &unk_1E7814B50;
          v185 = v85;
          v186 = v83;
          v187 = v84;
          v87 = v84;
          v125 = v85;
          IMSPIGetAttachmentPathsForTransferGUIDsWithQOS(v125, a5, v86, &buf);

          v88 = dispatch_time(0, 5000000000);
          dispatch_group_wait(v87, v88);
        }

        cf = 0;
        p_cf = &cf;
        v177 = 0x3032000000;
        v178 = sub_1A8259CB0;
        v179 = sub_1A825AF84;
        v180 = 0;
        if ([MEMORY[0x1E696AF00] isMainThread])
        {
          v89 = +[IMBalloonPluginManager sharedInstance];
          v90 = [v89 dataSourceForPluginPayload:v83];
          v91 = p_cf[5];
          p_cf[5] = v90;
        }

        else
        {
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_1A83DFB50;
          block[3] = &unk_1E7810D58;
          v174 = &cf;
          v173 = v83;
          dispatch_sync(MEMORY[0x1E69E96A0], block);
          v89 = v173;
        }

        v92 = [p_cf[5] richLinkMetadata];
        if (IMOSLoggingEnabled())
        {
          v95 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
          {
            LOWORD(v171[0]) = 0;
            _os_log_impl(&dword_1A823F000, v95, OS_LOG_TYPE_INFO, "Completed _IMSPIRichLinkMetadataForMessageRecord", v171, 2u);
          }
        }

        _Block_object_dispose(&cf, 8);

        goto LABEL_191;
      }

      if (IMOSLoggingEnabled())
      {
        v94 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v82;
          _os_log_impl(&dword_1A823F000, v94, OS_LOG_TYPE_INFO, "Could not init IMPluginPayload for messageItem: %@", &buf, 0xCu);
        }

LABEL_183:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v94 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v128;
        _os_log_impl(&dword_1A823F000, v94, OS_LOG_TYPE_INFO, "Could not create IMMessageItem from message record: %@", &buf, 0xCu);
      }

      goto LABEL_183;
    }

    v92 = 0;
LABEL_191:

    [(IMSPIMessage *)v70 setRichLinkMetadata:v92];
    goto LABEL_192;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Attempted to create IMSPIMessage from NULL IMDMessageRecordRef.", &buf, 2u);
    }
  }

  v10 = 0;
LABEL_209:

  return v10;
}

id sub_1A82618D4(void *a1, int a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = a1;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [v2 count];
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Beginning _IMSPIMessagesFromMessageRecords with %ld records", &buf, 0xCu);
    }
  }

  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v27 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v32 objects:v45 count:16];
  if (v4)
  {
    v6 = *v33;
    *&v5 = 138412546;
    v22 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v32 + 1) + 8 * v7);
        *&buf = 0;
        *(&buf + 1) = &buf;
        v41 = 0x3032000000;
        v42 = sub_1A8259CB0;
        v43 = sub_1A825AF84;
        v44 = 0;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1A8262CB8;
        block[3] = &unk_1E7814C18;
        p_buf = &buf;
        block[4] = v8;
        v29 = v27;
        v31 = a2;
        dispatch_sync(MEMORY[0x1E69E96A0], block);
        v9 = *(*(&buf + 1) + 40);
        if (v9)
        {
          if (![v9 itemType])
          {
            v14 = [*(*(&buf + 1) + 40) chatGuids];
            v15 = [v14 firstObject];

            v16 = [v24 objectForKey:v15];
            if (v16)
            {
              goto LABEL_23;
            }

            v16 = sub_1A8261EA4(v8);
            if (v16)
            {
              [v24 setObject:v16 forKey:v15];
LABEL_23:
              [*(*(&buf + 1) + 40) setDateForLastReadMessageInChat:{v16, v22}];
            }

            else
            {
              if (IMOSLoggingEnabled())
              {
                v17 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
                {
                  *v36 = 0;
                  _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Unable to set last read date for ", v36, 2u);
                }
              }

              v16 = 0;
            }

            [v23 addObject:{*(*(&buf + 1) + 40), v22}];

            goto LABEL_25;
          }

          if (IMOSLoggingEnabled())
          {
            v10 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              v11 = [*(*(&buf + 1) + 40) guid];
              v12 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(*(&buf + 1) + 40), "itemType")}];
              *v36 = v22;
              v37 = v11;
              v38 = 2112;
              v39 = v12;
              _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Dropping message with guid %@ and item type %@ as it is not a valid message.", v36, 0x16u);
            }
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *v36 = 0;
            _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Could not create IMSPIMessage from message record", v36, 2u);
          }
        }

LABEL_25:

        _Block_object_dispose(&buf, 8);
        ++v7;
      }

      while (v4 != v7);
      v18 = [obj countByEnumeratingWithState:&v32 objects:v45 count:16];
      v4 = v18;
    }

    while (v18);
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [v23 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v20;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Completed _IMSPIMessagesFromMessageRecords with %ld IMSPIMessages", &buf, 0xCu);
    }
  }

  return v23;
}

void sub_1A8261E3C(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A8261DD0);
  }

  _Unwind_Resume(exc_buf);
}

id sub_1A8261EA4(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Beginning _dateForLastReadMessageInChatForMessage", buf, 2u);
    }
  }

  if (a1)
  {
    if (qword_1EB2E9150 != -1)
    {
      sub_1A84E45EC();
    }

    v3 = off_1EB2E9168(a1);
    if ([v3 count])
    {
      v4 = [v3 firstObject];
      if (qword_1EB2E9140 != -1)
      {
        sub_1A84E4614();
      }

      v11 = 0;
      *buf = 0;
      off_1EB2E9158(v4, 0, 0, 0, 0, buf, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, &v11, 0, 0, 0, 0, 0, 0, 0);
      if (v11 < 1)
      {
        if (qword_1EB2E9148 != -1)
        {
          sub_1A84E463C();
        }

        v6 = off_1EB2E9160(*buf);
        if (v6)
        {
          v7 = v6;
          if (qword_1EB2EA650 != -1)
          {
            sub_1A84E4664();
          }

          *v10 = 0;
          off_1EB2EA648(v7, 0, 0, 0, 0, 0, v10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
          v5 = [MEMORY[0x1E695DF00] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:*v10];
          CFRelease(v7);
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        v5 = [MEMORY[0x1E695DF00] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:v11];
      }

      if (*buf)
      {
        CFRelease(*buf);
        *buf = 0;
      }

      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *v10 = 0;
          _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Completed _dateForLastReadMessageInChatForMessage", v10, 2u);
        }
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t _IMSPIDetermineMessageType(void *a1, char a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v69 = *MEMORY[0x1E69E9840];
  v51 = a1;
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  if (a4 > 2003)
  {
    if (a4 <= 2005)
    {
      if (a4 == 2004)
      {
        v19 = 107;
      }

      else
      {
        v19 = 109;
      }

      goto LABEL_97;
    }

    switch(a4)
    {
      case 2006:
        v19 = 111;
        goto LABEL_97;
      case 2007:
        v19 = 112;
        goto LABEL_97;
      case 4000:
        v19 = 114;
        goto LABEL_97;
    }
  }

  else
  {
    if (a4 > 2000)
    {
      if (a4 == 2001)
      {
        v19 = 105;
      }

      else if (a4 == 2002)
      {
        v19 = 106;
      }

      else
      {
        v19 = 110;
      }

      goto LABEL_97;
    }

    if (a4 == 1000)
    {
      v19 = 113;
      goto LABEL_97;
    }

    if (a4 == 2000)
    {
      v19 = 108;
      goto LABEL_97;
    }
  }

  if (a2)
  {
    v19 = 101;
    goto LABEL_97;
  }

  v20 = *MEMORY[0x1E69A6A38];
  if ([v16 containsString:*MEMORY[0x1E69A6A38]])
  {
    v19 = 211;
  }

  else if (_IMSPIMessageOrAttachmentsMatchPluginIdentifier(v20, v51, v15))
  {
    v21 = _IMSPIExtractPayloadURLFromPayloadData(a6);
    v19 = _IMSPIMessageTypeFromPeerPaymentPayloadURL(v21);
  }

  else if (_IMSPIMessageOrAttachmentsMatchPluginIdentifier(*MEMORY[0x1E69A6A18], v51, v15))
  {
    v19 = 213;
  }

  else if (_IMSPIMessageOrAttachmentsMatchPluginIdentifier(*MEMORY[0x1E69A69E8], v51, v15))
  {
    v19 = 207;
  }

  else if (_IMSPIMessageOrAttachmentsMatchPluginIdentifier(*MEMORY[0x1E69A69A8], v51, v15))
  {
    v19 = 102;
  }

  else if (_IMSPIMessageOrAttachmentsMatchPluginIdentifier(*MEMORY[0x1E69A69E0], v51, v15))
  {
    v19 = 103;
  }

  else if (_IMSPIMessageOrAttachmentsMatchPluginIdentifier(*MEMORY[0x1E69A6970], v51, v15))
  {
    v19 = 212;
  }

  else if (_IMSPIMessageOrAttachmentsMatchPluginIdentifier(*MEMORY[0x1E69A6920], v51, v15))
  {
    v19 = 216;
  }

  else if (_IMSPIMessageOrAttachmentsMatchPluginIdentifier(*MEMORY[0x1E69A68E0], v51, v15))
  {
    v19 = 217;
  }

  else if (_IMSPIMessageOrAttachmentsMatchPluginIdentifier(*MEMORY[0x1E69A6938], v51, v15))
  {
    if ([v18 containsString:@"Started Sharing Location"])
    {
      v19 = 219;
    }

    else if ([v18 containsString:@"Requested Location"])
    {
      v19 = 218;
    }

    else
    {
      v19 = 220;
    }
  }

  else if (_IMSPIMessageOrAttachmentsMatchPluginIdentifier(*MEMORY[0x1E69A6928], v51, v15))
  {
    v19 = 223;
  }

  else
  {
    v19 = 0;
  }

  v22 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v23 = [v22 isZelkovaEnabled];

  if (v23 && (_IMSPIMessageOrAttachmentsMatchPluginIdentifier(*MEMORY[0x1E69A6930], v51, v15) & 1) != 0)
  {
    v19 = 215;
    goto LABEL_97;
  }

  if (v19)
  {
    goto LABEL_97;
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v24 = v15;
  v25 = [v24 countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (!v25)
  {

LABEL_71:
    v47 = [v51 length];
    if (v47)
    {
      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v67 = v51;
          _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "Unhandled balloon bundle ID: %@", buf, 0xCu);
        }
      }

      v19 = 214;
    }

    else
    {
      v19 = 0;
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v24;
    v30 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
    if (v30)
    {
      v49 = *v57;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v57 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v56 + 1) + 8 * i);
          v33 = [v32 bundleID];
          v34 = [v33 length] == 0;

          if (!v34)
          {
            if (IMOSLoggingEnabled())
            {
              v35 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                v36 = [v32 bundleID];
                *buf = 138412290;
                v67 = v36;
                _os_log_impl(&dword_1A823F000, v35, OS_LOG_TYPE_INFO, "Unhandled attachment bundle ID: %@", buf, 0xCu);
              }
            }

            v19 = 222;
            goto LABEL_97;
          }
        }

        v30 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
      }

      while (v30);
    }

    if (v47)
    {
      goto LABEL_97;
    }

    if (![obj count] || objc_msgSend(v17, "length"))
    {
      goto LABEL_89;
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v38 = obj;
    v50 = [v38 countByEnumeratingWithState:&v52 objects:v64 count:16];
    if (!v50)
    {

      goto LABEL_89;
    }

    v39 = 0;
    v47 = *v53;
    v19 = 200;
LABEL_100:
    v40 = 0;
    while (1)
    {
      if (*v53 != v47)
      {
        objc_enumerationMutation(v38);
      }

      v41 = *(*(&v52 + 1) + 8 * v40);
      v42 = [v41 uti];
      if ([v41 isSticker])
      {
        v39 = 104;
      }

      else if (IMUTTypeIsGIF())
      {
        v39 = 221;
      }

      if (IMUTTypeIsImage())
      {
        goto LABEL_130;
      }

      if (IMUTTypeIsMovie())
      {
        break;
      }

      if (IMUTTypeIsAudio())
      {
        v19 = 202;
        goto LABEL_130;
      }

      if (IMUTTypeIsCalendar())
      {
        v19 = 203;
        goto LABEL_130;
      }

      if (IMUTTypeIsVCard())
      {
        v19 = 204;
        goto LABEL_130;
      }

      if (IMUTTypeIsPass())
      {
        v19 = 205;
        goto LABEL_130;
      }

      IsMap = IMUTTypeIsMap();

      if (IsMap)
      {
        v19 = 208;
        goto LABEL_132;
      }

      if (v50 == ++v40)
      {
        v50 = [v38 countByEnumeratingWithState:&v52 objects:v64 count:16];
        if (v50)
        {
          goto LABEL_100;
        }

        if (IsMap)
        {
          v19 = 208;
        }

        else
        {
          v19 = v39;
        }

LABEL_132:

        if (!v19)
        {
LABEL_89:
          if ([obj count] && !objc_msgSend(v17, "length"))
          {
            if (IMOSLoggingEnabled())
            {
              v44 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
              {
                v45 = [obj firstObject];
                v46 = [v45 uti];
                *buf = 138412290;
                v67 = v46;
                _os_log_impl(&dword_1A823F000, v44, OS_LOG_TYPE_INFO, "Unhandled attachment UTI: %@", buf, 0xCu);
              }
            }

            v19 = 206;
          }

          else
          {
            v19 = 100;
          }
        }

        goto LABEL_97;
      }
    }

    v19 = 201;
LABEL_130:

    goto LABEL_97;
  }

  v19 = 0;
  v26 = *v61;
  do
  {
    for (j = 0; j != v25; ++j)
    {
      if (*v61 != v26)
      {
        objc_enumerationMutation(v24);
      }

      v28 = *(*(&v60 + 1) + 8 * j);
      if ([v28 isSticker] && objc_msgSend(v28, "isAdaptiveImageGlyph"))
      {
        if (![v18 length] && !objc_msgSend(v17, "length"))
        {

          v19 = 104;
          goto LABEL_97;
        }

        v19 = 100;
      }
    }

    v25 = [v24 countByEnumeratingWithState:&v60 objects:v68 count:16];
  }

  while (v25);

  if (!v19)
  {
    goto LABEL_71;
  }

LABEL_97:

  return v19;
}

void sub_1A8262A8C(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    v5 = MEMORY[0x1E69A7AE0];
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) service];
        v8 = [v7 isEqualToString:*v5];

        if (v8)
        {

          IMGreenTeaMessageReadLog();
          goto LABEL_11;
        }

        ++v6;
      }

      while (v3 != v6);
      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_1A8262BB4(uint64_t a1)
{
  if (qword_1EB2E91F0 != -1)
  {
    sub_1A84E4938();
  }

  v2 = off_1EB2E91F8(*(a1 + 32), *(a1 + 40), 0, *(a1 + 76), *(a1 + 64));
  v3 = sub_1A82618D4(v2, *(a1 + 72));
  sub_1A8262A8C(v3);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A8263234;
  v7[3] = &unk_1E7810230;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t sub_1A8262CB8(uint64_t a1)
{
  v2 = _IMSPIMessageFromRecord(*(a1 + 32), 0, 0, *(a1 + 40), *(a1 + 56));
  *(*(*(a1 + 48) + 8) + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2);
}

IMSPIHandle *sub_1A8262D14(IMSPIHandle *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  Identifier = IMDHandleRecordGetIdentifier();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v13 = Identifier;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Beginning _IMSPIHandleFromRecord for handle record ID: %lld", buf, 0xCu);
    }
  }

  if (a1)
  {
    if (qword_1EB2E9D78 != -1)
    {
      sub_1A8263E7C();
    }

    cf = 0;
    theString = 0;
    v9 = 0;
    off_1EB2E9D80(a1, &cf, &v9, 0, &theString, 0);
    if (theString && CFStringGetLength(theString) > 0)
    {
      p_theString = &theString;
    }

    else
    {
      p_theString = &cf;
    }

    v5 = *p_theString;
    v6 = [IMSPIHandle alloc];
    a1 = [(IMSPIHandle *)v6 initWithAddress:v5 countryCode:v9 isMe:0];
    if (theString)
    {
      CFRelease(theString);
      theString = 0;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v9)
    {
      CFRelease(v9);
      v9 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v13 = a1;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Completed _IMSPIHandleFromRecord with handle: %@", buf, 0xCu);
      }
    }
  }

  return a1;
}

uint64_t sub_1A8263234(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ([*(a1 + 32) count])
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void sub_1A82633F0(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [*(a1 + 32) sender];
  v4 = [v3 address];
  v5 = sub_1A82635FC(v4, v4);

  if (v5)
  {
    v6 = [*(a1 + 32) sender];
    v7 = [v6 isMe];

    if ((v7 & 1) == 0)
    {
      [v2 addObject:v5];
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [*(a1 + 32) recipients];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (([v13 isMe] & 1) == 0)
        {
          v14 = [v13 address];
          v15 = sub_1A82635FC(v14, v14);

          if (v15)
          {
            [v2 addObject:v15];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v16 = IMSharedDowntimeController();
  *(*(*(a1 + 40) + 8) + 24) = [v16 allowedToShowConversationWithHandleIDs:v2 sync:1 context:0];
}

id sub_1A82635FC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2 && ((MEMORY[0x1AC56C3C0](v2) & 1) != 0 || IMStringIsEmail()))
  {
    v4 = IMStripFormattingFromAddress();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1A8263728(uint64_t a1, uint64_t a2, SEL *a3)
{
  v6 = *(v3 + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  v16[4] = nullsub_4;
  v16[5] = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1A824B720;
  v16[3] = a2;
  v7 = _Block_copy(v16);
  [v6 connectWithCompletion_];
  _Block_release(v7);
  sub_1A8248300(a1);
  v8 = *(v3 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
  v9 = sub_1A84E610C();

  v10 = [v8 *a3];

  if (!v10)
  {
    v11 = [objc_opt_self() emailsForCNContact_];
    v12 = sub_1A84E5FFC();

    sub_1A8249338(v12);

    v13 = sub_1A84E610C();

    v14 = [v8 *a3];

    return v14;
  }

  return v10;
}

uint64_t (*sub_1A8263DF4())(void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void)
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordBulkCopy", @"IMDPersistence");
  off_1EB2E91C8 = result;
  return result;
}

uint64_t (*sub_1A8263E4C())(void)
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyHandle", @"IMDPersistence");
  off_1EB2E91B8 = result;
  return result;
}

uint64_t (*sub_1A8263EA4())(void, void, void, void, void, void)
{
  result = MEMORY[0x1AC56C560]("IMDHandleRecordBulkCopy", @"IMDPersistence");
  off_1EB2E9D80 = result;
  return result;
}

uint64_t (*sub_1A8263FE4())(void)
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyChats", @"IMDPersistence");
  off_1EB2E91C0 = result;
  return result;
}

void sub_1A8264014(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(IMBrandCacheClient);
  [v1 configChatBotBrandManagerWithCacheClient:v2];
}

uint64_t IMSPIQueryMessagesWithChatIdentifiersAndQOS(void *a1, void *a2, char a3, uint64_t a4, dispatch_qos_class_t a5, void *a6, void *a7)
{
  v36 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = a2;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (!v15 || !v16)
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Empty results block or queue supplied to IMSPIQueryMessagesWithChatIdentifiers", buf, 2u);
      }

      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v18 = [v13 count];
  if (v18 != [v14 count])
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v33 = v13;
        v34 = 2112;
        v35 = v14;
        _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Services is not matched with chatIdentifiers: [%@] [%@] to IMSPIQueryMessagesWithIDs", buf, 0x16u);
      }

      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (![v13 count])
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Empty services or chatIdentifiers supplied to IMSPIQueryMessagesWithChatIdentifiers", buf, 2u);
      }

      goto LABEL_22;
    }

LABEL_23:
    v21 = 0;
    goto LABEL_24;
  }

  if (!a4)
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "0 limit supplied, no query issued to IMSPIQueryMessagesWithChatIdentifiers", buf, 2u);
      }

LABEL_22:

      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v19 = [v17 copy];

  v20 = sub_1A826443C(a5);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1A8262BB4;
  v24[3] = &unk_1E7814A98;
  v25 = v14;
  v31 = a3;
  v26 = v13;
  v29 = a4;
  v30 = a5;
  v27 = v15;
  v17 = v19;
  v28 = v17;
  dispatch_async(v20, v24);

  v21 = 1;
LABEL_24:

  return v21;
}

void sub_1A8264418(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A82643C4);
  }

  _Unwind_Resume(a1);
}

dispatch_queue_t sub_1A826443C(dispatch_qos_class_t qos_class)
{
  v1 = "com.apple.messages.imcore.spi.default";
  v2 = "com.apple.messages.imcore.spi.userinitiated";
  v3 = "com.apple.messages.imcore.spi.userinteractive";
  if (qos_class != QOS_CLASS_USER_INTERACTIVE)
  {
    v3 = 0;
  }

  if (qos_class != QOS_CLASS_USER_INITIATED)
  {
    v2 = v3;
  }

  if (qos_class != QOS_CLASS_DEFAULT)
  {
    v1 = v2;
  }

  v4 = "com.apple.messages.imcore.spi.qos-unspecified";
  v5 = "com.apple.messages.imcore.spi.background";
  v6 = "com.apple.messages.imcore.spi.utility";
  if (qos_class != QOS_CLASS_UTILITY)
  {
    v6 = 0;
  }

  if (qos_class != QOS_CLASS_BACKGROUND)
  {
    v5 = v6;
  }

  if (qos_class)
  {
    v4 = v5;
  }

  if (qos_class <= 20)
  {
    v7 = v4;
  }

  else
  {
    v7 = v1;
  }

  v8 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], qos_class, 0);
  v9 = dispatch_queue_create(v7, v8);

  return v9;
}

uint64_t _s12DerivedStateVwet(uint64_t a1, int a2)
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

uint64_t _s12DerivedStateVwst(uint64_t result, int a2, int a3)
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

BOOL sub_1A8264770(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1A82647C8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1A8264800@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A84E5DBC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A8264834(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A826497C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_conversation;
  swift_beginAccess();
  return sub_1A840888C(v3 + v4, a2, type metadata accessor for ImportExport.Conversation);
}

uint64_t sub_1A82649F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageBatchRelativePaths;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1A8264A50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageCount;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1A8264AA8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageCount;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1A8264B78(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[10];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1A83EA2FC(&qword_1EB2E7348, &qword_1A8504400);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[21];
    goto LABEL_9;
  }

  v14 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[24];

  return v15(v16, a2, v14);
}

uint64_t sub_1A8264D08(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[10];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1A83EA2FC(&qword_1EB2E7348, &qword_1A8504400);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[21];
    goto LABEL_7;
  }

  v14 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[24];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1A8264F18()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8264F50()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}