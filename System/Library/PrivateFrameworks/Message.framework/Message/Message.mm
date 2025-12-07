uint64_t sub_1B038C248(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_1B038C2A8()
{
  v1 = sub_1B0E44468();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1B0E44488();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    swift_beginAccess();
    v9 = *(v0 + v8);
    if (!(v9 >> 62))
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_4;
      }

LABEL_9:
      if (*(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer))
      {

        RestartableTimer.stop()();
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1B0E46138();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  v11 = static MonotonicTime.now()();
  result = sub_1B038C460(v11);
  if (result)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1B03E9BB4();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1B038C460(uint64_t a1)
{
  v3 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7 >> 62)
  {
    goto LABEL_30;
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    while (1)
    {
      v6 = *(v1 + v6);
      v9 = v6 >> 62 ? sub_1B0E46138() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      for (i = 0; ; ++i)
      {
        if (v9 == i)
        {
          goto LABEL_21;
        }

        if ((v6 & 0xC000000000000001) == 0)
        {
          break;
        }

        v1 = MEMORY[0x1B2728410](i, v6);
        if (__OFADD__(i, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:

          return 1;
        }

LABEL_12:
        (*(*v1 + 304))();
        if (swift_getEnumCaseMultiPayload() == 2)
        {

          sub_1B038C824(v5, type metadata accessor for ConnectionState);
          return 0;
        }

        v12 = sub_1B038C824(v5, type metadata accessor for ConnectionState);
        v13 = (*(*v1 + 440))(v12);

        if (v13 <= a1)
        {
          v11 = a1 - v13;
          if (__OFSUB__(a1, v13))
          {
            goto LABEL_28;
          }
        }

        else
        {
          if (__OFSUB__(v13, a1))
          {
            goto LABEL_27;
          }

          v11 = a1 - v13;
          if (__OFSUB__(0, v13 - a1))
          {
            goto LABEL_29;
          }
        }

        if (v11 / 1000000000.0 < 60.0)
        {

          return 0;
        }
      }

      if (i < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      result = sub_1B0E46138();
      if (!result)
      {
        return result;
      }
    }

    v1 = *(v6 + 8 * i + 32);

    if (__OFADD__(i, 1))
    {
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1B038C704(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B038C764(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B038C7C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B038C824(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CommandConnection.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  return sub_1B038C9A4(v1 + v3, a1, type metadata accessor for ConnectionState);
}

uint64_t sub_1B038C908(uint64_t a1)
{
  v3 = *(a1 + 32);

  v3(v1);
}

uint64_t type metadata accessor for ConnectionState(uint64_t a1)
{
  result = qword_1EB6DCEF0;
  if (!qword_1EB6DCEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B038C9A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B038CA0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B038CA74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__uint64_t static MonotonicTime.now()()
{
  result = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t _s6LoggerVMa_0(uint64_t a1)
{
  result = qword_1EB6DCF80;
  if (!qword_1EB6DCF80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B038CB4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B038CBB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B038CC24(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B038CC7C();
  }

  return result;
}

uint64_t sub_1B038CC7C()
{
  v1 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038C9A4(v0 + v13, v12, type metadata accessor for ConnectionState);
  sub_1B038C9A4(v12, v9, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    sub_1B038D690(v9, type metadata accessor for ConnectionState);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1B038D690(v12, type metadata accessor for ConnectionState);
    v15 = v9;
    return sub_1B038D690(v15, type metadata accessor for ConnectionState);
  }

  if (EnumCaseMultiPayload == 4)
  {
    v15 = v12;
    return sub_1B038D690(v15, type metadata accessor for ConnectionState);
  }

LABEL_6:
  sub_1B038CB4C(v12, v6, type metadata accessor for ConnectionState);
  v16 = swift_getEnumCaseMultiPayload();
  result = sub_1B038D690(v6, type metadata accessor for ConnectionState);
  if (v16 == 5)
  {
    return result;
  }

  v18 = v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
  swift_beginAccess();
  v19 = *(v18 + 8);
  v20 = *(v18 + 16);
  sub_1B038C9A4(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v3, _s6LoggerVMa_0);
  v21 = v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle;
  result = swift_beginAccess();
  if (!*(v21 + 40))
  {
    __break(1u);
    return result;
  }

  v22 = static MonotonicTime.now()();
  v23 = *(v21 + 8);
  v25 = *(v21 + 16);
  v24 = *(v21 + 24);
  if (!*(v21 + 32))
  {
    *&v32 = *v21;
    *(&v32 + 1) = v23;
    LOBYTE(v33) = v25 & 1;
    *(&v33 + 1) = v24;
    if ((sub_1B0C095D8(v19, v20, v22) & 1) == 0)
    {
      sub_1B0BE1334();
    }

    v30 = v33;
    v31 = *(&v33 + 1);
    *v21 = v32;
    *(v21 + 16) = v30;
    *(v21 + 24) = v31;
    *(v21 + 32) = 0;
    if (v30)
    {
      goto LABEL_13;
    }

LABEL_19:
    RestartableTimer.start()();
    goto LABEL_20;
  }

  if (*(v21 + 32) == 1)
  {
    *&v32 = *v21;
    BYTE8(v32) = v23 & 1;
    *&v33 = v25;
    *(&v33 + 1) = v24;
    MEMORY[0x1EEE9AC00](v22);
    *(&v32 - 2) = sub_1B038DCC8;
    *(&v32 - 1) = v0;
    MEMORY[0x1EEE9AC00](v26);
    *(&v32 - 2) = sub_1B0BE2B90;
    *(&v32 - 1) = v0;
    if ((sub_1B038D750(v19, v20, sub_1B038DCC0, v27, sub_1B0BE2B98, (&v32 - 2), v28, v3) & 1) == 0)
    {
      sub_1B0BE0B70();
    }

    v29 = BYTE8(v32);
    *v21 = v32;
    *(v21 + 8) = v29;
    *(v21 + 16) = v33;
    *(v21 + 32) = 1;
    if ((v29 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

LABEL_13:
  RestartableTimer.stop()();
LABEL_20:
  sub_1B038D690(v3, _s6LoggerVMa_0);
  return swift_endAccess();
}

uint64_t sub_1B038D0D8(uint64_t a1)
{
  v1 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1B0E44468();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = static MonotonicTime.now()();
    v11 = *(v9 + 24);
    *v7 = v11;
    (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
    v12 = v11;
    LOBYTE(v11) = sub_1B0E44488();
    result = (*(v5 + 8))(v7, v4);
    if (v11)
    {
      v13 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
      swift_beginAccess();
      sub_1B038C9A4(v9 + v13, v3, type metadata accessor for ConnectionState);
      LOBYTE(v13) = ConnectionState.isClosedOrCancelled.getter();
      sub_1B038D690(v3, type metadata accessor for ConnectionState);
      if ((v13 & 1) == 0)
      {
        sub_1B0BE2170();
        sub_1B0BDFC1C(v10);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

BOOL ConnectionState.isClosedOrCancelled.getter()
{
  v1 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  sub_1B038CA0C(v0, &v10 - v5, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    sub_1B038C704(v6, type metadata accessor for ConnectionState);
    goto LABEL_5;
  }

  v8 = 1;
  if (EnumCaseMultiPayload == 3)
  {
LABEL_6:
    sub_1B038C704(v6, type metadata accessor for ConnectionState);
    return v8;
  }

  if (EnumCaseMultiPayload != 4)
  {
LABEL_5:
    sub_1B038CA0C(v0, v3, type metadata accessor for ConnectionState);
    v8 = swift_getEnumCaseMultiPayload() == 5;
    v6 = v3;
    goto LABEL_6;
  }

  return v8;
}

uint64_t type metadata accessor for UnauthenticatedStateWithTasks(uint64_t a1)
{
  result = qword_1EB6DCDC0;
  if (!qword_1EB6DCDC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B038D4B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B038D4F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5490, &unk_1B0ED0480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall RestartableTimer.start()()
{
  v1 = sub_1B0E44468();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 32);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1B0E44488();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (*(v0 + 24) == 1)
    {
      swift_getObjectType();
      sub_1B0E45AA8();
      *(v0 + 24) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B038D690(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B038D6F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B038D750(uint64_t a1, char a2, void *(*a3)(char **__return_ptr), uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v67 = a8;
  v68 = a6;
  v14 = a2 & 1;
  v15 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v65 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v26 = MEMORY[0x1EEE9AC00](v22);
  *v8 = a1;
  *(v8 + 8) = v14;
  if (a2)
  {
    return 1;
  }

  v28 = v25;
  v29 = &v65 - v24;
  v66 = v23;
  result = (a3)(v70, v26);
  if (v70[1])
  {
    v20 = v70[0];
    v30 = v71;
    if (v71 <= a7)
    {
LABEL_15:
      v31 = a7 - v30;
      if (!__OFSUB__(a7, v30))
      {
LABEL_16:
        v33 = v31 / 1000000000.0;
        v34 = *(v8 + 24);
        if (v34 < v33)
        {
          sub_1B038D4F8(v70);
          return 0;
        }

        v35 = *(v8 + 16);
        if (v35 <= a7)
        {
          v36 = a7 - v35;
          if (!__OFSUB__(a7, v35))
          {
LABEL_26:
            if (v36 / 1000000000.0 <= 25.0)
            {
              sub_1B038D4F8(v70);
              return 1;
            }

            *(v8 + 16) = a7;
            v48 = v67;
            v49 = v29;
            sub_1B041C97C(v67, v29);
            v50 = v28;
            sub_1B041C97C(v48, v28);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v51 = sub_1B0E43988();
            v52 = sub_1B0E458D8();
            sub_1B038D4F8(v70);
            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v69 = v54;
              *v53 = 68158978;
              *(v53 + 4) = 2;
              *(v53 + 8) = 256;
              v55 = v66;
              v56 = *(v50 + *(v66 + 20));
              sub_1B041C9E0(v50);
              *(v53 + 10) = v56;
              *(v53 + 11) = 2082;
              v57 = *(v49 + *(v55 + 20) + 4);
              sub_1B041C9E0(v49);
              v58 = ConnectionID.debugDescription.getter(v57);
              v60 = sub_1B0399D64(v58, v59, &v69);

              *(v53 + 13) = v60;
              *(v53 + 21) = 2082;
              sub_1B038D4F8(v70);
              v61 = Tag.debugDescription.getter(v20 & 0xFFFFFFFF000000FFLL);
              v63 = sub_1B0399D64(v61, v62, &v69);

              *(v53 + 23) = v63;
              *(v53 + 31) = 2048;
              *(v53 + 33) = v33;
              *(v53 + 41) = 2048;
              *(v53 + 43) = v34;
              _os_log_impl(&dword_1B0389000, v51, v52, "[%.*hhx-%{public}s] %{public}s IDLE is %f seconds old (< %f). Not refreshing.", v53, 0x33u);
              swift_arrayDestroy();
              MEMORY[0x1B272C230](v54, -1, -1);
              MEMORY[0x1B272C230](v53, -1, -1);

              return 1;
            }

            sub_1B041C9E0(v28);
            sub_1B038D4F8(v70);

            v64 = v49;
            goto LABEL_34;
          }

          goto LABEL_38;
        }

        if (!__OFSUB__(v35, a7))
        {
          v36 = a7 - v35;
          if (!__OFSUB__(0, v35 - a7))
          {
            goto LABEL_26;
          }

          __break(1u);
LABEL_23:
          v37 = v67;
          sub_1B041C97C(v67, v20);
          sub_1B041C97C(v37, v17);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v38 = sub_1B0E43988();
          v39 = sub_1B0E458D8();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v69 = v41;
            *v40 = 68158210;
            *(v40 + 4) = 2;
            *(v40 + 8) = 256;
            v42 = v66;
            v43 = v17[*(v66 + 20)];
            sub_1B041C9E0(v17);
            *(v40 + 10) = v43;
            *(v40 + 11) = 2082;
            v44 = *(v20 + *(v42 + 20) + 4);
            sub_1B041C9E0(v20);
            v45 = ConnectionID.debugDescription.getter(v44);
            v47 = sub_1B0399D64(v45, v46, &v69);

            *(v40 + 13) = v47;
            _os_log_impl(&dword_1B0389000, v38, v39, "[%.*hhx-%{public}s] Not sending IDLE. No mailbox selected.", v40, 0x15u);
            __swift_destroy_boxed_opaque_existential_0(v41);
            MEMORY[0x1B272C230](v41, -1, -1);
            MEMORY[0x1B272C230](v40, -1, -1);

            return 1;
          }

          sub_1B041C9E0(v17);

          v64 = v20;
LABEL_34:
          sub_1B041C9E0(v64);
          return 1;
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (__OFSUB__(v71, a7))
    {
      __break(1u);
      goto LABEL_36;
    }

    v31 = a7 - v71;
    if (!__OFSUB__(0, v71 - a7))
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  result = a5(result);
  if ((result & 1) == 0)
  {
    goto LABEL_23;
  }

  v32 = a7 - a1;
  if (a7 < a1)
  {
    if (__OFSUB__(a1, a7))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v32 = a7 - a1;
    if (!__OFSUB__(0, a1 - a7))
    {
      return v32 / 1000000000.0 <= 0.8;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (!__OFSUB__(a7, a1))
  {
    return v32 / 1000000000.0 <= 0.8;
  }

LABEL_40:
  __break(1u);
  return result;
}

double sub_1B038DCD0@<D0>(void (*a1)(_OWORD *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  a1(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_1B038DD1C@<D0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  v3 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C27108(v3, v6);

  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

char *sub_1B038DDA8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size_0(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 25;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 3);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[8 * v11])
    {
      memmove(v16, v17, 8 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t get_enum_tag_for_layout_string_13IMAP2Behavior6UpdateO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1B038DED0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1B0E44468();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v2 + 16);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1B0E44488();
  result = (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  swift_beginAccess();
  v11 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B039F32C(v11);
  result = swift_endAccess();
  v12 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_isProcessingUpdates;
  if (*(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_isProcessingUpdates))
  {
    return result;
  }

  *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_isProcessingUpdates) = 1;
  sub_1B038E158();
  sub_1B038F468();
  sub_1B038F66C();
  swift_beginAccess();
  v13 = StateWithTasks.environment.getter();
  result = swift_endAccess();
  if ((v13 & 0x100) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer))
    {

      RestartableTimer.start()();

      if (*(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections))
      {

        sub_1B03C86BC();
      }

      goto LABEL_7;
    }

LABEL_13:
    __break(1u);
    return result;
  }

LABEL_7:
  v14 = v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_powerTelemetry;
  swift_beginAccess();
  if (*(v14 + 16))
  {
    swift_beginAccess();
    v15 = StateWithTasks.appState.getter();
    v16 = StateWithTasks.runningSyncRequests.getter();
    swift_endAccess();
    sub_1B03CEA90(v15 & 1, v16, v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger);
    swift_endAccess();
  }

  else
  {
    result = swift_endAccess();
  }

  *(v2 + v12) = 0;
  return result;
}

uint64_t sub_1B038E158()
{
  v1 = sub_1B0C46FC8();
  v2 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections;
  v3 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections);
  if (v3 && (v4 = *(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionTraits), _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v5 = sub_1B038F0C4(v4, v1), , , (v5 & 1) == 0) && *(v0 + v2))
  {

    sub_1B0C4CF04(v1);
  }

  else
  {
  }
}

uint64_t RunningSyncRequests.kinds.getter@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1B038E278(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1B038E278(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_1B04009C8(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  result = sub_1B0E460B8();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 56) + 32 * result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_1B04009C8((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1B0425168(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1B0425168(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1B038E498(uint64_t a1, char a2)
{
  v70 = *(a1 + 16);
  if (!v70)
  {
    v3 = MEMORY[0x1E69E7CD0];
LABEL_99:
    if (a2)
    {
      sub_1B0E46C28();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v60 = sub_1B0E46CB8();
      v61 = -1 << *(v3 + 32);
      v62 = v60 & ~v61;
      if ((*(v3 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62))
      {
        v63 = ~v61;
        while (1)
        {
          v64 = *(*(v3 + 48) + v62);
          if (v64 <= 2 && v64 != 1 && v64 != 2)
          {
            break;
          }

          v65 = sub_1B0E46A78();

          if (v65)
          {
            return v3;
          }

          v62 = (v62 + 1) & v63;
          if (((*(v3 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
          {
            goto LABEL_107;
          }
        }
      }

      else
      {
LABEL_107:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1B0C49FDC(0, v62, isUniquelyReferenced_nonNull_native);
      }
    }

    return v3;
  }

  v2 = 0;
  v69 = a1 + 32;
  v3 = MEMORY[0x1E69E7CD0];
  while (1)
  {
    v7 = *(v69 + v2);
    if (v7 == 2)
    {
      break;
    }

    if (v7 == 3)
    {
      sub_1B0E46C28();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v14 = sub_1B0E46CB8();
      v15 = -1 << *(v3 + 32);
      v16 = v14 & ~v15;
      if (((*(v3 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
LABEL_24:
        v20 = swift_isUniquelyReferenced_nonNull_native();
        v21 = *(v3 + 16);
        if (*(v3 + 24) > v21)
        {
          if ((v20 & 1) == 0)
          {
            sub_1B0C4A328();
          }
        }

        else
        {
          if (v20)
          {
            sub_1B0C49CF8(v21 + 1);
          }

          else
          {
            sub_1B0C4A468(v21 + 1);
          }

          sub_1B0E46C28();
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          v38 = sub_1B0E46CB8();
          v39 = -1 << *(v3 + 32);
          v16 = v38 & ~v39;
          if ((*(v3 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
          {
            v40 = ~v39;
            do
            {
              v41 = *(*(v3 + 48) + v16);
              if (v41 >= 4)
              {
                goto LABEL_113;
              }

              v42 = sub_1B0E46A78();

              if (v42)
              {
                goto LABEL_114;
              }

              v16 = (v16 + 1) & v40;
            }

            while (((*(v3 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
          }
        }

        *(v3 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v16;
        *(*(v3 + 48) + v16) = 4;
        v4 = *(v3 + 16);
        v5 = __OFADD__(v4, 1);
        v6 = v4 + 1;
        if (v5)
        {
          goto LABEL_110;
        }

        goto LABEL_6;
      }

      v17 = ~v15;
      while (1)
      {
        v18 = *(*(v3 + 48) + v16);
        if (v18 >= 4)
        {
          break;
        }

        v19 = sub_1B0E46A78();

        if (v19)
        {
          goto LABEL_7;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v3 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

LABEL_97:

      goto LABEL_7;
    }

    if (v7 == 4)
    {
      goto LABEL_7;
    }

    v8 = v3 + 56;
    if (v7)
    {
      sub_1B0E46C28();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v9 = sub_1B0E46CB8();
      v10 = ~(-1 << *(v3 + 32));
      for (i = v9 & v10; ((*(v8 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0; i = (i + 1) & v10)
      {
        v12 = *(*(v3 + 48) + i);
        if (v12 > 1 && v12 != 3 && v12 != 4)
        {
          goto LABEL_97;
        }

        v13 = sub_1B0E46A78();

        if (v13)
        {
          goto LABEL_7;
        }
      }

      v34 = swift_isUniquelyReferenced_nonNull_native();
      v35 = *(v3 + 16);
      if (*(v3 + 24) <= v35)
      {
        if (v34)
        {
          sub_1B0C49CF8(v35 + 1);
        }

        else
        {
          sub_1B0C4A468(v35 + 1);
        }

        sub_1B0E46C28();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v49 = sub_1B0E46CB8();
        v50 = -1 << *(v3 + 32);
        i = v49 & ~v50;
        if ((*(v3 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i))
        {
          v51 = ~v50;
          do
          {
            v52 = *(*(v3 + 48) + i);
            if (v52 > 1 && v52 != 3 && v52 != 4)
            {
              goto LABEL_113;
            }

            v53 = sub_1B0E46A78();

            if (v53)
            {
              goto LABEL_114;
            }

            i = (i + 1) & v51;
          }

          while (((*(v3 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0);
        }
      }

      else if ((v34 & 1) == 0)
      {
        sub_1B0C4A328();
      }

      *(v3 + ((i >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << i;
      *(*(v3 + 48) + i) = 2;
      v54 = *(v3 + 16);
      v5 = __OFADD__(v54, 1);
      v6 = v54 + 1;
      if (v5)
      {
        goto LABEL_112;
      }
    }

    else
    {
      sub_1B0E46C28();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v30 = sub_1B0E46CB8();
      v31 = ~(-1 << *(v3 + 32));
      for (j = v30 & v31; ((*(v8 + ((j >> 3) & 0xFFFFFFFFFFFFFF8)) >> j) & 1) != 0; j = (j + 1) & v31)
      {
        if (*(*(v3 + 48) + j) <= 2u && *(*(v3 + 48) + j) && *(*(v3 + 48) + j) != 2)
        {
          goto LABEL_97;
        }

        v33 = sub_1B0E46A78();

        if (v33)
        {
          goto LABEL_7;
        }
      }

      v36 = swift_isUniquelyReferenced_nonNull_native();
      v37 = *(v3 + 16);
      if (*(v3 + 24) <= v37)
      {
        if (v36)
        {
          sub_1B0C49CF8(v37 + 1);
        }

        else
        {
          sub_1B0C4A468(v37 + 1);
        }

        sub_1B0E46C28();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v55 = sub_1B0E46CB8();
        v56 = -1 << *(v3 + 32);
        j = v55 & ~v56;
        if ((*(v3 + 56 + ((j >> 3) & 0xFFFFFFFFFFFFFF8)) >> j))
        {
          v57 = ~v56;
          while (*(*(v3 + 48) + j) > 2u || !*(*(v3 + 48) + j) || *(*(v3 + 48) + j) == 2)
          {
            v58 = sub_1B0E46A78();

            if (v58)
            {
              goto LABEL_114;
            }

            j = (j + 1) & v57;
            if (((*(v3 + 56 + ((j >> 3) & 0xFFFFFFFFFFFFFF8)) >> j) & 1) == 0)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_113;
        }
      }

      else if ((v36 & 1) == 0)
      {
        sub_1B0C4A328();
      }

LABEL_94:
      *(v3 + ((j >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << j;
      *(*(v3 + 48) + j) = 1;
      v59 = *(v3 + 16);
      v5 = __OFADD__(v59, 1);
      v6 = v59 + 1;
      if (v5)
      {
        goto LABEL_111;
      }
    }

LABEL_6:
    *(v3 + 16) = v6;
LABEL_7:
    if (++v2 == v70)
    {
      goto LABEL_99;
    }
  }

  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v22 = sub_1B0E46CB8();
  v23 = -1 << *(v3 + 32);
  v24 = v22 & ~v23;
  if ((*(v3 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
  {
    v25 = ~v23;
    do
    {
      v26 = *(*(v3 + 48) + v24);
      if (v26 > 2 && v26 != 4)
      {
        goto LABEL_97;
      }

      v27 = sub_1B0E46A78();

      if (v27)
      {
        goto LABEL_7;
      }

      v24 = (v24 + 1) & v25;
    }

    while (((*(v3 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0);
  }

  v28 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v3 + 16);
  if (*(v3 + 24) > v29)
  {
    if ((v28 & 1) == 0)
    {
      sub_1B0C4A328();
    }

LABEL_65:
    *(v3 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v24;
    *(*(v3 + 48) + v24) = 3;
    v48 = *(v3 + 16);
    v5 = __OFADD__(v48, 1);
    v6 = v48 + 1;
    if (v5)
    {
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    goto LABEL_6;
  }

  if (v28)
  {
    sub_1B0C49CF8(v29 + 1);
  }

  else
  {
    sub_1B0C4A468(v29 + 1);
  }

  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v43 = sub_1B0E46CB8();
  v44 = -1 << *(v3 + 32);
  v24 = v43 & ~v44;
  if (((*(v3 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
  {
    goto LABEL_65;
  }

  v45 = ~v44;
  while (1)
  {
    v46 = *(*(v3 + 48) + v24);
    if (v46 > 2 && v46 != 4)
    {
      break;
    }

    v47 = sub_1B0E46A78();

    if (v47)
    {
      goto LABEL_114;
    }

    v24 = (v24 + 1) & v45;
    if (((*(v3 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      goto LABEL_65;
    }
  }

LABEL_113:

LABEL_114:
  result = sub_1B0E46B98();
  __break(1u);
  return result;
}

uint64_t sub_1B038F0C4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(result + 56);
  v28 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v29 = v9;
  v30 = result;
  if ((v7 & v5) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    sub_1B0E46C28();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v16 = sub_1B0E46CB8();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v31 = v12;
    v19 = ~v17;
    while (1)
    {
      v20 = *(*(a2 + 48) + v18);
      if (v20 <= 1)
      {
        break;
      }

      if (v20 == 2)
      {
        v22 = 0xE800000000000000;
        v21 = 0x6574616E6F646572;
        if (v15 <= 1)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v20 == 3)
        {
          v21 = 0x6369646F69726570;
        }

        else
        {
          v21 = 1752397168;
        }

        if (v20 == 3)
        {
          v22 = 0xE800000000000000;
        }

        else
        {
          v22 = 0xE400000000000000;
        }

        if (v15 <= 1)
        {
          goto LABEL_43;
        }
      }

LABEL_24:
      v23 = 0x6369646F69726570;
      if (v15 != 3)
      {
        v23 = 1752397168;
      }

      v24 = 0xE400000000000000;
      if (v15 == 3)
      {
        v24 = 0xE800000000000000;
      }

      if (v15 == 2)
      {
        v25 = 0x6574616E6F646572;
      }

      else
      {
        v25 = v23;
      }

      if (v15 == 2)
      {
        v26 = 0xE800000000000000;
      }

      else
      {
        v26 = v24;
      }

      if (v21 == v25)
      {
        goto LABEL_49;
      }

LABEL_50:
      v27 = sub_1B0E46A78();

      if (v27)
      {
        goto LABEL_54;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(*(a2 + 48) + v18))
    {
      v21 = 0x6C69662D6B636162;
    }

    else
    {
      v21 = 0x72657865646E69;
    }

    if (*(*(a2 + 48) + v18))
    {
      v22 = 0xE90000000000006CLL;
    }

    else
    {
      v22 = 0xE700000000000000;
    }

    if (v15 > 1)
    {
      goto LABEL_24;
    }

LABEL_43:
    if (!v15)
    {
      v26 = 0xE700000000000000;
      if (v21 == 0x72657865646E69)
      {
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    v26 = 0xE90000000000006CLL;
    if (v21 != 0x6C69662D6B636162)
    {
      goto LABEL_50;
    }

LABEL_49:
    if (v22 != v26)
    {
      goto LABEL_50;
    }

LABEL_54:
    v9 = v29;
    v3 = v30;
    v8 = v31;
  }

  while (v31);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v28 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

int64_t sub_1B038F468()
{
  v1 = type metadata accessor for StateWithTasks(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static MonotonicTime.now()();
  v6 = result;
  v7 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_lastLoggedSyncRequestsAt;
  v8 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_lastLoggedSyncRequestsAt);
  v9 = __OFSUB__(result, v8);
  v10 = result - v8;
  if (result >= v8)
  {
LABEL_6:
    if (!v9)
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  if (__OFSUB__(v8, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = __OFSUB__(0, v8 - result);
  v10 = result - v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  if (v10 / 1000000000.0 > 20.0)
  {
    v11 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
    swift_beginAccess();
    (*(v2 + 16))(v4, v0 + v11, v1);
    StateWithTasks.logSyncRequests()();
    result = (*(v2 + 8))(v4, v1);
    *(v0 + v7) = v6;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13IMAP2Protocol9NamespaceVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t type metadata accessor for RunningTask(uint64_t a1)
{
  result = qword_1EB6DE030;
  if (!qword_1EB6DE030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B038F66C()
{
  v1 = v0;
  v2 = type metadata accessor for StateWithTasks(0);
  v41 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections;
  v4 = *&v0[OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections];
  if (!v4)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingUpdates;
  v42 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_externalState;
  v48 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_shouldLogForFirstConnection;
  v49 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;

  swift_beginAccess();
  v6 = *&v1[v5];
  v47 = v5;
  *&v1[v5] = MEMORY[0x1E69E7CC0];
  sub_1B038FD58(v6);
  v7 = v6 + 16;
  v8 = *(v6 + 16);
  if (v8)
  {
    v39 = 0;
    v45 = (v41 + 16);
    v44 = (v41 + 8);
    v38 = v4;
    v40 = v2;
    do
    {
      v9 = 0;
      while (1)
      {
        if (v8 == v9)
        {
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v10 = *(v6 + 8 * v9 + 32);
        if (v10 >> 62 == 1)
        {
          v11 = v10 & 0x3FFFFFFFFFFFFFFFLL;
          if (*(v11 + 24) == 1 && ((*(v11 + 16) >> 59) & 0x1E | (*(v11 + 16) >> 2) & 1) == 2)
          {
            break;
          }
        }

        if (v8 == ++v9)
        {
          goto LABEL_22;
        }
      }

      v12 = v42;
      swift_beginAccess();
      sub_1B0398EFC(&v1[v12], &qword_1EB6E5AB0, &unk_1B0EDC3F0);
      v13 = type metadata accessor for Activity(0);
      (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
      swift_endAccess();
      v14 = *&v1[v43];
      if (v14)
      {
        v15 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
        swift_beginAccess();
        v16 = *(v14 + v15);
        v17 = v16 >> 62 ? sub_1B0E46138() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v2 = v40;
        if (v17)
        {
          if (v17 >= 1)
          {

            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            for (i = 0; i != v17; ++i)
            {
              if ((v16 & 0xC000000000000001) != 0)
              {
                v19 = MEMORY[0x1B2728410](i, v16);
              }

              else
              {
                v19 = *(v16 + 8 * i + 32);
              }

              (*(*v19 + 592))();
            }

            v4 = v38;
            v2 = v40;
            goto LABEL_22;
          }

LABEL_53:
          __break(1u);
          goto LABEL_54;
        }
      }

LABEL_22:
      v20 = *v7;
      v21 = 32;
      while (1)
      {
        if (!v20)
        {
          __break(1u);
          goto LABEL_51;
        }

        v22 = *(v6 + v21);
        if (v22 >> 62 == 1)
        {
          v23 = v22 & 0x3FFFFFFFFFFFFFFFLL;
          if (*(v23 + 24))
          {
            v24 = *(v23 + 16);
            if (((v24 >> 59) & 0x1E | (v24 >> 2) & 1) == 3 && *((v24 & 0xFFFFFFFFFFFFFFBLL) + 0x14) == 1)
            {
              break;
            }
          }
        }

        --v20;
        v21 += 8;
        if (!--v8)
        {
          goto LABEL_30;
        }
      }

      v39 = 1;
LABEL_30:
      sub_1B0C47144(v6);

      sub_1B0C464D4(v6);
      swift_beginAccess();

      StateWithTasks.update(updates:send:persist:)(v6, sub_1B03C7F74, v4, sub_1B0C47F88, v1);
      swift_endAccess();

      if (v1[v48] == 1)
      {
        v25 = v49;
        v1[v48] = 0;
        v26 = v46;
        (*v45)(v46, &v1[v25], v2);
        StateWithTasks.logForDidCreateFirstConnection()();
        (*v44)(v26, v2);
      }

      v6 = *&v1[v47];
      *&v1[v47] = MEMORY[0x1E69E7CC0];
      sub_1B038FD58(v6);
      v7 = v6 + 16;
      v8 = *(v6 + 16);
    }

    while (v8);

    if (v39)
    {
      v27 = static MonotonicTime.now()();
      sub_1B0C4D04C(v27);
    }
  }

  else
  {
  }

  v28 = v49;
  swift_beginAccess();
  v29 = v41;
  v30 = &v1[v28];
  v31 = v46;
  (*(v41 + 16))(v46, v30, v2);
  StateWithTasks.connectionLimitsAndUsage.getter(v50);
  (*(v29 + 8))(v31, v2);
  sub_1B03CC120();
  v32 = v52;
  v54 = v51;
  sub_1B03CE028(&v54);
  v53 = v32;
  sub_1B03CE07C(&v53);
  v33 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v7 = *(v4 + v33);
  if (v7 >> 62)
  {
LABEL_54:
    v34 = sub_1B0E46138();
  }

  else
  {
    v34 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!v34)
  {
    goto LABEL_48;
  }

  v35 = 0;
  while ((v7 & 0xC000000000000001) != 0)
  {
    v36 = MEMORY[0x1B2728410](v35, v7);
    v37 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_47;
    }

LABEL_43:
    (*(*v36 + 584))();

    ++v35;
    if (v37 == v34)
    {
      goto LABEL_48;
    }
  }

  if (v35 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_52;
  }

  v36 = *(v7 + 8 * v35 + 32);

  v37 = v35 + 1;
  if (!__OFADD__(v35, 1))
  {
    goto LABEL_43;
  }

LABEL_47:
  __break(1u);
LABEL_48:
}

void sub_1B038FD58(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Engine.Logger(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = *(a1 + 16);
  if (!v16)
  {
    return;
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    if (v16 == v17)
    {
      v22 = v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
      switch(v18)
      {
        case 3:
          sub_1B03903A8(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v9, type metadata accessor for Engine.Logger);

          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v23 = sub_1B0E43988();
          v29 = sub_1B0E439A8();
          (*(*(v29 - 8) + 8))(v9, v29);
          v25 = sub_1B0E458C8();
          if (os_log_type_enabled(v23, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 68158208;
            *(v26 + 4) = 2;
            *(v26 + 8) = 256;
            *(v26 + 10) = *(v22 + *(v4 + 20));

            *(v26 + 11) = 2048;
            *(v26 + 13) = v16;

            v27 = "[%.*hhx] Processing %ld update(s) from network and persistence";
            goto LABEL_20;
          }

          break;
        case 2:
          sub_1B03903A8(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v12, type metadata accessor for Engine.Logger);

          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v23 = sub_1B0E43988();
          v28 = sub_1B0E439A8();
          (*(*(v28 - 8) + 8))(v12, v28);
          v25 = sub_1B0E458C8();
          if (os_log_type_enabled(v23, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 68158208;
            *(v26 + 4) = 2;
            *(v26 + 8) = 256;
            *(v26 + 10) = *(v22 + *(v4 + 20));

            *(v26 + 11) = 2048;
            *(v26 + 13) = v16;

            v27 = "[%.*hhx] Processing %ld update(s) from persistence";
            goto LABEL_20;
          }

          break;
        case 1:
          sub_1B03903A8(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v15, type metadata accessor for Engine.Logger);

          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v23 = sub_1B0E43988();
          v24 = sub_1B0E439A8();
          (*(*(v24 - 8) + 8))(v15, v24);
          v25 = sub_1B0E458C8();
          if (os_log_type_enabled(v23, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 68158208;
            *(v26 + 4) = 2;
            *(v26 + 8) = 256;
            *(v26 + 10) = *(v22 + *(v4 + 20));

            *(v26 + 11) = 2048;
            *(v26 + 13) = v16;

            v27 = "[%.*hhx] Processing %ld update(s) from network";
LABEL_20:
            _os_log_impl(&dword_1B0389000, v23, v25, v27, v26, 0x15u);
            MEMORY[0x1B272C230](v26, -1, -1);

            return;
          }

          break;
        default:
          sub_1B03903A8(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v6, type metadata accessor for Engine.Logger);

          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v30 = sub_1B0E43988();
          v31 = sub_1B0E439A8();
          (*(*(v31 - 8) + 8))(v6, v31);
          v32 = sub_1B0E458C8();
          if (os_log_type_enabled(v30, v32))
          {
            v33 = swift_slowAlloc();
            *v33 = 68158208;
            *(v33 + 4) = 2;
            *(v33 + 8) = 256;
            *(v33 + 10) = *(v22 + *(v4 + 20));

            *(v33 + 11) = 2048;
            *(v33 + 13) = v16;

            _os_log_impl(&dword_1B0389000, v30, v32, "[%.*hhx] Processing %ld update(s)", v33, 0x15u);
            MEMORY[0x1B272C230](v33, -1, -1);

            return;
          }

          goto LABEL_25;
      }

LABEL_25:

      return;
    }

    if (v17 >= v16)
    {
      break;
    }

    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_28;
    }

    v20 = *(a1 + 8 * v17++ + 32) >> 62;
    if (v20 != 2)
    {
      v17 = v19;
      if (v20)
      {
        v21 = 2;
      }

      else
      {
        v21 = 1;
      }

      v18 |= v21;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_1B0390340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03903A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for StateWithTasks(uint64_t a1)
{
  result = qword_1EB6DDC50;
  if (!qword_1EB6DDC50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B0390488(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for State.Logger(uint64_t a1)
{
  result = qword_1EB6DD200;
  if (!qword_1EB6DD200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B0390514(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0390574(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *tracingLog.unsafeMutableAddressor()
{
  if (qword_1EB6DEA98 != -1)
  {
    swift_once();
  }

  return &tracingLog;
}

uint64_t sub_1B0390664(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_1B0390678(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_1B03906B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0390720(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t tracingSignposter.unsafeMutableAddressor()
{
  if (qword_1EB6DEA80 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E43868();

  return __swift_project_value_buffer(v0, tracingSignposter);
}

void sub_1B03907EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v99 = a2;
  v89 = a1;
  v88 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v88);
  v97 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v2 + 184);
  v6 = *(v2 + 216);
  v110 = *(v2 + 200);
  v111[0] = v6;
  *(v111 + 12) = *(v2 + 228);
  v108 = *(v2 + 168);
  v109 = v5;
  v98 = sub_1B03A47F4();
  memcpy(v107, v2, sizeof(v107));
  v7 = LOBYTE(v107[3]);
  v8 = BYTE1(v107[3]);
  v9 = v107[4];
  v10 = LOBYTE(v107[5]);
  v11 = BYTE2(v107[2]);
  v12 = v107[6];
  v13 = v107[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = sub_1B0397D14();
  v15 = v14;
  v101 = v11;
  if (v9 != 3 && v9 != 2)
  {
    v17 = sub_1B0BAE1A4(v14);
    if ((v8 & 1) == 0)
    {
      if (v9 == 1)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            v18 = 0;
            v96 = 0x100000000;
            v19 = 512;
LABEL_163:
            v95 = v19;
            goto LABEL_19;
          }

LABEL_162:
          v18 = 0;
          v96 = 0;
          v7 = 1;
          v19 = 256;
          goto LABEL_163;
        }
      }

      else if (!v9 && v7)
      {
        if (v7 != 1)
        {
          v7 = 0;
          v95 = 0;
          v96 = 0;
          v18 = 0;
          goto LABEL_19;
        }

        goto LABEL_162;
      }
    }

    v7 = (v17 & 1) == 0;
    if (v17)
    {
      v20 = 0;
    }

    else
    {
      v20 = 0x100000000;
    }

    v21 = 512;
    if (v17)
    {
      v21 = 0;
    }

    v95 = v21;
    v96 = v20;
    v18 = (v17 & 1) == 0;
LABEL_19:
    v22 = sub_1B0397E04(&unk_1F2710548, v13);
    if (v22)
    {
      v23 = v7;
    }

    else
    {
      v23 = 1;
    }

    LODWORD(v94) = v23;
    v24 = (v22 & 1) == 0 || v18;
    LODWORD(v93) = v24;
    v25 = sub_1B0BAE1A4(v15);
    v26 = sub_1B039109C(v13);

    v27 = v26 ^ 1;
    if (v26 & 1) == 0 && (v8)
    {
      v27 = sub_1B0BAE1A4(v15);
      v26 = v27 ^ 1;
    }

    v28 = *(v15 + 16);

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v34 = 0x10000;
        if ((v27 & 1) == 0)
        {
          v34 = 0;
        }

        v29 = 0x20000;
        if (v26)
        {
          v29 = v34;
        }

        v33 = v95;
        if (v12 >= 3989)
        {
          v33 = 512;
        }

        if (((v28 == 0) & v8) != 0)
        {
          v30 = 0x100000000000000;
        }

        else
        {
          v30 = 0;
        }

        v31 = 0x10000000000;
        if ((v25 & 1) == 0)
        {
          v31 = 0;
        }

        if ((v93 & 1) == 0)
        {
          v35 = 0;
          v16 = v89;
          v32 = v94;
          goto LABEL_71;
        }

        v16 = v89;
        v32 = v94;
      }

      else
      {
        if (v27)
        {
          v29 = 0x10000;
        }

        else
        {
          v29 = 0;
        }

        v33 = v95;
        if (v12 >= 3989)
        {
          v33 = 512;
        }

        if (((v28 == 0) & v8) != 0)
        {
          v30 = 0x100000000000000;
        }

        else
        {
          v30 = 0;
        }

        v31 = 0x10000000000;
        if ((v25 & 1) == 0)
        {
          v31 = 0;
        }

        v16 = v89;
        v32 = v94;
        if ((v93 & 1) == 0)
        {
          v35 = 0;
          goto LABEL_71;
        }
      }
    }

    else
    {
      v29 = 0;
      if (v10)
      {
        v35 = 0;
        v33 = v95;
        if (v12 >= 3989)
        {
          v33 = 512;
        }

        if (((v28 == 0) & v8) != 0)
        {
          v30 = 0x100000000000000;
        }

        else
        {
          v30 = 0;
        }

        v31 = 0x10000000000;
        if ((v25 & 1) == 0)
        {
          v31 = 0;
        }

        v16 = v89;
        v32 = v94;
        if ((v93 & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      else
      {
        if (((v28 == 0) & v8) != 0)
        {
          v30 = 0x100000000000000;
        }

        else
        {
          v30 = 0;
        }

        v31 = 0x10000000000;
        if ((v25 & 1) == 0)
        {
          v31 = 0;
        }

        v32 = 1;
        v33 = 512;
        v16 = v89;
      }
    }

    v35 = 0x1000000;
LABEL_71:
    v91 = v35;
    v92 = v31;
    v93 = v33;
    v94 = v30;
    v95 = v29;
    v90 = v32;
    goto LABEL_72;
  }

  v94 = 0x100000000000000;
  v95 = 0;
  v96 = 0x100000000;
  v91 = 0x1000000;
  v92 = 0;
  v93 = 512;
  v90 = 1;
  v16 = v89;
LABEL_72:
  LODWORD(v89) = v101;
  sub_1B0397EC0(v16, v99);
  memcpy(v106, v3, sizeof(v106));
  v36 = LOBYTE(v106[3]);
  v37 = BYTE1(v106[3]);
  v38 = v106[4];
  v39 = LOBYTE(v106[5]);
  v40 = BYTE2(v106[2]);
  v41 = v106[6];
  v42 = v106[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v43 = sub_1B0397D14();
  v44 = v43;
  v100 = v40;
  if (v38 == 2 || v38 == 3)
  {

    v45 = 0;
    v46 = 0;
    v47 = 0x100000000000000;
    v48 = 0x100000000;
    v49 = 0x1000000;
    v50 = 512;
    v51 = 1;
    v52 = v96;
    v53 = v97;
    v54 = v98;
    v55 = v94;
    v56 = v95;
    v57 = v92;
    v58 = v93;
    v60 = v90;
    v59 = v91;
    v61 = v89;
    goto LABEL_143;
  }

  v62 = sub_1B0BAE1A4(v43);
  if ((v37 & 1) == 0)
  {
    if (v38 == 1)
    {
      if (v36)
      {
        if (v36 == 1)
        {
          v63 = 0;
          v48 = 0x100000000;
          v64 = 512;
LABEL_165:
          v86 = v64;
          goto LABEL_90;
        }

LABEL_164:
        v63 = 0;
        v48 = 0;
        v36 = 1;
        v64 = 256;
        goto LABEL_165;
      }
    }

    else if (!v38 && v36)
    {
      if (v36 != 1)
      {
        v36 = 0;
        v86 = 0;
        v63 = 0;
        v48 = 0;
        goto LABEL_90;
      }

      goto LABEL_164;
    }
  }

  v36 = (v62 & 1) == 0;
  if (v62)
  {
    v48 = 0;
  }

  else
  {
    v48 = 0x100000000;
  }

  v65 = 512;
  if (v62)
  {
    v65 = 0;
  }

  v86 = v65;
  v63 = (v62 & 1) == 0;
LABEL_90:
  v66 = sub_1B0397E04(&unk_1F2710548, v42);
  if (v66)
  {
    v67 = v36;
  }

  else
  {
    v67 = 1;
  }

  v68 = (v66 & 1) == 0 || v63;
  v84 = v68;
  v85 = v67;
  v87 = sub_1B0BAE1A4(v44);
  v69 = sub_1B039109C(v42);

  v70 = v69 ^ 1;
  if (v69 & 1) == 0 && (v37)
  {
    v70 = sub_1B0BAE1A4(v44);
    v69 = v70 ^ 1;
  }

  v71 = *(v44 + 16);

  v72 = (v71 == 0) & v37;
  if (v39 > 1)
  {
    if (v39 == 2)
    {
      v45 = 0x10000;
      if ((v70 & 1) == 0)
      {
        v45 = 0;
      }

      if ((v69 & 1) == 0)
      {
        v45 = 0x20000;
      }

      v50 = v86;
      if (v41 >= 3989)
      {
        v50 = 512;
      }

      v73 = v72 == 0;
      v47 = 0x100000000000000;
      if (v73)
      {
        v47 = 0;
      }

      v46 = 0x10000000000;
      if ((v87 & 1) == 0)
      {
        v46 = 0;
      }

      v54 = v98;
      if ((v84 & 1) == 0)
      {
        v49 = 0;
        v52 = v96;
        v53 = v97;
        v55 = v94;
        v56 = v95;
        v57 = v92;
        v58 = v93;
        v60 = v90;
        v59 = v91;
        v61 = v89;
        LODWORD(v51) = v85;
        goto LABEL_142;
      }

      v52 = v96;
      v53 = v97;
      v55 = v94;
      v56 = v95;
      v57 = v92;
      v58 = v93;
      v60 = v90;
      v59 = v91;
      v61 = v89;
      LODWORD(v51) = v85;
    }

    else
    {
      v45 = 0x10000;
      if ((v70 & 1) == 0)
      {
        v45 = 0;
      }

      v50 = v86;
      if (v41 >= 3989)
      {
        v50 = 512;
      }

      v73 = v72 == 0;
      v47 = 0x100000000000000;
      if (v73)
      {
        v47 = 0;
      }

      v46 = 0x10000000000;
      if ((v87 & 1) == 0)
      {
        v46 = 0;
      }

      v54 = v98;
      v56 = v95;
      v52 = v96;
      v58 = v93;
      v55 = v94;
      v59 = v91;
      v57 = v92;
      v60 = v90;
      v61 = v89;
      LODWORD(v51) = v85;
      if ((v84 & 1) == 0)
      {
        v49 = 0;
        v53 = v97;
        goto LABEL_142;
      }

      v53 = v97;
    }
  }

  else
  {
    v45 = 0;
    if (v39)
    {
      v49 = 0;
      v50 = v86;
      if (v41 >= 3989)
      {
        v50 = 512;
      }

      v73 = v72 == 0;
      v47 = 0x100000000000000;
      if (v73)
      {
        v47 = 0;
      }

      v46 = 0x10000000000;
      if ((v87 & 1) == 0)
      {
        v46 = 0;
      }

      v52 = v96;
      v53 = v97;
      v54 = v98;
      v55 = v94;
      v56 = v95;
      v57 = v92;
      v58 = v93;
      v60 = v90;
      v59 = v91;
      v61 = v89;
      LODWORD(v51) = v85;
      if ((v84 & 1) == 0)
      {
        goto LABEL_142;
      }
    }

    else
    {
      v73 = v72 == 0;
      v47 = 0x100000000000000;
      if (v73)
      {
        v47 = 0;
      }

      v46 = 0x10000000000;
      if ((v87 & 1) == 0)
      {
        v46 = 0;
      }

      LODWORD(v51) = 1;
      v50 = 512;
      v52 = v96;
      v53 = v97;
      v54 = v98;
      v55 = v94;
      v56 = v95;
      v57 = v92;
      v58 = v93;
      v60 = v90;
      v59 = v91;
      v61 = v89;
    }
  }

  v49 = 0x1000000;
LABEL_142:
  v51 = v51;
LABEL_143:
  if (v61)
  {
    v74 = 0x1000000000000;
  }

  else
  {
    v74 = 0;
  }

  v75 = v56 | v58 | v60 | v59 | v52 | v57 | v55;
  if (v100)
  {
    v76 = 0x1000000000000;
  }

  else
  {
    v76 = 0;
  }

  if (!sub_1B03A5B78(v75 | v74, v45 | v50 | v51 | v49 | v48 | v46 | v47 | v76))
  {
    sub_1B039C290(v75 | v74);
    sub_1B039C7FC(v99, v3);
  }

  if (v54)
  {
    v77 = *(v3 + 184);
    v78 = *(v3 + 216);
    v104 = *(v3 + 200);
    v105[0] = v78;
    *(v105 + 12) = *(v3 + 228);
    v102 = *(v3 + 168);
    v103 = v77;
    if (!sub_1B03A47F4())
    {
      sub_1B03906B8(v99, v53, type metadata accessor for State.Logger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v79 = sub_1B0E43988();
      v80 = sub_1B0E45908();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 68157952;
        *(v81 + 4) = 2;
        *(v81 + 8) = 256;
        v82 = *(v53 + *(v88 + 20));
        sub_1B0390514(v53, type metadata accessor for State.Logger);
        *(v81 + 10) = v82;
        _os_log_impl(&dword_1B0389000, v79, v80, "[%.*hhx] Resetting mailboxes-need-to-be-updated.", v81, 0xBu);
        MEMORY[0x1B272C230](v81, -1, -1);
      }

      else
      {
        sub_1B0390514(v53, type metadata accessor for State.Logger);
      }

      *(v3 + 137) = 0;
    }
  }
}

uint64_t sub_1B039109C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  v2 = sub_1B0E46CB8() & ~(-1 << *(a1 + 32));
  return (*(a1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

id sub_1B0391210(uint64_t a1, uint64_t a2)
{
  v13 = a2;
  v6 = *(a1 + 32);
  v14 = *(a1 + 40);

  swift_unknownObjectRetain();
  v12 = v16;
  v6(v13);
  v10 = v17;
  v2 = __swift_project_boxed_opaque_existential_0(v16, v17);
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v11 = &v6 - v7;
  (*(v8 + 16))(v3);
  v15 = sub_1B0E46A58();
  (*(v8 + 8))(v11, v10);
  __swift_destroy_boxed_opaque_existential_0(v12);
  swift_unknownObjectRelease();

  v4 = v15;

  return v4;
}

uint64_t sub_1B0391370@<X0>(uint64_t *a2@<X8>)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AC0, &qword_1B0E9AE88);
  swift_dynamicCast();
  sub_1B0E453A8();
  objc_opt_self();
  v26 = swift_dynamicCastObjCClassUnconditional();
  [v26 floatValue];
  v27 = v2;
  MEMORY[0x1E69E5920](v26);
  sub_1B0E453A8();
  objc_opt_self();
  v28 = swift_dynamicCastObjCClassUnconditional();
  v29 = [v28 BOOLValue];
  MEMORY[0x1E69E5920](v28);
  sub_1B0E453A8();
  objc_opt_self();
  v24 = swift_dynamicCastObjCClassUnconditional();
  [v24 integerValue];
  MEMORY[0x1E69E5920](v24);
  sub_1B0391B00();
  if (v3)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v22 = EFProtectedDataAvailableInState() ^ 1;
  sub_1B0E453A8();
  objc_opt_self();
  v23 = swift_dynamicCastObjCClassUnconditional();
  [v23 integerValue];
  MEMORY[0x1E69E5920](v23);
  sub_1B0391B00();
  sub_1B0E453A8();
  objc_opt_self();
  v19 = swift_dynamicCastObjCClassUnconditional();
  v20 = sub_1B0E42F38();
  v21 = v4;
  sub_1B0E42F08();
  sub_1B0391D50(v20, v21);
  MEMORY[0x1E69E5920](v19);
  sub_1B0E453A8();
  objc_opt_self();
  v13 = swift_dynamicCastObjCClassUnconditional();
  [v13 integerValue];
  MEMORY[0x1E69E5920](v13);
  Environment.AvailableFileSystemSpace.init(availableByteCount:bytesForOpportunisticUsage:)(v33, v34);
  v14 = _s7WrappedCMa();
  sub_1B0E453A8();
  objc_opt_self();
  v15 = swift_dynamicCastObjCClassUnconditional();
  inLowPowerMode = [v15 0x1FAA23478];
  MEMORY[0x1E69E5920](v15);
  sub_1B0E453A8();
  objc_opt_self();
  v17 = swift_dynamicCastObjCClassUnconditional();
  isPluggedIn = [v17 0x1FAA23478];
  MEMORY[0x1E69E5920](v17);
  if (v27 == -1.0)
  {
    v11 = 0.0;
    v12 = 1;
  }

  else
  {
    v11 = v27;
    v12 = 0;
  }

  *&v32 = v11;
  BYTE4(v32) = v12 & 1;
  v5 = Environment.Power.init(inLowPowerMode:isPluggedIn:batteryPercentage:)(inLowPowerMode, isPluggedIn, v32);
  v31 = Environment.init(power:appState:isLocked:thermalState:availableFileSystemSpace:unreconciledMessageCount:)(v5, (v29 & 1) == 0, v22);
  LOWORD(v30) = v31;
  BYTE2(v30) = BYTE2(v31);
  sub_1B0391EC0(v30, v6, v7, v8);
  a2[3] = v14;
  *a2 = v9;
}

void sub_1B0391B24(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_1B0E450E8() == 16)
  {
    if (a1)
    {
      if (a2)
      {
        v5 = a2 - a1;
      }

      else
      {
        __break(1u);
      }

      if (v5 / 16 < 0)
      {
        sub_1B0E466C8();
        __break(1u);
      }

      v6 = a1;
    }

    else
    {
      v6 = 0;
    }

    if (sub_1B0E44A58() <= 0)
    {
      sub_1B0E466C8();
      __break(1u);
    }

    if (v6)
    {
      *a3 = *v6;
      return;
    }

    __break(1u);
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  *a3 = v3;
  *(a3 + 8) = v4;
}

uint64_t sub_1B0391D50(uint64_t result, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return v2;
}

IMAP2Persistence::Environment::AvailableFileSystemSpace __swiftcall Environment.AvailableFileSystemSpace.init(availableByteCount:bytesForOpportunisticUsage:)(Swift::Int availableByteCount, Swift::Int bytesForOpportunisticUsage)
{
  if (bytesForOpportunisticUsage <= 0x4650FFFFFLL && availableByteCount <= 1888485375)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (bytesForOpportunisticUsage <= 0x9C3FFFFFFLL)
  {
    v4 = v3;
  }

  else
  {
    v4 = 3;
  }

  if (availableByteCount <= 0x270FFFFFFLL)
  {
    v5 = v4;
  }

  else
  {
    v5 = IMAP2Persistence_Environment_AvailableFileSystemSpace_abundant;
  }

  if (availableByteCount <= 105906175 && bytesForOpportunisticUsage < 1049624576)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

IMAP2Persistence::Environment::Power __swiftcall Environment.Power.init(inLowPowerMode:isPluggedIn:batteryPercentage:)(Swift::Bool inLowPowerMode, Swift::Bool isPluggedIn, Swift::Float_optional *batteryPercentage)
{
  if (inLowPowerMode)
  {
    return 0;
  }

  v4 = (batteryPercentage >> 32) & 1;
  if (*&batteryPercentage >= 0.2)
  {
    LODWORD(v4) = 1;
  }

  if (isPluggedIn)
  {
    v5 = IMAP2Persistence_Environment_Power_pluggedIn;
  }

  else
  {
    v5 = IMAP2Persistence_Environment_Power_onBattery;
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

uint64_t Environment.init(power:appState:isLocked:thermalState:availableFileSystemSpace:unreconciledMessageCount:)(unsigned __int8 a1, char a2, char a3)
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return a1 | ((a2 & 1) << 8) | v3;
}

double sub_1B0391EC0(int a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a1;
  v6 = BYTE1(a1);
  v7 = BYTE2(a1);
  swift_allocObject();
  LOBYTE(v11) = v5;
  BYTE1(v11) = v6;
  BYTE2(v11) = v7;
  return sub_1B0391F88(v11, a2, a3, a4);
}

double sub_1B0391F88(int a1, uint64_t a2, char a3, uint64_t a4)
{
  result = 0.0;
  *(v4 + 16) = a1;
  *(v4 + 18) = BYTE2(a1);
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v2 = a1[3];
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t sub_1B03920B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1B039211C(int a1, unint64_t a2, unsigned __int8 a3, unint64_t a4)
{
  v89 = 0u;
  v90 = 0u;
  v88 = 0;
  v76 = 0;
  v91 = a1;
  v92 = a2;
  v93 = a3;
  v94 = a4;
  v46 = a1;
  v47 = BYTE1(a1);
  v49 = BYTE2(a1);
  v50 = a2;
  v51 = a3;
  v48 = a4;
  v55 = sub_1B0E44468();
  v53 = *(v55 - 8);
  v54 = v55 - 8;
  MEMORY[0x1EEE9AC00](v55);
  v56 = (&v18 - v5);
  LOBYTE(v89) = v6;
  BYTE1(v89) = v7;
  BYTE2(v89) = v49;
  *(&v89 + 1) = v50;
  LOBYTE(v90) = v51;
  *(&v90 + 1) = v8;
  v88 = v4;

  v52 = *(v4 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
  MEMORY[0x1E69E5928](v52);
  v9 = v53;
  *v56 = v52;
  (*(v9 + 104))();
  v57 = sub_1B0E44488();
  (*(v53 + 8))(v56, v55);
  result = v57;
  if ((v57 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v40 = v46 | ((v47 & 1) << 8) | ((v49 & 1) << 16);
  v38 = (v45 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_lastKnownEnvironment);
  v39 = &v87;
  swift_beginAccess();
  v41 = *v38;
  v42 = v38[1];
  v43 = v38[2];
  v44 = v38[3];
  result = swift_endAccess();
  v79 = v40;
  v80 = v50;
  v81 = v51;
  v82 = v48;
  v83 = v41;
  v84 = v42;
  v85 = v43;
  v86 = v44;
  if ((v40 & 0xFF00) != 0x200)
  {
    v66 = v40;
    v67 = v50;
    v68 = v51;
    v69 = v48;
    if ((v83 & 0xFF00) != 0x200)
    {
      LOWORD(v62) = v66;
      BYTE2(v62) = BYTE2(v66);
      v63 = v67;
      v64 = v68;
      v65 = v69;
      LOWORD(v58) = v83;
      BYTE2(v58) = BYTE2(v83);
      v59 = v84;
      v60 = v85;
      v61 = v86;
      result = static Environment.__derived_struct_equals(_:_:)(v62, v67, v68, v69, v58, v84, v85, v86);
      v37 = result;
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((v83 & 0xFF00) != 0x200)
  {
LABEL_10:
    v37 = 0;
    goto LABEL_8;
  }

  v37 = 1;
LABEL_8:
  if (v37)
  {
    return result;
  }

  v36 = v45 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_lastKnownEnvironment;
  swift_beginAccess();
  if ((*v36 & 0xFF00) == 0x200)
  {
    swift_endAccess();
    v35 = 2;
  }

  else
  {
    v34 = *(v36 + 2);
    swift_endAccess();
    v35 = v34 & 1;
  }

  v77 = v49;
  v78 = v35;
  if (v49 == 2)
  {
    if (v78 == 2)
    {
      v33 = 1;
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  v70 = v49;
  if (v78 == 2)
  {
LABEL_22:
    v33 = 0;
    goto LABEL_20;
  }

  v33 = (v70 & 1) == (v78 & 1);
LABEL_20:
  if (v33)
  {
    v32 = 0;
  }

  else
  {
    v32 = v49 ^ 1;
  }

  v24 = v32;
  v76 = v32 & 1;
  v25 = v46 | ((v47 & 1) << 8) | ((v49 & 1) << 16);
  v26 = (v45 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_lastKnownEnvironment);
  v27 = &v75;
  v28 = 0;
  swift_beginAccess();
  v11 = v50;
  v12 = v51;
  v13 = v26;
  v14 = v48;
  *v26 = v25;
  v13[1] = v11;
  v13[2] = v12;
  v13[3] = v14;
  swift_endAccess();
  v29 = v45 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_appState;
  v30 = &v74;
  swift_beginAccess();
  v31 = *(v29 + 8);
  swift_endAccess();
  if (v31)
  {
    if (v47)
    {
      v15 = v45;
      v21 = static MonotonicTime.now()();
      v22 = (v15 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_appState);
      v23 = &v71;
      swift_beginAccess();
      v16 = v22;
      *v22 = v21;
      *(v16 + 8) = 0;
      swift_endAccess();
      sub_1B09BC240();
    }
  }

  else if ((v47 & 1) == 0)
  {
    v19 = (v45 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_appState);
    v20 = &v72;
    swift_beginAccess();
    v17 = v19;
    *v19 = 0;
    *(v17 + 8) = 1;
    swift_endAccess();
  }

  result = sub_1B0392878();
  if (v24)
  {
    v18 = &v73;
    swift_beginAccess();
    sub_1B041AEB8();
    return swift_endAccess();
  }

  return result;
}

__n128 sub_1B0392800(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

BOOL sub_1B0392830(int a1, uint64_t a2, char a3, uint64_t a4, int a5, uint64_t a6, char a7, uint64_t a8)
{
  v8 = a5 ^ a1;
  if (a5 != a1)
  {
    return 0;
  }

  v9 = (v8 >> 8) & 1;
  v10 = HIWORD(v8) & 1;
  v13 = a2 == a6 && a3 == a7 && a4 == a8;
  v14 = (v10 & 1) == 0 && v13;
  return (v9 & 1) == 0 && v14;
}

uint64_t sub_1B0392878()
{
  v191 = 0;
  v157 = sub_1B039BBE8;
  v158 = sub_1B0399938;
  v159 = sub_1B0394C30;
  v160 = sub_1B0394C24;
  v161 = sub_1B039BA2C;
  v162 = sub_1B039BA88;
  v163 = sub_1B039BB94;
  v164 = sub_1B0394C24;
  v165 = sub_1B039BBA0;
  v166 = sub_1B039BC08;
  v167 = sub_1B0399460;
  v168 = sub_1B039BCF8;
  v169 = sub_1B0398F5C;
  v170 = sub_1B0398F5C;
  v171 = sub_1B0399178;
  v172 = sub_1B0398F5C;
  v173 = sub_1B0398F5C;
  v174 = sub_1B039BA94;
  v175 = sub_1B0398F5C;
  v176 = sub_1B0398F5C;
  v177 = sub_1B0399178;
  v178 = sub_1B0398F5C;
  v179 = sub_1B0398F5C;
  v180 = sub_1B03991EC;
  v181 = sub_1B0398F5C;
  v182 = sub_1B0398F5C;
  v183 = sub_1B039BCEC;
  v211 = 0;
  v208 = 0u;
  v209 = 0u;
  v184 = 0;
  v185 = 0;
  v186 = sub_1B0E439A8();
  v187 = *(v186 - 8);
  v188 = v186 - 8;
  v189 = (*(v187 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v190 = v79 - v189;
  v192 = _s6LoggerVMa(v1);
  v193 = (*(*(v192 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v192);
  v194 = v79 - v193;
  v195 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v196 = v79 - v195;
  v211 = v0;
  v197 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_lastKnownEnvironment);
  v198 = v210;
  swift_beginAccess();
  v202 = *v197;
  v199 = v197[1];
  v200 = v197[2];
  v201 = v197[3];
  result = swift_endAccess();
  if ((v202 & 0xFF00) != 0x200)
  {
    v150 = v202;
    v151 = v202 >> 8;
    v152 = v202 >> 16;
    v153 = v199;
    v154 = v200;
    v155 = v201;
    v5 = v190;
    v114 = v201;
    v113 = v200;
    v112 = v199;
    v111 = v152;
    v109 = v151;
    v108 = v202;
    LOWORD(v208) = v202 & 0x1FF;
    v117 = 1;
    v110 = 1;
    BYTE2(v208) = BYTE2(v202) & 1;
    *(&v208 + 1) = v199;
    LOBYTE(v209) = v200;
    *(&v209 + 1) = v201;
    v103 = &unk_1EB737000;
    sub_1B0394784(v156 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v196);
    (*(v187 + 16))(v5, v196, v186);
    sub_1B039480C(v196);

    sub_1B0394784(v156 + v103[314], v194);
    v6 = (v194 + *(v192 + 20));
    v105 = *v6;
    v106 = *(v6 + 1);
    sub_1B039480C(v194);

    v104 = 24;
    v127 = 7;
    v7 = swift_allocObject();
    v8 = v106;
    v118 = v7;
    *(v7 + 16) = v105;
    *(v7 + 20) = v8;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v9 = swift_allocObject();
    v10 = v106;
    v107 = v9;
    *(v9 + 16) = v105;
    *(v9 + 20) = v10;

    v126 = 32;
    v11 = swift_allocObject();
    v12 = v107;
    v123 = v11;
    *(v11 + 16) = v157;
    *(v11 + 24) = v12;
    sub_1B0394868();
    sub_1B0394868();

    v13 = swift_allocObject();
    v14 = v109;
    v15 = v110;
    v16 = v111;
    v17 = v112;
    v18 = v113;
    v19 = v114;
    v115 = v13;
    *(v13 + 16) = v108;
    *(v13 + 17) = v14 & v15;
    *(v13 + 18) = v16 & v15;
    *(v13 + 24) = v17;
    *(v13 + 32) = v18;
    *(v13 + 40) = v19;

    v20 = swift_allocObject();
    v21 = v115;
    v128 = v20;
    *(v20 + 16) = v158;
    *(v20 + 24) = v21;

    v148 = sub_1B0E43988();
    v149 = sub_1B0E45908();
    v125 = 17;
    v130 = swift_allocObject();
    v120 = 16;
    *(v130 + 16) = 16;
    v131 = swift_allocObject();
    v122 = 4;
    *(v131 + 16) = 4;
    v22 = swift_allocObject();
    v116 = v22;
    *(v22 + 16) = v159;
    *(v22 + 24) = 0;
    v23 = swift_allocObject();
    v24 = v116;
    v132 = v23;
    *(v23 + 16) = v160;
    *(v23 + 24) = v24;
    v133 = swift_allocObject();
    *(v133 + 16) = 0;
    v134 = swift_allocObject();
    *(v134 + 16) = v117;
    v25 = swift_allocObject();
    v26 = v118;
    v119 = v25;
    *(v25 + 16) = v161;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v119;
    v135 = v27;
    *(v27 + 16) = v162;
    *(v27 + 24) = v28;
    v136 = swift_allocObject();
    *(v136 + 16) = v120;
    v137 = swift_allocObject();
    *(v137 + 16) = v122;
    v29 = swift_allocObject();
    v121 = v29;
    *(v29 + 16) = v163;
    *(v29 + 24) = 0;
    v30 = swift_allocObject();
    v31 = v121;
    v138 = v30;
    *(v30 + 16) = v164;
    *(v30 + 24) = v31;
    v139 = swift_allocObject();
    *(v139 + 16) = 0;
    v140 = swift_allocObject();
    *(v140 + 16) = v122;
    v32 = swift_allocObject();
    v33 = v123;
    v124 = v32;
    *(v32 + 16) = v165;
    *(v32 + 24) = v33;
    v34 = swift_allocObject();
    v35 = v124;
    v141 = v34;
    *(v34 + 16) = v166;
    *(v34 + 24) = v35;
    v142 = swift_allocObject();
    *(v142 + 16) = 34;
    v143 = swift_allocObject();
    *(v143 + 16) = 8;
    v36 = swift_allocObject();
    v37 = v128;
    v129 = v36;
    *(v36 + 16) = v167;
    *(v36 + 24) = v37;
    v38 = swift_allocObject();
    v39 = v129;
    v145 = v38;
    *(v38 + 16) = v168;
    *(v38 + 24) = v39;
    v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v144 = sub_1B0E46A48();
    v146 = v40;

    v41 = v130;
    v42 = v146;
    *v146 = v169;
    v42[1] = v41;

    v43 = v131;
    v44 = v146;
    v146[2] = v170;
    v44[3] = v43;

    v45 = v132;
    v46 = v146;
    v146[4] = v171;
    v46[5] = v45;

    v47 = v133;
    v48 = v146;
    v146[6] = v172;
    v48[7] = v47;

    v49 = v134;
    v50 = v146;
    v146[8] = v173;
    v50[9] = v49;

    v51 = v135;
    v52 = v146;
    v146[10] = v174;
    v52[11] = v51;

    v53 = v136;
    v54 = v146;
    v146[12] = v175;
    v54[13] = v53;

    v55 = v137;
    v56 = v146;
    v146[14] = v176;
    v56[15] = v55;

    v57 = v138;
    v58 = v146;
    v146[16] = v177;
    v58[17] = v57;

    v59 = v139;
    v60 = v146;
    v146[18] = v178;
    v60[19] = v59;

    v61 = v140;
    v62 = v146;
    v146[20] = v179;
    v62[21] = v61;

    v63 = v141;
    v64 = v146;
    v146[22] = v180;
    v64[23] = v63;

    v65 = v142;
    v66 = v146;
    v146[24] = v181;
    v66[25] = v65;

    v67 = v143;
    v68 = v146;
    v146[26] = v182;
    v68[27] = v67;

    v69 = v145;
    v70 = v146;
    v146[28] = v183;
    v70[29] = v69;
    sub_1B0394964();

    if (os_log_type_enabled(v148, v149))
    {
      v71 = v184;
      v96 = sub_1B0E45D78();
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v97 = sub_1B03949A8(0, v95, v95);
      v98 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v99 = &v207;
      v207 = v96;
      v100 = &v206;
      v206 = v97;
      v101 = &v205;
      v205 = v98;
      sub_1B0394A48(2, &v207);
      sub_1B0394A48(5, v99);
      v203 = v169;
      v204 = v130;
      sub_1B03949FC(&v203, v99, v100, v101);
      v102 = v71;
      if (v71)
      {

        __break(1u);
      }

      else
      {
        v203 = v170;
        v204 = v131;
        sub_1B03949FC(&v203, &v207, &v206, &v205);
        v94 = 0;
        v203 = v171;
        v204 = v132;
        sub_1B03949FC(&v203, &v207, &v206, &v205);
        v93 = 0;
        v203 = v172;
        v204 = v133;
        sub_1B03949FC(&v203, &v207, &v206, &v205);
        v92 = 0;
        v203 = v173;
        v204 = v134;
        sub_1B03949FC(&v203, &v207, &v206, &v205);
        v91 = 0;
        v203 = v174;
        v204 = v135;
        sub_1B03949FC(&v203, &v207, &v206, &v205);
        v90 = 0;
        v203 = v175;
        v204 = v136;
        sub_1B03949FC(&v203, &v207, &v206, &v205);
        v89 = 0;
        v203 = v176;
        v204 = v137;
        sub_1B03949FC(&v203, &v207, &v206, &v205);
        v88 = 0;
        v203 = v177;
        v204 = v138;
        sub_1B03949FC(&v203, &v207, &v206, &v205);
        v87 = 0;
        v203 = v178;
        v204 = v139;
        sub_1B03949FC(&v203, &v207, &v206, &v205);
        v86 = 0;
        v203 = v179;
        v204 = v140;
        sub_1B03949FC(&v203, &v207, &v206, &v205);
        v85 = 0;
        v203 = v180;
        v204 = v141;
        sub_1B03949FC(&v203, &v207, &v206, &v205);
        v84 = 0;
        v203 = v181;
        v204 = v142;
        sub_1B03949FC(&v203, &v207, &v206, &v205);
        v83 = 0;
        v203 = v182;
        v204 = v143;
        sub_1B03949FC(&v203, &v207, &v206, &v205);
        v82 = 0;
        v203 = v183;
        v204 = v145;
        sub_1B03949FC(&v203, &v207, &v206, &v205);
        _os_log_impl(&dword_1B0389000, v148, v149, "[%.*hhx-%.*X] Environment changed. %{public}s", v96, 0x21u);
        sub_1B03998A8(v97, 0, v95);
        sub_1B03998A8(v98, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v148);
    (*(v187 + 8))(v190, v186);
    v79[1] = *(v156 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_credentialsHelper);

    v80 = 1;
    sub_1B06EAFDC(v109 & 1);

    sub_1B0399F08(v111 & 1);
    sub_1B039AA18();
    v72 = swift_allocObject();
    v73 = v109;
    v74 = v80;
    v75 = v111;
    v76 = v112;
    v77 = v113;
    v78 = v114;
    *(v72 + 16) = v108;
    *(v72 + 17) = v73 & v74;
    *(v72 + 18) = v75 & v74;
    *(v72 + 24) = v76;
    *(v72 + 32) = v77;
    *(v72 + 40) = v78;
    v81 = v72;
    sub_1B039C1F8(v72);
  }

  return result;
}

uint64_t _s6LoggerVMa(uint64_t a1)
{
  v2 = qword_1EB6DBD90;
  if (!qword_1EB6DBD90)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1B0394784(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E439A8();
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = _s6LoggerVMa(0);
  result = a2;
  *(a2 + *(v3 + 20)) = *(a1 + *(v3 + 20));
  return result;
}

uint64_t sub_1B039480C(uint64_t a1)
{
  v1 = sub_1B0E439A8();
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

unint64_t sub_1B0394874()
{
  v2 = qword_1EB6DEEC0;
  if (!qword_1EB6DEEC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEEC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B03948EC()
{
  v2 = qword_1EB6DEF00;
  if (!qword_1EB6DEF00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEF00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B03949A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return sub_1B0E45D78();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0394A48(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_1B0394A68(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1B0394A7C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  if (result >= 0xFFFFFFFF80000000)
  {
    if (result <= 0x7FFFFFFF)
    {
      *a2 = result;
      return result;
    }

    sub_1B0E465A8();
    __break(1u);
  }

  result = sub_1B0E465A8();
  __break(1u);
  return result;
}

unint64_t sub_1B0394BAC()
{
  v2 = qword_1EB6DED70;
  if (!qword_1EB6DED70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DED70);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0394C3C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v12[2] = a8;
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a5;
  v18 = a7;
  v19 = "Fatal error";
  v20 = "UnsafeRawBufferPointer with negative count";
  v21 = "Swift/UnsafeRawBufferPointer.swift";
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v22 = *(a5 - 8);
  v23 = a5 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](a1);
  v25 = v12 - v24;
  v26 = *(*(v9 - 8) + 64);
  if (v26 < 0)
  {
    result = sub_1B0E466C8();
    __break(1u);
  }

  else
  {
    v10 = v17;
    result = (v14)(v13, v13 + v26, v25, v8);
    v12[1] = v10;
    if (v10)
    {
      return (*(v22 + 32))(v18, v25, v16);
    }
  }

  return result;
}

uint64_t sub_1B0394E2C(char *a1, unint64_t a2, int a3)
{
  LODWORD(v448) = a3;
  v451 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v430 = &v419 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v431 = &v419 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v444 = &v419 - v9;
  v445.i64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v445.i64[0]);
  v429 = &v419 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v442 = (&v419 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v427 = &v419 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v432 = &v419 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v428 = &v419 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v447 = (&v419 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v426 = &v419 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v441 = (&v419 - v24);
  v25 = sub_1B0E43868();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v440 = &v419 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v446 = &v419 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v438 = &v419 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v436 = &v419 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v443 = &v419 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v435 = &v419 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v437 = &v419 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v439 = &v419 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v425 = &v419 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v434 = &v419 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v433 = &v419 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v423 = &v419 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v422 = &v419 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v420 = &v419 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v424 = &v419 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v419 - v57;
  MEMORY[0x1EEE9AC00](v59);
  v421 = &v419 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v419 - v62;
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v419 - v65;
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v419 - v68;
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v419 - v71;
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v419 - v74;
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v419 - v77;
  v79 = sub_1B0E43828();
  v449 = *(v79 - 8);
  v450 = v79;
  MEMORY[0x1EEE9AC00](v79);
  v451 = &v419 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E43838();
  if (v448)
  {
    v448 = v25;
    v419 = v26;
    v82 = v446;
    v81 = v447;
    switch((a2 >> 59) & 0x1E | (a2 >> 2) & 1)
    {
      case 1uLL:
        v234 = tracingSignposter.unsafeMutableAddressor();
        v235 = v419;
        v236 = v448;
        (*(v419 + 16))(v72, v234, v448);
        v237 = sub_1B0E43858();
        v238 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v239 = swift_slowAlloc();
          *v239 = 0;
          v91 = v451;
          v240 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v237, v238, v240, "PersistenceEvent.update.credentials", "", v239, 2u);
          MEMORY[0x1B272C230](v239, -1, -1);

          (*(v235 + 8))(v72, v236);
          goto LABEL_9;
        }

        (*(v235 + 8))(v72, v236);
        goto LABEL_99;
      case 2uLL:
        v190 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v191 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v192 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v193 = tracingSignposter.unsafeMutableAddressor();
        v194 = v419;
        v195 = v421;
        v196 = v448;
        (*(v419 + 16))(v421, v193, v448);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v197 = sub_1B0E43858();
        v198 = sub_1B0E45AE8();
        if ((sub_1B0E45D38() & 1) == 0)
        {

          goto LABEL_84;
        }

        v199 = swift_slowAlloc();
        *v199 = 67109632;
        *(v199 + 4) = v190;
        *(v199 + 8) = 256;
        v200 = 0x403010505uLL >> (8 * v191);
        if (v191 >= 5)
        {
          LOBYTE(v200) = 5;
        }

        *(v199 + 10) = v200;
        *(v199 + 11) = 2048;
        v91 = v451;
        if (v192)
        {
          v201 = *(v192 + 16);
        }

        else
        {
          v201 = 0;
        }

        *(v199 + 13) = v201;
        v417 = v199;

        v418 = sub_1B0E43818();
        _os_signpost_emit_with_name_impl(&dword_1B0389000, v197, v198, v418, "PersistenceEvent.update.sync", "%u %hhu %ld", v417, 0x15u);
        MEMORY[0x1B272C230](v417, -1, -1);

        goto LABEL_103;
      case 3uLL:
        v218 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v219 = tracingSignposter.unsafeMutableAddressor();
        v220 = v419;
        v221 = v448;
        (*(v419 + 16))(v58, v219, v448);
        v222 = sub_1B0E43858();
        v223 = sub_1B0E45AE8();
        v224 = sub_1B0E45D38();
        v91 = v451;
        if (v224)
        {
          v225 = swift_slowAlloc();
          *v225 = 67109120;
          *(v225 + 4) = v218;
          v226 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v222, v223, v226, "PersistenceEvent.update.sync", "%u", v225, 8u);
          MEMORY[0x1B272C230](v225, -1, -1);
        }

        (*(v220 + 8))(v58, v221);
        goto LABEL_9;
      case 4uLL:
        v147 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v148 = tracingSignposter.unsafeMutableAddressor();
        v149 = v419;
        v150 = v448;
        (*(v419 + 16))(v63, v148, v448);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v151 = sub_1B0E43858();
        v152 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v153 = swift_slowAlloc();
          *v153 = 134217984;
          *(v153 + 4) = *(v147 + 16);
          swift_bridgeObjectRelease_n();
          v154 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v151, v152, v154, "PersistenceEvent.update.setLocalMailboxes", "count %ld", v153, 0xCu);
          MEMORY[0x1B272C230](v153, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v101 = v449;
        v386 = v450;
        (*(v149 + 8))(v63, v150);
        v100 = v386;
        v91 = v451;
        return (*(v101 + 8))(v91, v100);
      case 5uLL:
        v272 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v273 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v274 = tracingSignposter.unsafeMutableAddressor();
        v194 = v419;
        v195 = v424;
        v196 = v448;
        (*(v419 + 16))(v424, v274, v448);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v275 = sub_1B0E43858();
        v276 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v277 = swift_slowAlloc();
          *v277 = 134218240;
          *(v277 + 4) = *(v272 + 16);
          *(v277 + 12) = 2048;
          *(v277 + 14) = *(v273 + 16);
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v91 = v451;
          v278 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v275, v276, v278, "PersistenceEvent.update.setUserVisibleMailboxes", "%ld %ld", v277, 0x16u);
          MEMORY[0x1B272C230](v277, -1, -1);

LABEL_103:
          v101 = v449;
          v387 = v450;
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
LABEL_84:
          v101 = v449;
          v387 = v450;
          v91 = v451;
        }

        (*(v194 + 8))(v195, v196);
        v100 = v387;
        return (*(v101 + 8))(v91, v100);
      case 6uLL:
        v319 = tracingSignposter.unsafeMutableAddressor();
        v320 = v419;
        v321 = v420;
        v322 = v448;
        (*(v419 + 16))(v420, v319, v448);
        v323 = sub_1B0E43858();
        v324 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v325 = swift_slowAlloc();
          *v325 = 0;
          v91 = v451;
          v326 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v323, v324, v326, "PersistenceEvent.update.temporarilyGrowWindowOfInterest", "", v325, 2u);
          MEMORY[0x1B272C230](v325, -1, -1);

          (*(v320 + 8))(v321, v322);
          goto LABEL_9;
        }

        (*(v320 + 8))(v321, v322);
        goto LABEL_99;
      case 7uLL:
        v227 = tracingSignposter.unsafeMutableAddressor();
        v228 = v419;
        v229 = v448;
        (*(v419 + 16))(v66, v227, v448);
        v230 = sub_1B0E43858();
        v231 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v232 = swift_slowAlloc();
          *v232 = 0;
          v91 = v451;
          v233 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v230, v231, v233, "PersistenceEvent.update.pushRegistrationInfo", "", v232, 2u);
          MEMORY[0x1B272C230](v232, -1, -1);

          (*(v228 + 8))(v66, v229);
          goto LABEL_9;
        }

        (*(v228 + 8))(v66, v229);
        goto LABEL_99;
      case 8uLL:
        v357 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v358 = tracingSignposter.unsafeMutableAddressor();
        v359 = v419;
        v360 = v434;
        v361 = v448;
        (*(v419 + 16))(v434, v358, v448);
        swift_bridgeObjectRetain_n();
        v362 = sub_1B0E43858();
        v363 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v364 = swift_slowAlloc();
          v365 = swift_slowAlloc();
          v453 = v365;
          *v364 = 136315394;
          v366 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v367 = OpaqueMailboxID.description.getter(v366);
          v369 = v368;

          v370 = sub_1B0399D64(v367, v369, &v453);

          *(v364 + 4) = v370;
          *(v364 + 12) = 2082;
          v455 = v357;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
          v371 = MessageIdentifierRange.debugDescription.getter();
          v373 = sub_1B0399D64(v371, v372, &v453);

          *(v364 + 14) = v373;
          swift_bridgeObjectRelease_n();
          v91 = v451;
          v374 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v362, v363, v374, "PersistenceEvent.update.didFindWindowOfInterest", "mailbox %s, UID range %{public}s", v364, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v365, -1, -1);
          MEMORY[0x1B272C230](v364, -1, -1);

          (*(v359 + 8))(v434, v361);
          goto LABEL_9;
        }

        swift_bridgeObjectRelease_n();
        (*(v359 + 8))(v360, v361);
        goto LABEL_99;
      case 9uLL:
        v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3630, &unk_1B0EC2AE0);
        v171 = swift_projectBox();
        v172 = *(v171 + *(v170 + 64));
        v173 = v441;
        sub_1B03B5C80(v171 + *(v170 + 48), v441, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v174 = tracingSignposter.unsafeMutableAddressor();
        v175 = v419;
        v176 = v425;
        v177 = v448;
        (*(v419 + 16))(v425, v174, v448);
        v178 = v426;
        sub_1B03B5C80(v173, v426, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        swift_bridgeObjectRetain_n();
        v179 = sub_1B0E43858();
        LODWORD(v447) = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v180 = swift_slowAlloc();
          v446 = v172;
          v181 = v180;
          v182 = swift_slowAlloc();
          v453 = v182;
          *v181 = 136315650;
          v183 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v184 = OpaqueMailboxID.description.getter(v183);
          v186 = v185;

          v187 = sub_1B0399D64(v184, v186, &v453);

          *(v181 + 4) = v187;
          *(v181 + 12) = 2048;
          v188 = MessageIdentifierSet.count.getter();
          sub_1B0398EFC(v178, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          *(v181 + 14) = v188;
          *(v181 + 22) = 2048;
          *(v181 + 24) = v446;
          swift_bridgeObjectRelease_n();
          v91 = v451;
          v189 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v179, v447, v189, "PersistenceEvent.update.didFindMessageBatches", "mailbox %s, UID range count %ld, message count: %ld", v181, 0x20u);
          __swift_destroy_boxed_opaque_existential_0(v182);
          MEMORY[0x1B272C230](v182, -1, -1);
          MEMORY[0x1B272C230](v181, -1, -1);

          (*(v175 + 8))(v176, v177);
          v146 = v441;
          goto LABEL_64;
        }

        sub_1B0398EFC(v178, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        swift_bridgeObjectRelease_n();

        (*(v175 + 8))(v176, v177);
        v385 = v173;
        goto LABEL_88;
      case 0xAuLL:
        v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3628, &unk_1B0EA2080);
        v333 = swift_projectBox();
        v446 = *(v333 + 8);
        v334 = *(v332 + 64);
        sub_1B03B5C80(v333 + *(v332 + 48), v81, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v335 = v81;
        v336 = v444;
        sub_1B03B5C80(v333 + v334, v444, &unk_1EB6E26C0, &unk_1B0E9DE10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v337 = tracingSignposter.unsafeMutableAddressor();
        v338 = v419;
        v339 = v439;
        (*(v419 + 16))(v439, v337, v448);
        v340 = v335;
        v341 = v428;
        sub_1B03B5C80(v340, v428, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v342 = v431;
        sub_1B03B5C80(v336, v431, &unk_1EB6E26C0, &unk_1B0E9DE10);
        swift_bridgeObjectRetain_n();
        v343 = sub_1B0E43858();
        v344 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v345 = swift_slowAlloc();
          LODWORD(v443) = v344;
          v346 = v345;
          v347 = swift_slowAlloc();
          v453 = v347;
          *v346 = 136315650;
          v348 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v349 = OpaqueMailboxID.description.getter(v348);
          v351 = v350;

          v352 = sub_1B0399D64(v349, v351, &v453);

          *(v346 + 4) = v352;
          *(v346 + 12) = 2048;
          v353 = MessageIdentifierSet.count.getter();
          sub_1B0398EFC(v341, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          *(v346 + 14) = v353;
          *(v346 + 22) = 2048;
          v354 = MessageIdentifierSet.count.getter();
          sub_1B0398EFC(v342, &unk_1EB6E26C0, &unk_1B0E9DE10);
          *(v346 + 24) = v354;
          swift_bridgeObjectRelease_n();
          v355 = v451;
          v356 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v343, v443, v356, "PersistenceEvent.update.didFindMessageUIDs", "mailbox %s, UID count %ld range UID count %ld)", v346, 0x20u);
          __swift_destroy_boxed_opaque_existential_0(v347);
          MEMORY[0x1B272C230](v347, -1, -1);
          MEMORY[0x1B272C230](v346, -1, -1);

          (*(v338 + 8))(v439, v448);
          v91 = v355;
          sub_1B0398EFC(v444, &unk_1EB6E26C0, &unk_1B0E9DE10);
          v146 = v447;
          goto LABEL_64;
        }

        sub_1B0398EFC(v342, &unk_1EB6E26C0, &unk_1B0E9DE10);
        sub_1B0398EFC(v341, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        swift_bridgeObjectRelease_n();

        (*(v338 + 8))(v339, v448);
        sub_1B0398EFC(v336, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v385 = v447;
        goto LABEL_88;
      case 0xBuLL:
        v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35F0, &unk_1B0EA2050);
        v126 = swift_projectBox();
        v127 = *(v126 + *(v125 + 64));
        v128 = v432;
        sub_1B03B5C80(v126 + *(v125 + 48), v432, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v129 = tracingSignposter.unsafeMutableAddressor();
        v130 = v419;
        v131 = v437;
        v132 = v448;
        (*(v419 + 16))(v437, v129, v448);
        v133 = v427;
        sub_1B03B5C80(v128, v427, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        swift_bridgeObjectRetain_n();
        v134 = sub_1B0E43858();
        LODWORD(v447) = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v135 = swift_slowAlloc();
          v446 = v127;
          v136 = v135;
          v137 = swift_slowAlloc();
          v453 = v137;
          *v136 = 136315650;
          v138 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v139 = OpaqueMailboxID.description.getter(v138);
          v141 = v140;

          v142 = sub_1B0399D64(v139, v141, &v453);

          *(v136 + 4) = v142;
          v143 = v128;
          *(v136 + 12) = 2048;
          v144 = MessageIdentifierSet.count.getter();
          sub_1B0398EFC(v133, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          *(v136 + 14) = v144;
          *(v136 + 22) = 2048;
          *(v136 + 24) = v446;
          swift_bridgeObjectRelease_n();
          v91 = v451;
          v145 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v134, v447, v145, "PersistenceEvent.update.didFindNewestMessageUIDs", "mailbox %s, UID count %ld, limit %ld", v136, 0x20u);
          __swift_destroy_boxed_opaque_existential_0(v137);
          MEMORY[0x1B272C230](v137, -1, -1);
          MEMORY[0x1B272C230](v136, -1, -1);

          (*(v130 + 8))(v437, v132);
          v146 = v143;
          goto LABEL_64;
        }

        sub_1B0398EFC(v133, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        swift_bridgeObjectRelease_n();

        (*(v130 + 8))(v131, v132);
        v385 = v128;
        goto LABEL_88;
      case 0xCuLL:
        v155 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v156 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v157 = tracingSignposter.unsafeMutableAddressor();
        v112 = v419;
        v113 = v435;
        v114 = v448;
        (*(v419 + 16))(v435, v157, v448);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v115 = sub_1B0E43858();
        v158 = sub_1B0E45AE8();
        if ((sub_1B0E45D38() & 1) == 0)
        {
          goto LABEL_74;
        }

        v159 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        LODWORD(v447) = v158;
        v161 = v160;
        v453 = v160;
        *v159 = 136315650;
        v162 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v163 = OpaqueMailboxID.description.getter(v162);
        v165 = v164;

        v166 = sub_1B0399D64(v163, v165, &v453);

        *(v159 + 4) = v166;
        *(v159 + 12) = 256;
        if (v155)
        {
          v167 = 2;
        }

        else
        {
          v167 = 1;
        }

        *(v159 + 14) = v167;
        *(v159 + 15) = 2048;
        v168 = *(v156 + 16);

        *(v159 + 17) = v168;

        swift_bridgeObjectRelease_n();
        v91 = v451;
        v169 = sub_1B0E43818();
        _os_signpost_emit_with_name_impl(&dword_1B0389000, v115, v447, v169, "PersistenceEvent.update.downloadSectionsInMessages", "mailbox %s, downloadPass %hhu, messageCount %ld", v159, 0x19u);
        __swift_destroy_boxed_opaque_existential_0(v161);
        MEMORY[0x1B272C230](v161, -1, -1);
        MEMORY[0x1B272C230](v159, -1, -1);

        (*(v112 + 8))(v435, v114);
        goto LABEL_9;
      case 0xDuLL:
        v292 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v293 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v294 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x1C);
        v295 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v296 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v297 = tracingSignposter.unsafeMutableAddressor();
        v298 = v419;
        v299 = v443;
        v300 = v448;
        (*(v419 + 16))(v443, v297, v448);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v301 = sub_1B0E43858();
        v302 = sub_1B0E45AE8();
        if ((sub_1B0E45D38() & 1) == 0)
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          (*(v298 + 8))(v299, v300);
          goto LABEL_99;
        }

        v445.i32[0] = v302;
        v447 = v301;
        v303 = swift_slowAlloc();
        v304 = swift_slowAlloc();
        v455 = v304;
        *v303 = 141559043;
        *(v303 + 4) = 0x786F626C69616DLL;
        *(v303 + 12) = 2085;
        v453 = v292;
        v454 = v293;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v305 = sub_1B0E44BA8();
        v307 = sub_1B0399D64(v305, v306, &v455);

        *(v303 + 14) = v307;
        *(v303 + 22) = 256;
        if (v294)
        {
          v308 = 2;
        }

        else
        {
          v308 = 1;
        }

        *(v303 + 24) = v308;
        *(v303 + 25) = 1024;
        *(v303 + 27) = v295;
        *(v303 + 31) = 2080;
        v309 = *(v296 + 2);
        v310 = v296;
        v311 = MEMORY[0x1E69E7CC0];
        v446 = v310;
        if (v309)
        {
          v442 = v304;
          v444 = v292;
          v453 = MEMORY[0x1E69E7CC0];
          sub_1B041D32C(0, v309, 0);
          v311 = v453;
          v312 = (v310 + 32);
          do
          {
            v452 = *v312;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v313 = sub_1B0E44B88();
            v315 = v314;
            v453 = v311;
            v317 = *(v311 + 16);
            v316 = *(v311 + 24);
            if (v317 >= v316 >> 1)
            {
              sub_1B041D32C((v316 > 1), v317 + 1, 1);
              v311 = v453;
            }

            *(v311 + 16) = v317 + 1;
            v318 = v311 + 16 * v317;
            *(v318 + 32) = v313;
            *(v318 + 40) = v315;
            ++v312;
            --v309;
          }

          while (v309);
          v304 = v442;
        }

        v453 = v311;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
        sub_1B03B11C4();
        v411 = sub_1B0E448E8();
        v413 = v412;

        v414 = sub_1B0399D64(v411, v413, &v455);

        *(v303 + 33) = v414;
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        v91 = v451;
        v415 = sub_1B0E43818();
        v416 = v447;
        _os_signpost_emit_with_name_impl(&dword_1B0389000, v447, v445.i8[0], v415, "PersistenceEvent.update.downloadSectionData", "mailbox %{sensitive,mask.mailbox}s, downloadPass %hhu, UID %u, sections, %s", v303, 0x29u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v304, -1, -1);
        MEMORY[0x1B272C230](v303, -1, -1);

        (*(v419 + 8))(v443, v448);
        goto LABEL_9;
      case 0xEuLL:
        v107 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v108 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v109 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v110 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v111 = tracingSignposter.unsafeMutableAddressor();
        v112 = v419;
        v113 = v436;
        v114 = v448;
        (*(v419 + 16))(v436, v111, v448);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v115 = sub_1B0E43858();
        v116 = sub_1B0E45AE8();
        if ((sub_1B0E45D38() & 1) == 0)
        {
          goto LABEL_74;
        }

        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        LODWORD(v447) = v116;
        v119 = v118;
        v455 = v118;
        *v117 = 141558787;
        *(v117 + 4) = 0x786F626C69616DLL;
        *(v117 + 12) = 2085;
        v453 = v107;
        v454 = v108;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v120 = sub_1B0E44BA8();
        v122 = sub_1B0399D64(v120, v121, &v455);

        *(v117 + 14) = v122;
        *(v117 + 22) = 2048;
        v123 = *(v109 + 16);

        *(v117 + 24) = v123;
        *(v117 + 32) = 1024;
        *(v117 + 34) = v110;
        swift_bridgeObjectRelease_n();

        v91 = v451;
        v124 = sub_1B0E43818();
        _os_signpost_emit_with_name_impl(&dword_1B0389000, v115, v447, v124, "PersistenceEvent.update.uploadMessages", "mailbox %{sensitive,mask.mailbox}s, count %ld, isLast: %{BOOL}d", v117, 0x26u);
        __swift_destroy_boxed_opaque_existential_0(v119);
        MEMORY[0x1B272C230](v119, -1, -1);
        MEMORY[0x1B272C230](v117, -1, -1);

        (*(v112 + 8))(v436, v114);
        goto LABEL_9;
      case 0xFuLL:
        v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35E0, &unk_1B0EE3170);
        v203 = swift_projectBox();
        v204 = *v203;
        v205 = *(v203 + 8);
        v206 = *(v203 + 16);
        v207 = *(v203 + 24);
        v208 = *(v203 + 36);
        v209 = *(v203 + 37);
        LODWORD(v447) = *(v203 + 38);
        LODWORD(v446) = *(v203 + 40);
        v210 = *(v202 + 80);
        v211 = (v203 + *(v202 + 96));
        v212.i32[0] = *(v203 + 32);
        v445 = vmovl_u8(v212);
        v213 = *v211;
        v214 = v211[1];
        v215 = v430;
        v216 = sub_1B03B5C80(v203 + v210, v430, &unk_1EB6E2990, &qword_1B0E9B060);
        v448 = &v419;
        MEMORY[0x1EEE9AC00](v216);
        v217 = v451;
        *(&v419 - 8) = v451;
        *(&v419 - 7) = v204;
        *(&v419 - 12) = v205;
        v91 = v217;
        *(&v419 - 11) = vuzp1_s8((v445.i64[0] & 0xFF01FF01FF01FF01), (v445.i64[0] & 0xFF01FF01FF01FF01)).u32[0];
        *(&v419 - 40) = v208 & 1;
        *(&v419 - 39) = v209 & 1;
        *(&v419 - 19) = v447;
        *(&v419 - 36) = v446 & 1;
        *(&v419 - 4) = v215;
        *(&v419 - 3) = v213;
        *(&v419 - 2) = v214;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03B2000(v206, v207);
        sub_1B03B2000(v213, v214);
        sub_1B0BB5F90(sub_1B0BB7028, (&v419 - 10), v206, v207);

        sub_1B0391D50(v213, v214);
        sub_1B0391D50(v206, v207);
        sub_1B0398EFC(v215, &unk_1EB6E2990, &qword_1B0E9B060);
        goto LABEL_9;
      case 0x10uLL:
        v103 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v104 = *(v103 + 16);
        if (v104)
        {
          v105 = *(v103 + 32);
          v106 = *(v103 + 32 * v104);
        }

        else
        {
          v106 = 0;
          v105 = 0;
        }

        v113 = v438;
        LODWORD(v447) = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v388 = tracingSignposter.unsafeMutableAddressor();
        v112 = v419;
        v114 = v448;
        (*(v419 + 16))(v113, v388, v448);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v389 = sub_1B0E43858();
        LODWORD(v446) = sub_1B0E45AE8();
        if ((sub_1B0E45D38() & 1) == 0)
        {
          goto LABEL_97;
        }

        v390 = swift_slowAlloc();
        v391 = swift_slowAlloc();
        v445.i32[0] = v106;
        v392 = v391;
        v453 = v391;
        *v390 = 136316162;
        v393 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v394 = OpaqueMailboxID.description.getter(v393);
        v396 = v395;

        v397 = sub_1B0399D64(v394, v396, &v453);

        *(v390 + 4) = v397;
        *(v390 + 12) = 2048;
        v398 = *(v103 + 16);

        *(v390 + 14) = v398;
        *(v390 + 22) = 1024;
        *(v390 + 24) = v105;
        *(v390 + 28) = 1024;
        *(v390 + 30) = v445.i32[0];
        *(v390 + 34) = 1024;
        *(v390 + 36) = v447;
        swift_bridgeObjectRelease_n();

        v91 = v451;
        v399 = sub_1B0E43818();
        _os_signpost_emit_with_name_impl(&dword_1B0389000, v389, v446, v399, "PersistenceEvent.update.uploadChangedFlags", "mailbox %s, message count %ld, {%u %u}, isLast: %{BOOL}d", v390, 0x28u);
        __swift_destroy_boxed_opaque_existential_0(v392);
        MEMORY[0x1B272C230](v392, -1, -1);
        MEMORY[0x1B272C230](v390, -1, -1);

        (*(v112 + 8))(v438, v114);
        goto LABEL_9;
      case 0x11uLL:
        v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A8, &unk_1B0ECD730);
        v242 = swift_projectBox();
        v243 = v442;
        sub_1B03B5C80(v242 + *(v241 + 48), v442, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v244 = tracingSignposter.unsafeMutableAddressor();
        v245 = v419;
        v246 = v82;
        v247 = v82;
        v248 = v448;
        (*(v419 + 16))(v246, v244, v448);
        v249 = v429;
        sub_1B03B5C80(v243, v429, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        swift_bridgeObjectRetain_n();
        v250 = sub_1B0E43858();
        v251 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v252 = swift_slowAlloc();
          LODWORD(v447) = v251;
          v253 = v252;
          v254 = swift_slowAlloc();
          v453 = v254;
          *v253 = 136315394;
          v255 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v256 = OpaqueMailboxID.description.getter(v255);
          v258 = v257;

          v259 = sub_1B0399D64(v256, v258, &v453);

          *(v253 + 4) = v259;
          *(v253 + 12) = 2048;
          v260 = MessageIdentifierSet.count.getter();
          sub_1B0398EFC(v249, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          *(v253 + 14) = v260;
          swift_bridgeObjectRelease_n();
          v91 = v451;
          v261 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v250, v447, v261, "PersistenceEvent.update.uploadMessagesWithChangedFlagAfterCopy", "mailbox %s, message count %ld", v253, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v254);
          MEMORY[0x1B272C230](v254, -1, -1);
          MEMORY[0x1B272C230](v253, -1, -1);

          (*(v245 + 8))(v247, v248);
          v146 = v442;
LABEL_64:
          sub_1B0398EFC(v146, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          goto LABEL_9;
        }

        sub_1B0398EFC(v249, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        swift_bridgeObjectRelease_n();

        (*(v245 + 8))(v247, v248);
        v385 = v243;
LABEL_88:
        sub_1B0398EFC(v385, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        goto LABEL_99;
      case 0x12uLL:
        v327 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v328 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v329 = *(v328 + 16);
        if (v329)
        {
          v330 = *(v328 + 36);
          v331 = *(v328 + 40 * v329 - 4);
        }

        else
        {
          v331 = 0;
          v330 = 0;
        }

        v113 = v440;
        v400 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        LODWORD(v447) = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v401 = tracingSignposter.unsafeMutableAddressor();
        v112 = v419;
        v114 = v448;
        (*(v419 + 16))(v113, v401, v448);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v389 = sub_1B0E43858();
        LODWORD(v446) = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v402 = swift_slowAlloc();
          v403 = swift_slowAlloc();
          v445.i32[0] = v331;
          v404 = v330;
          v405 = v403;
          v455 = v403;
          *v402 = 141559299;
          *(v402 + 4) = 0x786F626C69616DLL;
          *(v402 + 12) = 2085;
          v453 = v327;
          v454 = v400;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v406 = sub_1B0E44BA8();
          v408 = sub_1B0399D64(v406, v407, &v455);

          *(v402 + 14) = v408;
          *(v402 + 22) = 2048;
          v409 = *(v328 + 16);

          *(v402 + 24) = v409;
          *(v402 + 32) = 1024;
          *(v402 + 34) = v404;
          *(v402 + 38) = 1024;
          *(v402 + 40) = v445.i32[0];
          *(v402 + 44) = 1024;
          *(v402 + 46) = v447;
          swift_bridgeObjectRelease_n();

          v91 = v451;
          v410 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v389, v446, v410, "PersistenceEvent.update.moveOrCopyMessages", "mailbox %{sensitive,mask.mailbox}s, moves count %ld, {%u %u}, isLast: %{BOOL}d", v402, 0x32u);
          __swift_destroy_boxed_opaque_existential_0(v405);
          MEMORY[0x1B272C230](v405, -1, -1);
          MEMORY[0x1B272C230](v402, -1, -1);

          (*(v112 + 8))(v440, v114);
          goto LABEL_9;
        }

LABEL_97:

        swift_bridgeObjectRelease_n();
        goto LABEL_98;
      case 0x13uLL:
        v382 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v383 = tracingSignposter.unsafeMutableAddressor();
        v264 = v419;
        v265 = v422;
        v266 = v448;
        (*(v419 + 16))(v422, v383, v448);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v267 = sub_1B0E43858();
        v268 = sub_1B0E45AE8();
        if ((sub_1B0E45D38() & 1) == 0)
        {
          goto LABEL_72;
        }

        v269 = swift_slowAlloc();
        *v269 = 134217984;
        *(v269 + 4) = *(v382 + 16);
        swift_bridgeObjectRelease_n();
        v91 = v451;
        v270 = sub_1B0E43818();
        v271 = "PersistenceEvent.update.setSearchRequests";
        goto LABEL_71;
      case 0x14uLL:
        v262 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v263 = tracingSignposter.unsafeMutableAddressor();
        v264 = v419;
        v265 = v423;
        v266 = v448;
        (*(v419 + 16))(v423, v263, v448);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v267 = sub_1B0E43858();
        v268 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v269 = swift_slowAlloc();
          *v269 = 134217984;
          *(v269 + 4) = *(v262 + 16);
          swift_bridgeObjectRelease_n();
          v91 = v451;
          v270 = sub_1B0E43818();
          v271 = "PersistenceEvent.update.setDownloadRequests";
LABEL_71:
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v267, v268, v270, v271, "count %ld", v269, 0xCu);
          MEMORY[0x1B272C230](v269, -1, -1);

          v101 = v449;
          v384 = v450;
        }

        else
        {
LABEL_72:

          swift_bridgeObjectRelease_n();
          v101 = v449;
          v384 = v450;
          v91 = v451;
        }

        (*(v264 + 8))(v265, v266);
        v100 = v384;
        return (*(v101 + 8))(v91, v100);
      case 0x15uLL:
        v279 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v280 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v281 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v282 = tracingSignposter.unsafeMutableAddressor();
        v112 = v419;
        v113 = v433;
        v114 = v448;
        (*(v419 + 16))(v433, v282, v448);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v115 = sub_1B0E43858();
        v283 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v284 = swift_slowAlloc();
          v285 = swift_slowAlloc();
          LODWORD(v447) = v283;
          v286 = v285;
          v455 = v285;
          *v284 = 141558531;
          *(v284 + 4) = 0x786F626C69616DLL;
          *(v284 + 12) = 2085;
          v453 = v279;
          v454 = v280;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v287 = sub_1B0E44BA8();
          v289 = sub_1B0399D64(v287, v288, &v455);

          *(v284 + 14) = v289;
          *(v284 + 22) = 2048;
          v290 = *(v281 + 16);

          *(v284 + 24) = v290;

          swift_bridgeObjectRelease_n();
          v91 = v451;
          v291 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v115, v447, v291, "PersistenceEvent.update.setUIDsForDownloadRequests", "mailbox %{sensitive,mask.mailbox}s, UID count %ld", v284, 0x20u);
          __swift_destroy_boxed_opaque_existential_0(v286);
          MEMORY[0x1B272C230](v286, -1, -1);
          MEMORY[0x1B272C230](v284, -1, -1);

          (*(v112 + 8))(v433, v114);
          goto LABEL_9;
        }

LABEL_74:

        swift_bridgeObjectRelease_n();
LABEL_98:
        swift_bridgeObjectRelease_n();
        (*(v112 + 8))(v113, v114);
        goto LABEL_99;
      case 0x16uLL:
        v375 = tracingSignposter.unsafeMutableAddressor();
        v376 = v419;
        v377 = v448;
        (*(v419 + 16))(v69, v375, v448);
        v378 = sub_1B0E43858();
        v379 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v380 = swift_slowAlloc();
          *v380 = 0;
          v91 = v451;
          v381 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v378, v379, v381, "PersistenceEvent.update.credentialsDidChange", "", v380, 2u);
          MEMORY[0x1B272C230](v380, -1, -1);

          (*(v376 + 8))(v69, v377);
          goto LABEL_9;
        }

        (*(v376 + 8))(v69, v377);
LABEL_99:
        v101 = v449;
        v100 = v450;
        v91 = v451;
        break;
      default:
        v83 = *(a2 + 16);
        v84 = *(a2 + 17);
        v85 = *(a2 + 18);
        v86 = *(a2 + 24);
        v87 = tracingSignposter.unsafeMutableAddressor();
        (*(v419 + 16))(v75, v87, v448);
        v88 = sub_1B0E43858();
        v89 = sub_1B0E45AE8();
        v90 = sub_1B0E45D38();
        v91 = v451;
        if (v90)
        {
          v92 = swift_slowAlloc();
          *v92 = 16778240;
          *(v92 + 4) = v83 + 1;
          *(v92 + 5) = 1024;
          *(v92 + 7) = v84 ^ 1;
          *(v92 + 11) = 1024;
          *(v92 + 13) = v85;
          *(v92 + 17) = 2048;
          *(v92 + 19) = v86;
          v93 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v88, v89, v93, "PersistenceEvent.update.environmentDidChange", "power %hhu, app visible %{BOOL}d, locked %{BOOL}d, thermals %ld", v92, 0x1Bu);
          MEMORY[0x1B272C230](v92, -1, -1);
        }

        (*(v419 + 8))(v75, v448);
        goto LABEL_9;
    }
  }

  else
  {
    v94 = tracingSignposter.unsafeMutableAddressor();
    (*(v26 + 16))(v78, v94, v25);
    v95 = sub_1B0E43858();
    v96 = sub_1B0E45AE8();
    v97 = sub_1B0E45D38();
    v91 = v451;
    if (v97)
    {
      v98 = swift_slowAlloc();
      *v98 = 67109120;
      *(v98 + 4) = a2;
      v99 = sub_1B0E43818();
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v95, v96, v99, "PersistenceEvent.actionDidComplete", "ID %u", v98, 8u);
      MEMORY[0x1B272C230](v98, -1, -1);
    }

    (*(v26 + 8))(v78, v25);
LABEL_9:
    v101 = v449;
    v100 = v450;
  }

  return (*(v101 + 8))(v91, v100);
}

uint64_t sub_1B0397D14()
{
  v1 = *(v0 + 64);
  v11 = MEMORY[0x1E69E7CD0];
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  for (i = 0; v4; result = sub_1B03FFC1C(&v10, *(*(v1 + 56) + ((v8 << 11) | (32 * v9)))))
  {
    v8 = i;
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return v11;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++i;
    if (v4)
    {
      i = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0397E04(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = a2 + 56;
  while (1)
  {
    if (*(a2 + 16))
    {
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](0);
      v5 = sub_1B0E46CB8() & ~(-1 << *(a2 + 32));
      if ((*(v4 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
      {
        break;
      }
    }

    if (!--v2)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1B0397EC0(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v60 - v14;
  v16 = a1 >> 62;
  if (a1 >> 62)
  {
    if (v16 == 1 && (*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) & 1) != 0)
    {
      v17 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v18 = (v17 >> 59) & 0x1E | (v17 >> 2) & 1;
      if (v18)
      {
        if (v18 == 19)
        {
          v69 = v13;
          v42 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          sub_1B03906B8(a2, &v60 - v14, type metadata accessor for State.Logger);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v43 = sub_1B0E43988();
          LODWORD(v68) = sub_1B0E458C8();
          if (os_log_type_enabled(v43, v68))
          {
            v44 = swift_slowAlloc();
            v67 = v43;
            v45 = v44;
            *v44 = 68158208;
            *(v44 + 4) = 2;
            *(v44 + 8) = 256;
            LODWORD(v69) = v15[*(v69 + 20)];
            sub_1B0390514(v15, type metadata accessor for State.Logger);
            *(v45 + 10) = v69;
            *(v45 + 11) = 2048;
            *(v45 + 13) = v42[2];

            v46 = v67;
            _os_log_impl(&dword_1B0389000, v67, v68, "[%.*hhx] Setting %ld search requests.", v45, 0x15u);
            MEMORY[0x1B272C230](v45, -1, -1);
          }

          else
          {
            sub_1B0390514(v15, type metadata accessor for State.Logger);
          }

          if (*(v3 + 120))
          {
            v57 = *(v3 + 120);
          }

          else
          {
            v57 = sub_1B0BAB530(MEMORY[0x1E69E7CC0]);
          }

          v98[0] = v57;
          v98[1] = sub_1B0B87EC0;
          v98[2] = 0;
          v98[3] = sub_1B03AAF98;
          v98[4] = 0;
          v98[5] = sub_1B0B94AEC;
          v98[6] = 0;
          *&v87 = MEMORY[0x1E69E7CC8];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0B8CA40(v98, 1, &v87);
          sub_1B0B28040(v42, v87);
        }

        else if (v18 == 2)
        {
          sub_1B03FDD40(*((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x18), *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x20), *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x28), a2);
        }
      }

      else
      {
        v47 = v13;
        LODWORD(v69) = *(v17 + 16);
        v48 = *(v17 + 18);
        v64 = *(v17 + 17);
        v65 = v48;
        v68 = *(v17 + 24);
        LODWORD(v67) = *(v17 + 32);
        v66 = *(v17 + 40);
        sub_1B03906B8(a2, v11, type metadata accessor for State.Logger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v49 = sub_1B0E43988();
        v62 = sub_1B0E45908();
        v63 = v49;
        if (os_log_type_enabled(v49, v62))
        {
          v50 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *&v70[0] = v61;
          *v50 = 68158210;
          *(v50 + 4) = 2;
          *(v50 + 8) = 256;
          v51 = v11[*(v47 + 20)];
          sub_1B0390514(v11, type metadata accessor for State.Logger);
          *(v50 + 10) = v51;
          *(v50 + 11) = 2082;
          LOBYTE(v87) = v69;
          BYTE1(v87) = v64;
          BYTE2(v87) = v65;
          *(&v87 + 1) = v68;
          LOBYTE(v88) = v67;
          *(&v88 + 1) = v66;
          v52 = sub_1B0E44BA8();
          v54 = sub_1B0399D64(v52, v53, v70);

          *(v50 + 13) = v54;
          v55 = v63;
          _os_log_impl(&dword_1B0389000, v63, v62, "[%.*hhx] Received environment update: %{public}s", v50, 0x15u);
          v56 = v61;
          __swift_destroy_boxed_opaque_existential_0Tm(v61);
          MEMORY[0x1B272C230](v56, -1, -1);
          MEMORY[0x1B272C230](v50, -1, -1);
        }

        else
        {
          sub_1B0390514(v11, type metadata accessor for State.Logger);
        }

        *(v3 + 24) = v69;
        v58 = v65;
        *(v3 + 25) = v64;
        *(v3 + 26) = v58;
        *(v3 + 32) = v68;
        *(v3 + 40) = v67;
        *(v3 + 48) = v66;
      }
    }
  }

  else
  {
    v19 = a1[3];
    if (v19 >> 60 == 6)
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      *(v3 + 56) = v20;
    }
  }

  v21 = *(v3 + 72);
  if (v21 == 2)
  {
    v22 = ServerID.empty.unsafeMutableAddressor();
    v24 = v22[1];
    v23 = v22[2];
    v87 = *v22;
    v88 = v24;
    v89 = v23;
    v25 = v22[6];
    v27 = v22[3];
    v26 = v22[4];
    v92 = v22[5];
    v93 = v25;
    v90 = v27;
    v91 = v26;
    v28 = v22[10];
    v30 = v22[7];
    v29 = v22[8];
    v96 = v22[9];
    v97 = v28;
    v94 = v30;
    v95 = v29;
    sub_1B039F420(&v87, v70);
    sub_1B039F4CC(MEMORY[0x1E69E7CD0], &v87, &v77);
    v21 = v77;
    v31 = v78;
    v32 = v79;
    v33 = v80 | (v81 << 16);
  }

  else
  {
    v33 = *(v3 + 112) | (*(v3 + 114) << 16);
    v31 = *(v3 + 80);
    v32 = *(v3 + 96);
  }

  v82 = v21;
  v83 = v31;
  v84 = v32;
  v85 = v33;
  v86 = BYTE2(v33);
  sub_1B0B2C294(a1, &v82, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 120), a2);
  sub_1B03A53FC(a1, a2);
  if (!v16)
  {
    v34 = a1[3];
    if (v34 >> 60 == 3)
    {
      v35 = swift_projectBox();
      sub_1B03906B8(v35, v8, type metadata accessor for UntaggedResponse);
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v36 = *v8;
        v37 = *(v8 + 2);
        v38 = *(v8 + 6);
        v73 = *(v8 + 5);
        v74 = v38;
        v39 = *(v8 + 8);
        v75 = *(v8 + 7);
        v76 = v39;
        v40 = *(v8 + 2);
        v70[0] = *(v8 + 1);
        v70[1] = v40;
        v41 = *(v8 + 4);
        v71 = *(v8 + 3);
        v72 = v41;
        if (BYTE8(v70[0]) & 1) != 0 || (v71 & 1) != 0 || (BYTE8(v71))
        {

          sub_1B0B11B9C(v70);
        }

        else
        {
          v59 = v36;
          sub_1B044CD04(v34);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0B11B9C(v70);
          sub_1B0B368C4(v59, v37, (v3 + 168), v72, SBYTE8(v72));

          sub_1B044CEF8(v34);
        }
      }

      else
      {
        sub_1B0390514(v8, type metadata accessor for UntaggedResponse);
      }
    }
  }
}

void sub_1B039868C(unint64_t a1, char a2, uint64_t a3)
{
  v7 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - v12;
  if (a2)
  {
    switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
    {
      case 3uLL:
        v26 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

        sub_1B0B2A948(v26);
        return;
      case 5uLL:
        v27 = v11;
        v28 = v3;
        v29 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v30 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v31 = sub_1B03B1374(v29, v30);

        sub_1B03B1BD0(a3, v9, type metadata accessor for State.Logger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v32 = sub_1B0E43988();
        v33 = sub_1B0E45908();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 68158208;
          *(v34 + 4) = 2;
          *(v34 + 8) = 256;
          v35 = v9[*(v27 + 20)];
          sub_1B03B1DC0(v9, type metadata accessor for State.Logger);
          *(v34 + 10) = v35;
          *(v34 + 11) = 2048;
          *(v34 + 13) = v31[2];

          _os_log_impl(&dword_1B0389000, v32, v33, "[%.*hhx] Updating mailbox priorities (%ld).", v34, 0x15u);
          MEMORY[0x1B272C230](v34, -1, -1);
        }

        else
        {
          sub_1B03B1DC0(v9, type metadata accessor for State.Logger);
        }

        *(v28 + 40) = v31;
        return;
      case 6uLL:
        v42 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        MEMORY[0x1EEE9AC00](v11);
        *(&v44 - 2) = a3;
        v43 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B25DE4(v43, v42, sub_1B0B37AD0);

        return;
      case 8uLL:
      case 0xCuLL:
      case 0x10uLL:
        v21 = ((a1 & 0xFFFFFFFFFFFFFFBLL) + 16);
        v22 = ((a1 & 0xFFFFFFFFFFFFFFBLL) + 24);
        goto LABEL_7;
      case 9uLL:
      case 0xAuLL:
      case 0x11uLL:
        v21 = swift_projectBox();
        v22 = v21 + 1;
LABEL_7:
        v23 = *v21;
        v24 = *v22;
        v25 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        MEMORY[0x1EEE9AC00](v25);
        *(&v44 - 2) = a1;
        v17 = *v3;
        v19 = (v3 + 8);
        v18 = *(v3 + 8);
        v20 = *(v3 + 16);
        if ((*(v3 + 24) & 1) == 0)
        {
          goto LABEL_10;
        }

        v45 = *v3;
        sub_1B03B9A2C(v17, v18, v20, 1);
        sub_1B0B2AB20(&v45, v23, v24, 1, sub_1B0B37CA8);
        goto LABEL_9;
      case 0xDuLL:
      case 0xEuLL:
      case 0x12uLL:
        v14 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v15 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v16 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        MEMORY[0x1EEE9AC00](v16);
        *(&v44 - 2) = a1;
        v17 = *v3;
        v19 = (v3 + 8);
        v18 = *(v3 + 8);
        v20 = *(v3 + 16);
        if (*(v3 + 24))
        {
          v45 = *v3;
          sub_1B03B9A2C(v17, v18, v20, 1);
          sub_1B0B2B484(&v45, v14, v15, 1, sub_1B0B37AD8);
LABEL_9:

          sub_1B03BB638(v17, v18, v20, 1);
          *v3 = v45;
          *v19 = 0;
          v19[1] = 0;
          *(v3 + 24) = 1;
        }

        else
        {
LABEL_10:
          sub_1B03B9A2C(v17, v18, v20, 0);
        }

        break;
      case 0x14uLL:
        v36 = v11;
        v37 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1B03B1BD0(a3, &v44 - v12, type metadata accessor for State.Logger);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v38 = sub_1B0E43988();
        v39 = sub_1B0E458C8();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 68158208;
          *(v40 + 4) = 2;
          *(v40 + 8) = 256;
          v41 = v13[*(v36 + 20)];
          sub_1B03B1DC0(v13, type metadata accessor for State.Logger);
          *(v40 + 10) = v41;
          *(v40 + 11) = 2048;
          *(v40 + 13) = *(v37 + 16);

          _os_log_impl(&dword_1B0389000, v38, v39, "[%.*hhx] Setting %ld download requests.", v40, 0x15u);
          MEMORY[0x1B272C230](v40, -1, -1);
        }

        else
        {
          sub_1B03B1DC0(v13, type metadata accessor for State.Logger);
        }

        sub_1B0B284C8(v37, a3);

        return;
      default:
        return;
    }
  }
}

uint64_t sub_1B0398D1C()
{
  v1 = *(v0 + 72);
  if (v1 == 2)
  {
    result = 3;
  }

  else
  {
    result = *(v0 + 81) + 1;
  }

  v3 = *(v0 + 25);
  v9 = *(v0 + 168);
  if (!*(*(v0 + 64) + 16) && (*(v0 + 137) & 1) == 0)
  {
    if (*(v0 + 192))
    {
      v4 = (v9 + 176);
      v5 = *(v9 + 16) + 1;
      while (--v5)
      {
        v6 = *v4;
        v4 += 22;
        if (*(v6 + 16))
        {
          return result;
        }
      }
    }

    v7 = result;
    v8 = *(sub_1B0398E54() + 16);

    if (((v8 == 0) & v3) == 1)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

uint64_t sub_1B0398E54()
{
  result = MEMORY[0x1E69E7CD0];
  if (v0[3])
  {
    v2 = *v0;
    v8 = MEMORY[0x1E69E7CD0];
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v2 + 184;
      do
      {
        if (*(*v4 + 16))
        {
          v5 = *(v4 - 128);
          v6 = *(v4 - 136);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03AB2E0(&v7, v6, v5);
        }

        v4 += 176;
        --v3;
      }

      while (v3);
      return v8;
    }
  }

  return result;
}

uint64_t sub_1B0398EFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B0398F64(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v24 = a6;
  v26 = a1;
  v20 = 0;
  v30 = a6;
  v21 = *(a6 - 8);
  v22 = v21;
  v7 = MEMORY[0x1EEE9AC00](0);
  v23 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9(v7);
  v27 = sub_1B0E46548() >> 3;
  v28 = *v26;
  v29 = v28;
  if (v27 < 0)
  {
    result = sub_1B0E466C8();
    __break(1u);
  }

  else
  {
    v19 = v28 + v27;
    v18 = &v18;
    MEMORY[0x1EEE9AC00](v23);
    v16 = v29;
    v17 = v10;
    sub_1B0394C3C(v11, sub_1B0399430, &v15, v12, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v13, MEMORY[0x1E69E7CA8]);
    (*(v22 + 8))(v23, v24);
    result = v18;
    *v26 = v19;
  }

  return result;
}

uint64_t sub_1B0399178(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B0394BAC();
  v5 = MEMORY[0x1E69E72F0];

  return sub_1B0398F64(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_1B03991EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B0394874();
  v5 = MEMORY[0x1E69E7668];

  return sub_1B0398F64(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_1B0399260(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B039A4F8();
  v5 = MEMORY[0x1E69E6530];

  return sub_1B0398F64(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_1B03992D4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B06BCD98();
  v5 = MEMORY[0x1E69E7360];

  return sub_1B0398F64(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_1B0399348(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B06D4E14();
  v5 = MEMORY[0x1E69E75F8];

  return sub_1B0398F64(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_1B03993BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B0694488();
  v5 = MEMORY[0x1E69E76D8];

  return sub_1B0398F64(a1, a2, a3, v9, v10, v5, v4);
}

void *sub_1B03994F0(void *result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_1B06BCAAC(v22, v17, v16);
        sub_1B0E45EB8();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_1B03B7980(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_1B0E46368();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_1B0E465A8();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03998A8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    sub_1B0E45D68();
    return sub_1B0E45D58();
  }

  return result;
}

uint64_t sub_1B0399938()
{
  LOWORD(v2) = *(v0 + 16);
  BYTE2(v2) = *(v0 + 18);
  return sub_1B0399984(v2);
}

uint64_t sub_1B0399984(int a1)
{
  LOWORD(v2) = a1;
  BYTE2(v2) = BYTE2(a1);
  return v2;
}

__n128 __swift_memcpy32_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B03999F4()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *v0;
  if (v0[2])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return Environment.description.getter(v2 | v3, *(v0 + 1), v0[16]);
}

uint64_t Environment.description.getter(int a1, uint64_t a2, unsigned __int8 a3)
{
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v5 = 0xE800000000000000;
        v6 = 0x6C61636974697263;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v5 = 0xE700000000000000;
    v6 = 0x73756F69726573;
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v5 = 0xE400000000000000;
        v6 = 1919508838;
        goto LABEL_11;
      }

LABEL_8:
      v6 = sub_1B0E469C8();
      v5 = v7;
      goto LABEL_11;
    }

    v5 = 0xE700000000000000;
    v6 = 0x6C616E696D6F6ELL;
  }

LABEL_11:
  sub_1B0E46298();
  MEMORY[0x1B2726E80](0x203A7265776F70, 0xE700000000000000);
  if (a1)
  {
    if (a1 == 1)
    {
      v8 = 0x7265747461426E6FLL;
    }

    else
    {
      v8 = 0x4964656767756C70;
    }

    if (a1 == 1)
    {
      v9 = 0xE900000000000079;
    }

    else
    {
      v9 = 0xE90000000000006ELL;
    }
  }

  else
  {
    v8 = 0x7265776F50776F6CLL;
    v9 = 0xE800000000000000;
  }

  MEMORY[0x1B2726E80](v8, v9);

  MEMORY[0x1B2726E80](8236, 0xE200000000000000);
  if ((a1 & 0x100) != 0)
  {
    v10 = 0x756F72676B636162;
  }

  else
  {
    v10 = 0x656C6269736976;
  }

  if ((a1 & 0x100) != 0)
  {
    v11 = 0xEC0000006465646ELL;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  MEMORY[0x1B2726E80](v10, v11);

  MEMORY[0x1B2726E80](8236, 0xE200000000000000);
  if ((a1 & 0x10000) != 0)
  {
    v12 = 0x64656B636F6CLL;
  }

  else
  {
    v12 = 0x64656B636F6C6E75;
  }

  if ((a1 & 0x10000) != 0)
  {
    v13 = 0xE600000000000000;
  }

  else
  {
    v13 = 0xE800000000000000;
  }

  MEMORY[0x1B2726E80](v12, v13);

  MEMORY[0x1B2726E80](0xD000000000000011, 0x80000001B0F2F090);
  MEMORY[0x1B2726E80](v6, v5);

  MEMORY[0x1B2726E80](0x73206B736964202CLL, 0xEE00203A65636170);
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      v14 = 0x80000001B0F2F040;
      v15 = 0xD00000000000001DLL;
    }

    else
    {
      v14 = 0xE800000000000000;
      v15 = 0x746E61646E756261;
    }
  }

  else if (a3)
  {
    v14 = 0x80000001B0F2F060;
    v15 = 0xD000000000000022;
  }

  else
  {
    v14 = 0xE300000000000000;
    v15 = 7827308;
  }

  MEMORY[0x1B2726E80](v15, v14);

  return 0;
}

uint64_t sub_1B0399D64(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = sub_1B03994F0(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_1B039AEC8(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v13[3] = MEMORY[0x1E69E6A18];
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_1B039AEC8(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return v11;
}

uint64_t sub_1B0399F08(char a1)
{
  swift_beginAccess();
  v1 = sub_1B039AA00();
  sub_1B0399F8C(a1 & 1, v1);
  return swift_endAccess();
}

uint64_t sub_1B0399F8C(uint64_t result, uint64_t a2)
{
  if (*(v2 + 8))
  {
    if (result)
    {
      *v3 = a2;
      *(v3 + 8) = 0;
    }
  }

  else if ((result & 1) == 0)
  {
    *v3 = 0;
    *(v3 + 8) = 1;
  }

  return result;
}

uint64_t sub_1B039A040(uint64_t a1)
{
  v4 = swift_allocObject();

  swift_weakInit();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = swift_allocObject();
  *(v3 + 16) = v4;
  *(v3 + 24) = a1;
  sub_1B039A170(sub_1B039D3F4, v3);
}

uint64_t sub_1B039A128()
{

  return swift_deallocObject();
}

uint64_t sub_1B039A170(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v17 = a2;
  v16 = sub_1B039CA7C;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v23 = sub_1B0E44468();
  v21 = *(v23 - 8);
  v22 = v23 - 8;
  v19 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v24 = (v10 - v19);
  v28 = v3;
  v29 = v4;
  v27 = v2;

  v20 = *(v2 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v20);
  v5 = v21;
  *v24 = v20;
  (*(v5 + 104))();
  v25 = sub_1B0E44488();
  (*(v21 + 8))(v24, v23);
  result = v25;
  if (v25)
  {

    v10[0] = v15 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_recentMailboxes;
    v10[1] = &v26;
    v10[2] = 32;
    swift_beginAccess();
    v14 = *v10[0];

    swift_endAccess();
    v13 = *(v15 + 112);
    MEMORY[0x1E69E5928](v13);
    v12 = *(v15 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
    MEMORY[0x1E69E5928](v12);

    v7 = swift_allocObject();
    v8 = v17;
    v11 = v7;
    *(v7 + 16) = v18;
    *(v7 + 24) = v8;
    v9 = sub_1B039AA00();
    sub_1B039AF3C(v13, v9, v12, v16, v11);

    MEMORY[0x1E69E5920](v12);
    MEMORY[0x1E69E5920](v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B039A494()
{
  v2 = qword_1EB6DA5B0;
  if (!qword_1EB6DA5B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA5B0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B039A4F8()
{
  v2 = qword_1EB6DEE30;
  if (!qword_1EB6DEE30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEE30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B039A570@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v18 = a7;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v25 = a6;
  v39 = a4;
  v38 = a5;
  v26 = *(a4 - 8);
  v27 = a4 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v29 = v17 - v28;
  v35 = *(v8 + 16);
  v37 = v35;
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v30 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v31 = v17 - v30;
  v32 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v36 = v17 - v32;
  sub_1B039A874(v12, v17 - v32, v13, v14);
  if ((*(v33 + 48))(v36, 1, v35) == 1)
  {
    result = (*(*(v23 - 8) + 56))(v18, 1);
    v17[1] = v24;
  }

  else
  {
    (*(v33 + 32))(v31, v36, v35);
    v16 = v24;
    v19(v31, v29);
    v17[0] = v16;
    (*(v33 + 8))(v31, v35);
    if (v16)
    {
      return (*(v26 + 32))(v25, v29, v22);
    }

    else
    {
      return v17[0];
    }
  }

  return result;
}

void *sub_1B039A874(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t *sub_1B039A984@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  if (*result <= 0)
  {
    v2 = 0;
    v3 = 1;
  }

  else
  {
    v2 = *result;
    v3 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3 & 1;
  return result;
}

id sub_1B039AA18()
{
  v6 = *(v0 + 112);
  MEMORY[0x1E69E5928](v6);
  v7 = sub_1B039AB2C();
  v8 = v1;
  MEMORY[0x1E69E5920](v6);
  result = v7;
  if ((v8 & 1) == 0)
  {
    v3 = (v5 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_userVisibleMailboxes);
    swift_beginAccess();
    v4 = *v3;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    sub_1B039A040(v4);
  }

  return result;
}

id sub_1B039AB2C()
{
  v28[4] = 0;
  v20 = 0;
  v21 = 0;
  v14 = 0;
  v13 = 0;
  MEMORY[0x1E69E5928](@"NumberOfDaysToKeepTrash");
  sub_1B0E44AD8();
  v10 = sub_1B0E44AC8();

  MEMORY[0x1E69E5920](@"NumberOfDaysToKeepTrash");
  v11 = [v9 _objectForAccountInfoKey_];
  MEMORY[0x1E69E5920](v10);
  if (v11)
  {
    sub_1B0E45FE8();
    sub_1B0392800(v12, v26);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v26, 0, sizeof(v26));
    v27 = 0;
  }

  if (v27)
  {
    sub_1B0392800(v26, v28);
    sub_1B039AEC8(v28, v25);
    sub_1B039A494();
    if (swift_dynamicCast())
    {
      v7 = v24;
      v14 = v24;
      v8 = [v24 integerValue];
      v13 = v8;
      if (v8 <= 0)
      {
        v6 = 0;
      }

      else
      {
        v6 = v8;
      }

      MEMORY[0x1E69E5920](v7);
      __swift_destroy_boxed_opaque_existential_0(v25);
      __swift_destroy_boxed_opaque_existential_0(v28);
      return v6;
    }

    else if (swift_dynamicCast())
    {
      v20 = v22;
      v21 = v23;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B039A4F8();
      v3 = MEMORY[0x1E69E6530];
      sub_1B0E46598();
      v15 = v17;
      v16 = v18 & 1;
      v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1CE8, &qword_1B0E9B0E8);
      sub_1B039A570(sub_1B039A984, 0, v0, MEMORY[0x1E69E73E0], v3, v4, &v19);
      v2 = v19;

      __swift_destroy_boxed_opaque_existential_0(v25);
      __swift_destroy_boxed_opaque_existential_0(v28);
      return v2;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v25);
      __swift_destroy_boxed_opaque_existential_0(v28);
      return 0;
    }
  }

  else
  {
    sub_1B041C0EC(v26);
    return 0;
  }
}

uint64_t sub_1B039AEC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_1B039AF3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a1;
  v39 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v29 = sub_1B0A21088;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v57 = 0;
  v58 = 0;
  v56 = 0;
  v47 = 0;
  v48 = 0;
  v30 = 0;
  v31 = sub_1B0E44238();
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v35 = &v16 - v34;
  v40 = sub_1B0E44288();
  v41 = *(v40 - 8);
  v42 = v40 - 8;
  v43 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v16 - v43;
  v61 = v6;
  v60 = v7;
  v59 = v8;
  v57 = v9;
  v58 = v10;
  v56 = v5;
  MEMORY[0x1E69E5928](v6);
  v46 = [v45 identifier];
  if (v46)
  {
    v28 = v46;
    v23 = v46;
    v24 = sub_1B0E44AD8();
    v25 = v11;
    MEMORY[0x1E69E5920](v23);
    v26 = v24;
    v27 = v25;
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  v21 = v27;
  v22 = v26;
  if (v27)
  {
    v19 = v22;
    v20 = v21;
    v18 = v21;
    v17 = v22;
    v47 = v22;
    v48 = v21;
    MEMORY[0x1E69E5920](v45);
    sub_1B039B3DC(v17, v18, v39, v36, v37, v38);
  }

  else
  {
    MEMORY[0x1E69E5920](v45);

    v13 = swift_allocObject();
    v14 = v38;
    v15 = v29;
    *(v13 + 16) = v37;
    *(v13 + 24) = v14;
    v54 = v15;
    v55 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = 0;
    v52 = sub_1B038C908;
    v53 = &block_descriptor_18;
    v16 = _Block_copy(&aBlock);
    sub_1B039B81C();
    sub_1B039B77C();
    MEMORY[0x1B2727B00](0, v44, v35, v16);
    (*(v32 + 8))(v35, v31);
    (*(v41 + 8))(v44, v40);
    _Block_release(v16);
  }
}

uint64_t sub_1B039B3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = sub_1B039EACC;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v54 = 0;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v33 = 0;
  v37 = sub_1B0E44238();
  v34 = *(v37 - 8);
  v35 = v37 - 8;
  v23 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v36 = &v23 - v23;
  v41 = sub_1B0E44288();
  v38 = *(v41 - 8);
  v39 = v41 - 8;
  v24 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32);
  v40 = &v23 - v24;
  v56 = v7;
  v57 = v8;
  v55 = v9;
  v54 = v10;
  v52 = v11;
  v53 = v12;
  v51 = v6;
  v43 = *(v6 + 48);
  MEMORY[0x1E69E5928](v43);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](v28);

  v13 = swift_allocObject();
  v14 = v26;
  v15 = v27;
  v16 = v28;
  v17 = v29;
  v18 = v30;
  v19 = v31;
  v20 = v13;
  v21 = v32;
  v20[2] = v25;
  v20[3] = v21;
  v20[4] = v14;
  v20[5] = v15;
  v20[6] = v16;
  v20[7] = v17;
  v20[8] = v18;
  v49 = v19;
  v50 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v45 = 1107296256;
  v46 = 0;
  v47 = sub_1B038C908;
  v48 = &block_descriptor_9_2;
  v42 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v33, v40, v36, v42);
  (*(v34 + 8))(v36, v37);
  (*(v38 + 8))(v40, v41);
  _Block_release(v42);

  return MEMORY[0x1E69E5920](v43);
}

uint64_t sub_1B039B71C()
{

  MEMORY[0x1E69E5920](*(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1B039B77C()
{
  sub_1B039B834(0);
  sub_1B0E44238();
  sub_1B039B924();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1880, &unk_1B0E99EA0);
  sub_1B039B9A4();
  return sub_1B0E460A8();
}

uint64_t sub_1B039B834(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      sub_1B0E44238();
      v1 = sub_1B0E45278();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    sub_1B0E44238();
    return v2;
  }

  return result;
}

unint64_t sub_1B039B924()
{
  v2 = qword_1EB6DEE50;
  if (!qword_1EB6DEE50)
  {
    sub_1B0E44238();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEE50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B039B9A4()
{
  v2 = qword_1EB6DEE20;
  if (!qword_1EB6DEE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1880, &unk_1B0E99EA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEE20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B039BA2C()
{
  LOBYTE(v2) = *(v0 + 16);
  HIDWORD(v2) = *(v0 + 20);
  return sub_1B039BB08(v2);
}

uint64_t sub_1B039BA4C@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1B039BA94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B039BB1C();
  v5 = MEMORY[0x1E69E7508];

  return sub_1B0398F64(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_1B039BB1C()
{
  v2 = qword_1EB6DA360;
  if (!qword_1EB6DA360)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA360);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B039BBAC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1B039BBE8()
{
  LOBYTE(v2) = *(v0 + 16);
  HIDWORD(v2) = *(v0 + 20);
  return sub_1B039BC3C(v2);
}

void *sub_1B039BC50(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = (a4)(a1, a2);
  sub_1B0399D64(v4, v5, a3);
  v8 = *a1;

  sub_1B0E45E48();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_7_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_7_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_7_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_7_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t mailboxUIDTypeFromECMailboxType(uint64_t a1)
{
  v1 = -500;
  if (a1 == 8)
  {
    v2 = 8;
  }

  else
  {
    v2 = -500;
  }

  if (a1 == 7)
  {
    v2 = 7;
  }

  if (a1 == 6)
  {
    v2 = 6;
  }

  if (a1 == 5)
  {
    v3 = 5;
  }

  else
  {
    v3 = -500;
  }

  if (a1 == 4)
  {
    v3 = 4;
  }

  if (a1 <= 5)
  {
    v2 = v3;
  }

  if (a1 == 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = -500;
  }

  if (a1 == 2)
  {
    v4 = 2;
  }

  if (a1 == 1)
  {
    v4 = 1;
  }

  if (!a1)
  {
    v1 = 0;
  }

  if (a1 == -100)
  {
    v1 = -100;
  }

  if (a1 > 0)
  {
    v1 = v4;
  }

  if (a1 <= 3)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B039BF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = 0;
  v19 = 0;
  v17 = a1;
  v14 = a1;
  sub_1B039C030(&v14, sub_1B03B1F98, 0, MEMORY[0x1E69E7360], MEMORY[0x1E69E73E0], MEMORY[0x1E6969080], a8, &v15);
  v10 = v15;
  v11 = v16;
  sub_1B03B2000(v15, v16);
  v13 = OpaqueMailboxID.init(_:)(v10, v11);
  v12 = v8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18 = v13;
  v19 = v12;
  sub_1B0391D50(v10, v11);
  sub_1B039E440(&v18);
  return v13;
}

uint64_t sub_1B039C030@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v12[2] = a8;
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a5;
  v18 = a7;
  v19 = "Fatal error";
  v20 = "UnsafeRawBufferPointer with negative count";
  v21 = "Swift/UnsafeRawBufferPointer.swift";
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v22 = *(a5 - 8);
  v23 = a5 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](a1);
  v25 = v12 - v24;
  v26 = *(*(v9 - 8) + 64);
  if (v26 < 0)
  {
    result = sub_1B0E466C8();
    __break(1u);
  }

  else
  {
    v10 = v17;
    result = (v14)(v13, v13 + v26, v25, v8);
    v12[1] = v10;
    if (v10)
    {
      return (*(v22 + 32))(v18, v25, v16);
    }
  }

  return result;
}

uint64_t sub_1B039C1F8(uint64_t a1)
{
  v3 = *(v1 + 48);

  v3(a1);
  sub_1B0390678(a1, 1);
}

uint64_t sub_1B039C290(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  result = sub_1B039C754();
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v54 = result;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    while (1)
    {
      v10 = v3;
LABEL_8:
      v11 = *(v54 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v8))));
      v12 = *v11;
      v55 = *(v11 + 8);
      memcpy(v60, __src, sizeof(v60));
      v13 = LOBYTE(v60[3]);
      v14 = BYTE1(v60[3]);
      v15 = v60[4];
      v53 = LOBYTE(v60[5]);
      v16 = BYTE2(v60[2]);
      v17 = v60[7];
      v52 = v60[6];
      v57 = v12;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v18 = sub_1B0397D14();
      v19 = v18;
      v59 = v16;
      if (v15 != 3 && v15 != 2)
      {
        break;
      }

      v20 = 0;
      v21 = 0;
      v22 = 0x100000000000000;
      v23 = 0x100000000;
      v24 = 1;
      v25 = 512;
      v26 = 0x1000000;
      v27 = v57;
LABEL_82:
      v8 &= v8 - 1;
      if (v60[24])
      {
        v42 = v60[22];
        v41 = v60[23];
        v43 = v60[21];
        v58 = v60[21];
        if (v59)
        {
          v44 = 0x1000000000000;
        }

        else
        {
          v44 = 0;
        }

        v45 = v20 | v25 | v24 | v26 | v23 | v21 | v22;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B2BAD4(&v58, v27, v55, 0, a1 & 0x101010101FFFF01, v45 | v44);

        result = sub_1B03BB638(v43, v42, v41, 1);
        v46 = v58;
        *(__src + 22) = 0;
        *(__src + 23) = 0;
        *(__src + 21) = v46;
        *(__src + 192) = 1;
        v3 = v10;
        if (!v8)
        {
          goto LABEL_5;
        }
      }

      else
      {

        v3 = v10;
        if (!v8)
        {
          goto LABEL_5;
        }
      }
    }

    v28 = sub_1B0BAE1A4(v18);
    if ((v14 & 1) == 0)
    {
      if (v15 == 1)
      {
        if (v13)
        {
          if (v13 == 1)
          {
            v29 = 0;
            v30 = 0x100000000;
            v31 = 512;
LABEL_91:
            v47 = v31;
            goto LABEL_26;
          }

LABEL_90:
          v29 = 0;
          v30 = 0;
          v13 = 1;
          v31 = 256;
          goto LABEL_91;
        }
      }

      else if (!v15 && v13)
      {
        if (v13 != 1)
        {
          v13 = 0;
          v47 = 0;
          v29 = 0;
          v30 = 0;
          goto LABEL_26;
        }

        goto LABEL_90;
      }
    }

    v13 = (v28 & 1) == 0;
    if (v28)
    {
      v30 = 0;
    }

    else
    {
      v30 = 0x100000000;
    }

    v32 = 512;
    if (v28)
    {
      v32 = 0;
    }

    v47 = v32;
    v29 = (v28 & 1) == 0;
LABEL_26:
    v33 = sub_1B0397E04(&unk_1F2710548, v17);
    if (v33)
    {
      v34 = v13;
    }

    else
    {
      v34 = 1;
    }

    v35 = (v33 & 1) == 0 || v29;
    v48 = v35;
    v49 = v34;
    v50 = sub_1B0BAE1A4(v19);
    v36 = sub_1B039109C(v17);

    v37 = v36 ^ 1;
    if (v36 & 1) == 0 && (v14)
    {
      v37 = sub_1B0BAE1A4(v19);
      v36 = v37 ^ 1;
    }

    v38 = *(v19 + 16);

    v39 = (v38 == 0) & v14;
    if (v53 <= 1)
    {
      v23 = v30;
      if (v53)
      {
        v20 = 0;
        v26 = 0;
        v25 = v47;
        if (v52 >= 3989)
        {
          v25 = 512;
        }

        v40 = v39 == 0;
        v22 = 0x100000000000000;
        if (v40)
        {
          v22 = 0;
        }

        LODWORD(v24) = v49;
        v21 = 0x10000000000;
        if ((v50 & 1) == 0)
        {
          v21 = 0;
        }

        v27 = v57;
        if ((v48 & 1) == 0)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v20 = 0;
        v40 = v39 == 0;
        v22 = 0x100000000000000;
        if (v40)
        {
          v22 = 0;
        }

        v21 = 0x10000000000;
        if ((v50 & 1) == 0)
        {
          v21 = 0;
        }

        LODWORD(v24) = 1;
        v25 = 512;
        v27 = v57;
      }

      goto LABEL_77;
    }

    v23 = v30;
    if (v53 == 2)
    {
      v20 = 0x10000;
      if ((v37 & 1) == 0)
      {
        v20 = 0;
      }

      if ((v36 & 1) == 0)
      {
        v20 = 0x20000;
      }

      v25 = v47;
      if (v52 >= 3989)
      {
        v25 = 512;
      }

      v40 = v39 == 0;
      v22 = 0x100000000000000;
      if (v40)
      {
        v22 = 0;
      }

      v21 = 0x10000000000;
      if ((v50 & 1) == 0)
      {
        v21 = 0;
      }

      if (v48)
      {
        v27 = v57;
LABEL_76:
        LODWORD(v24) = v49;
LABEL_77:
        v26 = 0x1000000;
LABEL_81:
        v24 = v24;
        goto LABEL_82;
      }

      v26 = 0;
      v27 = v57;
    }

    else
    {
      v20 = 0x10000;
      if ((v37 & 1) == 0)
      {
        v20 = 0;
      }

      v25 = v47;
      if (v52 >= 3989)
      {
        v25 = 512;
      }

      v40 = v39 == 0;
      v22 = 0x100000000000000;
      if (v40)
      {
        v22 = 0;
      }

      v21 = 0x10000000000;
      if ((v50 & 1) == 0)
      {
        v21 = 0;
      }

      v27 = v57;
      if (v48)
      {
        goto LABEL_76;
      }

      v26 = 0;
    }

    LODWORD(v24) = v49;
    goto LABEL_81;
  }

  while (1)
  {
LABEL_5:
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1B039C754()
{
  result = MEMORY[0x1E69E7CD0];
  if (*(v0 + 192))
  {
    v2 = *(v0 + 168);
    v10 = MEMORY[0x1E69E7CD0];
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = (v2 + 128);
      v5 = v4;
      do
      {
        v6 = *v5;
        v5 += 22;
        if (v6)
        {
          v7 = *(v4 - 18);
          v8 = *(v4 - 10);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03AB2E0(&v9, v8, v7);
        }

        v4 = v5;
        --v3;
      }

      while (v3);
      return v10;
    }
  }

  return result;
}

uint64_t sub_1B039C7FC(uint64_t a1, void *a2)
{
  memcpy(v10, a2, sizeof(v10));
  v11 = v10[32];
  v3 = BYTE1(v10[3]);
  v4 = v10[4];
  v5 = v10[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = sub_1B0397D14();
  v7 = v6;
  if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
  }

  else
  {
    sub_1B0BAE1A4(v6);
    sub_1B0397E04(&unk_1F2710548, v5);
    sub_1B0BAE1A4(v7);
    v8 = sub_1B039109C(v5);

    if (v8 & 1) == 0 && (v3)
    {
      sub_1B0BAE1A4(v7);
    }
  }

  result = sub_1B0398EFC(&v11, &qword_1EB6E18F0, qword_1B0E99F10);
  a2[32] = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t sub_1B039C900(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{

  a1(a3);
}

uint64_t sub_1B039C970(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3460, &qword_1B0EA1F70);
  v3 = sub_1B039D36C();
  v8 = sub_1B039CA88(sub_1B09C1DF8, 0, v6, &type metadata for OpaqueMailboxID, MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v7);

  a2(v8);
}

uint64_t sub_1B039CA88(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a1;
  v35 = a2;
  v59 = a3;
  v49 = a4;
  v36 = a5;
  v58 = a6;
  v38 = a8;
  v39 = "Fatal error";
  v40 = "Range requires lowerBound <= upperBound";
  v41 = "Swift/Range.swift";
  v42 = "Index out of range";
  v43 = "invalid Collection: count differed in successive traversals";
  v44 = "Swift/ArrayShared.swift";
  v69[3] = a3;
  v69[2] = a4;
  v69[1] = a5;
  v45 = *(a5 - 8);
  v46 = a5 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v48 = &v15 - v47;
  v50 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v53 = AssociatedTypeWitness - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50);
  v55 = &v15 - v54;
  v56 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v15 - v56;
  v60 = swift_getAssociatedTypeWitness();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v59);
  v64 = &v15 - v63;
  v65 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v15 - v65;
  v67 = sub_1B0E45698();
  if (!v67)
  {
    goto LABEL_24;
  }

  v69[0] = sub_1B0E46488();
  v33 = sub_1B0E46498();
  sub_1B0E463E8();
  result = sub_1B0E45668();
  if (v67 < 0)
  {
    sub_1B0E465A8();
    __break(1u);
LABEL_24:
    v17 = sub_1B0E45258();
    v18 = v37;
    return v17;
  }

  if (!v67)
  {
LABEL_19:
    v23 = v37;
LABEL_20:
    v19 = v23;
    sub_1B0E456C8();
    swift_getAssociatedConformanceWitness();
    v22 = sub_1B0E44A28();
    v20 = *(v61 + 8);
    v21 = v61 + 8;
    v20(v64, v60);
    if ((v22 & 1) == 0)
    {
      sub_1B0E466C8();
      __break(1u);
    }

    v20(v66, v60);
    v16 = v69[0];

    v17 = v16;
    v18 = v19;
    return v17;
  }

  v31 = 0;
  for (i = v37; ; i = v27)
  {
    v29 = i;
    v30 = v31;
    if (v31 < 0 || v30 >= v67)
    {
      goto LABEL_18;
    }

    if (v67 < 0)
    {
      sub_1B0E465A8();
      __break(1u);
LABEL_18:
      sub_1B0E466C8();
      __break(1u);
      goto LABEL_19;
    }

    v28 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    v26 = &v68;
    v25 = sub_1B0E457B8();
    (*(v52 + 16))(v55);
    v25();
    v14 = v29;
    v34(v55, v48);
    v27 = v14;
    if (v14)
    {
      (*(v52 + 8))(v55, AssociatedTypeWitness);
      (*(v61 + 8))(v66, v60);
      sub_1B0391AD4(v69);
      (*(v45 + 32))(v38, v48, v36);
      return v24;
    }

    (*(v52 + 8))(v55, AssociatedTypeWitness);
    sub_1B0E46468();
    sub_1B0E456D8();
    if (v28 == v67)
    {
      v23 = v27;
      goto LABEL_20;
    }

    result = v27;
    v31 = v28;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B039D36C()
{
  v2 = qword_1EB6DB2A8;
  if (!qword_1EB6DB2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3460, &qword_1B0EA1F70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB2A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B039D400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[6] = a1;
  v6[5] = a2 + 16;
  v6[4] = a3;
  swift_beginAccess();
  v6[0] = swift_weakLoadStrong();
  if (v6[0])
  {

    sub_1B0391AD4(v6);
    swift_endAccess();
    sub_1B039D4D0(a3, a1);
  }

  else
  {
    sub_1B0391AD4(v6);
    return swift_endAccess();
  }
}

void sub_1B039D4D0(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v31 = a2;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v37 = sub_1B0E44468();
  v35 = *(v37 - 8);
  v36 = v37 - 8;
  v33 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32);
  v38 = (&v8 - v33);
  v46 = v3;
  v45 = v4;
  v44 = v2;

  v34 = *(v2 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v34);
  v5 = v35;
  *v38 = v34;
  (*(v5 + 104))();
  v39 = sub_1B0E44488();
  (*(v35 + 8))(v38, v37);
  if (v39)
  {

    v29 = v30 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_lastKnownEnvironment;
    swift_beginAccess();
    if ((*v29 & 0xFF00) == 0x200)
    {
      swift_endAccess();
      v28 = 2;
    }

    else
    {
      v27 = *(v29 + 1);
      swift_endAccess();
      v28 = v27 & 1;
    }

    v26 = v28;
    if (v28 == 2 || (v25 = v26, (v25 & 1) != 0 || (v22 = *(v30 + 112), MEMORY[0x1E69E5928](v22), v23 = sub_1B039AB2C(), v24 = v6, MEMORY[0x1E69E5920](v22), v40 = v23, v41 = v24 & 1, v21 = (v24 & 1) == 0, (v24 & 1) != 0)))
    {
      v42 = 0;
      v43 = 0;
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v19 = *(v30 + 112);
      MEMORY[0x1E69E5928](v19);
      v20 = [v19 mailboxForType_];
      MEMORY[0x1E69E5920](v19);
      if (v20)
      {
        v18 = v20;
        v13 = v20;
        v14 = sub_1B039BEE0();
        v15 = v7;
        MEMORY[0x1E69E5920](v13);
        v16 = v14;
        v17 = v15;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      v10 = v17;
      v9 = v16;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v42 = v9;
      v43 = v10;
      v11 = v9;
      v12 = v10;
    }

    v8 = v11;
    sub_1B03B21F8(v32, v31, v11, v12);

    sub_1B039E440(&v42);
  }

  else
  {
    __break(1u);
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t Engine.persistenceDidSend(_:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1B0E44238();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B0E44288();
  v10 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v3 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  *(v13 + 24) = a1;
  v14 = a2 & 1;
  *(v13 + 32) = a2 & 1;
  aBlock[4] = sub_1B039F2E4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B038C908;
  aBlock[3] = &block_descriptor_9_4;
  v15 = _Block_copy(aBlock);

  sub_1B0390664(a1, v14);
  sub_1B0E44258();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1B039E4B4(&qword_1EB6DEE50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1880, &unk_1B0E99EA0);
  sub_1B039E3F8(&qword_1EB6DEE20, &qword_1EB6E1880, &unk_1B0E99EA0, MEMORY[0x1E69E6328]);
  sub_1B0E460A8();
  MEMORY[0x1B2727B00](0, v12, v9, v15);
  _Block_release(v15);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

uint64_t sub_1B039E3B4()
{

  sub_1B0390678(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1B039E3F8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1B039E46C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B039E4B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B039E4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v42 = a2;
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v41 = a6;
  v26 = sub_1B039C8F0;
  v65 = 0;
  v66 = 0;
  v64 = 0;
  v63 = 0;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  v59 = 0;
  v32 = 0;
  v27 = sub_1B0E44238();
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v31 = &v20 - v30;
  v33 = sub_1B0E44288();
  v34 = *(v33 - 8);
  v35 = v33 - 8;
  v36 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32);
  v37 = &v20 - v36;
  v48 = sub_1B0E44468();
  v46 = *(v48 - 8);
  v47 = v48 - 8;
  v44 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43);
  v49 = (&v20 - v44);
  v65 = v7;
  v66 = v8;
  v64 = v9;
  v63 = v10;
  v61 = v11;
  v62 = v12;
  v60 = v6;

  v45 = *(v6 + 48);
  MEMORY[0x1E69E5928](v45);
  v13 = v46;
  *v49 = v45;
  (*(v13 + 104))();
  v50 = sub_1B0E44488();
  (*(v46 + 8))(v49, v48);
  result = v50;
  if (v50)
  {

    if (sub_1B039EB7C(v38))
    {
      sub_1B0A212AC(v43, v42, v39, v40, v41);
      v22 = v51;
      swift_beginAccess();
      v23 = *(v25 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3860, &unk_1B0EA2E80);
      v24 = sub_1B0E452A8();

      result = v24;
      if (v24 == 1)
      {
        return sub_1B0A21444(v38);
      }
    }

    else
    {
      v21 = sub_1B039ED78(v43, v42);
      v59 = v21;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v15 = swift_allocObject();
      v16 = v41;
      v17 = v26;
      v18 = v15;
      v19 = v21;
      v18[2] = v40;
      v18[3] = v16;
      v18[4] = v19;
      v57 = v17;
      v58 = v18;
      aBlock = MEMORY[0x1E69E9820];
      v53 = 1107296256;
      v54 = 0;
      v55 = sub_1B038C908;
      v56 = &block_descriptor_15_0;
      v20 = _Block_copy(&aBlock);
      sub_1B039B81C();
      sub_1B039B77C();
      MEMORY[0x1B2727B00](0, v37, v31, v20);
      (*(v28 + 8))(v31, v27);
      (*(v34 + 8))(v37, v33);
      _Block_release(v20);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B039EA84()
{

  return swift_deallocObject();
}

uint64_t sub_1B039EB7C(uint64_t a1)
{
  v12 = a1;
  v23 = 0;
  v22 = 0;
  v20 = 0;
  v17 = sub_1B0E44468();
  v15 = *(v17 - 8);
  v16 = v17 - 8;
  v13 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v18 = (&v6 - v13);
  v23 = v2;
  v22 = v1;

  v14 = *(v1 + 48);
  MEMORY[0x1E69E5928](v14);
  v3 = v15;
  *v18 = v14;
  (*(v3 + 104))();
  v19 = sub_1B0E44488();
  (*(v15 + 8))(v18, v17);
  result = v19;
  if (v19)
  {

    v8 = &v21;
    swift_beginAccess();
    v9 = *(v11 + 24);
    v10 = *(v11 + 32);
    swift_endAccess();
    HIDWORD(v6) = (v10 & 1) != 0 || (v7 = v9, v20 = v9, MonotonicTime.seconds(since:)(v9, v12), v5 >= *(v11 + 88));
    return BYTE4(v6) & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B039ED78(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v9 = a2;
  v7 = v2;
  swift_beginAccess();
  v5 = *(v2 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v6 = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E38C0, &qword_1B0EA2EE0);
  sub_1B039EEE8();
  v4 = sub_1B0E44F58();

  sub_1B039E440(&v6);
  return v4;
}

uint64_t MonotonicTime.seconds(since:)(uint64_t result, uint64_t a2)
{
  v2 = __OFSUB__(a2, result);
  if (a2 < result)
  {
    if (__OFSUB__(result, a2))
    {
      __break(1u);
      goto LABEL_9;
    }

    v2 = __OFSUB__(0, result - a2);
    if (!v2)
    {
      return result;
    }

    __break(1u);
  }

  if (v2)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B039EEE8()
{
  v2 = qword_1EB6DB268;
  if (!qword_1EB6DB268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E38C0, &qword_1B0EA2EE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB268);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B039EF70(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B039F088(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t block_copy_helper_13_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

char *sub_1B039F32C(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1B039F310(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

__int128 *ServerID.empty.unsafeMutableAddressor()
{
  if (qword_1EB6DD0B8 != -1)
  {
    swift_once();
  }

  return &static ServerID.empty;
}

uint64_t sub_1B039F4CC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = Capability.move.unsafeMutableAddressor();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = sub_1B039F8EC(v7, v8, v9, v10, a1);

  v12 = Capability.gmailExtensions.unsafeMutableAddressor();
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = *(v12 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = sub_1B039F8EC(v13, v14, v15, v16, a1);

  v18 = Capability.condStore.unsafeMutableAddressor();
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[2];
  v22 = *(v18 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v19) = sub_1B039F8EC(v19, v20, v21, v22, a1);

  if (v19)
  {
    v76 = 0;
    v23 = a2[9];
    if (!v23)
    {
LABEL_12:
      v75 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v24 = Capability.yahooMailHighestModificationSequence.unsafeMutableAddressor();
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[2];
    v28 = *(v24 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v25) = sub_1B039F8EC(v25, v26, v27, v28, a1);

    if (v25)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2;
    }

    v76 = v29;
    v23 = a2[9];
    if (!v23)
    {
      goto LABEL_12;
    }
  }

  if ((a2[8] != 0x4920216F6F686159 || v23 != 0xEB000000002E636ELL) && (sub_1B0E46A78() & 1) == 0)
  {
    goto LABEL_12;
  }

  v75 = 1;
LABEL_13:
  v74 = (v17 & 1) == 0;
  v73 = (v11 & 1) == 0;
  v30 = Capability.partial.unsafeMutableAddressor();
  v31 = *v30;
  v32 = v30[1];
  v33 = v30[2];
  v34 = *(v30 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v31) = sub_1B039F8EC(v31, v32, v33, v34, a1);

  v35 = Capability.extendedSearch.unsafeMutableAddressor();
  v36 = *v35;
  v37 = v35[1];
  v38 = v35[2];
  v39 = *(v35 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v36) = sub_1B039F8EC(v36, v37, v38, v39, a1);

  v72 = (v31 & 1) == 0;
  v71 = (v36 & 1) == 0;
  v40 = Capability.namespace.unsafeMutableAddressor();
  v41 = *v40;
  v42 = v40[1];
  v43 = v40[2];
  LOBYTE(v38) = *(v40 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v41) = sub_1B039F8EC(v41, v42, v43, v38, a1);

  v70 = (v41 & 1) == 0;
  v44 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v69 = sub_1B039FC78(v44);
  v45 = Capability.specialUse.unsafeMutableAddressor();
  v46 = *v45;
  v47 = v45[1];
  v48 = v45[2];
  v49 = *(v45 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v46) = sub_1B039F8EC(v46, v47, v48, v49, a1);

  v68 = (v46 & 1) == 0;
  v67 = sub_1B039FE38(a2);
  v50 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v51 = sub_1B039FF68(v50);
  v78 = v52 & 1;
  v53 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v54 = sub_1B03A0454(v53);
  v77 = v55 & 1;
  v56 = Capability.idle.unsafeMutableAddressor();
  v57 = *v56;
  v58 = v56[1];
  v59 = v56[2];
  v60 = *(v56 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v57) = sub_1B039F8EC(v57, v58, v59, v60, a1);

  LOBYTE(v41) = (v57 & 1) == 0;
  v61 = Capability.uidBatches.unsafeMutableAddressor();
  v62 = *v61;
  v63 = v61[1];
  v64 = v61[2];
  v65 = *(v61 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v62) = sub_1B039F8EC(v62, v63, v64, v65, a1);

  *a3 = v73;
  *(a3 + 1) = v74;
  *(a3 + 2) = v76;
  *(a3 + 3) = v75;
  *(a3 + 4) = v72;
  *(a3 + 5) = v71;
  *(a3 + 6) = v70;
  *(a3 + 7) = v69;
  *(a3 + 8) = v68;
  *(a3 + 9) = v67;
  *(a3 + 16) = v51;
  *(a3 + 24) = v78;
  *(a3 + 32) = v54;
  *(a3 + 40) = v77;
  *(a3 + 41) = v41;
  *(a3 + 42) = (v62 & 1) == 0;
  return result;
}

uint64_t sub_1B039F8EC(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 0;
  }

  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1B0E46C68();
  if ((a4 & 1) == 0)
  {
    MEMORY[0x1B2728DB0](a3 >> 14);
  }

  v11 = sub_1B0E46CB8();
  v12 = a5 + 56;
  v13 = -1 << *(a5 + 32);
  v14 = v11 & ~v13;
  if ((*(a5 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(a5 + 48);
    do
    {
      v17 = v16 + 32 * v14;
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      v20 = *v17 == a1 && *(v17 + 8) == a2;
      if (v20 || (sub_1B0E46A78() & 1) != 0)
      {
        if (v19)
        {
          if (a4)
          {
            return 1;
          }
        }

        else if ((a4 & 1) == 0 && !((v18 ^ a3) >> 14))
        {
          return 1;
        }
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return 0;
}

uint64_t *Capability.move.unsafeMutableAddressor()
{
  if (qword_1EB6DEA18 != -1)
  {
    swift_once();
  }

  return &static Capability.move;
}

uint64_t *Capability.condStore.unsafeMutableAddressor()
{
  if (qword_1EB6DE9E8 != -1)
  {
    swift_once();
  }

  return &static Capability.condStore;
}

uint64_t *Capability.gmailExtensions.unsafeMutableAddressor()
{
  if (qword_1EB6DEA40 != -1)
  {
    swift_once();
  }

  return &static Capability.gmailExtensions;
}

uint64_t *Capability.namespace.unsafeMutableAddressor()
{
  if (qword_1EB6DE9E0 != -1)
  {
    swift_once();
  }

  return &static Capability.namespace;
}

uint64_t *Capability.yahooMailHighestModificationSequence.unsafeMutableAddressor()
{
  if (qword_1EB6DEA28 != -1)
  {
    swift_once();
  }

  return &static Capability.yahooMailHighestModificationSequence;
}

uint64_t *Capability.extendedSearch.unsafeMutableAddressor()
{
  if (qword_1EB6DEA48 != -1)
  {
    swift_once();
  }

  return &static Capability.extendedSearch;
}

uint64_t *Capability.partial.unsafeMutableAddressor()
{
  if (qword_1EB6DE9F8 != -1)
  {
    swift_once();
  }

  return &static Capability.partial;
}

uint64_t sub_1B039FC78(uint64_t a1)
{
  v2 = Capability.listStatus.unsafeMutableAddressor();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = *(v2 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v3) = sub_1B039F8EC(v3, v4, v5, v6, a1);

  if (v3)
  {
    v7 = Capability.yahooMailHighestModificationSequence.unsafeMutableAddressor();
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    v11 = *(v7 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v8) = sub_1B039F8EC(v8, v9, v10, v11, a1);

    if (v8)
    {

      return 2;
    }

    else
    {
      v13 = Capability.condStore.unsafeMutableAddressor();
      v14 = *v13;
      v15 = v13[1];
      v16 = v13[2];
      v17 = *(v13 + 24);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      LOBYTE(v14) = sub_1B039F8EC(v14, v15, v16, v17, a1);

      if (v14)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {

    return 0;
  }
}

uint64_t *Capability.specialUse.unsafeMutableAddressor()
{
  if (qword_1EB6DEA70 != -1)
  {
    swift_once();
  }

  return &static Capability.specialUse;
}

uint64_t *Capability.listStatus.unsafeMutableAddressor()
{
  if (qword_1EB6DEA78 != -1)
  {
    swift_once();
  }

  return &static Capability.listStatus;
}

uint64_t sub_1B039FE38(void *a1)
{
  v1 = a1[9];
  if (v1)
  {
    v2 = a1[8] == 0x4920216F6F686159 && v1 == 0xEB000000002E636ELL;
    if (v2 || (v3 = a1, v4 = sub_1B0E46A78(), a1 = v3, (v4 & 1) != 0))
    {
      sub_1B039FF14(a1);
      return 0;
    }
  }

  v6 = a1[1];
  if (!v6)
  {
    sub_1B039FF14(a1);
    return 2;
  }

  if (*a1 != 0x70616D4947 || v6 != 0xE500000000000000)
  {
    v8 = a1;
    v9 = sub_1B0E46A78();
    sub_1B039FF14(v8);
    if (v9)
    {
      return 1;
    }

    return 2;
  }

  sub_1B039FF14(a1);
  return 1;
}

unsigned __int8 *sub_1B039FF68(unint64_t a1)
{
  v1 = a1 + 56;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 56);
  v5 = (v2 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = 0;
  if (!v4)
  {
LABEL_5:
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v5)
      {

        goto LABEL_19;
      }

      v4 = *(v1 + 8 * v7);
      ++v6;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_90:
    v25 = sub_1B0B6CEA8(v7, v1, 10);
    v43 = v44;
    goto LABEL_86;
  }

  while (1)
  {
    v7 = v6;
LABEL_8:
    v8 = *(a1 + 48) + ((v7 << 11) | (32 * __clz(__rbit64(v4))));
    v10 = *v8;
    v9 = *(v8 + 8);
    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v45 = v11;
    v46 = v10;
    if (v12)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }

    else
    {
      v13 = sub_1B0E44EE8();
      MEMORY[0x1B2726D00](v13);
    }

    v14 = sub_1B0E44BB8();
    v16 = v15;

    if (v14 == 0x4C4547415353454DLL && v16 == 0xEC00000054494D49)
    {

      goto LABEL_23;
    }

    v18 = sub_1B0E46A78();

    if (v18)
    {
      break;
    }

    v4 &= v4 - 1;

    v6 = v7;
    if (!v4)
    {
      goto LABEL_5;
    }
  }

LABEL_23:

  v7 = Capability.value.getter(v46, v9, v45, v12);
  v1 = v20;

  if (!v1)
  {
    return 0;
  }

  v21 = HIBYTE(v1) & 0xF;
  v22 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v23 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
LABEL_19:

    return 0;
  }

  if ((v1 & 0x1000000000000000) != 0)
  {
    goto LABEL_90;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v48[0] = v7;
    v48[1] = v1 & 0xFFFFFFFFFFFFFFLL;
    if (v7 == 43)
    {
      if (v21)
      {
        if (--v21)
        {
          v25 = 0;
          v35 = v48 + 1;
          while (1)
          {
            v36 = *v35 - 48;
            if (v36 > 9)
            {
              break;
            }

            v37 = 10 * v25;
            if ((v25 * 10) >> 64 != (10 * v25) >> 63)
            {
              break;
            }

            v25 = v37 + v36;
            if (__OFADD__(v37, v36))
            {
              break;
            }

            ++v35;
            if (!--v21)
            {
              goto LABEL_85;
            }
          }
        }

        goto LABEL_84;
      }

LABEL_95:
      __break(1u);
      return result;
    }

    if (v7 != 45)
    {
      if (v21)
      {
        v25 = 0;
        v40 = v48;
        while (1)
        {
          v41 = *v40 - 48;
          if (v41 > 9)
          {
            break;
          }

          v42 = 10 * v25;
          if ((v25 * 10) >> 64 != (10 * v25) >> 63)
          {
            break;
          }

          v25 = v42 + v41;
          if (__OFADD__(v42, v41))
          {
            break;
          }

          ++v40;
          if (!--v21)
          {
            goto LABEL_85;
          }
        }
      }

      goto LABEL_84;
    }

    if (v21)
    {
      if (--v21)
      {
        v25 = 0;
        v29 = v48 + 1;
        while (1)
        {
          v30 = *v29 - 48;
          if (v30 > 9)
          {
            break;
          }

          v31 = 10 * v25;
          if ((v25 * 10) >> 64 != (10 * v25) >> 63)
          {
            break;
          }

          v25 = v31 - v30;
          if (__OFSUB__(v31, v30))
          {
            break;
          }

          ++v29;
          if (!--v21)
          {
            goto LABEL_85;
          }
        }
      }

      goto LABEL_84;
    }

    goto LABEL_93;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    result = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_1B0E46368();
  }

  v24 = *result;
  if (v24 == 43)
  {
    if (v22 < 1)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v21 = v22 - 1;
    if (v22 != 1)
    {
      v25 = 0;
      if (result)
      {
        v32 = result + 1;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            goto LABEL_84;
          }

          v34 = 10 * v25;
          if ((v25 * 10) >> 64 != (10 * v25) >> 63)
          {
            goto LABEL_84;
          }

          v25 = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            goto LABEL_84;
          }

          ++v32;
          if (!--v21)
          {
            goto LABEL_85;
          }
        }
      }

      goto LABEL_76;
    }

LABEL_84:
    v25 = 0;
    LOBYTE(v21) = 1;
    goto LABEL_85;
  }

  if (v24 != 45)
  {
    if (v22)
    {
      v25 = 0;
      if (result)
      {
        while (1)
        {
          v38 = *result - 48;
          if (v38 > 9)
          {
            goto LABEL_84;
          }

          v39 = 10 * v25;
          if ((v25 * 10) >> 64 != (10 * v25) >> 63)
          {
            goto LABEL_84;
          }

          v25 = v39 + v38;
          if (__OFADD__(v39, v38))
          {
            goto LABEL_84;
          }

          ++result;
          if (!--v22)
          {
            goto LABEL_76;
          }
        }
      }

      goto LABEL_76;
    }

    goto LABEL_84;
  }

  if (v22 < 1)
  {
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v21 = v22 - 1;
  if (v22 == 1)
  {
    goto LABEL_84;
  }

  v25 = 0;
  if (result)
  {
    v26 = result + 1;
    while (1)
    {
      v27 = *v26 - 48;
      if (v27 > 9)
      {
        goto LABEL_84;
      }

      v28 = 10 * v25;
      if ((v25 * 10) >> 64 != (10 * v25) >> 63)
      {
        goto LABEL_84;
      }

      v25 = v28 - v27;
      if (__OFSUB__(v28, v27))
      {
        goto LABEL_84;
      }

      ++v26;
      if (!--v21)
      {
        goto LABEL_85;
      }
    }
  }

LABEL_76:
  LOBYTE(v21) = 0;
LABEL_85:
  v49 = v21;
  v43 = v21;
LABEL_86:

  if (v43)
  {
    return 0;
  }

  result = v25;
  if ((v25 - 1000000) < 0xFFFFFFFFFFF0BDC1)
  {
    return 0;
  }

  return result;
}