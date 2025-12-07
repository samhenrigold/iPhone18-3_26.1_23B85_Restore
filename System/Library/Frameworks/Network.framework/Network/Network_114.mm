BOOL sub_1821F7618()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);
  if (v1 < 0)
  {
    v1 &= ~0x8000000000000000;
  }

  else
  {
    swift_beginAccess();
  }

  memcpy(__dst, (v1 + 16), sizeof(__dst));
  v2 = *(__dst[35] + 16);

  sub_181F481DC(__dst, v6);
  if (nw_context_has_proxies(v2))
  {
    sub_181F48214(__dst);

    return 1;
  }

  else
  {
    memcpy(v6, __dst, sizeof(v6));
    sub_181B5BA58();
    if (v4)
    {
      v5 = *(v4 + 24);
      sub_181F48214(__dst);

      return v5 != 0;
    }

    else
    {

      sub_181F48214(__dst);
      return 0;
    }
  }
}

uint64_t *sub_1821F774C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_181AA847C(a2);
    v5 = v4;
    v6 = *(a1 + 288);
    if (v6)
    {
      v7 = *(v6 + 48);
    }

    else
    {
      type metadata accessor for PathParameters.ProtocolValues.ProtocolValuesBacking();
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_182AE3CC0;
      *(v6 + 32) = xmmword_182AE3CC0;
      v7 = 1;
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(v6 + 48) = 1;
      *(a1 + 288) = v6;
    }

    *(v6 + 48) = v3;
    *(v6 + 56) = v5;
    swift_unknownObjectRetain();
    sub_181B03DAC(v7);
    if (*(a1 + 16))
    {
      v10 = 0;
    }

    else
    {
      v11 = *(a1 + 320);
      v13 = *a1;
      v12 = *(a1 + 8);
      result = sub_182AD2388();
      v15 = *result;
      v20 = *result;
      v16 = *(*result + 24);
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return result;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (*(v15 + 16) < v17 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_181B8477C(isUniquelyReferenced_nonNull_native, v17, 0);
        v15 = v20;
      }

      sub_181B855B4((v15 + 16), v15 + 40, v13, v12);
      if (v11)
      {

        sub_181F5FE60(v19);
      }

      v10 = v20;
    }

    sub_182270CAC(v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = *(a1 + 288);
    if (v8)
    {
      v9 = *(v8 + 48);
    }

    else
    {
      type metadata accessor for PathParameters.ProtocolValues.ProtocolValuesBacking();
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_182AE3CC0;
      *(v8 + 32) = xmmword_182AE3CC0;
      v9 = 1;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v8 + 48) = 1;
      *(a1 + 288) = v8;
    }

    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    sub_181B03DAC(v9);
    return sub_182270CAC(0);
  }
}

uint64_t sub_1821F7930(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v1 &= ~0x8000000000000000;
  }

  else
  {
    swift_beginAccess();
  }

  memcpy(__dst, (v1 + 16), sizeof(__dst));
  if (__dst[36] && (v3 = *(__dst[36] + 48), v3 >= 2))
  {
    v5 = *(__dst[36] + 56);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 336);

    sub_181F481DC(__dst, v9);
    sub_181AB78DC(v3);
    v8 = v7(ObjectType, v5);
    sub_181B03DAC(v3);

    sub_181F48214(__dst);
    return v8;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1821F7A44(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v1 &= ~0x8000000000000000;
  }

  else
  {
    swift_beginAccess();
  }

  memcpy(__dst, (v1 + 16), sizeof(__dst));
  if (!__dst[45])
  {
    goto LABEL_9;
  }

  if (*(__dst[45] + 40))
  {

    return 1;
  }

  v4 = *(__dst[45] + 32);
  if (v4)
  {

    sub_181F481DC(__dst, v6);
    v5 = nw_proxy_config_use_fast_fallback(v4);

    sub_181F48214(__dst);
    return v5;
  }

  else
  {
LABEL_9:

    return 0;
  }
}

BOOL sub_1821F7B78()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);
  if ((v1 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    v2 = *(v1 + 140);

    if (os_variant_allows_internal_security_policies())
    {
      v3 = (v2 & 0x400000) != 0 || networkd_settings_get_BOOL(nw_setting_tcpconn_disable_tls_experiment_sampling);
    }

    else
    {
      v3 = 0;
    }

    swift_endAccess();
LABEL_12:

    return v3;
  }

  v4 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x8C);

  if (os_variant_allows_internal_security_policies())
  {
    if ((v4 & 0x400000) != 0)
    {

      return 1;
    }

    v3 = networkd_settings_get_BOOL(nw_setting_tcpconn_disable_tls_experiment_sampling);
    goto LABEL_12;
  }

  return 0;
}

BOOL sub_1821F7C78()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);
  if (v1 < 0)
  {
    v2 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x128);
  }

  else
  {
    swift_beginAccess();
    v2 = *(v1 + 296);
  }

  return nw_context_get_privacy_level(*(v2 + 16)) == 4;
}

uint64_t _nw_parameters_set_initial_data_payload(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0, &unk_182AF9540);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  if (a2)
  {
    sub_182AD2818();
    v7 = sub_182AD2868();
    v8 = (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    v9 = sub_182AD2868();
    v8 = (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  MEMORY[0x1EEE9AC00](v8);
  *(&v11 - 2) = v6;
  sub_18220C4F4(a1, sub_18220D8D8);
  return sub_181F49A88(v6, &unk_1EA8394B0, &unk_182AF9540);
}

uint64_t sub_1821F7E44(uint64_t a1, uint64_t a2)
{
  v4 = sub_182AD2868();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0, &unk_182AF9540);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  sub_181AB5D28(a2, &v21 - v15, &unk_1EA8394B0, &unk_182AF9540);
  sub_181AB5D28(v16, v13, &unk_1EA8394B0, &unk_182AF9540);
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {
    sub_181F49A88(v16, &unk_1EA8394B0, &unk_182AF9540);
    v17 = 0;
    v18 = 0xF000000000000000;
    v16 = v13;
  }

  else
  {
    (*(v5 + 32))(v10, v13, v4);
    (*(v5 + 16))(v7, v10, v4);
    v17 = sub_181F76674(v7);
    v18 = v19;
    (*(v5 + 8))(v10, v4);
  }

  sub_181F49A88(v16, &unk_1EA8394B0, &unk_182AF9540);
  result = sub_181D9D680(*(a1 + 328), *(a1 + 336));
  *(a1 + 328) = v17;
  *(a1 + 336) = v18;
  return result;
}

void sub_1821F80CC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_182AD2868();
  MEMORY[0x1EEE9AC00](v4);
  v5 = 0;
  v6 = *(a1 + 336);
  if (v6 >> 60 != 15)
  {
    v7 = *(a1 + 328);
    v8 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v8 != 2)
      {
        v11 = 0;
        goto LABEL_16;
      }

      v9 = *(v7 + 16);
      v10 = *(v7 + 24);

      if (sub_182AD1D58() && __OFSUB__(v9, sub_182AD1D88()))
      {
        goto LABEL_19;
      }

      if (!__OFSUB__(v10, v9))
      {
LABEL_14:
        sub_182AD1D78();
        goto LABEL_16;
      }

      __break(1u);
    }

    else if (!v8)
    {
      v11 = *(a1 + 328);
LABEL_16:
      sub_182AD2828();
      sub_181D9D680(v7, v6);
      sub_18220D8E0();
      swift_dynamicCast();
      v5 = v11;
      goto LABEL_17;
    }

    if (v7 >> 32 >= v7)
    {

      if (!sub_182AD1D58() || !__OFSUB__(v7, sub_182AD1D88()))
      {
        goto LABEL_14;
      }

LABEL_20:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_17:
  *a2 = v5;
}

