uint64_t sub_1003258EC(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 328) = a1;

  return _swift_task_switch(sub_100325A04, v2, 0);
}

uint64_t sub_100325A04()
{
  v57 = v0;
  v1 = v0[41];
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = 0;
    v5 = v0[28];
    v53 = (v5 + 32);
    v6 = _swiftEmptyArrayStorage;
    v51 = *(v1 + 16);
    v52 = v0[41];
    while (v4 < *(v1 + 16))
    {
      v3 = v0[30];
      v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v8 = *(v5 + 72);
      (*(v5 + 16))(v3, v0[41] + v7 + v8 * v4, v0[27]);
      if (ExtensionIdentity.isEnabled.getter())
      {
        v9 = *v53;
        (*v53)(v0[29], v0[30], v0[27]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56[0] = v6;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v3 = v56;
          sub_1001731B0(0, *(v6 + 2) + 1, 1);
          v6 = v56[0];
        }

        v12 = *(v6 + 2);
        v11 = *(v6 + 3);
        if (v12 >= v11 >> 1)
        {
          v3 = v56;
          sub_1001731B0((v11 > 1), v12 + 1, 1);
          v6 = v56[0];
        }

        v13 = v0[29];
        v14 = v0[27];
        *(v6 + 2) = v12 + 1;
        v9(&v6[v7 + v12 * v8], v13, v14);
        v2 = v51;
        v1 = v52;
      }

      else
      {
        (*(v5 + 8))(v0[30], v0[27]);
      }

      if (v2 == ++v4)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_36:
    v3 = sub_1003C60BC(0, v3[2] + 1, 1, v3);
LABEL_32:
    v48 = v3[2];
    v47 = v3[3];
    v39 = v3;
    if (v48 >= v47 >> 1)
    {
      v39 = sub_1003C60BC((v47 > 1), v48 + 1, 1, v3);
    }

    v49 = v0[24];
    v50 = v0[25];
    (*(v0[14] + 8))(v0[15], v0[13]);
    v39[2] = v48 + 1;
    sub_100326E78(v50, v39 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v48, type metadata accessor for MobileDocumentProviderApplication);
    goto LABEL_28;
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_14:

  v15 = *(v6 + 2);
  if (v15)
  {
    v16 = v0[28];
    v17 = v0[24];
    v56[0] = _swiftEmptyArrayStorage;
    sub_10017316C(0, v15, 0);
    v18 = *(v16 + 16);
    v16 += 16;
    v54 = v18;
    v19 = v56[0];
    v20 = &v6[(*(v16 + 64) + 32) & ~*(v16 + 64)];
    v21 = *(v16 + 56);
    do
    {
      v54(v0[26], v20, v0[27]);
      swift_storeEnumTagMultiPayload();
      v56[0] = v19;
      v22 = v19[2];
      v23 = v19[3];
      if (v22 >= v23 >> 1)
      {
        sub_10017316C((v23 > 1), v22 + 1, 1);
        v19 = v56[0];
      }

      v24 = v0[26];
      v19[2] = v22 + 1;
      sub_100326E78(v24, v19 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v22, type metadata accessor for MobileDocumentProviderApplication);
      v20 += v21;
      --v15;
    }

    while (v15);
    v55 = v19;
  }

  else
  {

    v55 = _swiftEmptyArrayStorage;
  }

  if (FirstPartyDocumentProviderPreferencesManager.isFirstPartyExtensionEnabled.getter())
  {
    defaultLogger()();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "MobileDocumentProviderDataSource Apple Wallet application is enabled to be a document provider", v27, 2u);
    }

    v28 = v0[22];
    v30 = v0[16];
    v29 = v0[17];
    v31 = v0[3];

    v5 = *(v29 + 8);
    (v5)(v28, v30);
    sub_10000BA08((v31 + 152), *(v31 + 176));
    dispatch thunk of BundleRecordFetching.record(withBundleIdentifier:allowPlaceholder:)();
    (*(v0[14] + 16))(v0[25], v0[15], v0[13]);
    swift_storeEnumTagMultiPayload();
    v3 = v55;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    if (v46)
    {
      goto LABEL_32;
    }

    goto LABEL_36;
  }

  defaultLogger()();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  v34 = os_log_type_enabled(v32, v33);
  v35 = v0[21];
  v36 = v0[16];
  v37 = v0[17];
  if (v34)
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "MobileDocumentProviderDataSource Apple Wallet application is not enabled to be a document provider; skipping adding to list.", v38, 2u);
  }

  v5 = *(v37 + 8);
  (v5)(v35, v36);
  v39 = v55;
LABEL_28:
  v0[42] = v5;
  v0[43] = v39;
  v40 = v0[12];
  v41 = v0[9];
  (*(v0[8] + 16))(v41, v0[2], v0[7]);
  sub_10042741C(v41, v40);
  sub_10000BA08((v0[3] + 232), *(v0[3] + 256));
  v42 = swift_task_alloc();
  v0[44] = v42;
  *v42 = v0;
  v42[1] = sub_100326204;
  v43 = v0[39];
  v44 = v0[12];

  return sub_100326EE0(v39, v43, v44);
}

uint64_t sub_100326204(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 360) = a1;
  *(v4 + 368) = v1;

  v5 = *(v3 + 24);
  if (v1)
  {
    v6 = sub_10032667C;
  }

  else
  {
    v6 = sub_100326354;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100326354(uint64_t a1)
{
  v31 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[38];
    v27 = v1[39];
    v24 = v1[42];
    v25 = v1[37];
    v20 = v1[16];
    v21 = v1[20];
    v5 = v1[11];
    v22 = v1[10];
    v23 = v1[12];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30 = v7;
    *v6 = 136315138;
    type metadata accessor for MobileDocumentProviderRecord(0);
    v8 = Array.description.getter();
    v10 = sub_100141FE4(v8, v9, &v30);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderDataSource filtered extension records: %s", v6, 0xCu);
    sub_10000BB78(v7);

    v24(v21, v20);
    (*(v5 + 8))(v23, v22);
    (*(v4 + 8))(v27, v25);
  }

  else
  {
    v11 = v1[42];
    v12 = v1[38];
    v26 = v1[37];
    v28 = v1[39];
    v13 = v1[20];
    v14 = v1[16];
    v15 = v1[11];
    v16 = v1[12];
    v17 = v1[10];

    v11(v13, v14);
    (*(v15 + 8))(v16, v17);
    (*(v12 + 8))(v28, v26);
  }

  *(v1[3] + 280) = v1[45];

  v29 = v1[45];

  v18 = v1[1];

  return v18(v29);
}

uint64_t sub_10032667C()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003267F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for MobileDocumentProviderRecord(0);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100326910, v3, 0);
}

void sub_100326910(uint64_t a1)
{
  v29 = v1;
  v2 = *(v1[5] + 280);
  if (!v2)
  {
    defaultLogger()();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    v16 = os_log_type_enabled(v14, v15);
    v18 = v1[7];
    v17 = v1[8];
    v19 = v1[6];
    if (v16)
    {
      v21 = v1[3];
      v20 = v1[4];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_100141FE4(v21, v20, &v28);
      _os_log_impl(&_mh_execute_header, v14, v15, "There are no previously fetched records, returning nil for %s", v22, 0xCu);
      sub_10000BB78(v23);
    }

    (*(v18 + 8))(v17, v19);
    (*(v1[10] + 56))(v1[2], 1, 1, v1[9]);
    goto LABEL_17;
  }

  v3 = *(v2 + 16);

  if (!v3)
  {
LABEL_11:
    v11 = v1[9];
    v12 = v1[10];
    v13 = v1[2];

    (*(v12 + 56))(v13, 1, 1, v11);
LABEL_17:

    v27 = v1[1];

    v27();
    return;
  }

  v4 = 0;
  v5 = v1[10];
  while (v4 < *(v2 + 16))
  {
    v7 = v1[3];
    v6 = v1[4];
    sub_100326DB8(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v4, v1[11]);
    if (sub_10032FA04() == v7 && v8 == v6)
    {

LABEL_16:

      v24 = v1[10];
      v25 = v1[9];
      v26 = v1[2];
      sub_100326E78(v1[11], v26, type metadata accessor for MobileDocumentProviderRecord);
      (*(v24 + 56))(v26, 0, 1, v25);
      goto LABEL_17;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_16;
    }

    ++v4;
    sub_100326E1C(v1[11]);
    if (v3 == v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_100326BE8()
{
  sub_10000BB78(v0 + 14);
  sub_10000BB78(v0 + 19);
  sub_10000BB78(v0 + 24);
  sub_10000BB78(v0 + 29);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100326C6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10013898C;

  return sub_100324F3C(a1);
}

uint64_t sub_100326D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100027B9C;

  return sub_1003267F0(a1, a2, a3);
}

uint64_t sub_100326DB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentProviderRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100326E1C(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentProviderRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100326E78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100326EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for Logger();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_100326FA4, 0, 0);
}

uint64_t sub_100326FA4(uint64_t a1)
{
  v20 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = *(v1 + 64);
  v5 = *(v1 + 72);
  v7 = *(v1 + 56);
  v8 = *(v1 + 24);
  if (v4)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_100141FE4(0xD000000000000049, 0x800000010070E420, &v19);
    *(v9 + 12) = 2048;
    *(v9 + 14) = *(v8 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderDataSource %s. Beginning to filter %ld mobile document provider applications using request.", v9, 0x16u);
    sub_10000BB78(v10);
  }

  else
  {
  }

  (*(v6 + 8))(v5, v7);
  v11 = *(v1 + 32);
  *(v1 + 16) = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v1 + 80) = v12;
  v13 = *(v1 + 40);
  *(v12 + 16) = v11;
  *(v12 + 24) = vextq_s8(v13, v13, 8uLL);
  v14 = swift_task_alloc();
  *(v1 + 88) = v14;
  v15 = sub_100007224(&qword_100841298, &qword_1006DDD48);
  v16 = type metadata accessor for MobileDocumentProviderRecord(0);
  v17 = sub_10032ADEC();
  *v14 = v1;
  v14[1] = sub_1003271F4;

  return Sequence.asyncCompactMap<A>(_:)(&unk_1006DDD40, v12, v15, v16, v17);
}

uint64_t sub_1003271F4(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 96) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100327350, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_100327350()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003273BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_100007224(&qword_1008412A8, &unk_1006DDD50);
  v5[7] = swift_task_alloc();
  v6 = type metadata accessor for IdentityDocumentRequestSceneIdentifier();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentRegistration();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v8 = type metadata accessor for MobileDocumentProviderRegisteredApplication();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v9 = type metadata accessor for ExtensionIdentity();
  v5[21] = v9;
  v5[22] = *(v9 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = *(type metadata accessor for DigitalPresentmentEligibleProposalData(0) - 8);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v10 = type metadata accessor for PartialWebPresentmentMobileDocumentRequest();
  v5[29] = v10;
  v5[30] = *(v10 - 8);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v5[33] = v11;
  v5[34] = *(v11 - 8);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v12 = type metadata accessor for BundleRecord();
  v5[47] = v12;
  v5[48] = *(v12 - 8);
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v5[54] = type metadata accessor for MobileDocumentProviderApplication(0);
  v5[55] = swift_task_alloc();

  return _swift_task_switch(sub_1003278AC, 0, 0);
}

uint64_t sub_1003278AC()
{
  v106 = v0;
  sub_10032D0A0(*(v0 + 24), *(v0 + 440), type metadata accessor for MobileDocumentProviderApplication);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 440);
  if (EnumCaseMultiPayload == 1)
  {
    v3 = *(v0 + 376);
    v4 = *(v0 + 384);
    v5 = *(v0 + 160);
    (*(*(v0 + 176) + 32))(*(v0 + 192), v2, *(v0 + 168));
    ExtensionIdentity.applicationExtensionRecord.getter();
    v6 = *(v4 + 48);
    if (v6(v5, 1, v3) == 1)
    {
      v8 = *(v0 + 184);
      v7 = *(v0 + 192);
      v9 = *(v0 + 168);
      v10 = *(v0 + 176);
      sub_10000BE18(*(v0 + 160), &qword_10083ACF8, &qword_1006D8FC0);
      defaultLogger()();
      (*(v10 + 16))(v8, v7, v9);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      v13 = os_log_type_enabled(v11, v12);
      v14 = *(v0 + 288);
      v15 = *(v0 + 272);
      v102 = *(v0 + 264);
      v16 = *(v0 + 184);
      v17 = *(v0 + 192);
      v19 = *(v0 + 168);
      v18 = *(v0 + 176);
      if (v13)
      {
        v99 = *(v0 + 288);
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v105[0] = v21;
        *v20 = 136315138;
        v93 = v12;
        v22 = ExtensionIdentity.bundleIdentifier.getter();
        v96 = v17;
        v24 = v23;
        v25 = *(v18 + 8);
        v25(v16, v19);
        v26 = sub_100141FE4(v22, v24, v105);

        *(v20 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v11, v93, "MobileDocumentProviderDataSource encountered extension with no extension record. Skipping bundleIdentifier %s.", v20, 0xCu);
        sub_10000BB78(v21);

        (*(v15 + 8))(v99, v102);
        v25(v96, v19);
      }

      else
      {

        v56 = *(v18 + 8);
        v56(v16, v19);
        (*(v15 + 8))(v14, v102);
        v56(v17, v19);
      }

      goto LABEL_23;
    }

    v49 = *(v0 + 376);
    v50 = *(v0 + 152);
    (*(*(v0 + 384) + 32))(*(v0 + 408), *(v0 + 160), v49);
    BundleRecord.containingBundleRecord.getter();
    if (v6(v50, 1, v49) == 1)
    {
      sub_10000BE18(*(v0 + 152), &qword_10083ACF8, &qword_1006D8FC0);
      goto LABEL_20;
    }

    v57 = *(v0 + 376);
    v58 = *(v0 + 384);
    v59 = *(v0 + 152);
    v60 = BundleRecord.applicationIdentifier.getter();
    v62 = v61;
    *(v0 + 496) = v60;
    *(v0 + 504) = v61;
    v63 = *(v58 + 8);
    *(v0 + 512) = v63;
    *(v0 + 520) = (v58 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v63(v59, v57);
    if (!v62)
    {
LABEL_20:
      v66 = *(v0 + 400);
      v67 = *(v0 + 408);
      v68 = *(v0 + 376);
      v69 = *(v0 + 384);
      defaultLogger()();
      (*(v69 + 16))(v66, v67, v68);
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.error.getter();
      v72 = os_log_type_enabled(v70, v71);
      v73 = *(v0 + 400);
      v74 = *(v0 + 408);
      v75 = *(v0 + 376);
      v76 = *(v0 + 384);
      v77 = *(v0 + 272);
      v98 = *(v0 + 264);
      v101 = *(v0 + 320);
      v104 = *(v0 + 192);
      v78 = *(v0 + 168);
      v79 = *(v0 + 176);
      if (v72)
      {
        v91 = v71;
        v80 = swift_slowAlloc();
        v95 = v74;
        v81 = swift_slowAlloc();
        v105[0] = v81;
        *v80 = 136315138;
        sub_10032D00C();
        v92 = v79;
        v82 = v75;
        v83 = dispatch thunk of CustomStringConvertible.description.getter();
        v94 = v78;
        v85 = v84;
        v86 = *(v76 + 8);
        v86(v73, v82);
        v87 = sub_100141FE4(v83, v85, v105);

        *(v80 + 4) = v87;
        _os_log_impl(&_mh_execute_header, v70, v91, "Application extension record for %s is missing applicationIdentifier. Skipping.", v80, 0xCu);
        sub_10000BB78(v81);

        (*(v77 + 8))(v101, v98);
        v86(v95, v82);
        (*(v92 + 8))(v104, v94);
      }

      else
      {

        v88 = *(v76 + 8);
        v88(v73, v75);
        (*(v77 + 8))(v101, v98);
        v88(v74, v75);
        (*(v79 + 8))(v104, v78);
      }

LABEL_23:
      v89 = type metadata accessor for MobileDocumentProviderRecord(0);
      (*(*(v89 - 8) + 56))(*(v0 + 16), 1, 1, v89);

      v90 = *(v0 + 8);

      return v90();
    }

    sub_10000BA08(*(v0 + 40), *(*(v0 + 40) + 24));
    v64 = swift_task_alloc();
    *(v0 + 528) = v64;
    *v64 = v0;
    v64[1] = sub_100328F8C;
    v65 = *(v0 + 136);

    return sub_10033C418(v65, v60, v62);
  }

  else
  {
    (*(*(v0 + 384) + 32))(*(v0 + 424), v2, *(v0 + 376));
    *(v0 + 448) = BundleRecord.applicationIdentifier.getter();
    *(v0 + 456) = v27;
    if (!v27)
    {
      (*(*(v0 + 384) + 8))(*(v0 + 424), *(v0 + 376));
      goto LABEL_23;
    }

    v28 = *(v0 + 256);
    v29 = *(v0 + 232);
    v30 = *(v0 + 240);
    v31 = *(v0 + 32);
    defaultLogger()();
    v32 = *(v30 + 16);
    v32(v28, v31, v29);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 368);
    v38 = *(v0 + 264);
    v37 = *(v0 + 272);
    v39 = *(v0 + 256);
    if (v35)
    {
      v97 = v34;
      v41 = *(v0 + 240);
      v40 = *(v0 + 248);
      v103 = *(v0 + 264);
      v42 = *(v0 + 232);
      v100 = *(v0 + 368);
      v43 = swift_slowAlloc();
      v105[0] = swift_slowAlloc();
      *v43 = 136315394;
      *(v43 + 4) = sub_100141FE4(0xD000000000000049, 0x800000010070E420, v105);
      *(v43 + 12) = 2080;
      v32(v40, v39, v42);
      v44 = String.init<A>(describing:)();
      v46 = v45;
      (*(v41 + 8))(v39, v42);
      v47 = sub_100141FE4(v44, v46, v105);

      *(v43 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v33, v97, "MobileDocumentProviderDataSource %s getting request interpretation for partial request %s", v43, 0x16u);
      swift_arrayDestroy();

      v48 = *(v37 + 8);
      v48(v100, v103);
    }

    else
    {
      v51 = *(v0 + 232);
      v52 = *(v0 + 240);

      (*(v52 + 8))(v39, v51);
      v48 = *(v37 + 8);
      v48(v36, v38);
    }

    *(v0 + 464) = v48;
    sub_10000BA08((*(v0 + 40) + 96), *(*(v0 + 40) + 120));
    v53 = swift_task_alloc();
    *(v0 + 472) = v53;
    *v53 = v0;
    v53[1] = sub_10032834C;
    v54 = *(v0 + 48);

    return sub_100422860(v54);
  }
}

