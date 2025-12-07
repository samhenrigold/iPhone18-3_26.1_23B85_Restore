char *sub_10001C234(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001CC8(&qword_10003D970, &qword_10002EF98);
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

_BYTE **sub_10001C328(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_10001C338@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_10001C368(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10001C45C;

  return v5(v2 + 32);
}

uint64_t sub_10001C45C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v6 = *v0;

  v3 = *(v1 + 36);
  *v2 = *(v1 + 32);
  *(v2 + 4) = v3;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10001C578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_100001CC8(&qword_10003CE40, &qword_10002E4E8);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = type metadata accessor for DaemonToShell.TwoWayMessage();
  v3[14] = swift_task_alloc();
  CrashRequest = type metadata accessor for NextCrashRequest();
  v3[15] = CrashRequest;
  v3[16] = *(CrashRequest - 8);
  v3[17] = swift_task_alloc();
  v6 = type metadata accessor for TransportReply();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  type metadata accessor for CrashListenerInterface.TwoWayMessage();
  v3[22] = swift_task_alloc();
  v7 = sub_100001CC8(&qword_10003D938, &qword_10002EF70);
  v3[23] = v7;
  v3[24] = *(v7 - 8);
  v3[25] = swift_task_alloc();
  sub_100001CC8(&qword_10003D940, &qword_10002EF78);
  v3[26] = swift_task_alloc();
  v8 = sub_100001CC8(&qword_10003D948, &qword_10002EF80);
  v3[27] = v8;
  v3[28] = *(v8 - 8);
  v3[29] = swift_task_alloc();
  type metadata accessor for CrashListenerService(0);
  v3[30] = swift_task_alloc();
  v9 = sub_100001CC8(&qword_10003D950, &qword_10002EF88);
  v3[31] = v9;
  v3[32] = *(v9 - 8);
  v3[33] = swift_task_alloc();
  v10 = sub_100001CC8(&qword_10003D958, &qword_10002EF90);
  v3[34] = v10;
  v3[35] = *(v10 - 8);
  v3[36] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v3[37] = v11;
  v3[38] = *(v11 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();

  return _swift_task_switch(sub_10001C9D4, 0, 0);
}

uint64_t sub_10001C9D4(uint64_t a1)
{
  v23 = v1;
  static Logger.uv.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[38];
    v20 = v1[37];
    v21 = v1[40];
    v5 = v1[7];
    v6 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10001BD80(0xD000000000000014, 0x8000000100030A50, &v22);
    *(v6 + 12) = 2080;
    v1[6] = v5;
    sub_100001CC8(&qword_10003D7D0, qword_10002EE68);
    sub_100004334(&qword_10003D968, &qword_10003D7D0, qword_10002EE68, &protocol conformance descriptor for DaemonConnection<A>);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = sub_10001BD80(v7, v8, &v22);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Creating %s service for connection: %s", v6, 0x16u);
    swift_arrayDestroy();

    v10 = *(v4 + 8);
    v10(v21, v20);
  }

  else
  {
    v11 = v1[40];
    v12 = v1[37];
    v13 = v1[38];

    v10 = *(v13 + 8);
    v10(v11, v12);
  }

  v1[41] = v10;
  v14 = v1[7];
  v1[2] = v14;
  type metadata accessor for CrashListenerInterface();
  v15 = sub_100001CC8(&qword_10003D7D0, qword_10002EE68);
  v1[42] = v15;
  v16 = sub_100004334(&qword_10003D960, &qword_10003D7D0, qword_10002EE68, &protocol conformance descriptor for DaemonConnection<A>);
  Transport.activate<A>(forReceivingMessages:)();
  v1[3] = v14;
  v17 = swift_task_alloc();
  v1[43] = v17;
  *v17 = v1;
  v17[1] = sub_10001CCF4;
  v18 = v1[33];

  return Transport.transportSender<A>(for:)(v18, &type metadata for Never, v15, &type metadata for Never, v16, &protocol witness table for Never);
}

uint64_t sub_10001CCF4()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_10001CF18;
  }

  else
  {
    v2 = sub_10001CE08;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001CE08()
{
  v1 = v0[33];
  v2 = v0[8];
  v3 = DaemonConnection.invalidationHandle.getter();
  v2(v1, v3);

  AsyncStream.makeAsyncIterator()();
  v4 = swift_task_alloc();
  v0[45] = v4;
  *v4 = v0;
  v4[1] = sub_10001D23C;
  v5 = v0[26];
  v6 = v0[27];

  return AsyncStream.Iterator.next(isolation:)(v5, 0, 0, v6);
}

uint64_t sub_10001CF18(uint64_t a1)
{
  v24 = v1;
  static Logger.uv.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v18 = v1[37];
    v19 = v1[39];
    v21 = v1[41];
    v22 = v1[36];
    v4 = v1[35];
    v20 = v1[34];
    v5 = v1[7];
    v6 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10001BD80(0xD000000000000014, 0x8000000100030A50, &v23);
    *(v6 + 12) = 2080;
    v1[4] = v5;
    sub_100004334(&qword_10003D968, &qword_10003D7D0, qword_10002EE68, &protocol conformance descriptor for DaemonConnection<A>);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = sub_10001BD80(v7, v8, &v23);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not activate %s service for connection: %s", v6, 0x16u);
    swift_arrayDestroy();

    v21(v19, v18);
    (*(v4 + 8))(v22, v20);
  }

  else
  {
    v10 = v1[41];
    v11 = v1[39];
    v13 = v1[36];
    v12 = v1[37];
    v14 = v1[34];
    v15 = v1[35];

    v10(v11, v12);
    (*(v15 + 8))(v13, v14);
  }

  v16 = v1[1];

  return v16();
}

uint64_t sub_10001D23C()
{

  return _swift_task_switch(sub_10001D338, 0, 0);
}

uint64_t sub_10001D338()
{
  v1 = v0[26];
  if ((*(v0[24] + 48))(v1, 1, v0[23]) == 1)
  {
    v3 = v0[35];
    v2 = v0[36];
    v5 = v0[33];
    v4 = v0[34];
    v6 = v0[31];
    v7 = v0[32];
    v8 = v0[30];
    (*(v0[28] + 8))(v0[29], v0[27]);
    sub_100021C10(v8, type metadata accessor for CrashListenerService);
    (*(v7 + 8))(v5, v6);
    (*(v3 + 8))(v2, v4);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[22];
    v12 = v0[15];
    v13 = v0[16];
    sub_100021C70(v1, v0[25], &qword_10003D938, &qword_10002EF70);
    TransportMessage<>.body.getter();
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      v14 = v0[21];
      v15 = v0[18];
      v16 = v0[19];
      TransportMessage<>.reply.getter();
      TransportReply.send(file:line:column:function:)();
      (*(v16 + 8))(v14, v15);
      sub_10000D330(v0[25], &qword_10003D938, &qword_10002EF70);
      v17 = swift_task_alloc();
      v0[45] = v17;
      *v17 = v0;
      v17[1] = sub_10001D23C;
      v18 = v0[26];
      v19 = v0[27];

      return AsyncStream.Iterator.next(isolation:)(v18, 0, 0, v19);
    }

    else
    {
      v21 = v0[16];
      v20 = v0[17];
      v23 = v0[14];
      v22 = v0[15];
      (*(v21 + 32))(v20, v0[22], v22);
      (*(v21 + 16))(v23, v20, v22);
      swift_storeEnumTagMultiPayload();
      TransportMessage<>.reply.getter();
      type metadata accessor for PreviewShellProxy(0);
      v24 = swift_task_alloc();
      v0[46] = v24;
      v25 = sub_100001CC8(&qword_10003CD90, &qword_10002E4A0);
      *v24 = v0;
      v24[1] = sub_10001D760;

      return ConcurrentOnDemand.value.getter(v0 + 5, v25);
    }
  }
}

uint64_t sub_10001D760()
{
  v2 = *v1;
  v2[47] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10001DA50, 0, 0);
  }

  else
  {
    v2[48] = v2[5];
    v3 = type metadata accessor for DaemonToShell();
    v4 = swift_task_alloc();
    v2[49] = v4;
    v5 = sub_100020440(&qword_10003CE48, &type metadata accessor for DaemonToShell, &protocol conformance descriptor for DaemonToShell);
    *v4 = v2;
    v4[1] = sub_10001D934;
    v6 = v2[12];

    return ShellConnection.makeSender<A>(for:)(v6, v3, v3, v5);
  }
}

uint64_t sub_10001D934()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_10001DD80;
  }

  else
  {

    v2 = sub_10001DBB4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001DA50()
{
  TransportReply.send(error:file:line:column:function:)();

  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  (*(v0[19] + 8))(v0[20], v0[18]);
  sub_100021C10(v4, &type metadata accessor for DaemonToShell.TwoWayMessage);
  (*(v3 + 8))(v1, v2);
  sub_10000D330(v0[25], &qword_10003D938, &qword_10002EF70);
  v5 = swift_task_alloc();
  v0[45] = v5;
  *v5 = v0;
  v5[1] = sub_10001D23C;
  v6 = v0[26];
  v7 = v0[27];

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v7);
}

uint64_t sub_10001DBB4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_100004334(&qword_10003CE50, &qword_10003CE40, &qword_10002E4E8, &protocol conformance descriptor for ShellConnectionSender<A>);
  sub_100020440(&qword_10003CE58, &type metadata accessor for DaemonToShell.TwoWayMessage, &protocol conformance descriptor for DaemonToShell.TwoWayMessage);
  TransportSenderProtocol<>.send(message:reply:)();
  (*(v2 + 8))(v1, v3);
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[14];
  (*(v0[19] + 8))(v0[20], v0[18]);
  sub_100021C10(v7, &type metadata accessor for DaemonToShell.TwoWayMessage);
  (*(v6 + 8))(v4, v5);
  sub_10000D330(v0[25], &qword_10003D938, &qword_10002EF70);
  v8 = swift_task_alloc();
  v0[45] = v8;
  *v8 = v0;
  v8[1] = sub_10001D23C;
  v9 = v0[26];
  v10 = v0[27];

  return AsyncStream.Iterator.next(isolation:)(v9, 0, 0, v10);
}

uint64_t sub_10001DD80()
{

  TransportReply.send(error:file:line:column:function:)();

  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  (*(v0[19] + 8))(v0[20], v0[18]);
  sub_100021C10(v4, &type metadata accessor for DaemonToShell.TwoWayMessage);
  (*(v3 + 8))(v1, v2);
  sub_10000D330(v0[25], &qword_10003D938, &qword_10002EF70);
  v5 = swift_task_alloc();
  v0[45] = v5;
  *v5 = v0;
  v5[1] = sub_10001D23C;
  v6 = v0[26];
  v7 = v0[27];

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v7);
}

uint64_t sub_10001DEEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001DF4C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001DF84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000DADC;

  return sub_10001B654(a1, v4);
}