BOOL sub_1821F833C()
{
  v21[5] = *MEMORY[0x1E69E9840];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0, &unk_182AF9540);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v21 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);
  if ((v7 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    v6 = *(v7 + 352);
    if (v6 >> 60 == 15)
    {
      v8 = sub_182AD2868();
      (*(*(v8 - 8) + 56))(v3, 1, 1, v8);

LABEL_30:
      swift_endAccess();

      sub_182AD2868();
      v13 = (*(*(v8 - 8) + 48))(v3, 1, v8) != 1;
      v6 = v3;
      goto LABEL_38;
    }

    v9 = *(v7 + 344);
    v11 = v6 >> 62;
    if ((v6 >> 62) <= 1)
    {
      if (!v11)
      {
        v21[0] = *(v7 + 344);
        LOWORD(v21[1]) = v6;
        BYTE2(v21[1]) = BYTE2(v6);
        BYTE3(v21[1]) = BYTE3(v6);
        BYTE4(v21[1]) = BYTE4(v6);
        BYTE5(v21[1]) = BYTE5(v6);

LABEL_29:
        sub_182AD2828();
        sub_181D9D680(v9, v6);
        v8 = sub_182AD2868();
        (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
        goto LABEL_30;
      }

      goto LABEL_24;
    }

    if (v11 != 2)
    {
      memset(v21, 0, 14);

      goto LABEL_29;
    }

    v14 = *(v9 + 16);
    v15 = *(v9 + 24);

    sub_181F49B44(v9, v6);
    if (sub_182AD1D58())
    {
      v16 = sub_182AD1D88();
      LODWORD(v10) = v14 - v16;
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_40;
      }
    }

    if (!__OFSUB__(v15, v14))
    {
LABEL_27:
      sub_182AD1D78();
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_18;
  }

  v9 = v7 & 0x7FFFFFFFFFFFFFFFLL;
  v3 = *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x160);
  if (v3 >> 60 != 15)
  {
    v7 = *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x158);
    v10 = v3 >> 62;
    if ((v3 >> 62) <= 1)
    {
      if (v10)
      {
        if (v7 >> 32 < v7)
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        sub_181F49B44(v7, v3);
        if (sub_182AD1D58() && __OFSUB__(v7, sub_182AD1D88()))
        {
LABEL_44:
          __break(1u);
        }

LABEL_34:
        sub_182AD1D78();
        sub_182AD2828();

LABEL_37:
        sub_181D9D680(v7, v3);
        v19 = sub_182AD2868();
        v13 = 1;
        (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
        goto LABEL_38;
      }

      v21[2] = v7;
      LOWORD(v21[3]) = v3;
      BYTE2(v21[3]) = BYTE2(v3);
      BYTE3(v21[3]) = BYTE3(v3);
      BYTE4(v21[3]) = BYTE4(v3);
      BYTE5(v21[3]) = BYTE5(v3);
LABEL_36:
      sub_182AD2828();
      goto LABEL_37;
    }

LABEL_18:
    if (v10 == 2)
    {
      v17 = *(v7 + 16);
      v18 = *(v7 + 24);

      sub_181F49B44(v7, v3);
      if (sub_182AD1D58() && __OFSUB__(v17, sub_182AD1D88()))
      {
        goto LABEL_43;
      }

      if (__OFSUB__(v18, v17))
      {
        __break(1u);
LABEL_24:
        if (v9 >> 32 >= v9)
        {

          sub_181F49B44(v9, v6);
          if (!sub_182AD1D58() || !__OFSUB__(v9, sub_182AD1D88()))
          {
            goto LABEL_27;
          }

          goto LABEL_41;
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      goto LABEL_34;
    }

    memset(&v21[2], 0, 14);
    goto LABEL_36;
  }

  v12 = sub_182AD2868();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = 0;
LABEL_38:
  sub_181F49A88(v6, &unk_1EA8394B0, &unk_182AF9540);
  return v13;
}

void sub_1821F8940(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URLEndpoint(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  if (!a2)
  {
    goto LABEL_5;
  }

  v13 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v14 = a2;
  swift_beginAccess();
  sub_181ACC828(&a2[v13], v6, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() != 5)
  {

    sub_181AB7264(v6, type metadata accessor for Endpoint.EndpointType);
LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  sub_181B2BEE4(v6, v12);
  sub_181ACC828(v12, v9, type metadata accessor for URLEndpoint);
  v15 = objc_allocWithZone(type metadata accessor for Endpoint(0));
  v16 = Endpoint.init(_:)(v9);

  sub_181AB7264(v12, type metadata accessor for URLEndpoint);
LABEL_6:

  *(a1 + 376) = v16;
}

void sub_1821F8B2C(uint64_t a1, uuid_t dst)
{
  v3 = *MEMORY[0x1E69E9840];
  *v2 = *(a1 + 128);
  uuid_copy(dst, v2);
}

__n128 _nw_parameters_get_e_proc_uuid_0(uint64_t a1, unsigned __int8 *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);

  if (v3 < 0)
  {
    v4 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0xA0);
  }

  else
  {
    swift_beginAccess();
    v4 = *(v3 + 160);
  }

  v6 = v4;

  *src = v6;
  uuid_copy(a2, src);
  return result;
}

unint64_t sub_1821F8C74(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if ((v1 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    if (*(v1 + 32))
    {
LABEL_9:

      return 0;
    }

    v3 = *(v1 + 336);
    if (!v3)
    {
      goto LABEL_15;
    }

    v1 = *(v3 + 24);

    result = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_19;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (!HIDWORD(result))
    {
      return result;
    }

    __break(1u);
  }

  if (*((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20))
  {
    goto LABEL_9;
  }

  v5 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x150);
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = *(v5 + 24);

  result = v6 + 1;
  if (__OFADD__(v6, 1))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  if (!HIDWORD(result))
  {
    return result;
  }

  __break(1u);
LABEL_15:

  return 1;
}

BOOL sub_1821F8D88(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v1 &= ~0x8000000000000000;
  }

  else
  {
    swift_beginAccess();
  }

  memcpy(__dst, (v1 + 16), sizeof(__dst));
  if ((__dst[26] & 0x2000000000000000) != 0)
  {

    sub_181F481DC(__dst, v11);
LABEL_11:

    sub_181F48214(__dst);
    return 1;
  }

  memcpy(v11, (v1 + 16), sizeof(v11));

  v3 = sub_181F481DC(__dst, v10);
  v4 = sub_181AD3638(v3);
  if (v4)
  {
    v5 = *(v4 + 24);

    if (v5 >= 1)
    {
      goto LABEL_11;
    }
  }

  if (__dst[28] && (v6 = *(__dst[28] + 80)) != 0)
  {
    v7 = *(v6 + 24);

    v8 = v7 > 0;
  }

  else
  {

    v8 = 0;
  }

  sub_181F48214(__dst);
  return v8;
}

void sub_1821F8EB8(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  LODWORD(v2) = *(a1 + 210);
  if (v2 == 1)
  {
    goto LABEL_19;
  }

  v2 = *(a1 + 224);
  if (!v2)
  {
    goto LABEL_19;
  }

  v3 = *(v2 + 88);
  if (v3 && *(v3 + 24) > 0)
  {
    LOBYTE(v2) = 1;
LABEL_19:
    *a2 = v2;
    return;
  }

  v4 = *(v2 + 96);
  v14 = v4;
  if (*(v2 + 152))
  {
    v5 = a2;

    if (v4)
    {
LABEL_8:
      v6 = *(v4 + 24);

      LOBYTE(v2) = v6 > 0;
LABEL_18:
      a2 = v5;
      goto LABEL_19;
    }

LABEL_17:
    LOBYTE(v2) = 0;
    goto LABEL_18;
  }

  v8 = *(v2 + 136);
  v7 = *(v2 + 144);
  if (v4)
  {
    v9 = *(v2 + 96);
  }

  else
  {
    v10 = a2;
    v9 = *sub_182AD2388();
    v14 = v9;

    a2 = v10;
  }

  v5 = a2;
  v11 = *(v9 + 24);
  v12 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (*(v9 + 16) < v12 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181B8477C(isUniquelyReferenced_nonNull_native, v12, 0);
      v9 = v14;
    }

    sub_181B855B4((v9 + 16), v9 + 40, v8, v7);
    v4 = v14;
    if (v14)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_1821F9024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_182AD3158();
  v6 = v5;
  v7 = sub_182AD3158();
  v9 = v8;
  v10 = sub_181AC47A8(v4, v6);
  v12 = v11;
  v13 = sub_181AC49BC(v7, v9);
  v15 = v14;
  v30 = a1;
  v16 = *(a1 + 224);
  if (!v16 || (v17 = *(v16 + 56)) == 0)
  {
    v17 = *sub_182AD2388();
  }

  swift_retain_n();
  v19 = v17[4];
  v20 = v17[3] + v19;
  if (v17[2] < v20)
  {
    v20 = v17[2];
  }

  v31 = v17[4];
  v32 = v20;
  v21 = v17;
  while (1)
  {
    if (v19 != v20)
    {
      goto LABEL_12;
    }

    if ((sub_181AC81FC(v18) & 1) == 0)
    {
      break;
    }

    v21 = v17;
    v19 = v31;
LABEL_12:
    v22 = &v21[4 * v19++];
    v31 = v19;
    v23 = v22[6];
    v24 = v22[7];
    v25 = v22[8];
    if (v23 > 2)
    {
      switch(v23)
      {
        case 3:
          if (v12 != 3)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 4:
          if (v12 != 4)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 5:
          if (v12 != 5)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
      }
    }

    else
    {
      switch(v23)
      {
        case 0:
          if (v12)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 1:
          if (v12 != 1)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 2:
          if (v12 != 2)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
      }
    }

    if (v12 < 6 || (v22[5] != v10 || v23 != v12) && (sub_182AD4268() & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_35:
    if (v25 > 4)
    {
      if (v25 <= 6)
      {
        if (v25 == 5)
        {
          if (v15 == 5)
          {
            goto LABEL_68;
          }
        }

        else if (v15 == 6)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }

      switch(v25)
      {
        case 7:
          if (v15 == 7)
          {
            goto LABEL_68;
          }

          goto LABEL_8;
        case 8:
          if (v15 == 8)
          {
            goto LABEL_68;
          }

          goto LABEL_8;
        case 9:
          if (v15 == 9)
          {
            goto LABEL_68;
          }

          goto LABEL_8;
      }
    }

    else
    {
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          if (v15 == 2)
          {
            goto LABEL_68;
          }
        }

        else if (v25 == 3)
        {
          if (v15 == 3)
          {
            goto LABEL_68;
          }
        }

        else if (v15 == 4)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }

      if (!v25)
      {
        if (!v15)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }

      if (v25 == 1)
      {
        if (v15 == 1)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }
    }

    if (v15 >= 0xA && (v24 == v13 && v25 == v15 || (sub_182AD4268() & 1) != 0))
    {
LABEL_68:

      goto LABEL_76;
    }

LABEL_8:
    v20 = v32;
  }

  v27 = v17[3];
  v28 = v27 + 1;
  if (__OFADD__(v27, 1))
  {
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (v17[2] < v28 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_181E74708(isUniquelyReferenced_nonNull_native, v28, 0);
  }

  sub_181E748B4(v17 + 2, (v17 + 5), v10, v12, v13, v15);
  if (!v16)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v16 = swift_allocObject();
    sub_18226B448(v16 + 16);
    *(v30 + 224) = v16;
  }

  *(v16 + 56) = v17;
LABEL_76:

  sub_181E4926C(v10, v12);

  return sub_181E49280(v13, v15);
}

uint64_t sub_1821F93B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_182AD3158();
  v6 = v5;
  v7 = sub_182AD3158();
  v9 = v8;
  v10 = sub_181AC47A8(v4, v6);
  v12 = v11;
  v13 = sub_181AC49BC(v7, v9);
  v15 = v14;
  v30 = a1;
  v16 = *(a1 + 224);
  if (!v16 || (v17 = *(v16 + 72)) == 0)
  {
    v17 = *sub_182AD2388();
  }

  swift_retain_n();
  v19 = v17[4];
  v20 = v17[3] + v19;
  if (v17[2] < v20)
  {
    v20 = v17[2];
  }

  v31 = v17[4];
  v32 = v20;
  v21 = v17;
  while (1)
  {
    if (v19 != v20)
    {
      goto LABEL_12;
    }

    if ((sub_181AC81FC(v18) & 1) == 0)
    {
      break;
    }

    v21 = v17;
    v19 = v31;
LABEL_12:
    v22 = &v21[4 * v19++];
    v31 = v19;
    v23 = v22[6];
    v24 = v22[7];
    v25 = v22[8];
    if (v23 > 2)
    {
      switch(v23)
      {
        case 3:
          if (v12 != 3)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 4:
          if (v12 != 4)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 5:
          if (v12 != 5)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
      }
    }

    else
    {
      switch(v23)
      {
        case 0:
          if (v12)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 1:
          if (v12 != 1)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 2:
          if (v12 != 2)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
      }
    }

    if (v12 < 6 || (v22[5] != v10 || v23 != v12) && (sub_182AD4268() & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_35:
    if (v25 > 4)
    {
      if (v25 <= 6)
      {
        if (v25 == 5)
        {
          if (v15 == 5)
          {
            goto LABEL_68;
          }
        }

        else if (v15 == 6)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }

      switch(v25)
      {
        case 7:
          if (v15 == 7)
          {
            goto LABEL_68;
          }

          goto LABEL_8;
        case 8:
          if (v15 == 8)
          {
            goto LABEL_68;
          }

          goto LABEL_8;
        case 9:
          if (v15 == 9)
          {
            goto LABEL_68;
          }

          goto LABEL_8;
      }
    }

    else
    {
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          if (v15 == 2)
          {
            goto LABEL_68;
          }
        }

        else if (v25 == 3)
        {
          if (v15 == 3)
          {
            goto LABEL_68;
          }
        }

        else if (v15 == 4)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }

      if (!v25)
      {
        if (!v15)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }

      if (v25 == 1)
      {
        if (v15 == 1)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }
    }

    if (v15 >= 0xA && (v24 == v13 && v25 == v15 || (sub_182AD4268() & 1) != 0))
    {
LABEL_68:

      goto LABEL_76;
    }

LABEL_8:
    v20 = v32;
  }

  v27 = v17[3];
  v28 = v27 + 1;
  if (__OFADD__(v27, 1))
  {
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (v17[2] < v28 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_181E74708(isUniquelyReferenced_nonNull_native, v28, 0);
  }

  sub_181E748B4(v17 + 2, (v17 + 5), v10, v12, v13, v15);
  if (!v16)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v16 = swift_allocObject();
    sub_18226B448(v16 + 16);
    *(v30 + 224) = v16;
  }

  *(v16 + 72) = v17;
LABEL_76:

  sub_181E4926C(v10, v12);

  return sub_181E49280(v13, v15);
}

uint64_t sub_1821F9770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_182AD3158();
  v6 = v5;
  v7 = sub_182AD3158();
  v9 = v8;
  v10 = sub_181AC47A8(v4, v6);
  v12 = v11;
  v13 = sub_181AC49BC(v7, v9);
  v15 = v14;
  v30 = a1;
  v16 = *(a1 + 224);
  if (!v16 || (v17 = *(v16 + 88)) == 0)
  {
    v17 = *sub_182AD2388();
  }

  swift_retain_n();
  v19 = v17[4];
  v20 = v17[3] + v19;
  if (v17[2] < v20)
  {
    v20 = v17[2];
  }

  v31 = v17[4];
  v32 = v20;
  v21 = v17;
  while (1)
  {
    if (v19 != v20)
    {
      goto LABEL_12;
    }

    if ((sub_181AC81FC(v18) & 1) == 0)
    {
      break;
    }

    v21 = v17;
    v19 = v31;
LABEL_12:
    v22 = &v21[4 * v19++];
    v31 = v19;
    v23 = v22[6];
    v24 = v22[7];
    v25 = v22[8];
    if (v23 > 2)
    {
      switch(v23)
      {
        case 3:
          if (v12 != 3)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 4:
          if (v12 != 4)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 5:
          if (v12 != 5)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
      }
    }

    else
    {
      switch(v23)
      {
        case 0:
          if (v12)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 1:
          if (v12 != 1)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 2:
          if (v12 != 2)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
      }
    }

    if (v12 < 6 || (v22[5] != v10 || v23 != v12) && (sub_182AD4268() & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_35:
    if (v25 > 4)
    {
      if (v25 <= 6)
      {
        if (v25 == 5)
        {
          if (v15 == 5)
          {
            goto LABEL_68;
          }
        }

        else if (v15 == 6)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }

      switch(v25)
      {
        case 7:
          if (v15 == 7)
          {
            goto LABEL_68;
          }

          goto LABEL_8;
        case 8:
          if (v15 == 8)
          {
            goto LABEL_68;
          }

          goto LABEL_8;
        case 9:
          if (v15 == 9)
          {
            goto LABEL_68;
          }

          goto LABEL_8;
      }
    }

    else
    {
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          if (v15 == 2)
          {
            goto LABEL_68;
          }
        }

        else if (v25 == 3)
        {
          if (v15 == 3)
          {
            goto LABEL_68;
          }
        }

        else if (v15 == 4)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }

      if (!v25)
      {
        if (!v15)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }

      if (v25 == 1)
      {
        if (v15 == 1)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }
    }

    if (v15 >= 0xA && (v24 == v13 && v25 == v15 || (sub_182AD4268() & 1) != 0))
    {
LABEL_68:

      goto LABEL_76;
    }

LABEL_8:
    v20 = v32;
  }

  v27 = v17[3];
  v28 = v27 + 1;
  if (__OFADD__(v27, 1))
  {
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (v17[2] < v28 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_181E74708(isUniquelyReferenced_nonNull_native, v28, 0);
  }

  sub_181E748B4(v17 + 2, (v17 + 5), v10, v12, v13, v15);
  if (!v16)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v16 = swift_allocObject();
    sub_18226B448(v16 + 16);
    *(v30 + 224) = v16;
  }

  *(v16 + 88) = v17;
LABEL_76:

  sub_181E4926C(v10, v12);

  return sub_181E49280(v13, v15);
}

uint64_t sub_1821F9B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_182AD3158();
  v6 = v5;
  v7 = sub_182AD3158();
  v9 = v8;
  v10 = sub_181AC47A8(v4, v6);
  v12 = v11;
  v13 = sub_181AC49BC(v7, v9);
  v15 = v14;
  v30 = a1;
  v16 = *(a1 + 224);
  if (!v16 || (v17 = *(v16 + 104)) == 0)
  {
    v17 = *sub_182AD2388();
  }

  swift_retain_n();
  v19 = v17[4];
  v20 = v17[3] + v19;
  if (v17[2] < v20)
  {
    v20 = v17[2];
  }

  v31 = v17[4];
  v32 = v20;
  v21 = v17;
  while (1)
  {
    if (v19 != v20)
    {
      goto LABEL_12;
    }

    if ((sub_181AC81FC(v18) & 1) == 0)
    {
      break;
    }

    v21 = v17;
    v19 = v31;
LABEL_12:
    v22 = &v21[4 * v19++];
    v31 = v19;
    v23 = v22[6];
    v24 = v22[7];
    v25 = v22[8];
    if (v23 > 2)
    {
      switch(v23)
      {
        case 3:
          if (v12 != 3)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 4:
          if (v12 != 4)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 5:
          if (v12 != 5)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
      }
    }

    else
    {
      switch(v23)
      {
        case 0:
          if (v12)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 1:
          if (v12 != 1)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 2:
          if (v12 != 2)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
      }
    }

    if (v12 < 6 || (v22[5] != v10 || v23 != v12) && (sub_182AD4268() & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_35:
    if (v25 > 4)
    {
      if (v25 <= 6)
      {
        if (v25 == 5)
        {
          if (v15 == 5)
          {
            goto LABEL_68;
          }
        }

        else if (v15 == 6)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }

      switch(v25)
      {
        case 7:
          if (v15 == 7)
          {
            goto LABEL_68;
          }

          goto LABEL_8;
        case 8:
          if (v15 == 8)
          {
            goto LABEL_68;
          }

          goto LABEL_8;
        case 9:
          if (v15 == 9)
          {
            goto LABEL_68;
          }

          goto LABEL_8;
      }
    }

    else
    {
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          if (v15 == 2)
          {
            goto LABEL_68;
          }
        }

        else if (v25 == 3)
        {
          if (v15 == 3)
          {
            goto LABEL_68;
          }
        }

        else if (v15 == 4)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }

      if (!v25)
      {
        if (!v15)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }

      if (v25 == 1)
      {
        if (v15 == 1)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }
    }

    if (v15 >= 0xA && (v24 == v13 && v25 == v15 || (sub_182AD4268() & 1) != 0))
    {
LABEL_68:

      goto LABEL_76;
    }

LABEL_8:
    v20 = v32;
  }

  v27 = v17[3];
  v28 = v27 + 1;
  if (__OFADD__(v27, 1))
  {
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (v17[2] < v28 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_181E74708(isUniquelyReferenced_nonNull_native, v28, 0);
  }

  sub_181E748B4(v17 + 2, (v17 + 5), v10, v12, v13, v15);
  if (!v16)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v16 = swift_allocObject();
    sub_18226B448(v16 + 16);
    *(v30 + 224) = v16;
  }

  *(v16 + 104) = v17;
LABEL_76:

  sub_181E4926C(v10, v12);

  return sub_181E49280(v13, v15);
}

