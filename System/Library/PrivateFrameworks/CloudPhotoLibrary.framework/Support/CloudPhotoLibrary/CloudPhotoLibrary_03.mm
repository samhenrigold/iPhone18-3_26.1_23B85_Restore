uint64_t Rpcproto_ErrorInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    v8 = v4;
    if (Rpcproto_ErrorInfo.Client.Code.rawValue.getter(*(v3 + 32), *(v3 + 40)))
    {
      sub_1000BA0CC();
      result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }

      v8 = 0;
    }

    if (*(v3 + 48))
    {
      sub_1000BA078();
      v9 = v8;
      result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      if (v8)
      {
        return result;
      }
    }

    else
    {
      v9 = v8;
    }

    v10 = *(v3 + 72);
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *(v3 + 64) & 0xFFFFFFFFFFFFLL;
    }

    if (!v11 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v9))
    {
      v12 = *(v3 + 24);
      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
      }

      if (!v13 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v9))
      {
        if (!*(v3 + 80) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v9))
        {
          if (!*(*(v3 + 88) + 16) || (type metadata accessor for Rpcproto_ErrorInfo.LoggingDetail(0), sub_1000BA290(&qword_1002C0820, type metadata accessor for Rpcproto_ErrorInfo.LoggingDetail, &protocol conformance descriptor for Rpcproto_ErrorInfo.LoggingDetail), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v9))
          {
            type metadata accessor for Rpcproto_ErrorInfo(0);
            return UnknownStorage.traverse<A>(visitor:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000B5D88@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = &_swiftEmptyArrayStorage;
  return UnknownStorage.init()();
}

uint64_t sub_1000B5DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000B5E50(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000B5F18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BA290(&qword_1002C0C48, type metadata accessor for Rpcproto_ErrorInfo, &protocol conformance descriptor for Rpcproto_ErrorInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B5FB8(uint64_t a1)
{
  sub_1000BA290(&qword_1002C08B8, type metadata accessor for Rpcproto_ErrorInfo, &protocol conformance descriptor for Rpcproto_ErrorInfo);

  return Message.debugDescription.getter();
}

uint64_t sub_1000B6024(uint64_t a1, uint64_t a2)
{
  sub_1000BA290(&qword_1002C08B8, type metadata accessor for Rpcproto_ErrorInfo, &protocol conformance descriptor for Rpcproto_ErrorInfo);

  return Message.hash(into:)();
}

void sub_1000B60A0(int a1)
{
  v1._countAndFlagsBits = 0x746E65696C432ELL;
  v1._object = 0xE700000000000000;
  sub_1000B8938(a1, v1, &static Rpcproto_ErrorInfo.Client.protoMessageName, &qword_1002D2D20);
}

void *Rpcproto_ErrorInfo.Client.protoMessageName.unsafeMutableAddressor()
{
  if (qword_1002C05A8 != -1)
  {
    swift_once();
  }

  return &static Rpcproto_ErrorInfo.Client.protoMessageName;
}

uint64_t Rpcproto_ErrorInfo.Client.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!Rpcproto_ErrorInfo.Client.Code.rawValue.getter(*v3, *(v3 + 8)) || (sub_1000BA0CC(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for Rpcproto_ErrorInfo.Client(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static Rpcproto_ErrorInfo.Client.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = Rpcproto_ErrorInfo.Client.Code.rawValue.getter(*a1, *(a1 + 8));
  if (v4 != Rpcproto_ErrorInfo.Client.Code.rawValue.getter(v2, v3))
  {
    return 0;
  }

  type metadata accessor for Rpcproto_ErrorInfo.Client(0);
  type metadata accessor for UnknownStorage();
  sub_1000BA290(&qword_1002C0840, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000B6420(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BA290(&qword_1002C0C40, type metadata accessor for Rpcproto_ErrorInfo.Client, &protocol conformance descriptor for Rpcproto_ErrorInfo.Client);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B64C0(uint64_t a1)
{
  sub_1000BA290(&qword_1002C08D0, type metadata accessor for Rpcproto_ErrorInfo.Client, &protocol conformance descriptor for Rpcproto_ErrorInfo.Client);

  return Message.debugDescription.getter();
}

uint64_t sub_1000B652C(uint64_t a1, uint64_t a2)
{
  sub_1000BA290(&qword_1002C08D0, type metadata accessor for Rpcproto_ErrorInfo.Client, &protocol conformance descriptor for Rpcproto_ErrorInfo.Client);

  return Message.hash(into:)();
}

uint64_t sub_1000B65A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = Rpcproto_ErrorInfo.Client.Code.rawValue.getter(*a1, *(a1 + 8));
  if (v5 != Rpcproto_ErrorInfo.Client.Code.rawValue.getter(v3, v4))
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_1000BA290(&qword_1002C0840, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000B6674()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Rpcproto_ErrorInfo.Client.Code._protobuf_nameMap);
  sub_1000BA040(v0, static Rpcproto_ErrorInfo.Client.Code._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v177 = swift_allocObject();
  *(v177 + 16) = xmmword_1002440F0;
  v4 = v177 + v3;
  v5 = v177 + v3 + v1[14];
  *(v177 + v3) = 0;
  *v5 = "noerror";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v177 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "unknown";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v177 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "expiredAppConfig";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v177 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "expiredGlobalConfig";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v177 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "badSyntax";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v177 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "forbidden";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v177 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "throttled";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v177 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "refused";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  v22 = v177 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "notSupported";
  *(v22 + 8) = 12;
  *(v22 + 16) = 2;
  v8();
  v23 = (v177 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "exists";
  *(v24 + 1) = 6;
  v24[16] = 2;
  v8();
  v25 = (v177 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "requestAlreadyProcessed";
  *(v26 + 1) = 23;
  v26[16] = 2;
  v8();
  v27 = (v177 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "badAuthToken";
  *(v28 + 1) = 12;
  v28[16] = 2;
  v8();
  v29 = (v177 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "needsAuthentication";
  *(v30 + 1) = 19;
  v30[16] = 2;
  v8();
  v31 = (v177 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "mescalSignatureMissing";
  *(v32 + 1) = 22;
  v32[16] = 2;
  v8();
  v33 = (v177 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "invalidMescalSignature";
  *(v34 + 1) = 22;
  v34[16] = 2;
  v8();
  v35 = (v177 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "opLockFailure";
  *(v36 + 1) = 13;
  v36[16] = 2;
  v8();
  v37 = v177 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "atomicFailure";
  *(v37 + 8) = 13;
  *(v37 + 16) = 2;
  v8();
  v38 = (v177 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "resetNeeded";
  *(v39 + 1) = 11;
  v39[16] = 2;
  v8();
  v40 = (v177 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "fieldsPerTypeLimitExceeded";
  *(v41 + 1) = 26;
  v41[16] = 2;
  v8();
  v42 = (v177 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "typeBusy";
  *(v43 + 1) = 8;
  v43[16] = 2;
  v8();
  v44 = (v177 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "numRecordTypesLimitExceeded";
  *(v45 + 1) = 27;
  v45[16] = 2;
  v8();
  v46 = (v177 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "invalidContainer";
  *(v47 + 1) = 16;
  v47[16] = 2;
  v8();
  v48 = (v177 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "invalidRecordTypeName";
  *(v49 + 1) = 21;
  v49[16] = 2;
  v8();
  v50 = (v177 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "invalidFieldName";
  *(v51 + 1) = 16;
  v51[16] = 2;
  v8();
  v52 = (v177 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "invalidFieldValue";
  *(v53 + 1) = 17;
  v53[16] = 2;
  v8();
  v54 = (v177 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 25;
  *v55 = "invalidIdentifier";
  *(v55 + 1) = 17;
  v55[16] = 2;
  v8();
  v56 = (v177 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 26;
  *v57 = "fieldNotQueryable";
  *(v57 + 1) = 17;
  v57[16] = 2;
  v8();
  v58 = (v177 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 27;
  *v59 = "fieldNotSortable";
  *(v59 + 1) = 16;
  v59[16] = 2;
  v8();
  v60 = (v177 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 28;
  *v61 = "queryFilterLimitExceeded";
  *(v61 + 1) = 24;
  v61[16] = 2;
  v8();
  v62 = (v177 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 29;
  *v63 = "queryFilterValuesLimitExceeded";
  *(v63 + 1) = 30;
  v63[16] = 2;
  v8();
  v64 = (v177 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 30;
  *v65 = "membershipQueryLimitExceeded";
  *(v65 + 1) = 28;
  v65[16] = 2;
  v8();
  v66 = (v177 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 31;
  *v67 = "notificationAdditionalFieldLimitExceeded";
  *(v67 + 1) = 40;
  v67[16] = 2;
  v8();
  v68 = v177 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 32;
  *v68 = "notificationAdditionalFieldInvalidType";
  *(v68 + 8) = 38;
  *(v68 + 16) = 2;
  v8();
  v69 = (v177 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "subscriptionLimitExceeded";
  *(v70 + 1) = 25;
  v70[16] = 2;
  v8();
  v71 = (v177 + v3 + 34 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "uniqueTriggerLimitExceeded";
  *(v72 + 1) = 26;
  v72[16] = 2;
  v8();
  v73 = (v177 + v3 + 35 * v2);
  v74 = v73 + v1[14];
  *v73 = 35;
  *v74 = "triggerSubscriptionBindingTypeMismatch";
  *(v74 + 1) = 38;
  v74[16] = 2;
  v8();
  v75 = (v177 + v3 + 36 * v2);
  v76 = v75 + v1[14];
  *v75 = 36;
  *v76 = "zoneSizeLimitExceeded";
  *(v76 + 1) = 21;
  v76[16] = 2;
  v8();
  v77 = (v177 + v3 + 37 * v2);
  v78 = v77 + v1[14];
  *v77 = 37;
  *v78 = "zoneCountLimitExceeded";
  *(v78 + 1) = 22;
  v78[16] = 2;
  v8();
  v79 = (v177 + v3 + 38 * v2);
  v80 = v79 + v1[14];
  *v79 = 38;
  *v80 = "uniqueFieldFailure";
  *(v80 + 1) = 18;
  v80[16] = 2;
  v8();
  v81 = (v177 + v3 + 39 * v2);
  v82 = v81 + v1[14];
  *v81 = 39;
  *v82 = "validatingReferenceError";
  *(v82 + 1) = 24;
  v82[16] = 2;
  v8();
  v83 = (v177 + v3 + 40 * v2);
  v84 = v83 + v1[14];
  *v83 = 40;
  *v84 = "fullResetNeeded";
  *(v84 + 1) = 15;
  v84[16] = 2;
  v8();
  v85 = (v177 + v3 + 41 * v2);
  v86 = v85 + v1[14];
  *v85 = 41;
  *v86 = "alreadyShared";
  *(v86 + 1) = 13;
  v86[16] = 2;
  v8();
  v87 = (v177 + v3 + 42 * v2);
  v88 = v87 + v1[14];
  *v87 = 42;
  *v88 = "emailOutOfNetwork";
  *(v88 + 1) = 17;
  v88[16] = 2;
  v8();
  v89 = (v177 + v3 + 43 * v2);
  v90 = v89 + v1[14];
  *v89 = 43;
  *v90 = "duplicateSubscription";
  *(v90 + 1) = 21;
  v90[16] = 2;
  v8();
  v91 = (v177 + v3 + 44 * v2);
  v92 = v91 + v1[14];
  *v91 = 46;
  *v92 = "expiredPutReceipt";
  *(v92 + 1) = 17;
  v92[16] = 2;
  v8();
  v93 = (v177 + v3 + 45 * v2);
  v94 = v93 + v1[14];
  *v93 = 47;
  *v94 = "quotaExceeded";
  *(v94 + 1) = 13;
  v94[16] = 2;
  v8();
  v95 = (v177 + v3 + 46 * v2);
  v96 = v95 + v1[14];
  *v95 = 48;
  *v96 = "zoneNotFound";
  *(v96 + 1) = 12;
  v96[16] = 2;
  v8();
  v97 = (v177 + v3 + 47 * v2);
  v98 = v97 + v1[14];
  *v97 = 49;
  *v98 = "invalidBundleId";
  *(v98 + 1) = 15;
  v98[16] = 2;
  v8();
  v99 = (v177 + v3 + 48 * v2);
  v100 = v99 + v1[14];
  *v99 = 50;
  *v100 = "unsupportedDevice";
  *(v100 + 1) = 17;
  v100[16] = 2;
  v8();
  v101 = (v177 + v3 + 49 * v2);
  v102 = v101 + v1[14];
  *v101 = 51;
  *v102 = "blacklisted";
  *(v102 + 1) = 11;
  v102[16] = 2;
  v8();
  v103 = (v177 + v3 + 50 * v2);
  v104 = v103 + v1[14];
  *v103 = 52;
  *v104 = "recordProtectionInfoTagMismatch";
  *(v104 + 1) = 31;
  v104[16] = 2;
  v8();
  v105 = (v177 + v3 + 51 * v2);
  v106 = v105 + v1[14];
  *v105 = 53;
  *v106 = "zoneProtectionInfoTagMismatch";
  *(v106 + 1) = 29;
  v106[16] = 2;
  v8();
  v107 = (v177 + v3 + 52 * v2);
  v108 = v107 + v1[14];
  *v107 = 54;
  *v108 = "assetSizeLimitExceeded";
  *(v108 + 1) = 22;
  v108[16] = 2;
  v8();
  v109 = (v177 + v3 + 53 * v2);
  v110 = v109 + v1[14];
  *v109 = 55;
  *v110 = "batchOperationLimitExceeded";
  *(v110 + 1) = 27;
  v110[16] = 2;
  v8();
  v111 = (v177 + v3 + 54 * v2);
  v112 = v111 + v1[14];
  *v111 = 56;
  *v112 = "requestSizeLimitExceeded";
  *(v112 + 1) = 24;
  v112[16] = 2;
  v8();
  v113 = (v177 + v3 + 55 * v2);
  v114 = v113 + v1[14];
  *v113 = 57;
  *v114 = "recordSizeLimitExceeded";
  *(v114 + 1) = 23;
  v114[16] = 2;
  v8();
  v115 = (v177 + v3 + 56 * v2);
  v116 = v115 + v1[14];
  *v115 = 58;
  *v116 = "databaseCommitSizeExceeded";
  *(v116 + 1) = 26;
  v116[16] = 2;
  v8();
  v117 = (v177 + v3 + 57 * v2);
  v118 = v117 + v1[14];
  *v117 = 59;
  *v118 = "userDeletedDataForZone";
  *(v118 + 1) = 22;
  v118[16] = 2;
  v8();
  v119 = (v177 + v3 + 58 * v2);
  v120 = v119 + v1[14];
  *v119 = 60;
  *v120 = "staleRecordUpdate";
  *(v120 + 1) = 17;
  v120[16] = 2;
  v8();
  v121 = (v177 + v3 + 59 * v2);
  v122 = v121 + v1[14];
  *v121 = 61;
  *v122 = "shareParticipantLimitExceeded";
  *(v122 + 1) = 29;
  v122[16] = 2;
  v8();
  v123 = (v177 + v3 + 60 * v2);
  v124 = v123 + v1[14];
  *v123 = 62;
  *v124 = "shareParticipantError";
  *(v124 + 1) = 21;
  v124[16] = 2;
  v8();
  v125 = (v177 + v3 + 61 * v2);
  v126 = v125 + v1[14];
  *v125 = 64;
  *v126 = "pcsChainingError";
  *(v126 + 1) = 16;
  v126[16] = 2;
  v8();
  v127 = (v177 + v3 + 62 * v2);
  v128 = v127 + v1[14];
  *v127 = 65;
  *v128 = "hierarchyAlreadyHasShare";
  *(v128 + 1) = 24;
  v128[16] = 2;
  v8();
  v129 = (v177 + v3 + 63 * v2);
  v130 = v129 + v1[14];
  *v129 = 66;
  *v130 = "u13Restricted";
  *(v130 + 1) = 13;
  v130[16] = 2;
  v8();
  v131 = v177 + v3 + (v2 << 6) + v1[14];
  *(v4 + (v2 << 6)) = 67;
  *v131 = "managedAppleIdRestricted";
  *(v131 + 8) = 24;
  *(v131 + 16) = 2;
  v8();
  v132 = (v177 + v3 + 65 * v2);
  v133 = v132 + v1[14];
  *v132 = 68;
  *v133 = "shareParticipantContactError";
  *(v133 + 1) = 28;
  v133[16] = 2;
  v8();
  v134 = (v177 + v3 + 66 * v2);
  v135 = v134 + v1[14];
  *v134 = 69;
  *v135 = "recordArchived";
  *(v135 + 1) = 14;
  v135[16] = 2;
  v8();
  v136 = (v177 + v3 + 67 * v2);
  v137 = v136 + v1[14];
  *v136 = 70;
  *v137 = "databaseAccessDenied";
  *(v137 + 1) = 20;
  v137[16] = 2;
  v8();
  v138 = (v177 + v3 + 68 * v2);
  v139 = v138 + v1[14];
  *v138 = 71;
  *v139 = "parentHierarchyDepthLimitExceeded";
  *(v139 + 1) = 33;
  v139[16] = 2;
  v8();
  v140 = (v177 + v3 + 69 * v2);
  v141 = v140 + v1[14];
  *v140 = 72;
  *v141 = "zonePcsUserIdentityUnknown";
  *(v141 + 1) = 26;
  v141[16] = 2;
  v8();
  v142 = (v177 + v3 + 70 * v2);
  v143 = v142 + v1[14];
  *v142 = 73;
  *v143 = "managedAppleIdBackupBlocked";
  *(v143 + 1) = 27;
  v143[16] = 2;
  v8();
  v144 = (v177 + v3 + 71 * v2);
  v145 = v144 + v1[14];
  *v144 = 74;
  *v145 = "assetReuploadNeeded";
  *(v145 + 1) = 19;
  v145[16] = 2;
  v8();
  v146 = (v177 + v3 + 72 * v2);
  v147 = v146 + v1[14];
  *v146 = 75;
  *v147 = "outOfNetworkUsersUnsupported";
  *(v147 + 1) = 28;
  v147[16] = 2;
  v8();
  v148 = (v177 + v3 + 73 * v2);
  v149 = v148 + v1[14];
  *v148 = 76;
  *v149 = "gameAssignmentNotFound";
  *(v149 + 1) = 22;
  v149[16] = 2;
  v8();
  v150 = (v177 + v3 + 74 * v2);
  v151 = v150 + v1[14];
  *v150 = 10011;
  *v151 = "containerQuotaGraced";
  *(v151 + 1) = 20;
  v151[16] = 2;
  v8();
  v152 = (v177 + v3 + 75 * v2);
  v153 = v152 + v1[14];
  *v152 = 100000;
  *v153 = "sessionContextOperationNotCalled";
  *(v153 + 1) = 32;
  v153[16] = 2;
  v8();
  v154 = (v177 + v3 + 76 * v2);
  v155 = v154 + v1[14];
  *v154 = 100001;
  *v155 = "invalidPartition";
  *(v155 + 1) = 16;
  v155[16] = 2;
  v8();
  v156 = (v177 + v3 + 77 * v2);
  v157 = v156 + v1[14];
  *v156 = 100002;
  *v157 = "containerDoesNotExist";
  *(v157 + 1) = 21;
  v157[16] = 2;
  v8();
  v158 = (v177 + v3 + 78 * v2);
  v159 = v158 + v1[14];
  *v158 = 100003;
  *v159 = "requestedAndCurrentContainerVersionsDiffer";
  *(v159 + 1) = 42;
  v159[16] = 2;
  v8();
  v160 = (v177 + v3 + 79 * v2);
  v161 = v160 + v1[14];
  *v160 = 100004;
  *v161 = "certificateDoesNotHaveContainerAccess";
  *(v161 + 1) = 37;
  v161[16] = 2;
  v8();
  v162 = (v177 + v3 + 80 * v2);
  v163 = v162 + v1[14];
  *v162 = 100005;
  *v163 = "earlierRequestIncomplete";
  *(v163 + 1) = 24;
  v163[16] = 2;
  v8();
  v164 = (v177 + v3 + 81 * v2);
  v165 = v164 + v1[14];
  *v164 = 100006;
  *v165 = "fdbStoreTransactionSizeLimitExceeded";
  *(v165 + 1) = 36;
  v165[16] = 2;
  v8();
  v166 = (v177 + v3 + 82 * v2);
  v167 = v166 + v1[14];
  *v166 = 100007;
  *v167 = "fdbStoreKeySizeLimitExceeded";
  *(v167 + 1) = 28;
  v167[16] = 2;
  v8();
  v168 = (v177 + v3 + 83 * v2);
  v169 = v168 + v1[14];
  *v168 = 100008;
  *v169 = "fdbStoreValueSizeLimitExceeded";
  *(v169 + 1) = 30;
  v169[16] = 2;
  v8();
  v170 = (v177 + v3 + 84 * v2);
  v171 = v170 + v1[14];
  *v170 = 100009;
  *v171 = "authorizeGetFailed";
  *(v171 + 1) = 18;
  v171[16] = 2;
  v8();
  v172 = (v177 + v3 + 85 * v2);
  v173 = v172 + v1[14];
  *v172 = 100010;
  *v173 = "queueInvalidLeaseUuid";
  *(v173 + 1) = 21;
  v173[16] = 2;
  v8();
  v174 = (v177 + v3 + 86 * v2);
  v175 = v174 + v1[14];
  *v174 = 100012;
  *v175 = "userThrottled";
  *(v175 + 1) = 13;
  v175[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

void sub_1000B7CF0(int a1)
{
  v1._countAndFlagsBits = 0x7265767265532ELL;
  v1._object = 0xE700000000000000;
  sub_1000B8938(a1, v1, &static Rpcproto_ErrorInfo.Server.protoMessageName, &qword_1002D2D60);
}

void *Rpcproto_ErrorInfo.Server.protoMessageName.unsafeMutableAddressor()
{
  if (qword_1002C05C0 != -1)
  {
    swift_once();
  }

  return &static Rpcproto_ErrorInfo.Server.protoMessageName;
}

uint64_t sub_1000B7D98(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v3, a2);
  sub_1000BA040(v3, a2);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v4 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100244100;
  v7 = v6 + v5 + v4[14];
  *(v6 + v5) = 1;
  *v7 = "type";
  *(v7 + 8) = 4;
  *(v7 + 16) = 2;
  v8 = enum case for _NameMap.NameDescription.same(_:);
  v9 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000B7F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v5 || (v8 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4();
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
    }
  }

  return result;
}

uint64_t Rpcproto_ErrorInfo.Server.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_1000BA078(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for Rpcproto_ErrorInfo.Server(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1000B8144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000B81B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000B825C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BA290(&qword_1002C0C38, type metadata accessor for Rpcproto_ErrorInfo.Server, &protocol conformance descriptor for Rpcproto_ErrorInfo.Server);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B82FC(uint64_t a1)
{
  sub_1000BA290(&qword_1002C08E8, type metadata accessor for Rpcproto_ErrorInfo.Server, &protocol conformance descriptor for Rpcproto_ErrorInfo.Server);

  return Message.debugDescription.getter();
}

uint64_t sub_1000B8368(uint64_t a1, uint64_t a2)
{
  sub_1000BA290(&qword_1002C08E8, type metadata accessor for Rpcproto_ErrorInfo.Server, &protocol conformance descriptor for Rpcproto_ErrorInfo.Server);

  return Message.hash(into:)();
}

uint64_t sub_1000B83E4()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Rpcproto_ErrorInfo.Server.Code._protobuf_nameMap);
  sub_1000BA040(v0, static Rpcproto_ErrorInfo.Server.Code._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100244110;
  v4 = v34 + v3;
  v5 = v34 + v3 + v1[14];
  *(v34 + v3) = 0;
  *v5 = "noerror";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v34 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "unknown";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v34 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "overloaded";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v34 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "notFound";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v34 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "containerUnavailable";
  *(v15 + 1) = 20;
  v15[16] = 2;
  v8();
  v16 = (v34 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "mescalSignatureParseError";
  *(v17 + 1) = 25;
  v17[16] = 2;
  v8();
  v18 = (v34 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "zoneBusy";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v34 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "zoneUnavailable";
  *(v21 + 1) = 15;
  v21[16] = 2;
  v8();
  v22 = v34 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "transactionTimeout";
  *(v22 + 8) = 18;
  *(v22 + 16) = 2;
  v8();
  v23 = (v34 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 200001;
  *v24 = "partitionLookupFailed";
  *(v24 + 1) = 21;
  v24[16] = 2;
  v8();
  v25 = (v34 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 200002;
  *v26 = "timeoutOnInternalBackends";
  *(v26 + 1) = 25;
  v26[16] = 2;
  v8();
  v27 = (v34 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 200003;
  *v28 = "solrError";
  *(v28 + 1) = 9;
  v28[16] = 2;
  v8();
  v29 = (v34 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 200004;
  *v30 = "userAssignmentLocked";
  *(v30 + 1) = 20;
  v30[16] = 2;
  v8();
  v31 = (v34 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 200005;
  *v32 = "quotaServiceUnavaible";
  *(v32 + 1) = 21;
  v32[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

void sub_1000B8908(int a1)
{
  v1._countAndFlagsBits = 0x676E6967676F4C2ELL;
  v1._object = 0xEE006C6961746544;
  sub_1000B8938(a1, v1, &static Rpcproto_ErrorInfo.LoggingDetail.protoMessageName, &qword_1002D2DA0);
}

void sub_1000B8938(int a1, Swift::String a2, void *a3, void *a4)
{
  String.append(_:)(a2);
  *a3 = 0xD000000000000012;
  *a4 = 0x8000000100200CE0;
}

void *Rpcproto_ErrorInfo.LoggingDetail.protoMessageName.unsafeMutableAddressor()
{
  if (qword_1002C05D8 != -1)
  {
    swift_once();
  }

  return &static Rpcproto_ErrorInfo.LoggingDetail.protoMessageName;
}

uint64_t sub_1000B8A1C(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

uint64_t sub_1000B8A78()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Rpcproto_ErrorInfo.LoggingDetail._protobuf_nameMap);
  sub_1000BA040(v0, static Rpcproto_ErrorInfo.LoggingDetail._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100244120;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000B8C64(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for _NameMap();

  return sub_1000BA040(v4, a2);
}

uint64_t sub_1000B8CDC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = sub_1000BA040(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t Rpcproto_ErrorInfo.LoggingDetail.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t Rpcproto_ErrorInfo.LoggingDetail.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for Rpcproto_ErrorInfo.LoggingDetail(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

Swift::Int sub_1000B8F04(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  sub_1000BA290(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000B8F8C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  return UnknownStorage.init()();
}

uint64_t sub_1000B8FE0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    v8 = a4;
    swift_once();
    a4 = v8;
  }

  v6 = *a4;

  return v6;
}

uint64_t sub_1000B9040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000B90B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000B917C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BA290(&qword_1002C0C30, type metadata accessor for Rpcproto_ErrorInfo.LoggingDetail, &protocol conformance descriptor for Rpcproto_ErrorInfo.LoggingDetail);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000B921C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = sub_1000BA040(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1000B92B8(uint64_t a1)
{
  sub_1000BA290(&qword_1002C0820, type metadata accessor for Rpcproto_ErrorInfo.LoggingDetail, &protocol conformance descriptor for Rpcproto_ErrorInfo.LoggingDetail);

  return Message.debugDescription.getter();
}

Swift::Int sub_1000B9324(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000B937C(uint64_t a1, uint64_t a2)
{
  sub_1000BA290(&qword_1002C0820, type metadata accessor for Rpcproto_ErrorInfo.LoggingDetail, &protocol conformance descriptor for Rpcproto_ErrorInfo.LoggingDetail);

  return Message.hash(into:)();
}

Swift::Int sub_1000B93F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t variable initialization expression of RequestItem._storage()
{
  if (qword_1002C06D0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1000B9570@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

id variable initialization expression of CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem.errorCode()
{
  v0 = objc_allocWithZone(NSNumber);

  return [v0 init];
}

Swift::Int sub_1000B961C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000B9690(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000B96DC(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000B9754(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000B97D4@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000B9818()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1000B9854(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000B98A8(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

void *sub_1000B991C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000B992C(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_1000B99B4@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_1000B99FC@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000B9A28(uint64_t a1)
{
  v2 = sub_1000BA290(&qword_1002C0CA8, type metadata accessor for URLResourceKey, &unk_100244BE4);
  v3 = sub_1000BA290(&unk_1002C0CB0, type metadata accessor for URLResourceKey, &unk_100244B84);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000B9AE4(uint64_t result)
{
  if (result > 10010)
  {
    if (result <= 100004)
    {
      if (result > 100001)
      {
        if (result == 100002)
        {
          return 76;
        }

        else if (result == 100003)
        {
          return 77;
        }

        else
        {
          return 78;
        }
      }

      else
      {
        switch(result)
        {
          case 10011:
            return 85;
          case 100000:
            return 74;
          case 100001:
            return 75;
        }
      }
    }

    else if (result <= 100007)
    {
      if (result == 100005)
      {
        return 79;
      }

      else if (result == 100006)
      {
        return 80;
      }

      else
      {
        return 81;
      }
    }

    else if (result > 100009)
    {
      if (result == 100010)
      {
        return 84;
      }

      else if (result == 100012)
      {
        return 86;
      }
    }

    else if (result == 100008)
    {
      return 82;
    }

    else
    {
      return 83;
    }
  }

  else
  {
    switch(result)
    {
      case '.':
        result = 44;
        break;
      case '/':
        result = 45;
        break;
      case '0':
        result = 46;
        break;
      case '1':
        result = 47;
        break;
      case '2':
        result = 48;
        break;
      case '3':
        result = 49;
        break;
      case '4':
        result = 50;
        break;
      case '5':
        result = 51;
        break;
      case '6':
        result = 52;
        break;
      case '7':
        result = 53;
        break;
      case '8':
        result = 54;
        break;
      case '9':
        result = 55;
        break;
      case ':':
        result = 56;
        break;
      case ';':
        result = 57;
        break;
      case '<':
        result = 58;
        break;
      case '=':
        result = 59;
        break;
      case '>':
        result = 60;
        break;
      case '@':
        result = 61;
        break;
      case 'A':
        result = 62;
        break;
      case 'B':
        result = 63;
        break;
      case 'C':
        result = 64;
        break;
      case 'D':
        result = 65;
        break;
      case 'E':
        result = 66;
        break;
      case 'F':
        result = 67;
        break;
      case 'G':
        result = 68;
        break;
      case 'H':
        result = 69;
        break;
      case 'I':
        result = 70;
        break;
      case 'J':
        result = 71;
        break;
      case 'K':
        result = 72;
        break;
      case 'L':
        result = 73;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1000B9E9C(uint64_t result)
{
  if (result > 7)
  {
    if (result <= 200001)
    {
      switch(result)
      {
        case 8:
          return 7;
        case 9:
          return 8;
        case 200001:
          return 9;
      }
    }

    else if (result > 200003)
    {
      if (result == 200004)
      {
        return 12;
      }

      else if (result == 200005)
      {
        return 13;
      }
    }

    else if (result == 200002)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }

  else if (result >= 5)
  {
    if (result == 6)
    {
      return 5;
    }

    else if (result == 7)
    {
      return 6;
    }
  }

  return result;
}

uint64_t sub_1000BA008(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BA040(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1000BA078()
{
  result = qword_1002C0828;
  if (!qword_1002C0828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0828);
  }

  return result;
}

unint64_t sub_1000BA0CC()
{
  result = qword_1002C0830;
  if (!qword_1002C0830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0830);
  }

  return result;
}

uint64_t _s22CloudKitImplementation18Rpcproto_ErrorInfoV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = Rpcproto_ErrorInfo.Client.Code.rawValue.getter(a1[4], *(a1 + 40));
  if (v8 != Rpcproto_ErrorInfo.Client.Code.rawValue.getter(v6, v7) || !sub_1000D5418(a1[6], *(a1 + 56), *(a2 + 48), *(a2 + 56)))
  {
    return 0;
  }

  if ((a1[8] != *(a2 + 64) || a1[9] != *(a2 + 72)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 20) != *(a2 + 80) || (sub_1000E911C(a1[11], *(a2 + 88)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Rpcproto_ErrorInfo(0);
  type metadata accessor for UnknownStorage();
  sub_1000BA290(&qword_1002C0840, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000BA290(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s22CloudKitImplementation18Rpcproto_ErrorInfoV6ServerV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_100244F70[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    switch(v3)
    {
      case 1:
        if (v2 != 1)
        {
          return 0;
        }

        goto LABEL_8;
      case 2:
        if (v2 != 2)
        {
          return 0;
        }

        goto LABEL_8;
      case 3:
        if (v2 != 3)
        {
          return 0;
        }

        goto LABEL_8;
      case 4:
        if (v2 != 4)
        {
          return 0;
        }

        goto LABEL_8;
      case 5:
        if (v2 != 6)
        {
          return 0;
        }

        goto LABEL_8;
      case 6:
        if (v2 != 7)
        {
          return 0;
        }

        goto LABEL_8;
      case 7:
        if (v2 != 8)
        {
          return 0;
        }

        goto LABEL_8;
      case 8:
        if (v2 != 9)
        {
          return 0;
        }

        goto LABEL_8;
      case 9:
        v5 = 200001;
        break;
      case 10:
        v5 = 200002;
        break;
      case 11:
        v5 = 200003;
        break;
      case 12:
        v5 = 200004;
        break;
      case 13:
        v5 = 200005;
        break;
      default:
        if (!v2)
        {
          goto LABEL_8;
        }

        return 0;
    }

    if (v2 != v5)
    {
      return 0;
    }

LABEL_8:
    type metadata accessor for Rpcproto_ErrorInfo.Server(0);
    type metadata accessor for UnknownStorage();
    sub_1000BA290(&qword_1002C0840, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  if (v2 == v3)
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t _s22CloudKitImplementation18Rpcproto_ErrorInfoV13LoggingDetailV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Rpcproto_ErrorInfo.LoggingDetail(0);
  type metadata accessor for UnknownStorage();
  sub_1000BA290(&qword_1002C0840, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

unint64_t sub_1000BA560()
{
  result = qword_1002C0860;
  if (!qword_1002C0860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0860);
  }

  return result;
}

unint64_t sub_1000BA5B8()
{
  result = qword_1002C0868;
  if (!qword_1002C0868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0868);
  }

  return result;
}

unint64_t sub_1000BA610()
{
  result = qword_1002C0870;
  if (!qword_1002C0870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0870);
  }

  return result;
}

unint64_t sub_1000BA668()
{
  result = qword_1002C0878;
  if (!qword_1002C0878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0878);
  }

  return result;
}

unint64_t sub_1000BA6C0()
{
  result = qword_1002C0880;
  if (!qword_1002C0880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0880);
  }

  return result;
}

unint64_t sub_1000BA718()
{
  result = qword_1002C0888;
  if (!qword_1002C0888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0888);
  }

  return result;
}

uint64_t sub_1000BA79C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000BA814(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000BA79C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000BAD10(uint64_t a1)
{
  sub_1000BADC8(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000BADC8(uint64_t a1)
{
  if (!qword_1002C0970)
  {
    type metadata accessor for Rpcproto_ErrorInfo.LoggingDetail(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_1002C0970);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for Rpcproto_ErrorInfo.Client.Code(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1000BAE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1000BAF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1000BAFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000BB050(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t *sub_1000BB0CC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000BB130(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_1000BB1DC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_1000BB3D0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000CC1A4();
    v3 = StringProtocol.components<A>(separatedBy:)();

    v4 = 0;
    v5 = *(v3 + 16);
    v6 = v3 + 40;
    v7 = &_swiftEmptyArrayStorage;
LABEL_3:
    v8 = v6 + 16 * v4;
    while (1)
    {
      if (v5 == v4)
      {

        sub_1000C9AB0(v7);

        return;
      }

      if (v4 >= *(v3 + 16))
      {
        break;
      }

      ++v4;
      v9 = v8 + 16;
      v10 = objc_opt_self();

      v11 = String._bridgeToObjectiveC()();

      v12 = [v10 resourceTypeFromShortDescription:v11];

      v8 = v9;
      if (v12)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1000C9148(0, *(v7 + 2) + 1, 1, v7);
        }

        v14 = *(v7 + 2);
        v13 = *(v7 + 3);
        if (v14 >= v13 >> 1)
        {
          v7 = sub_1000C9148((v13 > 1), v14 + 1, 1, v7);
        }

        *(v7 + 2) = v14 + 1;
        *&v7[8 * v14 + 32] = v12;
        v6 = v3 + 40;
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {

    sub_1000C9B5C(&off_1002778C0);
  }
}

BOOL sub_1000BB634(Swift::UInt a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1000BB700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

id sub_1000BB7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = CPLErrorDomain;
  sub_1000BB130(&unk_1002C0E10, &qword_100245068);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100244100;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v8;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  v9 = v6;

  sub_100118E2C(inited);
  swift_setDeallocating();
  sub_1000CCDBC(inited + 32, &unk_1002C4040, &unk_100245070);
  v10 = objc_allocWithZone(NSError);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v10 initWithDomain:v9 code:a3 userInfo:isa];

  return v12;
}

id sub_1000BB948(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  if (!String.count.getter())
  {
    v10 = *(a1 + 96);
    if (*(a1 + 104) != 1)
    {
      goto LABEL_12;
    }

    v8 = 0;
    v9 = 0;
LABEL_7:
    if (v10 > 3)
    {
      if (v10 > 5)
      {
        if (v10 == 6)
        {
          v14 = CPLErrorDomain;
          sub_1000BB130(&unk_1002C0E10, &qword_100245068);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100244100;
          *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(inited + 40) = v51;
          *(inited + 72) = &type metadata for String;
          v52 = v14;
          if (!v8)
          {
            _StringGuts.grow(_:)(34);

            v91 = [a2 description];
            v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v94 = v93;

            v95._countAndFlagsBits = v92;
            v95._object = v94;
            String.append(_:)(v95);

            v9 = 0xD000000000000020;
            v8 = 0x8000000100201BA0;
          }

          *(inited + 48) = v9;
          *(inited + 56) = v8;
          sub_100118E2C(inited);
          swift_setDeallocating();
          sub_1000CCDBC(inited + 32, &unk_1002C4040, &unk_100245070);
          v96 = objc_allocWithZone(NSError);
          v89.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v90 = [v96 initWithDomain:v14 code:80 userInfo:v89.super.isa];
          goto LABEL_46;
        }

        if (!v8)
        {
          _StringGuts.grow(_:)(37);

          v72._countAndFlagsBits = a3;
          v72._object = a4;
          String.append(_:)(v72);
          v73._countAndFlagsBits = 0xD000000000000018;
          v73._object = 0x8000000100201B80;
          String.append(_:)(v73);
          v74 = [a2 description];
          v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v77 = v76;

          v78._countAndFlagsBits = v75;
          v78._object = v77;
          String.append(_:)(v78);

          v9 = 0x656372756F736552;
          v8 = 0xE900000000000020;
        }

        v79 = CPLErrorDomain;
        sub_1000BB130(&unk_1002C0E10, &qword_100245068);
        v80 = swift_initStackObject();
        *(v80 + 16) = xmmword_100244100;
        *(v80 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v80 + 72) = &type metadata for String;
        *(v80 + 40) = v81;
        *(v80 + 48) = v9;
        *(v80 + 56) = v8;
        v37 = v79;
        sub_100118E2C(v80);
        swift_setDeallocating();
        sub_1000CCDBC(v80 + 32, &unk_1002C4040, &unk_100245070);
        v82 = objc_allocWithZone(NSError);
        v39.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v40 = [v82 initWithDomain:v37 code:51 userInfo:v39.super.isa];
      }

      else
      {
        if (v10 != 4)
        {
          if (!v8)
          {
            _StringGuts.grow(_:)(22);

            v56 = [a2 description];
            v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v59 = v58;

            v60._countAndFlagsBits = v57;
            v60._object = v59;
            String.append(_:)(v60);

            v9 = 0xD000000000000014;
            v8 = 0x8000000100201BD0;
          }

          v47 = v9;
          v48 = v8;
          v49 = 150;
          goto LABEL_32;
        }

        if (!v8)
        {
          _StringGuts.grow(_:)(26);

          v27._countAndFlagsBits = a3;
          v27._object = a4;
          String.append(_:)(v27);
          v28._countAndFlagsBits = 0x6C61747320736920;
          v28._object = 0xED0000206E692065;
          String.append(_:)(v28);
          v29 = [a2 description];
          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v31;

          v33._countAndFlagsBits = v30;
          v33._object = v32;
          String.append(_:)(v33);

          v9 = 0x656372756F736552;
          v8 = 0xE900000000000020;
        }

        v34 = CPLErrorDomain;
        sub_1000BB130(&unk_1002C0E10, &qword_100245068);
        v35 = swift_initStackObject();
        *(v35 + 16) = xmmword_100244100;
        *(v35 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v35 + 72) = &type metadata for String;
        *(v35 + 40) = v36;
        *(v35 + 48) = v9;
        *(v35 + 56) = v8;
        v37 = v34;
        sub_100118E2C(v35);
        swift_setDeallocating();
        sub_1000CCDBC(v35 + 32, &unk_1002C4040, &unk_100245070);
        v38 = objc_allocWithZone(NSError);
        v39.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v40 = [v38 initWithDomain:v37 code:27 userInfo:v39.super.isa];
      }
    }

    else
    {
      if (v10 <= 1)
      {
        v14 = CPLErrorDomain;
        if (v10)
        {
          sub_1000BB130(&unk_1002C0E10, &qword_100245068);
          v53 = swift_initStackObject();
          *(v53 + 16) = xmmword_100244100;
          *(v53 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v53 + 40) = v54;
          *(v53 + 72) = &type metadata for String;
          v55 = v14;
          if (!v8)
          {
            _StringGuts.grow(_:)(17);

            v97 = [a2 zoneID];
            v98 = [v97 description];
            v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v101 = v100;

            v102._countAndFlagsBits = v99;
            v102._object = v101;
            String.append(_:)(v102);

            v103._countAndFlagsBits = 0x756F6620746F6E20;
            v103._object = 0xEA0000000000646ELL;
            String.append(_:)(v103);
            v9 = 0x20656E6F5ALL;
            v8 = 0xE500000000000000;
          }

          *(v53 + 48) = v9;
          *(v53 + 56) = v8;
          sub_100118E2C(v53);
          swift_setDeallocating();
          sub_1000CCDBC(v53 + 32, &unk_1002C4040, &unk_100245070);
          v104 = objc_allocWithZone(NSError);
          v89.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v90 = [v104 initWithDomain:v14 code:23 userInfo:v89.super.isa];
        }

        else
        {
          sub_1000BB130(&unk_1002C0E10, &qword_100245068);
          v15 = swift_initStackObject();
          *(v15 + 16) = xmmword_100244100;
          *(v15 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v15 + 40) = v16;
          *(v15 + 72) = &type metadata for String;
          v17 = v14;
          if (!v8)
          {
            _StringGuts.grow(_:)(38);

            v83 = [a2 description];
            v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v86 = v85;

            v87._countAndFlagsBits = v84;
            v87._object = v86;
            String.append(_:)(v87);

            v9 = 0xD000000000000024;
            v8 = 0x8000000100201BF0;
          }

          *(v15 + 48) = v9;
          *(v15 + 56) = v8;
          sub_100118E2C(v15);
          swift_setDeallocating();
          sub_1000CCDBC(v15 + 32, &unk_1002C4040, &unk_100245070);
          v88 = objc_allocWithZone(NSError);
          v89.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v90 = [v88 initWithDomain:v14 code:27 userInfo:v89.super.isa];
        }

LABEL_46:
        v26 = v90;

        return v26;
      }

      if (v10 == 2)
      {
        if (!v8)
        {
          _StringGuts.grow(_:)(19);

          v41 = [a2 description];
          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v43;

          v45._countAndFlagsBits = v42;
          v45._object = v44;
          String.append(_:)(v45);

          v46._countAndFlagsBits = 0x756F6620746F6E20;
          v46._object = 0xEA0000000000646ELL;
          String.append(_:)(v46);
          v9 = 0x2064726F636552;
          v8 = 0xE700000000000000;
        }

        v47 = v9;
        v48 = v8;
        v49 = 25;
LABEL_32:
        v26 = sub_1000BB7F8(v47, v48, v49);
        goto LABEL_14;
      }

      if (!v8)
      {
        _StringGuts.grow(_:)(27);

        v61._countAndFlagsBits = a3;
        v61._object = a4;
        String.append(_:)(v61);
        v62._countAndFlagsBits = 0x756F6620746F6E20;
        v62._object = 0xEE00206E6920646ELL;
        String.append(_:)(v62);
        v63 = [a2 description];
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v65;

        v67._countAndFlagsBits = v64;
        v67._object = v66;
        String.append(_:)(v67);

        v9 = 0x656372756F736552;
        v8 = 0xE900000000000020;
      }

      v68 = CPLErrorDomain;
      sub_1000BB130(&unk_1002C0E10, &qword_100245068);
      v69 = swift_initStackObject();
      *(v69 + 16) = xmmword_100244100;
      *(v69 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v69 + 72) = &type metadata for String;
      *(v69 + 40) = v70;
      *(v69 + 48) = v9;
      *(v69 + 56) = v8;
      v37 = v68;
      sub_100118E2C(v69);
      swift_setDeallocating();
      sub_1000CCDBC(v69 + 32, &unk_1002C4040, &unk_100245070);
      v71 = objc_allocWithZone(NSError);
      v39.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v40 = [v71 initWithDomain:v37 code:26 userInfo:v39.super.isa];
    }

    v26 = v40;

    return v26;
  }

  v10 = *(a1 + 96);
  v11 = *(a1 + 104);

  if (v11)
  {
    goto LABEL_7;
  }

  if (!v8)
  {
LABEL_12:
    v106 = 0;
    v107 = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v18._object = 0x8000000100201B20;
    v18._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v18);
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 0xD00000000000001CLL;
    v20._object = 0x8000000100201B40;
    String.append(_:)(v20);
    v21 = [a2 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);
    goto LABEL_13;
  }

  _StringGuts.grow(_:)(25);

  v106 = v9;
  v107 = v8;
  v12._countAndFlagsBits = 0xD000000000000015;
  v12._object = 0x8000000100201B60;
  String.append(_:)(v12);
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);
LABEL_13:

  v26 = sub_1000BB7F8(v106, v107, 150);
LABEL_14:

  return v26;
}

uint64_t sub_1000BC620(uint64_t a1, __n128 a2)
{
  if (a1 < 1)
  {
    v4 = [objc_opt_self() standardUserDefaults];
    v5 = String._bridgeToObjectiveC()();
    [v4 doubleForKey:v5];
  }

  return Date.init(timeIntervalSinceNow:)();
}

id sub_1000BC70C(uint64_t a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v8 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = a4;
    v10 = a3;

    if ((a2 & 1) == 0)
    {
      if (v9)
      {
        _StringGuts.grow(_:)(25);

        v43 = v10;
        v44 = v9;
        v11._countAndFlagsBits = 0xD000000000000015;
        v11._object = 0x8000000100201B60;
        String.append(_:)(v11);
        v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v12);

LABEL_17:
        v24 = sub_1000BB7F8(v43, v44, 150);

        return v24;
      }

LABEL_16:
      _StringGuts.grow(_:)(44);

      v43 = 0xD000000000000013;
      v44 = 0x8000000100201B20;
      v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v22);

      v23._countAndFlagsBits = 0xD000000000000017;
      v23._object = 0x8000000100201C20;
      String.append(_:)(v23);
      goto LABEL_17;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_16;
    }

    v9 = 0;
    v10 = 0;
  }

  v13 = CPLErrorDomain;
  sub_1000BB130(&unk_1002C0E10, &qword_100245068);
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100244120;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 72) = &type metadata for String;
      v27 = 0xD00000000000001CLL;
      if (v9)
      {
        v27 = v10;
      }

      v28 = 0x8000000100201C40;
      if (v9)
      {
        v28 = v9;
      }

      *(inited + 40) = v26;
      *(inited + 48) = v27;
      *(inited + 56) = v28;
      *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 88) = v29;
      *(inited + 120) = type metadata accessor for Date();
      sub_1000CC37C((inited + 96));
      v18 = v13;
      sub_1000BC620(a5, v30);
      sub_100118E2C(inited);
      swift_setDeallocating();
      sub_1000BB130(&unk_1002C4040, &unk_100245070);
      swift_arrayDestroy();
      v31 = objc_allocWithZone(NSError);
      v20.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v21 = [v31 initWithDomain:v18 code:1004 userInfo:v20.super.isa];
    }

    else
    {
      v37 = swift_initStackObject();
      *(v37 + 16) = xmmword_100244100;
      *(v37 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v37 + 72) = &type metadata for String;
      v39 = 0xD00000000000001BLL;
      if (v9)
      {
        v39 = v10;
      }

      v40 = 0x8000000100201C60;
      if (v9)
      {
        v40 = v9;
      }

      *(v37 + 40) = v38;
      *(v37 + 48) = v39;
      *(v37 + 56) = v40;
      v18 = v13;
      sub_100118E2C(v37);
      swift_setDeallocating();
      sub_1000CCDBC(v37 + 32, &unk_1002C4040, &unk_100245070);
      v41 = objc_allocWithZone(NSError);
      v20.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v21 = [v41 initWithDomain:v18 code:80 userInfo:v20.super.isa];
    }
  }

  else if (a1)
  {
    v32 = swift_initStackObject();
    *(v32 + 16) = xmmword_100244100;
    *(v32 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v32 + 72) = &type metadata for String;
    v34 = 0xD00000000000001FLL;
    if (v9)
    {
      v34 = v10;
    }

    v35 = 0x8000000100201C80;
    if (v9)
    {
      v35 = v9;
    }

    *(v32 + 40) = v33;
    *(v32 + 48) = v34;
    *(v32 + 56) = v35;
    v18 = v13;
    sub_100118E2C(v32);
    swift_setDeallocating();
    sub_1000CCDBC(v32 + 32, &unk_1002C4040, &unk_100245070);
    v36 = objc_allocWithZone(NSError);
    v20.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v21 = [v36 initWithDomain:v18 code:2002 userInfo:v20.super.isa];
  }

  else
  {
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_100244100;
    *(v14 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v14 + 72) = &type metadata for String;
    v16 = 0xD00000000000001FLL;
    if (v9)
    {
      v16 = v10;
    }

    v17 = 0x8000000100201CA0;
    if (v9)
    {
      v17 = v9;
    }

    *(v14 + 40) = v15;
    *(v14 + 48) = v16;
    *(v14 + 56) = v17;
    v18 = v13;
    sub_100118E2C(v14);
    swift_setDeallocating();
    sub_1000CCDBC(v14 + 32, &unk_1002C4040, &unk_100245070);
    v19 = objc_allocWithZone(NSError);
    v20.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v21 = [v19 initWithDomain:v18 code:150 userInfo:v20.super.isa];
  }

  v24 = v21;

  return v24;
}

uint64_t sub_1000BCCF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CMTime(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  v8 = type metadata accessor for CMTimeRange(0);
  v9 = *(v8 + 20);
  v10 = *(v5 + 56);
  v10(a2 + v9, 1, 1, v4);
  v11 = *(v8 + 24);
  v10(a2 + v11, 1, 1, v4);
  v12 = *a1;
  v13 = *(a1 + 2);
  UnknownStorage.init()();
  *v7 = v12;
  *(v7 + 2) = v13;
  sub_1000CCDBC(a2 + v9, &qword_1002C0E90, &qword_1002450C0);
  sub_1000CCC3C(v7, a2 + v9, type metadata accessor for CMTime);
  v10(a2 + v9, 0, 1, v4);
  v14 = a1[3];
  LODWORD(a1) = *(a1 + 8);
  UnknownStorage.init()();
  *v7 = v14;
  *(v7 + 2) = a1;
  sub_1000CCDBC(a2 + v11, &qword_1002C0E90, &qword_1002450C0);
  sub_1000CCC3C(v7, a2 + v11, type metadata accessor for CMTime);
  return (v10)(a2 + v11, 0, 1, v4);
}

uint64_t sub_1000BCEE4(Swift::Int a1, unint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
  }

  else
  {
    v12 = v8;
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v13;
    (*(v7 + 8))(v10, v12);
  }

  v14 = *a3;
  if (sub_1000BB700(a1, a2, *a3))
  {
    v32 = a3;
    v15 = v14 + 56;
    v16 = 2;
    v17 = &type metadata for Int;
    v18 = &protocol witness table for Int;
    v33 = a1;
    do
    {
      v34 = a1;
      v35 = a2;

      v21._countAndFlagsBits = 95;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);
      v36 = v16;
      v22 = v17;
      v23 = v18;
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v24);

      a1 = v34;
      v25 = v35;
      if (!*(v14 + 16) || (Hasher.init(_seed:)(), String.hash(into:)(), v26 = Hasher._finalize()(), v27 = -1 << *(v14 + 32), v28 = v26 & ~v27, ((*(v15 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0))
      {
LABEL_18:

        sub_1000C8178(&v34, a1, v25);

        return a1;
      }

      v29 = ~v27;
      while (1)
      {
        v30 = (*(v14 + 48) + 16 * v28);
        v31 = *v30 == a1 && v30[1] == v25;
        if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v28 = (v28 + 1) & v29;
        if (((*(v15 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v20 = __OFADD__(v16++, 1);
      v17 = v22;
      v18 = v23;
      a1 = v33;
    }

    while (!v20);
    __break(1u);
  }

  else
  {

    sub_1000C8178(&v34, a1, a2);

    return a1;
  }

  return result;
}

uint64_t sub_1000BD19C(uint64_t a1)
{
  v2 = sub_1000BB130(&qword_1002C0E58, &qword_100245090);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - v4;
  v6 = sub_1000BB130(&qword_1002C0E60, &qword_100245098);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_1000BB130(&qword_1002C0E68, &qword_1002450A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v17 - v11;
  sub_1000CCBD4(a1, &v17 - v11, type metadata accessor for ResourceDownloadRequest);
  v13 = type metadata accessor for ResourceDownloadRequest(0);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  (*(v7 + 104))(v9, enum case for CodeOperation.DestinationServer.default<A, B>(_:), v6);
  v14 = objc_allocWithZone(sub_1000BB130(&qword_1002C0E70, &qword_1002450A8));
  v15 = CodeOperation.init(service:functionName:request:destinationServer:)();
  dispatch thunk of CodeOperation.shouldSendRecordPCSKeys.setter();
  strcpy(v5, "cmp.icloud.com");
  v5[15] = -18;
  *(v5 + 2) = 0x2E342E332E322E31;
  *(v5 + 3) = 0xEB00000000362E35;
  (*(v3 + 104))(v5, enum case for CodeOperation.DataProtectionType.trustedTarget<A, B>(_:), v2);
  dispatch thunk of CodeOperation.dataProtectionType.setter();
  return v15;
}

id sub_1000BD494()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = [v0 dataForKey:CPLDropDerivativesTestRulesKey];

  if (v1)
  {
    v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    v5 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v7 = [v5 unarchiveArrayOfCPLDropDerivativeRecipesFrom:isa];

    sub_1000CC8B0(0, &qword_1002C0EA8, CPLDropDerivativesRecipe_ptr);
    v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000CC444(v2, v4);
  }

  return v1;
}

void sub_1000BD5A4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  byte_1002C0D28 = v2;
}

void sub_1000BD634()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  byte_1002C0D29 = v2;
}

void sub_1000BD6D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7, void *a8, uint64_t a9, uint64_t a10, unint64_t a11, void *a12)
{
  v98 = a8;
  LODWORD(v97) = a7;
  v96 = a6;
  v102 = a4;
  v16 = sub_1000BB130(&qword_1002C0E88, &qword_1002450B8);
  __chkstk_darwin(v16 - 8);
  v94 = &v90 - v17;
  v18 = type metadata accessor for CMTimeRange(0);
  v92 = *(v18 - 8);
  v93 = v18;
  __chkstk_darwin(v18);
  v20 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(type metadata accessor for RequestItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(a1 + v21);
  v99 = v12;
  v91 = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v24 = sub_1000EA6A0(v23);

    *(a1 + v21) = v24;
    v23 = v24;
  }

  swift_beginAccess();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;

  v25 = [v102 recordName];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(a1 + v21);
  if ((v29 & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v31 = sub_1000EA6A0(v30);

    *(a1 + v21) = v31;
    v30 = v31;
  }

  swift_beginAccess();
  *(v30 + 32) = v26;
  *(v30 + 40) = v28;

  v32 = [v102 zoneID];
  v33 = [v32 zoneName];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v37 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(a1 + v21);
  if ((v37 & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v39 = sub_1000EA6A0(v38);

    *(a1 + v21) = v39;
    v38 = v39;
  }

  swift_beginAccess();
  *(v38 + 64) = v34;
  *(v38 + 72) = v36;

  v40 = [v32 ownerName];
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  if (v41 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v43 == v44)
  {
  }

  else
  {
    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v45)
    {
      goto LABEL_15;
    }

    v46 = [v32 ownerName];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50 = swift_isUniquelyReferenced_nonNull_native();
    v51 = *(a1 + v21);
    if ((v50 & 1) == 0)
    {
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v52 = sub_1000EA6A0(v51);

      *(a1 + v21) = v52;
      v51 = v52;
    }

    swift_beginAccess();
    *(v51 + 80) = v47;
    *(v51 + 88) = v49;
  }

LABEL_15:
  v53 = String._bridgeToObjectiveC()();
  v54 = CPLCloudKitFingerPrintFromDynamicFingerPrint(v53);

  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;

  v58 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *(a1 + v21);
  if ((v58 & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v60 = sub_1000EA6A0(v59);

    *(a1 + v21) = v60;
    v59 = v60;
  }

  v61 = a12;
  swift_beginAccess();
  *(v59 + 112) = v55;
  *(v59 + 120) = v57;

  v95 = v32;
  if (v97)
  {
    if (qword_1002C05F8 != -1)
    {
      swift_once();
    }

    if ((byte_1002C0D29 & 1) == 0)
    {
      v97 = a12;
      v62 = [v98 cloudRecord];
      if (v62)
      {
        v63 = v62;
        v64 = [v102 recordName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v65 = v99;
        v66 = sub_1000BDFB4(v32);
        if (v65)
        {

          v99 = 0;
          v61 = v97;
        }

        else
        {
          v67 = v66;
          v99 = 0;

          v68 = swift_isUniquelyReferenced_nonNull_native();
          v69 = *(a1 + v21);
          if ((v68 & 1) == 0)
          {
            type metadata accessor for RequestItem._StorageClass(0);
            swift_allocObject();
            v70 = sub_1000EA6A0(v69);

            *(a1 + v21) = v70;
            v69 = v70;
          }

          v61 = v97;
          swift_beginAccess();
          *(v69 + 128) = v67;
        }
      }

      else
      {
        v61 = v97;
      }
    }
  }

  v71 = a11;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *(a1 + v21);
  if ((v72 & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v74 = sub_1000EA6A0(v73);

    *(a1 + v21) = v74;
    v73 = v74;
  }

  swift_beginAccess();
  *(v73 + 48) = a9;
  *(v73 + 56) = a10;

  v75 = [v61 resourceType];
  if (a11 >= 2)
  {
    v76 = v98;
    v77 = v95;
    if (a11 != 2)
    {
      type metadata accessor for CPLCKResourceDownloadType(0);
      v101[0] = a11;
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return;
    }

    if (qword_1002C05E8 != -1)
    {
      v89 = v75;
      swift_once();
      v75 = v89;
    }

    if (sub_1000BB634(v75, qword_1002C0D20))
    {
      v71 = 2;
    }

    else
    {
      v71 = 0;
    }
  }

  else
  {
    v76 = v98;
    v77 = v95;
  }

  v78 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *(a1 + v21);
  if ((v78 & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v80 = sub_1000EA6A0(v79);

    *(a1 + v21) = v80;
    v79 = v80;
  }

  swift_beginAccess();
  *(v79 + 96) = v71;
  *(v79 + 104) = 1;
  v81 = [v76 options];
  [v81 timeRange];

  if (CMTimeRange.isValid.getter())
  {
    v82 = v77;
    v83 = [v76 options];
    [v83 timeRange];

    v84 = v91;
    sub_1000BCCF8(v100, v91);
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v85 = *(a1 + v21);
    }

    else
    {
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();

      v85 = sub_1000EA6A0(v86);

      *(a1 + v21) = v85;
    }

    v87 = v94;
    sub_1000CCC3C(v84, v94, type metadata accessor for CMTimeRange);
    (*(v92 + 56))(v87, 0, 1, v93);
    v88 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange;
    swift_beginAccess();
    sub_1000CC968(v87, v85 + v88, &qword_1002C0E88, &qword_1002450B8);
    swift_endAccess();
  }

  else
  {
  }
}

void *sub_1000BDFB4(uint64_t a1)
{
  v21 = type metadata accessor for Ckcode_RecordTransport();
  v4 = *(v21 - 8);
  __chkstk_darwin(v21);
  v22 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v1 allRelatedCKRecordsInZoneID:a1 identifier:v6];

  sub_1000CC8B0(0, &qword_1002C0E40, CKRecord_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    goto LABEL_18;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
    while (1)
    {
      v23 = &_swiftEmptyArrayStorage;
      result = sub_10011897C(0, v9 & ~(v9 >> 63), 0);
      if (v9 < 0)
      {
        break;
      }

      v11 = 0;
      v12 = v23;
      v18 = v8 & 0xFFFFFFFFFFFFFF8;
      v19 = v4 + 32;
      v20 = v8 & 0xC000000000000001;
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v20)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v18 + 16))
          {
            goto LABEL_17;
          }

          v14 = *(v8 + 8 * v11 + 32);
        }

        Ckcode_RecordTransport.init(_:)();
        if (v2)
        {

          return v12;
        }

        v23 = v12;
        v16 = v12[2];
        v15 = v12[3];
        if (v16 >= v15 >> 1)
        {
          sub_10011897C((v15 > 1), v16 + 1, 1);
          v12 = v23;
        }

        v12[2] = v16 + 1;
        (*(v4 + 32))(v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16, v22, v21);
        ++v11;
        if (v13 == v9)
        {

          return v12;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (!v9)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    return &_swiftEmptyArrayStorage;
  }

  return result;
}

void sub_1000BE260(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1000BE2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v64 = a6;
  v65 = a7;
  v62[1] = a4;
  v63 = a5;
  v62[0] = a3;
  v11 = type metadata accessor for ResponseItem(0);
  v72 = *(v11 - 8);
  v12 = __chkstk_darwin(v11 - 8);
  v68 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = (v62 - v14);
  v16 = sub_1000BB130(&qword_1002C0E38, &qword_100245088);
  __chkstk_darwin(v16 - 8);
  v18 = v62 - v17;
  v19 = type metadata accessor for ResourceDownloadResponse(0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000CC794(a1, v18, &qword_1002C0E38, &qword_100245088);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return sub_1000CCDBC(v18, &qword_1002C0E38, &qword_100245088);
  }

  sub_1000CCC3C(v18, v22, type metadata accessor for ResourceDownloadResponse);
  v71 = *v22;
  v24 = v22;
  v70 = *(v71 + 16);
  if (!v70)
  {
    return sub_1000CCD5C(v24, type metadata accessor for ResourceDownloadResponse);
  }

  v25 = 0;
  v69 = v71 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
  v66 = a2;
  v67 = v24;
  while (v25 < *(v71 + 16))
  {
    v26 = *(v72 + 72);
    sub_1000CCBD4(v69 + v26 * v25, v15, type metadata accessor for ResponseItem);
    v28 = *v15;
    v27 = v15[1];
    if (!v15[12])
    {
      swift_beginAccess();
      sub_1000CCBD4(v15, v68, type metadata accessor for ResponseItem);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = *(a8 + 16);
      v48 = v73;
      *(a8 + 16) = 0x8000000000000000;
      v50 = sub_10011704C(v28, v27);
      v51 = v48[2];
      v52 = (v49 & 1) == 0;
      v53 = v51 + v52;
      if (__OFADD__(v51, v52))
      {
        goto LABEL_34;
      }

      v54 = v49;
      if (v48[3] >= v53)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100118580();
        }
      }

      else
      {
        sub_1001177BC(v53, isUniquelyReferenced_nonNull_native);
        v55 = sub_10011704C(v28, v27);
        if ((v54 & 1) != (v56 & 1))
        {
          goto LABEL_36;
        }

        v50 = v55;
      }

      a2 = v66;
      v57 = v73;
      if (v54)
      {
        sub_1000CCE1C(v68, v73[7] + v50 * v26, type metadata accessor for ResponseItem);
      }

      else
      {
        v73[(v50 >> 6) + 8] |= 1 << v50;
        v58 = (v57[6] + 16 * v50);
        *v58 = v28;
        v58[1] = v27;
        sub_1000CCC3C(v68, v57[7] + v50 * v26, type metadata accessor for ResponseItem);
        v59 = v57[2];
        v60 = __OFADD__(v59, 1);
        v61 = v59 + 1;
        if (v60)
        {
          goto LABEL_35;
        }

        v57[2] = v61;
      }

      *(a8 + 16) = v57;

      swift_endAccess();
      goto LABEL_31;
    }

    swift_beginAccess();
    v29 = *(a2 + 16);
    if (*(v29 + 16))
    {
      v30 = sub_10011704C(v28, v27);
      if (v31)
      {
        v32 = *(*(v29 + 56) + 8 * v30);
        swift_endAccess();
        v33 = v32;
        v34 = sub_1000BB948(v15, v33, v63, v64);
        (v62[0])(0, 0, 0, 0, 0, v33, 0, v34);

        swift_beginAccess();
        v35 = sub_1001170C4(v33);
        if (v36)
        {
          v37 = v35;
          v38 = v65;
          v39 = swift_isUniquelyReferenced_nonNull_native();
          v40 = *(v38 + 16);
          v73 = v40;
          *(v38 + 16) = 0x8000000000000000;
          if (!v39)
          {
            sub_100118410();
            v40 = v73;
          }

          sub_1000C9924(v37, v40);
          *(v38 + 16) = v40;

          a2 = v66;
        }

        swift_endAccess();
        swift_beginAccess();
        v41 = sub_10011704C(v28, v27);
        if (v42)
        {
          v43 = v41;
          v44 = swift_isUniquelyReferenced_nonNull_native();
          v45 = *(a2 + 16);
          v73 = v45;
          *(a2 + 16) = 0x8000000000000000;
          if (!v44)
          {
            sub_1001182A4();
            v45 = v73;
          }

          v46 = *(*(v45 + 56) + 8 * v43);
          sub_1000C9774(v43, v45);
          *(a2 + 16) = v45;
        }

        swift_endAccess();

LABEL_31:
        v24 = v67;
        goto LABEL_6;
      }
    }

    swift_endAccess();
LABEL_6:
    ++v25;
    sub_1000CCD5C(v15, type metadata accessor for ResponseItem);
    if (v70 == v25)
    {
      return sub_1000CCD5C(v24, type metadata accessor for ResourceDownloadResponse);
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000BE928(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      sub_1000CC8B0(0, &qword_1002C0DD8, CPLEngineResourceDownloadTask_ptr);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1001170C4(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_1000BE9EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, double), double a4)
{
  swift_beginAccess();
  if (!*(*(a2 + 16) + 16))
  {
    return swift_endAccess();
  }

  sub_1001170C4(a1);
  if ((v8 & 1) == 0)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  return a3(a1, a4);
}

void sub_1000BEA88(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(id, uint64_t, uint64_t, uint64_t, uint64_t, void *, uint64_t, id), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v113 = a8;
  v117 = a7;
  v118 = a6;
  v119 = a5;
  v13 = type metadata accessor for ResponseItem(0);
  v112 = *(v13 - 8);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v111 = &v105 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v105 - v20;
  __chkstk_darwin(v19);
  v23 = (&v105 - v22);
  v24 = sub_1000BB130(&qword_1002C0F48, &qword_100245130);
  __chkstk_darwin(v24 - 8);
  v26 = &v105 - v25;
  v27 = type metadata accessor for URL();
  v114 = *(v27 - 8);
  v115 = v27;
  v28 = __chkstk_darwin(v27);
  v30 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v116 = &v105 - v31;
  swift_beginAccess();
  v32 = *(a4 + 16);
  if (!*(v32 + 16) || (v33 = sub_1001170C4(a2), (v34 & 1) == 0))
  {
    swift_endAccess();
    return;
  }

  v110 = a4;
  v35 = a2;
  v36 = (*(v32 + 56) + 16 * v33);
  v38 = *v36;
  v37 = v36[1];
  swift_endAccess();
  if (!a3)
  {
    v109 = v38;
    if (!a1)
    {

      v61 = sub_1000BB7F8(0xD000000000000022, 0x8000000100202120, 150);
      v39 = v37;
      v118(0, 0, 0, 0, 0, v35, 0, v61);

      swift_beginAccess();
      sub_1000C96CC(v35);
      swift_endAccess();

      swift_beginAccess();
      v40 = v109;
      goto LABEL_40;
    }

    sub_1000CC8B0(0, &qword_1002C0E40, CKRecord_ptr);
    sub_1000CC8B0(0, &qword_1002C0E48, CKAsset_ptr);
    v108 = v37;

    v41 = a1;
    CKRecordKeyValueSetting.subscript.getter();
    v42 = v120;
    v43 = v35;
    if (v120)
    {
      v44 = [v120 fileURL];
      if (v44)
      {
        v107 = v41;
        v45 = v44;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v114 + 32))(v116, v30, v115);
        sub_1000BB130(&qword_1002C0F50, &qword_100245138);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100244100;
        *(inited + 32) = NSURLFileSizeKey;
        v47 = NSURLFileSizeKey;
        sub_1000CAA5C(inited);
        swift_setDeallocating();
        sub_1000CCD5C(inited + 32, type metadata accessor for URLResourceKey);
        URL.resourceValues(forKeys:)();

        v70 = type metadata accessor for URLResourceValues();
        v71 = v42;
        v72 = *(v70 - 8);
        (*(v72 + 56))(v26, 0, 1, v70);
        v73 = URLResourceValues.fileSize.getter();
        v75 = v74;
        (*(v72 + 8))(v26, v70);
        v76 = v71;
        if ((v75 & 1) == 0 && !v73)
        {
          v77 = v113;
          swift_beginAccess();
          v78 = *(v77 + 16);
          if (*(v78 + 16) && (v79 = sub_10011704C(v109, v108), (v80 & 1) != 0))
          {
            sub_1000CCBD4(*(v78 + 56) + *(v112 + 72) * v79, v21, type metadata accessor for ResponseItem);
            sub_1000CCC3C(v21, v23, type metadata accessor for ResponseItem);
            swift_endAccess();
            if (v23[11] > 0)
            {
              v81 = sub_1000BB7F8(0xD000000000000021, 0x80000001002021C0, 150);
              v118(0, 0, 0, 0, 0, v43, 0, v81);

              v82 = [objc_opt_self() defaultManager];
              URL._bridgeToObjectiveC()(v83);
              v85 = v84;
              v120 = 0;
              v86 = [v82 removeItemAtURL:v84 error:&v120];

              if (v86)
              {
                v87 = v120;

                v88 = v109;
                v76 = v107;
              }

              else
              {
                v104 = v120;
                _convertNSErrorToError(_:)();

                swift_willThrow();

                v88 = v109;
              }

              sub_1000CCD5C(v23, type metadata accessor for ResponseItem);
              (*(v114 + 8))(v116, v115);
              swift_beginAccess();
              sub_1000C96CC(v43);
              swift_endAccess();

              swift_beginAccess();
              v40 = v88;
              goto LABEL_39;
            }

            sub_1000CCD5C(v23, type metadata accessor for ResponseItem);
          }

          else
          {
            swift_endAccess();
          }
        }

        v48 = sub_1000BE928(v43, a9);
        if (v48)
        {
          v49 = v48;
          v50 = [v48 resource];
          v51 = [v50 identity];

          v52 = v113;
          swift_beginAccess();
          v53 = *(v52 + 16);
          v54 = *(v53 + 16);
          v55 = v109;
          v106 = v43;
          if (v54 && (v56 = sub_10011704C(v109, v108), (v57 & 1) != 0))
          {
            sub_1000CCBD4(*(v53 + 56) + *(v112 + 72) * v56, v16, type metadata accessor for ResponseItem);
            v58 = v111;
            sub_1000CCC3C(v16, v111, type metadata accessor for ResponseItem);
            swift_endAccess();
            v59 = *(v58 + 72);
            if (*(v58 + 80) == 1)
            {
              if (v59 >= 2)
              {
LABEL_15:
                v60 = *(v58 + 64);
                sub_1000CCD5C(v58, type metadata accessor for ResponseItem);
LABEL_21:
                v64 = v76;
                if (v51)
                {
                  v65 = [v51 fingerPrint];
                  if (v65)
                  {
                    v66 = v65;
                    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v69 = v68;
                  }

                  else
                  {
                    v67 = 0;
                    v69 = 0;
                  }

                  v95 = v76;
                  v98 = [v51 fileUTI];
                  if (v98)
                  {
                    v99 = v98;
                    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v97 = v100;

                    v55 = v109;
                  }

                  else
                  {
                    v96 = 0;
                    v97 = 0;
                  }
                }

                else
                {
                  v95 = v76;
                  v96 = 0;
                  v97 = 0;
                  v67 = 0;
                  v69 = 0;
                }

                v101 = v96;
                v102 = v106;
                v118(v95, v67, v69, v101, v97, v106, v60, 0);

                (*(v114 + 8))(v116, v115);
                swift_beginAccess();
                sub_1000C96CC(v102);
                swift_endAccess();

                swift_beginAccess();
                v40 = v55;
                goto LABEL_39;
              }
            }

            else if (v59 == 2)
            {
              goto LABEL_15;
            }

            sub_1000CCD5C(v58, type metadata accessor for ResponseItem);
          }

          else
          {
            swift_endAccess();
          }

          v60 = 0;
          goto LABEL_21;
        }

        v120 = 0;
        v121 = 0xE000000000000000;
        _StringGuts.grow(_:)(30);

        v120 = 0xD00000000000001CLL;
        v121 = 0x80000001002021A0;
        v89 = [v43 description];
        v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v92 = v91;

        v93._countAndFlagsBits = v90;
        v93._object = v92;
        String.append(_:)(v93);

        v94 = sub_1000BB7F8(v120, v121, 27);

        v118(0, 0, 0, 0, 0, v43, 0, v94);

        (*(v114 + 8))(v116, v115);
      }

      else
      {
        v63 = sub_1000BB7F8(0xD000000000000020, 0x8000000100202170, 27);
        v118(0, 0, 0, 0, 0, v35, 0, v63);
      }
    }

    else
    {
      v62 = sub_1000BB7F8(0xD00000000000001ELL, 0x8000000100202150, 27);
      v118(0, 0, 0, 0, 0, v35, 0, v62);
    }

    swift_beginAccess();
    sub_1000C96CC(v43);
    swift_endAccess();

    swift_beginAccess();
    v40 = v109;
LABEL_39:
    v39 = v108;
    goto LABEL_40;
  }

  swift_errorRetain();
  v39 = v37;
  v118(0, 0, 0, 0, 0, v35, 0, a3);

  swift_beginAccess();
  sub_1000C96CC(v35);
  swift_endAccess();

  swift_beginAccess();
  v40 = v38;
LABEL_40:
  v103 = sub_1000C9634(v40, v39);
  swift_endAccess();
}

uint64_t sub_1000BF88C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11)
{
  v101 = a8;
  v98 = a4;
  v99 = a5;
  v97 = a3;
  v15 = type metadata accessor for ResponseItem(0);
  v95 = *(v15 - 8);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = (&v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v20 = &v86 - v19;
  v21 = sub_1000BB130(&qword_1002C0E38, &qword_100245088);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v86 - v25;
  v27 = type metadata accessor for ResourceDownloadResponse(0);
  v100 = *(v27 - 8);
  v28 = __chkstk_darwin(v27);
  v30 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v86 - v31;
  if (qword_1002C05F0 != -1)
  {
    v96 = &v86 - v31;
    swift_once();
    v32 = v96;
  }

  if (byte_1002C0D28 == 1)
  {
    v96 = v32;
    sub_1000CC794(a1, v26, &qword_1002C0E38, &qword_100245088);
    v33 = (*(v100 + 48))(v26, 1, v27);
    v93 = v27;
    if (v33 == 1)
    {
      v94 = a6;
      sub_1000CCDBC(v26, &qword_1002C0E38, &qword_100245088);
      type metadata accessor for ResourceDownloadRequest(0);
      sub_1000CC224(&unk_1002C0E20, type metadata accessor for ResourceDownloadRequest, &protocol conformance descriptor for ResourceDownloadRequest);
      Message.debugDescription.getter();
      v34 = String._bridgeToObjectiveC()();

      v35 = v24;
      if (a2)
      {
        v36 = _convertErrorToNSError(_:)();
      }

      else
      {
        v36 = 0;
      }

      v62 = a7;
      v63 = v98;
      swift_beginAccess();
      if (*(v63 + 16))
      {

        v64.super.isa = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v64.super.isa = 0;
      }

      CPLTaskLogCKCodeRequestAndResponse();

      a7 = v62;
      a6 = v94;
      v24 = v35;
    }

    else
    {
      v88 = v24;
      v89 = a1;
      v90 = a7;
      v92 = v30;
      v37 = v26;
      v38 = v96;
      sub_1000CCC3C(v37, v96, type metadata accessor for ResourceDownloadResponse);
      v39 = *v38;
      v40 = *(*v38 + 16);
      v41 = &_swiftEmptyArrayStorage;
      if (v40)
      {
        v87 = v18;
        v91 = a2;
        v94 = a6;
        v104 = &_swiftEmptyArrayStorage;
        sub_1001189C0(0, v40, 0);
        v41 = v104;
        v42 = v39 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
        v43 = *(v95 + 72);
        do
        {
          sub_1000CCBD4(v42, v20, type metadata accessor for ResponseItem);
          v44 = sub_1000C029C();
          v46 = v45;
          sub_1000CCD5C(v20, type metadata accessor for ResponseItem);
          v104 = v41;
          v48 = v41[2];
          v47 = v41[3];
          if (v48 >= v47 >> 1)
          {
            sub_1001189C0((v47 > 1), v48 + 1, 1);
            v41 = v104;
          }

          v41[2] = v48 + 1;
          v49 = &v41[2 * v48];
          v49[4] = v44;
          v49[5] = v46;
          v42 += v43;
          --v40;
        }

        while (v40);
        a6 = v94;
        a2 = v91;
        v18 = v87;
      }

      v104 = v41;
      sub_1000BB130(&qword_1002C0F30, &qword_100245128);
      sub_1000CCCA4();
      v50 = BidirectionalCollection<>.joined(separator:)();
      v52 = v51;

      v53 = *(v96 + 1);
      if (v53)
      {
        v54 = v96[16];
        v55 = v96;

        v104 = 0;
        v105 = 0xE000000000000000;
        _StringGuts.grow(_:)(30);
        v56._countAndFlagsBits = 0x646F43726F727265;
        v56._object = 0xEB00000000203A65;
        String.append(_:)(v56);
        v102 = v53;
        v103 = v54;
        _print_unlocked<A, B>(_:_:)();
        v57._countAndFlagsBits = 0x654D726F7272650ALL;
        v57._object = 0xEF203A6567617373;
        String.append(_:)(v57);
        String.append(_:)(*(v55 + 24));
        v50 = v104;
        v52 = v105;
      }

      v24 = v88;
      type metadata accessor for ResourceDownloadRequest(0);
      sub_1000CC224(&unk_1002C0E20, type metadata accessor for ResourceDownloadRequest, &protocol conformance descriptor for ResourceDownloadRequest);
      Message.debugDescription.getter();
      v58 = String._bridgeToObjectiveC()();

      v104 = 0xD00000000000001ALL;
      v105 = 0x8000000100202010;
      v59._countAndFlagsBits = v50;
      v59._object = v52;
      String.append(_:)(v59);

      v60 = String._bridgeToObjectiveC()();

      if (a2)
      {
        v61 = _convertErrorToNSError(_:)();
      }

      else
      {
        v61 = 0;
      }

      v65 = v18;
      v66 = v98;
      swift_beginAccess();
      if (*(v66 + 16))
      {

        v67.super.isa = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v67.super.isa = 0;
      }

      a7 = v90;
      CPLTaskLogCKCodeRequestAndResponse();

      sub_1000CCD5C(v96, type metadata accessor for ResourceDownloadResponse);
      v18 = v65;
      v30 = v92;
      a1 = v89;
    }

    v27 = v93;
  }

  sub_1000CC794(a1, v24, &qword_1002C0E38, &qword_100245088);
  if ((*(v100 + 48))(v24, 1, v27) == 1)
  {
    sub_1000CCDBC(v24, &qword_1002C0E38, &qword_100245088);
    if (a2)
    {
      v68 = a2;
    }

    else
    {
      v68 = sub_1000BB7F8(0xD000000000000022, 0x8000000100201A50, 150);
    }

    swift_errorRetain();
    (v99)(v68);
  }

  else
  {
    sub_1000CCC3C(v24, v30, type metadata accessor for ResourceDownloadResponse);
    v69 = *(v30 + 1);
    if (v69)
    {
      sub_1000BC70C(v69, v30[16], *(v30 + 3), *(v30 + 4), *(v30 + 5));
      v99();

      v70 = v30;
    }

    else
    {
      v91 = a2;
      v92 = v30;
      v94 = a6;
      swift_beginAccess();
      if (*(*(a7 + 16) + 16))
      {
        v72 = *v92;
        v73 = *(*v92 + 16);
        if (v73)
        {
          v100 = a11;
          v74 = v72 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
          v75 = *(v95 + 72);
          do
          {
            sub_1000CCBD4(v74, v18, type metadata accessor for ResponseItem);
            v76 = v18;
            v77 = *v18;
            v78 = v18[1];
            v79 = v101;
            swift_beginAccess();
            v80 = *(v79 + 16);
            if (*(v80 + 16) && (v81 = sub_10011704C(v77, v78), (v82 & 1) != 0))
            {
              v83 = *(*(v80 + 56) + 8 * v81);
              swift_endAccess();
              v84 = v83;
              v85 = sub_1000BB948(v76, v84, a9, a10);
              (v100)(0, 0, 0, 0, 0, v84, 0, v85);
            }

            else
            {
              swift_endAccess();
            }

            v18 = v76;
            sub_1000CCD5C(v76, type metadata accessor for ResponseItem);
            v74 += v75;
            --v73;
          }

          while (v73);
        }
      }

      (v99)(v91);
      v70 = v92;
    }

    return sub_1000CCD5C(v70, type metadata accessor for ResourceDownloadResponse);
  }
}

Swift::Int sub_1000C029C()
{
  v110 = type metadata accessor for Ckcode_RecordTransport();
  v1 = *(v110 - 8);
  __chkstk_darwin(v110);
  v109 = &v106 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000BB130(&qword_1002C0E30, &qword_100245080);
  v4 = __chkstk_darwin(v3 - 8);
  v108 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v106 - v6;
  v8 = *v0;
  v9 = v0[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  v11 = 0xE700000000000000;
  v12 = 0x7B20736D657469;
  if (v10)
  {
    v112[0] = 0;
    v112[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(18);

    v112[0] = 0xD000000000000010;
    v112[1] = 0x8000000100202030;
    v13._countAndFlagsBits = v8;
    v13._object = v9;
    String.append(_:)(v13);
    v14._countAndFlagsBits = v112[0];
    v15 = v112[1];
    strcpy(v112, "items {");
    v112[1] = 0xE700000000000000;
    v14._object = v15;
    String.append(_:)(v14);

    v12 = v112[0];
    v11 = v112[1];
  }

  v16 = v0[2];
  v17 = v0[3];
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    strcpy(v112, "\n  recordID: ");
    HIWORD(v112[1]) = -4864;
    String.append(_:)(*&v16);
    v19 = v112[0];
    v20 = v112[1];
    v112[0] = v12;
    v112[1] = v11;

    v21._countAndFlagsBits = v19;
    v21._object = v20;
    String.append(_:)(v21);

    v12 = v112[0];
    v11 = v112[1];
  }

  v22 = v0[4];
  v23 = v0[5];
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v112[0] = 0;
    v112[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v112[0] = 0xD000000000000011;
    v112[1] = 0x8000000100202050;
    v25._countAndFlagsBits = v22;
    v25._object = v23;
    String.append(_:)(v25);
    v26 = v112[0];
    v27 = v112[1];
    v112[0] = v12;
    v112[1] = v11;

    v28._countAndFlagsBits = v26;
    v28._object = v27;
    String.append(_:)(v28);

    v11 = v112[1];
    v111 = v112[0];
  }

  else
  {
    v111 = v12;
  }

  v29 = *(type metadata accessor for ResponseItem(0) + 52);
  sub_1000CC794(v0 + v29, v7, &qword_1002C0E30, &qword_100245080);
  v107 = v1;
  v30 = *(v1 + 48);
  v31 = v110;
  v32 = v30(v7, 1, v110);
  sub_1000CCDBC(v7, &qword_1002C0E30, &qword_100245080);
  if (v32 != 1)
  {
    v35 = v0 + v29;
    v36 = v108;
    sub_1000CC794(v35, v108, &qword_1002C0E30, &qword_100245080);
    v34 = v0;
    if (v30(v36, 1, v31) == 1)
    {
      v37 = v109;
      Ckcode_RecordTransport.init()();
      v38 = v30(v36, 1, v31);
      v39 = v111;
      v40 = v107;
      if (v38 != 1)
      {
        sub_1000CCDBC(v36, &qword_1002C0E30, &qword_100245080);
      }
    }

    else
    {
      v40 = v107;
      v37 = v109;
      (*(v107 + 32))(v109, v36, v31);
      v39 = v111;
    }

    v41 = v37;
    v42 = Ckcode_RecordTransport.localSerialization.getter();
    v44 = v43;
    (*(v40 + 8))(v41, v31);
    v45 = Data.debugDescription.getter();
    v47 = v46;
    sub_1000CC444(v42, v44);
    if (String.count.getter() <= 20)
    {
      goto LABEL_29;
    }

    if ((v47 & 0x2000000000000000) != 0)
    {
      v48 = HIBYTE(v47) & 0xF;
    }

    else
    {
      v48 = v45 & 0xFFFFFFFFFFFFLL;
    }

    v49 = 7;
    if (((v47 >> 60) & ((v45 & 0x800000000000000) == 0)) != 0)
    {
      v49 = 11;
    }

    v110 = v48;
    v50 = (v49 | (v48 << 16));
    String.index(_:offsetBy:)();
    v109 = v50;
    v51 = String.index(_:offsetBy:)();
    v52 = String.subscript.getter();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v115 = 0;
    v116 = 0xE000000000000000;
    v59 = String.count.getter();
    v60 = Substring.distance(from:to:)();
    v61 = __OFADD__(v59, v60);
    result = v59 + v60;
    if (v61)
    {
      __break(1u);
    }

    else
    {
      String.reserveCapacity(_:)(result);
      v112[0] = v52;
      v112[1] = v54;
      v113 = v56;
      v114 = v58;
      sub_1000CCD08();
      String.append<A>(contentsOf:)();
      v112[0] = 3026478;
      v112[1] = 0xE300000000000000;
      String.append<A>(contentsOf:)();

      if (4 * v110 >= v51 >> 14)
      {
        v63 = v115;
        v64 = v116;
        v65 = String.subscript.getter();
        v67 = v66;
        v69 = v68;
        v71 = v70;

        v115 = v63;
        v116 = v64;
        v112[0] = v65;
        v112[1] = v67;
        v113 = v69;
        v114 = v71;
        String.append<A>(contentsOf:)();

        v45 = v115;
        v47 = v116;
        v39 = v111;
LABEL_29:
        v112[0] = 0;
        v112[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(39);

        v112[0] = 0xD000000000000025;
        v112[1] = 0x80000001002020F0;
        v72._countAndFlagsBits = v45;
        v72._object = v47;
        String.append(_:)(v72);

        v73 = v112[0];
        v74 = v112[1];
        v112[0] = v39;
        v112[1] = v11;

        v75._countAndFlagsBits = v73;
        v75._object = v74;
        String.append(_:)(v75);

        v33 = v112[0];
        v11 = v112[1];
        goto LABEL_30;
      }
    }

    __break(1u);
    return result;
  }

  v33 = v111;
  v34 = v0;
LABEL_30:
  v76 = v34[6];
  v77 = v34[7];
  v78 = HIBYTE(v77) & 0xF;
  if ((v77 & 0x2000000000000000) == 0)
  {
    v78 = v76 & 0xFFFFFFFFFFFFLL;
  }

  if (v78)
  {
    v112[0] = 0;
    v112[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v112[0] = 0xD000000000000011;
    v112[1] = 0x8000000100202070;
    v79._countAndFlagsBits = v76;
    v79._object = v77;
    String.append(_:)(v79);
    v80 = v112[0];
    v81 = v112[1];
    v112[0] = v33;
    v112[1] = v11;

    v82._countAndFlagsBits = v80;
    v82._object = v81;
    String.append(_:)(v82);

    v33 = v112[0];
    v11 = v112[1];
  }

  v83 = v34[8];
  if (v83)
  {
    v112[0] = 0;
    v112[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v112[0] = 0xD000000000000016;
    v112[1] = 0x8000000100202090;
    v115 = v83;
    v84._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v84);

    v85 = v112[0];
    v86 = v112[1];
    v112[0] = v33;
    v112[1] = v11;

    v87._countAndFlagsBits = v85;
    v87._object = v86;
    String.append(_:)(v87);

    v33 = v112[0];
    v11 = v112[1];
  }

  v88 = v34[9];
  if (v88)
  {
    v89 = *(v34 + 80);
    v112[0] = 0;
    v112[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(19);
    v90._object = 0x80000001002020B0;
    v90._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v90);
    v115 = v88;
    LOBYTE(v116) = v89;
    _print_unlocked<A, B>(_:_:)();
    v91 = v112[0];
    v92 = v112[1];
    v112[0] = v33;
    v112[1] = v11;

    v93._countAndFlagsBits = v91;
    v93._object = v92;
    String.append(_:)(v93);

    v33 = v112[0];
    v11 = v112[1];
  }

  v94 = v34[11];
  if (v94)
  {
    v112[0] = 0;
    v112[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v112[0] = 0xD00000000000001ALL;
    v112[1] = 0x80000001002020D0;
    v115 = v94;
    v95._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v95);

    v96 = v112[0];
    v97 = v112[1];
    v112[0] = v33;
    v112[1] = v11;

    v98._countAndFlagsBits = v96;
    v98._object = v97;
    String.append(_:)(v98);

    v33 = v112[0];
    v11 = v112[1];
  }

  v99 = v34[12];
  if (v99)
  {
    v100 = *(v34 + 104);
    v112[0] = 0;
    v112[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v101._countAndFlagsBits = 0x726F72726520200ALL;
    v101._object = 0xEE00203A65646F43;
    String.append(_:)(v101);
    v115 = v99;
    LOBYTE(v116) = v100;
    _print_unlocked<A, B>(_:_:)();
    v102 = v112[0];
    v103 = v112[1];
    v112[0] = v33;
    v112[1] = v11;

    v104._countAndFlagsBits = v102;
    v104._object = v103;
    String.append(_:)(v104);

    v33 = v112[0];
    v11 = v112[1];
  }

  v112[0] = v33;
  v112[1] = v11;

  v105._countAndFlagsBits = 32010;
  v105._object = 0xE200000000000000;
  String.append(_:)(v105);

  return v112[0];
}

void sub_1000C0E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a5;
  if (a3)
  {
    v14 = String._bridgeToObjectiveC()();
    if (!v12)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = 0;
  if (a5)
  {
LABEL_3:
    v12 = String._bridgeToObjectiveC()();
  }

LABEL_4:
  if (a8)
  {
    v15 = _convertErrorToNSError(_:)();
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  (*(a9 + 16))(a9, a1, v14, v12, a6, a7);
}

void sub_1000C0EFC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1000C0F6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1000BB130(&qword_1002C0E78, &qword_1002450B0);
  type metadata accessor for RequestItem(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100244100;
  sub_1000CC224(&qword_1002C0E80, type metadata accessor for RequestItem, &protocol conformance descriptor for RequestItem);
  static Message.with(_:)();

  *a1 = v8;
  return result;
}

void sub_1000C10E8(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t *a7)
{
  v219 = a7;
  v220 = a5;
  v221 = a6;
  v217 = a3;
  v10 = sub_1000BB130(&qword_1002C0E88, &qword_1002450B8);
  __chkstk_darwin(v10 - 8);
  v215 = &v204 - v11;
  v12 = type metadata accessor for CMTimeRange(0);
  v213 = *(v12 - 8);
  v214 = v12;
  __chkstk_darwin(v12);
  v216 = &v204 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BB130(&qword_1002C0E90, &qword_1002450C0);
  __chkstk_darwin(v14 - 8);
  v210 = &v204 - v15;
  v212 = type metadata accessor for CMTime(0);
  v209 = *(v212 - 8);
  __chkstk_darwin(v212);
  v211 = &v204 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BB130(&qword_1002C0F00, &qword_100246410);
  __chkstk_darwin(v17 - 8);
  v206 = &v204 - v18;
  v208 = type metadata accessor for VideoHEVCProfileTierLevelInformation(0);
  v205 = *(v208 - 8);
  __chkstk_darwin(v208);
  v207 = &v204 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v204 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v24 = UUID.uuidString.getter();
  v26 = v25;
  (*(v21 + 8))(v23, v20);
  v27 = *(type metadata accessor for RequestItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *&v27[a1];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v30 = sub_1000EA6A0(v29);

    *&v27[a1] = v30;
    v29 = v30;
  }

  swift_beginAccess();
  *(v29 + 16) = v24;
  *(v29 + 24) = v26;

  v31 = [a2 recordName];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  v35 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *&v27[a1];
  if ((v35 & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v37 = sub_1000EA6A0(v36);

    *&v27[a1] = v37;
    v36 = v37;
  }

  swift_beginAccess();
  *(v36 + 32) = v32;
  *(v36 + 40) = v34;

  v223 = [a2 zoneID];
  v38 = [v223 zoneName];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  v42 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *&v27[a1];
  v224 = a1;
  v44 = v27;
  if ((v42 & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v45 = sub_1000EA6A0(v43);

    *&v27[a1] = v45;
    v43 = v45;
  }

  v46 = v219;
  swift_beginAccess();
  *(v43 + 64) = v39;
  *(v43 + 72) = v41;

  v47 = [v223 ownerName];
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v222 = v27;
  if (v48 == v51 && v50 == v52)
  {
  }

  else
  {
    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v53)
    {
      goto LABEL_15;
    }

    v54 = [v223 ownerName];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    v58 = v224;
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v60 = *&v27[v58];
    if ((v59 & 1) == 0)
    {
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v61 = sub_1000EA6A0(v60);

      *&v27[v58] = v61;
      v60 = v61;
    }

    swift_beginAccess();
    *(v60 + 80) = v55;
    *(v60 + 88) = v57;
    v44 = v222;
  }

LABEL_15:
  v62 = v224;
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *&v44[v62];
  if ((v63 & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v65 = sub_1000EA6A0(v64);

    *&v44[v62] = v65;
    v64 = v65;
  }

  v66 = v221;
  swift_beginAccess();
  *(v64 + 48) = v217;
  *(v64 + 56) = a4;

  v67 = v220;
  if (v220 >= 3)
  {
    type metadata accessor for CPLCKResourceDownloadType(0);
    v227.value = v67;

    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

  v68 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *&v44[v62];
  if ((v68 & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v70 = sub_1000EA6A0(v69);

    *&v44[v62] = v70;
    v69 = v70;
  }

  swift_beginAccess();
  *(v69 + 96) = v67;
  *(v69 + 104) = 1;
  if (v66)
  {
    if (*(v66 + 16))
    {
      v71 = sub_10011704C(0x707954616964656DLL, 0xEA00000000007365);
      if (v72)
      {
        sub_1000CC854(*(v66 + 56) + 32 * v71, &v227);
        sub_1000BB130(&qword_1002C0F18, &qword_100245110);
        if (swift_dynamicCast())
        {
          v220 = v225;
          if (v225 >> 62)
          {
            goto LABEL_40;
          }

          for (i = *((v220 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
          {
            v74 = 0;
            v217 = v220 & 0xC000000000000001;
            v75 = v220 & 0xFFFFFFFFFFFFFF8;
            v76 = &_swiftEmptyArrayStorage;
            while (1)
            {
              if (v217)
              {
                v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v74 >= *(v75 + 16))
                {
                  goto LABEL_39;
                }

                v77 = *(v220 + 8 * v74 + 32);
              }

              v44 = v77;
              v78 = v74 + 1;
              if (__OFADD__(v74, 1))
              {
                break;
              }

              v79 = [v77 integerValue];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v76 = sub_1000C9358(0, *(v76 + 2) + 1, 1, v76);
              }

              v81 = *(v76 + 2);
              v80 = *(v76 + 3);
              if (v81 >= v80 >> 1)
              {
                v76 = sub_1000C9358((v80 > 1), v81 + 1, 1, v76);
              }

              *(v76 + 2) = v81 + 1;
              v82 = &v76[16 * v81];
              *(v82 + 4) = v79;
              v82[40] = v79 < 3;
              ++v74;
              v62 = v224;
              v44 = v222;
              if (v78 == i)
              {
                goto LABEL_42;
              }
            }

            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            ;
          }

          v76 = &_swiftEmptyArrayStorage;
LABEL_42:

          v83 = swift_isUniquelyReferenced_nonNull_native();
          v84 = *&v44[v62];
          if ((v83 & 1) == 0)
          {
            type metadata accessor for RequestItem._StorageClass(0);
            swift_allocObject();
            v85 = sub_1000EA6A0(v84);

            *&v44[v62] = v85;
            v84 = v85;
          }

          v46 = v219;
          v66 = v221;
          v86 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__mediaTypeHint;
          swift_beginAccess();
          *(v84 + v86) = v76;
        }
      }
    }

    if (!*(v66 + 16))
    {
      goto LABEL_58;
    }

    v87 = sub_10011704C(0x666F725063766568, 0xEB00000000656C69);
    if ((v88 & 1) == 0)
    {
      goto LABEL_58;
    }

    sub_1000CC854(*(v66 + 56) + 32 * v87, &v227);
    sub_1000CC8B0(0, &qword_1002C0EA0, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v89 = v225;
      if (*(v66 + 16))
      {
        v90 = sub_10011704C(0x7265695463766568, 0xE800000000000000);
        if (v91)
        {
          sub_1000CC854(*(v66 + 56) + 32 * v90, &v227);
          if (swift_dynamicCast())
          {
            v92 = v66;
            v93 = v225;
            if (*(v92 + 16) && (v94 = sub_10011704C(0x6576654C63766568, 0xE90000000000006CLL), (v95 & 1) != 0))
            {
              sub_1000CC854(*(v92 + 56) + 32 * v94, &v227);
              v96 = swift_dynamicCast();
              if (v96)
              {
                v97 = v225;
                __chkstk_darwin(v96);
                *(&v204 - 4) = v89;
                *(&v204 - 3) = v93;
                *(&v204 - 2) = v97;
                sub_1000CC224(&qword_1002C0F10, type metadata accessor for VideoHEVCProfileTierLevelInformation, &protocol conformance descriptor for VideoHEVCProfileTierLevelInformation);
                v98 = v218;
                static Message.with(_:)();
                v218 = v98;
                v99 = v224;
                if (swift_isUniquelyReferenced_nonNull_native())
                {

                  v100 = *&v44[v99];
                }

                else
                {
                  type metadata accessor for RequestItem._StorageClass(0);
                  swift_allocObject();

                  v100 = sub_1000EA6A0(v201);

                  *&v44[v99] = v100;
                }

                v62 = v99;
                v202 = v206;
                sub_1000CCC3C(v207, v206, type metadata accessor for VideoHEVCProfileTierLevelInformation);
                (*(v205 + 56))(v202, 0, 1, v208);
                v203 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoProfileTierLevelInformation;
                swift_beginAccess();
                sub_1000CC968(v202, v100 + v203, &qword_1002C0F00, &qword_100246410);
                swift_endAccess();
              }

              else
              {

                v62 = v224;
              }

              v66 = v221;
            }

            else
            {

              v62 = v224;
              v66 = v92;
            }

            goto LABEL_58;
          }
        }
      }
    }

    v62 = v224;
LABEL_58:
    if (*(v66 + 16))
    {
      v101 = sub_10011704C(0xD00000000000001ALL, 0x8000000100201EC0);
      if (v102)
      {
        sub_1000CC854(*(v66 + 56) + 32 * v101, &v227);
        sub_1000CC8B0(0, &qword_1002C0EA0, NSNumber_ptr);
        if (swift_dynamicCast())
        {
          v103 = v225;
          v104 = [v225 unsignedIntValue];
          if (swift_isUniquelyReferenced_nonNull_native())
          {

            v105 = *&v44[v62];
          }

          else
          {
            type metadata accessor for RequestItem._StorageClass(0);
            swift_allocObject();

            v105 = sub_1000EA6A0(v106);

            v66 = v221;

            *&v44[v62] = v105;
          }

          v107 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackChannelCount;
          swift_beginAccess();
          *(v105 + v107) = v104;
        }
      }
    }

    if (*(v66 + 16))
    {
      v108 = sub_10011704C(0xD00000000000001DLL, 0x8000000100201EE0);
      if (v109)
      {
        sub_1000CC854(*(v66 + 56) + 32 * v108, &v227);
        sub_1000CC8B0(0, &qword_1002C0EA0, NSNumber_ptr);
        if (swift_dynamicCast())
        {
          v110 = v225;
          v111 = [v225 unsignedIntValue];
          if (swift_isUniquelyReferenced_nonNull_native())
          {

            v112 = *&v44[v62];
          }

          else
          {
            type metadata accessor for RequestItem._StorageClass(0);
            swift_allocObject();

            v112 = sub_1000EA6A0(v113);

            v66 = v221;

            *&v44[v62] = v112;
          }

          v114 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackHoachannelCount;
          swift_beginAccess();
          *(v112 + v114) = v111;
        }
      }
    }

    if (*(v66 + 16))
    {
      v115 = sub_10011704C(0xD00000000000001DLL, 0x8000000100201F00);
      if (v116)
      {
        sub_1000CC854(*(v66 + 56) + 32 * v115, &v227);
        sub_1000CC8B0(0, &qword_1002C0EA0, NSNumber_ptr);
        if (swift_dynamicCast())
        {
          v117 = v225;
          v118 = [v225 unsignedIntValue];
          if (swift_isUniquelyReferenced_nonNull_native())
          {

            v119 = *&v44[v62];
          }

          else
          {
            type metadata accessor for RequestItem._StorageClass(0);
            swift_allocObject();

            v119 = sub_1000EA6A0(v120);

            v66 = v221;

            *&v44[v62] = v119;
          }

          v121 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackBedchannelCount;
          swift_beginAccess();
          *(v119 + v121) = v118;
        }
      }
    }

    if (*(v66 + 16))
    {
      v122 = sub_10011704C(0xD00000000000002ALL, 0x8000000100201F20);
      if (v123)
      {
        sub_1000CC854(*(v66 + 56) + 32 * v122, &v227);
        if (swift_dynamicCast())
        {
          v124 = v62;
          v125 = v225;
          v126 = v226;
          v127 = swift_isUniquelyReferenced_nonNull_native();
          v128 = *&v44[v124];
          if ((v127 & 1) == 0)
          {
            type metadata accessor for RequestItem._StorageClass(0);
            swift_allocObject();
            v129 = sub_1000EA6A0(v128);

            *&v44[v124] = v129;
            v128 = v129;
          }

          v130 = (v128 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackCodecProfileLevelDescription);
          swift_beginAccess();
          *v130 = v125;
          v130[1] = v126;

          v62 = v224;
          v66 = v221;
        }
      }
    }

    if (*(v66 + 16))
    {
      v131 = sub_10011704C(0xD000000000000017, 0x8000000100201F50);
      if (v132)
      {
        sub_1000CC854(*(v66 + 56) + 32 * v131, &v227);
        if (swift_dynamicCast())
        {
          v133 = v62;
          v134 = v225;
          v135 = v226;
          v136 = swift_isUniquelyReferenced_nonNull_native();
          v137 = *&v44[v133];
          if ((v136 & 1) == 0)
          {
            type metadata accessor for RequestItem._StorageClass(0);
            swift_allocObject();
            v138 = sub_1000EA6A0(v137);

            *&v44[v133] = v138;
            v137 = v138;
          }

          v139 = (v137 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraMake);
          swift_beginAccess();
          *v139 = v134;
          v139[1] = v135;

          v62 = v224;
          v66 = v221;
        }
      }
    }

    if (*(v66 + 16))
    {
      v140 = sub_10011704C(0xD000000000000018, 0x8000000100201F70);
      if (v141)
      {
        sub_1000CC854(*(v66 + 56) + 32 * v140, &v227);
        if (swift_dynamicCast())
        {
          v142 = v62;
          v143 = v225;
          v144 = v226;
          v145 = swift_isUniquelyReferenced_nonNull_native();
          v146 = *&v44[v142];
          if ((v145 & 1) == 0)
          {
            type metadata accessor for RequestItem._StorageClass(0);
            swift_allocObject();
            v147 = sub_1000EA6A0(v146);

            *&v44[v142] = v147;
            v146 = v147;
          }

          v148 = (v146 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraModel);
          swift_beginAccess();
          *v148 = v143;
          v148[1] = v144;

          v62 = v224;
          v66 = v221;
        }
      }
    }

    if (*(v66 + 16))
    {
      v149 = sub_10011704C(0xD00000000000001ELL, 0x8000000100201F90);
      if (v150)
      {
        sub_1000CC854(*(v66 + 56) + 32 * v149, &v227);
        sub_1000CC8B0(0, &qword_1002C0EA0, NSNumber_ptr);
        if (swift_dynamicCast())
        {
          v151 = v225;
          v152 = [v225 BOOLValue];
          if (swift_isUniquelyReferenced_nonNull_native())
          {

            v153 = *&v44[v62];
          }

          else
          {
            type metadata accessor for RequestItem._StorageClass(0);
            swift_allocObject();

            v153 = sub_1000EA6A0(v154);

            v66 = v221;

            *&v44[v62] = v153;
          }

          v155 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__clientSupportsProMotionDisplay;
          swift_beginAccess();
          *(v153 + v155) = v152;
        }
      }
    }

    if (*(v66 + 16))
    {
      v156 = sub_10011704C(0x7275446F65646976, 0xED00006E6F697461);
      if (v157)
      {
        sub_1000CC854(*(v66 + 56) + 32 * v156, &v227);
        sub_1000CC8B0(0, &qword_1002C0F08, NSDictionary_ptr);
        if (swift_dynamicCast())
        {
          v158 = v46;
          v159 = v225;
          CMTimeMakeFromDictionary(&v227, v225);
          value = v227.value;
          timescale = v227.timescale;
          v162 = v211;
          UnknownStorage.init()();
          *v162 = value;
          *(v162 + 8) = timescale;
          if (swift_isUniquelyReferenced_nonNull_native())
          {

            v163 = *&v44[v62];
          }

          else
          {
            type metadata accessor for RequestItem._StorageClass(0);
            swift_allocObject();

            v163 = sub_1000EA6A0(v164);

            *&v44[v62] = v163;
          }

          v46 = v158;
          v165 = v210;
          sub_1000CCC3C(v211, v210, type metadata accessor for CMTime);
          (*(v209 + 56))(v165, 0, 1, v212);
          v166 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoDuration;
          swift_beginAccess();
          sub_1000CC968(v165, v163 + v166, &qword_1002C0E90, &qword_1002450C0);
          swift_endAccess();
        }
      }
    }

    if (*(v66 + 16))
    {
      v167 = sub_10011704C(0xD000000000000015, 0x8000000100201FB0);
      if (v168)
      {
        sub_1000CC854(*(v66 + 56) + 32 * v167, &v227);
        sub_1000CC8B0(0, &qword_1002C0EA0, NSNumber_ptr);
        if (swift_dynamicCast())
        {
          v169 = v225;
          [v225 doubleValue];
          v171 = v170;
          if (swift_isUniquelyReferenced_nonNull_native())
          {

            v172 = *&v44[v62];
          }

          else
          {
            type metadata accessor for RequestItem._StorageClass(0);
            swift_allocObject();

            v172 = sub_1000EA6A0(v173);

            *&v44[v62] = v172;
          }

          v174 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoNominalFrameRate;
          swift_beginAccess();
          *(v172 + v174) = v171;
        }
      }
    }

    if (*(v66 + 16))
    {
      v175 = sub_10011704C(0xD000000000000012, 0x8000000100201FD0);
      if (v176)
      {
        sub_1000CC854(*(v66 + 56) + 32 * v175, &v227);
        sub_1000CC8B0(0, &qword_1002C0EA0, NSNumber_ptr);
        if (swift_dynamicCast())
        {
          v177 = v225;
          v178 = [v225 unsignedIntValue];
          if (swift_isUniquelyReferenced_nonNull_native())
          {

            v179 = *&v44[v62];
          }

          else
          {
            type metadata accessor for RequestItem._StorageClass(0);
            swift_allocObject();

            v179 = sub_1000EA6A0(v180);

            v66 = v221;

            *&v44[v62] = v179;
          }

          v181 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedWidth;
          swift_beginAccess();
          *(v179 + v181) = v178;
        }
      }
    }

    if (*(v66 + 16))
    {
      v182 = sub_10011704C(0xD000000000000013, 0x8000000100201FF0);
      if (v183)
      {
        sub_1000CC854(*(v66 + 56) + 32 * v182, &v227);
        sub_1000CC8B0(0, &qword_1002C0EA0, NSNumber_ptr);
        if (swift_dynamicCast())
        {
          v184 = v225;
          v185 = [v225 unsignedIntValue];
          if (swift_isUniquelyReferenced_nonNull_native())
          {

            v186 = *&v44[v62];
          }

          else
          {
            type metadata accessor for RequestItem._StorageClass(0);
            swift_allocObject();

            v186 = sub_1000EA6A0(v187);

            v66 = v221;

            *&v44[v62] = v186;
          }

          v188 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedHeight;
          swift_beginAccess();
          *(v186 + v188) = v185;
        }
      }
    }

    if (*(v66 + 16))
    {
      v189 = sub_10011704C(0x646F436F65646976, 0xEA00000000006365);
      if (v190)
      {
        sub_1000CC854(*(v66 + 56) + 32 * v189, &v227);
        sub_1000CC8B0(0, &qword_1002C0EA0, NSNumber_ptr);
        if (swift_dynamicCast())
        {
          v191 = v225;
          v192 = [v225 unsignedIntValue];
          if (swift_isUniquelyReferenced_nonNull_native())
          {

            v193 = *&v44[v62];
          }

          else
          {
            type metadata accessor for RequestItem._StorageClass(0);
            swift_allocObject();

            v193 = sub_1000EA6A0(v194);

            *&v44[v62] = v193;
          }

          v195 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoCodec;
          swift_beginAccess();
          *(v193 + v195) = v192;
        }
      }
    }
  }

  if (CMTimeRange.isValid.getter())
  {
    sub_1000BCCF8(v46, v216);
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v196 = *&v44[v62];
    }

    else
    {
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();

      v196 = sub_1000EA6A0(v197);

      *&v44[v62] = v196;
    }

    v198 = v214;
    v199 = v215;
    sub_1000CCC3C(v216, v215, type metadata accessor for CMTimeRange);
    (*(v213 + 56))(v199, 0, 1, v198);
    v200 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange;
    swift_beginAccess();
    sub_1000CC968(v199, v196 + v200, &qword_1002C0E88, &qword_1002450B8);
    swift_endAccess();
  }

  else
  {
  }
}

uint64_t sub_1000C2B28(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, void), uint64_t a6, void *a7, uint64_t a8, void *a9)
{
  v103 = a7;
  v104 = a8;
  v109 = a1;
  v13 = type metadata accessor for Date();
  v113 = *(v13 - 8);
  v114 = v13;
  v14 = __chkstk_darwin(v13);
  v94 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v102 = &v92 - v16;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v110 = v17;
  v111 = v18;
  __chkstk_darwin(v17);
  v96 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000BB130(&qword_1002C0E30, &qword_100245080);
  __chkstk_darwin(v20 - 8);
  v101 = &v92 - v21;
  v22 = type metadata accessor for Ckcode_RecordTransport();
  v99 = *(v22 - 8);
  v100 = v22;
  __chkstk_darwin(v22);
  v105 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for ResponseItem(0);
  v106 = *(v98 - 8);
  __chkstk_darwin(v98);
  v107 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000BB130(&qword_1002C0DC0, &qword_100245038);
  v26 = __chkstk_darwin(v25 - 8);
  v95 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v112 = &v92 - v28;
  v29 = sub_1000BB130(&qword_1002C0DC8, &qword_100245040);
  __chkstk_darwin(v29 - 8);
  v31 = &v92 - v30;
  v32 = type metadata accessor for ResourceStreamResponse(0);
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v108 = &v92 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000BB130(&qword_1002C0EF0, &unk_100245100);
  v36 = __chkstk_darwin(v35 - 8);
  v38 = &v92 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v40 = &v92 - v39;
  if (qword_1002C05F0 != -1)
  {
    swift_once();
  }

  if (byte_1002C0D28 == 1)
  {
    v97 = a6;
    v93 = a5;
    type metadata accessor for ResourceStreamRequest(0);
    sub_1000CC224(&qword_1002C0EE0, type metadata accessor for ResourceStreamRequest, &protocol conformance descriptor for ResourceStreamRequest);
    Message.debugDescription.getter();
    v41 = String._bridgeToObjectiveC()();

    sub_1000CC794(v109, v40, &qword_1002C0EF0, &unk_100245100);
    if ((*(v33 + 48))(v40, 1, v32) == 1)
    {
      sub_1000CCDBC(v40, &qword_1002C0EF0, &unk_100245100);
      v42 = 0;
      if (a2)
      {
LABEL_6:
        v43 = _convertErrorToNSError(_:)();
LABEL_9:
        swift_beginAccess();
        if (*(a4 + 16))
        {

          v44.super.isa = Array._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          v44.super.isa = 0;
        }

        CPLTaskLogCKCodeRequestAndResponse();

        a5 = v93;
        a6 = v97;
        goto LABEL_13;
      }
    }

    else
    {
      sub_1000CC224(&qword_1002C0EF8, type metadata accessor for ResourceStreamResponse, &protocol conformance descriptor for ResourceStreamResponse);
      Message.debugDescription.getter();
      sub_1000CCD5C(v40, type metadata accessor for ResourceStreamResponse);
      v42 = String._bridgeToObjectiveC()();

      if (a2)
      {
        goto LABEL_6;
      }
    }

    v43 = 0;
    goto LABEL_9;
  }

LABEL_13:
  if (a2)
  {
    (*(v111 + 56))(v31, 1, 1, v110);
    v45 = v112;
    (*(v113 + 56))(v112, 1, 1, v114);
    swift_errorRetain();
    a5(v31, v45, a2);

    v46 = v45;
LABEL_17:
    sub_1000CCDBC(v46, &qword_1002C0DC0, &qword_100245038);
    return sub_1000CCDBC(v31, &qword_1002C0DC8, &qword_100245040);
  }

  sub_1000CC794(v109, v38, &qword_1002C0EF0, &unk_100245100);
  if ((*(v33 + 48))(v38, 1, v32) == 1)
  {
    sub_1000CCDBC(v38, &qword_1002C0EF0, &unk_100245100);
    (*(v111 + 56))(v31, 1, 1, v110);
    v47 = v112;
    (*(v113 + 56))(v112, 1, 1, v114);
    v48 = sub_1000BB7F8(0xD000000000000020, 0x8000000100201E40, 150);
    a5(v31, v47, v48);

    v46 = v47;
    goto LABEL_17;
  }

  v50 = v108;
  sub_1000CCC3C(v38, v108, type metadata accessor for ResourceStreamResponse);
  v51 = *(v50 + 8);
  v53 = v113;
  v52 = v114;
  if (!v51)
  {
    if (!*(*v50 + 16))
    {
      (*(v111 + 56))(v31, 1, 1, v110);
      v55 = v112;
      (*(v53 + 56))(v112, 1, 1, v52);
      v56 = sub_1000BB7F8(0xD00000000000001CLL, 0x8000000100201EA0, 150);
      goto LABEL_20;
    }

    v57 = v107;
    sub_1000CCBD4(*v50 + ((v106[80] + 32) & ~v106[80]), v107, type metadata accessor for ResponseItem);
    if (*(v57 + 96))
    {
      v58 = sub_1000BB948(v57, v103, v104, a9);
      (*(v111 + 56))(v31, 1, 1, v110);
      v59 = v112;
      (*(v53 + 56))(v112, 1, 1, v52);
      a5(v31, v59, v58);

      sub_1000CCDBC(v59, &qword_1002C0DC0, &qword_100245038);
      v60 = v31;
LABEL_25:
      sub_1000CCDBC(v60, &qword_1002C0DC8, &qword_100245040);
      sub_1000CCD5C(v57, type metadata accessor for ResponseItem);
      return sub_1000CCD5C(v50, type metadata accessor for ResourceStreamResponse);
    }

    v61 = v101;
    sub_1000CC794(v57 + *(v98 + 52), v101, &qword_1002C0E30, &qword_100245080);
    v62 = v99;
    v63 = v100;
    v109 = *(v99 + 48);
    if (v109(v61, 1, v100) == 1)
    {
      Ckcode_RecordTransport.init()();
      v64 = v109(v61, 1, v63);
      v65 = v102;
      if (v64 != 1)
      {
        sub_1000CCDBC(v61, &qword_1002C0E30, &qword_100245080);
      }
    }

    else
    {
      (*(v62 + 32))(v105, v61, v63);
      v65 = v102;
    }

    sub_1000CC8B0(0, &qword_1002C0E40, CKRecord_ptr);
    v66 = CKRecord.init(_:)();
    if (v66)
    {
      v67 = v66;
      sub_1000CC8B0(0, &qword_1002C0E48, CKAsset_ptr);
      CKRecordKeyValueSetting.subscript.getter();
      v68 = v115;
      v57 = v107;
      if (!v115)
      {
        (*(v111 + 56))(v31, 1, 1, v110);
        v81 = v112;
        (*(v53 + 56))(v112, 1, 1, v114);
        v82 = sub_1000BB7F8(0xD000000000000020, 0x8000000100201AB0, 27);
        a5(v31, v81, v82);

        sub_1000CCDBC(v81, &qword_1002C0DC0, &qword_100245038);
        v60 = v31;
        goto LABEL_25;
      }

      v97 = a6;
      v69 = v31;
      v70 = String._bridgeToObjectiveC()();
      v71 = [v68 downloadURLWithFileName:v70];

      if (!v71)
      {
        v83 = v69;
        (*(v111 + 56))(v69, 1, 1, v110);
        v84 = v112;
        (*(v53 + 56))(v112, 1, 1, v114);
        v85 = sub_1000BB7F8(0xD000000000000024, 0x8000000100201E70, 27);
        a5(v83, v84, v85);

        sub_1000CCDBC(v84, &qword_1002C0DC0, &qword_100245038);
        v60 = v83;
        goto LABEL_25;
      }

      v109 = v67;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v106 = v68;
      v72 = [v68 downloadURLExpiration];
      if (v72)
      {
        v73 = v94;
        v74 = v72;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v75 = *(v53 + 32);
        v76 = v95;
        v77 = v114;
        v75(v95, v73, v114);
        v105 = *(v53 + 56);
        (v105)(v76, 0, 1, v77);
        v75(v65, v76, v77);
        v78 = v65;
      }

      else
      {
        v86 = v95;
        v87 = v114;
        v105 = *(v53 + 56);
        (v105)(v95, 1, 1, v114);
        Date.init(timeIntervalSinceNow:)();
        if ((*(v53 + 48))(v86, 1, v87) != 1)
        {
          sub_1000CCDBC(v86, &qword_1002C0DC0, &qword_100245038);
        }

        v53 = v113;
        v77 = v114;
        v78 = v102;
      }

      v88 = v110;
      v89 = v111;
      v90 = v69;
      (*(v111 + 16))(v69, v96, v110);
      (*(v89 + 56))(v69, 0, 1, v88);
      v91 = v112;
      (*(v53 + 16))(v112, v78, v77);
      (v105)(v91, 0, 1, v77);
      a5(v90, v91, 0);

      sub_1000CCDBC(v91, &qword_1002C0DC0, &qword_100245038);
      sub_1000CCDBC(v90, &qword_1002C0DC8, &qword_100245040);
      (*(v53 + 8))(v78, v77);
      (*(v89 + 8))(v96, v88);
    }

    else
    {
      (*(v111 + 56))(v31, 1, 1, v110);
      v79 = v112;
      (*(v53 + 56))(v112, 1, 1, v52);
      v80 = sub_1000BB7F8(0xD000000000000022, 0x8000000100201A80, 25);
      a5(v31, v79, v80);

      sub_1000CCDBC(v79, &qword_1002C0DC0, &qword_100245038);
      sub_1000CCDBC(v31, &qword_1002C0DC8, &qword_100245040);
    }

    sub_1000CCD5C(v107, type metadata accessor for ResponseItem);
    return sub_1000CCD5C(v50, type metadata accessor for ResourceStreamResponse);
  }

  v54 = *(v50 + 16);
  (*(v111 + 56))(v31, 1, 1, v110);
  v55 = v112;
  (*(v53 + 56))(v112, 1, 1, v52);
  v56 = sub_1000BC70C(v51, v54, *(v50 + 24), *(v50 + 32), *(v50 + 40));
LABEL_20:
  a5(v31, v55, v56);

  sub_1000CCDBC(v55, &qword_1002C0DC0, &qword_100245038);
  sub_1000CCDBC(v31, &qword_1002C0DC8, &qword_100245040);
  return sub_1000CCD5C(v50, type metadata accessor for ResourceStreamResponse);
}

void sub_1000C3DB4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_1000BB130(&qword_1002C0DC0, &qword_100245038);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_1000BB130(&qword_1002C0DC8, &qword_100245040);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  sub_1000CC794(a1, &v22 - v12, &qword_1002C0DC8, &qword_100245040);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v17 = 0;
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    URL._bridgeToObjectiveC()(v16);
    v17 = v18;
    (*(v15 + 8))(v13, v14);
  }

  sub_1000CC794(a2, v10, &qword_1002C0DC0, &qword_100245038);
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  isa = 0;
  if ((*(v20 + 48))(v10, 1, v19) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v20 + 8))(v10, v19);
  }

  if (a3)
  {
    a3 = _convertErrorToNSError(_:)();
  }

  (*(a4 + 16))(a4, v17, isa, a3);
}

uint64_t sub_1000C400C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1000BB130(&qword_1002C0E78, &qword_1002450B0);
  type metadata accessor for RequestItem(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100244100;
  sub_1000CC224(&qword_1002C0E80, type metadata accessor for RequestItem, &protocol conformance descriptor for RequestItem);
  static Message.with(_:)();

  *a1 = v7;
  return result;
}

uint64_t sub_1000C4180(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v78 = a5;
  v77[1] = a4;
  v82 = a3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v10 + 8))(v12, v9);
  v16 = *(type metadata accessor for RequestItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a1 + v16);
  v79 = a6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v19 = sub_1000EA6A0(v18);

    *(a1 + v16) = v19;
    v18 = v19;
  }

  swift_beginAccess();
  *(v18 + 16) = v13;
  *(v18 + 24) = v15;

  v20 = [a2 recordName];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(a1 + v16);
  if ((v24 & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v26 = sub_1000EA6A0(v25);

    *(a1 + v16) = v26;
    v25 = v26;
  }

  swift_beginAccess();
  *(v25 + 32) = v21;
  *(v25 + 40) = v23;

  v27 = [a2 zoneID];
  v28 = [v27 zoneName];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(a1 + v16);
  if ((v32 & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v34 = sub_1000EA6A0(v33);

    *(a1 + v16) = v34;
    v33 = v34;
  }

  swift_beginAccess();
  *(v33 + 64) = v29;
  *(v33 + 72) = v31;

  v35 = &selRef_isFakeDerivative_;
  v36 = [v27 ownerName];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == v40)
  {
  }

  else
  {
    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v41)
    {
      goto LABEL_15;
    }

    v42 = [v27 ownerName];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = swift_isUniquelyReferenced_nonNull_native();
    v46 = *(a1 + v16);
    if ((v45 & 1) == 0)
    {
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v47 = sub_1000EA6A0(v46);

      *(a1 + v16) = v47;
      v46 = v47;
    }

    swift_beginAccess();
    *(v46 + 80) = v35;
    *(v46 + 88) = v44;
  }

LABEL_15:
  v48 = [v82 identity];
  if (!v48)
  {
    __break(1u);
    goto LABEL_43;
  }

  v49 = v48;

  v50 = [v49 fingerPrint];

  if (v50)
  {
    v51 = CPLCloudKitFingerPrintFromDynamicFingerPrint(v50);
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    v55 = swift_isUniquelyReferenced_nonNull_native();
    v56 = *(a1 + v16);
    if ((v55 & 1) == 0)
    {
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v57 = sub_1000EA6A0(v56);

      *(a1 + v16) = v57;
      v56 = v57;
    }

    swift_beginAccess();
    *(v56 + 112) = v52;
    *(v56 + 120) = v54;

    if (qword_1002C05F8 != -1)
    {
      swift_once();
    }

    if ((byte_1002C0D29 & 1) == 0)
    {
      v58 = [a2 recordName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v59 = v80;
      v60 = sub_1000BDFB4(v27);
      if (v59)
      {
      }

      else
      {
        v61 = v60;

        v62 = swift_isUniquelyReferenced_nonNull_native();
        v63 = *(a1 + v16);
        if ((v62 & 1) == 0)
        {
          type metadata accessor for RequestItem._StorageClass(0);
          swift_allocObject();
          v64 = sub_1000EA6A0(v63);

          *(a1 + v16) = v64;
          v63 = v64;
        }

        swift_beginAccess();
        *(v63 + 128) = v61;
      }
    }
  }

  v65 = sub_1001A8CE0(v78);
  v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v67;

  v69 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *(a1 + v16);
  if ((v69 & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v71 = sub_1000EA6A0(v70);

    *(a1 + v16) = v71;
    v70 = v71;
  }

  swift_beginAccess();
  *(v70 + 48) = v66;
  *(v70 + 56) = v68;

  v72 = [v82 resourceType];
  v35 = v79;
  if (v79 < 2)
  {
    goto LABEL_38;
  }

  if (v79 != 2)
  {
LABEL_43:
    type metadata accessor for CPLCKResourceDownloadType(0);
    v81 = v35;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  if (qword_1002C05E8 != -1)
  {
    v76 = v72;
    swift_once();
    v72 = v76;
  }

  if (sub_1000BB634(v72, qword_1002C0D20))
  {
    v35 = 2;
  }

  else
  {
    v35 = 0;
  }

LABEL_38:
  if (swift_isUniquelyReferenced_nonNull_native())
  {

    v73 = *(a1 + v16);
  }

  else
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();

    v73 = sub_1000EA6A0(v74);

    *(a1 + v16) = v73;
  }

  result = swift_beginAccess();
  *(v73 + 96) = v35;
  *(v73 + 104) = 1;
  return result;
}

uint64_t sub_1000C490C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BB130(&qword_1002C0E38, &qword_100245088);
  __chkstk_darwin(v4 - 8);
  v6 = (&v19 - v5);
  v7 = sub_1000BB130(&qword_1002C0EB0, &qword_1002450D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for ResponseItem(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CC794(a1, v6, &qword_1002C0E38, &qword_100245088);
  v14 = type metadata accessor for ResourceDownloadResponse(0);
  if ((*(*(v14 - 8) + 48))(v6, 1, v14) == 1)
  {
    sub_1000CCDBC(v6, &qword_1002C0E38, &qword_100245088);
    (*(v11 + 56))(v9, 1, 1, v10);
    return sub_1000CCDBC(v9, &qword_1002C0EB0, &qword_1002450D0);
  }

  v15 = *v6;

  sub_1000CCD5C(v6, type metadata accessor for ResourceDownloadResponse);
  if (*(v15 + 16))
  {
    sub_1000CCBD4(v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v9, type metadata accessor for ResponseItem);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  (*(v11 + 56))(v9, v16, 1, v10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000CCDBC(v9, &qword_1002C0EB0, &qword_1002450D0);
  }

  sub_1000CCC3C(v9, v13, type metadata accessor for ResponseItem);
  v18 = *(v13 + 9);
  sub_1000CCD5C(v13, type metadata accessor for ResponseItem);
  result = swift_beginAccess();
  *(a2 + 16) = v18 == 2;
  return result;
}

void sub_1000C4C38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, void, void), uint64_t a7, void *a8, uint64_t a9)
{
  swift_beginAccess();
  if ((*(a4 + 16) & 1) == 0)
  {
    swift_beginAccess();
    if (!*(a5 + 16))
    {
      if (a3)
      {
        swift_beginAccess();
        *(a5 + 16) = a3;
        swift_errorRetain();
        return;
      }

      if (a1)
      {
        sub_1000CC8B0(0, &qword_1002C0E40, CKRecord_ptr);
        sub_1000CC8B0(0, &qword_1002C0E48, CKAsset_ptr);
        v15 = a1;
        CKRecordKeyValueSetting.subscript.getter();
        if (v28)
        {
          v16 = [v28 assetContent];
          if (v16)
          {
            v17 = v16;
            v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v20 = v19;

            swift_beginAccess();
            *(a4 + 16) = 1;
            sub_1000CC5D0(v18, v20);
            v21 = [a8 identity];
            if (v21)
            {
              v22 = v21;
              v23 = [v21 fileUTI];

              if (v23)
              {
                v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v26 = v25;
              }

              else
              {
                v24 = 0;
                v26 = 0;
              }

              swift_beginAccess();
              a6(v18, v20, v24, v26, *(a9 + 16), 0);

              sub_1000CC444(v18, v20);
              sub_1000CC444(v18, v20);
            }

            else
            {
              __break(1u);
            }

            return;
          }

          v27 = sub_1000BB7F8(0xD00000000000001CLL, 0x8000000100201DB0, 27);
        }

        else
        {
          v27 = sub_1000BB7F8(0xD000000000000020, 0x8000000100201AB0, 27);
        }

        swift_beginAccess();
        *(a5 + 16) = v27;
      }
    }
  }
}

uint64_t sub_1000C4F0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void, void, void, void, void), uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v46 = a8;
  v50 = a2;
  v15 = type metadata accessor for ResponseItem(0);
  v47 = *(v15 - 8);
  __chkstk_darwin(v15 - 8);
  v48 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ResourceDownloadResponse(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v49 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000BB130(&qword_1002C0E38, &qword_100245088);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v44 - v24;
  if (qword_1002C05F0 != -1)
  {
    swift_once();
  }

  if (byte_1002C0D28 == 1)
  {
    v44 = a7;
    v45 = a6;
    type metadata accessor for ResourceDownloadRequest(0);
    sub_1000CC224(&unk_1002C0E20, type metadata accessor for ResourceDownloadRequest, &protocol conformance descriptor for ResourceDownloadRequest);
    Message.debugDescription.getter();
    v26 = String._bridgeToObjectiveC()();

    sub_1000CC794(a1, v25, &qword_1002C0E38, &qword_100245088);
    if ((*(v18 + 48))(v25, 1, v17) == 1)
    {
      sub_1000CCDBC(v25, &qword_1002C0E38, &qword_100245088);
      v27 = 0;
      if (v50)
      {
LABEL_6:
        v28 = _convertErrorToNSError(_:)();
LABEL_9:
        swift_beginAccess();
        if (*(a4 + 16))
        {

          v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          v29.super.isa = 0;
        }

        a6 = v45;
        CPLTaskLogCKCodeRequestAndResponse();

        goto LABEL_13;
      }
    }

    else
    {
      sub_1000CC224(&qword_1002C0E50, type metadata accessor for ResourceDownloadResponse, &protocol conformance descriptor for ResourceDownloadResponse);
      Message.debugDescription.getter();
      sub_1000CCD5C(v25, type metadata accessor for ResourceDownloadResponse);
      v27 = String._bridgeToObjectiveC()();

      if (v50)
      {
        goto LABEL_6;
      }
    }

    v28 = 0;
    goto LABEL_9;
  }

LABEL_13:
  result = swift_beginAccess();
  if (*(a5 + 16))
  {
    return result;
  }

  sub_1000CC794(a1, v23, &qword_1002C0E38, &qword_100245088);
  if ((*(v18 + 48))(v23, 1, v17) != 1)
  {
    v32 = v49;
    sub_1000CCC3C(v23, v49, type metadata accessor for ResourceDownloadResponse);
    v33 = *(v32 + 8);
    if (v33)
    {
      v34 = sub_1000BC70C(v33, *(v32 + 16), *(v32 + 24), *(v32 + 32), *(v32 + 40));
    }

    else
    {
      if (*(*v32 + 16))
      {
        v35 = v48;
        sub_1000CCBD4(*v32 + ((*(v47 + 80) + 32) & ~*(v47 + 80)), v48, type metadata accessor for ResponseItem);
        if (*(v35 + 96))
        {
          v36 = sub_1001A8CE0(a10);
          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = v38;

          v40 = sub_1000BB948(v35, a9, v37, v39);

          swift_errorRetain();
          a6(0, 0xF000000000000000, 0, 0, 0, v40);
        }

        else
        {
          v42 = v46;
          swift_beginAccess();
          if (*(v42 + 16))
          {
            v43 = *(v42 + 16);
          }

          else
          {
            if (v50)
            {
              v43 = v50;
            }

            else
            {
              v43 = sub_1000BB7F8(0xD00000000000001BLL, 0x8000000100201D60, 150);
            }

            swift_errorRetain();
          }

          swift_errorRetain();
          a6(0, 0xF000000000000000, 0, 0, 0, v43);
        }

        sub_1000CCD5C(v35, type metadata accessor for ResponseItem);
        return sub_1000CCD5C(v32, type metadata accessor for ResourceDownloadResponse);
      }

      v41 = v46;
      swift_beginAccess();
      if (*(v41 + 16))
      {
        v34 = *(v41 + 16);
      }

      else
      {
        if (v50)
        {
          v34 = v50;
        }

        else
        {
          v34 = sub_1000BB7F8(0xD000000000000028, 0x8000000100201D80, 150);
        }

        swift_errorRetain();
      }

      swift_errorRetain();
    }

    a6(0, 0xF000000000000000, 0, 0, 0, v34);

    return sub_1000CCD5C(v32, type metadata accessor for ResourceDownloadResponse);
  }

  sub_1000CCDBC(v23, &qword_1002C0E38, &qword_100245088);
  if (v50)
  {
    v31 = v50;
  }

  else
  {
    v31 = sub_1000BB7F8(0xD00000000000002CLL, 0x8000000100201D30, 150);
  }

  swift_errorRetain();
  a6(0, 0xF000000000000000, 0, 0, 0, v31);
}

void sub_1000C5738(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7)
{
  v10 = a4;
  if (a2 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  isa = 0;
  if (a4)
  {
LABEL_5:
    v10 = String._bridgeToObjectiveC()();
  }

LABEL_6:
  if (a6)
  {
    v12 = _convertErrorToNSError(_:)();
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  (*(a7 + 16))(a7, isa, v10, a5 & 1);
}

uint64_t sub_1000C580C@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for UploadResource(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = type metadata accessor for UploadResourcesRequest(0);
  __chkstk_darwin(v11);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a2 = &_swiftEmptyArrayStorage;
  UnknownStorage.init()();
  *v13 = &_swiftEmptyArrayStorage;
  UnknownStorage.init()();
  result = sub_1000CCE1C(v13, a2, type metadata accessor for UploadResourcesRequest);
  v15 = a1;
  if (!(a1 >> 62))
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = a2;
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_15:
    v18 = &_swiftEmptyArrayStorage;
LABEL_16:

    v24 = v25;

    *v24 = v18;
    return result;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v15 = a1;
  v16 = result;
  v25 = a2;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v16 >= 1)
  {
    v17 = 0;
    v26 = v15 & 0xC000000000000001;
    v18 = &_swiftEmptyArrayStorage;
    v19 = v15;
    do
    {
      if (v26)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v15 + 8 * v17 + 32);
      }

      v21 = v20;
      sub_1000C7D44(v21, v10);
      sub_1000CCBD4(v10, v8, type metadata accessor for UploadResource);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1000C9458(0, v18[2] + 1, 1, v18, &qword_1002C0E98, &qword_1002450C8, type metadata accessor for UploadResource);
      }

      v23 = v18[2];
      v22 = v18[3];
      if (v23 >= v22 >> 1)
      {
        v18 = sub_1000C9458((v22 > 1), v23 + 1, 1, v18, &qword_1002C0E98, &qword_1002450C8, type metadata accessor for UploadResource);
      }

      ++v17;

      sub_1000CCD5C(v10, type metadata accessor for UploadResource);
      v18[2] = v23 + 1;
      sub_1000CCC3C(v8, v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23, type metadata accessor for UploadResource);
      v15 = v19;
    }

    while (v16 != v17);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000C5B5C(uint64_t a1, void *a2, void (*a3)(id, id))
{
  v6 = sub_1000BB130(&qword_1002C0E00, &qword_100245060);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for UploadResourcesResponse(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CC794(a1, v8, &qword_1002C0E00, &qword_100245060);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    sub_1000CCC3C(v8, v12, type metadata accessor for UploadResourcesResponse);
    v14 = [objc_allocWithZone(CPLDerivativesFilter) init];
    result = sub_1000C5E3C();
    v16 = result;
    if (result >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v17 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v17 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
LABEL_6:
        if (v17 < 1)
        {
          __break(1u);
          return result;
        }

        for (i = 0; i != v17; ++i)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v19 = *(v16 + 8 * i + 32);
          }

          v20 = v19;
          [v14 addServerDropDerivativesRecipe:v19];
        }
      }
    }

    v21 = v14;
    a3(v14, 0);

    return sub_1000CCD5C(v12, type metadata accessor for UploadResourcesResponse);
  }

  sub_1000CCDBC(v8, &qword_1002C0E00, &qword_100245060);
  if (a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = sub_1000BB7F8(0xD000000000000038, 0x80000001002019D0, 150);
  }

  swift_errorRetain();
  a3(0, v13);
}

void *sub_1000C5E3C()
{
  v1 = type metadata accessor for UploadResource(0);
  v2 = *(v1 - 8);
  result = __chkstk_darwin(v1 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 8);
  v7 = &_swiftEmptyArrayStorage;
  v29 = &_swiftEmptyArrayStorage;
  v25 = *(v6 + 16);
  if (!v25)
  {
    return v7;
  }

  v8 = 0;
  v9 = *(v2 + 80);
  v23 = v6;
  v24 = v6 + ((v9 + 32) & ~v9);
  v22 = v2;
  while (v8 < *(v6 + 16))
  {
    result = sub_1000CCBD4(v24 + *(v2 + 72) * v8, v5, type metadata accessor for UploadResource);
    if ((v5[8] & 1) == 0 && (*v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_18;
    }

    v10 = *(v5 + 2);
    v11 = *(v5 + 4);
    if ((v5[40] & 1) == 0 && v11 < 0)
    {
      goto LABEL_19;
    }

    v27 = *v5;
    v12 = *(v5 + 6);
    v13 = *(v12 + 16);
    if (v13)
    {
      v26 = v10;
      v28 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      sub_1000CC8B0(0, &qword_1002C0EA0, NSNumber_ptr);
      v14 = (v12 + 32);
      do
      {
        v15 = *v14;
        v14 += 2;
        NSNumber.init(integerLiteral:)(v15);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v13;
      }

      while (v13);
      v2 = v22;
    }

    v16 = objc_allocWithZone(CPLDropDerivativesRecipe);
    v17 = String._bridgeToObjectiveC()();
    sub_1000CC8B0(0, &qword_1002C0EA0, NSNumber_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v19 = [v16 initWithSourceResourceType:v11 uti:v17 changeType:v27 droppingDerivativeTypes:isa];

    v20 = v19;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v8;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v21 = v29;
    result = sub_1000CCD5C(v5, type metadata accessor for UploadResource);
    v6 = v23;
    if (v8 == v25)
    {
      return v21;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1000C6174(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1000BB130(&qword_1002C0E78, &qword_1002450B0);
  type metadata accessor for RequestItem(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100244100;
  sub_1000CC224(&qword_1002C0E80, type metadata accessor for RequestItem, &protocol conformance descriptor for RequestItem);
  static Message.with(_:)();

  *a1 = v9;
  return result;
}

void sub_1000C62F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t *a8)
{
  v80 = a8;
  v79 = a7;
  v78 = a5;
  v77 = a4;
  v76 = a3;
  v11 = sub_1000BB130(&qword_1002C0E88, &qword_1002450B8);
  __chkstk_darwin(v11 - 8);
  v13 = &v73 - v12;
  v75 = type metadata accessor for CMTimeRange(0);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v81 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v16 + 8))(v18, v15);
  v22 = *(type metadata accessor for RequestItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(a1 + v22);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v25 = sub_1000EA6A0(v24);

    *(a1 + v22) = v25;
    v24 = v25;
  }

  swift_beginAccess();
  *(v24 + 16) = v19;
  *(v24 + 24) = v21;

  v26 = [a2 recordName];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(a1 + v22);
  if ((v30 & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v32 = sub_1000EA6A0(v31);

    *(a1 + v22) = v32;
    v31 = v32;
  }

  swift_beginAccess();
  *(v31 + 32) = v27;
  *(v31 + 40) = v29;

  v33 = [a2 zoneID];
  v34 = [v33 zoneName];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v38 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(a1 + v22);
  if ((v38 & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v40 = sub_1000EA6A0(v39);

    *(a1 + v22) = v40;
    v39 = v40;
  }

  swift_beginAccess();
  *(v39 + 64) = v35;
  *(v39 + 72) = v37;

  v41 = [v33 ownerName];
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
  {
  }

  else
  {
    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v46)
    {
      goto LABEL_15;
    }

    v47 = [v33 ownerName];
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    v51 = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(a1 + v22);
    if ((v51 & 1) == 0)
    {
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v53 = sub_1000EA6A0(v52);

      *(a1 + v22) = v53;
      v52 = v53;
    }

    swift_beginAccess();
    *(v52 + 80) = v48;
    *(v52 + 88) = v50;
  }

LABEL_15:
  v54 = String._bridgeToObjectiveC()();
  v55 = CPLCloudKitFingerPrintFromDynamicFingerPrint(v54);

  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;

  v59 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *(a1 + v22);
  if ((v59 & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v61 = sub_1000EA6A0(v60);

    *(a1 + v22) = v61;
    v60 = v61;
  }

  swift_beginAccess();
  *(v60 + 112) = v56;
  *(v60 + 120) = v58;

  v62 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *(a1 + v22);
  if ((v62 & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v64 = sub_1000EA6A0(v63);

    *(a1 + v22) = v64;
    v63 = v64;
  }

  v65 = v79;
  swift_beginAccess();
  *(v63 + 48) = v78;
  *(v63 + 56) = a6;

  if (v65 >= 3)
  {
    type metadata accessor for CPLCKResourceDownloadType(0);
    v82 = v65;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v67 = *(a1 + v22);
    if ((v66 & 1) == 0)
    {
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v68 = sub_1000EA6A0(v67);

      *(a1 + v22) = v68;
      v67 = v68;
    }

    swift_beginAccess();
    *(v67 + 96) = v65;
    *(v67 + 104) = 1;
    v69 = v80;
    if (CMTimeRange.isValid.getter())
    {
      sub_1000BCCF8(v69, v81);
      if (swift_isUniquelyReferenced_nonNull_native())
      {

        v70 = *(a1 + v22);
      }

      else
      {
        type metadata accessor for RequestItem._StorageClass(0);
        swift_allocObject();

        v70 = sub_1000EA6A0(v71);

        *(a1 + v22) = v70;
      }

      sub_1000CCC3C(v81, v13, type metadata accessor for CMTimeRange);
      (*(v74 + 56))(v13, 0, 1, v75);
      v72 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange;
      swift_beginAccess();
      sub_1000CC968(v13, v70 + v72, &qword_1002C0E88, &qword_1002450B8);
      swift_endAccess();
    }

    else
    {
    }
  }
}

void *sub_1000C6A74(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = [result requestUUID];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    swift_beginAccess();
    v7 = *(a2 + 16);
    if (v7)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 16) = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_1000C924C(0, *(v7 + 2) + 1, 1, v7);
        *(a2 + 16) = v7;
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        v7 = sub_1000C924C((v9 > 1), v10 + 1, 1, v7);
      }

      *(v7 + 2) = v10 + 1;
      v11 = &v7[16 * v10];
      *(v11 + 4) = v4;
      *(v11 + 5) = v6;
      *(a2 + 16) = v7;
      return swift_endAccess();
    }

    else
    {
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1000C6B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t a6, void *a7, uint64_t a8, void *a9)
{
  v65 = a7;
  v66 = a8;
  v70 = a1;
  v13 = sub_1000BB130(&qword_1002C0DC8, &qword_100245040);
  __chkstk_darwin(v13 - 8);
  v60 = v58 - v14;
  v15 = sub_1000BB130(&qword_1002C0E30, &qword_100245080);
  __chkstk_darwin(v15 - 8);
  v64 = v58 - v16;
  v17 = type metadata accessor for Ckcode_RecordTransport();
  v61 = *(v17 - 8);
  v62 = v17;
  __chkstk_darwin(v17);
  v63 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ResponseItem(0);
  v67 = *(v19 - 8);
  __chkstk_darwin(v19);
  v68 = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ResourceDownloadResponse(0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v69 = v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000BB130(&qword_1002C0E38, &qword_100245088);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = v58 - v28;
  if (qword_1002C05F0 != -1)
  {
    swift_once();
  }

  if (byte_1002C0D28 == 1)
  {
    v58[1] = a6;
    v59 = a5;
    type metadata accessor for ResourceDownloadRequest(0);
    sub_1000CC224(&unk_1002C0E20, type metadata accessor for ResourceDownloadRequest, &protocol conformance descriptor for ResourceDownloadRequest);
    Message.debugDescription.getter();
    v30 = String._bridgeToObjectiveC()();

    sub_1000CC794(v70, v29, &qword_1002C0E38, &qword_100245088);
    if ((*(v22 + 48))(v29, 1, v21) == 1)
    {
      sub_1000CCDBC(v29, &qword_1002C0E38, &qword_100245088);
      v31 = 0;
      if (a2)
      {
LABEL_6:
        v32 = _convertErrorToNSError(_:)();
LABEL_9:
        swift_beginAccess();
        if (*(a4 + 16))
        {

          v33.super.isa = Array._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          v33.super.isa = 0;
        }

        a5 = v59;
        CPLTaskLogCKCodeRequestAndResponse();

        goto LABEL_13;
      }
    }

    else
    {
      sub_1000CC224(&qword_1002C0E50, type metadata accessor for ResourceDownloadResponse, &protocol conformance descriptor for ResourceDownloadResponse);
      Message.debugDescription.getter();
      sub_1000CCD5C(v29, type metadata accessor for ResourceDownloadResponse);
      v31 = String._bridgeToObjectiveC()();

      if (a2)
      {
        goto LABEL_6;
      }
    }

    v32 = 0;
    goto LABEL_9;
  }

LABEL_13:
  if (a2)
  {
    return a5(0, a2);
  }

  sub_1000CC794(v70, v27, &qword_1002C0E38, &qword_100245088);
  if ((*(v22 + 48))(v27, 1, v21) == 1)
  {
    sub_1000CCDBC(v27, &qword_1002C0E38, &qword_100245088);
    v35 = sub_1000BB7F8(0xD000000000000022, 0x8000000100201A50, 150);
    a5(0, v35);
  }

  v36 = v69;
  sub_1000CCC3C(v27, v69, type metadata accessor for ResourceDownloadResponse);
  v37 = *(v36 + 8);
  if (!v37)
  {
    if (!*(*v36 + 16))
    {
      v38 = sub_1000BB7F8(0xD00000000000001ELL, 0x8000000100201B00, 150);
      goto LABEL_19;
    }

    v39 = v68;
    sub_1000CCBD4(*v36 + ((*(v67 + 80) + 32) & ~*(v67 + 80)), v68, type metadata accessor for ResponseItem);
    if (*(v39 + 96))
    {
      v40 = sub_1000BB948(v39, v65, v66, a9);
    }

    else
    {
      v41 = v39 + *(v19 + 52);
      v42 = v64;
      sub_1000CC794(v41, v64, &qword_1002C0E30, &qword_100245080);
      v44 = v61;
      v43 = v62;
      v45 = *(v61 + 48);
      if (v45(v42, 1, v62) == 1)
      {
        Ckcode_RecordTransport.init()();
        if (v45(v42, 1, v43) != 1)
        {
          sub_1000CCDBC(v42, &qword_1002C0E30, &qword_100245080);
        }
      }

      else
      {
        (*(v44 + 32))(v63, v42, v43);
      }

      sub_1000CC8B0(0, &qword_1002C0E40, CKRecord_ptr);
      v46 = CKRecord.init(_:)();
      if (v46)
      {
        v47 = v46;
        sub_1000CC8B0(0, &qword_1002C0E48, CKAsset_ptr);
        CKRecordKeyValueSetting.subscript.getter();
        v48 = v71;
        if (v71)
        {
          v49 = [v71 fileURL];
          if (!v49)
          {
            v55 = type metadata accessor for URL();
            v56 = v60;
            (*(*(v55 - 8) + 56))(v60, 1, 1, v55);
            sub_1000CCDBC(v56, &qword_1002C0DC8, &qword_100245040);
            v57 = sub_1000BB7F8(0xD00000000000001DLL, 0x8000000100201AE0, 27);
            a5(0, v57);

            goto LABEL_24;
          }

          v50 = v60;
          v51 = v49;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v52 = type metadata accessor for URL();
          (*(*(v52 - 8) + 56))(v50, 0, 1, v52);
          sub_1000CCDBC(v50, &qword_1002C0DC8, &qword_100245040);
          v53 = v48;
          a5(v48, 0);
        }

        else
        {
          v54 = sub_1000BB7F8(0xD000000000000020, 0x8000000100201AB0, 27);
          a5(0, v54);
        }

LABEL_24:
        sub_1000CCD5C(v39, type metadata accessor for ResponseItem);
        return sub_1000CCD5C(v36, type metadata accessor for ResourceDownloadResponse);
      }

      v40 = sub_1000BB7F8(0xD000000000000022, 0x8000000100201A80, 25);
    }

    a5(0, v40);

    goto LABEL_24;
  }

  v38 = sub_1000BC70C(v37, *(v36 + 16), *(v36 + 24), *(v36 + 32), *(v36 + 40));
LABEL_19:
  a5(0, v38);

  return sub_1000CCD5C(v36, type metadata accessor for ResourceDownloadResponse);
}

void sub_1000C7688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1000C76FC(uint64_t a1, void *a2, void (*a3)(void, void, id))
{
  v23 = a3;
  v5 = sub_1000BB130(&qword_1002C0E00, &qword_100245060);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for UploadResourcesResponse(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  sub_1000CC794(a1, v7, &qword_1002C0E00, &qword_100245060);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v15 = v23;
    sub_1000CCDBC(v7, &qword_1002C0E00, &qword_100245060);
    if (a2)
    {
      v16 = a2;
    }

    else
    {
      v16 = sub_1000BB7F8(0xD000000000000038, 0x80000001002019D0, 150);
    }

    swift_errorRetain();
    v15(0, 0, v16);
  }

  else
  {
    sub_1000CCC3C(v7, v14, type metadata accessor for UploadResourcesResponse);
    sub_1000CCBD4(v14, v12, type metadata accessor for UploadResourcesResponse);
    v28 = String.init<A>(describing:)();
    v29 = v17;
    v26 = 0xD000000000000017;
    v27 = 0x8000000100201A10;
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_1000CC1A4();
    v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v20 = v19;

    v23(v18, v20, 0);

    return sub_1000CCD5C(v14, type metadata accessor for UploadResourcesResponse);
  }
}

id sub_1000C7A30(int a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a6(a5, v9);

  return v10;
}

void sub_1000C7AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

id CPLCKResourceDownloadOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CPLCKResourceDownloadOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::String __swiftcall CKOperation.cplOperationClassDescription()()
{
  swift_getObjectType();
  sub_1000BB130(&qword_1002C0D30, &unk_100244FF0);
  v0 = String.init<A>(describing:)();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

unint64_t sub_1000C7D44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UploadResource(0);
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = &_swiftEmptyArrayStorage;
  UnknownStorage.init()();
  *v6 = 0;
  v6[8] = 1;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0xE000000000000000;
  *(v6 + 4) = 0;
  v6[40] = 1;
  *(v6 + 6) = &_swiftEmptyArrayStorage;
  UnknownStorage.init()();
  sub_1000CCE1C(v6, a2, type metadata accessor for UploadResource);
  result = [a1 changeType];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *a2 = result;
  *(a2 + 8) = result < 3;
  v8 = [a1 uti];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    *(a2 + 16) = v10;
    *(a2 + 24) = v12;
  }

  result = [a1 sourceResourceType];
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

  sub_1000EB1A4();
  if ((v14 & 0x100) == 0)
  {
    *(a2 + 32) = v13;
    *(a2 + 40) = v14 & 1;
  }

  v15 = [a1 derivativeTypes];
  if (v15)
  {
    v16 = v15;
    sub_1000CC8B0(0, &qword_1002C0EA0, NSNumber_ptr);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v17 >> 62))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v17 = &_swiftEmptyArrayStorage;
    if (!(&_swiftEmptyArrayStorage >> 62))
    {
LABEL_9:
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        goto LABEL_10;
      }

LABEL_24:

      v20 = &_swiftEmptyArrayStorage;
LABEL_25:

      *(a2 + 48) = v20;
      return result;
    }
  }

  v18 = _CocoaArrayWrapper.endIndex.getter();
  if (!v18)
  {
    goto LABEL_24;
  }

LABEL_10:
  v34 = &_swiftEmptyArrayStorage;
  result = sub_1001189E0(0, v18 & ~(v18 >> 63), 0);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v32 = a1;
    v33 = a2;
    v19 = 0;
    v20 = v34;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v21 = *(v17 + 8 * v19 + 32);
      }

      v22 = v21;
      [v21 integerValue];

      sub_1000EB1A4();
      v25 = HIBYTE(v24) & 1;
      if ((v24 & 0x100) != 0)
      {
        v26 = 0;
      }

      else
      {
        v26 = v23;
      }

      v34 = v20;
      v28 = v20[2];
      v27 = v20[3];
      if (v28 >= v27 >> 1)
      {
        v30 = v24;
        sub_1001189E0((v27 > 1), v28 + 1, 1);
        LOBYTE(v24) = v30;
        v20 = v34;
      }

      ++v19;
      v20[2] = v28 + 1;
      v29 = &v20[2 * v28];
      v29[4] = v26;
      *(v29 + 40) = (v24 | v25) & 1;
    }

    while (v18 != v19);

    a2 = v33;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1000C8080(Swift::UInt *a1, Swift::UInt a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1000C8778(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1000C8178(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1000C88D4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_1000C82C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BB130(&qword_1002C0EC0, &qword_1002450D8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_1000C8518(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BB130(&qword_1002C0F28, &qword_100245120);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_1000C8778(Swift::UInt result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000C82C8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1000C8A54();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1000C8CF0(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(result);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for CPLResourceType(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int sub_1000C88D4(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000C8518(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000C8B94();
      goto LABEL_16;
    }

    sub_1000C8F10(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000C8A54()
{
  v1 = v0;
  sub_1000BB130(&qword_1002C0EC0, &qword_1002450D8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000C8B94()
{
  v1 = v0;
  sub_1000BB130(&qword_1002C0F28, &qword_100245120);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int sub_1000C8CF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BB130(&qword_1002C0EC0, &qword_1002450D8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_1000C8F10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BB130(&qword_1002C0F28, &qword_100245120);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

char *sub_1000C9148(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BB130(&qword_1002C0EC8, &qword_1002450E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1000C924C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BB130(&qword_1002C4150, &qword_10024B840);
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

char *sub_1000C9358(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BB130(&qword_1002C0F20, &qword_100245118);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void *sub_1000C9458(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000BB130(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1000C9634(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10011704C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1001182A4();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1000C9774(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_1000C96CC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1001170C4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100118410();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 16 * v5);
  sub_1000C9924(v5, v7);
  *v2 = v7;
  return v8;
}

uint64_t sub_1000C9774(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1000C9924(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_1000C9AB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for CPLResourceType(0);
  sub_1000CC224(&qword_1002C0EB8, type metadata accessor for CPLResourceType, &unk_100244C74);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1000C8080(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

Swift::Int sub_1000C9B5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BB130(&qword_1002C0EC0, &qword_1002450D8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_1000C9C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v132 = a5;
  v131 = a4;
  v124 = a3;
  v129 = type metadata accessor for ResourceDownloadRequest(0);
  v133 = *(v129 - 8);
  v14 = __chkstk_darwin(v129);
  v135 = v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v15;
  __chkstk_darwin(v14);
  v147 = v120 - v16;
  v123 = type metadata accessor for RequestItem(0);
  v122 = *(v123 - 8);
  v17 = __chkstk_darwin(v123);
  v127 = v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v126 = v120 - v19;
  v20 = a1 & 0xC000000000000001;
  v141 = a7;
  v142 = a1;
  v140 = a6;
  v136 = a8;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v21 = __CocoaDictionary.count.getter();
  }

  else
  {
    v21 = *(a1 + 16);
  }

  v22 = swift_allocObject();
  v23 = sub_1000CC8B0(0, &qword_1002C0DD0, CKRecordID_ptr);
  sub_1000CC0F0();
  v24 = Dictionary.init(minimumCapacity:)();
  v146 = v22;
  *(v22 + 16) = v24;
  v25 = swift_allocObject();
  v137 = v23;
  v26 = Dictionary.init(minimumCapacity:)();
  v145 = v25;
  *(v25 + 16) = v26;
  v27 = swift_allocObject();
  type metadata accessor for ResponseItem(0);
  v28 = Dictionary.init(minimumCapacity:)();
  v139 = v27;
  *(v27 + 16) = v28;
  v125 = sub_1000C9458(0, v21 & ~(v21 >> 63), 0, &_swiftEmptyArrayStorage, &qword_1002C0E78, &qword_1002450B0, type metadata accessor for RequestItem);
  v155 = v125;
  v29 = sub_1001A8CE0(a2);
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v143 = v31;
  v144 = v30;

  v154 = Set.init(minimumCapacity:)();
  if (v20)
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v36 = -1 << *(v142 + 32);
    v33 = ~v36;
    v32 = v142 + 64;
    v37 = -v36;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    else
    {
      v38 = -1;
    }

    v34 = v38 & *(v142 + 64);
    v35 = v142;
  }

  v130 = a9;

  v39 = 0;
  v138 = 0;
  v128 = v33;
  v40 = (v33 + 64) >> 6;
  v149 = v35;
  v150 = v32;
  v148 = v40;
LABEL_11:
  v41 = v39;
  if ((v35 & 0x8000000000000000) != 0)
  {
    while (1)
    {
      v49 = __CocoaDictionary.Iterator.next()();
      if (!v49)
      {
        break;
      }

      v51 = v50;
      v152 = v49;
      swift_dynamicCast();
      v47 = aBlock[0];
      v152 = v51;
      sub_1000CC8B0(0, &qword_1002C0DD8, CPLEngineResourceDownloadTask_ptr);
      swift_dynamicCast();
      v48 = aBlock[0];
      v39 = v41;
      v44 = v34;
      if (!v47)
      {
        break;
      }

LABEL_20:
      v151 = v44;
      v52 = v48;
      v33 = v47;
      v53 = [v52 taskIdentifier];
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      v57 = sub_1000BCEE4(v54, v56, &v154);
      v59 = v58;

      v60 = [v52 cloudResource];
      if (!v60)
      {
        goto LABEL_36;
      }

      v61 = v60;
      v62 = [v60 identity];
      if (!v62)
      {
        goto LABEL_37;
      }

      v63 = v62;
      v64 = [v62 fingerPrint];

      if (!v64)
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return;
      }

      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;

      v68 = [v52 cloudRecord];
      if (v68)
      {

        v69 = v33;

        v70 = v146;
        v71 = *(v146 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v71;
        *(v70 + 16) = 0x8000000000000000;
        sub_100117F64(v57, v59, v69, isUniquelyReferenced_nonNull_native);

        *(v70 + 16) = aBlock[0];
        v73 = v69;

        v74 = v145;
        v75 = *(v145 + 16);
        v76 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v75;
        *(v74 + 16) = 0x8000000000000000;
        sub_100117DEC(v73, v57, v59, v76);

        v120[1] = v120;
        *(v74 + 16) = aBlock[0];
        __chkstk_darwin(v77);
        v120[-12] = v57;
        v120[-11] = v59;
        v121 = v73;
        v120[-10] = v73;
        v120[-9] = v65;
        v120[-8] = v67;
        LOBYTE(v120[-7]) = 1;
        v79 = v143;
        v78 = v144;
        v120[-6] = v52;
        v120[-5] = v78;
        v80 = v124;
        v120[-4] = v79;
        v120[-3] = v80;
        v120[-2] = v61;
        sub_1000CC224(&qword_1002C0E80, type metadata accessor for RequestItem, &protocol conformance descriptor for RequestItem);
        v81 = v126;
        v82 = v138;
        static Message.with(_:)();
        v138 = v82;

        sub_1000CCBD4(v81, v127, type metadata accessor for RequestItem);
        v83 = v125;
        v85 = v125[2];
        v84 = v125[3];
        v33 = v85 + 1;
        if (v85 >= v84 >> 1)
        {
          v83 = sub_1000C9458((v84 > 1), v85 + 1, 1, v125, &qword_1002C0E78, &qword_1002450B0, type metadata accessor for RequestItem);
        }

        v32 = v150;
        v40 = v148;
        v86 = v121;

        sub_1000CCD5C(v126, type metadata accessor for RequestItem);
        v83[2] = v33;
        sub_1000CCC3C(v127, v83 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v85, type metadata accessor for RequestItem);
        v125 = v83;
        v155 = v83;
        v35 = v149;
        v34 = v151;
        goto LABEL_11;
      }

      v41 = v39;
      v32 = v150;
      v34 = v151;
      v40 = v148;
      v35 = v149;
      if ((v149 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v42 = v41;
    v43 = v34;
    v39 = v41;
    if (!v34)
    {
      while (1)
      {
        v39 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        if (v39 >= v40)
        {
          goto LABEL_29;
        }

        v43 = *(v32 + 8 * v39);
        ++v42;
        if (v43)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

LABEL_16:
    v44 = (v43 - 1) & v43;
    v45 = (v39 << 9) | (8 * __clz(__rbit64(v43)));
    v46 = *(*(v35 + 56) + v45);
    v47 = *(*(v35 + 48) + v45);
    v48 = v46;
    if (v47)
    {
      goto LABEL_20;
    }
  }

LABEL_29:
  v87 = sub_1000CC9D0(v35);
  __chkstk_darwin(v87);
  v120[-2] = &v155;
  sub_1000CC224(&unk_1002C0E20, type metadata accessor for ResourceDownloadRequest, &protocol conformance descriptor for ResourceDownloadRequest);
  v88 = v147;
  static Message.with(_:)();

  v33 = sub_1000BD19C(v88);
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  if (qword_1002C05F0 != -1)
  {
LABEL_34:
    swift_once();
  }

  if (byte_1002C0D28 == 1)
  {
    *(v41 + 16) = &_swiftEmptyArrayStorage;

    aBlock[4] = sub_1000CCEA0;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000BE260;
    aBlock[3] = &unk_100278788;
    v89 = _Block_copy(aBlock);
    v90 = v33;

    [v90 setRequestCompletedBlock:v89];
    _Block_release(v89);
  }

  v91 = swift_allocObject();
  v92 = v145;
  v93 = v146;
  v94 = v140;
  v91[2] = v145;
  v91[3] = v94;
  v95 = v94;
  v96 = v141;
  v98 = v143;
  v97 = v144;
  v91[4] = v141;
  v91[5] = v97;
  v91[6] = v98;
  v91[7] = v93;
  v99 = v139;
  v91[8] = v139;
  v100 = v92;

  dispatch thunk of CodeOperation.incompleteResponsePreviewBlock.setter();
  v101 = swift_allocObject();
  v102 = v131;
  v101[2] = v93;
  v101[3] = v102;
  v101[4] = v132;

  v151 = v33;
  dispatch thunk of CodeOperation.perRecordProgressBlock.setter();
  v103 = swift_allocObject();
  v103[2] = v93;
  v103[3] = v100;
  v103[4] = v95;
  v103[5] = v96;
  v103[6] = v99;
  v103[7] = v142;

  dispatch thunk of CodeOperation.perRecordCompletionBlock.setter();
  v104 = v135;
  sub_1000CCBD4(v147, v135, type metadata accessor for ResourceDownloadRequest);
  v105 = (*(v133 + 80) + 16) & ~*(v133 + 80);
  v106 = (v134 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
  v107 = v41;
  v108 = (v106 + 15) & 0xFFFFFFFFFFFFFFF8;
  v109 = (v108 + 23) & 0xFFFFFFFFFFFFFFF8;
  v110 = (v109 + 15) & 0xFFFFFFFFFFFFFFF8;
  v111 = (v110 + 15) & 0xFFFFFFFFFFFFFFF8;
  v112 = swift_allocObject();
  sub_1000CCC3C(v104, v112 + v105, type metadata accessor for ResourceDownloadRequest);
  *(v112 + v106) = v107;
  v113 = (v112 + v108);
  v114 = v130;
  *v113 = v136;
  v113[1] = v114;
  v115 = v145;
  *(v112 + v109) = v146;
  *(v112 + v110) = v115;
  v116 = (v112 + v111);
  v117 = v143;
  *v116 = v144;
  v116[1] = v117;
  v118 = (v112 + ((v111 + 23) & 0xFFFFFFFFFFFFFFF8));
  v119 = v141;
  *v118 = v140;
  v118[1] = v119;

  dispatch thunk of CodeOperation.codeOperationCompletionBlock.setter();
  sub_1000CCD5C(v147, type metadata accessor for ResourceDownloadRequest);
}

void *sub_1000CAA5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BB130(&qword_1002C0F58, &unk_100245140);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_1000CAC50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v49 = a8;
  v51 = a7;
  v57 = a6;
  v54 = a5;
  v48 = a4;
  v50 = sub_1000BB130(&qword_1002C0ED0, &qword_1002450E8);
  v13 = *(v50 - 8);
  __chkstk_darwin(v50);
  v15 = &v48 - v14;
  v16 = sub_1000BB130(&qword_1002C0ED8, &qword_1002450F0);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - v17;
  v19 = type metadata accessor for ResourceStreamRequest(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 8);
  v22 = __chkstk_darwin(v19);
  v52 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  v55 = a1;
  v56 = a3;
  v58 = a1;
  v59 = a2;
  v53 = a2;
  v60 = a3;
  v61 = v48;
  v62 = v49;
  v63 = v51;
  sub_1000CC224(&qword_1002C0EE0, type metadata accessor for ResourceStreamRequest, &protocol conformance descriptor for ResourceStreamRequest);
  static Message.with(_:)();
  sub_1000CCBD4(v24, v18, type metadata accessor for ResourceStreamRequest);
  v51 = v20;
  (*(v20 + 7))(v18, 0, 1, v19);
  (*(v13 + 104))(v15, enum case for CodeOperation.DestinationServer.default<A, B>(_:), v50);
  v25 = objc_allocWithZone(sub_1000BB130(&qword_1002C0EE8, &qword_1002450F8));
  v26 = CodeOperation.init(service:functionName:request:destinationServer:)();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  if (qword_1002C05F0 != -1)
  {
    swift_once();
  }

  v50 = a10;
  v49 = a9;
  if (byte_1002C0D28 == 1)
  {
    *(v27 + 16) = &_swiftEmptyArrayStorage;

    aBlock[4] = sub_1000CCEA0;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000BE260;
    aBlock[3] = &unk_100278648;
    v28 = _Block_copy(aBlock);
    v29 = v26;

    [v29 setRequestCompletedBlock:v28];
    _Block_release(v28);
  }

  v30 = v52;
  sub_1000CCBD4(v24, v52, type metadata accessor for ResourceStreamRequest);
  v31 = (v51[80] + 16) & ~v51[80];
  v32 = (v21 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v51 = v24;
  v36 = v26;
  v37 = swift_allocObject();
  sub_1000CCC3C(v30, v37 + v31, type metadata accessor for ResourceStreamRequest);
  *(v37 + v32) = v27;
  v38 = (v37 + v33);
  v39 = v50;
  *v38 = v49;
  v38[1] = v39;
  v41 = v55;
  v40 = v56;
  *(v37 + v34) = v55;
  v42 = (v37 + v35);
  v43 = v54;
  *v42 = v53;
  v42[1] = v40;
  v44 = (v37 + ((v35 + 23) & 0xFFFFFFFFFFFFFFF8));
  v45 = v57;
  *v44 = v43;
  v44[1] = v45;

  v46 = v41;

  dispatch thunk of CodeOperation.codeOperationCompletionBlock.setter();
  sub_1000CCD5C(v51, type metadata accessor for ResourceStreamRequest);

  return v36;
}

void *_s22CloudKitImplementation30CPLCKResourceDownloadOperationC08inMemoryeF03for8resource6record4keys12downloadType15completionBlockSo010CKDatabaseF0CSo10CKRecordIDC_So11CPLResourceCSo20CPLPlaceholderRecordCSo08CPLCloudB12ResourceKeysCSo0deN0Vy10Foundation4DataVSg_SSSgSbs5Error_pSgtctFZ_0(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v53 = a6;
  v13 = type metadata accessor for ResourceDownloadRequest(0);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  v15 = __chkstk_darwin(v13);
  v49 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v50 = a1;
  v51 = a4;
  v54 = a1;
  v55 = a2;
  v56 = a3;
  v57 = a4;
  v58 = a5;
  sub_1000CC224(&unk_1002C0E20, type metadata accessor for ResourceDownloadRequest, &protocol conformance descriptor for ResourceDownloadRequest);
  static Message.with(_:)();
  v52 = v17;
  v18 = sub_1000BD19C(v17);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  if (qword_1002C05F0 != -1)
  {
    swift_once();
  }

  if (byte_1002C0D28 == 1)
  {
    *(v19 + 16) = &_swiftEmptyArrayStorage;

    aBlock[4] = sub_1000CCEA0;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000BE260;
    aBlock[3] = &unk_1002785F8;
    v20 = _Block_copy(aBlock);
    v21 = v18;

    [v21 setRequestCompletedBlock:v20];
    _Block_release(v20);
  }

  dispatch thunk of CodeOperation.shouldFetchAssetContentInMemory.setter();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v23 = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;

  v46 = v18;
  dispatch thunk of CodeOperation.incompleteResponsePreviewBlock.setter();
  v26 = swift_allocObject();
  v45 = v23;
  v26[2] = v23;
  v26[3] = v24;
  v44 = v24;
  v26[4] = v53;
  v26[5] = a7;
  v26[6] = a2;
  v26[7] = v25;
  v47 = v25;

  v27 = a2;
  dispatch thunk of CodeOperation.perRecordCompletionBlock.setter();
  v28 = v49;
  sub_1000CCBD4(v52, v49, type metadata accessor for ResourceDownloadRequest);
  v29 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v30 = (v14 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = v19;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = a7;
  v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  sub_1000CCC3C(v28, v36 + v29, type metadata accessor for ResourceDownloadRequest);
  *(v36 + v30) = v48;
  *(v36 + v31) = v45;
  v37 = (v36 + v33);
  *v37 = v53;
  v37[1] = v32;
  *(v36 + v34) = v44;
  v39 = v50;
  v38 = v51;
  *(v36 + v35) = v50;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v38;

  v40 = v39;
  v41 = v38;
  v42 = v46;
  dispatch thunk of CodeOperation.codeOperationCompletionBlock.setter();
  sub_1000CCD5C(v52, type metadata accessor for ResourceDownloadRequest);

  return v42;
}

uint64_t _s22CloudKitImplementation30CPLCKResourceDownloadOperationC35fetchDerivativesUploadConfiguration15completionBlockSo010CKDatabaseF0CySo20CPLDerivativesFilterCSg_s5Error_pSgtc_tFZ_0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = sub_1000BB130(&qword_1002C0DE8, &qword_100245048);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  v7 = sub_1000BB130(&qword_1002C0DF0, &qword_100245050);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for UploadResourcesRequest(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1000BD494();
  if (v14)
  {
    sub_1000C580C(v14, v13);
  }

  else
  {
    *v13 = &_swiftEmptyArrayStorage;
    UnknownStorage.init()();
  }

  sub_1000CCBD4(v13, v9, type metadata accessor for UploadResourcesRequest);
  (*(v11 + 56))(v9, 0, 1, v10);
  (*(v4 + 104))(v6, enum case for CodeOperation.DestinationServer.default<A, B>(_:), v3);
  v15 = objc_allocWithZone(sub_1000BB130(&qword_1002C0DF8, &qword_100245058));
  v16 = CodeOperation.init(service:functionName:request:destinationServer:)();
  v17 = swift_allocObject();
  *(v17 + 16) = v20;
  *(v17 + 24) = a2;

  dispatch thunk of CodeOperation.codeOperationCompletionBlock.setter();
  sub_1000CCD5C(v13, type metadata accessor for UploadResourcesRequest);
  return v16;
}