uint64_t sub_10001E03C(uint64_t a1)
{
  v4 = *(sub_100001CC8(&qword_10003D930, "~)") - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10000DADC;

  return sub_100019E28(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_10001E160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_100001CC8(&qword_10003D2A8, &qword_10002EAB8);
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  sub_100001CC8(&qword_10003D978, &qword_10002EFD8);
  v3[12] = swift_task_alloc();
  v5 = sub_100001CC8(&qword_10003D980, &qword_10002EFE0);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  type metadata accessor for ShellPreviewService(0);
  v3[16] = swift_task_alloc();
  v6 = sub_100001CC8(&qword_10003D950, &qword_10002EF88);
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v7 = sub_100001CC8(&qword_10003D988, &qword_10002EFE8);
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v3[23] = v8;
  v3[24] = *(v8 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return _swift_task_switch(sub_10001E434, 0, 0);
}

uint64_t sub_10001E434(uint64_t a1)
{
  v23 = v1;
  static Logger.uv.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[24];
    v20 = v1[23];
    v21 = v1[26];
    v5 = v1[6];
    v6 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10001BD80(0xD000000000000013, 0x8000000100030B30, &v22);
    *(v6 + 12) = 2080;
    v1[5] = v5;
    sub_100001CC8(&qword_10003D7D0, qword_10002EE68);
    sub_100004334(&qword_10003D968, &qword_10003D7D0, qword_10002EE68, &protocol conformance descriptor for DaemonConnection<A>);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = sub_10001BD80(v7, v8, &v22);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Creating %s service for connection: %s", v6, 0x16u);
    swift_arrayDestroy();

    v10 = *(v4 + 8);
    v10(v21, v20);
  }

  else
  {
    v11 = v1[26];
    v12 = v1[23];
    v13 = v1[24];

    v10 = *(v13 + 8);
    v10(v11, v12);
  }

  v1[27] = v10;
  v14 = v1[6];
  v1[2] = v14;
  type metadata accessor for PreviewServiceInterface();
  v15 = sub_100001CC8(&qword_10003D7D0, qword_10002EE68);
  v1[28] = v15;
  v16 = sub_100004334(&qword_10003D960, &qword_10003D7D0, qword_10002EE68, &protocol conformance descriptor for DaemonConnection<A>);
  Transport.activate<A>(forReceivingMessages:)();
  v1[3] = v14;
  v17 = swift_task_alloc();
  v1[29] = v17;
  *v17 = v1;
  v17[1] = sub_10001E754;
  v18 = v1[19];

  return Transport.transportSender<A>(for:)(v18, &type metadata for Never, v15, &type metadata for Never, v16, &protocol witness table for Never);
}

uint64_t sub_10001E754()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_10001E978;
  }

  else
  {
    v2 = sub_10001E868;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001E868()
{
  v1 = v0[19];
  v2 = v0[7];
  v3 = DaemonConnection.invalidationHandle.getter();
  v2(v1, v3);

  AsyncStream.makeAsyncIterator()();
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_10001EC50;
  v5 = v0[12];
  v6 = v0[13];

  return AsyncStream.Iterator.next(isolation:)(v5, 0, 0, v6);
}

uint64_t sub_10001E978(uint64_t a1)
{
  v24 = v1;
  static Logger.uv.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v18 = v1[23];
    v19 = v1[25];
    v21 = v1[27];
    v22 = v1[22];
    v4 = v1[21];
    v20 = v1[20];
    v5 = v1[6];
    v6 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10001BD80(0xD000000000000013, 0x8000000100030B30, &v23);
    *(v6 + 12) = 2080;
    v1[4] = v5;
    sub_100004334(&qword_10003D968, &qword_10003D7D0, qword_10002EE68, &protocol conformance descriptor for DaemonConnection<A>);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = sub_10001BD80(v7, v8, &v23);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not activate %s service for connection: %s", v6, 0x16u);
    swift_arrayDestroy();

    v21(v19, v18);
    (*(v4 + 8))(v22, v20);
  }

  else
  {
    v10 = v1[27];
    v11 = v1[25];
    v13 = v1[22];
    v12 = v1[23];
    v14 = v1[20];
    v15 = v1[21];

    v10(v11, v12);
    (*(v15 + 8))(v13, v14);
  }

  v16 = v1[1];

  return v16();
}

uint64_t sub_10001EC50()
{

  return _swift_task_switch(sub_10001ED4C, 0, 0);
}

uint64_t sub_10001ED4C()
{
  v1 = v0[12];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    v3 = v0[21];
    v2 = v0[22];
    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[17];
    v7 = v0[18];
    v8 = v0[16];
    (*(v0[14] + 8))(v0[15], v0[13]);
    sub_100021C10(v8, type metadata accessor for ShellPreviewService);
    (*(v7 + 8))(v5, v6);
    (*(v3 + 8))(v2, v4);

    v9 = v0[1];

    return v9();
  }

  else
  {
    sub_100021C70(v1, v0[11], &qword_10003D2A8, &qword_10002EAB8);
    v11 = swift_task_alloc();
    v0[32] = v11;
    *v11 = v0;
    v11[1] = sub_10001EF3C;
    v12 = v0[11];

    return sub_100009ECC(v12);
  }
}

uint64_t sub_10001EF3C()
{

  return _swift_task_switch(sub_10001F038, 0, 0);
}

uint64_t sub_10001F038()
{
  sub_10000D330(v0[11], &qword_10003D2A8, &qword_10002EAB8);
  v1 = swift_task_alloc();
  v0[31] = v1;
  *v1 = v0;
  v1[1] = sub_10001EC50;
  v2 = v0[12];
  v3 = v0[13];

  return AsyncStream.Iterator.next(isolation:)(v2, 0, 0, v3);
}

uint64_t sub_10001F0F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000DADC;

  return sub_10001C368(a1, v4);
}

uint64_t sub_10001F1AC(uint64_t a1)
{
  v4 = *(sub_100001CC8(&qword_10003D930, "~)") - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10000DADC;

  return sub_100019F10(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_10001F2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_100001CC8(&qword_10003D190, &qword_10002E7D8);
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  sub_100001CC8(&qword_10003D998, &qword_10002F030);
  v3[12] = swift_task_alloc();
  v5 = sub_100001CC8(&qword_10003D9A0, &qword_10002F038);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  type metadata accessor for AppManagerDaemon(0);
  v3[16] = swift_task_alloc();
  v6 = sub_100001CC8(&qword_10003D950, &qword_10002EF88);
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v7 = sub_100001CC8(&qword_10003D9A8, &qword_10002F040);
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v3[23] = v8;
  v3[24] = *(v8 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return _swift_task_switch(sub_10001F5A4, 0, 0);
}

uint64_t sub_10001F5A4(uint64_t a1)
{
  v23 = v1;
  static Logger.uv.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[24];
    v20 = v1[23];
    v21 = v1[26];
    v5 = v1[6];
    v6 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10001BD80(0xD000000000000010, 0x8000000100030B70, &v22);
    *(v6 + 12) = 2080;
    v1[5] = v5;
    sub_100001CC8(&qword_10003D7D0, qword_10002EE68);
    sub_100004334(&qword_10003D968, &qword_10003D7D0, qword_10002EE68, &protocol conformance descriptor for DaemonConnection<A>);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = sub_10001BD80(v7, v8, &v22);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Creating %s service for connection: %s", v6, 0x16u);
    swift_arrayDestroy();

    v10 = *(v4 + 8);
    v10(v21, v20);
  }

  else
  {
    v11 = v1[26];
    v12 = v1[23];
    v13 = v1[24];

    v10 = *(v13 + 8);
    v10(v11, v12);
  }

  v1[27] = v10;
  v14 = v1[6];
  v1[2] = v14;
  type metadata accessor for AppManagerInterface();
  v15 = sub_100001CC8(&qword_10003D7D0, qword_10002EE68);
  v1[28] = v15;
  v16 = sub_100004334(&qword_10003D960, &qword_10003D7D0, qword_10002EE68, &protocol conformance descriptor for DaemonConnection<A>);
  Transport.activate<A>(forReceivingMessages:)();
  v1[3] = v14;
  v17 = swift_task_alloc();
  v1[29] = v17;
  *v17 = v1;
  v17[1] = sub_10001F8C4;
  v18 = v1[19];

  return Transport.transportSender<A>(for:)(v18, &type metadata for Never, v15, &type metadata for Never, v16, &protocol witness table for Never);
}

uint64_t sub_10001F8C4()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_10001FAE8;
  }

  else
  {
    v2 = sub_10001F9D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001F9D8()
{
  v1 = v0[19];
  v2 = v0[7];
  v3 = DaemonConnection.invalidationHandle.getter();
  v2(v1, v3);

  AsyncStream.makeAsyncIterator()();
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_10001FDC0;
  v5 = v0[12];
  v6 = v0[13];

  return AsyncStream.Iterator.next(isolation:)(v5, 0, 0, v6);
}

uint64_t sub_10001FAE8(uint64_t a1)
{
  v24 = v1;
  static Logger.uv.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v18 = v1[23];
    v19 = v1[25];
    v21 = v1[27];
    v22 = v1[22];
    v4 = v1[21];
    v20 = v1[20];
    v5 = v1[6];
    v6 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10001BD80(0xD000000000000010, 0x8000000100030B70, &v23);
    *(v6 + 12) = 2080;
    v1[4] = v5;
    sub_100004334(&qword_10003D968, &qword_10003D7D0, qword_10002EE68, &protocol conformance descriptor for DaemonConnection<A>);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = sub_10001BD80(v7, v8, &v23);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not activate %s service for connection: %s", v6, 0x16u);
    swift_arrayDestroy();

    v21(v19, v18);
    (*(v4 + 8))(v22, v20);
  }

  else
  {
    v10 = v1[27];
    v11 = v1[25];
    v13 = v1[22];
    v12 = v1[23];
    v14 = v1[20];
    v15 = v1[21];

    v10(v11, v12);
    (*(v15 + 8))(v13, v14);
  }

  v16 = v1[1];

  return v16();
}

uint64_t sub_10001FDC0()
{

  return _swift_task_switch(sub_10001FEBC, 0, 0);
}

uint64_t sub_10001FEBC()
{
  v1 = v0[12];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    v3 = v0[21];
    v2 = v0[22];
    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[17];
    v7 = v0[18];
    v8 = v0[16];
    (*(v0[14] + 8))(v0[15], v0[13]);
    sub_100021C10(v8, type metadata accessor for AppManagerDaemon);
    (*(v7 + 8))(v5, v6);
    (*(v3 + 8))(v2, v4);

    v9 = v0[1];

    return v9();
  }

  else
  {
    sub_100021C70(v1, v0[11], &qword_10003D190, &qword_10002E7D8);
    v11 = swift_task_alloc();
    v0[32] = v11;
    *v11 = v0;
    v11[1] = sub_1000200AC;
    v12 = v0[11];

    return sub_100006690(v12);
  }
}

uint64_t sub_1000200AC()
{

  return _swift_task_switch(sub_1000201A8, 0, 0);
}

uint64_t sub_1000201A8()
{
  sub_10000D330(v0[11], &qword_10003D190, &qword_10002E7D8);
  v1 = swift_task_alloc();
  v0[31] = v1;
  *v1 = v0;
  v1[1] = sub_10001FDC0;
  v2 = v0[12];
  v3 = v0[13];

  return AsyncStream.Iterator.next(isolation:)(v2, 0, 0, v3);
}

uint64_t sub_1000202CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000DADC;

  return sub_10001709C(a1, v4, v5, v7, v6);
}

uint64_t sub_10002038C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000DADC;

  return sub_100017B6C(a1, v4, v5, v6);
}

uint64_t sub_100020440(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002048C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002538;

  return sub_100013570(a1, v4, v5, v7, v6);
}