void sub_1821F9F50(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);
  if ((v2 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    v3 = *(v2 + 240);
    if (!v3)
    {

      goto LABEL_16;
    }

    v4 = *(v3 + 96);
    v18 = v4;
    if (*(v3 + 152))
    {

LABEL_16:

      return;
    }

    v7 = *(v3 + 136);
    v6 = *(v3 + 144);

    v8 = v4;
    if (!v4)
    {
      v8 = *sub_182AD2388();
      v18 = v8;
    }

    v9 = *(v8 + 24);
    v10 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (*(v8 + 16) < v10 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_181B8477C(isUniquelyReferenced_nonNull_native, v10, 0);
        v8 = v18;
      }

      sub_181B855B4((v8 + 16), v8 + 40, v7, v6);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_27;
  }

  v5 = *((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0xF0);
  if (v5)
  {
    v19 = *(v5 + 96);
    if (*(v5 + 152))
    {

      return;
    }

    v13 = *(v5 + 136);
    v12 = *(v5 + 144);
    if (*(v5 + 96))
    {
      v14 = *(v5 + 96);
    }

    else
    {
      v14 = *sub_182AD2388();
      v19 = v14;
    }

    v15 = *(v14 + 24);
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
LABEL_27:
      __break(1u);
      return;
    }

    v17 = swift_isUniquelyReferenced_nonNull_native();
    if (*(v14 + 16) < v16 || (v17 & 1) == 0)
    {
      sub_181B8477C(v17, v16, 0);
      v14 = v19;
    }

    sub_181B855B4((v14 + 16), v14 + 40, v13, v12);
  }
}

void _nw_parameters_iterate_custom_proxy_configsTm(uint64_t a1, void *aBlock, uint64_t a3, void (*a4)(uint64_t, uint64_t, void *))
{
  v7 = _Block_copy(aBlock);
  v8[2] = v7;
  a4(a1, a3, v8);
  _Block_release(v7);
}

uint64_t sub_1821FA1DC(char *a1, uint64_t a2)
{
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if ((v3 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    memcpy(__dst, (v3 + 16), 0x188uLL);
    if (__dst[45])
    {
      v5 = *(__dst[45] + 16);
      if (v5)
      {
        v6 = v5[4];
        if (v5[2] >= v5[3] + v6)
        {
          v7 = v5[3] + v6;
        }

        else
        {
          v7 = v5[2];
        }

        v24 = v5[4];
        v25 = v7;

        sub_181F481DC(__dst, &v32);

        v9 = v5;
        if (v6 == v7)
        {
LABEL_8:
          if (sub_181AC81FC(v8))
          {
            v9 = v5;
            v6 = v24;
            goto LABEL_10;
          }

LABEL_27:

          goto LABEL_25;
        }

LABEL_10:
        while (1)
        {
          v10 = v6 + 1;
          v24 = v6 + 1;
          v11 = v9[2 * v6 + 6];
          ObjectType = swift_getObjectType();
          swift_unknownObjectRetain_n();
          sub_181AAC800(a2, &v32);
          v26 = v32;
          v27 = v33;
          v28 = v34;
          v13 = (*(v11 + 40))(&v26, ObjectType, v11);
          swift_unknownObjectRelease();
          sub_181F48350(v27, *(&v27 + 1), v28);
          if (v13)
          {
            goto LABEL_26;
          }

          swift_unknownObjectRelease();
          ++v6;
          if (v10 == v25)
          {
            goto LABEL_8;
          }
        }
      }
    }

LABEL_24:
    sub_181F481DC(__dst, &v32);

LABEL_25:
    sub_181F48214(__dst);
    return 0;
  }

  memcpy(__dst, ((v3 & 0x7FFFFFFFFFFFFFFFLL) + 16), 0x188uLL);
  if (!__dst[45])
  {
    goto LABEL_24;
  }

  v14 = *(__dst[45] + 16);
  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = v14[4];
  if (v14[2] >= v14[3] + v15)
  {
    v16 = v14[3] + v15;
  }

  else
  {
    v16 = v14[2];
  }

  v29 = *(__dst[45] + 16);
  v30 = v15;
  v31 = v16;

  sub_181F481DC(__dst, &v32);

  v18 = v14;
  if (v15 == v16)
  {
LABEL_19:
    if (sub_181AC81FC(v17))
    {
      v18 = v29;
      v15 = v30;
      goto LABEL_21;
    }

    goto LABEL_27;
  }

LABEL_21:
  while (1)
  {
    v19 = v15 + 1;
    v30 = v15 + 1;
    v11 = v18[2 * v15 + 6];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain_n();
    sub_181AAC800(a2, &v32);
    v26 = v32;
    v27 = v33;
    v28 = v34;
    v20 = (*(v11 + 40))(&v26, ObjectType, v11);
    swift_unknownObjectRelease();
    sub_181F48350(v27, *(&v27 + 1), v28);
    if (v20)
    {
      break;
    }

    swift_unknownObjectRelease();
    ++v15;
    if (v19 == v31)
    {
      goto LABEL_19;
    }
  }

LABEL_26:
  v22 = *(v11 + 336);
  swift_unknownObjectRetain();
  v23 = v22(ObjectType, v11);

  swift_unknownObjectRelease_n();

  sub_181F48214(__dst);
  return v23;
}

id _nw_parameters_shallow_copy_0(char *a1, char a2)
{
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0)
  {
    memcpy(__dst, ((v3 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
    *__src = 0;
    *&__src[8] = 0;
    __src[16] = 1;
    *&__src[25] = 0;
    *&__src[17] = 0;
    __src[33] = 1;
    memset(&__src[36], 0, 32);
    __src[68] = 1;
    sub_181F481DC(__dst, v10);

    sub_181F481DC(__dst, v10);
  }

  else
  {
    swift_beginAccess();
    memcpy(__dst, (v3 + 16), sizeof(__dst));
    *__src = 0;
    *&__src[8] = 0;
    __src[16] = 1;
    *&__src[25] = 0;
    *&__src[17] = 0;
    __src[33] = 1;
    memset(&__src[36], 0, 32);
    __src[68] = 1;
    sub_181F481DC(__dst, v10);
    sub_181F481DC(__dst, v10);
  }

  sub_181A53D78(&__src[128]);
  *&__src[328] = 0;
  *&__src[336] = 0xF000000000000000;
  v13[8] = *&__src[256];
  v13[9] = *&__src[272];
  v13[10] = *&__src[288];
  v13[4] = *&__src[192];
  v13[5] = *&__src[208];
  v13[7] = *&__src[240];
  v13[6] = *&__src[224];
  v13[0] = *&__src[128];
  v13[1] = *&__src[144];
  v13[3] = *&__src[176];
  v13[2] = *&__src[160];
  sub_181F481DC(__dst, v10);
  sub_181A41E7C(v13);
  sub_181D9D680(0, 0xF000000000000000);
  memcpy(__src, __dst, sizeof(__src));
  type metadata accessor for ProtocolStack();
  swift_allocObject();

  v6 = sub_181D384EC(v5);
  sub_181F48214(__dst);

  *&__src[344] = v6;
  memcpy(v14, __src, sizeof(v14));
  memcpy(__src, v14, sizeof(__src));
  if (a2)
  {
    v7 = sub_1821F2E98();
  }

  else
  {
    v7 = sub_1821F2D80();
  }

  v8 = v7;

  sub_181F48214(__dst);
  sub_181F48214(v14);
  return v8;
}

void _nw_parameters_set_persona(char *a1, unsigned __int8 *uu)
{
  if (uuid_is_null(uu) != 1)
  {
    v4 = *uu;
    v5 = *(uu + 1);

    sub_18220A4B8(a1, v4, v5);
  }
}

BOOL sub_1821FA908(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    memcpy(__dst, ((v1 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
    if ((__dst[176] & 1) == 0)
    {
LABEL_6:

      sub_181F481DC(__dst, v6);
      v4 = SystemUUID.isUUIDNULL.getter();

      sub_181F48214(__dst);
      return !v4;
    }
  }

  else
  {
    swift_beginAccess();
    memcpy(__dst, (v1 + 16), sizeof(__dst));
    if ((__dst[176] & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  return 0;
}

uint64_t sub_1821FAA10@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>, __n128 a3@<Q0>)
{
  v4 = *(result + 120);
  v5 = *(result + 209);
  v6 = *(result + 220);
  v7 = *(result + 224);
  if ((v6 & 0x2000) == 0)
  {
    if (!v7)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = *(v7 + 32);
  if (!v8)
  {
LABEL_14:
    if (*(v7 + 16))
    {
      v13 = *(v7 + 16);
      if (v13)
      {
        if (*(v13 + 185) == 2)
        {
          goto LABEL_27;
        }

        v14 = sub_182AD31E8();

        v15 = 0;
        if (v6 & 2) != 0 || (v14)
        {
          goto LABEL_28;
        }

LABEL_21:
        v15 = (v4 & 0x200) == 0;
        if (v5 == 2)
        {
          v15 = 0;
        }

        if ((v6 & 4) != 0)
        {
          v15 = 0;
        }

        goto LABEL_28;
      }
    }

LABEL_20:
    if ((v6 & 2) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  v9 = v8[4];
  v10 = v8[3] + v9;
  if (v8[2] < v10)
  {
    v10 = v8[2];
  }

  v16 = *(v7 + 32);
  v17 = v8[4];
  v18 = v10;
  v11 = v16;
  while (v9 != v18)
  {
LABEL_9:
    v12 = v11 + v9++;
    v17 = v9;
    if (*(v12 + 40) == 2)
    {

      goto LABEL_14;
    }
  }

  if (sub_181AC81FC(a3))
  {
    v11 = v16;
    v9 = v17;
    goto LABEL_9;
  }

LABEL_27:
  v15 = 0;
LABEL_28:
  *a2 = v15;
  return result;
}

void _nw_parameters_set_endpoint_resolution_preference_handler(char *a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = _Block_copy(v3);
  _Block_copy(v4);
  sub_18220C2E8(a1, v4);
  _Block_release(v4);
  _Block_release(v3);

  _Block_release(v4);
}

uint64_t _nw_parameters_execute_endpoint_resolution_preference_handler(char *a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  v4 = sub_18220CA98(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

void *sub_1821FACFC(char *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0)
  {
    v3 &= ~0x8000000000000000;
  }

  else
  {
    swift_beginAccess();
  }

  memcpy(__dst, (v3 + 16), sizeof(__dst));
  memcpy(v17, (v3 + 16), sizeof(v17));

  v5 = sub_181F481DC(__dst, &v16);
  v6 = a2(v5);
  v8 = v7;

  sub_181F48214(__dst);
  if ((v8 & 0x1000000000000000) == 0)
  {
    if ((v8 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v8) & 0xF;
    }

    else
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    result = swift_slowAlloc();
    v11 = result;
    v12 = __OFADD__(v9, 1);
    v13 = v9 + 1;
    if (!v12)
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_182AD3168();
  v12 = __OFADD__(v15, 1);
  result = (v15 + 1);
  if (!v12)
  {
    v11 = swift_slowAlloc();
    result = sub_182AD3168();
    v13 = result + 1;
    if (!__OFADD__(result, 1))
    {
LABEL_9:
      v14 = sub_182AD3048();

      memcpy(v11, (v14 + 32), v13);

      return v11;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

void _nw_parameters_copy_upper_transport_protocol_options_0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);

  if ((v1 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
  }

  ProtocolStack.transport.getter(&v100);
  v2 = v101;
  if ((~v101 & 0xF000000000000007) == 0)
  {

    return;
  }

  v3 = v100;
  if (v101 >> 61)
  {
    goto LABEL_8;
  }

  v4 = v100 + *(*v100 + 128);
  swift_beginAccess();
  if (v4[1])
  {
LABEL_150:
    __break(1u);
    return;
  }

  if ((*v4 & 8) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  v9 = sub_181AC9084();
  v10 = sub_181A54748();
  v11 = v9;
  v12 = v10 + 2;
  v85 = v9;
  v13 = (v10 + 5);
  v14 = v10[3];
  v15 = v10[4];
  v82 = v10;
  v16 = v14 + v15;
  v80 = v3;
  v81 = v2;
  if (v10[2] < v14 + v15)
  {
    v17 = v11[3];
    v18 = v17 + v14;
    v19 = __OFADD__(v17, v14);

    if (!v19)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v11[2] < v18 || (v21 = v11, (isUniquelyReferenced_nonNull_native & 1) == 0))
      {
        sub_181B2C3FC(isUniquelyReferenced_nonNull_native, v18, 0);
        v21 = v85;
      }

      sub_18207F3A0(v21 + 2, (v21 + 5), &v95);
      v23 = v97;
      v24 = v98;
      v25 = v99;
      v26 = v96;
      if ((v99 & 1) != 0 || (v27 = v82[3], v96 >= v27))
      {
        sub_1820807B8(v12, v13, v95, v96, v82);
        v47 = v46;
        v86 = v46;
        v89 = v42;
        v92 = v43;
        if (v44 == v26)
        {
          v48 = v25;
        }

        else
        {
          v48 = 1;
        }

        if (v48)
        {
          v33 = v44;
        }

        else
        {
          if (v24 < 1)
          {
            v24 = 0;
          }

          else
          {
            v49 = 0;
            if (v42 != v43)
            {
              goto LABEL_68;
            }

LABEL_66:
            if (sub_181AC81FC(v45))
            {
              v47 = v86;
              v42 = v89;
              while (1)
              {
LABEL_68:
                v50 = v42 + 1;
                v89 = v42 + 1;
                if (!v23)
                {
                  goto LABEL_149;
                }

                v51 = *(v47 + 16 * v42 + 40);
                *(v23 + 16 * v49) = v51;
                if (v24 - 1 == v49)
                {
                  break;
                }

                ++v49;
                sub_181B2C3E0(v51, *(&v51 + 1));
                v42 = v50;
                if (v50 == v92)
                {
                  goto LABEL_66;
                }
              }

              sub_181B2C3E0(v51, *(&v51 + 1));
            }

            else
            {
              v24 = v49;
            }
          }

          v33 = v26 + v24;
          if (__OFADD__(v26, v24))
          {
            goto LABEL_146;
          }

          v47 = v86;
          v42 = v89;
          v43 = v92;
        }

        v100 = v47;
        v101 = v42;
        v102 = v43;
        goto LABEL_79;
      }

      v28 = 0;
      v29 = 0;
      v30 = v95;
      v31 = v82[4];
      v32 = v31 + v27;
      if (v82[2] < v32)
      {
        v32 = v82[2];
      }

      v100 = v82;
      v101 = v31;
      v102 = v32;
      v33 = v96;
      if (!v96)
      {
        goto LABEL_32;
      }

LABEL_29:
      if (v31 == v102 && (sub_181AC81FC(v22) & 1) == 0)
      {
        goto LABEL_130;
      }

      while (1)
      {
        v34 = v101;
        v31 = ++v101;
        if (!v30)
        {
          goto LABEL_148;
        }

        v35 = *&v100[2 * v34 + 5];
        *(v30 + 16 * v29) = v35;
        v63 = __OFADD__(v29++, 1);
        if (v63)
        {
          break;
        }

        sub_181B2C3E0(v35, *(&v35 + 1));
        if (v29 != v33)
        {
          goto LABEL_29;
        }

LABEL_32:
        if (v28)
        {
          v29 = v33;
          goto LABEL_73;
        }

        if (v24 <= 0)
        {
          goto LABEL_74;
        }

        if (v31 == v102)
        {
          v29 = 0;
          if ((sub_181AC81FC(v22) & 1) == 0)
          {
LABEL_73:
            v33 = v26 + v29;
            if (__OFADD__(v26, v29))
            {
              goto LABEL_147;
            }

LABEL_74:

LABEL_79:
            v52 = v21[3];
            v63 = __OFADD__(v52, v33);
            v53 = v52 + v33;
            if (v63)
            {
              goto LABEL_145;
            }

            v21[3] = v53;
            v54 = v101;
            v87 = v100;
            v90 = v101;
            v93 = v102;
            if (v101 != v102)
            {
              goto LABEL_83;
            }

LABEL_81:
            if ((sub_181AC81FC(v45) & 1) == 0)
            {

              goto LABEL_119;
            }

            v54 = v90;
            v53 = v21[3];
LABEL_83:
            v55 = v54 + 1;
            v90 = v54 + 1;
            v56 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              __break(1u);
LABEL_133:
              __break(1u);
LABEL_134:
              __break(1u);
LABEL_135:
              __break(1u);
LABEL_136:
              __break(1u);
LABEL_137:
              __break(1u);
              break;
            }

            v57 = v87 + 16 * v54;
            v83 = *(v57 + 40);
            sub_181B2C3E0(*(v57 + 40), *(v57 + 48));
            v21 = v85;
            v58 = swift_isUniquelyReferenced_nonNull_native();
            if (v85[2] < v56 || (v58 & 1) == 0)
            {
              sub_181B2C3FC(v58, v56, 0);
              v21 = v85;
            }

            v59 = v21[3];
            v60 = v21[4];
            v63 = __OFADD__(v60, v59);
            v61 = v60 + v59;
            if (v63)
            {
              goto LABEL_133;
            }

            if (v59 < 0)
            {
              if (v61 < 0)
              {
                v65 = v21[2];
                v63 = __OFADD__(v61, v65);
                v61 += v65;
                if (v63)
                {
                  goto LABEL_139;
                }
              }
            }

            else
            {
              v62 = v21[2];
              v63 = __OFSUB__(v61, v62);
              v64 = v61 - v62;
              if (v64 < 0 == v63)
              {
                v61 = v64;
                if (v63)
                {
                  goto LABEL_137;
                }
              }
            }

            *&v21[2 * v61 + 5] = v83;
            v63 = __OFADD__(v59, 1);
            v66 = v59 + 1;
            if (v63)
            {
              goto LABEL_134;
            }

            v21[3] = v66;
            sub_18207F3A0(v21 + 2, (v21 + 5), &v100);
            v28 = 0;
            v67 = 0;
            v29 = v100;
            v26 = v101;
            v69 = v102;
            v68 = v103;
            v70 = v104 | (v103 < 1);
            v84 = v101;
            if (!v101)
            {
              goto LABEL_100;
            }

LABEL_97:
            if (v55 != v93 || (sub_181AC81FC(v45) & 1) != 0)
            {
              while (1)
              {
                v71 = v90;
                v55 = ++v90;
                if (!v29)
                {
                  goto LABEL_140;
                }

                v72 = *(v87 + 16 * v71 + 40);
                *(v29 + 16 * v67) = v72;
                v63 = __OFADD__(v67++, 1);
                if (v63)
                {
                  __break(1u);
LABEL_130:
                  if ((v28 & 1) == 0)
                  {

                    v33 = v29;
                    goto LABEL_79;
                  }

                  goto LABEL_73;
                }

                sub_181B2C3E0(v72, *(&v72 + 1));
                if (v67 != v26)
                {
                  goto LABEL_97;
                }

LABEL_100:
                if (v28)
                {
                  break;
                }

                if (v70)
                {
                  goto LABEL_113;
                }

                if (v55 == v93)
                {
                  v67 = 0;
                  if ((sub_181AC81FC(v45) & 1) == 0)
                  {
                    goto LABEL_112;
                  }
                }

                else
                {
                  v67 = 0;
                }

                v28 = 1;
                v29 = v69;
                v26 = v68;
              }

              v67 = v26;
            }

            else
            {
              v26 = v67;
              if ((v28 & 1) == 0)
              {
                goto LABEL_113;
              }
            }

LABEL_112:
            v26 = v84 + v67;
            if (__OFADD__(v84, v67))
            {
              goto LABEL_136;
            }

LABEL_113:
            v73 = v21[3];
            v63 = __OFADD__(v73, v26);
            v53 = v73 + v26;
            if (v63)
            {
              goto LABEL_135;
            }

            v21[3] = v53;
            v54 = v90;
            if (v90 == v93)
            {
              goto LABEL_81;
            }

            goto LABEL_83;
          }
        }

        else
        {
          v29 = 0;
        }

        v28 = 1;
        v30 = v23;
        v33 = v24;
      }

      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
    }

    __break(1u);
    goto LABEL_142;
  }

  v37 = v10[3];
  if (v16 < v15)
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  if (__OFSUB__(v16, v15))
  {
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  v38 = v11[3];
  v39 = v38 + v37;
  if (__OFADD__(v38, v37))
  {
    goto LABEL_144;
  }

  v40 = swift_isUniquelyReferenced_nonNull_native();
  if (v11[2] < v39 || (v21 = v11, (v40 & 1) == 0))
  {
    sub_181B2C3FC(v40, v39, 0);
    v21 = v85;
  }

  sub_181B64710((v21 + 2), (v21 + 5), v13 + 16 * v15, v37);

LABEL_119:

  v3 = 0;
  v75 = v21[4];
  v76 = v21[3] + v75;
  if (v21[2] < v76)
  {
    v76 = v21[2];
  }

  v88 = v21;
  v91 = v21[4];
  v94 = v76;
  v2 = 0xF000000000000007;
  v77 = 1;
  while (1)
  {
    if (v75 != v94)
    {
      goto LABEL_123;
    }

    if ((sub_181AC81FC(v74) & 1) == 0)
    {
      break;
    }

    v21 = v88;
    v75 = v91;
LABEL_123:
    v78 = &v21[2 * v75++];
    v91 = v75;
    if (!(v78[6] >> 62))
    {
      v79 = v78[5];

      sub_181A53008(v3, v2);
      v77 = 0;
      v2 = 0x4000000000000000;
      v3 = v79;
    }
  }

  sub_181A53008(v80, v81);

  if ((v77 & 1) == 0)
  {
LABEL_9:
    v5 = v2 >> 61;
    if ((v2 >> 61) <= 2)
    {
      if (v5)
      {
        if (v5 == 1)
        {
          v6 = &unk_1ED40FF50;
          v7 = &unk_1EA838DE0;
          v8 = &unk_182AE6F00;
        }

        else
        {
          v6 = &qword_1ED40F830;
          v7 = &qword_1EA838AB0;
          v8 = &qword_182AE6A10;
        }
      }

      else
      {
        v6 = &qword_1ED40F850;
        v7 = &unk_1EA838710;
        v8 = &qword_182AE4BA0;
      }
    }

    else
    {
      if (v5 > 4)
      {
        if (v5 != 5)
        {
          return;
        }

        v36 = v2 & 0x1FFFFFFFFFFFFFFFLL;
LABEL_56:
        ObjectType = swift_getObjectType();
        (*(v36 + 336))(ObjectType, v36);
        sub_181AAD03C(v3, v2);
        return;
      }

      if (v5 == 3)
      {
        v6 = qword_1ED40FB50;
        v7 = &unk_1EA838750;
        v8 = &unk_182AE4BD0;
      }

      else
      {
        v6 = &unk_1EA838AE0;
        v7 = &unk_1EA838DD0;
        v8 = &qword_182AE4BE0;
      }
    }

    v36 = sub_181AA8428(v6, v7, v8);
    goto LABEL_56;
  }
}

uint64_t _nw_parameters_copy_protocol_options_with_level_0(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);

  if ((v5 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
  }

  sub_181F636F0(a2, v10);

  if (!v10[0])
  {
    return 0;
  }

  v6 = v10[1];
  if (a3)
  {
    *a3 = v11 + 1;
  }

  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 336))(ObjectType, v6);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t _nw_parameters_copy_protocol_options_for_identifier_object_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);

  if ((v3 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
  }

  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  *v13 = *(a2 + 16);
  v14 = v4;
  v15 = v5;
  v16 = v6;
  sub_181F49A24(v4, v5, v6);
  v7 = sub_181F63C90(v13);
  v9 = v8;

  sub_181F48350(v14, v15, v16);
  if (v7)
  {
    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 336))(ObjectType, v9);
    swift_unknownObjectRelease();
  }

  else
  {

    return 0;
  }

  return v11;
}

uint64_t sub_1821FB89C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);

  if ((v3 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
  }

  sub_181AAC800(a2, &v13);
  *v10 = v13;
  v11 = v14;
  v12 = v15;
  v4 = sub_181F63C90(v10);
  v6 = v5;

  sub_181F48350(v11, *(&v11 + 1), v12);
  if (!v4)
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 336))(ObjectType, v6);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t objectdestroy_33Tm_0()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

void sub_1821FB9E8(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v11), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v7 = sub_182AD2698();
    __swift_project_value_buffer(v7, qword_1EA843148);
    v8 = sub_182AD2678();
    v9 = sub_182AD38B8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_181A37000, v8, v9, "Cannot mutate parameters", v10, 2u);
      MEMORY[0x1865DF520](v10, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    sub_181B63E5C(v3 + 16);
    swift_endAccess();
  }
}

void _nw_parameters_prohibit_interface_0(char *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, v14), , (*&a1[v4] & 0x8000000000000000) != 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v11 = sub_182AD2678();
    v12 = sub_182AD38B8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_181A37000, v11, v12, "Cannot mutate parameters", v13, 2u);
      MEMORY[0x1865DF520](v13, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(a2 + OBJC_IVAR____TtC7Network13__NWInterface_interface);

    v14[0] = v9;
    sub_181F443B8(v14);

    swift_endAccess();
  }
}

void _nw_parameters_clear_prohibited_interfaces_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843148);
    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 240);
    if (!v7)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v7 = swift_allocObject();
      sub_18226B448(v7 + 16);
      *(v3 + 240) = v7;
    }

    *(v7 + 48) = 0;

    swift_endAccess();
  }
}

