uint64_t sub_1000B9B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_10001148C(&qword_1002985C8, &qword_10021E838);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for EscrowInformation(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__record;
  swift_beginAccess();
  sub_100019C6C(a1 + v14, v8, &qword_1002985C8, &qword_10021E838);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_1002985C8, &qword_10021E838);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for EscrowInformation);
  sub_1000F9F28(&qword_100298828, type metadata accessor for EscrowInformation, &protocol conformance descriptor for EscrowInformation);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for EscrowInformation);
}

BOOL sub_1000B9D90(_TtC18TrustedPeersHelper6Client *a1, uint64_t a2)
{
  v4 = type metadata accessor for EscrowInformation(0);
  v118 = *(v4 - 8);
  __chkstk_darwin(v4, v5);
  v7 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_10001148C(&qword_10029CE10, &unk_100225DB0);
  __chkstk_darwin(v116, v8);
  v10 = &v111 - v9;
  v11 = sub_10001148C(&qword_1002985C8, &qword_10021E838);
  v13 = __chkstk_darwin(v11 - 8, v12);
  v114 = (&v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13, v15);
  v117 = &v111 - v16;
  v120 = type metadata accessor for Bottle(0);
  v17 = *(v120 - 8);
  __chkstk_darwin(v120, v18);
  v115 = (&v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_10001148C(&qword_10029CE00, &qword_100225DA0);
  __chkstk_darwin(v20, v21);
  v23 = &v111 - v22;
  v24 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  v26 = __chkstk_darwin(v24 - 8, v25);
  v119 = (&v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26, v28);
  v30 = &v111 - v29;
  swift_beginAccess();
  v121 = a1;
  v32 = *a1->endpoint;
  v31 = *a1->containerMap;
  swift_beginAccess();
  if (__PAIR128__(v31, v32) != *(a2 + 16) && (sub_1002171A4() & 1) == 0)
  {
    return 0;
  }

  v111 = v7;
  v112 = v4;
  v113 = v10;
  v33 = a2;
  v34 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  v35 = v121;
  swift_beginAccess();
  sub_100019C6C(&v35->_TtCs12_SwiftObject_opaque[v34], v30, &unk_10029D880, &qword_10021E830);
  v36 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  v37 = *(v20 + 48);
  sub_100019C6C(v30, v23, &unk_10029D880, &qword_10021E830);
  sub_100019C6C(&v33->_TtCs12_SwiftObject_opaque[v36], &v23[v37], &unk_10029D880, &qword_10021E830);
  v38 = *(v17 + 48);
  v39 = v120;
  if (v38(v23, 1, v120) == 1)
  {

    sub_1000114D4(v30, &unk_10029D880, &qword_10021E830);
    if (v38(&v23[v37], 1, v39) == 1)
    {
      sub_1000114D4(v23, &unk_10029D880, &qword_10021E830);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v40 = v119;
  sub_100019C6C(v23, v119, &unk_10029D880, &qword_10021E830);
  if (v38(&v23[v37], 1, v39) == 1)
  {
    v35 = v121;

    sub_1000114D4(v30, &unk_10029D880, &qword_10021E830);
    sub_1000F9228(v40, type metadata accessor for Bottle);
LABEL_8:
    sub_1000114D4(v23, &qword_10029CE00, &qword_100225DA0);
LABEL_9:
    v35, v41, v42, v43, v44, v45, v46, v47;
    v33, v48, v49, v50, v51, v52, v53, v54;
    return 0;
  }

  v55 = v115;
  sub_1000F89AC(&v23[v37], v115, type metadata accessor for Bottle);
  v35 = v121;

  v56 = _s18TrustedPeersHelper6BottleV2eeoiySbAC_ACtFZ_0(v40, v55);
  sub_1000F9228(v55, type metadata accessor for Bottle);
  sub_1000114D4(v30, &unk_10029D880, &qword_10021E830);
  sub_1000F9228(v40, type metadata accessor for Bottle);
  sub_1000114D4(v23, &unk_10029D880, &qword_10021E830);
  if ((v56 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_11:
  v57 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__record;
  swift_beginAccess();
  v58 = v117;
  sub_100019C6C(&v35->_TtCs12_SwiftObject_opaque[v57], v117, &qword_1002985C8, &qword_10021E838);
  v59 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__record;
  swift_beginAccess();
  v60 = *(v116 + 48);
  v61 = v35;
  v62 = v113;
  sub_100019C6C(v58, v113, &qword_1002985C8, &qword_10021E838);
  sub_100019C6C(&v33->_TtCs12_SwiftObject_opaque[v59], v62 + v60, &qword_1002985C8, &qword_10021E838);
  v63 = *(v118 + 48);
  v64 = v112;
  if (v63(v62, 1, v112) != 1)
  {
    v79 = v114;
    sub_100019C6C(v62, v114, &qword_1002985C8, &qword_10021E838);
    if (v63(v62 + v60, 1, v64) == 1)
    {
      v121, v80, v81, v82, v83, v84, v85, v86;
      v33, v87, v88, v89, v90, v91, v92, v93;
      sub_1000114D4(v58, &qword_1002985C8, &qword_10021E838);
      sub_1000F9228(v79, type metadata accessor for EscrowInformation);
      goto LABEL_16;
    }

    v95 = v111;
    sub_1000F89AC(v62 + v60, v111, type metadata accessor for EscrowInformation);
    v96 = _s18TrustedPeersHelper17EscrowInformationV2eeoiySbAC_ACtFZ_0(v79, v95);
    v121, v97, v98, v99, v100, v101, v102, v103;
    v33, v104, v105, v106, v107, v108, v109, v110;
    sub_1000F9228(v95, type metadata accessor for EscrowInformation);
    sub_1000114D4(v58, &qword_1002985C8, &qword_10021E838);
    sub_1000F9228(v79, type metadata accessor for EscrowInformation);
    sub_1000114D4(v62, &qword_1002985C8, &qword_10021E838);
    return (v96 & 1) != 0;
  }

  v61, v65, v66, v67, v68, v69, v70, v71;
  v33, v72, v73, v74, v75, v76, v77, v78;
  sub_1000114D4(v58, &qword_1002985C8, &qword_10021E838);
  if (v63(v62 + v60, 1, v64) != 1)
  {
LABEL_16:
    sub_1000114D4(v62, &qword_10029CE10, &unk_100225DB0);
    return 0;
  }

  sub_1000114D4(v62, &qword_1002985C8, &qword_10021E838);
  return 1;
}

uint64_t sub_1000BA68C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CCE8, type metadata accessor for EscrowPair, &protocol conformance descriptor for EscrowPair);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000BA730(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298820, type metadata accessor for EscrowPair, &protocol conformance descriptor for EscrowPair);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BA79C(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298820, type metadata accessor for EscrowPair, &protocol conformance descriptor for EscrowPair);

  return sub_100216644();
}

uint64_t sub_1000BA83C()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static Changes._protobuf_nameMap);
  sub_100002648(v0, static Changes._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10021DFE0;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "change_token";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "differences";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "recovery_signing_pub_key";
  *(v11 + 1) = 24;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "recovery_encryption_pub_key";
  *(v13 + 1) = 27;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "more";
  *(v14 + 8) = 4;
  *(v14 + 16) = 2;
  v8();
  return sub_100216724();
}

uint64_t Changes.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100216534();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_1002165B4();
        }

        else if (result == 2)
        {
          type metadata accessor for PeerDifference(0);
          sub_1000F9F28(&qword_100298738, type metadata accessor for PeerDifference, &protocol conformance descriptor for PeerDifference);
          sub_1002165E4();
        }
      }

      else if (result == 3 || result == 4)
      {
        sub_100216574();
      }

      else if (result == 5)
      {
        sub_100216554();
      }

      result = sub_100216534();
    }
  }

  return result;
}

uint64_t Changes.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1002166C4(), !v4))
  {
    v8 = v4;
    if (*(*(v3 + 16) + 16))
    {
      type metadata accessor for PeerDifference(0);
      sub_1000F9F28(&qword_100298738, type metadata accessor for PeerDifference, &protocol conformance descriptor for PeerDifference);
      result = sub_1002166F4();
      if (v4)
      {
        return result;
      }

      v8 = 0;
    }

    v9 = *(v3 + 24);
    v10 = *(v3 + 32);
    v11 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      if (v11 != 2)
      {
        v12 = v8;
        goto LABEL_19;
      }

      v13 = *(v9 + 16);
      v14 = *(v9 + 24);
    }

    else
    {
      if (!v11)
      {
        v12 = v8;
        if ((v10 & 0xFF000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_16;
      }

      v13 = v9;
      v14 = v9 >> 32;
    }

    v12 = v8;
    if (v13 == v14)
    {
      goto LABEL_19;
    }

LABEL_16:
    result = sub_100216684();
    if (v12)
    {
      return result;
    }

LABEL_19:
    v15 = *(v3 + 40);
    v16 = *(v3 + 48);
    v17 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v17 != 2)
      {
        goto LABEL_28;
      }

      v18 = *(v15 + 16);
      v19 = *(v15 + 24);
    }

    else
    {
      if (!v17)
      {
        if ((v16 & 0xFF000000000000) == 0)
        {
          goto LABEL_28;
        }

LABEL_27:
        result = sub_100216684();
        if (v12)
        {
          return result;
        }

        goto LABEL_28;
      }

      v18 = v15;
      v19 = v15 >> 32;
    }

    if (v18 != v19)
    {
      goto LABEL_27;
    }

LABEL_28:
    if (*(v3 + 56) != 1 || (result = sub_100216664(), !v12))
    {
      type metadata accessor for Changes(0);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000BAEB8@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = _swiftEmptyArrayStorage;
  *(a2 + 24) = xmmword_10021D470;
  *(a2 + 40) = xmmword_10021D470;
  *(a2 + 56) = 0;
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t sub_1000BAF30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CCE0, type metadata accessor for Changes, &protocol conformance descriptor for Changes);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000BAFD4(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes, &protocol conformance descriptor for Changes);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BB040(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes, &protocol conformance descriptor for Changes);

  return sub_100216644();
}

uint64_t sub_1000BB0E8()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static PolicyDocumentKey._protobuf_nameMap);
  sub_100002648(v0, static PolicyDocumentKey._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "hash";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t PolicyDocumentKey.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_100216534();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1002165D4();
    }

    else if (result == 2)
    {
      sub_1002165B4();
    }
  }

  return result;
}

uint64_t PolicyDocumentKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1002166E4(), !v4))
  {
    v6 = v3[2];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[1] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_1002166C4(), !v4))
    {
      type metadata accessor for PolicyDocumentKey(0);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000BB480@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t sub_1000BB4DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CCD8, type metadata accessor for PolicyDocumentKey, &protocol conformance descriptor for PolicyDocumentKey);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000BB580(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_10029D840, type metadata accessor for PolicyDocumentKey, &protocol conformance descriptor for PolicyDocumentKey);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BB5EC(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_10029D840, type metadata accessor for PolicyDocumentKey, &protocol conformance descriptor for PolicyDocumentKey);

  return sub_100216644();
}

uint64_t sub_1000BB690()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static PolicyDocumentMapEntry._protobuf_nameMap);
  sub_100002648(v0, static PolicyDocumentMapEntry._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t PolicyDocumentMapEntry.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_100216534();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1000BB930(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_100216574();
    }
  }

  return result;
}

uint64_t sub_1000BB930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PolicyDocumentMapEntry(0);
  type metadata accessor for PolicyDocumentKey(0);
  sub_1000F9F28(&qword_10029D840, type metadata accessor for PolicyDocumentKey, &protocol conformance descriptor for PolicyDocumentKey);
  return sub_1002165F4();
}

uint64_t PolicyDocumentMapEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000BBAB8(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = *v3;
    v7 = v3[1];
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_11;
      }

      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((v7 & 0xFF000000000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      v9 = v6;
      v10 = v6 >> 32;
    }

    if (v9 != v10)
    {
LABEL_10:
      sub_100216684();
    }

LABEL_11:
    type metadata accessor for PolicyDocumentMapEntry(0);
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000BBAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&unk_10029D820, &unk_10021E840);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for PolicyDocumentKey(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PolicyDocumentMapEntry(0);
  sub_100019C6C(a1 + *(v14 + 24), v8, &unk_10029D820, &unk_10021E840);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D820, &unk_10021E840);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for PolicyDocumentKey);
  sub_1000F9F28(&qword_10029D840, type metadata accessor for PolicyDocumentKey, &protocol conformance descriptor for PolicyDocumentKey);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for PolicyDocumentKey);
}

uint64_t sub_1000BBD1C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = xmmword_10021D470;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for PolicyDocumentKey(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1000BBDD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CCD0, type metadata accessor for PolicyDocumentMapEntry, &protocol conformance descriptor for PolicyDocumentMapEntry);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000BBE78(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298860, type metadata accessor for PolicyDocumentMapEntry, &protocol conformance descriptor for PolicyDocumentMapEntry);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BBEE4(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298860, type metadata accessor for PolicyDocumentMapEntry, &protocol conformance descriptor for PolicyDocumentMapEntry);

  return sub_100216644();
}

uint64_t AccountInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_100216534();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1002165C4();
    }
  }

  return result;
}

uint64_t AccountInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1002166D4(), !v4))
  {
    type metadata accessor for AccountInfo(0);
    return sub_1002164B4();
  }

  return result;
}

uint64_t static AccountInfo.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for AccountInfo(0);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000BC228(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CCC8, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000BC2C8(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BC334(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);

  return sub_100216644();
}

uint64_t sub_1000BC3B0(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000BC478()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static Metrics._protobuf_nameMap);
  sub_100002648(v0, static Metrics._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "flow_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "device_session_id";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000BC72C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CCC0, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000BC7CC(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BC838(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);

  return sub_100216644();
}

uint64_t sub_1000BC8B4(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_1002171A4() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_1002171A4() & 1) == 0)
  {
    return 0;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000BCA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResetRequest(0);
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  return sub_1002165F4();
}

uint64_t sub_1000BCB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResetRequest(0);
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  return sub_1002165F4();
}

uint64_t sub_1000BCC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for AccountInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ResetRequest(0);
  sub_100019C6C(a1 + *(v14 + 40), v8, &unk_10029D6F0, &qword_100226B40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for AccountInfo);
}

uint64_t sub_1000BCE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Metrics(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ResetRequest(0);
  sub_100019C6C(a1 + *(v14 + 44), v8, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for Metrics);
}

uint64_t sub_1000BD0BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CCB8, type metadata accessor for ResetRequest, &protocol conformance descriptor for ResetRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000BD194(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298CE0, type metadata accessor for ResetRequest, &protocol conformance descriptor for ResetRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BD200(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298CE0, type metadata accessor for ResetRequest, &protocol conformance descriptor for ResetRequest);

  return sub_100216644();
}

uint64_t sub_1000BD338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResetResponse(0);
  type metadata accessor for Changes(0);
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes, &protocol conformance descriptor for Changes);
  return sub_1002165F4();
}

uint64_t sub_1000BD490(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CCB0, type metadata accessor for ResetResponse, &protocol conformance descriptor for ResetResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000BD534(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298CF8, type metadata accessor for ResetResponse, &protocol conformance descriptor for ResetResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BD5A0(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298CF8, type metadata accessor for ResetResponse, &protocol conformance descriptor for ResetResponse);

  return sub_100216644();
}

uint64_t sub_1000BD644()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static EstablishRequest._protobuf_nameMap);
  sub_100002648(v0, static EstablishRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10021DFA0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "peer";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "bottle";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "view_keys";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "tlk_shares";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "metrics";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "accountInfo";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  return sub_100216724();
}

uint64_t sub_1000BD960()
{
  type metadata accessor for EstablishRequest._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  v2 = type metadata accessor for Peer(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  v4 = type metadata accessor for Bottle(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares) = _swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  v6 = type metadata accessor for Metrics(0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  v8 = type metadata accessor for AccountInfo(0);
  result = (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  qword_100298548 = v0;
  return result;
}

uint64_t sub_1000BDADC(_TtC18TrustedPeersHelper6Client *a1)
{
  v3 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v3 - 8, v4);
  v66 = &v63 - v5;
  v6 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v6 - 8, v7);
  v65 = &v63 - v8;
  v9 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v63 - v11;
  v13 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  __chkstk_darwin(v13 - 8, v14);
  v16 = &v63 - v15;
  v17 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  v18 = type metadata accessor for Peer(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  v20 = type metadata accessor for Bottle(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  *(v1 + OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys) = _swiftEmptyArrayStorage;
  v22 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  *(v1 + OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares) = _swiftEmptyArrayStorage;
  v23 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  v63 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  v24 = type metadata accessor for Metrics(0);
  (*(*(v24 - 8) + 56))(v1 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  v64 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  v26 = type metadata accessor for AccountInfo(0);
  (*(*(v26 - 8) + 56))(v1 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v27], v16, &unk_10029D7A0, &qword_10021E858);
  swift_beginAccess();
  sub_1000F9E80(v16, v1 + v17, &unk_10029D7A0, &qword_10021E858);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v28], v12, &unk_10029D880, &qword_10021E830);
  swift_beginAccess();
  sub_1000F9E80(v12, v1 + v19, &unk_10029D880, &qword_10021E830);
  swift_endAccess();
  v29 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  swift_beginAccess();
  v30 = *&a1->_TtCs12_SwiftObject_opaque[v29];
  swift_beginAccess();
  v31 = *(v1 + v21);
  *(v1 + v21) = v30;

  v31, v32, v33, v34, v35, v36, v37, v38, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72;
  v39 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  swift_beginAccess();
  v40 = *&a1->_TtCs12_SwiftObject_opaque[v39];
  swift_beginAccess();
  v41 = *(v1 + v22);
  *(v1 + v22) = v40;

  v41, v42, v43, v44, v45, v46, v47, v48, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72;
  v49 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  v50 = v65;
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v49], v65, &qword_100297FE0, &unk_10021E7F0);
  v51 = v63;
  swift_beginAccess();
  sub_1000F9E80(v50, v51 + v1, &qword_100297FE0, &unk_10021E7F0);
  swift_endAccess();
  v52 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  v53 = v66;
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v52], v66, &unk_10029D6F0, &qword_100226B40);
  a1, v54, v55, v56, v57, v58, v59, v60;
  v61 = v64;
  swift_beginAccess();
  sub_1000F9E80(v53, v61 + v1, &unk_10029D6F0, &qword_100226B40);
  swift_endAccess();
  return v1;
}

uint64_t sub_1000BE190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_100216534();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 3)
      {
        switch(result)
        {
          case 4:
            sub_1000BE494(a2, a1, a3, a4);
            break;
          case 5:
            sub_1000BE570(a2, a1, a3, a4);
            break;
          case 6:
            sub_1000BE64C(a2, a1, a3, a4);
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            sub_1000BE2DC(a2, a1, a3, a4);
            break;
          case 2:
            sub_1000BE3B8(a2, a1, a3, a4);
            break;
          case 3:
            sub_1000CC2CC(a2, a1, a3, a4, &OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys);
            break;
        }
      }

      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000BE2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Peer(0);
  sub_1000F9F28(&qword_100298BE8, type metadata accessor for Peer, &protocol conformance descriptor for Peer);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000BE3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Bottle(0);
  sub_1000F9F28(&qword_100298C58, type metadata accessor for Bottle, &protocol conformance descriptor for Bottle);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000BE494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for TLKShare(0);
  sub_1000F9F28(&qword_1002987A8, type metadata accessor for TLKShare, &protocol conformance descriptor for TLKShare);
  sub_1002165E4();
  return swift_endAccess();
}

uint64_t sub_1000BE570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000BE64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  sub_1002165F4();
  return swift_endAccess();
}

void sub_1000BE768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000BE95C(a1, a2, a3, a4);
  if (!v4)
  {
    sub_1000BEB84(a1, a2, a3, a4);
    v9 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
    swift_beginAccess();
    v10 = *(a1 + v9);
    if (*v10->endpoint)
    {
      type metadata accessor for ViewKeys(0);
      sub_1000F9F28(&unk_10029D910, type metadata accessor for ViewKeys, &protocol conformance descriptor for ViewKeys);

      sub_1002166F4();
      v10, v11, v12, v13, v14, v15, v16, v17, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36;
    }

    v18 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
    swift_beginAccess();
    v19 = *(a1 + v18);
    if (*v19->endpoint)
    {
      type metadata accessor for TLKShare(0);
      sub_1000F9F28(&qword_1002987A8, type metadata accessor for TLKShare, &protocol conformance descriptor for TLKShare);

      sub_1002166F4();
      v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36;
    }

    sub_1000BEDAC(a1, a2, a3, a4);
    sub_1000BEFD4(a1, a2, a3, a4);
  }
}

uint64_t sub_1000BE95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Peer(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_100019C6C(a1 + v14, v8, &unk_10029D7A0, &qword_10021E858);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D7A0, &qword_10021E858);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for Peer);
  sub_1000F9F28(&qword_100298BE8, type metadata accessor for Peer, &protocol conformance descriptor for Peer);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for Peer);
}

uint64_t sub_1000BEB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Bottle(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_100019C6C(a1 + v14, v8, &unk_10029D880, &qword_10021E830);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D880, &qword_10021E830);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for Bottle);
  sub_1000F9F28(&qword_100298C58, type metadata accessor for Bottle, &protocol conformance descriptor for Bottle);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for Bottle);
}

uint64_t sub_1000BEDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Metrics(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_100019C6C(a1 + v14, v8, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for Metrics);
}

uint64_t sub_1000BEFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for AccountInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_100019C6C(a1 + v14, v8, &unk_10029D6F0, &qword_100226B40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for AccountInfo);
}