uint64_t sub_100020588()
{
  v1 = type metadata accessor for CancellationToken();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100020714(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000DADC;

  return sub_100017424(a1, v4, v5, v7, v6);
}

uint64_t sub_1000207D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100020818(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002538;

  return sub_1000181C8(a1, v4, v5, v6);
}

uint64_t sub_1000208CC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100020918()
{
  v1 = *(sub_100001CC8(&qword_10003D930, "~)") - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for CancellationToken();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100020A50(uint64_t a1)
{
  v4 = *(sub_100001CC8(&qword_10003D930, "~)") - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10000DADC;

  return sub_10001A244(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_100020B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_100001CC8(&qword_10003D9E8, &qword_10002F0D8);
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  sub_100001CC8(&qword_10003D9F0, &qword_10002F0E0);
  v3[12] = swift_task_alloc();
  v5 = sub_100001CC8(&qword_10003D9F8, &qword_10002F0E8);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  type metadata accessor for ProcessExitService(0);
  v3[16] = swift_task_alloc();
  v6 = sub_100001CC8(&qword_10003DA00, qword_10002F180);
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v7 = sub_100001CC8(&qword_10003DA08, &qword_10002F0F0);
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v3[23] = v8;
  v3[24] = *(v8 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_100020E54, 0, 0);
}

uint64_t sub_100020E54(uint64_t a1)
{
  v24 = v1;
  static Logger.uv.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[24];
    v21 = v1[23];
    v22 = v1[27];
    v5 = v1[6];
    v6 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10001BD80(0xD000000000000012, 0x8000000100030C30, &v23);
    *(v6 + 12) = 2080;
    v1[5] = v5;
    sub_100001CC8(&qword_10003D7D0, qword_10002EE68);
    sub_100004334(&qword_10003D968, &qword_10003D7D0, qword_10002EE68, &protocol conformance descriptor for DaemonConnection<A>);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = sub_10001BD80(v7, v8, &v23);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Creating %s service for connection: %s", v6, 0x16u);
    swift_arrayDestroy();

    v10 = *(v4 + 8);
    v10(v22, v21);
  }

  else
  {
    v11 = v1[27];
    v12 = v1[23];
    v13 = v1[24];

    v10 = *(v13 + 8);
    v10(v11, v12);
  }

  v1[28] = v10;
  v14 = v1[6];
  v1[2] = v14;
  type metadata accessor for HostToProcessExitService();
  v15 = sub_100001CC8(&qword_10003D7D0, qword_10002EE68);
  v1[29] = v15;
  v16 = sub_100004334(&qword_10003D960, &qword_10003D7D0, qword_10002EE68, &protocol conformance descriptor for DaemonConnection<A>);
  Transport.activate<A>(forReceivingMessages:)();
  v1[3] = v14;
  v17 = type metadata accessor for ProcessExitServiceToHost();
  v18 = swift_task_alloc();
  v1[30] = v18;
  *v18 = v1;
  v18[1] = sub_10002117C;
  v19 = v1[19];

  return Transport.transportSender<A>(for:)(v19, v17, v15, v17, v16, &protocol witness table for ProcessExitServiceToHost);
}

uint64_t sub_10002117C()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1000213A0;
  }

  else
  {
    v2 = sub_100021290;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100021290()
{
  v1 = v0[19];
  v2 = v0[7];
  v3 = DaemonConnection.invalidationHandle.getter();
  v2(v1, v3);

  AsyncStream.makeAsyncIterator()();
  v4 = swift_task_alloc();
  v0[32] = v4;
  *v4 = v0;
  v4[1] = sub_10002168C;
  v5 = v0[12];
  v6 = v0[13];

  return AsyncStream.Iterator.next(isolation:)(v5, 0, 0, v6);
}

uint64_t sub_1000213A0(uint64_t a1)
{
  v24 = v1;
  static Logger.uv.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v18 = v1[23];
    v19 = v1[26];
    v4 = v1[21];
    v21 = v1[28];
    v22 = v1[22];
    v20 = v1[20];
    v5 = v1[6];
    v6 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10001BD80(0xD000000000000012, 0x8000000100030C30, &v23);
    *(v6 + 12) = 2080;
    v1[4] = v5;
    sub_100004334(&qword_10003D968, &qword_10003D7D0, qword_10002EE68, &protocol conformance descriptor for DaemonConnection<A>);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = sub_10001BD80(v7, v8, &v23);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not activate %s service for connection: %s", v6, 0x16u);
    swift_arrayDestroy();

    v21(v19, v18);
    (*(v4 + 8))(v22, v20);
  }

  else
  {
    v10 = v1[28];
    v11 = v1[26];
    v12 = v1[23];
    v14 = v1[21];
    v13 = v1[22];
    v15 = v1[20];

    v10(v11, v12);
    (*(v14 + 8))(v13, v15);
  }

  v16 = v1[1];

  return v16();
}

uint64_t sub_10002168C()
{

  return _swift_task_switch(sub_100021788, 0, 0);
}

uint64_t sub_100021788()
{
  v1 = v0[12];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    v3 = v0[21];
    v2 = v0[22];
    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[17];
    v7 = v0[18];
    v8 = v0[16];
    (*(v0[14] + 8))(v0[15], v0[13]);
    sub_100021C10(v8, type metadata accessor for ProcessExitService);
    (*(v7 + 8))(v5, v6);
    (*(v3 + 8))(v2, v4);

    v9 = v0[1];

    return v9();
  }

  else
  {
    sub_100021C70(v1, v0[11], &qword_10003D9E8, &qword_10002F0D8);
    TransportMessage<>.body.getter();
    static Logger.uv.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67240192;
      *(v13 + 4) = ProcessID.pid.getter();
      _os_log_impl(&_mh_execute_header, v11, v12, "ProcessExitService received request to monitor %{public}d", v13, 8u);
    }

    v14 = v0[28];
    v15 = v0[25];
    v16 = v0[23];

    v14(v15, v16);
    v17 = ProcessID.pid.getter();
    v18 = swift_task_alloc();
    v0[33] = v18;
    *v18 = v0;
    v18[1] = sub_100021A58;

    return sub_100023EF8(v17);
  }
}

uint64_t sub_100021A58()
{

  return _swift_task_switch(sub_100021B54, 0, 0);
}

uint64_t sub_100021B54()
{
  sub_10000D330(v0[11], &qword_10003D9E8, &qword_10002F0D8);
  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_10002168C;
  v2 = v0[12];
  v3 = v0[13];

  return AsyncStream.Iterator.next(isolation:)(v2, 0, 0, v3);
}

uint64_t sub_100021C10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100021C70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001CC8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100021CF0(uint64_t a1)
{
  v4 = *(type metadata accessor for PreviewsService.Variant() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DADC;

  return sub_100015620(a1, v1 + v5);
}

uint64_t sub_100021DCC(uint64_t a1)
{
  v4 = *(type metadata accessor for PreviewsService.Variant() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DADC;

  return sub_100014DAC(a1, v1 + v5);
}

uint64_t sub_100021EF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for PreviewsService.Variant() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_100021F8C(uint64_t a1)
{
  v4 = *(type metadata accessor for PreviewsService.Variant() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DADC;

  return sub_1000044D0(a1, v1 + v5);
}

uint64_t sub_100022084(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100022114()
{
  type metadata accessor for CancellationToken();

  return sub_100004830();
}

void sub_100022248(uint64_t a1)
{
  v3 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v3 - 8);
  v5 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for TransportReply();
  v145 = *(v136 - 8);
  __chkstk_darwin(v136);
  v142 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for URL();
  v141 = *(v134 - 8);
  v7 = __chkstk_darwin(v134);
  v143 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v144 = &v124 - v10;
  v11 = __chkstk_darwin(v9);
  v135 = &v124 - v12;
  v13 = __chkstk_darwin(v11);
  v133 = &v124 - v14;
  __chkstk_darwin(v13);
  v148 = &v124 - v15;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v137 = (&v124 - v22);
  v23 = __chkstk_darwin(v21);
  v131 = &v124 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v124 - v26;
  v28 = __chkstk_darwin(v25);
  v130 = &v124 - v29;
  v30 = __chkstk_darwin(v28);
  v138 = &v124 - v31;
  __chkstk_darwin(v30);
  v33 = &v124 - v32;
  v151 = 0;
  v152 = 0xE000000000000000;
  v34 = [objc_opt_self() sharedManager];
  if (!v34)
  {
    __break(1u);
LABEL_33:
    __break(1u);
  }

  v35 = v34;
  v132 = v5;
  v36 = [v34 currentUser];

  if (!v36)
  {
    goto LABEL_33;
  }

  v129 = v27;
  v128 = v1;
  v37 = [v36 uid];

  LODWORD(v150) = v37;
  v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v38);

  v40 = v151;
  v39 = v152;
  static Logger.uv.getter();

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  v43 = os_log_type_enabled(v41, v42);
  v146 = a1;
  v139 = v40;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = v17;
    v46 = swift_slowAlloc();
    v151 = v46;
    *v44 = 136315138;
    *(v44 + 4) = sub_10001BD80(v40, v39, &v151);
    _os_log_impl(&_mh_execute_header, v41, v42, "Performing prewarm for user %s", v44, 0xCu);
    sub_1000041C8(v46);
    v17 = v45;

    v47 = v45;
  }

  else
  {

    v47 = v17;
  }

  v48 = *(v47 + 8);
  v48(v33, v16);
  v150 = 1;
  v49 = container_system_group_path_for_identifier();
  if (v49)
  {
    v50 = [objc_allocWithZone(NSURL) initFileURLWithFileSystemRepresentation:v49 isDirectory:1 relativeToURL:0];
    v51 = String._bridgeToObjectiveC()();
    v52 = [v50 URLByAppendingPathComponent:v51 isDirectory:1];

    if (v52)
    {
      v127 = v50;
      v137 = v48;
      v140 = v17;
      v147 = v16;
      v53 = v148;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v54 = v138;
      static Logger.uv.getter();
      v55 = v141;
      v56 = v133;
      v57 = v134;
      v126 = *(v141 + 16);
      v126(v133, v53, v134);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = v56;
        v125 = v39;
        v62 = v55;
        v63 = v60;
        v64 = swift_slowAlloc();
        v151 = v64;
        *v63 = 136315138;
        v65 = URL.path.getter();
        v67 = v66;
        v68 = v62;
        v39 = v125;
        v133 = *(v68 + 8);
        (v133)(v61, v57);
        v69 = sub_10001BD80(v65, v67, &v151);

        *(v63 + 4) = v69;
        _os_log_impl(&_mh_execute_header, v58, v59, "Got preview's system container at %s", v63, 0xCu);
        sub_1000041C8(v64);

        v70 = v138;
      }

      else
      {

        v133 = *(v55 + 8);
        (v133)(v56, v57);
        v70 = v54;
      }

      v137(v70, v147);
      v98 = v57;
      v100 = v135;
      v99 = v136;
      v101 = v148;
      URL.appendingPathComponent(_:isDirectory:)();
      v102 = v126;
      v126(v144, v101, v98);
      v102(v143, v100, v98);
      v103 = v146;
      (*(v145 + 16))(v142, v146, v99);
      URL.path.getter();
      static String.Encoding.utf8.getter();
      v105 = String.init(contentsOfFile:encoding:)();
      v107 = v106;

      v108 = v139;
      if (v105 == v139 && v107 == v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        (*(v145 + 8))(v142, v99);
        v109 = v133;
        (v133)(v143, v98);
        v109(v144, v98);
        v110 = v130;
        static Logger.uv.getter();
        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          *v113 = 0;
          _os_log_impl(&_mh_execute_header, v111, v112, "User is unchanged from last prewarm", v113, 2u);
        }

        v137(v110, v147);
        TransportReply.send(file:line:column:function:)();
      }

      else
      {
        static Logger.uv.getter();

        v115 = Logger.logObject.getter();
        v116 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          v151 = swift_slowAlloc();
          *v117 = 136315394;
          v118 = sub_10001BD80(v105, v107, &v151);

          *(v117 + 4) = v118;
          *(v117 + 12) = 2080;
          *(v117 + 14) = sub_10001BD80(v139, v39, &v151);
          _os_log_impl(&_mh_execute_header, v115, v116, "User has changed from %s to %s, so clearing out old apps", v117, 0x16u);
          swift_arrayDestroy();
          v99 = v136;

          v108 = v139;
        }

        else
        {
        }

        v137(v129, v147);
        v119 = sub_1000071B4();
        sub_10002B4A8(v119, v103);

        v120 = v108;
        v122 = v143;
        v121 = v144;
        v123 = v142;
        sub_100023498(v120, v39, v144, v143, v142);

        (*(v145 + 8))(v123, v99);
        v109 = v133;
        (v133)(v122, v98);
        v109(v121, v98);
      }

      v109(v100, v98);
      v109(v148, v98);
    }

    else
    {
      v84 = v137;
      static Logger.uv.getter();

      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v140 = v17;
        v89 = v88;
        v90 = swift_slowAlloc();
        v147 = v16;
        v91 = v90;
        v151 = v90;
        *v87 = 136315394;
        v92 = v50;
        v93 = sub_10001BD80(v139, v39, &v151);

        *(v87 + 4) = v93;
        v50 = v92;
        *(v87 + 12) = 2112;
        sub_1000086E8();
        swift_allocError();
        *v94 = 1;
        *(v94 + 8) = 0xD000000000000032;
        *(v94 + 16) = 0x8000000100030D90;
        v95 = _swift_stdlib_bridgeErrorToNSError();
        *(v87 + 14) = v95;
        *v89 = v95;
        _os_log_impl(&_mh_execute_header, v85, v86, "prewarm for %s failed: %@", v87, 0x16u);
        sub_100004160(v89);

        sub_1000041C8(v91);

        v96 = v137;
        v97 = v147;
      }

      else
      {

        v96 = v84;
        v97 = v16;
      }

      v48(v96, v97);
      sub_1000086E8();
      swift_allocError();
      *v114 = 1;
      *(v114 + 8) = 0xD000000000000032;
      *(v114 + 16) = 0x8000000100030D90;
      TransportReply.send(error:file:line:column:function:)();
    }
  }

  else
  {
    v147 = v16;
    v151 = 0;
    v152 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    v151 = 0xD000000000000026;
    v152 = 0x8000000100030CC0;
    error_description = container_get_error_description();
    sub_100001CC8(&qword_10003DA48, &unk_10002F170);
    v71._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v71);

    v73 = v151;
    v72 = v152;
    static Logger.uv.getter();

    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v137 = v48;
      v78 = v77;
      v79 = swift_slowAlloc();
      v140 = v17;
      v80 = v79;
      v151 = v79;
      *v76 = 136315394;
      v81 = sub_10001BD80(v139, v39, &v151);

      *(v76 + 4) = v81;
      *(v76 + 12) = 2112;
      sub_1000086E8();
      swift_allocError();
      *v82 = 1;
      *(v82 + 8) = v73;
      *(v82 + 16) = v72;

      v83 = _swift_stdlib_bridgeErrorToNSError();
      *(v76 + 14) = v83;
      *v78 = v83;
      _os_log_impl(&_mh_execute_header, v74, v75, "prewarm for %s failed: %@", v76, 0x16u);
      sub_100004160(v78);

      sub_1000041C8(v80);

      v137(v20, v147);
    }

    else
    {

      v48(v20, v147);
    }

    sub_1000086E8();
    swift_allocError();
    *v104 = 1;
    *(v104 + 8) = v73;
    *(v104 + 16) = v72;
    TransportReply.send(error:file:line:column:function:)();
  }
}

