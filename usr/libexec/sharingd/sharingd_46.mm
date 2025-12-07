uint64_t sub_100636164(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    application_service_quic_using_identity = nw_parameters_create_application_service_quic_using_identity();
  }

  else
  {
    application_service_quic_using_identity = nw_parameters_create_application_service_quic();
  }

  v7 = application_service_quic_using_identity;
  if (application_service_quic_using_identity)
  {
    nw_parameters_set_prohibit_constrained(application_service_quic_using_identity, 1);
    aBlock = 0xD00000000000001BLL;
    v25 = 0x8000000100799FF0;
    swift_unknownObjectRetain();
    static String.Encoding.utf8.getter();
    sub_10001229C();
    StringProtocol.cString(using:)();
    (*(v3 + 8))(v5, v2);
    nw_parameters_set_source_application_by_bundle_id();

    nw_parameters_set_include_peer_to_peer(v7, 1);
    nw_parameters_set_attach_protocol_listener();
    nw_parameters_set_server_mode();
    if (sub_1004E701C())
    {
      nw_parameters_set_local_only(v7, 0);
    }

    else
    {
      if (a1)
      {
        nw_parameters_set_required_interface_subtype();
      }

      nw_parameters_set_multipath_service(v7, nw_multipath_service_disabled);
    }

    type metadata accessor for SFAirDropUserDefaults();
    v8 = static SFAirDropUserDefaults.shared.getter();
    v9 = SFAirDropUserDefaults.cellularUsageEnabled.getter();

    if ((v9 & 1) == 0)
    {
      nw_parameters_set_prohibit_expensive(v7, 1);
      empty = xpc_array_create_empty();
      v11 = XPC_ARRAY_APPEND.getter();
      xpc_array_set_uint64(empty, v11, 2uLL);
      nw_parameters_set_prohibited_interface_types();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    v30 = 0;
    v12 = nw_parameters_copy_default_protocol_stack(v7);
    v13 = swift_allocObject();
    *(v13 + 16) = &v30;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1006381F8;
    *(v14 + 24) = v13;
    v28 = sub_10044EDA8;
    v29 = v14;
    aBlock = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_10044CCA4;
    v27 = &unk_1008EC120;
    v15 = _Block_copy(&aBlock);

    nw_protocol_stack_iterate_application_protocols(v12, v15);
    _Block_release(v15);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      __break(1u);
    }

    else
    {
      if (v30 == 1)
      {
        type metadata accessor for NWParameters();
        swift_unknownObjectRetain();
        v16 = NWParameters.__allocating_init(_:)();
        NWParameters.preferNoProxies.setter();
        options = nw_http3_create_options();
        v18 = NWParameters.nw.getter();
        v19 = nw_parameters_copy_default_protocol_stack(v18);
        swift_unknownObjectRelease();
        nw_protocol_stack_prepend_application_protocol(v19, options);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v16;
      }

      aBlock = 0;
      v25 = 0xE000000000000000;
      _StringGuts.grow(_:)(75);
      v21._countAndFlagsBits = 0xD00000000000003ALL;
      v21._object = 0x800000010079A180;
      String.append(_:)(v21);
      v23 = v12;
      sub_10028088C(&qword_100987498, &unk_10080DDF0);
      _print_unlocked<A, B>(_:_:)();
      v22._countAndFlagsBits = 0x74656D6172617020;
      v22._object = 0xED0000203A737265;
      String.append(_:)(v22);
      v23 = v7;
      sub_10028088C(&unk_100987500, &unk_10080DE00);
      _print_unlocked<A, B>(_:_:)();
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100636668(void *a1)
{
  v1 = 0x3E656E6F6E3CLL;
  if (a1)
  {
    certificateRef = 0;
    v2 = a1;
    v3 = SecIdentityCopyCertificate(v2, &certificateRef);
    if (certificateRef)
    {
      v4 = v3;
      v5 = certificateRef;
      if (v4 == noErr.getter())
      {
        v6 = SecCertificateCopyIssuerSHA256Digest();
        if (v6)
        {
          v7 = v6;
          v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v10 = v9;

          sub_100467BE4(v8, v10);
          sub_10028088C(&unk_100976C20, &unk_1007F9D80);
          sub_1003117AC();
          v11 = BidirectionalCollection<>.joined(separator:)();
          v13 = v12;

          sub_10054141C(16, v11, v13);

          v1 = static String._fromSubstring(_:)();

          sub_100026AC0(v8, v10);

          return v1;
        }
      }
    }
  }

  return v1;
}

void *sub_100636820(uint64_t a1)
{
  v2 = NWConnection.nw.getter();
  nw_connection_copy_parameters(v2);
  swift_unknownObjectRelease();
  NWConnection.nw.getter();
  v3 = nw_connection_create_with_connection();
  swift_unknownObjectRelease();
  if (!v3)
  {
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000C4AC(v15, qword_1009873E0);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v1 = swift_slowAlloc();
      v34 = v1;
      *v18 = 136315138;
      v19 = NWConnection.debugDescription.getter();
      v21 = sub_10000C4E4(v19, v20, &v34);

      *(v18 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to create connection from existing connection %s", v18, 0xCu);
      sub_10000C60C(v1);
    }

    v22 = type metadata accessor for SFAirDropSend.Failure();
    sub_100638428(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v22 - 8) + 104))(v23, enum case for SFAirDropSend.Failure.unsupportedConnection(_:), v22);
    swift_willThrow();
    goto LABEL_17;
  }

  swift_unknownObjectRetain();
  v4 = NWConnection.__allocating_init(_:)();
  if (!v4)
  {
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000C4AC(v24, qword_1009873E0);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v1 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34 = v27;
      *v1 = 136315138;
      v28 = NWConnection.debugDescription.getter();
      v30 = sub_10000C4E4(v28, v29, &v34);

      *(v1 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to initialize new connection %s", v1, 0xCu);
      sub_10000C60C(v27);
    }

    v31 = type metadata accessor for SFAirDropSend.Failure();
    sub_100638428(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v31 - 8) + 104))(v32, enum case for SFAirDropSend.Failure.unsupportedConnection(_:), v31);
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_17:
    swift_unknownObjectRelease();
    return v1;
  }

  v1 = v4;
  if (qword_100973B80 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_1009873E0);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = NWConnection.debugDescription.getter();
    v11 = sub_10000C4E4(v9, v10, &v34);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = NWConnection.debugDescription.getter();
    v14 = sub_10000C4E4(v12, v13, &v34);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Created connection %s from existing connection %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_100636E0C(char a1, uint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    application_service_quic_using_identity = nw_parameters_create_application_service_quic_using_identity();
  }

  else
  {
    application_service_quic_using_identity = nw_parameters_create_application_service_quic();
  }

  v9 = application_service_quic_using_identity;
  if (application_service_quic_using_identity)
  {
    nw_parameters_set_prohibit_constrained(application_service_quic_using_identity, 1);
    aBlock = 0xD00000000000001BLL;
    v33 = 0x8000000100799FF0;
    swift_unknownObjectRetain();
    static String.Encoding.utf8.getter();
    sub_10001229C();
    StringProtocol.cString(using:)();
    (*(v5 + 8))(v7, v4);
    nw_parameters_set_source_application_by_bundle_id();

    nw_parameters_set_include_peer_to_peer(v9, 1);
    if (sub_1004E701C())
    {
      if ((a1 & 1) == 0)
      {
        nw_parameters_set_local_only(v9, 0);
      }
    }

    else
    {
      nw_parameters_set_required_interface_subtype();
      nw_parameters_set_multipath_service(v9, nw_multipath_service_disabled);
    }

    type metadata accessor for SFAirDropUserDefaults();
    v10 = static SFAirDropUserDefaults.shared.getter();
    v11 = SFAirDropUserDefaults.cellularUsageEnabled.getter();

    if ((v11 & 1) == 0)
    {
      nw_parameters_set_prohibit_expensive(v9, 1);
      empty = xpc_array_create_empty();
      v13 = XPC_ARRAY_APPEND.getter();
      xpc_array_set_uint64(empty, v13, 2uLL);
      nw_parameters_set_prohibited_interface_types();
      swift_unknownObjectRelease();
    }

    v14 = xpc_array_create_empty();
    v15 = XPC_ARRAY_APPEND.getter();
    xpc_array_set_uint64(v14, v15, 0x3EAuLL);
    nw_parameters_set_preferred_interface_subtypes();
    v38 = 0;
    v16 = nw_parameters_copy_default_protocol_stack(v9);
    v17 = swift_allocObject();
    *(v17 + 16) = &v38;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_100638554;
    *(v18 + 24) = v17;
    v36 = sub_10063871C;
    v37 = v18;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_10044CCA4;
    v35 = &unk_1008EC2D8;
    v19 = _Block_copy(&aBlock);

    nw_protocol_stack_iterate_application_protocols(v16, v19);
    _Block_release(v19);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
    }

    else
    {
      if (v38 == 1)
      {
        v20 = xpc_array_create(0, 0);
        v21 = XPC_ARRAY_APPEND.getter();
        xpc_array_set_string(v20, v21, "com.apple.rapport.browse");
        v22 = xpc_array_create(0, 0);
        v23 = XPC_ARRAY_APPEND.getter();
        xpc_array_set_string(v22, v23, "RapportBrowseAgent");
        nw_parameters_set_preferred_netagent_classes();
        swift_unknownObjectRelease();
        type metadata accessor for NWParameters();
        swift_unknownObjectRetain();
        v24 = NWParameters.__allocating_init(_:)();
        NWParameters.preferNoProxies.setter();
        options = nw_http3_create_options();
        v26 = NWParameters.nw.getter();
        v27 = nw_parameters_copy_default_protocol_stack(v26);
        swift_unknownObjectRelease();
        nw_protocol_stack_prepend_application_protocol(v27, options);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        NWParameters.nw.getter();
        nw_parameters_set_server_mode();
        swift_unknownObjectRelease();
        NWParameters.nw.getter();
        AirDropID.getter();
        String.utf8CString.getter();

        nw_parameters_set_account_id();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v24;
      }

      aBlock = 0;
      v33 = 0xE000000000000000;
      _StringGuts.grow(_:)(75);
      v29._countAndFlagsBits = 0xD00000000000003ALL;
      v29._object = 0x800000010079A180;
      String.append(_:)(v29);
      v31 = v16;
      sub_10028088C(&qword_100987498, &unk_10080DDF0);
      _print_unlocked<A, B>(_:_:)();
      v30._countAndFlagsBits = 0x74656D6172617020;
      v30._object = 0xED0000203A737265;
      String.append(_:)(v30);
      v31 = v9;
      sub_10028088C(&unk_100987500, &unk_10080DE00);
      _print_unlocked<A, B>(_:_:)();
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1006373F8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v3 = sub_100091420(v1, v2);
    if (!v3)
    {
LABEL_6:

      return 0x3E656E6F6E3CLL;
    }

    v4 = v3;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for SecCertificate(0);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();

      goto LABEL_6;
    }
  }

  return 0x3E656E6F6E3CLL;
}

void sub_100637614(char a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[0] = 0xD000000000000027;
  v37[1] = 0x800000010079A1C0;
  static String.Encoding.utf8.getter();
  sub_10001229C();
  v6 = StringProtocol.cString(using:)();
  (*(v3 + 8))(v5, v2);
  HIDWORD(v36) = -1;
  if (v6)
  {
    v7 = (v6 + 32);
  }

  else
  {
    v7 = 0;
  }

  v8 = notify_register_check(v7, &v36 + 1);
  if (v8)
  {
    v9 = v8;

    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_1009873E0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_10;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_10000C4E4(0xD000000000000027, 0x800000010079A1C0, v37);
    *(v13 + 12) = 1024;
    *(v13 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v11, v12, "Failed to registered check for notification %s with status %u", v13, 0x12u);
    sub_10000C60C(v14);

LABEL_9:

LABEL_10:

    return;
  }

  if (HIDWORD(v36) == -1)
  {
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000C4AC(v15, qword_1009873E0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v37[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_10000C4E4(0xD000000000000027, 0x800000010079A1C0, v37);
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to registered check token for notification %s", v18, 0xCu);
      sub_10000C60C(v19);
    }
  }

  v20 = notify_set_state(SHIDWORD(v36), a1 & 1);
  if (v20)
  {
    v21 = v20;

    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_1009873E0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_28;
    }

    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v37[0] = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_10000C4E4(0xD000000000000027, 0x800000010079A1C0, v37);
    *(v25 + 12) = 1024;
    *(v25 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v23, v24, "Failed to set state for notification %s with status %u", v25, 0x12u);
    sub_10000C60C(v26);
    goto LABEL_27;
  }

  v27 = notify_post(v7);

  if (!v27)
  {
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000C4AC(v32, qword_1009873E0);
    v11 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v11, v33))
    {
      goto LABEL_10;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37[0] = v35;
    *v34 = 136315394;
    *(v34 + 4) = sub_10000C4E4(0xD000000000000027, 0x800000010079A1C0, v37);
    *(v34 + 12) = 1024;
    *(v34 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v11, v33, "Posted notification %s for cellular interface in use %{BOOL}d", v34, 0x12u);
    sub_10000C60C(v35);

    goto LABEL_9;
  }

  if (qword_100973B80 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000C4AC(v28, qword_1009873E0);
  v23 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v37[0] = v31;
    *v30 = 136315394;
    *(v30 + 4) = sub_10000C4E4(0xD000000000000027, 0x800000010079A1C0, v37);
    *(v30 + 12) = 1024;
    *(v30 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v23, v29, "Failed to post notification %s with status %u", v30, 0x12u);
    sub_10000C60C(v31);
LABEL_27:
  }

LABEL_28:

  notify_cancel(SHIDWORD(v36));
}

uint64_t sub_100637CD0(NSObject *a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10028088C(&unk_10097F330, &qword_1007F9410);
  __chkstk_darwin(v8 - 8);
  v10 = aBlock - v9;
  v11 = sub_10028088C(&qword_1009787A8, &unk_1007FB990);
  __chkstk_darwin(v11 - 8);
  v13 = aBlock - v12;
  type metadata accessor for NWProtocolTCP.Options();
  swift_allocObject();
  NWProtocolTCP.Options.init()();
  dispatch thunk of NWProtocolTCP.Options.enableFastOpen.setter();
  type metadata accessor for NWProtocolTLS.Options();
  swift_allocObject();
  NWProtocolTLS.Options.init()();
  if (a1)
  {
    v14 = a1;
LABEL_6:
    swift_unknownObjectRetain();
    v18 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
    sec_protocol_options_set_local_identity(v18, v14);
    swift_unknownObjectRelease();
    v19 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
    sec_protocol_options_set_peer_authentication_optional(v19, 1);
    swift_unknownObjectRelease();
    v20 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
    aBlock[4] = a3;
    aBlock[5] = a4;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10062FDCC;
    aBlock[3] = &unk_1008EC080;
    v21 = _Block_copy(aBlock);

    sec_protocol_options_set_verify_block(v20, v21, a2);
    _Block_release(v21);
    swift_unknownObjectRelease();
    type metadata accessor for NWParameters();

    v22 = NWParameters.__allocating_init(tls:tcp:)();
    NWParameters.allowLocalEndpointReuse.setter();
    sub_100630930(v13);
    NWParameters.requiredInterface.setter();
    sub_10028088C(&qword_1009787B8, &qword_1007FB9A8);
    NWEndpoint.Host.init(stringLiteral:)();
    NWEndpoint.Port.init(integerLiteral:)();
    v23 = enum case for NWEndpoint.hostPort(_:);
    v24 = type metadata accessor for NWEndpoint();
    v25 = *(v24 - 8);
    (*(v25 + 104))(v10, v23, v24);
    (*(v25 + 56))(v10, 0, 1, v24);
    NWParameters.requiredLocalEndpoint.setter();
    NWParameters.preferNoProxies.setter();
    NWParameters.nw.getter();
    nw_parameters_set_attach_protocol_listener();
    swift_unknownObjectRelease();
    NWParameters.nw.getter();
    nw_parameters_set_server_mode();
    swift_unknownObjectRelease();
    options = nw_http_messaging_create_options();
    nw_http1_set_idle_timeout();
    v27 = NWParameters.nw.getter();
    v28 = nw_parameters_copy_default_protocol_stack(v27);
    swift_unknownObjectRelease();
    nw_protocol_stack_prepend_application_protocol(v28, options);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v22;
  }

  v15 = String._bridgeToObjectiveC()();
  SelfSignedIdentity = _CFHTTPServerCreateSelfSignedIdentity();

  if (SelfSignedIdentity)
  {
    v17 = sec_identity_create(SelfSignedIdentity);
    if (v17)
    {
      v14 = v17;

      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100638124(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  sub_10001229C();
  if (*(StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)() + 16))
  {

    v2 = static String._fromSubstring(_:)();

    return v2;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_100638250(int a1)
{
  if (a1 <= 408)
  {
    if (a1 > 399)
    {
      switch(a1)
      {
        case 400:
          return 3;
        case 401:
          return 4;
        case 403:
          return 5;
      }
    }

    else
    {
      switch(a1)
      {
        case 100:
          return 0;
        case 200:
          return 1;
        case 204:
          return 2;
      }
    }
  }

  else if (a1 <= 500)
  {
    switch(a1)
    {
      case 409:
        return 6;
      case 417:
        return 7;
      case 500:
        return 8;
    }
  }

  else if (a1 > 503)
  {
    if (a1 == 504)
    {
      return 11;
    }

    if (a1 == 507)
    {
      return 12;
    }
  }

  else
  {
    if (a1 == 501)
    {
      return 9;
    }

    if (a1 == 503)
    {
      return 10;
    }
  }

  return 13;
}

uint64_t sub_100638378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *(sub_10028088C(a5, a6) - 8);
  v13 = v7 + ((*(v12 + 80) + 16) & ~*(v12 + 80));

  return a7(a1, a2, a3, a4, v13);
}

uint64_t sub_100638428(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1006384F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100638594(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && a1[24])
  {
    return (*a1 + 244);
  }

  v3 = *a1;
  v4 = v3 >= 0xD;
  v5 = v3 - 13;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1006385D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 12;
    }
  }

  return result;
}

unint64_t sub_100638650()
{
  result = qword_100987540;
  if (!qword_100987540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987540);
  }

  return result;
}

uint64_t sub_100638724@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10028088C(&qword_100982518, &unk_100808DA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for SDAirDropServerConnection(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_uploadConnection;
  swift_beginAccess();
  sub_10000FF90(v1 + v13, v5, &qword_100982518, &unk_100808DA0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100005508(v5, &qword_100982518, &unk_100808DA0);
    if (qword_100973B88 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000C4AC(v14, qword_100987550);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "UPLOAD connection is not active", v17, 2u);
    }

    v18 = enum case for SFNWInterfaceType.other(_:);
    v19 = type metadata accessor for SFNWInterfaceType();
    return (*(*(v19 - 8) + 104))(a1, v18, v19);
  }

  else
  {
    sub_10064FAD4(v5, v12, type metadata accessor for SDAirDropServerConnection);
    sub_10064FA6C(v12, v10, type metadata accessor for SDAirDropServerConnection);
    if (swift_getEnumCaseMultiPayload() >= 2)
    {
      v21 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
      v22 = type metadata accessor for UUID();
      (*(*(v22 - 8) + 8))(&v10[v21], v22);
    }

    sub_10062D138(a1);

    return sub_10064FB84(v12, type metadata accessor for SDAirDropServerConnection);
  }
}

uint64_t sub_100638A98(uint64_t a1, void *a2)
{
  v3 = sub_10002CDC0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_100638B44(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 496) = a5;
  *(v6 + 504) = v5;
  *(v6 + 161) = a4;
  *(v6 + 480) = a2;
  *(v6 + 488) = a3;
  *(v6 + 472) = a1;
  sub_10028088C(&qword_100982518, &unk_100808DA0);
  *(v6 + 512) = swift_task_alloc();
  v7 = type metadata accessor for SDAirDropServerConnection(0);
  *(v6 + 520) = v7;
  *(v6 + 528) = *(v7 - 8);
  *(v6 + 536) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  *(v6 + 544) = static AirDropActor.shared;

  return _swift_task_switch(sub_100638C84, v8, 0);
}

