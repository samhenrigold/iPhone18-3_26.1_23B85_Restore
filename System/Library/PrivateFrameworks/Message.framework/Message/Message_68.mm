unint64_t sub_1B0C4F800(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v30 = a2;
  v31 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v29 - v9;
  sub_1B0C4FB40();
  v11 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_1B03B5C80(v5 + v11, v10, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v12 = sub_1B0E439A8();
  v13 = *(v12 - 8);
  result = (*(v13 + 48))(v10, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v29[3] = a4;
    swift_retain_n();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();

    v15 = sub_1B0E43988();
    v16 = sub_1B0E458C8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = a3;
      v18 = swift_slowAlloc();
      *v18 = 68158208;
      *(v18 + 4) = 2;
      *(v18 + 8) = 256;
      v19 = *(v5 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      *(v18 + 10) = v19;

      *(v18 + 11) = 2048;
      v20 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
      swift_beginAccess();
      v21 = *(v5 + v20);
      if (v21 >> 62)
      {
        v22 = sub_1B0E46138();
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v18 + 13) = v22;

      _os_log_impl(&dword_1B0389000, v15, v16, "[%.*hhx] Pool has %ld connections.", v18, 0x15u);
      MEMORY[0x1B272C230](v18, -1, -1);

      a3 = v17;
    }

    else
    {
    }

    (*(v13 + 8))(v10, v12);
    v23 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    v24 = swift_beginAccess();
    v25 = *(v5 + v23);
    MEMORY[0x1EEE9AC00](v24);
    *&v29[-4] = v31;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v26 = sub_1B0C4CDE8(sub_1B0C5A024, &v29[-8], v25);
    v28 = v27;

    if (v28)
    {
      sub_1B0C4F144(v30, a3);
    }

    return v26;
  }

  return result;
}

uint64_t sub_1B0C4FB40()
{
  v18 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v18);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v6 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v7 = *(v0 + v6);
  v19 = MEMORY[0x1E69E7CC0];
  if (v7 >> 62)
  {
LABEL_23:
    v8 = sub_1B0E46138();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v8)
  {
    v15 = v6;
    v16 = v0;
    v9 = 0;
    v17 = v7 & 0xC000000000000001;
    v6 = v7 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v17)
      {
        v10 = MEMORY[0x1B2728410](v9, v7);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          v13 = v19;
          v6 = v15;
          v0 = v16;
          goto LABEL_21;
        }
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_23;
        }

        v10 = *(v7 + 8 * v9 + 32);

        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_18;
        }
      }

      v0 = v10;
      (*(*v10 + 304))();
      sub_1B038CBB4(v5, v2, type metadata accessor for ConnectionState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        break;
      }

      if (EnumCaseMultiPayload == 3)
      {

        sub_1B038C824(v2, type metadata accessor for ConnectionState);
      }

      else
      {
        if (EnumCaseMultiPayload != 4)
        {
          goto LABEL_15;
        }
      }

LABEL_6:
      ++v9;
      if (v11 == v8)
      {
        goto LABEL_19;
      }
    }

    sub_1B038C824(v2, type metadata accessor for ConnectionState);
LABEL_15:
    v0 = &v19;
    sub_1B0E463A8();
    sub_1B0E46428();
    sub_1B0E46438();
    sub_1B0E463C8();
    goto LABEL_6;
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_21:

  *(v0 + v6) = v13;
}