BOOL sub_1000BF1FC(_TtC18TrustedPeersHelper6Client *a1, uint64_t a2)
{
  v240 = a2;
  v3 = type metadata accessor for AccountInfo(0);
  v220 = *(v3 - 8);
  v221 = v3;
  __chkstk_darwin(v3, v4);
  v216 = &v216 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  __chkstk_darwin(v219, v6);
  v222 = &v216 - v7;
  v8 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v217 = &v216 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v12);
  v223 = &v216 - v13;
  v228 = type metadata accessor for Metrics(0);
  v226 = *(v228 - 8);
  __chkstk_darwin(v228, v14);
  v218 = &v216 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  __chkstk_darwin(v225, v16);
  v227 = &v216 - v17;
  v18 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v20 = __chkstk_darwin(v18 - 8, v19);
  v224 = &v216 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v22);
  v236 = &v216 - v23;
  v24 = type metadata accessor for Bottle(0);
  v233 = *(v24 - 8);
  v234 = v24;
  __chkstk_darwin(v24, v25);
  v229 = (&v216 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v232 = sub_10001148C(&qword_10029CE00, &qword_100225DA0);
  __chkstk_darwin(v232, v27);
  v235 = &v216 - v28;
  v29 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  v31 = __chkstk_darwin(v29 - 8, v30);
  v230 = (&v216 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v31, v33);
  v237 = &v216 - v34;
  v238 = type metadata accessor for Peer(0);
  v35 = *(v238 - 8);
  __chkstk_darwin(v238, v36);
  v231 = (&v216 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = sub_10001148C(&qword_10029CDD0, &qword_100225D60);
  v39 = v38 - 8;
  __chkstk_darwin(v38, v40);
  v42 = &v216 - v41;
  v43 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  v45 = __chkstk_darwin(v43 - 8, v44);
  v239 = (&v216 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v45, v47);
  v49 = &v216 - v48;
  v50 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v50], v49, &unk_10029D7A0, &qword_10021E858);
  v51 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  v52 = v240;
  swift_beginAccess();
  v53 = *(v39 + 56);
  sub_100019C6C(v49, v42, &unk_10029D7A0, &qword_10021E858);
  v54 = v52;
  v55 = v238;
  v56 = &v54->_TtCs12_SwiftObject_opaque[v51];
  v57 = v54;
  sub_100019C6C(v56, &v42[v53], &unk_10029D7A0, &qword_10021E858);
  v58 = *(v35 + 48);
  if (v58(v42, 1, v55) == 1)
  {

    sub_1000114D4(v49, &unk_10029D7A0, &qword_10021E858);
    v59 = v57;
    if (v58(&v42[v53], 1, v55) == 1)
    {
      sub_1000114D4(v42, &unk_10029D7A0, &qword_10021E858);
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v59 = v57;
  sub_100019C6C(v42, v239, &unk_10029D7A0, &qword_10021E858);
  if (v58(&v42[v53], 1, v55) == 1)
  {

    sub_1000114D4(v49, &unk_10029D7A0, &qword_10021E858);
    sub_1000F9228(v239, type metadata accessor for Peer);
LABEL_6:
    sub_1000114D4(v42, &qword_10029CDD0, &qword_100225D60);
LABEL_7:
    v67 = a1;
LABEL_22:
    v67, v60, v61, v62, v63, v64, v65, v66;
    v59, v132, v133, v134, v135, v136, v137, v138;
    return 0;
  }

  v68 = v231;
  sub_1000F89AC(&v42[v53], v231, type metadata accessor for Peer);

  v69 = v239;
  v70 = _s18TrustedPeersHelper4PeerV2eeoiySbAC_ACtFZ_0(v239, v68);
  sub_1000F9228(v68, type metadata accessor for Peer);
  sub_1000114D4(v49, &unk_10029D7A0, &qword_10021E858);
  sub_1000F9228(v69, type metadata accessor for Peer);
  sub_1000114D4(v42, &unk_10029D7A0, &qword_10021E858);
  if ((v70 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v71 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  v72 = a1;
  v73 = v237;
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v71], v237, &unk_10029D880, &qword_10021E830);
  v74 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  v75 = *(v232 + 48);
  v76 = v235;
  sub_100019C6C(v73, v235, &unk_10029D880, &qword_10021E830);
  sub_100019C6C(&v59->_TtCs12_SwiftObject_opaque[v74], v76 + v75, &unk_10029D880, &qword_10021E830);
  v77 = v234;
  v78 = *(v233 + 48);
  if (v78(v76, 1, v234) != 1)
  {
    v82 = v230;
    sub_100019C6C(v76, v230, &unk_10029D880, &qword_10021E830);
    v83 = v78(v76 + v75, 1, v77);
    v81 = v236;
    if (v83 != 1)
    {
      v84 = v76 + v75;
      v85 = v229;
      sub_1000F89AC(v84, v229, type metadata accessor for Bottle);
      v86 = _s18TrustedPeersHelper6BottleV2eeoiySbAC_ACtFZ_0(v82, v85);
      sub_1000F9228(v85, type metadata accessor for Bottle);
      sub_1000114D4(v237, &unk_10029D880, &qword_10021E830);
      sub_1000F9228(v82, type metadata accessor for Bottle);
      sub_1000114D4(v76, &unk_10029D880, &qword_10021E830);
      v80 = v72;
      if (v86)
      {
        goto LABEL_16;
      }

LABEL_21:
      v67 = v80;
      goto LABEL_22;
    }

    sub_1000114D4(v237, &unk_10029D880, &qword_10021E830);
    sub_1000F9228(v82, type metadata accessor for Bottle);
    v80 = v72;
LABEL_14:
    sub_1000114D4(v76, &qword_10029CE00, &qword_100225DA0);
    goto LABEL_21;
  }

  sub_1000114D4(v73, &unk_10029D880, &qword_10021E830);
  v79 = v78(v76 + v75, 1, v77);
  v80 = v72;
  v81 = v236;
  if (v79 != 1)
  {
    goto LABEL_14;
  }

  sub_1000114D4(v76, &unk_10029D880, &qword_10021E830);
LABEL_16:
  v87 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  swift_beginAccess();
  v88 = *&v80->_TtCs12_SwiftObject_opaque[v87];
  v89 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  swift_beginAccess();
  v90 = *&v59->_TtCs12_SwiftObject_opaque[v89];

  v91 = sub_100051748(v88, v90);
  v88, v92, v93, v94, v95, v96, v97, v98, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225;
  v90, v99, v100, v101, v102, v103, v104, v105, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225;
  if ((v91 & 1) == 0)
  {
    goto LABEL_21;
  }

  v106 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  swift_beginAccess();
  v107 = *&v80->_TtCs12_SwiftObject_opaque[v106];
  v108 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  swift_beginAccess();
  v109 = *&v59->_TtCs12_SwiftObject_opaque[v108];

  v110 = sub_1000516F4(v107, v109);
  v107, v111, v112, v113, v114, v115, v116, v117, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225;
  v109, v118, v119, v120, v121, v122, v123, v124, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225;
  if ((v110 & 1) == 0)
  {
    goto LABEL_21;
  }

  v125 = v80;
  v126 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_100019C6C(&v125->_TtCs12_SwiftObject_opaque[v126], v81, &qword_100297FE0, &unk_10021E7F0);
  v127 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  v128 = v225[12];
  v129 = v227;
  sub_100019C6C(v81, v227, &qword_100297FE0, &unk_10021E7F0);
  sub_100019C6C(&v59->_TtCs12_SwiftObject_opaque[v127], v129 + v128, &qword_100297FE0, &unk_10021E7F0);
  v130 = *(v226 + 48);
  v131 = v228;
  if (v130(v129, 1, v228) != 1)
  {
    v140 = v224;
    sub_100019C6C(v129, v224, &qword_100297FE0, &unk_10021E7F0);
    if (v130(v129 + v128, 1, v131) != 1)
    {
      v144 = v218;
      sub_1000F89AC(v129 + v128, v218, type metadata accessor for Metrics);
      if (*v140 == *v144 && v140[1] == v144[1] || (sub_1002171A4()) && (v140[2] == v144[2] && v140[3] == v144[3] || (sub_1002171A4()))
      {
        sub_1002164D4();
        sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v145 = sub_100216954();
        sub_1000114D4(v236, &qword_100297FE0, &unk_10021E7F0);
        sub_1000F9228(v144, type metadata accessor for Metrics);
        sub_1000F9228(v140, type metadata accessor for Metrics);
        sub_1000114D4(v129, &qword_100297FE0, &unk_10021E7F0);
        if (v145)
        {
          goto LABEL_37;
        }

        goto LABEL_29;
      }

      sub_1000114D4(v236, &qword_100297FE0, &unk_10021E7F0);
      sub_1000F9228(v144, type metadata accessor for Metrics);
      sub_1000F9228(v140, type metadata accessor for Metrics);
      v143 = v129;
      v141 = &qword_100297FE0;
      v142 = &unk_10021E7F0;
LABEL_28:
      sub_1000114D4(v143, v141, v142);
LABEL_29:
      v67 = v72;
      goto LABEL_22;
    }

    sub_1000114D4(v81, &qword_100297FE0, &unk_10021E7F0);
    sub_1000F9228(v140, type metadata accessor for Metrics);
LABEL_27:
    v141 = &qword_10029CD78;
    v142 = &qword_100225CE8;
    v143 = v129;
    goto LABEL_28;
  }

  sub_1000114D4(v81, &qword_100297FE0, &unk_10021E7F0);
  if (v130(v129 + v128, 1, v131) != 1)
  {
    goto LABEL_27;
  }

  sub_1000114D4(v129, &qword_100297FE0, &unk_10021E7F0);
LABEL_37:
  v146 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  v147 = v223;
  sub_100019C6C(&v72->_TtCs12_SwiftObject_opaque[v146], v223, &unk_10029D6F0, &qword_100226B40);
  v148 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  v149 = v219[12];
  v150 = v222;
  sub_100019C6C(v147, v222, &unk_10029D6F0, &qword_100226B40);
  sub_100019C6C(&v59->_TtCs12_SwiftObject_opaque[v148], &v150[v149], &unk_10029D6F0, &qword_100226B40);
  v151 = v221;
  v152 = v220[6];
  if (v152(v150, 1, v221) == 1)
  {
    v72, v153, v154, v155, v156, v157, v158, v159;
    v59, v160, v161, v162, v163, v164, v165, v166;
    sub_1000114D4(v147, &unk_10029D6F0, &qword_100226B40);
    if (v152(&v150[v149], 1, v151) == 1)
    {
      sub_1000114D4(v150, &unk_10029D6F0, &qword_100226B40);
      return 1;
    }

    goto LABEL_43;
  }

  v167 = v217;
  sub_100019C6C(v150, v217, &unk_10029D6F0, &qword_100226B40);
  if (v152(&v150[v149], 1, v151) == 1)
  {
    v72, v168, v169, v170, v171, v172, v173, v174;
    v59, v175, v176, v177, v178, v179, v180, v181;
    sub_1000114D4(v223, &unk_10029D6F0, &qword_100226B40);
    sub_1000F9228(v167, type metadata accessor for AccountInfo);
LABEL_43:
    v182 = &qword_10029CD70;
    v183 = &qword_100225CE0;
    v184 = v150;
LABEL_44:
    sub_1000114D4(v184, v182, v183);
    return 0;
  }

  v185 = &v150[v149];
  v186 = v216;
  sub_1000F89AC(v185, v216, type metadata accessor for AccountInfo);
  if (*v167 != *v186)
  {
    v72, v187, v188, v189, v190, v191, v192, v193;
    v59, v209, v210, v211, v212, v213, v214, v215;
    sub_1000F9228(v186, type metadata accessor for AccountInfo);
    sub_1000114D4(v223, &unk_10029D6F0, &qword_100226B40);
    sub_1000F9228(v167, type metadata accessor for AccountInfo);
    v184 = v150;
    v182 = &unk_10029D6F0;
    v183 = &qword_100226B40;
    goto LABEL_44;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v194 = sub_100216954();
  v72, v195, v196, v197, v198, v199, v200, v201;
  v59, v202, v203, v204, v205, v206, v207, v208;
  sub_1000F9228(v186, type metadata accessor for AccountInfo);
  sub_1000114D4(v223, &unk_10029D6F0, &qword_100226B40);
  sub_1000F9228(v167, type metadata accessor for AccountInfo);
  sub_1000114D4(v150, &unk_10029D6F0, &qword_100226B40);
  return (v194 & 1) != 0;
}

uint64_t sub_1000C0418(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CCA8, type metadata accessor for EstablishRequest, &protocol conformance descriptor for EstablishRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C04BC(uint64_t a1)
{
  v2 = sub_1000F9F28(&unk_10029D920, type metadata accessor for EstablishRequest, &protocol conformance descriptor for EstablishRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C0528(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&unk_10029D920, type metadata accessor for EstablishRequest, &protocol conformance descriptor for EstablishRequest);

  return sub_100216644();
}

uint64_t sub_1000C05CC()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static EstablishResponse._protobuf_nameMap);
  sub_100002648(v0, static EstablishResponse._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "changes";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "zone_key_hierarchy_records";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000C0810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EstablishResponse(0);
  type metadata accessor for Changes(0);
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes, &protocol conformance descriptor for Changes);
  return sub_1002165F4();
}

uint64_t sub_1000C0904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Changes(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EstablishResponse(0);
  sub_100019C6C(a1 + *(v14 + 24), v8, &unk_10029D750, &qword_10021E850);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D750, &qword_10021E850);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for Changes);
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes, &protocol conformance descriptor for Changes);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for Changes);
}

uint64_t sub_1000C0B98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CCA0, type metadata accessor for EstablishResponse, &protocol conformance descriptor for EstablishResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C0C70(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298D20, type metadata accessor for EstablishResponse, &protocol conformance descriptor for EstablishResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C0CDC(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298D20, type metadata accessor for EstablishResponse, &protocol conformance descriptor for EstablishResponse);

  return sub_100216644();
}

uint64_t sub_1000C0D80()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static JoinWithVoucherRequest._protobuf_nameMap);
  sub_100002648(v0, static JoinWithVoucherRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10021D5F0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "change_token";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "peer";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "bottle";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "tlk_shares";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "view_keys";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "trusted_devices_version";
  *(v17 + 1) = 23;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "metrics";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "accountInfo";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  return sub_100216724();
}

uint64_t sub_1000C111C()
{
  type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  v2 = type metadata accessor for Peer(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  v4 = type metadata accessor for Bottle(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys) = _swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__trustedDevicesVersion;
  v6 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  v8 = type metadata accessor for Metrics(0);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  v10 = type metadata accessor for AccountInfo(0);
  result = (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  qword_100298550 = v0;
  return result;
}

uint64_t sub_1000C12E8(_TtC18TrustedPeersHelper6Client *a1)
{
  v3 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v3 - 8, v4);
  v82 = &v74 - v5;
  v6 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v6 - 8, v7);
  v81 = &v74 - v8;
  v9 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  __chkstk_darwin(v9 - 8, v10);
  v80 = &v74 - v11;
  v12 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  __chkstk_darwin(v12 - 8, v13);
  v76 = &v74 - v14;
  v15 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  __chkstk_darwin(v15 - 8, v16);
  v18 = &v74 - v17;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v19 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  v20 = type metadata accessor for Peer(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  v75 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  v22 = type metadata accessor for Bottle(0);
  (*(*(v22 - 8) + 56))(v1 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  *(v1 + OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares) = _swiftEmptyArrayStorage;
  v24 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  *(v1 + OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys) = _swiftEmptyArrayStorage;
  v25 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__trustedDevicesVersion;
  v77 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__trustedDevicesVersion;
  v26 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  (*(*(v26 - 8) + 56))(v1 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  v78 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  v28 = type metadata accessor for Metrics(0);
  (*(*(v28 - 8) + 56))(v1 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  v79 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  v30 = type metadata accessor for AccountInfo(0);
  (*(*(v30 - 8) + 56))(v1 + v29, 1, 1, v30);
  swift_beginAccess();
  v31 = *a1->endpoint;
  v32 = *a1->containerMap;
  swift_beginAccess();
  *(v1 + 16) = v31;
  *(v1 + 24) = v32;
  v33 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v33], v18, &unk_10029D7A0, &qword_10021E858);
  swift_beginAccess();

  sub_1000F9E80(v18, v1 + v19, &unk_10029D7A0, &qword_10021E858);
  swift_endAccess();
  v34 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  v35 = v76;
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v34], v76, &unk_10029D880, &qword_10021E830);
  v36 = v75;
  swift_beginAccess();
  sub_1000F9E80(v35, v36 + v1, &unk_10029D880, &qword_10021E830);
  swift_endAccess();
  v37 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  swift_beginAccess();
  v38 = *&a1->_TtCs12_SwiftObject_opaque[v37];
  swift_beginAccess();
  v39 = *(v1 + v23);
  *(v1 + v23) = v38;

  v39, v40, v41, v42, v43, v44, v45, v46, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83;
  v47 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  swift_beginAccess();
  v48 = *&a1->_TtCs12_SwiftObject_opaque[v47];
  swift_beginAccess();
  v49 = *(v1 + v24);
  *(v1 + v24) = v48;

  v49, v50, v51, v52, v53, v54, v55, v56, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83;
  v57 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__trustedDevicesVersion;
  swift_beginAccess();
  v58 = v80;
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v57], v80, &qword_10029D770, &qword_10021E860);
  v59 = v77;
  swift_beginAccess();
  sub_1000F9E80(v58, v59 + v1, &qword_10029D770, &qword_10021E860);
  swift_endAccess();
  v60 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  v61 = v81;
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v60], v81, &qword_100297FE0, &unk_10021E7F0);
  v62 = v78;
  swift_beginAccess();
  sub_1000F9E80(v61, v62 + v1, &qword_100297FE0, &unk_10021E7F0);
  swift_endAccess();
  v63 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  v64 = v82;
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v63], v82, &unk_10029D6F0, &qword_100226B40);
  a1, v65, v66, v67, v68, v69, v70, v71;
  v72 = v79;
  swift_beginAccess();
  sub_1000F9E80(v64, v1 + v72, &unk_10029D6F0, &qword_100226B40);
  swift_endAccess();
  return v1;
}

uint64_t sub_1000C1B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_100216534();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7)
          {
            sub_1000C2044(a2, a1, a3, a4);
          }

          else if (result == 8)
          {
            sub_1000C2120(a2, a1, a3, a4);
          }
        }

        else if (result == 5)
        {
          sub_1000CC2CC(a2, a1, a3, a4, &OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys);
        }

        else
        {
          sub_1000C1F68(a2, a1, a3, a4);
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          sub_1000C1DB0(a2, a1, a3, a4);
        }

        else
        {
          sub_1000C1E8C(a2, a1, a3, a4);
        }
      }

      else if (result == 1)
      {
        sub_1000E1030(a2, a1, a3, a4, &dispatch thunk of Decoder.decodeSingularStringField(value:));
      }

      else if (result == 2)
      {
        sub_1000C1CD4(a2, a1, a3, a4);
      }

      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000C1CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Peer(0);
  sub_1000F9F28(&qword_100298BE8, type metadata accessor for Peer, &protocol conformance descriptor for Peer);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000C1DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Bottle(0);
  sub_1000F9F28(&qword_100298C58, type metadata accessor for Bottle, &protocol conformance descriptor for Bottle);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000C1E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for TLKShare(0);
  sub_1000F9F28(&qword_1002987A8, type metadata accessor for TLKShare, &protocol conformance descriptor for TLKShare);
  sub_1002165E4();
  return swift_endAccess();
}

uint64_t sub_1000C1F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for IdmsTrustedDevicesVersion(0);
  sub_1000F9F28(&qword_100298BD0, type metadata accessor for IdmsTrustedDevicesVersion, &protocol conformance descriptor for IdmsTrustedDevicesVersion);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000C2044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000C2120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  sub_1002165F4();
  return swift_endAccess();
}

void sub_1000C223C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = *(a1 + 24);
  v10 = (v9 >> 56) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (, sub_1002166C4(), v9, v11, v12, v13, v14, v15, v16, v17, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, !v4))
  {
    sub_1000C24C8(a1, a2, a3, a4);
    if (!v4)
    {
      sub_1000C26F0(a1, a2, a3, a4);
      v18 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
      swift_beginAccess();
      v19 = *(a1 + v18);
      if (*v19->endpoint)
      {
        type metadata accessor for TLKShare(0);
        sub_1000F9F28(&qword_1002987A8, type metadata accessor for TLKShare, &protocol conformance descriptor for TLKShare);

        sub_1002166F4();
        v19, v20, v21, v22, v23, v24, v25, v26, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45;
      }

      v27 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
      swift_beginAccess();
      v28 = *(a1 + v27);
      if (*v28->endpoint)
      {
        type metadata accessor for ViewKeys(0);
        sub_1000F9F28(&unk_10029D910, type metadata accessor for ViewKeys, &protocol conformance descriptor for ViewKeys);

        sub_1002166F4();
        v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45;
      }

      sub_1000C2918(a1, a2, a3, a4);
      sub_1000C2B40(a1, a2, a3, a4);
      sub_1000C2D68(a1, a2, a3, a4);
    }
  }
}

uint64_t sub_1000C24C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Peer(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_100019C6C(a1 + v14, v8, &unk_10029D7A0, &qword_10021E858);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D7A0, &qword_10021E858);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for Peer);
  sub_1000F9F28(&qword_100298BE8, type metadata accessor for Peer, &protocol conformance descriptor for Peer);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for Peer);
}