uint64_t sub_100023498(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a4;
  v53 = a5;
  v7 = type metadata accessor for String.Encoding();
  v50 = *(v7 - 8);
  v51 = v7;
  __chkstk_darwin(v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v55 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v48 - v14;
  static Logger.uv.getter();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  v18 = os_log_type_enabled(v16, v17);
  v54 = a1;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v49 = v9;
    v20 = v19;
    v21 = v10;
    v22 = v11;
    v23 = swift_slowAlloc();
    v59[0] = v23;
    *v20 = 136315138;
    *(v20 + 4) = sub_10001BD80(a1, a2, v59);
    _os_log_impl(&_mh_execute_header, v16, v17, "Setting current user to %s", v20, 0xCu);
    sub_1000041C8(v23);
    v11 = v22;
    v10 = v21;

    v9 = v49;

    v24 = *(v11 + 8);
    v24(v15, v21);
  }

  else
  {

    v24 = *(v11 + 8);
    v24(v15, v10);
  }

  v25 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v26);
  v28 = v27;
  v59[0] = 0;
  v29 = [v25 createDirectoryAtURL:v27 withIntermediateDirectories:1 attributes:0 error:v59];

  v30 = v59[0];
  v31 = v55;
  if (v29)
  {
    v59[0] = v54;
    v59[1] = a2;
    v32 = v30;
    static String.Encoding.utf8.getter();
    sub_100023BA8();
    StringProtocol.write(to:atomically:encoding:)();
    return (*(v50 + 8))(v9, v51);
  }

  else
  {
    v33 = v59[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.uv.getter();

    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v52 = v11;
      v39 = v38;
      v59[0] = v38;
      *v36 = 136315394;
      *(v36 + 4) = sub_10001BD80(v54, a2, v59);
      *(v36 + 12) = 2112;
      swift_errorRetain();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v40;
      *v37 = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "prewarm for %s failed: %@", v36, 0x16u);
      sub_100004160(v37);

      sub_1000041C8(v39);
    }

    v24(v31, v10);
    v56 = 1;
    v57 = 0xD000000000000022;
    v58 = 0x8000000100030DD0;
    swift_errorRetain();
    sub_1000089B0();
    HumanReadableError.withUnderlying(_:)();

    v41 = v60;
    v42 = sub_100023B64(v59, v60);
    v43 = *(v41 - 8);
    __chkstk_darwin(v42);
    v45 = &v48 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v43 + 16))(v45);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v43 + 8))(v45, v41);
    }

    else
    {
      swift_allocError();
      (*(v43 + 32))(v46, v45, v41);
    }

    TransportReply.send(error:file:line:column:function:)();

    return sub_1000041C8(v59);
  }
}

void *sub_100023B64(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100023BA8()
{
  result = qword_10003DA50;
  if (!qword_10003DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DA50);
  }

  return result;
}

