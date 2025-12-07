unint64_t sub_1003DBAA0()
{
  v1 = [v0 participantUpdateType];
  if (v1 >= 5)
  {
    if (qword_1006A0B08 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000AF9C(v2, qword_1006BA598);
    v3 = v0;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      [v3 participantUpdateType];
      type metadata accessor for IDSGroupSessionMessageParticipantUpdateType(0);
      v8 = String.init<A>(reflecting:)();
      v10 = sub_10002741C(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Unknown participant update type: %s", v6, 0xCu);
      sub_100009B7C(v7);
    }

    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

id sub_1003DBC2C(void *a1)
{
  [a1 setAssociationVoucher:0];
  result = [a1 validationSource];
  if (result == 2)
  {

    return [a1 setValidationSource:0];
  }

  return result;
}

void *sub_1003DBCA0()
{
  v1 = v0;
  v2 = [v0 members];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1003DA670();
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v5 = [v1 lightweightMembers];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1003DA670();
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  sub_10041433C(v7);
  v8 = v4;
  v9 = [v1 message];
  if (v9 && (v10 = v9, v11 = [v9 addedMembers], v10, v11))
  {
    v12 = v11;
    v13 = sub_1003DA670();
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  sub_10041433C(v13);
  v14 = [v1 message];
  if (v14 && (v15 = v14, v16 = [v14 lightweightMembers], v15, v16))
  {
    v17 = v16;
    v18 = sub_1003DA670();
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  sub_10041433C(v18);
  v19 = [v1 message];
  if (v19 && (v20 = v19, v21 = [v19 removedMembers], v20, v21))
  {
    v22 = v21;
    v23 = sub_1003DA670();
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  sub_10041433C(v23);
  return v8;
}

void sub_1003DBED4(char a1, uint64_t a2, void *a3, void *a4, NSObject *a5)
{
  if (a1)
  {
    if (qword_1006A0B08 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000AF9C(v7, qword_1006BA598);
    v8 = a3;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v34 = v12;
      *v11 = 136315138;
      v13 = [v8 handle];
      v14 = [v13 value];

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = sub_10002741C(v15, v17, &v34);

      *(v11 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v9, v10, "Verified voucher on member %s.", v11, 0xCu);
      sub_100009B7C(v12);
    }

    goto LABEL_15;
  }

  if (qword_1006A0B08 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000AF9C(v20, qword_1006BA598);
  v21 = a4;
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v22, v23))
  {

    goto LABEL_14;
  }

  v24 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  *v24 = 136315394;
  v25 = [v21 handle];
  if (v25)
  {
    v26 = sub_1003DD56C(v25);
    if (v27)
    {
      v28 = v26;
      v29 = v27;

      v30 = sub_10002741C(v28, v29, &v34);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2080;
      swift_errorRetain();
      sub_10026D814(&unk_1006ABE80, &unk_100581F90);
      v31 = String.init<A>(describing:)();
      v33 = sub_10002741C(v31, v32, &v34);

      *(v24 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to validate verified voucher on member %s with error %s.", v24, 0x16u);
      swift_arrayDestroy();

LABEL_14:
      sub_1003DBC2C(v21);
LABEL_15:
      dispatch_group_leave(a5);
      return;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
}

void sub_1003DC280(uint64_t a1, void *a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_1006A0B08 != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    sub_10000AF9C(v75, qword_1006BA598);
    v76 = a2;
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v79 = 138412290;
      *(v79 + 4) = v76;
      *v80 = v76;
      v81 = v76;
      _os_log_impl(&_mh_execute_header, v77, v78, "Could not finish sanitization of %@. Self was deallocated", v79, 0xCu);
      sub_1000099A4(v80, &unk_1006A2630, &qword_10057CB40);
    }

    v82 = sub_1003DD498(v76, &selRef_data);
    v84 = v83;
    v74 = sub_1003DCE10(v82, v83);
    sub_100290B6C(v82, v84);
    a3(v74);
    goto LABEL_62;
  }

  v90 = a2;
  v93 = Strong;
  v91 = a3;
  v10 = sub_10000B6F4(a6);
  v11 = 0;
  v97 = a6 & 0xFFFFFFFFFFFFFF8;
  v98 = a6 & 0xC000000000000001;
  v95 = a6 + 32;
  v12 = a6;
LABEL_3:
  while (v11 != v10)
  {
    if (v98)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *(v97 + 16))
      {
        goto LABEL_65;
      }

      v13 = *(v95 + 8 * v11);
    }

    v14 = v13;
    if (__OFADD__(v11++, 1))
    {
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v16 = [v13 handle];
    if (!v16)
    {
LABEL_69:
      __break(1u);
      return;
    }

    v17 = v16;
    v18 = [v16 tuHandle];

    if (v18)
    {
      v19 = [v14 associationVoucher];
      if (!v19)
      {
        goto LABEL_26;
      }

      v20 = v19;
      v21 = [v19 tuVoucher];

      if (!v21)
      {
        goto LABEL_26;
      }

      v94 = v21;
      v22 = [v21 unsafeData];
      v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = objc_allocWithZone(CSDMessagingMemberAssociationClaim);
      v27 = sub_100290A00(v23, v25);
      if (!v27 || (v28 = v27, v29 = [v27 tuAssociationForHandle:v18], v28, !v29))
      {

        v18 = v94;
LABEL_26:

        goto LABEL_27;
      }

      v96 = v29;
      for (i = 0; ; ++i)
      {
        if (v10 == i)
        {
          sub_1003DBC2C(v14);

          goto LABEL_3;
        }

        if (v98)
        {
          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *(v97 + 16))
          {
            goto LABEL_66;
          }

          v31 = *(v12 + 8 * i + 32);
        }

        v32 = v31;
        if (__OFADD__(i, 1))
        {
          __break(1u);
          goto LABEL_64;
        }

        v33 = v12;
        v34 = [v31 handle];
        if (!v34)
        {
          __break(1u);
          goto LABEL_69;
        }

        v35 = v34;
        v36 = [v34 tuHandle];

        if (v36)
        {
          v37 = [v96 handle];
          v38 = [v37 isEqualToHandle:v36];

          if (v38)
          {
            break;
          }
        }

        v12 = v33;
      }

      v92 = [v14 tuConversationMember];
      if (v92)
      {
        v39 = [v32 tuConversationMember];
        v12 = v33;
        if (v39)
        {
          v40 = v39;
          if (sub_1003DD03C(v96, v92, v39))
          {
            v89 = v40;
            sub_1003DBC2C(v14);
            if (qword_1006A0B08 != -1)
            {
              swift_once();
            }

            v41 = type metadata accessor for Logger();
            sub_10000AF9C(v41, qword_1006BA598);
            v42 = v18;
            swift_errorRetain();
            v43 = Logger.logObject.getter();
            v44 = static os_log_type_t.error.getter();

            v87 = v44;
            if (os_log_type_enabled(v43, v44))
            {
              log = v43;
              v45 = swift_slowAlloc();
              v46 = swift_slowAlloc();
              v86 = swift_slowAlloc();
              *v45 = 138412546;
              *(v45 + 4) = v42;
              *v46 = v18;
              *(v45 + 12) = 2080;
              v99 = v86;
              v88 = v42;
              swift_errorRetain();
              sub_10026D814(&unk_1006ABE80, &unk_100581F90);
              v47 = String.init<A>(describing:)();
              v49 = sub_10002741C(v47, v48, &v99);

              *(v45 + 14) = v49;
              _os_log_impl(&_mh_execute_header, log, v87, "Failed to validate association for member: %@ with error: %s", v45, 0x16u);
              sub_1000099A4(v46, &unk_1006A2630, &qword_10057CB40);

              sub_100009B7C(v86);
            }

            else
            {
            }
          }

          else
          {
            [v14 setValidationSource:2];
          }
        }

        else
        {
          sub_1003DBC2C(v32);
          if (qword_1006A0B08 != -1)
          {
            swift_once();
          }

          v57 = type metadata accessor for Logger();
          sub_10000AF9C(v57, qword_1006BA598);
          v58 = v32;
          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            *v61 = 138412290;
            *(v61 + 4) = v58;
            *v62 = v58;
            v63 = v58;
            _os_log_impl(&_mh_execute_header, v59, v60, "Could not create TUConversationMember for other associated member: %@", v61, 0xCu);
            sub_1000099A4(v62, &unk_1006A2630, &qword_10057CB40);
            v12 = v33;
          }

          else
          {
          }
        }
      }

      else
      {
        sub_1003DBC2C(v14);
        if (qword_1006A0B08 != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        sub_10000AF9C(v50, qword_1006BA598);
        v51 = v14;
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *v54 = 138412290;
          *(v54 + 4) = v51;
          *v55 = v51;
          v56 = v51;
          _os_log_impl(&_mh_execute_header, v52, v53, "Could not create TUConversationMember for member: %@", v54, 0xCu);
          sub_1000099A4(v55, &unk_1006A2630, &qword_10057CB40);
        }

        else
        {
        }

        v12 = v33;
      }
    }

    else
    {
LABEL_27:
      [v14 setAssociationVoucher:{0, log}];
      if ([v14 validationSource] == 2)
      {
        [v14 setValidationSource:0];
      }
    }
  }

  if (qword_1006A0B08 == -1)
  {
    goto LABEL_54;
  }

LABEL_67:
  swift_once();
LABEL_54:
  v64 = type metadata accessor for Logger();
  sub_10000AF9C(v64, qword_1006BA598);
  v65 = v90;
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v68 = 138412290;
    *(v68 + 4) = v65;
    *v69 = v65;
    v70 = v65;
    _os_log_impl(&_mh_execute_header, v66, v67, "Finished sanitization of %@.", v68, 0xCu);
    sub_1000099A4(v69, &unk_1006A2630, &qword_10057CB40);
  }

  v71 = sub_1003DD498(v65, &selRef_data);
  v73 = v72;
  v74 = sub_1003DCE10(v71, v72);
  sub_100290B6C(v71, v73);
  v91(v74);

LABEL_62:
}

id sub_1003DCE10(uint64_t a1, unint64_t a2)
{
  v5 = [v2 dictionaryRepresentation];
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v14 = 0xD000000000000034;
  *(&v14 + 1) = 0x8000000100573DF0;
  AnyHashable.init<A>(_:)();
  if (a2 >> 60 == 15)
  {
    v14 = 0u;
    v15 = 0u;
    sub_1002EAE60(a1, a2);
    sub_1000099A4(&v14, &unk_1006A2D10, &unk_10057D940);
    v7 = sub_1000067D4();
    if (v8)
    {
      v9 = v7;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = v6[3];
      sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v11);
      sub_100006780(v6[6] + 40 * v9);
      sub_10003EBF0((v6[7] + 32 * v9), v13);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      memset(v13, 0, sizeof(v13));
    }

    sub_100006780(v16);
    sub_1000099A4(v13, &unk_1006A2D10, &unk_10057D940);
  }

  else
  {
    *(&v15 + 1) = &type metadata for Data;
    *&v14 = a1;
    *(&v14 + 1) = a2;
    sub_10003EBF0(&v14, v13);
    sub_1002EAE60(a1, a2);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100378C74(v13, v16);
    sub_100006780(v16);
  }

  sub_100006AF0(0, &qword_1006A9B90, IDSGroupSessionParticipantUpdate_ptr);
  return sub_1003DD404();
}

uint64_t sub_1003DD03C(void *a1, void *a2, id a3)
{
  v6 = [a3 association];
  if (v6)
  {
    v7 = v6;
    v8 = [a1 handle];
    v9 = [a3 handle];
    v10 = [v8 isEqualToHandle:v9];

    if (v10 && (v11 = [v7 handle], v12 = objc_msgSend(a2, "handle"), v13 = objc_msgSend(v11, "isEqualToHandle:", v12), v11, v12, v13))
    {
      v14 = [a1 handle];
      v15 = [v7 handle];
      v16 = [v14 isEqualToHandle:v15];

      if (v16)
      {
        sub_1003DD5E8();
        v18 = swift_allocError();
        v19 = 3;
      }

      else if (([a1 isPrimary] & 1) != 0 || objc_msgSend(v7, "isPrimary"))
      {
        if (([a2 isLightweightMember] & 1) == 0 || (objc_msgSend(a3, "isLightweightMember") & 1) == 0)
        {

          return 0;
        }

        sub_1003DD5E8();
        v18 = swift_allocError();
        v19 = 4;
      }

      else
      {
        sub_1003DD5E8();
        v18 = swift_allocError();
        v19 = 2;
      }
    }

    else
    {
      sub_1003DD5E8();
      v18 = swift_allocError();
      v19 = 1;
    }

    *v17 = v19;
  }

  else
  {
    sub_1003DD5E8();
    v18 = swift_allocError();
    *v20 = 0;
  }

  return v18;
}

id sub_1003DD404()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithDictionaryRepresentation:isa];

  return v2;
}

uint64_t sub_1003DD498(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_1003DD508(void *a1)
{
  v1 = [a1 conversationGroupUUIDString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1003DD56C(void *a1)
{
  v2 = [a1 value];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_1003DD5E8()
{
  result = qword_1006A9B88;
  if (!qword_1006A9B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A9B88);
  }

  return result;
}

id sub_1003DD63C(uint64_t a1, uint64_t a2, char *a3)
{
  v19 = a1;
  v20 = a2;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v16 = *(v4 - 8);
  v17 = v4;
  __chkstk_darwin(v4);
  v15 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  if (qword_1006A0B08 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000AF9C(v8, qword_1006BA598);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Initializing ParticipantUpdateSanitizer.", v11, 2u);
  }

  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_10000F0C0(&qword_1006A0CB0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100018040(&qword_1006A0CC0, &qword_1006A31B0, &unk_10057E920);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v16 + 104))(v15, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  *&a3[OBJC_IVAR___CSDParticipantUpdateSanitizerImpl_completionQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = v20;
  *&a3[OBJC_IVAR___CSDParticipantUpdateSanitizerImpl_vouchingEnablement] = v19;
  *&a3[OBJC_IVAR___CSDParticipantUpdateSanitizerImpl_voucherManager] = v12;
  v21.receiver = a3;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, "init");
}

_BYTE *storeEnumTagSinglePayload for ParticipantUpdateSanitizerError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1003DDA84()
{
  result = qword_1006A9B98;
  if (!qword_1006A9B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A9B98);
  }

  return result;
}

unint64_t sub_1003DDAD8()
{
  result = qword_1006A9BA0;
  if (!qword_1006A9BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A9BA0);
  }

  return result;
}

uint64_t sub_1003DDB60()
{
  sub_100006810();
  v1 = type metadata accessor for _AppExtensionProcess();
  v0[13] = v1;
  sub_100005EB4(v1);
  v0[14] = v2;
  v0[15] = sub_100005E9C();
  v3 = type metadata accessor for _AppExtensionProcess.Configuration();
  v0[16] = v3;
  sub_100005EB4(v3);
  v0[17] = v4;
  v0[18] = swift_task_alloc();
  v0[19] = swift_task_alloc();
  sub_10026D814(&qword_1006A9C58, &qword_100585CE0);
  v5 = sub_100005E9C();
  v0[20] = v5;
  v6 = type metadata accessor for _AppExtensionIdentity();
  v0[21] = v6;
  sub_100005EB4(v6);
  v0[22] = v7;
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  swift_task_alloc();
  sub_100016070();
  v0[26] = v8;
  *v8 = v9;
  v8[1] = sub_1003DDD38;

  return sub_1003DE6E0(v5);
}

uint64_t sub_1003DDD38()
{
  sub_100006810();
  sub_100005F18();
  sub_10000A5B0();
  *v3 = v2;
  v4 = *v1;
  sub_100008060();
  *v5 = v4;
  *(v6 + 216) = v0;

  sub_100007BBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1003DDE30()
{
  v43 = v0;
  v2 = v0[20];
  v1 = v0[21];
  if (sub_100015468(v2, 1, v1) == 1)
  {
    sub_1003DF734(v2);
    if (qword_1006A0B40 != -1)
    {
      sub_1000087BC();
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000AF9C(v3, qword_1006BA640);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "No conversation recording extension found", v6, 2u);
      sub_100009ED0();
    }

    sub_1003DF79C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    sub_10000EB1C();

    sub_100009EF4();
    sub_100011274();

    __asm { BRAA            X1, X16 }
  }

  (*(v0[22] + 32))(v0[25], v2, v1);
  if (qword_1006A0B40 != -1)
  {
    sub_1000087BC();
    swift_once();
  }

  v10 = v0[24];
  v11 = v0[25];
  v12 = v0[21];
  v13 = v0[22];
  v14 = type metadata accessor for Logger();
  sub_10000AF9C(v14, qword_1006BA640);
  v15 = *(v13 + 16);
  v15(v10, v11, v12);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[24];
  if (v18)
  {
    v40 = v17;
    v20 = v0[22];
    v21 = v0[23];
    v22 = v0[21];
    v23 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = v39;
    *v23 = 136315138;
    v15(v21, v19, v22);
    v24 = String.init<A>(reflecting:)();
    v41 = v15;
    v26 = v25;
    v27 = *(v20 + 8);
    v27(v19, v22);
    v28 = sub_10002741C(v24, v26, &v42);
    v15 = v41;

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v16, v40, "Extension found! %s", v23, 0xCu);
    sub_100009B7C(v39);
    sub_100009ED0();

    sub_100009ED0();
  }

  else
  {
    v29 = v0[21];
    v30 = v0[22];

    v27 = *(v30 + 8);
    v27(v19, v29);
  }

  v0[28] = v27;
  v32 = v0[18];
  v31 = v0[19];
  v33 = v0[16];
  v34 = v0[17];
  v15(v0[23], v0[25], v0[21]);
  _AppExtensionProcess.Configuration.init(appExtension:onInterruption:)();
  (*(v34 + 16))(v32, v31, v33);
  swift_task_alloc();
  sub_100016070();
  v0[29] = v35;
  *v35 = v36;
  v35[1] = sub_1003DE260;
  sub_100011274();

  return _AppExtensionProcess.init(configuration:)();
}

uint64_t sub_1003DE260()
{
  sub_100006810();
  sub_100005F18();
  sub_10000A5B0();
  *v3 = v2;
  v4 = *v1;
  sub_100008060();
  *v5 = v4;
  *(v6 + 240) = v0;

  sub_100007BBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1003DE358()
{
  v1.super.isa = _AppExtensionProcess.makeXPCConnection()().super.isa;
  if (v2.super.isa)
  {

    return _swift_unexpectedError(v2.super.isa, "callservicesd/RecordingExtensionConnection.swift", 48, 1, 38);
  }

  else
  {
    isa = v1.super.isa;
    v4 = v0[25];
    v18 = v0[28];
    v17 = v0[21];
    v5 = v0[19];
    v6 = v0[17];
    v16 = v0[16];
    v7 = v0[14];
    v8 = v0[15];
    v9 = v0[13];
    v10 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP20LiveCommunicationKit41ConversationRecordingExtensionXPCProtocol_];
    [(objc_class *)isa setRemoteObjectInterface:v10];

    [(objc_class *)isa resume];
    v0[6] = ScreenSharingActivityManager.carPlayDidDisconnect();
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1003DEEE4;
    v0[5] = &unk_10062DCE8;
    v11 = _Block_copy(v0 + 2);
    v12 = [(objc_class *)isa synchronousRemoteObjectProxyWithErrorHandler:v11];
    _Block_release(v11);
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    (*(v7 + 8))(v8, v9);
    (*(v6 + 8))(v5, v16);
    v18(v4, v17);
    sub_10026D814(&qword_1006A9C68, &unk_100585CF0);
    swift_dynamicCast();
    v13 = v0[12];

    v14 = v0[1];

    return v14(v13);
  }
}

uint64_t sub_1003DE620()
{
  sub_10000EB1C();

  sub_100009EF4();

  return v0();
}

uint64_t sub_1003DE6E0(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for _AppExtensionIdentity();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for _AppExtensionQuery.Results.AsyncIterator();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v4 = type metadata accessor for _AppExtensionQuery.Results();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  v5 = type metadata accessor for _AppExtensionQuery();
  v1[14] = v5;
  v1[15] = *(v5 - 8);
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_1003DE8B4, 0, 0);
}

uint64_t sub_1003DE8B4()
{
  extensionPointName.getter();
  _AppExtensionQuery.init(extensionPointIdentifier:)();
  _AppExtensionQuery.results.getter();
  _AppExtensionQuery.Results.makeAsyncIterator()();
  sub_1003DF808();
  swift_task_alloc();
  sub_100016070();
  *(v0 + 136) = v1;
  *v1 = v2;
  v3 = sub_10000A3EC(v1);

  return dispatch thunk of AsyncIteratorProtocol.next()(v3);
}