uint64_t sub_1000C26F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Bottle(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_100019C6C(a1 + v14, v8, &unk_10029D880, &qword_10021E830);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D880, &qword_10021E830);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for Bottle);
  sub_1000F9F28(&qword_100298C58, type metadata accessor for Bottle, &protocol conformance descriptor for Bottle);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for Bottle);
}

uint64_t sub_1000C2918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__trustedDevicesVersion;
  swift_beginAccess();
  sub_100019C6C(a1 + v14, v8, &qword_10029D770, &qword_10021E860);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_10029D770, &qword_10021E860);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for IdmsTrustedDevicesVersion);
  sub_1000F9F28(&qword_100298BD0, type metadata accessor for IdmsTrustedDevicesVersion, &protocol conformance descriptor for IdmsTrustedDevicesVersion);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for IdmsTrustedDevicesVersion);
}

uint64_t sub_1000C2B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Metrics(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_100019C6C(a1 + v14, v8, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for Metrics);
}

uint64_t sub_1000C2D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for AccountInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_100019C6C(a1 + v14, v8, &unk_10029D6F0, &qword_100226B40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for AccountInfo);
}

BOOL sub_1000C2F90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountInfo(0);
  v267 = *(v4 - 1);
  v268 = v4;
  __chkstk_darwin(v4, v5);
  v263 = &v262 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  __chkstk_darwin(v266, v7);
  v9 = &v262 - v8;
  v10 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v12 = __chkstk_darwin(v10 - 8, v11);
  v264 = &v262 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v14);
  v275 = &v262 - v15;
  v274 = type metadata accessor for Metrics(0);
  v272 = *(v274 - 8);
  __chkstk_darwin(v274, v16);
  v265 = &v262 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  __chkstk_darwin(v271, v18);
  v273 = &v262 - v19;
  v20 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v22 = __chkstk_darwin(v20 - 8, v21);
  v269 = &v262 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v24);
  v281 = &v262 - v25;
  v26 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  v278 = *(v26 - 8);
  v279 = v26;
  __chkstk_darwin(v26, v27);
  v270 = &v262 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v277 = sub_10001148C(&qword_10029CE08, &qword_100225DA8);
  __chkstk_darwin(v277, v29);
  v280 = &v262 - v30;
  v31 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  v33 = __chkstk_darwin(v31 - 8, v32);
  v276 = (&v262 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v33, v35);
  v290 = &v262 - v36;
  v37 = type metadata accessor for Bottle(0);
  v287 = *(v37 - 8);
  v288 = v37;
  __chkstk_darwin(v37, v38);
  v282 = (&v262 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v285 = sub_10001148C(&qword_10029CE00, &qword_100225DA0);
  __chkstk_darwin(v285, v40);
  v289 = &v262 - v41;
  v42 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  v44 = __chkstk_darwin(v42 - 8, v43);
  v283 = (&v262 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v44, v46);
  v286 = &v262 - v47;
  v292 = type metadata accessor for Peer(0);
  v48 = *(v292 - 8);
  __chkstk_darwin(v292, v49);
  v284 = (&v262 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = sub_10001148C(&qword_10029CDD0, &qword_100225D60);
  __chkstk_darwin(v51, v52);
  v54 = &v262 - v53;
  v55 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  v57 = __chkstk_darwin(v55 - 8, v56);
  v291 = (&v262 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v57, v59);
  v61 = &v262 - v60;
  swift_beginAccess();
  v62 = *(a1 + 16);
  v63 = *(a1 + 24);
  v294 = a1;
  swift_beginAccess();
  if (__PAIR128__(v63, v62) != *(a2 + 16) && (sub_1002171A4() & 1) == 0)
  {
    return 0;
  }

  v262 = v9;
  v293 = a2;
  v64 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  v65 = v294;
  swift_beginAccess();
  v66 = &v65->_TtCs12_SwiftObject_opaque[v64];
  v67 = v293;
  sub_100019C6C(v66, v61, &unk_10029D7A0, &qword_10021E858);
  v68 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  v69 = *(v51 + 48);
  sub_100019C6C(v61, v54, &unk_10029D7A0, &qword_10021E858);
  sub_100019C6C(&v67->_TtCs12_SwiftObject_opaque[v68], &v54[v69], &unk_10029D7A0, &qword_10021E858);
  v70 = *(v48 + 48);
  v71 = v292;
  if (v70(v54, 1, v292) == 1)
  {

    sub_1000114D4(v61, &unk_10029D7A0, &qword_10021E858);
    if (v70(&v54[v69], 1, v71) == 1)
    {
      sub_1000114D4(v54, &unk_10029D7A0, &qword_10021E858);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v72 = v291;
  sub_100019C6C(v54, v291, &unk_10029D7A0, &qword_10021E858);
  if (v70(&v54[v69], 1, v71) == 1)
  {
    v65 = v294;

    sub_1000114D4(v61, &unk_10029D7A0, &qword_10021E858);
    sub_1000F9228(v72, type metadata accessor for Peer);
LABEL_8:
    sub_1000114D4(v54, &qword_10029CDD0, &qword_100225D60);
LABEL_9:
    v65, v73, v74, v75, v76, v77, v78, v79;
    v87 = v67;
LABEL_26:
    v87, v80, v81, v82, v83, v84, v85, v86;
    return 0;
  }

  v88 = v284;
  sub_1000F89AC(&v54[v69], v284, type metadata accessor for Peer);
  v65 = v294;

  v89 = _s18TrustedPeersHelper4PeerV2eeoiySbAC_ACtFZ_0(v72, v88);
  sub_1000F9228(v88, type metadata accessor for Peer);
  sub_1000114D4(v61, &unk_10029D7A0, &qword_10021E858);
  sub_1000F9228(v72, type metadata accessor for Peer);
  sub_1000114D4(v54, &unk_10029D7A0, &qword_10021E858);
  if ((v89 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_11:
  v90 = v67;
  v91 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  v92 = v286;
  sub_100019C6C(&v65->_TtCs12_SwiftObject_opaque[v91], v286, &unk_10029D880, &qword_10021E830);
  v93 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  v94 = *(v285 + 48);
  v95 = v289;
  sub_100019C6C(v92, v289, &unk_10029D880, &qword_10021E830);
  sub_100019C6C(&v90->_TtCs12_SwiftObject_opaque[v93], v95 + v94, &unk_10029D880, &qword_10021E830);
  v96 = v288;
  v97 = *(v287 + 48);
  if (v97(v95, 1, v288) == 1)
  {
    sub_1000114D4(v92, &unk_10029D880, &qword_10021E830);
    v98 = v97(v95 + v94, 1, v96);
    v99 = v290;
    if (v98 == 1)
    {
      sub_1000114D4(v95, &unk_10029D880, &qword_10021E830);
      v100 = v293;
      goto LABEL_20;
    }

LABEL_16:
    v103 = &qword_10029CE00;
    v104 = &qword_100225DA0;
    v105 = v95;
LABEL_17:
    sub_1000114D4(v105, v103, v104);
LABEL_18:
    v65, v106, v107, v108, v109, v110, v111, v112;
    v87 = v293;
    goto LABEL_26;
  }

  v101 = v283;
  sub_100019C6C(v95, v283, &unk_10029D880, &qword_10021E830);
  v102 = v97(v95 + v94, 1, v96);
  v99 = v290;
  if (v102 == 1)
  {
    sub_1000114D4(v92, &unk_10029D880, &qword_10021E830);
    sub_1000F9228(v101, type metadata accessor for Bottle);
    goto LABEL_16;
  }

  v113 = v95 + v94;
  v114 = v282;
  sub_1000F89AC(v113, v282, type metadata accessor for Bottle);
  v115 = _s18TrustedPeersHelper6BottleV2eeoiySbAC_ACtFZ_0(v101, v114);
  sub_1000F9228(v114, type metadata accessor for Bottle);
  sub_1000114D4(v92, &unk_10029D880, &qword_10021E830);
  sub_1000F9228(v101, type metadata accessor for Bottle);
  sub_1000114D4(v95, &unk_10029D880, &qword_10021E830);
  v100 = v293;
  if ((v115 & 1) == 0)
  {
LABEL_25:
    v65, v116, v117, v118, v119, v120, v121, v122;
    v87 = v100;
    goto LABEL_26;
  }

LABEL_20:
  v123 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  swift_beginAccess();
  v124 = *&v65->_TtCs12_SwiftObject_opaque[v123];
  v125 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  swift_beginAccess();
  v126 = *&v100->_TtCs12_SwiftObject_opaque[v125];

  v127 = sub_1000516F4(v124, v126);
  v124, v128, v129, v130, v131, v132, v133, v134, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271;
  v126, v135, v136, v137, v138, v139, v140, v141, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271;
  if ((v127 & 1) == 0)
  {
    goto LABEL_25;
  }

  v142 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  swift_beginAccess();
  v143 = *&v65->_TtCs12_SwiftObject_opaque[v142];
  v144 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  swift_beginAccess();
  v145 = *&v100->_TtCs12_SwiftObject_opaque[v144];

  v146 = sub_100051748(v143, v145);
  v143, v147, v148, v149, v150, v151, v152, v153, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271;
  v145, v154, v155, v156, v157, v158, v159, v160, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271;
  if ((v146 & 1) == 0)
  {
    goto LABEL_25;
  }

  v161 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__trustedDevicesVersion;
  swift_beginAccess();
  sub_100019C6C(&v65->_TtCs12_SwiftObject_opaque[v161], v99, &qword_10029D770, &qword_10021E860);
  v162 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__trustedDevicesVersion;
  swift_beginAccess();
  v163 = *(v277 + 48);
  v164 = v280;
  sub_100019C6C(v99, v280, &qword_10029D770, &qword_10021E860);
  sub_100019C6C(&v100->_TtCs12_SwiftObject_opaque[v162], v164 + v163, &qword_10029D770, &qword_10021E860);
  v165 = v279;
  v166 = *(v278 + 48);
  if (v166(v164, 1, v279) == 1)
  {
    sub_1000114D4(v99, &qword_10029D770, &qword_10021E860);
    v167 = v166(v164 + v163, 1, v165);
    v168 = v281;
    if (v167 == 1)
    {
      sub_1000114D4(v164, &qword_10029D770, &qword_10021E860);
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v170 = v276;
  sub_100019C6C(v164, v276, &qword_10029D770, &qword_10021E860);
  v171 = v166(v164 + v163, 1, v165);
  v168 = v281;
  if (v171 == 1)
  {
    sub_1000114D4(v99, &qword_10029D770, &qword_10021E860);
    sub_1000F9228(v170, type metadata accessor for IdmsTrustedDevicesVersion);
LABEL_30:
    v103 = &qword_10029CE08;
    v104 = &qword_100225DA8;
    v105 = v164;
    goto LABEL_17;
  }

  v172 = v164 + v163;
  v173 = v270;
  sub_1000F89AC(v172, v270, type metadata accessor for IdmsTrustedDevicesVersion);
  v174 = _s18TrustedPeersHelper04IdmsA14DevicesVersionV2eeoiySbAC_ACtFZ_0(v170, v173);
  sub_1000F9228(v173, type metadata accessor for IdmsTrustedDevicesVersion);
  sub_1000114D4(v99, &qword_10029D770, &qword_10021E860);
  sub_1000F9228(v170, type metadata accessor for IdmsTrustedDevicesVersion);
  sub_1000114D4(v164, &qword_10029D770, &qword_10021E860);
  if ((v174 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_32:
  v175 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_100019C6C(&v65->_TtCs12_SwiftObject_opaque[v175], v168, &qword_100297FE0, &unk_10021E7F0);
  v176 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  v177 = v168;
  v178 = v293;
  swift_beginAccess();
  v179 = v271[12];
  v180 = v273;
  sub_100019C6C(v177, v273, &qword_100297FE0, &unk_10021E7F0);
  v181 = &v178->_TtCs12_SwiftObject_opaque[v176];
  v182 = v180;
  sub_100019C6C(v181, v180 + v179, &qword_100297FE0, &unk_10021E7F0);
  v183 = *(v272 + 48);
  v184 = v274;
  if (v183(v180, 1, v274) == 1)
  {
    sub_1000114D4(v177, &qword_100297FE0, &unk_10021E7F0);
    v185 = v183(v180 + v179, 1, v184);
    v186 = v275;
    if (v185 == 1)
    {
      sub_1000114D4(v180, &qword_100297FE0, &unk_10021E7F0);
      goto LABEL_45;
    }

    goto LABEL_37;
  }

  v187 = v269;
  sub_100019C6C(v180, v269, &qword_100297FE0, &unk_10021E7F0);
  v188 = v183(v180 + v179, 1, v184);
  v186 = v275;
  if (v188 == 1)
  {
    sub_1000114D4(v281, &qword_100297FE0, &unk_10021E7F0);
    sub_1000F9228(v187, type metadata accessor for Metrics);
LABEL_37:
    v103 = &qword_10029CD78;
    v104 = &qword_100225CE8;
    v105 = v180;
    goto LABEL_17;
  }

  v189 = v265;
  sub_1000F89AC(v182 + v179, v265, type metadata accessor for Metrics);
  if ((*v187 != *v189 || v187[1] != v189[1]) && (sub_1002171A4() & 1) == 0 || (v187[2] != v189[2] || v187[3] != v189[3]) && (sub_1002171A4() & 1) == 0)
  {
    sub_1000114D4(v281, &qword_100297FE0, &unk_10021E7F0);
    sub_1000F9228(v189, type metadata accessor for Metrics);
    sub_1000F9228(v187, type metadata accessor for Metrics);
    v105 = v182;
    v103 = &qword_100297FE0;
    v104 = &unk_10021E7F0;
    goto LABEL_17;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v190 = sub_100216954();
  sub_1000114D4(v281, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F9228(v189, type metadata accessor for Metrics);
  sub_1000F9228(v187, type metadata accessor for Metrics);
  sub_1000114D4(v182, &qword_100297FE0, &unk_10021E7F0);
  if ((v190 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_45:
  v191 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_100019C6C(&v65->_TtCs12_SwiftObject_opaque[v191], v186, &unk_10029D6F0, &qword_100226B40);
  v192 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  v193 = v186;
  v194 = v293;
  swift_beginAccess();
  v195 = v266[12];
  v196 = v262;
  sub_100019C6C(v193, v262, &unk_10029D6F0, &qword_100226B40);
  sub_100019C6C(&v194->_TtCs12_SwiftObject_opaque[v192], &v196[v195], &unk_10029D6F0, &qword_100226B40);
  v197 = v268;
  v198 = *(v267 + 48);
  if (v198(v196, 1, v268) != 1)
  {
    v213 = v264;
    sub_100019C6C(v196, v264, &unk_10029D6F0, &qword_100226B40);
    if (v198(&v196[v195], 1, v197) == 1)
    {
      v65, v214, v215, v216, v217, v218, v219, v220;
      v293, v221, v222, v223, v224, v225, v226, v227;
      sub_1000114D4(v275, &unk_10029D6F0, &qword_100226B40);
      sub_1000F9228(v213, type metadata accessor for AccountInfo);
      goto LABEL_51;
    }

    v231 = &v196[v195];
    v232 = v263;
    sub_1000F89AC(v231, v263, type metadata accessor for AccountInfo);
    if (*v213 != *v232)
    {
      v65, v233, v234, v235, v236, v237, v238, v239;
      v293, v255, v256, v257, v258, v259, v260, v261;
      sub_1000F9228(v232, type metadata accessor for AccountInfo);
      sub_1000114D4(v275, &unk_10029D6F0, &qword_100226B40);
      sub_1000F9228(v213, type metadata accessor for AccountInfo);
      v230 = v196;
      v228 = &unk_10029D6F0;
      v229 = &qword_100226B40;
      goto LABEL_52;
    }

    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v240 = sub_100216954();
    v65, v241, v242, v243, v244, v245, v246, v247;
    v293, v248, v249, v250, v251, v252, v253, v254;
    sub_1000F9228(v232, type metadata accessor for AccountInfo);
    sub_1000114D4(v275, &unk_10029D6F0, &qword_100226B40);
    sub_1000F9228(v213, type metadata accessor for AccountInfo);
    sub_1000114D4(v196, &unk_10029D6F0, &qword_100226B40);
    return (v240 & 1) != 0;
  }

  v65, v199, v200, v201, v202, v203, v204, v205;
  v194, v206, v207, v208, v209, v210, v211, v212;
  sub_1000114D4(v193, &unk_10029D6F0, &qword_100226B40);
  if (v198(&v196[v195], 1, v197) != 1)
  {
LABEL_51:
    v228 = &qword_10029CD70;
    v229 = &qword_100225CE0;
    v230 = v196;
LABEL_52:
    sub_1000114D4(v230, v228, v229);
    return 0;
  }

  sub_1000114D4(v196, &unk_10029D6F0, &qword_100226B40);
  return 1;
}

uint64_t sub_1000C4594(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC98, type metadata accessor for JoinWithVoucherRequest, &protocol conformance descriptor for JoinWithVoucherRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C4638(uint64_t a1)
{
  v2 = sub_1000F9F28(&unk_10029D870, type metadata accessor for JoinWithVoucherRequest, &protocol conformance descriptor for JoinWithVoucherRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C46A4(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&unk_10029D870, type metadata accessor for JoinWithVoucherRequest, &protocol conformance descriptor for JoinWithVoucherRequest);

  return sub_100216644();
}

uint64_t sub_1000C4748()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static JoinWithVoucherResponse._protobuf_nameMap);
  sub_100002648(v0, static JoinWithVoucherResponse._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "changes";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "zone_key_hierarchy_records";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000C498C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  result = sub_100216534();
  if (!v5)
  {
    while ((v12 & 1) == 0)
    {
      if (result == 1)
      {
        a4(a1, v7, a2, a3);
      }

      else if (result == 2)
      {
        sub_100216424();
        sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport, &protocol conformance descriptor for Ckcode_RecordTransport);
        sub_1002165E4();
      }

      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000C4A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for JoinWithVoucherResponse(0);
  type metadata accessor for Changes(0);
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes, &protocol conformance descriptor for Changes);
  return sub_1002165F4();
}

uint64_t sub_1000C4B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    if (*(*v5 + 16))
    {
      sub_100216424();
      sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport, &protocol conformance descriptor for Ckcode_RecordTransport);
      sub_1002166F4();
    }

    a5(0);
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000C4C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Changes(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for JoinWithVoucherResponse(0);
  sub_100019C6C(a1 + *(v14 + 24), v8, &unk_10029D750, &qword_10021E850);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D750, &qword_10021E850);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for Changes);
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes, &protocol conformance descriptor for Changes);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for Changes);
}

uint64_t sub_1000C4EF8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Changes(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1000C4FB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC90, type metadata accessor for JoinWithVoucherResponse, &protocol conformance descriptor for JoinWithVoucherResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C508C(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298D48, type metadata accessor for JoinWithVoucherResponse, &protocol conformance descriptor for JoinWithVoucherResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C50F8(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298D48, type metadata accessor for JoinWithVoucherResponse, &protocol conformance descriptor for JoinWithVoucherResponse);

  return sub_100216644();
}

uint64_t sub_1000C519C()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static UpdateTrustRequest._protobuf_nameMap);
  sub_100002648(v0, static UpdateTrustRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10021DFF0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "change_token";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "peer_id";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "stable_info_and_sig";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "dynamic_info_and_sig";
  *(v13 + 1) = 20;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "tlk_shares";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "view_keys";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "trusted_devices_version";
  *(v19 + 1) = 23;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "metrics";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "accountInfo";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  return sub_100216724();
}

uint64_t UpdateTrustRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100216534();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 4)
      {
        if (result > 2)
        {
          if (result == 3)
          {
            sub_1000C57D4(a1, v5, a2, a3);
          }

          else
          {
            sub_1000C5888(a1, v5, a2, a3);
          }
        }

        else if (result == 1 || result == 2)
        {
          sub_1002165B4();
        }
      }

      else if (result <= 6)
      {
        if (result == 5)
        {
          type metadata accessor for TLKShare(0);
          sub_1000F9F28(&qword_1002987A8, type metadata accessor for TLKShare, &protocol conformance descriptor for TLKShare);
        }

        else
        {
          type metadata accessor for ViewKeys(0);
          sub_1000F9F28(&unk_10029D910, type metadata accessor for ViewKeys, &protocol conformance descriptor for ViewKeys);
        }

        sub_1002165E4();
      }

      else
      {
        switch(result)
        {
          case 7:
            sub_1000C593C(a1, v5, a2, a3);
            break;
          case 8:
            sub_1000D5990(a1, v5, a2, a3, type metadata accessor for UpdateTrustRequest);
            break;
          case 9:
            sub_1000D5A48(a1, v5, a2, a3, type metadata accessor for UpdateTrustRequest);
            break;
        }
      }

      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000C57D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UpdateTrustRequest(0);
  type metadata accessor for SignedPeerStableInfo(0);
  sub_1000F9F28(&qword_100298B60, type metadata accessor for SignedPeerStableInfo, &protocol conformance descriptor for SignedPeerStableInfo);
  return sub_1002165F4();
}

uint64_t sub_1000C5888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UpdateTrustRequest(0);
  type metadata accessor for SignedPeerDynamicInfo(0);
  sub_1000F9F28(&qword_100298B78, type metadata accessor for SignedPeerDynamicInfo, &protocol conformance descriptor for SignedPeerDynamicInfo);
  return sub_1002165F4();
}

uint64_t sub_1000C593C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UpdateTrustRequest(0);
  type metadata accessor for IdmsTrustedDevicesVersion(0);
  sub_1000F9F28(&qword_100298BD0, type metadata accessor for IdmsTrustedDevicesVersion, &protocol conformance descriptor for IdmsTrustedDevicesVersion);
  return sub_1002165F4();
}

uint64_t UpdateTrustRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1002166C4(), !v4))
  {
    v11 = v3[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_1002166C4(), !v4))
    {
      result = sub_1000C5C58(v3, a1, a2, a3);
      if (!v4)
      {
        sub_1000C5E74(v3, a1, a2, a3);
        if (*(v3[4] + 16))
        {
          type metadata accessor for TLKShare(0);
          sub_1000F9F28(&qword_1002987A8, type metadata accessor for TLKShare, &protocol conformance descriptor for TLKShare);
          sub_1002166F4();
        }

        if (*(v3[5] + 16))
        {
          type metadata accessor for ViewKeys(0);
          sub_1000F9F28(&unk_10029D910, type metadata accessor for ViewKeys, &protocol conformance descriptor for ViewKeys);
          sub_1002166F4();
        }

        sub_1000C6090(v3, a1, a2, a3);
        sub_1000D5CDC(v3, a1, a2, a3, type metadata accessor for UpdateTrustRequest, 8);
        sub_1000D5F00(v3, a1, a2, a3, type metadata accessor for UpdateTrustRequest, 9);
        type metadata accessor for UpdateTrustRequest(0);
        return sub_1002164B4();
      }
    }
  }

  return result;
}

uint64_t sub_1000C5C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for SignedPeerStableInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for UpdateTrustRequest(0);
  sub_100019C6C(a1 + *(updated + 36), v8, &qword_1002985A8, &unk_100226650);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_1002985A8, &unk_100226650);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for SignedPeerStableInfo);
  sub_1000F9F28(&qword_100298B60, type metadata accessor for SignedPeerStableInfo, &protocol conformance descriptor for SignedPeerStableInfo);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for SignedPeerStableInfo);
}

