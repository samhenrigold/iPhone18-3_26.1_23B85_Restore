uint64_t sub_10021BC54(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for SEStorageManagementSheet.ProvisioningDeviceConfiguration() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for SEStorageManagementSheet.DisplayConfiguration() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v15 = v1[3];
  v16 = v1[2];
  v9 = v1 + ((v8 + *(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v9;
  v14 = v1[4];
  v12 = v9[8];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10012E598;

  return sub_1001E3C40(a1, v16, v15, v14, v1 + v5, v1 + v8, v13, v12);
}

uint64_t sub_10021BE74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10012E598;

  return sub_100208128(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10021BF4C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10021BF94()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10021BFCC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000C288C;

  return sub_100213828(a1, a2, v6);
}

uint64_t sub_10021C09C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10021C0E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10021C12C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id sub_10021C2F0()
{
  result = [objc_allocWithZone(type metadata accessor for JPKIXPCServer(0)) init];
  qword_10051B578 = result;
  return result;
}

id sub_10021C324()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC10seserviced13JPKIXPCServer_listener] = 0;
  v10 = OBJC_IVAR____TtC10seserviced13JPKIXPCServer_queue;
  v9[1] = sub_10009393C(0, &qword_100501E50, OS_dispatch_queue_ptr);
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_100221968(&qword_1005064A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100068FC4(&unk_100501E60, &qword_100408C30);
  sub_10006A224(&qword_1005064B0, &unk_100501E60, &qword_100408C30);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v0[v10] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  LOBYTE(v14) = 0;
  v13 = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  LOBYTE(v14) = 0;
  v13 = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  v7 = &v0[OBJC_IVAR____TtC10seserviced13JPKIXPCServer_serviceName];
  *v7 = 0xD000000000000027;
  *(v7 + 1) = 0x8000000100468120;
  v12.receiver = v0;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "init");
}

uint64_t sub_10021C6C0(uint64_t a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v3 = a2;
  dispatch thunk of XPCListener.IncomingSessionRequest.accept(incomingMessageHandler:cancellationHandler:)();
}

double sub_10021C74C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v106 = a2;
  v113 = a3;
  v101 = sub_100068FC4(&qword_100507510, &qword_10040FB40);
  __chkstk_darwin(v101);
  v102 = &v85 - v4;
  v5 = type metadata accessor for JPKIInternalTypes.InternalError();
  v111 = *(v5 - 8);
  v112 = v5;
  __chkstk_darwin(v5);
  v105 = (&v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v104 = &v85 - v8;
  v109 = type metadata accessor for XPCReceivedMessage();
  v107 = *(v109 - 8);
  v9 = *(v107 + 64);
  __chkstk_darwin(v109);
  v110 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v103 = &v85 - v11;
  v12 = type metadata accessor for JPKIXPCRequest();
  v114 = *(v12 - 8);
  v13 = *(v114 + 64);
  __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  v16 = &v85 - v15;
  __chkstk_darwin(v17);
  v19 = &v85 - v18;
  __chkstk_darwin(v20);
  v22 = &v85 - v21;
  __chkstk_darwin(v23);
  v25 = &v85 - v24;
  sub_100221968(&qword_100507518, &type metadata accessor for JPKIXPCRequest, &protocol conformance descriptor for JPKIXPCRequest);
  XPCReceivedMessage.decode<A>(as:)();
  v96 = v19;
  v94 = v16;
  v95 = v9;
  v97 = a1;
  v98 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = 0;
  v26 = v114;
  v27 = *(v114 + 32);
  v93 = v114 + 32;
  v92 = v27;
  v27(v25, v22, v12);
  v28 = v25;
  if (qword_100501B50 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_1000958E4(v29, qword_1005074A0);
  v30 = v96;
  v91 = *(v26 + 16);
  v91(v96, v25, v12);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  v33 = os_log_type_enabled(v31, v32);
  v100 = v25;
  v108 = v12;
  if (v33)
  {
    v34 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    v90 = v13;
    v35 = aBlock[0];
    *v34 = 136315138;
    sub_100221968(&qword_100507528, &type metadata accessor for JPKIXPCRequest, &protocol conformance descriptor for JPKIXPCRequest);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    v96 = *(v26 + 8);
    v96(v30, v12);
    v39 = sub_1002FFA0C(v36, v38, aBlock);
    v28 = v100;

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v31, v32, "Decoded request %s", v34, 0xCu);
    sub_1000752F4(v35);
  }

  else
  {

    v96 = *(v26 + 8);
    v96(v30, v12);
  }

  v40 = v97;
  XPCReceivedMessage.detachHandoff()();
  v97 = JPKIXPCRequest.passIdentifier.getter();
  v86 = v41;
  v90 = XPCReceivedMessage.auditToken.getter();
  v89 = v42;
  v88 = v43;
  v87 = v44;
  v45 = v107;
  v46 = *(v107 + 16);
  v47 = v103;
  v48 = v40;
  v49 = v109;
  v46(v103, v48, v109);
  v50 = v94;
  v51 = v28;
  v52 = v108;
  v53 = v91;
  v91(v94, v51, v108);
  v46(v110, v47, v49);
  v54 = v45;
  v55 = v98;
  v53(v98, v50, v52);
  v56 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v57 = (v95 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = (*(v114 + 80) + v57 + 8) & ~*(v114 + 80);
  v59 = swift_allocObject();
  (*(v54 + 32))(v59 + v56, v47, v49);
  v60 = v106;
  *(v59 + v57) = v106;
  v61 = v50;
  v62 = v86;
  v92(v59 + v58, v61, v52);
  v63 = v60;
  v64 = v99;
  v65 = v105;
  sub_10021EB60(v97, v62, v90, v89, v88, v87, v105);
  v68 = v104;
  if (v64)
  {

    v69 = v112;
    v70 = *(v111 + 32);
    v70(v68, v65, v112);
    v71 = v54;
    v72 = v102;
    v70(v102, v68, v69);
    swift_storeEnumTagMultiPayload();
    v73 = v110;
    sub_10021D334(v72, v110, v63, v55);

    sub_100075768(v72, &qword_100507510, &qword_10040FB40);
    v74 = v96;
    v96(v55, v108);
    (*(v71 + 8))(v73, v109);
  }

  else
  {
    v75 = v49;
    v76 = v66;
    v77 = v67;

    v74 = v96;
    v96(v55, v108);
    (*(v54 + 8))(v110, v75);
    v78 = objc_opt_self();
    v79 = String._bridgeToObjectiveC()();
    v80 = swift_allocObject();
    v80[2] = v63;
    v80[3] = sub_100221B0C;
    v80[4] = v59;
    v80[5] = v76;
    v80[6] = v77;
    aBlock[4] = sub_100221C38;
    aBlock[5] = v80;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000BBFA0;
    aBlock[3] = &unk_1004CC4D0;
    v81 = _Block_copy(aBlock);
    v82 = v63;

    sub_100069E2C(v76, v77);

    sub_1003AF710(v78, v79, v81);
    _Block_release(v81);

    sub_10006A178(v76, v77);
  }

  v74(v100, v108);
  v83 = v113;
  *(v113 + 32) = 0;
  result = 0.0;
  *v83 = 0u;
  v83[1] = 0u;
  return result;
}

uint64_t sub_10021D334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a4;
  v26 = a3;
  v27 = a2;
  v5 = type metadata accessor for JPKIXPCRequest.JPKIOperation();
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for JPKIXPCResponse();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for JPKIInternalTypes.InternalError();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100068FC4(&qword_100507510, &qword_10040FB40);
  __chkstk_darwin(v16);
  v18 = v23 - v17;
  sub_100221CC0(a1, v23 - v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v15, v18, v12);
    (*(v13 + 16))(v11, v15, v12);
    (*(v9 + 104))(v11, enum case for JPKIXPCResponse.error(_:), v8);
    sub_100221968(&qword_100507520, &type metadata accessor for JPKIXPCResponse, &protocol conformance descriptor for JPKIXPCResponse);
    XPCReceivedMessage.reply<A>(_:)();
    (*(v9 + 8))(v11, v8);
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    v20 = *v18;
    v21 = *(v18 + 1);
    v22 = *(v18 + 2);
    JPKIXPCRequest.operation.getter();
    sub_10021D6F8(v20, v21, v22, v7, v11);
    (*(v24 + 8))(v7, v25);
    sub_100221968(&qword_100507520, &type metadata accessor for JPKIXPCResponse, &protocol conformance descriptor for JPKIXPCResponse);
    XPCReceivedMessage.reply<A>(_:)();
    sub_10006A178(v21, v22);

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_10021D6F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v148 = a2;
  v149 = a3;
  v150 = a5;
  v151 = a1;
  v140 = type metadata accessor for JPKIInternalTypes.UserAuthentication();
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v137 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v138 = &v128 - v8;
  v9 = type metadata accessor for JPKIInternalTypes.UserAuthenticationInternal();
  v146 = *(v9 - 8);
  __chkstk_darwin(v9);
  v136 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v142 = &v128 - v12;
  v13 = type metadata accessor for JPKIInternalTypes.CertificateType();
  v147 = *(v13 - 8);
  __chkstk_darwin(v13);
  v132 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v135 = (&v128 - v16);
  __chkstk_darwin(v17);
  v141 = &v128 - v18;
  __chkstk_darwin(v19);
  v21 = (&v128 - v20);
  v145 = type metadata accessor for JPKIInternalTypes.InternalError();
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v143 = &v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v130 = &v128 - v24;
  __chkstk_darwin(v25);
  v134 = (&v128 - v26);
  __chkstk_darwin(v27);
  v133 = (&v128 - v28);
  __chkstk_darwin(v29);
  v31 = (&v128 - v30);
  __chkstk_darwin(v32);
  v34 = (&v128 - v33);
  __chkstk_darwin(v35);
  v37 = (&v128 - v36);
  v38 = type metadata accessor for JPKIXPCRequest.JPKIOperation();
  v39 = *(v38 - 8);
  v40 = __chkstk_darwin(v38);
  v42 = &v128 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v39 + 16);
  v131 = a4;
  v43(v42, a4, v38, v40);
  v44 = (*(v39 + 88))(v42, v38);
  if (v44 == enum case for JPKIXPCRequest.JPKIOperation.readCertificate(_:))
  {
    (*(v39 + 96))(v42, v38);
    v45 = *(sub_100068FC4(&qword_100507548, &qword_10040FB58) + 48);
    v46 = v147;
    (*(v147 + 32))(v21, v42, v13);
    v47 = v146;
    v48 = v142;
    (*(v146 + 32))(v142, &v42[v45], v9);
    v70 = sub_1001CC040(v151, v148, v149, v21, v48, v34);
    (*(v47 + 8))(v48, v9);
    (*(v46 + 8))(v21, v13);
    v71 = v150;
    *v150 = v70;
    v72 = &enum case for JPKIXPCResponse.readCertificate(_:);
LABEL_25:
    v108 = *v72;
    v109 = type metadata accessor for JPKIXPCResponse();
    return (*(*(v109 - 8) + 104))(v71, v108, v109);
  }

  v129 = v9;
  v142 = v13;
  if (v44 == enum case for JPKIXPCRequest.JPKIOperation.changeAuthorization(_:))
  {
    (*(v39 + 96))(v42, v38);
    v49 = sub_100068FC4(&qword_100507540, &qword_10040FB50);
    v50 = *(v49 + 48);
    v51 = *(v49 + 64);
    v52 = v147;
    v53 = v141;
    (*(v147 + 32))(v141, v42, v142);
    v54 = v139;
    v55 = *(v139 + 32);
    v56 = &v42[v50];
    v57 = v138;
    v58 = v140;
    v55(v138, v56, v140);
    v59 = &v42[v51];
    v60 = v137;
    v55(v137, v59, v58);
    sub_1001CCDF8(v151, v148, v149, v53, v57, v60, v31);
    v74 = *(v54 + 8);
    v74(v60, v58);
    v74(v57, v58);
    (*(v52 + 8))(v53, v142);
    v75 = enum case for JPKIXPCResponse.changeAuthorization(_:);
    v76 = type metadata accessor for JPKIXPCResponse();
    return (*(*(v76 - 8) + 104))(v150, v75, v76);
  }

  if (v44 != enum case for JPKIXPCRequest.JPKIOperation.sign(_:))
  {
    if (v44 == enum case for JPKIXPCRequest.JPKIOperation.getInstalledCertificateTypes(_:))
    {
      v73 = sub_1001CB188(v151, v148, v149, v37);
      v71 = v150;
      *v150 = v73;
      v72 = &enum case for JPKIXPCResponse.getInstalledCertificateTypes(_:);
      goto LABEL_25;
    }

    if (v44 == enum case for JPKIXPCRequest.JPKIOperation.getACL(_:))
    {
      v78 = sub_1001D014C(v130);
      v71 = v150;
      *v150 = v78;
      v71[1] = v127;
      v72 = &enum case for JPKIXPCResponse.getACL(_:);
      goto LABEL_25;
    }

    sub_100221968(&qword_100506530, &type metadata accessor for JPKIInternalTypes.InternalError, &protocol conformance descriptor for JPKIInternalTypes.InternalError);
    v94 = v145;
    v95 = swift_allocError();
    v97 = v96;
    v153 = 0;
    v154 = 0xE000000000000000;
    _StringGuts.grow(_:)(18);

    v153 = 0xD000000000000010;
    v154 = 0x80000001004682C0;
    sub_100221968(&qword_100507530, &type metadata accessor for JPKIXPCRequest.JPKIOperation, &protocol conformance descriptor for JPKIXPCRequest.JPKIOperation);
    v98._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v98);

    v99 = v154;
    *v97 = v153;
    v97[1] = v99;
    v100 = v144;
    (*(v144 + 104))(v97, enum case for JPKIInternalTypes.InternalError.typeMismatch(_:), v94);
    swift_willThrow();
    v101 = v100;
    (*(v39 + 8))(v42, v38);
    v102 = v143;
LABEL_22:
    v153 = v95;
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    if (swift_dynamicCast())
    {

      v103 = v150;
      (*(v101 + 32))(v150, v102, v94);
      v104 = enum case for JPKIXPCResponse.error(_:);
      v105 = type metadata accessor for JPKIXPCResponse();
      (*(*(v105 - 8) + 104))(v103, v104, v105);
    }

    v153 = 0;
    v154 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    v153 = 0xD000000000000013;
    v154 = 0x80000001004682E0;
    swift_getErrorValue();
    swift_getDynamicType();
    v106._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v106);

    v107 = v154;
    v71 = v150;
    *v150 = v153;
    v71[1] = v107;
    (*(v101 + 104))(v71, enum case for JPKIInternalTypes.InternalError.typeMismatch(_:), v94);
    v72 = &enum case for JPKIXPCResponse.error(_:);
    goto LABEL_25;
  }

  (*(v39 + 96))(v42, v38);
  v61 = *v42;
  v62 = sub_100068FC4(&qword_100507538, &qword_10040FB48);
  v63 = *(v62 + 64);
  v64 = v147;
  v65 = v135;
  v66 = v142;
  (*(v147 + 32))(v135, &v42[*(v62 + 48)], v142);
  v67 = v136;
  v68 = v129;
  (*(v146 + 32))(v136, &v42[v63], v129);
  v149 = sub_1001CC040(v151, v148, v149, v65, v67, v134);
  v79 = v132;
  (*(v64 + 16))(v132, v65, v66);
  v80 = (*(v64 + 88))(v79, v66);
  v81 = v80;
  v82 = enum case for JPKIInternalTypes.CertificateType.user(_:);
  if (v80 == enum case for JPKIInternalTypes.CertificateType.user(_:) || v80 == enum case for JPKIInternalTypes.CertificateType.signing(_:))
  {
    v83 = *(v61 + 2);
    if (!v83)
    {

      v93 = _swiftEmptyArrayStorage;
LABEL_27:
      (*(v146 + 8))(v67, v68);
      (*(v64 + 8))(v65, v66);
      v71 = v150;
      *v150 = v93;
      v72 = &enum case for JPKIXPCResponse.sign(_:);
      goto LABEL_25;
    }

    v153 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v81 == v82)
    {
      v84 = -105;
    }

    else
    {
      v84 = -102;
    }

    LODWORD(v148) = v84;
    v141 = v61;
    v85 = (v61 + 40);
    while (1)
    {
      v86 = *(v85 - 1);
      v87 = *v85;
      sub_100069E2C(v86, *v85);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v152 = 0;
      v89 = sub_1003AEF50();

      v90 = v152;
      if (!v89)
      {
        break;
      }

      v85 += 2;
      type metadata accessor for JPKIInternalTypes.DigitalSignature();
      v91 = v90;

      v92 = sub_1003B0934(v89);
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      JPKIInternalTypes.DigitalSignature.__allocating_init(certificate:signature:)();
      sub_10006A178(v86, v87);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (!--v83)
      {

        v93 = v153;
        v66 = v142;
        v64 = v147;
        v68 = v129;
        v67 = v136;
        v65 = v135;
        goto LABEL_27;
      }
    }

    v110 = v152;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10006A178(v86, v87);

    if (qword_100501A60 != -1)
    {
      swift_once();
    }

    v111 = type metadata accessor for Logger();
    sub_1000958E4(v111, qword_1005064B8);
    swift_errorRetain();
    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.error.getter();

    v114 = os_log_type_enabled(v112, v113);
    v115 = v142;
    v116 = v147;
    v117 = v129;
    if (v114)
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v153 = v119;
      *v118 = 136315138;
      swift_getErrorValue();
      v120 = Error.localizedDescription.getter();
      v122 = sub_1002FFA0C(v120, v121, &v153);

      *(v118 + 4) = v122;
      _os_log_impl(&_mh_execute_header, v112, v113, "Unable to perform compute digital signature operation with error %s", v118, 0xCu);
      sub_1000752F4(v119);
    }

    v123 = v135;
    v124 = v133;
    swift_getErrorValue();
    *v124 = Error.localizedDescription.getter();
    v124[1] = v125;
    v101 = v144;
    v94 = v145;
    (*(v144 + 104))(v124, enum case for JPKIInternalTypes.InternalError.signingFailed(_:), v145);
    sub_100221968(&qword_100506530, &type metadata accessor for JPKIInternalTypes.InternalError, &protocol conformance descriptor for JPKIInternalTypes.InternalError);
    swift_willThrowTypedImpl();

    v102 = v143;
    v126 = v136;
    sub_100221968(&qword_100506530, &type metadata accessor for JPKIInternalTypes.InternalError, &protocol conformance descriptor for JPKIInternalTypes.InternalError);
    v95 = swift_allocError();
    (*(v101 + 32))(v69, v124, v94);
    (*(v146 + 8))(v126, v117);
    (*(v116 + 8))(v123, v115);
    goto LABEL_22;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10021EB60(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t *a7)
{
  v160 = a7;
  v161 = a1;
  v157 = a2;
  v11 = HIDWORD(a3);
  v12 = HIDWORD(a4);
  v163 = HIDWORD(a5);
  v164 = HIDWORD(a6);
  v13 = type metadata accessor for JPKIInternalTypes.InternalError();
  v158 = *(v13 - 8);
  v159 = v13;
  __chkstk_darwin(v13);
  v154 = &v144[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v144[-v17];
  v152 = a3;
  token.val[0] = a3;
  token.val[1] = v11;
  v153 = a4;
  token.val[2] = a4;
  token.val[3] = v12;
  v155 = a5;
  token.val[4] = a5;
  token.val[5] = v163;
  v163 = a6;
  token.val[6] = a6;
  token.val[7] = v164;
  v19 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
  if (v19)
  {
    v20 = v19;
    v21 = *(v16 + 16);
    v21(v18, v162 + OBJC_IVAR____TtC10seserviced13JPKIXPCServer__debugSkipPassLookup, v15);
    UserDefaultBacked.wrappedValue.getter();
    v151 = *(v16 + 8);
    v151(v18, v15);
    if (LOBYTE(token.val[0]) == 1)
    {
      if (qword_100501B50 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_1000958E4(v22, qword_1005074A0);
      v23 = v157;

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      v26 = os_log_type_enabled(v24, v25);
      v27 = v161;
      if (v26)
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *token.val = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_1002FFA0C(v27, v23, &token);
        _os_log_impl(&_mh_execute_header, v24, v25, "INTERNAL -- using passIdentifier as AID %s", v28, 0xCu);
        sub_1000752F4(v29);
      }

      sub_10013044C(v27, v23);
      if (v30 >> 60 != 15)
      {

        return;
      }

      __break(1u);
      goto LABEL_87;
    }

    v37 = v15;
    v38 = v18;
    v39 = sub_1002206A0(v20, 0xD000000000000016, 0x80000001004645D0);
    v164 = v40;
    if (v40)
    {
      v147 = v39;
      v150 = v20;
      v41 = [objc_allocWithZone(PKPassLibrary) init];
      v42 = String._bridgeToObjectiveC()();
      v149 = v41;
      v43 = [v41 passWithUniqueID:v42];

      if (!v43)
      {

        v59 = v150;
        if (qword_100501B50 != -1)
        {
          swift_once();
        }

        v60 = type metadata accessor for Logger();
        sub_1000958E4(v60, qword_1005074A0);
        v61 = v157;

        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.error.getter();

        v64 = os_log_type_enabled(v62, v63);
        v65 = v149;
        if (v64)
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          *token.val = v67;
          *v66 = 136315138;
          v68 = v161;
          *(v66 + 4) = sub_1002FFA0C(v161, v61, &token);
          _os_log_impl(&_mh_execute_header, v62, v63, "Failed pass lookup for pass(withUniqueID:) %s", v66, 0xCu);
          sub_1000752F4(v67);
        }

        else
        {

          v68 = v161;
        }

        v88 = v159;
        v87 = v160;
        *v160 = v68;
        v87[1] = v61;
        (*(v158 + 104))(v87, enum case for JPKIInternalTypes.InternalError.passLookupFailed(_:), v88);
        sub_100221968(&qword_100506530, &type metadata accessor for JPKIInternalTypes.InternalError, &protocol conformance descriptor for JPKIInternalTypes.InternalError);

        swift_willThrowTypedImpl();

        goto LABEL_66;
      }

      v148 = v43;
      v44 = sub_100220B04(v150, 0xD00000000000002FLL, 0x80000001004681E0);
      if (qword_100501B50 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      v46 = sub_1000958E4(v45, qword_1005074A0);

      v146 = v46;
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = v47;
        v145 = v48;
        v51 = v49;
        v52 = swift_slowAlloc();
        *token.val = v52;
        *v51 = 136315394;
        *(v51 + 4) = sub_1002FFA0C(v147, v164, &token);
        *(v51 + 12) = 1024;
        *(v51 + 14) = v44 & 1;
        _os_log_impl(&_mh_execute_header, v50, v145, "Connection from %s privateEntitlement %{BOOL}d", v51, 0x12u);
        sub_1000752F4(v52);
      }

      else
      {
      }

      if (v44)
      {
        v59 = v150;
        goto LABEL_31;
      }

      v21(v38, v162 + OBJC_IVAR____TtC10seserviced13JPKIXPCServer__debugSkipAssociatedApplicationCheck, v37);
      UserDefaultBacked.wrappedValue.getter();
      v151(v38, v37);
      v79 = v149;
      if ((token.val[0] & 1) == 0)
      {
        v80 = String._bridgeToObjectiveC()();
        v81 = [v79 passUniqueIDsForAssociatedApplicationIdentifier:v80];

        if (v81)
        {
          v82 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v83 = v157;
          if (sub_1000C6B9C(v161, v157, v82))
          {

            goto LABEL_39;
          }

          v118 = Logger.logObject.getter();
          v119 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v118, v119))
          {
            v120 = swift_slowAlloc();
            *token.val = swift_slowAlloc();
            *v120 = 136315650;
            LODWORD(v163) = v119;
            v121 = v147;
            *(v120 + 4) = sub_1002FFA0C(v147, v164, &token);
            *(v120 + 12) = 2080;
            v122 = v161;
            *(v120 + 14) = sub_1002FFA0C(v161, v83, &token);
            *(v120 + 22) = 2080;
            v123 = Set.description.getter();
            v125 = sub_1002FFA0C(v123, v124, &token);
            v79 = v149;

            *(v120 + 24) = v125;
            _os_log_impl(&_mh_execute_header, v118, v163, "Application %s not permitted for pass %s -- allowed %s", v120, 0x20u);
            swift_arrayDestroy();

            v126 = v164;
          }

          else
          {

            v126 = v164;
            v122 = v161;
            v121 = v147;
          }

          v140 = v160;
          *v160 = v121;
          v140[1] = v126;
          v140[2] = v122;
          v140[3] = v83;
          v140[4] = v82;
          (*(v158 + 104))(v140, enum case for JPKIInternalTypes.InternalError.passAccessForbidden(_:), v159);
          sub_100221968(&qword_100506530, &type metadata accessor for JPKIInternalTypes.InternalError, &protocol conformance descriptor for JPKIInternalTypes.InternalError);
        }

        else
        {

          v115 = v160;
          v117 = v157;
          v116 = v158;
          *v160 = v161;
          v115[1] = v117;
          (*(v116 + 104))(v115, enum case for JPKIInternalTypes.InternalError.passLookupFailed(_:), v159);
          sub_100221968(&qword_100506530, &type metadata accessor for JPKIInternalTypes.InternalError, &protocol conformance descriptor for JPKIInternalTypes.InternalError);
        }

        swift_willThrowTypedImpl();

        return;
      }

LABEL_39:
      v84 = v156;
      v85 = v154;
      v86 = sub_100220F68(v152, v153, v155, v163, v154);
      v59 = v150;
      if (v84)
      {

        (*(v158 + 32))(v160, v85, v159);
        return;
      }

      v156 = 0;
      if ((v86 & 1) == 0)
      {

        v109 = Logger.logObject.getter();
        v110 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          *token.val = v112;
          *v111 = 136315138;
          v113 = v147;
          *(v111 + 4) = sub_1002FFA0C(v147, v164, &token);
          _os_log_impl(&_mh_execute_header, v109, v110, "Process %s is not in the foreground", v111, 0xCu);
          sub_1000752F4(v112);

          v114 = v149;
        }

        else
        {

          v114 = v149;
          v113 = v147;
        }

        v142 = v159;
        v141 = v160;
        v143 = v164;
        *v160 = v113;
        v141[1] = v143;
        (*(v158 + 104))(v141, enum case for JPKIInternalTypes.InternalError.processNotForeground(_:), v142);
        sub_100221968(&qword_100506530, &type metadata accessor for JPKIInternalTypes.InternalError, &protocol conformance descriptor for JPKIInternalTypes.InternalError);
        swift_willThrowTypedImpl();

LABEL_65:
LABEL_66:

        return;
      }