uint64_t sub_1003DE964()
{
  sub_100006810();
  sub_100005F18();
  sub_10000A5B0();
  *v3 = v2;
  v4 = *v1;
  sub_100008060();
  *v5 = v4;
  *(v6 + 144) = v0;

  sub_100007BBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1003DEA5C()
{
  *(v0 + 152) = *(v0 + 16);
  sub_100007BBC();
  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1003DEA8C(uint64_t a1)
{
  v2 = v1[19];
  if (!v2)
  {
    v16 = v1[15];
    v15 = v1[16];
    v18 = v1[13];
    v17 = v1[14];
    v19 = v1[11];
    v20 = v1[12];
    (*(v1[9] + 8))(v1[10], v1[8]);
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    v21 = 1;
    goto LABEL_19;
  }

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(v1[6] + 80);
    v6 = v2 + ((v5 + 32) & ~v5);
    while (v4 < *(v2 + 16))
    {
      (*(v1[6] + 16))(v1[7], v6 + *(v1[6] + 72) * v4, v1[5]);
      v7 = _AppExtensionIdentity.containingApplicationRecord.getter();
      if (v7)
      {
        v8 = sub_100021AEC(v7);
        if (v9)
        {
          if (v8 == 0xD000000000000015 && v9 == 0x8000000100561020)
          {

LABEL_18:
            v22 = v1[15];
            v23 = v1[13];
            v36 = v1[14];
            v37 = v1[16];
            v24 = v1[11];
            v25 = v1[12];
            v27 = v1[9];
            v26 = v1[10];
            v28 = v1[8];
            v29 = v1[6];
            v34 = v1[5];
            v35 = v1[7];
            v33 = v1[4];

            (*(v27 + 8))(v26, v28);
            (*(v25 + 8))(v23, v24);
            (*(v22 + 8))(v37, v36);
            (*(v29 + 32))(v33, v35, v34);
            v21 = 0;
LABEL_19:
            sub_10000AF74(v1[4], v21, 1, v1[5]);

            sub_100009EF4();
            sub_100011274();

            __asm { BRAA            X1, X16 }
          }

          v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v11)
          {
            goto LABEL_18;
          }
        }
      }

      ++v4;
      a1 = (*(v1[6] + 8))(v1[7], v1[5]);
      if (v3 == v4)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    sub_1003DF808();
    swift_task_alloc();
    sub_100016070();
    v1[17] = v12;
    *v12 = v13;
    sub_10000A3EC(v12);
    sub_100011274();
  }

  return dispatch thunk of AsyncIteratorProtocol.next()(a1);
}

uint64_t sub_1003DED70()
{
  sub_100006810();
  *(v0 + 24) = *(v0 + 144);
  sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
  swift_willThrowTypedImpl();
  sub_100007BBC();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1003DEDFC()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  sub_100009EF4();

  return v7();
}

void sub_1003DEEE4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1003DEF4C(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for _ConversationRecordingContext();
  sub_100007FEC();
  __chkstk_darwin(v6);
  (*(v8 + 16))(v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v9 = objc_allocWithZone(type metadata accessor for XPCWrapper());
  sub_1003DF6F0(&qword_1006A9C48, &protocol conformance descriptor for _ConversationRecordingContext);
  sub_1003DF6F0(&qword_1006A9C50, &protocol conformance descriptor for _ConversationRecordingContext);
  v10 = XPCWrapper.init<A>(wrapped:)();
  if (v2)
  {
    if (qword_1006A0B40 != -1)
    {
      sub_1000087BC();
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000AF9C(v11, qword_1006BA640);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      v20[1] = v2;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v16 = String.init<A>(reflecting:)();
      v18 = sub_10002741C(v16, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Error creating XPC Wrapper %s", v14, 0xCu);
      sub_100009B7C(v15);
      sub_100009ED0();

      sub_100009ED0();
    }

    swift_willThrow();
  }

  else
  {
    v19 = v10;
    [a2 conversationRecordingStartedWithContext:v10];
  }
}

uint64_t sub_1003DF1D4()
{
  sub_100006810();
  v0[19] = v1;
  v0[20] = v2;
  v0[18] = v3;
  v4 = type metadata accessor for URL();
  v0[21] = v4;
  sub_100005EB4(v4);
  v0[22] = v5;
  v0[23] = sub_100005E9C();
  sub_100007BBC();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1003DF280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  (*(v12[22] + 16))(v12[23], v12[18], v12[21], a4, a5, a6, a7, a8);
  v13 = objc_allocWithZone(type metadata accessor for SandboxExtendedURL());
  v14 = SandboxExtendedURL.init(url:)();
  v12[24] = v14;
  type metadata accessor for _ConversationRecordingContext();
  sub_100007FEC();
  v16 = v15;
  sub_100005E9C();
  (*(v16 + 16))();
  v17 = objc_allocWithZone(type metadata accessor for XPCWrapper());
  sub_1003DF6F0(&qword_1006A9C48, &protocol conformance descriptor for _ConversationRecordingContext);
  sub_1003DF6F0(&qword_1006A9C50, &protocol conformance descriptor for _ConversationRecordingContext);
  v18 = XPCWrapper.init<A>(wrapped:)();
  v12[25] = v18;
  v19 = v18;
  v20 = v12[20];

  v12[2] = v12;
  v12[3] = sub_1003DF50C;
  v21 = swift_continuation_init();
  v12[17] = sub_10026D814(&unk_1006A6330, &unk_10057D160);
  v12[10] = _NSConcreteStackBlock;
  v12[11] = 1107296256;
  v12[12] = sub_1003432B0;
  v12[13] = &unk_10062DCC0;
  v12[14] = v21;
  [v20 conversationRecordingEndedWithUrl:v14 context:v19 completionHandler:v12 + 10];

  return _swift_continuation_await(v12 + 2, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_1003DF50C()
{
  sub_100006810();
  sub_100005F18();
  sub_10000A5B0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  sub_100007BBC();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1003DF608()
{
  sub_100006810();
  v1 = *(v0 + 200);

  sub_100009EF4();

  return v2();
}

uint64_t sub_1003DF674(uint64_t a1)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 192);
  swift_willThrow();

  sub_100009EF4();

  return v4();
}

uint64_t sub_1003DF6F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _ConversationRecordingContext();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003DF734(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006A9C58, &qword_100585CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003DF79C()
{
  result = qword_1006A9C60;
  if (!qword_1006A9C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A9C60);
  }

  return result;
}

uint64_t sub_1003DF7F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1003DF808()
{
  result = qword_1006A9C70;
  if (!qword_1006A9C70)
  {
    type metadata accessor for _AppExtensionQuery.Results.AsyncIterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A9C70);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RecordingExtensionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1003DF940()
{
  result = qword_1006A9C78;
  if (!qword_1006A9C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A9C78);
  }

  return result;
}

uint64_t sub_1003DF994@<X0>(uint64_t a1@<X8>)
{
  sub_1003F7AA0(v1);
  if (v3 >> 60 == 15)
  {
    v4 = type metadata accessor for ConversationLinkKeyAgreement(0);

    return sub_10000AF74(a1, 1, 1, v4);
  }

  else
  {

    return sub_10039D050(a1);
  }
}

uint64_t sub_1003DFA5C()
{
  v1 = *(v0 + OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_identifier);

  return v1;
}

uint64_t sub_1003DFB08(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_identifier);
  *v3 = a1;
  v3[1] = a2;
}

id sub_1003DFB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_identifier];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_version] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for GeneratorDescriptor();
  return objc_msgSendSuper2(&v6, "init");
}

BOOL sub_1003DFC14(uint64_t a1)
{
  sub_1002A21FC(a1, v7);
  if (v8)
  {
    type metadata accessor for GeneratorDescriptor();
    if (swift_dynamicCast())
    {
      v2 = *(v1 + OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_identifier) == *&v6[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_identifier] && *(v1 + OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_identifier + 8) == *&v6[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_identifier + 8];
      if (v2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v3 = *(v1 + OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_version);
        v4 = *&v6[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_version];

        return v3 == v4;
      }
    }
  }

  else
  {
    sub_10004975C(v7);
  }

  return 0;
}

Swift::Int sub_1003DFD8C()
{
  Hasher.init()();

  String.hash(into:)();

  Hasher._combine(_:)(*(v0 + OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_version));
  return Hasher.finalize()();
}

id sub_1003DFE4C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GeneratorDescriptor();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1003DFEB8()
{
  v0 = [objc_allocWithZone(type metadata accessor for CallCenterObserver()) init];
  v1 = [objc_allocWithZone(CSDTTYProviderObserver) init];
  v2 = [objc_opt_self() sharedAudioSystemController];
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  v5 = [result deviceType];

  v6 = sub_10002EAD0();
  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 queue];

  result = [objc_opt_self() sharedInstance];
  if (!v2)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v9 = result;
  v46 = v5 == 7;
  v10 = objc_allocWithZone(TUFeatureFlags);
  v11 = v2;
  v12 = [v10 init];
  v13 = [objc_allocWithZone(TUConfigurationProvider) init];
  v14 = swift_allocObject();
  v55[3] = sub_100006AF0(0, &qword_1006AA390, TUAudioSystemController_ptr);
  v55[4] = &off_100627548;
  v55[0] = v11;
  type metadata accessor for Date();
  sub_100007928();
  sub_10000AF74(v15, v16, v17, v18);
  v19 = v14 + OBJC_IVAR____TtC13callservicesd13AudioResolver_lastPlayedSoundType;
  *v19 = 0;
  *(v19 + 8) = 1;
  type metadata accessor for AudioDescriptor(0);
  sub_100007928();
  sub_10000AF74(v20, v21, v22, v23);
  v24 = (v14 + OBJC_IVAR____TtC13callservicesd13AudioResolver_resolutionChangedHandler);
  *v24 = 0;
  v24[1] = 0;
  *(v14 + 24) = v0;
  *(v14 + 32) = v1;
  *(v14 + 88) = v6 & 1;
  *(v14 + 96) = v12;
  *(v14 + 16) = v8;
  sub_100009AB0(v55, v14 + 40);
  *(v14 + 80) = v9;
  *(v14 + OBJC_IVAR____TtC13callservicesd13AudioResolver_configurationProvider) = v13;
  type metadata accessor for SoundDescriptorActionResolver();
  v25 = swift_allocObject();
  sub_100006AF0(0, &qword_1006A9E90, AVAudioPlayer_ptr);
  sub_10038532C();
  v26 = v0;
  v27 = v13;
  v28 = v26;
  v29 = v27;
  v48 = v1;
  v30 = v12;
  v47 = v8;
  v31 = Dictionary.init(dictionaryLiteral:)();
  *(v25 + 40) = v29;
  *(v25 + 48) = v31;
  *(v25 + 16) = v28;
  *(v25 + 24) = v46;
  *(v25 + 32) = v30;
  *(v14 + OBJC_IVAR____TtC13callservicesd13AudioResolver_soundDescriptorActionResolver) = v25;
  type metadata accessor for HapticDescriptorResolver();
  v32 = swift_allocObject();
  v33 = v29;
  v34 = sub_1003E0B04(v28, 0, v33, v32);
  v35 = 0;
  *(v14 + OBJC_IVAR____TtC13callservicesd13AudioResolver_hapticDescriptorResolver) = v34;
  v36 = &stru_100000020;
  do
  {
    v37 = *(&off_1006209E0 + v36);
    if ((v37 & ~v35) == 0)
    {
      v37 = 0;
    }

    v35 |= v37;
    v36 += 8;
  }

  while (v36 != 240);
  [*(v14 + 24) setTriggers:v35];
  v38 = *(v14 + 24);
  [v38 setTriggers:{objc_msgSend(v38, "triggers") | 0x40000000}];
  [v38 setTriggers:sub_100015B70() | 0xFFFFFFFF80000000];
  [v38 setTriggers:sub_100015B70() | 0xFFFFFFFF80000000];
  [v38 setTriggers:sub_100015B70() | 0x600000];
  v39 = [objc_opt_self() defaultCenter];
  v40 = swift_allocObject();
  swift_weakInit();
  v53 = sub_1003E0DC0;
  v54 = v40;
  aBlock = _NSConcreteStackBlock;
  v50 = 1107296256;
  v51 = sub_1000165EC;
  v52 = &unk_10062DE30;
  v41 = _Block_copy(&aBlock);

  v42 = [v39 addObserverForName:@"CSDRouteManagerRoutesChangedNotification" object:0 queue:0 usingBlock:v41];
  _Block_release(v41);
  swift_unknownObjectRelease();

  v43 = *(v14 + 24);
  v44 = swift_allocObject();
  swift_weakInit();

  v53 = sub_1003E0DC8;
  v54 = v44;
  aBlock = _NSConcreteStackBlock;
  v50 = 1107296256;
  v51 = sub_100028100;
  v52 = &unk_10062DE58;
  v45 = _Block_copy(&aBlock);

  [v43 setCallChanged:v45];
  _Block_release(v45);

  sub_100009B7C(v55);
  return v14;
}

uint64_t sub_1003E049C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = sub_100010B20(result);
    v4 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("AudioResolver: refreshing resolution due to CSDRouteManagerRoutesChangedNotification", 84, 2, &_mh_execute_header, v3, v4, _swiftEmptyArrayStorage);

    sub_1000166CC(0);
  }

  return result;
}

uint64_t sub_1003E053C(void *a1, const char *a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = *(result + 16);
    *v8 = v10;
    (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
    v11 = v10;
    LOBYTE(v10) = _dispatchPreconditionTest(_:)();
    result = (*(v6 + 8))(v8, v5);
    if (v10)
    {
      v12 = a1;
      sub_100016A64(a1, a2, 0);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

BOOL sub_1003E06B0(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0 && a3 == a1)
  {
    return 1;
  }

  if (a3 == 17)
  {
    return (a2 & 1) == 0 && a1 == 13;
  }

  return a3 == 13 && (a2 & 1) == 0 && a1 == 17;
}

uint64_t sub_1003E06F8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100009B7C((v0 + 40));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100009A04(v0 + OBJC_IVAR____TtC13callservicesd13AudioResolver_lastPlayedSoundDate, &qword_1006A3C70, &unk_10057EA80);

  sub_100009A04(v0 + OBJC_IVAR____TtC13callservicesd13AudioResolver_resolvedDescriptor, &unk_1006A2BF0, &unk_100585F10);
  sub_1000051F8(*(v0 + OBJC_IVAR____TtC13callservicesd13AudioResolver_resolutionChangedHandler), *(v0 + OBJC_IVAR____TtC13callservicesd13AudioResolver_resolutionChangedHandler + 8));
  return v0;
}

uint64_t sub_1003E07C4()
{
  sub_1003E06F8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_1003E0824(uint64_t a1)
{
  sub_1003E097C(319, &qword_1006A9D10, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    sub_1003E097C(319, &unk_1006A9D18, type metadata accessor for AudioDescriptor);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1003E097C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1003E09D0(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_1003E0A3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10026D814(a3, a4);
  sub_100008070();
  (*(v6 + 40))(a2, a1);
  return a2;
}

unint64_t sub_1003E0A9C()
{
  result = qword_1006A9E78;
  if (!qword_1006A9E78)
  {
    sub_100006AF0(255, &qword_1006A9E70, NSString_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A9E78);
  }

  return result;
}

void *sub_1003E0B04(void *a1, id a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v12);
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  a4[2] = a1;
  if (a2)
  {
    v14 = 0;
  }

  else
  {
    v15 = sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
    v20 = "sChangedNotification";
    v21 = v15;
    swift_unknownObjectRetain();
    static DispatchQoS.unspecified.getter();
    v22 = _swiftEmptyArrayStorage;
    v17 = sub_10000EE88(&qword_1006A0CB0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    v18 = v8;
    sub_10026D814(&qword_1006A31B0, &unk_10057E920);
    v19 = a1;
    sub_100018040(&qword_1006A0CC0, &qword_1006A31B0, &unk_10057E920);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v9 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
    v14 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    a2 = [objc_allocWithZone(CSDProximitySensorObserver) initWithQueue:v14];
  }

  a4[3] = a2;
  a4[4] = v14;
  a4[5] = a3;
  return a4;
}

uint64_t sub_1003E0EFC(uint64_t a1)
{
  result = type metadata accessor for DispatchTimeInterval();
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

uint64_t sub_1003E0FAC()
{

  v1 = qword_1006A9F60;
  v2 = type metadata accessor for DispatchTimeInterval();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1003E1028()
{
  sub_1003E0FAC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1003E10A0(uint64_t a1)
{
  result = type metadata accessor for DispatchTime();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003E1128(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchTime();
  v7 = *(*(v6 - 8) + 84);
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = *(*(v6 - 8) + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (!a2)
  {
    return 0;
  }

  v14 = v6;
  v15 = *(*(v6 - 8) + 64) + v12;
  if (a2 <= v11)
  {
LABEL_25:
    if (v7 >= v10)
    {
      v23 = a1;
      v8 = v14;
    }

    else
    {
      v23 = ((a1 + v15) & ~v12);
      v7 = v10;
    }

    return sub_100015468(v23, v7, v8);
  }

  v16 = (v15 & ~v12) + v13;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v11 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v19 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_24;
  }

LABEL_14:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 2:
        v22 = *a1;
        break;
      case 3:
        v22 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v22 = *a1;
        break;
      default:
        v22 = *a1;
        break;
    }
  }

  else
  {
    v22 = 0;
  }

  return v11 + (v22 | v20) + 1;
}

void sub_1003E1340(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchTime();
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(*(v8 - 8) + 84);
  v12 = *(v10 + 84);
  if (v12 <= v11)
  {
    v13 = *(*(v8 - 8) + 84);
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v10 + 80);
  v15 = *(*(v8 - 8) + 64) + v14;
  v16 = (v15 & ~v14) + *(v10 + 64);
  v17 = 8 * v16;
  if (a3 <= v13)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v13 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v11 >= v12)
          {
            v24 = a1;
            v25 = a2;
            v9 = v8;
          }

          else
          {
            v24 = (&a1[v15] & ~v14);
            v25 = a2;
            v11 = v12;
          }

          sub_10000AF74(v24, v25, v11, v9);
        }

        break;
    }
  }

  else
  {
    v19 = ~v13 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

id sub_1003E15F8(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:a1 callSource:a2];

  return v4;
}

double sub_1003E1654()
{
  result = sub_1003E1694(1.5);
  qword_1006AA070 = *&result;
  return result;
}

float sub_1003E1694(float a1)
{
  v2 = objc_opt_self();
  v3 = [v2 tu_defaults];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10003EBF0(&v10, v11);
    sub_10004975C(v11);
    v6 = [v2 standardUserDefaults];
    v7 = String._bridgeToObjectiveC()();
    [v6 floatForKey:v7];
    a1 = v8;
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    sub_10004975C(v11);
  }

  return a1;
}

double sub_1003E17CC()
{
  result = sub_1003E1694(0.5);
  qword_1006AA078 = *&result;
  return result;
}

uint64_t sub_1003E180C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_opt_self();
  v6 = [v5 tu_defaults];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10003EBF0(&v13, v14);
    sub_10004975C(v14);
    v9 = [v5 standardUserDefaults];
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 stringForKey:v10];

    if (v11)
    {
      a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    sub_10004975C(v14);
  }

  return a3;
}

char *sub_1003E1980(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC13callservicesd27CSDSuperboxProviderDelegate_queue;
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  *&v1[v5] = static OS_dispatch_queue.main.getter();
  *&v1[OBJC_IVAR____TtC13callservicesd27CSDSuperboxProviderDelegate_incomingAudioCallNotifyToken] = 0;
  *&v1[OBJC_IVAR____TtC13callservicesd27CSDSuperboxProviderDelegate_incomingVideoCallNotifyToken] = 0;
  sub_100006AF0(0, &unk_1006A2950, CXInProcessProvider_ptr);
  swift_getObjectType();
  v6 = sub_1003E1ABC();
  v7 = a1;
  v8 = sub_1003E15F8(v6, v7);
  *&v2[OBJC_IVAR____TtC13callservicesd27CSDSuperboxProviderDelegate_provider] = v8;
  v14.receiver = v2;
  v14.super_class = ObjectType;
  v9 = v8;
  v10 = objc_msgSendSuper2(&v14, "init");
  v11 = *&v10[OBJC_IVAR____TtC13callservicesd27CSDSuperboxProviderDelegate_queue];
  v12 = v10;
  [v9 setDelegate:v12 queue:{v11, v14.receiver, v14.super_class}];
  sub_1003E1C20();

  return v12;
}

id sub_1003E1ABC()
{
  v0 = [objc_allocWithZone(CXProviderConfiguration) init];
  [v0 setMaximumCallGroups:1];
  [v0 setMaximumCallsPerCallGroup:1];
  [v0 setSupportsAudioOnly:1];
  [v0 setSupportsVideo:1];
  [v0 setIncludesCallsInRecents:0];
  sub_10039B400();
  CXProviderConfiguration.supportedHandleTypes.setter();
  sub_1003E1E78();
  sub_100006AF0(0, &unk_1006A47D0, CXHandle_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 setEmergencyHandles:isa];

  sub_1003E20A0();
  sub_100006AF0(0, &qword_1006AA0D0, CXLabeledHandle_ptr);
  v2 = Array._bridgeToObjectiveC()().super.isa;

  [v0 setEmergencyLabeledHandles:v2];

  return v0;
}

void sub_1003E1C20()
{
  v1 = OBJC_IVAR____TtC13callservicesd27CSDSuperboxProviderDelegate_incomingAudioCallNotifyToken;
  swift_beginAccess();
  v2 = *(v0 + OBJC_IVAR____TtC13callservicesd27CSDSuperboxProviderDelegate_queue);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_1003E3904;
  v15 = v3;
  aBlock = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_100272204;
  v13 = &unk_10062E0D8;
  v4 = _Block_copy(&aBlock);

  v5 = String.utf8CString.getter();
  notify_register_dispatch((v5 + 32), (v0 + v1), v2, v4);
  swift_endAccess();

  _Block_release(v4);
  v6 = OBJC_IVAR____TtC13callservicesd27CSDSuperboxProviderDelegate_incomingVideoCallNotifyToken;
  swift_beginAccess();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_1003E3988;
  v15 = v7;
  aBlock = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_100272204;
  v13 = &unk_10062E100;
  v8 = _Block_copy(&aBlock);

  v9 = String.utf8CString.getter();
  notify_register_dispatch((v9 + 32), (v0 + v6), v2, v8);
  swift_endAccess();

  _Block_release(v8);
}

void *sub_1003E1E78()
{
  v0 = [objc_opt_self() tu_defaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 arrayForKey:v1];

  if (v2 && (v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v2, v4 = sub_100422B0C(v3), , v4))
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      specialized ContiguousArray.reserveCapacity(_:)();
      sub_100006AF0(0, &unk_1006A47D0, CXHandle_ptr);
      v6 = v4 + 40;
      do
      {

        sub_1003E23FC(2);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v6 += 16;
        --v5;
      }

      while (v5);
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {
    sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10057DEC0;
    sub_100006AF0(0, &unk_1006A47D0, CXHandle_ptr);
    *(v7 + 32) = sub_1003E23FC(2);
    *(v7 + 40) = sub_1003E23FC(2);
  }

  return v7;
}

