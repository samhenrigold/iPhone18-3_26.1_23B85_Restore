BOOL _nw_endpoint_has_alternatives(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network8Endpoint_alternativeEndpoints;
  v3 = a1;
  swift_beginAccess();
  v4 = *&a1[v2];

  v5 = *(v4 + 16);

  return v5 != 0;
}

void *sub_1820F0304(void *a1)
{
  v1 = a1;
  Endpoint.port.getter();

  sub_182AD41B8();
  v2 = sub_182AD30F8();
  v3 = __OFADD__(v2, 1);
  result = (v2 + 1);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = swift_slowAlloc();
    result = sub_182AD30F8();
    v6 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v7 = sub_182AD3048();

      memcpy(v5, (v7 + 32), v6);

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t _nw_endpoint_get_address_0(char *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v6 = a1;
  swift_beginAccess();
  sub_181A546E0(&a1[v5], v4, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload())
  {

    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }

  else
  {
    v8 = v4[1];
    v14[0] = *v4;
    v14[1] = v8;
    v10 = *v4;
    v9 = v4[1];
    v15[0] = v4[2];
    *(v15 + 12) = *(v4 + 44);
    v12[0] = v10;
    v12[1] = v9;
    v13[0] = v4[2];
    *(v13 + 12) = *(v4 + 44);
    sub_181AA5564(v12);
    sub_181AA57B4(v14);
    v7 = *&v6[OBJC_IVAR____TtC7Network8Endpoint_addressStorage];
  }

  return v7;
}

uint64_t sub_1820F0530(char *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v6 = a1;
  swift_beginAccess();
  sub_181A546E0(&a1[v5], v4, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = *v4;
    v8 = *(v7 + 80);
    v9 = *(v7 + 88);
    v10 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    v11 = *&v6[OBJC_IVAR____TtC7Network8Endpoint_storageLock];

    os_unfair_lock_lock(v11 + 4);
    sub_181AB2BF0(v6, 8, v8, v9, &v13);

    os_unfair_lock_unlock((*&v6[v10] + 16));

    return v13;
  }

  else
  {

    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }
}

uint64_t sub_1820F06A0(char *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v6 = a1;
  swift_beginAccess();
  sub_181A546E0(&a1[v5], v4, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = *v4;
    v8 = *(v7 + 64);
    v9 = *(v7 + 72);
    v10 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    v11 = *&v6[OBJC_IVAR____TtC7Network8Endpoint_storageLock];

    os_unfair_lock_lock(v11 + 4);
    sub_181AB2BF0(v6, 9, v8, v9, &v13);

    os_unfair_lock_unlock((*&v6[v10] + 16));

    return v13;
  }

  else
  {

    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }
}

uint64_t sub_1820F0810(char *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v6 = a1;
  swift_beginAccess();
  sub_181A546E0(&a1[v5], v4, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = *v4;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    v10 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    v11 = *&v6[OBJC_IVAR____TtC7Network8Endpoint_storageLock];

    os_unfair_lock_lock(v11 + 4);
    sub_181AB2BF0(v6, 10, v8, v9, &v13);

    os_unfair_lock_unlock((*&v6[v10] + 16));

    return v13;
  }

  else
  {

    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }
}

uint64_t sub_1820F0980(char *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v6 = a1;
  swift_beginAccess();
  sub_181A546E0(&a1[v5], v4, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = *v4;
    v8 = *(v7 + 48);
    v9 = *(v7 + 56);
    v10 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    v11 = *&v6[OBJC_IVAR____TtC7Network8Endpoint_storageLock];

    os_unfair_lock_lock(v11 + 4);
    sub_181AB2BF0(v6, 11, v8, v9, &v13);

    os_unfair_lock_unlock((*&v6[v10] + 16));

    return v13;
  }

  else
  {

    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }
}

uint64_t sub_1820F0AF0(char *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v6 = a1;
  swift_beginAccess();
  sub_181A546E0(&a1[v5], v4, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v8 = *(v4 + 2);
    v7 = *(v4 + 3);
    v9 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    os_unfair_lock_lock((*&v6[OBJC_IVAR____TtC7Network8Endpoint_storageLock] + 16));
    sub_181AB2BF0(v6, 13, v8, v7, &v11);
    os_unfair_lock_unlock((*&v6[v9] + 16));

    return v11;
  }

  else
  {

    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }
}

uint64_t _nw_endpoint_get_remote_interface_type(char *a1)
{
  v1 = a1[OBJC_IVAR____TtC7Network8Endpoint_remoteInterfaceType];

  return dword_182AF5E2C[v1];
}

void sub_1820F0CA0(void *a1, unsigned int a2)
{
  v3 = a1;
  if (a2 >= 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v3[OBJC_IVAR____TtC7Network8Endpoint_remoteInterfaceType] = v4;
}

void _nw_endpoint_clear_description(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
  v3 = *&a1[OBJC_IVAR____TtC7Network8Endpoint_storageLock];
  v4 = a1;
  os_unfair_lock_lock(v3 + 4);
  sub_181F5FB48(v4);
  os_unfair_lock_unlock((*&a1[v2] + 16));
}

void _nw_endpoint_set_ech_config(char *a1, void *a2)
{
  v5 = *&a1[OBJC_IVAR____TtC7Network8Endpoint_echConfig];
  *&a1[OBJC_IVAR____TtC7Network8Endpoint_echConfig] = a2;
  v3 = a1;
  v4 = a2;
}

uint64_t _nw_endpoint_set_signature(void *a1, const void *a2, size_t a3)
{
  v5 = a1;
  *&v5[OBJC_IVAR____TtC7Network8Endpoint_signature] = xpc_data_create(a2, a3);

  return swift_unknownObjectRelease();
}

void _nw_endpoint_set_public_keys(void *a1, uint64_t a2)
{
  v3 = sub_182AD33C8();
  v4 = a1;
  sub_18217C31C(v3);
}

uint64_t _nw_endpoint_append_public_key(char *a1, void *a2)
{
  v3 = a2;
  v4 = sub_182AD2158();
  v6 = v5;

  sub_1820F0F24(a1, v4, v6);

  return sub_181C1F2E4(v4, v6);
}

void sub_1820F0F24(char *a1, uint64_t a2, unint64_t a3)
{
  v6 = *&a1[OBJC_IVAR____TtC7Network8Endpoint__publicKeys];

  v10 = a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_181F59F7C(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_181F59F7C((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[16 * v8];
  *(v9 + 4) = a2;
  *(v9 + 5) = a3;
  sub_181F49B58(a2, a3);
  sub_18217C31C(v6);
}

void sub_1820F1050(void *a1, char a2)
{
  v3 = a1;
  v4 = *&v3[OBJC_IVAR____TtC7Network8Endpoint_flags];
  if (a2)
  {
    if ((v4 & 2) != 0)
    {
      goto LABEL_7;
    }

    v5 = v4 | 2;
  }

  else
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_7;
    }

    v5 = v4 & 0xFFFD;
  }

  *&v3[OBJC_IVAR____TtC7Network8Endpoint_flags] = v5;
LABEL_7:
}

void sub_1820F10B4(void *a1, char a2)
{
  v3 = a1;
  v4 = *&v3[OBJC_IVAR____TtC7Network8Endpoint_flags];
  if (a2)
  {
    if ((*&v3[OBJC_IVAR____TtC7Network8Endpoint_flags] & 0x200) != 0)
    {
      goto LABEL_7;
    }

    v5 = v4 | 0x200;
  }

  else
  {
    if ((*&v3[OBJC_IVAR____TtC7Network8Endpoint_flags] & 0x200) == 0)
    {
      goto LABEL_7;
    }

    v5 = v4 & 0xFDFF;
  }

  *&v3[OBJC_IVAR____TtC7Network8Endpoint_flags] = v5;
LABEL_7:
}

uint64_t sub_1820F1118(char *a1)
{
  v2 = type metadata accessor for URLEndpoint(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v9 = a1;
  swift_beginAccess();
  sub_181A546E0(&a1[v8], v7, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_181B2BEE4(v7, v4);
    v10 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    os_unfair_lock_lock((*&v9[OBJC_IVAR____TtC7Network8Endpoint_storageLock] + 16));
    sub_1820F12D0(v9, 17, &v13);
    os_unfair_lock_unlock((*&v9[v10] + 16));

    v11 = v13;
    sub_181A5513C(v4, type metadata accessor for URLEndpoint);
  }

  else
  {

    sub_181A5513C(v7, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }

  return v11;
}

void sub_1820F12D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = OBJC_IVAR____TtC7Network8Endpoint_storage;
  swift_beginAccess();
  if (*(*(a1 + v6) + 16) && (sub_181A41ED0(), (v7 & 1) != 0))
  {
    swift_endAccess();
    swift_beginAccess();
    sub_18224FFEC(a2);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  sub_181B4B8F0();
  if (v8)
  {
    v9 = swift_slowAlloc();
    v10 = sub_182AD3048();

    __nwlog_create_hash_from_private_string((v10 + 32), v9);

    v11 = sub_182AD3158();
    v13 = v12;
    MEMORY[0x1865DF520](v9, -1, -1);
  }

  else
  {
    v13 = 0xE600000000000000;
    v11 = 0x3E6C6C756E3CLL;
  }

  v14 = sub_181AB284C(v11, v13);

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(a1 + v6);
  *(a1 + v6) = 0x8000000000000000;
  sub_181AB36FC(v14, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + v6) = v19;
  swift_endAccess();
  v16 = *(v19 + 16);
  if (v16)
  {
    v17 = sub_181A41ED0();
    if (v18)
    {
      v16 = *(*(v19 + 56) + 8 * v17) + 24;
    }

    else
    {
      v16 = 0;
    }
  }

  *a3 = v16;
}

uint64_t sub_1820F14D0(char *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v6 = a1;
  swift_beginAccess();
  sub_181A546E0(&a1[v5], v4, type metadata accessor for Endpoint.EndpointType);

  if (swift_getEnumCaseMultiPayload())
  {
    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
LABEL_3:
    v7 = 0;
    return v7 & 1;
  }

  v10 = *(v4 + 2);
  v9 = *(v4 + 3);
  v11 = *(v4 + 4);
  v12 = *(v4 + 20);
  v13 = v4[42];
  if (v13 > 1)
  {
    if (v13 == 2)
    {

      sub_181AD1DE4(v10, v9, v11, v12, 2u);
    }

    else if (v13 == 3)
    {

      sub_181AD1DE4(v10, v9, v11, v12, 3u);
    }

    else
    {

      sub_181AD1DE4(v10, v9, v11, v12, 4u);
    }

    goto LABEL_3;
  }

  if (v4[42])
  {
    v20 = *(v4 + 2);
    v21 = v9;
    v22 = v11;
    v16 = qword_1EA836528;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = qword_1EA839428;
    v18 = unk_1EA839430;
    v19 = qword_1EA839438;

    v7 = _s7Network11IPv6AddressV2eeoiySbAC_ACtFZ_0(&v20, &v17);

    sub_181AD1DE4(v10, v9, v11, v12, 1u);

    sub_181AD1DE4(v10, v9, v11, v12, 1u);
  }

  else
  {
    LODWORD(v20) = *(v4 + 2);
    v21 = v9;
    v14 = qword_1EA837070;

    if (v14 != -1)
    {
      swift_once();
    }

    LODWORD(v17) = dword_1EA8393C0;
    v18 = qword_1EA8393C8;

    v7 = _s7Network11IPv4AddressV2eeoiySbAC_ACtFZ_0(&v20, &v17, v15);

    sub_181AD1DE4(v10, v9, v11, v12, 0);

    sub_181AD1DE4(v10, v9, v11, v12, 0);
  }

  return v7 & 1;
}

void sub_1820F1810(void *a1, unsigned int a2)
{
  v3 = a1;
  if (a2 >= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v3[OBJC_IVAR____TtC7Network8Endpoint_dnsFailureReason] = v4;
}

void sub_1820F1860(void *a1, char a2)
{
  v3 = a1;
  v4 = *&v3[OBJC_IVAR____TtC7Network8Endpoint_flags];
  if (a2)
  {
    if (v4)
    {
      goto LABEL_7;
    }

    v5 = v4 | 1;
  }

  else
  {
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

    v5 = v4 & 0xFFFE;
  }

  *&v3[OBJC_IVAR____TtC7Network8Endpoint_flags] = v5;
LABEL_7:
}

uint64_t sub_1820F18C4(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = sub_182AD3158();
  v5 = v4;
  v6 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
  os_unfair_lock_lock((*&v2[OBJC_IVAR____TtC7Network8Endpoint_storageLock] + 16));
  v7 = sub_181AB284C(v3, v5);
  v8 = OBJC_IVAR____TtC7Network8Endpoint_storage;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *&v2[v8];
  *&v2[v8] = 0x8000000000000000;
  sub_181AB36FC(v7, 19, isUniquelyReferenced_nonNull_native);
  *&v2[v8] = v11;
  swift_endAccess();
  os_unfair_lock_unlock((*&v2[v6] + 16));
}

void sub_1820F19B4(char *a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
    v3 = sub_182AD3158();
    v5 = v4;
    v6 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    os_unfair_lock_lock((*&v2[OBJC_IVAR____TtC7Network8Endpoint_storageLock] + 16));
    v7 = sub_181AB284C(v3, v5);
    v8 = OBJC_IVAR____TtC7Network8Endpoint_storage;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *&v2[v8];
    *&v2[v8] = 0x8000000000000000;
    sub_181AB36FC(v7, 20, isUniquelyReferenced_nonNull_native);
    *&v2[v8] = v14;
    swift_endAccess();
    os_unfair_lock_unlock((*&v2[v6] + 16));
  }

  else
  {
    v10 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    v11 = *&a1[OBJC_IVAR____TtC7Network8Endpoint_storageLock];
    v13 = a1;
    os_unfair_lock_lock(v11 + 4);
    os_unfair_lock_unlock((*&a1[v10] + 16));
  }
}

void sub_1820F1B04(void *a1, char a2)
{
  v3 = a1;
  v4 = *&v3[OBJC_IVAR____TtC7Network8Endpoint_flags];
  if (a2)
  {
    if ((v4 & 8) != 0)
    {
      goto LABEL_7;
    }

    v5 = v4 | 8;
  }

  else
  {
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    v5 = v4 & 0xFFF7;
  }

  *&v3[OBJC_IVAR____TtC7Network8Endpoint_flags] = v5;
LABEL_7:
}

uint64_t _nw_endpoint_set_cname_array(void *a1, char *a2)
{
  v3 = a1;
  swift_beginAccess();
  v4 = a2;

  v6 = sub_1820EDCFC(v5);

  *&v3[OBJC_IVAR____TtC7Network8Endpoint_cnames] = v6;
}

uint64_t sub_1820F1C20(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x1EEE68FA8](a1);
  }

LABEL_5:
  a1 = sub_182AD3118();

  return MEMORY[0x1EEE68FA8](a1);
}

uint64_t sub_1820F1C88(void *a1, int64_t a2, uint64_t a3, char a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v4;
  v5 = *(a3 + 48);
  v10[2] = *(a3 + 32);
  v10[3] = v5;
  v6 = *(a3 + 80);
  v10[4] = *(a3 + 64);
  v10[5] = v6;
  v11 = *(a3 + 96);
  if (a4)
  {
    for (i = 0; i != 104; ++i)
    {
      if (!*(v10 + i))
      {
        break;
      }
    }
  }

  else
  {
    i = 104;
  }

  if (i && a2)
  {
    if (i >= a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = i;
    }

    memcpy(a1, v10, v8);
    if (v8 >= 0x69)
    {
      __break(1u);
    }
  }

  return i;
}

unsigned __int8 *sub_1820F1D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a1;
  v76 = a2;

  result = sub_182AD3248();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_18224FE14(result, v5);
    v42 = v41;

    v5 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_182AD3CF8();
      v7 = v74;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOBYTE(v13) = 0;
            v26 = result + 1;
            v27 = a3;
            v16 = 1;
            do
            {
              v28 = *v26;
              if (v28 < 0x30 || v28 >= v23)
              {
                if (v28 < 0x41 || v28 >= v24)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v13 * v27;
              v31 = (v13 * v27);
              if (v31 != v30)
              {
                goto LABEL_126;
              }

              v13 = v31 + (v28 + v29);
              if (v13 != v13)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v16 = 0;
            v19 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        v16 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          LOBYTE(v35) = 0;
          v36 = a3;
          v16 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v32)
            {
              if (v37 < 0x41 || v37 >= v33)
              {
                v19 = 0;
                if (v37 < 0x61 || v37 >= v34)
                {
                  goto LABEL_127;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v35 * v36;
            v40 = (v35 * v36);
            if (v40 != v39)
            {
              goto LABEL_126;
            }

            v35 = v40 + (v37 + v38);
            if (v35 != v35)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v16 = 0;
          v19 = v35;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = a3;
          v16 = 1;
          while (1)
          {
            v17 = *v14;
            if (v17 < 0x30 || v17 >= v10)
            {
              if (v17 < 0x41 || v17 >= v11)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v12)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v13 * v15;
            v21 = (v13 * v15);
            if (v21 != v20)
            {
              goto LABEL_126;
            }

            v13 = v21 - (v17 + v18);
            if (v13 != v13)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
        v16 = 0;
LABEL_127:

        return (v19 | (v16 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v43 = HIBYTE(v5) & 0xF;
  v75 = v6;
  v76 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v43)
      {
        LOBYTE(v45) = 0;
        v65 = a3 + 48;
        v66 = a3 + 55;
        v67 = a3 + 87;
        if (a3 > 10)
        {
          v65 = 58;
        }

        else
        {
          v67 = 97;
          v66 = 65;
        }

        v68 = &v75;
        v69 = a3;
        v16 = 1;
        while (1)
        {
          v70 = *v68;
          if (v70 < 0x30 || v70 >= v65)
          {
            if (v70 < 0x41 || v70 >= v66)
            {
              v19 = 0;
              if (v70 < 0x61 || v70 >= v67)
              {
                goto LABEL_127;
              }

              v71 = -87;
            }

            else
            {
              v71 = -55;
            }
          }

          else
          {
            v71 = -48;
          }

          v72 = v45 * v69;
          v73 = (v45 * v69);
          if (v73 != v72)
          {
            goto LABEL_126;
          }

          v45 = v73 + (v70 + v71);
          if (v45 != v45)
          {
            goto LABEL_126;
          }

          v68 = (v68 + 1);
          if (!--v43)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        LOBYTE(v45) = 0;
        v46 = a3 + 48;
        v47 = a3 + 55;
        v48 = a3 + 87;
        if (a3 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v75 + 1;
        v50 = a3;
        v16 = 1;
        while (1)
        {
          v51 = *v49;
          if (v51 < 0x30 || v51 >= v46)
          {
            if (v51 < 0x41 || v51 >= v47)
            {
              v19 = 0;
              if (v51 < 0x61 || v51 >= v48)
              {
                goto LABEL_127;
              }

              v52 = -87;
            }

            else
            {
              v52 = -55;
            }
          }

          else
          {
            v52 = -48;
          }

          v53 = v45 * v50;
          v54 = (v45 * v50);
          if (v54 != v53)
          {
            goto LABEL_126;
          }

          v45 = v54 - (v51 + v52);
          if (v45 != v45)
          {
            goto LABEL_126;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v43)
  {
    v55 = v43 - 1;
    if (v55)
    {
      LOBYTE(v45) = 0;
      v56 = a3 + 48;
      v57 = a3 + 55;
      v58 = a3 + 87;
      if (a3 > 10)
      {
        v56 = 58;
      }

      else
      {
        v58 = 97;
        v57 = 65;
      }

      v59 = &v75 + 1;
      v60 = a3;
      v16 = 1;
      do
      {
        v61 = *v59;
        if (v61 < 0x30 || v61 >= v56)
        {
          if (v61 < 0x41 || v61 >= v57)
          {
            v19 = 0;
            if (v61 < 0x61 || v61 >= v58)
            {
              goto LABEL_127;
            }

            v62 = -87;
          }

          else
          {
            v62 = -55;
          }
        }

        else
        {
          v62 = -48;
        }

        v63 = v45 * v60;
        v64 = (v45 * v60);
        if (v64 != v63)
        {
          goto LABEL_126;
        }

        v45 = v64 + (v61 + v62);
        if (v45 != v45)
        {
          goto LABEL_126;
        }

        ++v59;
        --v55;
      }

      while (v55);
LABEL_125:
      v16 = 0;
      v19 = v45;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1820F2348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a1;
  v76 = a2;

  result = sub_182AD3248();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_18224FE14(result, v5);
    v42 = v41;

    v5 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_182AD3CF8();
      v7 = v74;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOWORD(v13) = 0;
            v26 = result + 1;
            v27 = a3;
            v16 = 1;
            do
            {
              v28 = *v26;
              if (v28 < 0x30 || v28 >= v23)
              {
                if (v28 < 0x41 || v28 >= v24)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v13 * v27;
              v31 = (v13 * v27);
              if (v31 != v30)
              {
                goto LABEL_126;
              }

              v13 = v31 + (v28 + v29);
              if (v13 != v13)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v16 = 0;
            v19 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        v16 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          LOWORD(v35) = 0;
          v36 = a3;
          v16 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v32)
            {
              if (v37 < 0x41 || v37 >= v33)
              {
                v19 = 0;
                if (v37 < 0x61 || v37 >= v34)
                {
                  goto LABEL_127;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v35 * v36;
            v40 = (v35 * v36);
            if (v40 != v39)
            {
              goto LABEL_126;
            }

            v35 = v40 + (v37 + v38);
            if (v35 != v35)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v16 = 0;
          v19 = v35;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOWORD(v13) = 0;
          v14 = result + 1;
          v15 = a3;
          v16 = 1;
          while (1)
          {
            v17 = *v14;
            if (v17 < 0x30 || v17 >= v10)
            {
              if (v17 < 0x41 || v17 >= v11)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v12)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v13 * v15;
            v21 = (v13 * v15);
            if (v21 != v20)
            {
              goto LABEL_126;
            }

            v13 = v21 - (v17 + v18);
            if (v13 != v13)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
        v16 = 0;
LABEL_127:

        return (v19 | (v16 << 16));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v43 = HIBYTE(v5) & 0xF;
  v75 = v6;
  v76 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v43)
      {
        LOWORD(v45) = 0;
        v65 = a3 + 48;
        v66 = a3 + 55;
        v67 = a3 + 87;
        if (a3 > 10)
        {
          v65 = 58;
        }

        else
        {
          v67 = 97;
          v66 = 65;
        }

        v68 = &v75;
        v69 = a3;
        v16 = 1;
        while (1)
        {
          v70 = *v68;
          if (v70 < 0x30 || v70 >= v65)
          {
            if (v70 < 0x41 || v70 >= v66)
            {
              v19 = 0;
              if (v70 < 0x61 || v70 >= v67)
              {
                goto LABEL_127;
              }

              v71 = -87;
            }

            else
            {
              v71 = -55;
            }
          }

          else
          {
            v71 = -48;
          }

          v72 = v45 * v69;
          v73 = (v45 * v69);
          if (v73 != v72)
          {
            goto LABEL_126;
          }

          v45 = v73 + (v70 + v71);
          if (v45 != v45)
          {
            goto LABEL_126;
          }

          v68 = (v68 + 1);
          if (!--v43)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        LOWORD(v45) = 0;
        v46 = a3 + 48;
        v47 = a3 + 55;
        v48 = a3 + 87;
        if (a3 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v75 + 1;
        v50 = a3;
        v16 = 1;
        while (1)
        {
          v51 = *v49;
          if (v51 < 0x30 || v51 >= v46)
          {
            if (v51 < 0x41 || v51 >= v47)
            {
              v19 = 0;
              if (v51 < 0x61 || v51 >= v48)
              {
                goto LABEL_127;
              }

              v52 = -87;
            }

            else
            {
              v52 = -55;
            }
          }

          else
          {
            v52 = -48;
          }

          v53 = v45 * v50;
          v54 = (v45 * v50);
          if (v54 != v53)
          {
            goto LABEL_126;
          }

          v45 = v54 - (v51 + v52);
          if (v45 != v45)
          {
            goto LABEL_126;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v43)
  {
    v55 = v43 - 1;
    if (v55)
    {
      LOWORD(v45) = 0;
      v56 = a3 + 48;
      v57 = a3 + 55;
      v58 = a3 + 87;
      if (a3 > 10)
      {
        v56 = 58;
      }

      else
      {
        v58 = 97;
        v57 = 65;
      }

      v59 = &v75 + 1;
      v60 = a3;
      v16 = 1;
      do
      {
        v61 = *v59;
        if (v61 < 0x30 || v61 >= v56)
        {
          if (v61 < 0x41 || v61 >= v57)
          {
            v19 = 0;
            if (v61 < 0x61 || v61 >= v58)
            {
              goto LABEL_127;
            }

            v62 = -87;
          }

          else
          {
            v62 = -55;
          }
        }

        else
        {
          v62 = -48;
        }

        v63 = v45 * v60;
        v64 = (v45 * v60);
        if (v64 != v63)
        {
          goto LABEL_126;
        }

        v45 = v64 + (v61 + v62);
        if (v45 != v45)
        {
          goto LABEL_126;
        }

        ++v59;
        --v55;
      }

      while (v55);
LABEL_125:
      v16 = 0;
      v19 = v45;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1820F2934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_182AD3248();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_18224FE14(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_182AD3CF8();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if (v29 != v29)
              {
                goto LABEL_126;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if (v37 != v37)
            {
              goto LABEL_126;
            }

            v38 = v35 + v36;
            v21 = __OFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if (v19 != v19)
            {
              goto LABEL_126;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_127;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if (v67 != v67)
          {
            goto LABEL_126;
          }

          v68 = v65 + v66;
          v21 = __OFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_126;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if (v50 != v50)
          {
            goto LABEL_126;
          }

          v51 = v48 + v49;
          v21 = __OFSUB__(v50, v51);
          v43 = v50 - v51;
          if (v21)
          {
            goto LABEL_126;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_127;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if (v59 != v59)
        {
          goto LABEL_126;
        }

        v60 = v57 + v58;
        v21 = __OFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_126;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_125:
      v15 = 0;
      v18 = v43;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1820F2EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_182AD3248();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_18224FE14(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_182AD3CF8();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1820F343C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;

  result = sub_182AD3248();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_18224FE14(result, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_182AD3CF8();
      v7 = v62;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOBYTE(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 >> 8))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          LOBYTE(v31) = 0;
          v15 = 1;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v34 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if ((v31 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v31;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        return (v18 | (v15 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v5) & 0xF;
  v63 = v6;
  v64 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOBYTE(v39) = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v63;
        v15 = 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v61 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if ((v39 >> 8))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOBYTE(v39) = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v63 + 1;
        v15 = 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v46 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if ((v39 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      LOBYTE(v39) = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v63 + 1;
      v15 = 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v54 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if ((v39 >> 8))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v15 = 0;
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1820F3A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;

  result = sub_182AD3248();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_18224FE14(result, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_182AD3CF8();
      v7 = v62;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOWORD(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFFFF0000) != 0)
              {
                goto LABEL_126;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 & 0x10000) != 0)
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          LOWORD(v31) = 0;
          v15 = 1;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v34 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if ((v31 & 0x10000) != 0)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v31;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOWORD(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        return (v18 | (v15 << 16));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v5) & 0xF;
  v63 = v6;
  v64 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOWORD(v39) = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v63;
        v15 = 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v61 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if ((v39 & 0x10000) != 0)
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOWORD(v39) = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v63 + 1;
        v15 = 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v46 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if ((v39 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      LOWORD(v39) = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v63 + 1;
      v15 = 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v54 & 0xFFFF0000) != 0)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if ((v39 & 0x10000) != 0)
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v15 = 0;
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1820F3FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_182AD3248();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_18224FE14(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_182AD3CF8();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1820F4560(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_182AD3248();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_18224FE14(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_182AD3CF8();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1820F4AE4(uint64_t *a1, void *a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {
    v14 = sub_181ADFAF4(0, a4, a6, a7);
    result = sub_181ADFAF4(a4, a5, a6, a7);
    v16 = v14 + result;
    if (__OFADD__(v14, result))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (v16 < v14)
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v17 = 0;
    if (v16 != v14 && a3)
    {
      if (result >= a3)
      {
        v17 = a3;
      }

      else
      {
        v17 = result;
      }

      result = memcpy(a2, (a6 + v14), v17);
    }

    v18 = a4 + v17;
    if (__OFADD__(a4, v17))
    {
      goto LABEL_31;
    }

    v19 = a7 - a6;
    if (v18 < 0)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

LABEL_18:
    if (v19 >= v18)
    {
      a1[3] = a7;
      a1[4] = v18;
      *a1 = a4;
      a1[1] = a5;
      a1[2] = a6;
      return v17;
    }

    goto LABEL_28;
  }

  v20 = sub_181ADFAF4(0, a4, 0, a7);
  result = sub_181ADFAF4(a4, a5, 0, a7);
  v21 = v20 + result;
  if (__OFADD__(v20, result))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v21 >= v20)
  {
    if (v21 == v20)
    {
      v17 = 0;
      v18 = a4;
      goto LABEL_17;
    }

    if (a3)
    {
      if (result >= a3)
      {
        v17 = a3;
      }

      else
      {
        v17 = result;
      }

      result = memcpy(a2, 0, v17);
      v18 = a4 + v17;
      if (!__OFADD__(a4, v17))
      {
LABEL_17:
        v19 = 0;
        if (v18 < 0)
        {
          goto LABEL_28;
        }

        goto LABEL_18;
      }

      __break(1u);
    }

    v19 = 0;
    v17 = 0;
    v18 = a4;
    if (a4 < 0)
    {
      goto LABEL_28;
    }

    goto LABEL_18;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1820F4C68(void *a1, int64_t a2, uint64_t a3, char a4)
{
  v4 = *(a3 + 16);
  v8[0] = *a3;
  v8[1] = v4;
  v5 = *(a3 + 48);
  v8[2] = *(a3 + 32);
  v8[3] = v5;
  v6 = *(a3 + 80);
  v8[4] = *(a3 + 64);
  v8[5] = v6;
  v9 = *(a3 + 96);
  return sub_1820F1C88(a1, a2, v8, a4);
}

uint64_t sub_1820F4CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, unint64_t a7)
{
  result = sub_182AD1D58();
  v14 = result;
  if (result)
  {
    result = sub_182AD1D88();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v14 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_182AD1D78();
  sub_1820EF2A0(v14, a4, a6, a7, &v16);
  if (!v7)
  {
    v15 = v16;
  }

  return v15 & 1;
}

uint64_t sub_1820F4D9C(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    goto LABEL_8;
  }

  if (v6)
  {
    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 >= a1)
    {
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_28;
  }

  v18[0] = a1;
  LOWORD(v18[1]) = a2;
  BYTE2(v18[1]) = BYTE2(a2);
  BYTE3(v18[1]) = BYTE3(a2);
  BYTE4(v18[1]) = BYTE4(a2);
  v7 = a6 >> 62;
  BYTE5(v18[1]) = BYTE5(a2);
  if ((a6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      v12 = 0;
      goto LABEL_25;
    }

    v14 = *(a5 + 16);
    v13 = *(a5 + 24);
    v12 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      goto LABEL_25;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (!v7)
  {
LABEL_14:
    v12 = BYTE6(a6);
LABEL_25:
    v10 = a3(v18, v12);
    return v10 & 1;
  }

  LODWORD(v6) = HIDWORD(a5) - a5;
  if (!__OFSUB__(HIDWORD(a5), a5))
  {
    goto LABEL_23;
  }

  __break(1u);
LABEL_8:
  if (v6 != 2)
  {
    v11 = a6 >> 62;
    memset(v18, 0, 14);
    if ((a6 >> 62) > 1)
    {
      v12 = 0;
      if (v11 != 2)
      {
        goto LABEL_25;
      }

      v16 = *(a5 + 16);
      v15 = *(a5 + 24);
      v12 = v15 - v16;
      if (!__OFSUB__(v15, v16))
      {
        goto LABEL_25;
      }

      __break(1u);
    }

    else if (!v11)
    {
      goto LABEL_14;
    }

    LODWORD(v6) = HIDWORD(a5) - a5;
    if (!__OFSUB__(HIDWORD(a5), a5))
    {
LABEL_23:
      v12 = v6;
      goto LABEL_25;
    }

LABEL_29:
    __break(1u);
  }

  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
LABEL_11:
  v10 = sub_1820F4CCC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4, a5, a6);
  return v10 & 1;
}

uint64_t sub_1820F4F70(void *a1, uint64_t a2, uint64_t a3)
{
  v20[2] = a3;
  if (a2 && (v4 = a1, sub_181AA5FF0(v21), v4, (v5 = v21[0]) != 0))
  {
    v6 = v21[1];
    v7 = sub_182AD3158();
    if (*(v5 + 16) && (v9 = sub_181E68520(v7, v8), (v10 & 1) != 0))
    {
      v11 = *(v5 + 56) + 24 * v9;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      sub_1820F5148(*v11, v13, *(v11 + 16));

      if (!v14)
      {

        v15 = sub_181F76154(v12, v13);
        v16 = v18;
        goto LABEL_14;
      }

      if (v14 == 1)
      {
        sub_181F49B58(v12, v13);
        v15 = v12;
        v16 = v13;
LABEL_14:
        sub_181F49B58(v15, v16);
        v17 = sub_1820F4D9C(v15, v16, sub_181D785C0, v20, v15, v16);
        sub_181C1F2E4(v15, v16);
        sub_1820F5168(v12, v13, v14);
        sub_181AB612C(v5, v6);
        sub_181C1F2E4(v15, v16);
        return v17 & 1;
      }

      if (v12 | v13)
      {
        v15 = 0;
        v16 = 0xC000000000000000;
        goto LABEL_14;
      }
    }

    else
    {
    }

    v17 = (*(a3 + 16))(a3, 0, 0);
    sub_181AB612C(v5, v6);
  }

  else
  {
    v17 = (*(a3 + 16))(a3, 0, 0);
  }

  return v17 & 1;
}

double sub_1820F5148(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 == 1)
  {
    return sub_181F49B58(a1, a2);
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1820F5168(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 1)
  {
    return sub_181C1F2E4(result, a2);
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1820F5188(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1820F5168(result, a2, a3);
  }

  return result;
}

uint64_t sub_1820F519C(char *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URLEndpoint(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v9 = a1;
  swift_beginAccess();
  sub_181A546E0(&a1[v8], v4, type metadata accessor for Endpoint.EndpointType);

  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_181B2BEE4(v4, v7);
    v10 = sub_182AD2028();
    if (v11)
    {
      v12 = *&v7[*(v5 + 28)];
    }

    else
    {
      v12 = v10;
    }

    sub_181A5513C(v7, type metadata accessor for URLEndpoint);
  }

  else
  {
    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }

  return v12;
}

uint64_t sub_1820F5344@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

unint64_t NetworkAgentType.type.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 <= 4)
  {
    if (v2 > 1)
    {
      if (v2 == 2)
      {
        v3 = 0x65674179786F7250;
      }

      else if (v2 == 3)
      {
        v3 = 0x79786F7250;
      }

      else
      {
        v3 = 0x5079636176697250;
      }

      goto LABEL_23;
    }

    if (!v2)
    {
      v3 = 0x74656E7265746E49;
      goto LABEL_23;
    }

    if (v2 == 1)
    {
      v3 = 0x7265764F68746150;
      goto LABEL_23;
    }

LABEL_22:
    v3 = *(v0 + 16);
    goto LABEL_23;
  }

  if (v2 > 6)
  {
    switch(v2)
    {
      case 7:
        v3 = 0x4465746176697250;
        goto LABEL_23;
      case 8:
        v3 = 0xD000000000000010;
        goto LABEL_23;
      case 9:
        v3 = 0xD000000000000011;
        goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v2 == 5)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x746E656741534E44;
  }

LABEL_23:
  sub_181ADC1E0(v1, v2);
  return v3;
}

unint64_t sub_1820F55CC()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 72);
  if (v2 <= 4)
  {
    if (v2 > 1)
    {
      if (v2 == 2)
      {
        v3 = 0x65674179786F7250;
      }

      else if (v2 == 3)
      {
        v3 = 0x79786F7250;
      }

      else
      {
        v3 = 0x5079636176697250;
      }

      goto LABEL_23;
    }

    if (!v2)
    {
      v3 = 0x74656E7265746E49;
      goto LABEL_23;
    }

    if (v2 == 1)
    {
      v3 = 0x7265764F68746150;
      goto LABEL_23;
    }

LABEL_22:
    v3 = *(*v0 + 64);
    goto LABEL_23;
  }

  if (v2 > 6)
  {
    switch(v2)
    {
      case 7:
        v3 = 0x4465746176697250;
        goto LABEL_23;
      case 8:
        v3 = 0xD000000000000010;
        goto LABEL_23;
      case 9:
        v3 = 0xD000000000000011;
        goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v2 == 5)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x746E656741534E44;
  }

LABEL_23:
  sub_181ADC1E0(v1, v2);
  return v3;
}

uint64_t NetworkAgentType.description.getter()
{
  v1 = *v0;
  if (*(v0 + 1) > 2)
  {
    if (*(&v1 + 1) == 3)
    {
      v3 = 0xD000000000000010;
      v2 = 0x8000000182BD7080;
      goto LABEL_16;
    }

    if (*(&v1 + 1) != 4)
    {
      if (*(&v1 + 1) == 5)
      {
        v2 = 0x8000000182BD7060;
        v3 = 0xD000000000000013;
        goto LABEL_16;
      }

LABEL_12:
      v2 = *(v0 + 1);
      v3 = *v0;
      goto LABEL_16;
    }

    v2 = 0xE700000000000000;
    v4 = 0x6C6177796B53;
LABEL_15:
    v3 = v4 & 0xFFFFFFFFFFFFLL | 0x6B000000000000;
    goto LABEL_16;
  }

  if (!*(&v1 + 1))
  {
    v2 = 0xE700000000000000;
    v4 = 0x726F7774654ELL;
    goto LABEL_15;
  }

  if (*(&v1 + 1) == 1)
  {
    v2 = 0xE800000000000000;
    v3 = 0x72616C756C6C6543;
    goto LABEL_16;
  }

  if (*(&v1 + 1) != 2)
  {
    goto LABEL_12;
  }

  v2 = 0xEC0000006769666ELL;
  v3 = 0x6F436D6574737953;
LABEL_16:
  sub_181AA5C1C(v1, *(v0 + 1));
  MEMORY[0x1865D9CA0](v3, v2);

  MEMORY[0x1865D9CA0](58, 0xE100000000000000);
  v5 = NetworkAgentType.type.getter();
  MEMORY[0x1865D9CA0](v5);

  return 0;
}

BOOL static AgentResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v8 = v2;
  v9 = v3;
  v4 = *(a1 + 4);
  v6 = *(a2 + 4);
  v7 = v4;
  return _s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(&v7, &v6);
}

BOOL sub_1820F5968(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v8 = v2;
  v9 = v3;
  v4 = *(a1 + 4);
  v6 = *(a2 + 4);
  v7 = v4;
  return _s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(&v7, &v6);
}

uint64_t sub_1820F59BC(uint64_t a1, uint64_t a2)
{
  sub_182AD44E8();
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v3 = 3;
        goto LABEL_15;
      case 4:
        v3 = 4;
        goto LABEL_15;
      case 5:
        v3 = 5;
        goto LABEL_15;
    }
  }

  else
  {
    switch(a2)
    {
      case 0:
        v3 = 0;
        goto LABEL_15;
      case 1:
        v3 = 1;
        goto LABEL_15;
      case 2:
        v3 = 2;
LABEL_15:
        MEMORY[0x1865DB070](v3);
        return sub_182AD4558();
    }
  }

  MEMORY[0x1865DB070](6);
  sub_182AD30E8();
  return sub_182AD4558();
}

uint64_t sub_1820F5AA8(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 3;
        return MEMORY[0x1865DB070](v3);
      case 4:
        v3 = 4;
        return MEMORY[0x1865DB070](v3);
      case 5:
        v3 = 5;
        return MEMORY[0x1865DB070](v3);
    }
  }

  else
  {
    switch(v2)
    {
      case 0:
        v3 = 0;
        return MEMORY[0x1865DB070](v3);
      case 1:
        v3 = 1;
        return MEMORY[0x1865DB070](v3);
      case 2:
        v3 = 2;
        return MEMORY[0x1865DB070](v3);
    }
  }

  MEMORY[0x1865DB070](6);

  return sub_182AD30E8();
}

uint64_t sub_1820F5B78(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_182AD44E8();
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 3;
        goto LABEL_15;
      case 4:
        v3 = 4;
        goto LABEL_15;
      case 5:
        v3 = 5;
        goto LABEL_15;
    }
  }

  else
  {
    switch(v2)
    {
      case 0:
        v3 = 0;
        goto LABEL_15;
      case 1:
        v3 = 1;
        goto LABEL_15;
      case 2:
        v3 = 2;
LABEL_15:
        MEMORY[0x1865DB070](v3);
        return sub_182AD4558();
    }
  }

  MEMORY[0x1865DB070](6);
  sub_182AD30E8();
  return sub_182AD4558();
}

uint64_t sub_1820F5C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 4)
  {
    if (a3 <= 6)
    {
      if (a3 == 5)
      {
        v3 = 5;
      }

      else
      {
        v3 = 6;
      }

      return MEMORY[0x1865DB070](v3, a2);
    }

    switch(a3)
    {
      case 7:
        v3 = 7;
        return MEMORY[0x1865DB070](v3, a2);
      case 8:
        v3 = 8;
        return MEMORY[0x1865DB070](v3, a2);
      case 9:
        v3 = 9;
        return MEMORY[0x1865DB070](v3, a2);
    }
  }

  else
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v3 = 2;
      }

      else if (a3 == 3)
      {
        v3 = 3;
      }

      else
      {
        v3 = 4;
      }

      return MEMORY[0x1865DB070](v3, a2);
    }

    if (!a3)
    {
      v3 = 0;
      return MEMORY[0x1865DB070](v3, a2);
    }

    if (a3 == 1)
    {
      v3 = 1;
      return MEMORY[0x1865DB070](v3, a2);
    }
  }

  MEMORY[0x1865DB070](10);

  return sub_182AD30E8();
}

uint64_t sub_1820F5D80()
{
  v1 = *v0;
  v2 = v0[1];
  sub_182AD44E8();
  sub_1820F5C68(v4, v1, v2);
  return sub_182AD4558();
}

uint64_t sub_1820F5DD4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_182AD44E8();
  sub_1820F5C68(v5, v2, v3);
  return sub_182AD4558();
}

uint64_t NetworkAgentType.hash(into:)(uint64_t a1)
{
  v4 = v1[1];
  v3 = v1[2];
  v5 = v1[3];
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v6 = 3;
        goto LABEL_15;
      case 4:
        v6 = 4;
        goto LABEL_15;
      case 5:
        v6 = 5;
        goto LABEL_15;
    }

LABEL_12:
    MEMORY[0x1865DB070](6);
    sub_182AD30E8();
    goto LABEL_16;
  }

  if (!v4)
  {
    v6 = 0;
    goto LABEL_15;
  }

  if (v4 == 1)
  {
    v6 = 1;
    goto LABEL_15;
  }

  if (v4 != 2)
  {
    goto LABEL_12;
  }

  v6 = 2;
LABEL_15:
  MEMORY[0x1865DB070](v6);
LABEL_16:

  return sub_1820F5C68(a1, v3, v5);
}

uint64_t NetworkAgentType.hashValue.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  sub_182AD44E8();
  if (v1 > 2)
  {
    switch(v1)
    {
      case 3:
        v4 = 3;
        goto LABEL_15;
      case 4:
        v4 = 4;
        goto LABEL_15;
      case 5:
        v4 = 5;
        goto LABEL_15;
    }
  }

  else
  {
    switch(v1)
    {
      case 0:
        v4 = 0;
        goto LABEL_15;
      case 1:
        v4 = 1;
        goto LABEL_15;
      case 2:
        v4 = 2;
LABEL_15:
        MEMORY[0x1865DB070](v4);
        goto LABEL_16;
    }
  }

  MEMORY[0x1865DB070](6);
  sub_182AD30E8();
LABEL_16:
  sub_1820F5C68(v6, v2, v3);
  return sub_182AD4558();
}

uint64_t sub_1820F6014(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  sub_182AD44E8();
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v5 = 3;
        goto LABEL_15;
      case 4:
        v5 = 4;
        goto LABEL_15;
      case 5:
        v5 = 5;
        goto LABEL_15;
    }
  }

  else
  {
    switch(v2)
    {
      case 0:
        v5 = 0;
        goto LABEL_15;
      case 1:
        v5 = 1;
        goto LABEL_15;
      case 2:
        v5 = 2;
LABEL_15:
        MEMORY[0x1865DB070](v5);
        goto LABEL_16;
    }
  }

  MEMORY[0x1865DB070](6);
  sub_182AD30E8();
LABEL_16:
  sub_1820F5C68(v7, v3, v4);
  return sub_182AD4558();
}

uint64_t sub_1820F6114(uint64_t a1)
{
  v2 = v1;
  sub_182AD44F8();
  v5 = v2[7];
  v4 = v2[8];
  v6 = v2[9];
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v7 = 3;
        goto LABEL_15;
      case 4:
        v7 = 4;
        goto LABEL_15;
      case 5:
        v7 = 5;
        goto LABEL_15;
    }
  }

  else
  {
    switch(v5)
    {
      case 0:
        v7 = 0;
        goto LABEL_15;
      case 1:
        v7 = 1;
        goto LABEL_15;
      case 2:
        v7 = 2;
LABEL_15:
        MEMORY[0x1865DB070](v7);
        goto LABEL_16;
    }
  }

  MEMORY[0x1865DB070](6);
  sub_182AD30E8();
LABEL_16:
  sub_1820F5C68(a1, v4, v6);
  sub_182AD4538();
  return sub_182AD4538();
}

uint64_t sub_1820F6240()
{
  v1 = v0[2];
  if (v1)
  {
    MEMORY[0x1865DF520](v1, -1, -1);
  }

  v2 = v0[8];
  v3 = v0[9];
  sub_181E4926C(v0[6], v0[7]);
  sub_181E49280(v2, v3);

  return swift_deallocClassInstance();
}

uint64_t NetworkAgent.hashValue.getter()
{
  sub_182AD44E8();
  sub_1820F6114(v1);
  return sub_182AD4558();
}

uint64_t sub_1820F6320()
{
  sub_182AD44E8();
  sub_1820F6114(v1);
  return sub_182AD4558();
}

uint64_t sub_1820F6364(uint64_t a1)
{
  sub_182AD44E8();
  sub_1820F6114(v2);
  return sub_182AD4558();
}

uint64_t NetworkAgentNexus.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  sub_1820F6114(a1);
  sub_182AD4538();
  sub_182AD4538();
  MEMORY[0x1865DB070](*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      v5 += 4;
      sub_182AD4538();
      --v4;
    }

    while (v4);
  }

  MEMORY[0x1865DB070](*(v2 + 16));
  v6 = *(v2 + 16);
  if (v6)
  {
    v7 = v2 + 32;
    do
    {
      v7 += 4;
      sub_182AD4538();
      --v6;
    }

    while (v6);
  }

  sub_182AD4538();
  return sub_182AD4538();
}

uint64_t NetworkAgentNexus.hashValue.getter()
{
  v2[9] = *v0;
  v2[10] = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  sub_182AD44E8();
  NetworkAgentNexus.hash(into:)(v2);
  return sub_182AD4558();
}

uint64_t sub_1820F64DC()
{
  v2[9] = *v0;
  v2[10] = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  sub_182AD44E8();
  NetworkAgentNexus.hash(into:)(v2);
  return sub_182AD4558();
}

uint64_t sub_1820F6544(uint64_t a1)
{
  v3[9] = *v1;
  v3[10] = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  sub_182AD44E8();
  NetworkAgentNexus.hash(into:)(v3);
  return sub_182AD4558();
}

uint64_t NetworkAgentCellular.hash(into:)(uint64_t a1)
{
  sub_1820F6114(a1);
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  return sub_182AD4518();
}

uint64_t NetworkAgentCellular.hashValue.getter()
{
  sub_182AD44E8();
  sub_1820F6114(v1);
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  return sub_182AD4558();
}

uint64_t sub_1820F66B4()
{
  sub_182AD44E8();
  sub_1820F6114(v1);
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  return sub_182AD4558();
}

uint64_t sub_1820F674C(uint64_t a1)
{
  sub_1820F6114(a1);
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  return sub_182AD4518();
}

uint64_t sub_1820F67BC(uint64_t a1)
{
  sub_182AD44E8();
  sub_1820F6114(v2);
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  return sub_182AD4558();
}

uint64_t sub_1820F6854()
{

  return swift_deallocClassInstance();
}

BOOL _s7Network0A9AgentTypeV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      if (v8 != 3)
      {
        return 0;
      }

      goto LABEL_24;
    }

    if (v5 != 4)
    {
      if (v5 == 5)
      {
        if (v8 != 5)
        {
          return 0;
        }

        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v8 != 4)
    {
      return 0;
    }
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v8 != 1)
        {
          return 0;
        }

        goto LABEL_24;
      }

      if (v5 == 2)
      {
        if (v8 != 2)
        {
          return 0;
        }

        goto LABEL_24;
      }

LABEL_16:
      if (v8 < 6 || (v4 != *a2 || v5 != v8) && (sub_182AD4268() & 1) == 0)
      {
        return 0;
      }

      goto LABEL_24;
    }

    if (v8)
    {
      return 0;
    }
  }

LABEL_24:
  if (v7 > 4)
  {
    if (v7 <= 6)
    {
      if (v7 == 5)
      {
        if (v9 == 5)
        {
          return 1;
        }
      }

      else if (v9 == 6)
      {
        return 1;
      }

      return 0;
    }

    switch(v7)
    {
      case 7:
        return v9 == 7;
      case 8:
        return v9 == 8;
      case 9:
        return v9 == 9;
    }
  }

  else
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        if (v9 == 2)
        {
          return 1;
        }
      }

      else if (v7 == 3)
      {
        if (v9 == 3)
        {
          return 1;
        }
      }

      else if (v9 == 4)
      {
        return 1;
      }

      return 0;
    }

    if (!v7)
    {
      return !v9;
    }

    if (v7 == 1)
    {
      return v9 == 1;
    }
  }

  return v9 >= 0xA && (v6 == v10 && v7 == v9 || (sub_182AD4268() & 1) != 0);
}

BOOL sub_1820F6A90(uint64_t a1, uint64_t a2)
{
  v23 = *(a1 + 32);
  v20 = *(a2 + 32);
  if (_s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(&v23, &v20) && (v5 = *(a1 + 56), v6 = *(a1 + 64), v7 = *(a1 + 72), *&v23 = *(a1 + 48), v4 = v23, *(&v23 + 1) = v5, v24 = v6, v25 = v7, v9 = *(a2 + 56), v10 = *(a2 + 64), v11 = *(a2 + 72), *&v20 = *(a2 + 48), v8 = v20, *(&v20 + 1) = v9, v21 = v10, v22 = v11, v19 = _s7Network0A9AgentTypeV2eeoiySbAC_ACtFZ_0(&v23, &v20), v15 = *(&v20 + 1), v16 = v20, v17 = v22, v18 = v21, sub_181AA5C1C(v4, v5), sub_181ADC1E0(v6, v7), sub_181AA5C1C(v8, v9), sub_181ADC1E0(v10, v11), sub_181E4926C(v16, v15), sub_181E49280(v18, v17), v12 = v24, v13 = v25, sub_181E4926C(v23, *(&v23 + 1)), sub_181E49280(v12, v13), v19) && *(a1 + 80) == *(a2 + 80))
  {
    return *(a1 + 84) == *(a2 + 84);
  }

  else
  {
    return 0;
  }
}

uint64_t _s7Network0A10AgentNexusV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  v5 = *(a1 + 16);
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  v18 = *(a1 + 36);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 12);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 36);

  v11 = sub_1820F6A90(v2, v6);

  result = 0;
  if (v11 && v3 == v7 && v4 == v8)
  {
    if (sub_182081254(v5, v10))
    {
      v13 = sub_182081254(v16, v9) & (v17 == v14);
      if (v18 == v15)
      {
        return v13;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL _s7Network0A13AgentCellularV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v14 = *(a1 + 9);
  v4 = *(a1 + 10);
  v5 = *(a1 + 11);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 9);
  v9 = *(a2 + 10);
  v10 = *(a2 + 11);

  v11 = sub_1820F6A90(v2, v6);

  result = 0;
  if (v11 && v3 == v7)
  {
    v13 = v5 == v10;
    if (v4 != v9)
    {
      v13 = 0;
    }

    return v14 == v8 && v13;
  }

  return result;
}

unint64_t sub_1820F6D90()
{
  result = qword_1EA83A490;
  if (!qword_1EA83A490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A490);
  }

  return result;
}

unint64_t sub_1820F6DE8()
{
  result = qword_1EA83A498;
  if (!qword_1EA83A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A498);
  }

  return result;
}

unint64_t sub_1820F6E40()
{
  result = qword_1EA83A4A0;
  if (!qword_1EA83A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A4A0);
  }

  return result;
}

