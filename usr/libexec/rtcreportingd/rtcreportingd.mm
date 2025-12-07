uint64_t sub_100001658(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000016B8(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 32);
    type = xpc_get_type(a1);
    ObjectType = swift_getObjectType();
    if (type == &_xpc_type_error)
    {
      (*(v4 + 8))(a1, ObjectType, v4);
    }

    else
    {
      (*(v4 + 16))(a1, ObjectType, v4);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *XPCMessage.init(fromXPC:)(void *a1)
{
  v2 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  __chkstk_darwin(v2 - 8);
  v4 = (&v8 - v3);
  swift_getObjectType();
  if (OS_xpc_object.type()()._rawValue == &_xpc_type_dictionary)
  {
    v5 = xpc_dictionary_get_value(a1, "type");
    XPCObject.init(_:)(v5, v4);
    v6 = type metadata accessor for XPCObject(0);
    if (sub_100002694(v4, 1, v6) == 1)
    {
      swift_unknownObjectRelease();
      sub_100062450(v4);
      return 0;
    }

    if (swift_getEnumCaseMultiPayload() != 3)
    {
      swift_unknownObjectRelease();
      sub_10002E5EC(v4);
      return 0;
    }

    if (XPCMessage.MessageType.init(rawValue:)(*v4).value != RTCUtility_XPCMessage_MessageType_unknownDefault)
    {
      return a1;
    }
  }

  swift_unknownObjectRelease();
  return 0;
}

void sub_1000018E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  sub_100001D80(v4);
  sub_100003EC8();
  __chkstk_darwin(v5);
  v7 = &v32 - v6;
  v8 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  sub_100001D80(v8);
  sub_100003EC8();
  __chkstk_darwin(v9);
  v11 = (&v32 - v10);
  v12 = swift_unknownObjectRetain();
  v13 = XPCMessage.init(fromXPC:)(v12);
  if (v13)
  {
    v15 = v13;
    v16 = v14;
    swift_unknownObjectRetain();
    MessageKeys.sessionID.unsafeMutableAddressor();

    RTCXPCDictionary.subscript.getter(v15, v11);
    swift_unknownObjectRelease();

    v17 = type metadata accessor for XPCObject(0);
    if (sub_100002694(v11, 1, v17) == 1)
    {
      sub_1000026E4(v11, &qword_10008F360, &qword_100070A20);
    }

    else if (swift_getEnumCaseMultiPayload() == 8)
    {
      v21 = v11[1];
      if (v16 != 1)
      {
        v28 = *v11;
        type metadata accessor for TaskPriority();
        v29 = sub_10000B7A4();
        sub_1000026BC(v29, v30, 1, v31);
        v26 = swift_allocObject();
        *(v26 + 16) = 0;
        *(v26 + 24) = 0;
        *(v26 + 32) = v2;
        *(v26 + 40) = v28;
        *(v26 + 48) = v21;
        *(v26 + 56) = v15;
        *(v26 + 64) = v16;
        swift_unknownObjectRetain();

        v27 = &unk_10006E080;
        goto LABEL_16;
      }
    }

    else
    {
      sub_10002E5EC(v11);
    }

    type metadata accessor for TaskPriority();
    v23 = sub_10000B7A4();
    sub_1000026BC(v23, v24, 1, v25);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    *(v26 + 32) = v2;
    *(v26 + 40) = v15;
    *(v26 + 48) = v16;
    swift_unknownObjectRetain();

    v27 = &unk_10006E070;
LABEL_16:
    sub_10002D48C(0, 0, v7, v27, v26);
    swift_unknownObjectRelease();

    return;
  }

  if (qword_10008DD30 != -1)
  {
    sub_1000097DC(&qword_10008DD30);
  }

  v18 = type metadata accessor for Logger();
  sub_10000B6D0(v18, qword_10008E7B0);

  v32 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v19))
  {
    sub_100004D20();
    v20 = sub_100004414();
    v33 = v20;
    *a1 = 136446210;
    *(a1 + 4) = sub_1000053A0(*(v2 + 128), *(v2 + 136), &v33);
    _os_log_impl(&_mh_execute_header, v32, v19, "received invalid XPC message from %{public}s", a1, 0xCu);
    sub_100005284(v20);
    sub_100001D1C(v20);
    sub_100003910();
  }

  else
  {
    v22 = v32;
  }
}

uint64_t sub_100001C68()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_100001CB0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_100001D1C(uint64_t a1)
{
}

uint64_t sub_100001D34()
{

  return swift_willThrow();
}

uint64_t sub_100001D64()
{
}

unint64_t sub_100001DB0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t sub_100001E10()
{
}

uint64_t sub_100001E68()
{

  return sub_10005A254(0, 0, v0, &unk_1000709F0, v1);
}

uint64_t sub_100001EBC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100001F0C(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100001FCC()
{
}

unint64_t sub_100002018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  a27 = a1;
  *v27 = a19;

  return sub_1000053A0(v28, v29, &a27);
}

uint64_t sub_100002044(unint64_t *a1)
{

  return sub_100015CBC(a1, &unk_10006DFA0);
}

uint64_t sub_1000020B8(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000020EC(uint64_t a1)
{

  return swift_once();
}

uint64_t type metadata accessor for XPCObject(uint64_t a1)
{
  result = qword_1000903F0;
  if (!qword_1000903F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unsigned __int8 *XPCObject.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  sub_100001EDC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100001EAC();
  v10 = v9 - v8;
  v11 = type metadata accessor for XPCObject(0);
  sub_100003C44();
  __chkstk_darwin(v12);
  sub_10000286C();
  v15 = (v13 - v14);
  v17 = __chkstk_darwin(v16);
  v19 = (&v38 - v18);
  __chkstk_darwin(v17);
  v21 = &v38 - v20;
  if (a1)
  {
    v22 = swift_unknownObjectRetain();
    type = xpc_get_type(v22);
    if (type == &_xpc_type_null)
    {
      sub_100007B98();
      sub_10000210C();
    }

    else
    {
      v24 = type;
      if (type == &_xpc_type_connection || type == &_xpc_type_endpoint)
      {
        swift_unknownObjectRelease();
        sub_1000099E8();
      }

      else if (type == &_xpc_type_BOOL)
      {
        value = xpc_BOOL_get_value(a1);
        sub_100007B98();
        *v21 = value;
        sub_10000210C();
      }

      else if (type == &_xpc_type_int64)
      {
        v27 = xpc_int64_get_value(a1);
        sub_100007B98();
        *v21 = v27;
        sub_10000210C();
      }

      else if (type == &_xpc_type_uint64)
      {
        v28 = xpc_uint64_get_value(a1);
        sub_100007B98();
        *v21 = v28;
        sub_10000210C();
      }

      else if (type == &_xpc_type_double)
      {
        v29 = xpc_double_get_value(a1);
        sub_100007B98();
        *v21 = v29;
        sub_10000210C();
      }

      else
      {
        if (type != &_xpc_type_date)
        {
          if (type == &_xpc_type_data)
          {
            result = xpc_data_get_bytes_ptr(a1);
            if (result)
            {
              xpc_data_get_length(a1);
              v31 = Data.init(bytes:count:)();
              v33 = v32;
              sub_100007B98();
              *v19 = v31;
              v19[1] = v33;
              swift_storeEnumTagMultiPayload();
              v34 = v19;
LABEL_34:
              sub_100004254(v34, v21);
              goto LABEL_29;
            }

            __break(1u);
          }

          else
          {
            if (type != &_xpc_type_string)
            {
              if (type != &_xpc_type_uuid)
              {
                swift_unknownObjectRelease();
                if (v24 != &_xpc_type_shmem && v24 != &_xpc_type_array && v24 != &_xpc_type_dictionary)
                {
                  swift_unknownObjectRelease();
                  goto LABEL_17;
                }

                sub_1000099E8();
                goto LABEL_28;
              }

              result = xpc_uuid_get_bytes(a1);
              if (result)
              {
                UUID.init(uuid:)();
                sub_100007B98();
                (*(v6 + 32))(v21, v10, v4);
                sub_10000210C();
                goto LABEL_28;
              }

LABEL_40:
              __break(1u);
              return result;
            }

            result = xpc_string_get_string_ptr(a1);
            if (result)
            {
              v35 = String.init(cString:)();
              v37 = v36;
              sub_100007B98();
              *v15 = v35;
              v15[1] = v37;
              swift_storeEnumTagMultiPayload();
              v34 = v15;
              goto LABEL_34;
            }
          }

          __break(1u);
          goto LABEL_40;
        }

        v30 = xpc_date_get_value(a1);
        sub_100007B98();
        *v21 = v30;
        sub_10000210C();
      }
    }

LABEL_28:
    swift_storeEnumTagMultiPayload();
LABEL_29:
    sub_100004254(v21, a2);
    return sub_1000026BC(a2, 0, 1, v11);
  }

LABEL_17:

  return sub_1000026BC(a2, 1, 1, v11);
}

BOOL sub_100002630()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100002668(uint64_t a1, void *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t sub_1000026E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000228D4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100002744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1000053A0(v4, v5, va);
}

uint64_t sub_10000277C(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_1000027A8(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.hash(into:)();
}

uint64_t sub_1000027CC()
{
}

uint64_t sub_10000282C()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_10000284C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v1) = v2;

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_10000287C(uint64_t a1)
{
  *(v1 + 408) = a1;
  *v2 = *(v1 + 80);
  v5 = *(v1 + 296);

  return sub_1000053A0(v5, v3, (v1 + 408));
}

unsigned __int8 *sub_1000028C8()
{

  return RTCXPCDictionary.subscript.getter(v1, v0);
}

uint64_t sub_1000028E8(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_100002974(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_100003BC0(a2, a3);
}

uint64_t sub_1000029E0(uint64_t a1)
{
  qword_100095AF0 = a1;
}

unsigned __int8 *RTCXPCDictionary.subscript.getter@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = String.utf8CString.getter();
  v5 = xpc_dictionary_get_value(a1, (v4 + 32));

  return XPCObject.init(_:)(v5, a2);
}

uint64_t sub_100002AD0(uint64_t a1)
{
  if (*(v1 + 313) != 1)
  {
    if (*(v1 + 313))
    {
      if (qword_10008DD30 != -1)
      {
        sub_1000097DC(&qword_10008DD30);
      }

      v16 = *(v1 + 104);
      v17 = type metadata accessor for Logger();
      sub_10000B6D0(v17, qword_10008E7B0);

      swift_unknownObjectRetain();
      v18 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      swift_unknownObjectRelease();

      if (!sub_100004CAC())
      {
        goto LABEL_31;
      }

      v19 = *(v1 + 104);
      v20 = *(v1 + 313);
      sub_1000175B0();
      v111 = sub_100008CF8();
      *v16 = 136315394;
      *(v1 + 312) = v20;
      v21 = String.init<A>(describing:)();
      v23 = sub_1000053A0(v21, v22, &v111);

      *(v16 + 4) = v23;
      sub_100016718();
      *(v16 + 14) = sub_1000053A0(*(v19 + 128), *(v19 + 136), &v111);
      sub_1000028B8();
      _os_log_impl(v24, v25, v26, v27, v28, 0x16u);
      swift_arrayDestroy();
      goto LABEL_30;
    }

    v3 = *(v1 + 192);
    v4 = *(v1 + 96);
    MessageKeys.clientName.unsafeMutableAddressor();

    RTCXPCDictionary.subscript.getter(v4, v3);

    v5 = type metadata accessor for XPCObject(0);
    v6 = sub_100002694(v3, 1, v5);
    v7 = *(v1 + 192);
    if (v6 == 1)
    {
      v8 = *(v1 + 192);
LABEL_5:
      sub_1000026E4(v8, &qword_10008F360, &qword_100070A20);
LABEL_26:
      if (qword_10008DD30 != -1)
      {
        sub_1000097DC(&qword_10008DD30);
      }

      v53 = *(v1 + 104);
      v54 = type metadata accessor for Logger();
      sub_10000B6D0(v54, qword_10008E7B0);

      v18 = Logger.logObject.getter();
      static os_log_type_t.error.getter();

      if (!sub_100004CAC())
      {
        goto LABEL_31;
      }

      v55 = *(v1 + 104);
      sub_100004D20();
      v56 = sub_100004414();
      v111 = v56;
      *v53 = 136446210;
      *(v53 + 4) = sub_1000053A0(*(v55 + 128), *(v55 + 136), &v111);
      sub_1000028B8();
      _os_log_impl(v57, v58, v59, v60, v61, 0xCu);
      sub_100005284(v56);
LABEL_30:
      sub_100004664();
      sub_100003910();
LABEL_31:

LABEL_41:
      sub_100001EF0();

      sub_100001D4C();

      return v73();
    }

    sub_100004EA4();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      v29 = *(v1 + 184);
      v30 = *(v1 + 96);
      *(v1 + 200) = *(v7 + 8);
      MessageKeys.serviceName.unsafeMutableAddressor();

      RTCXPCDictionary.subscript.getter(v30, v29);

      v31 = sub_100002694(v29, 1, v5);
      v32 = *(v1 + 184);
      if (v31 == 1)
      {

        v8 = v32;
        goto LABEL_5;
      }

      if (swift_getEnumCaseMultiPayload() == 8)
      {
        *(v1 + 208) = *(v32 + 8);
        MessageKeys.clientType.unsafeMutableAddressor();
        v2 = v1;

        sub_1000028C8();

        v74 = sub_100007BD0();
        v75 = *(v1 + 176);
        if (v74 == 1)
        {

          v8 = v75;
          goto LABEL_5;
        }

        if (swift_getEnumCaseMultiPayload() == 8)
        {
          v87 = *(v1 + 168);
          v88 = *(v1 + 96);
          *(v1 + 216) = *(v75 + 8);
          MessageKeys.realtime.unsafeMutableAddressor();

          RTCXPCDictionary.subscript.getter(v88, v87);

          v89 = sub_100002694(v87, 1, v5);
          v90 = *(v1 + 168);
          if (v89 == 1)
          {

            v8 = v90;
            goto LABEL_5;
          }

          if (sub_1000122D8() == 2)
          {
            v91 = *v90;
            v92 = MessageKeys.hierarchyToken.unsafeMutableAddressor();
            sub_100011CA0(v92);
            sub_1000028C8();
            sub_100005B94();
            v93 = sub_100007BD0();
            v94 = *(v1 + 160);
            v110 = v91;
            if (v93 == 1)
            {
LABEL_66:
              sub_1000026E4(v94, &qword_10008F360, &qword_100070A20);
LABEL_74:
              v95 = 0;
LABEL_75:
              *(v1 + 224) = v95;
              v98 = MessageKeys.samplingUUID.unsafeMutableAddressor();
              sub_100011CA0(v98);
              sub_1000028C8();
              sub_100005B94();
              v99 = sub_100007BD0();
              v100 = *(v1 + 144);
              if (v99 == 1)
              {
                sub_1000026E4(*(v1 + 144), &qword_10008F360, &qword_100070A20);
              }

              else
              {
                if (sub_1000122D8() == 8)
                {
                  v101 = *(v100 + 8);
                  goto LABEL_81;
                }

                sub_10002E5EC(v100);
              }

              v101 = 0;
LABEL_81:
              *(v1 + 232) = v101;
              v102 = MessageKeys.eager.unsafeMutableAddressor();
              sub_100011CA0(v102);
              sub_1000028C8();
              sub_100005B94();
              if (sub_100007BD0() != 1)
              {
                sub_10002E6E0(*(v1 + 136), *(v1 + 128), &qword_10008F360, &qword_100070A20);
                if (swift_getEnumCaseMultiPayload() == 2)
                {
                  v103 = **(v1 + 128);
                  sub_1000026E4(*(v1 + 136), &qword_10008F360, &qword_100070A20);
                  if ((v110 & 1) != 0 || !v103 || qword_10008DDC0 == -1)
                  {
LABEL_89:
                    v104 = MessageKeys.overrideSampling.unsafeMutableAddressor();
                    sub_100011CA0(v104);
                    sub_1000028C8();

                    v105 = sub_100007BD0();
                    v106 = v2[15];
                    if (v105 == 1)
                    {
                      result = sub_1000026E4(v2[15], &qword_10008F360, &qword_100070A20);
                    }

                    else
                    {
                      result = sub_1000122D8();
                      if (result != 5)
                      {
                        result = sub_10002E5EC(v106);
                      }
                    }

                    if (*(v2[13] + 112))
                    {

                      XPCConnection.remoteUID.getter();

                      v107 = qword_100095AE8;
                      v2[30] = qword_100095AE8;
                      if (v107)
                      {

                        v108 = swift_task_alloc();
                        v2[31] = v108;
                        *v108 = v2;
                        v108[1] = sub_1000117D4;

                        return sub_100004DDC();
                      }

LABEL_103:
                      __break(1u);
                      return result;
                    }

LABEL_102:
                    __break(1u);
                    goto LABEL_103;
                  }

LABEL_99:
                  swift_once();
                  goto LABEL_89;
                }

                sub_10002E5EC(*(v1 + 128));
              }

              sub_1000026E4(*(v1 + 136), &qword_10008F360, &qword_100070A20);
              goto LABEL_89;
            }

            if (sub_1000122D8() == 8)
            {
              v95 = *(v94 + 8);
              v96 = MessageKeys.hierarchyLevel.unsafeMutableAddressor();
              sub_100011CA0(v96);
              sub_1000028C8();
              sub_100005B94();
              v97 = sub_100007BD0();
              v94 = *(v1 + 152);
              if (v97 == 1)
              {

                goto LABEL_66;
              }

              if (sub_1000122D8() == 3)
              {
                goto LABEL_75;
              }
            }

            sub_10002E5EC(v94);
            goto LABEL_74;
          }

          v52 = v90;
        }

        else
        {

          v52 = v75;
        }
      }

      else
      {

        v52 = v32;
      }
    }

    else
    {
      v52 = v7;
    }

    sub_10002E5EC(v52);
    goto LABEL_26;
  }

  v9 = *(v1 + 112);
  v10 = *(v1 + 96);
  MessageKeys.sessionID.unsafeMutableAddressor();

  RTCXPCDictionary.subscript.getter(v10, v9);

  v11 = type metadata accessor for XPCObject(0);
  v12 = sub_10000B7A4();
  v14 = sub_100002694(v12, v13, v11);
  v15 = *(v1 + 112);
  if (v14 == 1)
  {
    sub_1000026E4(*(v1 + 112), &qword_10008F360, &qword_100070A20);
LABEL_33:
    if (qword_10008DD30 != -1)
    {
      sub_1000097DC(&qword_10008DD30);
    }

    v62 = *(v1 + 104);
    v63 = type metadata accessor for Logger();
    sub_10000B6D0(v63, qword_10008E7B0);

    v64 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_100004CAC())
    {
      v2 = *(v1 + 104);
      sub_100004D20();
      v65 = sub_100004414();
      v111 = v65;
      *v62 = 136446210;
      *(v62 + 4) = sub_1000053A0(v2[16], v2[17], &v111);
      sub_1000028B8();
      _os_log_impl(v66, v67, v68, v69, v70, 0xCu);
      sub_100005284(v65);
      sub_100004664();
      sub_100003910();
    }

    reply = xpc_dictionary_create_reply(*(v1 + 96));
    if (!reply)
    {
      goto LABEL_41;
    }

    v72 = *(*(v1 + 104) + 112);
    if (!v72)
    {
      __break(1u);
      goto LABEL_99;
    }

    xpc_connection_send_message(*(v72 + 16), reply);
LABEL_40:
    swift_unknownObjectRelease();
    goto LABEL_41;
  }

  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_10002E5EC(v15);
    goto LABEL_33;
  }

  swift_beginAccess();
  v33 = sub_100004E98();
  v35 = sub_100011D40(v33, v34);
  *(v1 + 296) = v35;
  swift_endAccess();
  if (!v35)
  {
    if (qword_10008DD30 != -1)
    {
      sub_1000097DC(&qword_10008DD30);
    }

    v76 = type metadata accessor for Logger();
    sub_10000B6D0(v76, qword_10008E7B0);

    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();

    if (sub_100005B24())
    {
      v79 = *(v1 + 104);
      v80 = sub_1000175B0();
      v111 = sub_100005BFC();
      *v80 = 136446466;
      v81 = sub_100004E98();
      *(v80 + 4) = sub_1000053A0(v81, v82, v83);
      *(v80 + 12) = 2082;
      *(v80 + 14) = sub_1000053A0(*(v79 + 128), *(v79 + 136), &v111);
      _os_log_impl(&_mh_execute_header, v77, v78, "attempt to close non-existing session %{public}s from %{public}s", v80, 0x16u);
      swift_arrayDestroy();
      sub_100001D64();
      sub_100001D1C(v80);
    }

    result = xpc_dictionary_create_reply(*(v1 + 96));
    if (!result)
    {

      goto LABEL_41;
    }

    if (*(*(v1 + 104) + 112))
    {

      swift_unknownObjectRetain();

      v84 = sub_100004EA4();
      xpc_connection_send_message(v84, v85);
      swift_unknownObjectRelease();
      goto LABEL_40;
    }

LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (qword_10008DD30 != -1)
  {
    sub_1000097DC(&qword_10008DD30);
  }

  v36 = type metadata accessor for Logger();
  sub_10000B6D0(v36, qword_10008E7B0);

  v37 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (sub_1000127C4())
  {
    v38 = *(v1 + 104);
    v39 = sub_1000175B0();
    v40 = sub_100005BFC();
    v111 = v40;
    *v39 = 136446466;
    v41 = sub_100004E98();
    *(v39 + 4) = sub_1000053A0(v41, v42, v43);
    *(v39 + 12) = 2082;
    *(v39 + 14) = sub_1000053A0(*(v38 + 128), *(v38 + 136), &v111);
    sub_100003C34();
    _os_log_impl(v44, v45, v46, v47, v48, 0x16u);
    sub_100004D38();
    sub_100001D1C(v40);
    sub_100001D64();
  }

  result = xpc_dictionary_create_reply(*(v1 + 96));
  if (!result)
  {

    goto LABEL_56;
  }

  if (!*(*(v1 + 104) + 112))
  {
    __break(1u);
    goto LABEL_101;
  }

  swift_unknownObjectRetain();

  v50 = sub_100004EA4();
  xpc_connection_send_message(v50, v51);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_56:
  v86 = swift_task_alloc();
  *(v1 + 304) = v86;
  *v86 = v1;
  v86[1] = sub_100014714;

  return sub_100012534(1);
}

uint64_t sub_100003910()
{
}

uint64_t sub_10000393C()
{
  sub_100005284(v0);
}