void *sub_1003E20A0()
{
  v0 = [objc_opt_self() tu_defaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 dictionaryForKey:v1];

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1003E2478(v3);
  v5 = v4;

  result = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return result;
  }

  v7 = *(v5 + 16);
  if (!v7)
  {

    return _swiftEmptyArrayStorage;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  v8 = sub_1000057CC();
  v10 = v9;
  v12 = v11;
  v13 = v5 + 64;
  result = sub_100006AF0(0, &unk_1006A47D0, CXHandle_ptr);
  v14 = 0;
  v27 = v10;
  v26 = v5 + 72;
  v28 = v5;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v5 + 32))
  {
    v15 = v8 >> 6;
    if ((*(v13 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_25;
    }

    if (*(v5 + 36) != v10)
    {
      goto LABEL_26;
    }

    v29 = v14;
    swift_bridgeObjectRetain_n();

    v16 = sub_1003E23FC(2);
    v17 = objc_allocWithZone(CXLabeledHandle);
    sub_1003E39A8(v16);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    v5 = v28;
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    v18 = 1 << *(v28 + 32);
    if (v8 >= v18)
    {
      goto LABEL_27;
    }

    v19 = *(v13 + 8 * v15);
    if ((v19 & (1 << v8)) == 0)
    {
      goto LABEL_28;
    }

    if (*(v28 + 36) != v10)
    {
      goto LABEL_29;
    }

    v20 = v19 & (-2 << (v8 & 0x3F));
    if (v20)
    {
      v18 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v15 << 6;
      v22 = v15 + 1;
      v23 = (v26 + 8 * v15);
      while (v22 < (v18 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_100010000(v8, v10, v12 & 1);
          v18 = __clz(__rbit64(v24)) + v21;
          goto LABEL_19;
        }
      }

      result = sub_100010000(v8, v10, v12 & 1);
    }

LABEL_19:
    v12 = 0;
    v14 = v29 + 1;
    v8 = v18;
    v10 = v27;
    if (v29 + 1 == v7)
    {

      return _swiftEmptyArrayStorage;
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
  return result;
}

id sub_1003E23FC(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 initWithType:a1 value:v3];

  return v4;
}

void sub_1003E2478(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10026D814(&qword_1006AA0D8, qword_100586050);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = _swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
    v7 = v6;
LABEL_12:
    v8 = __clz(__rbit64(v4)) | (v7 << 6);
    v9 = (*(a1 + 48) + 16 * v8);
    v10 = *v9;
    v11 = v9[1];
    sub_100006A94(*(a1 + 56) + 32 * v8, v27);
    *&v26 = v10;
    *(&v26 + 1) = v11;
    v24[2] = v26;
    v25[0] = v27[0];
    v25[1] = v27[1];
    v12 = v26;
    sub_10003EBF0(v25, v24);

    if (!swift_dynamicCast())
    {

      return;
    }

    v4 &= v4 - 1;
    v13 = sub_100005208(v12, *(&v12 + 1));
    v14 = v13;
    if (v15)
    {
      *(v1[6] + 16 * v13) = v12;

      v16 = (v1[7] + 16 * v14);
      *v16 = v22;
      v16[1] = v23;

      v6 = v7;
    }

    else
    {
      if (v1[2] >= v1[3])
      {
        goto LABEL_21;
      }

      *(v1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      *(v1[6] + 16 * v13) = v12;
      v17 = (v1[7] + 16 * v13);
      *v17 = v22;
      v17[1] = v23;
      v18 = v1[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_22;
      }

      v1[2] = v20;
      v6 = v7;
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_1003E2788(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v33 = v5;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v9 = v8 - v7;
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v31 = v11;
  v32 = v10;
  __chkstk_darwin(v10);
  sub_100007FDC();
  v14 = v13 - v12;
  v15 = type metadata accessor for DispatchTime();
  sub_100007FEC();
  v17 = v16;
  v19 = __chkstk_darwin(v18);
  v21 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v30 - v22;
  [a2 fulfill];
  v30[1] = *&v2[OBJC_IVAR____TtC13callservicesd27CSDSuperboxProviderDelegate_queue];
  static DispatchTime.now()();
  if (qword_1006A0BD0 != -1)
  {
    swift_once();
  }

  + infix(_:_:)();
  v24 = *(v17 + 8);
  v24(v21, v15);
  v25 = swift_allocObject();
  *(v25 + 16) = v2;
  *(v25 + 24) = a2;
  v39 = sub_1003E38FC;
  v40 = v25;
  sub_100009FE4();
  v36 = 1107296256;
  v37 = sub_100004CEC;
  v38 = &unk_10062E088;
  v26 = _Block_copy(aBlock);
  v27 = v2;
  v28 = a2;
  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v26);
  (*(v33 + 8))(v9, v4);
  (*(v31 + 8))(v14, v32);
  v24(v23, v15);
}

uint64_t sub_1003E2AD8(char *a1, void *a2)
{
  v19[0] = a2;
  v19[1] = a1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&a1[OBJC_IVAR____TtC13callservicesd27CSDSuperboxProviderDelegate_provider];
  v13 = [a2 callUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  v15 = *(v9 + 8);
  v15(v11, v8);
  static Date.now.getter();
  v16 = Date._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v7, v4);
  [v12 reportOutgoingCallWithUUID:isa startedConnectingAtDate:v16];

  v17 = [v19[0] callUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1003E2D04(v11);
  return (v15)(v11, v8);
}

uint64_t sub_1003E2D04(uint64_t a1)
{
  v28 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v31 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v29 = *(v4 - 8);
  v30 = v4;
  __chkstk_darwin(v4);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v27 = *&v1[OBJC_IVAR____TtC13callservicesd27CSDSuperboxProviderDelegate_queue];
  static DispatchTime.now()();
  if (qword_1006A0BD8 != -1)
  {
    swift_once();
  }

  + infix(_:_:)();
  v25 = *(v11 + 8);
  v25(v14, v10);
  (*(v7 + 16))(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v6);
  v17 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  (*(v7 + 32))(v18 + v17, v9, v6);
  aBlock[4] = sub_1003E3898;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062E038;
  v19 = _Block_copy(aBlock);
  v20 = v1;
  v21 = v26;
  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  v22 = v31;
  v23 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v19);
  (*(v32 + 8))(v22, v23);
  (*(v29 + 8))(v21, v30);
  v25(v16, v10);
}

void sub_1003E31DC(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  sub_100007FEC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100007FDC();
  v10 = v9 - v8;
  sub_1003E180C(0xD00000000000001FLL, 0x80000001005744A0, 0x313639383034312BLL, 0xEC00000032343339);
  v11 = [objc_allocWithZone(CXCallUpdate) init];
  [v11 setUsingBaseband:1];
  v12 = String._bridgeToObjectiveC()();
  v13 = [v12 destinationIdIsPhoneNumber];

  if (v13)
  {
    v14 = 2;
  }

  else
  {
    v14 = 3;
  }

  sub_100006AF0(0, &unk_1006A47D0, CXHandle_ptr);
  v15 = sub_1003E23FC(v14);
  v16 = [objc_allocWithZone(CXMember) initWithHandle:v15];

  [v11 setRemoteMember:v16];
  sub_1003CE928(0xD00000000000001FLL, 0x80000001005744C0, v11, &selRef_setAudioCategory_);
  v18 = sub_10000F810(v17, "setSupportsHolding:");
  v19 = sub_10000F810(v18, "setSupportsGrouping:");
  v20 = sub_10000F810(v19, "setSupportsDTMF:");
  v21 = sub_10000F810(v20, "setSupportsUnambiguousMultiPartyState:");
  v22 = sub_10000F810(v21, "setSupportsAddCall:");
  sub_10000F810(v22, "setSupportsSendingToVoicemail:");
  sub_1003CE928(29557, 0xE200000000000000, v11, &selRef_setISOCountryCode_);
  sub_10000F810(v23, "setSupportsTTYWithVoice:");
  [v11 setHasVideo:a1 & 1];
  v24 = *(v2 + OBJC_IVAR____TtC13callservicesd27CSDSuperboxProviderDelegate_provider);
  UUID.init()();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v10, v4);
  v31 = ScreenSharingActivityManager.carPlayDidDisconnect();
  v32 = 0;
  sub_100009FE4();
  v28 = 1107296256;
  v29 = sub_1004582CC;
  v30 = &unk_10062E128;
  v26 = _Block_copy(aBlock);
  [v24 reportNewIncomingCallWithUUID:isa update:v11 completion:v26];
  _Block_release(v26);
}

uint64_t sub_1003E34F0(uint64_t a1, void *a2)
{
  v24 = type metadata accessor for Date();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v9 = v8 - v7;
  v10 = type metadata accessor for UUID();
  sub_100007FEC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100007FDC();
  v16 = v15 - v14;
  [a2 fulfill];
  v17 = *(v2 + OBJC_IVAR____TtC13callservicesd27CSDSuperboxProviderDelegate_provider);
  v18 = [a2 callUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  v20 = *(v12 + 8);
  v20(v16, v10);
  static Date.now.getter();
  v21 = Date._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v9, v24);
  [v17 reportOutgoingCallWithUUID:isa startedConnectingAtDate:v21];

  v22 = [a2 callUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1003E2D04(v16);
  return (v20)(v16, v10);
}

void sub_1003E3788(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + OBJC_IVAR____TtC13callservicesd27CSDSuperboxProviderDelegate_provider);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  static Date.now.getter();
  v8 = Date._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);
  [v6 reportOutgoingCallWithUUID:isa connectedAtDate:v8];
}

void sub_1003E3898()
{
  type metadata accessor for UUID();
  v1 = *(v0 + 16);

  sub_1003E3788(v1);
}

void sub_1003E3924(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (TUShouldCreateSuperboxProvider())
    {
      sub_1003E31DC(a3 & 1);
    }
  }
}

id sub_1003E39A8(void *a1)
{
  v3 = String._bridgeToObjectiveC()();

  v4 = [v1 initWithHandle:a1 label:v3];

  return v4;
}

uint64_t sub_1003E3A1C(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(TUFeatureFlags) init];
  if ([v5 mooseEnabled])
  {
    type metadata accessor for RecordingExtensionConnectionFactory();
    swift_allocObject();
    sub_10000691C();
    v6 = type metadata accessor for RecordingMediaComposer();
    v7 = type metadata accessor for CallRecordingExtensionController();
    v8 = objc_allocWithZone(v7);
    v9 = sub_1004310E4(v2, v6, &off_100630430);
    v10 = &off_100630448;
  }

  else
  {
    v7 = type metadata accessor for CallRecordingLaunchService();
    v11 = objc_allocWithZone(v7);
    v9 = sub_1003D19F4(a1);
    v10 = &off_10062D548;
  }

  v25[3] = v7;
  v25[4] = v10;
  v25[0] = v9;
  type metadata accessor for DisclosureController();
  swift_allocObject();
  v12 = sub_1003A648C();
  v13 = objc_allocWithZone(type metadata accessor for RecordingProvider(0));
  v14 = a1;

  v15 = sub_100403D00(v14);
  sub_100009AB0(v25, v24);
  type metadata accessor for DisclosureDataSource(0);
  v16 = v14;
  v17 = v15;
  v18 = a2;
  sub_1002E5AB4();
  v20 = v19;
  v21 = v5;
  v22 = sub_1003E953C(v16, v12, v17, v24, v20, v21, v18);

  sub_100009B7C(v25);
  return v22;
}

void sub_1003E3C9C()
{
  v3 = v0;
  sub_10000691C();
  v4 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  __chkstk_darwin(v5);
  sub_100007FDC();
  sub_10003DC14(v6);
  v7 = sub_10000F3CC();
  v8(v7);
  v9 = v2;
  _dispatchPreconditionTest(_:)();
  v10 = sub_100007A40();
  v11(v10);
  if ((v2 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    sub_1000080FC(&qword_1006A0B40);
LABEL_11:
    v16 = type metadata accessor for Logger();
    sub_1000075F0(v16, qword_1006BA640);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (sub_10000BB44(v18))
    {
      v19 = sub_100006DC4();
      sub_100018630(v19);
      sub_10000F9C8(&_mh_execute_header, v20, v18, "Recording not allowed because disclosure cannot be heard on the remote side.");
      sub_100005F64();
    }

    v21 = [objc_opt_self() sharedInstance];
    [v21 disconnectCall:v4 withReason:50];

    *(v3 + 200) = 1;
    return;
  }

  if ([v0 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  if (!*(&v24 + 1))
  {
    sub_1000099A4(v25, &unk_1006A2D10, &unk_10057D940);
    return;
  }

  sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
  if (swift_dynamicCast())
  {
    v4 = v22;
    v12 = [v22 isUnderlyingLinksConnected];
    *(v0 + 200) = v12;
    v13 = *(v0 + 208);
    if (!v13 || (v12 & 1) != 0 || (v14 = OBJC_IVAR___CSDAudioCallRecordingSession_stateMachine, swift_beginAccess(), v13[v14] != 3))
    {

      return;
    }

    v15 = qword_1006A0B40;
    v1 = v13;
    if (v15 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }
}

void sub_1003E3F4C(void *a1, void *a2, _UNKNOWN **a3, void *a4, void (**a5)(void, void))
{
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a4[2];
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    if (qword_1006A0B40 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = type metadata accessor for Logger();
  sub_10000AF9C(v16, qword_1006BA640);
  v17 = a1;
  v18 = a2;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412546;
    *(v21 + 4) = v17;
    *(v21 + 12) = 2112;
    *(v21 + 14) = v18;
    *v22 = v17;
    v22[1] = v18;
    v23 = v17;
    v24 = v18;
    _os_log_impl(&_mh_execute_header, v19, v20, "Requested to STOP recording using request %@ for call %@", v21, 0x16u);
    sub_10026D814(&unk_1006A2630, &qword_10057CB40);
    swift_arrayDestroy();
  }

  v25 = a4[26];
  if (v25)
  {
    v26 = v25;
    v27 = sub_10029F65C(a3);
    v28 = String._bridgeToObjectiveC()();
    sub_10022AF9C(v28);

    sub_100009B14(a4 + 4, a4[7]);
    sub_1003A7160();
    sub_1003E7138(v27, v26);

    a5[2](a5, 0);
  }

  else
  {
    v29 = v17;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      *(v32 + 4) = v29;
      *v33 = v29;
      v34 = v29;
      _os_log_impl(&_mh_execute_header, v30, v31, "Cannot stop recording using %@ because no session exists", v32, 0xCu);
      sub_1000099A4(v33, &unk_1006A2630, &qword_10057CB40);
    }

    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
    v38 = objc_allocWithZone(NSError);
    v39 = sub_100323698(v35, v37, 3, 0);
    v40 = _convertErrorToNSError(_:)();
    (a5)[2](a5, v40);
  }

  _Block_release(a5);
}

void sub_1003E4474(void *a1, void *a2, _UNKNOWN **a3, void *a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a4[2];
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    if (qword_1006A0B40 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = type metadata accessor for Logger();
  sub_10000AF9C(v14, qword_1006BA640);
  v15 = a1;
  v16 = a2;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412546;
    *(v19 + 4) = v15;
    *(v19 + 12) = 2112;
    *(v19 + 14) = v16;
    *v20 = v15;
    v20[1] = v16;
    v21 = v15;
    v22 = v16;
    _os_log_impl(&_mh_execute_header, v17, v18, "Requested to STOP recording using request %@ for call %@", v19, 0x16u);
    sub_10026D814(&unk_1006A2630, &qword_10057CB40);
    swift_arrayDestroy();
  }

  v23 = a4[26];
  if (v23)
  {
    v24 = v23;
    v25 = sub_10029F65C(a3);
    v26 = String._bridgeToObjectiveC()();
    sub_10022AF9C(v26);

    sub_100009B14(a4 + 4, a4[7]);
    sub_1003A7160();
    sub_1003E7138(v25, v24);
  }

  else
  {
    v27 = v15;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v27;
      *v31 = v27;
      v32 = v27;
      _os_log_impl(&_mh_execute_header, v28, v29, "Cannot stop recording using %@ because no session exists", v30, 0xCu);
      sub_1000099A4(v31, &unk_1006A2630, &qword_10057CB40);
    }

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;
    v36 = objc_allocWithZone(NSError);
  }
}

void sub_1003E4938(void *a1, void *a2, _UNKNOWN **a3, void (*a4)(void), void (*a5)(void))
{
  v6 = v5;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v6[2];
  *v15 = v16;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v42 = a5;
    a5 = a4;
    if (qword_1006A0B40 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v18 = type metadata accessor for Logger();
  sub_10000AF9C(v18, qword_1006BA640);
  v19 = a1;
  v20 = a2;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412546;
    *(v23 + 4) = v19;
    *(v23 + 12) = 2112;
    *(v23 + 14) = v20;
    *v24 = v19;
    v24[1] = v20;
    v25 = v19;
    v26 = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "Requested to STOP recording using request %@ for call %@", v23, 0x16u);
    sub_10026D814(&unk_1006A2630, &qword_10057CB40);
    swift_arrayDestroy();
  }

  v27 = v6[26];
  if (v27)
  {
    v28 = v27;
    v29 = sub_10029F65C(a3);
    v30 = String._bridgeToObjectiveC()();
    sub_10022AF9C(v30);

    sub_100009B14(v6 + 4, v6[7]);
    sub_1003A7160();
    sub_1003E7138(v29, v28);

    (a5)(0);
  }

  else
  {
    v31 = v19;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v31;
      *v35 = v31;
      v36 = v31;
      _os_log_impl(&_mh_execute_header, v32, v33, "Cannot stop recording using %@ because no session exists", v34, 0xCu);
      sub_1000099A4(v35, &unk_1006A2630, &qword_10057CB40);
    }

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;
    v40 = objc_allocWithZone(NSError);
    v41 = sub_100323698(v37, v39, 3, 0);
    a5();
  }
}

void sub_1003E4E44(void *a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v8 = type metadata accessor for UUID();
  v121 = *(v8 - 8);
  __chkstk_darwin(v8);
  v120 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  v15 = *(a3 + 16);
  *v13 = v15;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  _Block_copy(a4);
  _Block_copy(a4);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v15)
  {
    if (qword_1006A0B40 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = type metadata accessor for Logger();
  v18 = sub_10000AF9C(v17, qword_1006BA640);
  v19 = a1;
  v20 = a2;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v119 = v18;
    v24 = a4;
    v25 = a3;
    v26 = v8;
    v27 = v14;
    v28 = v23;
    v29 = swift_slowAlloc();
    *v28 = 138412546;
    *(v28 + 4) = v19;
    *(v28 + 12) = 2112;
    *(v28 + 14) = v20;
    *v29 = v19;
    v29[1] = v20;
    v30 = v19;
    v31 = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "Requested to START recording using request %@ for call %@", v28, 0x16u);
    sub_10026D814(&unk_1006A2630, &qword_10057CB40);
    swift_arrayDestroy();

    v14 = v27;
    v8 = v26;
    a3 = v25;
    a4 = v24;
  }

  if (*(a3 + 200) != 1)
  {
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Recording not allowed because disclosure cannot be heard on the remote side.", v44, 2u);
    }

    v45 = [objc_opt_self() sharedInstance];
    [v45 disconnectCall:v20 withReason:50];

    *(a3 + 200) = 1;
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;
    objc_allocWithZone(NSError);
    v49 = v46;
    v50 = v48;
    v51 = 5;
    goto LABEL_22;
  }

  v32 = [v20 recordingAllowedError];
  if (v32)
  {
    v33 = v32;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v124 = v37;
      *v36 = 136315138;
      *&v123[0] = v33;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v38 = String.init<A>(reflecting:)();
      v40 = sub_10002741C(v38, v39, &v124);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "Recording not allowed with error %s", v36, 0xCu);
      sub_100009B7C(v37);
    }

    v41 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v41);

    goto LABEL_24;
  }

  swift_beginAccess();
  sub_100009B14((a3 + 152), *(a3 + 176));
  sub_1002E6C84();
  if ((v52 & 1) == 0 || (sub_1002E7A38(), (v53 & 1) == 0))
  {
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "Disclosure files do not exist! Not allowing recording", v70, 2u);
    }

    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;
    objc_allocWithZone(NSError);
    v49 = v71;
    v50 = v73;
    v51 = 151;
    goto LABEL_22;
  }

  v54 = [v20 currentRecordingSession];
  if (v54)
  {

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v124 = v58;
      *v57 = 136315138;
      v59 = *(a3 + 208);
      v60 = v59;
      v61 = sub_100291584(v59);
      v63 = v62;

      v64 = sub_10002741C(v61, v63, &v124);

      *(v57 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v55, v56, "Recording not allowed because a recording is already in-progress %s", v57, 0xCu);
      sub_100009B7C(v58);
    }

    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;
    objc_allocWithZone(NSError);
    v49 = v65;
    v50 = v67;
    v51 = 100;
    goto LABEL_22;
  }

  v126 = &OBJC_PROTOCOL___CSDCallAudioInjecting;
  v75 = swift_dynamicCastObjCProtocolConditional();
  if (!v75)
  {
    v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v91 = v90;
    objc_allocWithZone(NSError);
    v49 = v89;
    v50 = v91;
    v51 = 15;
LABEL_22:
    v74 = sub_100323698(v49, v50, v51, 0);
    v41 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v41);

LABEL_23:

    goto LABEL_24;
  }

  v117 = v75;
  v118 = v14;
  v76 = *(a3 + 136);
  v77 = *(a3 + 144);
  sub_100009B14((a3 + 112), v76);
  v119 = *(v77 + 24);
  v78 = v20;
  if ((v119(v76, v77) & 1) == 0)
  {
    v92 = v78;
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&_mh_execute_header, v93, v94, "Recording not allowed because notes is not installed", v95, 2u);
    }

    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = v97;
    v99 = objc_allocWithZone(NSError);
    v74 = sub_100323698(v96, v98, 12, 0);
    v41 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v41);

    goto LABEL_23;
  }

  v79 = objc_allocWithZone(type metadata accessor for AudioCallRecordingSession(0));
  v80 = v19;
  v81 = v78;
  v82 = v117;
  sub_10029DD3C();
  v83 = *(a3 + 208);
  *(a3 + 208) = v84;

  v85 = *(a3 + 208);
  v86 = v81;
  if (v85)
  {
    v87 = v85;
    sub_10029E2DC();
    v85 = v88;
  }

  v100 = v118;
  [v82 setCurrentRecordingSession:v85];

  v101 = swift_allocObject();
  v101[2] = a3;
  v101[3] = v82;
  v101[4] = sub_1002B6730;
  v101[5] = v100;
  v41 = v81;

  if (TUCaptionsLoggingEnabled())
  {
    v102 = Dictionary.init(dictionaryLiteral:)();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = sub_10031E958(0xD00000000000001BLL, 0x8000000100574670);
    v125 = &type metadata for String;
    *&v124 = v103;
    *(&v124 + 1) = v104;
    sub_10003EBF0(&v124, v123);
    swift_isUniquelyReferenced_nonNull_native();
    v122 = v102;
    sub_100040430();

    v105 = v122;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v106 = sub_10031E958(0xD000000000000021, 0x8000000100574690);
    v125 = &type metadata for String;
    *&v124 = v106;
    *(&v124 + 1) = v107;
    sub_10003EBF0(&v124, v123);
    swift_isUniquelyReferenced_nonNull_native();
    v122 = v105;
    sub_100040430();

    v108 = v122;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v109 = sub_10031E958(0xD00000000000001DLL, 0x80000001005746C0);
    v125 = &type metadata for String;
    *&v124 = v109;
    *(&v124 + 1) = v110;
    sub_10003EBF0(&v124, v123);
    swift_isUniquelyReferenced_nonNull_native();
    v122 = v108;
    sub_100040430();

    v111 = v122;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v112 = sub_10031E958(0x656C776F6E6B6341, 0xEB00000000656764);
    v125 = &type metadata for String;
    *&v124 = v112;
    *(&v124 + 1) = v113;
    sub_10003EBF0(&v124, v123);
    swift_isUniquelyReferenced_nonNull_native();
    v122 = v111;
    sub_100040430();

    v119 = v122;
    sub_100006AF0(0, &qword_1006A6750, IMUserNotificationCenter_ptr);
    v114 = static IMUserNotificationCenter.shared.getter();
    v115 = v120;
    UUID.init()();
    UUID.uuidString.getter();
    (*(v121 + 8))(v115, v8);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v116 = swift_allocObject();
    v116[2] = a3;
    v116[3] = sub_1003E9360;
    v116[4] = v101;

    IMUserNotificationCenter.postNotification(withIdentifier:bundleIdentifier:displayInformation:showsIcon:completionHandler:)();
  }

  else
  {
    _Block_copy(a4);
    sub_1003E6890(a3, v82, a4);
  }