uint64_t sub_100638C84()
{
  v1 = *(*(v0 + 504) + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_deviceStatus);
  if ([v1 screenStateSupportsAirDrop])
  {
    if (qword_100973B88 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100987550);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Received DISCOVER request", v5, 2u);
    }

    v6 = *(v0 + 536);
    v7 = *(v0 + 496);

    sub_10064FA6C(v7, v6, type metadata accessor for SDAirDropServerConnection);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload >= 2)
    {
      v9 = *(v0 + 536);
      v10 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
      v11 = type metadata accessor for UUID();
      EnumCaseMultiPayload = (*(*(v11 - 8) + 8))(v9 + v10, v11);
    }

    v12 = sub_10062E930(EnumCaseMultiPayload);
    *(v0 + 552) = v12;

    if (!v12)
    {
      v17 = swift_task_alloc();
      *(v0 + 664) = v17;
      *v17 = v0;
      v18 = sub_10063A114;
      goto LABEL_44;
    }

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "TLS SecTrust present, continue DISCOVER", v15, 2u);
    }

    v16 = *(v0 + 480);

    if (v16 >> 60 == 15)
    {
      v17 = swift_task_alloc();
      *(v0 + 648) = v17;
      *v17 = v0;
      v18 = sub_100639F70;
LABEL_44:
      v17[1] = v18;
      v63 = *(v0 + 496);
      v64 = *(v0 + 504);

      return sub_100645B70(v64, v63);
    }

    sub_1002A9924(*(v0 + 472), *(v0 + 480));
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Sender record data present, continue DISCOVER", v32, 2u);
    }

    isa = Data._bridgeToObjectiveC()().super.isa;
    v34 = sub_10009229C(isa, v12, 0);

    if (!v34)
    {
      v17 = swift_task_alloc();
      *(v0 + 632) = v17;
      *v17 = v0;
      v18 = sub_100639E44;
      goto LABEL_44;
    }

    v36 = *(v0 + 472);
    v35 = *(v0 + 480);
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    sub_10046A92C(v36, v35, v12);
    if (v40)
    {

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Peer is blocked, decline DISCOVER", v43, 2u);
      }

      v45 = *(v0 + 472);
      v44 = *(v0 + 480);

      v46 = type metadata accessor for SFAirDropReceive.Failure();
      sub_10064FB3C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
      swift_allocError();
      (*(*(v46 - 8) + 104))(v47, enum case for SFAirDropReceive.Failure.declined(_:), v46);
      swift_willThrow();
      sub_10028BCC0(v45, v44);

      v48 = *(v0 + 8);

      return v48();
    }

    else
    {
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Validated record data, continue DISCOVER", v51, 2u);
      }

      v52 = [v1 copyMyAppleIDSecIdentity];
      if (!v52 || (v52, (sub_100469580(v37, v39, v12) & 1) == 0))
      {

        v17 = swift_task_alloc();
        *(v0 + 616) = v17;
        *v17 = v0;
        v18 = sub_100639C98;
        goto LABEL_44;
      }

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "Sender trusted, finish DISCOVER", v55, 2u);
      }

      v56 = *(v0 + 504);
      v57 = *(v0 + 161);
      v58 = *(v0 + 488);

      v59 = sub_10046AB74();
      *(v0 + 560) = v59;
      v107 = v60;
      *(v0 + 568) = v60;
      v61 = [*(v56 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_nearbyAgent) idSelfIdentity];
      v62 = 0;
      *(v0 + 576) = v61;
      if ((v57 & 1) == 0 && (v58 & 0x4000) != 0)
      {
        v62 = (*(v0 + 489) >> 4) & 1;
      }

      if (![v1 discoverableLevel] && !v62)
      {

        v17 = swift_task_alloc();
        *(v0 + 600) = v17;
        *v17 = v0;
        v18 = sub_100639AB8;
        goto LABEL_44;
      }

      v65 = [objc_opt_self() capabilitiesForCurrentDevice];
      v66 = [v65 opaqueRepresentation];

      if (v66)
      {
        v67 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v105 = v68;
        v106 = v67;
      }

      else
      {
        v105 = 0xF000000000000000;
        v106 = 0;
      }

      v69 = [v1 someComputerName];
      if (v69)
      {
        v70 = v69;
        v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v103 = v72;
        v104 = v71;
      }

      else
      {
        v103 = 0;
        v104 = 0;
      }

      v73 = [v1 modelName];
      if (v73)
      {
        v74 = v73;
        v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v101 = v76;
        v102 = v75;
      }

      else
      {
        v101 = 0;
        v102 = 0;
      }

      if (v61)
      {
        v77 = [v61 deviceIRKData];
        if (v77)
        {
          v78 = v77;
          v79 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v81 = v80;
        }

        else
        {
          v79 = 0;
          v81 = 0xF000000000000000;
        }

        v85 = [v61 edPKData];
        v83 = v79;
        if (v85)
        {
          v86 = v85;
          v87 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v99 = v88;
          v100 = v87;
        }

        else
        {
          v99 = 0xF000000000000000;
          v100 = 0;
        }

        v89 = [v61 idsDeviceID];
        if (v89)
        {
          v90 = v89;
          v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v92 = v91;
        }

        else
        {
          v98 = 0;
          v92 = 0;
        }

        v97 = v92;
        v82 = [v61 featureFlags];
        v84 = v81;
      }

      else
      {
        v82 = 0;
        v97 = 0;
        v98 = 0;
        v83 = 0;
        v99 = 0xF000000000000000;
        v100 = 0;
        v84 = 0xF000000000000000;
      }

      v93 = sub_1001BC3B0(v82);
      v94 = [v1 discoverableLevel] != 0;
      sub_1002A9924(v59, v107);
      sub_10028BCC0(0, 0xF000000000000000);
      sub_10028BCC0(0, 0xF000000000000000);
      sub_10028BCC0(0, 0xF000000000000000);
      sub_10028BCC0(0, 0xF000000000000000);
      *(v0 + 16) = v106;
      *(v0 + 24) = v105;
      *(v0 + 32) = v104;
      *(v0 + 40) = v103;
      *(v0 + 48) = v59;
      *(v0 + 56) = v107;
      *(v0 + 64) = v102;
      *(v0 + 72) = v101;
      *(v0 + 80) = v83;
      *(v0 + 88) = v84;
      *(v0 + 96) = v100;
      *(v0 + 104) = v99;
      *(v0 + 112) = v98;
      *(v0 + 120) = v97;
      *(v0 + 128) = v93;
      *(v0 + 136) = 0;
      *(v0 + 144) = v37;
      *(v0 + 152) = v39;
      *(v0 + 160) = v94;
      *(v0 + 168) = v106;
      *(v0 + 176) = v105;
      *(v0 + 184) = v104;
      *(v0 + 192) = v103;
      *(v0 + 200) = v59;
      *(v0 + 208) = v107;
      *(v0 + 216) = v102;
      *(v0 + 224) = v101;
      *(v0 + 232) = v83;
      *(v0 + 240) = v84;
      *(v0 + 248) = v100;
      *(v0 + 256) = v99;
      *(v0 + 264) = v98;
      *(v0 + 272) = v97;
      *(v0 + 280) = v93;
      *(v0 + 288) = 0;
      *(v0 + 296) = v37;
      *(v0 + 304) = v39;
      *(v0 + 312) = v94;
      sub_1003CB81C(v0 + 16, v0 + 320);
      sub_1003CB878(v0 + 168);
      v95 = swift_task_alloc();
      *(v0 + 584) = v95;
      *v95 = v0;
      v95[1] = sub_1006398D0;
      v96 = *(v0 + 496);

      return sub_1006460E4(v0 + 16, v96);
    }
  }

  else
  {
    if (qword_100973B88 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000C4AC(v19, qword_100987550);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Screen is off, rejecting DISCOVER", v22, 2u);
    }

    v23 = *(v0 + 528);
    v24 = *(v0 + 520);
    v25 = *(v0 + 512);
    v26 = *(v0 + 496);

    sub_10064FA6C(v26, v25, type metadata accessor for SDAirDropServerConnection);
    (*(v23 + 56))(v25, 0, 1, v24);
    v27 = swift_task_alloc();
    *(v0 + 672) = v27;
    *v27 = v0;
    v27[1] = sub_10063A248;
    v28 = *(v0 + 512);

    return sub_100645498(v28);
  }
}

uint64_t sub_1006398D0()
{
  v2 = *v1;
  *(*v1 + 592) = v0;

  v3 = *(v2 + 544);
  if (v0)
  {
    v4 = sub_10063A664;
  }

  else
  {
    v4 = sub_1006399FC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1006399FC()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v6 = v0[59];
  v5 = v0[60];
  sub_1003CB878((v0 + 2));

  sub_10028BCC0(v3, v2);
  sub_10028BCC0(v6, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100639AB8()
{
  v2 = *v1;
  *(*v1 + 608) = v0;

  v3 = *(v2 + 544);
  if (v0)
  {
    v4 = sub_10063A5B0;
  }

  else
  {
    v4 = sub_100639BE4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100639BE4()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  v5 = *(v0 + 472);
  v4 = *(v0 + 480);

  sub_10028BCC0(v2, v1);
  sub_10028BCC0(v5, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100639C98()
{
  v2 = *v1;
  *(*v1 + 624) = v0;

  v3 = *(v2 + 544);
  if (v0)
  {
    v4 = sub_10063A530;
  }

  else
  {
    v4 = sub_100639DC4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100639DC4()
{
  v1 = v0[69];
  sub_10028BCC0(v0[59], v0[60]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100639E44()
{
  v2 = *v1;
  *(*v1 + 640) = v0;

  v3 = *(v2 + 544);
  if (v0)
  {
    v4 = sub_10063A4B0;
  }

  else
  {
    v4 = sub_10064FBFC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100639F70()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  v3 = *(v2 + 544);
  if (v0)
  {
    v4 = sub_10063A438;
  }

  else
  {
    v4 = sub_10063A09C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10063A09C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10063A114()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10063A248()
{
  v2 = *v1;
  v2[85] = v0;

  if (v0)
  {
    v3 = v2[68];
    sub_100005508(v2[64], &qword_100982518, &unk_100808DA0);

    return _swift_task_switch(sub_10063A3C8, v3, 0);
  }

  else
  {
    sub_100005508(v2[64], &qword_100982518, &unk_100808DA0);

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_10063A3C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10063A438()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10063A4B0()
{
  v1 = v0[69];
  sub_10028BCC0(v0[59], v0[60]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10063A530()
{
  v1 = v0[69];
  sub_10028BCC0(v0[59], v0[60]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10063A5B0()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  v5 = *(v0 + 472);
  v4 = *(v0 + 480);

  sub_10028BCC0(v2, v1);
  sub_10028BCC0(v5, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10063A664()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v6 = v0[59];
  v5 = v0[60];
  sub_1003CB878((v0 + 2));

  sub_10028BCC0(v3, v2);
  sub_10028BCC0(v6, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10063A720(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for SFPlatform();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  sub_10028088C(&qword_100982518, &unk_100808DA0);
  v3[14] = swift_task_alloc();
  sub_10028088C(&qword_100977B90, &qword_1007FADC0);
  v3[15] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_10063A88C, v5, 0);
}

uint64_t sub_10063A88C()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[9];
  v4 = v0[10];
  sub_10064FA6C(v0[8], v2, _s12HelloRequestVMa);
  v5 = _s12HelloRequestVMa(0);
  (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_helloRequest;
  swift_beginAccess();
  sub_10000C788(v2, v4 + v6, &qword_100977B90, &qword_1007FADC0);
  swift_endAccess();
  sub_10064FA6C(v3, v1, type metadata accessor for SDAirDropServerConnection);
  v7 = type metadata accessor for SDAirDropServerConnection(0);
  (*(*(v7 - 8) + 56))(v1, 0, 1, v7);
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_helloConnection;
  swift_beginAccess();
  sub_10000C788(v1, v4 + v8, &qword_100982518, &unk_100808DA0);
  swift_endAccess();
  if (qword_100973B88 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_100987550);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Received HELLO request", v12, 2u);
  }

  v14 = v0[12];
  v13 = v0[13];
  v15 = v0[11];
  v16 = v0[8];

  static SFPlatform.macOS.getter();
  v17 = static SFPlatform.isPlatform(_:)();
  v18 = *(v14 + 8);
  v18(v13, v15);
  v19 = ((v17 & 1) == 0) | 4;
  v20 = *(v16 + *(v5 + 24));
  if (v20 == 2)
  {
    v21 = swift_task_alloc();
    v0[16] = v21;
    *v21 = v0;
    v21[1] = sub_10063AC2C;
    v22 = v0[9];
    v23 = ((v17 & 1) == 0) | 4u;
  }

  else
  {
    if (v20)
    {
      v24 = (v17 & 1) == 0;
      v25 = v0[13];
      v26 = v0[11];
      static SFPlatform.macOS.getter();
      v27 = static SFPlatform.isPlatform(_:)();
      v18(v25, v26);
      if ((v27 & 1) == 0)
      {
        v19 = v24 | 6;
      }
    }

    v28 = swift_task_alloc();
    v0[17] = v28;
    *v28 = v0;
    v28[1] = sub_10063AD7C;
    v22 = v0[9];
    v23 = v19 | (v20 << 32);
  }

  return sub_10064F4DC(v23, v22);
}

uint64_t sub_10063AC2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10063AD7C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10063AECC(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = type metadata accessor for SFAirDropReceive.AskResponse();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDropReceive.AskRequest();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDrop.AskProgress();
  v3[24] = v6;
  v3[25] = *(v6 - 8);
  v3[26] = swift_task_alloc();
  v7 = sub_10028088C(&qword_10097A690, &qword_1007FD7E8);
  v3[27] = v7;
  v3[28] = *(v7 - 8);
  v3[29] = swift_task_alloc();
  sub_10028088C(&qword_100982520, &qword_10080E300);
  v3[30] = swift_task_alloc();
  sub_10028088C(&qword_100977BD8, &qword_1007FAE38);
  v3[31] = swift_task_alloc();
  sub_10028088C(&qword_100982518, &unk_100808DA0);
  v3[32] = swift_task_alloc();
  sub_10028088C(&qword_100977BA0, &qword_1007FADD0);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v3[35] = static AirDropActor.shared;

  return _swift_task_switch(sub_10063B1E4, v8, 0);
}

uint64_t sub_10063B1E4()
{
  v1 = v0[34];
  v2 = v0[16];
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askRequest;
  swift_beginAccess();
  sub_10000FF90(v2 + v3, v1, &qword_100977BA0, &qword_1007FADD0);
  v4 = _s10AskRequestVMa(0);
  v0[36] = v4;
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  sub_100005508(v1, &qword_100977BA0, &qword_1007FADD0);
  if (v6 == 1)
  {
    v7 = v0[32];
    v8 = v0[33];
    v9 = v0[15];
    v10 = v0[16];
    sub_10064FA6C(v0[14], v8, _s10AskRequestVMa);
    (*(v5 + 56))(v8, 0, 1, v4);
    swift_beginAccess();
    sub_10000C788(v8, v2 + v3, &qword_100977BA0, &qword_1007FADD0);
    swift_endAccess();
    sub_10064FA6C(v9, v7, type metadata accessor for SDAirDropServerConnection);
    v11 = type metadata accessor for SDAirDropServerConnection(0);
    (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
    v12 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askConnection;
    swift_beginAccess();
    sub_10000C788(v7, v10 + v12, &qword_100982518, &unk_100808DA0);
    swift_endAccess();
    if (qword_100973B88 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    v0[37] = sub_10000C4AC(v13, qword_100987550);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Received ASK request", v16, 2u);
    }

    v17 = swift_task_alloc();
    v0[38] = v17;
    *v17 = v0;
    v17[1] = sub_10063B724;
    v18 = v0[15];

    return sub_100646C4C(v18);
  }

  else
  {
    if (qword_100973B88 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000C4AC(v20, qword_100987550);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Received duplicate ASK request", v23, 2u);
    }

    v24 = type metadata accessor for SFAirDropReceive.Failure();
    sub_10064FB3C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, enum case for SFAirDropReceive.Failure.badRequest(_:), v24);
    swift_willThrow();

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_10063B724()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 280);

    return _swift_task_switch(sub_10063B8F0, v6, 0);
  }
}

uint64_t sub_10063B8F0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[39] = Strong;
  if (Strong)
  {
    v2 = v0[31];
    sub_10000FF90(v0[14] + *(v0[36] + 20), v2, &qword_100977BD8, &qword_1007FAE38);
    v3 = type metadata accessor for SFAirDrop.TransferType();
    v4 = *(v3 - 8);
    v5 = (*(v4 + 48))(v2, 1, v3);
    v6 = v0[31];
    if (v5 == 1)
    {
      sub_100005508(v0[31], &qword_100977BD8, &qword_1007FAE38);
    }

    else
    {
      SFAirDrop.TransferType.exchangeType.getter();
      v18 = v17;
      (*(v4 + 8))(v6, v3);
      if (v18)
      {
        v19 = v0[30];
        v20 = v0[16];

        _s15ExchangeRequestVMa(0);
        SFProgressContinuation.init(_:initialProgress:file:line:)();
        v21 = sub_10028088C(&unk_10097A6A0, &qword_10080E1A0);
        (*(*(v21 - 8) + 56))(v19, 0, 1, v21);
        v22 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeContinuation;
        swift_beginAccess();
        sub_10000C788(v19, v20 + v22, &qword_100982520, &qword_10080E300);
        swift_endAccess();
      }
    }

    v24 = v0[28];
    v23 = v0[29];
    v26 = v0[26];
    v25 = v0[27];
    v27 = v0[24];
    v28 = v0[25];
    v29 = v0[16];
    v30 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askContinuation;
    v0[40] = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askContinuation;
    v31 = *(v24 + 16);
    v0[41] = v31;
    v0[42] = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v31(v23, v29 + v30, v25);
    (*(v28 + 104))(v26, enum case for SFAirDrop.AskProgress.waitingForAskResponse(_:), v27);
    SFProgressContinuation.yield(_:)();
    (*(v28 + 8))(v26, v27);
    v32 = *(v24 + 8);
    v0[43] = v32;
    v0[44] = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32(v23, v25);
    v33 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_id;
    v34 = *(v29 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_deviceStatus);
    v35 = *(v29 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_endpointService);
    v36 = swift_task_alloc();
    v0[45] = v36;
    *v36 = v0;
    v36[1] = sub_10063BD7C;
    v37 = v0[23];
    v38 = v0[15];

    return sub_1005A721C(v37, v29 + v33, v34, v38, v35);
  }

  else
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Nil delegate when handling askRequest", v9, 2u);
    }

    v11 = v0[18];
    v10 = v0[19];
    v12 = v0[17];

    (*(v11 + 104))(v10, enum case for SFAirDropReceive.AskResponse.error(_:), v12);
    v13 = swift_task_alloc();
    v0[49] = v13;
    *v13 = v0;
    v13[1] = sub_10063C2FC;
    v14 = v0[19];
    v15 = v0[15];

    return sub_1006471CC(v14, v15);
  }
}

uint64_t sub_10063BD7C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[46] = v3;
  *v3 = v2;
  v3[1] = sub_10063BEFC;
  v4 = v1[23];
  v5 = v1[20];
  v6 = v1[16];

  return sub_1003605F4(v5, v6, v4);
}

uint64_t sub_10063BEFC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[47] = v3;
  *v3 = v2;
  v3[1] = sub_10063C068;
  v4 = v1[15];
  v5 = v1[20];

  return sub_1006471CC(v5, v4);
}

uint64_t sub_10063C068()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 280);
  if (v0)
  {
    v4 = sub_10063C5EC;
  }

  else
  {
    v4 = sub_10063C194;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10063C194()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *(v0 + 160);
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  (*(v0 + 328))(v2, *(v0 + 128) + *(v0 + 320), v3);
  SFProgressContinuation.finish(with:)();
  swift_unknownObjectRelease();
  v1(v2, v3);
  (*(v6 + 8))(v4, v5);
  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10063C2FC()
{
  v2 = *v1;
  v2[50] = v0;

  if (v0)
  {
    v3 = v2[35];
    (*(v2[18] + 8))(v2[19], v2[17]);

    return _swift_task_switch(sub_10063C504, v3, 0);
  }

  else
  {
    (*(v2[18] + 8))(v2[19], v2[17]);

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_10063C504()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10063C5EC()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[17];
  v6 = v0[18];
  swift_unknownObjectRelease();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10063C718(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  sub_10028088C(&unk_100983FC0, &qword_10080B618);
  v3[25] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropReceive.Failure();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v5 = type metadata accessor for SDAirDropServerConnection(0);
  v3[30] = v5;
  v3[31] = *(v5 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  sub_10028088C(&qword_100982518, &unk_100808DA0);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  sub_10028088C(&qword_100977BB0, &qword_1007FADE0);
  v3[39] = swift_task_alloc();
  sub_10028088C(&qword_100977BA0, &qword_1007FADD0);
  v3[40] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDrop.AskProgress();
  v3[41] = v6;
  v3[42] = *(v6 - 8);
  v3[43] = swift_task_alloc();
  sub_10028088C(&qword_100987658, &qword_10080E358);
  v3[44] = swift_task_alloc();
  v7 = sub_10028088C(&qword_100987660, &qword_10080E360);
  v3[45] = v7;
  v3[46] = *(v7 - 8);
  v3[47] = swift_task_alloc();
  v8 = sub_10028088C(&qword_10097A690, &qword_1007FD7E8);
  v3[48] = v8;
  v3[49] = *(v8 - 8);
  v3[50] = swift_task_alloc();
  v9 = sub_10028088C(&qword_100987668, &qword_10080E368);
  v3[51] = v9;
  v3[52] = *(v9 - 8);
  v3[53] = swift_task_alloc();
  sub_10028088C(&qword_100977B90, &qword_1007FADC0);
  v3[54] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v10 = static AirDropActor.shared;
  v3[55] = static AirDropActor.shared;

  return _swift_task_switch(sub_10063CBA0, v10, 0);
}

uint64_t sub_10063CBA0()
{
  if (qword_100973B88 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 448) = sub_10000C4AC(v1, qword_100987550);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received UPLOAD request", v4, 2u);
  }

  v5 = *(v0 + 432);
  v6 = *(v0 + 192);

  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_helloRequest;
  swift_beginAccess();
  sub_10000FF90(v6 + v7, v5, &qword_100977B90, &qword_1007FADC0);
  v8 = _s12HelloRequestVMa(0);
  LODWORD(v6) = (*(*(v8 - 8) + 48))(v5, 1, v8);
  sub_100005508(v5, &qword_100977B90, &qword_1007FADC0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  if (v6 == 1)
  {
    if (v11)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "No HELLO request present", v12, 2u);
    }

    v13 = *(v0 + 320);
    v14 = *(v0 + 192);

    v15 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askRequest;
    swift_beginAccess();
    sub_10000FF90(v14 + v15, v13, &qword_100977BA0, &qword_1007FADD0);
    v16 = _s10AskRequestVMa(0);
    LODWORD(v14) = (*(*(v16 - 8) + 48))(v13, 1, v16);
    sub_100005508(v13, &qword_100977BA0, &qword_1007FADD0);
    if (v14 == 1)
    {
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "No ASK request before UPLOAD", v19, 2u);
      }

      v20 = *(v0 + 208);
      v21 = *(v0 + 216);

      sub_10064FB3C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
      swift_allocError();
      (*(v21 + 104))(v22, enum case for SFAirDropReceive.Failure.badRequest(_:), v20);
      swift_willThrow();

      v23 = *(v0 + 8);

      return v23();
    }

    else
    {
      v38 = *(v0 + 304);
      v39 = *(v0 + 312);
      v40 = *(v0 + 240);
      v41 = *(v0 + 248);
      v42 = *(v0 + 184);
      v43 = *(v0 + 192);
      v44 = *(v0 + 176);
      sub_10064FA6C(v44, v39, _s13UploadRequestVMa);
      v45 = _s13UploadRequestVMa(0);
      *(v0 + 472) = v45;
      (*(*(v45 - 8) + 56))(v39, 0, 1, v45);
      v46 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_uploadRequest;
      swift_beginAccess();
      sub_10000C788(v39, v43 + v46, &qword_100977BB0, &qword_1007FADE0);
      swift_endAccess();
      v47 = *(v44 + *(v45 + 20));
      *(v0 + 480) = v47;
      v48 = v43 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_totalBytes;
      *v48 = v47;
      *(v48 + 8) = 0;
      sub_10064FA6C(v42, v38, type metadata accessor for SDAirDropServerConnection);
      v49 = *(v41 + 56);
      *(v0 + 488) = v49;
      *(v0 + 496) = (v41 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v49(v38, 0, 1, v40);
      v50 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_uploadConnection;
      swift_beginAccess();
      sub_10000C788(v38, v43 + v50, &qword_100982518, &unk_100808DA0);
      swift_endAccess();
      v51 = swift_task_alloc();
      *(v0 + 504) = v51;
      *v51 = v0;
      v51[1] = sub_10063D9B4;
      v52 = *(v0 + 184);

      return sub_100646C4C(v52);
    }
  }

  else
  {
    if (v11)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "HELLO request present", v25, 2u);
    }

    v27 = *(v0 + 392);
    v26 = *(v0 + 400);
    v29 = *(v0 + 376);
    v28 = *(v0 + 384);
    v30 = *(v0 + 360);
    v31 = *(v0 + 368);
    v32 = *(v0 + 192);

    (*(v27 + 16))(v26, v32 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askContinuation, v28);
    SFProgressContinuation.task.getter();
    (*(v27 + 8))(v26, v28);
    SFProgressTask.makeAsyncIterator()();
    (*(v31 + 8))(v29, v30);
    v33 = sub_10064FB3C(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    *(v0 + 456) = v33;
    *(v0 + 584) = enum case for SFAirDrop.AskProgress.notStarted(_:);
    v34 = *(v0 + 440);
    v35 = swift_task_alloc();
    *(v0 + 464) = v35;
    *v35 = v0;
    v35[1] = sub_10063D3D0;
    v36 = *(v0 + 408);
    v37 = *(v0 + 352);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v37, v34, v33, v36, v0 + 168);
  }
}

uint64_t sub_10063D3D0()
{
  v2 = *v1;

  v3 = *(v2 + 440);
  if (v0)
  {
    v4 = sub_10063E2D0;
  }

  else
  {
    v4 = sub_10063D4E4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10063D4E4()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 328);
  v3 = *(v0 + 336);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    goto LABEL_16;
  }

  v4 = *(v0 + 584);
  v5 = *(v0 + 344);
  (*(v3 + 32))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == v4)
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Waiting for ASK before UPLOAD", v9, 2u);
    }

    v10 = *(v0 + 456);
    v11 = *(v0 + 440);
    v12 = swift_task_alloc();
    *(v0 + 464) = v12;
    *v12 = v0;
    v12[1] = sub_10063D3D0;
    v13 = *(v0 + 408);
    v14 = *(v0 + 352);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v14, v11, v10, v13, v0 + 168);
  }

  if (v6 == enum case for SFAirDrop.AskProgress.waitingForAskResponse(_:))
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Received ASK request, proceeding pipelined with UPLOAD";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v15, v16, v18, v17, 2u);

      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (v6 == enum case for SFAirDrop.AskProgress.askResponseReceived(_:))
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "ASK response sent, proceeding with UPLOAD";
      goto LABEL_14;
    }

LABEL_15:

LABEL_16:
    (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));
    v19 = *(v0 + 304);
    v20 = *(v0 + 312);
    v21 = *(v0 + 240);
    v22 = *(v0 + 248);
    v23 = *(v0 + 184);
    v24 = *(v0 + 192);
    v25 = *(v0 + 176);
    sub_10064FA6C(v25, v20, _s13UploadRequestVMa);
    v26 = _s13UploadRequestVMa(0);
    *(v0 + 472) = v26;
    (*(*(v26 - 8) + 56))(v20, 0, 1, v26);
    v27 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_uploadRequest;
    swift_beginAccess();
    sub_10000C788(v20, v24 + v27, &qword_100977BB0, &qword_1007FADE0);
    swift_endAccess();
    v28 = *(v25 + *(v26 + 20));
    *(v0 + 480) = v28;
    v29 = v24 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_totalBytes;
    *v29 = v28;
    *(v29 + 8) = 0;
    sub_10064FA6C(v23, v19, type metadata accessor for SDAirDropServerConnection);
    v30 = *(v22 + 56);
    *(v0 + 488) = v30;
    *(v0 + 496) = (v22 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v30(v19, 0, 1, v21);
    v31 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_uploadConnection;
    swift_beginAccess();
    sub_10000C788(v19, v24 + v31, &qword_100982518, &unk_100808DA0);
    swift_endAccess();
    v32 = swift_task_alloc();
    *(v0 + 504) = v32;
    *v32 = v0;
    v32[1] = sub_10063D9B4;
    v33 = *(v0 + 184);

    return sub_100646C4C(v33);
  }

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

uint64_t sub_10063D9B4()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 440);

    return _swift_task_switch(sub_10063DBE4, v6, 0);
  }
}

uint64_t sub_10063DBE4()
{
  v42 = v0;
  v1 = v0[59];
  v2 = v0[24];
  v3 = v0[22];
  v4 = (v3 + *(v1 + 36));
  v6 = *v4;
  v5 = v4[1];
  v7 = (v3 + *(v1 + 40));
  v8 = *v7;
  v9 = v7[1];

  v10 = v2;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v40 = v12;
    v13 = v0[24];
    v14 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v14 = 136315650;
    *(v14 + 4) = sub_10000C4E4(*(v13 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_idsSessionID), *(v13 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_idsSessionID + 8), &v41);
    *(v14 + 12) = 2080;
    v15 = v8;
    v16 = v6;
    if (v5)
    {
      v17 = v5;
    }

    else
    {
      v6 = 0xD000000000000015;
      v17 = 0x8000000100789F30;
    }

    v18 = sub_10000C4E4(v6, v17, &v41);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2080;
    if (v9)
    {
      v19 = v15;
    }

    else
    {
      v19 = 0xD000000000000015;
    }

    if (v9)
    {
      v20 = v9;
    }

    else
    {
      v20 = 0x8000000100789F30;
    }

    v21 = sub_10000C4E4(v19, v20, &v41);
    v6 = v16;
    v8 = v15;

    *(v14 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v11, v40, "Receiver extracted IDS session ID %s, pseudonym: %s, push token: %s from upload request", v14, 0x20u);
    swift_arrayDestroy();
  }

  v22 = v0[37];
  v23 = v0[30];
  v24 = v0[31];
  v25 = v0[24];
  v26 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askConnection;
  swift_beginAccess();
  sub_10000FF90(v25 + v26, v22, &qword_100982518, &unk_100808DA0);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_100005508(v0[37], &qword_100982518, &unk_100808DA0);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "ASK connection no longer exists to set Internet fallback endpoint", v29, 2u);
    }
  }

  else
  {
    v30 = v0[32];
    v31 = v0[33];
    sub_10064FAD4(v0[37], v31, type metadata accessor for SDAirDropServerConnection);
    sub_10064FA6C(v31, v30, type metadata accessor for SDAirDropServerConnection);
    if (swift_getEnumCaseMultiPayload() >= 2)
    {
      v32 = v0[32];
      v33 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
      v34 = type metadata accessor for UUID();
      (*(*(v34 - 8) + 8))(v32 + v33, v34);
    }

    v35 = v0[33];
    sub_10062DD18(*(v0[24] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_idsSessionID), *(v0[24] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_idsSessionID + 8), v6, v5, v8, v9);

    sub_10064FB84(v35, type metadata accessor for SDAirDropServerConnection);
  }

  v36 = v0[60];
  swift_beginAccess();
  SFAirDrop.NetworkMetrics.logUploadStart(totalBytes:)(v36);
  swift_endAccess();
  v37 = swift_task_alloc();
  v0[64] = v37;
  *v37 = v0;
  v37[1] = sub_10063E0A0;
  v38 = v0[22];

  return sub_1006487E8(v38);
}