uint64_t sub_10032834C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 480) = v1;

  if (v1)
  {
    v5 = sub_10032A064;
  }

  else
  {
    *(v4 + 488) = a1;
    v5 = sub_100328474;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100328474()
{
  v100 = v0;
  v1 = v0[61];
  v2 = [objc_opt_self() standardUserDefaults];
  static DaemonInternalDefaultsKeys.WebPresentment.disableFirstPartyCertificateAuthFiltering.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 BOOLForKey:v3];

  if (v4)
  {
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[58];
    v9 = v0[45];
    v10 = v0[33];
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v99[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(0xD000000000000049, 0x800000010070E420, v99);
    v13 = "MobileDocumentProviderDataSource %s not performing first party certificate auth filtering due to user defaults settings.";
    goto LABEL_7;
  }

  v14 = sub_10000BA08((v0[5] + 96), *(v0[5] + 120));
  if (*(*sub_10000BA08((*v14 + 112), *(*v14 + 136)) + 16) == 1)
  {
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    v15 = os_log_type_enabled(v5, v6);
    v8 = v0[58];
    v9 = v0[44];
    v10 = v0[33];
    if (!v15)
    {
      goto LABEL_8;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v99[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(0xD000000000000049, 0x800000010070E420, v99);
    v13 = "MobileDocumentProviderDataSource %s not performing first party certificate auth filtering due to developer test mode being enabled.";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v5, v6, v13, v11, 0xCu);
    sub_10000BB78(v12);

LABEL_8:

    v8(v9, v10);
    v16 = v1;
    if (!v1[2])
    {

LABEL_37:
      defaultLogger()();

      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.debug.getter();

      v74 = os_log_type_enabled(v72, v73);
      v75 = v0[57];
      v76 = v0[58];
      if (v74)
      {
        v77 = v0[56];
        v78 = v0[48];
        v94 = v0[47];
        v97 = v0[53];
        v90 = v0[33];
        v92 = v0[41];
        v79 = swift_slowAlloc();
        v99[0] = swift_slowAlloc();
        *v79 = 136315394;
        *(v79 + 4) = sub_100141FE4(0xD000000000000049, 0x800000010070E420, v99);
        *(v79 + 12) = 2080;
        v80 = sub_100141FE4(v77, v75, v99);

        *(v79 + 14) = v80;
        _os_log_impl(&_mh_execute_header, v72, v73, "MobileDocumentProviderDataSource %s. %s does not have registered documents that can handle the request. Returning nil so that it will be skipped.", v79, 0x16u);
        swift_arrayDestroy();

        v76(v92, v90);
        (*(v78 + 8))(v97, v94);
      }

      else
      {
        v81 = v0[53];
        v82 = v0[47];
        v83 = v0[48];
        v84 = v0[41];
        v85 = v0[33];

        v76(v84, v85);
        (*(v83 + 8))(v81, v82);
      }

      v71 = 1;
LABEL_41:
      v86 = type metadata accessor for MobileDocumentProviderRecord(0);
      (*(*(v86 - 8) + 56))(v0[2], v71, 1, v86);

      v87 = v0[1];

      return v87();
    }

    goto LABEL_26;
  }

  defaultLogger()();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[58];
  v21 = v0[43];
  v22 = v0[33];
  if (v19)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v99[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_100141FE4(0xD000000000000049, 0x800000010070E420, v99);
    _os_log_impl(&_mh_execute_header, v17, v18, "MobileDocumentProviderDataSource %s filtering eligible proposal data to only include proposals with trusted reader auth certificate data.", v23, 0xCu);
    sub_10000BB78(v24);
  }

  result = v20(v21, v22);
  v26 = v1;
  v27 = v1[2];
  if (!v27)
  {
    v31 = _swiftEmptyArrayStorage;
LABEL_24:

    if (!v31[2])
    {

      goto LABEL_37;
    }

    v16 = v31;
LABEL_26:

    defaultLogger()();

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();

    v96 = v16;
    if (os_log_type_enabled(v40, v41))
    {
      v91 = v41;
      v93 = v40;
      v42 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v98 = v88;
      v89 = v42;
      *v42 = 136315138;
      v43 = v16[2];
      if (v43)
      {
        v44 = v16;
        v45 = v0[25];
        v46 = v0[26];
        v99[0] = _swiftEmptyArrayStorage;
        sub_100172D4C(0, v43, 0);
        v47 = v99[0];
        v48 = v44 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
        v49 = *(v45 + 72);
        do
        {
          v50 = v0[26];
          sub_10032D0A0(v48, v50, type metadata accessor for DigitalPresentmentEligibleProposalData);
          v51 = *(v46 + 64);
          v52 = *(v46 + 72);

          sub_100177514(v50);
          v99[0] = v47;
          v54 = *(v47 + 16);
          v53 = *(v47 + 24);
          if (v54 >= v53 >> 1)
          {
            sub_100172D4C((v53 > 1), v54 + 1, 1);
            v47 = v99[0];
          }

          *(v47 + 16) = v54 + 1;
          v55 = v47 + 16 * v54;
          *(v55 + 32) = v51;
          *(v55 + 40) = v52;
          v48 += v49;
          --v43;
        }

        while (v43);
      }

      v59 = v0[58];
      v60 = v0[42];
      v61 = v0[33];
      v62 = Array.description.getter();
      v64 = v63;

      v65 = sub_100141FE4(v62, v64, &v98);

      *(v89 + 1) = v65;
      _os_log_impl(&_mh_execute_header, v93, v91, "MobileDocumentProviderDataSource Apple Wallet can handle web presentment request with doc types %s", v89, 0xCu);
      sub_10000BB78(v88);

      v59(v60, v61);
    }

    else
    {
      v56 = v0[58];
      v57 = v0[42];
      v58 = v0[33];

      v56(v57, v58);
    }

    v66 = v0[52];
    v67 = v0[53];
    v69 = v0[47];
    v68 = v0[48];
    v70 = v0[2];
    (*(v68 + 16))(v66, v67, v69);
    sub_1003300F8(v66, v96, v70);
    (*(v68 + 8))(v67, v69);
    v71 = 0;
    goto LABEL_41;
  }

  v28 = 0;
  v29 = v0[28] + 8;
  v30 = v0[25];
  v31 = _swiftEmptyArrayStorage;
  v95 = v29;
  while (v28 < v26[2])
  {
    v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v33 = *(v30 + 72);
    sub_10032D0A0(v26 + v32 + v33 * v28, v0[28], type metadata accessor for DigitalPresentmentEligibleProposalData);
    v34 = *(v29 + *(type metadata accessor for DigitalPresentmentSessionManager.Proposal(0) + 52));
    v35 = v0[28];
    if (v34 >> 60 == 15)
    {
      result = sub_100177514(v35);
    }

    else
    {
      sub_10032D108(v35, v0[27]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99[0] = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100172F18(0, v31[2] + 1, 1);
        v31 = v99[0];
      }

      v38 = v31[2];
      v37 = v31[3];
      if (v38 >= v37 >> 1)
      {
        sub_100172F18((v37 > 1), v38 + 1, 1);
        v31 = v99[0];
      }

      v39 = v0[27];
      v31[2] = v38 + 1;
      result = sub_10032D108(v39, v31 + v32 + v38 * v33);
      v29 = v95;
    }

    if (v27 == ++v28)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100328F8C()
{
  *(*v1 + 536) = v0;

  if (v0)
  {

    v2 = sub_100329E2C;
  }

  else
  {
    v2 = sub_1003290A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003290A8()
{
  v150 = v0;
  v1 = v0;
  v3 = v0[62];
  v2 = v0[63];
  v4 = v0[4];
  v5 = MobileDocumentProviderRegisteredApplication.registrations.getter();
  v6 = sub_10032AE50(v5, v4, v3, v2);

  v7 = v6[2];
  if (!v7)
  {

    v9 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_7;
    }

LABEL_20:

    defaultLogger()();

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();

    v42 = os_log_type_enabled(v40, v41);
    v43 = v1[63];
    v146 = v1[64];
    v111 = v1;
    if (v42)
    {
      v44 = v1[62];
      v125 = v1[47];
      v130 = v1[51];
      v118 = v1[37];
      v45 = v1[34];
      v114 = v1[33];
      v46 = v1[22];
      v135 = v1[21];
      v141 = v1[24];
      v121 = v1[17];
      v47 = v1;
      v48 = v1[16];
      v116 = v47[15];
      v49 = swift_slowAlloc();
      v149[0] = swift_slowAlloc();
      *v49 = 136315394;
      *(v49 + 4) = sub_100141FE4(0xD000000000000049, 0x800000010070E420, v149);
      *(v49 + 12) = 2080;
      v50 = sub_100141FE4(v44, v43, v149);

      *(v49 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v40, v41, "MobileDocumentProviderDataSource %s. %s does not have registered documents can handle request. Returning nil so that it will be skipped.", v49, 0x16u);
      swift_arrayDestroy();

LABEL_22:

      (*(v45 + 8))(v118, v114);
      (*(v48 + 8))(v121, v116);
      v146(v130, v125);
      (*(v46 + 8))(v141, v135);
LABEL_27:
      v81 = type metadata accessor for MobileDocumentProviderRecord(0);
      v82 = 1;
      v1 = v111;
LABEL_34:
      (*(*(v81 - 8) + 56))(v1[2], v82, 1);

      v102 = v1[1];

      return v102();
    }

    v127 = v1[47];
    v132 = v1[51];
    v72 = v1[37];
LABEL_26:
    v74 = v1[33];
    v73 = v1[34];
    v75 = v1[24];
    v76 = v1;
    v77 = v1[22];
    v137 = v76[21];
    v143 = v75;
    v78 = v76[16];
    v79 = v76[17];
    v80 = v76[15];

    (*(v73 + 8))(v72, v74);
    (*(v78 + 8))(v79, v80);
    v146(v132, v127);
    (*(v77 + 8))(v143, v137);
    goto LABEL_27;
  }

  v8 = v1[13];
  v149[0] = _swiftEmptyArrayStorage;
  sub_100172D4C(0, v7, 0);
  v9 = _swiftEmptyArrayStorage;
  v10 = *(v8 + 16);
  v8 += 16;
  v11 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
  v133 = *(v8 + 56);
  v139 = v10;
  v12 = (v8 - 8);
  do
  {
    v13 = v1[14];
    v14 = v1;
    v15 = v1[12];
    v139(v13, v11, v15);
    v16 = MobileDocumentRegistration.documentType.getter();
    v18 = v17;
    (*v12)(v13, v15);
    v149[0] = v9;
    v20 = v9[2];
    v19 = v9[3];
    if (v20 >= v19 >> 1)
    {
      sub_100172D4C((v19 > 1), v20 + 1, 1);
      v9 = v149[0];
    }

    v9[2] = v20 + 1;
    v21 = &v9[2 * v20];
    v21[4] = v16;
    v21[5] = v18;
    v11 += v133;
    --v7;
    v1 = v14;
  }

  while (v7);

  if (!v9[2])
  {
    goto LABEL_20;
  }

LABEL_7:
  v22 = v1[18];
  BundleRecord.containingBundleRecord.getter();

  v24 = sub_1006973D4(v23);

  sub_10032B788(v22, v24);
  v26 = v25;

  sub_10000BE18(v22, &qword_10083ACF8, &qword_1006D8FC0);
  if ((v26 & 1) == 0)
  {
    v51 = v1[51];
    v52 = v1[48];
    v53 = v1[49];
    v54 = v1[47];

    defaultLogger()();
    (*(v52 + 16))(v53, v51, v54);
    v55 = Logger.logObject.getter();
    v119 = static os_log_type_t.error.getter();
    v56 = os_log_type_enabled(v55, v119);
    v57 = v1[64];
    v58 = v1[49];
    v59 = v1[47];
    v60 = v1[34];
    v61 = v1[24];
    v62 = v1[22];
    v142 = v1[51];
    v147 = v1[21];
    v63 = v1[16];
    v131 = v1[38];
    v136 = v1[17];
    v122 = v1[33];
    v126 = v1[15];
    if (v56)
    {
      v117 = v1[22];
      v64 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v115 = v61;
      v149[0] = v113;
      *v64 = 136315138;
      sub_10032D00C();
      log = v55;
      v65 = v59;
      v66 = v1;
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v68;
      v57(v58, v65);
      v70 = v67;
      v1 = v66;
      v71 = sub_100141FE4(v70, v69, v149);

      *(v64 + 4) = v71;
      _os_log_impl(&_mh_execute_header, log, v119, "Application extension record for %s is missing the appropriate entitlements for the request. Skipping.", v64, 0xCu);
      sub_10000BB78(v113);

      (*(v60 + 8))(v131, v122);
      (*(v63 + 8))(v136, v126);
      v57(v142, v65);
      (*(v117 + 8))(v115, v147);
    }

    else
    {

      v57(v58, v59);
      (*(v60 + 8))(v131, v122);
      (*(v63 + 8))(v136, v126);
      v57(v142, v59);
      (*(v62 + 8))(v61, v147);
    }

    v81 = type metadata accessor for MobileDocumentProviderRecord(0);
    v82 = 1;
    goto LABEL_34;
  }

  result = MobileDocumentProviderRegisteredApplication.sceneIdentifiers.getter();
  v28 = result;
  v145 = *(result + 16);
  if (!v145)
  {
    v32 = _swiftEmptyArrayStorage;
LABEL_31:
    v83 = v1[9];
    v84 = v1[10];
    v85 = v1[8];

    v86 = *(v83 + 104);
    v86(v84, enum case for IdentityDocumentRequestSceneIdentifier.iso18013MobileDocumentRequest(_:), v85);
    v87 = sub_10032D9C0(v84, v32);
    v88 = *(v83 + 8);
    v88(v84, v85);
    if (v87 || (v89 = v1[10], v90 = v1[8], v86(v89, enum case for IdentityDocumentRequestSceneIdentifier.iso18013MobileDocumentRawRequest(_:), v90), v91 = sub_10032D9C0(v89, v32), v88(v89, v90), v91))
    {
      v128 = v1[64];
      v93 = v1[51];
      v92 = v1[52];
      v148 = v32;
      v94 = v1[47];
      v95 = v1[48];
      v96 = v1[24];
      v97 = v1;
      v98 = v1[22];
      v138 = v97[21];
      v144 = v96;
      v99 = v97[16];
      v123 = v97[17];
      v120 = v97[15];
      v100 = v97[2];

      v101 = *(v95 + 16);
      v101(v92, v93, v94);
      sub_100007224(&unk_100844380, &unk_1006DDD60);
      v101(v100, v92, v94);
      BundleRecord.containingBundleRecord.getter();
      v128(v92, v94);
      (*(v99 + 8))(v123, v120);
      v128(v93, v94);
      (*(v98 + 8))(v144, v138);
      v1 = v97;
      type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
      swift_storeEnumTagMultiPayload();
      v81 = type metadata accessor for MobileDocumentProviderRecord(0);
      v82 = 0;
      *(v100 + *(v81 + 20)) = v9;
      *(v100 + *(v81 + 24)) = v148;
      goto LABEL_34;
    }

    defaultLogger()();

    v40 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();

    v104 = os_log_type_enabled(v40, v103);
    v105 = v1[63];
    v146 = v1[64];
    v111 = v1;
    if (v104)
    {
      v106 = v1[62];
      v125 = v1[47];
      v130 = v1[51];
      v118 = v1[39];
      v45 = v1[34];
      v114 = v1[33];
      v46 = v1[22];
      v135 = v1[21];
      v141 = v1[24];
      v121 = v1[17];
      v107 = v1;
      v48 = v1[16];
      v116 = v107[15];
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v149[0] = v109;
      *v108 = 136315138;
      v110 = sub_100141FE4(v106, v105, v149);

      *(v108 + 4) = v110;
      _os_log_impl(&_mh_execute_header, v40, v103, "Application %s does not have a scene identifier to respond to a partial mobile document request. Skipping", v108, 0xCu);
      sub_10000BB78(v109);

      goto LABEL_22;
    }

    v127 = v1[47];
    v132 = v1[51];
    v72 = v1[39];
    goto LABEL_26;
  }

  v29 = 0;
  v30 = v1[9];
  v124 = v30;
  v134 = (v30 + 32);
  v140 = (v30 + 48);
  v31 = result + 40;
  v32 = _swiftEmptyArrayStorage;
  v129 = result;
  while (v29 < *(v28 + 16))
  {
    v34 = v1[7];
    v33 = v1[8];

    IdentityDocumentRequestSceneIdentifier.init(rawValue:)();
    if ((*v140)(v34, 1, v33) == 1)
    {
      result = sub_10000BE18(v1[7], &qword_1008412A8, &unk_1006DDD50);
    }

    else
    {
      v35 = *v134;
      (*v134)(v1[11], v1[7], v1[8]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1003C60E4(0, v32[2] + 1, 1, v32);
      }

      v37 = v32[2];
      v36 = v32[3];
      if (v37 >= v36 >> 1)
      {
        v32 = sub_1003C60E4((v36 > 1), v37 + 1, 1, v32);
      }

      v38 = v1[11];
      v39 = v1[8];
      v32[2] = v37 + 1;
      result = v35(v32 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v37, v38, v39);
      v28 = v129;
    }

    ++v29;
    v31 += 16;
    if (v145 == v29)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100329E2C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  (*(v0 + 512))(*(v0 + 408), *(v0 + 376));
  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10032A064(uint64_t a1)
{
  v109 = v1;
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[58];
  v6 = v1[35];
  v7 = v1[33];
  if (v4)
  {
    v103 = v1[58];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v108[0] = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_100141FE4(0xD000000000000049, 0x800000010070E420, v108);
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderDataSource %s. Unable to interpret request, returning an empty proposal. Error: %@", v8, 0x16u);
    sub_10000BE18(v9, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v10);

    v103(v6, v7);
  }

  else
  {

    v5(v6, v7);
  }

  v12 = [objc_opt_self() standardUserDefaults];
  static DaemonInternalDefaultsKeys.WebPresentment.disableFirstPartyCertificateAuthFiltering.getter();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v12 BOOLForKey:v13];

  if (v14)
  {
    defaultLogger()();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v1[58];
    v19 = v1[45];
    v20 = v1[33];
    if (!v17)
    {
      goto LABEL_11;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v108[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_100141FE4(0xD000000000000049, 0x800000010070E420, v108);
    v23 = "MobileDocumentProviderDataSource %s not performing first party certificate auth filtering due to user defaults settings.";
    goto LABEL_10;
  }

  v24 = sub_10000BA08((v1[5] + 96), *(v1[5] + 120));
  if (*(*sub_10000BA08((*v24 + 112), *(*v24 + 136)) + 16) == 1)
  {
    defaultLogger()();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    v25 = os_log_type_enabled(v15, v16);
    v18 = v1[58];
    v19 = v1[44];
    v20 = v1[33];
    if (!v25)
    {
      goto LABEL_11;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v108[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_100141FE4(0xD000000000000049, 0x800000010070E420, v108);
    v23 = "MobileDocumentProviderDataSource %s not performing first party certificate auth filtering due to developer test mode being enabled.";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v15, v16, v23, v21, 0xCu);
    sub_10000BB78(v22);

LABEL_11:

    v18(v19, v20);
    v26 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {

LABEL_39:
      defaultLogger()();

      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.debug.getter();

      v82 = os_log_type_enabled(v80, v81);
      v83 = v1[57];
      v84 = v1[58];
      if (v82)
      {
        v85 = v1[56];
        v86 = v1[48];
        v102 = v1[47];
        v106 = v1[53];
        v98 = v1[33];
        v100 = v1[41];
        v87 = swift_slowAlloc();
        v108[0] = swift_slowAlloc();
        *v87 = 136315394;
        *(v87 + 4) = sub_100141FE4(0xD000000000000049, 0x800000010070E420, v108);
        *(v87 + 12) = 2080;
        v88 = sub_100141FE4(v85, v83, v108);

        *(v87 + 14) = v88;
        _os_log_impl(&_mh_execute_header, v80, v81, "MobileDocumentProviderDataSource %s. %s does not have registered documents that can handle the request. Returning nil so that it will be skipped.", v87, 0x16u);
        swift_arrayDestroy();

        v84(v100, v98);
        (*(v86 + 8))(v106, v102);
      }

      else
      {
        v89 = v1[53];
        v90 = v1[47];
        v91 = v1[48];
        v92 = v1[41];
        v93 = v1[33];

        v84(v92, v93);
        (*(v91 + 8))(v89, v90);
      }

      v79 = 1;
LABEL_43:
      v94 = type metadata accessor for MobileDocumentProviderRecord(0);
      (*(*(v94 - 8) + 56))(v1[2], v79, 1, v94);

      v95 = v1[1];

      return v95();
    }

    goto LABEL_28;
  }

  defaultLogger()();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  v29 = os_log_type_enabled(v27, v28);
  v30 = v1[58];
  v31 = v1[43];
  v32 = v1[33];
  if (v29)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v108[0] = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_100141FE4(0xD000000000000049, 0x800000010070E420, v108);
    _os_log_impl(&_mh_execute_header, v27, v28, "MobileDocumentProviderDataSource %s filtering eligible proposal data to only include proposals with trusted reader auth certificate data.", v33, 0xCu);
    sub_10000BB78(v34);
  }

  result = v30(v31, v32);
  v36 = _swiftEmptyArrayStorage[2];
  if (!v36)
  {
    v26 = _swiftEmptyArrayStorage;
LABEL_27:

    if (!v26[2])
    {

      goto LABEL_39;
    }

LABEL_28:

    defaultLogger()();

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();

    v105 = v26;
    if (os_log_type_enabled(v48, v49))
    {
      v99 = v49;
      v101 = v48;
      v50 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v107 = v96;
      v97 = v50;
      *v50 = 136315138;
      v51 = v26[2];
      if (v51)
      {
        v52 = v26;
        v53 = v1[25];
        v54 = v1[26];
        v108[0] = _swiftEmptyArrayStorage;
        sub_100172D4C(0, v51, 0);
        v55 = v108[0];
        v56 = v52 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
        v57 = *(v53 + 72);
        do
        {
          v58 = v1[26];
          sub_10032D0A0(v56, v58, type metadata accessor for DigitalPresentmentEligibleProposalData);
          v59 = *(v54 + 64);
          v60 = *(v54 + 72);

          sub_100177514(v58);
          v108[0] = v55;
          v62 = *(v55 + 16);
          v61 = *(v55 + 24);
          if (v62 >= v61 >> 1)
          {
            sub_100172D4C((v61 > 1), v62 + 1, 1);
            v55 = v108[0];
          }

          *(v55 + 16) = v62 + 1;
          v63 = v55 + 16 * v62;
          *(v63 + 32) = v59;
          *(v63 + 40) = v60;
          v56 += v57;
          --v51;
        }

        while (v51);
      }

      v67 = v1[58];
      v68 = v1[42];
      v69 = v1[33];
      v70 = Array.description.getter();
      v72 = v71;

      v73 = sub_100141FE4(v70, v72, &v107);

      *(v97 + 1) = v73;
      _os_log_impl(&_mh_execute_header, v101, v99, "MobileDocumentProviderDataSource Apple Wallet can handle web presentment request with doc types %s", v97, 0xCu);
      sub_10000BB78(v96);

      v67(v68, v69);
    }

    else
    {
      v64 = v1[58];
      v65 = v1[42];
      v66 = v1[33];

      v64(v65, v66);
    }

    v75 = v1[52];
    v74 = v1[53];
    v77 = v1[47];
    v76 = v1[48];
    v78 = v1[2];
    (*(v76 + 16))(v75, v74, v77);
    sub_1003300F8(v75, v105, v78);
    (*(v76 + 8))(v74, v77);
    v79 = 0;
    goto LABEL_43;
  }

  v37 = 0;
  v38 = v1[28] + 8;
  v39 = v1[25];
  v26 = _swiftEmptyArrayStorage;
  v104 = v38;
  while (v37 < _swiftEmptyArrayStorage[2])
  {
    v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v41 = *(v39 + 72);
    sub_10032D0A0(_swiftEmptyArrayStorage + v40 + v41 * v37, v1[28], type metadata accessor for DigitalPresentmentEligibleProposalData);
    v42 = *(v38 + *(type metadata accessor for DigitalPresentmentSessionManager.Proposal(0) + 52));
    v43 = v1[28];
    if (v42 >> 60 == 15)
    {
      result = sub_100177514(v43);
    }

    else
    {
      sub_10032D108(v43, v1[27]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v108[0] = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100172F18(0, v26[2] + 1, 1);
        v26 = v108[0];
      }

      v46 = v26[2];
      v45 = v26[3];
      if (v46 >= v45 >> 1)
      {
        sub_100172F18((v45 > 1), v46 + 1, 1);
        v26 = v108[0];
      }

      v47 = v1[27];
      v26[2] = v46 + 1;
      result = sub_10032D108(v47, v26 + v40 + v46 * v41);
      v38 = v104;
    }

    if (v36 == ++v37)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10032AD28(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100027B9C;

  return sub_1003273BC(a1, a2, v6, v7, v8);
}

unint64_t sub_10032ADEC()
{
  result = qword_1008412A0;
  if (!qword_1008412A0)
  {
    sub_10000B870(&qword_100841298, &qword_1006DDD48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008412A0);
  }

  return result;
}

void *sub_10032AE50(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v94 = a2;
  v95 = a1;
  v99 = type metadata accessor for MobileDocumentRegistration();
  v96 = *(v99 - 8);
  __chkstk_darwin(v99);
  v98 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PartialWebPresentmentMobileDocumentRequest.DocumentProviderType();
  v90 = *(v7 - 8);
  v91 = v7;
  __chkstk_darwin(v7);
  v89 = (&v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v86 = &v84 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v84 - v17;
  v19 = __chkstk_darwin(v16);
  v97 = &v84 - v20;
  __chkstk_darwin(v19);
  v22 = &v84 - v21;
  defaultLogger()();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  v25 = os_log_type_enabled(v23, v24);
  v92 = a3;
  v93 = a4;
  v88 = v18;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v100[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_100141FE4(a3, a4, v100);
    _os_log_impl(&_mh_execute_header, v23, v24, "MobileDocumentProviderFilter beginning to filter registrations on applicationIdentifier %s", v26, 0xCu);
    sub_10000BB78(v27);
  }

  v28 = *(v10 + 8);
  v28(v22, v9);
  v29 = v9;
  v30 = [objc_opt_self() standardUserDefaults];
  v31._countAndFlagsBits = static DaemonInternalDefaultsKeys.WebPresentment.disableFilteringInSelectionSheet.getter();
  v32 = NSUserDefaults.internalBool(forKey:)(v31);

  v33 = v95;
  if (v32)
  {
    defaultLogger()();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "MobileDocumentProviderDataSource disabling filtering in selection sheet override set to true. Returning all stored registrations.", v36, 2u);
    }

    v28(v13, v29);
  }

  else
  {
    v37 = v97;
    defaultLogger()();

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    v40 = os_log_type_enabled(v38, v39);
    v87 = v28;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v100[0] = v42;
      *v41 = 136315138;
      v43 = Array.description.getter();
      v45 = sub_100141FE4(v43, v44, v100);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v38, v39, "MobileDocumentProviderDataSource using request to filter stored registrations: %s", v41, 0xCu);
      sub_10000BB78(v42);

      v87(v37, v29);
    }

    else
    {

      v28(v37, v29);
    }

    v46 = *(v33 + 16);
    v47 = _swiftEmptyArrayStorage;
    if (v46)
    {
      v84 = v10;
      v85 = v29;
      v100[0] = _swiftEmptyArrayStorage;
      sub_100172D4C(0, v46, 0);
      v47 = v100[0];
      v48 = v96 + 16;
      v49 = *(v96 + 16);
      v50 = v33 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
      v96 = *(v96 + 72);
      v97 = v49;
      v51 = (v48 - 8);
      do
      {
        v52 = v98;
        v53 = v99;
        (v97)(v98, v50, v99);
        v54 = MobileDocumentRegistration.documentType.getter();
        v56 = v55;
        (*v51)(v52, v53);
        v100[0] = v47;
        v58 = v47[2];
        v57 = v47[3];
        if (v58 >= v57 >> 1)
        {
          sub_100172D4C((v57 > 1), v58 + 1, 1);
          v47 = v100[0];
        }

        v47[2] = v58 + 1;
        v59 = &v47[2 * v58];
        v59[4] = v54;
        v59[5] = v56;
        v50 += v96;
        --v46;
      }

      while (v46);
      v60 = v85;
    }

    else
    {
      v60 = v29;
    }

    sub_1006973D4(v47);

    v62 = v92;
    v61 = v93;
    v64 = v89;
    v63 = v90;
    *v89 = v92;
    v64[1] = v61;
    v65 = v91;
    (*(v63 + 104))(v64, enum case for PartialWebPresentmentMobileDocumentRequest.DocumentProviderType.thirdParty(_:), v91);

    v66 = v94;
    v67 = PartialWebPresentmentMobileDocumentRequest.evaluate(as:against:)();

    (*(v63 + 8))(v64, v65);
    if (v67)
    {
      v68 = v88;
      defaultLogger()();

      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.debug.getter();

      v71 = os_log_type_enabled(v69, v70);
      v72 = v95;
      if (v71)
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v100[0] = v74;
        *v73 = 136315138;
        *(v73 + 4) = sub_100141FE4(v62, v61, v100);
        _os_log_impl(&_mh_execute_header, v69, v70, "MobileDocumentProviderDataSource request can be handled by %s. Filtering registrations to include only those relevant to the request.", v73, 0xCu);
        sub_10000BB78(v74);

        v75 = v88;
      }

      else
      {

        v75 = v68;
      }

      v81 = (v87)(v75, v60);
      __chkstk_darwin(v81);
      *(&v84 - 2) = v66;
      *(&v84 - 1) = v82;

      return sub_10046D0E8(sub_10032D1DC, (&v84 - 4), v72);
    }

    else
    {
      v76 = v86;
      defaultLogger()();
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v100[0] = v80;
        *v79 = 136315138;
        *(v79 + 4) = sub_100141FE4(0xD000000000000024, 0x800000010070E470, v100);
        _os_log_impl(&_mh_execute_header, v77, v78, "MobileDocumentProviderDataSource %s. Request cannot be handled. Returning no registrations.", v79, 0xCu);
        sub_10000BB78(v80);
      }

      v87(v76, v60);
      return _swiftEmptyArrayStorage;
    }
  }

  return v33;
}

void sub_10032B788(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v56 - v9;
  v11 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v56 - v12;
  v14 = type metadata accessor for BundleRecord();
  v15 = __chkstk_darwin(v14);
  v63 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v56 - v18;
  __chkstk_darwin(v17);
  v21 = &v56 - v20;
  v22 = a1;
  v24 = v23;
  sub_10032D16C(v22, v13);
  if ((*(v24 + 48))(v13, 1, v14) == 1)
  {
    sub_10000BE18(v13, &qword_10083ACF8, &qword_1006D8FC0);
    defaultLogger()();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "MobileDocumentProviderDataSource encountered extension with no containing record.", v27, 2u);
    }

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v59 = v4;
    v60 = v10;
    v58 = v5;
    (*(v24 + 32))(v21, v13, v14);
    v28 = *(v2 + 40);
    v29 = *(v2 + 48);
    v30 = *(v24 + 16);
    v61 = v21;
    v62 = v14;
    v56 = v30;
    v57 = v24 + 16;
    v30(v19, v21, v14);
    v67[3] = v28;
    v67[4] = v29;
    sub_100032DBC(v67);
    dispatch thunk of MobileDocumentProviderRegistrationEntitlementChecking.init(applicationBundleRecord:)();
    v31 = v65 + 56;
    v32 = 1 << *(v65 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v65 + 56);
    v35 = (v32 + 63) >> 6;

    v36 = 0;
    v64 = v24;
    if (v34)
    {
      while (1)
      {
        v37 = v36;
LABEL_12:
        v38 = (*(v65 + 48) + ((v37 << 10) | (16 * __clz(__rbit64(v34)))));
        v40 = *v38;
        v39 = v38[1];

        if ((dispatch thunk of MobileDocumentProviderRegistrationEntitlementChecking.checkEntitled(for:)() & 1) == 0)
        {
          break;
        }

        v34 &= v34 - 1;

        v36 = v37;
        v24 = v64;
        if (!v34)
        {
          goto LABEL_9;
        }
      }

      v41 = v60;
      defaultLogger()();
      v43 = v62;
      v42 = v63;
      v44 = v61;
      v56(v63, v61, v62);

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v66 = v57;
        *v47 = 136315394;
        v48 = sub_100141FE4(v40, v39, &v66);

        *(v47 + 4) = v48;
        *(v47 + 12) = 2080;
        v49 = BundleRecord.applicationIdentifier.getter();
        if (v50)
        {
          v51 = v49;
        }

        else
        {
          v51 = 7104878;
        }

        if (v50)
        {
          v52 = v50;
        }

        else
        {
          v52 = 0xE300000000000000;
        }

        v53 = *(v64 + 8);
        v53(v42, v43);
        v54 = sub_100141FE4(v51, v52, &v66);

        *(v47 + 14) = v54;
        _os_log_impl(&_mh_execute_header, v45, v46, "MobileDocumentProviderFilter requestedDocumentTypes contains %s, but %s is not entitled.", v47, 0x16u);
        swift_arrayDestroy();

        (*(v58 + 8))(v60, v59);
        v53(v44, v43);
      }

      else
      {

        v55 = *(v64 + 8);
        v55(v42, v43);
        (*(v58 + 8))(v41, v59);
        v55(v44, v43);
      }

      sub_10000BB78(v67);
    }

    else
    {
LABEL_9:
      while (1)
      {
        v37 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        if (v37 >= v35)
        {
          (*(v24 + 8))(v61, v62);

          sub_10000BB78(v67);
          return;
        }

        v34 = *(v31 + 8 * v37);
        ++v36;
        if (v34)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

void sub_10032BDE8(NSObject *a1, uint64_t a2, void *a3)
{
  v147 = a3;
  v154 = type metadata accessor for Certificate();
  v159 = *(v154 - 8);
  v5 = __chkstk_darwin(v154);
  v140 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v155 = &v137 - v7;
  v8 = type metadata accessor for MobileDocumentRegistration();
  v152 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v157 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v141 = &v137 - v12;
  v13 = __chkstk_darwin(v11);
  v149 = &v137 - v14;
  v15 = __chkstk_darwin(v13);
  v139 = &v137 - v16;
  v17 = __chkstk_darwin(v15);
  v148 = &v137 - v18;
  __chkstk_darwin(v17);
  v138 = &v137 - v19;
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  v150 = v20;
  v151 = v21;
  v22 = __chkstk_darwin(v20);
  v158 = &v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v145 = &v137 - v25;
  v26 = __chkstk_darwin(v24);
  v142 = &v137 - v27;
  v28 = __chkstk_darwin(v26);
  v144 = &v137 - v29;
  __chkstk_darwin(v28);
  v143 = &v137 - v30;
  v31 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  __chkstk_darwin(v31 - 8);
  v33 = &v137 - v32;
  v34 = type metadata accessor for Date();
  v35 = *(v34 - 8);
  v36 = __chkstk_darwin(v34);
  v38 = &v137 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v156 = &v137 - v39;
  v146 = a2;
  v40 = PartialWebPresentmentMobileDocumentRequest.allDocumentTypes.getter();
  v41 = MobileDocumentRegistration.documentType.getter();
  v43 = sub_1006932A8(v41, v42, v40);

  if (v43)
  {
    v137 = v8;
    MobileDocumentRegistration.invalidationDate.getter();
    if ((*(v35 + 48))(v33, 1, v34) == 1)
    {
      sub_10000BE18(v33, &unk_100849400, &unk_1006BFBB0);
      goto LABEL_13;
    }

    v54 = v156;
    (*(v35 + 32))(v156, v33, v34);
    sub_10000BA08(v147 + 7, v147[10]);
    dispatch thunk of DateProviding.now.getter();
    v55 = static Date.< infix(_:_:)();
    v58 = *(v35 + 8);
    v56 = (v35 + 8);
    v57 = v58;
    v58(v38, v34);
    if ((v55 & 1) == 0)
    {
      v57(v54, v34);
LABEL_13:
      v71 = v152;
      v72 = *(MobileDocumentRegistration.authorityKeyIdentifiers.getter() + 16);

      v73 = v155;
      v74 = v149;
      if (v72)
      {
        v75 = PartialWebPresentmentMobileDocumentRequest.authenticationCertificateChains.getter();
        v76 = *(v75 + 16);
        if (v76)
        {
          v77 = 0;
          v78 = (v75 + 32);
          v156 = (v159 + 8);
          v157 = (v159 + 16);
          v79 = v154;
          v80 = v161;
          v153 = a1;
          v145 = v76;
          v146 = v75;
          v143 = (v75 + 32);
          do
          {
            if (v77 >= *(v75 + 16))
            {
LABEL_39:
              __break(1u);
              return;
            }

            v81 = *&v78[8 * v77];
            v82 = *(v81 + 16);
            if (v82)
            {
              v147 = v77;
              v161 = v80;
              v158 = (v81 + ((*(v159 + 80) + 32) & ~*(v159 + 80)));

              v83 = 0;
              while (1)
              {
                if (v83 >= *(v81 + 16))
                {
                  __break(1u);
                  goto LABEL_39;
                }

                v84 = *(v159 + 16);
                v84(v73, &v158[*(v159 + 72) * v83], v79);
                v85 = Certificate.wrapped.getter();
                v86 = SecCertificateRef.authorityKeyIdentifier.getter();
                v88 = v87;

                if (v88 >> 60 == 15)
                {
                  (*v156)(v73, v79);
                }

                else
                {
                  v89 = MobileDocumentRegistration.authorityKeyIdentifiers.getter();
                  v160[0] = v86;
                  v160[1] = v88;
                  __chkstk_darwin(v89);
                  *(&v137 - 2) = v160;
                  v90 = v161;
                  v91 = sub_10035C990(sub_10032D1FC, (&v137 - 4), v89);
                  v161 = v90;

                  if (v91)
                  {
                    v159 = v86;

                    v102 = v144;
                    defaultLogger()();
                    v103 = v152;
                    v104 = *(v152 + 16);
                    v105 = v139;
                    v106 = v137;
                    v104(v139, v153, v137);
                    v107 = v140;
                    v84(v140, v155, v154);
                    v108 = Logger.logObject.getter();
                    LODWORD(v158) = static os_log_type_t.debug.getter();
                    if (os_log_type_enabled(v108, v158))
                    {
                      v109 = swift_slowAlloc();
                      v153 = v108;
                      v110 = v103;
                      v111 = v105;
                      v112 = v109;
                      v157 = swift_slowAlloc();
                      v160[0] = v157;
                      *v112 = 136315650;
                      *(v112 + 4) = sub_100141FE4(0xD000000000000024, 0x800000010070E470, v160);
                      *(v112 + 12) = 2080;
                      v104(v148, v111, v106);
                      v113 = String.init<A>(describing:)();
                      v115 = v114;
                      (*(v110 + 8))(v111, v106);
                      v116 = sub_100141FE4(v113, v115, v160);

                      *(v112 + 14) = v116;
                      *(v112 + 22) = 2080;
                      v117 = Certificate.wrapped.getter();
                      v118 = SecCertificateRef.derRepresentation.getter();
                      v119 = v107;
                      v121 = v120;

                      v122 = Data.base64EncodedString(options:)(0);
                      sub_10000B90C(v118, v121);
                      v123 = *v156;
                      v124 = v119;
                      v125 = v154;
                      (*v156)(v124, v154);
                      v126 = sub_100141FE4(v122._countAndFlagsBits, v122._object, v160);

                      *(v112 + 24) = v126;
                      v127 = v153;
                      _os_log_impl(&_mh_execute_header, v153, v158, "MobileDocumentProviderDataSource %s. Including registration: %s. Certificate: %s authority key identifier matches a provided authorizer identifier.", v112, 0x20u);
                      swift_arrayDestroy();

                      sub_10000BD94(v159, v88);

                      (*(v151 + 8))(v144, v150);
                      v123(v155, v125);
                    }

                    else
                    {
                      sub_10000BD94(v159, v88);

                      v128 = *v156;
                      v129 = v154;
                      (*v156)(v107, v154);
                      (*(v103 + 8))(v105, v106);
                      (*(v151 + 8))(v102, v150);
                      v128(v155, v129);
                    }

                    return;
                  }

                  v73 = v155;
                  v79 = v154;
                  (*v156)(v155, v154);
                  sub_10000BD94(v86, v88);
                }

                if (v82 == ++v83)
                {

                  v80 = v161;
                  v76 = v145;
                  v75 = v146;
                  v77 = v147;
                  v78 = v143;
                  break;
                }
              }
            }

            ++v77;
            v71 = v152;
            a1 = v153;
            v74 = v149;
          }

          while (v77 != v76);
          v161 = v80;
        }

        v92 = v142;
        defaultLogger()();
        v130 = *(v71 + 16);
        v94 = v137;
        v130(v74, a1, v137);
        v95 = Logger.logObject.getter();
        v131 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v95, v131))
        {
          v132 = swift_slowAlloc();
          v159 = swift_slowAlloc();
          v160[0] = v159;
          *v132 = 136315394;
          *(v132 + 4) = sub_100141FE4(0xD000000000000024, 0x800000010070E470, v160);
          *(v132 + 12) = 2080;
          v130(v148, v74, v94);
          v133 = String.init<A>(describing:)();
          v135 = v134;
          (*(v71 + 8))(v74, v94);
          v136 = sub_100141FE4(v133, v135, v160);

          *(v132 + 14) = v136;
          _os_log_impl(&_mh_execute_header, v95, v131, "MobileDocumentProviderDataSource %s. Filtering registration: %s due to no certificate matching provided authorizer identifiers.", v132, 0x16u);
          swift_arrayDestroy();

          (*(v151 + 8))(v142, v150);
          return;
        }
      }

      else
      {
        v92 = v145;
        defaultLogger()();
        v93 = *(v71 + 16);
        v74 = v141;
        v94 = v137;
        v93(v141, a1, v137);
        v95 = Logger.logObject.getter();
        v96 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v159 = swift_slowAlloc();
          v160[0] = v159;
          *v97 = 136315394;
          *(v97 + 4) = sub_100141FE4(0xD000000000000024, 0x800000010070E470, v160);
          *(v97 + 12) = 2080;
          v93(v148, v74, v94);
          v98 = String.init<A>(describing:)();
          v100 = v99;
          (*(v71 + 8))(v74, v94);
          v101 = sub_100141FE4(v98, v100, v160);

          *(v97 + 14) = v101;
          _os_log_impl(&_mh_execute_header, v95, v96, "MobileDocumentProviderDataSource %s. Including registration: %s. No authorizer identifiers provided.", v97, 0x16u);
          swift_arrayDestroy();

          (*(v151 + 8))(v145, v150);
          return;
        }
      }

      (*(v71 + 8))(v74, v94);
      (*(v151 + 8))(v92, v150);
      return;
    }

    v158 = v56;
    v159 = v34;
    v59 = v143;
    defaultLogger()();
    v60 = v152;
    v61 = v138;
    v62 = v137;
    v157 = *(v152 + 16);
    (v157)(v138, a1, v137);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      v160[0] = v155;
      *v65 = 136315394;
      *(v65 + 4) = sub_100141FE4(0xD000000000000024, 0x800000010070E470, v160);
      *(v65 + 12) = 2080;
      (v157)(v148, v61, v62);
      v66 = String.init<A>(describing:)();
      v67 = v64;
      v69 = v68;
      (*(v60 + 8))(v61, v62);
      v70 = sub_100141FE4(v66, v69, v160);

      *(v65 + 14) = v70;
      _os_log_impl(&_mh_execute_header, v63, v67, "MobileDocumentProviderDataSource %s. Filtering registration: %s due to invalid date.", v65, 0x16u);
      swift_arrayDestroy();

      (*(v151 + 8))(v143, v150);
    }

    else
    {

      (*(v60 + 8))(v61, v62);
      (*(v151 + 8))(v59, v150);
    }

    v57(v156, v159);
  }

  else
  {
    defaultLogger()();
    v44 = v152;
    v45 = *(v152 + 16);
    v45(v157, a1, v8);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v160[0] = v159;
      *v48 = 136315394;
      *(v48 + 4) = sub_100141FE4(0xD000000000000024, 0x800000010070E470, v160);
      *(v48 + 12) = 2080;
      v49 = v157;
      v45(v148, v157, v8);
      v50 = String.init<A>(describing:)();
      v52 = v51;
      (*(v44 + 8))(v49, v8);
      v53 = sub_100141FE4(v50, v52, v160);

      *(v48 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v46, v47, "MobileDocumentProviderDataSource %s. Filtering registration: %s due to irrelevant document type.", v48, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v44 + 8))(v157, v8);
    }

    (*(v151 + 8))(v158, v150);
  }
}

