uint64_t sub_100158688(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for AuditToken();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10015874C, 0, 0);
}

uint64_t sub_10015874C()
{
  sub_100002BAC();
  sub_100004C7C();
  sub_10000ECC0();
  v0 = sub_10000209C();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_1001587A8()
{
  sub_100002BAC();
  sub_100007EF4();
  sub_10000C698();

  v0 = sub_100003000();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_10015880C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v17 = sub_100003268();
  sub_10000364C(v17);
  v18 = sub_100003ADC();
  sub_10009F90C(v18, v19, v20);
  sub_100011C28();
  v21 = swift_task_alloc();
  sub_10000CDF8(v21);
  sub_100019CC8();
  sub_10000D5C4();
  sub_100103F78(v15);
  sub_1000070EC();
  if (v14 == 1)
  {
    sub_100009BE4();

    sub_100002F54();
  }

  else
  {
    if (qword_1001B8AD8 != -1)
    {
      sub_100008808();
      swift_once();
    }

    v22 = sub_100013850();
    sub_10000641C(v22, qword_1001BE280);
    v23 = sub_10000A36C();
    v24(v23);

    v25 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_1000111F8();
    sub_10001E6D8();
    sub_100019280();
    if (v26)
    {
      sub_10000AAA8();
      v27 = swift_slowAlloc();
      sub_1000033D0();
      swift_slowAlloc();
      sub_100003DF0();
      *v27 = 67109378;
      AuditToken.processIdentifier.getter();
      v28 = sub_100007B58();
      v29(v28);
      v30 = sub_100003520();
      sub_100002EA8();
      sub_100015FE4(v31, v32, &unk_100172F00);
      sub_1000062B0();
      Set.description.getter();
      sub_100005AD8();
      v33 = sub_100008004();
      sub_100004A3C(v33, v34, v35);
      sub_10000C6E8();
      *(v27 + 10) = v30;
      sub_1000079BC(&_mh_execute_header, v36, v37, "Request %d attempted on session %s");
      sub_100003324(v16);
      sub_100002BD0();

      sub_100002BD0();
    }

    else
    {
      v38 = sub_100007B58();
      v39(v38);
    }

    sub_10000E76C();
    sub_100005E18();
    sub_100015FE4(v40, v41, &protocol conformance descriptor for ModelManagerError);
    v42 = sub_10000A418();
    sub_10015D7D4(v42, v43);
    sub_1000076C8();
    (*(v44 + 104))();
    swift_willThrow();

    sub_1000020AC();
  }

  sub_100003540();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100158A98(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for AuditToken();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100158B5C, 0, 0);
}

uint64_t sub_100158B5C()
{
  sub_100002BAC();
  sub_100004C7C();
  sub_10000ECC0();
  v0 = sub_10000209C();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_100158BB8()
{
  sub_100002BAC();
  sub_100007EF4();
  sub_10000C698();

  v0 = sub_100003000();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_100158C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v17 = sub_100003268();
  sub_10000364C(v17);
  v18 = sub_100003ADC();
  sub_10009F90C(v18, v19, v20);
  sub_100011C28();
  v21 = swift_task_alloc();
  sub_10000CDF8(v21);
  sub_100019CC8();
  sub_10000D5C4();
  sub_100103F78(v15);
  sub_1000070EC();
  if (v14 == 1)
  {
    sub_100009BE4();

    sub_100002F54();
  }

  else
  {
    if (qword_1001B8AD8 != -1)
    {
      sub_100008808();
      swift_once();
    }

    v22 = sub_100013850();
    sub_10000641C(v22, qword_1001BE280);
    v23 = sub_10000A36C();
    v24(v23);

    v25 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_1000111F8();
    sub_10001E6D8();
    sub_100019280();
    if (v26)
    {
      sub_10000AAA8();
      v27 = swift_slowAlloc();
      sub_1000033D0();
      swift_slowAlloc();
      sub_100003DF0();
      *v27 = 67109378;
      AuditToken.processIdentifier.getter();
      v28 = sub_100007B58();
      v29(v28);
      v30 = sub_100003520();
      sub_100002EA8();
      sub_100015FE4(v31, v32, &unk_100172F00);
      sub_1000062B0();
      Set.description.getter();
      sub_100005AD8();
      v33 = sub_100008004();
      sub_100004A3C(v33, v34, v35);
      sub_10000C6E8();
      *(v27 + 10) = v30;
      sub_1000079BC(&_mh_execute_header, v36, v37, "Request %d attempted on session %s");
      sub_100003324(v16);
      sub_100002BD0();

      sub_100002BD0();
    }

    else
    {
      v38 = sub_100007B58();
      v39(v38);
    }

    sub_10000E76C();
    sub_100005E18();
    sub_100015FE4(v40, v41, &protocol conformance descriptor for ModelManagerError);
    v42 = sub_10000A418();
    sub_10015D7D4(v42, v43);
    sub_1000076C8();
    (*(v44 + 104))();
    swift_willThrow();

    sub_1000020AC();
  }

  sub_100003540();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100158EA8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for AuditToken();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100158F6C, 0, 0);
}

uint64_t sub_100158F6C()
{
  sub_100002BAC();
  sub_100004C7C();
  sub_10000ECC0();
  v0 = sub_10000209C();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_100158FC8()
{
  sub_100002BAC();
  sub_100007EF4();
  sub_10000C698();

  v0 = sub_100003000();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_10015902C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v17 = sub_100003268();
  sub_10000364C(v17);
  v18 = sub_100003ADC();
  sub_10009F90C(v18, v19, v20);
  sub_100011C28();
  v21 = swift_task_alloc();
  sub_10000CDF8(v21);
  sub_100019CC8();
  sub_10000D5C4();
  sub_100103F78(v15);
  sub_1000070EC();
  if (v14 == 1)
  {
    sub_100009BE4();

    sub_100002F54();
  }

  else
  {
    if (qword_1001B8AD8 != -1)
    {
      sub_100008808();
      swift_once();
    }

    v22 = sub_100013850();
    sub_10000641C(v22, qword_1001BE280);
    v23 = sub_10000A36C();
    v24(v23);

    v25 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_1000111F8();
    sub_10001E6D8();
    sub_100019280();
    if (v26)
    {
      sub_10000AAA8();
      v27 = swift_slowAlloc();
      sub_1000033D0();
      swift_slowAlloc();
      sub_100003DF0();
      *v27 = 67109378;
      AuditToken.processIdentifier.getter();
      v28 = sub_100007B58();
      v29(v28);
      v30 = sub_100003520();
      sub_100002EA8();
      sub_100015FE4(v31, v32, &unk_100172F00);
      sub_1000062B0();
      Set.description.getter();
      sub_100005AD8();
      v33 = sub_100008004();
      sub_100004A3C(v33, v34, v35);
      sub_10000C6E8();
      *(v27 + 10) = v30;
      sub_1000079BC(&_mh_execute_header, v36, v37, "Request %d attempted on session %s");
      sub_100003324(v16);
      sub_100002BD0();

      sub_100002BD0();
    }

    else
    {
      v38 = sub_100007B58();
      v39(v38);
    }

    sub_10000E76C();
    sub_100005E18();
    sub_100015FE4(v40, v41, &protocol conformance descriptor for ModelManagerError);
    v42 = sub_10000A418();
    sub_10015D7D4(v42, v43);
    sub_1000076C8();
    (*(v44 + 104))();
    swift_willThrow();

    sub_1000020AC();
  }

  sub_100003540();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1001592B8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for AuditToken();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10015937C, 0, 0);
}

uint64_t sub_10015937C()
{
  sub_100002BAC();
  sub_100004C7C();
  sub_10000ECC0();
  v0 = sub_10000209C();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_1001593D8()
{
  sub_100002BAC();
  sub_100007EF4();
  sub_10000C698();

  v0 = sub_100003000();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_10015943C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v17 = sub_100003268();
  sub_10000364C(v17);
  v18 = sub_100003ADC();
  sub_10009F90C(v18, v19, v20);
  sub_100011C28();
  v21 = swift_task_alloc();
  sub_10000CDF8(v21);
  sub_100019CC8();
  sub_10000D5C4();
  sub_100103F78(v15);
  sub_1000070EC();
  if (v14 == 1)
  {
    sub_100009BE4();

    sub_100002F54();
  }

  else
  {
    if (qword_1001B8AD8 != -1)
    {
      sub_100008808();
      swift_once();
    }

    v22 = sub_100013850();
    sub_10000641C(v22, qword_1001BE280);
    v23 = sub_10000A36C();
    v24(v23);

    v25 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_1000111F8();
    sub_10001E6D8();
    sub_100019280();
    if (v26)
    {
      sub_10000AAA8();
      v27 = swift_slowAlloc();
      sub_1000033D0();
      swift_slowAlloc();
      sub_100003DF0();
      *v27 = 67109378;
      AuditToken.processIdentifier.getter();
      v28 = sub_100007B58();
      v29(v28);
      v30 = sub_100003520();
      sub_100002EA8();
      sub_100015FE4(v31, v32, &unk_100172F00);
      sub_1000062B0();
      Set.description.getter();
      sub_100005AD8();
      v33 = sub_100008004();
      sub_100004A3C(v33, v34, v35);
      sub_10000C6E8();
      *(v27 + 10) = v30;
      sub_1000079BC(&_mh_execute_header, v36, v37, "Request %d attempted on session %s");
      sub_100003324(v16);
      sub_100002BD0();

      sub_100002BD0();
    }

    else
    {
      v38 = sub_100007B58();
      v39(v38);
    }

    sub_10000E76C();
    sub_100005E18();
    sub_100015FE4(v40, v41, &protocol conformance descriptor for ModelManagerError);
    v42 = sub_10000A418();
    sub_10015D7D4(v42, v43);
    sub_1000076C8();
    (*(v44 + 104))();
    swift_willThrow();

    sub_1000020AC();
  }

  sub_100003540();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1001596C8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for AuditToken();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10015978C, 0, 0);
}

uint64_t sub_10015978C()
{
  sub_100002BAC();
  sub_100004C7C();
  sub_10000ECC0();
  v0 = sub_10000209C();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_1001597E8()
{
  sub_100002BAC();
  sub_100007EF4();
  sub_10000C698();

  v0 = sub_100003000();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_10015984C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v17 = sub_100003268();
  sub_10000364C(v17);
  v18 = sub_100003ADC();
  sub_10009F90C(v18, v19, v20);
  sub_100011C28();
  v21 = swift_task_alloc();
  sub_10000CDF8(v21);
  sub_100019CC8();
  sub_10000D5C4();
  sub_100103F78(v15);
  sub_1000070EC();
  if (v14 == 1)
  {
    sub_100009BE4();

    sub_100002F54();
  }

  else
  {
    if (qword_1001B8AD8 != -1)
    {
      sub_100008808();
      swift_once();
    }

    v22 = sub_100013850();
    sub_10000641C(v22, qword_1001BE280);
    v23 = sub_10000A36C();
    v24(v23);

    v25 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_1000111F8();
    sub_10001E6D8();
    sub_100019280();
    if (v26)
    {
      sub_10000AAA8();
      v27 = swift_slowAlloc();
      sub_1000033D0();
      swift_slowAlloc();
      sub_100003DF0();
      *v27 = 67109378;
      AuditToken.processIdentifier.getter();
      v28 = sub_100007B58();
      v29(v28);
      v30 = sub_100003520();
      sub_100002EA8();
      sub_100015FE4(v31, v32, &unk_100172F00);
      sub_1000062B0();
      Set.description.getter();
      sub_100005AD8();
      v33 = sub_100008004();
      sub_100004A3C(v33, v34, v35);
      sub_10000C6E8();
      *(v27 + 10) = v30;
      sub_1000079BC(&_mh_execute_header, v36, v37, "Request %d attempted on session %s");
      sub_100003324(v16);
      sub_100002BD0();

      sub_100002BD0();
    }

    else
    {
      v38 = sub_100007B58();
      v39(v38);
    }

    sub_10000E76C();
    sub_100005E18();
    sub_100015FE4(v40, v41, &protocol conformance descriptor for ModelManagerError);
    v42 = sub_10000A418();
    sub_10015D7D4(v42, v43);
    sub_1000076C8();
    (*(v44 + 104))();
    swift_willThrow();

    sub_1000020AC();
  }

  sub_100003540();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100159AD8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  v11 = Session.Metadata.id.getter();
  a3(v11);
  type metadata accessor for Session();
  v12 = static UUIDIdentifier.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v8, v4);
  v13(v10, v4);
  return v12 & 1;
}

uint64_t sub_100159CA0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100159D6C, 0, 0);
}

uint64_t sub_100159D6C()
{
  sub_100001ED0();
  sub_10002ABF0();
  ModelXPCRequest.FetchModelInstance.sessionID.getter();
  sub_10000C030();
  sub_100003160(&unk_100174C18);
  v0 = swift_task_alloc();
  v1 = sub_10000CA04(v0);
  *v1 = v2;
  v3 = sub_100005950(v1);

  return v4(v3);
}

uint64_t sub_100159E04()
{
  sub_100001ED0();
  v2 = v1;
  sub_100001EF4();
  v4 = v3[6];
  v5 = v3[5];
  v6 = v3[4];
  v7 = *v0;
  sub_100002B9C();
  *v8 = v7;

  (*(v5 + 8))(v4, v6);

  v9 = *(v7 + 8);

  return v9(v2 & 0x101);
}

uint64_t sub_100159F5C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10015A028, 0, 0);
}

uint64_t sub_10015A028()
{
  sub_100001ED0();
  sub_10002ABF0();
  ModelXPCRequest.CancelRequest.sessionID.getter();
  sub_10000C030();
  sub_100003160(&unk_100174C18);
  v0 = swift_task_alloc();
  v1 = sub_10000CA04(v0);
  *v1 = v2;
  v3 = sub_100005950(v1);

  return v4(v3);
}

uint64_t sub_10015A0C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10015A18C, 0, 0);
}

uint64_t sub_10015A18C()
{
  sub_100001ED0();
  sub_10002ABF0();
  ModelXPCRequest.ExecuteRequest.sessionID.getter();
  sub_10000C030();
  sub_100003160(&unk_100174C18);
  v0 = swift_task_alloc();
  v1 = sub_10000CA04(v0);
  *v1 = v2;
  v3 = sub_100005950(v1);

  return v4(v3);
}

uint64_t sub_10015A224(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10015A2F0, 0, 0);
}