void _nw_parameters_prohibit_interface_type_0(char *a1, unsigned int a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0)
  {
    v7 = v5 & 0x7FFFFFFFFFFFFFFFLL;
    memcpy(__dst, (v7 + 16), sizeof(__dst));
    type metadata accessor for MutableParametersStorage();
    v8 = swift_allocObject();
    memmove((v8 + 16), (v7 + 16), 0x188uLL);
    *&a1[v4] = v8;
    sub_181F481DC(__dst, &v25);

    v5 = *&a1[v4];
    if (v5 < 0)
    {
      sub_18220E960();
      swift_willThrowTypedImpl();

      if (qword_1EA836648 != -1)
      {
        goto LABEL_31;
      }

      goto LABEL_27;
    }
  }

  swift_beginAccess();
  if (a2 >= 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = *(v5 + 240);
  if (v10 && (v11 = *(v10 + 24)) != 0)
  {
    v24 = *(v10 + 24);
    swift_retain_n();
  }

  else
  {

    v11 = *sub_182AD2388();
    v24 = v11;
    swift_retain_n();
  }

  v13 = v11[4];
  v14 = v11[3] + v13;
  if (v11[2] < v14)
  {
    v14 = v11[2];
  }

  v25 = v11;
  v26 = v13;
  v27 = v14;
  v15 = v11;
  while (v13 != v27)
  {
LABEL_13:
    v16 = v15 + v13++;
    v26 = v13;
    if (qword_182AFE9F0[v16[40]] == qword_182AFE9F0[v9])
    {

LABEL_25:

      swift_endAccess();

      return;
    }
  }

  if (sub_181AC81FC(v12))
  {
    v15 = v25;
    v13 = v26;
    goto LABEL_13;
  }

  v17 = v11[3];
  v18 = v17 + 1;
  if (!__OFADD__(v17, 1))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v11[2] < v18 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181EBDCF0(isUniquelyReferenced_nonNull_native, v18, 0);
      v11 = v24;
    }

    sub_181EBDEA0(v11 + 2, (v11 + 5), v9);
    if (!v10)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v10 = swift_allocObject();
      sub_18226B448(v10 + 16);
      *(v5 + 240) = v10;
    }

    *(v10 + 24) = v11;
    goto LABEL_25;
  }

  __break(1u);
LABEL_31:
  swift_once();
LABEL_27:
  v20 = sub_182AD2698();
  __swift_project_value_buffer(v20, qword_1EA843148);
  v21 = sub_182AD2678();
  v22 = sub_182AD38B8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_181A37000, v21, v22, "Cannot mutate parameters", v23, 2u);
    MEMORY[0x1865DF520](v23, -1, -1);
  }
}

void _nw_parameters_clear_prohibited_interface_types_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843148);
    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 240);
    if (!v7)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v7 = swift_allocObject();
      sub_18226B448(v7 + 16);
      *(v3 + 240) = v7;
    }

    *(v7 + 24) = 0;

    swift_endAccess();
  }
}