uint64_t type metadata accessor for MobileDocumentProviderApplication(uint64_t a1)
{
  result = qword_100841328;
  if (!qword_100841328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10032D00C()
{
  result = qword_1008412B0;
  if (!qword_1008412B0)
  {
    type metadata accessor for BundleRecord();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008412B0);
  }

  return result;
}

uint64_t sub_10032D0A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10032D108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DigitalPresentmentEligibleProposalData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10032D16C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10032D238(uint64_t a1)
{
  result = type metadata accessor for BundleRecord();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ExtensionIdentity();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10032D2AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10032D2F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_10032D364(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xEA0000000000656DLL;
    v9 = 0x616E2D6E65766967;
    switch(*v4)
    {
      case 1:
        v9 = 0x6E2D796C696D6166;
        v8 = 0xEB00000000656D61;
        break;
      case 2:
        v8 = 0xE300000000000000;
        v9 = 7890291;
        break;
      case 3:
        v8 = 0xE800000000000000;
        v9 = 0x7469617274726F70;
        break;
      case 4:
        v8 = 0xE700000000000000;
        v9 = 0x73736572646461;
        break;
      case 5:
        v8 = 0xE600000000000000;
        v9 = 0x746867696568;
        break;
      case 6:
        v9 = 0x746867696577;
        v8 = 0xE600000000000000;
        break;
      case 7:
        v9 = 0x6F6C6F632D657965;
        v8 = 0xE900000000000072;
        break;
      case 8:
        v8 = 0xEA0000000000726FLL;
        v9 = 0x6C6F632D72696168;
        break;
      case 9:
        v9 = 0xD000000000000012;
        v8 = 0x80000001006F9D10;
        break;
      case 0xA:
        v9 = 0x2D6E617265746576;
        v8 = 0xEE00737574617473;
        break;
      case 0xB:
        v9 = 0xD000000000000011;
        v8 = 0x80000001006F9D40;
        break;
      case 0xC:
        v9 = 0xD00000000000001ELL;
        v8 = 0x80000001006F9D60;
        break;
      case 0xD:
        v9 = 0xD000000000000018;
        v8 = 0x80000001006F9D80;
        break;
      case 0xE:
        v9 = 0x746E656D75636F64;
        v8 = 0xEF7265626D756E2DLL;
        break;
      case 0xF:
        v9 = 0xD000000000000013;
        v8 = 0x80000001006F9DB0;
        break;
      case 0x10:
        v9 = 0xD000000000000012;
        v8 = 0x80000001006F9DD0;
        break;
      case 0x11:
        v8 = 0xE300000000000000;
        v9 = 6645601;
        break;
      case 0x12:
        v9 = 0x2D666F2D65746164;
        v8 = 0xED00006874726962;
        break;
      case 0x13:
        v9 = 0xD000000000000014;
        v8 = 0x80000001006F9E00;
        break;
      default:
        break;
    }

    v10 = 0x616E2D6E65766967;
    v11 = 0xEA0000000000656DLL;
    switch(a1)
    {
      case 1:
        v11 = 0xEB00000000656D61;
        if (v9 == 0x6E2D796C696D6166)
        {
          goto LABEL_62;
        }

        goto LABEL_2;
      case 2:
        v11 = 0xE300000000000000;
        if (v9 != 7890291)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 3:
        v11 = 0xE800000000000000;
        if (v9 != 0x7469617274726F70)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 4:
        v11 = 0xE700000000000000;
        if (v9 != 0x73736572646461)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 5:
        v11 = 0xE600000000000000;
        if (v9 != 0x746867696568)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 6:
        v11 = 0xE600000000000000;
        if (v9 != 0x746867696577)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 7:
        v11 = 0xE900000000000072;
        if (v9 != 0x6F6C6F632D657965)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 8:
        v11 = 0xEA0000000000726FLL;
        v10 = 0x6C6F632D72696168;
        goto LABEL_61;
      case 9:
        v11 = 0x80000001006F9D10;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 10:
        v11 = 0xEE00737574617473;
        if (v9 != 0x2D6E617265746576)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 11:
        v11 = 0x80000001006F9D40;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 12:
        v11 = 0x80000001006F9D60;
        if (v9 != 0xD00000000000001ELL)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 13:
        v11 = 0x80000001006F9D80;
        if (v9 != 0xD000000000000018)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 14:
        v11 = 0xEF7265626D756E2DLL;
        if (v9 != 0x746E656D75636F64)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 15:
        v11 = 0x80000001006F9DB0;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 16:
        v11 = 0x80000001006F9DD0;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 17:
        v11 = 0xE300000000000000;
        if (v9 != 6645601)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 18:
        v11 = 0xED00006874726962;
        if (v9 != 0x2D666F2D65746164)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 19:
        v11 = 0x80000001006F9E00;
        if (v9 != 0xD000000000000014)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      default:
LABEL_61:
        if (v9 != v10)
        {
          goto LABEL_2;
        }

LABEL_62:
        if (v8 != v11)
        {
LABEL_2:
          v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

BOOL sub_10032DA08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    sub_10032F51C(a4, a5, a6);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v10 != v11;
}

uint64_t sub_10032DB58()
{
  sub_100007224(&qword_100841380, &qword_1006DDE50);
  v0 = type metadata accessor for IdentityDocumentRequestSceneIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006BF740;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for IdentityDocumentRequestSceneIdentifier.iso18013MobileDocumentRequest(_:), v0);
  result = (v6)(v5 + v2, enum case for IdentityDocumentRequestSceneIdentifier.iso18013MobileDocumentRawRequest(_:), v0);
  off_100841360 = v4;
  return result;
}

uint64_t sub_10032DCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for MobileDocumentProviderSceneConfiguration();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v8 = type metadata accessor for IdentityDocumentRequestSceneIdentifier();
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_10032DEAC, 0, 0);
}

uint64_t sub_10032DEAC()
{
  v48 = v0;
  v1 = sub_100330370();
  v0[20] = v1;
  v0[21] = v2;
  if (v2)
  {
    v39 = v1;
    v45 = v2;
    if (qword_100832C58 != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v3 = off_100841360;
      v40 = *(off_100841360 + 2);
      if (!v40)
      {
        break;
      }

      v4 = 0;
      v5 = v0[17];
      v44 = (v5 + 8);
      while (2)
      {
        if (v4 < *(v3 + 2))
        {
          v6 = v0[3];
          v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
          v8 = *(v5 + 72);
          v41 = *(v5 + 16);
          v42 = v4 + 1;
          v41(v0[19], &v3[v7 + v8 * v4], v0[16]);
          v9 = *(v6 + *(type metadata accessor for MobileDocumentProviderRecord(0) + 24));
          v10 = v9 + v7;
          v11 = *(v9 + 16) + 1;
          while (--v11)
          {
            sub_10032F51C(&qword_100841368, &type metadata accessor for IdentityDocumentRequestSceneIdentifier, &protocol conformance descriptor for IdentityDocumentRequestSceneIdentifier);
            v10 += v8;
            if (dispatch thunk of static Equatable.== infix(_:_:)())
            {
              v16 = v0[18];
              v15 = v0[19];
              v17 = v0[16];
              defaultLogger()();
              v41(v16, v15, v17);

              v18 = Logger.logObject.getter();
              v19 = static os_log_type_t.debug.getter();

              v20 = os_log_type_enabled(v18, v19);
              v21 = v0[18];
              v22 = v0[15];
              v23 = v0[16];
              v25 = v0[13];
              v24 = v0[14];
              if (v20)
              {
                v43 = v0[13];
                v26 = swift_slowAlloc();
                v47[0] = swift_slowAlloc();
                *v26 = 136315394;
                *(v26 + 4) = sub_100141FE4(v39, v45, v47);
                *(v26 + 12) = 2080;
                v27 = IdentityDocumentRequestSceneIdentifier.rawValue.getter();
                v46 = v22;
                v29 = v28;
                v30 = *v44;
                (*v44)(v21, v23);
                v31 = sub_100141FE4(v27, v29, v47);

                *(v26 + 14) = v31;
                _os_log_impl(&_mh_execute_header, v18, v19, "Decided on a third party credential provider: %s with scene identifier %s.", v26, 0x16u);
                swift_arrayDestroy();

                (*(v24 + 8))(v46, v43);
              }

              else
              {

                v30 = *v44;
                (*v44)(v21, v23);
                (*(v24 + 8))(v22, v25);
              }

              v0[22] = v30;
              v34 = swift_task_alloc();
              v0[23] = v34;
              *v34 = v0;
              v34[1] = sub_10032E518;
              v35 = v0[19];
              v36 = v0[12];
              v37 = v0[4];
              v38 = v0[5];

              return sub_10032E844(v36, v35, v37, v38);
            }
          }

          (*v44)(v0[19], v0[16]);
          v4 = v42;
          if (v42 != v40)
          {
            continue;
          }

          goto LABEL_11;
        }

        break;
      }

      __break(1u);
LABEL_23:
      swift_once();
    }

LABEL_11:
    v12 = v0[7];
    v13 = v0[8];
    v14 = v0[6];

    (*(v12 + 104))(v13, enum case for DIPError.Code.unexpectedDaemonState(_:), v14);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10032F51C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
  }

  else
  {
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.webPresentmentInvalidDocumentProviderRecord(_:), v0[6]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10032F51C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
  }

  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v32 = v0[1];

  return v32();
}

uint64_t sub_10032E518()
{
  *(*v1 + 192) = v0;

  if (v0)
  {

    v2 = sub_10032E780;
  }

  else
  {
    v2 = sub_10032E634;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10032E634()
{
  v1 = v0[19];
  v8 = v0[22];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v7 = v0[16];
  (*(v3 + 16))(v0[11], v2, v4);
  sub_100330648();
  MobileDocumentProviderPresentmentRequest.init(applicationExtensionBundleIdentifier:sceneConfiguration:localizedDisplayName:)();
  (*(v3 + 8))(v2, v4);
  v8(v1, v7);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10032E780()
{
  (*(v0 + 176))(*(v0 + 152), *(v0 + 128));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10032E844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  sub_100007224(&qword_100841370, &unk_1006DDE40);
  v4[19] = swift_task_alloc();
  v6 = type metadata accessor for WebPresentmentRequest();
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v7 = type metadata accessor for IdentityDocumentRequestSceneIdentifier();
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_10032E9F8, 0, 0);
}

uint64_t sub_10032E9F8()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  (*(v2 + 16))(v1, v0[13], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for IdentityDocumentRequestSceneIdentifier.iso18013MobileDocumentRawRequest(_:))
  {
    v5 = v0[15];
    os_unfair_lock_lock(v5 + 14);
    sub_10032F4AC(&v5[4], (v0 + 2));
    os_unfair_lock_unlock(v5 + 14);
    sub_10032F4AC((v0 + 2), (v0 + 7));
    v6 = v0[10];
    if (v6)
    {
      v7 = v0[11];
      sub_10000BA08(v0 + 7, v0[10]);
      v28 = (*(v7 + 24) + **(v7 + 24));
      v8 = swift_task_alloc();
      v0[26] = v8;
      *v8 = v0;
      v8[1] = sub_10032EFEC;
      v9 = v0[19];

      return v28(v9, v6, v7);
    }

    v19 = v0[20];
    v20 = v0[21];
    v21 = v0[19];
    sub_10000BE18((v0 + 7), &qword_100841378, &qword_1006E12F0);
    (*(v20 + 56))(v21, 1, 1, v19);
    v22 = v0[18];
    v23 = v0[16];
    v24 = v0[17];
    sub_10000BE18(v0[19], &qword_100841370, &unk_1006DDE40);
    (*(v24 + 104))(v22, enum case for DIPError.Code.internalError(_:), v23);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10032F51C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18((v0 + 2), &qword_100841378, &qword_1006E12F0);
    goto LABEL_12;
  }

  if (v4 != enum case for IdentityDocumentRequestSceneIdentifier.iso18013MobileDocumentRequest(_:))
  {
    v17 = enum case for IdentityDocumentRequestSceneIdentifier.unknown(_:);
    v18 = v4;
    (*(v0[17] + 104))(v0[18], enum case for DIPError.Code.webPresentmentIncorrectSceneConfiguration(_:), v0[16]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10032F51C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    if (v18 == v17)
    {
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      v26 = v0[24];
      v25 = v0[25];
      v27 = v0[23];
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v26 + 8))(v25, v27);
    }

LABEL_12:

    v16 = v0[1];
    goto LABEL_13;
  }

  v11 = v0[14];
  v12 = v0[12];
  v13 = type metadata accessor for PartialWebPresentmentRequest();
  (*(*(v13 - 8) + 16))(v12, v11, v13);
  v14 = enum case for MobileDocumentProviderSceneConfiguration.iso18013MobileDocumentRequest(_:);
  v15 = type metadata accessor for MobileDocumentProviderSceneConfiguration();
  (*(*(v15 - 8) + 104))(v12, v14, v15);

  v16 = v0[1];
LABEL_13:

  return v16();
}

uint64_t sub_10032EFEC()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_10032F400;
  }

  else
  {
    v2 = sub_10032F100;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10032F100()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  (*(v2 + 56))(v3, 0, 1, v1);
  sub_10000BB78(v0 + 7);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[18];
    v5 = v0[16];
    v6 = v0[17];
    sub_10000BE18(v0[19], &qword_100841370, &unk_1006DDE40);
    (*(v6 + 104))(v4, enum case for DIPError.Code.internalError(_:), v5);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10032F51C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18((v0 + 2), &qword_100841378, &qword_1006E12F0);
  }

  else
  {
    v9 = v0[21];
    v8 = v0[22];
    v11 = v0[19];
    v10 = v0[20];
    v12 = v0[12];
    sub_10000BE18((v0 + 2), &qword_100841378, &qword_1006E12F0);
    v13 = *(v9 + 32);
    v13(v8, v11, v10);
    v13(v12, v8, v10);
    v14 = enum case for MobileDocumentProviderSceneConfiguration.iso18013MobileDocumentRawRequest(_:);
    v15 = type metadata accessor for MobileDocumentProviderSceneConfiguration();
    (*(*(v15 - 8) + 104))(v12, v14, v15);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_10032F400()
{
  sub_10000BE18(v0 + 16, &qword_100841378, &qword_1006E12F0);
  sub_10000BB78((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10032F4AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100841378, &qword_1006E12F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10032F51C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10032F588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
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

uint64_t sub_10032F678(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
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

void sub_10032F750(uint64_t a1)
{
  type metadata accessor for MobileDocumentProviderRecord.RecordSource(319);
  if (v1 <= 0x3F)
  {
    sub_10032F7EC();
    if (v2 <= 0x3F)
    {
      sub_10032F83C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10032F7EC()
{
  if (!qword_100835450)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100835450);
    }
  }
}

void sub_10032F83C(uint64_t a1)
{
  if (!qword_1008413F8)
  {
    type metadata accessor for IdentityDocumentRequestSceneIdentifier();
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_1008413F8);
    }
  }
}

void sub_10032F894(uint64_t a1)
{
  sub_10032F908(319);
  if (v1 <= 0x3F)
  {
    sub_10032F988(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10032F908(uint64_t a1)
{
  if (!qword_1008414B0)
  {
    type metadata accessor for BundleRecord();
    sub_10000B870(&qword_10083ACF8, &qword_1006D8FC0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1008414B0);
    }
  }
}

void sub_10032F988(uint64_t a1)
{
  if (!qword_1008414B8)
  {
    type metadata accessor for BundleRecord();
    sub_10000B870(&unk_1008414C0, &qword_1006DDEF8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1008414B8);
    }
  }
}

uint64_t sub_10032FA04()
{
  v1 = v0;
  v2 = type metadata accessor for SHA256();
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin(v2);
  v44 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SHA256Digest();
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v43 - v10;
  v12 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v43 - v16;
  v51 = 0;
  v52 = 0xE000000000000000;
  v43 = v1;
  sub_100330D14(v1, v11, type metadata accessor for MobileDocumentProviderRecord.RecordSource);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100007224(&unk_100844370, &unk_1006DDF00);

    v18 = type metadata accessor for BundleRecord();
    v19 = *(v18 - 8);
    (*(v19 + 32))(v17, v11, v18);
    (*(v19 + 56))(v17, 0, 1, v18);
  }

  else
  {
    v20 = sub_100007224(&unk_100844380, &unk_1006DDD60);
    sub_100330950(&v11[*(v20 + 48)], v17);
    v18 = type metadata accessor for BundleRecord();
    (*(*(v18 - 8) + 8))(v11, v18);
  }

  type metadata accessor for BundleRecord();
  v21 = *(v18 - 8);
  v22 = *(v21 + 48);
  if (v22(v17, 1, v18) == 1)
  {
    sub_1003309C0(v17);
  }

  else
  {
    v23 = BundleRecord.applicationIdentifier.getter();
    v25 = v24;
    (*(v21 + 8))(v17, v18);
    if (v25)
    {
      v50._countAndFlagsBits = v23;
      v50._object = v25;

      v26._countAndFlagsBits = 124;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);

      String.append(_:)(v50);
    }
  }

  sub_100330D14(v43, v9, type metadata accessor for MobileDocumentProviderRecord.RecordSource);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100007224(&unk_100844370, &unk_1006DDF00);

    (*(v21 + 56))(v15, 1, 1, v18);
    (*(v21 + 8))(v9, v18);
  }

  else
  {
    v27 = *(sub_100007224(&unk_100844380, &unk_1006DDD60) + 48);
    (*(v21 + 32))(v15, v9, v18);
    (*(v21 + 56))(v15, 0, 1, v18);
    sub_1003309C0(&v9[v27]);
  }

  if (v22(v15, 1, v18) == 1)
  {
    sub_1003309C0(v15);
  }

  else
  {
    v28 = BundleRecord.bundleIdentifier.getter();
    v30 = v29;
    (*(v21 + 8))(v15, v18);
    if (v30)
    {
      v31._countAndFlagsBits = v28;
      v31._object = v30;
      String.append(_:)(v31);
    }
  }

  v33 = v51;
  v32 = v52;

  v34 = sub_100343B88(v33, v32);
  v36 = v35;
  sub_100330CCC(&qword_1008336E0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  v37 = v44;
  v38 = v47;
  dispatch thunk of HashFunction.init()();
  sub_10000B8B8(v34, v36);
  sub_10037939C(v34, v36, v37);
  sub_10000B90C(v34, v36);
  v39 = v45;
  dispatch thunk of HashFunction.finalize()();
  (*(v46 + 8))(v37, v38);
  sub_100330CCC(&qword_1008336E8, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v40 = v49;
  v41 = Digest.hexStr.getter();
  sub_10000B90C(v34, v36);
  (*(v48 + 8))(v39, v40);

  return v41;
}

uint64_t sub_1003300F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DigitalPresentmentEligibleProposalData(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(sub_100007224(&unk_100844370, &unk_1006DDF00) + 48);
  v11 = type metadata accessor for BundleRecord();
  v27 = *(v11 - 8);
  (*(v27 + 16))(a3, a1, v11);
  *(a3 + v10) = a2;
  type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
  swift_storeEnumTagMultiPayload();
  v12 = *(a2 + 16);
  if (v12)
  {
    v24[0] = v11;
    v25 = a1;
    v26 = a3;
    v28 = _swiftEmptyArrayStorage;

    sub_100172D4C(0, v12, 0);
    v13 = v28;
    v14 = *(v7 + 80);
    v24[1] = a2;
    v15 = a2 + ((v14 + 32) & ~v14);
    v16 = *(v7 + 72);
    do
    {
      sub_100330D14(v15, v9, type metadata accessor for DigitalPresentmentEligibleProposalData);
      v17 = *(v9 + 8);
      v18 = *(v9 + 9);

      sub_100177514(v9);
      v28 = v13;
      v20 = v13[2];
      v19 = v13[3];
      if (v20 >= v19 >> 1)
      {
        sub_100172D4C((v19 > 1), v20 + 1, 1);
        v13 = v28;
      }

      v13[2] = v20 + 1;
      v21 = &v13[2 * v20];
      v21[4] = v17;
      v21[5] = v18;
      v15 += v16;
      --v12;
    }

    while (v12);

    a1 = v25;
    a3 = v26;
    v11 = v24[0];
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v22 = type metadata accessor for MobileDocumentProviderRecord(0);
  *(a3 + *(v22 + 20)) = v13;
  result = (*(v27 + 8))(a1, v11);
  *(a3 + *(v22 + 24)) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_100330370()
{
  v1 = v0;
  v2 = type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  sub_100330D14(v1, v4, type metadata accessor for MobileDocumentProviderRecord.RecordSource);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100007224(&unk_100844370, &unk_1006DDF00);

    v8 = type metadata accessor for BundleRecord();
    v9 = *(v8 - 8);
    (*(v9 + 56))(v7, 1, 1, v8);
    (*(v9 + 8))(v4, v8);
  }

  else
  {
    v10 = *(sub_100007224(&unk_100844380, &unk_1006DDD60) + 48);
    v8 = type metadata accessor for BundleRecord();
    v11 = *(v8 - 8);
    (*(v11 + 32))(v7, v4, v8);
    (*(v11 + 56))(v7, 0, 1, v8);
    sub_1003309C0(&v4[v10]);
  }

  type metadata accessor for BundleRecord();
  v12 = *(v8 - 8);
  if ((*(v12 + 48))(v7, 1, v8) == 1)
  {
    sub_1003309C0(v7);
    return 0;
  }

  else
  {
    v14 = BundleRecord.bundleIdentifier.getter();
    (*(v12 + 8))(v7, v8);
    return v14;
  }
}

uint64_t sub_100330648()
{
  v1 = v0;
  v2 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  v8 = type metadata accessor for BundleRecord();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  v15 = type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
  __chkstk_darwin(v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100330D14(v1, v17, type metadata accessor for MobileDocumentProviderRecord.RecordSource);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100007224(&unk_100844370, &unk_1006DDF00);

    (*(v9 + 32))(v12, v17, v8);
    v18 = BundleRecord.localizedName.getter();
    v14 = v12;
  }

  else
  {
    v19 = *(sub_100007224(&unk_100844380, &unk_1006DDD60) + 48);
    (*(v9 + 32))(v14, v17, v8);
    sub_100330950(&v17[v19], v7);
    sub_10032D16C(v7, v5);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {
      sub_1003309C0(v5);
      v18 = BundleRecord.localizedName.getter();
    }

    else
    {
      v18 = BundleRecord.localizedName.getter();
      (*(v9 + 8))(v5, v8);
    }

    sub_1003309C0(v7);
  }

  (*(v9 + 8))(v14, v8);
  return v18;
}

uint64_t sub_100330950(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003309C0(uint64_t a1)
{
  v2 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100330A28()
{
  v1 = v0;
  v2 = type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  sub_100330D14(v1, v4, type metadata accessor for MobileDocumentProviderRecord.RecordSource);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100007224(&unk_100844370, &unk_1006DDF00);

    v8 = type metadata accessor for BundleRecord();
    v9 = *(v8 - 8);
    (*(v9 + 32))(v7, v4, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
  }

  else
  {
    v10 = sub_100007224(&unk_100844380, &unk_1006DDD60);
    sub_100330950(&v4[*(v10 + 48)], v7);
    v8 = type metadata accessor for BundleRecord();
    (*(*(v8 - 8) + 8))(v4, v8);
  }

  type metadata accessor for BundleRecord();
  v11 = *(v8 - 8);
  if ((*(v11 + 48))(v7, 1, v8) == 1)
  {
    sub_1003309C0(v7);
    return 0;
  }

  else
  {
    v13 = BundleRecord.bundleIdentifier.getter();
    (*(v11 + 8))(v7, v8);
    return v13;
  }
}

uint64_t sub_100330CCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100330D14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100330D88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 105))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 104);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100330DC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 89) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 104) = -a2;
    }
  }

  return result;
}