uint64_t sub_10015A2F0()
{
  sub_100001ED0();
  sub_10002ABF0();
  ModelXPCRequest.PrewarmSession.sessionID.getter();
  sub_10000C030();
  sub_100003160(&unk_100174C18);
  v0 = swift_task_alloc();
  v1 = sub_10000CA04(v0);
  *v1 = v2;
  v3 = sub_100005950(v1);

  return v4(v3);
}

uint64_t sub_10015A388(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10015A454, 0, 0);
}

uint64_t sub_10015A454()
{
  sub_100001ED0();
  sub_10002ABF0();
  ModelXPCRequest.CancelSessionRequest.sessionID.getter();
  sub_10000C030();
  sub_100003160(&unk_100174C18);
  v0 = swift_task_alloc();
  v1 = sub_10000CA04(v0);
  *v1 = v2;
  v3 = sub_100005950(v1);

  return v4(v3);
}

uint64_t sub_10015A4EC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10015A5B8, 0, 0);
}

uint64_t sub_10015A5B8()
{
  sub_100001ED0();
  sub_10002ABF0();
  ModelXPCRequest.DeleteSessionRequest.sessionID.getter();
  sub_10000C030();
  sub_100003160(&unk_100174C18);
  v0 = swift_task_alloc();
  v1 = sub_10000CA04(v0);
  *v1 = v2;
  v3 = sub_100005950(v1);

  return v4(v3);
}

uint64_t sub_10015A650(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10015A71C, 0, 0);
}

uint64_t sub_10015A71C()
{
  sub_100001ED0();
  sub_10002ABF0();
  ModelXPCRequest.ExecuteInputStreamRequest.sessionID.getter();
  sub_10000C030();
  sub_100003160(&unk_100174C18);
  v0 = swift_task_alloc();
  v1 = sub_10000CA04(v0);
  *v1 = v2;
  v3 = sub_100005950(v1);

  return v4(v3);
}

uint64_t sub_10015A7B4()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174D90);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015A848()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174D78);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015A8DC()
{
  sub_100001ED0();
  sub_100003160(&unk_100174D68);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015A96C()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174D58);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015AA00()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174D40);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015AA94()
{
  sub_100001ED0();
  sub_100003160(&unk_100174D30);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015AB24()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174D20);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015ABB8()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174D08);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015AC4C()
{
  sub_100001ED0();
  sub_100003160(&unk_100174CF8);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015ACDC()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174CE8);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015AD70()
{
  sub_100003884();
  sub_100003160(&unk_100174CD0);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100045724(v1);

  return v4(v3);
}

uint64_t sub_10015AE14()
{
  sub_100001ED0();
  sub_100003160(&unk_100174CC0);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015AEA4()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174CB0);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015AF38()
{
  sub_100003884();
  sub_100003160(&unk_100174C98);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100045724(v1);

  return v4(v3);
}

uint64_t sub_10015AFDC()
{
  sub_100001ED0();
  sub_100003160(&unk_100174C88);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015B06C()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174C78);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015B100()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174C60);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015B194()
{
  sub_100001ED0();
  sub_100003160(&unk_100174C50);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015B224()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174C40);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015B2B8()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174C28);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015B34C()
{
  sub_100001ED0();
  sub_100003160(&unk_100174C10);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015B3DC()
{
  sub_100002BAC();
  v3 = v2;
  sub_100001EF4();
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;

  if (v0)
  {
    sub_100001F00();

    return v6();
  }

  else
  {
    v8 = *(v4 + 8);

    return v8(v3 & 0x101);
  }
}

uint64_t sub_10015B4FC()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174BF8);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015B590()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174BE0);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015B624()
{
  sub_100001ED0();
  sub_100003160(&unk_100174BD0);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015B6B4()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174BC0);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015B748()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174BA8);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015B7DC()
{
  sub_100001ED0();
  sub_100003160(&unk_100174B98);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015B86C()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174B88);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015B900()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174B70);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015B994()
{
  sub_100001ED0();
  sub_100003160(&unk_100174B60);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015BA24()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174B50);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015BAB8()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174B38);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015BB4C()
{
  sub_100001ED0();
  sub_100003160(&unk_100174B28);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015BBDC()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174B18);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015BC70()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174B00);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015BD04()
{
  sub_100001ED0();
  sub_100003160(&unk_100174AF0);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015BD94()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174AE0);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015BE28()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174AC8);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015BEBC()
{
  sub_100001ED0();
  sub_100003160(&unk_100174AB8);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015BF4C()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174AA8);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015BFE0()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174A90);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015C074()
{
  sub_100001ED0();
  sub_100003160(&unk_100174A80);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015C104()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174A70);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015C198()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174A58);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015C22C()
{
  sub_100001ED0();
  sub_100003160(&unk_100174A48);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015C2BC()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174A38);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015C350()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174A20);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015C3E4()
{
  sub_100001ED0();
  sub_100003160(&unk_100174A10);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015C474()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174A00);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015C508()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_1001749E8);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015C59C()
{
  sub_100001ED0();
  sub_100003160(&unk_1001749D8);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015C62C()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_1001749C8);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015C6C0()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_1001749B0);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015C754()
{
  sub_100001ED0();
  sub_100003160(&unk_1001749A0);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015C7E4()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174990);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015C878()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174978);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015C90C()
{
  sub_100001ED0();
  sub_100003160(&unk_100174968);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015C99C()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174958);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015CA30()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174940);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015CAC4()
{
  sub_100001ED0();
  sub_100003160(&unk_100174930);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015CB54()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174920);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015CBE8()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174908);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015CC7C()
{
  sub_100001ED0();
  sub_100003160(&unk_1001748F8);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015CD0C()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_1001748E8);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015CDA0()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_1001748D0);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015CE34()
{
  sub_100001ED0();
  sub_100003160(&unk_1001748C0);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015CEC4()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_1001748B0);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

uint64_t sub_10015CF58()
{
  sub_10000639C();
  sub_100003884();
  sub_100006604();
  sub_100003160(&unk_100174890);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_100011604(v1);
  sub_100003D20();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10015CFEC()
{
  sub_100001ED0();
  sub_100003160(&unk_100174880);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100003CDC(v1);

  return v4(v3);
}

uint64_t sub_10015D07C()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100003160(&unk_100174870);
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v3 = sub_100008558(v1);

  return v4(v3);
}