void _nw_parameters_clear_allowed_interface_types_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0)
  {
    v5 = v3 & 0x7FFFFFFFFFFFFFFFLL;
    memcpy(__dst, (v5 + 16), 0x188uLL);
    type metadata accessor for MutableParametersStorage();
    v6 = swift_allocObject();
    memmove((v6 + 16), (v5 + 16), 0x188uLL);
    *&a1[v2] = v6;
    sub_181F481DC(__dst, &v33);

    v3 = *&a1[v2];
    if (v3 < 0)
    {
      sub_18220E960();
      swift_willThrowTypedImpl();

      if (qword_1EA836648 != -1)
      {
LABEL_44:
        swift_once();
      }

      v28 = sub_182AD2698();
      __swift_project_value_buffer(v28, qword_1EA843148);
      v29 = sub_182AD2678();
      v30 = sub_182AD38B8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_181A37000, v29, v30, "Cannot mutate parameters", v31, 2u);
        MEMORY[0x1865DF520](v31, -1, -1);
      }

      return;
    }
  }

  v32 = v4;
  swift_beginAccess();
  if ((*(v3 + 236) & 0x1000) == 0)
  {
    *(v3 + 236) |= 0x1000u;
  }

  v7 = 0;
  while (2)
  {
    v8 = byte_1EEF96D60[v7 + 32];
    v9 = *(v3 + 240);
    if (!v9 || (v10 = *(v9 + 24)) == 0)
    {
      v10 = *sub_182AD2388();
    }

    v11 = v8;
    ++v7;
    swift_retain_n();
    v13 = v10[4];
    v14 = v10[3] + v13;
    if (v10[2] < v14)
    {
      v14 = v10[2];
    }

    v33 = v10;
    v34 = v13;
    v35 = v14;
    v15 = v10;
    while (1)
    {
      if (v13 != v35)
      {
        goto LABEL_15;
      }

      if ((sub_181AC81FC(v12) & 1) == 0)
      {
        break;
      }

      v15 = v33;
      v13 = v34;
LABEL_15:
      v16 = v15 + v13++;
      v34 = v13;
      if (qword_182AFE9F0[v16[40]] == qword_182AFE9F0[v8])
      {

        goto LABEL_7;
      }
    }

    v17 = v10[3];
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v10[2] < v18 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181EBDCF0(isUniquelyReferenced_nonNull_native, v18, 0);
    }

    v20 = v10[3];
    v21 = v10[4];
    v24 = __OFADD__(v21, v20);
    v22 = v21 + v20;
    if (v24)
    {
      goto LABEL_40;
    }

    if ((v20 & 0x8000000000000000) == 0)
    {
      v23 = v10[2];
      v24 = __OFSUB__(v22, v23);
      v25 = v22 - v23;
      if (v25 < 0 != v24)
      {
        goto LABEL_30;
      }

      v22 = v25;
      if (!v24)
      {
        goto LABEL_30;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v22 < 0)
    {
      v26 = v10[2];
      v24 = __OFADD__(v22, v26);
      v22 += v26;
      if (v24)
      {
        goto LABEL_43;
      }
    }

LABEL_30:
    *(v10 + v22 + 40) = v11;
    v24 = __OFADD__(v20, 1);
    v27 = v20 + 1;
    if (v24)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v10[3] = v27;
    if (!v9)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v9 = swift_allocObject();
      *(v9 + 16) = 0u;
      *(v9 + 32) = 0u;
      *(v9 + 48) = 0u;
      *(v9 + 64) = 0u;
      *(v9 + 80) = 0u;
      *(v9 + 96) = 0u;
      *(v9 + 112) = 0u;
      *(v9 + 128) = 0u;
      *(v9 + 144) = 0;
      *(v9 + 152) = 1;
      *(v9 + 160) = 0;
      *(v3 + 240) = v9;
    }

    *(v9 + 24) = v10;
LABEL_7:

    if (v7 != 5)
    {
      continue;
    }

    break;
  }

  swift_endAccess();
}

void sub_1821FC804(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v7 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v8 = a1;
  if (v7 < 0 && (v9 = v7 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v9 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v10 = swift_allocObject(), memmove((v10 + 16), (v9 + 16), 0x188uLL), *&a1[v6] = v10, sub_181F481DC(__dst, &v18), , v7 = *&a1[v6], v7 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v14 = sub_182AD2698();
    __swift_project_value_buffer(v14, qword_1EA843148);
    v15 = sub_182AD2678();
    v16 = sub_182AD38B8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_181A37000, v15, v16, "Cannot mutate parameters", v17, 2u);
      MEMORY[0x1865DF520](v17, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v11 = *(v7 + 240);
    if (!v11)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v11 = swift_allocObject();
      sub_18226B448(v11 + 16);
      *(v7 + 240) = v11;
    }

    v12 = *(v11 + 120);
    v13 = *(v11 + 128);
    *(v11 + 120) = a2;
    *(v11 + 128) = a3;
    swift_retain_n();

    swift_endAccess();
    sub_181A554F4(v12, v13);
  }
}

void _nw_parameters_prohibit_interface_subtype_0(char *a1, int a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0)
  {
    v7 = v5 & 0x7FFFFFFFFFFFFFFFLL;
    memcpy(__dst, (v7 + 16), sizeof(__dst));
    type metadata accessor for MutableParametersStorage();
    v8 = swift_allocObject();
    memmove((v8 + 16), (v7 + 16), 0x188uLL);
    *&a1[v4] = v8;
    sub_181F481DC(__dst, &v25);

    v5 = *&a1[v4];
    if (v5 < 0)
    {
      sub_18220E960();
      swift_willThrowTypedImpl();

      if (qword_1EA836648 != -1)
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }
  }

  swift_beginAccess();
  if (a2 <= 4000)
  {
    if (a2 == 1001)
    {
      v9 = 1;
      v10 = *(v5 + 240);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    if (a2 == 1002)
    {
      v9 = 2;
      v10 = *(v5 + 240);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

LABEL_12:
    v9 = 0;
    v10 = *(v5 + 240);
    if (!v10)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (a2 != 4001)
  {
    if (a2 == 5001)
    {
      v9 = 4;
      v10 = *(v5 + 240);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v9 = 3;
  v10 = *(v5 + 240);
  if (!v10)
  {
LABEL_19:

    v11 = *sub_182AD2388();
    v24 = v11;
    swift_retain_n();
    goto LABEL_20;
  }

LABEL_17:
  v11 = *(v10 + 32);
  if (!v11)
  {
    goto LABEL_19;
  }

  v24 = *(v10 + 32);
  swift_retain_n();

LABEL_20:
  v13 = v11[4];
  v14 = v11[3] + v13;
  if (v11[2] < v14)
  {
    v14 = v11[2];
  }

  v25 = v11;
  v26 = v13;
  v27 = v14;
  v15 = v11;
  while (v13 != v27)
  {
LABEL_23:
    v16 = v15 + v13++;
    v26 = v13;
    if (qword_182AFEA18[v16[40]] == qword_182AFEA18[v9])
    {

LABEL_35:

      swift_endAccess();

      return;
    }
  }

  if (sub_181AC81FC(v12))
  {
    v15 = v25;
    v13 = v26;
    goto LABEL_23;
  }

  v17 = v11[3];
  v18 = v17 + 1;
  if (!__OFADD__(v17, 1))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v11[2] < v18 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181F4601C(isUniquelyReferenced_nonNull_native, v18, 0);
      v11 = v24;
    }

    sub_181EBDEA0(v11 + 2, (v11 + 5), v9);
    if (!v10)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v10 = swift_allocObject();
      sub_18226B448(v10 + 16);
      *(v5 + 240) = v10;
    }

    *(v10 + 32) = v11;
    goto LABEL_35;
  }

  __break(1u);
LABEL_41:
  swift_once();
LABEL_37:
  v20 = sub_182AD2698();
  __swift_project_value_buffer(v20, qword_1EA843148);
  v21 = sub_182AD2678();
  v22 = sub_182AD38B8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_181A37000, v21, v22, "Cannot mutate parameters", v23, 2u);
    MEMORY[0x1865DF520](v23, -1, -1);
  }
}

void _nw_parameters_clear_prohibited_interface_subtypes_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843148);
    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 240);
    if (!v7)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v7 = swift_allocObject();
      sub_18226B448(v7 + 16);
      *(v3 + 240) = v7;
    }

    *(v7 + 32) = 0;

    swift_endAccess();
  }
}

void _nw_parameters_clear_allowed_interface_subtypes_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0)
  {
    v5 = v3 & 0x7FFFFFFFFFFFFFFFLL;
    memcpy(__dst, (v5 + 16), 0x188uLL);
    type metadata accessor for MutableParametersStorage();
    v6 = swift_allocObject();
    memmove((v6 + 16), (v5 + 16), 0x188uLL);
    *&a1[v2] = v6;
    sub_181F481DC(__dst, &v33);

    v3 = *&a1[v2];
    if (v3 < 0)
    {
      sub_18220E960();
      swift_willThrowTypedImpl();

      if (qword_1EA836648 != -1)
      {
LABEL_44:
        swift_once();
      }

      v28 = sub_182AD2698();
      __swift_project_value_buffer(v28, qword_1EA843148);
      v29 = sub_182AD2678();
      v30 = sub_182AD38B8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_181A37000, v29, v30, "Cannot mutate parameters", v31, 2u);
        MEMORY[0x1865DF520](v31, -1, -1);
      }

      return;
    }
  }

  v32 = v4;
  swift_beginAccess();
  if ((*(v3 + 236) & 0x2000) == 0)
  {
    *(v3 + 236) |= 0x2000u;
  }

  v7 = 0;
  while (2)
  {
    v8 = byte_1EEF96DB0[v7 + 32];
    v9 = *(v3 + 240);
    if (!v9 || (v10 = *(v9 + 32)) == 0)
    {
      v10 = *sub_182AD2388();
    }

    v11 = v8;
    ++v7;
    swift_retain_n();
    v13 = v10[4];
    v14 = v10[3] + v13;
    if (v10[2] < v14)
    {
      v14 = v10[2];
    }

    v33 = v10;
    v34 = v13;
    v35 = v14;
    v15 = v10;
    while (1)
    {
      if (v13 != v35)
      {
        goto LABEL_15;
      }

      if ((sub_181AC81FC(v12) & 1) == 0)
      {
        break;
      }

      v15 = v33;
      v13 = v34;
LABEL_15:
      v16 = v15 + v13++;
      v34 = v13;
      if (qword_182AFEA18[v16[40]] == qword_182AFEA18[v8])
      {

        goto LABEL_7;
      }
    }

    v17 = v10[3];
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v10[2] < v18 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181F4601C(isUniquelyReferenced_nonNull_native, v18, 0);
    }

    v20 = v10[3];
    v21 = v10[4];
    v24 = __OFADD__(v21, v20);
    v22 = v21 + v20;
    if (v24)
    {
      goto LABEL_40;
    }

    if ((v20 & 0x8000000000000000) == 0)
    {
      v23 = v10[2];
      v24 = __OFSUB__(v22, v23);
      v25 = v22 - v23;
      if (v25 < 0 != v24)
      {
        goto LABEL_30;
      }

      v22 = v25;
      if (!v24)
      {
        goto LABEL_30;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v22 < 0)
    {
      v26 = v10[2];
      v24 = __OFADD__(v22, v26);
      v22 += v26;
      if (v24)
      {
        goto LABEL_43;
      }
    }

LABEL_30:
    *(v10 + v22 + 40) = v11;
    v24 = __OFADD__(v20, 1);
    v27 = v20 + 1;
    if (v24)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v10[3] = v27;
    if (!v9)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v9 = swift_allocObject();
      *(v9 + 16) = 0u;
      *(v9 + 32) = 0u;
      *(v9 + 48) = 0u;
      *(v9 + 64) = 0u;
      *(v9 + 80) = 0u;
      *(v9 + 96) = 0u;
      *(v9 + 112) = 0u;
      *(v9 + 128) = 0u;
      *(v9 + 144) = 0;
      *(v9 + 152) = 1;
      *(v9 + 160) = 0;
      *(v3 + 240) = v9;
    }

    *(v9 + 32) = v10;
LABEL_7:

    if (v7 != 5)
    {
      continue;
    }

    break;
  }

  swift_endAccess();
}

void sub_1821FD2FC(char *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v7 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v8 = a1;
  if (v7 < 0 && (v9 = v7 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v9 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v10 = swift_allocObject(), memmove((v10 + 16), (v9 + 16), 0x188uLL), *&a1[v6] = v10, sub_181F481DC(__dst, &v15), , v7 = *&a1[v6], v7 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v11 = sub_182AD2698();
    __swift_project_value_buffer(v11, qword_1EA843148);
    v12 = sub_182AD2678();
    v13 = sub_182AD38B8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_181A37000, v12, v13, "Cannot mutate parameters", v14, 2u);
      MEMORY[0x1865DF520](v14, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    a3(v7 + 16, a2);
    swift_endAccess();
  }
}

void _nw_parameters_prefer_interface_subtype_0(char *a1, int a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0)
  {
    v7 = v5 & 0x7FFFFFFFFFFFFFFFLL;
    memcpy(__dst, (v7 + 16), sizeof(__dst));
    type metadata accessor for MutableParametersStorage();
    v8 = swift_allocObject();
    memmove((v8 + 16), (v7 + 16), 0x188uLL);
    *&a1[v4] = v8;
    sub_181F481DC(__dst, &v25);

    v5 = *&a1[v4];
    if (v5 < 0)
    {
      sub_18220E960();
      swift_willThrowTypedImpl();

      if (qword_1EA836648 != -1)
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }
  }

  swift_beginAccess();
  if (a2 <= 4000)
  {
    if (a2 == 1001)
    {
      v9 = 1;
      v10 = *(v5 + 240);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    if (a2 == 1002)
    {
      v9 = 2;
      v10 = *(v5 + 240);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

LABEL_12:
    v9 = 0;
    v10 = *(v5 + 240);
    if (!v10)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (a2 != 4001)
  {
    if (a2 == 5001)
    {
      v9 = 4;
      v10 = *(v5 + 240);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v9 = 3;
  v10 = *(v5 + 240);
  if (!v10)
  {
LABEL_19:

    v11 = *sub_182AD2388();
    v24 = v11;
    swift_retain_n();
    goto LABEL_20;
  }

LABEL_17:
  v11 = *(v10 + 40);
  if (!v11)
  {
    goto LABEL_19;
  }

  v24 = *(v10 + 40);
  swift_retain_n();

LABEL_20:
  v13 = v11[4];
  v14 = v11[3] + v13;
  if (v11[2] < v14)
  {
    v14 = v11[2];
  }

  v25 = v11;
  v26 = v13;
  v27 = v14;
  v15 = v11;
  while (v13 != v27)
  {
LABEL_23:
    v16 = v15 + v13++;
    v26 = v13;
    if (qword_182AFEA18[v16[40]] == qword_182AFEA18[v9])
    {

LABEL_35:

      swift_endAccess();

      return;
    }
  }

  if (sub_181AC81FC(v12))
  {
    v15 = v25;
    v13 = v26;
    goto LABEL_23;
  }

  v17 = v11[3];
  v18 = v17 + 1;
  if (!__OFADD__(v17, 1))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v11[2] < v18 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181F4601C(isUniquelyReferenced_nonNull_native, v18, 0);
      v11 = v24;
    }

    sub_181EBDEA0(v11 + 2, (v11 + 5), v9);
    if (!v10)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v10 = swift_allocObject();
      sub_18226B448(v10 + 16);
      *(v5 + 240) = v10;
    }

    *(v10 + 40) = v11;
    goto LABEL_35;
  }

  __break(1u);
LABEL_41:
  swift_once();
LABEL_37:
  v20 = sub_182AD2698();
  __swift_project_value_buffer(v20, qword_1EA843148);
  v21 = sub_182AD2678();
  v22 = sub_182AD38B8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_181A37000, v21, v22, "Cannot mutate parameters", v23, 2u);
    MEMORY[0x1865DF520](v23, -1, -1);
  }
}