uint64_t sub_100023C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001CC8(&qword_10003DA00, qword_10002F180);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100023CEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100001CC8(&qword_10003DA00, qword_10002F180);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ProcessExitService(uint64_t a1)
{
  result = qword_10003DAB0;
  if (!qword_10003DAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100023DFC(uint64_t a1)
{
  sub_100023E80(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ConcurrentInvalidationHandle();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100023E80(uint64_t a1)
{
  if (!qword_10003DAC0)
  {
    type metadata accessor for ProcessExitServiceToHost();
    v1 = type metadata accessor for TransportSender();
    if (!v2)
    {
      atomic_store(v1, &qword_10003DAC0);
    }
  }
}

uint64_t sub_100023EF8(int a1)
{
  *(v2 + 96) = v1;
  *(v2 + 208) = a1;
  v3 = type metadata accessor for Identifier();
  *(v2 + 104) = v3;
  v4 = *(v3 - 8);
  *(v2 + 112) = v4;
  *(v2 + 120) = *(v4 + 64);
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = swift_task_alloc();
  v5 = type metadata accessor for ProcessExitService(0);
  *(v2 + 144) = v5;
  v6 = *(v5 - 8);
  *(v2 + 152) = v6;
  *(v2 + 160) = *(v6 + 64);
  *(v2 + 168) = swift_task_alloc();
  sub_100001CC8(&qword_10003D7B8, &unk_10002F1D0);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();

  return _swift_task_switch(sub_100024078, 0, 0);
}

uint64_t sub_100024078()
{
  if (qword_10003CC20 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 96);
  v5 = *(v0 + 208);
  v6 = qword_10003DC18;
  *(v0 + 192) = qword_10003DC18;
  sub_100024798(v4, v1);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = (v2 + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = swift_allocObject();
  *(v0 + 200) = v9;
  sub_1000248FC(v1, v9 + v7);
  *(v9 + v8) = v5;

  return _swift_task_switch(sub_100024180, v6, 0);
}

uint64_t sub_100024180()
{
  v1 = [objc_opt_self() identifierWithPid:*(v0 + 52)];
  if (v1)
  {
    v2 = v1;
    v3 = v0[25];
    v4 = *(v0 + 52);
    v5 = swift_task_alloc();
    *(v5 + 16) = v2;
    *(v5 + 24) = 1;
    *(v5 + 28) = v4;
    *(v5 + 32) = sub_100024960;
    *(v5 + 40) = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_100013F24;
    *(v6 + 24) = v5;
    v0[6] = sub_1000249FC;
    v0[7] = v6;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100013164;
    v0[5] = &unk_10003A1A8;
    v7 = _Block_copy(v0 + 2);
    v8 = objc_opt_self();

    v9 = [v8 monitorWithConfiguration:v7];
    _Block_release(v7);

    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
      return _swift_task_switch(v10, v11, v12);
    }

    v13 = v0[24];
    v27 = v0[23];
    v15 = v0[16];
    v14 = v0[17];
    v16 = v0[14];
    v17 = v0[13];

    Identifier.init()();
    swift_beginAccess();
    v18 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(v13 + 112);
    *(v13 + 112) = 0x8000000000000000;
    sub_100011EF4(v18, v14, isUniquelyReferenced_nonNull_native);
    *(v13 + 112) = v28;
    swift_endAccess();
    (*(v16 + 16))(v15, v14, v17);
    v20 = v2;
    v21 = (*(v16 + 80) + 24) & ~*(v16 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v13;
    (*(v16 + 32))(v22 + v21, v15, v17);

    CancelationToken<>.init(dsoHandle:file:line:column:function:_:)();

    (*(v16 + 8))(v14, v17);
    v23 = sub_100001CC8(&qword_10003D7C0, &qword_10002EE60);
    (*(*(v23 - 8) + 56))(v27, 0, 1, v23);
  }

  else
  {
    v24 = v0[23];

    v25 = sub_100001CC8(&qword_10003D7C0, &qword_10002EE60);
    (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  }

  v10 = sub_100024584;
  v11 = 0;
  v12 = 0;

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100024584()
{
  v1 = v0[22];
  sub_100013E4C(v0[23], v1);
  v2 = sub_100001CC8(&qword_10003D7C0, &qword_10002EE60);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[22];
    sub_100013EBC(v0[23]);
    sub_100013EBC(v4);
  }

  else
  {
    v0[11] = *(v0[12] + *(v0[18] + 20));
    v6 = v0[22];
    v5 = v0[23];
    type metadata accessor for ConcurrentInvalidationHandle();

    CancelationToken<>.cancel<A>(onInvalidationOf:)();

    sub_100013EBC(v5);
    (*(v3 + 8))(v6, v2);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_10002471C(uint64_t a1, unsigned int a2)
{
  sub_100001CC8(&qword_10003DA00, qword_10002F180);
  sub_100024B7C();
  sub_100024BE0();
  return TransportSenderProtocol<>.send(oneWay:)();
}

uint64_t sub_100024798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProcessExitService(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000247FC()
{
  v1 = *(type metadata accessor for ProcessExitService(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v5 = v0 + v3;
  v6 = sub_100001CC8(&qword_10003DA00, qword_10002F180);
  (*(*(v6 - 8) + 8))(v5, v6);

  return _swift_deallocObject(v0, v4 + 4, v2 | 7);
}

uint64_t sub_1000248FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProcessExitService(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024960()
{
  v1 = *(type metadata accessor for ProcessExitService(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 3) & 0xFFFFFFFFFFFFFFFCLL));

  return sub_10002471C(v0 + v2, v3);
}

uint64_t sub_100024A04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100024A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100001CC8(&qword_10003DA00, qword_10002F180);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  *(a3 + *(type metadata accessor for ProcessExitService(0) + 20)) = a2;
}

uint64_t sub_100024AB8()
{
  v1 = type metadata accessor for Identifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

unint64_t sub_100024B7C()
{
  result = qword_10003DB28;
  if (!qword_10003DB28)
  {
    sub_100001D74(&qword_10003DA00, qword_10002F180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DB28);
  }

  return result;
}

unint64_t sub_100024BE0()
{
  result = qword_10003DB30;
  if (!qword_10003DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DB30);
  }

  return result;
}

void sub_100024C34(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = 34;
  v36 = 0xE100000000000000;
  v10._countAndFlagsBits = URL.lastPathComponent.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 34;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  v12 = aBlock;
  v13 = v36;
  static Logger.uv.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v16 = os_log_type_enabled(v14, v15);
  v34 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v33 = a2;
    v18 = a1;
    v19 = v17;
    v20 = swift_slowAlloc();
    v21 = v12;
    v22 = a3;
    v23 = v20;
    aBlock = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_10001BD80(v21, v13, &aBlock);
    _os_log_impl(&_mh_execute_header, v14, v15, "Attempting installation of %s", v19, 0xCu);
    sub_1000041C8(v23);
    a3 = v22;

    a1 = v18;
  }

  (*(v7 + 8))(v9, v6);
  v24 = [objc_allocWithZone(MIInstallOptions) init];
  [v24 setInstallTargetType:1];
  [v24 setDeveloperInstall:a3 & 1];
  [v24 setUserInitiated:1];
  if (a3)
  {
    sub_100007C00();
    static LSBundleRecord.playgroundsBundleID.getter();
    v25 = String._bridgeToObjectiveC()();

    [v24 setLinkedParentBundleID:v25];
  }

  v26 = objc_opt_self();
  URL._bridgeToObjectiveC()(v27);
  v29 = v28;
  v30 = swift_allocObject();
  v30[2] = v34;
  v30[3] = v13;
  v30[4] = a1;
  v39 = sub_100026DB0;
  v40 = v30;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_100025504;
  v38 = &unk_10003A330;
  v31 = _Block_copy(&aBlock);
  v32 = v24;

  [v26 installApplication:v29 forPersonaUniqueString:0 consumeSource:0 options:v32 completion:v31];
  _Block_release(v31);
}

uint64_t sub_100024FC4(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v39 = a3;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  if (a1)
  {
    v14 = [a1 bundleID];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    static Logger.uv.getter();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v38 = v7;
      v21 = v20;
      v40 = swift_slowAlloc();
      *v21 = 136315394;
      *(v21 + 4) = sub_10001BD80(v39, a4, &v40);
      *(v21 + 12) = 2080;
      v22 = sub_10001BD80(v15, v17, &v40);

      *(v21 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "Installation of %s (%s) succeeded", v21, 0x16u);
      swift_arrayDestroy();

      (*(v8 + 8))(v13, v38);
    }

    else
    {

      (*(v8 + 8))(v13, v7);
    }

    return Promise<A>.succeed()();
  }

  else
  {
    if (!a2)
    {
      v24 = IXErrorDomain;
      sub_100001CC8(&qword_10003DB40, &qword_10002F1F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10002F1E0;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = v26;
      *(inited + 48) = 0xD000000000000015;
      *(inited + 56) = 0x8000000100030F50;
      v27 = v24;
      sub_100005A5C(inited);
      swift_setDeallocating();
      sub_10000D330(inited + 32, &qword_10003D0A0, &unk_10002F200);
      v28 = objc_allocWithZone(NSError);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v28 initWithDomain:v27 code:-98 userInfo:isa];
    }

    swift_errorRetain();
    static Logger.uv.getter();

    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v38 = v7;
      v35 = v34;
      v40 = v34;
      *v32 = 136315394;
      *(v32 + 4) = sub_10001BD80(v39, a4, &v40);
      *(v32 + 12) = 2112;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v36;
      *v33 = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "Installation of %s failed due to: %@", v32, 0x16u);
      sub_10000D330(v33, &qword_10003CE68, &unk_10002EE00);

      sub_1000041C8(v35);

      (*(v8 + 8))(v11, v38);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    Promise.fail(with:)();
  }
}

void sub_100025504(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100025590(uint64_t a1)
{
  v48 = a1;
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v46 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v44 - v6;
  __chkstk_darwin(v5);
  v9 = &v44 - v8;
  v10 = type metadata accessor for AgentDescriptor.Bundle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ResetAppRequest.agentDescriptorBundle.getter();
  v14 = AgentDescriptor.Bundle.bundleID.getter();
  v16 = v15;
  (*(v11 + 8))(v13, v10);
  static Logger.uv.getter();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v47 = v2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = v1;
    v22 = swift_slowAlloc();
    v49 = v22;
    *v20 = 136315138;
    *(v20 + 4) = sub_10001BD80(v14, v16, &v49);
    _os_log_impl(&_mh_execute_header, v17, v18, "Attempting reset of %s", v20, 0xCu);
    sub_1000041C8(v22);
    v1 = v21;
  }

  v23 = *(v2 + 8);
  v23(v9, v1);
  v24 = objc_opt_self();
  v25 = String._bridgeToObjectiveC()();
  v26 = String._bridgeToObjectiveC()();
  v49 = 0;
  v27 = [v24 refreshContainerTypes:1 forBundleID:v25 reason:v26 error:&v49];

  if (v27)
  {
    v28 = v49;
    static Logger.uv.getter();

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v49 = v32;
      *v31 = 136315138;
      v33 = sub_10001BD80(v14, v16, &v49);

      *(v31 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v29, v30, "Reset of %s succeeded", v31, 0xCu);
      sub_1000041C8(v32);
    }

    else
    {
    }

    v23(v7, v1);
    return Promise<A>.succeed()();
  }

  else
  {
    v45 = v1;
    v34 = v49;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v35 = v46;
    static Logger.uv.getter();

    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v49 = v40;
      *v38 = 136315394;
      v41 = sub_10001BD80(v14, v16, &v49);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2112;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 14) = v42;
      *v39 = v42;
      _os_log_impl(&_mh_execute_header, v36, v37, "Reset of %s failed due to: %@", v38, 0x16u);
      sub_10000D330(v39, &qword_10003CE68, &unk_10002EE00);

      sub_1000041C8(v40);
    }

    else
    {
    }

    v23(v35, v45);
    Promise.fail(with:)();
  }
}

uint64_t sub_100025B9C(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(IXUninstallOptions) init];
  if (v4)
  {
    v5 = v4;
    [v4 setRequestUserConfirmation:0];
    v6 = swift_allocObject();
    v6[2] = a1;
    v6[3] = a2;
    v6[4] = v5;

    v7 = v5;
    default argument 0 of FutureSerialQueue.enqueue<A>(priority:makeFuture:)();
    v8 = FutureSerialQueue.enqueue<A>(priority:makeFuture:)();

    return v8;
  }

  else
  {
    sub_100001CC8(&qword_10003DB38, &qword_10002F1F0);
    v10 = IXErrorDomain;
    sub_100001CC8(&qword_10003DB40, &qword_10002F1F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10002F1E0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v12;
    v13 = v10;
    _StringGuts.grow(_:)(29);

    v14._countAndFlagsBits = a1;
    v14._object = a2;
    String.append(_:)(v14);
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0xD00000000000001BLL;
    *(inited + 56) = 0x8000000100030E90;
    sub_100005A5C(inited);
    swift_setDeallocating();
    sub_10000D330(inited + 32, &qword_10003D0A0, &unk_10002F200);
    v15 = objc_allocWithZone(NSError);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v17 = [v15 initWithDomain:v13 code:-99 userInfo:isa];

    v18 = static Future.failed(dsoHandle:file:line:column:function:_:)();
    return v18;
  }
}

void sub_100025E38(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = a1;
    v15 = a4;
    v16 = v14;
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_10001BD80(a2, a3, aBlock);
    _os_log_impl(&_mh_execute_header, v12, v13, "Attempting uninstall of %s", v16, 0xCu);
    sub_1000041C8(v17);

    a4 = v15;
    a1 = v25;
  }

  (*(v9 + 8))(v11, v8);
  v18 = objc_opt_self();
  v19 = objc_allocWithZone(IXApplicationIdentity);
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 initWithBundleID:v20];

  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = a1;
  aBlock[4] = sub_100026B24;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000267A4;
  aBlock[3] = &unk_10003A248;
  v23 = _Block_copy(aBlock);

  [v18 uninstallAppWithIdentity:v21 options:a4 completion:v23];
  _Block_release(v23);
}

void sub_100026108(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v58 = type metadata accessor for Logger();
  v10 = *(v58 - 8);
  v11 = __chkstk_darwin(v58);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v55 - v15;
  __chkstk_darwin(v14);
  v18 = &v55 - v17;
  if (a2)
  {
    swift_errorRetain();
    static Logger.uv.getter();
    swift_errorRetain();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v57 = a5;
      v24 = v23;
      v59 = v23;
      *v21 = 136315394;
      *(v21 + 4) = sub_10001BD80(a3, a4, &v59);
      *(v21 + 12) = 2112;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v25;
      *v22 = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "Uninstall of %s failed due to: %@", v21, 0x16u);
      sub_10000D330(v22, &qword_10003CE68, &unk_10002EE00);

      sub_1000041C8(v24);
    }

    (*(v10 + 8))(v18, v58);
    Promise.fail(with:)();
  }

  else
  {
    v56 = a3;
    if (a1 == 3)
    {
      static Logger.uv.getter();

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v59 = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_10001BD80(v56, a4, &v59);
        _os_log_impl(&_mh_execute_header, v26, v27, "Uninstall of %s succeeded", v28, 0xCu);
        sub_1000041C8(v29);
      }

      (*(v10 + 8))(v16, v58);
      Promise<A>.succeed()();
    }

    else
    {
      v57 = a5;
      v30 = IXErrorDomain;
      sub_100001CC8(&qword_10003DB40, &qword_10002F1F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10002F1E0;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v32;
      v59 = 0;
      v60 = 0xE000000000000000;
      v33 = v30;
      _StringGuts.grow(_:)(33);

      v59 = 0xD000000000000014;
      v60 = 0x8000000100030ED0;
      v34._countAndFlagsBits = v56;
      v34._object = a4;
      String.append(_:)(v34);
      v35._countAndFlagsBits = 0x3A6F742065756420;
      v35._object = 0xE900000000000020;
      String.append(_:)(v35);
      v36 = IXStringForUninstallDisposition();
      if (v36)
      {
        v37 = v36;
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;
      }

      else
      {
        v40 = 0xE700000000000000;
        v38 = 0x6E776F6E6B6E55;
      }

      v41._countAndFlagsBits = v38;
      v41._object = v40;
      String.append(_:)(v41);

      v42 = v59;
      v43 = v60;
      *(inited + 72) = &type metadata for String;
      *(inited + 48) = v42;
      *(inited + 56) = v43;
      sub_100005A5C(inited);
      swift_setDeallocating();
      sub_10000D330(inited + 32, &qword_10003D0A0, &unk_10002F200);
      v44 = objc_allocWithZone(NSError);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v46 = [v44 initWithDomain:v33 code:-98 userInfo:isa];

      static Logger.uv.getter();

      v47 = v46;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v59 = v52;
        *v50 = 136315394;
        *(v50 + 4) = sub_10001BD80(v56, a4, &v59);
        *(v50 + 12) = 2112;
        *(v50 + 14) = v47;
        *v51 = v47;
        v53 = v47;
        _os_log_impl(&_mh_execute_header, v48, v49, "Uninstall of %s failed due to: %@", v50, 0x16u);
        sub_10000D330(v51, &qword_10003CE68, &unk_10002EE00);

        sub_1000041C8(v52);
      }

      (*(v10 + 8))(v13, v58);
      v54 = v47;
      Promise.fail(with:)();
    }
  }
}

void sub_1000267A4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10002681C(uint64_t a1, char a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  (*(v5 + 32))(v8 + v7, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v8 + v7 + v6) = a2;
  default argument 0 of FutureSerialQueue.enqueue<A>(priority:makeFuture:)();
  v9 = FutureSerialQueue.enqueue<A>(priority:makeFuture:)();

  return v9;
}

uint64_t sub_100026980(uint64_t a1)
{
  v2 = type metadata accessor for ResetAppRequest();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  default argument 0 of FutureSerialQueue.enqueue<A>(priority:makeFuture:)();
  v7 = FutureSerialQueue.enqueue<A>(priority:makeFuture:)();

  return v7;
}

uint64_t sub_100026AD8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100026B30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100026B58()
{
  v1 = type metadata accessor for ResetAppRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100026BE0(uint64_t a1)
{
  type metadata accessor for ResetAppRequest();

  return sub_100025590(a1);
}

uint64_t sub_100026C50()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64) + v4;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

void sub_100026CDC(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  sub_100024C34(a1, v4, v5);
}

uint64_t sub_100026D70()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100026DC8(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 368) = a4;
  *(v5 + 376) = a5;
  *(v5 + 517) = a3;
  *(v5 + 516) = a2;
  v6 = type metadata accessor for Logger();
  *(v5 + 384) = v6;
  *(v5 + 392) = *(v6 - 8);
  *(v5 + 400) = swift_task_alloc();
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = swift_task_alloc();
  *(v5 + 432) = swift_task_alloc();
  v7 = type metadata accessor for OSSignpostID();
  *(v5 + 440) = v7;
  *(v5 + 448) = *(v7 - 8);
  *(v5 + 456) = swift_task_alloc();

  return _swift_task_switch(sub_100026F1C, 0, 0);
}

uint64_t sub_100026F1C()
{
  v85 = v0;
  *(v0 + 464) = sub_10002837C();
  static OS_os_log.connectivity.getter();
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v1 = static OS_os_log.connectivity.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v2 = sub_1000056F8(&_swiftEmptyArrayStorage);
  v3 = objc_opt_self();
  v4 = [v3 standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 BOOLForKey:v5];

  if (v6)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84[0] = v2;
    sub_1000120C0(49, 0xE100000000000000, 0xD000000000000016, 0x8000000100031030, isUniquelyReferenced_nonNull_native);
  }

  v8 = [v3 standardUserDefaults];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 BOOLForKey:v9];

  if (v10)
  {
    static Logger.uv.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Enable full PreviewShell MallocStackLogging", v13, 2u);
    }

    v14 = *(v0 + 432);
    v15 = *(v0 + 384);
    v16 = *(v0 + 392);

    (*(v16 + 8))(v14, v15);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v84[0] = v2;
    v18 = 49;
    v19 = 0xE100000000000000;
  }

  else
  {
    v20 = [v3 standardUserDefaults];
    v21 = String._bridgeToObjectiveC()();
    v22 = [v20 BOOLForKey:v21];

    if (!v22)
    {
      goto LABEL_12;
    }

    static Logger.uv.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Enable lite PreviewShell MallocStackLogging", v25, 2u);
    }

    v26 = *(v0 + 424);
    v27 = *(v0 + 384);
    v28 = *(v0 + 392);

    (*(v28 + 8))(v26, v27);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v84[0] = v2;
    v18 = 1702127980;
    v19 = 0xE400000000000000;
  }

  sub_1000120C0(v18, v19, 0xD000000000000012, 0x8000000100031010, v17);
  v2 = v84[0];