unint64_t sub_10015D12C()
{
  result = qword_1001B99F8;
  if (!qword_1001B99F8)
  {
    sub_10006A614(&qword_1001B99F0, &qword_100170530);
    sub_100015FE4(&qword_1001B9A00, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
    sub_100015FE4(&qword_1001B9A08, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B99F8);
  }

  return result;
}

uint64_t sub_10015D3D4(uint64_t a1, uint64_t a2)
{
  v2[10] = a2;
  v4 = type metadata accessor for ModelXPCDispatcher();
  v2[11] = v4;
  v2[5] = v4;
  v2[6] = &off_1001B0A90;
  v2[2] = a1;

  return _swift_task_switch(sub_10015D464, 0, 0);
}

uint64_t sub_10015D464()
{
  sub_100002BAC();
  v0[12] = *(*sub_100003370(v0 + 2, v0[11]) + 128);
  sub_10000ECC0();
  v1 = sub_10000209C();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10015D4D4()
{
  sub_100002BAC();
  v1 = *(v0 + 96);
  swift_beginAccess();
  *(v0 + 104) = *(v1 + 112);

  v2 = sub_100003000();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10015D554()
{
  sub_100003884();
  v1 = swift_task_alloc();
  sub_10000364C(v1);
  v2 = sub_100003ADC();
  v5 = sub_100018BC4(v2, v3, v4);

  if (v5)
  {
    v6 = *(v5 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession__lazyState);
    v7 = *(*v6 + class metadata base offset for ManagedBuffer + 16);
    v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v6 + v8));
    LOBYTE(v7) = *(v6 + *(type metadata accessor for DaemonSession.LazyState(0) + 32) + v7);
    os_unfair_lock_unlock((v6 + v8));
    v9 = v7 ^ 1;
    LOBYTE(v6) = Session.Metadata.useFoundationModelsExtensionEntitlement.getter();

    if (v6)
    {
      v10 = 256;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v9 = 1;
  }

  sub_100003324((v0 + 16));
  v11 = *(v0 + 8);

  return v11(v10 | v9 & 1u);
}

uint64_t sub_10015D82C(uint64_t a1)
{
  v3 = type metadata accessor for ModelCatalogAsset(0);
  v39 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v38 = (v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(a1 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v33[1] = v1;
  v44 = _swiftEmptyArrayStorage;
  sub_10002045C(0, v5, 0);
  v6 = v44;
  result = sub_10001E724();
  v10 = result;
  v11 = 0;
  v12 = a1 + 56;
  v34 = a1 + 64;
  v35 = v5;
  v36 = a1 + 56;
  v37 = a1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v12 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_25;
      }

      if (*(a1 + 36) != v8)
      {
        goto LABEL_26;
      }

      v41 = v9;
      v40 = v8;
      v14 = *(a1 + 48);
      v15 = v38;
      sub_10005F6CC(v14 + *(v39 + 72) * v10, v38);
      v16 = *v15;
      v42 = 2108681;
      v43 = 0xE300000000000000;
      String.append(_:)(v16);
      v18 = v42;
      v17 = v43;
      result = sub_10005F730(v15);
      v44 = v6;
      v20 = v6[2];
      v19 = v6[3];
      v21 = v6;
      if (v20 >= v19 >> 1)
      {
        result = sub_10002045C((v19 > 1), v20 + 1, 1);
        v21 = v44;
      }

      v21[2] = v20 + 1;
      v22 = &v21[2 * v20];
      v22[4] = v18;
      v22[5] = v17;
      if (v41)
      {
        goto LABEL_30;
      }

      v12 = v36;
      a1 = v37;
      v23 = 1 << *(v37 + 32);
      if (v10 >= v23)
      {
        goto LABEL_27;
      }

      v24 = *(v36 + 8 * v13);
      if ((v24 & (1 << v10)) == 0)
      {
        goto LABEL_28;
      }

      v6 = v21;
      if (*(v37 + 36) != v40)
      {
        goto LABEL_29;
      }

      v25 = v24 & (-2 << (v10 & 0x3F));
      if (v25)
      {
        v23 = __clz(__rbit64(v25)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v26 = v35;
      }

      else
      {
        v27 = v21;
        v28 = v13 << 6;
        v29 = v13 + 1;
        v26 = v35;
        v30 = (v34 + 8 * v13);
        while (v29 < (v23 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_100016E94(v10, v40, 0);
            v23 = __clz(__rbit64(v31)) + v28;
            goto LABEL_19;
          }
        }

        result = sub_100016E94(v10, v40, 0);
LABEL_19:
        v6 = v27;
      }

      if (++v11 == v26)
      {
        return v6;
      }

      v9 = 0;
      v8 = *(a1 + 36);
      v10 = v23;
      if (v23 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void *sub_10015DB20(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  type metadata accessor for AssetInfo();
  sub_100002BDC();
  v50 = v4;
  v51 = v5;
  __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_32:

    return _swiftEmptyArrayStorage;
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    goto LABEL_32;
  }

LABEL_3:
  v59 = _swiftEmptyArrayStorage;
  sub_100070C48();
  v53 = v59;
  result = sub_10003DDD4();
  v55 = result;
  v56 = v10;
  LOBYTE(v57) = v11 & 1;
  if ((v8 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v47 = v8;
    v48 = v51 + 32;
    if (a1 < 0)
    {
      v13 = a1;
    }

    else
    {
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v45 = a1 + 56;
    v46 = v13;
    v43 = v2;
    v44 = a1 + 64;
    while (!__OFADD__(v12++, 1))
    {
      v15 = v55;
      v16 = v56;
      v17 = v57;
      v18 = sub_100009ED4();
      sub_10003DE34(v18, v19, v17, a1, v20, v21, v22, v23, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54[0], v54[1], v54[2], v54[3], v55, v56, v57, v58, v59, v60, v61);
      sub_1000DB5F0(v7);

      v24 = v53;
      v59 = v53;
      v25 = v53[2];
      if (v25 >= v53[3] >> 1)
      {
        sub_100070C48();
        v24 = v59;
      }

      v24[2] = v25 + 1;
      v26 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v53 = v24;
      result = (*(v51 + 32))(v24 + v26 + *(v51 + 72) * v25, v7, v50);
      if (v49)
      {
        if (!v17)
        {
          goto LABEL_38;
        }

        sub_100009ED4();
        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v31 = v47;
        sub_100065020(&qword_1001BB460, &qword_100171E78);
        v32 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v32(v54, 0);
      }

      else
      {
        if (v17)
        {
          goto LABEL_39;
        }

        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }

        v27 = (1 << *(a1 + 32));
        if (v15 >= v27)
        {
          goto LABEL_34;
        }

        v28 = v15 >> 6;
        v29 = *(v45 + 8 * (v15 >> 6));
        if (((v29 >> v15) & 1) == 0)
        {
          goto LABEL_35;
        }

        if (*(a1 + 36) != v16)
        {
          goto LABEL_36;
        }

        v30 = v29 & (-2 << (v15 & 0x3F));
        if (v30)
        {
          v27 = (__clz(__rbit64(v30)) | v15 & 0x7FFFFFFFFFFFFFC0);
        }

        else
        {
          v33 = v28 << 6;
          v34 = v28 + 1;
          v35 = (v44 + 8 * v28);
          while (v34 < (v27 + 63) >> 6)
          {
            v37 = *v35++;
            v36 = v37;
            v33 += 64;
            ++v34;
            if (v37)
            {
              v38 = sub_100009ED4();
              result = sub_100016E94(v38, v39, 0);
              v27 = (__clz(__rbit64(v36)) + v33);
              goto LABEL_28;
            }
          }

          v40 = sub_100009ED4();
          result = sub_100016E94(v40, v41, 0);
        }

LABEL_28:
        v42 = *(a1 + 36);
        v55 = v27;
        v56 = v42;
        LOBYTE(v57) = 0;
        v31 = v47;
      }

      if (v12 == v31)
      {
        sub_100016E94(v55, v56, v57);

        return v53;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_10015DED0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return sub_1000051C8();
}

uint64_t sub_10015DEE8()
{
  sub_100003884();
  sub_1000020C0(v1 + 2);
  sub_100010CD8();
  v5 = (*(v0 + 64) + **(v0 + 64));
  v2 = swift_task_alloc();
  v1[10] = v2;
  *v2 = v1;
  v2[1] = sub_10015E008;
  v3 = sub_1000031B8(v1[7]);

  return v5(v3);
}

uint64_t sub_10015E008()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v3 = v2;
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;
  *(v6 + 88) = v0;

  sub_1000059F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10015E100()
{
  sub_100002BAC();
  sub_100003324((v0 + 16));
  sub_100002F54();

  return v1();
}

uint64_t sub_10015E158(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return sub_1000051C8();
}

uint64_t sub_10015E16C()
{
  sub_100003884();
  sub_1000020C0(v2 + 2);
  sub_100010CD8();
  v6 = (*(v1 + 56) + **(v1 + 56));
  v3 = swift_task_alloc();
  v2[9] = v3;
  *v3 = v2;
  v3[1] = sub_10015E28C;
  v4 = sub_1000031B8(v2[7]);

  return v6(v4, v0, v1);
}

uint64_t sub_10015E28C()
{
  sub_100001ED0();
  v3 = v2;
  sub_100001EF4();
  v5 = v4;
  sub_100004B40();
  *v6 = v5;
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  *(v5 + 80) = v0;

  if (!v0)
  {
    *(v5 + 88) = v3;
  }

  sub_1000059F8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10015E398()
{
  sub_100002BAC();
  v1 = *(v0 + 88);
  sub_100003324((v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1 & 0x1010101);
}

uint64_t sub_10015E400()
{
  sub_100002BAC();
  sub_100003324((v0 + 16));
  sub_100001F00();

  return v1();
}

uint64_t sub_10015E45C()
{
  sub_100002BAC();
  sub_100003324((v0 + 16));
  sub_100001F00();

  return v1();
}

uint64_t sub_10015E4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return sub_1000051C8();
}

uint64_t sub_10015E4D4()
{
  sub_10000636C();
  v2 = v1[10];
  v3 = v1[9];
  sub_1000020C0(v1 + 2);
  sub_100010CD8();
  v4 = swift_allocObject();
  v1[12] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = *(v0 + 48);

  v11 = (v5 + *v5);
  v6 = swift_task_alloc();
  v7 = sub_1000457C0(v6);
  *v7 = v8;
  v7[1] = sub_10005A2E0;
  v9 = sub_1000031B8(v1[7]);

  return v11(v9);
}

uint64_t sub_10015E648()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BE400);
  sub_10000641C(v0, qword_1001BE400);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10015E744()
{
  sub_100002BAC();
  sub_1000B5008(*(v0 + 80));
  sub_100001F00();

  return v1();
}

uint64_t sub_10015E7A0(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE428, &type metadata accessor for ModelXPCRequest.CreateSessionRequest, &unk_100174E70);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10015E7F8()
{
  sub_100002BAC();
  v1[13] = v2;
  v1[14] = v0;
  SessionRequest = type metadata accessor for ModelXPCRequest.CreateSessionRequest();
  v1[15] = SessionRequest;
  sub_100002F44(SessionRequest);
  v1[16] = v4;
  v1[17] = sub_100002C58();
  v5 = type metadata accessor for Session.Metadata();
  v1[18] = v5;
  sub_100002F44(v5);
  v1[19] = v6;
  v1[20] = sub_10000BF98();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v7 = sub_100003000();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10015E900()
{
  sub_10000385C();
  sub_100003284();
  v1 = v0[22];
  v2 = v0[19];
  v21 = v0[18];
  v3 = v0[13];
  sub_10000A4C4(v3, v3[3]);
  sub_100007130(v4 + 144, (v0 + 2));
  sub_100003370(v0 + 2, v0[5]);
  ModelXPCRequest.CreateSessionRequest.metadata.getter();
  v5 = type metadata accessor for URL();
  sub_100002BDC();
  v7 = v6;
  v8 = sub_100002C58();
  Session.Metadata.assetBundleURI.getter();
  v9 = *(v2 + 8);
  v0[23] = v9;
  v0[24] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v21);
  sub_100003E80(v8);
  v0[25] = 0;
  v0[26] = v10;
  v11 = (v7 + 8);
  v12 = v0[21];
  v22 = v0[18];
  v13 = v0[13];
  (*v11)(v8, v5);

  sub_100003324(v0 + 2);
  sub_10000A4C4(v13, v3[3]);
  sub_100007130(*(v14 + 128) + 416, (v0 + 7));
  v0[27] = type metadata accessor for DaemonSession(0);
  ModelXPCRequest.CreateSessionRequest.metadata.getter();
  v0[28] = Session.Metadata.useCaseID.getter();
  v0[29] = v15;
  v9(v12, v22);
  sub_100003370(v0 + 7, v0[10]);
  v16 = swift_task_alloc();
  v0[30] = v16;
  *v16 = v0;
  sub_100004B28(v16);
  sub_100001F70();
  sub_100003540();

  return OSEligibilityChecking.isFoundationModelsEligible.getter(v17, v18);
}

uint64_t sub_10015EB9C()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 248) = v3;

  v4 = sub_100003000();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10015EC84()
{
  v1 = *(v0 + 200);
  sub_100009648(*(v0 + 208), *(v0 + 224), *(v0 + 232), *(v0 + 248));
  if (v1)
  {

    sub_100003324((v0 + 56));

    sub_100001F00();

    return v3();
  }

  else
  {
    v5 = v2;

    if (v5)
    {
      if (qword_1001B8AE0 != -1)
      {
        sub_10000881C(&qword_1001B8AE0);
      }

      v6 = type metadata accessor for Logger();
      sub_10000641C(v6, qword_1001BE400);
      v7 = sub_100036724();
      v8(v7);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      v11 = os_log_type_enabled(v9, v10);
      v12 = *(v0 + 208);
      if (v11)
      {
        v39 = *(v0 + 184);
        v13 = *(v0 + 160);
        v14 = *(v0 + 136);
        v15 = *(v0 + 144);
        v16 = *(v0 + 128);
        v40 = *(v0 + 120);
        v17 = swift_slowAlloc();
        sub_1000080A4();
        *v17 = 136315394;
        v41 = v10;
        ModelXPCRequest.CreateSessionRequest.metadata.getter();
        v18 = Session.Metadata.useCaseID.getter();
        v39(v13, v15);
        (*(v16 + 8))(v14, v40);
        v19 = sub_100036724();
        sub_100004A3C(v19, v20, v21);
        sub_100012FD0();
        *(v17 + 4) = v18;
        *(v17 + 12) = 2080;
        v22 = sub_10015D82C(v12);

        *(v0 + 96) = v22;
        v23 = sub_100036724();
        sub_100065020(v23, v24);
        sub_1000082D4(&qword_1001B9F30, &qword_1001B9F28, &qword_100174190, &protocol conformance descriptor for [A]);
        v25 = BidirectionalCollection<>.joined(separator:)();

        v26 = sub_100036724();
        sub_100004A3C(v26, v27, v28);
        sub_100012FD0();
        *(v17 + 14) = v25;
        _os_log_impl(&_mh_execute_header, v9, v41, "Unentitled inference allowed for usecase: %s, with assets: \n%s", v17, 0x16u);
        swift_arrayDestroy();
        sub_100003420();
      }

      else
      {

        v29 = sub_100007660();
        v30(v29);
      }
    }

    else
    {
    }

    v31 = *(v0 + 184);
    v32 = *(v0 + 160);
    v33 = *(v0 + 144);
    v34 = ~v5;
    ModelXPCRequest.CreateSessionRequest.metadata.getter();
    v35 = Session.Metadata.useFoundationModelsExtensionEntitlement.getter();
    v31(v32, v33);
    sub_100003324((v0 + 56));

    if (v35)
    {
      v36 = 256;
    }

    else
    {
      v36 = 0;
    }

    v37 = v36 & 0xFFFFFFFE | v34 & 1;
    v38 = *(v0 + 8);

    return v38(v37);
  }
}

uint64_t sub_10015F08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000094B0();
  sub_10000636C();
  (*(v10 + 176))(*(v10 + 128), *(v10 + 88));

  sub_100001F00();
  sub_100006378();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_10015F14C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10015B3DC;

  return sub_10015E7F8();
}

uint64_t sub_10015F1E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_10003FD7C();
}

uint64_t sub_10015F26C(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE430, &type metadata accessor for ModelXPCRequest.CreateSessionRequest, &protocol conformance descriptor for ModelXPCRequest.CreateSessionRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10015F2C4(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE438, &type metadata accessor for ModelXPCRequest.DeleteSessionRequest, &unk_100174EB0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10015F31C(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE440, &type metadata accessor for ModelXPCRequest.DeleteSessionRequest, &protocol conformance descriptor for ModelXPCRequest.DeleteSessionRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10015F374(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE448, &type metadata accessor for ModelXPCRequest.PrewarmSession, &unk_100174EF0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10015F3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();

  v22 = *(v12 + 304);
  sub_100061B10();

  sub_100001F00();
  sub_1000062BC();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, v22, a10, a11, a12);
}

uint64_t sub_10015F484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, uint64_t, uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1000133FC();
  sub_10000C72C();
  v18[5] = v18[42];
  swift_errorRetain();
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  v19 = sub_1000062B0();
  if (sub_10001D344(v19, v20, v21))
  {
    v22 = v18[14];
    v23 = v18[13];
    v24 = v18[10];
    v25 = v18[11];

    v26 = sub_1000062B0();
    v27(v26);
    v28 = *(v25 + 16);
    v28(v23, v22, v24);
    v29 = sub_100003754();
    if (v30(v29) == enum case for ModelManagerError.inferenceError(_:))
    {
      v28(v18[12], v18[13], v18[10]);
      v31 = sub_100001F70();
      v32(v31);
      v33 = type metadata accessor for InferenceError();
      sub_1000191C8();
      v35 = v34;
      v36 = sub_100001F70();
      if (v37(v36) == enum case for InferenceError.assetVersionMismatch(_:))
      {
        a11 = v18[27];
        a12 = v18[28];
        v38 = v18[23];
        a13 = v18[22];
        v63 = v18[37];
        v39 = v18[20];
        v40 = v18[21];
        a9 = v38;
        a10 = v18[8];
        v41 = v18[7];
        type metadata accessor for TaskPriority();
        sub_100057A88();
        sub_100005640();
        v42 = swift_allocObject();
        v42[2] = 0;
        v42[3] = 0;
        v42[4] = v41;

        sub_10000A83C();
        sub_100065530();

        sub_100057A88();
        a11(v38, a10, v39);
        v43 = (*(v40 + 80) + 40) & ~*(v40 + 80);
        v44 = swift_allocObject();
        *(v44 + 2) = 0;
        *(v44 + 3) = 0;
        *(v44 + 4) = v41;
        (*(v40 + 32))(&v44[v43], v38, v39);
        *&v44[(a13 + v43 + 7) & 0xFFFFFFFFFFFFFFF8] = v63;

        sub_10000A83C();
        sub_100128ED0();
      }

      else
      {
        v45 = v18[12];

        (*(v35 + 8))(v45, v33);
      }
    }

    else
    {
    }

    v46 = v18[14];
    v47 = v18[10];
    v48 = *(v18[11] + 8);
    (v48)(v18[13], v47);
    sub_100005E30();
    sub_100003814(v49, v50, &protocol conformance descriptor for ModelManagerError);
    v51 = sub_10001C184(v47);
    v28(v52, v46, v47);
    v64 = v51;
    swift_willThrow();

    v53 = sub_1000071D0();
    v48(v53);
  }

  else
  {

    v64 = v18[42];
  }

  sub_100061B10();

  sub_100001F00();
  sub_1000037A0();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, v64, a15, a16, a17, a18);
}

uint64_t sub_10015F87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10015F89C, 0, 0);
}

uint64_t sub_10015F89C()
{
  sub_100002BAC();
  sub_100002EC0(*(v0 + 24));
  *(v0 + 32) = *(v1 + 24);

  v2 = swift_task_alloc();
  v3 = sub_10000E8D0(v2);
  *v3 = v4;
  sub_100004B28(v3);

  return sub_1000E0174();
}

uint64_t sub_10015F938()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v2 = v1;
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;
  *(v6 + 48) = v5;

  v7 = sub_100003000();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10015FA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = type metadata accessor for ModelManagerError();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v8 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock();
  v6[12] = v9;
  v6[13] = *(v9 - 8);
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_10015FBC0, 0, 0);
}

uint64_t sub_10015FBC0()
{
  sub_100002BAC();
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_10015FC84;
  sub_1000031B8(0xD586A20A4C00000);

  return sub_1001542B4();
}

uint64_t sub_10015FC84()
{
  sub_100001ED0();
  sub_100001EF4();
  sub_100003744();
  *v3 = v2;
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;
  *(v6 + 128) = v0;

  v7 = sub_1000060A4();
  v8(v7);
  sub_1000059F8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10015FDD4()
{
  sub_100001ED0();
  sub_100002EC0(v0[3]);
  v0[17] = *(v1 + 128);

  ModelXPCRequest.PrewarmSession.sessionID.getter();
  v0[18] = ModelXPCRequest.PrewarmSession.metadata.getter();
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_10015FEA4;
  sub_1000031B8(v0[11]);

  return sub_100017334();
}

uint64_t sub_10015FEA4()
{
  sub_10000636C();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = v5[11];
  v7 = v5[10];
  v8 = v5[9];
  v9 = *v1;
  sub_100002B9C();
  *v10 = v9;
  *(v3 + 160) = v0;

  (*(v7 + 8))(v6, v8);

  if (v0)
  {
    sub_1000059F8();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {

    v14 = *(v9 + 8);

    return v14();
  }
}

uint64_t sub_100160098()
{
  sub_100001ED0();

  sub_100001F00();

  return v0();
}

uint64_t sub_100160114()
{
  sub_100003884();
  v0[2] = v0[20];
  swift_errorRetain();
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  v1 = sub_1000062B0();
  if (sub_10001D344(v1, v2, v3))
  {
    v4 = (*(v0[7] + 88))(v0[8], v0[6]);
    v5 = v0[7];
    v6 = v0[6];
    if (v4 == enum case for ModelManagerError.inferenceError(_:))
    {
      (*(v5 + 96))(v0[8], v6);
      v7 = type metadata accessor for InferenceError();
      sub_1000191C8();
      v9 = v8;
      v10 = sub_100001F70();
      if (v11(v10) == enum case for InferenceError.assetVersionMismatch(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      (*(v9 + 8))(v0[8], v7);
    }

    else
    {
      (*(v5 + 8))(v0[8], v6);
    }
  }

  sub_100001F00();

  return v13();
}

uint64_t sub_100160304(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE450, &type metadata accessor for ModelXPCRequest.PrewarmSession, &protocol conformance descriptor for ModelXPCRequest.PrewarmSession);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016035C(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE458, &type metadata accessor for ModelXPCRequest.CancelSessionRequest, &unk_100174F30);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001603B4()
{
  sub_100002BAC();

  sub_100001F00();

  return v0();
}

uint64_t sub_100160424(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE460, &type metadata accessor for ModelXPCRequest.CancelSessionRequest, &protocol conformance descriptor for ModelXPCRequest.CancelSessionRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016047C(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE468, &type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest, &unk_100174F70);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001604D4()
{
  sub_100002BAC();
  v1[5] = v2;
  v1[6] = v0;
  sub_1000089F0(v3, v4, v5);
  v6 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[7] = v6;
  sub_100002F44(v6);
  v1[8] = v7;
  v1[9] = sub_100002C58();
  v8 = type metadata accessor for RequestMetadata();
  v1[10] = v8;
  sub_100002F44(v8);
  v1[11] = v9;
  v1[12] = sub_100002C58();
  v10 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[13] = v10;
  sub_100002F44(v10);
  v1[14] = v11;
  v1[15] = sub_100002C58();
  v12 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest();
  v1[16] = v12;
  sub_100002F44(v12);
  v1[17] = v13;
  v1[18] = sub_10000BF98();
  v1[19] = swift_task_alloc();
  v14 = sub_100003000();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_100160684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v84 = v20;
  v82 = AuditToken.auditUserIdentifier.getter();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C(&qword_1001B8AE0);
  }

  v22 = sub_1000077CC();
  sub_10000641C(v22, qword_1001BE400);
  v23 = *(v21 + 16);
  v24 = sub_100005E98();
  v23(v24);
  v25 = sub_100019220();
  v23(v25);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v30 = v20[18];
  v29 = v20[19];
  v32 = v20[16];
  v31 = v20[17];
  if (v28)
  {
    v33 = v20[14];
    v34 = v20[15];
    v75 = v20[16];
    v36 = v20[12];
    v35 = v20[13];
    v37 = v20[11];
    v74 = v20[10];
    v79 = v20[8];
    v77 = v20[9];
    v78 = v20[7];
    v76 = v20[18];
    v38 = swift_slowAlloc();
    v81 = sub_1000080A4();
    v83 = v81;
    *v38 = 136315394;
    v80 = v26;
    ModelXPCRequest.ExecuteInputStreamRequest.metadata.getter();
    RequestMetadata.id.getter();
    (*(v37 + 8))(v36, v74);
    sub_1000082D4(&qword_1001B8F58, &qword_1001B8F48, &qword_10016FB30, &protocol conformance descriptor for UUIDIdentifier<A>);
    sub_100018980();
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_1000DAF38();
    (*(v33 + 8))(v34, v35);
    v40 = *(v31 + 8);
    v39 = v31 + 8;
    v27 = v40;
    v40(v29, v75);
    sub_100004A3C(v36, v37 + 8, &v83);
    sub_100012E8C();
    sub_10000BF28();
    ModelXPCRequest.ExecuteInputStreamRequest.sessionID.getter();
    sub_1000082D4(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060, &protocol conformance descriptor for UUIDIdentifier<A>);
    sub_100018980();
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_10001B268();
    v41(v77, v78);
    v40(v76, v75);
    v42 = sub_100001F70();
    v45 = sub_100004A3C(v42, v43, v44);

    *(v38 + 14) = v45;
    sub_100005FCC();
    _os_log_impl(v46, v47, v48, v49, v50, 0x16u);
    sub_1000190E0(v51, v52, (&type metadata for Any + 1), v53, v54, v55, v56, v57, v73, v74, v75, v76, v77, v78, v79, v80, v81);
    swift_arrayDestroy();
    sub_100003A4C();
    sub_100004B78();
  }

  else
  {

    v58 = *(v31 + 8);
    v39 = v31 + 8;
    v58(v30, v32);
    v58(v29, v32);
  }

  sub_10001369C();
  v59 = swift_task_alloc();
  v60 = sub_100032354(v59);
  *(v61 + 32) = v82;
  *(v61 + 40) = v60;
  v62 = swift_task_alloc();
  v20[21] = v62;
  *(v62 + 16) = v39;
  *(v62 + 24) = v27;
  v63 = swift_task_alloc();
  v20[22] = v63;
  *v63 = v20;
  v63[1] = sub_100160A44;
  sub_100007F78();

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_100160A44()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    sub_1000059F8();

    return _swift_task_switch(v8, v9, v10);
  }
}

uint64_t sub_100160B6C()
{
  sub_10000639C();
  sub_100003884();
  v0 = sub_10000A0F8();
  sub_100160BF4(v0);

  sub_100001F00();
  sub_100003D20();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

void sub_100160BF4(uint64_t a1)
{
  v2 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v42 = *(v2 - 8);
  v43 = v2;
  __chkstk_darwin(v2);
  v41 = &v34[-v3];
  v39 = type metadata accessor for RequestMetadata();
  isa = v39[-1].isa;
  __chkstk_darwin(v39);
  v5 = &v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v7 = &v34[-v6];
  v8 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v34[-v13];
  if (qword_1001B8AE0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000641C(v15, qword_1001BE400);
  v16 = *(v9 + 16);
  v16(v14, a1, v8);
  v16(v12, a1, v8);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v44 = v36;
    *v19 = 136315394;
    v35 = v18;
    ModelXPCRequest.ExecuteInputStreamRequest.metadata.getter();
    RequestMetadata.id.getter();
    (*(isa + 1))(v5, v39);
    sub_1000082D4(&qword_1001B8F58, &qword_1001B8F48, &qword_10016FB30, &protocol conformance descriptor for UUIDIdentifier<A>);
    v20 = v40;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v17;
    v23 = v22;
    (*(v38 + 8))(v7, v20);
    v24 = *(v9 + 8);
    v24(v14, v8);
    v25 = sub_100004A3C(v21, v23, &v44);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    v26 = v41;
    ModelXPCRequest.ExecuteInputStreamRequest.sessionID.getter();
    sub_1000082D4(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060, &protocol conformance descriptor for UUIDIdentifier<A>);
    v27 = v43;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v42 + 8))(v26, v27);
    v24(v12, v8);
    v31 = sub_100004A3C(v28, v30, &v44);

    *(v19 + 14) = v31;
    v32 = v39;
    _os_log_impl(&_mh_execute_header, v39, v35, "Finished request %s (Session: %s)", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v33 = *(v9 + 8);
    v33(v12, v8);
    v33(v14, v8);
  }
}

uint64_t sub_100161140(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 120) = a5;
  *(v6 + 128) = a6;
  *(v6 + 424) = a4;
  *(v6 + 104) = a2;
  *(v6 + 112) = a3;
  v7 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  *(v6 + 136) = v7;
  *(v6 + 144) = *(v7 - 8);
  *(v6 + 152) = swift_task_alloc();
  sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  *(v6 + 160) = swift_task_alloc();
  v8 = type metadata accessor for ModelManagerError();
  *(v6 + 168) = v8;
  *(v6 + 176) = *(v8 - 8);
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  v9 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest();
  *(v6 + 224) = v9;
  v10 = *(v9 - 8);
  *(v6 + 232) = v10;
  *(v6 + 240) = *(v10 + 64);
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  v11 = type metadata accessor for RequestMetadata();
  *(v6 + 272) = v11;
  *(v6 + 280) = *(v11 - 8);
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  v12 = type metadata accessor for TaskPriority();
  *(v6 + 304) = v12;
  *(v6 + 312) = *(v12 - 8);
  *(v6 + 320) = swift_task_alloc();

  return _swift_task_switch(sub_100161418, 0, 0);
}

uint64_t sub_100161418()
{
  sub_100005F88();
  sub_1000033DC();
  v1 = v0[37];
  v2 = v0[16];
  v15 = v0[15];
  v3 = v0[14];
  sub_100002EC0(v0[13]);
  v0[41] = *(v4 + 128);

  ModelXPCRequest.ExecuteInputStreamRequest.taskPriority.getter();
  TaskPriority.init(rawValue:)();
  ModelXPCRequest.ExecuteInputStreamRequest.metadata.getter();
  v5 = sub_10000CEE0();
  v6(v5);
  sub_1000134CC();
  v7 = swift_allocObject();
  v8 = sub_100011A14(v7);
  v9(v8);
  v10 = (v3 + v1);
  *v10 = v15;
  v10[1] = v2;

  v11 = swift_task_alloc();
  v0[45] = v11;
  *v11 = v0;
  sub_100040330(v11);
  sub_1000031B8(v12);
  sub_1000062BC();

  return sub_10009ADE8();
}

uint64_t sub_10016155C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  sub_100001EF4();
  v17 = v16;
  sub_100004B40();
  *v18 = v17;
  v39 = v19[40];
  v20 = v19[39];
  v21 = v19[38];
  v22 = *v15;
  sub_100002B9C();
  *v23 = v22;
  *(v17 + 368) = v14;

  v24 = sub_10001364C();
  v25(v24);
  (*(v20 + 8))(v39, v21);
  if (v14)
  {
    sub_1000059F8();
    sub_100003540();

    return _swift_task_switch(v26, v27, v28);
  }

  else
  {
    sub_100008048();

    sub_100002F54();
    sub_100003540();

    return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, v39, a12, a13, a14);
  }
}

uint64_t sub_1001617BC()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = v1;
  sub_100004B40();
  *v3 = v2;
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  sub_100003324((v2 + 56));
  v6 = sub_100003000();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1001618A0()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = v1;
  sub_100004B40();
  *v3 = v2;
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  sub_100003324((v2 + 16));
  v6 = sub_100003000();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1001620DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = type metadata accessor for InferenceProviderDescriptor();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  sub_100065020(&qword_1001B9C88, &qword_1001706E0);
  v5[15] = swift_task_alloc();
  v7 = type metadata accessor for RequestMetadata();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v8 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();
  v9 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest();
  v5[22] = v9;
  v5[23] = *(v9 - 8);
  v5[24] = swift_task_alloc();

  return _swift_task_switch(sub_1001622FC, 0, 0);
}

uint64_t sub_1001622FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1000133FC();
  sub_10000C72C();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C(&qword_1001B8AE0);
  }

  v20 = type metadata accessor for Logger();
  sub_10000641C(v20, qword_1001BE400);
  v21 = sub_100008440();
  v22(v21);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = sub_10000320C(v24);
  v27 = v18[23];
  v26 = v18[24];
  if (v25)
  {
    v28 = v18[18];
    a13 = v18[22];
    v29 = v18[17];
    a10 = v18[16];
    a11 = v18[19];
    sub_100007698();
    a15 = sub_100003890();
    sub_100026B58(4.8149e-34);
    ModelXPCRequest.ExecuteInputStreamRequest.metadata.getter();
    RequestMetadata.id.getter();
    (*(v29 + 8))(v28, a10);
    sub_100005070();
    sub_1000082D4(v30, v31, v32, v33);
    sub_100003E14();
    dispatch thunk of CustomStringConvertible.description.getter();
    v34 = sub_10016BC1C();
    v35(v34);
    (*(v27 + 8))(v26, a13);
    v36 = sub_1000187CC();
    sub_100004A3C(v36, v28, v37);
    sub_10001AFBC();
    *(v19 + 4) = v28;
    sub_10000EEC0(&_mh_execute_header, "Responding to input stream subrequest: %s", BYTE4(a12));
    sub_100003A7C();
    sub_10000706C();
  }

  else
  {

    v38 = sub_100013BBC();
    v39(v38);
  }

  v40 = v18[14];
  v41 = v18[15];
  v42 = v18[12];
  v43 = v18[13];
  v44 = v18[10];
  v46 = v18[7];
  v45 = v18[8];
  v18[5] = sub_100065020(&qword_1001BE620, &qword_1001755A0);
  v47 = sub_10016B918();
  sub_10006073C(v47);
  sub_10010C4AC(v46, v41, &qword_1001B9C88, &qword_1001706E0);
  (*(v43 + 16))(v40, v45, v42);
  sub_100001F70();
  ModelXPCRequest.ExecuteInputStreamRequest.Response.init(result:lockedInferenceProvider:)();
  swift_storeEnumTagMultiPayload();
  v59 = v44 + *v44;
  swift_task_alloc();
  sub_100004B34();
  v18[25] = v48;
  *v48 = v49;
  sub_1000486D0(v48);
  sub_1000037A0();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, v59, a15, a16, a17, a18);
}