uint64_t sub_10063E0A0()
{
  v2 = *v1;
  v2[65] = v0;

  if (v0)
  {
    v3 = v2[55];

    return _swift_task_switch(sub_10063E434, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_10063E2D0()
{
  (*(v0[52] + 8))(v0[53], v0[51]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10063E434()
{
  v0[20] = v0[65];
  v1 = v0[27];
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if (v2)
  {
    v4 = v0[28];
    v5 = v0[29];
    v6 = v0[26];
    v7 = v0[27];
    v8 = v0[25];
    v3(v8, 0, 1, v6);
    (*(v7 + 32))(v5, v8, v6);
    v9 = *(v7 + 16);
    v0[66] = v9;
    v0[67] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v4, v5, v6);
    LODWORD(v8) = (*(v7 + 88))(v4, v6);
    v10 = enum case for SFAirDropReceive.Failure.insufficientStorage(_:);
    v11 = *(v7 + 8);
    v0[68] = v11;
    v0[69] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v4, v6);
    v12 = v0[61];
    v13 = v0[30];
    v14 = v0[23];
    if (v8 == v10)
    {
      v15 = v0[36];
      sub_10064FA6C(v14, v15, type metadata accessor for SDAirDropServerConnection);
      v12(v15, 0, 1, v13);
      v16 = swift_task_alloc();
      v0[70] = v16;
      *v16 = v0;
      v16[1] = sub_10063E7B4;
      v17 = v0[36];

      return sub_100649A18(v17);
    }

    v26 = v0[35];
    sub_10064FA6C(v14, v26, type metadata accessor for SDAirDropServerConnection);
    v12(v26, 0, 1, v13);
    v27 = swift_task_alloc();
    v0[71] = v27;
    *v27 = v0;
    v27[1] = sub_10063E930;
    v25 = v0[35];
  }

  else
  {
    v19 = v0[61];
    v20 = v0[34];
    v21 = v0[30];
    v22 = v0[25];
    v23 = v0[23];
    v3(v22, 1, 1, v0[26]);
    sub_100005508(v22, &unk_100983FC0, &qword_10080B618);
    sub_10064FA6C(v23, v20, type metadata accessor for SDAirDropServerConnection);
    v19(v20, 0, 1, v21);
    v24 = swift_task_alloc();
    v0[72] = v24;
    *v24 = v0;
    v24[1] = sub_10063EC88;
    v25 = v0[34];
  }

  return sub_100649224(v25);
}

uint64_t sub_10063E7B4()
{
  v2 = *v1;

  v3 = *(v2 + 440);
  v4 = *(v2 + 288);
  if (v0)
  {
  }

  sub_100005508(v4, &qword_100982518, &unk_100808DA0);

  return _swift_task_switch(sub_10064FC00, v3, 0);
}

uint64_t sub_10063E930()
{
  v2 = *v1;

  v3 = *(v2 + 440);
  v4 = *(v2 + 280);
  if (v0)
  {

    sub_100005508(v4, &qword_100982518, &unk_100808DA0);
    v5 = sub_10064FC00;
  }

  else
  {
    sub_100005508(v4, &qword_100982518, &unk_100808DA0);
    v5 = sub_10063EAAC;
  }

  return _swift_task_switch(v5, v3, 0);
}

uint64_t sub_10063EAAC()
{
  v1 = v0[68];
  v2 = v0[66];
  v3 = v0[29];
  v4 = v0[26];
  sub_10064FB3C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
  swift_allocError();
  v2(v5, v3, v4);
  swift_willThrow();

  v1(v3, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10063EC88()
{
  v2 = *v1;

  v3 = *(v2 + 440);
  v4 = *(v2 + 272);
  if (v0)
  {

    sub_100005508(v4, &qword_100982518, &unk_100808DA0);
    v5 = sub_10064FBF4;
  }

  else
  {
    sub_100005508(v4, &qword_100982518, &unk_100808DA0);
    v5 = sub_10063EE04;
  }

  return _swift_task_switch(v5, v3, 0);
}

uint64_t sub_10063EE04(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10063EF58(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_10028088C(&unk_10097A6A0, &qword_10080E1A0);
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  sub_10028088C(&qword_100982518, &unk_100808DA0);
  v3[17] = swift_task_alloc();
  sub_10028088C(&qword_100982508, &unk_100808D50);
  v3[18] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v3[19] = static AirDropActor.shared;

  return _swift_task_switch(sub_10063F0D4, v5, 0);
}

uint64_t sub_10063F0D4()
{
  if (qword_100973B88 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100987550);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received EXCHANGE request", v4, 2u);
  }

  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[12];
  v8 = v0[13];
  v9 = v0[11];

  sub_10064FA6C(v9, v6, _s15ExchangeRequestVMa);
  v10 = _s15ExchangeRequestVMa(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeRequest;
  swift_beginAccess();
  sub_10000C788(v6, v8 + v11, &qword_100982508, &unk_100808D50);
  swift_endAccess();
  sub_10064FA6C(v7, v5, type metadata accessor for SDAirDropServerConnection);
  v12 = type metadata accessor for SDAirDropServerConnection(0);
  (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
  v13 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeConnection;
  swift_beginAccess();
  sub_10000C788(v5, v8 + v13, &qword_100982518, &unk_100808DA0);
  swift_endAccess();
  v14 = swift_task_alloc();
  v0[20] = v14;
  *v14 = v0;
  v14[1] = sub_10063F378;
  v15 = v0[12];

  return sub_100646C4C(v15);
}

uint64_t sub_10063F378()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 152);

    return _swift_task_switch(sub_10063F4D0, v6, 0);
  }
}

uint64_t sub_10063F4D0()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeContinuation;
  swift_beginAccess();
  if (!(*(v1 + 48))(v3 + v4, 1, v2))
  {
    v6 = v0[15];
    v5 = v0[16];
    v7 = v0[14];
    (*(v6 + 16))(v5, v3 + v4, v7);
    SFProgressContinuation.finish(with:)();
    (*(v6 + 8))(v5, v7);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_10063F5EC(uint64_t a1, uint64_t a2)
{
  *(v3 + 192) = a2;
  *(v3 + 200) = v2;
  v4 = *(a1 + 48);
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a1 + 64);
  *(v3 + 96) = *(a1 + 80);
  v5 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;
  sub_10028088C(&qword_100982518, &unk_100808DA0);
  *(v3 + 208) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  *(v3 + 216) = static AirDropActor.shared;

  return _swift_task_switch(sub_10063F6E4, v6, 0);
}

uint64_t sub_10063F6E4()
{
  if (qword_100973B88 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 224) = sub_10000C4AC(v1, qword_100987550);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received IDENTITY-SHARE request", v4, 2u);
  }

  v5 = *(v0 + 208);
  v6 = *(v0 + 192);

  v7 = *(v0 + 64);
  *(v0 + 136) = *(v0 + 48);
  *(v0 + 152) = v7;
  *(v0 + 168) = *(v0 + 80);
  *(v0 + 184) = *(v0 + 96);
  v8 = *(v0 + 32);
  *(v0 + 104) = *(v0 + 16);
  *(v0 + 120) = v8;
  sub_10064FA6C(v6, v5, type metadata accessor for SDAirDropServerConnection);
  v9 = type metadata accessor for SDAirDropServerConnection(0);
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  v10 = swift_task_alloc();
  *(v0 + 232) = v10;
  *v10 = v0;
  v10[1] = sub_10063F8DC;
  v11 = *(v0 + 208);

  return sub_100642E64(v0 + 104, 0, 0xF000000000000000, 0, 0, v11);
}

uint64_t sub_10063F8DC()
{
  v2 = *(*v1 + 208);
  v3 = *v1;
  v3[30] = v0;

  sub_100005508(v2, &qword_100982518, &unk_100808DA0);
  if (v0)
  {
    v4 = v3[27];

    return _swift_task_switch(sub_10063FB94, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[31] = v5;
    *v5 = v3;
    v5[1] = sub_10063FA84;
    v6 = v3[24];

    return sub_1006466CC(v6);
  }
}

uint64_t sub_10063FA84()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10063FB94()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Import identity failed %@", v3, 0xCu);
    sub_100005508(v4, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v6 = swift_task_alloc();
  *(v0 + 248) = v6;
  *v6 = v0;
  v6[1] = sub_10063FA84;
  v7 = *(v0 + 192);

  return sub_1006466CC(v7);
}

uint64_t sub_10063FD30(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v3[8] = type metadata accessor for SDAirDropMessage(0);
  v3[9] = swift_task_alloc();
  v4 = type metadata accessor for SDAirDropServerConnection(0);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  sub_10028088C(&qword_100982518, &unk_100808DA0);
  v3[13] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v3[14] = static AirDropActor.shared;

  return _swift_task_switch(sub_10063FE98, v5, 0);
}

uint64_t sub_10063FE98()
{
  if (qword_100973B88 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100987550);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received ERROR request", v4, 2u);
  }

  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[6];
  v9 = v0[7];

  sub_10064FA6C(v8, v5, type metadata accessor for SDAirDropServerConnection);
  (*(v7 + 56))(v5, 0, 1, v6);
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_errorConnection;
  v0[15] = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_errorConnection;
  swift_beginAccess();
  sub_10000C788(v5, v9 + v10, &qword_100982518, &unk_100808DA0);
  swift_endAccess();
  v11 = swift_task_alloc();
  v0[16] = v11;
  *v11 = v0;
  v11[1] = sub_100640080;
  v12 = v0[6];

  return sub_100646C4C(v12);
}

uint64_t sub_100640080()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 112);

    return _swift_task_switch(sub_1006401D8, v6, 0);
  }
}

uint64_t sub_1006401D8()
{
  v1 = v0[15];
  v2 = v0[7];
  if ((*(v0[11] + 48))(v2 + v1, 1, v0[10]))
  {
    v3 = v0[5];
    v4 = *(_s12ErrorRequestVMa(0) + 20);
    v5 = type metadata accessor for CodableError();
    sub_10064FB3C(&qword_100977C18, &type metadata accessor for CodableError, &protocol conformance descriptor for CodableError);
    v6 = swift_allocError();
    v0[19] = v6;
    (*(*(v5 - 8) + 16))(v7, v3 + v4, v5);
    v8 = swift_task_alloc();
    v0[20] = v8;
    *v8 = v0;
    v8[1] = sub_1006406C0;

    return sub_100641284(v6);
  }

  else
  {
    v10 = v0[9];
    sub_10064FA6C(v2 + v1, v0[12], type metadata accessor for SDAirDropServerConnection);
    *v10 = xmmword_1007FAD30;
    swift_storeEnumTagMultiPayload();
    v11 = swift_task_alloc();
    v0[17] = v11;
    *v11 = v0;
    v11[1] = sub_1006403F0;
    v12 = v0[9];

    return sub_1005AE288(v12);
  }
}

