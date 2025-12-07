uint64_t sub_10013F878@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v98 = a2;
  v91 = a1;
  v88 = a4;
  v122 = type metadata accessor for SymmetricKey();
  v101 = *(v122 - 8);
  __chkstk_darwin();
  v89 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v99 = &v87 - v7;
  __chkstk_darwin();
  v100 = &v87 - v8;
  sub_10005DC58(&unk_10059A690, &unk_1004884D0);
  __chkstk_darwin();
  v92 = &v87 - v9;
  sub_10005DC58(&unk_100595C50, &unk_1004AFD20);
  __chkstk_darwin();
  v11 = &v87 - v10;
  v12 = type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement(0);
  v95 = *(v12 - 8);
  __chkstk_darwin();
  v96 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v97 = (&v87 - v14);
  __chkstk_darwin();
  v90 = (&v87 - v15);
  v16 = *(a3 + 32);
  *v120 = *(a3 + 16);
  *&v120[16] = v16;
  v17 = type metadata accessor for NANPairing.PASN.State(0, v120);
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = &v87 - v19;
  v93 = type metadata accessor for NANPairing.GeneratedKeys(0);
  v21 = __chkstk_darwin();
  v23 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20, v4 + *(a3 + 96), v17, v21);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v18 + 8))(v20, v17);
    sub_10000B02C();
    swift_allocError();
    *v32 = xmmword_1004881C0;
    *(v32 + 16) = 1;
    return swift_willThrow();
  }

  sub_100142410(v20, v23, type metadata accessor for NANPairing.GeneratedKeys);
  v24 = sub_10012C0E8(a3);
  v25 = v23;
  v87 = a3;
  if ((v24 & 1) != 0 && (v26 = type metadata accessor for NANIdentityKey(0), v27 = *(*(v26 - 8) + 48), v28 = v91, v27(v91, 1, v26) != 1))
  {
    sub_100012400(v28, v11, &unk_100595C50, &unk_1004AFD20);
    result = v27(v11, 1, v26);
    if (result == 1)
    {
      goto LABEL_30;
    }

    v34 = v90;
    *v90 = 26898256;
    sub_100142410(v11, v34 + *(v12 + 24), type metadata accessor for NANIdentityKey);
    type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData(0);
    swift_storeEnumTagMultiPayload();
    v29 = sub_100117494(0, 1, 1, _swiftEmptyArrayStorage);
    v36 = v29[2];
    v35 = v29[3];
    if (v36 >= v35 >> 1)
    {
      v29 = sub_100117494((v35 > 1), v36 + 1, 1, v29);
    }

    v30 = v122;
    v31 = v101;
    v29[2] = v36 + 1;
    sub_100142410(v34, v29 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v36, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "NIK: Adding NIK", v39, 2u);
    }
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
    v30 = v122;
    v31 = v101;
  }

  v40 = *(v31 + 6);
  v41 = v98;
  v42 = v40(v98, 1, v30);
  v43 = v99;
  if (v42 != 1)
  {
    v45 = v41;
    v46 = v92;
    sub_100012400(v45, v92, &unk_10059A690, &unk_1004884D0);
    result = v40(v46, 1, v30);
    if (result != 1)
    {
      v47 = v97;
      NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.init(keyID:iGTK:)(1, v46, v97);
      sub_10012A6E4(v47, v96, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);
      v44 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_100117494(0, v29[2] + 1, 1, v29);
      }

      v49 = v29[2];
      v48 = v29[3];
      if (v49 >= v48 >> 1)
      {
        v29 = sub_100117494((v48 > 1), v49 + 1, 1, v29);
      }

      v29[2] = v49 + 1;
      sub_100142410(v96, v29 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v49, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "IGTK: Adding iGTKKDE", v52, 2u);
        v43 = v99;
      }

      sub_10012A684(v97, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);
      goto LABEL_22;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  v44 = v25;
LABEL_22:
  v53 = v100;
  if (v29[2])
  {
    LODWORD(v96) = *(v4 + *(v87 + 84));
    v54 = v101;
    v55 = *(v101 + 2);
    v95 = *(v93 + 32);
    v56 = v44 + v95;
    v99 = v44;
    v57 = v122;
    v55(v100, v56, v122);
    v55(v43, v53, v57);
    type metadata accessor for __DataStorage();
    swift_allocObject();

    v98 = __DataStorage.init(length:)() | 0x4000000000000000;
    swift_allocObject();
    v97 = (__DataStorage.init(length:)() | 0x4000000000000000);
    swift_allocObject();
    v58 = __DataStorage.init(length:)() | 0x4000000000000000;
    v59 = v29;
    v60 = v94;
    v61 = sub_100275C0C(v29, v43);
    v63 = v43;
    v64 = v54;
    v65 = v99;
    if (v60)
    {
      v66 = *(v64 + 1);
      v66(v43, v57);

      sub_1000124C8(0x2000000000, v98);
      sub_1000124C8(0x1000000000, v97);
      sub_1000124C8(0x1000000000, v58);
      v66(v100, v57);
      sub_10012A684(v65, type metadata accessor for NANPairing.GeneratedKeys);
    }

    else
    {
      v71 = v61;
      v72 = v62;
      v73 = *(v64 + 1);
      v73(v63, v57);

      LOBYTE(v103[0]) = 1;
      *(v103 + 2) = 4232;
      *(v103 + 8) = xmmword_1004881D0;
      *(&v103[1] + 1) = v98;
      *&v104 = 0x1000000000;
      *(&v104 + 1) = v97;
      v105 = 0uLL;
      *&v106 = 0x1000000000;
      *(&v106 + 1) = v58;
      *&v107 = v71;
      *(&v107 + 1) = v72;
      v108[0] = 1;
      v109 = 4232;
      v110 = xmmword_1004881D0;
      v111 = v98;
      v112 = 0x1000000000;
      v113 = v97;
      v114 = 0;
      v115 = 0;
      v116 = 0x1000000000;
      v117 = v58;
      v118 = v71;
      v119 = v72;
      sub_100143E5C(v103, v102);
      sub_100143EB8(v108);
      v101 = v73;
      v73(v100, v122);
      *&v121[7] = v103[0];
      *&v121[23] = v103[1];
      *&v121[39] = v104;
      *&v121[87] = v107;
      *&v121[71] = v106;
      *&v121[55] = v105;
      v120[0] = v96;
      *&v120[33] = *&v121[32];
      *&v120[17] = *&v121[16];
      *&v120[1] = *v121;
      *&v120[96] = *(&v107 + 1);
      *&v120[81] = *&v121[80];
      *&v120[65] = *&v121[64];
      *&v120[49] = *&v121[48];
      sub_100143F0C(v120, v102);
      v74 = sub_100276A4C(v59);
      v76 = v75;

      sub_100143F68(v120);
      v102[0] = v74;
      v102[1] = v76;
      sub_10000AB0C(v74, v76);
      v77 = v89;
      SymmetricKey.init<A>(data:)();
      v78 = v99;
      v79 = static AES.KeyWrap.wrap(_:using:)();
      v80 = v74;
      v82 = v81;
      sub_1000124C8(v80, v76);
      v101(v77, v122);
      sub_10012A684(v78, type metadata accessor for NANPairing.GeneratedKeys);
      result = sub_1000124C8(v79, v82);
      v83 = *&v120[80];
      v84 = v88;
      *(v88 + 64) = *&v120[64];
      *(v84 + 80) = v83;
      *(v84 + 96) = *&v120[96];
      v85 = *&v120[16];
      *v84 = *v120;
      *(v84 + 16) = v85;
      v86 = *&v120[48];
      *(v84 + 32) = *&v120[32];
      *(v84 + 48) = v86;
    }
  }

  else
  {

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "No KDEs found for generating the shared key descriptor!", v69, 2u);
    }

    sub_10000B02C();
    swift_allocError();
    *v70 = xmmword_1004881C0;
    *(v70 + 16) = 1;
    swift_willThrow();
    return sub_10012A684(v44, type metadata accessor for NANPairing.GeneratedKeys);
  }

  return result;
}

void *sub_100140548(void *a1, uint64_t a2)
{
  v27 = type metadata accessor for SymmetricKey();
  v26 = *(v27 - 8);
  __chkstk_darwin();
  v37 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 32);
  v29[0] = *(a2 + 16);
  v29[1] = v7;
  v8 = type metadata accessor for NANPairing.PASN.State(0, v29);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v26 - v10;
  v12 = type metadata accessor for NANPairing.GeneratedKeys(0);
  v13 = __chkstk_darwin();
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v2 + *(a2 + 96), v8, v13);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_100142410(v11, v15, type metadata accessor for NANPairing.GeneratedKeys);
    v16 = *(a1 + 7);
    v32 = *(a1 + 5);
    v33 = v16;
    v17 = *(a1 + 11);
    v34 = *(a1 + 9);
    v35 = v17;
    v18 = *(a1 + 3);
    v30 = *(a1 + 1);
    v31 = v18;
    v19 = NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.decryptKeyData(using:)(&v15[*(v12 + 32)], v30);
    if (v3)
    {
      sub_10012A684(v15, type metadata accessor for NANPairing.GeneratedKeys);
    }

    else
    {
      a1 = v19;
      if (!v19[2])
      {
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v20, v21, "verify: No KDEs in the SKD", v22, 2u);
        }
      }

      v36 = v35;
      v29[0] = v35;
      sub_100142478(&v36, v28);
      sub_1000BA0A4();
      v23 = v37;
      static AES.KeyWrap.unwrap<A>(_:using:)();
      sub_1000124C8(*&v29[0], *(&v29[0] + 1));
      SymmetricKey.withUnsafeBytes<A>(_:)();
      (*(v26 + 8))(v23, v27);
      sub_10012A684(v15, type metadata accessor for NANPairing.GeneratedKeys);
      sub_1000124C8(*&v29[0], *(&v29[0] + 1));
    }
  }

  else
  {
    (*(v9 + 8))(v11, v8);
    sub_10000B02C();
    swift_allocError();
    *v24 = xmmword_1004881C0;
    *(v24 + 16) = 1;
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_100140958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72 = a2;
  v69 = a1;
  v70 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  __chkstk_darwin();
  v71 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for SymmetricKey();
  v74 = *(v75 - 8);
  __chkstk_darwin();
  v73 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s3SAEVMa(0);
  __chkstk_darwin();
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NANPairing.Mode(0);
  __chkstk_darwin();
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 32);
  v76 = *(a3 + 16);
  v77 = v11;
  v12 = type metadata accessor for NANPairing.PASN.State(0, &v76);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v66 - v14;
  type metadata accessor for NANPairing.GeneratedKeys(0);
  v16 = __chkstk_darwin();
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, v3 + *(a3 + 96), v12, v16);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v13 + 8))(v15, v12);
    sub_10000B02C();
    swift_allocError();
    *v43 = xmmword_1004881C0;
    *(v43 + 16) = 1;
    return swift_willThrow();
  }

  sub_100142410(v15, v18, type metadata accessor for NANPairing.GeneratedKeys);
  sub_10012A6E4(v3 + *(a3 + 52), v10, type metadata accessor for NANPairing.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = v3;
  v21 = v18;
  if (!EnumCaseMultiPayload)
  {
    v45 = *(v10 + 5);
    v80 = *(v10 + 4);
    v81 = v45;
    v82 = *(v10 + 48);
    v46 = *(v10 + 1);
    v76 = *v10;
    v77 = v46;
    v47 = *(v10 + 3);
    v78 = *(v10 + 2);
    v79 = v47;
    sub_100141458(&v76);
    v48 = sub_10005DC58(&qword_10058DBB8, &qword_100488200);
    sub_100142410(&v10[*(v48 + 48)], v8, _s3SAEVMa);
    v49 = v88;
    sub_1002217CC(v50);
    if (v49)
    {
      v55 = _s3SAEVMa;
LABEL_15:
      sub_10012A684(v8, v55);
      return sub_10012A684(v21, type metadata accessor for NANPairing.GeneratedKeys);
    }

    v56 = v51;
    v41 = v52;
    v57 = v53;
    v58 = v54;
    sub_10012A684(v8, _s3SAEVMa);
    sub_1000124C8(v57, v58);
LABEL_12:
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Paired Peer: Installing peer NIK", v61, 2u);
    }

    v62 = *(v20 + *(a3 + 72));
    v63 = *(v20 + *(a3 + 56));
    v8 = v71;
    sub_10012A6E4(v69, v71, type metadata accessor for NANIdentityKey);
    v64 = v70;
    v8[*(v70 + 20)] = v62;
    v8[v64[6]] = v63;
    v65 = &v8[v64[7]];
    *v65 = v56;
    v65[1] = v41;
    *&v8[v64[8]] = 0;
    sub_10000AB0C(v56, v41);
    LongTermPairingKeyStore.installPairedPeer(with:)(v8);
    sub_1000124C8(v56, v41);
    v55 = type metadata accessor for NANPairedDeviceSharedAssociation;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_10012A684(v18, type metadata accessor for NANPairing.GeneratedKeys);
    return sub_10012A684(v10, type metadata accessor for NANPairing.Mode);
  }

  sub_10012A684(v10, type metadata accessor for NANPairing.Mode);
  v84 = sub_10016FD40(0xD000000000000020, 0x80000001004B9920);
  v85 = v22;
  v23 = v3 + *(a3 + 76);
  v24 = *(v23 + 4);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v25 = swift_allocObject();
  v68 = xmmword_1004817D0;
  *(v25 + 16) = xmmword_1004817D0;
  *(v25 + 32) = *v23;
  *(v25 + 36) = v24;
  v26 = sub_10002D874(v25);
  v28 = v27;

  v29 = *(a3 + 80);
  v67 = v3;
  v30 = (v3 + v29);
  v31 = *(v3 + v29 + 4);
  v32 = swift_allocObject();
  *(v32 + 16) = v68;
  *(v32 + 32) = *v30;
  *(v32 + 36) = v31;
  v33 = sub_10002D874(v32);
  v35 = v34;

  *&v83 = v26;
  *(&v83 + 1) = v28;
  *(&v77 + 1) = &type metadata for Data;
  *&v78 = &protocol witness table for Data;
  *&v76 = v33;
  *(&v76 + 1) = v35;
  v36 = sub_100029B34(&v76, &type metadata for Data);
  v37 = *v36;
  v38 = v36[1];
  sub_10000AB0C(v26, v28);
  sub_10000AB0C(v33, v35);
  v39 = v38;
  v21 = v18;
  sub_100178A18(v37, v39, &v83);
  sub_1000124C8(v33, v35);
  sub_1000124C8(v26, v28);
  sub_100002A00(&v76);
  v76 = v83;
  type metadata accessor for SHA256();
  sub_10014400C(&qword_10059AB90, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  sub_1000BA0A4();
  v40 = v73;
  static HKDF.deriveKey<A, B>(inputKeyMaterial:salt:info:outputByteCount:)();
  sub_1000124C8(v76, *(&v76 + 1));
  sub_1000124C8(v84, v85);
  sub_10005DC58(&qword_10058DF50, &qword_1004884C8);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  (*(v74 + 8))(v40, v75);
  v41 = v87;
  if (v87 >> 60 != 15)
  {
    v56 = v86;
    v20 = v67;
    goto LABEL_12;
  }

  sub_10000B02C();
  swift_allocError();
  *v42 = xmmword_1004881C0;
  *(v42 + 16) = 1;
  swift_willThrow();
  return sub_10012A684(v21, type metadata accessor for NANPairing.GeneratedKeys);
}

uint64_t sub_100141254(uint64_t a1)
{
  result = sub_10012DAB4(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1001412D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(a1, a2, a3, a4, a5, a6);
  if (v7)
  {
    return v9;
  }

  return result;
}

__n128 sub_100141318@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_10013F878(a1, a2, a3, v9);
  if (!v4)
  {
    v7 = v9[5];
    *(a4 + 64) = v9[4];
    *(a4 + 80) = v7;
    *(a4 + 96) = v10;
    v8 = v9[1];
    *a4 = v9[0];
    *(a4 + 16) = v8;
    result = v9[3];
    *(a4 + 32) = v9[2];
    *(a4 + 48) = result;
  }

  return result;
}

void *sub_10014150C()
{
  result = qword_10058DCC0;
  if (!qword_10058DCC0)
  {
    result = &type metadata for Data;
    atomic_store(&type metadata for Data, &qword_10058DCC0);
  }

  return result;
}

void sub_10014153C(uint64_t a1, __n128 a2)
{
  if (!qword_10058DCC8)
  {
    type metadata accessor for NANPairing.GeneratedKeys(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_10058DCC8);
    }
  }
}

void sub_1001415C8()
{
  if (!qword_10058DCD0)
  {
    v0 = type metadata accessor for NANPairing.GeneratedKeys(0);
    if (!v1)
    {
      atomic_store(v0, &qword_10058DCD0);
    }
  }
}