LABEL_31:
      v69 = [v148 secureElementPass];
      if (v69)
      {
        v70 = v69;
        v71 = [v69 paymentApplications];

        if (!v71)
        {
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          return;
        }

        v72 = sub_10009393C(0, &qword_100505CA8, PKPaymentApplication_ptr);
        sub_1001BC678();
        v73 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v163 = v72;
        if ((v73 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          __CocoaSet.makeIterator()();
          Set.Iterator.init(_cocoa:)();
          v75 = v166;
          v74 = v167;
          v76 = v168;
          v77 = v169;
          v78 = v170;
        }

        else
        {
          v89 = -1 << *(v73 + 32);
          v74 = v73 + 56;
          v76 = ~v89;
          v90 = -v89;
          if (v90 < 64)
          {
            v91 = ~(-1 << v90);
          }

          else
          {
            v91 = -1;
          }

          v78 = v91 & *(v73 + 56);

          v77 = 0;
          v75 = v73;
        }

        v162 = v76;
        if ((v75 & 0x8000000000000000) == 0)
        {
          goto LABEL_52;
        }

LABEL_49:
        v92 = __CocoaSet.Iterator.next()();
        if (v92)
        {
          v171 = v92;
          swift_dynamicCast();
          v93 = *token.val;
          v94 = v77;
          v95 = v78;
          if (*token.val)
          {
            while ([v93 paymentNetworkIdentifier] != 138)
            {

              v77 = v94;
              v78 = v95;
              if (v75 < 0)
              {
                goto LABEL_49;
              }

LABEL_52:
              v96 = v77;
              v97 = v78;
              v94 = v77;
              if (!v78)
              {
                while (1)
                {
                  v94 = v96 + 1;
                  if (__OFADD__(v96, 1))
                  {
                    break;
                  }

                  if (v94 >= ((v76 + 64) >> 6))
                  {
                    goto LABEL_60;
                  }

                  v97 = *(v74 + 8 * v94);
                  ++v96;
                  if (v97)
                  {
                    goto LABEL_56;
                  }
                }

                __break(1u);
                goto LABEL_85;
              }

LABEL_56:
              v95 = (v97 - 1) & v97;
              v93 = *(*(v75 + 48) + ((v94 << 9) | (8 * __clz(__rbit64(v97)))));
              if (!v93)
              {
                goto LABEL_60;
              }
            }

            sub_100093854(v75);

            v127 = [v93 applicationIdentifier];

            if (!v127)
            {
              goto LABEL_61;
            }

            v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v130 = v129;

            v131 = v157;

            v132 = Logger.logObject.getter();
            v133 = static os_log_type_t.info.getter();

            v134 = os_log_type_enabled(v132, v133);
            v135 = v150;
            if (v134)
            {
              v136 = swift_slowAlloc();
              *token.val = swift_slowAlloc();
              *v136 = 136315394;
              *(v136 + 4) = sub_1002FFA0C(v161, v131, &token);
              *(v136 + 12) = 2080;
              *(v136 + 14) = sub_1002FFA0C(v128, v130, &token);
              _os_log_impl(&_mh_execute_header, v132, v133, "Resolved passID %s -> %s", v136, 0x16u);
              swift_arrayDestroy();
            }

            v137 = v149;
            v138 = v148;

            sub_10013044C(v128, v130);
            if (v139 >> 60 != 15)
            {

              return;
            }

            goto LABEL_88;
          }
        }

LABEL_60:
        sub_100093854(v75);

LABEL_61:

        v59 = v150;
      }

      else
      {
      }

      v98 = v149;
      v99 = v157;
      v100 = v161;
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        *v103 = 0;
        _os_log_impl(&_mh_execute_header, v101, v102, "Couldn't find .typeJPKI payment application", v103, 2u);
      }

      *token.val = 0;
      *&token.val[2] = 0xE000000000000000;
      _StringGuts.grow(_:)(81);
      v104._countAndFlagsBits = 0xD00000000000004FLL;
      v104._object = 0x8000000100468210;
      String.append(_:)(v104);
      v105._countAndFlagsBits = v100;
      v105._object = v99;
      String.append(_:)(v105);
      v106 = *&token.val[2];
      v108 = v159;
      v107 = v160;
      *v160 = *token.val;
      v107[1] = v106;
      (*(v158 + 104))(v107, enum case for JPKIInternalTypes.InternalError.passInvalid(_:), v108);
      sub_100221968(&qword_100506530, &type metadata accessor for JPKIInternalTypes.InternalError, &protocol conformance descriptor for JPKIInternalTypes.InternalError);
      swift_willThrowTypedImpl();

      goto LABEL_65;
    }

    if (qword_100501B50 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_1000958E4(v53, qword_1005074A0);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Couldn't lookup kSecEntitlementApplicationIdentifier", v56, 2u);
    }

    v58 = v159;
    v57 = v160;
    *v160 = 0xD000000000000034;
    v57[1] = 0x80000001004681A0;
    (*(v158 + 104))(v57, enum case for JPKIInternalTypes.InternalError.internalError(_:), v58);
    sub_100221968(&qword_100506530, &type metadata accessor for JPKIInternalTypes.InternalError, &protocol conformance descriptor for JPKIInternalTypes.InternalError);
    swift_willThrowTypedImpl();
  }

  else
  {
    if (qword_100501B50 != -1)
    {
LABEL_85:
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000958E4(v31, qword_1005074A0);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed to SecTaskCreateWithAuditToken", v34, 2u);
    }

    v36 = v159;
    v35 = v160;
    *v160 = 0xD000000000000025;
    v35[1] = 0x8000000100468170;
    (*(v158 + 104))(v35, enum case for JPKIInternalTypes.InternalError.internalError(_:), v36);
    sub_100221968(&qword_100506530, &type metadata accessor for JPKIInternalTypes.InternalError, &protocol conformance descriptor for JPKIInternalTypes.InternalError);
    swift_willThrowTypedImpl();
  }
}

uint64_t sub_10021FFF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v25 = *(v17 - 8);
  v26 = v17;
  __chkstk_darwin(v17);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *(a3 + OBJC_IVAR____TtC10seserviced13JPKIXPCServer_queue);
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a4;
  v20[5] = a5;
  v20[6] = a6;
  v20[7] = a7;
  aBlock[4] = sub_100221CB0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004CC520;
  v21 = _Block_copy(aBlock);
  sub_100069E2C(a6, a7);
  v22 = a1;
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_100221968(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v27 + 8))(v16, v14);
  (*(v25 + 8))(v19, v26);
}