uint64_t sub_1006403F0()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 72);
  *(*v1 + 144) = v0;

  sub_10064FB84(v4, type metadata accessor for SDAirDropMessage);
  sub_10064FB84(v3, type metadata accessor for SDAirDropServerConnection);
  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_100640830;
  }

  else
  {
    v6 = sub_100640584;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100640584()
{
  v1 = v0[5];
  v2 = *(_s12ErrorRequestVMa(0) + 20);
  v3 = type metadata accessor for CodableError();
  sub_10064FB3C(&qword_100977C18, &type metadata accessor for CodableError, &protocol conformance descriptor for CodableError);
  v4 = swift_allocError();
  v0[19] = v4;
  (*(*(v3 - 8) + 16))(v5, v1 + v2, v3);
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_1006406C0;

  return sub_100641284(v4);
}

uint64_t sub_1006406C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100640830()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006408B0(uint64_t a1)
{
  v2 = sub_10028088C(&unk_10097A6A0, &qword_10080E1A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v59 = &v57 - v4;
  v5 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  v68 = *(v5 - 8);
  __chkstk_darwin(v5);
  v67 = &v57 - v6;
  v7 = sub_10028088C(&qword_10097A690, &qword_1007FD7E8);
  v63 = *(v7 - 8);
  v64 = v7;
  __chkstk_darwin(v7);
  v62 = &v57 - v8;
  v9 = sub_10028088C(&qword_100987670, &qword_10080E3B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v57 - v10;
  v12 = type metadata accessor for NWError();
  v65 = *(v12 - 8);
  v66 = v12;
  v13 = __chkstk_darwin(v12);
  v60 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v61 = &v57 - v15;
  v16 = sub_10028088C(&qword_10097A698, &unk_1007FD7F0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v57 - v18;
  if (qword_100973B88 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000C4AC(v20, qword_100987550);
  swift_errorRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v58 = v2;
    v24 = v23;
    v25 = swift_slowAlloc();
    v57 = v5;
    v26 = v3;
    v27 = v25;
    *v24 = 138412290;
    swift_errorRetain();
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 4) = v28;
    *v27 = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "Receive handler error %@", v24, 0xCu);
    sub_100005508(v27, &qword_100975400, &qword_1007F65D0);
    v3 = v26;
    v5 = v57;

    v2 = v58;
  }

  v29 = v69;
  (*(v17 + 16))(v19, v69 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_handlerContinuation, v16);
  SFProgressContinuation.fail(with:)();
  (*(v17 + 8))(v19, v16);
  v70 = a1;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  v30 = v66;
  v31 = swift_dynamicCast();
  v32 = v65;
  v33 = *(v65 + 56);
  if (v31)
  {
    v33(v11, 0, 1, v30);
    v34 = v61;
    (*(v32 + 32))(v61, v11, v30);
    v35 = v60;
    (*(v32 + 16))(v60, v34, v30);
    if ((*(v32 + 88))(v35, v30) == enum case for NWError.posix(_:))
    {
      v36 = v5;
      (*(v32 + 96))(v35, v30);
      v37 = POSIXErrorCode.rawValue.getter();
      if (v37 == POSIXErrorCode.rawValue.getter() || (v38 = POSIXErrorCode.rawValue.getter(), v38 == POSIXErrorCode.rawValue.getter()) || (v39 = POSIXErrorCode.rawValue.getter(), v39 == POSIXErrorCode.rawValue.getter()) || (v40 = POSIXErrorCode.rawValue.getter(), v40 == POSIXErrorCode.rawValue.getter()))
      {
        type metadata accessor for CancellationError();
        sub_10064FB3C(&unk_10097A6B0, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
        swift_allocError();
        CancellationError.init()();
      }

      else
      {
        swift_errorRetain();
      }

      v41 = v62;
      v42 = v63;
      v43 = v64;
      (*(v63 + 16))(v62, v29 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askContinuation, v64);
      swift_errorRetain();
      SFProgressContinuation.cancel(_:)();
      (*(v42 + 8))(v41, v43);
      v44 = v67;
      v45 = v68;
      (*(v68 + 16))(v67, v29 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_transferContinuation, v36);
      SFProgressContinuation.cancel(_:)();
      (*(v45 + 8))(v44, v36);
      v46 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeContinuation;
      swift_beginAccess();
      if ((*(v3 + 48))(v29 + v46, 1, v2))
      {
        (*(v32 + 8))(v61, v30);
        swift_endAccess();
      }

      else
      {
        v56 = v59;
        (*(v3 + 16))(v59, v29 + v46, v2);
        swift_endAccess();
        SFProgressContinuation.cancel(_:)();

        (*(v3 + 8))(v56, v2);
        return (*(v32 + 8))(v61, v30);
      }
    }

    v48 = *(v32 + 8);
    v48(v34, v30);
    v48(v35, v30);
  }

  else
  {
    v33(v11, 1, 1, v30);
    sub_100005508(v11, &qword_100987670, &qword_10080E3B0);
  }

  v49 = v62;
  v50 = v63;
  v51 = v64;
  (*(v63 + 16))(v62, v29 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askContinuation, v64);
  SFProgressContinuation.cancel(_:)();
  (*(v50 + 8))(v49, v51);
  v52 = v67;
  v53 = v68;
  (*(v68 + 16))(v67, v29 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_transferContinuation, v5);
  SFProgressContinuation.cancel(_:)();
  (*(v53 + 8))(v52, v5);
  v54 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeContinuation;
  swift_beginAccess();
  result = (*(v3 + 48))(v29 + v54, 1, v2);
  if (!result)
  {
    v55 = v59;
    (*(v3 + 16))(v59, v29 + v54, v2);
    SFProgressContinuation.cancel(_:)();
    return (*(v3 + 8))(v55, v2);
  }

  return result;
}

uint64_t sub_100641284(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = sub_10028088C(&qword_10097A698, &unk_1007FD7F0);
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v4 = type metadata accessor for SDAirDropServerConnection(0);
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v2[28] = static AirDropActor.shared;

  return _swift_task_switch(sub_1006413E8, v5, 0);
}

uint64_t sub_1006413E8()
{
  if (qword_100973B88 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100987550);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 160);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    if (v5)
    {
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      v9 = v8;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    *(v6 + 4) = v8;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Receive handler stop - error: %@", v6, 0xCu);
    sub_100005508(v7, &qword_100975400, &qword_1007F65D0);
  }

  v10 = *(v0 + 160);

  v11 = *(v0 + 200);
  v12 = *(v0 + 208);
  v13 = *(v0 + 168);
  if (v10)
  {
    swift_errorRetain();
    sub_1006408B0(v1);
    v14 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askConnection;
    swift_beginAccess();
    v15 = *(v12 + 48);
    if (!v15(v13 + v14, 1, v11))
    {
      v16 = *(v0 + 216);
      sub_10064FA6C(v13 + v14, v16, type metadata accessor for SDAirDropServerConnection);
      sub_1005ADD74(1);
      sub_10064FB84(v16, type metadata accessor for SDAirDropServerConnection);
    }

    v17 = *(v0 + 200);
    v18 = *(v0 + 168);
    v19 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_uploadConnection;
    swift_beginAccess();
    if (!v15(v18 + v19, 1, v17))
    {
      v20 = *(v0 + 216);
      sub_10064FA6C(v18 + v19, v20, type metadata accessor for SDAirDropServerConnection);
      sub_1005ADD74(1);
      sub_10064FB84(v20, type metadata accessor for SDAirDropServerConnection);
    }

    v21 = *(v0 + 200);
    v22 = *(v0 + 168);
    v23 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeConnection;
    swift_beginAccess();
    if (v15(v22 + v23, 1, v21))
    {
    }

    else
    {
      v38 = *(v0 + 216);
      sub_10064FA6C(v22 + v23, v38, type metadata accessor for SDAirDropServerConnection);
      sub_1005ADD74(1);

      sub_10064FB84(v38, type metadata accessor for SDAirDropServerConnection);
    }
  }

  else
  {
    v24 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askConnection;
    swift_beginAccess();
    v25 = *(v12 + 48);
    if (!v25(v13 + v24, 1, v11))
    {
      v26 = *(v0 + 216);
      sub_10064FA6C(v13 + v24, v26, type metadata accessor for SDAirDropServerConnection);
      sub_1005ADD74(1);
      sub_10064FB84(v26, type metadata accessor for SDAirDropServerConnection);
    }

    v27 = *(v0 + 200);
    v28 = *(v0 + 168);
    v29 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_uploadConnection;
    swift_beginAccess();
    if (!v25(v28 + v29, 1, v27))
    {
      v30 = *(v0 + 216);
      sub_10064FA6C(v28 + v29, v30, type metadata accessor for SDAirDropServerConnection);
      sub_1005ADD74(0);
      sub_10064FB84(v30, type metadata accessor for SDAirDropServerConnection);
    }

    v31 = *(v0 + 200);
    v32 = *(v0 + 168);
    v33 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeConnection;
    swift_beginAccess();
    if (!v25(v32 + v33, 1, v31))
    {
      v34 = *(v0 + 216);
      sub_10064FA6C(v32 + v33, v34, type metadata accessor for SDAirDropServerConnection);
      sub_1005ADD74(0);
      sub_10064FB84(v34, type metadata accessor for SDAirDropServerConnection);
    }

    v36 = *(v0 + 184);
    v35 = *(v0 + 192);
    v37 = *(v0 + 176);
    (*(v36 + 16))(v35, *(v0 + 168) + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_handlerContinuation, v37);
    *(v0 + 256) = 1;
    SFProgressContinuation.finish(with:)();
    (*(v36 + 8))(v35, v37);
  }

  v39 = *(v0 + 168);
  v40 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveCompressionAdapter;
  *(v0 + 232) = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveCompressionAdapter;
  v41 = *(v39 + v40);
  *(v0 + 240) = v41;
  if (v41)
  {

    v42 = swift_task_alloc();
    *(v0 + 248) = v42;
    *v42 = v0;
    v42[1] = sub_1006419F8;

    return sub_10029D0F8();
  }

  else
  {
    *(v39 + v40) = 0;

    v44 = *(v0 + 8);

    return v44();
  }
}

uint64_t sub_1006419F8()
{
  v1 = *(*v0 + 224);

  return _swift_task_switch(sub_100641B24, v1, 0);
}

uint64_t sub_100641B24()
{
  *(v0[21] + v0[29]) = 0;

  v1 = v0[1];

  return v1();
}

uint64_t sub_100641BA8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_10028088C(&qword_100982518, &unk_100808DA0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for CodableError();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropReceive.Failure();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v2[19] = static AirDropActor.shared;

  return _swift_task_switch(sub_100641D50, v5, 0);
}

uint64_t sub_100641D50()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  swift_errorRetain();
  SFAirDropReceive.Failure.init(_:)();
  (*(v4 + 16))(v1, v2, v3);
  v5 = (*(v4 + 88))(v1, v3);
  v6 = v0[16];
  v7 = v0[17];
  v8 = v0[15];
  if (v5 != enum case for SFAirDropReceive.Failure.unexpected(_:))
  {
    (*(v6 + 8))(v0[17], v8);
    goto LABEL_9;
  }

  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  (*(v6 + 96))(v0[17], v8);
  (*(v10 + 32))(v9, v7, v11);
  v12 = CodableError.domain.getter();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      (*(v0[13] + 8))(v0[14], v0[12]);
LABEL_9:
      v18 = v0[9];
      v19 = v0[10];
      v20 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askConnection;
      swift_beginAccess();
      sub_10000FF90(v18 + v20, v19, &qword_100982518, &unk_100808DA0);
      v21 = swift_task_alloc();
      v0[21] = v21;
      *v21 = v0;
      v21[1] = sub_100642270;
      v22 = v0[10];

      return sub_100645498(v22);
    }
  }

  v24 = v0[11];
  v25 = v0[9];
  v26 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askConnection;
  swift_beginAccess();
  sub_10000FF90(v25 + v26, v24, &qword_100982518, &unk_100808DA0);
  v27 = swift_task_alloc();
  v0[20] = v27;
  *v27 = v0;
  v27[1] = sub_100642028;
  v28 = v0[11];

  return sub_10064AA8C(v28);
}

uint64_t sub_100642028()
{
  v2 = *v1;

  v3 = *(v2 + 152);
  v4 = *(v2 + 88);
  if (v0)
  {

    sub_100005508(v4, &qword_100982518, &unk_100808DA0);
    v5 = sub_10064FBEC;
  }

  else
  {
    sub_100005508(v4, &qword_100982518, &unk_100808DA0);
    v5 = sub_1006421A4;
  }

  return _swift_task_switch(v5, v3, 0);
}

uint64_t sub_1006421A4()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v0[16] + 8))(v0[18], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100642270()
{
  v2 = *v1;

  v3 = *(v2 + 152);
  v4 = *(v2 + 80);
  if (v0)
  {

    sub_100005508(v4, &qword_100982518, &unk_100808DA0);
    v5 = sub_10064FBE8;
  }

  else
  {
    sub_100005508(v4, &qword_100982518, &unk_100808DA0);
    v5 = sub_1006423EC;
  }

  return _swift_task_switch(v5, v3, 0);
}

uint64_t sub_1006423EC()
{
  (*(v0[16] + 8))(v0[18], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1006424A0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for SDAirDropMessage(0);
  v2[8] = swift_task_alloc();
  sub_10028088C(&qword_100982518, &unk_100808DA0);
  v2[9] = swift_task_alloc();
  v3 = type metadata accessor for SDAirDropServerConnection(0);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v2[13] = static AirDropActor.shared;

  return _swift_task_switch(sub_100642604, v4, 0);
}

uint64_t sub_100642604()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[6];
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeConnection;
  swift_beginAccess();
  sub_10000FF90(v4 + v5, v3, &qword_100982518, &unk_100808DA0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100005508(v0[9], &qword_100982518, &unk_100808DA0);
    if (qword_100973B88 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_100987550);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "No exchange connection for exchange response!", v9, 2u);
    }

    v10 = type metadata accessor for SFAirDropReceive.Failure();
    sub_10064FB3C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for SFAirDropReceive.Failure.badRequest(_:), v10);
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[8];
    v15 = v0[5];
    sub_10064FAD4(v0[9], v0[12], type metadata accessor for SDAirDropServerConnection);
    sub_10064FA6C(v15, v14, _s16ExchangeResponseVMa);
    swift_storeEnumTagMultiPayload();
    v16 = swift_task_alloc();
    v0[14] = v16;
    *v16 = v0;
    v16[1] = sub_10064292C;
    v17 = v0[8];

    return sub_1005AE288(v17);
  }
}

uint64_t sub_10064292C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 104);
  sub_10064FB84(*(v2 + 64), type metadata accessor for SDAirDropMessage);
  if (v0)
  {
    v4 = sub_100642DB4;
  }

  else
  {
    v4 = sub_100642A88;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100642A88()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v2 = v0[6];
    v3 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_serverConnectionIdentity;
    v4 = swift_task_alloc();
    v0[17] = v4;
    *v4 = v0;
    v4[1] = sub_100642BD8;

    return sub_1003609F4(v2 + v3, 0);
  }

  else
  {
    v6 = v0[12];
    sub_10064A99C(v6, "Cancelling EXCHANGE connection");
    sub_10064FB84(v6, type metadata accessor for SDAirDropServerConnection);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100642BD8()
{
  v1 = *(*v0 + 104);

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100642D04, v1, 0);
}

uint64_t sub_100642D04()
{
  v1 = *(v0 + 96);
  sub_10064A99C(v1, "Cancelling EXCHANGE connection");
  sub_10064FB84(v1, type metadata accessor for SDAirDropServerConnection);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100642DB4()
{
  v1 = *(v0 + 96);
  sub_10064A99C(v1, "Cancelling EXCHANGE connection");
  sub_10064FB84(v1, type metadata accessor for SDAirDropServerConnection);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100642E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 544) = v6;
  *(v7 + 536) = a6;
  *(v7 + 528) = a5;
  *(v7 + 520) = a4;
  *(v7 + 504) = a2;
  *(v7 + 512) = a3;
  *(v7 + 496) = a1;
  v8 = *(a1 + 48);
  *(v7 + 112) = *(a1 + 32);
  *(v7 + 128) = v8;
  *(v7 + 144) = *(a1 + 64);
  *(v7 + 160) = *(a1 + 80);
  v9 = *(a1 + 16);
  *(v7 + 80) = *a1;
  *(v7 + 96) = v9;
  sub_10028088C(&qword_100982518, &unk_100808DA0);
  *(v7 + 552) = swift_task_alloc();
  v10 = type metadata accessor for SDAirDropServerConnection(0);
  *(v7 + 560) = v10;
  *(v7 + 568) = *(v10 - 8);
  *(v7 + 576) = swift_task_alloc();
  *(v7 + 584) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v11 = static AirDropActor.shared;
  *(v7 + 592) = static AirDropActor.shared;

  return _swift_task_switch(sub_100642FD8, v11, 0);
}

uint64_t sub_100642FD8()
{
  v1 = *(v0 + 496);
  v3 = *v1;
  v2 = v1[1];
  *(v0 + 600) = v1[2];
  *(v0 + 608) = v1[3];
  *(v0 + 616) = v1[4];
  *(v0 + 624) = v1[5];
  *(v0 + 632) = v1[6];
  *(v0 + 640) = v1[7];
  *(v0 + 648) = v1[8];
  v4 = v1[9];
  *(v0 + 656) = v4;
  *(v0 + 664) = v1[10];
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = *(v0 + 568);
  v6 = *(v0 + 560);
  v7 = *(v0 + 552);
  sub_10000FF90(*(v0 + 536), v7, &qword_100982518, &unk_100808DA0);
  if ((*(v5 + 48))(v7, 1, v6) == 1)
  {
    sub_100005508(*(v0 + 552), &qword_100982518, &unk_100808DA0);
LABEL_4:
    if (qword_100973B88 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_100987550);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Missing identity share info / connection", v11, 2u);
    }

    v12 = type metadata accessor for SFAirDropReceive.Failure();
    sub_10064FB3C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, enum case for SFAirDropReceive.Failure.badRequest(_:), v12);
    swift_willThrow();
    goto LABEL_9;
  }

  v16 = *(v0 + 528);
  sub_10064FAD4(*(v0 + 552), *(v0 + 584), type metadata accessor for SDAirDropServerConnection);
  if (!v16)
  {
    v30 = *(*(v0 + 544) + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_deviceStatus);
    v31 = *(v0 + 128);
    *(v0 + 200) = *(v0 + 112);
    *(v0 + 216) = v31;
    *(v0 + 232) = *(v0 + 144);
    v32 = *(v0 + 96);
    *(v0 + 168) = *(v0 + 80);
    *(v0 + 672) = v30;
    *(v0 + 248) = *(v0 + 160);
    *(v0 + 184) = v32;
    sub_1003398A0(v0 + 168, v0 + 256);
    v20 = sub_100643760;
    goto LABEL_26;
  }

  sub_10000FF90(*(v0 + 496), v0 + 344, &qword_10097B208, &qword_1007FE5A8);
  v17 = *(v0 + 528);
  v18 = *(v0 + 520);

  if (v2)
  {
    v19 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v19 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      *(v0 + 848) = v3;
      *(v0 + 840) = v2;
      *(v0 + 832) = v18;
      *(v0 + 824) = v17;

      if (v17)
      {
        v20 = sub_100644C04;
LABEL_26:

        return _swift_task_switch(v20, 0, 0);
      }

      if (qword_100973B88 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_10000C4AC(v36, qword_100987550);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Missing appleID/contactID for IDENTITY-SHARE", v39, 2u);
      }

      v26 = *(v0 + 584);
      v40 = *(v0 + 496);

      v41 = type metadata accessor for SFAirDropReceive.Failure();
      sub_10064FB3C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
      swift_allocError();
      (*(*(v41 - 8) + 104))(v42, enum case for SFAirDropReceive.Failure.badRequest(_:), v41);
      swift_willThrow();

      sub_100005508(v40, &qword_10097B208, &qword_1007FE5A8);
LABEL_37:
      sub_10064FB84(v26, type metadata accessor for SDAirDropServerConnection);
LABEL_9:

      v14 = *(v0 + 8);

      return v14();
    }
  }

  *(v0 + 784) = v2;
  *(v0 + 776) = v17;
  *(v0 + 768) = v18;
  v21 = *(v0 + 512);
  if (v21 >> 60 == 15)
  {

    if (qword_100973B88 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_100987550);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Missing vCardData to resolve missing appleID", v25, 2u);
    }

    v26 = *(v0 + 584);
    v27 = *(v0 + 496);

    v28 = type metadata accessor for SFAirDropReceive.Failure();
    sub_10064FB3C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, enum case for SFAirDropReceive.Failure.badRequest(_:), v28);
    swift_willThrow();
    sub_100005508(v27, &qword_10097B208, &qword_1007FE5A8);

    goto LABEL_37;
  }

  sub_1002A9924(*(v0 + 504), v21);
  v33 = swift_task_alloc();
  *(v0 + 792) = v33;
  *v33 = v0;
  v33[1] = sub_100644738;
  v35 = *(v0 + 504);
  v34 = *(v0 + 512);

  return sub_10039086C(v35, v34, 0, 0);
}

uint64_t sub_100643760()
{
  v21 = v0;
  if (*(v0 + 608) >> 60 == 15)
  {
    v1 = *(v0 + 592);
    v2 = sub_1006439A4;
  }

  else
  {
    sub_10064FA6C(*(v0 + 584), *(v0 + 576), type metadata accessor for SDAirDropServerConnection);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v4 = *(v0 + 672);
    v5 = *(v0 + 608);
    v6 = *(v0 + 600);
    v7 = *(v0 + 592);
    v8 = *(v0 + 576);
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_100294008(*(v0 + 600), *(v0 + 608));
        sub_10064FB84(v8, type metadata accessor for SDAirDropServerConnection);
        *(v0 + 720) = sub_10046B604(v4);
        *(v0 + 728) = v9;
        *(v0 + 736) = v10;
        sub_10028BCC0(v6, v5);
        v11 = sub_100644168;
      }

      else
      {
        sub_100294008(*(v0 + 600), *(v0 + 608));

        v14 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
        *(v0 + 744) = sub_10046B604(v4);
        *(v0 + 752) = v15;
        *(v0 + 760) = v16;
        sub_10028BCC0(v6, v5);
        v17 = type metadata accessor for UUID();
        (*(*(v17 - 8) + 8))(v8 + v14, v17);
        v11 = sub_100644450;
      }
    }

    else
    {
      v12 = *v8;
      sub_100294008(*(v0 + 600), *(v0 + 608));
      sub_10046BAA4(v4, v19, v12);
      v13 = v19[1];
      *(v0 + 680) = v19[0];
      *(v0 + 696) = v13;
      *(v0 + 712) = v20;

      sub_10028BCC0(v6, v5);
      v11 = sub_100643C80;
    }

    v2 = v11;
    v1 = v7;
  }

  return _swift_task_switch(v2, v1, 0);
}

uint64_t sub_1006439A4()
{
  *(v0 + 784) = 0;
  *(v0 + 768) = 0u;
  v1 = *(v0 + 512);
  if (v1 >> 60 == 15)
  {

    if (qword_100973B88 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100987550);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Missing vCardData to resolve missing appleID", v5, 2u);
    }

    v6 = *(v0 + 584);
    v7 = *(v0 + 496);

    v8 = type metadata accessor for SFAirDropReceive.Failure();
    sub_10064FB3C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for SFAirDropReceive.Failure.badRequest(_:), v8);
    swift_willThrow();
    sub_100005508(v7, &qword_10097B208, &qword_1007FE5A8);

    sub_10064FB84(v6, type metadata accessor for SDAirDropServerConnection);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    sub_1002A9924(*(v0 + 504), v1);
    v12 = swift_task_alloc();
    *(v0 + 792) = v12;
    *v12 = v0;
    v12[1] = sub_100644738;
    v14 = *(v0 + 504);
    v13 = *(v0 + 512);

    return sub_10039086C(v14, v13, 0, 0);
  }
}

uint64_t sub_100643C80()
{

  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  if (v3)
  {
    v4 = v0[85];
    v5 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v5 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v0[106] = v4;
      v0[105] = v3;
      v0[104] = v2;
      v0[103] = v1;

      if (v1)
      {

        return _swift_task_switch(sub_100644C04, 0, 0);
      }

      if (qword_100973B88 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_10000C4AC(v18, qword_100987550);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Missing appleID/contactID for IDENTITY-SHARE", v21, 2u);
      }

      v11 = v0[73];
      v22 = v0[62];

      v23 = type metadata accessor for SFAirDropReceive.Failure();
      sub_10064FB3C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, enum case for SFAirDropReceive.Failure.badRequest(_:), v23);
      swift_willThrow();

      sub_100005508(v22, &qword_10097B208, &qword_1007FE5A8);
      goto LABEL_23;
    }
  }

  v0[98] = v3;
  v0[97] = v1;
  v0[96] = v2;
  v6 = v0[64];
  if (v6 >> 60 == 15)
  {

    if (qword_100973B88 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_100987550);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Missing vCardData to resolve missing appleID", v10, 2u);
    }

    v11 = v0[73];
    v12 = v0[62];

    v13 = type metadata accessor for SFAirDropReceive.Failure();
    sub_10064FB3C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, enum case for SFAirDropReceive.Failure.badRequest(_:), v13);
    swift_willThrow();
    sub_100005508(v12, &qword_10097B208, &qword_1007FE5A8);

LABEL_23:
    sub_10064FB84(v11, type metadata accessor for SDAirDropServerConnection);

    v25 = v0[1];

    return v25();
  }

  sub_1002A9924(v0[63], v6);
  v15 = swift_task_alloc();
  v0[99] = v15;
  *v15 = v0;
  v15[1] = sub_100644738;
  v17 = v0[63];
  v16 = v0[64];

  return sub_10039086C(v17, v16, 0, 0);
}

uint64_t sub_100644168()
{

  v1 = v0[91];
  v2 = v0[90];
  v0[98] = 0;
  v0[97] = v1;
  v0[96] = v2;
  v3 = v0[64];
  if (v3 >> 60 == 15)
  {

    if (qword_100973B88 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_100987550);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Missing vCardData to resolve missing appleID", v7, 2u);
    }

    v8 = v0[73];
    v9 = v0[62];

    v10 = type metadata accessor for SFAirDropReceive.Failure();
    sub_10064FB3C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for SFAirDropReceive.Failure.badRequest(_:), v10);
    swift_willThrow();
    sub_100005508(v9, &qword_10097B208, &qword_1007FE5A8);

    sub_10064FB84(v8, type metadata accessor for SDAirDropServerConnection);

    v12 = v0[1];

    return v12();
  }

  else
  {
    sub_1002A9924(v0[63], v3);
    v14 = swift_task_alloc();
    v0[99] = v14;
    *v14 = v0;
    v14[1] = sub_100644738;
    v16 = v0[63];
    v15 = v0[64];

    return sub_10039086C(v16, v15, 0, 0);
  }
}

uint64_t sub_100644450()
{

  v1 = v0[94];
  v2 = v0[93];
  v0[98] = 0;
  v0[97] = v1;
  v0[96] = v2;
  v3 = v0[64];
  if (v3 >> 60 == 15)
  {

    if (qword_100973B88 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_100987550);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Missing vCardData to resolve missing appleID", v7, 2u);
    }

    v8 = v0[73];
    v9 = v0[62];

    v10 = type metadata accessor for SFAirDropReceive.Failure();
    sub_10064FB3C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for SFAirDropReceive.Failure.badRequest(_:), v10);
    swift_willThrow();
    sub_100005508(v9, &qword_10097B208, &qword_1007FE5A8);

    sub_10064FB84(v8, type metadata accessor for SDAirDropServerConnection);

    v12 = v0[1];

    return v12();
  }

  else
  {
    sub_1002A9924(v0[63], v3);
    v14 = swift_task_alloc();
    v0[99] = v14;
    *v14 = v0;
    v14[1] = sub_100644738;
    v16 = v0[63];
    v15 = v0[64];

    return sub_10039086C(v16, v15, 0, 0);
  }
}