uint64_t sub_1000C5E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for SignedPeerDynamicInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for UpdateTrustRequest(0);
  sub_100019C6C(a1 + *(updated + 40), v8, &unk_10029D760, &qword_10021E810);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D760, &qword_10021E810);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for SignedPeerDynamicInfo);
  sub_1000F9F28(&qword_100298B78, type metadata accessor for SignedPeerDynamicInfo, &protocol conformance descriptor for SignedPeerDynamicInfo);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for SignedPeerDynamicInfo);
}

uint64_t sub_1000C6090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for UpdateTrustRequest(0);
  sub_100019C6C(a1 + *(updated + 44), v8, &qword_10029D770, &qword_10021E860);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_10029D770, &qword_10021E860);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for IdmsTrustedDevicesVersion);
  sub_1000F9F28(&qword_100298BD0, type metadata accessor for IdmsTrustedDevicesVersion, &protocol conformance descriptor for IdmsTrustedDevicesVersion);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for IdmsTrustedDevicesVersion);
}

uint64_t sub_1000C62F4@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = _swiftEmptyArrayStorage;
  *(a2 + 5) = _swiftEmptyArrayStorage;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = a1[9];
  v5 = type metadata accessor for SignedPeerStableInfo(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[10];
  v7 = type metadata accessor for SignedPeerDynamicInfo(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[11];
  v9 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  v10 = a1[12];
  v11 = type metadata accessor for Metrics(0);
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  v12 = a1[13];
  v13 = type metadata accessor for AccountInfo(0);
  v14 = *(*(v13 - 8) + 56);

  return v14(&a2[v12], 1, 1, v13);
}

uint64_t sub_1000C64A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000C6518(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000C65E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC88, type metadata accessor for UpdateTrustRequest, &protocol conformance descriptor for UpdateTrustRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C6680(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298D60, type metadata accessor for UpdateTrustRequest, &protocol conformance descriptor for UpdateTrustRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C66EC(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298D60, type metadata accessor for UpdateTrustRequest, &protocol conformance descriptor for UpdateTrustRequest);

  return sub_100216644();
}

uint64_t sub_1000C6790()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static UpdateTrustResponse._protobuf_nameMap);
  sub_100002648(v0, static UpdateTrustResponse._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "changes";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "zone_key_hierarchy_records";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000C69D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UpdateTrustResponse(0);
  type metadata accessor for Changes(0);
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes, &protocol conformance descriptor for Changes);
  return sub_1002165F4();
}

uint64_t sub_1000C6AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Changes(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for UpdateTrustResponse(0);
  sub_100019C6C(a1 + *(updated + 24), v8, &unk_10029D750, &qword_10021E850);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D750, &qword_10021E850);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for Changes);
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes, &protocol conformance descriptor for Changes);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for Changes);
}

uint64_t sub_1000C6D5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC80, type metadata accessor for UpdateTrustResponse, &protocol conformance descriptor for UpdateTrustResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C6E34(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298D78, type metadata accessor for UpdateTrustResponse, &protocol conformance descriptor for UpdateTrustResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C6EA0(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298D78, type metadata accessor for UpdateTrustResponse, &protocol conformance descriptor for UpdateTrustResponse);

  return sub_100216644();
}

uint64_t sub_1000C6F44()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static SetRecoveryKeyRequest._protobuf_nameMap);
  sub_100002648(v0, static SetRecoveryKeyRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10021DFF0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "change_token";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "peer_id";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "recovery_signing_pub_key";
  *(v11 + 1) = 24;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "recovery_encryption_pub_key";
  *(v13 + 1) = 27;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "stable_info_and_sig";
  *(v15 + 1) = 19;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "tlk_shares";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "metrics";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "accountInfo";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "view_keys";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  return sub_100216724();
}

uint64_t SetRecoveryKeyRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100216534();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2)
        {
          sub_100216574();
        }

        else if (result == 1 || result == 2)
        {
          sub_1002165B4();
        }
      }

      else if (result <= 6)
      {
        if (result != 5)
        {
          v11 = v4;
          type metadata accessor for TLKShare(0);
          sub_1000F9F28(&qword_1002987A8, type metadata accessor for TLKShare, &protocol conformance descriptor for TLKShare);
LABEL_20:
          v4 = v11;
          sub_1002165E4();
          goto LABEL_5;
        }

        sub_1000C7558(a1, v5, a2, a3);
      }

      else
      {
        if (result == 7)
        {
          sub_1000D5990(a1, v5, a2, a3, type metadata accessor for SetRecoveryKeyRequest);
          goto LABEL_5;
        }

        if (result != 8)
        {
          if (result != 9)
          {
            goto LABEL_5;
          }

          v11 = v4;
          type metadata accessor for ViewKeys(0);
          sub_1000F9F28(&unk_10029D910, type metadata accessor for ViewKeys, &protocol conformance descriptor for ViewKeys);
          goto LABEL_20;
        }

        sub_1000D5A48(a1, v5, a2, a3, type metadata accessor for SetRecoveryKeyRequest);
      }

LABEL_5:
      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000C7558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SetRecoveryKeyRequest(0);
  type metadata accessor for SignedPeerStableInfo(0);
  sub_1000F9F28(&qword_100298B60, type metadata accessor for SignedPeerStableInfo, &protocol conformance descriptor for SignedPeerStableInfo);
  return sub_1002165F4();
}

uint64_t SetRecoveryKeyRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1002166C4(), !v4))
  {
    v11 = v3[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_1002166C4(), !v4))
    {
      v13 = v3[4];
      v14 = v3[5];
      v15 = v14 >> 62;
      if ((v14 >> 62) > 1)
      {
        if (v15 != 2)
        {
          goto LABEL_18;
        }

        v16 = *(v13 + 16);
        v17 = *(v13 + 24);
      }

      else
      {
        if (!v15)
        {
          if ((v14 & 0xFF000000000000) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        v16 = v13;
        v17 = v13 >> 32;
      }

      if (v16 == v17)
      {
        goto LABEL_18;
      }

LABEL_17:
      result = sub_100216684();
      if (v4)
      {
        return result;
      }

LABEL_18:
      v18 = v3[6];
      v19 = v3[7];
      v20 = v19 >> 62;
      if ((v19 >> 62) > 1)
      {
        if (v20 != 2)
        {
          goto LABEL_27;
        }

        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
      }

      else
      {
        if (!v20)
        {
          if ((v19 & 0xFF000000000000) == 0)
          {
LABEL_27:
            result = sub_1000C78F4(v3, a1, a2, a3);
            if (!v4)
            {
              if (*(v3[8] + 16))
              {
                type metadata accessor for TLKShare(0);
                sub_1000F9F28(&qword_1002987A8, type metadata accessor for TLKShare, &protocol conformance descriptor for TLKShare);
                sub_1002166F4();
              }

              sub_1000D5CDC(v3, a1, a2, a3, type metadata accessor for SetRecoveryKeyRequest, 7);
              sub_1000D5F00(v3, a1, a2, a3, type metadata accessor for SetRecoveryKeyRequest, 8);
              if (*(v3[9] + 16))
              {
                type metadata accessor for ViewKeys(0);
                sub_1000F9F28(&unk_10029D910, type metadata accessor for ViewKeys, &protocol conformance descriptor for ViewKeys);
                sub_1002166F4();
              }

              type metadata accessor for SetRecoveryKeyRequest(0);
              return sub_1002164B4();
            }

            return result;
          }

LABEL_26:
          result = sub_100216684();
          if (v4)
          {
            return result;
          }

          goto LABEL_27;
        }

        v21 = v18;
        v22 = v18 >> 32;
      }

      if (v21 == v22)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1000C78F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for SignedPeerStableInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SetRecoveryKeyRequest(0);
  sub_100019C6C(a1 + *(v14 + 44), v8, &qword_1002985A8, &unk_100226650);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_1002985A8, &unk_100226650);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for SignedPeerStableInfo);
  sub_1000F9F28(&qword_100298B60, type metadata accessor for SignedPeerStableInfo, &protocol conformance descriptor for SignedPeerStableInfo);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for SignedPeerStableInfo);
}

uint64_t sub_1000C7B58@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = xmmword_10021D470;
  *(a2 + 48) = xmmword_10021D470;
  *(a2 + 64) = _swiftEmptyArrayStorage;
  *(a2 + 72) = _swiftEmptyArrayStorage;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = a1[11];
  v5 = type metadata accessor for SignedPeerStableInfo(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[12];
  v7 = type metadata accessor for Metrics(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[13];
  v9 = type metadata accessor for AccountInfo(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t sub_1000C7C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000C7D00(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_1002164D4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000C7DA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC78, type metadata accessor for SetRecoveryKeyRequest, &protocol conformance descriptor for SetRecoveryKeyRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C7E44(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298D90, type metadata accessor for SetRecoveryKeyRequest, &protocol conformance descriptor for SetRecoveryKeyRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C7EB0(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298D90, type metadata accessor for SetRecoveryKeyRequest, &protocol conformance descriptor for SetRecoveryKeyRequest);

  return sub_100216644();
}

uint64_t sub_1000C7F54()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static SetRecoveryKeyResponse._protobuf_nameMap);
  sub_100002648(v0, static SetRecoveryKeyResponse._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "changes";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "zone_key_hierarchy_records";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000C8198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SetRecoveryKeyResponse(0);
  type metadata accessor for Changes(0);
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes, &protocol conformance descriptor for Changes);
  return sub_1002165F4();
}

uint64_t sub_1000C828C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Changes(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SetRecoveryKeyResponse(0);
  sub_100019C6C(a1 + *(v14 + 24), v8, &unk_10029D750, &qword_10021E850);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D750, &qword_10021E850);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for Changes);
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes, &protocol conformance descriptor for Changes);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for Changes);
}

uint64_t sub_1000C8520(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC70, type metadata accessor for SetRecoveryKeyResponse, &protocol conformance descriptor for SetRecoveryKeyResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C85F8(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298DA8, type metadata accessor for SetRecoveryKeyResponse, &protocol conformance descriptor for SetRecoveryKeyResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C8664(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298DA8, type metadata accessor for SetRecoveryKeyResponse, &protocol conformance descriptor for SetRecoveryKeyResponse);

  return sub_100216644();
}

uint64_t sub_1000C8708()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static RemoveRecoveryKeyRequest._protobuf_nameMap);
  sub_100002648(v0, static RemoveRecoveryKeyRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DFA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "change_token";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "peer_id";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "stable_info_and_sig";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "dynamic_info_and_sig";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "metrics";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "accountInfo";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t RemoveRecoveryKeyRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_100216534();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_1000C8BF0(a1, v5, a2, a3);
          break;
        case 5:
          sub_1000C8CA4(a1, v5, a2, a3);
          break;
        case 6:
          sub_1000C8D58(a1, v5, a2, a3);
          break;
      }
    }

    else if (result == 1 || result == 2)
    {
      sub_1002165B4();
    }

    else if (result == 3)
    {
      sub_1000C8B3C(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1000C8B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RemoveRecoveryKeyRequest(0);
  type metadata accessor for SignedPeerStableInfo(0);
  sub_1000F9F28(&qword_100298B60, type metadata accessor for SignedPeerStableInfo, &protocol conformance descriptor for SignedPeerStableInfo);
  return sub_1002165F4();
}

uint64_t sub_1000C8BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RemoveRecoveryKeyRequest(0);
  type metadata accessor for SignedPeerDynamicInfo(0);
  sub_1000F9F28(&qword_100298B78, type metadata accessor for SignedPeerDynamicInfo, &protocol conformance descriptor for SignedPeerDynamicInfo);
  return sub_1002165F4();
}

uint64_t sub_1000C8CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RemoveRecoveryKeyRequest(0);
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  return sub_1002165F4();
}

uint64_t sub_1000C8D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RemoveRecoveryKeyRequest(0);
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  return sub_1002165F4();
}

uint64_t RemoveRecoveryKeyRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1002166C4(), !v4))
  {
    v11 = v3[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_1002166C4(), !v4))
    {
      result = sub_1000C8F30(v3, a1, a2, a3);
      if (!v4)
      {
        sub_1000C914C(v3, a1, a2, a3);
        sub_1000C9368(v3, a1, a2, a3);
        sub_1000C9584(v3, a1, a2, a3);
        type metadata accessor for RemoveRecoveryKeyRequest(0);
        return sub_1002164B4();
      }
    }
  }

  return result;
}

uint64_t sub_1000C8F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for SignedPeerStableInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  sub_100019C6C(a1 + *(v14 + 28), v8, &qword_1002985A8, &unk_100226650);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_1002985A8, &unk_100226650);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for SignedPeerStableInfo);
  sub_1000F9F28(&qword_100298B60, type metadata accessor for SignedPeerStableInfo, &protocol conformance descriptor for SignedPeerStableInfo);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for SignedPeerStableInfo);
}

uint64_t sub_1000C914C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for SignedPeerDynamicInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  sub_100019C6C(a1 + *(v14 + 32), v8, &unk_10029D760, &qword_10021E810);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D760, &qword_10021E810);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for SignedPeerDynamicInfo);
  sub_1000F9F28(&qword_100298B78, type metadata accessor for SignedPeerDynamicInfo, &protocol conformance descriptor for SignedPeerDynamicInfo);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for SignedPeerDynamicInfo);
}

uint64_t sub_1000C9368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Metrics(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  sub_100019C6C(a1 + *(v14 + 36), v8, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for Metrics);
}

uint64_t sub_1000C9584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for AccountInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  sub_100019C6C(a1 + *(v14 + 40), v8, &unk_10029D6F0, &qword_100226B40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for AccountInfo);
}

uint64_t sub_1000C97EC@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = a1[7];
  v5 = type metadata accessor for SignedPeerStableInfo(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[8];
  v7 = type metadata accessor for SignedPeerDynamicInfo(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[9];
  v9 = type metadata accessor for Metrics(0);
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  v10 = a1[10];
  v11 = type metadata accessor for AccountInfo(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(&a2[v10], 1, 1, v11);
}

uint64_t sub_1000C997C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC68, type metadata accessor for RemoveRecoveryKeyRequest, &protocol conformance descriptor for RemoveRecoveryKeyRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C9A1C(uint64_t a1)
{
  v2 = sub_1000F9F28(&unk_10029D9E0, type metadata accessor for RemoveRecoveryKeyRequest, &protocol conformance descriptor for RemoveRecoveryKeyRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C9A88(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&unk_10029D9E0, type metadata accessor for RemoveRecoveryKeyRequest, &protocol conformance descriptor for RemoveRecoveryKeyRequest);

  return sub_100216644();
}

uint64_t sub_1000C9BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RemoveRecoveryKeyResponse(0);
  type metadata accessor for Changes(0);
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes, &protocol conformance descriptor for Changes);
  return sub_1002165F4();
}

uint64_t sub_1000C9C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = sub_1000CFF94(v4, a1, a2, a3, a4);
  if (!v5)
  {
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000C9D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Changes(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1000C9E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC60, type metadata accessor for RemoveRecoveryKeyResponse, &protocol conformance descriptor for RemoveRecoveryKeyResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C9EB4(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298DD0, type metadata accessor for RemoveRecoveryKeyResponse, &protocol conformance descriptor for RemoveRecoveryKeyResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C9F20(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298DD0, type metadata accessor for RemoveRecoveryKeyResponse, &protocol conformance descriptor for RemoveRecoveryKeyResponse);

  return sub_100216644();
}

uint64_t sub_1000C9FC4()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static PerformATOPRVActionsRequest._protobuf_nameMap);
  sub_100002648(v0, static PerformATOPRVActionsRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "metrics";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "accountInfo";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000CA214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PerformATOPRVActionsRequest(0);
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  return sub_1002165F4();
}

uint64_t sub_1000CA2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PerformATOPRVActionsRequest(0);
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  return sub_1002165F4();
}

uint64_t PerformATOPRVActionsRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CA3EC(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1000CA608(v3, a1, a2, a3);
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000CA3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Metrics(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PerformATOPRVActionsRequest(0);
  sub_100019C6C(a1 + *(v14 + 20), v8, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for Metrics);
}

uint64_t sub_1000CA608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for AccountInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PerformATOPRVActionsRequest(0);
  sub_100019C6C(a1 + *(v14 + 24), v8, &unk_10029D6F0, &qword_100226B40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for AccountInfo);
}

uint64_t sub_1000CA8CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC58, type metadata accessor for PerformATOPRVActionsRequest, &protocol conformance descriptor for PerformATOPRVActionsRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CA96C(uint64_t a1)
{
  v2 = sub_1000F9F28(&unk_10029D9D0, type metadata accessor for PerformATOPRVActionsRequest, &protocol conformance descriptor for PerformATOPRVActionsRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CA9D8(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&unk_10029D9D0, type metadata accessor for PerformATOPRVActionsRequest, &protocol conformance descriptor for PerformATOPRVActionsRequest);

  return sub_100216644();
}

uint64_t PerformATOPRVActionsResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_100216534();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t sub_1000CAB74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC50, type metadata accessor for PerformATOPRVActionsResponse, &protocol conformance descriptor for PerformATOPRVActionsResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CAC14(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298DF8, type metadata accessor for PerformATOPRVActionsResponse, &protocol conformance descriptor for PerformATOPRVActionsResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CAC80(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298DF8, type metadata accessor for PerformATOPRVActionsResponse, &protocol conformance descriptor for PerformATOPRVActionsResponse);

  return sub_100216644();
}

uint64_t sub_1000CAD24()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static AddCustodianRecoveryKeyRequest._protobuf_nameMap);
  sub_100002648(v0, static AddCustodianRecoveryKeyRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10021DFF0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "change_token";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "peer_id";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "peer";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "stable_info_and_sig";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "tlk_shares";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "dynamic_info_and_sig";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "metrics";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "accountInfo";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "view_keys";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  return sub_100216724();
}

uint64_t sub_1000CB108()
{
  type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 2) = 0;
  *(v0 + 3) = 0xE000000000000000;
  *(v0 + 4) = 0;
  *(v0 + 5) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  v2 = type metadata accessor for Peer(0);
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v3 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__stableInfoAndSig;
  v4 = type metadata accessor for SignedPeerStableInfo(0);
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  *&v0[OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares] = _swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__dynamicInfoAndSig;
  v6 = type metadata accessor for SignedPeerDynamicInfo(0);
  (*(*(v6 - 8) + 56))(&v0[v5], 1, 1, v6);
  v7 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  v8 = type metadata accessor for Metrics(0);
  (*(*(v8 - 8) + 56))(&v0[v7], 1, 1, v8);
  v9 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  v10 = type metadata accessor for AccountInfo(0);
  result = (*(*(v10 - 8) + 56))(&v0[v9], 1, 1, v10);
  *&v0[OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys] = _swiftEmptyArrayStorage;
  qword_100298558 = v0;
  return result;
}

