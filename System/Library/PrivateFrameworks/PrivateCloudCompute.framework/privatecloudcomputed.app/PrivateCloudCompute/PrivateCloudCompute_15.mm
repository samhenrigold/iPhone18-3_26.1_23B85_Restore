uint64_t sub_100179634()
{
  v0[22] = v0[80];
  v0[81] = sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_1001796CC, 0, 0);
}

uint64_t sub_1001796CC()
{
  v1 = v0[80];
  v2 = v0[27];
  sub_100011F00(v0[69], &qword_100229620, &qword_1001D69C8);
  os_unfair_lock_lock((v2 + 16));
  if ((*(v2 + 33) & 1) == 0)
  {
    v3 = *(v2 + 24);
    v24 = *(v2 + 32);
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
    v25 = v1;
    if (v3 >> 62)
    {
      goto LABEL_20;
    }

    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    swift_errorRetain();
    if (v5)
    {
      v6 = 0;
      v29 = v3 & 0xC000000000000001;
      v26 = v4;
      v27 = v3;
      v28 = v5;
      do
      {
        if (v29)
        {
          v7 = sub_1001D2040();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v6 >= *(v4 + 16))
          {
            __break(1u);
LABEL_20:
            v5 = sub_1001D2190();
            goto LABEL_4;
          }

          v7 = *(v3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_14;
          }
        }

        v9 = v0[61];
        v10 = v0[62];
        v11 = (v7 + *(*v7 + 88));
        swift_errorRetain();
        os_unfair_lock_lock(v11);
        v12 = *(sub_100011AC0(&qword_10022F1D8, &unk_1001E0860) + 28);
        if (!(*(v10 + 48))(v11 + v12, 1, v9))
        {
          v13 = v0[80];
          v15 = v0[62];
          v14 = v0[63];
          v16 = v0[61];
          (*(v15 + 16))(v14, v11 + v12, v16);
          v17 = swift_allocError();
          *v18 = v13;
          v0[23] = v17;
          v3 = v27;
          swift_errorRetain();
          sub_1001D1A90();
          v19 = v16;
          v4 = v26;
          (*(v15 + 8))(v14, v19);
        }

        os_unfair_lock_unlock(v11);

        ++v6;
      }

      while (v8 != v28);
    }

    v20 = v0[27];
    sub_1001AFB84(v3, v24, 0, sub_1001428C4);
    *(v20 + 24) = v25;
    *(v20 + 32) = 257;
  }

  v21 = v0[72];
  os_unfair_lock_unlock((v0[27] + 16));
  swift_willThrow();
  sub_100011F00(v21, &qword_10022FE80, &qword_1001E1B50);

  v22 = v0[1];

  return v22();
}

uint64_t sub_100179AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0);
  __chkstk_darwin(v6);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = a2;
  v13 = a3;
  sub_1001B0458(&qword_10022ABD0, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
  sub_1001D0B50();
  sub_100011F00(a1, &qword_10022AA80, &unk_1001E1C40);
  sub_1001B0368(v8, a1, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
  v9 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
}

uint64_t sub_100179C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  v5 = type metadata accessor for ValidatedAttestationOrAttestation(0);
  v50 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v59 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping(0);
  v60 = *(v7 - 8);
  v61 = v7;
  __chkstk_darwin(v7);
  v49 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100011AC0(&qword_1002293A8, &unk_1001D6530);
  v10 = __chkstk_darwin(v9 - 8);
  v55 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v53 = &v48 - v13;
  __chkstk_darwin(v12);
  v15 = &v48 - v14;
  v16 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v54 = (&v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __chkstk_darwin(v18);
  v52 = (&v48 - v21);
  __chkstk_darwin(v20);
  v23 = &v48 - v22;
  *a1 = 1;
  v62 = a2;
  v24 = a2 + qword_100243500;
  v25 = *(type metadata accessor for TrustedRequestConfiguration(0) + 96);
  v56 = v24;
  if (*(v24 + v25) == 1)
  {

    *(a1 + 16) = &off_10021CF20;
  }

  v26 = *(type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0) + 32);
  sub_10001208C(a1 + v26, v15, &qword_1002293A8, &unk_1001D6530);
  v27 = *(v17 + 48);
  if (v27(v15, 1, v16) == 1)
  {
    *v23 = _swiftEmptyArrayStorage;
    *(v23 + 9) = 0;
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    v28 = v27;
    if (v27(v15, 1, v16) != 1)
    {
      sub_100011F00(v15, &qword_1002293A8, &unk_1001D6530);
    }
  }

  else
  {
    v28 = v27;
    sub_1001B0368(v15, v23, type metadata accessor for Proto_Ropes_Common_Capabilities);
  }

  v23[8] = 1;
  sub_100011F00(a1 + v26, &qword_1002293A8, &unk_1001D6530);
  sub_1001B0368(v23, a1 + v26, type metadata accessor for Proto_Ropes_Common_Capabilities);
  v29 = *(v17 + 56);
  v58 = v17 + 56;
  v51 = v29;
  v29(a1 + v26, 0, 1, v16);
  LODWORD(v56) = *(v56 + 72);
  v30 = v53;
  sub_10001208C(a1 + v26, v53, &qword_1002293A8, &unk_1001D6530);
  v31 = v28;
  if (v28(v30, 1, v16) == 1)
  {
    v32 = v52;
    *v52 = _swiftEmptyArrayStorage;
    *(v32 + 4) = 0;
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    if (v28(v30, 1, v16) != 1)
    {
      sub_100011F00(v30, &qword_1002293A8, &unk_1001D6530);
    }
  }

  else
  {
    v32 = v52;
    sub_1001B0368(v30, v52, type metadata accessor for Proto_Ropes_Common_Capabilities);
  }

  v33 = v56;
  *(v32 + 10) = v56;
  sub_100011F00(a1 + v26, &qword_1002293A8, &unk_1001D6530);
  sub_1001B0368(v32, a1 + v26, type metadata accessor for Proto_Ropes_Common_Capabilities);
  v34 = v51;
  v51(a1 + v26, 0, 1, v16);
  v35 = v55;
  sub_10001208C(a1 + v26, v55, &qword_1002293A8, &unk_1001D6530);
  if (v31(v35, 1, v16) == 1)
  {
    v36 = v31;
    v37 = v54;
    *v54 = _swiftEmptyArrayStorage;
    v37[8] = 0;
    v37[10] = 0;
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    v38 = v36(v35, 1, v16);
    v33 = v56;
    if (v38 != 1)
    {
      sub_100011F00(v35, &qword_1002293A8, &unk_1001D6530);
    }
  }

  else
  {
    v37 = v54;
    sub_1001B0368(v35, v54, type metadata accessor for Proto_Ropes_Common_Capabilities);
  }

  v37[9] = v33;
  sub_100011F00(a1 + v26, &qword_1002293A8, &unk_1001D6530);
  sub_1001B0368(v37, a1 + v26, type metadata accessor for Proto_Ropes_Common_Capabilities);
  v34(a1 + v26, 0, 1, v16);
  v39 = *(v57 + 16);
  v40 = _swiftEmptyArrayStorage;
  if (v39)
  {
    v56 = a1;
    v63 = _swiftEmptyArrayStorage;
    sub_100151774(0, v39, 0);
    v40 = v63;
    v41 = v49;
    v42 = v57 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
    v58 = *(v50 + 72);
    do
    {
      v43 = v59;
      v44 = sub_1001AFCB4(v42, v59, type metadata accessor for ValidatedAttestationOrAttestation);
      __chkstk_darwin(v44);
      *(&v48 - 2) = v62;
      *(&v48 - 1) = v43;
      sub_1001B0458(&qword_10022AAC0, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping);
      sub_1001D0B50();
      sub_1001AFB98(v43, type metadata accessor for ValidatedAttestationOrAttestation);
      v63 = v40;
      v46 = v40[2];
      v45 = v40[3];
      if (v46 >= v45 >> 1)
      {
        sub_100151774((v45 > 1), v46 + 1, 1);
        v40 = v63;
      }

      v40[2] = v46 + 1;
      sub_1001B0368(v41, v40 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v46, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping);
      v42 += v58;
      --v39;
    }

    while (v39);
    a1 = v56;
  }

  *(a1 + 8) = v40;
  return result;
}