uint64_t sub_100330E18(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    v2 = a2 - 3;
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 104) = a2;
  return result;
}

double sub_100330E58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v29 = a3;
  *(&v29 + 1) = a4;
  v28 = a2;
  v9 = type metadata accessor for BundleRecord();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = BundleRecord.applicationIdentifier.getter();
  if (v18)
  {
    *&v30 = a1;
    *(&v30 + 1) = v28;
    v31 = v29;
    *&v32 = v17;
    *(&v32 + 1) = v18;
    *&v33 = BundleRecord.localizedName.getter();
    *(&v33 + 1) = v19;
    (*(v10 + 16))(v12, a5, v9);
    *&v35[8] = type metadata accessor for MobileDocumentProviderRegistrationEntitlementChecker();
    *&v35[16] = &protocol witness table for MobileDocumentProviderRegistrationEntitlementChecker;
    sub_100032DBC(&v34);
    MobileDocumentProviderRegistrationEntitlementChecker.init(applicationBundleRecord:)();
    (*(v10 + 8))(a5, v9);
    v35[24] = 0;
    v20 = *v35;
    *(a6 + 64) = v34;
    *(a6 + 80) = v20;
    v21 = v31;
    *a6 = v30;
    *(a6 + 16) = v21;
    v22 = v33;
    *(a6 + 32) = v32;
    *(a6 + 48) = v22;
    result = *&v35[9];
    *(a6 + 89) = *&v35[9];
  }

  else
  {
    defaultLogger()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "MobileDocumentProviderCallingProcessConfiguration cannot find applicationIdentifier, returning nil.", v26, 2u);
    }

    (*(v10 + 8))(a5, v9);
    (*(v14 + 8))(v16, v13);
    *(a6 + 96) = 0;
    result = 0.0;
    *(a6 + 64) = 0u;
    *(a6 + 80) = 0u;
    *(a6 + 32) = 0u;
    *(a6 + 48) = 0u;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 104) = -1;
  }

  return result;
}

uint64_t sub_10033111C(uint64_t a1, uint64_t a2)
{
  sub_1003311DC(v2, v6);
  if (v8)
  {
    if (v8 == 1)
    {
      v3 = 0;
    }

    else
    {
      v3 = v6[0];
    }
  }

  else
  {

    sub_10001F358(&v7, v5);
    sub_10000BA08(v5, v5[3]);
    v3 = dispatch thunk of MobileDocumentProviderRegistrationEntitlementChecking.checkEntitled(for:)();
    sub_10000BB78(v5);
  }

  return v3 & 1;
}

uint64_t sub_100331214()
{
  v1[2] = v0;
  sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for ExtensionIdentity();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_100331398, v0, 0);
}

uint64_t sub_100331398(uint64_t a1)
{
  v17 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[13];
  v6 = v1[8];
  v7 = v1[9];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000018, 0x800000010070E6A0, &v16);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderRegistrationCleanUpManager %s.", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v1[14] = v10;
  v11 = v1[2];
  v12 = v11[22];
  v13 = v11[23];
  sub_10000BA08(v11 + 19, v12);
  v14 = swift_task_alloc();
  v1[15] = v14;
  *v14 = v1;
  v14[1] = sub_100331554;

  return dispatch thunk of ExtensionPointManaging.queryExtensionPoint()(v12, v13);
}

uint64_t sub_100331554(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_10033166C, v2, 0);
}

uint64_t sub_10033166C()
{
  v1 = v0[16];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[6];
    v4 = *(v3 + 16);
    v3 += 16;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v31 = *(v3 + 56);
    v32 = v4;
    v30 = (v3 - 8);
    v29 = _swiftEmptyArrayStorage;
    do
    {
      v7 = v0[3];
      v32(v0[7], v5, v0[5]);
      ExtensionIdentity.applicationExtensionRecord.getter();
      v8 = type metadata accessor for BundleRecord();
      v9 = *(v8 - 8);
      v10 = *(v9 + 48);
      if (v10(v7, 1, v8) == 1)
      {
        v6 = v0[3];
        (*v30)(v0[7], v0[5]);
        sub_10000BE18(v6, &qword_10083ACF8, &qword_1006D8FC0);
      }

      else
      {
        v11 = v0[3];
        v12 = v0[4];
        BundleRecord.containingBundleRecord.getter();
        v13 = *(v9 + 8);
        v13(v11, v8);
        v14 = v10(v12, 1, v8);
        v15 = v0[7];
        v17 = v0[4];
        v16 = v0[5];
        if (v14 == 1)
        {
          (*v30)(v0[7], v0[5]);
          sub_10000BE18(v17, &qword_10083ACF8, &qword_1006D8FC0);
        }

        else
        {
          v28 = BundleRecord.applicationIdentifier.getter();
          v19 = v18;
          (*v30)(v15, v16);
          v13(v17, v8);
          if (v19)
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v20 = v29;
            }

            else
            {
              v20 = sub_1003C5110(0, *(v29 + 2) + 1, 1, v29);
            }

            v22 = *(v20 + 2);
            v21 = *(v20 + 3);
            if (v22 >= v21 >> 1)
            {
              v20 = sub_1003C5110((v21 > 1), v22 + 1, 1, v20);
            }

            *(v20 + 2) = v22 + 1;
            v29 = v20;
            v23 = &v20[16 * v22];
            *(v23 + 4) = v28;
            *(v23 + 5) = v19;
          }
        }
      }

      v5 += v31;
      --v2;
    }

    while (v2);

    v24 = v29;
  }

  else
  {

    v24 = _swiftEmptyArrayStorage;
  }

  v25 = v0[2];
  v0[17] = sub_1006973D4(v24);

  sub_10000BA08((v25 + 112), *(v25 + 136));
  v26 = swift_task_alloc();
  v0[18] = v26;
  *v26 = v0;
  v26[1] = sub_1003319B0;

  return sub_10033E1A4();
}

uint64_t sub_1003319B0(uint64_t a1)
{
  v3 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v4 = v3[2];

    v5 = sub_100331F48;
    v6 = v4;
  }

  else
  {
    v6 = v3[2];
    v5 = sub_100331AD8;
  }

  return _swift_task_switch(v5, v6, 0);
}