uint64_t sub_100644738(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 800) = v2;

  if (v2)
  {
    v7 = v6[74];

    v8 = sub_100644888;
    v9 = v7;
  }

  else
  {
    v9 = v6[74];
    v6[101] = a2;
    v6[102] = a1;
    v8 = sub_10064495C;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100644888()
{
  v1 = v0[73];
  v2 = v0[62];
  sub_10028BCC0(v0[63], v0[64]);
  sub_100005508(v2, &qword_10097B208, &qword_1007FE5A8);

  sub_10064FB84(v1, type metadata accessor for SDAirDropServerConnection);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10064495C()
{
  v1 = v0[101];
  sub_10028BCC0(v0[63], v0[64]);

  if (v1)
  {
    v2 = v0[101];
    v3 = v0[97];
    v4 = v0[96];
    v0[106] = v0[102];
    v0[105] = v2;
    v0[104] = v4;
    v0[103] = v3;
    if (v3)
    {

      return _swift_task_switch(sub_100644C04, 0, 0);
    }
  }

  else
  {
  }

  if (qword_100973B88 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_100987550);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Missing appleID/contactID for IDENTITY-SHARE", v8, 2u);
  }

  v9 = v0[73];
  v10 = v0[62];

  v11 = type metadata accessor for SFAirDropReceive.Failure();
  sub_10064FB3C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
  swift_allocError();
  (*(*(v11 - 8) + 104))(v12, enum case for SFAirDropReceive.Failure.badRequest(_:), v11);
  swift_willThrow();

  sub_100005508(v10, &qword_10097B208, &qword_1007FE5A8);
  sub_10064FB84(v9, type metadata accessor for SDAirDropServerConnection);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100644C04()
{
  v10 = v0[83];
  v11 = [objc_allocWithZone(RPClient) init];
  v0[107] = v11;
  v1 = [objc_allocWithZone(RPIdentity) init];
  v0[108] = v1;
  [v1 setType:6];
  v2 = String._bridgeToObjectiveC()();
  [v1 setAccountID:v2];

  v3 = String._bridgeToObjectiveC()();
  [v1 setContactID:v3];

  isa = Data._bridgeToObjectiveC()().super.isa;
  [v1 setDeviceIRKData:isa];

  v5 = Data._bridgeToObjectiveC()().super.isa;
  [v1 setEdPKData:v5];

  v6 = String._bridgeToObjectiveC()();
  [v1 setIdsDeviceID:v6];

  [v1 setSendersKnownAlias:0];
  if (v10)
  {
    [v1 setFeatureFlags:v0[83]];
  }

  v7 = objc_opt_self();
  v0[2] = v0;
  v0[3] = sub_100644EB4;
  v8 = swift_continuation_init();
  v0[61] = sub_10028088C(&qword_10097B520, &qword_1007FCC20);
  v0[54] = _NSConcreteStackBlock;
  v0[55] = 1107296256;
  v0[56] = sub_100638A98;
  v0[57] = &unk_1008EC588;
  v0[58] = v8;
  [v7 addOrUpdateIdentityWithClient:v11 identity:v1 completion:v0 + 54];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100644EB4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 872) = v1;
  if (v1)
  {

    v2 = sub_1006451A4;
  }

  else
  {
    v2 = sub_100644FCC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100644FCC()
{
  v15 = v0;
  if (qword_100973780 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097AAF8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[108];
  if (v4)
  {
    v6 = v0[104];
    v7 = v0[103];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    v10 = sub_10000C4E4(v6, v7, &v14);

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Added/updated identity for contact %s", v8, 0xCu);
    sub_10000C60C(v9);
  }

  else
  {
  }

  v11 = v0[107];
  v12 = v0[74];
  [v11 invalidate];

  return _swift_task_switch(sub_100645308, v12, 0);
}

uint64_t sub_1006451A4(uint64_t a1)
{
  v2 = v1[108];
  v3 = v1[107];
  v4 = v1[74];
  swift_willThrow();

  [v3 invalidate];

  return _swift_task_switch(sub_100645240, v4, 0);
}

uint64_t sub_100645240()
{
  v1 = v0[73];
  sub_100005508(v0[62], &qword_10097B208, &qword_1007FE5A8);

  sub_10064FB84(v1, type metadata accessor for SDAirDropServerConnection);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100645308()
{
  v1 = v0[73];
  v2 = v0[62];

  sub_100005508(v2, &qword_10097B208, &qword_1007FE5A8);
  sub_10064FB84(v1, type metadata accessor for SDAirDropServerConnection);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1006453D0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100987550);
  v1 = sub_10000C4AC(v0, qword_100987550);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100645498(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10028088C(&qword_100982518, &unk_100808DA0);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for SDAirDropServerConnection(0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v2[8] = static AirDropActor.shared;

  return _swift_task_switch(sub_1006455CC, v4, 0);
}

uint64_t sub_1006455CC()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_10000FF90(v0[2], v3, &qword_100982518, &unk_100808DA0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100005508(v0[4], &qword_100982518, &unk_100808DA0);
    if (qword_100973B88 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_100987550);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Missing connection", v7, 2u);
    }

    v8 = v0[1];

    return v8();
  }

  else
  {
    sub_10064FAD4(v0[4], v0[7], type metadata accessor for SDAirDropServerConnection);
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_1006457E4;

    return sub_1005AE9B4();
  }
}

uint64_t sub_1006457E4()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_10064FBF0;
  }

  else
  {
    v4 = sub_100645910;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100645910()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = v0[3];
    v3 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_serverConnectionIdentity;
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_100645A44;

    return sub_1003609F4(v2 + v3, 0);
  }

  else
  {
    sub_10064FB84(v0[7], type metadata accessor for SDAirDropServerConnection);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100645A44()
{
  v1 = *(*v0 + 64);

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_10064FBE4, v1, 0);
}

uint64_t sub_100645B70(uint64_t a1, uint64_t a2)
{
  v2[59] = a1;
  v2[60] = a2;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v2[61] = static AirDropActor.shared;

  return _swift_task_switch(sub_100645C10, v3, 0);
}

uint64_t sub_100645C10()
{
  if (qword_100973B88 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100987550);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending non-contact response, finish DISCOVER", v4, 2u);
  }

  v5 = *(v0 + 472);

  v6 = *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_deviceStatus);
  if ((sub_100469838() & 1) != 0 && (v7 = [v6 someComputerName]) != 0)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = [objc_opt_self() capabilitiesForCurrentDevice];
  v13 = [v12 opaqueRepresentation];

  if (v13)
  {
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xF000000000000000;
  }

  sub_10028BCC0(0, 0xF000000000000000);
  sub_10028BCC0(0, 0xF000000000000000);
  sub_10028BCC0(0, 0xF000000000000000);
  sub_10028BCC0(0, 0xF000000000000000);
  *(v0 + 16) = v14;
  *(v0 + 24) = v16;
  *(v0 + 32) = v9;
  *(v0 + 40) = v11;
  *(v0 + 48) = xmmword_1007F8A80;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 64) = 0;
  *(v0 + 88) = xmmword_10080E110;
  *(v0 + 104) = 0xF000000000000000;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  *(v0 + 168) = v14;
  *(v0 + 176) = v16;
  *(v0 + 184) = v9;
  *(v0 + 192) = v11;
  *(v0 + 200) = xmmword_1007F8A80;
  *(v0 + 216) = 0;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  *(v0 + 240) = xmmword_10080E110;
  *(v0 + 256) = 0xF000000000000000;
  *(v0 + 264) = 0;
  *(v0 + 272) = 0;
  *(v0 + 280) = 0;
  *(v0 + 288) = 1;
  *(v0 + 296) = 0;
  *(v0 + 304) = 0;
  *(v0 + 312) = 1;
  sub_1003CB81C(v0 + 16, v0 + 320);
  sub_1003CB878(v0 + 168);
  v17 = swift_task_alloc();
  *(v0 + 496) = v17;
  *v17 = v0;
  v17[1] = sub_100645EF0;
  v18 = *(v0 + 480);

  return sub_1006460E4(v0 + 16, v18);
}

uint64_t sub_100645EF0()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  v3 = *(v2 + 488);
  if (v0)
  {
    v4 = sub_100646080;
  }

  else
  {
    v4 = sub_10064601C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10064601C()
{
  sub_1003CB878(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100646080()
{
  sub_1003CB878(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006460E4(uint64_t a1, uint64_t a2)
{
  *(v3 + 328) = a2;
  *(v3 + 336) = v2;
  *(v3 + 320) = a1;
  v4 = *(a1 + 112);
  *(v3 + 112) = *(a1 + 96);
  *(v3 + 128) = v4;
  *(v3 + 144) = *(a1 + 128);
  *(v3 + 160) = *(a1 + 144);
  v5 = *(a1 + 48);
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = v5;
  v6 = *(a1 + 80);
  *(v3 + 80) = *(a1 + 64);
  *(v3 + 96) = v6;
  v7 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v7;
  *(v3 + 344) = type metadata accessor for SDAirDropMessage(0);
  *(v3 + 352) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  *(v3 + 360) = static AirDropActor.shared;

  return _swift_task_switch(sub_1006461E8, v8, 0);
}

uint64_t sub_1006461E8()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 320);
  v3 = *(v0 + 96);
  v5 = *(v0 + 48);
  v4 = *(v0 + 64);
  *(v1 + 64) = *(v0 + 80);
  *(v1 + 80) = v3;
  *(v1 + 32) = v5;
  *(v1 + 48) = v4;
  v7 = *(v0 + 128);
  v6 = *(v0 + 144);
  v8 = *(v0 + 112);
  *(v1 + 144) = *(v0 + 160);
  *(v1 + 112) = v7;
  *(v1 + 128) = v6;
  *(v1 + 96) = v8;
  v9 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v9;
  swift_storeEnumTagMultiPayload();
  sub_1003CB81C(v2, v0 + 168);
  v10 = swift_task_alloc();
  *(v0 + 368) = v10;
  *v10 = v0;
  v10[1] = sub_1006462CC;
  v11 = *(v0 + 352);

  return sub_1005AE288(v11);
}

uint64_t sub_1006462CC()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  *(*v1 + 376) = v0;

  sub_10064FB84(v3, type metadata accessor for SDAirDropMessage);
  v4 = *(v2 + 360);
  if (v0)
  {
    v5 = sub_100646668;
  }

  else
  {
    v5 = sub_100646428;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100646428()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[48] = Strong;
  if (Strong)
  {
    v2 = v0[42];
    v3 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_serverConnectionIdentity;
    v4 = swift_task_alloc();
    v0[49] = v4;
    *v4 = v0;
    v4[1] = sub_100646530;

    return sub_1003609F4(v2 + v3, 0);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100646530()
{
  v3 = *v0;

  swift_unknownObjectRelease();

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100646668()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006466CC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for SDAirDropMessage(0);
  v2[5] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v2[6] = static AirDropActor.shared;

  return _swift_task_switch(sub_10064679C, v3, 0);
}

uint64_t sub_10064679C()
{
  **(v0 + 40) = xmmword_1007FAD30;
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_10064684C;
  v2 = *(v0 + 40);

  return sub_1005AE288(v2);
}

uint64_t sub_10064684C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  *(*v1 + 64) = v0;

  sub_10064FB84(v3, type metadata accessor for SDAirDropMessage);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_100646BE8;
  }

  else
  {
    v5 = sub_1006469A8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1006469A8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = v0[3];
    v3 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_serverConnectionIdentity;
    v4 = swift_task_alloc();
    v0[10] = v4;
    *v4 = v0;
    v4[1] = sub_100646AB0;

    return sub_1003609F4(v2 + v3, 0);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100646AB0()
{
  v3 = *v0;

  swift_unknownObjectRelease();

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100646BE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100646C4C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for SDAirDropServerConnection(0);
  v2[5] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v2[6] = static AirDropActor.shared;

  return _swift_task_switch(sub_100646D1C, v3, 0);
}

uint64_t sub_100646D1C()
{
  if ([*(v0[3] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_deviceStatus) discoverableLevel])
  {
LABEL_4:

    v5 = v0[1];

    return v5();
  }

  sub_10064FA6C(v0[2], v0[5], type metadata accessor for SDAirDropServerConnection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[5];
  if (EnumCaseMultiPayload == 2)
  {

    v3 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
    v4 = type metadata accessor for UUID();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
    goto LABEL_4;
  }

  sub_10064FB84(v0[5], type metadata accessor for SDAirDropServerConnection);
  if (qword_100973B88 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_100987550);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Request rejected, discoverability is OFF", v10, 2u);
  }

  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_100646F78;

  return sub_1005AE9B4();
}

uint64_t sub_100646F78()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 48);

    return _swift_task_switch(sub_1006470C4, v6, 0);
  }
}

uint64_t sub_1006470C4()
{
  v1 = type metadata accessor for SFAirDropReceive.Failure();
  sub_10064FB3C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, enum case for SFAirDropReceive.Failure.badRequest(_:), v1);
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1006471CC(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  v3[34] = type metadata accessor for SDAirDropServerConnection(0);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  sub_10028088C(&qword_100977BA0, &qword_1007FADD0);
  v3[39] = swift_task_alloc();
  v4 = _s10AskRequestVMa(0);
  v3[40] = v4;
  v3[41] = *(v4 - 8);
  v3[42] = swift_task_alloc();
  v3[43] = type metadata accessor for SDAirDropMessage(0);
  v3[44] = swift_task_alloc();
  sub_10028088C(&qword_100977BD8, &qword_1007FAE38);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDropReceive.AcceptContext();
  v3[48] = v5;
  v3[49] = *(v5 - 8);
  v3[50] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.AskResponse();
  v3[51] = v6;
  v3[52] = *(v6 - 8);
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v3[55] = static AirDropActor.shared;

  return _swift_task_switch(sub_10064749C, v7, 0);
}

id sub_10064749C()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 408);
  v3 = *(v0 + 416);
  v4 = *(v3 + 104);
  v4(v1, enum case for SFAirDropReceive.AskResponse.decline(_:), v2);
  sub_10064FB3C(&qword_100987650, &type metadata accessor for SFAirDropReceive.AskResponse, &protocol conformance descriptor for SFAirDropReceive.AskResponse);
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  v6 = *(v3 + 8);
  v6(v1, v2);
  if (v5 & 1) != 0 || (v7 = *(v0 + 432), v8 = *(v0 + 408), v4(v7, enum case for SFAirDropReceive.AskResponse.error(_:), v8), v9 = dispatch thunk of static Equatable.== infix(_:_:)(), v6(v7, v8), (v9) || (v10 = *(v0 + 432), v11 = *(v0 + 408), v4(v10, enum case for SFAirDropReceive.AskResponse.mixedTypes(_:), v11), v12 = dispatch thunk of static Equatable.== infix(_:_:)(), v6(v10, v11), (v12))
  {
    if (qword_100973B88 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_100987550);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "User did not accept request, invalidating connection", v16, 2u);
    }

    v17 = *(v0 + 288);
    v18 = *(v0 + 256);

    v19 = type metadata accessor for SFAirDropReceive.Failure();
    sub_10064FB3C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, enum case for SFAirDropReceive.Failure.declined(_:), v19);
    swift_willThrow();
    sub_10064FA6C(v18, v17, type metadata accessor for SDAirDropServerConnection);
    LODWORD(v19) = swift_getEnumCaseMultiPayload();
    sub_10064FB84(v17, type metadata accessor for SDAirDropServerConnection);
    if (!v19)
    {
      sub_1005ADD74(0);
    }

    v21 = *(v0 + 8);

    return v21();
  }

  v24 = *(v0 + 416);
  v23 = *(v0 + 424);
  v25 = *(v0 + 408);
  (*(v24 + 16))(v23, *(v0 + 248), v25);
  v26 = (*(v24 + 88))(v23, v25);
  v27 = *(v0 + 424);
  if (v26 == enum case for SFAirDropReceive.AskResponse.accept(_:))
  {
    v29 = *(v0 + 392);
    v28 = *(v0 + 400);
    v30 = *(v0 + 384);
    v31 = *(v0 + 264);
    (*(*(v0 + 416) + 96))(*(v0 + 424), *(v0 + 408));
    v32 = sub_10028088C(&qword_1009765E8, &qword_100808D60);
    (*(v29 + 32))(v28, v27 + *(v32 + 48), v30);
    *(v31 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_shouldExtractMedia) = SFAirDropReceive.AcceptContext.shouldExtractMedia.getter() & 1;
    v33 = SFAirDropReceive.AcceptContext.customPayload.getter();
    v35 = v34;
    (*(v29 + 8))(v28, v30);
    v36 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v36 - 8) + 8))(v27, v36);
  }

  else
  {
    v6(*(v0 + 424), *(v0 + 408));
    v33 = 0;
    v35 = 0xF000000000000000;
  }

  *(v0 + 448) = v33;
  *(v0 + 456) = v35;
  v37 = *(v0 + 320);
  v38 = *(v0 + 328);
  v39 = *(v0 + 264);
  v40 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askRequest;
  *(v0 + 464) = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askRequest;
  v41 = v39 + v40;
  swift_beginAccess();
  v42 = *(v38 + 48);
  *(v0 + 472) = v42;
  *(v0 + 480) = (v38 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (!v42(v41, 1, v37))
  {
    v43 = *(v0 + 376);
    sub_10000FF90(v41 + *(*(v0 + 320) + 20), v43, &qword_100977BD8, &qword_1007FAE38);
    v44 = type metadata accessor for SFAirDrop.TransferType();
    v45 = *(v44 - 8);
    v46 = (*(v45 + 48))(v43, 1, v44);
    v47 = *(v0 + 376);
    if (v46 == 1)
    {
      sub_100005508(*(v0 + 376), &qword_100977BD8, &qword_1007FAE38);
    }

    else
    {
      v48 = SFAirDrop.TransferType.isOnlyExchange.getter();
      (*(v45 + 8))(v47, v44);
      if (v48)
      {
        v75 = 0;
        v76 = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v52 = 0;
        goto LABEL_22;
      }
    }
  }

  v53 = *(v0 + 264);
  v51 = *(v53 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_idsSessionID);
  v52 = *(v53 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_idsSessionID + 8);

  v49 = sub_1005EA438();
  v50 = v54;
  v55 = sub_1005F0AC0();
  v75 = v56;
  v76 = v55;
LABEL_22:
  v57 = *(*(v0 + 264) + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_deviceStatus);
  result = [v57 computerName];
  if (!result)
  {
    __break(1u);
    goto LABEL_28;
  }

  v58 = result;
  v71 = v50;
  v72 = v49;
  v73 = v52;
  v74 = v35;
  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;

  result = [v57 modelName];
  if (!result)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v62 = result;
  v63 = *(v0 + 352);
  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;

  sub_10039D0AC();
  v67 = static NSUserDefaults.airdrop.getter();
  v68 = SFAirDropUserDefaults.contactShareAfterAirDropEnabled.getter();

  *(v0 + 16) = v59;
  *(v0 + 24) = v61;
  *(v0 + 32) = v64;
  *(v0 + 40) = v66;
  *(v0 + 48) = v68 & 1;
  *(v0 + 56) = v51;
  *(v0 + 64) = v73;
  *(v0 + 72) = v72;
  *(v0 + 80) = v71;
  *(v0 + 88) = v76;
  *(v0 + 96) = v75;
  *(v0 + 104) = v33;
  *(v0 + 112) = v74;
  memmove(v63, (v0 + 16), 0x68uLL);
  swift_storeEnumTagMultiPayload();
  sub_1002A9924(v33, v74);
  sub_1003C34C8(v0 + 16, v0 + 120);
  v69 = swift_task_alloc();
  *(v0 + 488) = v69;
  *v69 = v0;
  v69[1] = sub_100647D0C;
  v70 = *(v0 + 352);

  return sub_1005AE288(v70);
}