uint64_t sub_10017A49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a1;
  v4 = type metadata accessor for ValidatedAttestation(0);
  __chkstk_darwin(v4 - 8);
  v54 = (v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = type metadata accessor for ValidatedAttestationOrAttestation(0);
  v6 = __chkstk_darwin(v57);
  v8 = (v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v6);
  v56 = v48 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = (v48 - v12);
  v14 = __chkstk_darwin(v11);
  v16 = (v48 - v15);
  v17 = __chkstk_darwin(v14);
  v19 = v48 - v18;
  __chkstk_darwin(v17);
  v21 = v48 - v20;
  sub_1001AFCB4(a3, v48 - v20, type metadata accessor for ValidatedAttestationOrAttestation);
  sub_1001AFCB4(a3, v19, type metadata accessor for ValidatedAttestationOrAttestation);

  v22 = sub_1001D0E50();
  v23 = sub_1001D1E00();

  if (os_log_type_enabled(v22, v23))
  {
    v50 = v23;
    v52 = a3;
    v53 = v19;
    v51 = v22;
    v24 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v60 = v49;
    *v24 = 136315650;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v58 = sub_1001D23A0();
    v59 = v25;
    v61._countAndFlagsBits = 2629690;
    v61._object = 0xE300000000000000;
    sub_1001D18B0(v61);
    v62._countAndFlagsBits = 1953460082;
    v62._object = 0xE400000000000000;
    sub_1001D18B0(v62);
    v63._countAndFlagsBits = 41;
    v63._object = 0xE100000000000000;
    sub_1001D18B0(v63);
    v26 = sub_1000954E0(v58, v59, &v60);

    *(v24 + 4) = v26;
    *(v24 + 12) = 2080;
    sub_1001B0368(v21, v16, type metadata accessor for ValidatedAttestationOrAttestation);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = *v16;
      v27 = v16[1];
      sub_10002683C(v16[2], v16[3]);
    }

    else
    {
      v30 = v54;
      sub_1001B0368(v16, v54, type metadata accessor for ValidatedAttestation);
      v28 = *v30;
      v27 = v30[1];

      sub_1001AFB98(v30, type metadata accessor for ValidatedAttestation);
    }

    v31 = sub_1000954E0(v28, v27, &v60);

    *(v24 + 14) = v31;
    *(v24 + 22) = 1024;
    v32 = v53;
    sub_1001AFCB4(v53, v13, type metadata accessor for ValidatedAttestationOrAttestation);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = v13[2];
      v34 = v13[3];
      v48[1] = v13[9];
      v35 = v13[12];

      v36 = v34;
      v32 = v53;
      sub_10002683C(v33, v36);
    }

    else
    {
      v35 = *(v13 + *(sub_100011AC0(qword_10022E650, &unk_1001DF500) + 48));
      result = sub_1001AFB98(v13, type metadata accessor for ValidatedAttestation);
    }

    v29 = v56;
    if (HIDWORD(v35))
    {
      goto LABEL_20;
    }

    sub_1001AFB98(v32, type metadata accessor for ValidatedAttestationOrAttestation);
    *(v24 + 24) = v35;
    v38 = v51;
    _os_log_impl(&_mh_execute_header, v51, v50, "%s adding prefetched attestation for node: %s ohttpContext: %u", v24, 0x1Cu);
    swift_arrayDestroy();

    a3 = v52;
  }

  else
  {
    sub_1001AFB98(v19, type metadata accessor for ValidatedAttestationOrAttestation);

    sub_1001AFB98(v21, type metadata accessor for ValidatedAttestationOrAttestation);
    v29 = v56;
  }

  sub_1001AFCB4(a3, v29, type metadata accessor for ValidatedAttestationOrAttestation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v40 = v55;
  if (EnumCaseMultiPayload == 1)
  {
    v41 = v29;
    v43 = *v29;
    v42 = v29[1];
    sub_10002683C(v41[2], v41[3]);
  }

  else
  {
    v44 = v54;
    sub_1001B0368(v29, v54, type metadata accessor for ValidatedAttestation);
    v43 = *v44;
    v42 = v44[1];

    sub_1001AFB98(v44, type metadata accessor for ValidatedAttestation);
  }

  *v40 = v43;
  *(v40 + 8) = v42;
  sub_1001AFCB4(a3, v8, type metadata accessor for ValidatedAttestationOrAttestation);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = v8[2];
    v46 = v8[3];
    v47 = v8[12];

    sub_10002683C(v45, v46);
  }

  else
  {
    v47 = *(v8 + *(sub_100011AC0(qword_10022E650, &unk_1001DF500) + 48));
    result = sub_1001AFB98(v8, type metadata accessor for ValidatedAttestation);
  }

  if (!HIDWORD(v47))
  {
    *(v40 + 16) = v47;
    return result;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10017ABC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_PrivateCloudCompute_AuthToken(0);
  __chkstk_darwin(v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a2;
  sub_1001B0458(&qword_1002299D8, type metadata accessor for Proto_PrivateCloudCompute_AuthToken, &protocol conformance descriptor for Proto_PrivateCloudCompute_AuthToken);
  sub_1001D0B50();
  sub_100011F00(a1, &qword_100229920, &qword_1001D7190);
  sub_1001B0368(v6, a1, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
  v7 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
}

double sub_10017AD50(uint64_t *a1, __int128 *a2)
{
  v11 = *a2;
  v4 = *a1;
  v5 = a1[1];
  sub_1001AF8C0(&v11, &v10);
  sub_100011E48(v4, v5);
  *a1 = v11;
  v10 = a2[2];
  v6 = a1[2];
  v7 = a1[3];
  sub_1001AF8C0(&v10, &v9);
  sub_100011E48(v6, v7);
  result = *&v10;
  *(a1 + 1) = v10;
  return result;
}

uint64_t sub_10017ADEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v78 = sub_100011AC0(&qword_10022FD18, &unk_1001E1700);
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = v69 - v6;
  v7 = sub_100011AC0(&qword_10022FE90, &qword_1001E1B78);
  __chkstk_darwin(v7 - 8);
  v74 = v69 - v8;
  v81 = type metadata accessor for ValidatedAttestationOrAttestation(0);
  v9 = __chkstk_darwin(v81);
  v75 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v69 - v11;
  v80 = sub_1001D08A0();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v14 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v15 = __chkstk_darwin(v83);
  v72 = (v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v15);
  v19 = v69 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = (v69 - v21);
  __chkstk_darwin(v20);
  v24 = v69 - v23;
  v25 = *(*v3 + 392);
  v82 = a1;
  sub_1001AFCB4(a1, v69 - v23, type metadata accessor for Proto_Ropes_Common_Attestation);

  v69[1] = v25;
  v26 = sub_1001D0E50();
  v27 = sub_1001D1DD0();

  v28 = os_log_type_enabled(v26, v27);
  v70 = v19;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v73 = v3;
    v31 = v30;
    v85 = v30;
    *v29 = 136315394;
    sub_1001CFDA0();
    v71 = a2;
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    *&v87[0] = sub_1001D23A0();
    *(&v87[0] + 1) = v32;
    v88._countAndFlagsBits = 58;
    v88._object = 0xE100000000000000;
    sub_1001D18B0(v88);
    v33 = sub_1000954E0(*&v87[0], *(&v87[0] + 1), &v85);

    *(v29 + 4) = v33;
    a2 = v71;
    *(v29 + 12) = 1024;
    v34 = &v24[*(v83 + 28)];
    if (v34[4])
    {
      v35 = 0;
    }

    else
    {
      v35 = *v34;
    }

    sub_1001AFB98(v24, type metadata accessor for Proto_Ropes_Common_Attestation);
    *(v29 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v26, v27, "%s attestation ohttpContext=%u", v29, 0x12u);
    sub_100011CF0(v31);
    v3 = v73;
  }

  else
  {
    sub_1001AFB98(v24, type metadata accessor for Proto_Ropes_Common_Attestation);
  }

  v36 = v82;
  sub_1001AFCB4(v82, v22, type metadata accessor for Proto_Ropes_Common_Attestation);
  (*(v79 + 16))(v14, v3 + qword_100243508, v80);
  sub_10008AC80(v22, v14, v87);
  v37 = (v36 + *(v83 + 28));
  if (*(v37 + 4))
  {
    v38 = 0;
  }

  else
  {
    v38 = *v37;
  }

  v39 = v87[3];
  *(v12 + 2) = v87[2];
  *(v12 + 3) = v39;
  v40 = v87[5];
  *(v12 + 4) = v87[4];
  *(v12 + 5) = v40;
  v41 = v87[1];
  *v12 = v87[0];
  *(v12 + 1) = v41;
  *(v12 + 12) = v38;
  swift_storeEnumTagMultiPayload();
  v42 = *(v36 + 16);
  v43 = *(v36 + 24);
  v44 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v44 = v42 & 0xFFFFFFFFFFFFLL;
  }

  if (!v44 || (v45 = v87[0], v87[0] == __PAIR128__(v43, v42)) || (sub_1001D2470() & 1) != 0)
  {
    sub_100089C90(v87, &v85);
LABEL_16:
    v46 = v74;
    sub_1001AFCB4(v12, v74, type metadata accessor for ValidatedAttestationOrAttestation);
    sub_1001658A0(v46);
    sub_100011F00(v46, &qword_10022FE90, &qword_1001E1B78);
    sub_1001AFCB4(v12, v75, type metadata accessor for ValidatedAttestationOrAttestation);
    sub_100011AC0(&qword_10022FD28, &qword_1001E1718);
    v47 = v76;
    sub_1001D1BC0();
    sub_10005AF88(v87);
    (*(v77 + 8))(v47, v78);
    return sub_1001AFB98(v12, type metadata accessor for ValidatedAttestationOrAttestation);
  }

  v49 = v3;
  v50 = v70;
  sub_1001AFCB4(v36, v70, type metadata accessor for Proto_Ropes_Common_Attestation);
  v51 = v72;
  sub_1001AFCB4(v36, v72, type metadata accessor for Proto_Ropes_Common_Attestation);

  sub_100089C90(v87, &v85);
  v52 = sub_1001D0E50();
  v53 = sub_1001D1DE0();

  if (!os_log_type_enabled(v52, v53))
  {
    sub_1001AFB98(v51, type metadata accessor for Proto_Ropes_Common_Attestation);

    sub_1001AFB98(v50, type metadata accessor for Proto_Ropes_Common_Attestation);
    goto LABEL_16;
  }

  LODWORD(v83) = v53;
  v71 = a2;
  v54 = swift_slowAlloc();
  v82 = swift_slowAlloc();
  v84 = v82;
  *v54 = 136315906;
  sub_1001CFDA0();
  sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v73 = v49;
  v85 = sub_1001D23A0();
  v86 = v55;
  v89._countAndFlagsBits = 58;
  v89._object = 0xE100000000000000;
  sub_1001D18B0(v89);
  v56 = sub_1000954E0(v85, v86, &v84);

  *(v54 + 4) = v56;
  *(v54 + 12) = 2080;

  v57 = sub_1000954E0(v45, *(&v45 + 1), &v84);

  *(v54 + 14) = v57;
  *(v54 + 22) = 2080;
  v58 = *(v50 + 16);
  v59 = *(v50 + 24);

  sub_1001AFB98(v50, type metadata accessor for Proto_Ropes_Common_Attestation);
  v60 = sub_1000954E0(v58, v59, &v84);

  *(v54 + 24) = v60;
  *(v54 + 32) = 2048;
  v61 = *v51;
  v62 = v51[1];
  v63 = v62 >> 62;
  if ((v62 >> 62) > 1)
  {
    v64 = 0;
    if (v63 != 2)
    {
      goto LABEL_28;
    }

    v66 = v61 + 16;
    v61 = *(v61 + 16);
    v65 = *(v66 + 8);
    v64 = v65 - v61;
    if (!__OFSUB__(v65, v61))
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  else if (!v63)
  {
    v64 = BYTE6(v62);
LABEL_28:
    sub_1001AFB98(v72, type metadata accessor for Proto_Ropes_Common_Attestation);
    *(v54 + 34) = v64;
    _os_log_impl(&_mh_execute_header, v52, v83, "%s node id does not match attestation bundle calculated=%s fromServer=%s bundleSize=%ld bytes", v54, 0x2Au);
    swift_arrayDestroy();

    goto LABEL_16;
  }

  v67 = __OFSUB__(HIDWORD(v61), v61);
  v68 = HIDWORD(v61) - v61;
  if (!v67)
  {
    v64 = v68;
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t sub_10017B838(uint64_t *a1)
{
  v3 = sub_100011AC0(&qword_100229348, &unk_1001D64C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = type metadata accessor for RateLimitConfiguration(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v36 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v34 = &v26 - v10;
  v28 = type metadata accessor for ThimbledEvent(0);
  __chkstk_darwin(v28);
  v30 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v26 = &v26 - v12;
  v13 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v35 = *(*a1 + 16);
  if (v35)
  {
    v18 = 0;
    v31 = v7;
    v19 = (v7 + 48);
    v20 = _swiftEmptyArrayStorage;
    v32 = v6;
    v33 = v1;
    while (v18 < *(v17 + 16))
    {
      sub_1001AFCB4(v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v18, v16, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      sub_10017EADC(v16, v1, v5);
      sub_1001AFB98(v16, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      if ((*v19)(v5, 1, v6) == 1)
      {
        sub_100011F00(v5, &qword_100229348, &unk_1001D64C0);
      }

      else
      {
        v21 = v34;
        sub_1001B0368(v5, v34, type metadata accessor for RateLimitConfiguration);
        sub_1001B0368(v21, v36, type metadata accessor for RateLimitConfiguration);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1000097E0(0, v20[2] + 1, 1, v20);
        }

        v23 = v20[2];
        v22 = v20[3];
        if (v23 >= v22 >> 1)
        {
          v20 = sub_1000097E0((v22 > 1), v23 + 1, 1, v20);
        }

        v20[2] = v23 + 1;
        sub_1001B0368(v36, v20 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v23, type metadata accessor for RateLimitConfiguration);
        v6 = v32;
        v1 = v33;
      }

      if (v35 == ++v18)
      {
        goto LABEL_13;
      }
    }

    __break(1u);

    sub_1001AFB98(v16, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);

    __break(1u);
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_13:
    *v30 = v20;
    swift_storeEnumTagMultiPayload();
    sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
    v24 = v26;
    sub_1001D1BC0();
    return (*(v27 + 8))(v24, v29);
  }

  return result;
}

uint64_t sub_10017BD24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v261 = a1;
  v5 = sub_100011AC0(&unk_100230110, &unk_1001D6520);
  __chkstk_darwin(v5 - 8);
  v211 = &v203 - v6;
  v252 = sub_100011AC0(&qword_10022FEA0, &qword_1001E1B88);
  v226 = *(v252 - 8);
  __chkstk_darwin(v252);
  v210 = &v203 - v7;
  v225 = sub_100011AC0(&qword_10022FEA8, &qword_1001E1B90);
  __chkstk_darwin(v225);
  v227 = &v203 - v8;
  v9 = sub_100011AC0(&qword_10022FEB0, &qword_1001E1B98);
  v10 = __chkstk_darwin(v9 - 8);
  v234 = &v203 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v212 = &v203 - v13;
  v14 = __chkstk_darwin(v12);
  v242 = &v203 - v15;
  __chkstk_darwin(v14);
  v236 = &v203 - v16;
  v17 = sub_1001D05C0();
  v254 = *(v17 - 8);
  v255 = v17;
  __chkstk_darwin(v17);
  v224 = &v203 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_100011AC0(&qword_10022FEB8, &qword_1001E1BA0);
  __chkstk_darwin(v248);
  v256 = &v203 - v19;
  v20 = sub_100011AC0(&qword_10022FEC0, &qword_1001E1BA8);
  v21 = __chkstk_darwin(v20 - 8);
  v233 = &v203 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v243 = &v203 - v24;
  v25 = __chkstk_darwin(v23);
  v259 = (&v203 - v26);
  __chkstk_darwin(v25);
  v260 = &v203 - v27;
  v239 = sub_1001D02E0();
  v238 = *(v239 - 8);
  __chkstk_darwin(v239);
  v237 = &v203 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for ThimbledEvent(0);
  __chkstk_darwin(v230);
  v232 = (&v203 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v231 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v229 = *(v231 - 8);
  __chkstk_darwin(v231);
  v228 = &v203 - v30;
  v213 = type metadata accessor for TrustedRequestConfiguration(0);
  v31 = __chkstk_darwin(v213);
  v241 = &v203 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v221 = &v203 - v33;
  v219 = sub_1001CFD60();
  v217 = *(v219 - 8);
  v34 = __chkstk_darwin(v219);
  v214 = &v203 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v215 = &v203 - v36;
  v218 = type metadata accessor for RateLimitTimingDetails(0);
  v37 = __chkstk_darwin(v218);
  v235 = (&v203 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v37);
  v220 = &v203 - v39;
  v216 = type metadata accessor for RateLimitConfiguration(0);
  v222 = *(v216 - 8);
  __chkstk_darwin(v216);
  v223 = (&v203 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = sub_1001D0FF0();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v203 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1001D06D0();
  v46 = *(v45 - 8);
  v47 = __chkstk_darwin(v45);
  v247 = &v203 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v47);
  v246 = &v203 - v50;
  v51 = __chkstk_darwin(v49);
  v245 = &v203 - v52;
  v53 = __chkstk_darwin(v51);
  v55 = &v203 - v54;
  __chkstk_darwin(v53);
  v57 = &v203 - v56;
  (*(v42 + 16))(v44, v261, v41);
  v58 = v46;

  v253 = a2;
  sub_100129638(v44, a2, v57);
  v59 = *(*v3 + 392);
  v60 = *(v46 + 16);
  v262 = v57;
  v257 = v60;
  v258 = v46 + 16;
  v60(v55, v57, v45);

  v244 = v59;
  v61 = sub_1001D0E50();
  v62 = sub_1001D1DD0();
  v261 = v3;

  v63 = os_log_type_enabled(v61, v62);
  v251 = v45;
  v249 = v46;
  if (v63)
  {
    v64 = swift_slowAlloc();
    v265 = swift_slowAlloc();
    *v64 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v263 = sub_1001D23A0();
    v264 = v65;
    v266._countAndFlagsBits = 58;
    v266._object = 0xE100000000000000;
    sub_1001D18B0(v266);
    v66 = sub_1000954E0(v263, v264, &v265);

    *(v64 + 4) = v66;
    *(v64 + 12) = 2080;
    v67 = sub_1001D0620();
    v69 = v68;
    v250 = *(v58 + 8);
    v250(v55, v45);
    v70 = sub_1000954E0(v67, v69, &v265);

    *(v64 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v61, v62, "%s %s", v64, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v250 = *(v46 + 8);
    v250(v55, v45);
  }

  v71 = sub_1001D0640();
  v73 = v255;
  v72 = v256;
  v74 = v259;
  v75 = v260;
  if (v71)
  {
    v76 = sub_1001D05D0();
    if ((v77 & 1) == 0)
    {
      v78 = *&v76;
      v79 = v261 + qword_100243500;
      v80 = v213;
      v81 = *(v213 + 112);
      v82 = (v261 + qword_100243500 + *(v213 + 108));
      v83 = v82[1];
      v208 = *v82;
      v84 = *(v261 + qword_100243500 + v81 + 8);
      v206 = *(v261 + qword_100243500 + v81);
      v207 = v84;

      v209 = v83;

      v205 = sub_1001D0890();
      v204 = v85;
      v86 = sub_1001D0870();
      if (*(v79 + *(v80 + 76)) == 1)
      {
        v87 = sub_1001A6DA4(&off_10021CA38);
        swift_arrayDestroy();
        v88 = v73;
        v89 = v261;

        v90 = v240;
        v91 = sub_1001A735C(v86, v87, v89);
        v92 = v90;

        swift_bridgeObjectRelease_n();
        v73 = v88;

        v86 = v91;
      }

      else
      {
        v92 = v240;
      }

      sub_10015A2E8(v86);
      v213 = v93;
      v240 = v92;

      v94 = v215;
      _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
      v95 = v221;
      sub_1001AFCB4(v79, v221, type metadata accessor for TrustedRequestConfiguration);
      v96 = v217;
      v97 = v214;
      v98 = v219;
      (*(v217 + 16))(v214, v94, v219);
      v99 = *(v95 + 64);
      v100 = v241;
      sub_1001AFCB4(v95, v241, type metadata accessor for TrustedRequestConfiguration);
      v101 = v235;
      *v235 = 0.0;
      if (v78 < 0.0)
      {
        v102 = 0.0;
      }

      else
      {
        v102 = v78;
      }

      if (*(v100 + 48) >= v102)
      {
        v103 = v102;
      }

      else
      {
        v103 = *(v100 + 48);
      }

      v101[1] = v103;
      v104 = v218;
      sub_1001CFCE0();
      v105 = *(v96 + 8);
      v105(v97, v98);
      sub_1001AFB98(v95, type metadata accessor for TrustedRequestConfiguration);
      v105(v94, v98);
      if (v99 == 0.0)
      {
        v99 = *(v241 + 64);
      }

      sub_1001AFB98(v241, type metadata accessor for TrustedRequestConfiguration);
      v106 = 1.0;
      if (v99 <= 1.0)
      {
        v106 = v99;
      }

      if (v99 < 0.0)
      {
        v106 = 0.0;
      }

      v107 = v235;
      *(v235 + *(v104 + 28)) = v103 * v106;
      v108 = v220;
      sub_1001B0368(v107, v220, type metadata accessor for RateLimitTimingDetails);
      v109 = v223;
      v110 = v209;
      *v223 = v208;
      v109[1] = v110;
      v111 = v207;
      v109[2] = v206;
      v109[3] = v111;
      v112 = v204;
      v109[4] = v205;
      v109[5] = v112;
      v109[6] = v213;
      sub_1001B0368(v108, v109 + *(v216 + 20), type metadata accessor for RateLimitTimingDetails);
      sub_100011AC0(&qword_100227AE8, &qword_1001D3680);
      v113 = (*(v222 + 80) + 32) & ~*(v222 + 80);
      v114 = swift_allocObject();
      *(v114 + 16) = xmmword_1001D39F0;
      sub_1001AFCB4(v109, v114 + v113, type metadata accessor for RateLimitConfiguration);
      *v232 = v114;
      swift_storeEnumTagMultiPayload();
      sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
      v115 = v228;
      sub_1001D1BC0();
      (*(v229 + 8))(v115, v231);
      sub_1001AFB98(v109, type metadata accessor for RateLimitConfiguration);
      v74 = v259;
      v75 = v260;
    }
  }

  v116 = sub_1001D06B0();
  if (v117)
  {
    v118 = v117;
    v241 = v116;
    v119 = *(v261 + qword_100243500 + 80);
    v120 = *(v261 + qword_100243500 + 88);
    v121 = v238;
    v122 = v237;
    v123 = v239;
    (*(v238 + 104))(v237, enum case for TC2Environment.production(_:), v239);
    v124 = sub_1001D02B0();
    v126 = v125;
    (*(v121 + 8))(v122, v123);
    if (v119 == v124 && v120 == v126)
    {
    }

    else
    {
      v127 = sub_1001D2470();

      if ((v127 & 1) == 0)
      {
        v128 = sub_1001D05F0();
        v130 = v129;
        v239 = sub_1001D05E0();
        v132 = v131;
        v133 = sub_1001D0600();
        v135 = v134;
        v136 = sub_1001D0630();
        v137 = v232;
        *v232 = v241;
        v137[1] = v118;
        v137[2] = v128;
        v137[3] = v130;
        v137[4] = v239;
        v137[5] = v132;
        v138 = v259;
        v139 = v255;
        v137[6] = v133;
        v137[7] = v135;
        v74 = v138;
        v137[8] = v136;
        v137[9] = v140;
        swift_storeEnumTagMultiPayload();
        sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
        v73 = v139;
        v141 = v228;
        sub_1001D1BC0();
        (*(v229 + 8))(v141, v231);
        v75 = v260;
        goto LABEL_29;
      }
    }

    v74 = v259;
    v75 = v260;
LABEL_29:
    v72 = v256;
  }

  sub_1001D06A0();
  v142 = v254;
  (*(v254 + 104))(v74, enum case for RopesResponseMetadata.StatusCode.ok(_:), v73);
  (*(v142 + 56))(v74, 0, 1, v73);
  v143 = *(v248 + 48);
  sub_10001208C(v75, v72, &qword_10022FEC0, &qword_1001E1BA8);
  sub_10001208C(v74, v72 + v143, &qword_10022FEC0, &qword_1001E1BA8);
  v144 = v74;
  v145 = *(v142 + 48);
  if (v145(v72, 1, v73) == 1)
  {
    sub_100011F00(v144, &qword_10022FEC0, &qword_1001E1BA8);
    sub_100011F00(v75, &qword_10022FEC0, &qword_1001E1BA8);
    v146 = v145(v72 + v143, 1, v73);
    v147 = v262;
    if (v146 == 1)
    {
      sub_100011F00(v72, &qword_10022FEC0, &qword_1001E1BA8);
      v148 = v242;
      goto LABEL_37;
    }

LABEL_35:
    sub_100011F00(v72, &qword_10022FEB8, &qword_1001E1BA0);
    goto LABEL_43;
  }

  v149 = v243;
  sub_10001208C(v72, v243, &qword_10022FEC0, &qword_1001E1BA8);
  if (v145(v72 + v143, 1, v73) == 1)
  {
    sub_100011F00(v144, &qword_10022FEC0, &qword_1001E1BA8);
    sub_100011F00(v75, &qword_10022FEC0, &qword_1001E1BA8);
    (*(v254 + 8))(v149, v73);
    v147 = v262;
    goto LABEL_35;
  }

  v150 = v254;
  v151 = v72 + v143;
  v152 = v224;
  (*(v254 + 32))(v224, v151, v73);
  sub_1001B0458(&qword_10022FED8, &type metadata accessor for RopesResponseMetadata.StatusCode, &protocol conformance descriptor for RopesResponseMetadata.StatusCode);
  v153 = sub_1001D1790();
  v154 = *(v150 + 8);
  v154(v152, v73);
  v155 = v144;
  v148 = v242;
  sub_100011F00(v155, &qword_10022FEC0, &qword_1001E1BA8);
  sub_100011F00(v75, &qword_10022FEC0, &qword_1001E1BA8);
  v154(v243, v73);
  sub_100011F00(v72, &qword_10022FEC0, &qword_1001E1BA8);
  v147 = v262;
  if ((v153 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_37:
  v156 = v236;
  sub_1001D0610();
  v157 = enum case for RopesResponseMetadata.ErrorCode.success(_:);
  v158 = sub_1001D06C0();
  (*(*(v158 - 8) + 104))(v148, v157, v158);
  v159 = v252;
  swift_storeEnumTagMultiPayload();
  v160 = v148;
  v161 = v226;
  (*(v226 + 56))(v160, 0, 1, v159);
  v162 = *(v225 + 48);
  v163 = v227;
  sub_10001208C(v156, v227, &qword_10022FEB0, &qword_1001E1B98);
  sub_10001208C(v160, v163 + v162, &qword_10022FEB0, &qword_1001E1B98);
  v164 = *(v161 + 48);
  if (v164(v163, 1, v159) == 1)
  {
    sub_100011F00(v160, &qword_10022FEB0, &qword_1001E1B98);
    sub_100011F00(v156, &qword_10022FEB0, &qword_1001E1B98);
    if (v164(v163 + v162, 1, v252) == 1)
    {
      sub_100011F00(v163, &qword_10022FEB0, &qword_1001E1B98);
      v147 = v262;
      return (v250)(v147, v251);
    }

    goto LABEL_42;
  }

  v165 = v212;
  sub_10001208C(v163, v212, &qword_10022FEB0, &qword_1001E1B98);
  if (v164(v163 + v162, 1, v252) == 1)
  {
    sub_100011F00(v242, &qword_10022FEB0, &qword_1001E1B98);
    sub_100011F00(v236, &qword_10022FEB0, &qword_1001E1B98);
    sub_100011F00(v165, &qword_10022FEA0, &qword_1001E1B88);
LABEL_42:
    sub_100011F00(v163, &qword_10022FEA8, &qword_1001E1B90);
    v147 = v262;
    goto LABEL_43;
  }

  v195 = v163 + v162;
  v196 = v210;
  sub_1000DBEF4(v195, v210, &qword_10022FEA0, &qword_1001E1B88);
  sub_1001AFBF8();
  v197 = v165;
  v198 = sub_1001D1790();
  sub_100011F00(v196, &qword_10022FEA0, &qword_1001E1B88);
  sub_100011F00(v242, &qword_10022FEB0, &qword_1001E1B98);
  sub_100011F00(v236, &qword_10022FEB0, &qword_1001E1B98);
  sub_100011F00(v197, &qword_10022FEA0, &qword_1001E1B88);
  sub_100011F00(v163, &qword_10022FEB0, &qword_1001E1B98);
  v147 = v262;
  if (v198)
  {
    return (v250)(v147, v251);
  }

LABEL_43:
  v166 = v245;
  v167 = v251;
  v168 = v257;
  v257(v245, v147, v251);
  v169 = v246;
  v168(v246, v147, v167);

  v170 = sub_1001D0E50();
  v171 = sub_1001D1DE0();

  if (os_log_type_enabled(v170, v171))
  {
    LODWORD(v256) = v171;
    v259 = v170;
    v260 = 7104878;
    v172 = swift_slowAlloc();
    v254 = swift_slowAlloc();
    v265 = v254;
    *v172 = 136315906;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v263 = sub_1001D23A0();
    v264 = v173;
    v267._countAndFlagsBits = 58;
    v267._object = 0xE100000000000000;
    sub_1001D18B0(v267);
    v174 = sub_1000954E0(v263, v264, &v265);

    *(v172 + 4) = v174;
    *(v172 + 12) = 2082;
    v175 = v233;
    sub_1001D06A0();
    v176 = sub_1001D0300();
    v178 = v177;
    sub_100011F00(v175, &qword_10022FEC0, &qword_1001E1BA8);
    v179 = v166;
    v180 = v250;
    v250(v179, v167);
    v181 = sub_1000954E0(v176, v178, &v265);

    *(v172 + 14) = v181;
    *(v172 + 22) = 2082;
    v182 = v234;
    sub_1001D0610();
    v183 = sub_1001D0300();
    v185 = v184;
    sub_100011F00(v182, &qword_10022FEB0, &qword_1001E1B98);
    v180(v169, v167);
    v186 = sub_1000954E0(v183, v185, &v265);

    *(v172 + 24) = v186;
    *(v172 + 32) = 2080;
    sub_1001D12A0();
    sub_1001D1250();
    v187 = sub_1001D1070();

    if (v187)
    {
      sub_1001D1290();
      v188 = swift_dynamicCastClass();
      v189 = v259;
      if (v188)
      {
        v190 = v211;
        sub_1001D1280();

        v191 = sub_1001D0ED0();
        v192 = *(v191 - 8);
        if ((*(v192 + 48))(v190, 1, v191) != 1)
        {
          v260 = HTTPFields.loggingDescription.getter();
          v194 = v200;
          (*(v192 + 8))(v190, v191);
          goto LABEL_55;
        }

        sub_100011F00(v190, &unk_100230110, &unk_1001D6520);
      }

      else
      {
      }

      v194 = 0xE300000000000000;
    }

    else
    {
      v194 = 0xE300000000000000;
      v189 = v259;
    }

LABEL_55:
    v201 = sub_1000954E0(v260, v194, &v265);

    *(v172 + 34) = v201;
    _os_log_impl(&_mh_execute_header, v189, v256, "%s ROPES response indicates a failure\nstatus: %{public}s\nreceivedErrorCode: %{public}s\ntrailers:\n%s", v172, 0x2Au);
    swift_arrayDestroy();

    goto LABEL_56;
  }

  v193 = v166;
  v180 = v250;
  v250(v169, v167);
  v180(v193, v167);
LABEL_56:
  v202 = v262;
  v257(v247, v262, v167);
  sub_1001D0200();
  sub_1001B0458(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
  swift_allocError();
  sub_1001D01A0();
  swift_willThrow();
  return (v180)(v202, v167);
}

uint64_t sub_10017DA48(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v138 = a1;
  v3 = v2;
  v5 = sub_1001D0680();
  v143 = *(v5 - 8);
  __chkstk_darwin(v5);
  v128 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_100011AC0(&qword_10022FEF0, &qword_1001E1BC0);
  __chkstk_darwin(v139);
  v142 = &v107 - v7;
  v8 = sub_100011AC0(&qword_10022FEF8, &qword_1001E1BC8);
  v9 = __chkstk_darwin(v8 - 8);
  v132 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v145 = &v107 - v12;
  __chkstk_darwin(v11);
  v141 = &v107 - v13;
  v125 = type metadata accessor for ThimbledEvent(0);
  __chkstk_darwin(v125);
  v127 = (&v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v124 = *(v126 - 8);
  __chkstk_darwin(v126);
  v123 = &v107 - v15;
  v112 = type metadata accessor for TrustedRequestConfiguration(0);
  v16 = __chkstk_darwin(v112);
  v121 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v119 = &v107 - v18;
  v117 = sub_1001CFD60();
  v116 = *(v117 - 8);
  v19 = __chkstk_darwin(v117);
  v113 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v114 = &v107 - v21;
  v130 = type metadata accessor for RateLimitTimingDetails(0);
  v22 = __chkstk_darwin(v130);
  v129 = (&v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v118 = &v107 - v24;
  v115 = type metadata accessor for RateLimitConfiguration(0);
  v120 = *(v115 - 8);
  __chkstk_darwin(v115);
  v122 = (&v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_1001D0FF0();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1001D06D0();
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v136 = &v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v36 = &v107 - v35;
  __chkstk_darwin(v34);
  v37 = v26;
  v39 = &v107 - v38;
  (*(v27 + 16))(v29, v138, v37);

  sub_100129638(v29, a2, v39);
  v40 = *(v31 + 16);
  v146 = v30;
  v134 = v40;
  v135 = v31 + 16;
  v40(v36, v39, v30);

  v41 = sub_1001D0E50();
  v42 = sub_1001D1DD0();

  v43 = os_log_type_enabled(v41, v42);
  v140 = v31;
  v144 = v39;
  v131 = v3;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v133 = v5;
    v45 = v44;
    v149 = swift_slowAlloc();
    *v45 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v147 = sub_1001D23A0();
    v148 = v46;
    v150._countAndFlagsBits = 58;
    v150._object = 0xE100000000000000;
    sub_1001D18B0(v150);
    v47 = sub_1000954E0(v147, v148, &v149);

    *(v45 + 4) = v47;
    *(v45 + 12) = 2080;
    v48 = sub_1001D0620();
    v50 = v49;
    v138 = *(v31 + 8);
    v138(v36, v146);
    v51 = sub_1000954E0(v48, v50, &v149);

    *(v45 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v41, v42, "%s %s", v45, 0x16u);
    swift_arrayDestroy();

    v5 = v133;
  }

  else
  {

    v138 = *(v31 + 8);
    v138(v36, v146);
  }

  v52 = sub_1001D0640();
  v54 = v141;
  v53 = v142;
  v55 = v145;
  if (v52)
  {
    v56 = sub_1001D05D0();
    if ((v57 & 1) == 0)
    {
      v133 = v5;
      v58 = *&v56;
      v59 = v131;
      v60 = v131 + qword_100243500;
      v61 = v112;
      v62 = *(v112 + 112);
      v63 = (v131 + qword_100243500 + *(v112 + 108));
      v64 = v63[1];
      v110 = *v63;
      v65 = *(v131 + qword_100243500 + v62 + 8);
      v109 = *(v131 + qword_100243500 + v62);

      v111 = v64;

      v108 = sub_1001D0890();
      v107 = v66;
      v67 = sub_1001D0870();
      if (*(v60 + *(v61 + 76)) == 1)
      {
        v68 = sub_1001A6DA4(&off_10021CA38);
        swift_arrayDestroy();

        v69 = v137;
        v70 = sub_1001A735C(v67, v68, v59);
        v71 = v69;

        swift_bridgeObjectRelease_n();

        v67 = v70;
      }

      else
      {
        v71 = v137;
      }

      sub_10015A2E8(v67);
      v73 = v72;
      v137 = v71;

      v74 = v114;
      _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
      v75 = v119;
      sub_1001AFCB4(v60, v119, type metadata accessor for TrustedRequestConfiguration);
      v76 = v116;
      v77 = v113;
      v78 = v117;
      (*(v116 + 16))(v113, v74, v117);
      v79 = *(v75 + 64);
      v80 = v121;
      sub_1001AFCB4(v75, v121, type metadata accessor for TrustedRequestConfiguration);
      v81 = v129;
      *v129 = 0.0;
      if (v58 < 0.0)
      {
        v82 = 0.0;
      }

      else
      {
        v82 = v58;
      }

      if (*(v80 + 48) >= v82)
      {
        v83 = v82;
      }

      else
      {
        v83 = *(v80 + 48);
      }

      v81[1] = v83;
      sub_1001CFCE0();
      v84 = *(v76 + 8);
      v84(v77, v78);
      sub_1001AFB98(v75, type metadata accessor for TrustedRequestConfiguration);
      v84(v74, v78);
      if (v79 == 0.0)
      {
        v79 = *(v80 + 64);
      }

      sub_1001AFB98(v80, type metadata accessor for TrustedRequestConfiguration);
      v85 = 1.0;
      if (v79 <= 1.0)
      {
        v85 = v79;
      }

      if (v79 < 0.0)
      {
        v85 = 0.0;
      }

      v86 = v129;
      *(v129 + *(v130 + 28)) = v83 * v85;
      v87 = v118;
      sub_1001B0368(v86, v118, type metadata accessor for RateLimitTimingDetails);
      v88 = v122;
      v89 = v111;
      *v122 = v110;
      v88[1] = v89;
      v88[2] = v109;
      v88[3] = v65;
      v90 = v107;
      v88[4] = v108;
      v88[5] = v90;
      v88[6] = v73;
      sub_1001B0368(v87, v88 + *(v115 + 20), type metadata accessor for RateLimitTimingDetails);
      sub_100011AC0(&qword_100227AE8, &qword_1001D3680);
      v91 = (*(v120 + 80) + 32) & ~*(v120 + 80);
      v92 = swift_allocObject();
      *(v92 + 16) = xmmword_1001D39F0;
      sub_1001AFCB4(v88, v92 + v91, type metadata accessor for RateLimitConfiguration);
      *v127 = v92;
      swift_storeEnumTagMultiPayload();
      sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
      v93 = v123;
      sub_1001D1BC0();
      (*(v124 + 8))(v93, v126);
      sub_1001AFB98(v88, type metadata accessor for RateLimitConfiguration);
      v5 = v133;
      v54 = v141;
      v53 = v142;
      v55 = v145;
    }
  }

  sub_1001D0690();
  v94 = v143;
  (*(v143 + 104))(v55, enum case for RopesResponseMetadata.Code.ok(_:), v5);
  (*(v94 + 56))(v55, 0, 1, v5);
  v95 = *(v139 + 48);
  sub_10001208C(v54, v53, &qword_10022FEF8, &qword_1001E1BC8);
  sub_10001208C(v55, v53 + v95, &qword_10022FEF8, &qword_1001E1BC8);
  v96 = *(v94 + 48);
  if (v96(v53, 1, v5) != 1)
  {
    v100 = v132;
    sub_10001208C(v53, v132, &qword_10022FEF8, &qword_1001E1BC8);
    v101 = v96(v53 + v95, 1, v5);
    v98 = v146;
    if (v101 != 1)
    {
      v103 = v143;
      v104 = v53 + v95;
      v105 = v128;
      (*(v143 + 32))(v128, v104, v5);
      sub_1001B0458(&qword_10022FF00, &type metadata accessor for RopesResponseMetadata.Code, &protocol conformance descriptor for RopesResponseMetadata.Code);
      LODWORD(v142) = sub_1001D1790();
      v106 = *(v103 + 8);
      v106(v105, v5);
      sub_100011F00(v145, &qword_10022FEF8, &qword_1001E1BC8);
      sub_100011F00(v54, &qword_10022FEF8, &qword_1001E1BC8);
      v106(v100, v5);
      sub_100011F00(v53, &qword_10022FEF8, &qword_1001E1BC8);
      v99 = v144;
      if (v142)
      {
        return (v138)(v99, v98);
      }

LABEL_28:
      v134(v136, v99, v98);
      sub_1001D0200();
      sub_1001B0458(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
      swift_allocError();
      sub_1001D01A0();
      swift_willThrow();
      return (v138)(v99, v98);
    }

    sub_100011F00(v145, &qword_10022FEF8, &qword_1001E1BC8);
    sub_100011F00(v54, &qword_10022FEF8, &qword_1001E1BC8);
    (*(v143 + 8))(v100, v5);
LABEL_27:
    sub_100011F00(v53, &qword_10022FEF0, &qword_1001E1BC0);
    v99 = v144;
    goto LABEL_28;
  }

  sub_100011F00(v55, &qword_10022FEF8, &qword_1001E1BC8);
  sub_100011F00(v54, &qword_10022FEF8, &qword_1001E1BC8);
  v97 = v96(v53 + v95, 1, v5);
  v98 = v146;
  if (v97 != 1)
  {
    goto LABEL_27;
  }

  sub_100011F00(v53, &qword_10022FEF8, &qword_1001E1BC8);
  v99 = v144;
  return (v138)(v99, v98);
}

uint64_t sub_10017EADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for TrustedRequestConfiguration(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0);
  v10 = __chkstk_darwin(v40);
  v41 = &v36[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v13 = &v36[-v12];
  v14 = sub_1001CFD60();
  __chkstk_darwin(v14 - 8);
  v16 = &v36[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_100011AC0(&qword_100229348, &unk_1001D64C0);
  __chkstk_darwin(v17 - 8);
  v19 = &v36[-v18];
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  sub_1001AFCB4(a1, v13, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
  sub_1001AFCB4(a2 + qword_100243500, v9, type metadata accessor for TrustedRequestConfiguration);
  sub_10012B050(v16, v13, v9, v19);
  v20 = type metadata accessor for RateLimitConfiguration(0);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    v38 = a3;
    v39 = v3;
    sub_100011F00(v19, &qword_100229348, &unk_1001D64C0);
    sub_1001AFCB4(a1, v41, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);

    v22 = sub_1001D0E50();
    v23 = sub_1001D1DE0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v37 = v23;
      v25 = v24;
      v44 = swift_slowAlloc();
      *v25 = 136315394;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v42 = sub_1001D23A0();
      v43 = v26;
      v45._countAndFlagsBits = 58;
      v45._object = 0xE100000000000000;
      sub_1001D18B0(v45);
      v27 = sub_1000954E0(v42, v43, &v44);

      *(v25 + 4) = v27;
      *(v25 + 12) = 2080;
      v28 = v41;
      sub_1001AFCB4(v41, v13, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      v29 = sub_1001D1820();
      v31 = v30;
      sub_1001AFB98(v28, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      v32 = sub_1000954E0(v29, v31, &v44);

      *(v25 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v22, v37, "%s unable to process rate limit configuration %s", v25, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1001AFB98(v41, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
    }

    v33 = 1;
    v34 = v38;
  }

  else
  {
    sub_1001B0368(v19, a3, type metadata accessor for RateLimitConfiguration);
    v33 = 0;
    v34 = a3;
  }

  return (*(v21 + 56))(v34, v33, 1, v20);
}

uint64_t sub_10017EFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 160) = a6;
  *(v7 + 88) = a4;
  *(v7 + 96) = a5;
  *(v7 + 72) = a2;
  *(v7 + 80) = a3;
  *(v7 + 104) = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest(0);
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 64) = a7;

  return _swift_task_switch(sub_10017F078, 0, 0);
}

uint64_t sub_10017F078()
{
  v30 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  *(swift_task_alloc() + 16) = v2;
  sub_1001B0458(&qword_1002299C0, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest, &protocol conformance descriptor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);
  sub_1001D0B50();

  result = sub_1001A89CC(v1, 0, 1, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest, &qword_1002299C0, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest, &protocol conformance descriptor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);
  *(v0 + 120) = result;
  *(v0 + 128) = v4;
  v5 = v4 >> 62;
  v25 = result;
  v26 = v4;
  if ((v4 >> 62) <= 1)
  {
    if (!v5)
    {
      v6 = BYTE6(v4);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v5 != 2)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v6 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_19:
      __break(1u);
      return result;
    }

    v6 = HIDWORD(result) - result;
  }

LABEL_11:
  v9 = *(v0 + 88);
  result = swift_beginAccess();
  v10 = *(v9 + 16);
  v11 = __OFSUB__(v10, v6);
  v12 = v10 - v6;
  if (v11)
  {
    __break(1u);
    goto LABEL_19;
  }

  *(*(v0 + 88) + 16) = v12;
  swift_retain_n();

  v13 = sub_1001D0E50();
  v14 = sub_1001D1DD0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 88);
    v24 = *(v0 + 96);
    v16 = *(v0 + 160);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v18;
    *v17 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v28 = sub_1001D23A0();
    v29 = v19;
    v32._countAndFlagsBits = 2629690;
    v32._object = 0xE300000000000000;
    sub_1001D18B0(v32);
    v33._countAndFlagsBits = sub_10016B71C(v24, v16);
    sub_1001D18B0(v33);

    v34._countAndFlagsBits = 41;
    v34._object = 0xE100000000000000;
    sub_1001D18B0(v34);
    v20 = sub_1000954E0(v28, v29, &v27);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2048;
    swift_beginAccess();
    v21 = *(v15 + 16);

    *(v17 + 14) = v21;

    _os_log_impl(&_mh_execute_header, v13, v14, "%s Sending auth message on data stream. Remaining budget before ready for more chunks: %ld", v17, 0x16u);
    sub_100011CF0(v18);
  }

  else
  {
  }

  sub_1001D1090();
  sub_100012038(v25, v26);
  v22 = sub_1001D1060();
  *(v0 + 136) = v22;
  v23 = swift_task_alloc();
  *(v0 + 144) = v23;
  *v23 = v0;
  v23[1] = sub_10017F584;

  return (sub_100138CDC)(v25, v26, v22, 0, &type metadata for NWAsyncConnection.Outbound, &protocol witness table for NWAsyncConnection.Outbound);
}

uint64_t sub_10017F584()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);

  sub_100011E48(v4, v3);
  if (v0)
  {
    v5 = sub_10017F778;
  }

  else
  {
    v5 = sub_10017F6EC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10017F6EC()
{
  v1 = v0[14];
  sub_100011E48(v0[15], v0[16]);
  sub_1001AFB98(v1, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10017F778()
{
  sub_100011E48(v0[15], v0[16]);
  sub_1001AFB98(v0[14], type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10017F804(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 336) = v14;
  *(v8 + 320) = v13;
  *(v8 + 304) = a8;
  *(v8 + 312) = v12;
  *(v8 + 617) = a7;
  *(v8 + 288) = a5;
  *(v8 + 296) = a6;
  *(v8 + 616) = a4;
  *(v8 + 272) = a2;
  *(v8 + 280) = a3;
  v9 = sub_1001D20D0();
  *(v8 + 344) = v9;
  *(v8 + 352) = *(v9 - 8);
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest(0);
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 200) = v12;

  return _swift_task_switch(sub_10017F920, 0, 0);
}

void sub_10017F920()
{
  v93 = v0;
  v1 = *(v0 + 288);
  *(v0 + 384) = *(*v1 + 392);

  v2 = sub_1001D0E50();
  v3 = sub_1001D1DD0();

  if (os_log_type_enabled(v2, v3))
  {
    v87 = *(v0 + 296);
    v4 = *(v0 + 617);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v90 = v6;
    *v5 = 136315138;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v91 = sub_1001D23A0();
    v92 = v7;
    v95._countAndFlagsBits = 2629690;
    v95._object = 0xE300000000000000;
    sub_1001D18B0(v95);
    v96._countAndFlagsBits = sub_10016B71C(v87, v4);
    sub_1001D18B0(v96);

    v97._countAndFlagsBits = 41;
    v97._object = 0xE100000000000000;
    sub_1001D18B0(v97);
    v8 = sub_1000954E0(v91, v92, &v90);

    *(v5 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Received user data to forward to server", v5, 0xCu);
    sub_100011CF0(v6);
  }

  if (*(v0 + 616) == 1)
  {
    v9 = *(v0 + 280);
    **(v0 + 304) = 1;
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 != 2 || *(*(v0 + 272) + 16) == *(*(v0 + 272) + 24))
      {
        goto LABEL_20;
      }
    }

    else if (v10)
    {
      if (*(v0 + 272) == *(v0 + 272) >> 32)
      {
LABEL_20:
        sub_1001D1090();
        v29 = sub_1001D1060();
        *(v0 + 392) = v29;
        v30 = swift_task_alloc();
        *(v0 + 400) = v30;
        *v30 = v0;
        v30[1] = sub_100180AF4;
        v31 = 0;
        v32 = 0xF000000000000000;
        v33 = v29;
        v34 = 1;
LABEL_81:

        (sub_100138CDC)(v31, v32, v33, v34, &type metadata for NWAsyncConnection.Outbound, &protocol witness table for NWAsyncConnection.Outbound);
        return;
      }
    }

    else if (!*(v0 + 286))
    {
      goto LABEL_20;
    }
  }

  v11 = *(v0 + 376);
  v12 = *(v0 + 280);
  v13 = *(v0 + 288);
  v14 = *(v0 + 272);
  v15 = swift_task_alloc();
  *(v15 + 16) = v14;
  *(v15 + 24) = v12;
  sub_1001B0458(&qword_1002299C0, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest, &protocol conformance descriptor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);
  sub_1001D0B50();

  v16 = sub_1001A89CC(v11, *(v13 + qword_100243500 + 24), 0, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest, &qword_1002299C0, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest, &protocol conformance descriptor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);
  *(v0 + 416) = v16;
  *(v0 + 424) = v17;
  v18 = v16;
  v19 = v17;
  v20 = *(v0 + 320);
  *(v0 + 432) = *(*(v0 + 288) + *(**(v0 + 288) + 368));
  sub_100164990();
  v21 = v19 >> 62;
  if (*v20)
  {

    v22 = sub_1001D0E50();
    LODWORD(v1) = sub_1001D1DD0();

    if (os_log_type_enabled(v22, v1))
    {
      v87 = *(v0 + 296);
      LODWORD(v86) = *(v0 + 617);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v90 = v24;
      *v23 = 136315138;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v91 = sub_1001D23A0();
      v92 = v25;
      v98._countAndFlagsBits = 2629690;
      v98._object = 0xE300000000000000;
      sub_1001D18B0(v98);
      v99._countAndFlagsBits = sub_10016B71C(v87, v86);
      sub_1001D18B0(v99);

      v100._countAndFlagsBits = 41;
      v100._object = 0xE100000000000000;
      sub_1001D18B0(v100);
      v26 = sub_1000954E0(v91, v92, &v90);

      *(v23 + 4) = v26;
      v21 = v19 >> 62;
      _os_log_impl(&_mh_execute_header, v22, v1, "%s Sending message on data stream, ready for more chunks received", v23, 0xCu);
      sub_100011CF0(v24);
    }

    if (v21 <= 1)
    {
      if (!v21)
      {
        v27 = BYTE6(v19);
LABEL_34:
        *(v0 + 440) = v27;
        *(v0 + 256) = *(v0 + 312);
        sub_1001D1090();
        v40 = sub_1001D1060();
        *(v0 + 448) = v40;
        v41 = swift_task_alloc();
        *(v0 + 456) = v41;
        *v41 = v0;
        v41[1] = sub_100180CC0;
        v34 = *(v0 + 616);
        v31 = v18;
        v32 = v19;
        v33 = v40;
        goto LABEL_81;
      }

      goto LABEL_29;
    }

    if (v21 != 2)
    {
      v27 = 0;
      goto LABEL_34;
    }

    v36 = *(v18 + 16);
    v35 = *(v18 + 24);
    v37 = __OFSUB__(v35, v36);
    v27 = v35 - v36;
    if (!v37)
    {
      goto LABEL_34;
    }

    __break(1u);
  }

  else if (v21 <= 1)
  {
    if (v21)
    {
      if (__OFSUB__(HIDWORD(v18), v18))
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v28 = HIDWORD(v18) - v18;
    }

    else
    {
      v28 = BYTE6(v19);
    }

    goto LABEL_36;
  }

  if (v21 == 2)
  {
    v39 = *(v18 + 16);
    v38 = *(v18 + 24);
    v28 = v38 - v39;
    if (__OFSUB__(v38, v39))
    {
      __break(1u);
LABEL_29:
      LODWORD(v27) = HIDWORD(v18) - v18;
      if (!__OFSUB__(HIDWORD(v18), v18))
      {
        v27 = v27;
        goto LABEL_34;
      }

      __break(1u);
      goto LABEL_85;
    }
  }

  else
  {
    v28 = 0;
  }

LABEL_36:
  v42 = *(v0 + 328);
  swift_beginAccess();
  v43 = *(v0 + 288);
  if (*(v42 + 16) >= v28)
  {
    swift_retain_n();

    v44 = sub_1001D0E50();
    v51 = sub_1001D1DD0();

    v52 = os_log_type_enabled(v44, v51);
    v53 = *(v0 + 328);
    if (v52)
    {
      v86 = *(v0 + 296);
      v89 = v51;
      v85 = *(v0 + 617);
      v43 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v90 = v87;
      *v43 = 136315394;
      LODWORD(v1) = v21;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v91 = sub_1001D23A0();
      v92 = v54;
      v104._countAndFlagsBits = 2629690;
      v104._object = 0xE300000000000000;
      sub_1001D18B0(v104);
      v105._countAndFlagsBits = sub_10016B71C(v86, v85);
      sub_1001D18B0(v105);

      v106._countAndFlagsBits = 41;
      v106._object = 0xE100000000000000;
      sub_1001D18B0(v106);
      v55 = sub_1000954E0(v91, v92, &v90);

      *(v43 + 4) = v55;
      *(v43 + 12) = 2048;
      swift_beginAccess();
      v56 = *(v53 + 16);

      *(v43 + 14) = v56;

      _os_log_impl(&_mh_execute_header, v44, v89, "%s Sending message on data stream, within initial budget: %ld", v43, 0x16u);
      sub_100011CF0(v87);
    }

    else
    {
    }

    if (v21 <= 1)
    {
      if (!v21)
      {
        v57 = BYTE6(v19);
        goto LABEL_59;
      }

LABEL_56:
      LODWORD(v57) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v57 = v57;
LABEL_59:
      *(v0 + 584) = v57;
      *(v0 + 208) = *(v0 + 312);
      sub_1001D1090();
      v62 = sub_1001D1060();
      *(v0 + 592) = v62;
      v63 = swift_task_alloc();
      *(v0 + 600) = v63;
      *v63 = v0;
      v63[1] = sub_100183394;
      v34 = *(v0 + 616);
      v31 = v18;
      v32 = v19;
      v33 = v62;
      goto LABEL_81;
    }

    if (v21 != 2)
    {
      v57 = 0;
      goto LABEL_59;
    }

    v59 = *(v18 + 16);
    v58 = *(v18 + 24);
    v37 = __OFSUB__(v58, v59);
    v57 = v58 - v59;
    if (!v37)
    {
      goto LABEL_59;
    }

    __break(1u);
  }

  else
  {
    sub_100012038(v18, v19);

    sub_100012038(v18, v19);

    v44 = sub_1001D0E50();
    v45 = sub_1001D1DD0();

    if (!os_log_type_enabled(v44, v45))
    {

      sub_100011E48(v18, v19);

      sub_100011E48(v18, v19);
      goto LABEL_64;
    }

    LOBYTE(v87) = v45;
    v88 = v21;
    v46 = *(v0 + 296);
    v47 = *(v0 + 617);
    v43 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v90 = v86;
    *v43 = 136315650;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v91 = sub_1001D23A0();
    v92 = v48;
    v101._countAndFlagsBits = 2629690;
    v101._object = 0xE300000000000000;
    sub_1001D18B0(v101);
    LODWORD(v1) = v88;
    v102._countAndFlagsBits = sub_10016B71C(v46, v47);
    sub_1001D18B0(v102);

    v103._countAndFlagsBits = 41;
    v103._object = 0xE100000000000000;
    sub_1001D18B0(v103);
    v49 = sub_1000954E0(v91, v92, &v90);

    *(v43 + 4) = v49;
    *(v43 + 12) = 2048;
    if (v88 <= 1)
    {
      if (v88)
      {
        sub_100011E48(v18, v19);
        LODWORD(v50) = HIDWORD(v18) - v18;
        if (__OFSUB__(HIDWORD(v18), v18))
        {
LABEL_88:
          __break(1u);
          return;
        }

        v50 = v50;
      }

      else
      {
        sub_100011E48(v18, v19);
        v50 = BYTE6(v19);
      }

      goto LABEL_63;
    }
  }

  if (v1 == 2)
  {
    v61 = *(v18 + 16);
    v60 = *(v18 + 24);
    sub_100011E48(v18, v19);
    v50 = v60 - v61;
    if (!__OFSUB__(v60, v61))
    {
      goto LABEL_63;
    }

    __break(1u);
    goto LABEL_56;
  }

  sub_100011E48(v18, v19);
  v50 = 0;
LABEL_63:
  v64 = *(v0 + 328);
  *(v43 + 14) = v50;
  sub_100011E48(v18, v19);
  *(v43 + 22) = 2048;
  swift_beginAccess();
  v65 = *(v64 + 16);

  *(v43 + 24) = v65;

  _os_log_impl(&_mh_execute_header, v44, v87, "%s Sending message on data stream (%ld bytes), above initial budget: %ld bytes", v43, 0x20u);
  sub_100011CF0(v86);

LABEL_64:

  v66 = *(v0 + 328);
  swift_beginAccess();
  v67 = *(v66 + 16);
  if (v67 >= 1)
  {
    sub_100012038(v18, v19);
    sub_10007A708(v67, v18, v19, &v91);
    v68 = v91;
    v69 = v92;
    *(v0 + 472) = v91;
    *(v0 + 480) = v69;
    v70 = v69 >> 62;
    if ((v69 >> 62) > 1)
    {
      if (v70 != 2)
      {
        v71 = 0;
        goto LABEL_80;
      }

      v82 = *(v68 + 16);
      v81 = *(v68 + 24);
      v37 = __OFSUB__(v81, v82);
      v71 = v81 - v82;
      if (!v37)
      {
        goto LABEL_80;
      }

      __break(1u);
    }

    else if (!v70)
    {
      v71 = BYTE6(v69);
      goto LABEL_80;
    }

    LODWORD(v71) = HIDWORD(v68) - v68;
    if (__OFSUB__(HIDWORD(v68), v68))
    {
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v71 = v71;
LABEL_80:
    *(v0 + 488) = v71;
    *(v0 + 240) = *(v0 + 312);
    sub_1001D1090();
    v83 = sub_1001D1060();
    *(v0 + 496) = v83;
    v84 = swift_task_alloc();
    *(v0 + 504) = v84;
    *v84 = v0;
    v84[1] = sub_100181654;
    v31 = v68;
    v32 = v69;
    v33 = v83;
    v34 = 0;
    goto LABEL_81;
  }

  sub_100012038(v18, v19);
  *(v0 + 528) = v19;
  *(v0 + 520) = v18;

  v72 = sub_1001D0E50();
  v73 = sub_1001D1DD0();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = *(v0 + 296);
    v75 = *(v0 + 617);
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v90 = v77;
    *v76 = 136315138;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v91 = sub_1001D23A0();
    v92 = v78;
    v107._countAndFlagsBits = 2629690;
    v107._object = 0xE300000000000000;
    sub_1001D18B0(v107);
    v108._countAndFlagsBits = sub_10016B71C(v74, v75);
    sub_1001D18B0(v108);

    v109._countAndFlagsBits = 41;
    v109._object = 0xE100000000000000;
    sub_1001D18B0(v109);
    v79 = sub_1000954E0(v91, v92, &v90);

    *(v76 + 4) = v79;
    _os_log_impl(&_mh_execute_header, v72, v73, "%s Waiting on ready for more chunks signal", v76, 0xCu);
    sub_100011CF0(v77);
  }

  v80 = swift_task_alloc();
  *(v0 + 536) = v80;
  *v80 = v0;
  v80[1] = sub_100182484;

  sub_10013F08C(v80);
}

uint64_t sub_100180AF4()
{
  v2 = *v1;
  *(v2 + 408) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100180C48, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100180C48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100180CC0()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_100181210;
  }

  else
  {
    v2 = sub_100180DE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100180DE4(uint64_t a1)
{
  v2 = v1[58];
  v3 = v1[54];
  v5 = v1[44];
  v4 = v1[45];
  v6 = v1[43];
  sub_1001428C0(a1, v2 != 0);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v5 + 8))(v4, v6);
  v7 = v1[23];
  v8 = v1[24];
  v9 = (v3 + *(*v3 + 144));
  os_unfair_lock_lock(v9);
  v10 = v9 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  result = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v12 = &v10[*(result + 96)];
  if (v2)
  {
    if ((v12[8] & 0xFE) != 2)
    {
      v12[8] = 3;
      swift_errorRetain();
    }

    v14 = v1[52];
    v13 = v1[53];
    v15 = v1[47];
    os_unfair_lock_unlock(v9);
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    v16 = swift_willThrowTypedImpl();
    sub_100142304(v16, 1);
    sub_100011E48(v14, v13);
    sub_1001AFB98(v15, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);

    v17 = v1[1];
    goto LABEL_17;
  }

  v18 = *v12;
  v19 = v12 + 8;
  if (v12[8] > 1u)
  {
    if (v12[8] - 2 >= 2)
    {
      if (!v18)
      {
        sub_1001D2030(49);

        v31._countAndFlagsBits = sub_10011C5EC(0, 4u);
        sub_1001D18B0(v31);

        v32._object = 0x80000001001E7630;
        v32._countAndFlagsBits = 0xD000000000000020;
        sub_1001D18B0(v32);
        return sub_1001D2180();
      }

      *v12 = v1[55];
      v12[8] = 0;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if (!v12[8])
  {
    v20 = v1[55];
    v21 = __OFADD__(v18, v20);
    v22 = v18 + v20;
    if (!v21)
    {
      v23 = 0;
      *v12 = v22;
LABEL_15:
      *v19 = v23;
      goto LABEL_16;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v24 = v1[55];
  v21 = __OFADD__(v18, v24);
  v25 = v18 + v24;
  if (v21)
  {
    goto LABEL_22;
  }

  *v12 = v25;
  v12[8] = 1;
  if (!v18)
  {
LABEL_14:
    v26 = &v10[*(result + 112)];
    *v26 = v7;
    *(v26 + 1) = v8;
    v19 = v26 + 16;
    v23 = 1;
    goto LABEL_15;
  }

LABEL_16:
  v28 = v1[52];
  v27 = v1[53];
  v29 = v1[47];
  os_unfair_lock_unlock(v9);
  sub_100011E48(v28, v27);
  sub_1001AFB98(v29, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);

  v17 = v1[1];
LABEL_17:

  return v17();
}

uint64_t sub_100181210()
{
  v1 = v0[58];
  v2 = v0[54];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[43];
  sub_1001428C0(v1, v1 != 0);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v4 + 8))(v3, v5);
  v6 = v0[23];
  v7 = v0[24];
  v8 = (v2 + *(*v2 + 144));
  os_unfair_lock_lock(v8);
  v9 = v8 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  result = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v11 = &v9[*(result + 96)];
  if (v1)
  {
    if ((v11[8] & 0xFE) != 2)
    {
      *v11 = v1;
      v11[8] = 3;
      swift_errorRetain();
    }

    v13 = v0[52];
    v12 = v0[53];
    v14 = v0[47];
    os_unfair_lock_unlock(v8);
    v0[33] = v1;
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    swift_willThrowTypedImpl();
    sub_100142304(v1, 1);
    sub_100011E48(v13, v12);
    sub_1001AFB98(v14, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);

    v15 = v0[1];
    goto LABEL_17;
  }

  v16 = *v11;
  v17 = v11 + 8;
  if (v11[8] > 1u)
  {
    if (v11[8] - 2 >= 2)
    {
      if (!v16)
      {
        sub_1001D2030(49);

        v29._countAndFlagsBits = sub_10011C5EC(0, 4u);
        sub_1001D18B0(v29);

        v30._object = 0x80000001001E7630;
        v30._countAndFlagsBits = 0xD000000000000020;
        sub_1001D18B0(v30);
        return sub_1001D2180();
      }

      *v11 = v0[55];
      v11[8] = 0;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if (!v11[8])
  {
    v18 = v0[55];
    v19 = __OFADD__(v16, v18);
    v20 = v16 + v18;
    if (!v19)
    {
      v21 = 0;
      *v11 = v20;
LABEL_15:
      *v17 = v21;
      goto LABEL_16;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v22 = v0[55];
  v19 = __OFADD__(v16, v22);
  v23 = v16 + v22;
  if (v19)
  {
    goto LABEL_22;
  }

  *v11 = v23;
  v11[8] = 1;
  if (!v16)
  {
LABEL_14:
    v24 = &v9[*(result + 112)];
    *v24 = v6;
    *(v24 + 1) = v7;
    v17 = v24 + 16;
    v21 = 1;
    goto LABEL_15;
  }

LABEL_16:
  v26 = v0[52];
  v25 = v0[53];
  v27 = v0[47];
  os_unfair_lock_unlock(v8);
  sub_100011E48(v26, v25);
  sub_1001AFB98(v27, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);

  v15 = v0[1];
LABEL_17:

  return v15();
}

uint64_t sub_100181654()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_100181DF0;
  }

  else
  {
    v2 = sub_100181778;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100181778(uint64_t a1)
{
  v50 = v1;
  v2 = *(v1 + 512);
  v3 = *(v1 + 432);
  v5 = *(v1 + 352);
  v4 = *(v1 + 360);
  v6 = *(v1 + 344);
  sub_1001428C0(a1, v2 != 0);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v5 + 8))(v4, v6);
  v7 = *(v1 + 168);
  v8 = *(v1 + 176);
  v9 = (v3 + *(*v3 + 144));
  os_unfair_lock_lock(v9);
  v10 = v9 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  v11 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v12 = &v10[*(v11 + 96)];
  if (v2)
  {
    if ((v12[8] & 0xFE) != 2)
    {
      v12[8] = 3;
      swift_errorRetain();
    }

    v14 = *(v1 + 472);
    v13 = *(v1 + 480);
    v16 = *(v1 + 416);
    v15 = *(v1 + 424);
    v17 = *(v1 + 376);
    os_unfair_lock_unlock(v9);
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    v18 = swift_willThrowTypedImpl();
    sub_100142304(v18, 1);
    sub_100011E48(v14, v13);
    sub_100011E48(v16, v15);
    sub_1001AFB98(v17, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);

    v19 = *(v1 + 8);

    v19();
    return;
  }

  v20 = *v12;
  v21 = v12 + 8;
  if (v12[8] > 1u)
  {
    if (v12[8] - 2 < 2)
    {
      goto LABEL_18;
    }

    if (!v20)
    {
      sub_1001D2030(49);

      *&v49 = 0x2064696C61766E49;
      *(&v49 + 1) = 0xEF203A6574617473;
      v55._countAndFlagsBits = sub_10011C5EC(0, 4u);
      sub_1001D18B0(v55);

      v56._object = 0x80000001001E7630;
      v56._countAndFlagsBits = 0xD000000000000020;
      sub_1001D18B0(v56);
      sub_1001D2180();
      return;
    }

    *v12 = *(v1 + 488);
    v12[8] = 0;
    goto LABEL_16;
  }

  if (!v12[8])
  {
    v22 = *(v1 + 488);
    v23 = __OFADD__(v20, v22);
    v24 = v20 + v22;
    if (v23)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    *v12 = v24;
    goto LABEL_17;
  }

  v25 = *(v1 + 488);
  v23 = __OFADD__(v20, v25);
  v26 = v20 + v25;
  if (v23)
  {
LABEL_36:
    __break(1u);
    return;
  }

  *v12 = v26;
  v12[8] = 1;
  if (!v20)
  {
LABEL_16:
    v27 = &v10[*(v11 + 112)];
    *v27 = v7;
    *(v27 + 1) = v8;
    v21 = v27 + 16;
LABEL_17:
    *v21 = 0;
  }

LABEL_18:
  v28 = *(v1 + 480) >> 62;
  os_unfair_lock_unlock(v9);
  if (v28 > 1)
  {
    if (v28 != 2)
    {
      v29 = 0;
      goto LABEL_28;
    }

    v30 = *(*(v1 + 472) + 16);
    v31 = *(*(v1 + 472) + 24);
    v29 = v31 - v30;
    if (!__OFSUB__(v31, v30))
    {
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v28)
  {
LABEL_25:
    v32 = *(v1 + 472);
    v33 = *(v1 + 476);
    v23 = __OFSUB__(v33, v32);
    v34 = v33 - v32;
    if (!v23)
    {
      v29 = v34;
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_35;
  }

  v29 = *(v1 + 486);
LABEL_28:
  v36 = *(v1 + 472);
  v35 = *(v1 + 480);
  v38 = *(v1 + 416);
  v37 = *(v1 + 424);
  sub_100012038(v38, v37);
  sub_100183E34(v29, v38, v37, &v49);
  sub_100011E48(v36, v35);
  *(v1 + 520) = v49;

  v39 = sub_1001D0E50();
  v40 = sub_1001D1DD0();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = *(v1 + 296);
    v42 = *(v1 + 617);
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v48 = v44;
    *v43 = 136315138;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    *&v49 = sub_1001D23A0();
    *(&v49 + 1) = v45;
    v52._countAndFlagsBits = 2629690;
    v52._object = 0xE300000000000000;
    sub_1001D18B0(v52);
    v53._countAndFlagsBits = sub_10016B71C(v41, v42);
    sub_1001D18B0(v53);

    v54._countAndFlagsBits = 41;
    v54._object = 0xE100000000000000;
    sub_1001D18B0(v54);
    v46 = sub_1000954E0(v49, *(&v49 + 1), &v48);

    *(v43 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v39, v40, "%s Waiting on ready for more chunks signal", v43, 0xCu);
    sub_100011CF0(v44);
  }

  v47 = swift_task_alloc();
  *(v1 + 536) = v47;
  *v47 = v1;
  v47[1] = sub_100182484;

  sub_10013F08C(v47);
}

void sub_100181DF0()
{
  v48 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 432);
  v4 = *(v0 + 352);
  v3 = *(v0 + 360);
  v5 = *(v0 + 344);
  sub_1001428C0(v1, v1 != 0);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  v8 = (v2 + *(*v2 + 144));
  os_unfair_lock_lock(v8);
  v9 = v8 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  v10 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v11 = &v9[*(v10 + 96)];
  if (v1)
  {
    if ((v11[8] & 0xFE) != 2)
    {
      *v11 = v1;
      v11[8] = 3;
      swift_errorRetain();
    }

    v13 = *(v0 + 472);
    v12 = *(v0 + 480);
    v15 = *(v0 + 416);
    v14 = *(v0 + 424);
    v16 = *(v0 + 376);
    os_unfair_lock_unlock(v8);
    *(v0 + 248) = v1;
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    swift_willThrowTypedImpl();
    sub_100142304(v1, 1);
    sub_100011E48(v13, v12);
    sub_100011E48(v15, v14);
    sub_1001AFB98(v16, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);

    v17 = *(v0 + 8);

    v17();
    return;
  }

  v18 = *v11;
  v19 = v11 + 8;
  if (v11[8] > 1u)
  {
    if (v11[8] - 2 < 2)
    {
      goto LABEL_18;
    }

    if (!v18)
    {
      sub_1001D2030(49);

      *&v47 = 0x2064696C61766E49;
      *(&v47 + 1) = 0xEF203A6574617473;
      v53._countAndFlagsBits = sub_10011C5EC(0, 4u);
      sub_1001D18B0(v53);

      v54._object = 0x80000001001E7630;
      v54._countAndFlagsBits = 0xD000000000000020;
      sub_1001D18B0(v54);
      sub_1001D2180();
      return;
    }

    *v11 = *(v0 + 488);
    v11[8] = 0;
    goto LABEL_16;
  }

  if (!v11[8])
  {
    v20 = *(v0 + 488);
    v21 = __OFADD__(v18, v20);
    v22 = v18 + v20;
    if (v21)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    *v11 = v22;
    goto LABEL_17;
  }

  v23 = *(v0 + 488);
  v21 = __OFADD__(v18, v23);
  v24 = v18 + v23;
  if (v21)
  {
LABEL_36:
    __break(1u);
    return;
  }

  *v11 = v24;
  v11[8] = 1;
  if (!v18)
  {
LABEL_16:
    v25 = &v9[*(v10 + 112)];
    *v25 = v6;
    *(v25 + 1) = v7;
    v19 = v25 + 16;
LABEL_17:
    *v19 = 0;
  }

LABEL_18:
  v26 = *(v0 + 480) >> 62;
  os_unfair_lock_unlock(v8);
  if (v26 > 1)
  {
    if (v26 != 2)
    {
      v27 = 0;
      goto LABEL_28;
    }

    v28 = *(*(v0 + 472) + 16);
    v29 = *(*(v0 + 472) + 24);
    v27 = v29 - v28;
    if (!__OFSUB__(v29, v28))
    {
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v26)
  {
LABEL_25:
    v30 = *(v0 + 472);
    v31 = *(v0 + 476);
    v21 = __OFSUB__(v31, v30);
    v32 = v31 - v30;
    if (!v21)
    {
      v27 = v32;
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_35;
  }

  v27 = *(v0 + 486);
LABEL_28:
  v34 = *(v0 + 472);
  v33 = *(v0 + 480);
  v36 = *(v0 + 416);
  v35 = *(v0 + 424);
  sub_100012038(v36, v35);
  sub_100183E34(v27, v36, v35, &v47);
  sub_100011E48(v34, v33);
  *(v0 + 520) = v47;

  v37 = sub_1001D0E50();
  v38 = sub_1001D1DD0();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = *(v0 + 296);
    v40 = *(v0 + 617);
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v46 = v42;
    *v41 = 136315138;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    *&v47 = sub_1001D23A0();
    *(&v47 + 1) = v43;
    v50._countAndFlagsBits = 2629690;
    v50._object = 0xE300000000000000;
    sub_1001D18B0(v50);
    v51._countAndFlagsBits = sub_10016B71C(v39, v40);
    sub_1001D18B0(v51);

    v52._countAndFlagsBits = 41;
    v52._object = 0xE100000000000000;
    sub_1001D18B0(v52);
    v44 = sub_1000954E0(v47, *(&v47 + 1), &v46);

    *(v41 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v37, v38, "%s Waiting on ready for more chunks signal", v41, 0xCu);
    sub_100011CF0(v42);
  }

  v45 = swift_task_alloc();
  *(v0 + 536) = v45;
  *v45 = v0;
  v45[1] = sub_100182484;

  sub_10013F08C(v45);
}

uint64_t sub_100182484()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_1001828F8;
  }

  else
  {
    v2 = sub_100182598;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100182598()
{
  v25 = v0;
  **(v0 + 320) = 1;

  v1 = sub_1001D0E50();
  v2 = sub_1001D1DD0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 296);
    v4 = *(v0 + 617);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315138;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23 = sub_1001D23A0();
    v24 = v7;
    v27._countAndFlagsBits = 2629690;
    v27._object = 0xE300000000000000;
    sub_1001D18B0(v27);
    v28._countAndFlagsBits = sub_10016B71C(v3, v4);
    sub_1001D18B0(v28);

    v29._countAndFlagsBits = 41;
    v29._object = 0xE100000000000000;
    sub_1001D18B0(v29);
    v8 = sub_1000954E0(v23, v24, &v22);

    *(v5 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s Ready for more chunks received", v5, 0xCu);
    sub_100011CF0(v6);
  }

  v9 = *(v0 + 528);
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      v11 = 0;
      goto LABEL_13;
    }

    v12 = *(*(v0 + 520) + 16);
    v13 = *(*(v0 + 520) + 24);
    v14 = __OFSUB__(v13, v12);
    v11 = v13 - v12;
    if (!v14)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v11 = BYTE6(v9);
    goto LABEL_13;
  }

  v15 = *(v0 + 520);
  v16 = *(v0 + 524);
  v14 = __OFSUB__(v16, v15);
  LODWORD(v11) = v16 - v15;
  if (v14)
  {
    __break(1u);
    return;
  }

  v11 = v11;
LABEL_13:
  *(v0 + 552) = v11;
  *(v0 + 224) = *(v0 + 312);
  sub_1001D1090();
  v17 = sub_1001D1060();
  *(v0 + 560) = v17;
  v18 = swift_task_alloc();
  *(v0 + 568) = v18;
  *v18 = v0;
  v18[1] = sub_1001829AC;
  v19 = *(v0 + 528);
  v20 = *(v0 + 520);
  v21 = *(v0 + 616);

  (sub_100138CDC)(v20, v19, v17, v21, &type metadata for NWAsyncConnection.Outbound, &protocol witness table for NWAsyncConnection.Outbound);
}

uint64_t sub_1001828F8()
{
  v1 = v0[52];
  v2 = v0[53];
  v3 = v0[47];
  sub_100011E48(v0[65], v0[66]);
  sub_100011E48(v1, v2);
  sub_1001AFB98(v3, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001829AC()
{
  *(*v1 + 576) = v0;

  if (v0)
  {
    v2 = sub_100182F2C;
  }

  else
  {
    v2 = sub_100182AE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100182AE0(uint64_t a1)
{
  v2 = v1[72];
  v3 = v1[54];
  v5 = v1[44];
  v4 = v1[45];
  v6 = v1[43];
  sub_1001428C0(a1, v2 != 0);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v5 + 8))(v4, v6);
  v7 = v1[19];
  v8 = v1[20];
  v9 = (v3 + *(*v3 + 144));
  os_unfair_lock_lock(v9);
  v10 = v9 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  result = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v12 = &v10[*(result + 96)];
  if (v2)
  {
    if ((v12[8] & 0xFE) != 2)
    {
      v12[8] = 3;
      swift_errorRetain();
    }

    v13 = v1[66];
    v14 = v1[65];
    v16 = v1[52];
    v15 = v1[53];
    v17 = v1[47];
    os_unfair_lock_unlock(v9);
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    v18 = swift_willThrowTypedImpl();
    sub_100142304(v18, 1);
    sub_100011E48(v14, v13);
    sub_100011E48(v16, v15);
    sub_1001AFB98(v17, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);

    v19 = v1[1];
    goto LABEL_17;
  }

  v20 = *v12;
  v21 = v12 + 8;
  if (v12[8] > 1u)
  {
    if (v12[8] - 2 >= 2)
    {
      if (!v20)
      {
        sub_1001D2030(49);

        v34._countAndFlagsBits = sub_10011C5EC(0, 4u);
        sub_1001D18B0(v34);

        v35._object = 0x80000001001E7630;
        v35._countAndFlagsBits = 0xD000000000000020;
        sub_1001D18B0(v35);
        return sub_1001D2180();
      }

      *v12 = v1[69];
      v12[8] = 0;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if (!v12[8])
  {
    v22 = v1[69];
    v23 = __OFADD__(v20, v22);
    v24 = v20 + v22;
    if (!v23)
    {
      *v12 = v24;
LABEL_15:
      *v21 = 0;
      goto LABEL_16;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v25 = v1[69];
  v23 = __OFADD__(v20, v25);
  v26 = v20 + v25;
  if (v23)
  {
    goto LABEL_22;
  }

  *v12 = v26;
  v12[8] = 1;
  if (!v20)
  {
LABEL_14:
    v27 = &v10[*(result + 112)];
    *v27 = v7;
    *(v27 + 1) = v8;
    v21 = v27 + 16;
    goto LABEL_15;
  }

LABEL_16:
  v28 = v1[66];
  v29 = v1[65];
  v31 = v1[52];
  v30 = v1[53];
  v32 = v1[47];
  os_unfair_lock_unlock(v9);
  sub_100011E48(v29, v28);
  sub_100011E48(v31, v30);
  sub_1001AFB98(v32, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);

  v19 = v1[1];
LABEL_17:

  return v19();
}

uint64_t sub_100182F2C()
{
  v1 = v0[72];
  v2 = v0[54];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[43];
  sub_1001428C0(v1, v1 != 0);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v4 + 8))(v3, v5);
  v6 = v0[19];
  v7 = v0[20];
  v8 = (v2 + *(*v2 + 144));
  os_unfair_lock_lock(v8);
  v9 = v8 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  result = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v11 = &v9[*(result + 96)];
  if (v1)
  {
    if ((v11[8] & 0xFE) != 2)
    {
      *v11 = v1;
      v11[8] = 3;
      swift_errorRetain();
    }

    v12 = v0[66];
    v13 = v0[65];
    v15 = v0[52];
    v14 = v0[53];
    v16 = v0[47];
    os_unfair_lock_unlock(v8);
    v0[29] = v1;
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    swift_willThrowTypedImpl();
    sub_100142304(v1, 1);
    sub_100011E48(v13, v12);
    sub_100011E48(v15, v14);
    sub_1001AFB98(v16, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);

    v17 = v0[1];
    goto LABEL_17;
  }

  v18 = *v11;
  v19 = v11 + 8;
  if (v11[8] > 1u)
  {
    if (v11[8] - 2 >= 2)
    {
      if (!v18)
      {
        sub_1001D2030(49);

        v32._countAndFlagsBits = sub_10011C5EC(0, 4u);
        sub_1001D18B0(v32);

        v33._object = 0x80000001001E7630;
        v33._countAndFlagsBits = 0xD000000000000020;
        sub_1001D18B0(v33);
        return sub_1001D2180();
      }

      *v11 = v0[69];
      v11[8] = 0;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if (!v11[8])
  {
    v20 = v0[69];
    v21 = __OFADD__(v18, v20);
    v22 = v18 + v20;
    if (!v21)
    {
      *v11 = v22;
LABEL_15:
      *v19 = 0;
      goto LABEL_16;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v23 = v0[69];
  v21 = __OFADD__(v18, v23);
  v24 = v18 + v23;
  if (v21)
  {
    goto LABEL_22;
  }

  *v11 = v24;
  v11[8] = 1;
  if (!v18)
  {
LABEL_14:
    v25 = &v9[*(result + 112)];
    *v25 = v6;
    *(v25 + 1) = v7;
    v19 = v25 + 16;
    goto LABEL_15;
  }

LABEL_16:
  v26 = v0[66];
  v27 = v0[65];
  v29 = v0[52];
  v28 = v0[53];
  v30 = v0[47];
  os_unfair_lock_unlock(v8);
  sub_100011E48(v27, v26);
  sub_100011E48(v29, v28);
  sub_1001AFB98(v30, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);

  v17 = v0[1];
LABEL_17:

  return v17();
}

uint64_t sub_100183394()
{
  *(*v1 + 608) = v0;

  if (v0)
  {
    v2 = sub_100183968;
  }

  else
  {
    v2 = sub_1001834B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001834B8(uint64_t a1)
{
  v2 = v1[76];
  v3 = v1[54];
  v5 = v1[44];
  v4 = v1[45];
  v6 = v1[43];
  sub_1001428C0(a1, v2 != 0);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v5 + 8))(v4, v6);
  v7 = v1[17];
  v8 = v1[18];
  v9 = (v3 + *(*v3 + 144));
  os_unfair_lock_lock(v9);
  v10 = v9 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  result = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v12 = &v10[*(result + 96)];
  if (v2)
  {
    if ((v12[8] & 0xFE) != 2)
    {
      v12[8] = 3;
      swift_errorRetain();
    }

    v14 = v1[52];
    v13 = v1[53];
    v15 = v1[47];
    os_unfair_lock_unlock(v9);
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    v16 = swift_willThrowTypedImpl();
    sub_100142304(v16, 1);
    sub_100011E48(v14, v13);
    sub_1001AFB98(v15, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);

    v17 = v1[1];
    goto LABEL_27;
  }

  v18 = *v12;
  if (v12[8] > 1u)
  {
    if (v12[8] - 2 < 2)
    {
      goto LABEL_15;
    }

    if (!v18)
    {
      sub_1001D2030(49);

      v39._countAndFlagsBits = sub_10011C5EC(0, 4u);
      sub_1001D18B0(v39);

      v40._object = 0x80000001001E7630;
      v40._countAndFlagsBits = 0xD000000000000020;
      sub_1001D18B0(v40);
      return sub_1001D2180();
    }

    *v12 = v1[73];
    v12[8] = 0;
    goto LABEL_14;
  }

  if (v12[8])
  {
    v22 = v1[73];
    v20 = __OFADD__(v18, v22);
    v23 = v18 + v22;
    if (v20)
    {
LABEL_34:
      __break(1u);
      return result;
    }

    *v12 = v23;
    v12[8] = 1;
    if (!v18)
    {
LABEL_14:
      v24 = &v10[*(result + 112)];
      *v24 = v7;
      *(v24 + 1) = v8;
      v24[16] = 1;
    }
  }

  else
  {
    v19 = v1[73];
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    *v12 = v21;
    v12[8] = 0;
  }

LABEL_15:
  v25 = v1[47];
  v26 = v1[53] >> 62;
  os_unfair_lock_unlock(v9);
  sub_1001AFB98(v25, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);
  v27 = v1[52];
  v28 = v1[53];
  if (v26 <= 1)
  {
    if (!v26)
    {
      v29 = v1[53];
      sub_100011E48(v27, v28);
      v30 = BYTE6(v29);
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (v26 != 2)
  {
    sub_100011E48(v27, v28);
    v30 = 0;
    goto LABEL_25;
  }

  v31 = *(v27 + 16);
  v32 = *(v27 + 24);
  v27 = sub_100011E48(v27, v28);
  v20 = __OFSUB__(v32, v31);
  v30 = v32 - v31;
  if (v20)
  {
    __break(1u);
LABEL_22:
    v33 = HIDWORD(v27);
    v34 = v27;
    result = sub_100011E48(v27, v28);
    if (__OFSUB__(v33, v34))
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v30 = v33 - v34;
  }

LABEL_25:
  v35 = v1[41];
  result = swift_beginAccess();
  v36 = *(v35 + 16);
  v20 = __OFSUB__(v36, v30);
  v37 = v36 - v30;
  if (v20)
  {
    __break(1u);
    goto LABEL_32;
  }

  *(v1[41] + 16) = v37;

  v17 = v1[1];
LABEL_27:

  return v17();
}

uint64_t sub_100183968()
{
  v1 = v0[76];
  v2 = v0[54];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[43];
  sub_1001428C0(v1, v1 != 0);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v4 + 8))(v3, v5);
  v6 = v0[17];
  v7 = v0[18];
  v8 = (v2 + *(*v2 + 144));
  os_unfair_lock_lock(v8);
  v9 = v8 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  result = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v11 = &v9[*(result + 96)];
  if (v1)
  {
    if ((v11[8] & 0xFE) != 2)
    {
      *v11 = v1;
      v11[8] = 3;
      swift_errorRetain();
    }

    v13 = v0[52];
    v12 = v0[53];
    v14 = v0[47];
    os_unfair_lock_unlock(v8);
    v0[27] = v1;
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    swift_willThrowTypedImpl();
    sub_100142304(v1, 1);
    sub_100011E48(v13, v12);
    sub_1001AFB98(v14, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);

    v15 = v0[1];
    goto LABEL_27;
  }

  v16 = *v11;
  if (v11[8] > 1u)
  {
    if (v11[8] - 2 < 2)
    {
      goto LABEL_15;
    }

    if (!v16)
    {
      sub_1001D2030(49);

      v37._countAndFlagsBits = sub_10011C5EC(0, 4u);
      sub_1001D18B0(v37);

      v38._object = 0x80000001001E7630;
      v38._countAndFlagsBits = 0xD000000000000020;
      sub_1001D18B0(v38);
      return sub_1001D2180();
    }

    *v11 = v0[73];
    v11[8] = 0;
    goto LABEL_14;
  }

  if (v11[8])
  {
    v20 = v0[73];
    v18 = __OFADD__(v16, v20);
    v21 = v16 + v20;
    if (v18)
    {
LABEL_34:
      __break(1u);
      return result;
    }

    *v11 = v21;
    v11[8] = 1;
    if (!v16)
    {
LABEL_14:
      v22 = &v9[*(result + 112)];
      *v22 = v6;
      *(v22 + 1) = v7;
      v22[16] = 1;
    }
  }

  else
  {
    v17 = v0[73];
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    *v11 = v19;
    v11[8] = 0;
  }

LABEL_15:
  v23 = v0[47];
  v24 = v0[53] >> 62;
  os_unfair_lock_unlock(v8);
  sub_1001AFB98(v23, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);
  v25 = v0[52];
  v26 = v0[53];
  if (v24 <= 1)
  {
    if (!v24)
    {
      v27 = v0[53];
      sub_100011E48(v25, v26);
      v28 = BYTE6(v27);
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (v24 != 2)
  {
    sub_100011E48(v25, v26);
    v28 = 0;
    goto LABEL_25;
  }

  v29 = *(v25 + 16);
  v30 = *(v25 + 24);
  v25 = sub_100011E48(v25, v26);
  v18 = __OFSUB__(v30, v29);
  v28 = v30 - v29;
  if (v18)
  {
    __break(1u);
LABEL_22:
    v31 = HIDWORD(v25);
    v32 = v25;
    result = sub_100011E48(v25, v26);
    if (__OFSUB__(v31, v32))
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v28 = v31 - v32;
  }

LABEL_25:
  v33 = v0[41];
  result = swift_beginAccess();
  v34 = *(v33 + 16);
  v18 = __OFSUB__(v34, v28);
  v35 = v34 - v28;
  if (v18)
  {
    __break(1u);
    goto LABEL_32;
  }

  *(v0[41] + 16) = v35;

  v15 = v0[1];
LABEL_27:

  return v15();
}

unint64_t sub_100183E34@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_100088598(v10, v9, a2, a3);
    if (!v6 || v11 >= v6)
    {
      v12 = sub_100088534(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v14 = sub_1001CFBC0();
    v16 = v15;
    result = sub_100011E48(a2, a3);
    *a4 = v14;
    a4[1] = v16;
  }

  return result;
}

void sub_100183F84(uint64_t a1)
{

  oslog = sub_1001D0E50();
  v1 = sub_1001D1DD0();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v9 = v3;
    *v2 = 136315138;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v7 = sub_1001D23A0();
    v8 = v4;
    v11._countAndFlagsBits = 58;
    v11._object = 0xE100000000000000;
    sub_1001D18B0(v11);
    v5 = sub_1000954E0(v7, v8, &v9);

    *(v2 + 4) = v5;
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s Leaving runNodesStreams", v2, 0xCu);
    sub_100011CF0(v3);
  }
}

uint64_t sub_100184120(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000130E0;

  return sub_1001841BC(a1, a2);
}

uint64_t sub_1001841BC(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v2[6] = type metadata accessor for ThimbledEvent(0);
  v2[7] = swift_task_alloc();
  v3 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = sub_100011AC0(&qword_10022FE68, &qword_1001E1A70);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100184320, 0, 0);
}

uint64_t sub_100184320()
{
  v1 = sub_100008F3C(0, 32, 0, _swiftEmptyArrayStorage);
  sub_100011AC0(&qword_10022FDB8, &qword_1001E1888);
  sub_1001D1BF0();
  v0[14] = v1;
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_100184414;
  v3 = v0[11];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v3);
}

uint64_t sub_100184414()
{

  return _swift_task_switch(sub_100184510, 0, 0);
}

uint64_t sub_100184510()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 112);
  if (v1)
  {
    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    if (v5 >= v4 >> 1)
    {
      v3 = sub_100008F3C((v4 > 1), v5 + 1, 1, *(v0 + 112));
    }

    *(v3 + 2) = v5 + 1;
    v6 = &v3[16 * v5];
    *(v6 + 4) = v2;
    *(v6 + 5) = v1;
    *(v0 + 112) = v3;
    v7 = swift_task_alloc();
    *(v0 + 120) = v7;
    *v7 = v0;
    v7[1] = sub_100184414;
    v8 = *(v0 + 88);

    return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v8);
  }

  else
  {
    v9 = *(v0 + 80);
    v10 = *(v0 + 64);
    v11 = *(v0 + 72);
    v12 = *(v0 + 56);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    *v12 = v3;
    *(v12 + 8) = 2;
    swift_storeEnumTagMultiPayload();
    sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
    sub_1001D1BC0();
    (*(v11 + 8))(v9, v10);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_100184730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[125] = a8;
  v8[124] = a7;
  v8[123] = a6;
  v8[122] = a5;
  v8[121] = a4;
  v8[120] = a3;
  v8[119] = a2;
  v8[118] = a1;
  v9 = *(type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) - 8);
  v8[126] = v9;
  v8[127] = *(v9 + 64);
  v8[128] = swift_task_alloc();
  v10 = sub_100011AC0(&qword_10022FDB0, &qword_1001E1880);
  v8[129] = v10;
  v11 = *(v10 - 8);
  v8[130] = v11;
  v8[131] = *(v11 + 64);
  v8[132] = swift_task_alloc();
  sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  v8[133] = swift_task_alloc();
  type metadata accessor for ValidatedAttestation(0);
  v8[134] = swift_task_alloc();
  v12 = type metadata accessor for ValidatedAttestationOrAttestation(0);
  v8[135] = v12;
  v13 = *(v12 - 8);
  v8[136] = v13;
  v8[137] = *(v13 + 64);
  v8[138] = swift_task_alloc();
  v8[139] = swift_task_alloc();
  v8[140] = swift_task_alloc();
  v8[141] = swift_task_alloc();
  v8[142] = swift_task_alloc();
  v8[143] = swift_task_alloc();
  v8[144] = swift_task_alloc();
  v8[145] = swift_task_alloc();
  v8[146] = swift_task_alloc();
  v8[147] = swift_task_alloc();
  v8[148] = swift_task_alloc();
  v8[149] = swift_task_alloc();
  v8[150] = swift_task_alloc();
  sub_100011AC0(&qword_10022FDC8, &qword_1001E18D8);
  v8[151] = swift_task_alloc();
  v14 = sub_100011AC0(&qword_10022FDD0, &unk_1001E18E0);
  v8[152] = v14;
  v8[153] = *(v14 - 8);
  v8[154] = swift_task_alloc();
  type metadata accessor for NodeStreamController.StateMachine(0);
  v8[155] = swift_task_alloc();

  return _swift_task_switch(sub_100184AA4, 0, 0);
}

uint64_t sub_100184AA4()
{
  v1 = *(v0 + 952);
  v2 = qword_100243500;
  *(v0 + 1248) = qword_100243500;
  LOBYTE(v2) = *(v1 + v2 + 72);
  *(v0 + 705) = v2;
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v4 = *(v0 + 1240);
    type metadata accessor for NodeStreamController(0);
    v3 = swift_allocObject();
    v5 = (v3 + OBJC_IVAR____TtC20privatecloudcomputed20NodeStreamController_stateLock);
    *v4 = sub_1000DB568(_swiftEmptyArrayStorage);
    type metadata accessor for NodeStreamController.StateMachine.State(0);
    swift_storeEnumTagMultiPayload();
    *v5 = 0;
    v6 = *(sub_100011AC0(&qword_10022D550, &qword_1001DE508) + 28);
    v7 = sub_100011AC0(&qword_10022FDD8, &qword_1001E18F0);
    bzero(v5 + v6, *(*(v7 - 8) + 64));
    sub_1001B0368(v4, v5 + v6, type metadata accessor for NodeStreamController.StateMachine);
    v1 = *(v0 + 952);
  }

  *(v0 + 1256) = v3;
  *(v0 + 936) = &_swiftEmptySetSingleton;
  *(v0 + 928) = &_swiftEmptySetSingleton;
  sub_100011AC0(&qword_10022FDE0, &qword_1001E18F8);
  sub_1001D1CD0(32);
  sub_1001D1CD0(32);
  sub_100011AC0(&qword_10022FD30, &qword_1001E1720);
  sub_1001D1BF0();
  *(v0 + 1264) = *(*v1 + 392);
  *(v0 + 1272) = qword_1002434F8;
  v8 = swift_task_alloc();
  *(v0 + 1280) = v8;
  *v8 = v0;
  v8[1] = sub_100184CE4;
  v9 = *(v0 + 1216);
  v10 = *(v0 + 1208);

  return AsyncStream.Iterator.next(isolation:)(v10, 0, 0, v9);
}

uint64_t sub_100184CE4()
{

  return _swift_task_switch(sub_100184DE0, 0, 0);
}

uint64_t sub_100184DE0()
{
  v162 = v0;
  v1 = *(v0 + 1208);
  if ((*(*(v0 + 1088) + 48))(v1, 1, *(v0 + 1080)) == 1)
  {
    (*(*(v0 + 1224) + 8))(*(v0 + 1232), *(v0 + 1216));

    v2 = *(v0 + 936);
    *(v0 + 1288) = v2;
    swift_bridgeObjectRetain_n();

    v3 = sub_1001D0E50();
    v4 = sub_1001D1DD0();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v159 = v6;
      *v5 = 136315394;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v160 = sub_1001D23A0();
      v161 = v7;
      v164._countAndFlagsBits = 58;
      v164._object = 0xE100000000000000;
      sub_1001D18B0(v164);
      v8 = sub_1000954E0(v160, v161, &v159);

      *(v5 + 4) = v8;
      *(v5 + 12) = 2048;
      v9 = *(v2 + 16);

      *(v5 + 14) = v9;

      _os_log_impl(&_mh_execute_header, v3, v4, "%s Not expecting more attestations. Running with %ld attestations", v5, 0x16u);
      sub_100011CF0(v6);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v23 = sub_1000DB760(_swiftEmptyArrayStorage);
    v24 = swift_allocObject();
    *(v0 + 1296) = v24;
    *(v24 + 16) = 0;
    *(v0 + 1304) = 0;
    *(v0 + 1320) = _swiftEmptyArrayStorage;
    *(v0 + 1312) = v23;
    *(v0 + 706) = 0;
    *(v0 + 1328) = 0;
    v25 = swift_task_alloc();
    *(v0 + 1336) = v25;
    v22 = sub_100011AC0(&qword_10022FDE8, &qword_1001E1900);
    *v25 = v0;
    v25[1] = sub_100186234;
    v19 = v0 + 688;
    v20 = 0;
    v21 = 0;

    return TaskGroup.next(isolation:)(v19, v20, v21, v22);
  }

  v10 = *(v0 + 1200);
  v11 = *(v0 + 1192);
  sub_1001B0368(v1, v10, type metadata accessor for ValidatedAttestationOrAttestation);
  sub_1001AFCB4(v10, v11, type metadata accessor for ValidatedAttestationOrAttestation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = *(v0 + 1192);
  if (EnumCaseMultiPayload == 1)
  {
    v14 = *(v13 + 16);
    *(v0 + 208) = *v13;
    *(v0 + 224) = v14;
    v15 = *(v13 + 32);
    v16 = *(v13 + 48);
    v17 = *(v13 + 80);
    *(v0 + 272) = *(v13 + 64);
    *(v0 + 288) = v17;
    *(v0 + 240) = v15;
    *(v0 + 256) = v16;
    v18 = *(v13 + 96);
    v19 = sub_10005AF88(v0 + 208);
  }

  else
  {
    v18 = *(v13 + *(sub_100011AC0(qword_10022E650, &unk_1001DF500) + 48));
    v19 = sub_1001AFB98(v13, type metadata accessor for ValidatedAttestation);
  }

  if (v18 < 0)
  {
    __break(1u);
    return TaskGroup.next(isolation:)(v19, v20, v21, v22);
  }

  v26 = *(v0 + 1184);
  sub_1001AFCB4(*(v0 + 1200), v26, type metadata accessor for ValidatedAttestationOrAttestation);
  v27 = swift_getEnumCaseMultiPayload();
  sub_1001AFB98(v26, type metadata accessor for ValidatedAttestationOrAttestation);
  if (v27 == 1)
  {
    v28 = *(*(v0 + 928) + 16);
    if (v28 >= *(*(v0 + 952) + *(v0 + 1248) + 16))
    {
      sub_1001AFCB4(*(v0 + 1200), *(v0 + 1168), type metadata accessor for ValidatedAttestationOrAttestation);
      swift_retain_n();
      v37 = sub_1001D0E50();
      v38 = sub_1001D1DE0();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = *(v0 + 1104);
        v154 = *(v0 + 1168);
        v40 = swift_slowAlloc();
        *(v0 + 888) = swift_slowAlloc();
        *v40 = 136315906;
        sub_1001CFDA0();
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        *(v0 + 744) = sub_1001D23A0();
        *(v0 + 752) = v41;
        v165._countAndFlagsBits = 2629690;
        v165._object = 0xE300000000000000;
        sub_1001D18B0(v165);
        *(v0 + 728) = 0x202C65646F6ELL;
        *(v0 + 736) = 0xE600000000000000;
        *(v0 + 912) = v18;
        v166._countAndFlagsBits = sub_1001D23A0();
        sub_1001D18B0(v166);

        sub_1001D18B0(*(v0 + 728));

        v167._countAndFlagsBits = 41;
        v167._object = 0xE100000000000000;
        sub_1001D18B0(v167);
        v42 = sub_1000954E0(*(v0 + 744), *(v0 + 752), (v0 + 888));

        *(v40 + 4) = v42;
        *(v40 + 12) = 2080;
        sub_1001B0368(v154, v39, type metadata accessor for ValidatedAttestationOrAttestation);
        v43 = swift_getEnumCaseMultiPayload();
        v44 = *(v0 + 1104);
        if (v43 == 1)
        {
          v45 = v44[1];
          *(v0 + 112) = *v44;
          *(v0 + 128) = v45;
          v46 = v44[2];
          v47 = v44[3];
          v48 = v44[5];
          *(v0 + 176) = v44[4];
          *(v0 + 192) = v48;
          *(v0 + 144) = v46;
          *(v0 + 160) = v47;
          v50 = *(v0 + 112);
          v49 = *(v0 + 120);

          sub_10005AF88(v0 + 112);
        }

        else
        {
          v128 = *(v0 + 1072);
          sub_1001B0368(v44, v128, type metadata accessor for ValidatedAttestation);
          v50 = *v128;
          v49 = v128[1];

          sub_1001AFB98(v128, type metadata accessor for ValidatedAttestation);
        }

        v126 = *(v0 + 1200);
        v129 = *(v0 + 952) + *(v0 + 1248);
        v130 = sub_1000954E0(v50, v49, (v0 + 888));

        *(v40 + 14) = v130;
        *(v40 + 22) = 2048;
        *(v40 + 24) = v28;
        *(v40 + 32) = 2048;
        v131 = *(v129 + 8);

        *(v40 + 34) = v131;

        _os_log_impl(&_mh_execute_header, v37, v38, "%s ignoring node %s; already have %ld attestations out of %ld max", v40, 0x2Au);
        goto LABEL_53;
      }

      v123 = *(v0 + 1200);
      v124 = *(v0 + 1168);
      goto LABEL_46;
    }

    sub_1001AFCB4(*(v0 + 1200), *(v0 + 1176), type metadata accessor for ValidatedAttestationOrAttestation);
    v29 = swift_getEnumCaseMultiPayload();
    v30 = *(v0 + 1176);
    if (v29 == 1)
    {
      v31 = v30[1];
      *(v0 + 592) = *v30;
      *(v0 + 608) = v31;
      v32 = v30[2];
      v33 = v30[3];
      v34 = v30[5];
      *(v0 + 656) = v30[4];
      *(v0 + 672) = v34;
      *(v0 + 624) = v32;
      *(v0 + 640) = v33;
      v35 = *(v0 + 592);
      v36 = *(v0 + 600);

      sub_10005AF88(v0 + 592);
    }

    else
    {
      v51 = *(v0 + 1072);
      sub_1001B0368(v30, v51, type metadata accessor for ValidatedAttestation);
      v35 = *v51;
      v36 = v51[1];

      sub_1001AFB98(v51, type metadata accessor for ValidatedAttestation);
    }

    sub_1000603EC((v0 + 712), v35, v36);
  }

  v52 = *(v0 + 936);
  sub_1001AFCB4(*(v0 + 1200), *(v0 + 1160), type metadata accessor for ValidatedAttestationOrAttestation);
  v53 = swift_getEnumCaseMultiPayload();
  v54 = *(v0 + 1160);
  if (v53 == 1)
  {
    v55 = v54[1];
    *(v0 + 304) = *v54;
    *(v0 + 320) = v55;
    v56 = v54[2];
    v57 = v54[3];
    v58 = v54[5];
    *(v0 + 368) = v54[4];
    *(v0 + 384) = v58;
    *(v0 + 336) = v56;
    *(v0 + 352) = v57;
    v60 = *(v0 + 304);
    v59 = *(v0 + 312);

    sub_10005AF88(v0 + 304);
    if (!*(v52 + 16))
    {
      goto LABEL_33;
    }
  }

  else
  {
    v61 = *(v0 + 1072);
    sub_1001B0368(v54, v61, type metadata accessor for ValidatedAttestation);
    v60 = *v61;
    v59 = v61[1];

    sub_1001AFB98(v61, type metadata accessor for ValidatedAttestation);
    if (!*(v52 + 16))
    {
LABEL_33:
      v68 = *(v0 + 1248);
      v69 = *(v0 + 952);

      v70 = *(v52 + 16);
      v71 = *(v69 + v68 + 8);
      if (v70 < v71)
      {
        sub_1001AFCB4(*(v0 + 1200), *(v0 + 1152), type metadata accessor for ValidatedAttestationOrAttestation);
        v72 = swift_getEnumCaseMultiPayload();
        v73 = *(v0 + 1152);
        v158 = v18;
        if (v72 == 1)
        {
          v74 = v73[1];
          *(v0 + 400) = *v73;
          *(v0 + 416) = v74;
          v75 = v73[2];
          v76 = v73[3];
          v77 = v73[5];
          *(v0 + 464) = v73[4];
          *(v0 + 480) = v77;
          *(v0 + 432) = v75;
          *(v0 + 448) = v76;
          v78 = *(v0 + 408);
          v139 = *(v0 + 400);

          sub_10005AF88(v0 + 400);
        }

        else
        {
          v107 = *(v0 + 1072);
          sub_1001B0368(v73, v107, type metadata accessor for ValidatedAttestation);
          v78 = v107[1];
          v139 = *v107;

          sub_1001AFB98(v107, type metadata accessor for ValidatedAttestation);
        }

        v108 = *(v0 + 1200);
        v109 = *(v0 + 1136);
        v144 = *(v0 + 1088);
        v145 = *(v0 + 1096);
        v110 = *(v0 + 1064);
        v153 = *(v0 + 1256);
        v155 = v110;
        v111 = *(v0 + 1056);
        v112 = *(v0 + 1040);
        v113 = *(v0 + 1032);
        v141 = v109;
        v142 = v113;
        v114 = *(v0 + 1024);
        v143 = v111;
        v147 = *(v0 + 1048);
        v146 = *(v0 + 1008);
        v140 = *(v0 + 992);
        v150 = *(v0 + 976);
        v151 = *(v0 + 984);
        v138 = *(v0 + 968);
        v149 = *(v0 + 952);
        sub_1000603EC((v0 + 808), v139, v78);

        v115 = sub_1001D1BA0();
        (*(*(v115 - 8) + 56))(v110, 1, 1, v115);
        sub_1001AFCB4(v108, v109, type metadata accessor for ValidatedAttestationOrAttestation);
        (*(v112 + 16))(v111, v138, v113);
        sub_1001AFCB4(v140, v114, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);
        v116 = (*(v144 + 80) + 49) & ~*(v144 + 80);
        v117 = (v145 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
        v118 = (*(v112 + 80) + v117 + 8) & ~*(v112 + 80);
        v119 = (v147 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
        v120 = (v119 + 15) & 0xFFFFFFFFFFFFFFF8;
        v148 = (*(v146 + 80) + v120 + 8) & ~*(v146 + 80);
        v121 = swift_allocObject();
        *(v121 + 16) = 0;
        *(v121 + 24) = 0;
        *(v121 + 32) = v149;
        *(v121 + 40) = v158;
        *(v121 + 48) = 0;
        sub_1001B0368(v141, v121 + v116, type metadata accessor for ValidatedAttestationOrAttestation);
        *(v121 + v117) = v153;
        (*(v112 + 32))(v121 + v118, v143, v142);
        *(v121 + v119) = v150;
        *(v121 + v120) = v151;
        sub_1001B0368(v114, v121 + v148, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);

        sub_10015C7D4(v155, &unk_1001E1910, v121, &unk_100222CD8, &qword_10022FDC0, &qword_1001E18A8, &unk_1001E1928);
        sub_100011F00(v155, &qword_100229350, &unk_1001D6BA0);
        v122 = v108;
        goto LABEL_57;
      }

      sub_1001AFCB4(*(v0 + 1200), *(v0 + 1144), type metadata accessor for ValidatedAttestationOrAttestation);
      swift_retain_n();
      v37 = sub_1001D0E50();
      v79 = sub_1001D1DE0();
      if (os_log_type_enabled(v37, v79))
      {
        v157 = v79;
        v80 = *(v0 + 1128);
        v152 = *(v0 + 1144);
        v81 = swift_slowAlloc();
        *(v0 + 856) = swift_slowAlloc();
        *v81 = 136315906;
        sub_1001CFDA0();
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        *(v0 + 824) = sub_1001D23A0();
        *(v0 + 832) = v82;
        v168._countAndFlagsBits = 2629690;
        v168._object = 0xE300000000000000;
        sub_1001D18B0(v168);
        *(v0 + 840) = 0x202C65646F6ELL;
        *(v0 + 848) = 0xE600000000000000;
        *(v0 + 864) = v18;
        v169._countAndFlagsBits = sub_1001D23A0();
        sub_1001D18B0(v169);

        sub_1001D18B0(*(v0 + 840));

        v170._countAndFlagsBits = 41;
        v170._object = 0xE100000000000000;
        sub_1001D18B0(v170);
        v83 = sub_1000954E0(*(v0 + 824), *(v0 + 832), (v0 + 856));

        *(v81 + 4) = v83;
        *(v81 + 12) = 2080;
        sub_1001B0368(v152, v80, type metadata accessor for ValidatedAttestationOrAttestation);
        v84 = swift_getEnumCaseMultiPayload();
        v85 = *(v0 + 1128);
        if (v84 == 1)
        {
          v86 = v85[1];
          *(v0 + 16) = *v85;
          *(v0 + 32) = v86;
          v87 = v85[2];
          v88 = v85[3];
          v89 = v85[5];
          *(v0 + 80) = v85[4];
          *(v0 + 96) = v89;
          *(v0 + 48) = v87;
          *(v0 + 64) = v88;
          v91 = *(v0 + 16);
          v90 = *(v0 + 24);

          sub_10005AF88(v0 + 16);
        }

        else
        {
          v125 = *(v0 + 1072);
          sub_1001B0368(v85, v125, type metadata accessor for ValidatedAttestation);
          v91 = *v125;
          v90 = v125[1];

          sub_1001AFB98(v125, type metadata accessor for ValidatedAttestation);
        }

        v126 = *(v0 + 1200);
        v127 = sub_1000954E0(v91, v90, (v0 + 856));

        *(v81 + 14) = v127;
        *(v81 + 22) = 2048;
        *(v81 + 24) = v70;
        *(v81 + 32) = 2048;

        *(v81 + 34) = v71;

        _os_log_impl(&_mh_execute_header, v37, v157, "%s ignoring node %s; already have %ld attestations out of %ld max", v81, 0x2Au);
LABEL_53:
        swift_arrayDestroy();

LABEL_56:

        v122 = v126;
        goto LABEL_57;
      }

      v123 = *(v0 + 1200);
      v124 = *(v0 + 1144);
LABEL_46:

      goto LABEL_48;
    }
  }

  sub_1001D2580();
  sub_1001D1880();
  v62 = sub_1001D25C0();
  v63 = -1 << *(v52 + 32);
  v64 = v62 & ~v63;
  if (((*(v52 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
  {
    goto LABEL_33;
  }

  v65 = ~v63;
  while (1)
  {
    v66 = (*(v52 + 48) + 16 * v64);
    v67 = *v66 == v60 && v66[1] == v59;
    if (v67 || (sub_1001D2470() & 1) != 0)
    {
      break;
    }

    v64 = (v64 + 1) & v65;
    if (((*(v52 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v92 = *(v0 + 1200);
  v93 = *(v0 + 1120);

  sub_1001AFCB4(v92, v93, type metadata accessor for ValidatedAttestationOrAttestation);

  v37 = sub_1001D0E50();
  v94 = sub_1001D1DD0();

  if (os_log_type_enabled(v37, v94))
  {
    v95 = *(v0 + 1112);
    v156 = *(v0 + 1120);
    v96 = swift_slowAlloc();
    *(v0 + 880) = swift_slowAlloc();
    *v96 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    *(v0 + 776) = sub_1001D23A0();
    *(v0 + 784) = v97;
    v171._countAndFlagsBits = 2629690;
    v171._object = 0xE300000000000000;
    sub_1001D18B0(v171);
    *(v0 + 792) = 0x202C65646F6ELL;
    *(v0 + 800) = 0xE600000000000000;
    *(v0 + 872) = v18;
    v172._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v172);

    sub_1001D18B0(*(v0 + 792));

    v173._countAndFlagsBits = 41;
    v173._object = 0xE100000000000000;
    sub_1001D18B0(v173);
    v98 = sub_1000954E0(*(v0 + 776), *(v0 + 784), (v0 + 880));

    *(v96 + 4) = v98;
    *(v96 + 12) = 2080;
    sub_1001B0368(v156, v95, type metadata accessor for ValidatedAttestationOrAttestation);
    v99 = swift_getEnumCaseMultiPayload();
    v100 = *(v0 + 1112);
    if (v99 == 1)
    {
      v101 = v100[1];
      *(v0 + 496) = *v100;
      *(v0 + 512) = v101;
      v102 = v100[2];
      v103 = v100[3];
      v104 = v100[5];
      *(v0 + 560) = v100[4];
      *(v0 + 576) = v104;
      *(v0 + 528) = v102;
      *(v0 + 544) = v103;
      v106 = *(v0 + 496);
      v105 = *(v0 + 504);

      sub_10005AF88(v0 + 496);
    }

    else
    {
      v132 = *(v0 + 1072);
      sub_1001B0368(v100, v132, type metadata accessor for ValidatedAttestation);
      v106 = *v132;
      v105 = v132[1];

      sub_1001AFB98(v132, type metadata accessor for ValidatedAttestation);
    }

    v126 = *(v0 + 1200);
    v133 = sub_1000954E0(v106, v105, (v0 + 880));

    *(v96 + 14) = v133;
    _os_log_impl(&_mh_execute_header, v37, v94, "%s already have a node with identifier %s, conflict", v96, 0x16u);
    swift_arrayDestroy();

    goto LABEL_56;
  }

  v123 = *(v0 + 1200);
  v124 = *(v0 + 1120);
LABEL_48:

  sub_1001AFB98(v124, type metadata accessor for ValidatedAttestationOrAttestation);
  v122 = v123;
LABEL_57:
  sub_1001AFB98(v122, type metadata accessor for ValidatedAttestationOrAttestation);
  v134 = swift_task_alloc();
  *(v0 + 1280) = v134;
  *v134 = v0;
  v134[1] = sub_100184CE4;
  v135 = *(v0 + 1216);
  v136 = *(v0 + 1208);

  return AsyncStream.Iterator.next(isolation:)(v136, 0, 0, v135);
}

uint64_t sub_100186234()
{

  return _swift_task_switch(sub_100186330, 0, 0);
}

uint64_t sub_100186330(unint64_t a1)
{
  v74 = v2;
  LODWORD(v6) = *(v2 + 704);
  if (v6 != 255)
  {
    v7 = *(v2 + 1328);
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
    }

    else
    {
      v69 = *(v2 + 688);
      v1 = *(v2 + 696);
      swift_bridgeObjectRetain_n();

      v3 = sub_1001D0E50();
      v4 = sub_1001D1DD0();

      v9 = os_log_type_enabled(v3, v4);
      v5 = *(v2 + 1288);
      if (!v9)
      {
        swift_bridgeObjectRelease_n();

        v5 = v69;
        if ((v6 & 1) == 0)
        {
LABEL_6:
          if (!v1)
          {
            sub_1001ADC8C(v5, 0, v6);
            v38 = 1;
            v37 = 1;
LABEL_64:
            *(v2 + 707) = v37;
            *(v2 + 706) = v38;
LABEL_65:
            *(v2 + 1328) = v8;
            v65 = swift_task_alloc();
            *(v2 + 1336) = v65;
            v44 = sub_100011AC0(&qword_10022FDE8, &qword_1001E1900);
            *v65 = v2;
            v65[1] = sub_100186234;
            v34 = v2 + 688;
            v42 = 0;
            v43 = 0;

            return TaskGroup.next(isolation:)(v34, v42, v43, v44);
          }

          if (v1 == 1)
          {
            sub_1001ADC8C(v5, 1uLL, v6);
            goto LABEL_65;
          }

          v40 = *(v2 + 1312);
          sub_1001ADC70(v1, 0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + 904) = v40;
          v34 = sub_1000066C4(v5);
          v45 = *(v40 + 16);
          v46 = (v42 & 1) == 0;
          v27 = __OFADD__(v45, v46);
          v47 = v45 + v46;
          if (!v27)
          {
            LOBYTE(v3) = v42;
            v4 = v2 + 904;
            if (*(*(v2 + 1312) + 24) < v47)
            {
              sub_10000E498(v47, isUniquelyReferenced_nonNull_native);
              v34 = sub_1000066C4(v5);
              if ((v3 & 1) != (v42 & 1))
              {
LABEL_33:
                *(*(v2 + 1296) + 16) = *(v2 + 707);

                return sub_1001D24F0();
              }

LABEL_47:
              v33 = *v4;
              if (v3)
              {
LABEL_48:
                *(v33[7] + 8 * v34) = v1;

LABEL_58:
                swift_errorRetain();
                v62 = swift_isUniquelyReferenced_nonNull_native();
                v39 = *(v2 + 1320);
                if ((v62 & 1) == 0)
                {
                  v39 = sub_100009858(0, v39[2] + 1, 1, *(v2 + 1320));
                }

                v64 = v39[2];
                v63 = v39[3];
                if (v64 >= v63 >> 1)
                {
                  v39 = sub_100009858((v63 > 1), v64 + 1, 1, v39);
                }

                sub_1001ADC8C(v5, v1, v6);
                v39[2] = v64 + 1;
                v39[v64 + 4] = v1;
                v37 = *(v2 + 707);
                v38 = *(v2 + 706);
                goto LABEL_63;
              }

LABEL_56:
              v33[(v34 >> 6) + 8] |= 1 << v34;
              *(v33[6] + 8 * v34) = v5;
              *(v33[7] + 8 * v34) = v1;
              v60 = v33[2];
              v27 = __OFADD__(v60, 1);
              v61 = v60 + 1;
              if (v27)
              {
                __break(1u);
                return TaskGroup.next(isolation:)(v34, v42, v43, v44);
              }

              v33[2] = v61;
              goto LABEL_58;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_47;
            }

LABEL_55:
            v59 = v34;
            sub_100010E14();
            v34 = v59;
            v33 = *v4;
            if (v3)
            {
              goto LABEL_48;
            }

            goto LABEL_56;
          }

LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

LABEL_12:
        v23 = *(v2 + 1312);
        sub_1001ADC54(v5, v1, v6);
        sub_1001ADC70(v1, 1);
        v4 = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 920) = v23;
        a1 = sub_1000066C4(v5);
        v25 = *(v23 + 16);
        v26 = (v24 & 1) == 0;
        v27 = __OFADD__(v25, v26);
        v28 = v25 + v26;
        if (!v27)
        {
          LOBYTE(v3) = v24;
          if (*(*(v2 + 1312) + 24) < v28)
          {
            sub_10000E498(v28, v4);
            a1 = sub_1000066C4(v5);
            if ((v3 & 1) != (v29 & 1))
            {
              goto LABEL_33;
            }

LABEL_24:
            v33 = *(v2 + 920);
            if (v3)
            {
              *(v33[7] + 8 * a1) = v1;

              sub_1001ADC8C(v5, v1, v6);
            }

            else
            {
              v33[(a1 >> 6) + 8] |= 1 << a1;
              *(v33[6] + 8 * a1) = v5;
              *(v33[7] + 8 * a1) = v1;

              v34 = sub_1001ADC8C(v5, v1, v6);
              v35 = v33[2];
              v27 = __OFADD__(v35, 1);
              v36 = v35 + 1;
              if (v27)
              {
                __break(1u);
                goto LABEL_54;
              }

              v33[2] = v36;
            }

            v37 = *(v2 + 707);
            v38 = *(v2 + 706);
            v39 = *(v2 + 1320);
            *(v2 + 1304) = v1;
LABEL_63:
            *(v2 + 1320) = v39;
            *(v2 + 1312) = v33;
            goto LABEL_64;
          }

          if (v4)
          {
            goto LABEL_24;
          }

LABEL_52:
          v58 = a1;
          sub_100010E14();
          a1 = v58;
          goto LABEL_24;
        }

LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v66 = v6;
      v67 = v1;
      v1 = v8;
      v10 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *(v2 + 896) = v6;
      *v10 = 136315394;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      *(v2 + 760) = sub_1001D23A0();
      *(v2 + 768) = v11;
      v76._countAndFlagsBits = 58;
      v76._object = 0xE100000000000000;
      sub_1001D18B0(v76);
      v12 = sub_1000954E0(*(v2 + 760), *(v2 + 768), (v2 + 896));

      *(v10 + 4) = v12;
      *(v10 + 12) = 2048;
      v13 = *(v5 + 16);

      if (!__OFSUB__(v13, v8))
      {
        *(v10 + 14) = v13 - v8;

        _os_log_impl(&_mh_execute_header, v3, v4, "%s Node substream task finished. Remaining: %ld", v10, 0x16u);
        sub_100011CF0(v6);

        v1 = v67;
        LOBYTE(v6) = v66;
        v5 = v69;
        if ((v66 & 1) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

  *(*(v2 + 1296) + 16) = *(v2 + 707);
  swift_bridgeObjectRetain_n();

  v14 = sub_1001D0E50();
  v15 = sub_1001D1DD0();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v2 + 1288);
  if (v16)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v71 = v19;
    *v18 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v72 = sub_1001D23A0();
    v73 = v20;
    v77._countAndFlagsBits = 58;
    v77._object = 0xE100000000000000;
    sub_1001D18B0(v77);
    v21 = sub_1000954E0(v72, v73, &v71);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2048;
    v22 = *(v17 + 16);

    *(v18 + 14) = v22;

    _os_log_impl(&_mh_execute_header, v14, v15, "%s All %ld node substreams have finished", v18, 0x16u);
    sub_100011CF0(v19);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  if (*(v2 + 705) == 1)
  {

    v30 = swift_task_alloc();
    *(v2 + 1344) = v30;
    *v30 = v2;
    v30[1] = sub_100186E08;

    return sub_10013F3E4();
  }

  v32 = *(v2 + 1320);
  if (*(v2 + 706))
  {

LABEL_42:
    sub_10018A4A0(*(v2 + 952), *(v2 + 1296));

    v70 = 0;
    v68 = 0;
    goto LABEL_43;
  }

  v48 = *(v32 + 16);
  v49 = *(*(v2 + 1288) + 16);

  if (v48 == v49 && *(v32 + 16))
  {
    v50 = *(v2 + 1320);
    sub_100089BE4();
    v51 = swift_allocError();
    *v52 = 5906;
    *(v52 + 8) = v50;

    v53 = v51;
  }

  else
  {
    v54 = *(v2 + 1304);

    if (!v54)
    {
      goto LABEL_42;
    }

    v53 = *(v2 + 1304);
  }

  v55 = *(v2 + 1296);
  v56 = *(v2 + 952);
  v70 = v53;
  sub_10016A96C(v53);
  sub_10018A4A0(v56, v55);
  v68 = 1;
LABEL_43:

  v57 = *(v2 + 8);

  return v57(v70, v68);
}

uint64_t sub_100186E08(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1352) = a1;
  *(v3 + 1360) = v1;

  if (v1)
  {
    v4 = sub_100187144;
  }

  else
  {
    v4 = sub_100186F20;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100186F20()
{
  result = v0[169];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    if (*(v0[164] + 16) && (v2 = sub_1000066C4(result), (v3 & 1) != 0))
    {
      v4 = v0[162];
      v5 = v0[119];
      v8 = *(*(v0[164] + 56) + 8 * v2);
      swift_errorRetain();
      sub_10018A4A0(v5, v4);
      v7 = 1;
    }

    else
    {
      sub_10018A4A0(v0[119], v0[162]);
      v8 = 0;
      v7 = 0;
    }

    v6 = v0[1];

    return v6(v8, v7);
  }

  return result;
}

uint64_t sub_100187144()
{
  v3 = v0[170];
  sub_10018A4A0(v0[119], v0[162]);

  v1 = v0[1];

  return v1(v3, 1);
}

uint64_t sub_100187310(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = a8;
  *(v8 + 96) = v11;
  *(v8 + 72) = a6;
  *(v8 + 80) = a7;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 33) = a3;
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
  type metadata accessor for ValidatedAttestation(0);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = type metadata accessor for ValidatedAttestationOrAttestation(0);
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_10018740C, 0, 0);
}

uint64_t sub_10018740C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 56);
  sub_1001AFCB4(v2, *(v0 + 144), type metadata accessor for ValidatedAttestationOrAttestation);
  sub_1001AFCB4(v2, v1, type metadata accessor for ValidatedAttestationOrAttestation);

  v3 = sub_1001D0E50();
  v4 = sub_1001D1E00();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 144);
  if (v5)
  {
    v40 = v4;
    v7 = *(v0 + 128);
    v8 = *(v0 + 48);
    v9 = *(v0 + 33);
    v10 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v10 = 136315650;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v42 = sub_1001D23A0();
    v43 = v11;
    v46._countAndFlagsBits = 2629690;
    v46._object = 0xE300000000000000;
    sub_1001D18B0(v46);
    v47._countAndFlagsBits = sub_10016B71C(v8, v9);
    sub_1001D18B0(v47);

    v48._countAndFlagsBits = 41;
    v48._object = 0xE100000000000000;
    sub_1001D18B0(v48);
    v12 = sub_1000954E0(v42, v43, &v45);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    sub_1001B0368(v6, v7, type metadata accessor for ValidatedAttestationOrAttestation);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v14 = *(v0 + 128);
    if (EnumCaseMultiPayload == 1)
    {
      v16 = *v14;
      v15 = v14[1];
      sub_10002683C(v14[2], v14[3]);
    }

    else
    {
      v18 = *(v0 + 104);
      sub_1001B0368(v14, v18, type metadata accessor for ValidatedAttestation);
      v16 = *v18;
      v15 = v18[1];

      sub_1001AFB98(v18, type metadata accessor for ValidatedAttestation);
    }

    v19 = *(v0 + 136);
    v20 = *(v0 + 120);
    v21 = sub_1000954E0(v16, v15, &v45);

    *(v10 + 14) = v21;
    *(v10 + 22) = 2080;
    sub_1001B0368(v19, v20, type metadata accessor for ValidatedAttestationOrAttestation);
    v22 = swift_getEnumCaseMultiPayload();
    v23 = *(v0 + 120);
    if (v22 == 1)
    {
      v24 = v23[2];
      v26 = v23[3];
      v25 = v23[4];
      v27 = v23[5];

      sub_10002683C(v24, v26);
    }

    else
    {
      v28 = *(v0 + 104);
      sub_1001B0368(v23, v28, type metadata accessor for ValidatedAttestation);
      v25 = *(v28 + 32);
      v27 = *(v28 + 40);

      sub_1001AFB98(v28, type metadata accessor for ValidatedAttestation);
    }

    v29 = sub_1000954E0(v25, v27, &v45);

    *(v10 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v3, v40, "%s Creating node stream subtask for node: %s cloudOSVersion:%s", v10, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v17 = *(v0 + 136);

    sub_1001AFB98(v17, type metadata accessor for ValidatedAttestationOrAttestation);
    sub_1001AFB98(v6, type metadata accessor for ValidatedAttestationOrAttestation);
  }

  v41 = *(v0 + 56);
  v30 = *(v0 + 33);
  v32 = *(v0 + 40);
  v31 = *(v0 + 48);
  v33 = sub_100011AC0(&qword_10022FDF0, &qword_1001E1948);
  v34 = sub_100011AC0(&qword_10022FDC0, &qword_1001E18A8);
  v35 = swift_task_alloc();
  *(v0 + 152) = v35;
  v36 = *(v0 + 72);
  v37 = *(v0 + 88);
  *(v35 + 16) = v41;
  *(v35 + 32) = v32;
  *(v35 + 40) = v31;
  *(v35 + 48) = v30;
  *(v35 + 56) = v36;
  *(v35 + 72) = v37;
  v38 = swift_task_alloc();
  *(v0 + 160) = v38;
  *v38 = v0;
  v38[1] = sub_1001879A4;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v33, v34, 0, 0, &unk_1001E1958, v35, v33);
}

uint64_t sub_1001879A4()
{

  return _swift_task_switch(sub_100187ABC, 0, 0);
}

uint64_t sub_100187ABC()
{
  sub_10018A0D4(*(v0 + 40), *(v0 + 48), *(v0 + 33), *(v0 + 56), &static os_log_type_t.debug.getter, "%s Leaving node stream subtask for node: %s", v6, v7);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  v4 = *(v0 + 8);

  return v4(v1, v2, v3);
}

uint64_t sub_100187BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v16;
  *(v8 + 96) = v17;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 25) = a6;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  *(v8 + 32) = a1;
  v9 = *(type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) - 8);
  *(v8 + 104) = v9;
  *(v8 + 112) = *(v9 + 64);
  *(v8 + 120) = swift_task_alloc();
  v10 = sub_100011AC0(&qword_10022FDB0, &qword_1001E1880);
  *(v8 + 128) = v10;
  v11 = *(v10 - 8);
  *(v8 + 136) = v11;
  *(v8 + 144) = *(v11 + 64);
  *(v8 + 152) = swift_task_alloc();
  sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  *(v8 + 160) = swift_task_alloc();
  v12 = type metadata accessor for ValidatedAttestationOrAttestation(0);
  *(v8 + 168) = v12;
  v13 = *(v12 - 8);
  *(v8 + 176) = v13;
  *(v8 + 184) = *(v13 + 64);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_100187D9C, 0, 0);
}

uint64_t sub_100187D9C()
{
  sub_1001AFCB4(*(v0 + 40), *(v0 + 200), type metadata accessor for ValidatedAttestationOrAttestation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 200);
  if (EnumCaseMultiPayload == 1)
  {
    v3 = v2[2];
    v4 = v2[3];
    v5 = v2[12];

    sub_10002683C(v3, v4);
  }

  else
  {
    v5 = *(v2 + *(sub_100011AC0(qword_10022E650, &unk_1001DF500) + 48));
    sub_1001AFB98(v2, type metadata accessor for ValidatedAttestation);
  }

  *(v0 + 208) = v5;
  v58 = v5;
  v59 = *(v0 + 48);
  if (v59)
  {
    v7 = *(v0 + 184);
    v6 = *(v0 + 192);
    v8 = *(v0 + 176);
    v9 = *(v0 + 160);
    v57 = *(v0 + 25);
    v10 = *(v0 + 56);
    v55 = *(v0 + 64);
    v11 = *(v0 + 40);
    v12 = sub_1001D1BA0();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    sub_1001AFCB4(v11, v6, type metadata accessor for ValidatedAttestationOrAttestation);
    v13 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v52 = v7 + 7;
    v14 = (v13 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v59;
    sub_1001B0368(v6, v15 + v13, type metadata accessor for ValidatedAttestationOrAttestation);
    *(v15 + v14) = v10;
    v16 = v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v16 = v55;
    v16[8] = v57;

    sub_10015C7D4(v9, &unk_1001E1988, v15, &unk_100222D50, &qword_10022FDF0, &qword_1001E1948, &unk_1001E19A8);
    sub_100011F00(v9, &qword_100229350, &unk_1001D6BA0);
    v56 = *(v0 + 48);
  }

  else
  {
    v56 = 0;
    v52 = *(v0 + 184) + 7;
  }

  v17 = *(v0 + 192);
  v19 = *(v0 + 152);
  v18 = *(v0 + 160);
  v54 = v18;
  v20 = *(v0 + 136);
  v42 = v19;
  v43 = *(v0 + 144);
  v22 = *(v0 + 120);
  v21 = *(v0 + 128);
  v40 = *(v0 + 176);
  v41 = v21;
  v46 = v22;
  v45 = *(v0 + 104);
  v23 = *(v0 + 96);
  v24 = *(v0 + 72);
  v50 = *(v0 + 80);
  v51 = *(v0 + 88);
  v49 = *(v0 + 25);
  v47 = *(v0 + 56);
  v48 = *(v0 + 64);
  v25 = *(v0 + 40);
  v26 = sub_1001D1BA0();
  (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
  sub_1001AFCB4(v25, v17, type metadata accessor for ValidatedAttestationOrAttestation);
  v39 = v20;
  (*(v20 + 16))(v19, v24, v21);
  sub_1001AFCB4(v23, v22, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);
  v27 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v28 = (v27 + v52) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = (*(v20 + 80) + v29 + 9) & ~*(v20 + 80);
  v53 = (v43 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = (*(v45 + 80) + v32 + 8) & ~*(v45 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  sub_1001B0368(v17, v34 + v27, type metadata accessor for ValidatedAttestationOrAttestation);
  *(v34 + v28) = v47;
  v35 = v34 + v29;
  *v35 = v48;
  *(v35 + 8) = v49;
  (*(v39 + 32))(v34 + v30, v42, v41);
  *(v34 + v53) = v58;
  *(v34 + v44) = v50;
  *(v34 + v31) = v51;
  *(v34 + v32) = v56;
  sub_1001B0368(v46, v34 + v33, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);

  sub_10015C7D4(v54, &unk_1001E1970, v34, &unk_100222D50, &qword_10022FDF0, &qword_1001E1948, &unk_1001E19A8);
  sub_100011F00(v54, &qword_100229350, &unk_1001D6BA0);
  v36 = swift_task_alloc();
  *(v0 + 216) = v36;
  v37 = sub_100011AC0(&qword_10022FDF8, &qword_1001E1978);
  *v36 = v0;
  v36[1] = sub_10018839C;

  return TaskGroup.next(isolation:)(v0 + 16, 0, 0, v37);
}

uint64_t sub_10018839C()
{

  return _swift_task_switch(sub_100188498, 0, 0);
}

void sub_100188498()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 == 255)
  {
    __break(1u);
  }

  else
  {
    sub_100011AC0(&qword_10022FDF0, &qword_1001E1948);
    sub_1001D1AE0();
    if ((v2 & 1) == 0 && v1 <= 2)
    {
      v1 = qword_1001E1CB8[v1];
    }

    v3 = *(v0 + 8);
    v4 = *(v0 + 208);

    v3(v4, v1, v2 & 1);
  }
}

uint64_t sub_100188594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 128) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  type metadata accessor for ValidatedAttestation(0);
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = type metadata accessor for ValidatedAttestationOrAttestation(0);
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_100188674, 0, 0);
}

uint64_t sub_100188674()
{
  sub_1001AFCB4(v0[3], v0[10], type metadata accessor for ValidatedAttestationOrAttestation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[10];
  if (EnumCaseMultiPayload == 1)
  {
    v4 = *v2;
    v3 = v2[1];
    sub_10002683C(v2[2], v2[3]);
  }

  else
  {
    v5 = v0[6];
    sub_1001B0368(v2, v5, type metadata accessor for ValidatedAttestation);
    v4 = *v5;
    v3 = v5[1];

    sub_1001AFB98(v5, type metadata accessor for ValidatedAttestation);
  }

  v0[11] = v3;
  v6 = v0[2];
  v7 = swift_task_alloc();
  v0[12] = v7;
  v7[2] = v6;
  v7[3] = v4;
  v7[4] = v3;
  v8 = swift_task_alloc();
  v0[13] = v8;
  v8[2] = v6;
  v8[3] = v4;
  v8[4] = v3;
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_100188860;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v9, &unk_1001E1998, v7, sub_1001AEF1C, v8, 0, 0, &type metadata for () + 8);
}

uint64_t sub_100188860()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100188A24;
  }

  else
  {

    v2 = sub_100188998;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100188998()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_100188A24()
{
  v24 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);

  sub_1001AFCB4(v2, v1, type metadata accessor for ValidatedAttestationOrAttestation);

  v3 = sub_1001D0E50();
  v4 = sub_1001D1DD0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 64);
    v20 = *(v0 + 72);
    v6 = *(v0 + 40);
    v7 = *(v0 + 128);
    v8 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v8 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = sub_1001D23A0();
    v23 = v9;
    v26._countAndFlagsBits = 2629690;
    v26._object = 0xE300000000000000;
    sub_1001D18B0(v26);
    v27._countAndFlagsBits = sub_10016B71C(v6, v7);
    sub_1001D18B0(v27);

    v28._countAndFlagsBits = 41;
    v28._object = 0xE100000000000000;
    sub_1001D18B0(v28);
    v10 = sub_1000954E0(v22, v23, &v21);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    sub_1001B0368(v20, v5, type metadata accessor for ValidatedAttestationOrAttestation);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v12 = *(v0 + 64);
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *v12;
      v13 = v12[1];
      sub_10002683C(v12[2], v12[3]);
    }

    else
    {
      v16 = *(v0 + 48);
      sub_1001B0368(v12, v16, type metadata accessor for ValidatedAttestation);
      v14 = *v16;
      v13 = v16[1];

      sub_1001AFB98(v16, type metadata accessor for ValidatedAttestation);
    }

    v17 = sub_1000954E0(v14, v13, &v21);

    *(v8 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s cancelled node stream %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v15 = *(v0 + 72);

    sub_1001AFB98(v15, type metadata accessor for ValidatedAttestationOrAttestation);
  }

  v18 = *(v0 + 8);

  return v18(2);
}

uint64_t sub_100188DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  v7[12] = type metadata accessor for NWAsyncConnection.Inbound(0);
  v7[13] = swift_task_alloc();
  type metadata accessor for NWConnectionWrapper.State(0);
  v7[14] = swift_task_alloc();
  v8 = sub_1001CFDA0();
  v7[15] = v8;
  v7[16] = *(v8 - 8);
  v7[17] = swift_task_alloc();
  v9 = sub_1001D02F0();
  v7[18] = v9;
  v7[19] = *(v9 - 8);
  v7[20] = swift_task_alloc();
  v10 = sub_1001D0E60();
  v7[21] = v10;
  v7[22] = *(v10 - 8);
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();

  return _swift_task_switch(sub_100188FD4, 0, 0);
}

void sub_100188FD4()
{
  if ((v0[6] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v19 = v0;
    v1 = v0[5];
    v2 = *v1;
    v0[25] = *v1;
    v3 = v1[1];
    v0[26] = v3;
    v4 = (v1 + *(type metadata accessor for ValidatedAttestation(0) + 32));
    v0[27] = *v4;
    v0[28] = v4[1];

    v5 = sub_1001D0E50();
    v6 = sub_1001D1E00();

    if (os_log_type_enabled(v5, v6))
    {
      v14 = v0[6];
      v7 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v7 = 136315394;
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = sub_1001D23A0();
      v17 = v8;
      v21._countAndFlagsBits = 2629690;
      v21._object = 0xE300000000000000;
      sub_1001D18B0(v21);
      v18._countAndFlagsBits = 0x202C65646F6ELL;
      v18._object = 0xE600000000000000;
      v0[4] = v14;
      v22._countAndFlagsBits = sub_1001D23A0();
      sub_1001D18B0(v22);

      sub_1001D18B0(v18);

      v23._countAndFlagsBits = 41;
      v23._object = 0xE100000000000000;
      sub_1001D18B0(v23);
      v9 = sub_1000954E0(v16, v17, &v15);

      *(v7 + 4) = v9;
      *(v7 + 12) = 2080;
      *(v7 + 14) = sub_1000954E0(v2, v3, &v15);
      _os_log_impl(&_mh_execute_header, v5, v6, "%s starting node stream to %s; creating request...", v7, 0x16u);
      swift_arrayDestroy();
    }

    v11 = v0[5];
    v10 = v0[6];
    v0[29] = *(v11 + 104);
    v0[30] = *(v11 + 112);
    v18._countAndFlagsBits = 0x202C65646F6ELL;
    v18._object = 0xE600000000000000;
    v0[2] = v10;
    v24._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v24);

    object = v18._object;
    v0[31] = v18._countAndFlagsBits;
    v0[32] = object;
    v13 = swift_task_alloc();
    v0[33] = v13;
    *v13 = v0;
    v13[1] = sub_100189338;

    sub_10013F08C(v13);
  }
}

uint64_t sub_100189338()
{
  *(*v1 + 272) = v0;

  if (v0)
  {

    v2 = sub_100189B24;
  }

  else
  {
    v2 = sub_100189454;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100189454()
{
  v56 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  sub_1001D11A0();

  sub_100012038(v1, v2);
  v3 = sub_1001D10F0();
  *(v0 + 280) = v3;
  if (v3)
  {
    v50 = *(v0 + 248);
    v5 = *(v0 + 184);
    v4 = *(v0 + 192);
    v6 = *(v0 + 176);
    v53 = *(v0 + 168);
    v7 = *(v0 + 152);
    v8 = *(v0 + 160);
    v10 = *(v0 + 136);
    v9 = *(v0 + 144);
    v11 = *(v0 + 128);
    v48 = *(v0 + 120);
    v51 = *(v0 + 112);
    v47 = *(v0 + 80);
    v49 = v3;
    sub_100015A10(0, &qword_100229300, OS_dispatch_queue_ptr);
    *(v0 + 288) = sub_1001D1E40();
    v12 = *(type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) + 28);
    (*(v7 + 104))(v8, enum case for TC2LogCategory.network(_:), v9);
    sub_1001D08B0();
    (*(v7 + 8))(v8, v9);
    v13 = *(v6 + 16);
    v13(v5, v4, v53);
    (*(v11 + 16))(v10, v47 + v12, v48);
    type metadata accessor for NWConnectionWrapper(0);
    v14 = swift_allocObject();
    *(v0 + 296) = v14;
    v15 = (v14 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock);
    v16 = sub_100011AC0(&qword_10022F108, &qword_1001E0830);
    (*(*(v16 - 8) + 56))(v51, 1, 2, v16);
    *v15 = 0;
    v17 = *(sub_100011AC0(&qword_10022F110, &qword_1001E0620) + 28);
    v18 = sub_100011AC0(&qword_10022F118, &unk_1001E0628);
    bzero(v15 + v17, *(*(v18 - 8) + 64));
    sub_1001B0368(v51, v15 + v17, type metadata accessor for NWConnectionWrapper.State);
    *(v14 + 16) = v49;
    v52 = v13;
    v13((v14 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logger), v5, v53);
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

    v54 = sub_1001D23A0();
    v55 = v19;
    v64._countAndFlagsBits = 1130045498;
    v64._object = 0xE400000000000000;
    sub_1001D18B0(v64);
    *(v0 + 24) = sub_1001D1000();
    v65._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v65);

    v66._countAndFlagsBits = 2629725;
    v66._object = 0xE300000000000000;
    sub_1001D18B0(v66);
    sub_1001D18B0(v50);
    v67._countAndFlagsBits = 41;
    v67._object = 0xE100000000000000;
    sub_1001D18B0(v67);
    v20 = v55;
    v21 = (v14 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix);
    *v21 = v54;
    v21[1] = v20;
    *(v14 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_readyEvent) = 0;

    sub_1001D10B0();
    (*(v11 + 8))(v10, v48);
    v22 = *(v6 + 8);
    *(v0 + 304) = v22;
    *(v0 + 312) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22(v5, v53);
    *(v0 + 320) = OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logger;

    v23 = sub_1001D0E50();
    v24 = sub_1001D1DD0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v54 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1000954E0(*(v14 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v14 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v54);
      _os_log_impl(&_mh_execute_header, v23, v24, "%s start", v25, 0xCu);
      sub_100011CF0(v26);
    }

    v27 = *(v0 + 192);
    v28 = *(v0 + 168);
    v30 = *(v0 + 96);
    v29 = *(v0 + 104);
    sub_1001D1170();
    v52(v29 + *(v30 + 20), v27, v28);
    v31 = *(v30 + 24);
    sub_100011AC0(qword_100227990, &unk_1001D34D0);
    v32 = swift_allocObject();
    *(v32 + 20) = 0;
    swift_retain_n();

    *(v32 + 16) = 0;
    *(v29 + v31) = v32;
    *v29 = v14;
    v33 = swift_task_alloc();
    *(v0 + 328) = v33;
    *v33 = v0;
    v33[1] = sub_100189BCC;
    v35 = *(v0 + 216);
    v34 = *(v0 + 224);
    v36 = *(v0 + 200);
    v37 = *(v0 + 208);
    v38 = *(v0 + 104);
    v39 = *(v0 + 88);
    v41 = *(v0 + 64);
    v40 = *(v0 + 72);
    v43 = *(v0 + 48);
    v42 = *(v0 + 56);
    v62 = v43;
    v63 = v41;
    v60 = v35;
    v61 = v34;
    v59 = v40;
    v58 = 0;

    return sub_10018A690(v33, v38, v14, v42, v39, v36, v37, v43);
  }

  else
  {

    sub_100141174();
    swift_allocError();
    *v45 = 0;
    swift_willThrow();

    v46 = *(v0 + 8);

    return v46();
  }
}

uint64_t sub_100189B24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100189BCC()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_100189EDC;
  }

  else
  {
    v2 = sub_100189CE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100189CE0()
{
  v14 = v0;
  v1 = v0[13];

  sub_1001AFB98(v1, type metadata accessor for NWAsyncConnection.Inbound);

  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[37];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000954E0(*(v4 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v4 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s cancel", v5, 0xCu);
    sub_100011CF0(v6);
  }

  v7 = v0[38];
  v8 = v0[36];
  v9 = v0[24];
  v10 = v0[21];
  sub_1001D1180();

  v7(v9, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100189EDC()
{
  v14 = v0;
  v1 = v0[13];

  sub_1001AFB98(v1, type metadata accessor for NWAsyncConnection.Inbound);

  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[37];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000954E0(*(v4 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v4 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s cancel", v5, 0xCu);
    sub_100011CF0(v6);
  }

  v7 = v0[38];
  v8 = v0[36];
  v9 = v0[24];
  v10 = v0[21];
  sub_1001D1180();

  v7(v9, v10);

  v11 = v0[1];

  return v11();
}

void sub_10018A0D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), const char *a6, ...)
{
  v29 = a6;
  v28 = a3;
  v27 = a2;
  v8 = type metadata accessor for ValidatedAttestation(0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for ValidatedAttestationOrAttestation(0);
  v12 = __chkstk_darwin(v11);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  sub_1001AFCB4(a4, &v25 - v15, type metadata accessor for ValidatedAttestationOrAttestation);

  v17 = sub_1001D0E50();
  v18 = a5();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v19 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v30 = sub_1001D23A0();
    v31 = v20;
    v33._countAndFlagsBits = 2629690;
    v33._object = 0xE300000000000000;
    sub_1001D18B0(v33);
    v34._countAndFlagsBits = sub_10016B71C(v27, v28);
    sub_1001D18B0(v34);

    v35._countAndFlagsBits = 41;
    v35._object = 0xE100000000000000;
    sub_1001D18B0(v35);
    v21 = sub_1000954E0(v30, v31, &v32);

    *(v19 + 4) = v21;
    *(v19 + 12) = 2080;
    sub_1001B0368(v16, v14, type metadata accessor for ValidatedAttestationOrAttestation);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = *v14;
      v22 = v14[1];
      sub_10002683C(v14[2], v14[3]);
    }

    else
    {
      sub_1001B0368(v14, v10, type metadata accessor for ValidatedAttestation);
      v23 = *v10;
      v22 = v10[1];

      sub_1001AFB98(v10, type metadata accessor for ValidatedAttestation);
    }

    v24 = sub_1000954E0(v23, v22, &v32);

    *(v19 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, v29, v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1001AFB98(v16, type metadata accessor for ValidatedAttestationOrAttestation);
  }
}

void sub_10018A4A0(uint64_t a1, uint64_t a2)
{
  swift_retain_n();

  v3 = sub_1001D0E50();
  v4 = sub_1001D1DD0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = sub_1001D23A0();
    v11 = v7;
    v13._countAndFlagsBits = 58;
    v13._object = 0xE100000000000000;
    sub_1001D18B0(v13);
    v8 = sub_1000954E0(v10, v11, &v12);

    *(v5 + 4) = v8;
    *(v5 + 12) = 1024;
    swift_beginAccess();
    v9 = *(a2 + 16);

    *(v5 + 14) = v9;

    _os_log_impl(&_mh_execute_header, v3, v4, "%s Leaving runNodesStreams taskGroup. Success: %{BOOL}d", v5, 0x12u);
    sub_100011CF0(v6);
  }

  else
  {
  }
}

uint64_t sub_10018A690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 4184) = v27;
  *(v8 + 4168) = v26;
  *(v8 + 4152) = v25;
  *(v8 + 817) = v24;
  *(v8 + 4144) = a8;
  *(v8 + 4136) = a7;
  *(v8 + 4128) = a6;
  *(v8 + 4120) = a5;
  *(v8 + 4112) = a2;
  *(v8 + 4192) = sub_100011AC0(&qword_10022F188, &qword_1001E06F0);
  *(v8 + 4200) = swift_task_alloc();
  v10 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  *(v8 + 4208) = v10;
  *(v8 + 4216) = *(v10 - 8);
  *(v8 + 4224) = swift_task_alloc();
  *(v8 + 4232) = swift_task_alloc();
  sub_100011AC0(&qword_100229940, &qword_1001E19D0);
  *(v8 + 4240) = swift_task_alloc();
  *(v8 + 4248) = swift_task_alloc();
  *(v8 + 4256) = swift_task_alloc();
  v11 = sub_100011AC0(&qword_10022FE08, &qword_1001E19D8);
  *(v8 + 4264) = v11;
  *(v8 + 4272) = *(v11 - 8);
  *(v8 + 4280) = swift_task_alloc();
  v12 = sub_1001D1470();
  *(v8 + 4288) = v12;
  *(v8 + 4296) = *(v12 - 8);
  *(v8 + 4304) = swift_task_alloc();
  v13 = sub_1001D1460();
  *(v8 + 4312) = v13;
  *(v8 + 4320) = *(v13 - 8);
  *(v8 + 4328) = swift_task_alloc();
  v14 = sub_1001D20D0();
  *(v8 + 4336) = v14;
  *(v8 + 4344) = *(v14 - 8);
  *(v8 + 4352) = swift_task_alloc();
  *(v8 + 4360) = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
  *(v8 + 4368) = swift_task_alloc();
  *(v8 + 4376) = swift_task_alloc();
  *(v8 + 4384) = swift_task_alloc();
  *(v8 + 4392) = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0);
  *(v8 + 4400) = swift_task_alloc();
  *(v8 + 4408) = swift_task_alloc();
  *(v8 + 4416) = sub_100011AC0(&qword_100229930, &qword_1001D7198);
  *(v8 + 4424) = swift_task_alloc();
  *(v8 + 4432) = swift_task_alloc();
  *(v8 + 4440) = swift_task_alloc();
  v15 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse(0);
  *(v8 + 4448) = v15;
  *(v8 + 4456) = *(v15 - 8);
  *(v8 + 4464) = swift_task_alloc();
  *(v8 + 4472) = swift_task_alloc();
  sub_100011AC0(&qword_10022FD78, &qword_1001E1830);
  *(v8 + 4480) = swift_task_alloc();
  v16 = sub_100011AC0(&qword_10022FD80, &qword_1001E1838);
  *(v8 + 4488) = v16;
  *(v8 + 4496) = *(v16 - 8);
  *(v8 + 4504) = swift_task_alloc();
  *(v8 + 4512) = sub_100011AC0(&qword_100229600, &qword_1001E1840);
  *(v8 + 4520) = swift_task_alloc();
  *(v8 + 4528) = type metadata accessor for NWAsyncConnection.Inbound(0);
  *(v8 + 4536) = swift_task_alloc();
  sub_100011AC0(&qword_10022FD88, &qword_1001E1848);
  *(v8 + 4544) = swift_task_alloc();
  v17 = sub_100011AC0(&qword_10022FE10, &qword_1001E19E0);
  *(v8 + 4552) = v17;
  *(v8 + 4560) = *(v17 - 8);
  *(v8 + 4568) = swift_task_alloc();
  v18 = sub_100011AC0(&qword_10022FE18, &qword_1001E19E8);
  *(v8 + 4576) = v18;
  *(v8 + 4584) = *(v18 - 8);
  *(v8 + 4592) = swift_task_alloc();
  v19 = sub_100011AC0(&qword_10022FE20, &qword_1001E19F0);
  *(v8 + 4600) = v19;
  v20 = *(v19 - 8);
  *(v8 + 4608) = v20;
  *(v8 + 4616) = *(v20 + 64);
  *(v8 + 4624) = swift_task_alloc();
  *(v8 + 4632) = swift_task_alloc();
  *(v8 + 4088) = a3;
  v21 = swift_task_alloc();
  *(v8 + 4640) = v21;
  *v21 = v8;
  v21[1] = sub_10018ADB0;

  return sub_10013F08C(v21);
}

uint64_t sub_10018ADB0()
{
  *(*v1 + 4648) = v0;

  if (v0)
  {
    v2 = sub_10018B0E8;
  }

  else
  {
    v2 = sub_10018AEC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10018AEC4()
{
  v1 = v0[515];
  v0[582] = *(v1 + *(*v1 + 368));
  v2 = swift_task_alloc();
  v0[583] = v2;
  *(v2 + 16) = v0 + 511;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[584] = v3;
  *v3 = v0;
  v3[1] = sub_10018AFCC;
  v4 = v0[517];
  v5 = v0[516];

  return (sub_100166D64)(v5, v4, &unk_1001E1A00, v2);
}

uint64_t sub_10018AFCC()
{
  *(*v1 + 4680) = v0;

  if (v0)
  {
    v2 = sub_10018B704;
  }

  else
  {

    v2 = sub_10018B2EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10018B0E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10018B2EC()
{
  v26 = *(v0 + 4656);
  v1 = *(v0 + 4632);
  v2 = *(v0 + 4624);
  v3 = *(v0 + 4608);
  v4 = *(v0 + 4600);
  v5 = *(v0 + 4568);
  v6 = *(v0 + 4560);
  v7 = *(v0 + 4552);
  v18 = *(v0 + 4536);
  v19 = *(v0 + 4544);
  v23 = *(v0 + 4520);
  v24 = *(v0 + 4512);
  v20 = *(v0 + 4496);
  v21 = *(v0 + 4488);
  v22 = *(v0 + 4504);
  v25 = *(v0 + 4184);
  v8 = *(v0 + 4120);
  v17 = *(v0 + 4112);
  (*(v6 + 104))(v5, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v7);
  sub_1001D1BB0();
  (*(v6 + 8))(v5, v7);
  (*(v3 + 16))(v2, v1, v4);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  (*(v3 + 32))(v10 + v9, v2, v4);
  v11 = swift_allocObject();
  *(v0 + 4688) = v11;
  *(v11 + 16) = &unk_1001E1A18;
  *(v11 + 24) = v10;

  swift_asyncLet_begin();
  sub_1001AFCB4(v17, v18, type metadata accessor for NWAsyncConnection.Inbound);
  sub_1001B0458(&qword_10022EE88, type metadata accessor for NWAsyncConnection.Inbound, &protocol conformance descriptor for NWAsyncConnection.Inbound);
  sub_1001D2390();
  (*(v20 + 16))(v22, v19, v21);
  sub_100024B78(&qword_10022FD90, &qword_10022FD80, &qword_1001E1838, &protocol conformance descriptor for AsyncCompactMapSequence<A, B>);
  sub_1001D1C90();
  v12 = v23 + *(v24 + 80);
  *v12 = 0;
  *(v12 + 8) = 2;
  *(v23 + *(v24 + 76)) = xmmword_1001D3A00;
  v13 = *v8;
  *(v0 + 4696) = *(*v8 + 392);
  *(v0 + 4704) = qword_1002434F8;
  *(v0 + 4712) = qword_100243500;
  *(v0 + 4720) = *(*v25 + 88);
  *(v0 + 4728) = *(v13 + 280);
  *(v0 + 4736) = *(*v26 + 144);
  *(v0 + 818) = 256;
  v14 = swift_task_alloc();
  *(v0 + 4744) = v14;
  *v14 = v0;
  v14[1] = sub_10018B910;
  v15 = *(v0 + 4480);

  return sub_10007FB14(v15);
}

uint64_t sub_10018B704()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10018B910()
{
  *(*v1 + 4752) = v0;

  if (v0)
  {
    v2 = sub_10018E490;
  }

  else
  {
    v2 = sub_10018BA24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10018BA24()
{
  v338 = v0;
  v1 = *(v0 + 4480);
  if ((*(*(v0 + 4456) + 48))(v1, 1, *(v0 + 4448)) == 1)
  {
    sub_100011F00(*(v0 + 4520), &qword_100229600, &qword_1001E1840);
    sub_1001D1BD0();

    return _swift_asyncLet_get(v0 + 16);
  }

  v2 = *(v0 + 4472);
  v3 = *(v0 + 4464);
  sub_1001B0368(v1, v2, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
  sub_1001AFCB4(v2, v3, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);

  v4 = sub_1001D0E50();
  v5 = sub_1001D1DD0();

  if (os_log_type_enabled(v4, v5))
  {
    v313 = *(v0 + 4440);
    v319 = *(v0 + 4464);
    v6 = *(v0 + 4144);
    v303 = *(v0 + 4128);
    v308 = *(v0 + 4136);
    v7 = *(v0 + 817);
    v8 = swift_slowAlloc();
    v336 = swift_slowAlloc();
    *v8 = 136315650;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    *(v0 + 3736) = sub_1001D23A0();
    *(v0 + 3744) = v9;
    v340._countAndFlagsBits = 2629690;
    v340._object = 0xE300000000000000;
    sub_1001D18B0(v340);
    v341._countAndFlagsBits = sub_10016B71C(v6, v7);
    sub_1001D18B0(v341);

    v342._countAndFlagsBits = 41;
    v342._object = 0xE100000000000000;
    sub_1001D18B0(v342);
    v10 = sub_1000954E0(*(v0 + 3736), *(v0 + 3744), &v336);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_1000954E0(v303, v308, &v336);
    *(v8 + 22) = 2080;
    sub_10001208C(v319, v313, &qword_100229930, &qword_1001D7198);
    v11 = sub_1001D1820();
    v13 = v12;
    sub_1001AFB98(v319, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
    v14 = sub_1000954E0(v11, v13, &v336);

    *(v8 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Received message from node %s: %s", v8, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v15 = *(v0 + 4464);

    sub_1001AFB98(v15, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
  }

  if (*(v0 + 819) == 1)
  {
    if (*(v0 + 4152))
    {

      v16 = sub_1001D0E50();
      v17 = sub_1001D1DD0();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = *(v0 + 4168);
        v19 = *(v0 + 4160);
        v304 = *(v0 + 4144);
        v309 = *(v0 + 4128);
        v20 = 0xE000000000000000;
        if (v18)
        {
          v20 = *(v0 + 4168);
        }

        log = v20;
        if (!v18)
        {
          v19 = 0;
        }

        v314 = *(v0 + 4136);
        v320 = v19;
        v21 = *(v0 + 817);
        v22 = swift_slowAlloc();
        v336 = swift_slowAlloc();
        *v22 = 136315650;
        sub_1001CFDA0();
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        *(v0 + 3928) = sub_1001D23A0();
        *(v0 + 3936) = v23;
        v343._countAndFlagsBits = 2629690;
        v343._object = 0xE300000000000000;
        sub_1001D18B0(v343);
        v344._countAndFlagsBits = sub_10016B71C(v304, v21);
        sub_1001D18B0(v344);

        v345._countAndFlagsBits = 41;
        v345._object = 0xE100000000000000;
        sub_1001D18B0(v345);
        v24 = sub_1000954E0(*(v0 + 3928), *(v0 + 3936), &v336);

        *(v22 + 4) = v24;
        *(v22 + 12) = 2080;
        *(v22 + 14) = sub_1000954E0(v309, v314, &v336);
        *(v22 + 22) = 2080;

        v25 = sub_1000954E0(v320, log, &v336);

        *(v22 + 24) = v25;
        _os_log_impl(&_mh_execute_header, v16, v17, "%s Node has received data, cancelling all other node streams. nodeID=%s udid=%s", v22, 0x20u);
        swift_arrayDestroy();
      }

      v26 = *(v0 + 4176);
      sub_1001157F8(*(v0 + 4128), *(v0 + 4136));
      if (v26 < 0)
      {
        __break(1u);
        goto LABEL_121;
      }

      v31 = *(v0 + 4176);
      v32 = (*(v0 + 4656) + *(v0 + 4736));
      os_unfair_lock_lock(v32);
      v33 = v32 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
      v34 = &v33[*(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 156)];
      *v34 = v31;
      v34[8] = 0;
      os_unfair_lock_unlock(v32);
    }

    sub_100168E14(*(v0 + 4128), *(v0 + 4136));
  }

  v35 = *(v0 + 4432);
  sub_10001208C(*(v0 + 4472), v35, &qword_100229930, &qword_1001D7198);
  v36 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
  {
    v37 = *(v0 + 4472);
    v38 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse;
LABEL_116:
    sub_1001AFB98(v37, v38);
    v155 = *(v0 + 818);
    goto LABEL_117;
  }

  sub_10001208C(*(v0 + 4432), *(v0 + 4424), &qword_100229930, &qword_1001D7198);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v40 = *(v0 + 4424);
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v52 = *(v0 + 4408);
      v53 = *(v0 + 4400);
      sub_1001B0368(v40, v52, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
      sub_1001AFCB4(v52, v53, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);

      v54 = sub_1001D0E50();
      v55 = sub_1001D1DD0();

      if (os_log_type_enabled(v54, v55))
      {
        v322 = *(v0 + 4400);
        v56 = *(v0 + 4392);
        v57 = *(v0 + 4144);
        v58 = *(v0 + 817);
        v59 = swift_slowAlloc();
        v336 = swift_slowAlloc();
        *v59 = 136315394;
        sub_1001CFDA0();
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        *(v0 + 3864) = sub_1001D23A0();
        *(v0 + 3872) = v60;
        v349._countAndFlagsBits = 2629690;
        v349._object = 0xE300000000000000;
        sub_1001D18B0(v349);
        v350._countAndFlagsBits = sub_10016B71C(v57, v58);
        sub_1001D18B0(v350);

        v351._countAndFlagsBits = 41;
        v351._object = 0xE100000000000000;
        sub_1001D18B0(v351);
        v61 = sub_1000954E0(*(v0 + 3864), *(v0 + 3872), &v336);

        *(v59 + 4) = v61;
        *(v59 + 12) = 2080;
        *(v0 + 4096) = v56;
        sub_100011AC0(&qword_10022FDA0, &qword_1001E1858);
        *(v0 + 3880) = sub_1001D1830();
        *(v0 + 3888) = v62;
        v352._countAndFlagsBits = 2618;
        v352._object = 0xE200000000000000;
        sub_1001D18B0(v352);
        v63 = *(v0 + 3880);
        v64 = *(v0 + 3888);
        sub_1001B0458(&qword_100229A18, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary, &protocol conformance descriptor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
        v65 = sub_1001D0B30();
        v67 = v66;
        *(v0 + 3896) = v63;
        *(v0 + 3904) = v64;

        v353._countAndFlagsBits = v65;
        v353._object = v67;
        sub_1001D18B0(v353);

        v68 = *(v0 + 3896);
        v69 = *(v0 + 3904);
        sub_1001AFB98(v322, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
        v70 = sub_1000954E0(v68, v69, &v336);

        *(v59 + 14) = v70;
        _os_log_impl(&_mh_execute_header, v54, v55, "%s Response summary: %s", v59, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v104 = *(v0 + 4400);

        sub_1001AFB98(v104, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
      }

      v105 = *(v0 + 4752);
      sub_1001A9AA8(*(v0 + 4408));
      *(v0 + 4776) = v105;
      if (!v105)
      {
        v157 = *(v0 + 4656);
        sub_1001699DC(*(v0 + 4128), *(v0 + 4136), 0);
        v158 = (v157 + *(*v157 + 144));
        os_unfair_lock_lock(v158);
        v159 = v158 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
        v160 = *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 144);
        v161 = *&v159[v160];
        if (*(v161 + 16))
        {
          v162 = sub_100006028(*(v0 + 4128), *(v0 + 4136));
          if (v163)
          {
            v164 = (v0 + 3400);
            v165 = (*(v161 + 56) + (v162 << 7));
            v166 = *v165;
            v167 = v165[1];
            v168 = v165[3];
            *(v0 + 1880) = v165[2];
            *(v0 + 1896) = v168;
            *(v0 + 1848) = v166;
            *(v0 + 1864) = v167;
            v169 = v165[4];
            v170 = v165[5];
            v171 = v165[6];
            *(v0 + 1953) = *(v165 + 105);
            *(v0 + 1928) = v170;
            *(v0 + 1944) = v171;
            *(v0 + 1912) = v169;
            v172 = *(v0 + 1848);
            v173 = *(v0 + 1856);
            v175 = v165[2];
            v174 = v165[3];
            *(v0 + 3400) = v165[1];
            *(v0 + 3416) = v175;
            *(v0 + 3432) = v174;
            v177 = v165[5];
            v176 = v165[6];
            v178 = v165[4];
            *(v0 + 3489) = *(v165 + 105);
            *(v0 + 3464) = v177;
            *(v0 + 3480) = v176;
            *(v0 + 3448) = v178;
            if (v172 >> 62 == 1 && (v172 & 1) == 0)
            {
              v179 = v0 + 1464;
              v279 = *(v0 + 4136);
              loge = *(v0 + 4128);
              *(v0 + 1080) = 0x4000000000000001;
              *(v0 + 1088) = v173;
              v280 = *(v0 + 3480);
              *(v0 + 1160) = *(v0 + 3464);
              *(v0 + 1176) = v280;
              *(v0 + 1185) = *(v0 + 3489);
              v281 = *(v0 + 3416);
              *(v0 + 1096) = *v164;
              *(v0 + 1112) = v281;
              v282 = *(v0 + 3448);
              *(v0 + 1128) = *(v0 + 3432);
              *(v0 + 1144) = v282;

              sub_10001208C(v0 + 1848, v0 + 1336, &qword_100230150, &unk_1001D3700);
              sub_10001208C(v0 + 1080, v0 + 1208, &qword_100230150, &unk_1001D3700);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v336 = *&v159[v160];
              sub_10001B1A4((v0 + 1080), loge, v279, isUniquelyReferenced_nonNull_native);

              *&v159[v160] = v336;
              *(v0 + 1464) = 0x4000000000000001;
              *(v0 + 1472) = v173;
              v284 = *(v0 + 3480);
              *(v0 + 1544) = *(v0 + 3464);
              *(v0 + 1560) = v284;
              *(v0 + 1569) = *(v0 + 3489);
              v285 = *(v0 + 3416);
              *(v0 + 1480) = *v164;
              *(v0 + 1496) = v285;
              v286 = *(v0 + 3448);
              *(v0 + 1512) = *(v0 + 3432);
              *(v0 + 1528) = v286;
            }

            else
            {
              v179 = v0 + 1720;
              *(v0 + 1720) = v172;
              *(v0 + 1728) = v173;
              v180 = *(v0 + 3480);
              *(v0 + 1800) = *(v0 + 3464);
              *(v0 + 1816) = v180;
              *(v0 + 1825) = *(v0 + 3489);
              v181 = *(v0 + 3416);
              *(v0 + 1736) = *v164;
              *(v0 + 1752) = v181;
              v182 = *(v0 + 3448);
              *(v0 + 1768) = *(v0 + 3432);
              *(v0 + 1784) = v182;
              sub_10001208C(v0 + 1848, v0 + 1592, &qword_100230150, &unk_1001D3700);
            }

            sub_100011F00(v179, &qword_100230150, &unk_1001D3700);
          }
        }

        v103 = *(v0 + 4472);
        v287 = *(v0 + 4408);
        os_unfair_lock_unlock(v158);
        sub_1001AFB98(v287, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
LABEL_114:
        v156 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse;
        goto LABEL_115;
      }

      v106 = *(v0 + 4544);
      v107 = *(v0 + 4520);
      v108 = *(v0 + 4472);
      v109 = *(v0 + 4432);
      v110 = *(v0 + 4408);
      v111 = *(v0 + 4136);
      v112 = *(v0 + 4128);
      swift_errorRetain();
      sub_1001699DC(v112, v111, v105);

      swift_willThrow();
      sub_1001AFB98(v110, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
      sub_1001AFB98(v108, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
      sub_100011F00(v107, &qword_100229600, &qword_1001E1840);
      sub_100011F00(v106, &qword_10022FD88, &qword_1001E1848);
      sub_100011F00(v109, &qword_100229930, &qword_1001D7198);
      v29 = sub_10018ECC0;
      v27 = v0 + 16;
      v30 = v0 + 4048;
      goto LABEL_82;
    }

    v84 = *(v0 + 4384);
    v85 = *(v0 + 4376);
    sub_1001B0368(v40, v84, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
    sub_1001AFCB4(v84, v85, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);

    v86 = sub_1001D0E50();
    v87 = sub_1001D1DD0();

    if (os_log_type_enabled(v86, v87))
    {
      v324 = *(v0 + 4376);
      v88 = *(v0 + 4360);
      v89 = *(v0 + 4144);
      v90 = *(v0 + 817);
      v91 = swift_slowAlloc();
      v336 = swift_slowAlloc();
      *v91 = 136315394;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      *(v0 + 3832) = sub_1001D23A0();
      *(v0 + 3840) = v92;
      v357._countAndFlagsBits = 2629690;
      v357._object = 0xE300000000000000;
      sub_1001D18B0(v357);
      v358._countAndFlagsBits = sub_10016B71C(v89, v90);
      sub_1001D18B0(v358);

      v359._countAndFlagsBits = 41;
      v359._object = 0xE100000000000000;
      sub_1001D18B0(v359);
      v93 = sub_1000954E0(*(v0 + 3832), *(v0 + 3840), &v336);

      *(v91 + 4) = v93;
      *(v91 + 12) = 2080;
      *(v0 + 3992) = v88;
      sub_100011AC0(&qword_10022FD98, &qword_1001E1850);
      *(v0 + 3848) = sub_1001D1830();
      *(v0 + 3856) = v94;
      v360._countAndFlagsBits = 2618;
      v360._object = 0xE200000000000000;
      sub_1001D18B0(v360);
      v95 = *(v0 + 3848);
      v96 = *(v0 + 3856);
      sub_1001B0458(&qword_100229A48, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry, &protocol conformance descriptor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
      v97 = sub_1001D0B30();
      v99 = v98;
      *(v0 + 3800) = v95;
      *(v0 + 3808) = v96;

      v361._countAndFlagsBits = v97;
      v361._object = v99;
      sub_1001D18B0(v361);

      v100 = *(v0 + 3800);
      v101 = *(v0 + 3808);
      sub_1001AFB98(v324, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
      v102 = sub_1000954E0(v100, v101, &v336);

      *(v91 + 14) = v102;
      _os_log_impl(&_mh_execute_header, v86, v87, "%s Received request execution log entry: %s", v91, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v113 = *(v0 + 4376);

      sub_1001AFB98(v113, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
    }

    if (*(*(v0 + 4120) + *(v0 + 4712) + 72) != 1)
    {
      v103 = *(v0 + 4384);
      sub_1001AFB98(*(v0 + 4472), type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
      v156 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry;
LABEL_115:
      v38 = v156;
      v37 = v103;
      goto LABEL_116;
    }

    v74 = *(v0 + 4384);
    v114 = &v74[*(*(v0 + 4360) + 24)];
    v115 = v114[1];
    if (v115 >> 60 != 15)
    {
      v116 = *(v0 + 4328);
      v293 = *(v0 + 4320);
      v295 = *(v0 + 4656);
      v292 = *(v0 + 4312);
      v117 = *(v0 + 4304);
      v118 = *(v0 + 4296);
      v119 = *(v0 + 4288);
      v305 = *(v0 + 4280);
      v310 = *(v0 + 4272);
      v316 = *(v0 + 4264);
      v298 = *(v0 + 4128);
      v300 = *(v0 + 4136);
      v120 = *v114;
      sub_100089C38(*v114, v115);
      sub_1001B0458(&qword_100229378, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      sub_1001D1440();
      sub_100012038(v120, v115);
      sub_100158DE0(v120, v115, v117);
      sub_100011E48(v120, v115);
      sub_1001D1430();
      (*(v118 + 8))(v117, v119);
      *(v0 + 3648) = v292;
      *(v0 + 3656) = sub_1001B0458(&qword_100229380, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
      v121 = sub_10003B47C((v0 + 3624));
      (*(v293 + 16))(v121, v116, v292);
      sub_100024DC8((v0 + 3624), *(v0 + 3648));
      sub_1001CF8E0();
      v122 = *(v0 + 3816);
      v123 = *(v0 + 3824);
      sub_100011CF0((v0 + 3624));
      v124 = sub_1001CFBF0(0);
      v126 = v125;
      sub_100011E48(v122, v123);
      (*(v293 + 8))(v116, v292);
      v127 = (v295 + *(*v295 + 144));
      os_unfair_lock_lock(v127);
      v128 = v127 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
      *(v0 + 3512) = v124;
      *(v0 + 3520) = v126;
      *(v0 + 3528) = 0;
      *(v0 + 3536) = v120;
      *(v0 + 3544) = v115;
      *(v0 + 3552) = v298;
      *(v0 + 3560) = v300;
      *(v0 + 3568) = 0u;
      v129 = *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 148);
      swift_bridgeObjectRetain_n();

      sub_100012038(v120, v115);
      v130 = swift_isUniquelyReferenced_nonNull_native();
      v336 = *&v128[v129];
      *&v128[v129] = 0x8000000000000000;
      sub_10001B348(v0 + 3512, v124, v126, v130);

      *&v128[v129] = v336;
      os_unfair_lock_unlock(v127);
      *(v0 + 3704) = v124;
      *(v0 + 3712) = v126;
      *(v0 + 3720) = v120;
      *(v0 + 3728) = v115;
      sub_1001D1BC0();
      (*(v310 + 8))(v305, v316);
      v74 = *(v0 + 4384);
    }

    if (*v74)
    {
      v131 = (*(v0 + 4656) + *(**(v0 + 4656) + 144));
      os_unfair_lock_lock(v131);
      v132 = v131 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
      v133 = *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 144);
      v134 = *&v132[v133];
      if (*(v134 + 16))
      {
        v135 = sub_100006028(*(v0 + 4128), *(v0 + 4136));
        if (v136)
        {
          v137 = *(v0 + 4136);
          logc = *(v0 + 4128);
          v138 = (*(v134 + 56) + (v135 << 7));
          v139 = v138[3];
          v141 = *v138;
          v140 = v138[1];
          *(v0 + 2392) = v138[2];
          *(v0 + 2408) = v139;
          *(v0 + 2360) = v141;
          *(v0 + 2376) = v140;
          v143 = v138[5];
          v142 = v138[6];
          v144 = v138[4];
          *(v0 + 2465) = *(v138 + 105);
          *(v0 + 2440) = v143;
          *(v0 + 2456) = v142;
          *(v0 + 2424) = v144;
          v145 = v138[3];
          v147 = *v138;
          v146 = v138[1];
          *(v0 + 3160) = v138[2];
          *(v0 + 3176) = v145;
          *(v0 + 3128) = v147;
          *(v0 + 3144) = v146;
          v149 = v138[5];
          v148 = v138[6];
          v150 = v138[4];
          *(v0 + 3240) = *(v138 + 14);
          *(v0 + 3208) = v149;
          *(v0 + 3224) = v148;
          *(v0 + 3192) = v150;
          memmove((v0 + 824), v138, 0x78uLL);
          *(v0 + 944) = 1;

          sub_10001208C(v0 + 2360, v0 + 2488, &qword_100230150, &unk_1001D3700);
          sub_10001208C(v0 + 824, v0 + 2616, &qword_100230150, &unk_1001D3700);
          v151 = swift_isUniquelyReferenced_nonNull_native();
          v336 = *&v132[v133];
          *&v132[v133] = 0x8000000000000000;
          sub_10001B1A4((v0 + 824), logc, v137, v151);

          *&v132[v133] = v336;
          v152 = *(v0 + 3208);
          *(v0 + 2296) = *(v0 + 3192);
          *(v0 + 2312) = v152;
          *(v0 + 2328) = *(v0 + 3224);
          *(v0 + 2344) = *(v0 + 3240);
          v153 = *(v0 + 3144);
          *(v0 + 2232) = *(v0 + 3128);
          *(v0 + 2248) = v153;
          v154 = *(v0 + 3176);
          *(v0 + 2264) = *(v0 + 3160);
          *(v0 + 2280) = v154;
          *(v0 + 2352) = 1;
          sub_100011F00(v0 + 2232, &qword_100230150, &unk_1001D3700);
        }
      }

      os_unfair_lock_unlock(v131);
      v74 = *(v0 + 4384);
      v155 = 1;
      goto LABEL_59;
    }

LABEL_58:
    v155 = *(v0 + 818);
LABEL_59:
    v185 = *(v0 + 4256);
    v186 = *(v0 + 4216);
    v187 = *(v0 + 4208);
    v188 = *(*(v0 + 4360) + 28);
    sub_10001208C(&v74[v188], v185, &qword_100229940, &qword_1001E19D0);
    v189 = *(v186 + 48);
    if (v189(v185, 1, v187) == 1)
    {
      v190 = *(v0 + 4384);
      v191 = *(v0 + 4256);
      sub_1001AFB98(*(v0 + 4472), type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
      sub_100011F00(v191, &qword_100229940, &qword_1001E19D0);
      sub_1001AFB98(v190, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
LABEL_117:
      sub_100011F00(*(v0 + 4432), &qword_100229930, &qword_1001D7198);
      *(v0 + 819) = 0;
      *(v0 + 818) = v155;
      v288 = swift_task_alloc();
      *(v0 + 4744) = v288;
      *v288 = v0;
      v288[1] = sub_10018B910;
      v289 = *(v0 + 4480);

      return sub_10007FB14(v289);
    }

    v192 = *(v0 + 4120) + *(v0 + 4712);
    sub_100011F00(*(v0 + 4256), &qword_100229940, &qword_1001E19D0);
    if (*(v192 + *(type metadata accessor for TrustedRequestConfiguration(0) + 96)))
    {
      sub_1001AFCB4(*(v0 + 4384), *(v0 + 4368), type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);

      v193 = sub_1001D0E50();
      v194 = sub_1001D1DD0();

      if (os_log_type_enabled(v193, v194))
      {
        v325 = v194;
        loga = v193;
        v301 = *(v0 + 4248);
        v306 = *(v0 + 4368);
        v311 = *(v0 + 4208);
        v296 = *(v0 + 4144);
        v299 = *(v0 + 4360);
        v294 = *(v0 + 817);
        v195 = swift_slowAlloc();
        v317 = swift_slowAlloc();
        *(v0 + 4104) = v317;
        *v195 = 136315394;
        sub_1001CFDA0();
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        *(v0 + 3784) = sub_1001D23A0();
        *(v0 + 3792) = v196;
        v362._countAndFlagsBits = 2629690;
        v362._object = 0xE300000000000000;
        sub_1001D18B0(v362);
        v363._countAndFlagsBits = sub_10016B71C(v296, v294);
        sub_1001D18B0(v363);

        v364._countAndFlagsBits = 41;
        v364._object = 0xE100000000000000;
        sub_1001D18B0(v364);
        v197 = sub_1000954E0(*(v0 + 3784), *(v0 + 3792), (v0 + 4104));

        *(v195 + 4) = v197;
        *(v195 + 12) = 1024;
        sub_10001208C(v306 + *(v299 + 28), v301, &qword_100229940, &qword_1001E19D0);
        v198 = v189(v301, 1, v311);
        v199 = *(v0 + 4248);
        v200 = *(v0 + 4232);
        if (v198 == 1)
        {
          v201 = *(v0 + 4208);
          *v200 = 0;
          *(v200 + 8) = 0;
          *(v200 + 16) = xmmword_1001D7160;
          *(v200 + 32) = 0xC000000000000000;
          _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
          if (v189(v199, 1, v201) != 1)
          {
            sub_100011F00(*(v0 + 4248), &qword_100229940, &qword_1001E19D0);
          }
        }

        else
        {
          sub_1001B0368(*(v0 + 4248), v200, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
        }

        v265 = *(v0 + 4368);
        v266 = *(v0 + 4232);
        v267 = *v266;
        sub_1001AFB98(v266, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
        sub_1001AFB98(v265, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
        *(v195 + 14) = v267;
        v193 = loga;
        _os_log_impl(&_mh_execute_header, loga, v325, "%s received AEAD for response bypass contextID=%u", v195, 0x12u);
        sub_100011CF0(v317);
      }

      else
      {
        sub_1001AFB98(*(v0 + 4368), type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
      }

      v268 = *(v0 + 4240);
      v269 = *(v0 + 4208);
      sub_10001208C(&v74[v188], v268, &qword_100229940, &qword_1001E19D0);
      v270 = v189(v268, 1, v269);
      v271 = *(v0 + 4240);
      v272 = *(v0 + 4224);
      if (v270 == 1)
      {
        v273 = *(v0 + 4208);
        *v272 = 0;
        *(v272 + 8) = 0;
        *(v272 + 16) = xmmword_1001D7160;
        *(v272 + 32) = 0xC000000000000000;
        _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
        if (v189(v271, 1, v273) != 1)
        {
          sub_100011F00(*(v0 + 4240), &qword_100229940, &qword_1001E19D0);
        }
      }

      else
      {
        sub_1001B0368(*(v0 + 4240), v272, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
      }

      v274 = *(v0 + 4472);
      v275 = *(v0 + 4384);
      v276 = *(v0 + 4224);
      v277 = *(v0 + 4200);
      v278 = (*(v0 + 4184) + *(v0 + 4720));
      os_unfair_lock_lock(v278);
      sub_100011AC0(&qword_10022F148, &qword_1001E06B0);
      sub_1001AFCB4(v276, v277, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
      swift_storeEnumTagMultiPayload();
      sub_10019ACD8(v277);
      sub_100011F00(v277, &qword_10022F188, &qword_1001E06F0);
      os_unfair_lock_unlock(v278);
      sub_1001AFB98(v274, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
      sub_1001AFB98(v276, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
      sub_1001AFB98(v275, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
      goto LABEL_117;
    }

    goto LABEL_81;
  }

  if (!EnumCaseMultiPayload)
  {
    v41 = *v40;
    v42 = v40[1];

    sub_100012038(v41, v42);
    v43 = sub_1001D0E50();
    v44 = sub_1001D1DD0();

    sub_100011E48(v41, v42);
    if (os_log_type_enabled(v43, v44))
    {
      v321 = *(v0 + 4144);
      logb = *(v0 + 4472);
      v315 = *(v0 + 817);
      v45 = swift_slowAlloc();
      v336 = swift_slowAlloc();
      *v45 = 136315394;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      *(v0 + 3912) = sub_1001D23A0();
      *(v0 + 3920) = v46;
      v346._countAndFlagsBits = 2629690;
      v346._object = 0xE300000000000000;
      sub_1001D18B0(v346);
      v347._countAndFlagsBits = sub_10016B71C(v321, v315);
      sub_1001D18B0(v347);

      v348._countAndFlagsBits = 41;
      v348._object = 0xE100000000000000;
      sub_1001D18B0(v348);
      v47 = sub_1000954E0(*(v0 + 3912), *(v0 + 3920), &v336);

      *(v45 + 4) = v47;
      *(v45 + 12) = 2080;
      sub_100012038(v41, v42);
      v48 = sub_1001CFB50();
      v50 = v49;
      sub_100011E48(v41, v42);
      v51 = sub_1000954E0(v48, v50, &v336);

      *(v45 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v43, v44, "%s Received responseUuid. Ignoring. uuidData=%s", v45, 0x16u);
      swift_arrayDestroy();

      sub_100011E48(v41, v42);
      v38 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse;
      v37 = logb;
      goto LABEL_116;
    }

    v103 = *(v0 + 4472);
    sub_100011E48(v41, v42);

    goto LABEL_114;
  }

  v71 = *v40;
  *(v0 + 4760) = *v40;
  v72 = v40[1];
  *(v0 + 4768) = v72;
  sub_100012038(v71, v72);

  sub_100012038(v71, v72);
  v73 = sub_1001D0E50();
  v74 = sub_1001D1DD0();

  if (!os_log_type_enabled(v73, v74))
  {
    sub_100011E48(v71, v72);
    sub_100011E48(v71, v72);
    goto LABEL_70;
  }

  v75 = v72;
  v76 = *(v0 + 4144);
  v77 = *(v0 + 817);
  v78 = swift_slowAlloc();
  v323 = swift_slowAlloc();
  *(v0 + 3944) = v323;
  *v78 = 136315394;
  sub_1001CFDA0();
  sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  *(v0 + 3768) = sub_1001D23A0();
  *(v0 + 3776) = v79;
  v354._countAndFlagsBits = 2629690;
  v354._object = 0xE300000000000000;
  sub_1001D18B0(v354);
  v80 = v76;
  v72 = v75;
  v355._countAndFlagsBits = sub_10016B71C(v80, v77);
  sub_1001D18B0(v355);

  v356._countAndFlagsBits = 41;
  v356._object = 0xE100000000000000;
  sub_1001D18B0(v356);
  v81 = sub_1000954E0(*(v0 + 3768), *(v0 + 3776), (v0 + 3944));

  *(v78 + 4) = v81;
  *(v78 + 12) = 2048;
  v82 = v75 >> 62;
  if ((v75 >> 62) > 1)
  {
    if (v82 != 2)
    {
      sub_100011E48(v71, v75);
      v83 = 0;
      goto LABEL_69;
    }

    v183 = *(v71 + 16);
    v184 = *(v71 + 24);
    sub_100011E48(v71, v75);
    v83 = v184 - v183;
    if (!__OFSUB__(v184, v183))
    {
      goto LABEL_69;
    }

    __break(1u);
    goto LABEL_58;
  }

  if (v82)
  {
    v27 = sub_100011E48(v71, v75);
    LODWORD(v83) = HIDWORD(v71) - v71;
    if (!__OFSUB__(HIDWORD(v71), v71))
    {
      v83 = v83;
      goto LABEL_69;
    }

LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  sub_100011E48(v71, v75);
  v83 = BYTE6(v75);
LABEL_69:
  *(v78 + 14) = v83;
  sub_100011E48(v71, v75);
  _os_log_impl(&_mh_execute_header, v73, v74, "%s Received payload %ld bytes from node", v78, 0x16u);
  sub_100011CF0(v323);

LABEL_70:

  v202 = *(v0 + 4120) + *(v0 + 4712);
  v27 = type metadata accessor for TrustedRequestConfiguration(0);
  if (*(v202 + *(v27 + 96)) == 1)
  {

    v203 = sub_1001D0E50();
    v204 = sub_1001D1DE0();

    if (os_log_type_enabled(v203, v204))
    {
      logd = *(v0 + 4144);
      v326 = *(v0 + 817);
      v205 = swift_slowAlloc();
      v206 = swift_slowAlloc();
      v335 = v206;
      *v205 = 136315138;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v336 = sub_1001D23A0();
      v337 = v207;
      v365._countAndFlagsBits = 2629690;
      v365._object = 0xE300000000000000;
      sub_1001D18B0(v365);
      v366._countAndFlagsBits = sub_10016B71C(logd, v326);
      sub_1001D18B0(v366);

      v367._countAndFlagsBits = 41;
      v367._object = 0xE100000000000000;
      sub_1001D18B0(v367);
      v208 = sub_1000954E0(v336, v337, &v335);

      *(v205 + 4) = v208;
      _os_log_impl(&_mh_execute_header, v203, v204, "%s Trusted proxy request did not expect response on node stream", v205, 0xCu);
      sub_100011CF0(v206);
    }

    v209 = *(v0 + 4544);
    v210 = *(v0 + 4520);
    v211 = *(v0 + 4472);
    v212 = *(v0 + 4432);
    sub_100089BE4();
    *(v0 + 4784) = swift_allocError();
    *v213 = 5917;
    *(v213 + 8) = _swiftEmptyArrayStorage;
    swift_willThrow();
    sub_100011E48(v71, v72);
    sub_1001AFB98(v211, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
    sub_100011F00(v210, &qword_100229600, &qword_1001E1840);
    sub_100011F00(v209, &qword_10022FD88, &qword_1001E1848);
    sub_100011F00(v212, &qword_100229930, &qword_1001D7198);
    v29 = sub_10018EF2C;
    v27 = v0 + 16;
    v30 = v0 + 3248;
    goto LABEL_82;
  }

  v214 = v72 >> 62;
  if ((v72 >> 62) > 1)
  {
    if (v214 != 2)
    {
      v215 = 0;
      goto LABEL_88;
    }

    v217 = *(v71 + 16);
    v216 = *(v71 + 24);
    v215 = v216 - v217;
    if (!__OFSUB__(v216, v217))
    {
      goto LABEL_88;
    }

    __break(1u);
LABEL_81:
    v218 = *(v0 + 4544);
    v219 = *(v0 + 4520);
    v220 = *(v0 + 4472);
    v221 = *(v0 + 4432);
    v222 = *(v0 + 4384);
    sub_100089BE4();
    *(v0 + 4808) = swift_allocError();
    *v223 = 5918;
    *(v223 + 8) = _swiftEmptyArrayStorage;
    swift_willThrow();
    sub_1001AFB98(v220, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
    sub_100011F00(v219, &qword_100229600, &qword_1001E1840);
    sub_100011F00(v218, &qword_10022FD88, &qword_1001E1848);
    sub_1001AFB98(v222, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
    sub_100011F00(v221, &qword_100229930, &qword_1001D7198);
    v29 = sub_10018F6FC;
    v27 = v0 + 16;
    v30 = v0 + 4000;
LABEL_82:

    return _swift_asyncLet_finish(v27, v28, v29, v30);
  }

  if (v214)
  {
    if (!__OFSUB__(HIDWORD(v71), v71))
    {
      v215 = HIDWORD(v71) - v71;
      goto LABEL_88;
    }

LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v215 = BYTE6(v72);
LABEL_88:
  v224 = (*(v0 + 4656) + *(**(v0 + 4656) + 144));
  os_unfair_lock_lock(v224);
  v225 = v224 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  v226 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v227 = *(v226 + 144);
  v228 = *&v225[v227];
  if (!*(v228 + 16))
  {
    goto LABEL_100;
  }

  v229 = v226;
  v27 = sub_100006028(*(v0 + 4128), *(v0 + 4136));
  if ((v28 & 1) == 0)
  {
    goto LABEL_100;
  }

  v230 = (v0 + 3288);
  v231 = (*(v228 + 56) + (v27 << 7));
  v232 = *v231;
  v233 = v231[1];
  v234 = v231[3];
  *(v0 + 2008) = v231[2];
  *(v0 + 2024) = v234;
  *(v0 + 1976) = v232;
  *(v0 + 1992) = v233;
  v235 = v231[4];
  v236 = v231[5];
  v237 = v231[6];
  *(v0 + 2081) = *(v231 + 105);
  *(v0 + 2056) = v236;
  *(v0 + 2072) = v237;
  *(v0 + 2040) = v235;
  v238 = *(v0 + 1976);
  v239 = *(v0 + 1984);
  v241 = v231[2];
  v240 = v231[3];
  *(v0 + 3288) = v231[1];
  *(v0 + 3304) = v241;
  *(v0 + 3320) = v240;
  v243 = v231[5];
  v242 = v231[6];
  v244 = v231[4];
  *(v0 + 3377) = *(v231 + 105);
  *(v0 + 3352) = v243;
  *(v0 + 3368) = v242;
  *(v0 + 3336) = v244;
  if (v238 >> 62 != 1)
  {
    v257 = v0 + 696;
    *(v0 + 696) = v238;
    *(v0 + 704) = v239;
    v261 = *(v0 + 3368);
    *(v0 + 776) = *(v0 + 3352);
    *(v0 + 792) = v261;
    *(v0 + 801) = *(v0 + 3377);
    v262 = *(v0 + 3304);
    *(v0 + 712) = *v230;
    *(v0 + 728) = v262;
    v263 = *(v0 + 3336);
    *(v0 + 744) = *(v0 + 3320);
    *(v0 + 760) = v263;
    sub_10001208C(v0 + 1976, v0 + 3000, &qword_100230150, &unk_1001D3700);
    goto LABEL_99;
  }

  v307 = v215;
  v245 = v239 + v215;
  if (__OFADD__(v239, v215))
  {
    goto LABEL_123;
  }

  v246 = *(v0 + 4136);
  v318 = v245;
  v327 = *(v0 + 4128);
  v312 = v238 & 0x4000000000000001;
  *(v0 + 952) = v238 & 0x4000000000000001;
  *(v0 + 960) = v245;
  v247 = *(v0 + 3368);
  *(v0 + 1032) = *(v0 + 3352);
  *(v0 + 1048) = v247;
  *(v0 + 1057) = *(v0 + 3377);
  v248 = *(v0 + 3304);
  *(v0 + 968) = *v230;
  *(v0 + 984) = v248;
  v249 = *(v0 + 3336);
  *(v0 + 1000) = *(v0 + 3320);
  *(v0 + 1016) = v249;

  sub_10001208C(v0 + 1976, v0 + 2872, &qword_100230150, &unk_1001D3700);
  sub_10001208C(v0 + 952, v0 + 2744, &qword_100230150, &unk_1001D3700);
  v250 = swift_isUniquelyReferenced_nonNull_native();
  v336 = *&v225[v227];
  sub_10001B1A4((v0 + 952), v327, v246, v250);

  *&v225[v227] = v336;
  v251 = &v225[*(v229 + 100)];
  v252 = v251[3];
  if (v252 >> 61 == 2)
  {
    v254 = *v251;
    v253 = v251[1];
    v255 = v251[2];
    if (!v255)
    {
      v302 = *(v0 + 4352);
      v291 = *(v0 + 4344);
      v297 = *(v0 + 4336);
      v328 = v251[1];
      sub_1001D20F0();
      sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);

      sub_1001D2500();
      sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
      sub_1001D2110();
      (*(v291 + 8))(v302, v297);
      v27 = sub_1001AF240(v254, v328, 0, v252);
      v255 = 0;
      v253 = v328;
      v256 = &v225[*(v229 + 132)];
      *v256 = *(v0 + 3752);
      v256[16] = 0;
    }

    if (!__OFADD__(v255, v307))
    {
      *v251 = v254;
      v251[1] = v253;
      v251[2] = v255 + v307;
      v251[3] = v252;
      goto LABEL_97;
    }

LABEL_124:
    __break(1u);
    return _swift_asyncLet_finish(v27, v28, v29, v30);
  }

LABEL_97:
  v257 = v0 + 2104;
  *(v0 + 2104) = v312;
  *(v0 + 2112) = v318;
  v258 = *(v0 + 3368);
  *(v0 + 2184) = *(v0 + 3352);
  *(v0 + 2200) = v258;
  *(v0 + 2209) = *(v0 + 3377);
  v259 = *(v0 + 3304);
  *(v0 + 2120) = *v230;
  *(v0 + 2136) = v259;
  v260 = *(v0 + 3336);
  *(v0 + 2152) = *(v0 + 3320);
  *(v0 + 2168) = v260;
LABEL_99:
  sub_100011F00(v257, &qword_100230150, &unk_1001D3700);
LABEL_100:
  os_unfair_lock_unlock(v224);
  v264 = swift_task_alloc();
  *(v0 + 4792) = v264;
  *v264 = v0;
  v264[1] = sub_10018F198;

  return sub_1001116C0(v71, v72);
}

uint64_t sub_10018E490()
{
  *(v0 + 4040) = *(v0 + 4752);
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_10018E520, 0, 0);
}

uint64_t sub_10018E520()
{
  v1 = *(v0 + 4544);
  sub_100011F00(*(v0 + 4520), &qword_100229600, &qword_1001E1840);
  sub_100011F00(v1, &qword_10022FD88, &qword_1001E1848);

  return _swift_asyncLet_finish(v0 + 16, v2, sub_10018E5B4, v0 + 3584);
}

uint64_t sub_10018E5D0()
{
  v1 = v0[579];
  v2 = v0[576];
  v3 = v0[575];
  (*(v0[573] + 8))(v0[574], v0[572]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10018E83C()
{
  v27 = v0;
  if (*(*(v0 + 4120) + *(v0 + 4712) + 72) == 1 && (*(v0 + 818) & 1) == 0)
  {

    v1 = sub_1001D0E50();
    v2 = sub_1001D1DE0();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = *(v0 + 4144);
      v20 = *(v0 + 4128);
      v22 = *(v0 + 4136);
      v4 = *(v0 + 817);
      v5 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v5 = 136315394;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v25 = sub_1001D23A0();
      v26 = v6;
      v29._countAndFlagsBits = 2629690;
      v29._object = 0xE300000000000000;
      sub_1001D18B0(v29);
      v30._countAndFlagsBits = sub_10016B71C(v3, v4);
      sub_1001D18B0(v30);

      v31._countAndFlagsBits = 41;
      v31._object = 0xE100000000000000;
      sub_1001D18B0(v31);
      v7 = sub_1000954E0(v25, v26, &v24);

      *(v5 + 4) = v7;
      *(v5 + 12) = 2080;
      *(v5 + 14) = sub_1000954E0(v20, v22, &v24);
      _os_log_impl(&_mh_execute_header, v1, v2, "%s Didn't receive final request execution log entry nodeID=%s", v5, 0x16u);
      swift_arrayDestroy();
    }
  }

  sub_10016A3F4(*(v0 + 4128), *(v0 + 4136));

  v8 = sub_1001D0E50();
  v9 = sub_1001D1DD0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 4144);
    v21 = *(v0 + 4136);
    v23 = *(v0 + 4544);
    v19 = *(v0 + 4128);
    v11 = *(v0 + 817);
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v12 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v25 = sub_1001D23A0();
    v26 = v13;
    v32._countAndFlagsBits = 2629690;
    v32._object = 0xE300000000000000;
    sub_1001D18B0(v32);
    v33._countAndFlagsBits = sub_10016B71C(v10, v11);
    sub_1001D18B0(v33);

    v34._countAndFlagsBits = 41;
    v34._object = 0xE100000000000000;
    sub_1001D18B0(v34);
    v14 = sub_1000954E0(v25, v26, &v24);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1000954E0(v19, v21, &v24);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s Received all messages in node stream: %s", v12, 0x16u);
    swift_arrayDestroy();

    v15 = v23;
  }

  else
  {
    v16 = *(v0 + 4544);

    v15 = v16;
  }

  sub_100011F00(v15, &qword_10022FD88, &qword_1001E1848);

  return _swift_asyncLet_finish(v0 + 16, v17, sub_10018F968, v0 + 3952);
}

uint64_t sub_10018ECDC()
{
  v1 = v0[579];
  v2 = v0[576];
  v3 = v0[575];
  (*(v0[573] + 8))(v0[574], v0[572]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10018EF48()
{
  v1 = v0[579];
  v2 = v0[576];
  v3 = v0[575];
  (*(v0[573] + 8))(v0[574], v0[572]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10018F198()
{
  *(*v1 + 4800) = v0;

  if (v0)
  {
    v2 = sub_10018F3A8;
  }

  else
  {
    v2 = sub_10018F2AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10018F2AC()
{
  v1 = *(v0 + 4472);
  sub_100011E48(*(v0 + 4760), *(v0 + 4768));
  sub_1001AFB98(v1, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
  LOBYTE(v1) = *(v0 + 818);
  sub_100011F00(*(v0 + 4432), &qword_100229930, &qword_1001D7198);
  *(v0 + 819) = 0;
  *(v0 + 818) = v1;
  v2 = swift_task_alloc();
  *(v0 + 4744) = v2;
  *v2 = v0;
  v2[1] = sub_10018B910;
  v3 = *(v0 + 4480);

  return sub_10007FB14(v3);
}

uint64_t sub_10018F3A8()
{
  v1 = v0[568];
  v2 = v0[565];
  v3 = v0[559];
  v4 = v0[554];
  sub_100011E48(v0[595], v0[596]);
  sub_1001AFB98(v3, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
  sub_100011F00(v2, &qword_100229600, &qword_1001E1840);
  sub_100011F00(v1, &qword_10022FD88, &qword_1001E1848);
  sub_100011F00(v4, &qword_100229930, &qword_1001D7198);

  return _swift_asyncLet_finish(v0 + 2, v5, sub_10018F490, v0 + 82);
}

uint64_t sub_10018F4AC()
{
  v1 = v0[579];
  v2 = v0[576];
  v3 = v0[575];
  (*(v0[573] + 8))(v0[574], v0[572]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10018F718()
{
  v1 = v0[579];
  v2 = v0[576];
  v3 = v0[575];
  (*(v0[573] + 8))(v0[574], v0[572]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10018F984()
{
  v1 = v0[579];
  v2 = v0[576];
  v3 = v0[575];
  (*(v0[573] + 8))(v0[574], v0[572]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10018FBD4(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  sub_100011AC0(&qword_10022FE40, &qword_1001E1A40);
  v2[8] = swift_task_alloc();
  v3 = sub_100011AC0(&qword_10022FE48, &qword_1001E1A48);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10018FCD8, 0, 0);
}

uint64_t sub_10018FCD8()
{
  v1 = v0[6];
  if (*(v1 + qword_100243500 + 72) == 1)
  {
    sub_100011AC0(&qword_10022FE20, &qword_1001E19F0);
    sub_1001D1BF0();
    v0[12] = *(*v1 + 368);
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_10018FE2C;
    v3 = v0[9];

    return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v3);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10018FE2C()
{

  return _swift_task_switch(sub_10018FF28, 0, 0);
}

uint64_t sub_10018FF28()
{
  v2 = v0[2];
  v1 = v0[3];
  v0[14] = v2;
  v0[15] = v1;
  v3 = v0[4];
  v4 = v0[5];
  v0[16] = v3;
  v0[17] = v4;
  if (v1)
  {

    sub_1001AF358(v2, v1, v3, v4);
    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = sub_1001900A0;

    JUMPOUT(0x10011FFD0);
  }

  (*(v0[10] + 8))(v0[11], v0[9]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001900A0()
{

  if (v0)
  {

    v1 = sub_1001902C8;
  }

  else
  {
    v1 = sub_1001901B8;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1001901B8()
{
  v1 = v0[8];
  sub_1001AF3A4(v0[14], v0[15], v0[16], v0[17]);
  v2 = type metadata accessor for ValidatedProxiedAttestation(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_100011F00(v1, &qword_10022FE40, &qword_1001E1A40);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_10018FE2C;
  v4 = v0[9];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v4);
}

uint64_t sub_1001902C8()
{
  v1 = v0[8];
  sub_1001AF3A4(v0[14], v0[15], v0[16], v0[17]);
  v2 = type metadata accessor for ValidatedProxiedAttestation(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_100011F00(v1, &qword_10022FE40, &qword_1001E1A40);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_10018FE2C;
  v4 = v0[9];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v4);
}

uint64_t sub_1001903D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 520) = a5;
  *(v5 + 216) = a3;
  *(v5 + 224) = a4;
  *(v5 + 208) = a2;
  v6 = sub_1001D20D0();
  *(v5 + 232) = v6;
  *(v5 + 240) = *(v6 - 8);
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0);
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = sub_100011AC0(&qword_100229930, &qword_1001D7198);
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  v7 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse(0);
  *(v5 + 336) = v7;
  *(v5 + 344) = *(v7 - 8);
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();
  sub_100011AC0(&qword_10022FD78, &qword_1001E1830);
  *(v5 + 368) = swift_task_alloc();
  v8 = sub_100011AC0(&qword_10022FD80, &qword_1001E1838);
  *(v5 + 376) = v8;
  *(v5 + 384) = *(v8 - 8);
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = sub_100011AC0(&qword_100229600, &qword_1001E1840);
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = type metadata accessor for NWAsyncConnection.Inbound(0);
  *(v5 + 424) = swift_task_alloc();
  sub_100011AC0(&qword_10022FD88, &qword_1001E1848);
  *(v5 + 432) = swift_task_alloc();

  return _swift_task_switch(sub_100190718, 0, 0);
}

uint64_t sub_100190718()
{
  v1 = v0[54];
  v2 = v0[51];
  v3 = v0[49];
  v4 = v0[50];
  v5 = v0[47];
  v6 = v0[48];
  v7 = v0[27];
  sub_1001AFCB4(v0[26], v0[53], type metadata accessor for NWAsyncConnection.Inbound);
  sub_1001B0458(&qword_10022EE88, type metadata accessor for NWAsyncConnection.Inbound, &protocol conformance descriptor for NWAsyncConnection.Inbound);
  sub_1001D2390();
  (*(v6 + 16))(v3, v1, v5);
  sub_100024B78(&qword_10022FD90, &qword_10022FD80, &qword_1001E1838, &protocol conformance descriptor for AsyncCompactMapSequence<A, B>);
  sub_1001D1C90();
  v8 = v2 + *(v4 + 80);
  *v8 = 0;
  *(v8 + 8) = 2;
  *(v2 + *(v4 + 76)) = xmmword_1001D3A00;
  v9 = *v7;
  v10 = qword_1002434F8;
  v0[55] = *(*v7 + 392);
  v0[56] = v10;
  v0[57] = *(v9 + 368);
  v0[58] = *(v9 + 280);
  v11 = swift_task_alloc();
  v0[59] = v11;
  *v11 = v0;
  v11[1] = sub_100190954;
  v12 = v0[46];

  return sub_10007FB14(v12);
}

uint64_t sub_100190954()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_10019201C;
  }

  else
  {
    v2 = sub_100190A68;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100190A68()
{
  v132 = v0;
  v1 = v0;
  v2 = *(v0 + 368);
  if ((*(*(v0 + 344) + 48))(v2, 1, *(v0 + 336)) == 1)
  {
    sub_100011F00(*(v0 + 408), &qword_100229600, &qword_1001E1840);

    v3 = sub_1001D0E50();
    v4 = sub_1001D1DD0();

    if (os_log_type_enabled(v3, v4))
    {
      v125 = *(v0 + 432);
      v5 = *(v0 + 224);
      v6 = *(v0 + 520);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v129 = v8;
      *v7 = 136315138;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v130 = sub_1001D23A0();
      v131 = v9;
      v134._countAndFlagsBits = 2629690;
      v134._object = 0xE300000000000000;
      sub_1001D18B0(v134);
      v135._countAndFlagsBits = sub_10016B71C(v5, v6);
      sub_1001D18B0(v135);

      v136._countAndFlagsBits = 41;
      v136._object = 0xE100000000000000;
      sub_1001D18B0(v136);
      v10 = sub_1000954E0(v130, v131, &v129);

      *(v7 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s Received all messages on response bypass", v7, 0xCu);
      sub_100011CF0(v8);

      v11 = v125;
    }

    else
    {
      v25 = *(v0 + 432);

      v11 = v25;
    }

    sub_100011F00(v11, &qword_10022FD88, &qword_1001E1848);

    v26 = *(v0 + 8);
    goto LABEL_8;
  }

  v13 = *(v0 + 352);
  v12 = *(v0 + 360);
  sub_1001B0368(v2, v12, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
  sub_1001AFCB4(v12, v13, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);

  v14 = sub_1001D0E50();
  v15 = sub_1001D1DD0();

  if (os_log_type_enabled(v14, v15))
  {
    v118 = *(v0 + 328);
    v120 = *(v0 + 352);
    v16 = *(v0 + 224);
    v17 = *(v0 + 520);
    v18 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    *v18 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    *(v0 + 160) = sub_1001D23A0();
    *(v0 + 168) = v19;
    v137._countAndFlagsBits = 2629690;
    v137._object = 0xE300000000000000;
    sub_1001D18B0(v137);
    v138._countAndFlagsBits = sub_10016B71C(v16, v17);
    sub_1001D18B0(v138);

    v139._countAndFlagsBits = 41;
    v139._object = 0xE100000000000000;
    sub_1001D18B0(v139);
    v20 = sub_1000954E0(*(v0 + 160), *(v0 + 168), &v130);

    *(v18 + 4) = v20;
    *(v18 + 12) = 2080;
    sub_10001208C(v120, v118, &qword_100229930, &qword_1001D7198);
    v21 = sub_1001D1820();
    v23 = v22;
    sub_1001AFB98(v120, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
    v24 = sub_1000954E0(v21, v23, &v130);

    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s Received message on response bypass: %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v28 = *(v0 + 352);

    sub_1001AFB98(v28, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
  }

  v29 = *(v0 + 320);
  sub_10001208C(*(v0 + 360), v29, &qword_100229930, &qword_1001D7198);
  v30 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  if ((*(*(v30 - 8) + 48))(v29, 1, v30) == 1)
  {
    v31 = *(v0 + 360);
LABEL_37:
    sub_1001AFB98(v31, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
    sub_100011F00(*(v1 + 320), &qword_100229930, &qword_1001D7198);
    v105 = swift_task_alloc();
    *(v1 + 472) = v105;
    *v105 = v1;
    v105[1] = sub_100190954;
    v106 = *(v1 + 368);

    return sub_10007FB14(v106);
  }

  sub_10001208C(*(v0 + 320), *(v0 + 312), &qword_100229930, &qword_1001D7198);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v33 = *(v0 + 312);
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v45 = *(v0 + 288);
      v46 = *(v0 + 296);
      sub_1001B0368(v33, v46, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
      sub_1001AFCB4(v46, v45, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);

      v47 = sub_1001D0E50();
      v48 = sub_1001D1DD0();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = *(v0 + 280);
        v122 = *(v0 + 288);
        v50 = *(v0 + 224);
        v51 = *(v0 + 520);
        v52 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        *v52 = 136315394;
        sub_1001CFDA0();
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        *(v0 + 96) = sub_1001D23A0();
        *(v0 + 104) = v53;
        v143._countAndFlagsBits = 2629690;
        v143._object = 0xE300000000000000;
        sub_1001D18B0(v143);
        v144._countAndFlagsBits = sub_10016B71C(v50, v51);
        sub_1001D18B0(v144);

        v145._countAndFlagsBits = 41;
        v145._object = 0xE100000000000000;
        sub_1001D18B0(v145);
        v54 = sub_1000954E0(*(v0 + 96), *(v0 + 104), &v130);

        *(v52 + 4) = v54;
        *(v52 + 12) = 2080;
        *(v0 + 200) = v49;
        sub_100011AC0(&qword_10022FDA0, &qword_1001E1858);
        *(v0 + 112) = sub_1001D1830();
        *(v0 + 120) = v55;
        v146._countAndFlagsBits = 2618;
        v146._object = 0xE200000000000000;
        sub_1001D18B0(v146);
        v56 = *(v0 + 112);
        v57 = *(v1 + 120);
        sub_1001B0458(&qword_100229A18, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary, &protocol conformance descriptor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
        v58 = sub_1001D0B30();
        v60 = v59;
        *(v1 + 128) = v56;
        *(v1 + 136) = v57;

        v147._countAndFlagsBits = v58;
        v147._object = v60;
        sub_1001D18B0(v147);

        v61 = *(v1 + 128);
        v62 = *(v1 + 136);
        sub_1001AFB98(v122, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
        v63 = sub_1000954E0(v61, v62, &v130);

        *(v52 + 14) = v63;
        _os_log_impl(&_mh_execute_header, v47, v48, "%s Received responseSummary on response bypass responseSummary=%s", v52, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v95 = *(v0 + 288);

        sub_1001AFB98(v95, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
      }

      v96 = *(v1 + 480);
      sub_1001A9AA8(*(v1 + 296));
      if (v96)
      {
        v97 = *(v1 + 432);
        v98 = *(v1 + 408);
        v99 = *(v1 + 360);
        v100 = *(v1 + 320);
        sub_1001AFB98(*(v1 + 296), type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
        sub_1001AFB98(v99, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
        sub_100011F00(v98, &qword_100229600, &qword_1001E1840);
        sub_100011F00(v97, &qword_10022FD88, &qword_1001E1848);
        sub_100011F00(v100, &qword_100229930, &qword_1001D7198);

        v26 = *(v1 + 8);
LABEL_8:

        return v26();
      }

      v94 = *(v1 + 360);
      v103 = *(v1 + 296);
      v104 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary;
    }

    else
    {
      v75 = *(v0 + 264);
      v76 = *(v0 + 272);
      sub_1001B0368(v33, v76, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
      sub_1001AFCB4(v76, v75, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);

      v77 = sub_1001D0E50();
      v78 = sub_1001D1DD0();

      if (os_log_type_enabled(v77, v78))
      {
        v124 = *(v0 + 272);
        v126 = *(v0 + 360);
        v117 = *(v0 + 264);
        v79 = *(v0 + 256);
        v80 = *(v0 + 224);
        v81 = *(v0 + 520);
        v82 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        *v82 = 136315394;
        sub_1001CFDA0();
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        *(v0 + 16) = sub_1001D23A0();
        *(v0 + 24) = v83;
        v151._countAndFlagsBits = 2629690;
        v151._object = 0xE300000000000000;
        sub_1001D18B0(v151);
        v152._countAndFlagsBits = sub_10016B71C(v80, v81);
        sub_1001D18B0(v152);

        v153._countAndFlagsBits = 41;
        v153._object = 0xE100000000000000;
        sub_1001D18B0(v153);
        v84 = sub_1000954E0(*(v0 + 16), *(v0 + 24), &v130);

        *(v82 + 4) = v84;
        *(v82 + 12) = 2080;
        *(v0 + 184) = v79;
        sub_100011AC0(&qword_10022FD98, &qword_1001E1850);
        *(v0 + 32) = sub_1001D1830();
        *(v0 + 40) = v85;
        v154._countAndFlagsBits = 2618;
        v154._object = 0xE200000000000000;
        sub_1001D18B0(v154);
        v87 = *(v0 + 32);
        v86 = *(v1 + 40);
        sub_1001B0458(&qword_100229A48, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry, &protocol conformance descriptor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
        v88 = sub_1001D0B30();
        v90 = v89;
        *(v1 + 48) = v87;
        *(v1 + 56) = v86;

        v155._countAndFlagsBits = v88;
        v155._object = v90;
        sub_1001D18B0(v155);

        v91 = *(v1 + 48);
        v92 = *(v1 + 56);
        sub_1001AFB98(v117, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
        v93 = sub_1000954E0(v91, v92, &v130);

        *(v82 + 14) = v93;
        _os_log_impl(&_mh_execute_header, v77, v78, "%s Unexpected requestExecutionLogEntry on response bypass entry=%s", v82, 0x16u);
        swift_arrayDestroy();

        sub_1001AFB98(v124, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
        goto LABEL_27;
      }

      v94 = *(v0 + 360);
      v102 = *(v0 + 264);
      v101 = *(v0 + 272);

      sub_1001AFB98(v102, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
      v103 = v101;
      v104 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry;
    }

    sub_1001AFB98(v103, v104);
LABEL_36:
    v31 = v94;
    goto LABEL_37;
  }

  if (!EnumCaseMultiPayload)
  {
    v34 = *v33;
    v35 = v33[1];

    sub_100012038(v34, v35);
    v36 = sub_1001D0E50();
    v37 = sub_1001D1DD0();

    sub_100011E48(v34, v35);
    if (os_log_type_enabled(v36, v37))
    {
      v121 = *(v0 + 224);
      v126 = *(v0 + 360);
      v119 = *(v0 + 520);
      v38 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      *v38 = 136315394;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      *(v0 + 144) = sub_1001D23A0();
      *(v0 + 152) = v39;
      v140._countAndFlagsBits = 2629690;
      v140._object = 0xE300000000000000;
      sub_1001D18B0(v140);
      v141._countAndFlagsBits = sub_10016B71C(v121, v119);
      sub_1001D18B0(v141);

      v142._countAndFlagsBits = 41;
      v142._object = 0xE100000000000000;
      sub_1001D18B0(v142);
      v40 = sub_1000954E0(*(v0 + 144), *(v0 + 152), &v130);

      *(v38 + 4) = v40;
      *(v38 + 12) = 2080;
      sub_100012038(v34, v35);
      v41 = sub_1001CFB50();
      v43 = v42;
      sub_100011E48(v34, v35);
      v44 = sub_1000954E0(v41, v43, &v130);

      *(v38 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v36, v37, "%s Received responseUuid on response bypass. Ignoring. uuidData=%s", v38, 0x16u);
      swift_arrayDestroy();

      sub_100011E48(v34, v35);
LABEL_27:
      v31 = v126;
      goto LABEL_37;
    }

    v94 = *(v0 + 360);
    sub_100011E48(v34, v35);

    goto LABEL_36;
  }

  v64 = *v33;
  *(v0 + 488) = *v33;
  v65 = v33[1];
  *(v0 + 496) = v65;
  sub_100012038(v64, v65);

  sub_100012038(v64, v65);
  v66 = sub_1001D0E50();
  v67 = sub_1001D1DD0();

  if (os_log_type_enabled(v66, v67))
  {
    v127 = v67;
    v68 = *(v0 + 224);
    v69 = *(v0 + 520);
    v70 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    *(v0 + 192) = v123;
    *v70 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    *(v0 + 80) = sub_1001D23A0();
    *(v0 + 88) = v71;
    v148._countAndFlagsBits = 2629690;
    v148._object = 0xE300000000000000;
    sub_1001D18B0(v148);
    v149._countAndFlagsBits = sub_10016B71C(v68, v69);
    sub_1001D18B0(v149);

    v150._countAndFlagsBits = 41;
    v150._object = 0xE100000000000000;
    sub_1001D18B0(v150);
    v72 = sub_1000954E0(*(v0 + 80), *(v0 + 88), (v0 + 192));

    *(v70 + 4) = v72;
    *(v70 + 12) = 2048;
    v73 = v65 >> 62;
    if ((v65 >> 62) > 1)
    {
      if (v73 != 2)
      {
        sub_100011E48(v64, v65);
        v74 = 0;
        goto LABEL_47;
      }

      v108 = *(v64 + 16);
      v107 = *(v64 + 24);
      sub_100011E48(v64, v65);
      v74 = v107 - v108;
      if (!__OFSUB__(v107, v108))
      {
        goto LABEL_47;
      }

      __break(1u);
    }

    else if (!v73)
    {
      sub_100011E48(v64, v65);
      v74 = BYTE6(v65);
LABEL_47:
      *(v70 + 14) = v74;
      sub_100011E48(v64, v65);
      _os_log_impl(&_mh_execute_header, v66, v127, "%s Received payload %ld bytes on response bypass", v70, 0x16u);
      sub_100011CF0(v123);

      goto LABEL_48;
    }

    result = sub_100011E48(v64, v65);
    LODWORD(v74) = HIDWORD(v64) - v64;
    if (__OFSUB__(HIDWORD(v64), v64))
    {
      __break(1u);
      return result;
    }

    v74 = v74;
    goto LABEL_47;
  }

  sub_100011E48(v64, v65);
  sub_100011E48(v64, v65);
LABEL_48:

  v109 = *(*(v1 + 216) + *(v1 + 456));
  v110 = (v109 + *(*v109 + 144));
  os_unfair_lock_lock(v110);
  v111 = *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  v112 = v110 + v111 + *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 132);
  if (v112[16] == 1)
  {
    v128 = v64;
    v113 = *(v1 + 240);
    v114 = *(v1 + 248);
    v115 = *(v1 + 232);
    sub_1001D20F0();
    sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    sub_1001D2500();
    sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    sub_1001D2110();
    (*(v113 + 8))(v114, v115);
    v64 = v128;
    *v112 = *(v1 + 64);
    v112[16] = 0;
  }

  os_unfair_lock_unlock(v110);
  v116 = swift_task_alloc();
  *(v1 + 504) = v116;
  *v116 = v1;
  v116[1] = sub_10019220C;

  return sub_1001116C0(v64, v65);
}

uint64_t sub_10019201C()
{
  *(v0 + 176) = *(v0 + 480);
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_1001920B0, 0, 0);
}

uint64_t sub_1001920B0()
{
  v1 = v0[54];
  sub_100011F00(v0[51], &qword_100229600, &qword_1001E1840);
  sub_100011F00(v1, &qword_10022FD88, &qword_1001E1848);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10019220C()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_10019240C;
  }

  else
  {
    v2 = sub_100192320;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100192320()
{
  v1 = v0[45];
  sub_100011E48(v0[61], v0[62]);
  sub_1001AFB98(v1, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
  sub_100011F00(v0[40], &qword_100229930, &qword_1001D7198);
  v2 = swift_task_alloc();
  v0[59] = v2;
  *v2 = v0;
  v2[1] = sub_100190954;
  v3 = v0[46];

  return sub_10007FB14(v3);
}

uint64_t sub_10019240C()
{
  v1 = v0[54];
  v2 = v0[51];
  v3 = v0[45];
  v4 = v0[40];
  sub_100011E48(v0[61], v0[62]);
  sub_1001AFB98(v3, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
  sub_100011F00(v2, &qword_100229600, &qword_1001E1840);
  sub_100011F00(v1, &qword_10022FD88, &qword_1001E1848);
  sub_100011F00(v4, &qword_100229930, &qword_1001D7198);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001925B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, _OWORD *a14)
{
  v264 = a6;
  v262 = a4;
  v263 = a8;
  v243 = a5;
  v244 = a7;
  v241 = a1;
  v242 = a3;
  v261 = a2;
  v254 = a9;
  v266 = a14;
  v269 = a12;
  v260 = a10;
  v14 = sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  __chkstk_darwin(v14 - 8);
  v240 = &v208 - v15;
  v16 = sub_1001CFD60();
  v238 = *(v16 - 8);
  v239 = v16;
  __chkstk_darwin(v16);
  v220 = &v208 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1001D1BA0();
  __chkstk_darwin(v18 - 8);
  v237 = &v208 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
  __chkstk_darwin(v20 - 8);
  v253 = &v208 - v21;
  v22 = sub_100011AC0(&qword_10022FF30, &unk_1001E1C70);
  v235 = *(v22 - 8);
  v236 = v22;
  __chkstk_darwin(v22);
  v234 = &v208 - v23;
  v24 = sub_100011AC0(&qword_100229328, &qword_1001D6480);
  v232 = *(v24 - 8);
  v233 = v24;
  __chkstk_darwin(v24);
  v231 = &v208 - v25;
  v26 = sub_100011AC0(&qword_1002292A0, &qword_1001D6410);
  v228 = *(v26 - 8);
  v229 = v26;
  v27 = __chkstk_darwin(v26);
  v227 = &v208 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v225 = &v208 - v30;
  __chkstk_darwin(v29);
  v224 = (&v208 - v31);
  v259 = sub_100011AC0(&qword_1002292F8, &unk_1001E1C80);
  v250 = *(v259 - 8);
  v32 = __chkstk_darwin(v259);
  v230 = &v208 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v226 = &v208 - v35;
  __chkstk_darwin(v34);
  v223 = &v208 - v36;
  v255 = sub_100011AC0(&qword_1002292A8, &qword_1001D6418);
  v251 = *(v255 - 8);
  v37 = __chkstk_darwin(v255);
  v248 = &v208 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v252 = &v208 - v39;
  v247 = sub_100011AC0(&qword_10022FF38, &qword_1001E1C90);
  v257 = *(v247 - 1);
  v40 = __chkstk_darwin(v247);
  v222 = &v208 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v221 = &v208 - v43;
  __chkstk_darwin(v42);
  v45 = &v208 - v44;
  v46 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  v246 = *(v46 - 8);
  v47 = __chkstk_darwin(v46);
  v49 = &v208 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v47);
  v52 = &v208 - v51;
  v53 = __chkstk_darwin(v50);
  v55 = &v208 - v54;
  v56 = __chkstk_darwin(v53);
  v58 = &v208 - v57;
  __chkstk_darwin(v56);
  v60 = &v208 - v59;
  v256 = sub_1001D02E0();
  v268 = *(v256 - 8);
  v61 = __chkstk_darwin(v256);
  v245 = &v208 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v267 = &v208 - v63;
  v64 = v265;
  v65 = sub_10012C59C(a11);
  v265 = v64;
  if (v64)
  {
    sub_100011F00(v260, &qword_1002288B0, &qword_1001D5FC0);
    sub_100088D84(v266);

    v67 = a11;
    return sub_100011CF0(v67);
  }

  v213 = v60;
  v214 = v52;
  v217 = v65;
  v218 = v58;
  v208 = v45;
  v209 = v55;
  v215 = v49;
  v216 = v66;
  v249 = v46;
  v68 = a11[3];
  v69 = a11[4];
  v70 = sub_100024DC8(a11, v68);
  v71 = v266;
  sub_1000884D8(v266, &v281);
  v219 = sub_100106E64(v70, v71, v269, v68, v69);
  sub_100088D84(v71);
  v72 = a11[3];
  v73 = a11[4];
  v258 = a11;
  sub_100024DC8(a11, v72);
  v282 = &type metadata for SystemInfo;
  v283 = &protocol witness table for SystemInfo;
  v74 = swift_allocObject();
  *&v281 = v74;
  v75 = v71[9];
  v74[9] = v71[8];
  v74[10] = v75;
  v74[11] = v71[10];
  v76 = v71[5];
  v74[5] = v71[4];
  v74[6] = v76;
  v77 = v71[7];
  v74[7] = v71[6];
  v74[8] = v77;
  v78 = v71[1];
  v74[1] = *v71;
  v74[2] = v78;
  v79 = v71[3];
  v74[3] = v71[2];
  v74[4] = v79;
  Configuration.environment(systemInfo:)(&v281, v72, v73, v267);
  sub_100011CF0(&v281);
  v80 = v268;
  v81 = v245;
  v82 = v256;
  (*(v268 + 104))(v245, enum case for TC2Environment.liveon(_:), v256);
  sub_1001B0458(&qword_10022FF40, &type metadata accessor for TC2Environment, &protocol conformance descriptor for TC2Environment);
  sub_1001D1950();
  sub_1001D1950();
  if (v281 == v280)
  {
    v83 = 1;
  }

  else
  {
    v83 = sub_1001D2470();
  }

  v84 = v218;
  v85 = *(v80 + 8);
  v268 = v80 + 8;
  v218 = v85;
  v85(v81, v82);

  v86 = v258;
  sub_100024DC8(v258, v258[3]);
  sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
  v87 = (v246 + 8);
  v266 = (v246 + 8);
  if (v83)
  {
    v88 = v213;
    sub_1001D0370();
    sub_1001B04A0(&qword_100230310, &qword_100228AA8, &qword_1001D5BC0);
    sub_1001D0210();
    v245 = *v87;
    (v245)(v88, v249);
    v90 = *(&v281 + 1);
    v89._countAndFlagsBits = v281;
    if (*(&v281 + 1))
    {
      *&v281 = 0x5F736F637270;
      *(&v281 + 1) = 0xE600000000000000;
      v89._object = v90;
      sub_1001D18B0(v89);

      v210 = 0;
      v211 = 0;
      v212 = *(&v281 + 1);
      v213 = v281;
    }

    else
    {
      v212 = 0;
      v213 = v281;
      v210 = 0;
      v211 = 0;
    }

    v86 = v258;
  }

  else
  {
    sub_1001D0380();
    v246 = sub_1001B04A0(&qword_100230310, &qword_100228AA8, &qword_1001D5BC0);
    sub_1001D0210();
    v91 = *v87;
    v92 = v249;
    (*v87)(v84, v249);
    v212 = *(&v281 + 1);
    v213 = v281;
    v93 = v86[3];
    v245 = v86[4];
    sub_100024DC8(v86, v93);
    sub_1001D0470();
    sub_1001D0210();
    v245 = v91;
    (v91)(v84, v92);
    v210 = *(&v281 + 1);
    v211 = v281;
  }

  v94 = v252;
  sub_100024DC8(v86, v86[3]);
  if (v219)
  {
    sub_100011AC0(&qword_100228A88, &qword_1001E1CA0);
    v95 = v208;
    sub_1001D04E0();
    v252 = sub_1001B04A0(&qword_10022FF60, &qword_100228A88, &qword_1001E1CA0);
    sub_1001D0210();
    v96 = *(v257 + 8);
    v97 = v95;
    v98 = v247;
    v257 += 8;
    v96(v97, v247);
    if (BYTE8(v281))
    {
      v99 = sub_100105E34();
      v101 = 2;
      if ((v100 & 1) == 0)
      {
        v101 = v99;
      }
    }

    else
    {
      v101 = v281;
    }

    v121 = v221;
    v122 = v101 & ~(v101 >> 63);
    if (v122 >= 2)
    {
      v122 = 2;
    }

    v246 = v122;
    sub_100024DC8(v86, v86[3]);
    sub_1001D04D0();
    sub_1001D0210();
    v96(v121, v98);
    if (BYTE8(v281) == 1)
    {
      v123 = sub_100105B84();
      v125 = 4;
      if ((v124 & 1) == 0)
      {
        v125 = v123;
      }
    }

    else
    {
      v125 = v281;
    }

    if (v125 <= 1)
    {
      v125 = 1;
    }

    if (v125 >= 4)
    {
      v126 = 4;
    }

    else
    {
      v126 = v125;
    }

    v127 = v258;
    sub_100024DC8(v258, v258[3]);
    v128 = v222;
    sub_1001D04F0();
    sub_1001D0210();
    v96(v128, v247);
    v129 = v281;
    v257 = v126;
    if (BYTE8(v281))
    {
      v129 = v126 - v246;
    }

    v130 = v129 & ~(v129 >> 63);
    if (v130 >= 4)
    {
      v130 = 4;
    }

    v247 = v130;
    sub_100024DC8(v127, v127[3]);
    v131 = v223;
    sub_1001D0460();
    sub_1001D0210();
    (*(v250 + 8))(v131, v259);
    LODWORD(v252) = v281;
    v132 = v251;
    v113 = v248;
    goto LABEL_64;
  }

  sub_1001D03E0();
  sub_1001D0210();
  v103 = v251 + 8;
  v102 = *(v251 + 8);
  v104 = v255;
  v102(v94, v255);
  v105 = v281;
  v106 = sub_1001050A8();
  if (v107)
  {
    v108 = v105;
  }

  else
  {
    v108 = v106;
  }

  if (v105 < v108)
  {
    v108 = v105;
  }

  v246 = v108;
  sub_100024DC8(v86, v86[3]);
  sub_1001D03C0();
  sub_1001D0210();
  v247 = v102;
  v102(v94, v104);
  v109 = v281;
  v110 = [objc_opt_self() currentEstimates];
  sub_100015A10(0, &qword_10022FF48, RDEstimate_ptr);
  v111 = sub_1001D19D0();

  if (v111 >> 62)
  {
    result = sub_1001D2190();
  }

  else
  {
    result = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v113 = v248;
  v257 = v103;
  if (!result)
  {

    goto LABEL_49;
  }

  if ((v111 & 0xC000000000000001) != 0)
  {
    goto LABEL_72;
  }

  if (!*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  for (i = *(v111 + 32); ; i = sub_1001D2040())
  {
    v115 = i;

    v116 = [v115 countryCode];

    if (v116)
    {
      v117 = sub_1001D17D0();
      v119 = v118;

      v120 = v117;
    }

    else
    {
LABEL_49:
      v120 = 0;
      v119 = 0;
    }

    v133 = sub_100104D84(v120, v119);
    v135 = v134;

    if (v135)
    {
      v136 = v109;
    }

    else
    {
      v136 = v133;
    }

    if (v109 >= v136)
    {
      v137 = v136;
    }

    else
    {
      v137 = v109;
    }

    sub_100024DC8(v258, v258[3]);
    v109 = &type metadata for Int;
    v138 = v252;
    sub_1001D03F0();
    sub_1001D0210();
    (v247)(v138, v255);
    v257 = v137;
    v139 = v137 - v246;
    if (__OFSUB__(v137, v246))
    {
      __break(1u);
      goto LABEL_71;
    }

    v140 = v281;
    v132 = v251;
    if ((v281 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_71:
    __break(1u);
LABEL_72:
    ;
  }

  LODWORD(v252) = 0;
  if (v281 >= v139)
  {
    v140 = v139;
  }

  if (v139 <= 0)
  {
    v141 = 0;
  }

  else
  {
    v141 = v140;
  }

  v247 = v141;
  v127 = v258;
LABEL_64:
  v251 = a13;
  sub_100024DC8(v127, v127[3]);
  sub_1001D04C0();
  sub_1001D0210();
  (*(v132 + 8))(v113, v255);
  v255 = v284;
  sub_100024DC8(v127, v127[3]);
  v142 = sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
  v143 = v209;
  v221 = v142;
  sub_1001D0340();
  v222 = sub_1001B04A0(&qword_100230310, &qword_100228AA8, &qword_1001D5BC0);
  sub_1001D0210();
  (v245)(v143, v249);
  v223 = *(&v281 + 1);
  v248 = v281;
  sub_100024DC8(v127, v127[3]);
  v144 = v224;
  sub_1001D0510();
  sub_1001D0210();
  v145 = v229;
  v146 = *(v228 + 8);
  v146(v144, v229);
  v147 = v279;
  v148 = v127[3];
  v228 = v127[4];
  sub_100024DC8(v127, v148);
  v149 = v225;
  sub_1001D04A0();
  sub_1001D0210();
  v146(v149, v145);
  v150 = v278;
  v151 = v127[3];
  v228 = v127[4];
  sub_100024DC8(v127, v151);
  v152 = v227;
  sub_1001D0490();
  sub_1001D0210();
  v146(v152, v145);
  v153 = v277;
  sub_100024DC8(v127, v127[3]);
  v154 = v226;
  sub_1001D0400();
  sub_1001D0210();
  v209 = *(v250 + 8);
  v209(v154, v259);
  LODWORD(v250) = v276;
  v155 = sub_1001D02B0();
  v228 = v156;
  v229 = v155;
  LODWORD(v227) = sub_1001D0280();
  v224 = type metadata accessor for TrustedRequestConfiguration(0);
  sub_1001D02C0();
  v157 = sub_1001D0290();
  v225 = v158;
  v226 = v157;
  sub_100024DC8(v127, v127[3]);
  v159 = v231;
  sub_1001D03A0();
  sub_1001D0210();
  (*(v232 + 8))(v159, v233);
  v232 = *(&v280 + 1);
  v233 = v280;
  sub_100024DC8(v127, v127[3]);
  v160 = v230;
  sub_1001D0500();
  sub_1001D0210();
  v209(v160, v259);
  LODWORD(v259) = v275;
  sub_100024DC8(v127, v127[3]);
  v161 = v214;
  sub_1001D0360();
  sub_1001D0210();
  v162 = v249;
  v163 = v245;
  (v245)(v161, v249);
  v230 = v274;
  v231 = v273;
  v164 = v127[3];
  v214 = v127[4];
  sub_100024DC8(v127, v164);
  v165 = v215;
  sub_1001D0320();
  sub_1001D0210();
  (v163)(v165, v162);
  v166 = v271;
  v249 = v272;
  sub_100024DC8(v127, v127[3]);
  sub_100011AC0(&qword_10022FF50, &qword_1001E1C98);
  v167 = v234;
  sub_1001D0440();
  sub_1001B04A0(&qword_10022FF58, &qword_10022FF50, &qword_1001E1C98);
  sub_1001D0210();
  (*(v235 + 8))(v167, v236);
  LODWORD(v236) = v270;
  v168 = v260;
  sub_10001208C(v260, v253, &qword_1002288B0, &qword_1001D5FC0);
  v169 = v237;
  sub_1001D1C40();
  LODWORD(v245) = sub_10012D7B8(v169);
  v170 = v240;
  sub_100104730(v240);
  v172 = v238;
  v171 = v239;
  v173 = (*(v238 + 48))(v170, 1, v239);
  v266 = v166;
  if (v173 == 1)
  {

    sub_100011F00(v168, &qword_1002288B0, &qword_1001D5FC0);
    v218(v267, v256);
    sub_100011F00(v170, &qword_100227A38, &unk_1001D35F0);
    v174 = 1;
  }

  else
  {
    v175 = v220;
    (*(v172 + 32))(v220, v170, v171);
    sub_1001CFD00();
    v177 = v176;

    sub_100011F00(v168, &qword_1002288B0, &qword_1001D5FC0);
    (*(v172 + 8))(v175, v171);
    v218(v267, v256);
    v174 = v177 < -129600.0;
  }

  LODWORD(v269) = v174;
  v178 = v224;
  v179 = v254;
  v180 = (v254 + v224[20]);
  v181 = (v254 + v224[21]);
  v182 = v224[22];
  v268 = v224[23];
  v183 = (v254 + v182);
  v184 = (v254 + v224[25]);
  v185 = v224[29];
  v186 = (v254 + v224[28]);
  v187 = sub_1001CFDA0();
  (*(*(v187 - 8) + 56))(v179 + v185, 1, 1, v187);
  v188 = v178[30];
  v189 = v178[31];
  v190 = v257;
  *v179 = v246;
  *(v179 + 8) = v190;
  v191 = v255;
  *(v179 + 16) = v247;
  *(v179 + 24) = v191;
  v192 = v223;
  *(v179 + 32) = v248;
  *(v179 + 40) = v192;
  *(v179 + 72) = v219;
  *(v179 + 73) = v250;
  v193 = v228;
  *(v179 + 80) = v229;
  *(v179 + 88) = v193;
  *(v179 + 96) = v227 & 1;
  *(v179 + 48) = v147;
  *(v179 + 56) = v150;
  *(v179 + 64) = v153;
  v194 = (v179 + v178[17]);
  *v194 = v226;
  v194[1] = v225;
  v195 = (v179 + v178[18]);
  *v195 = v233;
  v195[1] = v232;
  *(v179 + v178[19]) = v259;
  v196 = v230;
  *v180 = v231;
  v180[1] = v196;
  v197 = v249;
  *v181 = v266;
  v181[1] = v197;
  v198 = v212;
  *v183 = v213;
  v183[1] = v198;
  *(v179 + v268) = v236;
  *(v179 + v178[24]) = v252;
  v199 = v210;
  *v184 = v211;
  v184[1] = v199;
  v200 = (v179 + v178[26]);
  *v200 = v241;
  v200[1] = v261;
  v201 = (v179 + v178[27]);
  *v201 = v242;
  v201[1] = v262;
  v202 = (v179 + v188);
  v203 = v264;
  *v202 = v243;
  v202[1] = v203;
  v204 = v263;
  *v186 = v244;
  v186[1] = v204;
  v205 = v179 + v189;
  sub_10001BAC8(v253, v179 + v185, &qword_1002288B0, &qword_1001D5FC0);
  v206 = (v179 + v178[32]);
  v207 = v216;
  *v206 = v217;
  v206[1] = v207;
  *(v179 + v178[33]) = v245;
  BYTE4(v206) = BYTE4(v251);
  *v205 = v251;
  *(v205 + 4) = BYTE4(v206) & 1;
  *(v179 + v178[34]) = v269;
  v67 = v258;
  return sub_100011CF0(v67);
}

uint64_t sub_100193F70(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t), void *a4, void (*a5)(char *, char *, uint64_t), unint64_t a6, NSObject *a7, uint64_t a8, uint64_t a9, void (*a10)(void, void, void))
{
  v11 = v10;
  v415 = a8;
  v414 = a7;
  v440 = a5;
  v442 = a3;
  v397 = a1;
  v15 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  __chkstk_darwin(v15 - 8);
  v17 = &v349 - v16;
  v18 = sub_1001D02E0();
  v391 = *(v18 - 8);
  v392 = v18;
  __chkstk_darwin(v18);
  v390 = &v349 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1001D0DC0();
  v404 = *(v20 - 8);
  v405 = v20;
  v21 = __chkstk_darwin(v20);
  v402 = &v349 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v400 = &v349 - v23;
  v401 = sub_1001D0DF0();
  v418 = *(v401 - 8);
  v24 = __chkstk_darwin(v401);
  v399 = &v349 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v389 = &v349 - v26;
  v27 = sub_1001CFDD0();
  v387 = *(v27 - 8);
  v388 = v27;
  __chkstk_darwin(v27);
  v386 = &v349 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1001D20D0();
  v383 = *(v29 - 8);
  v384 = v29;
  __chkstk_darwin(v29);
  v382 = &v349 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1001CFD60();
  v380 = *(v31 - 8);
  v381 = v31;
  __chkstk_darwin(v31);
  v379 = &v349 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  __chkstk_darwin(v33 - 8);
  v378 = &v349 - v34;
  v35 = type metadata accessor for BiomeReporter(0);
  __chkstk_darwin(v35 - 8);
  v410 = &v349 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v429 = sub_1001D0E60();
  v406 = *(v429 - 1);
  v37 = __chkstk_darwin(v429);
  v395 = &v349 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v385 = &v349 - v40;
  __chkstk_darwin(v39);
  v424 = &v349 - v41;
  v42 = sub_1001D02F0();
  v427 = *(v42 - 8);
  __chkstk_darwin(v42);
  v411 = &v349 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1001CF7E0();
  __chkstk_darwin(v44 - 8);
  v398 = (&v349 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v433 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  v408 = *(v433 - 8);
  v46 = __chkstk_darwin(v433);
  v421 = &v349 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v432 = &v349 - v48;
  v434 = sub_1001D20F0();
  v407 = *(v434 - 8);
  v49 = __chkstk_darwin(v434);
  v403 = &v349 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v431 = &v349 - v51;
  v52 = sub_100011AC0(&qword_100229520, &unk_1001DEF70);
  __chkstk_darwin(v52 - 8);
  v425 = &v349 - v53;
  v435 = sub_1001D08A0();
  v426 = *(v435 - 8);
  v54 = __chkstk_darwin(v435);
  v409 = &v349 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __chkstk_darwin(v54);
  v420 = &v349 - v57;
  v394 = v58;
  __chkstk_darwin(v56);
  v430 = &v349 - v59;
  v376 = type metadata accessor for IncomingUserDataReader.State(0);
  __chkstk_darwin(v376);
  v377 = &v349 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for OutgoingUserDataWriter.StateMachine(0);
  __chkstk_darwin(v61 - 8);
  v375 = (&v349 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  v438 = sub_1001CFDA0();
  v437 = *(v438 - 8);
  v63 = __chkstk_darwin(v438);
  v428 = &v349 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __chkstk_darwin(v63);
  v417 = &v349 - v66;
  v67 = __chkstk_darwin(v65);
  v419 = &v349 - v68;
  v69 = __chkstk_darwin(v67);
  v422 = &v349 - v70;
  v71 = __chkstk_darwin(v69);
  v423 = &v349 - v72;
  v73 = __chkstk_darwin(v71);
  v396 = (&v349 - v74);
  v75 = __chkstk_darwin(v73);
  v374 = &v349 - v76;
  v393 = v77;
  __chkstk_darwin(v75);
  v436 = &v349 - v78;
  v79 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
  v80 = __chkstk_darwin(v79 - 8);
  v416 = &v349 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v80);
  v412 = (&v349 - v82);
  v83 = sub_100011AC0(&qword_10022FC60, &unk_1001E15A8);
  __chkstk_darwin(v83 - 8);
  v413 = &v349 - v84;
  v85 = type metadata accessor for TrustedRequestConfiguration(0);
  v86 = __chkstk_darwin(v85);
  v87 = __chkstk_darwin(v86);
  v88 = __chkstk_darwin(v87);
  v94 = *v10;
  v95 = (v11 + v94[38]);
  v96 = *v95;
  v97 = v95[1];
  if (a4)
  {
    if ((*(v11 + v94[39]) & 1) == 0)
    {

      v106 = sub_1001D0E50();
      v118 = sub_1001D1DE0();

      if (os_log_type_enabled(v106, v118))
      {
        v119 = swift_slowAlloc();
        *&v472[0] = swift_slowAlloc();
        *v119 = 136315650;
        *(v119 + 4) = sub_1000954E0(v96, v97, v472);
        *(v119 + 12) = 2080;
        v120 = sub_1000954E0(v442, a4, v472);

        *(v119 + 14) = v120;
        *(v119 + 22) = 2080;
        *(v119 + 24) = sub_1000954E0(0xD000000000000036, 0x80000001001E3190, v472);
        _os_log_impl(&_mh_execute_header, v106, v118, "client not allowed to override %s with %s. Need entitlement %s", v119, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
LABEL_29:
      }

      goto LABEL_30;
    }

    v370 = v88;
    v371 = v92;
    v372 = &v349 - v90;
    v373 = v89;
    v363 = v93;
    v364 = v91;
    v365 = v42;
    v366 = a2;
    v367 = v17;
    v441 = a4;
  }

  else
  {
    v370 = v88;
    v371 = v92;
    v372 = &v349 - v90;
    v373 = v89;
    v363 = v93;
    v364 = v91;
    v365 = v42;
    v366 = a2;
    v367 = v17;

    v442 = v96;
    v441 = v97;
  }

  v369 = a10;
  v368 = a9;
  v98 = v94[30];
  v439 = v11;
  v99 = *(v11 + v98);

  v100 = sub_100105760();
  v101 = v100 + 5;
  v102 = v100[2] + 1;
  do
  {
    if (!--v102)
    {

      v122 = v412;
      sub_10001208C(v368, v412, &qword_1002288B0, &qword_1001D5FC0);
      v123 = v439;
      sub_100044698(v439 + qword_100243518, &v449);
      v124 = (v123 + *(*v123 + 248));
      v125 = v124[9];
      v472[8] = v124[8];
      v472[9] = v125;
      v472[10] = v124[10];
      v126 = v124[5];
      v472[4] = v124[4];
      v472[5] = v126;
      v127 = v124[6];
      v472[7] = v124[7];
      v472[6] = v127;
      v128 = v124[1];
      v472[0] = *v124;
      v472[1] = v128;
      v129 = v124[2];
      v472[3] = v124[3];
      v472[2] = v129;
      v130 = v415;

      v131 = v441;

      sub_1000884D8(v472, &v461);
      v348 = v99;
      v132 = v413;
      sub_1001925B0(v96, v97, v442, v131, v440, a6, v414, v130, v413, v122, &v449, v348, v369 | ((HIDWORD(v369) & 1) << 32), v472);
      (*(v371 + 56))(v132, 0, 1, v370);
      sub_1001B0368(v132, v372, type metadata accessor for TrustedRequestConfiguration);
      v133 = v436;
      sub_1001CFD90();
      v134 = v437;
      v136 = v437 + 16;
      v135 = *(v437 + 16);
      v137 = v374;
      v138 = v438;
      v135(v374, v133, v438);
      v135(v396, v397, v138);
      v139 = sub_1001D0E50();
      v140 = sub_1001D1E00();
      v141 = os_log_type_enabled(v139, v140);
      v442 = v136;
      v440 = v135;
      if (v141)
      {
        v142 = swift_slowAlloc();
        v412 = v142;
        v415 = swift_slowAlloc();
        *&v461 = v415;
        *v142 = 136315394;
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v414 = v139;
        v143 = sub_1001D23A0();
        v145 = v144;
        v146 = v396;
        LODWORD(v413) = v140;
        v147 = *(v134 + 8);
        v147(v137, v138);
        v148 = sub_1000954E0(v143, v145, &v461);

        v149 = v412;
        *(v412 + 1) = v148;
        *(v149 + 12) = 2080;
        v150 = sub_1001D23A0();
        v152 = v151;
        v147(v146, v138);
        v153 = sub_1000954E0(v150, v152, &v461);

        *(v149 + 14) = v153;
        v154 = v414;
        _os_log_impl(&_mh_execute_header, v414, v413, "server id=%s set for request against client id=%s", v149, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v155 = *(v134 + 8);
        v155(v396, v138);
        v155(v137, v138);
      }

      v156 = v377;
      type metadata accessor for OutgoingUserDataWriter(0);
      v157 = swift_allocObject();
      v158 = (v157 + OBJC_IVAR____TtC20privatecloudcomputed22OutgoingUserDataWriter_stateLock);
      v159 = sub_1001D0110();
      v160 = v375;
      *v375 = *v159;
      type metadata accessor for OutgoingUserDataWriter.StateMachine.State(0);
      swift_storeEnumTagMultiPayload();
      *v158 = 0;

      v161 = *(sub_100011AC0(&qword_10022D778, &qword_1001DE630) + 28);
      v162 = sub_100011AC0(&qword_10022FC68, &qword_1001E15B8);
      bzero(v158 + v161, *(*(v162 - 8) + 64));
      sub_1001B0368(v160, v158 + v161, type metadata accessor for OutgoingUserDataWriter.StateMachine);
      v377 = v157;
      *(v157 + OBJC_IVAR____TtC20privatecloudcomputed22OutgoingUserDataWriter_waiterIDGenerator) = 0;
      type metadata accessor for IncomingUserDataReader(0);
      v413 = swift_allocObject();
      v163 = *v159;
      v460 = v163;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v165 = v426;
      if (*(v163 + 16) < 4 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000F79D8(isUniquelyReferenced_nonNull_native, 4, 1);
        v163 = v460;
      }

      v166 = *(sub_100011AC0(&qword_10022D2D8, &unk_1001DE470) + 64);
      *v156 = v163;
      *(v156 + 8) = 0;
      v167 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
      (*(*(v167 - 8) + 56))(v156 + v166, 1, 1, v167);
      swift_storeEnumTagMultiPayload();
      v168 = v413 + OBJC_IVAR____TtC20privatecloudcomputed22IncomingUserDataReader_stateLock;
      *(v413 + OBJC_IVAR____TtC20privatecloudcomputed22IncomingUserDataReader_stateLock) = 0;

      v169 = *(sub_100011AC0(&qword_10022D1F0, &qword_1001E15C0) + 28);
      v170 = sub_100011AC0(&qword_10022FC70, &qword_1001E15C8);
      bzero((v168 + v169), *(*(v170 - 8) + 64));
      sub_1001B0368(v156, v168 + v169, type metadata accessor for IncomingUserDataReader.State);

      v171 = v438;
      v172 = v440;
      v440(v423, v397, v438);
      v172(v422, v436, v171);
      v396 = type metadata accessor for TrustedRequestConfiguration;
      sub_1001AFCB4(v372, v373, type metadata accessor for TrustedRequestConfiguration);
      v414 = *(v165 + 16);
      v415 = v165 + 16;
      (v414)(v430, v366, v435);
      v173 = v439;
      v174 = *(v439 + *(*v439 + 264));
      sub_10001208C(v439 + *(*v439 + 272), v425, &qword_100229520, &unk_1001DEF70);
      v175 = *v173;
      v362 = *(v173 + *(*v173 + 280));
      v176 = v124[9];
      v457 = v124[8];
      v458 = v176;
      v459 = v124[10];
      v177 = v124[5];
      v453 = v124[4];
      v454 = v177;
      v178 = v124[6];
      v456 = v124[7];
      v455 = v178;
      v179 = v124[1];
      v449 = *v124;
      v450 = v179;
      v180 = v124[3];
      v451 = v124[2];
      v452 = v180;
      v368 = *(v173 + *(v175 + 288));
      v181 = *(v175 + 296);
      v182 = *(v407 + 16);
      v397 = v407 + 16;
      v412 = v182;
      (v182)(v431, v173 + v181, v434);
      v183 = *(*v173 + 328);
      v184 = *(v408 + 16);
      v374 = (v408 + 16);
      v369 = v184;
      v184(v432, v173 + v183, v433);
      sub_100011AC0(&qword_10022FC78, &qword_1001E15D0);
      v185 = swift_allocObject();
      v186 = *(*v185 + 344);
      v376 = sub_1001CF820();
      swift_allocObject();
      v375 = v174;

      v187 = v377;

      v188 = v413;

      sub_1000884D8(&v449, &v461);

      v189 = sub_1001CF810();
      sub_1001CF7C0();
      sub_1001CF7F0();
      *(v185 + v186) = v189;
      *(v185 + *(*v185 + 376)) = 1;
      *(v185 + *(*v185 + 384)) = 2;
      v351 = *(*v185 + 392);
      v190 = v427;
      v191 = v411;
      v192 = v365;
      v358 = *(v427 + 104);
      v359 = v427 + 104;
      v358(v411, enum case for TC2LogCategory.trustedRequest(_:), v365);
      sub_1001D08B0();
      v193 = *(v190 + 8);
      v427 = v190 + 8;
      v360 = v193;
      v193(v191, v192);
      v361 = qword_1002434F0;
      v194 = v438;
      v195 = v440;
      v440((v185 + qword_1002434F0), v423, v438);
      v196 = qword_1002434F8;
      v197 = v194;
      v195(v185 + qword_1002434F8, v422, v194);
      v357 = v185 + qword_100243500;
      sub_1001AFCB4(v373, v185 + qword_100243500, v396);
      (v414)(v185 + qword_100243508, v430, v435);
      *(v185 + *(*v185 + 272)) = v187;
      *(v185 + *(*v185 + 280)) = v188;
      *(v185 + *(*v185 + 296)) = v174;
      sub_10001208C(v425, v185 + *(*v185 + 304), &qword_100229520, &unk_1001DEF70);
      *(v185 + *(*v185 + 312)) = v362;
      v198 = (v185 + *(*v185 + 320));
      v199 = v450;
      *v198 = v449;
      v198[1] = v199;
      v200 = v454;
      v198[4] = v453;
      v198[5] = v200;
      v201 = v452;
      v198[2] = v451;
      v198[3] = v201;
      v202 = v459;
      v203 = v457;
      v198[9] = v458;
      v198[10] = v202;
      v204 = v456;
      v198[6] = v455;
      v198[7] = v204;
      v198[8] = v203;
      *(v185 + *(*v185 + 328)) = v368;
      (v412)(v185 + *(*v185 + 336), v431, v434);
      v205 = v433;
      v206 = v369;
      (v369)(v185 + *(*v185 + 360), v432, v433);
      v195(v419, (v185 + v361), v197);
      v195(v417, (v185 + v196), v197);
      v207 = v370;
      v208 = v370[28];
      v209 = v373;
      v210 = (v373 + v370[27]);
      v212 = *v210;
      v211 = v210[1];
      v353 = v212;
      v349 = v211;
      v213 = v370[29];
      v214 = (v373 + v370[30]);
      v216 = *v214;
      v215 = v214[1];
      v352 = v216;
      v361 = v215;
      v217 = *(v373 + v208 + 8);
      v354 = *(v373 + v208);
      v362 = v217;
      sub_10001208C(v373 + v213, v416, &qword_1002288B0, &qword_1001D5FC0);
      v218 = *(v209 + 88);
      v355 = *(v209 + 80);
      v368 = v218;
      v356 = *(v209 + v207[33]);
      (v414)(v420, v430, v435);
      v219 = *(v406 + 16);
      v396 = (v406 + 16);
      v220 = v351;
      v221 = v429;
      (v219)(v424, v185 + v351, v429);
      v222 = v219;
      v370 = v219;
      v206(v421, v432, v205);
      v223 = v403;
      v224 = v434;
      (v412)(v403, v431, v434);
      v225 = v198[9];
      v469 = v198[8];
      v470 = v225;
      v471 = v198[10];
      v226 = v198[5];
      v465 = v198[4];
      v466 = v226;
      v227 = v198[6];
      v468 = v198[7];
      v467 = v227;
      v228 = v198[1];
      v461 = *v198;
      v462 = v228;
      v229 = v198[2];
      v464 = v198[3];
      v463 = v229;
      v350 = v185;
      v222(v410, v185 + v220, v221);
      LODWORD(v351) = *(v357 + 72);
      v357 = sub_100011AC0(&qword_10022FC80, &qword_1001E15D8);
      v230 = swift_allocObject();
      v231 = (v230 + *(*v230 + 144));

      v232 = v349;

      sub_1000884D8(&v461, &v445);
      v233 = v378;
      sub_10015D464(v378);
      *v231 = 0;
      v234 = *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
      v235 = sub_100011AC0(&qword_10022FC88, &qword_1001E15E8);
      bzero(v231 + v234, *(*(v235 - 8) + 64));
      sub_1000DBEF4(v233, v231 + v234, &unk_100230120, &qword_1001DEF40);
      v236 = *(*v230 + 344);
      swift_allocObject();
      v237 = sub_1001CF810();
      sub_1001CF7C0();
      sub_1001CF7F0();
      *(v230 + v236) = v237;
      v238 = v438;
      v239 = v440;
      v440((v230 + *(*v230 + 160)), v419, v438);
      v378 = *(*v230 + 168);
      v239(v230 + v378, v417, v238);
      (v412)(v230 + *(*v230 + 152), v223, v224);
      v240 = v379;
      _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
      (*(v380 + 32))(v230 + *(*v230 + 176), v240, v381);
      sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
      v241 = v382;
      sub_1001D2500();
      (*(v383 + 32))(v230 + *(*v230 + 184), v241, v384);
      v242 = (v230 + *(*v230 + 192));
      v243 = v352;
      *v242 = v353;
      v242[1] = v232;
      v244 = (v230 + *(*v230 + 200));
      v245 = v361;
      *v244 = v243;
      v244[1] = v245;
      v246 = (v230 + *(*v230 + 208));
      v247 = v362;
      *v246 = v354;
      v246[1] = v247;
      sub_10001208C(v416, v230 + *(*v230 + 216), &qword_1002288B0, &qword_1001D5FC0);
      v248 = (v230 + *(*v230 + 224));
      v398 = v248;
      v249 = v368;
      *v248 = v355;
      v248[1] = v249;
      *(v230 + *(*v230 + 232)) = v356;
      (v414)(v230 + *(*v230 + 240), v420, v435);
      *(v230 + *(*v230 + 248)) = v351;
      v250 = (v230 + *(*v230 + 256));
      v251 = v470;
      v250[8] = v469;
      v250[9] = v251;
      v250[10] = v471;
      v252 = v466;
      v250[4] = v465;
      v250[5] = v252;
      v253 = v468;
      v250[6] = v467;
      v250[7] = v253;
      v254 = v462;
      *v250 = v461;
      v250[1] = v254;
      v255 = v464;
      v250[2] = v463;
      v250[3] = v255;
      v256 = v386;
      sub_1001CFDC0();
      (*(v387 + 32))(v230 + *(*v230 + 264), v256, v388);
      v257 = *(*v230 + 272);
      v258 = v429;
      v259 = v370;
      (v370)(v230 + v257, v424, v429);
      v412 = sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v445 = sub_1001D23A0();
      v446 = v260;
      v473._countAndFlagsBits = 58;
      v473._object = 0xE100000000000000;
      sub_1001D18B0(v473);
      v261 = v446;
      v262 = (v230 + *(*v230 + 280));
      *v262 = v445;
      v262[1] = v261;
      v388 = v262;
      (v369)(v230 + *(*v230 + 288), v421, v433);
      v397 = v257;
      (v259)(v385, v230 + v257, v258);
      v263 = v389;
      sub_1001D0DD0();
      v264 = *(*v230 + 296);
      v265 = v418;
      v266 = v401;
      (*(v418 + 32))(v230 + v264, v263, v401);
      v267 = *(v265 + 16);
      v267(v263, v230 + v264, v266);
      sub_1001D0DE0();
      v268 = v400;
      sub_1001D0DA0();
      v269 = *(v265 + 8);
      v418 = v265 + 8;
      v269(v263, v266);
      v270 = *(*v230 + 304);
      v271 = v404;
      v272 = v268;
      v273 = v405;
      (*(v404 + 32))(v230 + v270, v272, v405);
      v267(v399, v230 + v264, v266);
      v274 = *(v271 + 16);
      v275 = v402;
      v274(v402, v230 + v270, v273);
      v276 = sub_1001D0DE0();
      v277 = sub_1001D1E90();
      if (sub_1001D1ED0())
      {
        v278 = swift_slowAlloc();
        *v278 = 0;
        v279 = sub_1001D0DB0();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v276, v277, v279, "FullTrustedRequest", "", v278, 2u);
        v275 = v402;
      }

      v280 = v405;
      v274(v400, v275, v405);
      sub_1001D0E30();
      swift_allocObject();
      v281 = sub_1001D0E20();
      (*(v404 + 8))(v275, v280);
      v269(v399, v401);
      *(v230 + *(*v230 + 312)) = v281;
      v283 = *v398;
      v282 = v398[1];
      v285 = v390;
      v284 = v391;
      v286 = v392;
      (*(v391 + 104))(v390, enum case for TC2Environment.production(_:), v392);

      v287 = sub_1001D02B0();
      v289 = v288;
      (*(v284 + 8))(v285, v286);
      if (v283 == v287 && v282 == v289)
      {

        v290 = v428;
        v291 = v395;
      }

      else
      {
        v292 = sub_1001D2470();

        v290 = v428;
        v291 = v395;
        if ((v292 & 1) == 0)
        {
          v322 = *(v407 + 8);
          v322(v403, v434);
          v408 = *(v408 + 8);
          (v408)(v421, v433);
          (*(v406 + 8))(v424, v429);
          v429 = *(v426 + 8);
          v323 = v435;
          (v429)(v420, v435);
          sub_100011F00(v416, &qword_1002288B0, &qword_1001D5FC0);
          v324 = *(v437 + 8);
          v418 = (v437 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v325 = v438;
          v324(v417, v438);
          v324(v419, v325);
          (v408)(v432, v433);
          v322(v431, v434);
          v315 = v323;
          sub_100011F00(v425, &qword_100229520, &unk_1001DEF70);
          (v429)(v430, v323);
          sub_1001AFB98(v373, type metadata accessor for TrustedRequestConfiguration);
          v324(v422, v325);
          v324(v423, v325);
          v313 = v325;
          v316 = v440;
          v440((v230 + *(*v230 + 320)), (v230 + v378), v325);
LABEL_48:
          *(v230 + *(*v230 + 328)) = v375;
          sub_1001B0368(v410, v230 + *(*v230 + 336), type metadata accessor for BiomeReporter);
          v326 = v350;
          *(v350 + *(*v350 + 368)) = v230;
          v327 = sub_1001D1BA0();
          (*(*(v327 - 8) + 56))(v367, 1, 1, v327);
          sub_1001AFCB4(v372, v364, type metadata accessor for TrustedRequestConfiguration);
          (v414)(v409, v366, v315);
          v316(v428, v436, v313);
          v328 = (*(v371 + 80) + 48) & ~*(v371 + 80);
          v329 = v426;
          v330 = (v363 + *(v426 + 80) + v328) & ~*(v426 + 80);
          v331 = v437;
          v332 = (v394 + *(v437 + 80) + v330) & ~*(v437 + 80);
          v333 = swift_allocObject();
          *(v333 + 2) = 0;
          *(v333 + 3) = 0;
          *(v333 + 4) = v439;
          *(v333 + 5) = v326;
          sub_1001B0368(v364, &v333[v328], type metadata accessor for TrustedRequestConfiguration);
          (*(v329 + 32))(&v333[v330], v409, v315);
          v334 = *(v331 + 32);
          v437 = v331 + 32;
          v335 = v428;
          v336 = v438;
          v334(&v333[v332], v428, v438);

          v337 = sub_10008F210(0, 0, v367, &unk_1001E15F8, v333);
          v440(v335, v436, v336);
          v338 = *(v326 + *(*v326 + 368));
          v448 = &off_100220C58;
          v447 = v357;
          v445 = v338;
          type metadata accessor for TrustedRequestXPCProxy(0);
          v339 = swift_allocObject();
          v340 = v411;
          v341 = v365;
          v358(v411, enum case for TC2LogCategory.trustedRequestXPCProxy(_:), v365);
          swift_retain_n();
          sub_1001D08B0();
          v360(v340, v341);
          v342 = OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_jsonEncoder;
          swift_allocObject();
          *(v339 + v342) = sub_1001CF810();
          *(v339 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_callIDs) = 0;
          *(v339 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_outgoingUserDataWriter) = v377;
          *(v339 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_incomingUserDataReader) = v413;
          *(v339 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_task) = v337;
          sub_100044698(&v445, v339 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_cancellationObserver);
          v443 = sub_1001D23A0();
          v444 = v343;
          v474._countAndFlagsBits = 58;
          v474._object = 0xE100000000000000;
          sub_1001D18B0(v474);

          v344 = v443;
          v345 = v444;
          v346 = *(v437 - 24);
          v346(v335, v336);
          v346(v436, v336);
          sub_1001AFB98(v372, type metadata accessor for TrustedRequestConfiguration);
          sub_100011CF0(&v445);

          result = v339;
          v347 = (v339 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix);
          *v347 = v344;
          v347[1] = v345;
          return result;
        }
      }

      sub_1001CFD90();
      v293 = v230 + *(*v230 + 320);
      v294 = v437;
      v295 = v438;
      (*(v437 + 32))(v293, v290, v438);
      v296 = v429;
      (v370)(v291, v230 + v397, v429);

      v297 = sub_1001D0E50();
      v298 = sub_1001D1E00();
      v299 = v298;
      if (os_log_type_enabled(v297, v298))
      {
        v300 = swift_slowAlloc();
        v445 = swift_slowAlloc();
        *v300 = 136315394;
        LODWORD(v404) = v299;
        v301 = *v388;
        v302 = v388[1];

        v303 = sub_1000954E0(v301, v302, &v445);

        *(v300 + 4) = v303;
        *(v300 + 12) = 2080;
        v304 = v428;
        v440(v428, v293, v295);
        v305 = sub_1001D23A0();
        v307 = v306;

        v405 = *(v437 + 8);
        v418 = (v437 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v405(v304, v295);
        v308 = sub_1000954E0(v305, v307, &v445);

        *(v300 + 14) = v308;
        _os_log_impl(&_mh_execute_header, v297, v404, "%s RequestIDForEventReporting: %s", v300, 0x16u);
        swift_arrayDestroy();

        v309 = *(v406 + 8);
        v310 = v429;
        v309(v395, v429);
        v407 = *(v407 + 8);
        (v407)(v403, v434);
        v408 = *(v408 + 8);
        v311 = v433;
        (v408)(v421, v433);
        v309(v424, v310);
        v429 = *(v426 + 8);
        v312 = v435;
        (v429)(v420, v435);
        sub_100011F00(v416, &qword_1002288B0, &qword_1001D5FC0);
        v313 = v438;
        v314 = v405;
        v405(v417, v438);
        v314(v419, v313);
        (v408)(v432, v311);
        (v407)(v431, v434);
        v315 = v312;
        sub_100011F00(v425, &qword_100229520, &unk_1001DEF70);
        (v429)(v430, v312);
        v316 = v440;
        sub_1001AFB98(v373, type metadata accessor for TrustedRequestConfiguration);
        v314(v422, v313);
        v314(v423, v313);
      }

      else
      {

        v317 = *(v406 + 8);
        v317(v291, v296);
        v407 = *(v407 + 8);
        (v407)(v403, v434);
        v408 = *(v408 + 8);
        (v408)(v421, v433);
        v317(v424, v296);
        v318 = *(v426 + 8);
        v319 = v435;
        v318(v420, v435);
        sub_100011F00(v416, &qword_1002288B0, &qword_1001D5FC0);
        v320 = v294 + 8;
        v321 = *(v294 + 8);
        v418 = v320 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v321(v417, v295);
        v321(v419, v295);
        (v408)(v432, v433);
        (v407)(v431, v434);
        v315 = v319;
        sub_100011F00(v425, &qword_100229520, &unk_1001DEF70);
        v318(v430, v319);
        sub_1001AFB98(v373, type metadata accessor for TrustedRequestConfiguration);
        v321(v422, v295);
        v321(v423, v295);
        v313 = v295;
        v316 = v440;
      }

      goto LABEL_48;
    }

    v104 = *(v101 - 1);
    v103 = *v101;
    v105 = v104 == v442 && v103 == v441;
    if (v105 || (sub_1001D2470() & 1) != 0 || a6 && (v104 == v440 && v103 == a6 || (sub_1001D2470() & 1) != 0))
    {
      break;
    }

    if (v104 == v96 && v103 == v97)
    {
      break;
    }

    v101 += 2;
  }

  while ((sub_1001D2470() & 1) == 0);

  v106 = sub_1001D0E50();
  v107 = sub_1001D1DE0();

  if (!os_log_type_enabled(v106, v107))
  {
    goto LABEL_29;
  }

  v108 = swift_slowAlloc();
  v439 = swift_slowAlloc();
  *&v472[0] = v439;
  *v108 = 136315906;
  v109 = sub_1001D19E0();
  v111 = v110;

  v112 = sub_1000954E0(v109, v111, v472);

  *(v108 + 4) = v112;
  *(v108 + 12) = 2080;
  v113 = v441;

  v114 = sub_1000954E0(v442, v113, v472);

  *(v108 + 14) = v114;
  *(v108 + 22) = 2080;
  if (a6)
  {
    v115 = v440;
  }

  else
  {
    v115 = 7104878;
  }

  if (a6)
  {
    v116 = a6;
  }

  else
  {
    v116 = 0xE300000000000000;
  }

  v117 = sub_1000954E0(v115, v116, v472);

  *(v108 + 24) = v117;
  *(v108 + 32) = 2080;
  *(v108 + 34) = sub_1000954E0(v96, v97, v472);
  _os_log_impl(&_mh_execute_header, v106, v107, "bundleId blocked by server, exiting trusted request with blockedBundleIds=%s, bundleId=%s, originatingBundleId=%s), clientBundleIdentifier=%s", v108, 0x2Au);
  swift_arrayDestroy();

LABEL_30:

  return 0;
}