void sub_100331AD8()
{
  v41 = v0;
  v1 = *(v0 + 152);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 136);
    v5 = v4 + 56;
    v38 = *(v1 + 16);
    do
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v6 = (v1 + 32 + 16 * v3);
      v8 = *v6;
      v7 = v6[1];
      ++v3;
      if (*(v4 + 16))
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v9 = Hasher._finalize()();
        v10 = -1 << *(v4 + 32);
        v11 = v9 & ~v10;
        if ((*(v5 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
        {
          v12 = ~v10;
          while (1)
          {
            v13 = (*(v4 + 48) + 16 * v11);
            v14 = *v13 == v8 && v13[1] == v7;
            if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v11 = (v11 + 1) & v12;
            if (((*(v5 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          continue;
        }
      }

      else
      {
      }

LABEL_15:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100172D4C(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_100172D4C((v15 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = v8;
      v17[5] = v7;
      v2 = v38;
    }

    while (v3 != v2);
  }

  v18 = v37;
  v37[21] = _swiftEmptyArrayStorage;

  defaultLogger()();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  v21 = os_log_type_enabled(v19, v20);
  v22 = v37[14];
  v23 = v37[11];
  v24 = v37[8];
  if (v21)
  {
    v39 = v37[11];
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v40[0] = v26;
    *v25 = 136315138;
    v27 = Array.description.getter();
    v29 = sub_100141FE4(v27, v28, v40);

    *(v25 + 4) = v29;
    v18 = v37;
    _os_log_impl(&_mh_execute_header, v19, v20, "MobileDocumentProviderRegistrationCleanUpManager will delete the following identifiers: %s", v25, 0xCu);
    sub_10000BB78(v26);

    v22(v39, v24);
  }

  else
  {

    v22(v23, v24);
  }

  v30 = _swiftEmptyArrayStorage[2];
  v18[22] = v30;
  if (v30)
  {
    v18[23] = 0;
    v31 = v18[21];
    v32 = v18[2];
    v33 = *(v31 + 32);
    v18[24] = v33;
    v34 = *(v31 + 40);
    v18[25] = v34;
    sub_10000BA08((v32 + 112), *(v32 + 136));

    v35 = swift_task_alloc();
    v18[26] = v35;
    *v35 = v18;
    v35[1] = sub_100332110;

    sub_100341328(v33, v34);
  }

  else
  {

    v36 = v18[1];

    v36();
  }
}

uint64_t sub_100331F48(uint64_t a1)
{
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderRegistrationCleanUpManager aborting clean up; failed to fetch application installations: %@", v4, 0xCu);
    sub_10000BE18(v5, &unk_100833B50, &unk_1006D8FB0);
  }

  else
  {
  }

  (*(v1 + 112))(*(v1 + 96), *(v1 + 64));

  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_100332110()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_1003323AC;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_100332238;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100332238()
{
  v1 = v0[23] + 1;
  if (v1 == v0[22])
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[23] = v1;
    v4 = v0[2];
    v5 = v0[21] + 16 * v1;
    v6 = *(v5 + 32);
    v0[24] = v6;
    v7 = *(v5 + 40);
    v0[25] = v7;
    sub_10000BA08((v4 + 112), *(v4 + 136));

    v8 = swift_task_alloc();
    v0[26] = v8;
    *v8 = v0;
    v8[1] = sub_100332110;

    return sub_100341328(v6, v7);
  }
}

uint64_t sub_1003323AC(uint64_t a1)
{
  v27 = v1;
  defaultLogger()();

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[25];
  if (v4)
  {
    v6 = v1[24];
    v24 = v1[10];
    v25 = v1[14];
    v7 = v1[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v8 = 136315394;
    v11 = sub_100141FE4(v6, v5, &v26);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderRegistrationCleanUpManager failed to clean up identifier %s: %@", v8, 0x16u);
    sub_10000BE18(v9, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v10);

    v25(v24, v7);
  }

  else
  {
    v13 = v1[14];
    v14 = v1[10];
    v15 = v1[8];

    v13(v14, v15);
  }

  v16 = v1[23] + 1;
  if (v16 == v1[22])
  {

    v17 = v1[1];

    return v17();
  }

  else
  {
    v1[23] = v16;
    v19 = v1[2];
    v20 = v1[21] + 16 * v16;
    v21 = *(v20 + 32);
    v1[24] = v21;
    v22 = *(v20 + 40);
    v1[25] = v22;
    sub_10000BA08((v19 + 112), *(v19 + 136));

    v23 = swift_task_alloc();
    v1[26] = v23;
    *v23 = v1;
    v23[1] = sub_100332110;

    return sub_100341328(v21, v22);
  }
}

uint64_t sub_100332704()
{
  sub_10000BB78((v0 + 112));
  sub_10000BB78((v0 + 152));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100332768(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = type metadata accessor for DeviceClass();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[23] = v4;
  v2[24] = *(v4 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_1003328C0, v1, 0);
}

uint64_t sub_1003328C0(uint64_t a1)
{
  v43 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 240);
  v6 = *(v1 + 184);
  v7 = *(v1 + 192);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v42 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000013, 0x800000010070EB90, &v42);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderRegistrationFlow %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v1 + 248) = v10;
  v11 = *(v1 + 152);
  sub_10000BA08((v11 + 400), *(v11 + 424));
  if ((dispatch thunk of DeviceInformationProviding.isPhone.getter() & 1) == 0)
  {
    v19 = *(v1 + 168);
    v18 = *(v1 + 176);
    v20 = *(v1 + 160);
    *(v1 + 128) = 0;
    *(v1 + 136) = 0xE000000000000000;
    sub_10000BA08((v11 + 400), *(v11 + 424));
    dispatch thunk of DeviceInformationProviding.deviceClass.getter();
    _print_unlocked<A, B>(_:_:)();
    (*(v19 + 8))(v18, v20);
    v22 = *(v1 + 128);
    v21 = *(v1 + 136);
    defaultLogger()();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v1 + 200);
    v16 = *(v1 + 184);
    if (v25)
    {
      v41 = *(v1 + 200);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v42 = v28;
      *v27 = 136315138;
      v29 = sub_100141FE4(v22, v21, &v42);

      *(v27 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "MobileDocumentProviderRegistrationFlow authStatus: application is running on %s; returning notSupported", v27, 0xCu);
      sub_10000BB78(v28);

      v17 = v41;
    }

    else
    {

      v17 = v26;
    }

LABEL_11:
    v10(v17, v16);
    v30 = *(v1 + 144);
    v31 = enum case for MobileDocumentProviderRegistrationSession.Status.notSupported(_:);
    v32 = type metadata accessor for MobileDocumentProviderRegistrationSession.Status();
    (*(*(v32 - 8) + 104))(v30, v31, v32);

    v33 = *(v1 + 8);

    return v33();
  }

  sub_1003311DC(*(v1 + 152) + 112, v1 + 16);
  if (*(v1 + 120))
  {
    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "MobileDocumentProviderRegistrationFlow authStatus: application does not have application identifier; returning notSupported", v14, 2u);
    }

    v15 = *(v1 + 208);
    v16 = *(v1 + 184);

    v17 = v15;
    goto LABEL_11;
  }

  v35 = *(v1 + 152);
  v37 = *(v1 + 48);
  v36 = *(v1 + 56);
  *(v1 + 256) = v37;
  *(v1 + 264) = v36;

  sub_10000BB78((v1 + 80));
  v38 = v35[36];
  v39 = v35[37];
  sub_10000BA08(v35 + 33, v38);
  v40 = swift_task_alloc();
  *(v1 + 272) = v40;
  *v40 = v1;
  v40[1] = sub_100332DD4;

  return dispatch thunk of ExtensionPointManaging.isUnelected(for:)(v37, v36, v38, v39);
}

uint64_t sub_100332DD4(char a1)
{
  v2 = *(*v1 + 152);
  *(*v1 + 121) = a1;

  return _swift_task_switch(sub_100332EEC, v2, 0);
}

uint64_t sub_100332EEC(uint64_t a1)
{
  v28 = v1;
  if (*(v1 + 121) == 1)
  {
    defaultLogger()();

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v1 + 264);
    if (v4)
    {
      v6 = *(v1 + 256);
      v26 = *(v1 + 248);
      v7 = *(v1 + 232);
      v8 = *(v1 + 184);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v27 = v10;
      *v9 = 136315138;
      v11 = sub_100141FE4(v6, v5, &v27);

      *(v9 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderRegistrationFlow authStatus: application is unelected for %s; returning notDetermined", v9, 0xCu);
      sub_10000BB78(v10);

      v26(v7, v8);
    }

    else
    {
      v18 = *(v1 + 248);
      v19 = *(v1 + 232);
      v20 = *(v1 + 184);

      v18(v19, v20);
    }

    v21 = *(v1 + 144);
    v22 = enum case for MobileDocumentProviderRegistrationSession.Status.notDetermined(_:);
    v23 = type metadata accessor for MobileDocumentProviderRegistrationSession.Status();
    (*(*(v23 - 8) + 104))(v21, v22, v23);

    v24 = *(v1 + 8);

    return v24();
  }

  else
  {
    v12 = *(v1 + 152);
    v13 = v12[36];
    v14 = v12[37];
    sub_10000BA08(v12 + 33, v13);
    v15 = swift_task_alloc();
    *(v1 + 280) = v15;
    *v15 = v1;
    v15[1] = sub_1003331E8;
    v17 = *(v1 + 256);
    v16 = *(v1 + 264);

    return dispatch thunk of ExtensionPointManaging.isEnabled(for:)(v17, v16, v13, v14);
  }
}

uint64_t sub_1003331E8(char a1)
{
  v2 = *(*v1 + 152);
  *(*v1 + 122) = a1;

  return _swift_task_switch(sub_100333300, v2, 0);
}

uint64_t sub_100333300(uint64_t a1)
{
  v37 = v1;
  if (*(v1 + 122) == 1)
  {
    defaultLogger()();

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v1 + 264);
    if (v4)
    {
      v6 = *(v1 + 256);
      v34 = *(v1 + 248);
      v7 = *(v1 + 224);
      v8 = *(v1 + 184);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v36 = v10;
      *v9 = 136315138;
      v11 = sub_100141FE4(v6, v5, &v36);

      *(v9 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderRegistrationFlow authStatus: application is enabled for %s; returning authorized", v9, 0xCu);
      sub_10000BB78(v10);

      v34(v7, v8);
    }

    else
    {
      v22 = *(v1 + 248);
      v23 = *(v1 + 224);
      v24 = *(v1 + 184);

      v22(v23, v24);
    }

    v25 = &enum case for MobileDocumentProviderRegistrationSession.Status.authorized(_:);
  }

  else
  {
    defaultLogger()();

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v1 + 264);
    if (v14)
    {
      v16 = *(v1 + 256);
      v35 = *(v1 + 248);
      v17 = *(v1 + 216);
      v18 = *(v1 + 184);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v36 = v20;
      *v19 = 136315138;
      v21 = sub_100141FE4(v16, v15, &v36);

      *(v19 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v12, v13, "MobileDocumentProviderRegistrationFlow authStatus: application is disabled for %s; returning notAuthorized", v19, 0xCu);
      sub_10000BB78(v20);

      v35(v17, v18);
    }

    else
    {
      v26 = *(v1 + 248);
      v27 = *(v1 + 216);
      v28 = *(v1 + 184);

      v26(v27, v28);
    }

    v25 = &enum case for MobileDocumentProviderRegistrationSession.Status.notAuthorized(_:);
  }

  v29 = *(v1 + 144);
  v30 = *v25;
  v31 = type metadata accessor for MobileDocumentProviderRegistrationSession.Status();
  (*(*(v31 - 8) + 104))(v29, v30, v31);

  v32 = *(v1 + 8);

  return v32();
}

uint64_t sub_1003336A8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for WalletSettingsAnalyticsReporter();
  swift_allocObject();
  result = WalletSettingsAnalyticsReporter.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for WalletSettingsAnalyticsReporter;
  *a1 = result;
  return result;
}

uint64_t sub_100333700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for DIPSignpost.Config();
  v4[6] = swift_task_alloc();
  v5 = type metadata accessor for DIPSignpost();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for MobileDocumentRegistration();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentProviderRegistrationRequest();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[18] = v8;
  v4[19] = *(v8 - 8);
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_10033391C, v3, 0);
}

uint64_t sub_10033391C(uint64_t a1)
{
  v47 = v1;
  v3 = *(v1 + 128);
  v2 = *(v1 + 136);
  v4 = *(v1 + 120);
  v5 = *(v1 + 16);
  defaultLogger()();
  (*(v3 + 16))(v2, v5, v4);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v1 + 152);
  v9 = *(v1 + 160);
  v12 = *(v1 + 136);
  v11 = *(v1 + 144);
  v14 = *(v1 + 120);
  v13 = *(v1 + 128);
  if (v8)
  {
    v43 = *(v1 + 160);
    v44 = *(v1 + 144);
    v15 = *(v1 + 112);
    v16 = *(v1 + 88);
    v38 = *(v1 + 80);
    v40 = *(v1 + 24);
    v41 = *(v1 + 32);
    v42 = v7;
    v17 = swift_slowAlloc();
    v46[0] = swift_slowAlloc();
    *v17 = 136315650;
    *(v17 + 4) = sub_100141FE4(0xD000000000000016, 0x800000010070EB70, v46);
    *(v17 + 12) = 2080;
    log = v6;
    MobileDocumentProviderRegistrationRequest.registration.getter();
    v18 = MobileDocumentRegistration.documentIdentifier.getter();
    v20 = v19;
    (*(v16 + 8))(v15, v38);
    (*(v13 + 8))(v12, v14);
    v21 = sub_100141FE4(v18, v20, v46);

    *(v17 + 14) = v21;
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_100141FE4(v40, v41, v46);
    _os_log_impl(&_mh_execute_header, log, v42, "MobileDocumentProviderRegistrationFlow %s document with document identifier %s and application identifier %s", v17, 0x20u);
    swift_arrayDestroy();

    (*(v10 + 8))(v43, v44);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    (*(v10 + 8))(v9, v11);
  }

  sub_10033AB98();
  v22 = *(v1 + 104);
  v23 = *(v1 + 88);
  v45 = *(v1 + 80);
  sub_100007224(&qword_1008416F0, &qword_1006DE1A8);
  v24 = type metadata accessor for MobileDocumentProviderRegistrationSession.Status();
  *(v1 + 168) = v24;
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = *(v25 + 80);
  *(v1 + 264) = v27;
  v28 = (v27 + 32) & ~v27;
  v29 = swift_allocObject();
  *(v1 + 176) = v29;
  *(v29 + 16) = xmmword_1006BF740;
  v30 = v29 + v28;
  v31 = *(v25 + 104);
  v31(v30, enum case for MobileDocumentProviderRegistrationSession.Status.authorized(_:), v24);
  v31(v30 + v26, enum case for MobileDocumentProviderRegistrationSession.Status.notDetermined(_:), v24);
  MobileDocumentProviderRegistrationRequest.registration.getter();
  v32 = MobileDocumentRegistration.documentType.getter();
  v34 = v33;
  *(v1 + 184) = v33;
  v35 = *(v23 + 8);
  *(v1 + 192) = v35;
  *(v1 + 200) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35(v22, v45);
  v36 = swift_task_alloc();
  *(v1 + 208) = v36;
  *v36 = v1;
  v36[1] = sub_100333DD0;

  return sub_100337B90(v29, v32, v34);
}

uint64_t sub_100333DD0()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    return _swift_task_switch(sub_10033478C, v4, 0);
  }

  else
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    v5 = swift_task_alloc();
    *(v2 + 224) = v5;
    *v5 = v3;
    v5[1] = sub_100334018;

    return sub_1003385A0();
  }
}

uint64_t sub_100334018()
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
    v6 = *(v2 + 40);

    return _swift_task_switch(sub_1003341B8, v6, 0);
  }
}

uint64_t sub_1003341B8()
{
  v1 = v0[5];
  static DaemonSignposts.WebPresentment.addRegistration.getter();
  DIPSignpost.init(_:)();
  sub_10000BA08((v1 + 224), *(v1 + 248));
  MobileDocumentProviderRegistrationRequest.registration.getter();
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_1003342A0;
  v3 = v0[12];
  v4 = v0[3];
  v5 = v0[4];

  return sub_10033B5A4(v3, v4, v5);
}

uint64_t sub_1003342A0()
{
  v2 = *v1;
  v3 = *v1;
  v2[30] = v0;

  v4 = v2[24];
  v5 = v2[12];
  v6 = v2[10];
  if (v0)
  {
    v7 = v2[5];
    v4(v5, v6);

    return _swift_task_switch(sub_1003345A8, v7, 0);
  }

  else
  {
    v4(v5, v6);
    v8 = swift_task_alloc();
    v2[31] = v8;
    *v8 = v3;
    v8[1] = sub_10033447C;
    v9 = v2[4];
    v10 = v2[3];

    return sub_1003373D0(v10, v9);
  }
}

uint64_t sub_10033447C()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_10033484C;
  }

  else
  {
    v4 = sub_100334698;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003345A8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100334698()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10033478C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10033484C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10033493C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for DIPSignpost.Config();
  v4[6] = swift_task_alloc();
  v5 = type metadata accessor for DIPSignpost();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for MobileDocumentProviderUnregisterRequest();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_100334AE4, v3, 0);
}

uint64_t sub_100334AE4(uint64_t a1)
{
  v32 = v1;
  v3 = *(v1 + 88);
  v2 = *(v1 + 96);
  v4 = *(v1 + 80);
  v5 = *(v1 + 16);
  defaultLogger()();
  (*(v3 + 16))(v2, v5, v4);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v1 + 112);
  v9 = *(v1 + 120);
  v11 = *(v1 + 96);
  v12 = *(v1 + 104);
  v14 = *(v1 + 80);
  v13 = *(v1 + 88);
  if (v8)
  {
    v27 = *(v1 + 24);
    v28 = *(v1 + 32);
    v30 = *(v1 + 104);
    v15 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v15 = 136315650;
    *(v15 + 4) = sub_100141FE4(0xD000000000000018, 0x800000010070EB50, v31);
    *(v15 + 12) = 2080;
    v16 = MobileDocumentProviderUnregisterRequest.documentIdentifier.getter();
    v29 = v9;
    v18 = v17;
    (*(v13 + 8))(v11, v14);
    v19 = sub_100141FE4(v16, v18, v31);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2080;
    *(v15 + 24) = sub_100141FE4(v27, v28, v31);
    _os_log_impl(&_mh_execute_header, v6, v7, "MobileDocumentProviderRegistrationFlow %s document identifier %s and application identifier %s", v15, 0x20u);
    swift_arrayDestroy();

    (*(v10 + 8))(v29, v30);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  static DaemonSignposts.WebPresentment.removeRegistration.getter();
  DIPSignpost.init(_:)();
  sub_10033AB98();
  sub_100007224(&qword_1008416F0, &qword_1006DE1A8);
  v20 = type metadata accessor for MobileDocumentProviderRegistrationSession.Status();
  *(v1 + 128) = v20;
  v21 = *(v20 - 8);
  *(v1 + 136) = v21;
  v22 = *(v21 + 80);
  *(v1 + 208) = v22;
  v23 = (v22 + 32) & ~v22;
  v24 = swift_allocObject();
  *(v1 + 144) = v24;
  *(v24 + 16) = xmmword_1006BF520;
  (*(v21 + 104))(v24 + v23, enum case for MobileDocumentProviderRegistrationSession.Status.authorized(_:), v20);
  v25 = swift_task_alloc();
  *(v1 + 152) = v25;
  *v25 = v1;
  v25[1] = sub_100334F14;

  return sub_100337B90(v24, 0, 0);
}

uint64_t sub_100334F14()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_1003355B0;
  }

  else
  {
    v6 = *(v2 + 136);
    v5 = *(v2 + 144);
    v7 = *(v2 + 208);
    v8 = *(v2 + 128);
    v9 = *(v2 + 40);
    v10 = (v7 + 32) & ~v7;
    swift_setDeallocating();
    (*(v6 + 8))(v5 + v10, v8);
    swift_deallocClassInstance();
    v4 = sub_100335088;
    v3 = v9;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100335088()
{
  sub_10000BA08((v0[5] + 224), *(v0[5] + 248));
  v1 = MobileDocumentProviderUnregisterRequest.documentIdentifier.getter();
  v3 = v2;
  v0[21] = v2;
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_100335154;
  v5 = v0[3];
  v6 = v0[4];

  return sub_10033FF40(v1, v3, v5, v6);
}

uint64_t sub_100335154()
{
  v2 = *v1;
  v2[23] = v0;

  if (v0)
  {
    v3 = v2[5];

    return _swift_task_switch(sub_10033541C, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[24] = v4;
    *v4 = v2;
    v4[1] = sub_1003352F0;
    v5 = v2[4];
    v6 = v2[3];

    return sub_1003373D0(v6, v5);
  }
}

uint64_t sub_1003352F0()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_1003356C4;
  }

  else
  {
    v4 = sub_1003354EC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10033541C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003354EC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003355B0()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = (*(v0 + 208) + 32) & ~*(v0 + 208);
  swift_setDeallocating();
  (*(v2 + 8))(v1 + v4, v3);
  swift_deallocClassInstance();
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 56);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v6 + 8))(v5, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1003356C4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100335794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for MobileDocumentProviderRegisteredApplication();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for DIPSignpost();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_10033593C, v3, 0);
}

uint64_t sub_10033593C(uint64_t a1)
{
  v19 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = *(v1 + 112);
  v5 = *(v1 + 120);
  v7 = *(v1 + 104);
  if (v4)
  {
    v9 = *(v1 + 24);
    v8 = *(v1 + 32);
    v10 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100141FE4(0xD000000000000013, 0x800000010070EAF0, v18);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100141FE4(v9, v8, v18);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderRegistrationFlow %s for application identifier %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  (*(v6 + 8))(v5, v7);
  static DaemonSignposts.WebPresentment.getRegistrations.getter();
  DIPSignpost.init(_:)();
  sub_10033AB98();
  sub_100007224(&qword_1008416F0, &qword_1006DE1A8);
  v11 = type metadata accessor for MobileDocumentProviderRegistrationSession.Status();
  *(v1 + 128) = v11;
  v12 = *(v11 - 8);
  *(v1 + 136) = v12;
  v13 = *(v12 + 80);
  *(v1 + 200) = v13;
  v14 = (v13 + 32) & ~v13;
  v15 = swift_allocObject();
  *(v1 + 144) = v15;
  *(v15 + 16) = xmmword_1006BF520;
  (*(v12 + 104))(v15 + v14, enum case for MobileDocumentProviderRegistrationSession.Status.authorized(_:), v11);
  v16 = swift_task_alloc();
  *(v1 + 152) = v16;
  *v16 = v1;
  v16[1] = sub_100335CBC;

  return sub_100337B90(v15, 0, 0);
}

uint64_t sub_100335CBC()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_100336358;
  }

  else
  {
    v6 = *(v2 + 136);
    v5 = *(v2 + 144);
    v7 = *(v2 + 200);
    v8 = *(v2 + 128);
    v9 = *(v2 + 40);
    v10 = (v7 + 32) & ~v7;
    swift_setDeallocating();
    (*(v6 + 8))(v5 + v10, v8);
    swift_deallocClassInstance();
    v4 = sub_100335E30;
    v3 = v9;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100335E30()
{
  sub_10000BA08((v0[5] + 224), *(v0[5] + 248));
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_100335EDC;
  v2 = v0[8];
  v3 = v0[3];
  v4 = v0[4];

  return sub_10033C418(v2, v3, v4);
}

uint64_t sub_100335EDC()
{
  v2 = *v1;
  v2[22] = v0;

  if (v0)
  {
    v3 = v2[5];

    return _swift_task_switch(sub_10033617C, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[23] = v4;
    *v4 = v2;
    v4[1] = sub_100336050;
    v5 = v2[4];
    v6 = v2[3];

    return sub_1003373D0(v6, v5);
  }
}

uint64_t sub_100336050()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_10033646C;
  }

  else
  {
    v4 = sub_10033624C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10033617C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10033624C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  MobileDocumentProviderRegisteredApplication.registrations.getter();
  MobileDocumentProviderQueryRegistrationsResponse.init(registrations:)();
  (*(v4 + 8))(v5, v6);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100336358()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = (*(v0 + 200) + 32) & ~*(v0 + 200);
  swift_setDeallocating();
  (*(v2 + 8))(v1 + v4, v3);
  swift_deallocClassInstance();
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 80);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v6 + 8))(v5, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10033646C()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100336554()
{
  v1[17] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_100336670, v0, 0);
}

uint64_t sub_100336670(uint64_t a1)
{
  v13 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = *(v1 + 176);
  v5 = *(v1 + 184);
  v7 = *(v1 + 168);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000011, 0x800000010070EAD0, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderRegistrationFlow %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v6 + 8))(v5, v7);
  if (isInternalBuild()())
  {
    sub_1003311DC(*(v1 + 136) + 112, v1 + 16);
    if (*(v1 + 120))
    {
      if (*(v1 + 120) != 1 && (*(v1 + 16) & 1) != 0)
      {
        *(v1 + 192) = *sub_10000BA08((*(v1 + 136) + 224), *(*(v1 + 136) + 248));

        return _swift_task_switch(sub_100336990, 0, 0);
      }
    }

    else
    {

      sub_10000BB78((v1 + 80));
    }
  }

  (*(*(v1 + 152) + 104))(*(v1 + 160), enum case for DIPError.Code.webPresentmentRegistrationFlowNotAuthorized(_:), *(v1 + 144));
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10033AA24(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_100336990()
{
  v1 = *(v0 + 192);
  v2 = v1[5];
  v3 = v1[6];
  sub_10000BA08(v1 + 2, v2);
  v4 = swift_task_alloc();
  *(v0 + 200) = v4;
  v5 = sub_100007224(&qword_1008416E8, &qword_1006DE1A0);
  *v4 = v0;
  v4[1] = sub_100336A80;

  return dispatch thunk of AsyncCoreDataContaining.performRead<A>(_:)(v0 + 128, sub_10033E964, 0, v5, v2, v3);
}

uint64_t sub_100336A80()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_100336C0C;
  }

  else
  {
    v2 = sub_100336B94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100336B94()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100336C0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100336C7C(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 136) = a3;
  *(v4 + 144) = v3;
  *(v4 + 128) = a2;
  *(v4 + 121) = a1;
  v5 = type metadata accessor for DIPError.Code();
  *(v4 + 152) = v5;
  *(v4 + 160) = *(v5 - 8);
  *(v4 + 168) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 176) = v6;
  *(v4 + 184) = *(v6 - 8);
  *(v4 + 192) = swift_task_alloc();

  return _swift_task_switch(sub_100336DA0, v3, 0);
}