unint64_t sub_1820F6E98()
{
  result = qword_1EA83A4A8;
  if (!qword_1EA83A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A4A8);
  }

  return result;
}

uint64_t sub_1820F6EEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 32))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 6;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1820F6F48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2147483642;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFF9)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFF9)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_1820F6FAC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1820F6FF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1820F7060(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
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

uint64_t sub_1820F70A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1820F70F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF5 && *(a1 + 16))
  {
    return (*a1 + 2147483638);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 9;
  if (v4 >= 0xB)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1820F7150(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF6)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483638;
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 9;
    }
  }

  return result;
}

uint64_t sub_1820F71B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1820F7208(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

unint64_t sub_1820F726C()
{
  result = qword_1EA83A4B0;
  if (!qword_1EA83A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A4B0);
  }

  return result;
}

unint64_t sub_1820F72C4()
{
  result = qword_1EA83A4B8;
  if (!qword_1EA83A4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A4B8);
  }

  return result;
}

unint64_t sub_1820F731C()
{
  result = qword_1EA83A4C0;
  if (!qword_1EA83A4C0)
  {
    type metadata accessor for NetworkAgent.NetworkAgentBackingClass();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A4C0);
  }

  return result;
}

uint64_t sub_1820F7370(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        return a4 == 3;
      case 4:
        return a4 == 4;
      case 5:
        return a4 == 5;
    }
  }

  else
  {
    switch(a2)
    {
      case 0:
        return !a4;
      case 1:
        return a4 == 1;
      case 2:
        return a4 == 2;
    }
  }

  if (a4 < 6)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_182AD4268();
  }
}

