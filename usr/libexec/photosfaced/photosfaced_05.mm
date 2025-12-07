void sub_100087178(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_100087348(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_100102F80(0xD000000000000024, 0x8000000100107900, v14);
    *(v10 + 12) = 1024;
    *(v10 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: %{BOOL}d", v10, 0x12u);
    sub_10000C304(v11);
  }

  (*(v5 + 8))(v7, v4);
  v12 = type metadata accessor for CommunicationActor();
  __chkstk_darwin(v12);
  v14[-2] = v2;
  LOBYTE(v14[-1]) = a1 & 1;
  return static CommunicationActor.assumeOnQueue<A>(_:)();
}

uint64_t sub_100087568(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_100102F80(0xD00000000000002ALL, 0x80000001001078D0, v14);
    *(v10 + 12) = 1024;
    *(v10 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: %{BOOL}d", v10, 0x12u);
    sub_10000C304(v11);
  }

  (*(v5 + 8))(v7, v4);
  v12 = type metadata accessor for CommunicationActor();
  __chkstk_darwin(v12);
  v14[-2] = v2;
  LOBYTE(v14[-1]) = a1 & 1;
  return static CommunicationActor.assumeOnQueue<A>(_:)();
}

uint64_t sub_100087788(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_100102F80(0xD000000000000024, 0x80000001001078A0, v14);
    *(v10 + 12) = 1024;
    *(v10 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: %{BOOL}d", v10, 0x12u);
    sub_10000C304(v11);
  }

  (*(v5 + 8))(v7, v4);
  v12 = type metadata accessor for CommunicationActor();
  __chkstk_darwin(v12);
  v14[-2] = v2;
  LOBYTE(v14[-1]) = a1 & 1;
  return static CommunicationActor.assumeOnQueue<A>(_:)();
}

uint64_t sub_1000879A8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_100102F80(0xD000000000000036, 0x8000000100107860, v14);
    *(v10 + 12) = 1024;
    *(v10 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: %{BOOL}d", v10, 0x12u);
    sub_10000C304(v11);
  }

  (*(v5 + 8))(v7, v4);
  v12 = type metadata accessor for CommunicationActor();
  __chkstk_darwin(v12);
  v14[-2] = v2;
  LOBYTE(v14[-1]) = a1 & 1;
  return static CommunicationActor.assumeOnQueue<A>(_:)();
}

uint64_t sub_100087BC8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_100102F80(0xD00000000000002ALL, 0x8000000100107830, v14);
    *(v10 + 12) = 1024;
    *(v10 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: %{BOOL}d", v10, 0x12u);
    sub_10000C304(v11);
  }

  (*(v5 + 8))(v7, v4);
  v12 = type metadata accessor for CommunicationActor();
  __chkstk_darwin(v12);
  v14[-2] = v2;
  LOBYTE(v14[-1]) = a1 & 1;
  return static CommunicationActor.assumeOnQueue<A>(_:)();
}

unint64_t sub_100087EB0()
{
  result = qword_10012A1C0;
  if (!qword_10012A1C0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012A1C0);
  }

  return result;
}

uint64_t sub_100087F38@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v35 = a1;
  v38 = a3;
  v4 = sub_10000560C(&qword_100129E70, &unk_100109CD0);
  __chkstk_darwin(v4 - 8);
  v39 = &v31 - v5;
  v6 = type metadata accessor for ProtocolVersion();
  __chkstk_darwin(v6 - 8);
  v40 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShuffleID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MessageBody();
  v36 = *(v12 - 8);
  v37 = v12;
  v13 = *(v36 + 64);
  v14 = __chkstk_darwin(v12);
  v34 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v33 = *(v3 + 16);
  v17 = static TestProperties.requestTimeout.getter();
  v19 = v18;
  type metadata accessor for PowerAssertion();
  swift_allocObject();
  v20 = sub_100104068(0xD00000000000001CLL, 0x8000000100106EA0, 0xD000000000000024, 0x8000000100106EC0, v17, v19);
  sub_10000560C(&qword_100129E78, &unk_100108BE0);
  swift_allocObject();
  v21 = AsyncThrowingChannel.init()();
  (*(v9 + 16))(v11, v41, v8);
  static ProtocolVersion.current.getter();
  v22 = v42;
  MessageBody.init<A>(serializable:version:)();
  if (v22)
  {
  }

  else
  {
    LODWORD(v41) = 0xB050802u >> (8 * v35);
    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v39, 1, 1, v24);
    v25 = v36;
    v26 = v37;
    v27 = *(v36 + 16);
    v28 = v34;
    v32 = v16;
    v27(v34, v16, v37);
    v29 = (*(v25 + 80) + 49) & ~*(v25 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    v42 = v20;
    *(v30 + 32) = v33;
    *(v30 + 40) = v21;
    *(v30 + 48) = v41;
    (*(v25 + 32))(v30 + v29, v28, v26);
    *(v30 + v29 + v13) = 1;

    sub_100005654(0, 0, v39, &unk_10010A488, v30);

    sub_10000560C(&qword_100129E90, &qword_100108C00);
    v43 = v21;

    v43 = DestructableSequence.__allocating_init(_:_:)();
    type metadata accessor for StoredPhoto();
    sub_10000CC24(&qword_100129E98, &qword_100129E90, &qword_100108C00, &protocol conformance descriptor for DestructableSequence<A>);
    AsyncThrowingMapSequence.init(_:transform:)();

    return (*(v25 + 8))(v32, v26);
  }
}

uint64_t sub_100088450@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v35 = a1;
  v38 = a3;
  v4 = sub_10000560C(&qword_100129E70, &unk_100109CD0);
  __chkstk_darwin(v4 - 8);
  v39 = &v31 - v5;
  v6 = type metadata accessor for ProtocolVersion();
  __chkstk_darwin(v6 - 8);
  v40 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DailyID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MessageBody();
  v36 = *(v12 - 8);
  v37 = v12;
  v13 = *(v36 + 64);
  v14 = __chkstk_darwin(v12);
  v34 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v33 = *(v3 + 16);
  v17 = static TestProperties.requestTimeout.getter();
  v19 = v18;
  type metadata accessor for PowerAssertion();
  swift_allocObject();
  v20 = sub_100104068(0xD00000000000001CLL, 0x8000000100106EA0, 0xD000000000000024, 0x8000000100106EC0, v17, v19);
  sub_10000560C(&qword_100129E78, &unk_100108BE0);
  swift_allocObject();
  v21 = AsyncThrowingChannel.init()();
  (*(v9 + 16))(v11, v41, v8);
  static ProtocolVersion.current.getter();
  v22 = v42;
  MessageBody.init<A>(serializable:version:)();
  if (v22)
  {
  }

  else
  {
    LODWORD(v41) = 0xB050802u >> (8 * v35);
    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v39, 1, 1, v24);
    v25 = v36;
    v26 = v37;
    v27 = *(v36 + 16);
    v28 = v34;
    v32 = v16;
    v27(v34, v16, v37);
    v29 = (*(v25 + 80) + 49) & ~*(v25 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    v42 = v20;
    *(v30 + 32) = v33;
    *(v30 + 40) = v21;
    *(v30 + 48) = v41;
    (*(v25 + 32))(v30 + v29, v28, v26);
    *(v30 + v29 + v13) = 1;

    sub_100005654(0, 0, v39, &unk_10010A660, v30);

    sub_10000560C(&qword_100129E90, &qword_100108C00);
    v43 = v21;

    v43 = DestructableSequence.__allocating_init(_:_:)();
    type metadata accessor for StoredPhoto();
    sub_10000CC24(&qword_100129E98, &qword_100129E90, &qword_100108C00, &protocol conformance descriptor for DestructableSequence<A>);
    AsyncThrowingMapSequence.init(_:transform:)();

    return (*(v25 + 8))(v32, v26);
  }
}

uint64_t sub_100088968@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v35 = a1;
  v38 = a3;
  v4 = sub_10000560C(&qword_100129E70, &unk_100109CD0);
  __chkstk_darwin(v4 - 8);
  v39 = &v31 - v5;
  v6 = type metadata accessor for ProtocolVersion();
  __chkstk_darwin(v6 - 8);
  v40 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AlbumID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MessageBody();
  v36 = *(v12 - 8);
  v37 = v12;
  v13 = *(v36 + 64);
  v14 = __chkstk_darwin(v12);
  v34 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v33 = *(v3 + 16);
  v17 = static TestProperties.requestTimeout.getter();
  v19 = v18;
  type metadata accessor for PowerAssertion();
  swift_allocObject();
  v20 = sub_100104068(0xD00000000000001CLL, 0x8000000100106EA0, 0xD000000000000024, 0x8000000100106EC0, v17, v19);
  sub_10000560C(&qword_100129E78, &unk_100108BE0);
  swift_allocObject();
  v21 = AsyncThrowingChannel.init()();
  (*(v9 + 16))(v11, v41, v8);
  static ProtocolVersion.current.getter();
  v22 = v42;
  MessageBody.init<A>(serializable:version:)();
  if (v22)
  {
  }

  else
  {
    LODWORD(v41) = 0xB050802u >> (8 * v35);
    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v39, 1, 1, v24);
    v25 = v36;
    v26 = v37;
    v27 = *(v36 + 16);
    v28 = v34;
    v32 = v16;
    v27(v34, v16, v37);
    v29 = (*(v25 + 80) + 49) & ~*(v25 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    v42 = v20;
    *(v30 + 32) = v33;
    *(v30 + 40) = v21;
    *(v30 + 48) = v41;
    (*(v25 + 32))(v30 + v29, v28, v26);
    *(v30 + v29 + v13) = 1;

    sub_100005654(0, 0, v39, &unk_10010A9A8, v30);

    sub_10000560C(&qword_100129E90, &qword_100108C00);
    v43 = v21;

    v43 = DestructableSequence.__allocating_init(_:_:)();
    type metadata accessor for StoredPhoto();
    sub_10000CC24(&qword_100129E98, &qword_100129E90, &qword_100108C00, &protocol conformance descriptor for DestructableSequence<A>);
    AsyncThrowingMapSequence.init(_:transform:)();

    return (*(v25 + 8))(v32, v26);
  }
}

uint64_t sub_100088E80(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  *(v4 + 144) = a2;
  *(v4 + 32) = a1;
  sub_10000560C(&qword_100129E70, &unk_100109CD0);
  *(v4 + 56) = swift_task_alloc();
  type metadata accessor for ProtocolVersion();
  *(v4 + 64) = swift_task_alloc();
  v5 = type metadata accessor for SyncFacesRequest();
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 - 8);
  *(v4 + 88) = swift_task_alloc();
  v6 = type metadata accessor for MessageBody();
  *(v4 + 96) = v6;
  v7 = *(v6 - 8);
  *(v4 + 104) = v7;
  *(v4 + 112) = *(v7 + 64);
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  *(v4 + 136) = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100089080, v9, v8);
}

uint64_t sub_100089080()
{
  v1 = *(v0 + 48);
  v23 = *(v0 + 144);

  v24 = *(v1 + 16);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 40);
  v6 = static TestProperties.requestTimeout.getter();
  v8 = v7;
  type metadata accessor for PowerAssertion();
  swift_allocObject();
  sub_100104068(0xD00000000000001CLL, 0x8000000100106EA0, 0xD000000000000024, 0x8000000100106EC0, v6, v8);
  sub_10000560C(&qword_100129E78, &unk_100108BE0);
  swift_allocObject();
  v9 = AsyncThrowingChannel.init()();
  (*(v3 + 16))(v2, v5, v4);
  static ProtocolVersion.current.getter();
  MessageBody.init<A>(serializable:version:)();
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  v13 = *(v0 + 104);
  v12 = *(v0 + 112);
  v14 = *(v0 + 96);
  v15 = *(v0 + 56);
  v22 = v11;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v13 + 16))(v10, v11, v14);
  v17 = (*(v13 + 80) + 49) & ~*(v13 + 80);
  v18 = v17 + v12;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v24;
  *(v19 + 40) = v9;
  *(v19 + 48) = 0xD070A04u >> (8 * v23);
  (*(v13 + 32))(v19 + v17, v10, v14);
  *(v19 + v18) = 1;

  sub_100005654(0, 0, v15, &unk_10010A3D8, v19);

  sub_10000560C(&qword_100129E90, &qword_100108C00);
  *(v0 + 16) = v9;

  *(v0 + 24) = DestructableSequence.__allocating_init(_:_:)();
  sub_10000560C(&qword_100129F30, &qword_100108D20);
  sub_10000CC24(&qword_100129E98, &qword_100129E90, &qword_100108C00, &protocol conformance descriptor for DestructableSequence<A>);
  AsyncThrowingMapSequence.init(_:transform:)();

  (*(v13 + 8))(v22, v14);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1000894D0(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  *(v4 + 144) = a2;
  *(v4 + 32) = a1;
  sub_10000560C(&qword_100129E70, &unk_100109CD0);
  *(v4 + 56) = swift_task_alloc();
  type metadata accessor for ProtocolVersion();
  *(v4 + 64) = swift_task_alloc();
  v5 = type metadata accessor for SyncFacesRequest();
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 - 8);
  *(v4 + 88) = swift_task_alloc();
  v6 = type metadata accessor for MessageBody();
  *(v4 + 96) = v6;
  v7 = *(v6 - 8);
  *(v4 + 104) = v7;
  *(v4 + 112) = *(v7 + 64);
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  *(v4 + 136) = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000896D0, v9, v8);
}

uint64_t sub_1000896D0()
{
  v1 = *(v0 + 48);
  v23 = *(v0 + 144);

  v24 = *(v1 + 16);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 40);
  v6 = static TestProperties.requestTimeout.getter();
  v8 = v7;
  type metadata accessor for PowerAssertion();
  swift_allocObject();
  sub_100104068(0xD00000000000001CLL, 0x8000000100106EA0, 0xD000000000000024, 0x8000000100106EC0, v6, v8);
  sub_10000560C(&qword_100129E78, &unk_100108BE0);
  swift_allocObject();
  v9 = AsyncThrowingChannel.init()();
  (*(v3 + 16))(v2, v5, v4);
  static ProtocolVersion.current.getter();
  MessageBody.init<A>(serializable:version:)();
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  v13 = *(v0 + 104);
  v12 = *(v0 + 112);
  v14 = *(v0 + 96);
  v15 = *(v0 + 56);
  v22 = v11;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v13 + 16))(v10, v11, v14);
  v17 = (*(v13 + 80) + 49) & ~*(v13 + 80);
  v18 = v17 + v12;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v24;
  *(v19 + 40) = v9;
  *(v19 + 48) = 0xD070A04u >> (8 * v23);
  (*(v13 + 32))(v19 + v17, v10, v14);
  *(v19 + v18) = 1;

  sub_100005654(0, 0, v15, &unk_10010A5C0, v19);

  sub_10000560C(&qword_100129E90, &qword_100108C00);
  *(v0 + 16) = v9;

  *(v0 + 24) = DestructableSequence.__allocating_init(_:_:)();
  sub_10000560C(&qword_100129F60, &qword_100108D78);
  sub_10000CC24(&qword_100129E98, &qword_100129E90, &qword_100108C00, &protocol conformance descriptor for DestructableSequence<A>);
  AsyncThrowingMapSequence.init(_:transform:)();

  (*(v13 + 8))(v22, v14);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100089B20(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  *(v4 + 144) = a2;
  *(v4 + 32) = a1;
  sub_10000560C(&qword_100129E70, &unk_100109CD0);
  *(v4 + 56) = swift_task_alloc();
  type metadata accessor for ProtocolVersion();
  *(v4 + 64) = swift_task_alloc();
  v5 = type metadata accessor for SyncFacesRequest();
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 - 8);
  *(v4 + 88) = swift_task_alloc();
  v6 = type metadata accessor for MessageBody();
  *(v4 + 96) = v6;
  v7 = *(v6 - 8);
  *(v4 + 104) = v7;
  *(v4 + 112) = *(v7 + 64);
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  *(v4 + 136) = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100089D20, v9, v8);
}

uint64_t sub_100089D20()
{
  v1 = *(v0 + 48);
  v23 = *(v0 + 144);

  v24 = *(v1 + 16);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 40);
  v6 = static TestProperties.requestTimeout.getter();
  v8 = v7;
  type metadata accessor for PowerAssertion();
  swift_allocObject();
  sub_100104068(0xD00000000000001CLL, 0x8000000100106EA0, 0xD000000000000024, 0x8000000100106EC0, v6, v8);
  sub_10000560C(&qword_100129E78, &unk_100108BE0);
  swift_allocObject();
  v9 = AsyncThrowingChannel.init()();
  (*(v3 + 16))(v2, v5, v4);
  static ProtocolVersion.current.getter();
  MessageBody.init<A>(serializable:version:)();
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  v13 = *(v0 + 104);
  v12 = *(v0 + 112);
  v14 = *(v0 + 96);
  v15 = *(v0 + 56);
  v22 = v11;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v13 + 16))(v10, v11, v14);
  v17 = (*(v13 + 80) + 49) & ~*(v13 + 80);
  v18 = v17 + v12;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v24;
  *(v19 + 40) = v9;
  *(v19 + 48) = 0xD070A04u >> (8 * v23);
  (*(v13 + 32))(v19 + v17, v10, v14);
  *(v19 + v18) = 1;

  sub_100005654(0, 0, v15, &unk_10010A908, v19);

  sub_10000560C(&qword_100129E90, &qword_100108C00);
  *(v0 + 16) = v9;

  *(v0 + 24) = DestructableSequence.__allocating_init(_:_:)();
  sub_10000560C(&qword_100129F70, &qword_100108D90);
  sub_10000CC24(&qword_100129E98, &qword_100129E90, &qword_100108C00, &protocol conformance descriptor for DestructableSequence<A>);
  AsyncThrowingMapSequence.init(_:transform:)();

  (*(v13 + 8))(v22, v14);

  v20 = *(v0 + 8);

  return v20();
}

void *sub_10008A170(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_10005C5B0(0, v1, 0);
  v23 = v2 + 64;
  v3 = _HashTable.startBucket.getter();
  result = type metadata accessor for CommunicationActor();
  v21 = v2;
  v5 = 0;
  v19 = v2 + 72;
  v20 = v1;
  while ((v3 & 0x8000000000000000) == 0 && v3 < 1 << *(v2 + 32))
  {
    v7 = v3 >> 6;
    if ((*(v23 + 8 * (v3 >> 6)) & (1 << v3)) == 0)
    {
      goto LABEL_27;
    }

    v22 = *(v2 + 36);
    v8 = *(*(v2 + 48) + 8 * v3);
    static CommunicationActor.shared.getter();
    sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (static PhotosFaceIDDatabaseFix.hourValueLowerBound()() >= v8)
    {
    }

    else
    {
      v9 = static PhotosFaceIDDatabaseFix.hourValueDivisor()();

      if (!v9)
      {
        goto LABEL_31;
      }

      v8 /= v9;
    }

    v11 = _swiftEmptyArrayStorage[2];
    v10 = _swiftEmptyArrayStorage[3];
    if (v11 >= v10 >> 1)
    {
      result = sub_10005C5B0((v10 > 1), v11 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v11 + 1;
    _swiftEmptyArrayStorage[v11 + 4] = v8;
    v2 = v21;
    v6 = 1 << *(v21 + 32);
    if (v3 >= v6)
    {
      goto LABEL_28;
    }

    v12 = *(v23 + 8 * v7);
    if ((v12 & (1 << v3)) == 0)
    {
      goto LABEL_29;
    }

    if (v22 != *(v21 + 36))
    {
      goto LABEL_30;
    }

    v13 = v12 & (-2 << (v3 & 0x3F));
    if (v13)
    {
      v6 = __clz(__rbit64(v13)) | v3 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v14 = v7 << 6;
      v15 = v7 + 1;
      v16 = (v19 + 8 * v7);
      while (v15 < (v6 + 63) >> 6)
      {
        v18 = *v16++;
        v17 = v18;
        v14 += 64;
        ++v15;
        if (v18)
        {
          result = sub_100042AF0(v3, v22, 0);
          v6 = __clz(__rbit64(v17)) + v14;
          goto LABEL_4;
        }
      }

      result = sub_100042AF0(v3, v22, 0);
    }

LABEL_4:
    ++v5;
    v3 = v6;
    if (v5 == v20)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10008A444()
{
  v1[3] = v0;
  type metadata accessor for CommunicationActor();
  v1[4] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_10008A50C, v3, v2);
}

uint64_t sub_10008A50C()
{
  v1 = *(v0 + 24);
  *(v0 + 64) = *(v1 + 16);
  type metadata accessor for AlbumID();

  sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
  sub_1000FAACC(&qword_10012A048, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
  sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0, &protocol conformance descriptor for WrapperSequence<A, B>);
  PhotosXPCServer.registerTrackFace<A, B>(type:callback:)();

  PhotosXPCServer.registerUntrackFace(type:callback:)();

  PhotosXPCServer.registerFetchFaceList<A>(type:callback:)();

  sub_10000560C(&qword_10012A3F8, &qword_100109178);
  *(v0 + 16) = type metadata accessor for StoredPhoto();
  swift_getOpaqueTypeConformance2();
  PhotosXPCServer.registerFetchFace<A>(type:callback:)();

  PhotosXPCServer.registerFetchFaceByDay(type:callback:)();

  PhotosXPCServer.registerProvideAssetList<A>(type:callback:)();

  v2 = *(v1 + 88);
  *(v0 + 56) = v2;

  return _swift_task_switch(sub_10008A7C4, v2, 0);
}

uint64_t sub_10008A7C4()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_10010A840;
  *(v2 + 24) = v1;

  sub_1000FCA38(2, &unk_10010A848, v2);

  v3 = v0[5];
  v4 = v0[6];

  return _swift_task_switch(sub_10008A894, v3, v4);
}

uint64_t sub_10008A894()
{
  v1 = *(v0 + 56);

  return _swift_task_switch(sub_10008A904, v1, 0);
}

uint64_t sub_10008A904()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_10010A858;
  *(v2 + 24) = v1;

  sub_1000FCA38(0, &unk_10010A860, v2);

  v3 = v0[5];
  v4 = v0[6];

  return _swift_task_switch(sub_10008A9D4, v3, v4);
}

uint64_t sub_10008A9D4()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 64);
  v3 = *(v0 + 24);

  sub_10004FD10(0xB050802u >> (8 * v1), &unk_10010A870, v3);

  v4 = 0xC060903u >> (8 * v2);
  v5 = *(v0 + 64);
  v6 = *(v0 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = &unk_10010A880;
  *(v7 + 24) = v6;
  swift_retain_n();
  sub_1000ECC88(v4, &unk_10010A888, v7, &unk_1001272D0, sub_1000F6468);

  LOBYTE(v7) = *(v0 + 64);
  v8 = *(v0 + 24);

  sub_10004FCF0(0xD070A04u >> (8 * v5), &unk_10010A898, v8);

  v9 = 0x3010200u >> (8 * v7);
  v10 = *(v0 + 64);
  v11 = *(v0 + 24);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &unk_10010A8A8;
  *(v12 + 32) = v11;
  swift_retain_n();
  sub_1000EE1B4(v9, &unk_10010A8B0, v12);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10008AC0C()
{
  v1[3] = v0;
  type metadata accessor for CommunicationActor();
  v1[4] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_10008ACD4, v3, v2);
}

uint64_t sub_10008ACD4()
{
  v1 = *(v0 + 24);
  *(v0 + 64) = *(v1 + 16);
  type metadata accessor for ShuffleID();

  sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
  sub_1000FAACC(&qword_10012A2B0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
  sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0, &protocol conformance descriptor for WrapperSequence<A, B>);
  PhotosXPCServer.registerTrackFace<A, B>(type:callback:)();

  PhotosXPCServer.registerUntrackFace(type:callback:)();

  PhotosXPCServer.registerFetchFaceList<A>(type:callback:)();

  sub_10000560C(&qword_10012A3F8, &qword_100109178);
  *(v0 + 16) = type metadata accessor for StoredPhoto();
  swift_getOpaqueTypeConformance2();
  PhotosXPCServer.registerFetchFace<A>(type:callback:)();

  PhotosXPCServer.registerFetchFaceByDay(type:callback:)();

  PhotosXPCServer.registerProvideAssetList<A>(type:callback:)();

  v2 = *(v1 + 88);
  *(v0 + 56) = v2;

  return _swift_task_switch(sub_10008AF8C, v2, 0);
}

uint64_t sub_10008AF8C()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_10010A6D0;
  *(v2 + 24) = v1;

  sub_1000FCA38(2, &unk_10010A6D8, v2);

  v3 = v0[5];
  v4 = v0[6];

  return _swift_task_switch(sub_10008B05C, v3, v4);
}

uint64_t sub_10008B05C()
{
  v1 = *(v0 + 56);

  return _swift_task_switch(sub_10008B0CC, v1, 0);
}

uint64_t sub_10008B0CC()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_10010A6E8;
  *(v2 + 24) = v1;

  sub_1000FCA38(0, &unk_10010A6F0, v2);

  v3 = v0[5];
  v4 = v0[6];

  return _swift_task_switch(sub_10008B19C, v3, v4);
}

uint64_t sub_10008B19C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 64);
  v3 = *(v0 + 24);

  sub_10004FC90(0xB050802u >> (8 * v1), &unk_10010A700, v3);

  v4 = 0xC060903u >> (8 * v2);
  v5 = *(v0 + 64);
  v6 = *(v0 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = &unk_10010A710;
  *(v7 + 24) = v6;
  swift_retain_n();
  sub_1000ECC88(v4, &unk_10010A718, v7, &unk_1001272D0, sub_1000F6468);

  LOBYTE(v7) = *(v0 + 64);
  v8 = *(v0 + 24);

  sub_10004F9F4(0xD070A04u >> (8 * v5), &unk_10010A728, v8);

  v9 = 0x3010200u >> (8 * v7);
  v10 = *(v0 + 64);
  v11 = *(v0 + 24);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &unk_10010A738;
  *(v12 + 32) = v11;
  swift_retain_n();
  sub_1000EE1B4(v9, &unk_10010A740, v12);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10008B3D4()
{
  v1[3] = v0;
  type metadata accessor for CommunicationActor();
  v1[4] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_10008B49C, v3, v2);
}

uint64_t sub_10008B49C()
{
  v1 = *(v0 + 24);
  *(v0 + 64) = *(v1 + 16);
  type metadata accessor for DailyID();

  sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
  sub_1000FAACC(&qword_10012A178, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
  sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0, &protocol conformance descriptor for WrapperSequence<A, B>);
  PhotosXPCServer.registerTrackFace<A, B>(type:callback:)();

  PhotosXPCServer.registerUntrackFace(type:callback:)();

  PhotosXPCServer.registerFetchFaceList<A>(type:callback:)();

  sub_10000560C(&qword_10012A3F8, &qword_100109178);
  *(v0 + 16) = type metadata accessor for StoredPhoto();
  swift_getOpaqueTypeConformance2();
  PhotosXPCServer.registerFetchFace<A>(type:callback:)();

  PhotosXPCServer.registerFetchFaceByDay(type:callback:)();

  PhotosXPCServer.registerProvideAssetList<A>(type:callback:)();

  v2 = *(v1 + 88);
  *(v0 + 56) = v2;

  return _swift_task_switch(sub_10008B754, v2, 0);
}

uint64_t sub_10008B754()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_10010A4F8;
  *(v2 + 24) = v1;

  sub_1000FCA38(2, &unk_10010A500, v2);

  v3 = v0[5];
  v4 = v0[6];

  return _swift_task_switch(sub_10008B824, v3, v4);
}

uint64_t sub_10008B824()
{
  v1 = *(v0 + 56);

  return _swift_task_switch(sub_10008B894, v1, 0);
}

uint64_t sub_10008B894()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_10010A510;
  *(v2 + 24) = v1;

  sub_1000FCA38(0, &unk_10010A518, v2);

  v3 = v0[5];
  v4 = v0[6];

  return _swift_task_switch(sub_10008B964, v3, v4);
}