uint64_t sub_1001625DC()
{
  sub_10001881C();
  sub_100003884();
  sub_100001EF4();
  v2 = v1;
  sub_100004B40();
  *v3 = v2;
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  sub_100003324((v2 + 16));

  sub_100001F00();
  sub_100007BB8();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_100162750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v8 = type metadata accessor for RequestMetadata();
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v9 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest();
  v5[15] = v9;
  v5[16] = *(v9 - 8);
  v5[17] = swift_task_alloc();

  return _swift_task_switch(sub_100162954, 0, 0);
}

uint64_t sub_100162954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_1000133FC();
  sub_10000C72C();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C(&qword_1001B8AE0);
  }

  v16 = sub_100013894();
  v17 = sub_10000641C(v16, qword_1001BE400);
  v18 = v17;
  v11[18] = v17;
  v19 = sub_100003CF0();
  v20(v19);
  v21 = v18;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = sub_10000320C(v23);
  v25 = v11[16];
  v26 = v11[17];
  v27 = v11[15];
  if (v24)
  {
    sub_100018498();
    sub_100003890();
    sub_100003E74(4.8149e-34);
    ModelXPCRequest.ExecuteInputStreamRequest.metadata.getter();
    sub_100026F6C();
    (*(v12 + 8))(v14, a10);
    UUIDIdentifier.uuidString.getter();
    sub_1000DAF38();
    (*(v13 + 8))(v15, a11);
    (*(v25 + 8))(v26, v27);
    v28 = sub_1000187CC();
    sub_100004A3C(v28, v14, v29);
    sub_100012E8C();
    *(v27 + 4) = v15;
    sub_10000EEC0(&_mh_execute_header, "xpcdispatcher: Request TaskCancellation handler, id: %s.", v21);
    sub_100003A7C();
    sub_10000706C();
  }

  else
  {

    v30 = sub_100004CA4();
    v31(v30);
  }

  sub_100002EC0(v11[3]);
  v11[19] = *(v32 + 128);

  ModelXPCRequest.ExecuteInputStreamRequest.metadata.getter();
  RequestMetadata.id.getter();
  v33 = sub_1000060A4();
  v34(v33);
  ModelXPCRequest.ExecuteInputStreamRequest.sessionID.getter();
  v35 = swift_task_alloc();
  v11[20] = v35;
  *v35 = v11;
  v35[1] = sub_100162B98;
  sub_1000031B8(v11[9]);
  sub_1000037A0();

  return sub_10009D40C();
}