uint64_t sub_100003970(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t sub_1000039F4()
{
}

unint64_t sub_100003A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100003AF0(sqlite3 *a1, const char *a2)
{

  return sqlite3_exec(a1, a2, 0, 0, 0);
}

BOOL sub_100003B24(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100003B40(uint64_t a1)
{
  v3 = *(v1 + 184);
  v4 = a1 + ((*(v1 + 568) + 32) & ~*(v1 + 568));

  return sub_100037808(v4, v3);
}

BOOL sub_100003B90()
{

  return sub_100015F14((v2 - 128), v1, v0);
}

unint64_t sub_100003BC0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  v2 = sub_100007C1C();

  return sub_100003A3C(v2, v3, v4);
}

uint64_t sub_100003C88(uint64_t a1)
{

  return sub_10003F034(a1, v1, type metadata accessor for SQLiteDB.Location);
}

uint64_t sub_100003D60()
{

  return swift_task_alloc();
}

uint64_t sub_100003D78()
{
}

uint64_t sub_100003D94@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 240);
  v5 = v1 + ((*(v2 + 568) + 32) & ~*(v2 + 568));
  v6 = *(*(v2 + 160) + 72);
  *(v2 + 304) = v6;

  return sub_100037808(v5 + v6 * a1, v4);
}

uint64_t sub_100003E88()
{

  return type metadata accessor for Logger();
}

uint64_t sub_100003ED4()
{
}

void sub_100003EEC()
{

  sub_100022FE0();
}

void *sub_100003F30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100018000(v5, a2, a3, a4, v4);
}

uint64_t sub_100003F7C(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100003FB4(uint64_t a1)
{

  return swift_once();
}

void sub_100003FD4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_100003FF4()
{
  sub_100004F30();
  sub_100008E60();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = sub_100003900(v2);
  *v3 = v4;
  v5 = sub_1000043F4(v3);

  return sub_100004090(v5, v6, v7, v8, v9, v1);
}

uint64_t sub_100004090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a6;
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_100010C30;

  return sub_10000413C(a5, v7);
}

uint64_t sub_10000413C(uint64_t a1, char a2)
{
  *(v3 + 313) = a2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  sub_1000228D4(&qword_10008F360, &qword_100070A20);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();

  return _swift_task_switch(sub_100002AD0, v2, 0);
}

uint64_t sub_100004254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCObject(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000042B8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100010D10;

  return v6(a1);
}

uint64_t sub_1000043C0(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100004414()
{

  return swift_slowAlloc();
}

void sub_10000443C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_1000044A0()
{
  v0[50] = 0;
  v0[52] = 0;
  v0[54] = 0;
  v0[56] = 0;
}

uint64_t sub_100004530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return swift_beginAccess();
}

RTCUtility::XPCMessage::MessageType_optional __swiftcall XPCMessage.MessageType.init(rawValue:)(Swift::Int64 rawValue)
{
  if (rawValue >= 5)
  {
    LOBYTE(rawValue) = 5;
  }

  return rawValue;
}

uint64_t sub_10000456C()
{
  v0 = swift_task_alloc();
  v1 = sub_100003900(v0);
  *v1 = v2;
  v3 = sub_10000C650(v1);

  return v4(v3);
}

uint64_t sub_100004604(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 16);
  return result;
}

uint64_t sub_10000461C(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100004664()
{
}

uint64_t sub_10000468C(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000046E8(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100004794(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1000228D4(a2, a3);
}

uint64_t sub_100004854()
{
  v41 = v0;
  result = *(v0 + 160);
  *(v0 + 16) = result;
  v2 = *(v0 + 224);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 168);
  *(v0 + 24) = v6;
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  *(v0 + 56) = v3;
  if (v2)
  {
    v7 = *(v0 + 208);
    v38 = 0;
    v39 = 0xE000000000000000;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
    }

    else if (v7 + 1 >= 1)
    {
      if (v7)
      {
        v9 = -v7;
        v10 = 1;
        v11 = qword_10008EC18;
        p_type = &stru_10008CFF0.type;
        v48 = -v7;
        do
        {
          sub_100005504(*(v0 + 216), v2, v10);
          if (v14)
          {
            v15 = v13;
            v16 = v14;
            v17 = v38 & 0xFFFFFFFFFFFFLL;
            if ((v39 & 0x2000000000000000) != 0)
            {
              v17 = HIBYTE(v39) & 0xF;
            }

            if (v17)
            {
              v40._countAndFlagsBits = 46;
              v40._object = 0xE100000000000000;
              v18._countAndFlagsBits = v13;
              v18._object = v14;
              String.append(_:)(v18);

              String.append(_:)(v40);
            }

            else
            {

              v38 = v15;
              v39 = v16;
            }
          }

          else
          {
            if (p_type[424] != -1)
            {
              sub_10000986C();
              swift_once();
            }

            v19 = type metadata accessor for Logger();
            sub_10000B6D0(v19, v11);

            v20 = Logger.logObject.getter();
            v21 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v20, v21))
            {
              v22 = v11;
              v23 = *(v0 + 208);
              v24 = *(v0 + 216);
              v25 = swift_slowAlloc();
              v40._countAndFlagsBits = sub_100004F18();
              *v25 = 136315394;
              *(v25 + 4) = sub_1000053A0(v24, v2, &v40._countAndFlagsBits);
              *(v25 + 12) = 2048;
              *(v25 + 14) = v23;
              v11 = v22;
              v9 = v48;

              _os_log_impl(&_mh_execute_header, v20, v21, "gap in hierarchy: %s level %ld", v25, 0x16u);
              v26 = sub_1000387B0();
              sub_100001D1C(v26);
              v27 = v25;
              p_type = (&stru_10008CFF0 + 16);
              sub_100001D1C(v27);
            }

            else
            {
            }
          }

          ++v10;
        }

        while (v9 + v10 != 1);
        v8 = v39;
        if (v38)
        {
LABEL_23:
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
LABEL_25:
            result = *(v0 + 160);
            v6 = *(v0 + 168);
            goto LABEL_26;
          }

LABEL_24:

          goto LABEL_25;
        }
      }

      else
      {
        v8 = 0xE000000000000000;
      }

      if (v8 == 0xE000000000000000)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    __break(1u);
    return result;
  }

LABEL_26:
  if (sub_1000055F0(result, v6))
  {
    LODWORD(v48) = *(v0 + 310);
    v28 = *(v0 + 216);
    type metadata accessor for CachedSession(0);
    sub_1000058C8();
    sub_1000026BC(v29, v30, v31, v32);
    if (!v2)
    {
      v28 = 0;
    }

    type metadata accessor for Session(0);
    swift_allocObject();

    v33 = swift_task_alloc();
    *(v0 + 272) = v33;
    *v33 = v0;
    v33[1] = sub_10001111C;
    v34 = *(v0 + 264);
    v35 = *(v0 + 248);
    v36 = *(v0 + 224);
    v46 = v28;
    v47 = v36;
    v45 = v34;
    v44 = v48 & 1;
    v43 = v35;

    return sub_10005B5B8();
  }

  else
  {

    sub_10000FF74();

    return v37(0);
  }
}

BOOL sub_100004CAC()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t sub_100004D20()
{

  return swift_slowAlloc();
}

uint64_t sub_100004D38()
{

  return swift_arrayDestroy();
}

uint64_t sub_100004D7C()
{

  return sub_10000A864(v0, type metadata accessor for SessionConfiguration.BackendHTTP);
}

uint64_t sub_100004DDC()
{
  sub_100004680();
  *(v1 + 248) = v19;
  *(v1 + 256) = v0;
  *(v1 + 310) = v20;
  *(v1 + 240) = v18;
  *(v1 + 208) = v16;
  *(v1 + 224) = v17;
  *(v1 + 192) = v2;
  *(v1 + 200) = v3;
  *(v1 + 176) = v4;
  *(v1 + 184) = v5;
  *(v1 + 160) = v6;
  *(v1 + 168) = v7;
  *(v1 + 309) = v8;
  *(v1 + 304) = v9;
  v10 = sub_1000228D4(&qword_10008EDF8, &unk_10006E860);
  sub_100001D80(v10);
  *(v1 + 264) = swift_task_alloc();
  v11 = sub_100009A40();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100004ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v7 + 16);

  return sub_10004ADC8(a1, a2, v9, a4, a5, v5, v6);
}

uint64_t sub_100004F00(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t sub_100004F18()
{

  return swift_slowAlloc();
}

uint64_t sub_100004F3C()
{
}

uint64_t sub_100004F60()
{
  v2 = *(v0 + 104);
  *(v0 + 504) = v2;
  *(v0 + 572) = *(v2 + 32);
}

uint64_t sub_100004FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_100005000(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1000228D4(a2, a3);
  sub_100003C44();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_100005058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 + 4) = v9;
  *(v10 + 12) = 2082;

  return sub_1000053A0(v12, v11, &a9);
}

uint64_t sub_100005080(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 16) = v1;
}

uint64_t sub_1000050C4()
{
  *(v1 - 112) = v0;

  return swift_slowAlloc();
}

uint64_t sub_1000050E4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100005160()
{
}

uint64_t sub_100005184()
{

  return sub_10000A80C(v0, type metadata accessor for XPCObject);
}

void sub_1000051AC()
{
  v0[50] = 0;
  v0[52] = 0;
  v0[54] = 0;
  v0[56] = 0;
}

uint64_t sub_10000522C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100005284(void *a1)
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

uint64_t sub_1000052DC()
{

  return Error.localizedDescription.getter();
}

uint64_t sub_1000052F4()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2082;

  return swift_getErrorValue();
}

id sub_100005328()
{

  return v0;
}

unint64_t sub_1000053A0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000BD28(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_10000BE28(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100005284(v11);
  return v7;
}

uint64_t sub_100005470()
{

  return swift_beginAccess();
}

uint64_t sub_100005494()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2082;

  return swift_getErrorValue();
}

BOOL sub_1000054D0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL sub_1000054E8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100005504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100008D90(v3 + 144, v16);
  v7 = *(v3 + 144);
  v8 = *(v7 + 16);

  if (v8 && (v9 = sub_100003BC0(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(*(v7 + 56) + 8 * v9);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = v11 + 4;
  v13 = v11[2] + 1;
  while (--v13)
  {
    v14 = *v12;
    v12 += 3;
    if (v14 == a3)
    {

      break;
    }
  }

  return sub_10000534C();
}

uint64_t sub_1000055F0(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  sub_10000277C(v2 + 120, v42);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *(v2 + 120);
  *(v2 + 120) = 0x8000000000000000;
  v9 = sub_100007C1C();
  v11 = sub_100003BC0(v9, v10);
  v13 = *(v41 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
  }

  else
  {
    v16 = v11;
    v3 = v12;
    sub_1000228D4(&unk_10008F3A0, &qword_10006E890);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v15))
    {
      v17 = sub_100007C1C();
      v19 = sub_100003BC0(v17, v18);
      if ((v3 & 1) != (v20 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v16 = v19;
    }

    *(v2 + 120) = v41;
    if ((v3 & 1) == 0)
    {
      sub_10000D044(v16, a1, a2, 0, v41);
    }

    v21 = *(v41 + 56);
    v22 = *(v21 + 8 * v16);
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (!v23)
    {
      *(v21 + 8 * v16) = v24;
      swift_endAccess();
      v25 = *(v2 + 128);
      v26 = (v25 + 1);
      v4 = v26 != v25 + 1;
      if (v26 == v25 + 1)
      {
        LOWORD(v25) = v25 + 1;
      }

      *(v2 + 128) = v25;
      if (qword_10008DD40 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_23:
  sub_10000986C();
  swift_once();
LABEL_11:
  v27 = type metadata accessor for Logger();
  sub_10000B6D0(v27, qword_10008EC18);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    swift_slowAlloc();
    v42[0] = sub_100006FB8();
    *v3 = 136446722;
    v30 = sub_100007C1C();
    *(v3 + 4) = sub_1000053A0(v30, v31, v32);
    *(v3 + 12) = 2048;
    v33 = *(v2 + 120);
    if (*(v33 + 16))
    {

      v34 = sub_100007C1C();
      v36 = sub_100003BC0(v34, v35);
      if (v37)
      {
        v38 = *(*(v33 + 56) + 8 * v36);
      }

      else
      {
        v38 = 0;
      }
    }

    else
    {
      v38 = 0;
    }

    *(v3 + 14) = v38;

    *(v3 + 22) = 512;
    *(v3 + 24) = *(v5 + 128);

    _os_log_impl(&_mh_execute_header, v28, v29, "registered use for session config for %{public}s, now %lld uses. Total Active Sessions: %hu", v3, 0x1Au);
    v39 = sub_1000387B0();
    sub_100001D1C(v39);
    sub_100003D78();
  }

  else
  {
  }

  return !v4;
}

void *sub_1000058D4(uint64_t a1, uint64_t a2, ...)
{

  return Hasher.init(_seed:)();
}

uint64_t sub_10000591C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100005954(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_1000059AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a8;
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_100010C2C;

  return sub_100009BFC(a5, a6, a7, v9);
}

uint64_t sub_100005A70(uint64_t a1)
{
  sub_100008E60();
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = swift_task_alloc();
  v6 = sub_100003900(v5);
  *v6 = v7;
  v8 = sub_1000043F4(v6);

  return sub_1000059AC(v8, v9, v10, v11, v12, v2, v3, v4);
}

BOOL sub_100005B24()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100005B94()
{
}

uint64_t sub_100005BB8()
{
  v2 = *(v0 + 240);
  v3 = *(v0 + 232);

  return sub_100037808(v2, v3);
}

uint64_t sub_100005BFC()
{

  return swift_slowAlloc();
}

uint64_t sub_100005C14(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t sub_100005C34()
{
}

unint64_t sub_100005C50(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_1000053A0(a1, a2, va);
}

uint64_t sub_100005C68()
{
  sub_100061548();
  sub_1000228D4(v1, v2);
  sub_100003C44();
  v3 = sub_100004EA4();
  v4(v3);
  return v0;
}

uint64_t sub_100005D30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 32);

    return sub_1000026BC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100005DE4(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 32);

    return sub_100002694(v9, a2, v8);
  }
}

uint64_t sub_100005E6C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for UUID();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  sub_1000228D4(&qword_10008E210, &qword_10006CC70);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_10000A8C8, v1, 0);
}

unint64_t sub_100005FE4(uint64_t a1, unint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      return Data.InlineData.init(_:)();
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
      }

      else
      {
        return a2 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_100006094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[58] = a3;
  v4[59] = a4;
  v4[56] = a1;
  v4[57] = a2;
  v5 = type metadata accessor for Date();
  v4[60] = v5;
  v4[61] = *(v5 - 8);
  v4[62] = swift_task_alloc();
  v6 = type metadata accessor for TimeZone();
  v4[63] = v6;
  v4[64] = *(v6 - 8);
  v4[65] = swift_task_alloc();

  return _swift_task_switch(sub_1000061B4, 0, 0);
}