uint64_t sub_1820F7430(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 > 4)
  {
    if (a2 <= 6)
    {
      if (a2 == 5)
      {
        if (a4 == 5)
        {
          return 1;
        }
      }

      else if (a4 == 6)
      {
        return 1;
      }

      return 0;
    }

    switch(a2)
    {
      case 7:
        return a4 == 7;
      case 8:
        return a4 == 8;
      case 9:
        return a4 == 9;
    }
  }

  else
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        if (a4 == 2)
        {
          return 1;
        }
      }

      else if (a2 == 3)
      {
        if (a4 == 3)
        {
          return 1;
        }
      }

      else if (a4 == 4)
      {
        return 1;
      }

      return 0;
    }

    if (!a2)
    {
      return !a4;
    }

    if (a2 == 1)
    {
      return a4 == 1;
    }
  }

  if (a4 < 0xA)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_182AD4268();
  }
}

uint64_t NWProtocolDefinition.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1820F760C()
{
  v1 = *(*v0 + 16);

  return v1;
}

char *sub_1820F7648()
{
  result = sub_1820F7668();
  off_1EA836A90 = result;
  return result;
}

char *sub_1820F7668()
{
  sub_1820F79A4(&qword_1EA83A4C8, &qword_182AF6570, &unk_1EA83A4D0, &unk_182AF6578);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_182AEB7C0;
  *(inited + 32) = type metadata accessor for NWProtocolIP.Options();
  *(inited + 40) = type metadata accessor for NWProtocolQUIC.Options();
  *(inited + 48) = type metadata accessor for NWProtocolTCP.Options();
  *(inited + 56) = type metadata accessor for NWProtocolTLS.Options();
  *(inited + 64) = type metadata accessor for NWProtocolUDP.Options();
  *(inited + 72) = type metadata accessor for NWProtocolWebSocket.Options();
  *(inited + 80) = type metadata accessor for NWProtocolFramer.Options();
  *(inited + 88) = type metadata accessor for NWProtocolHTTP.Options();
  v1 = type metadata accessor for NWProtocolHTTPEncoding.Options();
  result = sub_181F5AB5C(1, 9, 1, inited);
  *(result + 2) = 9;
  *(result + 12) = v1;
  return result;
}