uint64_t sub_100162B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  sub_100001EF4();
  v15 = v14;
  sub_100004B40();
  *v16 = v15;
  v18 = *(v17 + 32);
  v19 = *v13;
  sub_100002B9C();
  *v20 = v19;
  *(v15 + 168) = v12;

  v21 = sub_100003318();
  v22(v21, v18);
  v23 = sub_1000071D0();
  v24(v23);
  if (v12)
  {
    sub_1000059F8();
    sub_1000062BC();

    return _swift_task_switch(v25, v26, v27);
  }

  else
  {
    sub_100005B6C();

    sub_100001F00();
    sub_1000062BC();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
  }
}

uint64_t sub_100162DA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_1001604D4();
}

uint64_t sub_100162E5C(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE470, &type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest, &protocol conformance descriptor for ModelXPCRequest.ExecuteInputStreamRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100162EB4(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE478, &type metadata accessor for ModelXPCRequest.ExecuteRequest, &unk_100174FB0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100162F0C()
{
  sub_100002BAC();
  v1[5] = v2;
  v1[6] = v0;
  sub_1000089F0(v3, v4, v5);
  v6 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[7] = v6;
  sub_100002F44(v6);
  v1[8] = v7;
  v1[9] = sub_100002C58();
  v8 = type metadata accessor for RequestMetadata();
  v1[10] = v8;
  sub_100002F44(v8);
  v1[11] = v9;
  v1[12] = sub_100002C58();
  v10 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[13] = v10;
  sub_100002F44(v10);
  v1[14] = v11;
  v1[15] = sub_100002C58();
  v12 = type metadata accessor for ModelXPCRequest.ExecuteRequest();
  v1[16] = v12;
  sub_100002F44(v12);
  v1[17] = v13;
  v1[18] = sub_10000BF98();
  v1[19] = swift_task_alloc();
  v14 = sub_100003000();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_1001630BC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(uint64_t, uint64_t), uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, os_log_t log, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_100011AD8();
  v36 = AuditToken.auditUserIdentifier.getter();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C(&qword_1001B8AE0);
  }

  v37 = sub_1000077CC();
  sub_10000641C(v37, qword_1001BE400);
  v38 = *(v35 + 16);
  v39 = sub_100005E98();
  v38(v39);
  v40 = sub_100019220();
  v38(v40);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v34[18];
  v45 = v34[19];
  v46 = v34[16];
  v47 = v34[17];
  if (v43)
  {
    a17 = v34[18];
    v48 = v34[15];
    a15 = v34[14];
    v82 = v42;
    v49 = v34[12];
    v50 = v34[13];
    v51 = v34[10];
    a13 = v51;
    v81 = v34[11];
    a9 = v34[19];
    a16 = v34[9];
    a18 = v34[7];
    a19 = v34[8];
    a12 = swift_slowAlloc();
    sub_1000080A4();
    *a12 = 136315394;
    log = v41;
    ModelXPCRequest.ExecuteRequest.metadata.getter();
    RequestMetadata.id.getter();
    a14 = *(v81 + 8);
    a14(v49, v51);
    sub_100005070();
    a11 = v52;
    sub_1000082D4(v53, v54, v55, v56);
    dispatch thunk of CustomStringConvertible.description.getter();
    a10 = v46;
    (*(a15 + 8))(v48, v50);
    v44 = *(v47 + 8);
    v44(v45, v46);
    v57 = sub_100007660();
    sub_100004A3C(v57, v58, v59);

    sub_10000BF28();
    v46 = a17;
    ModelXPCRequest.ExecuteRequest.metadata.getter();
    RequestMetadata.sessionID.getter();
    a14(v49, v51);
    sub_1000082D4(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060, a11);
    dispatch thunk of CustomStringConvertible.description.getter();
    (*(a19 + 8))(a16, a18);
    v44(a17, a10);
    v60 = sub_100001F70();
    v63 = sub_100004A3C(v60, v61, v62);

    *(a12 + 14) = v63;
    _os_log_impl(&_mh_execute_header, log, v82, "Received request %s (Session: %s)", a12, 0x16u);
    swift_arrayDestroy();
    sub_100003A4C();
    sub_100004B78();
  }

  else
  {

    v64 = *(v47 + 8);
    v65 = sub_10000CF04();
    v64(v65);
    v66 = sub_100013BBC();
    v64(v66);
  }

  sub_10001369C();
  v67 = swift_task_alloc();
  v68 = sub_100032354(v67);
  *(v69 + 32) = v36;
  *(v69 + 40) = v68;
  v70 = swift_task_alloc();
  v34[21] = v70;
  *(v70 + 16) = v46;
  *(v70 + 24) = v44;
  v71 = swift_task_alloc();
  v34[22] = v71;
  *v71 = v34;
  v71[1] = sub_10005A130;
  sub_100007F78();
  sub_100008228();

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, log);
}

void sub_1001634B8(uint64_t a1)
{
  v2 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v46 = &v37 - v3;
  v49 = type metadata accessor for RequestMetadata();
  v45 = *(v49 - 8);
  __chkstk_darwin(v49);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  v9 = type metadata accessor for ModelXPCRequest.ExecuteRequest();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v37 - v14;
  if (qword_1001B8AE0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000641C(v16, qword_1001BE400);
  v17 = *(v10 + 16);
  v17(v15, a1, v9);
  v17(v13, a1, v9);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v41 = v18;
    v21 = v20;
    v39 = v20;
    v42 = swift_slowAlloc();
    v50 = v42;
    *v21 = 136315394;
    v40 = v19;
    ModelXPCRequest.ExecuteRequest.metadata.getter();
    RequestMetadata.id.getter();
    v45 = *(v45 + 8);
    (v45)(v5, v49);
    v38 = &protocol conformance descriptor for UUIDIdentifier<A>;
    sub_1000082D4(&qword_1001B8F58, &qword_1001B8F48, &qword_10016FB30, &protocol conformance descriptor for UUIDIdentifier<A>);
    v22 = v44;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v43 + 8))(v8, v22);
    v26 = *(v10 + 8);
    v26(v15, v9);
    v27 = sub_100004A3C(v23, v25, &v50);

    v28 = v39;
    *(v39 + 4) = v27;
    *(v28 + 12) = 2080;
    ModelXPCRequest.ExecuteRequest.metadata.getter();
    v29 = v46;
    RequestMetadata.sessionID.getter();
    (v45)(v5, v49);
    sub_1000082D4(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060, v38);
    v30 = v48;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (*(v47 + 8))(v29, v30);
    v26(v13, v9);
    v34 = sub_100004A3C(v31, v33, &v50);

    *(v28 + 14) = v34;
    v35 = v41;
    _os_log_impl(&_mh_execute_header, v41, v40, "Finished request %s (Session: %s)", v28, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v36 = *(v10 + 8);
    v36(v13, v9);
    v36(v15, v9);
  }
}

uint64_t sub_100163A30(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 120) = a5;
  *(v6 + 128) = a6;
  *(v6 + 424) = a4;
  *(v6 + 104) = a2;
  *(v6 + 112) = a3;
  v7 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  *(v6 + 136) = v7;
  *(v6 + 144) = *(v7 - 8);
  *(v6 + 152) = swift_task_alloc();
  sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  *(v6 + 160) = swift_task_alloc();
  v8 = type metadata accessor for ModelManagerError();
  *(v6 + 168) = v8;
  *(v6 + 176) = *(v8 - 8);
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  v9 = type metadata accessor for ModelXPCRequest.ExecuteRequest();
  *(v6 + 224) = v9;
  v10 = *(v9 - 8);
  *(v6 + 232) = v10;
  *(v6 + 240) = *(v10 + 64);
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  v11 = type metadata accessor for RequestMetadata();
  *(v6 + 272) = v11;
  *(v6 + 280) = *(v11 - 8);
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  v12 = type metadata accessor for TaskPriority();
  *(v6 + 304) = v12;
  *(v6 + 312) = *(v12 - 8);
  *(v6 + 320) = swift_task_alloc();

  return _swift_task_switch(sub_100163D08, 0, 0);
}

uint64_t sub_100163D08()
{
  sub_100005F88();
  sub_1000033DC();
  v1 = v0[37];
  v2 = v0[16];
  v15 = v0[15];
  v3 = v0[14];
  sub_100002EC0(v0[13]);
  v0[41] = *(v4 + 128);

  ModelXPCRequest.ExecuteRequest.taskPriority.getter();
  TaskPriority.init(rawValue:)();
  ModelXPCRequest.ExecuteRequest.metadata.getter();
  v5 = sub_10000CEE0();
  v6(v5);
  sub_1000134CC();
  v7 = swift_allocObject();
  v8 = sub_100011A14(v7);
  v9(v8);
  v10 = (v3 + v1);
  *v10 = v15;
  v10[1] = v2;

  v11 = swift_task_alloc();
  v0[45] = v11;
  *v11 = v0;
  sub_100040330(v11);
  sub_1000031B8(v12);
  sub_1000062BC();

  return sub_10009CD90();
}

uint64_t sub_100163E4C()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = v1;
  sub_100004B40();
  *v3 = v2;
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  sub_100003324((v2 + 56));
  v6 = sub_100003000();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100163F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  (*(v14 + 392))(*(v14 + 216), *(v14 + 168));

  sub_100007710();

  sub_100002F54();
  sub_100003540();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100164004()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = v1;
  sub_100004B40();
  *v3 = v2;
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  sub_100003324((v2 + 16));
  v6 = sub_100003000();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1001640E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();

  sub_100007710();

  sub_100002F54();
  sub_100003540();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100164904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100164924, 0, 0);
}

uint64_t sub_100164924()
{
  sub_100002BAC();
  sub_100002EC0(*(v0 + 24));
  *(v0 + 32) = *(v1 + 24);

  v2 = swift_task_alloc();
  v3 = sub_10000E8D0(v2);
  *v3 = v4;
  sub_100004B28(v3);

  return sub_1000E0174();
}

uint64_t sub_1001649C0()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v2 = v1;
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;
  *(v6 + 48) = v5;

  v7 = sub_100003000();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100164AC0()
{
  **(v0 + 16) = *(v0 + 48);
  sub_100001F00();
  return v1();
}

double sub_100164AEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = a3(0);
  sub_100002BDC();
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  v13 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v14 = sub_100002F04(v13);
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  v17 = type metadata accessor for TaskPriority();
  sub_100009BFC(v16, 1, 1, v17);
  v18 = sub_1000071D0();
  v19(v18);
  v20 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  (*(v7 + 32))(v21 + v20, v12, v5);
  *(v21 + ((v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  sub_1000652FC();

  return result;
}

uint64_t sub_100164CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v8 = type metadata accessor for RequestMetadata();
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v9 = type metadata accessor for ModelXPCRequest.ExecuteRequest();
  v5[15] = v9;
  v5[16] = *(v9 - 8);
  v5[17] = swift_task_alloc();

  return _swift_task_switch(sub_100164EA4, 0, 0);
}

uint64_t sub_100164EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_1000133FC();
  sub_10000C72C();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C(&qword_1001B8AE0);
  }

  v16 = sub_100013894();
  v17 = sub_10000641C(v16, qword_1001BE400);
  v18 = v17;
  v11[18] = v17;
  v19 = sub_100003CF0();
  v20(v19);
  v21 = v18;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = sub_10000320C(v23);
  v25 = v11[16];
  v26 = v11[17];
  v27 = v11[15];
  if (v24)
  {
    sub_100018498();
    sub_100003890();
    sub_100003E74(4.8149e-34);
    ModelXPCRequest.ExecuteRequest.metadata.getter();
    sub_100026F6C();
    (*(v12 + 8))(v14, a10);
    UUIDIdentifier.uuidString.getter();
    sub_1000DAF38();
    (*(v13 + 8))(v15, a11);
    (*(v25 + 8))(v26, v27);
    v28 = sub_1000187CC();
    sub_100004A3C(v28, v14, v29);
    sub_100012E8C();
    *(v27 + 4) = v15;
    sub_10000EEC0(&_mh_execute_header, "xpcdispatcher: Request TaskCancellation handler, id: %s.", v21);
    sub_100003A7C();
    sub_10000706C();
  }

  else
  {

    v30 = sub_100004CA4();
    v31(v30);
  }

  sub_100002EC0(v11[3]);
  v11[19] = *(v32 + 128);

  ModelXPCRequest.ExecuteRequest.metadata.getter();
  RequestMetadata.id.getter();
  v33 = sub_1000060A4();
  v34(v33);
  ModelXPCRequest.ExecuteRequest.sessionID.getter();
  v35 = swift_task_alloc();
  v11[20] = v35;
  *v35 = v11;
  v35[1] = sub_1001650E8;
  sub_1000031B8(v11[9]);
  sub_1000037A0();

  return sub_10009D40C();
}

uint64_t sub_1001650E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  sub_100001EF4();
  v15 = v14;
  sub_100004B40();
  *v16 = v15;
  v18 = *(v17 + 32);
  v19 = *v13;
  sub_100002B9C();
  *v20 = v19;
  *(v15 + 168) = v12;

  v21 = sub_100003318();
  v22(v21, v18);
  v23 = sub_1000071D0();
  v24(v23);
  if (v12)
  {
    sub_1000059F8();
    sub_1000062BC();

    return _swift_task_switch(v25, v26, v27);
  }

  else
  {
    sub_100005B6C();

    sub_100001F00();
    sub_1000062BC();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
  }
}

uint64_t sub_1001652F0()
{
  sub_10000639C();
  sub_100003884();
  swift_errorRetain();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = sub_100007698();
    v3 = sub_100003788();
    *v2 = 138412290;
    swift_errorRetain();
    v4 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v4;
    *v3 = v4;
    _os_log_impl(&_mh_execute_header, v0, v1, "xpcdispatcher: Request TaskCancellation error %@", v2, 0xCu);
    sub_10000ECD8(v3, &qword_1001B8F68, &qword_10016FB80);
    sub_100004B78();
    sub_10000706C();
  }

  else
  {
  }

  sub_100001F00();
  sub_100003D20();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_100165454()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006F558;

  return sub_100162F0C();
}