uint64_t sub_1002202F0(void *a1, uint64_t a2, void (*a3)(unint64_t *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = sub_100068FC4(&qword_100507510, &qword_10040FB40);
  __chkstk_darwin(v11);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = (&v34 - v15);
  if (a1)
  {
    *v16 = a1;
    v16[1] = a5;
    v16[2] = a6;
    swift_storeEnumTagMultiPayload();
    v17 = a1;
    sub_100069E2C(a5, a6);
    a3(v16);

    v13 = v16;
  }

  else
  {
    if (qword_100501B50 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000958E4(v18, qword_1005074A0);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v35 = a3;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v38 = v22;
      *v21 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        v23 = Error.localizedDescription.getter();
        v25 = v24;
      }

      else
      {
        v25 = 0xEB000000003E726FLL;
        v23 = 0x727265206C696E3CLL;
      }

      v26 = sub_1002FFA0C(v23, v25, &v38);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to get secureElement %s", v21, 0xCu);
      sub_1000752F4(v22);

      a3 = v35;
    }

    else
    {
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    v38 = 0xD000000000000013;
    v39 = 0x8000000100468150;
    if (a2)
    {
      swift_getErrorValue();
      v27 = Error.localizedDescription.getter();
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    v36 = v27;
    v37 = v28;
    sub_100068FC4(&qword_1005048A0, &qword_100409C80);
    v29._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v29);

    v30 = v39;
    *v13 = v38;
    v13[1] = v30;
    v31 = enum case for JPKIInternalTypes.InternalError.internalError(_:);
    v32 = type metadata accessor for JPKIInternalTypes.InternalError();
    (*(*(v32 - 8) + 104))(v13, v31, v32);
    swift_storeEnumTagMultiPayload();
    a3(v13);
  }

  return sub_100075768(v13, &qword_100507510, &qword_10040FB40);
}

uint64_t sub_1002206A0(__SecTask *a1, uint64_t a2, unint64_t a3)
{
  error = 0;
  v6 = String._bridgeToObjectiveC()();
  v7 = SecTaskCopyValueForEntitlement(a1, v6, &error);

  if (v7)
  {
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      return v26;
    }

    if (qword_100501B50 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000958E4(v18, qword_1005074A0);
    swift_unknownObjectRetain();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v21 = 136315650;
      *(v21 + 4) = sub_1002FFA0C(a2, a3, &v26);
      *(v21 + 12) = 2080;
      swift_getObjectType();
      v22 = _typeName(_:qualified:)();
      v24 = sub_1002FFA0C(v22, v23, &v26);

      *(v21 + 14) = v24;
      *(v21 + 22) = 2080;
      *(v21 + 24) = sub_1002FFA0C(0x676E69727453, 0xE600000000000000, &v26);
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to cast result of entitlement %s from %s to %s", v21, 0x20u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v9 = error;
    if (qword_100501B50 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000958E4(v10, qword_1005074A0);
    v11 = v9;

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_1002FFA0C(a2, a3, &v26);
      *(v14 + 12) = 2080;
      if (v9)
      {
        type metadata accessor for CFError(0);
        sub_100221968(&qword_100504A60, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
        v15 = Error.localizedDescription.getter();
        v17 = v16;
      }

      else
      {
        v17 = 0xE500000000000000;
        v15 = 0x3E6C696E3CLL;
      }

      v25 = sub_1002FFA0C(v15, v17, &v26);

      *(v14 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to SecTaskCopyValueForEntitlement %s : %s", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_100220B04(__SecTask *a1, uint64_t a2, unint64_t a3)
{
  error = 0;
  v6 = String._bridgeToObjectiveC()();
  v7 = SecTaskCopyValueForEntitlement(a1, v6, &error);

  if (v7)
  {
    v28 = v7;
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      return v27;
    }

    if (qword_100501B50 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000958E4(v18, qword_1005074A0);
    swift_unknownObjectRetain();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v21 = 136315650;
      *(v21 + 4) = sub_1002FFA0C(a2, a3, &v28);
      *(v21 + 12) = 2080;
      swift_getObjectType();
      v22 = _typeName(_:qualified:)();
      v24 = sub_1002FFA0C(v22, v23, &v28);

      *(v21 + 14) = v24;
      *(v21 + 22) = 2080;
      *(v21 + 24) = sub_1002FFA0C(1819242306, 0xE400000000000000, &v28);
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to cast result of entitlement %s from %s to %s", v21, 0x20u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 2;
  }

  v9 = error;
  if (qword_100501B50 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000958E4(v10, qword_1005074A0);
  v11 = v9;

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v12, v13))
  {

    return 2;
  }

  v14 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  *v14 = 136315394;
  *(v14 + 4) = sub_1002FFA0C(a2, a3, &v28);
  *(v14 + 12) = 2080;
  if (v9)
  {
    type metadata accessor for CFError(0);
    sub_100221968(&qword_100504A60, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
    v15 = Error.localizedDescription.getter();
    v17 = v16;
  }

  else
  {
    v17 = 0xE500000000000000;
    v15 = 0x3E6C696E3CLL;
  }

  v25 = sub_1002FFA0C(v15, v17, &v28);

  *(v14 + 14) = v25;
  _os_log_impl(&_mh_execute_header, v12, v13, "Failed to SecTaskCopyValueForEntitlement %s : %s", v14, 0x16u);
  v8 = 2;
  swift_arrayDestroy();

  return v8;
}

uint64_t sub_100220F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *v40.val = a1;
  *&v40.val[2] = a2;
  *&v40.val[4] = a3;
  *&v40.val[6] = a4;
  v7 = audit_token_to_pid(&v40);
  v8 = [objc_opt_self() identifierWithPid:v7];
  if (v8)
  {
    v9 = v8;
    sub_10009393C(0, &qword_100506F80, RBSProcessHandle_ptr);
    v10 = v9;
    v11 = sub_1000B5544(v10);
    if (v5)
    {

      if (qword_100501B50 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_1000958E4(v12, qword_1005074A0);
      v13 = v10;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        *(v16 + 4) = v13;
        *v17 = v9;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v14, v15, "Unable to create RBSProcessHandle for identifier %@", v16, 0xCu);
        sub_100075768(v17, &unk_100503F70, &unk_10040B2E0);
      }

      *a5 = 0xD000000000000021;
      a5[1] = 0x8000000100468290;
      v19 = enum case for JPKIInternalTypes.InternalError.internalError(_:);
      v20 = type metadata accessor for JPKIInternalTypes.InternalError();
      (*(*(v20 - 8) + 104))(a5, v19, v20);
      sub_100221968(&qword_100506530, &type metadata accessor for JPKIInternalTypes.InternalError, &protocol conformance descriptor for JPKIInternalTypes.InternalError);
      swift_willThrowTypedImpl();
    }

    else
    {
      v27 = v11;

      if (qword_100501B50 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_1000958E4(v28, qword_1005074A0);
      v29 = v27;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        v34 = [v29 currentState];
        *(v32 + 4) = v34;
        *v33 = v34;
        _os_log_impl(&_mh_execute_header, v30, v31, "Got RBSProcessState %@", v32, 0xCu);
        sub_100075768(v33, &unk_100503F70, &unk_10040B2E0);
      }

      v35 = [v29 currentState];
      if (v35)
      {
        v36 = v35;
        v19 = [v35 endowmentNamespaces];

        if (v19)
        {
          v37 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          LOBYTE(v19) = sub_1000C6B9C(v38, v39, v37);
        }

        else
        {
        }
      }

      else
      {

        LOBYTE(v19) = 0;
      }
    }
  }

  else
  {
    if (qword_100501B50 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000958E4(v21, qword_1005074A0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to create RBSProcessIdentifier", v24, 2u);
    }

    *a5 = 0xD000000000000025;
    a5[1] = 0x8000000100468260;
    v25 = enum case for JPKIInternalTypes.InternalError.internalError(_:);
    v19 = type metadata accessor for JPKIInternalTypes.InternalError();
    (*(*(v19 - 8) + 104))(a5, v25, v19);
    sub_100221968(&qword_100506530, &type metadata accessor for JPKIInternalTypes.InternalError, &protocol conformance descriptor for JPKIInternalTypes.InternalError);
    swift_willThrowTypedImpl();
  }

  return v19 & 1;
}

uint64_t type metadata accessor for JPKIXPCServer(uint64_t a1)
{
  result = qword_100507500;
  if (!qword_100507500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100221684(uint64_t a1)
{
  sub_1002186C8();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100221738(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_1005074A0);
  sub_1000958E4(v2, qword_1005074A0);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100221920()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100221968(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002219B0()
{
  v1 = type metadata accessor for XPCReceivedMessage();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for JPKIXPCRequest();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100221B0C(uint64_t a1)
{
  v3 = *(type metadata accessor for XPCReceivedMessage() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for JPKIXPCRequest() - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_10021D334(a1, v1 + v4, v7, v8);
}

uint64_t sub_100221BF0()
{

  sub_10006A178(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100221C48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100221C60()
{

  sub_10006A178(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100221CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100507510, &qword_10040FB40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100221D3C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = *(v1 + 16);
    v9 = Logger.logObject.getter();
    if (v8)
    {
      v10 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "LyonBLE is already running", v11, 2u);
      }
    }

    else
    {
      v12 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v9, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v9, v12, "Starting LyonBLE", v13, 2u);
      }

      *(v1 + 16) = 1;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100221F6C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  i = *(v2 - 1);
  __chkstk_darwin(v2);
  v5 = (v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v6 = qword_10051B7F0;
    *v5 = qword_10051B7F0;
    (*(i + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
    v7 = v6;
    LOBYTE(v6) = _dispatchPreconditionTest(_:)();
    (*(i + 8))(v5, v2);
    if ((v6 & 1) == 0)
    {
      __break(1u);
LABEL_39:
      swift_once();
      goto LABEL_7;
    }

    v8 = *(v1 + 16);
    v9 = Logger.logObject.getter();
    if (v8 != 1)
    {
      break;
    }

    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Stopping LyonBLE", v11, 2u);
    }

    if (qword_100501D78 != -1)
    {
      goto LABEL_39;
    }

LABEL_7:
    v2 = off_10050B110;
    v33 = v1;
    v34 = off_10050B110;
    v12 = sub_1000CAAC4();
    v32[1] = v12;
    if ((v12 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      v2 = __CocoaSet.makeIterator()();
      type metadata accessor for Peer(0);
      sub_10022D9C4(&qword_100503F20, type metadata accessor for Peer, &unk_1004109B0);
      Set.Iterator.init(_cocoa:)();
      v14 = v36[2];
      v13 = v36[3];
      v15 = v36[4];
      v16 = v36[5];
      v17 = v36[6];
    }

    else
    {
      v20 = -1 << *(v12 + 32);
      v13 = v12 + 56;
      v15 = ~v20;
      v21 = -v20;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v17 = v22 & *(v12 + 56);
      v16 = 0;
    }

    v5 = 0;
    v32[0] = v15;
    for (i = (v15 + 64) >> 6; v14 < 0; v17 = v1)
    {
      v27 = __CocoaSet.Iterator.next()();
      if (!v27)
      {
        goto LABEL_31;
      }

      v35 = v27;
      type metadata accessor for Peer(0);
      swift_dynamicCast();
      v26 = v36[0];
      v25 = v16;
      v1 = v17;
      if (!v36[0])
      {
        goto LABEL_31;
      }

LABEL_25:
      if (*v26 == _TtC10seserviced8LyonPeer)
      {
        *(v26 + OBJC_IVAR____TtC10seserviced8LyonPeer_hasError) = 256;
      }

      if (qword_100501960 != -1)
      {
        swift_once();
      }

      sub_1000E67E4(v26);
      v36[0] = v26;
      v28 = v34[3];
      __chkstk_darwin(v29);
      v2 = &v32[-4];
      v32[-2] = v36;
      v32[-1] = v30;
      os_unfair_lock_lock((v28 + 32));
      sub_10022DA2C((v28 + 16));
      os_unfair_lock_unlock((v28 + 32));

      v16 = v25;
    }

    v23 = v16;
    v24 = v17;
    v25 = v16;
    if (v17)
    {
LABEL_21:
      v1 = (v24 - 1) & v24;
      v26 = *(*(v14 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));

      if (v26)
      {
        goto LABEL_25;
      }

LABEL_31:
      sub_100093854(v14);

      v31 = v33;
      if (*(v33 + 17) == 1)
      {
        if (qword_100501960 != -1)
        {
          swift_once();
        }

        sub_1000E8C60(843466310, 0xE400000000000000);
        *(v31 + 17) = 0;
      }

      *(v31 + 16) = 0;
      return;
    }

    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= i)
      {
        goto LABEL_31;
      }

      v24 = *(v13 + 8 * v25);
      ++v23;
      if (v24)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v9, v18, "LyonBLE is not running", v19, 2u);
  }
}

void sub_100222504(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v43 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v9 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a2;
  v45 = a3;
  v11 = sub_1002230A4(a3);
  LOBYTE(a3) = sub_1000D5D24(aBlock, v11);

  if (a3)
  {
    v33[2] = v3;
    v12 = *a1;
    if ((v12 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      sub_100068FC4(&qword_1005076B8, &unk_10040FBE0);
      sub_100075C60(&qword_1005076C0, &qword_1005076B8, &unk_10040FBE0, &unk_10040A890);
      Set.Iterator.init(_cocoa:)();
      v12 = v50[4];
      v13 = v50[5];
      v14 = v50[6];
      v15 = v50[7];
      v16 = v50[8];
    }

    else
    {
      v17 = -1 << *(v12 + 32);
      v13 = v12 + 56;
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

      v16 = v19 & *(v12 + 56);

      v15 = 0;
    }

    v33[1] = v14;
    v34 = (v14 + 64) >> 6;
    v37 = v50;
    v36 = (v7 + 8);
    v35 = (v9 + 8);
    v39 = v12;
    v38 = v13;
    if (v12 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v20 = v15;
      v21 = v16;
      v22 = v15;
      if (!v16)
      {
        break;
      }

LABEL_13:
      v23 = (v21 - 1) & v21;
      v24 = *(*(v12 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));

      if (!v24)
      {
LABEL_19:
        sub_100093854(v12);
        return;
      }

      while (1)
      {
        v47 = v23;
        v26 = swift_allocObject();
        v28 = v44;
        v27 = v45;
        v26[2] = v24;
        v26[3] = v28;
        v26[4] = v27;
        v46 = *(v24 + 32);
        v50[2] = sub_10022D9B4;
        v50[3] = v26;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v50[0] = sub_100080830;
        v50[1] = &unk_1004CC5C0;
        v29 = _Block_copy(aBlock);

        v30 = v40;
        static DispatchQoS.unspecified.getter();
        v48 = _swiftEmptyArrayStorage;
        sub_10022D9C4(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
        sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
        v31 = v42;
        v32 = v43;
        v13 = v38;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v29);
        v12 = v39;

        (*v36)(v31, v32);
        (*v35)(v30, v41);

        v15 = v22;
        v16 = v47;
        if ((v12 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        v25 = __CocoaSet.Iterator.next()();
        if (v25)
        {
          v48 = v25;
          sub_100068FC4(&qword_1005076B8, &unk_10040FBE0);
          swift_dynamicCast();
          v24 = aBlock[0];
          v22 = v15;
          v23 = v16;
          if (aBlock[0])
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v34)
      {
        goto LABEL_19;
      }

      v21 = *(v13 + 8 * v22);
      ++v20;
      if (v21)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_100222AA0(uint64_t *a1, uint64_t a2, void *a3)
{
  v48 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchQoS();
  v9 = *(v46 - 8);
  v10 = __chkstk_darwin(v46);
  v45 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a2;
  if (*(a2 + 16))
  {
    v12 = a3;
  }

  else
  {
    [a3 copyWithZone:{0, v10}];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10014E510();
    swift_dynamicCast();
    v12 = v57;
  }

  v13 = sub_1000D5130(aBlock, v12);

  if (v13)
  {
    v52 = v9;
    v44 = a3;
    v39[2] = v3;
    v14 = *a1;
    if ((v14 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      sub_100068FC4(&unk_100503FA0, &unk_10040B2F0);
      sub_100075C60(&qword_100504AA8, &unk_100503FA0, &unk_10040B2F0, &unk_10040A890);
      Set.Iterator.init(_cocoa:)();
      v14 = v57;
      v53 = v58;
      v15 = v59;
      v16 = v60;
      v17 = v61;
    }

    else
    {
      v18 = -1 << *(v14 + 32);
      v19 = *(v14 + 56);
      v53 = v14 + 56;
      v15 = ~v18;
      v20 = -v18;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      else
      {
        v21 = -1;
      }

      v17 = v21 & v19;

      v16 = 0;
    }

    v39[1] = v15;
    v22 = (v15 + 64) >> 6;
    v42 = v56;
    v41 = (v7 + 8);
    v40 = (v52 + 8);
    v43 = v14;
    if (v14 < 0)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v23 = v16;
      v24 = v17;
      v25 = v16;
      if (!v17)
      {
        break;
      }

LABEL_16:
      v26 = (v24 - 1) & v24;
      v27 = *(*(v14 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));

      if (!v27)
      {
LABEL_22:
        sub_100093854(v14);
        return;
      }

      while (1)
      {
        v52 = v26;
        v29 = swift_allocObject();
        v30 = v49;
        v29[2] = v27;
        v29[3] = v30;
        v31 = v44;
        v29[4] = v44;
        v51 = v27[4];
        v56[2] = sub_10014E498;
        v56[3] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v56[0] = sub_100080830;
        v56[1] = &unk_1004CC688;
        v50 = _Block_copy(aBlock);
        v32 = v31;

        v33 = v45;
        static DispatchQoS.unspecified.getter();
        v54 = _swiftEmptyArrayStorage;
        sub_10022D9C4(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
        sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
        v34 = v22;
        v35 = v47;
        v36 = v48;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v37 = v50;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v37);
        v14 = v43;

        v38 = v35;
        v22 = v34;
        (*v41)(v38, v36);
        (*v40)(v33, v46);

        v16 = v25;
        v17 = v52;
        if ((v14 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_18:
        v28 = __CocoaSet.Iterator.next()();
        if (v28)
        {
          v54 = v28;
          sub_100068FC4(&unk_100503FA0, &unk_10040B2F0);
          swift_dynamicCast();
          v27 = aBlock[0];
          v25 = v16;
          v26 = v17;
          if (aBlock[0])
          {
            continue;
          }
        }

        goto LABEL_22;
      }
    }

    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= v22)
      {
        goto LABEL_22;
      }

      v24 = *(v53 + 8 * v25);
      ++v23;
      if (v24)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1002230A4(uint64_t a1)
{
  if (*(v1 + 16))
  {
  }

  type metadata accessor for Peer(0);

  sub_100068FC4(&qword_100503600, &qword_10040A9D8);
  swift_dynamicCast();
  [v3 copyWithZone:0];
  swift_unknownObjectRelease();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  return v4;
}

void sub_100223184(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v41 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchQoS();
  v8 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10010DAA4(a2);
  if (v43)
  {
    v31[2] = v3;
    v10 = *a1;
    if ((v10 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      sub_100068FC4(&qword_1005076B8, &unk_10040FBE0);
      sub_100075C60(&qword_1005076C0, &qword_1005076B8, &unk_10040FBE0, &unk_10040A890);
      Set.Iterator.init(_cocoa:)();
      v10 = v48[4];
      v11 = v48[5];
      v12 = v48[6];
      v13 = v48[7];
      v14 = v48[8];
    }

    else
    {
      v15 = -1 << *(v10 + 32);
      v11 = v10 + 56;
      v12 = ~v15;
      v16 = -v15;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v14 = v17 & *(v10 + 56);

      v13 = 0;
    }

    v31[1] = v12;
    v32 = (v12 + 64) >> 6;
    v35 = v48;
    v34 = (v6 + 8);
    v33 = (v8 + 8);
    v37 = v10;
    v36 = v11;
    if (v10 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v18 = v13;
      v19 = v14;
      v20 = v13;
      if (!v14)
      {
        break;
      }

LABEL_13:
      v21 = (v19 - 1) & v19;
      v22 = *(*(v10 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));

      if (!v22)
      {
LABEL_19:
        sub_100093854(v10);

        return;
      }

      while (1)
      {
        v45 = v21;
        v24 = swift_allocObject();
        v25 = v42;
        v26 = v43;
        v24[2] = v22;
        v24[3] = v25;
        v24[4] = v26;
        v44 = *(v22 + 32);
        v48[2] = sub_10022D928;
        v48[3] = v24;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v48[0] = sub_100080830;
        v48[1] = &unk_1004CC570;
        v27 = _Block_copy(aBlock);

        v28 = v38;
        static DispatchQoS.unspecified.getter();
        v46 = _swiftEmptyArrayStorage;
        sub_10022D9C4(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
        sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
        v29 = v40;
        v30 = v41;
        v11 = v36;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v27);
        v10 = v37;

        (*v34)(v29, v30);
        (*v33)(v28, v39);

        v13 = v20;
        v14 = v45;
        if ((v10 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        v23 = __CocoaSet.Iterator.next()();
        if (v23)
        {
          v46 = v23;
          sub_100068FC4(&qword_1005076B8, &unk_10040FBE0);
          swift_dynamicCast();
          v22 = aBlock[0];
          v20 = v13;
          v21 = v14;
          if (aBlock[0])
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v32)
      {
        goto LABEL_19;
      }

      v19 = *(v11 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_10022370C(uint64_t *a1, void *a2, uint64_t a3)
{
  v43 = a3;
  v42 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS();
  v8 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10010E8DC(a2);
  if (v44)
  {
    v32[2] = v3;
    v10 = *a1;
    if ((v10 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      sub_100068FC4(&unk_100503FA0, &unk_10040B2F0);
      sub_100075C60(&qword_100504AA8, &unk_100503FA0, &unk_10040B2F0, &unk_10040A890);
      Set.Iterator.init(_cocoa:)();
      v10 = v49[4];
      v11 = v49[5];
      v12 = v49[6];
      v13 = v49[7];
      v14 = v49[8];
    }

    else
    {
      v15 = -1 << *(v10 + 32);
      v11 = v10 + 56;
      v12 = ~v15;
      v16 = -v15;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v14 = v17 & *(v10 + 56);

      v13 = 0;
    }

    v32[1] = v12;
    v33 = (v12 + 64) >> 6;
    v36 = v49;
    v35 = (v6 + 8);
    v34 = (v8 + 8);
    v38 = v10;
    v37 = v11;
    if (v10 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v18 = v13;
      v19 = v14;
      v20 = v13;
      if (!v14)
      {
        break;
      }

LABEL_13:
      v21 = (v19 - 1) & v19;
      v22 = *(*(v10 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));

      if (!v22)
      {
LABEL_19:

        sub_100093854(v10);
        return;
      }

      while (1)
      {
        v46 = v21;
        v24 = swift_allocObject();
        v25 = v43;
        v26 = v44;
        v24[2] = v22;
        v24[3] = v25;
        v24[4] = v26;
        v45 = *(v22 + 32);
        v49[2] = sub_10022DA10;
        v49[3] = v24;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v49[0] = sub_100080830;
        v49[1] = &unk_1004CC638;
        v27 = _Block_copy(aBlock);

        v28 = v26;

        v29 = v39;
        static DispatchQoS.unspecified.getter();
        v47 = _swiftEmptyArrayStorage;
        sub_10022D9C4(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
        sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
        v30 = v41;
        v31 = v42;
        v11 = v37;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v27);
        v10 = v38;

        (*v35)(v30, v31);
        (*v34)(v29, v40);

        v13 = v20;
        v14 = v46;
        if ((v10 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        v23 = __CocoaSet.Iterator.next()();
        if (v23)
        {
          v47 = v23;
          sub_100068FC4(&unk_100503FA0, &unk_10040B2F0);
          swift_dynamicCast();
          v22 = aBlock[0];
          v20 = v13;
          v21 = v14;
          if (aBlock[0])
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v33)
      {
        goto LABEL_19;
      }

      v19 = *(v11 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_100223C90(uint64_t a1, uint64_t a2, id a3)
{
  v3 = *(a1 + 24);
  if (*(a2 + 16))
  {
    v7 = a3;
    v4 = a3;
  }

  else
  {
    [a3 copyWithZone:0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10014E510();
    swift_dynamicCast();
    v4 = v7;
  }

  ObjectType = swift_getObjectType();
  v6[0] = v4;
  (*(v3 + 32))(v6, ObjectType, v3);
}

void sub_100223D5C(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(v1 + 16) == 1)
  {
    if (qword_100501960 == -1)
    {
LABEL_6:
      sub_1000F3B5C(-80, -85, 0, *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_peripheralTXPower), a1);
      return;
    }

LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "LyonBLE is not running", v11, 2u);
  }
}

uint64_t sub_100223F84(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v82 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v93 = a2 + 56;
  v83 = v7;
  v84 = a1;
  while (1)
  {
    if (v6)
    {
      v9 = __clz(__rbit64(v6));
      v85 = (v6 - 1) & v6;
    }

    else
    {
      v10 = v3;
      do
      {
        v3 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
        }

        if (v3 >= v7)
        {
          return 1;
        }

        v11 = *(v82 + 8 * v3);
        ++v10;
      }

      while (!v11);
      v9 = __clz(__rbit64(v11));
      v85 = (v11 - 1) & v11;
    }

    v12 = (*(a1 + 48) + 16 * (v9 | (v3 << 6)));
    v14 = *v12;
    v13 = v12[1];
    Hasher.init(_seed:)();
    sub_100069E2C(v14, v13);
    Data.hash(into:)();
    v15 = Hasher._finalize()();
    v16 = -1 << *(v2 + 32);
    v17 = v15 & ~v16;
    if (((*(v8 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
LABEL_157:
      sub_10006A178(v14, v13);
      return 0;
    }

    v18 = ~v16;
    v19 = v13 >> 62;
    v20 = !v14 && v13 == 0xC000000000000000;
    v21 = !v20;
    v96 = v21;
    v22 = __OFSUB__(HIDWORD(v14), v14);
    v92 = v22;
    v90 = (v14 >> 32) - v14;
    v91 = v14 >> 32;
    v95 = v18;
LABEL_27:
    v23 = (*(v2 + 48) + 16 * v17);
    v25 = *v23;
    v24 = v23[1];
    v26 = v24 >> 62;
    if (v24 >> 62 == 3)
    {
      if (v25)
      {
        v27 = 0;
      }

      else
      {
        v27 = v24 == 0xC000000000000000;
      }

      v29 = !v27 || v13 >> 62 != 3;
      if (((v29 | v96) & 1) == 0)
      {
        v78 = 0;
        v79 = 0xC000000000000000;
LABEL_154:
        sub_10006A178(v78, v79);
        v7 = v83;
        a1 = v84;
        v6 = v85;
        continue;
      }

LABEL_49:
      v30 = 0;
      if (v19 <= 1)
      {
        goto LABEL_46;
      }

      goto LABEL_50;
    }

    if (v26 > 1)
    {
      if (v26 != 2)
      {
        goto LABEL_49;
      }

      v32 = *(v25 + 16);
      v31 = *(v25 + 24);
      v33 = __OFSUB__(v31, v32);
      v30 = v31 - v32;
      if (v33)
      {
        goto LABEL_163;
      }

      if (v19 <= 1)
      {
        goto LABEL_46;
      }
    }

    else if (v26)
    {
      LODWORD(v30) = HIDWORD(v25) - v25;
      if (__OFSUB__(HIDWORD(v25), v25))
      {
        goto LABEL_162;
      }

      v30 = v30;
      if (v19 <= 1)
      {
LABEL_46:
        v34 = BYTE6(v13);
        if (v19)
        {
          v34 = HIDWORD(v14) - v14;
          if (v92)
          {
            goto LABEL_161;
          }
        }

        goto LABEL_52;
      }
    }

    else
    {
      v30 = BYTE6(v24);
      if (v19 <= 1)
      {
        goto LABEL_46;
      }
    }

LABEL_50:
    if (v19 != 2)
    {
      if (!v30)
      {
        goto LABEL_153;
      }

      goto LABEL_26;
    }

    v36 = *(v14 + 16);
    v35 = *(v14 + 24);
    v33 = __OFSUB__(v35, v36);
    v34 = v35 - v36;
    if (v33)
    {
      goto LABEL_160;
    }

LABEL_52:
    if (v30 != v34)
    {
      goto LABEL_26;
    }

    if (v30 < 1)
    {
      goto LABEL_153;
    }

    if (v26 <= 1)
    {
      break;
    }

    if (v26 != 2)
    {
      *&__s1[6] = 0;
      *__s1 = 0;
      if (!v19)
      {
LABEL_82:
        __s2 = v14;
        v98 = v13;
        v99 = BYTE2(v13);
        v100 = BYTE3(v13);
        v101 = BYTE4(v13);
        v102 = BYTE5(v13);
        v53 = memcmp(__s1, &__s2, BYTE6(v13));
        v18 = v95;
        if (!v53)
        {
          goto LABEL_153;
        }

        goto LABEL_26;
      }

      if (v19 == 2)
      {
        v49 = *(v14 + 16);
        v88 = *(v14 + 24);
        sub_100069E2C(v25, v24);
        v50 = __DataStorage._bytes.getter();
        if (v50)
        {
          v51 = __DataStorage._offset.getter();
          if (__OFSUB__(v49, v51))
          {
            goto LABEL_178;
          }

          v50 += v49 - v51;
        }

        v33 = __OFSUB__(v88, v49);
        v52 = v88 - v49;
        if (v33)
        {
          goto LABEL_169;
        }

        result = __DataStorage._length.getter();
        if (!v50)
        {
          goto LABEL_190;
        }

        goto LABEL_113;
      }

      if (v91 < v14)
      {
        goto LABEL_167;
      }

      sub_100069E2C(v25, v24);
      v64 = __DataStorage._bytes.getter();
      if (!v64)
      {
        goto LABEL_187;
      }

      v65 = v64;
      v66 = __DataStorage._offset.getter();
      if (__OFSUB__(v14, v66))
      {
        goto LABEL_173;
      }

      v40 = (v14 - v66 + v65);
      result = __DataStorage._length.getter();
      if (!v40)
      {
        goto LABEL_188;
      }

      goto LABEL_121;
    }

    v42 = *(v25 + 16);
    sub_100069E2C(v25, v24);
    v43 = __DataStorage._bytes.getter();
    if (v43)
    {
      v44 = v43;
      v45 = __DataStorage._offset.getter();
      if (__OFSUB__(v42, v45))
      {
        goto LABEL_165;
      }

      v86 = (v42 - v45 + v44);
    }

    else
    {
      v86 = 0;
    }

    __DataStorage._length.getter();
    v8 = v93;
    v2 = a2;
    if (v19 != 2)
    {
      if (v19 == 1)
      {
        if (v91 < v14)
        {
          goto LABEL_170;
        }

        v54 = __DataStorage._bytes.getter();
        if (v54)
        {
          v55 = __DataStorage._offset.getter();
          if (__OFSUB__(v14, v55))
          {
            goto LABEL_181;
          }

          v54 += v14 - v55;
        }

        v56 = __DataStorage._length.getter();
        v57 = (v14 >> 32) - v14;
        if (v56 < v90)
        {
          v57 = v56;
        }

        result = v86;
        if (!v86)
        {
          goto LABEL_198;
        }

        if (!v54)
        {
          goto LABEL_197;
        }

        goto LABEL_147;
      }

      result = v86;
      *__s1 = v14;
      *&__s1[8] = v13;
      __s1[10] = BYTE2(v13);
      __s1[11] = BYTE3(v13);
      __s1[12] = BYTE4(v13);
      __s1[13] = BYTE5(v13);
      if (!v86)
      {
        goto LABEL_184;
      }

LABEL_152:
      v77 = memcmp(result, __s1, BYTE6(v13));
      sub_10006A178(v25, v24);
      v18 = v95;
      if (!v77)
      {
        goto LABEL_153;
      }

      goto LABEL_26;
    }

    v69 = *(v14 + 16);
    v80 = *(v14 + 24);
    v54 = __DataStorage._bytes.getter();
    if (v54)
    {
      v70 = __DataStorage._offset.getter();
      if (__OFSUB__(v69, v70))
      {
        goto LABEL_179;
      }

      v54 += v69 - v70;
    }

    v33 = __OFSUB__(v80, v69);
    v71 = v80 - v69;
    if (v33)
    {
      goto LABEL_174;
    }

    v72 = __DataStorage._length.getter();
    if (v72 >= v71)
    {
      v57 = v71;
    }

    else
    {
      v57 = v72;
    }

    result = v86;
    if (!v86)
    {
      goto LABEL_194;
    }

    v2 = a2;
    if (!v54)
    {
      goto LABEL_193;
    }

LABEL_147:
    if (result != v54)
    {
      v63 = memcmp(result, v54, v57);
      sub_10006A178(v25, v24);
      goto LABEL_149;
    }

    sub_10006A178(v25, v24);
    sub_10006A178(v14, v13);
    v7 = v83;
    a1 = v84;
    v8 = v93;
    v6 = v85;
  }

  if (v26)
  {
    if (v25 > v25 >> 32)
    {
      goto LABEL_164;
    }

    sub_100069E2C(v25, v24);
    v46 = __DataStorage._bytes.getter();
    if (v46)
    {
      v47 = v46;
      v48 = __DataStorage._offset.getter();
      if (__OFSUB__(v25, v48))
      {
        goto LABEL_166;
      }

      v87 = (v25 - v48 + v47);
    }

    else
    {
      v87 = 0;
    }

    __DataStorage._length.getter();
    v8 = v93;
    v2 = a2;
    if (v19 == 2)
    {
      v73 = *(v14 + 16);
      v81 = *(v14 + 24);
      v54 = __DataStorage._bytes.getter();
      if (v54)
      {
        v74 = __DataStorage._offset.getter();
        if (__OFSUB__(v73, v74))
        {
          goto LABEL_180;
        }

        v54 += v73 - v74;
      }

      v33 = __OFSUB__(v81, v73);
      v75 = v81 - v73;
      if (v33)
      {
        goto LABEL_176;
      }

      v76 = __DataStorage._length.getter();
      if (v76 >= v75)
      {
        v57 = v75;
      }

      else
      {
        v57 = v76;
      }

      result = v87;
      if (!v87)
      {
        goto LABEL_196;
      }

      v2 = a2;
      if (!v54)
      {
        goto LABEL_195;
      }
    }

    else
    {
      if (v19 != 1)
      {
        result = v87;
        *__s1 = v14;
        *&__s1[8] = v13;
        __s1[10] = BYTE2(v13);
        __s1[11] = BYTE3(v13);
        __s1[12] = BYTE4(v13);
        __s1[13] = BYTE5(v13);
        if (!v87)
        {
          goto LABEL_189;
        }

        goto LABEL_152;
      }

      if (v91 < v14)
      {
        goto LABEL_175;
      }

      v54 = __DataStorage._bytes.getter();
      if (v54)
      {
        v58 = __DataStorage._offset.getter();
        if (__OFSUB__(v14, v58))
        {
          goto LABEL_182;
        }

        v54 += v14 - v58;
      }

      v59 = __DataStorage._length.getter();
      v57 = (v14 >> 32) - v14;
      if (v59 < v90)
      {
        v57 = v59;
      }

      result = v87;
      if (!v87)
      {
        goto LABEL_192;
      }

      if (!v54)
      {
        goto LABEL_191;
      }
    }

    goto LABEL_147;
  }

  *__s1 = v25;
  *&__s1[8] = v24;
  __s1[10] = BYTE2(v24);
  __s1[11] = BYTE3(v24);
  __s1[12] = BYTE4(v24);
  __s1[13] = BYTE5(v24);
  if (!v19)
  {
    goto LABEL_82;
  }

  if (v19 != 1)
  {
    v60 = *(v14 + 16);
    v89 = *(v14 + 24);
    sub_100069E2C(v25, v24);
    v50 = __DataStorage._bytes.getter();
    if (v50)
    {
      v61 = __DataStorage._offset.getter();
      if (__OFSUB__(v60, v61))
      {
        goto LABEL_177;
      }

      v50 += v60 - v61;
    }

    v33 = __OFSUB__(v89, v60);
    v52 = v89 - v60;
    if (v33)
    {
      goto LABEL_171;
    }

    result = __DataStorage._length.getter();
    if (!v50)
    {
      goto LABEL_186;
    }

LABEL_113:
    if (result >= v52)
    {
      v62 = v52;
    }

    else
    {
      v62 = result;
    }

    v63 = memcmp(__s1, v50, v62);
    sub_10006A178(v25, v24);
    v2 = a2;
LABEL_149:
    v8 = v93;
    v18 = v95;
    if (!v63)
    {
      goto LABEL_153;
    }

    goto LABEL_26;
  }

  if (v91 < v14)
  {
    goto LABEL_168;
  }

  sub_100069E2C(v25, v24);
  v37 = __DataStorage._bytes.getter();
  if (v37)
  {
    v38 = v37;
    v39 = __DataStorage._offset.getter();
    if (__OFSUB__(v14, v39))
    {
      goto LABEL_172;
    }

    v40 = (v14 - v39 + v38);
    result = __DataStorage._length.getter();
    if (!v40)
    {
      goto LABEL_185;
    }

LABEL_121:
    if (result >= v90)
    {
      v67 = (v14 >> 32) - v14;
    }

    else
    {
      v67 = result;
    }

    v68 = memcmp(__s1, v40, v67);
    sub_10006A178(v25, v24);
    v2 = a2;
    v18 = v95;
    if (!v68)
    {
LABEL_153:
      v78 = v14;
      v79 = v13;
      goto LABEL_154;
    }

LABEL_26:
    v17 = (v17 + 1) & v18;
    if (((*(v8 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_27;
  }

  __DataStorage._length.getter();
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  result = __DataStorage._length.getter();
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
  return result;
}

uint64_t sub_1002249A8(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v83 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v97 = a2 + 56;
  v84 = v7;
  v85 = a1;
  while (1)
  {
    if (v6)
    {
      v9 = __clz(__rbit64(v6));
      v86 = (v6 - 1) & v6;
    }

    else
    {
      v10 = v3;
      do
      {
        v3 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
        }

        if (v3 >= v7)
        {
          return 1;
        }

        v11 = *(v83 + 8 * v3);
        ++v10;
      }

      while (!v11);
      v9 = __clz(__rbit64(v11));
      v86 = (v11 - 1) & v11;
    }

    v12 = (*(a1 + 48) + 32 * (v9 | (v3 << 6)));
    v14 = *v12;
    v13 = v12[1];
    v16 = v12[2];
    v15 = v12[3];
    Hasher.init(_seed:)();
    v87 = v14;
    v88 = v13;
    sub_100069E2C(v14, v13);
    sub_100069E2C(v16, v15);
    v104 = v15;
    Data.hash(into:)();
    v17 = Hasher._finalize()();
    v18 = -1 << *(v2 + 32);
    v19 = v17 & ~v18;
    if (((*(v8 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_157:
      sub_10006A178(v87, v88);
      sub_10006A178(v16, v104);
      return 0;
    }

    v20 = ~v18;
    v21 = v15 >> 62;
    v22 = !v16 && v15 == 0xC000000000000000;
    v23 = !v22;
    v99 = v23;
    v24 = __OFSUB__(HIDWORD(v16), v16);
    v96 = v24;
    v95 = v20;
    v93 = (v16 >> 32) - v16;
    v94 = v16 >> 32;
LABEL_27:
    v25 = (*(v2 + 48) + 32 * v19);
    v26 = *v25;
    v27 = v25[1];
    v29 = v25[2];
    v28 = v25[3];
    v30 = v28 >> 62;
    if (v28 >> 62 == 3)
    {
      if (v29)
      {
        v31 = 0;
      }

      else
      {
        v31 = v28 == 0xC000000000000000;
      }

      v33 = !v31 || v21 < 3;
      if (((v33 | v99) & 1) == 0)
      {
        sub_10006A178(v87, v88);
        v79 = 0;
        v80 = 0xC000000000000000;
LABEL_154:
        sub_10006A178(v79, v80);
        v7 = v84;
        a1 = v85;
        v6 = v86;
        continue;
      }

LABEL_49:
      v34 = 0;
      if (v21 <= 1)
      {
        goto LABEL_46;
      }

      goto LABEL_50;
    }

    if (v30 > 1)
    {
      if (v30 != 2)
      {
        goto LABEL_49;
      }

      v36 = *(v29 + 16);
      v35 = *(v29 + 24);
      v37 = __OFSUB__(v35, v36);
      v34 = v35 - v36;
      if (v37)
      {
        goto LABEL_163;
      }

      if (v21 <= 1)
      {
        goto LABEL_46;
      }
    }

    else if (v30)
    {
      LODWORD(v34) = HIDWORD(v29) - v29;
      if (__OFSUB__(HIDWORD(v29), v29))
      {
        goto LABEL_162;
      }

      v34 = v34;
      if (v21 <= 1)
      {
LABEL_46:
        v38 = BYTE6(v104);
        if (v21)
        {
          v38 = HIDWORD(v16) - v16;
          if (v96)
          {
            goto LABEL_161;
          }
        }

        goto LABEL_52;
      }
    }

    else
    {
      v34 = BYTE6(v28);
      if (v21 <= 1)
      {
        goto LABEL_46;
      }
    }

LABEL_50:
    if (v21 != 2)
    {
      if (!v34)
      {
        goto LABEL_153;
      }

      goto LABEL_26;
    }

    v40 = *(v16 + 16);
    v39 = *(v16 + 24);
    v37 = __OFSUB__(v39, v40);
    v38 = v39 - v40;
    if (v37)
    {
      goto LABEL_160;
    }

LABEL_52:
    if (v34 != v38)
    {
      goto LABEL_26;
    }

    if (v34 < 1)
    {
      goto LABEL_153;
    }

    if (v30 <= 1)
    {
      break;
    }

    if (v30 != 2)
    {
      *&__s1[6] = 0;
      *__s1 = 0;
      if (!v21)
      {
LABEL_82:
        __s2 = v16;
        v106 = v104;
        v107 = WORD2(v104);
        if (!memcmp(__s1, &__s2, BYTE6(v104)))
        {
          goto LABEL_153;
        }

        goto LABEL_26;
      }

      v100 = v26;
      v102 = v27;
      if (v21 == 2)
      {
        v53 = *(v16 + 16);
        v91 = *(v16 + 24);
        sub_100069E2C(v26, v27);
        sub_100069E2C(v29, v28);
        v54 = __DataStorage._bytes.getter();
        if (v54)
        {
          v55 = __DataStorage._offset.getter();
          if (__OFSUB__(v53, v55))
          {
            goto LABEL_178;
          }

          v54 += v53 - v55;
        }

        v20 = v95;
        v37 = __OFSUB__(v91, v53);
        v56 = v91 - v53;
        if (v37)
        {
          goto LABEL_169;
        }

        result = __DataStorage._length.getter();
        if (!v54)
        {
          goto LABEL_190;
        }

        goto LABEL_113;
      }

      if (v94 < v16)
      {
        goto LABEL_167;
      }

      sub_100069E2C(v26, v27);
      sub_100069E2C(v29, v28);
      v67 = __DataStorage._bytes.getter();
      if (!v67)
      {
        goto LABEL_187;
      }

      v68 = v67;
      v69 = __DataStorage._offset.getter();
      if (__OFSUB__(v16, v69))
      {
        goto LABEL_173;
      }

      v44 = (v16 - v69 + v68);
      result = __DataStorage._length.getter();
      if (!v44)
      {
        goto LABEL_188;
      }

      goto LABEL_121;
    }

    v46 = *(v29 + 16);
    v101 = v26;
    v103 = v27;
    sub_100069E2C(v26, v27);
    sub_100069E2C(v29, v28);
    v47 = __DataStorage._bytes.getter();
    if (v47)
    {
      v48 = v47;
      v49 = __DataStorage._offset.getter();
      if (__OFSUB__(v46, v49))
      {
        goto LABEL_165;
      }

      v89 = (v46 - v49 + v48);
    }

    else
    {
      v89 = 0;
    }

    __DataStorage._length.getter();
    v8 = v97;
    v2 = a2;
    if (v21 != 2)
    {
      if (v21 == 1)
      {
        if (v94 < v16)
        {
          goto LABEL_170;
        }

        v57 = __DataStorage._bytes.getter();
        if (v57)
        {
          v58 = __DataStorage._offset.getter();
          if (__OFSUB__(v16, v58))
          {
            goto LABEL_181;
          }

          v57 += v16 - v58;
        }

        v20 = v95;
        v59 = __DataStorage._length.getter();
        v60 = (v16 >> 32) - v16;
        if (v59 < v93)
        {
          v60 = v59;
        }

        result = v89;
        if (!v89)
        {
          goto LABEL_198;
        }

        if (!v57)
        {
          goto LABEL_197;
        }

        goto LABEL_147;
      }

      result = v89;
      *__s1 = v16;
      *&__s1[8] = v104;
      *&__s1[12] = WORD2(v104);
      if (!v89)
      {
        goto LABEL_184;
      }

LABEL_152:
      v78 = memcmp(result, __s1, BYTE6(v104));
      sub_10006A178(v101, v103);
      sub_10006A178(v29, v28);
      if (!v78)
      {
        goto LABEL_153;
      }

      goto LABEL_26;
    }

    v72 = *(v16 + 16);
    v81 = *(v16 + 24);
    v57 = __DataStorage._bytes.getter();
    if (v57)
    {
      v73 = __DataStorage._offset.getter();
      if (__OFSUB__(v72, v73))
      {
        goto LABEL_179;
      }

      v57 += v72 - v73;
    }

    if (__OFSUB__(v81, v72))
    {
      goto LABEL_174;
    }

    v74 = __DataStorage._length.getter();
    if (v74 >= v81 - v72)
    {
      v60 = v81 - v72;
    }

    else
    {
      v60 = v74;
    }

    result = v89;
    v20 = v95;
    if (!v89)
    {
      goto LABEL_194;
    }

    v2 = a2;
    if (!v57)
    {
      goto LABEL_193;
    }

LABEL_147:
    if (result != v57)
    {
      v66 = memcmp(result, v57, v60);
      sub_10006A178(v101, v103);
      sub_10006A178(v29, v28);
      goto LABEL_149;
    }

    sub_10006A178(v87, v88);
    sub_10006A178(v16, v104);
    sub_10006A178(v101, v103);
    sub_10006A178(v29, v28);
    v7 = v84;
    a1 = v85;
    v8 = v97;
    v6 = v86;
  }

  if (v30)
  {
    if (v29 > v29 >> 32)
    {
      goto LABEL_164;
    }

    v101 = v26;
    v103 = v27;
    sub_100069E2C(v26, v27);
    sub_100069E2C(v29, v28);
    v50 = __DataStorage._bytes.getter();
    if (v50)
    {
      v51 = v50;
      v52 = __DataStorage._offset.getter();
      if (__OFSUB__(v29, v52))
      {
        goto LABEL_166;
      }

      v90 = (v29 - v52 + v51);
    }

    else
    {
      v90 = 0;
    }

    __DataStorage._length.getter();
    v8 = v97;
    v2 = a2;
    if (v21 == 2)
    {
      v75 = *(v16 + 16);
      v82 = *(v16 + 24);
      v57 = __DataStorage._bytes.getter();
      if (v57)
      {
        v76 = __DataStorage._offset.getter();
        if (__OFSUB__(v75, v76))
        {
          goto LABEL_180;
        }

        v57 += v75 - v76;
      }

      if (__OFSUB__(v82, v75))
      {
        goto LABEL_176;
      }

      v77 = __DataStorage._length.getter();
      if (v77 >= v82 - v75)
      {
        v60 = v82 - v75;
      }

      else
      {
        v60 = v77;
      }

      result = v90;
      v20 = v95;
      if (!v90)
      {
        goto LABEL_196;
      }

      v2 = a2;
      if (!v57)
      {
        goto LABEL_195;
      }
    }

    else
    {
      if (v21 != 1)
      {
        result = v90;
        *__s1 = v16;
        *&__s1[8] = v104;
        *&__s1[12] = WORD2(v104);
        if (!v90)
        {
          goto LABEL_189;
        }

        goto LABEL_152;
      }

      if (v94 < v16)
      {
        goto LABEL_175;
      }

      v57 = __DataStorage._bytes.getter();
      if (v57)
      {
        v61 = __DataStorage._offset.getter();
        if (__OFSUB__(v16, v61))
        {
          goto LABEL_182;
        }

        v57 += v16 - v61;
      }

      v20 = v95;
      v62 = __DataStorage._length.getter();
      v60 = (v16 >> 32) - v16;
      if (v62 < v93)
      {
        v60 = v62;
      }

      result = v90;
      if (!v90)
      {
        goto LABEL_192;
      }

      if (!v57)
      {
        goto LABEL_191;
      }
    }

    goto LABEL_147;
  }

  *__s1 = v29;
  *&__s1[8] = v28;
  __s1[10] = BYTE2(v28);
  __s1[11] = BYTE3(v28);
  __s1[12] = BYTE4(v28);
  __s1[13] = BYTE5(v28);
  if (!v21)
  {
    goto LABEL_82;
  }

  v100 = v26;
  v102 = v27;
  if (v21 != 1)
  {
    v63 = *(v16 + 16);
    v92 = *(v16 + 24);
    sub_100069E2C(v26, v27);
    sub_100069E2C(v29, v28);
    v54 = __DataStorage._bytes.getter();
    if (v54)
    {
      v64 = __DataStorage._offset.getter();
      if (__OFSUB__(v63, v64))
      {
        goto LABEL_177;
      }

      v54 += v63 - v64;
    }

    v20 = v95;
    v37 = __OFSUB__(v92, v63);
    v56 = v92 - v63;
    if (v37)
    {
      goto LABEL_171;
    }

    result = __DataStorage._length.getter();
    if (!v54)
    {
      goto LABEL_186;
    }

LABEL_113:
    if (result >= v56)
    {
      v65 = v56;
    }

    else
    {
      v65 = result;
    }

    v66 = memcmp(__s1, v54, v65);
    sub_10006A178(v100, v102);
    sub_10006A178(v29, v28);
    v2 = a2;
LABEL_149:
    v8 = v97;
    if (!v66)
    {
      goto LABEL_153;
    }

    goto LABEL_26;
  }

  if (v94 < v16)
  {
    goto LABEL_168;
  }

  sub_100069E2C(v26, v27);
  sub_100069E2C(v29, v28);
  v41 = __DataStorage._bytes.getter();
  if (v41)
  {
    v42 = v41;
    v43 = __DataStorage._offset.getter();
    if (__OFSUB__(v16, v43))
    {
      goto LABEL_172;
    }

    v44 = (v16 - v43 + v42);
    result = __DataStorage._length.getter();
    if (!v44)
    {
      goto LABEL_185;
    }

LABEL_121:
    if (result >= v93)
    {
      v70 = (v16 >> 32) - v16;
    }

    else
    {
      v70 = result;
    }

    v71 = memcmp(__s1, v44, v70);
    sub_10006A178(v100, v102);
    sub_10006A178(v29, v28);
    v2 = a2;
    v20 = v95;
    if (!v71)
    {
LABEL_153:
      sub_10006A178(v87, v88);
      v79 = v16;
      v80 = v104;
      goto LABEL_154;
    }

LABEL_26:
    v19 = (v19 + 1) & v20;
    if (((*(v8 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_27;
  }

  __DataStorage._length.getter();
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  result = __DataStorage._length.getter();
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
  return result;
}

void sub_1002254AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v33 - v9;
  v12.n128_f64[0] = __chkstk_darwin(v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_10022D9C4(&unk_100507480, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_10022D9C4(&qword_100502C18, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v31 = dispatch thunk of static Equatable.== infix(_:_:)();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_10022585C(id *a1)
{
  v1 = *a1;
  if ([*a1 endPointType] != 4)
  {
    return 0;
  }

  v2 = [v1 revocationAttestation];
  if (v2)
  {
    v3 = v2;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    sub_10006A178(v4, v6);
    return 0;
  }

  return 1;
}

uint64_t sub_1002258E4()
{
  type metadata accessor for LyonBLE(0);
  swift_allocObject();
  result = sub_100225924();
  qword_10051B588 = result;
  return result;
}

uint64_t sub_100225924()
{
  v1 = v0;
  v2 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - v4;
  *(v1 + 16) = 0;
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  v6 = OBJC_IVAR____TtC10seserviced7LyonBLE_disableAOPZoneDetection;
  LOBYTE(aBlock[0]) = 0;
  v16 = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  v7 = *(v3 + 8);
  v7(v5, v2);
  *(v1 + v6) = aBlock[0];
  v8 = OBJC_IVAR____TtC10seserviced7LyonBLE_disablePeripheralTags;
  LOBYTE(aBlock[0]) = 0;
  v16 = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  v7(v5, v2);
  *(v1 + v8) = aBlock[0];
  v9 = OBJC_IVAR____TtC10seserviced7LyonBLE_disableScanFiltering;
  LOBYTE(aBlock[0]) = 0;
  v16 = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  v7(v5, v2);
  *(v1 + v9) = aBlock[0];
  *(v1 + OBJC_IVAR____TtC10seserviced7LyonBLE_supportedFeatures) = 3;
  *(v1 + OBJC_IVAR____TtC10seserviced7LyonBLE_minDiscoveryScanRSSI) = -120;
  *(v1 + OBJC_IVAR____TtC10seserviced7LyonBLE_rssiThresholdCloserPlaceholder) = -80;
  *(v1 + OBJC_IVAR____TtC10seserviced7LyonBLE_rssiThresholdFurtherPlaceholder) = -85;
  *(v1 + OBJC_IVAR____TtC10seserviced7LyonBLE_scanDutyCycle) = 6;
  v10 = OBJC_IVAR____TtC10seserviced7LyonBLE_minRSSI;
  if (qword_100501BF8 != -1)
  {
    swift_once();
  }

  *(v1 + v10) = byte_10051B6B0;
  *(v1 + OBJC_IVAR____TtC10seserviced7LyonBLE_readerGroupIdentifierMask) = xmmword_1004098E0;
  *(v1 + OBJC_IVAR____TtC10seserviced7LyonBLE_scanningExpressReaderGroupIdentifiers) = 0;
  v11 = MGGetProductType();
  if (v11 == 2722529672 || v11 == 1371389549)
  {
    *(v1 + OBJC_IVAR____TtC10seserviced7LyonBLE_disableScanFiltering) = 1;
  }

  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_10022D9C0;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100193978;
  aBlock[3] = &unk_1004CC5E8;
  v12 = _Block_copy(aBlock);

  os_state_add_handler();
  _Block_release(v12);
  return v1;
}

_DWORD *sub_100225D48()
{
  v1 = *(v0 + 16);
  v16 = &type metadata for Bool;
  LOBYTE(v15) = v1;
  sub_100075D50(&v15, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v14, 0x6E696E6E75527369, 0xE900000000000067, isUniquelyReferenced_nonNull_native);
  v3 = *(v0 + 17);
  v16 = &type metadata for Bool;
  LOBYTE(v15) = v3;
  sub_100075D50(&v15, v14);
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v14, 0x696E6E6163537369, 0xEA0000000000676ELL, v4);
  v5 = *(v0 + OBJC_IVAR____TtC10seserviced7LyonBLE_disableAOPZoneDetection);
  v16 = &type metadata for Bool;
  LOBYTE(v15) = v5;
  sub_100075D50(&v15, v14);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v14, 0xD000000000000017, 0x8000000100468330, v6);
  v7 = *(v0 + OBJC_IVAR____TtC10seserviced7LyonBLE_disablePeripheralTags);
  v16 = &type metadata for Bool;
  LOBYTE(v15) = v7;
  sub_100075D50(&v15, v14);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v14, 0xD000000000000015, 0x8000000100468350, v8);
  v9 = *(v0 + OBJC_IVAR____TtC10seserviced7LyonBLE_disableScanFiltering);
  v16 = &type metadata for Bool;
  LOBYTE(v15) = v9;
  sub_100075D50(&v15, v14);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v14, 0xD000000000000014, 0x8000000100468370, v10);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = sub_100015DA0("lyonble.state", isa);

  return v12;
}

void sub_100225F98(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  if (*(v3 + 16) == 1)
  {
    if (a1 && *(a1 + 16))
    {
      if (a3)
      {
        v5 = 0;
      }

      else
      {
        v5 = 6;
      }

      v6 = OBJC_IVAR____TtC10seserviced7LyonBLE_minRSSI;
      if (*(v3 + OBJC_IVAR____TtC10seserviced7LyonBLE_minRSSI) == a2)
      {
        v7 = a1;
      }

      else
      {
        v7 = a1;

        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 16777728;
          *(v13 + 4) = *(v4 + v6);

          *(v13 + 5) = 256;
          *(v13 + 7) = a2;
          _os_log_impl(&_mh_execute_header, v11, v12, "LyonBLE minRSSI changing from %hhd to %hhd from next scan restart", v13, 8u);
        }

        else
        {
        }

        *(v4 + v6) = a2;
      }

      v14 = OBJC_IVAR____TtC10seserviced7LyonBLE_scanDutyCycle;
      if (v5 == *(v4 + OBJC_IVAR____TtC10seserviced7LyonBLE_scanDutyCycle) && (v15 = *(v4 + OBJC_IVAR____TtC10seserviced7LyonBLE_scanningExpressReaderGroupIdentifiers)) != 0 && (, , v16 = sub_100223F84(v7, v15), , , (v16 & 1) != 0))
      {
      }

      else
      {

        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 134218240;
          *(v19 + 4) = *(v4 + v14);

          *(v19 + 12) = 2048;
          *(v19 + 14) = v5;
          _os_log_impl(&_mh_execute_header, v17, v18, "LyonBLE scan duty cycle changing from %ld to %ld", v19, 0x16u);
        }

        else
        {
        }

        *(v4 + v14) = v5;
        *(v4 + OBJC_IVAR____TtC10seserviced7LyonBLE_scanningExpressReaderGroupIdentifiers) = v7;

        if (*(v4 + 17) == 1)
        {
          if (qword_100501960 != -1)
          {
            swift_once();
          }

          sub_1000E8C60(843466310, 0xE400000000000000);
          *(v4 + 17) = 0;
        }

        sub_1002263E4(v20);
      }
    }

    else
    {
      *(v3 + OBJC_IVAR____TtC10seserviced7LyonBLE_scanningExpressReaderGroupIdentifiers) = 0;

      if (*(v3 + 17) == 1)
      {
        if (qword_100501960 != -1)
        {
          swift_once();
        }

        sub_1000E8C60(843466310, 0xE400000000000000);
        *(v3 + 17) = 0;
      }
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "LyonBLE is not running, updateBLEConfigStatus called", v9, 2u);
    }
  }
}

void sub_1002263E4(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 17))
  {
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Scanning already active";
LABEL_12:
      _os_log_impl(&_mh_execute_header, oslog, v3, v5, v4, 2u);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v6 = *(v1 + OBJC_IVAR____TtC10seserviced7LyonBLE_scanningExpressReaderGroupIdentifiers);
  if (!v6 || !*(v6 + 16))
  {
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Request to start scanning with no reader group identifiers";
      goto LABEL_12;
    }

LABEL_13:

    return;
  }

  sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100409A40;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v8;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v9;
  v10 = OBJC_IVAR____TtC10seserviced7LyonBLE_scanDutyCycle;
  v11 = *(v1 + OBJC_IVAR____TtC10seserviced7LyonBLE_scanDutyCycle);
  *(inited + 120) = &type metadata for Int;
  *(inited + 96) = v11;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v12;
  *(inited + 168) = &type metadata for UInt32;
  *(inited + 144) = 655360;

  v13 = sub_10008FFDC(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100507D30, &unk_100409C90);
  swift_arrayDestroy();
  osloga = v13;
  if (*(v1 + OBJC_IVAR____TtC10seserviced7LyonBLE_disableScanFiltering))
  {
LABEL_9:

    v60 = &_swiftEmptySetSingleton;
LABEL_30:
    sub_100068FC4(&unk_100504720, &qword_100414C40);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100409A40;
    *(v17 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v17 + 40) = v37;
    *(v17 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v17 + 56) = v38;
    *(v17 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v17 + 72) = v39;

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    p_name = &OBJC_PROTOCOL___BSServiceConnectionClient.name;
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 134218240;
      *(v42 + 4) = *(v2 + v10);
      *(v42 + 12) = 256;
      *(v42 + 14) = *(v2 + OBJC_IVAR____TtC10seserviced7LyonBLE_minRSSI);

      _os_log_impl(&_mh_execute_header, v40, v41, "LyonBLE starting scanning with %ld, minRSSI %hhd", v42, 0xFu);
    }

    else
    {
    }

    if (qword_100501960 == -1)
    {
      goto LABEL_34;
    }

    goto LABEL_43;
  }

  v14 = *(v6 + 16);
  if (qword_100501960 == -1)
  {
    if (v14 > 8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    swift_once();
    if (v14 > 8)
    {
      goto LABEL_9;
    }
  }

  v15 = 1 << *(v6 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v6 + 56);
  p_name = (v15 + 63) >> 6;

  v19 = 0;
  v59 = _swiftEmptyArrayStorage;
  while (1)
  {
    v20 = v19;
    if (!v17)
    {
      break;
    }

LABEL_24:
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v22 = (*(v6 + 48) + ((v19 << 10) | (16 * v21)));
    v23 = *v22;
    v24 = v22[1];
    sub_100069E2C(*v22, v24);
    sub_100226C50(v23, v24);
    v56 = v25;
    v57 = v26;
    v58 = v27;
    v60 = v28;
    sub_10006A178(v23, v24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_10012EB50(0, *(v59 + 2) + 1, 1, v59);
    }

    v29 = v60;
    v31 = *(v59 + 2);
    v30 = *(v59 + 3);
    v32 = v57;
    v33 = v58;
    v34 = v56;
    if (v31 >= v30 >> 1)
    {
      v36 = sub_10012EB50((v30 > 1), v31 + 1, 1, v59);
      v34 = v56;
      v32 = v57;
      v33 = v58;
      v59 = v36;
      v29 = v60;
    }

    *(v59 + 2) = v31 + 1;
    v35 = &v59[32 * v31];
    *(v35 + 4) = v29;
    *(v35 + 5) = v33;
    *(v35 + 6) = v34;
    *(v35 + 7) = v32;
  }

  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= p_name)
    {

      v60 = sub_1000E0110(v59);

      goto LABEL_30;
    }

    v17 = *(v6 + 56 + 8 * v19);
    ++v20;
    if (v17)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_43:
  swift_once();
LABEL_34:
  v43 = *(v2 + *(p_name + 1416));
  sub_100068FC4(&qword_100503F10, &qword_10040A008);
  v44 = type metadata accessor for UUID();
  v45 = *(v44 - 8);
  v46 = *(v45 + 72);
  v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_100409900;
  v49 = v48 + v47;
  if (qword_100501B88 != -1)
  {
    swift_once();
  }

  v50 = sub_1000958E4(v44, qword_10051B5C8);
  v51 = *(v45 + 16);
  v51(v49, v50, v44);
  if (qword_100501B90 != -1)
  {
    swift_once();
  }

  v52 = sub_1000958E4(v44, qword_10051B5E0);
  v51(v49 + v46, v52, v44);
  v53 = *(v2 + OBJC_IVAR____TtC10seserviced7LyonBLE_disableAOPZoneDetection);
  if (*(v2 + OBJC_IVAR____TtC10seserviced7LyonBLE_disablePeripheralTags))
  {
    v54 = 0;
  }

  else
  {
    v54 = &off_1004C3770;
  }

  type metadata accessor for DSKBLE.BLEScanRequest();
  v55 = swift_allocObject();
  *(v55 + 16) = 843466310;
  *(v55 + 24) = 0xE400000000000000;
  *(v55 + 32) = v43;
  *(v55 + 33) = 1;
  *(v55 + 56) = v60;
  *(v55 + 64) = osloga;
  *(v55 + 40) = v17;
  *(v55 + 48) = v48;
  *(v55 + 72) = 0;
  *(v55 + 80) = 0;
  *(v55 + 88) = 1;
  *(v55 + 89) = (v53 & 1) == 0;
  *(v55 + 96) = v54;
  *(v55 + 104) = sub_10022D8B8;
  *(v55 + 112) = v2;
  *(v55 + 120) = sub_10022D8D0;
  *(v55 + 128) = v2;
  *(v55 + 136) = sub_10022D8E8;
  *(v55 + 144) = v2;
  *(v55 + 152) = sub_10022D8EC;
  *(v55 + 160) = v2;
  *(v55 + 168) = sub_10022D8F0;
  *(v55 + 176) = v2;
  *(v55 + 184) = sub_10022D8F4;
  *(v55 + 192) = v2;
  *(v55 + 200) = sub_10022D8FC;
  *(v55 + 208) = v2;
  swift_retain_n();
  sub_1000E7EB0(v55);

  *(v2 + 17) = 1;
}

void sub_100226C50(unint64_t a1, unint64_t a2)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_15;
    }

    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 == 8)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  if (!v5)
  {
    if (BYTE6(a2) != 8)
    {
      goto LABEL_15;
    }

LABEL_8:
    type metadata accessor for __DataStorage();
    swift_allocObject();
    __b = 0x1000000000;
    v37 = __DataStorage.init(length:)();
    sub_10022D4F0(&__b, 0);
    v40[0] = __b;
    v40[1] = v37 | 0x4000000000000000;
    v38 = &type metadata for Data;
    v39 = &protocol witness table for Data;
    __b = a1;
    v37 = a2;
    v10 = sub_1000752B0(&__b, &type metadata for Data);
    v11 = *v10;
    v12 = v10[1];
    sub_100069E2C(a1, a2);
    sub_10022D598(v11, v12, v40, 2, 2);
    sub_1000752F4(&__b);
    Data._Representation.subscript.setter();
    v13 = (v2 + OBJC_IVAR____TtC10seserviced7LyonBLE_readerGroupIdentifierMask);
    swift_beginAccess();
    v14 = v13[1];
    if (v14 >> 60 != 15)
    {
LABEL_12:
      sub_100069E2C(*v13, v14);
      return;
    }

    swift_allocObject();
    v15 = __DataStorage.init(length:)();
    __b = 0x1000000000;
    v37 = v15;
    sub_10022D4F0(&__b, 0);
    v16 = v37 | 0x4000000000000000;
    v17 = *v13;
    v18 = v13[1];
    *v13 = __b;
    v13[1] = v16;
    sub_10006A2D0(v17, v18);
    __b = sub_10008FCB4(8uLL);
    LODWORD(v37) = v19;
    BYTE6(v37) = v20;
    WORD2(v37) = v21;
    memset(&__b, 255, v20);
    v22 = __b;
    v23 = BYTE6(v37);
    v24 = WORD2(v37);
    v25 = v37;
    swift_beginAccess();
    if (v13[1] >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      v38 = &type metadata for Data;
      v39 = &protocol witness table for Data;
      __b = v22;
      v37 = (v25 | ((v24 | (v23 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL;
      v26 = sub_1000752B0(&__b, &type metadata for Data);
      sub_10022D598(*v26, v26[1], v13, 2, 2);
      sub_1000752F4(&__b);
      swift_endAccess();
      swift_beginAccess();
      if (v13[1] >> 60 != 15)
      {
        Data._Representation.subscript.setter();
        swift_endAccess();
        v14 = v13[1];
        if (v14 >> 60 != 15)
        {
          goto LABEL_12;
        }

LABEL_22:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_19;
  }

  if (HIDWORD(a1) - a1 == 8)
  {
    goto LABEL_8;
  }

LABEL_15:
  sub_100069E2C(a1, a2);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  sub_10006A178(a1, a2);
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    __b = v30;
    *v29 = 136315138;
    sub_100288788(a1, a2);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v31 = BidirectionalCollection<>.joined(separator:)();
    v33 = v32;

    v34 = sub_1002FFA0C(v31, v33, &__b);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v27, v28, "Invalid reader group identifier %s", v29, 0xCu);
    sub_1000752F4(v30);
  }

  sub_1000E1E2C();
  swift_allocError();
  *v35 = 2;
  swift_willThrow();
}

void sub_100227148(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = v5;
  v7 = v4;
  v333 = a4;
  v10 = type metadata accessor for UUID();
  isa = v10[-1].isa;
  v337 = v10;
  __chkstk_darwin(v10);
  v334 = &v304 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v335 = &v304 - v13;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v339 = v14;
  v340 = v15;
  __chkstk_darwin(v14);
  v338 = (&v304 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v304 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v21 = qword_10051B7F0;
  *v20 = qword_10051B7F0;
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v24 = *(v18 + 8);
  v23 = v18 + 8;
  v24(v20, v17);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_64;
  }

  v23 = OBJC_IVAR____TtC10seserviced7LyonBLE_logger;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Lyon received onDiscovery", v28, 2u);
  }

  if (*(v7 + 16) != 1)
  {
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "LyonBLE is not running", v46, 2u);
    }

    return;
  }

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10008B178(v29, v30, a3, &v344);

  if (!v345)
  {
    sub_1001B5024(&v344);
LABEL_27:
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v47, v48))
    {
LABEL_30:

      sub_1000E1E2C();
      swift_allocError();
      *v51 = 2;
      swift_willThrow();
      return;
    }

    v49 = swift_slowAlloc();
    *v49 = 0;
    v50 = "Lyon received connection not connectable";
LABEL_29:
    _os_log_impl(&_mh_execute_header, v47, v48, v50, v49, 2u);

    goto LABEL_30;
  }

  if ((swift_dynamicCast() & 1) == 0 || v342 != 1)
  {
    goto LABEL_27;
  }

  if (qword_1005019E8 != -1)
  {
    swift_once();
  }

  v31 = sub_1000CAA04();
  if (qword_100501A58 != -1)
  {
    v111 = v31;
    swift_once();
    v31 = v111;
  }

  *&v332 = v31;
  v331 = v23;
  v330 = "Update Aliro Versions";
  v32 = sub_10013044C(0xD000000000000012, 0x8000000100461630);
  if (v33 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_214;
  }

  v34 = v32;
  v35 = v33;
  v36 = sub_1001C1BA4(v32, v33);
  sub_10006A2D0(v34, v35);
  v37 = *(v36 + 24);

  v38 = v332;
  if ((v332 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_17;
    }

LABEL_32:

    goto LABEL_33;
  }

  if (!*(v332 + 16))
  {
    goto LABEL_32;
  }

LABEL_17:
  v39 = *(v37 + 16);

  if (!v39)
  {
LABEL_33:

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v47, v48))
    {
      goto LABEL_30;
    }

    v49 = swift_slowAlloc();
    *v49 = 0;
    v50 = "No valid endpoints found";
    goto LABEL_29;
  }

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10008B178(v40, v41, a3, &v344);

  if (!v345)
  {

    sub_1001B5024(&v344);
LABEL_47:
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v47, v48))
    {
      goto LABEL_30;
    }

    v49 = swift_slowAlloc();
    *v49 = 0;
    v50 = "Failed to retrieve valid AdvA";
    goto LABEL_29;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_47;
  }

  v328 = v38 & 0xC000000000000001;
  v20 = v343;
  v329 = v342;
  v42 = v343 >> 62;
  if ((v343 >> 62) <= 1)
  {
    if (!v42)
    {
      v43 = BYTE6(v343);
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  if (v42 != 2)
  {
LABEL_46:

    sub_10006A178(v329, v20);
    goto LABEL_47;
  }

  v53 = v329[2];
  v52 = v329[3];
  v54 = __OFSUB__(v52, v53);
  v43 = v52 - v53;
  if (v54)
  {
    __break(1u);
LABEL_41:
    LODWORD(v43) = HIDWORD(v329) - v329;
    if (__OFSUB__(HIDWORD(v329), v329))
    {
      __break(1u);
    }

    v43 = v43;
  }

LABEL_43:
  if (v43 != 6)
  {
    goto LABEL_46;
  }

  v55 = v329;
  sub_100069E2C(v329, v20);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.debug.getter();
  sub_10006A178(v55, v20);
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v324 = v58;
    v326 = swift_slowAlloc();
    *&v344 = v326;
    *v58 = 136380675;
    v59 = sub_100288788(v329, v20);
    v325 = v56;
    v342 = v59;
    LODWORD(v323) = v57;
    v327 = v20;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v60 = BidirectionalCollection<>.joined(separator:)();
    v62 = v61;

    v63 = sub_1002FFA0C(v60, v62, &v344);
    v20 = v327;

    v64 = v324;
    *(v324 + 4) = v63;
    v65 = v325;
    _os_log_impl(&_mh_execute_header, v325, v323, "Received AdvA: %{private}s", v64, 0xCu);
    sub_1000752F4(v326);
  }

  else
  {
  }

  v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10008B178(v66, v67, a3, &v344);

  if (!v345)
  {

    sub_1001B5024(&v344);
LABEL_60:
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v75, v76, "Failed to retrieve valid service data", v77, 2u);
    }

    sub_1000E1E2C();
    swift_allocError();
    *v78 = 2;
    swift_willThrow();
    sub_10006A178(v329, v20);
    return;
  }

  sub_100068FC4(&qword_100504068, &qword_10040B378);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_59:

    goto LABEL_60;
  }

  v68 = v342;
  v69 = String._bridgeToObjectiveC()();
  v70 = [objc_opt_self() UUIDWithString:v69];

  if (!v68[2] || (v71 = sub_10008CE24(v70), (v72 & 1) == 0))
  {

    goto LABEL_59;
  }

  v73 = (v68[7] + 16 * v71);
  a1 = *v73;
  v23 = v73[1];
  sub_100069E2C(*v73, v23);

  v25 = v23 >> 62;
  if ((v23 >> 62) <= 1)
  {
    if (!v25)
    {
      v74 = BYTE6(v23);
      goto LABEL_70;
    }

LABEL_68:
    LODWORD(v74) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v74 = v74;
      goto LABEL_70;
    }

LABEL_214:
    __break(1u);
LABEL_215:
    sub_100093854(v328);
    v242 = a1;
    v243 = v6;
LABEL_216:
    sub_10006A178(v242, v243);
LABEL_218:

    v244 = [v340 homeUUIDString];
    if (v244)
    {
      v245 = v244;
      a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v246;

      if (qword_100501B00 != -1)
      {
LABEL_269:
        swift_once();
      }

      if (sub_1001DE8B0(a1, v23) == 2)
      {

        v247 = Logger.logObject.getter();
        v248 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v247, v248))
        {
          v249 = swift_slowAlloc();
          v250 = swift_slowAlloc();
          *&v344 = v250;
          *v249 = 136315138;
          v251 = sub_1002FFA0C(a1, v23, &v344);

          *(v249 + 4) = v251;
          _os_log_impl(&_mh_execute_header, v247, v248, "%s has current status as out of home, not connecting to endpoint", v249, 0xCu);
          sub_1000752F4(v250);
        }

        else
        {
        }

        goto LABEL_248;
      }
    }

    sub_100069E2C(v323, v324);
    v252 = [v340 readerIdentifier];
    if (v252)
    {
      v253 = v252;
      v254 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v256 = v255;

      sub_100288640(8, v254, v256, &v344);
      v257 = *(&v344 + 1);
      v23 = v344;
      if (v324 >> 60 == 15)
      {
        if (*(&v344 + 1) >> 60 != 15)
        {
          goto LABEL_236;
        }

        goto LABEL_229;
      }

      if (*(&v344 + 1) >> 60 != 15)
      {
        v259 = v323;
        v260 = v324;
        sub_100069E2C(v323, v324);
        sub_10006A2BC(v23, v257);
        v261 = sub_10008FB4C(v259, v260, v23, v257);
        sub_10006A2D0(v23, v257);
        sub_10006A2D0(v23, v257);
        sub_10006A178(v259, v260);
        sub_10006A2D0(v259, v260);
        if (!v261)
        {
LABEL_237:
          v258 = 2;
          goto LABEL_238;
        }

        v258 = 1;
LABEL_238:
        LODWORD(v339) = v258;
        v262 = sub_10027C718(v312, v311);
        if (v262)
        {
          v263 = v262;
          a1 = v262[2];
          swift_beginAccess();
          if (a1)
          {
            v264 = 0;
            v265 = v263 + 5;
            while (1)
            {
              if (v264 >= v263[2])
              {
                __break(1u);
                goto LABEL_263;
              }

              v23 = *(v265 - 1);
              v266 = *v265;
              v267 = v342;
              v268 = v343;
              sub_100069E2C(v23, *v265);
              if (sub_10022CC5C(v267, v268, v23, v266, v317, v318).super.isa)
              {
                break;
              }

              v264 = (v264 + 1);
              sub_10006A178(v23, v266);
              v265 += 2;
              if (a1 == v264)
              {
                goto LABEL_244;
              }
            }

            v273 = Logger.logObject.getter();
            v274 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v273, v274))
            {
              v275 = swift_slowAlloc();
              *v275 = 0;
              _os_log_impl(&_mh_execute_header, v273, v274, "Validated GRK from express config", v275, 2u);
            }

            v338 = *(isa + 2);
            v338(v335, &v333[OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier], v337);
            v333 = [v340 endPointType];
            type metadata accessor for LyonPeer(0);
            v276 = swift_allocObject();
            v277 = OBJC_IVAR____TtC10seserviced8LyonPeer_secureChannel;
            type metadata accessor for LyonBLESecureChannel();
            v278 = swift_allocObject();
            v332 = xmmword_1004098E0;
            *(v278 + 16) = xmmword_1004098E0;
            *(v278 + 32) = xmmword_1004098E0;
            *(v278 + 48) = xmmword_1004098E0;
            *(v278 + 64) = 0x100000001;
            *(v276 + v277) = v278;
            v279 = OBJC_IVAR____TtC10seserviced8LyonPeer_stepUpHelper;
            v280 = objc_allocWithZone(type metadata accessor for LyonStepUpHelper());
            v281 = v324;
            sub_100069E2C(v323, v324);
            v282 = v319;
            v283 = v320;
            sub_100069E2C(v319, v320);
            *(v276 + v279) = [v280 init];
            v284 = OBJC_IVAR____TtC10seserviced8LyonPeer_timeExtension;
            type metadata accessor for LyonTimeExtension();
            swift_allocObject();
            *(v276 + v284) = sub_10025E684();
            *(v276 + OBJC_IVAR____TtC10seserviced8LyonPeer_didFetchUrsk) = 0;
            *(v276 + OBJC_IVAR____TtC10seserviced8LyonPeer_rangingIntentRequested) = 0;
            *(v276 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerStatus) = 3;
            *(v276 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerStatusAtConnection) = 3;
            *(v276 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) = 0;
            *(v276 + OBJC_IVAR____TtC10seserviced8LyonPeer_unsolicitedReaderStatusReportingValue) = 0;
            v285 = v276 + OBJC_IVAR____TtC10seserviced8LyonPeer_bleUwbProtocolVersion;
            *v285 = 0;
            *(v285 + 2) = 1;
            v286 = v276 + OBJC_IVAR____TtC10seserviced8LyonPeer_expeditedTransactionProtocolVersion;
            *v286 = 0;
            *(v286 + 2) = 1;
            *(v276 + OBJC_IVAR____TtC10seserviced8LyonPeer_hasError) = 512;
            *(v276 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier) = v332;
            v287 = v276 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID;
            *v287 = 0;
            *(v287 + 4) = 1;
            type metadata accessor for LyonCoreAnalytics();
            swift_allocObject();
            *(v276 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData) = sub_1002F9318(v339);
            *(v276 + OBJC_IVAR____TtC10seserviced8LyonPeer_endpointType) = v333;
            *(v276 + OBJC_IVAR____TtC10seserviced8LyonPeer_peripheralTXPower) = v316;
            v288 = (v276 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupIdentifier);
            *v288 = v323;
            v288[1] = v281;
            v289 = (v276 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupSubIdentifier);
            *v289 = v282;
            v289[1] = v283;
            v290 = v334;
            v291 = v335;
            v292 = v337;
            v338(v334, v335, v337);
            v293 = sub_10025CF18(v290);
            (*(isa + 1))(v291, v292);

            v294 = sub_10013044C(0xD000000000000012, v330 | 0x8000000000000000);
            v295 = (v293 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier);
            v296 = *(v293 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier);
            v297 = *(v293 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8);
            *v295 = v294;
            v295[1] = v298;
            sub_10006A2D0(v296, v297);
            v299 = (v293 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
            v300 = *(v293 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
            v301 = *(v293 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
            v302 = v312;
            v303 = v311;
            *v299 = v312;
            v299[1] = v303;
            sub_10006A2BC(v302, v303);
            sub_10006A2D0(v300, v301);
            *(v293 + OBJC_IVAR____TtC10seserviced4Peer_type) = 3;

            if (qword_100501960 != -1)
            {
              swift_once();
            }

            sub_1000F0F70(v293);
            sub_10006A178(v329, v327);
            sub_10006A178(v325, v326);
            sub_10006A178(v323, v324);
            sub_10006A178(v319, v320);
            sub_10006A178(v321, v322);
            sub_10006A2D0(v312, v311);

            sub_10006A178(v317, v318);
            sub_10006A178(v23, v266);

            sub_10006A178(v342, v343);
            return;
          }

LABEL_244:
        }

        v269 = Logger.logObject.getter();
        v270 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v269, v270))
        {
          v271 = swift_slowAlloc();
          *v271 = 0;
          _os_log_impl(&_mh_execute_header, v269, v270, "Could not validate GRK, not connecting to peripheral", v271, 2u);
        }

LABEL_248:
        sub_1000E1E2C();
        swift_allocError();
        *v272 = 2;
        swift_willThrow();
        sub_10006A178(v329, v327);
        sub_10006A178(v325, v326);
        sub_10006A178(v323, v324);
        sub_10006A178(v319, v320);
        sub_10006A178(v321, v322);
        sub_10006A2D0(v312, v311);

        goto LABEL_132;
      }
    }

    else
    {
      if (v324 >> 60 == 15)
      {
LABEL_229:
        sub_10006A2D0(v323, v324);
        v258 = 1;
        goto LABEL_238;
      }

      v23 = 0;
      v257 = 0xF000000000000000;
    }

LABEL_236:
    sub_10006A2D0(v323, v324);
    sub_10006A2D0(v23, v257);
    goto LABEL_237;
  }

LABEL_64:
  if (v25 != 2)
  {
LABEL_77:

    sub_10006A178(a1, v23);
    goto LABEL_60;
  }

  v80 = *(a1 + 16);
  v79 = *(a1 + 24);
  v54 = __OFSUB__(v79, v80);
  v74 = v79 - v80;
  if (v54)
  {
    __break(1u);
    goto LABEL_68;
  }

LABEL_70:
  if (v74 != 24)
  {
    goto LABEL_77;
  }

  v327 = v20;
  sub_100069E2C(a1, v23);
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.debug.getter();
  v325 = a1;
  v326 = v23;
  sub_10006A178(a1, v23);
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v324 = swift_slowAlloc();
    *&v344 = v324;
    *v83 = 136380675;
    v342 = sub_100288788(v325, v326);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v84 = BidirectionalCollection<>.joined(separator:)();
    v86 = v85;

    v87 = sub_1002FFA0C(v84, v86, &v344);

    *(v83 + 4) = v87;
    _os_log_impl(&_mh_execute_header, v81, v82, "Received service data: %{private}s", v83, 0xCu);
    sub_1000752F4(v324);
  }

  v88 = v325;
  v89 = v326;
  sub_100069E2C(v325, v326);
  v90 = sub_1000939AC(v88, v89, 1, 0, 0);
  if (v5)
  {

    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&_mh_execute_header, v91, v92, "Failed to retrieve peripheral TX power from service data", v93, 2u);
    }

    sub_1000E1E2C();
    swift_allocError();
    *v94 = 2;
    swift_willThrow();
    v95 = v88;
    v96 = v89;
    goto LABEL_94;
  }

  v316 = v90;
  v97 = Data._Representation.subscript.getter();
  v98 = Data._Representation.subscript.getter();
  v321 = Data.subdata(in:)();
  v322 = v99;
  v317 = Data.subdata(in:)();
  v318 = v100;
  v323 = Data.subdata(in:)();
  v324 = v101;
  v319 = Data.subdata(in:)();
  v320 = v102;
  if ((v98 & 0x80) == 0)
  {

    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      v106 = "Lock does not support BLE/UWB type connections, not connecting";
      v107 = v104;
      v108 = v103;
      v109 = v105;
      v110 = 2;
LABEL_91:
      _os_log_impl(&_mh_execute_header, v108, v107, v106, v109, v110);
      goto LABEL_92;
    }

    goto LABEL_93;
  }

  v112 = v97 & 3;
  if (qword_100501900 != -1)
  {
    swift_once();
  }

  if (!sub_1002A11F0(v97 & 3, *(qword_10051B190 + 16)))
  {

    v103 = Logger.logObject.getter();
    v122 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v103, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 16777472;
      *(v123 + 4) = v112;
      v106 = "Protocol version %hhu not supported";
      v107 = v122;
      v108 = v103;
      v109 = v123;
      v110 = 5;
      goto LABEL_91;
    }

LABEL_93:

    sub_1000E1E2C();
    swift_allocError();
    *v124 = 2;
    swift_willThrow();
    sub_10006A178(v319, v320);
    sub_10006A178(v323, v324);
    sub_10006A178(v317, v318);
    sub_10006A178(v321, v322);
    v95 = v325;
    v96 = v326;
LABEL_94:
    sub_10006A178(v95, v96);
    sub_10006A178(v329, v327);
    return;
  }

  if (qword_1005018F8 != -1)
  {
    swift_once();
  }

  if (sub_100088DE8(v323, v324))
  {

    v113 = v323;
    v114 = v324;
    sub_100069E2C(v323, v324);
    v103 = Logger.logObject.getter();
    v115 = static os_log_type_t.info.getter();
    sub_10006A178(v113, v114);
    if (os_log_type_enabled(v103, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      *&v344 = v117;
      *v116 = 136315138;
      v342 = sub_100288788(v323, v324);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v118 = BidirectionalCollection<>.joined(separator:)();
      v120 = v119;

      v121 = sub_1002FFA0C(v118, v120, &v344);

      *(v116 + 4) = v121;
      _os_log_impl(&_mh_execute_header, v103, v115, "Not connecting to peripheral since %s is pre-armed", v116, 0xCu);
      sub_1000752F4(v117);

LABEL_92:

      goto LABEL_93;
    }

    goto LABEL_93;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  v125 = __DataStorage.init(capacity:)();
  v342 = 0;
  v343 = v125 | 0x4000000000000000;
  Data._Representation.append(contentsOf:)();
  Data.append(_:)();
  Data.append(_:)();
  v126 = v342;
  v127 = v343;
  sub_100069E2C(v342, v343);
  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.debug.getter();
  sub_10006A178(v126, v127);
  LODWORD(v315) = v129;
  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    v314 = swift_slowAlloc();
    *&v344 = v314;
    *v130 = 136380675;
    v341 = sub_100288788(v126, v127);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v131 = BidirectionalCollection<>.joined(separator:)();
    v133 = v132;

    v134 = sub_1002FFA0C(v131, v133, &v344);

    *(v130 + 4) = v134;
    _os_log_impl(&_mh_execute_header, v128, v315, "plaintext  Pad_Bytes || AdvA || Dynamic Tag Expiry Timestamp %{private}s", v130, 0xCu);
    sub_1000752F4(v314);
  }

  v135 = v323;
  v136 = v324;
  sub_100069E2C(v323, v324);
  v137 = Logger.logObject.getter();
  v138 = static os_log_type_t.debug.getter();
  sub_10006A178(v135, v136);
  if (os_log_type_enabled(v137, v138))
  {
    v139 = swift_slowAlloc();
    v315 = swift_slowAlloc();
    *&v344 = v315;
    *v139 = 136380675;
    v341 = sub_100288788(v323, v324);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v140 = BidirectionalCollection<>.joined(separator:)();
    v142 = v141;

    v143 = sub_1002FFA0C(v140, v142, &v344);

    *(v139 + 4) = v143;
    _os_log_impl(&_mh_execute_header, v137, v138, "truncatedReaderGroupIdentifier: %{private}s", v139, 0xCu);
    sub_1000752F4(v315);
  }

  v144 = v319;
  v145 = v320;
  sub_100069E2C(v319, v320);
  v146 = Logger.logObject.getter();
  v147 = static os_log_type_t.debug.getter();
  sub_10006A178(v144, v145);
  if (os_log_type_enabled(v146, v147))
  {
    v148 = swift_slowAlloc();
    v315 = swift_slowAlloc();
    *&v344 = v315;
    *v148 = 136380675;
    v341 = sub_100288788(v319, v320);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v149 = BidirectionalCollection<>.joined(separator:)();
    v151 = v150;

    v152 = sub_1002FFA0C(v149, v151, &v344);

    *(v148 + 4) = v152;
    _os_log_impl(&_mh_execute_header, v146, v147, "truncatedReaderGroupSubIdentifier: %{private}s", v148, 0xCu);
    sub_1000752F4(v315);
  }

  v153 = v321;
  v154 = v322;
  sub_100069E2C(v321, v322);
  v155 = sub_1000939F8(v153, v154, 0, 0, 1);
  v315 = 0;
  v157 = v155;
  sub_10006A178(v321, v322);
  v158 = v338;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v160 = v159;
  v161 = v159;
  v162 = v340[1];
  ++v340;
  v162(v158, v339);
  if ((*&v161 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_256;
  }

  if (v160 <= -1.0)
  {
LABEL_256:
    __break(1u);
    goto LABEL_257;
  }

  if (v160 >= 4294967300.0)
  {
LABEL_257:
    __break(1u);
LABEL_258:
    swift_once();
LABEL_104:
    v156 = 0;
    goto LABEL_128;
  }

  if (v157 <= v160)
  {

    v183 = Logger.logObject.getter();
    LODWORD(isa) = static os_log_type_t.error.getter();
    v337 = v183;
    if (os_log_type_enabled(v183, isa))
    {
      v184 = swift_slowAlloc();
      v335 = swift_slowAlloc();
      *&v344 = v335;
      *v184 = 136315394;
      v185 = v338;
      Date.init(timeIntervalSince1970:)();
      sub_10022D9C4(&qword_100504F38, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v186 = v339;
      v187 = dispatch thunk of CustomStringConvertible.description.getter();
      v189 = v188;
      v162(v185, v186);
      v190 = sub_1002FFA0C(v187, v189, &v344);

      *(v184 + 4) = v190;
      *(v184 + 12) = 2080;
      Date.init()();
      v191 = dispatch thunk of CustomStringConvertible.description.getter();
      v193 = v192;
      v162(v185, v186);
      v194 = sub_1002FFA0C(v191, v193, &v344);

      *(v184 + 14) = v194;
      v195 = v337;
      _os_log_impl(&_mh_execute_header, v337, isa, "Lock advertising time: %s is before current time %s, ignoring peripheral", v184, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    if (qword_100501BF0 != -1)
    {
      swift_once();
    }

    sub_1002A1A18(0, 1);
    if (*(v7 + 17) != 1)
    {
      goto LABEL_131;
    }

    if (qword_100501960 != -1)
    {
LABEL_261:
      swift_once();
    }

    v156 = v315;
LABEL_128:
    sub_1000E8C60(843466310, 0xE400000000000000);
    if (v156)
    {
    }

    *(v7 + 17) = 0;
    sub_1002263E4(v197);
    goto LABEL_131;
  }

  v163 = Logger.logObject.getter();
  v164 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v163, v164))
  {
    v165 = swift_slowAlloc();
    v314 = swift_slowAlloc();
    *&v344 = v314;
    *v165 = 136315138;
    v166 = v338;
    Date.init(timeIntervalSince1970:)();
    sub_10022D9C4(&qword_100504F38, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v167 = v339;
    v168 = dispatch thunk of CustomStringConvertible.description.getter();
    v170 = v169;
    v162(v166, v167);
    v171 = sub_1002FFA0C(v168, v170, &v344);

    *(v165 + 4) = v171;
    _os_log_impl(&_mh_execute_header, v163, v164, "Validated dynamic tag expiry timestamp: %s", v165, 0xCu);
    sub_1000752F4(v314);
  }

  if (qword_100501BD8 != -1)
  {
    swift_once();
  }

  v307 = qword_10051B690;
  v312 = sub_10027C37C(v323, v324);
  v311 = v172;
  if (v172 >> 60 == 15)
  {

    v173 = v323;
    v174 = v324;
    sub_100069E2C(v323, v324);
    v175 = Logger.logObject.getter();
    v176 = static os_log_type_t.error.getter();
    sub_10006A178(v173, v174);
    if (os_log_type_enabled(v175, v176))
    {
      v177 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      *&v344 = v178;
      *v177 = 136315138;
      v341 = sub_100288788(v323, v324);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v179 = BidirectionalCollection<>.joined(separator:)();
      v181 = v180;

      v182 = sub_1002FFA0C(v179, v181, &v344);

      *(v177 + 4) = v182;
      _os_log_impl(&_mh_execute_header, v175, v176, "Reader ID %s, not in an express endpoint, ignoring peripheral", v177, 0xCu);
      sub_1000752F4(v178);
    }

    goto LABEL_131;
  }

  if (v328)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10014E510();
    sub_10022D9C4(&qword_100503608, sub_10014E510, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v196 = v347;
    v328 = v346;
    v308 = v348;
    v314 = v349;
    v339 = v350;
  }

  else
  {
    v199 = -1 << *(v332 + 32);
    v196 = v332 + 56;
    v200 = *(v332 + 56);
    v308 = ~v199;
    v201 = -v199;
    if (v201 < 64)
    {
      v202 = ~(-1 << v201);
    }

    else
    {
      v202 = -1;
    }

    v339 = v202 & v200;

    v314 = 0;
    v328 = v203;
  }

  v204 = (v308 + 64) >> 6;
  if (v312)
  {
    v205 = 0;
  }

  else
  {
    v205 = v311 == 0xC000000000000000;
  }

  v206 = !v205;
  v310 = v206;
  v338 = (v311 >> 62);
  v207 = __OFSUB__(HIDWORD(v312), v312);
  v306 = v207;
  v305 = HIDWORD(v312) - v312;
  v309 = BYTE6(v311);
  while ((v328 & 0x8000000000000000) != 0)
  {
    v210 = __CocoaSet.Iterator.next()();
    if (!v210)
    {
      goto LABEL_210;
    }

    v341 = v210;
    sub_10014E510();
    swift_dynamicCast();
    v340 = v344;
    v23 = v314;
    v313 = v339;
LABEL_158:
    if (!v340)
    {
LABEL_210:
      sub_100093854(v328);

      v229 = v312;
      v230 = v311;
      sub_10006A2BC(v312, v311);
      v231 = Logger.logObject.getter();
      v232 = static os_log_type_t.error.getter();
      sub_10006A2D0(v229, v230);
      if (os_log_type_enabled(v231, v232))
      {
        v233 = swift_slowAlloc();
        v234 = swift_slowAlloc();
        *&v344 = v234;
        *v233 = 136315138;
        v235 = v312;
        v236 = v311;
        sub_10006A2BC(v312, v311);
        v237 = Data.description.getter();
        v239 = v238;
        sub_10006A2D0(v235, v236);
        v240 = sub_1002FFA0C(v237, v239, &v344);

        *(v233 + 4) = v240;
        _os_log_impl(&_mh_execute_header, v231, v232, "Could not get endpoint for %s, express list may be invalid", v233, 0xCu);
        sub_1000752F4(v234);
      }

      sub_1000E1E2C();
      swift_allocError();
      *v241 = 2;
      swift_willThrow();
      sub_10006A178(v329, v327);
      sub_10006A178(v325, v326);
      sub_10006A178(v323, v324);
      sub_10006A178(v319, v320);
      sub_10006A178(v321, v322);
      sub_10006A2D0(v312, v311);
      goto LABEL_132;
    }

    v211 = [v340 publicKeyIdentifier];
    a1 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v212;

    v213 = v6 >> 62;
    if (v6 >> 62 == 3)
    {
      if (a1)
      {
        v214 = 0;
      }

      else
      {
        v214 = v6 == 0xC000000000000000;
      }

      v216 = !v214 || v338 < 3;
      if (((v216 | v310) & 1) == 0)
      {
        sub_100093854(v328);
        v242 = 0;
        v243 = 0xC000000000000000;
        goto LABEL_216;
      }

LABEL_178:
      v217 = 0;
      goto LABEL_179;
    }

    if (v213 > 1)
    {
      if (v213 != 2)
      {
        goto LABEL_178;
      }

      v219 = *(a1 + 16);
      v218 = *(a1 + 24);
      v54 = __OFSUB__(v218, v219);
      v217 = v218 - v219;
      if (v54)
      {
LABEL_263:
        __break(1u);
LABEL_264:
        __break(1u);
LABEL_265:
        __break(1u);
LABEL_266:
        __break(1u);
LABEL_267:
        __break(1u);
LABEL_268:
        __break(1u);
        goto LABEL_269;
      }
    }

    else if (v213)
    {
      LODWORD(v217) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_264;
      }

      v217 = v217;
    }

    else
    {
      v217 = BYTE6(v6);
    }

LABEL_179:
    if (v338 > 1)
    {
      if (v338 != 2)
      {
        if (!v217)
        {
          goto LABEL_215;
        }

LABEL_148:

        sub_10006A178(a1, v6);
        goto LABEL_149;
      }

      v222 = *(v312 + 16);
      v221 = *(v312 + 24);
      v54 = __OFSUB__(v221, v222);
      v220 = v221 - v222;
      if (v54)
      {
        __break(1u);
LABEL_260:
        __break(1u);
        goto LABEL_261;
      }
    }

    else
    {
      v220 = v309;
      if (v338)
      {
        v220 = v305;
        if (v306)
        {
          goto LABEL_260;
        }
      }
    }

    if (v217 != v220)
    {
      goto LABEL_148;
    }

    if (v217 < 1)
    {
      goto LABEL_215;
    }

    if (v213 > 1)
    {
      if (v213 == 2)
      {
        v223 = *(a1 + 16);
        v304 = *(a1 + 24);
        v224 = __DataStorage._bytes.getter();
        if (v224)
        {
          v225 = __DataStorage._offset.getter();
          if (__OFSUB__(v223, v225))
          {
            goto LABEL_267;
          }

          v224 += v223 - v225;
        }

        if (__OFSUB__(v304, v223))
        {
          goto LABEL_266;
        }

        goto LABEL_207;
      }

      *(&v344 + 6) = 0;
      *&v344 = 0;
    }

    else
    {
      if (v213)
      {
        if (a1 >> 32 < a1)
        {
          goto LABEL_265;
        }

        v304 = __DataStorage._bytes.getter();
        if (v304)
        {
          v226 = __DataStorage._offset.getter();
          if (__OFSUB__(a1, v226))
          {
            goto LABEL_268;
          }

          v224 = a1 - v226 + v304;
        }

        else
        {
          v224 = 0;
        }

LABEL_207:
        __DataStorage._length.getter();
        v228 = v315;
        sub_10019F024(v224, v312, v311, &v344);
        v315 = v228;
        sub_10006A178(a1, v6);
        if (v344)
        {
LABEL_217:
          sub_100093854(v328);
          goto LABEL_218;
        }

        goto LABEL_208;
      }

      *&v344 = a1;
      WORD4(v344) = v6;
      BYTE10(v344) = BYTE2(v6);
      BYTE11(v344) = BYTE3(v6);
      BYTE12(v344) = BYTE4(v6);
      BYTE13(v344) = BYTE5(v6);
    }

    v227 = v315;
    sub_10019F024(&v344, v312, v311, &v341);
    v315 = v227;
    sub_10006A178(a1, v6);
    if (v341)
    {
      goto LABEL_217;
    }

LABEL_208:

LABEL_149:
    v314 = v23;
    v339 = v313;
  }

  v23 = v314;
  v208 = v314;
  v209 = v339;
  if (v339)
  {
LABEL_155:
    v313 = (v209 - 1) & v209;
    v340 = *(*(v328 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v209)))));
    goto LABEL_158;
  }

  while (1)
  {
    v23 = v208 + 1;
    if (__OFADD__(v208, 1))
    {
      break;
    }

    if (v23 >= v204)
    {
      v339 = 0;
      goto LABEL_210;
    }

    v209 = *(v196 + 8 * v23);
    v208 = (v208 + 1);
    if (v209)
    {
      goto LABEL_155;
    }
  }

  __break(1u);
  swift_once();
  sub_1002A1A18(0, 1);
  if (*(v7 + 17) == 1)
  {
    if (qword_100501960 != -1)
    {
      goto LABEL_258;
    }

    goto LABEL_104;
  }

LABEL_131:
  sub_1000E1E2C();
  swift_allocError();
  *v198 = 2;
  swift_willThrow();
  sub_10006A178(v329, v327);
  sub_10006A178(v325, v326);
  sub_10006A178(v323, v324);
  sub_10006A178(v319, v320);
  sub_10006A178(v321, v322);
LABEL_132:
  sub_10006A178(v317, v318);
  sub_10006A178(v342, v343);
}

uint64_t sub_10022A3E8(uint64_t a1, __objc2_class **a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for UUID();
  v124 = *(v8 - 8);
  __chkstk_darwin(v8);
  v125 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v17 = *(v11 + 8);
  v16 = (v11 + 8);
  v17(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_73:
    swift_once();
    goto LABEL_13;
  }

  v16 = OBJC_IVAR____TtC10seserviced7LyonBLE_logger;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Lyon onCharacteristics", v20, 2u);
  }

  if (*(v5 + 16) != 1)
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "LyonBLE is not running", v32, 2u);
    }

    sub_100079E24();
    swift_allocError();
    *v33 = 0;
    goto LABEL_24;
  }

  if (*a2 == _TtC10seserviced8LyonPeer)
  {
    v13 = a2;
  }

  else
  {
    v13 = 0;
  }

  if (*a2 != _TtC10seserviced8LyonPeer)
  {

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v128[0] = v38;
      *v37 = 136315138;
      v39 = UUID.uuidString.getter();
      v41 = sub_1002FFA0C(v39, v40, v128);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "Missing Lyon peer %s", v37, 0xCu);
      sub_1000752F4(v38);
    }

    sub_1000E1E2C();
    swift_allocError();
    *v42 = 2;
LABEL_24:
    swift_willThrow();
    return v126;
  }

  v21 = qword_100501B88;

  if (v21 != -1)
  {
    goto LABEL_73;
  }

LABEL_13:
  v22 = sub_1000958E4(v8, qword_10051B5C8);
  if (!*(a1 + 16) || (v23 = sub_10008C808(v22), (v24 & 1) == 0))
  {

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v128[0] = v46;
      *v45 = 136315138;
      sub_10022D9C4(&unk_100507480, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v47 = Dictionary.description.getter();
      v49 = sub_1002FFA0C(v47, v48, v128);

      *(v45 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v43, v44, "PSMCharacteristicSupportedUwbProtocol not found %s", v45, 0xCu);
      sub_1000752F4(v46);
    }

    *(a2 + OBJC_IVAR____TtC10seserviced8LyonPeer_hasError) = 256;
    sub_100079E24();
    swift_allocError();
    *v50 = 0;
    swift_willThrow();
    goto LABEL_69;
  }

  v118 = v13;
  v25 = (*(a1 + 56) + 16 * v23);
  v27 = *v25;
  v26 = v25[1];
  v28 = v26 >> 62;
  if ((v26 >> 62) > 1)
  {
    if (v28 != 2)
    {
      goto LABEL_36;
    }

    v52 = *(v27 + 16);
    v51 = *(v27 + 24);
    v29 = v51 - v52;
    if (!__OFSUB__(v51, v52))
    {
      goto LABEL_34;
    }

    __break(1u);
  }

  else if (!v28)
  {
    v29 = BYTE6(v26);
    goto LABEL_35;
  }

  if (__OFSUB__(HIDWORD(v27), v27))
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v29 = HIDWORD(v27) - v27;
LABEL_34:
  sub_100069E2C(v27, v26);
LABEL_35:
  if (v29 > 4)
  {
    sub_100069E2C(v27, v26);
    LODWORD(v54) = sub_100090214(v27, v26, 0, 0, 0);
    if (v4)
    {
      sub_10006A178(v27, v26);
      goto LABEL_66;
    }

    goto LABEL_47;
  }

LABEL_36:
  sub_100069E2C(v27, v26);
  v53 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v53, v8))
  {
    sub_10006A178(v27, v26);
LABEL_65:

    *(a2 + OBJC_IVAR____TtC10seserviced8LyonPeer_hasError) = 256;
    sub_100079E24();
    swift_allocError();
    *v66 = 0;
    swift_willThrow();
    goto LABEL_66;
  }

  v54 = swift_slowAlloc();
  *v54 = 134217984;
  if (v28 <= 1)
  {
    if (!v28)
    {
      v55 = BYTE6(v26);
LABEL_64:
      *(v54 + 4) = v55;
      v65 = v54;
      sub_10006A178(v27, v26);
      _os_log_impl(&_mh_execute_header, v53, v8, "PSMCharacteristicSupportedUwbProtocol has invalid length %ld", v65, 0xCu);

      goto LABEL_65;
    }

    LODWORD(v55) = HIDWORD(v27) - v27;
    if (!__OFSUB__(HIDWORD(v27), v27))
    {
      v55 = v55;
      goto LABEL_64;
    }

    __break(1u);
LABEL_91:
    swift_once();
LABEL_84:
    if (qword_100501B90 != -1)
    {
      swift_once();
    }

    v124 = sub_1000958E4(v8, qword_10051B5E0);
    swift_beginAccess();
    v112 = v129;
    v111 = v130;
    v113 = v125;
    (v16[2].isa)(v125, v118 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v8);
    sub_1000F4EB4(v124, v112, v111, v113);
    (v16[1].isa)(v113, v8);
    sub_10006A178(v27, v123);

    sub_10006A178(v129, v130);
    return v126;
  }

  if (v28 != 2)
  {
    v55 = 0;
    goto LABEL_64;
  }

  v57 = *(v27 + 16);
  v56 = *(v27 + 24);
  v58 = __OFSUB__(v56, v57);
  v55 = v56 - v57;
  if (!v58)
  {
    goto LABEL_64;
  }

  __break(1u);
LABEL_47:
  LODWORD(v126) = v54;
  sub_10006A178(v27, v26);
  LOBYTE(v23) = Data._Representation.subscript.getter();
  v116 = v23 >> 1;
  if (qword_100501900 != -1)
  {
LABEL_89:
    v114 = v23;
    swift_once();
    LOBYTE(v23) = v114;
  }

  v121 = qword_10051B190;
  v59 = *(*(qword_10051B190 + 24) + 16);
  v123 = v26;
  v122 = v27;
  v120 = v59;
  if (v59 && v23 >= 2u)
  {
    v27 = 0;
    v117 = 0;
    v60 = v122;
    do
    {
      v119 = 2 * v117;
      while (1)
      {
        v26 = v123;
        sub_100069E2C(v60, v123);
        v61 = sub_100090214(v60, v26, v119 + 3, 0, 0);
        if (v4)
        {
          sub_10006A178(v60, v26);
          v67 = v60;
          goto LABEL_67;
        }

        v62 = v61;
        LOBYTE(v23) = sub_10006A178(v60, v26);
        v63 = v121[3];
        if (v27 >= *(v63 + 16))
        {
          __break(1u);
          goto LABEL_88;
        }

        v64 = *(v63 + 2 * v27 + 32);
        if (v64 <= v62)
        {
          break;
        }

        if (++v27 >= v120)
        {
          goto LABEL_75;
        }
      }

      if (v64 >= v62)
      {
        v70 = v118 + OBJC_IVAR____TtC10seserviced8LyonPeer_bleUwbProtocolVersion;
        *v70 = v62;
        v70[2] = 0;
        break;
      }

      if (v27 >= v120)
      {
        break;
      }

      ++v117;
    }

    while (v117 < v116);
  }

LABEL_75:
  if ((*(v118 + OBJC_IVAR____TtC10seserviced8LyonPeer_bleUwbProtocolVersion + 2) & 1) == 0)
  {
    v87 = *(v118 + OBJC_IVAR____TtC10seserviced8LyonPeer_bleUwbProtocolVersion);

    v88 = Data.subdata(in:)();
    v90 = v89;
    sub_1002B3208(v88, v89);
    sub_10006A178(v88, v90);

    LOWORD(v128[0]) = bswap32(v87) >> 16;
    v129 = sub_1002B1854(v128, v128 + 2);
    v130 = v91;
    LOBYTE(v128[0]) = 1;
    v92 = sub_1002B1854(v128, v128 + 1);
    v94 = v93;
    Data.append(_:)();
    sub_10006A178(v92, v94);
    LOBYTE(v128[0]) = 3;
    v95 = sub_1002B1854(v128, v128 + 1);
    v97 = v96;
    Data.append(_:)();
    sub_10006A178(v95, v97);
    v99 = v129;
    v98 = v130;
    sub_100069E2C(v129, v130);
    v100 = v98;
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.info.getter();
    sub_10006A178(v99, v100);
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v105 = v99;
      v106 = v104;
      v128[0] = v104;
      *v103 = 136315138;
      v121 = sub_100288788(v105, v100);
      v127 = v121;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v107 = BidirectionalCollection<>.joined(separator:)();
      v109 = v108;

      v110 = sub_1002FFA0C(v107, v109, v128);

      *(v103 + 4) = v110;
      _os_log_impl(&_mh_execute_header, v101, v102, "Writing BLE Supported Protocol Version %s", v103, 0xCu);
      sub_1000752F4(v106);
    }

    v16 = v124;
    v27 = v122;
    if (qword_100501960 == -1)
    {
      goto LABEL_84;
    }

    goto LABEL_91;
  }

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&_mh_execute_header, v71, v72, "No matching protocol version found", v73, 2u);
  }

  v27 = v122;
  v26 = v123;
  sub_100069E2C(v122, v123);
  v74 = sub_100090214(v27, v26, 3, 0, 0);
  sub_10006A178(v27, v26);
  if (v4)
  {
LABEL_66:
    v67 = v27;
LABEL_67:
    v68 = v26;
    goto LABEL_68;
  }

  v126 = sub_10013044C(0xD000000000000012, 0x8000000100461630);
  v76 = v75;
  v77 = *(v118 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v78 = *(v118 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100409900;
  *(inited + 32) = 0xD000000000000020;
  *(inited + 40) = 0x80000001004616D0;
  LOWORD(v128[0]) = v74;
  sub_10006A2BC(v77, v78);
  result = dispatch thunk of CustomStringConvertible.description.getter();
  *(inited + 48) = result;
  *(inited + 56) = v80;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD000000000000020;
  *(inited + 88) = 0x8000000100461750;
  v81 = v121[3];
  if (*(v81 + 16))
  {
    LOWORD(v128[0]) = *(v81 + 32);
    v82 = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 120) = &type metadata for String;
    *(inited + 96) = v82;
    *(inited + 104) = v83;
    v84 = sub_10008FFDC(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100507D30, &unk_100409C90);
    swift_arrayDestroy();
    v85 = v126;
    sub_1003375E0(0xD000000000000042, 0x8000000100468480, v126, v76, v77, v78, v84);

    sub_10006A2D0(v77, v78);
    sub_10006A2D0(v85, v76);
    *(v118 + OBJC_IVAR____TtC10seserviced8LyonPeer_hasError) = 256;
    sub_100079E24();
    swift_allocError();
    *v86 = 0;
    swift_willThrow();
    v67 = v122;
    v68 = v123;
LABEL_68:
    sub_10006A178(v67, v68);
LABEL_69:

    return v126;
  }

  __break(1u);
  return result;
}

void sub_10022B4DC(uint64_t a1, __objc2_class **a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (*(v2 + 16) == 1 && *a2 == _TtC10seserviced8LyonPeer)
  {
    if (a1)
    {

      v11 = v2;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v29 = v15;
        *v14 = 136315138;

        v16 = UUID.uuidString.getter();
        v18 = v17;

        v19 = sub_1002FFA0C(v16, v18, &v29);

        *(v14 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v12, v13, "Error during channel open attempt to %s", v14, 0xCu);
        sub_1000752F4(v15);
      }

      if ((*(a2 + OBJC_IVAR____TtC10seserviced8LyonPeer_hasError) & 0x100) == 0)
      {
        if (qword_100501BF0 != -1)
        {
          swift_once();
        }

        sub_1002A1A18(0, 1);
        if (*(v11 + 17) == 1)
        {
          if (qword_100501960 != -1)
          {
            swift_once();
          }

          sub_1000E8C60(843466310, 0xE400000000000000);
          *(v11 + 17) = 0;
          sub_1002263E4(v20);
        }
      }

LABEL_23:

      return;
    }

    v24 = qword_100501D78;

    if (v24 == -1)
    {
LABEL_20:
      v29 = a2;
      v26 = *(off_10050B110 + 3);
      __chkstk_darwin(v25);
      *(&v28 - 2) = v27;
      *(&v28 - 1) = &v29;
      os_unfair_lock_lock((v26 + 32));
      sub_10022D94C((v26 + 16));
      os_unfair_lock_unlock((v26 + 32));
      if (qword_1005018F8 != -1)
      {
        swift_once();
      }

      sub_100089040(a2);
      goto LABEL_23;
    }

LABEL_25:
    v25 = swift_once();
    goto LABEL_20;
  }

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "LyonBLE is not running", v23, 2u);
  }
}

void sub_10022B998(int64_t a1, unint64_t a2, __objc2_class **a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(v4 + 16) == 1 && *a3 == _TtC10seserviced8LyonPeer)
  {
    v14 = qword_1005018F8;

    if (v14 == -1)
    {
LABEL_7:
      sub_1000832B0(a1, a2, a3);
      goto LABEL_11;
    }

LABEL_13:
    swift_once();
    goto LABEL_7;
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = *(v4 + 16);

    _os_log_impl(&_mh_execute_header, v15, v16, "LyonBLE is running: %{BOOL}d or LyonPeer could not be cast", v17, 8u);

    return;
  }

LABEL_11:
}

void sub_10022BC2C(__objc2_class **a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
LABEL_7:
    sub_100089F1C(a1);
    if (qword_100501D78 != -1)
    {
      v10 = swift_once();
    }

    v17 = a1;
    v11 = *(off_10050B110 + 3);
    __chkstk_darwin(v10);
    *(&v16 - 2) = &v17;
    *(&v16 - 1) = v12;
    os_unfair_lock_lock((v11 + 32));
    sub_10022D904((v11 + 16));
    os_unfair_lock_unlock((v11 + 32));

    return;
  }

  if (*(v1 + 16) == 1)
  {
    if (*a1 != _TtC10seserviced8LyonPeer)
    {
      return;
    }

    v9 = qword_1005018F8;

    if (v9 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "LyonBLE is not running", v15, 2u);
  }
}

uint64_t sub_10022BF08(uint64_t a1, uint64_t a2, uint64_t a3, __objc2_class **a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_6;
  }

  if (*a4 != _TtC10seserviced8LyonPeer)
  {
    return result;
  }

  v15 = qword_100501950;

  if (v15 != -1)
  {
    goto LABEL_9;
  }

LABEL_6:
  sub_1000CCCE0(a1, a2, a3, a4);
}

void sub_10022C0EC(uint64_t a1, __objc2_class **a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    if (*(v2 + 16) == 1)
    {
      if (*a2 == _TtC10seserviced8LyonPeer)
      {

        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v29[0] = swift_slowAlloc();
          *v13 = 136315394;
          v27 = a1 & 1;
          v14 = String.init<A>(describing:)();
          v16 = sub_1002FFA0C(v14, v15, v29);

          *(v13 + 4) = v16;
          *(v13 + 12) = 2080;

          v17 = UUID.uuidString.getter();
          v19 = v18;

          v20 = sub_1002FFA0C(v17, v19, v29);

          *(v13 + 14) = v20;
          _os_log_impl(&_mh_execute_header, v11, v12, "Lyon received RSSI update: %s for %s", v13, 0x16u);
          swift_arrayDestroy();
        }

        if (a1)
        {
          *(a2 + OBJC_IVAR____TtC10seserviced8LyonPeer_rangingIntentRequested) = 0;
          if (qword_100501950 != -1)
          {
            swift_once();
          }

          sub_1000CF8F4(a2);
        }

        else
        {
          *(a2 + OBJC_IVAR____TtC10seserviced8LyonPeer_rangingIntentRequested) = 1;
          if (qword_100501950 != -1)
          {
            swift_once();
          }

          sub_1000C8E3C(a2);
        }
      }
    }

    else
    {
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "LyonBLE is not running", v25, 2u);
      }
    }
  }

  else
  {
    __break(1u);
    swift_once();
    v29[0] = a1;
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    if (swift_dynamicCast())
    {
      v21 = v27;
      if (v28)
      {
        v22 = 256;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    sub_100080E48(a2, v22 | v21);
  }
}

void sub_10022C6BC(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  v9 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((*(v1 + OBJC_IVAR____TtC10seserviced7LyonBLE_disableScanFiltering) & 1) != 0 || (v10 = *(a1 + 16)) == 0)
  {
    if (qword_100501960 == -1)
    {
LABEL_10:
      sub_1000F6AA4(1uLL, 0, 0, 0, 0);
      return;
    }

LABEL_12:
    swift_once();
    goto LABEL_10;
  }

  if (qword_100501960 == -1)
  {
    if (v10 > 8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    swift_once();
    if (v10 > 8)
    {
LABEL_8:
      v11 = &_swiftEmptySetSingleton;
LABEL_28:
      sub_1000F6AA4(1uLL, 843466310, 0xE400000000000000, 136, v11);

      return;
    }
  }

  v12 = a1 + 56;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v16 = OBJC_IVAR____TtC10seserviced7LyonBLE_logger;
  v17 = (v13 + 63) >> 6;

  v18 = 0;
  v43 = _swiftEmptyArrayStorage;
  *&v19 = 136315138;
  v44 = v19;
  v46 = a1 + 56;
  v47 = a1;
  v45 = v16;
  v48 = v1;
  for (i = v17; ; v17 = i)
  {
    v20 = v18;
    if (!v15)
    {
      break;
    }

LABEL_21:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v22 = (*(a1 + 48) + ((v18 << 10) | (16 * v21)));
    v24 = *v22;
    v23 = v22[1];
    sub_100069E2C(*v22, v23);
    sub_100226C50(v24, v23);
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    sub_10006A178(v24, v23);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_10012EB50(0, *(v43 + 2) + 1, 1, v43);
    }

    v34 = *(v43 + 2);
    v33 = *(v43 + 3);
    if (v34 >= v33 >> 1)
    {
      v41 = sub_10012EB50((v33 > 1), v34 + 1, 1, v43);
      v38 = v26;
      v37 = v28;
      v36 = v30;
      v43 = v41;
      v35 = v32;
    }

    else
    {
      v35 = v32;
      v36 = v30;
      v37 = v28;
      v38 = v26;
    }

    v12 = v46;
    a1 = v47;
    v39 = v43;
    *(v43 + 2) = v34 + 1;
    v40 = &v39[32 * v34];
    *(v40 + 4) = v35;
    *(v40 + 5) = v36;
    *(v40 + 6) = v37;
    *(v40 + 7) = v38;
  }

  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v17)
    {

      v11 = sub_1000E0110(v43);

      goto LABEL_28;
    }

    v15 = *(v12 + 8 * v18);
    ++v20;
    if (v15)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
}

NSData sub_10022CC5C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  result.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v60 = result.super.isa;
  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v14 = 0;
    if (v13 != 2)
    {
      goto LABEL_10;
    }

    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    v14 = v15 - v16;
    if (!__OFSUB__(v15, v16))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v13)
  {
    v14 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
    goto LABEL_23;
  }

  v14 = HIDWORD(a1) - a1;
LABEL_10:
  result.super.isa = [objc_allocWithZone(NSMutableData) initWithLength:v14];
  if (!result.super.isa)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v17 = result.super.isa;
  sub_100069E2C(a3, a4);
  sub_100069E2C(a5, a6);
  sub_100069E2C(a1, a2);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  sub_10006A178(a3, a4);
  sub_10006A178(a5, a6);
  sub_10006A178(a1, a2);
  v57 = a6;
  v58 = a5;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v20 = 136643331;
    sub_100288788(a3, a4);
    log = v18;
    v55 = v19;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v21 = BidirectionalCollection<>.joined(separator:)();
    v22 = a6;
    v24 = v23;

    v25 = sub_1002FFA0C(v21, v24, &v62);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2081;
    sub_100288788(v58, v22);
    v26 = BidirectionalCollection<>.joined(separator:)();
    v28 = v27;

    v29 = sub_1002FFA0C(v26, v28, &v62);

    *(v20 + 14) = v29;
    *(v20 + 22) = 2081;
    sub_100288788(a1, a2);
    v30 = BidirectionalCollection<>.joined(separator:)();
    v32 = v31;

    v33 = sub_1002FFA0C(v30, v32, &v62);

    *(v20 + 24) = v33;
    _os_log_impl(&_mh_execute_header, log, v55, "Validating GRK with grk:%{sensitive}s, given Dynamic Tag:%{private}s, plaintextData:%{private}s", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v34 = v60;
  v35 = isa;
  if (CCCrypt(0, 0, 0, [(objc_class *)v60 bytes], [(objc_class *)v60 length], 0, [(objc_class *)isa bytes], [(objc_class *)isa length], [(objc_class *)v17 mutableBytes], [(objc_class *)v17 length], 0))
  {
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "GRK encryption failed", v38, 2u);
    }

    v39 = 0;
  }

  else
  {
    v40 = v17;
    v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = Data.subdata(in:)();
    v46 = v45;
    sub_10006A178(v41, v43);
    sub_100069E2C(v44, v46);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    sub_10006A178(v44, v46);
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v62 = v50;
      *v49 = 136315138;
      sub_100288788(v44, v46);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      v59 = v40;
      v34 = v60;
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v51 = BidirectionalCollection<>.joined(separator:)();
      v53 = v52;

      v54 = sub_1002FFA0C(v51, v53, &v62);
      v40 = v59;

      *(v49 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v47, v48, "Derived dynamic tag: %s", v49, 0xCu);
      sub_1000752F4(v50);
      v35 = isa;
    }

    v39 = sub_10008FB4C(v58, v57, v44, v46);
    sub_10006A178(v44, v46);
    v17 = v35;
    v35 = v34;
    v34 = v40;
  }

  return v39;
}