LABEL_12:
  if (*(v0 + 517) == 1)
  {
    static Logger.uv.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Propagating XTP env value to PreviewShell", v31, 2u);
    }

    v32 = *(v0 + 416);
    v33 = *(v0 + 384);
    v34 = *(v0 + 392);

    (*(v34 + 8))(v32, v33);
    v35 = xtpProcessEnvironmentKey.getter();
    v37 = v36;
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v84[0] = v2;
    sub_1000120C0(1702195828, 0xE400000000000000, v35, v37, v38);
  }

  v39 = *(v0 + 516);
  sub_100001CC8(&qword_10003DB50, &qword_10002F288);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10002F270;
  *(v0 + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 328) = v41;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = (v39 & 1) == 0;
  *(v0 + 336) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 344) = v42;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  *(v0 + 352) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 360) = v43;
  AnyHashable.init<A>(_:)();
  sub_100001CC8(&qword_10003DB58, &qword_10002F290);
  v44 = swift_initStackObject();
  *(v44 + 16) = xmmword_10002F1E0;
  *(v44 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v44 + 40) = v45;
  *(v44 + 48) = v2;
  v46 = sub_10000580C(v44);
  swift_setDeallocating();
  sub_10000D330(v44 + 32, &qword_10003DB60, &qword_10002F298);
  *(inited + 240) = sub_100001CC8(&qword_10003DB68, &qword_10002F2A0);
  *(inited + 216) = v46;
  sub_100005910(inited);
  swift_setDeallocating();
  sub_100001CC8(&qword_10003D088, &qword_10002E6E8);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v48 = [objc_opt_self() optionsWithDictionary:isa];
  *(v0 + 472) = v48;

  static Logger.uv.getter();

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();

  v51 = os_log_type_enabled(v49, v50);
  v52 = *(v0 + 408);
  v54 = *(v0 + 384);
  v53 = *(v0 + 392);
  if (v51)
  {
    v82 = *(v0 + 408);
    v83 = v48;
    v56 = *(v0 + 368);
    v55 = *(v0 + 376);
    v57 = *(v0 + 516);
    v58 = swift_slowAlloc();
    v84[0] = swift_slowAlloc();
    *v58 = 136315394;
    *(v58 + 4) = sub_10001BD80(v56, v55, v84);
    *(v58 + 12) = 2080;
    if (v57)
    {
      v59 = 0x756F726765726F66;
    }

    else
    {
      v59 = 0x756F72676B636162;
    }

    v60 = sub_10001BD80(v59, 0xEA0000000000646ELL, v84);

    *(v58 + 14) = v60;
    v48 = v83;
    _os_log_impl(&_mh_execute_header, v49, v50, "Calling into FBSOpenApplicationService to launch %s in %s", v58, 0x16u);
    swift_arrayDestroy();

    v61 = *(v53 + 8);
    v61(v82, v54);
  }

  else
  {

    v61 = *(v53 + 8);
    v61(v52, v54);
  }

  v62 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  *(v0 + 480) = v62;
  if (v62)
  {
    v63 = v62;
    v65 = *(v0 + 368);
    v64 = *(v0 + 376);
    v66 = *(v0 + 517);
    v67 = swift_task_alloc();
    *(v0 + 488) = v67;
    *(v67 + 16) = v63;
    *(v67 + 24) = v66;
    *(v67 + 32) = v65;
    *(v67 + 40) = v64;
    *(v67 + 48) = v48;
    v68 = swift_task_alloc();
    *(v0 + 496) = v68;
    *v68 = v0;
    v68[1] = sub_100027A38;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 512, 0, 0, 0xD00000000000001BLL, 0x8000000100030380, sub_10002841C, v67, &type metadata for Int32);
  }

  else
  {
    static Logger.uv.getter();
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v71 = 138412290;
      sub_1000283C8();
      swift_allocError();
      v73 = _swift_stdlib_bridgeErrorToNSError();
      *(v71 + 4) = v73;
      *v72 = v73;
      _os_log_impl(&_mh_execute_header, v69, v70, "Unable to create open application service: %@", v71, 0xCu);
      sub_10000D330(v72, &qword_10003CE68, &unk_10002EE00);
    }

    v74 = *(v0 + 400);
    v75 = *(v0 + 384);

    v61(v74, v75);
    sub_1000283C8();
    swift_allocError();
    swift_willThrow();

    v76 = *(v0 + 456);
    v77 = *(v0 + 440);
    v78 = *(v0 + 448);
    static os_signpost_type_t.end.getter();
    v79 = static OS_os_log.connectivity.getter();
    os_signpost(_:dso:log:name:signpostID:)();

    (*(v78 + 8))(v76, v77);

    v80 = *(v0 + 8);

    return v80();
  }
}

uint64_t sub_100027A38()
{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = sub_100027C84;
  }

  else
  {

    v2 = sub_100027B54;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100027B54()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 456);
  v4 = *(v0 + 440);
  v3 = *(v0 + 448);

  v8 = *(v0 + 512);
  static os_signpost_type_t.end.getter();
  v5 = static OS_os_log.connectivity.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  (*(v3 + 8))(v2, v4);

  v6 = *(v0 + 8);

  return v6(v8);
}

uint64_t sub_100027C84()
{
  v1 = *(v0 + 472);

  v2 = *(v0 + 456);
  v3 = *(v0 + 440);
  v4 = *(v0 + 448);
  static os_signpost_type_t.end.getter();
  v5 = static OS_os_log.connectivity.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  (*(v4 + 8))(v2, v3);

  v6 = *(v0 + 8);

  return v6();
}

void sub_100027DB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_100001CC8(&qword_10003DB78, &qword_10002F2A8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = aBlock - v11;
  v13 = String._bridgeToObjectiveC()();
  (*(v10 + 16))(v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v12, v9);
  aBlock[4] = sub_1000284C4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100025504;
  aBlock[3] = &unk_10003A380;
  v16 = _Block_copy(aBlock);

  [a2 openApplication:v13 withOptions:a6 completion:v16];
  _Block_release(v16);
}

void sub_100027F98(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Callsite();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100001CC8(&qword_10003DB80, &unk_10002F2B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  if (a1)
  {
    v9 = a1;
    LODWORD(v14) = [v9 pid];
    sub_100001CC8(&qword_10003DB78, &qword_10002F2A8);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (a2)
    {
      v10 = a2;
    }

    else
    {
      sub_100028568();
      v10 = swift_allocError();
    }

    v14 = v10;
    swift_errorRetain();
    Callsite.init(_:_:_:_:)();
    sub_100001CC8(&qword_10003D9C0, &qword_10002F068);
    CallsiteError.init(underlying:callsite:)();
    sub_1000285BC();
    v11 = swift_allocError();
    (*(v6 + 16))(v12, v8, v5);
    v14 = v11;
    sub_100001CC8(&qword_10003DB78, &qword_10002F2A8);
    CheckedContinuation.resume(throwing:)();
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100028254(uint64_t a1)
{
  v2 = sub_10002878C();

  return HumanReadableError.errorDescription.getter(a1, v2);
}

uint64_t sub_100028290(uint64_t a1)
{
  v2 = sub_10002878C();

  return HumanReadableError.description.getter(a1, v2);
}

uint64_t sub_1000282CC()
{
  v0 = byte_10003DC38;
  sub_100001CC8(&qword_10003DB98, &qword_10002F2C0);
  v1 = swift_allocObject();
  sub_100001CC8(&qword_10003DBA0, &qword_10002F2C8);
  result = OSAllocatedUnfairLock.init(value:)();
  *(v1 + 16) = result;
  *(v1 + 24) = v0;
  *(v1 + 32) = 0xD000000000000016;
  *(v1 + 40) = 0x8000000100031100;
  qword_10003DC30 = v1;
  return result;
}

unint64_t sub_10002837C()
{
  result = qword_10003DB48;
  if (!qword_10003DB48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003DB48);
  }

  return result;
}

unint64_t sub_1000283C8()
{
  result = qword_10003DB70;
  if (!qword_10003DB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DB70);
  }

  return result;
}

uint64_t sub_100028430()
{
  v1 = sub_100001CC8(&qword_10003DB78, &qword_10002F2A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000284C4(void *a1, uint64_t a2)
{
  sub_100001CC8(&qword_10003DB78, &qword_10002F2A8);

  sub_100027F98(a1, a2);
}

uint64_t sub_100028550(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100028568()
{
  result = qword_10003DB88;
  if (!qword_10003DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DB88);
  }

  return result;
}

unint64_t sub_1000285BC()
{
  result = qword_10003DB90;
  if (!qword_10003DB90)
  {
    sub_100001D74(&qword_10003DB80, &unk_10002F2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DB90);
  }

  return result;
}

uint64_t sub_100028640(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100028688(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000286E0()
{
  result = qword_10003DBA8;
  if (!qword_10003DBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DBA8);
  }

  return result;
}

unint64_t sub_100028738()
{
  result = qword_10003DBB0;
  if (!qword_10003DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DBB0);
  }

  return result;
}

unint64_t sub_10002878C()
{
  result = qword_10003DBB8;
  if (!qword_10003DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DBB8);
  }

  return result;
}

uint64_t sub_1000287F0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for TransportReply();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = type metadata accessor for DaemonToShell.TwoWayMessage();
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for CopyURLRequest();
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v3[12] = *(v6 + 64);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_1000289B0, 0, 0);
}

uint64_t sub_1000289B0(uint64_t a1)
{
  v40 = v1;
  v2 = v1[14];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[2];
  static Logger.uv.getter();
  v38 = *(v4 + 16);
  v38(v2, v5, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[16];
  v10 = v1[17];
  v11 = v1[14];
  v12 = v1[15];
  if (v8)
  {
    v36 = v1[17];
    v37 = v1[15];
    v13 = v1[13];
    v15 = v1[10];
    v14 = v1[11];
    v16 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v39 = v35;
    *v16 = 136315138;
    v38(v13, v11, v15);
    v17 = String.init<A>(describing:)();
    v34 = v7;
    v19 = v18;
    (*(v14 + 8))(v11, v15);
    v20 = sub_10001BD80(v17, v19, &v39);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v34, "Forwarding %s", v16, 0xCu);
    sub_1000041C8(v35);

    (*(v9 + 8))(v36, v37);
  }

  else
  {
    v22 = v1[10];
    v21 = v1[11];

    (*(v21 + 8))(v11, v22);
    (*(v9 + 8))(v10, v12);
  }

  v23 = v1[13];
  v24 = v1[10];
  v25 = v1[11];
  v26 = v1[9];
  v27 = v1[2];
  type metadata accessor for AppManagerDaemon(0);
  v38(v26, v27, v24);
  swift_storeEnumTagMultiPayload();
  v38(v23, v27, v24);
  v28 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v29 = swift_allocObject();
  (*(v25 + 32))(v29 + v28, v23, v24);
  TransportReply.wrappingError(_:)();

  v30 = swift_task_alloc();
  v1[18] = v30;
  *v30 = v1;
  v30[1] = sub_100028CF0;
  v31 = v1[9];
  v32 = v1[7];

  return sub_10000262C(v31, v32);
}

uint64_t sub_100028CF0()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);
  sub_10002989C(v1);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100028ED0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for TransportReply();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = type metadata accessor for DaemonToShell.TwoWayMessage();
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for GrantExecutePermissionRequest();
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v3[12] = *(v6 + 64);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100029090, 0, 0);
}