uint64_t sub_100647D0C()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  v3 = *(v2 + 440);
  sub_10064FB84(*(v2 + 352), type metadata accessor for SDAirDropMessage);
  if (v0)
  {
    v4 = sub_100648668;
  }

  else
  {
    v4 = sub_100647E68;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100647E68()
{
  v1 = v0[59];
  v2 = v0[39];
  v3 = v0[40];
  sub_10000FF90(v0[33] + v0[58], v2, &qword_100977BA0, &qword_1007FADD0);
  if (v1(v2, 1, v3) != 1)
  {
    v4 = v0[42];
    v5 = v0[40];
    sub_10064FAD4(v0[39], v4, _s10AskRequestVMa);
    v6 = *(v4 + *(v5 + 48));
    if (v6)
    {
      if (*(v6 + 16))
      {
LABEL_5:
        v7 = v0[56];
        v8 = v0[57];
        sub_10030D74C((v0 + 2));
        sub_10028BCC0(v7, v8);
LABEL_6:
        v9 = v0[38];
        v10 = v0[32];
        sub_10064FB84(v0[42], _s10AskRequestVMa);
        goto LABEL_24;
      }

      v11 = v0[46];
      v12 = v0[42];
      v13 = *(v0[40] + 20);
      sub_10000FF90(v12 + v13, v11, &qword_100977BD8, &qword_1007FAE38);
      v14 = type metadata accessor for SFAirDrop.TransferType();
      v15 = *(v14 - 8);
      v16 = *(v15 + 48);
      v17 = v16(v11, 1, v14);
      v18 = v0[46];
      if (v17 == 1)
      {
        sub_100005508(v0[46], &qword_100977BD8, &qword_1007FAE38);
      }

      else
      {
        SFAirDrop.TransferType.exchangeType.getter();
        v20 = v19;
        (*(v15 + 8))(v18, v14);
        if (v20)
        {
          v22 = v0[56];
          v21 = v0[57];
          sub_10030D74C((v0 + 2));
          sub_10028BCC0(v22, v21);

          goto LABEL_6;
        }
      }

      v23 = v0[45];
      sub_10000FF90(v12 + v13, v23, &qword_100977BD8, &qword_1007FAE38);
      v24 = v16(v23, 1, v14);
      v25 = v0[45];
      if (v24 == 1)
      {
        sub_100005508(v0[45], &qword_100977BD8, &qword_1007FAE38);
      }

      else
      {
        v26 = SFAirDrop.TransferType.isCustom.getter();
        (*(v15 + 8))(v25, v14);
        if (v26)
        {
          goto LABEL_5;
        }
      }
    }

    sub_10064FB84(v0[42], _s10AskRequestVMa);
    goto LABEL_15;
  }

  sub_100005508(v0[39], &qword_100977BA0, &qword_1007FADD0);
LABEL_15:
  if (qword_100973B88 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000C4AC(v27, qword_100987550);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "No files to receive or exchanges", v30, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[63] = Strong;
  if (Strong)
  {
    v32 = v0[33];
    v33 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_serverConnectionIdentity;
    v34 = swift_task_alloc();
    v0[64] = v34;
    *v34 = v0;
    v34[1] = sub_1006483BC;

    return sub_1003609F4(v32 + v33, 0);
  }

  v9 = v0[37];
  v10 = v0[32];
  sub_10028BCC0(v0[56], v0[57]);
  sub_10030D74C((v0 + 2));
LABEL_24:
  sub_10064FA6C(v10, v9, type metadata accessor for SDAirDropServerConnection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10064FB84(v9, type metadata accessor for SDAirDropServerConnection);
  if (!EnumCaseMultiPayload)
  {
    sub_1005ADD74(0);
  }

  v37 = v0[1];

  return v37();
}

uint64_t sub_1006483BC()
{
  v1 = *(*v0 + 440);

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1006484E8, v1, 0);
}

uint64_t sub_1006484E8()
{
  v1 = v0[37];
  v2 = v0[32];
  sub_10028BCC0(v0[56], v0[57]);
  sub_10030D74C((v0 + 2));
  sub_10064FA6C(v2, v1, type metadata accessor for SDAirDropServerConnection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10064FB84(v1, type metadata accessor for SDAirDropServerConnection);
  if (!EnumCaseMultiPayload)
  {
    sub_1005ADD74(0);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_100648668()
{
  v1 = v0[35];
  v2 = v0[32];
  sub_10028BCC0(v0[56], v0[57]);
  sub_10030D74C((v0 + 2));
  sub_10064FA6C(v2, v1, type metadata accessor for SDAirDropServerConnection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10064FB84(v1, type metadata accessor for SDAirDropServerConnection);
  if (!EnumCaseMultiPayload)
  {
    sub_1005ADD74(0);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1006487E8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for UUID();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for SDAirDropServerConnectionIdentity(0);
  v2[11] = swift_task_alloc();
  sub_10028088C(&qword_100977BA0, &qword_1007FADD0);
  v2[12] = swift_task_alloc();
  v4 = _s10AskRequestVMa(0);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v2[17] = static AirDropActor.shared;

  return _swift_task_switch(sub_1006489B4, v5, 0);
}

uint64_t sub_1006489B4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[6];
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askRequest;
  swift_beginAccess();
  sub_10000FF90(v4 + v5, v3, &qword_100977BA0, &qword_1007FADD0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100005508(v0[12], &qword_100977BA0, &qword_1007FADD0);
    if (qword_100973B88 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_100987550);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Missing ASK request", v9, 2u);
    }

    v10 = type metadata accessor for SFAirDropReceive.Failure();
    sub_10064FB3C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for SFAirDropReceive.Failure.badRequest(_:), v10);
    swift_willThrow();

    v33 = v0[1];

    return v33();
  }

  sub_10064FAD4(v0[12], v0[16], _s10AskRequestVMa);
  if (qword_100973B88 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_100987550);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Starting decompression adapter", v15, 2u);
  }

  v17 = v0[15];
  v16 = v0[16];
  v18 = v0[11];
  v19 = v0[6];

  sub_10064FA6C(v16, v17, _s10AskRequestVMa);
  sub_10064FA6C(v19 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_serverConnectionIdentity, v18, type metadata accessor for SDAirDropServerConnectionIdentity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v21 = v0[11];
  if (!EnumCaseMultiPayload)
  {
    sub_10064FB84(v0[11], type metadata accessor for SDAirDropServerConnectionIdentity);
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v22 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v22 - 8) + 8))(v21, v22);
LABEL_15:
    v23 = 0x20000;
    goto LABEL_17;
  }

  v24 = type metadata accessor for SFAirDrop.TransferIdentifier();
  (*(*(v24 - 8) + 8))(v21, v24);
  v23 = 3145728;
LABEL_17:
  v25 = v0[15];
  v26 = v0[9];
  v27 = v0[6];
  (*(v0[8] + 16))(v26, &v27[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveID], v0[7]);
  v28 = &v27[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveServiceDelegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  v30 = *(v28 + 1);
  type metadata accessor for SDAirDropReceiveCompressionAdapter(0);
  swift_allocObject();
  v31 = v27;
  sub_10029A854(v25, v23, v26, v27, &off_1008EC550, Strong, v30);
  v0[18] = v32;
  v35 = v0[6];
  *(v35 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_receiveCompressionAdapter) = v32;

  v36 = *(v35 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_shouldExtractMedia);
  v37 = swift_task_alloc();
  v0[19] = v37;
  *v37 = v0;
  v37[1] = sub_100648F70;
  v38 = v0[5];

  return sub_10029B7D4(v38, v36);
}

uint64_t sub_100648F70()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_100649160;
  }

  else
  {
    v4 = sub_10064909C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10064909C()
{
  v1 = *(v0 + 128);

  sub_10064FB84(v1, _s10AskRequestVMa);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100649160()
{
  v1 = *(v0 + 128);

  sub_10064FB84(v1, _s10AskRequestVMa);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100649224(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10028088C(&qword_100982518, &unk_100808DA0);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for SDAirDropServerConnection(0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v2[8] = static AirDropActor.shared;

  return _swift_task_switch(sub_100649358, v4, 0);
}

uint64_t sub_100649358()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_10000FF90(v0[2], v3, &qword_100982518, &unk_100808DA0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100005508(v0[4], &qword_100982518, &unk_100808DA0);
    if (qword_100973B88 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_100987550);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Missing connection", v7, 2u);
    }

    v8 = v0[1];

    return v8();
  }

  else
  {
    sub_10064FAD4(v0[4], v0[7], type metadata accessor for SDAirDropServerConnection);
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_100649570;

    return sub_1005AF444();
  }
}

uint64_t sub_100649570()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_100649988;
  }

  else
  {
    v4 = sub_10064969C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10064969C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = v0[3];
    v3 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_serverConnectionIdentity;
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_1006497D0;

    return sub_1003609F4(v2 + v3, 0);
  }

  else
  {
    sub_10064FB84(v0[7], type metadata accessor for SDAirDropServerConnection);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1006497D0()
{
  v1 = *(*v0 + 64);

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1006498FC, v1, 0);
}

uint64_t sub_1006498FC()
{
  sub_10064FB84(*(v0 + 56), type metadata accessor for SDAirDropServerConnection);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100649988()
{
  sub_10064FB84(*(v0 + 56), type metadata accessor for SDAirDropServerConnection);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100649A18(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10028088C(&qword_100982518, &unk_100808DA0);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for SDAirDropServerConnection(0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v2[8] = static AirDropActor.shared;

  return _swift_task_switch(sub_100649B4C, v4, 0);
}

uint64_t sub_100649B4C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_10000FF90(v0[2], v3, &qword_100982518, &unk_100808DA0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100005508(v0[4], &qword_100982518, &unk_100808DA0);
    if (qword_100973B88 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_100987550);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Missing connection", v7, 2u);
    }

    v8 = v0[1];

    return v8();
  }

  else
  {
    sub_10064FAD4(v0[4], v0[7], type metadata accessor for SDAirDropServerConnection);
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_1006457E4;

    return sub_1005AF118();
  }
}

uint64_t sub_100649D64()
{
  v1[8] = v0;
  sub_10028088C(&qword_100977BD8, &qword_1007FAE38);
  v1[9] = swift_task_alloc();
  sub_10028088C(&qword_100977BA0, &qword_1007FADD0);
  v1[10] = swift_task_alloc();
  v2 = _s10AskRequestVMa(0);
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = type metadata accessor for SDAirDropMessage(0);
  v1[15] = swift_task_alloc();
  sub_10028088C(&qword_100982518, &unk_100808DA0);
  v1[16] = swift_task_alloc();
  v3 = type metadata accessor for SDAirDropServerConnection(0);
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v1[20] = static AirDropActor.shared;

  return _swift_task_switch(sub_100649F94, v4, 0);
}

uint64_t sub_100649F94()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_uploadConnection;
  swift_beginAccess();
  sub_10000FF90(v4 + v5, v3, &qword_100982518, &unk_100808DA0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100005508(v0[16], &qword_100982518, &unk_100808DA0);
    v6 = type metadata accessor for SFAirDropReceive.Failure();
    sub_10064FB3C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for SFAirDropReceive.Failure.incompleteTransfer(_:), v6);
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[15];
    sub_10064FAD4(v0[16], v0[19], type metadata accessor for SDAirDropServerConnection);
    *v10 = xmmword_1007FAD30;
    swift_storeEnumTagMultiPayload();
    v11 = swift_task_alloc();
    v0[21] = v11;
    *v11 = v0;
    v11[1] = sub_10064A21C;
    v12 = v0[15];

    return sub_1005AE288(v12);
  }
}

uint64_t sub_10064A21C()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 160);
  sub_10064FB84(*(v2 + 120), type metadata accessor for SDAirDropMessage);
  if (v0)
  {
    v4 = sub_10064A8C4;
  }

  else
  {
    v4 = sub_10064A378;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10064A378()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askRequest;
  swift_beginAccess();
  sub_10000FF90(v4 + v5, v3, &qword_100977BA0, &qword_1007FADD0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100005508(v0[10], &qword_100977BA0, &qword_1007FADD0);
LABEL_13:
    v22 = v0[19];
    sub_10064A99C(v22, "Cancelling UPLOAD connection");
    sub_10064FB84(v22, type metadata accessor for SDAirDropServerConnection);

    v23 = v0[1];

    return v23();
  }

  v6 = v0[13];
  v7 = v0[11];
  v8 = v0[9];
  sub_10064FAD4(v0[10], v6, _s10AskRequestVMa);
  sub_10000FF90(v6 + *(v7 + 20), v8, &qword_100977BD8, &qword_1007FAE38);
  v9 = type metadata accessor for SFAirDrop.TransferType();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v8, 1, v9);
  v12 = v0[9];
  if (v11 == 1)
  {
    sub_100005508(v0[9], &qword_100977BD8, &qword_1007FAE38);
  }

  else
  {
    SFAirDrop.TransferType.exchangeType.getter();
    v14 = v13;
    (*(v10 + 8))(v12, v9);
    if (v14)
    {
      v15 = v0[13];

      v16 = v15;
LABEL_12:
      sub_10064FB84(v16, _s10AskRequestVMa);
      goto LABEL_13;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[23] = Strong;
  if (!Strong)
  {
    v16 = v0[13];
    goto LABEL_12;
  }

  v18 = v0[8];
  v19 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_serverConnectionIdentity;
  v20 = swift_task_alloc();
  v0[24] = v20;
  *v20 = v0;
  v20[1] = sub_10064A6A4;

  return sub_1003609F4(v18 + v19, 0);
}

uint64_t sub_10064A6A4()
{
  v1 = *(*v0 + 160);

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_10064A7D0, v1, 0);
}

uint64_t sub_10064A7D0()
{
  sub_10064FB84(v0[13], _s10AskRequestVMa);
  v1 = v0[19];
  sub_10064A99C(v1, "Cancelling UPLOAD connection");
  sub_10064FB84(v1, type metadata accessor for SDAirDropServerConnection);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10064A8C4()
{
  v1 = *(v0 + 152);
  sub_10064A99C(v1, "Cancelling UPLOAD connection");
  sub_10064FB84(v1, type metadata accessor for SDAirDropServerConnection);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10064A99C(uint64_t a1, const char *a2)
{
  if (qword_100973B88 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_100987550);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, a2, v6, 2u);
  }

  return sub_1005ADD74(0);
}

uint64_t sub_10064AA8C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10028088C(&qword_100982518, &unk_100808DA0);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for SDAirDropServerConnection(0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v2[8] = static AirDropActor.shared;

  return _swift_task_switch(sub_10064ABC0, v4, 0);
}

uint64_t sub_10064ABC0()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_10000FF90(v0[2], v3, &qword_100982518, &unk_100808DA0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100005508(v0[4], &qword_100982518, &unk_100808DA0);
    if (qword_100973B88 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_100987550);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Missing connection", v7, 2u);
    }

    v8 = v0[1];

    return v8();
  }

  else
  {
    sub_10064FAD4(v0[4], v0[7], type metadata accessor for SDAirDropServerConnection);
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_1006457E4;

    return sub_1005AEDF4();
  }
}

uint64_t sub_10064ADD8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_10028088C(&qword_100977BB0, &qword_1007FADE0);
  v2[10] = swift_task_alloc();
  v3 = _s13UploadRequestVMa(0);
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  sub_10028088C(&qword_100982518, &unk_100808DA0);
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for SDAirDropServerConnection(0);
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v2[18] = static AirDropActor.shared;

  return _swift_task_switch(sub_10064AFA0, v5, 0);
}

uint64_t sub_10064AFA0()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[9];
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_uploadConnection;
  swift_beginAccess();
  sub_10000FF90(v4 + v5, v3, &qword_100982518, &unk_100808DA0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100005508(v0[14], &qword_100982518, &unk_100808DA0);
    v6 = type metadata accessor for SFAirDropReceive.Failure();
    sub_10064FB3C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for SFAirDropReceive.Failure.incompleteTransfer(_:), v6);
    swift_willThrow();
LABEL_9:

    v20 = v0[1];

    return v20();
  }

  v8 = v0[11];
  v9 = v0[12];
  v11 = v0[9];
  v10 = v0[10];
  sub_10064FAD4(v0[14], v0[17], type metadata accessor for SDAirDropServerConnection);
  v12 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_uploadRequest;
  swift_beginAccess();
  sub_10000FF90(v11 + v12, v10, &qword_100977BB0, &qword_1007FADE0);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    sub_100005508(v0[10], &qword_100977BB0, &qword_1007FADE0);
    if (qword_100973B88 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_100987550);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Missing UPLOAD request", v16, 2u);
    }

    v17 = v0[17];

    v18 = type metadata accessor for SFAirDropReceive.Failure();
    sub_10064FB3C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, enum case for SFAirDropReceive.Failure.badRequest(_:), v18);
    swift_willThrow();
    sub_10064FB84(v17, type metadata accessor for SDAirDropServerConnection);
    goto LABEL_9;
  }

  v22 = v0[13];
  v23 = v0[11];
  sub_10064FAD4(v0[10], v22, _s13UploadRequestVMa);
  v24 = (v22 + *(v23 + 28));
  v25 = *v24;
  v0[19] = *v24;
  v26 = v24[1];
  v0[20] = v26;
  if (v26 >> 60 == 15)
  {
    goto LABEL_22;
  }

  v27 = v26 >> 62;
  if ((v26 >> 62) > 1)
  {
    if (v27 != 2)
    {
LABEL_20:
      sub_10028BCC0(v25, v26);
      goto LABEL_22;
    }

    if (*(v25 + 16) == *(v25 + 24))
    {
      goto LABEL_22;
    }

    goto LABEL_34;
  }

  if (v27)
  {
    if (v25 == v25 >> 32)
    {
LABEL_22:
      v28 = *(v0[13] + *(v0[11] + 32));
      if (v28 != 2 && (v28 & 1) != 0)
      {
        if (qword_100973B88 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_10000C4AC(v29, qword_100987550);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&_mh_execute_header, v30, v31, "Received all file data from initial request, awaiting decompression", v32, 2u);
        }

        v33 = swift_task_alloc();
        v0[24] = v33;
        *v33 = v0;
        v33[1] = sub_10064BB08;
        v34 = v0[8];

        return sub_10064D3F8(v34);
      }

      v0[28] = sub_10064FB3C(&qword_100975590, type metadata accessor for SDAirDropReceiveCompressionAdapter, &unk_1007F88F8);
      v0[29] = 0;
      type metadata accessor for SDAirDropReceiveCompressionAdapter(0);
      v35 = dispatch thunk of Actor.unownedExecutor.getter();
      v37 = v36;
      v0[30] = v35;
      v0[31] = v36;
      v38 = sub_10064BF30;
      v39 = v35;

      return _swift_task_switch(v38, v39, v37);
    }

LABEL_34:
    sub_1002A9924(v25, v26);
    goto LABEL_35;
  }

  if ((v26 & 0xFF000000000000) == 0)
  {
    goto LABEL_20;
  }

LABEL_35:
  if (qword_100973B88 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_10000C4AC(v40, qword_100987550);
  sub_100294008(v25, v26);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v41, v42))
  {
    sub_10028BCC0(v25, v26);
    goto LABEL_48;
  }

  v38 = swift_slowAlloc();
  *v38 = 134217984;
  if (v27 == 2)
  {
    v45 = *(v25 + 16);
    v44 = *(v25 + 24);
    v46 = __OFSUB__(v44, v45);
    v43 = v44 - v45;
    if (!v46)
    {
      goto LABEL_47;
    }

    __break(1u);
  }

  else if (v27 == 1)
  {
    LODWORD(v43) = HIDWORD(v25) - v25;
    if (__OFSUB__(HIDWORD(v25), v25))
    {
LABEL_60:
      __break(1u);
      return _swift_task_switch(v38, v39, v37);
    }

    v43 = v43;
    goto LABEL_47;
  }

  v43 = BYTE6(v26);
LABEL_47:
  *(v38 + 4) = v43;
  v47 = v38;
  sub_10028BCC0(v25, v26);
  _os_log_impl(&_mh_execute_header, v41, v42, "Streamed starting %ld bytes", v47, 0xCu);

LABEL_48:

  if (v27 == 2)
  {
    v50 = *(v25 + 16);
    v49 = *(v25 + 24);
    v46 = __OFSUB__(v49, v50);
    v48 = v49 - v50;
    if (!v46)
    {
      goto LABEL_56;
    }

    __break(1u);
    goto LABEL_55;
  }

  if (v27 != 1)
  {
LABEL_55:
    v48 = BYTE6(v26);
    goto LABEL_56;
  }

  LODWORD(v48) = HIDWORD(v25) - v25;
  if (__OFSUB__(HIDWORD(v25), v25))
  {
    __break(1u);
    goto LABEL_60;
  }

  v48 = v48;
LABEL_56:
  v0[21] = v48;
  v51 = swift_task_alloc();
  v0[22] = v51;
  *v51 = v0;
  v51[1] = sub_10064B7D0;

  return sub_10029E094(v25, v26);
}

uint64_t sub_10064B7D0()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_10064D174;
  }

  else
  {
    v4 = sub_10064B8FC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10064B8FC()
{
  v1 = v0[21];
  sub_10028BCC0(v0[19], v0[20]);
  v2 = *(v0[13] + *(v0[11] + 32));
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v0[28] = sub_10064FB3C(&qword_100975590, type metadata accessor for SDAirDropReceiveCompressionAdapter, &unk_1007F88F8);
    v0[29] = v1;
    type metadata accessor for SDAirDropReceiveCompressionAdapter(0);
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[30] = v11;
    v0[31] = v10;

    return _swift_task_switch(sub_10064BF30, v11, v10);
  }

  else
  {
    if (qword_100973B88 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_100987550);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Received all file data from initial request, awaiting decompression", v6, 2u);
    }

    v7 = swift_task_alloc();
    v0[24] = v7;
    *v7 = v0;
    v7[1] = sub_10064BB08;
    v8 = v0[8];

    return sub_10064D3F8(v8);
  }
}

uint64_t sub_10064BB08()
{
  v2 = *v1;
  v2[25] = v0;

  if (v0)
  {
    v3 = v2[18];

    return _swift_task_switch(sub_10064BDA0, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[26] = v4;
    *v4 = v2;
    v4[1] = sub_10064BC74;

    return sub_10029EE20();
  }
}

uint64_t sub_10064BC74()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_10064BE68;
  }

  else
  {
    v4 = sub_10064FBF8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10064BDA0()
{
  v1 = v0[17];
  sub_10064FB84(v0[13], _s13UploadRequestVMa);
  sub_10064FB84(v1, type metadata accessor for SDAirDropServerConnection);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10064BE68()
{
  v1 = v0[17];
  sub_10064FB84(v0[13], _s13UploadRequestVMa);
  sub_10064FB84(v1, type metadata accessor for SDAirDropServerConnection);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10064BF30()
{
  v1 = v0[28];
  v2 = v0[8];
  v3 = swift_task_alloc();
  v0[32] = v3;
  *v3 = v0;
  v3[1] = sub_10064C010;
  v4 = v0[8];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 45, v2, v1, 0xD000000000000014, 0x80000001007898D0, sub_1002A65D4, v4, &type metadata for Bool);
}

uint64_t sub_10064C010()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = sub_10064C344;
  }

  else
  {
    v5 = sub_10064C14C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10064C14C()
{
  v1 = *(v0 + 144);
  *(v0 + 361) = *(v0 + 360);
  return _swift_task_switch(sub_10064C170, v1, 0);
}

uint64_t sub_10064C170()
{
  if (*(v0 + 361))
  {
    v1 = swift_task_alloc();
    *(v0 + 272) = v1;
    *v1 = v0;
    v1[1] = sub_10064C428;

    return sub_1005AF9D0();
  }

  else
  {
    v3 = *(v0 + 232);
    if (qword_100973B88 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_100987550);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v3;
      _os_log_impl(&_mh_execute_header, v5, v6, "Received %ld total bytes, awaiting decompression", v7, 0xCu);
    }

    v8 = swift_task_alloc();
    *(v0 + 328) = v8;
    *v8 = v0;
    v8[1] = sub_10064CC84;
    v9 = *(v0 + 64);

    return sub_10064D3F8(v9);
  }
}

uint64_t sub_10064C360()
{
  v1 = v0[17];
  sub_10064FB84(v0[13], _s13UploadRequestVMa);
  sub_10064FB84(v1, type metadata accessor for SDAirDropServerConnection);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10064C428(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  v6 = *v4;
  *(v6 + 280) = a1;
  *(v6 + 288) = a2;
  *(v6 + 362) = a3;
  *(v6 + 296) = v3;

  v7 = *(v5 + 144);
  if (v3)
  {
    v8 = sub_10064D248;
  }

  else
  {
    v8 = sub_10064C564;
  }

  return _swift_task_switch(v8, v7, 0);
}

void sub_10064C564()
{
  v1 = *(v0 + 288);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 280);
LABEL_22:
    sub_10028BCC0(v2, v1);
    v20 = *(v0 + 232);
    if (qword_100973B88 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000C4AC(v21, qword_100987550);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v22, v23, "Received %ld total bytes, awaiting decompression", v24, 0xCu);
    }

    v25 = swift_task_alloc();
    *(v0 + 328) = v25;
    *v25 = v0;
    v25[1] = sub_10064CC84;
    v26 = *(v0 + 64);

    sub_10064D3F8(v26);
    return;
  }

  v3 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v3 != 2)
    {
      v18 = *(v0 + 280);
      v19 = *(v0 + 288);
      sub_10028BCC0(v18, v1);
      v2 = v18;
      v1 = v19;
      goto LABEL_22;
    }

    v6 = *(v0 + 280);
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    v9 = v7 - v8;
    if (!__OFSUB__(v7, v8))
    {
LABEL_13:
      sub_1002A9924(v6, v1);
      if (v9 <= 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_11:
    v6 = *(v0 + 280);
    if (__OFSUB__(HIDWORD(v6), v6))
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v9 = HIDWORD(v6) - v6;
    goto LABEL_13;
  }

  if (v3)
  {
    goto LABEL_11;
  }

  if (!BYTE6(v1))
  {
LABEL_6:
    v4 = *(v0 + 280);
    v5 = *(v0 + 288);
    sub_10028BCC0(v4, v5);
    v2 = v4;
    v1 = v5;
    goto LABEL_22;
  }

LABEL_14:
  if (qword_100973B88 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 280);
  v11 = *(v0 + 288);
  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_100987550);
  sub_1002A9924(v10, v11);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v13, v14))
  {
    sub_10028BCC0(*(v0 + 280), *(v0 + 288));
    goto LABEL_35;
  }

  v15 = swift_slowAlloc();
  *v15 = 134217984;
  if (v3 == 2)
  {
    v16 = *(v0 + 280);
    v28 = *(v16 + 16);
    v27 = *(v16 + 24);
    v29 = __OFSUB__(v27, v28);
    v17 = v27 - v28;
    if (!v29)
    {
      goto LABEL_34;
    }

    __break(1u);
  }

  else if (v3 == 1)
  {
    v16 = *(v0 + 280);
    LODWORD(v17) = HIDWORD(v16) - v16;
    if (__OFSUB__(HIDWORD(v16), v16))
    {
LABEL_50:
      __break(1u);
      return;
    }

    v17 = v17;
    goto LABEL_34;
  }

  v17 = *(v0 + 294);
  v16 = *(v0 + 280);