uint64_t sub_10022D308(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC10seserviced7LyonBLE_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  sub_10006A2D0(*(v2 + OBJC_IVAR____TtC10seserviced7LyonBLE_readerGroupIdentifierMask), *(v2 + OBJC_IVAR____TtC10seserviced7LyonBLE_readerGroupIdentifierMask + 8));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LyonBLE(uint64_t a1)
{
  result = qword_1005075C8;
  if (!qword_1005075C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10022D41C(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_10022D4F0(int *a1, int a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = __DataStorage._bytes.getter();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = __DataStorage._offset.getter();
  v9 = v4 - v8;
  if (__OFSUB__(v4, v8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v5 - v4;
  v11 = __DataStorage._length.getter();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v7 + v9), a2, v12);
}

uint64_t sub_10022D598(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      return Data._Representation.replaceSubrange(_:with:count:)();
    }

    goto LABEL_10;
  }

  if (v5 == 2)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    a1 = __DataStorage._bytes.getter();
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      if (__OFSUB__(v6, a1))
      {
        goto LABEL_16;
      }
    }

    if (!__OFSUB__(v7, v6))
    {
LABEL_13:
      __DataStorage._length.getter();
      return Data._Representation.replaceSubrange(_:with:count:)();
    }

    __break(1u);
LABEL_10:
    v8 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v8, __DataStorage._offset.getter()))
      {
        goto LABEL_13;
      }

LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return Data._Representation.replaceSubrange(_:with:count:)();
}

uint64_t sub_10022D78C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  v7 = sub_1002230A4(v3);
  (*(v4 + 32))(&v7, ObjectType, v4);
}

uint64_t sub_10022D830(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  v7 = sub_1002230A4(v3);
  (*(v4 + 16))(&v7, ObjectType, v4);
}

uint64_t sub_10022D934(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10022D96C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10022D9C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_10022DA5C(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v37 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v45 = _swiftEmptyArrayStorage;
    sub_10019F420(0, v6 & ~(v6 >> 63), 0);
    v40 = v45;
    if (v38)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      result = _HashTable.startBucket.getter();
      v8 = *(a1 + 36);
    }

    v42 = result;
    v43 = v8;
    v44 = v38 != 0;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v35 = v37 + 32;
      v36 = (v37 + 16);
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v10 = a1;
      }

      v32 = a1 + 56;
      v33 = v10;
      v30 = v1;
      v31 = a1 + 64;
      v34 = v6;
      while (v9 < v6)
      {
        if (__OFADD__(v9++, 1))
        {
          goto LABEL_37;
        }

        v13 = v42;
        v14 = v44;
        v39 = v43;
        v15 = sub_10008EDB4(v42, v43, v44, a1);
        (*v36)(v5, v15 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v3);

        v16 = v40;
        v45 = v40;
        v18 = v40[2];
        v17 = v40[3];
        if (v18 >= v17 >> 1)
        {
          sub_10019F420((v17 > 1), v18 + 1, 1);
          v16 = v45;
        }

        v16[2] = v18 + 1;
        v19 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v40 = v16;
        result = (*(v37 + 32))(v16 + v19 + *(v37 + 72) * v18, v5, v3);
        if (v38)
        {
          if (!v14)
          {
            goto LABEL_42;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v6 = v34;
          sub_100068FC4(&qword_100502C08, &qword_100409CC8);
          v11 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v11(v41, 0);
          if (v9 == v6)
          {
LABEL_34:
            sub_1000937D4(v42, v43, v44);
            return v40;
          }
        }

        else
        {
          if (v14)
          {
            goto LABEL_43;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v20 = (1 << *(a1 + 32));
          if (v13 >= v20)
          {
            goto LABEL_38;
          }

          v21 = v13 >> 6;
          v22 = *(v32 + 8 * (v13 >> 6));
          if (((v22 >> v13) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(a1 + 36) != v39)
          {
            goto LABEL_40;
          }

          v23 = v22 & (-2 << (v13 & 0x3F));
          if (v23)
          {
            v20 = (__clz(__rbit64(v23)) | v13 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v24 = v21 << 6;
            v25 = v21 + 1;
            v26 = (v31 + 8 * v21);
            while (v25 < (v20 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                result = sub_1000937D4(v13, v39, 0);
                v20 = (__clz(__rbit64(v27)) + v24);
                goto LABEL_33;
              }
            }

            result = sub_1000937D4(v13, v39, 0);
          }

LABEL_33:
          v29 = *(a1 + 36);
          v42 = v20;
          v43 = v29;
          v44 = 0;
          v6 = v34;
          if (v9 == v34)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

void sub_10022DE8C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for Peer(0);
    sub_10023E228(&qword_100503F20, type metadata accessor for Peer, &unk_1004109B0);
    Set.Iterator.init(_cocoa:)();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for Peer(0), swift_dynamicCast(), !v12))
    {
LABEL_21:
      sub_100093854(v1);
      return;
    }

LABEL_16:
    type metadata accessor for AlishaPeer(0);
    if (swift_dynamicCastClass())
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));

    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_10022E104(void (*a1)(char *, uint64_t), int a2)
{
  v3 = v2;
  LODWORD(v62) = a2;
  v65 = a1;
  v4 = *v2;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v11 = *(v6 + 104);
  v11(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v63 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_41:
    swift_once();
    goto LABEL_7;
  }

  v60 = v10;
  v61 = v6 + 104;
  v57 = v4;
  v13 = OBJC_IVAR____TtC10seserviced6Alisha_logger;

  v64 = v13;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  v16 = os_log_type_enabled(v14, v15);
  v58 = v12;
  v59 = v11;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v66[0] = v18;
    *v17 = 136315138;
    v19 = UUID.uuidString.getter();
    v21 = v5;
    v22 = v3;
    v23 = sub_1002FFA0C(v19, v20, v66);

    *(v17 + 4) = v23;
    v3 = v22;
    v5 = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "Peer paired %s", v17, 0xCu);
    sub_1000752F4(v18);
  }

  v24 = qword_1005019E8;

  if (v24 != -1)
  {
    goto LABEL_41;
  }

LABEL_7:
  v25 = swift_allocObject();
  v26 = v65;
  *(v25 + 16) = sub_10023F6F8;
  *(v25 + 24) = v26;

  v27 = sub_1000CAA04();

  v28 = sub_1000CA810(v27);
  if (!v28)
  {
  }

  v29 = v28;
  v65 = [objc_allocWithZone(SESConfigDCK) init];
  v30 = sub_10022FF88(v29, v65);
  *&v30[OBJC_IVAR____TtC10seserviced10AlishaPeer_version] = v62;
  v31 = [v29 getEndpointUser];
  if (!v31)
  {
    v30[OBJC_IVAR____TtC10seserviced4Peer_expressState] = 1;
  }

  v64 = v3;
  if (qword_100501D78 != -1)
  {
    v31 = swift_once();
  }

  v66[0] = v30;
  v32 = *(off_10050B110 + 3);
  __chkstk_darwin(v31);
  v62 = v33;
  *(&v57 - 2) = v33;
  *(&v57 - 1) = v66;
  os_unfair_lock_lock((v32 + 32));
  sub_10023FAA4((v32 + 16));
  os_unfair_lock_unlock((v32 + 32));
  if (qword_100501B98 != -1)
  {
    swift_once();
  }

  v34 = qword_10051B5F8;
  sub_100252B08(v30, 0, 1);
  if (qword_100501BA0 != -1)
  {
    swift_once();
  }

  v35 = qword_10051B600;
  v36 = v63;
  *v8 = v63;
  v59(v8, v60, v5);
  v37 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  v58(v8, v5);
  if (v36)
  {
    if (qword_100501B70 == -1)
    {
      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_20:
  v38 = qword_10051B5B0;

  v39 = sub_10024F2B4(v38, v30);

  v40 = sub_1000CA828(v39);

  if (v40)
  {
    type metadata accessor for UWBAlishaSession();
    if (swift_dynamicCastClass())
    {
      v67 = type metadata accessor for AlishaUWB(0);
      v68 = &off_1004CD000;
      v66[0] = v35;

      sub_1002473F0(v30, v66);

      sub_1000752F4(v66);
    }

    else
    {
    }
  }

  v41 = sub_1000CAAC4();

  sub_100239364(v41, v34);
  v43 = v42;

  if (qword_100501960 != -1)
  {
    swift_once();
  }

  v44 = sub_10022DA5C(v41);
  v45 = sub_1000E0348(v44);

  v48 = sub_100238B50(v43, v46, v47);

  if ((v48 & 0x100) != 0)
  {
    v49 = -120;
  }

  else
  {
    v49 = v48;
  }

  sub_1000F6564(0, v45, v49);

  if (qword_100501928 != -1)
  {
    swift_once();
  }

  v67 = v57;
  v68 = &off_1004CC6C0;
  v66[0] = v64;

  sub_1000BAF34(v66, 0);
  sub_1000752F4(v66);
  v50 = objc_opt_self();
  sub_10004D584(v50, @"connectionCount");
  if (qword_100501A58 != -1)
  {
    swift_once();
  }

  result = sub_10013044C(0xD00000000000001ALL, 0x80000001004629D0);
  if (v52 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v53 = result;
    v54 = v52;

    v55 = sub_1001C1BA4(v53, v54);
    sub_10006A2D0(v53, v54);
    if (*(v55 + 16) == 1)
    {
      if (qword_1005018F0 != -1)
      {
        swift_once();
      }

      sub_100076084(v56);
    }
  }

  return result;
}

void sub_10022EB94()
{
  v0 = objc_opt_self();

  sub_10004EBC8(v0, 0);
}

uint64_t sub_10022EC08(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_100068FC4(&unk_100503FA0, &unk_10040B2F0);
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a4;
  v7[4] = a3;

  v8 = a3;
  sub_1000D5684(&v10, v7);
}

uint64_t sub_10022ECB0(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_10023F09C, v4);
}

uint64_t sub_10022ED44()
{
  type metadata accessor for Alisha(0);
  swift_allocObject();
  result = sub_10022EDF4();
  qword_10051B5A0 = result;
  return result;
}

void sub_10022ED84()
{
  v0 = objc_allocWithZone(NSBackgroundActivityScheduler);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithIdentifier:v1];

  qword_1005076C8 = v2;
}