LABEL_24:

  _Block_release(a4);
  _Block_release(a4);
}

void sub_1003E5BE4(void *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v113 = a4;
  v114 = a3;
  v8 = type metadata accessor for UUID();
  v112 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v5 + 16);
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    if (qword_1006A0B40 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = type metadata accessor for Logger();
  sub_10000AF9C(v17, qword_1006BA640);
  v18 = a1;
  v19 = a2;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412546;
    *(v22 + 4) = v18;
    *(v22 + 12) = 2112;
    *(v22 + 14) = v19;
    *v23 = v18;
    v23[1] = v19;
    v24 = v18;
    v25 = v19;
    _os_log_impl(&_mh_execute_header, v20, v21, "Requested to START recording using request %@ for call %@", v22, 0x16u);
    sub_10026D814(&unk_1006A2630, &qword_10057CB40);
    swift_arrayDestroy();
  }

  if ((*(v5 + 200) & 1) == 0)
  {
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Recording not allowed because disclosure cannot be heard on the remote side.", v38, 2u);
    }

    v39 = [objc_opt_self() sharedInstance];
    [v39 disconnectCall:v19 withReason:50];

    *(v5 + 200) = 1;
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;
    objc_allocWithZone(NSError);
    v43 = v40;
    v44 = v42;
    v45 = 5;
    goto LABEL_22;
  }

  v26 = [v19 recordingAllowedError];
  if (v26)
  {
    v27 = v26;
    v28 = v26;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v117 = v32;
      *v31 = 136315138;
      *&v116[0] = v28;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v33 = String.init<A>(reflecting:)();
      v35 = sub_10002741C(v33, v34, &v117);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "Recording not allowed with error %s", v31, 0xCu);
      sub_100009B7C(v32);
    }

    (v114)(v27);
    goto LABEL_23;
  }

  swift_beginAccess();
  sub_100009B14((v5 + 152), *(v5 + 176));
  sub_1002E6C84();
  if ((v46 & 1) == 0 || (sub_1002E7A38(), (v47 & 1) == 0))
  {
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Disclosure files do not exist! Not allowing recording", v64, 2u);
    }

    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;
    objc_allocWithZone(NSError);
    v43 = v65;
    v44 = v67;
    v45 = 151;
    goto LABEL_22;
  }

  v48 = [v19 currentRecordingSession];
  if (v48)
  {

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v117 = v52;
      *v51 = 136315138;
      v53 = *(v5 + 208);
      v54 = v53;
      v55 = sub_100291584(v53);
      v57 = v56;

      v58 = sub_10002741C(v55, v57, &v117);

      *(v51 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v49, v50, "Recording not allowed because a recording is already in-progress %s", v51, 0xCu);
      sub_100009B7C(v52);
    }

    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;
    objc_allocWithZone(NSError);
    v43 = v59;
    v44 = v61;
    v45 = 100;
    goto LABEL_22;
  }

  v119 = &OBJC_PROTOCOL___CSDCallAudioInjecting;
  v68 = swift_dynamicCastObjCProtocolConditional();
  if (!v68)
  {
    v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v84 = v83;
    objc_allocWithZone(NSError);
    v43 = v82;
    v44 = v84;
    v45 = 15;
LABEL_22:
    v28 = sub_100323698(v43, v44, v45, 0);
    (v114)(v28);
    goto LABEL_23;
  }

  v110 = v68;
  v69 = *(v5 + 136);
  v70 = *(v5 + 144);
  sub_100009B14((v5 + 112), v69);
  v111 = *(v70 + 24);
  v71 = v19;
  if (v111(v69, v70))
  {
    v72 = objc_allocWithZone(type metadata accessor for AudioCallRecordingSession(0));
    v73 = v18;
    v74 = v71;
    v75 = v110;
    sub_10029DD3C();
    v76 = *(v5 + 208);
    *(v5 + 208) = v77;

    v78 = *(v5 + 208);
    v79 = v74;
    if (v78)
    {
      v80 = v78;
      sub_10029E2DC();
      v78 = v81;
    }

    [v75 setCurrentRecordingSession:v78];

    v93 = swift_allocObject();
    v93[2] = v5;
    v93[3] = v75;
    v95 = v113;
    v94 = v114;
    v93[4] = v114;
    v93[5] = v95;
    v28 = v74;

    if (TUCaptionsLoggingEnabled())
    {
      v96 = Dictionary.init(dictionaryLiteral:)();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v97 = sub_10031E958(0xD00000000000001BLL, 0x8000000100574670);
      v118 = &type metadata for String;
      *&v117 = v97;
      *(&v117 + 1) = v98;
      sub_10003EBF0(&v117, v116);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v96;
      sub_100040430();

      v99 = v115;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v100 = sub_10031E958(0xD000000000000021, 0x8000000100574690);
      v118 = &type metadata for String;
      *&v117 = v100;
      *(&v117 + 1) = v101;
      sub_10003EBF0(&v117, v116);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v99;
      sub_100040430();

      v102 = v115;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v103 = sub_10031E958(0xD00000000000001DLL, 0x80000001005746C0);
      v118 = &type metadata for String;
      *&v117 = v103;
      *(&v117 + 1) = v104;
      sub_10003EBF0(&v117, v116);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v102;
      sub_100040430();

      v105 = v115;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v106 = sub_10031E958(0x656C776F6E6B6341, 0xEB00000000656764);
      v118 = &type metadata for String;
      *&v117 = v106;
      *(&v117 + 1) = v107;
      sub_10003EBF0(&v117, v116);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v105;
      sub_100040430();

      sub_100006AF0(0, &qword_1006A6750, IMUserNotificationCenter_ptr);
      v108 = static IMUserNotificationCenter.shared.getter();
      UUID.init()();
      UUID.uuidString.getter();
      (*(v112 + 8))(v10, v8);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v109 = swift_allocObject();
      v109[2] = v5;
      v109[3] = sub_1003E9B10;
      v109[4] = v93;

      IMUserNotificationCenter.postNotification(withIdentifier:bundleIdentifier:displayInformation:showsIcon:completionHandler:)();
    }

    else
    {
      sub_1003E6AA0(v5, v75, v94);
    }
  }

  else
  {
    v85 = v71;
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&_mh_execute_header, v86, v87, "Recording not allowed because notes is not installed", v88, 2u);
    }

    v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v91 = v90;
    v92 = objc_allocWithZone(NSError);
    v28 = sub_100323698(v89, v91, 12, 0);
    v114();
  }

LABEL_23:
}

void sub_1003E6890(void *a1, void *a2, void (**a3)(void, void))
{
  v6 = String._bridgeToObjectiveC()();
  sub_10022AF9C(v6);

  v7 = a1[26];
  if (v7)
  {
    v8 = v7;
    sub_10029EE8C();
    sub_100009B14(a1 + 9, a1[12]);
    sub_100403DEC(v8);
    sub_100009B14(a1 + 4, a1[7]);
    sub_1003A6B10(a2);
    a3[2](a3, 0);
  }

  _Block_release(a3);
}

void sub_1003E6AA0(void *a1, void *a2, void (*a3)(void))
{
  v6 = String._bridgeToObjectiveC()();
  sub_10022AF9C(v6);

  v7 = a1[26];
  if (v7)
  {
    v8 = v7;
    sub_10029EE8C();
    sub_100009B14(a1 + 9, a1[12]);
    sub_100403DEC(v8);
    sub_100009B14(a1 + 4, a1[7]);
    sub_1003A6B10(a2);
    a3(0);
  }
}

uint64_t sub_1003E6CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a3;
  v15[4] = a4;
  aBlock[4] = sub_1003E93C0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062E2C8;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18[1] = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

uint64_t sub_1003E6F54(uint64_t a1, uint64_t (*a2)(void))
{
  if (a1)
  {
    if (qword_1006A0B40 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000AF9C(v3, qword_1006BA640);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "User chose to continue with transcription logging enabled", v6, 2u);
    }
  }

  else
  {
    if (qword_1006A0B40 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000AF9C(v7, qword_1006BA640);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "User asked to disable transcript logging", v10, 2u);
    }

    v4 = [objc_opt_self() tu_defaults];
    [v4 setBool:0 forKey:TUCaptionsLoggingEnabledKey];
  }

  return a2();
}

void sub_1003E7138(uint64_t result, void *a2)
{
  v4 = *(result + 16);
  v5 = (result + 32);
  do
  {
    if (!v4)
    {
      break;
    }

    v6 = *v5++;
    sub_1003E7180(v6, a2);
    --v4;
  }

  while (!v2);
}

void sub_1003E7180(char a1, void *a2)
{
  switch(a1)
  {
    case 1:
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        sub_100009B14(v2 + 4, v2[7]);
        sub_1003A6B58(v5);
      }

      else
      {
        sub_10029FF3C();
        swift_allocError();
        swift_willThrow();
      }

      break;
    case 2:
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v7 = v6;
        [v6 setCurrentRecordingSession:0];
      }

      v8 = v2[26];
      v2[26] = 0;

      break;
    case 3:
      sub_100009B14(v2 + 9, v2[12]);
      sub_100404438();
      break;
    case 4:
      return;
    default:
      sub_100009B14(v2 + 9, v2[12]);
      sub_1004065CC(a2);
      break;
  }
}

uint64_t sub_1003E72A8()
{
  swift_unknownObjectRelease();
  sub_100009B7C((v0 + 32));
  sub_100009B7C((v0 + 72));
  sub_100009B7C((v0 + 112));
  sub_100009B7C((v0 + 152));

  return v0;
}

uint64_t sub_1003E7300()
{
  sub_1003E72A8();

  return _swift_deallocClassInstance(v0, 216, 7);
}

void sub_1003E7358()
{
  sub_10000C264();
  sub_100007FEC();
  __chkstk_darwin(v2);
  sub_10000AA68(v3, v26);
  v4 = sub_1000150CC();
  v5(v4);
  v6 = v1;
  _dispatchPreconditionTest(_:)();
  v7 = sub_100010218();
  v8(v7);
  if (v1)
  {
    if (qword_1006A0B40 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1000080FC(&qword_1006A0B40);
LABEL_3:
  v9 = type metadata accessor for Logger();
  sub_10000AF9C(v9, qword_1006BA640);
  sub_10002F6D0();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (sub_10000689C(v11))
  {
    v12 = sub_100006DC4();
    sub_100017D04(v12);
    sub_10000A154();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    sub_100008AE8();
  }

  v18 = v0[26];
  if (v18 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v20 = Strong;
    v21 = v18;
    sub_10029F004();
    sub_100009B14(v0 + 4, v0[7]);
    sub_1003A6B64(v20);
  }

  else
  {
    v20 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (sub_100015E3C(v22))
    {
      v23 = sub_100006DC4();
      sub_10001AC5C(v23);
      sub_100017380(&_mh_execute_header, v24, v25, "recurring disclosure timer triggered, but we aren't tracking a recording session");
      sub_100007CBC();
    }
  }
}

void sub_1003E757C()
{
  sub_10000C264();
  sub_100007FEC();
  __chkstk_darwin(v2);
  sub_10000AA68(v3, v25);
  v4 = sub_1000150CC();
  v5(v4);
  v6 = v1;
  _dispatchPreconditionTest(_:)();
  v7 = sub_100010218();
  v8(v7);
  if (v1)
  {
    if (qword_1006A0B40 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1000080FC(&qword_1006A0B40);
LABEL_3:
  v9 = type metadata accessor for Logger();
  sub_10000AF9C(v9, qword_1006BA640);
  sub_10002F6D0();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (sub_10000689C(v11))
  {
    v12 = sub_100006DC4();
    sub_100017D04(v12);
    sub_10000A154();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    sub_100008AE8();
  }

  v18 = v0[26];
  if (v18)
  {
    v19 = v18;
    v20 = String._bridgeToObjectiveC()();
    sub_10022AF9C(v20);

    sub_10029EF48();
    sub_100009B14(v0 + 9, v0[12]);
    sub_100404928();
  }

  else
  {
    v19 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (sub_100015E3C(v21))
    {
      v22 = sub_100006DC4();
      sub_10001AC5C(v22);
      sub_100017380(&_mh_execute_header, v23, v24, "Start disclosure finished, but we aren't tracking a recording session");
      sub_100007CBC();
    }
  }
}

void sub_1003E77A8()
{
  sub_10000C264();
  sub_100007FEC();
  __chkstk_darwin(v2);
  sub_10000AA68(v3, v24);
  v4 = sub_1000150CC();
  v5(v4);
  v6 = v1;
  _dispatchPreconditionTest(_:)();
  v7 = sub_100010218();
  v8(v7);
  if (v1)
  {
    if (qword_1006A0B40 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1000080FC(&qword_1006A0B40);
LABEL_3:
  v9 = type metadata accessor for Logger();
  sub_10000AF9C(v9, qword_1006BA640);
  sub_10002F6D0();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (sub_10000689C(v11))
  {
    v12 = sub_100006DC4();
    sub_100017D04(v12);
    sub_10000A154();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    sub_100008AE8();
  }

  v18 = v0[26];
  if (v18)
  {
    v19 = v18;
    sub_1003E9B14();
    sub_10029F0E0();
    sub_100009B14(v0 + 4, v0[7]);
    sub_1003A6C64(*(v1 + OBJC_IVAR___CSDAudioCallRecordingSession_recurringDisclosureCount) != 0);
  }

  else
  {
    v1 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();
    if (sub_100015E3C(v20))
    {
      v21 = sub_100006DC4();
      sub_10001AC5C(v21);
      sub_100017380(&_mh_execute_header, v22, v23, "recurring disclosure finished, but we aren't tracking a recording session");
      sub_100007CBC();
    }
  }
}

void sub_1003E79C0()
{
  sub_10000C264();
  sub_100007FEC();
  __chkstk_darwin(v2);
  sub_10000AA68(v3, v22);
  v4 = sub_1000150CC();
  v5(v4);
  v6 = v1;
  _dispatchPreconditionTest(_:)();
  v7 = sub_100010218();
  v8(v7);
  if (v1)
  {
    if (qword_1006A0B40 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1000080FC(&qword_1006A0B40);
LABEL_3:
  v9 = type metadata accessor for Logger();
  sub_10000AF9C(v9, qword_1006BA640);
  sub_1003E9B14();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (sub_10000689C(v11))
  {
    v12 = sub_100006DC4();
    sub_10000D6E8(v12);
    sub_10000C1F8();
    sub_10000BAC8(v13, v14, v15, v16);
    sub_100006868();
  }

  v17 = *(v0 + 208);
  if (v17)
  {
    v18 = v17;
    sub_10029FB74();

    if (*(v0 + 208))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v20 = Strong;
        [Strong setCurrentRecordingSession:0];
      }
    }
  }

  v21 = *(v0 + 208);
  *(v0 + 208) = 0;
}

void sub_1003E7BBC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v50 = a3;
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v49 - v7;
  v9 = type metadata accessor for UUID();
  sub_100007FEC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100007FDC();
  v15 = v14 - v13;
  v16 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_100007FDC();
  v22 = v21 - v20;
  v23 = *(v4 + 16);
  *(v21 - v20) = v23;
  (*(v18 + 104))(v21 - v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v22, v16);
  if (v23)
  {
    if (qword_1006A0B40 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1000080FC(&qword_1006A0B40);
LABEL_3:
  v25 = type metadata accessor for Logger();
  sub_10000AF9C(v25, qword_1006BA640);
  sub_1003E9B14();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (sub_10000BB44(v27))
  {
    v28 = sub_100006DC4();
    *v28 = 0;
    sub_100035E78(&_mh_execute_header, v29, v30, "Recording updated");
    sub_100005F40(v28);
  }

  v31 = *(v4 + 208);
  if (v31)
  {
    sub_1002A5F90(a2, v8);
    if (sub_100015468(v8, 1, v9) == 1)
    {
      v32 = v31;
      sub_1000099A4(v8, &unk_1006A3DD0, &unk_10057C9D0);
      v33 = v50;
      v34 = v50;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = sub_100005274();
        v38 = sub_100005E84();
        v51 = v38;
        *v37 = 136315138;
        v39 = sub_1002915EC(v33);
        v41 = sub_10002741C(v39, v40, &v51);

        *(v37 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v35, v36, "No UUID returned when starting recording! error %s", v37, 0xCu);
        sub_100009B7C(v38);
        sub_100005F40(v38);
        sub_100005F40(v37);
      }

      v42 = sub_10029F65C(1);
      sub_1003E7138(v42, v32);
    }

    else
    {
      (*(v11 + 32))(v15, v8, v9);
      v48 = v31;
      sub_10029F3E4();

      (*(v11 + 8))(v15, v9);
    }
  }

  else
  {
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.fault.getter();
    if (sub_10000A648(v44))
    {
      v45 = sub_100006DC4();
      sub_100008944(v45);
      sub_100008A90(&_mh_execute_header, v46, v47, "No recording session active, but got callback recordingUpdated! This should not be possible");
      sub_100005F40(v11);
    }
  }
}

void sub_1003E801C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v52 = a2;
  v5 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v51 - v6;
  v8 = type metadata accessor for UUID();
  sub_100007FEC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100007FDC();
  v14 = v13 - v12;
  v15 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_100007FDC();
  v21 = v20 - v19;
  v22 = v3[2];
  *(v20 - v19) = v22;
  (*(v17 + 104))(v20 - v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v21, v15);
  if (v22)
  {
    if (qword_1006A0B40 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1000080FC(&qword_1006A0B40);
LABEL_3:
  v24 = type metadata accessor for Logger();
  sub_10000AF9C(v24, qword_1006BA640);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (sub_10000BB44(v26))
  {
    v27 = sub_100006DC4();
    *v27 = 0;
    sub_100035E78(&_mh_execute_header, v28, v29, "Recording started");
    sub_100005F40(v27);
  }

  v30 = v3[26];
  if (v30)
  {
    sub_1002A5F90(a1, v7);
    if (sub_100015468(v7, 1, v8) == 1)
    {
      v31 = v30;
      sub_1000099A4(v7, &unk_1006A3DD0, &unk_10057C9D0);
      v32 = v52;
      swift_errorRetain();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = sub_100005274();
        v36 = sub_100005E84();
        v53[0] = v36;
        *v35 = 136315138;
        v37 = sub_1002910C8(v32);
        v39 = sub_10002741C(v37, v38, v53);

        *(v35 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v33, v34, "No UUID returned when starting recording! error %s", v35, 0xCu);
        sub_100009B7C(v36);
        sub_100005F40(v36);
        sub_100005F40(v35);
      }

      v40 = sub_10029F65C(1);
      sub_1003E7138(v40, v31);
    }

    else
    {
      v46 = v10;
      (*(v10 + 32))(v14, v7, v8);
      v47 = v30;
      sub_10029F1A4();
      sub_100009AB0((v3 + 14), v53);
      v48 = v54;
      v49 = v55;
      sub_100009B14(v53, v54);
      Strong = swift_unknownObjectWeakLoadStrong();
      (*(v49 + 8))(Strong, v47, v48, v49);

      sub_100009B7C(v53);
      sub_100009B14(v3 + 4, v3[7]);
      sub_1003A6C64(0);

      (*(v46 + 8))(v14, v8);
    }
  }

  else
  {
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.fault.getter();
    if (sub_10000A648(v42))
    {
      v43 = sub_100006DC4();
      sub_100008944(v43);
      sub_100008A90(&_mh_execute_header, v44, v45, "No recording session active, but got callback recordingDidStart! THis should not be possible");
      sub_100005F40(v10);
    }
  }
}

void sub_1003E856C()
{
  sub_10000C264();
  sub_100007FEC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000AA68(v6, v31[0]);
  v7 = sub_1000150CC();
  v8(v7);
  v9 = v2;
  _dispatchPreconditionTest(_:)();
  v10 = sub_100010218();
  v11(v10);
  if (v2)
  {
    if (qword_1006A0B40 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1000080FC(&qword_1006A0B40);
LABEL_3:
  v12 = type metadata accessor for Logger();
  sub_10000AF9C(v12, qword_1006BA640);
  sub_1003E9B14();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (sub_10000689C(v14))
  {
    v15 = sub_100006DC4();
    sub_10000D6E8(v15);
    sub_10000C1F8();
    sub_10000BAC8(v16, v17, v18, v19);
    sub_100006868();
  }

  v20 = *(v0 + 208);
  if (v20)
  {
    v21 = v20;
    sub_10002F6D0();
    v22 = sub_10029FAAC();
    sub_1003E7180(v22, v4);
    sub_100009AB0(v0 + 112, v31);
    v28 = v32;
    v29 = v33;
    sub_100009B14(v31, v32);
    Strong = swift_unknownObjectWeakLoadStrong();
    (*(v29 + 16))(Strong, v4, v28, v29);

    sub_100009B7C(v31);
  }

  else
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.fault.getter();
    if (sub_10000A648(v24))
    {
      v25 = sub_100006DC4();
      sub_100008944(v25);
      sub_100008A90(&_mh_execute_header, v26, v27, "Recording ended callback, but we aren't tracking a recording session");
      sub_100005F40(v1);
    }
  }
}

uint64_t sub_1003E87D4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = sub_1003E9358;
  v13 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062E1B0;
  v9 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v11[1] = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_1003E8A28(uint64_t a1)
{
  v2 = type metadata accessor for DisclosureDataSource(0);
  v3 = *(a1 + 16);
  v4 = *(a1 + 192);
  v5 = v3;
  sub_1002E5AB4();
  v9 = v2;
  v10 = &off_100625520;
  *&v8 = v6;
  swift_beginAccess();
  sub_100009B7C((a1 + 152));
  sub_10002F0C8(&v8, a1 + 152);
  return swift_endAccess();
}

void sub_1003E8B00(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  sub_10000691C();
  v8 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100007FDC();
  v14 = v13 - v12;
  v15 = *(a3 + 16);
  *(v13 - v12) = v15;
  (*(v10 + 104))(v13 - v12, enum case for DispatchPredicate.onQueue(_:), v8);
  _Block_copy(a4);
  _Block_copy(a4);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v14, v8);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (![*(a3 + 24) callRecordingEnabled])
  {
    if (qword_1006A0B40 == -1)
    {
LABEL_6:
      v20 = type metadata accessor for Logger();
      sub_10000AF9C(v20, qword_1006BA640);
      v21 = v4;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = sub_100005274();
        v25 = sub_100005E84();
        v58 = v25;
        *v24 = 136315138;
        sub_100006AF0(0, &qword_1006AA248, TUCallRecordingRequest_ptr);
        v26 = v21;
        v27 = String.init<A>(reflecting:)();
        v29 = sub_10002741C(v27, v28, &v58);

        *(v24 + 4) = v29;
        sub_10000A154();
        _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
        sub_100009B7C(v25);
        sub_100006868();
        sub_100008AE8();
      }

      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;
      v38 = objc_allocWithZone(NSError);
      v39 = sub_100323698(v35, v37, 2, 0);
      v40 = _convertErrorToNSError(_:)();
      (a4)[2](a4, v40);

      goto LABEL_12;
    }

LABEL_19:
    sub_1000080FC(&qword_1006A0B40);
    goto LABEL_6;
  }

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    _Block_copy(a4);
    v19 = v4;
    sub_1003E4E44(v18, a2, a3, a4);
LABEL_11:

    goto LABEL_12;
  }

  objc_opt_self();
  v41 = swift_dynamicCastObjCClass();
  if (v41)
  {
    v42 = v41;
    _Block_copy(a4);
    v19 = v4;
    sub_1003E3F4C(v42, a2, 0, a3, a4);
    goto LABEL_11;
  }

  if (qword_1006A0B40 != -1)
  {
    sub_1000080FC(&qword_1006A0B40);
  }

  v43 = type metadata accessor for Logger();
  sub_10000AF9C(v43, qword_1006BA640);
  v44 = v4;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = sub_100005274();
    v48 = sub_100005E84();
    v58 = v48;
    *v47 = 136315138;
    sub_100006AF0(0, &qword_1006AA248, TUCallRecordingRequest_ptr);
    v49 = v44;
    v50 = String.init<A>(reflecting:)();
    v52 = sub_10002741C(v50, v51, &v58);

    *(v47 + 4) = v52;
    sub_10000A154();
    _os_log_impl(v53, v54, v55, v56, v57, 0xCu);
    sub_100009B7C(v48);
    sub_100006868();
    sub_100008AE8();
  }

  a4[2](a4, 0);
LABEL_12:
  _Block_release(a4);
  _Block_release(a4);
  _Block_release(a4);
}

void sub_1003E8F60(void *a1, void *a2, void (*a3)(id, uint64_t), void (*a4)(void))
{
  v9 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100007FDC();
  v15 = v14 - v13;
  v16 = *(v4 + 16);
  *(v14 - v13) = v16;
  (*(v11 + 104))(v14 - v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v15, v9);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (![*(v4 + 24) callRecordingEnabled])
  {
    if (qword_1006A0B40 == -1)
    {
LABEL_6:
      v21 = type metadata accessor for Logger();
      sub_1000075F0(v21, qword_1006BA640);
      v22 = a1;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = sub_100005274();
        v26 = sub_100005E84();
        v52 = v26;
        *v25 = 136315138;
        sub_100006AF0(0, &qword_1006AA248, TUCallRecordingRequest_ptr);
        v27 = v22;
        v28 = String.init<A>(reflecting:)();
        v30 = sub_10002741C(v28, v29, &v52);

        *(v25 + 4) = v30;
        sub_100005FCC(&_mh_execute_header, v31, v32, "Call recording feature flag is not enabled, dropping %s");
        sub_100009B7C(v26);
        sub_100005F64();
        sub_100006868();
      }

      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;
      v36 = objc_allocWithZone(NSError);
      v20 = sub_100323698(v33, v35, 2, 0);
      a3(v20, v37);
      goto LABEL_9;
    }

LABEL_18:
    sub_1000080FC(&qword_1006A0B40);
    goto LABEL_6;
  }

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = v18;
    v20 = a1;
    sub_1003E5BE4(v19, a2, a3, a4);
LABEL_9:

    return;
  }

  objc_opt_self();
  v38 = swift_dynamicCastObjCClass();
  if (v38)
  {
    v39 = v38;
    v20 = a1;
    sub_1003E4938(v39, a2, 0, a3, a4);
    goto LABEL_9;
  }

  if (qword_1006A0B40 != -1)
  {
    sub_1000080FC(&qword_1006A0B40);
  }

  v40 = type metadata accessor for Logger();
  sub_1000075F0(v40, qword_1006BA640);
  v41 = a1;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = sub_100005274();
    v45 = sub_100005E84();
    v52 = v45;
    *v44 = 136315138;
    sub_100006AF0(0, &qword_1006AA248, TUCallRecordingRequest_ptr);
    v46 = v41;
    v47 = String.init<A>(reflecting:)();
    v49 = sub_10002741C(v47, v48, &v52);

    *(v44 + 4) = v49;
    sub_100005FCC(&_mh_execute_header, v50, v51, "Unhandled call recording request %s");
    sub_100009B7C(v45);
    sub_100005F64();
    sub_100006868();
  }

  (a3)(0);
}