uint64_t sub_1000061B4()
{
  v1 = *(v0 + 456);
  *(v0 + 352) = *v1;
  *(v0 + 368) = v1[1];
  *(v0 + 384) = v1[2];
  v2 = v1[2];
  v3 = *v1;
  *(v0 + 320) = v1[1];
  *(v0 + 336) = v2;
  *(v0 + 304) = v3;
  sub_100005CC0(v0 + 352, v0 + 400);
  sub_100005CC0(v0 + 368, v0 + 416);
  sub_100005CC0(v0 + 384, v0 + 432);
  if (qword_10008DDC0 != -1)
  {
    sub_100001EBC(&qword_10008DDC0);
  }

  if (byte_100095B00 == 1)
  {
    if (qword_10008DDD8 != -1)
    {
      swift_once();
    }

    v4 = 5;
    if (!byte_100095B11)
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  *(v0 + 528) = v4;
  v5 = *(v0 + 520);
  v6 = *(v0 + 504);
  v7 = *(v0 + 512);
  v9 = *(v0 + 488);
  v8 = *(v0 + 496);
  v10 = *(v0 + 480);
  static TimeZone.current.getter();
  Date.init()();
  *(v0 + 536) = TimeZone.secondsFromGMT(for:)();
  (*(v9 + 8))(v8, v10);
  result = (*(v7 + 8))(v5, v6);
  v12 = qword_100095AF0;
  *(v0 + 544) = qword_100095AF0;
  if (v12)
  {

    v13 = swift_task_alloc();
    *(v0 + 552) = v13;
    *v13 = v0;
    v13[1] = sub_10000D848;
    v14 = *(v0 + 456);

    return sub_100005E6C(v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for EventValue(uint64_t a1)
{
  result = qword_10008F428;
  if (!qword_10008F428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000063F0()
{
  v126 = v1;
  v6 = *(v1 + 184);
  v7 = OBJC_IVAR____TtC13rtcreportingd7Session_sentEvents;
  v8 = *(v6 + OBJC_IVAR____TtC13rtcreportingd7Session_sentEvents);
  v9 = __CFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
LABEL_49:
    sub_10000522C(&qword_10008DDE8);
    goto LABEL_25;
  }

  v2 = 4079420;
  v11 = *(v1 + 232);
  v12 = *(v1 + 176);
  *(v6 + OBJC_IVAR____TtC13rtcreportingd7Session_sentEvents) = v10;
  sub_10000BC78(0x646F6874656D5FLL, 0xE700000000000000, v12, v11);
  v13 = type metadata accessor for EventValue(0);
  if (sub_100002694(v11, 1, v13) != 1)
  {
    sub_100005C68();
    sub_100003B18();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v15 = *(v1 + 224);
    if (EnumCaseMultiPayload == 2)
    {
      *(v1 + 160) = *v15;
      goto LABEL_7;
    }

    if (EnumCaseMultiPayload == 1)
    {
      *(v1 + 168) = *v15;
LABEL_7:
      v119 = dispatch thunk of CustomStringConvertible.description.getter();
      v5 = v16;
      goto LABEL_10;
    }

    sub_10000A864(v15, type metadata accessor for EventValue);
  }

  v5 = 0xE300000000000000;
  v119 = 4079420;
LABEL_10:
  v17 = *(v1 + 216);
  v18 = *(v1 + 176);
  sub_100005000(*(v1 + 232), &unk_10008F2F0, &qword_10006FFF0);
  sub_10000BC78(0x7375746174735FLL, 0xE700000000000000, v18, v17);
  if (sub_100002694(v17, 1, v13) != 1)
  {
    sub_100005C68();
    sub_100003B18();
    v19 = swift_getEnumCaseMultiPayload();
    v20 = *(v1 + 208);
    if (v19 == 2)
    {
      *(v1 + 144) = *v20;
      goto LABEL_15;
    }

    if (v19 == 1)
    {
      *(v1 + 152) = *v20;
LABEL_15:
      v2 = dispatch thunk of CustomStringConvertible.description.getter();
      v3 = v21;
      goto LABEL_18;
    }

    sub_10000A864(v20, type metadata accessor for EventValue);
  }

  v3 = 0xE300000000000000;
LABEL_18:
  v22 = *(v1 + 296);
  sub_100005000(*(v1 + 216), &unk_10008F2F0, &qword_10006FFF0);
  if (v22)
  {
    v0 = 0x69746C616572202DLL;
  }

  else
  {
    v0 = 0;
  }

  if (v22)
  {
    v4 = 0xEA0000000000656DLL;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  if (qword_10008DDE8 != -1)
  {
    goto LABEL_49;
  }

LABEL_25:
  v23 = type metadata accessor for Logger();
  *(v1 + 240) = sub_1000050E4(v23, qword_10008FB00);
  swift_retain_n();

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v120 = v25;
  v26 = os_log_type_enabled(v24, v25);
  v27 = v5;
  v28 = *(v1 + 184);
  if (v26)
  {
    log = v24;
    v114 = v0;
    v115 = v27;
    v116 = v2;
    v29 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v123 = v112;
    *v29 = 136447490;
    *(v29 + 4) = sub_1000053A0(v28[14], v28[15], &v123);
    *(v29 + 12) = 2082;
    v30 = v28[25];
    v31 = v28[26];
    v32 = v28[27];
    v117 = v7;
    v118 = v6;
    v33 = v28[28];
    v34 = v28[29];
    v124 = v28[24];
    v125 = v30;

    v35._countAndFlagsBits = 58;
    v35._object = 0xE100000000000000;
    String.append(_:)(v35);
    v36._countAndFlagsBits = v31;
    v36._object = v32;
    String.append(_:)(v36);
    v37._countAndFlagsBits = 58;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    v38._countAndFlagsBits = v33;
    v38._object = v34;
    String.append(_:)(v38);
    v39 = sub_1000053A0(v124, v125, &v123);

    *(v29 + 14) = v39;
    *(v29 + 22) = 2050;
    v40 = *(v118 + v117);

    if (!v40)
    {
      __break(1u);
      goto LABEL_51;
    }

    *(v29 + 24) = v40 - 1;

    *(v29 + 32) = 2082;
    v42 = sub_1000053A0(v119, v115, &v123);

    *(v29 + 34) = v42;
    *(v29 + 42) = 2082;
    v43 = sub_1000053A0(v116, v3, &v123);

    *(v29 + 44) = v43;
    *(v29 + 52) = 2080;
    v44 = sub_1000053A0(v114, v4, &v123);

    *(v29 + 54) = v44;
    _os_log_impl(&_mh_execute_header, log, v120, "session %{public}s (%{public}s) sending message %{public}llu %{public}s:%{public}s%s", v29, 0x3Eu);
    swift_arrayDestroy();
    sub_100001D1C(v112);
    sub_100001D1C(v29);
  }

  else
  {
  }

  v46 = *(v1 + 176);
  v45 = *(v1 + 184);
  v47 = *(v45 + 112);
  *(v1 + 248) = v47;
  v48 = *(v45 + 120);
  *(v1 + 256) = v48;
  memcpy((v1 + 16), (v45 + OBJC_IVAR____TtC13rtcreportingd7Session_eventExtraFieldProvider), 0x60uLL);

  v49 = sub_1000070A0();
  swift_isUniquelyReferenced_nonNull_native();
  v124 = v46;
  sub_100007B80();
  sub_100007670(v49, v50, 0, v51, &v124);
  v52 = v124;
  *(v1 + 264) = v124;
  v53 = qword_10008DDC0;

  if (v53 != -1)
  {
    result = swift_once();
  }

  if (byte_100095B00 == 1)
  {
    v54 = *(v1 + 184);
    type metadata accessor for TaskPriority();
    v55 = sub_100004FCC();
    sub_1000026BC(v55, v56, v57, v58);
    sub_100002A00();
    v61 = sub_100010240(v59, v60, &unk_10006FF94);
    v62 = swift_allocObject();
    v62[2] = v54;
    v62[3] = v61;
    v62[4] = v54;
    v62[5] = v47;
    v62[6] = v48;
    v62[7] = v52;
    swift_retain_n();

    v63 = sub_10001234C();
    sub_10005A254(v63, v64, v65, v66, v62);
  }

  v67 = *(v1 + 184);
  v68 = *(v67 + OBJC_IVAR____TtC13rtcreportingd7Session_immediateBackend);
  if (v68)
  {
    v121 = *(v1 + 192);
    v69 = v47;
    v70 = *(v67 + OBJC_IVAR____TtC13rtcreportingd7Session_immediateBackend + 8);
    type metadata accessor for TaskPriority();
    v71 = sub_100004FCC();
    sub_1000026BC(v71, v72, v73, v74);
    sub_100002A00();
    v77 = sub_100010240(v75, v76, &unk_10006FF94);
    sub_100061664();
    v78 = swift_allocObject();
    v78[2] = v67;
    v78[3] = v77;
    v78[4] = v68;
    v78[5] = v70;
    v47 = v69;
    v78[6] = v69;
    v78[7] = v48;
    v78[8] = v52;
    v78[9] = v67;
    v78[10] = v121;
    swift_retain_n();

    swift_unknownObjectRetain();
    v79 = sub_10001234C();
    sub_10002D48C(v79, v80, v81, v82, v78);
  }

  if (*(v1 + 296))
  {
    v83 = *(v1 + 184);

    v84 = *(v83 + OBJC_IVAR____TtC13rtcreportingd7Session_realtimeBackend);
    if (v84)
    {
      v122 = v48;
      v85 = v47;
      v86 = *(v1 + 192);
      v87 = *(v1 + 184);
      v88 = *(v83 + OBJC_IVAR____TtC13rtcreportingd7Session_realtimeBackend + 8);
      type metadata accessor for TaskPriority();
      v89 = sub_100004FCC();
      sub_1000026BC(v89, v90, v91, v92);
      sub_100002A00();
      v95 = sub_100010240(v93, v94, &unk_10006FF94);
      sub_100061664();
      v96 = swift_allocObject();
      v96[2] = v87;
      v96[3] = v95;
      v96[4] = v87;
      v96[5] = v84;
      v96[6] = v88;
      v96[7] = v85;
      v96[8] = v122;
      v96[9] = v52;
      v96[10] = v86;
      swift_retain_n();
      swift_unknownObjectRetain();
      v97 = sub_10001234C();
      sub_10002D48C(v97, v98, v99, v100, v96);
    }

    else
    {

      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        sub_1000028B8();
        _os_log_impl(v106, v107, v108, v109, v110, 2u);
        sub_100001D1C(v105);
      }
    }

    sub_100061618();

    sub_100001D4C();

    return v111();
  }

  v101 = qword_100095AD8;
  *(v1 + 272) = qword_100095AD8;
  if (!v101)
  {
LABEL_51:
    __break(1u);
    return result;
  }

  v102 = swift_task_alloc();
  *(v1 + 280) = v102;
  *v102 = v1;
  v102[1] = sub_1000106EC;

  return sub_10000810C();
}

uint64_t sub_100006DB4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_100061664();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100006E08()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_100061664();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100006E5C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100006EAC()
{
  sub_100061548();
  v1(0);
  sub_100003C44();
  v2 = sub_100004EA4();
  v3(v2);
  return v0;
}

uint64_t sub_100006F04()
{
  sub_100061548();
  v1(0);
  sub_100003C44();
  v2 = sub_100004EA4();
  v3(v2);
  return v0;
}

uint64_t sub_100006F6C(uint64_t a1)
{

  return sub_10001A320(a1, v1 + 56);
}

uint64_t sub_100006F9C(uint64_t a1)
{
  v3 = *(v1 - 136);

  return sub_100002694(a1, 1, v3);
}

uint64_t sub_100006FB8()
{

  return swift_slowAlloc();
}

uint64_t (*sub_100006FD4(uint64_t a1))()
{
  *(v2 + 48) = a1;
  *(a1 + 16) = v1;
  return sub_10003E4FC;
}

uint64_t sub_100007064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1000070A0()
{
  v1 = type metadata accessor for EventValue(0);
  v2 = __chkstk_darwin(v1);
  v49 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v48 = (&v47 - v4);
  sub_1000228D4(&qword_10008E4A0, &unk_100070080);
  v5 = sub_1000228D4(&qword_10008E4A8, &qword_10006D2D0);
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10006D1C0;
  v52 = v8;
  v9 = (v8 + v7);
  v10 = *(v5 + 48);
  *v9 = 0x7265646E65735FLL;
  v9[1] = 0xE700000000000000;
  v58 = *(v0 + 48);
  *(v9 + v10) = v58;
  sub_10000461C(v8 + v7 + v10);
  v11 = (v9 + v6);
  *v11 = 0x4E746E65696C635FLL;
  v11[1] = 0xEB00000000656D61;
  v57 = *(v0 + 64);
  sub_1000097A8(v9 + v6, v57);
  v12 = v9 + 2 * v6;
  strcpy(v12, "_serviceName");
  *(v12 + 13) = 0;
  *(v12 + 14) = -5120;
  v56 = *(v0 + 80);
  sub_1000097A8(v12, v56);
  v13 = (v9 + 3 * v6);
  *v13 = 0x6E6F69737365735FLL;
  v13[1] = 0xEA00000000004449;
  v55 = *(v0 + 16);
  sub_1000097A8(v13, v55);
  v14 = (v9 + 4 * v6);
  *v14 = 0x616E7265746E695FLL;
  v14[1] = 0xE90000000000006CLL;
  sub_10000284C(v14);
  v15 = (v9 + 5 * v6);
  *v15 = 0x6E6F7A656D69745FLL;
  v15[1] = 0xEF74657366664F65;
  sub_10000284C(v15);
  v16 = (v9 + 6 * v6);
  *v16 = 0x6449746E65696C63;
  v16[1] = 0xE800000000000000;
  v54 = *(v0 + 32);
  sub_1000097A8(v16, v54);
  v17 = &v9[v6] - v6;
  v18 = &v17[*(v5 + 48)];
  strcpy(v17, "_productFamily");
  v17[15] = -18;
  sub_100005CC0(&v58, v53);
  sub_100005CC0(&v57, v53);
  sub_100005CC0(&v56, v53);
  sub_100005CC0(&v55, v53);
  sub_100005CC0(&v54, v53);
  if (qword_10008DD10 != -1)
  {
    swift_once();
  }

  v19 = *algn_10008E438;
  v51 = *algn_10008E438;
  *v18 = qword_10008E430;
  *(v18 + 1) = v19;
  sub_10000461C(v18);
  v20 = &v9[v6];
  v21 = (v20 + *(v5 + 48));
  *v20 = 0x656D614E736F5FLL;
  v20[1] = 0xE700000000000000;
  v22 = unk_10008E448;
  v50 = unk_10008E448;
  *v21 = qword_10008E440;
  v21[1] = v22;
  sub_10000461C(v21);
  v23 = v9 + 9 * v6;
  v24 = &v23[*(v5 + 48)];
  strcpy(v23, "_productModel");
  *(v23 + 7) = -4864;
  v25 = unk_10008E458;
  *v24 = qword_10008E450;
  *(v24 + 1) = v25;
  sub_10000461C(v24);
  v26 = sub_10000512C(10);
  *v27 = 0x6973726556736F5FLL;
  v27[1] = 0xEA00000000006E6FLL;
  v28 = unk_10008E468;
  *v26 = qword_10008E460;
  v26[1] = v28;
  sub_10000461C(v26);
  v29 = sub_10000512C(11);
  *v30 = 0x646C6975625FLL;
  v30[1] = 0xE600000000000000;
  v31 = unk_10008E478;
  *v29 = qword_10008E470;
  v29[1] = v31;
  sub_10000461C(v29);
  v32 = sub_10000512C(12);
  *v33 = 0x5674726F7065725FLL;
  v33[1] = 0xEB00000000737265;
  v34 = unk_10008E488;
  *v32 = qword_10008E480;
  v32[1] = v34;
  sub_10000461C(v32);
  v35 = (v9 + 13 * v6);
  v36 = *(v5 + 48);
  sub_100007A24();
  *v35 = v37 | 1;
  v35[1] = v38;

  *(v35 + v36) = sub_10000C2E8();
  swift_storeEnumTagMultiPayload();
  v39 = (v9 + 14 * v6);
  v40 = *(v5 + 48);
  sub_100007A24();
  *v39 = v42;
  v39[1] = v41;
  *(v39 + v40) = sub_10000CB08();
  swift_storeEnumTagMultiPayload();
  v43 = Dictionary.init(dictionaryLiteral:)();
  if (qword_10008DDC0 != -1)
  {
    sub_100001EBC(&qword_10008DDC0);
  }

  if (byte_100095B00 == 1)
  {
    v44 = *algn_10008E498;
    v45 = v48;
    *v48 = qword_10008E490;
    *(v45 + 8) = v44;
    sub_10000461C(v45);
    sub_1000166B4(v45, v49);

    swift_isUniquelyReferenced_nonNull_native();
    v53[0] = v43;
    sub_100016564();
    return v53[0];
  }

  return v43;
}

uint64_t sub_100007670(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for EventValue(0);
  v46 = *(v10 - 8);
  v11 = __chkstk_darwin(v10 - 8);
  v39 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v38 - v13;
  v15 = sub_1000228D4(&unk_10008FD50, &unk_100070050);
  __chkstk_darwin(v15 - 8);
  v17 = (v38 - v16);
  sub_100007064(a1, a2, a3, v44);
  v40 = v44[0];
  v41 = v44[1];
  v42 = v44[2];
  v43 = v45;
  v38[1] = a1;

  v38[0] = a3;

  while (1)
  {
    sub_100007C94(v17);
    v18 = sub_1000228D4(&qword_10008E4A8, &qword_10006D2D0);
    if (sub_100002694(v17, 1, v18) == 1)
    {
      sub_100008104(v40);
    }

    v20 = *v17;
    v19 = v17[1];
    sub_100006F04();
    v21 = *a5;
    v23 = sub_100003BC0(v20, v19);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((a4 & 1) == 0)
      {
        sub_1000228D4(&qword_10008F2E8, &unk_10006FAD0);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      sub_1000601E8(v26, a4 & 1);
      v28 = sub_100003BC0(v20, v19);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_16;
      }

      v23 = v28;
    }

    v30 = *a5;
    if (v27)
    {
      v31 = *(v46 + 72) * v23;
      v32 = v39;
      sub_100006EAC();
      sub_10000A864(v14, type metadata accessor for EventValue);

      sub_100020548(v32, v30[7] + v31);
      a4 = 1;
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      v33 = (v30[6] + 16 * v23);
      *v33 = v20;
      v33[1] = v19;
      sub_100006F04();
      v34 = v30[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_15;
      }

      v30[2] = v36;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100007A78()
{

  return sub_10003F094(v0, type metadata accessor for SQLiteDB.Location);
}

uint64_t sub_100007AA0@<X0>(uint64_t a1@<X8>)
{
  v5 = (v2 + ((a1 << 10) | (16 * v1)));
  *(v3 + 536) = v5[1];
  *(v3 + 544) = *v5;
}

void sub_100007ADC()
{
  v0[52] = 0;
  v0[54] = 0;
  v0[56] = 0;
}

uint64_t sub_100007B04()
{
}

NSString sub_100007B50()
{

  return String._bridgeToObjectiveC()();
}

uint64_t sub_100007B98()
{

  return swift_unknownObjectRelease_n();
}

uint64_t sub_100007BD0()
{

  return sub_100002694(v1, 1, v0);
}

uint64_t sub_100007BEC()
{
}

void sub_100007C34(int a1@<W8>)
{
  v1[52] = a1;
  v1[54] = a1;
  v1[56] = a1;
}

BOOL sub_100007C60(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100007C94@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000228D4(&unk_10008FD40, &unk_100070040);
  __chkstk_darwin(v3);
  v5 = &v29 - v4;
  v6 = type metadata accessor for EventValue(0);
  v33 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000228D4(&qword_10008F370, &qword_10006E358);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v13 = (&v29 - v12);
  v15 = *v1;
  v14 = v1[1];
  v16 = v1[2];
  v17 = v1[3];
  v18 = v1[4];
  v30 = v5;
  v34 = v16;
  if (v18)
  {
    v31 = v10;
    v32 = a1;
    v19 = v3;
    v20 = v17;
LABEL_7:
    v21 = (v18 - 1) & v18;
    v22 = (*(v15 + 48) + 16 * (__clz(__rbit64(v18)) | (v20 << 6)));
    v23 = *v22;
    v24 = v22[1];
    sub_100006EAC();
    *v13 = v23;
    v13[1] = v24;
    v3 = v19;
    sub_100006F04();
    sub_1000026BC(v13, 0, 1, v19);

    v10 = v31;
    a1 = v32;
LABEL_8:
    *v1 = v15;
    v1[1] = v14;
    v1[2] = v34;
    v1[3] = v17;
    v1[4] = v21;
    v25 = v1[5];
    sub_100007FDC();
    v26 = 1;
    if (sub_100002694(v10, 1, v3) != 1)
    {
      v27 = v30;
      sub_100007FDC();
      v25(v27);
      sub_100005000(v27, &unk_10008FD40, &unk_100070040);
      v26 = 0;
    }

    v28 = sub_1000228D4(&qword_10008E4A8, &qword_10006D2D0);
    return sub_1000026BC(a1, v26, 1, v28);
  }

  else
  {
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= ((v16 + 64) >> 6))
      {
        sub_1000026BC(&v29 - v12, 1, 1, v3);
        v21 = 0;
        goto LABEL_8;
      }

      v18 = *(v14 + 8 * v20);
      ++v17;
      if (v18)
      {
        v31 = v10;
        v32 = a1;
        v19 = v3;
        v17 = v20;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100007FDC()
{
  sub_100061548();
  sub_1000228D4(v1, v2);
  sub_100003C44();
  v3 = sub_100004EA4();
  v4(v3);
  return v0;
}

uint64_t sub_100008034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100006EAC();

  return a2;
}

uint64_t sub_100008088@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000228D4(&unk_10008FD40, &unk_100070040);
  v4 = sub_1000228D4(&qword_10008E4A8, &qword_10006D2D0);
  result = sub_100008034(a2 + *(v4 + 48), *a1, a1[1]);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_10000810C()
{
  sub_100004680();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = type metadata accessor for String.Encoding();
  sub_100001D80(v5);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_100008198, v0, 0);
}

uint64_t sub_100008198()
{
  v1 = v0[5];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v2 = JSONEncoder.init()();
  v0[2] = v1;
  v0[8] = v2;

  sub_1000228D4(&qword_10008E780, &unk_10006FFD0);
  sub_10000847C();
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v5 = v4;
  v0[9] = 0;
  v0[10] = v3;
  v0[11] = v4;

  sub_100009AEC();
  if (Data.count.getter() > 0x400000)
  {
    if (qword_10008DD58 != -1)
    {
      sub_1000046E8(&qword_10008DD58);
    }

    v6 = type metadata accessor for Logger();
    sub_1000050E4(v6, qword_10008F040);
    v7 = sub_100009AEC();
    sub_100025CD8(v7, v8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v9, v10))
    {
      v19 = sub_100009AEC();
      sub_100005954(v19, v20);
      goto LABEL_16;
    }

    v11 = swift_slowAlloc();
    *v11 = 134349312;
    v12 = v11;
    v13 = 0;
    switch(v5 >> 62)
    {
      case 1uLL:
        LODWORD(v13) = HIDWORD(v3) - v3;
        if (!__OFSUB__(HIDWORD(v3), v3))
        {
          v13 = v13;
LABEL_15:
          *(v11 + 4) = v13;
          v24 = sub_100009AEC();
          sub_100005954(v24, v25);
          *(v12 + 12) = 2050;
          *(v12 + 14) = 0x400000;
          _os_log_impl(&_mh_execute_header, v9, v10, "event too large: (%{public}ld > %{public}lld", v12, 0x16u);
          sub_100001D1C(v12);
LABEL_16:

          sub_100022DA8(v26, v27, v28);
          sub_100011748();
          swift_allocError();
          *v29 = 0;
          swift_willThrow();
          v30 = sub_100009AEC();
          sub_100005954(v30, v31);

          sub_100001D4C();
          sub_100005358();

          __asm { BRAA            X1, X16 }
        }

        __break(1u);
LABEL_20:
        __break(1u);
        break;
      case 2uLL:
        v22 = *(v3 + 16);
        v21 = *(v3 + 24);
        v23 = __OFSUB__(v21, v22);
        v13 = v21 - v22;
        if (!v23)
        {
          goto LABEL_15;
        }

        goto LABEL_20;
      case 3uLL:
        goto LABEL_15;
      default:
        v13 = BYTE6(v5);
        goto LABEL_15;
    }

LABEL_21:
    __break(1u);
    JUMPOUT(0x10000846CLL);
  }

  static String.Encoding.utf8.getter();
  sub_100009AEC();
  v0[12] = String.init(data:encoding:)();
  v0[13] = v14;
  if (!v14)
  {
    goto LABEL_21;
  }

  v0[14] = *(v0[6] + 112);
  sub_100005358();

  return _swift_task_switch(v15, v16, v17);
}

unint64_t sub_10000847C()
{
  result = qword_10008E788;
  if (!qword_10008E788)
  {
    sub_100025D78(&qword_10008E780, &unk_10006FFD0);
    sub_10002C5B4(&qword_10008E790, type metadata accessor for EventValue, &unk_10006EE7C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E788);
  }

  return result;
}

uint64_t sub_100008538(void *a1)
{
  v4 = sub_1000228D4(&qword_10008F370, &qword_10006E358);
  v5 = sub_100001D80(v4);
  __chkstk_darwin(v5);
  sub_10000286C();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v11 = (&v76 - v10);
  v82 = sub_1000228D4(&qword_10008F378, &qword_10006EEC0);
  sub_100001EDC();
  v76 = v12;
  sub_100003EC8();
  __chkstk_darwin(v13);
  v83 = &v76 - v14;
  v15 = type metadata accessor for UUID();
  sub_100001EDC();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_100001EAC();
  v21 = v20 - v19;
  v22 = type metadata accessor for EventValue(0);
  sub_100001EDC();
  v80 = v23;
  __chkstk_darwin(v24);
  sub_10000286C();
  v81 = v25 - v26;
  sub_1000029A4();
  __chkstk_darwin(v27);
  v79 = &v76 - v28;
  sub_1000029A4();
  __chkstk_darwin(v29);
  sub_100012314();
  __chkstk_darwin(v30);
  v32 = (&v76 - v31);
  sub_1000098A8();
  sub_1000096D4();
  v85 = v22;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_100003DCC();
      dispatch thunk of Encoder.singleValueContainer()();
      sub_100008F48();
      sub_1000050A0();
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      goto LABEL_19;
    case 2u:
      sub_100003DCC();
      dispatch thunk of Encoder.singleValueContainer()();
      sub_100008F48();
      sub_1000050A0();
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      goto LABEL_19;
    case 3u:
      v37 = sub_100045EC4();
      sub_100008DE4(v37, v38);
      sub_100003F98();
      dispatch thunk of Encoder.singleValueContainer()();
      sub_100008ED4(v87, v88);
      v1 = v86;
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      goto LABEL_19;
    case 4u:
      sub_100003DCC();
      dispatch thunk of Encoder.singleValueContainer()();
      sub_100008F48();
      sub_1000050A0();
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
LABEL_19:
      v36 = v1;
      goto LABEL_20;
    case 5u:
      (*(v17 + 32))(v21, v32, v15);
      v66 = sub_100045EC4();
      sub_100008DE4(v66, v67);
      sub_100003F98();
      dispatch thunk of Encoder.singleValueContainer()();
      UUID.uuidString.getter();
      sub_100008F48();
      sub_100045EC4();
      v68 = v86;
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      v86 = v68;
      (*(v17 + 8))(v21, v15);
      goto LABEL_28;
    case 6u:
      v69 = *v32;
      sub_100003DCC();
      dispatch thunk of Encoder.unkeyedContainer()();
      v70 = 0;
      v71 = *(v69 + 16);
      while (2)
      {
        if (v71 == v70)
        {
          goto LABEL_28;
        }

        if (v70 >= *(v69 + 16))
        {
          goto LABEL_33;
        }

        sub_1000098A8();
        sub_1000096D4();
        sub_100008ED4(v87, v88);
        sub_10001E858();
        v72 = v86;
        dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        v86 = v72;
        if (!v72)
        {
          ++v70;
          sub_100001FE8();
          sub_10000A80C(v2, v73);
          continue;
        }

        break;
      }

      sub_100001FE8();
      sub_10000A80C(v2, v74);
LABEL_28:

      return sub_100005284(v87);
    case 7u:
      v39 = *v32;
      v40 = sub_100008DE4(a1, a1[3]);
      sub_1000164A0(v40, v41, v42);
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      v43 = 0;
      v44 = v39 + 64;
      v77 = v11;
      v78 = v39;
      sub_100009754();
      v47 = v46 & v45;
      v49 = (v48 + 63) >> 6;
      v84 = v8;
      if ((v46 & v45) != 0)
      {
        goto LABEL_7;
      }

      break;
    default:
      v33 = sub_10000BF10();
      sub_100008DE4(v33, v34);
      dispatch thunk of Encoder.singleValueContainer()();
      sub_100008ED4(v87, v88);
      sub_100003F98();
      v35 = v86;
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      v36 = v35;

LABEL_20:
      result = sub_100005284(v87);
      v86 = v36;
      return result;
  }

  while (1)
  {
LABEL_8:
    v51 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      JUMPOUT(0x100008CACLL);
    }

    if (v51 >= v49)
    {
      break;
    }

    v47 = *(v44 + 8 * v51);
    ++v43;
    if (v47)
    {
      v50 = v86;
      v43 = v51;
      goto LABEL_12;
    }
  }

  v64 = sub_1000228D4(&unk_10008FD40, &unk_100070040);
  sub_1000026BC(v8, 1, 1, v64);
  v47 = 0;
  while (1)
  {
    sub_1000164F4(v8, v11);
    v58 = sub_1000228D4(&unk_10008FD40, &unk_100070040);
    if (sub_100002694(v11, 1, v58) == 1)
    {

      return (*(v76 + 8))(v83, v82);
    }

    v60 = *v11;
    v59 = v11[1];
    sub_100004734();
    v61 = v81;
    sub_10000B670();
    v87[0] = v60;
    v87[1] = v59;
    sub_10001E858();
    v62 = v86;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v86 = v62;
    if (v62)
    {
      break;
    }

    sub_100001FE8();
    sub_10000A80C(v61, v63);
    v8 = v84;
    if (!v47)
    {
      goto LABEL_8;
    }

LABEL_7:
    v50 = v86;
    v51 = v43;
LABEL_12:
    v86 = v50;
    v52 = __clz(__rbit64(v47));
    v47 &= v47 - 1;
    v53 = (*(v78 + 48) + 16 * (v52 | (v51 << 6)));
    v55 = *v53;
    v54 = v53[1];
    sub_1000098A8();
    sub_1000096D4();
    v56 = sub_1000228D4(&unk_10008FD40, &unk_100070040);
    v57 = v84;
    *v84 = v55;
    v57[1] = v54;
    v8 = v57;
    sub_100004734();
    sub_10000B670();
    sub_1000026BC(v8, 0, 1, v56);

    v11 = v77;
  }

  sub_100001FE8();
  sub_10000A80C(v61, v75);
  return (*(v76 + 8))(v83, v82);
}

uint64_t sub_100008CF8()
{

  return swift_slowAlloc();
}

uint64_t sub_100008D20(uint64_t a1, uint64_t a2)
{
  sub_1000026BC(v2, a2, 1, v3);

  return sub_100005000(v2, v4, v5);
}

uint64_t sub_100008D90(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_100008DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
}

uint64_t sub_100008DC8(uint64_t a1)
{

  return Error.localizedDescription.getter();
}

void *sub_100008DE4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100008ED4(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_100008F48()
{
  v2 = *(v0 - 96);

  return sub_100008ED4(v0 - 120, v2);
}

uint64_t sub_100008F70()
{
}

uint64_t sub_100008FBC()
{
  *(v1 + 432) = *(v2 + 8);
  *(v1 + 440) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

uint64_t sub_100008FDC()
{

  return sub_100023508(v0, type metadata accessor for SQLiteDB.Location);
}

unint64_t sub_100009004(uint64_t a1)
{
  *(v3 + 4) = a1;
  *(v3 + 12) = 2082;
  v5 = *(v1 + 360);

  return sub_1000053A0(v5, v2, (v1 + 408));
}

void sub_100009038(uint64_t a1, uint64_t a2)
{
  v4 = 0xEE006874676E654CLL;
  v5 = v2;

  URLRequest.setValue(_:forHTTPHeaderField:)(*&a1, *&v5);
}

uint64_t sub_100009064()
{
}

uint64_t sub_1000090A0(uint64_t a1)
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

void sub_100009108(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL sub_100009128@<W0>(unint64_t a1@<X8>)
{
  result = a1 > 1;
  *(v2 + 40) = v1;
  return result;
}

uint64_t sub_10000914C(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = v2;
  *(a1 + 12) = 2050;

  return sub_10003BB7C();
}

uint64_t sub_10000917C()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_1000091A0(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  return v2;
}

uint64_t sub_1000091EC()
{
  sub_100002624();
  v1 = v0[9];
  sub_100001D10();
  v4 = sub_100009400(0xD00000000000003BLL, v2, v3);
  if (v1)
  {
    v0[15] = v1;
    v5 = v0[6];

    v7 = sub_10003D4BC;
    v8 = v5;
  }

  else
  {
    sub_1000092D4(v4, v0[3], v0[4], v0[5], v0[12], v0[13]);
    v6 = v0[6];

    v7 = sub_100010680;
    v8 = v6;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1000092D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006D1D0;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = &off_1000862B0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = &off_1000862B0;
  *(inited + 72) = a5;
  *(inited + 80) = a6;

  sub_100009524(inited);
  if (v6)
  {
    swift_setDeallocating();
    return sub_10000C4AC();
  }

  else
  {
    swift_setDeallocating();
    sub_10000C4AC();
    while (1)
    {
      result = sub_10000C50C();
      if (!result)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t sub_100009400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 112);
  if (*(v4 + 24))
  {
    v5 = sub_100022880(a1, a2, a3);
    sub_100004F00(&type metadata for DBError, v5);
    *v6 = 3;
  }

  else
  {
    v19 = 0;
    v7 = String.utf8CString.getter();
    v8 = *(v7 + 16);
    if (v8 >> 31)
    {
      __break(1u);
    }

    v9 = sqlite3_prepare_v2(*(v4 + 16), (v7 + 32), v8, &v19, 0);

    v13 = v19;
    if (v19 && !v9)
    {
      type metadata accessor for SQLiteDB.Statement();
      sub_10000C644();
      result = swift_allocObject();
      *(result + 24) = 0;
      *(result + 16) = v13;
      return result;
    }

    v15 = sub_100017598(v10, v11, v12);
    v16 = sub_100004F00(&type metadata for SQLError, v15);
    sub_10000BE84(v16, v17);
    *(v18 + 8) = 0xD00000000000001BLL;
    *(v18 + 16) = v13;
  }

  return swift_willThrow();
}

uint64_t sub_100009524(uint64_t result)
{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 32;
  while (1)
  {
    v6 = 0uLL;
    v7 = v4;
    v8 = 0uLL;
    v9 = 0uLL;
    if (v3 != v4)
    {
      if (v3 >= v4)
      {
        goto LABEL_11;
      }

      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_12;
      }

      *&v13 = v3;
      result = sub_100009658(v5 + 40 * v3, &v13 + 8);
      v6 = v13;
      v8 = v14;
      v9 = v15;
    }

    v16[0] = v6;
    v16[1] = v8;
    v16[2] = v9;
    if (!v9)
    {
      return result;
    }

    v12 = v6;
    result = sub_1000096BC((v16 + 8), &v13);
    if (__OFADD__(v12, 1))
    {
      break;
    }

    v10 = *(&v14 + 1);
    v11 = v15;
    sub_100008DE4(&v13, *(&v14 + 1));
    (*(v11 + 8))(v1, v12 + 1, v10, v11);
    result = sub_100005284(&v13);
    v3 = v7;
    if (v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100009658(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000096BC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000096D4()
{
  v1 = sub_1000175F8();
  v2(v1);
  sub_100003C44();
  v3 = sub_100004EA4();
  v4(v3);
  return v0;
}

uint64_t sub_100009728(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

void sub_10000977C()
{
  v1 = 58;
  v2 = 0xE100000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_1000097A8@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(a1 + v2) = a2;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000097DC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000097FC(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100009850(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000098E4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100009918(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100009968(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100009A50()
{
  v2 = *(v0 + 240);

  return sub_1000377AC(v2);
}

uint64_t sub_100009A6C()
{

  return type metadata accessor for EventValue(0);
}

uint64_t sub_100009A9C()
{

  return sub_100006F04();
}

void sub_100009AF8(uint64_t a1@<X8>)
{
  v3 = 1885960807;
  v4 = 0xE400000000000000;
  v5 = 0xD000000000000010;

  v2 = (a1 - 32) | 0x8000000000000000;
  URLRequest.setValue(_:forHTTPHeaderField:)(*&v3, *&v5);
}

uint64_t sub_100009B70(uint64_t a1)
{

  return sub_1000026BC(v1, 1, 1, a1);
}

uint64_t sub_100009BD4()
{

  return Logger.init()();
}

uint64_t sub_100009BFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 80) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v8 = swift_task_alloc();
  *(v5 + 48) = v8;
  *v8 = v5;
  v8[1] = sub_100009E3C;

  return sub_100009CAC(a1, a2);
}

uint64_t sub_100009CAC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return _swift_task_switch(sub_100009CD0, v2, 0);
}

uint64_t sub_100009CD0()
{
  sub_100004F30();
  v1 = v0[10];
  swift_beginAccess();
  if (*(*(v1 + 152) + 16))
  {
    sub_100003BC0(v0[8], v0[9]);
    if (v2)
    {
      swift_endAccess();
      sub_100001D4C();
      v8 = v3;

      return v8(v4);
    }
  }

  result = swift_endAccess();
  v6 = qword_100095AE8;
  v0[11] = qword_100095AE8;
  if (!v6)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (!*(v0[10] + 112))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  XPCConnection.remoteUID.getter();

  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_10002DD40;

  return sub_100035FA0();
}

uint64_t sub_100009E3C()
{
  sub_100004680();
  sub_100003B0C();
  sub_100001D58();
  *v2 = v1;
  v4 = *(v3 + 40);
  v5 = *v0;
  sub_1000043E4();
  *v6 = v5;
  *(v8 + 56) = v7;

  return _swift_task_switch(sub_10000A980, v4, 0);
}

uint64_t sub_100009F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100002760();
  a19 = v21;
  a20 = v22;
  sub_100002618();
  a18 = v20;
  if (*(v20 + 152) != 2)
  {
LABEL_17:

    sub_100001D4C();
    sub_100008E44();

    return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
  }

  v23 = *(v20 + 112);
  v24 = *(v20 + 80);
  MessageKeys.payload.unsafeMutableAddressor();

  RTCXPCDictionary.subscript.getter(v24, v23);

  type metadata accessor for XPCObject(0);
  v25 = sub_1000110B4(v23);
  v26 = *(v20 + 112);
  if (v25 == 1)
  {
    sub_100005000(*(v20 + 112), &qword_10008F360, &qword_100070A20);
LABEL_12:
    if (qword_10008DDE8 != -1)
    {
      sub_10000522C(&qword_10008DDE8);
    }

    v35 = type metadata accessor for Logger();
    sub_1000050E4(v35, qword_10008FB00);

    v30 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v36))
    {
      v37 = *(v20 + 88);
      v38 = sub_100004D20();
      v39 = sub_100004F18();
      a9 = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_1000053A0(*(v37 + 112), *(v37 + 120), &a9);
      sub_1000028B8();
      _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
      sub_100005284(v39);
      sub_100001D1C(v39);
      sub_100001D1C(v38);
    }

LABEL_16:

    goto LABEL_17;
  }

  sub_100004EA4();
  if (swift_getEnumCaseMultiPayload() != 12)
  {
    sub_10000A864(v26, type metadata accessor for XPCObject);
    goto LABEL_12;
  }

  v27 = *(v20 + 88);
  isEscapingClosureAtFileLocation = *v26;
  *(v20 + 120) = isEscapingClosureAtFileLocation;
  if (*(v27 + OBJC_IVAR____TtC13rtcreportingd7Session_receivedEnd))
  {
    if (qword_10008DDE8 != -1)
    {
      sub_10000522C(&qword_10008DDE8);
    }

    v29 = type metadata accessor for Logger();
    sub_1000050E4(v29, qword_10008FB00);
    sub_1000615A4();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = *(v20 + 88);
      v33 = sub_100004D20();
      v34 = sub_100004F18();
      a9 = v34;
      *v33 = 136446210;
      *(v33 + 4) = sub_1000053A0(*(v32 + 112), *(v32 + 120), &a9);
      _os_log_impl(&_mh_execute_header, v30, v31, "session %{public}s received event after ending", v33, 0xCu);
      sub_100005284(v34);
      sub_100003D78();
      sub_100001D1C(v33);
    }

    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v54 = (v20 + 16);
  v55 = v20 + 64;
  if (*(v27 + 176) != 1)
  {
    v56 = *(v27 + 240);
    if (*(v27 + 176) || v56 != 1)
    {
      v65 = *(v20 + 104);
      v66 = *(v20 + 80);
      MessageKeys.realtime.unsafeMutableAddressor();

      RTCXPCDictionary.subscript.getter(v66, v65);

      v67 = sub_1000110B4(v65);
      v68 = *(v20 + 104);
      if (v67 == 1)
      {
        sub_100005000(*(v20 + 104), &qword_10008F360, &qword_100070A20);
      }

      else if (swift_getEnumCaseMultiPayload() == 2)
      {
        if (v56 != 1 && *v68)
        {
          if (qword_10008DDE8 == -1)
          {
            goto LABEL_35;
          }

          goto LABEL_40;
        }
      }

      else
      {
        sub_10000A864(v68, type metadata accessor for XPCObject);
      }
    }
  }

  while (1)
  {
    v57 = *(v20 + 88);
    v58 = *(v20 + 96);
    type metadata accessor for EventValue(0);
    *(v20 + 64) = Dictionary.init(dictionaryLiteral:)();
    count = xpc_dictionary_get_count(isEscapingClosureAtFileLocation);
    sub_1000228D4(&qword_10008E780, &unk_10006FFD0);
    Dictionary.reserveCapacity(_:)(count);
    v60 = swift_allocObject();
    *(v20 + 128) = v60;
    v60[2] = v57;
    v60[3] = v55;
    v60[4] = v58;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_10000A8BC;
    *(v61 + 24) = v60;
    *(v20 + 48) = sub_10000B070;
    *(v20 + 56) = v61;
    *(v20 + 16) = _NSConcreteStackBlock;
    *(v20 + 24) = 1107296256;
    *(v20 + 32) = sub_10000A6E8;
    *(v20 + 40) = &unk_100088708;
    v54 = _Block_copy(v54);
    v55 = *(v20 + 56);

    swift_unknownObjectRetain();

    xpc_dictionary_apply(isEscapingClosureAtFileLocation, v54);
    swift_unknownObjectRelease();
    _Block_release(v54);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_40:
    sub_10000522C(&qword_10008DDE8);
LABEL_35:
    v69 = type metadata accessor for Logger();
    sub_1000050E4(v69, qword_10008FB00);

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = *(v20 + 88);
      v73 = sub_100004D20();
      v74 = sub_100004F18();
      a9 = v74;
      *v73 = 136446210;
      *(v73 + 4) = sub_1000053A0(*(v72 + 112), *(v72 + 120), &a9);
      _os_log_impl(&_mh_execute_header, v70, v71, "session %{public}s sent realtime event to non-realtime session", v73, 0xCu);
      sub_100005284(v74);
      sub_100001D1C(v74);
      sub_100001D64();
    }
  }

  reply = xpc_dictionary_create_reply(*(v20 + 80));
  if (reply)
  {
    xpc_connection_send_message(*(*(v20 + 72) + 16), reply);
    swift_unknownObjectRelease();
  }

  *(v20 + 136) = *(v20 + 64);

  v63 = swift_task_alloc();
  *(v20 + 144) = v63;
  *v63 = v20;
  v63[1] = sub_10001092C;
  sub_100008E44();

  return sub_10000BA94();
}

uint64_t sub_10000A614()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A668(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A678(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A688(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A698(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A6A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A6B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A6C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A6D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

uint64_t sub_10000A740()
{
  sub_100004680();
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  *(v1 + 152) = v3;
  *(v1 + 72) = v4;
  *(v1 + 96) = *v0;
  v5 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  sub_100001D80(v5);
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  sub_1000614E8();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10000A80C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003C44();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10000A864(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003C44();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_10000A8C8()
{
  v1 = qword_100095AD8;
  v0[18] = qword_100095AD8;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[19] = v2;
    *v2 = v0;
    v2[1] = sub_10000D1CC;
    v3 = v0[11];
    v4 = v0[6];

    sub_10000C624(v3, v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_10000A980()
{
  v16 = v0;
  if (v0[7])
  {
    v1 = *(v0[5] + 112);
    v0[8] = v1;
    if (v1)
    {

      v2 = swift_task_alloc();
      v0[9] = v2;
      *v2 = v0;
      v2[1] = sub_100010AC0;

      sub_10000A740();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_10008DD30 != -1)
    {
      sub_1000097DC(&qword_10008DD30);
    }

    v3 = v0[5];
    v4 = type metadata accessor for Logger();
    sub_10000B6D0(v4, qword_10008E7B0);

    v5 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_100004CAC())
    {
      v6 = v0[5];
      v8 = v0[2];
      v7 = v0[3];
      sub_1000175B0();
      v15 = sub_100008CF8();
      *v3 = 136446466;
      *(v3 + 4) = sub_1000053A0(v8, v7, &v15);
      sub_100016718();
      *(v3 + 14) = sub_1000053A0(*(v6 + 128), *(v6 + 136), &v15);
      sub_1000028B8();
      _os_log_impl(v9, v10, v11, v12, v13, 0x16u);
      swift_arrayDestroy();
      sub_100001D64();
      sub_100003910();
    }

    sub_100001D4C();

    v14();
  }
}

uint64_t sub_10000AB90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v38[1] = a4;
  v39 = a3;
  v5 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v38 - v9;
  v11 = type metadata accessor for EventValue(0);
  __chkstk_darwin(v11);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  __chkstk_darwin(v14 - 8);
  v16 = v38 - v15;
  v17 = type metadata accessor for XPCObject(0);
  v18 = __chkstk_darwin(v17);
  v20 = v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v38 - v21;
  v38[0] = String.init(cString:)();
  v23 = swift_unknownObjectRetain();
  XPCObject.init(_:)(v23, v16);
  if (sub_100002694(v16, 1, v17) == 1)
  {

    v24 = &qword_10008F360;
    v25 = &qword_100070A20;
    v26 = v16;
  }

  else
  {
    sub_100006F04();
    sub_100006EAC();
    sub_10000B09C(v20, v10);
    if (sub_100002694(v10, 1, v11) != 1)
    {
      sub_100006F04();
      sub_100006EAC();
      sub_1000026BC(v8, 0, 1, v11);
      sub_10000B810();
      sub_10000A864(v13, type metadata accessor for EventValue);
      sub_10000A864(v22, type metadata accessor for XPCObject);
      return 1;
    }

    sub_10000A864(v22, type metadata accessor for XPCObject);

    v24 = &unk_10008F2F0;
    v25 = &qword_10006FFF0;
    v26 = v10;
  }

  sub_100005000(v26, v24, v25);
  type = xpc_get_type(a2);
  xpc_type_get_name(type);
  v28 = String.init(cString:)();
  v30 = v29;
  v31 = v39;
  if (qword_10008DDE8 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_1000050E4(v32, qword_10008FB00);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v35 = 136446466;
    *(v35 + 4) = sub_1000053A0(*(v31 + 112), *(v31 + 120), &v40);
    *(v35 + 12) = 2082;
    v36 = sub_1000053A0(v28, v30, &v40);

    *(v35 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v33, v34, "session %{public}s skipping invalid payload value of type %{public}s", v35, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return 1;
}

uint64_t sub_10000B09C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for XPCObject(0);
  sub_100003C44();
  __chkstk_darwin(v4);
  sub_100001EAC();
  v7 = v6 - v5;
  v8 = type metadata accessor for EventValue(0);
  sub_100003C44();
  __chkstk_darwin(v9);
  sub_100001EAC();
  v12 = v11 - v10;
  sub_1000096D4();
  sub_10000BF10();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      sub_100005184();
      *v12 = *v7;
      sub_100007C1C();
      goto LABEL_11;
    case 3u:
    case 4u:
    case 5u:
    case 6u:
      sub_100005184();
      *v12 = *v7;
      sub_100007C1C();
      goto LABEL_11;
    case 8u:
      sub_100005184();
      v13 = *(v7 + 8);
      *v12 = *v7;
      *(v12 + 8) = v13;
      sub_100007C1C();
      goto LABEL_11;
    case 9u:
      sub_100005184();
      type metadata accessor for UUID();
      sub_100003C44();
      (*(v14 + 32))(v12, v7);
      sub_100007C1C();
LABEL_11:
      swift_storeEnumTagMultiPayload();
      v25 = 0;
      v19 = 0;
      v23 = 0;
      v24 = 0;
      break;
    case 0xBu:
      v15 = *v7;
      count = xpc_array_get_count(*v7);
      v17 = _swiftEmptyArrayStorage;
      if (!swift_isUniquelyReferenced_nonNull_native() || count > _swiftEmptyArrayStorage[3] >> 1)
      {
        sub_10002316C();
        v17 = v18;
      }

      v40 = v17;
      v19 = swift_allocObject();
      *(v19 + 16) = &v40;
      v20 = swift_allocObject();
      *(v20 + 16) = sub_100045B24;
      *(v20 + 24) = v19;
      v38 = sub_100045B2C;
      v39 = v20;
      sub_100004FA0();
      v35 = 1107296256;
      v36 = sub_100044E78;
      v37 = &unk_100087750;
      v21 = _Block_copy(aBlock);

      xpc_array_apply(v15, v21);
      _Block_release(v21);
      swift_unknownObjectRelease();
      sub_100005184();
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        JUMPOUT(0x10000B614);
      }

      *v12 = v40;
      sub_100007C1C();
      swift_storeEnumTagMultiPayload();
      v23 = 0;
      v24 = 0;
      v25 = sub_100045B24;
      break;
    case 0xCu:
      v27 = *v7;
      v40 = Dictionary.init(dictionaryLiteral:)();
      v28 = xpc_dictionary_get_count(v27);
      sub_1000228D4(&qword_10008E780, &unk_10006FFD0);
      Dictionary.reserveCapacity(_:)(v28);
      v24 = swift_allocObject();
      *(v24 + 16) = &v40;
      v29 = swift_allocObject();
      *(v29 + 16) = sub_100016498;
      *(v29 + 24) = v24;
      v38 = sub_10000B068;
      v39 = v29;
      sub_100004FA0();
      v35 = 1107296256;
      v36 = sub_10000A6E8;
      v37 = &unk_1000876D8;
      v30 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      xpc_dictionary_apply(v27, v30);
      _Block_release(v30);
      swift_unknownObjectRelease_n();
      sub_100005184();
      v31 = swift_isEscapingClosureAtFileLocation();

      if (v31)
      {
        goto LABEL_18;
      }

      *v12 = v40;
      sub_100007C1C();
      swift_storeEnumTagMultiPayload();
      v25 = 0;
      v19 = 0;
      v23 = sub_100016498;
      break;
    default:
      sub_10000A80C(a1, type metadata accessor for XPCObject);
      v32 = sub_100045EC4();
      sub_10000A80C(v32, v33);
      return sub_1000026BC(a2, 1, 1, v8);
  }

  sub_100004734();
  sub_10000C6AC();
  sub_10000B670();
  sub_1000026BC(a2, 0, 1, v8);
  sub_10000B64C(v25, v19);
  return sub_10000B64C(v23, v24);
}

uint64_t sub_10000B64C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000B670()
{
  v1 = sub_1000175F8();
  v2(v1);
  sub_100003C44();
  v3 = sub_100004EA4();
  v4(v3);
  return v0;
}

uint64_t sub_10000B708@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4 + *(a4 + 72) * a1;

  return sub_10001C2A0(v7, v5);
}

unint64_t sub_10000B7B0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1000053A0(a1, a2, &a9);
}

uint64_t sub_10000B7F4()
{
}

void sub_10000B810()
{
  sub_1000054BC();
  sub_100002654();
  v3 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  sub_100001D80(v3);
  sub_100003EC8();
  __chkstk_darwin(v4);
  v5 = sub_100005B54();
  type metadata accessor for EventValue(v5);
  sub_100003C44();
  __chkstk_darwin(v6);
  sub_100001EAC();
  if (sub_100002694(v0, 1, v7) == 1)
  {
    v8 = sub_10000BF10();
    sub_100005000(v8, v9, &qword_10006FFF0);
    sub_10000BBEC();
    v10 = sub_10000C6AC();
    sub_1000456C4(v10, v11, v12, v13);

    sub_100005000(v2, &unk_10008F2F0, &qword_10006FFF0);
  }

  else
  {
    sub_10000BF10();
    sub_10000B670();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000119A4();
    sub_100016564();

    *v1 = v14;
  }

  sub_10000CE54();
}

unint64_t sub_10000B97C(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v12 = a1;

  return sub_1000053A0(v11, v10, &a10);
}

uint64_t sub_10000B9D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100001DB0(a1, a2, a3, a4, a5);
  v7 = v6(0);
  sub_100001D80(v7);
  result = sub_10000B670();
  v9 = *(a5 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v11;
  }

  return result;
}

uint64_t sub_10000BA94()
{
  sub_100004680();
  *(v1 + 296) = v2;
  *(v1 + 176) = v3;
  *(v1 + 184) = v0;
  *(v1 + 192) = *v0;
  v4 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  sub_100001D80(v4);
  *(v1 + 200) = sub_100003D60();
  v5 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  sub_100001D80(v5);
  *(v1 + 208) = swift_task_alloc();
  *(v1 + 216) = swift_task_alloc();
  *(v1 + 224) = swift_task_alloc();
  *(v1 + 232) = swift_task_alloc();
  sub_1000614E8();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10000BBA0(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t sub_10000BC04()
{

  return sub_10004A850(v0, v1);
}

uint64_t sub_10000BC3C(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v3;
  a1[5] = v2;

  return sub_10002D48C(0, 0, v1, &unk_10006FCF0, a1);
}

uint64_t sub_10000BC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (sub_100003BC0(a1, a2), (v5 & 1) != 0))
  {
    v6 = type metadata accessor for EventValue(0);
    sub_100003C44();
    sub_100006EAC();
    v7 = a4;
    v8 = 0;
    v9 = 1;
    v10 = v6;
  }

  else
  {
    type metadata accessor for EventValue(0);
    v7 = sub_100004FCC();
  }

  return sub_1000026BC(v7, v8, v9, v10);
}

unint64_t sub_10000BD28(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000BF38(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

uint64_t sub_10000BE28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000BEC8()
{
  sub_100005284(v0);
}

void *sub_10000BF38(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000BFF8(a1, a2);
  sub_10000C110(&off_100085AA8);
  return v3;
}

void *sub_10000BF88(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000228D4(&qword_10008E8A0, &qword_10006E0B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void *sub_10000BFF8(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_10000BF88(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10000C110(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_10000C1F4(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_10000C1F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000228D4(&qword_10008E8A0, &qword_10006E0B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

BOOL sub_10000C2E8()
{
  v0 = [objc_allocWithZone(MCRestrictionManager) init];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (sub_10000CAAC(v1, v2, v0) == 1)
  {

    return 1;
  }

  else
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = sub_10000CAAC(v4, v5, v0);

    return v6 == 1;
  }
}

uint64_t sub_10000C374(sqlite3_stmt *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = String.utf8CString.getter();
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = v8;
  v5 = *(v8 + 16);
  if (!(v5 >> 31))
  {
    a1 = *(a1 + 2);
    if (qword_10008DD00 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  swift_once();
LABEL_5:
  v9 = sqlite3_bind_text(a1, a2, (v4 + 32), v5, qword_10008DD08);

  if (v9)
  {
    v13 = sub_10002282C(result, v11, v12);
    sub_100004F00(&type metadata for SQLError, v13);
    *v14 = v9;
    *(v14 + 8) = 0xD000000000000015;
    *(v14 + 16) = 0x8000000100071350;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10000C4AC()
{
  sub_1000228D4(&qword_10008F100, &qword_10006EB58);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10000C50C()
{
  v1 = v0;
  v2 = sqlite3_step(*(v0 + 16));
  if (v2 == 101)
  {
    *(v0 + 24) = 1;
    return 0;
  }

  else
  {
    v3 = v2;
    if (v2 == 100)
    {
    }

    else
    {
      _StringGuts.grow(_:)(38);

      strcpy(v13, "Statement ((");
      BYTE5(v13[1]) = 0;
      HIWORD(v13[1]) = -5120;
      v4._countAndFlagsBits = sub_1000218D8();
      String.append(_:)(v4);

      v5._object = 0x8000000100071330;
      v5._countAndFlagsBits = 0xD000000000000018;
      String.append(_:)(v5);
      v6 = v13[0];
      v1 = v13[1];
      v10 = sub_10002282C(v7, v8, v9);
      sub_100004F00(&type metadata for SQLError, v10);
      *v11 = v3;
      *(v11 + 8) = v6;
      *(v11 + 16) = v1;
      swift_willThrow();
    }
  }

  return v1;
}

uint64_t sub_10000C624(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_100001F2C(sub_10000C8A4, v2);
}

uint64_t sub_10000C670@<X0>(uint64_t a1@<X8>)
{
  v4 = a1 + *(v1 + 48);

  return sub_1000166B4(v4, v2);
}

uint64_t sub_10000C6B8()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_10000C704()
{
}

uint64_t sub_10000C720()
{
  sub_100002624();
  sub_100001D10();
  v2 = sub_100007C28(90);
  sub_100009400(v2, v3, v4);
  if (v0)
  {
    sub_100005150();
  }

  else
  {
    sub_10000C8C0(*(v1 + 24), *(v1 + 16));

    sub_100009B24();
  }

  return v5();
}

uint64_t sub_10000C7B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000C50C();
  if (!v1)
  {
    if (result)
    {
      sub_10000D078(result, a1);
      if (sub_10000C50C())
      {
        do
        {
        }

        while (sub_10000C50C());
        v10 = sub_100022880(0, v8, v9);
        v11 = sub_100004F00(&type metadata for DBError, v10);
        sub_100009728(v11, v12);

        return sub_1000233F0(a1);
      }

      else
      {
      }
    }

    else
    {
      v6 = sub_100022880(0, v4, v5);
      sub_100004F00(&type metadata for DBError, v6);
      *v7 = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10000C8A4(uint64_t a1)
{
  v2 = *(*(v1 + 32) + 112);
  *(v1 + 40) = v2;
  return sub_100007C10(a1, v2);
}

uint64_t sub_10000C8C0@<X0>(__int128 *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
  inited = swift_initStackObject();
  v7 = a1[1];
  v13 = *a1;
  v6 = v13;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = &off_1000862B0;
  *(inited + 16) = xmmword_10006CAC0;
  *(inited + 32) = v6;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = &off_1000862B0;
  *(inited + 72) = v7;
  v11 = a1[2];
  v8 = v11;
  v12 = v7;
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = &off_1000862B0;
  *(inited + 112) = v8;
  sub_100005CC0(&v13, v10);
  sub_100005CC0(&v12, v10);
  sub_100005CC0(&v11, v10);
  sub_100009524(inited);
  swift_setDeallocating();
  if (v2)
  {
    return sub_10000C4AC();
  }

  sub_10000C4AC();
  return sub_10000C7B8(a2);
}

uint64_t sub_10000CA78()
{
  sqlite3_finalize(*(v0 + 16));
  sub_10000C644();

  return _swift_deallocClassInstance(v1, v2, v3);
}

id sub_10000CAAC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [a3 BOOLSettingForFeature:v4];

  return v5;
}

BOOL sub_10000CB08()
{
  type metadata accessor for Logger();
  sub_10000CDD0();
  v3 = v2;
  v5 = __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v19 - v8;
  v19[1] = 0;
  v20 = 0;
  domain_answer = os_eligibility_get_domain_answer();
  v11 = v20;
  if (!v20)
  {
    v1 = domain_answer;
    Logger.init()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = v1;
      _os_log_impl(&_mh_execute_header, v12, v13, "Unable to determine eligibility due to error %d", v14, 8u);
      sub_100001D1C(v14);
    }

    (*(v3 + 8))(v9, v0);
    v11 = v20;
  }

  if (v11 == 4)
  {
    Logger.init()();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = sub_10001196C();
      sub_100004FC0(v17);
      _os_log_impl(&_mh_execute_header, v15, v16, "Device is eligible for Elisabeth", v1, 2u);
      sub_100004664();
    }

    (*(v3 + 8))(v7, v0);
  }

  return v11 == 4;
}

uint64_t sub_10000CD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_10000CE20()
{
}

unint64_t sub_10000CE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1000053A0(v4, v5, va);
}

unint64_t sub_10000CE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_1000053A0(v8, v9, va);
}

uint64_t sub_10000CE84@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(a1 + 136);
  v4 = *(a1 + 152);
  *(v1 + 137) = *(a1 + 161);
  v1[7] = v3;
  v1[8] = v4;
  v1[32] = v1[7];
  v1[18] = a1[10];
}

unint64_t sub_10000CEBC()
{

  return sub_1000053A0(v1, v0, (v2 - 96));
}

void *sub_10000CF0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 20);

    return sub_1000026BC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000CFA0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 20);

    return sub_100002694(v9, a2, v8);
  }
}

unint64_t sub_10000D044(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_100001DB0(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 8 * result) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v10;
  }

  return result;
}

uint64_t sub_10000D078@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{

  v5 = sub_10000D148(v4, 0);
  if (v6)
  {
    v8 = v5;
    v9 = v6;
    sqlite3_column_int64(*(a1 + 16), 1);
    v10 = sub_1000228D4(&qword_10008F108, &qword_10006EDC0);
    *a2 = v8;
    a2[1] = v9;
    Date.init(timeIntervalSince1970:)();
    return sub_1000026BC(a2, 0, 1, v10);
  }

  else
  {
    sub_100022DA8(v5, 0, v7);
    sub_100011748();
    swift_allocError();
    *v12 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_10000D148(uint64_t result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (sqlite3_column_text(*(result + 16), a2))
  {
    v2 = String.init(cString:)();
  }

  else
  {

    return 0;
  }

  return v2;
}

uint64_t sub_10000D1CC()
{
  v2 = *v1;
  sub_100001D58();
  *v3 = v2;
  v4 = *v1;
  sub_100001D58();
  *v5 = v4;
  *(v2 + 160) = v0;

  if (v0)
  {
    v6 = *(v2 + 56);
    v7 = sub_1000437F4;
  }

  else
  {
    v8 = *(v2 + 56);

    v7 = sub_10000D2EC;
    v6 = v8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10000D2EC()
{
  v57 = v0;
  v1 = *(v0 + 88);
  v2 = sub_1000228D4(&qword_10008F108, &qword_10006EDC0);
  if (sub_100002694(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v5 = *(v0 + 64);
    sub_1000233F0(v1);
    UUID.init()();
    v6 = UUID.uuidString.getter();
    v8 = v7;
    *(v0 + 224) = v7;
    result = (*(v4 + 8))(v3, v5);
    v10 = qword_100095AD8;
    *(v0 + 232) = qword_100095AD8;
    if (v10)
    {
      v11 = *(v0 + 128);
      v12 = *(v0 + 104);
      v13 = *(v0 + 96);
      *(v0 + 240) = v6;

      static Date.now.getter();
      Date.addingTimeInterval(_:)();
      v14 = *(v12 + 8);
      *(v0 + 248) = v14;
      *(v0 + 256) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v14(v11, v13);
      v15 = swift_task_alloc();
      *(v0 + 264) = v15;
      *v15 = v0;
      v15[1] = sub_1000435B8;
      v16 = *(v0 + 112);
      v17 = *(v0 + 48);
      v18 = v6;
      v19 = v8;
LABEL_14:

      return sub_10003E8F8(v17, v18, v19, v16);
    }

    __break(1u);
    goto LABEL_18;
  }

  v20 = *(v0 + 128);
  v22 = *(v0 + 96);
  v21 = *(v0 + 104);
  v23 = *v1;
  v24 = *(v1 + 1);
  (*(v21 + 32))(*(v0 + 136), &v1[*(v2 + 48)], v22);
  static Date.now.getter();
  v25 = static Date.< infix(_:_:)();
  v26 = *(v21 + 8);
  *(v0 + 168) = v26;
  *(v0 + 176) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v20, v22);
  if ((v25 & 1) == 0)
  {
    if (qword_10008DD68 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 48);
    v29 = type metadata accessor for Logger();
    sub_1000050E4(v29, qword_100095A48);
    *(v0 + 16) = *v28;
    v30 = *(v28 + 16);
    v31 = *(v28 + 24);
    v32 = *(v28 + 32);
    v33 = *(v28 + 40);
    sub_100005CC0(v0 + 16, v0 + 32);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    sub_10000D9BC(v0 + 16);

    if (os_log_type_enabled(v34, v35))
    {
      v53 = v30;
      v36 = swift_slowAlloc();
      v54 = v32;
      v37 = swift_slowAlloc();
      v55 = v37;
      *v36 = 136446210;
      v56 = *(v0 + 16);

      v38._countAndFlagsBits = 58;
      v38._object = 0xE100000000000000;
      String.append(_:)(v38);
      v39._countAndFlagsBits = v53;
      v39._object = v31;
      String.append(_:)(v39);
      v40._countAndFlagsBits = 58;
      v40._object = 0xE100000000000000;
      String.append(_:)(v40);
      v41._countAndFlagsBits = v54;
      v41._object = v33;
      String.append(_:)(v41);
      v42 = sub_1000053A0(v56, *(&v56 + 1), &v55);

      *(v36 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v34, v35, "CID expired for %{public}s, refreshing", v36, 0xCu);
      sub_100005284(v37);
    }

    v44 = *(v0 + 72);
    v43 = *(v0 + 80);
    v45 = *(v0 + 64);
    UUID.init()();
    v46 = UUID.uuidString.getter();
    v48 = v47;
    *(v0 + 184) = v46;
    *(v0 + 192) = v47;
    result = (*(v44 + 8))(v43, v45);
    v49 = qword_100095AD8;
    *(v0 + 200) = qword_100095AD8;
    if (v49)
    {
      v50 = *(v0 + 128);
      v51 = *(v0 + 96);

      static Date.now.getter();
      Date.addingTimeInterval(_:)();
      v26(v50, v51);
      v52 = swift_task_alloc();
      *(v0 + 208) = v52;
      *v52 = v0;
      v52[1] = sub_100043314;
      v16 = *(v0 + 120);
      v17 = *(v0 + 48);
      v18 = v46;
      v19 = v48;
      goto LABEL_14;
    }

LABEL_18:
    __break(1u);
    return result;
  }

  v26(*(v0 + 136), *(v0 + 96));

  v27 = *(v0 + 8);

  return v27(v23, v24);
}

uint64_t sub_10000D848(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 560) = v2;

  if (v2)
  {
    sub_10000D9BC(v6 + 352);
    sub_10000D9BC(v6 + 368);
    sub_10000D9BC(v6 + 384);

    v7 = sub_100024254;
  }

  else
  {
    *(v6 + 568) = a2;
    *(v6 + 576) = a1;
    sub_10000D9BC(v6 + 352);
    sub_10000D9BC(v6 + 368);
    sub_10000D9BC(v6 + 384);

    v7 = sub_10000DA10;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10000DA10()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);
  v6 = *(v0 + 464);
  v5 = *(v0 + 472);
  v7 = *(v0 + 448);
  *(v0 + 112) = v4;
  *(v0 + 120) = v3;
  *(v0 + 128) = v6;
  *(v0 + 136) = v5;
  *(v0 + 144) = v1;
  *(v0 + 152) = v2;
  v8 = *(v0 + 304);
  v9 = *(v0 + 320);
  v10 = *(v0 + 336);
  *(v0 + 176) = v9;
  *(v0 + 192) = v10;
  v11 = *(v0 + 304);
  *(v0 + 160) = v8;
  *(v0 + 16) = v4;
  *(v0 + 24) = v3;
  *(v0 + 32) = v6;
  *(v0 + 40) = v5;
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  v12 = *(v0 + 336);
  *(v0 + 80) = v9;
  *(v0 + 96) = v12;
  *(v0 + 64) = v11;
  sub_10000DB18(v0 + 112, v0 + 208);
  sub_10000DB50(v0 + 16);
  memcpy(v7, (v0 + 112), 0x60uLL);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10000DB80(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 112) = a2;
  *(v4 + 120) = v3;
  *(v4 + 57) = a3;
  *(v4 + 104) = a1;
  v5 = sub_100009A40();
  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10000DBB0()
{
  sub_100004680();
  v0[16] = *(v0[15] + 112);
  sub_1000579CC(&qword_10006FD40);
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v2 = sub_1000027EC(v1);

  return v3(v2);
}

uint64_t sub_10000DC48(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10000DC64, a2, 0);
}

uint64_t sub_10000DC64()
{
  sub_100004680();
  v1 = sub_10000DD08(*(v0[2] + 192), *(v0[2] + 200));
  v0[4] = v2;
  if (v2)
  {
    v3 = v0[3];
    v0[5] = v1;
    v0[6] = *(v3 + 128);
    v4 = sub_100016754();

    return _swift_task_switch(v4, v5, v6);
  }

  else
  {
    v7 = sub_100017614();

    return v8(v7);
  }
}

uint64_t sub_10000DD08(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  sub_100001EDC();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10008DDC0 != -1)
  {
    swift_once();
  }

  if (byte_100095B00 == 1)
  {
    if (qword_10008DDC8 != -1)
    {
      swift_once();
    }

    v10 = qword_100095B08;
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 stringArrayForKey:v11];

    if (v12)
    {
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = *(v13 + 16);
      if (v14)
      {
        v112 = v6;
        v113 = a2;
        v114 = a1;
        v115._countAndFlagsBits = _swiftEmptyArrayStorage;
        sub_100060C44(0, v14, 0);
        countAndFlagsBits = v115._countAndFlagsBits;
        v16 = v13 + 40;
        do
        {
          v17 = String.lowercased()();
          v115._countAndFlagsBits = countAndFlagsBits;
          v19 = countAndFlagsBits[2];
          v18 = countAndFlagsBits[3];
          if (v19 >= v18 >> 1)
          {
            sub_100060C44((v18 > 1), v19 + 1, 1);
            countAndFlagsBits = v115._countAndFlagsBits;
          }

          countAndFlagsBits[2] = v19 + 1;
          *&countAndFlagsBits[2 * v19 + 4] = v17;
          v16 += 16;
          --v14;
        }

        while (v14);

        a2 = v113;
        a1 = v114;
        v6 = v112;
      }

      else
      {

        countAndFlagsBits = _swiftEmptyArrayStorage;
      }

      v115 = String.lowercased()();
      __chkstk_darwin(v115._countAndFlagsBits);
      *(&v112 - 2) = &v115;
      v20 = sub_1000182F8(sub_100014E24, (&v112 - 4), countAndFlagsBits);

      if (!v20)
      {
        Logger.init()();

        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = sub_10002E444(12);
          v28 = swift_slowAlloc();
          v115._countAndFlagsBits = v28;
          *v27 = 136446210;
          *(v27 + 4) = sub_1000053A0(a1, a2, &v115._countAndFlagsBits);
          _os_log_impl(&_mh_execute_header, v25, v26, "client %{public}s blocked by defaults", v27, 0xCu);
          sub_100005284(v28);
        }

        (*(v6 + 8))(v9, v4);
        return 0;
      }
    }
  }

  v21 = 0x74696B656D6167;
  v22 = a1 == 19271 && a2 == 0xE200000000000000;
  if (v22 || (sub_1000028E8(19271) & 1) != 0)
  {
    return v21;
  }

  v24 = a1 == 19779 && a2 == 0xE200000000000000;
  if (v24 || (sub_1000028E8(19779) & 1) != 0)
  {
    return 0x6964656D65726F63;
  }

  v29 = a1 == 17238 && a2 == 0xE200000000000000;
  if (v29 || (sub_1000028E8(17238) & 1) != 0)
  {
    return 0x7265666E6F637661;
  }

  v21 = 0x7674656C707061;
  v30 = a1 == 22100 && a2 == 0xE200000000000000;
  if (v30 || (sub_1000028E8(22100) & 1) != 0)
  {
    return v21;
  }

  v21 = 0x617273656E757469;
  if (a1 == 21065 && a2 == 0xE200000000000000)
  {
    return v21;
  }

  v114 = a1;
  v32 = a2;
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return v21;
  }

  v21 = 0x6974736567677573;
  v33 = v114 == 18259 && a2 == 0xE200000000000000;
  if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return v21;
  }

  v34 = v114;
  v35 = v114 == 21580 && v32 == 0xE200000000000000;
  if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0x7265666E6F637661;
  }

  v21 = 0x796C616E6178736FLL;
  v36 = v34 == 1096307535 && v32 == 0xE400000000000000;
  if (v36 || (sub_10000468C(1096307535, 0xE400000000000000) & 1) != 0)
  {
    return v21;
  }

  sub_100007A48();
  v38 = v22 && v32 == 0xE500000000000000;
  if (v38 || (sub_10000468C(v37, 0xE500000000000000) & 1) != 0)
  {
    return 0x7265666E6F637661;
  }

  sub_100007A48();
  v40 = v22 && v32 == 0xE600000000000000;
  if (v40 || (sub_10000468C(v39, 0xE600000000000000) & 1) != 0)
  {
    return 0x6964656D65726F63;
  }

  sub_100007A48();
  v42 = v22 && v32 == 0xE800000000000000;
  if (v42 || (sub_10000468C(v41, 0xE800000000000000) & 1) != 0)
  {
    return 0x6964656D65726F63;
  }

  sub_100007A48();
  v44 = v22 && v32 == 0xE700000000000000;
  if (v44 || (sub_10000468C(v43, 0xE700000000000000) & 1) != 0)
  {
    return 1835364208;
  }

  v21 = 0x7061736F65646976;
  sub_100007A48();
  v46 = v22 && v32 == 0xE600000000000000;
  if (v46 || (sub_10000468C(v45, 0xE600000000000000) & 1) != 0)
  {
    return v21;
  }

  v21 = 0x7361656C69626F6DLL;
  sub_100007A48();
  v48 = v22 && v32 == 0xE800000000000000;
  if (v48 || (sub_10000468C(v47, 0xE800000000000000) & 1) != 0)
  {
    return v21;
  }

  v21 = 0x6964756165726F63;
  sub_100004430();
  v49 = v22 && v32 == 0xE200000000000000;
  if (v49 || (sub_100001F0C(16707) & 1) != 0)
  {
    return v21;
  }

  sub_100004430();
  if (v22 && v32 == 0xE300000000000000)
  {
    return 0x7265666E6F637661;
  }

  v21 = 0x7265666E6F637661;
  if ((sub_1000097FC(4282189) & 1) == 0)
  {
    v21 = 0x617261686173;
    sub_100004430();
    v51 = v22 && v32 == 0xE200000000000000;
    if (!v51 && (sub_100001F0C(16979) & 1) == 0)
    {
      v21 = 0x76697463616F7270;
      sub_100004430();
      v52 = v22 && v32 == 0xE200000000000000;
      if (!v52 && (sub_100001F0C(20545) & 1) == 0)
      {
        v21 = 0x7574696B616CLL;
        sub_100004430();
        v53 = v22 && v32 == 0xE200000000000000;
        if (!v53 && (sub_100001F0C(19282) & 1) == 0)
        {
          v21 = 0x73676E6977;
          sub_100007A48();
          v55 = v22 && v32 == 0xE400000000000000;
          if (!v55 && (sub_10000468C(v54, 0xE400000000000000) & 1) == 0)
          {
            v21 = 0x796F6C6C61;
            v56 = v114 == 5456969 && v32 == 0xE300000000000000;
            if (!v56 && (sub_1000097FC(5456969) & 1) == 0)
            {
              v21 = 0x656761726F7473;
              sub_100004430();
              v57 = v22 && v32 == 0xE400000000000000;
              if (!v57 && (sub_10000468C(1196577875, 0xE400000000000000) & 1) == 0)
              {
                sub_100004430();
                v58 = v22 && v32 == 0xE200000000000000;
                if (v58 || (sub_100001F0C(21844) & 1) != 0)
                {
                  return 30068;
                }

                v21 = 0x74656C706F7264;
                sub_100004430();
                v59 = v22 && v32 == 0xE200000000000000;
                if (!v59 && (sub_100001F0C(22350) & 1) == 0)
                {
                  v21 = 0x7473616365726F66;
                  sub_100004430();
                  v60 = v22 && v32 == 0xE200000000000000;
                  if (!v60 && (sub_100001F0C(18755) & 1) == 0)
                  {
                    v21 = 1952542820;
                    sub_100004430();
                    v61 = v22 && v32 == 0xE400000000000000;
                    if (!v61 && (sub_10000468C(1413566532, 0xE400000000000000) & 1) == 0)
                    {
                      sub_100007A48();
                      v63 = v22 && v32 == 0xE300000000000000;
                      if (v63 || (sub_1000097FC(v62) & 1) != 0)
                      {
                        return 0x65646C6F68707563;
                      }

                      v21 = 0x697463656C666572;
                      sub_100004430();
                      v64 = v22 && v32 == 0xE200000000000000;
                      if (v64 || (sub_100001F0C(21074) & 1) != 0)
                      {
                        return v21;
                      }

                      v21 = 0x6461737361626D61;
                      sub_100007A48();
                      v66 = v22 && v32 == 0xE300000000000000;
                      if (v66 || (sub_1000097FC(v65) & 1) != 0)
                      {
                        return v21;
                      }

                      v21 = 0x6C6572656D6F68;
                      sub_100004430();
                      v67 = v22 && v32 == 0xE400000000000000;
                      if (v67 || (sub_10000468C(1279611464, 0xE400000000000000) & 1) != 0)
                      {
                        return v21;
                      }

                      v21 = 0x7369737361637472;
                      sub_100007A48();
                      v69 = v22 && v32 == 0xE700000000000000;
                      if (v69 || (sub_10000468C(v68, 0xE700000000000000) & 1) != 0)
                      {
                        return v21;
                      }

                      sub_100007A48();
                      if (v22 && v32 == 0xE600000000000000)
                      {
                        return 0x6964656D65726F63;
                      }

                      v21 = 0x6964656D65726F63;
                      if ((sub_10000468C(v70, 0xE600000000000000) & 1) == 0)
                      {
                        sub_100004430();
                        v72 = v22 && v32 == 0xE200000000000000;
                        if (v72 || (sub_100001F0C(16708) & 1) != 0)
                        {
                          return 24931;
                        }

                        v21 = 0x7375626D696ELL;
                        sub_100004430();
                        v73 = v22 && v32 == 0xE300000000000000;
                        if (!v73 && (sub_1000097FC(4473923) & 1) == 0)
                        {
                          v21 = 7630698;
                          sub_100004430();
                          v74 = v22 && v32 == 0xE300000000000000;
                          if (!v74 && (sub_1000097FC(5461070) & 1) == 0)
                          {
                            v21 = 1869636978;
                            sub_100004430();
                            v75 = v22 && v32 == 0xE300000000000000;
                            if (!v75 && (sub_1000097FC(5657156) & 1) == 0)
                            {
                              v21 = 0x6365736172656961;
                              sub_100004430();
                              v76 = v22 && v32 == 0xE300000000000000;
                              if (!v76 && (sub_1000097FC(4407892) & 1) == 0)
                              {
                                v21 = 0x6B726F7769;
                                sub_100004430();
                                if (!v22 || v32 != 0xE300000000000000)
                                {
                                  v78 = v114;
                                  v79 = _stringCompareWithSmolCheck(_:_:expecting:)();
                                  v80 = v78 == 5457744 && v32 == 0xE300000000000000;
                                  v81 = v80;
                                  if ((v79 & 1) == 0 && !v81)
                                  {
                                    v82 = v114;
                                    v83 = _stringCompareWithSmolCheck(_:_:expecting:)();
                                    v84 = v82 == 5390926 && v32 == 0xE300000000000000;
                                    v85 = v84;
                                    if ((v83 & 1) == 0 && !v85 && (sub_1000097FC(5390926) & 1) == 0)
                                    {
                                      v21 = 1952804451;
                                      sub_100004430();
                                      v86 = v22 && v32 == 0xE300000000000000;
                                      if (!v86 && (sub_1000097FC(5723214) & 1) == 0)
                                      {
                                        v21 = 1819110755;
                                        sub_100007A48();
                                        v88 = v22 && v32 == 0xE500000000000000;
                                        if (!v88 && (sub_10000468C(v87, 0xE500000000000000) & 1) == 0)
                                        {
                                          v21 = 1802661751;
                                          sub_100004430();
                                          v89 = v22 && v32 == 0xE400000000000000;
                                          if (!v89 && (sub_10000468C(1263685463, 0xE400000000000000) & 1) == 0)
                                          {
                                            v21 = 1700949871;
                                            sub_100004430();
                                            v90 = v22 && v32 == 0xE400000000000000;
                                            if (!v90 && (sub_10000468C(1161973583, 0xE400000000000000) & 1) == 0)
                                            {
                                              v21 = 7368547;
                                              v91 = v114 == 5263171 && v32 == 0xE300000000000000;
                                              if (!v91 && (sub_1000097FC(5263171) & 1) == 0)
                                              {
                                                sub_100004430();
                                                v92 = v22 && v32 == 0xE200000000000000;
                                                if (v92 || (sub_100001F0C(21062) & 1) != 0)
                                                {
                                                  return 29286;
                                                }

                                                v21 = 7037805;
                                                sub_100004430();
                                                v93 = v22 && v32 == 0xE300000000000000;
                                                if (!v93 && (sub_1000097FC(4932429) & 1) == 0)
                                                {
                                                  v21 = 7499873;
                                                  sub_100007A48();
                                                  v95 = v22 && v32 == 0xE300000000000000;
                                                  if (!v95 && (sub_1000097FC(v94) & 1) == 0)
                                                  {
                                                    v21 = 1718644067;
                                                    sub_100007A48();
                                                    v97 = v22 && v32 == 0xE500000000000000;
                                                    if (!v97 && (sub_10000468C(v96, 0xE500000000000000) & 1) == 0)
                                                    {
                                                      v21 = 1885564259;
                                                      sub_100007A48();
                                                      v99 = v22 && v32 == 0xE600000000000000;
                                                      if (!v99 && (sub_10000468C(v98, 0xE600000000000000) & 1) == 0)
                                                      {
                                                        sub_100007A48();
                                                        if (!v22 || v32 != 0xE500000000000000)
                                                        {
                                                          v21 = 0x65646C6F68707563;
                                                          if (sub_10000468C(v100, 0xE500000000000000))
                                                          {
                                                            return v21;
                                                          }

                                                          v21 = 0x65736E61707865;
                                                          v102 = v114 == 1280329811 && v32 == 0xE400000000000000;
                                                          if (v102 || (sub_10000468C(1280329811, 0xE400000000000000) & 1) != 0)
                                                          {
                                                            return v21;
                                                          }

                                                          v21 = 1701863795;
                                                          v103 = v114 == 5522771 && v32 == 0xE300000000000000;
                                                          if (v103 || (sub_1000097FC(5522771) & 1) != 0)
                                                          {
                                                            return v21;
                                                          }

                                                          v21 = 1886938477;
                                                          sub_100007A48();
                                                          v105 = v22 && v32 == 0xE500000000000000;
                                                          if (v105 || (sub_10000468C(v104, 0xE500000000000000) & 1) != 0)
                                                          {
                                                            return v21;
                                                          }

                                                          v21 = 1835364973;
                                                          sub_100007A48();
                                                          v107 = v22 && v32 == 0xE500000000000000;
                                                          if (v107 || (sub_10000468C(v106, 0xE500000000000000) & 1) != 0)
                                                          {
                                                            return v21;
                                                          }

                                                          v21 = 2020565602;
                                                          sub_100007A48();
                                                          v109 = v22 && v32 == 0xE500000000000000;
                                                          if (v109 || (sub_10000468C(v108, 0xE500000000000000) & 1) != 0)
                                                          {
                                                            return v21;
                                                          }

                                                          sub_100007A48();
                                                          v111 = v22 && v32 == 0xE800000000000000;
                                                          if (v111 || (sub_10000468C(v110, 0xE800000000000000) & 1) != 0)
                                                          {
                                                            return 0x72656B616D6572;
                                                          }

                                                          return 0;
                                                        }

                                                        return 0x65646C6F68707563;
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v21;
}

uint64_t sub_10000ECF4()
{
  sub_100004680();
  v1 = sub_10000EDCC();

  if (v1)
  {
    v2 = sub_100017614();

    return v3(v2);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 56) = v5;
    *v5 = v0;
    v5[1] = sub_10000FE50;

    return sub_10000D028();
  }
}

uint64_t sub_10000EDCC()
{
  sub_100004DA4();
  v23 = v0;
  v24 = v1;
  v22 = type metadata accessor for URL();
  sub_100001EDC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100001EAC();
  v7 = v6 - v5;
  v8 = sub_1000132F8();
  v10 = sub_1000228D4(v8, v9);
  sub_100001D80(v10);
  sub_100003EC8();
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  sub_100005394();
  sub_10000EF4C();
  v14 = type metadata accessor for CachedStorebag(0);
  v15 = 1;
  v16 = sub_100002694(v13, 1, v14);
  sub_100005000(v13, &unk_10008F390, &qword_10006EED0);
  if (v16 == 1)
  {
    v17 = sub_100005394();
    sub_10000F2FC(v17, v18);
    v19 = URL.checkResourceIsReachable()();
    if (v20)
    {

      v15 = 0;
    }

    else
    {
      v15 = v19;
    }

    (*(v3 + 8))(v7, v22);
  }

  return v15 & 1;
}

uint64_t sub_10000EF4C()
{
  sub_100004DA4();
  v50 = v1;
  v51 = v2;
  v4 = v3;
  v6 = v5;
  v48 = v7;
  v8 = sub_1000228D4(&unk_10008F390, &qword_10006EED0);
  sub_100001D80(v8);
  sub_100003EC8();
  __chkstk_darwin(v9);
  v45 = v43 - v10;
  type metadata accessor for Date();
  sub_100001EDC();
  v47 = v11;
  __chkstk_darwin(v12);
  sub_100001EAC();
  v13 = type metadata accessor for CachedStorebag(0);
  sub_100001EDC();
  __chkstk_darwin(v14);
  sub_10000286C();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  v20 = v43 - v19;
  v21 = OBJC_IVAR____TtC13rtcreportingd13StorebagCache_cache;
  swift_beginAccess();
  v46 = v0;
  v44 = v21;
  if (!*(*(v0 + v21) + 16))
  {
    goto LABEL_10;
  }

  v43[1] = v6;
  v43[2] = v4;
  sub_100003BC0(v6, v4);
  if ((v22 & 1) == 0)
  {

LABEL_10:
    v41 = 1;
    v38 = v48;
    v26 = v13;
    return sub_1000026BC(v38, v41, 1, v26);
  }

  sub_10000525C();
  sub_10001B9E0(v23, v17, v24);

  v25 = v20;
  sub_10001C114(v17, v20);
  v26 = v13;
  static Date.now.getter();
  v27 = static Date.< infix(_:_:)();
  v28 = sub_100005BF0();
  v29(v28);
  if (v27)
  {
    if (qword_10008DDF8 != -1)
    {
      sub_1000020EC(&qword_10008DDF8);
    }

    v30 = type metadata accessor for Logger();
    sub_1000050E4(v30, qword_100095B38);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = sub_100004D20();
      v34 = sub_100004F18();
      v49 = v34;
      *v33 = 136446210;
      v35 = sub_100002820();
      *(v33 + 4) = sub_1000053A0(v35, v36, v37);
      _os_log_impl(&_mh_execute_header, v31, v32, "removing expired storebag %{public}s from memory cache", v33, 0xCu);
      sub_100005284(v34);
      sub_100001D1C(v34);
      sub_100001D1C(v33);
    }

    v38 = v48;
    sub_10000277C(v46 + v44, &v49);
    v39 = v45;
    sub_100002820();
    sub_100045688();
    sub_100005000(v39, &unk_10008F390, &qword_10006EED0);
    swift_endAccess();
    sub_1000099D0();
    sub_10001BA40(v25, v40);
    v41 = 1;
  }

  else
  {
    v38 = v48;
    sub_10001C114(v20, v48);
    v41 = 0;
  }

  return sub_1000026BC(v38, v41, 1, v26);
}

uint64_t sub_10000F2FC(uint64_t a1, uint64_t a2)
{

  v2._countAndFlagsBits = 0x7473696C702ELL;
  v2._object = 0xE600000000000000;
  String.append(_:)(v2);
  URL.appendingPathComponent(_:)();
}

uint64_t sub_10000F38C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_10000F4A8(&qword_10008E9A0, a2, type metadata accessor for StorebagCoordinator, &unk_10006E14C);
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_10000FD30;
  v6 = *(v2 + 16);

  return withCheckedContinuation<A>(isolation:function:_:)(v2 + 32, v3, v4, 0xD000000000000013, 0x8000000100071A00, sub_10000F970, v6, &type metadata for SessionConfiguration.Availability);
}

uint64_t sub_10000F4A8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000F518(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v19 = *(v7 - 8);
  v20 = v7;
  __chkstk_darwin(v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000228D4(&qword_10008E9A8, &qword_10006E178);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v18 - v12;
  v18[1] = *(a2 + 120);
  (*(v11 + 16))(v18 - v12, a1, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  (*(v11 + 32))(v15 + v14, v13, v10);
  aBlock[4] = sub_10000FC74;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000FCE0;
  aBlock[3] = &unk_100086EF8;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_10000F4A8(&qword_10008E738, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000228D4(&qword_10008E740, &qword_10006E180);
  sub_10000F978(&qword_10008E748, &qword_10008E740, &qword_10006E180);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v21 + 8))(v6, v4);
  (*(v19 + 8))(v9, v20);
}

uint64_t sub_10000F8AC()
{
  v1 = sub_1000228D4(&qword_10008E9A8, &qword_10006E178);
  sub_100001EDC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10000F978(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100025D78(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000F9CC()
{
  v0 = type metadata accessor for NWPath.Status();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v14[-v5];
  v7 = type metadata accessor for NWPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  NWPathMonitor.currentPath.getter();
  NWPath.status.getter();
  (*(v1 + 104))(v4, enum case for NWPath.Status.unsatisfied(_:), v0);
  v11 = static NWPath.Status.== infix(_:_:)();
  v12 = *(v1 + 8);
  v12(v4, v0);
  v12(v6, v0);
  if (v11 & 1) != 0 || (NWPath.isConstrained.getter())
  {
    v14[13] = 0;
    sub_1000228D4(&qword_10008E9A8, &qword_10006E178);
    CheckedContinuation.resume(returning:)();
    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    if (NWPath.isExpensive.getter())
    {
      v14[14] = 1;
    }

    else
    {
      v14[15] = 2;
    }

    sub_1000228D4(&qword_10008E9A8, &qword_10006E178);
    CheckedContinuation.resume(returning:)();
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_10000FC74()
{
  v0 = sub_1000228D4(&qword_10008E9A8, &qword_10006E178);
  sub_100001D80(v0);

  return sub_10000F9CC();
}

uint64_t sub_10000FCE0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10000FD30()
{
  sub_100004680();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_100001D58();
  *v3 = v2;

  return _swift_task_switch(sub_10000FE38, v1, 0);
}

uint64_t sub_10000FE50()
{
  sub_100004680();
  v2 = v1;
  sub_100003B0C();
  v3 = *v0;
  sub_1000043E4();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_10000FF3C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_10000FFAC(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_10000FFFC()
{
  sub_100004680();
  sub_100003B0C();
  sub_100009A8C();
  *v2 = v1;
  v3 = *v0;
  sub_1000043E4();
  *v4 = v3;
  *(v6 + 58) = v5;

  v7 = sub_100009A40();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000100F4()
{
  sub_100002624();
  if (*(v0 + 58) == 3)
  {
    v1 = *(v0 + 112);
LABEL_7:
    *(v0 + 88) = type metadata accessor for Session(0);
    *(v0 + 96) = &off_100088660;
    *(v0 + 64) = v1;

    swift_task_alloc();
    sub_100008D5C();
    *(v0 + 144) = v3;
    *v3 = v4;
    v5 = sub_100007C50(v3);

    return sub_10001AC0C(v5, v0 + 64);
  }

  v1 = *(v0 + 112);
  if (*(v1 + 240) == 1 || *(v0 + 57) != 0)
  {
    goto LABEL_7;
  }

  v7 = *(v0 + 104);
  *v7 = _swiftEmptyArrayStorage;
  *(v7 + 8) = _swiftEmptyArrayStorage;
  *(v7 + 16) = 1;
  *(v7 + 24) = 1701736302;
  *(v7 + 32) = 0xE400000000000000;
  *(v7 + 40) = 2;
  sub_100001D4C();

  return v8();
}

uint64_t sub_100010240(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100010288()
{

  return sub_100005C68();
}

uint64_t sub_1000102A0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000102E4, v1, 0);
}

uint64_t sub_1000102E4(uint64_t a1)
{
  v2 = *(*(v1 + 24) + 112);
  *(v1 + 32) = v2;
  return sub_100007C10(a1, v2);
}

uint64_t sub_100010300()
{
  sub_100002624();
  v2 = sub_100009400(0xD00000000000009BLL, 0x8000000100072EE0, v1);
  sub_1000103BC(v2, *(v0 + 16));

  v3 = *(v0 + 24);

  return _swift_task_switch(sub_100011090, v3, 0);
}

uint64_t sub_1000103BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  getTimeIntervalSince1970(Date:)();
  v6 = v5;
  sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006FE10;
  v9 = *(a2 + 112);
  v8 = *(a2 + 120);
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = &off_1000862B0;
  *(inited + 32) = v9;
  *(inited + 40) = v8;
  v10 = *(a2 + 240);
  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &off_100086250;
  *(inited + 72) = v10;
  v11 = *(a2 + 192);
  v12 = *(a2 + 200);
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = &off_1000862B0;
  *(inited + 112) = v11;
  *(inited + 120) = v12;
  v13 = *(a2 + 208);
  v14 = *(a2 + 216);
  *(inited + 176) = &type metadata for String;
  *(inited + 184) = &off_1000862B0;
  *(inited + 152) = v13;
  *(inited + 160) = v14;
  v15 = *(a2 + 224);
  v16 = *(a2 + 232);
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = &off_1000862B0;
  *(inited + 192) = v15;
  *(inited + 200) = v16;
  v17 = *(a2 + 128);
  *(inited + 256) = &type metadata for Double;
  *(inited + 264) = &off_100086290;
  *(inited + 232) = v17;
  *(inited + 296) = &type metadata for Int64;
  *(inited + 304) = &off_100086270;
  *(inited + 272) = v6;

  sub_100009524(inited);
  if (v3)
  {
    swift_setDeallocating();
    return sub_10000C4AC();
  }

  else
  {
    swift_setDeallocating();
    sub_10000C4AC();
    while (1)
    {
      result = sub_10000C50C();
      if (!result)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t sub_100010564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = *(v10 + 56);
  *v11 = *(v10 + 48);
  *(a10 + 8) = v13;
}

uint64_t sub_1000105B8(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t sub_1000105D8(uint64_t a2, ...)
{

  return String.hash(into:)();
}

uint64_t sub_1000105FC()
{
}

uint64_t sub_100010634(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v4;
  *(a1 + 32) = v1;
  *(a1 + 40) = v7;
  *(a1 + 48) = v2;
  *(a1 + 56) = v6;
  sub_1000096BC((v3 + 16), a1 + 64);
  *(a1 + 104) = v5;

  return swift_retain_n();
}

uint64_t sub_100010680()
{
  sub_100004680();
  sub_100005954(*(v0 + 80), *(v0 + 88));

  sub_100009B24();

  return v1();
}

uint64_t sub_1000106EC()
{
  sub_100004F30();
  sub_100002928();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 288) = v0;

  sub_100002794();

  return _swift_task_switch(v4, v5, v6);
}

__n128 sub_100010864()
{
  v3 = *(v0 + 208);
  result = *(v0 + 224);
  *(v1 + 16) = *(v0 + 192);
  *(v1 + 32) = v3;
  *(v1 + 48) = result;
  return result;
}

uint64_t sub_100010878()
{
  v2 = *(v0 + 184);
  if (*(v2 + 240) == 1)
  {
    *(v2 + OBJC_IVAR____TtC13rtcreportingd7Session_haveNonRealtimeEvents) = 1;
  }

  sub_100002624();
  sub_100061618();

  sub_100001D4C();

  return v3();
}

uint64_t sub_100010914()
{

  return swift_task_alloc();
}

uint64_t sub_10001092C()
{
  sub_100004680();
  sub_100003B0C();
  v2 = *(v1 + 88);
  v3 = *v0;
  sub_1000043E4();
  *v4 = v3;

  return _swift_task_switch(sub_100010A48, v2, 0);
}

uint64_t sub_100010A48()
{
  sub_100004680();
  swift_unknownObjectRelease();

  sub_100001D4C();

  return v0();
}

uint64_t sub_100010AC0()
{
  sub_100004680();
  sub_100003B0C();
  v1 = *v0;
  sub_1000043E4();
  *v2 = v1;

  v3 = sub_10000BE90();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100010BD4()
{
  sub_100004680();

  sub_100001D4C();

  return v0();
}

uint64_t sub_100010C30()
{
  sub_100004680();
  sub_100003B0C();
  v1 = *v0;
  sub_1000043E4();
  *v2 = v1;

  sub_100001D4C();

  return v3();
}

uint64_t sub_100010D10()
{
  sub_100004680();
  sub_100003B0C();
  v1 = *v0;
  sub_1000043E4();
  *v2 = v1;

  sub_100001D4C();

  return v3();
}

void getTimeIntervalSince1970(Date:)()
{
  Date.timeIntervalSince1970.getter();
  v1 = (*&v0 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v2 = v0 < 0.0 && ((*&v0 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v0 >= 0.0)
  {
    v1 = 0;
  }

  v3 = (*&v0 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v1;
  if ((*&v0 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v3 = 1;
  }

  if (((v3 | v2) & 1) == 0)
  {
    if (v0 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (v0 < 9.22337204e18)
    {
      return;
    }

    __break(1u);
  }
}

uint64_t sub_100010E9C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a2 < 0xFFFFFFFF80000000 || a3 < 0xFFFFFFFF80000000)
  {
    goto LABEL_11;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  result = sqlite3_bind_int(*(result + 16), a2, a3);
  if (result)
  {
    v6 = sub_100017598(result, v4, v5);
    v7 = sub_100004F00(&type metadata for SQLError, v6);
    sub_10000BE84(v7, v8);
    return sub_10001245C(v9, 18);
  }

  return result;
}

uint64_t sub_100010F50(uint64_t result, uint64_t a2, double a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = sqlite3_bind_double(*(result + 16), a2, a3);
  if (result)
  {
    v5 = sub_100017598(result, v3, v4);
    v6 = sub_100004F00(&type metadata for SQLError, v5);
    sub_10000BE84(v6, v7);
    return sub_10001245C(v8, 21);
  }

  return result;
}

uint64_t sub_100010FF0(uint64_t result, uint64_t a2, sqlite3_int64 a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = sqlite3_bind_int64(*(result + 16), a2, a3);
  if (result)
  {
    v5 = sub_100017598(result, v3, v4);
    v6 = sub_100004F00(&type metadata for SQLError, v5);
    sub_10000BE84(v6, v7);
    return sub_10001245C(v8, 20);
  }

  return result;
}

uint64_t sub_1000110B4(uint64_t a1)
{

  return sub_100002694(a1, 1, v1);
}

BOOL sub_1000110CC()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000110E4()
{

  return swift_task_create();
}

uint64_t sub_100011104()
{
}

uint64_t sub_10001111C()
{
  sub_100002624();
  v3 = v2;
  sub_100003B0C();
  v5 = v4;
  sub_100002928();
  *v6 = v5;
  v7 = *v1;
  sub_1000043E4();
  *v8 = v7;
  v5[35] = v3;
  v5[36] = v0;

  if (v0)
  {
    v9 = v5[32];
    v10 = sub_1000353C0;
  }

  else
  {

    v10 = sub_100011240;
    v9 = v3;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100011240()
{
  sub_100004680();
  *(v0 + 311) = sub_1000112B0() & 1;

  v1 = sub_10000BE90();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1000112D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100010548();
  if (*(v22 + 311) == 1)
  {
    sub_100013D4C(*(v22 + 160), *(v22 + 168), 1);
  }

  if (*(v22 + 224))
  {
    v24 = *(v22 + 280);
    v26 = *(v24 + 112);
    v25 = *(v24 + 120);
    *(v22 + 136) = 46;
    *(v22 + 144) = 0xE100000000000000;
    v27 = swift_task_alloc();
    *(v27 + 16) = v22 + 136;

    v29 = sub_100014A44(0x7FFFFFFFFFFFFFFFLL, 1, sub_10001F5FC, v27, v26, v25, v28);

    sub_100014F94(v29);
    sub_10003873C();

    if (!v25)
    {
      Substring.init(_:)();
      sub_10003873C();
    }

    v30 = *(v22 + 256);
    v32 = *(v22 + 216);
    v31 = *(v22 + 224);
    v33 = static String._fromSubstring(_:)();
    v23 = v34;
    sub_100008D90(v30 + 144, v22 + 64);
    v35 = *(v30 + 144);

    v36 = sub_100015060(v32, v31, v35);

    if (v36)
    {
    }

    else
    {
      sub_10000277C(v30 + 144, v22 + 88);
      swift_isUniquelyReferenced_nonNull_native();
      v83 = *(v30 + 144);
      sub_1000150B0();
      *(v30 + 144) = v83;
      swift_endAccess();
    }

    v37 = *(v22 + 216);
    v38 = *(v22 + 224);
    sub_10000277C(v30 + 144, v22 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v30 + 144);
    a10 = v40;
    *(v30 + 144) = 0x8000000000000000;
    v41 = sub_100003BC0(v37, v38);
    v43 = v40[2];
    v44 = (v42 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      __break(1u);
    }

    else
    {
      v37 = v41;
      v46 = v42;
      sub_1000228D4(&qword_10008EE08, &qword_10006E898);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v45))
      {
        v47 = sub_100003BC0(*(v22 + 216), *(v22 + 224));
        if ((v46 & 1) != (v48 & 1))
        {
          sub_100008E28();

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v37 = v47;
      }

      if (v46)
      {
        v51 = *(v40[7] + 8 * v37);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_18:
          v52 = *(v51 + 16);
          if (v52 >= *(v51 + 24) >> 1)
          {
            sub_100015194();
            v51 = v82;
          }

          v53 = *(v22 + 208);
          *(v51 + 16) = v52 + 1;
          v54 = (v51 + 24 * v52);
          v54[4] = v53;
          v54[5] = v33;
          v54[6] = v23;
          *(a10[7] + 8 * v37) = v51;
          *(v30 + 144) = a10;
          swift_endAccess();

          goto LABEL_21;
        }

LABEL_37:
        sub_100015194();
        v51 = v81;
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_21:
  if (*(*(v22 + 280) + 240) == 2)
  {
    v55 = *(v22 + 256);
    v56 = *(v55 + 152);
    if (!v56)
    {
      v23 = &unk_10008F000;
      if (byte_10008F120 == 1)
      {
        if (qword_10008DD40 == -1)
        {
LABEL_25:
          v57 = type metadata accessor for Logger();
          sub_10000B6D0(v57, qword_10008EC18);
          v58 = Logger.logObject.getter();
          v59 = static os_log_type_t.info.getter();
          if (sub_100003B24(v59))
          {
            v60 = sub_10001196C();
            sub_100009140(v60);
            sub_1000028B8();
            _os_log_impl(v61, v62, v63, v64, v65, 2u);
            sub_100003910();
          }

          v66 = *(v22 + 256);

          v23[288] = 0;
          *(v22 + 296) = *(v66 + 160);
          sub_100008E28();

          return _swift_task_switch(v67, v68, v69);
        }

LABEL_39:
        sub_10000986C();
        swift_once();
        goto LABEL_25;
      }
    }

    v71 = __OFADD__(v56, 1);
    v72 = v56 + 1;
    if (v71)
    {
      __break(1u);
      goto LABEL_39;
    }

    *(v55 + 152) = v72;
  }

  sub_10000FF74();
  sub_100008E28();

  return v75(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14);
}

void sub_100011728(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_10001179C()
{
  sub_100005284(*(v0 - 120));
}

uint64_t sub_1000117D4()
{
  sub_100004F30();
  v2 = *v1;
  sub_100001D58();
  *v4 = v3;
  v5 = *v1;
  sub_100001D58();
  *v6 = v5;
  *(v8 + 256) = v7;
  *(v8 + 264) = v0;

  v9 = *(v2 + 104);
  if (v0)
  {
    v10 = sub_10002D764;
  }

  else
  {
    v10 = sub_100011A30;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10001196C()
{

  return swift_slowAlloc();
}

BOOL sub_100011984()
{

  return sub_100015F14((v2 + 88), v0, v1);
}

void sub_1000119C4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100011A04(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v4;
  a1[2].n128_u64[1] = v3;
  a1[3].n128_u64[0] = v2;
}

uint64_t sub_100011A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100010548();
  a21 = v24;
  a22 = v25;
  sub_100003EBC();
  a20 = v22;
  if (*(v22 + 256))
  {

    sub_100004EA4();
    sub_100008E28();

    return _swift_task_switch(v26, v27, v28);
  }

  reply = xpc_dictionary_create_reply(*(v22 + 96));
  if (reply)
  {
    v31 = reply;
    if (qword_10008DD30 != -1)
    {
      sub_1000097DC(&qword_10008DD30);
    }

    v32 = type metadata accessor for Logger();
    sub_10000B6D0(v32, qword_10008E7B0);

    v33 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    if (sub_100005B24())
    {
      v34 = *(v22 + 104);
      v35 = sub_100004D20();
      sub_100004F18();
      sub_100005B3C();
      *v35 = 136446210;
      *(v35 + 4) = sub_1000053A0(*(v34 + 128), *(v34 + 136), &a11);
      sub_100003F48();
      _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
      sub_100005284(v23);
      sub_100001D1C(v23);
      sub_100004664();
    }

    v41 = *(v22 + 104);
    xpc_dictionary_set_BOOL(v31, "disabled", 1);
    v42 = *(v41 + 112);
    if (!v42)
    {
      __break(1u);
      return _swift_task_switch(v26, v27, v28);
    }

    v43 = *(v42 + 16);
    swift_unknownObjectRetain();

    xpc_connection_send_message(v43, v31);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_100001EF0();
  v54 = v44;

  sub_100001D4C();
  sub_100008E28();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, v54, a11, a12, a13, a14);
}

uint64_t sub_100011CA0(uint64_t a1)
{
}

void sub_100011CF0()
{
  *(v2 + 184) = v0;
  *(v0 + 16) = v1;
  *(v0 + 8 * v3 + 32) = v4;
}

uint64_t sub_100011D18(__n128 a1)
{
  a1.n128_f64[0] = *(v1 + 64);

  return Date.advanced(by:)(a1);
}

uint64_t sub_100011D40(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v6 = sub_100003BC0(a1, a2);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v6;
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000B7C8();
  sub_1000228D4(&qword_10008F368, &qword_10006EEB8);
  sub_100004D70();
  v9 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v3, v4);
  sub_100008DA8(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20);
  v17 = *(*(v3 + 56) + 8 * v8);
  type metadata accessor for Session(0);
  _NativeDictionary._delete(at:)();
  *v5 = v3;
  return v17;
}

uint64_t sub_100011DFC()
{
  sub_100004680();
  *(v0 + 314) = sub_1000112B0() & 1;
  v1 = sub_10000BE90();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_100011E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100010548();
  a21 = v23;
  a22 = v24;
  sub_100003EBC();
  a20 = v22;
  if ((*(v22 + 314) & 1) == 0)
  {
    v25 = *(v22 + 256);
    v26 = *(v22 + 104);
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    a11 = *(v26 + 152);
    sub_100012378();
    *(v26 + 152) = a11;
    swift_endAccess();
    sub_1000052D0();
    if (!v27)
    {
      sub_1000097DC(&qword_10008DD30);
    }

    v28 = *(v22 + 104);
    v29 = type metadata accessor for Logger();
    sub_10000B6D0(v29, qword_10008E7B0);

    v30 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    if (sub_100005B24())
    {
      v31 = *(v22 + 104);
      v32 = sub_1000175B0();
      sub_100005BFC();
      sub_100005B3C();
      *v32 = 136446466;
      v34 = *(v25 + 112);
      v33 = *(v25 + 120);

      v35 = sub_1000053A0(v34, v33, &a11);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2082;
      *(v32 + 14) = sub_1000053A0(*(v31 + 128), *(v31 + 136), &a11);
      sub_100003F48();
      _os_log_impl(v36, v37, v38, v39, v40, 0x16u);
      swift_arrayDestroy();
      sub_100001D1C(v28);
      sub_100004664();
    }
  }

  reply = xpc_dictionary_create_reply(*(v22 + 96));
  *(v22 + 272) = reply;
  if (!reply)
  {

    goto LABEL_16;
  }

  v42 = reply;
  v43 = *(v22 + 314);
  v44 = String.utf8CString.getter();
  xpc_dictionary_set_string(v42, "genID", (v44 + 32));

  if ((v43 & 1) == 0)
  {
    sub_100008E28();

    return _swift_task_switch(v60, v61, v62);
  }

  sub_1000052D0();
  if (!v27)
  {
    sub_1000097DC(&qword_10008DD30);
  }

  v45 = *(v22 + 104);
  v46 = type metadata accessor for Logger();
  sub_10000B6D0(v46, qword_10008E7B0);

  v47 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (sub_100005B24())
  {
    v48 = *(v22 + 104);
    v49 = sub_1000175B0();
    sub_100005BFC();
    sub_100005B3C();
    *v49 = 136446466;
    *(v49 + 4) = sub_1000053A0(*(v48 + 128), *(v48 + 136), &a11);
    *(v49 + 12) = 2082;

    v54 = sub_100002744(v50, v51, v52, v53);

    *(v49 + 14) = v54;
    sub_100003F48();
    _os_log_impl(v55, v56, v57, v58, v59, 0x16u);
    swift_arrayDestroy();
    sub_100001D1C(v45);
    sub_100004664();
  }

  xpc_dictionary_set_BOOL(v42, "disabled", 1);
  if (!*(*(v22 + 104) + 112))
  {
    __break(1u);
    return _swift_task_switch(v60, v61, v62);
  }

  sub_10002E93C();

  swift_unknownObjectRetain();

  v63 = sub_100004E98();
  xpc_connection_send_message(v63, v64);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_16:
  sub_100001EF0();
  v76 = v65;

  sub_100001D4C();
  sub_100008E28();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, v76, a11, a12, a13, a14);
}

uint64_t sub_1000122D8()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_100012328()
{
}

uint64_t sub_100012378()
{
  sub_1000054BC();
  sub_100002974(v2, v3, v4);
  sub_100009B4C();
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  sub_1000228D4(&qword_10008F368, &qword_10006EEB8);
  v10 = sub_100003CC0();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11))
  {
    v12 = sub_10000C6AC();
    sub_100003BC0(v12, v13);
    sub_100008EB0();
    if (!v15)
    {
      goto LABEL_14;
    }

    v8 = v14;
  }

  if (v9)
  {
    *(*(*v1 + 56) + 8 * v8) = v0;
    sub_10000CE54();
  }

  else
  {
    v18 = sub_10000BEFC();
    sub_100045ADC(v18, v19, v20, v21, v22);
    sub_10000CE54();
  }
}

uint64_t sub_10001245C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a1 + 8) = a2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(a1 + 16) = v2;

  return swift_willThrow();
}

uint64_t sub_1000124A8()
{

  return swift_allocObject();
}

uint64_t sub_100012508(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;
}

uint64_t sub_100012534(uint64_t a1)
{
  *(v2 + 80) = v1;
  *(v2 + 160) = a1;
  return sub_100007C10(a1, v1);
}

uint64_t sub_100012550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100010548();
  sub_100003EBC();
  v16 = *(v14 + 80);
  if (*(v16 + OBJC_IVAR____TtC13rtcreportingd7Session_haveNonRealtimeEvents) == 1 && (sub_100061658(), !v17) && (v18 = *(v16 + OBJC_IVAR____TtC13rtcreportingd7Session_realtimeBackend), (*(v14 + 88) = v18) != 0))
  {
    swift_unknownObjectRetain();
    v19 = swift_task_alloc();
    *(v14 + 96) = v19;
    *v19 = v14;
    v19[1] = sub_10005A4B4;
    sub_100008E28();

    return sub_10005EF44(v20, v21);
  }

  else
  {
    sub_100061658();
    if (!v17)
    {
      sub_100061554();
    }

    v41 = *(v14 + 160);
    sub_1000228D4(&qword_10008E4A0, &unk_100070080);
    sub_1000228D4(&qword_10008E4A8, &qword_10006D2D0);
    sub_100003F10();
    *(sub_100061564() + 16) = xmmword_10006D1D0;
    sub_100003CFC();
    sub_10001C494(v24);
    sub_1000615B0();
    swift_storeEnumTagMultiPayload();
    sub_10000FFD8();
    *v25 = v26;
    v25[1] = v15;
    *(v25 + v27) = 1;
    sub_1000615B0();
    swift_storeEnumTagMultiPayload();
    v28 = Dictionary.init(dictionaryLiteral:)();
    v29 = *(v16 + 160);
    v30 = *(v16 + 168);

    sub_1000128E8(v41, v29, v30);

    swift_isUniquelyReferenced_nonNull_native();
    sub_100007B80();
    sub_100061714(v31, v32, v33, v34, v35, v36);
    *(v14 + 112) = v28;
    v37 = swift_task_alloc();
    v38 = sub_10000B9C4(v37);
    *v38 = v39;
    sub_100003E48(v38);
    sub_100008E28();

    return sub_10000BA94();
  }
}

BOOL sub_1000127C4()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000127F0()
{
}

uint64_t sub_100012848()
{

  return swift_getObjectType();
}

uint64_t sub_100012868()
{
  sub_100004680();
  *(v0 + 280) = sub_100012A74();
  *(v0 + 288) = v1;
  v2 = sub_10000BE90();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1000128CC()
{
}

uint64_t sub_1000128E8(char a1, uint64_t a2, uint64_t a3)
{
  sub_1000228D4(&qword_10008E4A0, &unk_100070080);
  v6 = (sub_1000228D4(&qword_10008E4A8, &qword_10006D2D0) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10006D1D0;
  v10 = (v9 + v8);
  v11 = (v9 + v8 + v6[14]);
  *v10 = 0x67616265726F7453;
  v10[1] = 0xEF6E6F6973726556;
  *v11 = a2;
  v11[1] = a3;
  type metadata accessor for EventValue(0);
  sub_1000043C0(v11);
  v12 = (v10 + v7);
  v13 = v6[14];
  *v12 = 0xD000000000000013;
  v12[1] = 0x8000000100070E90;
  *(v12 + v13) = a1;
  swift_storeEnumTagMultiPayload();

  return Dictionary.init(dictionaryLiteral:)();
}

void *sub_100012A74()
{
  v1 = *(v0 + 152);
  v5 = *(v0 + 136);
  v6[0] = v1;
  *(v6 + 9) = *(v0 + 161);
  v7 = v5;
  v8 = v0[10];
  sub_100010288();
  sub_100010288();
  sub_100005CC0(&v8, &v4);
  v2 = sub_100012B2C();
  sub_100061764(&v7);
  sub_100061764(&v7 + 8);
  sub_10000D9BC(&v8);
  return v2;
}

void *sub_100012B2C()
{
  v82 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  __chkstk_darwin(v82);
  v3 = v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SessionConfiguration.Backend(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v81 = v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v8 = *(*v0 + 16);
  v78 = *v0;
  v79 = v8;
  v77[1] = v5;
  if (v8)
  {
    v83 = _swiftEmptyArrayStorage;
    sub_1000194D0(0, v8, 0);
    v9 = v83;
    v10 = v7 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    v12 = v8;
    do
    {
      v13 = v81;
      sub_100019638(v10, v81);
      sub_10004FC08(v13, v3);
      v1 = *&v3[*(v82 + 36)];

      sub_10001969C(v3);
      v83 = v9;
      v15 = v9[2];
      v14 = v9[3];
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        v17 = sub_1000051E0(v14);
        sub_1000194D0(v17, v15 + 1, 1);
        v9 = v83;
      }

      v9[2] = v16;
      v9[v15 + 4] = v1;
      v10 += v11;
      --v12;
    }

    while (v12);
    v7 = v78;
  }

  else
  {
    v16 = _swiftEmptyArrayStorage[2];
    v9 = _swiftEmptyArrayStorage;
  }

  v18 = 0;
  v83 = &_swiftEmptySetSingleton;
  while (v16 != v18)
  {
    if (v18 >= v9[2])
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
    }

    v19 = v18 + 1;

    sub_1000196F8(v20);
    v18 = v19;
  }

  v77[0] = v83;
  v21 = v79;
  v80 = _swiftEmptyArrayStorage;
  if (v79)
  {
    v83 = _swiftEmptyArrayStorage;
    v22 = &v83;
    sub_1000194D0(0, v79, 0);
    sub_1000044D4();
    v24 = v7 + v23;
    v26 = *(v25 + 72);
    do
    {
      v27 = v81;
      sub_100019638(v24, v81);
      sub_10004FC08(v27, v3);
      v28 = *&v3[*(v82 + 36)];

      sub_10001969C(v3);
      sub_100001DFC();
      if (v30)
      {
        v31 = sub_1000051E0(v29);
        sub_1000194D0(v31, v1, 1);
        v22 = v83;
      }

      v22[2] = v1;
      v22[v27 + 4] = v28;
      v24 += v26;
      --v21;
    }

    while (v21);
  }

  else
  {
    v1 = _swiftEmptyArrayStorage[2];
    v22 = _swiftEmptyArrayStorage;
  }

  v32 = 0;
  v33 = &_swiftEmptySetSingleton;
  while (v1 != v32)
  {
    if (v32 >= v22[2])
    {
      goto LABEL_48;
    }

    v34 = v33[32];
    v35 = v34 & 0x3F;
    v36 = ((1 << v34) + 63) >> 6;
    swift_bridgeObjectRetain_n();

    if (v35 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
    {
      __chkstk_darwin(isStackAllocationSafe);
      sub_100019D90(0, v36, v77 - ((8 * v36 + 15) & 0x3FFFFFFFFFFFFFF0));
      sub_1000039E8();
      v42 = sub_10001980C(v38, v39, v40, v41);
      if (v36)
      {
LABEL_50:

        swift_willThrow();

        __break(1u);
LABEL_51:

        result = sub_100007B04();
        __break(1u);
        return result;
      }

      v43 = v42;
    }

    else
    {
      swift_slowAlloc();

      sub_1000039E8();
      v48 = sub_100050394(v44, v45, v46, v47);
      if (v36)
      {
        goto LABEL_51;
      }

      v43 = v48;

      swift_bridgeObjectRelease_n();
      sub_100007B04();
    }

    v33 = v43;

    ++v32;
  }

  v49 = v79;
  if (v79)
  {
    v83 = _swiftEmptyArrayStorage;
    v50 = &v83;
    sub_1000194D0(0, v79, 0);
    sub_1000044D4();
    v52 = v78 + v51;
    v54 = *(v53 + 72);
    do
    {
      v55 = v81;
      sub_100019638(v52, v81);
      sub_10004FC08(v55, v3);
      v56 = *&v3[*(v82 + 40)];

      sub_10001969C(v3);
      sub_100001DFC();
      if (v30)
      {
        v58 = sub_1000051E0(v57);
        sub_1000194D0(v58, v1, 1);
        v50 = v83;
      }

      v50[2] = v1;
      v50[v55 + 4] = v56;
      v52 += v54;
      --v49;
    }

    while (v49);
    v80 = v50;
  }

  else
  {
    v1 = _swiftEmptyArrayStorage[2];
  }

  v59 = 0;
  v60 = &_swiftEmptySetSingleton;
  while (v1 != v59)
  {
    if (v59 >= v80[2])
    {
      goto LABEL_49;
    }

    v61 = v60[32];
    v62 = v61 & 0x3F;
    v63 = ((1 << v61) + 63) >> 6;
    swift_bridgeObjectRetain_n();

    if (v62 <= 0xD || (v64 = swift_stdlib_isStackAllocationSafe(), (v64 & 1) != 0))
    {
      __chkstk_darwin(v64);
      sub_100019D90(0, v63, v77 - ((8 * v63 + 15) & 0x3FFFFFFFFFFFFFF0));
      sub_1000039E8();
      v69 = sub_10001980C(v65, v66, v67, v68);
      if (v63)
      {
        goto LABEL_50;
      }

      v70 = v69;
    }

    else
    {
      swift_slowAlloc();

      sub_1000039E8();
      v75 = sub_100050394(v71, v72, v73, v74);
      if (v63)
      {
        goto LABEL_51;
      }

      v70 = v75;

      swift_bridgeObjectRelease_n();
      sub_100007B04();
    }

    v60 = v70;

    ++v59;
  }

  return sub_100013304(v33, v77[0], v60);
}

char *sub_100013250()
{

  return sub_100060CA4(0, v0, 0);
}

uint64_t sub_1000132BC(uint64_t a1)
{

  return sub_1000026BC(v1, 1, 1, a1);
}

unint64_t sub_1000132DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{
  v14 = a12;
  v15 = a13;

  return sub_1000053A0(v14, v15, &a11);
}

void *sub_100013304(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = *(a1 + 16);

  if (v5)
  {
    sub_10004E2BC(a2, a3);
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return a2;
}

void sub_100013370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_100010548();
  a21 = v23;
  a22 = v24;
  sub_100003EBC();
  a20 = v22;
  v25 = v22[35];
  if (*(v25 + 16))
  {
    v26 = v22[34];
    v27 = sub_10002C83C(v25);
    xpc_dictionary_set_value(v26, "allowed", v27);
    swift_unknownObjectRelease();
    sub_1000052D0();
    if (!v28)
    {
      sub_1000097DC(&qword_10008DD30);
    }

    v29 = v22[36];
    v30 = type metadata accessor for Logger();
    sub_10000B6D0(v30, qword_10008E7B0);

    v31 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();

    if (sub_100004CAC())
    {
      sub_1000175B0();
      a11 = sub_100008CF8();
      *v29 = 136446466;

      v36 = sub_100002744(v32, v33, v34, v35);

      *(v29 + 4) = v36;
      sub_100016718();

      Set.description.getter();

      v41 = sub_100002744(v37, v38, v39, v40);

      *(v29 + 14) = v41;
      sub_1000028B8();
      _os_log_impl(v42, v43, v44, v45, v46, 0x16u);
      swift_arrayDestroy();
      sub_100004664();
      sub_100003910();
    }
  }

  if (*(v22[36] + 16))
  {
    v47 = v22[34];
    v48 = sub_10002C83C(v22[36]);
    xpc_dictionary_set_value(v47, "denied", v48);
    swift_unknownObjectRelease();
    sub_1000052D0();
    if (!v28)
    {
      sub_1000097DC(&qword_10008DD30);
    }

    v49 = v22[36];
    v50 = type metadata accessor for Logger();
    sub_10000B6D0(v50, qword_10008E7B0);

    v51 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();

    if (sub_100004CAC())
    {
      v52 = v22[32];
      sub_1000175B0();
      a11 = sub_100008CF8();
      *v49 = 136446466;
      v53 = *(v52 + 112);
      v54 = *(v52 + 120);

      v55 = sub_1000053A0(v53, v54, &a11);

      *(v49 + 4) = v55;
      sub_100016718();

      Set.description.getter();

      v60 = sub_100002744(v56, v57, v58, v59);

      *(v49 + 14) = v60;
      sub_1000028B8();
      _os_log_impl(v61, v62, v63, v64, v65, 0x16u);
      swift_arrayDestroy();
      sub_100004664();
      sub_100003910();

      goto LABEL_15;
    }
  }

  else
  {
  }

LABEL_15:
  if (*(v22[13] + 112))
  {
    sub_10002E93C();

    swift_unknownObjectRetain();

    v66 = sub_100004E98();
    xpc_connection_send_message(v66, v67);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100001EF0();
    v77 = v68;

    sub_100001D4C();
    sub_100008E28();

    v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, v77, a11, a12, a13, a14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000137B4()
{
  sub_100004680();
  sub_100003B0C();
  v1 = *v0;
  sub_1000043E4();
  *v2 = v1;

  sub_1000614E8();

  return _swift_task_switch(v3, v4, v5);
}

void sub_1000138B0()
{
  *(*(v0 + 80) + OBJC_IVAR____TtC13rtcreportingd7Session_receivedEnd) = 1;
  v1 = qword_100095AD8;
  *(v0 + 128) = qword_100095AD8;
  if (v1)
  {
    sub_100002624();
    v2 = *(v0 + 80);

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = swift_task_alloc();
    *(v0 + 136) = v5;
    *v5 = v0;
    v5[1] = sub_100013BB4;
    v6 = *(v0 + 160);

    sub_100013990(v3, v4, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100013990(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 56) = a3;
  *(v4 + 16) = a1;
  return sub_100001F2C(sub_1000139B4, v3);
}

uint64_t sub_1000139B4(uint64_t a1)
{
  v2 = *(*(v1 + 32) + 112);
  *(v1 + 40) = v2;
  return sub_100007C10(a1, v2);
}

uint64_t sub_1000139D0()
{
  sub_100002624();
  sub_100001D10();
  v2 = sub_100007C28(66);
  v5 = sub_100009400(v2, v3, v4);
  if (v0)
  {
    *(v1 + 48) = v0;
    v6 = *(v1 + 32);
    v7 = sub_10003D52C;
  }

  else
  {
    sub_100013A88(v5, *(v1 + 56), *(v1 + 16), *(v1 + 24));

    v6 = *(v1 + 32);
    v7 = sub_100013BB0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100013A88(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006D1D0;
  *(inited + 56) = &type metadata for Int64;
  *(inited + 64) = &off_100086270;
  *(inited + 32) = a2 & 1;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = &off_1000862B0;
  *(inited + 72) = a3;
  *(inited + 80) = a4;

  sub_100009524(inited);
  if (v4)
  {
    swift_setDeallocating();
    return sub_10000C4AC();
  }

  else
  {
    swift_setDeallocating();
    sub_10000C4AC();
    while (1)
    {
      result = sub_10000C50C();
      if (!result)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t sub_100013BB4()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v5 = *v1;
  sub_1000043E4();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (v0)
  {
    v7 = *(v3 + 80);
    v8 = sub_10005AB18;
  }

  else
  {
    v9 = *(v3 + 80);

    v8 = sub_100013CC4;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100013CC4(uint64_t a1)
{
  v2 = *(*(v1 + 80) + 184);
  *(v1 + 152) = v2;
  return sub_100007C10(a1, v2);
}

uint64_t sub_100013CE0()
{
  sub_100004680();
  v1 = *(v0 + 80);
  sub_1000143FC(v1);

  return _swift_task_switch(sub_1000146F4, v1, 0);
}

void sub_100013D4C(Swift::Int a1, Swift::Int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  v10 = sub_100001D80(v9);
  __chkstk_darwin(v10);
  v12 = &v84 - v11;
  sub_100008D90((v3 + 15), v90);
  v13 = v3[15];

  v14 = sub_10000BEAC();
  v16 = sub_1000145CC(v14, v15, v13);
  v18 = v17;

  if (v18)
  {
    if (qword_10008DD40 != -1)
    {
      sub_10000986C();
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000FF58(v19, qword_10008EC18);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_7;
    }

    v22 = sub_100004D20();
    v23 = sub_100004F18();
    v89 = v23;
    *v22 = 136446210;
    v24 = sub_10000BEAC();
    *(v22 + 4) = sub_1000053A0(v24, v25, v26);
    _os_log_impl(&_mh_execute_header, v20, v21, "session config finished with no use count for %{public}s", v22, 0xCu);
    sub_100005284(v23);
    sub_100003D78();
    v27 = v22;
    goto LABEL_6;
  }

  v28 = v16 - 1;
  if (__OFSUB__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    v85 = v8;
    v86 = v12;
    --*(v4 + 64);
    if (qword_10008DD40 == -1)
    {
      goto LABEL_10;
    }
  }

  sub_10000986C();
  swift_once();
LABEL_10:
  v29 = type metadata accessor for Logger();
  sub_1000050E4(v29, qword_10008EC18);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v30, v31))
  {
    swift_slowAlloc();
    v32 = sub_100006FB8();
    v89 = v32;
    *v13 = 136446722;
    v33 = sub_10000BEAC();
    *(v13 + 4) = sub_1000053A0(v33, v34, v35);
    *(v13 + 12) = 2050;
    *(v13 + 14) = v28;
    *(v13 + 22) = 512;
    *(v13 + 24) = *(v4 + 64);

    _os_log_impl(&_mh_execute_header, v30, v31, "session config finished for %{public}s with %{public}lld uses remaining. Total Active Sessions: %hu", v13, 0x1Au);
    sub_100005284(v32);
    sub_100001D1C(v32);
    sub_100003D78();
  }

  else
  {
  }

  if (v28 <= 0)
  {
    swift_beginAccess();
    v36 = sub_10000BEAC();
    sub_100015D00(v36, v37);
    swift_endAccess();
    if (a3)
    {
      sub_100008D90((v4 + 17), &v89);
      v38 = v4[17];

      v39 = sub_10000BEAC();
      v41 = sub_100015DE0(v39, v40, v38);

      v20 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      v43 = os_log_type_enabled(v20, v42);
      if (v41)
      {
        if (!v43)
        {
          goto LABEL_7;
        }

        v44 = sub_100004D20();
        v45 = sub_100004F18();
        v87 = v45;
        *v44 = 136446210;
        v46 = sub_10000BEAC();
        *(v44 + 4) = sub_1000053A0(v46, v47, v48);
        _os_log_impl(&_mh_execute_header, v20, v42, "not evicting %{public}s: already running", v44, 0xCu);
        sub_100005284(v45);
        sub_100001D1C(v45);
        v27 = v44;
LABEL_6:
        sub_100001D1C(v27);
LABEL_7:

        return;
      }

      if (v43)
      {
        v64 = sub_100004D20();
        v65 = sub_100004F18();
        v87 = v65;
        *v64 = 136446210;
        v66 = sub_10000BEAC();
        *(v64 + 4) = sub_1000053A0(v66, v67, v68);
        _os_log_impl(&_mh_execute_header, v20, v42, "starting eviction timer for %{public}s", v64, 0xCu);
        sub_100005284(v65);
        sub_100003D78();
        sub_100001D1C(v64);
      }

      v69 = v85;
      sub_10000277C((v4 + 17), &v87);

      sub_100015F14(v88, a1, a2);
      swift_endAccess();

      type metadata accessor for TaskPriority();
      sub_1000058C8();
      sub_1000026BC(v70, v71, v72, v73);
      sub_100001F64();
      v77 = sub_100016084(v74, v75, v76, &unk_10006E838);
      sub_100005BAC();
      v78 = swift_allocObject();
      v78[2] = v4;
      v78[3] = v77;
      v78[4] = v4;
      v78[5] = a1;
      v78[6] = a2;
      v78[7] = v69;
      swift_retain_n();

      v79 = sub_100011CB8();
      sub_10005A254(v79, v80, v81, v82, v83);
    }

    else
    {
      type metadata accessor for TaskPriority();
      sub_1000058C8();
      sub_1000026BC(v49, v50, v51, v52);
      sub_100001F64();
      v56 = sub_100016084(v53, v54, v55, &unk_10006E838);
      sub_100005BAC();
      v57 = swift_allocObject();
      v57[2] = v4;
      v57[3] = v56;
      v57[4] = a1;
      v57[5] = a2;
      v58 = v85;
      v57[6] = v4;
      v57[7] = v58;
      swift_retain_n();

      v59 = sub_100011CB8();
      sub_10002D48C(v59, v60, v61, v62, v63);
    }
  }

  else
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v87 = v4[15];
    sub_100014624();
    v4[15] = v87;
    swift_endAccess();
  }
}

uint64_t sub_100014374()
{
  swift_unknownObjectRelease();

  sub_100005BAC();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000143B8()
{
  swift_unknownObjectRelease();

  sub_100005BAC();

  return _swift_deallocObject(v0, v1, v2);
}

void sub_1000143FC(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + OBJC_IVAR____TtC13rtcreportingd7Session_hierarchySessionID + 8);
  if (v4)
  {
    v5 = *(a1 + OBJC_IVAR____TtC13rtcreportingd7Session_hierarchySessionID);
    v6 = sub_100033B50(v23);
    v8 = sub_1000355A4(v22, v5, v4);
    if (*v7)
    {
      v9 = v7;

      v10 = sub_100038078(v9, a1);
      v11 = *(*v9 + 16);
      if (v11 < v10)
      {
        goto LABEL_14;
      }

      sub_10003A844(v10, v11);
      (v8)(v22, 0);
      (v6)(v23, 0);
    }

    else
    {
      (v8)(v22, 0);
      (v6)(v23, 0);
    }

    sub_100008D90(v2 + 144, v23);
    v12 = *(v2 + 144);

    v13 = sub_100009AEC();
    v15 = sub_100015060(v13, v14, v12);

    if (v15)
    {
      v16 = *(v15 + 16);

      if (!v16)
      {
        sub_10000277C(v2 + 144, v22);
        v17 = sub_100009AEC();
        sub_100045848(v17, v18);
        swift_endAccess();
      }
    }
  }

  if (*(a1 + 240) != 2)
  {
LABEL_12:
    sub_100013D4C(*(a1 + 192), *(a1 + 200), 1);
    return;
  }

  v19 = *(v2 + 152);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (!v20)
  {
    *(v2 + 152) = v21;
    goto LABEL_12;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_1000145CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100003BC0(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

void sub_100014624()
{
  sub_1000054BC();
  sub_100002974(v2, v3, v4);
  sub_100009B4C();
  if (v7)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  sub_1000228D4(&unk_10008F3A0, &qword_10006E890);
  v10 = sub_100003CC0();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11))
  {
    v12 = sub_10000C6AC();
    sub_100003BC0(v12, v13);
    sub_100008EB0();
    if (!v15)
    {
      goto LABEL_12;
    }

    v8 = v14;
  }

  if (v9)
  {
    *(*(*v1 + 56) + 8 * v8) = v0;
    sub_10000CE54();
  }

  else
  {
    v16 = sub_10000BEFC();
    sub_10000D044(v16, v17, v18, v19, v20);
    sub_10000CE54();
  }
}

uint64_t sub_100014714()
{
  sub_100004680();
  sub_100003B0C();
  v2 = *(v1 + 104);
  v3 = *v0;
  sub_1000043E4();
  *v4 = v3;

  return _swift_task_switch(sub_100014814, v2, 0);
}

uint64_t sub_100014814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100002760();
  sub_100002618();

  sub_100001EF0();
  v22 = v12;

  sub_100001D4C();
  sub_100008E44();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, v22, a10, a11, a12);
}

char *sub_1000148D0()
{

  v1 = OBJC_IVAR____TtC13rtcreportingd7Session_creation;
  type metadata accessor for Date();
  sub_100003C44();
  (*(v2 + 8))(v0 + v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100014A18()
{
  sub_1000148D0();

  return _swift_defaultActor_deallocate(v0);
}

void *sub_100014A44@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v50 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v31;
    v12 = v32;
    v13 = v33;

    sub_100014F64(0, 1, 1, _swiftEmptyArrayStorage);
    v14 = v34;
    v9 = *(v34 + 16);
    a7 = *(v34 + 24);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_38:
      *(v14 + 16) = v10;
      v38 = (v14 + 32 * v9);
      v38[4] = v7;
      v38[5] = v11;
      v38[6] = v12;
      v38[7] = v13;
      return v14;
    }

LABEL_41:
    sub_100014F64(a7 > 1, v10, 1, v14);
    v14 = v39;
    goto LABEL_38;
  }

  v7 = a4;
  v14 = 4 * v16;
  v48 = _swiftEmptyArrayStorage;
  v17 = 15;
  while (1)
  {
    v46 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if (v17 >> 14 == v14)
      {
        v17 = v46;
        goto LABEL_30;
      }

      v18 = String.subscript.getter();
      v12 = v19;
      v49[0] = v18;
      v49[1] = v19;
      v20 = v50(v49);
      if (v8)
      {

        return v14;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      v17 = String.index(after:)();
    }

    v23 = (v46 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v46 >> 14)
    {
      break;
    }

    v47 = String.subscript.getter();
    v42 = v25;
    v43 = v24;
    v41 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100014F64(0, v48[2] + 1, 1, v48);
      v48 = v29;
    }

    v13 = v48[2];
    v27 = v48[3];
    v12 = v13 + 1;
    if (v13 >= v27 >> 1)
    {
      sub_100014F64(v27 > 1, v13 + 1, 1, v48);
      v48 = v30;
    }

    v48[2] = v12;
    v28 = &v48[4 * v13];
    v28[4] = v47;
    v28[5] = v43;
    v28[6] = v42;
    v28[7] = v41;
LABEL_20:
    v17 = String.index(after:)();
    if ((v23 & 1) == 0 && v48[2] == a1)
    {
LABEL_30:
      if (v17 >> 14 == v14 && (a2 & 1) != 0)
      {

        return v48;
      }

      if (v14 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        v7 = String.subscript.getter();
        v11 = v35;
        v12 = v36;
        v13 = v37;

        v14 = v48;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v14 + 16);
          a7 = *(v14 + 24);
          goto LABEL_37;
        }
      }

      sub_100014F64(0, *(v14 + 16) + 1, 1, v14);
      v14 = v40;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100014DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void sub_100014E70(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_7;
  }

  sub_100001E9C();
  if (v12 == v13)
  {
LABEL_7:
    v14 = *(a4 + 16);
    if (v11 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      sub_1000228D4(a5, a6);
      v16 = swift_allocObject();
      v17 = j__malloc_size(v16);
      v16[2] = v14;
      v16[3] = 2 * ((v17 - 32) / 32);
      if (a1)
      {
LABEL_12:
        a8(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  sub_100003D10();
  if (!v12)
  {
    sub_100009798();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_100014F94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32 * v1);

  return v2;
}

void sub_100015018(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100015060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_100003BC0(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000150B0()
{
  sub_1000054BC();
  sub_100002974(v2, v3, v4);
  sub_100009B4C();
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  sub_1000228D4(&qword_10008EE08, &qword_10006E898);
  v10 = sub_100003CC0();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11))
  {
    v12 = sub_10000C6AC();
    sub_100003BC0(v12, v13);
    sub_100008EB0();
    if (!v15)
    {
      goto LABEL_14;
    }

    v8 = v14;
  }

  if (v9)
  {
    *(*(*v1 + 56) + 8 * v8) = v0;
    sub_10000CE54();
  }

  else
  {
    v18 = sub_10000BEFC();
    sub_10000D044(v18, v19, v20, v21, v22);
    sub_10000CE54();
  }
}

void sub_100015194()
{
  sub_100007BB0();
  if ((v3 & 1) == 0 || (sub_100001E9C(), v4 == v5))
  {
LABEL_6:
    sub_1000043B0();
    if (v2)
    {
      sub_1000228D4(&qword_10008E218, &qword_10006CC78);
      v6 = swift_allocObject();
      v7 = j__malloc_size(v6);
      sub_10000BBA0(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_10000511C();
        sub_10005FE74(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_100007A14();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_100003D10();
  if (!v4)
  {
    sub_100009798();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_100015480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100015260, 0, 0);
}

uint64_t sub_1000154A4()
{
  sub_100008E60();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = sub_100003900(v2);
  *v3 = v4;
  v5 = sub_1000043F4(v3);

  return sub_100015480(v5, v6, v7, v8, v9, v1);
}

uint64_t XPCConnection.__deallocating_deinit()
{
  XPCConnection.deinit();
  v0 = sub_100005274();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t XPCConnection.deinit()
{
  xpc_connection_cancel(*(v0 + 16));
  swift_unknownObjectRelease();
  sub_100015C94(v0 + 24);

  return v0;
}

uint64_t sub_1000155B4()
{
  v1 = *(v0 + 40);

  os_unfair_lock_lock(v1 + 6);
  sub_100015C78(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t *sub_100015624()
{
  v1 = *v0;
  v2 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  sub_100001D80(v2);
  sub_100003EC8();
  __chkstk_darwin(v3);
  v5 = &v12 - v4;
  swift_beginAccess();
  v6 = v0[19];
  v8 = v0[16];
  v7 = v0[17];
  v9 = type metadata accessor for TaskPriority();
  sub_1000026BC(v5, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v6;
  v10[5] = v8;
  v10[6] = v7;
  v10[7] = v1;

  sub_10002D48C(0, 0, v5, &unk_10006E0D0, v10);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100015798()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_100015814(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      type metadata accessor for Client();
      sub_100015CBC(&qword_10008E898, &unk_10006DFA0);
      do
      {
        v10 = dispatch thunk of Hashable._rawHashValue(seed:)() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_15:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100015A04(uint64_t a1)
{
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v16 = v1;
    type metadata accessor for Client();
    sub_100002044(&qword_10008E898);
    dispatch thunk of Hashable._rawHashValue(seed:)();
    sub_1000029D4();
    v8 = ~v7;
    while (1)
    {
      v9 = v6 & v8;
      if (((*(v2 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v8)) & 1) == 0)
      {
        break;
      }

      sub_100009938();
      sub_100015CBC(&unk_1000902A0, v10);

      v11 = Identifiable<>.id.getter();
      v12 = Identifiable<>.id.getter();

      if (v11 == v12)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = *v16;
        v17 = *v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10004F498();
          v14 = v17;
        }

        v5 = *(*(v14 + 48) + 8 * v9);
        sub_100015814(v9);
        *v16 = v17;
        return v5;
      }

      v6 = v9 + 1;
    }

    return 0;
  }

  if (v2 < 0)
  {
    v3 = *v1;
  }

  else
  {
    v3 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  v4 = __CocoaSet.contains(_:)();

  if ((v4 & 1) == 0)
  {

    return 0;
  }

  v5 = sub_10004FE8C(v3);

  return v5;
}

Swift::Int sub_100015BC4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  sub_100015ECC(&unk_1000902A0, v2, type metadata accessor for Client, &unk_10006DFE0);
  v3 = Identifiable<>.id.getter();
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_100015C4C()
{
  sub_100015624();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100015CBC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Client();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100015D00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_100003BC0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v2;
  v8 = *(*v2 + 24);
  sub_1000228D4(&unk_10008F3A0, &qword_10006E890);
  sub_100004D70();
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);

  v9 = *(*(v11 + 56) + 8 * v6);
  _NativeDictionary._delete(at:)();
  *v3 = v11;
  return v9;
}

BOOL sub_100015DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_100015ECC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_100015F14(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  sub_1000029D4();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v7 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v8 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v3;

  sub_1000160CC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v19;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_100016084(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}