uint64_t sub_10022EDF4()
{
  *(v0 + 16) = 0;
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC10seserviced6Alisha_isLowPowerModeEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced6Alisha_isPairingInProgress) = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced6Alisha_maxMessageLength) = 1024;
  *(v0 + OBJC_IVAR____TtC10seserviced6Alisha_powerLogTimer) = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced6Alisha_powerLogTimerInterval) = 0x40DC200000000000;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v3[4] = sub_10023BB6C;
  v3[5] = v0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100193978;
  v3[3] = &unk_1004CC6D0;
  v1 = _Block_copy(v3);

  os_state_add_handler();
  _Block_release(v1);
  return v0;
}

_DWORD *sub_10022EF64()
{
  v1 = *(v0 + 16);
  v12 = &type metadata for Bool;
  LOBYTE(v11) = v1;
  sub_100075D50(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v10, 0x6E696E6E75527369, 0xE900000000000067, isUniquelyReferenced_nonNull_native);
  v3 = *(v0 + OBJC_IVAR____TtC10seserviced6Alisha_isLowPowerModeEnabled);
  v12 = &type metadata for Bool;
  LOBYTE(v11) = v3;
  sub_100075D50(&v11, v10);
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v10, 0xD000000000000015, 0x8000000100468590, v4);
  v5 = *(v0 + OBJC_IVAR____TtC10seserviced6Alisha_isPairingInProgress);
  v12 = &type metadata for Bool;
  LOBYTE(v11) = v5;
  sub_100075D50(&v11, v10);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v10, 0xD000000000000013, 0x80000001004685B0, v6);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = sub_100015DA0("alisha.state", isa);

  return v8;
}

