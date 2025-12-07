uint64_t sub_100001818()
{
  v0 = sub_10000435C();
  sub_10000327C(v0, qword_10000C760);
  sub_100003234(v0, qword_10000C760);
  return sub_10000434C();
}

uint64_t sub_100001898()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  swift_retain_n();

  return PrimitiveAppExtensionScene.init<A>(id:content:onConnection:)(v1, v2, sub_100003F94, v0, sub_100003F9C, v0, v3, v4);
}

uint64_t sub_100001960@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(*a1 + 80);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v14 - v9;
  (*(v8 + 56))();
  v11 = *(v4 + 16);
  v11(v10, v7, v3);
  v12 = *(v4 + 8);
  v12(v7, v3);
  v11(a2, v10, v3);
  return (v12)(v10, v3);
}

void sub_100001AB0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, NSObject *a6, uint64_t a7)
{
  v8 = v7;
  v13 = [objc_opt_self() currentConnection];
  if (!v13)
  {
    if (qword_10000C4D0 != -1)
    {
      swift_once();
    }

    v25 = sub_10000435C();
    sub_100003234(v25, qword_10000C760);
    oslog = sub_10000433C();
    v26 = sub_1000043BC();
    if (os_log_type_enabled(oslog, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v26, "configureWith called in non-NSXPC context", v27, 2u);
    }

    goto LABEL_13;
  }

  oslog = v13;
  v14 = sub_10000332C(v13);
  if (!v15)
  {
LABEL_13:
    v28 = oslog;
    goto LABEL_19;
  }

  v16 = v14;
  v17 = v15;
  log = a6;
  if (qword_10000C4D0 != -1)
  {
    swift_once();
  }

  v18 = sub_10000435C();
  sub_100003234(v18, qword_10000C760);

  v19 = sub_10000433C();
  v20 = sub_1000043CC();

  if (os_log_type_enabled(v19, v20))
  {
    v36 = a1;
    v21 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v21 = 136315394;
    *(v21 + 4) = sub_10000299C(v36, a2, &v40);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_10000299C(v16, v17, &v40);
    _os_log_impl(&_mh_execute_header, v19, v20, "Extension configuring with %s for %s", v21, 0x16u);
    swift_arrayDestroy();

    a1 = v36;
  }

  sub_10000426C();

  sub_1000042BC();
  sub_10000425C();
  swift_bridgeObjectRetain_n();
  sub_1000042AC();
  v22 = *(v8 + 40);
  v23 = *(v8 + 48);
  *(v8 + 40) = log;
  *(v8 + 48) = a7;

  sub_10000326C(v22, v23);
  sub_1000020A0(oslog);
  if (v24)
  {
  }

  sub_10000428C();

  loga = sub_10000433C();
  v29 = sub_1000043CC();

  if (os_log_type_enabled(loga, v29))
  {
    v30 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v30 = 136315650;
    *(v30 + 4) = sub_10000299C(a1, a2, &v40);
    *(v30 + 12) = 2080;
    v31 = sub_10000299C(v16, v17, &v40);

    *(v30 + 14) = v31;
    *(v30 + 22) = 2080;
    v32 = sub_10000427C();
    v34 = v33;

    if (!v34)
    {
      __break(1u);
      return;
    }

    v35 = sub_10000299C(v32, v34, &v40);

    *(v30 + 24) = v35;
    _os_log_impl(&_mh_execute_header, loga, v29, "Extension configuring with %s for %s (name: %s", v30, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v28 = loga;
LABEL_19:
}

uint64_t sub_100001FAC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  v8 = sub_10000437C();
  v10 = v9;
  v11 = sub_10000437C();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v7;

  sub_100001AB0(v8, v10, v11, v13, a5, sub_10000412C, v14);
}

uint64_t sub_1000020A0(void *a1)
{
  [a1 processIdentifier];
  [a1 auditToken];
  result = sub_10000429C();
  if (v3)
  {
    v4 = result;
    v5 = v3;
    v6 = objc_allocWithZone(LSApplicationRecord);
    v7 = sub_1000028C0(v4, v5, 1);
    v8 = [v7 localizedName];
    v9 = sub_10000437C();

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000245C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void *sub_1000024DC()
{

  sub_10000326C(*(v0 + 40), *(v0 + 48));

  return v0;
}

uint64_t sub_100002514()
{
  sub_1000024DC();

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_100002570(uint64_t a1)
{
  v2 = *(a1 + 32);

  return LimitedLibraryPickerView.init(viewModel:completion:)(v2, sub_100003078, a1);
}

uint64_t sub_1000025E0()
{
  v0 = sub_100002FE8(&qword_10000C368, &qword_100004B78);
  v1 = sub_1000041FC(&qword_10000C370, &unk_100004ADC);

  return AppExtensionSceneConfiguration.init<A>(_:)(sub_100002FE4, 0, v0, v1);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000026CC();
  sub_10000432C();
  return 0;
}

unint64_t sub_1000026CC()
{
  result = qword_10000C330;
  if (!qword_10000C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C330);
  }

  return result;
}

unint64_t sub_1000027D0(uint64_t a1)
{
  result = sub_1000026CC();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000283C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_1000028C0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_10000436C();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_1000042EC();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_10000299C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002A68(v11, 0, 0, 1, a1, a2);
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
    sub_100003CDC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003C90(v11);
  return v7;
}

unint64_t sub_100002A68(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002B74(a5, a6);
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
    result = sub_1000043EC();
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

char *sub_100002B74(uint64_t a1, unint64_t a2)
{
  v3 = sub_100002BC0(a1, a2);
  sub_100002CF0(&off_1000084D8);
  return v3;
}

char *sub_100002BC0(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002DDC(v5, 0);
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

  result = sub_1000043EC();
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
        v10 = sub_10000439C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100002DDC(v10, 0);
        result = sub_1000043DC();
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

uint64_t sub_100002CF0(uint64_t result)
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

  result = sub_100002E50(result, v11, 1, v3);
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

void *sub_100002DDC(uint64_t a1, uint64_t a2)
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

  sub_100002FE8(&qword_10000C380, &unk_100004B80);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002E50(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002FE8(&qword_10000C380, &unk_100004B80);
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

uint64_t sub_100002F44@<X0>(void *a1@<X8>)
{
  sub_100002FE8(&qword_10000C368, &qword_100004B78);
  v2 = swift_allocObject();
  v2[2] = 0x746C7561666564;
  v2[3] = 0xE700000000000000;
  sub_1000042DC();
  swift_allocObject();
  result = sub_1000042CC();
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = result;
  v2[7] = sub_100002570;
  v2[8] = 0;
  *a1 = v2;
  return result;
}

uint64_t sub_100002FE8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003030(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_100003078(uint64_t a1)
{
  v2 = v1;
  if (qword_10000C4D0 != -1)
  {
    swift_once();
  }

  v4 = sub_10000435C();
  sub_100003234(v4, qword_10000C760);
  v5 = sub_10000433C();
  v6 = sub_1000043CC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Attempting to dismiss picker", v7, 2u);
  }

  v8 = *(v2 + 40);
  if (v8)
  {
    v9 = *(v2 + 48);

    v8(a1);
    oslog = sub_10000433C();
    v10 = sub_1000043CC();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "Called completion", v11, 2u);
    }

    sub_10000326C(v8, v9);
  }
}

uint64_t sub_100003234(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000326C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t *sub_10000327C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_1000032E0()
{
  result = qword_10000C378;
  if (!qword_10000C378)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C378);
  }

  return result;
}

uint64_t sub_10000332C(void *a1)
{
  [a1 auditToken];
  if (!tcc_server_create())
  {
    if (qword_10000C4D0 != -1)
    {
      swift_once();
    }

    v16 = sub_10000435C();
    sub_100003234(v16, qword_10000C760);
    v17 = sub_10000433C();
    v18 = sub_1000043BC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Could not create tcc server", v19, 2u);
    }

    return 0;
  }

  if (!tcc_message_options_create())
  {
    if (qword_10000C4D0 != -1)
    {
      swift_once();
    }

    v20 = sub_10000435C();
    sub_100003234(v20, qword_10000C760);
    v21 = sub_10000433C();
    v22 = sub_1000043BC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Could not create tcc options", v23, 2u);
    }

    swift_unknownObjectRelease();
    return 0;
  }

  tcc_message_options_set_reply_handler_policy();
  if (!tcc_credential_create_for_process_with_audit_token())
  {
    if (qword_10000C4D0 != -1)
    {
      swift_once();
    }

    v24 = sub_10000435C();
    sub_100003234(v24, qword_10000C760);
    v25 = sub_10000433C();
    v26 = sub_1000043BC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Could not get credential for audit token", v27, 2u);
    }

    goto LABEL_25;
  }

  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = (v2 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  aBlock[4] = sub_100003DEC;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000245C;
  aBlock[3] = &unk_100008660;
  v5 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  tcc_server_message_get_identity_for_credential();
  _Block_release(v5);
  swift_unknownObjectRelease();
  swift_beginAccess();
  if (*(v2 + 16))
  {
    if (qword_10000C4D0 != -1)
    {
      swift_once();
    }

    v6 = sub_10000435C();
    sub_100003234(v6, qword_10000C760);

    v7 = sub_10000433C();
    v8 = sub_1000043BC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = *v3;
      if (*v3)
      {
        type metadata accessor for CFError();
        sub_100003F4C(&qword_10000C3F0, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
        swift_allocError();
        *v12 = v11;
        v13 = v11;
        v14 = _swift_stdlib_bridgeErrorToNSError();
        v15 = v14;
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      *(v9 + 4) = v14;
      *v10 = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to get identity, error %@", v9, 0xCu);
      sub_100003E94(v10);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return 0;
  }

  swift_beginAccess();
  if (!*(v1 + 16))
  {
    if (qword_10000C4D0 != -1)
    {
      swift_once();
    }

    v35 = sub_10000435C();
    sub_100003234(v35, qword_10000C760);
    v36 = sub_10000433C();
    v37 = sub_1000043BC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Expected error xor identity", v38, 2u);
    }

    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  swift_unknownObjectRetain();
  if (tcc_identity_get_type())
  {
    if (qword_10000C4D0 != -1)
    {
      swift_once();
    }

    v28 = sub_10000435C();
    sub_100003234(v28, qword_10000C760);
    swift_unknownObjectRetain();
    v29 = sub_10000433C();
    v30 = sub_1000043BC();
    if (!os_log_type_enabled(v29, v30))
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease_n();
      return 0;
    }

    v41 = v30;
    v31 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = v42;
    *v31 = 134218242;
    *(v31 + 4) = tcc_identity_get_type();
    swift_unknownObjectRelease();
    *(v31 + 12) = 2080;
    tcc_identity_get_identifier();
    v32 = sub_10000438C();
    v34 = sub_10000299C(v32, v33, &v43);

    *(v31 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v29, v41, "Client is not an app: %llu %s", v31, 0x16u);
    sub_100003C90(v42);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_25:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return 0;
  }

  tcc_identity_get_identifier();
  v40 = sub_10000438C();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v40;
}

id sub_100003BCC(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForIdentifier:a1 error:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    sub_1000042EC();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_100003C90(void *a1)
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

uint64_t sub_100003CDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003D3C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003D74()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003DAC()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100003DEC(uint64_t a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  swift_beginAccess();
  *(v5 + 16) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_beginAccess();
  v7 = *(v6 + 16);
  *(v6 + 16) = a2;
  v8 = a2;
}

uint64_t sub_100003E7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003E94(uint64_t a1)
{
  v2 = sub_100002FE8(&qword_10000C3E8, &qword_100004B90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for CFError()
{
  if (!qword_10000C3F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10000C3F8);
    }
  }
}

uint64_t sub_100003F4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100003F9C(void *a1)
{
  v2 = v1;
  if (qword_10000C4D0 != -1)
  {
    swift_once();
  }

  v4 = sub_10000435C();
  sub_100003234(v4, qword_10000C760);
  v5 = sub_10000433C();
  v6 = sub_1000043CC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Got connection in extension", v7, 2u);
  }

  v8 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP10ContactsUI37LimitedLibraryPickerExtensionProtocol_];
  [a1 setExportedInterface:v8];

  [a1 setExportedObject:v2];
  [a1 resume];
  return 1;
}

uint64_t sub_1000040F4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10000412C(uint64_t a1)
{
  v2 = *(v1 + 16);
  isa = sub_1000043AC().super.isa;
  (*(v2 + 16))(v2, isa);
}

uint64_t sub_1000041FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100003030(&qword_10000C368, &qword_100004B78);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}