LABEL_34:
  v30 = *(v0 + 288);
  *(v15 + 4) = v17;
  v31 = v15;
  sub_10028BCC0(v16, v30);
  _os_log_impl(&_mh_execute_header, v13, v14, "Streamed %ld bytes", v31, 0xCu);

LABEL_35:

  if (v3 == 2)
  {
    v35 = *(*(v0 + 280) + 16);
    v36 = *(*(v0 + 280) + 24);
    v29 = __OFSUB__(v36, v35);
    v34 = v36 - v35;
    if (!v29)
    {
      goto LABEL_43;
    }

    __break(1u);
LABEL_42:
    v34 = *(v0 + 294);
    goto LABEL_43;
  }

  if (v3 != 1)
  {
    goto LABEL_42;
  }

  v32 = *(v0 + 280);
  v33 = *(v0 + 284);
  v29 = __OFSUB__(v33, v32);
  LODWORD(v34) = v33 - v32;
  if (v29)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v34 = v34;
LABEL_43:
  v37 = *(v0 + 232);
  *(v0 + 304) = v37 + v34;
  if (__OFADD__(v37, v34))
  {
    __break(1u);
    goto LABEL_48;
  }

  v38 = swift_task_alloc();
  *(v0 + 312) = v38;
  *v38 = v0;
  v38[1] = sub_10064C970;
  v40 = *(v0 + 280);
  v39 = *(v0 + 288);

  sub_10029E094(v40, v39);
}

uint64_t sub_10064C970()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_10064D310;
  }

  else
  {
    v4 = sub_10064CA9C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10064CA9C()
{
  v1 = *(v0 + 362);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  sub_10028BCC0(v2, v3);
  sub_10028BCC0(v2, v3);
  v4 = *(v0 + 304);
  if (v1 == 1)
  {
    if (qword_100973B88 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_100987550);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = v4;
      _os_log_impl(&_mh_execute_header, v6, v7, "Received %ld total bytes, awaiting decompression", v8, 0xCu);
    }

    v9 = swift_task_alloc();
    *(v0 + 328) = v9;
    *v9 = v0;
    v9[1] = sub_10064CC84;
    v10 = *(v0 + 64);

    return sub_10064D3F8(v10);
  }

  else
  {
    *(v0 + 232) = v4;
    type metadata accessor for SDAirDropReceiveCompressionAdapter(0);
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 240) = v13;
    *(v0 + 248) = v12;

    return _swift_task_switch(sub_10064BF30, v13, v12);
  }
}

uint64_t sub_10064CC84()
{
  v2 = *v1;
  v2[42] = v0;

  if (v0)
  {
    v3 = v2[18];

    return _swift_task_switch(sub_10064CF1C, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[43] = v4;
    *v4 = v2;
    v4[1] = sub_10064CDF0;

    return sub_10029EE20();
  }
}

uint64_t sub_10064CDF0()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_10064D0AC;
  }

  else
  {
    v4 = sub_10064CFE4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10064CF1C()
{
  v1 = v0[17];
  sub_10064FB84(v0[13], _s13UploadRequestVMa);
  sub_10064FB84(v1, type metadata accessor for SDAirDropServerConnection);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10064CFE4()
{
  v1 = v0[17];
  sub_10064FB84(v0[13], _s13UploadRequestVMa);
  sub_10064FB84(v1, type metadata accessor for SDAirDropServerConnection);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10064D0AC()
{
  v1 = v0[17];
  sub_10064FB84(v0[13], _s13UploadRequestVMa);
  sub_10064FB84(v1, type metadata accessor for SDAirDropServerConnection);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10064D174()
{
  v1 = v0[17];
  v2 = v0[13];
  sub_10028BCC0(v0[19], v0[20]);
  sub_10064FB84(v2, _s13UploadRequestVMa);
  sub_10064FB84(v1, type metadata accessor for SDAirDropServerConnection);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10064D248()
{
  v1 = v0[17];
  sub_10064FB84(v0[13], _s13UploadRequestVMa);
  sub_10064FB84(v1, type metadata accessor for SDAirDropServerConnection);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10064D310()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[17];
  v4 = v0[13];
  sub_10028BCC0(v1, v2);
  sub_10028BCC0(v1, v2);
  sub_10064FB84(v4, _s13UploadRequestVMa);
  sub_10064FB84(v3, type metadata accessor for SDAirDropServerConnection);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10064D3F8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_10028088C(&qword_100987660, &qword_10080E360);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_10028088C(&qword_10097A690, &qword_1007FD7E8);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDropReceive.AskResponse();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v2[17] = static AirDropActor.shared;

  return _swift_task_switch(sub_10064D5D0, v6, 0);
}

uint64_t sub_10064D5D0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 16))(v1, v0[6] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_askContinuation, v3);
  SFProgressContinuation.task.getter();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_10064D6D0;
  v5 = v0[16];
  v6 = v0[7];

  return SFProgressTask.finalValue.getter(v5, v6);
}

uint64_t sub_10064D6D0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 152) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 136);
  if (v0)
  {
    v7 = sub_10064DC94;
  }

  else
  {
    v7 = sub_10064D858;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10064D858()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  (*(v3 + 16))(v1, v0[16], v2);
  v4 = (*(v3 + 88))(v1, v2);
  v5 = *(v3 + 8);
  v6 = enum case for SFAirDropReceive.AskResponse.accept(_:);
  v0[20] = v5;
  v0[21] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v4 == v6)
  {
    v7 = v0[15];
    v8 = v0[13];
    v9 = v0[14];
    v5(v0[16], v8);
    (*(v9 + 96))(v7, v8);
    v10 = *(sub_10028088C(&qword_1009765E8, &qword_100808D60) + 48);
    v11 = type metadata accessor for SFAirDropReceive.AcceptContext();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
    v12 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v12 - 8) + 8))(v7, v12);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v5(v0[15], v0[13]);
    if (qword_100973B88 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000C4AC(v15, qword_100987550);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "ASK declined, cancelling receive compression adapter", v18, 2u);
    }

    type metadata accessor for SDAirDropReceiveCompressionAdapter(0);
    sub_10064FB3C(&qword_100975590, type metadata accessor for SDAirDropReceiveCompressionAdapter, &unk_1007F88F8);
    v20 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10064DB5C, v20, v19);
  }
}

uint64_t sub_10064DB5C()
{
  v1 = *(v0 + 136);
  [*(*(v0 + 40) + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_zipper) stop];
  swift_beginAccess();

  return _swift_task_switch(sub_10064DBF8, v1, 0);
}

uint64_t sub_10064DBF8()
{
  (*(v0 + 160))(*(v0 + 128), *(v0 + 104));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10064DC94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t type metadata accessor for SDAirDropReceiveHandler(uint64_t a1)
{
  result = qword_100987608;
  if (!qword_100987608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10064E17C(uint64_t a1)
{
  type metadata accessor for SFAirDrop.TransferIdentifier();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      type metadata accessor for SDAirDropServerConnectionIdentity(319);
      if (v3 <= 0x3F)
      {
        sub_10064E618(319);
        if (v4 <= 0x3F)
        {
          sub_1002DC800(319);
          if (v5 <= 0x3F)
          {
            sub_10064E680(319);
            if (v6 <= 0x3F)
            {
              sub_10064E6E4();
              if (v7 <= 0x3F)
              {
                sub_10064E738(319, &qword_100977B38, _s12HelloRequestVMa);
                if (v8 <= 0x3F)
                {
                  sub_10064E738(319, &qword_100977B50, _s10AskRequestVMa);
                  if (v9 <= 0x3F)
                  {
                    sub_10064E738(319, &qword_100977B68, _s13UploadRequestVMa);
                    if (v10 <= 0x3F)
                    {
                      sub_10064E738(319, &qword_100987630, _s15ExchangeRequestVMa);
                      if (v11 <= 0x3F)
                      {
                        sub_10064E738(319, &qword_100987638, &type metadata accessor for SFAirDropReceive.FileInfo);
                        if (v12 <= 0x3F)
                        {
                          sub_10064E738(319, &qword_100987640, type metadata accessor for SDAirDropServerConnection);
                          if (v13 <= 0x3F)
                          {
                            type metadata accessor for SFAirDrop.NetworkMetrics();
                            if (v14 <= 0x3F)
                            {
                              swift_updateClassMetadata2();
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

void sub_10064E618(uint64_t a1)
{
  if (!qword_100987618)
  {
    type metadata accessor for SFAirDrop.AskProgress();
    type metadata accessor for SFAirDropReceive.AskResponse();
    v1 = type metadata accessor for SFProgressContinuation();
    if (!v2)
    {
      atomic_store(v1, &qword_100987618);
    }
  }
}

void sub_10064E680(uint64_t a1)
{
  if (!qword_100987620)
  {
    sub_100280938(&unk_10097A6A0, &qword_10080E1A0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100987620);
    }
  }
}

void sub_10064E6E4()
{
  if (!qword_100987628)
  {
    v0 = type metadata accessor for SFProgressContinuation();
    if (!v1)
    {
      atomic_store(v0, &qword_100987628);
    }
  }
}

void sub_10064E738(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_10064E7A0()
{
  result = qword_100987648;
  if (!qword_100987648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987648);
  }

  return result;
}

uint64_t sub_10064E83C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_id;
  v5 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10064E8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDrop.Progress();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;

  return _swift_task_switch(sub_10064EA1C, v7, 0);
}

uint64_t sub_10064EA1C()
{
  v28 = v0;
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 48) + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_totalBytes;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v0 + 32);
  *v1 = *(v0 + 24);
  *(v1 + 8) = v4;
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  (*(v2 + 104))();
  if (qword_100973B88 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 48);
  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100987550);
  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 32);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 134218242;
    *(v13 + 4) = v12;
    *(v13 + 12) = 2080;
    if (*(v3 + 8))
    {
      v15 = 0x800000010079A3D0;
      v16 = 0xD000000000000019;
    }

    else
    {
      *(v0 + 16) = *v3;
      sub_1002F5340();
      v16 = BinaryInteger.description.getter();
      v15 = v17;
    }

    v18 = sub_10000C4E4(v16, v15, &v27);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Decompression progress copied: %ld total: %s", v13, 0x16u);
    sub_10000C60C(v14);
  }

  v20 = *(v0 + 88);
  v19 = *(v0 + 96);
  v21 = *(v0 + 72);
  v22 = *(v0 + 80);
  v23 = *(v0 + 56);
  v24 = *(v0 + 64);
  (*(v24 + 16))(v21, *(v0 + 48) + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_transferContinuation, v23);
  SFProgressContinuation.yield(_:)();
  (*(v24 + 8))(v21, v23);
  (*(v20 + 8))(v19, v22);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_10064ECD0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;

  return _swift_task_switch(sub_10064EDD4, v4, 0);
}

uint64_t sub_10064EDD4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  (*(v2 + 16))(v1, v0[3] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_transferContinuation, v3);
  SFProgressContinuation.fail(with:)();
  (*(v2 + 8))(v1, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v5 = v0[2];
    v6 = v0[3];
    v7 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_serverConnectionIdentity;
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v8[1] = sub_10064EF3C;

    return sub_1003609F4(v6 + v7, v5);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10064EF3C()
{
  v3 = *v0;

  swift_unknownObjectRelease();

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10064F074(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v2[8] = static AirDropActor.shared;

  return _swift_task_switch(sub_10064F17C, v4, 0);
}

uint64_t sub_10064F17C()
{
  if (qword_100973B88 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100987550);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Decompression finished, sending UPLOAD response", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_10064F2C8;

  return sub_100649D64();
}

uint64_t sub_10064F2C8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 64);

    return _swift_task_switch(sub_10064F414, v6, 0);
  }
}

uint64_t sub_10064F414()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  (*(v2 + 16))(v1, v0[4] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_transferContinuation, v3);
  v0[2] = v4;
  SFProgressContinuation.finish(with:)();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10064F4DC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for SDAirDropServerConnection(0);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for SDAirDropMessage(0);
  v2[8] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v2[9] = static AirDropActor.shared;

  return _swift_task_switch(sub_10064F5E8, v3, 0);
}

uint64_t sub_10064F5E8()
{
  if (qword_100973B88 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100987550);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending HELLO response", v4, 2u);
  }

  v5 = v0[8];
  v6 = v0[2];

  *v5 = v6;
  *(v5 + 4) = BYTE4(v6);
  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_10064F760;
  v8 = v0[8];

  return sub_1005AE288(v8);
}

uint64_t sub_10064F760()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  *(*v1 + 88) = v0;

  sub_10064FB84(v3, type metadata accessor for SDAirDropMessage);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_10064F994;
  }

  else
  {
    v5 = sub_10064F8BC;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10064F8BC()
{
  v1 = v0[6];
  sub_10064FA6C(v0[3], v1, type metadata accessor for SDAirDropServerConnection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10064FB84(v1, type metadata accessor for SDAirDropServerConnection);
  if (!EnumCaseMultiPayload)
  {
    sub_1005ADD74(0);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_10064F994()
{
  v1 = v0[5];
  sub_10064FA6C(v0[3], v1, type metadata accessor for SDAirDropServerConnection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10064FB84(v1, type metadata accessor for SDAirDropServerConnection);
  if (!EnumCaseMultiPayload)
  {
    sub_1005ADD74(0);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_10064FA6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10064FAD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10064FB3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10064FB84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10064FC04()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100987678);
  v1 = sub_10000C4AC(v0, qword_100987678);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10064FCCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  if (qword_100973B90 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_100987678);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Start key check flow", v7, 2u);
  }

  v8 = _s8KeyCheckV17InitialKeyContextVMa(0);
  return sub_10065154C(a1, a2 + *(v8 + 20), type metadata accessor for SDAuthenticationSessionMetrics);
}

id sub_10064FDEC()
{
  v1 = *(_s8KeyCheckV18InitialLockContextVMa(0) + 36);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationRequest) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10064FE5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X8>)
{
  v49 = a3;
  v7 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v48 = &v37 - v15;
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10080E400;
  if (qword_100973B98 != -1)
  {
    v36 = v16;
    swift_once();
    v16 = v36;
  }

  *(v16 + 56) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(v16 + 64) = &off_10097BD58;
  *(v16 + 96) = &type metadata for SDAuthentication.Operation.CheckEnabledWithPeerDevice;
  *(v16 + 104) = &off_10097BC20;
  *(v16 + 136) = &type metadata for SDAuthentication.Operation.CheckIsWiFiEnabled;
  *(v16 + 144) = &off_10097BDA0;
  *(v16 + 176) = &type metadata for SDAuthentication.Operation.CheckIsBluetoothEnabled;
  *(v16 + 184) = &off_10097BDB8;
  *(v16 + 216) = &type metadata for SDAuthentication.Operation.CheckRegistrationStateWithAKSManager;
  *(v16 + 224) = &off_10097BC08;
  *(v16 + 256) = &type metadata for SDAuthentication.Operation.IncludeRegistrationIDInMessage;
  *(v16 + 264) = &off_10097BBF0;
  *(v16 + 296) = &type metadata for SDAuthentication.Operation.EndEarlyIfNecessary;
  *(v16 + 304) = &off_10097BB60;
  *(v16 + 336) = &type metadata for SDAuthentication.Operation.SendRequestMessage;
  *(v16 + 344) = &off_10097BCF8;
  *a4 = v16;
  v17 = _s8KeyCheckV18InitialLockContextVMa(0);
  v18 = *(v11 + 56);
  v46 = v17[6];
  v47 = v18;
  v18(&a4[v46], 1, 1, v10);
  *&a4[v17[9]] = 0;
  a4[v17[10]] = 0;
  sub_1002E4E88(a2, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100005508(v9, &qword_10097A7F0, &unk_1007FB600);
    if (qword_100973B90 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000C4AC(v19, qword_100987678);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Start key check flow, device hasn't been locked yet", v22, 2u);
    }

    static Date.distantFuture.getter();
    sub_100005508(a2, &qword_10097A7F0, &unk_1007FB600);
  }

  else
  {
    v44 = a2;
    v45 = a1;
    v23 = v48;
    v42 = *(v11 + 32);
    v43 = v11 + 32;
    v42(v48, v9, v10);
    if (qword_100973B90 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000C4AC(v24, qword_100987678);
    v41 = *(v11 + 16);
    v41(v14, v23, v10);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v38 = v27;
      v40 = swift_slowAlloc();
      v50 = v40;
      *v27 = 136315138;
      sub_100418E5C();
      v39 = v26;
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v11 + 8))(v14, v10);
      v31 = sub_10000C4E4(v28, v30, &v50);

      v32 = v38;
      *(v38 + 1) = v31;
      _os_log_impl(&_mh_execute_header, v25, v39, "Start key check flow, unlockDate: %s", v32, 0xCu);
      sub_10000C60C(v40);

      sub_100005508(v44, &qword_10097A7F0, &unk_1007FB600);
    }

    else
    {

      sub_100005508(v44, &qword_10097A7F0, &unk_1007FB600);
      (*(v11 + 8))(v14, v10);
    }

    v33 = v46;
    sub_100005508(&a4[v46], &qword_10097A7F0, &unk_1007FB600);
    v34 = v48;
    v41(&a4[v33], v48, v10);
    v47(&a4[v33], 0, 1, v10);
    v42(&a4[v17[7]], v34, v10);
    a1 = v45;
  }

  result = sub_10065154C(a1, &a4[v17[5]], type metadata accessor for SDAuthenticationSessionMetrics);
  a4[v17[8]] = v49 & 1;
  return result;
}

uint64_t sub_1006504E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id sub_100650588()
{
  v1 = *(_s8KeyCheckV21HandleKeyCheckContextVMa(0) + 28);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationConfirmation) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1006505F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10080C370;
  if (qword_100973B98 != -1)
  {
    swift_once();
  }

  *(v6 + 96) = &type metadata for SDAuthentication.Operation.CheckEnabledWithPeerDevice;
  *(v6 + 104) = &off_10097BC20;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.CheckRemoteDeviceOSVersionIsSupported;
  *(v6 + 144) = &off_10097BE00;
  *(v6 + 176) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(v6 + 184) = &off_10097BD58;
  *(v6 + 56) = &type metadata for SDAuthentication.Operation.CheckIsBluetoothEnabled;
  *(v6 + 64) = &off_10097BDB8;
  *(v6 + 216) = &type metadata for SDAuthentication.Operation.CheckIsWiFiEnabled;
  *(v6 + 224) = &off_10097BDA0;
  *(v6 + 256) = &type metadata for SDAuthentication.Operation.CheckIsBluetoothEnabled;
  *(v6 + 264) = &off_10097BDB8;
  *(v6 + 296) = &type metadata for SDAuthentication.Operation.CheckRegistrationStateWithAKSManager;
  *(v6 + 304) = &off_10097BC08;
  *(v6 + 336) = &type metadata for SDAuthentication.Operation.VerifyRegistrationIDsInSync;
  *(v6 + 344) = &off_10097C240;
  *(v6 + 376) = &type metadata for SDAuthentication.Operation.SendConfirmation;
  *(v6 + 384) = &off_10097C270;
  *a3 = v6;
  v7 = _s8KeyCheckV21HandleKeyCheckContextVMa(0);
  *(a3 + v7[7]) = 0;
  *(a3 + v7[8]) = 2;
  v8 = _s8KeyCheckV17InitialKeyContextVMa(0);
  v9 = v7[5];
  sub_1006515B4(a2 + *(v8 + 20), a3 + v9, type metadata accessor for SDAuthenticationSessionMetrics);
  if ([a1 hasRegistrationID] && (v10 = objc_msgSend(a1, "registrationID")) != 0)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    result = sub_10065161C(a2, _s8KeyCheckV17InitialKeyContextVMa);
    v16 = (a3 + v7[6]);
    *v16 = v12;
    v16[1] = v14;
  }

  else
  {
    v17 = sub_100010F88(1, 0xD00000000000002ALL, 0x800000010079A3F0);
    v19 = v18;
    sub_1000115C8();
    swift_allocError();
    *v20 = v17;
    *(v20 + 8) = v19;
    swift_willThrow();

    sub_10065161C(a2, _s8KeyCheckV17InitialKeyContextVMa);

    return sub_10065161C(a3 + v9, type metadata accessor for SDAuthenticationSessionMetrics);
  }

  return result;
}

uint64_t sub_1006508A8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));

  return v2;
}

uint64_t sub_100650910(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = a3(a1, a2);
  v4 = [v3 data];

  if (v4)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

  else
  {
    v7 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v9 = v8;
    sub_1000115C8();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v9;
    return swift_willThrow();
  }
}

uint64_t sub_1006509E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F5670;
  if (qword_100973B98 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.HandleSucceededResult;
  *(v6 + 64) = &off_10097C258;
  *a3 = v6;
  if ([a1 hasSuccess])
  {
    v7 = *(_s8KeyCheckV18InitialLockContextVMa(0) + 20);
    v8 = _s8KeyCheckV25HandleConfirmationContextVMa(0);
    sub_1006515B4(a2 + v7, a3 + *(v8 + 20), type metadata accessor for SDAuthenticationSessionMetrics);
    LOBYTE(v7) = [a1 success];

    result = sub_10065161C(a2, _s8KeyCheckV18InitialLockContextVMa);
    *(a3 + *(v8 + 24)) = v7;
  }

  else
  {
    v10 = sub_100010F88(1, 0xD000000000000016, 0x8000000100789BD0);
    v12 = v11;
    sub_1000115C8();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    swift_willThrow();

    sub_10065161C(a2, _s8KeyCheckV18InitialLockContextVMa);
  }

  return result;
}

void sub_100650BAC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v68 = a2;
  v64 = a3;
  v59 = _s8KeyCheckV25HandleConfirmationContextVMa(0);
  __chkstk_darwin(v59);
  v63 = (&v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10028088C(&qword_100987860, &qword_10080E550);
  __chkstk_darwin(v5 - 8);
  v7 = &v58 - v6;
  v8 = _s8KeyCheckV18InitialLockContextVMa(0);
  v65 = *(v8 - 8);
  v66 = v8;
  v9 = __chkstk_darwin(v8);
  v61 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v62 = &v58 - v11;
  v60 = _s8KeyCheckV21HandleKeyCheckContextVMa(0);
  __chkstk_darwin(v60);
  v13 = (&v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_10028088C(&qword_100987868, &qword_10080E558);
  __chkstk_darwin(v14 - 8);
  v16 = &v58 - v15;
  v17 = _s8KeyCheckV17InitialKeyContextVMa(0);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v58 - v22;
  sub_1002A9938(a1, v69);
  sub_10028088C(&qword_1009819F0, &unk_1007FAAA0);
  sub_1000276B4(0, &qword_1009758B8, off_1008C8D48);
  if (swift_dynamicCast())
  {
    v24 = v70;
    sub_1002A9938(v68, v69);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v25 = swift_dynamicCast();
    v26 = *(v18 + 56);
    if (!v25)
    {
      v26(v16, 1, 1, v17);
      sub_100005508(v16, &qword_100987868, &qword_10080E558);
      v40 = sub_100010F88(10, 0xD000000000000046, 0x8000000100789AA0);
      v42 = v41;
      sub_1000115C8();
      swift_allocError();
      *v43 = v40;
      *(v43 + 8) = v42;
      swift_willThrow();

      return;
    }

    v26(v16, 0, 1, v17);
    sub_10065154C(v16, v23, _s8KeyCheckV17InitialKeyContextVMa);
    sub_1006515B4(v23, v21, _s8KeyCheckV17InitialKeyContextVMa);
    v27 = v24;
    v28 = v67;
    sub_1006505F8(v27, v21, v13);
    if (v28)
    {
      v29 = _s8KeyCheckV17InitialKeyContextVMa;
      v30 = v23;
LABEL_9:
      sub_10065161C(v30, v29);

      return;
    }

    v52 = v64;
    v64[3] = v60;
    v52[4] = &off_1008EC870;
    v53 = sub_10002F604(v52);
    sub_10065154C(v13, v53, _s8KeyCheckV21HandleKeyCheckContextVMa);

    v54 = _s8KeyCheckV17InitialKeyContextVMa;
    v55 = v23;
  }

  else
  {
    v31 = v68;
    sub_1002A9938(a1, v69);
    sub_1000276B4(0, &qword_1009758D0, off_1008C8D08);
    if (!swift_dynamicCast())
    {
      v44 = sub_100010F88(10, 0xD00000000000001FLL, 0x80000001007898F0);
      v46 = v45;
      sub_1000115C8();
      swift_allocError();
      *v47 = v44;
      *(v47 + 8) = v46;
      swift_willThrow();
      return;
    }

    v32 = v70;
    sub_1002A9938(v31, v69);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v33 = v66;
    v34 = swift_dynamicCast();
    v35 = *(v65 + 56);
    if (!v34)
    {
      v35(v7, 1, 1, v33);
      sub_100005508(v7, &qword_100987860, &qword_10080E550);
      v48 = sub_100010F88(10, 0xD000000000000047, 0x8000000100789A00);
      v50 = v49;
      sub_1000115C8();
      swift_allocError();
      *v51 = v48;
      *(v51 + 8) = v50;
      swift_willThrow();

      return;
    }

    v35(v7, 0, 1, v33);
    v36 = v62;
    sub_10065154C(v7, v62, _s8KeyCheckV18InitialLockContextVMa);
    v37 = v61;
    sub_1006515B4(v36, v61, _s8KeyCheckV18InitialLockContextVMa);
    v27 = v32;
    v38 = v63;
    v39 = v67;
    sub_1006509E4(v27, v37, v63);
    if (v39)
    {
      v29 = _s8KeyCheckV18InitialLockContextVMa;
      v30 = v36;
      goto LABEL_9;
    }

    v56 = v64;
    v64[3] = v59;
    v56[4] = &off_1008EC888;
    v57 = sub_10002F604(v56);
    sub_10065154C(v38, v57, _s8KeyCheckV25HandleConfirmationContextVMa);

    v54 = _s8KeyCheckV18InitialLockContextVMa;
    v55 = v36;
  }

  sub_10065161C(v55, v54);
}

void sub_1006513F0(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics(319);
    if (v2 <= 0x3F)
    {
      sub_1002A6BEC(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v4 <= 0x3F)
        {
          sub_1002A6C94(319, &unk_1009759E8, &qword_1009758B8, off_1008C8D48);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10065154C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006515B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10065161C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100651704(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return _swift_task_switch(sub_100651724, 0, 0);
}

uint64_t sub_100651724()
{
  v1 = *(v0 + 104);
  v2 = sub_100011040(_swiftEmptyArrayStorage);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  Date.timeIntervalSinceReferenceDate.getter();
  Double.write<A>(to:)();
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  *(v0 + 40) = &type metadata for String;
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  sub_1000106E0((v0 + 16), (v0 + 48));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100011170((v0 + 48), 0x6144706F6F426673, 0xED000079654B6574, isUniquelyReferenced_nonNull_native);
  v6 = v2;
  *(v0 + 112) = v2;
  v7 = [objc_allocWithZone(sub_10028088C(&qword_100987A40 &qword_10080E688))];
  *(v0 + 120) = v7;
  v8 = swift_task_alloc();
  *(v0 + 128) = v8;
  v8[2] = v7;
  v8[3] = 0;
  v8[4] = 0;
  v8[5] = 0xD00000000000001BLL;
  v8[6] = 0x800000010079A490;
  v8[7] = 0xD00000000000002ELL;
  v8[8] = 0x800000010079A460;
  v8[9] = v6;
  v8[10] = 0;
  v8[11] = v1;
  v9 = swift_task_alloc();
  *(v0 + 136) = v9;
  v10 = sub_10028088C(&qword_100976168, &qword_1007F92F0);
  *v9 = v0;
  v9[1] = sub_100651950;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 152, 0, 0, 0xD00000000000006ALL, 0x80000001007892A0, sub_100651AF8, v8, v10);
}

uint64_t sub_100651950()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_100651A84;
  }

  else
  {
    v4 = *(v2 + 120);

    v3 = sub_10033CBE0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100651A84()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100651B38()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100987A48);
  v1 = sub_10000C4AC(v0, qword_100987A48);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100651C00(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;

  return _swift_task_switch(sub_100651D6C, v4, 0);
}

id sub_100651D6C(uint64_t a1)
{
  v75 = v1;
  v2 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  if (v2 != 1)
  {
    goto LABEL_3;
  }

  v3 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v3)
  {
    goto LABEL_3;
  }

  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[7];
  v10 = SFAirDropReceive.AskRequest.urlItems.getter();
  sub_1002FB398(v10, v9);

  v11 = *(v8 + 48);
  if (v11(v9, 1, v7) == 1)
  {
    sub_100005508(v1[7], &unk_100974E00, &qword_1007F8940);
    goto LABEL_31;
  }

  v12 = *(v1[9] + 32);
  v12(v1[12], v1[7], v1[8]);
  v13 = objc_opt_self();
  result = [v13 defaultWorkspace];
  if (!result)
  {
    goto LABEL_37;
  }

  v15 = result;
  URL._bridgeToObjectiveC()(v14);
  v17 = v16;
  v18 = [v15 applicationsAvailableForOpeningURL:v16];

  if (!v18)
  {
    goto LABEL_18;
  }

  sub_1006532A8();
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_18;
    }
  }

  else
  {
    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if ((v19 & 0xC000000000000001) == 0)
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v20 = *(v19 + 32);
      goto LABEL_16;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_16:
  v21 = [v20 bundleIdentifier];

  if (v21)
  {
    v22 = v1[12];
    v23 = v1[8];
    v24 = v1[9];
    v25 = v1[3];

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    (*(v24 + 8))(v22, v23);
    *(v25 + 16) = v26;
    *(v25 + 24) = v28;

    goto LABEL_31;
  }

LABEL_18:
  result = [v13 defaultWorkspace];
  if (!result)
  {
LABEL_38:
    __break(1u);
    return result;
  }

  v29 = result;

  URL._bridgeToObjectiveC()(v30);
  v32 = v31;
  v33 = [v29 URLOverrideForURL:v31];

  if (v33)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = v1[8];
  v37 = v1[5];
  v36 = v1[6];
  v38 = v1[4];
  (*(v1[9] + 56))(v37, v34, 1, v35);
  sub_1003332E8(v37, v36);
  sub_100333278(v36, v38);
  if (v11(v38, 1, v35) == 1)
  {
    sub_100005508(v1[4], &unk_100974E00, &qword_1007F8940);
  }

  else
  {
    v39 = v1[11];
    v40 = v1[8];
    v41 = v1[9];
    v12(v39, v1[4], v40);
    v42 = URL.scheme.getter();
    v44 = v43;
    v45 = *(v41 + 8);
    v45(v39, v40);
    if (v44)
    {
      v46 = v1[12];
      v47 = v1[8];
      v48 = v1[3];
      sub_100005508(v1[6], &unk_100974E00, &qword_1007F8940);
      v45(v46, v47);
      *(v48 + 16) = v42;
      *(v48 + 24) = v44;

      goto LABEL_31;
    }
  }

  if (qword_100973BA0 != -1)
  {
    swift_once();
  }

  v49 = v1[12];
  v51 = v1[9];
  v50 = v1[10];
  v52 = v1[8];
  v53 = type metadata accessor for Logger();
  sub_10000C4AC(v53, qword_100987A48);
  (*(v51 + 16))(v50, v49, v52);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.error.getter();
  v56 = os_log_type_enabled(v54, v55);
  v57 = v1[12];
  v59 = v1[9];
  v58 = v1[10];
  v60 = v1[8];
  v61 = v1[6];
  if (v56)
  {
    v73 = v1[12];
    v62 = swift_slowAlloc();
    v72 = v61;
    v63 = swift_slowAlloc();
    v74 = v63;
    *v62 = 136315138;
    sub_1004AA010();
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v66 = v65;
    v67 = *(v59 + 8);
    v67(v58, v60);
    v68 = sub_10000C4E4(v64, v66, &v74);

    *(v62 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v54, v55, "Failed to get item type from url. {url: %s}", v62, 0xCu);
    sub_10000C60C(v63);

    sub_100005508(v72, &unk_100974E00, &qword_1007F8940);
    v67(v73, v60);
  }

  else
  {

    v69 = *(v59 + 8);
    v69(v58, v60);
    sub_100005508(v61, &unk_100974E00, &qword_1007F8940);
    v69(v57, v60);
  }

LABEL_31:
  v70 = objc_allocWithZone(LSApplicationRecord);
  v71 = sub_10066F3F8(0xD000000000000012, 0x8000000100788350, 1);
  if (v71)
  {

    v4 = 1;
    goto LABEL_4;
  }

LABEL_3:
  v4 = 0;
LABEL_4:

  v5 = v1[1];

  return v5(v4);
}

uint64_t sub_100652554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  v6 = type metadata accessor for URL();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;

  return _swift_task_switch(sub_1006526D8, v7, 0);
}