void sub_10022F108()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v5 = qword_10051B7F0;
  *v4 = qword_10051B7F0;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (qword_100501B68 != -1)
  {
LABEL_7:
    swift_once();
  }

  v7 = qword_1005076C8;
  [qword_1005076C8 setPreregistered:1];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_10023F05C;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10022ECB0;
  aBlock[3] = &unk_1004CC7C0;
  v9 = _Block_copy(aBlock);

  [v7 scheduleWithBlock:v9];
  _Block_release(v9);
}

void sub_10022F334()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v7 = qword_10051B7F0;
    *v6 = qword_10051B7F0;
    v8 = enum case for DispatchPredicate.onQueue(_:);
    v9 = v4 + 104;
    v54 = *(v4 + 13);
    v54(v6, enum case for DispatchPredicate.onQueue(_:), v3);
    v55 = v7;
    LOBYTE(v7) = _dispatchPreconditionTest(_:)();
    v11 = *(v4 + 1);
    v10 = v4 + 8;
    v53 = v11;
    v11(v6, v3);
    if ((v7 & 1) == 0)
    {
      __break(1u);
LABEL_57:
      v18 = swift_once();
      goto LABEL_10;
    }

    v51 = v8;
    v52 = v9;
    v12 = *(v1 + 16);
    v13 = Logger.logObject.getter();
    if (v12)
    {
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Alisha is already running", v15, 2u);
      }

      return;
    }

    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v13, v16, "Starting Alisha", v17, 2u);
    }

    *(v1 + 16) = 1;
    if (qword_1005019E8 != -1)
    {
      goto LABEL_57;
    }