uint64_t sub_100141638(uint64_t a1)
{
  result = type metadata accessor for SymmetricKey();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001416B8(uint64_t a1)
{
  v1 = *(a1 + 24) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_1001416E0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10014170C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[98])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100141760(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 98) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 98) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100141814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t), uint64_t a7)
{
  result = a4(319, a2, a3);
  if (v10 <= 0x3F)
  {
    result = a5(319);
    if (v11 <= 0x3F)
    {
      result = a6(319);
      if (v12 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1001418BC(uint64_t a1, __n128 a2)
{
  if (!qword_10058DDF8)
  {
    _s3SAEVMa(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_10058DDF8);
    }
  }
}

ValueMetadata *sub_100141928()
{
  result = qword_10058DE00;
  if (!qword_10058DE00)
  {
    result = &type metadata for NANPairing.PairSetupParameters;
    atomic_store(&type metadata for NANPairing.PairSetupParameters, &qword_10058DE00);
  }

  return result;
}

uint64_t sub_100141960(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    v10 = 0;
    v16 = result;
    result = type metadata accessor for NANPairing.Mode(319);
    if (v4 <= 0x3F)
    {
      v17 = result;
      v18 = &type metadata for NANCipherSuite;
      v11 = 0;
      v19 = &type metadata for IEEE80211InformationElement.IEEE80211CipherSuite;
      v20 = &type metadata for IEEE80211Frame.Management.Authentication.FiniteCyclicGroup;
      result = type metadata accessor for SymmetricKeySize();
      if (v5 <= 0x3F)
      {
        v21 = result;
        v22 = &type metadata for IEEE80211InformationElement.AuthenticationKeyManagementSuite;
        v12 = 0;
        v23 = &type metadata for WiFiAddress;
        v24 = &type metadata for WiFiAddress;
        v13 = 0;
        v25 = &type metadata for UInt8;
        result = swift_checkMetadataState();
        if (v6 <= 0x3F)
        {
          v14 = 0;
          v26 = result;
          v27 = &type metadata for Bool;
          v8[0] = *(a1 + 16);
          v8[1] = result;
          v9 = *(a1 + 32);
          result = type metadata accessor for NANPairing.PASN.State(319, v8);
          if (v7 <= 0x3F)
          {
            v15 = 0;
            v28 = result;
            v29 = &type metadata for Int;
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100141A94(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v51 = type metadata accessor for Logger();
  v5 = *(v51 - 8);
  v6 = *(v5 + 84);
  v50 = v5;
  v7 = *(v5 + 80);
  v8 = v7 | 7;
  v9 = *(v5 + 64);
  v10 = (((v7 | 7) + 98) & ~(v7 | 7)) + ((v9 + ((v7 + 13) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = *(type metadata accessor for SymmetricKey() - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 64);
  v14 = ((v13 + 7 + ((v12 + 16 + ((v13 + 7 + ((v12 + 16) & ~v12)) & 0xFFFFFFFFFFFFFFF8)) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v10 > v14)
  {
    v14 = v10;
  }

  if (v14 <= 0x62)
  {
    v15 = 98;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(type metadata accessor for SymmetricKeySize() - 8);
  v17 = v16;
  v18 = *(v16 + 84);
  if (v6 <= v18)
  {
    v19 = *(v16 + 84);
  }

  else
  {
    v19 = v6;
  }

  v20 = *(a3 + 24);
  v21 = *(v20 - 8);
  v22 = *(v16 + 80);
  v23 = *(v16 + 64);
  v24 = *(v21 + 80);
  if (v19 <= *(v21 + 84))
  {
    v25 = *(v21 + 84);
  }

  else
  {
    v25 = v19;
  }

  if (v25 <= 0xFE)
  {
    v26 = 254;
  }

  else
  {
    v26 = v25;
  }

  v27 = ((v12 + 16 + ((v13 + 7 + ((v13 + v12 + ((v13 + v12) & ~v12)) & ~v12)) & 0xFFFFFFFFFFFFFFF8)) & ~v12) + v13;
  if (((v27 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > v27)
  {
    v27 = ((v27 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v27 <= 0x10)
  {
    v28 = 16;
  }

  else
  {
    v28 = v27;
  }

  if (!a2)
  {
    return 0;
  }

  v29 = v8 | v12;
  v30 = (v8 | v12) + v9;
  v31 = v15 + 1;
  v32 = v22 + 3;
  v33 = v23 + v24 + 14;
  if (v26 >= a2)
  {
    goto LABEL_43;
  }

  v34 = ((v28 + (((v12 | 7) + *(v21 + 64) + ((v33 + ((v32 + (v30 & ~v29) + v31) & ~v22)) & ~v24) + 1) & ~(v12 | 7)) + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  v35 = v34 & 0xFFFFFFF8;
  if ((v34 & 0xFFFFFFF8) != 0)
  {
    v36 = 2;
  }

  else
  {
    v36 = a2 - v26 + 1;
  }

  if (v36 >= 0x10000)
  {
    v37 = 4;
  }

  else
  {
    v37 = 2;
  }

  if (v36 < 0x100)
  {
    v37 = 1;
  }

  if (v36 >= 2)
  {
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  if (v38 <= 1)
  {
    if (!v38)
    {
      goto LABEL_43;
    }

    v39 = *(a1 + v34);
    if (!v39)
    {
      goto LABEL_43;
    }

LABEL_40:
    v41 = v39 - 1;
    if (v35)
    {
      v41 = 0;
      v42 = *a1;
    }

    else
    {
      v42 = 0;
    }

    return v26 + (v42 | v41) + 1;
  }

  if (v38 == 2)
  {
    v39 = *(a1 + v34);
    if (v39)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v39 = *(a1 + v34);
    if (v39)
    {
      goto LABEL_40;
    }
  }

LABEL_43:
  if (v6 == v26)
  {
    v20 = v51;
    v43 = *(v50 + 48);
    v44 = a1;
    v45 = v6;
LABEL_45:

    return v43(v44, v45, v20);
  }

  v46 = v31 + ((a1 + v30) & ~v29);
  if (v25 <= 0xFE)
  {
    v47 = *(v46 + 2);
    if (v47 >= 2)
    {
      return v47 - 1;
    }

    else
    {
      return 0;
    }
  }

  v48 = (v32 + v46) & ~v22;
  if (v18 != v26)
  {
    v43 = *(v21 + 48);
    v44 = ((v33 + v48) & ~v24);
    v45 = *(v21 + 84);
    goto LABEL_45;
  }

  v49 = *(v17 + 48);

  return v49(v48);
}

void sub_100141ED0(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(type metadata accessor for Logger() - 8);
  v7 = *(v6 + 84);
  v42 = v6;
  v8 = *(v6 + 80);
  v9 = v8 | 7;
  v10 = *(v6 + 64);
  v11 = (((v8 | 7) + 98) & ~(v8 | 7)) + ((v10 + ((v8 + 13) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = *(type metadata accessor for SymmetricKey() - 8);
  v13 = *(v12 + 80);
  v14 = *(v12 + 64);
  v15 = ((v14 + 7 + ((v13 + 16 + ((v14 + 7 + ((v13 + 16) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v11 > v15)
  {
    v15 = v11;
  }

  if (v15 <= 0x62)
  {
    v16 = 98;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(type metadata accessor for SymmetricKeySize() - 8);
  v18 = v17;
  v19 = *(v17 + 84);
  if (v7 <= v19)
  {
    v20 = *(v17 + 84);
  }

  else
  {
    v20 = v7;
  }

  v21 = *(*(a4 + 24) - 8);
  v22 = *(v17 + 80);
  v23 = *(v17 + 64);
  v24 = *(v21 + 80);
  if (v20 <= *(v21 + 84))
  {
    v25 = *(v21 + 84);
  }

  else
  {
    v25 = v20;
  }

  if (v25 <= 0xFE)
  {
    v26 = 254;
  }

  else
  {
    v26 = v25;
  }

  v27 = ((v13 + 16 + ((v14 + 7 + ((v14 + v13 + ((v14 + v13) & ~v13)) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + v14;
  if (((v27 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > v27)
  {
    v27 = ((v27 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v27 <= 0x10)
  {
    v28 = 16;
  }

  else
  {
    v28 = v27;
  }

  v29 = (v9 | v13) + v10;
  v30 = v23 + v24 + 14;
  v31 = ((v28 + (((v13 | 7) + *(v21 + 64) + ((v30 + ((v22 + 3 + (v29 & ~(v9 | v13)) + v16 + 1) & ~v22)) & ~v24) + 1) & ~(v13 | 7)) + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v26 >= a3)
  {
    v34 = 0;
  }

  else
  {
    if (((v28 + (((v13 | 7) + *(v21 + 64) + ((v30 + ((v22 + 3 + (v29 & ~(v9 | v13)) + v16 + 1) & ~v22)) & ~v24) + 1) & ~(v13 | 7)) + 8) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v32 = a3 - v26 + 1;
    }

    else
    {
      v32 = 2;
    }

    if (v32 >= 0x10000)
    {
      v33 = 4;
    }

    else
    {
      v33 = 2;
    }

    if (v32 < 0x100)
    {
      v33 = 1;
    }

    if (v32 >= 2)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }
  }

  if (a2 > v26)
  {
    if (((v28 + (((v13 | 7) + *(v21 + 64) + ((v30 + ((v22 + 3 + (v29 & ~(v9 | v13)) + v16 + 1) & ~v22)) & ~v24) + 1) & ~(v13 | 7)) + 8) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v35 = a2 - v26;
    }

    else
    {
      v35 = 1;
    }

    if (v31)
    {
      v36 = ~v26 + a2;
      bzero(a1, v31);
      *a1 = v36;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        *(a1 + v31) = v35;
      }

      else
      {
        *(a1 + v31) = v35;
      }
    }

    else if (v34)
    {
      *(a1 + v31) = v35;
    }

    return;
  }

  if (v34 <= 1)
  {
    if (v34)
    {
      *(a1 + v31) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_51;
    }

    goto LABEL_50;
  }

  if (v34 == 2)
  {
    *(a1 + v31) = 0;
LABEL_50:
    if (!a2)
    {
      return;
    }

    goto LABEL_51;
  }

  *(a1 + v31) = 0;
  if (!a2)
  {
    return;
  }

LABEL_51:
  if (v7 == v26)
  {
    v37 = *(v42 + 56);
    v38 = a1;
LABEL_53:

    v37(v38);
    return;
  }

  v39 = v16 + 1 + ((a1 + v29) & ~(v9 | v13));
  if (v25 <= 0xFE)
  {
    *(v39 + 2) = a2 + 1;
    return;
  }

  v40 = (v22 + 3 + v39) & ~v22;
  if (v19 != v26)
  {
    v37 = *(v21 + 56);
    v38 = ((v30 + v40) & ~v24);
    goto LABEL_53;
  }

  v41 = *(v18 + 56);

  v41(v40);
}

uint64_t sub_100142378(uint64_t a1)
{
  result = type metadata accessor for NANIdentityKey(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100142410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001424D4(void *a1)
{
  v3 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    sub_100002A00(a1);
    return v3;
  }

  sub_100031694(v26, v27);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v4 = v25[0];
  sub_100029B34(a1, a1[3]);
  v5 = dispatch thunk of Decoder.userInfo.getter();
  if (qword_10058A840 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for CodingUserInfoKey();
  v7 = sub_100037644(v6, static CodingUserInfoKey.fourByteAlignedValue);
  if (!*(v5 + 16) || (v8 = sub_10007CF6C(v7), (v9 & 1) == 0))
  {

LABEL_12:
    v16 = v27;
    v17 = v28;
    sub_100031694(v26, v27);
    v3 = UnkeyedDecodingContainer.decodeData(with:)(v4, v16, v17);
LABEL_15:
    sub_100002A00(v26);
    sub_100002A00(a1);
    return v3;
  }

  sub_100002B30(*(v5 + 56) + 32 * v8, v25);

  if ((swift_dynamicCast() & 1) == 0 || v24 != 1)
  {
    goto LABEL_12;
  }

  v10 = v27;
  v11 = v28;
  sub_100031694(v26, v27);
  result = UnkeyedDecodingContainer.decodeData(with:)((v4 + 3) & 0x1FC, v10, v11);
  v14 = 0;
  v15 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v14 = *(result + 16);
    }
  }

  else if (v15)
  {
    v14 = result;
  }

  v18 = __OFADD__(v14, v4);
  v19 = v14 + v4;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v20 = *(result + 16);
        v21 = *(result + 24);
      }

      else
      {
        v21 = 0;
        v20 = 0;
      }
    }

    else if (v15)
    {
      v20 = result;
      v21 = result >> 32;
    }

    else
    {
      v20 = 0;
      v21 = BYTE6(v13);
    }

    if (v21 >= v20 && v19 >= v20)
    {
      v22 = v13;
      v23 = result;
      v3 = Data._Representation.subscript.getter();
      sub_1000124C8(v23, v22);
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001427AC(void *a1)
{
  v3 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    sub_100002A00(a1);
    return v3;
  }

  sub_100031694(v26, v27);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v4 = v25[0];
  sub_100029B34(a1, a1[3]);
  v5 = dispatch thunk of Decoder.userInfo.getter();
  if (qword_10058A840 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for CodingUserInfoKey();
  v7 = sub_100037644(v6, static CodingUserInfoKey.fourByteAlignedValue);
  if (!*(v5 + 16) || (v8 = sub_10007CF6C(v7), (v9 & 1) == 0))
  {

LABEL_12:
    v16 = v27;
    v17 = v28;
    sub_100031694(v26, v27);
    v3 = UnkeyedDecodingContainer.decodeData(with:)(v4, v16, v17);
LABEL_15:
    sub_100002A00(v26);
    sub_100002A00(a1);
    return v3;
  }

  sub_100002B30(*(v5 + 56) + 32 * v8, v25);

  if (!swift_dynamicCast() || (v24 & 1) == 0)
  {
    goto LABEL_12;
  }

  v10 = v27;
  v11 = v28;
  sub_100031694(v26, v27);
  result = UnkeyedDecodingContainer.decodeData(with:)((v4 + 3) & 0x1FFFC, v10, v11);
  v14 = 0;
  v15 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v14 = *(result + 16);
    }
  }

  else if (v15)
  {
    v14 = result;
  }

  v18 = __OFADD__(v14, v4);
  v19 = v14 + v4;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v20 = *(result + 16);
        v21 = *(result + 24);
      }

      else
      {
        v21 = 0;
        v20 = 0;
      }
    }

    else if (v15)
    {
      v20 = result;
      v21 = result >> 32;
    }

    else
    {
      v20 = 0;
      v21 = BYTE6(v13);
    }

    if (v21 >= v20 && v19 >= v20)
    {
      v22 = v13;
      v23 = result;
      v3 = Data._Representation.subscript.getter();
      sub_1000124C8(v23, v22);
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void *sub_100142A80(void *a1, uint64_t a2, unint64_t a3)
{
  sub_100029B34(a1, a1[3]);
  result = dispatch thunk of Encoder.unkeyedContainer()();
  v7 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (v7 == 2)
  {
    v9 = *(a2 + 16);
    v8 = *(a2 + 24);
    v10 = v8 - v9;
    if (!__OFSUB__(v8, v9))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      goto LABEL_17;
    }

    v10 = HIDWORD(a2) - a2;
LABEL_10:
    result = sub_10000AB0C(a2, a3);
    if ((v10 & 0x8000000000000000) == 0)
    {
      if (v10 >> 16)
      {
        __break(1u);
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

LABEL_13:
  sub_100031694(v11, v12);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v3)
  {
    sub_100031694(v11, v12);
    sub_1000B8088();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  sub_1000124C8(a2, a3);
  return sub_100002A00(v11);
}

unint64_t sub_100142BEC@<X0>(_BYTE *a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_10000AD84(a1, &a1[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void sub_100142CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a4;
  v11 = a5;
  v12 = a3;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_100142ED4(&type metadata for UInt8, sub_100144214, v9, a1, a2, &type metadata for UInt8, &type metadata for Never, TupleTypeMetadata2, &protocol witness table for Never, v8);
}

uint64_t sub_100142D8C@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v9 = *(a4 - 8);
  __chkstk_darwin();
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v12 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v9 + 16))(v11, a3, a4);
  result = dispatch thunk of Sequence._copyContents(initializing:)();
  *(a6 + v12) = result;
  return result;
}

void sub_100142ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  __chkstk_darwin();
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin();
  v21 = v23 - v19;
  if (v15)
  {
    v22 = *(*(v17 - 8) + 72);
    if (v22)
    {
      if (v16 - v15 != 0x8000000000000000 || v22 != -1)
      {
        v18(v15, (v16 - v15) / v22, v14, v20);
        if (!v10)
        {
          return;
        }

        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v18(0, 0, v23 - v19, v20);
  v14 = v21;
  if (v10)
  {
LABEL_6:
    (*(v12 + 32))(a10, v14, a7);
  }
}

uint64_t sub_100143034(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v10, 0, 14);
      v6 = v10;
      return a1(v10, v6);
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    return sub_100222F30(v7, v8, a1);
  }

  if (v5)
  {
    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    return sub_100222F30(v7, v8, a1);
  }

  v10[0] = a3;
  LOWORD(v10[1]) = a4;
  BYTE2(v10[1]) = BYTE2(a4);
  BYTE3(v10[1]) = BYTE3(a4);
  BYTE4(v10[1]) = BYTE4(a4);
  BYTE5(v10[1]) = BYTE5(a4);
  v6 = v10 + BYTE6(a4);
  return a1(v10, v6);
}

uint64_t sub_10014316C(uint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = v1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2 || *(v3 + 16) == *(v3 + 24))
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = BYTE6(v4);
    if (v5)
    {
      v6 = v3 >> 32;
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }

    if (v7 == v6)
    {
      goto LABEL_14;
    }
  }

  result = Data._Representation.subscript.getter();
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else if (v2 + 1 >= v2)
  {
    v8 = result;
    Data._Representation.replaceSubrange(_:with:count:)();
    return v8;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_100143218()
{
  result = sub_1001433B4(*v0, *(v0 + 8));
  if ((result & 0x100) == 0)
  {
    v2 = result;
    v3 = *v0;
    v4 = *(v0 + 8);
    v5 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v5 == 2)
      {
        v6 = *(v3 + 16);
        v7 = *(v3 + 24);
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }
    }

    else
    {
      if (v5)
      {
        v6 = v3;
      }

      else
      {
        v6 = 0;
      }

      if (v5)
      {
        v7 = v3 >> 32;
      }

      else
      {
        v7 = BYTE6(v4);
      }
    }

    sub_10000AB0C(*v0, *(v0 + 8));
    result = sub_1000124C8(v3, v4);
    if (__OFSUB__(v7, 1))
    {
      __break(1u);
    }

    else if (v7 - 1 >= v6)
    {
      v8 = Data._Representation.subscript.getter();
      v10 = v9;
      sub_1000124C8(v3, v4);
      *v0 = v8;
      *(v0 + 8) = v10;
      return v2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100143300(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_1001433B4(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!v2)
    {
      if ((a2 & 0xFF000000000000) != 0)
      {
        v3 = BYTE6(a2);
        goto LABEL_12;
      }

LABEL_10:
      v4 = 0;
      v5 = 1;
      return v4 | (v5 << 8);
    }

    if (a1 == a1 >> 32)
    {
      goto LABEL_10;
    }
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 24);
  }

  else
  {
    v3 = a1 >> 32;
  }

LABEL_12:
  result = v3 - 1;
  if (!__OFSUB__(v3, 1))
  {
    v4 = Data._Representation.subscript.getter();
    v5 = 0;
    return v4 | (v5 << 8);
  }

  __break(1u);
  return result;
}

uint64_t sub_10014345C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_10000AE44(result);
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1001434FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  __chkstk_darwin();
  v9 = &v28 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v12 = &v28 - v11;
  v13 = __chkstk_darwin();
  (*(v15 + 16))(&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v13);
  sub_10005DC58(&qword_10058D3F8, &unk_1004869D0);
  if (swift_dynamicCast())
  {
    sub_100029954(v31, &v33);
    sub_100029B34(&v33, v34);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v31[0] = v30;
    sub_100002A00(&v33);
    goto LABEL_34;
  }

  v32 = 0;
  memset(v31, 0, sizeof(v31));
  sub_100016290(v31, &unk_10059B0D0, &unk_1004B4D10);
  dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  if (*(&v33 + 1) >> 60 != 15)
  {
    v31[0] = v33;
    goto LABEL_34;
  }

  v29 = v33;
  v16 = dispatch thunk of Sequence.underestimatedCount.getter();
  *&v31[0] = sub_10014345C(v16);
  *(&v31[0] + 1) = v17;
  __chkstk_darwin();
  *(&v28 - 4) = a2;
  *(&v28 - 3) = a3;
  *(&v28 - 2) = a1;
  Data._Representation.withUnsafeMutableBytes<A>(_:)();
  v18 = *&v9[*(TupleTypeMetadata2 + 48)];
  (*(v10 + 32))(v12, v9, AssociatedTypeWitness);
  v19 = *(&v31[0] + 1) >> 62;
  if ((*(&v31[0] + 1) >> 62) <= 1)
  {
    if (v19)
    {
      if (__OFSUB__(DWORD1(v31[0]), v31[0]))
      {
        goto LABEL_38;
      }

      if (v18 == DWORD1(v31[0]) - LODWORD(v31[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v18 == BYTE14(v31[0]))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (v19 == 2)
  {
    v21 = *(*&v31[0] + 16);
    v20 = *(*&v31[0] + 24);
    v22 = __OFSUB__(v20, v21);
    v23 = v20 - v21;
    if (v22)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    if (v18 == v23)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (v19 == 2)
    {
      v24 = *(*&v31[0] + 24);
    }

    else if (v19 == 1)
    {
      v24 = *&v31[0] >> 32;
    }

    else
    {
      v24 = BYTE14(v31[0]);
    }

LABEL_31:
    if (v24 >= v18)
    {
      Data._Representation.replaceSubrange(_:with:count:)();
LABEL_33:
      (*(v10 + 8))(v12, AssociatedTypeWitness);
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (v18)
  {
    v24 = 0;
    goto LABEL_31;
  }

LABEL_20:
  swift_getAssociatedConformanceWitness();
  *&v33 = 0;
  *(&v33 + 7) = 0;
  dispatch thunk of IteratorProtocol.next()();
  if (BYTE1(v30) == 1)
  {
    goto LABEL_28;
  }

  LOBYTE(v25) = 0;
  do
  {
    *(&v33 + v25) = v30;
    v25 = v25 + 1;
    if ((v25 >> 8))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v25 == 14)
    {
      *&v30 = v33;
      *(&v30 + 6) = *(&v33 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v25) = 0;
    }

    dispatch thunk of IteratorProtocol.next()();
  }

  while ((BYTE1(v30) & 1) == 0);
  if (v25)
  {
    *&v30 = v33;
    *(&v30 + 6) = *(&v33 + 6);
    Data._Representation.append(contentsOf:)();
    sub_100017554(v29, *(&v29 + 1));
    goto LABEL_33;
  }

LABEL_28:
  (*(v10 + 8))(v12, AssociatedTypeWitness);
  sub_100017554(v29, *(&v29 + 1));
LABEL_34:
  v26 = v31[0];
  sub_10000AB0C(*&v31[0], *(&v31[0] + 1));
  sub_1000124C8(v26, *(&v26 + 1));
  return v26;
}

uint64_t sub_100143A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = __chkstk_darwin();
  v11 = &v14 - v10;
  (*(a5 + 32))(a3, a5, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v8 + 8))(v11, AssociatedTypeWitness);
  return 4;
}

uint64_t sub_100143BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = __chkstk_darwin();
  v12 = &v22 - v11;
  v13 = *(a5 + 32);
  v27 = a1;
  v25 = v13;
  (v13)(a3, a5, v10);
  v28 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v17 = v16;
  v18 = *(v9 + 8);
  v29 = v9 + 8;
  v26 = v18;
  v18(v12, AssociatedTypeWitness);
  sub_10000AB0C(v15, v17);
  sub_1002B9AE4(32, v15, v17, &v30);
  v23 = v31;
  v24 = v30;
  sub_10000AB0C(v15, v17);
  sub_10012CD54(32, v15, v17, &v30);
  v20 = v30;
  v19 = v31;
  result = sub_1001433B4(v30, v31);
  HIDWORD(v22) = result;
  if ((result & 0x100) != 0)
  {
    __break(1u);
  }

  else
  {
    v25(v28, a5);
    (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    sub_1000124C8(v20, v19);
    sub_1000124C8(v24, v23);
    sub_1000124C8(v15, v17);
    v26(v12, AssociatedTypeWitness);
    if ((v22 & 0x100000000) != 0)
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_100143FBC(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = (((a3 & 0x1000000000000000) != 0) | (2 * a4));
  if (v4 <= 1)
  {
    if (v4 >= 2)
    {
      return result;
    }
  }

  if (v4 == 2)
  {
  }

  if (v4 == 3)
  {
    return sub_100144000(result, a2, a3 & 0xEFFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t sub_10014400C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_100144178(unsigned __int8 *a1)
{
  v2 = *(v1 + 48);
  v3 = *a1;
  v4 = a1[1];
  v5 = *(v1 + 32);
  v8[0] = *(v1 + 16);
  v8[1] = v5;
  v6 = type metadata accessor for NANPairing.PASN(0, v8);
  return v4 == *(v2 + *(v6 + 84)) && v3 == *(v2 + *(v6 + 56));
}

uint64_t sub_100144290()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Bandwidth.allCases.setter(_UNKNOWN **a1)
{
  swift_beginAccess();
  static Bandwidth.allCases = a1;
}

uint64_t Bandwidth.suffix.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    if (a1 == 5)
    {
      return 30840;
    }

    if (a1 == 6)
    {
      return 31097;
    }
  }

  else
  {
    if (a1 - 2 < 2)
    {
      return 0;
    }

    if (a1 == 4)
    {
      return 11051;
    }
  }

  if (a1)
  {
    return 43;
  }

  else
  {
    return 45;
  }
}

uint64_t Bandwidth.description.getter(unsigned __int8 a1)
{
  result = 0x7A484D203031;
  if (a1 <= 3u)
  {
    if (a1 == 2)
    {
      return result;
    }

    if (a1 == 3)
    {
      return 0x7A484D203032;
    }
  }

  else
  {
    switch(a1)
    {
      case 4u:
        return 0x7A484D203038;
      case 5u:
        return 0x7A484D20303631;
      case 6u:
        return 0x7A484D20303233;
    }
  }

  if (a1)
  {
    return 0x7A484D202B3034;
  }

  else
  {
    return 0x7A484D202D3034;
  }
}

uint64_t Bandwidth.updateWithFloor(bandwidth:)(unsigned __int8 a1)
{
  v3 = *v1;
  result = sub_10005DC58(&qword_10058DFA0, &qword_100488570);
  if (v3 == 2)
  {
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    goto LABEL_3;
  }

  if (v3 == 3)
  {
    goto LABEL_5;
  }

  if (a1 == 3)
  {
    goto LABEL_3;
  }

  if ((v3 - 2) >= 5 && (v3 & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((a1 - 2) >= 5u && (a1 & 1) == 0)
  {
    goto LABEL_3;
  }

  if (v3 - 2) >= 5u && (v3)
  {
    goto LABEL_5;
  }

  if (a1 - 2) >= 5u && (a1)
  {
    goto LABEL_3;
  }

  if (v3 == 4)
  {
    goto LABEL_5;
  }

  if (a1 == 4)
  {
    goto LABEL_3;
  }

  if (v3 == 5)
  {
    goto LABEL_5;
  }

  if (a1 == 5)
  {
LABEL_3:
    a1 = v3;
LABEL_5:
    *v1 = a1;
    return result;
  }

  if (v3 == 6)
  {
    goto LABEL_5;
  }

  v5 = a1;
  a1 = v3;
  if (v5 == 6)
  {
    goto LABEL_5;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1001445F8()
{
  v1 = *v0;
  v2 = 0x7A484D6E6574;
  v3 = 0x484D797468676965;
  v4 = 0x7974786953656E6FLL;
  if (v1 != 4)
  {
    v4 = 0x6577546565726874;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x484D79746E657774;
  if (v1 != 1)
  {
    v5 = 0x7A484D7974726F66;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001446CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100146D04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100144700(uint64_t a1)
{
  v2 = sub_100145894();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014473C(uint64_t a1)
{
  v2 = sub_100145894();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100144778(uint64_t a1)
{
  v2 = sub_100145990();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001447B4(uint64_t a1)
{
  v2 = sub_100145990();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10014480C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001004B99B0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1001448A0(uint64_t a1)
{
  v2 = sub_1001459E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001448DC(uint64_t a1)
{
  v2 = sub_1001459E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100144918(uint64_t a1)
{
  v2 = sub_10014593C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100144954(uint64_t a1)
{
  v2 = sub_10014593C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100144990(uint64_t a1)
{
  v2 = sub_100145A8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001449CC(uint64_t a1)
{
  v2 = sub_100145A8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100144A08(uint64_t a1)
{
  v2 = sub_1001458E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100144A44(uint64_t a1)
{
  v2 = sub_1001458E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100144A80(uint64_t a1)
{
  v2 = sub_100145A38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100144ABC(uint64_t a1)
{
  v2 = sub_100145A38();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL static Bandwidth.__derived_enum_equals(_:_:)(int a1, int a2)
{
  if (a1 <= 3u)
  {
    if (a1 == 2)
    {
      if (a2 == 2)
      {
        return 1;
      }
    }

    else
    {
      if (a1 != 3)
      {
        goto LABEL_17;
      }

      if (a2 == 3)
      {
        return 1;
      }
    }

    return 0;
  }

  switch(a1)
  {
    case 4u:
      return a2 == 4;
    case 5u:
      return a2 == 5;
    case 6u:
      return a2 == 6;
  }

LABEL_17:
  if ((a2 - 2) < 5u)
  {
    return 0;
  }

  return (a2 ^ a1 ^ 1) & 1;
}

uint64_t Bandwidth.encode(to:)(void *a1, int a2)
{
  v47 = a2;
  v3 = sub_10005DC58(&qword_10058DFA8, &qword_100488578);
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin();
  v41 = &v31 - v4;
  v5 = sub_10005DC58(&qword_10058DFB0, &qword_100488580);
  v39 = *(v5 - 8);
  v40 = v5;
  __chkstk_darwin();
  v38 = &v31 - v6;
  v7 = sub_10005DC58(&qword_10058DFB8, &qword_100488588);
  v35 = *(v7 - 8);
  v36 = v7;
  __chkstk_darwin();
  v33 = &v31 - v8;
  v37 = sub_10005DC58(&qword_10058DFC0, &qword_100488590);
  v34 = *(v37 - 8);
  __chkstk_darwin();
  v32 = &v31 - v9;
  v10 = sub_10005DC58(&qword_10058DFC8, &qword_100488598);
  v44 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v31 - v11;
  v13 = sub_10005DC58(&qword_10058DFD0, &qword_1004885A0);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v31 - v15;
  v17 = sub_10005DC58(&qword_10058DFD8, &qword_1004885A8);
  v45 = *(v17 - 8);
  v46 = v17;
  __chkstk_darwin();
  v19 = &v31 - v18;
  sub_100029B34(a1, a1[3]);
  sub_100145894();
  v20 = v47;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v20 > 3u)
  {
    switch(v20)
    {
      case 4u:
        v51 = 3;
        sub_100145990();
        v21 = v33;
        v22 = v46;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v24 = v35;
        v23 = v36;
        goto LABEL_11;
      case 5u:
        v52 = 4;
        sub_10014593C();
        v21 = v38;
        v22 = v46;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v24 = v39;
        v23 = v40;
        goto LABEL_11;
      case 6u:
        v53 = 5;
        sub_1001458E8();
        v21 = v41;
        v22 = v46;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v24 = v42;
        v23 = v43;
LABEL_11:
        (*(v24 + 8))(v21, v23);
        return (*(v45 + 8))(v19, v22);
    }

LABEL_15:
    v50 = 2;
    sub_1001459E4();
    v28 = v32;
    v29 = v46;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v30 = v37;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v34 + 8))(v28, v30);
    return (*(v45 + 8))(v19, v29);
  }

  v25 = v44;
  if (v20 == 2)
  {
    v48 = 0;
    sub_100145A8C();
    v27 = v46;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v14 + 8))(v16, v13);
    return (*(v45 + 8))(v19, v27);
  }

  if (v20 != 3)
  {
    goto LABEL_15;
  }

  v49 = 1;
  sub_100145A38();
  v22 = v46;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v25 + 8))(v12, v10);
  return (*(v45 + 8))(v19, v22);
}

void Bandwidth.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
    if (a2 == 2)
    {
      v2 = 0;
      goto LABEL_12;
    }

    if (a2 == 3)
    {
      v2 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    switch(a2)
    {
      case 4u:
        v2 = 3;
        goto LABEL_12;
      case 5u:
        v2 = 4;
        goto LABEL_12;
      case 6u:
        v2 = 5;
LABEL_12:
        Hasher._combine(_:)(v2);
        return;
    }
  }

  Hasher._combine(_:)(2uLL);
  Hasher._combine(_:)(a2 & 1);
}

Swift::Int Bandwidth.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  if (a1 <= 3u)
  {
    if (a1 == 2)
    {
      v2 = 0;
      goto LABEL_12;
    }

    if (a1 == 3)
    {
      v2 = 1;
      goto LABEL_12;
    }

LABEL_14:
    Hasher._combine(_:)(2uLL);
    Hasher._combine(_:)(a1 & 1);
    return Hasher._finalize()();
  }

  if (a1 == 4)
  {
    v2 = 3;
    goto LABEL_12;
  }

  if (a1 == 5)
  {
    v2 = 4;
    goto LABEL_12;
  }

  if (a1 != 6)
  {
    goto LABEL_14;
  }

  v2 = 5;
LABEL_12:
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10014539C()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    if (v1 == 2)
    {
      v2 = 0;
      goto LABEL_12;
    }

    if (v1 == 3)
    {
      v2 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    switch(v1)
    {
      case 4u:
        v2 = 3;
        goto LABEL_12;
      case 5u:
        v2 = 4;
        goto LABEL_12;
      case 6u:
        v2 = 5;
LABEL_12:
        Hasher._combine(_:)(v2);
        return;
    }
  }

  Hasher._combine(_:)(2uLL);
  Hasher._combine(_:)(v1 & 1);
}

Swift::Int sub_100145430(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2 <= 3)
  {
    if (v2 == 2)
    {
      v3 = 0;
      goto LABEL_12;
    }

    if (v2 == 3)
    {
      v3 = 1;
      goto LABEL_12;
    }

LABEL_14:
    Hasher._combine(_:)(2uLL);
    Hasher._combine(_:)(v2 & 1);
    return Hasher._finalize()();
  }

  if (v2 == 4)
  {
    v3 = 3;
    goto LABEL_12;
  }

  if (v2 == 5)
  {
    v3 = 4;
    goto LABEL_12;
  }

  if (v2 != 6)
  {
    goto LABEL_14;
  }

  v3 = 5;
LABEL_12:
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_1001454F0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static Bandwidth.allCases;
}

uint64_t sub_100145540()
{
  result = 0x7A484D203031;
  v2 = *v0;
  if (v2 <= 3)
  {
    if (v2 == 2)
    {
      return result;
    }

    if (v2 == 3)
    {
      return 0x7A484D203032;
    }
  }

  else
  {
    switch(v2)
    {
      case 4u:
        return 0x7A484D203038;
      case 5u:
        return 0x7A484D20303631;
      case 6u:
        return 0x7A484D20303233;
    }
  }

  if (v2)
  {
    return 0x7A484D202B3034;
  }

  else
  {
    return 0x7A484D202D3034;
  }
}

uint64_t sub_100145668@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100145AE0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

BOOL sub_1001456B0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 3)
  {
    if (v2 == 2)
    {
      return v3 == 2;
    }

    if (v2 == 3)
    {
      return v3 == 3;
    }
  }

  else
  {
    switch(v2)
    {
      case 4u:
        return v3 == 4;
      case 5u:
        return v3 == 5;
      case 6u:
        return v3 == 6;
    }
  }

  if ((v3 - 2) < 5)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t Bandwidth.asInt.getter(char a1)
{
  if ((a1 - 2) > 4u)
  {
    return 40;
  }

  else
  {
    return qword_100488D68[(a1 - 2)];
  }
}

uint64_t _s7CoreP2P9BandwidthO1loiySbAC_ACtFZ_0(char a1, unsigned __int8 a2)
{
  v4 = a2;
  sub_10005DC58(&qword_10058DFA0, &qword_100488570);
  if (v4 == 2)
  {
    return 0;
  }

  if (a1 == 2)
  {
    return 1;
  }

  if (a2 == 3)
  {
    return 0;
  }

  if (a1 == 3)
  {
    return 1;
  }

  if ((a2 - 2) >= 5u && (a2 & 1) == 0)
  {
    return 0;
  }

  if ((a1 - 2) >= 5u && (a1 & 1) == 0)
  {
    return 1;
  }

  if (a2 - 2) >= 5u && (a2)
  {
    return 0;
  }

  if (a1 - 2) >= 5u && (a1)
  {
    return 1;
  }

  if (a2 == 4)
  {
    return 0;
  }

  if (a1 == 4)
  {
    return 1;
  }

  if (a2 == 5)
  {
    return 0;
  }

  if (a1 == 5)
  {
    return 1;
  }

  if (a2 == 6)
  {
    return 0;
  }

  if (a1 == 6)
  {
    return 1;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

unint64_t sub_100145894()
{
  result = qword_10058DFE0;
  if (!qword_10058DFE0)
  {
    result = swift_getWitnessTable(byte_100488CDC, &type metadata for Bandwidth.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058DFE0);
  }

  return result;
}

unint64_t sub_1001458E8()
{
  result = qword_10058DFE8;
  if (!qword_10058DFE8)
  {
    result = swift_getWitnessTable(aH, &type metadata for Bandwidth.ThreeTwentyMHzCodingKeys, v0, v1);
    atomic_store(result, &qword_10058DFE8);
  }

  return result;
}

unint64_t sub_10014593C()
{
  result = qword_10058DFF0;
  if (!qword_10058DFF0)
  {
    result = swift_getWitnessTable(aH_0, &type metadata for Bandwidth.OneSixtyMHzCodingKeys, v0, v1);
    atomic_store(result, &qword_10058DFF0);
  }

  return result;
}

unint64_t sub_100145990()
{
  result = qword_10058DFF8;
  if (!qword_10058DFF8)
  {
    result = swift_getWitnessTable(byte_100488BEC, &type metadata for Bandwidth.EightyMHzCodingKeys, v0, v1);
    atomic_store(result, &qword_10058DFF8);
  }

  return result;
}

unint64_t sub_1001459E4()
{
  result = qword_10058E000;
  if (!qword_10058E000)
  {
    result = swift_getWitnessTable(byte_100488B9C, &type metadata for Bandwidth.FortyMHzCodingKeys, v0, v1);
    atomic_store(result, &qword_10058E000);
  }

  return result;
}

unint64_t sub_100145A38()
{
  result = qword_10058E008;
  if (!qword_10058E008)
  {
    result = swift_getWitnessTable(aMi, &type metadata for Bandwidth.TwentyMHzCodingKeys, v0, v1);
    atomic_store(result, &qword_10058E008);
  }

  return result;
}

unint64_t sub_100145A8C()
{
  result = qword_10058E010;
  if (!qword_10058E010)
  {
    result = swift_getWitnessTable(byte_100488AFC, &type metadata for Bandwidth.TenMHzCodingKeys, v0, v1);
    atomic_store(result, &qword_10058E010);
  }

  return result;
}

uint64_t sub_100145AE0(void *a1)
{
  v2 = sub_10005DC58(&qword_10058E0B0, &qword_100488D30);
  v52 = *(v2 - 8);
  v53 = v2;
  __chkstk_darwin();
  v54 = &v40 - v3;
  v4 = sub_10005DC58(&qword_10058E0B8, &qword_100488D38);
  v5 = *(v4 - 8);
  v50 = v4;
  v51 = v5;
  __chkstk_darwin();
  v57 = &v40 - v6;
  v46 = sub_10005DC58(&qword_10058E0C0, &qword_100488D40);
  v49 = *(v46 - 8);
  __chkstk_darwin();
  v56 = &v40 - v7;
  v8 = sub_10005DC58(&qword_10058E0C8, &qword_100488D48);
  v47 = *(v8 - 8);
  v48 = v8;
  __chkstk_darwin();
  v55 = &v40 - v9;
  v10 = sub_10005DC58(&qword_10058E0D0, &qword_100488D50);
  v44 = *(v10 - 8);
  v45 = v10;
  __chkstk_darwin();
  v12 = &v40 - v11;
  v13 = sub_10005DC58(&qword_10058E0D8, &qword_100488D58);
  v43 = *(v13 - 8);
  __chkstk_darwin();
  v15 = &v40 - v14;
  v16 = sub_10005DC58(&qword_10058E0E0, &qword_100488D60);
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v40 - v18;
  v20 = a1[3];
  v59 = a1;
  sub_100029B34(a1, v20);
  sub_100145894();
  v21 = v58;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v21)
  {
    v41 = v13;
    v42 = v12;
    v23 = v55;
    v22 = v56;
    v24 = v57;
    v58 = v17;
    v25 = KeyedDecodingContainer.allKeys.getter();
    if (*(v25 + 16) != 1 || (v26 = *(v25 + 32), v26 == 6))
    {
      v15 = type metadata accessor for DecodingError();
      swift_allocError();
      v30 = v29;
      sub_10005DC58(&qword_10058CE38, &unk_100483C40);
      *v30 = &type metadata for Bandwidth;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v15 - 8) + 104))(v30, enum case for DecodingError.typeMismatch(_:), v15);
      swift_willThrow();
      (*(v58 + 8))(v19, v16);
      swift_unknownObjectRelease();
    }

    else if (*(v25 + 32) > 2u)
    {
      if (v26 == 3)
      {
        v63 = 3;
        sub_100145990();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v33 = v58;
        (*(v49 + 8))(v22, v46);
        (*(v33 + 8))(v19, v16);
        swift_unknownObjectRelease();
        v15 = 4;
      }

      else
      {
        v32 = v58;
        if (v26 == 4)
        {
          v64 = 4;
          sub_10014593C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v51 + 8))(v24, v50);
          (*(v32 + 8))(v19, v16);
          swift_unknownObjectRelease();
          v15 = 5;
        }

        else
        {
          v65 = 5;
          sub_1001458E8();
          v39 = v54;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v52 + 8))(v39, v53);
          (*(v32 + 8))(v19, v16);
          swift_unknownObjectRelease();
          v15 = 6;
        }
      }
    }

    else if (*(v25 + 32))
    {
      if (v26 == 1)
      {
        v61 = 1;
        sub_100145A38();
        v27 = v42;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v28 = v58;
        (*(v44 + 8))(v27, v45);
        (*(v28 + 8))(v19, v16);
        swift_unknownObjectRelease();
        v15 = 3;
      }

      else
      {
        v62 = 2;
        sub_1001459E4();
        v34 = v23;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v35 = v58;
        v36 = v48;
        v37 = KeyedDecodingContainer.decode(_:forKey:)();
        v38 = v34;
        LOBYTE(v34) = v37;
        (*(v47 + 8))(v38, v36);
        (*(v35 + 8))(v19, v16);
        swift_unknownObjectRelease();
        v15 = v34 & 1;
      }
    }

    else
    {
      v60 = 0;
      sub_100145A8C();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v43 + 8))(v15, v41);
      (*(v58 + 8))(v19, v16);
      swift_unknownObjectRelease();
      v15 = 2;
    }
  }

  sub_100002A00(v59);
  return v15;
}

unint64_t sub_10014637C()
{
  result = qword_10058E018;
  if (!qword_10058E018)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Bandwidth, &type metadata for Bandwidth, v0, v1);
    atomic_store(result, &qword_10058E018);
  }

  return result;
}

unint64_t sub_1001463D4()
{
  result = qword_10058E020;
  if (!qword_10058E020)
  {
    v3 = sub_10005DD04(&qword_10058E028, &qword_1004885F0);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_10058E020);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Bandwidth(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_19;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 4;
  if (v8 <= 4)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for Bandwidth(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100146590(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1001465AC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransmissionMode802_11(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransmissionMode802_11(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100146788()
{
  result = qword_10058E030;
  if (!qword_10058E030)
  {
    result = swift_getWitnessTable(byte_10048897C, &type metadata for Bandwidth.FortyMHzCodingKeys, v0, v1);
    atomic_store(result, &qword_10058E030);
  }

  return result;
}

unint64_t sub_1001467E0()
{
  result = qword_10058E038;
  if (!qword_10058E038)
  {
    result = swift_getWitnessTable(a5g, &type metadata for Bandwidth.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058E038);
  }

  return result;
}

unint64_t sub_100146838()
{
  result = qword_10058E040;
  if (!qword_10058E040)
  {
    result = swift_getWitnessTable(byte_1004889F4, &type metadata for Bandwidth.TenMHzCodingKeys, v0, v1);
    atomic_store(result, &qword_10058E040);
  }

  return result;
}

unint64_t sub_100146890()
{
  result = qword_10058E048;
  if (!qword_10058E048)
  {
    result = swift_getWitnessTable(aH_1, &type metadata for Bandwidth.TenMHzCodingKeys, v0, v1);
    atomic_store(result, &qword_10058E048);
  }

  return result;
}

unint64_t sub_1001468E8()
{
  result = qword_10058E050;
  if (!qword_10058E050)
  {
    result = swift_getWitnessTable(byte_1004889A4, &type metadata for Bandwidth.TwentyMHzCodingKeys, v0, v1);
    atomic_store(result, &qword_10058E050);
  }

  return result;
}

unint64_t sub_100146940()
{
  result = qword_10058E058;
  if (!qword_10058E058)
  {
    result = swift_getWitnessTable(aUh, &type metadata for Bandwidth.TwentyMHzCodingKeys, v0, v1);
    atomic_store(result, &qword_10058E058);
  }

  return result;
}

unint64_t sub_100146998()
{
  result = qword_10058E060;
  if (!qword_10058E060)
  {
    result = swift_getWitnessTable(byte_1004888EC, &type metadata for Bandwidth.FortyMHzCodingKeys, v0, v1);
    atomic_store(result, &qword_10058E060);
  }

  return result;
}

unint64_t sub_1001469F0()
{
  result = qword_10058E068;
  if (!qword_10058E068)
  {
    result = swift_getWitnessTable(aI_2, &type metadata for Bandwidth.FortyMHzCodingKeys, v0, v1);
    atomic_store(result, &qword_10058E068);
  }

  return result;
}

unint64_t sub_100146A48()
{
  result = qword_10058E070;
  if (!qword_10058E070)
  {
    result = swift_getWitnessTable(byte_10048889C, &type metadata for Bandwidth.EightyMHzCodingKeys, v0, v1);
    atomic_store(result, &qword_10058E070);
  }

  return result;
}

unint64_t sub_100146AA0()
{
  result = qword_10058E078;
  if (!qword_10058E078)
  {
    result = swift_getWitnessTable(aI_3, &type metadata for Bandwidth.EightyMHzCodingKeys, v0, v1);
    atomic_store(result, &qword_10058E078);
  }

  return result;
}

unint64_t sub_100146AF8()
{
  result = qword_10058E080;
  if (!qword_10058E080)
  {
    result = swift_getWitnessTable(aL, &type metadata for Bandwidth.OneSixtyMHzCodingKeys, v0, v1);
    atomic_store(result, &qword_10058E080);
  }

  return result;
}

unint64_t sub_100146B50()
{
  result = qword_10058E088;
  if (!qword_10058E088)
  {
    result = swift_getWitnessTable(byte_100488874, &type metadata for Bandwidth.OneSixtyMHzCodingKeys, v0, v1);
    atomic_store(result, &qword_10058E088);
  }

  return result;
}

unint64_t sub_100146BA8()
{
  result = qword_10058E090;
  if (!qword_10058E090)
  {
    result = swift_getWitnessTable(byte_1004887FC, &type metadata for Bandwidth.ThreeTwentyMHzCodingKeys, v0, v1);
    atomic_store(result, &qword_10058E090);
  }

  return result;
}

unint64_t sub_100146C00()
{
  result = qword_10058E098;
  if (!qword_10058E098)
  {
    result = swift_getWitnessTable(byte_100488824, &type metadata for Bandwidth.ThreeTwentyMHzCodingKeys, v0, v1);
    atomic_store(result, &qword_10058E098);
  }

  return result;
}

unint64_t sub_100146C58()
{
  result = qword_10058E0A0;
  if (!qword_10058E0A0)
  {
    result = swift_getWitnessTable(aEj, &type metadata for Bandwidth.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058E0A0);
  }

  return result;
}

unint64_t sub_100146CB0()
{
  result = qword_10058E0A8;
  if (!qword_10058E0A8)
  {
    result = swift_getWitnessTable(byte_100488A6C, &type metadata for Bandwidth.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058E0A8);
  }

  return result;
}

uint64_t sub_100146D04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7A484D6E6574 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x484D79746E657774 && a2 == 0xE90000000000007ALL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7A484D7974726F66 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x484D797468676965 && a2 == 0xE90000000000007ALL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7974786953656E6FLL && a2 == 0xEB000000007A484DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6577546565726874 && a2 == 0xEE007A484D79746ELL)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

Swift::Int static WiFiP2PHasher.hash(_:)(uint64_t a1)
{
  Hasher.init()();
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      AnyHashable.hash(into:)();
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return Hasher.finalize()();
}

double static BinaryDecoder.decode<A>(_:data:)(void x0_0, uint64_t a1, unint64_t a2, void *a3)
{
  v8 = sub_100033AA8(_swiftEmptyArrayStorage);
  type metadata accessor for BinaryDecoder();
  v9 = swift_allocObject();
  v10 = v9;
  v9[5] = &_swiftEmptyDictionarySingleton;
  v9[2] = a1;
  v9[3] = a2;
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v12 = 0;
    if (v11 == 2)
    {
      v12 = *(a1 + 16);
    }
  }

  else
  {
    v12 = a1;
    if (!v11)
    {
      v12 = 0;
    }
  }

  v9[4] = v12;
  swift_beginAccess();
  v10[5] = v8;
  sub_10000AB0C(a1, a2);
  BinaryDecoder.decode<A>(_:)(a3);

  return result;
}

void *BinaryDecoder.__allocating_init(data:userInfo:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[5] = &_swiftEmptyDictionarySingleton;
  v6[2] = a1;
  v6[3] = a2;
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v8 = 0;
    if (v7 == 2)
    {
      v8 = *(a1 + 16);
    }
  }

  else
  {
    v8 = a1;
    if (!v7)
    {
      v8 = 0;
    }
  }

  v6[4] = v8;
  v9 = v6;
  swift_beginAccess();
  v9[5] = a3;
  return v9;
}

uint64_t static BinaryDecoder.decode<A>(_:data:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_100033AA8(_swiftEmptyArrayStorage);
  type metadata accessor for BinaryDecoder();
  v9 = swift_allocObject();
  v10 = v9;
  v9[5] = &_swiftEmptyDictionarySingleton;
  v9[2] = a1;
  v9[3] = a2;
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v12 = 0;
    if (v11 == 2)
    {
      v12 = *(a1 + 16);
    }
  }

  else
  {
    v12 = a1;
    if (!v11)
    {
      v12 = 0;
    }
  }

  v9[4] = v12;
  swift_beginAccess();
  v10[5] = v8;
  sub_10000AB0C(a1, a2);
  v13 = BinaryDecoder.decode<A>(_:)(a3, a4);

  return v13;
}

uint64_t sub_100147274()
{
  sub_10005DC58(&qword_10058E308, &qword_1004893F0);
  __chkstk_darwin();
  v1 = &v6 - v0;
  v2 = type metadata accessor for CodingUserInfoKey();
  sub_100068888(v2, static CodingUserInfoKey.fourByteAlignedValue);
  v3 = sub_100037644(v2, static CodingUserInfoKey.fourByteAlignedValue);
  CodingUserInfoKey.init(rawValue:)();
  v4 = *(v2 - 8);
  result = (*(v4 + 48))(v1, 1, v2);
  if (result != 1)
  {
    return (*(v4 + 32))(v3, v1, v2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001473C8(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for CodingUserInfoKey();

  return sub_100037644(v4, a2);
}

uint64_t sub_100147440()
{
  sub_10005DC58(&qword_10058E308, &qword_1004893F0);
  __chkstk_darwin();
  v1 = &v6 - v0;
  v2 = type metadata accessor for CodingUserInfoKey();
  sub_100068888(v2, static CodingUserInfoKey.channelInformationHasAuxillaryBitmap);
  v3 = sub_100037644(v2, static CodingUserInfoKey.channelInformationHasAuxillaryBitmap);
  CodingUserInfoKey.init(rawValue:)();
  v4 = *(v2 - 8);
  result = (*(v4 + 48))(v1, 1, v2);
  if (result != 1)
  {
    return (*(v4 + 32))(v3, v1, v2);
  }

  __break(1u);
  return result;
}

uint64_t sub_100147594@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for CodingUserInfoKey();
  v7 = sub_100037644(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t BinaryDecoder.userInfo.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t sub_100147728@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[3] = &type metadata for BinaryDecoder.UnkeyedContainer;
  a2[4] = sub_1000325F0();
  *a2 = a1;
}

uint64_t sub_10014777C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for BinaryDecoder();
  a2[4] = sub_100033ADC();
  *a2 = a1;
}

uint64_t sub_1001477CC@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for BinaryDecoder();
  a2[4] = sub_100033ADC();
  *a2 = a1;
}

uint64_t sub_100147828(uint64_t a1, uint64_t a2)
{
  sub_1000380A0(&type metadata for Bool, a1, *v2, *(a2 + 16), &type metadata for Bool);
  if (!v3)
  {
    v4 = v6;
  }

  return v4 & 1;
}

void *sub_100147880(uint64_t a1, uint64_t a2)
{
  result = sub_1000380A0(&type metadata for String, a1, *v2, *(a2 + 16), &type metadata for String);
  if (!v3)
  {
    return v5;
  }

  return result;
}

double sub_1001478D4(uint64_t a1, uint64_t a2)
{
  sub_1000380A0(&type metadata for Double, a1, *v2, *(a2 + 16), &type metadata for Double);
  if (!v3)
  {
    return v5;
  }

  return result;
}

float sub_100147928(uint64_t a1, uint64_t a2)
{
  sub_1000380A0(&type metadata for Float, a1, *v2, *(a2 + 16), &type metadata for Float);
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_100147B08()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100147B58()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100147C00()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100147C50()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100147D90()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100147DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a1, a2, a3);
  if (v4)
  {
    return v6;
  }

  return result;
}

BOOL sub_100147EFC()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v3 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v5 = *(v2 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v4 = BYTE6(v1);
    v5 = v2 >> 32;
    if (!v3)
    {
      v5 = v4;
    }
  }

  return *(*v0 + 32) == v5;
}

uint64_t sub_100147F88()
{
  type metadata accessor for BinaryDecoder();
  sub_100033ADC();

  return String.init(from:)();
}

uint64_t sub_100148018()
{
  type metadata accessor for BinaryDecoder();
  sub_100033ADC();

  return Float.init(from:)();
}

uint64_t sub_100148164()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1001481B4()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10014825C()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1001482AC()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1001483EC()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10014843C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = a3(a1, a2);
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1001484B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *v3;
  a3[3] = a1;
  a3[4] = a2;
  *a3 = v4;
}

uint64_t sub_1001484E0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for BinaryDecoder();
  a1[4] = sub_100033ADC();
  *a1 = v3;
}

uint64_t sub_100148618@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  a2[3] = &type metadata for BinaryDecoder.UnkeyedContainer;
  a2[4] = a1();
  *a2 = v2;
}

uint64_t BinaryDecoder.peekBytes(_:)(uint64_t a1)
{
  result = v1[4];
  v4 = result + a1;
  if (!__OFADD__(result, a1))
  {
    v5 = v1[2];
    v6 = v1[3];
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v7 == 2)
      {
        if (*(v5 + 24) >= v4)
        {
          goto LABEL_7;
        }
      }

      else if (v4 <= 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v7)
      {
        v8 = v5 >> 32;
      }

      else
      {
        v8 = BYTE6(v6);
      }

      if (v8 >= v4)
      {
LABEL_7:
        if (v4 >= result)
        {
          return Data._Representation.subscript.getter();
        }

        goto LABEL_15;
      }
    }

    sub_10000B02C();
    swift_allocError();
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 2;
    return swift_willThrow();
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1001487A8(uint64_t (*a1)(void))
{
  result = v1[4];
  v5 = result + 8;
  if (__OFADD__(result, 8))
  {
    __break(1u);
    goto LABEL_24;
  }

  v6 = v1[2];
  v7 = v1[3];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 == 2)
    {
      if (*(v6 + 24) >= v5)
      {
        goto LABEL_9;
      }
    }

    else if (v5 < 1)
    {
      v10 = 0;
      v11 = 0;
      if (result > 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

LABEL_14:
    sub_10000B02C();
    swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 2;
    swift_willThrow();
    return v2;
  }

  v9 = BYTE6(v7);
  if (v8)
  {
    v9 = v6 >> 32;
  }

  if (v9 < v5)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v8)
  {
    if (v8 == 2)
    {
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v10 < result)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = v6;
      v10 = v6 >> 32;
      if (v6 >> 32 < result)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v11 = 0;
    v10 = BYTE6(v7);
    if (BYTE6(v7) < result)
    {
      goto LABEL_24;
    }
  }

LABEL_20:
  if (v10 >= v11)
  {
    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    v2 = a1();
    sub_1000124C8(v13, v15);
    v1[4] = v5;
    return v2;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t IEEE80211InformationElement.ManagementMIC.payload.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1000124C8(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t BinaryDecoder.DataCopy.init(_:)(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    a1 = *(a1 + 16);
    v5 = *(v3 + 24);
  }

  else
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    a1 = a1;
    v5 = v3 >> 32;
  }

  if (v5 < a1)
  {
    __break(1u);
  }

LABEL_9:
  v6 = Data.subdata(in:)();
  sub_1000124C8(v3, a2);
  return v6;
}

uint64_t InterfaceIdentifier.encode(to:)(void *a1, uint64_t a2, unint64_t a3)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100031694(v6, v6[3]);
  sub_10000AB0C(a2, a3);
  sub_1000B8088();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  sub_1000124C8(a2, a3);
  return sub_100002A00(v6);
}

uint64_t sub_100148AD4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = BinaryDecoder.DataCopy.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

void *BinaryDecoder.deinit()
{
  sub_1000124C8(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t sub_100148B4C(void *a1)
{
  v3 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v1)
  {
    sub_100031694(v10, v10[3]);
    sub_100039F68();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v5 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v5 != 2)
      {
LABEL_13:
        v3 = Data.subdata(in:)();
        sub_1000124C8(v8, v9);
        sub_100002A00(v10);
        sub_100002A00(a1);
        return v3;
      }

      v6 = *(v8 + 16);
      v7 = *(v8 + 24);
    }

    else
    {
      if (!v5)
      {
        goto LABEL_13;
      }

      v6 = v8;
      v7 = v8 >> 32;
    }

    if (v7 < v6)
    {
      __break(1u);
    }

    goto LABEL_13;
  }

  sub_100002A00(a1);
  return v3;
}

unint64_t sub_100148C98()
{
  result = qword_10058E0F0;
  if (!qword_10058E0F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BinaryDecoder.DataCopy, &type metadata for BinaryDecoder.DataCopy, v0, v1);
    atomic_store(result, &qword_10058E0F0);
  }

  return result;
}

uint64_t sub_100148CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_100148D48()
{
  result = qword_10058E2E0;
  if (!qword_10058E2E0)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for UInt, &type metadata for UInt, v0, v1);
    atomic_store(result, &qword_10058E2E0);
  }

  return result;
}

unint64_t sub_100148D9C()
{
  result = qword_10058E2E8;
  if (!qword_10058E2E8)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Int64, &type metadata for Int64, v0, v1);
    atomic_store(result, &qword_10058E2E8);
  }

  return result;
}

unint64_t sub_100148DF0()
{
  result = qword_10058E2F0;
  if (!qword_10058E2F0)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Int32, &type metadata for Int32, v0, v1);
    atomic_store(result, &qword_10058E2F0);
  }

  return result;
}

unint64_t sub_100148E44()
{
  result = qword_10058E300;
  if (!qword_10058E300)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Int8, &type metadata for Int8, v0, v1);
    atomic_store(result, &qword_10058E300);
  }

  return result;
}

unint64_t sub_100148E98()
{
  result = qword_10059B070;
  if (!qword_10059B070)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Int, &type metadata for Int, v0, v1);
    atomic_store(result, &qword_10059B070);
  }

  return result;
}

void sub_100148EF8(uint64_t a1, uint64_t a2)
{
  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_19;
  }

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v4 + 16) < 2uLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v5 + 16) < 3uLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v6 + 16) < 4uLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v7 + 16) < 5uLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v8 + 16) < 6uLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v9 + 16) < 7uLL)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v10 + 16) < 8uLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v11 + 16) < 9uLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v12 + 16) < 0xAuLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v13 + 16) < 0xBuLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v14 + 16) < 0xCuLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v15 + 16) < 0xDuLL)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v16 + 16) < 0xEuLL)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v17 + 16) < 0xFuLL)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(a1);
  if (*(v18 + 16) >= 0x10uLL)
  {

    return;
  }

LABEL_33:
  __break(1u);
}

unint64_t NANAttribute.ElementContainer.HTCapabilities.apple80211_ht_cap.getter(uint64_t a1, uint64_t a2)
{
  v4 = NANAttribute.ElementContainer.HTCapabilities.htcapabilitiesInfo.getter(a1);
  sub_100148EF8(a1, a2);
  NANAttribute.ElementContainer.HTCapabilities.htExtcapabilities.getter(a1);
  NANAttribute.ElementContainer.HTCapabilities.txbeamForm.getter(a1);
  return (BYTE1(a2) << 40) | (a2 << 32) | (v4 << 48);
}

uint64_t NANAttribute.ElementContainer.VHTCapabilities.apple80211_vht_cap.getter(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 8;
  v5 = NANAttribute.ElementContainer.VHTCapabilities.info.getter(a1);
  NANAttribute.ElementContainer.VHTCapabilities.rxMCSMap.getter(a1);
  NANAttribute.ElementContainer.VHTCapabilities.rxHighLgiRate.getter(a1);
  NANAttribute.ElementContainer.VHTCapabilities.txMCSMap.getter(a1);
  NANAttribute.ElementContainer.VHTCapabilities.txHighLgiRate.getter(a1);
  LODWORD(v7) = 0;
  BYTE4(v7) = v2;
  BYTE5(v7) = v4;
  HIWORD(v7) = v5;
  return v7;
}

void sub_10014936C(uint64_t a1, uint64_t a2)
{
  NANAttribute.ElementContainer.ElementIDExtension.macCapabilities.getter(a1);
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  NANAttribute.ElementContainer.ElementIDExtension.macCapabilities.getter(a1);
  if (*(v4 + 16) < 2uLL)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  NANAttribute.ElementContainer.ElementIDExtension.macCapabilities.getter(a1);
  if (*(v5 + 16) < 3uLL)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  NANAttribute.ElementContainer.ElementIDExtension.macCapabilities.getter(a1);
  if (*(v6 + 16) < 4uLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  NANAttribute.ElementContainer.ElementIDExtension.macCapabilities.getter(a1);
  if (*(v7 + 16) < 5uLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  NANAttribute.ElementContainer.ElementIDExtension.macCapabilities.getter(a1);
  if (*(v8 + 16) >= 6uLL)
  {

    return;
  }

LABEL_13:
  __break(1u);
}

void sub_100149488(uint64_t a1, uint64_t a2)
{
  NANAttribute.ElementContainer.ElementIDExtension.phyCapabilities.getter(a1);
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_14;
  }

  NANAttribute.ElementContainer.ElementIDExtension.phyCapabilities.getter(a1);
  if (*(v4 + 16) < 2uLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  NANAttribute.ElementContainer.ElementIDExtension.phyCapabilities.getter(a1);
  if (*(v5 + 16) < 3uLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  NANAttribute.ElementContainer.ElementIDExtension.phyCapabilities.getter(a1);
  if (*(v6 + 16) < 4uLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  NANAttribute.ElementContainer.ElementIDExtension.phyCapabilities.getter(a1);
  if (*(v7 + 16) < 5uLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  NANAttribute.ElementContainer.ElementIDExtension.phyCapabilities.getter(a1);
  if (*(v8 + 16) < 6uLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  NANAttribute.ElementContainer.ElementIDExtension.phyCapabilities.getter(a1);
  if (*(v9 + 16) < 7uLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  NANAttribute.ElementContainer.ElementIDExtension.phyCapabilities.getter(a1);
  if (*(v10 + 16) < 8uLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  NANAttribute.ElementContainer.ElementIDExtension.phyCapabilities.getter(a1);
  if (*(v11 + 16) < 9uLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  NANAttribute.ElementContainer.ElementIDExtension.phyCapabilities.getter(a1);
  if (*(v12 + 16) < 0xAuLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  NANAttribute.ElementContainer.ElementIDExtension.phyCapabilities.getter(a1);
  if (*(v13 + 16) >= 0xBuLL)
  {

    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t NANAttribute.ElementContainer.ElementIDExtension.apple80211_he_cap.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10014936C(a1, a2);
  v7 = v6;
  v8 = v6 >> 8;
  v17 = v6 >> 16;
  v18 = v6 >> 24;
  v19 = HIDWORD(v6);
  v20 = v6 >> 40;
  sub_100149488(a1, a2);
  v10 = v9;
  v12 = v11;
  v13 = NANAttribute.ElementContainer.ElementIDExtension.rxMCSMap80MHz.getter(a1);
  v14 = NANAttribute.ElementContainer.ElementIDExtension.txMCSMap80MHz.getter(a1);
  v15 = NANAttribute.ElementContainer.ElementIDExtension.rxMCSMap160MHz.getter(a1);
  result = NANAttribute.ElementContainer.ElementIDExtension.txMCSMap160MHz.getter(a1);
  *a3 = 0;
  *(a3 + 4) = 1536;
  *(a3 + 6) = v7;
  *(a3 + 7) = v8;
  *(a3 + 8) = v17;
  *(a3 + 9) = v18;
  *(a3 + 10) = v19;
  *(a3 + 11) = v20;
  *(a3 + 12) = 2816;
  *(a3 + 14) = v10;
  *(a3 + 24) = BYTE2(v12);
  *(a3 + 22) = v12;
  *(a3 + 26) = v13;
  *(a3 + 28) = v14;
  *(a3 + 30) = v15;
  *(a3 + 32) = result;
  *(a3 + 34) = 0;
  return result;
}

void sub_1001497A4(__int16 a1, uint64_t a2)
{
  v34 = HIBYTE(a1);
  v33 = (HIBYTE(a1) - a1);
  if (HIBYTE(a1) < a1)
  {
    v3 = -(a1 - HIBYTE(a1));
  }

  else
  {
    v3 = (HIBYTE(a1) - a1);
  }

  if (!v3)
  {
    return;
  }

  v5 = a1;
  sub_100032034(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    goto LABEL_49;
  }

  v6 = 0;
  LODWORD(v7) = v34 - v5;
  if (v34 >= v5)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v31 = v3;
  v32 = v7;
  while (v6 != v3)
  {
    sub_100031694(a2, *(a2 + 24));
    v8 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    if (v2)
    {

      return;
    }

    v9 = v8;
    if (qword_10058AA78 != -1)
    {
      swift_once();
    }

    v10 = off_100591860;
    if (*(off_100591860 + 2) && (v11 = static Hasher._hash(seed:bytes:count:)(), v12 = -1 << *(v10 + 32), v13 = v11 & ~v12, ((*(v10 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v13) & 1) != 0))
    {
      v14 = ~v12;
      while (*(v10[6] + 4 * v13) != v9)
      {
        v13 = (v13 + 1) & v14;
        if (((*(v10 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v13) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v26 = 0;
      v27 = 3;
    }

    else
    {
LABEL_19:
      if (qword_10058AA80 != -1)
      {
        swift_once();
      }

      v15 = off_100591868;
      if (*(off_100591868 + 2) && (v16 = static Hasher._hash(seed:bytes:count:)(), v17 = -1 << *(v15 + 32), v18 = v16 & ~v17, ((*(v15 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v18) & 1) != 0))
      {
        v19 = ~v17;
        while (*(v15[6] + 4 * v18) != v9)
        {
          v18 = (v18 + 1) & v19;
          if (((*(v15 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v18) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        v26 = 1;
        v27 = 4;
      }

      else
      {
LABEL_26:
        if (qword_10058AA88 != -1)
        {
          swift_once();
        }

        v20 = off_100591870;
        if (!*(off_100591870 + 2) || (v21 = static Hasher._hash(seed:bytes:count:)(), v22 = -1 << v20[32], v23 = v21 & ~v22, ((*&v20[((v23 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v23) & 1) == 0))
        {
LABEL_33:
          v25 = 0x300000000;
          goto LABEL_38;
        }

        v24 = ~v22;
        while (*(*(v20 + 6) + 4 * v23) != v9)
        {
          v23 = (v23 + 1) & v24;
          if (((*&v20[((v23 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v23) & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        v26 = 2;
        v27 = 5;
      }
    }

    v35 = v26;
    v36 = v27;
    sub_1000276D8();
    v25 = v9 | (v35 << 32) | (v36 << 40);
LABEL_38:
    v29 = _swiftEmptyArrayStorage[2];
    v28 = _swiftEmptyArrayStorage[3];
    if (v29 >= v28 >> 1)
    {
      sub_100032034((v28 > 1), v29 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v29 + 1;
    v30 = &_swiftEmptyArrayStorage[v29];
    *(v30 + 8) = v25;
    *(v30 + 18) = WORD2(v25);
    if (v34 < v5)
    {
      goto LABEL_47;
    }

    if (v6 == v32)
    {
      goto LABEL_48;
    }

    ++v6;
    v3 = v31;
    if (v6 == v33)
    {
      return;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

Swift::Int sub_100149BFC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(8u);
  return Hasher._finalize()();
}

Swift::Int sub_100149C68(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(8u);
  return Hasher._finalize()();
}

CoreP2P::AWDLActionFrame::OUISubtype_optional __swiftcall AWDLActionFrame.OUISubtype.init(rawValue:)(Swift::UInt8 rawValue)
{
  if (rawValue == 3)
  {
    v1.value = CoreP2P_AWDLActionFrame_OUISubtype_masterIndication;
  }

  else
  {
    v1.value = CoreP2P_AWDLActionFrame_OUISubtype_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t AWDLActionFrame.OUISubtype.rawValue.getter(char a1)
{
  if (a1)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

void sub_100149CD4(char *a1@<X8>)
{
  if (*v1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
}

Swift::Int sub_100149D3C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100149D8C()
{
  if (*v0)
  {
    v1 = 3;
  }

  else
  {
    v1 = 0;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_100149DC4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_100149E34()
{
  v1 = 7955819;
  if (*v0 == 1)
  {
    v1 = 0x6574736575716572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574736575716572;
  }
}

uint64_t sub_100149E90@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001645F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100149EB8(uint64_t a1)
{
  v2 = sub_10015CDD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100149EF4(uint64_t a1)
{
  v2 = sub_10015CDD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AWDLActionFrame.ServiceRequest.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10005DC58(&qword_10058E310, &unk_100489468);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v11 - v8;
  sub_100029B34(a1, a1[3]);
  sub_10015CDD4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11[1] = a3;
    v12 = 2;
    sub_10005DC58(&qword_10058D358, &unk_100486960);
    sub_100165E30(&qword_10058E320, &protocol witness table for UInt8, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

void AWDLActionFrame.ServiceRequest.hash(into:)(int a1, unsigned int a2, uint64_t a3)
{
  v4 = HIWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  v5 = *(a3 + 16);
  Hasher._combine(_:)(v5);
  if (v5)
  {
    v6 = (a3 + 32);
    do
    {
      v7 = *v6++;
      Hasher._combine(_:)(v7);
      --v5;
    }

    while (v5);
  }
}

Swift::Int AWDLActionFrame.ServiceRequest.hashValue.getter(unsigned int a1, uint64_t a2)
{
  v3 = a1;
  v4 = HIWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  v5 = *(a2 + 16);
  Hasher._combine(_:)(v5);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v7 = *v6++;
      Hasher._combine(_:)(v7);
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t sub_10014A260@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10015F550(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

Swift::Int sub_10014A2D0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  AWDLActionFrame.ServiceRequest.hash(into:)(v5, v2, v3);
  return Hasher._finalize()();
}

uint64_t AWDLActionFrame.ServiceResponse.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for DNSRecords.SRV(0);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AWDLActionFrame.ServiceResponse(0);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003B86C(v2, v7, type metadata accessor for AWDLActionFrame.ServiceResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = *(v7 + 5);
      v10 = *(v7 + 6);
      v11 = v7[33];
      Hasher._combine(_:)(1uLL);
      String.lowercased()();
      String.hash(into:)();

      String.lowercased()();
      String.hash(into:)();

      String.hash(into:)();

      Hasher._combine(_:)(v11);
      Data.hash(into:)();

      return sub_1000124C8(v9, v10);
    }

    else
    {
      sub_100039054(v7, v5, type metadata accessor for DNSRecords.SRV);
      Hasher._combine(_:)(2uLL);
      v14 = v5[33];
      String.lowercased()();
      String.hash(into:)();

      String.lowercased()();
      String.hash(into:)();

      String.hash(into:)();

      Hasher._combine(_:)(v14);
      type metadata accessor for NWEndpoint.Port();
      sub_1000348B8(&qword_10058CF48, &type metadata accessor for NWEndpoint.Port, &protocol conformance descriptor for NWEndpoint.Port);
      dispatch thunk of Hashable.hash(into:)();
      String.hash(into:)();
      Hasher._combine(_:)(*&v5[*(v3 + 28)]);
      Hasher._combine(_:)(*&v5[*(v3 + 32)]);
      return sub_10003B934(v5, type metadata accessor for DNSRecords.SRV);
    }
  }

  else
  {
    v13 = v7[33];
    Hasher._combine(_:)(0);
    String.lowercased()();
    String.hash(into:)();

    String.lowercased()();
    String.hash(into:)();

    String.hash(into:)();

    Hasher._combine(_:)(v13);
  }
}

Swift::Int ChannelSequence.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  ChannelSequence.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

uint64_t sub_10014A818(void *a1)
{
  v3 = *v1;
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_1001587A0(v5, 3u, v3);
  if (!v2)
  {
    sub_100031694(v5, v6);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v5, v6);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return sub_100002A00(v5);
}

uint64_t AWDLActionFrame.AWDLChannelSequenceParameter.encode(to:)(void *a1, uint64_t a2)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_1001587A0(v5, 3u, a2);
  if (!v2)
  {
    sub_100031694(v5, v6);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v5, v6);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return sub_100002A00(v5);
}

Swift::Int sub_10014A9D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ChannelSequence.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t AWDLActionFrame.SynchronizationParameter.master.setter(uint64_t result)
{
  *(v1 + 22) = result;
  *(v1 + 24) = BYTE2(result);
  *(v1 + 25) = BYTE3(result);
  *(v1 + 26) = BYTE4(result);
  *(v1 + 27) = BYTE5(result);
  return result;
}

uint64_t sub_10014ACB4(char a1)
{
  result = 0x74696D736E617274;
  switch(a1)
  {
    case 1:
      result = 0x6E756F436E776F64;
      break;
    case 2:
    case 5:
    case 10:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6D69546472617567;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0x7367616C66;
      break;
    case 7:
      result = 0xD000000000000021;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    case 13:
      result = 0xD00000000000001CLL;
      break;
    case 14:
      result = 0x72657473616DLL;
      break;
    case 15:
      v3 = 1936028272;
      goto LABEL_13;
    case 16:
      result = 0x6465767265736572;
      break;
    case 17:
      v3 = 1970365811;
LABEL_13:
      result = v3 | 0x65636E6500000000;
      break;
    case 18:
      result = 0xD00000000000001FLL;
      break;
    case 19:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10014AED4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10016471C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10014AF08(uint64_t a1)
{
  v2 = sub_100037EDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014AF44(uint64_t a1)
{
  v2 = sub_100037EDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void AWDLActionFrame.SynchronizationParameter.hash(into:)(uint64_t a1)
{
  v2 = v1;
  Hasher._combine(_:)(*v2);
  Hasher._combine(_:)(*(v2 + 2));
  Hasher._combine(_:)(*(v2 + 4));
  Hasher._combine(_:)(*(v2 + 5));
  Hasher._combine(_:)(*(v2 + 6));
  Hasher._combine(_:)(*(v2 + 8));
  Hasher._combine(_:)(*(v2 + 10));
  Hasher._combine(_:)(*(v2 + 12));
  Hasher._combine(_:)(*(v2 + 14));
  Hasher._combine(_:)(*(v2 + 16));
  Hasher._combine(_:)(*(v2 + 18));
  Hasher._combine(_:)(*(v2 + 19));
  Hasher._combine(_:)(*(v2 + 20));
  Hasher._combine(_:)(*(v2 + 21));
  v4 = *(v2 + 23);
  v5 = *(v2 + 24);
  v6 = *(v2 + 25);
  v7 = *(v2 + 26);
  v8 = *(v2 + 27);
  Hasher._combine(_:)(*(v2 + 22));
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(*(v2 + 28));
  Hasher._combine(_:)(*(v2 + 29));
  Hasher._combine(_:)(*(v2 + 30));
  Hasher._combine(_:)(*(v2 + 32));
  v9 = *(v2 + 40);

  ChannelSequence.hash(into:)(a1, v9);
}

Swift::Int AWDLActionFrame.SynchronizationParameter.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(*(v0 + 2));
  Hasher._combine(_:)(*(v0 + 4));
  Hasher._combine(_:)(*(v0 + 5));
  Hasher._combine(_:)(*(v0 + 6));
  Hasher._combine(_:)(*(v0 + 8));
  Hasher._combine(_:)(*(v0 + 10));
  Hasher._combine(_:)(*(v0 + 12));
  Hasher._combine(_:)(*(v0 + 14));
  Hasher._combine(_:)(*(v0 + 16));
  Hasher._combine(_:)(*(v0 + 18));
  Hasher._combine(_:)(*(v0 + 19));
  Hasher._combine(_:)(*(v0 + 20));
  Hasher._combine(_:)(*(v0 + 21));
  v1 = *(v0 + 23);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = *(v0 + 26);
  v5 = *(v0 + 27);
  Hasher._combine(_:)(*(v0 + 22));
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(*(v0 + 28));
  Hasher._combine(_:)(*(v0 + 29));
  Hasher._combine(_:)(*(v0 + 30));
  Hasher._combine(_:)(*(v0 + 32));
  ChannelSequence.hash(into:)(v7, *(v0 + 40));
  return Hasher._finalize()();
}

double AWDLActionFrame.SynchronizationParameter.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000379CC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t AWDLActionFrame.SynchronizationParameter.encode(to:)(void *a1)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v4, v5);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v2)
  {
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v6 = *(v1 + 22);
    v7 = *(v1 + 26);
    sub_100031694(v4, v5);
    sub_10008A490();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_1001587A0(v4, 1u, *(v1 + 40));
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return sub_100002A00(v4);
}

uint64_t sub_10014B7AC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s7CoreP2P15AWDLActionFrameV24SynchronizationParameterV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v8) & 1;
}

uint64_t AWDLActionFrame.DeprecatedElectionParameter.address.getter(uint64_t a1, uint64_t a2)
{
  *(&v2 + 1) = a2;
  *&v2 = a1;
  return (v2 >> 48) & 0xFFFFFFFFFFFFLL;
}

uint64_t AWDLActionFrame.Header.bssid.setter(uint64_t result)
{
  *(v1 + 6) = result;
  *(v1 + 8) = BYTE2(result);
  *(v1 + 9) = BYTE3(result);
  *(v1 + 10) = BYTE4(result);
  *(v1 + 11) = BYTE5(result);
  return result;
}

uint64_t AWDLActionFrame.DeprecatedElectionParameter.topMasterMetric.getter(uint64_t a1, uint64_t a2, char a3)
{
  *(&v4 + 1) = a3 & 1;
  *&v4 = a2;
  return v4 >> 32;
}

uint64_t AWDLActionFrame.DeprecatedElectionParameter.topMasterMetric.setter(uint64_t result)
{
  *(v1 + 12) = result;
  *(v1 + 16) = BYTE4(result) & 1;
  return result;
}

uint64_t AWDLActionFrame.DeprecatedElectionParameter.selfElectionMetric.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(&v5 + 1) = a4 & 1;
  *&v5 = a3;
  return v5 >> 32;
}

uint64_t AWDLActionFrame.DeprecatedElectionParameter.selfElectionMetric.setter(uint64_t result)
{
  *(v1 + 20) = result;
  *(v1 + 24) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_10014B888()
{
  v1 = *v0;
  v2 = 0x7367616C66;
  v3 = 0x657473614D706F74;
  if (v1 != 5)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x6465767265736572;
  if (v1 != 3)
  {
    v4 = 0x73736572646461;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E6F697463656C65;
  if (v1 != 1)
  {
    v5 = 0x65636E6174736964;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10014B98C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100164D48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10014B9C0(uint64_t a1)
{
  v2 = sub_100039434();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014B9FC(uint64_t a1)
{
  v2 = sub_100039434();

  return CodingKey.debugDescription.getter(a1, v2);
}

void AWDLActionFrame.DeprecatedElectionParameter.hash(into:)(int a1, unint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  v18 = HIDWORD(a4);
  v7 = a2 >> 16;
  v8 = HIDWORD(a2);
  v9 = a2 >> 40;
  v10 = HIWORD(a2);
  v11 = HIBYTE(a2);
  v12 = a3 >> 8;
  v13 = a3 >> 16;
  v16 = a3 >> 24;
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v16);
  if (a4)
  {
    LODWORD(v14) = dword_10048DB84[a3 >> 32];
  }

  else
  {
    v14 = HIDWORD(a3);
  }

  Hasher._combine(_:)(v14);
  v15 = v18;
  if (a5)
  {
    v15 = dword_10048DB84[a4 >> 32];
  }

  Hasher._combine(_:)(v15);
}

Swift::Int AWDLActionFrame.DeprecatedElectionParameter.hashValue.getter(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v5 = a3;
  v8 = a3 & 0xFFFFFFFF00000000;
  Hasher.init(_seed:)();
  AWDLActionFrame.DeprecatedElectionParameter.hash(into:)(v10, a1 & 0xFFFFFFFFFFFF00FFLL, a2, v8 | v5 & 1, a4 & 1);
  return Hasher._finalize()();
}

unint64_t AWDLActionFrame.DeprecatedElectionParameter.init(from:)(void *a1)
{
  result = sub_100039124(a1);
  if (!v1)
  {
    result &= 0xFFFFFFFFFFFF00FFLL;
  }

  return result;
}

unint64_t sub_10014BC48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100039124(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = WORD1(result);
    *(a2 + 4) = BYTE4(result);
    *(a2 + 5) = BYTE5(result);
    *(a2 + 6) = BYTE6(result);
    *(a2 + 7) = HIBYTE(result);
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
    *(a2 + 20) = v7;
    *(a2 + 24) = v8 & 1;
  }

  return result;
}

uint64_t AWDLActionFrame.DeprecatedElectionParameter.encode(to:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v7, v8);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v5)
  {
    sub_100031694(v7, v8);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v7, v8);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v7, v8);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v7, v8);
    sub_10008A490();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_100031694(v7, v8);
    sub_100160538();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_100031694(v7, v8);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_100031694(v7, v8);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return sub_100002A00(v7);
}

Swift::Int sub_10014BFE4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[16];
  v7 = v0[24];
  v8 = v0[7];
  v9 = *(v0 + 1);
  v10 = *(v0 + 5);
  Hasher.init(_seed:)();
  AWDLActionFrame.DeprecatedElectionParameter.hash(into:)(v12, v1 | (v2 << 16) | (v3 << 32) | (v4 << 40) | (v5 << 48) | (v8 << 56), v9, v6 & 1 | (v10 << 32), v7 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_10014C0FC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[16];
  v8 = v1[24];
  v9 = v1[7];
  v10 = *(v1 + 1);
  v11 = *(v1 + 5);
  Hasher.init(_seed:)();
  AWDLActionFrame.DeprecatedElectionParameter.hash(into:)(v13, v2 | (v3 << 16) | (v4 << 32) | (v5 << 40) | (v6 << 48) | (v9 << 56), v10, v7 & 1 | (v11 << 32), v8 & 1);
  return Hasher._finalize()();
}

BOOL sub_10014C1B4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = a1[16];
  v4 = a1[24];
  v5 = *(a1 + 1);
  v6 = *(a1 + 5);
  v7 = *(a2 + 1);
  v8 = *a1 | (*(a1 + 1) << 16) | (a1[4] << 32) | (a1[5] << 40) | (a1[6] << 48) | (a1[7] << 56);
  v9 = *a2 | (*(a2 + 1) << 16) | (a2[4] << 32) | (a2[5] << 40) | (a2[6] << 48) | (a2[7] << 56);
  v10 = a2[24] & 1;
  v11 = a2[16] & 1 | (*(a2 + 5) << 32);

  return sub_10015D27C(v8, v5, v3 & 1 | (v6 << 32), v4 & 1, v9, v7, v11, v10);
}

uint64_t sub_10014C32C()
{
  result = Data.subdata(in:)();
  static AWDLActionFrame.ServiceParameter.SSTH.zero = 0;
  qword_10059B498 = result;
  unk_10059B4A0 = v1;
  return result;
}

uint64_t AWDLActionFrame.ServiceParameter.SSTH.init(ssthByteMap:compressedSSTH:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_10003A0D8(a1, a2, a3);
  if (v3)
  {
    return sub_1000124C8(a2, a3);
  }

  v8 = v6;
  sub_1000124C8(a2, a3);
  return v8;
}

int *AWDLActionFrame.ServiceParameter.SSTH.zero.unsafeMutableAddressor()
{
  if (qword_10058A850 != -1)
  {
    swift_once();
  }

  return &static AWDLActionFrame.ServiceParameter.SSTH.zero;
}

uint64_t static AWDLActionFrame.ServiceParameter.SSTH.zero.getter()
{
  if (qword_10058A850 != -1)
  {
    swift_once();
  }

  v0 = static AWDLActionFrame.ServiceParameter.SSTH.zero;
  sub_10000AB0C(qword_10059B498, unk_10059B4A0);
  return v0;
}

uint64_t AWDLActionFrame.ServiceParameter.SSTH.init(from:)(void *a1)
{
  LODWORD(result) = sub_100039DC8(a1);
  if (v1)
  {
    return v3;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10014C4C8()
{
  if (*v0)
  {
    return 0x73736572706D6F63;
  }

  else
  {
    return 0x6574794268747373;
  }
}

uint64_t sub_10014C518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574794268747373 && a2 == 0xEB0000000070614DLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73736572706D6F63 && a2 == 0xEE00485453536465)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10014C600(uint64_t a1)
{
  v2 = sub_10016058C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014C63C(uint64_t a1)
{
  v2 = sub_10016058C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AWDLActionFrame.ServiceParameter.SSTH.encode(to:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = a4;
  v7 = sub_10005DC58(&qword_10058E330, &qword_100489478);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v12 - v9;
  sub_100029B34(a1, a1[3]);
  sub_10016058C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v14 = a3;
    v15 = v13;
    v16 = 1;
    sub_10000AB0C(a3, v13);
    sub_1000B8088();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v14, v15);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t AWDLActionFrame.ServiceParameter.SSTH.hash(into:)(uint64_t a1, Swift::UInt32 a2, uint64_t a3, uint64_t a4)
{
  Hasher._combine(_:)(a2);

  return Data.hash(into:)();
}

Swift::Int AWDLActionFrame.ServiceParameter.SSTH.hashValue.getter(Swift::UInt32 a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10014C8F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10014C958(uint64_t a1)
{
  Hasher._combine(_:)(*v1);

  return Data.hash(into:)();
}

Swift::Int sub_10014C9AC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AWDLActionFrame.ServiceParameter.ssth.setter(int a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000124C8(*(v3 + 16), *(v3 + 24));
  *(v3 + 8) = a1;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return result;
}

unint64_t sub_10014CA98()
{
  v1 = 0x7367616C66;
  v2 = 0xD000000000000016;
  if (*v0 != 2)
  {
    v2 = 1752462195;
  }

  if (*v0)
  {
    v1 = 0x6D69546C6C657764;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10014CB10@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100164FB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10014CB38(uint64_t a1)
{
  v2 = sub_1001605E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014CB74(uint64_t a1)
{
  v2 = sub_1001605E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL static AWDLActionFrame.ServiceParameter.__derived_struct_equals(_:_:)(unint64_t a1, int a2, _BOOL8 a3, unint64_t a4, unint64_t a5, int a6, uint64_t a7, unint64_t a8)
{
  result = 0;
  if (a1 == a5 && (a1 >> 16) == (a5 >> 16))
  {
    return a2 == a6 && _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a3, a4, a7, a8);
  }

  return result;
}

uint64_t AWDLActionFrame.ServiceParameter.encode(to:)(void *a1, unint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  v18 = a4;
  v19 = a5;
  v7 = a2;
  v9 = sub_10005DC58(&qword_10058E340, &unk_100489480);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v17 - v11;
  sub_100029B34(a1, a1[3]);
  sub_1001605E0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v20) = v7;
  v23 = 0;
  sub_100160634();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    v13 = a3;
    v14 = v18;
    v15 = v19;
    LOBYTE(v20) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v20) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = v13;
    v21 = v14;
    v22 = v15;
    v23 = 3;
    sub_10000AB0C(v14, v15);
    sub_100160688();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v21, v22);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t AWDLActionFrame.ServiceParameter.hash(into:)(uint64_t a1, unint64_t a2, Swift::UInt32 a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 >> 16;
  v7 = HIDWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(a3);

  return Data.hash(into:)();
}

Swift::Int AWDLActionFrame.ServiceParameter.hashValue.getter(unint64_t a1, Swift::UInt32 a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = a1 >> 16;
  v7 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(a2);
  Data.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_10014CF80@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = AWDLActionFrame.ServiceParameter.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 2) = WORD1(result);
    *(a1 + 4) = WORD2(result);
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

Swift::Int sub_10014D02C()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 4);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10014D0D0(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 2);
  v4 = *(v1 + 4);
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v2);

  return Data.hash(into:)();
}

Swift::Int sub_10014D158(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *v1;
  v4 = *(v1 + 2);
  v5 = *(v1 + 4);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v2);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10014D334@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P15AWDLActionFrameV13DataPathStateV30UnicastMasterIndicationOptionsO8rawValueAGSgs6UInt32V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_10014D378()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_10048DBB8[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_10014D400(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_10048DBB8[v2]);
  return Hasher._finalize()();
}

uint64_t AWDLActionFrame.DataPathState.countryCode.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t AWDLActionFrame.DataPathState.socialChannelMap.setter(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 8) = WORD2(result);
  return result;
}

uint64_t AWDLActionFrame.DataPathState.infraBSSID.setter(uint64_t result)
{
  *(v1 + 10) = result;
  *(v1 + 14) = WORD2(result);
  *(v1 + 16) = BYTE6(result) & 1;
  return result;
}

uint64_t AWDLActionFrame.DataPathState.infraChannel.setter(uint64_t result)
{
  *(v1 + 20) = result;
  *(v1 + 24) = WORD2(result);
  return result;
}

uint64_t AWDLActionFrame.DataPathState.infraAddress.setter(uint64_t result)
{
  *(v1 + 26) = result;
  *(v1 + 30) = WORD2(result);
  *(v1 + 32) = BYTE6(result) & 1;
  return result;
}

uint64_t AWDLActionFrame.DataPathState.infraSSID.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t AWDLActionFrame.DataPathState.infraSSID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t AWDLActionFrame.DataPathState.awdlAddress.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 60) = WORD2(result);
  *(v1 + 62) = BYTE6(result) & 1;
  return result;
}

uint64_t AWDLActionFrame.DataPathState.portUniqueLogID.setter(uint64_t result)
{
  *(v1 + 66) = result;
  *(v1 + 68) = BYTE2(result) & 1;
  return result;
}

uint64_t AWDLActionFrame.DataPathState.rootLoopFreeCounter.setter(uint64_t result)
{
  *(v1 + 72) = result;
  *(v1 + 76) = BYTE4(result) & 1;
  return result;
}

uint64_t AWDLActionFrame.DataPathState.awdlOnSince.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AWDLActionFrame.DataPathState(0) + 136);

  return sub_1001606DC(v3, a1);
}

uint64_t AWDLActionFrame.DataPathState.awdlOnSince.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AWDLActionFrame.DataPathState(0) + 136);

  return sub_10016074C(a1, v3);
}

uint64_t AWDLActionFrame.DataPathState.availabilityWindowSequenceNumber.setter(uint64_t a1)
{
  result = type metadata accessor for AWDLActionFrame.DataPathState(0);
  v4 = v1 + *(result + 140);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t AWDLActionFrame.DataPathState.actionFrameUpdateCounter.setter(uint64_t a1)
{
  result = type metadata accessor for AWDLActionFrame.DataPathState(0);
  v4 = v1 + *(result + 144);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

void AWDLActionFrame.DataPathState.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10059B170, &unk_1004B4D70);
  __chkstk_darwin();
  v7 = &v51 - v6;
  LOBYTE(v6) = *(v2 + 2);
  v53 = v4;
  if (v6)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v9 = *v2;
    v8 = v9 >> 8;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v9);
  }

  Hasher._combine(_:)(v8);
  v10 = *(v2 + 1) | (v2[4] << 32);
  if ((v10 & 0xFF00000000) == 0x300000000)
  {
    v11 = 0;
LABEL_6:
    Hasher._combine(_:)(v11);
    goto LABEL_19;
  }

  v12 = v10 >> 40;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(0x801004u >> ((v10 >> 29) & 0xF8));
  if ((v10 >> 40) <= 3)
  {
    if (v12 == 2)
    {
      v13 = 0;
      goto LABEL_18;
    }

    if (v12 == 3)
    {
      v13 = 1;
      goto LABEL_18;
    }

LABEL_63:
    Hasher._combine(_:)(2uLL);
    v11 = BYTE5(v10) & 1;
    goto LABEL_6;
  }

  if (v12 == 4)
  {
    v13 = 3;
    goto LABEL_18;
  }

  if (v12 == 5)
  {
    v13 = 4;
    goto LABEL_18;
  }

  if (v12 != 6)
  {
    goto LABEL_63;
  }

  v13 = 5;
LABEL_18:
  Hasher._combine(_:)(v13);
LABEL_19:
  v14 = *(v2 + 16);
  v54 = v3;
  if (v14)
  {
    LOBYTE(v15) = 0;
  }

  else
  {
    v16 = v2[7];
    v17 = *(v2 + 5);
    v18 = v17 | (v2[7] << 32);
    v19 = v18 >> 8;
    v20 = v18 >> 16;
    v21 = v18 >> 24;
    v15 = v16 >> 8;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v17);
    Hasher._combine(_:)(v19);
    Hasher._combine(_:)(v20);
    Hasher._combine(_:)(v21);
    Hasher._combine(_:)(v16);
  }

  Hasher._combine(_:)(v15);
  v22 = *(v2 + 5) | (v2[12] << 32);
  if ((v22 & 0xFF00000000) == 0x300000000)
  {
    v23 = 0;
    goto LABEL_24;
  }

  v25 = v22 >> 40;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v22);
  Hasher._combine(_:)(0x801004u >> ((v22 >> 29) & 0xF8));
  if ((v22 >> 40) <= 3)
  {
    if (v25 == 2)
    {
      v26 = 0;
    }

    else
    {
      if (v25 != 3)
      {
        goto LABEL_64;
      }

      v26 = 1;
    }

LABEL_37:
    Hasher._combine(_:)(v26);
    if (v2[16])
    {
      goto LABEL_25;
    }

    goto LABEL_38;
  }

  switch(v25)
  {
    case 4:
      v26 = 3;
      goto LABEL_37;
    case 5:
      v26 = 4;
      goto LABEL_37;
    case 6:
      v26 = 5;
      goto LABEL_37;
  }

LABEL_64:
  Hasher._combine(_:)(2uLL);
  v23 = BYTE5(v22) & 1;
LABEL_24:
  Hasher._combine(_:)(v23);
  if (v2[16])
  {
LABEL_25:
    LOBYTE(v24) = 0;
    goto LABEL_39;
  }

LABEL_38:
  v27 = v2[15];
  v28 = *(v2 + 13);
  v29 = v28 | (v2[15] << 32);
  v30 = v29 >> 8;
  v31 = v29 >> 16;
  v32 = v29 >> 24;
  v24 = v27 >> 8;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v28);
  Hasher._combine(_:)(v30);
  Hasher._combine(_:)(v31);
  Hasher._combine(_:)(v32);
  Hasher._combine(_:)(v27);
LABEL_39:
  Hasher._combine(_:)(v24);
  if (*(v2 + 6))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v2[31])
    {
LABEL_41:
      LOBYTE(v33) = 0;
      goto LABEL_44;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v2[31])
    {
      goto LABEL_41;
    }
  }

  v34 = v2[30];
  v35 = *(v2 + 14);
  v36 = v35 | (v2[30] << 32);
  v37 = v36 >> 8;
  v38 = v36 >> 16;
  v39 = v36 >> 24;
  v33 = v34 >> 8;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v35);
  Hasher._combine(_:)(v37);
  Hasher._combine(_:)(v38);
  Hasher._combine(_:)(v39);
  Hasher._combine(_:)(v34);
LABEL_44:
  v41 = v53;
  v40 = v54;
  Hasher._combine(_:)(v33);
  Hasher._combine(_:)(*(v2 + 63));
  v42 = *(v2 + 64);
  if (v42 == 47)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(dword_10048DBB8[v42]);
  }

  Hasher._combine(_:)(*(v2 + 65));
  if (*(v2 + 68) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v43 = v2[33];
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v43);
  }

  if (*(v2 + 76) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v44 = *(v2 + 18);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v44);
  }

  Hasher._combine(_:)(*(v2 + 77));
  Hasher._combine(_:)(*(v2 + 78));
  Hasher._combine(_:)(*(v2 + 79));
  Hasher._combine(_:)(*(v2 + 80));
  Hasher._combine(_:)(*(v2 + 81));
  Hasher._combine(_:)(*(v2 + 82));
  Hasher._combine(_:)(*(v2 + 83));
  Hasher._combine(_:)(*(v2 + 84));
  Hasher._combine(_:)(*(v2 + 85));
  Hasher._combine(_:)(*(v2 + 86));
  Hasher._combine(_:)(*(v2 + 87));
  Hasher._combine(_:)(*(v2 + 88));
  Hasher._combine(_:)(*(v2 + 89));
  Hasher._combine(_:)(*(v2 + 90));
  Hasher._combine(_:)(*(v2 + 91));
  Hasher._combine(_:)(*(v2 + 92));
  Hasher._combine(_:)(*(v2 + 93));
  Hasher._combine(_:)(*(v2 + 94));
  v45 = type metadata accessor for AWDLActionFrame.DataPathState(0);
  sub_1001606DC(v2 + v45[34], v7);
  if ((*(v41 + 48))(v7, 1, v40) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v46 = v52;
    (*(v41 + 32))(v52, v7, v40);
    Hasher._combine(_:)(1u);
    DispatchTimeInterval.hash(into:)();
    (*(v41 + 8))(v46, v40);
  }

  v47 = v2 + v45[35];
  if (v47[4] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v48 = *v47;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v48);
  }

  v49 = v2 + v45[36];
  if (v49[4] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v50 = *v49;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v50);
  }
}

uint64_t AWDLActionFrame.DataPathState.encode(to:)(uint64_t a1)
{
  v5 = v2;
  v6 = v1;
  sub_10005DC58(&unk_10059B170, &unk_1004B4D70);
  __chkstk_darwin();
  v9 = &v63 - v8;
  v86 = type metadata accessor for DispatchTimeInterval();
  v70 = *(v86 - 8);
  __chkstk_darwin();
  v68 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v6 + 78);
  v12 = *(v6 + 94);
  v13 = *(v6 + 79);
  v14 = *(v6 + 80);
  v15 = *(v6 + 81);
  v16 = *(v6 + 77) == 1;
  v69 = v9;
  if (!v16)
  {
    if (v11)
    {
      if (v12)
      {
        if (v13)
        {
          if (v14)
          {
            if (v15)
            {
              v17 = 3280;
              goto LABEL_97;
            }

            if (*(v6 + 82))
            {
              v17 = 1232;
              goto LABEL_98;
            }

            v17 = 1232;
            if ((*(v6 + 83) & 1) == 0)
            {
              goto LABEL_101;
            }

LABEL_100:
            v17 |= 0x4000u;
            goto LABEL_101;
          }

          if ((v15 & 1) == 0)
          {
            if (*(v6 + 82))
            {
              v17 = 208;
              goto LABEL_98;
            }

            v17 = 208;
            if ((*(v6 + 83) & 1) == 0)
            {
              goto LABEL_101;
            }

            goto LABEL_100;
          }

          v17 = 2256;
        }

        else if (v14)
        {
          if ((v15 & 1) == 0)
          {
            if (*(v6 + 82))
            {
              v17 = 1104;
              goto LABEL_98;
            }

            v17 = 1104;
            if ((*(v6 + 83) & 1) == 0)
            {
              goto LABEL_101;
            }

            goto LABEL_100;
          }

          v17 = 3152;
        }

        else
        {
          if ((v15 & 1) == 0)
          {
            if (*(v6 + 82))
            {
              v17 = 80;
              goto LABEL_98;
            }

            v17 = 80;
            if ((*(v6 + 83) & 1) == 0)
            {
              goto LABEL_101;
            }

            goto LABEL_100;
          }

          v17 = 2128;
        }
      }

      else if (v13)
      {
        if (v14)
        {
          if ((v15 & 1) == 0)
          {
            if (*(v6 + 82))
            {
              v17 = 1216;
              goto LABEL_98;
            }

            v17 = 1216;
            if ((*(v6 + 83) & 1) == 0)
            {
              goto LABEL_101;
            }

            goto LABEL_100;
          }

          v17 = 3264;
        }

        else
        {
          if ((v15 & 1) == 0)
          {
            if (*(v6 + 82))
            {
              v17 = 192;
              goto LABEL_98;
            }

            v17 = 192;
            if ((*(v6 + 83) & 1) == 0)
            {
              goto LABEL_101;
            }

            goto LABEL_100;
          }

          v17 = 2240;
        }
      }

      else if (v14)
      {
        if ((v15 & 1) == 0)
        {
          if (*(v6 + 82))
          {
            v17 = 1088;
            goto LABEL_98;
          }

          v17 = 1088;
          if ((*(v6 + 83) & 1) == 0)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        }

        v17 = 3136;
      }

      else
      {
        if ((v15 & 1) == 0)
        {
          if (*(v6 + 82))
          {
            v17 = 64;
            goto LABEL_98;
          }

          v17 = 64;
          if ((*(v6 + 83) & 1) == 0)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        }

        v17 = 2112;
      }
    }

    else if (v12)
    {
      if (v13)
      {
        if (v14)
        {
          if ((v15 & 1) == 0)
          {
            if (*(v6 + 82))
            {
              v17 = 1168;
              goto LABEL_98;
            }

            v17 = 1168;
            if ((*(v6 + 83) & 1) == 0)
            {
              goto LABEL_101;
            }

            goto LABEL_100;
          }

          v17 = 3216;
        }

        else
        {
          if ((v15 & 1) == 0)
          {
            if (*(v6 + 82))
            {
              v17 = 144;
              goto LABEL_98;
            }

            v17 = 144;
            if ((*(v6 + 83) & 1) == 0)
            {
              goto LABEL_101;
            }

            goto LABEL_100;
          }

          v17 = 2192;
        }
      }

      else if (v14)
      {
        if ((v15 & 1) == 0)
        {
          if (*(v6 + 82))
          {
            v17 = 1040;
            goto LABEL_98;
          }

          v17 = 1040;
          if ((*(v6 + 83) & 1) == 0)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        }

        v17 = 3088;
      }

      else
      {
        if ((v15 & 1) == 0)
        {
          if (*(v6 + 82))
          {
            v17 = 16;
            goto LABEL_98;
          }

          v17 = 16;
          if ((*(v6 + 83) & 1) == 0)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        }

        v17 = 2064;
      }
    }

    else if (v13)
    {
      if (v14)
      {
        if ((v15 & 1) == 0)
        {
          if (*(v6 + 82))
          {
            v17 = 1152;
            goto LABEL_98;
          }

          v17 = 1152;
          if ((*(v6 + 83) & 1) == 0)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        }

        v17 = 3200;
      }

      else
      {
        if ((v15 & 1) == 0)
        {
          if (*(v6 + 82))
          {
            v17 = 128;
            goto LABEL_98;
          }

          v17 = 128;
          if ((*(v6 + 83) & 1) == 0)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        }

        v17 = 2176;
      }
    }

    else if (v14)
    {
      if ((v15 & 1) == 0)
      {
        if (*(v6 + 82))
        {
          v17 = 1024;
          goto LABEL_98;
        }

        v17 = 1024;
        if ((*(v6 + 83) & 1) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      }

      v17 = 3072;
    }

    else
    {
      if ((v15 & 1) == 0)
      {
        if (*(v6 + 82))
        {
          v17 = 0;
          goto LABEL_98;
        }

        v17 = 0;
        if ((*(v6 + 83) & 1) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      }

      v17 = 2048;
    }

    goto LABEL_97;
  }

  if ((v11 & 1) == 0)
  {
    if (v12)
    {
      if (v13)
      {
        if (v14)
        {
          if ((v15 & 1) == 0)
          {
            if (*(v6 + 82))
            {
              v17 = 1200;
              goto LABEL_98;
            }

            v17 = 1200;
            if ((*(v6 + 83) & 1) == 0)
            {
              goto LABEL_101;
            }

            goto LABEL_100;
          }

          v17 = 3248;
        }

        else
        {
          if ((v15 & 1) == 0)
          {
            if (*(v6 + 82))
            {
              v17 = 176;
              goto LABEL_98;
            }

            v17 = 176;
            if ((*(v6 + 83) & 1) == 0)
            {
              goto LABEL_101;
            }

            goto LABEL_100;
          }

          v17 = 2224;
        }
      }

      else if (v14)
      {
        if ((v15 & 1) == 0)
        {
          if (*(v6 + 82))
          {
            v17 = 1072;
            goto LABEL_98;
          }

          v17 = 1072;
          if ((*(v6 + 83) & 1) == 0)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        }

        v17 = 3120;
      }

      else
      {
        if ((v15 & 1) == 0)
        {
          if (*(v6 + 82))
          {
            v17 = 48;
            goto LABEL_98;
          }

          v17 = 48;
          if ((*(v6 + 83) & 1) == 0)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        }

        v17 = 2096;
      }
    }

    else if (v13)
    {
      if (v14)
      {
        if ((v15 & 1) == 0)
        {
          if (*(v6 + 82))
          {
            v17 = 1184;
            goto LABEL_98;
          }

          v17 = 1184;
          if ((*(v6 + 83) & 1) == 0)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        }

        v17 = 3232;
      }

      else
      {
        if ((v15 & 1) == 0)
        {
          if (*(v6 + 82))
          {
            v17 = 160;
            goto LABEL_98;
          }

          v17 = 160;
          if ((*(v6 + 83) & 1) == 0)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        }

        v17 = 2208;
      }
    }

    else if (v14)
    {
      if ((v15 & 1) == 0)
      {
        if (*(v6 + 82))
        {
          v17 = 1056;
          goto LABEL_98;
        }

        v17 = 1056;
        if ((*(v6 + 83) & 1) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      }

      v17 = 3104;
    }

    else
    {
      if ((v15 & 1) == 0)
      {
        if (*(v6 + 82))
        {
          v17 = 32;
          goto LABEL_98;
        }

        v17 = 32;
        if ((*(v6 + 83) & 1) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      }

      v17 = 2080;
    }

LABEL_97:
    if ((*(v6 + 82) & 1) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_98;
  }

  if (!v12)
  {
    if (v13)
    {
      if (v14)
      {
        if ((v15 & 1) == 0)
        {
          if (*(v6 + 82))
          {
            v17 = 1248;
            goto LABEL_98;
          }

          v17 = 1248;
          if ((*(v6 + 83) & 1) == 0)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        }

        v17 = 3296;
      }

      else
      {
        if ((v15 & 1) == 0)
        {
          if (*(v6 + 82))
          {
            v17 = 224;
            goto LABEL_98;
          }

          v17 = 224;
          if ((*(v6 + 83) & 1) == 0)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        }

        v17 = 2272;
      }
    }

    else if (v14)
    {
      if ((v15 & 1) == 0)
      {
        if (*(v6 + 82))
        {
          v17 = 1120;
          goto LABEL_98;
        }

        v17 = 1120;
        if ((*(v6 + 83) & 1) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      }

      v17 = 3168;
    }

    else
    {
      if ((v15 & 1) == 0)
      {
        if (*(v6 + 82))
        {
          v17 = 96;
          goto LABEL_98;
        }

        v17 = 96;
        if ((*(v6 + 83) & 1) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      }

      v17 = 2144;
    }

    goto LABEL_97;
  }

  if (!v13)
  {
    if (v14)
    {
      if ((v15 & 1) == 0)
      {
        if (*(v6 + 82))
        {
          v17 = 1136;
          goto LABEL_98;
        }

        v17 = 1136;
        if ((*(v6 + 83) & 1) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      }

      v17 = 3184;
    }

    else
    {
      if ((v15 & 1) == 0)
      {
        if (*(v6 + 82))
        {
          v17 = 112;
          goto LABEL_98;
        }

        v17 = 112;
        if ((*(v6 + 83) & 1) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      }

      v17 = 2160;
    }

    goto LABEL_97;
  }

  if (!v14)
  {
    if ((v15 & 1) == 0)
    {
      if (*(v6 + 82))
      {
        v17 = 240;
        goto LABEL_98;
      }

      v17 = 240;
      if ((*(v6 + 83) & 1) == 0)
      {
        goto LABEL_101;
      }

      goto LABEL_100;
    }

    v17 = 2288;
    goto LABEL_97;
  }

  if (v15)
  {
    v17 = 3312;
    goto LABEL_97;
  }

  if (*(v6 + 82))
  {
    v17 = 1264;
LABEL_98:
    v17 |= 0x2000u;
LABEL_99:
    if (*(v6 + 83) != 1)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

  v17 = 1264;
  if (*(v6 + 83))
  {
    goto LABEL_100;
  }

LABEL_101:
  v18 = sub_100033AA8(_swiftEmptyArrayStorage);
  v72 = type metadata accessor for BinaryEncoder();
  v19 = swift_allocObject();
  v71 = xmmword_100480A90;
  *(v19 + 16) = xmmword_100480A90;
  v67 = v19 + 16;
  *(v19 + 32) = v18;
  v84 = &type metadata for BinaryEncoder.UnkeyedContainer;
  v20 = sub_1000D12E4();
  v21 = v20;
  v85 = v20;
  v83[0] = v19;
  if (*(v6 + 2))
  {
  }

  else
  {
    v3 = v20;
    sub_100031694(v83, &type metadata for BinaryEncoder.UnkeyedContainer);

    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (v2)
    {
      goto LABEL_390;
    }

    sub_100031694(v83, v84);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v4 = v84;
    sub_100031694(v83, v84);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v17 |= 0x100u;
    v21 = v3;
  }

  if (((*(v6 + 4) | (*(v6 + 8) << 32)) & 0xFF00000000) != 0x300000000)
  {
    if ((*(v6 + 4) & 0xFFFF0000) != 0)
    {
      __break(1u);
      goto LABEL_585;
    }

    sub_100031694(v83, v84);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (v2)
    {
      goto LABEL_390;
    }

    v17 |= 0x200u;
  }

  v22 = *(v6 + 16);
  v66 = a1;
  if ((v22 & 1) != 0 || (v23 = *(v6 + 20) | (*(v6 + 24) << 32), (v23 & 0xFF00000000) == 0x300000000))
  {
    if (*(v6 + 32))
    {
      goto LABEL_112;
    }

LABEL_110:
    v24 = *(v6 + 30);
    v25 = *(v6 + 26) | (v24 << 32);
    LOBYTE(v80[0]) = *(v6 + 26);
    v26.i64[0] = 0xFFFFFFFFFFFFLL;
    v26.i64[1] = 0xFFFFFFFFFFFFLL;
    v27 = vandq_s8(vdupq_n_s64(v25), v26);
    v28 = vshlq_u64(v27, xmmword_1004817A0);
    *v27.i8 = vmovn_s64(vshlq_u64(v27, xmmword_100481790));
    *v28.i8 = vmovn_s64(v28);
    v28.i16[1] = v28.i16[2];
    v28.i16[2] = v27.i16[0];
    v28.i16[3] = v27.i16[2];
    *(v80 + 1) = vmovn_s16(v28).u32[0];
    BYTE5(v80[0]) = BYTE1(v24);
    sub_100031694(v83, v84);
    sub_10008A490();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    if (v2)
    {
      goto LABEL_390;
    }

    v17 |= 2u;
    a1 = v66;
LABEL_112:
    if (*(v6 + 62))
    {
      v3 = a1;
      v29 = v21;
      v30 = *(v6 + 48);
      if (!v30)
      {
LABEL_121:
        v39 = v29;
        if (*(v6 + 63) != 1)
        {
          LODWORD(v65) = v17;
          goto LABEL_128;
        }

        v40 = v17 | 0x1000;
        sub_100031694(v83, v84);
        dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
        if (!v5)
        {
          sub_100031694(v83, v84);
          dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
          LODWORD(v65) = v40;
          v3 = v66;
LABEL_128:
          v64 = v19;
          v47 = sub_100033AA8(_swiftEmptyArrayStorage);
          a1 = swift_allocObject();
          *(a1 + 16) = v71;
          v4 = (a1 + 16);
          *(a1 + 32) = v47;
          v81 = &type metadata for BinaryEncoder.UnkeyedContainer;
          v82 = v39;
          v80[0] = a1;
          if (*(v6 + 84) == 1)
          {
            v19 = v86;
            if (*(v6 + 85))
            {
              if (*(v6 + 87))
              {
                if (*(v6 + 89))
                {
                  if (*(v6 + 86))
                  {
                    if (*(v6 + 88))
                    {
                      v48 = 474;
                      goto LABEL_351;
                    }

                    if (*(v6 + 90))
                    {
                      v48 = 346;
LABEL_352:
                      v48 |= 0x200u;
LABEL_353:
                      if (*(v6 + 91) != 1)
                      {
                        goto LABEL_355;
                      }

                      goto LABEL_354;
                    }

                    if (*(v6 + 91))
                    {
                      v48 = 346;
LABEL_354:
                      v48 |= 0x800u;
LABEL_355:
                      if (*(v6 + 92) != 1)
                      {
                        goto LABEL_357;
                      }

                      goto LABEL_356;
                    }

                    if (*(v6 + 92))
                    {
                      v48 = 346;
LABEL_356:
                      v48 |= 0x1000u;
LABEL_357:
                      if (*(v6 + 93) != 1)
                      {
                        goto LABEL_359;
                      }

                      goto LABEL_358;
                    }

LABEL_585:
                    v48 = 346;
                    if ((*(v6 + 93) & 1) == 0)
                    {
                      goto LABEL_359;
                    }

LABEL_358:
                    v48 |= 0x2000u;
                    goto LABEL_359;
                  }

                  if (*(v6 + 88))
                  {
                    v48 = 472;
                    goto LABEL_351;
                  }

                  if (*(v6 + 90))
                  {
                    v48 = 344;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v48 = 344;
                    goto LABEL_354;
                  }

                  if (*(v6 + 92))
                  {
                    v48 = 344;
                    goto LABEL_356;
                  }

                  v48 = 344;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

LABEL_359:
                  if (*(v6 + 68) == 1)
                  {
                  }

                  else
                  {
                    sub_100031694(v80, &type metadata for BinaryEncoder.UnkeyedContainer);

                    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
                    if (v5)
                    {
LABEL_365:

LABEL_386:
                      sub_100002A00(v80);
                      return sub_100002A00(v83);
                    }

                    v48 |= 1u;
                    v3 = v66;
                  }

                  v72 = v4;
                  if ((*(v6 + 76) & 1) == 0)
                  {
                    sub_100031694(v80, v81);
                    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
                    if (v5)
                    {
                      goto LABEL_365;
                    }

                    v48 |= 4u;
                    v3 = v66;
                  }

                  v49 = type metadata accessor for AWDLActionFrame.DataPathState(0);
                  v50 = v69;
                  sub_1001606DC(v6 + v49[34], v69);
                  v51 = v70;
                  if ((*(v70 + 48))(v50, 1, v19) == 1)
                  {
                    sub_100016290(v50, &unk_10059B170, &unk_1004B4D70);
                    v52 = v64;
                    v53 = v48;
LABEL_369:
                    v54 = v65;
LABEL_375:
                    if (v53)
                    {
                      v57 = v54 | 0x8000;
                    }

                    else
                    {
                      v57 = v54;
                    }

                    sub_100029B34(v3, v3[3]);
                    dispatch thunk of Encoder.unkeyedContainer()();
                    v77 = v57;
                    sub_100031694(v78, v79);
                    sub_1001607BC();
                    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
                    if (v5 || (LODWORD(v86) = v53, swift_beginAccess(), v59 = *(v52 + 24), v75 = *(v52 + 16), v58 = v75, v76 = v59, sub_100031694(v78, v79), sub_10000AB0C(v58, v59), sub_1000B8088(), dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)(), sub_1000124C8(v75, v76), (v57 & 0x8000) == 0))
                    {
                    }

                    else
                    {
                      LOWORD(v75) = v86;
                      sub_100031694(v78, v79);
                      sub_100160810();
                      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
                      swift_beginAccess();
                      v62 = *(a1 + 24);
                      v73 = *(a1 + 16);
                      v61 = v73;
                      v74 = v62;
                      sub_100031694(v78, v79);
                      sub_10000AB0C(v61, v62);
                      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
                      sub_1000124C8(v73, v74);
                    }

                    sub_100002A00(v78);
                    goto LABEL_386;
                  }

                  *&v71 = a1;
                  v55 = v68;
                  (*(v51 + 32))(v68, v50, v19);
                  v56 = v6 + v49[35];
                  if (*(v56 + 4) == 1)
                  {
                    (*(v51 + 8))(v55, v19);
                  }

                  else
                  {
                    if (*(v6 + v49[36] + 4) != 1)
                    {
                      LODWORD(v69) = *v56;
                      v60 = v68;
                      sub_100028EF8();
                      sub_100031694(v80, v81);
                      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
                      if (v5)
                      {
                        (*(v70 + 8))(v60, v86);
                        goto LABEL_365;
                      }

                      sub_100031694(v80, v81);
                      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
                      sub_100031694(v80, v81);
                      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
                      v53 = v48 | 0x20;
                      (*(v70 + 8))(v68, v86);
                      v3 = v66;
                      a1 = v71;
                      v52 = v64;
                      goto LABEL_369;
                    }

                    (*(v70 + 8))(v68, v19);
                  }

                  a1 = v71;
                  v52 = v64;
                  v54 = v65;
                  v53 = v48;
                  goto LABEL_375;
                }

                if (*(v6 + 86))
                {
                  if (*(v6 + 88))
                  {
                    v48 = 218;
                    goto LABEL_351;
                  }

                  if (*(v6 + 90))
                  {
                    v48 = 90;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v48 = 90;
                    goto LABEL_354;
                  }

                  if (*(v6 + 92))
                  {
                    v48 = 90;
                    goto LABEL_356;
                  }

                  v48 = 90;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                if ((*(v6 + 88) & 1) == 0)
                {
                  if (*(v6 + 90))
                  {
                    v48 = 88;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v48 = 88;
                    goto LABEL_354;
                  }

                  if (*(v6 + 92))
                  {
                    v48 = 88;
                    goto LABEL_356;
                  }

                  v48 = 88;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                v48 = 216;
              }

              else if (*(v6 + 89))
              {
                if (*(v6 + 86))
                {
                  if (*(v6 + 88))
                  {
                    v48 = 466;
                    goto LABEL_351;
                  }

                  if (*(v6 + 90))
                  {
                    v48 = 338;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v48 = 338;
                    goto LABEL_354;
                  }

                  if (*(v6 + 92))
                  {
                    v48 = 338;
                    goto LABEL_356;
                  }

                  v48 = 338;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                if ((*(v6 + 88) & 1) == 0)
                {
                  if (*(v6 + 90))
                  {
                    v48 = 336;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v48 = 336;
                    goto LABEL_354;
                  }

                  if (*(v6 + 92))
                  {
                    v48 = 336;
                    goto LABEL_356;
                  }

                  v48 = 336;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                v48 = 464;
              }

              else
              {
                if (*(v6 + 86))
                {
                  if (*(v6 + 88))
                  {
                    v48 = 210;
                    goto LABEL_351;
                  }

                  if (*(v6 + 90))
                  {
                    v48 = 82;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v48 = 82;
                    goto LABEL_354;
                  }

                  if (*(v6 + 92))
                  {
                    v48 = 82;
                    goto LABEL_356;
                  }

                  v48 = 82;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                if ((*(v6 + 88) & 1) == 0)
                {
                  if (*(v6 + 90))
                  {
                    v48 = 80;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v48 = 80;
                    goto LABEL_354;
                  }

                  if (*(v6 + 92))
                  {
                    v48 = 80;
                    goto LABEL_356;
                  }

                  v48 = 80;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                v48 = 208;
              }
            }

            else if (*(v6 + 87))
            {
              if (*(v6 + 89))
              {
                if (*(v6 + 86))
                {
                  if (*(v6 + 88))
                  {
                    v48 = 410;
                    goto LABEL_351;
                  }

                  if (*(v6 + 90))
                  {
                    v48 = 282;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v48 = 282;
                    goto LABEL_354;
                  }

                  if (*(v6 + 92))
                  {
                    v48 = 282;
                    goto LABEL_356;
                  }

                  v48 = 282;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                if ((*(v6 + 88) & 1) == 0)
                {
                  if (*(v6 + 90))
                  {
                    v48 = 280;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v48 = 280;
                    goto LABEL_354;
                  }

                  if (*(v6 + 92))
                  {
                    v48 = 280;
                    goto LABEL_356;
                  }

                  v48 = 280;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                v48 = 408;
              }

              else
              {
                if (*(v6 + 86))
                {
                  if (*(v6 + 88))
                  {
                    v48 = 154;
                    goto LABEL_351;
                  }

                  if (*(v6 + 90))
                  {
                    v48 = 26;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v48 = 26;
                    goto LABEL_354;
                  }

                  if (*(v6 + 92))
                  {
                    v48 = 26;
                    goto LABEL_356;
                  }

                  v48 = 26;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                if ((*(v6 + 88) & 1) == 0)
                {
                  if (*(v6 + 90))
                  {
                    v48 = 24;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v48 = 24;
                    goto LABEL_354;
                  }

                  if (*(v6 + 92))
                  {
                    v48 = 24;
                    goto LABEL_356;
                  }

                  v48 = 24;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                v48 = 152;
              }
            }

            else if (*(v6 + 89))
            {
              if (*(v6 + 86))
              {
                if (*(v6 + 88))
                {
                  v48 = 402;
                  goto LABEL_351;
                }

                if (*(v6 + 90))
                {
                  v48 = 274;
                  goto LABEL_352;
                }

                if (*(v6 + 91))
                {
                  v48 = 274;
                  goto LABEL_354;
                }

                if (*(v6 + 92))
                {
                  v48 = 274;
                  goto LABEL_356;
                }

                v48 = 274;
                if (*(v6 + 93))
                {
                  goto LABEL_358;
                }

                goto LABEL_359;
              }

              if ((*(v6 + 88) & 1) == 0)
              {
                if (*(v6 + 90))
                {
                  v48 = 272;
                  goto LABEL_352;
                }

                if (*(v6 + 91))
                {
                  v48 = 272;
                  goto LABEL_354;
                }

                if (*(v6 + 92))
                {
                  v48 = 272;
                  goto LABEL_356;
                }

                v48 = 272;
                if (*(v6 + 93))
                {
                  goto LABEL_358;
                }

                goto LABEL_359;
              }

              v48 = 400;
            }

            else
            {
              if (*(v6 + 86))
              {
                if (*(v6 + 88))
                {
                  v48 = 146;
                  goto LABEL_351;
                }

                if (*(v6 + 90))
                {
                  v48 = 18;
                  goto LABEL_352;
                }

                if (*(v6 + 91))
                {
                  v48 = 18;
                  goto LABEL_354;
                }

                if (*(v6 + 92))
                {
                  v48 = 18;
                  goto LABEL_356;
                }

                v48 = 18;
                if (*(v6 + 93))
                {
                  goto LABEL_358;
                }

                goto LABEL_359;
              }

              if ((*(v6 + 88) & 1) == 0)
              {
                if (*(v6 + 90))
                {
                  v48 = 16;
                  goto LABEL_352;
                }

                if (*(v6 + 91))
                {
                  v48 = 16;
                  goto LABEL_354;
                }

                if (*(v6 + 92))
                {
                  v48 = 16;
                  goto LABEL_356;
                }

                v48 = 16;
                if (*(v6 + 93))
                {
                  goto LABEL_358;
                }

                goto LABEL_359;
              }

              v48 = 144;
            }
          }

          else
          {
            v19 = v86;
            if (*(v6 + 85))
            {
              if (*(v6 + 87))
              {
                if (*(v6 + 89))
                {
                  if (*(v6 + 86))
                  {
                    if (*(v6 + 88))
                    {
                      v48 = 458;
                      goto LABEL_351;
                    }

                    if (*(v6 + 90))
                    {
                      v48 = 330;
                      goto LABEL_352;
                    }

                    if (*(v6 + 91))
                    {
                      v48 = 330;
                      goto LABEL_354;
                    }

                    if (*(v6 + 92))
                    {
                      v48 = 330;
                      goto LABEL_356;
                    }

                    v48 = 330;
                    if (*(v6 + 93))
                    {
                      goto LABEL_358;
                    }

                    goto LABEL_359;
                  }

                  if ((*(v6 + 88) & 1) == 0)
                  {
                    if (*(v6 + 90))
                    {
                      v48 = 328;
                      goto LABEL_352;
                    }

                    if (*(v6 + 91))
                    {
                      v48 = 328;
                      goto LABEL_354;
                    }

                    if (*(v6 + 92))
                    {
                      v48 = 328;
                      goto LABEL_356;
                    }

                    v48 = 328;
                    if (*(v6 + 93))
                    {
                      goto LABEL_358;
                    }

                    goto LABEL_359;
                  }

                  v48 = 456;
                }

                else
                {
                  if (*(v6 + 86))
                  {
                    if (*(v6 + 88))
                    {
                      v48 = 202;
                      goto LABEL_351;
                    }

                    if (*(v6 + 90))
                    {
                      v48 = 74;
                      goto LABEL_352;
                    }

                    if (*(v6 + 91))
                    {
                      v48 = 74;
                      goto LABEL_354;
                    }

                    if (*(v6 + 92))
                    {
                      v48 = 74;
                      goto LABEL_356;
                    }

                    v48 = 74;
                    if (*(v6 + 93))
                    {
                      goto LABEL_358;
                    }

                    goto LABEL_359;
                  }

                  if ((*(v6 + 88) & 1) == 0)
                  {
                    if (*(v6 + 90))
                    {
                      v48 = 72;
                      goto LABEL_352;
                    }

                    if (*(v6 + 91))
                    {
                      v48 = 72;
                      goto LABEL_354;
                    }

                    if (*(v6 + 92))
                    {
                      v48 = 72;
                      goto LABEL_356;
                    }

                    v48 = 72;
                    if (*(v6 + 93))
                    {
                      goto LABEL_358;
                    }

                    goto LABEL_359;
                  }

                  v48 = 200;
                }
              }

              else if (*(v6 + 89))
              {
                if (*(v6 + 86))
                {
                  if (*(v6 + 88))
                  {
                    v48 = 450;
                    goto LABEL_351;
                  }

                  if (*(v6 + 90))
                  {
                    v48 = 322;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v48 = 322;
                    goto LABEL_354;
                  }

                  if (*(v6 + 92))
                  {
                    v48 = 322;
                    goto LABEL_356;
                  }

                  v48 = 322;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                if ((*(v6 + 88) & 1) == 0)
                {
                  if (*(v6 + 90))
                  {
                    v48 = 320;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v48 = 320;
                    goto LABEL_354;
                  }

                  if (*(v6 + 92))
                  {
                    v48 = 320;
                    goto LABEL_356;
                  }

                  v48 = 320;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                v48 = 448;
              }

              else
              {
                if (*(v6 + 86))
                {
                  if (*(v6 + 88))
                  {
                    v48 = 194;
                    goto LABEL_351;
                  }

                  if (*(v6 + 90))
                  {
                    v48 = 66;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v48 = 66;
                    goto LABEL_354;
                  }

                  if (*(v6 + 92))
                  {
                    v48 = 66;
                    goto LABEL_356;
                  }

                  v48 = 66;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                if ((*(v6 + 88) & 1) == 0)
                {
                  if (*(v6 + 90))
                  {
                    v48 = 64;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v48 = 64;
                    goto LABEL_354;
                  }

                  if (*(v6 + 92))
                  {
                    v48 = 64;
                    goto LABEL_356;
                  }

                  v48 = 64;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                v48 = 192;
              }
            }

            else if (*(v6 + 87))
            {
              if (*(v6 + 89))
              {
                if (*(v6 + 86))
                {
                  if (*(v6 + 88))
                  {
                    v48 = 394;
                    goto LABEL_351;
                  }

                  if (*(v6 + 90))
                  {
                    v48 = 266;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v48 = 266;
                    goto LABEL_354;
                  }

                  if (*(v6 + 92))
                  {
                    v48 = 266;
                    goto LABEL_356;
                  }

                  v48 = 266;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                if ((*(v6 + 88) & 1) == 0)
                {
                  if (*(v6 + 90))
                  {
                    v48 = 264;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v48 = 264;
                    goto LABEL_354;
                  }

                  if (*(v6 + 92))
                  {
                    v48 = 264;
                    goto LABEL_356;
                  }

                  v48 = 264;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                v48 = 392;
              }

              else
              {
                if (*(v6 + 86))
                {
                  if (*(v6 + 88))
                  {
                    v48 = 138;
                    goto LABEL_351;
                  }

                  if (*(v6 + 90))
                  {
                    v48 = 10;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v48 = 10;
                    goto LABEL_354;
                  }

                  if (*(v6 + 92))
                  {
                    v48 = 10;
                    goto LABEL_356;
                  }

                  v48 = 10;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                if ((*(v6 + 88) & 1) == 0)
                {
                  if (*(v6 + 90))
                  {
                    v48 = 8;
                    goto LABEL_352;
                  }

                  if (*(v6 + 91))
                  {
                    v48 = 8;
                    goto LABEL_354;
                  }

                  if (*(v6 + 92))
                  {
                    v48 = 8;
                    goto LABEL_356;
                  }

                  v48 = 8;
                  if (*(v6 + 93))
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_359;
                }

                v48 = 136;
              }
            }

            else if (*(v6 + 89))
            {
              if (*(v6 + 86))
              {
                if (*(v6 + 88))
                {
                  v48 = 386;
                  goto LABEL_351;
                }

                if (*(v6 + 90))
                {
                  v48 = 258;
                  goto LABEL_352;
                }

                if (*(v6 + 91))
                {
                  v48 = 258;
                  goto LABEL_354;
                }

                if (*(v6 + 92))
                {
                  v48 = 258;
                  goto LABEL_356;
                }

                v48 = 258;
                if (*(v6 + 93))
                {
                  goto LABEL_358;
                }

                goto LABEL_359;
              }

              if ((*(v6 + 88) & 1) == 0)
              {
                if (*(v6 + 90))
                {
                  v48 = 256;
                  goto LABEL_352;
                }

                if (*(v6 + 91))
                {
                  v48 = 256;
                  goto LABEL_354;
                }

                if (*(v6 + 92))
                {
                  v48 = 256;
                  goto LABEL_356;
                }

                v48 = 256;
                if (*(v6 + 93))
                {
                  goto LABEL_358;
                }

                goto LABEL_359;
              }

              v48 = 384;
            }

            else
            {
              if (*(v6 + 86))
              {
                if (*(v6 + 88))
                {
                  v48 = 130;
                  goto LABEL_351;
                }

                if (*(v6 + 90))
                {
                  v48 = 2;
                  goto LABEL_352;
                }

                if (*(v6 + 91))
                {
                  v48 = 2;
                  goto LABEL_354;
                }

                if (*(v6 + 92))
                {
                  v48 = 2;
                  goto LABEL_356;
                }

                v48 = 2;
                if (*(v6 + 93))
                {
                  goto LABEL_358;
                }

                goto LABEL_359;
              }

              if ((*(v6 + 88) & 1) == 0)
              {
                if (*(v6 + 90))
                {
                  v48 = 0;
                  goto LABEL_352;
                }

                if (*(v6 + 91))
                {
                  v48 = 0;
                  goto LABEL_354;
                }

                if (*(v6 + 92))
                {
                  v48 = 0;
                  goto LABEL_356;
                }

                v48 = 0;
                if (*(v6 + 93))
                {
                  goto LABEL_358;
                }

                goto LABEL_359;
              }

              v48 = 128;
            }
          }

LABEL_351:
          if ((*(v6 + 90) & 1) == 0)
          {
            goto LABEL_353;
          }

          goto LABEL_352;
        }

LABEL_390:

        return sub_100002A00(v83);
      }
    }

    else
    {
      v31 = *(v6 + 60);
      v32 = *(v6 + 56) | (v31 << 32);
      LOBYTE(v80[0]) = *(v6 + 56);
      v33.i64[0] = 0xFFFFFFFFFFFFLL;
      v33.i64[1] = 0xFFFFFFFFFFFFLL;
      v34 = vandq_s8(vdupq_n_s64(v32), v33);
      v35 = vshlq_u64(v34, xmmword_1004817A0);
      *v34.i8 = vmovn_s64(vshlq_u64(v34, xmmword_100481790));
      *v35.i8 = vmovn_s64(v35);
      v35.i16[1] = v35.i16[2];
      v35.i16[2] = v34.i16[0];
      v35.i16[3] = v34.i16[2];
      *(v80 + 1) = vmovn_s16(v35).u32[0];
      BYTE5(v80[0]) = BYTE1(v31);
      sub_100031694(v83, v84);
      sub_10008A490();
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      if (v2)
      {
        goto LABEL_390;
      }

      v29 = v21;
      v17 |= 4u;
      v3 = v66;
      v30 = *(v6 + 48);
      if (!v30)
      {
        goto LABEL_121;
      }
    }

    v36 = *(v6 + 40);
    sub_100031694(v83, v84);
    v37._countAndFlagsBits = v36;
    v37._object = v30;
    UnkeyedEncodingContainer.encodeStringWithUInt8SizePrefix(_:)(v37);
    v5 = v38;
    if (v38)
    {
      goto LABEL_390;
    }

    v17 |= 8u;
    v3 = v66;
    goto LABEL_121;
  }

  v65 = v21;
  v41 = *(v6 + 14);
  v42 = *(v6 + 10) | (v41 << 32);
  LOBYTE(v80[0]) = *(v6 + 10);
  v43.i64[0] = 0xFFFFFFFFFFFFLL;
  v43.i64[1] = 0xFFFFFFFFFFFFLL;
  v44 = vandq_s8(vdupq_n_s64(v42), v43);
  v45 = vshlq_u64(v44, xmmword_1004817A0);
  *v44.i8 = vmovn_s64(vshlq_u64(v44, xmmword_100481790));
  *v45.i8 = vmovn_s64(v45);
  v45.i16[1] = v45.i16[2];
  v45.i16[2] = v44.i16[0];
  v45.i16[3] = v44.i16[2];
  *(v80 + 1) = vmovn_s16(v45).u32[0];
  BYTE5(v80[0]) = BYTE1(v41);
  sub_100031694(v83, v84);
  sub_10008A490();
  result = dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (v2)
  {
    goto LABEL_390;
  }

  if ((v23 & 0xFFFF0000) == 0)
  {
    sub_100031694(v83, v84);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v17 |= 1u;
    a1 = v66;
    v21 = v65;
    if (*(v6 + 32))
    {
      goto LABEL_112;
    }

    goto LABEL_110;
  }

  __break(1u);
  return result;
}

uint64_t AWDLActionFrame.Arpa.hostname.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t static AWDLActionFrame.Arpa.__derived_struct_equals(_:_:)(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t AWDLActionFrame.Arpa.hash(into:)(uint64_t a1, Swift::UInt8 a2, uint64_t a3, uint64_t a4)
{
  Hasher._combine(_:)(a2);

  return String.hash(into:)();
}

Swift::Int AWDLActionFrame.Arpa.hashValue.getter(Swift::UInt8 a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001505B4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = AWDLActionFrame.Arpa.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t AWDLActionFrame.Arpa.encode(to:)(void *a1, char a2, uint64_t a3, void *a4)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v13, v14);
  sub_100160864();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v4)
  {
    sub_100031694(v13, v14);
    v7._countAndFlagsBits = a3;
    v7._object = a4;
    UnkeyedEncodingContainer.encodeStringWithUInt8SizePrefix(_:)(v7);
    if (!v8)
    {
      v11 = sub_10002D874(&off_100552F58);
      v12 = v9;
      sub_100031694(v13, v14);
      sub_1000B8088();
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      sub_1000124C8(v11, v12);
    }
  }

  return sub_100002A00(v13);
}

Swift::Int sub_100150770()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001507D4(uint64_t a1)
{
  Hasher._combine(_:)(*v1);

  return String.hash(into:)();
}

Swift::Int sub_100150828(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100150888(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1001508E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1752457584 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100150968(uint64_t a1)
{
  v2 = sub_10004B190();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001509A4(uint64_t a1)
{
  v2 = sub_10004B190();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AWDLActionFrame.SyncTreePath.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_10058E388, &qword_100489490);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v9 - v6;
  sub_100029B34(a1, a1[3]);
  sub_10004B190();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_10005DC58(&qword_10058E398, &qword_100489498);
  sub_10004B1E4(&qword_10058E3A0, sub_10008A490, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

void AWDLActionFrame.SyncTreePath.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 37);
    do
    {
      v5 = *(v4 - 5);
      v6 = *(v4 - 4);
      v7 = *(v4 - 3);
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;
      v4 += 6;
      Hasher._combine(_:)(v5);
      Hasher._combine(_:)(v6);
      Hasher._combine(_:)(v7);
      Hasher._combine(_:)(v8);
      Hasher._combine(_:)(v9);
      Hasher._combine(_:)(v10);
      --v3;
    }

    while (v3);
  }
}

Swift::Int AWDLActionFrame.SyncTreePath.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(a1 + 16);
  Hasher._combine(_:)(v2);
  if (v2)
  {
    v3 = (a1 + 37);
    do
    {
      v4 = *(v3 - 5);
      v5 = *(v3 - 4);
      v6 = *(v3 - 3);
      v7 = *(v3 - 2);
      v8 = *(v3 - 1);
      v9 = *v3;
      v3 += 6;
      Hasher._combine(_:)(v4);
      Hasher._combine(_:)(v5);
      Hasher._combine(_:)(v6);
      Hasher._combine(_:)(v7);
      Hasher._combine(_:)(v8);
      Hasher._combine(_:)(v9);
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

void *sub_100150CF4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10004AFDC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_100150D64(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

BOOL static AWDLActionFrame.AWDLVersion.< infix(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1 >> 4;
  v3 = a2 >> 4;
  v4 = (a1 & 0xFu) < (a2 & 0xFu);
  if (v2 != v3)
  {
    v4 = 0;
  }

  return v2 < v3 || v4;
}

uint64_t sub_100150EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100150F2C(uint64_t a1)
{
  v2 = sub_100032CD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100150F68(uint64_t a1)
{
  v2 = sub_100032CD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AWDLActionFrame.AWDLVersion.encode(to:)(void *a1, uint64_t a2)
{
  v3 = sub_10005DC58(&qword_10058E3A8, &qword_1004894A0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v8 - v5;
  sub_100029B34(a1, a1[3]);
  sub_100032CD4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

void *AWDLActionFrame.AWDLVersion.init(from:)(void *a1)
{
  v3 = sub_10005DC58(&qword_10058E3B8, &qword_1004894A8);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9 - v5;
  v7 = sub_100029B34(a1, a1[3]);
  sub_100032CD4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100002A00(a1);
  return v7;
}

BOOL sub_10015122C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 4;
  v5 = (v2 & 0xF) < (v3 & 0xF);
  if (v4 != v3 >> 4)
  {
    v5 = 0;
  }

  return v4 < v3 >> 4 || v5;
}

BOOL sub_100151260(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 4;
  if (v3 >> 4 < v2 >> 4)
  {
    return 0;
  }

  v6 = (v3 & 0xF) >= (v2 & 0xF);
  return v3 >> 4 != v4 || v6;
}

BOOL sub_1001512A0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 4;
  if (v2 >> 4 < v3 >> 4)
  {
    return 0;
  }

  v6 = (v2 & 0xF) >= (v3 & 0xF);
  return v4 != v3 >> 4 || v6;
}

BOOL sub_1001512E0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 4;
  v5 = (v3 & 0xF) < (v2 & 0xF);
  if (v3 >> 4 != v4)
  {
    v5 = 0;
  }

  return v3 >> 4 < v4 || v5;
}

uint64_t sub_100151314(void *a1)
{
  v2 = sub_10005DC58(&qword_10058E3A8, &qword_1004894A0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_100029B34(a1, a1[3]);
  sub_100032CD4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1001514A4@<X0>(Swift::UInt8 *a1@<X0>, CoreP2P::AWDLActionFrame::Version::PlatformType_optional *a2@<X8>)
{
  result = _s7CoreP2P15AWDLActionFrameV7VersionV12PlatformTypeO8rawValueAGSgs5UInt8V_tcfC_0(*a1);
  a2->value = result;
  return result;
}