uint64_t sub_100336DA0(uint64_t a1)
{
  v23 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = *(v1 + 184);
  v5 = *(v1 + 192);
  v7 = *(v1 + 176);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD00000000000001FLL, 0x800000010070EA60, &v22);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderRegistrationFlow %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v6 + 8))(v5, v7);
  sub_1003311DC(*(v1 + 144) + 112, v1 + 16);
  if (*(v1 + 120) == 1)
  {
    v10 = *(v1 + 144);
    if (*(v1 + 121) == 1)
    {
      sub_10000BA08(v10 + 45, v10[48]);
      v11 = swift_task_alloc();
      *(v1 + 200) = v11;
      *v11 = v1;
      v11[1] = sub_100337168;
      v13 = *(v1 + 128);
      v12 = *(v1 + 136);

      return sub_100323814(v13, v12);
    }

    else
    {
      sub_10000BA08(v10 + 28, v10[31]);
      v19 = swift_task_alloc();
      *(v1 + 208) = v19;
      *v19 = v1;
      v19[1] = sub_10033729C;
      v21 = *(v1 + 128);
      v20 = *(v1 + 136);

      return sub_100341328(v21, v20);
    }
  }

  else
  {
    v16 = *(v1 + 160);
    v15 = *(v1 + 168);
    v17 = *(v1 + 152);
    sub_10033A9D0(v1 + 16);
    (*(v16 + 104))(v15, enum case for DIPError.Code.webPresentmentRegistrationEntitlementMissing(_:), v17);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10033AA24(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v18 = *(v1 + 8);

    return v18();
  }
}

uint64_t sub_100337168()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10033729C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1003373D0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100337494, v2, 0);
}

uint64_t sub_100337494()
{
  sub_10000BA08((v0[4] + 360), *(v0[4] + 384));
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_10033753C;
  v3 = v0[2];
  v2 = v0[3];

  return sub_100321B6C(v3, v2);
}

uint64_t sub_10033753C(uint64_t a1)
{
  v4 = *v2;
  v4[9] = v1;

  v5 = v4[4];
  if (v1)
  {
    v6 = sub_100337888;
  }

  else
  {
    v4[10] = a1;
    v6 = sub_100337678;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100337678()
{
  sub_10000BA08((v0[4] + 224), *(v0[4] + 248));
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_100337724;
  v2 = v0[10];
  v3 = v0[2];
  v4 = v0[3];

  return sub_100342338(v2, v3, v4);
}

uint64_t sub_100337724()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v3 = v2[4];

    return _swift_task_switch(sub_100337A0C, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100337888()
{
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10033AA24(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100337A0C()
{
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10033AA24(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100337B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[46] = a3;
  v4[47] = v3;
  v4[44] = a1;
  v4[45] = a2;
  v5 = type metadata accessor for MobileDocumentProviderRegistrationSession.Status();
  v4[48] = v5;
  v4[49] = *(v5 - 8);
  v4[50] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v4[51] = v6;
  v4[52] = *(v6 - 8);
  v4[53] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[54] = v7;
  v4[55] = *(v7 - 8);
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();

  return _swift_task_switch(sub_100337D18, v3, 0);
}

uint64_t sub_100337D18()
{
  v1 = *(v0 + 376);
  if (isInternalBuild()())
  {
    sub_1003311DC(v1 + 112, v0 + 240);
    if (*(v0 + 344))
    {
      if (*(v0 + 344) != 1 && (*(v0 + 240) & 1) != 0)
      {
        defaultLogger()();
        v2 = Logger.logObject.getter();
        v3 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v2, v3))
        {
          v4 = swift_slowAlloc();
          *v4 = 0;
          _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderRegistrationFlow calling process is has privileged testing entitlement present; proceeding", v4, 2u);
        }

        (*(*(v0 + 440) + 8))(*(v0 + 456), *(v0 + 432));

        v5 = *(v0 + 8);
        goto LABEL_15;
      }
    }

    else
    {

      sub_10000BB78((v0 + 304));
    }
  }

  v6 = *(v0 + 368);
  if (v6 && (sub_10033111C(*(v0 + 360), v6) & 1) == 0)
  {
    (*(*(v0 + 416) + 104))(*(v0 + 424), enum case for DIPError.Code.webPresentmentRegistrationEntitlementMissing(_:), *(v0 + 408));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10033AA24(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v5 = *(v0 + 8);
LABEL_15:

    return v5();
  }

  v7 = swift_task_alloc();
  *(v0 + 464) = v7;
  *v7 = v0;
  v7[1] = sub_100338068;
  v8 = *(v0 + 400);

  return sub_100332768(v8);
}

uint64_t sub_100338068()
{
  v1 = *(*v0 + 376);

  return _swift_task_switch(sub_100338178, v1, 0);
}

uint64_t sub_100338178()
{
  sub_1003311DC(*(v0 + 376) + 112, v0 + 16);
  if (*(v0 + 120))
  {
    sub_10033A9D0(v0 + 16);
LABEL_7:
    sub_1003311DC(*(v0 + 376) + 112, v0 + 128);
    v12 = *(v0 + 416);
    v11 = *(v0 + 424);
    v13 = *(v0 + 400);
    v14 = *(v0 + 408);
    v15 = *(v0 + 384);
    v16 = *(v0 + 392);
    if (*(v0 + 232))
    {
      sub_10033A9D0(v0 + 128);
      (*(v12 + 104))(v11, enum case for DIPError.Code.webPresentmentRegistrationEntitlementMissing(_:), v14);
    }

    else
    {

      sub_10000BB78((v0 + 192));
      (*(v12 + 104))(v11, enum case for DIPError.Code.webPresentmentRegistrationFlowNotAuthorized(_:), v14);
    }

    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10033AA24(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v16 + 8))(v13, v15);

    v10 = *(v0 + 8);
    goto LABEL_11;
  }

  v1 = *(v0 + 400);
  v2 = *(v0 + 352);

  sub_10000BB78((v0 + 80));
  if (!sub_10032DB10(v1, v2))
  {
    goto LABEL_7;
  }

  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 440);
  v6 = *(v0 + 448);
  v8 = *(v0 + 432);
  if (v5)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "MobileDocumentProviderRegistrationFlow calling process is an authorized extension app; proceeding", v9, 2u);
  }

  (*(v7 + 8))(v6, v8);
  (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));

  v10 = *(v0 + 8);
LABEL_11:

  return v10();
}

uint64_t sub_1003385A0()
{
  v1[38] = v0;
  v2 = type metadata accessor for DIPError();
  v1[39] = v2;
  v1[40] = *(v2 - 8);
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v3 = type metadata accessor for DIPError.Code();
  v1[43] = v3;
  v1[44] = *(v3 - 8);
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v4 = type metadata accessor for WalletSettingsAnalyticsReporter.IssuerType();
  v1[47] = v4;
  v1[48] = *(v4 - 8);
  v1[49] = swift_task_alloc();
  v5 = type metadata accessor for WalletSettingsAnalyticsReporter.ReferralSource();
  v1[50] = v5;
  v1[51] = *(v5 - 8);
  v1[52] = swift_task_alloc();
  v6 = type metadata accessor for WalletSettingsAnalyticsReporter.EventType();
  v1[53] = v6;
  v1[54] = *(v6 - 8);
  v1[55] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v1[56] = v7;
  v1[57] = *(v7 - 8);
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();

  return _swift_task_switch(sub_100338868, v0, 0);
}

uint64_t sub_100338868()
{
  sub_1003311DC(*(v0 + 304) + 112, v0 + 16);
  if (*(v0 + 120))
  {
    sub_10033A9D0(v0 + 16);
    defaultLogger()();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    v3 = os_log_type_enabled(v1, v2);
    v5 = *(v0 + 456);
    v4 = *(v0 + 464);
    v6 = *(v0 + 448);
    if (v3)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "MobileDocumentProviderRegistrationFlow calling process is not extension app; skipping", v7, 2u);
    }

    (*(v5 + 8))(v4, v6);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 304);
    v12 = *(v0 + 48);
    v11 = *(v0 + 56);
    *(v0 + 496) = v12;
    *(v0 + 504) = v11;
    v13 = *(v0 + 72);
    *(v0 + 512) = *(v0 + 64);
    *(v0 + 520) = v13;
    sub_10000BB78((v0 + 80));
    v14 = v10[36];
    v15 = v10[37];
    sub_10000BA08(v10 + 33, v14);
    v16 = swift_task_alloc();
    *(v0 + 528) = v16;
    *v16 = v0;
    v16[1] = sub_100338AD0;

    return dispatch thunk of ExtensionPointManaging.isUnelected(for:)(v12, v11, v14, v15);
  }
}

uint64_t sub_100338AD0(char a1)
{
  v2 = *(*v1 + 304);
  *(*v1 + 121) = a1;

  return _swift_task_switch(sub_100338BE8, v2, 0);
}

uint64_t sub_100338BE8()
{
  v58 = v0;
  if (*(v0 + 121) == 1)
  {
    sub_1003311DC(*(v0 + 304) + 112, v0 + 128);
    if (!*(v0 + 232))
    {
      v54 = *(v0 + 128);
      v53 = *(v0 + 132);
      v50 = *(v0 + 140);
      v49 = *(v0 + 144);
      v48 = *(v0 + 148);
      v51 = *(v0 + 136);
      v52 = *(v0 + 152);
      v55 = *(v0 + 156);

      sub_10000BB78((v0 + 192));
      goto LABEL_12;
    }

    if (*(v0 + 232) == 1)
    {
      v54 = *(v0 + 128);
      v53 = *(v0 + 132);
      v50 = *(v0 + 140);
      v49 = *(v0 + 144);
      v48 = *(v0 + 148);
      v51 = *(v0 + 136);
      v52 = *(v0 + 152);
      v55 = *(v0 + 156);
LABEL_12:
      defaultLogger()();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Presenting the web presentment provider opt in alert with process visibility monitor", v19, 2u);
      }

      v20 = *(v0 + 520);
      v21 = *(v0 + 504);
      v22 = *(v0 + 512);
      v23 = *(v0 + 488);
      v24 = *(v0 + 496);
      v25 = *(v0 + 448);
      v26 = *(v0 + 456);
      v27 = *(v0 + 304);

      (*(v26 + 8))(v23, v25);
      v29 = v27[58];
      v28 = v27[59];
      sub_10000BA08(v27 + 55, v29);
      v31 = sub_10033AA24(&qword_1008416E0, v30, type metadata accessor for MobileDocumentProviderRegistrationFlow, &unk_1006DE160);
      v32 = swift_allocObject();
      *(v0 + 536) = v32;
      v32[2] = 0;
      v32[3] = 0;
      v32[4] = v27;
      v32[5] = v24;
      v32[6] = v21;
      v32[7] = v22;
      v32[8] = v20;

      v33 = swift_task_alloc();
      *(v0 + 544) = v33;
      *v33 = v0;
      v33[1] = sub_10033927C;
      v63 = v28;
      v61 = v29;
      v62 = &type metadata for () + 8;
      v60 = v32;

      return __s13CoreIDVShared27ProcessVisibilityMonitoringPAAE014withForegroundC7Monitor10auditToken9isolation9operationqd__So0I8_token_ta_ScA_pSgYiqd__yYaYbKYActYaKs8SendableRd__lF(v33, v54 | (v53 << 32), v51 | (v50 << 32), v49 | (v48 << 32), v52 | (v55 << 32), v27, v31, &unk_1006DE198);
    }

    defaultLogger()();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Presenting the web presentment provider opt in alert", v36, 2u);
    }

    v37 = *(v0 + 480);
    v38 = *(v0 + 448);
    v39 = *(v0 + 456);
    v40 = *(v0 + 304);

    (*(v39 + 8))(v37, v38);
    v42 = *(v40 + 344);
    v41 = *(v40 + 352);
    v56 = (*(v41 + 8) + **(v41 + 8));
    v43 = swift_task_alloc();
    *(v0 + 560) = v43;
    *v43 = v0;
    v43[1] = sub_100339494;
    v44 = *(v0 + 520);
    v45 = *(v0 + 504);
    v46 = *(v0 + 512);
    v47 = *(v0 + 496);

    return v56(v47, v45, v46, v44, v42, v41);
  }

  else
  {

    defaultLogger()();

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();

    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 504);
    if (v3)
    {
      v5 = *(v0 + 496);
      v6 = *(v0 + 472);
      v7 = *(v0 + 448);
      v8 = *(v0 + 456);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v57 = v10;
      *v9 = 136315138;
      v11 = sub_100141FE4(v5, v4, &v57);

      *(v9 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v1, v2, "MobileDocumentProviderRegistrationFlow user has already made an election for %s", v9, 0xCu);
      sub_10000BB78(v10);

      (*(v8 + 8))(v6, v7);
    }

    else
    {
      v12 = *(v0 + 472);
      v13 = *(v0 + 448);
      v14 = *(v0 + 456);

      (*(v14 + 8))(v12, v13);
    }

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_10033927C()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v3 = *(v2 + 304);

    v4 = sub_10033A22C;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 304);

    v4 = sub_1003393D4;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1003393D4()
{
  v1 = v0[38];
  v2 = v1[36];
  v3 = v1[37];
  sub_10000BA08(v1 + 33, v2);
  v4 = swift_task_alloc();
  v0[72] = v4;
  *v4 = v0;
  v4[1] = sub_1003395E4;
  v6 = v0[62];
  v5 = v0[63];

  return dispatch thunk of ExtensionPointManaging.isEnabled(for:)(v6, v5, v2, v3);
}

uint64_t sub_100339494()
{
  v2 = *v1;
  *(*v1 + 568) = v0;

  if (v0)
  {
    v3 = *(v2 + 304);

    v4 = sub_100339D5C;
  }

  else
  {
    v3 = *(v2 + 304);

    v4 = sub_1003393D4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003395E4(char a1)
{
  v2 = *(*v1 + 304);
  *(*v1 + 122) = a1;

  return _swift_task_switch(sub_100339718, v2, 0);
}

uint64_t sub_100339718()
{
  v1 = *(v0 + 122);
  v3 = *(v0 + 432);
  v2 = *(v0 + 440);
  v5 = *(v0 + 416);
  v4 = *(v0 + 424);
  v6 = *(v0 + 400);
  v7 = *(v0 + 408);
  v8 = *(v0 + 384);
  v15 = *(v0 + 376);
  v16 = *(v0 + 392);
  (*(*(v0 + 304) + 480))();
  v17 = *(v0 + 264);
  v18 = *(v0 + 272);
  sub_10000BA08((v0 + 240), v17);
  v9 = &enum case for WalletSettingsAnalyticsReporter.EventType.enable(_:);
  if (!v1)
  {
    v9 = &enum case for WalletSettingsAnalyticsReporter.EventType.disable(_:);
  }

  (*(v3 + 104))(v2, *v9, v4);
  (*(v7 + 104))(v5, enum case for WalletSettingsAnalyticsReporter.ReferralSource.thirdPartyApp(_:), v6);
  (*(v8 + 104))(v16, enum case for WalletSettingsAnalyticsReporter.IssuerType.thirdParty(_:), v15);
  v10 = swift_task_alloc();
  *(v0 + 584) = v10;
  *v10 = v0;
  v10[1] = sub_100339898;
  v11 = *(v0 + 440);
  v12 = *(v0 + 416);
  v13 = *(v0 + 392);

  return dispatch thunk of WalletSettingsAnalyticsReporting.sendWalletSettingsToggled(eventType:referralSource:issuerType:)(v11, v12, v13, v17, v18);
}

uint64_t sub_100339898()
{
  v11 = *(*v0 + 440);
  v1 = *(*v0 + 432);
  v2 = *(*v0 + 424);
  v3 = *(*v0 + 416);
  v4 = *(*v0 + 408);
  v5 = *(*v0 + 400);
  v6 = *(*v0 + 392);
  v7 = *(*v0 + 384);
  v8 = *(*v0 + 376);
  v9 = *(*v0 + 304);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v11, v2);

  return _swift_task_switch(sub_100339AC8, v9, 0);
}

uint64_t sub_100339AC8()
{
  if (*(v0 + 122) != 1)
  {
    (*(*(v0 + 352) + 104))(*(v0 + 368), enum case for DIPError.Code.webPresentmentRegistrationFlowNotAuthorized(_:), *(v0 + 344));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10033AA24(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  sub_10000BB78((v0 + 240));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100339D5C()
{
  v0[35] = v0[71];
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v2 = v0[45];
    v1 = v0[46];
    v3 = v0[43];
    v4 = v0[44];
    (*(v0[40] + 32))(v0[41], v0[42], v0[39]);
    DIPError.code.getter();
    v5 = *(v4 + 104);
    v5(v2, enum case for DIPError.Code.processNotVisible(_:), v3);
    sub_10033AA24(&qword_10083B4D0, 255, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v6 = *(v4 + 8);
    v6(v2, v3);
    v6(v1, v3);
    if (v0[36] == v0[37])
    {
      v7 = v0[46];
      v8 = v0[43];
      v10 = v0[40];
      v9 = v0[41];
      v11 = v0[39];

      sub_10033AA24(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      (*(v10 + 16))(v12, v9, v11);
      v5(v7, enum case for DIPError.Code.internalError(_:), v8);
      sub_1000402AC(_swiftEmptyArrayStorage);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v10 + 8))(v9, v11);
      goto LABEL_6;
    }

    (*(v0[40] + 8))(v0[41], v0[39]);
  }

  v13 = v0[46];
  v14 = v0[43];
  v15 = v0[44];

  (*(v15 + 104))(v13, enum case for DIPError.Code.webPresentmentRegistrationFlowNotAuthorized(_:), v14);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  sub_10033AA24(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
LABEL_6:

  v16 = v0[1];

  return v16();
}

uint64_t sub_10033A22C()
{
  v0[35] = v0[69];
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v2 = v0[45];
    v1 = v0[46];
    v3 = v0[43];
    v4 = v0[44];
    (*(v0[40] + 32))(v0[41], v0[42], v0[39]);
    DIPError.code.getter();
    v5 = *(v4 + 104);
    v5(v2, enum case for DIPError.Code.processNotVisible(_:), v3);
    sub_10033AA24(&qword_10083B4D0, 255, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v6 = *(v4 + 8);
    v6(v2, v3);
    v6(v1, v3);
    if (v0[36] == v0[37])
    {
      v7 = v0[46];
      v8 = v0[43];
      v10 = v0[40];
      v9 = v0[41];
      v11 = v0[39];

      sub_10033AA24(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      (*(v10 + 16))(v12, v9, v11);
      v5(v7, enum case for DIPError.Code.internalError(_:), v8);
      sub_1000402AC(_swiftEmptyArrayStorage);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v10 + 8))(v9, v11);
      goto LABEL_6;
    }

    (*(v0[40] + 8))(v0[41], v0[39]);
  }

  v13 = v0[46];
  v14 = v0[43];
  v15 = v0[44];

  (*(v15 + 104))(v13, enum case for DIPError.Code.webPresentmentRegistrationFlowNotAuthorized(_:), v14);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  sub_10033AA24(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
LABEL_6:

  v16 = v0[1];

  return v16();
}

uint64_t sub_10033A6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_10033A724, 0, 0);
}

uint64_t sub_10033A724()
{
  v1 = v0[2];
  v3 = *(v1 + 344);
  v2 = *(v1 + 352);
  v10 = (*(v2 + 8) + **(v2 + 8));
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_10033A848;
  v5 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v7 = v0[4];

  return v10(v8, v7, v5, v6, v3, v2);
}

uint64_t sub_10033A848()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10033A93C()
{
  sub_10033A9D0((v0 + 14));
  sub_10000BB78(v0 + 28);
  sub_10000BB78(v0 + 33);
  sub_10000BB78(v0 + 38);
  sub_10000BB78(v0 + 45);
  sub_10000BB78(v0 + 50);
  sub_10000BB78(v0 + 55);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10033AA24(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10033AA6C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10033AABC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100027B9C;

  return sub_10033A6FC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10033AB98()
{
  v0 = sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = [objc_opt_self() standardUserDefaults];
  v11._countAndFlagsBits = static DaemonInternalDefaultsKeys.WebPresentment.mobileDocumentProviderRegistrationFlowTestErrorCode.getter();
  v15 = NSUserDefaults.internalInt(forKey:)(v11);
  is_nil = v15.is_nil;

  if (!is_nil)
  {
    DIPError.Code.init(rawValue:)();
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      return sub_1000451E8(v2);
    }

    else
    {
      (*(v4 + 32))(v9, v2, v3);
      (*(v4 + 16))(v7, v9, v3);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10033AA24(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return (*(v4 + 8))(v9, v3);
    }
  }

  return result;
}

void sub_10033AE8C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&qword_1008417A0, &qword_1006DE270);
  __chkstk_darwin(v8 - 8);
  v77 = &v58 - v9;
  v76 = type metadata accessor for MobileDocumentRegistration();
  v10 = *(v76 - 8);
  v11 = __chkstk_darwin(v76);
  v62 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v59 = &v58 - v13;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for StoredMobileDocumentRegistration();
    sub_100342EF8(&qword_1008417A8, &type metadata accessor for StoredMobileDocumentRegistration, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    a1 = v80;
    v15 = v81;
    v16 = v82;
    v17 = v83;
    v18 = v84;
  }

  else
  {
    v19 = -1 << *(a1 + 32);
    v15 = a1 + 56;
    v16 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(a1 + 56);

    v17 = 0;
  }

  v63 = v16;
  v22 = (v16 + 64) >> 6;
  v73 = (v10 + 56);
  v71 = (v5 + 8);
  v72 = (v10 + 48);
  v64 = _swiftEmptyArrayStorage;
  v60 = v10;
  v61 = (v10 + 32);
  *&v14 = 136315138;
  v66 = v14;
  v74 = v22;
  v75 = v15;
  v67 = a1;
  v65 = v7;
LABEL_8:
  v23 = v17;
  v24 = v77;
  if (a1 < 0)
  {
LABEL_9:
    v25 = __CocoaSet.Iterator.next()();
    if (v25)
    {
      v79 = v25;
      type metadata accessor for StoredMobileDocumentRegistration();
      swift_dynamicCast();
      v26 = v85;
      v17 = v23;
      v78 = v18;
      v24 = v77;
      if (v85)
      {
        goto LABEL_17;
      }
    }

LABEL_31:
    sub_10001FA6C(a1);
  }

  else
  {
    while (1)
    {
      v27 = v23;
      v28 = v18;
      v17 = v23;
      if (!v18)
      {
        break;
      }

LABEL_16:
      v78 = (v28 - 1) & v28;
      v26 = *(*(a1 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v28)))));
      if (!v26)
      {
        goto LABEL_31;
      }

LABEL_17:
      v29 = v26;
      sub_10033DE18(v29, v24);
      if (v2)
      {
        defaultLogger()();
        v30 = v7;
        v31 = v29;
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v70 = v2;
          v35 = v34;
          v69 = swift_slowAlloc();
          v85 = v69;
          *v35 = v66;
          v36 = v31;
          v37 = [v36 description];
          v68 = v32;
          v38 = v37;
          v39 = v33;
          v40 = v4;
          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v42;

          v44 = v41;
          v4 = v40;
          v45 = sub_100141FE4(v44, v43, &v85);
          a1 = v67;

          *(v35 + 4) = v45;
          v46 = v39;
          v47 = v68;
          _os_log_impl(&_mh_execute_header, v68, v46, "MobileDocumentProviderRegistrationStorage could not map stored registration %s. Skipping", v35, 0xCu);
          sub_10000BB78(v69);

          v7 = v65;
          (*v71)(v65, v40);
          v2 = 0;
          v48 = 1;
        }

        else
        {

          (*v71)(v30, v4);
          v2 = 0;
          v48 = 1;
          v7 = v30;
        }

        v24 = v77;
      }

      else
      {
        v48 = 0;
      }

      v18 = v78;
      v49 = v76;
      (*v73)(v24, v48, 1, v76);

      if ((*v72)(v24, 1, v49) != 1)
      {
        v50 = *v61;
        v51 = v59;
        v52 = v24;
        v53 = v76;
        (*v61)(v59, v52, v76);
        v50(v62, v51, v53);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = v75;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v64 = sub_1003C610C(0, *(v64 + 2) + 1, 1, v64);
        }

        v56 = *(v64 + 2);
        v55 = *(v64 + 3);
        if (v56 >= v55 >> 1)
        {
          v64 = sub_1003C610C((v55 > 1), v56 + 1, 1, v64);
        }

        v57 = v64;
        *(v64 + 2) = v56 + 1;
        v50(&v57[((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v56], v62, v76);
        v22 = v74;
        v18 = v78;
        goto LABEL_8;
      }

      sub_10000BE18(v24, &qword_1008417A0, &qword_1006DE270);
      v23 = v17;
      v22 = v74;
      v15 = v75;
      if (a1 < 0)
      {
        goto LABEL_9;
      }
    }

    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v17 >= v22)
      {
        goto LABEL_31;
      }

      v28 = *(v15 + 8 * v17);
      ++v27;
      if (v28)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10033B5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for MobileDocumentProviderRegisteredApplication();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentRegistration();
  v4[12] = v7;
  v8 = *(v7 - 8);
  v4[13] = v8;
  v4[14] = *(v8 + 64);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v4[17] = v9;
  v4[18] = *(v9 - 8);
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_10033B790, 0, 0);
}