char *sub_1000CB2E0(_TtC18TrustedPeersHelper6Client *a1)
{
  v3 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v3 - 8, v4);
  v85 = &v76 - v5;
  v6 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v6 - 8, v7);
  v84 = &v76 - v8;
  v9 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  __chkstk_darwin(v9 - 8, v10);
  v83 = &v76 - v11;
  v12 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  __chkstk_darwin(v12 - 8, v13);
  v80 = &v76 - v14;
  v15 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  __chkstk_darwin(v15 - 8, v16);
  v18 = &v76 - v17;
  *(v1 + 2) = 0;
  *(v1 + 3) = 0xE000000000000000;
  *(v1 + 4) = 0;
  *(v1 + 5) = 0xE000000000000000;
  v19 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  v20 = type metadata accessor for Peer(0);
  (*(*(v20 - 8) + 56))(&v1[v19], 1, 1, v20);
  v21 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__stableInfoAndSig;
  v77 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__stableInfoAndSig;
  v22 = type metadata accessor for SignedPeerStableInfo(0);
  (*(*(v22 - 8) + 56))(&v1[v21], 1, 1, v22);
  v23 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  *&v1[OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares] = _swiftEmptyArrayStorage;
  v24 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__dynamicInfoAndSig;
  v78 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__dynamicInfoAndSig;
  v25 = type metadata accessor for SignedPeerDynamicInfo(0);
  (*(*(v25 - 8) + 56))(&v1[v24], 1, 1, v25);
  v26 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  v79 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  v27 = type metadata accessor for Metrics(0);
  (*(*(v27 - 8) + 56))(&v1[v26], 1, 1, v27);
  v28 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  v81 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  v29 = type metadata accessor for AccountInfo(0);
  (*(*(v29 - 8) + 56))(&v1[v28], 1, 1, v29);
  v82 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  *&v1[OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys] = _swiftEmptyArrayStorage;
  swift_beginAccess();
  v30 = *a1->endpoint;
  v31 = *a1->containerMap;
  swift_beginAccess();
  *(v1 + 2) = v30;
  *(v1 + 3) = v31;
  swift_beginAccess();
  v32 = *a1[1]._TtCs12_SwiftObject_opaque;
  v33 = *&a1[1]._TtCs12_SwiftObject_opaque[8];
  swift_beginAccess();
  *(v1 + 4) = v32;
  *(v1 + 5) = v33;
  v34 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;

  swift_beginAccess();
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v34], v18, &unk_10029D7A0, &qword_10021E858);
  swift_beginAccess();
  sub_1000F9E80(v18, &v1[v19], &unk_10029D7A0, &qword_10021E858);
  swift_endAccess();
  v35 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__stableInfoAndSig;
  swift_beginAccess();
  v36 = v80;
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v35], v80, &qword_1002985A8, &unk_100226650);
  v37 = v77;
  swift_beginAccess();
  sub_1000F9E80(v36, v37 + v1, &qword_1002985A8, &unk_100226650);
  swift_endAccess();
  v38 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  swift_beginAccess();
  v39 = *&a1->_TtCs12_SwiftObject_opaque[v38];
  swift_beginAccess();
  v40 = *&v1[v23];
  *&v1[v23] = v39;

  v40, v41, v42, v43, v44, v45, v46, v47, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85;
  v48 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__dynamicInfoAndSig;
  swift_beginAccess();
  v49 = v83;
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v48], v83, &unk_10029D760, &qword_10021E810);
  v50 = v78;
  swift_beginAccess();
  sub_1000F9E80(v49, v50 + v1, &unk_10029D760, &qword_10021E810);
  swift_endAccess();
  v51 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  v52 = v84;
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v51], v84, &qword_100297FE0, &unk_10021E7F0);
  v53 = v79;
  swift_beginAccess();
  sub_1000F9E80(v52, v53 + v1, &qword_100297FE0, &unk_10021E7F0);
  swift_endAccess();
  v54 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  v55 = v85;
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v54], v85, &unk_10029D6F0, &qword_100226B40);
  v56 = v81;
  swift_beginAccess();
  sub_1000F9E80(v55, &v1[v56], &unk_10029D6F0, &qword_100226B40);
  swift_endAccess();
  v57 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  swift_beginAccess();
  v58 = *&a1->_TtCs12_SwiftObject_opaque[v57];

  a1, v59, v60, v61, v62, v63, v64, v65;
  v66 = v82;
  swift_beginAccess();
  v67 = *&v66[v1];
  *&v66[v1] = v58;
  v67, v68, v69, v70, v71, v72, v73, v74, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85;
  return v1;
}

uint64_t sub_1000CBB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_100216534();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 4)
      {
        if (result > 2)
        {
          if (result == 3)
          {
            sub_1000CBDA4(a2, a1, a3, a4);
          }

          else
          {
            sub_1000CBE80(a2, a1, a3, a4);
          }
        }

        else if (result == 1)
        {
          sub_1000E1030(a2, a1, a3, a4, &dispatch thunk of Decoder.decodeSingularStringField(value:));
        }

        else if (result == 2)
        {
          sub_1000CBD20(a2, a1, a3, a4);
        }
      }

      else if (result <= 6)
      {
        if (result == 5)
        {
          sub_1000CBF5C(a2, a1, a3, a4);
        }

        else
        {
          sub_1000CC038(a2, a1, a3, a4);
        }
      }

      else
      {
        switch(result)
        {
          case 7:
            sub_1000CC114(a2, a1, a3, a4);
            break;
          case 8:
            sub_1000CC1F0(a2, a1, a3, a4);
            break;
          case 9:
            sub_1000CC2CC(a2, a1, a3, a4, &OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys);
            break;
        }
      }

      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000CBD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1002165B4();
  return swift_endAccess();
}

uint64_t sub_1000CBDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Peer(0);
  sub_1000F9F28(&qword_100298BE8, type metadata accessor for Peer, &protocol conformance descriptor for Peer);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000CBE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for SignedPeerStableInfo(0);
  sub_1000F9F28(&qword_100298B60, type metadata accessor for SignedPeerStableInfo, &protocol conformance descriptor for SignedPeerStableInfo);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000CBF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for TLKShare(0);
  sub_1000F9F28(&qword_1002987A8, type metadata accessor for TLKShare, &protocol conformance descriptor for TLKShare);
  sub_1002165E4();
  return swift_endAccess();
}

uint64_t sub_1000CC038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for SignedPeerDynamicInfo(0);
  sub_1000F9F28(&qword_100298B78, type metadata accessor for SignedPeerDynamicInfo, &protocol conformance descriptor for SignedPeerDynamicInfo);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000CC114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000CC1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  sub_1002165F4();
  return swift_endAccess();
}

uint64_t sub_1000CC2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  type metadata accessor for ViewKeys(0);
  sub_1000F9F28(&unk_10029D910, type metadata accessor for ViewKeys, &protocol conformance descriptor for ViewKeys);
  sub_1002165E4();
  return swift_endAccess();
}

void sub_1000CC3E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = a1[3];
  v11 = (v10 >> 56) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {

    sub_1002166C4();
    v10, v12, v13, v14, v15, v16, v17, v18, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56;
    if (v4)
    {
      return;
    }

    v5 = 0;
  }

  swift_beginAccess();
  v19 = a1[5];
  v20 = (v19 >> 56) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = a1[4] & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {

    v21 = v5;
    sub_1002166C4();
    v19, v22, v23, v24, v25, v26, v27, v28, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56;
    if (v5)
    {
      return;
    }
  }

  else
  {
    v21 = v5;
  }

  sub_1000CC6E0(a1, a2, a3, a4);
  if (!v21)
  {
    sub_1000CC908(a1, a2, a3, a4);
    v29 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
    swift_beginAccess();
    v30 = *(a1 + v29);
    if (*v30->endpoint)
    {
      type metadata accessor for TLKShare(0);
      sub_1000F9F28(&qword_1002987A8, type metadata accessor for TLKShare, &protocol conformance descriptor for TLKShare);

      sub_1002166F4();
      v30, v31, v32, v33, v34, v35, v36, v37, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56;
    }

    sub_1000CCB30(a1, a2, a3, a4);
    sub_1000CCD58(a1, a2, a3, a4);
    sub_1000CCF80(a1, a2, a3, a4);
    v38 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
    swift_beginAccess();
    v39 = *(a1 + v38);
    if (*v39->endpoint)
    {
      type metadata accessor for ViewKeys(0);
      sub_1000F9F28(&unk_10029D910, type metadata accessor for ViewKeys, &protocol conformance descriptor for ViewKeys);

      sub_1002166F4();
      v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56;
    }
  }
}

uint64_t sub_1000CC6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Peer(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_100019C6C(a1 + v14, v8, &unk_10029D7A0, &qword_10021E858);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D7A0, &qword_10021E858);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for Peer);
  sub_1000F9F28(&qword_100298BE8, type metadata accessor for Peer, &protocol conformance descriptor for Peer);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for Peer);
}

uint64_t sub_1000CC908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for SignedPeerStableInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__stableInfoAndSig;
  swift_beginAccess();
  sub_100019C6C(a1 + v14, v8, &qword_1002985A8, &unk_100226650);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_1002985A8, &unk_100226650);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for SignedPeerStableInfo);
  sub_1000F9F28(&qword_100298B60, type metadata accessor for SignedPeerStableInfo, &protocol conformance descriptor for SignedPeerStableInfo);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for SignedPeerStableInfo);
}

uint64_t sub_1000CCB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for SignedPeerDynamicInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__dynamicInfoAndSig;
  swift_beginAccess();
  sub_100019C6C(a1 + v14, v8, &unk_10029D760, &qword_10021E810);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D760, &qword_10021E810);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for SignedPeerDynamicInfo);
  sub_1000F9F28(&qword_100298B78, type metadata accessor for SignedPeerDynamicInfo, &protocol conformance descriptor for SignedPeerDynamicInfo);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for SignedPeerDynamicInfo);
}

uint64_t sub_1000CCD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Metrics(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_100019C6C(a1 + v14, v8, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for Metrics);
}

uint64_t sub_1000CCF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for AccountInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  sub_100019C6C(a1 + v14, v8, &unk_10029D6F0, &qword_100226B40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for AccountInfo);
}

uint64_t sub_1000CD1EC(_TtC18TrustedPeersHelper6Client *a1, void *a2)
{
  v4 = type metadata accessor for AccountInfo(0);
  v210 = *(v4 - 1);
  v211 = v4;
  __chkstk_darwin(v4, v5);
  v206 = &v204 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  __chkstk_darwin(v209, v7);
  v9 = &v204 - v8;
  v10 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v12 = __chkstk_darwin(v10 - 8, v11);
  v207 = &v204 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v14);
  v212 = &v204 - v15;
  v218 = type metadata accessor for Metrics(0);
  v216 = *(v218 - 8);
  __chkstk_darwin(v218, v16);
  v208 = &v204 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  __chkstk_darwin(v215, v18);
  v217 = &v204 - v19;
  v20 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v22 = __chkstk_darwin(v20 - 8, v21);
  v213 = &v204 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v24);
  v232 = &v204 - v25;
  v223 = type metadata accessor for SignedPeerDynamicInfo(0);
  v221 = *(v223 - 8);
  __chkstk_darwin(v223, v26);
  v214 = &v204 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_10001148C(&qword_10029CDC0, &qword_100225D50);
  __chkstk_darwin(v220, v28);
  v222 = &v204 - v29;
  v30 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  v32 = __chkstk_darwin(v30 - 8, v31);
  v219 = &v204 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32, v34);
  v224 = &v204 - v35;
  v36 = type metadata accessor for SignedPeerStableInfo(0);
  v229 = *(v36 - 8);
  v230 = v36;
  __chkstk_darwin(v36, v37);
  v225 = &v204 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_10001148C(&qword_10029CDC8, &qword_100225D58);
  __chkstk_darwin(v228, v39);
  v231 = &v204 - v40;
  v41 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  v43 = __chkstk_darwin(v41 - 8, v42);
  v226 = &v204 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43, v45);
  v235 = &v204 - v46;
  v236 = type metadata accessor for Peer(0);
  v47 = *(v236 - 8);
  __chkstk_darwin(v236, v48);
  v227 = (&v204 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = sub_10001148C(&qword_10029CDD0, &qword_100225D60);
  __chkstk_darwin(v50, v51);
  v53 = &v204 - v52;
  v54 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  v56 = __chkstk_darwin(v54 - 8, v55);
  v234 = (&v204 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v56, v58);
  v60 = &v204 - v59;
  swift_beginAccess();
  v62 = *a1->endpoint;
  v61 = *a1->containerMap;
  swift_beginAccess();
  if (__PAIR128__(v61, v62) != *(a2 + 1) && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_63;
  }

  swift_beginAccess();
  v63 = *a1[1]._TtCs12_SwiftObject_opaque;
  v64 = *&a1[1]._TtCs12_SwiftObject_opaque[8];
  swift_beginAccess();
  if ((v63 != a2[4] || v64 != a2[5]) && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_63;
  }

  v205 = v9;
  v233 = a2;
  v65 = a1;
  v66 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_100019C6C(&a1->_TtCs12_SwiftObject_opaque[v66], v60, &unk_10029D7A0, &qword_10021E858);
  v67 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  v68 = v233;
  swift_beginAccess();
  v69 = *(v50 + 48);
  sub_100019C6C(v60, v53, &unk_10029D7A0, &qword_10021E858);
  sub_100019C6C(&v68->_TtCs12_SwiftObject_opaque[v67], &v53[v69], &unk_10029D7A0, &qword_10021E858);
  v70 = *(v47 + 48);
  v71 = v236;
  if (v70(v53, 1, v236) == 1)
  {

    sub_1000114D4(v60, &unk_10029D7A0, &qword_10021E858);
    if (v70(&v53[v69], 1, v71) == 1)
    {
      sub_1000114D4(v53, &unk_10029D7A0, &qword_10021E858);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v72 = v234;
  sub_100019C6C(v53, v234, &unk_10029D7A0, &qword_10021E858);
  if (v70(&v53[v69], 1, v71) == 1)
  {

    sub_1000114D4(v60, &unk_10029D7A0, &qword_10021E858);
    sub_1000F9228(v72, type metadata accessor for Peer);
LABEL_11:
    sub_1000114D4(v53, &qword_10029CDD0, &qword_100225D60);
LABEL_12:
    v80 = v65;
LABEL_62:
    v80, v73, v74, v75, v76, v77, v78, v79;
    v68, v193, v194, v195, v196, v197, v198, v199;
LABEL_63:
    v163 = 0;
    return v163 & 1;
  }

  v81 = v227;
  sub_1000F89AC(&v53[v69], v227, type metadata accessor for Peer);

  v82 = _s18TrustedPeersHelper4PeerV2eeoiySbAC_ACtFZ_0(v72, v81);
  sub_1000F9228(v81, type metadata accessor for Peer);
  sub_1000114D4(v60, &unk_10029D7A0, &qword_10021E858);
  sub_1000F9228(v72, type metadata accessor for Peer);
  v68 = v233;
  sub_1000114D4(v53, &unk_10029D7A0, &qword_10021E858);
  if ((v82 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_14:
  v83 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__stableInfoAndSig;
  swift_beginAccess();
  v236 = v65;
  v84 = &v65->_TtCs12_SwiftObject_opaque[v83];
  v85 = v235;
  sub_100019C6C(v84, v235, &qword_1002985A8, &unk_100226650);
  v86 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__stableInfoAndSig;
  swift_beginAccess();
  v87 = *(v228 + 48);
  v88 = v231;
  sub_100019C6C(v85, v231, &qword_1002985A8, &unk_100226650);
  v89 = &v68->_TtCs12_SwiftObject_opaque[v86];
  v90 = v88;
  sub_100019C6C(v89, v88 + v87, &qword_1002985A8, &unk_100226650);
  v91 = v230;
  v92 = *(v229 + 48);
  if (v92(v88, 1, v230) == 1)
  {
    sub_1000114D4(v85, &qword_1002985A8, &unk_100226650);
    v93 = v92(v88 + v87, 1, v91);
    v94 = v232;
    if (v93 == 1)
    {
      sub_1000114D4(v88, &qword_1002985A8, &unk_100226650);
      goto LABEL_17;
    }

LABEL_26:
    v132 = &qword_10029CDC8;
    v133 = &qword_100225D58;
    v134 = v88;
LABEL_60:
    sub_1000114D4(v134, v132, v133);
    goto LABEL_61;
  }

  v130 = v226;
  sub_100019C6C(v88, v226, &qword_1002985A8, &unk_100226650);
  v131 = v92(v88 + v87, 1, v91);
  v94 = v232;
  if (v131 == 1)
  {
    sub_1000114D4(v235, &qword_1002985A8, &unk_100226650);
    sub_1000F9228(v130, type metadata accessor for SignedPeerStableInfo);
    goto LABEL_26;
  }

  v135 = v225;
  sub_1000F89AC(v90 + v87, v225, type metadata accessor for SignedPeerStableInfo);
  if (!sub_100052F18(*v130, *(v130 + 8), *v135, *(v135 + 8)) || !sub_100052F18(*(v130 + 16), *(v130 + 24), *(v135 + 16), *(v135 + 24)))
  {
    v137 = &qword_1002985A8;
    v138 = v130;
    v139 = &unk_100226650;
    sub_1000114D4(v235, &qword_1002985A8, &unk_100226650);
    sub_1000F9228(v135, type metadata accessor for SignedPeerStableInfo);
    sub_1000F9228(v138, type metadata accessor for SignedPeerStableInfo);
    v134 = v90;
LABEL_32:
    v132 = v137;
    v133 = v139;
    goto LABEL_60;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v136 = sub_100216954();
  sub_1000114D4(v235, &qword_1002985A8, &unk_100226650);
  sub_1000F9228(v135, type metadata accessor for SignedPeerStableInfo);
  sub_1000F9228(v130, type metadata accessor for SignedPeerStableInfo);
  sub_1000114D4(v90, &qword_1002985A8, &unk_100226650);
  if ((v136 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_17:
  v95 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  v96 = v236;
  swift_beginAccess();
  v97 = *&v96->_TtCs12_SwiftObject_opaque[v95];
  v98 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  swift_beginAccess();
  v99 = *&v68->_TtCs12_SwiftObject_opaque[v98];

  v100 = sub_1000516F4(v97, v99);
  v97, v101, v102, v103, v104, v105, v106, v107, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213;
  v99, v108, v109, v110, v111, v112, v113, v114, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213;
  if ((v100 & 1) == 0)
  {
    v80 = v96;
    goto LABEL_62;
  }

  v115 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__dynamicInfoAndSig;
  swift_beginAccess();
  v116 = v224;
  sub_100019C6C(&v96->_TtCs12_SwiftObject_opaque[v115], v224, &unk_10029D760, &qword_10021E810);
  v117 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__dynamicInfoAndSig;
  swift_beginAccess();
  v118 = *(v220 + 48);
  v119 = v222;
  sub_100019C6C(v116, v222, &unk_10029D760, &qword_10021E810);
  sub_100019C6C(&v68->_TtCs12_SwiftObject_opaque[v117], v119 + v118, &unk_10029D760, &qword_10021E810);
  v120 = *(v221 + 48);
  v121 = v223;
  if (v120(v119, 1, v223) == 1)
  {
    sub_1000114D4(v116, &unk_10029D760, &qword_10021E810);
    if (v120(v119 + v118, 1, v121) == 1)
    {
      sub_1000114D4(v119, &unk_10029D760, &qword_10021E810);
      goto LABEL_21;
    }

LABEL_36:
    v132 = &qword_10029CDC0;
    v133 = &qword_100225D50;
    v134 = v119;
    goto LABEL_60;
  }

  v140 = v219;
  sub_100019C6C(v119, v219, &unk_10029D760, &qword_10021E810);
  if (v120(v119 + v118, 1, v121) == 1)
  {
    sub_1000114D4(v224, &unk_10029D760, &qword_10021E810);
    sub_1000F9228(v140, type metadata accessor for SignedPeerDynamicInfo);
    goto LABEL_36;
  }

  v141 = v214;
  sub_1000F89AC(v119 + v118, v214, type metadata accessor for SignedPeerDynamicInfo);
  if (!sub_100052F18(*v140, *(v140 + 8), *v141, *(v141 + 8)) || !sub_100052F18(*(v140 + 16), *(v140 + 24), *(v141 + 16), *(v141 + 24)))
  {
    v137 = &unk_10029D760;
    v143 = v140;
    v139 = &qword_10021E810;
    sub_1000114D4(v224, &unk_10029D760, &qword_10021E810);
    v144 = type metadata accessor for SignedPeerDynamicInfo;
    sub_1000F9228(v141, type metadata accessor for SignedPeerDynamicInfo);
    v145 = v143;
LABEL_42:
    sub_1000F9228(v145, v144);
    v134 = v119;
    goto LABEL_32;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v142 = sub_100216954();
  sub_1000114D4(v224, &unk_10029D760, &qword_10021E810);
  sub_1000F9228(v141, type metadata accessor for SignedPeerDynamicInfo);
  sub_1000F9228(v140, type metadata accessor for SignedPeerDynamicInfo);
  sub_1000114D4(v119, &unk_10029D760, &qword_10021E810);
  if ((v142 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_21:
  v122 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  v123 = v236;
  swift_beginAccess();
  sub_100019C6C(v123 + v122, v94, &qword_100297FE0, &unk_10021E7F0);
  v124 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  v125 = *(v215 + 48);
  v119 = v217;
  sub_100019C6C(v94, v217, &qword_100297FE0, &unk_10021E7F0);
  sub_100019C6C(&v68->_TtCs12_SwiftObject_opaque[v124], v119 + v125, &qword_100297FE0, &unk_10021E7F0);
  v126 = *(v216 + 48);
  v127 = v218;
  if (v126(v119, 1, v218) == 1)
  {
    sub_1000114D4(v94, &qword_100297FE0, &unk_10021E7F0);
    v128 = v126(v119 + v125, 1, v127);
    v129 = v205;
    if (v128 == 1)
    {
      sub_1000114D4(v119, &qword_100297FE0, &unk_10021E7F0);
      goto LABEL_53;
    }

    goto LABEL_45;
  }

  v146 = v213;
  sub_100019C6C(v119, v213, &qword_100297FE0, &unk_10021E7F0);
  v147 = v126(v119 + v125, 1, v127);
  v129 = v205;
  if (v147 == 1)
  {
    sub_1000114D4(v94, &qword_100297FE0, &unk_10021E7F0);
    sub_1000F9228(v146, type metadata accessor for Metrics);
LABEL_45:
    v132 = &qword_10029CD78;
    v133 = &qword_100225CE8;
    v134 = v119;
    goto LABEL_60;
  }

  v148 = v208;
  sub_1000F89AC(v119 + v125, v208, type metadata accessor for Metrics);
  if ((*v146 != *v148 || v146[1] != v148[1]) && (sub_1002171A4() & 1) == 0 || (v146[2] != v148[2] || v146[3] != v148[3]) && (sub_1002171A4() & 1) == 0)
  {
    v137 = &qword_100297FE0;
    v139 = &unk_10021E7F0;
    sub_1000114D4(v94, &qword_100297FE0, &unk_10021E7F0);
    v144 = type metadata accessor for Metrics;
    sub_1000F9228(v148, type metadata accessor for Metrics);
    v145 = v146;
    goto LABEL_42;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v149 = sub_100216954();
  sub_1000114D4(v94, &qword_100297FE0, &unk_10021E7F0);
  sub_1000F9228(v148, type metadata accessor for Metrics);
  sub_1000F9228(v146, type metadata accessor for Metrics);
  sub_1000114D4(v119, &qword_100297FE0, &unk_10021E7F0);
  if ((v149 & 1) == 0)
  {
LABEL_61:
    v80 = v236;
    goto LABEL_62;
  }

LABEL_53:
  v150 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  v151 = v236;
  swift_beginAccess();
  v152 = v151 + v150;
  v153 = v212;
  sub_100019C6C(v152, v212, &unk_10029D6F0, &qword_100226B40);
  v154 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__accountInfo;
  swift_beginAccess();
  v155 = *(v209 + 48);
  sub_100019C6C(v153, v129, &unk_10029D6F0, &qword_100226B40);
  sub_100019C6C(&v68->_TtCs12_SwiftObject_opaque[v154], &v129[v155], &unk_10029D6F0, &qword_100226B40);
  v156 = v211;
  v157 = v210[6];
  if (v157(v129, 1, v211) != 1)
  {
    v192 = v207;
    sub_100019C6C(v129, v207, &unk_10029D6F0, &qword_100226B40);
    if (v157(&v129[v155], 1, v156) != 1)
    {
      v201 = &v129[v155];
      v202 = v206;
      sub_1000F89AC(v201, v206, type metadata accessor for AccountInfo);
      if (*v192 == *v202)
      {
        sub_1002164D4();
        sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v203 = sub_100216954();
        sub_1000F9228(v202, type metadata accessor for AccountInfo);
        sub_1000114D4(v212, &unk_10029D6F0, &qword_100226B40);
        sub_1000F9228(v192, type metadata accessor for AccountInfo);
        sub_1000114D4(v129, &unk_10029D6F0, &qword_100226B40);
        if (v203)
        {
          goto LABEL_56;
        }

        goto LABEL_61;
      }

      sub_1000F9228(v202, type metadata accessor for AccountInfo);
      sub_1000114D4(v212, &unk_10029D6F0, &qword_100226B40);
      sub_1000F9228(v192, type metadata accessor for AccountInfo);
      v134 = v129;
      v132 = &unk_10029D6F0;
      v133 = &qword_100226B40;
      goto LABEL_60;
    }

    sub_1000114D4(v212, &unk_10029D6F0, &qword_100226B40);
    sub_1000F9228(v192, type metadata accessor for AccountInfo);
    goto LABEL_59;
  }

  sub_1000114D4(v153, &unk_10029D6F0, &qword_100226B40);
  if (v157(&v129[v155], 1, v156) != 1)
  {
LABEL_59:
    v132 = &qword_10029CD70;
    v133 = &qword_100225CE0;
    v134 = v129;
    goto LABEL_60;
  }

  sub_1000114D4(v129, &unk_10029D6F0, &qword_100226B40);
LABEL_56:
  v158 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  v159 = v236;
  swift_beginAccess();
  v160 = *&v159->_TtCs12_SwiftObject_opaque[v158];
  v161 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  swift_beginAccess();
  v162 = *&v68->_TtCs12_SwiftObject_opaque[v161];

  v163 = sub_100051748(v160, v162);
  v159, v164, v165, v166, v167, v168, v169, v170;
  v68, v171, v172, v173, v174, v175, v176, v177;
  v160, v178, v179, v180, v181, v182, v183, v184, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213;
  v162, v185, v186, v187, v188, v189, v190, v191, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213;
  return v163 & 1;
}

uint64_t sub_1000CE984(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC48, type metadata accessor for AddCustodianRecoveryKeyRequest, &protocol conformance descriptor for AddCustodianRecoveryKeyRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CEA24(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298E10, type metadata accessor for AddCustodianRecoveryKeyRequest, &protocol conformance descriptor for AddCustodianRecoveryKeyRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CEA90(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298E10, type metadata accessor for AddCustodianRecoveryKeyRequest, &protocol conformance descriptor for AddCustodianRecoveryKeyRequest);

  return sub_100216644();
}

uint64_t sub_1000CEB34()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static AddCustodianRecoveryKeyResponse._protobuf_nameMap);
  sub_100002648(v0, static AddCustodianRecoveryKeyResponse._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021D420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "changes";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "zone_key_hierarchy_records";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000CED78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AddCustodianRecoveryKeyResponse(0);
  type metadata accessor for Changes(0);
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes, &protocol conformance descriptor for Changes);
  return sub_1002165F4();
}

uint64_t sub_1000CEE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Changes(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AddCustodianRecoveryKeyResponse(0);
  sub_100019C6C(a1 + *(v14 + 24), v8, &unk_10029D750, &qword_10021E850);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D750, &qword_10021E850);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for Changes);
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes, &protocol conformance descriptor for Changes);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for Changes);
}

uint64_t sub_1000CF130(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC40, type metadata accessor for AddCustodianRecoveryKeyResponse, &protocol conformance descriptor for AddCustodianRecoveryKeyResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CF1D0(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298E28, type metadata accessor for AddCustodianRecoveryKeyResponse, &protocol conformance descriptor for AddCustodianRecoveryKeyResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CF23C(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298E28, type metadata accessor for AddCustodianRecoveryKeyResponse, &protocol conformance descriptor for AddCustodianRecoveryKeyResponse);

  return sub_100216644();
}

uint64_t sub_1000CF2E0()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static FetchChangesRequest._protobuf_nameMap);
  sub_100002648(v0, static FetchChangesRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "change_token";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "metrics";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "accountInfo";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000CF588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FetchChangesRequest(0);
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  return sub_1002165F4();
}

uint64_t sub_1000CF63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FetchChangesRequest(0);
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  return sub_1002165F4();
}

uint64_t sub_1000CF744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Metrics(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ChangesRequest = type metadata accessor for FetchChangesRequest(0);
  sub_100019C6C(a1 + *(ChangesRequest + 24), v8, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for Metrics);
}

uint64_t sub_1000CF960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for AccountInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ChangesRequest = type metadata accessor for FetchChangesRequest(0);
  sub_100019C6C(a1 + *(ChangesRequest + 28), v8, &unk_10029D6F0, &qword_100226B40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for AccountInfo);
}

uint64_t sub_1000CFBF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC38, type metadata accessor for FetchChangesRequest, &protocol conformance descriptor for FetchChangesRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CFC94(uint64_t a1)
{
  v2 = sub_1000F9F28(&unk_10029DA40, type metadata accessor for FetchChangesRequest, &protocol conformance descriptor for FetchChangesRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CFD00(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&unk_10029DA40, type metadata accessor for FetchChangesRequest, &protocol conformance descriptor for FetchChangesRequest);

  return sub_100216644();
}

uint64_t sub_1000CFE30(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_100216534();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1000CFEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FetchChangesResponse(0);
  type metadata accessor for Changes(0);
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes, &protocol conformance descriptor for Changes);
  return sub_1002165F4();
}

uint64_t sub_1000CFF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v18[3] = a4;
  v18[0] = a2;
  v18[1] = a3;
  v7 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  __chkstk_darwin(v7 - 8, v8);
  v10 = v18 - v9;
  v11 = type metadata accessor for Changes(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a5(0);
  sub_100019C6C(a1 + *(v16 + 20), v10, &unk_10029D750, &qword_10021E850);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1000114D4(v10, &unk_10029D750, &qword_10021E850);
  }

  sub_1000F89AC(v10, v15, type metadata accessor for Changes);
  sub_1000F9F28(&qword_10029D930, type metadata accessor for Changes, &protocol conformance descriptor for Changes);
  sub_100216704();
  return sub_1000F9228(v15, type metadata accessor for Changes);
}

uint64_t sub_1000D022C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC30, type metadata accessor for FetchChangesResponse, &protocol conformance descriptor for FetchChangesResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D02D0(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298E50, type metadata accessor for FetchChangesResponse, &protocol conformance descriptor for FetchChangesResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D033C(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298E50, type metadata accessor for FetchChangesResponse, &protocol conformance descriptor for FetchChangesResponse);

  return sub_100216644();
}

uint64_t sub_1000D03E0()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static FetchViableBottlesRequest._protobuf_nameMap);
  sub_100002648(v0, static FetchViableBottlesRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "filter_request";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "metrics";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "accountInfo";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t FetchViableBottlesRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100216534();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1000D07E0(a1, v5, a2, a3);
          break;
        case 2:
          sub_1000D072C(a1, v5, a2, a3);
          break;
        case 1:
          sub_1000FA038();
          sub_100216564();
          break;
      }

      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000D072C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FetchViableBottlesRequest(0);
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  return sub_1002165F4();
}

uint64_t sub_1000D07E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FetchViableBottlesRequest(0);
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  return sub_1002165F4();
}