void _nw_parameters_clear_preferred_interface_subtypes_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843148);
    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 240);
    if (!v7)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v7 = swift_allocObject();
      sub_18226B448(v7 + 16);
      *(v3 + 240) = v7;
    }

    *(v7 + 40) = 0;

    swift_endAccess();
  }
}

void _nw_parameters_set_prohibit_expensive_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 230);
    if (a2)
    {
      if ((*(v5 + 230) & 1) == 0)
      {
        *(v5 + 230) = v9 | 1;
      }
    }

    else if (*(v5 + 230))
    {
      *(v5 + 230) = v9 & 0xFE;
    }
  }
}

void _nw_parameters_set_prohibit_constrained_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 230);
    if (a2)
    {
      if ((*(v5 + 230) & 2) == 0)
      {
        *(v5 + 230) = v9 | 2;
      }
    }

    else if ((*(v5 + 230) & 2) != 0)
    {
      *(v5 + 230) = v9 & 0xFD;
    }
  }
}

void _nw_parameters_set_reuse_local_address_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x20) == 0)
      {
        *(v5 + 136) = v9 | 0x20;
      }
    }

    else if ((v9 & 0x20) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFFFFDF;
    }
  }
}

void _nw_parameters_set_use_long_outstanding_queries_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 4) == 0)
      {
        *(v5 + 136) = v9 | 4;
      }
    }

    else if ((v9 & 4) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFFFFFB;
    }
  }
}

void _nw_parameters_set_ignore_resolver_stats_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 8) == 0)
      {
        *(v5 + 136) = v9 | 8;
      }
    }

    else if ((v9 & 8) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFFFFF7;
    }
  }
}

void _nw_parameters_set_local_endpoint_0(char *a1, char *a2)
{
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v8 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v9 = a1;
  if ((v8 & 0x8000000000000000) == 0 || (v10 = v8 & 0x7FFFFFFFFFFFFFFFLL, memcpy(v21, (v10 + 16), sizeof(v21)), type metadata accessor for MutableParametersStorage(), v11 = swift_allocObject(), memmove((v11 + 16), (v10 + 16), 0x188uLL), *&a1[v7] = v11, sub_181F481DC(v21, v20), , v8 = *&a1[v7], (v8 & 0x8000000000000000) == 0))
  {
    swift_beginAccess();
    if (a2)
    {
      v12 = OBJC_IVAR____TtC7Network8Endpoint_type;
      v13 = a2;
      swift_beginAccess();
      sub_181ACC828(&a2[v12], v6, type metadata accessor for Endpoint.EndpointType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

      if (!EnumCaseMultiPayload)
      {
        sub_181AB7264(v6, type metadata accessor for Endpoint.EndpointType);

        *(v8 + 312) = a2;
        goto LABEL_9;
      }

      sub_181AB7264(v6, type metadata accessor for Endpoint.EndpointType);
    }

    else
    {
      v15 = *(v8 + 312);
    }

    *(v8 + 312) = 0;
LABEL_9:
    swift_endAccess();

    return;
  }

  sub_18220E960();
  swift_willThrowTypedImpl();

  if (qword_1EA836648 != -1)
  {
    swift_once();
  }

  v16 = sub_182AD2698();
  __swift_project_value_buffer(v16, qword_1EA843148);
  v17 = sub_182AD2678();
  v18 = sub_182AD38B8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_181A37000, v17, v18, "Cannot mutate parameters", v19, 2u);
    MEMORY[0x1865DF520](v19, -1, -1);
  }
}

void _nw_parameters_set_fast_open_enabled_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 2) == 0)
      {
        *(v5 + 136) = v9 | 2;
      }
    }

    else if ((v9 & 2) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFFFFFD;
    }
  }
}

void _nw_parameters_set_service_class_0(char *a1, unsigned int a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    if (a2 >= 6)
    {
      v9 = 0;
    }

    else
    {
      v9 = a2;
    }

    *(v5 + 131) = v9;
  }
}

void _nw_parameters_set_multipath_service_0(char *a1, int a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v17), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v14 = sub_182AD2698();
    __swift_project_value_buffer(v14, qword_1EA843148);
    v6 = sub_182AD2678();
    v15 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_181A37000, v6, v15, "Cannot mutate parameters", v16, 2u);
      MEMORY[0x1865DF520](v16, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    if (a2 == 101)
    {
      v9 = 5;
    }

    else
    {
      v9 = 0;
    }

    if (a2 == 100)
    {
      v10 = 4;
    }

    else
    {
      v10 = v9;
    }

    if (a2 == 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = v10;
    }

    if (a2 == 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    if (a2 == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    if (a2 <= 2)
    {
      v11 = v13;
    }

    *(v5 + 234) = v11;
  }
}

void _nw_parameters_set_local_only_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x100) == 0)
      {
        *(v5 + 136) = v9 | 0x100;
      }
    }

    else if ((v9 & 0x100) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFFFEFF;
    }
  }
}

void _nw_parameters_set_prefer_no_proxy_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 235);
    if (a2)
    {
      if ((*(v5 + 235) & 4) == 0)
      {
        *(v5 + 235) = v9 | 4;
      }
    }

    else if ((*(v5 + 235) & 4) != 0)
    {
      *(v5 + 235) = v9 & 0xFB;
    }
  }
}

void _nw_parameters_set_expired_dns_behavior_0(char *a1, unsigned int a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    if (a2 >= 4)
    {
      v9 = 0;
    }

    else
    {
      v9 = a2;
    }

    *(v5 + 132) = v9;
  }
}

void _nw_parameters_set_requires_dnssec_validation_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x100000) == 0)
      {
        *(v5 + 136) = v9 | 0x100000;
      }
    }

    else if ((v9 & 0x100000) != 0)
    {
      *(v5 + 136) = v9 & 0xFFEFFFFF;
    }
  }
}

void sub_1821FF1F4(char *a1, void *a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v16), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v12 = sub_182AD2698();
    __swift_project_value_buffer(v12, qword_1EA843148);
    v13 = sub_182AD2678();
    v14 = sub_182AD38B8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_181A37000, v13, v14, "Cannot mutate parameters", v15, 2u);
      MEMORY[0x1865DF520](v15, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    v9 = swift_unknownObjectRetain();
    nw_context_activate(v9);
    v10 = nw_context_copy_cache_context(a2);
    type metadata accessor for NetworkContext();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v5 + 296) = v11;
    swift_endAccess();

    swift_unknownObjectRelease();
  }
}

void _nw_parameters_set_data_mode_0(char *a1, unsigned int a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v14), , (*&a1[v4] & 0x8000000000000000) != 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v11 = sub_182AD2678();
    v12 = sub_182AD38B8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_181A37000, v11, v12, "Cannot mutate parameters", v13, 2u);
      MEMORY[0x1865DF520](v13, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    if (a2 >= 4)
    {
      v9 = 0;
    }

    else
    {
      v9 = a2;
    }

    sub_181C2D380(v9);
    swift_endAccess();
  }
}

void _nw_parameters_set_account_id_0(char *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v15), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v11 = sub_182AD2698();
    __swift_project_value_buffer(v11, qword_1EA843148);
    v12 = sub_182AD2678();
    v13 = sub_182AD38B8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_181A37000, v12, v13, "Cannot mutate parameters", v14, 2u);
      MEMORY[0x1865DF520](v14, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    if (a2)
    {
      v9 = sub_182AD3158();
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    *(v5 + 248) = v9;
    *(v5 + 256) = v10;
    swift_endAccess();
  }
}

void _nw_parameters_set_effective_bundle_id_0(char *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v15), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v11 = sub_182AD2698();
    __swift_project_value_buffer(v11, qword_1EA843148);
    v12 = sub_182AD2678();
    v13 = sub_182AD38B8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_181A37000, v12, v13, "Cannot mutate parameters", v14, 2u);
      MEMORY[0x1865DF520](v14, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    if (a2)
    {
      v9 = sub_182AD3158();
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    *(v5 + 320) = v9;
    *(v5 + 328) = v10;
    swift_endAccess();
  }
}

void _nw_parameters_set_attributed_bundle_identifier_0(char *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v15), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v11 = sub_182AD2698();
    __swift_project_value_buffer(v11, qword_1EA843148);
    v12 = sub_182AD2678();
    v13 = sub_182AD38B8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_181A37000, v12, v13, "Cannot mutate parameters", v14, 2u);
      MEMORY[0x1865DF520](v14, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    if (a2)
    {
      v9 = sub_182AD3158();
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    *(v5 + 280) = v9;
    *(v5 + 288) = v10;
    swift_endAccess();
  }
}

void _nw_parameters_set_attribution_context_0(char *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v15), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v11 = sub_182AD2698();
    __swift_project_value_buffer(v11, qword_1EA843148);
    v12 = sub_182AD2678();
    v13 = sub_182AD38B8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_181A37000, v12, v13, "Cannot mutate parameters", v14, 2u);
      MEMORY[0x1865DF520](v14, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    if (a2)
    {
      v9 = sub_182AD3158();
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    *(v5 + 264) = v9;
    *(v5 + 272) = v10;
    swift_endAccess();
  }
}

void sub_1821FFD50(char *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v7 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v8 = a1;
  if (v7 < 0 && (v9 = v7 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v9 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v10 = swift_allocObject(), memmove((v10 + 16), (v9 + 16), 0x188uLL), *&a1[v6] = v10, sub_181F481DC(__dst, &v14), , v7 = *&a1[v6], v7 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v11 = sub_182AD2698();
    __swift_project_value_buffer(v11, qword_1EA843148);
    v8 = sub_182AD2678();
    v12 = sub_182AD38B8();
    if (os_log_type_enabled(v8, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_181A37000, v8, v12, "Cannot mutate parameters", v13, 2u);
      MEMORY[0x1865DF520](v13, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    a3(v7 + 16, a2);
  }
}

void _nw_parameters_set_allow_ultra_constrained_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 231);
    if (a2)
    {
      if ((*(v5 + 231) & 1) == 0)
      {
        *(v5 + 231) = v9 | 1;
      }
    }

    else if (*(v5 + 231))
    {
      *(v5 + 231) = v9 & 0xFE;
    }
  }
}

void _nw_parameters_set_prohibit_roaming_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 231);
    if (a2)
    {
      if ((*(v5 + 231) & 2) == 0)
      {
        *(v5 + 231) = v9 | 2;
      }
    }

    else if ((*(v5 + 231) & 2) != 0)
    {
      *(v5 + 231) = v9 & 0xFD;
    }
  }
}

void sub_182200280(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 236);
    if (a2)
    {
      if ((v9 & 2) == 0)
      {
        *(v5 + 236) = v9 | 2;
      }
    }

    else if ((v9 & 2) != 0)
    {
      *(v5 + 236) = v9 & 0xFFFD;
    }
  }
}

void _nw_parameters_set_use_p2p_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 236);
    if (a2)
    {
      if ((v9 & 4) == 0)
      {
        *(v5 + 236) = v9 | 4;
      }
    }

    else if ((v9 & 4) != 0)
    {
      *(v5 + 236) = v9 & 0xFFFB;
    }
  }
}

void _nw_parameters_set_resolve_ptr_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x10) == 0)
      {
        *(v5 + 136) = v9 | 0x10;
      }
    }

    else if ((v9 & 0x10) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFFFFEF;
    }
  }
}

void _nw_parameters_set_indefinite_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if ((v5 & 0x8000000000000000) == 0 || (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], (v5 & 0x8000000000000000) == 0))
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 2) != 0)
      {
        goto LABEL_9;
      }

      v9 |= 2u;
    }

    else
    {
      if ((v9 & 2) == 0)
      {
        goto LABEL_9;
      }

      v9 &= ~2u;
    }

    *(v5 + 140) = v9;
LABEL_9:
    if ((v9 & 4) == 0)
    {
      *(v5 + 140) = v9 | 4;
    }

    goto LABEL_11;
  }

  sub_18220E960();
  swift_willThrowTypedImpl();

  if (qword_1EA836648 != -1)
  {
    swift_once();
  }

  v10 = sub_182AD2698();
  __swift_project_value_buffer(v10, qword_1EA843148);
  v6 = sub_182AD2678();
  v11 = sub_182AD38B8();
  if (os_log_type_enabled(v6, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
    MEMORY[0x1865DF520](v12, -1, -1);
  }

LABEL_11:
}

void _nw_parameters_set_no_proxy_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 235);
    if (a2)
    {
      if ((*(v5 + 235) & 1) == 0)
      {
        *(v5 + 235) = v9 | 1;
      }
    }

    else if (*(v5 + 235))
    {
      *(v5 + 235) = v9 & 0xFE;
    }
  }
}

void _nw_parameters_set_no_fallback_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 236);
    if (a2)
    {
      if ((v9 & 8) == 0)
      {
        *(v5 + 236) = v9 | 8;
      }
    }

    else if ((v9 & 8) != 0)
    {
      *(v5 + 236) = v9 & 0xFFF7;
    }
  }
}

void _nw_parameters_set_no_wake_from_sleep_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 235);
    if (a2)
    {
      if ((*(v5 + 235) & 2) == 0)
      {
        *(v5 + 235) = v9 | 2;
      }
    }

    else if ((*(v5 + 235) & 2) != 0)
    {
      *(v5 + 235) = v9 & 0xFD;
    }
  }
}

void _nw_parameters_set_sleep_keepalive_interval_0(char *a1, unsigned int a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v12), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843148);
    v6 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v6, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    *(v5 + 120) = a2;
    *(v5 + 128) = 0;
  }
}

void _nw_parameters_set_traffic_class_0(char *a1, int a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v12), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843148);
    v6 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v6, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    *(v5 + 220) = a2;
  }
}

void _nw_parameters_set_multipath_force_enable_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x10000) == 0)
      {
        *(v5 + 136) = v9 | 0x10000;
      }
    }

    else if ((v9 & 0x10000) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFEFFFF;
    }
  }
}

void _nw_parameters_set_is_known_tracker_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 236);
    if (a2)
    {
      if ((v9 & 0x40) == 0)
      {
        *(v5 + 236) = v9 | 0x40;
      }
    }

    else if ((v9 & 0x40) != 0)
    {
      *(v5 + 236) = v9 & 0xFFBF;
    }
  }
}