uint64_t sub_100029090(uint64_t a1)
{
  v40 = v1;
  v2 = v1[14];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[2];
  static Logger.uv.getter();
  v38 = *(v4 + 16);
  v38(v2, v5, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[16];
  v10 = v1[17];
  v11 = v1[14];
  v12 = v1[15];
  if (v8)
  {
    v36 = v1[17];
    v37 = v1[15];
    v13 = v1[13];
    v15 = v1[10];
    v14 = v1[11];
    v16 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v39 = v35;
    *v16 = 136315138;
    v38(v13, v11, v15);
    v17 = String.init<A>(describing:)();
    v34 = v7;
    v19 = v18;
    (*(v14 + 8))(v11, v15);
    v20 = sub_10001BD80(v17, v19, &v39);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v34, "Forwarding %s", v16, 0xCu);
    sub_1000041C8(v35);

    (*(v9 + 8))(v36, v37);
  }

  else
  {
    v22 = v1[10];
    v21 = v1[11];

    (*(v21 + 8))(v11, v22);
    (*(v9 + 8))(v10, v12);
  }

  v23 = v1[13];
  v24 = v1[10];
  v25 = v1[11];
  v26 = v1[9];
  v27 = v1[2];
  type metadata accessor for AppManagerDaemon(0);
  v38(v26, v27, v24);
  swift_storeEnumTagMultiPayload();
  v38(v23, v27, v24);
  v28 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v29 = swift_allocObject();
  (*(v25 + 32))(v29 + v28, v23, v24);
  TransportReply.wrappingError(_:)();

  v30 = swift_task_alloc();
  v1[18] = v30;
  *v30 = v1;
  v30[1] = sub_100029A40;
  v31 = v1[9];
  v32 = v1[7];

  return sub_10000262C(v31, v32);
}

uint64_t sub_1000293D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), int a4)
{
  v40 = a4;
  v6 = a3(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for Logger();
  v37 = *(v13 - 8);
  v38 = v13;
  __chkstk_darwin(v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();
  v16 = *(v7 + 16);
  v16(v12, a2, v6);
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  v39 = a1;

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v44[0] = v36;
    *v19 = 136315394;
    v16(v10, v12, v6);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    (*(v7 + 8))(v12, v6);
    v23 = sub_10001BD80(v20, v22, v44);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2112;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v24;
    v25 = v35;
    *v35 = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s failed: %@", v19, 0x16u);
    sub_100004160(v25);

    sub_1000041C8(v36);
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  (*(v37 + 8))(v15, v38);
  v41 = v40;
  sub_1000089B0();
  v42 = 0;
  v43 = 0;
  HumanReadableError.withUnderlying(_:)();
  v26 = v45;
  v27 = sub_100023B64(v44, v45);
  v28 = *(v26 - 8);
  __chkstk_darwin(v27);
  v30 = &v35 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v30);
  v31 = _getErrorEmbeddedNSError<A>(_:)();
  if (v31)
  {
    v32 = v31;
    (*(v28 + 8))(v30, v26);
  }

  else
  {
    v32 = swift_allocError();
    (*(v28 + 32))(v33, v30, v26);
  }

  sub_1000041C8(v44);
  return v32;
}

uint64_t sub_10002989C(uint64_t a1)
{
  v2 = type metadata accessor for DaemonToShell.TwoWayMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100029910(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100029A44(uint64_t (*a1)(char *, uint64_t), uint64_t a2)
{
  v93 = a2;
  v3 = type metadata accessor for TransportReply();
  v84 = *(v3 - 8);
  v85 = v3;
  __chkstk_darwin(v3);
  v81 = v4;
  v83 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SecurityScopedURLWrapper();
  v87 = *(v5 - 8);
  v88 = v5;
  __chkstk_darwin(v5);
  v86 = (&v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = type metadata accessor for URL();
  v94 = *(v90 - 8);
  v7 = __chkstk_darwin(v90);
  v78 = v8;
  v79 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v73 - v9;
  v11 = type metadata accessor for InstallAppRequest();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v89 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v73 - v16;
  __chkstk_darwin(v15);
  v19 = &v73 - v18;
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  v95 = v20;
  v96 = v21;
  v22 = __chkstk_darwin(v20);
  v82 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v73 - v24;
  static Logger.uv.getter();
  v26 = *(v12 + 16);
  v91 = a1;
  v26(v19, a1, v11);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v29 = os_log_type_enabled(v27, v28);
  v92 = v10;
  v77 = v12;
  v74 = v17;
  v76 = v12 + 16;
  v75 = v26;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v97[0] = v73;
    *v30 = 136315138;
    v26(v17, v19, v11);
    v31 = String.init<A>(describing:)();
    v33 = v32;
    v34 = *(v12 + 8);
    v34(v19, v11);
    v35 = sub_10001BD80(v31, v33, v97);
    v36 = v96;

    *(v30 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v27, v28, "Received %s", v30, 0xCu);
    sub_1000041C8(v73);

    v10 = v92;

    v37 = v36;
  }

  else
  {

    v34 = *(v12 + 8);
    v34(v19, v11);
    v37 = v96;
  }

  v38 = *(v37 + 8);
  v38(v25, v95);
  v39 = v86;
  v40 = v91;
  InstallAppRequest.sourceURLWrapper.getter();
  SecurityScopedURLWrapper.url.getter();
  (*(v87 + 8))(v39, v88);
  v41 = URL.startAccessingSecurityScopedResource()();
  v42 = v89;
  if (v41)
  {
    sub_100023B64(v80, v80[3]);
    v43 = InstallAppRequest.isDevelopment.getter();
    sub_10002681C(v10, v43 & 1);
    v45 = v83;
    v44 = v84;
    v46 = v85;
    (*(v84 + 16))(v83, v93, v85);
    v47 = v94;
    v48 = v79;
    v49 = v90;
    (*(v94 + 16))(v79, v10, v90);
    v50 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v51 = (v81 + *(v47 + 80) + v50) & ~*(v47 + 80);
    v52 = swift_allocObject();
    (*(v44 + 32))(v52 + v50, v45, v46);
    (*(v47 + 32))(v52 + v51, v48, v49);
    Future.observeFinish(_:)();

    return (*(v47 + 8))(v92, v49);
  }

  else
  {
    v87 = 0x80000001000312C0;
    v88 = v34;
    v54 = v82;
    static Logger.uv.getter();
    v55 = v75;
    v75(v42, v40, v11);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v91 = v38;
      v59 = v55;
      v60 = v58;
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v97[0] = v86;
      *v60 = 136315394;
      v59(v74, v42, v11);
      v61 = v10;
      v62 = String.init<A>(describing:)();
      v64 = v63;
      v88(v42, v11);
      v65 = v62;
      v10 = v61;
      v66 = sub_10001BD80(v65, v64, v97);

      *(v60 + 4) = v66;
      *(v60 + 12) = 2112;
      sub_1000086E8();
      swift_allocError();
      *v67 = 2;
      v68 = v87;
      *(v67 + 8) = 0xD000000000000023;
      *(v67 + 16) = v68;
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v60 + 14) = v69;
      v70 = v85;
      *v85 = v69;
      _os_log_impl(&_mh_execute_header, v56, v57, "%s failed: %@", v60, 0x16u);
      sub_10000D330(v70, &qword_10003CE68, &unk_10002EE00);

      sub_1000041C8(v86);

      v91(v54, v95);
      v71 = v68;
    }

    else
    {

      v88(v42, v11);
      v38(v54, v95);
      v71 = v87;
    }

    sub_1000086E8();
    swift_allocError();
    *v72 = 2;
    *(v72 + 8) = 0xD000000000000023;
    *(v72 + 16) = v71;
    TransportReply.send(error:file:line:column:function:)();
    (*(v94 + 8))(v10, v90);
  }
}

uint64_t sub_10002A3B8(uint64_t a1, uint64_t a2)
{
  v85 = a2;
  v3 = type metadata accessor for UninstallAppsRequest();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v83 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v78 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v81 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v87 = &v78 - v14;
  v15 = __chkstk_darwin(v13);
  v82 = &v78 - v16;
  __chkstk_darwin(v15);
  v18 = &v78 - v17;
  static Logger.uv.getter();
  v19 = *(v4 + 16);
  v86 = a1;
  v19(v8, a1, v3);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v80 = v9;
    v23 = v22;
    v24 = swift_slowAlloc();
    v84 = v10;
    v79 = v24;
    v88 = v24;
    *v23 = 136315138;
    v19(v83, v8, v3);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    (*(v4 + 8))(v8, v3);
    v28 = sub_10001BD80(v25, v27, &v88);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "Received %s", v23, 0xCu);
    sub_1000041C8(v79);

    v9 = v80;

    v29 = v84;
    v30 = v84;
  }

  else
  {

    (*(v4 + 8))(v8, v3);
    v30 = v10;
    v29 = v10;
  }

  v31 = *(v30 + 8);
  v31(v18, v9);
  v32 = UninstallAppsRequest.bundleIDs.getter();
  v33 = v87;
  if (!v32)
  {
    v47 = v81;
    static Logger.uv.getter();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Attempting uninstall of all development applications", v50, 2u);
    }

    v31(v47, v9);
    v51 = sub_1000071B4();
    goto LABEL_33;
  }

  v34 = v32;
  if ((UninstallAppsRequest.arePrefixes.getter() & 1) == 0)
  {
    static Logger.uv.getter();

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v84 = v29;
      v56 = v55;
      v88 = v55;
      *v54 = 136315138;
      v57 = Array.description.getter();
      v59 = v9;
      v60 = sub_10001BD80(v57, v58, &v88);

      *(v54 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v52, v53, "Attempting uninstall of specified applications: %s", v54, 0xCu);
      sub_1000041C8(v56);

      v61 = v87;
      v62 = v59;
    }

    else
    {

      v61 = v33;
      v62 = v9;
    }

    v31(v61, v62);
    v51 = v34;
    goto LABEL_33;
  }

  v35 = v82;
  static Logger.uv.getter();

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v84 = v29;
    v40 = v39;
    v88 = v39;
    *v38 = 136315138;
    v41 = Array.description.getter();
    v43 = v9;
    v44 = sub_10001BD80(v41, v42, &v88);

    *(v38 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v36, v37, "Attempting uninstall of applications matching specified prefixes: %s", v38, 0xCu);
    sub_1000041C8(v40);

    v45 = v82;
    v46 = v43;
  }

  else
  {

    v45 = v35;
    v46 = v9;
  }

  v31(v45, v46);
  result = sub_1000071B4();
  v64 = result;
  v65 = *(result + 16);
  if (!v65)
  {
    v51 = &_swiftEmptyArrayStorage;
    goto LABEL_32;
  }

  v66 = 0;
  v67 = (result + 40);
  v86 = v65 - 1;
  v51 = &_swiftEmptyArrayStorage;
  v87 = (result + 40);
  do
  {
    v68 = &v67[16 * v66];
    v69 = v66;
    while (1)
    {
      if (v69 >= *(v64 + 16))
      {
        __break(1u);
        return result;
      }

      if (*(v34 + 2))
      {
        break;
      }

LABEL_17:
      ++v69;
      v68 += 16;
      if (v65 == v69)
      {
        goto LABEL_32;
      }
    }

    v71 = *(v68 - 1);
    v70 = *v68;
    v72 = *(v34 + 4);
    v73 = *(v34 + 5);

    v74._countAndFlagsBits = v72;
    v74._object = v73;
    LOBYTE(v72) = String.hasPrefix(_:)(v74);

    if ((v72 & 1) == 0)
    {

      goto LABEL_17;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v88 = v51;
    if ((result & 1) == 0)
    {
      result = sub_10002C6D4(0, *(v51 + 2) + 1, 1);
      v51 = v88;
    }

    v76 = *(v51 + 2);
    v75 = *(v51 + 3);
    if (v76 >= v75 >> 1)
    {
      result = sub_10002C6D4((v75 > 1), v76 + 1, 1);
      v51 = v88;
    }

    v66 = v69 + 1;
    *(v51 + 2) = v76 + 1;
    v77 = &v51[16 * v76];
    *(v77 + 4) = v71;
    *(v77 + 5) = v70;
    v67 = v87;
  }

  while (v86 != v69);
LABEL_32:

LABEL_33:
  sub_10002B4A8(v51, v85);
}