uint64_t FetchViableBottlesRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_1000FA038(), result = sub_100216674(), !v4))
  {
    result = sub_1000D0978(v3, a1, a2, a3);
    if (!v4)
    {
      sub_1000D0B94(v3, a1, a2, a3);
      type metadata accessor for FetchViableBottlesRequest(0);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000D0978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Metrics(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ViableBottlesRequest = type metadata accessor for FetchViableBottlesRequest(0);
  sub_100019C6C(a1 + *(ViableBottlesRequest + 24), v8, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for Metrics);
}

uint64_t sub_1000D0B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for AccountInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ViableBottlesRequest = type metadata accessor for FetchViableBottlesRequest(0);
  sub_100019C6C(a1 + *(ViableBottlesRequest + 28), v8, &unk_10029D6F0, &qword_100226B40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for AccountInfo);
}

uint64_t sub_1000D0DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Metrics(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 28);
  v7 = type metadata accessor for AccountInfo(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1000D0F00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC28, type metadata accessor for FetchViableBottlesRequest, &protocol conformance descriptor for FetchViableBottlesRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D0FA0(uint64_t a1)
{
  v2 = sub_1000F9F28(&unk_10029DA60, type metadata accessor for FetchViableBottlesRequest, &protocol conformance descriptor for FetchViableBottlesRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D100C(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&unk_10029DA60, type metadata accessor for FetchViableBottlesRequest, &protocol conformance descriptor for FetchViableBottlesRequest);

  return sub_100216644();
}

uint64_t sub_1000D10B0()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static FetchViableBottlesResponse._protobuf_nameMap);
  sub_100002648(v0, static FetchViableBottlesResponse._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DFC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "viable_bottles";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "partial_bottles";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "legacy_records";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "total_escrow_records";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "total_escrow_records_fully_viable";
  *(v16 + 1) = 33;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "total_escrow_records_partially_viable";
  *(v18 + 1) = 37;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "total_escrow_records_legacy";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t FetchViableBottlesResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100216534();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 3)
      {
        if (result == 1 || result == 2)
        {
          v6 = v3;
          type metadata accessor for EscrowPair(0);
          sub_1000F9F28(&qword_100298820, type metadata accessor for EscrowPair, &protocol conformance descriptor for EscrowPair);
        }

        else
        {
          if (result != 3)
          {
            goto LABEL_5;
          }

          v6 = v3;
          type metadata accessor for EscrowInformation(0);
          sub_1000F9F28(&qword_100298828, type metadata accessor for EscrowInformation, &protocol conformance descriptor for EscrowInformation);
        }

        v3 = v6;
        sub_1002165E4();
      }

      else if (result <= 6 || result == 7)
      {
        sub_1002165D4();
      }

LABEL_5:
      result = sub_100216534();
    }
  }

  return result;
}

uint64_t FetchViableBottlesResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (*(*v3 + 16))
  {
    type metadata accessor for EscrowPair(0);
    sub_1000F9F28(&qword_100298820, type metadata accessor for EscrowPair, &protocol conformance descriptor for EscrowPair);
    result = sub_1002166F4();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(v3[1] + 16))
  {
    type metadata accessor for EscrowPair(0);
    sub_1000F9F28(&qword_100298820, type metadata accessor for EscrowPair, &protocol conformance descriptor for EscrowPair);
    result = sub_1002166F4();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(v3[2] + 16))
  {
    type metadata accessor for EscrowInformation(0);
    sub_1000F9F28(&qword_100298828, type metadata accessor for EscrowInformation, &protocol conformance descriptor for EscrowInformation);
    v7 = v5;
    result = sub_1002166F4();
    if (v5)
    {
      return result;
    }

    if (!v3[3])
    {
      goto LABEL_13;
    }

LABEL_12:
    result = sub_1002166E4();
    if (v7)
    {
      return result;
    }

    goto LABEL_13;
  }

  v7 = v5;
  if (v3[3])
  {
    goto LABEL_12;
  }

LABEL_13:
  if (!v3[4] || (result = sub_1002166E4(), !v7))
  {
    if (!v3[5] || (result = sub_1002166E4(), !v7))
    {
      if (!v3[6] || (result = sub_1002166E4(), !v7))
      {
        type metadata accessor for FetchViableBottlesResponse(0);
        return sub_1002164B4();
      }
    }
  }

  return result;
}

uint64_t sub_1000D1898@<X0>(uint64_t a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 8) = _swiftEmptyArrayStorage;
  *(a2 + 16) = _swiftEmptyArrayStorage;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t sub_1000D1928(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC20, type metadata accessor for FetchViableBottlesResponse, &protocol conformance descriptor for FetchViableBottlesResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D19C8(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298E78, type metadata accessor for FetchViableBottlesResponse, &protocol conformance descriptor for FetchViableBottlesResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D1A34(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298E78, type metadata accessor for FetchViableBottlesResponse, &protocol conformance descriptor for FetchViableBottlesResponse);

  return sub_100216644();
}

uint64_t sub_1000D1AD8()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static FetchRecoverableTLKSharesRequest._protobuf_nameMap);
  sub_100002648(v0, static FetchRecoverableTLKSharesRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "peer_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "metrics";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "accountInfo";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t sub_1000D1D80(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_100216534();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        a5(a1, v9, a2, a3);
        break;
      case 2:
        a4(a1, v9, a2, a3);
        break;
      case 1:
        sub_1002165B4();
        break;
    }
  }

  return result;
}

uint64_t sub_1000D1E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FetchRecoverableTLKSharesRequest(0);
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  return sub_1002165F4();
}

uint64_t sub_1000D1F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FetchRecoverableTLKSharesRequest(0);
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  return sub_1002165F4();
}

uint64_t sub_1000D2008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t), void (*a5)(void *, uint64_t, uint64_t, uint64_t), void (*a6)(void))
{
  v14 = v6[1];
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 || (result = sub_1002166C4(), !v7))
  {
    result = a4(v6, a1, a2, a3);
    if (!v7)
    {
      a5(v6, a1, a2, a3);
      a6(0);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000D20EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Metrics(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  RecoverableTLKSharesRequest = type metadata accessor for FetchRecoverableTLKSharesRequest(0);
  sub_100019C6C(a1 + *(RecoverableTLKSharesRequest + 24), v8, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for Metrics);
}

uint64_t sub_1000D2308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for AccountInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  RecoverableTLKSharesRequest = type metadata accessor for FetchRecoverableTLKSharesRequest(0);
  sub_100019C6C(a1 + *(RecoverableTLKSharesRequest + 28), v8, &unk_10029D6F0, &qword_100226B40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for AccountInfo);
}

uint64_t sub_1000D2570@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Metrics(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = *(a1 + 28);
  v7 = type metadata accessor for AccountInfo(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t sub_1000D2674(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC18, type metadata accessor for FetchRecoverableTLKSharesRequest, &protocol conformance descriptor for FetchRecoverableTLKSharesRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D2714(uint64_t a1)
{
  v2 = sub_1000F9F28(&unk_10029D960, type metadata accessor for FetchRecoverableTLKSharesRequest, &protocol conformance descriptor for FetchRecoverableTLKSharesRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D2780(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&unk_10029D960, type metadata accessor for FetchRecoverableTLKSharesRequest, &protocol conformance descriptor for FetchRecoverableTLKSharesRequest);

  return sub_100216644();
}

uint64_t FetchRecoverableTLKSharesResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for FetchRecoverableTLKSharesResponse.View(0), sub_1000F9F28(&qword_100298840, type metadata accessor for FetchRecoverableTLKSharesResponse.View, &protocol conformance descriptor for FetchRecoverableTLKSharesResponse.View), result = sub_1002166F4(), !v4))
  {
    type metadata accessor for FetchRecoverableTLKSharesResponse(0);
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000D29F0(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000D2B20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC10, type metadata accessor for FetchRecoverableTLKSharesResponse, &protocol conformance descriptor for FetchRecoverableTLKSharesResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D2BC0(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298EA0, type metadata accessor for FetchRecoverableTLKSharesResponse, &protocol conformance descriptor for FetchRecoverableTLKSharesResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D2C2C(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298EA0, type metadata accessor for FetchRecoverableTLKSharesResponse, &protocol conformance descriptor for FetchRecoverableTLKSharesResponse);

  return sub_100216644();
}

uint64_t sub_1000D2CE8()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static FetchRecoverableTLKSharesResponse.View._protobuf_nameMap);
  sub_100002648(v0, static FetchRecoverableTLKSharesResponse.View._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "view";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "keys";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "tlk_shares";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t FetchRecoverableTLKSharesResponse.View.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100216534();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_100216424();
          sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport, &protocol conformance descriptor for Ckcode_RecordTransport);
          sub_1002165E4();
          break;
        case 2:
          sub_1000D306C(a1, v5, a2, a3);
          break;
        case 1:
          sub_1002165B4();
          break;
      }

      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000D306C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FetchRecoverableTLKSharesResponse.View(0);
  type metadata accessor for ViewKeysRecords(0);
  sub_1000F9F28(&qword_100298C40, type metadata accessor for ViewKeysRecords, &protocol conformance descriptor for ViewKeysRecords);
  return sub_1002165F4();
}

uint64_t FetchRecoverableTLKSharesResponse.View.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1002166C4(), !v4))
  {
    result = sub_1000D324C(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3[2] + 16))
      {
        sub_100216424();
        sub_1000F9F28(&qword_100298788, &type metadata accessor for Ckcode_RecordTransport, &protocol conformance descriptor for Ckcode_RecordTransport);
        sub_1002166F4();
      }

      type metadata accessor for FetchRecoverableTLKSharesResponse.View(0);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000D324C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&qword_100297E40, &unk_10021E7D0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for ViewKeysRecords(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  RecoverableTLKShares = type metadata accessor for FetchRecoverableTLKSharesResponse.View(0);
  sub_100019C6C(a1 + *(RecoverableTLKShares + 28), v8, &qword_100297E40, &unk_10021E7D0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_100297E40, &unk_10021E7D0);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for ViewKeysRecords);
  sub_1000F9F28(&qword_100298C40, type metadata accessor for ViewKeysRecords, &protocol conformance descriptor for ViewKeysRecords);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for ViewKeysRecords);
}

uint64_t sub_1000D34B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = _swiftEmptyArrayStorage;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for ViewKeysRecords(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1000D3578(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC08, type metadata accessor for FetchRecoverableTLKSharesResponse.View, &protocol conformance descriptor for FetchRecoverableTLKSharesResponse.View);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D3618(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298840, type metadata accessor for FetchRecoverableTLKSharesResponse.View, &protocol conformance descriptor for FetchRecoverableTLKSharesResponse.View);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D3684(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298840, type metadata accessor for FetchRecoverableTLKSharesResponse.View, &protocol conformance descriptor for FetchRecoverableTLKSharesResponse.View);

  return sub_100216644();
}

uint64_t sub_1000D3728()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static FetchPolicyDocumentsRequest._protobuf_nameMap);
  sub_100002648(v0, static FetchPolicyDocumentsRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "keys";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "metrics";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "accountInfo";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t FetchPolicyDocumentsRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100216534();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1000D3B5C(a1, v5, a2, a3);
          break;
        case 2:
          sub_1000D3AA8(a1, v5, a2, a3);
          break;
        case 1:
          type metadata accessor for PolicyDocumentKey(0);
          sub_1000F9F28(&qword_10029D840, type metadata accessor for PolicyDocumentKey, &protocol conformance descriptor for PolicyDocumentKey);
          sub_1002165E4();
          break;
      }

      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000D3AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FetchPolicyDocumentsRequest(0);
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  return sub_1002165F4();
}

uint64_t sub_1000D3B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FetchPolicyDocumentsRequest(0);
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  return sub_1002165F4();
}

uint64_t FetchPolicyDocumentsRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PolicyDocumentKey(0), sub_1000F9F28(&qword_10029D840, type metadata accessor for PolicyDocumentKey, &protocol conformance descriptor for PolicyDocumentKey), result = sub_1002166F4(), !v4))
  {
    result = sub_1000D3D24(v3, a1, a2, a3);
    if (!v4)
    {
      sub_1000D3F40(v3, a1, a2, a3);
      type metadata accessor for FetchPolicyDocumentsRequest(0);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000D3D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Metrics(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  sub_100019C6C(a1 + *(PolicyDocumentsRequest + 24), v8, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for Metrics);
}

uint64_t sub_1000D3F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for AccountInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  sub_100019C6C(a1 + *(PolicyDocumentsRequest + 28), v8, &unk_10029D6F0, &qword_100226B40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for AccountInfo);
}

uint64_t sub_1000D41D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CC00, type metadata accessor for FetchPolicyDocumentsRequest, &protocol conformance descriptor for FetchPolicyDocumentsRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D42C0(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100297E78, type metadata accessor for FetchPolicyDocumentsRequest, &protocol conformance descriptor for FetchPolicyDocumentsRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D432C(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100297E78, type metadata accessor for FetchPolicyDocumentsRequest, &protocol conformance descriptor for FetchPolicyDocumentsRequest);

  return sub_100216644();
}

uint64_t sub_1000D448C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  while (1)
  {
    result = sub_100216534();
    if (v7 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_1000F9F28(a5, a6, a7);
      sub_1002165E4();
    }
  }

  return result;
}

uint64_t FetchPolicyDocumentsResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PolicyDocumentMapEntry(0), sub_1000F9F28(&qword_100298860, type metadata accessor for PolicyDocumentMapEntry, &protocol conformance descriptor for PolicyDocumentMapEntry), result = sub_1002166F4(), !v4))
  {
    type metadata accessor for FetchPolicyDocumentsResponse(0);
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000D46C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CBF8, type metadata accessor for FetchPolicyDocumentsResponse, &protocol conformance descriptor for FetchPolicyDocumentsResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D4740(uint64_t *a1, uint64_t a2)
{
  if ((sub_10004F82C(*v2, *a1) & 1) == 0)
  {
    return 0;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000D4808(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298ED8, type metadata accessor for FetchPolicyDocumentsResponse, &protocol conformance descriptor for FetchPolicyDocumentsResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D4874(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298ED8, type metadata accessor for FetchPolicyDocumentsResponse, &protocol conformance descriptor for FetchPolicyDocumentsResponse);

  return sub_100216644();
}

uint64_t sub_1000D4908(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000D49DC()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static GetRepairActionRequest._protobuf_nameMap);
  sub_100002648(v0, static GetRepairActionRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10021DFF0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "peer_id";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "requires_escrow_check";
  *(v9 + 8) = 21;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "known_federations";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "perform_cleanup";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "metrics";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "accountInfo";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "perform_dangling_peer_cleanup";
  *(v19 + 1) = 29;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "update_idms";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "perform_caesar_peer_cleanup";
  *(v22 + 8) = 27;
  *(v22 + 16) = 2;
  v8();
  return sub_100216724();
}

uint64_t GetRepairActionRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_100216534();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 4)
    {
      if (result > 2)
      {
        if (result != 3)
        {
          goto LABEL_2;
        }

        sub_1002165A4();
      }

      else if (result == 1)
      {
        sub_1002165B4();
      }

      else if (result == 2)
      {
        goto LABEL_2;
      }
    }

    else if (result <= 6)
    {
      if (result == 5)
      {
        sub_1000D5990(a1, v5, a2, a3, type metadata accessor for GetRepairActionRequest);
      }

      else
      {
        sub_1000D5A48(a1, v5, a2, a3, type metadata accessor for GetRepairActionRequest);
      }
    }

    else if (result == 7 || result == 8 || result == 9)
    {
LABEL_2:
      sub_100216554();
    }
  }
}

uint64_t GetRepairActionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1002166C4(), !v4))
  {
    if (*(v3 + 16) != 1 || (result = sub_100216664(), !v4))
    {
      if (!*(*(v3 + 24) + 16) || (result = sub_1002166B4(), !v4))
      {
        if (*(v3 + 32) != 1 || (result = sub_100216664(), !v4))
        {
          result = sub_1000D5CDC(v3, a1, a2, a3, type metadata accessor for GetRepairActionRequest, 5);
          if (!v4)
          {
            sub_1000D5F00(v3, a1, a2, a3, type metadata accessor for GetRepairActionRequest, 6);
            if (*(v3 + 33) == 1)
            {
              sub_100216664();
            }

            if (*(v3 + 34) == 1)
            {
              sub_100216664();
            }

            if (*(v3 + 35) == 1)
            {
              sub_100216664();
            }

            type metadata accessor for GetRepairActionRequest(0);
            return sub_1002164B4();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000D5164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  *(a2 + 32) = 0;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = *(a1 + 48);
  v5 = type metadata accessor for Metrics(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 52);
  v7 = type metadata accessor for AccountInfo(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1000D527C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CBF0, type metadata accessor for GetRepairActionRequest, &protocol conformance descriptor for GetRepairActionRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D531C(uint64_t a1)
{
  v2 = sub_1000F9F28(&unk_10029D710, type metadata accessor for GetRepairActionRequest, &protocol conformance descriptor for GetRepairActionRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D5388(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&unk_10029D710, type metadata accessor for GetRepairActionRequest, &protocol conformance descriptor for GetRepairActionRequest);

  return sub_100216644();
}

uint64_t sub_1000D542C()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static GetEscrowCheckRequest._protobuf_nameMap);
  sub_100002648(v0, static GetEscrowCheckRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10021DFF0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "peer_id";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "is_background_check";
  *(v9 + 8) = 19;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "passcode_generation";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "known_federations";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "metrics";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "accountInfo";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "disable_with_error";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "disable_repair";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "requires_escrow_check";
  *(v22 + 8) = 21;
  *(v22 + 16) = 2;
  v8();
  return sub_100216724();
}

uint64_t GetEscrowCheckRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_100216534();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 4)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_1002165D4();
        }

        else
        {
          sub_1002165A4();
        }
      }

      else if (result == 1)
      {
        sub_1002165B4();
      }

      else if (result == 2)
      {
        goto LABEL_2;
      }
    }

    else if (result <= 6)
    {
      if (result == 5)
      {
        sub_1000D5990(a1, v5, a2, a3, type metadata accessor for GetEscrowCheckRequest);
      }

      else
      {
        sub_1000D5A48(a1, v5, a2, a3, type metadata accessor for GetEscrowCheckRequest);
      }
    }

    else if (result == 7 || result == 8 || result == 9)
    {
LABEL_2:
      sub_100216554();
    }
  }
}

uint64_t sub_1000D5990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  return sub_1002165F4();
}

uint64_t sub_1000D5A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  return sub_1002165F4();
}

uint64_t GetEscrowCheckRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1002166C4(), !v4))
  {
    if (*(v3 + 16) != 1 || (result = sub_100216664(), !v4))
    {
      if (!*(v3 + 24) || (result = sub_1002166E4(), !v4))
      {
        if (!*(*(v3 + 32) + 16) || (result = sub_1002166B4(), !v4))
        {
          result = sub_1000D5CDC(v3, a1, a2, a3, type metadata accessor for GetEscrowCheckRequest, 5);
          if (!v4)
          {
            sub_1000D5F00(v3, a1, a2, a3, type metadata accessor for GetEscrowCheckRequest, 6);
            if (*(v3 + 40) == 1)
            {
              sub_100216664();
            }

            if (*(v3 + 41) == 1)
            {
              sub_100216664();
            }

            if (*(v3 + 42) == 1)
            {
              sub_100216664();
            }

            type metadata accessor for GetEscrowCheckRequest(0);
            return sub_1002164B4();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000D5CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v19[2] = a6;
  v19[3] = a3;
  v19[5] = a4;
  v19[1] = a2;
  v8 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v8 - 8, v9);
  v11 = v19 - v10;
  v12 = type metadata accessor for Metrics(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a5(0);
  sub_100019C6C(a1 + *(v17 + 48), v11, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1000114D4(v11, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v11, v16, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  sub_100216704();
  return sub_1000F9228(v16, type metadata accessor for Metrics);
}

uint64_t sub_1000D5F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v19[2] = a6;
  v19[3] = a3;
  v19[5] = a4;
  v19[1] = a2;
  v8 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v8 - 8, v9);
  v11 = v19 - v10;
  v12 = type metadata accessor for AccountInfo(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a5(0);
  sub_100019C6C(a1 + *(v17 + 52), v11, &unk_10029D6F0, &qword_100226B40);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1000114D4(v11, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v11, v16, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v16, type metadata accessor for AccountInfo);
}

uint64_t sub_1000D6170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = _swiftEmptyArrayStorage;
  *(a2 + 40) = 0;
  *(a2 + 42) = 0;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = *(a1 + 48);
  v5 = type metadata accessor for Metrics(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 52);
  v7 = type metadata accessor for AccountInfo(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1000D628C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CBE8, type metadata accessor for GetEscrowCheckRequest, &protocol conformance descriptor for GetEscrowCheckRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D632C(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298F00, type metadata accessor for GetEscrowCheckRequest, &protocol conformance descriptor for GetEscrowCheckRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D6398(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298F00, type metadata accessor for GetEscrowCheckRequest, &protocol conformance descriptor for GetEscrowCheckRequest);

  return sub_100216644();
}

uint64_t sub_1000D643C()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static EscrowProxyFederationMoveRecordRequest._protobuf_nameMap);
  sub_100002648(v0, static EscrowProxyFederationMoveRecordRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DFB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "escrow_record_label";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "current_federation";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "intended_federation";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "metrics";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t EscrowProxyFederationMoveRecordRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_100216534();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_2;
      }

      if (result == 4)
      {
        sub_1000D6790(a1, v5, a2, a3);
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      sub_1002165B4();
    }
  }
}

uint64_t sub_1000D6790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EscrowProxyFederationMoveRecordRequest(0);
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  return sub_1002165F4();
}

uint64_t EscrowProxyFederationMoveRecordRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1002166C4(), !v4))
  {
    v11 = v3[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_1002166C4(), !v4))
    {
      v13 = v3[5];
      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v14 || (result = sub_1002166C4(), !v4))
      {
        result = sub_1000D6950(v3, a1, a2, a3);
        if (!v4)
        {
          type metadata accessor for EscrowProxyFederationMoveRecordRequest(0);
          return sub_1002164B4();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000D6950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Metrics(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EscrowProxyFederationMoveRecordRequest(0);
  sub_100019C6C(a1 + *(v14 + 32), v8, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for Metrics);
}

uint64_t sub_1000D6BB8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0xE000000000000000;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = *(a1 + 32);
  v5 = type metadata accessor for Metrics(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1000D6C9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CBE0, type metadata accessor for EscrowProxyFederationMoveRecordRequest, &protocol conformance descriptor for EscrowProxyFederationMoveRecordRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D6D3C(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298F18, type metadata accessor for EscrowProxyFederationMoveRecordRequest, &protocol conformance descriptor for EscrowProxyFederationMoveRecordRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D6DA8(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298F18, type metadata accessor for EscrowProxyFederationMoveRecordRequest, &protocol conformance descriptor for EscrowProxyFederationMoveRecordRequest);

  return sub_100216644();
}

uint64_t sub_1000D6E50()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static GetRepairActionResponse._protobuf_nameMap);
  sub_100002648(v0, static GetRepairActionResponse._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_10021E000;
  v4 = v69 + v3;
  v5 = v69 + v3 + v1[14];
  *(v69 + v3) = 1;
  *v5 = "repair_action";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "total_escrow_records";
  *(v9 + 8) = 20;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "collectable_escrow_records";
  *(v11 + 1) = 26;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "collected_escrow_records";
  *(v13 + 1) = 24;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "escrow_record_garbage_collection_enabled";
  *(v15 + 1) = 40;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "total_tlk_shares";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "collectable_tlk_shares";
  *(v19 + 1) = 22;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "collected_tlk_shares";
  *(v21 + 1) = 20;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "tlk_share_garbage_collection_enabled";
  *(v22 + 8) = 36;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "total_peers";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "trusted_peers";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 13;
  *v28 = "superfluous_peers";
  *(v28 + 1) = 17;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 14;
  *v30 = "peers_cleanedup";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 15;
  *v32 = "superfluous_peers_cleanup_enabled";
  *(v32 + 1) = 33;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 16;
  *v34 = "duplicate_escrow_records";
  *(v34 + 1) = 24;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 17;
  *v36 = "unsetHMACpeers";
  *(v36 + 1) = 14;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 18;
  *v37 = "updatedHMACpeers";
  *(v37 + 8) = 16;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 19;
  *v39 = "total_device_state_records";
  *(v39 + 1) = 26;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 20;
  *v41 = "collectable_device_state_records";
  *(v41 + 1) = 32;
  v41[16] = 2;
  v8();
  v42 = (v4 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 21;
  *v43 = "collected_device_state_records";
  *(v43 + 1) = 30;
  v43[16] = 2;
  v8();
  v44 = (v4 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 22;
  *v45 = "tlk_share_deletion_failed";
  *(v45 + 1) = 25;
  v45[16] = 2;
  v8();
  v46 = (v4 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 23;
  *v47 = "device_state_record_deletion_failed";
  *(v47 + 1) = 35;
  v47[16] = 2;
  v8();
  v48 = (v4 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 24;
  *v49 = "fully_dangling_peers";
  *(v49 + 1) = 20;
  v49[16] = 2;
  v8();
  v50 = (v4 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 25;
  *v51 = "partially_dangling_peers";
  *(v51 + 1) = 24;
  v51[16] = 2;
  v8();
  v52 = (v4 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 26;
  *v53 = "caesar_peers";
  *(v53 + 1) = 12;
  v53[16] = 2;
  v8();
  v54 = (v4 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 27;
  *v55 = "dangling_peers_cleaned_up";
  *(v55 + 1) = 25;
  v55[16] = 2;
  v8();
  v56 = (v4 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 28;
  *v57 = "dangling_peers_cleanup_enabled";
  *(v57 + 1) = 30;
  v57[16] = 2;
  v8();
  v58 = (v4 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 29;
  *v59 = "idms_updated";
  *(v59 + 1) = 12;
  v59[16] = 2;
  v8();
  v60 = (v4 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 30;
  *v61 = "fully_dangling_peer_count_validation_fails";
  *(v61 + 1) = 42;
  v61[16] = 2;
  v8();
  v62 = (v4 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 31;
  *v63 = "partially_dangling_peer_count_validation_fails";
  *(v63 + 1) = 46;
  v63[16] = 2;
  v8();
  v64 = (v4 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 32;
  *v65 = "caesar_peers_cleaned_up";
  *(v65 + 1) = 23;
  v65[16] = 2;
  v8();
  v66 = (v4 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 33;
  *v67 = "caesar_peers_cleanup_enabled";
  *(v67 + 1) = 28;
  v67[16] = 2;
  v8();
  return sub_100216724();
}

double sub_1000D77BC()
{
  type metadata accessor for GetRepairActionResponse._StorageClass();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0;
  *(v0 + 56) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 64) = 0;
  *(v0 + 88) = 0;
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
  *(v0 + 256) = 0;
  *(v0 + 248) = 0;
  qword_100298560 = v0;
  return result;
}

uint64_t GetRepairActionResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for GetRepairActionResponse._StorageClass();
    swift_allocObject();
    v12 = sub_1000F960C(v11);
    v11, v13, v14, v15, v16, v17, v18, v19;
    *(v4 + v8) = v12;
    v10 = v12;
  }

  return sub_1000D7904(v10, a1, a2, a3);
}

uint64_t sub_1000D7904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_100216534();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1000D7CFC(a2, a1, a3, a4);
        break;
      case 3:
        sub_1000D7D90(a2, a1, a3, a4);
        break;
      case 4:
        sub_1000D7E14(a2, a1, a3, a4);
        break;
      case 5:
        sub_1000D7E98(a2, a1, a3, a4);
        break;
      case 6:
        sub_1000D7F1C(a2, a1, a3, a4);
        break;
      case 7:
        sub_1000D7FA0(a2, a1, a3, a4);
        break;
      case 8:
        sub_1000D8024(a2, a1, a3, a4);
        break;
      case 9:
        sub_1000D80A8(a2, a1, a3, a4);
        break;
      case 10:
        sub_1000D812C(a2, a1, a3, a4);
        break;
      case 11:
        sub_1000D81B0(a2, a1, a3, a4);
        break;
      case 12:
        sub_1000D8234(a2, a1, a3, a4);
        break;
      case 13:
        sub_1000D82B8(a2, a1, a3, a4);
        break;
      case 14:
        sub_1000D833C(a2, a1, a3, a4);
        break;
      case 15:
        sub_1000D83C0(a2, a1, a3, a4);
        break;
      case 16:
        sub_1000D8444(a2, a1, a3, a4);
        break;
      case 17:
        sub_1000D84C8(a2, a1, a3, a4);
        break;
      case 18:
        sub_1000D854C(a2, a1, a3, a4);
        break;
      case 19:
        sub_1000D85D0(a2, a1, a3, a4);
        break;
      case 20:
        sub_1000D8654(a2, a1, a3, a4);
        break;
      case 21:
        sub_1000D86D8(a2, a1, a3, a4);
        break;
      case 22:
        sub_1000D875C(a2, a1, a3, a4);
        break;
      case 23:
        sub_1000D87E0(a2, a1, a3, a4);
        break;
      case 24:
        sub_1000D8864(a2, a1, a3, a4);
        break;
      case 25:
        sub_1000D88E8(a2, a1, a3, a4);
        break;
      case 26:
        sub_1000D896C(a2, a1, a3, a4);
        break;
      case 27:
        sub_1000D89F0(a2, a1, a3, a4);
        break;
      case 28:
        sub_1000D8A74(a2, a1, a3, a4);
        break;
      case 29:
        sub_1000D8AF8(a2, a1, a3, a4);
        break;
      case 30:
        sub_1000D8B7C(a2, a1, a3, a4);
        break;
      case 31:
        sub_1000D8C00(a2, a1, a3, a4);
        break;
      case 32:
        sub_1000D8C84(a2, a1, a3, a4);
        break;
      case 33:
        sub_1000D8D08(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1000D7CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_100105EEC();
  sub_100216564();
  return swift_endAccess();
}

uint64_t sub_1000D7D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D7E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D7E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D7F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_100216554();
  return swift_endAccess();
}

uint64_t sub_1000D7FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D8024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D80A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D812C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_100216554();
  return swift_endAccess();
}

uint64_t sub_1000D81B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D8234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D82B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D833C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D83C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_100216554();
  return swift_endAccess();
}

uint64_t sub_1000D8444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D84C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D854C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D85D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D8654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D86D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D875C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_100216554();
  return swift_endAccess();
}

uint64_t sub_1000D87E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_100216554();
  return swift_endAccess();
}

uint64_t sub_1000D8864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D88E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D896C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D89F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D8A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_100216554();
  return swift_endAccess();
}

uint64_t sub_1000D8AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_100216554();
  return swift_endAccess();
}

uint64_t sub_1000D8B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D8C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D8C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1002165D4();
  return swift_endAccess();
}

uint64_t sub_1000D8D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_100216554();
  return swift_endAccess();
}

uint64_t sub_1000D8DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  if (*(a1 + 16))
  {
    sub_100105EEC();
    result = sub_100216674();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 32))
  {
    result = sub_1002166E4();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 40))
  {
    result = sub_1002166E4();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 48))
  {
    result = sub_1002166E4();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 56) == 1)
  {
    result = sub_100216664();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 64))
  {
    result = sub_1002166E4();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 72))
  {
    result = sub_1002166E4();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 80))
  {
    result = sub_1002166E4();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 88) == 1)
  {
    result = sub_100216664();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 96))
  {
    result = sub_1002166E4();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 104))
  {
    result = sub_1002166E4();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 112))
  {
    result = sub_1002166E4();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 120))
  {
    result = sub_1002166E4();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 128) == 1)
  {
    result = sub_100216664();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 136))
  {
    result = sub_1002166E4();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 144))
  {
    result = sub_1002166E4();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 152))
  {
    result = sub_1002166E4();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 160))
  {
    result = sub_1002166E4();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 168))
  {
    result = sub_1002166E4();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (!*(a1 + 176) || (result = sub_1002166E4(), !v5))
  {
    swift_beginAccess();
    if (*(a1 + 184) != 1 || (result = sub_100216664(), !v5))
    {
      swift_beginAccess();
      if (*(a1 + 185) != 1 || (result = sub_100216664(), !v5))
      {
        swift_beginAccess();
        if (!*(a1 + 192) || (result = sub_1002166E4(), !v5))
        {
          swift_beginAccess();
          if (!*(a1 + 200) || (result = sub_1002166E4(), !v5))
          {
            swift_beginAccess();
            if (!*(a1 + 208) || (result = sub_1002166E4(), !v5))
            {
              swift_beginAccess();
              if (!*(a1 + 216) || (result = sub_1002166E4(), !v5))
              {
                swift_beginAccess();
                if (*(a1 + 224) != 1 || (result = sub_100216664(), !v5))
                {
                  swift_beginAccess();
                  if (*(a1 + 225) != 1 || (result = sub_100216664(), !v5))
                  {
                    swift_beginAccess();
                    if (!*(a1 + 232) || (result = sub_1002166E4(), !v5))
                    {
                      swift_beginAccess();
                      if (!*(a1 + 240) || (result = sub_1002166E4(), !v5))
                      {
                        swift_beginAccess();
                        if (!*(a1 + 248) || (result = sub_1002166E4(), !v5))
                        {
                          result = swift_beginAccess();
                          if (*(a1 + 256) == 1)
                          {
                            return sub_100216664();
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

  return result;
}

uint64_t static GetRepairActionResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for GetRepairActionResponse(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6 && (sub_1000D9628(v5, v6) & 1) == 0)
  {
    return 0;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000D9628(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  v5 = *(a2 + 16);
  if (*(a2 + 24) != 1)
  {
    if (v4 == v5)
    {
      goto LABEL_8;
    }

    goto LABEL_50;
  }

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      if (v4 != 3)
      {
        goto LABEL_50;
      }

      goto LABEL_8;
    }

    if (v5 == 4)
    {
      if (v4 != 4)
      {
        goto LABEL_50;
      }

      goto LABEL_8;
    }

    if (v4 == 5)
    {
      goto LABEL_8;
    }

LABEL_50:
    v37 = 0;
    return v37 & 1;
  }

  if (!v5)
  {
    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_50;
  }

  if (v5 == 1)
  {
    if (v4 != 1)
    {
      goto LABEL_50;
    }
  }

  else if (v4 != 2)
  {
    goto LABEL_50;
  }

LABEL_8:
  swift_beginAccess();
  v6 = *(a1 + 32);
  swift_beginAccess();
  if (v6 != *(a2 + 32))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v7 = *(a1 + 40);
  swift_beginAccess();
  if (v7 != *(a2 + 40))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v8 = *(a1 + 48);
  swift_beginAccess();
  if (v8 != *(a2 + 48))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v9 = *(a1 + 56);
  swift_beginAccess();
  if (v9 != *(a2 + 56))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v10 = *(a1 + 64);
  swift_beginAccess();
  if (v10 != *(a2 + 64))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v11 = *(a1 + 72);
  swift_beginAccess();
  if (v11 != *(a2 + 72))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v12 = *(a1 + 80);
  swift_beginAccess();
  if (v12 != *(a2 + 80))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v13 = *(a1 + 88);
  swift_beginAccess();
  if (v13 != *(a2 + 88))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v14 = *(a1 + 96);
  swift_beginAccess();
  if (v14 != *(a2 + 96))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v15 = *(a1 + 104);
  swift_beginAccess();
  if (v15 != *(a2 + 104))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v16 = *(a1 + 112);
  swift_beginAccess();
  if (v16 != *(a2 + 112))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v17 = *(a1 + 120);
  swift_beginAccess();
  if (v17 != *(a2 + 120))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v18 = *(a1 + 128);
  swift_beginAccess();
  if (v18 != *(a2 + 128))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v19 = *(a1 + 136);
  swift_beginAccess();
  if (v19 != *(a2 + 136))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v20 = *(a1 + 144);
  swift_beginAccess();
  if (v20 != *(a2 + 144))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v21 = *(a1 + 152);
  swift_beginAccess();
  if (v21 != *(a2 + 152))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v22 = *(a1 + 160);
  swift_beginAccess();
  if (v22 != *(a2 + 160))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v23 = *(a1 + 168);
  swift_beginAccess();
  if (v23 != *(a2 + 168))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v24 = *(a1 + 176);
  swift_beginAccess();
  if (v24 != *(a2 + 176))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v25 = *(a1 + 184);
  swift_beginAccess();
  if (v25 != *(a2 + 184))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v26 = *(a1 + 185);
  swift_beginAccess();
  if (v26 != *(a2 + 185))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v27 = *(a1 + 192);
  swift_beginAccess();
  if (v27 != *(a2 + 192))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v28 = *(a1 + 200);
  swift_beginAccess();
  if (v28 != *(a2 + 200))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v29 = *(a1 + 208);
  swift_beginAccess();
  if (v29 != *(a2 + 208))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v30 = *(a1 + 216);
  swift_beginAccess();
  if (v30 != *(a2 + 216))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v31 = *(a1 + 224);
  swift_beginAccess();
  if (v31 != *(a2 + 224))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v32 = *(a1 + 225);
  swift_beginAccess();
  if (v32 != *(a2 + 225))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v33 = *(a1 + 232);
  swift_beginAccess();
  if (v33 != *(a2 + 232))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v34 = *(a1 + 240);
  swift_beginAccess();
  if (v34 != *(a2 + 240))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v35 = *(a1 + 248);
  swift_beginAccess();
  if (v35 != *(a2 + 248))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v36 = *(a1 + 256);
  swift_beginAccess();
  v37 = v36 ^ *(a2 + 256) ^ 1;
  return v37 & 1;
}

uint64_t sub_1000D9E74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CBD8, type metadata accessor for GetRepairActionResponse, &protocol conformance descriptor for GetRepairActionResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D9F14(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298F30, type metadata accessor for GetRepairActionResponse, &protocol conformance descriptor for GetRepairActionResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D9F80(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298F30, type metadata accessor for GetRepairActionResponse, &protocol conformance descriptor for GetRepairActionResponse);

  return sub_100216644();
}

uint64_t sub_1000D9FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 != v5 && (sub_1000D9628(v4, v5) & 1) == 0)
  {
    return 0;
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000DA0D0()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static GetEscrowCheckResponse._protobuf_nameMap);
  sub_100002648(v0, static GetEscrowCheckResponse._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DFA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "escrow_check_result";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "escrow_record_move_request";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "escrow_proxy_error";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "escrow_repair_reason";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "graph_status";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "repair_disabled";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  return sub_100216724();
}

uint64_t GetEscrowCheckResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100216534();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            v11 = v4;
            sub_1000FA0E0();
            goto LABEL_5;
          case 5:
            v11 = v4;
            sub_1000FA134();
            goto LABEL_5;
          case 6:
            goto LABEL_16;
        }
      }

      else
      {
        if (result == 1)
        {
          v11 = v4;
          sub_1000FA08C();
LABEL_5:
          v4 = v11;
          sub_100216564();
          goto LABEL_6;
        }

        if (result != 2)
        {
          if (result != 3)
          {
            goto LABEL_6;
          }

LABEL_16:
          sub_100216554();
          goto LABEL_6;
        }

        sub_1000DA534(a1, v5, a2, a3);
      }

LABEL_6:
      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000DA534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for GetEscrowCheckResponse(0);
  type metadata accessor for EscrowProxyFederationMoveRecordRequest(0);
  sub_1000F9F28(&qword_100298F18, type metadata accessor for EscrowProxyFederationMoveRecordRequest, &protocol conformance descriptor for EscrowProxyFederationMoveRecordRequest);
  return sub_1002165F4();
}

uint64_t GetEscrowCheckResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_1000FA08C(), result = sub_100216674(), !v4))
  {
    result = sub_1000DA7A0(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3 + 9) == 1)
      {
        sub_100216664();
      }

      if (*(v3 + 16))
      {
        sub_1000FA0E0();
        sub_100216674();
      }

      if (*(v3 + 32))
      {
        sub_1000FA134();
        sub_100216674();
      }

      if (*(v3 + 41) == 1)
      {
        sub_100216664();
      }

      type metadata accessor for GetEscrowCheckResponse(0);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000DA7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&unk_10029D720, &qword_10021E868);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for EscrowProxyFederationMoveRecordRequest(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GetEscrowCheckResponse(0);
  sub_100019C6C(a1 + *(v14 + 40), v8, &unk_10029D720, &qword_10021E868);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D720, &qword_10021E868);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
  sub_1000F9F28(&qword_100298F18, type metadata accessor for EscrowProxyFederationMoveRecordRequest, &protocol conformance descriptor for EscrowProxyFederationMoveRecordRequest);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
}

uint64_t sub_1000DAA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = *(a1 + 40);
  v5 = type metadata accessor for EscrowProxyFederationMoveRecordRequest(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1000DAAD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CBD0, type metadata accessor for GetEscrowCheckResponse, &protocol conformance descriptor for GetEscrowCheckResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DAB74(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298F48, type metadata accessor for GetEscrowCheckResponse, &protocol conformance descriptor for GetEscrowCheckResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DABE0(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298F48, type metadata accessor for GetEscrowCheckResponse, &protocol conformance descriptor for GetEscrowCheckResponse);

  return sub_100216644();
}

uint64_t sub_1000DAC8C()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static SupportAppView._protobuf_nameMap);
  sub_100002648(v0, static SupportAppView._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "last_report";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "enabled";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t SupportAppView.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_100216534();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_100216554();
        break;
      case 2:
        sub_1000DAFA0(a1, v5, a2, a3);
        break;
      case 1:
        sub_1002165B4();
        break;
    }
  }

  return result;
}

uint64_t sub_1000DAFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SupportAppView(0);
  sub_1002164A4();
  sub_1000F9F28(&qword_10029CD98, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
  return sub_1002165F4();
}

uint64_t SupportAppView.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1002166C4(), !v4))
  {
    result = sub_1000DB128(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3 + 16) == 1)
      {
        sub_100216664();
      }

      type metadata accessor for SupportAppView(0);
      return sub_1002164B4();
    }
  }

  return result;
}