uint64_t sub_10033B790(uint64_t a1)
{
  v29 = v1;
  v2 = v1[16];
  v3 = v1[12];
  v4 = v1[13];
  v5 = v1[2];
  defaultLogger()();
  v6 = *(v4 + 16);
  v1[20] = v6;
  v1[21] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v1[18];
  v10 = v1[19];
  v12 = v1[16];
  v13 = v1[17];
  v15 = v1[12];
  v14 = v1[13];
  if (v9)
  {
    v27 = v1[17];
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_100141FE4(0xD000000000000010, 0x800000010070EDF0, &v28);
    *(v16 + 12) = 2080;
    v17 = MobileDocumentRegistration.documentIdentifier.getter();
    v26 = v10;
    v19 = v18;
    (*(v14 + 8))(v12, v15);
    v20 = sub_100141FE4(v17, v19, &v28);

    *(v16 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "MobileDocumentProviderRegistrationStorage %s document %s.", v16, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v27);
  }

  else
  {

    (*(v14 + 8))(v12, v15);
    (*(v11 + 8))(v10, v13);
  }

  v21 = swift_task_alloc();
  v1[22] = v21;
  *v21 = v1;
  v21[1] = sub_10033BA08;
  v22 = v1[11];
  v23 = v1[4];
  v24 = v1[3];

  return sub_10033C418(v22, v24, v23);
}

uint64_t sub_10033BA08()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10033C068;
  }

  else
  {
    v2 = sub_10033BB1C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10033BB1C()
{
  v1 = v0[23];
  sub_10000BA08((v0[5] + 56), *(v0[5] + 80));
  MobileDocumentProviderRegisteredApplication.registrations.getter();

  dispatch thunk of MobileDocumentProviderRegistrationValidating.validate(_:numberOfRegistrations:)();
  if (v1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.webPresentmentWriteRegistrationFailed(_:), v0[6]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[20];
    v5 = v0[15];
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[4];
    v10 = v0[2];
    v9 = v0[3];
    sub_10000BA08((v0[5] + 16), *(v0[5] + 40));
    v4(v5, v10, v7);
    v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v12 = swift_allocObject();
    v0[24] = v12;
    *(v12 + 16) = v9;
    *(v12 + 24) = v8;
    (*(v6 + 32))(v12 + v11, v5, v7);

    v13 = swift_task_alloc();
    v0[25] = v13;
    *v13 = v0;
    v13[1] = sub_10033BE80;

    return dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)();
  }
}

uint64_t sub_10033BE80()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_10033C234;
  }

  else
  {
    v2 = sub_10033BFB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10033BFB0()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10033C068()
{
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.webPresentmentWriteRegistrationFailed(_:), v0[6]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10033C234()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.webPresentmentWriteRegistrationFailed(_:), v0[6]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10033C418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_10033C538, 0, 0);
}

uint64_t sub_10033C538(uint64_t a1)
{
  v22 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[10];
  v5 = v1[11];
  v7 = v1[9];
  if (v4)
  {
    v9 = v1[3];
    v8 = v1[4];
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100141FE4(0xD00000000000001BLL, 0x800000010070ED80, &v21);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100141FE4(v9, v8, &v21);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderRegistrationStorage %s for %s.", v10, 0x16u);
    swift_arrayDestroy();
  }

  (*(v6 + 8))(v5, v7);
  v12 = v1[4];
  v11 = v1[5];
  v13 = v1[3];
  v14 = v11[5];
  v15 = v11[6];
  sub_10000BA08(v11 + 2, v14);
  v16 = swift_allocObject();
  v1[12] = v16;
  *(v16 + 16) = v13;
  *(v16 + 24) = v12;

  v17 = swift_task_alloc();
  v1[13] = v17;
  v18 = type metadata accessor for MobileDocumentProviderRegisteredApplication();
  *v17 = v1;
  v17[1] = sub_10033C798;
  v19 = v1[2];

  return dispatch thunk of AsyncCoreDataContaining.performRead<A>(_:)(v19, sub_100342F40, v16, v18, v14, v15);
}

uint64_t sub_10033C798()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10033C8EC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10033C8EC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  (*(v2 + 104))(v1, enum case for DIPError.Code.webPresentmentFetchRegistrationFailed(_:), v3);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

void sub_10033CA94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v106 = a3;
  v104 = a4;
  v105 = type metadata accessor for MobileDocumentRegistration();
  v101 = *(v105 - 8);
  v6 = __chkstk_darwin(v105);
  v100 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v99 = &v90 - v9;
  __chkstk_darwin(v8);
  v11 = &v90 - v10;
  v12 = type metadata accessor for Logger();
  v103 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v90 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v90 - v20;
  __chkstk_darwin(v19);
  v23 = &v90 - v22;
  v24 = *a1;
  v25 = v107;
  v107 = sub_100586A84(a2, v106);
  if (!v25)
  {
    v93 = v18;
    v91 = v11;
    v92 = v23;
    v94 = v15;
    v95 = a2;
    v97 = v21;
    v98 = v24;
    v96 = v12;
    v102 = 0;
    if (!v107)
    {
      type metadata accessor for StoredIdentityDocumentApplicationInstallation();
      v45 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v98 + 16)];
      v46 = v95;
      v47 = v106;
      v48 = String._bridgeToObjectiveC()();
      v107 = v45;
      [v45 setApplicationIdentifier:v48];

      v49 = v93;
      defaultLogger()();

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *&v108 = v53;
        *v52 = 136315138;
        *(v52 + 4) = sub_100141FE4(v46, v47, &v108);
        _os_log_impl(&_mh_execute_header, v50, v51, "Created new installation for application identifier %s.", v52, 0xCu);
        sub_10000BB78(v53);
      }

      v54 = *(v103 + 8);
      v55 = v96;
      v54(v49, v96);
      v56 = v100;
      v57 = v104;
      v58 = v102;
      v59 = sub_100586C6C(v104, v107);
      v60 = v105;
      v61 = v101;
      if (v58)
      {
        goto LABEL_16;
      }

      v102 = 0;

      defaultLogger()();
      (*(v61 + 16))(v56, v57, v60);
      v62 = v106;

      v63 = v60;
      v64 = v61;
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        LODWORD(v100) = v66;
        v69 = v63;
        v70 = v56;
        v104 = v68;
        *&v108 = v68;
        *v67 = 136315394;
        v71 = MobileDocumentRegistration.documentIdentifier.getter();
        v73 = v72;
        (*(v64 + 8))(v70, v69);
        v74 = sub_100141FE4(v71, v73, &v108);

        *(v67 + 4) = v74;
        *(v67 + 12) = 2080;
        *(v67 + 14) = sub_100141FE4(v95, v62, &v108);
        _os_log_impl(&_mh_execute_header, v65, v100, "Registered new document %s for application identifier %s.", v67, 0x16u);
        swift_arrayDestroy();

        v75 = v94;
        v76 = v96;
      }

      else
      {

        (*(v64 + 8))(v56, v63);
        v75 = v94;
        v76 = v55;
      }

      v54(v75, v76);
LABEL_22:
      sub_100586EA0();
      return;
    }

    v26 = [v107 mobileDocumentRegistrations];
    v27 = v106;
    if (v26)
    {
      v28 = v26;
      __chkstk_darwin(v26);
      v29 = v104;
      *(&v90 - 2) = v104;
      v30 = v102;
      sub_100161D84(sub_100343100, &v108);
      v102 = v30;

      v31 = v105;
      if (*(&v109 + 1))
      {
        type metadata accessor for StoredMobileDocumentRegistration();
        v32 = swift_dynamicCast();
        v33 = v97;
        if (v32)
        {
          v34 = *(v98 + 16);
          v100 = v110;
          [v34 deleteObject:?];
          v35 = v92;
          defaultLogger()();
          v36 = v101;
          v37 = v91;
          (*(v101 + 16))(v91, v29, v31);

          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            *&v108 = v94;
            *v40 = 136315394;
            v41 = MobileDocumentRegistration.documentIdentifier.getter();
            v43 = v42;
            (*(v36 + 8))(v37, v105);
            v44 = sub_100141FE4(v41, v43, &v108);
            v33 = v97;

            *(v40 + 4) = v44;
            *(v40 + 12) = 2080;
            *(v40 + 14) = sub_100141FE4(v95, v27, &v108);
            _os_log_impl(&_mh_execute_header, v38, v39, "Deleted existing registration with documentIdentifier %s for application identifier %s.", v40, 0x16u);
            swift_arrayDestroy();

            v31 = v105;
          }

          else
          {

            (*(v36 + 8))(v37, v31);
          }

          (*(v103 + 8))(v35, v96);
          v29 = v104;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v108 = 0u;
      v109 = 0u;
      v29 = v104;
      v31 = v105;
    }

    v33 = v97;
    sub_10000BE18(&v108, &unk_100845ED0, &qword_1006DA1D0);
LABEL_15:
    v77 = v102;
    v78 = sub_100586C6C(v29, v107);
    if (v77)
    {
LABEL_16:

      return;
    }

    v79 = v78;
    v102 = 0;
    [v107 addMobileDocumentRegistrationsObject:v78];
    defaultLogger()();
    v80 = v101;
    v81 = v99;
    (*(v101 + 16))(v99, v29, v31);

    v82 = v33;
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *&v108 = swift_slowAlloc();
      *v85 = 136315394;
      v86 = MobileDocumentRegistration.documentIdentifier.getter();
      v88 = v87;
      (*(v80 + 8))(v81, v105);
      v89 = sub_100141FE4(v86, v88, &v108);

      *(v85 + 4) = v89;
      *(v85 + 12) = 2080;
      *(v85 + 14) = sub_100141FE4(v95, v106, &v108);
      _os_log_impl(&_mh_execute_header, v83, v84, "Registered new document %s for application identifier %s.", v85, 0x16u);
      swift_arrayDestroy();

      (*(v103 + 8))(v97, v96);
    }

    else
    {

      (*(v80 + 8))(v81, v31);
      (*(v103 + 8))(v82, v96);
    }

    goto LABEL_22;
  }
}

uint64_t sub_10033D4F8(uint64_t a1)
{
  sub_10001F2EC(a1, &v10);
  type metadata accessor for StoredMobileDocumentRegistration();
  if ((swift_dynamicCast() & 1) == 0 || (v1 = v11, v2 = [v11 documentIdentifier], v1, !v2))
  {
    MobileDocumentRegistration.documentIdentifier.getter();
    goto LABEL_8;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v7 = MobileDocumentRegistration.documentIdentifier.getter();
  if (!v5)
  {
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  if (v3 == v7 && v5 == v6)
  {

    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

LABEL_9:

  return v8 & 1;
}

void sub_10033D620(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v62 = a3;
  v5 = type metadata accessor for DIPError.Code();
  v63 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v64 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v56 - v13;
  __chkstk_darwin(v12);
  v16 = &v56 - v15;
  v17 = v65;
  v18 = sub_100586A84(a1, a2);
  if (!v17)
  {
    v19 = v11;
    v56 = v16;
    v57 = v14;
    v58 = v5;
    v60 = v7;
    v61 = v8;
    v20 = v64;
    v65 = 0;
    if (v18)
    {
      v59 = v18;
      v21 = [v18 mobileDocumentRegistrations];
      v22 = v20;
      v23 = a2;
      v24 = a1;
      if (!v21 || (v25 = v21, v66 = 0, type metadata accessor for StoredMobileDocumentRegistration(), sub_100342EF8(&qword_1008417A8, &type metadata accessor for StoredMobileDocumentRegistration, &protocol conformance descriptor for NSObject), static Set._conditionallyBridgeFromObjectiveC(_:result:)(), v25, !v66))
      {
        v37 = v57;
        defaultLogger()();

        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.debug.getter();

        v40 = os_log_type_enabled(v38, v39);
        v41 = v61;
        v42 = v58;
        if (v40)
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v45 = v24;
          v46 = v44;
          v66 = v44;
          *v43 = 136315138;
          *(v43 + 4) = sub_100141FE4(v45, v23, &v66);
          _os_log_impl(&_mh_execute_header, v38, v39, "Failed to cast mobile document registrations for %s.", v43, 0xCu);
          sub_10000BB78(v46);
        }

        (*(v22 + 8))(v37, v41);
        (*(v63 + 104))(v60, enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:), v42);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        goto LABEL_10;
      }

      v26 = v65;
      sub_10033AE8C(v66);
      v28 = v27;
      v65 = v26;

      v29 = v56;
      defaultLogger()();

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();

      v32 = os_log_type_enabled(v30, v31);
      v33 = v61;
      if (v32)
      {
        v34 = v28;
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v66 = v36;
        *v35 = 134218242;
        *(v35 + 4) = *(v34 + 16);

        *(v35 + 12) = 2080;
        *(v35 + 14) = sub_100141FE4(v24, v23, &v66);
        _os_log_impl(&_mh_execute_header, v30, v31, "Retrieved %ld registrations for applicationIdentifier %s.", v35, 0x16u);
        sub_10000BB78(v36);

        (*(v22 + 8))(v29, v61);
      }

      else
      {

        (*(v22 + 8))(v29, v33);
      }

      v52 = v60;
      v53 = [v59 sceneIdentifiers];
      v54 = v63;
      if (v53)
      {
        v66 = 0;
        v55 = v53;
        static Array._conditionallyBridgeFromObjectiveC(_:result:)();

        if (!v66)
        {

          (*(v54 + 104))(v52, enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:), v58);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
LABEL_10:
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();

          return;
        }
      }

      MobileDocumentProviderRegisteredApplication.init(registrations:sceneIdentifiers:)();
    }

    else
    {
      v47 = v19;
      defaultLogger()();

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v66 = v51;
        *v50 = 136315138;
        *(v50 + 4) = sub_100141FE4(a1, a2, &v66);
        _os_log_impl(&_mh_execute_header, v48, v49, "Could not find installation for application identifier %s, returning an empty application.", v50, 0xCu);
        sub_10000BB78(v51);
      }

      (*(v20 + 8))(v47, v61);
      MobileDocumentProviderRegisteredApplication.init(registrations:sceneIdentifiers:)();
    }
  }
}

void sub_10033DE18(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  __chkstk_darwin(v8 - 8);
  v10 = v21 - v9;
  v11 = [a1 documentIdentifier];
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v11;
  v21[3] = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = [a1 documentType];
  if (!v13)
  {
LABEL_8:

LABEL_9:
    (*(v5 + 104))(v7, enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_10;
  }

  v21[2] = a2;
  v14 = v13;
  v21[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = [a1 authorityKeyIdentifiers];
  if (!v15 || (v22 = 0, v16 = v15, static Array._conditionallyBridgeFromObjectiveC(_:result:)(), v16, !v22))
  {

    goto LABEL_8;
  }

  v17 = [a1 invalidationDate];
  if (v17)
  {
    v18 = v17;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = type metadata accessor for Date();
    (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
  }

  else
  {
    v20 = type metadata accessor for Date();
    (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  }

  MobileDocumentRegistration.init(documentType:authorityKeyIdentifiers:documentIdentifier:invalidationDate:)();
LABEL_10:
}

uint64_t sub_10033E1A4()
{
  v1[3] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_10033E2C0, 0, 0);
}

uint64_t sub_10033E2C0(uint64_t a1)
{
  v17 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[8];
  v5 = v1[9];
  v7 = v1[7];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD00000000000001BLL, 0x800000010070EE40, &v16);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderRegistrationStorage %s.", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v6 + 8))(v5, v7);
  v10 = v1[3];
  v11 = v10[5];
  v12 = v10[6];
  sub_10000BA08(v10 + 2, v11);
  v13 = swift_task_alloc();
  v1[10] = v13;
  v14 = sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  *v13 = v1;
  v13[1] = sub_10033E4B0;

  return dispatch thunk of AsyncCoreDataContaining.performRead<A>(_:)(v1 + 2, sub_10033E764, 0, v14, v11, v12);
}

uint64_t sub_10033E4B0()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_10033E5C4;
  }

  else
  {
    v2 = sub_100188EC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10033E5C4()
{
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.webPresentmentFetchRegistrationFailed(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

void sub_10033E764(char **a1@<X8>)
{
  type metadata accessor for StoredIdentityDocumentApplicationInstallation();
  v3 = static StoredIdentityDocumentApplicationInstallation.fetchRequest()();
  v4 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v1)
  {
    if (v4 >> 62)
    {
LABEL_22:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (v5)
      {
LABEL_4:
        v6 = 0;
        v19 = _swiftEmptyArrayStorage;
        do
        {
          v7 = v6;
          while (1)
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_21;
              }

              v8 = *(v4 + 8 * v7 + 32);
            }

            v9 = v8;
            v6 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

            v10 = [v8 applicationIdentifier];
            if (v10)
            {
              break;
            }

            ++v7;
            if (v6 == v5)
            {
              goto LABEL_24;
            }
          }

          v18 = a1;
          v11 = v10;
          v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v13;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_1003C5110(0, *(v19 + 2) + 1, 1, v19);
          }

          v15 = *(v19 + 2);
          v14 = *(v19 + 3);
          if (v15 >= v14 >> 1)
          {
            v19 = sub_1003C5110((v14 > 1), v15 + 1, 1, v19);
          }

          *(v19 + 2) = v15 + 1;
          v16 = &v19[16 * v15];
          a1 = v18;
          *(v16 + 4) = v12;
          *(v16 + 5) = v17;
        }

        while (v6 != v5);
        goto LABEL_24;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v19 = _swiftEmptyArrayStorage;
LABEL_24:

    *a1 = v19;
  }
}

void sub_10033E964(unint64_t *a1@<X8>)
{
  v130 = a1;
  v1 = type metadata accessor for MobileDocumentProviderRegisteredApplication();
  __chkstk_darwin(v1 - 8);
  v140 = &v125 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for DIPError.Code();
  v171 = *(v155 - 8);
  __chkstk_darwin(v155);
  v159 = &v125 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  __chkstk_darwin(v4 - 8);
  v138 = &v125 - v5;
  v6 = sub_100007224(&qword_1008417A0, &qword_1006DE270);
  __chkstk_darwin(v6 - 8);
  v169 = &v125 - v7;
  v162 = type metadata accessor for MobileDocumentRegistration();
  v134 = *(v162 - 8);
  v8 = __chkstk_darwin(v162);
  v135 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v133 = &v125 - v10;
  v166 = type metadata accessor for Logger();
  v170 = *(v166 - 8);
  v11 = __chkstk_darwin(v166);
  v13 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v125 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v125 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v125 - v21;
  __chkstk_darwin(v20);
  v24 = &v125 - v23;
  type metadata accessor for StoredIdentityDocumentApplicationInstallation();
  v25 = static StoredIdentityDocumentApplicationInstallation.fetchRequest()();
  v26 = v172;
  v27 = NSManagedObjectContext.fetch<A>(_:)();

  if (v26)
  {
    return;
  }

  v172 = v24;
  v29 = v170;
  v28 = v171;
  v150 = v22;
  v136 = v19;
  v139 = v13;
  v126 = v16;
  if (v27 >> 62)
  {
    goto LABEL_78;
  }

  v30 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v31 = v159;
    v32 = v150;
    v33 = v29;
    v34 = v28;
    v35 = v139;
    v29 = v166;
    if (!v30)
    {

      v109 = v172;
      defaultLogger()();
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = v29;
        v114 = swift_slowAlloc();
        v179 = v114;
        *v112 = 136315138;
        *(v112 + 4) = sub_100141FE4(0xD000000000000011, 0x800000010070EAD0, &v179);
        _os_log_impl(&_mh_execute_header, v110, v111, "MobileDocumentProviderRegistrationStorage %s No installations found. Returning an empty dictonary.", v112, 0xCu);
        sub_10000BB78(v114);

        (*(v33 + 8))(v109, v113);
      }

      else
      {

        (*(v33 + 8))(v109, v29);
      }

      v124 = v130;
      *v124 = sub_10003F808(_swiftEmptyArrayStorage);
      return;
    }

    v154 = v26;
    v28 = v30;
    v146 = sub_10003F808(_swiftEmptyArrayStorage);
    v36 = 0;
    v142 = v27 & 0xC000000000000001;
    v132 = v27 & 0xFFFFFFFFFFFFFF8;
    v137 = v27;
    v131 = v27 + 32;
    v161 = (v134 + 56);
    v156 = enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:);
    v157 = v34 + 13;
    v158 = "ring a mobile document";
    v165 = (v33 + 8);
    v151 = 0x800000010070EAD0;
    v160 = (v134 + 48);
    v128 = (v134 + 32);
    *&v37 = 136315138;
    v127 = v37;
    *&v37 = 136315394;
    v147 = v37;
    *&v37 = 136315650;
    v129 = v37;
    v38 = v155;
    v141 = v28;
    while (1)
    {
LABEL_7:
      if (v142)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v36 >= *(v132 + 16))
        {
          goto LABEL_77;
        }

        v42 = *(v131 + 8 * v36);
      }

      v28 = v42;
      v43 = __OFADD__(v36, 1);
      v44 = v36 + 1;
      if (v43)
      {
        goto LABEL_76;
      }

      v45 = [v42 applicationIdentifier];
      if (v45)
      {
        break;
      }

      v27 = v44;
      v53 = v28;
      defaultLogger()();
      v54 = v35;
      v55 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v55, v28))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v179 = v57;
        *v56 = v127;
        *(v56 + 4) = sub_100141FE4(0xD000000000000011, v151, &v179);
        _os_log_impl(&_mh_execute_header, v55, v28, "MobileDocumentProviderRegistrationStorage %s Installation without applicationIdentifier found. Unexpected daemon state. Skipping.", v56, 0xCu);
        sub_10000BB78(v57);
        v38 = v155;
      }

      else
      {
      }

      (*v165)(v54, v29);
      v35 = v54;
      v32 = v150;
      v36 = v27;
      if (v27 == v141)
      {
LABEL_69:

        *v130 = v146;
        return;
      }
    }

    v46 = v45;
    v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v47;

    v149 = v28;
    v48 = [v28 mobileDocumentRegistrations];
    if (v48)
    {
      v28 = v48;
      v179 = 0;
      v49 = type metadata accessor for StoredMobileDocumentRegistration();
      sub_100342EF8(&qword_1008417A8, &type metadata accessor for StoredMobileDocumentRegistration, &protocol conformance descriptor for NSObject);
      v153 = v49;
      static Set._conditionallyBridgeFromObjectiveC(_:result:)();

      if (v179)
      {
        v145 = v44;
        v144 = v179;
        if ((v179 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          __CocoaSet.makeIterator()();
          Set.Iterator.init(_cocoa:)();
          v50 = v174;
          v26 = v175;
          v51 = v176;
          v29 = v177;
          v52 = v178;
        }

        else
        {
          v58 = -1 << *(v179 + 32);
          v26 = (v179 + 56);
          v51 = ~v58;
          v59 = -v58;
          if (v59 < 64)
          {
            v60 = ~(-1 << v59);
          }

          else
          {
            v60 = -1;
          }

          v52 = v60 & *(v179 + 56);

          v29 = 0;
        }

        v143 = v51;
        v61 = (v51 + 64) >> 6;
        v152 = _swiftEmptyArrayStorage;
        v163 = v61;
        v164 = v27;
        v167 = v50;
        v168 = v26;
LABEL_24:
        v62 = v29;
        if ((v50 & 0x8000000000000000) == 0)
        {
LABEL_25:
          v63 = v62;
          v64 = v52;
          v29 = v62;
          if (v52)
          {
LABEL_29:
            v65 = (v64 - 1) & v64;
            v66 = *(*(v50 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v64)))));
            if (v66)
            {
              goto LABEL_33;
            }

LABEL_58:
            v50 = v167;
            v26 = v168;
LABEL_59:
            sub_10001FA6C(v50);

            v98 = v136;
            defaultLogger()();
            v99 = v152;

            v100 = Logger.logObject.getter();
            v101 = static os_log_type_t.debug.getter();

            v102 = os_log_type_enabled(v100, v101);
            v103 = v166;
            if (v102)
            {
              v104 = swift_slowAlloc();
              v179 = swift_slowAlloc();
              *v104 = v129;
              *(v104 + 4) = sub_100141FE4(0xD000000000000011, v151, &v179);
              *(v104 + 12) = 2048;
              *(v104 + 14) = v99[2];

              *(v104 + 22) = 2080;
              *(v104 + 24) = sub_100141FE4(v148, v27, &v179);
              _os_log_impl(&_mh_execute_header, v100, v101, "MobileDocumentProviderRegistrationStorage %s Retrieved %ld registrations for applicationIdentifier %s.", v104, 0x20u);
              swift_arrayDestroy();
              v38 = v155;
            }

            else
            {
            }

            (*v165)(v98, v103);
            v105 = v140;
            v29 = v103;
            v106 = [v149 sceneIdentifiers];
            v107 = v141;
            v36 = v145;
            v31 = v159;
            if (v106)
            {
              v179 = 0;
              v108 = v106;
              static Array._conditionallyBridgeFromObjectiveC(_:result:)();

              if (!v179)
              {

                (v157->isa)(v31, v156, v38);
                sub_1000402AC(_swiftEmptyArrayStorage);
                type metadata accessor for DIPError();
                sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
                swift_allocError();
                goto LABEL_74;
              }
            }

            MobileDocumentProviderRegisteredApplication.init(registrations:sceneIdentifiers:)();
            v39 = v146;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v179 = v39;
            v41 = v105;
            v28 = &v179;
            sub_10016E05C(v41, v148, v27, isUniquelyReferenced_nonNull_native);

            v146 = v179;
            v35 = v139;
            if (v36 == v107)
            {
              goto LABEL_69;
            }

            goto LABEL_7;
          }

          while (1)
          {
            v29 = v63 + 1;
            if (__OFADD__(v63, 1))
            {
              break;
            }

            if (v29 >= v61)
            {
              goto LABEL_59;
            }

            v64 = *&v26[8 * v29];
            ++v63;
            if (v64)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          v30 = _CocoaArrayWrapper.endIndex.getter();
          continue;
        }

        while (1)
        {
          v67 = __CocoaSet.Iterator.next()();
          if (!v67)
          {
            goto LABEL_58;
          }

          v173 = v67;
          swift_dynamicCast();
          v66 = v179;
          v29 = v62;
          v65 = v52;
          if (!v179)
          {
            goto LABEL_58;
          }

LABEL_33:
          v172 = v65;
          v170 = v66;
          v68 = v66;
          v69 = [v68 documentIdentifier];
          if (v69)
          {
            v70 = v69;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v28 = v71;

            v72 = [v68 documentType];
            if (v72)
            {
              v73 = v72;
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              v74 = [v68 authorityKeyIdentifiers];
              if (v74)
              {
                v179 = 0;
                v75 = v74;
                static Array._conditionallyBridgeFromObjectiveC(_:result:)();

                if (v179)
                {
                  v76 = [v68 invalidationDate];
                  if (v76)
                  {
                    v77 = v138;
                    v78 = v76;
                    static Date._unconditionallyBridgeFromObjectiveC(_:)();

                    v79 = 0;
                  }

                  else
                  {
                    v79 = 1;
                    v77 = v138;
                  }

                  v91 = type metadata accessor for Date();
                  (*(*(v91 - 8) + 56))(v77, v79, 1, v91);
                  MobileDocumentRegistration.init(documentType:authorityKeyIdentifiers:documentIdentifier:invalidationDate:)();

                  v87 = 0;
                  v38 = v155;
                  v31 = v159;
                  v32 = v150;
                  goto LABEL_44;
                }
              }

              v32 = v150;
            }
          }

          (v157->isa)(v31, v156, v38);
          type metadata accessor for DIPError();
          sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          v154 = 0;

          defaultLogger()();
          v171 = v68;
          v80 = v68;
          v28 = Logger.logObject.getter();
          v81 = v32;
          v82 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v28, v82))
          {
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v179 = v85;
            *v83 = v147;
            *(v83 + 4) = sub_100141FE4(0xD000000000000011, v151, &v179);
            *(v83 + 12) = 2112;
            *(v83 + 14) = v80;
            *v84 = v170;
            v86 = v80;
            _os_log_impl(&_mh_execute_header, v28, v82, "MobileDocumentProviderRegistrationStorage %s Could not map stored registration %@. Skipping", v83, 0x16u);
            sub_10000BE18(v84, &unk_100833B50, &unk_1006D8FB0);
            v38 = v155;

            sub_10000BB78(v85);
            v31 = v159;
          }

          (*v165)(v81, v166);
          v87 = 1;
          v32 = v81;
          v68 = v171;