void _nw_parameters_set_block_trackers_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x1000) == 0)
      {
        *(v5 + 140) = v9 | 0x1000;
      }
    }

    else if ((v9 & 0x1000) != 0)
    {
      *(v5 + 140) = v9 & 0xFFFFEFFF;
    }
  }
}

void _nw_parameters_set_server_mode_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x200) == 0)
      {
        *(v5 + 136) = v9 | 0x200;
      }

      *(v5 + 226) = 0;
      if ((*(v5 + 140) & 6) != 4)
      {
        *(v5 + 140) = ~*(v5 + 140) & 4 | *(v5 + 140) & 0xFFFFFFFD;
      }
    }

    else if ((v9 & 0x200) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFFFDFF;
    }
  }
}

void sub_182201938(char *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v7 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v8 = a1;
  if (v7 < 0 && (v9 = v7 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v9 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v10 = swift_allocObject(), memmove((v10 + 16), (v9 + 16), 0x188uLL), *&a1[v6] = v10, sub_181F481DC(__dst, &v15), , (*&a1[v6] & 0x8000000000000000) != 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v11 = sub_182AD2698();
    __swift_project_value_buffer(v11, qword_1EA843148);
    v12 = sub_182AD2678();
    v13 = sub_182AD38B8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_181A37000, v12, v13, "Cannot mutate parameters", v14, 2u);
      MEMORY[0x1865DF520](v14, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    a3(a2);
    swift_endAccess();
  }
}

void sub_182201B04(char *a1, char a2, void (*a3)(void, __n128))
{
  v6 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v7 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v8 = a1;
  if (v7 < 0 && (v9 = v7 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v9 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v10 = swift_allocObject(), memmove((v10 + 16), (v9 + 16), 0x188uLL), *&a1[v6] = v10, sub_181F481DC(__dst, &v15), , (*&a1[v6] & 0x8000000000000000) != 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v11 = sub_182AD2698();
    __swift_project_value_buffer(v11, qword_1EA843148);
    v12 = sub_182AD2678();
    v13 = sub_182AD38B8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_181A37000, v12, v13, "Cannot mutate parameters", v14, 2u);
      MEMORY[0x1865DF520](v14, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    (a3)(a2 & 1);
    swift_endAccess();
  }
}

void _nw_parameters_set_fail_if_svcb_received_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x200000) == 0)
      {
        *(v5 + 136) = v9 | 0x200000;
      }
    }

    else if ((v9 & 0x200000) != 0)
    {
      *(v5 + 136) = v9 & 0xFFDFFFFF;
    }
  }
}

void _nw_parameters_set_include_ble_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x2000) == 0)
      {
        *(v5 + 140) = v9 | 0x2000;
      }
    }

    else if ((v9 & 0x2000) != 0)
    {
      *(v5 + 140) = v9 & 0xFFFFDFFF;
    }
  }
}

void _nw_parameters_set_include_screen_off_devices_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x4000) == 0)
      {
        *(v5 + 140) = v9 | 0x4000;
      }
    }

    else if ((v9 & 0x4000) != 0)
    {
      *(v5 + 140) = v9 & 0xFFFFBFFF;
    }
  }
}

void _nw_parameters_set_allow_internet_fallback_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x8000) == 0)
      {
        *(v5 + 140) = v9 | 0x8000;
      }
    }

    else if ((v9 & 0x8000) != 0)
    {
      *(v5 + 140) = v9 & 0xFFFF7FFF;
    }
  }
}

void _nw_parameters_set_is_probe_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 8) == 0)
      {
        *(v5 + 140) = v9 | 8;
      }
    }

    else if ((v9 & 8) != 0)
    {
      *(v5 + 140) = v9 & 0xFFFFFFF7;
    }
  }
}

void _nw_parameters_set_allow_unusable_addresses_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x800) == 0)
      {
        *(v5 + 136) = v9 | 0x800;
      }
    }

    else if ((v9 & 0x800) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFFF7FF;
    }
  }
}

void _nw_parameters_set_no_proxy_path_selection_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 235);
    if (a2)
    {
      if ((*(v5 + 235) & 8) == 0)
      {
        *(v5 + 235) = v9 | 8;
      }
    }

    else if ((*(v5 + 235) & 8) != 0)
    {
      *(v5 + 235) = v9 & 0xF7;
    }
  }
}

void _nw_parameters_set_privacy_proxy_fail_closed_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 230);
    if (a2)
    {
      if ((*(v5 + 230) & 8) == 0)
      {
        *(v5 + 230) = v9 | 8;
      }
    }

    else if ((*(v5 + 230) & 8) != 0)
    {
      *(v5 + 230) = v9 & 0xF7;
    }
  }
}

void _nw_parameters_set_privacy_proxy_strict_fail_closed_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 230);
    if (a2)
    {
      if ((*(v5 + 230) & 0x20) == 0)
      {
        *(v5 + 230) = v9 | 0x20;
      }
    }

    else if ((*(v5 + 230) & 0x20) != 0)
    {
      *(v5 + 230) = v9 & 0xDF;
    }
  }
}

void _nw_parameters_set_privacy_proxy_fail_closed_for_unreachable_hosts_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 235);
    if (a2)
    {
      if ((*(v5 + 235) & 0x10) == 0)
      {
        *(v5 + 235) = v9 | 0x10;
      }
    }

    else if ((*(v5 + 235) & 0x10) != 0)
    {
      *(v5 + 235) = v9 & 0xEF;
    }
  }
}

void _nw_parameters_set_prohibit_privacy_proxy_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 231);
    if (a2)
    {
      if ((*(v5 + 231) & 8) == 0)
      {
        *(v5 + 231) = v9 | 8;
      }
    }

    else if ((*(v5 + 231) & 8) != 0)
    {
      *(v5 + 231) = v9 & 0xF7;
    }
  }
}

void _nw_parameters_set_use_aop2_offload_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 231);
    if (a2)
    {
      if ((*(v5 + 231) & 0x10) == 0)
      {
        *(v5 + 231) = v9 | 0x10;
      }
    }

    else if ((*(v5 + 231) & 0x10) != 0)
    {
      *(v5 + 231) = v9 & 0xEF;
    }
  }
}

void _nw_parameters_set_require_companion_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 231);
    if (a2)
    {
      if ((*(v5 + 231) & 0x20) == 0)
      {
        *(v5 + 231) = v9 | 0x20;
      }
    }

    else if ((*(v5 + 231) & 0x20) != 0)
    {
      *(v5 + 231) = v9 & 0xDF;
    }
  }
}

void _nw_parameters_set_is_third_party_web_content_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 236);
    if (a2)
    {
      if ((v9 & 0x80) == 0)
      {
        *(v5 + 236) = v9 | 0x80;
      }
    }

    else if ((v9 & 0x80) != 0)
    {
      *(v5 + 236) = v9 & 0xFF7F;
    }
  }
}

void _nw_parameters_set_is_approved_app_domain_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 236);
    if (a2)
    {
      if ((*(v5 + 236) & 0x100) == 0)
      {
        *(v5 + 236) = v9 | 0x100;
      }
    }

    else if ((*(v5 + 236) & 0x100) != 0)
    {
      *(v5 + 236) = v9 & 0xFEFF;
    }
  }
}

void _nw_parameters_set_should_trust_invalid_certificates_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x2000000) == 0)
      {
        *(v5 + 136) = v9 | 0x2000000;
      }
    }

    else if ((v9 & 0x2000000) != 0)
    {
      *(v5 + 136) = v9 & 0xFDFFFFFF;
    }
  }
}

void _nw_parameters_set_delegated_unique_pid_0(char *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v12), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843148);
    v6 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v6, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    *(v5 + 200) = a2;
    *(v5 + 208) = 0;
  }
}

void _nw_parameters_set_pid_0(char *a1, int a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v12), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843148);
    v6 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v6, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    *(v5 + 212) = a2;
  }
}

void _nw_parameters_set_uid_0(char *a1, int a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v12), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843148);
    v6 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v6, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    *(v5 + 216) = a2;
  }
}

void _nw_parameters_clear_custom_proxy_configs_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843148);
    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 376);
    if (!v7)
    {
      type metadata accessor for Parameters.ProxyValues.ProxyValuesBacking();
      v7 = swift_allocObject();
      *(v7 + 16) = 0u;
      *(v7 + 32) = 0u;
      *(v3 + 376) = v7;
    }

    *(v7 + 24) = 0;

    swift_endAccess();
  }
}

void sub_182203F9C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v11 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v12 = a1;
  if (v11 < 0 && (v13 = v11 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v13 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v14 = swift_allocObject(), memmove((v14 + 16), (v13 + 16), 0x188uLL), *&a1[v10] = v14, sub_181F481DC(__dst, &v18), , v11 = *&a1[v10], v11 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v15 = sub_182AD2698();
    __swift_project_value_buffer(v15, qword_1EA843148);
    v12 = sub_182AD2678();
    v16 = sub_182AD38B8();
    if (os_log_type_enabled(v12, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_181A37000, v12, v16, "Cannot mutate parameters", v17, 2u);
      MEMORY[0x1865DF520](v17, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    *(v11 + 52) = a2;
    *(v11 + 60) = a3;
    *(v11 + 68) = a4;
    *(v11 + 76) = a5;
    *(v11 + 84) = 0;
  }
}

void _nw_parameters_set_web_search_content_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 236);
    if (a2)
    {
      if ((*(v5 + 236) & 0x400) == 0)
      {
        *(v5 + 236) = v9 | 0x400;
      }
    }

    else if ((*(v5 + 236) & 0x400) != 0)
    {
      *(v5 + 236) = v9 & 0xFBFF;
    }
  }
}

void _nw_parameters_set_https_proxy_is_opaque_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x100) == 0)
      {
        *(v5 + 140) = v9 | 0x100;
      }
    }

    else if ((v9 & 0x100) != 0)
    {
      *(v5 + 140) = v9 & 0xFFFFFEFF;
    }
  }
}

void _nw_parameters_set_https_proxy_over_tls_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x1000) == 0)
      {
        *(v5 + 136) = v9 | 0x1000;
      }
    }

    else if ((v9 & 0x1000) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFFEFFF;
    }
  }
}

void _nw_parameters_set_attach_protocol_listener_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x2000) == 0)
      {
        *(v5 + 136) = v9 | 0x2000;
      }
    }

    else if ((v9 & 0x2000) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFFDFFF;
    }
  }
}

void _nw_parameters_set_prohibit_joining_protocols_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x4000) == 0)
      {
        *(v5 + 136) = v9 | 0x4000;
      }
    }

    else if ((v9 & 0x4000) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFFBFFF;
    }
  }
}

void _nw_parameters_set_allow_joining_connected_fd_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x8000) == 0)
      {
        *(v5 + 136) = v9 | 0x8000;
      }
    }

    else if ((v9 & 0x8000) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFF7FFF;
    }
  }
}

void _nw_parameters_set_allow_duplicate_state_updates_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x200) == 0)
      {
        *(v5 + 140) = v9 | 0x200;
      }
    }

    else if ((v9 & 0x200) != 0)
    {
      *(v5 + 140) = v9 & 0xFFFFFDFF;
    }
  }
}

void _nw_parameters_set_always_open_listener_socket_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x20000) == 0)
      {
        *(v5 + 136) = v9 | 0x20000;
      }
    }

    else if ((v9 & 0x20000) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFDFFFF;
    }
  }
}

void _nw_parameters_set_disable_listener_datapath_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x80000) == 0)
      {
        *(v5 + 136) = v9 | 0x80000;
      }
    }

    else if ((v9 & 0x80000) != 0)
    {
      *(v5 + 136) = v9 & 0xFFF7FFFF;
    }
  }
}

void _nw_parameters_set_skip_stack_trace_capture_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x10000) == 0)
      {
        *(v5 + 140) = v9 | 0x10000;
      }
    }

    else if ((v9 & 0x10000) != 0)
    {
      *(v5 + 140) = v9 & 0xFFFEFFFF;
    }
  }
}

void _nw_parameters_set_should_skip_probe_sampling_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x400000) == 0)
      {
        *(v5 + 140) = v9 | 0x400000;
      }
    }

    else if ((v9 & 0x400000) != 0)
    {
      *(v5 + 140) = v9 & 0xFFBFFFFF;
    }
  }
}

void _nw_parameters_set_use_enhanced_privacy_mode_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 236);
    if (a2)
    {
      if ((*(v5 + 236) & 0x200) == 0)
      {
        *(v5 + 236) = v9 | 0x200;
      }
    }

    else if ((*(v5 + 236) & 0x200) != 0)
    {
      *(v5 + 236) = v9 & 0xFDFF;
    }
  }
}

void _nw_parameters_set_inherited_from_silent_context_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x1000000) == 0)
      {
        *(v5 + 136) = v9 | 0x1000000;
      }
    }

    else if ((v9 & 0x1000000) != 0)
    {
      *(v5 + 136) = v9 & 0xFEFFFFFF;
    }
  }
}

void sub_182205820(char *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843148);
    v10 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v10, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    if (a2)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(v5 + 400) = a2;
    }

    else
    {
      swift_unknownObjectRelease();
      *(v5 + 400) = 0;
    }

    swift_endAccess();
  }
}

void _nw_parameters_set_encode_custom_options_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x100000) == 0)
      {
        *(v5 + 140) = v9 | 0x100000;
      }
    }

    else if ((v9 & 0x100000) != 0)
    {
      *(v5 + 140) = v9 & 0xFFEFFFFF;
    }
  }
}

void sub_182205BD0(char *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v7 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v8 = a1;
  if (v7 < 0 && (v9 = v7 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v9 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v10 = swift_allocObject(), memmove((v10 + 16), (v9 + 16), 0x188uLL), *&a1[v6] = v10, sub_181F481DC(__dst, &v15), , v7 = *&a1[v6], v7 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v11 = sub_182AD2698();
    __swift_project_value_buffer(v11, qword_1EA843148);
    v12 = sub_182AD2678();
    v13 = sub_182AD38B8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_181A37000, v12, v13, "Cannot mutate parameters", v14, 2u);
      MEMORY[0x1865DF520](v14, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    a3(v7 + 16, a2);
    swift_endAccess();
  }
}

void _nw_parameters_set_expected_workload_0(char *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v12), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843148);
    v6 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v6, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    *(v5 + 88) = a2;
    *(v5 + 96) = 0;
  }
}

void _nw_parameters_set_proc_uuid_0(char *a1, const unsigned __int8 *a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843148);
    v10 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v10, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    if (uuid_is_null(a2) != 1)
    {
      *(v5 + 144) = *a2;
    }

    swift_endAccess();
  }
}