uint64_t NWProtocolOptions.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_1820F7820()
{
  result = sub_1820F7840();
  off_1EA836C18 = result;
  return result;
}

uint64_t sub_1820F7840()
{
  sub_1820F79A4(&qword_1EA83A4E0, &qword_182AF6588, &qword_1EA83A4E8, &unk_182AF6590);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_182AEB7C0;
  *(v0 + 32) = type metadata accessor for NWProtocolIP.Metadata();
  *(v0 + 40) = type metadata accessor for NWProtocolQUIC.Metadata();
  *(v0 + 48) = type metadata accessor for NWProtocolTCP.Metadata();
  *(v0 + 56) = type metadata accessor for NWProtocolTLS.Metadata();
  *(v0 + 64) = type metadata accessor for NWProtocolUDP.Metadata();
  *(v0 + 72) = type metadata accessor for NWProtocolWebSocket.Metadata();
  *(v0 + 80) = type metadata accessor for NWProtocolFramer.Message();
  *(v0 + 88) = type metadata accessor for NWProtocolHTTP.Metadata();
  return v0;
}

uint64_t sub_1820F79A4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  if (swift_isClassType() && v6)
  {
    v7 = &qword_1EA838E70;
    v8 = qword_182AF1920;
  }

  else
  {
    v7 = a3;
    v8 = a4;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
}