uint64_t sub_1B0C4FDEC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v11 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v12 = *(a2 + v11);
  if ((v12 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v13 = *(v12 + 8 * a1 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_20;
  }

  v13 = MEMORY[0x1B2728410](a1);
LABEL_5:
  swift_endAccess();
  v14 = (*(*v13 + 616))(a3, a4);

  if ((v14 & 1) == 0)
  {
    return 0;
  }

  result = swift_beginAccess();
  v16 = *(a2 + v11);
  if ((v16 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v17 = *(v16 + 8 * a1 + 32);

      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_20:
  v17 = MEMORY[0x1B2728410](a1);
LABEL_10:
  swift_endAccess();
  v18 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_1B03B5C80(a2 + v18, v10, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v19 = sub_1B0E439A8();
  v20 = *(v19 - 8);
  result = (*(v20 + 48))(v10, 1, v19);
  if (result != 1)
  {

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v21 = sub_1B0E43988();
    v22 = sub_1B0E458C8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v35 = v32;
      *v23 = 68158723;
      *(v23 + 4) = 2;
      *(v23 + 8) = 256;
      *(v23 + 10) = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      *(v23 + 11) = 2160;
      *(v23 + 13) = 0x786F626C69616DLL;
      *(v23 + 21) = 2085;
      v33 = a3;
      v34 = a4;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v24 = sub_1B0E44BA8();
      v26 = sub_1B0399D64(v24, v25, &v35);

      *(v23 + 23) = v26;
      *(v23 + 31) = 2082;
      v27 = ConnectionID.debugDescription.getter(*(v17 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id));
      v29 = sub_1B0399D64(v27, v28, &v35);

      *(v23 + 33) = v29;
      _os_log_impl(&dword_1B0389000, v21, v22, "[%.*hhx] Will select mailbox '%{sensitive,mask.mailbox}s' on connection %{public}s for new mailbox affinity.", v23, 0x29u);
      v30 = v32;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v30, -1, -1);
      MEMORY[0x1B272C230](v23, -1, -1);
    }

    else
    {
    }

    (*(v20 + 8))(v10, v19);
    return v17;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1B0C50218@<X0>(uint64_t a2@<X1>, char a3@<W2>, _BYTE *x8_0@<X8>)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_1B0E43108();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v22 = &v28 - v20;
  if (a3)
  {
    (*(v13 + 56))(&v28 - v20, 1, 1, v12, v21);
LABEL_10:
    v26 = *v5;
    v27 = type metadata accessor for ConnectionStatus.Error(0);
    sub_1B03B5C80(&v5[*(v27 + 20)], v11, &qword_1EB6E39C0, &qword_1B0EA35E0);
    sub_1B03B5C80(v22, v18, &unk_1EB6E2990, &qword_1B0E9B060);
    ConnectionStatus.Error.init(kind:details:backedOffUntil:)(v26, v11, v18, x8_0);
    return sub_1B0398EFC(v22, &unk_1EB6E2990, &qword_1B0E9B060);
  }

  v23 = static MonotonicTime.now()();
  result = sub_1B0E430F8();
  if (v23 > a2)
  {
    if (__OFSUB__(v23, a2))
    {
      __break(1u);
      goto LABEL_12;
    }

    if (!__OFSUB__(0, v23 - a2))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (!__OFSUB__(a2, v23))
  {
LABEL_9:
    sub_1B0E43058();
    (*(v13 + 8))(v15, v12);
    (*(v13 + 56))(v22, 0, 1, v12, v25);
    goto LABEL_10;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1B0C504B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14[-v3];
  v5 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_1B03B5C80(a1 + v5, v4, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v6 = sub_1B0E439A8();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v4, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    swift_retain_n();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();

    v9 = sub_1B0E43988();
    v10 = sub_1B0E45908();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 68158208;
      *(v11 + 4) = 2;
      *(v11 + 8) = 256;
      v12 = *(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      *(v11 + 10) = v12;

      *(v11 + 11) = 2048;
      v13 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
      swift_beginAccess();
      *(v11 + 13) = *(a1 + v13);

      _os_log_impl(&dword_1B0389000, v9, v10, "[%.*hhx] Backed off (failure count %ld). Not creating a new connection.", v11, 0x15u);
      MEMORY[0x1B272C230](v11, -1, -1);
    }

    else
    {
    }

    return (*(v7 + 8))(v4, v6);
  }

  return result;
}

uint64_t sub_1B0C50710(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v29 = a1;
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v28 = &v28 - v5;
  v6 = sub_1B0E44468();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v10 = v11;
  v12 = *MEMORY[0x1E69E8020];
  v13 = *(v7 + 104);
  v13(v10, v12, v6, v8);
  v14 = v11;
  v15 = sub_1B0E44488();
  v16 = *(v7 + 8);
  result = v16(v10, v6);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState) != 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    *v10 = v14;
    (v13)(v10, v12, v6);
    v25 = v14;
    v26 = sub_1B0E44488();
    result = v16(v10, v6);
    if (v26)
    {
      v27 = *(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextCredentialsRequestID);
      *(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextCredentialsRequestID) = v27 + 1;
      sub_1B044AFB0(v27, v29, v30);
      return swift_unknownObjectRelease();
    }

    goto LABEL_13;
  }

  v18 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  v19 = v28;
  sub_1B03B5C80(v3 + v18, v28, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v20 = sub_1B0E439A8();
  v21 = *(v20 - 8);
  result = (*(v21 + 48))(v19, 1, v20);
  if (result == 1)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v22 = sub_1B0E43988();
  v23 = sub_1B0E458E8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 68157952;
    *(v24 + 4) = 2;
    *(v24 + 8) = 256;
    *(v24 + 10) = *(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    _os_log_impl(&dword_1B0389000, v22, v23, "[%.*hhx] Current credentials are invalid.", v24, 0xBu);
    MEMORY[0x1B272C230](v24, -1, -1);
  }

  else
  {
  }

  (*(v21 + 8))(v19, v20);
  return v29(MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1B0C50ABC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B0E44468();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1B0E44488();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1B0C45EFC(a1, a2);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0C50C08(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1B0C461D0(a1, a2, a3, a4);

    return swift_unknownObjectRelease();
  }

  return result;
}

int64_t sub_1B0C50C9C()
{
  v1 = v0;
  v2 = sub_1B0E44208();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1B0E443F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v33 - v13);
  v15 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
  swift_beginAccess();
  v16 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  if (*(v15 + 16))
  {
    swift_beginAccess();
    sub_1B03B5C80(v1 + v16, v11, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
    v17 = sub_1B0E439A8();
    v2 = *(v17 - 8);
    result = (*(v2 + 48))(v11, 1, v17);
    if (result != 1)
    {

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v14 = sub_1B0E43988();
      v19 = sub_1B0E45908();
      if (os_log_type_enabled(v14, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 68157952;
        *(v20 + 4) = 2;
        *(v20 + 8) = 256;
        *(v20 + 10) = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        _os_log_impl(&dword_1B0389000, v14, v19, "[%.*hhx] Cancelling backoff timer.", v20, 0xBu);
        MEMORY[0x1B272C230](v20, -1, -1);

LABEL_13:
        (*(v2 + 8))(v11, v17);
        v26 = *(**(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoffTimer) + 208);

        v26(v27);
      }

LABEL_12:

      goto LABEL_13;
    }

    goto LABEL_21;
  }

  v35 = v7;
  v36 = v6;
  v37 = *(v15 + 8);
  swift_beginAccess();
  sub_1B03B5C80(v1 + v16, v14, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v21 = sub_1B0E439A8();
  v17 = *(v21 - 8);
  result = (*(v17 + 48))(v14, 1, v21);
  if (result != 1)
  {
    v34 = v3;
    swift_retain_n();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();

    v22 = sub_1B0E43988();
    v11 = sub_1B0E45908();
    if (!os_log_type_enabled(v22, v11))
    {

LABEL_17:
      (*(v17 + 8))(v14, v21);
      v28 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoffTimer);

      v29 = v38;
      DispatchTime.init(_:)(v37);
      v30 = swift_allocObject();
      swift_weakInit();
      *v5 = 100;
      v31 = v34;
      (*(v34 + 104))(v5, *MEMORY[0x1E69E7F38], v2);
      v32 = *(*v28 + 200);

      v32(v29, v5, sub_1B041EE00, v30);

      (*(v31 + 8))(v5, v2);
      (*(v35 + 8))(v29, v36);
    }

    v33 = v2;
    v23 = swift_slowAlloc();
    *v23 = 68158464;
    *(v23 + 4) = 2;
    *(v23 + 8) = 256;
    v24 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    *(v23 + 10) = v24;

    *(v23 + 11) = 2048;
    result = static MonotonicTime.now()();
    v25 = v37 - result;
    if (v37 >= result)
    {
      v2 = v33;
      if (!__OFSUB__(v37, result))
      {
LABEL_16:
        *(v23 + 13) = v25 / 1000000000.0;
        *(v23 + 21) = 2048;
        *(v23 + 23) = *v15;

        _os_log_impl(&dword_1B0389000, v22, v11, "[%.*hhx] Setting up backoff timer for %f s (count %ld) from now.", v23, 0x1Fu);
        MEMORY[0x1B272C230](v23, -1, -1);

        goto LABEL_17;
      }
    }

    else
    {
      if (!__OFSUB__(result, v37))
      {
        v25 = v37 - result;
        v2 = v33;
        if (__OFSUB__(0, result - v37))
        {
          __break(1u);
          goto LABEL_12;
        }

        goto LABEL_16;
      }

      __break(1u);
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C51334(uint64_t a1)
{
  v2 = v1;
  v152 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v152);
  v5 = &v136 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v148 = &v136 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v147 = &v136 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v157 = &v136 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v140 = &v136 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v139 = &v136 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v143 = &v136 - v20;
  v21 = sub_1B0E44468();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = (&v136 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v25 = v26;
  (*(v22 + 104))(v25, *MEMORY[0x1E69E8020], v21, v23);
  v27 = v26;
  v28 = sub_1B0E44488();
  (*(v22 + 8))(v25, v21);
  if ((v28 & 1) == 0)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    v36 = sub_1B0E46138();
    goto LABEL_10;
  }

  v29 = (v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancel);
  result = swift_beginAccess();
  v31 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancelTimer);
  if (*(*v29 + 16))
  {
    v28 = v157;
    if (!v31)
    {
      goto LABEL_80;
    }

    RestartableTimer.start()();
  }

  else
  {
    v28 = v157;
    if (!v31)
    {
      goto LABEL_81;
    }

    RestartableTimer.stop()();
  }

  v32 = *v29;
  v33 = *(v29 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03CDDDC(a1, v32, v33);
  v26 = v34;

  if (!*(v26 + 16))
  {
  }

  v35 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v151 = *(v2 + v35);
  if (v151 >> 62)
  {
    goto LABEL_72;
  }

  v36 = *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
  if (!v36)
  {
LABEL_68:

    return sub_1B0C4FB40();
  }

  v138 = v8;
  v37 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  v38 = v151;
  v156 = v151 & 0xC000000000000001;
  v145 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v155 = v37;
  swift_beginAccess();
  v8 = 0;
  v142 = v38 & 0xFFFFFFFFFFFFFF8;
  v141 = v38 + 32;
  v149 = v26 + 56;
  *&v39 = 68158210;
  v144 = v39;
  v150 = v2;
  v146 = v5;
  v153 = v26;
  v154 = v36;
  while (1)
  {
    if (v156)
    {
      v41 = MEMORY[0x1B2728410](v8, v151);
      v42 = __OFADD__(v8++, 1);
      if (v42)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (v8 >= *(v142 + 16))
      {
        goto LABEL_70;
      }

      v41 = *(v141 + 8 * v8);

      v42 = __OFADD__(v8++, 1);
      if (v42)
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }
    }

    v43 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id;
    if (*(v26 + 16))
    {
      v44 = *(v41 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
      sub_1B0E46C28();
      sub_1B0E46C88();
      v45 = sub_1B0E46CB8();
      v46 = -1 << *(v26 + 32);
      v47 = v45 & ~v46;
      if ((*(v149 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
      {
        break;
      }
    }

LABEL_27:
    (*(*v41 + 304))();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      v61 = v148;
      v62 = v147;
      if (EnumCaseMultiPayload == 3)
      {
        sub_1B038C824(v5, type metadata accessor for ConnectionState);
        sub_1B03B5C80(v2 + v155, v62, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
        v99 = v62;
        v100 = sub_1B0E439A8();
        v101 = *(v100 - 8);
        result = (*(v101 + 48))(v99, 1, v100);
        if (result == 1)
        {
          goto LABEL_77;
        }

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();

        v102 = sub_1B0E43988();
        v103 = sub_1B0E45908();

        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v158[0] = v105;
          *v104 = v144;
          *(v104 + 4) = 2;
          *(v104 + 8) = 256;
          *(v104 + 10) = *(v2 + v145);

          *(v104 + 11) = 2082;
          v106 = ConnectionID.debugDescription.getter(*(v41 + v43));
          v108 = sub_1B0399D64(v106, v107, v158);

          *(v104 + 13) = v108;
          v2 = v150;
          _os_log_impl(&dword_1B0389000, v102, v103, "[%.*hhx] Connection %{public}s: authentication failed.", v104, 0x15u);
          __swift_destroy_boxed_opaque_existential_0(v105);
          MEMORY[0x1B272C230](v105, -1, -1);
          v109 = v104;
          v5 = v146;
          MEMORY[0x1B272C230](v109, -1, -1);
        }

        else
        {
        }

        v28 = v157;
        v40 = v154;
        (*(v101 + 8))(v147, v100);
        goto LABEL_14;
      }

      if (EnumCaseMultiPayload == 4)
      {
        sub_1B03B5C80(v2 + v155, v148, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
        v63 = sub_1B0E439A8();
        v64 = *(v63 - 8);
        result = (*(v64 + 48))(v61, 1, v63);
        if (result == 1)
        {
          goto LABEL_75;
        }

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();

        v65 = sub_1B0E43988();
        v66 = sub_1B0E45908();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v137 = v65;
          v69 = v68;
          v158[0] = v68;
          *v67 = v144;
          *(v67 + 4) = 2;
          *(v67 + 8) = 256;
          *(v67 + 10) = *(v2 + v145);

          *(v67 + 11) = 2082;
          v70 = ConnectionID.debugDescription.getter(*(v41 + v43));
          v72 = sub_1B0399D64(v70, v71, v158);

          *(v67 + 13) = v72;
          v2 = v150;
          v73 = v66;
          v74 = v137;
          _os_log_impl(&dword_1B0389000, v137, v73, "[%.*hhx] Connection %{public}s failed.", v67, 0x15u);
          __swift_destroy_boxed_opaque_existential_0(v69);
          MEMORY[0x1B272C230](v69, -1, -1);
          v75 = v67;
          v5 = v146;
          MEMORY[0x1B272C230](v75, -1, -1);
        }

        else
        {
        }

        v28 = v157;
        v135 = v154;
        (*(v64 + 8))(v148, v63);
      }

      else
      {
        v120 = v138;
        sub_1B03B5C80(v2 + v155, v138, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
        v121 = sub_1B0E439A8();
        v122 = *(v121 - 8);
        result = (*(v122 + 48))(v120, 1, v121);
        if (result == 1)
        {
          goto LABEL_74;
        }

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();

        v123 = sub_1B0E43988();
        v124 = sub_1B0E45908();

        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          v137 = v123;
          v127 = v126;
          v158[0] = v126;
          *v125 = v144;
          *(v125 + 4) = 2;
          *(v125 + 8) = 256;
          *(v125 + 10) = *(v2 + v145);

          *(v125 + 11) = 2082;
          v128 = ConnectionID.debugDescription.getter(*(v41 + v43));
          v130 = sub_1B0399D64(v128, v129, v158);

          *(v125 + 13) = v130;
          v2 = v150;
          v131 = v124;
          v132 = v137;
          _os_log_impl(&dword_1B0389000, v137, v131, "[%.*hhx] Connection %{public}s is cancelled.", v125, 0x15u);
          __swift_destroy_boxed_opaque_existential_0(v127);
          MEMORY[0x1B272C230](v127, -1, -1);
          v133 = v125;
          v5 = v146;
          MEMORY[0x1B272C230](v133, -1, -1);
        }

        else
        {
        }

        v28 = v157;
        v135 = v154;
        (*(v122 + 8))(v138, v121);
      }

LABEL_65:
      v26 = v153;
      if (v8 == v135)
      {
LABEL_66:

        goto LABEL_68;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v88 = v139;
        sub_1B03B5C80(v2 + v155, v139, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
        v89 = sub_1B0E439A8();
        v90 = *(v89 - 8);
        result = (*(v90 + 48))(v88, 1, v89);
        if (result == 1)
        {
          goto LABEL_76;
        }

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();

        v91 = sub_1B0E43988();
        v92 = sub_1B0E45908();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v158[0] = swift_slowAlloc();
          v94 = v158[0];
          *v93 = v144;
          *(v93 + 4) = 2;
          *(v93 + 8) = 256;
          *(v93 + 10) = *(v2 + v145);

          *(v93 + 11) = 2082;
          v95 = ConnectionID.debugDescription.getter(*(v41 + v43));
          v97 = sub_1B0399D64(v95, v96, v158);

          *(v93 + 13) = v97;
          v2 = v150;
          _os_log_impl(&dword_1B0389000, v91, v92, "[%.*hhx] Connection %{public}s is connecting.", v93, 0x15u);
          __swift_destroy_boxed_opaque_existential_0(v94);
          MEMORY[0x1B272C230](v94, -1, -1);
          v98 = v93;
          v5 = v146;
          MEMORY[0x1B272C230](v98, -1, -1);
        }

        else
        {
        }

        v28 = v157;
        v135 = v154;
        (*(v90 + 8))(v139, v89);
        sub_1B038C824(v5, type metadata accessor for ConnectionState);
        goto LABEL_65;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v50 = v140;
        sub_1B03B5C80(v2 + v155, v140, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
        v51 = sub_1B0E439A8();
        v52 = *(v51 - 8);
        result = (*(v52 + 48))(v50, 1, v51);
        if (result == 1)
        {
          goto LABEL_79;
        }

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();

        v53 = sub_1B0E43988();
        v54 = sub_1B0E45908();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v158[0] = v56;
          *v55 = v144;
          *(v55 + 4) = 2;
          *(v55 + 8) = 256;
          *(v55 + 10) = *(v2 + v145);

          *(v55 + 11) = 2082;
          v57 = ConnectionID.debugDescription.getter(*(v41 + v43));
          v59 = sub_1B0399D64(v57, v58, v158);

          *(v55 + 13) = v59;
          v2 = v150;
          _os_log_impl(&dword_1B0389000, v53, v54, "[%.*hhx] Connection %{public}s is unauthenticated.", v55, 0x15u);
          __swift_destroy_boxed_opaque_existential_0(v56);
          MEMORY[0x1B272C230](v56, -1, -1);
          v60 = v55;
          v5 = v146;
          MEMORY[0x1B272C230](v60, -1, -1);
        }

        else
        {
        }

        v28 = v157;
        v40 = v154;
        (*(v52 + 8))(v140, v51);
        sub_1B038C824(v5, type metadata accessor for ConnectionState);
      }

      else
      {
        sub_1B038C824(v5, type metadata accessor for ConnectionState);
        sub_1B03B5C80(v2 + v155, v28, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
        v110 = sub_1B0E439A8();
        v111 = *(v110 - 8);
        result = (*(v111 + 48))(v28, 1, v110);
        if (result == 1)
        {
          goto LABEL_78;
        }

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();

        v112 = sub_1B0E43988();
        v113 = sub_1B0E45908();

        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          v158[0] = v115;
          *v114 = v144;
          *(v114 + 4) = 2;
          *(v114 + 8) = 256;
          *(v114 + 10) = *(v2 + v145);

          *(v114 + 11) = 2082;
          v116 = ConnectionID.debugDescription.getter(*(v41 + v43));
          v118 = sub_1B0399D64(v116, v117, v158);

          *(v114 + 13) = v118;
          v2 = v150;
          _os_log_impl(&dword_1B0389000, v112, v113, "[%.*hhx] Connection %{public}s is authenticated.", v114, 0x15u);
          __swift_destroy_boxed_opaque_existential_0(v115);
          MEMORY[0x1B272C230](v115, -1, -1);
          v119 = v114;
          v5 = v146;
          MEMORY[0x1B272C230](v119, -1, -1);
        }

        else
        {
        }

        v40 = v154;
        v28 = v157;
        (*(v111 + 8))(v157, v110);
      }

LABEL_14:
      v26 = v153;
LABEL_15:
      if (v8 == v40)
      {
        goto LABEL_66;
      }
    }
  }

  v48 = ~v46;
  while (*(*(v26 + 48) + 4 * v47) != v44)
  {
    v47 = (v47 + 1) & v48;
    if (((*(v149 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v76 = v143;
  sub_1B03B5C80(v2 + v155, v143, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v77 = sub_1B0E439A8();
  v78 = *(v77 - 8);
  result = (*(v78 + 48))(v76, 1, v77);
  if (result != 1)
  {

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();

    v79 = sub_1B0E43988();
    v80 = sub_1B0E45908();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v158[0] = v82;
      *v81 = v144;
      *(v81 + 4) = 2;
      *(v81 + 8) = 256;
      *(v81 + 10) = *(v150 + v145);

      *(v81 + 11) = 2082;
      v83 = ConnectionID.debugDescription.getter(*(v41 + v43));
      v85 = sub_1B0399D64(v83, v84, v158);
      v26 = v153;

      *(v81 + 13) = v85;
      _os_log_impl(&dword_1B0389000, v79, v80, "[%.*hhx] Cancelling idle connection %{public}s.", v81, 0x15u);
      __swift_destroy_boxed_opaque_existential_0(v82);
      v86 = v82;
      v2 = v150;
      MEMORY[0x1B272C230](v86, -1, -1);
      v87 = v81;
      v5 = v146;
      MEMORY[0x1B272C230](v87, -1, -1);
    }

    else
    {
    }

    v28 = v157;
    v40 = v154;
    v134 = (*(v78 + 8))(v143, v77);
    (*(*v41 + 536))(v134);

    goto LABEL_15;
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
  return result;
}

uint64_t sub_1B0C52808(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29[-v4 - 8];
  v6 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_enqueuedEvents;
  swift_beginAccess();
  if (*(v1 + v6))
  {
    swift_beginAccess();
    v7 = *(v1 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v6) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_1B044CDD4(0, *(v7 + 2) + 1, 1, v7);
      *(v1 + v6) = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_1B044CDD4((v9 > 1), v10 + 1, 1, v7);
    }

    v11 = *(a1 + 1);
    v12 = *(a1 + 4);
    v32 = *(a1 + 3);
    v33 = v11;
    v31 = v12;
    *(v7 + 2) = v10 + 1;
    v13 = &v7[40 * v10];
    v14 = *a1;
    v15 = a1[1];
    *(v13 + 8) = *(a1 + 4);
    *(v13 + 2) = v14;
    *(v13 + 3) = v15;
    *(v1 + v6) = v7;
    swift_endAccess();
    sub_1B0C5A0E4(&v33, v30);
    sub_1B03B5C80(&v32, v30, &qword_1EB6E5B48, &qword_1B0EDC5D0);
    return sub_1B03B5C80(&v31, v30, &qword_1EB6E5B48, &qword_1B0EDC5D0);
  }

  else
  {
    v17 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_1B03B5C80(v1 + v17, v5, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
    v18 = sub_1B0E439A8();
    v19 = *(v18 - 8);
    result = (*(v19 + 48))(v5, 1, v18);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v20 = v1;

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v21 = sub_1B0E43988();
      v22 = sub_1B0E458E8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 68157952;
        *(v23 + 4) = 2;
        *(v23 + 8) = 256;
        *(v23 + 10) = *(v20 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        _os_log_impl(&dword_1B0389000, v21, v22, "[%.*hhx] Trying to enqueue event outside withEnqueuedSend.", v23, 0xBu);
        MEMORY[0x1B272C230](v23, -1, -1);
      }

      else
      {
      }

      (*(v19 + 8))(v5, v18);
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5460, "x(\t");
        inited = swift_initStackObject();
        v25 = *(a1 + 1);
        v26 = *(a1 + 4);
        v32 = *(a1 + 3);
        v33 = v25;
        v31 = v26;
        v27 = *a1;
        *(inited + 16) = xmmword_1B0EC1E70;
        *(inited + 32) = v27;
        *(inited + 48) = a1[1];
        *(inited + 64) = v26;
        sub_1B0C5A0E4(&v33, v29);
        sub_1B03B5C80(&v32, v29, &qword_1EB6E5B48, &qword_1B0EDC5D0);
        sub_1B03B5C80(&v31, v29, &qword_1EB6E5B48, &qword_1B0EDC5D0);
        sub_1B041F3D0(inited);
        swift_unknownObjectRelease();
        swift_setDeallocating();
        return sub_1B0C5A1EC(inited + 32);
      }
    }
  }

  return result;
}

void sub_1B0C52BF4(unsigned int *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v55 = &v47[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v47[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47[-v9];
  v11 = type metadata accessor for ConnectionStatus.Error(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59[0] = *(a1 + 1);
  if (v59[0] >> 60 != 1)
  {
    return;
  }

  v49 = v7;
  v52 = a1;
  v15 = *a1;
  v53 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C536A0(v53, v15);
  v16 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v54 = v1;
  v50 = v12;
  v51 = v16;
  v17 = *(v1 + v16);
  if (v17 >> 62)
  {
LABEL_29:
    v18 = sub_1B0E46138();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19 = 0;
  while (1)
  {
    if (v18 == v19)
    {

      v26 = v53;
      goto LABEL_24;
    }

    if ((v17 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (*(*(v17 + 8 * v19 + 32) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) == v15)
    {
      goto LABEL_13;
    }

LABEL_9:
    if (__OFADD__(v19++, 1))
    {
      goto LABEL_28;
    }
  }

  v48 = *(MEMORY[0x1B2728410](v19, v17) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
  swift_unknownObjectRelease();
  if (v48 != v15)
  {
    goto LABEL_9;
  }

LABEL_13:

  v21 = v54;
  swift_beginAccess();
  v22 = sub_1B0BAFFF0(v19);
  v23 = swift_endAccess();
  v24 = (*(*v22 + 352))(v23);
  sub_1B0C3E354(v24, v10);

  v25 = v50;
  if ((*(v50 + 48))(v10, 1, v11) == 1)
  {
    sub_1B0398EFC(v10, &qword_1EB6E35A0, &qword_1B0E99850);
  }

  else
  {
    sub_1B038CBB4(v10, v14, type metadata accessor for ConnectionStatus.Error);
    v27 = v49;
    sub_1B038CBB4(v14, v49, type metadata accessor for ConnectionStatus.Error);
    (*(v25 + 56))(v27, 0, 1, v11);
    v28 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_lastError;
    swift_beginAccess();
    sub_1B03DC928(v27, v21 + v28);
    swift_endAccess();
  }

  v29 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  v30 = v55;
  sub_1B03B5C80(v21 + v29, v55, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v31 = sub_1B0E439A8();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  v50 = v31;
  if (v33(v30, 1) == 1)
  {
    __break(1u);
    return;
  }

  swift_retain_n();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v34 = *(v52 + 3);
  v57 = *(v52 + 4);
  v58 = v34;

  sub_1B0C5A0E4(v59, v56);
  sub_1B03B5C80(&v58, v56, &qword_1EB6E5B48, &qword_1B0EDC5D0);
  sub_1B03B5C80(&v57, v56, &qword_1EB6E5B48, &qword_1B0EDC5D0);
  v35 = sub_1B0E43988();
  v36 = sub_1B0E45908();
  sub_1B0C5A140(v59);
  sub_1B0398EFC(&v58, &qword_1EB6E5B48, &qword_1B0EDC5D0);
  sub_1B0398EFC(&v57, &qword_1EB6E5B48, &qword_1B0EDC5D0);
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v56[0] = v38;
    *v37 = 68158466;
    *(v37 + 4) = 2;
    *(v37 + 8) = 256;
    *(v37 + 10) = *(v21 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    *(v37 + 11) = 2082;
    v39 = ConnectionID.debugDescription.getter(v15);
    v41 = sub_1B0399D64(v39, v40, v56);

    *(v37 + 13) = v41;
    *(v37 + 21) = 2048;
    v42 = *(v21 + v51);
    if (v42 >> 62)
    {
      v43 = sub_1B0E46138();
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = v52;
    v26 = v53;

    *(v37 + 23) = v43;

    _os_log_impl(&dword_1B0389000, v35, v36, "[%.*hhx] Closing connection %{public}s. Remaining connection count: %ld.", v37, 0x1Fu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x1B272C230](v38, -1, -1);
    MEMORY[0x1B272C230](v37, -1, -1);

    v30 = v55;
  }

  else
  {

    v44 = v52;
    v26 = v53;
  }

  v45 = (*(v32 + 8))(v30, v50);
  (*(*v22 + 536))(v45);
  sub_1B0C52808(v44);

LABEL_24:
  v46 = CommandConnection.RecentErrors.backOffBehavior.getter(v26);

  if (v46 != 3)
  {
    swift_beginAccess();
    sub_1B0C3C4F0(v46);
    swift_endAccess();
    sub_1B0C50C9C();
  }
}

uint64_t sub_1B0C53354(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v26 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - v6;
  v8 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_1B03B5C80(v3 + v8, v7, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v9 = sub_1B0E439A8();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v7, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v12 = sub_1B0E43988();
    v13 = sub_1B0E458C8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28[0] = v25;
      *v14 = 68158210;
      *(v14 + 4) = 2;
      *(v14 + 8) = 256;
      *(v14 + 10) = *(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      *(v14 + 11) = 2082;
      v15 = ConnectionID.debugDescription.getter(a2);
      v17 = sub_1B0399D64(v15, v16, v28);

      *(v14 + 13) = v17;
      _os_log_impl(&dword_1B0389000, v12, v13, "[%.*hhx] Mailbox selection changed on %{public}s.", v14, 0x15u);
      v18 = v25;
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1B272C230](v18, -1, -1);
      MEMORY[0x1B272C230](v14, -1, -1);
    }

    else
    {
    }

    (*(v10 + 8))(v7, v9);
    v19 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    swift_beginAccess();
    v20 = *(v3 + v19);
    if (v20 >> 62)
    {
LABEL_19:
      v21 = sub_1B0E46138();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v21)
    {
      v22 = 0;
      do
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x1B2728410](v22, v20);
          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
LABEL_16:
            __break(1u);
          }
        }

        else
        {
          if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v23 = *(v20 + 8 * v22 + 32);

          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_16;
          }
        }

        v27 = v23;
        sub_1B0C55630(&v27, a2, v26, v3);

        ++v22;
      }

      while (v24 != v21);
    }
  }

  return result;
}

uint64_t sub_1B0C536A0(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v289) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v277 = &v262 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v276 = &v262 - v8;
  v282 = sub_1B0E441D8();
  v287 = *(v282 - 8);
  MEMORY[0x1EEE9AC00](v282);
  v285 = &v262 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v275 = &v262 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v267 = &v262 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v272 = &v262 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v262 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v273 = &v262 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v274 = &v262 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v284 = &v262 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v281 = (&v262 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v270 = &v262 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v271 = &v262 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v283 = (&v262 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v262 - v34;
  v280 = type metadata accessor for CommandConnection.RecentErrors.Statistics(0);
  MEMORY[0x1EEE9AC00](v280);
  v269 = &v262 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v266 = &v262 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v286 = &v262 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v268 = &v262 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v279 = (&v262 - v44);
  MEMORY[0x1EEE9AC00](v45);
  v278 = &v262 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v264 = &v262 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v262 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v265 = &v262 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v263 = &v262 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v262 - v57;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v262 - v60;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v262 - v63;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v262 - v66;
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v262 - v69;
  v288 = *(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);
  if (CommandConnection.RecentErrors.isEmpty.getter(a1))
  {
    v71 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_1B03B5C80(v3 + v71, v18, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
    v72 = sub_1B0E439A8();
    v73 = *(v72 - 8);
    result = (*(v73 + 48))(v18, 1, v72);
    if (result != 1)
    {
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v75 = sub_1B0E43988();
      v76 = sub_1B0E45908();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v290[0] = v78;
        *v77 = 68158210;
        *(v77 + 4) = 2;
        *(v77 + 8) = 256;
        v79 = v289;
        *(v77 + 10) = v288;
        *(v77 + 11) = 2082;
        v80 = ConnectionID.debugDescription.getter(v79);
        v82 = sub_1B0399D64(v80, v81, v290);

        *(v77 + 13) = v82;
        _os_log_impl(&dword_1B0389000, v75, v76, "[%.*hhx-%{public}s] Connection did close.", v77, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v78);
        MEMORY[0x1B272C230](v78, -1, -1);
        MEMORY[0x1B272C230](v77, -1, -1);
      }

      return (*(v73 + 8))(v18, v72);
    }

    __break(1u);
    goto LABEL_53;
  }

  v83 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  CommandConnection.RecentErrors.Statistics.init(_:)(v83, v70);
  if (*v70 == 1)
  {
    v84 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_1B03B5C80(v3 + v84, v35, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
    v85 = sub_1B0E439A8();
    isa = v85[-1].isa;
    result = (*(isa + 6))(v35, 1, v85);
    if (result == 1)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v87 = v70;
    sub_1B03C623C(v70, v67, type metadata accessor for CommandConnection.RecentErrors.Statistics);
    sub_1B03C623C(v70, v64, type metadata accessor for CommandConnection.RecentErrors.Statistics);
    v88 = sub_1B0E43988();
    v89 = sub_1B0E458F8();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v287 = swift_slowAlloc();
      v290[0] = v287;
      *v90 = 68158722;
      *(v90 + 4) = 2;
      *(v90 + 8) = 256;
      v91 = v289;
      *(v90 + 10) = v288;
      *(v90 + 11) = 2082;
      v92 = ConnectionID.debugDescription.getter(v91);
      v289 = v85;
      v94 = sub_1B0399D64(v92, v93, v290);

      *(v90 + 13) = v94;
      *(v90 + 21) = 2048;
      v95 = *(v67 + 1);
      sub_1B038C824(v67, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      *(v90 + 23) = v95;
      *(v90 + 31) = 2048;
      v96 = *(v64 + 2);
      sub_1B038C824(v64, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      *(v90 + 33) = v96;
      _os_log_impl(&dword_1B0389000, v88, v89, "[%.*hhx-%{public}s] Connection failed to parse server response. Failed commands: %ld. Network errors: %ld.", v90, 0x29u);
      v97 = v287;
      __swift_destroy_boxed_opaque_existential_0(v287);
      MEMORY[0x1B272C230](v97, -1, -1);
      MEMORY[0x1B272C230](v90, -1, -1);

      v98 = v87;
      v85 = v289;
    }

    else
    {
      sub_1B038C824(v64, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      sub_1B038C824(v67, type metadata accessor for CommandConnection.RecentErrors.Statistics);

      v98 = v87;
    }

    sub_1B038C824(v98, type metadata accessor for CommandConnection.RecentErrors.Statistics);
    return (*(isa + 1))(v35, v85);
  }

  else if (v70[1] == 1)
  {
    v99 = *(v70 + 6);
    if (v99)
    {
      v100 = *(v70 + 4);
      v285 = *(v70 + 5);
      v101 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      swift_beginAccess();
      v102 = v3 + v101;
      v103 = v283;
      sub_1B03B5C80(v102, v283, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
      v104 = sub_1B0E439A8();
      v105 = *(v104 - 8);
      result = (*(v105 + 48))(v103, 1, v104);
      if (result == 1)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v287 = v105;
      sub_1B04420D8(v100);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03C623C(v70, v61, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      sub_1B03C623C(v70, v58, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      sub_1B04420D8(v100);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v106 = sub_1B0E43988();
      v107 = sub_1B0E458E8();
      sub_1B0447F00(v100);

      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v284 = v104;
        v109 = v108;
        v282 = swift_slowAlloc();
        v290[0] = v282;
        *v109 = 68158978;
        *(v109 + 4) = 2;
        *(v109 + 8) = 256;
        v110 = v289;
        *(v109 + 10) = v288;
        *(v109 + 11) = 2082;
        v111 = ConnectionID.debugDescription.getter(v110);
        v113 = sub_1B0399D64(v111, v112, v290);

        *(v109 + 13) = v113;
        *(v109 + 21) = 2048;
        v286 = v70;
        v114 = *(v61 + 1);
        sub_1B038C824(v61, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        *(v109 + 23) = v114;
        *(v109 + 31) = 2048;
        v115 = *(v58 + 2);
        sub_1B038C824(v58, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        *(v109 + 33) = v115;
        *(v109 + 41) = 2082;
        v116 = ResponseText.debugDescription.getter(v100, v285, v99);
        v118 = sub_1B0399D64(v116, v117, v290);

        *(v109 + 43) = v118;
        _os_log_impl(&dword_1B0389000, v106, v107, "[%.*hhx-%{public}s] Connection failed to authenticate. Failed commands: %ld. Network errors: %ld. '%{public}s'", v109, 0x33u);
        v119 = v282;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v119, -1, -1);
        v120 = v109;
        v104 = v284;
        MEMORY[0x1B272C230](v120, -1, -1);

        sub_1B0447F00(v100);

        v121 = v286;
        v103 = v283;
      }

      else
      {
        sub_1B038C824(v58, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        sub_1B038C824(v61, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        sub_1B0447F00(v100);

        v121 = v70;
      }

      sub_1B038C824(v121, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      return (v287[1])(v103, v104);
    }

    else
    {
      v167 = v276;
      sub_1B03B5C80(&v70[*(v280 + 48)], v276, &unk_1EB6E5A90, &unk_1B0EDC020);
      v168 = v287;
      v169 = v282;
      if ((v287[6])(v167, 1, v282) == 1)
      {
        sub_1B0398EFC(v167, &unk_1EB6E5A90, &unk_1B0EDC020);
        v170 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
        swift_beginAccess();
        v171 = v270;
        sub_1B03B5C80(v3 + v170, v270, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
        v172 = sub_1B0E439A8();
        v173 = v172[-1].isa;
        result = (*(v173 + 6))(v171, 1, v172);
        if (result == 1)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B03C623C(v70, v51, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        v174 = v264;
        sub_1B03C623C(v70, v264, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        v175 = sub_1B0E43988();
        v176 = sub_1B0E458E8();
        if (os_log_type_enabled(v175, v176))
        {
          v177 = swift_slowAlloc();
          v178 = swift_slowAlloc();
          v290[0] = v178;
          *v177 = 68158722;
          *(v177 + 4) = 2;
          *(v177 + 8) = 256;
          v179 = v289;
          *(v177 + 10) = v288;
          *(v177 + 11) = 2082;
          v180 = ConnectionID.debugDescription.getter(v179);
          v289 = v172;
          v182 = sub_1B0399D64(v180, v181, v290);

          *(v177 + 13) = v182;
          *(v177 + 21) = 2048;
          v286 = v70;
          v183 = *(v51 + 1);
          sub_1B038C824(v51, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v177 + 23) = v183;
          *(v177 + 31) = 2048;
          v184 = v174;
          v185 = *(v174 + 16);
          sub_1B038C824(v184, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v177 + 33) = v185;
          _os_log_impl(&dword_1B0389000, v175, v176, "[%.*hhx-%{public}s] Connection failed to authenticate. Failed commands: %ld. Network errors: %ld.", v177, 0x29u);
          __swift_destroy_boxed_opaque_existential_0(v178);
          v186 = v178;
          v171 = v270;
          MEMORY[0x1B272C230](v186, -1, -1);
          MEMORY[0x1B272C230](v177, -1, -1);

          v187 = v286;
          v172 = v289;
        }

        else
        {
          sub_1B038C824(v174, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          sub_1B038C824(v51, type metadata accessor for CommandConnection.RecentErrors.Statistics);

          v187 = v70;
        }

        sub_1B038C824(v187, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        return (*(v173 + 1))(v171, v172);
      }

      else
      {
        v208 = v272;
        (v168[4])(v272, v167, v169);
        v209 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
        swift_beginAccess();
        v210 = v3 + v209;
        v211 = v271;
        sub_1B03B5C80(v210, v271, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
        v212 = sub_1B0E439A8();
        v213 = *(v212 - 8);
        result = (*(v213 + 48))(v211, 1, v212);
        if (result == 1)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v284 = v213;
        v285 = v212;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v214 = v263;
        sub_1B03C623C(v70, v263, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        v286 = v70;
        v215 = v265;
        sub_1B03C623C(v70, v265, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        v216 = v267;
        v283 = v168[2];
        (v283)(v267, v208, v169);
        v217 = sub_1B0E43988();
        v218 = sub_1B0E458E8();
        if (os_log_type_enabled(v217, v218))
        {
          v219 = swift_slowAlloc();
          LODWORD(v280) = v218;
          v220 = v219;
          v279 = swift_slowAlloc();
          v281 = swift_slowAlloc();
          v290[0] = v281;
          *v220 = 68158978;
          *(v220 + 4) = 2;
          *(v220 + 8) = 256;
          v221 = v289;
          *(v220 + 10) = v288;
          *(v220 + 11) = 2082;
          v222 = ConnectionID.debugDescription.getter(v221);
          v224 = sub_1B0399D64(v222, v223, v290);
          v289 = v217;
          v225 = v168;
          v226 = v169;
          v227 = v224;

          *(v220 + 13) = v227;
          *(v220 + 21) = 2048;
          v228 = *(v214 + 8);
          sub_1B038C824(v214, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v220 + 23) = v228;
          v211 = v271;
          *(v220 + 31) = 2048;
          v229 = v215;
          v230 = *(v215 + 16);
          sub_1B038C824(v229, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v220 + 33) = v230;
          *(v220 + 41) = 2112;
          sub_1B0C5A194();
          swift_allocError();
          (v283)(v231, v216, v226);
          v232 = _swift_stdlib_bridgeErrorToNSError();
          v233 = v225[1];
          v233(v216, v226);
          *(v220 + 43) = v232;
          v234 = v279;
          *v279 = v232;
          v235 = v289;
          _os_log_impl(&dword_1B0389000, v289, v280, "[%.*hhx-%{public}s] Connection failed to authenticate. Failed commands: %ld. Network errors: %ld. %@", v220, 0x33u);
          sub_1B0398EFC(v234, &unk_1EB6E2630, &qword_1B0E97970);
          MEMORY[0x1B272C230](v234, -1, -1);
          v236 = v281;
          __swift_destroy_boxed_opaque_existential_0(v281);
          MEMORY[0x1B272C230](v236, -1, -1);
          MEMORY[0x1B272C230](v220, -1, -1);

          v233(v272, v226);
        }

        else
        {
          sub_1B038C824(v215, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          sub_1B038C824(v214, type metadata accessor for CommandConnection.RecentErrors.Statistics);

          v260 = v168[1];
          v260(v216, v169);
          v260(v208, v169);
        }

        sub_1B038C824(v286, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        return (*(v284 + 8))(v211, v285);
      }
    }
  }

  else
  {
    v122 = v286;
    v123 = v287;
    v124 = v285;
    if (v70[2] == 1)
    {
      v125 = v70;
      v126 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      swift_beginAccess();
      v127 = v3;
      v128 = v281;
      sub_1B03B5C80(v3 + v126, v281, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
      v129 = sub_1B0E439A8();
      v130 = *(v129 - 8);
      result = (*(v130 + 48))(v128, 1, v129);
      if (result == 1)
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v131 = sub_1B0E43988();
      v132 = sub_1B0E458E8();
      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        v292 = v134;
        *v133 = 68158210;
        *(v133 + 4) = 2;
        *(v133 + 8) = 256;
        v135 = v289;
        *(v133 + 10) = v288;
        *(v133 + 11) = 2082;
        v136 = ConnectionID.debugDescription.getter(v135);
        v138 = sub_1B0399D64(v136, v137, &v292);
        v128 = v281;

        *(v133 + 13) = v138;
        _os_log_impl(&dword_1B0389000, v131, v132, "[%.*hhx-%{public}s] Server is temporarily unavailable.", v133, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v134);
        v139 = v134;
        v123 = v287;
        MEMORY[0x1B272C230](v139, -1, -1);
        v140 = v133;
        v124 = v285;
        MEMORY[0x1B272C230](v140, -1, -1);
      }

      v122 = v286;
      (*(v130 + 8))(v128, v129);
      v3 = v127;
      v70 = v125;
    }

    v141 = *(v70 + 6);
    if (v141)
    {
      v142 = *(v70 + 4);
      v287 = *(v70 + 5);
      v143 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      swift_beginAccess();
      v144 = v284;
      sub_1B03B5C80(v3 + v143, v284, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
      v145 = sub_1B0E439A8();
      v146 = *(v145 - 8);
      result = (v146[6].isa)(v144, 1, v145);
      if (result == 1)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      sub_1B04420D8(v142);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v147 = v278;
      sub_1B03C623C(v70, v278, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      v148 = v279;
      sub_1B03C623C(v70, v279, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      sub_1B04420D8(v142);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v149 = sub_1B0E43988();
      v150 = sub_1B0E458E8();
      sub_1B0447F00(v142);

      if (os_log_type_enabled(v149, v150))
      {
        v151 = swift_slowAlloc();
        v285 = v145;
        v152 = v148;
        v153 = v151;
        v283 = swift_slowAlloc();
        v291 = v283;
        *v153 = 68158978;
        *(v153 + 4) = 2;
        *(v153 + 8) = 256;
        v154 = v289;
        *(v153 + 10) = v288;
        *(v153 + 11) = 2082;
        v155 = ConnectionID.debugDescription.getter(v154);
        v289 = v146;
        v157 = sub_1B0399D64(v155, v156, &v291);
        v286 = v70;
        v158 = v157;

        *(v153 + 13) = v158;
        *(v153 + 21) = 2048;
        v159 = *(v147 + 8);
        sub_1B038C824(v147, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        *(v153 + 23) = v159;
        *(v153 + 31) = 2048;
        v160 = v152[2];
        v161 = v152;
        v145 = v285;
        sub_1B038C824(v161, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        *(v153 + 33) = v160;
        *(v153 + 41) = 2082;
        v162 = ResponseText.debugDescription.getter(v142, v287, v141);
        v164 = sub_1B0399D64(v162, v163, &v291);

        *(v153 + 43) = v164;
        _os_log_impl(&dword_1B0389000, v149, v150, "[%.*hhx-%{public}s] Connection failed. Failed commands: %ld. Network errors: %ld. '%{public}s'", v153, 0x33u);
        v165 = v283;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v165, -1, -1);
        v144 = v284;
        MEMORY[0x1B272C230](v153, -1, -1);

        sub_1B0447F00(v142);

        v166 = v286;
        v146 = v289;
      }

      else
      {
        sub_1B038C824(v148, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        sub_1B038C824(v147, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        sub_1B0447F00(v142);

        v166 = v70;
      }

      sub_1B038C824(v166, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      return (v146[1].isa)(v144, v145);
    }

    else
    {
      v188 = v277;
      sub_1B03B5C80(&v70[*(v280 + 48)], v277, &unk_1EB6E5A90, &unk_1B0EDC020);
      v189 = v282;
      if ((v123[6])(v188, 1, v282) == 1)
      {
        sub_1B0398EFC(v188, &unk_1EB6E5A90, &unk_1B0EDC020);
        v190 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
        swift_beginAccess();
        v191 = v273;
        sub_1B03B5C80(v3 + v190, v273, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
        v192 = sub_1B0E439A8();
        v193 = v192[-1].isa;
        result = (*(v193 + 6))(v191, 1, v192);
        if (result == 1)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v194 = v266;
        sub_1B03C623C(v70, v266, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        v195 = v269;
        sub_1B03C623C(v70, v269, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        v196 = sub_1B0E43988();
        v197 = sub_1B0E458E8();
        if (os_log_type_enabled(v196, v197))
        {
          v198 = swift_slowAlloc();
          v199 = swift_slowAlloc();
          v291 = v199;
          *v198 = 68158722;
          *(v198 + 4) = 2;
          *(v198 + 8) = 256;
          v200 = v289;
          *(v198 + 10) = v288;
          *(v198 + 11) = 2082;
          v201 = ConnectionID.debugDescription.getter(v200);
          v289 = v192;
          v203 = sub_1B0399D64(v201, v202, &v291);

          *(v198 + 13) = v203;
          *(v198 + 21) = 2048;
          v204 = v194;
          v205 = *(v194 + 8);
          sub_1B038C824(v204, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v198 + 23) = v205;
          *(v198 + 31) = 2048;
          v206 = *(v195 + 16);
          v192 = v289;
          sub_1B038C824(v195, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v198 + 33) = v206;
          _os_log_impl(&dword_1B0389000, v196, v197, "[%.*hhx-%{public}s] Connection failed. Failed commands: %ld. Network errors: %ld.", v198, 0x29u);
          __swift_destroy_boxed_opaque_existential_0(v199);
          v207 = v199;
          v191 = v273;
          MEMORY[0x1B272C230](v207, -1, -1);
          MEMORY[0x1B272C230](v198, -1, -1);
        }

        else
        {
          sub_1B038C824(v195, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          sub_1B038C824(v194, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        }

        sub_1B038C824(v70, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        return (*(v193 + 1))(v191, v192);
      }

      else
      {
        v237 = v275;
        (v123[4])(v275, v188, v189);
        v238 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
        swift_beginAccess();
        v239 = v3 + v238;
        v240 = v274;
        sub_1B03B5C80(v239, v274, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
        v241 = sub_1B0E439A8();
        v284 = *(v241 - 1);
        v242 = *(v284 + 48);
        v287 = v241;
        result = v242(v240, 1);
        if (result == 1)
        {
LABEL_60:
          __break(1u);
          return result;
        }

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v243 = v268;
        sub_1B03C623C(v70, v268, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        sub_1B03C623C(v70, v122, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        v286 = v70;
        v244 = v123[2];
        v244(v124, v237, v189);
        v245 = sub_1B0E43988();
        LODWORD(v283) = sub_1B0E458E8();
        if (os_log_type_enabled(v245, v283))
        {
          v246 = swift_slowAlloc();
          v280 = swift_slowAlloc();
          v281 = swift_slowAlloc();
          v291 = v281;
          *v246 = 68158978;
          *(v246 + 4) = 2;
          *(v246 + 8) = 256;
          v247 = v289;
          *(v246 + 10) = v288;
          *(v246 + 11) = 2082;
          v248 = ConnectionID.debugDescription.getter(v247);
          v250 = sub_1B0399D64(v248, v249, &v291);

          *(v246 + 13) = v250;
          *(v246 + 21) = 2048;
          v251 = v123;
          v252 = *(v243 + 8);
          sub_1B038C824(v243, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v246 + 23) = v252;
          *(v246 + 31) = 2048;
          v253 = *(v122 + 16);
          sub_1B038C824(v122, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v246 + 33) = v253;
          *(v246 + 41) = 2112;
          sub_1B0C5A194();
          swift_allocError();
          v254 = v285;
          v244(v255, v285, v189);
          v256 = _swift_stdlib_bridgeErrorToNSError();
          v257 = v251[1];
          v257(v254, v189);
          *(v246 + 43) = v256;
          v258 = v280;
          *v280 = v256;
          _os_log_impl(&dword_1B0389000, v245, v283, "[%.*hhx-%{public}s] Connection failed. Failed commands: %ld. Network errors: %ld. %@", v246, 0x33u);
          sub_1B0398EFC(v258, &unk_1EB6E2630, &qword_1B0E97970);
          MEMORY[0x1B272C230](v258, -1, -1);
          v259 = v281;
          __swift_destroy_boxed_opaque_existential_0(v281);
          MEMORY[0x1B272C230](v259, -1, -1);
          MEMORY[0x1B272C230](v246, -1, -1);

          v257(v275, v189);
          v240 = v274;
        }

        else
        {
          sub_1B038C824(v122, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          sub_1B038C824(v243, type metadata accessor for CommandConnection.RecentErrors.Statistics);

          v261 = v123[1];
          v261(v285, v189);
          v261(v237, v189);
        }

        sub_1B038C824(v286, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        return (*(v284 + 8))(v240, v287);
      }
    }
  }
}

uint64_t sub_1B0C55630(uint64_t *a1, int a2, __int128 *a3, uint64_t a4)
{
  v8 = a3[3];
  v111 = a3[2];
  v112[0] = v8;
  *(v112 + 11) = *(a3 + 59);
  v9 = a3[1];
  v109 = *a3;
  v110 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v88 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v93 = &v88 - v17;
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v21 = &v88 - v20;
  v22 = *a1;
  v23 = (*(**a1 + 608))(v19);
  v25 = *(v22 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
  v113 = v23;
  v114 = v24;
  *&v119[11] = *(v112 + 11);
  v118 = v111;
  *v119 = v112[0];
  v116 = v109;
  v117 = v110;
  LODWORD(v92) = a2;
  v115 = v25 == a2;
  if (v25 != a2)
  {
    if (v23)
    {
      v47 = v23;
      LODWORD(v93) = v25;
      v91 = v24;
      v48 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      swift_beginAccess();
      sub_1B03B5C80(a4 + v48, v21, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
      v49 = sub_1B0E439A8();
      v92 = *(v49 - 8);
      result = (*(v92 + 48))(v21, 1, v49);
      if (result != 1)
      {
        swift_retain_n();
        sub_1B03B5C80(a3, &v104, &qword_1EB6E4580, &qword_1B0EC5720);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        swift_bridgeObjectRetain_n();

        v50 = sub_1B0E43988();
        v51 = sub_1B0E458C8();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v90 = v49;
          v53 = v52;
          v54 = swift_slowAlloc();
          *&v100[0] = v54;
          *v53 = 68158723;
          *(v53 + 4) = 2;
          *(v53 + 8) = 256;
          v55 = *(a4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

          *(v53 + 10) = v55;

          *(v53 + 11) = 2082;
          v56 = ConnectionID.debugDescription.getter(v93);
          v58 = sub_1B0399D64(v56, v57, v100);

          *(v53 + 13) = v58;
          *(v53 + 21) = 2160;
          *(v53 + 23) = 0x786F626C69616DLL;
          *(v53 + 31) = 2085;
          v104 = v47;
          LODWORD(v105) = v91;
          v59 = sub_1B0E44BA8();
          v61 = sub_1B0399D64(v59, v60, v100);

          *(v53 + 33) = v61;
          _os_log_impl(&dword_1B0389000, v50, v51, "[%.*hhx] %{public}s: '%{sensitive,mask.mailbox}s'", v53, 0x29u);
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v54, -1, -1);
          v62 = v53;
          v49 = v90;
          MEMORY[0x1B272C230](v62, -1, -1);

          sub_1B0398EFC(&v113, &qword_1EB6E5B58, &unk_1B0EDC5E8);
        }

        else
        {

          sub_1B0398EFC(&v113, &qword_1EB6E5B58, &unk_1B0EDC5E8);
        }

        return (*(v92 + 8))(v21, v49);
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_17:
    LODWORD(v93) = v25;
    v63 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_1B03B5C80(a4 + v63, v12, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
    v64 = sub_1B0E439A8();
    v65 = *(v64 - 8);
    result = (*(v65 + 48))(v12, 1, v64);
    if (result != 1)
    {
      sub_1B03B5C80(a3, v102, &qword_1EB6E4580, &qword_1B0EC5720);
      sub_1B0398EFC(&v113, &qword_1EB6E5B58, &unk_1B0EDC5E8);

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();

      v66 = sub_1B0E43988();
      v67 = sub_1B0E45908();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v92 = v64;
        v70 = v69;
        *&v102[0] = v69;
        *v68 = 68158210;
        *(v68 + 4) = 2;
        *(v68 + 8) = 256;
        *(v68 + 10) = *(a4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        *(v68 + 11) = 2082;
        v71 = ConnectionID.debugDescription.getter(v93);
        v73 = sub_1B0399D64(v71, v72, v102);

        *(v68 + 13) = v73;
        _os_log_impl(&dword_1B0389000, v66, v67, "[%.*hhx] %{public}s: -", v68, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v70);
        v74 = v70;
        v64 = v92;
        MEMORY[0x1B272C230](v74, -1, -1);
        MEMORY[0x1B272C230](v68, -1, -1);
      }

      else
      {
      }

      return (*(v65 + 8))(v12, v64);
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!*a3)
  {
    v75 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    v76 = a4;
    swift_beginAccess();
    sub_1B03B5C80(a4 + v75, v15, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
    v77 = sub_1B0E439A8();
    v78 = *(v77 - 8);
    result = (*(v78 + 48))(v15, 1, v77);
    if (result != 1)
    {

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();

      v79 = sub_1B0E43988();
      v80 = sub_1B0E45908();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v93 = v77;
        v82 = v81;
        v83 = swift_slowAlloc();
        *&v102[0] = v83;
        *v82 = 68158210;
        *(v82 + 4) = 2;
        *(v82 + 8) = 256;
        *(v82 + 10) = *(v76 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        *(v82 + 11) = 2082;
        v84 = ConnectionID.debugDescription.getter(v92);
        v86 = sub_1B0399D64(v84, v85, v102);

        *(v82 + 13) = v86;
        _os_log_impl(&dword_1B0389000, v79, v80, "[%.*hhx] %{public}s: - *", v82, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v83);
        MEMORY[0x1B272C230](v83, -1, -1);
        v87 = v82;
        v77 = v93;
        MEMORY[0x1B272C230](v87, -1, -1);
      }

      else
      {
      }

      sub_1B0398EFC(&v113, &qword_1EB6E5B58, &unk_1B0EDC5E8);
      return (*(v78 + 8))(v15, v77);
    }

LABEL_34:
    __break(1u);
    return result;
  }

  v104 = *a3;
  v106 = *(a3 + 24);
  v107 = *(a3 + 40);
  *v108 = *(a3 + 56);
  *&v108[15] = *(a3 + 71);
  v105 = *(a3 + 8);
  if (!v23)
  {
    goto LABEL_17;
  }

  v26 = v23;
  v91 = v24;
  v27 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  v28 = v93;
  sub_1B03B5C80(a4 + v27, v93, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v29 = sub_1B0E439A8();
  v89 = *(v29 - 8);
  v90 = v29;
  result = (*(v89 + 48))(v28, 1);
  if (result == 1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  swift_retain_n();
  sub_1B03B5C80(a3, v102, &qword_1EB6E4580, &qword_1B0EC5720);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B03B5C80(a3, v102, &qword_1EB6E4580, &qword_1B0EC5720);
  sub_1B03B5C80(a3, v102, &qword_1EB6E4580, &qword_1B0EC5720);
  sub_1B03B5C80(a3, v102, &qword_1EB6E4580, &qword_1B0EC5720);
  sub_1B03B5C80(a3, v102, &qword_1EB6E4580, &qword_1B0EC5720);
  sub_1B03B5C80(a3, v102, &qword_1EB6E4580, &qword_1B0EC5720);
  sub_1B03B5C80(a3, v102, &qword_1EB6E4580, &qword_1B0EC5720);
  sub_1B03B5C80(a3, v102, &qword_1EB6E4580, &qword_1B0EC5720);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B5C80(a3, v102, &qword_1EB6E4580, &qword_1B0EC5720);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  sub_1B0394868();
  sub_1B0394868();
  v102[2] = v111;
  v103[0] = v112[0];
  *(v103 + 11) = *(v112 + 11);
  v102[0] = v109;
  v102[1] = v110;
  sub_1B03B5C80(a3, v100, &qword_1EB6E4580, &qword_1B0EC5720);
  sub_1B0B37A20(v102, v100);
  v31 = sub_1B0E43988();
  v32 = sub_1B0E45908();

  v88 = v31;
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v98[0] = v34;
    *v33 = 68160003;
    *(v33 + 4) = 2;
    *(v33 + 8) = 256;
    v35 = *(a4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    *(v33 + 10) = v35;

    *(v33 + 11) = 2082;
    v36 = ConnectionID.debugDescription.getter(v92);
    v38 = sub_1B0399D64(v36, v37, v98);

    *(v33 + 13) = v38;
    *(v33 + 21) = 2160;
    *(v33 + 23) = 0x786F626C69616DLL;
    *(v33 + 31) = 2085;
    *&v100[0] = v26;
    DWORD2(v100[0]) = v91;
    v39 = sub_1B0E44BA8();
    v41 = sub_1B0399D64(v39, v40, v98);

    *(v33 + 33) = v41;
    *(v33 + 41) = 2048;
    sub_1B0398EFC(a3, &qword_1EB6E4580, &qword_1B0EC5720);
    *(v33 + 43) = v106;
    sub_1B0398EFC(a3, &qword_1EB6E4580, &qword_1B0EC5720);
    *(v33 + 51) = 1024;
    sub_1B0398EFC(a3, &qword_1EB6E4580, &qword_1B0EC5720);
    v42 = DWORD2(v106);
    if (BYTE12(v106))
    {
      v42 = 0;
    }

    *(v33 + 53) = v42;
    sub_1B0398EFC(a3, &qword_1EB6E4580, &qword_1B0EC5720);
    *(v33 + 57) = 1024;
    sub_1B0398EFC(a3, &qword_1EB6E4580, &qword_1B0EC5720);
    v43 = DWORD2(v107);
    if (BYTE12(v107))
    {
      v43 = 0;
    }

    *(v33 + 59) = v43;
    sub_1B0398EFC(a3, &qword_1EB6E4580, &qword_1B0EC5720);
    *(v33 + 63) = 1024;
    sub_1B0398EFC(a3, &qword_1EB6E4580, &qword_1B0EC5720);
    v44 = *v108;
    if (v108[4])
    {
      v44 = 0;
    }

    *(v33 + 65) = v44;
    sub_1B0398EFC(a3, &qword_1EB6E4580, &qword_1B0EC5720);
    *(v33 + 69) = 1024;
    sub_1B0398EFC(a3, &qword_1EB6E4580, &qword_1B0EC5720);
    *(v33 + 71) = v108[18] & 1;
    sub_1B0398EFC(a3, &qword_1EB6E4580, &qword_1B0EC5720);
    v45 = v32;
    v46 = v88;
    _os_log_impl(&dword_1B0389000, v88, v45, "[%.*hhx] %{public}s: '%{sensitive,mask.mailbox}s' * messageCount %ld, firstUnseenMessage %u, nextUID %u, uidValidity 0x%x, isReadOnly %{BOOL}d", v33, 0x4Bu);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v34, -1, -1);
    MEMORY[0x1B272C230](v33, -1, -1);

    sub_1B0398EFC(&v113, &qword_1EB6E5B58, &unk_1B0EDC5E8);
  }

  else
  {
    sub_1B0398EFC(a3, &qword_1EB6E4580, &qword_1B0EC5720);
    sub_1B0398EFC(a3, &qword_1EB6E4580, &qword_1B0EC5720);
    v94[2] = v111;
    v95[0] = v112[0];
    *(v95 + 11) = *(v112 + 11);
    v94[0] = v109;
    v94[1] = v110;
    sub_1B0B37A7C(v94);
    v96[2] = v111;
    v97[0] = v112[0];
    *(v97 + 11) = *(v112 + 11);
    v96[0] = v109;
    v96[1] = v110;
    sub_1B0B37A7C(v96);
    v98[2] = v111;
    v99[0] = v112[0];
    *(v99 + 11) = *(v112 + 11);
    v98[0] = v109;
    v98[1] = v110;
    sub_1B0B37A7C(v98);

    sub_1B0398EFC(a3, &qword_1EB6E4580, &qword_1B0EC5720);
    sub_1B0398EFC(a3, &qword_1EB6E4580, &qword_1B0EC5720);
    v100[2] = v111;
    v101[0] = v112[0];
    *(v101 + 11) = *(v112 + 11);
    v100[0] = v109;
    v100[1] = v110;
    sub_1B0B37A7C(v100);
    sub_1B0B37A7C(&v104);
    sub_1B0B37A7C(&v104);

    sub_1B0398EFC(&v113, &qword_1EB6E5B58, &unk_1B0EDC5E8);
  }

  return (*(v89 + 8))(v93, v90);
}

uint64_t sub_1B0C564DC()
{
  v1 = *v0;
  v2 = 0x656D614E676F6CLL;
  v3 = 0x697463656E6E6F63;
  v4 = 0x6F7272457473616CLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4449656E69676E65;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B0C56588@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0C5A5E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0C565B0(uint64_t a1)
{
  sub_1B0C5A3A4();

  return sub_1B0E46F28();
}

uint64_t sub_1B0C565EC(uint64_t a1)
{
  sub_1B0C5A3A4();

  return sub_1B0E46F38();
}

uint64_t sub_1B0C56628(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5B78, &qword_1B0EDC738);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0C5A3A4();
  sub_1B0E46D48();
  v13 = 0;
  sub_1B0E46928();
  if (!v2)
  {
    v12 = 1;
    sub_1B0E46928();
    v11 = *(v3 + 32);
    v10[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5B80, &qword_1B0EDC740);
    sub_1B0C5A3F8();
    sub_1B0E46958();
    v10[14] = 3;
    sub_1B0E468C8();
    v10[13] = 4;
    sub_1B0E46928();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1B0C56874(uint64_t *a1)
{
  v2 = *(type metadata accessor for CommandConnection.RecentErrors.Error(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1B0C57E68(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1B0C5691C(v5);
  *a1 = v3;
}

void sub_1B0C5691C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B0E469A8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for CommandConnection.RecentErrors.Error(0);
        v6 = sub_1B0E45278();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for CommandConnection.RecentErrors.Error(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1B0C56C9C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1B0C56A48(0, v2, 1, a1);
  }
}

void sub_1B0C56A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v26 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v26 - v14);
  v28 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v33 = v16;
    v27 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v31 = v18;
    v32 = a3;
    v29 = v21;
    v30 = v20;
    while (1)
    {
      sub_1B03C623C(v21, v15, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1B03C623C(v18, v11, type metadata accessor for CommandConnection.RecentErrors.Error);
      v22 = *v15;
      v23 = *v11;
      sub_1B038C824(v11, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1B038C824(v15, type metadata accessor for CommandConnection.RecentErrors.Error);
      if (v22 >= v23)
      {
LABEL_4:
        a3 = v32 + 1;
        v18 = v31 + v27;
        v20 = v30 - 1;
        v21 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v24 = v34;
      sub_1B038CBB4(v21, v34, type metadata accessor for CommandConnection.RecentErrors.Error);
      swift_arrayInitWithTakeFrontToBack();
      sub_1B038CBB4(v24, v18, type metadata accessor for CommandConnection.RecentErrors.Error);
      v18 += v19;
      v21 += v19;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1B0C56C9C(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v120 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v9 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v111 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v119 = &v103 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v122 = (&v103 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v121 = (&v103 - v16);
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v98 = a4;
    }

    else
    {
LABEL_129:
      v98 = sub_1B0B9443C(a4);
    }

    v123 = v98;
    a4 = *(v98 + 2);
    if (a4 >= 2)
    {
      v99 = v9;
      while (*a3)
      {
        v100 = *&v98[16 * a4];
        v101 = v98;
        v9 = *&v98[16 * a4 + 24];
        sub_1B0C575D4(*a3 + *(v99 + 72) * v100, *a3 + *(v99 + 72) * *&v98[16 * a4 + 16], *a3 + *(v99 + 72) * v9, v5);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v9 < v100)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_1B0B9443C(v101);
        }

        if ((a4 - 2) >= *(v101 + 2))
        {
          goto LABEL_123;
        }

        v102 = &v101[16 * a4];
        *v102 = v100;
        *(v102 + 1) = v9;
        v123 = v101;
        sub_1B0B943B0(a4 - 1);
        v98 = v123;
        a4 = *(v123 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  v109 = a3;
  v107 = a4;
  v105 = v9;
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v112 = v19;
    if (v21 >= v17)
    {
      v17 = v21;
    }

    else
    {
      v22 = *a3;
      v23 = *(v9 + 72);
      v5 = v22 + v23 * v21;
      v24 = v121;
      sub_1B03C623C(v5, v121, type metadata accessor for CommandConnection.RecentErrors.Error);
      v25 = v122;
      sub_1B03C623C(v22 + v23 * v20, v122, type metadata accessor for CommandConnection.RecentErrors.Error);
      v26 = *v24;
      v114 = *v25;
      v115 = v26;
      sub_1B038C824(v25, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1B038C824(v24, type metadata accessor for CommandConnection.RecentErrors.Error);
      v106 = v20;
      v27 = v20 + 2;
      v116 = v23;
      v117 = v17;
      v28 = v22 + v23 * v27;
      while (v17 != v27)
      {
        LODWORD(v118) = v115 < v114;
        v29 = v121;
        sub_1B03C623C(v28, v121, type metadata accessor for CommandConnection.RecentErrors.Error);
        v30 = v6;
        v31 = v122;
        sub_1B03C623C(v5, v122, type metadata accessor for CommandConnection.RecentErrors.Error);
        v32 = *v29;
        v33 = *v31;
        v34 = v31;
        v6 = v30;
        sub_1B038C824(v34, type metadata accessor for CommandConnection.RecentErrors.Error);
        v17 = v117;
        sub_1B038C824(v29, type metadata accessor for CommandConnection.RecentErrors.Error);
        ++v27;
        v28 += v116;
        v5 += v116;
        if (((v118 ^ (v32 >= v33)) & 1) == 0)
        {
          v17 = v27 - 1;
          break;
        }
      }

      a3 = v109;
      v9 = v105;
      v20 = v106;
      a4 = v107;
      if (v115 < v114)
      {
        if (v17 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v17)
        {
          v35 = v116 * (v17 - 1);
          v36 = v17 * v116;
          v117 = v17;
          v37 = v17;
          v38 = v106;
          v39 = v106 * v116;
          do
          {
            if (v38 != --v37)
            {
              v40 = *a3;
              if (!v40)
              {
                goto LABEL_132;
              }

              v5 = v40 + v39;
              sub_1B038CBB4(v40 + v39, v111, type metadata accessor for CommandConnection.RecentErrors.Error);
              if (v39 < v35 || v5 >= v40 + v36)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v39 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1B038CBB4(v111, v40 + v35, type metadata accessor for CommandConnection.RecentErrors.Error);
              a3 = v109;
            }

            ++v38;
            v35 -= v116;
            v36 -= v116;
            v39 += v116;
          }

          while (v38 < v37);
          v9 = v105;
          v20 = v106;
          a4 = v107;
          v17 = v117;
        }
      }
    }

    v41 = a3[1];
    if (v17 < v41)
    {
      if (__OFSUB__(v17, v20))
      {
        goto LABEL_125;
      }

      if (v17 - v20 < a4)
      {
        if (__OFADD__(v20, a4))
        {
          goto LABEL_127;
        }

        if (v20 + a4 >= v41)
        {
          v42 = a3[1];
        }

        else
        {
          v42 = v20 + a4;
        }

        if (v42 < v20)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v17 != v42)
        {
          break;
        }
      }
    }

    v43 = v17;
    if (v17 < v20)
    {
      goto LABEL_124;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v19 = v112;
    }

    else
    {
      v19 = sub_1B0AFF300(0, *(v112 + 2) + 1, 1, v112);
    }

    a4 = *(v19 + 2);
    v44 = *(v19 + 3);
    v5 = a4 + 1;
    if (a4 >= v44 >> 1)
    {
      v19 = sub_1B0AFF300((v44 > 1), a4 + 1, 1, v19);
    }

    *(v19 + 2) = v5;
    v45 = &v19[16 * a4];
    *(v45 + 4) = v20;
    *(v45 + 5) = v43;
    v46 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    v113 = v43;
    if (a4)
    {
      while (1)
      {
        v47 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v48 = *(v19 + 4);
          v49 = *(v19 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_52:
          if (v51)
          {
            goto LABEL_113;
          }

          v64 = &v19[16 * v5];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_116;
          }

          v70 = &v19[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_120;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v74 = &v19[16 * v5];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_66:
        if (v69)
        {
          goto LABEL_115;
        }

        v77 = &v19[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_118;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v47 - 1;
        if (v47 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v85 = v19;
        v86 = *&v19[16 * a4 + 32];
        v5 = *&v19[16 * v47 + 40];
        sub_1B0C575D4(*a3 + *(v9 + 72) * v86, *a3 + *(v9 + 72) * *&v19[16 * v47 + 32], *a3 + *(v9 + 72) * v5, v46);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v86)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_1B0B9443C(v85);
        }

        if (a4 >= *(v85 + 2))
        {
          goto LABEL_110;
        }

        v87 = &v85[16 * a4];
        *(v87 + 4) = v86;
        *(v87 + 5) = v5;
        v123 = v85;
        sub_1B0B943B0(v47);
        v19 = v123;
        v5 = *(v123 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v19[16 * v5 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_111;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_112;
      }

      v59 = &v19[16 * v5];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_114;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_117;
      }

      if (v63 >= v55)
      {
        v81 = &v19[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_121;
        }

        if (v50 < v84)
        {
          v47 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v17 = a3[1];
    v18 = v113;
    a4 = v107;
    if (v113 >= v17)
    {
      goto LABEL_95;
    }
  }

  v104 = v6;
  v88 = *a3;
  v89 = *(v9 + 72);
  v90 = *a3 + v89 * (v17 - 1);
  v91 = -v89;
  v106 = v20;
  v92 = v20 - v17;
  v110 = v89;
  v118 = v88;
  v5 = v88 + v17 * v89;
  v113 = v42;
LABEL_85:
  v116 = v90;
  v117 = v17;
  v114 = v5;
  v115 = v92;
  v93 = v90;
  while (1)
  {
    v94 = v121;
    sub_1B03C623C(v5, v121, type metadata accessor for CommandConnection.RecentErrors.Error);
    v95 = v122;
    sub_1B03C623C(v93, v122, type metadata accessor for CommandConnection.RecentErrors.Error);
    a4 = *v94;
    v96 = *v95;
    sub_1B038C824(v95, type metadata accessor for CommandConnection.RecentErrors.Error);
    sub_1B038C824(v94, type metadata accessor for CommandConnection.RecentErrors.Error);
    if (a4 >= v96)
    {
LABEL_84:
      v17 = v117 + 1;
      v90 = v116 + v110;
      v92 = v115 - 1;
      v5 = v114 + v110;
      v43 = v113;
      if (v117 + 1 != v113)
      {
        goto LABEL_85;
      }

      v6 = v104;
      v9 = v105;
      a3 = v109;
      v20 = v106;
      if (v113 < v106)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!v118)
    {
      break;
    }

    a4 = v119;
    sub_1B038CBB4(v5, v119, type metadata accessor for CommandConnection.RecentErrors.Error);
    swift_arrayInitWithTakeFrontToBack();
    sub_1B038CBB4(a4, v93, type metadata accessor for CommandConnection.RecentErrors.Error);
    v93 += v91;
    v5 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
}

void sub_1B0C575D4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v45 = (&v36 - v10);
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_60;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v14 = (a2 - a1) / v12;
  v49 = a1;
  v48 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v16;
    if (v16 >= 1)
    {
      v25 = -v12;
      v26 = v24;
      v40 = a1;
      v41 = a4;
      v39 = v25;
      do
      {
        v37 = v24;
        v27 = a2;
        v28 = a2 + v25;
        v42 = v27;
        v43 = v28;
        while (1)
        {
          if (v27 <= a1)
          {
            v49 = v27;
            v47 = v37;
            goto LABEL_58;
          }

          v29 = a3;
          v38 = v24;
          a3 += v25;
          v30 = v26 + v25;
          v31 = v26 + v25;
          v32 = v45;
          sub_1B03C623C(v31, v45, type metadata accessor for CommandConnection.RecentErrors.Error);
          v33 = v46;
          sub_1B03C623C(v28, v46, type metadata accessor for CommandConnection.RecentErrors.Error);
          v34 = *v32;
          v35 = *v33;
          sub_1B038C824(v33, type metadata accessor for CommandConnection.RecentErrors.Error);
          sub_1B038C824(v32, type metadata accessor for CommandConnection.RecentErrors.Error);
          if (v34 < v35)
          {
            break;
          }

          v24 = v30;
          if (v29 < v26 || a3 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v43;
            v25 = v39;
            a1 = v40;
          }

          else
          {
            v28 = v43;
            v25 = v39;
            a1 = v40;
            if (v29 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v30;
          v27 = v42;
          if (v30 <= v41)
          {
            a2 = v42;
            goto LABEL_57;
          }
        }

        if (v29 < v42 || a3 >= v42)
        {
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v39;
          a1 = v40;
          v24 = v38;
        }

        else
        {
          a2 = v43;
          v25 = v39;
          a1 = v40;
          v24 = v38;
          if (v29 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v41);
    }

LABEL_57:
    v49 = a2;
    v47 = v24;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43 = a4 + v15;
    v47 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      v42 = a3;
      do
      {
        v18 = v45;
        sub_1B03C623C(a2, v45, type metadata accessor for CommandConnection.RecentErrors.Error);
        v19 = a2;
        v20 = v46;
        sub_1B03C623C(a4, v46, type metadata accessor for CommandConnection.RecentErrors.Error);
        v21 = *v18;
        v22 = *v20;
        sub_1B038C824(v20, type metadata accessor for CommandConnection.RecentErrors.Error);
        sub_1B038C824(v18, type metadata accessor for CommandConnection.RecentErrors.Error);
        if (v21 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            v23 = v42;
            a2 = v19;
          }

          else
          {
            v23 = v42;
            a2 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = a4 + v12;
          a4 += v12;
        }

        else
        {
          a2 = v19 + v12;
          if (a1 < v19 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v23 = v42;
          }

          else
          {
            v23 = v42;
            if (a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 += v12;
        v49 = a1;
      }

      while (a4 < v43 && a2 < v23);
    }
  }

LABEL_58:
  sub_1B0C57AD0(&v49, &v48, &v47);
}

uint64_t sub_1B0C57AD0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_1B0C57BB4(void *a1, int64_t a2, char a3)
{
  result = sub_1B03C4C6C(a1, a2, a3, *v3, &qword_1EB6E5710, &unk_1B0ED5D10, type metadata accessor for CommandConnection.RecentErrors.Error);
  *v3 = result;
  return result;
}

char *sub_1B0C57BF8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0C57C38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0C57C18(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0C57D44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0C57C38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AB8, "<z\b");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0C57D44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5B68, &qword_1B0EDC608);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 216);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[216 * v8])
    {
      memmove(v12, v13, 216 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1B0C57EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a1;
  v58 = a4;
  v55 = type metadata accessor for ConnectionConfiguration(0);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v51 - v7;
  v54 = type metadata accessor for ConnectionConfiguration(0);
  MEMORY[0x1EEE9AC00](v54);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextConnectionID;
  v10 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextConnectionID);
  v11 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v52 = v11;
LABEL_2:
  v12 = *&v11[a2];
  if (v12 >> 62)
  {
    v13 = sub_1B0E46138();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!v13)
  {
LABEL_17:

    *(a2 + v53) = v10 + 1;
    v17 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);
    sub_1B03C623C(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_configuration, v9, type metadata accessor for ConnectionConfiguration);
    v18 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionTraits);
    v19 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
    v20 = v9;
    v21 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_dataTransferReportAccumulator);
    v22 = v54;
    v23 = v20;
    v24 = v20[*(v54 + 28)];
    LODWORD(v53) = v17;
    v52 = v19;
    if (v24 >> 6)
    {
      if (v24 >> 6 == 1)
      {
        v25 = v24 & 0x3F | 0x40;
      }

      else
      {
        v25 = 0x80;
      }
    }

    else
    {
      v25 = v24;
    }

    v26 = sub_1B0E43BC8();
    v27 = v59;
    (*(*(v26 - 8) + 16))(v59, v23, v26);
    v28 = *(v23 + v22[5]);
    v29 = *(v23 + v22[6]);
    v30 = (v23 + v22[8]);
    v31 = *v30;
    v51 = v30[1];
    v32 = v51;
    v33 = (v23 + v22[10]);
    v34 = *v33;
    v35 = v33[1];
    v36 = v55;
    v37 = v56;
    v38 = (v27 + v55[8]);
    v39 = (v27 + v55[9]);
    v40 = v55[6];
    *(v27 + v55[5]) = v28;
    *(v27 + v40) = v29;
    *(v27 + v36[7]) = v25;
    *v38 = v31;
    v38[1] = v32;
    *v39 = v34;
    v39[1] = v35;
    sub_1B03C623C(v27, v37, type metadata accessor for ConnectionConfiguration);
    type metadata accessor for CommandConnection(0);
    v55 = swift_allocObject();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v41 = v57;
    swift_unknownObjectRetain();
    swift_retain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v42 = v52;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    CommandConnection.init(id:engineID:configuration:connectionTraits:makeCredentials:getPushInformation:finishPushRegistration:queue:delegate:reportDataTransfer:test_overrideIdleRefreshInterval:)(v10, v53, v37, v18, sub_1B044AFAC, a2, sub_1B0C5A7B0, a2, v43, v44, v45, v46, v47, v48, v49, v50, sub_1B0C5A7AC, a2, v42, v41, v58, sub_1B041B1D0, v21, 0.0, 1);
    sub_1B038C824(v23, type metadata accessor for ConnectionConfiguration);
    sub_1B038C824(v27, type metadata accessor for ConnectionConfiguration);
    return;
  }

  v14 = 0;
  while ((v12 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1B2728410](v14, v12);
    if (__OFADD__(v14++, 1))
    {
      goto LABEL_25;
    }

    LODWORD(v51) = *(v15 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
    swift_unknownObjectRelease();
    if (v51 == v10)
    {
LABEL_15:

      v10 = (v10 + 1);
      v11 = v52;
      goto LABEL_2;
    }

LABEL_11:
    if (v14 == v13)
    {
      goto LABEL_17;
    }
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    if (*(*(v12 + 32 + 8 * v14) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) == v10)
    {
      goto LABEL_15;
    }

    ++v14;
    goto LABEL_11;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

char *sub_1B0C58360(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v88 = a6;
  v81 = a5;
  v82 = a4;
  v80 = a3;
  v91 = a2;
  v89 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v78[-v8];
  v84 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v84);
  v85 = &v78[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v83 = &v78[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v78[-v14];
  v16 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v92 = v16;
  v17 = *(v6 + v16);
  if (v17 >> 62)
  {
    goto LABEL_32;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = 0;
  while ((v17 & 0xC000000000000001) == 0)
  {
    if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      v18 = sub_1B0E46138();
      goto LABEL_3;
    }

    v20 = *(v17 + 8 * v19 + 32);

    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_13;
    }

LABEL_8:
    (*(*v20 + 304))();
    v22 = ConnectionState.hasMailboxSelectedOrSelectionIsInProgress(_:)(v89, v91);
    sub_1B038C824(v15, type metadata accessor for ConnectionState);
    if (v22)
    {

      v23 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      v33 = v90;
      swift_beginAccess();
      sub_1B03B5C80(v33 + v23, v9, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
      v15 = sub_1B0E439A8();
      v34 = *(v15 - 1);
      v35 = (*(v34 + 48))(v9, 1, v15);
      if (v35 != 1)
      {

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v36 = v89;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

        v37 = sub_1B0E43988();
        v38 = sub_1B0E458C8();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = v9;
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v95 = v41;
          *v40 = 68158723;
          *(v40 + 4) = 2;
          *(v40 + 8) = 256;
          *(v40 + 10) = *(v33 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

          *(v40 + 11) = 2160;
          *(v40 + 13) = 0x786F626C69616DLL;
          *(v40 + 21) = 2085;
          v93 = v36;
          v94 = v91;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v42 = sub_1B0E44BA8();
          v44 = sub_1B0399D64(v42, v43, &v95);

          *(v40 + 23) = v44;
          *(v40 + 31) = 2082;
          v45 = ConnectionID.debugDescription.getter(*(v20 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id));
          v47 = sub_1B0399D64(v45, v46, &v95);

          *(v40 + 33) = v47;
          _os_log_impl(&dword_1B0389000, v37, v38, "[%.*hhx] Mailbox '%{sensitive,mask.mailbox}s' is selected (or in progress) on connection %{public}s.", v40, 0x29u);
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v41, -1, -1);
          v48 = v40;
          v9 = v39;
          MEMORY[0x1B272C230](v48, -1, -1);
        }

        else
        {
        }

        (*(v34 + 8))(v9, v15);
        return v20;
      }

      goto LABEL_35;
    }

    ++v19;
    if (v21 == v18)
    {
      goto LABEL_14;
    }
  }

  v20 = MEMORY[0x1B2728410](v19, v17);
  v21 = v19 + 1;
  if (!__OFADD__(v19, 1))
  {
    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
LABEL_14:

  v23 = v90;
  v24 = *(v90 + v92);
  if (v24 >> 62)
  {
    v35 = sub_1B0E46138();
    if ((v35 & 0x8000000000000000) == 0)
    {
      goto LABEL_36;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v17 = v35;
    v25 = v89;
    if (v35)
    {
      goto LABEL_16;
    }

LABEL_37:
    v49 = *(v23 + v92);
    if (v49 >> 62)
    {
      goto LABEL_89;
    }

    v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (2)
    {
      v51 = MEMORY[0x1E69E7CC0];
      if (v50)
      {
        v96 = MEMORY[0x1E69E7CC0];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        result = sub_1B04543AC(0, v50 & ~(v50 >> 63), 0);
        if (v50 < 0)
        {
          __break(1u);
          return result;
        }

        v53 = 0;
        v51 = v96;
        do
        {
          if ((v49 & 0xC000000000000001) != 0)
          {
            v54 = *(MEMORY[0x1B2728410](v53, v49) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
            swift_unknownObjectRelease();
          }

          else
          {
            v54 = *(*(v49 + 8 * v53 + 32) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
          }

          v96 = v51;
          v56 = *(v51 + 16);
          v55 = *(v51 + 24);
          if (v56 >= v55 >> 1)
          {
            sub_1B04543AC((v55 > 1), v56 + 1, 1);
            v51 = v96;
          }

          ++v53;
          *(v51 + 16) = v56 + 1;
          *(v51 + 4 * v56 + 32) = v54;
        }

        while (v50 != v53);
      }

      v57 = MailboxesSelectionUsage.sortedIdleConnections(_:)(v51, v88);

      v58 = v57;
      v88 = *(v57 + 2);
      if (!v88)
      {
LABEL_81:

        sub_1B0C4F144(v80, v82);
        return 0;
      }

      v59 = 0;
      v87 = v57 + 32;
      v86 = v57;
LABEL_53:
      if (v59 >= *(v58 + 2))
      {
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        v50 = sub_1B0E46138();
        continue;
      }

      break;
    }

    v60 = *&v87[4 * v59];
    v61 = *(v90 + v92);
    if (v61 >> 62)
    {
      v49 = sub_1B0E46138();
    }

    else
    {
      v49 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v59;
    v62 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v63 = -v49;
    v64 = 4;
    while (1)
    {
      if (v63 + v64 == 4)
      {

        goto LABEL_52;
      }

      v49 = v64 - 4;
      if ((v61 & 0xC000000000000001) != 0)
      {
        v79 = *(MEMORY[0x1B2728410](v64 - 4, v61) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
        v62 = swift_unknownObjectRelease();
        if (v79 == v60)
        {
LABEL_65:

          v65 = v90;
          v66 = v92;
          swift_beginAccess();
          v67 = *(v65 + v66);
          if ((v67 & 0xC000000000000001) != 0)
          {
            v68 = MEMORY[0x1B2728410](v64 - 4);
          }

          else
          {
            if (v49 >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_87;
            }

            v68 = *(v67 + 8 * v64);
          }

          v69 = swift_endAccess();
          v70 = v83;
          (*(*v68 + 304))(v69);

          sub_1B038CBB4(v70, v85, type metadata accessor for ConnectionState);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload > 2)
          {
            if ((EnumCaseMultiPayload - 4) < 2)
            {
              goto LABEL_52;
            }

LABEL_77:
            sub_1B038C824(v85, type metadata accessor for ConnectionState);
            goto LABEL_52;
          }

          if (EnumCaseMultiPayload < 2)
          {
            goto LABEL_77;
          }

          sub_1B038C824(v85, type metadata accessor for ConnectionState);
          v72 = v90;
          v73 = v92;
          swift_beginAccess();
          v74 = *(v72 + v73);
          if ((v74 & 0xC000000000000001) != 0)
          {
            v75 = MEMORY[0x1B2728410](v64 - 4);
          }

          else
          {
            if (v49 >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_88;
            }

            v75 = *(v74 + 8 * v64);
          }

          v76 = swift_endAccess();
          (*(*v75 + 304))(v76);

          v77 = ConnectionState.anyMailboxSelectionIsInProgress.getter();
          sub_1B038C824(v15, type metadata accessor for ConnectionState);
          if ((v77 & 1) == 0)
          {
            v62 = sub_1B0C4FDEC(v64 - 4, v90, v89, v91);
            if (v62)
            {
              goto LABEL_85;
            }
          }

LABEL_52:
          v58 = v86;
          if (v59 == v88)
          {
            goto LABEL_81;
          }

          goto LABEL_53;
        }
      }

      else
      {
        if (v49 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          v20 = v62;

          return v20;
        }

        if (*(*(v61 + 8 * v64) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) == v60)
        {
          goto LABEL_65;
        }
      }

      ++v64;
      if (__OFADD__(v49, 1))
      {
        goto LABEL_84;
      }
    }
  }

  v17 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v25 = v89;
  if (!v17)
  {
    goto LABEL_37;
  }

LABEL_16:
  v26 = 0;
  while (1)
  {
    v27 = v92;
    swift_beginAccess();
    v28 = *(v23 + v27);
    if ((v28 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x1B2728410](v26);
    }

    else
    {
      if (v26 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v29 = *(v28 + 8 * v26 + 32);
    }

    v30 = swift_endAccess();
    (*(*v29 + 304))(v30);

    v31 = ConnectionState.isReadyForCommandsWithoutMailboxSelection.getter();
    sub_1B038C824(v15, type metadata accessor for ConnectionState);
    if (v31)
    {
      v32 = sub_1B0C4FDEC(v26, v23, v25, v91);
      if (v32)
      {
        return v32;
      }
    }

    if (v17 == ++v26)
    {
      goto LABEL_37;
    }
  }
}

uint64_t sub_1B0C58E34(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v44 = a7;
  v45 = a5;
  v47 = a4;
  v14 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v40 - v18;
  sub_1B0C4FB40();
  v20 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  v46 = v9;
  if ((a2 & 0x100000000) == 0)
  {
    swift_beginAccess();
    v16 = v8;
    v8 = *(v8 + v20);
    v21 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v8 >> 62)
    {
      goto LABEL_38;
    }

    v22 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_4;
  }

  swift_beginAccess();
  v19 = *(v8 + v20);
  v42 = a8;
  v43 = v8;
  v41 = a6;
  v21 = v19 & 0xFFFFFFFFFFFFFF8;
  if (v19 >> 62)
  {
    a2 = sub_1B0E46138();
  }

  else
  {
    a2 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v23 = 0;
  while (1)
  {
    if (a2 == v23)
    {

      sub_1B0C58360(a3, v47, v45, v41, v44 & 1, v42);

      return 0;
    }

    if ((v19 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x1B2728410](v23, v19);
      v25 = v26;
      goto LABEL_21;
    }

    if (v23 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v25 = *(v19 + 8 * v23 + 32);

LABEL_21:
    (*(*v25 + 304))(v26);
    v8 = ConnectionState.hasMailboxSelected(_:)(a3, v47);

    sub_1B038C824(v16, type metadata accessor for ConnectionState);
    if (v8)
    {
LABEL_30:

      return v23;
    }

    v24 = __OFADD__(v23++, 1);
    if (v24)
    {
      goto LABEL_37;
    }
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  v22 = sub_1B0E46138();
LABEL_4:
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v23 = 0;
  while (v22 != v23)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v47 = *(MEMORY[0x1B2728410](v23, v8) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
      swift_unknownObjectRelease();
      if (v47 == a2)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (v23 >= *(v21 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (*(*(v8 + 8 * v23 + 32) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) == a2)
      {
        goto LABEL_30;
      }
    }

    v24 = __OFADD__(v23++, 1);
    if (v24)
    {
      goto LABEL_36;
    }
  }

  v27 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  v28 = v16;
  swift_beginAccess();
  sub_1B03B5C80(&v16[v27], v19, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v29 = sub_1B0E439A8();
  v30 = *(v29 - 8);
  result = (*(v30 + 48))(v19, 1, v29);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v32 = sub_1B0E43988();
    v33 = sub_1B0E458E8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = v28;
      v35 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v48 = v23;
      *v35 = 68158210;
      *(v35 + 4) = 2;
      *(v35 + 8) = 256;
      *(v35 + 10) = v34[OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID];

      *(v35 + 11) = 2082;
      v36 = ConnectionID.debugDescription.getter(a2);
      v38 = sub_1B0399D64(v36, v37, &v48);

      *(v35 + 13) = v38;
      _os_log_impl(&dword_1B0389000, v32, v33, "[%.*hhx] Attempt to send on connection %{public}s -- but it does not exist.", v35, 0x15u);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1B272C230](v23, -1, -1);
      MEMORY[0x1B272C230](v35, -1, -1);
    }

    else
    {
    }

    (*(v30 + 8))(v19, v29);
    sub_1B0C5A084();
    swift_allocError();
    *v39 = 0;
    swift_willThrow();
    return v23;
  }

  return result;
}

void sub_1B0C59370(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v82 = &v75[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v75[-v18];
  v20 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v75[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a1 & 0x100000000) != 0)
  {
    v56 = sub_1B0C58360(a2, a3, a4, a5, a6 & 1, a7);
    if (v56)
    {
      (*(*v56 + 576))(v56);
    }

    return;
  }

  v77 = v22;
  v78 = a3;
  v23 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v80 = a2;
  v81 = v23;
  v24 = *(v7 + v23);
  v79 = v19;
  if (v24 >> 62)
  {
    goto LABEL_37;
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v26 = 4;
  while (1)
  {
    if (v26 - v25 == 4)
    {

      v57 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      swift_beginAccess();
      v58 = v82;
      sub_1B03B5C80(v7 + v57, v82, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
      v59 = sub_1B0E439A8();
      v60 = *(v59 - 8);
      if ((*(v60 + 48))(v58, 1, v59) == 1)
      {
        goto LABEL_42;
      }

      v61 = v7;

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v62 = sub_1B0E43988();
      v63 = sub_1B0E458E8();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v83 = v65;
        *v64 = 68158210;
        *(v64 + 4) = 2;
        *(v64 + 8) = 256;
        *(v64 + 10) = *(v61 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        *(v64 + 11) = 2082;
        v66 = ConnectionID.debugDescription.getter(a1);
        v68 = sub_1B0399D64(v66, v67, &v83);

        *(v64 + 13) = v68;
        _os_log_impl(&dword_1B0389000, v62, v63, "[%.*hhx] Attempt to send on connection %{public}s -- but it does not exist.", v64, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x1B272C230](v65, -1, -1);
        MEMORY[0x1B272C230](v64, -1, -1);
      }

      else
      {
      }

      (*(v60 + 8))(v58, v59);
      v69 = 0;
      goto LABEL_29;
    }

    v27 = v26 - 4;
    if ((v24 & 0xC000000000000001) == 0)
    {
      if (v27 < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        if (*(*(v24 + 8 * v26) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) == a1)
        {
          break;
        }

        goto LABEL_9;
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      v25 = sub_1B0E46138();
      goto LABEL_4;
    }

    v76 = *(MEMORY[0x1B2728410](v26 - 4, v24) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
    swift_unknownObjectRelease();
    if (v76 == a1)
    {
      break;
    }

LABEL_9:
    ++v26;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_36;
    }
  }

  v28 = v81;
  swift_beginAccess();
  v29 = *(v7 + v28);
  v31 = v79;
  v30 = v80;
  v32 = v78;
  if ((v29 & 0xC000000000000001) != 0)
  {
    v33 = v7;
    v34 = MEMORY[0x1B2728410](v26 - 4);
LABEL_16:
    v35 = swift_endAccess();
    v36 = v77;
    (*(*v34 + 304))(v35);

    v37 = ConnectionState.hasMailboxSelectedOrSelectionIsInProgress(_:)(v30, v32);
    sub_1B038C824(v36, type metadata accessor for ConnectionState);
    if (v37)
    {
      v38 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      swift_beginAccess();
      sub_1B03B5C80(v33 + v38, v31, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
      v39 = sub_1B0E439A8();
      v82 = *(v39 - 8);
      v40 = *(v82 + 6);
      v77 = v39;
      if (v40(v31, 1) == 1)
      {
LABEL_43:
        __break(1u);
        return;
      }

      v41 = v33;

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v42 = v80;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v43 = sub_1B0E43988();
      v44 = sub_1B0E458C8();

      v76 = v44;
      if (os_log_type_enabled(v43, v44))
      {
        v45 = v43;
        v46 = v32;
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v85 = v48;
        *v47 = 68158723;
        *(v47 + 4) = 2;
        *(v47 + 8) = 256;
        *(v47 + 10) = *(v41 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        *(v47 + 11) = 2160;
        *(v47 + 13) = 0x786F626C69616DLL;
        *(v47 + 21) = 2085;
        v83 = v42;
        v84 = v46;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v49 = sub_1B0E44BA8();
        v51 = sub_1B0399D64(v49, v50, &v85);

        *(v47 + 23) = v51;
        *(v47 + 31) = 2082;
        v52 = ConnectionID.debugDescription.getter(a1);
        v54 = sub_1B0399D64(v52, v53, &v85);

        *(v47 + 33) = v54;
        v55 = v45;
        _os_log_impl(&dword_1B0389000, v45, v76, "[%.*hhx] Created mailbox affinity for '%{sensitive,mask.mailbox}s' on connection %{public}s with mailbox already selected.", v47, 0x29u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v48, -1, -1);
        v31 = v79;
        MEMORY[0x1B272C230](v47, -1, -1);
      }

      else
      {
      }

      (*(v82 + 1))(v31, v77);
      v71 = v81;
      swift_beginAccess();
      v72 = *(v41 + v71);
      if ((v72 & 0xC000000000000001) != 0)
      {
        goto LABEL_40;
      }

      if (v27 < *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v73 = *(v72 + 8 * v26);

        goto LABEL_34;
      }

      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v69 = 1;
LABEL_29:
    sub_1B0C5A084();
    swift_allocError();
    *v70 = v69;
    swift_willThrow();
    return;
  }

  if (v27 < *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v33 = v7;
    v34 = *(v29 + 8 * v26);

    goto LABEL_16;
  }

  __break(1u);
LABEL_40:
  v73 = MEMORY[0x1B2728410](v26 - 4);
LABEL_34:
  v74 = swift_endAccess();
  (*(*v73 + 576))(v74);
}

void sub_1B0C59C00(uint64_t a1, NSObject *a2, uint64_t a3, char a4, uint64_t a5)
{
  v37 = a5;
  v10 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v35[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35[-v14];
  v16 = type metadata accessor for Command(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B03C623C(a1, v18, type metadata accessor for Command);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1B038CBB4(v18, v15, type metadata accessor for ClientCommand);
      sub_1B0C4E284(v15, a2, a3, a4 & 1);
      sub_1B038C824(v15, type metadata accessor for ClientCommand);
      return;
    }

    v24 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3E68, &unk_1B0EDC5C0) + 48));
    v25 = *v24;
    v26 = *(v24 + 4);
    v27 = *(v24 + 1);
    v36 = v24[4];
    sub_1B038CBB4(v18, v12, type metadata accessor for ClientCommand);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v38 = v26;
    v28 = v39;
    v29 = sub_1B0C58E34(v12, v25 | (v26 << 32), v27, v36, a2, a3, a4 & 1, v37);
    v31 = v30;

    if (v28)
    {

      sub_1B038C824(v12, type metadata accessor for ClientCommand);
      return;
    }

    if (v31)
    {

LABEL_18:
      sub_1B038C824(v12, type metadata accessor for ClientCommand);
      return;
    }

    v32 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    swift_beginAccess();
    v33 = *(v5 + v32);
    if ((v33 & 0xC000000000000001) == 0)
    {
      if ((v29 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v29 < *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v34 = *(v33 + 8 * v29 + 32);

LABEL_17:
        swift_endAccess();
        (*(*v34 + 560))(v12);

        goto LABEL_18;
      }

      __break(1u);
      return;
    }

    v34 = MEMORY[0x1B2728410](v29);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v20 = *v18;
    v21 = *(v18 + 4);
    v22 = *(v18 + 1);
    v23 = v18[4];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v38 = v21;
    sub_1B0C59370(v20 | (v21 << 32), v22, v23, a2, a3, a4 & 1, v37);
    swift_bridgeObjectRelease_n();
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_1B0C4EAFC(*v18, v18[2]);
  }

  else
  {
    sub_1B0C4F144(a2, a3);
  }
}

unint64_t sub_1B0C5A084()
{
  result = qword_1EB6E5B40;
  if (!qword_1EB6E5B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5B40);
  }

  return result;
}

unint64_t sub_1B0C5A194()
{
  result = qword_1EB6DB9A0;
  if (!qword_1EB6DB9A0)
  {
    sub_1B0E441D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB9A0);
  }

  return result;
}

unint64_t sub_1B0C5A240()
{
  result = qword_1EB6DC2F0;
  if (!qword_1EB6DC2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC2F0);
  }

  return result;
}

uint64_t sub_1B0C5A294(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1B0C5A2DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0C5A350()
{
  result = qword_1EB6E5B70;
  if (!qword_1EB6E5B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5B70);
  }

  return result;
}

unint64_t sub_1B0C5A3A4()
{
  result = qword_1EB6DC308;
  if (!qword_1EB6DC308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC308);
  }

  return result;
}

unint64_t sub_1B0C5A3F8()
{
  result = qword_1EB6DB458;
  if (!qword_1EB6DB458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E5B80, &qword_1B0EDC740);
    sub_1B0C5A47C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB458);
  }

  return result;
}

unint64_t sub_1B0C5A47C()
{
  result = qword_1EB6DD058;
  if (!qword_1EB6DD058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD058);
  }

  return result;
}

unint64_t sub_1B0C5A4E4()
{
  result = qword_1EB6E5B88;
  if (!qword_1EB6E5B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5B88);
  }

  return result;
}

unint64_t sub_1B0C5A53C()
{
  result = qword_1EB6DC2F8;
  if (!qword_1EB6DC2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC2F8);
  }

  return result;
}

unint64_t sub_1B0C5A594()
{
  result = qword_1EB6DC300;
  if (!qword_1EB6DC300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC300);
  }

  return result;
}

uint64_t sub_1B0C5A5E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E676F6CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656E69676E65 && a2 == 0xE800000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEB00000000736E6FLL || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F7272457473616CLL && a2 == 0xE900000000000072 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B0F2DB20 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B0E46A78();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1B0C5A7B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0C5A7FC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_1B0C5A84C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E59D0, &unk_1B0ED9EC0);
    v2 = sub_1B0E466A8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1B03D2CA8(*(a1 + 56) + 40 * v12, v38);
    *&v37 = v15;
    *(&v37 + 1) = v14;
    *&v34[40] = v37;
    v35[0] = v38[0];
    v35[1] = v38[1];
    v36 = v39;
    v25 = v15;
    v26 = v14;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_dynamicCast();
    sub_1B0450C74(v35, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5B98, &qword_1B0EDC8E8);
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_1B0392800(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_1B0392800(v34, v24);
    v16 = sub_1B0E461B8();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v27;
    *(v10 + 16) = v28;
    *(v10 + 32) = v29;
    sub_1B0392800(v24, *(v2 + 56) + 32 * v9);
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_1B0C5AB58()
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0C5ABA4(uint64_t a1)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0C5ABEC(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t sub_1B0C5AC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t *a7@<X8>)
{
  v37 = a2;
  v39 = a7;
  v12 = sub_1B0E43108();
  v38 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(a1 + 16, *(a1 + 40));
  sub_1B0E45E38();
  swift_endAccess();
  if (BYTE4(v40) == 5)
  {
    swift_beginAccess();
    __swift_mutable_project_boxed_opaque_existential_1(a6 + 16, *(a6 + 40));
    sub_1B0E45E38();
    result = swift_endAccess();
    v16 = v40;
    if ((v40 & 0xFF00000000) == 0x500000000)
    {
      v17 = 0;
    }

    else
    {
      v22 = v41;
      (*(v38 + 16))(v14, a3, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5BA0, &unk_1B0EDC8F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B0EC60E0;
      *(inited + 32) = 0x7472617473;
      *(inited + 40) = 0xE500000000000000;
      v24 = sub_1B0C5B1D4(v37, v14, v22);
      v25 = MEMORY[0x1E69E7360];
      v26 = MEMORY[0x1E69E7368];
      *(inited + 48) = v24;
      *(inited + 88) = 0x746E756F636361;
      *(inited + 96) = 0xE700000000000000;
      v27 = MEMORY[0x1E69E6158];
      v28 = MEMORY[0x1E69E6160];
      *(inited + 72) = v25;
      *(inited + 80) = v26;
      *(inited + 128) = v27;
      *(inited + 136) = v28;
      *(inited + 104) = a4;
      *(inited + 112) = a5;
      *(inited + 144) = 1684957547;
      *(inited + 152) = 0xE400000000000000;
      if ((BYTE4(v16) - 2) >= 3u)
      {
        v29 = 3;
      }

      else
      {
        v29 = qword_1B0EDC9F8[(BYTE4(v16) - 2)];
      }

      *(inited + 184) = v25;
      *(inited + 192) = v26;
      *(inited + 160) = v29;
      *(inited + 200) = 1668184435;
      *(inited + 208) = 0xE400000000000000;
      v35 = MEMORY[0x1E69E7670];
      *(inited + 240) = MEMORY[0x1E69E7668];
      *(inited + 248) = v35;
      *(inited + 216) = v16;
      *(inited + 256) = 0x746E657665;
      *(inited + 264) = 0xE500000000000000;
      v36 = MEMORY[0x1E69E6538];
      *(inited + 296) = MEMORY[0x1E69E6530];
      *(inited + 304) = v36;
      *(inited + 272) = 2;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v17 = sub_1B0C3CC10(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A50, &unk_1B0EDBF20);
      swift_arrayDestroy();
      result = (*(v38 + 8))(v14, v12);
    }
  }

  else
  {
    v18 = v40 | (BYTE4(v40) << 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5BA0, &unk_1B0EDC8F0);
    v19 = swift_initStackObject();
    *(v19 + 32) = 0x746E756F636361;
    *(v19 + 16) = xmmword_1B0EC4E20;
    v20 = MEMORY[0x1E69E6160];
    *(v19 + 72) = MEMORY[0x1E69E6158];
    *(v19 + 80) = v20;
    *(v19 + 40) = 0xE700000000000000;
    *(v19 + 48) = a4;
    *(v19 + 56) = a5;
    *(v19 + 88) = 1684957547;
    *(v19 + 96) = 0xE400000000000000;
    if ((BYTE4(v18) - 2) >= 3u)
    {
      v21 = 3;
    }

    else
    {
      v21 = qword_1B0EDC9F8[(BYTE4(v18) - 2)];
    }

    v30 = MEMORY[0x1E69E7368];
    *(v19 + 128) = MEMORY[0x1E69E7360];
    *(v19 + 136) = v30;
    *(v19 + 104) = v21;
    v31 = MEMORY[0x1E69E7668];
    *(v19 + 144) = 1668184435;
    *(v19 + 152) = 0xE400000000000000;
    v32 = MEMORY[0x1E69E7670];
    *(v19 + 184) = v31;
    *(v19 + 192) = v32;
    *(v19 + 160) = v18;
    *(v19 + 200) = 0x746E657665;
    *(v19 + 208) = 0xE500000000000000;
    v33 = MEMORY[0x1E69E6538];
    *(v19 + 240) = MEMORY[0x1E69E6530];
    *(v19 + 248) = v33;
    *(v19 + 216) = 1;
    v34 = v19;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v17 = sub_1B0C3CC10(v34);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A50, &unk_1B0EDBF20);
    result = swift_arrayDestroy();
  }

  *v39 = v17;
  return result;
}

uint64_t sub_1B0C5B0C0@<X0>(unint64_t *a1@<X8>)
{
  v3 = *(sub_1B0E43108() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v6);

  return sub_1B0C5AC1C(v7, v8, v1 + v4, v10, v11, v12, a1);
}

uint64_t sub_1B0C5B170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Engine.Logger(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0C5B1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B0E43108();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  result = (*(v7 + 16))(v9, a2, v6, v11);
  v15 = __OFSUB__(a3, a1);
  if (a3 < a1)
  {
    v16 = a1 - a3;
    if (__OFSUB__(a1, a3))
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v15 = __OFSUB__(0, v16);
    if (!__OFSUB__(0, v16))
    {
LABEL_7:
      sub_1B0E43058();
      v17 = *(v7 + 8);
      v17(v9, v6);
      sub_1B0E430B8();
      v19 = round(v18);
      result = (v17)(v13, v6);
      if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v19 > -9.22337204e18)
      {
        if (v19 < 9.22337204e18)
        {
          return v19;
        }

        goto LABEL_13;
      }

      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v15)
  {
    goto LABEL_7;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1B0C5B39C(uint64_t a1)
{
  v2 = type metadata accessor for Engine.Logger(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0C5B428(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0C5B484(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1B0C5B4F8()
{
  result = qword_1EB6E5BB0;
  if (!qword_1EB6E5BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5BB0);
  }

  return result;
}

uint64_t AtomicFlag.storage.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AtomicFlag.init()()
{
  type metadata accessor for AtomicFlag.Storage(0);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t type metadata accessor for AtomicFlag.Storage(uint64_t a1)
{
  result = qword_1EB6DECA8;
  if (!qword_1EB6DECA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Bool __swiftcall AtomicFlag.testAndSet()()
{
  if (qword_1EB6DEAC0 != -1)
  {
    v2 = v0;
    swift_once();
    v0 = v2;
  }

  return atomicFlag_testAndSet(v0 + 16);
}

uint64_t (**atomicFlag_testAndSet.unsafeMutableAddressor())(void)
{
  if (qword_1EB6DEAC0 != -1)
  {
    swift_once();
  }

  return &atomicFlag_testAndSet;
}

Swift::Void __swiftcall AtomicFlag.clear()()
{
  if (qword_1EB6E5BB8 != -1)
  {
    v4 = v0;
    swift_once();
    v0 = v4;
  }

  v2 = atomicFlag_clear;
  v3 = v0 + 16;

  v2(v3);
}

_UNKNOWN **atomicFlag_clear.unsafeMutableAddressor()
{
  if (qword_1EB6E5BB8 != -1)
  {
    swift_once();
  }

  return &atomicFlag_clear;
}

void *sub_1B0C5B7E0(uint64_t a1, const char *a2, void *a3)
{
  result = dlsym(0xFFFFFFFFFFFFFFFELL, a2);
  if (result)
  {
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RandomAccessCollection.binarySearch(for:using:)@<X0>(char *a1@<X0>, uint64_t (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v61 = a1;
  v62 = a3;
  v60 = a2;
  v43 = a6;
  v58 = a5;
  v7 = *(a5 + 8);
  v8 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v57 = &v43 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v44 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  if (sub_1B0E456B8())
  {
    v22 = *(v44 + 56);
    v23 = v43;

    return v22(v23, 1, 1, v11);
  }

  else
  {
    v54 = AssociatedTypeWitness;
    sub_1B0E45668();
    sub_1B0E456C8();
    v45 = v7;
    sub_1B0E44878();
    v25 = *(v44 + 8);
    v53 = v15;
    v55 = v25;
    v56 = v44 + 8;
    v25(v15, v11);
    v63 = v8;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v26 = sub_1B0E44928();
    v27 = v59;
    v28 = v61;
    if (v26)
    {
      v29 = v48++;
      v49 = (v29 + 2);
      v46 = (v44 + 32);
      v50 = v18;
      v51 = v11;
      v47 = a4;
      do
      {
        sub_1B0E455F8();
        sub_1B0E455E8();
        v34 = sub_1B0E457B8();
        v35 = v57;
        v36 = v54;
        v59 = *v49;
        (v59)(v57);
        (v34)(v64, 0);
        LOBYTE(v34) = v60(v35, v28);
        v37 = *v48;
        (*v48)(v35, v36);
        if (v34)
        {
          v30 = v53;
          sub_1B0E456A8();
          v31 = v21;
          v18 = v50;
          v11 = v51;
        }

        else
        {
          v38 = sub_1B0E457B8();
          (v59)(v35);
          (v38)(v64, 0);
          LOBYTE(v38) = v60(v61, v35);
          v37(v35, v36);
          if ((v38 & 1) == 0)
          {
            v40 = v51;
            v41 = v55;
            v55(v50, v51);
            v41(v21, v40);
            v42 = v43;
            (*(v44 + 32))(v43, v27, v40);
            return (*(v44 + 56))(v42, 0, 1, v40);
          }

          v30 = v53;
          sub_1B0E44878();
          v18 = v50;
          v11 = v51;
          v31 = v50;
        }

        v32 = v55;
        v55(v27, v11);
        v32(v31, v11);
        (*v46)(v31, v30, v11);
        v33 = sub_1B0E44928();
        v28 = v61;
      }

      while ((v33 & 1) != 0);
    }

    v39 = v55;
    v55(v18, v11);
    v39(v21, v11);
    return (*(v44 + 56))(v43, 1, 1, v11);
  }
}

uint64_t RandomAccessCollection.binarySearch<A>(forKey:using:_:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(char *, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v65 = a4;
  v66 = a5;
  v55 = a3;
  v54 = a2;
  v64 = a1;
  v48 = a8;
  v67 = a7;
  v10 = *(a7 + 8);
  v11 = *(v10 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v70 = &v47 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v49 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v47 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v47 - v24;
  v72 = a6;
  v73 = v8;
  if (sub_1B0E456B8())
  {
    v26 = *(v49 + 56);
    v27 = v48;

    return v26(v27, 1, 1, v14);
  }

  else
  {
    sub_1B0E45668();
    sub_1B0E456C8();
    sub_1B0E44878();
    v62 = *(v49 + 8);
    v63 = v49 + 8;
    v62(v19, v14);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    if (sub_1B0E44928())
    {
      v29 = (v12 + 16);
      v59 = (v12 + 8);
      v58 = (v49 + 32);
      v56 = (v12 + 16);
      v51 = v10;
      v53 = v14;
      v52 = v25;
      v50 = v11;
      v57 = v19;
      v60 = v22;
      v69 = v16;
      do
      {
        sub_1B0E455F8();
        sub_1B0E455E8();
        v35 = sub_1B0E457B8();
        v36 = v70;
        v37 = AssociatedTypeWitness;
        v68 = *v29;
        v68(v70);
        (v35)(v74, 0);
        v38 = v64;
        LOBYTE(v35) = v65(v36, v64);
        v39 = *v59;
        (*v59)(v36, v37);
        if (v35)
        {
          v30 = v57;
          v31 = v69;
          sub_1B0E456A8();
          v32 = v25;
          v22 = v60;
        }

        else
        {
          v40 = v70;
          v41 = AssociatedTypeWitness;
          v42 = sub_1B0E457B8();
          v68(v40);
          (v42)(v74, 0);
          LOBYTE(v42) = v54(v38, v40);
          v39(v40, v41);
          if ((v42 & 1) == 0)
          {
            v44 = v53;
            v45 = v62;
            v62(v60, v53);
            v45(v52, v44);
            v46 = v48;
            (*(v49 + 32))(v48, v69, v44);
            return (*(v49 + 56))(v46, 0, 1, v44);
          }

          v30 = v57;
          v31 = v69;
          sub_1B0E44878();
          v22 = v60;
          v32 = v60;
          v14 = v53;
          v25 = v52;
        }

        v33 = v62;
        v62(v31, v14);
        v33(v32, v14);
        (*v58)(v32, v30, v14);
        v34 = sub_1B0E44928();
        v29 = v56;
      }

      while ((v34 & 1) != 0);
    }

    v43 = v62;
    v62(v22, v14);
    v43(v25, v14);
    return (*(v49 + 56))(v48, 1, 1, v14);
  }
}

uint64_t CertUITrustManager.__allocating_init()()
{
  v0 = swift_allocObject();
  CertUITrustManager.init()();
  return v0;
}

void CertUITrustManager.init()()
{
  v1 = sub_1B0E44AC8();
  v2 = NSClassFromString(v1);

  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = sub_1B0E43388();
  ClassMethod = class_getClassMethod(v2, v3);
  if (!ClassMethod)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  Implementation = method_getImplementation(ClassMethod);
  v6 = sub_1B0E43388();
  v7 = (Implementation)(v2, v6);
  v8 = sub_1B0E43388();
  InstanceMethod = class_getInstanceMethod(v2, v8);
  if (!InstanceMethod)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = method_getImplementation(InstanceMethod);
  v11 = sub_1B0E43388();
  v0[2] = (v10)(v7, v11);
  v12 = class_getInstanceMethod(v2, sel_rawTrustResultForSSLTrust_hostname_service_);
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v0[3] = method_getImplementation(v12);
  v13 = class_getInstanceMethod(v2, sel_allowTrust_forHost_service_);
  if (v13)
  {
    v14 = method_getImplementation(v13);
    swift_unknownObjectRelease();
    v0[4] = v14;
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t CertUITrustManager.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t CertUITrustManager.rawTrustResult(forSSLTrust:hostname:service:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v10 = v5 + 16;
  v8 = *(v5 + 16);
  v9 = *(v10 + 8);
  if (!a3)
  {
    v11 = 0;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = sub_1B0E44AC8();
  if (v6)
  {
LABEL_3:
    v6 = sub_1B0E44AC8();
  }

LABEL_4:
  v12 = v9(v8, sel_rawTrustResultForSSLTrust_hostname_service_, a1, v11, v6);

  return v12;
}

Swift::Void __swiftcall CertUITrustManager.allow(_:forHost:service:)(SecTrustRef_optional _, Swift::String_optional forHost, Swift::String_optional service)
{
  object = service.value._object;
  v6 = *(v3 + 32);
  v7 = *(v3 + 16);
  if (forHost.value._object)
  {
    v8 = sub_1B0E44AC8();
    if (object)
    {
LABEL_3:
      v9 = sub_1B0E44AC8();
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (service.value._object)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = v9;
  v6(v7, sel_allowTrust_forHost_service_, _.value, v8);
}

uint64_t CertUITrustManager.showPrompt(hostname:service:trust:options:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for CertUIPrompt();
  inited = swift_initStackObject();
  sub_1B0C5CC30();
  v15 = a2;
  v16 = *(inited + 32);
  v17 = *(inited + 16);
  if (v15)
  {
    v18 = sub_1B0E44AC8();
  }

  else
  {
    v18 = 0;
  }

  v16(v17, sel_setHost_, v18);

  v19 = *(inited + 40);
  v20 = *(inited + 16);
  if (a4)
  {
    a4 = sub_1B0E44AC8();
  }

  v19(v20, sel_setService_, a4);

  (*(inited + 24))(*(inited + 16), sel_setTrust_, a5);
  sub_1B0C5CB24(a6, a7, a8);
}

void sub_1B0C5CB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 48);
  v7 = *(v3 + 16);
  if (a1)
  {
    v8 = sub_1B0E44598();
  }

  else
  {
    v8 = 0;
  }

  v10[4] = a2;
  v10[5] = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B0C5CFB4;
  v10[3] = &block_descriptor_33;
  v9 = _Block_copy(v10);

  v6(v7, sel_showPromptWithOptions_responseBlock_, v8, v9);
  _Block_release(v9);
}

void sub_1B0C5CC30()
{
  v1 = sub_1B0E44AC8();
  v2 = NSClassFromString(v1);

  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = sub_1B0E43388();
  ClassMethod = class_getClassMethod(v2, v3);
  if (!ClassMethod)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  Implementation = method_getImplementation(ClassMethod);
  v6 = sub_1B0E43388();
  v7 = (Implementation)(v2, v6);
  v8 = sub_1B0E43388();
  InstanceMethod = class_getInstanceMethod(v2, v8);
  if (!InstanceMethod)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = method_getImplementation(InstanceMethod);
  v11 = sub_1B0E43388();
  v0[2] = (v10)(v7, v11);
  v12 = class_getInstanceMethod(v2, sel_setTrust_);
  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v0[3] = method_getImplementation(v12);
  v13 = class_getInstanceMethod(v2, sel_setHost_);
  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v0[4] = method_getImplementation(v13);
  v14 = class_getInstanceMethod(v2, sel_setService_);
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v0[5] = method_getImplementation(v14);
  v15 = class_getInstanceMethod(v2, sel_showPromptWithOptions_responseBlock_);
  if (v15)
  {
    v16 = method_getImplementation(v15);
    swift_unknownObjectRelease();
    v0[6] = v16;
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1B0C5CDEC()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B0C5CFB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1B0C5D0E8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - v5;
  swift_getAtKeyPath();
  v7 = sub_1B0E44A28();
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

uint64_t static DispatchData.makeMappedRead(fileDescriptor:count:)(int a1, size_t a2)
{
  v4 = sub_1B0E442E8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = mmap(0, a2, 1, 1, a1, 0);
  if (!v8 || v8 == sub_1B0E43AD8())
  {
    sub_1B0C5D3CC();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    (*(v5 + 104))(v7, *MEMORY[0x1E69E7FC0], v4);
    return sub_1B0E442F8();
  }
}

unint64_t sub_1B0C5D3CC()
{
  result = qword_1EB6E5BD0;
  if (!qword_1EB6E5BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5BD0);
  }

  return result;
}

uint64_t static URL.makeTemporaryFile(baseDirectory:pathExtension:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1B0E42E68();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E42D68();
  sub_1B0E42D78();
  v10 = *(v7 + 8);
  v10(v9, v6);
  result = sub_1B0C5D6F0(sub_1B0C5D580, 0);
  if (v4)
  {
    v12 = result;
    v10(a1, v6);
    return v12;
  }

  return result;
}

uint64_t sub_1B0C5D580@<X0>(char *a1@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  v6 = sub_1B0E42848();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = mkstemps(a1, a2);
  if (result <= 0)
  {
    MEMORY[0x1B2725C20]();
    v11 = sub_1B0E43AE8();
    if ((v11 & 0x100000000) != 0)
    {
      sub_1B0C5DF40();
      swift_allocError();
    }

    else
    {
      v13 = v11;
      sub_1B0C5E00C(MEMORY[0x1E69E7CC0]);
      sub_1B0C5E11C();
      sub_1B0E42CB8();
      sub_1B0E42838();
      (*(v7 + 8))(v9, v6);
    }

    return swift_willThrow();
  }

  else
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1B0C5D6F0(uint64_t a1, uint64_t a2)
{
  v20[0] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5BD8, &unk_1B0EDCB98);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v20 - v5;
  v7 = sub_1B0E42E68();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E42D08();
  v11 = sub_1B0E44CF8();

  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v11 > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (__OFADD__(v11, 1))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  MEMORY[0x1EEE9AC00](result);
  v13 = v20[0];
  v20[-4] = a1;
  v20[-3] = v13;
  LODWORD(v20[-2]) = v14;
  MEMORY[0x1EEE9AC00](v15);
  v20[-2] = sub_1B0C5DE40;
  v20[-1] = v16;
  v17 = v20[1];
  sub_1B0E42DC8();
  if (!v17)
  {
    (*(v8 + 8))(v2, v7);
    v18 = *(v4 + 48);
    v4 = *v6;
    v19 = *(v8 + 32);
    v19(v10, &v6[v18], v7);
    v19(v2, v10, v7);
  }

  return v4;
}

uint64_t sub_1B0C5D950@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, void *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _DWORD *a6@<X8>)
{
  v31 = a4;
  v34 = *MEMORY[0x1E69E9840];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v28[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5BD8, &unk_1B0EDCB98);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v28[-v19];
  v30 = a6;
  if (a1)
  {
    v29 = a5;
    v21 = a2 - a1;
    if (a2 - a1 < 0)
    {
      __break(1u);
    }

    if (v21 >= 1025)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v27 = swift_slowAlloc();
        sub_1B0C5DC34(v27, a1, a2, a3, v29, a6);
        return MEMORY[0x1B272C230](v27, -1, -1);
      }
    }

    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v23 = &v28[-v22];
    memmove(&v28[-v22], a1, v21);
    a5 = v29;
  }

  else
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v23 = &v28[-16];
  }

  v24 = v32;
  a3(&v33, v23, a5);
  if (v24)
  {
    return swift_willThrow();
  }

  v26 = sub_1B0E42E68();
  (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
  sub_1B0E42DD8();
  sub_1B06E3800(v13);
  *v16 = v33;
  sub_1B0C5DED0(v16, v20);
  return sub_1B0C5DED0(v20, v30);
}

void sub_1B0C5DC34(void *a1@<X0>, const void *a2@<X2>, uint64_t a3@<X3>, void (*a4)(uint64_t *__return_ptr, void *, uint64_t)@<X4>, uint64_t a5@<X6>, _DWORD *a6@<X8>)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v17 - v14;
  if (a1 && a2)
  {
    memmove(a1, a2, a3 - a2);
  }

  else if (!a1)
  {
    __break(1u);
    return;
  }

  a4(&v18, a1, a5);
  if (!v6)
  {
    v16 = sub_1B0E42E68();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5BD8, &unk_1B0EDCB98);
    sub_1B0E42DD8();
    sub_1B06E3800(v15);
    *a6 = v18;
  }
}

size_t sub_1B0C5DDA4(const char *a1, uint64_t (*a2)(const char *, const char *))
{
  if (a1)
  {
    result = strlen(a1);
    if (__OFADD__(result, 1))
    {
      __break(1u);
    }

    else
    {
      return a2(a1, &a1[result + 1]);
    }
  }

  else
  {
    sub_1B0C5DE7C();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1B0C5DE7C()
{
  result = qword_1EB6E5BE0;
  if (!qword_1EB6E5BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5BE0);
  }

  return result;
}

uint64_t sub_1B0C5DED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5BD8, &unk_1B0EDCB98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B0C5DF40()
{
  result = qword_1EB6E5BE8;
  if (!qword_1EB6E5BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5BE8);
  }

  return result;
}

unint64_t sub_1B0C5DF94(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v4 = sub_1B0E46CB8();

  return sub_1B0441064(a1, a2, v4);
}

void sub_1B0C5E00C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB6E5BF8, &qword_1B0EDCBA8);
    v3 = sub_1B0E466A8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B0C5E174(v4, &v13);
      v5 = v13;
      v6 = v14;
      v7 = sub_1B0C5DF94(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
      v9 = (v3[6] + 16 * v7);
      *v9 = v5;
      v9[1] = v6;
      sub_1B0392800(&v15, v3[7] + 32 * v7);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_9;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }
}

unint64_t sub_1B0C5E11C()
{
  result = qword_1EB6E5BF0;
  if (!qword_1EB6E5BF0)
  {
    sub_1B0E42848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5BF0);
  }

  return result;
}

uint64_t sub_1B0C5E174(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C88, &unk_1B0EA3630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t KeyedSequence.sorted.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t KeyedSequence.unsorted.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t KeyedSequence.init(element:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B0E45258();
  sub_1B0E45258();
  return a2;
}

uint64_t Array.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for KeyedSequence(0, a6, a5, a7);
  KeyedSequence.consolidate()();

  return a3;
}

Swift::Void __swiftcall KeyedSequence.consolidate()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v0 + 16);
  v5 = *(v4 - 8);
  (MEMORY[0x1EEE9AC00])();
  v63 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v62 = v54 - v8;
  v10 = *(v9 + 24);
  v79 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v80 = v54 - v14;
  v15 = sub_1B0E45D88();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v82 = v54 - v16;
  v78 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v57 = v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v56 = v54 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v76 = v54 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v75 = v54 - v25;
  v64 = v4;
  v83 = v4;
  v84 = v10;
  v61 = *(v3 + 32);
  v85 = v61;
  v86 = v2;
  v26 = sub_1B0E45358();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B0E449C8();
  v107 = sub_1B0E45258();
  v27 = *(v2 + 16);
  v28 = sub_1B0E452A8();
  if (__OFADD__(v28, sub_1B0E452A8()))
  {
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    v54[1] = v27;
    v60 = v12;
    sub_1B0E451F8();
    v55 = (v2 + 16);
    sub_1B0E449A8();
    v74 = v2;
    v72 = v26;
    sub_1B0E449A8();
    v29 = sub_1B0E45FF8();
    v54[0] = v17;
    v73 = (v17 + 32);
    v81 = (v79 + 48);
    v59 = (v79 + 32);
    v58 = (v5 + 8);
    v68 = (v79 + 8);
    v69 = v29;
    while (1)
    {
      v71 = v103;
      v95 = v103;
      v96 = v104;
      v67 = v104;
      v66 = v105;
      v97 = v105;
      v98 = v106;
      v65 = v106;
      WitnessTable = swift_getWitnessTable();
      v33 = v75;
      sub_1B0E45728();
      v34 = v100;
      v36 = v101;
      v35 = v102;
      v70 = v99;
      v91 = v99;
      v92 = v100;
      v93 = v101;
      v94 = v102;
      v37 = v76;
      v79 = WitnessTable;
      sub_1B0E45728();
      v38 = *(TupleTypeMetadata2 + 48);
      v39 = *v73;
      v40 = v82;
      v41 = v33;
      v42 = v78;
      (*v73)(v82, v41, v78);
      v39(&v40[v38], v37, v42);
      v43 = *v81;
      LODWORD(v39) = (*v81)(v40, 1, v10);
      v44 = &v40[v38];
      v45 = v10;
      v46 = v43(v44, 1, v10);
      if (v39 == 1)
      {
        break;
      }

      if (v46 == 1)
      {
        v87 = v71;
        v88 = v67;
        v89 = v66;
        v90 = v65;
        swift_unknownObjectRetain();
        swift_getWitnessTable();
        sub_1B0E452D8();
        (*v68)(v82, v10);
        goto LABEL_13;
      }

      v47 = *v59;
      v48 = v80;
      v49 = v82;
      (*v59)(v80, v82, v45);
      v36 = v60;
      v47(v60, &v49[v38], v45);
      v50 = *v74;
      v35 = v62;
      (*v74)(v48);
      v34 = v63;
      v50(v36);
      v51 = v64;
      LOBYTE(v49) = sub_1B0E44908();
      v52 = *v58;
      (*v58)(v34, v51);
      v52(v35, v51);
      if (v49)
      {
        v53 = v56;
        v38 = v69;
        sub_1B0E456E8();
        v46 = v43(v53, 1, v45);
        if (v46 == 1)
        {
          __break(1u);
          break;
        }
      }

      else
      {
        v30 = v57;
        sub_1B0E456E8();
        if (v43(v30, 1, v45) == 1)
        {
          goto LABEL_15;
        }
      }

      sub_1B0E452E8();
      v31 = *v68;
      (*v68)(v36, v45);
      v31(v80, v45);
      v10 = v45;
    }

    if (v46 != 1)
    {
      v87 = v70;
      v88 = v34;
      v89 = v36;
      v90 = v35;
      swift_unknownObjectRetain();
      swift_getWitnessTable();
      sub_1B0E452D8();
      (*(v54[0] + 8))(&v82[v38], v78);
    }

LABEL_13:
    sub_1B0E45338();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *v55 = v107;
  }
}

uint64_t KeyedSequence.subscript.getter@<X0>(uint64_t a1@<X6>, void *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>, uint64_t a5@<X2>, uint64_t a6@<X3>, uint64_t a7@<X4>, uint64_t a8@<X5>, uint64_t a9@<X7>)
{
  KeyedSequence.index(for:)(a3, a4, a5, a6, a7, a8, a1, a9);
  if (v11 == -1)
  {
    v12 = 1;
  }

  else
  {
    sub_1B0E453A8();
    v12 = 0;
  }

  v13 = *(*(a1 - 8) + 56);

  return v13(a2, v12, 1, a1);
}

uint64_t KeyedSequence.index(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a4;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v10 = sub_1B0E45358();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  WitnessTable = swift_getWitnessTable();
  RandomAccessCollection.binarySearch<A>(forKey:using:_:)(a1, sub_1B0C60348, v23, sub_1B0C60360, v15, v10, WitnessTable, &v32);

  if ((v33 & 1) == 0)
  {
    return v32;
  }

  v14[1] = v14;
  v31 = a5;
  MEMORY[0x1EEE9AC00](v12);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_getWitnessTable();
  sub_1B0E456F8();

  if (v33)
  {
    return 0;
  }

  else
  {
    return v32;
  }
}

void KeyedSequence.insert(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = *(a2 + 24);
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 16);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v2;
  v13 = *(v2 + 8);
  v15 = *(v3 + 16);
  v29 = (v3 + 16);
  v16 = *(v3 + 24);
  v33 = v17;
  v14(v10);
  v31 = a2;
  v18 = v15;
  v19 = v32;
  v20 = KeyedSequence.index(for:)(v12, v14, v13, v18, v16, v7, v32, *(a2 + 32));
  v22 = v21;
  LODWORD(v16) = ~v21;
  (*(v8 + 8))(v12, v7);
  if (v16)
  {
    v23 = v33;
    sub_1B0E45358();
    v24 = v34;
    if (v22)
    {
      sub_1B0E45248();
      v25 = *(v3 + 24);
    }

    else
    {
      v26 = v29;
      sub_1B0E45248();
      v25 = *v26;
    }

    sub_1B0C603F0(v20, v25, v19);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v28 = v25 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v28 = v25;
    }

    (*(v24 + 24))(v28 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20, v23, v19);
  }

  else
  {
    (*(v34 + 16))(v30, v33, v19);
    sub_1B0E45358();
    sub_1B0E452E8();
    if (sub_1B0E452A8() >= 11)
    {
      KeyedSequence.consolidate()();
    }
  }
}

uint64_t KeyedSequence.insert<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  v27 = a1;
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B0E45D88();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - v10;
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v23 - v18;
  (*(v12 + 16))(v15, v27, a3, v17);
  sub_1B0E44F08();
  swift_getAssociatedConformanceWitness();
  v26 = v19;
  v27 = AssociatedTypeWitness;
  sub_1B0E45E38();
  v20 = *(v6 + 48);
  if (v20(v11, 1, v5) != 1)
  {
    v21 = *(v6 + 32);
    do
    {
      v21(v8, v11, v5);
      KeyedSequence.insert(_:)(v8, v25);
      (*(v6 + 8))(v8, v5);
      sub_1B0E45E38();
    }

    while (v20(v11, 1, v5) != 1);
  }

  return (*(v24 + 8))(v26, v27);
}

BOOL KeyedSequence.update(key:_:)(uint64_t a1, void (*a2)(unint64_t), uint64_t a3, uint64_t *a4)
{
  v7 = v4 + 2;
  v6 = v4[2];
  v8 = *v4;
  v9 = v4[1];
  v11 = v4[3];
  v10 = v4 + 3;
  v12 = a4[3];
  v13 = KeyedSequence.index(for:)(a1, v8, v9, v6, v11, a4[2], v12, a4[4]);
  v15 = v14;
  if (v14 != -1)
  {
    v16 = v13;
    sub_1B0E45358();
    if ((v15 & 1) == 0)
    {
      v10 = v7;
    }

    sub_1B0E45248();
    v17 = *v10;
    sub_1B0C603F0(v16, v17, v12);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v19 = v17 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v19 = v17;
    }

    a2(v19 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80)) + *(*(v12 - 8) + 72) * v16);
  }

  return ~v15 != 0;
}

uint64_t KeyedSequence.removeElement(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[3];
  KeyedSequence.index(for:)(a1, *v3, v3[1], v3[2], v3[3], a2[2], v5, a2[4]);
  if (v6 == -1)
  {
    v7 = 1;
  }

  else
  {
    sub_1B0E45358();
    sub_1B0E45308();
    v7 = 0;
  }

  v8 = *(*(v5 - 8) + 56);

  return v8(a3, v7, 1, v5);
}

uint64_t sub_1B0C5F7B4(uint64_t a1, uint64_t a2, void (**a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  v17 = *v16;

  v17(a1);

  v18 = *a3;

  v18(a2);

  v19 = sub_1B0E44908();
  v20 = *(v10 + 8);
  v20(v12, a4);
  v20(v15, a4);
  return v19 & 1;
}

uint64_t KeyedSequence.isEmpty.getter()
{
  sub_1B0E45358();
  swift_getWitnessTable();
  if (sub_1B0E45748())
  {
    v0 = sub_1B0E45748();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t KeyedSequence.reduce<A>(into:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X6>, void *a5@<X8>, uint64_t a6, uint64_t a7)
{
  v29 = a4;
  v25 = a5;
  v9 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v24 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v22 - v16;
  v31 = v18;
  v28 = v9;
  v23 = *(v9 + 16);
  v23(v13, v15);
  sub_1B0E45358();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  WitnessTable = swift_getWitnessTable();
  v26 = a2;
  v27 = a3;
  v22[1] = WitnessTable;
  v20 = v30;
  sub_1B0E44FD8();

  if (!v20)
  {
    v31 = v29;
    (v23)(v24, v17, a7);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E44FD8();

    return (*(v28 + 8))(v17, a7);
  }

  return result;
}

double KeyedSequence.makeIterator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = a1;
  a5[3] = a2;
  a5[4] = a3;
  a5[5] = a4;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t KeyedSequence.Iterator.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = result;
  a5[3] = a2;
  a5[4] = a3;
  a5[5] = a4;
  return result;
}

uint64_t KeyedSequence.underestimatedCount.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_1B0E452A8();
  v7 = sub_1B0E452A8();
  v8 = __OFADD__(v6, v7);
  result = v6 + v7;
  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t KeyedSequence.Iterator.array.getter()
{
  v1 = *(v0 + 16);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t KeyedSequence.Iterator.array.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return result;
}

uint64_t KeyedSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 24);
  if (v4 < sub_1B0E452A8())
  {
    sub_1B0E453A8();
    result = (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
    if (!__OFADD__(*v2, 1))
    {
      ++*v2;
      return result;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v7 = v2[1];
  if (v7 < sub_1B0E452A8())
  {
    sub_1B0E453A8();
    result = (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
    v8 = v2[1];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (!v9)
    {
      v2[1] = v10;
      return result;
    }

    goto LABEL_11;
  }

  v11 = *(*(v5 - 8) + 56);

  return v11(a2, 1, 1, v5);
}

double sub_1B0C5FF5C@<D0>(_OWORD *a1@<X8>)
{
  KeyedSequence.makeIterator()(*v1, v1[1], v1[2], v1[3], v5);

  v3 = v5[1];
  *a1 = v5[0];
  a1[1] = v3;
  result = *&v6;
  a1[2] = v6;
  return result;
}

uint64_t sub_1B0C5FFDC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B0C6059C(v2, a1, a2);

  return v3;
}

uint64_t sub_1B0C60028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a7 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15(v14, v11);
  v16 = sub_1B0E44908();
  (*(v10 + 8))(v13, a7);
  return v16 & 1;
}

uint64_t sub_1B0C6011C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a7 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14(v11);
  v15 = sub_1B0E44908();
  (*(v10 + 8))(v13, a7);
  return v15 & 1;
}

uint64_t sub_1B0C6020C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12(v9);
  v13 = sub_1B0E44A28();
  (*(v8 + 8))(v11, a7);
  return v13 & 1;
}

uint64_t sub_1B0C603F0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1B0C60460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B0C6049C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B0C604D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0C60520(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MillisecondDate.wrappedValue.setter(uint64_t a1)
{
  v2 = v1;
  sub_1B0E43028();
  v5 = v4;
  v6 = sub_1B0E43108();
  result = (*(*(v6 - 8) + 8))(a1, v6);
  v8 = v5 * 1000.0;
  if (COERCE__INT64(fabs(v5 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v8 < 9.22337204e18)
  {
    *v2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void (*MillisecondDate.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1B0E43108();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_1B0E43018();
  return sub_1B0C607C8;
}

void sub_1B0C607C8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if ((a2 & 1) == 0)
  {
    v14 = v2[1];
    v15 = v2[2];
    sub_1B0E43028();
    v17 = v16;
    (*(v15 + 8))(v3, v14);
    v18 = v17 * 1000.0;
    if (COERCE__INT64(fabs(v17 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v18 > -9.22337204e18)
      {
        if (v18 < 9.22337204e18)
        {
          v12 = v2[3];
          v11 = v2[4];
          **v2 = v18;
          goto LABEL_10;
        }

LABEL_18:
        __break(1u);
        return;
      }

      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[1];
  (*(v5 + 16))(v4, v3, v6);
  sub_1B0E43028();
  v8 = v7;
  v9 = *(v5 + 8);
  v9(v4, v6);
  v10 = v8 * 1000.0;
  if (COERCE__INT64(fabs(v8 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v2[3];
  v11 = v2[4];
  v13 = v2[1];
  **v2 = v10;
  v9(v11, v13);
LABEL_10:
  free(v11);
  free(v12);

  free(v2);
}

uint64_t MillisecondDate.init(wrappedValue:)(uint64_t a1)
{
  sub_1B0E43028();
  v3 = v2;
  v4 = sub_1B0E43108();
  result = (*(*(v4 - 8) + 8))(a1, v4);
  v6 = v3 * 1000.0;
  if (COERCE__INT64(fabs(v3 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v6 < 9.22337204e18)
  {
    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t MillisecondDate.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728DB0](a1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0C60AB4()
{
  v1 = *v0;
  sub_1B0E46C28();
  MEMORY[0x1B2728DB0](v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0C60AFC(uint64_t a1)
{
  v2 = *v1;
  sub_1B0E46C28();
  MEMORY[0x1B2728DB0](v2);
  return sub_1B0E46CB8();
}

uint64_t OptionalMillisecondDate.underlying.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t OptionalMillisecondDate.wrappedValue.getter@<X0>(char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v4 = 1;
  }

  else
  {
    sub_1B0E43018();
    v4 = 0;
  }

  v5 = sub_1B0E43108();
  v6 = *(*(v5 - 8) + 56);

  return v6(a3, v4, 1, v5);
}

uint64_t OptionalMillisecondDate.wrappedValue.setter(const void *a1)
{
  v2 = v1;
  v4 = sub_1B0E43108();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  sub_1B06BC2F4(a1, &v17 - v9);
  v11 = (*(v5 + 48))(v10, 1, v4);
  if (v11 == 1)
  {
    result = sub_1B06B97A8(a1);
    v13 = 0;
LABEL_7:
    *v2 = v13;
    *(v2 + 8) = v11 == 1;
    return result;
  }

  (*(v5 + 32))(v7, v10, v4);
  sub_1B0E43028();
  v15 = v14;
  sub_1B06B97A8(a1);
  result = (*(v5 + 8))(v7, v4);
  v16 = v15 * 1000.0;
  if (COERCE__INT64(fabs(v15 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v16 < 9.22337204e18)
  {
    v13 = v16;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

void (*OptionalMillisecondDate.wrappedValue.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1B0E43108();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  if (v3)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v5[3] = v9;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v5[5] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v10);
    v5[5] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[6] = v11;
  if (*(v1 + 8))
  {
    v13 = 1;
  }

  else
  {
    sub_1B0E43018();
    v13 = 0;
  }

  (*(v8 + 56))(v12, v13, 1, v6);
  return sub_1B0C60FCC;
}

void sub_1B0C60FCC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if ((a2 & 1) == 0)
  {
    v7 = v2[1];
    v8 = v2[2];
    sub_1B06BC2F4((*a1)[6], v3);
    v9 = (*(v8 + 48))(v3, 1, v7);
    v10 = v2[6];
    if (v9 == 1)
    {
      sub_1B06B97A8(v2[6]);
      v11 = 0;
LABEL_9:
      v18 = v9 == 1;
      v3 = v2[5];
      v4 = v2[6];
      v6 = v2[3];
      v5 = v2[4];
      v19 = *v2;
      *v19 = v11;
      *(v19 + 8) = v18;
      goto LABEL_10;
    }

    v13 = v2[2];
    v12 = v2[3];
    v14 = v2[1];
    (*(v13 + 32))(v12, v2[5], v14);
    sub_1B0E43028();
    v16 = v15;
    sub_1B06B97A8(v10);
    (*(v13 + 8))(v12, v14);
    v17 = v16 * 1000.0;
    if (COERCE__INT64(fabs(v16 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v17 > -9.22337204e18)
    {
      if (v17 < 9.22337204e18)
      {
        v11 = v17;
        goto LABEL_9;
      }

LABEL_15:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  v6 = v2[3];
  v5 = v2[4];
  sub_1B06BC2F4((*a1)[6], v5);
  OptionalMillisecondDate.wrappedValue.setter(v5);
  sub_1B06B97A8(v4);
LABEL_10:
  free(v4);
  free(v3);
  free(v5);
  free(v6);

  free(v2);
}

uint64_t OptionalMillisecondDate.init(wrappedValue:)(const void *a1)
{
  v2 = sub_1B0E43108();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  sub_1B06BC2F4(a1, &v13 - v7);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1B06B97A8(a1);
    return 0;
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_1B0E43028();
  v11 = v10;
  sub_1B06B97A8(a1);
  result = (*(v3 + 8))(v5, v2);
  v12 = v11 * 1000.0;
  if (COERCE__INT64(fabs(v11 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v12 < 9.22337204e18)
  {
    return v12;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t static OptionalMillisecondDate.__derived_struct_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a4)
    {
      return 1;
    }
  }

  else if ((a4 & 1) == 0 && a1 == a3)
  {
    return 1;
  }

  return 0;
}

uint64_t OptionalMillisecondDate.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  return MEMORY[0x1B2728DB0](a2);
}

uint64_t OptionalMillisecondDate.hashValue.getter(uint64_t a1, char a2)
{
  sub_1B0E46C28();
  sub_1B0E46C68();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x1B2728DB0](a1);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0C61444()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B0E46C28();
  sub_1B0E46C68();
  if (v2 != 1)
  {
    MEMORY[0x1B2728DB0](v1);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0C614B4()
{
  if (*(v0 + 8) == 1)
  {
    return sub_1B0E46C68();
  }

  v2 = *v0;
  sub_1B0E46C68();
  return MEMORY[0x1B2728DB0](v2);
}

uint64_t sub_1B0C61504(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1B0E46C28();
  sub_1B0E46C68();
  if (v3 != 1)
  {
    MEMORY[0x1B2728DB0](v2);
  }

  return sub_1B0E46CB8();
}

unint64_t sub_1B0C61574()
{
  result = qword_1EB6E5C80;
  if (!qword_1EB6E5C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5C80);
  }

  return result;
}

unint64_t sub_1B0C615CC()
{
  result = qword_1EB6E5C88;
  if (!qword_1EB6E5C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5C88);
  }

  return result;
}

uint64_t sub_1B0C61620(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t MonotonicTime.init(nanoSeconds:since:)(uint64_t result, uint64_t a2)
{
  if (result >= 1)
  {
    v2 = __OFADD__(a2, result);
    result += a2;
    if (!v2)
    {
      return result;
    }

    __break(1u);
  }

  v3 = -result;
  if (__OFSUB__(0, result))
  {
    __break(1u);
    goto LABEL_9;
  }

  result += a2;
  if (__OFSUB__(a2, v3))
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

__uint64_t MonotonicTime.init(secondsSinceNow:)(double a1)
{
  result = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {

    return sub_1B0445DD8(result, a1);
  }

  return result;
}

uint64_t MonotonicTime.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728DB0](a1);
  return sub_1B0E46CB8();
}

int64_t DispatchTime.init(_:)(uint64_t a1)
{
  v2 = sub_1B0E44208();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1B0E443F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  if (result < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v11 = a1 - result;
  if (a1 >= result)
  {
LABEL_5:
    sub_1B0E443D8();
    *v5 = v11;
    (*(v3 + 104))(v5, *MEMORY[0x1E69E7F28], v2);
    sub_1B0E443E8();
    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v6);
  }

  if (__OFSUB__(result, a1))
  {
    goto LABEL_7;
  }

  v11 = a1 - result;
  if (!__OFSUB__(0, result - a1))
  {
    goto LABEL_5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t MonotonicTime.nanoSeconds(since:)(uint64_t a1, uint64_t a2)
{
  v3 = __OFSUB__(a2, a1);
  result = a2 - a1;
  if (result < 0 != v3)
  {
    v3 = __OFSUB__(a1, a2);
    v5 = a1 - a2;
    if (v3)
    {
      __break(1u);
      goto LABEL_10;
    }

    v3 = __OFSUB__(0, v5);
    result = -v5;
    if (!__OFSUB__(0, v5))
    {
      return result;
    }

    __break(1u);
  }

  if (v3)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t Date.init(_:now:now:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = __OFSUB__(result, a2);
  if (result < a2)
  {
    v5 = a2 - result;
    if (__OFSUB__(a2, result))
    {
      __break(1u);
      goto LABEL_11;
    }

    v4 = __OFSUB__(0, v5);
    if (!__OFSUB__(0, v5))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (v4)
  {
LABEL_11:
    __break(1u);
    return result;
  }

LABEL_7:
  sub_1B0E43058();
  v6 = sub_1B0E43108();
  v7 = *(*(v6 - 8) + 8);

  return v7(a3, v6);
}

int64_t static MonotonicTime.secondsSince(_:)(int64_t a1)
{
  result = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  if (result < 0)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    return result;
  }

  if (result >= a1 && __OFSUB__(result, a1))
  {
    goto LABEL_6;
  }

  return result;
}

unint64_t sub_1B0C61ABC()
{
  result = qword_1EB6E5C90;
  if (!qword_1EB6E5C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5C90);
  }

  return result;
}

uint64_t RateLimitResult.hashValue.getter(char a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1 & 1);
  return sub_1B0E46CB8();
}

BOOL MonotonicTime.rateLimit(now:seconds:)(_BOOL8 result, double a2)
{
  v3 = *v2;
  if (*v2 > result)
  {
    if (__OFSUB__(*v2, result))
    {
      __break(1u);
      goto LABEL_11;
    }

    v4 = result - *v2;
    if (!__OFSUB__(0, *v2 - result))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v4 = result - v3;
  if (__OFSUB__(result, v3))
  {
LABEL_11:
    __break(1u);
    return result;
  }

LABEL_7:
  v5 = v4 / 1000000000.0;
  if (v5 > a2)
  {
    *v2 = result;
  }

  return v5 > a2;
}

unint64_t sub_1B0C61C00()
{
  result = qword_1EB6E5C98;
  if (!qword_1EB6E5C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5C98);
  }

  return result;
}

uint64_t RestartableTimer.__allocating_init(queue:repeating:leeway:closure:)(void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v28 = a4;
  v36 = a2;
  v37 = a3;
  v31 = a1;
  v5 = sub_1B0E443F8();
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v27 - v8;
  v9 = sub_1B0E45A38();
  v29 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B0E44238();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1B0E44288();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v30 = swift_allocObject();
  _Block_copy(a4);
  sub_1B0E44278();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1B039E46C(&qword_1EB6DEE50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1880, &unk_1B0E99EA0);
  sub_1B03CFB8C(&qword_1EB6DEE20, &qword_1EB6E1880, &unk_1B0E99EA0);
  sub_1B0E460A8();
  sub_1B0E44458();
  swift_allocObject();
  sub_1B0E44428();
  sub_1B0421E38();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1B039E46C(&qword_1EB6DAA70, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AA0, &qword_1B0EDC030);
  sub_1B03CFB8C(&qword_1EB6DAFA0, &qword_1EB6E5AA0, &qword_1B0EDC030);
  sub_1B0E460A8();
  v14 = v31;
  v27 = v14;
  v15 = sub_1B0E45A48();

  (*(v29 + 8))(v11, v9);
  ObjectType = swift_getObjectType();
  sub_1B0E45A68();
  v17 = v33;
  sub_1B0E443D8();
  v18 = v32;
  v19 = v36;
  sub_1B0E443E8();
  v20 = *(v34 + 8);
  v21 = v17;
  v22 = v35;
  v20(v21, v35);
  v23 = v37;
  MEMORY[0x1B2727D90](v18, v19, v37, ObjectType);

  _Block_release(v28);
  v24 = sub_1B0E44208();
  v25 = *(*(v24 - 8) + 8);
  v25(v23, v24);
  v25(v19, v24);
  v20(v18, v22);
  result = v30;
  *(v30 + 32) = v27;
  *(result + 16) = v15;
  *(result + 24) = 1;
  return result;
}

uint64_t RestartableTimer.deinit()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1B0E45A98();
  swift_unknownObjectRelease();
  if (*(v0 + 24) == 1)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1B0E45AA8();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return v0;
}

uint64_t RestartableTimer.__deallocating_deinit()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1B0E45A98();
  swift_unknownObjectRelease();
  if (*(v0 + 24) == 1)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1B0E45AA8();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t RestartableTimer.isRunning.getter()
{
  v1 = sub_1B0E44468();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 32);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1B0E44488();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    return (*(v0 + 24) & 1) == 0;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0C623AC()
{
  result = qword_1EB6E5CA8;
  if (!qword_1EB6E5CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5CA8);
  }

  return result;
}

uint64_t static PCG32Random.random.getter()
{
  v2 = 0;
  MEMORY[0x1B272C250](&v2, 8);
  v0 = v2;
  v2 = 0;
  MEMORY[0x1B272C250](&v2, 8);
  return v0;
}

Swift::Void __swiftcall PCG32Random.seed(state:sequence:)(Swift::UInt64 state, Swift::UInt64 sequence)
{
  v3 = (2 * sequence) | 1;
  *v2 = v3 + 0x5851F42D4C957F2DLL * (v3 + state);
  v2[1] = v3;
}

uint64_t sub_1B0C6247C()
{
  v1 = *v0;
  *v0 = v0[1] + 0x5851F42D4C957F2DLL * *v0;
  return __ROR4__((v1 >> 45) ^ (v1 >> 27), v1 >> 59);
}

Swift::UInt32 __swiftcall PCG32Random.next()()
{
  v1 = *v0;
  *v0 = v0[1] + 0x5851F42D4C957F2DLL * *v0;
  return __ROR4__((v1 >> 45) ^ (v1 >> 27), v1 >> 59);
}

BOOL static MailboxName.stableOrder(_:_:)(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v8 = MailboxName.inbox.unsafeMutableAddressor();
  v9 = *v8;
  v10 = *(v8 + 2) | (*(v8 + 2) << 32);
  v11 = a2 | (a2 << 32);
  if (v10 == v11 && (sub_1B04520BC(*v8, a1) & 1) != 0 && v10 == (a4 | (a4 << 32)) && (sub_1B04520BC(v9, a3) & 1) != 0 || v10 == (a4 | (a4 << 32)) && (sub_1B04520BC(v9, a3) & 1) != 0)
  {
    return 0;
  }

  if (v10 == v11 && (sub_1B04520BC(v9, a1) & 1) != 0)
  {
    return 1;
  }

  return sub_1B0C626D0(a1, a3) == -1;
}

uint64_t sub_1B0C62624@<X0>(void *__s2@<X0>, void *__s1@<X2>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (__s1)
  {
    v8 = a4 - __s1;
  }

  else
  {
    v8 = 0;
  }

  v9 = a3 - __s2;
  if (a3 - __s2 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = a3 - __s2;
  }

  if (__s2)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8 & (v8 >> 63);
  }

  result = memcmp(__s1, __s2, v11);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  if (result)
  {
LABEL_13:
    v13 = 1;
    goto LABEL_14;
  }

  if (__s2)
  {
    if (v8 >= v9)
    {
      if (v8 != v9)
      {
        goto LABEL_13;
      }

LABEL_21:
      v13 = 0;
      goto LABEL_14;
    }
  }

  else if ((v8 & 0x8000000000000000) == 0)
  {
    if (v8)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_11:
  v13 = -1;
LABEL_14:
  *a5 = v13;
  return result;
}

uint64_t sub_1B0C6272C()
{
  v0 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v0, qword_1EB6DEAA8);
  __swift_project_value_buffer(v0, qword_1EB6DEAA8);
  return sub_1B0E43998();
}

uint64_t sub_1B0C627B8()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_1B0C62864(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a3;
  v21 = sub_1B0E459C8();
  v5 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B0E45988();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1B0E44288();
  MEMORY[0x1EEE9AC00](v9 - 8);
  *(v3 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5CB0, &qword_1B0EDD258);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v24 = v3;
  *(v3 + 32) = v10;
  v19 = sub_1B06CCC58();
  v20 = a1;

  sub_1B0E44258();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B06D6240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1888, &unk_1B0EEDC60);
  sub_1B06D62C0();
  sub_1B0E460A8();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8090], v21);
  v11 = sub_1B0E45A08();
  if (qword_1EB6DEC98 != -1)
  {
    swift_once();
  }

  v12 = off_1EB6DEC90;
  v13 = swift_allocObject();
  v15 = v22;
  v14 = v23;
  v13[2] = v10;
  v13[3] = v15;
  v13[4] = v14;
  aBlock[4] = sub_1B0C63500;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B0C62FAC;
  aBlock[3] = &block_descriptor_34;
  v16 = _Block_copy(aBlock);
  v17 = v12(v11, v16);

  _Block_release(v16);

  result = v24;
  *(v24 + 16) = v17;
  return result;
}

uint64_t sub_1B0C62BB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (*(a2 + 16))
  {
    return 0;
  }

  v4 = a3(a1);
  if (!v5)
  {
    return 0;
  }

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = sub_1B0C62C38(v4, v5, v6, v7);
  sub_1B0C6350C(v8, v9, v10, v11);
  return v12;
}

uint64_t sub_1B0C62C38(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  v34 = *MEMORY[0x1E69E9840];
  v8 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    v9 = 0;
    if (v8 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(a3 + 16);
    v10 = *(a3 + 24);
    v12 = __OFSUB__(v10, v11);
    v9 = v10 - v11;
    if (!v12)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v9 = BYTE6(a4);
    goto LABEL_10;
  }

  LODWORD(v9) = HIDWORD(a3) - a3;
  if (__OFSUB__(HIDWORD(a3), a3))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v9 = v9;
LABEL_10:
  v13 = v9 + 200;
  if (__OFADD__(v9, 200))
  {
    __break(1u);
    goto LABEL_48;
  }

  v14 = swift_slowAlloc();
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 0u;
  *(v14 + 96) = 0u;
  *(v14 + 112) = 0u;
  *(v14 + 128) = 0u;
  *(v14 + 144) = 0u;
  *(v14 + 160) = 0u;
  *(v14 + 176) = 0u;
  *(v14 + 192) = 0;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_43;
    }

    v15 = *(v5 + 16);
    v16 = *(v5 + 24);
    v17 = sub_1B0E42A98();
    if (v17)
    {
      v18 = sub_1B0E42AC8();
      if (__OFSUB__(v15, v18))
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
      }

      v17 += v15 - v18;
    }

    v12 = __OFSUB__(v16, v15);
    v19 = v16 - v15;
    if (v12)
    {
      goto LABEL_52;
    }

    v20 = sub_1B0E42AB8();
    if (v13 < 200)
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (v20 >= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    v22 = (v21 + v17);
    if (!v17)
    {
      v22 = 0;
    }

    v32 = v17;
    v33 = v22;
    sub_1B0C16D90();
    sub_1B0E429B8();
    *v14 = 1;
    v24 = *(v5 + 16);
    v23 = *(v5 + 24);
    v5 = v23 - v24;
    if (!__OFSUB__(v23, v24))
    {
      goto LABEL_41;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v31[0] = v5;
    LOWORD(v31[1]) = a4;
    BYTE2(v31[1]) = BYTE2(a4);
    BYTE3(v31[1]) = BYTE3(a4);
    BYTE4(v31[1]) = BYTE4(a4);
    BYTE5(v31[1]) = BYTE5(a4);
    if (v13 >= 200)
    {
      LODWORD(v5) = BYTE6(a4);
      v32 = v31;
      v33 = v31 + BYTE6(a4);
      sub_1B0C16D90();
      sub_1B0E429B8();
LABEL_45:
      *v14 = 1;
      goto LABEL_46;
    }

    goto LABEL_49;
  }

  if (v5 >> 32 < v5)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v25 = sub_1B0E42A98();
  if (v25)
  {
    v26 = sub_1B0E42AC8();
    if (__OFSUB__(v5, v26))
    {
      goto LABEL_57;
    }

    v25 += v5 - v26;
  }

  v27 = sub_1B0E42AB8();
  if (v13 < 200)
  {
    goto LABEL_54;
  }

  if (v27 >= (v5 >> 32) - v5)
  {
    v28 = (v5 >> 32) - v5;
  }

  else
  {
    v28 = v27;
  }

  v29 = (v28 + v25);
  if (!v25)
  {
    v29 = 0;
  }

  v32 = v25;
  v33 = v29;
  sub_1B0C16D90();
  sub_1B0E429B8();
  *v14 = 1;
  if (__OFSUB__(HIDWORD(v5), v5))
  {
    goto LABEL_55;
  }

  v5 = HIDWORD(v5) - v5;
LABEL_41:
  if (HIDWORD(v5))
  {
    __break(1u);
LABEL_43:
    memset(v31, 0, 14);
    if (v13 >= 200)
    {
      v32 = v31;
      v33 = v31;
      sub_1B0C16D90();
      sub_1B0E429B8();
      LODWORD(v5) = 0;
      goto LABEL_45;
    }

    goto LABEL_51;
  }

LABEL_46:
  *(v14 + 4) = v5;
  sub_1B0C63378(a1, a2, (v14 + 136), 0x40uLL);
  return v14;
}

uint64_t sub_1B0C62FAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

Swift::Void __swiftcall StateCapture.tearDown()()
{
  v1 = sub_1B0E44468();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v0[3];
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1B0E44488();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    swift_once();
    goto LABEL_4;
  }

  v8 = v0[4];
  if (*(v8 + 16))
  {
    return;
  }

  *(v8 + 16) = 1;
  if (qword_1EB6DEAD0 != -1)
  {
    goto LABEL_7;
  }

LABEL_4:
  off_1EB6DEAC8(v0[2]);
}

uint64_t StateCapture.deinit()
{
  result = *(v0 + 32);
  if (*(result + 16) == 1)
  {
    v2 = *(v0 + 24);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void StateCapture.__deallocating_deinit()
{
  if (*(*(v0 + 32) + 16) == 1)
  {

    swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }
}

uint64_t StateCapture.__allocating_init(title:queue:capture:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a1;
  v10[5] = a2;
  v11 = swift_allocObject();
  sub_1B0C62864(a3, sub_1B0C63424, v10);
  return v11;
}

uint64_t sub_1B0C6328C(void (*a1)(__int128 *__return_ptr), uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_transaction_create();
  a1(&v9);
  if (v10)
  {
    sub_1B0450C74(&v9, v11);
    sub_1B03D2CA8(v11, &v9);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v7 = sub_1B0C635E0(a3, a4, &v9);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1B0C63578(&v9);
    return 0;
  }

  return v7;
}

char *sub_1B0C63378(uint64_t a3, uint64_t a4, char *__dst, size_t __n)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    return sub_1B0E46258();
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    *__src = a3;
    v8 = a4 & 0xFFFFFFFFFFFFFFLL;
    v5 = __src;
    return strncpy(__dst, v5, __n);
  }

  if ((a3 & 0x1000000000000000) == 0)
  {
    return sub_1B0E46258();
  }

  v5 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return strncpy(__dst, v5, __n);
}

uint64_t sub_1B0C63454(uint64_t a1)
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

void sub_1B0C6350C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_1B0391D50(a3, a4);
  }
}

uint64_t sub_1B0C63578(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5CB8, qword_1B0EDD260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0C635E0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1B0E42C68();
  swift_allocObject();
  sub_1B0E42C58();
  sub_1B0E42C28();
  __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v6 = sub_1B0E42C38();
  v7 = v6;
  v9 = v8;
  v10 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v10)
    {
      goto LABEL_14;
    }

    LODWORD(v11) = HIDWORD(v6) - v6;
    if (!__OFSUB__(HIDWORD(v6), v6))
    {
      v11 = v11;
      goto LABEL_7;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_9;
  }

  if (v10 != 2)
  {
    goto LABEL_14;
  }

  v13 = *(v6 + 16);
  v12 = *(v6 + 24);
  v14 = __OFSUB__(v12, v13);
  v11 = v12 - v13;
  if (v14)
  {
    goto LABEL_35;
  }

LABEL_7:
  if (v11 <= 0x8000)
  {
    goto LABEL_14;
  }

  if (qword_1EB6DEAA0 != -1)
  {
    goto LABEL_36;
  }

LABEL_9:
  v15 = sub_1B0E439A8();
  __swift_project_value_buffer(v15, qword_1EB6DEAA8);
  sub_1B03B2000(v7, v9);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16 = sub_1B0E43988();
  v17 = sub_1B0E458E8();

  if (!os_log_type_enabled(v16, v17))
  {
LABEL_20:
    sub_1B0391D50(v7, v9);

LABEL_33:
    __swift_destroy_boxed_opaque_existential_0Tm(a3);
    return a1;
  }

  v18 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  *v18 = 136446466;
  v31 = a1;
  v32[0] = v29;
  result = sub_1B0399D64(a1, a2, v32);
  *(v18 + 4) = result;
  *(v18 + 12) = 2048;
  if (v10 != 2)
  {
    LODWORD(v22) = HIDWORD(v7) - v7;
    if (!__OFSUB__(HIDWORD(v7), v7))
    {
      v22 = v22;
LABEL_31:
      *(v18 + 14) = v22;
      sub_1B0391D50(v7, v9);
      _os_log_impl(&dword_1B0389000, v16, v17, "Encoded plist state capture data '%{public}s' is %{iec-bytes}ld > 32KiB", v18, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      v28 = v29;
      goto LABEL_32;
    }

    goto LABEL_38;
  }

  v21 = *(v7 + 16);
  v20 = *(v7 + 24);
  v14 = __OFSUB__(v20, v21);
  v22 = v20 - v21;
  if (!v14)
  {
    goto LABEL_31;
  }

  __break(1u);
LABEL_14:
  if (qword_1EB6DEAA0 != -1)
  {
    swift_once();
  }

  v23 = sub_1B0E439A8();
  __swift_project_value_buffer(v23, qword_1EB6DEAA8);
  sub_1B03B2000(v7, v9);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16 = sub_1B0E43988();
  v24 = sub_1B0E458D8();

  if (!os_log_type_enabled(v16, v24))
  {
    goto LABEL_20;
  }

  v18 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  *v18 = 136446466;
  v31 = a1;
  v32[0] = v30;
  result = sub_1B0399D64(a1, a2, v32);
  *(v18 + 4) = result;
  *(v18 + 12) = 2048;
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      v25 = 0;
      goto LABEL_28;
    }

    v27 = *(v7 + 16);
    v26 = *(v7 + 24);
    v14 = __OFSUB__(v26, v27);
    v25 = v26 - v27;
    if (!v14)
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v25 = BYTE6(v9);
LABEL_28:
    *(v18 + 14) = v25;
    sub_1B0391D50(v7, v9);
    _os_log_impl(&dword_1B0389000, v16, v24, "Encoded plist state capture data '%{public}s' is %{iec-bytes}ld", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    v28 = v30;
LABEL_32:
    MEMORY[0x1B272C230](v28, -1, -1);
    MEMORY[0x1B272C230](v18, -1, -1);

    a1 = v31;
    goto LABEL_33;
  }

  LODWORD(v25) = HIDWORD(v7) - v7;
  if (!__OFSUB__(HIDWORD(v7), v7))
  {
    v25 = v25;
    goto LABEL_28;
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t BodyStructure.isAttachment.getter()
{
  v1 = *(v0 + 144);
  v30[8] = *(v0 + 128);
  v30[9] = v1;
  v30[10] = *(v0 + 160);
  v31 = *(v0 + 176);
  v2 = *(v0 + 80);
  v30[4] = *(v0 + 64);
  v30[5] = v2;
  v3 = *(v0 + 112);
  v30[6] = *(v0 + 96);
  v30[7] = v3;
  v4 = *(v0 + 16);
  v30[0] = *v0;
  v30[1] = v4;
  v5 = *(v0 + 48);
  v30[2] = *(v0 + 32);
  v30[3] = v5;
  if (sub_1B0717014(v30) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v7 = 0;
    if (!v6[4])
    {
      return v7 & 1;
    }

    v8 = v6[7];
    if (v8 == 1)
    {
      return v7 & 1;
    }

    v9 = v6 + 6;
    if (!v8)
    {
      goto LABEL_37;
    }
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v7 = 0;
    if (v10[12] == 1)
    {
      return v7 & 1;
    }

    v8 = v10[14];
    if (v8 == 1)
    {
      return v7 & 1;
    }

    v9 = v10 + 13;
    if (!v8)
    {
      goto LABEL_37;
    }
  }

  v11 = *v9;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = BodyStructure.DispositionKind.attachment.unsafeMutableAddressor();
  if ((*v12 != v11 || v8 != v12[1]) && (sub_1B0E46A78() & 1) == 0)
  {
    v20 = BodyStructure.DispositionKind.inline.unsafeMutableAddressor();
    if ((*v20 != v11 || v8 != v20[1]) && (sub_1B0E46A78() & 1) == 0)
    {

LABEL_36:

      goto LABEL_37;
    }

    v21 = BodyStructure.mediaType.getter();
    v23 = v22;

    v24 = Media.TopLevelType.text.unsafeMutableAddressor();
    if (*v24 == v21 && v24[1] == v23)
    {
    }

    else
    {
      v27 = sub_1B0E46A78();

      if ((v27 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_37:
    v7 = 0;
    return v7 & 1;
  }

LABEL_12:
  v13 = BodyStructure.mediaType.getter();
  v15 = v14;

  v16 = Media.TopLevelType.multipart.unsafeMutableAddressor();
  if ((*v16 != v13 || v16[1] != v15) && (sub_1B0E46A78() & 1) == 0)
  {
    v25 = Media.TopLevelType.application.unsafeMutableAddressor();
    if (*v25 == v13 && v25[1] == v15)
    {
    }

    else
    {
      v26 = sub_1B0E46A78();

      if ((v26 & 1) == 0)
      {

        v7 = 1;
        return v7 & 1;
      }
    }

    BodyStructure.mediaType.getter();

    sub_1B0E44B98();

    if ((sub_1B0E44E58() & 1) == 0)
    {
      v28 = sub_1B0E44E58();

      v7 = v28 ^ 1;
      return v7 & 1;
    }

    goto LABEL_36;
  }

  BodyStructure.mediaType.getter();

  v17 = sub_1B0E44B98();
  v19 = v18;

  if (v17 == 0x756F64656C707061 && v19 == 0xEB00000000656C62)
  {

    v7 = 1;
  }

  else
  {
    v7 = sub_1B0E46A78();
  }

  return v7 & 1;
}