uint64_t sub_10008B964()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 64);
  v3 = *(v0 + 24);

  sub_10004FCD0(0xB050802u >> (8 * v1), &unk_10010A528, v3);

  v4 = 0xC060903u >> (8 * v2);
  v5 = *(v0 + 64);
  v6 = *(v0 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = &unk_10010A538;
  *(v7 + 24) = v6;
  swift_retain_n();
  sub_1000ECC88(v4, &unk_10010A540, v7, &unk_1001272D0, sub_1000F6468);

  LOBYTE(v7) = *(v0 + 64);
  v8 = *(v0 + 24);

  sub_10004FCB0(0xD070A04u >> (8 * v5), &unk_10010A550, v8);

  v9 = 0x3010200u >> (8 * v7);
  v10 = *(v0 + 64);
  v11 = *(v0 + 24);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &unk_10010A560;
  *(v12 + 32) = v11;
  swift_retain_n();
  sub_1000EE1B4(v9, &unk_10010A568, v12);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10008BB9C()
{
  v1[3] = v0;
  type metadata accessor for CommunicationActor();
  v1[4] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_10008BC64, v3, v2);
}

uint64_t sub_10008BC64()
{
  v1 = *(v0 + 24);
  *(v0 + 64) = *(v1 + 16);
  type metadata accessor for ShuffleID();

  sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
  sub_1000FAACC(&qword_10012A2B0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
  sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0, &protocol conformance descriptor for WrapperSequence<A, B>);
  PhotosXPCServer.registerTrackFace<A, B>(type:callback:)();

  PhotosXPCServer.registerUntrackFace(type:callback:)();

  PhotosXPCServer.registerFetchFaceList<A>(type:callback:)();

  sub_10000560C(&qword_10012A3F8, &qword_100109178);
  *(v0 + 16) = type metadata accessor for StoredPhoto();
  swift_getOpaqueTypeConformance2();
  PhotosXPCServer.registerFetchFace<A>(type:callback:)();

  PhotosXPCServer.registerFetchFaceByDay(type:callback:)();

  PhotosXPCServer.registerProvideAssetList<A>(type:callback:)();

  v2 = *(v1 + 88);
  *(v0 + 56) = v2;

  return _swift_task_switch(sub_10008BF1C, v2, 0);
}

uint64_t sub_10008BF1C()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_10010A1D0;
  *(v2 + 24) = v1;

  sub_1000FCA38(2, &unk_100109070, v2);

  v3 = v0[5];
  v4 = v0[6];

  return _swift_task_switch(sub_10008BFEC, v3, v4);
}

uint64_t sub_10008BFEC()
{
  v1 = *(v0 + 56);

  return _swift_task_switch(sub_10008C05C, v1, 0);
}

uint64_t sub_10008C05C()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_10010A1E0;
  *(v2 + 24) = v1;

  sub_1000FCA38(0, &unk_10010A1E8, v2);

  v3 = v0[5];
  v4 = v0[6];

  return _swift_task_switch(sub_10008C12C, v3, v4);
}

uint64_t sub_10008C12C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 64);
  v3 = *(v0 + 24);

  sub_10004FC90(0xB050802u >> (8 * v1), &unk_10010A1F8, v3);

  v4 = 0xC060903u >> (8 * v2);
  v5 = *(v0 + 64);
  v6 = *(v0 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = &unk_10010A208;
  *(v7 + 24) = v6;
  swift_retain_n();
  sub_1000ECC88(v4, &unk_10010A210, v7, &unk_1001272D0, sub_1000F6468);

  LOBYTE(v7) = *(v0 + 64);
  v8 = *(v0 + 24);

  sub_10004F9F4(0xD070A04u >> (8 * v5), &unk_10010A220, v8);

  v9 = 0x3010200u >> (8 * v7);
  v10 = *(v0 + 64);
  v11 = *(v0 + 24);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &unk_10010A230;
  *(v12 + 32) = v11;
  swift_retain_n();
  sub_1000EE1B4(v9, &unk_10010A238, v12);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10008C364(uint64_t a1, uint64_t a2)
{
  v2[2] = type metadata accessor for CommunicationActor();
  v2[3] = static CommunicationActor.shared.getter();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_10008C444;

  return sub_10008C870(a1, a2);
}

uint64_t sub_10008C444()
{
  *(*v1 + 40) = v0;

  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1000FBF20;
  }

  else
  {
    v4 = sub_1000FBF34;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10008C5D0(uint64_t a1, uint64_t a2)
{
  v2[2] = type metadata accessor for CommunicationActor();
  v2[3] = static CommunicationActor.shared.getter();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_10008C444;

  return sub_10008D344(a1, a2);
}

uint64_t sub_10008C6B0(uint64_t a1, uint64_t a2)
{
  v2[2] = type metadata accessor for CommunicationActor();
  v2[3] = static CommunicationActor.shared.getter();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_10008C444;

  return sub_10008DBC0(a1, a2);
}

uint64_t sub_10008C790(uint64_t a1, uint64_t a2)
{
  v2[2] = type metadata accessor for CommunicationActor();
  v2[3] = static CommunicationActor.shared.getter();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_10008C444;

  return sub_10008E43C(a1, a2);
}

uint64_t sub_10008C870(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = type metadata accessor for ShuffleID();
  v3[20] = v4;
  v5 = *(v4 - 8);
  v3[21] = v5;
  v3[22] = *(v5 + 64);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v3[29] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[30] = v8;
  v3[31] = v7;

  return _swift_task_switch(sub_10008CA14, v8, v7);
}

uint64_t sub_10008CA14(uint64_t a1)
{
  v38 = v1;
  v2 = v1[25];
  v3 = v1[20];
  v4 = v1[21];
  v5 = v1[18];
  static Log.photos.getter();
  v6 = *(v4 + 16);
  v1[32] = v6;
  v1[33] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  swift_retain_n();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[27];
  v11 = v1[28];
  v12 = v1[25];
  v36 = v1[26];
  if (v9)
  {
    v34 = v8;
    v13 = v1[24];
    v35 = v1[28];
    v15 = v1[20];
    v14 = v1[21];
    log = v7;
    v16 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v16 = 136315394;
    v6(v13, v12, v15);
    v17 = *(v14 + 8);
    v17(v12, v15);
    sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v17(v13, v15);
    v21 = sub_100102F80(v18, v20, &v37);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;

    v22 = PhotosFaceType.description.getter();
    v24 = v23;

    v25 = sub_100102F80(v22, v24, &v37);

    *(v16 + 14) = v25;
    _os_log_impl(&_mh_execute_header, log, v34, "Tracking %s for type %s", v16, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v35, v36);
  }

  else
  {
    v26 = v1[20];
    v27 = v1[21];

    (*(v27 + 8))(v12, v26);

    (*(v10 + 8))(v11, v36);
  }

  v28 = type metadata accessor for GalleryDatabase();
  v29 = sub_1000FAACC(&qword_10012A438, &type metadata accessor for GalleryDatabase, &protocol conformance descriptor for GalleryDatabase);
  v30 = swift_task_alloc();
  v1[34] = v30;
  *v30 = v1;
  v30[1] = sub_10008CDA4;
  v31 = v1[18];

  return dispatch thunk of PhotosFaceIDDatabase.insert(id:)(v31, v28, v29);
}

uint64_t sub_10008CDA4()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = sub_1000FBEFC;
  }

  else
  {
    v5 = sub_10008CEE0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10008CEE0()
{
  if (static Platform.current.getter())
  {
    v1 = *(v0 + 184);
    v2 = *(v0 + 160);
    v3 = *(v0 + 168);
    v4 = *(v0 + 152);
    (*(v0 + 256))(v1, *(v0 + 144), v2);
    v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v6 = swift_allocObject();
    *(v0 + 304) = v6;
    *(v6 + 16) = v4;
    (*(v3 + 32))(v6 + v5, v1, v2);

    v7 = swift_task_alloc();
    *(v0 + 312) = v7;
    *v7 = v0;
    v7[1] = sub_10008D228;
    v8 = *(v0 + 144);

    return sub_100021E0C(v0 + 56, v8, &unk_10010A460, v6);
  }

  else
  {
    *(v0 + 120) = sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
    *(v0 + 128) = sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0, &protocol conformance descriptor for WrapperSequence<A, B>);
    v10 = sub_10000C1AC((v0 + 96));
    v11 = swift_task_alloc();
    *(v0 + 288) = v11;
    *v11 = v0;
    v11[1] = sub_10008D0EC;
    v12 = *(v0 + 144);

    return sub_1000203C4(v10, v12, 1);
  }
}

uint64_t sub_10008D0EC()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = sub_1000FBF38;
  }

  else
  {
    v5 = sub_1000FBED4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10008D228()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = sub_1000FBEE8;
  }

  else
  {

    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = sub_1000FBED8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10008D344(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = type metadata accessor for DailyID();
  v3[20] = v4;
  v5 = *(v4 - 8);
  v3[21] = v5;
  v3[22] = *(v5 + 64);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v3[29] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[30] = v8;
  v3[31] = v7;

  return _swift_task_switch(sub_10008D4E8, v8, v7);
}

uint64_t sub_10008D4E8(uint64_t a1)
{
  v38 = v1;
  v2 = v1[25];
  v3 = v1[20];
  v4 = v1[21];
  v5 = v1[18];
  static Log.photos.getter();
  v6 = *(v4 + 16);
  v1[32] = v6;
  v1[33] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  swift_retain_n();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[27];
  v11 = v1[28];
  v12 = v1[25];
  v36 = v1[26];
  if (v9)
  {
    v34 = v8;
    v13 = v1[24];
    v35 = v1[28];
    v15 = v1[20];
    v14 = v1[21];
    log = v7;
    v16 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v16 = 136315394;
    v6(v13, v12, v15);
    v17 = *(v14 + 8);
    v17(v12, v15);
    sub_1000FAACC(&qword_10012A1E0, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v17(v13, v15);
    v21 = sub_100102F80(v18, v20, &v37);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;

    v22 = PhotosFaceType.description.getter();
    v24 = v23;

    v25 = sub_100102F80(v22, v24, &v37);

    *(v16 + 14) = v25;
    _os_log_impl(&_mh_execute_header, log, v34, "Tracking %s for type %s", v16, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v35, v36);
  }

  else
  {
    v26 = v1[20];
    v27 = v1[21];

    (*(v27 + 8))(v12, v26);

    (*(v10 + 8))(v11, v36);
  }

  v28 = type metadata accessor for DailyDatabase();
  v29 = sub_1000FAACC(&qword_10012A470, &type metadata accessor for DailyDatabase, &protocol conformance descriptor for DailyDatabase);
  v30 = swift_task_alloc();
  v1[34] = v30;
  *v30 = v1;
  v30[1] = sub_10008D878;
  v31 = v1[18];

  return dispatch thunk of PhotosFaceIDDatabase.insert(id:)(v31, v28, v29);
}

uint64_t sub_10008D878()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = sub_1000FBEFC;
  }

  else
  {
    v5 = sub_10008D9B4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10008D9B4()
{
  if (static Platform.current.getter())
  {
    v1 = *(v0 + 184);
    v2 = *(v0 + 160);
    v3 = *(v0 + 168);
    v4 = *(v0 + 152);
    (*(v0 + 256))(v1, *(v0 + 144), v2);
    v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v6 = swift_allocObject();
    *(v0 + 304) = v6;
    *(v6 + 16) = v4;
    (*(v3 + 32))(v6 + v5, v1, v2);

    v7 = swift_task_alloc();
    *(v0 + 312) = v7;
    *v7 = v0;
    v7[1] = sub_10008D228;
    v8 = *(v0 + 144);

    return sub_100022978(v0 + 56, v8, &unk_10010A638, v6);
  }

  else
  {
    *(v0 + 120) = sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
    *(v0 + 128) = sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0, &protocol conformance descriptor for WrapperSequence<A, B>);
    v10 = sub_10000C1AC((v0 + 96));
    v11 = swift_task_alloc();
    *(v0 + 288) = v11;
    *v11 = v0;
    v11[1] = sub_10008D0EC;
    v12 = *(v0 + 144);

    return sub_100020A84(v10, v12, 1);
  }
}

uint64_t sub_10008DBC0(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = type metadata accessor for ShuffleID();
  v3[20] = v4;
  v5 = *(v4 - 8);
  v3[21] = v5;
  v3[22] = *(v5 + 64);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v3[29] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[30] = v8;
  v3[31] = v7;

  return _swift_task_switch(sub_10008DD64, v8, v7);
}

uint64_t sub_10008DD64(uint64_t a1)
{
  v38 = v1;
  v2 = v1[25];
  v3 = v1[20];
  v4 = v1[21];
  v5 = v1[18];
  static Log.photos.getter();
  v6 = *(v4 + 16);
  v1[32] = v6;
  v1[33] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  swift_retain_n();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[27];
  v11 = v1[28];
  v12 = v1[25];
  v36 = v1[26];
  if (v9)
  {
    v34 = v8;
    v13 = v1[24];
    v35 = v1[28];
    v15 = v1[20];
    v14 = v1[21];
    log = v7;
    v16 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v16 = 136315394;
    v6(v13, v12, v15);
    v17 = *(v14 + 8);
    v17(v12, v15);
    sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v17(v13, v15);
    v21 = sub_100102F80(v18, v20, &v37);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;

    v22 = PhotosFaceType.description.getter();
    v24 = v23;

    v25 = sub_100102F80(v22, v24, &v37);

    *(v16 + 14) = v25;
    _os_log_impl(&_mh_execute_header, log, v34, "Tracking %s for type %s", v16, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v35, v36);
  }

  else
  {
    v26 = v1[20];
    v27 = v1[21];

    (*(v27 + 8))(v12, v26);

    (*(v10 + 8))(v11, v36);
  }

  v28 = type metadata accessor for ShuffleDatabase();
  v29 = sub_1000FAACC(&qword_10012A480, &type metadata accessor for ShuffleDatabase, &protocol conformance descriptor for ShuffleDatabase);
  v30 = swift_task_alloc();
  v1[34] = v30;
  *v30 = v1;
  v30[1] = sub_10008E0F4;
  v31 = v1[18];

  return dispatch thunk of PhotosFaceIDDatabase.insert(id:)(v31, v28, v29);
}

uint64_t sub_10008E0F4()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = sub_1000FBEFC;
  }

  else
  {
    v5 = sub_10008E230;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10008E230()
{
  if (static Platform.current.getter())
  {
    v1 = *(v0 + 184);
    v2 = *(v0 + 160);
    v3 = *(v0 + 168);
    v4 = *(v0 + 152);
    (*(v0 + 256))(v1, *(v0 + 144), v2);
    v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v6 = swift_allocObject();
    *(v0 + 304) = v6;
    *(v6 + 16) = v4;
    (*(v3 + 32))(v6 + v5, v1, v2);

    v7 = swift_task_alloc();
    *(v0 + 312) = v7;
    *v7 = v0;
    v7[1] = sub_10008D228;
    v8 = *(v0 + 144);

    return sub_1000234E4(v0 + 56, v8, &unk_10010A7B8, v6);
  }

  else
  {
    *(v0 + 120) = sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
    *(v0 + 128) = sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0, &protocol conformance descriptor for WrapperSequence<A, B>);
    v10 = sub_10000C1AC((v0 + 96));
    v11 = swift_task_alloc();
    *(v0 + 288) = v11;
    *v11 = v0;
    v11[1] = sub_10008D0EC;
    v12 = *(v0 + 144);

    return sub_100021028(v10, v12, 1);
  }
}

uint64_t sub_10008E43C(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = type metadata accessor for AlbumID();
  v3[20] = v4;
  v5 = *(v4 - 8);
  v3[21] = v5;
  v3[22] = *(v5 + 64);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v3[29] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[30] = v8;
  v3[31] = v7;

  return _swift_task_switch(sub_10008E5E0, v8, v7);
}

uint64_t sub_10008E5E0(uint64_t a1)
{
  v38 = v1;
  v2 = v1[25];
  v3 = v1[20];
  v4 = v1[21];
  v5 = v1[18];
  static Log.photos.getter();
  v6 = *(v4 + 16);
  v1[32] = v6;
  v1[33] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  swift_retain_n();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[27];
  v11 = v1[28];
  v12 = v1[25];
  v36 = v1[26];
  if (v9)
  {
    v34 = v8;
    v13 = v1[24];
    v35 = v1[28];
    v15 = v1[20];
    v14 = v1[21];
    log = v7;
    v16 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v16 = 136315394;
    v6(v13, v12, v15);
    v17 = *(v14 + 8);
    v17(v12, v15);
    sub_1000FAACC(&qword_10012A0A0, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v17(v13, v15);
    v21 = sub_100102F80(v18, v20, &v37);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;

    v22 = PhotosFaceType.description.getter();
    v24 = v23;

    v25 = sub_100102F80(v22, v24, &v37);

    *(v16 + 14) = v25;
    _os_log_impl(&_mh_execute_header, log, v34, "Tracking %s for type %s", v16, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v35, v36);
  }

  else
  {
    v26 = v1[20];
    v27 = v1[21];

    (*(v27 + 8))(v12, v26);

    (*(v10 + 8))(v11, v36);
  }

  v28 = type metadata accessor for AlbumDatabase();
  v29 = sub_1000FAACC(&qword_10012A490, &type metadata accessor for AlbumDatabase, &protocol conformance descriptor for AlbumDatabase);
  v30 = swift_task_alloc();
  v1[34] = v30;
  *v30 = v1;
  v30[1] = sub_10008E970;
  v31 = v1[18];

  return dispatch thunk of PhotosFaceIDDatabase.insert(id:)(v31, v28, v29);
}

uint64_t sub_10008E970()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = sub_10008ECB8;
  }

  else
  {
    v5 = sub_10008EAAC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10008EAAC()
{
  if (static Platform.current.getter())
  {
    v1 = *(v0 + 184);
    v2 = *(v0 + 160);
    v3 = *(v0 + 168);
    v4 = *(v0 + 152);
    (*(v0 + 256))(v1, *(v0 + 144), v2);
    v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v6 = swift_allocObject();
    *(v0 + 304) = v6;
    *(v6 + 16) = v4;
    (*(v3 + 32))(v6 + v5, v1, v2);

    v7 = swift_task_alloc();
    *(v0 + 312) = v7;
    *v7 = v0;
    v7[1] = sub_10008EE88;
    v8 = *(v0 + 144);

    return sub_100024050(v0 + 56, v8, &unk_10010A980, v6);
  }

  else
  {
    *(v0 + 120) = sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
    *(v0 + 128) = sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0, &protocol conformance descriptor for WrapperSequence<A, B>);
    v10 = sub_10000C1AC((v0 + 96));
    v11 = swift_task_alloc();
    *(v0 + 288) = v11;
    *v11 = v0;
    v11[1] = sub_10008ED4C;
    v12 = *(v0 + 144);

    return sub_1000215CC(v10, v12, 1);
  }
}

uint64_t sub_10008ECB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008ED4C()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = sub_10008F08C;
  }

  else
  {
    v5 = sub_10008EFA4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10008EE88()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = sub_10008F210;
  }

  else
  {

    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = sub_10008F128;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10008EFA4()
{

  sub_10000C350((v0 + 96), v0 + 16);
  sub_10000C3CC((v0 + 16), *(v0 + 40));
  AsyncSequence.generic.getter();
  sub_10000C304((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008F08C()
{

  sub_1000F6694((v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008F128()
{

  sub_10000C350((v0 + 56), v0 + 16);
  sub_10000C3CC((v0 + 16), *(v0 + 40));
  AsyncSequence.generic.getter();
  sub_10000C304((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008F210()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008F2B0(uint64_t a1)
{
  v1[2] = type metadata accessor for CommunicationActor();
  v1[3] = static CommunicationActor.shared.getter();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_10008C444;

  return sub_10008F5F0(a1);
}

uint64_t sub_10008F380(uint64_t a1)
{
  v1[2] = type metadata accessor for CommunicationActor();
  v1[3] = static CommunicationActor.shared.getter();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_10008C444;

  return sub_100090020(a1);
}

uint64_t sub_10008F450(uint64_t a1)
{
  v1[2] = type metadata accessor for CommunicationActor();
  v1[3] = static CommunicationActor.shared.getter();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_10008C444;

  return sub_100090744(a1);
}

uint64_t sub_10008F520(uint64_t a1)
{
  v1[2] = type metadata accessor for CommunicationActor();
  v1[3] = static CommunicationActor.shared.getter();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_10008C444;

  return sub_100090E68(a1);
}

uint64_t sub_10008F5F0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v2[10] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v6;
  v2[12] = v5;

  return _swift_task_switch(sub_10008F770, v6, v5);
}

uint64_t sub_10008F770(uint64_t a1)
{
  v36 = v1;
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[4];
  v5 = v1[2];
  static Log.photos.getter();
  (*(v3 + 16))(v2, v5, v4);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[6];
  v12 = v1[7];
  v14 = v1[4];
  v13 = v1[5];
  if (v8)
  {
    v32 = v7;
    v15 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v15 = 136315650;
    *(v15 + 4) = sub_100102F80(0xD000000000000010, 0x8000000100107A10, &v35);
    *(v15 + 12) = 2080;
    v33 = v12;
    v34 = v9;
    v16 = PhotosFaceType.description.getter();
    v18 = v17;

    v19 = sub_100102F80(v16, v18, &v35);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2080;
    sub_1000FAACC(&qword_10012A1C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v13 + 8))(v11, v14);
    v23 = sub_100102F80(v20, v22, &v35);

    *(v15 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v6, v32, "%s type = %s, id: %s", v15, 0x20u);
    swift_arrayDestroy();

    (*(v10 + 8))(v34, v33);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  if (static Platform.current.getter())
  {
    v24 = *(v1[3] + 16);
    v25 = swift_task_alloc();
    v1[13] = v25;
    *v25 = v1;
    v25[1] = sub_10008FB44;
    v26 = v1[2];

    return sub_100004B38(v24, v26);
  }

  else
  {
    v28 = type metadata accessor for GalleryDatabase();
    v29 = sub_1000FAACC(&qword_10012A438, &type metadata accessor for GalleryDatabase, &protocol conformance descriptor for GalleryDatabase);
    v30 = swift_task_alloc();
    v1[15] = v30;
    *v30 = v1;
    v30[1] = sub_10008FD14;
    v31 = v1[2];

    return dispatch thunk of PhotosFaceIDDatabase.delete(id:)(v31, v28, v29);
  }
}

uint64_t sub_10008FB44()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {
    v3 = v2[11];
    v4 = v2[12];

    return _swift_task_switch(sub_1000FBE24, v3, v4);
  }

  else
  {
    v5 = type metadata accessor for GalleryDatabase();
    v6 = sub_1000FAACC(&qword_10012A438, &type metadata accessor for GalleryDatabase, &protocol conformance descriptor for GalleryDatabase);
    v7 = swift_task_alloc();
    v2[15] = v7;
    *v7 = v2;
    v7[1] = sub_10008FD14;
    v8 = v2[2];

    return dispatch thunk of PhotosFaceIDDatabase.delete(id:)(v8, v5, v6);
  }
}

uint64_t sub_10008FD14()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_1000FBE1C;
  }

  else
  {
    v5 = sub_10008FE50;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10008FE50()
{
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_10008FEE4;

  return sub_10006254C();
}

uint64_t sub_10008FEE4()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_1000FBE20;
  }

  else
  {
    v5 = sub_1000FBE80;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100090020(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v2[10] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v6;
  v2[12] = v5;

  return _swift_task_switch(sub_1000901A0, v6, v5);
}

uint64_t sub_1000901A0(uint64_t a1)
{
  v36 = v1;
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[4];
  v5 = v1[2];
  static Log.photos.getter();
  (*(v3 + 16))(v2, v5, v4);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[6];
  v12 = v1[7];
  v14 = v1[4];
  v13 = v1[5];
  if (v8)
  {
    v32 = v7;
    v15 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v15 = 136315650;
    *(v15 + 4) = sub_100102F80(0xD000000000000010, 0x8000000100107A10, &v35);
    *(v15 + 12) = 2080;
    v33 = v12;
    v34 = v9;
    v16 = PhotosFaceType.description.getter();
    v18 = v17;

    v19 = sub_100102F80(v16, v18, &v35);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2080;
    sub_1000FAACC(&qword_10012A1C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v13 + 8))(v11, v14);
    v23 = sub_100102F80(v20, v22, &v35);

    *(v15 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v6, v32, "%s type = %s, id: %s", v15, 0x20u);
    swift_arrayDestroy();

    (*(v10 + 8))(v34, v33);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  if (static Platform.current.getter())
  {
    v24 = *(v1[3] + 16);
    v25 = swift_task_alloc();
    v1[13] = v25;
    *v25 = v1;
    v25[1] = sub_100090574;
    v26 = v1[2];

    return sub_100004B38(v24, v26);
  }

  else
  {
    v28 = type metadata accessor for DailyDatabase();
    v29 = sub_1000FAACC(&qword_10012A470, &type metadata accessor for DailyDatabase, &protocol conformance descriptor for DailyDatabase);
    v30 = swift_task_alloc();
    v1[15] = v30;
    *v30 = v1;
    v30[1] = sub_10008FD14;
    v31 = v1[2];

    return dispatch thunk of PhotosFaceIDDatabase.delete(id:)(v31, v28, v29);
  }
}

uint64_t sub_100090574()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {
    v3 = v2[11];
    v4 = v2[12];

    return _swift_task_switch(sub_1000FBE24, v3, v4);
  }

  else
  {
    v5 = type metadata accessor for DailyDatabase();
    v6 = sub_1000FAACC(&qword_10012A470, &type metadata accessor for DailyDatabase, &protocol conformance descriptor for DailyDatabase);
    v7 = swift_task_alloc();
    v2[15] = v7;
    *v7 = v2;
    v7[1] = sub_10008FD14;
    v8 = v2[2];

    return dispatch thunk of PhotosFaceIDDatabase.delete(id:)(v8, v5, v6);
  }
}

uint64_t sub_100090744(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v2[10] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v6;
  v2[12] = v5;

  return _swift_task_switch(sub_1000908C4, v6, v5);
}

uint64_t sub_1000908C4(uint64_t a1)
{
  v36 = v1;
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[4];
  v5 = v1[2];
  static Log.photos.getter();
  (*(v3 + 16))(v2, v5, v4);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[6];
  v12 = v1[7];
  v14 = v1[4];
  v13 = v1[5];
  if (v8)
  {
    v32 = v7;
    v15 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v15 = 136315650;
    *(v15 + 4) = sub_100102F80(0xD000000000000010, 0x8000000100107A10, &v35);
    *(v15 + 12) = 2080;
    v33 = v12;
    v34 = v9;
    v16 = PhotosFaceType.description.getter();
    v18 = v17;

    v19 = sub_100102F80(v16, v18, &v35);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2080;
    sub_1000FAACC(&qword_10012A1C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v13 + 8))(v11, v14);
    v23 = sub_100102F80(v20, v22, &v35);

    *(v15 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v6, v32, "%s type = %s, id: %s", v15, 0x20u);
    swift_arrayDestroy();

    (*(v10 + 8))(v34, v33);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  if (static Platform.current.getter())
  {
    v24 = *(v1[3] + 16);
    v25 = swift_task_alloc();
    v1[13] = v25;
    *v25 = v1;
    v25[1] = sub_100090C98;
    v26 = v1[2];

    return sub_100004B38(v24, v26);
  }

  else
  {
    v28 = type metadata accessor for ShuffleDatabase();
    v29 = sub_1000FAACC(&qword_10012A480, &type metadata accessor for ShuffleDatabase, &protocol conformance descriptor for ShuffleDatabase);
    v30 = swift_task_alloc();
    v1[15] = v30;
    *v30 = v1;
    v30[1] = sub_10008FD14;
    v31 = v1[2];

    return dispatch thunk of PhotosFaceIDDatabase.delete(id:)(v31, v28, v29);
  }
}

uint64_t sub_100090C98()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {
    v3 = v2[11];
    v4 = v2[12];

    return _swift_task_switch(sub_1000FBE24, v3, v4);
  }

  else
  {
    v5 = type metadata accessor for ShuffleDatabase();
    v6 = sub_1000FAACC(&qword_10012A480, &type metadata accessor for ShuffleDatabase, &protocol conformance descriptor for ShuffleDatabase);
    v7 = swift_task_alloc();
    v2[15] = v7;
    *v7 = v2;
    v7[1] = sub_10008FD14;
    v8 = v2[2];

    return dispatch thunk of PhotosFaceIDDatabase.delete(id:)(v8, v5, v6);
  }
}

uint64_t sub_100090E68(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v2[10] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v6;
  v2[12] = v5;

  return _swift_task_switch(sub_100090FE8, v6, v5);
}

uint64_t sub_100090FE8(uint64_t a1)
{
  v36 = v1;
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[4];
  v5 = v1[2];
  static Log.photos.getter();
  (*(v3 + 16))(v2, v5, v4);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[6];
  v12 = v1[7];
  v14 = v1[4];
  v13 = v1[5];
  if (v8)
  {
    v32 = v7;
    v15 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v15 = 136315650;
    *(v15 + 4) = sub_100102F80(0xD000000000000010, 0x8000000100107A10, &v35);
    *(v15 + 12) = 2080;
    v33 = v12;
    v34 = v9;
    v16 = PhotosFaceType.description.getter();
    v18 = v17;

    v19 = sub_100102F80(v16, v18, &v35);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2080;
    sub_1000FAACC(&qword_10012A1C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v13 + 8))(v11, v14);
    v23 = sub_100102F80(v20, v22, &v35);

    *(v15 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v6, v32, "%s type = %s, id: %s", v15, 0x20u);
    swift_arrayDestroy();

    (*(v10 + 8))(v34, v33);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  if (static Platform.current.getter())
  {
    v24 = *(v1[3] + 16);
    v25 = swift_task_alloc();
    v1[13] = v25;
    *v25 = v1;
    v25[1] = sub_1000913BC;
    v26 = v1[2];

    return sub_100004B38(v24, v26);
  }

  else
  {
    v28 = type metadata accessor for AlbumDatabase();
    v29 = sub_1000FAACC(&qword_10012A490, &type metadata accessor for AlbumDatabase, &protocol conformance descriptor for AlbumDatabase);
    v30 = swift_task_alloc();
    v1[15] = v30;
    *v30 = v1;
    v30[1] = sub_10009158C;
    v31 = v1[2];

    return dispatch thunk of PhotosFaceIDDatabase.delete(id:)(v31, v28, v29);
  }
}

uint64_t sub_1000913BC()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {
    v3 = v2[11];
    v4 = v2[12];

    return _swift_task_switch(sub_100091A10, v3, v4);
  }

  else
  {
    v5 = type metadata accessor for AlbumDatabase();
    v6 = sub_1000FAACC(&qword_10012A490, &type metadata accessor for AlbumDatabase, &protocol conformance descriptor for AlbumDatabase);
    v7 = swift_task_alloc();
    v2[15] = v7;
    *v7 = v2;
    v7[1] = sub_10009158C;
    v8 = v2[2];

    return dispatch thunk of PhotosFaceIDDatabase.delete(id:)(v8, v5, v6);
  }
}

uint64_t sub_10009158C()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_100091898;
  }

  else
  {
    v5 = sub_1000916C8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000916C8()
{
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_10009175C;

  return sub_10006254C();
}

uint64_t sub_10009175C()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_100091990;
  }

  else
  {
    v5 = sub_100091918;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100091898()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100091918()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100091990()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100091A10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100091A90()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v0[4] = static CommunicationActor.shared.getter();
  v1 = type metadata accessor for GalleryDatabase();
  v2 = sub_1000FAACC(&qword_10012A3D0, &type metadata accessor for GalleryDatabase, &protocol conformance descriptor for GalleryDatabase);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_100091B9C;

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()(v1, v2);
}

uint64_t sub_100091B9C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v4[9] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_100091E18;
  }

  else
  {
    v4[7] = a1;
    v4[8] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_100091D8C;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_100091D8C()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000FBF24, v1, v0);
}

uint64_t sub_100091E18()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000FBF28, v1, v0);
}