uint64_t NWProtocolFramer.Definition.__allocating_init(implementation:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  NWProtocolFramer.Definition.init(implementation:)(a1, a2);
  return v4;
}

void *NWProtocolFramer.Definition.init(implementation:)(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v14[4] = sub_181ED4AF4;
  v14[5] = v5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_181EC957C;
  v14[3] = &block_descriptor_22;
  v6 = _Block_copy(v14);

  v7 = sub_182AD3048();

  definition = nw_framer_create_definition((v7 + 32), 0, v6);

  _Block_release(v6);
  v2[4] = definition;
  v9 = [swift_unknownObjectRetain() description];
  v10 = sub_182AD2F88();
  v12 = v11;
  swift_unknownObjectRelease();

  v2[2] = v10;
  v2[3] = v12;
  return v2;
}

uint64_t sub_1820F7CF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  LOBYTE(v2) = v2(v3);

  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t NWProtocolFramer.Definition.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t NWProtocolFramer.Definition.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void (*sub_1820F7DCC(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x58uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[9] = a3;
  v7[10] = v3;
  v7[8] = a2;
  v9 = *(v3 + 16);
  v10 = sub_182AD3048();
  v11 = nw_framer_options_copy_object_value(v9, (v10 + 32));

  if (v11)
  {
    sub_182AD3AA8();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  *v8 = v13;
  v8[1] = v14;
  return sub_1820F7EB0;
}

uint64_t sub_1820F7EE0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = swift_allocObject();
  v4 = swift_unknownObjectRetain();
  v5 = a2(v4);
  swift_unknownObjectRelease();

  *(v3 + 16) = v5;
  return v3;
}

uint64_t NWProtocolFramer.Message.init(instance:)(uint64_t a1)
{
  v2 = swift_unknownObjectRetain();
  v3 = nw_framer_message_create(v2);
  swift_unknownObjectRelease();

  *(v1 + 16) = v3;
  return v1;
}

double sub_1820F7FA4@<D0>(uint64_t a1@<X0>, uint64_t (*a3)(uint64_t, uint64_t)@<X3>, _OWORD *a4@<X8>)
{
  v6 = *(*a1 + 16);
  v7 = sub_182AD3048();
  v8 = a3(v6, v7 + 32);

  if (v8)
  {
    sub_182AD3AA8();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1820F803C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(_BYTE *, uint64_t, uint64_t, __n128))
{
  v6 = *a3;
  v7 = a3[1];
  sub_181BCF834(a1, v9);

  return (a5)(v9, v6, v7);
}

void (*sub_1820F809C(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x58uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[9] = a3;
  v7[10] = v3;
  v7[8] = a2;
  v9 = *(v3 + 16);
  v10 = sub_182AD3048();
  v11 = nw_framer_message_copy_object_value(v9, (v10 + 32));

  if (v11)
  {
    sub_182AD3AA8();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  *v8 = v13;
  v8[1] = v14;
  return sub_1820F8180;
}

void sub_1820F8198(uint64_t *a1, char a2, void (*a3)(char *, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 64);
  if (a2)
  {
    sub_181BCF834(*a1, (v4 + 32));

    a3(v4 + 32, v6, v5);
    sub_181F49A88(v4, &unk_1EA83A4F0, &unk_182AF65A0);
  }

  else
  {

    a3(v4, v6, v5);
  }

  free(v4);
}

uint64_t NWProtocolFramer.Instance.debugDescription.getter()
{
  v1 = [*(v0 + 16) description];
  v2 = sub_182AD2F88();

  return v2;
}

void NWProtocolFramer.Instance.markFailed(error:)(unsigned int *a1)
{
  if (*(a1 + 4) == 255)
  {
    v2 = *(v1 + 16);
    LODWORD(v3) = 0;
  }

  else
  {
    v3 = *a1 | (*(a1 + 4) << 32);
    v2 = *(v1 + 16);
    if (!HIDWORD(v3))
    {
      v4 = *(v1 + 16);
      LODWORD(v3) = sub_182AD2768();
      v2 = v4;
    }
  }

  nw_framer_mark_failed_with_error(v2, v3);
}

uint64_t sub_1820F8354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void, uint64_t))
{
  if (a1)
  {
    v4 = a2 + a1;
  }

  else
  {
    v4 = 0;
  }

  return a4(a1, v4, 0, a3);
}

uint64_t NWProtocolFramer.Instance.deliverInput(data:message:isComplete:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;

  return sub_1820F8CF0(a1, a2, v4, a3, v5);
}

uint64_t NWProtocolFramer.Instance.parseOutput(minimumIncompleteLength:maximumLength:parse:)(size_t a1, size_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1820F9D18;
  *(v11 + 24) = v10;
  v15[4] = sub_1820F9D44;
  v15[5] = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_181F14AF8;
  v15[3] = &block_descriptor_19;
  v12 = _Block_copy(v15);

  v13 = nw_framer_parse_output(v9, a1, a2, 0, v12);
  _Block_release(v12);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if ((a1 & 1) == 0)
  {
    return v13;
  }

  __break(1u);
  return result;
}

void NWProtocolFramer.Instance.writeOutput(data:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(v3 + 16);
  v5 = sub_182AD2138();
  output_data = NWCreateDispatchDataFromNSData(v5, v6);

  if (output_data)
  {
    nw_framer_write_output_data(v4, output_data);
  }

  else
  {
    __break(1u);
  }
}

void NWProtocolFramer.Instance.writeOutput(discontiguousData:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_182AD2808();
  nw_framer_write_output_data(v2, v3);
}

void NWProtocolFramer.Instance.writeOutput<A>(data:)(NSObject *isa, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0, &unk_182AF9540);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - v6;
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v15 = sub_182AD2868();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v8 + 16);
  v20(v14, isa, a2, v17);
  v21 = swift_dynamicCast();
  v22 = *(v16 + 56);
  if (v21)
  {
    v22(v7, 0, 1, v15);
    (*(v16 + 32))(v19, v7, v15);
    v23 = *(v33 + 16);
    v24 = sub_182AD2808();
    nw_framer_write_output_data(v23, v24);

    (*(v16 + 8))(v19, v15);
    return;
  }

  v25 = v33;
  v22(v7, 1, 1, v15);
  sub_181F49A88(v7, &unk_1EA8394B0, &unk_182AF9540);
  (v20)(v11, isa, a2);
  if (swift_dynamicCast())
  {
    a2 = v34;
    v26 = v35;
    isa = v25[2].isa;
    v27 = sub_182AD2138();
    v25 = NWCreateDispatchDataFromNSData(v27, v28);

    if (v25)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  a2 = sub_1820F93E0(isa, a2, *(*(*(*(v32 + 8) + 8) + 8) + 8));
  v26 = v29;
  isa = v25[2].isa;
  v30 = sub_182AD2138();
  v25 = NWCreateDispatchDataFromNSData(v30, v31);

  if (!v25)
  {
    __break(1u);
    return;
  }

LABEL_7:
  nw_framer_write_output_data(isa, v25);

  sub_181C1F2E4(a2, v26);
}

void NWProtocolFramer.Instance.scheduleWakeup(wakeupTime:)(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = -1;
  }

  else
  {
    v2 = *a1;
  }

  nw_framer_schedule_wakeup(*(v1 + 16), v2);
}