uint64_t sub_100165510(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE480, &type metadata accessor for ModelXPCRequest.ExecuteRequest, &protocol conformance descriptor for ModelXPCRequest.ExecuteRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100165568(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE488, &type metadata accessor for ModelXPCRequest.CancelRequest, &unk_100174FF0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001655C0()
{
  sub_100002BAC();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[6] = v5;
  sub_100002F44(v5);
  v1[7] = v6;
  v1[8] = sub_10000BF98();
  v1[9] = swift_task_alloc();
  v7 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[10] = v7;
  sub_100002F44(v7);
  v1[11] = v8;
  v1[12] = sub_10000BF98();
  v1[13] = swift_task_alloc();
  v9 = type metadata accessor for ModelXPCRequest.CancelRequest();
  v1[14] = v9;
  sub_100002F44(v9);
  v1[15] = v10;
  v1[16] = sub_10000BF98();
  v1[17] = swift_task_alloc();
  v11 = sub_100003000();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10016573C(uint64_t a1)
{
  v2 = AuditToken.processIdentifier.getter();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C(&qword_1001B8AE0);
  }

  v3 = v1[15];
  v4 = type metadata accessor for Logger();
  sub_10000641C(v4, qword_1001BE400);
  v5 = *(v3 + 16);
  v6 = sub_100005E98();
  v5(v6);
  v7 = sub_100019220();
  v5(v7);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v1[16];
  v11 = v1[17];
  v13 = v1[14];
  v14 = v1[15];
  if (v10)
  {
    v52 = v1[16];
    v15 = v1[13];
    v57 = v2;
    v17 = v1[10];
    v16 = v1[11];
    v51 = v1[9];
    v54 = v1[6];
    v55 = v1[7];
    v18 = swift_slowAlloc();
    v58 = sub_1000080A4();
    *v18 = 136315650;
    v56 = v8;
    ModelXPCRequest.CancelRequest.id.getter();
    sub_100005070();
    v50 = v19;
    sub_1000082D4(v20, v21, v22, v23);
    dispatch thunk of CustomStringConvertible.description.getter();
    HIDWORD(v53) = v9;
    (*(v16 + 8))(v15, v17);
    v24 = *(v14 + 8);
    v24(v11, v13);
    v25 = sub_100007660();
    sub_100004A3C(v25, v26, v27);

    sub_10000BF28();
    ModelXPCRequest.CancelRequest.sessionID.getter();
    sub_1000082D4(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060, v50);
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_10001B268();
    v28(v51, v54);
    v24(v52, v13);
    v29 = sub_100001F70();
    v32 = sub_100004A3C(v29, v30, v31);

    *(v18 + 14) = v32;
    *(v18 + 22) = 1024;
    *(v18 + 24) = v57;
    sub_100005FCC();
    _os_log_impl(v33, v34, v35, v36, v37, 0x1Cu);
    sub_1000190E0(v38, v39, (&type metadata for Any + 1), v40, v41, v42, v43, v44, v49, v50, v51, v52, v53, v54, v55, v56, v58);
    swift_arrayDestroy();
    sub_100003A4C();
    sub_100004B78();
  }

  else
  {

    v45 = *(v14 + 8);
    v45(v12, v13);
    v45(v11, v13);
  }

  sub_100002EC0(v1[3]);
  v1[18] = *(v46 + 128);

  ModelXPCRequest.CancelRequest.id.getter();
  ModelXPCRequest.CancelRequest.sessionID.getter();
  v47 = swift_task_alloc();
  v1[19] = v47;
  *v47 = v1;
  v47[1] = sub_100165AC8;
  sub_1000031B8(v1[12]);

  return sub_10009D40C();
}

uint64_t sub_100165AC8()
{
  sub_10000636C();
  sub_100001EF4();
  sub_100003744();
  *v3 = v2;
  v5 = v4[8];
  v6 = v4[7];
  v7 = v4[6];
  v8 = *v1;
  sub_100002B9C();
  *v9 = v8;
  *(v10 + 160) = v0;

  (*(v6 + 8))(v5, v7);
  v11 = sub_100003754();
  v12(v11);
  sub_1000059F8();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_100165C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000094B0();
  sub_10000636C();
  ModelXPCRequest.CancelRequest.Response.init()();
  sub_100065020(&qword_1001BE5F8, &qword_100175500);
  swift_storeEnumTagMultiPayload();

  sub_100002F54();
  sub_100006378();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_100165D5C()
{
  sub_10000639C();
  sub_100003884();

  sub_100001F00();
  sub_100003D20();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_100165DF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_1001655C0();
}

uint64_t sub_100165EA0(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE490, &type metadata accessor for ModelXPCRequest.CancelRequest, &protocol conformance descriptor for ModelXPCRequest.CancelRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100165EF8(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE498, &type metadata accessor for ModelXPCRequest.FetchModelInstance, &unk_100175030);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100165F50()
{
  sub_100002BAC();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[5] = v4;
  sub_100002F44(v4);
  v1[6] = v5;
  v1[7] = sub_100002C58();
  v6 = type metadata accessor for ModelInstance();
  v1[8] = v6;
  sub_100002F44(v6);
  v1[9] = v7;
  v1[10] = sub_10000BF98();
  v1[11] = swift_task_alloc();
  v8 = sub_100003000();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10016605C()
{
  sub_100001ED0();
  sub_100002EC0(v0[3]);
  v0[12] = *(v1 + 128);

  ModelXPCRequest.FetchModelInstance.sessionID.getter();
  swift_task_alloc();
  sub_100004B34();
  v0[13] = v2;
  *v2 = v3;
  v2[1] = sub_10016611C;

  return sub_10009E130();
}

uint64_t sub_10016611C()
{
  sub_10000639C();
  sub_100003884();
  sub_100001EF4();
  sub_100003744();
  *v3 = v2;
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;
  *(v6 + 112) = v0;

  v7 = sub_100003754();
  v8(v7);

  sub_1000059F8();
  sub_100003D20();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100166288()
{
  sub_10001881C();
  sub_100003884();
  v0 = sub_1000062B0();
  v1(v0);
  ModelXPCRequest.FetchModelInstance.Response.init(modelInstance:)();
  v2 = sub_100007660();
  v3(v2);
  sub_100065020(&qword_1001BE5F0, &qword_1001754F0);
  swift_storeEnumTagMultiPayload();

  sub_100002F54();
  sub_100007BB8();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_100166368()
{
  sub_100002BAC();

  sub_100001F00();

  return v0();
}

uint64_t sub_1001663D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006F558;

  return sub_100165F50();
}

uint64_t sub_100166480(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE4A0, &type metadata accessor for ModelXPCRequest.FetchModelInstance, &protocol conformance descriptor for ModelXPCRequest.FetchModelInstance);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001664D8(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE4A8, &type metadata accessor for ModelXPCRequest.AcquireRequest, &unk_100175070);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100166530()
{
  sub_100002BAC();
  sub_100057890(v1, v2, v3);
  v4 = type metadata accessor for Assertion.DaemonRep();
  v0[6] = v4;
  sub_100002F44(v4);
  v0[7] = v5;
  v0[8] = sub_100002C58();
  v6 = type metadata accessor for AuditToken();
  v0[9] = v6;
  sub_100002F44(v6);
  v0[10] = v7;
  v0[11] = sub_100002C58();
  v8 = sub_100003000();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10016661C()
{
  sub_1000094B0();
  sub_10000636C();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C(&qword_1001B8AE0);
  }

  v1 = sub_100011210();
  sub_10000641C(v1, qword_1001BE400);
  v2 = sub_100008440();
  v3(v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (sub_1000038BC(v5))
  {
    v6 = sub_100003788();
    *v6 = 67109120;
    v7 = AuditToken.processIdentifier.getter();
    v8 = sub_100007B68();
    v9(v8);
    v6[1] = v7;
    sub_100018ACC(&_mh_execute_header, v10, v11, "XPC Handling acquireAssertion for pid %d");
    sub_100004B78();
  }

  else
  {
    v12 = sub_100007B68();
    v13(v12);
  }

  v14 = v0[3];

  sub_10000A4C4((v14 + 16), *(v14 + 40));
  v0[12] = *(v15 + 16);

  ModelXPCRequest.AcquireRequest.assertion.getter();
  v16 = swift_task_alloc();
  v17 = sub_1000457C0(v16);
  *v17 = v18;
  v17[1] = sub_1001667A4;
  sub_1000031B8(v0[8]);
  sub_100006378();

  return sub_1000FE87C();
}

uint64_t sub_1001667A4()
{
  sub_10000639C();
  sub_100003884();
  sub_100001EF4();
  sub_100003744();
  *v3 = v2;
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;
  *(v6 + 112) = v0;

  v7 = sub_100003754();
  v8(v7);

  sub_1000059F8();
  sub_100003D20();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100166910()
{
  sub_100001ED0();
  sub_1000118EC();
  ModelXPCRequest.AcquireRequest.Response.init()();
  sub_100065020(&qword_1001BE5E8, &qword_1001754E0);
  sub_100006194();
  swift_storeEnumTagMultiPayload();

  sub_100002F54();

  return v0();
}

uint64_t sub_1001669A0()
{
  sub_100002BAC();

  sub_100001F00();

  return v0();
}

uint64_t sub_100166A08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_100166530();
}

uint64_t sub_100166AB8(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE4B0, &type metadata accessor for ModelXPCRequest.AcquireRequest, &protocol conformance descriptor for ModelXPCRequest.AcquireRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100166B10(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE4B8, &type metadata accessor for ModelXPCRequest.ReleaseRequest, &unk_1001750B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100166B68()
{
  sub_100002BAC();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  v1[6] = v5;
  sub_100002F44(v5);
  v1[7] = v6;
  v1[8] = sub_100002C58();
  v7 = type metadata accessor for AuditToken();
  v1[9] = v7;
  sub_100002F44(v7);
  v1[10] = v8;
  v1[11] = sub_100002C58();
  v9 = sub_100003000();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100166C68()
{
  sub_1000094B0();
  sub_10000636C();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C(&qword_1001B8AE0);
  }

  v1 = sub_100011210();
  sub_10000641C(v1, qword_1001BE400);
  v2 = sub_100008440();
  v3(v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (sub_1000038BC(v5))
  {
    v6 = sub_100003788();
    *v6 = 67109120;
    v7 = AuditToken.processIdentifier.getter();
    v8 = sub_100007B68();
    v9(v8);
    v6[1] = v7;
    sub_100018ACC(&_mh_execute_header, v10, v11, "XPC Handling releaseAssertion for pid %d");
    sub_100004B78();
  }

  else
  {
    v12 = sub_100007B68();
    v13(v12);
  }

  v14 = *(v0 + 24);

  sub_10000A4C4((v14 + 16), *(v14 + 40));
  *(v0 + 96) = *(v15 + 16);

  ModelXPCRequest.ReleaseRequest.id.getter();
  sub_100006378();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_100166DBC()
{
  sub_100002BAC();
  v1 = swift_task_alloc();
  v2 = sub_1000457C0(v1);
  *v2 = v3;
  v2[1] = sub_100166E4C;
  sub_1000031B8(*(v0 + 64));

  return sub_100073748();
}

uint64_t sub_100166E4C()
{
  sub_100001ED0();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_1000060A4();
  v4(v3);

  v5 = sub_100003000();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100166FA4()
{
  sub_100001ED0();
  sub_1000118EC();
  ModelXPCRequest.ReleaseRequest.Response.init()();
  sub_100065020(&qword_1001BE5E0, &qword_1001754D0);
  sub_100006194();
  swift_storeEnumTagMultiPayload();

  sub_100002F54();

  return v0();
}

uint64_t sub_100167034()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_100166B68();
}

uint64_t sub_1001670E4(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE4C0, &type metadata accessor for ModelXPCRequest.ReleaseRequest, &protocol conformance descriptor for ModelXPCRequest.ReleaseRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016713C(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE4C8, &type metadata accessor for ModelXPCRequest.FetchAssertionsRequest, &unk_1001750F0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100167194()
{
  sub_100002BAC();
  sub_1000089F0(v1, v2, v3);
  v4 = type metadata accessor for AuditToken();
  v0[5] = v4;
  sub_100002F44(v4);
  v0[6] = v5;
  v0[7] = sub_100002C58();
  v6 = sub_100003000();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100167238()
{
  sub_1000094B0();
  sub_10000636C();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C(&qword_1001B8AE0);
  }

  v1 = type metadata accessor for Logger();
  sub_10000641C(v1, qword_1001BE400);
  v2 = sub_100008440();
  v3(v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (sub_1000038BC(v5))
  {
    v6 = sub_100003788();
    *v6 = 67109120;
    v7 = AuditToken.processIdentifier.getter();
    v8 = sub_100007B68();
    v9(v8);
    v6[1] = v7;
    sub_100018ACC(&_mh_execute_header, v10, v11, "XPC Handling fetchAssertions for pid %d");
    sub_100004B78();
  }

  else
  {
    v12 = sub_100007B68();
    v13(v12);
  }

  v14 = v0[3];

  sub_10000A4C4((v14 + 16), *(v14 + 40));
  v0[8] = *(v15 + 16);

  v16 = swift_task_alloc();
  v0[9] = v16;
  *v16 = v0;
  sub_100004B28(v16);
  sub_100006378();

  return sub_1000FEF08(v17);
}

uint64_t sub_1001673B4()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v2 = v1;
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;
  *(v6 + 80) = v5;

  v7 = sub_100003000();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001674B4()
{
  sub_100002BAC();
  ModelXPCRequest.FetchAssertionsRequest.Response.init(assertions:)();
  v0 = sub_100065020(&qword_1001BE5D8, &qword_1001754C0);
  sub_10000CD70(v0);

  sub_100002F54();

  return v1();
}

uint64_t sub_100167538()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_100167194();
}

uint64_t sub_1001675E8(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE4D0, &type metadata accessor for ModelXPCRequest.FetchAssertionsRequest, &protocol conformance descriptor for ModelXPCRequest.FetchAssertionsRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100167640(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE4D8, &type metadata accessor for ModelXPCRequest.RestoreAssertionsRequest, &unk_100175130);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100167698()
{
  sub_100002BAC();
  sub_100057890(v1, v2, v3);
  v4 = type metadata accessor for AuditToken();
  v0[6] = v4;
  sub_100002F44(v4);
  v0[7] = v5;
  v0[8] = sub_100002C58();
  v6 = sub_100003000();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100167738()
{
  sub_1000094B0();
  sub_10000636C();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C(&qword_1001B8AE0);
  }

  v1 = type metadata accessor for Logger();
  sub_10000641C(v1, qword_1001BE400);
  v2 = sub_100008440();
  v3(v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (sub_1000038BC(v5))
  {
    v6 = sub_100003788();
    *v6 = 67109120;
    v7 = AuditToken.processIdentifier.getter();
    v8 = sub_100007B68();
    v9(v8);
    v6[1] = v7;
    sub_100018ACC(&_mh_execute_header, v10, v11, "XPC Handling restoreAssertions for pid %d");
    sub_100004B78();
  }

  else
  {
    v12 = sub_100007B68();
    v13(v12);
  }

  v14 = v0[3];

  sub_10000A4C4((v14 + 16), *(v14 + 40));
  v0[9] = *(v15 + 16);

  v0[10] = ModelXPCRequest.RestoreAssertionsRequest.assertions.getter();
  sub_100006378();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_100167898()
{
  sub_100002BAC();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_10016792C;
  v2 = sub_1000031B8(*(v0 + 80));

  return sub_1000762D4(v2);
}

uint64_t sub_10016792C()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100003000();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100167A48()
{
  sub_100002BAC();
  ModelXPCRequest.RestoreAssertionsRequest.Response.init()();
  v0 = sub_100065020(&qword_1001BE5D0, &qword_1001754B0);
  sub_10000CD70(v0);

  sub_100002F54();

  return v1();
}

uint64_t sub_100167AC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_100167698();
}

uint64_t sub_100167B78(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE4E0, &type metadata accessor for ModelXPCRequest.RestoreAssertionsRequest, &protocol conformance descriptor for ModelXPCRequest.RestoreAssertionsRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100167BD0(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE4E8, &type metadata accessor for ModelXPCRequest.FetchAssetsRequest, &unk_100175170);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100167C28(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1000051C8();
}

uint64_t sub_100167C3C()
{
  sub_100002BAC();
  sub_100002EC0(*(v0 + 24));
  *(v0 + 32) = *(v1 + 112);
  sub_10000ECC0();
  v2 = sub_10000209C();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100167CA4()
{
  sub_100001ED0();
  sub_1000C0D94();

  v1 = sub_1000062B0();
  *(v0 + 40) = sub_10015DB20(v1, v2);

  v3 = sub_100003000();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100167D34()
{
  sub_100002BAC();
  sub_10000CBCC();
  ModelXPCRequest.FetchAssetsRequest.Response.init(assetInfo:)();
  v0 = sub_100065020(&qword_1001BE5C8, &qword_1001754A0);
  sub_10000AAB4(v0);
  sub_100002F54();

  return v1();
}

uint64_t sub_100167DA8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10006FA64;

  return sub_100167C28(a1, a2);
}

uint64_t sub_100167E48(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE4F0, &type metadata accessor for ModelXPCRequest.FetchAssetsRequest, &protocol conformance descriptor for ModelXPCRequest.FetchAssetsRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100167EA0(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE4F8, &type metadata accessor for ModelXPCRequest.FetchDynamicAssetsRequest, &unk_1001751B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100167EF8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1000051C8();
}

uint64_t sub_100167F0C()
{
  sub_100002BAC();
  sub_100002EC0(*(v0 + 24));
  *(v0 + 32) = *(v1 + 112);
  sub_10000ECC0();
  v2 = sub_10000209C();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100167F74()
{
  sub_100001ED0();
  sub_1000C0DC0();

  v1 = sub_1000062B0();
  *(v0 + 40) = sub_10015DB20(v1, v2);

  v3 = sub_100003000();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100168004()
{
  sub_100002BAC();
  sub_10000CBCC();
  ModelXPCRequest.FetchDynamicAssetsRequest.Response.init(assetInfo:)();
  v0 = sub_100065020(&qword_1001BE5C0, &qword_100175490);
  sub_10000AAB4(v0);
  sub_100002F54();

  return v1();
}

uint64_t sub_100168078(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10006FA64;

  return sub_100167EF8(a1, a2);
}

uint64_t sub_100168118(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE500, &type metadata accessor for ModelXPCRequest.FetchDynamicAssetsRequest, &protocol conformance descriptor for ModelXPCRequest.FetchDynamicAssetsRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100168170(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE508, &type metadata accessor for ModelXPCRequest.FetchPolicyRequest, &unk_1001751F0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001681C8()
{
  sub_100001ED0();
  v3 = v2;
  v1[2] = v4;
  v5 = sub_100065020(&qword_1001B9420, &qword_100170118);
  sub_100002F04(v5);
  v1[3] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[4] = v6;
  swift_task_alloc();
  sub_100004B34();
  v1[5] = v7;
  *v7 = v8;
  v7[1] = sub_1001682B0;

  return sub_10016845C(v6, v0, v3);
}

uint64_t sub_1001682B0()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100003000();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100168394()
{
  sub_10000639C();
  sub_100003884();
  v0 = sub_100001F70();
  sub_10010C4AC(v0, v1, &qword_1001B9420, &qword_100170118);
  ModelXPCRequest.FetchPolicyRequest.Response.init(policy:)();
  v2 = sub_100005E98();
  sub_10000ECD8(v2, v3, &qword_100170118);
  sub_100065020(&qword_1001BE5B8, &qword_100175480);
  sub_100006194();
  swift_storeEnumTagMultiPayload();

  sub_100002F54();
  sub_100003D20();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_10016845C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return _swift_task_switch(sub_100168480, 0, 0);
}

uint64_t sub_100168480()
{
  sub_100002BAC();
  Policy = ModelXPCRequest.FetchPolicyRequest.policyName.getter();
  v0[8] = v2;
  v3 = v0[7];
  if (v2)
  {
    v0[9] = Policy;
    sub_100002EC0(v3);
    v0[10] = *(v4 + 120);
  }

  else
  {
    sub_100002EC0(v3);
    v0[12] = *(v5 + 120);
  }

  v6 = sub_10000209C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100168520()
{
  sub_100002BAC();
  *(v0 + 88) = *(*(v0 + 80) + 296);

  v1 = sub_100003000();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10016858C()
{
  sub_100002BAC();
  sub_100072B60(v0[9], v0[8], v0[11], v0[5]);

  sub_100001F00();

  return v1();
}

uint64_t sub_100168604()
{
  sub_100001ED0();
  v1 = v0[12];
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC13modelmanagerd13PolicyManager__currentPolicy;
  swift_beginAccess();
  v0[13] = type metadata accessor for Policy();
  sub_100002C00();
  (*(v4 + 16))(v2, v1 + v3);

  v5 = sub_100003000();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1001686C8()
{
  sub_100002BAC();
  sub_100009BFC(*(v0 + 40), 0, 1, *(v0 + 104));
  sub_100001F00();

  return v1();
}

uint64_t sub_10016872C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_1001681C8();
}

uint64_t sub_1001687D4(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE510, &type metadata accessor for ModelXPCRequest.FetchPolicyRequest, &protocol conformance descriptor for ModelXPCRequest.FetchPolicyRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016882C(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE518, &type metadata accessor for ModelXPCRequest.FetchDisabledUseCasesRequest, &unk_100175230);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100168884(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1000051C8();
}

uint64_t sub_100168898()
{
  sub_100002BAC();
  sub_100002EC0(*(v0 + 24));
  *(v0 + 32) = *(v1 + 256);

  v2 = swift_task_alloc();
  v3 = sub_10000E8D0(v2);
  *v3 = v4;
  sub_100004B28(v3);

  return sub_1000A3B44();
}

uint64_t sub_100168934()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v2 = v1;
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;
  *(v6 + 48) = v5;

  v7 = sub_100003000();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100168A34()
{
  sub_100002BAC();
  sub_10000CBCC();
  ModelXPCRequest.FetchDisabledUseCasesRequest.Response.init(disabledUseCases:)();
  v0 = sub_100065020(&qword_1001BE5B0, &qword_100175468);
  sub_10000AAB4(v0);
  sub_100002F54();

  return v1();
}

uint64_t sub_100168AA8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10006FA64;

  return sub_100168884(a1, a2);
}

uint64_t sub_100168B48(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE520, &type metadata accessor for ModelXPCRequest.FetchDisabledUseCasesRequest, &protocol conformance descriptor for ModelXPCRequest.FetchDisabledUseCasesRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100168BA0(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE528, &type metadata accessor for ModelXPCRequest.FetchAvailabilityRequest, &unk_100175270);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100168BF8()
{
  sub_100002BAC();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for RemoteDeviceSet();
  v0[4] = v3;
  sub_100002F44(v3);
  v0[5] = v4;
  v0[6] = sub_10000BF98();
  v0[7] = swift_task_alloc();
  v5 = sub_100003000();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100168CA8()
{
  sub_100002BAC();
  sub_100002EC0(v0[3]);
  v0[8] = *(v1 + 136);

  swift_task_alloc();
  sub_100004B34();
  v0[9] = v2;
  *v2 = v3;
  v2[1] = sub_100168D50;

  return sub_1000F35C4();
}

uint64_t sub_100168D50()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
  }

  sub_1000059F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100168E50()
{
  sub_10000639C();
  sub_100003884();
  v0 = sub_1000062B0();
  v1(v0);
  ModelXPCRequest.FetchAvailabilityRequest.Response.init(remoteAvailability:)();
  v2 = sub_100007660();
  v3(v2);
  sub_100065020(&qword_1001BE5A8, &qword_100175458);
  sub_100006194();
  swift_storeEnumTagMultiPayload();

  sub_100002F54();
  sub_100003D20();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_100168F28()
{
  sub_100001ED0();

  ModelManagerError.init(wrapping:)();
  sub_100065020(&qword_1001BE5A8, &qword_100175458);
  sub_100006194();
  swift_storeEnumTagMultiPayload();

  sub_100002F54();

  return v0();
}

uint64_t sub_100168FD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_100168BF8();
}

uint64_t sub_100169074(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE530, &type metadata accessor for ModelXPCRequest.FetchAvailabilityRequest, &protocol conformance descriptor for ModelXPCRequest.FetchAvailabilityRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001690CC()
{
  sub_100002BAC();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = type metadata accessor for InferenceProviderDescriptor();
  v1[10] = v4;
  sub_100002F44(v4);
  v1[11] = v5;
  v1[12] = sub_100002C58();
  v6 = sub_100003000();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100169174()
{
  sub_1000033DC();
  v1 = type metadata accessor for URL();
  v0[13] = v1;
  sub_100002BDC();
  v0[14] = v2;
  v3 = sub_100002C58();
  v0[15] = v3;
  v4 = sub_100065020(&qword_1001B9C50, &qword_1001706A8);
  sub_100002F04(v4);
  v5 = sub_100002C58();
  ModelXPCRequest.LoadAssetBundle.assetBundleIdentifier.getter();
  URL.init(string:)();

  if (sub_10000C6C0(v5, 1, v1) == 1)
  {
    sub_10000ECD8(v5, &qword_1001B9C50, &qword_1001706A8);

    type metadata accessor for ModelManagerError();
    sub_100005E30();
    sub_100003814(v6, v7, &protocol conformance descriptor for ModelManagerError);
    sub_10000A418();
    v9 = v8;
    *v8 = ModelXPCRequest.LoadAssetBundle.assetBundleIdentifier.getter();
    v9[1] = v10;
    sub_100006098();
    (*(v11 + 104))(v9);
    swift_willThrow();

    sub_100001F00();

    return v25();
  }

  else
  {
    v12 = v0[8];
    v13 = sub_1000060A4();
    v14(v13);

    sub_10000A4C4((v12 + 16), *(v12 + 40));
    sub_100003370((v15 + 144), *(v15 + 168));
    sub_100003E80(v3);
    v0[16] = v16;
    v17 = v16;

    type metadata accessor for DaemonSession(0);
    sub_10000A4C4((v12 + 16), *(v12 + 40));
    sub_100007130(v18 + 264, (v0 + 2));
    sub_10001ED00(v17, (v0 + 2), v19, v20, v21, v22, v23, v24, v29, v30, v31, v32, v33, v34, v35, v36, v37, v0, v38, v39);
    sub_100003324(v0 + 2);
    sub_10000A4C4((v12 + 16), *(v12 + 40));
    v0[17] = *(v27 + 112);

    ModelXPCRequest.LoadAssetBundle.dynamicMode.getter();
    v28 = swift_task_alloc();
    v0[18] = v28;
    *v28 = v0;
    v28[1] = sub_1001694EC;

    return sub_1000C2050();
  }
}

uint64_t sub_1001694EC()
{
  sub_100001ED0();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 152) = v0;

  if (v0)
  {
  }

  else
  {
  }

  sub_1000059F8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100169640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000094B0();
  sub_10000636C();
  ModelXPCRequest.LoadAssetBundle.Response.init()();
  v10 = sub_100003754();
  v11(v10);
  v12 = sub_100001F70();
  v13(v12);
  sub_100065020(&qword_1001BE5A0, &qword_100175448);
  swift_storeEnumTagMultiPayload();

  sub_100002F54();
  sub_100006378();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_10016970C()
{
  sub_100001ED0();
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = sub_100001F70();
  v2(v1);

  sub_100001F00();

  return v3();
}

uint64_t sub_1001697A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_1001690CC();
}

uint64_t sub_100169850(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE538, &type metadata accessor for ModelXPCRequest.LoadAssetBundle, &protocol conformance descriptor for ModelXPCRequest.LoadAssetBundle);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001698A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_1000051C8();
}

uint64_t sub_1001698C0()
{
  sub_100001ED0();
  sub_100002EC0(v0[3]);
  v0[6] = *(v1 + 128);

  ModelXPCRequest.HoldAssetBundle.assetBundleIdentifier.getter();
  v0[7] = v2;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_100169988;
  sub_100007660();

  return sub_10009E314();
}

uint64_t sub_100169988()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  sub_1000059F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100169A90()
{
  sub_100002BAC();
  sub_10000CBCC();
  ModelXPCRequest.HoldAssetBundle.Response.init()();
  v0 = sub_100065020(&qword_1001BE598, &qword_100175438);
  sub_10000AAB4(v0);
  sub_100002F54();

  return v1();
}

uint64_t sub_100169B00()
{
  sub_100002BAC();

  sub_100001F00();

  return v0();
}

uint64_t sub_100169B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10006FA64;

  return sub_1001698A8(a1, a2, a3);
}

uint64_t sub_100169C14(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE540, &type metadata accessor for ModelXPCRequest.HoldAssetBundle, &protocol conformance descriptor for ModelXPCRequest.HoldAssetBundle);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100169C6C()
{
  sub_100002BAC();
  sub_1000089F0(v1, v2, v3);
  v4 = type metadata accessor for AuditToken();
  v0[5] = v4;
  sub_100002F44(v4);
  v0[6] = v5;
  v0[7] = sub_100002C58();
  v6 = sub_100003000();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100169D10()
{
  sub_1000094B0();
  sub_10000636C();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C(&qword_1001B8AE0);
  }

  v1 = type metadata accessor for Logger();
  sub_10000641C(v1, qword_1001BE400);
  v2 = sub_100008440();
  v3(v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (sub_1000038BC(v5))
  {
    v6 = sub_100003788();
    *v6 = 67109120;
    v7 = AuditToken.processIdentifier.getter();
    v8 = sub_100007B68();
    v9(v8);
    v6[1] = v7;
    sub_100018ACC(&_mh_execute_header, v10, v11, "XPC Handling forceAssetVersionSwitch for pid %d");
    sub_100004B78();
  }

  else
  {
    v12 = sub_100007B68();
    v13(v12);
  }

  v14 = v0[3];

  sub_10000A4C4((v14 + 16), *(v14 + 40));
  v0[8] = *(v15 + 24);

  v16 = swift_task_alloc();
  v0[9] = v16;
  *v16 = v0;
  sub_100004B28(v16);
  sub_100006378();

  return sub_1000E0174();
}

uint64_t sub_100169E8C()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v2 = v1;
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;
  *(v6 + 80) = v5;

  v7 = sub_100003000();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100169F8C()
{
  sub_100001ED0();
  if (*(v0 + 80) == 1)
  {
    ModelXPCRequest.ForceAssetVersionSwitch.Response.init()();
  }

  else
  {
    type metadata accessor for ModelManagerError();
    sub_100005E30();
    sub_100003814(v1, v2, &protocol conformance descriptor for ModelManagerError);
    sub_10000A418();
    sub_100006098();
    (*(v3 + 104))();
    ModelManagerError.init(wrapping:)();
  }

  sub_100065020(&qword_1001BE590, &qword_100175428);
  sub_100006194();
  swift_storeEnumTagMultiPayload();

  sub_100002F54();

  return v4();
}

uint64_t sub_10016A0D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_100169C6C();
}

uint64_t sub_10016A180(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE548, &type metadata accessor for ModelXPCRequest.ForceAssetVersionSwitch, &protocol conformance descriptor for ModelXPCRequest.ForceAssetVersionSwitch);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016A1D8()
{
  sub_100002BAC();
  v0[18] = v1;
  v0[19] = v2;
  v3 = type metadata accessor for StateDump();
  v0[20] = v3;
  sub_100002F44(v3);
  v0[21] = v4;
  v0[22] = sub_10000BF98();
  v0[23] = swift_task_alloc();
  v5 = sub_100003000();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10016A288()
{
  sub_100002BAC();
  sub_100002EC0(*(v0 + 152));
  v2 = *(v1 + 232);
  v3 = *(v1 + 216);
  v4 = *(v1 + 200);
  *(v0 + 16) = *(v1 + 184);
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  *(v0 + 64) = v2;
  sub_10006AA10(v0 + 16, v0 + 80);
  swift_task_alloc();
  sub_100004B34();
  *(v0 + 192) = v5;
  *v5 = v6;
  v5[1] = sub_10016A344;

  return sub_100103F98();
}

uint64_t sub_10016A344()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (!v0)
  {
    sub_10016B19C(v3 + 16);
  }

  sub_1000059F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10016A444()
{
  sub_10000639C();
  sub_100003884();
  v0 = sub_1000062B0();
  v1(v0);
  ModelXPCRequest.DumpState.Response.init(stateDump:)();
  v2 = sub_100007660();
  v3(v2);
  v4 = sub_100065020(&qword_1001BE588, &qword_100175418);
  sub_100018E50(v4);

  sub_100002F54();
  sub_100003D20();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_10016A50C()
{
  sub_100002BAC();
  sub_10016B19C(v0 + 16);

  sub_100001F00();

  return v1();
}

uint64_t sub_10016A598()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_10016A1D8();
}

uint64_t sub_10016A638(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE550, &type metadata accessor for ModelXPCRequest.DumpState, &protocol conformance descriptor for ModelXPCRequest.DumpState);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016A690(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return sub_1000051C8();
}

uint64_t sub_10016A6A8()
{
  sub_100001ED0();
  sub_100002EC0(v0[8]);
  sub_100007130(v1 + 144, (v0 + 2));
  sub_100003370(v0 + 2, v0[5]);
  v2 = ModelXPCRequest.SetAssetsHaveUpdated.identifiers.getter();
  v0[10] = v2;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  sub_100004B28(v3);

  return sub_100113110(v2);
}

uint64_t sub_10016A76C()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100003000();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10016A86C()
{
  sub_100002BAC();
  sub_100003324((v0 + 16));
  ModelXPCRequest.SetAssetsHaveUpdated.Response.init()();
  v1 = sub_100065020(&qword_1001BE580, &qword_100175408);
  sub_10000AAB4(v1);
  sub_100002F54();

  return v2();
}

uint64_t sub_10016A8E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10006FA64;

  return sub_10016A690(a1, a2);
}

uint64_t sub_10016A990(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE558, &type metadata accessor for ModelXPCRequest.SetAssetsHaveUpdated, &protocol conformance descriptor for ModelXPCRequest.SetAssetsHaveUpdated);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016A9E8(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return sub_1000051C8();
}

uint64_t sub_10016AA00()
{
  sub_100002BAC();
  sub_100002EC0(*(v0 + 64));
  sub_100007130(v1 + 144, v0 + 16);
  v2 = sub_100003370((v0 + 16), *(v0 + 40));
  *(v0 + 80) = v2;
  *(v0 + 88) = ModelXPCRequest.IgnoreAssetUpdates.ignore.getter() & 1;
  v3 = *v2;

  return _swift_task_switch(sub_10016AA90, v3, 0);
}

uint64_t sub_10016AA90()
{
  sub_100002BAC();
  sub_100113988(*(v0 + 88));
  v1 = sub_100003000();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10016AAF4()
{
  sub_100002BAC();
  sub_100003324((v0 + 16));
  ModelXPCRequest.IgnoreAssetUpdates.Response.init()();
  v1 = sub_100065020(&qword_1001BE578, &qword_1001753F8);
  sub_10000AAB4(v1);
  sub_100002F54();

  return v2();
}

uint64_t sub_10016AB70(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10006FA64;

  return sub_10016A9E8(a1, a2);
}

uint64_t sub_10016AC18(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE560, &type metadata accessor for ModelXPCRequest.IgnoreAssetUpdates, &protocol conformance descriptor for ModelXPCRequest.IgnoreAssetUpdates);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016AC70()
{
  sub_100002BAC();
  sub_100057890(v1, v2, v3);
  v4 = type metadata accessor for XPCEndpoint();
  sub_100002F04(v4);
  v0[6] = sub_100002C58();
  v5 = type metadata accessor for AuditToken();
  v0[7] = v5;
  sub_100002F44(v5);
  v0[8] = v6;
  v0[9] = sub_10000BF98();
  v0[10] = swift_task_alloc();
  v7 = sub_100003000();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10016AD3C()
{
  sub_100005F88();
  sub_1000033DC();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C(&qword_1001B8AE0);
  }

  v1 = *(v0 + 64);
  v2 = type metadata accessor for Logger();
  sub_10000641C(v2, qword_1001BE400);
  v3 = *(v1 + 16);
  v4 = sub_10000CC04();
  v3(v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (sub_1000038BC(v6))
  {
    v7 = sub_100003788();
    *v7 = 67109120;
    v8 = AuditToken.processIdentifier.getter();
    v9 = sub_100005E98();
    v10(v9);
    v7[1] = v8;
    sub_100018ACC(&_mh_execute_header, v11, v12, "Adding inference monitor client from pid %d");
    sub_100004B78();
  }

  else
  {
    v13 = sub_100005E98();
    v14(v13);
  }

  v15 = *(v0 + 72);
  v16 = *(v0 + 56);
  v17 = *(v0 + 32);

  ModelXPCRequest.StartMonitoringInferences.endpoint.getter();
  (v3)(v15, v17, v16);
  v18 = sub_100013BBC();
  v20 = sub_10010C6AC(v18, v19);
  v21 = *(v0 + 24);
  *(v0 + 112) = v22;
  *(v0 + 88) = v23;
  *(v0 + 96) = v20;
  sub_100002EC0(v21);
  *(v0 + 104) = *(*(v24 + 248) + OBJC_IVAR____TtC13modelmanagerd14RequestManager_inferenceMonitorManager);
  sub_10000ECC0();
  sub_10000209C();
  sub_1000062BC();

  return _swift_task_switch(v25, v26, v27);
}

uint64_t sub_10016AF60()
{
  sub_100002BAC();
  sub_100125A28(*(v0 + 96), *(v0 + 112), *(v0 + 88));

  v1 = sub_100003000();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10016AFCC()
{
  sub_100001ED0();

  ModelXPCRequest.StartMonitoringInferences.Response.init()();
  sub_10001369C();
  v0 = sub_100065020(&qword_1001BE570, &qword_1001753E8);
  sub_100018E50(v0);

  sub_100002F54();

  return v1();
}

uint64_t sub_10016B094()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_10016AC70();
}

uint64_t sub_10016B144(uint64_t a1)
{
  result = sub_100003814(&qword_1001BE568, &type metadata accessor for ModelXPCRequest.StartMonitoringInferences, &protocol conformance descriptor for ModelXPCRequest.StartMonitoringInferences);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016B1F0()
{
  sub_10001881C();
  sub_100003884();
  sub_100016704();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v1[1] = sub_10006F558;
  sub_100007B24();
  sub_100007BB8();

  return sub_100163A30(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10016B2D8()
{
  sub_10001881C();
  sub_100003884();
  v0 = type metadata accessor for ModelXPCRequest.ExecuteRequest();
  sub_100002F44(v0);
  sub_10000D00C();
  v1 = swift_task_alloc();
  v2 = sub_100004B00(v1);
  *v2 = v3;
  v2[1] = sub_10006FA64;
  sub_100007B24();
  sub_100007BB8();

  return sub_100164CA0(v4, v5, v6, v7, v8);
}

uint64_t sub_10016B3C8()
{
  sub_100001ED0();
  sub_100002C20();
  v1 = swift_task_alloc();
  v2 = sub_100004B00(v1);
  *v2 = v3;
  v2[1] = sub_10006F558;
  v4 = sub_100007B24();

  return sub_100164904(v4, v5, v6, v0);
}

uint64_t sub_10016B45C()
{
  sub_10001881C();
  sub_100003884();
  sub_100016704();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v1[1] = sub_10006FA64;
  sub_100007B24();
  sub_100007BB8();

  return sub_100161140(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10016B544(uint64_t (*a1)(void))
{
  v3 = a1(0);
  sub_100002BDC();
  v5 = v4;
  v6 = *(v4 + 80);
  sub_10016BC34();
  (*(v5 + 8))(v1 + ((v6 + 32) & ~v6), v3);

  return _swift_deallocObject(v1, v2 + 8, v6 | 7);
}

uint64_t sub_10016B608()
{
  sub_10001881C();
  sub_100003884();
  v0 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest();
  sub_100002F44(v0);
  sub_10000D00C();
  v1 = swift_task_alloc();
  v2 = sub_100004B00(v1);
  *v2 = v3;
  v2[1] = sub_10006FA64;
  sub_100007B24();
  sub_100007BB8();

  return sub_100162750(v4, v5, v6, v7, v8);
}

uint64_t sub_10016B6F8(void (*a1)(void))
{
  a1(0);
  sub_100002C00();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v1 + v4);

  return _swift_deallocObject(v1, v5 + 16, v3 | 7);
}

uint64_t sub_10016B798()
{
  sub_10001881C();
  sub_100003884();
  v1 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest();
  sub_100002F44(v1);
  sub_10000D00C();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  sub_10002B0CC(v2);
  sub_100007BB8();

  return sub_1001620DC(v3, v4, v5, v6, v7);
}

uint64_t sub_10016B884()
{
  sub_100001ED0();
  sub_100002C20();
  v1 = swift_task_alloc();
  v2 = sub_100004B00(v1);
  *v2 = v3;
  v2[1] = sub_10006FA64;
  v4 = sub_100007B24();

  return sub_10015F87C(v4, v5, v6, v0);
}

unint64_t sub_10016B918()
{
  result = qword_1001BE628;
  if (!qword_1001BE628)
  {
    sub_10006A614(&qword_1001BE620, &qword_1001755A0);
    sub_100003814(&qword_1001BE630, &type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest.Response, &protocol conformance descriptor for ModelXPCRequest.ExecuteInputStreamRequest.Response);
    sub_100003814(&qword_1001BE638, &type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest.Response, &protocol conformance descriptor for ModelXPCRequest.ExecuteInputStreamRequest.Response);
    sub_100003814(&qword_1001B9A00, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
    sub_100003814(&qword_1001B9A08, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BE628);
  }

  return result;
}

uint64_t sub_10016BA70()
{
  sub_100001ED0();
  sub_100002C20();
  v1 = swift_task_alloc();
  v2 = sub_100004B00(v1);
  *v2 = v3;
  v2[1] = sub_10006FA64;
  v4 = sub_100007B24();

  return sub_10015F87C(v4, v5, v6, v0);
}

uint64_t sub_10016BB04()
{
  sub_1000094B0();
  sub_10000636C();
  v0 = type metadata accessor for ModelXPCRequest.PrewarmSession();
  sub_100002F44(v0);
  v1 = swift_task_alloc();
  v2 = sub_100004B00(v1);
  *v2 = v3;
  v2[1] = sub_10006FA64;
  sub_100007B24();
  sub_100006378();

  return sub_10015FA38(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10016BC34()
{

  return swift_unknownObjectRelease();
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::UInt_optional __swiftcall _UnsafeBitSet.Iterator.next()()
{
  v0 = _UnsafeBitSet.Iterator.next()();
  result.value = v0;
  result.is_nil = v1;
  return result;
}

uint64_t UUIDIdentifier.uuidString.getter()
{
  return UUIDIdentifier.uuidString.getter();
}

{
  return UUIDIdentifier.uuidString.getter();
}

uint64_t UUIDIdentifier.init()()
{
  return UUIDIdentifier.init()();
}

{
  return UUIDIdentifier.init()();
}

uint64_t type metadata accessor for UUIDIdentifier()
{
  return type metadata accessor for UUIDIdentifier();
}

{
  return type metadata accessor for UUIDIdentifier();
}

uint64_t type metadata accessor for EventReporter()
{
  return type metadata accessor for EventReporter();
}

{
  return type metadata accessor for EventReporter();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}