uint64_t sub_100091EA4()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v0[4] = static CommunicationActor.shared.getter();
  v1 = type metadata accessor for DailyDatabase();
  v2 = sub_1000FAACC(&qword_10012A468, &type metadata accessor for DailyDatabase, &protocol conformance descriptor for DailyDatabase);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_100091B9C;

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()(v1, v2);
}

uint64_t sub_100091FB0()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v0[4] = static CommunicationActor.shared.getter();
  v1 = type metadata accessor for ShuffleDatabase();
  v2 = sub_1000FAACC(&qword_10012A478, &type metadata accessor for ShuffleDatabase, &protocol conformance descriptor for ShuffleDatabase);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_100091B9C;

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()(v1, v2);
}

uint64_t sub_1000920BC()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v0[4] = static CommunicationActor.shared.getter();
  v1 = type metadata accessor for AlbumDatabase();
  v2 = sub_1000FAACC(&qword_10012A488, &type metadata accessor for AlbumDatabase, &protocol conformance descriptor for AlbumDatabase);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_100091B9C;

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()(v1, v2);
}

uint64_t sub_1000921C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v3[5] = FaceRequest;
  v5 = *(FaceRequest - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for CommunicationActor();
  v3[10] = static CommunicationActor.shared.getter();
  v3[11] = static CommunicationActor.shared.getter();
  v3[12] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10009230C, v7, v6);
}

uint64_t sub_10009230C()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];

  static CommunicationActor.shared.getter();
  (*(v3 + 16))(v1, v5, v2);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  (*(v3 + 32))(v7 + v6, v1, v2);
  type metadata accessor for StoredPhoto();

  generateElements<A>(isolation:_:)();

  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000FBE10, v9, v8);
}

uint64_t sub_100092480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v3[5] = FaceRequest;
  v5 = *(FaceRequest - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for CommunicationActor();
  v3[10] = static CommunicationActor.shared.getter();
  v3[11] = static CommunicationActor.shared.getter();
  v3[12] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000925C4, v7, v6);
}

uint64_t sub_1000925C4()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];

  static CommunicationActor.shared.getter();
  (*(v3 + 16))(v1, v5, v2);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  (*(v3 + 32))(v7 + v6, v1, v2);
  type metadata accessor for StoredPhoto();

  generateElements<A>(isolation:_:)();

  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000FBE10, v9, v8);
}

uint64_t sub_100092738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v3[5] = FaceRequest;
  v5 = *(FaceRequest - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for CommunicationActor();
  v3[10] = static CommunicationActor.shared.getter();
  v3[11] = static CommunicationActor.shared.getter();
  v3[12] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10009287C, v7, v6);
}

uint64_t sub_10009287C()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];

  static CommunicationActor.shared.getter();
  (*(v3 + 16))(v1, v5, v2);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  (*(v3 + 32))(v7 + v6, v1, v2);
  type metadata accessor for StoredPhoto();

  generateElements<A>(isolation:_:)();

  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000FBE10, v9, v8);
}

uint64_t sub_1000929F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v3[5] = FaceRequest;
  v5 = *(FaceRequest - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for CommunicationActor();
  v3[10] = static CommunicationActor.shared.getter();
  v3[11] = static CommunicationActor.shared.getter();
  v3[12] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100092B34, v7, v6);
}

uint64_t sub_100092B34()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];

  static CommunicationActor.shared.getter();
  (*(v3 + 16))(v1, v5, v2);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  (*(v3 + 32))(v7 + v6, v1, v2);
  type metadata accessor for StoredPhoto();

  generateElements<A>(isolation:_:)();

  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100092CA8, v9, v8);
}

uint64_t sub_100092CA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100092D18(uint64_t a1)
{
  v1[2] = type metadata accessor for CommunicationActor();
  v1[3] = static CommunicationActor.shared.getter();
  v1[4] = static CommunicationActor.shared.getter();
  v3 = type metadata accessor for GalleryDatabase();
  v4 = sub_1000FAACC(&qword_10012A3D0, &type metadata accessor for GalleryDatabase, &protocol conformance descriptor for GalleryDatabase);
  v5 = swift_task_alloc();
  v1[5] = v5;
  *v5 = v1;
  v5[1] = sub_100091B9C;

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(a1, v3, v4);
}

uint64_t sub_100092E34(uint64_t a1)
{
  v1[2] = type metadata accessor for CommunicationActor();
  v1[3] = static CommunicationActor.shared.getter();
  v1[4] = static CommunicationActor.shared.getter();
  v3 = type metadata accessor for DailyDatabase();
  v4 = sub_1000FAACC(&qword_10012A468, &type metadata accessor for DailyDatabase, &protocol conformance descriptor for DailyDatabase);
  v5 = swift_task_alloc();
  v1[5] = v5;
  *v5 = v1;
  v5[1] = sub_100091B9C;

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(a1, v3, v4);
}

uint64_t sub_100092F50(uint64_t a1)
{
  v1[2] = type metadata accessor for CommunicationActor();
  v1[3] = static CommunicationActor.shared.getter();
  v1[4] = static CommunicationActor.shared.getter();
  v3 = type metadata accessor for ShuffleDatabase();
  v4 = sub_1000FAACC(&qword_10012A478, &type metadata accessor for ShuffleDatabase, &protocol conformance descriptor for ShuffleDatabase);
  v5 = swift_task_alloc();
  v1[5] = v5;
  *v5 = v1;
  v5[1] = sub_100091B9C;

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(a1, v3, v4);
}

uint64_t sub_10009306C(uint64_t a1)
{
  v1[2] = type metadata accessor for CommunicationActor();
  v1[3] = static CommunicationActor.shared.getter();
  v1[4] = static CommunicationActor.shared.getter();
  v3 = type metadata accessor for AlbumDatabase();
  v4 = sub_1000FAACC(&qword_10012A488, &type metadata accessor for AlbumDatabase, &protocol conformance descriptor for AlbumDatabase);
  v5 = swift_task_alloc();
  v1[5] = v5;
  *v5 = v1;
  v5[1] = sub_100093188;

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(a1, v3, v4);
}

uint64_t sub_100093188(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v4[9] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_10009346C;
  }

  else
  {
    v4[7] = a1;
    v4[8] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_100093378;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_100093378()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100093404, v1, v0);
}

uint64_t sub_100093404()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_10009346C()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000934F8, v1, v0);
}

uint64_t sub_1000934F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10009355C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for CommunicationActor();
  v2[5] = static CommunicationActor.shared.getter();
  v2[6] = static CommunicationActor.shared.getter();
  v2[7] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v4;
  v2[9] = v3;

  return _swift_task_switch(sub_100093638, v4, v3);
}

uint64_t sub_100093638()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1000936D8;
  v2 = *(v0 + 16);

  return sub_100011914(v2, 1);
}

uint64_t sub_1000936D8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_1000938AC;
  }

  else
  {
    v4[12] = a1;
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_100093800;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100093800()
{
  v1 = *(v0 + 96);

  sub_1000730FC(v1);
  v3 = v2;

  *(v0 + 104) = v3;
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000FBF30, v5, v4);
}

uint64_t sub_1000938AC()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000FBF2C, v1, v0);
}

uint64_t sub_100093934(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for CommunicationActor();
  v2[5] = static CommunicationActor.shared.getter();
  v2[6] = static CommunicationActor.shared.getter();
  v2[7] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v4;
  v2[9] = v3;

  return _swift_task_switch(sub_100093A10, v4, v3);
}

uint64_t sub_100093A10()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1000936D8;
  v2 = *(v0 + 16);

  return sub_1000105AC(v2);
}

uint64_t sub_100093AC0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for CommunicationActor();
  v2[5] = static CommunicationActor.shared.getter();
  v2[6] = static CommunicationActor.shared.getter();
  v2[7] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v4;
  v2[9] = v3;

  return _swift_task_switch(sub_100093B9C, v4, v3);
}

uint64_t sub_100093B9C()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_100093C3C;
  v2 = *(v0 + 16);

  return sub_10000CCAC(v2, 1);
}

uint64_t sub_100093C3C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_100093E88;
  }

  else
  {
    v4[12] = a1;
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_100093D64;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100093D64()
{
  v1 = *(v0 + 96);

  sub_1000730FC(v1);
  v3 = v2;

  *(v0 + 104) = v3;
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100093E10, v5, v4);
}

uint64_t sub_100093E10()
{

  v1 = *(v0 + 8);
  if (*(v0 + 104))
  {
    v2 = *(v0 + 104);
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  return v1(v2);
}

uint64_t sub_100093E88()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100093F10, v1, v0);
}

uint64_t sub_100093F10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100093F74()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10008C444;

  return sub_100014A8C();
}

uint64_t sub_100094038()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10008C444;

  return sub_100017684();
}

uint64_t sub_1000940FC()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10008C444;

  return sub_10001A828();
}

uint64_t sub_1000941C0()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10008C444;

  return sub_10001D0C8();
}

uint64_t sub_100094284()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10008C444;

  return sub_100094594();
}

uint64_t sub_100094348()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10008C444;

  return sub_1000A2D30();
}

uint64_t sub_10009440C()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10008C444;

  return sub_1000B1B4C();
}

uint64_t sub_1000944D0()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10008C444;

  return sub_1000C0B00();
}