uint64_t sub_10002AB84(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v90 = a2;
  v3 = type metadata accessor for TransportReply();
  v82 = *(v3 - 8);
  v83 = v3;
  __chkstk_darwin(v3);
  v78 = v4;
  v80 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AgentDescriptor.Bundle();
  v86 = *(v5 - 1);
  v87 = v5;
  __chkstk_darwin(v5);
  v85 = (&v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ResetAppRequest();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v77 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v73 - v12;
  __chkstk_darwin(v11);
  v15 = &v73 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v91 = v16;
  v92 = v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v73 - v21;
  static Logger.uv.getter();
  v23 = *(v8 + 16);
  v89 = a1;
  v23(v15, a1, v7);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v24, v25);
  v84 = v20;
  v81 = v7;
  v79 = v8;
  v74 = v13;
  v75 = v23;
  v76 = v8 + 16;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v93 = v73;
    *v27 = 136315138;
    v23(v13, v15, v7);
    v28 = String.init<A>(describing:)();
    v29 = v7;
    v30 = v28;
    v32 = v31;
    v33 = *(v8 + 8);
    v33(v15, v29);
    v34 = v91;
    v35 = v92;
    v36 = sub_10001BD80(v30, v32, &v93);

    *(v27 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v24, v25, "Received %s", v27, 0xCu);
    sub_1000041C8(v73);

    v37 = *(v35 + 8);
    v37(v22, v34);
  }

  else
  {

    v33 = *(v8 + 8);
    v33(v15, v7);
    v37 = *(v92 + 8);
    v37(v22, v91);
  }

  v38 = v85;
  v39 = v89;
  ResetAppRequest.agentDescriptorBundle.getter();
  v40 = AgentDescriptor.Bundle.bundleID.getter();
  v42 = v41;
  (*(v86 + 8))(v38, v87);
  v43 = v88;
  v44 = sub_1000071B4();
  v93 = v40;
  v94 = v42;
  __chkstk_darwin(v44);
  v72 = &v93;
  LOBYTE(v38) = sub_10002C800(sub_10002CC40, (&v73 - 4), v44);

  if (v38)
  {

    sub_100023B64(v43, *(v43 + 3));
    sub_100026980(v39);
    LOBYTE(v72) = 2;
    Future.ignoringValue(dsoHandle:file:line:column:function:)();

    v46 = v82;
    v45 = v83;
    v47 = v80;
    (*(v82 + 16))(v80, v90, v83);
    v48 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v49 = swift_allocObject();
    (*(v46 + 32))(v49 + v48, v47, v45);
    Future.observeFinish(_:)();
  }

  else
  {
    v88 = v33;
    v93 = 0;
    v94 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v93 = v40;
    v94 = v42;
    v51._object = 0x8000000100031320;
    v51._countAndFlagsBits = 0xD00000000000002BLL;
    String.append(_:)(v51);
    v53 = v93;
    v52 = v94;
    v54 = v84;
    static Logger.uv.getter();
    v55 = v77;
    v56 = v81;
    v57 = v75;
    v75(v77, v39, v81);

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      LODWORD(v86) = v59;
      v61 = v60;
      v85 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v93 = v87;
      *v61 = 136315394;
      v89 = v37;
      v57(v74, v55, v56);
      v62 = v54;
      v63 = String.init<A>(describing:)();
      v64 = v56;
      v66 = v65;
      v88(v55, v64);
      v67 = sub_10001BD80(v63, v66, &v93);

      *(v61 + 4) = v67;
      *(v61 + 12) = 2112;
      sub_1000086E8();
      swift_allocError();
      *v68 = 6;
      *(v68 + 8) = v53;
      *(v68 + 16) = v52;

      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v61 + 14) = v69;
      v70 = v85;
      *v85 = v69;
      _os_log_impl(&_mh_execute_header, v58, v86, "%s failed: %@", v61, 0x16u);
      sub_10000D330(v70, &qword_10003CE68, &unk_10002EE00);

      sub_1000041C8(v87);

      v89(v62, v91);
    }

    else
    {

      v88(v55, v56);
      v37(v54, v91);
    }

    sub_1000086E8();
    swift_allocError();
    *v71 = 6;
    *(v71 + 8) = v53;
    *(v71 + 16) = v52;
    LOBYTE(v72) = 2;
    TransportReply.send(error:file:line:column:function:)();
  }
}

uint64_t sub_10002B4A8(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v19 = type metadata accessor for TransportReply();
  v4 = *(v19 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v19);
  v18 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Callsite();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000071B4();
  v10 = swift_allocObject();
  *(v10 + 16) = &_swiftEmptyArrayStorage;
  v22 = v9;
  v23 = sub_10002BF0C;
  v24 = v10;
  v25 = v2;

  v11 = sub_10002C070(sub_10002C050, v21, a1);

  v26 = v11;
  Callsite.init(_:_:_:_:)();
  sub_100001CC8(&qword_10003DBC0, &qword_10002F510);
  sub_100004334(&qword_10003DBC8, &qword_10003DBC0, &qword_10002F510, &protocol conformance descriptor for [A]);
  Sequence.invert<A>(callsite:andAccumulateErrors:)();
  (*(v6 + 8))(v8, v17);

  v13 = v18;
  v12 = v19;
  (*(v4 + 16))(v18, v20, v19);
  v14 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = sub_10002BF0C;
  *(v15 + 3) = v10;
  *(v15 + 4) = v10;
  (*(v4 + 32))(&v15[v14], v13, v12);
  swift_retain_n();
  Future.observeFinish(_:)();
}

uint64_t sub_10002B7D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10002B810()
{
  sub_100001CC8(&qword_10003DC00, &unk_10002F540);
  FutureTermination.result.getter();
  if (v13 == 1)
  {
    v0 = v12;
    v7[0] = 2;
    v8 = 0;
    v9 = 0;
    swift_errorRetain();
    sub_1000089B0();
    HumanReadableError.withUnderlying(_:)();
    sub_10002CAE4(v12, 1);
    v1 = v11;
    v2 = sub_100023B64(v10, v11);
    v3 = *(v1 - 8);
    __chkstk_darwin(v2);
    v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v3 + 16))(v5);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v3 + 8))(v5, v1);
    }

    else
    {
      swift_allocError();
      (*(v3 + 32))(v6, v5, v1);
    }

    TransportReply.send(error:file:line:column:function:)();
    sub_10002CAE4(v0, 1);

    sub_1000041C8(v10);
  }

  else
  {
    TransportReply.send(file:line:column:function:)();
  }

  URL.stopAccessingSecurityScopedResource()();
}

uint64_t sub_10002BA74()
{
  sub_100001CC8(&qword_10003DC00, &unk_10002F540);
  FutureTermination.result.getter();
  if (v14 != 1)
  {
    return TransportReply.send(file:line:column:function:)();
  }

  v0 = v13;
  v8[0] = 6;
  v9 = 0;
  v10 = 0;
  swift_errorRetain();
  sub_1000089B0();
  HumanReadableError.withUnderlying(_:)();
  sub_10002CAE4(v13, 1);
  v1 = v12;
  v2 = sub_100023B64(v11, v12);
  v3 = *(v1 - 8);
  __chkstk_darwin(v2);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 16))(v5);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v3 + 8))(v5, v1);
  }

  else
  {
    swift_allocError();
    (*(v3 + 32))(v7, v5, v1);
  }

  TransportReply.send(error:file:line:column:function:)();
  sub_10002CAE4(v0, 1);

  return sub_1000041C8(v11);
}

uint64_t sub_10002BCC4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(a3 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_10002C5C8(0, *(v10 + 2) + 1, 1, v10);
    *(a3 + 16) = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_10002C5C8((v12 > 1), v13 + 1, 1, v10);
  }

  *(v10 + 2) = v13 + 1;
  v14 = &v10[16 * v13];
  *(v14 + 4) = a1;
  *(v14 + 5) = a2;
  *(a3 + 16) = v10;
  swift_endAccess();
  static Logger.uv.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v21[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_10001BD80(a1, a2, v21);
    _os_log_impl(&_mh_execute_header, v15, v16, "%s", v17, 0xCu);
    sub_1000041C8(v18);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10002BF14@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t, unint64_t)@<X2>, void *a3@<X4>, uint64_t *a4@<X8>, uint64_t a5@<X1>)
{
  v8 = *a1;
  v9 = a1[1];
  v15 = *a1;
  v16 = v9;
  v14[2] = &v15;
  if (sub_10002C800(sub_10002C8AC, v14, a5))
  {
    sub_100023B64(a3, a3[3]);
    result = sub_100025B9C(v8, v9);
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
    _StringGuts.grow(_:)(70);
    v11._object = 0x8000000100030ED0;
    v11._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v11);
    v12._countAndFlagsBits = v8;
    v12._object = v9;
    String.append(_:)(v12);
    v13._countAndFlagsBits = 0xD000000000000030;
    v13._object = 0x8000000100031280;
    String.append(_:)(v13);
    a2(v15, v16);

    result = 0;
  }

  *a4 = result;
  return result;
}

void *sub_10002C070(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = &_swiftEmptyArrayStorage;
  v12 = &_swiftEmptyArrayStorage;
  v5 = *(a3 + 16);
  if (v5)
  {
    for (i = (a3 + 40); ; i += 2)
    {
      v8 = *i;
      v11[0] = *(i - 1);
      v11[1] = v8;

      a1(&v10, v11);
      if (v3)
      {
        break;
      }

      if (v10)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v12;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

uint64_t sub_10002C18C(uint64_t a1, void (*a2)(uint64_t, unint64_t), uint64_t a3, uint64_t a4)
{
  sub_100001CC8(&qword_10003DBD0, &qword_10002F518);
  FutureTermination.result.getter();
  v6 = v23;
  if (v24 == 1)
  {
    v19 = v23;
    swift_errorRetain();
    sub_100001CC8(&qword_10003D9C0, &qword_10002F068);
    sub_100001CC8(&qword_10003DBD8, &qword_10002F520);
    if (swift_dynamicCast())
    {
      sub_10002C5B0(v17, &v20);
      sub_100023B64(&v20, v22);
      v7 = dispatch thunk of HumanReadableError.fullDiagnosticsOutput.getter();
      v9 = v8;
      sub_1000041C8(&v20);
      v10 = v7;
    }

    else
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
      sub_10000D330(v17, &qword_10003DBE0, &qword_10002F528);
      v20 = 0;
      v21 = 0xE000000000000000;
      *&v17[0] = v6;
      _print_unlocked<A, B>(_:_:)();
      v10 = v20;
      v9 = v21;
    }

    a2(v10, v9);
    sub_10002C5A4(v6, 1);
  }

  else
  {
    sub_10002C5A4(v23, 0);
  }

  swift_beginAccess();
  v11 = *(a4 + 16);
  if (!*(v11 + 16))
  {
    return TransportReply.send(file:line:column:function:)();
  }

  *&v17[0] = v11;

  sub_100001CC8(&qword_10003DBE8, &qword_10002F530);
  sub_100004334(&qword_10003DBF0, &qword_10003DBE8, &qword_10002F530, &protocol conformance descriptor for [A]);
  v12 = BidirectionalCollection<>.joined(separator:)();
  v14 = v13;

  sub_1000086E8();
  swift_allocError();
  *v15 = 3;
  *(v15 + 8) = v12;
  *(v15 + 16) = v14;
  TransportReply.send(error:file:line:column:function:)();
}

uint64_t sub_10002C460()
{
  v1 = type metadata accessor for TransportReply();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002C52C(uint64_t a1)
{
  type metadata accessor for TransportReply();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];

  return sub_10002C18C(a1, v3, v4, v5);
}

uint64_t sub_10002C5A4(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10002C5B0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

char *sub_10002C5C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001CC8(&qword_10003DBF8, &qword_10002F538);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_10002C6D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002C6F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10002C6F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001CC8(&qword_10003DBF8, &qword_10002F538);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_10002C800(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10002C8C8()
{
  v1 = type metadata accessor for TransportReply();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

void sub_10002CA10()
{
  type metadata accessor for TransportReply();
  type metadata accessor for URL();

  sub_10002B810();
}

uint64_t sub_10002CAE4(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_10002CAF0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10002CB48()
{
  v1 = type metadata accessor for TransportReply();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002CBD0()
{
  type metadata accessor for TransportReply();

  return sub_10002BA74();
}

void sub_10002CC5C(NSObject *a1)
{
  v2 = *__error();
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_fault_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "_set_user_dir_suffix failed: %{darwin.errno}d", v3, 8u);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t TransportMessage<>.body.getter()
{
  return TransportMessage<>.body.getter();
}

{
  return TransportMessage<>.body.getter();
}