void _nw_parameters_set_e_proc_uuid_0(char *a1, const unsigned __int8 *a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843148);
    v10 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v10, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    if (uuid_is_null(a2) != 1)
    {
      *(v5 + 160) = *a2;
    }

    swift_endAccess();
  }
}

void _nw_parameters_set_parent_id_inner_0(char *a1, uint64_t a2, char a3)
{
  v6 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v7 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v8 = a1;
  if (v7 < 0 && (v9 = v7 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v9 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v10 = swift_allocObject(), memmove((v10 + 16), (v9 + 16), 0x188uLL), *&a1[v6] = v10, sub_181F481DC(__dst, v22), , v7 = *&a1[v6], v7 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v15 = sub_182AD2698();
    __swift_project_value_buffer(v15, qword_1EA843148);
    v16 = sub_182AD2678();
    v17 = sub_182AD38B8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_181A37000, v16, v17, "Cannot mutate parameters", v18, 2u);
      MEMORY[0x1865DF520](v18, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    if (uuid_is_null(a2) == 1 || (v12 = *a2, v11 = *(a2 + 8), *(v7 + 16) = v12, *(v7 + 24) = v11, *(v7 + 32) = 0, (a3 & 1) == 0) || (v13 = *(v7 + 304)) == 0 || *(v13 + 48) < 2uLL)
    {
LABEL_20:
      swift_endAccess();

      return;
    }

    if (*(v13 + 64))
    {
      v14 = *(v13 + 64);
    }

    else
    {
      v14 = *sub_182AD2388();
    }

    v22[0] = v14;
    v19 = *(v14 + 24);
    v20 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (*(v14 + 16) < v20 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_181B8477C(isUniquelyReferenced_nonNull_native, v20, 0);
        v14 = v22[0];
      }

      sub_181B855B4((v14 + 16), v14 + 40, v12, v11);
      sub_181F48984(v14);

      goto LABEL_20;
    }

    __break(1u);
  }
}

void _nw_parameters_set_listener_uuid_0(char *a1, const unsigned __int8 *a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843148);
    v10 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v10, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    if (uuid_is_null(a2) != 1)
    {
      *(v5 + 33) = *a2;
      *(v5 + 49) = 0;
    }

    swift_endAccess();
  }
}

void _nw_parameters_clear_prohibited_netagent_types_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843148);
    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 240);
    if (!v7)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v7 = swift_allocObject();
      sub_18226B448(v7 + 16);
      *(v3 + 240) = v7;
    }

    *(v7 + 56) = 0;

    swift_endAccess();
  }
}

void _nw_parameters_clear_required_netagent_types_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843148);
    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 240);
    if (!v7)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v7 = swift_allocObject();
      sub_18226B448(v7 + 16);
      *(v3 + 240) = v7;
    }

    *(v7 + 72) = 0;

    swift_endAccess();
  }
}

void _nw_parameters_clear_preferred_netagent_types_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843148);
    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 240);
    if (!v7)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v7 = swift_allocObject();
      sub_18226B448(v7 + 16);
      *(v3 + 240) = v7;
    }

    *(v7 + 88) = 0;

    swift_endAccess();
  }
}

void _nw_parameters_clear_avoided_netagent_types_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843148);
    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 240);
    if (!v7)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v7 = swift_allocObject();
      sub_18226B448(v7 + 16);
      *(v3 + 240) = v7;
    }

    *(v7 + 104) = 0;

    swift_endAccess();
  }
}

void sub_182206ED8(char *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v9 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v10 = a1;
  if (v9 < 0 && (v11 = v9 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v11 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v12 = swift_allocObject(), memmove((v12 + 16), (v11 + 16), 0x188uLL), *&a1[v8] = v12, sub_181F481DC(__dst, &v17), , v9 = *&a1[v8], v9 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v13 = sub_182AD2698();
    __swift_project_value_buffer(v13, qword_1EA843148);
    v14 = sub_182AD2678();
    v15 = sub_182AD38B8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_181A37000, v14, v15, "Cannot mutate parameters", v16, 2u);
      MEMORY[0x1865DF520](v16, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    a4(v9 + 16, a2, a3);
    swift_endAccess();
  }
}

void _nw_parameters_clear_prohibited_netagent_uuids_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843148);
    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 240);
    if (!v7)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v7 = swift_allocObject();
      sub_18226B448(v7 + 16);
      *(v3 + 240) = v7;
    }

    *(v7 + 64) = 0;

    swift_endAccess();
  }
}

void _nw_parameters_clear_required_netagent_uuids_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843148);
    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 240);
    if (!v7)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v7 = swift_allocObject();
      sub_18226B448(v7 + 16);
      *(v3 + 240) = v7;
    }

    *(v7 + 80) = 0;

    swift_endAccess();
  }
}

void _nw_parameters_clear_preferred_netagent_uuids_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843148);
    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 240);
    if (!v7)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v7 = swift_allocObject();
      sub_18226B448(v7 + 16);
      *(v3 + 240) = v7;
    }

    *(v7 + 96) = 0;

    swift_endAccess();
  }
}

void _nw_parameters_clear_avoided_netagent_uuids_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843148);
    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 240);
    if (!v7)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v7 = swift_allocObject();
      sub_18226B448(v7 + 16);
      *(v3 + 240) = v7;
    }

    *(v7 + 112) = 0;

    swift_endAccess();
  }
}

void sub_182207854(char *a1, const unsigned __int8 *a2, void (*a3)(_OWORD *))
{
  v6 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v7 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v8 = a1;
  if (v7 < 0 && (v9 = v7 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v9 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v10 = swift_allocObject(), memmove((v10 + 16), (v9 + 16), 0x188uLL), *&a1[v6] = v10, sub_181F481DC(__dst, v15), , (*&a1[v6] & 0x8000000000000000) != 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v11 = sub_182AD2698();
    __swift_project_value_buffer(v11, qword_1EA843148);
    v12 = sub_182AD2678();
    v13 = sub_182AD38B8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_181A37000, v12, v13, "Cannot mutate parameters", v14, 2u);
      MEMORY[0x1865DF520](v14, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    if (uuid_is_null(a2) != 1)
    {
      v15[0] = *a2;
      a3(v15);
    }

    swift_endAccess();
  }
}

void _nw_parameters_clear_transforms_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v11), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v7 = sub_182AD2698();
    __swift_project_value_buffer(v7, qword_1EA843148);
    v8 = sub_182AD2678();
    v9 = sub_182AD38B8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_181A37000, v8, v9, "Cannot mutate parameters", v10, 2u);
      MEMORY[0x1865DF520](v10, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    *(v3 + 368) = 0;
  }
}

void _nw_parameters_add_transform_0(char *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if ((v5 & 0x8000000000000000) == 0 || (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), 0x188uLL), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, v19), , v5 = *&a1[v4], (v5 & 0x8000000000000000) == 0))
  {
    swift_beginAccess();

    swift_beginAccess();
    v9 = *(a2 + 32);
    __dst[0] = *(a2 + 16);
    __dst[1] = v9;
    __dst[2] = *(a2 + 48);
    LOWORD(__dst[3]) = *(a2 + 64);

    sub_181B29D44(__dst, v19);

    v10 = *(v5 + 368);
    if (!v10)
    {
      *(v5 + 368) = *sub_182AD2388();
    }

    v11 = *(v10 + 24);
    v12 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *(v5 + 368);
      if (*(v14 + 16) < v12 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_181B29AC4(isUniquelyReferenced_nonNull_native, v12, 0);
        v14 = *(v5 + 368);
      }

      sub_181B29C9C((v14 + 16), v14 + 40, __dst);
      sub_181B29DA0(__dst);
      swift_endAccess();

      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  sub_18220E960();
  swift_willThrowTypedImpl();

  if (qword_1EA836648 != -1)
  {
LABEL_15:
    swift_once();
  }

  v15 = sub_182AD2698();
  __swift_project_value_buffer(v15, qword_1EA843148);
  v16 = sub_182AD2678();
  v17 = sub_182AD38B8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_181A37000, v16, v17, "Cannot mutate parameters", v18, 2u);
    MEMORY[0x1865DF520](v18, -1, -1);
  }
}

void _nw_parameters_clear_proxy_options_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843148);
    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 376);
    if (!v7)
    {
      type metadata accessor for Parameters.ProxyValues.ProxyValuesBacking();
      v7 = swift_allocObject();
      *(v7 + 16) = 0u;
      *(v7 + 32) = 0u;
      *(v3 + 376) = v7;
    }

    *(v7 + 16) = 0;

    swift_endAccess();
  }
}

void _nw_parameters_add_proxy_options_0(char *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v15), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v11 = sub_182AD2698();
    __swift_project_value_buffer(v11, qword_1EA843148);
    v12 = sub_182AD2678();
    v13 = sub_182AD38B8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_181A37000, v12, v13, "Cannot mutate parameters", v14, 2u);
      MEMORY[0x1865DF520](v14, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    v9 = sub_181AA847C(a2);
    sub_181B424E8(v9, v10, v5 + 16);
    swift_unknownObjectRelease();
    swift_endAccess();
  }
}

void _nw_parameters_set_companion_preference_0(char *a1, int a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = 2 * (a2 == 2);
    if (a2 == 1)
    {
      v9 = 1;
    }

    *(v5 + 226) = v9;
  }
}

void _nw_parameters_set_internal_attribution_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    if (a2 == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2 * (a2 == 2);
    }

    *(v5 + 232) = v9;
  }
}

void _nw_parameters_set_dry_run_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 1) == 0)
      {
        *(v5 + 136) = v9 | 1;
      }
    }

    else if (v9)
    {
      *(v5 + 136) = v9 & 0xFFFFFFFE;
    }
  }
}

void _nw_parameters_set_no_opaque_proxy_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 1) == 0)
      {
        *(v5 + 140) = v9 | 1;
      }
    }

    else if (v9)
    {
      *(v5 + 140) = v9 & 0xFFFFFFFE;
    }
  }
}

void _nw_parameters_set_no_cellular_fallback_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 236);
    if (a2)
    {
      if ((v9 & 0x10) == 0)
      {
        *(v5 + 236) = v9 | 0x10;
      }
    }

    else if ((v9 & 0x10) != 0)
    {
      *(v5 + 236) = v9 & 0xFFEF;
    }
  }
}

void _nw_parameters_set_is_fallback_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x40) == 0)
      {
        *(v5 + 140) = v9 | 0x40;
      }
    }

    else if ((v9 & 0x40) != 0)
    {
      *(v5 + 140) = v9 & 0xFFFFFFBF;
    }
  }
}

void _nw_parameters_set_no_fullstack_fallback_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x80) == 0)
      {
        *(v5 + 140) = v9 | 0x80;
      }
    }

    else if ((v9 & 0x80) != 0)
    {
      *(v5 + 140) = v9 & 0xFFFFFF7F;
    }
  }
}

void _nw_parameters_set_fallback_applied_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 236);
    if (a2)
    {
      if ((v9 & 0x20) == 0)
      {
        *(v5 + 236) = v9 | 0x20;
      }
    }

    else if ((v9 & 0x20) != 0)
    {
      *(v5 + 236) = v9 & 0xFFDF;
    }
  }
}

void _nw_parameters_set_fallback_mode_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v12), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843148);
    v6 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v6, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    *(v5 + 233) = a2;
  }
}

void _nw_parameters_set_proxy_applied_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 235);
    if (a2)
    {
      if ((*(v5 + 235) & 0x20) == 0)
      {
        *(v5 + 235) = v9 | 0x20;
      }
    }

    else if ((*(v5 + 235) & 0x20) != 0)
    {
      *(v5 + 235) = v9 & 0xDF;
    }
  }
}

void _nw_parameters_set_is_system_proxy_connection_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 235);
    if (a2)
    {
      if ((*(v5 + 235) & 0x40) == 0)
      {
        *(v5 + 235) = v9 | 0x40;
      }
    }

    else if ((*(v5 + 235) & 0x40) != 0)
    {
      *(v5 + 235) = v9 & 0xBF;
    }
  }
}

void _nw_parameters_set_parent_is_known_tracker_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x400) == 0)
      {
        *(v5 + 140) = v9 | 0x400;
      }
    }

    else if ((v9 & 0x400) != 0)
    {
      *(v5 + 140) = v9 & 0xFFFFFBFF;
    }
  }
}

void _nw_parameters_set_prohibit_encrypted_dns_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x800) == 0)
      {
        *(v5 + 140) = v9 | 0x800;
      }
    }

    else if ((v9 & 0x800) != 0)
    {
      *(v5 + 140) = v9 & 0xFFFFF7FF;
    }
  }
}

void _nw_parameters_set_is_encrypted_dns_resolver_connection_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x200000) == 0)
      {
        *(v5 + 140) = v9 | 0x200000;
      }
    }

    else if ((v9 & 0x200000) != 0)
    {
      *(v5 + 140) = v9 & 0xFFDFFFFF;
    }
  }
}

void _nw_parameters_set_channel_teardown_delay_0(char *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v12), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 == -1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    swift_beginAccess();
    if ((a2 & 0x8000000000000000) == 0)
    {
      *(v5 + 104) = a2;
      *(v5 + 112) = 0;
      goto LABEL_5;
    }

    __break(1u);
  }

  swift_once();
LABEL_7:
  v9 = sub_182AD2698();
  __swift_project_value_buffer(v9, qword_1EA843148);
  v6 = sub_182AD2678();
  v10 = sub_182AD38B8();
  if (os_log_type_enabled(v6, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_181A37000, v6, v10, "Cannot mutate parameters", v11, 2u);
    MEMORY[0x1865DF520](v11, -1, -1);
  }

LABEL_5:
}

void _nw_parameters_configure_application_service_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v11), , (*&a1[v2] & 0x8000000000000000) != 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v7 = sub_182AD2698();
    __swift_project_value_buffer(v7, qword_1EA843148);
    v8 = sub_182AD2678();
    v9 = sub_182AD38B8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_181A37000, v8, v9, "Cannot mutate parameters", v10, 2u);
      MEMORY[0x1865DF520](v10, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    sub_181F40D48();
    swift_endAccess();
  }
}

void _nw_parameters_set_migrating_peer_to_peer_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843148);
    v4 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v4, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v4, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    *(v3 + 234) = 2;
    v7 = *(v3 + 236);
    if ((v7 & 8) == 0)
    {
      *(v3 + 236) = v7 | 8;
    }

    v8 = *(v3 + 136);
    if ((~v8 & 0x800100) != 0)
    {
      *(v3 + 136) = v8 | 0x800100;
    }
  }
}