uint64_t sub_100094594()
{
  v1[16] = v0;
  sub_10000560C(&qword_10012B490, &qword_10010A268);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v2 = sub_10000560C(&qword_10012B498, &qword_10010A270);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v3 = type metadata accessor for StoredPhoto();
  v1[23] = v3;
  v1[24] = *(v3 - 8);
  v1[25] = swift_task_alloc();
  v4 = sub_10000560C(&qword_100129F30, &qword_100108D20);
  v1[26] = v4;
  v1[27] = *(v4 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  sub_10000560C(&qword_10012A6B8, &qword_1001095C0);
  v1[44] = swift_task_alloc();
  v5 = sub_10000560C(&qword_10012B4A0, &qword_10010A278);
  v1[45] = v5;
  v1[46] = *(v5 - 8);
  v1[47] = swift_task_alloc();
  v6 = sub_10000560C(&qword_10012B4A8, &qword_10010A280);
  v1[48] = v6;
  v1[49] = *(v6 - 8);
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v1[52] = v7;
  v1[53] = *(v7 - 8);
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v8 = type metadata accessor for SyncFacesRequest();
  v1[69] = v8;
  v1[70] = *(v8 - 8);
  v1[71] = swift_task_alloc();
  v9 = type metadata accessor for ShuffleID();
  v1[72] = v9;
  v1[73] = *(v9 - 8);
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v1[85] = v10;
  v1[86] = *(v10 - 8);
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v1[94] = type metadata accessor for CommunicationActor();
  v1[95] = static CommunicationActor.shared.getter();
  v11 = type metadata accessor for GalleryDatabase();
  v1[96] = v11;
  v12 = sub_1000FAACC(&qword_10012A3D0, &type metadata accessor for GalleryDatabase, &protocol conformance descriptor for GalleryDatabase);
  v1[97] = v12;
  v13 = swift_task_alloc();
  v1[98] = v13;
  *v13 = v1;
  v13[1] = sub_100094CC0;

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()(v11, v12);
}

uint64_t sub_100094CC0(uint64_t a1)
{
  v3 = *v2;
  v3[99] = a1;
  v3[100] = v1;

  v4 = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_1000FBF18;
    v9 = v5;
    v10 = v7;
  }

  else
  {
    v3[101] = v4;
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v12;
    v3[102] = v11;
    v3[103] = v12;
    v8 = sub_100094E90;
    v9 = v11;
  }

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100094E90()
{
  v51 = v0;
  v1 = v0[99];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[86];
    v4 = v0[73];
    v50[0] = _swiftEmptyArrayStorage;
    v5 = sub_10005C508(0, v2, 0);
    v8 = 0;
    v9 = _swiftEmptyArrayStorage;
    v48 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    while (v8 < *(v1 + 16))
    {
      v10 = v0[84];
      v11 = v0[72];
      (*(v4 + 16))(v10, v48 + *(v4 + 72) * v8, v11);
      sub_1000FAACC(&qword_10012A2B0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
      dispatch thunk of PhotosFaceID.id.getter();
      (*(v4 + 8))(v10, v11);
      v50[0] = v9;
      v13 = v9[2];
      v12 = v9[3];
      if (v13 >= v12 >> 1)
      {
        sub_10005C508((v12 > 1), v13 + 1, 1);
        v9 = v50[0];
      }

      v14 = v0[93];
      v15 = v0[85];
      ++v8;
      v9[2] = v13 + 1;
      v5 = (*(v3 + 32))(v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v14, v15);
      if (v2 == v8)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
    return _swift_task_switch(v5, v6, v7);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_9:
  v0[104] = v9;
  if (!v9[2])
  {
    v16 = PhotosFaceType.rawValue.getter();
    v18 = v17;
    if (v16 == PhotosFaceType.rawValue.getter() && v18 == v19)
    {
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {

        v22 = v0[1];

        return v22();
      }
    }
  }

  if ((static TestProperties.ignoreSyncCache.getter() & 1) == 0)
  {
    v0[105] = *(v0[16] + 104);
    v5 = sub_1000957AC;
    v6 = 0;
    v7 = 0;

    return _swift_task_switch(v5, v6, v7);
  }

  v24 = v0;

  sub_10006C038(v25);

  SyncFacesRequest.init(trackedFaces:cachedIdentifiers:)();
  static Log.session.getter();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v46 = v0[53];
    v47 = v0[52];
    v49 = v0[68];
    v28 = swift_slowAlloc();
    v50[0] = swift_slowAlloc();
    *v28 = 136315650;
    v29 = PhotosFaceType.description.getter();
    v31 = v30;

    v32 = sub_100102F80(v29, v31, v50);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2048;
    v33 = _swiftEmptyArrayStorage[2];

    *(v28 + 14) = v33;

    *(v28 + 22) = 2080;
    sub_1000FAACC(&qword_10012A1F8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v34 = Set.description.getter();
    v36 = v35;

    v37 = sub_100102F80(v34, v36, v50);

    *(v28 + 24) = v37;
    _os_log_impl(&_mh_execute_header, v26, v27, "Requesting %s with %ld cached photos and faces: %s", v28, 0x20u);
    swift_arrayDestroy();

    v38 = *(v46 + 8);
    v38(v49, v47);
  }

  else
  {
    v39 = v0[68];
    v41 = v0[52];
    v40 = v0[53];
    swift_bridgeObjectRelease_n();

    v38 = *(v40 + 8);
    v38(v39, v41);
  }

  v24[108] = v38;
  v42 = *(v24[16] + 16);
  *(v24 + 1261) = v42;
  v43 = swift_task_alloc();
  v24[109] = v43;
  *v43 = v24;
  v43[1] = sub_1000959E0;
  v44 = v24[71];
  v45 = v24[51];

  return sub_100088E80(v45, v42, v44);
}

uint64_t sub_1000957AC()
{
  v1 = swift_task_alloc();
  *(v0 + 848) = v1;
  *v1 = v0;
  v1[1] = sub_100095850;

  return PhotosFaceDatabase.storedPhotos()();
}

uint64_t sub_100095850(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 856) = a1;

  if (v1)
  {

    v4[156] = v1;
    v6 = v4[103];
    v7 = v4[102];

    return _swift_task_switch(sub_1000FBF1C, v7, v6);
  }

  else
  {
    v8 = swift_task_alloc();
    v4[153] = v8;
    *v8 = v5;
    v8[1] = sub_1000A2810;

    return sub_100062C74(a1);
  }
}

uint64_t sub_1000959E0()
{
  v2 = *v1;
  *(*v1 + 880) = v0;

  v3 = *(v2 + 824);
  v4 = *(v2 + 816);
  if (v0)
  {
    v5 = sub_1000FBEDC;
  }

  else
  {
    v5 = sub_100095B1C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100095B1C()
{
  (*(v0[49] + 16))(v0[50], v0[51], v0[48]);
  sub_10000CC24(&qword_10012B4B0, &qword_10012B4A8, &qword_10010A280, &protocol conformance descriptor for AsyncThrowingMapSequence<A, B>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v0[111] = _swiftEmptyArrayStorage;
  v1 = v0[101];
  v2 = static CommunicationActor.shared.getter();
  v0[112] = v2;
  v3 = sub_10000CC24(&qword_10012B4B8, &qword_10012B4A0, &qword_10010A278, &protocol conformance descriptor for AsyncThrowingMapSequence<A, B>.Iterator);
  v4 = swift_task_alloc();
  v0[113] = v4;
  *v4 = v0;
  v4[1] = sub_100095C88;
  v5 = v0[44];
  v6 = v0[45];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v5, v2, v1, v0 + 9, v6, v3);
}

uint64_t sub_100095C88()
{
  v2 = *v1;
  *(*v1 + 912) = v0;

  v3 = *(v2 + 824);
  v4 = *(v2 + 816);
  if (v0)
  {
    v5 = sub_100097C90;
  }

  else
  {
    v5 = sub_100095DB4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100095DB4()
{
  v339 = v0;
  v3 = v0[44];
  v4 = v0[26];
  v5 = v0[27];
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    (*(v0[46] + 8))(v0[47], v0[45]);
    v284 = v0[114];
    v0[122] = v0[111];
    v0[121] = 0;
    v6 = v0[96];
    v7 = v0[72];
    v0[123] = sub_1000FAACC(&qword_10012A2B0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
    v8 = static SyncedPhotosFace.destreamify(_:)();
    v9 = swift_task_alloc();
    *v9 = v7;
    v10 = type metadata accessor for ShuffleProvider();
    v0[124] = v10;
    v283 = v10;
    v9[1] = v10;
    v9[2] = v6;
    v11 = sub_1000FAACC(&qword_10012B4C0, type metadata accessor for ShuffleProvider, &unk_100108FA4);
    v0[125] = v11;
    v282 = v11;
    v9[3] = v11;
    v12 = sub_1000FAACC(&qword_10012A438, &type metadata accessor for GalleryDatabase, &protocol conformance descriptor for GalleryDatabase);
    v0[126] = v12;
    v281 = v12;
    v9[4] = v12;
    KeyPath = swift_getKeyPath();

    v15 = *(v8 + 16);
    if (v15)
    {
      v16 = 0;
      v17 = _swiftEmptyArrayStorage;
      v323 = *(v8 + 16);
      v332 = v8;
      while (v16 < *(v8 + 16))
      {
        v18 = v0[27];
        v19 = *(v18 + 16);
        v18 += 16;
        v1 = (*(v18 + 64) + 32) & ~*(v18 + 64);
        v20 = *(v18 + 56);
        v19(v0[38], v8 + v1 + v20 * v16, v0[26]);
        swift_getAtKeyPath();
        if (*(v0 + 1260) == 1)
        {
          v21 = KeyPath;
          v22 = v0[27];
          v24 = *(v22 + 32);
          v2 = (v22 + 32);
          v23 = v24;
          v24(v0[37], v0[38], v0[26]);
          v338[0] = v17;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10005C694(0, v17[2] + 1, 1);
            v17 = v338[0];
          }

          v26 = v17[2];
          v25 = v17[3];
          v27 = v17;
          if (v26 >= v25 >> 1)
          {
            sub_10005C694((v25 > 1), v26 + 1, 1);
            v27 = v338[0];
          }

          v28 = v0[37];
          v29 = v0[26];
          *(v27 + 16) = v26 + 1;
          v23(v27 + v1 + v26 * v20, v28, v29);
          v17 = v27;
          KeyPath = v21;
          v15 = v323;
          v8 = v332;
        }

        else
        {
          (*(v0[27] + 8))(v0[38], v0[26]);
        }

        if (v15 == ++v16)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v17 = _swiftEmptyArrayStorage;
LABEL_25:

      v78 = v17[2];
      v79 = _swiftEmptyArrayStorage;
      v336 = v0;
      if (v78)
      {
        v80 = v0[27];
        v81 = v17 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
        v309 = *(v80 + 72);
        v82 = *(v80 + 16);
        v280 = v17;

        v315 = v82;
        do
        {
          v327 = v79;
          v82(v0[29], v81, v0[26]);
          SyncedPhotosFace.photos.getter();
          v83 = static SyncedPhotosFace.faceChecksum(for:)();

          v84 = SyncedPhotosFace.checksum.getter();
          if (v84 < 0 || (v85 = v84, v84 == v83))
          {
            (*(v0[27] + 8))(v0[29], v0[26]);
            v82 = v315;
            v79 = v327;
          }

          else
          {
            v87 = v0[28];
            v86 = v0[29];
            v88 = v0[26];
            static Log.session.getter();
            v315(v87, v86, v88);
            v89 = Logger.logObject.getter();
            v90 = static os_log_type_t.error.getter();
            v91 = os_log_type_enabled(v89, v90);
            v92 = v0[108];
            v93 = v0[54];
            v300 = v0[52];
            if (v91)
            {
              v285 = v0[36];
              v289 = v90;
              v295 = v0[108];
              v95 = v0[27];
              v94 = v0[28];
              log = v89;
              v96 = v0[26];
              v291 = v0[54];
              v97 = swift_slowAlloc();
              v286 = swift_slowAlloc();
              v338[0] = v286;
              *v97 = 134218498;
              *(v97 + 4) = v83;
              *(v97 + 12) = 2048;
              *(v97 + 14) = v85;
              *(v97 + 22) = 2080;
              v315(v285, v94, v96);
              v98 = *(v95 + 8);
              v98(v94, v96);
              sub_10000CC24(&qword_10012A6E8, &qword_100129F30, &qword_100108D20, &protocol conformance descriptor for SyncedPhotosFace<A>);
              v99 = dispatch thunk of CustomStringConvertible.description.getter();
              v101 = v100;
              v98(v285, v96);
              v102 = sub_100102F80(v99, v101, v338);

              *(v97 + 24) = v102;
              _os_log_impl(&_mh_execute_header, log, v289, "Validation error: actual %ld, expected %ld for face %s", v97, 0x20u);
              sub_10000C304(v286);

              v295(v291, v300);
            }

            else
            {
              v98 = *(v0[27] + 8);
              v98(v0[28], v0[26]);

              v92(v93, v300);
            }

            v103 = v0[74];
            v104 = v0;
            v105 = v0[73];
            v106 = v104[72];
            SyncedPhotosFace.id.getter();
            dispatch thunk of PhotosFaceID.id.getter();
            (*(v105 + 8))(v103, v106);
            v79 = v327;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v79 = sub_1000FFFC8(0, v327[2] + 1, 1, v327);
            }

            v82 = v315;
            v108 = v79[2];
            v107 = v79[3];
            if (v108 >= v107 >> 1)
            {
              v79 = sub_1000FFFC8((v107 > 1), v108 + 1, 1, v79);
            }

            v109 = v336[87];
            v110 = v336[86];
            v111 = v336[85];
            v98(v336[29], v336[26]);
            v79[2] = v108 + 1;
            (*(v110 + 32))(v79 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v108, v109, v111);
            v0 = v336;
          }

          v81 += v309;
          --v78;
        }

        while (v78);
        v112 = v280;
      }

      else
      {
        v112 = v17;
      }

      v0[127] = v79;
      v113 = v0[96];
      v114 = v0[72];
      v115 = swift_task_alloc();
      *v115 = v114;
      v115[1] = v283;
      v115[2] = v113;
      v115[3] = v282;
      v115[4] = v281;
      v116 = swift_getKeyPath();

      v117 = sub_1000F8C80(v112, v116);
      v0[128] = v117;

      static Log.session.getter();
      swift_bridgeObjectRetain_n();

      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v118, v119))
      {
        v301 = v119;
        v120 = swift_slowAlloc();
        v337 = swift_slowAlloc();
        *v120 = 134218498;
        *(v120 + 4) = v117[2];
        *(v120 + 12) = 2080;
        v121 = PhotosFaceType.description.getter();
        v123 = v122;

        v124 = sub_100102F80(v121, v123, &v337);

        *(v120 + 14) = v124;
        v305 = v120;
        *(v120 + 22) = 2080;
        v125 = v117[2];
        if (v125)
        {
          v292 = v118;
          v126 = v0[73];
          v328 = v0[19];
          v338[0] = _swiftEmptyArrayStorage;
          v296 = v125;
          sub_10005C54C(0, v125, 0);
          v127 = v338[0];
          v319 = (v117 + 8);
          v128 = _HashTable.startBucket.getter();
          v129 = v0[72];
          v131 = v0[21];
          v130 = v0[22];
          v1 = *(v117 + 9);
          sub_1000F44C8(v130, v128, *(v117 + 9), 0, v117, &type metadata accessor for ShuffleID);
          v133 = v132;
          v134 = *(v126 + 32);
          v2 = (v126 + 32);
          v135 = v130;
          v136 = v134;
          v134(v131, v135, v129);
          *(v131 + *(v328 + 48)) = v133;
          v137 = sub_1000E0EF8(v131, &type metadata accessor for GalleryDatabase, &qword_10012A438, &type metadata accessor for GalleryDatabase, &protocol conformance descriptor for GalleryDatabase);
          if (v284)
          {
            v139 = v0[21];

            sub_10000C460(v139, &qword_10012B498, &qword_10010A270);
            sub_100042AF0(v128, v1, 0);
          }

          v151 = v137;
          v290 = v138;
          v310 = v136;
          sub_10000C460(v0[21], &qword_10012B498, &qword_10010A270);
          v153 = *(v127 + 16);
          v152 = *(v127 + 24);
          if (v153 >= v152 >> 1)
          {
            sub_10005C54C((v152 > 1), v153 + 1, 1);
            v127 = v338[0];
          }

          *(v127 + 16) = v153 + 1;
          v154 = v127 + 16 * v153;
          *(v154 + 32) = v151;
          *(v154 + 40) = v290;
          if (v128 < 0 || v128 >= -(-1 << *(v117 + 32)))
          {
            goto LABEL_110;
          }

          if (((*(v319 + ((v128 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v128) & 1) == 0)
          {
LABEL_111:
            __break(1u);
            goto LABEL_112;
          }

          if (v1 != *(v117 + 9))
          {
LABEL_112:
            __break(1u);
            goto LABEL_113;
          }

          v155 = _HashTable.occupiedBucket(after:)();
          v2 = (v296 - 1);
          if (v296 != 1)
          {
            v267 = v155;
            do
            {
              v268 = v0[72];
              v270 = v0[21];
              v269 = v0[22];
              v1 = *(v117 + 9);
              sub_1000F44C8(v269, v267, *(v117 + 9), 0, v117, &type metadata accessor for ShuffleID);
              v272 = v271;
              v310(v270, v269, v268);
              *(v270 + *(v328 + 48)) = v272;
              v273 = sub_1000E0EF8(v270, &type metadata accessor for GalleryDatabase, &qword_10012A438, &type metadata accessor for GalleryDatabase, &protocol conformance descriptor for GalleryDatabase);
              v275 = v274;
              sub_10000C460(v0[21], &qword_10012B498, &qword_10010A270);
              v338[0] = v127;
              v277 = *(v127 + 16);
              v276 = *(v127 + 24);
              if (v277 >= v276 >> 1)
              {
                sub_10005C54C((v276 > 1), v277 + 1, 1);
                v127 = v338[0];
              }

              *(v127 + 16) = v277 + 1;
              v278 = v127 + 16 * v277;
              *(v278 + 32) = v273;
              *(v278 + 40) = v275;
              if (v267 < 0 || v267 >= -(-1 << *(v117 + 32)))
              {
                goto LABEL_110;
              }

              if (((*(v319 + ((v267 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v267) & 1) == 0)
              {
                goto LABEL_111;
              }

              if (v1 != *(v117 + 9))
              {
                goto LABEL_112;
              }

              v267 = _HashTable.occupiedBucket(after:)();
            }

            while (--v2);
          }

          v118 = v292;
        }

        else
        {
        }

        v156 = v0[108];
        v157 = v0[64];
        v158 = v0[52];
        v159 = Array.description.getter();
        v161 = v160;

        v162 = sub_100102F80(v159, v161, &v337);

        *(v305 + 24) = v162;
        _os_log_impl(&_mh_execute_header, v118, v301, "Received %ld %s: %s", v305, 0x20u);
        swift_arrayDestroy();

        v156(v157, v158);
      }

      else
      {
        v141 = v0[108];
        v142 = v0[64];
        v143 = v0[52];
        swift_bridgeObjectRelease_n();

        v141(v142, v143);
      }

      v287 = (v0 + 125);
      v163 = *(v117 + 32);
      *(v0 + 1262) = v163;
      v164 = 1 << v163;
      if (v164 < 64)
      {
        v165 = ~(-1 << v164);
      }

      else
      {
        v165 = -1;
      }

      v166 = v165 & v117[8];

      v1 = 0;
      if (!v166)
      {
        goto LABEL_69;
      }

      do
      {
        while (1)
        {
          v172 = v0[128];
LABEL_77:
          v176 = v0[84];
          v177 = v0[73];
          v178 = v0[72];
          v179 = v0[20];
          v180 = v336[19];
          v181 = v336[17];
          v182 = __clz(__rbit64(v166));
          v166 &= v166 - 1;
          v183 = v182 | (v1 << 6);
          (*(v177 + 16))(v176, *(v172 + 48) + *(v177 + 72) * v183, v178);
          v184 = *(*(v172 + 56) + 8 * v183);
          v185 = *(v180 + 48);
          (*(v177 + 32))(v181, v176, v178);
          *(v181 + v185) = v184;
          v186 = v180;
          v0 = v336;
          (*(v179 + 56))(v181, 0, 1, v186);

          v2 = v1;
LABEL_78:
          v0[130] = v2;
          v0[129] = v166;
          v187 = v0;
          v188 = v0[20];
          v189 = v187[18];
          v190 = v187[19];
          sub_10005DD90(v187[17], v189, &qword_10012B490, &qword_10010A268);
          if ((*(v188 + 48))(v189, 1, v190) == 1)
          {

            v212 = swift_task_alloc();
            v187[132] = v212;
            *v212 = v187;
            v212[1] = sub_10009B570;

            return sub_10006254C();
          }

          v191 = v187[83];
          v192 = v187[73];
          v193 = *(v187[18] + *(v187[19] + 48));
          v187[131] = v193;
          (*(v192 + 32))(v191);
          v194 = v187[83];
          v0 = v187;
          if (*(v193 + 16))
          {
            v213 = v187[81];
            v214 = v187[73];
            v215 = v187[72];
            static Log.session.getter();
            v216 = *(v214 + 16);
            v0[134] = v216;
            v0[135] = (v214 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
            v216(v213, v194, v215);
            swift_bridgeObjectRetain_n();

            v217 = Logger.logObject.getter();
            v218 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v217, v218))
            {
              v312 = v218;
              v330 = v0[124];
              v317 = v217;
              v321 = v0[96];
              v219 = v0[84];
              v303 = v0[81];
              v307 = v0[73];
              v220 = v0[72];
              v298 = *v287;
              v221 = swift_slowAlloc();
              v0[11] = swift_slowAlloc();
              *v221 = 136315650;
              v222 = PhotosFaceType.description.getter();
              v224 = v223;

              v225 = sub_100102F80(v222, v224, v0 + 11);

              *(v221 + 4) = v225;
              v226 = v0;
              *(v221 + 12) = 2080;
              v216(v219, v303, v220);
              v227 = *(v307 + 8);
              v227(v303, v220);
              sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
              v228 = dispatch thunk of CustomStringConvertible.description.getter();
              v230 = v229;
              v304 = v227;
              v227(v219, v220);
              v231 = sub_100102F80(v228, v230, v0 + 11);

              *(v221 + 14) = v231;
              v308 = v221;
              *(v221 + 22) = 2080;
              v232 = swift_task_alloc();
              *v232 = v220;
              *(v232 + 8) = v330;
              *(v232 + 16) = v321;
              *(v232 + 24) = v298;
              v233 = swift_getKeyPath();

              v234 = *(v193 + 16);
              if (v234)
              {
                v235 = v0[27];
                v226[12] = _swiftEmptyArrayStorage;
                sub_10005C54C(0, v234, 0);
                v236 = v226[12];
                v237 = v226;
                v238 = v193 + ((*(v235 + 80) + 32) & ~*(v235 + 80));
                v322 = *(v235 + 16);
                v331 = *(v235 + 72);
                v0 = v237;
                do
                {
                  v239 = v0[36];
                  v240 = v336[27];
                  v241 = v336[26];
                  v322(v239, v238, v241);
                  v242 = v233;
                  swift_getAtKeyPath();
                  v243 = v336[7];
                  v244 = v336[8];
                  (*(v240 + 8))(v239, v241);
                  v0 = v336;
                  v336[12] = v236;
                  v246 = *(v236 + 16);
                  v245 = *(v236 + 24);
                  if (v246 >= v245 >> 1)
                  {
                    sub_10005C54C((v245 > 1), v246 + 1, 1);
                    v236 = v336[12];
                  }

                  *(v236 + 16) = v246 + 1;
                  v247 = v236 + 16 * v246;
                  *(v247 + 32) = v243;
                  *(v247 + 40) = v244;
                  v238 += v331;
                  --v234;
                  v233 = v242;
                }

                while (v234);
              }

              v256 = v0[108];
              v257 = v0[62];
              v258 = v0[52];
              v259 = Array.description.getter();
              v261 = v260;

              v262 = sub_100102F80(v259, v261, v0 + 11);

              *(v308 + 24) = v262;
              _os_log_impl(&_mh_execute_header, v317, v312, "Inserting %s %s: %s", v308, 0x20u);
              swift_arrayDestroy();

              v256(v257, v258);
              v255 = v304;
            }

            else
            {
              v248 = v336[108];
              v249 = v336[81];
              v250 = v336[73];
              v251 = v336[72];
              v252 = v336[62];
              v253 = v336[52];

              v254 = v249;
              v255 = *(v250 + 8);
              v255(v254, v251);

              v248(v252, v253);
              v0 = v336;
            }

            v0[136] = v255;
            v263 = swift_task_alloc();
            v0[137] = v263;
            *v263 = v0;
            v263[1] = sub_10009B6A0;
            v264 = v0[126];
            v265 = v0[96];
            v266 = v0[83];

            return dispatch thunk of PhotosFaceIDDatabase.insert(id:)(v266, v265, v264);
          }

          v195 = v187[82];
          v196 = v187[73];
          v197 = v187[72];

          static Log.session.getter();
          v198 = *(v196 + 16);
          v198(v195, v194, v197);
          v199 = Logger.logObject.getter();
          v200 = static os_log_type_t.error.getter();
          v329 = v199;
          v201 = os_log_type_enabled(v199, v200);
          v320 = v0[108];
          if (v201)
          {
            break;
          }

          v167 = v0[83];
          v168 = v336[72];
          v169 = v336[63];
          v170 = v336[52];
          v171 = *(v336[73] + 8);
          v171(v0[82], v168);

          v320(v169, v170);
          v171(v167, v168);
          v0 = v336;
          v1 = v2;
          if (!v166)
          {
            goto LABEL_69;
          }
        }

        v202 = v0[84];
        v311 = v0[83];
        v316 = v2;
        v203 = v0[82];
        v204 = v0[73];
        v205 = v0[72];
        v306 = v0[63];
        v302 = v0[52];
        v293 = v200;
        v206 = swift_slowAlloc();
        v297 = swift_slowAlloc();
        v338[0] = v297;
        *v206 = 136315138;
        v198(v202, v203, v205);
        v207 = *(v204 + 8);
        v207(v203, v205);
        sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
        v208 = dispatch thunk of CustomStringConvertible.description.getter();
        v210 = v209;
        v207(v202, v205);
        v211 = sub_100102F80(v208, v210, v338);

        *(v206 + 4) = v211;
        _os_log_impl(&_mh_execute_header, v329, v293, "There are no valid synced faces per day for %s; skipping", v206, 0xCu);
        sub_10000C304(v297);

        v320(v306, v302);
        v207(v311, v205);
        v1 = v316;
      }

      while (v166);
LABEL_69:
      v173 = ((1 << *(v0 + 1262)) + 63) >> 6;
      if (v173 <= (v1 + 1))
      {
        v174 = v1 + 1;
      }

      else
      {
        v174 = ((1 << *(v0 + 1262)) + 63) >> 6;
      }

      v2 = (v174 - 1);
      while (1)
      {
        v175 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v175 >= v173)
        {
          (*(v0[20] + 56))(v0[17], 1, 1, v0[19]);
          v166 = 0;
          goto LABEL_78;
        }

        v172 = v0[128];
        v166 = *(v172 + 8 * v175 + 64);
        ++v1;
        if (v166)
        {
          v1 = v175;
          goto LABEL_77;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v31 = v0[42];
  v30 = v0[43];
  v1 = *(v5 + 32);
  (v1)(v30, v3, v4);
  v2 = *(v5 + 16);
  (v2)(v31, v30, v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v0[111];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_113:
    v14 = sub_1001002AC(0, *(v14 + 2) + 1, 1, v14);
  }

  v34 = *(v14 + 2);
  v33 = *(v14 + 3);
  v35 = v34 + 1;
  v333 = v1;
  if (v34 >= v33 >> 1)
  {
    v279 = sub_1001002AC((v33 > 1), v34 + 1, 1, v14);
    v35 = v34 + 1;
    v14 = v279;
  }

  v0[115] = v14;
  v36 = v0[42];
  v37 = v0[43];
  v39 = v0[40];
  v38 = v0[41];
  v324 = v0[39];
  v41 = v0[26];
  v40 = v0[27];
  *(v14 + 2) = v35;
  v333(&v14[((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v34], v36, v41);
  static Log.session.getter();
  (v2)(v38, v37, v41);
  (v2)(v39, v37, v41);
  (v2)(v324, v37, v41);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v318 = v43;
    v334 = v42;
    v294 = v0[92];
    v313 = v0[86];
    v299 = v0[85];
    v44 = v0[84];
    v325 = v0[73];
    v45 = v0[72];
    v47 = v0[40];
    v46 = v0[41];
    v48 = v0[26];
    v49 = v0[27];
    v50 = swift_slowAlloc();
    v0[14] = swift_slowAlloc();
    *v50 = 134218498;
    v51 = *(SyncedPhotosFace.uncached.getter() + 16);

    v52 = *(v49 + 8);
    v52(v46, v48);
    *(v50 + 4) = v51;
    *(v50 + 12) = 2080;
    SyncedPhotosFace.id.getter();
    sub_1000FAACC(&qword_10012A2B0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
    dispatch thunk of PhotosFaceID.id.getter();
    (*(v325 + 8))(v44, v45);
    v326 = v52;
    v52(v47, v48);
    sub_1000FAACC(&qword_10012A1C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    (*(v313 + 8))(v294, v299);
    v56 = sub_100102F80(v53, v55, v0 + 14);

    *(v50 + 14) = v56;
    v314 = v50;
    *(v50 + 22) = 2080;
    v57 = SyncedPhotosFace.uncached.getter();
    v58 = *(v57 + 16);
    if (v58)
    {
      v59 = v0[24];
      v0[15] = _swiftEmptyArrayStorage;
      sub_10005C508(0, v58, 0);
      v60 = v0[15];
      v61 = v57 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
      v62 = *(v59 + 72);
      v63 = *(v59 + 16);
      do
      {
        v64 = v0[24];
        v65 = v0[25];
        v66 = v0[23];
        v63(v65, v61, v66);
        StoredPhoto.localIdentifier.getter();
        (*(v64 + 8))(v65, v66);
        v0[15] = v60;
        v68 = *(v60 + 16);
        v67 = *(v60 + 24);
        if (v68 >= v67 >> 1)
        {
          sub_10005C508((v67 > 1), v68 + 1, 1);
          v60 = v0[15];
        }

        v69 = v0[91];
        v70 = v0[86];
        v71 = v0[85];
        *(v60 + 16) = v68 + 1;
        (*(v70 + 32))(v60 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v68, v69, v71);
        v61 += v62;
        --v58;
      }

      while (v58);
    }

    v144 = v0[108];
    v145 = v0[67];
    v146 = v0[52];
    v77 = v326;
    v326(v0[39], v0[26]);
    v147 = Array.description.getter();
    v149 = v148;

    v150 = sub_100102F80(v147, v149, v0 + 14);

    *(v314 + 24) = v150;
    _os_log_impl(&_mh_execute_header, v334, v318, "Caching %ld for face %s, photos = %s", v314, 0x20u);
    swift_arrayDestroy();

    v144(v145, v146);
  }

  else
  {
    v335 = v0[108];
    v72 = v0[67];
    v73 = v0[52];
    v74 = v0[40];
    v75 = v0[39];
    v76 = v0[26];
    v77 = *(v0[27] + 8);
    v77(v0[41], v76);
    v77(v75, v76);
    v77(v74, v76);

    v335(v72, v73);
  }

  v0[116] = v77;
  v0[117] = *(v0[16] + 104);
  v0[118] = SyncedPhotosFace.uncached.getter();

  return _swift_task_switch(sub_1000996FC, 0, 0);
}

uint64_t sub_100097C90()
{
  v247 = v0;
  (*(v0[46] + 8))(v0[47], v0[45]);
  v2 = v0[9];
  v3 = v0[111];
  static Log.session.getter();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "StreamError during sync: %@", v6, 0xCu);
    sub_10000C460(v7, &qword_100129EF8, &qword_100108C70);
  }

  v9 = v0[108];
  v10 = v0[66];
  v11 = v0[52];
  v12 = v0[53];

  v9(v10, v11);
  v0[122] = v3;
  v234 = v2;
  v0[121] = v2;
  v13 = v0[96];
  v14 = v0[72];
  v15 = sub_1000FAACC(&qword_10012A2B0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
  v0[123] = v15;
  v238 = v15;
  v16 = static SyncedPhotosFace.destreamify(_:)();
  v17 = swift_task_alloc();
  *v17 = v14;
  v18 = type metadata accessor for ShuffleProvider();
  v0[124] = v18;
  v214 = v18;
  v17[1] = v18;
  v17[2] = v13;
  v19 = sub_1000FAACC(&qword_10012B4C0, type metadata accessor for ShuffleProvider, &unk_100108FA4);
  v0[125] = v19;
  v213 = v19;
  v17[3] = v19;
  v20 = sub_1000FAACC(&qword_10012A438, &type metadata accessor for GalleryDatabase, &protocol conformance descriptor for GalleryDatabase);
  v0[126] = v20;
  v212 = v20;
  v17[4] = v20;
  KeyPath = swift_getKeyPath();

  v22 = *(v16 + 16);
  if (!v22)
  {
    v24 = _swiftEmptyArrayStorage;
LABEL_15:

    if (v234)
    {
      static Log.session.getter();

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = v24;
        v37 = swift_slowAlloc();
        *v37 = 134218240;
        *(v37 + 4) = v36[2];

        *(v37 + 12) = 2048;
        v38 = *(v16 + 16);

        *(v37 + 14) = v38;

        _os_log_impl(&_mh_execute_header, v34, v35, "An error occurred during sync. Only %ld / %ld finished successfully.", v37, 0x16u);
        v24 = v36;
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      (v0[108])(v0[65], v0[52]);
    }

    else
    {
    }

    v39 = v24[2];
    v1 = _swiftEmptyArrayStorage;
    v244 = v0;
    if (v39)
    {
      v40 = v0[27];
      v41 = v24 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
      v42 = *(v40 + 72);
      v43 = *(v40 + 16);
      v211 = v24;

      v224 = v42;
      v235 = v43;
      do
      {
        v241 = v1;
        v43(v0[29], v41, v0[26]);
        SyncedPhotosFace.photos.getter();
        v44 = static SyncedPhotosFace.faceChecksum(for:)();

        v45 = SyncedPhotosFace.checksum.getter();
        if (v45 < 0 || (v46 = v45, v45 == v44))
        {
          (*(v0[27] + 8))(v0[29], v0[26]);
          v43 = v235;
        }

        else
        {
          v48 = v0[28];
          v47 = v0[29];
          v49 = v0[26];
          static Log.session.getter();
          v235(v48, v47, v49);
          v50 = Logger.logObject.getter();
          v51 = static os_log_type_t.error.getter();
          v52 = os_log_type_enabled(v50, v51);
          v53 = v0[108];
          buf = v0[54];
          v225 = v0[52];
          if (v52)
          {
            v232 = v0[36];
            v218 = v51;
            v221 = v0[53] + 8;
            v222 = v39;
            loga = v50;
            v54 = v0[27];
            v55 = v0[28];
            v56 = v0[26];
            v220 = v0[108];
            v57 = swift_slowAlloc();
            v215 = swift_slowAlloc();
            v246[0] = v215;
            *v57 = 134218498;
            *(v57 + 4) = v44;
            *(v57 + 12) = 2048;
            *(v57 + 14) = v46;
            *(v57 + 22) = 2080;
            v235(v232, v55, v56);
            v58 = *(v54 + 8);
            v58(v55, v56);
            sub_10000CC24(&qword_10012A6E8, &qword_100129F30, &qword_100108D20, &protocol conformance descriptor for SyncedPhotosFace<A>);
            v59 = v232;
            v60 = dispatch thunk of CustomStringConvertible.description.getter();
            v62 = v61;
            v63 = v56;
            v39 = v222;
            v231 = v58;
            v58(v59, v63);
            v64 = sub_100102F80(v60, v62, v246);

            *(v57 + 24) = v64;
            _os_log_impl(&_mh_execute_header, loga, v218, "Validation error: actual %ld, expected %ld for face %s", v57, 0x20u);
            sub_10000C304(v215);

            v220(buf, v225);
          }

          else
          {
            v231 = *(v0[27] + 8);
            v231(v0[28], v0[26]);

            v53(buf, v225);
          }

          v65 = v0[74];
          v66 = v0;
          v67 = v0[73];
          v68 = v66[72];
          SyncedPhotosFace.id.getter();
          dispatch thunk of PhotosFaceID.id.getter();
          (*(v67 + 8))(v65, v68);
          v42 = v224;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v1 = sub_1000FFFC8(0, *(v1 + 16) + 1, 1, v1);
          }

          v43 = v235;
          v70 = *(v1 + 16);
          v69 = *(v1 + 24);
          if (v70 >= v69 >> 1)
          {
            v1 = sub_1000FFFC8((v69 > 1), v70 + 1, 1, v1);
          }

          v71 = v244[87];
          v72 = v244[86];
          v73 = v244[85];
          v231(v244[29], v244[26]);
          *(v1 + 16) = v70 + 1;
          (*(v72 + 32))(v1 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v70, v71, v73);
          v0 = v244;
        }

        v41 += v42;
        v39 = (v39 - 1);
      }

      while (v39);
      v74 = v211;
    }

    else
    {
      v74 = v24;
    }

    v0[127] = v1;
    v75 = v0[96];
    v76 = v0[72];
    v77 = swift_task_alloc();
    *v77 = v76;
    v77[1] = v214;
    v77[2] = v75;
    v77[3] = v213;
    v77[4] = v212;
    v78 = swift_getKeyPath();

    KeyPath = sub_1000F8C80(v74, v78);
    v0[128] = KeyPath;

    static Log.session.getter();
    swift_bridgeObjectRetain_n();

    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v79, v80))
    {
      v22 = v0[108];
      v96 = v0[64];
      v24 = v0[52];
      swift_bridgeObjectRelease_n();

      (v22)(v96, v24);
      goto LABEL_50;
    }

    LOBYTE(v225) = v80;
    v81 = swift_slowAlloc();
    v245 = swift_slowAlloc();
    *v81 = 134218498;
    *(v81 + 4) = *(KeyPath + 16);
    *(v81 + 12) = 2080;
    v82 = PhotosFaceType.description.getter();
    v84 = v83;

    v85 = sub_100102F80(v82, v84, &v245);

    *(v81 + 14) = v85;
    buf = v81;
    *(v81 + 22) = 2080;
    v86 = *(KeyPath + 16);
    if (!v86)
    {

      goto LABEL_49;
    }

    v221 = v79;
    v87 = v0[73];
    v241 = v0[19];
    v246[0] = _swiftEmptyArrayStorage;
    v222 = v86;
    sub_10005C54C(0, v86, 0);
    v88 = v246[0];
    v238 = (KeyPath + 64);
    v1 = _HashTable.startBucket.getter();
    v89 = v0[72];
    v91 = v0[21];
    v90 = v0[22];
    LODWORD(v23) = *(KeyPath + 36);
    sub_1000F44C8(v90, v1, v23, 0, KeyPath, &type metadata accessor for ShuffleID);
    v93 = v92;
    v94 = v90;
    v95 = *(v87 + 32);
    v95(v91, v94, v89);
    *(v91 + *(v241 + 48)) = v93;
    v12 = sub_1000E0EF8(v91, &type metadata accessor for GalleryDatabase, &qword_10012A438, &type metadata accessor for GalleryDatabase, &protocol conformance descriptor for GalleryDatabase);
    v219 = v97;
    v231 = v95;
    sub_10000C460(v0[21], &qword_10012B498, &qword_10010A270);
    v22 = *(v88 + 16);
    v25 = *(v88 + 24);
    v24 = (v22 + 1);
    if (v22 < v25 >> 1)
    {
      goto LABEL_43;
    }

    goto LABEL_101;
  }

  v23 = 0;
  v24 = _swiftEmptyArrayStorage;
  v241 = *(v16 + 16);
  v244 = v16;
  while (1)
  {
    v25 = *(v16 + 16);
    if (v23 >= v25)
    {
      break;
    }

    v26 = v0[27];
    v27 = *(v26 + 16);
    v26 += 16;
    v1 = (*(v26 + 64) + 32) & ~*(v26 + 64);
    v28 = *(v26 + 56);
    v27(v0[38], v16 + v1 + v28 * v23, v0[26]);
    swift_getAtKeyPath();
    if (*(v0 + 1260) == 1)
    {
      v29 = *(v0[27] + 32);
      v29(v0[37], v0[38], v0[26]);
      v246[0] = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10005C694(0, v24[2] + 1, 1);
        v24 = v246[0];
      }

      v12 = v24[2];
      v30 = v24[3];
      v31 = v24;
      if (v12 >= v30 >> 1)
      {
        sub_10005C694((v30 > 1), v12 + 1, 1);
        v31 = v246[0];
      }

      v32 = v0[37];
      v33 = v0[26];
      *(v31 + 16) = v12 + 1;
      v29(v31 + v1 + v12 * v28, v32, v33);
      v24 = v31;
      v22 = v241;
      v16 = v244;
    }

    else
    {
      (*(v0[27] + 8))(v0[38], v0[26]);
    }

    if (v22 == ++v23)
    {
      goto LABEL_15;
    }
  }

  while (2)
  {
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    do
    {
LABEL_100:
      __break(1u);
LABEL_101:
      sub_10005C54C((v25 > 1), v24, 1);
      v88 = v246[0];
LABEL_43:
      *(v88 + 16) = v24;
      v25 = v88 + 16 * v22;
      *(v25 + 32) = v12;
      *(v25 + 40) = v219;
      if (v1 < 0)
      {
        goto LABEL_98;
      }

      v25 = -1 << *(KeyPath + 32);
      if (v1 >= -v25)
      {
        goto LABEL_98;
      }

      if (((*(v238 + ((v1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v1) & 1) == 0)
      {
        goto LABEL_99;
      }
    }

    while (v23 != *(KeyPath + 36));
    v98 = _HashTable.occupiedBucket(after:)();
    v99 = v222 - 1;
    if (v222 != 1)
    {
      v1 = v98;
      do
      {
        v203 = v0[72];
        v205 = v0[21];
        v204 = v0[22];
        LODWORD(v23) = *(KeyPath + 36);
        sub_1000F44C8(v204, v1, v23, 0, KeyPath, &type metadata accessor for ShuffleID);
        v207 = v206;
        (v231)(v205, v204, v203);
        *(v205 + *(v241 + 48)) = v207;
        v208 = sub_1000E0EF8(v205, &type metadata accessor for GalleryDatabase, &qword_10012A438, &type metadata accessor for GalleryDatabase, &protocol conformance descriptor for GalleryDatabase);
        v12 = v209;
        sub_10000C460(v0[21], &qword_10012B498, &qword_10010A270);
        v246[0] = v88;
        v22 = *(v88 + 16);
        v210 = *(v88 + 24);
        v24 = (v22 + 1);
        if (v22 >= v210 >> 1)
        {
          sub_10005C54C((v210 > 1), v22 + 1, 1);
          v88 = v246[0];
        }

        *(v88 + 16) = v24;
        v25 = v88 + 16 * v22;
        *(v25 + 32) = v208;
        *(v25 + 40) = v12;
        if (v1 < 0)
        {
          goto LABEL_98;
        }

        v25 = -1 << *(KeyPath + 32);
        if (v1 >= -v25)
        {
          goto LABEL_98;
        }

        if (((*(v238 + ((v1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v1) & 1) == 0)
        {
          goto LABEL_99;
        }

        if (v23 != *(KeyPath + 36))
        {
          goto LABEL_100;
        }

        v1 = _HashTable.occupiedBucket(after:)();
      }

      while (--v99);
    }

    v79 = v221;
LABEL_49:
    v100 = v0[108];
    v24 = v0[64];
    v101 = v0[52];
    v1 = v0[53] + 8;
    v102 = Array.description.getter();
    v22 = v103;

    v104 = sub_100102F80(v102, v22, &v245);

    *(buf + 3) = v104;
    _os_log_impl(&_mh_execute_header, v79, v225, "Received %ld %s: %s", buf, 0x20u);
    swift_arrayDestroy();

    v100(v24, v101);
LABEL_50:
    log = (v0 + 125);
    v105 = *(KeyPath + 32);
    *(v0 + 1262) = v105;
    v106 = 1 << v105;
    if (v106 < 64)
    {
      v107 = ~(-1 << v106);
    }

    else
    {
      v107 = -1;
    }

    v12 = v107 & *(KeyPath + 64);

    v23 = 0;
    v219 = 136315138;
    if (!v12)
    {
LABEL_57:
      v25 = ((1 << *(v0 + 1262)) + 63) >> 6;
      if (v25 <= (v23 + 1))
      {
        v111 = v23 + 1;
      }

      else
      {
        v111 = ((1 << *(v0 + 1262)) + 63) >> 6;
      }

      v112 = v111 - 1;
      while (1)
      {
        v113 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v113 >= v25)
        {
          (*(v0[20] + 56))(v0[17], 1, 1, v0[19]);
          v12 = 0;
          goto LABEL_66;
        }

        v22 = v0[128];
        v12 = *(v22 + 8 * v113 + 64);
        ++v23;
        if (v12)
        {
          v23 = v113;
          goto LABEL_65;
        }
      }

      __break(1u);
      continue;
    }

    break;
  }

  while (1)
  {
    v22 = v0[128];
LABEL_65:
    v114 = v0[84];
    v115 = v0[73];
    v116 = v0[72];
    v117 = v0[20];
    v118 = v244[19];
    v119 = v244[17];
    v120 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v121 = v120 | (v23 << 6);
    (*(v115 + 16))(v114, *(v22 + 48) + *(v115 + 72) * v121, v116);
    v122 = *(*(v22 + 56) + 8 * v121);
    v123 = *(v118 + 48);
    (*(v115 + 32))(v119, v114, v116);
    *(v119 + v123) = v122;
    v124 = v118;
    v0 = v244;
    (*(v117 + 56))(v119, 0, 1, v124);

    v112 = v23;
LABEL_66:
    v0[130] = v112;
    v0[129] = v12;
    v125 = v0;
    v126 = v0[20];
    v127 = v125[18];
    v128 = v125[19];
    sub_10005DD90(v125[17], v127, &qword_10012B490, &qword_10010A268);
    if ((*(v126 + 48))(v127, 1, v128) == 1)
    {
      break;
    }

    v129 = v125[83];
    v130 = v125[73];
    v131 = *(v125[18] + *(v125[19] + 48));
    v125[131] = v131;
    (*(v130 + 32))(v129);
    v132 = v125[83];
    v0 = v125;
    if (*(v131 + 16))
    {
      v149 = v125[81];
      v150 = v125[73];
      v151 = v125[72];
      static Log.session.getter();
      v152 = *(v150 + 16);
      v0[134] = v152;
      v0[135] = (v150 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v152(v149, v132, v151);
      swift_bridgeObjectRetain_n();

      v153 = Logger.logObject.getter();
      v154 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v153, v154))
      {
        v233 = v154;
        v242 = v0[124];
        v237 = v153;
        v239 = v0[96];
        v155 = v0[84];
        v226 = v0[81];
        bufb = v0[73];
        v156 = v0[72];
        v223 = *&log->isa;
        v157 = swift_slowAlloc();
        v0[11] = swift_slowAlloc();
        *v157 = 136315650;
        v158 = PhotosFaceType.description.getter();
        v160 = v159;

        v161 = sub_100102F80(v158, v160, v0 + 11);

        *(v157 + 4) = v161;
        v162 = v0;
        *(v157 + 12) = 2080;
        v152(v155, v226, v156);
        v163 = *(bufb + 1);
        v163(v226, v156);
        sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
        v164 = dispatch thunk of CustomStringConvertible.description.getter();
        v166 = v165;
        v227 = v163;
        v163(v155, v156);
        v167 = sub_100102F80(v164, v166, v0 + 11);

        *(v157 + 14) = v167;
        bufa = v157;
        *(v157 + 22) = 2080;
        v168 = swift_task_alloc();
        *v168 = v156;
        *(v168 + 8) = v242;
        *(v168 + 16) = v239;
        *(v168 + 24) = v223;
        v169 = swift_getKeyPath();

        v170 = *(v131 + 16);
        if (v170)
        {
          v171 = v0[27];
          v162[12] = _swiftEmptyArrayStorage;
          sub_10005C54C(0, v170, 0);
          v172 = v162[12];
          v173 = v162;
          v174 = v131 + ((*(v171 + 80) + 32) & ~*(v171 + 80));
          v240 = *(v171 + 16);
          v243 = *(v171 + 72);
          v0 = v173;
          do
          {
            v175 = v0[36];
            v176 = v244[27];
            v177 = v244[26];
            v240(v175, v174, v177);
            v178 = v169;
            swift_getAtKeyPath();
            v179 = v244[7];
            v180 = v244[8];
            (*(v176 + 8))(v175, v177);
            v0 = v244;
            v244[12] = v172;
            v182 = *(v172 + 16);
            v181 = *(v172 + 24);
            if (v182 >= v181 >> 1)
            {
              sub_10005C54C((v181 > 1), v182 + 1, 1);
              v172 = v244[12];
            }

            *(v172 + 16) = v182 + 1;
            v183 = v172 + 16 * v182;
            *(v183 + 32) = v179;
            *(v183 + 40) = v180;
            v174 += v243;
            --v170;
            v169 = v178;
          }

          while (v170);
        }

        v192 = v0[108];
        v193 = v0[62];
        v194 = v0[52];
        v195 = Array.description.getter();
        v197 = v196;

        v198 = sub_100102F80(v195, v197, v0 + 11);

        *(bufa + 3) = v198;
        _os_log_impl(&_mh_execute_header, v237, v233, "Inserting %s %s: %s", bufa, 0x20u);
        swift_arrayDestroy();

        v192(v193, v194);
        v191 = v227;
      }

      else
      {
        v184 = v244[108];
        v185 = v244[81];
        v186 = v244[73];
        v187 = v244[72];
        v188 = v244[62];
        v189 = v244[52];

        v190 = v185;
        v191 = *(v186 + 8);
        v191(v190, v187);

        v184(v188, v189);
        v0 = v244;
      }

      v0[136] = v191;
      v199 = swift_task_alloc();
      v0[137] = v199;
      *v199 = v0;
      v199[1] = sub_10009B6A0;
      v200 = v0[126];
      v201 = v0[96];
      v202 = v0[83];

      return dispatch thunk of PhotosFaceIDDatabase.insert(id:)(v202, v201, v200);
    }

    v133 = v125[82];
    v134 = v125[73];
    v135 = v125[72];

    static Log.session.getter();
    v1 = *(v134 + 16);
    (v1)(v133, v132, v135);
    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.error.getter();
    v241 = v136;
    v138 = os_log_type_enabled(v136, v137);
    v238 = v0[108];
    if (v138)
    {
      v139 = v0[84];
      v231 = v0[83];
      v236 = v112;
      v140 = v0[82];
      v141 = v0[73];
      v22 = v0[72];
      v225 = v0[52];
      buf = v0[63];
      LODWORD(v221) = v137;
      KeyPath = swift_slowAlloc();
      v222 = swift_slowAlloc();
      v246[0] = v222;
      *KeyPath = 136315138;
      (v1)(v139, v140, v22);
      v142 = *(v141 + 8);
      v142(v140, v22);
      sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
      v143 = dispatch thunk of CustomStringConvertible.description.getter();
      v145 = v144;
      v142(v139, v22);
      v146 = sub_100102F80(v143, v145, v246);

      *(KeyPath + 4) = v146;
      _os_log_impl(&_mh_execute_header, v241, v221, "There are no valid synced faces per day for %s; skipping", KeyPath, 0xCu);
      v24 = v222;
      sub_10000C304(v222);

      v238(buf, v225);
      v142(v231, v22);
      v23 = v236;
      if (!v12)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v108 = v0[83];
      KeyPath = v244[72];
      v24 = v244[63];
      v109 = v244[52];
      v22 = v244[53] + 8;
      v110 = *(v244[73] + 8);
      v110(v0[82], KeyPath);

      v238(v24, v109);
      v110(v108, KeyPath);
      v0 = v244;
      v23 = v112;
      if (!v12)
      {
        goto LABEL_57;
      }
    }
  }

  v147 = swift_task_alloc();
  v125[132] = v147;
  *v147 = v125;
  v147[1] = sub_10009B570;

  return sub_10006254C();
}

uint64_t sub_1000996FC()
{
  v0[13] = v0[118];
  v1 = swift_task_alloc();
  v0[119] = v1;
  v2 = sub_10000560C(&qword_10012B4D0, &qword_10010A358);
  v3 = sub_10000CC24(&qword_10012B4D8, &qword_10012B4D0, &qword_10010A358, &protocol conformance descriptor for [A]);
  *v1 = v0;
  v1[1] = sub_100099818;
  v4 = v0[117];
  v5 = v0[23];

  return Sequence.asyncMap<A>(predicate:)(&unk_10010A350, v4, v2, v5, v3);
}

uint64_t sub_100099818(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 960) = v1;

  if (v1)
  {
    v4 = sub_100099A78;
    v5 = 0;
    v6 = 0;
  }

  else
  {

    v6 = *(v3 + 824);
    v5 = *(v3 + 816);
    v4 = sub_100099958;
  }

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100099958()
{
  (*(v0 + 928))(*(v0 + 344), *(v0 + 208));
  *(v0 + 888) = *(v0 + 920);
  v1 = *(v0 + 808);
  v2 = static CommunicationActor.shared.getter();
  *(v0 + 896) = v2;
  v3 = sub_10000CC24(&qword_10012B4B8, &qword_10012B4A0, &qword_10010A278, &protocol conformance descriptor for AsyncThrowingMapSequence<A, B>.Iterator);
  v4 = swift_task_alloc();
  *(v0 + 904) = v4;
  *v4 = v0;
  v4[1] = sub_100095C88;
  v5 = *(v0 + 352);
  v6 = *(v0 + 360);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v5, v2, v1, v0 + 72, v6, v3);
}

uint64_t sub_100099A78()
{

  v1 = *(v0 + 824);
  v2 = *(v0 + 816);

  return _swift_task_switch(sub_100099AE0, v2, v1);
}

uint64_t sub_100099AE0()
{
  v250 = v0;
  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[45];
  (v0[116])(v0[43], v0[26]);
  (*(v3 + 8))(v2, v4);
  v5 = v0[120];
  v6 = v0[115];
  static Log.session.getter();
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "StreamError during sync: %@", v9, 0xCu);
    sub_10000C460(v10, &qword_100129EF8, &qword_100108C70);
  }

  v12 = v0[108];
  v13 = v0[66];
  v14 = v0[52];
  v15 = v0[53];

  v12(v13, v14);
  v0[122] = v6;
  v237 = v5;
  v0[121] = v5;
  v16 = v0[96];
  v17 = v0[72];
  v18 = sub_1000FAACC(&qword_10012A2B0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
  v0[123] = v18;
  v241 = v18;
  v19 = static SyncedPhotosFace.destreamify(_:)();
  v20 = swift_task_alloc();
  *v20 = v17;
  v21 = type metadata accessor for ShuffleProvider();
  v0[124] = v21;
  v217 = v21;
  v20[1] = v21;
  v20[2] = v16;
  v22 = sub_1000FAACC(&qword_10012B4C0, type metadata accessor for ShuffleProvider, &unk_100108FA4);
  v0[125] = v22;
  v216 = v22;
  v20[3] = v22;
  v23 = sub_1000FAACC(&qword_10012A438, &type metadata accessor for GalleryDatabase, &protocol conformance descriptor for GalleryDatabase);
  v0[126] = v23;
  v215 = v23;
  v20[4] = v23;
  KeyPath = swift_getKeyPath();

  v25 = *(v19 + 16);
  if (!v25)
  {
    v27 = _swiftEmptyArrayStorage;
LABEL_15:

    if (v237)
    {
      static Log.session.getter();

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = v27;
        v40 = swift_slowAlloc();
        *v40 = 134218240;
        *(v40 + 4) = v39[2];

        *(v40 + 12) = 2048;
        v41 = *(v19 + 16);

        *(v40 + 14) = v41;

        _os_log_impl(&_mh_execute_header, v37, v38, "An error occurred during sync. Only %ld / %ld finished successfully.", v40, 0x16u);
        v27 = v39;
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      (v0[108])(v0[65], v0[52]);
    }

    else
    {
    }

    v42 = v27[2];
    v1 = _swiftEmptyArrayStorage;
    v247 = v0;
    if (v42)
    {
      v43 = v0[27];
      v44 = v27 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
      v45 = *(v43 + 72);
      v46 = *(v43 + 16);
      v214 = v27;

      v227 = v45;
      v238 = v46;
      do
      {
        v244 = v1;
        v46(v0[29], v44, v0[26]);
        SyncedPhotosFace.photos.getter();
        v47 = static SyncedPhotosFace.faceChecksum(for:)();

        v48 = SyncedPhotosFace.checksum.getter();
        if (v48 < 0 || (v49 = v48, v48 == v47))
        {
          (*(v0[27] + 8))(v0[29], v0[26]);
          v46 = v238;
        }

        else
        {
          v51 = v0[28];
          v50 = v0[29];
          v52 = v0[26];
          static Log.session.getter();
          v238(v51, v50, v52);
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.error.getter();
          v55 = os_log_type_enabled(v53, v54);
          v56 = v0[108];
          buf = v0[54];
          v228 = v0[52];
          if (v55)
          {
            v235 = v0[36];
            v221 = v54;
            v224 = v0[53] + 8;
            v225 = v42;
            loga = v53;
            v57 = v0[27];
            v58 = v0[28];
            v59 = v0[26];
            v223 = v0[108];
            v60 = swift_slowAlloc();
            v218 = swift_slowAlloc();
            v249[0] = v218;
            *v60 = 134218498;
            *(v60 + 4) = v47;
            *(v60 + 12) = 2048;
            *(v60 + 14) = v49;
            *(v60 + 22) = 2080;
            v238(v235, v58, v59);
            v61 = *(v57 + 8);
            v61(v58, v59);
            sub_10000CC24(&qword_10012A6E8, &qword_100129F30, &qword_100108D20, &protocol conformance descriptor for SyncedPhotosFace<A>);
            v62 = v235;
            v63 = dispatch thunk of CustomStringConvertible.description.getter();
            v65 = v64;
            v66 = v59;
            v42 = v225;
            v234 = v61;
            v61(v62, v66);
            v67 = sub_100102F80(v63, v65, v249);

            *(v60 + 24) = v67;
            _os_log_impl(&_mh_execute_header, loga, v221, "Validation error: actual %ld, expected %ld for face %s", v60, 0x20u);
            sub_10000C304(v218);

            v223(buf, v228);
          }

          else
          {
            v234 = *(v0[27] + 8);
            v234(v0[28], v0[26]);

            v56(buf, v228);
          }

          v68 = v0[74];
          v69 = v0;
          v70 = v0[73];
          v71 = v69[72];
          SyncedPhotosFace.id.getter();
          dispatch thunk of PhotosFaceID.id.getter();
          (*(v70 + 8))(v68, v71);
          v45 = v227;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v1 = sub_1000FFFC8(0, *(v1 + 16) + 1, 1, v1);
          }

          v46 = v238;
          v73 = *(v1 + 16);
          v72 = *(v1 + 24);
          if (v73 >= v72 >> 1)
          {
            v1 = sub_1000FFFC8((v72 > 1), v73 + 1, 1, v1);
          }

          v74 = v247[87];
          v75 = v247[86];
          v76 = v247[85];
          v234(v247[29], v247[26]);
          *(v1 + 16) = v73 + 1;
          (*(v75 + 32))(v1 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v73, v74, v76);
          v0 = v247;
        }

        v44 += v45;
        v42 = (v42 - 1);
      }

      while (v42);
      v77 = v214;
    }

    else
    {
      v77 = v27;
    }

    v0[127] = v1;
    v78 = v0[96];
    v79 = v0[72];
    v80 = swift_task_alloc();
    *v80 = v79;
    v80[1] = v217;
    v80[2] = v78;
    v80[3] = v216;
    v80[4] = v215;
    v81 = swift_getKeyPath();

    KeyPath = sub_1000F8C80(v77, v81);
    v0[128] = KeyPath;

    static Log.session.getter();
    swift_bridgeObjectRetain_n();

    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v82, v83))
    {
      v25 = v0[108];
      v99 = v0[64];
      v27 = v0[52];
      swift_bridgeObjectRelease_n();

      (v25)(v99, v27);
      goto LABEL_50;
    }

    LOBYTE(v228) = v83;
    v84 = swift_slowAlloc();
    v248 = swift_slowAlloc();
    *v84 = 134218498;
    *(v84 + 4) = *(KeyPath + 16);
    *(v84 + 12) = 2080;
    v85 = PhotosFaceType.description.getter();
    v87 = v86;

    v88 = sub_100102F80(v85, v87, &v248);

    *(v84 + 14) = v88;
    buf = v84;
    *(v84 + 22) = 2080;
    v89 = *(KeyPath + 16);
    if (!v89)
    {

      goto LABEL_49;
    }

    v224 = v82;
    v90 = v0[73];
    v244 = v0[19];
    v249[0] = _swiftEmptyArrayStorage;
    v225 = v89;
    sub_10005C54C(0, v89, 0);
    v91 = v249[0];
    v241 = (KeyPath + 64);
    v1 = _HashTable.startBucket.getter();
    v92 = v0[72];
    v94 = v0[21];
    v93 = v0[22];
    LODWORD(v26) = *(KeyPath + 36);
    sub_1000F44C8(v93, v1, v26, 0, KeyPath, &type metadata accessor for ShuffleID);
    v96 = v95;
    v97 = v93;
    v98 = *(v90 + 32);
    v98(v94, v97, v92);
    *(v94 + *(v244 + 48)) = v96;
    v15 = sub_1000E0EF8(v94, &type metadata accessor for GalleryDatabase, &qword_10012A438, &type metadata accessor for GalleryDatabase, &protocol conformance descriptor for GalleryDatabase);
    v222 = v100;
    v234 = v98;
    sub_10000C460(v0[21], &qword_10012B498, &qword_10010A270);
    v25 = *(v91 + 16);
    v28 = *(v91 + 24);
    v27 = (v25 + 1);
    if (v25 < v28 >> 1)
    {
      goto LABEL_43;
    }

    goto LABEL_101;
  }

  v26 = 0;
  v27 = _swiftEmptyArrayStorage;
  v244 = *(v19 + 16);
  v247 = v19;
  while (1)
  {
    v28 = *(v19 + 16);
    if (v26 >= v28)
    {
      break;
    }

    v29 = v0[27];
    v30 = *(v29 + 16);
    v29 += 16;
    v1 = (*(v29 + 64) + 32) & ~*(v29 + 64);
    v31 = *(v29 + 56);
    v30(v0[38], v19 + v1 + v31 * v26, v0[26]);
    swift_getAtKeyPath();
    if (*(v0 + 1260) == 1)
    {
      v32 = *(v0[27] + 32);
      v32(v0[37], v0[38], v0[26]);
      v249[0] = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10005C694(0, v27[2] + 1, 1);
        v27 = v249[0];
      }

      v15 = v27[2];
      v33 = v27[3];
      v34 = v27;
      if (v15 >= v33 >> 1)
      {
        sub_10005C694((v33 > 1), v15 + 1, 1);
        v34 = v249[0];
      }

      v35 = v0[37];
      v36 = v0[26];
      *(v34 + 16) = v15 + 1;
      v32(v34 + v1 + v15 * v31, v35, v36);
      v27 = v34;
      v25 = v244;
      v19 = v247;
    }

    else
    {
      (*(v0[27] + 8))(v0[38], v0[26]);
    }

    if (v25 == ++v26)
    {
      goto LABEL_15;
    }
  }

  while (2)
  {
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    do
    {
LABEL_100:
      __break(1u);
LABEL_101:
      sub_10005C54C((v28 > 1), v27, 1);
      v91 = v249[0];
LABEL_43:
      *(v91 + 16) = v27;
      v28 = v91 + 16 * v25;
      *(v28 + 32) = v15;
      *(v28 + 40) = v222;
      if (v1 < 0)
      {
        goto LABEL_98;
      }

      v28 = -1 << *(KeyPath + 32);
      if (v1 >= -v28)
      {
        goto LABEL_98;
      }

      if (((*(v241 + ((v1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v1) & 1) == 0)
      {
        goto LABEL_99;
      }
    }

    while (v26 != *(KeyPath + 36));
    v101 = _HashTable.occupiedBucket(after:)();
    v102 = v225 - 1;
    if (v225 != 1)
    {
      v1 = v101;
      do
      {
        v206 = v0[72];
        v208 = v0[21];
        v207 = v0[22];
        LODWORD(v26) = *(KeyPath + 36);
        sub_1000F44C8(v207, v1, v26, 0, KeyPath, &type metadata accessor for ShuffleID);
        v210 = v209;
        (v234)(v208, v207, v206);
        *(v208 + *(v244 + 48)) = v210;
        v211 = sub_1000E0EF8(v208, &type metadata accessor for GalleryDatabase, &qword_10012A438, &type metadata accessor for GalleryDatabase, &protocol conformance descriptor for GalleryDatabase);
        v15 = v212;
        sub_10000C460(v0[21], &qword_10012B498, &qword_10010A270);
        v249[0] = v91;
        v25 = *(v91 + 16);
        v213 = *(v91 + 24);
        v27 = (v25 + 1);
        if (v25 >= v213 >> 1)
        {
          sub_10005C54C((v213 > 1), v25 + 1, 1);
          v91 = v249[0];
        }

        *(v91 + 16) = v27;
        v28 = v91 + 16 * v25;
        *(v28 + 32) = v211;
        *(v28 + 40) = v15;
        if (v1 < 0)
        {
          goto LABEL_98;
        }

        v28 = -1 << *(KeyPath + 32);
        if (v1 >= -v28)
        {
          goto LABEL_98;
        }

        if (((*(v241 + ((v1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v1) & 1) == 0)
        {
          goto LABEL_99;
        }

        if (v26 != *(KeyPath + 36))
        {
          goto LABEL_100;
        }

        v1 = _HashTable.occupiedBucket(after:)();
      }

      while (--v102);
    }

    v82 = v224;
LABEL_49:
    v103 = v0[108];
    v27 = v0[64];
    v104 = v0[52];
    v1 = v0[53] + 8;
    v105 = Array.description.getter();
    v25 = v106;

    v107 = sub_100102F80(v105, v25, &v248);

    *(buf + 3) = v107;
    _os_log_impl(&_mh_execute_header, v82, v228, "Received %ld %s: %s", buf, 0x20u);
    swift_arrayDestroy();

    v103(v27, v104);
LABEL_50:
    log = (v0 + 125);
    v108 = *(KeyPath + 32);
    *(v0 + 1262) = v108;
    v109 = 1 << v108;
    if (v109 < 64)
    {
      v110 = ~(-1 << v109);
    }

    else
    {
      v110 = -1;
    }

    v15 = v110 & *(KeyPath + 64);

    v26 = 0;
    v222 = 136315138;
    if (!v15)
    {
LABEL_57:
      v28 = ((1 << *(v0 + 1262)) + 63) >> 6;
      if (v28 <= (v26 + 1))
      {
        v114 = v26 + 1;
      }

      else
      {
        v114 = ((1 << *(v0 + 1262)) + 63) >> 6;
      }

      v115 = v114 - 1;
      while (1)
      {
        v116 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v116 >= v28)
        {
          (*(v0[20] + 56))(v0[17], 1, 1, v0[19]);
          v15 = 0;
          goto LABEL_66;
        }

        v25 = v0[128];
        v15 = *(v25 + 8 * v116 + 64);
        ++v26;
        if (v15)
        {
          v26 = v116;
          goto LABEL_65;
        }
      }

      __break(1u);
      continue;
    }

    break;
  }

  while (1)
  {
    v25 = v0[128];
LABEL_65:
    v117 = v0[84];
    v118 = v0[73];
    v119 = v0[72];
    v120 = v0[20];
    v121 = v247[19];
    v122 = v247[17];
    v123 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v124 = v123 | (v26 << 6);
    (*(v118 + 16))(v117, *(v25 + 48) + *(v118 + 72) * v124, v119);
    v125 = *(*(v25 + 56) + 8 * v124);
    v126 = *(v121 + 48);
    (*(v118 + 32))(v122, v117, v119);
    *(v122 + v126) = v125;
    v127 = v121;
    v0 = v247;
    (*(v120 + 56))(v122, 0, 1, v127);

    v115 = v26;
LABEL_66:
    v0[130] = v115;
    v0[129] = v15;
    v128 = v0;
    v129 = v0[20];
    v130 = v128[18];
    v131 = v128[19];
    sub_10005DD90(v128[17], v130, &qword_10012B490, &qword_10010A268);
    if ((*(v129 + 48))(v130, 1, v131) == 1)
    {
      break;
    }

    v132 = v128[83];
    v133 = v128[73];
    v134 = *(v128[18] + *(v128[19] + 48));
    v128[131] = v134;
    (*(v133 + 32))(v132);
    v135 = v128[83];
    v0 = v128;
    if (*(v134 + 16))
    {
      v152 = v128[81];
      v153 = v128[73];
      v154 = v128[72];
      static Log.session.getter();
      v155 = *(v153 + 16);
      v0[134] = v155;
      v0[135] = (v153 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v155(v152, v135, v154);
      swift_bridgeObjectRetain_n();

      v156 = Logger.logObject.getter();
      v157 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v156, v157))
      {
        v236 = v157;
        v245 = v0[124];
        v240 = v156;
        v242 = v0[96];
        v158 = v0[84];
        v229 = v0[81];
        bufb = v0[73];
        v159 = v0[72];
        v226 = *&log->isa;
        v160 = swift_slowAlloc();
        v0[11] = swift_slowAlloc();
        *v160 = 136315650;
        v161 = PhotosFaceType.description.getter();
        v163 = v162;

        v164 = sub_100102F80(v161, v163, v0 + 11);

        *(v160 + 4) = v164;
        v165 = v0;
        *(v160 + 12) = 2080;
        v155(v158, v229, v159);
        v166 = *(bufb + 1);
        v166(v229, v159);
        sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
        v167 = dispatch thunk of CustomStringConvertible.description.getter();
        v169 = v168;
        v230 = v166;
        v166(v158, v159);
        v170 = sub_100102F80(v167, v169, v0 + 11);

        *(v160 + 14) = v170;
        bufa = v160;
        *(v160 + 22) = 2080;
        v171 = swift_task_alloc();
        *v171 = v159;
        *(v171 + 8) = v245;
        *(v171 + 16) = v242;
        *(v171 + 24) = v226;
        v172 = swift_getKeyPath();

        v173 = *(v134 + 16);
        if (v173)
        {
          v174 = v0[27];
          v165[12] = _swiftEmptyArrayStorage;
          sub_10005C54C(0, v173, 0);
          v175 = v165[12];
          v176 = v165;
          v177 = v134 + ((*(v174 + 80) + 32) & ~*(v174 + 80));
          v243 = *(v174 + 16);
          v246 = *(v174 + 72);
          v0 = v176;
          do
          {
            v178 = v0[36];
            v179 = v247[27];
            v180 = v247[26];
            v243(v178, v177, v180);
            v181 = v172;
            swift_getAtKeyPath();
            v182 = v247[7];
            v183 = v247[8];
            (*(v179 + 8))(v178, v180);
            v0 = v247;
            v247[12] = v175;
            v185 = *(v175 + 16);
            v184 = *(v175 + 24);
            if (v185 >= v184 >> 1)
            {
              sub_10005C54C((v184 > 1), v185 + 1, 1);
              v175 = v247[12];
            }

            *(v175 + 16) = v185 + 1;
            v186 = v175 + 16 * v185;
            *(v186 + 32) = v182;
            *(v186 + 40) = v183;
            v177 += v246;
            --v173;
            v172 = v181;
          }

          while (v173);
        }

        v195 = v0[108];
        v196 = v0[62];
        v197 = v0[52];
        v198 = Array.description.getter();
        v200 = v199;

        v201 = sub_100102F80(v198, v200, v0 + 11);

        *(bufa + 3) = v201;
        _os_log_impl(&_mh_execute_header, v240, v236, "Inserting %s %s: %s", bufa, 0x20u);
        swift_arrayDestroy();

        v195(v196, v197);
        v194 = v230;
      }

      else
      {
        v187 = v247[108];
        v188 = v247[81];
        v189 = v247[73];
        v190 = v247[72];
        v191 = v247[62];
        v192 = v247[52];

        v193 = v188;
        v194 = *(v189 + 8);
        v194(v193, v190);

        v187(v191, v192);
        v0 = v247;
      }

      v0[136] = v194;
      v202 = swift_task_alloc();
      v0[137] = v202;
      *v202 = v0;
      v202[1] = sub_10009B6A0;
      v203 = v0[126];
      v204 = v0[96];
      v205 = v0[83];

      return dispatch thunk of PhotosFaceIDDatabase.insert(id:)(v205, v204, v203);
    }

    v136 = v128[82];
    v137 = v128[73];
    v138 = v128[72];

    static Log.session.getter();
    v1 = *(v137 + 16);
    (v1)(v136, v135, v138);
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.error.getter();
    v244 = v139;
    v141 = os_log_type_enabled(v139, v140);
    v241 = v0[108];
    if (v141)
    {
      v142 = v0[84];
      v234 = v0[83];
      v239 = v115;
      v143 = v0[82];
      v144 = v0[73];
      v25 = v0[72];
      v228 = v0[52];
      buf = v0[63];
      LODWORD(v224) = v140;
      KeyPath = swift_slowAlloc();
      v225 = swift_slowAlloc();
      v249[0] = v225;
      *KeyPath = 136315138;
      (v1)(v142, v143, v25);
      v145 = *(v144 + 8);
      v145(v143, v25);
      sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
      v146 = dispatch thunk of CustomStringConvertible.description.getter();
      v148 = v147;
      v145(v142, v25);
      v149 = sub_100102F80(v146, v148, v249);

      *(KeyPath + 4) = v149;
      _os_log_impl(&_mh_execute_header, v244, v224, "There are no valid synced faces per day for %s; skipping", KeyPath, 0xCu);
      v27 = v225;
      sub_10000C304(v225);

      v241(buf, v228);
      v145(v234, v25);
      v26 = v239;
      if (!v15)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v111 = v0[83];
      KeyPath = v247[72];
      v27 = v247[63];
      v112 = v247[52];
      v25 = v247[53] + 8;
      v113 = *(v247[73] + 8);
      v113(v0[82], KeyPath);

      v241(v27, v112);
      v113(v111, KeyPath);
      v0 = v247;
      v26 = v115;
      if (!v15)
      {
        goto LABEL_57;
      }
    }
  }

  v150 = swift_task_alloc();
  v128[132] = v150;
  *v150 = v128;
  v150[1] = sub_10009B570;

  return sub_10006254C();
}

uint64_t sub_10009B570()
{
  v2 = *v1;
  *(*v1 + 1064) = v0;

  if (v0)
  {

    v3 = *(v2 + 824);
    v4 = *(v2 + 816);
    v5 = sub_1000FBE18;
  }

  else
  {
    v3 = *(v2 + 824);
    v4 = *(v2 + 816);
    v5 = sub_1000FBEE4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10009B6A0()
{
  v2 = *v1;
  *(*v1 + 1104) = v0;

  if (v0)
  {

    v3 = *(v2 + 824);
    v4 = *(v2 + 816);
    v5 = sub_10009C2A0;
  }

  else
  {
    v3 = *(v2 + 824);
    v4 = *(v2 + 816);
    v5 = sub_10009B7C4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10009B7C4()
{
  v120 = v0;
  v1 = *(v0 + 1048);
  *(v0 + 1112) = sub_1000F90B4(v1);
  v2 = *(v1 + 16);
  *(v0 + 1120) = v2;
  if (!v2)
  {
LABEL_15:

    dispatch thunk of PhotosFaceID.id.getter();
    v58 = swift_task_alloc();
    *(v0 + 1128) = v58;
    *v58 = v0;
    v58[1] = sub_10009D018;
    v59 = *(v0 + 776);
    v60 = *(v0 + 768);
    v61 = *(v0 + 720);

    return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(v61, v60, v59);
  }

  *(v0 + 1256) = *(*(v0 + 216) + 80);
  *(v0 + 1184) = 0;
  v3 = *(v0 + 1048);
  if (!*(v3 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = 0;
  while (1)
  {
    v112 = *(v0 + 1072);
    v109 = *(v0 + 664);
    v5 = *(v0 + 608);
    v6 = *(v0 + 576);
    v8 = *(v0 + 272);
    v7 = *(v0 + 280);
    v9 = *(v0 + 264);
    v114 = *(v0 + 256);
    v11 = *(v0 + 208);
    v10 = *(v0 + 216);
    v12 = *(v10 + 16);
    v12(v7, v3 + ((*(v0 + 1256) + 32) & ~*(v0 + 1256)) + *(v10 + 72) * v4, v11);
    static Log.session.getter();
    v12(v8, v7, v11);
    v112(v5, v109, v6);
    v12(v9, v7, v11);
    v110 = v12;
    v12(v114, v7, v11);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    v117 = v13;
    v15 = os_log_type_enabled(v13, v14);
    v115 = *(v0 + 1088);
    if (v15)
    {
      v16 = *(v0 + 736);
      v96 = *(v0 + 680);
      v17 = *(v0 + 608);
      v18 = *(v0 + 576);
      v106 = *(v0 + 456);
      v107 = *(v0 + 864);
      v104 = *(v0 + 416);
      v19 = *(v0 + 272);
      v97 = *(v0 + 688);
      v98 = *(v0 + 264);
      v99 = *(v0 + 256);
      v20 = *(v0 + 208);
      v21 = *(v0 + 216);
      type = v14;
      v22 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      *v22 = 134218754;
      v23 = *(SyncedPhotosFace.photos.getter() + 16);

      v24 = *(v21 + 8);
      v24(v19, v20);
      *(v22 + 4) = v23;
      *(v22 + 12) = 2080;
      dispatch thunk of PhotosFaceID.id.getter();
      v115(v17, v18);
      sub_1000FAACC(&qword_10012A1C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v97 + 8))(v16, v96);
      v28 = sub_100102F80(v25, v27, &v119);

      *(v22 + 14) = v28;
      *(v22 + 22) = 2048;
      v29 = SyncedPhotosFace.day.getter();
      v24(v98, v20);
      *(v22 + 24) = v29;
      *(v22 + 32) = 2080;
      SyncedPhotosFace.photos.getter();
      v24(v99, v20);
      v30 = Array.description.getter();
      v32 = v31;

      v33 = sub_100102F80(v30, v32, &v119);

      *(v22 + 34) = v33;
      _os_log_impl(&_mh_execute_header, v117, type, "Relating %ld photos for face %s on day %ld, photos = %s", v22, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v34 = *(v0 + 608);
      v35 = *(v0 + 576);
      v106 = *(v0 + 456);
      v107 = *(v0 + 864);
      v104 = *(v0 + 416);
      v36 = *(v0 + 272);
      v37 = *(v0 + 256);
      v38 = *(v0 + 208);
      v24 = *(*(v0 + 216) + 8);
      v24(*(v0 + 264), v38);
      v24(v36, v38);
      v24(v37, v38);
      v115(v34, v35);
    }

    v107(v106, v104);
    *(v0 + 1192) = v24;
    v39 = *(v0 + 1112);
    v40 = SyncedPhotosFace.day.getter();
    if (*(v39 + 16))
    {
      v41 = sub_100057BD0(v40);
      if (v42)
      {
        break;
      }
    }

    v43 = *(v0 + 280);
    v44 = *(v0 + 248);
    v45 = *(v0 + 208);
    static Log.session.getter();
    v110(v44, v43, v45);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 248);
    v50 = *(v0 + 208);
    if (v48)
    {
      v51 = swift_slowAlloc();
      *v51 = 134217984;
      v52 = SyncedPhotosFace.day.getter();
      v24(v49, v50);
      *(v51 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v46, v47, "Cannot find the true day for day %ld; skipping", v51, 0xCu);
    }

    else
    {
      v24(*(v0 + 248), *(v0 + 208));
    }

    v53 = *(v0 + 864);
    v54 = *(v0 + 448);
    v55 = *(v0 + 416);

    v53(v54, v55);
    v56 = *(v0 + 1120);
    v57 = *(v0 + 1184) + 1;
    (*(v0 + 1192))(*(v0 + 280), *(v0 + 208));
    if (v57 == v56)
    {
      goto LABEL_15;
    }

    v4 = *(v0 + 1184) + 1;
    *(v0 + 1184) = v4;
    v3 = *(v0 + 1048);
    if (v4 >= *(v3 + 16))
    {
      goto LABEL_14;
    }
  }

  v62 = *(*(*(v0 + 1112) + 56) + 8 * v41);
  if (SyncedPhotosFace.day.getter() != v62)
  {
    v116 = v62;
    v118 = v24;
    v63 = *(v0 + 1072);
    v64 = *(v0 + 664);
    v65 = *(v0 + 600);
    v66 = *(v0 + 576);
    v67 = *(v0 + 280);
    v68 = *(v0 + 240);
    v69 = *(v0 + 208);
    static Log.session.getter();
    v63(v65, v64, v66);
    v110(v68, v67, v69);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    v72 = os_log_type_enabled(v70, v71);
    v73 = *(v0 + 1088);
    if (v72)
    {
      v113 = *(v0 + 864);
      v74 = *(v0 + 736);
      v75 = *(v0 + 688);
      v100 = *(v0 + 680);
      v105 = v71;
      v76 = *(v0 + 600);
      v77 = *(v0 + 576);
      v111 = *(v0 + 440);
      v108 = *(v0 + 416);
      v103 = *(v0 + 208);
      *typea = *(v0 + 240);
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v119 = v79;
      *v78 = 136315650;
      dispatch thunk of PhotosFaceID.id.getter();
      v73(v76, v77);
      sub_1000FAACC(&qword_10012A1C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v80 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v81;
      (*(v75 + 8))(v74, v100);
      v83 = sub_100102F80(v80, v82, &v119);

      *(v78 + 4) = v83;
      *(v78 + 12) = 2048;
      v84 = SyncedPhotosFace.day.getter();
      v118(*typea, v103);
      *(v78 + 14) = v84;
      *(v78 + 22) = 2048;
      v62 = v116;
      *(v78 + 24) = v116;
      _os_log_impl(&_mh_execute_header, v70, v105, "Face %s: mapping day %ld to %ld", v78, 0x20u);
      sub_10000C304(v79);

      v113(v111, v108);
    }

    else
    {
      v85 = *(v0 + 864);
      v86 = *(v0 + 600);
      v87 = *(v0 + 576);
      v88 = *(v0 + 440);
      v89 = *(v0 + 416);
      v118(*(v0 + 240), *(v0 + 208));
      v73(v86, v87);

      v85(v88, v89);
      v62 = v116;
    }
  }

  v90 = SyncedPhotosFace.photos.getter();
  *(v0 + 1200) = v90;
  dispatch thunk of PhotosFaceID.id.getter();
  v91 = swift_task_alloc();
  *(v0 + 1208) = v91;
  *v91 = v0;
  v91[1] = sub_1000A0E10;
  v92 = *(v0 + 1008);
  v93 = *(v0 + 768);
  v94 = *(v0 + 704);

  return dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(v90, v94, v62, v93, v92);
}

uint64_t sub_10009C2A0(uint64_t a1)
{
  v151 = v1;
  v2 = v1[134];
  v3 = v1[83];
  v4 = v1[77];
  v5 = v1[72];
  static Log.session.getter();
  v2(v4, v3, v5);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v148 = v1;
  if (os_log_type_enabled(v6, v7))
  {
    v122 = v1[134];
    v137 = v1[108];
    v8 = v1[84];
    v141 = v1[83];
    v9 = v1[77];
    v10 = v1[72];
    v134 = v1[52];
    bufa = v1[58];
    v11 = v1[136];
    v12 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v150 = v125;
    *v12 = 136315394;
    v122(v8, v9, v10);
    v11(v9, v10);
    sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v11(v8, v10);
    v16 = sub_100102F80(v13, v15, &v150);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v17;
    *v123 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to update face %s: %@", v12, 0x16u);
    sub_10000C460(v123, &qword_100129EF8, &qword_100108C70);

    sub_10000C304(v125);

    v137(bufa, v134);
    v18 = (v11)(v141, v10);
  }

  else
  {
    v21 = v1[108];
    loga = v1[83];
    v22 = v1[72];
    v23 = v1[58];
    v24 = v1[52];
    v25 = v6;
    v26 = v1[136];
    v26(v1[77], v22);

    v21(v23, v24);
    v26(loga, v22);
  }

  v27 = v1[130];
  v28 = v1[129];
  if (!v28)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v40 = v1[128];
LABEL_16:
    v45 = v1[84];
    v46 = v1[73];
    v47 = v1[72];
    v48 = v148[20];
    v49 = v148[19];
    v50 = v148[17];
    v51 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v52 = v51 | (v27 << 6);
    (*(v46 + 16))(v45, *(v40 + 48) + *(v46 + 72) * v52, v47);
    v53 = *(*(v40 + 56) + 8 * v52);
    v54 = *(v49 + 48);
    (*(v46 + 32))(v50, v45, v47);
    *(v50 + v54) = v53;
    (*(v48 + 56))(v50, 0, 1, v49);
    v1 = v148;

    v43 = v27;
LABEL_17:
    v1[130] = v43;
    v1[129] = v28;
    v55 = v1[19];
    v56 = v1[20];
    v57 = v1[18];
    sub_10005DD90(v1[17], v57, &qword_10012B490, &qword_10010A268);
    if ((*(v56 + 48))(v57, 1, v55) == 1)
    {
      break;
    }

    v58 = v1[83];
    v59 = v1[73];
    v60 = *(v1[18] + *(v1[19] + 48));
    v1[131] = v60;
    (*(v59 + 32))(v58);
    v61 = v1[83];
    if (*(v60 + 16))
    {
      v76 = v1[81];
      v77 = v1[73];
      v78 = v1[72];
      static Log.session.getter();
      v79 = *(v77 + 16);
      v1[134] = v79;
      v1[135] = (v77 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v79(v76, v61, v78);
      swift_bridgeObjectRetain_n();

      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v133 = v81;
        v136 = v80;
        v143 = v1[96];
        logb = v1[124];
        v82 = v1[84];
        v127 = v1[81];
        bufb = v1[73];
        v83 = v1[72];
        v139 = *(v1 + 125);
        v84 = swift_slowAlloc();
        v148[11] = swift_slowAlloc();
        *v84 = 136315650;
        v85 = PhotosFaceType.description.getter();
        v87 = v86;

        v1 = v148;
        v88 = sub_100102F80(v85, v87, v148 + 11);

        *(v84 + 4) = v88;
        *(v84 + 12) = 2080;
        v79(v82, v127, v83);
        v89 = *(bufb + 1);
        v89(v127, v83);
        sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
        v90 = dispatch thunk of CustomStringConvertible.description.getter();
        v92 = v91;
        v128 = v89;
        v89(v82, v83);
        v93 = sub_100102F80(v90, v92, v148 + 11);

        *(v84 + 14) = v93;
        buf = v84;
        *(v84 + 22) = 2080;
        v94 = swift_task_alloc();
        *v94 = v83;
        *(v94 + 8) = logb;
        *(v94 + 16) = v143;
        *(v94 + 24) = v139;
        swift_getKeyPath();

        v95 = *(v60 + 16);
        if (v95)
        {
          v96 = v148[27];
          v148[12] = _swiftEmptyArrayStorage;
          sub_10005C54C(0, v95, 0);
          v97 = v148[12];
          v98 = v60 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
          v144 = *(v96 + 72);
          v140 = *(v96 + 16);
          do
          {
            v99 = v148[36];
            v101 = v148[26];
            v100 = v148[27];
            v140(v99, v98, v101);
            swift_getAtKeyPath();
            v103 = v148[7];
            v102 = v148[8];
            (*(v100 + 8))(v99, v101);
            v148[12] = v97;
            v105 = *(v97 + 16);
            v104 = *(v97 + 24);
            if (v105 >= v104 >> 1)
            {
              sub_10005C54C((v104 > 1), v105 + 1, 1);
              v97 = v148[12];
            }

            *(v97 + 16) = v105 + 1;
            v106 = v97 + 16 * v105;
            *(v106 + 32) = v103;
            *(v106 + 40) = v102;
            v98 += v144;
            --v95;
          }

          while (v95);

          v1 = v148;
        }

        else
        {
        }

        v114 = v1[108];
        v115 = v1[62];
        v116 = v1[52];
        v117 = Array.description.getter();
        v119 = v118;

        v120 = sub_100102F80(v117, v119, v1 + 11);

        *(buf + 3) = v120;
        _os_log_impl(&_mh_execute_header, v136, v133, "Inserting %s %s: %s", buf, 0x20u);
        swift_arrayDestroy();

        v114(v115, v116);
        v113 = v128;
      }

      else
      {
        v149 = v1[108];
        v107 = v1[81];
        v108 = v1[73];
        v109 = v1[72];
        v110 = v1[62];
        v111 = v1[52];

        v112 = v107;
        v113 = *(v108 + 8);
        v113(v112, v109);

        v149(v110, v111);
      }

      v1[136] = v113;
      v121 = swift_task_alloc();
      v1[137] = v121;
      *v121 = v1;
      v121[1] = sub_10009B6A0;
      v20 = v1[126];
      v19 = v1[96];
      v18 = v1[83];

      return dispatch thunk of PhotosFaceIDDatabase.insert(id:)(v18, v19, v20);
    }

    v62 = v1[82];
    v63 = v1[73];
    v64 = v1[72];

    static Log.session.getter();
    v65 = *(v63 + 16);
    v65(v62, v61, v64);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    log = v66;
    v68 = os_log_type_enabled(v66, v67);
    v142 = v1[108];
    if (v68)
    {
      v29 = v1[84];
      v135 = v1[83];
      v30 = v1[82];
      v31 = v1[73];
      v138 = v43;
      v32 = v148[72];
      v126 = v148[63];
      v132 = v148[52];
      v124 = v67;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v150 = v34;
      *v33 = 136315138;
      v65(v29, v30, v32);
      v35 = *(v31 + 8);
      v35(v30, v32);
      sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      v35(v29, v32);
      v39 = sub_100102F80(v36, v38, &v150);

      *(v33 + 4) = v39;
      _os_log_impl(&_mh_execute_header, log, v124, "There are no valid synced faces per day for %s; skipping", v33, 0xCu);
      sub_10000C304(v34);

      v142(v126, v132);
      v1 = v148;
      v18 = (v35)(v135, v32);
      v27 = v138;
      if (!v28)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v69 = v1[83];
      v70 = v1[72];
      v71 = v1[63];
      v72 = v1[52];
      v73 = *(v1[73] + 8);
      v73(v1[82], v70);

      v142(v71, v72);
      v18 = v73(v69, v70);
      v27 = v43;
      if (!v28)
      {
LABEL_8:
        v41 = ((1 << *(v1 + 1262)) + 63) >> 6;
        if (v41 <= (v27 + 1))
        {
          v42 = v27 + 1;
        }

        else
        {
          v42 = ((1 << *(v1 + 1262)) + 63) >> 6;
        }

        v43 = v42 - 1;
        while (1)
        {
          v44 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v44 >= v41)
          {
            (*(v1[20] + 56))(v1[17], 1, 1, v1[19]);
            v28 = 0;
            goto LABEL_17;
          }

          v40 = v1[128];
          v28 = *(v40 + 8 * v44 + 64);
          ++v27;
          if (v28)
          {
            v27 = v44;
            goto LABEL_16;
          }
        }

        __break(1u);
        return dispatch thunk of PhotosFaceIDDatabase.insert(id:)(v18, v19, v20);
      }
    }
  }

  v74 = swift_task_alloc();
  v1[132] = v74;
  *v74 = v1;
  v74[1] = sub_10009B570;

  return sub_10006254C();
}

uint64_t sub_10009D018(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[142] = a1;
  v4[143] = v1;

  v5 = v3[90];
  v6 = v3[86];
  v7 = v3[85];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (v1)
  {
    v9(v5, v7);
    v11 = v4[103];
    v12 = v4[102];
    v13 = sub_10009E718;
  }

  else
  {
    v4[144] = v9;
    v4[145] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v11 = v4[103];
    v12 = v4[102];
    v13 = sub_10009D1B0;
  }

  return _swift_task_switch(v13, v12, v11);
}

uint64_t sub_10009D1B0()
{
  v232 = v0;
  v1 = v0;
  v2 = v0[143];
  v3 = sub_10008A170(v0[142]);
  v4 = v2;
  v5 = v3[2];
  v6 = Set.init(minimumCapacity:)();
  v7 = v6;
  v229 = v1;
  if (v5)
  {
    v8 = 0;
    v9 = v6 + 56;
    do
    {
      while (1)
      {
        v10 = v3[v8++ + 4];
        v11 = static Hasher._hash(seed:_:)();
        v12 = -1 << *(v7 + 32);
        v13 = v11 & ~v12;
        if ((*(v9 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
        {
          break;
        }

LABEL_8:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v231[0] = v7;
        sub_1000671A4(v10, v13, isUniquelyReferenced_nonNull_native);
        if (v8 == v5)
        {
          goto LABEL_10;
        }

        v9 = v231[0] + 56;
      }

      v14 = ~v12;
      while (*(*(v7 + 48) + 8 * v13) != v10)
      {
        v13 = (v13 + 1) & v14;
        if (((*(v9 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_8;
        }
      }
    }

    while (v8 != v5);
LABEL_10:

    v1 = v229;
  }

  else
  {
  }

  v16 = *(v7 + 16);
  v17 = _swiftEmptyArrayStorage;
  if (v16)
  {
    sub_10000560C(&qword_10012A668, &qword_100109538);
    v17 = swift_allocObject();
    v18 = j__malloc_size(v17);
    v19 = v18 - 32;
    if (v18 < 32)
    {
      v19 = v18 - 25;
    }

    v17[2] = v16;
    v17[3] = 2 * (v19 >> 3);
    v20 = sub_10006BD04(v1 + 2, v17 + 4, v16, v7);
    v21 = v1[2];

    v22 = sub_100010E54(v21);
    if (v20 != v16)
    {
      goto LABEL_75;
    }

    v1 = v229;
  }

  v1[10] = v17;
  sub_1000F34E0(v1 + 10);
  if (!v4)
  {

    v27 = v1[10];
    v28 = *(v27 + 16);
    v29 = v1[134];
    v30 = v1[83];
    v31 = v1[72];
    if (v28)
    {
      v32 = v1[80];
      static Log.session.getter();
      v29(v32, v30, v31);

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v196 = v1[144];
        v194 = v1[136];
        loga = v1[108];
        v35 = v229[92];
        v36 = v229[85];
        v206 = v34;
        v37 = v229[80];
        v38 = v229[72];
        v218 = v229[52];
        v210 = v229[61];
        v39 = swift_slowAlloc();
        v231[0] = swift_slowAlloc();
        *v39 = 136315650;
        dispatch thunk of PhotosFaceID.id.getter();
        v194(v37, v38);
        sub_1000FAACC(&qword_10012A1C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v40 = dispatch thunk of CustomStringConvertible.description.getter();
        v42 = v41;
        v43 = v35;
        v1 = v229;
        v196(v43, v36);
        v44 = sub_100102F80(v40, v42, v231);

        *(v39 + 4) = v44;
        *(v39 + 12) = 2048;
        *(v39 + 14) = v28;
        *(v39 + 22) = 2080;
        v45 = Array.description.getter();
        v47 = sub_100102F80(v45, v46, v231);

        *(v39 + 24) = v47;
        _os_log_impl(&_mh_execute_header, v33, v206, "Face %s now has %ld days of photos: %s", v39, 0x20u);
        swift_arrayDestroy();

        (loga)(v210, v218);
      }

      else
      {
        v62 = v1[108];
        v63 = v1[61];
        v64 = v1[52];
        (v1[136])(v1[80], v1[72]);

        v62(v63, v64);
      }

      v22 = static TestProperties.bufferSize.getter();
      if (v22 < v28)
      {
        v65 = v28 - v22;
        if (!__OFSUB__(v28, v22))
        {
          if ((v65 & 0x8000000000000000) == 0)
          {
            if (v65 < *(v27 + 16))
            {
              v66 = v1[134];
              v67 = v1[83];
              v68 = v1[78];
              v69 = v1[72];
              v70 = *(v27 + 8 * v65 + 32);

              static Log.session.getter();
              v66(v68, v67, v69);
              v71 = Logger.logObject.getter();
              v72 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v71, v72))
              {
                v200 = v1[144];
                v197 = v1[136];
                v220 = v1[108];
                v73 = v229[92];
                v74 = v229[85];
                v75 = v229[78];
                v76 = v229[72];
                v214 = v229[52];
                v207 = v229[59];
                logc = v70;
                v77 = swift_slowAlloc();
                v78 = swift_slowAlloc();
                v231[0] = v78;
                *v77 = 136315650;
                dispatch thunk of PhotosFaceID.id.getter();
                v197(v75, v76);
                sub_1000FAACC(&qword_10012A1C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v79 = dispatch thunk of CustomStringConvertible.description.getter();
                v81 = v80;
                v82 = v73;
                v1 = v229;
                v200(v82, v74);
                v83 = sub_100102F80(v79, v81, v231);

                *(v77 + 4) = v83;
                *(v77 + 12) = 2048;
                *(v77 + 14) = logc;
                *(v77 + 22) = 2048;
                *(v77 + 24) = v65;
                _os_log_impl(&_mh_execute_header, v71, v72, "Unrelating photos for %s older than %ld (%ld days of photos)", v77, 0x20u);
                sub_10000C304(v78);

                v70 = logc;

                v220(v207, v214);
              }

              else
              {
                v179 = v1[108];
                v180 = v1[59];
                v181 = v1[52];
                (v1[136])(v1[78], v1[72]);

                v179(v180, v181);
              }

              dispatch thunk of PhotosFaceID.id.getter();
              v182 = swift_task_alloc();
              v1[146] = v182;
              *v182 = v1;
              v182[1] = sub_10009F490;
              v25 = v1[126];
              v24 = v1[96];
              v22 = v1[89];
              v23 = v70;

              return dispatch thunk of PhotosFaceIDDatabase.unrelatePhotos(for:before:)(v22, v23, v24, v25);
            }

LABEL_78:
            __break(1u);
            return dispatch thunk of PhotosFaceIDDatabase.unrelatePhotos(for:before:)(v22, v23, v24, v25);
          }

LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      (v1[136])(v1[83], v1[72]);
    }

    else
    {
      v48 = v1[79];

      static Log.session.getter();
      v29(v48, v30, v31);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = v1[136];
        v195 = v1[144];
        v52 = v1[92];
        v53 = v1[85];
        v219 = v1[83];
        logb = v1[108];
        v54 = v1[79];
        v55 = v1[72];
        v211 = v1[52];
        bufa = v1[60];
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v231[0] = v57;
        *v56 = 136315138;
        v199 = v55;
        dispatch thunk of PhotosFaceID.id.getter();
        v51(v54, v55);
        sub_1000FAACC(&qword_10012A1C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v58 = dispatch thunk of CustomStringConvertible.description.getter();
        v60 = v59;
        v195(v52, v53);
        v61 = sub_100102F80(v58, v60, v231);

        *(v56 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v49, v50, "No related photos for %s after sync", v56, 0xCu);
        sub_10000C304(v57);

        v1 = v229;

        (logb)(bufa, v211);
        v22 = (v51)(v219, v199);
      }

      else
      {
        v84 = v1[136];
        v85 = v1[108];
        v86 = v1[83];
        v87 = v1[72];
        v88 = v1[60];
        v89 = v1[52];
        v84(v1[79], v87);

        v85(v88, v89);
        v1 = v229;
        v84(v86, v87);
      }
    }

    v90 = v1[130];
    v91 = v1[129];
    if (!v91)
    {
      goto LABEL_39;
    }

    do
    {
      while (1)
      {
        v104 = v1[128];
LABEL_47:
        v109 = v1[84];
        v110 = v1[73];
        v111 = v1[72];
        v112 = v229[20];
        v113 = v229[19];
        v114 = v229[17];
        v115 = __clz(__rbit64(v91));
        v91 &= v91 - 1;
        v116 = v115 | (v90 << 6);
        (*(v110 + 16))(v109, *(v104 + 48) + *(v110 + 72) * v116, v111);
        v117 = *(*(v104 + 56) + 8 * v116);
        v118 = *(v113 + 48);
        (*(v110 + 32))(v114, v109, v111);
        *(v114 + v118) = v117;
        (*(v112 + 56))(v114, 0, 1, v113);
        v1 = v229;

        v107 = v90;
LABEL_48:
        v1[130] = v107;
        v1[129] = v91;
        v119 = v1[19];
        v120 = v1[20];
        v121 = v1[18];
        sub_10005DD90(v1[17], v121, &qword_10012B490, &qword_10010A268);
        if ((*(v120 + 48))(v121, 1, v119) == 1)
        {

          v138 = swift_task_alloc();
          v1[132] = v138;
          *v138 = v1;
          v138[1] = sub_10009B570;

          return sub_10006254C();
        }

        v122 = v1[83];
        v123 = v1[73];
        v124 = *(v1[18] + *(v1[19] + 48));
        v1[131] = v124;
        (*(v123 + 32))(v122);
        v125 = v1[83];
        if (*(v124 + 16))
        {
          v139 = v1[81];
          v140 = v1[73];
          v141 = v1[72];
          static Log.session.getter();
          v142 = *(v140 + 16);
          v1[134] = v142;
          v1[135] = (v140 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v142(v139, v125, v141);
          swift_bridgeObjectRetain_n();

          v143 = Logger.logObject.getter();
          v144 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v143, v144))
          {
            v209 = v144;
            v213 = v143;
            v222 = v1[96];
            logd = v1[124];
            v145 = v1[84];
            bufb = v1[81];
            v146 = v1[73];
            v147 = v1[72];
            v216 = *(v1 + 125);
            v148 = swift_slowAlloc();
            v229[11] = swift_slowAlloc();
            *v148 = 136315650;
            v149 = PhotosFaceType.description.getter();
            v151 = v150;

            v152 = v149;
            v1 = v229;
            v153 = sub_100102F80(v152, v151, v229 + 11);

            *(v148 + 4) = v153;
            *(v148 + 12) = 2080;
            v142(v145, bufb, v147);
            v154 = *(v146 + 8);
            v154(bufb, v147);
            sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
            v155 = dispatch thunk of CustomStringConvertible.description.getter();
            v157 = v156;
            v202 = v154;
            v154(v145, v147);
            v158 = sub_100102F80(v155, v157, v229 + 11);

            *(v148 + 14) = v158;
            buf = v148;
            *(v148 + 22) = 2080;
            v159 = swift_task_alloc();
            *v159 = v147;
            *(v159 + 8) = logd;
            *(v159 + 16) = v222;
            *(v159 + 24) = v216;
            swift_getKeyPath();

            v160 = *(v124 + 16);
            if (v160)
            {
              v161 = v229[27];
              v229[12] = _swiftEmptyArrayStorage;
              sub_10005C54C(0, v160, 0);
              v162 = v229[12];
              v163 = v124 + ((*(v161 + 80) + 32) & ~*(v161 + 80));
              v223 = *(v161 + 72);
              v217 = *(v161 + 16);
              do
              {
                v164 = v229[36];
                v166 = v229[26];
                v165 = v229[27];
                v217(v164, v163, v166);
                swift_getAtKeyPath();
                v168 = v229[7];
                v167 = v229[8];
                (*(v165 + 8))(v164, v166);
                v229[12] = v162;
                v170 = *(v162 + 16);
                v169 = *(v162 + 24);
                if (v170 >= v169 >> 1)
                {
                  sub_10005C54C((v169 > 1), v170 + 1, 1);
                  v162 = v229[12];
                }

                *(v162 + 16) = v170 + 1;
                v171 = v162 + 16 * v170;
                *(v171 + 32) = v168;
                *(v171 + 40) = v167;
                v163 += v223;
                --v160;
              }

              while (v160);

              v1 = v229;
            }

            else
            {
            }

            v183 = v1[108];
            v184 = v1[62];
            v185 = v1[52];
            v186 = Array.description.getter();
            v188 = v187;

            v189 = sub_100102F80(v186, v188, v1 + 11);

            *(buf + 3) = v189;
            _os_log_impl(&_mh_execute_header, v213, v209, "Inserting %s %s: %s", buf, 0x20u);
            swift_arrayDestroy();

            v183(v184, v185);
            v178 = v202;
          }

          else
          {
            v230 = v1[108];
            v172 = v1[81];
            v173 = v1[73];
            v174 = v1[72];
            v175 = v1[62];
            v176 = v1[52];

            v177 = v172;
            v178 = *(v173 + 8);
            v178(v177, v174);

            v230(v175, v176);
          }

          v1[136] = v178;
          v190 = swift_task_alloc();
          v1[137] = v190;
          *v190 = v1;
          v190[1] = sub_10009B6A0;
          v191 = v1[126];
          v192 = v1[96];
          v193 = v1[83];

          return dispatch thunk of PhotosFaceIDDatabase.insert(id:)(v193, v192, v191);
        }

        v126 = v1[82];
        v127 = v1[73];
        v128 = v1[72];

        static Log.session.getter();
        v129 = *(v127 + 16);
        v129(v126, v125, v128);
        v130 = Logger.logObject.getter();
        v131 = static os_log_type_t.error.getter();
        log = v130;
        v132 = os_log_type_enabled(v130, v131);
        v221 = v1[108];
        if (!v132)
        {
          break;
        }

        v92 = v1[84];
        v215 = v1[83];
        v198 = v131;
        v201 = v107;
        v93 = v1[82];
        v94 = v1[73];
        v95 = v229[72];
        v212 = v229[63];
        v208 = v229[52];
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v231[0] = v97;
        *v96 = 136315138;
        v129(v92, v93, v95);
        v98 = *(v94 + 8);
        v98(v93, v95);
        sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
        v99 = dispatch thunk of CustomStringConvertible.description.getter();
        v101 = v100;
        v98(v92, v95);
        v102 = sub_100102F80(v99, v101, v231);

        *(v96 + 4) = v102;
        _os_log_impl(&_mh_execute_header, log, v198, "There are no valid synced faces per day for %s; skipping", v96, 0xCu);
        sub_10000C304(v97);

        v221(v212, v208);
        v103 = v95;
        v1 = v229;
        v22 = (v98)(v215, v103);
        v90 = v201;
        if (!v91)
        {
          goto LABEL_39;
        }
      }

      v133 = v1[83];
      v134 = v1[72];
      v135 = v1[63];
      v136 = v1[52];
      v137 = *(v1[73] + 8);
      v137(v1[82], v134);

      v221(v135, v136);
      v22 = v137(v133, v134);
      v90 = v107;
    }

    while (v91);
LABEL_39:
    v105 = ((1 << *(v1 + 1262)) + 63) >> 6;
    if (v105 <= (v90 + 1))
    {
      v106 = v90 + 1;
    }

    else
    {
      v106 = ((1 << *(v1 + 1262)) + 63) >> 6;
    }

    v107 = v106 - 1;
    while (1)
    {
      v108 = v90 + 1;
      if (__OFADD__(v90, 1))
      {
        break;
      }

      if (v108 >= v105)
      {
        (*(v1[20] + 56))(v1[17], 1, 1, v1[19]);
        v91 = 0;
        goto LABEL_48;
      }

      v104 = v1[128];
      v91 = *(v104 + 8 * v108 + 64);
      ++v90;
      if (v91)
      {
        v90 = v108;
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }
}

uint64_t sub_10009E718(uint64_t a1)
{
  v151 = v1;
  v2 = v1[134];
  v3 = v1[83];
  v4 = v1[77];
  v5 = v1[72];
  static Log.session.getter();
  v2(v4, v3, v5);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v148 = v1;
  if (os_log_type_enabled(v6, v7))
  {
    v122 = v1[134];
    v137 = v1[108];
    v8 = v1[84];
    v141 = v1[83];
    v9 = v1[77];
    v10 = v1[72];
    v134 = v1[52];
    bufa = v1[58];
    v11 = v1[136];
    v12 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v150 = v125;
    *v12 = 136315394;
    v122(v8, v9, v10);
    v11(v9, v10);
    sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v11(v8, v10);
    v16 = sub_100102F80(v13, v15, &v150);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v17;
    *v123 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to update face %s: %@", v12, 0x16u);
    sub_10000C460(v123, &qword_100129EF8, &qword_100108C70);

    sub_10000C304(v125);

    v137(bufa, v134);
    v18 = (v11)(v141, v10);
  }

  else
  {
    v21 = v1[108];
    loga = v1[83];
    v22 = v1[72];
    v23 = v1[58];
    v24 = v1[52];
    v25 = v6;
    v26 = v1[136];
    v26(v1[77], v22);

    v21(v23, v24);
    v26(loga, v22);
  }

  v27 = v1[130];
  v28 = v1[129];
  if (!v28)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v40 = v1[128];
LABEL_16:
    v45 = v1[84];
    v46 = v1[73];
    v47 = v1[72];
    v48 = v148[20];
    v49 = v148[19];
    v50 = v148[17];
    v51 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v52 = v51 | (v27 << 6);
    (*(v46 + 16))(v45, *(v40 + 48) + *(v46 + 72) * v52, v47);
    v53 = *(*(v40 + 56) + 8 * v52);
    v54 = *(v49 + 48);
    (*(v46 + 32))(v50, v45, v47);
    *(v50 + v54) = v53;
    (*(v48 + 56))(v50, 0, 1, v49);
    v1 = v148;

    v43 = v27;
LABEL_17:
    v1[130] = v43;
    v1[129] = v28;
    v55 = v1[19];
    v56 = v1[20];
    v57 = v1[18];
    sub_10005DD90(v1[17], v57, &qword_10012B490, &qword_10010A268);
    if ((*(v56 + 48))(v57, 1, v55) == 1)
    {
      break;
    }

    v58 = v1[83];
    v59 = v1[73];
    v60 = *(v1[18] + *(v1[19] + 48));
    v1[131] = v60;
    (*(v59 + 32))(v58);
    v61 = v1[83];
    if (*(v60 + 16))
    {
      v76 = v1[81];
      v77 = v1[73];
      v78 = v1[72];
      static Log.session.getter();
      v79 = *(v77 + 16);
      v1[134] = v79;
      v1[135] = (v77 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v79(v76, v61, v78);
      swift_bridgeObjectRetain_n();

      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v133 = v81;
        v136 = v80;
        v143 = v1[96];
        logb = v1[124];
        v82 = v1[84];
        v127 = v1[81];
        bufb = v1[73];
        v83 = v1[72];
        v139 = *(v1 + 125);
        v84 = swift_slowAlloc();
        v148[11] = swift_slowAlloc();
        *v84 = 136315650;
        v85 = PhotosFaceType.description.getter();
        v87 = v86;

        v1 = v148;
        v88 = sub_100102F80(v85, v87, v148 + 11);

        *(v84 + 4) = v88;
        *(v84 + 12) = 2080;
        v79(v82, v127, v83);
        v89 = *(bufb + 1);
        v89(v127, v83);
        sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
        v90 = dispatch thunk of CustomStringConvertible.description.getter();
        v92 = v91;
        v128 = v89;
        v89(v82, v83);
        v93 = sub_100102F80(v90, v92, v148 + 11);

        *(v84 + 14) = v93;
        buf = v84;
        *(v84 + 22) = 2080;
        v94 = swift_task_alloc();
        *v94 = v83;
        *(v94 + 8) = logb;
        *(v94 + 16) = v143;
        *(v94 + 24) = v139;
        swift_getKeyPath();

        v95 = *(v60 + 16);
        if (v95)
        {
          v96 = v148[27];
          v148[12] = _swiftEmptyArrayStorage;
          sub_10005C54C(0, v95, 0);
          v97 = v148[12];
          v98 = v60 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
          v144 = *(v96 + 72);
          v140 = *(v96 + 16);
          do
          {
            v99 = v148[36];
            v101 = v148[26];
            v100 = v148[27];
            v140(v99, v98, v101);
            swift_getAtKeyPath();
            v103 = v148[7];
            v102 = v148[8];
            (*(v100 + 8))(v99, v101);
            v148[12] = v97;
            v105 = *(v97 + 16);
            v104 = *(v97 + 24);
            if (v105 >= v104 >> 1)
            {
              sub_10005C54C((v104 > 1), v105 + 1, 1);
              v97 = v148[12];
            }

            *(v97 + 16) = v105 + 1;
            v106 = v97 + 16 * v105;
            *(v106 + 32) = v103;
            *(v106 + 40) = v102;
            v98 += v144;
            --v95;
          }

          while (v95);

          v1 = v148;
        }

        else
        {
        }

        v114 = v1[108];
        v115 = v1[62];
        v116 = v1[52];
        v117 = Array.description.getter();
        v119 = v118;

        v120 = sub_100102F80(v117, v119, v1 + 11);

        *(buf + 3) = v120;
        _os_log_impl(&_mh_execute_header, v136, v133, "Inserting %s %s: %s", buf, 0x20u);
        swift_arrayDestroy();

        v114(v115, v116);
        v113 = v128;
      }

      else
      {
        v149 = v1[108];
        v107 = v1[81];
        v108 = v1[73];
        v109 = v1[72];
        v110 = v1[62];
        v111 = v1[52];

        v112 = v107;
        v113 = *(v108 + 8);
        v113(v112, v109);

        v149(v110, v111);
      }

      v1[136] = v113;
      v121 = swift_task_alloc();
      v1[137] = v121;
      *v121 = v1;
      v121[1] = sub_10009B6A0;
      v20 = v1[126];
      v19 = v1[96];
      v18 = v1[83];

      return dispatch thunk of PhotosFaceIDDatabase.insert(id:)(v18, v19, v20);
    }

    v62 = v1[82];
    v63 = v1[73];
    v64 = v1[72];

    static Log.session.getter();
    v65 = *(v63 + 16);
    v65(v62, v61, v64);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    log = v66;
    v68 = os_log_type_enabled(v66, v67);
    v142 = v1[108];
    if (v68)
    {
      v29 = v1[84];
      v135 = v1[83];
      v30 = v1[82];
      v31 = v1[73];
      v138 = v43;
      v32 = v148[72];
      v126 = v148[63];
      v132 = v148[52];
      v124 = v67;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v150 = v34;
      *v33 = 136315138;
      v65(v29, v30, v32);
      v35 = *(v31 + 8);
      v35(v30, v32);
      sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      v35(v29, v32);
      v39 = sub_100102F80(v36, v38, &v150);

      *(v33 + 4) = v39;
      _os_log_impl(&_mh_execute_header, log, v124, "There are no valid synced faces per day for %s; skipping", v33, 0xCu);
      sub_10000C304(v34);

      v142(v126, v132);
      v1 = v148;
      v18 = (v35)(v135, v32);
      v27 = v138;
      if (!v28)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v69 = v1[83];
      v70 = v1[72];
      v71 = v1[63];
      v72 = v1[52];
      v73 = *(v1[73] + 8);
      v73(v1[82], v70);

      v142(v71, v72);
      v18 = v73(v69, v70);
      v27 = v43;
      if (!v28)
      {
LABEL_8:
        v41 = ((1 << *(v1 + 1262)) + 63) >> 6;
        if (v41 <= (v27 + 1))
        {
          v42 = v27 + 1;
        }

        else
        {
          v42 = ((1 << *(v1 + 1262)) + 63) >> 6;
        }

        v43 = v42 - 1;
        while (1)
        {
          v44 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v44 >= v41)
          {
            (*(v1[20] + 56))(v1[17], 1, 1, v1[19]);
            v28 = 0;
            goto LABEL_17;
          }

          v40 = v1[128];
          v28 = *(v40 + 8 * v44 + 64);
          ++v27;
          if (v28)
          {
            v27 = v44;
            goto LABEL_16;
          }
        }

        __break(1u);
        return dispatch thunk of PhotosFaceIDDatabase.insert(id:)(v18, v19, v20);
      }
    }
  }

  v74 = swift_task_alloc();
  v1[132] = v74;
  *v74 = v1;
  v74[1] = sub_10009B570;

  return sub_10006254C();
}

uint64_t sub_10009F490()
{
  v2 = *v1;
  *(*v1 + 1176) = v0;

  (*(v2 + 1152))(*(v2 + 712), *(v2 + 680));
  v3 = *(v2 + 824);
  v4 = *(v2 + 816);
  if (v0)
  {
    v5 = sub_1000A0090;
  }

  else
  {
    v5 = sub_10009F620;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10009F620()
{
  v122 = v0;
  v1 = *(v0 + 1088);
  v2 = *(v0 + 664);
  v3 = *(v0 + 576);

  v1(v2, v3);
  v7 = *(v0 + 1040);
  v8 = *(v0 + 1032);
  if (!v8)
  {
    goto LABEL_5;
  }

  while (1)
  {
    v14 = *(v0 + 1024);
LABEL_13:
    loga = *(v0 + 672);
    v19 = *(v0 + 584);
    v20 = *(v0 + 576);
    v21 = *(v0 + 152);
    v22 = *(v0 + 160);
    v23 = *(v0 + 136);
    v24 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v25 = v24 | (v7 << 6);
    (*(v19 + 16))();
    v26 = *(*(v14 + 56) + 8 * v25);
    v27 = *(v21 + 48);
    (*(v19 + 32))(v23, loga, v20);
    *(v23 + v27) = v26;
    (*(v22 + 56))(v23, 0, 1, v21);

    v17 = v7;
LABEL_14:
    *(v0 + 1040) = v17;
    *(v0 + 1032) = v8;
    v28 = *(v0 + 152);
    v29 = *(v0 + 160);
    v30 = *(v0 + 144);
    sub_10005DD90(*(v0 + 136), v30, &qword_10012B490, &qword_10010A268);
    if ((*(v29 + 48))(v30, 1, v28) == 1)
    {
      break;
    }

    v31 = *(v0 + 664);
    v32 = *(v0 + 584);
    v33 = *(*(v0 + 144) + *(*(v0 + 152) + 48));
    *(v0 + 1048) = v33;
    (*(v32 + 32))(v31);
    v34 = *(v0 + 664);
    if (*(v33 + 16))
    {
      v54 = *(v0 + 648);
      v55 = *(v0 + 584);
      v56 = *(v0 + 576);
      static Log.session.getter();
      v57 = *(v55 + 16);
      *(v0 + 1072) = v57;
      *(v0 + 1080) = (v55 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v57(v54, v34, v56);
      swift_bridgeObjectRetain_n();

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v108 = v59;
        v110 = v58;
        v115 = *(v0 + 768);
        logb = *(v0 + 992);
        v60 = *(v0 + 672);
        v102 = *(v0 + 648);
        bufb = *(v0 + 584);
        v61 = *(v0 + 576);
        v112 = *(v0 + 1000);
        v62 = swift_slowAlloc();
        *(v0 + 88) = swift_slowAlloc();
        *v62 = 136315650;
        v63 = PhotosFaceType.description.getter();
        v65 = v64;

        v66 = sub_100102F80(v63, v65, (v0 + 88));

        *(v62 + 4) = v66;
        *(v62 + 12) = 2080;
        v57(v60, v102, v61);
        v67 = *(bufb + 1);
        v67(v102, v61);
        sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
        v68 = dispatch thunk of CustomStringConvertible.description.getter();
        v70 = v69;
        v103 = v67;
        v67(v60, v61);
        v71 = sub_100102F80(v68, v70, (v0 + 88));

        *(v62 + 14) = v71;
        buf = v62;
        *(v62 + 22) = 2080;
        v72 = swift_task_alloc();
        *v72 = v61;
        *(v72 + 8) = logb;
        *(v72 + 16) = v115;
        *(v72 + 24) = v112;
        swift_getKeyPath();

        v73 = *(v33 + 16);
        if (v73)
        {
          v74 = *(v0 + 216);
          *(v0 + 96) = _swiftEmptyArrayStorage;
          sub_10005C54C(0, v73, 0);
          v75 = *(v0 + 96);
          v76 = v33 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
          v116 = *(v74 + 72);
          v113 = *(v74 + 16);
          do
          {
            v77 = *(v0 + 288);
            v79 = *(v0 + 208);
            v78 = *(v0 + 216);
            v113(v77, v76, v79);
            swift_getAtKeyPath();
            v81 = *(v0 + 56);
            v80 = *(v0 + 64);
            (*(v78 + 8))(v77, v79);
            *(v0 + 96) = v75;
            v83 = *(v75 + 16);
            v82 = *(v75 + 24);
            if (v83 >= v82 >> 1)
            {
              sub_10005C54C((v82 > 1), v83 + 1, 1);
              v75 = *(v0 + 96);
            }

            *(v75 + 16) = v83 + 1;
            v84 = v75 + 16 * v83;
            *(v84 + 32) = v81;
            *(v84 + 40) = v80;
            v76 += v116;
            --v73;
          }

          while (v73);
        }

        v92 = *(v0 + 864);
        v93 = *(v0 + 496);
        v94 = *(v0 + 416);
        v95 = Array.description.getter();
        v97 = v96;

        v98 = sub_100102F80(v95, v97, (v0 + 88));

        *(buf + 3) = v98;
        _os_log_impl(&_mh_execute_header, v110, v108, "Inserting %s %s: %s", buf, 0x20u);
        swift_arrayDestroy();

        v92(v93, v94);
        v91 = v103;
      }

      else
      {
        logc = *(v0 + 864);
        v85 = *(v0 + 648);
        v86 = *(v0 + 584);
        v87 = *(v0 + 576);
        v88 = *(v0 + 496);
        v89 = *(v0 + 416);

        v90 = v85;
        v91 = *(v86 + 8);
        v91(v90, v87);

        (logc)(v88, v89);
      }

      *(v0 + 1088) = v91;
      v99 = swift_task_alloc();
      *(v0 + 1096) = v99;
      *v99 = v0;
      v99[1] = sub_10009B6A0;
      v6 = *(v0 + 1008);
      v5 = *(v0 + 768);
      v4 = *(v0 + 664);

      return dispatch thunk of PhotosFaceIDDatabase.insert(id:)(v4, v5, v6);
    }

    v35 = *(v0 + 656);
    v36 = *(v0 + 584);
    v37 = *(v0 + 576);

    static Log.session.getter();
    v38 = *(v36 + 16);
    v38(v35, v34, v37);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    log = v39;
    v41 = os_log_type_enabled(v39, v40);
    v114 = *(v0 + 864);
    if (v41)
    {
      v42 = *(v0 + 672);
      v109 = *(v0 + 664);
      v111 = v17;
      v43 = *(v0 + 656);
      v44 = *(v0 + 584);
      v45 = *(v0 + 576);
      bufa = *(v0 + 416);
      v107 = *(v0 + 504);
      v100 = v40;
      v46 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v121 = v101;
      *v46 = 136315138;
      v38(v42, v43, v45);
      v47 = *(v44 + 8);
      v47(v43, v45);
      sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      v47(v42, v45);
      v51 = sub_100102F80(v48, v50, &v121);

      *(v46 + 4) = v51;
      _os_log_impl(&_mh_execute_header, log, v100, "There are no valid synced faces per day for %s; skipping", v46, 0xCu);
      sub_10000C304(v101);

      v114(v107, bufa);
      v4 = (v47)(v109, v45);
      v7 = v111;
      if (!v8)
      {
LABEL_5:
        v15 = ((1 << *(v0 + 1262)) + 63) >> 6;
        if (v15 <= (v7 + 1))
        {
          v16 = v7 + 1;
        }

        else
        {
          v16 = ((1 << *(v0 + 1262)) + 63) >> 6;
        }

        v17 = v16 - 1;
        while (1)
        {
          v18 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v18 >= v15)
          {
            (*(*(v0 + 160) + 56))(*(v0 + 136), 1, 1, *(v0 + 152));
            v8 = 0;
            goto LABEL_14;
          }

          v14 = *(v0 + 1024);
          v8 = *(v14 + 8 * v18 + 64);
          ++v7;
          if (v8)
          {
            v7 = v18;
            goto LABEL_13;
          }
        }

        __break(1u);
        return dispatch thunk of PhotosFaceIDDatabase.insert(id:)(v4, v5, v6);
      }
    }

    else
    {
      v9 = *(v0 + 664);
      v10 = *(v0 + 576);
      v11 = *(v0 + 504);
      v12 = *(v0 + 416);
      v13 = *(*(v0 + 584) + 8);
      v13(*(v0 + 656), v10);

      v114(v11, v12);
      v4 = v13(v9, v10);
      v7 = v17;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  v52 = swift_task_alloc();
  *(v0 + 1056) = v52;
  *v52 = v0;
  v52[1] = sub_10009B570;

  return sub_10006254C();
}

uint64_t sub_1000A0090()
{
  v150 = v0;

  v1 = v0[134];
  v2 = v0[83];
  v3 = v0[77];
  v4 = v0[72];
  static Log.session.getter();
  v1(v3, v2, v4);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v147 = v0;
  if (os_log_type_enabled(v5, v6))
  {
    v121 = v0[134];
    v136 = v0[108];
    v7 = v0[84];
    v140 = v0[83];
    v8 = v0[77];
    v9 = v0[72];
    v133 = v0[52];
    bufa = v0[58];
    v10 = v0[136];
    v11 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v149 = v124;
    *v11 = 136315394;
    v121(v7, v8, v9);
    v10(v8, v9);
    sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v10(v7, v9);
    v15 = sub_100102F80(v12, v14, &v149);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v122 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to update face %s: %@", v11, 0x16u);
    sub_10000C460(v122, &qword_100129EF8, &qword_100108C70);

    sub_10000C304(v124);

    v136(bufa, v133);
    v17 = (v10)(v140, v9);
  }

  else
  {
    v20 = v0[108];
    loga = v0[83];
    v21 = v0[72];
    v22 = v0[58];
    v23 = v0[52];
    v24 = v5;
    v25 = v0[136];
    v25(v0[77], v21);

    v20(v22, v23);
    v25(loga, v21);
  }

  v26 = v0[130];
  v27 = v0[129];
  if (!v27)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v39 = v0[128];
LABEL_16:
    v44 = v0[84];
    v45 = v0[73];
    v46 = v0[72];
    v47 = v147[20];
    v48 = v147[19];
    v49 = v147[17];
    v50 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v51 = v50 | (v26 << 6);
    (*(v45 + 16))(v44, *(v39 + 48) + *(v45 + 72) * v51, v46);
    v52 = *(*(v39 + 56) + 8 * v51);
    v53 = *(v48 + 48);
    (*(v45 + 32))(v49, v44, v46);
    *(v49 + v53) = v52;
    (*(v47 + 56))(v49, 0, 1, v48);
    v0 = v147;

    v42 = v26;
LABEL_17:
    v0[130] = v42;
    v0[129] = v27;
    v54 = v0[19];
    v55 = v0[20];
    v56 = v0[18];
    sub_10005DD90(v0[17], v56, &qword_10012B490, &qword_10010A268);
    if ((*(v55 + 48))(v56, 1, v54) == 1)
    {
      break;
    }

    v57 = v0[83];
    v58 = v0[73];
    v59 = *(v0[18] + *(v0[19] + 48));
    v0[131] = v59;
    (*(v58 + 32))(v57);
    v60 = v0[83];
    if (*(v59 + 16))
    {
      v75 = v0[81];
      v76 = v0[73];
      v77 = v0[72];
      static Log.session.getter();
      v78 = *(v76 + 16);
      v0[134] = v78;
      v0[135] = (v76 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v78(v75, v60, v77);
      swift_bridgeObjectRetain_n();

      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v79, v80))
      {
        v132 = v80;
        v135 = v79;
        v142 = v0[96];
        logb = v0[124];
        v81 = v0[84];
        v126 = v0[81];
        bufb = v0[73];
        v82 = v0[72];
        v138 = *(v0 + 125);
        v83 = swift_slowAlloc();
        v147[11] = swift_slowAlloc();
        *v83 = 136315650;
        v84 = PhotosFaceType.description.getter();
        v86 = v85;

        v0 = v147;
        v87 = sub_100102F80(v84, v86, v147 + 11);

        *(v83 + 4) = v87;
        *(v83 + 12) = 2080;
        v78(v81, v126, v82);
        v88 = *(bufb + 1);
        v88(v126, v82);
        sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
        v89 = dispatch thunk of CustomStringConvertible.description.getter();
        v91 = v90;
        v127 = v88;
        v88(v81, v82);
        v92 = sub_100102F80(v89, v91, v147 + 11);

        *(v83 + 14) = v92;
        buf = v83;
        *(v83 + 22) = 2080;
        v93 = swift_task_alloc();
        *v93 = v82;
        *(v93 + 8) = logb;
        *(v93 + 16) = v142;
        *(v93 + 24) = v138;
        swift_getKeyPath();

        v94 = *(v59 + 16);
        if (v94)
        {
          v95 = v147[27];
          v147[12] = _swiftEmptyArrayStorage;
          sub_10005C54C(0, v94, 0);
          v96 = v147[12];
          v97 = v59 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
          v143 = *(v95 + 72);
          v139 = *(v95 + 16);
          do
          {
            v98 = v147[36];
            v100 = v147[26];
            v99 = v147[27];
            v139(v98, v97, v100);
            swift_getAtKeyPath();
            v102 = v147[7];
            v101 = v147[8];
            (*(v99 + 8))(v98, v100);
            v147[12] = v96;
            v104 = *(v96 + 16);
            v103 = *(v96 + 24);
            if (v104 >= v103 >> 1)
            {
              sub_10005C54C((v103 > 1), v104 + 1, 1);
              v96 = v147[12];
            }

            *(v96 + 16) = v104 + 1;
            v105 = v96 + 16 * v104;
            *(v105 + 32) = v102;
            *(v105 + 40) = v101;
            v97 += v143;
            --v94;
          }

          while (v94);

          v0 = v147;
        }

        else
        {
        }

        v113 = v0[108];
        v114 = v0[62];
        v115 = v0[52];
        v116 = Array.description.getter();
        v118 = v117;

        v119 = sub_100102F80(v116, v118, v0 + 11);

        *(buf + 3) = v119;
        _os_log_impl(&_mh_execute_header, v135, v132, "Inserting %s %s: %s", buf, 0x20u);
        swift_arrayDestroy();

        v113(v114, v115);
        v112 = v127;
      }

      else
      {
        v148 = v0[108];
        v106 = v0[81];
        v107 = v0[73];
        v108 = v0[72];
        v109 = v0[62];
        v110 = v0[52];

        v111 = v106;
        v112 = *(v107 + 8);
        v112(v111, v108);

        v148(v109, v110);
      }

      v0[136] = v112;
      v120 = swift_task_alloc();
      v0[137] = v120;
      *v120 = v0;
      v120[1] = sub_10009B6A0;
      v19 = v0[126];
      v18 = v0[96];
      v17 = v0[83];

      return dispatch thunk of PhotosFaceIDDatabase.insert(id:)(v17, v18, v19);
    }

    v61 = v0[82];
    v62 = v0[73];
    v63 = v0[72];

    static Log.session.getter();
    v64 = *(v62 + 16);
    v64(v61, v60, v63);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    log = v65;
    v67 = os_log_type_enabled(v65, v66);
    v141 = v0[108];
    if (v67)
    {
      v28 = v0[84];
      v134 = v0[83];
      v29 = v0[82];
      v30 = v0[73];
      v137 = v42;
      v31 = v147[72];
      v125 = v147[63];
      v131 = v147[52];
      v123 = v66;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v149 = v33;
      *v32 = 136315138;
      v64(v28, v29, v31);
      v34 = *(v30 + 8);
      v34(v29, v31);
      sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      v34(v28, v31);
      v38 = sub_100102F80(v35, v37, &v149);

      *(v32 + 4) = v38;
      _os_log_impl(&_mh_execute_header, log, v123, "There are no valid synced faces per day for %s; skipping", v32, 0xCu);
      sub_10000C304(v33);

      v141(v125, v131);
      v0 = v147;
      v17 = (v34)(v134, v31);
      v26 = v137;
      if (!v27)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v68 = v0[83];
      v69 = v0[72];
      v70 = v0[63];
      v71 = v0[52];
      v72 = *(v0[73] + 8);
      v72(v0[82], v69);

      v141(v70, v71);
      v17 = v72(v68, v69);
      v26 = v42;
      if (!v27)
      {
LABEL_8:
        v40 = ((1 << *(v0 + 1262)) + 63) >> 6;
        if (v40 <= (v26 + 1))
        {
          v41 = v26 + 1;
        }

        else
        {
          v41 = ((1 << *(v0 + 1262)) + 63) >> 6;
        }

        v42 = v41 - 1;
        while (1)
        {
          v43 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v43 >= v40)
          {
            (*(v0[20] + 56))(v0[17], 1, 1, v0[19]);
            v27 = 0;
            goto LABEL_17;
          }

          v39 = v0[128];
          v27 = *(v39 + 8 * v43 + 64);
          ++v26;
          if (v27)
          {
            v26 = v43;
            goto LABEL_16;
          }
        }

        __break(1u);
        return dispatch thunk of PhotosFaceIDDatabase.insert(id:)(v17, v18, v19);
      }
    }
  }

  v73 = swift_task_alloc();
  v0[132] = v73;
  *v73 = v0;
  v73[1] = sub_10009B570;

  return sub_10006254C();
}

uint64_t sub_1000A0E10()
{
  v2 = *v1;
  *(*v1 + 1216) = v0;

  (*(v2[86] + 8))(v2[88], v2[85]);

  if (v0)
  {

    v3 = v2[103];
    v4 = v2[102];
    v5 = sub_1000A1A7C;
  }

  else
  {
    v3 = v2[103];
    v4 = v2[102];
    v5 = sub_1000A0FA8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000A0FA8()
{
  v122 = v0;
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1184) + 1;
  v3 = (*(v0 + 1192))(*(v0 + 280), *(v0 + 208));
  if (v2 == v1)
  {
LABEL_2:

    dispatch thunk of PhotosFaceID.id.getter();
    v8 = swift_task_alloc();
    *(v0 + 1128) = v8;
    *v8 = v0;
    v8[1] = sub_10009D018;
    v9 = *(v0 + 776);
    v10 = *(v0 + 768);
    v11 = *(v0 + 720);

    return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(v11, v10, v9);
  }

  else
  {
    while (1)
    {
      v19 = *(v0 + 1184) + 1;
      *(v0 + 1184) = v19;
      v20 = *(v0 + 1048);
      if (v19 >= *(v20 + 16))
      {
        __break(1u);
        return dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(v3, v4, v5, v6, v7);
      }

      v114 = *(v0 + 1072);
      v111 = *(v0 + 664);
      v21 = *(v0 + 608);
      v22 = *(v0 + 576);
      v24 = *(v0 + 272);
      v23 = *(v0 + 280);
      v25 = *(v0 + 264);
      v116 = *(v0 + 256);
      v27 = *(v0 + 208);
      v26 = *(v0 + 216);
      v28 = *(v26 + 16);
      v28(v23, v20 + ((*(v0 + 1256) + 32) & ~*(v0 + 1256)) + *(v26 + 72) * v19, v27);
      static Log.session.getter();
      v28(v24, v23, v27);
      v114(v21, v111, v22);
      v28(v25, v23, v27);
      v112 = v28;
      v28(v116, v23, v27);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      v119 = v29;
      v31 = os_log_type_enabled(v29, v30);
      v117 = *(v0 + 1088);
      if (v31)
      {
        v32 = *(v0 + 736);
        v98 = *(v0 + 680);
        v33 = *(v0 + 608);
        v34 = *(v0 + 576);
        v108 = *(v0 + 456);
        v109 = *(v0 + 864);
        v106 = *(v0 + 416);
        v35 = *(v0 + 272);
        v99 = *(v0 + 688);
        v100 = *(v0 + 264);
        v101 = *(v0 + 256);
        v36 = *(v0 + 208);
        v37 = *(v0 + 216);
        type = v30;
        v38 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        *v38 = 134218754;
        v39 = *(SyncedPhotosFace.photos.getter() + 16);

        v40 = *(v37 + 8);
        v40(v35, v36);
        *(v38 + 4) = v39;
        *(v38 + 12) = 2080;
        dispatch thunk of PhotosFaceID.id.getter();
        v117(v33, v34);
        sub_1000FAACC(&qword_10012A1C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        v43 = v42;
        (*(v99 + 8))(v32, v98);
        v44 = sub_100102F80(v41, v43, &v121);

        *(v38 + 14) = v44;
        *(v38 + 22) = 2048;
        v45 = SyncedPhotosFace.day.getter();
        v40(v100, v36);
        *(v38 + 24) = v45;
        *(v38 + 32) = 2080;
        SyncedPhotosFace.photos.getter();
        v40(v101, v36);
        v46 = Array.description.getter();
        v48 = v47;

        v49 = sub_100102F80(v46, v48, &v121);

        *(v38 + 34) = v49;
        _os_log_impl(&_mh_execute_header, v119, type, "Relating %ld photos for face %s on day %ld, photos = %s", v38, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {
        v50 = *(v0 + 608);
        v51 = *(v0 + 576);
        v108 = *(v0 + 456);
        v109 = *(v0 + 864);
        v106 = *(v0 + 416);
        v52 = *(v0 + 272);
        v53 = *(v0 + 256);
        v54 = *(v0 + 208);
        v40 = *(*(v0 + 216) + 8);
        v40(*(v0 + 264), v54);
        v40(v52, v54);
        v40(v53, v54);
        v117(v50, v51);
      }

      v109(v108, v106);
      *(v0 + 1192) = v40;
      v55 = *(v0 + 1112);
      v56 = SyncedPhotosFace.day.getter();
      if (*(v55 + 16))
      {
        v57 = sub_100057BD0(v56);
        if (v58)
        {
          break;
        }
      }

      v59 = *(v0 + 280);
      v60 = *(v0 + 248);
      v61 = *(v0 + 208);
      static Log.session.getter();
      v112(v60, v59, v61);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();
      v64 = os_log_type_enabled(v62, v63);
      v65 = *(v0 + 248);
      v66 = *(v0 + 208);
      if (v64)
      {
        v12 = swift_slowAlloc();
        *v12 = 134217984;
        v13 = SyncedPhotosFace.day.getter();
        v40(v65, v66);
        *(v12 + 4) = v13;
        _os_log_impl(&_mh_execute_header, v62, v63, "Cannot find the true day for day %ld; skipping", v12, 0xCu);
      }

      else
      {
        v40(*(v0 + 248), *(v0 + 208));
      }

      v14 = *(v0 + 864);
      v15 = *(v0 + 448);
      v16 = *(v0 + 416);

      v14(v15, v16);
      v17 = *(v0 + 1120);
      v18 = *(v0 + 1184) + 1;
      v3 = (*(v0 + 1192))(*(v0 + 280), *(v0 + 208));
      if (v18 == v17)
      {
        goto LABEL_2;
      }
    }

    v67 = *(*(*(v0 + 1112) + 56) + 8 * v57);
    if (SyncedPhotosFace.day.getter() != v67)
    {
      v118 = v67;
      v120 = v40;
      v68 = *(v0 + 1072);
      v69 = *(v0 + 664);
      v70 = *(v0 + 600);
      v71 = *(v0 + 576);
      v72 = *(v0 + 280);
      v73 = *(v0 + 240);
      v74 = *(v0 + 208);
      static Log.session.getter();
      v68(v70, v69, v71);
      v112(v73, v72, v74);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.default.getter();
      v77 = os_log_type_enabled(v75, v76);
      v78 = *(v0 + 1088);
      if (v77)
      {
        v115 = *(v0 + 864);
        v79 = *(v0 + 736);
        v80 = *(v0 + 688);
        v102 = *(v0 + 680);
        v107 = v76;
        v81 = *(v0 + 600);
        v82 = *(v0 + 576);
        v113 = *(v0 + 440);
        v110 = *(v0 + 416);
        v105 = *(v0 + 208);
        *typea = *(v0 + 240);
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v121 = v84;
        *v83 = 136315650;
        dispatch thunk of PhotosFaceID.id.getter();
        v78(v81, v82);
        sub_1000FAACC(&qword_10012A1C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v85 = dispatch thunk of CustomStringConvertible.description.getter();
        v87 = v86;
        (*(v80 + 8))(v79, v102);
        v88 = sub_100102F80(v85, v87, &v121);

        *(v83 + 4) = v88;
        *(v83 + 12) = 2048;
        v89 = SyncedPhotosFace.day.getter();
        v120(*typea, v105);
        *(v83 + 14) = v89;
        *(v83 + 22) = 2048;
        v67 = v118;
        *(v83 + 24) = v118;
        _os_log_impl(&_mh_execute_header, v75, v107, "Face %s: mapping day %ld to %ld", v83, 0x20u);
        sub_10000C304(v84);

        v115(v113, v110);
      }

      else
      {
        v90 = *(v0 + 864);
        v91 = *(v0 + 600);
        v92 = *(v0 + 576);
        v93 = *(v0 + 440);
        v94 = *(v0 + 416);
        v120(*(v0 + 240), *(v0 + 208));
        v78(v91, v92);

        v90(v93, v94);
        v67 = v118;
      }
    }

    v95 = SyncedPhotosFace.photos.getter();
    *(v0 + 1200) = v95;
    dispatch thunk of PhotosFaceID.id.getter();
    v96 = swift_task_alloc();
    *(v0 + 1208) = v96;
    *v96 = v0;
    v96[1] = sub_1000A0E10;
    v7 = *(v0 + 1008);
    v6 = *(v0 + 768);
    v4 = *(v0 + 704);
    v3 = v95;
    v5 = v67;

    return dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(v3, v4, v5, v6, v7);
  }
}

uint64_t sub_1000A1A7C()
{
  v150 = v0;
  (v0[149])(v0[35], v0[26]);
  v1 = v0[134];
  v2 = v0[83];
  v3 = v0[77];
  v4 = v0[72];
  static Log.session.getter();
  v1(v3, v2, v4);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v147 = v0;
  if (os_log_type_enabled(v5, v6))
  {
    v121 = v0[134];
    v136 = v0[108];
    v7 = v0[84];
    v140 = v0[83];
    v8 = v0[77];
    v9 = v0[72];
    v133 = v0[52];
    bufa = v0[58];
    v10 = v0[136];
    v11 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v149 = v124;
    *v11 = 136315394;
    v121(v7, v8, v9);
    v10(v8, v9);
    sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v10(v7, v9);
    v15 = sub_100102F80(v12, v14, &v149);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v122 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to update face %s: %@", v11, 0x16u);
    sub_10000C460(v122, &qword_100129EF8, &qword_100108C70);

    sub_10000C304(v124);

    v136(bufa, v133);
    v17 = (v10)(v140, v9);
  }

  else
  {
    v20 = v0[108];
    loga = v0[83];
    v21 = v0[72];
    v22 = v0[58];
    v23 = v0[52];
    v24 = v5;
    v25 = v0[136];
    v25(v0[77], v21);

    v20(v22, v23);
    v25(loga, v21);
  }

  v26 = v0[130];
  v27 = v0[129];
  if (!v27)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v39 = v0[128];
LABEL_16:
    v44 = v0[84];
    v45 = v0[73];
    v46 = v0[72];
    v47 = v147[20];
    v48 = v147[19];
    v49 = v147[17];
    v50 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v51 = v50 | (v26 << 6);
    (*(v45 + 16))(v44, *(v39 + 48) + *(v45 + 72) * v51, v46);
    v52 = *(*(v39 + 56) + 8 * v51);
    v53 = *(v48 + 48);
    (*(v45 + 32))(v49, v44, v46);
    *(v49 + v53) = v52;
    (*(v47 + 56))(v49, 0, 1, v48);
    v0 = v147;

    v42 = v26;
LABEL_17:
    v0[130] = v42;
    v0[129] = v27;
    v54 = v0[19];
    v55 = v0[20];
    v56 = v0[18];
    sub_10005DD90(v0[17], v56, &qword_10012B490, &qword_10010A268);
    if ((*(v55 + 48))(v56, 1, v54) == 1)
    {
      break;
    }

    v57 = v0[83];
    v58 = v0[73];
    v59 = *(v0[18] + *(v0[19] + 48));
    v0[131] = v59;
    (*(v58 + 32))(v57);
    v60 = v0[83];
    if (*(v59 + 16))
    {
      v75 = v0[81];
      v76 = v0[73];
      v77 = v0[72];
      static Log.session.getter();
      v78 = *(v76 + 16);
      v0[134] = v78;
      v0[135] = (v76 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v78(v75, v60, v77);
      swift_bridgeObjectRetain_n();

      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v79, v80))
      {
        v132 = v80;
        v135 = v79;
        v142 = v0[96];
        logb = v0[124];
        v81 = v0[84];
        v126 = v0[81];
        bufb = v0[73];
        v82 = v0[72];
        v138 = *(v0 + 125);
        v83 = swift_slowAlloc();
        v147[11] = swift_slowAlloc();
        *v83 = 136315650;
        v84 = PhotosFaceType.description.getter();
        v86 = v85;

        v0 = v147;
        v87 = sub_100102F80(v84, v86, v147 + 11);

        *(v83 + 4) = v87;
        *(v83 + 12) = 2080;
        v78(v81, v126, v82);
        v88 = *(bufb + 1);
        v88(v126, v82);
        sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
        v89 = dispatch thunk of CustomStringConvertible.description.getter();
        v91 = v90;
        v127 = v88;
        v88(v81, v82);
        v92 = sub_100102F80(v89, v91, v147 + 11);

        *(v83 + 14) = v92;
        buf = v83;
        *(v83 + 22) = 2080;
        v93 = swift_task_alloc();
        *v93 = v82;
        *(v93 + 8) = logb;
        *(v93 + 16) = v142;
        *(v93 + 24) = v138;
        swift_getKeyPath();

        v94 = *(v59 + 16);
        if (v94)
        {
          v95 = v147[27];
          v147[12] = _swiftEmptyArrayStorage;
          sub_10005C54C(0, v94, 0);
          v96 = v147[12];
          v97 = v59 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
          v143 = *(v95 + 72);
          v139 = *(v95 + 16);
          do
          {
            v98 = v147[36];
            v100 = v147[26];
            v99 = v147[27];
            v139(v98, v97, v100);
            swift_getAtKeyPath();
            v102 = v147[7];
            v101 = v147[8];
            (*(v99 + 8))(v98, v100);
            v147[12] = v96;
            v104 = *(v96 + 16);
            v103 = *(v96 + 24);
            if (v104 >= v103 >> 1)
            {
              sub_10005C54C((v103 > 1), v104 + 1, 1);
              v96 = v147[12];
            }

            *(v96 + 16) = v104 + 1;
            v105 = v96 + 16 * v104;
            *(v105 + 32) = v102;
            *(v105 + 40) = v101;
            v97 += v143;
            --v94;
          }

          while (v94);

          v0 = v147;
        }

        else
        {
        }

        v113 = v0[108];
        v114 = v0[62];
        v115 = v0[52];
        v116 = Array.description.getter();
        v118 = v117;

        v119 = sub_100102F80(v116, v118, v0 + 11);

        *(buf + 3) = v119;
        _os_log_impl(&_mh_execute_header, v135, v132, "Inserting %s %s: %s", buf, 0x20u);
        swift_arrayDestroy();

        v113(v114, v115);
        v112 = v127;
      }

      else
      {
        v148 = v0[108];
        v106 = v0[81];
        v107 = v0[73];
        v108 = v0[72];
        v109 = v0[62];
        v110 = v0[52];

        v111 = v106;
        v112 = *(v107 + 8);
        v112(v111, v108);

        v148(v109, v110);
      }

      v0[136] = v112;
      v120 = swift_task_alloc();
      v0[137] = v120;
      *v120 = v0;
      v120[1] = sub_10009B6A0;
      v19 = v0[126];
      v18 = v0[96];
      v17 = v0[83];

      return dispatch thunk of PhotosFaceIDDatabase.insert(id:)(v17, v18, v19);
    }

    v61 = v0[82];
    v62 = v0[73];
    v63 = v0[72];

    static Log.session.getter();
    v64 = *(v62 + 16);
    v64(v61, v60, v63);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    log = v65;
    v67 = os_log_type_enabled(v65, v66);
    v141 = v0[108];
    if (v67)
    {
      v28 = v0[84];
      v134 = v0[83];
      v29 = v0[82];
      v30 = v0[73];
      v137 = v42;
      v31 = v147[72];
      v125 = v147[63];
      v131 = v147[52];
      v123 = v66;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v149 = v33;
      *v32 = 136315138;
      v64(v28, v29, v31);
      v34 = *(v30 + 8);
      v34(v29, v31);
      sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      v34(v28, v31);
      v38 = sub_100102F80(v35, v37, &v149);

      *(v32 + 4) = v38;
      _os_log_impl(&_mh_execute_header, log, v123, "There are no valid synced faces per day for %s; skipping", v32, 0xCu);
      sub_10000C304(v33);

      v141(v125, v131);
      v0 = v147;
      v17 = (v34)(v134, v31);
      v26 = v137;
      if (!v27)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v68 = v0[83];
      v69 = v0[72];
      v70 = v0[63];
      v71 = v0[52];
      v72 = *(v0[73] + 8);
      v72(v0[82], v69);

      v141(v70, v71);
      v17 = v72(v68, v69);
      v26 = v42;
      if (!v27)
      {
LABEL_8:
        v40 = ((1 << *(v0 + 1262)) + 63) >> 6;
        if (v40 <= (v26 + 1))
        {
          v41 = v26 + 1;
        }

        else
        {
          v41 = ((1 << *(v0 + 1262)) + 63) >> 6;
        }

        v42 = v41 - 1;
        while (1)
        {
          v43 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v43 >= v40)
          {
            (*(v0[20] + 56))(v0[17], 1, 1, v0[19]);
            v27 = 0;
            goto LABEL_17;
          }

          v39 = v0[128];
          v27 = *(v39 + 8 * v43 + 64);
          ++v26;
          if (v27)
          {
            v26 = v43;
            goto LABEL_16;
          }
        }

        __break(1u);
        return dispatch thunk of PhotosFaceIDDatabase.insert(id:)(v17, v18, v19);
      }
    }
  }

  v73 = swift_task_alloc();
  v0[132] = v73;
  *v73 = v0;
  v73[1] = sub_10009B570;

  return sub_10006254C();
}

uint64_t sub_1000A2810(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v4[156] = v1;
    v5 = v4[103];
    v6 = v4[102];
    v7 = sub_1000FBF1C;
  }

  else
  {
    v4[154] = a1;
    v7 = sub_1000A2974;
    v6 = 0;
    v5 = 0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000A2974()
{
  v0[155] = sub_10005F8E0(v0[154]);
  v1 = v0[103];
  v2 = v0[102];

  return _swift_task_switch(sub_1000A29E0, v2, v1);
}

uint64_t sub_1000A29E0()
{
  v28 = v0;
  v1 = *(v0 + 1240);

  sub_10006C038(v2);

  SyncFacesRequest.init(trackedFaces:cachedIdentifiers:)();
  static Log.session.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v24 = *(v0 + 424);
    v25 = *(v0 + 416);
    v26 = *(v0 + 544);
    v5 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v5 = 136315650;
    v6 = PhotosFaceType.description.getter();
    v8 = v7;

    v9 = sub_100102F80(v6, v8, &v27);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    v10 = *(v1 + 16);

    *(v5 + 14) = v10;

    *(v5 + 22) = 2080;
    sub_1000FAACC(&qword_10012A1F8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = Set.description.getter();
    v13 = v12;

    v14 = sub_100102F80(v11, v13, &v27);

    *(v5 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requesting %s with %ld cached photos and faces: %s", v5, 0x20u);
    swift_arrayDestroy();

    v15 = *(v24 + 8);
    v15(v26, v25);
  }

  else
  {
    v16 = *(v0 + 544);
    v17 = *(v0 + 416);
    v18 = *(v0 + 424);
    swift_bridgeObjectRelease_n();

    v15 = *(v18 + 8);
    v15(v16, v17);
  }

  *(v0 + 864) = v15;
  v19 = *(*(v0 + 128) + 16);
  *(v0 + 1261) = v19;
  v20 = swift_task_alloc();
  *(v0 + 872) = v20;
  *v20 = v0;
  v20[1] = sub_1000959E0;
  v21 = *(v0 + 568);
  v22 = *(v0 + 408);

  return sub_100088E80(v22, v19, v21);
}

uint64_t sub_1000A2D30()
{
  v1[16] = v0;
  sub_10000560C(&qword_10012B520, &qword_10010A588);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v2 = sub_10000560C(&qword_10012B528, &qword_10010A590);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v3 = type metadata accessor for StoredPhoto();
  v1[23] = v3;
  v1[24] = *(v3 - 8);
  v1[25] = swift_task_alloc();
  v4 = sub_10000560C(&qword_100129F60, &qword_100108D78);
  v1[26] = v4;
  v1[27] = *(v4 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  sub_10000560C(&qword_10012A710, &qword_100109610);
  v1[44] = swift_task_alloc();
  v5 = sub_10000560C(&qword_10012B530, &qword_10010A598);
  v1[45] = v5;
  v1[46] = *(v5 - 8);
  v1[47] = swift_task_alloc();
  v6 = sub_10000560C(&qword_10012B538, &qword_10010A5A0);
  v1[48] = v6;
  v1[49] = *(v6 - 8);
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v1[52] = v7;
  v1[53] = *(v7 - 8);
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v8 = type metadata accessor for SyncFacesRequest();
  v1[69] = v8;
  v1[70] = *(v8 - 8);
  v1[71] = swift_task_alloc();
  v9 = type metadata accessor for DailyID();
  v1[72] = v9;
  v1[73] = *(v9 - 8);
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v1[85] = v10;
  v1[86] = *(v10 - 8);
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v1[94] = type metadata accessor for CommunicationActor();
  v1[95] = static CommunicationActor.shared.getter();
  v11 = type metadata accessor for DailyDatabase();
  v1[96] = v11;
  v12 = sub_1000FAACC(&qword_10012A468, &type metadata accessor for DailyDatabase, &protocol conformance descriptor for DailyDatabase);
  v1[97] = v12;
  v13 = swift_task_alloc();
  v1[98] = v13;
  *v13 = v1;
  v13[1] = sub_1000A345C;

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()(v11, v12);
}