LABEL_10:
    v19 = *(off_100504A68 + 3);
    __chkstk_darwin(v18);
    v20 = v55;
    v46[-2] = v1;
    v46[-1] = v20;
    os_unfair_lock_lock(v19 + 8);
    v21 = 0;
    sub_10023EFA0(&v19[4]);
    os_unfair_lock_unlock(v19 + 8);
    sub_100238F20(v1);
    v22 = sub_1000CAA04();
    v23 = v22;
    v24 = v22 & 0xC000000000000001;
    if ((v22 & 0xC000000000000001) != 0)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_15;
      }
    }

    else if (!*(v22 + 16))
    {
LABEL_15:

      goto LABEL_35;
    }

    v47 = v2;
    v49 = v10;
    v50 = v3;
    v56 = [objc_allocWithZone(SESConfigDCK) init];
    v48 = v6;
    v46[2] = v23;
    if (v24)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
      sub_10023EFC4();
      Set.Iterator.init(_cocoa:)();
      v23 = v58[6];
      v2 = v58[7];
      v25 = v58[8];
      v26 = v58[9];
      v4 = v58[10];
    }

    else
    {
      v27 = -1 << *(v23 + 32);
      v2 = (v23 + 56);
      v25 = ~v27;
      v28 = -v27;
      v29 = v28 < 64 ? ~(-1 << v28) : -1;
      v4 = (v29 & *(v23 + 56));

      v26 = 0;
    }

    v46[1] = v25;
    v6 = ((v25 + 64) >> 6);
    if (v23 < 0)
    {
      break;
    }

LABEL_21:
    v30 = v26;
    v31 = v4;
    v32 = v26;
    if (v4)
    {
LABEL_25:
      v3 = (v31 - 1) & v31;
      v33 = *(*(v23 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v31)))));
      if (v33)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }

    while (1)
    {
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v32 >= v6)
      {
        goto LABEL_31;
      }

      v31 = *&v2[8 * v32];
      ++v30;
      if (v31)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_55:
    swift_once();
  }

  while (1)
  {
    v34 = __CocoaSet.Iterator.next()();
    if (!v34)
    {
      break;
    }

    v57 = v34;
    sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
    swift_dynamicCast();
    v33 = v58[0];
    v32 = v26;
    v3 = v4;
    if (!v58[0])
    {
      break;
    }

LABEL_29:
    v58[0] = v33;
    sub_10022FB8C(v58, v1, v56);

    v26 = v32;
    v4 = v3;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_31:
  sub_100093854(v23);

  v6 = v48;
  if (qword_100501928 != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v58[3] = v47;
    v58[4] = &off_1004CC6C0;
    v58[0] = v1;

    sub_1000BAF34(v58, 0);
    v3 = v50;
    if (v21)
    {
    }

    sub_1000752F4(v58);
LABEL_35:
    if (qword_100501B98 != -1)
    {
      swift_once();
    }

    sub_100251F90();
    if (qword_100501C80 != -1)
    {
      swift_once();
    }

    sub_1002DB638();
    if (qword_100501BA0 != -1)
    {
      swift_once();
    }

    sub_100255BA4();
    if (qword_100501948 != -1)
    {
      swift_once();
    }

    sub_1000C2F00();
    sub_10022F108();
    sub_1002305D4();
    if (qword_100501960 != -1)
    {
      swift_once();
    }

    v21 = qword_10051B288;
    v35 = v54;
    v36 = v55;
    *v6 = v55;
    v35(v6, v51, v3);
    v37 = v36;
    LOBYTE(v36) = _dispatchPreconditionTest(_:)();
    v53(v6, v3);
    if (v36)
    {
      break;
    }

    __break(1u);
LABEL_59:
    swift_once();
  }

  v38 = *(v21 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralState);
  if (v38 == 10 || v38 == 5)
  {
    v39 = objc_opt_self();
    sub_10004EBC8(v39, 0);
  }

  else
  {
    v40 = OBJC_IVAR____TtC10seserviced6DSKBLE_closuresOnCentralState;
    swift_beginAccess();
    v41 = *(v21 + v40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v21 + v40) = v41;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v41 = sub_10012E6B0(0, v41[2] + 1, 1, v41);
      *(v21 + v40) = v41;
    }

    v44 = v41[2];
    v43 = v41[3];
    if (v44 >= v43 >> 1)
    {
      v41 = sub_10012E6B0((v43 > 1), v44 + 1, 1, v41);
    }

    v41[2] = v44 + 1;
    v45 = &v41[3 * v44];
    *(v45 + 32) = 1;
    v45[5] = sub_10022EB94;
    v45[6] = 0;
    *(v21 + v40) = v41;
    swift_endAccess();
  }
}

void sub_10022FB8C(char **a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v4 = *a1;
  v5 = sub_10022FF88(*a1, a3);
  if (v3)
  {

    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v9 = 136315138;
      v10 = [v6 publicKeyIdentifier];
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      sub_100288788(v11, v13);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v14 = BidirectionalCollection<>.joined(separator:)();
      v16 = v15;
      sub_10006A178(v11, v13);

      v17 = sub_1002FFA0C(v14, v16, &v31);

      *(v9 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to initialize peer for %s", v9, 0xCu);
      sub_1000752F4(v30);
    }

    else
    {
    }
  }

  else
  {
    v18 = v5;
    v19 = qword_100501D78;
    v20 = swift_retain_n();
    if (v19 != -1)
    {
      v20 = swift_once();
    }

    v31 = v18;
    v21 = *(off_10050B110 + 3);
    __chkstk_darwin(v20);
    os_unfair_lock_lock((v21 + 32));
    sub_10023F02C((v21 + 16));
    os_unfair_lock_unlock((v21 + 32));
    v22 = [v4 supportedRKEFunctions];
    if (v22 && ((v23 = v22, sub_10009393C(0, &qword_100504C80, NSNumber_ptr), v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v23, v24 >> 62) ? (v25 = _CocoaArrayWrapper.endIndex.getter()) : (v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v25))
    {
      v26 = *(v18 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier);
      v27 = *(v18 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8);
      sub_10006A2BC(v26, v27);

      v28 = *(v18 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
      v29 = *(v18 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
      sub_10006A2BC(v28, v29);

      sub_1003375E0(0xD000000000000042, 0x80000001004612F0, v26, v27, v28, v29, 0);

      sub_10006A2D0(v28, v29);
      sub_10006A2D0(v26, v27);
    }

    else
    {
    }
  }
}

char *sub_10022FF88(char *a1, void (*a2)(char *, uint64_t))
{
  v79 = a2;
  v4 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v4 - 8);
  v6 = &v71 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v71 - v12;
  v15 = __chkstk_darwin(v14);
  v17 = &v71 - v16;
  v80 = a1;
  v18 = [a1 bleUUID];
  if (!v18)
  {
    goto LABEL_6;
  }

  v78 = v17;
  a1 = v18;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v8;

  UUID.init(uuidString:)();
  v19 = v81;

  if ((*(v19 + 48))(v6, 1, v7) == 1)
  {
    sub_100075768(v6, &unk_10050BE80, &unk_10040B360);
LABEL_6:
    sub_100079E24();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
    return a1;
  }

  a1 = v78;
  (*(v19 + 32))(v78, v6, v7);
  v20 = v80;
  v21 = sub_100235DE8(v80);
  if (v2)
  {

    (*(v19 + 8))(a1, v7);
    goto LABEL_6;
  }

  v27 = v21;
  v72 = v24;
  v73 = v23;
  v74 = v22;
  v77 = *(v19 + 16);
  v75 = v19 + 16;
  v77(v13, a1, v7);
  v28 = [v20 readerConfigID];
  if (v28)
  {
    v29 = v28;
    v76 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
  }

  else
  {
    v76 = 0;
    v31 = 0xF000000000000000;
  }

  type metadata accessor for AlishaPeer(0);
  v32 = swift_allocObject();
  *(v32 + OBJC_IVAR____TtC10seserviced10AlishaPeer_version) = 256;
  type metadata accessor for AlishaPeer.Configuration();
  v33 = swift_allocObject();
  *(v33 + 64) = 0;
  *(v33 + 72) = _swiftEmptyArrayStorage;
  *(v33 + 80) = 0;
  *(v33 + 88) = _swiftEmptyDictionarySingleton;
  *(v33 + 96) = xmmword_10040FBF0;
  *(v33 + 112) = 0;
  v35 = v73;
  v34 = v74;
  *(v33 + 16) = v27;
  *(v33 + 24) = v34;
  v36 = v72;
  *(v33 + 32) = v35;
  *(v33 + 40) = v36;
  v37 = v76;
  *(v33 + 48) = v76;
  *(v33 + 56) = v31;
  sub_10006A2BC(v37, v31);
  sub_10006A2BC(v37, v31);
  sub_10006A2D0(0, 0xF000000000000000);
  sub_100286CD0(v79, 0, 0xF000000000000000);
  sub_10006A2D0(v37, v31);
  *(v32 + OBJC_IVAR____TtC10seserviced10AlishaPeer_configuration) = v33;
  v77(v10, v13, v7);
  a1 = sub_10025CF18(v10);
  sub_10006A2D0(v37, v31);
  v38 = *(v81 + 8);
  v81 += 8;
  v79 = v38;
  (v38)(v13, v7);

  v39 = sub_10013044C(0xD00000000000001ALL, 0x80000001004629D0);
  v40 = &a1[OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier];
  v41 = *&a1[OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier];
  v42 = *&a1[OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8];
  *v40 = v39;
  *(v40 + 1) = v43;
  sub_10006A2D0(v41, v42);
  if (qword_100501A58 != -1)
  {
    swift_once();
  }

  v77 = qword_10051B3F0;
  v44 = v80;
  v45 = [v80 publicKeyIdentifier];
  v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  v49 = [v44 appletIdentifier];
  v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  v53 = v46;
  LOBYTE(v46) = sub_1001C1F18(v46, v48, v50, v52);
  v54 = v50;
  v55 = v44;
  sub_10006A178(v54, v52);
  sub_10006A178(v53, v48);
  v56 = OBJC_IVAR____TtC10seserviced4Peer_expressState;
  a1[OBJC_IVAR____TtC10seserviced4Peer_expressState] = v46;
  v57 = [v44 trackingReceipt];
  if (v57)
  {
    v58 = v57;
    v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;

    sub_10006A178(v59, v61);
    v62 = 2;
  }

  else
  {
    v62 = 1;
  }

  a1[OBJC_IVAR____TtC10seserviced4Peer_pairingState] = v62;
  v63 = [v55 publicKeyIdentifier];
  v64 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;

  v67 = &a1[OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier];
  v68 = *&a1[OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier];
  v69 = *&a1[OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8];
  *v67 = v64;
  *(v67 + 1) = v66;
  sub_10006A2D0(v68, v69);
  a1[OBJC_IVAR____TtC10seserviced4Peer_type] = 0;
  LODWORD(v63) = a1[v56];

  if (v63)
  {
    v70 = objc_opt_self();
    sub_10004EBC8(v70, 3);
  }

  (v79)(v78, v7);
  return a1;
}

void sub_1002305D4()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v5 = qword_10051B7F0;
  *v4 = qword_10051B7F0;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  v7 = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v7)
  {
    v8 = objc_allocWithZone(SESTimer);
    aBlock[4] = sub_10023F048;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100080830;
    aBlock[3] = &unk_1004CC770;
    v9 = _Block_copy(aBlock);

    v10 = sub_1003AE50C(v8, v6, v9);
    _Block_release(v9);

    v11 = *(v0 + OBJC_IVAR____TtC10seserviced6Alisha_powerLogTimer);
    *(v0 + OBJC_IVAR____TtC10seserviced6Alisha_powerLogTimer) = v10;

    sub_100237EE0();
  }

  else
  {
    __break(1u);
  }
}

void sub_1002307D0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  i = *(v2 - 1);
  __chkstk_darwin(v2);
  v5 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v6 = qword_10051B7F0;
    *v5 = qword_10051B7F0;
    (*(i + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
    v7 = v6;
    LOBYTE(v6) = _dispatchPreconditionTest(_:)();
    (*(i + 8))(v5, v2);
    if ((v6 & 1) == 0)
    {
      __break(1u);
LABEL_52:
      swift_once();
      goto LABEL_7;
    }

    v8 = *(v1 + 16);
    v9 = Logger.logObject.getter();
    if (v8 != 1)
    {
      break;
    }

    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Stopping Alisha", v11, 2u);
    }

    if (qword_1005019E8 != -1)
    {
      goto LABEL_52;
    }

LABEL_7:
    v12 = *(off_100504A68 + 3);
    os_unfair_lock_lock((v12 + 32));
    v5 = 0;
    sub_10023ECA0((v12 + 16));
    os_unfair_lock_unlock((v12 + 32));
    if (qword_100501928 != -1)
    {
      swift_once();
    }

    sub_1000BB4B4(0);
    if (qword_100501908 != -1)
    {
      swift_once();
    }

    sub_10009D764();
    if (qword_100501B98 != -1)
    {
      swift_once();
    }

    sub_100252624();
    if (qword_100501C80 != -1)
    {
      swift_once();
    }

    sub_1002DB870();
    if (qword_100501BA0 != -1)
    {
      swift_once();
    }

    sub_100255F64();
    if (qword_100501948 != -1)
    {
      swift_once();
    }

    sub_1000C3230();
    if (qword_100501C40 != -1)
    {
      swift_once();
    }

    sub_1002A7730(0);
    if (qword_100501D78 != -1)
    {
      swift_once();
    }

    v2 = off_10050B110;
    v38 = v1;
    v39 = off_10050B110;
    v13 = sub_1000CAAC4();
    v37 = v13;
    if ((v13 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      v2 = __CocoaSet.makeIterator()();
      type metadata accessor for Peer(0);
      sub_10023E228(&qword_100503F20, type metadata accessor for Peer, &unk_1004109B0);
      Set.Iterator.init(_cocoa:)();
      v15 = v41[2];
      v14 = v41[3];
      v16 = v41[4];
      v17 = v41[5];
      v1 = v41[6];
    }

    else
    {
      v20 = -1 << *(v13 + 32);
      v14 = v13 + 56;
      v16 = ~v20;
      v21 = -v20;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v1 = v22 & *(v13 + 56);
      v17 = 0;
    }

    v36 = v16;
    for (i = (v16 + 64) >> 6; v15 < 0; v1 = v26)
    {
      v29 = __CocoaSet.Iterator.next()();
      if (!v29)
      {
        goto LABEL_43;
      }

      v40 = v29;
      type metadata accessor for Peer(0);
      v28 = swift_dynamicCast();
      v27 = v41[0];
      v25 = v17;
      v26 = v1;
      if (!v41[0])
      {
        goto LABEL_43;
      }

LABEL_41:
      v41[0] = v27;
      v30 = v39[3];
      __chkstk_darwin(v28);
      v2 = &v36 - 4;
      *(&v36 - 2) = v41;
      *(&v36 - 1) = v31;
      os_unfair_lock_lock((v30 + 32));
      sub_10023FA8C((v30 + 16));
      os_unfair_lock_unlock((v30 + 32));

      v17 = v25;
    }

    v23 = v17;
    v24 = v1;
    v25 = v17;
    if (v1)
    {
LABEL_37:
      v26 = (v24 - 1) & v24;
      v27 = *(*(v15 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));

      if (v27)
      {
        goto LABEL_41;
      }

LABEL_43:
      sub_100093854(v15);

      if (qword_100501B68 != -1)
      {
        swift_once();
      }

      [qword_1005076C8 invalidate];
      v32 = OBJC_IVAR____TtC10seserviced6Alisha_powerLogTimer;
      v33 = v38;
      v34 = *(v38 + OBJC_IVAR____TtC10seserviced6Alisha_powerLogTimer);
      if (v34)
      {
        sub_1003AE754(v34);
        v35 = *(v33 + v32);
      }

      else
      {
        v35 = 0;
      }

      *(v33 + v32) = 0;

      *(v33 + OBJC_IVAR____TtC10seserviced6Alisha_isLowPowerModeEnabled) = 0;
      *(v33 + OBJC_IVAR____TtC10seserviced6Alisha_isPairingInProgress) = 0;
      *(v33 + 16) = 0;
      return;
    }

    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= i)
      {
        goto LABEL_43;
      }

      v24 = *(v14 + 8 * v25);
      ++v23;
      if (v24)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_50:
    swift_once();
  }

  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v9, v18, "Alisha is not running", v19, 2u);
  }
}