id sub_1006526D8()
{
  v80 = v0;
  v1 = 0xD000000000000014;
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 32);
  sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007F5670;
  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100026764();
  *(v7 + 32) = v9;
  *(v7 + 40) = v8;

  String.init(format:_:)();
  URL.init(string:)();

  sub_100333278(v3, v2);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_100005508(*(v0 + 88), &unk_100974E00, &qword_1007F8940);
    if (qword_100973BA0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_100987A48);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 40);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v79 = v15;
      *v14 = 136315138;
      if (*(v13 + 16))
      {
        v1 = URL.description.getter();
        v17 = v16;
      }

      else
      {
        v17 = 0x80000001007924A0;
      }

      v69 = *(v0 + 96);
      v70 = sub_10000C4E4(v1, v17, &v79);

      *(v14 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unable to build app store search URL with item: %s", v14, 0xCu);
      sub_10000C60C(v15);

      v36 = v69;
    }

    else
    {
      v35 = *(v0 + 96);

      v36 = v35;
    }

    goto LABEL_21;
  }

  (*(*(v0 + 56) + 32))(*(v0 + 80), *(v0 + 88), *(v0 + 48));
  if (qword_100973BA0 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 72);
  v18 = *(v0 + 80);
  v20 = *(v0 + 48);
  v21 = *(v0 + 56);
  v22 = type metadata accessor for Logger();
  sub_10000C4AC(v22, qword_100987A48);
  v76 = *(v21 + 16);
  v76(v19, v18, v20);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 72);
  v28 = *(v0 + 48);
  v27 = *(v0 + 56);
  if (v25)
  {
    v29 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v79 = v74;
    *v29 = 136315138;
    sub_1004AA010();
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    v33 = *(v27 + 8);
    v33(v26, v28);
    v34 = sub_10000C4E4(v30, v32, &v79);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v23, v24, "Launching app store with URL: %s", v29, 0xCu);
    sub_10000C60C(v74);
  }

  else
  {

    v33 = *(v27 + 8);
    v33(v26, v28);
  }

  v37 = objc_opt_self();
  URL._bridgeToObjectiveC()(v38);
  v40 = v39;
  [v37 logReceiverBundleID:0 forURL:v39];

  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v43 = result;
  URL._bridgeToObjectiveC()(v42);
  v45 = v44;
  *(v0 + 16) = 0;
  v46 = [v43 openURL:v44 configuration:0 error:v0 + 16];

  v47 = *(v0 + 16);
  v48 = *(v0 + 48);
  if (!v46)
  {
    v53 = *(v0 + 80);
    v54 = *(v0 + 64);
    v55 = v47;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v76(v54, v53, v48);
    swift_errorRetain();
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    v58 = os_log_type_enabled(v56, v57);
    v59 = *(v0 + 96);
    v60 = *(v0 + 80);
    v61 = *(v0 + 64);
    v62 = *(v0 + 48);
    if (v58)
    {
      v78 = *(v0 + 80);
      v63 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v79 = v75;
      *v63 = 136315394;
      sub_1004AA010();
      v77 = v59;
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v57;
      v66 = v65;
      v33(v61, v62);
      v67 = sub_10000C4E4(v64, v66, &v79);

      *(v63 + 4) = v67;
      *(v63 + 12) = 2112;
      swift_errorRetain();
      v68 = _swift_stdlib_bridgeErrorToNSError();
      *(v63 + 14) = v68;
      *v73 = v68;
      _os_log_impl(&_mh_execute_header, v56, v72, "Failed to launch app store with URL %s: %@", v63, 0x16u);
      sub_100005508(v73, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v75);

      v33(v78, v62);
      v36 = v77;
    }

    else
    {

      v33(v61, v62);
      v33(v60, v62);
      v36 = v59;
    }

LABEL_21:
    sub_100005508(v36, &unk_100974E00, &qword_1007F8940);
    v52 = 0;
    goto LABEL_22;
  }

  v49 = *(v0 + 96);
  v50 = *(v0 + 80);
  v51 = v47;

  v33(v50, v48);
  sub_100005508(v49, &unk_100974E00, &qword_1007F8940);
  v52 = 1;
LABEL_22:
  **(v0 + 24) = v52;

  v71 = *(v0 + 8);

  return v71();
}

uint64_t sub_100652F68@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerUnsupportedLinkType();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0xE000000000000000;
  *a1 = result;
  return result;
}

uint64_t sub_100652FA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_100651C00(a1);
}

uint64_t sub_100653040(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

void sub_100653124(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = String._bridgeToObjectiveC()();
    v3 = SFLocalizedStringForKey();

    if (v3)
    {
LABEL_5:
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      return;
    }

    __break(1u);
  }

  v4 = String._bridgeToObjectiveC()();
  v3 = SFLocalizedStringForKey();

  if (v3)
  {
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_1006531E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100005C04;

  return sub_100652554(a1, a2, a3, v9, v8);
}

unint64_t sub_1006532A8()
{
  result = qword_100975168;
  if (!qword_100975168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100975168);
  }

  return result;
}

uint64_t sub_1006532F4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100987B40);
  v1 = sub_10000C4AC(v0, qword_100987B40);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1006533BC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDrop.TransferType();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_100653510, v5, 0);
}

void sub_100653510(uint64_t a1)
{
  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[7];
  SFAirDropReceive.AskRequest.type.getter();
  v5 = SFAirDrop.TransferType.isLinks.getter();
  (*(v3 + 8))(v2, v4);
  if ((v5 & 1) == 0)
  {
LABEL_33:
    v34 = 0;
LABEL_34:

    v35 = v1[1];

    v35(v34);
    return;
  }

  v6 = v1[5];
  v39 = v1[3];
  v7 = SFAirDropReceive.AskRequest.urlItems.getter();
  v8 = v7;
  v9 = 0;
  v10 = v7 + 56;
  v11 = -1;
  v12 = -1 << *(v7 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(v7 + 56);
  v14 = (63 - v12) >> 6;
  v40 = v6;
  while (v13)
  {
LABEL_11:
    v16 = v1[6];
    v17 = v1[4];
    (*(v40 + 16))(v16, *(v8 + 48) + *(v40 + 72) * (__clz(__rbit64(v13)) | (v9 << 6)), v17);
    v18 = sub_1003D9F30(&off_1008D6E78);
    (*(v40 + 8))(v16, v17);
    if (!v18)
    {

      swift_arrayDestroy();
      goto LABEL_33;
    }

    v13 &= v13 - 1;
    v19 = *(v39 + 16);
    if (v19)
    {
      v20 = v19;
      v21 = v18;
      v38 = v20;
      v22 = [v20 bundleIdentifier];
      if (v22)
      {
        v23 = v22;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      v27 = [v21 bundleIdentifier];
      if (v27)
      {
        v37 = v24;
        v28 = v21;
        v29 = v8;
        v30 = v27;
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        if (!v26)
        {
          v8 = v29;
          v21 = v28;
          goto LABEL_25;
        }

        v8 = v29;
        v21 = v28;
        if (!v32)
        {
          goto LABEL_31;
        }

        if (v37 == v36 && v26 == v32)
        {
        }

        else
        {
          v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v33 & 1) == 0)
          {

            goto LABEL_33;
          }
        }
      }

      else
      {
        if (v26)
        {
LABEL_31:

          goto LABEL_32;
        }

        v32 = 0;
LABEL_25:

        if (v32)
        {

LABEL_32:

          goto LABEL_33;
        }
      }
    }

    else
    {
      *(v39 + 16) = v18;
    }
  }

  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v15 >= v14)
    {
      swift_arrayDestroy();

      v34 = 1;
      goto LABEL_34;
    }

    v13 = *(v10 + 8 * v15);
    ++v9;
    if (v13)
    {
      v9 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1006538B4(uint64_t a1, char a2)
{
  v5 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for SFAirDropReceive.AskRequest();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v2 + 16);
  if (v13)
  {
    v14 = [v13 localizedName];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

    sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F5670;
    *(inited + 32) = 0x54495F4546494C49;
    v20 = inited + 32;
    *(inited + 40) = 0xEA00000000004D45;
    *(inited + 48) = v18;
    sub_1003D8D18(inited, a2 & 1);
    swift_setDeallocating();
    sub_1003470A0(v20);
    v21 = String._bridgeToObjectiveC()();
    v22 = SFLocalizedStringForKey();

    if (v22)
    {

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1007F8A70;
      *(v23 + 56) = &type metadata for Int;
      *(v23 + 64) = &protocol witness table for Int;
      *(v23 + 32) = v18;
      *(v23 + 96) = &type metadata for String;
      *(v23 + 104) = sub_100026764();
      *(v23 + 72) = v15;
      *(v23 + 80) = v17;
      static String.localizedStringWithFormat(_:_:)();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_100973BA8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000C4AC(v24, qword_100987B40);
    (*(v10 + 16))(v12, a1, v9);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = v34;
      *v27 = 136315138;
      v33 = v26;
      SFAirDropReceive.AskRequest.id.getter();
      sub_1002891F4();
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v6 + 8))(v8, v5);
      (*(v10 + 8))(v12, v9);
      v31 = sub_10000C4E4(v28, v30, &v35);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v33, "Asked for localizedDescription for iLife link which doesn't have a handling app. Transfer ID: %s", v27, 0xCu);
      sub_10000C60C(v34);
    }

    else
    {

      (*(v10 + 8))(v12, v9);
    }
  }
}

uint64_t sub_100653D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = *(a1 + 16);
  v35 = *(v2 + 16);
  v12 = v35;
  v33 = a1;
  v34 = v11;
  if (v11)
  {
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v38 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v15 = a1 + v38;
    v16 = *(v13 + 56);
    v41 = (v13 + 16);
    v42 = v14;
    v37 = (v13 - 8);
    v17 = _swiftEmptyArrayStorage;
    v39 = v8;
    v40 = v13;
    v14(v10, a1 + v38, v4);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v37)(v10, v4);
      }

      else
      {
        v18 = *v41;
        (*v41)(v8, v10, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v17[2] + 1, 1);
          v17 = v43;
        }

        v21 = v17[2];
        v20 = v17[3];
        if (v21 >= v20 >> 1)
        {
          sub_10028FAB4((v20 > 1), v21 + 1, 1);
          v17 = v43;
        }

        v17[2] = v21 + 1;
        v22 = v17 + v38 + v21 * v16;
        v8 = v39;
        v18(v22, v39, v4);
      }

      v15 += v16;
      if (!--v11)
      {
        break;
      }

      v42(v10, v15, v4);
    }
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v23 = v17[2];
  if (v23)
  {
    if (v23 != v34)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000C4AC(v24, qword_10097B528);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Asked to view mixed files and links, only viewing links", v27, 2u);
      }
    }

    v43 = 0;
    v28 = swift_allocObject();
    v29 = v35;
    *(v28 + 16) = v17;
    *(v28 + 24) = v29;
  }

  else
  {

    v43 = 0;
    v30 = swift_allocObject();
    *(v30 + 16) = v35;
    *(v30 + 24) = 1;
    *(v30 + 32) = v33;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_100654198@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandleriLifeLinks();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_1006541D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_1006533BC(a1);
}

__n128 sub_1006542B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1006542CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_100654314(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10065437C@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_allocWithZone(CUSystemMonitor) init];
  [v2 setMeDeviceUseFindMyLocate:1];
  *a1 = v2;
  v3 = type metadata accessor for SDContactStore();
  v4 = swift_allocObject();
  v5 = CNContactStoreMeContactDidChangeNotification;
  v4[2] = CNContactStoreDidChangeNotification;
  v4[3] = v5;
  v6 = objc_allocWithZone(CNContactStore);
  v7 = v2;
  v8 = CNContactStoreDidChangeNotification;
  v9 = v5;
  v4[4] = [v6 init];
  *(a1 + 32) = v3;
  *(a1 + 40) = &off_1008E85A0;
  *(a1 + 8) = v4;
  type metadata accessor for SDAirDropHashStoreCDB();
  v10 = swift_allocObject();
  sub_100654530();
  v11 = objc_allocWithZone(CUKeyValueStoreReader);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v10 + 16) = [v11 initWithKeyType:ObjCClassFromMetadata valueType:ObjCClassFromMetadata];
  *(v10 + 24) = 0;
  *(v10 + 32) = _swiftEmptyArrayStorage;
  *(v10 + 40) = _swiftEmptySetSingleton;
  *(v10 + 48) = 0;
  *(a1 + 48) = v10;
  *(a1 + 56) = &protocol witness table for SDAirDropHashStoreCDB;
  *(a1 + 64) = [objc_opt_self() defaultCenter];
  v13 = [objc_opt_self() defaultCenter];

  *(a1 + 72) = v13;
  result = 5.0;
  *(a1 + 80) = xmmword_10080E780;
  return result;
}