LABEL_44:
          v88 = v162;
          v89 = v169;
          (*v161)(v169, v87, 1, v162);

          v90 = (*v160)(v89, 1, v88);
          v52 = v172;
          if (v90 != 1)
          {
            v28 = *v128;
            v92 = v133;
            (*v128)(v133, v89, v88);
            (v28)(v135, v92, v88);
            v93 = v152;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v93 = sub_1003C610C(0, v93[2] + 1, 1, v93);
            }

            v94 = v134;
            v152 = v93;
            v96 = v93[2];
            v95 = v93[3];
            if (v96 >= v95 >> 1)
            {
              v152 = sub_1003C610C((v95 > 1), v96 + 1, 1, v152);
            }

            v97 = v152;
            v152[2] = v96 + 1;
            (v28)(v97 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v96, v135, v88);
            v61 = v163;
            v27 = v164;
            v50 = v167;
            v26 = v168;
            v52 = v172;
            goto LABEL_24;
          }

          sub_10000BE18(v89, &qword_1008417A0, &qword_1006DE270);
          v62 = v29;
          v61 = v163;
          v27 = v164;
          v50 = v167;
          v26 = v168;
          if ((v167 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }
        }
      }
    }

    break;
  }

  v115 = v126;
  defaultLogger()();
  v116 = v149;
  v117 = Logger.logObject.getter();
  v118 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    v120 = v29;
    v121 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v179 = v122;
    *v119 = v147;
    *(v119 + 4) = sub_100141FE4(0xD000000000000011, v151, &v179);
    *(v119 + 12) = 2112;
    *(v119 + 14) = v116;
    *v121 = v116;
    v123 = v116;
    _os_log_impl(&_mh_execute_header, v117, v118, "MobileDocumentProviderRegistrationStorage %s No registrations found for installation %@.", v119, 0x16u);
    sub_10000BE18(v121, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v122);

    (*v165)(v115, v120);
  }

  else
  {

    (*v165)(v115, v29);
  }

  (v157->isa)(v31, v156, v155);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
LABEL_74:
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

uint64_t sub_10033FF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_100340064, 0, 0);
}

uint64_t sub_100340064(uint64_t a1)
{
  v21 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[11];
  v5 = v1[12];
  v7 = v1[10];
  if (v4)
  {
    v18 = v1[4];
    v19 = v1[5];
    v8 = v1[2];
    v9 = v1[3];
    v10 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v10 = 136315650;
    *(v10 + 4) = sub_100141FE4(0xD000000000000013, 0x800000010070EDD0, &v20);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100141FE4(v8, v9, &v20);
    *(v10 + 22) = 2080;
    *(v10 + 24) = sub_100141FE4(v18, v19, &v20);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderRegistrationStorage %s documentIdentifier %s for applicationIdentifier %s.", v10, 0x20u);
    swift_arrayDestroy();

    (*(v6 + 8))(v5, v7);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v11 = v1[5];
  v12 = v1[3];
  v13 = v1[4];
  v14 = v1[2];
  sub_10000BA08((v1[6] + 16), *(v1[6] + 40));
  v15 = swift_allocObject();
  v1[13] = v15;
  v15[2] = v13;
  v15[3] = v11;
  v15[4] = v14;
  v15[5] = v12;

  v16 = swift_task_alloc();
  v1[14] = v16;
  *v16 = v1;
  v16[1] = sub_100340310;

  return dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)();
}

uint64_t sub_100340310()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10034049C;
  }

  else
  {

    v2 = sub_10034042C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10034042C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10034049C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  (*(v2 + 104))(v1, enum case for DIPError.Code.webPresentmentDeleteRegistrationFailed(_:), v3);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

void sub_100340644(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v102 = a5;
  v100 = a4;
  v103 = a3;
  v7 = type metadata accessor for DIPError.Code();
  v95 = *(v7 - 8);
  v96 = v7;
  __chkstk_darwin(v7);
  v97 = &v84[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Logger();
  v98 = *(v9 - 8);
  v99 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v84[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v10);
  v15 = &v84[-v14];
  v16 = __chkstk_darwin(v13);
  v18 = &v84[-v17];
  __chkstk_darwin(v16);
  v20 = &v84[-v19];
  v21 = type metadata accessor for NSFastEnumerationIterator();
  v94 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v84[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = *a1;
  v25 = v101;
  v26 = sub_100586A84(a2, v103);
  if (v25)
  {
    return;
  }

  v93 = v23;
  v27 = v99;
  v91 = v15;
  v89 = v24;
  v87 = v20;
  v88 = v18;
  v92 = a2;
  if (!v26)
  {
    v35 = v12;
    defaultLogger()();
    v36 = v103;

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v106 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_100141FE4(v92, v36, &v106);
      _os_log_impl(&_mh_execute_header, v37, v38, "MobileDocumentProviderRegistrationStorage could not find installation for application identifier %s.", v39, 0xCu);
      sub_10000BB78(v40);
    }

    (*(v98 + 8))(v35, v27);
    (*(v95 + 104))(v97, enum case for DIPError.Code.webPresentmentRegistrationInvalidRequest(_:), v96);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v86 = 0;
  v28 = v26;
  v29 = [v26 mobileDocumentRegistrations];
  if (v29)
  {
    v30 = v29;
    v31 = v28;
    v32 = [v29 count];

    v33 = v31;
    v34 = v32 > 1;
  }

  else
  {
    v34 = 0;
    v33 = v28;
  }

  v41 = v21;
  v90 = v33;
  v42 = [v33 mobileDocumentRegistrations];
  v43 = v93;
  if (!v42)
  {
LABEL_51:
    v78 = v91;
    defaultLogger()();
    v79 = v102;

    v80 = v103;

    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *&v106 = swift_slowAlloc();
      *v83 = 136315394;
      *(v83 + 4) = sub_100141FE4(v100, v79, &v106);
      *(v83 + 12) = 2080;
      *(v83 + 14) = sub_100141FE4(v92, v80, &v106);
      _os_log_impl(&_mh_execute_header, v81, v82, "MobileDocumentProviderRegistrationStorage could not find a registered documentIdentifier %s for application identifier %s.", v83, 0x16u);
      swift_arrayDestroy();
    }

    (*(v98 + 8))(v78, v27);
    (*(v95 + 104))(v97, enum case for DIPError.Code.webPresentmentRegistrationNotFound(_:), v96);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  v44 = v42;
  v108 = _swiftEmptyArrayStorage;
  NSSet.makeIterator()();
  sub_100342EF8(&qword_10083C148, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
  dispatch thunk of IteratorProtocol.next()();
  if (v107)
  {
    v101 = _swiftEmptyArrayStorage;
    v45 = v94;
    do
    {
      sub_10001F348(&v106, &v104);
      type metadata accessor for StoredMobileDocumentRegistration();
      if ((swift_dynamicCast() & 1) != 0 && v105)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v45 = v94;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v101 = v108;
      }

      dispatch thunk of IteratorProtocol.next()();
    }

    while (v107);
  }

  else
  {
    v101 = _swiftEmptyArrayStorage;
    v45 = v94;
  }

  (*(v45 + 8))(v43, v41);
  v46 = v101;
  v85 = v34;
  if (v101 >> 62)
  {
LABEL_49:
    v47 = _CocoaArrayWrapper.endIndex.getter();
    if (v47)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

  v47 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v47)
  {
LABEL_50:

    v27 = v99;
    goto LABEL_51;
  }

LABEL_15:
  v48 = 0;
  v49 = v46 & 0xC000000000000001;
  v50 = v46 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v49)
    {
      v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v48 >= *(v50 + 16))
      {
        goto LABEL_48;
      }

      v51 = *(v46 + 8 * v48 + 32);
    }

    v52 = v51;
    v53 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v54 = [v51 documentIdentifier];
    if (!v54)
    {
      goto LABEL_16;
    }

    v55 = v54;
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    if (v56 == v100 && v58 == v102)
    {
      break;
    }

    v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v46 = v101;
    if (v60)
    {
      goto LABEL_36;
    }

LABEL_16:

    ++v48;
    if (v53 == v47)
    {
      goto LABEL_50;
    }
  }

LABEL_36:

  [v90 removeMobileDocumentRegistrationsObject:v52];
  [*(v89 + 16) deleteObject:v52];
  v62 = v98;
  v61 = v99;
  v63 = v88;
  if (!v85)
  {
    v64 = v87;
    defaultLogger()();
    v65 = v102;

    v66 = v103;

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *&v106 = swift_slowAlloc();
      *v69 = 136315394;
      *(v69 + 4) = sub_100141FE4(v100, v65, &v106);
      *(v69 + 12) = 2080;
      *(v69 + 14) = sub_100141FE4(v92, v66, &v106);
      _os_log_impl(&_mh_execute_header, v67, v68, "MobileDocumentProviderRegistrationStorage After deleting %s for application identifier %s, no registrations remain. Deleting installation record.", v69, 0x16u);
      swift_arrayDestroy();

      v63 = v88;

      v70 = *(v62 + 8);
      v71 = v87;
    }

    else
    {

      v70 = *(v62 + 8);
      v71 = v64;
    }

    v61 = v99;
    v70(v71, v99);
    [*(v89 + 16) deleteObject:v90];
  }

  v72 = v86;
  sub_100586EA0();
  if (v72)
  {
  }

  else
  {
    defaultLogger()();
    v73 = v102;

    v74 = v103;

    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *&v106 = swift_slowAlloc();
      *v77 = 136315394;
      *(v77 + 4) = sub_100141FE4(v100, v73, &v106);
      *(v77 + 12) = 2080;
      *(v77 + 14) = sub_100141FE4(v92, v74, &v106);
      _os_log_impl(&_mh_execute_header, v75, v76, "MobileDocumentProviderRegistrationStorage successfully removed documentIdentifier %s for applicationIdentifier %s.", v77, 0x16u);
      swift_arrayDestroy();

      (*(v62 + 8))(v88, v99);
    }

    else
    {

      (*(v62 + 8))(v63, v61);
    }
  }
}

uint64_t sub_100341328(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100341454, 0, 0);
}

uint64_t sub_100341454(uint64_t a1)
{
  v18 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[11];
  v6 = v1[8];
  v7 = v1[9];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100141FE4(0xD00000000000001FLL, 0x800000010070ECE0, &v17);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100141FE4(v9, v8, &v17);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderRegistrationStorage %s for applicationIdentifier %s.", v10, 0x16u);
    swift_arrayDestroy();
  }

  v11 = *(v7 + 8);
  v11(v5, v6);
  v1[12] = v11;
  v12 = v1[3];
  v13 = v1[2];
  sub_10000BA08((v1[4] + 16), *(v1[4] + 40));
  v14 = swift_allocObject();
  v1[13] = v14;
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;

  v15 = swift_task_alloc();
  v1[14] = v15;
  *v15 = v1;
  v15[1] = sub_1003416B4;

  return dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)();
}

uint64_t sub_1003416B4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100341848;
  }

  else
  {

    v2 = sub_1003417D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003417D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100341848()
{
  v18 = v0;

  defaultLogger()();

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v15 = v0[10];
    v16 = v0[12];
    v14 = v0[8];
    v3 = v0[2];
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_100141FE4(v3, v4, &v17);
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "MobileDocumentProviderRegistrationStorage failed to remove all data for applicationIdentifier %s: %@", v5, 0x16u);
    sub_10000BE18(v6, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v7);

    v16(v15, v14);
  }

  else
  {
    v9 = v0[12];
    v10 = v0[10];
    v11 = v0[8];

    v9(v10, v11);
  }

  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.webPresentmentDeleteInstallationDataFailed(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

void sub_100341B98(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v61 = type metadata accessor for DIPError.Code();
  v57 = *(v61 - 1);
  __chkstk_darwin(v61);
  v58 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v60 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v52 - v11;
  v13 = type metadata accessor for NSFastEnumerationIterator();
  v59 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = v62;
  v18 = sub_100586A84(a2, a3);
  if (v17)
  {
    return;
  }

  v55 = a3;
  v56 = v13;
  v19 = v10;
  v20 = v61;
  v53 = v12;
  v54 = a2;
  v62 = v7;
  if (v18)
  {
    v58 = 0;
    v61 = v18;
    v21 = [v18 mobileDocumentRegistrations];
    v22 = _swiftEmptyArrayStorage;
    if (v21)
    {
      v23 = v21;
      v67 = _swiftEmptyArrayStorage;
      v24 = v15;
      NSSet.makeIterator()();
      sub_100342EF8(&qword_10083C148, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
      dispatch thunk of IteratorProtocol.next()();
      v25 = v16;
      if (v66)
      {
        v26 = v59;
        v27 = v56;
        v57 = v23;
        do
        {
          while (1)
          {
            sub_10001F348(&v65, &v63);
            type metadata accessor for StoredMobileDocumentRegistration();
            if ((swift_dynamicCast() & 1) == 0 || !v64)
            {
              break;
            }

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v22 = v67;
            dispatch thunk of IteratorProtocol.next()();
            v23 = v57;
            if (!v66)
            {
              goto LABEL_19;
            }
          }

          dispatch thunk of IteratorProtocol.next()();
        }

        while (v66);
        v23 = v57;
      }

      else
      {
        v26 = v59;
        v27 = v56;
      }

LABEL_19:

      (*(v26 + 8))(v24, v27);
    }

    else
    {
      v25 = v16;
    }

    v37 = sub_100343978(v22);
    v38 = v37;
    v39 = v62;
    if (v37 >> 62)
    {
      v40 = _CocoaArrayWrapper.endIndex.getter();
      if (v40)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v40 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v40)
      {
LABEL_22:
        if (v40 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v40; ++i)
        {
          if ((v38 & 0xC000000000000001) != 0)
          {
            v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v42 = *(v38 + 8 * i + 32);
          }

          v43 = v42;
          [*(v25 + 16) deleteObject:v42];
        }
      }
    }

    v44 = v61;
    [*(v25 + 16) deleteObject:v61];
    v45 = v58;
    sub_100586EA0();
    if (v45)
    {
    }

    else
    {
      v46 = v53;
      defaultLogger()();
      v47 = v55;

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *&v65 = v51;
        *v50 = 136315138;
        *(v50 + 4) = sub_100141FE4(v54, v47, &v65);
        _os_log_impl(&_mh_execute_header, v48, v49, "MobileDocumentProviderRegistrationStorage successfully removed all data for applicationIdentifier %s.", v50, 0xCu);
        sub_10000BB78(v51);
      }

      else
      {
      }

      (*(v60 + 8))(v46, v39);
    }

    return;
  }

  v28 = v19;
  defaultLogger()();
  v29 = v55;

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  v32 = os_log_type_enabled(v30, v31);
  v33 = v60;
  v34 = v54;
  if (v32)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v65 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_100141FE4(v34, v29, &v65);
    _os_log_impl(&_mh_execute_header, v30, v31, "MobileDocumentProviderRegistrationStorage could not find installation for application identifier %s.", v35, 0xCu);
    sub_10000BB78(v36);
  }

  (*(v33 + 8))(v28, v62);
  (*(v57 + 13))(v58, enum case for DIPError.Code.webPresentmentRegistrationInvalidRequest(_:), v20);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

uint64_t sub_100342338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100342458, 0, 0);
}

uint64_t sub_100342458(uint64_t a1)
{
  v19 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[10];
  v5 = v1[11];
  v7 = v1[9];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_100141FE4(0xD00000000000001ELL, 0x800000010070EC90, &v18);
    *(v8 + 12) = 2080;
    type metadata accessor for IdentityDocumentRequestSceneIdentifier();
    v9 = Array.description.getter();
    v11 = sub_100141FE4(v9, v10, &v18);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderRegistrationStorage %s %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  (*(v6 + 8))(v5, v7);
  v12 = v1[4];
  v13 = v1[2];
  v14 = v1[3];
  sub_10000BA08((v1[5] + 16), *(v1[5] + 40));
  v15 = swift_allocObject();
  v1[12] = v15;
  v15[2] = v14;
  v15[3] = v12;
  v15[4] = v13;

  v16 = swift_task_alloc();
  v1[13] = v16;
  *v16 = v1;
  v16[1] = sub_1003426D8;

  return dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)();
}

uint64_t sub_1003426D8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100342864;
  }

  else
  {

    v2 = sub_1003427F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003427F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100342864()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  (*(v2 + 104))(v1, enum case for DIPError.Code.webPresentmentUpdateSceneIdentifiersFailed(_:), v3);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

void sub_100342A0C(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v44 = a4;
  v45 = type metadata accessor for Logger();
  v8 = *(v45 - 1);
  __chkstk_darwin(v45);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IdentityDocumentRequestSceneIdentifier();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = sub_100586A84(a2, a3);
  if (!v4)
  {
    v41 = a2;
    v42 = v15;
    v46 = v14;
    v47 = v11;
    v43 = v8;
    if (v16)
    {
      v40 = v16;
      v41 = 0;
      v17 = v44;
      v18 = *(v44 + 16);
      if (v18)
      {
        v48 = _swiftEmptyArrayStorage;
        sub_100172D4C(0, v18, 0);
        v19 = v48;
        v21 = v12 + 16;
        v20 = *(v12 + 16);
        v22 = v17 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
        v44 = *(v12 + 72);
        v45 = v20;
        v43 = (v12 + 8);
        v24 = v46;
        v23 = v47;
        do
        {
          v25 = v21;
          v45(v24, v22, v23);
          v26 = IdentityDocumentRequestSceneIdentifier.rawValue.getter();
          v23 = v47;
          v27 = v26;
          v29 = v28;
          (*v43)(v24, v47);
          v48 = v19;
          v31 = v19[2];
          v30 = v19[3];
          if (v31 >= v30 >> 1)
          {
            sub_100172D4C((v30 > 1), v31 + 1, 1);
            v23 = v47;
            v19 = v48;
          }

          v19[2] = v31 + 1;
          v32 = &v19[2 * v31];
          v32[4] = v27;
          v32[5] = v29;
          v22 += v44;
          --v18;
          v21 = v25;
          v24 = v46;
        }

        while (v18);
      }

      isa = Array._bridgeToObjectiveC()().super.isa;

      v34 = v40;
      [v40 setSceneIdentifiers:isa];

      sub_100586EA0();
    }

    else
    {
      v35 = v10;
      defaultLogger()();

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v48 = v39;
        *v38 = 136315138;
        *(v38 + 4) = sub_100141FE4(v41, a3, &v48);
        _os_log_impl(&_mh_execute_header, v36, v37, "MobileDocumentProviderRegistrationStorage skipping update scene identifiers because no existing application exists for %s", v38, 0xCu);
        sub_10000BB78(v39);
      }

      v43[1](v35, v45);
    }
  }
}