uint64_t sub_1000DB128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = sub_1002164A4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SupportAppView(0);
  sub_100019C6C(a1 + *(v14 + 28), v8, &qword_10029D780, &qword_1002265D0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_10029D780, &qword_1002265D0);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_1000F9F28(&qword_10029CD98, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
  sub_100216704();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1000DB390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = *(a1 + 28);
  v5 = sub_1002164A4();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1000DB44C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CBC8, type metadata accessor for SupportAppView, &protocol conformance descriptor for SupportAppView);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DB4EC(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_1002988B8, type metadata accessor for SupportAppView, &protocol conformance descriptor for SupportAppView);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DB558(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_1002988B8, type metadata accessor for SupportAppView, &protocol conformance descriptor for SupportAppView);

  return sub_100216644();
}

uint64_t sub_1000DB5FC()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static SupportAppDevice._protobuf_nameMap);
  sub_100002648(v0, static SupportAppDevice._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10021D5F0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "sos";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = sub_100216714();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "octagon";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "escrow";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "serial_number";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "views";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "last_health_report";
  *(v17 + 1) = 18;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "status";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "model_id";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  return sub_100216724();
}

uint64_t SupportAppDevice.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100216534();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result != 7)
          {
            if (result != 8)
            {
              goto LABEL_5;
            }

            goto LABEL_19;
          }

          sub_1000FA188();
          sub_100216564();
        }

        else if (result == 5)
        {
          type metadata accessor for SupportAppView(0);
          sub_1000F9F28(&qword_1002988B8, type metadata accessor for SupportAppView, &protocol conformance descriptor for SupportAppView);
          sub_1002165E4();
        }

        else
        {
          sub_1000DBB68(a1, v5, a2, a3, type metadata accessor for SupportAppDevice);
        }
      }

      else
      {
        if (result > 2)
        {
          if (result == 3)
          {
            goto LABEL_4;
          }

LABEL_19:
          sub_1002165B4();
          goto LABEL_5;
        }

        if (result == 1 || result == 2)
        {
LABEL_4:
          sub_100216554();
        }
      }

LABEL_5:
      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000DBB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  sub_1002164A4();
  sub_1000F9F28(&qword_10029CD98, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
  return sub_1002165F4();
}

uint64_t SupportAppDevice.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_100216664(), !v4))
  {
    if (*(v3 + 1) != 1 || (result = sub_100216664(), !v4))
    {
      if (*(v3 + 2) != 1 || (result = sub_100216664(), !v4))
      {
        v9 = *(v3 + 16);
        v10 = HIBYTE(v9) & 0xF;
        if ((v9 & 0x2000000000000000) == 0)
        {
          v10 = *(v3 + 8) & 0xFFFFFFFFFFFFLL;
        }

        if (!v10 || (result = sub_1002166C4(), !v4))
        {
          if (!*(*(v3 + 24) + 16) || (type metadata accessor for SupportAppView(0), sub_1000F9F28(&qword_1002988B8, type metadata accessor for SupportAppView, &protocol conformance descriptor for SupportAppView), result = sub_1002166F4(), !v4))
          {
            result = sub_1000DF788(v3, a1, a2, a3, type metadata accessor for SupportAppDevice, 6);
            if (!v4)
            {
              if (*(v3 + 32))
              {
                sub_1000FA188();
                sub_100216674();
              }

              v11 = *(v3 + 56);
              v12 = HIBYTE(v11) & 0xF;
              if ((v11 & 0x2000000000000000) == 0)
              {
                v12 = *(v3 + 48) & 0xFFFFFFFFFFFFLL;
              }

              if (v12)
              {
                sub_1002166C4();
              }

              type metadata accessor for SupportAppDevice(0);
              return sub_1002164B4();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000DBEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 2) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v4 = *(a1 + 48);
  v5 = sub_1002164A4();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1000DBF84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CBC0, type metadata accessor for SupportAppDevice, &protocol conformance descriptor for SupportAppDevice);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DC024(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_1002988D8, type metadata accessor for SupportAppDevice, &protocol conformance descriptor for SupportAppDevice);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DC090(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_1002988D8, type metadata accessor for SupportAppDevice, &protocol conformance descriptor for SupportAppDevice);

  return sub_100216644();
}

uint64_t sub_1000DC134()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static GetSupportAppInfoRequest._protobuf_nameMap);
  sub_100002648(v0, static GetSupportAppInfoRequest._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DBE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "metrics";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "accountInfo";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "page";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t GetSupportAppInfoRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_100216534();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1002165D4();
        break;
      case 2:
        sub_1000DC4F8(a1, v5, a2, a3);
        break;
      case 1:
        sub_1000DC444(a1, v5, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_1000DC444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for GetSupportAppInfoRequest(0);
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  return sub_1002165F4();
}

uint64_t sub_1000DC4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for GetSupportAppInfoRequest(0);
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  return sub_1002165F4();
}

uint64_t GetSupportAppInfoRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000DC660(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1000DC87C(v3, a1, a2, a3);
    if (*v3)
    {
      sub_1002166E4();
    }

    type metadata accessor for GetSupportAppInfoRequest(0);
    return sub_1002164B4();
  }

  return result;
}

uint64_t sub_1000DC660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Metrics(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  SupportAppInfoRequest = type metadata accessor for GetSupportAppInfoRequest(0);
  sub_100019C6C(a1 + *(SupportAppInfoRequest + 24), v8, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for Metrics);
}

uint64_t sub_1000DC87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for AccountInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  SupportAppInfoRequest = type metadata accessor for GetSupportAppInfoRequest(0);
  sub_100019C6C(a1 + *(SupportAppInfoRequest + 28), v8, &unk_10029D6F0, &qword_100226B40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for AccountInfo);
}

uint64_t sub_1000DCAEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  *a3 = a2;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Metrics(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 1, 1, v6);
  v7 = *(a1 + 28);
  v8 = type metadata accessor for AccountInfo(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a3[v7], 1, 1, v8);
}

uint64_t sub_1000DCBEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CBB8, type metadata accessor for GetSupportAppInfoRequest, &protocol conformance descriptor for GetSupportAppInfoRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DCC8C(uint64_t a1)
{
  v2 = sub_1000F9F28(&qword_100298F80, type metadata accessor for GetSupportAppInfoRequest, &protocol conformance descriptor for GetSupportAppInfoRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DCCF8(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&qword_100298F80, type metadata accessor for GetSupportAppInfoRequest, &protocol conformance descriptor for GetSupportAppInfoRequest);

  return sub_100216644();
}

uint64_t sub_1000DCD9C()
{
  v0 = sub_100216744();
  sub_1000025E4(v0, static GetSupportAppInfoResponse._protobuf_nameMap);
  sub_100002648(v0, static GetSupportAppInfoResponse._protobuf_nameMap);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v1 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10021DFE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "devices";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_100216714();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "passwordKeychainItemCount";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "totalDevices";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "paginationToken";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "more";
  *(v15 + 8) = 4;
  *(v15 + 16) = 2;
  v9();
  return sub_100216724();
}

uint64_t GetSupportAppInfoResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100216534();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

LABEL_14:
          sub_1002165D4();
          goto LABEL_5;
        }

        type metadata accessor for SupportAppDevice(0);
        sub_1000F9F28(&qword_1002988D8, type metadata accessor for SupportAppDevice, &protocol conformance descriptor for SupportAppDevice);
        sub_1002165E4();
      }

      else
      {
        switch(result)
        {
          case 3:
            goto LABEL_14;
          case 4:
            sub_1002165B4();
            break;
          case 5:
            sub_100216554();
            break;
        }
      }

LABEL_5:
      result = sub_100216534();
    }
  }

  return result;
}

uint64_t GetSupportAppInfoResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for SupportAppDevice(0), sub_1000F9F28(&qword_1002988D8, type metadata accessor for SupportAppDevice, &protocol conformance descriptor for SupportAppDevice), result = sub_1002166F4(), !v4))
  {
    if (!*(v3 + 8) || (result = sub_1002166E4(), !v4))
    {
      if (!*(v3 + 16) || (result = sub_1002166E4(), !v4))
      {
        v6 = *(v3 + 32);
        v7 = HIBYTE(v6) & 0xF;
        if ((v6 & 0x2000000000000000) == 0)
        {
          v7 = *(v3 + 24) & 0xFFFFFFFFFFFFLL;
        }

        if (!v7 || (result = sub_1002166C4(), !v4))
        {
          if (*(v3 + 40) != 1 || (result = sub_100216664(), !v4))
          {
            type metadata accessor for GetSupportAppInfoResponse(0);
            return sub_1002164B4();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000DD390@<X0>(uint64_t a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = 0;
  return _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
}

uint64_t sub_1000DD3FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F9F28(&qword_10029CBB0, type metadata accessor for GetSupportAppInfoResponse, &protocol conformance descriptor for GetSupportAppInfoResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DD49C(uint64_t a1)
{
  v2 = sub_1000F9F28(&unk_10029D700, type metadata accessor for GetSupportAppInfoResponse, &protocol conformance descriptor for GetSupportAppInfoResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DD508(uint64_t a1, uint64_t a2)
{
  sub_1000F9F28(&unk_10029D700, type metadata accessor for GetSupportAppInfoResponse, &protocol conformance descriptor for GetSupportAppInfoResponse);

  return sub_100216644();
}

uint64_t sub_1000DD5B8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100216744();
  sub_1000025E4(v3, a2);
  sub_100002648(v3, a2);
  sub_10001148C(&qword_10029CD80, &qword_100225CF0);
  v4 = (sub_10001148C(&qword_10029CD88, &qword_100225CF8) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10021DFC0;
  v7 = v23 + v6 + v4[14];
  *(v23 + v6) = 1;
  *v7 = "reset_reason";
  *(v7 + 8) = 12;
  *(v7 + 16) = 2;
  v8 = enum case for _NameMap.NameDescription.standard(_:);
  v9 = sub_100216714();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v23 + v6 + v5 + v4[14];
  *(v23 + v6 + v5) = 2;
  *v11 = "idmsTargetContext";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v10();
  v12 = (v23 + v6 + 2 * v5);
  v13 = v12 + v4[14];
  *v12 = 3;
  *v13 = "idmsCuttlefishPassword";
  *(v13 + 1) = 22;
  v13[16] = 2;
  v10();
  v14 = (v23 + v6 + 3 * v5);
  v15 = v14 + v4[14];
  *v14 = 4;
  *v15 = "testingNotifyIdms";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v10();
  v16 = (v23 + v6 + 4 * v5);
  v17 = v16 + v4[14];
  *v16 = 5;
  *v17 = "accountInfo";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v10();
  v18 = (v23 + v6 + 5 * v5);
  v19 = v18 + v4[14];
  *v18 = 6;
  *v19 = "metrics";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v10();
  v20 = (v23 + v6 + 6 * v5);
  v21 = v20 + v4[14];
  *v20 = 8;
  *v21 = "isDBRv2";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v10();
  return sub_100216724();
}

uint64_t sub_1000DD944(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  result = sub_100216534();
  if (!v6)
  {
    while (1)
    {
      if (v14)
      {
        return result;
      }

      if (result <= 3)
      {
        if (result == 1)
        {
          sub_1000F9FC4();
          sub_100216564();
        }

        else if (result == 2 || result == 3)
        {
          sub_1002165B4();
        }
      }

      else
      {
        if (result <= 5)
        {
          if (result != 4)
          {
            a4(a1, v9, a2, a3);
            goto LABEL_5;
          }

LABEL_17:
          sub_100216554();
          goto LABEL_5;
        }

        if (result != 6)
        {
          if (result != 8)
          {
            goto LABEL_5;
          }

          goto LABEL_17;
        }

        a5(a1, v9, a2, a3);
      }

LABEL_5:
      result = sub_100216534();
    }
  }

  return result;
}

uint64_t sub_1000DDAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResetAccountCDPContentsRequest(0);
  type metadata accessor for AccountInfo(0);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  return sub_1002165F4();
}

uint64_t sub_1000DDB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResetAccountCDPContentsRequest(0);
  type metadata accessor for Metrics(0);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  return sub_1002165F4();
}

uint64_t sub_1000DDC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t *, uint64_t, uint64_t, uint64_t), void (*a6)(void))
{
  if (!*v6 || (sub_1000F9FC4(), result = sub_100216674(), !v7))
  {
    v15 = *(v6 + 24);
    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = *(v6 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v16 || (result = sub_1002166C4(), !v7))
    {
      v17 = *(v6 + 40);
      v18 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v18 = *(v6 + 32) & 0xFFFFFFFFFFFFLL;
      }

      if (!v18 || (result = sub_1002166C4(), !v7))
      {
        if (*(v6 + 48) != 1 || (result = sub_100216664(), !v7))
        {
          result = a4(v6, a1, a2, a3);
          if (!v7)
          {
            a5(v6, a1, a2, a3);
            if (*(v6 + 49) == 1)
            {
              sub_100216664();
            }

            a6(0);
            return sub_1002164B4();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000DDE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for AccountInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ResetAccountCDPContentsRequest(0);
  sub_100019C6C(a1 + *(v14 + 40), v8, &unk_10029D6F0, &qword_100226B40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &unk_10029D6F0, &qword_100226B40);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for AccountInfo);
  sub_1000F9F28(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for AccountInfo);
}

uint64_t sub_1000DE044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Metrics(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ResetAccountCDPContentsRequest(0);
  sub_100019C6C(a1 + *(v14 + 44), v8, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000114D4(v8, &qword_100297FE0, &unk_10021E7F0);
  }

  sub_1000F89AC(v8, v13, type metadata accessor for Metrics);
  sub_1000F9F28(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  sub_100216704();
  return sub_1000F9228(v13, type metadata accessor for Metrics);
}