void NWProtocolFramer.Instance.async(execute:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_181B7D048;
  v5[3] = &block_descriptor_22;
  v4 = _Block_copy(v5);

  nw_framer_async(v3, v4);
  _Block_release(v4);
}

uint64_t NWProtocolFramer.Instance.remote.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = nw_framer_copy_remote_endpoint(*(v1 + 16));

  return sub_181B80998(v3, a1);
}

uint64_t NWProtocolFramer.Instance.local.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = nw_framer_copy_local_endpoint(*(v1 + 16));

  return sub_181B80998(v3, a1);
}

uint64_t NWProtocolFramer.Instance.parameters.getter()
{
  v1 = nw_framer_copy_parameters(*(v0 + 16));
  type metadata accessor for NWParameters();
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00, &qword_182AEE4C0);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = v1;
  *(v2 + 16) = v3;
  return v2;
}

uint64_t sub_1820F8BD8(uint64_t a1, uint64_t (*a2)(void, void))
{
  result = a2(*(v2 + 16), *(a1 + 16));
  if (!result)
  {
    sub_181F4B3B8();
    swift_allocError();
    *v4 = 22;
    *(v4 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t NWProtocolFramer.StartResult.hashValue.getter()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1);
  return sub_182AD4558();
}

uint64_t sub_1820F8CF0(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(input_buffer, 0, 14);
      v10 = *(a3 + 16);
      v11 = *(a4 + 16);
      v12 = input_buffer;
      v13 = a5 & 1;
      v9 = 0;
      goto LABEL_20;
    }

    v14 = *(result + 16);
    v15 = *(result + 24);
    v16 = sub_182AD1D58();
    if (v16)
    {
      v17 = sub_182AD1D88();
      if (__OFSUB__(v14, v17))
      {
        goto LABEL_24;
      }

      v16 += v14 - v17;
    }

    v18 = __OFSUB__(v15, v14);
    v19 = v15 - v14;
    if (v18)
    {
      goto LABEL_22;
    }

    result = sub_182AD1D78();
    if (v16)
    {
LABEL_15:
      if (result >= v19)
      {
        v9 = v19;
      }

      else
      {
        v9 = result;
      }

      v10 = *(a3 + 16);
      v11 = *(a4 + 16);
      v13 = a5 & 1;
      v12 = v16;
      goto LABEL_20;
    }

    __break(1u);
  }

  else if (!v8)
  {
    *input_buffer = result;
    *&input_buffer[8] = a2;
    input_buffer[10] = BYTE2(a2);
    input_buffer[11] = BYTE3(a2);
    input_buffer[12] = BYTE4(a2);
    v9 = BYTE6(a2);
    input_buffer[13] = BYTE5(a2);
    v10 = *(a3 + 16);
    v11 = *(a4 + 16);
    v12 = input_buffer;
    v13 = a5 & 1;
LABEL_20:
    nw_framer_deliver_input(v10, v12, v9, v11, v13);
  }

  v20 = result;
  v19 = (result >> 32) - result;
  if (result >> 32 < result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  v21 = sub_182AD1D58();
  if (!v21)
  {
    result = sub_182AD1D78();
    goto LABEL_26;
  }

  v22 = v21;
  v23 = sub_182AD1D88();
  if (__OFSUB__(v20, v23))
  {
    goto LABEL_23;
  }

  v16 = v20 - v23 + v22;
  result = sub_182AD1D78();
  if (v16)
  {
    goto LABEL_15;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1820F8EF8@<X0>(_BYTE *a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_181E68460(a1, &a1[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_182AD1DB8();
      swift_allocObject();
      v8 = sub_182AD1D48();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_182AD20C8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void sub_1820F8FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a4;
  v11 = a5;
  v12 = a3;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1820F91E0(MEMORY[0x1E69E7508], sub_1820F9BE0, v9, a1, a2, MEMORY[0x1E69E7508], MEMORY[0x1E69E73E0], TupleTypeMetadata2, MEMORY[0x1E69E7410], v8);
}

uint64_t sub_1820F9098@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v12 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v9 + 16))(v11, a3, a4);
  result = sub_182AD3278();
  *(a6 + v12) = result;
  return result;
}

void sub_1820F91E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v22 = v24 - v20;
  if (v16)
  {
    v23 = *(*(v18 - 8) + 72);
    if (v23)
    {
      if (v17 - v16 != 0x8000000000000000 || v23 != -1)
      {
        v19(v16, (v17 - v16) / v23, v14, v21);
        if (!v10)
        {
          return;
        }

        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  (v19)(0, 0, v24 - v20, v21.n128_f64[0]);
  v14 = v22;
  if (v10)
  {
LABEL_6:
    (*(v12 + 32))(a10, v14, a7);
  }
}

uint64_t sub_1820F9340(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_182AD1DB8();
      swift_allocObject();
      sub_182AD1D68();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_182AD20C8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1820F93E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v30 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  (*(v17 + 16))(&v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838C90, &qword_182AF6740);
  if (swift_dynamicCast())
  {
    sub_181F3CF20(v33, &v35);
    __swift_project_boxed_opaque_existential_1(&v35, v36);
    sub_182AD1DC8();
    v33[0] = v32;
    __swift_destroy_boxed_opaque_existential_1(&v35);
    goto LABEL_34;
  }

  v34 = 0;
  memset(v33, 0, sizeof(v33));
  sub_181F49A88(v33, &unk_1EA838C98, &qword_182AE8348);
  sub_182AD32A8();
  if (*(&v35 + 1) >> 60 != 15)
  {
    v33[0] = v35;
    goto LABEL_34;
  }

  v31 = v35;
  v18 = sub_182AD3288();
  *&v33[0] = sub_1820F9340(v18);
  *(&v33[0] + 1) = v19;
  MEMORY[0x1EEE9AC00](*&v33[0]);
  *(&v30 - 4) = a2;
  *(&v30 - 3) = a3;
  *(&v30 - 2) = a1;
  sub_182AD20E8();
  v20 = *&v9[*(TupleTypeMetadata2 + 48)];
  (*(v10 + 32))(v13, v9, AssociatedTypeWitness);
  v21 = *(&v33[0] + 1) >> 62;
  if ((*(&v33[0] + 1) >> 62) <= 1)
  {
    if (v21)
    {
      if (__OFSUB__(DWORD1(v33[0]), v33[0]))
      {
        goto LABEL_38;
      }

      if (v20 == DWORD1(v33[0]) - LODWORD(v33[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v20 == BYTE14(v33[0]))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (v21 == 2)
  {
    v23 = *(*&v33[0] + 16);
    v22 = *(*&v33[0] + 24);
    v24 = __OFSUB__(v22, v23);
    v25 = v22 - v23;
    if (v24)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    if (v20 == v25)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (v21 == 2)
    {
      v26 = *(*&v33[0] + 24);
    }

    else if (v21 == 1)
    {
      v26 = *&v33[0] >> 32;
    }

    else
    {
      v26 = BYTE14(v33[0]);
    }

LABEL_31:
    if (v26 >= v20)
    {
      sub_182AD20D8();
LABEL_33:
      (*(v10 + 8))(v13, AssociatedTypeWitness);
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (v20)
  {
    v26 = 0;
    goto LABEL_31;
  }

LABEL_20:
  swift_getAssociatedConformanceWitness();
  *&v35 = 0;
  *(&v35 + 7) = 0;
  sub_182AD3A08();
  if (BYTE1(v32) == 1)
  {
    goto LABEL_28;
  }

  LOBYTE(v27) = 0;
  do
  {
    *(&v35 + v27) = v32;
    v27 = v27 + 1;
    if ((v27 >> 8))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v27 == 14)
    {
      *&v32 = v35;
      *(&v32 + 6) = *(&v35 + 6);
      sub_182AD2108();
      LOBYTE(v27) = 0;
    }

    sub_182AD3A08();
  }

  while ((BYTE1(v32) & 1) == 0);
  if (v27)
  {
    *&v32 = v35;
    *(&v32 + 6) = *(&v35 + 6);
    sub_182AD2108();
    sub_181D9D680(v31, *(&v31 + 1));
    goto LABEL_33;
  }

LABEL_28:
  (*(v10 + 8))(v13, AssociatedTypeWitness);
  sub_181D9D680(v31, *(&v31 + 1));
LABEL_34:
  v28 = v33[0];
  sub_181F49B58(*&v33[0], *(&v33[0] + 1));
  sub_181C1F2E4(v28, *(&v28 + 1));
  return v28;
}

unint64_t sub_1820F9980()
{
  result = qword_1EA83A500;
  if (!qword_1EA83A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A500);
  }

  return result;
}

uint64_t sub_1820F9C04()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  return (*(v1 + 48))(v2, ObjectType, v1);
}

uint64_t sub_1820F9C5C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  return (*(v1 + 56))(v2, ObjectType, v1) & 1;
}

uint64_t sub_1820F9CB8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  return (*(v1 + 64))(v2, ObjectType, v1);
}

uint64_t sub_1820F9D90(uint64_t a1, void *a2)
{
  if (a2)
  {
    type metadata accessor for CProtocol.COptions();
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 24) = a2;
    v5 = *(a1 + 16);
    swift_unknownObjectRetain();
    if (v5)
    {
      options_copy = nw_protocol_definition_get_options_copy(a2);
      if (options_copy)
      {
        *(v4 + 16) = options_copy(a2, v5);
      }
    }
  }

  else
  {
    v7 = nw_protocol_copy_tls_definition();
    type metadata accessor for CProtocol.COptions();
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 24) = v7;
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = swift_unknownObjectRetain();
      v10 = nw_protocol_definition_get_options_copy(v9);
      if (v10)
      {
        v11 = v10(v7, v8);
        swift_unknownObjectRelease();
        *(v4 + 16) = v11;
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  return v4;
}

uint64_t sub_1820F9E7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_181AA90F0(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1820F9EA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1820F9D90(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1820F9ED8@<X0>(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    type metadata accessor for CProtocol.CMetadata();
    swift_allocObject();
    v3 = swift_unknownObjectRetain();
  }

  else
  {
    v4 = nw_protocol_copy_tls_definition();
    type metadata accessor for CProtocol.CMetadata();
    swift_allocObject();
    v3 = v4;
  }

  result = sub_181A92460(v3);
  *a1 = result;
  return result;
}

uint64_t sub_1820F9F64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A558, &qword_182AF6840);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for SecFramer(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_181F49A88(a1, &qword_1EA83A558, &qword_182AF6840);
    v14 = sub_18224EFDC(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_182255294();
        v18 = v22;
      }

      sub_1820FCECC(*(v18 + 56) + *(v10 + 72) * v16, v8, type metadata accessor for SecFramer);
      sub_181FAA6B8(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_181F49A88(v8, &qword_1EA83A558, &qword_182AF6840);
  }

  else
  {
    sub_1820FCECC(a1, v13, type metadata accessor for SecFramer);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1822587C0(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1820FA1B8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_181E7BFC4(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_182258E54(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_182AD3E78();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_181F49A88(a1, &qword_1EA83A560, &qword_182AF6848);
    sub_182250244(a2, v9);
    v7 = sub_182AD3E78();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_181F49A88(v9, &qword_1EA83A560, &qword_182AF6848);
  }

  return result;
}

uint64_t sub_1820FA354(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v5;
    a3(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1820FCE6C(a2, type metadata accessor for NWActorID);
    *v5 = v21;
  }

  else
  {
    v14 = sub_18224F288(a2);
    if (v15)
    {
      v16 = v14;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v6;
      if (!v17)
      {
        a5();
        v18 = v22;
      }

      v19 = *(v18 + 48);
      v20 = type metadata accessor for NWActorID(0);
      sub_1820FCE6C(v19 + *(*(v20 - 8) + 72) * v16, type metadata accessor for NWActorID);

      a4(v16, v18);
      result = sub_1820FCE6C(a2, type metadata accessor for NWActorID);
      *v6 = v18;
    }

    else
    {
      return sub_1820FCE6C(a2, type metadata accessor for NWActorID);
    }
  }

  return result;
}

uint64_t sub_1820FA4BC(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839800, &qword_182AF6850);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for NWActorDiscoveryMechanism(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_181F49A88(a1, &qword_1EA839800, &qword_182AF6850);
    sub_182250320(a2, v7);
    sub_1820FCE6C(a2, type metadata accessor for NWActorID);
    return sub_181F49A88(v7, &qword_1EA839800, &qword_182AF6850);
  }

  else
  {
    sub_1820FCECC(a1, v11, type metadata accessor for NWActorDiscoveryMechanism);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_182259214(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1820FCE6C(a2, type metadata accessor for NWActorID);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_1820FA6A4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1822593C0(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_1820FCE6C(a3, type metadata accessor for NWActorID);
    *v3 = v17;
  }

  else
  {
    v10 = sub_18224F288(a3);
    if (v11)
    {
      v12 = v10;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v18 = *v4;
      if (!v13)
      {
        sub_1822567D0();
        v14 = v18;
      }

      v15 = *(v14 + 48);
      v16 = type metadata accessor for NWActorID(0);
      sub_1820FCE6C(v15 + *(*(v16 - 8) + 72) * v12, type metadata accessor for NWActorID);

      sub_181FAB6EC(v12, v14);
      result = sub_1820FCE6C(a3, type metadata accessor for NWActorID);
      *v4 = v14;
    }

    else
    {
      return sub_1820FCE6C(a3, type metadata accessor for NWActorID);
    }
  }

  return result;
}

uint64_t sub_1820FA800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839830, &qword_182AED960);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for NWActorSystem.ServerRole(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_181F49A88(a1, &qword_1EA839830, &qword_182AED960);
    sub_1822504A4(a2, a3, v9);

    return sub_181F49A88(v9, &qword_1EA839830, &qword_182AED960);
  }

  else
  {
    sub_1820FCECC(a1, v13, type metadata accessor for NWActorSystem.ServerRole);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_182259570(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_1820FA9D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F80, &unk_182AF2210);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839610, &qword_182AE6060);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_181F49A88(a1, &unk_1EA839F80, &unk_182AF2210);
    v14 = sub_18224F3EC(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_182257300();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_181FAC100(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_181F49A88(v8, &unk_1EA839F80, &unk_182AF2210);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_182259A2C(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1820FAC2C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A568, &qword_182AF6858);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB10, &unk_182AF6860);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_181F49A88(a1, &qword_1EA83A568, &qword_182AF6858);
    sub_182250624(a2, v7);
    v13 = sub_182AD2258();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_181F49A88(v7, &qword_1EA83A568, &qword_182AF6858);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_182259D18(v12, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_182AD2258();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1820FAE60()
{
  v0 = sub_182AD2698();
  __swift_allocate_value_buffer(v0, qword_1EA83A518);
  v1 = __swift_project_value_buffer(v0, qword_1EA83A518);
  if (qword_1EA836BD0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EA8431B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t NWActorSystemResultHandler.onReturn<A>(value:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  swift_conformsToProtocol();
  v3[13] = swift_conformsToProtocol();
  v3[14] = type metadata accessor for ReplyEnvelope(0);
  v3[15] = swift_task_alloc();
  v4 = sub_182AD3E78();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = type metadata accessor for NWFileSerializationContext(0);
  v3[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820FB074, 0, 0);
}

uint64_t sub_1820FB074()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[12];
  v31 = sub_1820FB634();
  v30 = v4;
  v5 = type metadata accessor for NWActorSystemResultHandler(0);
  sub_181F75240(v3 + *(v5 + 28), v1);
  v29 = v5;
  sub_1820FCB74(v3 + *(v5 + 24), v1 + *(v2 + 20), type metadata accessor for NWActorID);
  sub_182AD1C98();
  swift_allocObject();
  v6 = sub_182AD1C88();
  v0[21] = v6;
  if (qword_1EA8372B0 != -1)
  {
    swift_once();
  }

  v8 = v0[19];
  v7 = v0[20];
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[16];
  v32 = v0[13];
  v12 = v0[11];
  v13 = __swift_project_value_buffer(v11, qword_1EA843458);
  (*(v10 + 16))(v9, v13, v11);
  v0[5] = v8;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 2);
  sub_1820FCB74(v7, boxed_opaque_existential_0Tm, type metadata accessor for NWFileSerializationContext);
  v15 = sub_182AD1C78();
  sub_1820FA1B8((v0 + 2), v9);
  v15(v0 + 6, 0);
  sub_1820FCE6C(v7, type metadata accessor for NWFileSerializationContext);
  v16 = sub_1821782FC(v6, v12, v32);
  v18 = v17;
  v20 = v0[14];
  v19 = v0[15];
  v21 = v0[12];
  v22 = sub_182AD2258();
  (*(*(v22 - 8) + 16))(v19, v21, v22);
  v23 = (v19 + v20[5]);
  *v23 = v16;
  v23[1] = v18;
  v24 = v19 + v20[6];
  *v24 = 0;
  *(v24 + 8) = 0;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0x3000000000000000;
  *(v24 + 32) = -1;
  v25 = v19 + v20[7];
  *v25 = v31;
  *(v25 + 8) = v30 & 1;
  __swift_project_boxed_opaque_existential_1((v21 + *(v29 + 20)), *(v21 + *(v29 + 20) + 24));
  v26 = swift_task_alloc();
  v0[22] = v26;
  *v26 = v0;
  v26[1] = sub_1820FB3CC;
  v27 = v0[15];

  return sub_18215E448(v27);
}

uint64_t sub_1820FB3CC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1820FB588;
  }

  else
  {
    v2 = sub_1820FB4E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820FB4E0()
{
  v1 = *(v0 + 120);

  sub_1820FCE6C(v1, type metadata accessor for ReplyEnvelope);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1820FB588()
{
  v1 = *(v0 + 120);

  sub_1820FCE6C(v1, type metadata accessor for ReplyEnvelope);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1820FB634()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839810, &qword_182AED938);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  v4 = sub_182AD3DC8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for NWActorSystemResultHandler(0);
  sub_1820FCDFC(v0 + *(v11 + 32), v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_181F49A88(v3, &qword_1EA839810, &qword_182AED938);
    return 0;
  }

  (*(v5 + 32))(v10, v3, v4);
  sub_182AD3D98();
  sub_182AD3DB8();
  v13 = *(v5 + 8);
  v13(v7, v4);
  v14 = sub_182AD4658();
  v16 = v15;
  result = (v13)(v10, v4);
  v17 = 1000 * v14;
  if ((v14 * 1000) >> 64 != (1000 * v14) >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  v18 = v16 * 1.0e-15;
  if (COERCE__INT64(fabs(v18)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v17 + v18;
  if (__OFADD__(v17, v18))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for NWActorSystemResultHandler(uint64_t a1)
{
  result = qword_1EA83A530;
  if (!qword_1EA83A530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NWActorSystemResultHandler.onReturnVoid()()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for ReplyEnvelope(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820FB994, 0, 0);
}

uint64_t sub_1820FB994()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_1820FB634();
  v6 = v5;
  v7 = sub_182AD2258();
  (*(*(v7 - 8) + 16))(v1, v3, v7);
  *(v1 + v2[5]) = xmmword_182AE7580;
  v8 = v1 + v2[6];
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0x3000000000000000;
  *(v8 + 32) = -1;
  v9 = v1 + v2[7];
  *v9 = v4;
  *(v9 + 8) = v6 & 1;
  v10 = type metadata accessor for NWActorSystemResultHandler(0);
  __swift_project_boxed_opaque_existential_1((v3 + *(v10 + 20)), *(v3 + *(v10 + 20) + 24));
  v11 = swift_task_alloc();
  v0[5] = v11;
  *v11 = v0;
  v11[1] = sub_1820FBAE4;
  v12 = v0[4];

  return sub_18215E448(v12);
}

uint64_t sub_1820FBAE4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1820FBC7C;
  }

  else
  {
    v2 = sub_1820FBBF8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820FBBF8()
{
  sub_1820FCE6C(*(v0 + 32), type metadata accessor for ReplyEnvelope);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1820FBC7C()
{
  sub_1820FCE6C(*(v0 + 32), type metadata accessor for ReplyEnvelope);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t NWActorSystemResultHandler.onThrow<A>(error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[21] = type metadata accessor for ReplyEnvelope(0);
  v4[22] = swift_task_alloc();
  v4[23] = *(a2 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = type metadata accessor for NWActorSystemResultHandler(0);
  v4[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820FBE68, 0, 0);
}

uint64_t sub_1820FBE68()
{
  v73 = v0;
  v72[1] = *MEMORY[0x1E69E9840];
  v71 = sub_1820FB634();
  v70 = v1;
  if (qword_1EA837188 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v7 = *(v0 + 136);
  v6 = *(v0 + 144);
  v8 = sub_182AD2698();
  __swift_project_value_buffer(v8, qword_1EA83A518);
  sub_1820FCB74(v5, v2, type metadata accessor for NWActorSystemResultHandler);
  v69 = *(v4 + 16);
  v69(v3, v7, v6);
  v9 = sub_182AD2678();
  v10 = sub_182AD38D8();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 224);
  v13 = *(v0 + 208);
  v14 = *(v0 + 184);
  v15 = *(v0 + 144);
  if (v11)
  {
    v16 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v72[0] = v68;
    *v16 = 136315394;
    sub_182AD2258();
    sub_1820FCBDC();
    v17 = sub_182AD41B8();
    v19 = v18;
    sub_1820FCE6C(v12, type metadata accessor for NWActorSystemResultHandler);
    v20 = sub_181C64FFC(v17, v19, v72);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = sub_1822C1374(v13, v15);
    v23 = v22;
    v24 = *(v14 + 8);
    v24(v13, v15);
    v25 = sub_181C64FFC(v21, v23, v72);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_181A37000, v9, v10, "CallID %s threw error: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v68, -1, -1);
    MEMORY[0x1865DF520](v16, -1, -1);
  }

  else
  {

    v24 = *(v14 + 8);
    v24(v13, v15);
    sub_1820FCE6C(v12, type metadata accessor for NWActorSystemResultHandler);
  }

  v69(*(v0 + 200), *(v0 + 136), *(v0 + 144));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838A10, &qword_182AE6120);
  if (swift_dynamicCast())
  {
    sub_181F753CC((v0 + 64), (v0 + 16));
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    swift_getDynamicType();
    v26 = sub_182AD3E48();
    if (v27)
    {
      v28 = v26;
      v29 = v27;
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      sub_182AD1C98();
      swift_allocObject();
      sub_182AD1C88();
      v30 = sub_182AD1C68();
      v32 = v31;

      v57 = v32 | 0x1000000000000000;
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      goto LABEL_21;
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 64) = 0u;
    sub_181F49A88(v0 + 64, &qword_1EA838EA8, &qword_182AE8F10);
  }

  v33 = v24;
  v34 = sub_182AD2678();
  v35 = sub_182AD38D8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_181A37000, v34, v35, "Error is not codable, attempting to convert to NSError", v36, 2u);
    MEMORY[0x1865DF520](v36, -1, -1);
  }

  v37 = *(v0 + 192);
  v38 = *(v0 + 144);
  v39 = *(v0 + 136);

  v69(v37, v39, v38);
  v40 = sub_182AD4218();
  v41 = *(v0 + 184);
  v42 = *(v0 + 192);
  if (v40)
  {
    v43 = v40;
    v33(*(v0 + 192), *(v0 + 144));
  }

  else
  {
    v44 = *(v0 + 144);
    v43 = swift_allocError();
    (*(v41 + 32))(v45, v42, v44);
  }

  v46 = sub_182AD1EF8();

  v47 = objc_opt_self();
  *(v0 + 112) = 0;
  v48 = [v47 archivedDataWithRootObject:v46 requiringSecureCoding:1 error:v0 + 112];
  v49 = *(v0 + 112);
  if (v48)
  {
    v28 = sub_182AD2158();
    v29 = v50;

    v30 = 0;
    v57 = 0x2000000000000000;
  }

  else
  {
    v51 = v49;
    v52 = sub_182AD1F08();

    swift_willThrow();
    v53 = sub_182AD2678();
    v54 = sub_182AD38B8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_181A37000, v53, v54, "Failed to archive NSError", v55, 2u);
      MEMORY[0x1865DF520](v55, -1, -1);
    }

    *(v0 + 120) = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900, &unk_182AEE160);
    v28 = sub_182AD3018();
    v29 = v56;
    v30 = 0;
    v57 = 0x3000000000000000;
  }

LABEL_21:
  v58 = *(v0 + 216);
  v60 = *(v0 + 168);
  v59 = *(v0 + 176);
  v61 = *(v0 + 160);
  v62 = sub_182AD2258();
  (*(*(v62 - 8) + 16))(v59, v61, v62);
  *(v59 + v60[5]) = xmmword_182AE7580;
  v63 = v59 + v60[6];
  *v63 = v28;
  *(v63 + 8) = v29;
  *(v63 + 16) = v30;
  *(v63 + 24) = v57;
  *(v63 + 32) = 0;
  v64 = v59 + v60[7];
  *v64 = v71;
  *(v64 + 8) = v70 & 1;
  __swift_project_boxed_opaque_existential_1((v61 + *(v58 + 20)), *(v61 + *(v58 + 20) + 24));
  v65 = swift_task_alloc();
  *(v0 + 232) = v65;
  *v65 = v0;
  v65[1] = sub_1820FC660;
  v66 = *(v0 + 176);

  return sub_18215E448(v66);
}

uint64_t sub_1820FC660()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_1820FC88C;
  }

  else
  {
    v2 = sub_1820FC7A0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820FC7A0()
{
  sub_1820FCE6C(*(v0 + 176), type metadata accessor for ReplyEnvelope);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1820FC88C()
{
  sub_1820FCE6C(*(v0 + 176), type metadata accessor for ReplyEnvelope);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1820FC978(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_181F5EB68;

  return NWActorSystemResultHandler.onReturn<A>(value:)(a1, a2);
}

uint64_t sub_1820FCA3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_181F54964;

  return NWActorSystemResultHandler.onReturnVoid()();
}

uint64_t sub_1820FCAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_181F5EB68;

  return NWActorSystemResultHandler.onThrow<A>(error:)(a1, a2, a3);
}

uint64_t sub_1820FCB74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1820FCBDC()
{
  result = qword_1EA8397A0;
  if (!qword_1EA8397A0)
  {
    sub_182AD2258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8397A0);
  }

  return result;
}

void sub_1820FCC5C(uint64_t a1)
{
  sub_182AD2258();
  if (v1 <= 0x3F)
  {
    sub_1820FCD48(319, &qword_1EA83A540, &protocol descriptor for ReplySystem);
    if (v2 <= 0x3F)
    {
      type metadata accessor for NWActorID(319);
      if (v3 <= 0x3F)
      {
        sub_1820FCD48(319, &qword_1EA83A548, &protocol descriptor for NWFileTransferCoordinator);
        if (v4 <= 0x3F)
        {
          sub_1820FCDA4(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1820FCD48(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1820FCDA4(uint64_t a1)
{
  if (!qword_1EA83A550)
  {
    sub_182AD3DC8();
    v1 = sub_182AD39B8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EA83A550);
    }
  }
}

uint64_t sub_1820FCDFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839810, &qword_182AED938);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1820FCE6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1820FCECC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1820FCF34(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1820FCF4C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1820FCF9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 8) >> 4) & 0xFC0 | (*(a1 + 8) >> 2) | (*(a1 + 8) >> 5) & 0x7F000 | (*(a1 + 8) >> 6) & 0xFFF80000;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1820FD00C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 80) = 1;
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
      *a1 = 0;
      *(a1 + 8) = (16 * -a2) & 0xFC00 | (4 * (-a2 & 0x3FLL)) & 0xFFFFFFC00101FFFFLL | (((-a2 >> 12) & 0x7F) << 17) & 0xFFFFFFC001FFFFFFLL | ((-a2 >> 19) << 25);
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      return result;
    }

    *(a1 + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1820FD0C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x7865646E69;
    }

    else
    {
      v4 = 1701667182;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1701869940;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x65707974627573;
  }

  else
  {
    v4 = 0x69746172656E6567;
    v3 = 0xEA00000000006E6FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7865646E69;
    }

    else
    {
      v9 = 1701667182;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x65707974627573;
    if (a2 != 3)
    {
      v6 = 0x69746172656E6567;
      v5 = 0xEA00000000006E6FLL;
    }

    if (a2 == 2)
    {
      v7 = 1701869940;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_182AD4268();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

BOOL sub_1820FD238(_BOOL8 result, char a2, unint64_t a3, char a4)
{
  if (a2)
  {
    v4 = qword_182AF78B8[result];
  }

  else
  {
    v4 = result + 256;
    if (result >= 0xFFFFFFFFFFFFFF00)
    {
      __break(1u);
      goto LABEL_9;
    }
  }

  if (a4)
  {
    v5 = qword_182AF78B8[a3];
    return v4 == v5;
  }

  v5 = a3 + 256;
  if (a3 < 0xFFFFFFFFFFFFFF00)
  {
    return v4 == v5;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1820FD284(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x8000000182BD4890;
    v10 = 0x6C616E7265746E69;
    if (a1 == 6)
    {
      v10 = 0xD000000000000013;
    }

    else
    {
      v9 = 0xED00007367616C46;
    }

    v11 = 0x8000000182BD4850;
    v12 = 0xD00000000000001CLL;
    if (a1 != 4)
    {
      v12 = 0xD00000000000001FLL;
      v11 = 0x8000000182BD4870;
    }

    if (a1 <= 5u)
    {
      v7 = v12;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x8000000182BD4810;
    v5 = 0xD000000000000015;
    if (a1 != 2)
    {
      v5 = 0xD000000000000018;
      v4 = 0x8000000182BD4830;
    }

    v6 = 0x4363696666617274;
    if (a1)
    {
      v3 = 0xEC0000007373616CLL;
    }

    else
    {
      v6 = 0x7367616C66;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0x8000000182BD4890;
        if (v7 != 0xD000000000000013)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v13 = 0xED00007367616C46;
        if (v7 != 0x6C616E7265746E69)
        {
LABEL_48:
          v14 = sub_182AD4268();
          goto LABEL_49;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0x8000000182BD4850;
      if (v7 != 0xD00000000000001CLL)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v13 = 0x8000000182BD4870;
      if (v7 != 0xD00000000000001FLL)
      {
        goto LABEL_48;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0x8000000182BD4810;
      if (v7 != 0xD000000000000015)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v13 = 0x8000000182BD4830;
      if (v7 != 0xD000000000000018)
      {
        goto LABEL_48;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEC0000007373616CLL;
    if (v7 != 0x4363696666617274)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v13 = 0xE500000000000000;
    if (v7 != 0x7367616C66)
    {
      goto LABEL_48;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_48;
  }

  v14 = 1;
LABEL_49:

  return v14 & 1;
}

uint64_t sub_1820FD528(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7475626972747461;
    }

    else
    {
      v3 = 0x7367616C66;
    }

    if (v2)
    {
      v4 = 0xEB000000006E6F69;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6B6361626C6C6166;
    v4 = 0xEC00000065646F4DLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000010;
    v4 = 0x8000000182BD4920;
  }

  else
  {
    v3 = 0x6C616E7265746E69;
    v4 = 0xED00007367616C46;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x7475626972747461;
    }

    else
    {
      v6 = 0x7367616C66;
    }

    if (a2)
    {
      v5 = 0xEB000000006E6F69;
    }

    else
    {
      v5 = 0xE500000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEC00000065646F4DLL;
    if (v3 != 0x6B6361626C6C6166)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x8000000182BD4920;
    if (v3 != 0xD000000000000010)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xED00007367616C46;
    if (v3 != 0x6C616E7265746E69)
    {
LABEL_31:
      v7 = sub_182AD4268();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_1820FD700(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000444955;
  v3 = 0x55737365636F7270;
  v4 = a1;
  v5 = 0xE300000000000000;
  v6 = 6580592;
  if (a1 != 4)
  {
    v6 = 6580597;
    v5 = 0xE300000000000000;
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000012;
    v5 = 0x8000000182BD48E0;
  }

  v7 = 0x8000000182BD48B0;
  v8 = 0xD000000000000014;
  if (a1 != 1)
  {
    v8 = 0x55616E6F73726570;
    v7 = 0xEB00000000444955;
  }

  if (!a1)
  {
    v8 = 0x55737365636F7270;
    v7 = 0xEB00000000444955;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v4 <= 2)
  {
    v10 = v7;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x8000000182BD48E0;
      if (v9 != 0xD000000000000012)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE300000000000000;
      if (v9 != 6580592)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE300000000000000;
      if (v9 != 6580597)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x8000000182BD48B0;
        if (v9 != 0xD000000000000014)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x55616E6F73726570;
    }

    if (v9 != v3)
    {
LABEL_31:
      v11 = sub_182AD4268();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v10 != v2)
  {
    goto LABEL_31;
  }

  v11 = 1;
LABEL_32:

  return v11 & 1;
}