uint64_t sub_1003E9378()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1003E93CC(uint64_t a1, void *a2, uint64_t a3)
{
  v11[3] = type metadata accessor for AudioCallRecordingController();
  v11[4] = &off_10062E168;
  v11[0] = a1;
  sub_100009AB0(v11, v10);
  v6 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegate;
  swift_beginAccess();

  sub_1003E9A9C(v10, v6 + a3, &qword_1006AAF50, &unk_100584CC0);
  swift_endAccess();
  v7 = *(a3 + OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegateQueue);
  *(a3 + OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegateQueue) = a2;
  v8 = a2;

  return sub_100009B7C(v11);
}

uint64_t sub_1003E948C(uint64_t a1, void *a2, uint64_t a3)
{
  v10[3] = type metadata accessor for AudioCallRecordingController();
  v10[4] = &off_10062E188;
  v10[0] = a1;
  sub_100009AB0(v10, v9);
  swift_beginAccess();

  sub_1003E9A9C(v9, a3 + 16, &qword_1006AA250, &qword_100583C78);
  swift_endAccess();
  v6 = *(a3 + 56);
  *(a3 + 56) = a2;
  v7 = a2;

  return sub_100009B7C(v10);
}

uint64_t sub_1003E953C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v51 = a4;
  v52 = a7;
  v49 = a1;
  v50 = a6;
  v10 = type metadata accessor for DisclosureController();
  v69[3] = v10;
  v69[4] = &off_10062B8D8;
  v69[0] = a2;
  v11 = type metadata accessor for RecordingProvider(0);
  v67 = v11;
  v68 = &off_10062F1B0;
  v66[0] = a3;
  v12 = type metadata accessor for DisclosureDataSource(0);
  v64 = v12;
  v65 = &off_100625520;
  v63[0] = a5;
  v13 = type metadata accessor for AudioCallRecordingController();
  v14 = swift_allocObject();
  v15 = sub_10001BDB8(v69, v10);
  __chkstk_darwin(v15);
  v17 = (&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = sub_10001BDB8(v66, v67);
  __chkstk_darwin(v19);
  v21 = (&v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = sub_10001BDB8(v63, v64);
  __chkstk_darwin(v23);
  v25 = (&v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v17;
  v28 = *v21;
  v29 = *v25;
  v61 = v10;
  v62 = &off_10062B8D8;
  v60[0] = v27;
  v58 = v11;
  v59 = &off_10062F1B0;
  v57[0] = v28;
  v56[3] = v12;
  v56[4] = &off_100625520;
  v56[0] = v29;
  *(v14 + 200) = 1;
  *(v14 + 208) = 0;
  v31 = v49;
  v30 = v50;
  *(v14 + 16) = v49;
  *(v14 + 24) = v30;
  sub_100009AB0(v60, v14 + 32);
  sub_100009AB0(v57, v14 + 72);
  v32 = v51;
  sub_100009AB0(v51, v14 + 112);
  sub_100009AB0(v56, v14 + 152);
  v33 = v52;
  *(v14 + 192) = v52;
  v34 = sub_100009B14(v57, v58);
  v54 = v13;
  v55 = &off_10062E168;
  v53[0] = v14;
  v35 = *v34;
  v36 = *sub_100009B14(v53, v13);
  v37 = v31;
  v38 = v33;

  sub_1003E93CC(v36, v37, v35);
  sub_100009B7C(v53);
  v39 = sub_100009B14(v60, v61);
  v54 = v13;
  v55 = &off_10062E188;
  v53[0] = v14;
  v40 = *v39;
  v41 = *sub_100009B14(v53, v13);

  sub_1003E948C(v41, v37, v40);
  sub_100009B7C(v53);
  v42 = objc_opt_self();
  v43 = [v42 defaultCenter];
  [v43 addObserver:v14 selector:"handleCurrentLocaleDidChange" name:NSCurrentLocaleDidChangeNotification object:0];

  v44 = [v42 defaultCenter];
  [v44 addObserver:v14 selector:"handleRecordingStatusChangedWithNotification:" name:TUCallCenterCallStatusChangedNotification object:0];

  v45 = [v42 defaultCenter];
  [v45 addObserver:v14 selector:"handleRecordingStatusChangedWithNotification:" name:TUCallRecordingAvailabilityChangedNotification object:0];

  v46 = [v42 defaultCenter];
  [v46 addObserver:v14 selector:"handleMediaTokensChangedWithNotification:" name:TUCallMediaTokensChangedNotification object:0];

  v47 = [v42 defaultCenter];
  [v47 addObserver:v14 selector:"handleCallUnderlyingLinksConnectionChangedWithNotification:" name:@"CSDCallUnderlyingLinksConnectionChangedNotification" object:0];

  sub_100009B7C(v32);
  sub_100009B7C(v56);
  sub_100009B7C(v57);
  sub_100009B7C(v60);
  sub_100009B7C(v63);
  sub_100009B7C(v66);
  sub_100009B7C(v69);
  return v14;
}

uint64_t sub_1003E9A9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10026D814(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1003E9B20(uint64_t result)
{
  if ((result - 6) < 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1003E9B34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1003E9B20(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1003E9B68(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0xD000000000000016;
  switch(v1)
  {
    case 0:
    case 4:
      return result;
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1003E9C44(uint64_t a1)
{
  result = 0xD000000000000018;
  if (a1)
  {
    if (a1 == 2)
    {
      return 0xD00000000000001CLL;
    }

    else if (a1 == 1)
    {
      return 0xD000000000000027;
    }

    else
    {
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
    }
  }

  return result;
}

id sub_1003E9CEC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  a4(a3, a2);
  v4 = String._bridgeToObjectiveC()();

  return v4;
}

unint64_t sub_1003E9DA8()
{
  result = qword_1006AA280;
  if (!qword_1006AA280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AA280);
  }

  return result;
}

unint64_t sub_1003E9E00()
{
  result = qword_1006AA288;
  if (!qword_1006AA288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AA288);
  }

  return result;
}

uint64_t sub_1003E9F60(void *a1, void *a2)
{
  if (qword_1006A0B70 != -1)
  {
    sub_10000860C(&qword_1006A0B70);
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_100022D5C(v5, qword_1006BA6D0);
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    sub_100005274();
    v8 = sub_10000681C();
    v16 = v8;
    *v2 = 136446210;
    *(v2 + 4) = sub_10002741C(0xD00000000000001BLL, 0x8000000100574890, &v16);
    sub_100005FCC(&_mh_execute_header, v9, v10, "%{public}s");
    sub_100009B7C(v8);
    sub_100005F64();
    sub_100006868();
  }

  v11 = [a2 remoteMembers];
  sub_10039FBE8();
  sub_1003EBA24(&qword_1006A2660, sub_10039FBE8, &protocol conformance descriptor for NSObject);
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = sub_1003EAC78(v12, a1);
  v14 = sub_1002E8BE0(v13);

  return v14;
}

void sub_1003EA0F4()
{
  sub_100010094();
  sub_10000EB64();
  if (qword_1006A0B70 != -1)
  {
    sub_10000860C(&qword_1006A0B70);
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100022D5C(v2, qword_1006BA6D0);
  v4 = static os_log_type_t.default.getter();
  if (sub_100008C34(v4))
  {
    sub_100005274();
    sub_10001607C();
    sub_10000FB20();
    *v1 = 136446210;
    sub_1000152BC();
    *(v1 + 4) = sub_10002741C(0xD000000000000020, v5, v6);
    sub_10000F828(&_mh_execute_header, v7, v8, "%{public}s");
    sub_100010508();
    sub_100005F64();
  }

  if (([v0 isLocallyInitiated] & 1) == 0)
  {
    v9 = [v0 activity];
    v10 = [v9 originator];

    if (v10)
    {
      sub_10001AC50();
      sub_1003EA238();
    }
  }

  sub_100008348();
}

void sub_1003EA238()
{
  sub_100010094();
  sub_10000EB64();
  if (qword_1006A0B70 != -1)
  {
    sub_10000860C(&qword_1006A0B70);
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_100022D5C(v4, qword_1006BA6D0);
  v6 = static os_log_type_t.default.getter();
  if (sub_100008C34(v6))
  {
    sub_100005274();
    sub_10001607C();
    sub_10000FB20();
    *v3 = 136446210;
    sub_1000152BC();
    *(v3 + 4) = sub_10002741C(0xD000000000000020, v7, v8);
    sub_10000F828(&_mh_execute_header, v9, v10, "%{public}s");
    sub_100010508();
    sub_100005F64();
  }

  v11 = [v1 remoteParticipantForLightweightParticipantHandle:v2];
  if (v11)
  {
    v12 = v11;
    sub_10001AC50();
    sub_1003E9E64();
    sub_10000A224();
  }

  else
  {
    sub_1003EA4F8(v2, v0);
    sub_10000A224();
  }

  sub_100006B30();
  sub_100008348();
}

void sub_1003EA34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100010094();
  a19 = v22;
  a20 = v23;
  sub_10000EB64();
  if (qword_1006A0B70 != -1)
  {
    sub_10000860C(&qword_1006A0B70);
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_100022D5C(v24, qword_1006BA6D0);
  v26 = static os_log_type_t.default.getter();
  if (sub_100008C34(v26))
  {
    sub_100005274();
    sub_10001607C();
    sub_10000FB20();
    *v21 = 136446210;
    *(v21 + 4) = sub_10002741C(0xD000000000000020, 0x8000000100574840, &a10);
    sub_10000F828(&_mh_execute_header, v27, v28, "%{public}s");
    sub_100010508();
    sub_100005F64();
  }

  v29 = sub_1003698E0(v20, &selRef_nickname);
  if (v30)
  {
    v31 = v29;
    v32 = v30;
    sub_10031E958(0xD000000000000011, 0x8000000100566280);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_10057D690;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100009D88();
    *(v33 + 32) = v31;
    *(v33 + 40) = v32;
    String.init(format:_:)();
    sub_10000A224();
  }

  else
  {
    v34 = [v20 handle];
    sub_10001AC50();
    sub_1003EA238();
    sub_10000A224();
  }

  sub_100006B30();
  sub_100008348();
}

uint64_t sub_1003EA4F8(uint64_t a1, void *a2)
{
  if (qword_1006A0B70 != -1)
  {
    sub_10000860C(&qword_1006A0B70);
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_100022D5C(v5, qword_1006BA6D0);
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    sub_100005274();
    v17 = sub_10000681C();
    *v2 = 136446210;
    sub_1000152BC();
    *(v2 + 4) = sub_10002741C(0xD000000000000013, v8, v9);
    sub_100005FCC(&_mh_execute_header, v10, v11, "%{public}s");
    sub_100009B7C(v17);
    sub_100005F64();
    sub_100006868();
  }

  v12 = [objc_allocWithZone(TUContactsDataProviderFetchRequest) initWithHandle:a1];
  v13 = [a2 executeFetchRequest:v12];
  v14 = [v13 localizedName];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v15;
}

void sub_1003EA65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100010094();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  if (qword_1006A0B70 != -1)
  {
    sub_10000860C(&qword_1006A0B70);
  }

  v27 = type metadata accessor for Logger();
  v28 = sub_100022D5C(v27, qword_1006BA6D0);
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    sub_100005274();
    v30 = sub_10000681C();
    a10 = v30;
    *v20 = 136446210;
    sub_100018314();
    *(v20 + 4) = sub_10002741C(v31 | 8, v32 | 0x8000000000000000, &a10);
    _os_log_impl(&_mh_execute_header, v28, v29, "%{public}s", v20, 0xCu);
    sub_100009B7C(v30);
    sub_100005F64();
    sub_100006868();
  }

  v33 = 0;
  v34 = 0;
  switch([v26 sessionEventType])
  {
    case 1uLL:
      v35 = "RESUMED_PLAYBACK";
      goto LABEL_21;
    case 2uLL:
      v36 = 0x505F444553554150;
      v37 = 0xEF4B43414259414CLL;
      goto LABEL_28;
    case 3uLL:
      v36 = 0x4C505F4445564F4DLL;
      v37 = 0xEE004B4341425941;
      goto LABEL_28;
    case 4uLL:
      sub_1003698E0(v26, &selRef_item);
      sub_10000A224();
      if (!v44)
      {
        goto LABEL_34;
      }

      v45 = 0x455050494B53;
      goto LABEL_17;
    case 8uLL:
      sub_1003698E0(v26, &selRef_item);
      sub_10000A224();
      if (!v47)
      {
        goto LABEL_34;
      }

      sub_100018314();
      v39 = v48 | 2;
      v46 = (v49 | 0x8000000000000000);
      goto LABEL_32;
    case 0xAuLL:
      sub_1003698E0(v26, &selRef_item);
      sub_10000A224();
      if (!v38)
      {
        goto LABEL_34;
      }

      v39 = 0x40255F4445444441;
      goto LABEL_31;
    case 0xBuLL:
      v36 = 0x5F44455441445055;
      v37 = 0xED00004555455551;
      goto LABEL_28;
    case 0xCuLL:
      v40 = sub_10000C27C();
      v41 = [v40 activity];

      LODWORD(v40) = [v41 isScreenSharingActivity];
      if (v40)
      {
        v42 = sub_10000C27C();
        v43 = [v42 isLocallyInitiated];

        if (v43)
        {
          goto LABEL_34;
        }
      }

      v53 = sub_10000C27C();
      v34 = [v53 activity];

      v33 = [v34 isScreenSharingActivity];
      if (v33)
      {
        sub_100018314();
        v36 = v54 | 6;
        goto LABEL_27;
      }

      if (v24)
      {
        sub_10031E958(0x5F44455452415453, 0xEA00000000004025);
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_10057D690;
        v58 = sub_10000C27C();
        v59 = [v58 activity];

        v60 = [v59 metadata];
        if (v60)
        {
          v60 = sub_1003EB9B4(v60);
          v62 = v61;
        }

        else
        {
          v62 = 0;
        }

        *(v57 + 56) = &type metadata for String;
        *(v57 + 64) = sub_100009D88();
        if (v62)
        {
          v64 = v60;
        }

        else
        {
          v64 = 0;
        }

        v65 = 0xE000000000000000;
        if (v62)
        {
          v65 = v62;
        }

        *(v57 + 32) = v64;
        *(v57 + 40) = v65;
        goto LABEL_33;
      }

      sub_1003698E0(v26, &selRef_item);
      sub_10000A224();
      if (!v63)
      {
        goto LABEL_34;
      }

      v45 = 0x455452415453;
LABEL_17:
      v39 = v45 & 0xFFFFFFFFFFFFLL | 0x5F44000000000000;
      v46 = 0xEA00000000004025;
      goto LABEL_32;
    case 0xDuLL:
      if ([v26 sessionEventType] == 13 && (v50 = objc_msgSend(v26, "session"), v34 = objc_msgSend(v50, "activity"), v50, v33 = objc_msgSend(v34, "isScreenSharingActivity"), v34, v33))
      {
        sub_100018314();
        v36 = v52 | 4;
LABEL_27:
        v37 = (v51 | 0x8000000000000000);
LABEL_28:
        sub_10031E958(v36, v37);
        sub_10000A224();
      }

      else
      {
        sub_1003698E0(v26, &selRef_item);
        sub_10000A224();
        if (v55)
        {
          v39 = 0x40255F4445444E45;
LABEL_31:
          v46 = 0xE800000000000000;
LABEL_32:
          sub_10031E958(v39, v46);
          sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
          v56 = swift_allocObject();
          *(v56 + 16) = xmmword_10057D690;
          *(v56 + 56) = &type metadata for String;
          *(v56 + 64) = sub_100009D88();
          *(v56 + 32) = v33;
          *(v56 + 40) = v34;
LABEL_33:
          String.init(format:_:)();
          sub_10000A224();
        }
      }

LABEL_34:
      sub_100006B30();
      sub_100008348();
      return;
    case 0xEuLL:
      v35 = "ACTIVITY_CHANGED";
LABEL_21:
      v37 = ((v35 - 32) | 0x8000000000000000);
      v36 = 0xD000000000000010;
      goto LABEL_28;
    default:
      goto LABEL_34;
  }
}

uint64_t *sub_1003EABDC(uint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    sub_1003EB1A8(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

Swift::Int sub_1003EAC78(unint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = &_swiftEmptySetSingleton;
    v4 = a2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      while (1)
      {
        if (!__CocoaSet.Iterator.next()())
        {

          return v3;
        }

        sub_10039FBE8();
        swift_dynamicCast();
        v5 = [v20 handle];
        v6 = [v4 handle];
        v7 = [v5 isEquivalentToHandle:v6];

        if (v7)
        {
          break;
        }
      }

      v8 = *(&_swiftEmptySetSingleton + 2);
      if (*(&_swiftEmptySetSingleton + 3) <= v8)
      {
        sub_100396BE4(v8 + 1);
      }

      v3 = &_swiftEmptySetSingleton;
      result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
      v10 = &_swiftEmptySetSingleton + 56;
      v11 = -1 << *(&_swiftEmptySetSingleton + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(&_swiftEmptySetSingleton + (v12 >> 6) + 7)) == 0)
      {
        break;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(&_swiftEmptySetSingleton + (v12 >> 6) + 7))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_17:
      *&v10[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
      *(*(&_swiftEmptySetSingleton + 6) + 8 * v14) = v20;
      ++*(&_swiftEmptySetSingleton + 2);
    }

    v15 = 0;
    v16 = (63 - v11) >> 6;
    while (++v13 != v16 || (v15 & 1) == 0)
    {
      v17 = v13 == v16;
      if (v13 == v16)
      {
        v13 = 0;
      }

      v15 |= v17;
      v18 = *&v10[8 * v13];
      if (v18 != -1)
      {
        v14 = __clz(__rbit64(~v18)) + (v13 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v19 = a2;
    v3 = sub_1003EAEC4(a1, v19);

    return v3;
  }

  return result;
}

uint64_t *sub_1003EAEC4(unint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v33 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v30 = v3;
    v28 = &v28;
    __chkstk_darwin(v9);
    v29 = v7;
    v31 = (&v28 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_100396044(0, v7, v31);
    v32 = 0;
    v7 = 0;
    v34 = v4;
    v3 = v4 + 56;
    v10 = 1 << *(v4 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v4 + 56);
    v8 = (v10 + 63) >> 6;
    while (v12)
    {
      v13 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v4 = v13 | (v7 << 6);
      v14 = v34;
LABEL_12:
      v17 = *(*(v14 + 48) + 8 * v4);
      v18 = [v17 handle];
      v19 = [v33 handle];
      v20 = [v18 isEquivalentToHandle:v19];

      if (v20)
      {
        *(v31 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v4;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_16:
          sub_1003EB814(v31, v29, v32, v14, &qword_1006A7A68, &qword_1005833B0);
          v23 = v22;
          v24 = v33;

          return v23;
        }
      }
    }

    v15 = v7;
    v14 = v34;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v8)
      {
        goto LABEL_16;
      }

      v16 = *(v3 + 8 * v7);
      ++v15;
      if (v16)
      {
        v12 = (v16 - 1) & v16;
        v4 = __clz(__rbit64(v16)) | (v7 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();
  v27 = v33;
  v23 = sub_1003EABDC(v26, v7, v4, v27);

  return v23;
}

void sub_1003EB1A8(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + 8 * v13);
    v15 = [v14 handle];
    v16 = [a4 handle];
    v17 = [v15 isEquivalentToHandle:v16];

    if (v17)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:

        sub_1003EB814(a1, a2, v21, a3, &qword_1006A7A68, &qword_1005833B0);

        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1003EB370(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = type metadata accessor for Participant();
  v8 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      sub_10026D814(&qword_1006A7C68, &unk_100583510);
      v10 = static _SetStorage.allocate(capacity:)();
      v11 = v10;
      if (a2 < 1)
      {
        v12 = 0;
      }

      else
      {
        v12 = *a1;
      }

      v13 = 0;
      v14 = v10 + 56;
      v33 = (v8 + 32);
      v34 = v8 + 16;
      v32 = a4;
      while (v12)
      {
        v15 = __clz(__rbit64(v12));
        v35 = (v12 - 1) & v12;
LABEL_16:
        v19 = *(a4 + 48);
        v36 = *(v8 + 72);
        (*(v8 + 16))(v37, v19 + v36 * (v15 | (v13 << 6)), v38);
        sub_1003EBA24(&unk_1006A4860, &type metadata accessor for Participant, &protocol conformance descriptor for Participant);
        dispatch thunk of Hashable._rawHashValue(seed:)();
        sub_10000EAC4();
        if (((v22 << v21) & ~*(v14 + 8 * v20)) == 0)
        {
          sub_10000E7C0();
          while (++v23 != v25 || (v24 & 1) == 0)
          {
            v26 = v23 == v25;
            if (v23 == v25)
            {
              v23 = 0;
            }

            v24 |= v26;
            if (*(v14 + 8 * v23) != -1)
            {
              sub_10000A950();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        sub_10000FE84();
LABEL_25:
        sub_100007DC0();
        *(v14 + v27) |= v28;
        (*v33)(*(v11 + 48) + v29 * v36, v37, v38);
        ++*(v11 + 16);
        if (__OFSUB__(a3--, 1))
        {
          goto LABEL_30;
        }

        a4 = v32;
        v12 = v35;
        if (!a3)
        {
          goto LABEL_27;
        }
      }

      v16 = v13;
      while (1)
      {
        v13 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v13 >= a2)
        {
          goto LABEL_27;
        }

        ++v16;
        if (a1[v13])
        {
          sub_100007C8C();
          v35 = v18 & v17;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  else
  {
LABEL_27:
  }
}

void sub_1003EB660(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    if (*(a4 + 16) != a3)
    {
      sub_10026D814(&unk_1006A7B50, &qword_100583440);
      v8 = static _SetStorage.allocate(capacity:)();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 56;
      while (v10)
      {
        sub_10000C85C();
LABEL_16:
        v17 = *(*(a4 + 48) + 8 * (v13 | (v11 << 6)));
        v18 = static Hasher._hash(seed:_:)() & ~(-1 << *(v9 + 32));
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          sub_10000E7C0();
          while (++v19 != v21 || (v20 & 1) == 0)
          {
            v22 = v19 == v21;
            if (v19 == v21)
            {
              v19 = 0;
            }

            v20 |= v22;
            if (*(v12 + 8 * v19) != -1)
            {
              sub_10000A950();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        sub_10000FE84();
LABEL_25:
        sub_100007DC0();
        *(v12 + v23) |= v24;
        *(*(v9 + 48) + 8 * v25) = v17;
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_30;
        }

        if (!v5)
        {
          goto LABEL_5;
        }
      }

      v14 = v11;
      while (1)
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v11 >= a2)
        {
          goto LABEL_5;
        }

        ++v14;
        if (a1[v11])
        {
          sub_100007C8C();
          v10 = v16 & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void sub_1003EB814(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    v7 = a3;
    if (*(a4 + 16) != a3)
    {
      sub_10026D814(a5, a6);
      v10 = static _SetStorage.allocate(capacity:)();
      v11 = v10;
      if (a2 < 1)
      {
        v12 = 0;
      }

      else
      {
        v12 = *a1;
      }

      v13 = 0;
      v14 = v10 + 56;
      while (v12)
      {
        sub_10000C85C();
LABEL_16:
        v19 = v11[5];
        v20 = *(*(a4 + 48) + 8 * (v15 | (v13 << 6)));
        NSObject._rawHashValue(seed:)(v19);
        sub_10000EAC4();
        if (((v23 << v22) & ~*(v14 + 8 * v21)) == 0)
        {
          sub_10000E7C0();
          while (++v24 != v26 || (v25 & 1) == 0)
          {
            v27 = v24 == v26;
            if (v24 == v26)
            {
              v24 = 0;
            }

            v25 |= v27;
            if (*(v14 + 8 * v24) != -1)
            {
              sub_10000A950();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        sub_10000FE84();
LABEL_25:
        sub_100007DC0();
        *(v14 + v28) |= v29;
        *(v11[6] + 8 * v30) = v20;
        ++v11[2];
        if (__OFSUB__(v7--, 1))
        {
          goto LABEL_30;
        }

        if (!v7)
        {
          goto LABEL_5;
        }
      }

      v16 = v13;
      while (1)
      {
        v13 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v13 >= a2)
        {
          goto LABEL_5;
        }

        ++v16;
        if (a1[v13])
        {
          sub_100007C8C();
          v12 = v18 & v17;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_1003EB9B4(void *a1)
{
  v2 = [a1 title];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1003EBA24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1003EBA6C(void *a1)
{
  v3 = [objc_allocWithZone(type metadata accessor for CallCenterObserver()) init];
  v4 = [objc_opt_self() sharedAudioSystemController];
  result = [objc_opt_self() defaultCenter];
  if (v4)
  {
    v6 = result;
    v7 = objc_allocWithZone(v1);

    return sub_1003ED960(v4, v3, v6, a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EBB34(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_routesDidChangeHandler);
  v4 = *(v2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_routesDidChangeHandler);
  v5 = *(v2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_routesDidChangeHandler + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000051F8(v4, v5);
}

void sub_1003EBB54()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_audioRoutes);
  v2 = sub_10000B6F4(v1);

  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {
LABEL_10:

      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ([v4 isCurrentlyPicked])
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t sub_1003EBC38(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  if ([v1 isBluetooth] & 1) != 0 || (objc_msgSend(v1, "isWiredHeadset"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isWiredHeadphones];
  }

  return v2;
}

void sub_1003EBCB0()
{
  sub_100005EF4();
  v2 = v1;
  v3 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v9 = v8 - v7;
  v10 = *(v0 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_queue);
  *(v8 - v7) = v10;
  (*(v5 + 104))(v8 - v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v12 = (*(v5 + 8))(v9, v3);
  if ((v10 & 1) == 0)
  {
    goto LABEL_23;
  }

  v13 = sub_100010B20(v12);
  v62 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v14 = sub_100009F00(v62);
  *(v14 + 16) = xmmword_10057D690;
  sub_1000083D0();
  v61 = sub_100006AF0(v15, v16, v17);
  *(v14 + 56) = v61;
  sub_1000083D0();
  v60 = sub_100290B1C(v18, v19, v20);
  *(v14 + 64) = v60;
  *(v14 + 32) = v2;
  v64 = v2;
  v21 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("route: %@", 9, 2, &_mh_execute_header, v13, v21, v14);

  v63 = v0;
  v59 = OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_audioRoutes;
  v22 = *(v0 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_audioRoutes);
  v23 = sub_10000B6F4(v22);

  for (i = 0; ; ++i)
  {
    if (v23 == i)
    {

      v38 = sub_100010B20(v37);
      v39 = static os_log_type_t.error.getter();
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_10057D6A0;
      *(v40 + 56) = v61;
      *(v40 + 64) = v60;
      *(v40 + 32) = v64;
      v41 = *(v0 + v59);
      *(v40 + 96) = sub_10026D814(&qword_1006AA378, &qword_1005863E8);
      *(v40 + 104) = sub_10001000C(&unk_1006AA380, &qword_1006AA378, &qword_1005863E8, &protocol conformance descriptor for [A]);
      *(v40 + 72) = v41;
      v42 = v64;

      os_log(_:dso:log:type:_:)("Could not find route to pick for %@. All audio routes: %@", 57, 2, &_mh_execute_header, v38, v39, v40);

      goto LABEL_20;
    }

    if ((v22 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v25 = *(v22 + 8 * i + 32);
    }

    v26 = v25;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v27 = [v25 uniqueIdentifier];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = [v64 uniqueIdentifier];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    if (v28 == v32 && v30 == v34)
    {

LABEL_17:

      v43 = *(v0 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_localAudioSystemProvider + 24);
      v44 = *(v0 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_localAudioSystemProvider + 32);
      sub_100009B14((v0 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_localAudioSystemProvider), v43);
      v45 = (*(v44 + 40))(v26, v43, v44);
      v46 = OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioInterruptionState;
      if (*(v0 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioInterruptionState))
      {
        v47 = *(v0 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_lastUserPickedRoute);
        *(v0 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_lastUserPickedRoute) = v26;
      }

      else
      {
        v48 = sub_100010B20(v45);
        v49 = sub_100009F00(v62);
        *(v49 + 16) = xmmword_10057D690;
        sub_1000083D0();
        *(v49 + 56) = sub_100006AF0(v50, v51, v52);
        sub_1000083D0();
        *(v49 + 64) = sub_100290B1C(v53, v54, v55);
        *(v49 + 32) = v26;
        v56 = v26;
        v57 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Call does not have audio interruption so setting prematurely selected audio route to %@", 87, 2, &_mh_execute_header, v48, v57, v49);

        v58 = *(v63 + v46);
        *(v63 + v46) = v56;
        sub_1003ED934(v58);
      }

LABEL_20:
      sub_100005EDC();
      return;
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v36)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1003EC2D0()
{
  sub_100005EF4();
  v46 = v1;
  v44 = v2;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v51 = v4;
  v52 = v3;
  __chkstk_darwin(v3);
  sub_100007FDC();
  v49 = v6 - v5;
  sub_10000D414();
  v50 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v48 = v7;
  __chkstk_darwin(v8);
  sub_100007FDC();
  v47 = v10 - v9;
  sub_10000D414();
  v11 = type metadata accessor for DispatchTimeInterval();
  sub_100007FEC();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100007FDC();
  v17 = (v16 - v15);
  v45 = type metadata accessor for DispatchWallTime();
  sub_100007FEC();
  v19 = v18;
  v21 = __chkstk_darwin(v20);
  v23 = v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = v43 - v24;
  sub_10000D414();
  v26 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_100007FDC();
  v32 = v31 - v30;
  v33 = *(v0 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_queue);
  *(v31 - v30) = v33;
  (*(v28 + 104))(v31 - v30, enum case for DispatchPredicate.onQueue(_:), v26);
  v43[1] = v33;
  LOBYTE(v33) = _dispatchPreconditionTest(_:)();
  (*(v28 + 8))(v32, v26);
  if (v33)
  {
    static DispatchWallTime.now()();
    *v17 = 5;
    (*(v13 + 104))(v17, enum case for DispatchTimeInterval.seconds(_:), v11);
    + infix(_:_:)();
    (*(v13 + 8))(v17, v11);
    v43[0] = *(v19 + 8);
    v34 = v45;
    (v43[0])(v23, v45);
    v54[4] = v44;
    v54[5] = v46;
    sub_100009FE4();
    sub_1000081D4(COERCE_DOUBLE(1107296256));
    v54[2] = v35;
    v54[3] = &unk_10062E420;
    v36 = _Block_copy(v54);

    v37 = v47;
    static DispatchQoS.unspecified.getter();
    v53 = _swiftEmptyArrayStorage;
    sub_10000AC00();
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_10000826C();
    sub_10001000C(v38, v39, &unk_10057D6E0, v40);
    v41 = v49;
    v42 = v52;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(wallDeadline:qos:flags:execute:)();
    _Block_release(v36);
    (*(v51 + 8))(v41, v42);
    (*(v48 + 8))(v37, v50);
    (v43[0])(v25, v34);

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003EC740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *&v4[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_queue];
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if (v15)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = _swiftEmptyArrayStorage;
    v18 = dispatch_semaphore_create(0);
    v28 = a2;
    v29 = a4;
    v20 = *&v4[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_localAudioSystemProvider + 24];
    v19 = *&v4[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_localAudioSystemProvider + 32];
    v27 = sub_100009B14(&v4[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_localAudioSystemProvider], v20);
    v21 = swift_allocObject();
    v21[2] = v17;
    v21[3] = v4;
    v21[4] = v18;
    v26 = *(v19 + 32);

    v22 = v4;
    v23 = v18;
    v26(a1, v28, a3, v29, sub_1003ED954, v21, v20, v19);

    OS_dispatch_semaphore.wait()();

    swift_beginAccess();
    v24 = *(v17 + 16);

    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003EC988(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if (!a1)
  {
    v17 = *(v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioInterruptionState);
    *(v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioInterruptionState) = 0;
LABEL_8:
    sub_1003ED934(v17);
    return;
  }

  v9 = [a1 hasAudioInterruption];
  v10 = OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioInterruptionState;
  v11 = *(v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioInterruptionState);
  if (v9)
  {
    if (v11 >= 2)
    {
      v12 = v11;
      v13 = sub_100010B20(v12);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_10057D690;
      *(v14 + 56) = sub_100006AF0(0, &unk_1006A2BB0, TUAudioRoute_ptr);
      *(v14 + 64) = sub_100290B1C(&qword_1006AA370, &unk_1006A2BB0, TUAudioRoute_ptr);
      *(v14 + 32) = v12;
      v15 = v12;
      v16 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Picking prematurely selected audio route now that audio interruption has begun: %@", 82, 2, &_mh_execute_header, v13, v16, v14);

      sub_1003EBCB0();
      sub_1003ED934(v11);
      v11 = *(v1 + v10);
    }

    *(v1 + v10) = 1;
    v17 = v11;
    goto LABEL_8;
  }

  if (v11 == 1)
  {
    *(v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioInterruptionState) = 0;
  }
}

Swift::Int sub_1003ECBE0(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = sub_1000115DC(a1);
  swift_beginAccess();
  *(a2 + 16) = v4;

  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_1003ECC5C(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v38 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v36 = *(v5 - 8);
  v37 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = sub_10001B8C8(a1, &selRef_audioCategory);
    v34 = v10;
    v35 = v9;
    v11 = sub_10001B8C8(a1, &selRef_audioMode);
    v32 = v12;
    v33 = v11;
    v6 = [a1 hasAudioInterruption];
    v13 = v6;
  }

  else
  {
    v13 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
  }

  v14 = sub_100010B20(v6);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10057D6A0;
  v16 = sub_100291454(a1);
  v18 = v17;
  *(v15 + 56) = &type metadata for String;
  v19 = sub_100009D88();
  *(v15 + 64) = v19;
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  LOBYTE(aBlock[0]) = v13;
  v20 = String.init<A>(reflecting:)();
  *(v15 + 96) = &type metadata for String;
  *(v15 + 104) = v19;
  *(v15 + 72) = v20;
  *(v15 + 80) = v21;
  v22 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Updating audio information using call: %@; callHasAudioInterruption: %@", 71, 2, &_mh_execute_header, v14, v22, v15);

  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = v1;
  v24 = v34;
  v23[4] = v35;
  v23[5] = v24;
  v25 = v32;
  v23[6] = v33;
  v23[7] = v25;
  aBlock[4] = sub_1003ED944;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062E4C0;
  v26 = _Block_copy(aBlock);
  v27 = a1;
  v28 = v1;
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0, &protocol conformance descriptor for [A]);
  v29 = v38;
  v30 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);
  (*(v39 + 8))(v29, v30);
  (*(v36 + 8))(v8, v37);
}

void sub_1003ED028(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    v12 = *(a2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_lastUserPickedRoute);
    *(a2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_lastUserPickedRoute) = 0;
  }

  sub_1003EC988(a1);
  v14 = (a2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioCategory);
  v15 = *(a2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioCategory + 8);
  v16 = 1;
  if (v15 && a4)
  {
    v13 = *v14;
    if (*v14 != a3 || v15 != a4)
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v16 = v13;
    }
  }

  v85 = a6;
  v86 = a3;
  v18 = (a2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioMode);
  v19 = *(a2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioMode + 8);
  v83 = a4;
  v84 = a5;
  if (v19 && a6 && ((v13 = *v18, *v18 == a5) ? (v20 = v19 == a6) : (v20 = 0), !v20))
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((v16 & v13 & 1) == 0)
    {
LABEL_17:
      sub_1003EBB54();
      v22 = v21;
      v81 = sub_1003EBC38(v21);

      v82 = sub_100010B20(v23);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1005800F0;
      v25 = a4;
      v26 = *v14;
      v27 = v14[1];

      v28 = sub_10001E478(v26, v27);
      v30 = v29;

      *(v24 + 56) = &type metadata for String;
      v31 = sub_100009D88();
      *(v24 + 64) = v31;
      *(v24 + 32) = v28;
      *(v24 + 40) = v30;
      v32 = sub_10001E478(v86, v25);
      *(v24 + 96) = &type metadata for String;
      *(v24 + 104) = v31;
      *(v24 + 72) = v32;
      *(v24 + 80) = v33;
      v34 = *v18;
      v35 = v18[1];

      v36 = sub_10001E478(v34, v35);
      v38 = v37;

      *(v24 + 136) = &type metadata for String;
      *(v24 + 144) = v31;
      *(v24 + 112) = v36;
      *(v24 + 120) = v38;
      v39 = sub_10001E478(v84, v85);
      *(v24 + 176) = &type metadata for String;
      *(v24 + 184) = v31;
      *(v24 + 152) = v39;
      *(v24 + 160) = v40;
      sub_1003EBB54();
      v42 = v41;
      v43 = sub_100291600(v41);
      v45 = v44;

      *(v24 + 216) = &type metadata for String;
      *(v24 + 224) = v31;
      *(v24 + 192) = v43;
      *(v24 + 200) = v45;
      v46 = v81;
      v47 = String.init<A>(reflecting:)();
      *(v24 + 256) = &type metadata for String;
      *(v24 + 264) = v31;
      v48 = v84;
      *(v24 + 232) = v47;
      *(v24 + 240) = v49;
      v50 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Audio category change from %@ -> %@ mode %@ -> %@ currentlyPickedRoute: %@ shouldPickLastUserPickedRoute: %@", 108, 2, &_mh_execute_header, v82, v50, v24);

      v51 = v85;

      goto LABEL_20;
    }
  }

  else if ((v16 & 1) == 0)
  {
    goto LABEL_17;
  }

  v52 = sub_100010B20(v13);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_10057CA70;
  v54 = *v14;
  v55 = v14[1];

  v56 = sub_10001E478(v54, v55);
  v58 = v57;

  *(v53 + 56) = &type metadata for String;
  v59 = sub_100009D88();
  *(v53 + 64) = v59;
  *(v53 + 32) = v56;
  *(v53 + 40) = v58;
  v60 = sub_10001E478(v86, a4);
  *(v53 + 96) = &type metadata for String;
  *(v53 + 104) = v59;
  *(v53 + 72) = v60;
  *(v53 + 80) = v61;
  v62 = *v18;
  v63 = v18[1];

  v64 = sub_10001E478(v62, v63);
  v66 = v65;

  *(v53 + 136) = &type metadata for String;
  *(v53 + 144) = v59;
  *(v53 + 112) = v64;
  *(v53 + 120) = v66;
  v48 = v84;
  v51 = v85;
  v67 = sub_10001E478(v84, v85);
  *(v53 + 176) = &type metadata for String;
  *(v53 + 184) = v59;
  *(v53 + 152) = v67;
  *(v53 + 160) = v68;
  v69 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Audio category change from %@ -> %@ mode %@ -> %@ does not require route re-pick", 80, 2, &_mh_execute_header, v52, v69, v53);

  v46 = 1;
LABEL_20:
  *v14 = v86;
  v14[1] = v83;

  *v18 = v48;
  v18[1] = v51;

  sub_100010E74();
  v70 = OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_lastUserPickedRoute;
  v71 = *(a2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_lastUserPickedRoute);
  if (v71)
  {
    if ((v46 & 1) == 0)
    {
      v72 = v71;
      v73 = sub_100010B20(v72);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_10057D690;
      v75 = *(a2 + v70);
      v76 = v75;
      v77 = sub_100291600(v75);
      v79 = v78;

      *(v74 + 56) = &type metadata for String;
      *(v74 + 64) = sub_100009D88();
      *(v74 + 32) = v77;
      *(v74 + 40) = v79;
      v80 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Re-picking last user picked route: %@", 37, 2, &_mh_execute_header, v73, v80, v74);

      sub_1003EBCB0();
    }
  }
}

BOOL sub_1003ED4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return !a4;
  }

  if (!a4)
  {
    return 0;
  }

  v6 = v4;
  v10 = a1 == a3 && a2 == a4;
  if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  v11 = OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_localAudioSystemProvider;
  sub_100009AB0(v6 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_localAudioSystemProvider, v18);
  sub_100009B14(v18, v19);
  DynamicType = swift_getDynamicType();
  v13 = v20;
  sub_100009B7C(v18);
  if (((*(v13 + 56))(a1, a2, DynamicType, v13) & 1) == 0)
  {
    return 0;
  }

  sub_100009AB0(v6 + v11, v18);
  sub_100009B14(v18, v19);
  v14 = 1;
  v15 = swift_getDynamicType();
  v16 = v20;
  sub_100009B7C(v18);
  if (((*(v16 + 56))(a3, a4, v15, v16) & 1) == 0)
  {
    return 0;
  }

  return v14;
}

void sub_1003ED648()
{
  type metadata accessor for Notification();
  sub_100007FEC();
  __chkstk_darwin(v0);
  sub_100007FDC();
  v2 = sub_100010B20(v1);
  v3 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v4 = sub_100009F00(v3);
  *(v4 + 16) = xmmword_10057D690;
  sub_1000083D0();
  v5();
  v6 = String.init<A>(reflecting:)();
  v8 = v7;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100009D88();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("notification: %@", 16, 2, &_mh_execute_header, v2, v9, v4);

  v10 = sub_10002E324();
  sub_1003ECC5C(v10);
}

uint64_t sub_1003ED90C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1003ED934(id a1)
{
  if (a1 >= 2)
  {
  }
}

char *sub_1003ED960(uint64_t a1, uint64_t a2, void *a3, void *a4, char *a5)
{
  ObjectType = swift_getObjectType();
  v25[3] = sub_100006AF0(0, &qword_1006AA390, TUAudioSystemController_ptr);
  v25[4] = &off_100627548;
  v25[0] = a1;
  v11 = &a5[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_routesDidChangeHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&a5[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_audioRoutes] = _swiftEmptyArrayStorage;
  v12 = &a5[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioCategory];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &a5[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioMode];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&a5[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_lastUserPickedRoute] = 0;
  *&a5[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioInterruptionState] = 0;
  *&a5[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_queue] = a4;
  sub_100009AB0(v25, &a5[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_localAudioSystemProvider]);
  *&a5[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callCenterObserver] = a2;
  v14 = objc_allocWithZone(CSDTTYProviderObserver);
  v15 = a4;
  v16 = [v14 init];
  *&a5[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_ttyProviderObserver] = v16;
  v24.receiver = a5;
  v24.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v24, "init");
  sub_100009AB0(&v17[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_localAudioSystemProvider], v23);
  sub_10026D814(&qword_1006AA398, &unk_1005863F0);
  if (swift_dynamicCast())
  {
    [v22 setDelegate:v17];
  }

  v18 = OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callCenterObserver;
  [*&v17[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callCenterObserver] setTriggers:3073];
  v19 = *&v17[v18];
  v20 = v17;
  [v19 setDelegate:v20];
  [a3 addObserver:v20 selector:"audioRouteInformationChangedWithNotification:" name:TUAudioSystemAudioPickableRoutesChanged object:0];

  [a3 addObserver:v20 selector:"audioInterruptionPropertiesChangedWithNotification:" name:@"CSDCallAudioInterruptionPropertiesChangedNotification" object:0];
  sub_100009B7C(v25);
  return v20;
}

void *sub_1003EDBBC(uint64_t a1, uint64_t a2)
{
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10039B840(_swiftEmptyArrayStorage);
  }

  else
  {
    v5 = &_swiftEmptySetSingleton;
  }

  v2[3] = a2;
  v2[4] = v5;
  v2[2] = a1;
  return v2;
}

BOOL sub_1003EDC2C(void *a1)
{
  swift_beginAccess();

  sub_10042296C();
  v3 = v2;

  if ((v3 & 1) == 0)
  {
    swift_beginAccess();
    sub_1003968E0(&v5, a1);
    swift_endAccess();
  }

  return (v3 & 1) == 0;
}

uint64_t sub_1003EDCD8()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if ((v1 & 0xC000000000000001) == 0)
  {
    return *(v1 + 16);
  }

  sub_1000087D0();
  v2 = __CocoaSet.count.getter();

  return v2;
}

void sub_1003EDD40()
{
  v1 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  __chkstk_darwin(v1 - 8);
  v49 = v42 - v2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v46 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v45 = v42 - v8;
  v9 = __chkstk_darwin(v7);
  v44 = v42 - v10;
  __chkstk_darwin(v9);
  v51 = v42 - v11;
  swift_beginAccess();
  v43 = *(v0 + 32);
  v12 = v43;
  if ((v43 & 0xC000000000000001) != 0)
  {
    sub_1000087D0();
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1003EE290();
    sub_1003EE2D4();
    Set.Iterator.init(_cocoa:)();
    v12 = v54;
    v13 = v55;
    v14 = v56;
    v15 = v57;
    v16 = v58;
  }

  else
  {
    v17 = -1 << *(v43 + 32);
    v13 = v43 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(v43 + 56);
    swift_bridgeObjectRetain_n();
    v15 = 0;
  }

  v42[1] = v14;
  v20 = (v14 + 64) >> 6;
  v50 = (v4 + 32);
  v47 = (v4 + 8);
  v48 = v12;
  v21 = 0.0;
  while (v12 < 0)
  {
    v27 = __CocoaSet.Iterator.next()();
    if (!v27 || (v52 = v27, sub_1003EE290(), swift_dynamicCast(), v26 = v53, v24 = v15, v25 = v16, !v53))
    {
LABEL_25:
      sub_100022DDC(v48);

      return;
    }

LABEL_17:
    v28 = [v26 recordingEndedDate];
    if (v28)
    {
      v29 = v28;
      v30 = v44;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = v49;
      v32 = *v50;
      (*v50)(v49, v30, v3);
      sub_10000AF74(v31, 0, 1, v3);
      v32(v51, v31, v3);
    }

    else
    {
      v33 = v49;
      sub_10000AF74(v49, 1, 1, v3);
      static Date.now.getter();
      if (sub_100015468(v33, 1, v3) != 1)
      {
        sub_1003EE32C(v49);
      }
    }

    v34 = [v26 recordingStartedDate];
    if (v34)
    {
      v35 = v34;
      v36 = v46;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = v45;
      (*v50)(v45, v36, v3);
      v38 = v51;
      Date.timeIntervalSince(_:)();
      v40 = v39;
      v41 = *v47;
      (*v47)(v37, v3);
      v41(v38, v3);

      v21 = v21 + v40;
      v15 = v24;
      v16 = v25;
    }

    else
    {
      (*v47)(v51, v3);

      v15 = v24;
      v16 = v25;
      v21 = 0.0;
    }

    v12 = v48;
  }

  v22 = v15;
  v23 = v16;
  v24 = v15;
  if (v16)
  {
LABEL_13:
    v25 = (v23 - 1) & v23;
    v26 = *(*(v12 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
    if (!v26)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v20)
    {
      goto LABEL_25;
    }

    v23 = *(v13 + 8 * v24);
    ++v22;
    if (v23)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1003EE210()
{

  return v0;
}

uint64_t sub_1003EE238()
{
  sub_1003EE210();

  return _swift_deallocClassInstance(v0, 40, 7);
}

unint64_t sub_1003EE290()
{
  result = qword_1006A7A60;
  if (!qword_1006A7A60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A7A60);
  }

  return result;
}

unint64_t sub_1003EE2D4()
{
  result = qword_1006AA478;
  if (!qword_1006AA478)
  {
    sub_1003EE290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AA478);
  }

  return result;
}

uint64_t sub_1003EE32C(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003EE3A0(uint64_t a1, uint64_t a2)
{
  sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100006688();
  __chkstk_darwin(v3);
  v5 = &v25 - v4;
  v6 = sub_100006884();
  v8 = v7(v6);
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  v12 = *(a2 + 40);
  if (!v11 || (v13 = sub_100006884(), ((v12)(v13) & 1) != 0) && (v14 = sub_100006884(), ((v12)(v14) & 2) == 0) || (v15 = sub_100006884(), ((v12)(v15) & 1) != 0) && ((v21 = sub_100006884(), ((v12)(v21) & 4) != 0) || (v22 = sub_100006884(), ((v12)(v22) & 8) != 0)) || (v16 = sub_100006884(), v17(v16), v18 = type metadata accessor for UUID(), v19 = 1, v20 = sub_100015468(v5, 1, v18), sub_10001D334(v5), v20 != 1))
  {
    v23 = sub_100006884();
    return (v12(v23) >> 9) & 1;
  }

  return v19;
}

id sub_1003EE538@<X0>(void *a1@<X8>)
{
  result = sub_1003B940C();
  *a1 = result;
  return result;
}

uint64_t sub_1003EE6B8(uint64_t a1)
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

uint64_t sub_1003EE774@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = *((swift_isaMask & *v1) + 0x68);
  swift_beginAccess();
  return (*(*(*((v4 & v3) + 0x50) - 8) + 16))(a1, &v1[v5]);
}

double sub_1003EE828()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1003EE88C()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  sub_1000083C0();
  v3 = v2;
  sub_100006688();
  __chkstk_darwin(v4);
  v6 = &v22 - v5;
  v9 = *((v8 & v7) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  sub_1000083C0();
  v13 = v12;
  sub_100006688();
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  sub_1003EE774(v6);
  (*(v9 + 24))(v1, v9);
  (*(v3 + 8))(v6, v1);
  if (sub_100015468(v16, 1, AssociatedTypeWitness) == 1)
  {
    (*(v13 + 8))(v16, v11);
    LOBYTE(v11) = 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v18 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(*(AssociatedTypeWitness - 8) + 8))(v16, AssociatedTypeWitness);
    LODWORD(v11) = (v18 >> 5) & 1;
  }

  sub_1003EE828();
  v19 = Dictionary.values.getter();

  v23 = v19;
  __chkstk_darwin(v20);
  *(&v22 - 4) = v1;
  *(&v22 - 3) = v9;
  *(&v22 - 16) = v11;
  type metadata accessor for Dictionary.Values();
  swift_getWitnessTable();
  v23 = Sequence.filter(_:)();
  type metadata accessor for Array();
  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

uint64_t sub_1003EEBFC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 40);
  v7 = swift_checkMetadataState();
  return ((v6(v7, AssociatedConformanceWitness) & 1) == 0) | ((a2 & 1) == 0);
}

id sub_1003EECC4()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = *((swift_isaMask & *v0) + 0x50);
  sub_1000083C0();
  v6 = v5;
  sub_100006688();
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v10 = *((v3 & v2) + 0x68);
  swift_beginAccess();
  (*(v6 + 16))(v9, &v1[v10], v4);
  v11 = *((v3 & v2) + 0x58);
  (*(v11 + 160))(v4, v11);
  (*(v6 + 8))(v9, v4);
  v13 = type metadata accessor for NearbyDeviceMonitor(0, v4, v11, v12);
  v16.receiver = v1;
  v16.super_class = v13;
  return objc_msgSendSuper2(&v16, "dealloc");
}

uint64_t sub_1003EEE60(char *a1)
{
  v2 = *a1;
  v3 = swift_isaMask;

  sub_1000087F0();
  (*(*(*((v3 & v2) + 0x50) - 8) + 8))(&a1[*(v4 + 104)]);
  sub_1000087F0();
  sub_1000051F8(*&a1[*(v5 + 112)], *&a1[*(v5 + 112) + 8]);
  sub_1000087F0();
}

void sub_1003EEFC0(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v50 = _swiftEmptyDictionarySingleton;
  v63 = _swiftEmptyDictionarySingleton;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_10:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = (*(v3 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(v3 + 56) + 8 * v11);
    if (v15 >> 62)
    {
      v42 = v14;
      v43 = v13;
      v44 = _CocoaArrayWrapper.endIndex.getter();
      v13 = v43;
      v14 = v42;
      v16 = v44;
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 &= v7 - 1;
    if (v16)
    {
      v48 = v14;
      v49 = v13;
      v46 = v3;
      sub_10039C390(0, (v15 & 0xC000000000000001) == 0, v15);
      v51 = v15 & 0xC000000000000001;
      v47 = v2;
      if ((v15 & 0xC000000000000001) != 0)
      {

        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v15 + 32);

        v18 = v17;
      }

      v52 = v18;
      v19 = 1;
      while (v16 != v19)
      {
        if (v51)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_43;
          }

          if (v19 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v20 = *(v15 + 8 * v19 + 32);
        }

        v21 = v20;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_42;
        }

        if (*&v52[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_version] < *&v20[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_version])
        {

          ++v19;
          v52 = v21;
        }

        else
        {

          ++v19;
        }
      }

      v28 = v50;
      v29 = v50[2];
      if (v50[3] <= v29)
      {
        sub_100457E6C(v29 + 1, 1, v22, v23, v24, v25, v26, v27, v45, v46, v47, SBYTE4(v47), SHIWORD(v47), v48, v49, v15 & 0xFFFFFFFFFFFFFF8, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
        v28 = v63;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v30 = Hasher._finalize()();
      v31 = v28 + 8;
      v50 = v28;
      v32 = -1 << *(v28 + 32);
      v33 = v30 & ~v32;
      v34 = v33 >> 6;
      v35 = (-1 << v33) & ~v28[(v33 >> 6) + 8];
      v2 = v47;
      if (!v35)
      {
        v37 = 0;
        v38 = (63 - v32) >> 6;
        v3 = v46;
        while (++v34 != v38 || (v37 & 1) == 0)
        {
          v39 = v34 == v38;
          if (v34 == v38)
          {
            v34 = 0;
          }

          v37 |= v39;
          v40 = v31[v34];
          if (v40 != -1)
          {
            v36 = __clz(__rbit64(~v40)) + (v34 << 6);
            goto LABEL_37;
          }
        }

        goto LABEL_45;
      }

      v36 = __clz(__rbit64(v35)) | v33 & 0x7FFFFFFFFFFFFFC0;
      v3 = v46;
LABEL_37:
      *(v31 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      v41 = (v50[6] + 16 * v36);
      *v41 = v48;
      v41[1] = v49;
      *(v50[7] + 8 * v36) = v52;
      ++v50[2];
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_1003EF338(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

char *sub_1003EF398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for POSIXError();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &__src[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  __src[0] = 0;
  v10 = [v8 dataWithPropertyList:isa format:200 options:0 error:__src];

  v11 = __src[0];
  if (!v10)
  {
    v20 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v10;
  }

  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = Data.count.getter();
  v16 = __OFADD__(v15, 200);
  v17 = v15 + 200;
  if (v16)
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v18 = malloc(v17);
  if (!v18)
  {
    LODWORD(__src[0]) = 12;
    sub_1003F77E8(_swiftEmptyArrayStorage);
    sub_1003F7CA4(&unk_1006AA7D0, &type metadata accessor for POSIXError, &protocol conformance descriptor for POSIXError);
    _BridgedStoredNSError.init(_:userInfo:)();
    POSIXError._nsError.getter();
    (*(v5 + 8))(v7, v4);
    swift_willThrow();
    sub_100049B14(v12, v14);
    return v10;
  }

  v10 = v18;
  bzero(__src + 4, 0xC4uLL);
  LODWORD(__src[0]) = 1;
  sub_1003F7BEC(a1, a2, &__src[17], &v24);
  v19 = Data.count.getter();
  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

  if (HIDWORD(v19))
  {
    goto LABEL_12;
  }

  HIDWORD(__src[0]) = v19;
  memcpy(v10, __src, 0xC8uLL);
  Data.count.getter();
  Data.copyBytes(to:count:)();
  sub_100049B14(v12, v14);
  return v10;
}

id sub_1003EF6B0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithArray:isa];

  return v2;
}

double sub_1003EF728(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  type metadata accessor for ConversationLinkSyncManager();
  return sub_1003EF758(v2);
}

double sub_1003EF758(char a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  if (*(&v24 + 1))
  {
    if (swift_dynamicCast())
    {
      v5 = v22;
      if (qword_1006A0B20 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_10000AF9C(v6, qword_1006BA5E0);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 134217984;
        *(v9 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v7, v8, "ConversationLinkSync: randomCheckInInterval: defaults overriding {overrideInterval: %f)}", v9, 0xCu);
      }

      return v5;
    }
  }

  else
  {
    sub_100009A04(v25, &unk_1006A2D10, &unk_10057D940);
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v10 = 1.0;
      v11 = 4.0;
    }

    else
    {
      v11 = 40.0;
      v10 = 20.0;
    }

    sub_1003F79B4(v10, v11);
    v5 = v12;
  }

  else
  {
    v5 = 0.01;
  }

  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000AF9C(v13, qword_1006BA5E0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v25[0] = v17;
    *v16 = 134218242;
    *(v16 + 4) = v5;
    *(v16 + 12) = 2080;
    v18 = String.init<A>(reflecting:)();
    v20 = sub_10002741C(v18, v19, v25);

    *(v16 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "ConversationLinkSync: randomCheckInInterval: calculated {interval: %f, scheduleMode: %s}", v16, 0x16u);
    sub_100009B7C(v17);
  }

  return v5;
}

uint64_t sub_1003EFAA4()
{
  os_state_remove_handler();
  sub_100060500(v0 + 16);
  sub_100009B7C((v0 + 32));

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1003EFB0C()
{
  sub_1003EFAA4();

  return _swift_deallocClassInstance(v0, 136, 7);
}

uint64_t sub_1003EFB64(char a1)
{
  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10057D690;
  *(v2 + 32) = sub_1004330F4();
  *(v2 + 40) = v3;
  if (a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  sub_1003EFBF8(v2, v4);
}

void sub_1003EFC74()
{
  sub_100005EF4();
  v20 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v9);
  sub_100007FDC();
  v21 = sub_100007CD8();
  sub_100007FEC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10000E4F4();
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  *(v13 + 24) = v8;
  *(v13 + 32) = v6;
  v22[4] = v4;
  v22[5] = v13;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v22[2] = v14;
  v22[3] = v20;
  v15 = _Block_copy(v22);

  static DispatchQoS.unspecified.getter();
  sub_10001053C();
  sub_1003F7CA4(v16, v17, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F310();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  v18 = sub_100007764();
  v19(v18);
  (*(v11 + 8))(v1, v21);

  sub_100005EDC();
}

void sub_1003EFEA4()
{
  sub_100005EF4();
  v2 = v1;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v3);
  sub_100007FDC();
  sub_100007CD8();
  sub_100007FEC();
  __chkstk_darwin(v4);
  sub_10000E4F4();
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  *(v5 + 24) = v2;
  v14[4] = sub_1003F7D48;
  v14[5] = v5;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v14[2] = v6;
  v14[3] = &unk_10062E820;
  v7 = _Block_copy(v14);

  static DispatchQoS.unspecified.getter();
  sub_10001053C();
  sub_1003F7CA4(v8, v9, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F310();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v7);
  v10 = sub_100007764();
  v11(v10);
  v12 = sub_10000BAE0();
  v13(v12);

  sub_100005EDC();
}

void sub_1003F00CC()
{
  sub_100005EF4();
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v1);
  sub_100007FDC();
  sub_100007CD8();
  sub_100007FEC();
  __chkstk_darwin(v2);
  sub_10000E4F4();
  v11[4] = sub_1003F7D40;
  v12 = v0;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v11[2] = v3;
  v11[3] = &unk_10062E7D0;
  v4 = _Block_copy(v11);

  static DispatchQoS.unspecified.getter();
  sub_10001053C();
  sub_1003F7CA4(v5, v6, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F310();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v4);
  v7 = sub_100007764();
  v8(v7);
  v9 = sub_10000BAE0();
  v10(v9);

  sub_100005EDC();
}

void sub_1003F02A4(uint64_t a1)
{
  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA5E0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "ConversationLinkSync: scheduleCheckInIfNeeded called", v5, 2u);
  }

  sub_1003F28CC([*(*(a1 + 72) + OBJC_IVAR____TtC13callservicesd33ConversationLinkSyncIDSInteractor_service) hasActiveAccounts]);
}

void sub_1003F03A8()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v4);
  sub_100007FDC();
  sub_100007CD8();
  sub_100007FEC();
  __chkstk_darwin(v5);
  sub_10000E4F4();
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  v15[4] = sub_1003F7D38;
  v15[5] = v6;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v15[2] = v7;
  v15[3] = &unk_10062E7A8;
  v8 = _Block_copy(v15);

  static DispatchQoS.unspecified.getter();
  sub_10001053C();
  sub_1003F7CA4(v9, v10, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F310();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  v11 = sub_100007764();
  v12(v11);
  v13 = sub_10000BAE0();
  v14(v13);

  sub_100005EDC();
}

uint64_t sub_1003F05A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1002E99B4();
  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006BA5E0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = Set.description.getter();
    v10 = sub_10002741C(v8, v9, &v15);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = Array.description.getter();
    v13 = sub_10002741C(v11, v12, &v15);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "ConversationLinkSync: scheduleRecover called {deviceDestinations: %s, pseudonyms: %s}", v7, 0x16u);
    swift_arrayDestroy();
  }

  sub_1003F519C(a2, v3);
}

void sub_1003F1184()
{
  v0 = sub_10000C5BC();
  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  *(inited + 32) = sub_1004330F4();
  *(inited + 40) = v2;
  v3 = sub_1002A3870(inited, *v0);
  swift_setDeallocating();
  sub_1002F5C78();
  if (!sub_10000B6F4(v3))
  {

    return;
  }

  v4 = (v3 & 0xC000000000000001);
  sub_10039C390(0, (v3 & 0xC000000000000001) == 0, v3);
  if ((v3 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v5 = *(v3 + 32);
  }

  sub_10000C870();

  v6 = sub_100433470();
  v7 = OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_version;
  v8 = *&v4[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_version];
  if (v6 >= v8)
  {

    return;
  }

  v9 = v6;
  if (__OFADD__(v8, 10))
  {
    __break(1u);
  }

  else
  {
    sub_1004334E4(v8 + 10);
    if (qword_1006A0B20 == -1)
    {
      goto LABEL_7;
    }
  }

  sub_10000854C();
  swift_once();
LABEL_7:
  v10 = type metadata accessor for Logger();
  sub_1000075F0(v10, qword_1006BA5E0);
  v11 = v4;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = sub_100007C08();
    *v14 = 134218240;
    *(v14 + 4) = v9;
    *(v14 + 12) = 2048;
    *(v14 + 14) = *&v4[v7];

    _os_log_impl(&_mh_execute_header, v12, v13, "ConversationLinkSync: scheduleCheckIn validation check failed, fixing local version {localVersion: %ld, localLatest.version: %ld}", v14, 0x16u);
    sub_100005F40(v14);
  }

  else
  {
  }
}

void sub_1003F1384(uint64_t a1, char a2, unsigned int a3)
{
  v4 = v3;
  v8 = sub_1002E99B4();
  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000075F0(v9, qword_1006BA5E0);

  v10 = sub_10000B8B0();
  sub_1003F7CEC(v10);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = sub_10000B8B0();
  sub_1003F7CFC(v13);
  if (os_log_type_enabled(v11, v12))
  {
    v14 = sub_100005E84();
    v27 = swift_slowAlloc();
    *v14 = 136315650;
    v15 = String.init<A>(reflecting:)();
    v17 = sub_10002741C(v15, v16, &v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v18 = Set.description.getter();
    v20 = sub_10002741C(v18, v19, &v27);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2080;
    v21 = sub_10000B8B0();
    sub_1003F7CEC(v21);
    v22 = String.init<A>(reflecting:)();
    v24 = sub_10002741C(v22, v23, &v27);

    *(v14 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v11, v12, "ConversationLinkSync: scheduleCheckIn called {scheduleMode: %s, deviceDestinations: %s, type: %s}", v14, 0x20u);
    swift_arrayDestroy();
    sub_100008AE8();
    sub_100005F40(v14);
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v4;
  *(v25 + 24) = a1;
  *(v25 + 32) = a2;
  v26 = sub_10000B8B0();
  sub_1003F7CEC(v26);

  sub_1002B7C2C(v8, 2, a3, sub_1003F7D0C, v25);

  sub_1003F1184();
}

void sub_1003F15F8(uint64_t a1, char a2)
{
  v4 = [objc_allocWithZone(CSDMessagingLinkSyncCheckInMessage) init];
  if (a1 == 1)
  {
    v5 = _swiftEmptyArrayStorage;
    v6 = Dictionary.init(dictionaryLiteral:)();
    if (v4)
    {
      [v4 setShouldCheckAllGenerators:1];
    }
  }

  else
  {
    v7 = sub_10000C5BC();
    if (a1)
    {
      v8 = sub_1002A3870(a1, *v7);
    }

    else
    {
      v8 = sub_1002A226C(*v7);
    }

    v5 = v8;
    if (v4)
    {
      [v4 setShouldCheckAllGenerators:a1 == 0];
    }

    if (a2)
    {
      v9 = sub_10000C5BC();
      v10 = sub_1002A2FCC(*v9);
    }

    else
    {
      v10 = Dictionary.init(dictionaryLiteral:)();
    }

    v6 = v10;
  }

  v11 = *(v6 + 16);
  v12 = sub_10000B6F4(v5);

  if (!v12)
  {
LABEL_46:

    return;
  }

  v13 = sub_10000B6F4(v5);
  v14 = 0;
  v33 = v11;
  while (1)
  {
    if (v13 == v14)
    {

      v20 = sub_10000B6F4(_swiftEmptyArrayStorage);
      v21 = 0;
      v22 = v6;
      while (1)
      {
        if (v20 == v21)
        {
          goto LABEL_46;
        }

        if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v21 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_50;
          }

          v23 = _swiftEmptyArrayStorage[v21 + 4];
        }

        v24 = v23;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_49;
        }

        if (v4)
        {
          [v4 addGeneratorDescriptors:v23];
        }

        if (v11)
        {
          v25 = sub_10039BD94(v24, &selRef_generatorID);
          if (!v26)
          {
            goto LABEL_52;
          }

          if (!*(v22 + 16))
          {

            v31 = 0;
            goto LABEL_40;
          }

          v27 = sub_100005208(v25, v26);
          v28 = v22;
          v30 = v29;

          if (v30)
          {
            v31 = *(*(v28 + 56) + 8 * v27);
            v22 = v28;
            v11 = v33;
            if (v31 < 0)
            {
              goto LABEL_51;
            }

LABEL_40:
            if (!v4)
            {
              goto LABEL_42;
            }

LABEL_41:
            sub_100006AF0(0, &qword_1006AA828, off_100616688);
            v32 = sub_1003F19DC(v31);
            [v4 addGenerateDescriptorInfos:v32];

            goto LABEL_42;
          }

          v31 = 0;
          v22 = v28;
          v11 = v33;
          if (v4)
          {
            goto LABEL_41;
          }
        }

LABEL_42:

        ++v21;
      }
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v15 = *(v5 + 8 * v14 + 32);
    }

    v16 = v15;
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    v18 = [objc_opt_self() generatorDescriptorWithCSDConversationLinkGeneratorDescriptor:v15];

    ++v14;
    if (v18)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v19 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= v19 >> 1)
      {
        sub_10001AC68(v19);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v14 = v17;
      v11 = v33;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

id sub_1003F19DC(uint64_t a1)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v3 = result;
    [result setGenerateDescriptorVersionSum:a1];
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003F1A34(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = [objc_allocWithZone(CSDMessagingLinkSyncMessage) init];
  v9 = v8;
  if (v8)
  {
    [v8 setType:2];
    v10 = v9;
    sub_1003F15F8(a3, a4);
    v12 = v11;
    [v10 setCheckInMessage:v11];

    sub_1003F7B24(v10);
    v14 = v13;
  }

  else
  {
    v14 = 0xF000000000000000;
  }

  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_10039B534();
  v17 = v16;
  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000075F0(v18, qword_1006BA5E0);
  v19 = v9;

  v48 = inited;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v46 = v9;
    v22 = sub_100007C08();
    v23 = sub_10000777C();
    v47 = sub_100005E84();
    v49[0] = v47;
    *v22 = 136315394;
    v24 = Set.description.getter();
    sub_10002741C(v24, v25, v49);
    sub_10000C870();

    *(v22 + 4) = v14;
    *(v22 + 12) = 2112;
    *(v22 + 14) = v19;
    *v23 = v46;
    v26 = v19;
    _os_log_impl(&_mh_execute_header, v20, v21, "ConversationLinkSync: Performing check in {dest: %s, message: %@}", v22, 0x16u);
    sub_100009A04(v23, &unk_1006A2630, &qword_10057CB40);
    sub_10000E668();
    sub_100009B7C(v47);
    sub_10000E668();
    sub_100005F40(v22);
  }

  if (v14 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v27 = sub_100007764();
    sub_100290AC4(v27, v28);
    v29 = sub_100007764();
    v31 = sub_1002E9B84(v29, v30, v17);
    v33 = v32;
    v34 = sub_100007764();
    sub_100290B6C(v34, v35);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = sub_100007C08();
      v39 = swift_slowAlloc();
      v49[0] = v39;
      *v38 = 136315394;
      Set.description.getter();
      sub_100027704();
      v40 = sub_100008DB8();
      sub_10002741C(v40, v41, v42);
      sub_10000C870();

      *(v38 + 4) = v14;
      *(v38 + 12) = 2080;
      v43 = sub_10002741C(v31, v33, v49);

      *(v38 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v36, v37, "ConversationLinkSync: Sent check in {to: %s, idsIdentifier: %s}", v38, 0x16u);
      swift_arrayDestroy();
      sub_100005F40(v39);
      sub_100005F40(v38);

      sub_100290B6C(v17, v48);
    }

    else
    {

      v44 = sub_100007764();
      sub_100290B6C(v44, v45);
    }
  }
}

void sub_1003F1FA0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = [a1 generatorDescriptors];
  if (!v3)
  {
    sub_100006AF0(0, &qword_1006A9348, NSMutableArray_ptr);
    v3 = NSArray.init(arrayLiteral:)();
  }

  sub_100006AF0(0, &unk_1006AA810, off_100616668);
  static Array._conditionallyBridgeFromObjectiveC(_:result:)();

  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000075F0(v4, qword_1006BA5E0);

  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = sub_100005274();
    v7 = sub_100005E84();
    v12 = v7;
    *v6 = 136315138;
    v8 = sub_10001E3F8();
    *(v6 + 4) = sub_10002741C(v8, v9, v10);
    _os_log_impl(&_mh_execute_header, oslog, v5, "ConversationLinkSync: Processing check in, unable to convert descriptors -- dropping {from: %s}", v6, 0xCu);
    sub_100009B7C(v7);
    sub_100008AE8();
    sub_10000E668();
  }

  else
  {
  }
}

void sub_1003F28CC(char a1)
{
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22[0] = v20;
  v22[1] = v21;
  if (*(&v21 + 1))
  {
    if (swift_dynamicCast())
    {
      v6 = v19;
      goto LABEL_9;
    }
  }

  else
  {
    sub_100009A04(v22, &unk_1006A2D10, &unk_10057D940);
  }

  v6 = 0;
LABEL_9:
  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000AF9C(v7, qword_1006BA5E0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109376;
    *(v10 + 4) = a1 & 1;
    *(v10 + 8) = 1024;
    *(v10 + 10) = v6;
    _os_log_impl(&_mh_execute_header, v8, v9, "ConversationLinkSync: checkAccountStateForCheckIn called {activeAccounts: %{BOOL}d, lastAccountsChangedState: %{BOOL}d}", v10, 0xEu);
    sub_1000079DC();
  }

  if (v6 != (a1 & 1))
  {
    if ((a1 & 1) == 0)
    {
      goto LABEL_20;
    }

    v11 = *(sub_1002E99B4() + 16);

    if (v11)
    {
      sub_1003F1384(0, 0, 2u);
    }

    v12 = *(sub_1002E99B4() + 16);

    if (v12)
    {

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 67109376;
        *(v15 + 4) = 1;
        *(v15 + 8) = 1024;
        v16 = *(sub_1002E99B4() + 16);

        *(v15 + 10) = v16 == 0;

        _os_log_impl(&_mh_execute_header, v13, v14, "ConversationLinkSync: missing devices, waiting until devices appear {activeAccounts: %{BOOL}d, interactor.deviceDestinations.isEmpty: %{BOOL}d}", v15, 0xEu);
        sub_100006868();
      }

      else
      {
      }
    }

    else
    {
LABEL_20:
      v17 = [v2 standardUserDefaults];
      v18 = String._bridgeToObjectiveC()();
      [v17 setBool:a1 & 1 forKey:v18];
    }
  }

  sub_1000089B0();
}

void sub_1003F2C10()
{
  swift_allocObject();
  swift_weakInit();
  sub_1000114F8();
  v4[1] = 1107296256;
  v4[2] = sub_1003EF338;
  v4[3] = &unk_10062E708;
  v0 = _Block_copy(v4);

  sub_10002F6DC();
  xpc_activity_register(v1, v2, v3);
  _Block_release(v0);
}

void sub_1003F2CD4(_xpc_activity_s *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  state = xpc_activity_get_state(a1);
  if (state == 2)
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000AF9C(v22, qword_1006BA5E0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "ConversationLinkSync: check in activity fired", v25, 2u);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v27 = *(Strong + 120);

      aBlock[4] = sub_1003F7C9C;
      aBlock[5] = a2;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004CEC;
      aBlock[3] = &unk_10062E730;
      v28 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v32 = _swiftEmptyArrayStorage;
      sub_1003F7CA4(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_1000057D0();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v28);

      (*(v5 + 8))(v7, v4);
      (*(v9 + 8))(v11, v8);
    }
  }

  else if (!state)
  {
    empty = xpc_dictionary_create_empty();
    xpc_dictionary_set_string(empty, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
    xpc_dictionary_set_BOOL(empty, XPC_ACTIVITY_ALLOW_BATTERY, 0);
    xpc_dictionary_set_int64(empty, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_7_DAYS);
    v14 = xpc_activity_copy_criteria(a1);
    if (v14)
    {
      if (!xpc_equal(v14, empty))
      {
        xpc_activity_set_criteria(a1, empty);
      }

      swift_unknownObjectRelease();
    }

    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000AF9C(v15, qword_1006BA5E0);
    swift_unknownObjectRetain();
    v31 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v31, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136315138;
      aBlock[6] = empty;
      swift_unknownObjectRetain();
      sub_10026D814(&qword_1006A2BD0, &unk_100586640);
      v19 = String.init<A>(reflecting:)();
      v21 = sub_10002741C(v19, v20, aBlock);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v31, v16, "ConversationLinkSync: check in activity scheduled {criteria: %s}", v17, 0xCu);
      sub_100009B7C(v18);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v29 = v31;
    }
  }
}

uint64_t sub_1003F3278(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1003F1384(0, 1, 2u);
  }

  return result;
}

void sub_1003F32DC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, Swift::Bool isUnique, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  sub_10000C16C();
  a35 = v37;
  a36 = v39;
  v40 = v36;
  v42 = v41;
  v44 = v43;
  v45 = v38;
  v46 = v38[4];
  a24 = v46;
  v121 = v41;
  v122 = v40;
  v120 = v43;
  if ((v47 & 1) == 0)
  {
LABEL_21:

    goto LABEL_25;
  }

  v48 = *v38;
  v49 = *(*v38 + 16);
  if (v49)
  {
    isUniquea = v38;
    a22 = _swiftEmptyArrayStorage;

    v46 = &a22;
    specialized ContiguousArray.reserveCapacity(_:)();
    v52 = sub_100308264(v48);
    v40 = 0;
    v53 = v48 + 56;
    v123 = v49;
    v54 = 1;
    if ((v52 & 0x8000000000000000) == 0)
    {
      while (v52 < v54 << *(v48 + 32))
      {
        v55 = v52 >> 6;
        v45 = v54 << v52;
        if ((*(v53 + 8 * (v52 >> 6)) & (v54 << v52)) == 0)
        {
          goto LABEL_50;
        }

        if (*(v48 + 36) != v50)
        {
          goto LABEL_51;
        }

        v56 = v50;
        v57 = (*(v48 + 48) + 16 * v52);
        v58 = *v57;
        v59 = v57[1];
        v125 = v51;
        v60 = objc_allocWithZone(type metadata accessor for GeneratorDescriptor());

        v42 = sub_1003DFB90(v58, v59, 0);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v44 = a22[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v125)
        {
          goto LABEL_57;
        }

        v46 = 1 << *(v48 + 32);
        if (v52 >= v46)
        {
          goto LABEL_52;
        }

        if ((*(v53 + 8 * v55) & v45) == 0)
        {
          goto LABEL_53;
        }

        if (*(v48 + 36) != v56)
        {
          goto LABEL_54;
        }

        sub_100018690();
        if (v63)
        {
          v45 = v55 << 6;
          v65 = v55 + 1;
          v66 = (v48 + 64 + 8 * v55);
          v64 = v123;
          while (v65 < (v46 + 63) >> 6)
          {
            v67 = *v66++;
            v42 = v67;
            v45 += 64;
            ++v65;
            if (v67)
            {
              sub_100010000(v52, v61, 0);
              v54 = 1;
              v46 = __clz(__rbit64(v42)) + v45;
              goto LABEL_18;
            }
          }

          sub_100010000(v52, v61, 0);
          v54 = 1;
        }

        else
        {
          v46 = __clz(__rbit64(v62)) | v52 & 0x7FFFFFFFFFFFFFC0;
          v64 = v123;
        }

LABEL_18:
        if (++v40 == v64)
        {
          v68 = a22;
          v42 = v121;
          v40 = v122;
          v45 = isUniquea;
          v44 = v120;
          goto LABEL_24;
        }

        v51 = 0;
        v50 = *(v48 + 36);
        v52 = v46;
        if (v46 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  v68 = _swiftEmptyArrayStorage;
LABEL_24:
  sub_100413DE0(v68);
  v46 = a24;
LABEL_25:
  v69 = *(v45 + 16);
  if (*(v69 + 16))
  {

    v70 = sub_1002A2784(v46);
    sub_1003EEFC0(v70);
    v72 = v71;

    v73 = 0;
    v74 = v69 + 56;
    v75 = 1 << *(v69 + 32);
    v76 = -1;
    if (v75 < 64)
    {
      v76 = ~(-1 << v75);
    }

    v77 = v76 & *(v69 + 56);
    v78 = (v75 + 63) >> 6;
    v124 = v69;
LABEL_29:
    v126 = v72;
    while (v77)
    {
LABEL_35:
      v80 = __clz(__rbit64(v77));
      v77 &= v77 - 1;
      v81 = (*(v69 + 48) + ((v73 << 10) | (16 * v80)));
      v82 = *v81;
      v83 = v81[1];
      v84 = objc_allocWithZone(type metadata accessor for GeneratorDescriptor());
      swift_bridgeObjectRetain_n();
      v85 = sub_100022074();
      v87 = sub_1003DFB90(v85, v86, 0);
      if (v87)
      {
        v95 = v87;
        isUniqueb = swift_isUniquelyReferenced_nonNull_native();
        a22 = v126;
        v96 = sub_100022074();
        sub_100005208(v96, v97);
        v127 = v98;
        sub_10004A10C();
        v102 = v100 + v101;
        if (__OFADD__(v100, v101))
        {
          goto LABEL_55;
        }

        v103 = v99;
        sub_10026D814(&qword_1006AA808, &unk_100586630);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniqueb, v102))
        {
          v104 = sub_100022074();
          v106 = sub_100005208(v104, v105);
          if ((v127 & 1) != (v107 & 1))
          {
            goto LABEL_58;
          }

          v103 = v106;
          if ((v127 & 1) == 0)
          {
LABEL_42:
            v72 = a22;
            sub_1000163C8(&a22[v103 >> 6]);
            v108 = (v72[6] + 16 * v103);
            *v108 = v82;
            v108[1] = v83;
            *(v72[7] + 8 * v103) = v95;
            v109 = v72[2];
            v110 = __OFADD__(v109, 1);
            v111 = v109 + 1;
            if (v110)
            {
              goto LABEL_56;
            }

            v72[2] = v111;
            goto LABEL_46;
          }
        }

        else if ((v127 & 1) == 0)
        {
          goto LABEL_42;
        }

        v72 = a22;
        v112 = a22[7];
        v113 = *(v112 + 8 * v103);
        *(v112 + 8 * v103) = v95;

LABEL_46:
        v69 = v124;
        goto LABEL_29;
      }

      v88 = sub_100022074();
      v72 = v126;
      v90 = sub_100005208(v88, v89);
      v92 = v91;

      v69 = v124;
      if (v92)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a22 = v126;
        v94 = v126[3];
        sub_10026D814(&qword_1006AA808, &unk_100586630);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v94);
        v72 = a22;

        _NativeDictionary._delete(at:)();
        goto LABEL_29;
      }
    }

    while (1)
    {
      v79 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        break;
      }

      if (v79 >= v78)
      {

        v46 = sub_10027404C(v72);
        v42 = v121;
        v40 = v122;
        v44 = v120;
        goto LABEL_48;
      }

      v77 = *(v74 + 8 * v79);
      ++v73;
      if (v77)
      {
        v73 = v79;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_48:
    v114 = sub_100009B14((v40 + 32), *(v40 + 56));
    v115 = sub_1002A333C(v46, *v114);

    sub_10026D814(&qword_1006A4760, &unk_10057EA60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057D690;
    *(inited + 32) = v44;
    *(inited + 40) = v42;

    sub_10039B534();
    sub_1003F38A0(v115, v117);

    sub_100027EC0();
  }
}

void sub_1003F38A0(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 < 1)
  {
    goto LABEL_23;
  }

  v46 = a2;
  v5 = [objc_allocWithZone(CSDMessagingLinkSyncUpdateMessage) init];
  v6 = sub_10000B6F4(a1);
  if (v6)
  {
    v7 = v6;
    sub_100006AF0(0, &unk_1006AA7F0, off_100616660);
    if (v7 < 1)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    for (i = 0; i != v7; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(a1 + 8 * i + 32);
      }

      v10 = v9;
      sub_1003F3ED0();
      v12 = v11;
      if (v5)
      {
        v13 = v5;
        [v13 addLink:v12];
      }
    }
  }

  v45 = [objc_allocWithZone(CSDMessagingLinkSyncMessage) init];
  if (v45)
  {
    [v45 setType:1];
    [v45 setUpdateMessage:v5];
    v14 = sub_1003F7B24(v45);
    v16 = v15;
  }

  else
  {
    [0 setUpdateMessage:v5];
    v14 = 0;
    v16 = 0xF000000000000000;
  }

  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_10000AF9C(v17, qword_1006BA5E0);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    sub_100007C08();
    sub_100007608();
    sub_10000FC74();
    *v18 = 136315394;
    v21 = Set.description.getter();
    v22 = v14;
    sub_10002741C(v21, v23, v47);

    sub_1000100C0();
    sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
    v24 = Array.description.getter();
    v26 = sub_10002741C(v24, v25, v47);

    *(v18 + 14) = v26;
    v14 = v22;
    sub_10001C9AC(&_mh_execute_header, v19, v20, "ConversationLinkSync: Sending link update {to: %s, linksToSend: %s}");
    swift_arrayDestroy();
    sub_100008AE8();
    sub_10000E668();
  }

  if (v16 >> 60 == 15)
  {
    goto LABEL_29;
  }

  v27 = sub_10000FB2C();
  sub_100290AC4(v27, v28);
  v29 = sub_10000FB2C();
  v31 = sub_1002E9B84(v29, v30, v46);
  v33 = v32;
  v34 = sub_10000FB2C();
  sub_100290B6C(v34, v35);

  oslog = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v36))
  {
    sub_100007C08();
    sub_100007608();
    sub_10000FC74();
    MEMORY[0] = 136315394;
    v37 = Set.description.getter();
    sub_10002741C(v37, v38, v47);

    sub_1000100C0();
    v39 = sub_10002741C(v31, v33, v47);

    MEMORY[0xE] = v39;
    sub_10001C9AC(&_mh_execute_header, oslog, v36, "ConversationLinkSync: Sent link update {to: %s, idsIdentifier: %s}");
    swift_arrayDestroy();
    sub_100008AE8();
    sub_10000E668();

    sub_100290B6C(v14, v16);
LABEL_23:
    sub_100006660();
    return;
  }

  v40 = sub_10000FB2C();
  sub_100290B6C(v40, v41);

  sub_100006660();
}