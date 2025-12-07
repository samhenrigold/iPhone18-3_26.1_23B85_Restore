uint64_t CuttlefishAPIAsyncOperation.fetchChanges(changeToken:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ChangesRequest = type metadata accessor for FetchChangesRequest(0);
  __chkstk_darwin(ChangesRequest, v17);
  v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[4] = a1;
  v22[5] = a2;
  v22[6] = a3;
  v22[7] = a4;
  sub_1001D63AC(&unk_10029DA40, type metadata accessor for FetchChangesRequest, &protocol conformance descriptor for FetchChangesRequest);
  sub_100216654();
  v20 = (*(a8 + 56))(v19, a5, a6, a7, a8);
  sub_1001E32F4(v19, type metadata accessor for FetchChangesRequest);
  return v20;
}

uint64_t CuttlefishAPIAsyncOperation.fetchViableBottles(filterRequest:metrics:accountInfo:completion:)(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ViableBottlesRequest = type metadata accessor for FetchViableBottlesRequest(0);
  __chkstk_darwin(ViableBottlesRequest, v17);
  v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[4] = a1;
  v23 = a2 & 0x1FF;
  v24 = a3;
  v25 = a4;
  sub_1001D63AC(&unk_10029DA60, type metadata accessor for FetchViableBottlesRequest, &protocol conformance descriptor for FetchViableBottlesRequest);
  sub_100216654();
  v20 = (*(a8 + 64))(v19, a5, a6, a7, a8);
  sub_1001E32F4(v19, type metadata accessor for FetchViableBottlesRequest);
  return v20;
}

uint64_t sub_1001DD91C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v38 = a2;
  v8 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v38 - v10;
  v12 = type metadata accessor for AccountInfo(0);
  v42 = *(v12 - 8);
  v43 = v12;
  v14 = __chkstk_darwin(v12, v13);
  v40 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v16);
  v39 = &v38 - v17;
  v18 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v18 - 8, v19);
  v21 = &v38 - v20;
  v22 = type metadata accessor for Metrics(0);
  v23 = *(v22 - 8);
  v25 = __chkstk_darwin(v22, v24);
  v27 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v28);
  v30 = &v38 - v29;
  if ((a3 & 0x100) == 0)
  {
    *a1 = v38;
    *(a1 + 8) = a3 & 1;
  }

  sub_100019C6C(a4, v21, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1000114D4(v21, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    sub_1001E3224(v21, v30, type metadata accessor for Metrics);
    sub_1001E3224(v30, v27, type metadata accessor for Metrics);
    v31 = *(type metadata accessor for FetchViableBottlesRequest(0) + 24);
    sub_1000114D4(a1 + v31, &qword_100297FE0, &unk_10021E7F0);
    sub_1001E3224(v27, a1 + v31, type metadata accessor for Metrics);
    (*(v23 + 56))(a1 + v31, 0, 1, v22);
  }

  sub_100019C6C(v41, v11, &unk_10029D6F0, &qword_100226B40);
  v33 = v42;
  v32 = v43;
  if ((*(v42 + 48))(v11, 1, v43) == 1)
  {
    return sub_1000114D4(v11, &unk_10029D6F0, &qword_100226B40);
  }

  v35 = v39;
  sub_1001E3224(v11, v39, type metadata accessor for AccountInfo);
  v36 = v40;
  sub_1001E3224(v35, v40, type metadata accessor for AccountInfo);
  v37 = *(type metadata accessor for FetchViableBottlesRequest(0) + 28);
  sub_1000114D4(a1 + v37, &unk_10029D6F0, &qword_100226B40);
  sub_1001E3224(v36, a1 + v37, type metadata accessor for AccountInfo);
  return (*(v33 + 56))(a1 + v37, 0, 1, v32);
}

uint64_t CuttlefishAPIAsyncOperation.fetchRecoverableTlkshares(peerID:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  RecoverableTLKSharesRequest = type metadata accessor for FetchRecoverableTLKSharesRequest(0);
  __chkstk_darwin(RecoverableTLKSharesRequest, v17);
  v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[4] = a1;
  v22[5] = a2;
  v22[6] = a3;
  v22[7] = a4;
  sub_1001D63AC(&unk_10029D960, type metadata accessor for FetchRecoverableTLKSharesRequest, &protocol conformance descriptor for FetchRecoverableTLKSharesRequest);
  sub_100216654();
  v20 = (*(a8 + 72))(v19, a5, a6, a7, a8);
  sub_1001E32F4(v19, type metadata accessor for FetchRecoverableTLKSharesRequest);
  return v20;
}

uint64_t CuttlefishAPIAsyncOperation.fetchPolicyDocuments(keys:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  __chkstk_darwin(PolicyDocumentsRequest, v15);
  v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = a1;
  v22 = a2;
  v23 = a3;
  sub_1001D63AC(&qword_100297E78, type metadata accessor for FetchPolicyDocumentsRequest, &protocol conformance descriptor for FetchPolicyDocumentsRequest);
  sub_100216654();
  v18 = (*(a7 + 80))(v17, a4, a5, a6, a7);
  sub_1001E32F4(v17, type metadata accessor for FetchPolicyDocumentsRequest);
  return v18;
}

uint64_t CuttlefishAPIAsyncOperation.getRepairAction(peerID:requiresEscrowCheck:knownFederations:performCleanup:metrics:accountInfo:performDanglingPeerCleanup:updateIdms:performCaesarPeerCleanup:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, int a8, __int16 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v26 = a8;
  v25 = a7;
  v27 = a11;
  v28 = a10;
  v29 = a12;
  RepairActionRequest = type metadata accessor for GetRepairActionRequest(0);
  __chkstk_darwin(RepairActionRequest, v20);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = v25;
  v37 = v26;
  v38 = a9;
  sub_1001D63AC(&unk_10029D710, type metadata accessor for GetRepairActionRequest, &protocol conformance descriptor for GetRepairActionRequest);
  sub_100216654();
  v23 = (*(a13 + 88))(v22, v28, v27, v29, a13);
  sub_1001E32F4(v22, type metadata accessor for GetRepairActionRequest);
  return v23;
}

uint64_t sub_1001DE1D8(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, void *a7, uint64_t a8, char a9, char a10, char a11)
{
  v64 = a7;
  v65 = a8;
  v63 = __PAIR64__(a6, a4);
  v62 = a2;
  v14 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v14 - 8, v15);
  v17 = &v60 - v16;
  v18 = type metadata accessor for AccountInfo(0);
  v66 = *(v18 - 1);
  v67 = v18;
  v20 = __chkstk_darwin(v18, v19);
  v61 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v22);
  v60 = &v60 - v23;
  v24 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v24 - 8, v25);
  v27 = &v60 - v26;
  v28 = type metadata accessor for Metrics(0);
  v29 = *(v28 - 8);
  v31 = __chkstk_darwin(v28, v30);
  v33 = &v60 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v34);
  v36 = &v60 - v35;
  if (a3)
  {
    v37 = *(a1 + 8);

    v37, v38, v39, v40, v41, v42, v43, v44, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69;
    *a1 = v62;
    *(a1 + 8) = a3;
  }

  if (v63 != 2)
  {
    *(a1 + 16) = v63 & 1;
  }

  if (*(a5 + 16))
  {
    v45 = *(a1 + 24);

    v45, v46, v47, v48, v49, v50, v51, v52, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69;
    *(a1 + 24) = a5;
  }

  if (BYTE4(v63) != 2)
  {
    *(a1 + 32) = BYTE4(v63) & 1;
  }

  sub_100019C6C(v64, v27, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_1000114D4(v27, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    sub_1001E3224(v27, v36, type metadata accessor for Metrics);
    sub_1001E3224(v36, v33, type metadata accessor for Metrics);
    v53 = *(type metadata accessor for GetRepairActionRequest(0) + 48);
    sub_1000114D4(a1 + v53, &qword_100297FE0, &unk_10021E7F0);
    sub_1001E3224(v33, a1 + v53, type metadata accessor for Metrics);
    (*(v29 + 56))(a1 + v53, 0, 1, v28);
  }

  v54 = v67;
  sub_100019C6C(v65, v17, &unk_10029D6F0, &qword_100226B40);
  v55 = v66;
  if ((*(v66 + 6))(v17, 1, v54) == 1)
  {
    result = sub_1000114D4(v17, &unk_10029D6F0, &qword_100226B40);
  }

  else
  {
    v57 = v60;
    sub_1001E3224(v17, v60, type metadata accessor for AccountInfo);
    v58 = v61;
    sub_1001E3224(v57, v61, type metadata accessor for AccountInfo);
    v59 = *(type metadata accessor for GetRepairActionRequest(0) + 52);
    sub_1000114D4(a1 + v59, &unk_10029D6F0, &qword_100226B40);
    sub_1001E3224(v58, a1 + v59, type metadata accessor for AccountInfo);
    result = v55[7](a1 + v59, 0, 1, v54);
  }

  if (a9 != 2)
  {
    *(a1 + 33) = a9 & 1;
  }

  if (a10 != 2)
  {
    *(a1 + 34) = a10 & 1;
  }

  if (a11 != 2)
  {
    *(a1 + 35) = a11 & 1;
  }

  return result;
}

uint64_t CuttlefishAPIAsyncOperation.getEscrowCheck(peerID:isBackgroundCheck:passcodeGeneration:knownFederations:metrics:accountInfo:disableWithError:disableRepair:requiresEscrowCheck:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v26 = a7;
  v27 = a8;
  v29 = a11;
  v30 = a10;
  v28 = a13;
  v19 = type metadata accessor for GetEscrowCheckRequest(0);
  __chkstk_darwin(v19, v20);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5 & 1;
  v37 = a6;
  v38 = v26;
  v39 = v27;
  v40 = a9;
  v41 = *(&a9 + 1);
  sub_1001D63AC(&qword_100298F00, type metadata accessor for GetEscrowCheckRequest, &protocol conformance descriptor for GetEscrowCheckRequest);
  sub_100216654();
  v23 = (*(v28 + 96))(v22, v30, v29, v31);
  sub_1001E32F4(v22, type metadata accessor for GetEscrowCheckRequest);
  return v23;
}

uint64_t sub_1001DE87C(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, void *a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12)
{
  v66 = a8;
  v65 = __PAIR64__(a6, a4);
  v61 = a5;
  v64 = a2;
  v15 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v15 - 8, v16);
  v18 = &v61 - v17;
  v19 = type metadata accessor for AccountInfo(0);
  v67 = *(v19 - 1);
  v68 = v19;
  v21 = __chkstk_darwin(v19, v20);
  v63 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v23);
  v62 = &v61 - v24;
  v25 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v25 - 8, v26);
  v28 = &v61 - v27;
  v29 = type metadata accessor for Metrics(0);
  v30 = *(v29 - 8);
  v32 = __chkstk_darwin(v29, v31);
  v34 = &v61 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32, v35);
  v37 = &v61 - v36;
  if (a3)
  {
    v38 = *(a1 + 8);

    v38, v39, v40, v41, v42, v43, v44, v45, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70;
    *a1 = v64;
    *(a1 + 8) = a3;
  }

  if (v65 != 2)
  {
    *(a1 + 16) = v65 & 1;
  }

  if ((BYTE4(v65) & 1) == 0)
  {
    *(a1 + 24) = v61;
  }

  if (*(a7 + 16))
  {
    v46 = *(a1 + 32);

    v46, v47, v48, v49, v50, v51, v52, v53, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70;
    *(a1 + 32) = a7;
  }

  sub_100019C6C(v66, v28, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_1000114D4(v28, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    sub_1001E3224(v28, v37, type metadata accessor for Metrics);
    sub_1001E3224(v37, v34, type metadata accessor for Metrics);
    v54 = *(type metadata accessor for GetEscrowCheckRequest(0) + 48);
    sub_1000114D4(a1 + v54, &qword_100297FE0, &unk_10021E7F0);
    sub_1001E3224(v34, a1 + v54, type metadata accessor for Metrics);
    (*(v30 + 56))(a1 + v54, 0, 1, v29);
  }

  v55 = v67;
  sub_100019C6C(a9, v18, &unk_10029D6F0, &qword_100226B40);
  v56 = v68;
  if ((v55[6])(v18, 1, v68) == 1)
  {
    result = sub_1000114D4(v18, &unk_10029D6F0, &qword_100226B40);
  }

  else
  {
    v58 = v62;
    sub_1001E3224(v18, v62, type metadata accessor for AccountInfo);
    v59 = v63;
    sub_1001E3224(v58, v63, type metadata accessor for AccountInfo);
    v60 = *(type metadata accessor for GetEscrowCheckRequest(0) + 52);
    sub_1000114D4(a1 + v60, &unk_10029D6F0, &qword_100226B40);
    sub_1001E3224(v59, a1 + v60, type metadata accessor for AccountInfo);
    result = v55[7](a1 + v60, 0, 1, v56);
  }

  if (a10 != 2)
  {
    *(a1 + 40) = a10 & 1;
  }

  if (a11 != 2)
  {
    *(a1 + 41) = a11 & 1;
  }

  if (a12 != 2)
  {
    *(a1 + 42) = a12 & 1;
  }

  return result;
}

uint64_t CuttlefishAPIAsyncOperation.getSupportAppInfo(metrics:accountInfo:page:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  SupportAppInfoRequest = type metadata accessor for GetSupportAppInfoRequest(0);
  __chkstk_darwin(SupportAppInfoRequest, v17);
  v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[4] = a1;
  v22[5] = a2;
  v22[6] = a3;
  v23 = a4 & 1;
  sub_1001D63AC(&qword_100298F80, type metadata accessor for GetSupportAppInfoRequest, &protocol conformance descriptor for GetSupportAppInfoRequest);
  sub_100216654();
  v20 = (*(a8 + 104))(v19, a5, a6, a7, a8);
  sub_1001E32F4(v19, type metadata accessor for GetSupportAppInfoRequest);
  return v20;
}

uint64_t sub_1001DEF08(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v43 = a5;
  v38 = a4;
  v39 = a2;
  v40 = a3;
  v6 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v36 - v8;
  v10 = type metadata accessor for AccountInfo(0);
  v41 = *(v10 - 8);
  v42 = v10;
  v12 = __chkstk_darwin(v10, v11);
  v37 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v14);
  v36 = &v36 - v15;
  v16 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v16 - 8, v17);
  v19 = &v36 - v18;
  v20 = type metadata accessor for Metrics(0);
  v21 = *(v20 - 8);
  v23 = __chkstk_darwin(v20, v22);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v26);
  v28 = &v36 - v27;
  sub_100019C6C(v39, v19, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1000114D4(v19, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    sub_1001E3224(v19, v28, type metadata accessor for Metrics);
    sub_1001E3224(v28, v25, type metadata accessor for Metrics);
    v29 = *(type metadata accessor for GetSupportAppInfoRequest(0) + 24);
    sub_1000114D4(&a1[v29], &qword_100297FE0, &unk_10021E7F0);
    sub_1001E3224(v25, &a1[v29], type metadata accessor for Metrics);
    (*(v21 + 56))(&a1[v29], 0, 1, v20);
  }

  sub_100019C6C(v40, v9, &unk_10029D6F0, &qword_100226B40);
  v31 = v41;
  v30 = v42;
  if ((*(v41 + 48))(v9, 1, v42) != 1)
  {
    v33 = v36;
    sub_1001E3224(v9, v36, type metadata accessor for AccountInfo);
    v34 = v37;
    sub_1001E3224(v33, v37, type metadata accessor for AccountInfo);
    v35 = *(type metadata accessor for GetSupportAppInfoRequest(0) + 28);
    sub_1000114D4(&a1[v35], &unk_10029D6F0, &qword_100226B40);
    sub_1001E3224(v34, &a1[v35], type metadata accessor for AccountInfo);
    result = (*(v31 + 56))(&a1[v35], 0, 1, v30);
    if (v43)
    {
      return result;
    }

    goto LABEL_8;
  }

  result = sub_1000114D4(v9, &unk_10029D6F0, &qword_100226B40);
  if ((v43 & 1) == 0)
  {
LABEL_8:
    *a1 = v38;
  }

  return result;
}

uint64_t CuttlefishAPIAsyncOperation.resetAccountCdpcontents(resetReason:idmsTargetContext:idmsCuttlefishPassword:testingNotifyIdms:accountInfo:metrics:isDbrv2:completion:)(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v27 = a7;
  v30 = a12;
  v31 = a11;
  v28 = a8;
  v29 = a14;
  v20 = type metadata accessor for ResetAccountCDPContentsRequest(0);
  __chkstk_darwin(v20, v21);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v34 = a2 & 0x1FF;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = v27;
  v40 = v28;
  v41 = a9;
  v42 = a10;
  sub_1001D63AC(&qword_100298FA8, type metadata accessor for ResetAccountCDPContentsRequest, &protocol conformance descriptor for ResetAccountCDPContentsRequest);
  sub_100216654();
  v24 = (*(v29 + 112))(v23, v31, v30, v32);
  sub_1001E32F4(v23, type metadata accessor for ResetAccountCDPContentsRequest);
  return v24;
}

uint64_t CuttlefishAPIAsyncOperation.removeRecoveryKey(changeToken:peerID:stableInfoAndSig:dynamicInfoAndSig:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v28 = a9;
  v26 = a8;
  v27 = a10;
  v29 = a11;
  v19 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  __chkstk_darwin(v19, v20);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v37 = v26;
  sub_1001D63AC(&unk_10029D9E0, type metadata accessor for RemoveRecoveryKeyRequest, &protocol conformance descriptor for RemoveRecoveryKeyRequest);
  sub_100216654();
  v23 = (*(a12 + 120))(v22, v28, v27, v29, a12);
  sub_1001E32F4(v22, type metadata accessor for RemoveRecoveryKeyRequest);
  return v23;
}

uint64_t sub_1001DF6B4(char *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v105 = a8;
  v102 = a7;
  v98 = a5;
  v99 = a6;
  v96 = a2;
  v97 = a4;
  v11 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v11 - 8, v12);
  v106 = &v90 - v13;
  v14 = type metadata accessor for AccountInfo(0);
  v107 = *(v14 - 8);
  v108 = v14;
  v16 = __chkstk_darwin(v14, v15);
  v95 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v18);
  v94 = &v90 - v19;
  v20 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v20 - 8, v21);
  v103 = &v90 - v22;
  v109 = type metadata accessor for Metrics(0);
  v104 = *(v109 - 8);
  v24 = __chkstk_darwin(v109, v23);
  v93 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v26);
  v92 = &v90 - v27;
  v28 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  __chkstk_darwin(v28 - 8, v29);
  v31 = &v90 - v30;
  v32 = type metadata accessor for SignedPeerDynamicInfo(0);
  v100 = *(v32 - 8);
  v101 = v32;
  v34 = __chkstk_darwin(v32, v33);
  v91 = &v90 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34, v36);
  v38 = &v90 - v37;
  v39 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  __chkstk_darwin(v39 - 8, v40);
  v42 = &v90 - v41;
  v43 = type metadata accessor for SignedPeerStableInfo(0);
  v44 = *(v43 - 8);
  v46 = __chkstk_darwin(v43, v45);
  v48 = &v90 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46, v49);
  v51 = &v90 - v50;
  if (a3)
  {
    v52 = *(a1 + 1);

    v52, v53, v54, v55, v56, v57, v58, v59, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99;
    *a1 = v96;
    *(a1 + 1) = a3;
  }

  v60 = v98;
  if (v98)
  {
    v61 = *(a1 + 3);

    v61, v62, v63, v64, v65, v66, v67, v68, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99;
    *(a1 + 2) = v97;
    *(a1 + 3) = v60;
  }

  sub_100019C6C(v99, v42, &qword_1002985A8, &unk_100226650);
  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
    sub_1000114D4(v42, &qword_1002985A8, &unk_100226650);
  }

  else
  {
    sub_1001E3224(v42, v51, type metadata accessor for SignedPeerStableInfo);
    sub_1001E3224(v51, v48, type metadata accessor for SignedPeerStableInfo);
    v69 = *(type metadata accessor for RemoveRecoveryKeyRequest(0) + 28);
    sub_1000114D4(&a1[v69], &qword_1002985A8, &unk_100226650);
    sub_1001E3224(v48, &a1[v69], type metadata accessor for SignedPeerStableInfo);
    (*(v44 + 56))(&a1[v69], 0, 1, v43);
  }

  v70 = v107;
  v71 = v109;
  v72 = v104;
  sub_100019C6C(v102, v31, &unk_10029D760, &qword_10021E810);
  v74 = v100;
  v73 = v101;
  if ((*(v100 + 48))(v31, 1, v101) == 1)
  {
    sub_1000114D4(v31, &unk_10029D760, &qword_10021E810);
  }

  else
  {
    sub_1001E3224(v31, v38, type metadata accessor for SignedPeerDynamicInfo);
    v75 = v91;
    sub_1001E3224(v38, v91, type metadata accessor for SignedPeerDynamicInfo);
    v76 = v73;
    v77 = *(type metadata accessor for RemoveRecoveryKeyRequest(0) + 32);
    sub_1000114D4(&a1[v77], &unk_10029D760, &qword_10021E810);
    sub_1001E3224(v75, &a1[v77], type metadata accessor for SignedPeerDynamicInfo);
    (*(v74 + 56))(&a1[v77], 0, 1, v76);
    v71 = v109;
  }

  v78 = v103;
  sub_100019C6C(v105, v103, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v72 + 48))(v78, 1, v71) == 1)
  {
    sub_1000114D4(v78, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    v79 = v78;
    v80 = v92;
    sub_1001E3224(v79, v92, type metadata accessor for Metrics);
    v81 = v93;
    sub_1001E3224(v80, v93, type metadata accessor for Metrics);
    v82 = *(type metadata accessor for RemoveRecoveryKeyRequest(0) + 36);
    sub_1000114D4(&a1[v82], &qword_100297FE0, &unk_10021E7F0);
    sub_1001E3224(v81, &a1[v82], type metadata accessor for Metrics);
    (*(v72 + 56))(&a1[v82], 0, 1, v71);
  }

  v83 = v108;
  v84 = v106;
  sub_100019C6C(a9, v106, &unk_10029D6F0, &qword_100226B40);
  if ((*(v70 + 48))(v84, 1, v83) == 1)
  {
    return sub_1000114D4(v84, &unk_10029D6F0, &qword_100226B40);
  }

  v86 = v84;
  v87 = v94;
  sub_1001E3224(v86, v94, type metadata accessor for AccountInfo);
  v88 = v95;
  sub_1001E3224(v87, v95, type metadata accessor for AccountInfo);
  v89 = *(type metadata accessor for RemoveRecoveryKeyRequest(0) + 40);
  sub_1000114D4(&a1[v89], &unk_10029D6F0, &qword_100226B40);
  sub_1001E3224(v88, &a1[v89], type metadata accessor for AccountInfo);
  return (*(v70 + 56))(&a1[v89], 0, 1, v83);
}

uint64_t CuttlefishAPIAsyncOperation.performAtoprvactions(metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for PerformATOPRVActionsRequest(0);
  __chkstk_darwin(v12, v13);
  v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = a1;
  v20 = a2;
  sub_1001D63AC(&unk_10029D9D0, type metadata accessor for PerformATOPRVActionsRequest, &protocol conformance descriptor for PerformATOPRVActionsRequest);
  sub_100216654();
  v16 = (*(a6 + 128))(v15, a3, a4, a5, a6);
  sub_1001E32F4(v15, type metadata accessor for PerformATOPRVActionsRequest);
  return v16;
}

uint64_t sub_1001E0088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v37 = a3;
  v4 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v34 - v6;
  v8 = type metadata accessor for AccountInfo(0);
  v38 = *(v8 - 8);
  v39 = v8;
  v10 = __chkstk_darwin(v8, v9);
  v35 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v12);
  v34 = &v34 - v13;
  v14 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v14 - 8, v15);
  v17 = &v34 - v16;
  v18 = type metadata accessor for Metrics(0);
  v19 = *(v18 - 8);
  v21 = __chkstk_darwin(v18, v20);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v24);
  v26 = &v34 - v25;
  sub_100019C6C(v36, v17, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1000114D4(v17, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    sub_1001E3224(v17, v26, type metadata accessor for Metrics);
    sub_1001E3224(v26, v23, type metadata accessor for Metrics);
    v27 = *(type metadata accessor for PerformATOPRVActionsRequest(0) + 20);
    sub_1000114D4(a1 + v27, &qword_100297FE0, &unk_10021E7F0);
    sub_1001E3224(v23, a1 + v27, type metadata accessor for Metrics);
    (*(v19 + 56))(a1 + v27, 0, 1, v18);
  }

  sub_100019C6C(v37, v7, &unk_10029D6F0, &qword_100226B40);
  v29 = v38;
  v28 = v39;
  if ((*(v38 + 48))(v7, 1, v39) == 1)
  {
    return sub_1000114D4(v7, &unk_10029D6F0, &qword_100226B40);
  }

  v31 = v34;
  sub_1001E3224(v7, v34, type metadata accessor for AccountInfo);
  v32 = v35;
  sub_1001E3224(v31, v35, type metadata accessor for AccountInfo);
  v33 = *(type metadata accessor for PerformATOPRVActionsRequest(0) + 24);
  sub_1000114D4(a1 + v33, &unk_10029D6F0, &qword_100226B40);
  sub_1001E3224(v32, a1 + v33, type metadata accessor for AccountInfo);
  return (*(v29 + 56))(a1 + v33, 0, 1, v28);
}

uint64_t CuttlefishAPIAsyncOperation.fetchPcsidentityByPublicKey(pcsServices:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Request = type metadata accessor for DirectPCSIdentityFetchRequest(0);
  __chkstk_darwin(Request, v15);
  v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = a1;
  v22 = a2;
  v23 = a3;
  sub_1001D63AC(&qword_100299040, type metadata accessor for DirectPCSIdentityFetchRequest, &protocol conformance descriptor for DirectPCSIdentityFetchRequest);
  sub_100216654();
  v18 = (*(a7 + 136))(v17, a4, a5, a6, a7);
  sub_1001E32F4(v17, type metadata accessor for DirectPCSIdentityFetchRequest);
  return v18;
}

uint64_t CuttlefishAPIAsyncOperation.fetchCurrentItem(currentItems:metrics:accountInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Request = type metadata accessor for CurrentItemFetchRequest(0);
  __chkstk_darwin(Request, v15);
  v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = a1;
  v22 = a2;
  v23 = a3;
  sub_1001D63AC(&qword_100299090, type metadata accessor for CurrentItemFetchRequest, &protocol conformance descriptor for CurrentItemFetchRequest);
  sub_100216654();
  v18 = (*(a7 + 144))(v17, a4, a5, a6, a7);
  sub_1001E32F4(v17, type metadata accessor for CurrentItemFetchRequest);
  return v18;
}

uint64_t CuttlefishAPIAsyncOperation.performCkserverUnreadableDataRemoval(metrics:accountInfo:isDbrv2:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for RemoveUnreadableCKServerDataRequest(0);
  __chkstk_darwin(v14, v15);
  v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = a1;
  v22 = a2;
  v23 = a3;
  sub_1001D63AC(&qword_1002990D0, type metadata accessor for RemoveUnreadableCKServerDataRequest, &protocol conformance descriptor for RemoveUnreadableCKServerDataRequest);
  sub_100216654();
  v18 = (*(a7 + 152))(v17, a4, a5, a6, a7);
  sub_1001E32F4(v17, type metadata accessor for RemoveUnreadableCKServerDataRequest);
  return v18;
}

uint64_t sub_1001E08C8(_BYTE *a1, uint64_t a2, uint64_t a3, int a4)
{
  v42 = a4;
  v38 = a2;
  v39 = a3;
  v5 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v35 - v7;
  v9 = type metadata accessor for AccountInfo(0);
  v40 = *(v9 - 8);
  v41 = v9;
  v11 = __chkstk_darwin(v9, v10);
  v37 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v36 = &v35 - v14;
  v15 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v15 - 8, v16);
  v18 = &v35 - v17;
  v19 = type metadata accessor for Metrics(0);
  v20 = *(v19 - 8);
  v22 = __chkstk_darwin(v19, v21);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v35 - v26;
  sub_100019C6C(v38, v18, &qword_100297FE0, &unk_10021E7F0);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1000114D4(v18, &qword_100297FE0, &unk_10021E7F0);
  }

  else
  {
    sub_1001E3224(v18, v27, type metadata accessor for Metrics);
    sub_1001E3224(v27, v24, type metadata accessor for Metrics);
    v28 = *(type metadata accessor for RemoveUnreadableCKServerDataRequest(0) + 24);
    sub_1000114D4(&a1[v28], &qword_100297FE0, &unk_10021E7F0);
    sub_1001E3224(v24, &a1[v28], type metadata accessor for Metrics);
    (*(v20 + 56))(&a1[v28], 0, 1, v19);
  }

  sub_100019C6C(v39, v8, &unk_10029D6F0, &qword_100226B40);
  v30 = v40;
  v29 = v41;
  if ((*(v40 + 48))(v8, 1, v41) == 1)
  {
    result = sub_1000114D4(v8, &unk_10029D6F0, &qword_100226B40);
  }

  else
  {
    v32 = v36;
    sub_1001E3224(v8, v36, type metadata accessor for AccountInfo);
    v33 = v37;
    sub_1001E3224(v32, v37, type metadata accessor for AccountInfo);
    v34 = *(type metadata accessor for RemoveUnreadableCKServerDataRequest(0) + 28);
    sub_1000114D4(&a1[v34], &unk_10029D6F0, &qword_100226B40);
    sub_1001E3224(v33, &a1[v34], type metadata accessor for AccountInfo);
    result = (*(v30 + 56))(&a1[v34], 0, 1, v29);
  }

  if (v42 != 2)
  {
    *a1 = v42 & 1;
  }

  return result;
}

id CuttlefishAPIAsyncOperationClient.reset(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_10001148C(&qword_100298518, &unk_100226B60);
  v8 = __chkstk_darwin(v6 - 8, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v19 - v12;
  sub_1001E328C(a1, &v19 - v12, type metadata accessor for ResetRequest);
  v14 = type metadata accessor for ResetRequest(0);
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.ResetOperation(0));
  sub_100019C6C(v13, v10, &qword_100298518, &unk_100226B60);
  v15 = sub_100216404();
  sub_1000114D4(v13, &qword_100298518, &unk_100226B60);
  v16 = v15;

  sub_1002163E4();
  v17 = *(v4 + 16);
  sub_1002163F4();

  return v16;
}

id CuttlefishAPIAsyncOperationClient.establish(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_10001148C(&qword_100298508, &qword_10021DF78);
  v8 = __chkstk_darwin(v6 - 8, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v19 - v12;
  sub_1001E328C(a1, &v19 - v12, type metadata accessor for EstablishRequest);
  v14 = type metadata accessor for EstablishRequest(0);
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.EstablishOperation(0));
  sub_100019C6C(v13, v10, &qword_100298508, &qword_10021DF78);
  v15 = sub_100216404();
  sub_1000114D4(v13, &qword_100298508, &qword_10021DF78);
  v16 = v15;

  sub_1002163E4();
  v17 = *(v4 + 16);
  sub_1002163F4();

  return v16;
}

id CuttlefishAPIAsyncOperationClient.joinWithVoucher(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_10001148C(&qword_1002984F8, &unk_100226B70);
  v8 = __chkstk_darwin(v6 - 8, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v19 - v12;
  sub_1001E328C(a1, &v19 - v12, type metadata accessor for JoinWithVoucherRequest);
  v14 = type metadata accessor for JoinWithVoucherRequest(0);
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.JoinWithVoucherOperation(0));
  sub_100019C6C(v13, v10, &qword_1002984F8, &unk_100226B70);
  v15 = sub_100216404();
  sub_1000114D4(v13, &qword_1002984F8, &unk_100226B70);
  v16 = v15;

  sub_1002163E4();
  v17 = *(v4 + 16);
  sub_1002163F4();

  return v16;
}

id CuttlefishAPIAsyncOperationClient.updateTrust(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_10001148C(&qword_1002984E8, &qword_10021DF58);
  v8 = __chkstk_darwin(v6 - 8, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v19 - v12;
  sub_1001E328C(a1, &v19 - v12, type metadata accessor for UpdateTrustRequest);
  updated = type metadata accessor for UpdateTrustRequest(0);
  (*(*(updated - 8) + 56))(v13, 0, 1, updated);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.UpdateTrustOperation(0));
  sub_100019C6C(v13, v10, &qword_1002984E8, &qword_10021DF58);
  v15 = sub_100216404();
  sub_1000114D4(v13, &qword_1002984E8, &qword_10021DF58);
  v16 = v15;

  sub_1002163E4();
  v17 = *(v4 + 16);
  sub_1002163F4();

  return v16;
}

id CuttlefishAPIAsyncOperationClient.setRecoveryKey(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_10001148C(&qword_1002984D8, &unk_100226B80);
  v8 = __chkstk_darwin(v6 - 8, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v19 - v12;
  sub_1001E328C(a1, &v19 - v12, type metadata accessor for SetRecoveryKeyRequest);
  v14 = type metadata accessor for SetRecoveryKeyRequest(0);
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.SetRecoveryKeyOperation(0));
  sub_100019C6C(v13, v10, &qword_1002984D8, &unk_100226B80);
  v15 = sub_100216404();
  sub_1000114D4(v13, &qword_1002984D8, &unk_100226B80);
  v16 = v15;

  sub_1002163E4();
  v17 = *(v4 + 16);
  sub_1002163F4();

  return v16;
}

id CuttlefishAPIAsyncOperationClient.addCustodianRecoveryKey(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_10001148C(&qword_100298458, &unk_100226BC0);
  v8 = __chkstk_darwin(v6 - 8, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v19 - v12;
  sub_1001E328C(a1, &v19 - v12, type metadata accessor for AddCustodianRecoveryKeyRequest);
  v14 = type metadata accessor for AddCustodianRecoveryKeyRequest(0);
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.AddCustodianRecoveryKeyOperation(0));
  sub_100019C6C(v13, v10, &qword_100298458, &unk_100226BC0);
  v15 = sub_100216404();
  sub_1000114D4(v13, &qword_100298458, &unk_100226BC0);
  v16 = v15;

  sub_1002163E4();
  v17 = *(v4 + 16);
  sub_1002163F4();

  return v16;
}

id CuttlefishAPIAsyncOperationClient.fetchChanges(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_10001148C(&qword_1002984C8, &qword_10021DF38);
  v8 = __chkstk_darwin(v6 - 8, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v19 - v12;
  sub_1001E328C(a1, &v19 - v12, type metadata accessor for FetchChangesRequest);
  ChangesRequest = type metadata accessor for FetchChangesRequest(0);
  (*(*(ChangesRequest - 8) + 56))(v13, 0, 1, ChangesRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchChangesOperation(0));
  sub_100019C6C(v13, v10, &qword_1002984C8, &qword_10021DF38);
  v15 = sub_100216404();
  sub_1000114D4(v13, &qword_1002984C8, &qword_10021DF38);
  v16 = v15;

  sub_1002163E4();
  v17 = *(v4 + 16);
  sub_1002163F4();

  return v16;
}

id CuttlefishAPIAsyncOperationClient.fetchViableBottles(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_10001148C(&qword_1002984B8, &unk_100226B90);
  v8 = __chkstk_darwin(v6 - 8, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v19 - v12;
  sub_1001E328C(a1, &v19 - v12, type metadata accessor for FetchViableBottlesRequest);
  ViableBottlesRequest = type metadata accessor for FetchViableBottlesRequest(0);
  (*(*(ViableBottlesRequest - 8) + 56))(v13, 0, 1, ViableBottlesRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchViableBottlesOperation(0));
  sub_100019C6C(v13, v10, &qword_1002984B8, &unk_100226B90);
  v15 = sub_100216404();
  sub_1000114D4(v13, &qword_1002984B8, &unk_100226B90);
  v16 = v15;

  sub_1002163E4();
  v17 = *(v4 + 16);
  sub_1002163F4();

  return v16;
}

id CuttlefishAPIAsyncOperationClient.fetchRecoverableTlkshares(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_10001148C(&qword_100298448, &qword_10021DEB8);
  v8 = __chkstk_darwin(v6 - 8, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v19 - v12;
  sub_1001E328C(a1, &v19 - v12, type metadata accessor for FetchRecoverableTLKSharesRequest);
  RecoverableTLKSharesRequest = type metadata accessor for FetchRecoverableTLKSharesRequest(0);
  (*(*(RecoverableTLKSharesRequest - 8) + 56))(v13, 0, 1, RecoverableTLKSharesRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchRecoverableTlksharesOperation(0));
  sub_100019C6C(v13, v10, &qword_100298448, &qword_10021DEB8);
  v15 = sub_100216404();
  sub_1000114D4(v13, &qword_100298448, &qword_10021DEB8);
  v16 = v15;

  sub_1002163E4();
  v17 = *(v4 + 16);
  sub_1002163F4();

  return v16;
}

id CuttlefishAPIAsyncOperationClient.fetchPolicyDocuments(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_10001148C(&qword_1002984A8, &qword_10021DF18);
  v8 = __chkstk_darwin(v6 - 8, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v19 - v12;
  sub_1001E328C(a1, &v19 - v12, type metadata accessor for FetchPolicyDocumentsRequest);
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  (*(*(PolicyDocumentsRequest - 8) + 56))(v13, 0, 1, PolicyDocumentsRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchPolicyDocumentsOperation(0));
  sub_100019C6C(v13, v10, &qword_1002984A8, &qword_10021DF18);
  v15 = sub_100216404();
  sub_1000114D4(v13, &qword_1002984A8, &qword_10021DF18);
  v16 = v15;

  sub_1002163E4();
  v17 = *(v4 + 16);
  sub_1002163F4();

  return v16;
}

id CuttlefishAPIAsyncOperationClient.getRepairAction(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_10001148C(&qword_100298498, &unk_100226BA0);
  v8 = __chkstk_darwin(v6 - 8, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v19 - v12;
  sub_1001E328C(a1, &v19 - v12, type metadata accessor for GetRepairActionRequest);
  RepairActionRequest = type metadata accessor for GetRepairActionRequest(0);
  (*(*(RepairActionRequest - 8) + 56))(v13, 0, 1, RepairActionRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.GetRepairActionOperation(0));
  sub_100019C6C(v13, v10, &qword_100298498, &unk_100226BA0);
  v15 = sub_100216404();
  sub_1000114D4(v13, &qword_100298498, &unk_100226BA0);
  v16 = v15;

  sub_1002163E4();
  v17 = *(v4 + 16);
  sub_1002163F4();

  return v16;
}

id CuttlefishAPIAsyncOperationClient.getEscrowCheck(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_10001148C(&qword_100298488, &qword_10021DEF8);
  v8 = __chkstk_darwin(v6 - 8, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v19 - v12;
  sub_1001E328C(a1, &v19 - v12, type metadata accessor for GetEscrowCheckRequest);
  v14 = type metadata accessor for GetEscrowCheckRequest(0);
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.GetEscrowCheckOperation(0));
  sub_100019C6C(v13, v10, &qword_100298488, &qword_10021DEF8);
  v15 = sub_100216404();
  sub_1000114D4(v13, &qword_100298488, &qword_10021DEF8);
  v16 = v15;

  sub_1002163E4();
  v17 = *(v4 + 16);
  sub_1002163F4();

  return v16;
}

id CuttlefishAPIAsyncOperationClient.getSupportAppInfo(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_10001148C(&qword_100298478, &unk_100226BB0);
  v8 = __chkstk_darwin(v6 - 8, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v19 - v12;
  sub_1001E328C(a1, &v19 - v12, type metadata accessor for GetSupportAppInfoRequest);
  SupportAppInfoRequest = type metadata accessor for GetSupportAppInfoRequest(0);
  (*(*(SupportAppInfoRequest - 8) + 56))(v13, 0, 1, SupportAppInfoRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.GetSupportAppInfoOperation(0));
  sub_100019C6C(v13, v10, &qword_100298478, &unk_100226BB0);
  v15 = sub_100216404();
  sub_1000114D4(v13, &qword_100298478, &unk_100226BB0);
  v16 = v15;

  sub_1002163E4();
  v17 = *(v4 + 16);
  sub_1002163F4();

  return v16;
}

id CuttlefishAPIAsyncOperationClient.resetAccountCdpcontents(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_10001148C(&qword_100298468, &qword_10021DED8);
  v8 = __chkstk_darwin(v6 - 8, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v19 - v12;
  sub_1001E328C(a1, &v19 - v12, type metadata accessor for ResetAccountCDPContentsRequest);
  v14 = type metadata accessor for ResetAccountCDPContentsRequest(0);
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.ResetAccountCdpcontentsOperation(0));
  sub_100019C6C(v13, v10, &qword_100298468, &qword_10021DED8);
  v15 = sub_100216404();
  sub_1000114D4(v13, &qword_100298468, &qword_10021DED8);
  v16 = v15;

  sub_1002163E4();
  v17 = *(v4 + 16);
  sub_1002163F4();

  return v16;
}

id CuttlefishAPIAsyncOperationClient.removeRecoveryKey(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_10001148C(&qword_100298438, &unk_100226BD0);
  v8 = __chkstk_darwin(v6 - 8, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v19 - v12;
  sub_1001E328C(a1, &v19 - v12, type metadata accessor for RemoveRecoveryKeyRequest);
  v14 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.RemoveRecoveryKeyOperation(0));
  sub_100019C6C(v13, v10, &qword_100298438, &unk_100226BD0);
  v15 = sub_100216404();
  sub_1000114D4(v13, &qword_100298438, &unk_100226BD0);
  v16 = v15;

  sub_1002163E4();
  v17 = *(v4 + 16);
  sub_1002163F4();

  return v16;
}

id CuttlefishAPIAsyncOperationClient.performAtoprvactions(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_10001148C(&qword_100298428, &qword_10021DE98);
  v8 = __chkstk_darwin(v6 - 8, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v19 - v12;
  sub_1001E328C(a1, &v19 - v12, type metadata accessor for PerformATOPRVActionsRequest);
  v14 = type metadata accessor for PerformATOPRVActionsRequest(0);
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.PerformAtoprvactionsOperation(0));
  sub_100019C6C(v13, v10, &qword_100298428, &qword_10021DE98);
  v15 = sub_100216404();
  sub_1000114D4(v13, &qword_100298428, &qword_10021DE98);
  v16 = v15;

  sub_1002163E4();
  v17 = *(v4 + 16);
  sub_1002163F4();

  return v16;
}

id CuttlefishAPIAsyncOperationClient.fetchPcsidentityByPublicKey(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_10001148C(&qword_100298408, &qword_10021DE78);
  v8 = __chkstk_darwin(v6 - 8, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v19 - v12;
  sub_1001E328C(a1, &v19 - v12, type metadata accessor for DirectPCSIdentityFetchRequest);
  Request = type metadata accessor for DirectPCSIdentityFetchRequest(0);
  (*(*(Request - 8) + 56))(v13, 0, 1, Request);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchPcsidentityByPublicKeyOperation(0));
  sub_100019C6C(v13, v10, &qword_100298408, &qword_10021DE78);
  v15 = sub_100216404();
  sub_1000114D4(v13, &qword_100298408, &qword_10021DE78);
  v16 = v15;

  sub_1002163E4();
  v17 = *(v4 + 16);
  sub_1002163F4();

  return v16;
}

id CuttlefishAPIAsyncOperationClient.fetchCurrentItem(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_10001148C(&qword_100298418, &unk_100226BE0);
  v8 = __chkstk_darwin(v6 - 8, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v19 - v12;
  sub_1001E328C(a1, &v19 - v12, type metadata accessor for CurrentItemFetchRequest);
  Request = type metadata accessor for CurrentItemFetchRequest(0);
  (*(*(Request - 8) + 56))(v13, 0, 1, Request);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchCurrentItemOperation(0));
  sub_100019C6C(v13, v10, &qword_100298418, &unk_100226BE0);
  v15 = sub_100216404();
  sub_1000114D4(v13, &qword_100298418, &unk_100226BE0);
  v16 = v15;

  sub_1002163E4();
  v17 = *(v4 + 16);
  sub_1002163F4();

  return v16;
}

id CuttlefishAPIAsyncOperationClient.performCkserverUnreadableDataRemoval(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_10001148C(&qword_1002983F8, &qword_100226BF0);
  v8 = __chkstk_darwin(v6 - 8, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v19 - v12;
  sub_1001E328C(a1, &v19 - v12, type metadata accessor for RemoveUnreadableCKServerDataRequest);
  v14 = type metadata accessor for RemoveUnreadableCKServerDataRequest(0);
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.PerformCkserverUnreadableDataRemovalOperation(0));
  sub_100019C6C(v13, v10, &qword_1002983F8, &qword_100226BF0);
  v15 = sub_100216404();
  sub_1000114D4(v13, &qword_1002983F8, &qword_100226BF0);
  v16 = v15;

  sub_1002163E4();
  v17 = *(v4 + 16);
  sub_1002163F4();

  return v16;
}

uint64_t sub_1001E3224(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001E328C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001E32F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001E3660(unint64_t a1, _TtC18TrustedPeersHelper6Client *a2)
{
  v90 = a1;
  v91 = a2;
  *&v94 = a1;
  *(&v94 + 1) = a2;

  sub_10001148C(&qword_10029E768, &qword_100226FB8);
  if (swift_dynamicCast())
  {
    sub_1001F36F0(v92, &v95);
    sub_100006484(&v95, v96);
    sub_1002160B4();
    v92[0] = v94;
    sub_100006128(&v95, v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_63;
  }

  v93 = 0;
  memset(v92, 0, sizeof(v92));
  sub_1000114D4(v92, &qword_10029E770, &unk_100226FC0);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v12 = (a2 >> 56) & 0xF;
    *&v92[0] = a1;
    *(&v92[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v11 = v92;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v11 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_100217034();
  }

  sub_1001EEC28(v11, v12, &v95);
  v13 = *(&v95 + 1);
  v14 = v95;
  if (*(&v95 + 1) >> 60 != 15)
  {
    v92[0] = v95;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v15 = (a2 >> 56) & 0xF;
  }

  else
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v92[0] = sub_1001F00A4(v15);
  *(&v92[0] + 1) = v16;
  __chkstk_darwin(*&v92[0], v16);
  v83[2] = &v90;
  sub_1001EE510(sub_1001F3688, v83, v17, v18, v19, v20, v21, v22);
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = *(&v92[0] + 1) >> 62;
  if ((*(&v92[0] + 1) >> 62) > 1)
  {
    if (v34 == 2)
    {
      v36 = *(*&v92[0] + 16);
      v35 = *(*&v92[0] + 24);
      v37 = __OFSUB__(v35, v36);
      v38 = (v35 - v36);
      if (v37)
      {
        goto LABEL_70;
      }

      if (v26 != v38)
      {
        goto LABEL_23;
      }
    }

    else if (v26)
    {
      v39 = 0;
      goto LABEL_60;
    }
  }

  else if (v34)
  {
    if (__OFSUB__(DWORD1(v92[0]), v92[0]))
    {
      goto LABEL_71;
    }

    if (v26 != (DWORD1(v92[0]) - LODWORD(v92[0])))
    {
LABEL_23:
      if (v34 == 2)
      {
        v39 = *(*&v92[0] + 24);
      }

      else if (v34 == 1)
      {
        v39 = *&v92[0] >> 32;
      }

      else
      {
        v39 = BYTE14(v92[0]);
      }

LABEL_60:
      if (v39 >= v26)
      {
        sub_1002161E4();
LABEL_62:
        v32, v55, v56, v57, v58, v59, v60, v61, v84, v85, v86, v87, v88, v89, v90, v91, *&v92[0], *(&v92[0] + 1);
        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v26 != BYTE14(v92[0]))
  {
    goto LABEL_23;
  }

  v86 = v14;
  if ((v24 & 0x2000000000000000) != 0)
  {
    v40 = HIBYTE(v24) & 0xF;
  }

  else
  {
    v40 = v23 & 0xFFFFFFFFFFFFLL;
  }

  *(&v94 + 7) = 0;
  *&v94 = 0;
  if (4 * v40 == v25 >> 14)
  {
    goto LABEL_57;
  }

  v85 = v13;
  LOBYTE(v41) = 0;
  v42 = (v23 >> 59) & 1;
  if ((v24 & 0x1000000000000000) == 0)
  {
    LOBYTE(v42) = 1;
  }

  v43 = 4 << v42;
  v87 = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v88 = (v24 & 0xFFFFFFFFFFFFFFLL);
  do
  {
    v44 = v33 & 0xC;
    v45 = v33;
    if (v44 == v43)
    {
      v45 = sub_1001EFEFC(v33, v31, v32);
    }

    v46 = v45 >> 16;
    if (v45 >> 16 >= v40)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v15 = sub_100216A44();
      v14 = 0;
      v13 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v32 & 0x1000000000000000) != 0)
    {
      v48 = sub_100216A74();
      if (v44 != v43)
      {
        goto LABEL_46;
      }
    }

    else if ((v32 & 0x2000000000000000) != 0)
    {
      *&v95 = v31;
      *(&v95 + 1) = v88;
      v48 = *(&v95 + v46);
      if (v44 != v43)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v47 = v87;
      if ((v31 & 0x1000000000000000) == 0)
      {
        v47 = sub_100217034();
      }

      v48 = v47[v46];
      if (v44 != v43)
      {
LABEL_46:
        if ((v32 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v33 = sub_1001EFEFC(v33, v31, v32);
    if ((v32 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v33 = (v33 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v40 <= v33 >> 16)
    {
      goto LABEL_66;
    }

    v33 = sub_100216A54();
LABEL_52:
    *(&v94 + v41) = v48;
    v41 = v41 + 1;
    if ((v41 >> 8))
    {
      goto LABEL_65;
    }

    if (v41 == 14)
    {
      *&v95 = v94;
      *(&v95 + 6) = *(&v94 + 6);
      sub_1002161F4();
      LOBYTE(v41) = 0;
    }
  }

  while (4 * v40 != v33 >> 14);
  v13 = v85;
  if (v41)
  {
    *&v95 = v94;
    *(&v95 + 6) = *(&v94 + 6);
    sub_1002161F4();
    sub_10004CD18(v86, v13, v49, v50, v51, v52, v53, v54);
    goto LABEL_62;
  }

LABEL_57:
  v32, v24, v25, v26, v27, v28, v29, v30, v84, v85, v86, v87, v88, v89, v90, v91, *&v92[0], *(&v92[0] + 1);
  sub_10004CD18(v86, v13, v62, v63, v64, v65, v66, v67);
LABEL_63:
  v68 = v92[0];
  sub_100012558(*&v92[0], *(&v92[0] + 1));
  a2, v69, v70, v71, v72, v73, v74, v75, v84, v85, v86, v87, v88, v89, v90, v91, *&v92[0], *(&v92[0] + 1);
  sub_100002BF0(v68, *(&v68 + 1), v76, v77, v78, v79, v80, v81);
  return v68;
}

void sub_1001E3B80(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_100216E84();
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO, &protocol conformance descriptor for NSObject);
    sub_100216C04();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
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

  v20 = _swiftEmptyArrayStorage;
  while (v1 < 0)
  {
    if (!sub_100216F14() || (type metadata accessor for MachineMO(), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_1001ACCA0(v1);
      return;
    }

LABEL_17:
    v12 = [v11 machineID];
    if (v12)
    {
      v13 = v12;
      v19 = sub_100216974();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_100182D90(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_100182D90((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
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
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1001E3E28(void (*a1)(id *), uint64_t a2, _TtC18TrustedPeersHelper6Client *a3)
{
  containerMap = a3[1].containerMap;
  v7 = 1 << a3[1]._TtCs12_SwiftObject_opaque[0];
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *a3[1].containerMap;
  v10 = (v7 + 63) >> 6;

  v18 = 0;
  if (v9)
  {
    while (1)
    {
      v19 = v18;
LABEL_8:
      v20 = *a3[1].endpoint + ((v19 << 10) | (16 * __clz(__rbit64(v9))));
      v21 = *(v20 + 8);
      v36 = *v20;
      v37 = v21;

      a1(&v36);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;
      v21, v22, v23, v24, v25, v26, v27, v28, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45;
      v18 = v19;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    a3, v22, v23, v24, v25, v26, v27, v28;
    v21, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v10)
      {
        a3, v11, v12, v13, v14, v15, v16, v17;
        return;
      }

      v9 = *&containerMap[8 * v19];
      ++v18;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1001E3F60(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_100216E84();
    type metadata accessor for VoucherMO();
    sub_1001F3728(&qword_10029DA08, type metadata accessor for VoucherMO, &protocol conformance descriptor for NSObject);
    sub_100216C04();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        a1(&v26);

        if (v4)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_100216F14())
        {
          goto LABEL_19;
        }

        type metadata accessor for VoucherMO();
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      v18 = v20;
    }

    else
    {
LABEL_21:
      v5 = v20;
LABEL_19:
      v18 = v5;
    }

    sub_1001ACCA0(v18);
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void *sub_1001E4190(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100216894();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F3728(&qword_10029E760, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v9 = sub_100216AE4();
  v50 = _swiftEmptyArrayStorage;
  sub_1001877A4(0, v9 & ~(v9 >> 63), 0, v10, v11, v12, v13, v14);
  v15 = v50;
  (*(v5 + 16))(v8, a1, v4);
  result = sub_100216AD4();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v24 = v48;
    if (v9)
    {
      v44 = v1;
      v25 = v47;
      *&v46 = v47[2];
      v45 = xmmword_10021D600;
      v26 = v48;
      while (v46 != v26)
      {
        if ((v24 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v26 >= v25[2])
        {
          goto LABEL_22;
        }

        v27 = v26[(v25 + 4)];
        sub_10001148C(&qword_100297D30, &qword_1002270B0);
        v28 = swift_allocObject();
        *(v28 + 16) = v45;
        *(v28 + 56) = &type metadata for UInt8;
        *(v28 + 64) = &protocol witness table for UInt8;
        *(v28 + 32) = v27;
        result = sub_100216984();
        v50 = v15;
        v30 = v15[2];
        v29 = v15[3];
        if (v30 >= v29 >> 1)
        {
          v43 = result;
          v32 = v17;
          sub_1001877A4((v29 > 1), v30 + 1, 1, v19, v20, v21, v22, v23);
          v17 = v32;
          result = v43;
          v15 = v50;
        }

        v15[2] = v30 + 1;
        v31 = &v15[2 * v30];
        v31[4] = result;
        v31[5] = v17;
        ++v26;
        if (!--v9)
        {
          v48 = v26;
          v2 = v44;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v26 = v48;
LABEL_12:
      v33 = v47;
      v34 = v47[2];
      if (v26 == v34)
      {
LABEL_13:
        v33, v17, v18, v19, v20, v21, v22, v23, v43, v44, v45, *(&v45 + 1), v46, SDWORD2(v46), v47, v48, v49, v50;
        return v15;
      }

      v46 = xmmword_10021D600;
      while (v26 < v34)
      {
        v35 = v26 + 1;
        v36 = v26[(v33 + 1)];
        v48 = v35;
        sub_10001148C(&qword_100297D30, &qword_1002270B0);
        v37 = swift_allocObject();
        *(v37 + 16) = v46;
        *(v37 + 56) = &type metadata for UInt8;
        *(v37 + 64) = &protocol witness table for UInt8;
        *(v37 + 32) = v36;
        result = sub_100216984();
        v50 = v15;
        v39 = v15[2];
        v38 = v15[3];
        if (v39 >= v38 >> 1)
        {
          *&v45 = result;
          v41 = v2;
          v42 = v17;
          sub_1001877A4((v38 > 1), v39 + 1, 1, v19, v20, v21, v22, v23);
          v17 = v42;
          v2 = v41;
          result = v45;
          v15 = v50;
        }

        v15[2] = v39 + 1;
        v40 = &v15[2 * v39];
        v40[4] = result;
        v40[5] = v17;
        v34 = *v33->endpoint;
        v26 = v48;
        if (v48 == v34)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_1001E4538()
{
  v1 = sub_100216384();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v205 = (&v190 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v4, v6);
  v204 = &v190 - v8;
  v10 = __chkstk_darwin(v7, v9);
  v203 = &v190 - v11;
  v13 = __chkstk_darwin(v10, v12);
  v202 = &v190 - v14;
  v16 = __chkstk_darwin(v13, v15);
  v201 = &v190 - v17;
  v19 = __chkstk_darwin(v16, v18);
  v200 = (&v190 - v20);
  v22 = __chkstk_darwin(v19, v21);
  v24 = &v190 - v23;
  v26 = __chkstk_darwin(v22, v25);
  v28 = &v190 - v27;
  v30 = __chkstk_darwin(v26, v29);
  v192 = &v190 - v31;
  v33 = __chkstk_darwin(v30, v32);
  v191 = &v190 - v34;
  v36 = __chkstk_darwin(v33, v35);
  v198 = &v190 - v37;
  v39 = __chkstk_darwin(v36, v38);
  v197 = &v190 - v40;
  v42 = __chkstk_darwin(v39, v41);
  v196 = &v190 - v43;
  v45 = __chkstk_darwin(v42, v44);
  v195 = &v190 - v46;
  v48 = __chkstk_darwin(v45, v47);
  v50 = &v190 - v49;
  v52 = __chkstk_darwin(v48, v51);
  v194 = &v190 - v53;
  __chkstk_darwin(v52, v54);
  v193 = &v190 - v55;
  v56 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v57 = [*(v0 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) honorIDMSListChanges];
  if (v57)
  {
    v199 = v28;
    v58 = v24;
    v59 = v2;
    v60 = v57;
    v61 = sub_100216974();
    v63 = v62;

    if (v61 == 0x4E574F4E4B4E55 && v63 == 0xE700000000000000)
    {
      v63, v64, v65, v66, v67, v68, v69, v70, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199;
      return 1;
    }

    v72 = sub_1002171A4();
    v63, v73, v74, v75, v76, v77, v78, v79, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199;
    v2 = v59;
    v24 = v58;
    v28 = v199;
    if (v72)
    {
      return 1;
    }
  }

  v81 = [*(v0 + v56) machines];
  v82 = &_swiftEmptySetSingleton;
  if (v81)
  {
    v83 = v81;
    v210 = 0;
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO, &protocol conformance descriptor for NSObject);
    sub_100216BA4();

    if (v210)
    {
      v84 = v210;
    }

    else
    {
      v84 = &_swiftEmptySetSingleton;
    }

    if ((v84 & 0xC000000000000001) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v84 = &_swiftEmptySetSingleton;
    if ((&_swiftEmptySetSingleton & 0xC000000000000001) != 0)
    {
LABEL_13:
      v210 = &_swiftEmptySetSingleton;
      v207 = sub_100216E84();
      v85 = sub_100216F14();
      if (!v85)
      {
LABEL_42:
        v207, v86, v87, v88, v89, v90, v91, v92;
        if ((v82 & 0xC000000000000001) != 0)
        {
          goto LABEL_76;
        }

        goto LABEL_81;
      }

      v198 = v24;
      v199 = v28;
      v93 = v85;
      v206 = type metadata accessor for MachineMO();
      v94 = v93;
      v95 = (v2 + 32);
      v96 = (v2 + 8);
LABEL_19:
      v208 = v94;
      swift_dynamicCast();
      v104 = v209;
      if ([v209 status] || (v117 = objc_msgSend(v104, "modified")) != 0 && (v118 = v205, v119 = v117, sub_100216344(), v119, v120 = v204, (*v95)(v204, v118, v1), sub_100216314(), v2 = sub_100216354(), v84 = *v96, (*v96)(v50, v1), (v84)(v120, v1), v2 == 1))
      {
        if ([v104 status] != 3 || (v105 = objc_msgSend(v104, "modified")) != 0 && (v106 = v203, v107 = v105, sub_100216344(), v107, v2 = v202, (*v95)(v202, v106, v1), sub_100216314(), v108 = sub_100216354(), v84 = *v96, (*v96)(v50, v1), (v84)(v2, v1), v108 == 1))
        {
          if ([v104 status] != 4 || (v109 = objc_msgSend(v104, "modified")) != 0 && (v110 = v201, v111 = v109, sub_100216344(), v111, v2 = v200, (*v95)(v200, v110, v1), sub_100216314(), v112 = sub_100216354(), v84 = *v96, (*v96)(v50, v1), (v84)(v2, v1), v112 == 1))
          {
            if ([v104 status] != 5 || (v113 = objc_msgSend(v104, "modified")) != 0 && (v84 = v198, v114 = v113, sub_100216344(), v114, v2 = v199, (*v95)(v199, v84, v1), sub_100216314(), v115 = sub_100216354(), v116 = *v96, (*v96)(v50, v1), v116(v2, v1), v115 == 1))
            {

              goto LABEL_18;
            }
          }
        }
      }

      v121 = v209;
      v122 = *(v82 + 16);
      if (*(v82 + 24) <= v122)
      {
        sub_100188B58(v122 + 1);
      }

      v82 = v210;
      v97 = sub_100216DB4(*&v210[1]._TtCs12_SwiftObject_opaque[8]);
      v99 = (v82 + 56);
      v100 = -1 << *(v82 + 32);
      v101 = v97 & ~v100;
      v102 = v101 >> 6;
      if (((-1 << v101) & ~*(v82 + 56 + 8 * (v101 >> 6))) != 0)
      {
        v103 = __clz(__rbit64((-1 << v101) & ~*(v82 + 56 + 8 * (v101 >> 6)))) | v101 & 0x7FFFFFFFFFFFFFC0;
        goto LABEL_17;
      }

      v123 = 0;
      v124 = (63 - v100) >> 6;
      while (++v102 != v124 || (v123 & 1) == 0)
      {
        v125 = v102 == v124;
        if (v102 == v124)
        {
          v102 = 0;
        }

        v123 |= v125;
        v126 = *&v99[8 * v102];
        if (v126 != -1)
        {
          v103 = __clz(__rbit64(~v126)) + (v102 << 6);
LABEL_17:
          *&v99[(v103 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v103;
          *(*(v82 + 48) + 8 * v103) = v121;
          ++*(v82 + 16);
LABEL_18:
          v94 = sub_100216F14();
          if (!v94)
          {
            goto LABEL_42;
          }

          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      v174 = v98;

      if (swift_stdlib_isStackAllocationSafe())
      {
        v84, v175, v176, v177, v178, v179, v180, v181, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199;
        v98 = v174;
        goto LABEL_47;
      }

      v182 = swift_slowAlloc();
      v82 = sub_1001EF198(v182, v121, v84, sub_1001EE44C, 0);
      v84, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199;

      if ((v82 & 0xC000000000000001) != 0)
      {
        goto LABEL_76;
      }

LABEL_81:
      v173 = *(v82 + 16);
      goto LABEL_82;
    }
  }

  v134 = *(v84 + 32);
  v121 = ((1 << v134) + 63) >> 6;
  v98 = 8 * v121;
  if ((v134 & 0x3Fu) > 0xD)
  {
    goto LABEL_78;
  }

LABEL_47:
  v200 = &v190;
  v201 = v121;
  __chkstk_darwin(v81, v98);
  v202 = &v190 - ((v135 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v202, v135);
  v203 = 0;
  v140 = 0;
  v205 = v84;
  v141 = v84 + 56;
  v142 = 1 << *(v84 + 32);
  v143 = -1;
  if (v142 < 64)
  {
    v143 = ~(-1 << v142);
  }

  v144 = v143 & *(v84 + 56);
  v84 = (v142 + 63) >> 6;
  v206 = (v2 + 32);
  v145 = (v2 + 8);
  v121 = 0x100292000;
  do
  {
    do
    {
      while (1)
      {
        if (!v144)
        {
          v147 = v140;
          while (1)
          {
            v140 = v147 + 1;
            if (__OFADD__(v147, 1))
            {
              goto LABEL_77;
            }

            if (v140 >= v84)
            {
              goto LABEL_75;
            }

            v148 = *(v141 + 8 * v140);
            ++v147;
            if (v148)
            {
              v146 = __clz(__rbit64(v148));
              v207 = ((v148 - 1) & v148);
              goto LABEL_58;
            }
          }
        }

        v146 = __clz(__rbit64(v144));
        v207 = ((v144 - 1) & v144);
LABEL_58:
        v149 = v146 | (v140 << 6);
        v150 = *v205[1].endpoint;
        v204 = v149;
        v151 = *(v150 + 8 * v149);
        if (![v151 *(v121 + 3376)] && ((v152 = objc_msgSend(v151, "modified")) == 0 || (v153 = v152, v154 = v192, sub_100216344(), v153, v155 = v191, (*v206)(v191, v154, v1), sub_100216314(), v2 = sub_100216354(), v156 = *v145, (*v145)(v50, v1), v156(v155, v1), v121 = &stru_100292000, v2 != 1)) || objc_msgSend(v151, *(v121 + 3376)) == 3 && ((v157 = objc_msgSend(v151, "modified")) == 0 || (v158 = v157, v159 = v198, sub_100216344(), v158, v2 = v197, (*v206)(v197, v159, v1), sub_100216314(), v160 = sub_100216354(), v161 = *v145, (*v145)(v50, v1), v161(v2, v1), v121 = &stru_100292000, v160 != 1)) || objc_msgSend(v151, *(v121 + 3376)) == 4 && ((v162 = objc_msgSend(v151, "modified")) == 0 || (v163 = v162, v164 = v196, sub_100216344(), v163, v2 = v195, (*v206)(v195, v164, v1), sub_100216314(), v165 = sub_100216354(), v166 = *v145, (*v145)(v50, v1), v166(v2, v1), v121 = &stru_100292000, v165 != 1)))
        {
LABEL_71:

          v144 = v207;
          goto LABEL_72;
        }

        if ([v151 *(v121 + 3376)] == 5)
        {
          break;
        }

        v144 = v207;
      }

      v167 = [v151 modified];
      if (!v167)
      {
        goto LABEL_71;
      }

      v168 = v167;
      v169 = v194;
      sub_100216344();

      v2 = v193;
      (*v206)(v193, v169, v1);
      sub_100216314();
      v170 = sub_100216354();
      v171 = *v145;
      (*v145)(v50, v1);
      v171(v2, v1);
      v121 = 0x100292000;

      v144 = v207;
    }

    while (v170 == 1);
LABEL_72:
    *&v202[(v204 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v204;
  }

  while (!__OFADD__(v203++, 1));
  __break(1u);
LABEL_75:
  v82 = sub_10018AD28(v202, v201, v203, v205, v136, v137, v138, v139);
  if ((v82 & 0xC000000000000001) == 0)
  {
    goto LABEL_81;
  }

LABEL_76:
  v173 = sub_100216ED4();
LABEL_82:
  v82, v127, v128, v129, v130, v131, v132, v133;
  return v173 != 0;
}

uint64_t sub_1001E537C(_TtC18TrustedPeersHelper6Client *a1, _TtC18TrustedPeersHelper6Client *a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) machines];
  v6 = &_swiftEmptySetSingleton;
  if (v5)
  {
    v7 = v5;
    v131 = 0;
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO, &protocol conformance descriptor for NSObject);
    sub_100216BA4();
  }

  if ((sub_1001F2390() & 1) == 0)
  {
    &_swiftEmptySetSingleton, v8, v9, v10, v11, v12, v13, v14, v116, v118, v121, v124, v126, v128, v130, v131, v132, v133;
    if (qword_100297540 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

  if ((&_swiftEmptySetSingleton & 0xC000000000000001) != 0)
  {
    sub_100216E84();
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO, &protocol conformance descriptor for NSObject);
    sub_100216C04();
    v6 = v131;
    v15 = v132;
    v16 = v133;
    v17 = v134;
    v18 = v135;
  }

  else
  {
    v17 = 0;
    v39 = -1 << *(&_swiftEmptySetSingleton + 32);
    v15 = &_swiftEmptySetSingleton + 56;
    v16 = ~v39;
    v40 = -v39;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v18 = (v41 & *(&_swiftEmptySetSingleton + 7));
  }

  v119 = v16;
  v122 = v15;
  v42 = (v16 + 64) >> 6;
  while (1)
  {
    if (v6 < 0)
    {
      v47 = sub_100216F14();
      if (!v47 || (v128 = v47, type metadata accessor for MachineMO(), swift_dynamicCast(), v20 = v130, v45 = v17, v46 = v18, !v130))
      {
LABEL_32:
        sub_1001ACCA0(v6);
        if (qword_100297540 != -1)
        {
          swift_once();
        }

        v71 = sub_100216774();
        sub_100002648(v71, qword_10029E728);

        v72 = sub_100216754();
        v73 = sub_100216C94();
        a2, v74, v75, v76, v77, v78, v79, v80, v116, v119, v122, v124, v126, v128, v130, v131, v132, v133;
        if (os_log_type_enabled(v72, v73))
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v130 = v82;
          *v81 = 136446210;
          *(v81 + 4) = sub_100005FB0(a1, a2, &v130);
          _os_log_impl(&_mh_execute_header, v72, v73, "machineID %{public}s not found on list", v81, 0xCu);
          sub_100006128(v82, v83, v84, v85, v86, v87, v88, v89);
        }

        return 0;
      }
    }

    else
    {
      v43 = v17;
      v44 = v18;
      v45 = v17;
      if (!v18)
      {
        while (1)
        {
          v45 = (v43 + 1);
          if (__OFADD__(v43, 1))
          {
            break;
          }

          if (v45 >= v42)
          {
            goto LABEL_32;
          }

          v44 = *&v15[8 * v45];
          ++v43;
          if (v44)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_48:
        swift_once();
LABEL_7:
        v19 = sub_100216774();
        sub_100002648(v19, qword_10029E728);

        v20 = sub_100216754();
        v21 = sub_100216C54();
        a2, v22, v23, v24, v25, v26, v27, v28, v116, v119, v122, v124, v126, v128, v130, v131, v132, v133;
        if (os_log_type_enabled(v20, v21))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v131 = v30;
          *v29 = 136446210;
          *(v29 + 4) = sub_100005FB0(a1, a2, &v131);
          _os_log_impl(&_mh_execute_header, v20, v21, "not enforcing idms list changes; allowing %{public}s", v29, 0xCu);
          sub_100006128(v30, v31, v32, v33, v34, v35, v36, v37);
        }

        goto LABEL_9;
      }

LABEL_21:
      v46 = (v44 - 1) & v44;
      v20 = *(*(v6 + 48) + ((v45 << 9) | (8 * __clz(__rbit64(v44)))));
      if (!v20)
      {
        goto LABEL_32;
      }
    }

    v124 = v18;
    v126 = v17;
    v48 = [v20 machineID];
    if (!v48)
    {
      goto LABEL_15;
    }

    v49 = a1;
    v50 = a2;
    v51 = v48;
    v52 = sub_100216974();
    v54 = v53;

    a2 = v50;
    a1 = v49;
    if (v52 == v49 && v54 == a2)
    {
      break;
    }

    v63 = sub_1002171A4();
    v54, v64, v65, v66, v67, v68, v69, v70, v116, v119, v122, v124, v126, v128, v130, v131, v132, v133;
    v15 = v122;
    if (v63)
    {
      goto LABEL_39;
    }

LABEL_15:

    v17 = v45;
    v18 = v46;
  }

  v54, v55, v56, v57, v58, v59, v60, v61, v116, v119, v122, v124, v126, v128, v130, v131, v132, v133;
LABEL_39:
  if ([v20 status]!= 1)
  {
    if (qword_100297540 != -1)
    {
      swift_once();
    }

    v90 = sub_100216774();
    sub_100002648(v90, qword_10029E728);

    v91 = v20;
    v92 = sub_100216754();
    v93 = sub_100216C54();

    a2, v94, v95, v96, v97, v98, v99, v100, v116, v119, v122, v124, v126, v128, v130, v131, v132, v133;
    if (os_log_type_enabled(v92, v93))
    {
      v101 = a2;
      v102 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      *v102 = 136446466;
      *(v102 + 4) = sub_100005FB0(v49, v101, &v130);
      *(v102 + 12) = 2082;
      v103 = v91;
      v104 = [v103 description];
      v105 = sub_100216974();
      v107 = v106;

      v108 = sub_100005FB0(v105, v107, &v130);
      v107, v109, v110, v111, v112, v113, v114, v115, v117, v120, v123, v125, v127, v129, v130, v131, v132, v133;
      *(v102 + 14) = v108;
      _os_log_impl(&_mh_execute_header, v92, v93, "machineID %{public}s not explicitly allowed: %{public}s", v102, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_1001ACCA0(v6);
    return 0;
  }

  sub_1001ACCA0(v6);
LABEL_9:

  return 1;
}

void sub_1001E5AA8(void *a1)
{
  v2 = v1;
  v233 = sub_100216384();
  v4 = *(v233 - 8);
  __chkstk_darwin(v233, v5);
  v229 = &v224 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v7 = [*(v2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) machines];
  v8 = &_swiftEmptySetSingleton;
  v226 = v4;
  if (v7)
  {
    v9 = v7;
    v238 = 0;
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO, &protocol conformance descriptor for NSObject);
    sub_100216BA4();

    if (v238)
    {
      v8 = v238;
    }
  }

  v230 = v8;
  sub_1001E3B80(v8);
  v11 = v10;
  v235 = 0;
  v236 = sub_10019C848(v10);
  v11, v12, v13, v14, v15, v16, v17, v18, v224, *(&v224 + 1), v225, v226, v227, SDWORD2(v227), v228, v229, v230, v231;
  v19 = [a1 includedPeerIDs];
  v20 = sub_100216BB4();

  containerMap = v20[1].containerMap;
  v22 = 1 << v20[1]._TtCs12_SwiftObject_opaque[0];
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *v20[1].containerMap;
  v25 = (v22 + 63) >> 6;

  v33 = 0;
  v34 = _swiftEmptyArrayStorage;
  v234 = v2;
  while (v24)
  {
LABEL_14:
    v37 = *v20[1].endpoint + ((v33 << 10) | (16 * __clz(__rbit64(v24))));
    v38 = *(v37 + 8);
    v238 = *v37;
    v239 = v38;

    v39 = v235;
    sub_1001EE168(&v238, v2, &v240);
    v235 = v39;
    v38, v40, v41, v42, v43, v44, v45, v46, v224, *(&v224 + 1), v225, v226, v227, SDWORD2(v227), v228, v229, v230, v231;
    v47 = v241;
    if (v241)
    {
      v48 = v240;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_100182D90(0, *v34->endpoint + 1, 1, v34);
      }

      v50 = *v34->endpoint;
      v49 = *v34->containerMap;
      if (v50 >= v49 >> 1)
      {
        v34 = sub_100182D90((v49 > 1), v50 + 1, 1, v34);
      }

      *v34->endpoint = v50 + 1;
      v35 = v34 + 16 * v50;
      *(v35 + 4) = v48;
      *(v35 + 5) = v47;
      v2 = v234;
    }

    v24 &= v24 - 1;
  }

  while (1)
  {
    v36 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    if (v36 >= v25)
    {
      break;
    }

    v24 = *(containerMap + 8 * v36);
    ++v33;
    if (v24)
    {
      v33 = v36;
      goto LABEL_14;
    }
  }

  v20, v26, v27, v28, v29, v30, v31, v32;
  v20, v51, v52, v53, v54, v55, v56, v57, v224, *(&v224 + 1), v225, v226, v227, SDWORD2(v227), v228, v229, v230, v231;
  v33 = sub_10019C848(v34);
  v34, v58, v59, v60, v61, v62, v63, v64, v224, *(&v224 + 1), v225, v226, v227, SDWORD2(v227), v228, v229, v230, v231;
  v65 = sub_1001F2390();
  v24 = 0x10021C000;
  v232 = v33;
  if (v65)
  {
    v73 = v236;
    containerMap = v230;
    if (*v236->endpoint > *(v33 + 16) >> 3)
    {

      v80 = sub_10018EA24(v73, v33, v74, v75, v76, v77, v78, v79);
      v73, v81, v82, v83, v84, v85, v86, v87, v224, *(&v224 + 1), v225, v226, v227, SDWORD2(v227), v228, v229, v230, v231;
      v112 = v80;
    }

    else
    {
      v238 = v33;

      sub_10018E8F8(v73);
      v73, v97, v98, v99, v100, v101, v102, v103, v224, *(&v224 + 1), v225, v226, v227, SDWORD2(v227), v228, v229, v230, v231;
      v112 = v238;
    }

    v113 = 0;
    v114 = v112[1].containerMap;
    v115 = 1 << v112[1]._TtCs12_SwiftObject_opaque[0];
    v116 = -1;
    if (v115 < 64)
    {
      v116 = ~(-1 << v115);
    }

    v24 = v116 & *v112[1].containerMap;
    *&v227 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc;
    v33 = (v115 + 63) >> 6;
    ++v226;
    *&v111 = 136446210;
    v224 = v111;
    v228 = v112;
    while (v24)
    {
LABEL_37:
      v130 = *v112[1].endpoint + ((v113 << 10) | (16 * __clz(__rbit64(v24))));
      v131 = *v130;
      v132 = *(v130 + 8);
      v133 = qword_100297540;

      if (v133 != -1)
      {
        swift_once();
      }

      v134 = sub_100216774();
      sub_100002648(v134, qword_10029E728);

      v135 = sub_100216754();
      v136 = sub_100216C54();
      v132, v137, v138, v139, v140, v141, v142, v143, v224, *(&v224 + 1), v225, v226, v227, SDWORD2(v227), v228, v229, v230, v231;
      if (os_log_type_enabled(v135, v136))
      {
        v144 = swift_slowAlloc();
        v236 = v131;
        v145 = v144;
        v146 = swift_slowAlloc();
        v238 = v146;
        *v145 = v224;

        v147 = sub_100005FB0(v236, v132, &v238);
        v132, v148, v149, v150, v151, v152, v153, v154, v224, *(&v224 + 1), v225, v226, v227, SDWORD2(v227), v228, v229, v230, v231;
        *(v145 + 4) = v147;
        containerMap = v230;
        _os_log_impl(&_mh_execute_header, v135, v136, "Peer machineID is unknown, beginning grace period: %{public}s", v145, 0xCu);
        sub_100006128(v146, v155, v156, v157, v158, v159, v160, v161);
        v2 = v234;
      }

      v24 &= v24 - 1;
      type metadata accessor for MachineMO();
      v117 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v2 + v227)];
      v118 = sub_100216964();
      v132, v119, v120, v121, v122, v123, v124, v125, v224, *(&v224 + 1), v225, v226, v227, SDWORD2(v227), v228, v229, v230, v231;
      [v117 setMachineID:v118];

      v126 = v231;
      [v117 setContainer:*&v231[v2]];
      [v117 setSeenOnFullList:0];
      v127 = v229;
      sub_100216374();
      isa = sub_1002162F4().super.isa;
      (*v226)(v127, v233);
      [v117 setModified:isa];

      [v117 setStatus:0];
      [*&v126[v2] addMachinesObject:v117];

      v112 = v228;
    }

    while (1)
    {
      v129 = v113 + 1;
      if (__OFADD__(v113, 1))
      {
        goto LABEL_83;
      }

      if (v129 >= v33)
      {
        v112, v104, v105, v106, v107, v108, v109, v110;
        v33 = v232;
        v24 = &OBJC_INSTANCE_METHODS_TrustedPeersHelperCustodianRecoveryKey;
        if ((containerMap & 0xC000000000000001) != 0)
        {
          goto LABEL_27;
        }

        goto LABEL_42;
      }

      v24 = *&v114[8 * v129];
      ++v113;
      if (v24)
      {
        v113 = v129;
        goto LABEL_37;
      }
    }
  }

  v236, v66, v67, v68, v69, v70, v71, v72, v224, *(&v224 + 1), v225, v226, v227, SDWORD2(v227), v228, v229, v230, v231;
  containerMap = v230;
  if (qword_100297540 == -1)
  {
    goto LABEL_24;
  }

LABEL_84:
  swift_once();
LABEL_24:
  v88 = sub_100216774();
  sub_100002648(v88, qword_10029E728);
  v89 = sub_100216754();
  v90 = sub_100216C54();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&_mh_execute_header, v89, v90, "Not enforcing IDMS list changes", v91, 2u);
  }

  if ((containerMap & 0xC000000000000001) != 0)
  {
LABEL_27:
    sub_100216E84();
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO, &protocol conformance descriptor for NSObject);
    sub_100216C04();
    containerMap = v240;
    v93 = v241;
    v94 = v242;
    v95 = v243;
    v96 = v244;
  }

  else
  {
LABEL_42:
    v95 = 0;
    v162 = -1 << *(containerMap + 32);
    v93 = (containerMap + 56);
    v94 = ~v162;
    v163 = -v162;
    if (v163 < 64)
    {
      v164 = ~(-1 << v163);
    }

    else
    {
      v164 = -1;
    }

    v96 = v164 & *(containerMap + 56);
  }

  v228 = v94;
  v165 = (v94 + 64) >> 6;
  v236 = (v33 + 56);
  v33 = &stru_100292000;
  *&v92 = *(v24 + 3200);
  v227 = v92;
  v229 = v93;
  while (1)
  {
    v24 = v96;
    if (containerMap < 0)
    {
      break;
    }

    v166 = v95;
    for (i = v96; !i; ++v166)
    {
      v95 = v166 + 1;
      if (__OFADD__(v166, 1))
      {
        goto LABEL_82;
      }

      if (v95 >= v165)
      {
        goto LABEL_80;
      }

      i = *&v93[8 * v95];
    }

    v96 = (i - 1) & i;
    v168 = *(*(containerMap + 48) + ((v95 << 9) | (8 * __clz(__rbit64(i)))));
    if (!v168)
    {
      goto LABEL_80;
    }

LABEL_57:
    if ([v168 *(v33 + 3376)] == 2)
    {
      v170 = [(Client *)v168 machineID];
      v178 = v232;
      if (v170)
      {
        v179 = v170;
        v180 = sub_100216974();
        v182 = v181;
      }

      else
      {
        v180 = 0;
        v182 = 0xE000000000000000;
      }

      v233 = v96;
      if (*v178->endpoint && (sub_100217264(), sub_1002169C4(), v183 = sub_100217284(), v184 = -1 << v178[1]._TtCs12_SwiftObject_opaque[0], v185 = v183 & ~v184, ((*&v236->_TtCs12_SwiftObject_opaque[(v185 >> 3) & 0xFFFFFFFFFFFFFF8] >> v185) & 1) != 0))
      {
        v186 = ~v184;
        while (1)
        {
          v187 = (*v178[1].endpoint + 16 * v185);
          v171 = v187[1];
          v188 = *v187 == v180 && v171 == v182;
          if (v188 || (sub_1002171A4() & 1) != 0)
          {
            break;
          }

          v185 = (v185 + 1) & v186;
          if (((*&v236->_TtCs12_SwiftObject_opaque[(v185 >> 3) & 0xFFFFFFFFFFFFFF8] >> v185) & 1) == 0)
          {
            goto LABEL_70;
          }
        }

        v182, v171, v172, v173, v174, v175, v176, v177, v224, *(&v224 + 1), v225, v226, v227, SDWORD2(v227), v228, v229, v230, v231;
        v93 = v229;
        v33 = 0x100292000;
        v96 = v233;
      }

      else
      {
LABEL_70:
        v182, v171, v172, v173, v174, v175, v176, v177, v224, *(&v224 + 1), v225, v226, v227, SDWORD2(v227), v228, v229, v230, v231;
        if (qword_100297540 != -1)
        {
          swift_once();
        }

        v189 = sub_100216774();
        sub_100002648(v189, qword_10029E728);
        v190 = v168;
        v191 = sub_100216754();
        v192 = sub_100216C94();

        if (os_log_type_enabled(v191, v192))
        {
          v230 = containerMap;
          v193 = swift_slowAlloc();
          v226 = swift_slowAlloc();
          v237 = v226;
          *v193 = v227;
          v194 = [(Client *)v190 machineID];
          if (v194)
          {
            v195 = v194;
            v196 = sub_100216974();
            v198 = v197;
          }

          else
          {
            v196 = 0;
            v198 = 0;
          }

          v238 = v196;
          v239 = v198;
          sub_10001148C(&qword_10029D698, &unk_100226590);
          v199 = sub_100216994();
          v201 = v200;
          v202 = sub_100005FB0(v199, v200, &v237);
          v201, v203, v204, v205, v206, v207, v208, v209, v224, *(&v224 + 1), v225, v226, v227, SDWORD2(v227), v228, v229, v230, v231;
          *(v193 + 4) = v202;
          _os_log_impl(&_mh_execute_header, v191, v192, "Dropping knowledge of machineID %{public}s", v193, 0xCu);
          sub_100006128(v226, v210, v211, v212, v213, v214, v215, v216);

          v2 = v234;
          containerMap = v230;
        }

        else
        {
        }

        v93 = v229;
        v33 = 0x100292000;
        [*&v231[v2] removeMachinesObject:v190];
        v96 = v233;
      }
    }

    else
    {
    }
  }

  v169 = sub_100216F14();
  if (v169)
  {
    v237 = v169;
    type metadata accessor for MachineMO();
    swift_dynamicCast();
    v168 = v238;
    if (v238)
    {
      goto LABEL_57;
    }
  }

LABEL_80:
  sub_1001ACCA0(containerMap);
  v232, v217, v218, v219, v220, v221, v222, v223, v224, *(&v224 + 1), v225, v226, v227, SDWORD2(v227), v228, v229, v230, v231;
}

void sub_1001E6708(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Container.SemaphoreWrapper();
  swift_allocObject();
  v5 = v2;
  v6 = sub_10019C8E0(v5, 0xD00000000000001ELL, 0x800000010023E6F0);

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  v8 = qword_100297540;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029E728);
  v10 = sub_100216754();
  v11 = sub_100216C54();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Fetching allowed machine IDs", v12, 2u);
  }

  v13 = *&v5[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v14 = swift_allocObject();
  *(v14 + 16) = v5;
  *(v14 + 24) = sub_1001F2548;
  *(v14 + 32) = v7;
  v15 = swift_allocObject();
  *v15->endpoint = sub_1001F2554;
  *v15->containerMap = v14;
  v55[4] = sub_100056B30;
  v56 = v15;
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 1107296256;
  v55[2] = sub_100109050;
  v55[3] = &unk_100288E18;
  v16 = _Block_copy(v55);
  v17 = v56;
  v18 = v5;

  v17, v19, v20, v21, v22, v23, v24, v25;
  [v13 performBlockAndWait:v16];
  v7, v26, v27, v28, v29, v30, v31, v32;
  v6, v33, v34, v35, v36, v37, v38, v39;
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  v14, v41, v42, v43, v44, v45, v46, v47;
  v15, v48, v49, v50, v51, v52, v53, v54;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_1001E69D0()
{
  v0 = sub_100216774();
  sub_1000025E4(v0, qword_10029E728);
  sub_100002648(v0, qword_10029E728);
  return sub_100216764();
}

id sub_1001E6A4C(uint64_t a1)
{
  v2 = sub_100216384();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v5, v8);
  v11 = &v19 - v10;
  __chkstk_darwin(v9, v12);
  v14 = &v19 - v13;
  result = [v1 modified];
  if (result)
  {
    v16 = result;
    sub_100216344();

    (*(v3 + 32))(v14, v11, v2);
    sub_100216314();
    v17 = sub_100216354();
    v18 = *(v3 + 8);
    v18(v7, v2);
    v18(v14, v2);
    return (v17 == 1);
  }

  return result;
}

uint64_t sub_1001E6BF0()
{
  v1 = v0;
  v2 = sub_100216384();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v18 - v9;
  v11 = [v1 modified];
  if (!v11)
  {
    return 0x6E776F6E6B6E75;
  }

  v12 = v11;
  sub_100216344();

  (*(v3 + 32))(v10, v7, v2);
  v13 = [objc_allocWithZone(NSISO8601DateFormatter) init];
  isa = sub_1002162F4().super.isa;
  v15 = [v13 stringFromDate:isa];

  v16 = sub_100216974();
  (*(v3 + 8))(v10, v2);
  return v16;
}

unint64_t sub_1001E6DA8()
{
  v1 = v0;
  v2 = sub_10001148C(&qword_10029D778, &qword_1002265C8);
  __chkstk_darwin(v2 - 8, v3);
  v5 = v35 - v4;
  v6 = sub_100216384();
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v6, v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = v35 - v13;
  v15 = [v1 machineID];
  if (v15)
  {
    v16 = v15;
    sub_100216974();
    v18 = v17;
  }

  else
  {
    v18 = 0xE700000000000000;
  }

  result = [v1 status];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v20 = result;
    v21 = [v1 modified];
    if (v21)
    {
      v22 = v21;
      sub_100216344();

      v23 = *(v7 + 32);
      v23(v5, v11, v6);
      (*(v7 + 56))(v5, 0, 1, v6);
      v23(v14, v5, v6);
    }

    else
    {
      (*(v7 + 56))(v5, 1, 1, v6);
      sub_100216374();
      if ((*(v7 + 48))(v5, 1, v6) != 1)
      {
        sub_1000114D4(v5, &qword_10029D778, &qword_1002265C8);
      }
    }

    v24 = objc_allocWithZone(TPMachineID);
    v25 = sub_100216964();
    v18, v26, v27, v28, v29, v30, v31, v32, v35[0], v35[1], v35[2], v35[3], v35[4], v36, v37, v38, v39, v40;
    isa = sub_1002162F4().super.isa;
    v34 = [v24 initWithMachineID:v25 status:v20 modified:isa];

    (*(v7 + 8))(v14, v6);
    return v34;
  }

  return result;
}

uint64_t sub_1001E70A0(void *a1, uint64_t a2, void *a3, NSString a4, void *a5, NSString a6)
{
  v10 = kSecurityRTCEventNameMIDVanishedFromTDL;
  sub_10001148C(&unk_10029DA20, &unk_100226750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D600;
  *(inited + 32) = sub_100216974();
  *(inited + 40) = v12;
  v13 = *(v6 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDVanished);
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = v13;
  v14 = v10;
  v15 = sub_10001900C(inited);
  swift_setDeallocating();
  sub_1000114D4(inited + 32, &qword_100297CF0, &qword_10021D6F8);
  sub_1000561D0();
  swift_allocError();
  *v16 = xmmword_100226F70;
  *(v16 + 16) = 13;
  v17 = sub_100216144();
  v18 = sub_1001ADA38(v15);
  v15, v19, v20, v21, v22, v23, v24, v25, v41, v44, a1, a3, a5, v6, v54, v56, v58, v60;
  sub_1001F3558();
  v27 = v26;
  v28.super.isa = sub_1002168C4().super.isa;
  v18, v29, v30, v31, v32, v33, v34, v35, v42, v45, v47, v49, v51, v52, v55, v57, v59, v61;
  if (a2)
  {
    v36 = sub_100216964();
  }

  else
  {
    v36 = 0;
  }

  if (a4)
  {
    a4 = sub_100216964();
  }

  v37 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (a6)
  {
    a6 = sub_100216964();
  }

  LOBYTE(v43) = 1;
  v38 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:v28.super.isa altDSID:v36 flowID:a4 deviceSessionID:a6 eventName:v14 testsAreEnabled:v27 canSendMetrics:v43 category:v37];

  v39 = sub_100216144();
  [v38 sendMetricWithResult:0 error:v39];

  *(v53 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_sentMetric) = 1;
}

void sub_1001E731C(void *a1, NSString a2, void *a3, NSString a4, int a5, void *a6)
{
  if (qword_100297540 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029E728);
  v9 = sub_100216754();
  v10 = sub_100216C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "MID evicted! incoming trust loss", v11, 2u);
  }

  v12 = kSecurityRTCErrorDomain;
  sub_10001148C(&unk_10029DA20, &unk_100226750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D600;
  *(inited + 32) = sub_100216974();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v14;
  *(inited + 48) = 0xD00000000000001ELL;
  *(inited + 56) = 0x800000010023E730;
  v15 = v12;
  v16 = sub_10001900C(inited);
  swift_setDeallocating();
  sub_1000114D4(inited + 32, &qword_100297CF0, &qword_10021D6F8);
  v17 = objc_allocWithZone(NSError);
  isa = sub_1002168C4().super.isa;
  v16, v19, v20, v21, v22, v23, v24, v25, v56, v60, v63, a1, a3, a5, 1, 2, v78, a6;
  v26 = [v17 initWithDomain:v15 code:2 userInfo:isa];

  v27 = kSecurityRTCEventNameOctagonTrustLost;
  v28 = swift_initStackObject();
  *(v28 + 16) = v75;
  *(v28 + 32) = sub_100216974();
  *(v28 + 40) = v29;
  v30 = *(v85 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDEvicted);
  *(v28 + 72) = &type metadata for Bool;
  *(v28 + 48) = v30;
  v31 = v27;
  v32 = sub_10001900C(v28);
  swift_setDeallocating();
  sub_1000114D4(v28 + 32, &qword_100297CF0, &qword_10021D6F8);
  v33 = v26;
  v34 = sub_1001ADA38(v32);
  v32, v35, v36, v37, v38, v39, v40, v41, v57, v61, v64, v67, v70, v73, v75, *(&v75 + 1), v79, v82;
  sub_1001F3558();
  v43 = v42;
  v44.super.isa = sub_1002168C4().super.isa;
  v34, v45, v46, v47, v48, v49, v50, v51, v58, v62, v65, v68, v71, v74, v76, v77, v80, v83;
  if (a2)
  {
    a2 = sub_100216964();
  }

  if (a4)
  {
    a4 = sub_100216964();
  }

  v52 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v84)
  {
    v53 = sub_100216964();
  }

  else
  {
    v53 = 0;
  }

  LOBYTE(v59) = 1;
  v54 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:v44.super.isa altDSID:a2 flowID:a4 deviceSessionID:v53 eventName:v31 testsAreEnabled:v43 canSendMetrics:v59 category:v52];

  v55 = sub_100216144();
  [v54 sendMetricWithResult:1 error:v55];

  *(v85 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_sentMetric) = 1;
}

void sub_1001E7714(void *a1, NSString a2, void *a3, NSString a4, int a5, void *a6)
{
  if (qword_100297540 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029E728);
  v9 = sub_100216754();
  v10 = sub_100216C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "user initiated KO! incoming trust loss", v11, 2u);
  }

  v12 = kSecurityRTCErrorDomain;
  sub_10001148C(&unk_10029DA20, &unk_100226750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D600;
  *(inited + 32) = sub_100216974();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v14;
  *(inited + 48) = 0xD000000000000028;
  *(inited + 56) = 0x800000010023E750;
  v15 = v12;
  v16 = sub_10001900C(inited);
  swift_setDeallocating();
  sub_1000114D4(inited + 32, &qword_100297CF0, &qword_10021D6F8);
  v17 = objc_allocWithZone(NSError);
  isa = sub_1002168C4().super.isa;
  v16, v19, v20, v21, v22, v23, v24, v25, v56, v60, v63, a1, a3, a5, 1, 2, v78, a6;
  v26 = [v17 initWithDomain:v15 code:1 userInfo:isa];

  v27 = kSecurityRTCEventNameOctagonTrustLost;
  v28 = swift_initStackObject();
  *(v28 + 16) = v75;
  *(v28 + 32) = sub_100216974();
  *(v28 + 40) = v29;
  v30 = *(v85 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDUserInitiated);
  *(v28 + 72) = &type metadata for Bool;
  *(v28 + 48) = v30;
  v31 = v27;
  v32 = sub_10001900C(v28);
  swift_setDeallocating();
  sub_1000114D4(v28 + 32, &qword_100297CF0, &qword_10021D6F8);
  v33 = v26;
  v34 = sub_1001ADA38(v32);
  v32, v35, v36, v37, v38, v39, v40, v41, v57, v61, v64, v67, v70, v73, v75, *(&v75 + 1), v79, v82;
  sub_1001F3558();
  v43 = v42;
  v44.super.isa = sub_1002168C4().super.isa;
  v34, v45, v46, v47, v48, v49, v50, v51, v58, v62, v65, v68, v71, v74, v76, v77, v80, v83;
  if (a2)
  {
    a2 = sub_100216964();
  }

  if (a4)
  {
    a4 = sub_100216964();
  }

  v52 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v84)
  {
    v53 = sub_100216964();
  }

  else
  {
    v53 = 0;
  }

  LOBYTE(v59) = 1;
  v54 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:v44.super.isa altDSID:a2 flowID:a4 deviceSessionID:v53 eventName:v31 testsAreEnabled:v43 canSendMetrics:v59 category:v52];

  v55 = sub_100216144();
  [v54 sendMetricWithResult:1 error:v55];

  *(v85 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_sentMetric) = 1;
}

void sub_1001E7B0C(void *a1, NSString a2, void *a3, NSString a4, int a5, void *a6)
{
  if (qword_100297540 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029E728);
  v9 = sub_100216754();
  v10 = sub_100216C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "MID unknown reason! incoming trust loss", v11, 2u);
  }

  v12 = kSecurityRTCErrorDomain;
  sub_10001148C(&unk_10029DA20, &unk_100226750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D600;
  *(inited + 32) = sub_100216974();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v14;
  *(inited + 48) = 0xD000000000000028;
  *(inited + 56) = 0x800000010023E780;
  v15 = v12;
  v16 = sub_10001900C(inited);
  swift_setDeallocating();
  sub_1000114D4(inited + 32, &qword_100297CF0, &qword_10021D6F8);
  v17 = objc_allocWithZone(NSError);
  isa = sub_1002168C4().super.isa;
  v16, v19, v20, v21, v22, v23, v24, v25, v56, v60, v63, a1, a3, a5, 1, 2, v78, a6;
  v26 = [v17 initWithDomain:v15 code:3 userInfo:isa];

  v27 = kSecurityRTCEventNameOctagonTrustLost;
  v28 = swift_initStackObject();
  *(v28 + 16) = v75;
  *(v28 + 32) = sub_100216974();
  *(v28 + 40) = v29;
  v30 = *(v85 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDUnknownReason);
  *(v28 + 72) = &type metadata for Bool;
  *(v28 + 48) = v30;
  v31 = v27;
  v32 = sub_10001900C(v28);
  swift_setDeallocating();
  sub_1000114D4(v28 + 32, &qword_100297CF0, &qword_10021D6F8);
  v33 = v26;
  v34 = sub_1001ADA38(v32);
  v32, v35, v36, v37, v38, v39, v40, v41, v57, v61, v64, v67, v70, v73, v75, *(&v75 + 1), v79, v82;
  sub_1001F3558();
  v43 = v42;
  v44.super.isa = sub_1002168C4().super.isa;
  v34, v45, v46, v47, v48, v49, v50, v51, v58, v62, v65, v68, v71, v74, v76, v77, v80, v83;
  if (a2)
  {
    a2 = sub_100216964();
  }

  if (a4)
  {
    a4 = sub_100216964();
  }

  v52 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v84)
  {
    v53 = sub_100216964();
  }

  else
  {
    v53 = 0;
  }

  LOBYTE(v59) = 1;
  v54 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:v44.super.isa altDSID:a2 flowID:a4 deviceSessionID:v53 eventName:v31 testsAreEnabled:v43 canSendMetrics:v59 category:v52];

  v55 = sub_100216144();
  [v54 sendMetricWithResult:1 error:v55];

  *(v85 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_sentMetric) = 1;
}

void sub_1001E7F04(void *a1, NSString a2, void *a3, NSString a4, int a5, void *a6)
{
  if (qword_100297540 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029E728);
  v9 = sub_100216754();
  v10 = sub_100216C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "MID unknown! incoming trust loss", v11, 2u);
  }

  v12 = kSecurityRTCErrorDomain;
  sub_10001148C(&unk_10029DA20, &unk_100226750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D600;
  *(inited + 32) = sub_100216974();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v14;
  *(inited + 48) = 0xD000000000000024;
  *(inited + 56) = 0x800000010023E7B0;
  v15 = v12;
  v16 = sub_10001900C(inited);
  swift_setDeallocating();
  sub_1000114D4(inited + 32, &qword_100297CF0, &qword_10021D6F8);
  v17 = objc_allocWithZone(NSError);
  isa = sub_1002168C4().super.isa;
  v16, v19, v20, v21, v22, v23, v24, v25, v56, v60, v63, a1, a3, a5, 1, 2, v78, a6;
  v26 = [v17 initWithDomain:v15 code:0 userInfo:isa];

  v27 = kSecurityRTCEventNameOctagonTrustLost;
  v28 = swift_initStackObject();
  *(v28 + 16) = v75;
  *(v28 + 32) = sub_100216974();
  *(v28 + 40) = v29;
  v30 = *(v85 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDUnknown);
  *(v28 + 72) = &type metadata for Bool;
  *(v28 + 48) = v30;
  v31 = v27;
  v32 = sub_10001900C(v28);
  swift_setDeallocating();
  sub_1000114D4(v28 + 32, &qword_100297CF0, &qword_10021D6F8);
  v33 = v26;
  v34 = sub_1001ADA38(v32);
  v32, v35, v36, v37, v38, v39, v40, v41, v57, v61, v64, v67, v70, v73, v75, *(&v75 + 1), v79, v82;
  sub_1001F3558();
  v43 = v42;
  v44.super.isa = sub_1002168C4().super.isa;
  v34, v45, v46, v47, v48, v49, v50, v51, v58, v62, v65, v68, v71, v74, v76, v77, v80, v83;
  if (a2)
  {
    a2 = sub_100216964();
  }

  if (a4)
  {
    a4 = sub_100216964();
  }

  v52 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v84)
  {
    v53 = sub_100216964();
  }

  else
  {
    v53 = 0;
  }

  LOBYTE(v59) = 1;
  v54 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:v44.super.isa altDSID:a2 flowID:a4 deviceSessionID:v53 eventName:v31 testsAreEnabled:v43 canSendMetrics:v59 category:v52];

  v55 = sub_100216144();
  [v54 sendMetricWithResult:1 error:v55];

  *(v85 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_sentMetric) = 1;
}

void sub_1001E82FC(void *a1, NSString a2, void *a3, NSString a4, int a5, void *a6)
{
  if (qword_100297540 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029E728);
  v9 = sub_100216754();
  v10 = sub_100216C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "MID ghosted! incoming trust loss", v11, 2u);
  }

  v12 = kSecurityRTCErrorDomain;
  sub_10001148C(&unk_10029DA20, &unk_100226750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D600;
  *(inited + 32) = sub_100216974();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v14;
  *(inited + 48) = 0xD00000000000001ALL;
  *(inited + 56) = 0x800000010023E7E0;
  v15 = v12;
  v16 = sub_10001900C(inited);
  swift_setDeallocating();
  sub_1000114D4(inited + 32, &qword_100297CF0, &qword_10021D6F8);
  v17 = objc_allocWithZone(NSError);
  isa = sub_1002168C4().super.isa;
  v16, v19, v20, v21, v22, v23, v24, v25, v56, v60, v63, a1, a3, a5, 1, 2, v78, a6;
  v26 = [v17 initWithDomain:v15 code:4 userInfo:isa];

  v27 = kSecurityRTCEventNameOctagonTrustLost;
  v28 = swift_initStackObject();
  *(v28 + 16) = v75;
  *(v28 + 32) = sub_100216974();
  *(v28 + 40) = v29;
  v30 = *(v85 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDGhosted);
  *(v28 + 72) = &type metadata for Bool;
  *(v28 + 48) = v30;
  v31 = v27;
  v32 = sub_10001900C(v28);
  swift_setDeallocating();
  sub_1000114D4(v28 + 32, &qword_100297CF0, &qword_10021D6F8);
  v33 = v26;
  v34 = sub_1001ADA38(v32);
  v32, v35, v36, v37, v38, v39, v40, v41, v57, v61, v64, v67, v70, v73, v75, *(&v75 + 1), v79, v82;
  sub_1001F3558();
  v43 = v42;
  v44.super.isa = sub_1002168C4().super.isa;
  v34, v45, v46, v47, v48, v49, v50, v51, v58, v62, v65, v68, v71, v74, v76, v77, v80, v83;
  if (a2)
  {
    a2 = sub_100216964();
  }

  if (a4)
  {
    a4 = sub_100216964();
  }

  v52 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v84)
  {
    v53 = sub_100216964();
  }

  else
  {
    v53 = 0;
  }

  LOBYTE(v59) = 1;
  v54 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:v44.super.isa altDSID:a2 flowID:a4 deviceSessionID:v53 eventName:v31 testsAreEnabled:v43 canSendMetrics:v59 category:v52];

  v55 = sub_100216144();
  [v54 sendMetricWithResult:1 error:v55];

  *(v85 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_sentMetric) = 1;
}

uint64_t sub_1001E86F4(void *a1, uint64_t a2, uint64_t (*a3)(void *))
{
  if (qword_100297540 != -1)
  {
    swift_once();
  }

  v5 = sub_100216774();
  sub_100002648(v5, qword_10029E728);
  swift_errorRetain();
  v6 = sub_100216754();
  v7 = sub_100216C54();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v45 = v9;
    *v8 = 136446210;
    v10 = 0xE700000000000000;
    if (a1)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v52._countAndFlagsBits = sub_100216994();
      object = v52._object;
      sub_100216A14(v52);
      object, v12, v13, v14, v15, v16, v17, v18, a1, 0x203A726F727265, 0xE700000000000000, v45, v46, v47, v48, v49, v50, v51;

      v19 = v43;
      v10 = v44;
    }

    else
    {
      v19 = 0x73736563637573;
    }

    v20 = sub_100005FB0(v19, v10, &v45);
    v10, v21, v22, v23, v24, v25, v26, v27, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51;
    *(v8 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v7, "markTrustedDeviceListFetchFailed complete: %{public}s", v8, 0xCu);
    sub_100006128(v9, v28, v29, v30, v31, v32, v33, v34);
  }

  sub_10010EEEC(0xD000000000000028, 0x800000010023DAA0, v35, v36, v37, v38, v39, v40);
  return a3(a1);
}

uint64_t sub_1001E8910(uint64_t a1, uint64_t (*a2)(void *))
{
  if (qword_100297540 != -1)
  {
    swift_once();
  }

  v4 = sub_100216774();
  sub_100002648(v4, qword_10029E728);
  v5 = sub_100216754();
  v6 = sub_100216C54();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Setting honorIDMSListChanges to NO", v7, 2u);
  }

  v8 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO);
  v9 = sub_100216964();
  [v8 setHonorIDMSListChanges:v9];

  v10 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
  v38[0] = 0;
  if ([v10 save:v38])
  {
    v11 = v38[0];
    return a2(0);
  }

  else
  {
    v13 = v38[0];
    v14 = sub_100216154();

    swift_willThrow();
    swift_errorRetain();
    v15 = sub_100216754();
    v16 = sub_100216C74();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v38[0] = v18;
      *v17 = 136446210;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v19 = sub_100216994();
      v21 = v20;
      v22 = sub_100005FB0(v19, v20, v38);
      v21, v23, v24, v25, v26, v27, v28, v29, v14, v37, v38[0], v38[1], v38[2], v39, v40, v41, v42, v43;
      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "Error marking machine ID list as unusable: %{public}s", v17, 0xCu);
      sub_100006128(v18, v30, v31, v32, v33, v34, v35, v36);
    }

    swift_errorRetain();
    a2(v14);
  }
}

uint64_t sub_1001E8C08(char a1, void *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (qword_100297540 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029E728);
  swift_errorRetain();
  v8 = sub_100216754();
  v9 = sub_100216C94();

  if (os_log_type_enabled(v8, v9))
  {
    v45 = a4;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v50 = v11;
    *v10 = 136446210;
    v12 = 0xE700000000000000;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v55._countAndFlagsBits = sub_100216994();
      object = v55._object;
      sub_100216A14(v55);
      object, v14, v15, v16, v17, v18, v19, v20, v44, v45, a2, 0x203A726F727265, 0xE700000000000000, v50, v51, v52, v53, v54;

      v21 = v48;
      v12 = v49;
    }

    else
    {
      v21 = 0x73736563637573;
    }

    v28 = sub_100005FB0(v21, v12, &v50);
    v12, v29, v30, v31, v32, v33, v34, v35, v44, v45, v47, v48, v49, v50, v51, v52, v53, v54;
    *(v10 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v8, v9, "setAllowedMachineIDs complete: %{public}s", v10, 0xCu);
    sub_100006128(v11, v36, v37, v38, v39, v40, v41, v42);

    a4 = v46;
  }

  else
  {
  }

  sub_10010EEEC(0xD0000000000000E7, 0x800000010023DAF0, v22, v23, v24, v25, v26, v27);
  return a4(a1 & 1, a2);
}

void sub_1001E8E3C(int64_t a1, _TtC18TrustedPeersHelper6Client *a2, _TtC18TrustedPeersHelper6Client *a3, _TtC18TrustedPeersHelper6Client *a4, _TtC18TrustedPeersHelper6Client *a5, void *a6, char *a7, void *a8, void *a9, void *a10, char *a11, void *a12, void *a13, id a14, uint64_t a15, unsigned __int8 a16, void *a17, void *a18, void *a19, void *a20)
{
  v812 = a8;
  v818 = a7;
  v805 = a6;
  v823 = a2;
  v809 = 0;
  v803 = sub_100216384();
  v802 = *(v803 - 1);
  __chkstk_darwin(v803, v24);
  v801 = &v797 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v841 = 0;
  v842 = 0;
  v833 = 0;
  v26 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v27 = [*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
  p_cache = CKKSSOSSelfPeer.cache;
  v819 = a1;
  v820 = a3;
  v821 = a5;
  v817 = v26;
  if (!v27)
  {
    LODWORD(v811) = 0;
    v797 = 0;
    v810 = 0;
    goto LABEL_18;
  }

  v35 = v27;
  v36 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v37 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v836 = 0;
  v38 = [v37 peerWithID:v35 error:&v836];
  v39 = v38;
  if (v836)
  {
    v40 = v836;

    swift_willThrow();
    if (qword_100297540 != -1)
    {
      swift_once();
    }

    v41 = sub_100216774();
    sub_100002648(v41, qword_10029E728);
    v42 = v40;
    v43 = sub_100216754();
    v44 = sub_100216C74();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v836 = v46;
      *v45 = 136446210;
      v832 = v42;
      v47 = v42;
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v48 = sub_100216994();
      v50 = v49;
      v51 = sub_100005FB0(v48, v49, &v836);
      v52 = v50;
      a5 = v821;
      v52, v53, v54, v55, v56, v57, v58, v59, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
      *(v45 + 4) = v51;
      a1 = v819;
      _os_log_impl(&_mh_execute_header, v43, v44, "Error getting ego peer from model: %{public}s", v45, 0xCu);
      sub_100006128(v46, v60, v61, v62, v63, v64, v65, v66);
      p_cache = 0x100297000;
    }

    else
    {
    }

    LODWORD(v811) = 0;
    v797 = 0;
    v810 = 0;
LABEL_16:
    v87 = &v835;
LABEL_17:
    *(v87 - 32) = 0;
    a3 = v820;
    goto LABEL_18;
  }

  if (!v38)
  {
    if (qword_100297540 != -1)
    {
      swift_once();
    }

    v353 = sub_100216774();
    sub_100002648(v353, qword_10029E728);
    v354 = sub_100216754();
    v355 = sub_100216C74();
    if (os_log_type_enabled(v354, v355))
    {
      v356 = swift_slowAlloc();
      *v356 = 0;
      _os_log_impl(&_mh_execute_header, v354, v355, "Couldn't find ego peer in model", v356, 2u);
    }

    LODWORD(v811) = 0;
    v797 = 0;
    v87 = &v836;
    goto LABEL_17;
  }

  v67 = v38;
  v68 = [v67 permanentInfo];
  v69 = [v68 machineID];

  v70 = sub_100216974();
  v72 = v71;

  v797 = v70;
  v841 = v70;
  v842 = v72;
  v810 = v72;
  v73 = *(a1 + v36);
  v836 = 0;
  v74 = v73;
  v75 = [v74 statusOfPeerWithID:v35 error:&v836];

  v76 = v836;
  if (v836)
  {
    swift_willThrow();
    v77 = qword_100297540;
    v78 = v76;
    if (v77 != -1)
    {
      swift_once();
    }

    v79 = sub_100216774();
    sub_100002648(v79, qword_10029E728);
    v80 = v78;
    v81 = sub_100216754();
    v82 = sub_100216C74();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v83 = 138543362;
      v85 = v80;
      v86 = _swift_stdlib_bridgeErrorToNSError();
      *(v83 + 4) = v86;
      *v84 = v86;
      _os_log_impl(&_mh_execute_header, v81, v82, "error calling statusOfPeer: %{public}@", v83, 0xCu);
      sub_1000114D4(v84, &qword_10029D580, &unk_10021CCC0);
      a5 = v821;

      p_cache = 0x100297000;
    }

    else
    {
    }

    LODWORD(v811) = 0;
    goto LABEL_16;
  }

  v795 = 0;
  if (v75 == 4)
  {
    a3 = v820;
  }

  else
  {
    a3 = v820;
    if (v75 != 32)
    {
      v795 = v75 != 128;
    }
  }

  LODWORD(v811) = v795;
  v833 = v795;
LABEL_18:
  v832 = &_swiftEmptySetSingleton;
  if (v823)
  {

    sub_100111148(v88, v89, v90, v91, v92, v93, v94, v95);
  }

  if (a3)
  {

    sub_100111148(v96, v97, v98, v99, v100, v101, v102, v103);
  }

  if (a4)
  {

    sub_100111148(v104, v105, v106, v107, v108, v109, v110, v111);
  }

  v112 = *v832->endpoint;
  v822 = a4;
  v806 = v832;
  if (!v112)
  {
    v807 = 0;
    v115 = 0xE000000000000000;
    goto LABEL_30;
  }

  sub_1001F31D8(v832);
  v807 = v113;
  v115 = v114;
  v116 = *(p_cache + 1344);

  if (v116 == -1)
  {
    goto LABEL_26;
  }

  while (2)
  {
    swift_once();
LABEL_26:
    v117 = sub_100216774();
    sub_100002648(v117, qword_10029E728);

    v118 = sub_100216754();
    v119 = sub_100216C94();
    v115, v120, v121, v122, v123, v124, v125, v126, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
    if (os_log_type_enabled(v118, v119))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      *v127 = 136446210;
      v835 = v128;
      v836 = v807;
      v837 = v115;
      sub_10001148C(&qword_10029D698, &unk_100226590);
      v129 = sub_100216994();
      v131 = v130;
      v132 = sub_100005FB0(v129, v130, &v835);
      v131, v133, v134, v135, v136, v137, v138, v139, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
      *(v127 + 4) = v132;
      _os_log_impl(&_mh_execute_header, v118, v119, "sha256 of deleted list: %{public}s", v127, 0xCu);
      sub_100006128(v128, v140, v141, v142, v143, v144, v145, v146);
      a5 = v821;
    }

    else
    {

      v115, v147, v148, v149, v150, v151, v152, v153, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
    }

LABEL_30:
    v154 = a15;
    v814 = a12;
    v813 = a10;
    if (*a5->endpoint)
    {
      sub_1001F31D8(a5);
      v156 = v155;
      v158 = v157;
      v159 = *(p_cache + 1344);

      if (v159 != -1)
      {
        swift_once();
      }

      v160 = sub_100216774();
      sub_100002648(v160, qword_10029E728);

      v161 = sub_100216754();
      v162 = sub_100216C94();
      v158, v163, v164, v165, v166, v167, v168, v169, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
      if (os_log_type_enabled(v161, v162))
      {
        v170 = swift_slowAlloc();
        v171 = swift_slowAlloc();
        v835 = v171;
        v836 = v156;
        *v170 = 136446210;
        v837 = v158;
        sub_10001148C(&qword_10029D698, &unk_100226590);
        v172 = sub_100216994();
        v174 = v173;
        v175 = sub_100005FB0(v172, v173, &v835);
        v176 = v174;
        a1 = v819;
        v176, v177, v178, v179, v180, v181, v182, v183, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
        *(v170 + 4) = v175;
        a5 = v821;
        _os_log_impl(&_mh_execute_header, v161, v162, "sha256 of allowed list: %{public}s", v170, 0xCu);
        sub_100006128(v171, v184, v185, v186, v187, v188, v189, v190);

        v154 = a15;
      }

      else
      {

        v158, v191, v192, v193, v194, v195, v196, v197, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
      }
    }

    else
    {
      v156 = 0;
      v158 = 0xE000000000000000;
    }

    v198 = v818;
    v816 = a13;
    v808 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_testHashMismatchDetected;
    *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_testHashMismatchDetected) = 0;
    v815 = a9;
    v818 = a11;
    if (!v198)
    {
      v158, 0, v28, v29, v30, v31, v32, v33, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
LABEL_43:
      v214 = kSecurityRTCEventNameAllowedMIDHashMismatch;
      sub_1001F3558();
      v216 = v215;
      v217 = a1;
      if (v815)
      {
        v218 = sub_100216964();
      }

      else
      {
        v218 = 0;
      }

      v219 = v816;
      v220 = v154;
      if (a11)
      {
        v221 = sub_100216964();
      }

      else
      {
        v221 = 0;
      }

      v222 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
      if (v219)
      {
        v219 = sub_100216964();
      }

      LOBYTE(v796) = 1;
      v223 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:0 altDSID:v218 flowID:v221 deviceSessionID:v219 eventName:v214 testsAreEnabled:v216 canSendMetrics:v796 category:v222];

      sub_1000561D0();
      swift_allocError();
      *v224 = xmmword_100226F80;
      *(v224 + 16) = 13;
      v225 = sub_100216144();

      [v223 sendMetricWithResult:0 error:v225];

      v217[v808] = 1;
      v154 = v220;
      a1 = v217;
      a5 = v821;
      goto LABEL_52;
    }

    if (v156 == v805 && v158 == v198)
    {
      v158, v198, v28, v29, v30, v31, v32, v33, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
      goto LABEL_52;
    }

    v206 = sub_1002171A4();
    v158, v207, v208, v209, v210, v211, v212, v213, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
    if ((v206 & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_52:
    v804 = a20;
    v805 = a19;
    v798 = a17;
    v226 = v822;
    if (!v154)
    {
      v115, v199, v200, v201, v202, v203, v204, v205, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
      goto LABEL_58;
    }

    if (v807 != a14 || v115 != v154)
    {
      v227 = sub_1002171A4();
      v115, v228, v229, v230, v231, v232, v233, v234, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
      if (v227)
      {
        goto LABEL_68;
      }

LABEL_58:
      v235 = kSecurityRTCEventNameDeletedMIDHashMismatch;
      sub_1001F3558();
      v237 = v236;
      if (v815)
      {
        v238 = sub_100216964();
      }

      else
      {
        v238 = 0;
      }

      if (v818)
      {
        v239 = sub_100216964();
      }

      else
      {
        v239 = 0;
      }

      v240 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
      if (v816)
      {
        v241 = sub_100216964();
      }

      else
      {
        v241 = 0;
      }

      LOBYTE(v796) = 1;
      v242 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:0 altDSID:v238 flowID:v239 deviceSessionID:v241 eventName:v235 testsAreEnabled:v237 canSendMetrics:v796 category:v240];

      sub_1000561D0();
      swift_allocError();
      *v243 = xmmword_100226F90;
      *(v243 + 16) = 13;
      v244 = sub_100216144();

      [v242 sendMetricWithResult:0 error:v244];

      *(a1 + v808) = 1;
      goto LABEL_68;
    }

    v115, v199, v807, v201, v202, v203, v204, v205, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
LABEL_68:
    v800 = a18;
    LODWORD(v807) = a16;
    sub_1001F3558();
    LODWORD(v799) = v245;
    containerMap = a5[1].containerMap;
    v247 = 1 << a5[1]._TtCs12_SwiftObject_opaque[0];
    if (v247 < 64)
    {
      v248 = ~(-1 << v247);
    }

    else
    {
      v248 = -1;
    }

    v249 = v248 & *a5[1].containerMap;
    v115 = (v247 + 63) >> 6;
    p_cache = v823[1].containerMap;
    a5 = (v226 + 56);

    a1 = 0;
    while (1)
    {
      if (!v249)
      {
        while (1)
        {
          v257 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
            goto LABEL_235;
          }

          if (v257 >= v115)
          {
            v821, v250, v251, v252, v253, v254, v255, v256;
            HIDWORD(v799) = 0;
            v282 = v819;
            v283 = v817;
            v284 = v823;
            goto LABEL_115;
          }

          v249 = *&containerMap[8 * v257];
          ++a1;
          if (v249)
          {
            a1 = v257;
            break;
          }
        }
      }

      v258 = (*v821[1].endpoint + ((a1 << 10) | (16 * __clz(__rbit64(v249)))));
      v260 = *v258;
      v259 = v258[1];
      v261 = v823;
      if (v823 && *v823->endpoint)
      {
        sub_100217264();

        sub_1002169C4();
        v262 = sub_100217284();
        v270 = -1 << v261[1]._TtCs12_SwiftObject_opaque[0];
        v271 = v262 & ~v270;
        if ((*(p_cache + ((v271 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v271))
        {
          v272 = ~v270;
          while (1)
          {
            v273 = (*v823[1].endpoint + 16 * v271);
            v263 = v273[1];
            v274 = *v273 == v260 && v263 == v259;
            if (v274 || (sub_1002171A4() & 1) != 0)
            {
              break;
            }

            v271 = (v271 + 1) & v272;
            if (((*(p_cache + ((v271 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v271) & 1) == 0)
            {
              goto LABEL_90;
            }
          }

LABEL_104:
          v259, v263, v264, v265, v266, v267, v268, v269, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
          v821, v285, v286, v287, v288, v289, v290, v291;
          goto LABEL_106;
        }
      }

      else
      {
      }

LABEL_90:
      if (v820)
      {
        v836 = v820;
        v835 = v821;
        sub_10001148C(&qword_10029E740, &qword_100226FB0);
        sub_1001AC36C(&qword_10029E748, &qword_10029E740, &qword_100226FB0, &protocol conformance descriptor for Set<A>);
        if (sub_100216C24())
        {
          goto LABEL_104;
        }
      }

      v275 = v822;
      if (v822)
      {
        if (*v822->endpoint)
        {
          sub_100217264();
          sub_1002169C4();
          v276 = sub_100217284();
          v277 = -1 << v275[1]._TtCs12_SwiftObject_opaque[0];
          v278 = v276 & ~v277;
          if ((*&a5->_TtCs12_SwiftObject_opaque[(v278 >> 3) & 0xFFFFFFFFFFFFFF8] >> v278))
          {
            break;
          }
        }
      }

LABEL_72:
      v249 &= v249 - 1;
      v259, v263, v264, v265, v266, v267, v268, v269, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
      v226 = v822;
    }

    v279 = ~v277;
    while (1)
    {
      v280 = (*v822[1].endpoint + 16 * v278);
      v263 = v280[1];
      v281 = *v280 == v260 && v263 == v259;
      if (v281 || (sub_1002171A4() & 1) != 0)
      {
        break;
      }

      v278 = (v278 + 1) & v279;
      if (((*&a5->_TtCs12_SwiftObject_opaque[(v278 >> 3) & 0xFFFFFFFFFFFFFF8] >> v278) & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    v821, v263, v264, v265, v266, v267, v268, v269;
    v259, v292, v293, v294, v295, v296, v297, v298, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
LABEL_106:
    v299 = kSecurityRTCEventNameDuplicateMachineID;
    v282 = v819;
    v283 = v817;
    v284 = v823;
    v226 = v822;
    v300 = v818;
    v301 = v815;
    if (v815)
    {
      v302 = kSecurityRTCEventNameDuplicateMachineID;
      v301 = sub_100216964();
      if (v300)
      {
        goto LABEL_108;
      }

LABEL_110:
      v303 = 0;
    }

    else
    {
      v304 = kSecurityRTCEventNameDuplicateMachineID;
      if (!v300)
      {
        goto LABEL_110;
      }

LABEL_108:
      v303 = sub_100216964();
    }

    v305 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
    if (v816)
    {
      v306 = sub_100216964();
    }

    else
    {
      v306 = 0;
    }

    v307 = objc_allocWithZone(AAFAnalyticsEventSecurity);
    HIDWORD(v799) = 1;
    LOBYTE(v796) = 1;
    v308 = [v307 initWithKeychainCircleMetrics:0 altDSID:v301 flowID:v303 deviceSessionID:v306 eventName:v299 testsAreEnabled:v799 canSendMetrics:v796 category:v305];

    sub_1000561D0();
    swift_allocError();
    *v309 = xmmword_100226FA0;
    *(v309 + 16) = 13;
    v310 = sub_100216144();

    [v308 sendMetricWithResult:0 error:v310];

LABEL_115:
    if (v811)
    {
      v311 = v810;
      if (v810)
      {
        sub_1001F3558();
        if (sub_1001F2E2C(v797, v311, v821, v284, v820, v226))
        {
          if (qword_100297540 != -1)
          {
            swift_once();
          }

          v312 = sub_100216774();
          sub_100002648(v312, qword_10029E728);
          v313 = sub_100216754();
          v314 = sub_100216C54();
          if (os_log_type_enabled(v313, v314))
          {
            v315 = swift_slowAlloc();
            *v315 = 0;
            _os_log_impl(&_mh_execute_header, v313, v314, "MID rolled! incoming trust loss", v315, 2u);
          }

          v316 = kSecurityRTCErrorDomain;
          sub_10001148C(&unk_10029DA20, &unk_100226750);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10021D600;
          *(inited + 32) = sub_100216974();
          *(inited + 72) = &type metadata for String;
          *(inited + 40) = v318;
          *(inited + 48) = 0xD00000000000001ALL;
          *(inited + 56) = 0x800000010023E710;
          v319 = v316;
          v320 = sub_10001900C(inited);
          swift_setDeallocating();
          sub_1000114D4(inited + 32, &qword_100297CF0, &qword_10021D6F8);
          v321 = objc_allocWithZone(NSError);
          isa = sub_1002168C4().super.isa;
          v320, v323, v324, v325, v326, v327, v328, v329, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
          v330 = [v321 initWithDomain:v319 code:5 userInfo:isa];

          v282[OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDRolled] = 1;
          v331 = kSecurityRTCEventNameOctagonTrustLost;
          v332 = sub_10001900C(_swiftEmptyArrayStorage);
          v333 = v330;
          v334 = sub_1001ADA38(v332);
          v332, v335, v336, v337, v338, v339, v340, v341, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
          sub_1001F3558();
          v343 = v342;
          v344.super.isa = sub_1002168C4().super.isa;
          v334, v345, v346, v347, v348, v349, v350, v351, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
          if (v815)
          {
            v352 = sub_100216964();
          }

          else
          {
            v352 = 0;
          }

          if (v818)
          {
            v357 = sub_100216964();
          }

          else
          {
            v357 = 0;
          }

          v358 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
          if (v816)
          {
            v359 = sub_100216964();
          }

          else
          {
            v359 = 0;
          }

          LOBYTE(v796) = 1;
          v360 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:v344.super.isa altDSID:v352 flowID:v357 deviceSessionID:v359 eventName:v331 testsAreEnabled:v343 canSendMetrics:v796 category:v358];

          v361 = sub_100216144();
          [v360 sendMetricWithResult:1 error:v361];

          v282[OBJC_IVAR____TtC18TrustedPeersHelper9Container_sentMetric] = 1;
          v283 = v817;
        }
      }
    }

    v811 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_midVanishedFromTDL;
    v282[OBJC_IVAR____TtC18TrustedPeersHelper9Container_midVanishedFromTDL] = 0;
    v282[OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDVanished] = 0;
    v831 = 0;
    v830 = 0;
    v829 = 0;
    v828 = 0;
    v827 = 0;
    v826 = 0;
    if (v807)
    {
      v362 = 0xE300000000000000;
    }

    else
    {
      v362 = 0xE200000000000000;
    }

    v363 = *&v282[v283];
    v364 = sub_100216964();
    v362, v365, v366, v367, v368, v369, v370, v371, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
    [v363 setHonorIDMSListChanges:v364];

    v372 = [*&v282[v283] machines];
    if (v372)
    {
      v373 = v372;
      v836 = 0;
      type metadata accessor for MachineMO();
      sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO, &protocol conformance descriptor for NSObject);
      sub_100216BA4();

      p_cache = v836;
      if (v836)
      {
      }

      else
      {
        p_cache = &_swiftEmptySetSingleton;
      }
    }

    else
    {
      p_cache = &_swiftEmptySetSingleton;
    }

    sub_1001E3B80(p_cache);
    v375 = v374;
    v809 = sub_10019C848(v374);
    v375, v376, v377, v378, v379, v380, v381, v382, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
    if ((p_cache & 0xC000000000000001) != 0)
    {

      v383 = v282;

      sub_100216E84();
      type metadata accessor for MachineMO();
      sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO, &protocol conformance descriptor for NSObject);
      sub_100216C04();
      v115 = v836;
      a5 = v837;
      v384 = v838;
      a1 = v839;
      v385 = v840;
    }

    else
    {
      v386 = -1 << *(p_cache + 32);
      a5 = (p_cache + 56);
      v387 = ~v386;
      v388 = -v386;
      if (v388 < 64)
      {
        v389 = ~(-1 << v388);
      }

      else
      {
        v389 = -1;
      }

      v385 = v389 & *(p_cache + 56);

      v390 = v282;

      v384 = v387;
      a1 = 0;
      v115 = p_cache;
    }

    v807 = v384;
    v391 = (v384 + 64) >> 6;
    if (v115 < 0)
    {
      while (1)
      {
        v397 = sub_100216F14();
        if (!v397)
        {
          break;
        }

        v824 = v397;
        type metadata accessor for MachineMO();
        swift_dynamicCast();
        v396 = v834;
        v394 = a1;
        v395 = v385;
        if (!v834)
        {
          break;
        }

LABEL_160:
        v834 = v396;
        sub_1001EB6A4(&v834, v821, &v826, v823, &v833, &v841, v819, &v830, v820, &v831, v822, &v829, &v827, &v828);

        a1 = v394;
        v385 = v395;
        if ((v115 & 0x8000000000000000) == 0)
        {
          goto LABEL_152;
        }
      }
    }

    else
    {
LABEL_152:
      v392 = a1;
      v393 = v385;
      v394 = a1;
      if (!v385)
      {
        while (1)
        {
          v394 = (v392 + 1);
          if (__OFADD__(v392, 1))
          {
            break;
          }

          if (v394 >= v391)
          {
            goto LABEL_162;
          }

          v393 = *&a5->_TtCs12_SwiftObject_opaque[8 * v394];
          ++v392;
          if (v393)
          {
            goto LABEL_156;
          }
        }

        __break(1u);
LABEL_235:
        __break(1u);
        continue;
      }

LABEL_156:
      v395 = (v393 - 1) & v393;
      v396 = *(*(v115 + 48) + ((v394 << 9) | (8 * __clz(__rbit64(v393)))));
      if (v396)
      {
        goto LABEL_160;
      }
    }

    break;
  }

LABEL_162:
  sub_1001ACCA0(v115);
  p_cache, v398, v399, v400, v401, v402, v403, v404, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
  v405 = v821;
  v821, v406, v407, v408, v409, v410, v411, v412, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
  v413 = v823;
  v823, v414, v415, v416, v417, v418, v419, v420, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
  v421 = v819;

  v820, v422, v423, v424, v425, v426, v427, v428, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
  v429 = v822;
  v822, v430, v431, v432, v433, v434, v435, v436, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
  v437 = v817;
  v438 = [*&v421[v817] machines];
  v439 = &_swiftEmptySetSingleton;
  if (v438)
  {
    v440 = v438;
    v834 = 0;
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO, &protocol conformance descriptor for NSObject);
    sub_100216BA4();

    if (v834)
    {
      v439 = v834;
    }
  }

  p_cache, v441, v442, v443, v444, v445, v446, v447, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
  v835 = v439;
  sub_1001E3B80(v439);
  v449 = v448;
  v439, v450, v451, v452, v453, v454, v455, v456, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
  v457 = sub_10019C848(v449);
  v809, v458, v459, v460, v461, v462, v463, v464, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
  v449, v465, v466, v467, v468, v469, v470, v471, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
  v825 = v457;
  v472 = v421;
  sub_1001F07C8(v405, &v825, v472, &v826, &v835, 1, "Newly trusted machine ID: %{public}s");

  v473 = [*&v421[v437] machines];
  v474 = &_swiftEmptySetSingleton;
  if (v473)
  {
    v475 = v473;
    v834 = 0;
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO, &protocol conformance descriptor for NSObject);
    sub_100216BA4();

    if (v834)
    {
      v474 = v834;
    }
  }

  v476 = v835;

  v476, v477, v478, v479, v480, v481, v482, v483, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
  v835 = v474;
  sub_1001E3B80(v474);
  v485 = v484;
  v474, v486, v487, v488, v489, v490, v491, v492, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
  v493 = sub_10019C848(v485);
  v457, v494, v495, v496, v497, v498, v499, v500, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
  v485, v501, v502, v503, v504, v505, v506, v507, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
  v825 = v493;
  if (v413)
  {
    v508 = v472;
    sub_1001F0144(v413, &v825, v508, &v826, &v835, &v833, &v841, &v830);
  }

  v509 = [*&v421[v437] machines];
  v510 = &_swiftEmptySetSingleton;
  if (v509)
  {
    v511 = v509;
    v834 = 0;
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO, &protocol conformance descriptor for NSObject);
    sub_100216BA4();

    if (v834)
    {
      v510 = v834;
    }
  }

  v512 = v835;

  v512, v513, v514, v515, v516, v517, v518, v519, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
  v835 = v510;
  sub_1001E3B80(v510);
  v521 = v520;
  v510, v522, v523, v524, v525, v526, v527, v528, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
  v529 = sub_10019C848(v521);
  v493, v530, v531, v532, v533, v534, v535, v536, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
  v521, v537, v538, v539, v540, v541, v542, v543, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
  v825 = v529;
  v544 = v820;
  if (v820)
  {
    v545 = v472;
    sub_1001F07C8(v544, &v825, v545, &v826, &v835, 3, "Newly evicted machine ID: %{public}s");
  }

  v546 = [*&v421[v437] machines];
  v547 = &_swiftEmptySetSingleton;
  if (v546)
  {
    v548 = v546;
    v834 = 0;
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO, &protocol conformance descriptor for NSObject);
    sub_100216BA4();

    if (v834)
    {
      v547 = v834;
    }
  }

  v549 = v835;

  v549, v550, v551, v552, v553, v554, v555, v556, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
  v835 = v547;
  sub_1001E3B80(v547);
  v558 = v557;
  v547, v559, v560, v561, v562, v563, v564, v565, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
  v566 = sub_10019C848(v558);
  v529, v567, v568, v569, v570, v571, v572, v573, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
  v558, v574, v575, v576, v577, v578, v579, v580, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
  v825 = v566;
  if (v429)
  {
    v581 = v472;
    sub_1001F07C8(v429, &v825, v581, &v826, &v835, 4, "Newly removed with unknown reason machine ID: %{public}s");
  }

  v582 = [*&v421[v437] machines];
  v583 = &_swiftEmptySetSingleton;
  if (v582)
  {
    v584 = v582;
    v834 = 0;
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO, &protocol conformance descriptor for NSObject);
    sub_100216BA4();

    if (v834)
    {
      v583 = v834;
    }
  }

  v585 = v835;

  v585, v586, v587, v588, v589, v590, v591, v592, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
  sub_1001E3B80(v583);
  v594 = v593;
  v595 = sub_10019C848(v593);
  v566, v596, v597, v598, v599, v600, v601, v602, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
  v594, v603, v604, v605, v606, v607, v608, v609, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
  v825 = v595;
  v610 = sub_1001F2390();
  v583, v611, v612, v613, v614, v615, v616, v617, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
  if (v610)
  {
    v618 = *&v472[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
    v834 = 0;
    v619 = [v618 allMachineIDsWithError:&v834];
    v620 = v834;
    if (!v619)
    {
      v750 = v834;
      v806, v751, v752, v753, v754, v755, v756, v757, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
      v728 = sub_100216154();

      swift_willThrow();
      v583, v758, v759, v760, v761, v762, v763, v764, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
      v595, v765, v766, v767, v768, v769, v770, v771, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
      goto LABEL_222;
    }

    v809 = v595;
    v621 = v619;
    v622 = sub_100216BB4();
    v623 = v620;

    v624 = v820;

    v625 = v821;

    v626 = v472;
    sub_1001F0D4C(v622, &v825, v625, v624, v429, v413, v626, &v826);
    v627 = v622;
    v421 = v819;
    v627, v628, v629, v630, v631, v632, v633, v634, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
    v625, v635, v636, v637, v638, v639, v640, v641, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
    v624, v642, v643, v644, v645, v646, v647, v648, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
    v429, v649, v650, v651, v652, v653, v654, v655, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
    v413, v656, v657, v658, v659, v660, v661, v662, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
    v663 = v814;
    v664 = v813;
    v665 = v816;
  }

  else
  {
    v809 = v595;
    if (qword_100297540 != -1)
    {
      swift_once();
    }

    v666 = sub_100216774();
    sub_100002648(v666, qword_10029E728);
    v626 = sub_100216754();
    v667 = sub_100216C94();
    v668 = os_log_type_enabled(v626, v667);
    v663 = v814;
    v664 = v813;
    v665 = v816;
    if (v668)
    {
      v669 = swift_slowAlloc();
      *v669 = 0;
      _os_log_impl(&_mh_execute_header, v626, v667, "Believe we're in a demo account, not enforcing IDMS list", v669, 2u);
    }
  }

  v670 = *&v421[v437];
  v671 = v800;
  if (v800)
  {
    v672 = v670;
    v671 = sub_100216964();
  }

  else
  {
    v673 = v670;
  }

  [v670 setIdmsTrustedDevicesVersion:v671];

  v674 = *&v421[v437];
  v675 = v801;
  sub_100216374();
  v676 = sub_1002162F4().super.isa;
  (*(v802 + 8))(v675, v803);
  [v674 setIdmsTrustedDeviceListFetchDate:v676];

  v677 = *&v421[v437];
  v678 = objc_allocWithZone(NSSet);
  v679 = v677;
  v680 = [v678 init];
  [v679 setAllowedMachineIDs:v680];

  v681 = v812;
  v682 = v815;
  if (v421[v811] == 1)
  {
    sub_1001E70A0(v812, v815, v664, v818, v663, v665);
  }

  if (v831)
  {
    sub_1001E731C(v681, v682, v664, v818, v663, v665);
  }

  if (v830 == 1)
  {
    sub_1001E7714(v681, v682, v664, v818, v663, v665);
  }

  if (v829)
  {
    sub_1001E7B0C(v681, v682, v664, v818, v663, v665);
  }

  if (v828 == 1)
  {
    sub_1001E7F04(v681, v682, v664, v818, v663, v665);
  }

  if (v827)
  {
    sub_1001E82FC(v681, v682, v664, v818, v663, v665);
  }

  v683 = kSecurityRTCEventNameTDLProcessingSuccess;
  sub_1001F3558();
  v685 = v684;
  if (v682)
  {
    v686 = sub_100216964();
  }

  else
  {
    v686 = 0;
  }

  if (v818)
  {
    v687 = sub_100216964();
  }

  else
  {
    v687 = 0;
  }

  v688 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v665)
  {
    v665 = sub_100216964();
  }

  v689 = v809;
  LOBYTE(v796) = 1;
  v690 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:0 altDSID:v686 flowID:v687 deviceSessionID:v665 eventName:v683 testsAreEnabled:v685 canSendMetrics:v796 category:v688];

  v698 = v819;
  if ((v819[v811] | HIDWORD(v799)))
  {
    v806, v691, v692, v693, v694, v695, v696, v697, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
    v699 = v817;
  }

  else
  {
    v700 = v819[v808];
    v806, v691, v692, v693, v694, v695, v696, v697, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
    v699 = v817;
    if ((v700 & 1) == 0)
    {
      v701 = 1;
      goto LABEL_218;
    }
  }

  v701 = 0;
LABEL_218:
  [v690 sendMetricWithResult:v701 error:0];
  v702 = *&v472[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v703 = *&v698[v699];
  sub_10019E368(v703, v702);

  v834 = 0;
  if ([v702 save:&v834])
  {
    v704 = v826;
    v705 = v834;
    (v805)(v704, 0);
    v583, v706, v707, v708, v709, v710, v711, v712, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
    v689, v713, v714, v715, v716, v717, v718, v719, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;

    v810, v720, v721, v722, v723, v724, v725, v726, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
    return;
  }

  v727 = v834;
  v728 = sub_100216154();

  swift_willThrow();
  v583, v729, v730, v731, v732, v733, v734, v735, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
  v689, v736, v737, v738, v739, v740, v741, v742, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;

LABEL_222:
  v810, v743, v744, v745, v746, v747, v748, v749, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
  if (qword_100297540 != -1)
  {
    swift_once();
  }

  v772 = sub_100216774();
  sub_100002648(v772, qword_10029E728);
  swift_errorRetain();
  v773 = sub_100216754();
  v774 = sub_100216C74();

  if (os_log_type_enabled(v773, v774))
  {
    v775 = swift_slowAlloc();
    v776 = swift_slowAlloc();
    v841 = v776;
    *v775 = 136446210;
    v832 = v728;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v777 = sub_100216994();
    v779 = v778;
    v780 = sub_100005FB0(v777, v778, &v841);
    v779, v781, v782, v783, v784, v785, v786, v787, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806;
    *(v775 + 4) = v780;
    _os_log_impl(&_mh_execute_header, v773, v774, "Error setting machine ID list: %{public}s", v775, 0xCu);
    sub_100006128(v776, v788, v789, v790, v791, v792, v793, v794);
  }

  swift_errorRetain();
  (v805)(0, v728);
}

void sub_1001EB6A4(id *a1, uint64_t a2, _BYTE *a3, uint64_t a4, _BYTE *a5, uint64_t *a6, uint64_t a7, _BYTE *a8, uint64_t a9, BOOL *a10, uint64_t a11, BOOL *a12, BOOL *a13, _BYTE *a14)
{
  v15 = v14;
  v799 = a6;
  v800 = a5;
  v802 = a3;
  v804 = sub_100216384();
  v21 = *(v804 - 8);
  __chkstk_darwin(v804, v22);
  v803 = &v793 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  v25 = &stru_100292000;
  v26 = [*a1 machineID];
  if (!v26)
  {
    if (qword_100297540 != -1)
    {
      swift_once();
    }

    v50 = sub_100216774();
    sub_100002648(v50, qword_10029E728);
    v51 = v24;
    isa = sub_100216754();
    v53 = sub_100216C94();

    if (!os_log_type_enabled(isa, v53))
    {
      goto LABEL_61;
    }

    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v805 = v55;
    *v54 = 136446210;
    v56 = v51;
    v57 = [v56 description];
    v58 = sub_100216974();
    v60 = v59;

    v61 = sub_100005FB0(v58, v60, &v805);
    v60, v62, v63, v64, v65, v66, v67, v68, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
    *(v54 + 4) = v61;
    _os_log_impl(&_mh_execute_header, isa, v53, "Machine has no ID: %{public}s", v54, 0xCu);
    sub_100006128(v55, v69, v70, v71, v72, v73, v74, v75);
    goto LABEL_13;
  }

  v801 = v21;
  v798 = a7;
  v27 = v26;
  v28 = sub_100216974();
  v30 = v29;

  if (sub_10004C758(v28, v30, a2))
  {
    v30, v31, v32, v33, v34, v35, v36, v37, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
    if ([v24 status] == 1)
    {
      v38 = v801;
      if (qword_100297540 != -1)
      {
        swift_once();
      }

      v39 = sub_100216774();
      sub_100002648(v39, qword_10029E728);
      v40 = v24;
      v41 = sub_100216754();
      v42 = sub_100216C94();

      if (os_log_type_enabled(v41, v42))
      {
        v797 = v14;
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v807 = v44;
        *v43 = 136446210;
        v45 = [v40 machineID];
        if (v45)
        {
          v46 = v45;
          v47 = sub_100216974();
          v49 = v48;
        }

        else
        {
          v47 = 0;
          v49 = 0;
        }

        v805 = v47;
        v806 = v49;
        sub_10001148C(&qword_10029D698, &unk_100226590);
        v180 = sub_100216994();
        v182 = v181;
        v183 = sub_100005FB0(v180, v181, &v807);
        v182, v184, v185, v186, v187, v188, v189, v190, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
        *(v43 + 4) = v183;
        _os_log_impl(&_mh_execute_header, v41, v42, "Machine ID still trusted: %{public}s", v43, 0xCu);
        sub_100006128(v44, v191, v192, v193, v194, v195, v196, v197);

        v38 = v801;
      }

      else
      {
      }
    }

    else
    {
      v38 = v801;
      if (qword_100297540 != -1)
      {
        swift_once();
      }

      v133 = sub_100216774();
      sub_100002648(v133, qword_10029E728);
      v134 = v24;
      v135 = sub_100216754();
      v136 = sub_100216C94();

      if (os_log_type_enabled(v135, v136))
      {
        v797 = v14;
        v137 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v807 = v138;
        *v137 = 136446210;
        v139 = [v134 machineID];
        if (v139)
        {
          v140 = v139;
          v141 = sub_100216974();
          v143 = v142;
        }

        else
        {
          v141 = 0;
          v143 = 0;
        }

        v805 = v141;
        v806 = v143;
        sub_10001148C(&qword_10029D698, &unk_100226590);
        v198 = sub_100216994();
        v200 = v199;
        v201 = sub_100005FB0(v198, v199, &v807);
        v200, v202, v203, v204, v205, v206, v207, v208, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
        *(v137 + 4) = v201;
        _os_log_impl(&_mh_execute_header, v135, v136, "Machine ID newly retrusted: %{public}s", v137, 0xCu);
        sub_100006128(v138, v209, v210, v211, v212, v213, v214, v215);

        v38 = v801;
      }

      else
      {
      }

      *v802 = 1;
    }

    [v24 setStatus:1];
    [v24 setSeenOnFullList:1];
    v216 = v803;
    sub_100216374();
    isa = sub_1002162F4().super.isa;
    (v38)[1](v216, v804);
    [v24 setModified:isa];
    goto LABEL_61;
  }

  if (a4 && (sub_10004C758(v28, v30, a4) & 1) != 0)
  {
    v30, v76, v77, v78, v79, v80, v81, v82, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
    if (qword_100297540 != -1)
    {
      swift_once();
    }

    v83 = sub_100216774();
    sub_100002648(v83, qword_10029E728);
    v84 = v24;
    v85 = sub_100216754();
    v86 = sub_100216C94();

    if (os_log_type_enabled(v85, v86))
    {
      v797 = v14;
      v87 = swift_slowAlloc();
      v807 = swift_slowAlloc();
      *v87 = 136446466;
      v88 = sub_1001E6BF0();
      v90 = v89;
      v91 = sub_100005FB0(v88, v89, &v807);
      v90, v92, v93, v94, v95, v96, v97, v98, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
      *(v87 + 4) = v91;
      *(v87 + 12) = 2082;
      v99 = [v84 machineID];
      if (v99)
      {
        v100 = v99;
        v101 = sub_100216974();
        v103 = v102;
      }

      else
      {
        v101 = 0;
        v103 = 0;
      }

      v805 = v101;
      v806 = v103;
      sub_10001148C(&qword_10029D698, &unk_100226590);
      v243 = sub_100216994();
      v245 = v244;
      v246 = sub_100005FB0(v243, v244, &v807);
      v245, v247, v248, v249, v250, v251, v252, v253, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
      *(v87 + 14) = v246;
      _os_log_impl(&_mh_execute_header, v85, v86, "User initiated removal! machine ID last modified %{public}s; distrusting: %{public}s", v87, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v254 = v801;
    if ([v84 status] != 2)
    {
      [v84 setStatus:2];
      v255 = v803;
      sub_100216374();
      v256 = sub_1002162F4().super.isa;
      (v254)[1](v255, v804);
      [v84 setModified:v256];

      *v802 = 1;
    }

    if (*v800 != 1)
    {
      goto LABEL_113;
    }

    v257 = v799[1];
    if (!v257)
    {
      goto LABEL_113;
    }

    v258 = *v799;

    v259 = [v84 machineID];
    if (v259)
    {
      v267 = v259;
      v268 = sub_100216974();
      v270 = v269;

      if (v258 == v268 && v257 == v270)
      {
        v270, v271, v272, v273, v274, v275, v276, v277, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
        v257, v278, v279, v280, v281, v282, v283, v284, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
        v285 = v798;
LABEL_112:
        *(v285 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDUserInitiated) = 1;
        goto LABEL_113;
      }

      v348 = sub_1002171A4();
      v270, v349, v350, v351, v352, v353, v354, v355, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
      v257, v356, v357, v358, v359, v360, v361, v362, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
      v285 = v798;
      if (v348)
      {
        goto LABEL_112;
      }
    }

    else
    {
      v257, v260, v261, v262, v263, v264, v265, v266, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
    }

LABEL_113:
    *a8 = 1;
    return;
  }

  v104 = a10;
  if (a9 && (sub_10004C758(v28, v30, a9) & 1) != 0)
  {
    v30, v105, v106, v107, v108, v109, v110, v111, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
    if (qword_100297540 != -1)
    {
      swift_once();
    }

    v112 = sub_100216774();
    sub_100002648(v112, qword_10029E728);
    v113 = v24;
    v114 = sub_100216754();
    v115 = sub_100216C94();

    if (os_log_type_enabled(v114, v115))
    {
      v795 = a10;
      v797 = v14;
      v116 = swift_slowAlloc();
      v807 = swift_slowAlloc();
      *v116 = 136446466;
      v117 = sub_1001E6BF0();
      v119 = v118;
      v120 = sub_100005FB0(v117, v118, &v807);
      v119, v121, v122, v123, v124, v125, v126, v127, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
      *(v116 + 4) = v120;
      *(v116 + 12) = 2082;
      v128 = [v113 machineID];
      if (v128)
      {
        v129 = v128;
        v130 = sub_100216974();
        v132 = v131;
      }

      else
      {
        v130 = 0;
        v132 = 0;
      }

      v805 = v130;
      v806 = v132;
      sub_10001148C(&qword_10029D698, &unk_100226590);
      v310 = sub_100216994();
      v312 = v311;
      v313 = sub_100005FB0(v310, v311, &v807);
      v312, v314, v315, v316, v317, v318, v319, v320, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
      *(v116 + 14) = v313;
      _os_log_impl(&_mh_execute_header, v114, v115, "Evicted removal! machine ID last modified %{public}s; tagging as evicted: %{public}s", v116, 0x16u);
      swift_arrayDestroy();

      v179 = v798;
      v104 = v795;
    }

    else
    {

      v179 = v798;
    }

    if ([v113 status] == 3)
    {
      if (*v104)
      {
        *v104 = 1;
      }

      else
      {
        v321 = sub_1001F1538(v113, v802, "Evicted machine ID last modified %{public}s; distrusting: %{public}s", "Evicted machine ID last modified %{public}s; leaving evicted: %{public}s");
        *v104 = v321;
        if (!v321)
        {
          return;
        }
      }

      if (*v800 == 1)
      {
        v218 = v799[1];
        if (v218)
        {
          v219 = *v799;

          v220 = [v113 machineID];
LABEL_106:
          v322 = v220;
          if (v322)
          {
            v330 = v322;
            v331 = sub_100216974();
            v333 = v332;

            if (v219 == v331 && v218 == v333)
            {
              v333, v334, v335, v336, v337, v338, v339, v340, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
              v218, v341, v342, v343, v344, v345, v346, v347, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
LABEL_149:
              v492 = &OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDEvicted;
LABEL_159:
              *(v179 + *v492) = 1;
              return;
            }

            v477 = sub_1002171A4();
            v333, v478, v479, v480, v481, v482, v483, v484, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
            v218, v485, v486, v487, v488, v489, v490, v491, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
            if (v477)
            {
              goto LABEL_149;
            }

            return;
          }

LABEL_130:
          v218, v323, v324, v325, v326, v327, v328, v329, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
          return;
        }
      }

      return;
    }

    [v113 setStatus:3];
    goto LABEL_120;
  }

  v144 = a12;
  if (a11 && (sub_10004C758(v28, v30, a11) & 1) != 0)
  {
    v30, v145, v146, v147, v148, v149, v150, v151, v793, v794, v795, a12, v797, v798, v799, v800, v801, v802;
    if (qword_100297540 != -1)
    {
      swift_once();
    }

    v152 = sub_100216774();
    sub_100002648(v152, qword_10029E728);
    v113 = v24;
    v153 = sub_100216754();
    v154 = sub_100216C94();

    if (os_log_type_enabled(v153, v154))
    {
      v797 = v14;
      v155 = swift_slowAlloc();
      v807 = swift_slowAlloc();
      *v155 = 136446466;
      v156 = sub_1001E6BF0();
      v158 = v157;
      v159 = sub_100005FB0(v156, v157, &v807);
      v158, v160, v161, v162, v163, v164, v165, v166, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
      *(v155 + 4) = v159;
      *(v155 + 12) = 2082;
      v167 = [v113 machineID];
      if (v167)
      {
        v168 = v167;
        v169 = sub_100216974();
        v171 = v170;
      }

      else
      {
        v169 = 0;
        v171 = 0;
      }

      v805 = v169;
      v806 = v171;
      sub_10001148C(&qword_10029D698, &unk_100226590);
      v363 = sub_100216994();
      v365 = v364;
      v366 = sub_100005FB0(v363, v364, &v807);
      v365, v367, v368, v369, v370, v371, v372, v373, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
      *(v155 + 14) = v366;
      _os_log_impl(&_mh_execute_header, v153, v154, "Unknown reason removal! machine ID last modified %{public}s; tagging as unknown reason: %{public}s", v155, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v179 = v798;
    v374 = [v113 status];
    v375 = v796;
    if (v374 != 4)
    {
      [v113 setStatus:4];
LABEL_120:
      v376 = v803;
      sub_100216374();
      v377 = sub_1002162F4().super.isa;
      (*(v801 + 1))(v376, v804);
      [v113 setModified:v377];

LABEL_121:
      *v802 = 1;
      return;
    }

    if (*v796)
    {
      *v796 = 1;
    }

    else
    {
      v378 = sub_1001F1538(v113, v802, "Unknown reason machine ID last modified %{public}s; distrusting: %{public}s", "Unknown reason machine ID last modified %{public}s; leaving unknown reason: %{public}s");
      *v375 = v378;
      if (!v378)
      {
        return;
      }
    }

    if (*v800 != 1)
    {
      return;
    }

    v218 = v799[1];
    if (!v218)
    {
      return;
    }

    v287 = *v799;

    v288 = [v113 machineID];
LABEL_126:
    v379 = v288;
    if (v379)
    {
      v380 = v379;
      v381 = sub_100216974();
      v383 = v382;

      if (v287 == v381 && v218 == v383)
      {
        v383, v384, v385, v386, v387, v388, v389, v390, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
        v218, v391, v392, v393, v394, v395, v396, v397, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
      }

      else
      {
        v521 = sub_1002171A4();
        v383, v522, v523, v524, v525, v526, v527, v528, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
        v218, v529, v530, v531, v532, v533, v534, v535, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
        if ((v521 & 1) == 0)
        {
          return;
        }
      }

      v492 = &OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDUnknownReason;
      goto LABEL_159;
    }

    goto LABEL_130;
  }

  if ((sub_1001E6A4C(240) & 1) == 0 || ![v24 status] || objc_msgSend(v24, "status") == 5 || objc_msgSend(v24, "status") == 2)
  {
    v30, v172, v173, v174, v175, v176, v177, v178, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
    v179 = v798;
    goto LABEL_45;
  }

  v795 = a10;
  v796 = a12;
  v797 = v14;
  if (qword_100297540 != -1)
  {
    swift_once();
  }

  v398 = sub_100216774();
  sub_100002648(v398, qword_10029E728);
  v399 = v24;

  v400 = sub_100216754();
  v401 = sub_100216C94();

  v30, v402, v403, v404, v405, v406, v407, v408, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
  v409 = os_log_type_enabled(v400, v401);
  v794 = v399;
  if (v409)
  {
    v417 = swift_slowAlloc();
    v805 = swift_slowAlloc();
    *v417 = 136446466;
    v418 = sub_100005FB0(v28, v30, &v805);
    v30, v419, v420, v421, v422, v423, v424, v425, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
    *(v417 + 4) = v418;
    *(v417 + 12) = 2080;
    v426 = sub_1001E6BF0();
    v428 = v427;
    v429 = sub_100005FB0(v426, v427, &v805);
    v428, v430, v431, v432, v433, v434, v435, v436, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
    *(v417 + 14) = v429;
    _os_log_impl(&_mh_execute_header, v400, v401, "machineID that vanished: %{public}s, last modified : %s", v417, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v30, v410, v411, v412, v413, v414, v415, v416, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
  }

  v15 = v797;
  v179 = v798;
  v104 = v795;
  v144 = v796;
  if (*v800 == 1)
  {
    v493 = v799[1];
    if (v493)
    {
      v494 = *v799;

      v495 = [v794 machineID];
      if (v495)
      {
        v503 = v495;
        v504 = sub_100216974();
        v506 = v505;

        if (v494 == v504 && v493 == v506)
        {
          v506, v507, v508, v509, v510, v511, v512, v513, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
          v493, v514, v515, v516, v517, v518, v519, v520, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
          v179 = v798;
          v104 = v795;
LABEL_182:
          *(v179 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDVanished) = 1;
          goto LABEL_183;
        }

        v607 = sub_1002171A4();
        v506, v608, v609, v610, v611, v612, v613, v614, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
        v493, v615, v616, v617, v618, v619, v620, v621, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
        v179 = v798;
        v104 = v795;
        if (v607)
        {
          goto LABEL_182;
        }
      }

      else
      {
        v493, v496, v497, v498, v499, v500, v501, v502, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
      }
    }
  }

LABEL_183:
  *(v179 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_midVanishedFromTDL) = 1;
LABEL_45:
  if ([v24 status] != 3)
  {
    if ([v24 status] == 4)
    {
      if (*v144)
      {
        *v144 = 1;
      }

      else
      {
        v286 = sub_1001F1538(v24, v802, "Unknown reason machine ID last modified %{public}s; distrusting: %{public}s", "Unknown reason machine ID last modified %{public}s; leaving unknown reason: %{public}s");
        *v144 = v286;
        if (!v286)
        {
          return;
        }
      }

      if (*v800 != 1)
      {
        return;
      }

      v218 = v799[1];
      if (!v218)
      {
        return;
      }

      v287 = *v799;

      v288 = [v24 machineID];
      goto LABEL_126;
    }

    if ([v24 status] == 5)
    {
      v221 = sub_1001E6A4C(48);
      v222 = [v24 seenOnFullList];
      if (v221)
      {
        if (v222)
        {
          if (qword_100297540 != -1)
          {
            swift_once();
          }

          v223 = sub_100216774();
          sub_100002648(v223, qword_10029E728);
          v224 = v24;
          isa = sub_100216754();
          v225 = sub_100216C94();

          if (!os_log_type_enabled(isa, v225))
          {
            goto LABEL_61;
          }

          v226 = swift_slowAlloc();
          v807 = swift_slowAlloc();
          *v226 = 136446466;
          v227 = sub_1001E6BF0();
          v229 = v228;
          v230 = sub_100005FB0(v227, v228, &v807);
          v229, v231, v232, v233, v234, v235, v236, v237, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
          *(v226 + 4) = v230;
          *(v226 + 12) = 2082;
          v238 = [v224 machineID];
          if (v238)
          {
            v239 = v238;
            v240 = sub_100216974();
            v242 = v241;
          }

          else
          {
            v240 = 0;
            v242 = 0;
          }

          v805 = v240;
          v806 = v242;
          sub_10001148C(&qword_10029D698, &unk_100226590);
          v622 = sub_100216994();
          v624 = v623;
          v625 = sub_100005FB0(v622, v623, &v807);
          v624, v626, v627, v628, v629, v630, v631, v632, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
          *(v226 + 14) = v625;
          v633 = "Seen on full list machine ID isn't on full list, last modified %{public}s, ignoring: %{public}s";
        }

        else
        {
          if (qword_100297540 != -1)
          {
            swift_once();
          }

          v536 = sub_100216774();
          sub_100002648(v536, qword_10029E728);
          v537 = v24;
          isa = sub_100216754();
          v225 = sub_100216C94();

          if (!os_log_type_enabled(isa, v225))
          {
            goto LABEL_61;
          }

          v226 = swift_slowAlloc();
          v807 = swift_slowAlloc();
          *v226 = 136446466;
          v538 = sub_1001E6BF0();
          v540 = v539;
          v541 = sub_100005FB0(v538, v539, &v807);
          v540, v542, v543, v544, v545, v546, v547, v548, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
          *(v226 + 4) = v541;
          *(v226 + 12) = 2082;
          v549 = [v537 machineID];
          if (v549)
          {
            v550 = v549;
            v551 = sub_100216974();
            v553 = v552;
          }

          else
          {
            v551 = 0;
            v553 = 0;
          }

          v805 = v551;
          v806 = v553;
          sub_10001148C(&qword_10029D698, &unk_100226590);
          v646 = sub_100216994();
          v648 = v647;
          v649 = sub_100005FB0(v646, v647, &v807);
          v648, v650, v651, v652, v653, v654, v655, v656, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
          *(v226 + 14) = v649;
          v633 = "Allowed-but-unseen machine ID isn't on full list, last modified %{public}s, ignoring: %{public}s";
        }

        goto LABEL_206;
      }

      v437 = a13;
      v797 = v15;
      if (v222)
      {
        if (qword_100297540 != -1)
        {
          swift_once();
        }

        v438 = sub_100216774();
        sub_100002648(v438, qword_10029E728);
        v439 = v24;
        v440 = sub_100216754();
        v441 = sub_100216C94();

        if (os_log_type_enabled(v440, v441))
        {
          v796 = a13;
          v442 = swift_slowAlloc();
          v807 = swift_slowAlloc();
          *v442 = 136446466;
          v443 = sub_1001E6BF0();
          v445 = v444;
          v446 = sub_100005FB0(v443, v444, &v807);
          v445, v447, v448, v449, v450, v451, v452, v453, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
          *(v442 + 4) = v446;
          *(v442 + 12) = 2082;
          v454 = [v439 machineID];
          if (v454)
          {
            v455 = v454;
            v456 = sub_100216974();
            v458 = v457;
          }

          else
          {
            v456 = 0;
            v458 = 0;
          }

          v805 = v456;
          v806 = v458;
          sub_10001148C(&qword_10029D698, &unk_100226590);
          v634 = sub_100216994();
          v636 = v635;
          v637 = sub_100005FB0(v634, v635, &v807);
          v636, v638, v639, v640, v641, v642, v643, v644, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
          *(v442 + 14) = v637;
          v645 = "Seen on full list machine ID isn't on full list, last modified %{public}s, distrusting: %{public}s";
LABEL_192:
          _os_log_impl(&_mh_execute_header, v440, v441, v645, v442, 0x16u);
          swift_arrayDestroy();

          v437 = v796;
          goto LABEL_193;
        }
      }

      else
      {
        if (qword_100297540 != -1)
        {
          swift_once();
        }

        v554 = sub_100216774();
        sub_100002648(v554, qword_10029E728);
        v555 = v24;
        v440 = sub_100216754();
        v441 = sub_100216C94();

        if (os_log_type_enabled(v440, v441))
        {
          v796 = a13;
          v442 = swift_slowAlloc();
          v807 = swift_slowAlloc();
          *v442 = 136446466;
          v556 = sub_1001E6BF0();
          v558 = v557;
          v559 = sub_100005FB0(v556, v557, &v807);
          v558, v560, v561, v562, v563, v564, v565, v566, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
          *(v442 + 4) = v559;
          *(v442 + 12) = 2082;
          v567 = [v555 machineID];
          if (v567)
          {
            v568 = v567;
            v569 = sub_100216974();
            v571 = v570;
          }

          else
          {
            v569 = 0;
            v571 = 0;
          }

          v805 = v569;
          v806 = v571;
          sub_10001148C(&qword_10029D698, &unk_100226590);
          v657 = sub_100216994();
          v659 = v658;
          v660 = sub_100005FB0(v657, v658, &v807);
          v659, v661, v662, v663, v664, v665, v666, v667, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
          *(v442 + 14) = v660;
          v645 = "Allowed-but-unseen machine ID isn't on full list, last modified %{public}s, distrusting: %{public}s";
          goto LABEL_192;
        }
      }

LABEL_193:
      [v24 setStatus:2];
      v668 = v803;
      sub_100216374();
      v669 = sub_1002162F4().super.isa;
      (*(v801 + 1))(v668, v804);
      [v24 setModified:v669];

      *v802 = 1;
      if (*v800 != 1)
      {
        goto LABEL_202;
      }

      v670 = v799[1];
      if (!v670)
      {
        goto LABEL_202;
      }

      v671 = *v799;

      v672 = [v24 machineID];
      if (!v672)
      {
        v670, v673, v674, v675, v676, v677, v678, v679, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
        *v437 = 1;
        return;
      }

      v680 = v672;
      v681 = sub_100216974();
      v683 = v682;

      if (v671 == v681 && v670 == v683)
      {
        v683, v684, v685, v686, v687, v688, v689, v690, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
        v670, v691, v692, v693, v694, v695, v696, v697, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
      }

      else
      {
        v698 = sub_1002171A4();
        v683, v699, v700, v701, v702, v703, v704, v705, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
        v670, v706, v707, v708, v709, v710, v711, v712, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
        if ((v698 & 1) == 0)
        {
LABEL_202:
          *v437 = 1;
          return;
        }
      }

      *(v798 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDGhosted) = 1;
      goto LABEL_202;
    }

    if ([v24 status] == 1)
    {
      if (qword_100297540 != -1)
      {
        swift_once();
      }

      v289 = sub_100216774();
      sub_100002648(v289, qword_10029E728);
      v290 = v24;
      v291 = sub_100216754();
      v292 = sub_100216C94();

      if (os_log_type_enabled(v291, v292))
      {
        v293 = swift_slowAlloc();
        v807 = swift_slowAlloc();
        *v293 = 136446466;
        v294 = sub_1001E6BF0();
        v296 = v295;
        v297 = sub_100005FB0(v294, v295, &v807);
        v296, v298, v299, v300, v301, v302, v303, v304, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
        *(v293 + 4) = v297;
        *(v293 + 12) = 2082;
        v305 = [v290 machineID];
        if (v305)
        {
          v306 = v305;
          v307 = sub_100216974();
          v309 = v308;
        }

        else
        {
          v307 = 0;
          v309 = 0;
        }

        v805 = v307;
        v806 = v309;
        sub_10001148C(&qword_10029D698, &unk_100226590);
        v572 = sub_100216994();
        v574 = v573;
        v575 = sub_100005FB0(v572, v573, &v807);
        v574, v576, v577, v578, v579, v580, v581, v582, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
        *(v293 + 14) = v575;
        _os_log_impl(&_mh_execute_header, v291, v292, "MachineID was allowed but no longer on the TDL, last modified %{public}s, tagging as ghosted fromt TDL: %{public}s", v293, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v583 = v801;
      [v290 setStatus:5];
      v584 = v803;
      sub_100216374();
      v585 = sub_1002162F4().super.isa;
      (v583)[1](v584, v804);
      [v290 setModified:v585];

      goto LABEL_121;
    }

    if ([v24 status])
    {
      return;
    }

    if (sub_1001E6A4C(48))
    {
      if (qword_100297540 != -1)
      {
        swift_once();
      }

      v459 = sub_100216774();
      sub_100002648(v459, qword_10029E728);
      v460 = v24;
      isa = sub_100216754();
      v225 = sub_100216C94();

      if (!os_log_type_enabled(isa, v225))
      {
        goto LABEL_61;
      }

      v226 = swift_slowAlloc();
      v807 = swift_slowAlloc();
      *v226 = 136446466;
      v461 = sub_1001E6BF0();
      v463 = v462;
      v464 = sub_100005FB0(v461, v462, &v807);
      v463, v465, v466, v467, v468, v469, v470, v471, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
      *(v226 + 4) = v464;
      *(v226 + 12) = 2082;
      v472 = [v460 machineID];
      if (v472)
      {
        v473 = v472;
        v474 = sub_100216974();
        v476 = v475;
      }

      else
      {
        v474 = 0;
        v476 = 0;
      }

      v805 = v474;
      v806 = v476;
      sub_10001148C(&qword_10029D698, &unk_100226590);
      v713 = sub_100216994();
      v715 = v714;
      v716 = sub_100005FB0(v713, v714, &v807);
      v715, v717, v718, v719, v720, v721, v722, v723, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
      *(v226 + 14) = v716;
      v633 = "Unknown machine ID last modified %{public}s; leaving unknown: %{public}s";
LABEL_206:
      _os_log_impl(&_mh_execute_header, isa, v225, v633, v226, 0x16u);
      swift_arrayDestroy();
LABEL_13:

LABEL_61:

      return;
    }

    if (qword_100297540 != -1)
    {
      swift_once();
    }

    v586 = sub_100216774();
    sub_100002648(v586, qword_10029E728);
    v587 = v24;
    v588 = sub_100216754();
    v589 = sub_100216C94();

    if (os_log_type_enabled(v588, v589))
    {
      v797 = v15;
      v590 = swift_slowAlloc();
      v807 = swift_slowAlloc();
      *v590 = 136446466;
      v591 = sub_1001E6BF0();
      v593 = v592;
      v594 = sub_100005FB0(v591, v592, &v807);
      v593, v595, v596, v597, v598, v599, v600, v601, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
      *(v590 + 4) = v594;
      *(v590 + 12) = 2082;
      v602 = [v587 machineID];
      if (v602)
      {
        v603 = v602;
        v604 = sub_100216974();
        v606 = v605;

        v25 = &stru_100292000;
      }

      else
      {
        v604 = 0;
        v606 = 0;
      }

      v805 = v604;
      v806 = v606;
      sub_10001148C(&qword_10029D698, &unk_100226590);
      v724 = sub_100216994();
      v726 = v725;
      v727 = sub_100005FB0(v724, v725, &v807);
      v726, v728, v729, v730, v731, v732, v733, v734, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
      *(v590 + 14) = v727;
      _os_log_impl(&_mh_execute_header, v588, v589, "Unknown machine ID last modified %{public}s; distrusting: %{public}s", v590, 0x16u);
      swift_arrayDestroy();

      v179 = v798;
    }

    else
    {
    }

    [v587 setStatus:2];
    v735 = v803;
    sub_100216374();
    v736 = sub_1002162F4().super.isa;
    (*(v801 + 1))(v735, v804);
    [v587 setModified:v736];

    *v802 = 1;
    if (*v800 == 1)
    {
      v737 = v799[1];
      if (v737)
      {
        v738 = *v799;

        v739 = [v587 v25[213].name];
        if (!v739)
        {
          v737, v740, v741, v742, v743, v744, v745, v746, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
          goto LABEL_218;
        }

        v747 = v25;
        v748 = v739;
        v749 = sub_100216974();
        v751 = v750;

        if (v738 == v749 && v737 == v751)
        {
          v751, v752, v753, v754, v755, v756, v757, v758, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
          v737, v759, v760, v761, v762, v763, v764, v765, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
          v25 = v747;
          v179 = v798;
        }

        else
        {
          v766 = sub_1002171A4();
          v751, v767, v768, v769, v770, v771, v772, v773, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
          v737, v774, v775, v776, v777, v778, v779, v780, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802;
          v25 = v747;
          v179 = v798;
          if ((v766 & 1) == 0)
          {
            goto LABEL_218;
          }
        }

        *(v179 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDUnknown) = 1;
      }
    }

LABEL_218:
    v781 = [v587 v25[213].name];
    if (v781)
    {
      v782 = v781;
      v783 = *(v179 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
      v805 = 0;
      v784 = v783;
      v785 = [v784 doAnyTrustedPeersMatchMachineID:v782 error:&v805];

      v786 = v805;
      if (v805)
      {
        swift_willThrow();
        v787 = v786;
        isa = sub_100216754();
        v788 = sub_100216C74();

        if (os_log_type_enabled(isa, v788))
        {
          v789 = swift_slowAlloc();
          v790 = swift_slowAlloc();
          *v789 = 138543362;
          v791 = v787;
          v792 = _swift_stdlib_bridgeErrorToNSError();
          *(v789 + 4) = v792;
          *v790 = v792;
          _os_log_impl(&_mh_execute_header, isa, v788, "error calling doAnyTrustedPeersMatchMachineID: %{public}@", v789, 0xCu);
          sub_1000114D4(v790, &qword_10029D580, &unk_10021CCC0);

          return;
        }

        goto LABEL_61;
      }

      if (v785)
      {
        *a14 = 1;
      }
    }

    return;
  }

  if (*v104)
  {
    *v104 = 1;
  }

  else
  {
    v217 = sub_1001F1538(v24, v802, "Evicted machine ID last modified %{public}s; distrusting: %{public}s", "Evicted machine ID last modified %{public}s; leaving evicted: %{public}s");
    *v104 = v217;
    if (!v217)
    {
      return;
    }
  }

  if (*v800 == 1)
  {
    v218 = v799[1];
    if (v218)
    {
      v219 = *v799;

      v220 = [v24 machineID];
      goto LABEL_106;
    }
  }
}

uint64_t sub_1001EDA28(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (qword_100297540 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029E728);
  swift_errorRetain();
  v8 = sub_100216754();
  v9 = sub_100216C54();

  if (os_log_type_enabled(v8, v9))
  {
    v45 = a4;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v50 = v11;
    *v10 = 136446210;
    v12 = 0xE700000000000000;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v55._countAndFlagsBits = sub_100216994();
      object = v55._object;
      sub_100216A14(v55);
      object, v14, v15, v16, v17, v18, v19, v20, v44, v45, a2, 0x203A726F727265, 0xE700000000000000, v50, v51, v52, v53, v54;

      v21 = v48;
      v12 = v49;
    }

    else
    {
      v21 = 0x73736563637573;
    }

    v28 = sub_100005FB0(v21, v12, &v50);
    v12, v29, v30, v31, v32, v33, v34, v35, v44, v45, v47, v48, v49, v50, v51, v52, v53, v54;
    *(v10 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v8, v9, "fetchAllowedMachineIDs complete: %{public}s", v10, 0xCu);
    sub_100006128(v11, v36, v37, v38, v39, v40, v41, v42);

    a4 = v46;
  }

  else
  {
  }

  sub_10010EEEC(0xD00000000000001ELL, 0x800000010023E6F0, v22, v23, v24, v25, v26, v27);
  return a4(a1, a2);
}

void sub_1001EDC5C(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = [*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) machines];
  if (v5)
  {
    v13 = v5;
    v104 = 0;
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO, &protocol conformance descriptor for NSObject);
    sub_100216BA4();
  }

  0, v6, v7, v8, v9, v10, v11, v12, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107;
  v15 = &_swiftEmptySetSingleton;
  v99 = a3;
  v100 = a2;
  if ((&_swiftEmptySetSingleton & 0xC000000000000001) == 0)
  {
    v41 = *(&_swiftEmptySetSingleton + 32);
    v17 = ((1 << v41) + 63) >> 6;
    v31 = 8 * v17;
    if ((v41 & 0x3Fu) <= 0xD)
    {
      goto LABEL_24;
    }

    goto LABEL_42;
  }

  v16 = &_swiftEmptySetSingleton;
  v104 = &_swiftEmptySetSingleton;
  v17 = sub_100216E84();
  v18 = sub_100216F14();
  if (!v18)
  {
LABEL_22:
    v17, v19, v20, v21, v22, v23, v24, v25;
LABEL_39:
    a2 = v100;
    goto LABEL_40;
  }

  v26 = v18;
  type metadata accessor for MachineMO();
  v27 = v26;
  a2 = 63;
  while (1)
  {
    v101 = v27;
    swift_dynamicCast();
    v28 = v102;
    if ([(Client *)v102 status]== 1)
    {
      break;
    }

LABEL_7:
    v27 = sub_100216F14();
    if (!v27)
    {
      goto LABEL_22;
    }
  }

  v29 = *v16->endpoint;
  if (*v16->containerMap <= v29)
  {
    sub_100188B58(v29 + 1);
  }

  v16 = v104;
  v15 = v102;
  v30 = sub_100216DB4(v104[5]);
  v32 = (v104 + 7);
  v33 = -1 << *(v104 + 32);
  v34 = v30 & ~v33;
  v35 = v34 >> 6;
  if (((-1 << v34) & ~v104[(v34 >> 6) + 7]) != 0)
  {
    v36 = __clz(__rbit64((-1 << v34) & ~v104[(v34 >> 6) + 7])) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *&v32[(v36 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v36;
    *(*v16[1].endpoint + 8 * v36) = v28;
    ++*v16->endpoint;
    goto LABEL_7;
  }

  v37 = 0;
  v38 = (63 - v33) >> 6;
  while (++v35 != v38 || (v37 & 1) == 0)
  {
    v39 = v35 == v38;
    if (v35 == v38)
    {
      v35 = 0;
    }

    v37 |= v39;
    v40 = *&v32[8 * v35];
    if (v40 != -1)
    {
      v36 = __clz(__rbit64(~v40)) + (v35 << 6);
      goto LABEL_21;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_42:
    v82 = v31;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v15, v83, v84, v85, v86, v87, v88, v89, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107;
    v31 = v82;
LABEL_24:
    v98 = &v98;
    __chkstk_darwin(v14, v31);
    v43 = &v98 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v43, v42);
    v48 = 0;
    v49 = 0;
    v50 = 1 << v15[1]._TtCs12_SwiftObject_opaque[0];
    v51 = -1;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    v52 = v51 & *v15[1].containerMap;
    v53 = (v50 + 63) >> 6;
    while (v52)
    {
      v54 = __clz(__rbit64(v52));
      v52 &= v52 - 1;
LABEL_34:
      a2 = v54 | (v49 << 6);
      if ([*(*v15[1].endpoint + 8 * a2) status] == 1)
      {
        *&v43[(a2 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << a2;
        if (__OFADD__(v48++, 1))
        {
          __break(1u);
LABEL_38:
          v16 = sub_10018AD28(v43, v17, v48, v15, v44, v45, v46, v47);
          goto LABEL_39;
        }
      }
    }

    v55 = v49;
    while (1)
    {
      v49 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v49 >= v53)
      {
        goto LABEL_38;
      }

      v56 = *&v15[1].containerMap[8 * v49];
      ++v55;
      if (v56)
      {
        v54 = __clz(__rbit64(v56));
        v52 = (v56 - 1) & v56;
        goto LABEL_34;
      }
    }
  }

  v90 = swift_slowAlloc();
  v16 = sub_1001EF198(v90, v17, v15, sub_1001EE12C, 0);
  v15, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107;

LABEL_40:
  sub_1001E3B80(v16);
  v59 = v58;
  v16, v60, v61, v62, v63, v64, v65, v66;
  v67 = sub_10019C848(v59);
  v59, v68, v69, v70, v71, v72, v73, v74, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107;
  (a2)(v67, 0);
  v67, v75, v76, v77, v78, v79, v80, v81, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107;
}

void sub_1001EE168(_TtC18TrustedPeersHelper6Client **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v7 = sub_100216964();
  v38[0] = 0;
  v8 = [v6 peerWithID:v7 error:v38];

  if (v38[0])
  {
    v9 = v38[0];

    swift_willThrow();
    if (qword_100297540 != -1)
    {
      swift_once();
    }

    v10 = sub_100216774();
    sub_100002648(v10, qword_10029E728);

    v11 = v9;
    v12 = sub_100216754();
    v13 = sub_100216C74();

    v4, v14, v15, v16, v17, v18, v19, v20, v38[0], v38[1], v38[2], v38[3], v38[4], v39, v40, v41, v42, v43;
    if (os_log_type_enabled(v12, v13))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38[0] = v23;
      *v21 = 136446466;
      *(v21 + 4) = sub_100005FB0(v5, v4, v38);
      *(v21 + 12) = 2114;
      v24 = v11;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v25;
      *v22 = v25;
      _os_log_impl(&_mh_execute_header, v12, v13, "Error getting peer with machineID %{public}s: %{public}@", v21, 0x16u);
      sub_1000114D4(v22, &qword_10029D580, &unk_10021CCC0);

      sub_100006128(v23, v26, v27, v28, v29, v30, v31, v32);
    }

    else
    {
    }

    *a3 = 0;
    a3[1] = 0;
  }

  else if (v8)
  {
    v33 = [v8 permanentInfo];

    v34 = [v33 machineID];
    v35 = sub_100216974();
    v37 = v36;

    *a3 = v35;
    a3[1] = v37;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

uint64_t sub_1001EE44C(id *a1)
{
  v1 = *a1;
  if ([*a1 status] || (sub_1001E6A4C(48)) && (objc_msgSend(v1, "status") != 3 || (sub_1001E6A4C(48)) && (objc_msgSend(v1, "status") != 4 || (sub_1001E6A4C(48)))
  {
    if ([v1 status] == 5)
    {
      v2 = sub_1001E6A4C(48) ^ 1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

void sub_1001EE510(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = v8;
  v13 = *v8;
  v12 = *(v8 + 8);
  v14 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v14 != 2)
    {
      memset(v54, 0, 15);
      a1(&v52, v54, v54);
      return;
    }

    sub_100002BF0(v13, v12, v16, v17, v18, v19, v20, v21);
    v52 = v13;
    v53 = v12 & 0x3FFFFFFFFFFFFFFFLL;
    *v10 = xmmword_10021D470;
    sub_100002BF0(0, 0xC000000000000000, v22, v23, v24, v25, v26, v27);
    sub_1002161A4();
    sub_1001EE8B4(*v52->endpoint, *v52->containerMap, a1);
    v28 = v53 | 0x8000000000000000;
    if (!v9)
    {
      *v10 = v52;
      *(v10 + 8) = v28;
      return;
    }

    *v10 = v52;
    goto LABEL_18;
  }

  if (!v14)
  {
    sub_100002BF0(v13, v12, a3, a4, a5, a6, a7, a8);
    v54[0] = v13;
    LOWORD(v54[1]) = v12;
    BYTE2(v54[1]) = BYTE2(v12);
    BYTE3(v54[1]) = BYTE3(v12);
    BYTE4(v54[1]) = BYTE4(v12);
    BYTE5(v54[1]) = BYTE5(v12);
    BYTE6(v54[1]) = BYTE6(v12);
    a1(&v52, v54, v54 + BYTE6(v12));
    v15 = LODWORD(v54[1]) | ((WORD2(v54[1]) | (BYTE6(v54[1]) << 16)) << 32);
    *v10 = v54[0];
    *(v10 + 8) = v15;
    return;
  }

  v29 = v12 & 0x3FFFFFFFFFFFFFFFLL;

  sub_100002BF0(v13, v12, v30, v31, v32, v33, v34, v35);
  *v10 = xmmword_10021D470;
  sub_100002BF0(0, 0xC000000000000000, v36, v37, v38, v39, v40, v41);
  v42 = v13 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v42 < v13)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (sub_100216034() && __OFSUB__(v13, sub_100216064()))
    {
LABEL_22:
      __break(1u);
    }

    sub_100216074();
    swift_allocObject();
    v43 = sub_100216014();

    v29 = v43;
  }

  if (v42 < v13)
  {
    __break(1u);
    goto LABEL_21;
  }

  sub_1001EE8B4(v13, v13 >> 32, a1);
  v29, v44, v45, v46, v47, v48, v49, v50;
  v28 = v29 | 0x4000000000000000;
  if (v9)
  {
    *v10 = v13;
LABEL_18:
    *(v10 + 8) = v28;
    return;
  }

  *v10 = v13;
  *(v10 + 8) = v28;
}

char *sub_1001EE8B4(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_100216034();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_100216064();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_100216054();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1001EE968(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1002168A4();
      sub_1001F3728(&qword_10029E758, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return sub_100216864();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1001EEB48(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1001EEB48(v5, v6);
  }

  sub_1002168A4();
  sub_1001F3728(&qword_10029E758, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  return sub_100216864();
}

uint64_t sub_1001EEB48(uint64_t a1, uint64_t a2)
{
  result = sub_100216034();
  if (!result || (result = sub_100216064(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_100216054();
      sub_1002168A4();
      sub_1001F3728(&qword_10029E758, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return sub_100216864();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001EEC28@<X0>(_BYTE *a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_100017F84(a1, &a1[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_100216074();
      swift_allocObject();
      v8 = sub_100216024();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1002161D4();
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

void *sub_1001EECF0(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_1001EEDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v23 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v26 = *(*(a3 + 48) + 8 * v16);
    v17 = v26;
    v18 = a4(&v26);

    if (v6)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:

        a6(a1, a2, v23, a3);
        return;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

char *sub_1001EEF28(char *result, unint64_t a2, _TtC18TrustedPeersHelper6Client *a3, uint64_t a4)
{
  if ((a2 & 0x8000000000000000) != 0)
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

    sub_1001F19F0(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();
    a3, v10, v11, v12, v13, v14, v15, v16;
    return v9;
  }

  return result;
}

char *sub_1001EEFC4(char *result, unint64_t a2, _TtC18TrustedPeersHelper6Client *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1001F2A24(v13, a2, a3, a4, a5, a6, a7);
    v15 = v14;
    swift_bridgeObjectRelease_n();
    a3, v16, v17, v18, v19, v20, v21, v22;
    return v15;
  }

  return result;
}

char *sub_1001EF080(char *result, unint64_t a2, _TtC18TrustedPeersHelper6Client *a3, uint64_t a4, _TtC18TrustedPeersHelper6Client *a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v9 = a8;
    v10 = a7;
    v11 = a6;
    v13 = a4;
    v14 = a3;
    v16 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
      v9 = a8;
      v10 = a7;
      v11 = a6;
      v13 = a4;
      v14 = a3;
    }

    sub_1001F2578(v16, a2, v14, v13, a5, v11, v10, v9, a9);
    v22 = v21;
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v14, v23, v24, v25, v26, v27, v28, v29;
    return v22;
  }

  return result;
}

void *sub_1001EF198(void *result, uint64_t a2, _TtC18TrustedPeersHelper6Client *a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_1001EEDB4(result, a2, a3, a4, a5, sub_10018AD28);
    v11 = v10;
    a3, v12, v13, v14, v15, v16, v17, v18;
    return v11;
  }

  return result;
}

void sub_1001EF23C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001EFEE8(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = *(v2 + 2);
  v11[0] = (v2 + 32);
  v11[1] = v10;
  sub_1001EF2A8(v11);
  *a1 = v2;
}

void sub_1001EF2A8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_100217164(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_100216B54();
        *v5->endpoint = v2 / 2;
      }

      v14 = v5 + 1;
      v15 = v2 / 2;
      v6 = v5;
      sub_1001EF470(&v14, v17, a1, v4);
      *v6->endpoint = 0;
      v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17[0], v17[1], v18, v19, v20, vars0, vars8;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1001EF3A0(0, v2, 1, a1);
  }
}

uint64_t sub_1001EF3A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1002171A4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1001EF470(char **a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_138:
      v8 = sub_1001EFD00(v8);
    }

    v92 = v8 + 16;
    v93 = *(v8 + 2);
    if (v93 >= 2)
    {
      while (*a3)
      {
        v94 = &v8[16 * v93];
        v95 = *v94;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_1001EFA4C((*a3 + 16 * *v94), (*a3 + 16 * *v96), (*a3 + 16 * v97), v9);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v97 < v95)
        {
          goto LABEL_130;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_131;
        }

        *v94 = v95;
        *(v94 + 1) = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_132;
        }

        v93 = *v92 - 1;
        memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        if (v93 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_142;
    }

LABEL_115:
    v8, v84, v85, v86, v87, v88, v89, v90, v99, v100, v101, v102, a1, a3, v105, v106, v107, v108;
    return;
  }

  v102 = a4;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        v13 = sub_1002171A4();
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (v14[1] == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else if ((v13 ^ sub_1002171A4()))
          {
            goto LABEL_23;
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < v102)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100182E9C(0, *(v8 + 2) + 1, 1, v8);
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v8 = sub_100182E9C((v39 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1001EFA4C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1001EFD00(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v91 = &v8[16 * v9];
        *(v91 + 4) = v82;
        *(v91 + 5) = v83;
        v106 = v8;
        sub_1001EFC74(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, v102))
  {
    goto LABEL_136;
  }

  v101 = v5;
  if (&v102[v9] >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = &v102[v9];
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v101;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v100 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (sub_1002171A4() & 1) == 0)
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v100;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

uint64_t sub_1001EFA4C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1002171A4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1002171A4() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1001EFC74(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001EFD00(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1001EFD14(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v8 = HIBYTE(a6) & 0xF;
  v70 = a5;
  v74 = a6;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v8 = a5 & 0xFFFFFFFFFFFFLL;
  }

  v78 = 0;
  v82 = v8;

  v9 = sub_100216A34();
  v17 = a1;
  if (v10)
  {
    v18 = v9;
    v19 = v10;
    v17 = a1;
    do
    {
      if ((v17 ^ a2) < 0x4000)
      {
        v19, v10, v11, v12, v13, v14, v15, v16, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106;
        v77, v63, v64, v65, v66, v67, v68, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109;
        return 1;
      }

      v42 = sub_100216DF4();
      v44 = v43;
      v17 = sub_100216DE4();
      if (v18 == v42 && v19 == v44)
      {
        v19, v45, v46, v47, v48, v49, v50, v51, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106;
        v44, v52, v53, v54, v55, v56, v57, v58, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108;
      }

      else
      {
        v20 = sub_1002171A4();
        v19, v21, v22, v23, v24, v25, v26, v27, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106;
        v44, v28, v29, v30, v31, v32, v33, v34, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107;
        if ((v20 & 1) == 0)
        {
          v62 = v74;
LABEL_16:
          v62, v35, v36, v37, v38, v39, v40, v41, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106;
          return 0;
        }
      }

      v18 = sub_100216A34();
      v19 = v10;
    }

    while (v10);
  }

  v74, v10, v11, v12, v13, v14, v15, v16, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106;
  if ((v17 ^ a2) >= 0x4000)
  {
    sub_100216DF4();
    v61 = v60;
    sub_100216DE4();
    v62 = v61;
    goto LABEL_16;
  }

  return 1;
}

unint64_t sub_1001EFEFC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_100216A84();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_100216A64();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1001EFF78@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_100216FE4();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001EFFC8(_TtC18TrustedPeersHelper6Client *a1)
{
  v16 = sub_10001148C(&qword_10029DB20, &qword_1002267C0);
  v17 = sub_1001AC36C(&qword_10029E778, &qword_10029DB20, &qword_1002267C0, &protocol conformance descriptor for <A> [A]);
  v15[0] = a1;
  v2 = sub_100006484(v15, v16);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_100017EF0(v3, &v3[v4], &v14);
  v5 = v14;
  sub_100006128(v15, v6, v7, v8, v9, v10, v11, v12);
  return v5;
}

uint64_t sub_1001F00A4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_10001391C(result);
    }

    else
    {
      sub_100216074();
      swift_allocObject();
      sub_100216044();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1002161D4();
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

void sub_1001F0144(_TtC18TrustedPeersHelper6Client *a1, _TtC18TrustedPeersHelper6Client **a2, uint64_t a3, _BYTE *a4, uint64_t a5, _BYTE *a6, uint64_t *a7, _BYTE *a8)
{
  v145 = a8;
  v134 = a7;
  v143 = a5;
  v144 = a6;
  v142 = a4;
  v150 = a3;
  v148 = a2;
  v141 = sub_100216384();
  __chkstk_darwin(v141, v9);
  v140 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  containerMap = a1[1].containerMap;
  v13 = 1 << a1[1]._TtCs12_SwiftObject_opaque[0];
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *a1[1].containerMap;
  v139 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc;
  v149 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v130 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDUserInitiated;
  v16 = (v13 + 63) >> 6;
  v138 = (v10 + 8);

  v24 = 0;
  *&v25 = 136446210;
  v132 = v25;
  v137 = a1;
  v146 = v16;
  v147 = a1[1].containerMap;
  while (v15)
  {
LABEL_12:
    v35 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v36 = (*a1[1].endpoint + ((v24 << 10) | (16 * v35)));
    v38 = *v36;
    v37 = v36[1];
    v39 = *v148;
    if (!*(*v148)->endpoint)
    {

LABEL_23:
      type metadata accessor for MachineMO();
      v53 = v150;
      v54 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v150 + v139)];
      v55 = sub_100216964();
      [v54 setMachineID:v55];

      [v54 setContainer:*(v53 + v149)];
      [v54 setSeenOnFullList:1];
      v56 = v140;
      sub_100216374();
      isa = sub_1002162F4().super.isa;
      (*v138)(v56, v141);
      [v54 setModified:isa];

      [v54 setStatus:2];
      if (qword_100297540 != -1)
      {
        swift_once();
      }

      v58 = sub_100216774();
      sub_100002648(v58, qword_10029E728);
      v59 = v54;
      v60 = sub_100216754();
      v61 = sub_100216C94();

      if (os_log_type_enabled(v60, v61))
      {
        HIDWORD(v136) = v61;
        v62 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v152 = v135;
        *v62 = v132;
        v63 = [v59 machineID];
        if (v63)
        {
          v64 = v63;
          v65 = sub_100216974();
          v67 = v66;
        }

        else
        {
          v65 = 0;
          v67 = 0;
        }

        v151[0] = v65;
        v151[1] = v67;
        sub_10001148C(&qword_10029D698, &unk_100226590);
        v68 = sub_100216994();
        v70 = v69;
        v71 = sub_100005FB0(v68, v69, &v152);
        v70, v72, v73, v74, v75, v76, v77, v78, v130, v131, v132, *(&v132 + 1), v133, v134, v135, v136, v137, v138;
        *(v62 + 4) = v71;
        _os_log_impl(&_mh_execute_header, v60, BYTE4(v136), "Newly distrusted machine ID: %{public}s", v62, 0xCu);
        sub_100006128(v135, v79, v80, v81, v82, v83, v84, v85);

        a1 = v137;
      }

      else
      {
      }

      *v142 = 1;
      [*(v150 + v149) addMachinesObject:v59];
      v86 = v59;
      sub_10018B5EC(v151, v86);

      if (*v144 == 1)
      {
        v87 = v134[1];
        if (v87)
        {
          v88 = *v134;

          v89 = [v86 machineID];
          if (v89)
          {
            v97 = v89;
            v98 = sub_100216974();
            v100 = v99;

            if (v88 == v98 && v87 == v100)
            {
              v100, v101, v102, v103, v104, v105, v106, v107, v130, v131, v132, *(&v132 + 1), v133, v134, v135, v136, v137, v138;
              v87, v108, v109, v110, v111, v112, v113, v114, v130, v131, v132, *(&v132 + 1), v133, v134, v135, v136, v137, v138;

              a1 = v137;
              goto LABEL_41;
            }

            v115 = sub_1002171A4();
            v100, v116, v117, v118, v119, v120, v121, v122, v130, v131, v132, *(&v132 + 1), v133, v134, v135, v136, v137, v138;
            v87, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, *(&v132 + 1), v133, v134, v135, v136, v137, v138;

            a1 = v137;
            if (v115)
            {
LABEL_41:
              *(v130 + v150) = 1;
            }

LABEL_39:
            *v145 = 1;
            v33 = v37;
            goto LABEL_6;
          }

          v87, v90, v91, v92, v93, v94, v95, v96, v130, v131, v132, *(&v132 + 1), v133, v134, v135, v136, v137, v138;
        }
      }

      goto LABEL_39;
    }

    sub_100217264();

    sub_1002169C4();
    v40 = sub_100217284();
    v48 = -1 << v39[1]._TtCs12_SwiftObject_opaque[0];
    v49 = v40 & ~v48;
    if (((*&v39[1].containerMap[(v49 >> 3) & 0xFFFFFFFFFFFFFF8] >> v49) & 1) == 0)
    {
LABEL_21:
      v39, v41, v42, v43, v44, v45, v46, v47, v130, v131, v132, *(&v132 + 1), v133, v134, v135, v136, v137, v138;
      goto LABEL_23;
    }

    v50 = ~v48;
    while (1)
    {
      v51 = (*v39[1].endpoint + 16 * v49);
      v41 = v51[1];
      v52 = *v51 == v38 && v41 == v37;
      if (v52 || (sub_1002171A4() & 1) != 0)
      {
        break;
      }

      v49 = (v49 + 1) & v50;
      if (((*&v39[1].containerMap[(v49 >> 3) & 0xFFFFFFFFFFFFFF8] >> v49) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v37, v41, v42, v43, v44, v45, v46, v47, v130, v131, v132, *(&v132 + 1), v133, v134, v135, v136, v137, v138;
    v33 = v39;
LABEL_6:
    v33, v26, v27, v28, v29, v30, v31, v32, v130, v131, v132, *(&v132 + 1), v133, v134, v135, v136, v137, v138;
    v16 = v146;
    containerMap = v147;
  }

  while (1)
  {
    v34 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v34 >= v16)
    {
      a1, v17, v18, v19, v20, v21, v22, v23;
      return;
    }

    v15 = *&containerMap[8 * v34];
    ++v24;
    if (v15)
    {
      v24 = v34;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1001F07C8(_TtC18TrustedPeersHelper6Client *a1, _TtC18TrustedPeersHelper6Client **a2, uint64_t a3, _BYTE *a4, uint64_t a5, id a6, const char *a7, ...)
{
  v97 = a7;
  v104 = a4;
  v105 = a5;
  v111 = a3;
  v108 = a2;
  v103 = sub_100216384();
  __chkstk_darwin(v103, v9);
  v102 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  containerMap = a1[1].containerMap;
  v13 = 1 << a1[1]._TtCs12_SwiftObject_opaque[0];
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *a1[1].containerMap;
  v101 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc;
  v109 = a1;
  v110 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v16 = (v13 + 63) >> 6;
  v100 = (v10 + 8);

  v24 = 0;
  *&v25 = 136446210;
  v95 = v25;
  v106 = a1[1].containerMap;
  v107 = v16;
  v96 = a6;
  if (!v15)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
LABEL_12:
      v35 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v36 = (*v109[1].endpoint + ((v24 << 10) | (16 * v35)));
      v38 = *v36;
      v37 = v36[1];
      v39 = *v108;
      if (!*(*v108)->endpoint)
      {

        goto LABEL_23;
      }

      sub_100217264();

      sub_1002169C4();
      v40 = sub_100217284();
      v48 = -1 << v39[1]._TtCs12_SwiftObject_opaque[0];
      v49 = v40 & ~v48;
      if ((*&v39[1].containerMap[(v49 >> 3) & 0xFFFFFFFFFFFFFF8] >> v49))
      {
        break;
      }

LABEL_21:
      v39, v41, v42, v43, v44, v45, v46, v47, v93, v94, v95, *(&v95 + 1), v96, v97, v98, v99, v100, v101;
      containerMap = v106;
LABEL_23:
      type metadata accessor for MachineMO();
      v53 = v111;
      v54 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*&v101[v111]];
      v55 = sub_100216964();
      [v54 setMachineID:v55];

      [v54 setContainer:*(v53 + v110)];
      [v54 setSeenOnFullList:1];
      v56 = v102;
      sub_100216374();
      isa = sub_1002162F4().super.isa;
      (*v100)(v56, v103);
      [v54 setModified:isa];

      [v54 setStatus:a6];
      if (qword_100297540 != -1)
      {
        swift_once();
      }

      v58 = sub_100216774();
      sub_100002648(v58, qword_10029E728);
      v59 = v54;
      v60 = sub_100216754();
      v61 = sub_100216C94();

      if (os_log_type_enabled(v60, v61))
      {
        HIDWORD(v99) = v61;
        v62 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v113 = v98;
        *v62 = v95;
        v63 = [v59 machineID];
        if (v63)
        {
          v64 = v63;
          v65 = sub_100216974();
          v67 = v66;
        }

        else
        {
          v65 = 0;
          v67 = 0;
        }

        v112[0] = v65;
        v112[1] = v67;
        sub_10001148C(&qword_10029D698, &unk_100226590);
        v75 = sub_100216994();
        v77 = v76;
        v78 = sub_100005FB0(v75, v76, &v113);
        v77, v79, v80, v81, v82, v83, v84, v85, v93, v94, v95, *(&v95 + 1), v96, v97, v98, v99, v100, v101;
        *(v62 + 4) = v78;
        _os_log_impl(&_mh_execute_header, v60, BYTE4(v99), v97, v62, 0xCu);
        sub_100006128(v98, v86, v87, v88, v89, v90, v91, v92);

        a6 = v96;
        containerMap = v106;
      }

      else
      {
      }

      *v104 = 1;
      [*(v111 + v110) addMachinesObject:v59];
      sub_10018B5EC(v112, v59);
      v26 = v112[0];
      v37, v27, v28, v29, v30, v31, v32, v33, v93, v94, v95, *(&v95 + 1), v96, v97, v98, v99, v100, v101;

      v16 = v107;
      if (!v15)
      {
        goto LABEL_8;
      }
    }

    v50 = ~v48;
    while (1)
    {
      v51 = (*v39[1].endpoint + 16 * v49);
      v41 = v51[1];
      v52 = *v51 == v38 && v41 == v37;
      if (v52 || (sub_1002171A4() & 1) != 0)
      {
        break;
      }

      v49 = (v49 + 1) & v50;
      if (((*&v39[1].containerMap[(v49 >> 3) & 0xFFFFFFFFFFFFFF8] >> v49) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v37, v41, v42, v43, v44, v45, v46, v47, v93, v94, v95, *(&v95 + 1), v96, v97, v98, v99, v100, v101;
    v39, v68, v69, v70, v71, v72, v73, v74, v93, v94, v95, *(&v95 + 1), v96, v97, v98, v99, v100, v101;
    containerMap = v106;
    v16 = v107;
  }

  while (v15);
LABEL_8:
  while (1)
  {
    v34 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v34 >= v16)
    {
      v109, v17, v18, v19, v20, v21, v22, v23;
      return;
    }

    v15 = *&containerMap[8 * v34];
    ++v24;
    if (v15)
    {
      v24 = v34;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1001F0D4C(_TtC18TrustedPeersHelper6Client *a1, _TtC18TrustedPeersHelper6Client **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, _BYTE *a8)
{
  v129 = a7;
  v130 = a8;
  v133 = a2;
  v128 = sub_100216384();
  __chkstk_darwin(v128, v13);
  v127 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  containerMap = a1[1].containerMap;
  v17 = 1 << a1[1]._TtCs12_SwiftObject_opaque[0];
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *a1[1].containerMap;
  v126 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc;
  v125 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v20 = (v17 + 63) >> 6;
  v142 = a3;
  v139 = a4;
  v140 = a3 + 56;
  v136 = a5 + 56;
  v137 = a4 + 56;
  v134 = a6 + 56;
  v124 = (v14 + 8);
  v135 = a1;

  v28 = 0;
  *&v29 = 136446210;
  v122 = v29;
  v138 = a6;
  v131 = v20;
  v132 = a5;
  if (v19)
  {
    while (1)
    {
LABEL_11:
      v31 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v32 = *v135[1].endpoint + ((v28 << 10) | (16 * v31));
      v33 = *v32;
      v34 = *(v32 + 8);
      v35 = *v133;
      if (*(*v133)->endpoint)
      {
        sub_100217264();

        sub_1002169C4();
        v36 = sub_100217284();
        v44 = -1 << v35[1]._TtCs12_SwiftObject_opaque[0];
        v45 = v36 & ~v44;
        if ((*&v35[1].containerMap[(v45 >> 3) & 0xFFFFFFFFFFFFFF8] >> v45))
        {
          v46 = ~v44;
          while (1)
          {
            v47 = (*v35[1].endpoint + 16 * v45);
            v37 = v47[1];
            v48 = *v47 == v33 && v37 == v34;
            if (v48 || (sub_1002171A4() & 1) != 0)
            {
              break;
            }

            v45 = (v45 + 1) & v46;
            if (((*&v35[1].containerMap[(v45 >> 3) & 0xFFFFFFFFFFFFFF8] >> v45) & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          v34, v37, v38, v39, v40, v41, v42, v43, v122, *(&v122 + 1), v123, v124, v125, v126, v127, v128, v129, v130;
          v35, v115, v116, v117, v118, v119, v120, v121, v122, *(&v122 + 1), v123, v124, v125, v126, v127, v128, v129, v130;
          goto LABEL_67;
        }

LABEL_20:
        v35, v37, v38, v39, v40, v41, v42, v43, v122, *(&v122 + 1), v123, v124, v125, v126, v127, v128, v129, v130;
        v20 = v131;
        a5 = v132;
      }

      else
      {
      }

      if (*(v142 + 16))
      {
        v49 = v142;
        sub_100217264();
        sub_1002169C4();
        v50 = sub_100217284();
        v57 = -1 << *(v49 + 32);
        v58 = v50 & ~v57;
        if ((*(v140 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58))
        {
          v59 = ~v57;
          do
          {
            v60 = (*(v142 + 48) + 16 * v58);
            v61 = v60[1];
            v62 = *v60 == v33 && v61 == v34;
            if (v62 || (sub_1002171A4() & 1) != 0)
            {
              goto LABEL_6;
            }

            v58 = (v58 + 1) & v59;
          }

          while (((*(v140 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) != 0);
        }
      }

      if (v139)
      {
        if (*(v139 + 16))
        {
          v63 = v139;
          sub_100217264();
          sub_1002169C4();
          v64 = sub_100217284();
          v65 = -1 << *(v63 + 32);
          v66 = v64 & ~v65;
          if ((*(v137 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66))
          {
            v67 = ~v65;
            do
            {
              v68 = (*(v139 + 48) + 16 * v66);
              v61 = v68[1];
              v69 = *v68 == v33 && v61 == v34;
              if (v69 || (sub_1002171A4() & 1) != 0)
              {
                goto LABEL_6;
              }

              v66 = (v66 + 1) & v67;
            }

            while (((*(v137 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) != 0);
          }
        }
      }

      if (a5)
      {
        if (*(a5 + 16))
        {
          sub_100217264();
          sub_1002169C4();
          v70 = sub_100217284();
          v71 = -1 << *(a5 + 32);
          v72 = v70 & ~v71;
          if ((*(v136 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72))
          {
            break;
          }
        }
      }

LABEL_51:
      if (v138 && *(v138 + 16) && (v76 = v138, sub_100217264(), sub_1002169C4(), v77 = sub_100217284(), v78 = -1 << *(v76 + 32), v79 = v77 & ~v78, ((*(v134 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79) & 1) != 0))
      {
        v80 = ~v78;
        while (1)
        {
          v81 = (*(v138 + 48) + 16 * v79);
          v61 = v81[1];
          v82 = *v81 == v33 && v61 == v34;
          if (v82 || (sub_1002171A4() & 1) != 0)
          {
            break;
          }

          v79 = (v79 + 1) & v80;
          if (((*(v134 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79) & 1) == 0)
          {
            goto LABEL_61;
          }
        }

LABEL_6:
        v34, v61, v51, v52, v53, v54, v55, v56, v122, *(&v122 + 1), v123, v124, v125, v126, v127, v128, v129, v130;
        if (!v19)
        {
          goto LABEL_7;
        }
      }

      else
      {
LABEL_61:
        if (qword_100297540 != -1)
        {
          swift_once();
        }

        v83 = sub_100216774();
        sub_100002648(v83, qword_10029E728);

        v84 = sub_100216754();
        v85 = sub_100216C94();
        v34, v86, v87, v88, v89, v90, v91, v92, v122, *(&v122 + 1), v123, v124, v125, v126, v127, v128, v129, v130;
        if (os_log_type_enabled(v84, v85))
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v141 = v94;
          *v93 = v122;
          *(v93 + 4) = sub_100005FB0(v33, v34, &v141);
          _os_log_impl(&_mh_execute_header, v84, v85, "Peer machineID is unknown, beginning grace period: %{public}s", v93, 0xCu);
          sub_100006128(v94, v95, v96, v97, v98, v99, v100, v101);
        }

        type metadata accessor for MachineMO();
        v102 = v129;
        v103 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*&v129[v126]];
        v104 = sub_100216964();
        [v103 setMachineID:v104];

        v105 = v125;
        [v103 setContainer:*&v125[v102]];
        [v103 setSeenOnFullList:0];
        v106 = v127;
        sub_100216374();
        isa = sub_1002162F4().super.isa;
        (*v124)(v106, v128);
        [v103 setModified:isa];

        [v103 setStatus:0];
        *v130 = 1;
        [*&v105[v102] addMachinesObject:v103];
        v34, v108, v109, v110, v111, v112, v113, v114, v122, *(&v122 + 1), v123, v124, v125, v126, v127, v128, v129, v130;

LABEL_67:
        v20 = v131;
        a5 = v132;
        if (!v19)
        {
          goto LABEL_7;
        }
      }
    }

    v73 = ~v71;
    while (1)
    {
      v74 = (*(a5 + 48) + 16 * v72);
      v61 = v74[1];
      v75 = *v74 == v33 && v61 == v34;
      if (v75 || (sub_1002171A4() & 1) != 0)
      {
        goto LABEL_6;
      }

      v72 = (v72 + 1) & v73;
      if (((*(v136 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
      {
        goto LABEL_51;
      }
    }
  }

LABEL_7:
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v20)
    {
      v135, v21, v22, v23, v24, v25, v26, v27;
      return;
    }

    v19 = *&containerMap[8 * v30];
    ++v28;
    if (v19)
    {
      v28 = v30;
      goto LABEL_11;
    }
  }

  __break(1u);
}

BOOL sub_1001F1538(void *a1, _BYTE *a2, char *a3, const char *a4, ...)
{
  v8 = sub_100216384();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v13) = sub_1001E6A4C(48);
  if (v13)
  {
    if (qword_100297540 != -1)
    {
      swift_once();
    }

    v14 = sub_100216774();
    sub_100002648(v14, qword_10029E728);
    v15 = a1;
    v16 = sub_100216754();
    v17 = sub_100216C54();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *v18 = 136446466;
      v19 = sub_1001E6BF0();
      v21 = v20;
      v22 = sub_100005FB0(v19, v20, &v86);
      v21, v23, v24, v25, v26, v27, v28, v29, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88;
      *(v18 + 4) = v22;
      *(v18 + 12) = 2082;
      v30 = [v15 machineID];
      if (v30)
      {
        v31 = v30;
        v32 = sub_100216974();
        v34 = v33;
      }

      else
      {
        v32 = 0;
        v34 = 0;
      }

      v84 = v32;
      v85 = v34;
      sub_10001148C(&qword_10029D698, &unk_100226590);
      v55 = sub_100216994();
      v57 = v56;
      v58 = sub_100005FB0(v55, v56, &v86);
      v57, v59, v60, v61, v62, v63, v64, v65, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88;
      *(v18 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v16, v17, a4, v18, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    v83 = a3;
    if (qword_100297540 != -1)
    {
      swift_once();
    }

    v35 = sub_100216774();
    sub_100002648(v35, qword_10029E728);
    v36 = a1;
    v37 = sub_100216754();
    v38 = sub_100216C94();

    if (os_log_type_enabled(v37, v38))
    {
      v81 = a2;
      HIDWORD(v82) = v13;
      v13 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v86 = v80;
      *v13 = 136446466;
      v39 = sub_1001E6BF0();
      v41 = v40;
      v42 = sub_100005FB0(v39, v40, &v86);
      v41, v43, v44, v45, v46, v47, v48, v49, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88;
      *(v13 + 4) = v42;
      *(v13 + 12) = 2082;
      v50 = [v36 machineID];
      if (v50)
      {
        v51 = v50;
        v52 = sub_100216974();
        v54 = v53;
      }

      else
      {
        v52 = 0;
        v54 = 0;
      }

      v84 = v52;
      v85 = v54;
      sub_10001148C(&qword_10029D698, &unk_100226590);
      v66 = sub_100216994();
      v68 = v67;
      v69 = sub_100005FB0(v66, v67, &v86);
      v68, v70, v71, v72, v73, v74, v75, v76, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88;
      *(v13 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v37, v38, v83, v13, 0x16u);
      swift_arrayDestroy();

      LOBYTE(v13) = BYTE4(v82);
      a2 = v81;
    }

    else
    {
    }

    [v36 setStatus:2];
    sub_100216374();
    isa = sub_1002162F4().super.isa;
    (*(v9 + 8))(v12, v8);
    [v36 setModified:isa];

    *a2 = 1;
  }

  return (v13 & 1) == 0;
}

void sub_1001F19F0(char *a1, void *a2, _TtC18TrustedPeersHelper6Client *a3, uint64_t a4)
{
  v38 = a2;
  v40 = a1;
  v41 = 0;
  v5 = 0;
  v44 = a3;
  containerMap = a3[1].containerMap;
  v7 = 1 << a3[1]._TtCs12_SwiftObject_opaque[0];
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *a3[1].containerMap;
  v10 = (v7 + 63) >> 6;
  v11 = a4 + 56;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v15 = v12 | (v5 << 6);
    if (!*(a4 + 16))
    {
      goto LABEL_23;
    }

    v48 = v9;
    v42 = v12 | (v5 << 6);
    v16 = (*v44[1].endpoint + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    sub_100217264();

    sub_1002169C4();
    v19 = sub_100217284();
    v27 = -1 << *(a4 + 32);
    v28 = v19 & ~v27;
    if ((*(v11 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
    {
      v29 = ~v27;
      while (1)
      {
        v30 = (*(a4 + 48) + 16 * v28);
        v20 = v30[1];
        v31 = *v30 == v18 && v20 == v17;
        if (v31 || (sub_1002171A4() & 1) != 0)
        {
          break;
        }

        v28 = (v28 + 1) & v29;
        if (((*(v11 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v17, v20, v21, v22, v23, v24, v25, v26, v37, v38, v39, v40, v41, v42, v44, v45, v46, v47;
      v9 = v48;
    }

    else
    {
LABEL_22:
      v17, v20, v21, v22, v23, v24, v25, v26, v37, v38, v39, v40, v41, v42, v44, v45, v46, v47;
      v9 = v48;
      v15 = v43;
LABEL_23:
      *&v40[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
      if (__OFADD__(v41++, 1))
      {
        __break(1u);
LABEL_26:

        sub_10018AB04(v40, v38, v41, v44, v33, v34, v35, v36);
        return;
      }
    }
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_26;
    }

    v14 = *&containerMap[8 * v5];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
}

char *sub_1001F1BFC(_TtC18TrustedPeersHelper6Client *a1, _TtC18TrustedPeersHelper6Client *a2)
{
  v3 = v2;
  v5 = a1;
  v6 = a1[1]._TtCs12_SwiftObject_opaque[0];
  v7 = v6 & 0x3F;
  containerMap = ((1 << v6) + 63) >> 6;
  v9 = 8 * containerMap;

  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (2)
  {
    v73 = v3;
    v74 = &v73;
    v75 = containerMap;
    __chkstk_darwin(v10, v11);
    v76 = &v73 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v76, v9);
    v77 = 0;
    v78 = v5;
    v16 = 0;
    containerMap = v5[1].containerMap;
    v17 = 1 << v5[1]._TtCs12_SwiftObject_opaque[0];
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *v5[1].containerMap;
    v3 = ((v17 + 63) >> 6);
    v20 = a2[1].containerMap;
    while (v19)
    {
      v21 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_14:
      v24 = v21 | (v16 << 6);
      if (!*a2->endpoint)
      {
        goto LABEL_24;
      }

      v79 = (v21 | (v16 << 6));
      v80 = v19;
      v25 = (*v5[1].endpoint + 16 * v24);
      v27 = *v25;
      v26 = v25[1];
      sub_100217264();

      sub_1002169C4();
      v28 = sub_100217284();
      v36 = -1 << a2[1]._TtCs12_SwiftObject_opaque[0];
      v9 = v28 & ~v36;
      if ((*&v20[(v9 >> 3) & 0xFFFFFFFFFFFFFF8] >> v9))
      {
        v37 = ~v36;
        while (1)
        {
          v38 = (*a2[1].endpoint + 16 * v9);
          v29 = v38[1];
          v39 = *v38 == v27 && v29 == v26;
          if (v39 || (sub_1002171A4() & 1) != 0)
          {
            break;
          }

          v9 = (v9 + 1) & v37;
          if (((*&v20[(v9 >> 3) & 0xFFFFFFFFFFFFFF8] >> v9) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v26, v29, v30, v31, v32, v33, v34, v35, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82;
        v5 = v78;
        v19 = v80;
      }

      else
      {
LABEL_23:
        v26, v29, v30, v31, v32, v33, v34, v35, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82;
        v5 = v78;
        v24 = v79;
        v19 = v80;
LABEL_24:
        *&v76[(v24 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v24;
        if (__OFADD__(v77++, 1))
        {
          __break(1u);
LABEL_27:
          v41 = sub_10018AB04(v76, v75, v77, v5, v12, v13, v14, v15);
          a2, v42, v43, v44, v45, v46, v47, v48, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82;
          return v41;
        }
      }
    }

    v22 = v16;
    while (1)
    {
      v16 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v16 >= v3)
      {
        goto LABEL_27;
      }

      v23 = *(containerMap + 8 * v16);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (swift_stdlib_isStackAllocationSafe())
    {
      v5, v50, v51, v52, v53, v54, v55, v56;
      continue;
    }

    break;
  }

  v57 = swift_slowAlloc();

  v58 = sub_1001EEF28(v57, containerMap, v5, a2);
  v5, v59, v60, v61, v62, v63, v64, v65;

  a2, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82;
  return v58;
}

_TtC18TrustedPeersHelper6Client *sub_1001F1F48(void *a1, void *a2)
{
  v67 = a2;
  v65 = sub_100216384();
  v4 = *(v65 - 1);
  __chkstk_darwin(v65, v5);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  v8 = [a1 machines];
  v9 = &_swiftEmptySetSingleton;
  if (v8)
  {
    v10 = v8;
    v69 = 0;
    type metadata accessor for MachineMO();
    sub_1001F3728(&qword_10029D588, type metadata accessor for MachineMO, &protocol conformance descriptor for NSObject);
    sub_100216BA4();

    if (v69)
    {
      v9 = v69;
    }
  }

  sub_1001E3B80(v9);
  v12 = v11;
  v9, v13, v14, v15, v16, v17, v18, v19, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72;
  v20 = sub_10019C848(v12);
  v12, v21, v22, v23, v24, v25, v26, v27, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72;
  v28 = [v68 allowedMachineIDs];
  v29 = &_swiftEmptySetSingleton;
  if (v28)
  {
    v69 = 0;
    v30 = v28;
    sub_100216BA4();

    if (v69)
    {
      v29 = v69;
    }
  }

  v31 = sub_1001F1BFC(v29, v20);
  v20, v32, v33, v34, v35, v36, v37, v38, v63, v2, v65, v66, v67, v68, v69, v70, v71, v72;
  v39 = v31 + 56;
  v40 = 1 << v31[32];
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v31 + 7);
  v43 = (v40 + 63) >> 6;
  v44 = (v4 + 8);
  v66 = v31;

  v45 = 0;
  if (v42)
  {
    while (1)
    {
      v46 = v45;
LABEL_15:
      v47 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      v48 = *(*(v66 + 6) + ((v46 << 10) | (16 * v47)) + 8);
      type metadata accessor for MachineMO();
      v49 = objc_allocWithZone(swift_getObjCClassFromMetadata());

      v50 = [v49 initWithContext:v67];
      v51 = sub_100216964();
      [v50 setMachineID:v51];

      [v50 setSeenOnFullList:1];
      [v50 setStatus:1];
      sub_100216374();
      isa = sub_1002162F4().super.isa;
      (*v44)(v7, v65);
      [v50 setModified:isa];

      [v68 addMachinesObject:v50];
      v48, v53, v54, v55, v56, v57, v58, v59, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72;

      if (!v42)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v46 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
    }

    if (v46 >= v43)
    {
      break;
    }

    v42 = *&v39[8 * v46];
    ++v45;
    if (v42)
    {
      v45 = v46;
      goto LABEL_15;
    }
  }

  v60 = sub_100216B94().super.isa;
  [v68 setAllowedMachineIDs:v60];

  v69 = 0;
  if ([v67 save:&v69])
  {
    return v69;
  }

  v62 = v69;
  sub_100216154();

  return swift_willThrow();
}

uint64_t sub_1001F2390()
{
  v1 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v2 = [*(v0 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) honorIDMSListChanges];
  if (v2)
  {
    v3 = v2;
    v4 = sub_100216974();
    v6 = v5;

    if (v4 == 5457241 && v6 == 0xE300000000000000)
    {
      v6, v7, v8, v9, v10, v11, v12, v13, v59, v60, v61, v62, v63, v64, v65, v66, vars0, vars8;
      goto LABEL_20;
    }

    v15 = sub_1002171A4();
    v6, v16, v17, v18, v19, v20, v21, v22, v59, v60, v61, v62, v63, v64, v65, v66, vars0, vars8;
    if (v15)
    {
LABEL_20:
      v44 = 1;
      return v44 & 1;
    }
  }

  v23 = [*(v0 + v1) honorIDMSListChanges];
  if (!v23)
  {
    goto LABEL_13;
  }

  v24 = v23;
  v25 = sub_100216974();
  v27 = v26;

  if (v25 == 20302 && v27 == 0xE200000000000000)
  {
    goto LABEL_21;
  }

  v36 = sub_1002171A4();
  v27, v37, v38, v39, v40, v41, v42, v43, v59, v60, v61, v62, v63, v64, v65, v66, vars0, vars8;
  v44 = 0;
  if ((v36 & 1) == 0)
  {
LABEL_13:
    v45 = [*(v0 + v1) honorIDMSListChanges];
    if (v45)
    {
      v46 = v45;
      v47 = sub_100216974();
      v27 = v48;

      if (v47 != 0x4E574F4E4B4E55 || v27 != 0xE700000000000000)
      {
        v50 = sub_1002171A4();
        v27, v51, v52, v53, v54, v55, v56, v57, v59, v60, v61, v62, v63, v64, v65, v66, vars0, vars8;
        v44 = v50 ^ 1;
        return v44 & 1;
      }

LABEL_21:
      v27, v28, v29, v30, v31, v32, v33, v34, v59, v60, v61, v62, v63, v64, v65, v66, vars0, vars8;
      v44 = 0;
      return v44 & 1;
    }

    goto LABEL_20;
  }

  return v44 & 1;
}

uint64_t sub_1001F2560(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1001F2578(char *a1, void *a2, _TtC18TrustedPeersHelper6Client *a3, uint64_t a4, _TtC18TrustedPeersHelper6Client *a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v44 = a8;
  v37 = a2;
  v42 = a6;
  v43 = a7;
  v46 = a5;
  v39 = a1;
  v40 = 0;
  v11 = 0;
  containerMap = a3[1].containerMap;
  v13 = 1 << a3[1]._TtCs12_SwiftObject_opaque[0];
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *a3[1].containerMap;
  v41 = a9;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_11:
    v20 = v17 | (v11 << 6);
    v21 = (*a3[1].endpoint + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    if ((*v21 != a4 || v22 != v46) && (sub_1002171A4() & 1) == 0)
    {

      v24 = sub_1001EFD14(v42, v43, v44, v41, v23, v22);
      v22, v25, v26, v27, v28, v29, v30, v31, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46;
      if (v24)
      {
        *&v39[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
        if (__OFADD__(v40++, 1))
        {
          __break(1u);
LABEL_18:

          sub_10018AB04(v39, v37, v40, a3, v33, v34, v35, v36);
          return;
        }
      }
    }
  }

  v18 = v11;
  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      goto LABEL_18;
    }

    v19 = *&containerMap[8 * v11];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1001F271C(_TtC18TrustedPeersHelper6Client *a1, uint64_t a2, _TtC18TrustedPeersHelper6Client *a3, void *a4, void *a5, void *a6, _TtC18TrustedPeersHelper6Client *a7)
{
  v8 = v7;
  v94 = a5;
  v95 = a6;
  v93 = a4;
  v97 = a2;
  v11 = a1[1]._TtCs12_SwiftObject_opaque[0];
  v12 = v11 & 0x3F;
  containerMap = ((1 << v11) + 63) >> 6;
  v14 = 8 * containerMap;

  v96 = a7;

  if (v12 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v89 = containerMap;
    v90 = v8;
    v88 = &v87;
    __chkstk_darwin(v16, v17);
    v91 = &v87 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v91, v14);
    v92 = 0;
    v14 = 0;
    containerMap = a1[1].containerMap;
    v22 = 1 << a1[1]._TtCs12_SwiftObject_opaque[0];
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v8 = v23 & *a1[1].containerMap;
    v24 = (v22 + 63) >> 6;
    while (v8)
    {
      v25 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v28 = v25 | (v14 << 6);
      v29 = (*a1[1].endpoint + 16 * v28);
      v31 = *v29;
      v30 = v29[1];
      if ((*v29 != v97 || v30 != a3) && (sub_1002171A4() & 1) == 0)
      {

        v32 = sub_1001EFD14(v93, v94, v95, v96, v31, v30);
        v30, v33, v34, v35, v36, v37, v38, v39, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96;
        if (v32)
        {
          *&v91[(v28 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v28;
          if (__OFADD__(v92++, 1))
          {
            __break(1u);
LABEL_19:
            v41 = sub_10018AB04(v91, v89, v92, a1, v18, v19, v20, v21);
            v96, v42, v43, v44, v45, v46, v47, v48, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96;
            a3, v49, v50, v51, v52, v53, v54, v55, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96;
            return v41;
          }
        }
      }
    }

    v26 = v14;
    while (1)
    {
      v14 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v14 >= v24)
      {
        goto LABEL_19;
      }

      v27 = *(containerMap + 8 * v14);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v8 = (v27 - 1) & v27;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    a1, v57, v58, v59, v60, v61, v62, v63;
  }

  v64 = swift_slowAlloc();

  v65 = v96;

  v41 = sub_1001EF080(v64, containerMap, a1, v97, a3, v93, v94, v95, v65);
  a1, v66, v67, v68, v69, v70, v71, v72;

  v65, v73, v74, v75, v76, v77, v78, v79, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96;
  a3, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96;
  return v41;
}

void sub_1001F2A24(char *a1, void *a2, _TtC18TrustedPeersHelper6Client *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v42 = a7;
  v35 = a2;
  v39 = a5;
  v40 = a6;
  v37 = a1;
  v38 = 0;
  v9 = 0;
  containerMap = a3[1].containerMap;
  v11 = 1 << a3[1]._TtCs12_SwiftObject_opaque[0];
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *a3[1].containerMap;
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v9 << 6);
    v19 = (*a3[1].endpoint + 16 * v18);
    v21 = *v19;
    v20 = v19[1];

    v22 = sub_1001EFD14(a4, v39, v40, v42, v21, v20);
    v20, v23, v24, v25, v26, v27, v28, v29, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44;
    if (v22)
    {
      *&v37[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
      if (__OFADD__(v38++, 1))
      {
        __break(1u);
LABEL_15:

        sub_10018AB04(v37, v35, v38, a3, v31, v32, v33, v34);
        return;
      }
    }
  }

  v16 = v9;
  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_15;
    }

    v17 = *&containerMap[8 * v9];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1001F2B8C(_TtC18TrustedPeersHelper6Client *a1, void *a2, void *a3, void *a4, _TtC18TrustedPeersHelper6Client *a5)
{
  containerMap = v5;
  v76 = a3;
  v77 = a4;
  v75 = a2;
  v9 = a1[1]._TtCs12_SwiftObject_opaque[0];
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;

  if (v10 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v71 = v11;
    v72 = containerMap;
    v70 = &v69;
    __chkstk_darwin(v13, v14);
    v73 = &v69 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v73, v12);
    v74 = 0;
    v12 = 0;
    containerMap = a1[1].containerMap;
    v19 = 1 << a1[1]._TtCs12_SwiftObject_opaque[0];
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *a1[1].containerMap;
    v11 = (v19 + 63) >> 6;
    while (v21)
    {
      v22 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_12:
      v25 = v22 | (v12 << 6);
      v26 = (*a1[1].endpoint + 16 * v25);
      v28 = *v26;
      v27 = v26[1];

      v29 = sub_1001EFD14(v75, v76, v77, a5, v28, v27);
      v27, v30, v31, v32, v33, v34, v35, v36, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78;
      if (v29)
      {
        *&v73[(v25 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v25;
        if (__OFADD__(v74++, 1))
        {
          __break(1u);
LABEL_16:
          v38 = sub_10018AB04(v73, v71, v74, a1, v15, v16, v17, v18);
          a5, v39, v40, v41, v42, v43, v44, v45, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78;
          return v38;
        }
      }
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        goto LABEL_16;
      }

      v24 = *&containerMap[8 * v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v21 = (v24 - 1) & v24;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    a1, v47, v48, v49, v50, v51, v52, v53;
  }

  v54 = swift_slowAlloc();

  v38 = sub_1001EEFC4(v54, v11, a1, v75, v76, v77, a5);
  a1, v55, v56, v57, v58, v59, v60, v61;

  a5, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78;
  return v38;
}

BOOL sub_1001F2E2C(uint64_t a1, _TtC18TrustedPeersHelper6Client *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_10004C758(a1, a2, a3);
  if (a4)
  {
    v12 = sub_10004C758(a1, a2, a4);
  }

  else
  {
    v12 = 0;
  }

  v13 = (a5 != 0) | v12;
  if (a5 && (v12 & 1) == 0)
  {
    v13 = sub_10004C758(a1, a2, a5);
  }

  if (a6)
  {
    if (v13)
    {
      if ((v11 & 1) == 0)
      {
LABEL_10:
        v14 = 1;
        goto LABEL_19;
      }

LABEL_14:
      if (qword_100297540 != -1)
      {
        swift_once();
      }

      v15 = sub_100216774();
      sub_100002648(v15, qword_10029E728);
      v16 = sub_100216754();
      v17 = sub_100216C54();
      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_25;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "Detected ego MID on both allowed section and evicted/unknown removal section of the deleted list, bailing from MID roll evaluation";
      goto LABEL_24;
    }

    v13 = sub_10004C758(a1, a2, a6);
  }

  if (v13)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  v14 = v11 ^ 1;
LABEL_19:
  if (sub_1002169D4() < 26)
  {
    if (qword_100297540 != -1)
    {
      swift_once();
    }

    v20 = sub_100216774();
    sub_100002648(v20, qword_10029E728);
    v16 = sub_100216754();
    v17 = sub_100216C54();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_25;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Empty prefix, returning";
    goto LABEL_24;
  }

  sub_1002169F4();
  v29 = sub_100216AC4();
  v30 = v22;
  v31 = v23;
  v32 = v24;
  if ((v14 & 1) == 0)
  {
    if ((v11 & 1) == 0)
    {
      v24, v22, v23, v24, v25, v26, v27, v28, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93;
      return 0;
    }

    v58 = sub_1001F2B8C(v57, v29, v30, v31, v32);
    v32, v59, v60, v61, v62, v63, v64, v65, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93;
    v66 = *v58->endpoint;
    v58, v67, v68, v69, v70, v71, v72, v73;
    if (v66 < 2)
    {
      return 0;
    }

    if (qword_100297540 != -1)
    {
      swift_once();
    }

    v74 = sub_100216774();
    sub_100002648(v74, qword_10029E728);
    v16 = sub_100216754();
    v17 = sub_100216C54();
    if (!os_log_type_enabled(v16, v17))
    {
LABEL_25:

      return 0;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Possible IdMS trust maintenance";
LABEL_24:
    _os_log_impl(&_mh_execute_header, v16, v17, v19, v18, 2u);

    goto LABEL_25;
  }

  v34 = sub_1001F271C(v33, a1, a2, v29, v30, v31, v32);
  a2, v35, v36, v37, v38, v39, v40, v41, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93;
  v32, v42, v43, v44, v45, v46, v47, v48, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94;
  v49 = *v34->endpoint;
  v34, v50, v51, v52, v53, v54, v55, v56;
  return v49 != 0;
}

void sub_1001F31D8(uint64_t a1)
{
  v2 = sub_1002168A4();
  v58 = *(v2 - 1);
  v59 = v2;
  __chkstk_darwin(v2, v3);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_100216894();
  v6 = *(v60 - 8);
  __chkstk_darwin(v60, v7);
  v57 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
    v10 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v56 = v6;
  v10 = sub_1001830AC(v9, 0);
  v11 = sub_10018FF74(v62, v10 + 4, v9, a1);
  v12 = v62[0];

  sub_1001ACCA0(v12);
  if (v11 == v9)
  {
    v6 = v56;
LABEL_5:
    v62[0] = v10;
    sub_1001EF23C(v62);
    v13 = v62[0];
    v56 = sub_10001148C(&qword_10029DB40, &qword_1002267D0);
    sub_1001AC36C(&qword_10029E750, &qword_10029DB40, &qword_1002267D0, &protocol conformance descriptor for [A]);
    v14 = sub_100216914();
    v16 = v15;
    v13, v15, v17, v18, v19, v20, v21, v22;
    v23 = sub_1001E3660(v14, v16);
    v25 = v24;
    sub_1001F3728(&qword_10029E758, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    v26 = v59;
    sub_100216884();
    sub_100012558(v23, v25);
    sub_1001EE968(v23, v25, v5);
    sub_100002BF0(v23, v25, v27, v28, v29, v30, v31, v32);
    v33 = v57;
    sub_100216874();
    sub_100002BF0(v23, v25, v34, v35, v36, v37, v38, v39);
    (v58)[1](v5, v26);
    v40 = sub_1001E4190(v33);
    v62[0] = v40;
    sub_100216914();
    v40, v41, v42, v43, v44, v45, v46, v47, v55, v56, v57, v58, v59, v60, v61, v62[0], v62[1], v62[2];
    (*(v6 + 1))(v33, v60);
    return;
  }

  __break(1u);

  v62[0], v48, v49, v50, v51, v52, v53, v54;
  __break(1u);
}

void sub_1001F3558()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = off_1002AF8A0;
  v7 = off_1002AF8A0;
  if (!off_1002AF8A0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1001F3770;
    v3[3] = &unk_10027F138;
    v3[4] = &v4;
    sub_1001F3770(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    v0();
  }

  else
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"_Bool soft_MetricsOverrideTestsAreEnabled(void)"];
    [v1 handleFailureInFunction:v2 file:@"TrustedPeersHelper-Bridging-Header.h" lineNumber:89 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1001F3670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1001F3688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1001EECF0(sub_1001F3708, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1001F36F0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1001F3728(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1001F3770(void *a1)
{
  v5[0] = 0;
  if (!qword_1002AF8A8)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_1001F38F4;
    v5[4] = &unk_10027F170;
    v5[5] = v5;
    v6 = off_100288E40;
    v7 = 0;
    qword_1002AF8A8 = _sl_dlopen();
  }

  v2 = qword_1002AF8A8;
  if (!qword_1002AF8A8)
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *KeychainCircleLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"TrustedPeersHelper-Bridging-Header.h" lineNumber:86 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "MetricsOverrideTestsAreEnabled");
  *(*(a1[4] + 8) + 24) = result;
  off_1002AF8A0 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t sub_1001F38F4(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1002AF8A8 = result;
  return result;
}

char *sub_1001F3968(_TtC18TrustedPeersHelper6Client *a1, const char *a2, uint64_t a3, _TtC18TrustedPeersHelper6Client *a4)
{
  v10 = &v4[OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_secret];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v4[OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_bottleSalt];
  *v11 = a3;
  *(v11 + 1) = a4;
  sub_100012558(a1, a2);

  sub_1001F6234(1u, a1, a2, a3, a4);
  if (v5)
  {
    a4, v13, v14, v15, v16, v17, v18, v19, v164, v167, v170, v172, v175, v179, v183, v186, v189, v193;
    sub_100002BF0(a1, a2, v20, v21, v22, v23, v24, v25);
    type metadata accessor for EscrowKeys();
    sub_100002BF0(*v10, *(v10 + 1), v31, v32, v33, v34, v35, v36);
    *(v11 + 1), v37, v38, v39, v40, v41, v42, v43, v165, v168, v171, v173, v176, v180, v184, v187, v190, v195;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v200 = v12;
    v206 = v13;
    v26 = sub_1001F693C(v12, v13);
    v27 = [objc_allocWithZone(_SFECKeyPair) initWithSecKey:v26];

    v28 = OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_encryptionKey;
    *&v4[OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_encryptionKey] = v27;
    sub_1001F6234(0, a1, a2, a3, a4);
    v198 = v29;
    v199 = v28;
    v194 = v30;
    v45 = sub_1001F693C(v30, v29);
    v46 = [objc_allocWithZone(_SFECKeyPair) initWithSecKey:v45];

    v47 = OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_signingKey;
    *&v4[OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_signingKey] = v46;
    sub_1001F6234(2u, a1, a2, a3, a4);
    v49 = v48;
    v51 = v50;
    a4, v50, v52, v53, v54, v55, v56, v57, v164, v167, v170, v172, v175, v179, v47, v4, v189, v194;
    v58 = v49;
    v181 = objc_opt_self();
    v59 = [objc_allocWithZone(_SFAESKeySpecifier) initWithBitSize:{objc_msgSend(v181, "aes256BitSize")}];
    v60 = objc_allocWithZone(_SFAESKey);
    sub_100012558(v58, v51);
    v191 = v58;
    v61 = v51;
    v62 = sub_100013D6C(v58, v51, v59);
    v174 = v59;
    sub_100002BF0(v191, v51, v63, v64, v65, v66, v67, v68);
    v69 = v188;
    v169 = OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_symmetricKey;
    *(v188 + OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_symmetricKey) = v62;
    v70 = [objc_msgSend(*&v185[v188] "publicKey")];
    swift_unknownObjectRelease();
    v71 = sub_100216224();
    v177 = v61;
    v73 = v72;

    v74 = ccsha384_di();
    v204 = sub_10001393C([v181 ccsha384_diSize]);
    v205 = v75;
    v202 = v71;
    v203 = v73;
    sub_100012558(v71, v73);
    sub_100013234(&v204, &v202, v74, v76, v77, v78, v79, v80);
    v81 = v204;
    v82 = v205;
    v83 = sub_100216214(0);
    v182 = v84;
    sub_100002BF0(v71, v73, v85, v86, v87, v88, v89, v90);
    sub_100002BF0(v81, v82, v91, v92, v93, v94, v95, v96);
    sub_100002BF0(v202, v203, v97, v98, v99, v100, v101, v102);
    v103 = [*&v185[v188] keyData];
    v104 = sub_100216224();
    v106 = v105;

    sub_1001F6C68(v104, v106, v83, v182);
    sub_100002BF0(v104, v106, v107, v108, v109, v110, v111, v112);
    v113 = [*(v188 + v199) keyData];
    v114 = sub_100216224();
    v116 = v115;

    sub_1001F6F60(v114, v116, v83, v182);
    sub_100002BF0(v114, v116, v117, v118, v119, v120, v121, v122);
    v123 = [*&v169[v188] keyData];
    v124 = sub_100216224();
    v126 = v125;

    sub_1001F725C(v124, v126, v83, v182);
    sub_100002BF0(v124, v126, v127, v128, v129, v130, v131, v132);

    v182, v133, v134, v135, v136, v137, v138, v139, v166, v169, 0, v174, v177, v182, v185, v188, v191, v196;
    sub_100002BF0(v192, v178, v140, v141, v142, v143, v144, v145);
    sub_100002BF0(v197, v198, v146, v147, v148, v149, v150, v151);
    sub_100002BF0(v200, v206, v152, v153, v154, v155, v156, v157);
    v201.receiver = v69;
    v201.super_class = type metadata accessor for EscrowKeys();
    v4 = [(Client *)&v201 init];
    sub_100002BF0(a1, a2, v158, v159, v160, v161, v162, v163);
  }

  return v4;
}

unint64_t sub_1001F3F9C(_BYTE *a1, unint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      return sub_100017F84(a1, &a1[a2]);
    }

    else
    {
      sub_100216074();
      swift_allocObject();
      sub_100216024();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1002161D4();
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

id sub_1001F407C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EscrowKeys();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1001F4158()
{
  result = qword_10029E7D0;
  if (!qword_10029E7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029E7D0);
  }

  return result;
}

uint64_t sub_1001F41AC(uint64_t a1)
{
  v2 = sub_1001F4660();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001F41E8(uint64_t a1)
{
  v2 = sub_1001F4660();

  return Error<>._code.getter(a1, v2);
}

unint64_t sub_1001F4224(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      sub_100216FD4(23);
      0xE000000000000000, v29, v30, v31, v32, v33, v34, v35, v37, v39, 0, 0xE000000000000000, v44, v46, v48, v50, vars0, vars8;
      v42 = 0xD000000000000015;
      v57._countAndFlagsBits = a1;
      v57._object = a2;
      sub_100216A14(v57);
      return v42;
    }

    sub_100216FD4(35);
    0xE000000000000000, v4, v5, v6, v7, v8, v9, v10, v37, v39, 0, 0xE000000000000000, v44, v46, v48, v50, vars0, vars8;
    v11 = 0x8000000100227B00;
    v12 = 0xD000000000000021;
LABEL_6:
    v41 = v12;
    v43 = v11;
    HIDWORD(v40) = a1;
    v56._countAndFlagsBits = sub_100217174();
    object = v56._object;
    sub_100216A14(v56);
    object, v21, v22, v23, v24, v25, v26, v27, v38, v40, v41, v43, v45, v47, v49, v51, vars0a, vars8a;
    return v42;
  }

  if (a3 == 2)
  {
    sub_100216FD4(23);
    0xE000000000000000, v13, v14, v15, v16, v17, v18, v19, v37, v39, 0, 0xE000000000000000, v44, v46, v48, v50, vars0, vars8;
    v11 = 0x800000010023E850;
    v12 = 0xD000000000000015;
    goto LABEL_6;
  }

  if (a1 | a2)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000015;
  }
}

void *sub_1001F43B0(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v6 = sub_10001900C(_swiftEmptyArrayStorage);
  v7 = sub_1001F4224(a1, a2, a3);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = sub_100216974();
    v13 = v12;
    v53 = &type metadata for String;
    *&v51 = v9;
    *(&v51 + 1) = v10;
    sub_1000125AC(&v51, &v48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100185894(&v48, v11, v13, isUniquelyReferenced_nonNull_native);
    v13, v15, v16, v17, v18, v19, v20, v21, v44, v6, v48, *(&v48 + 1), v49, v50, v51, *(&v51 + 1), v52, v53;
    v6 = v45;
  }

  if (a3 == 2)
  {
    v35 = sub_100216974();
    v37 = v36;
    v38 = a1;
    v39 = objc_allocWithZone(NSError);
    v40 = sub_100216964();
    v41 = [v39 initWithDomain:v40 code:v38 userInfo:0];

    v53 = sub_1001F61E8();
    *&v51 = v41;
    sub_1000125AC(&v51, &v48);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v46 = v6;
    sub_100185894(&v48, v35, v37, v42);
    v34 = v37;
    goto LABEL_7;
  }

  if (!a3)
  {
    v22 = sub_100216974();
    v24 = v23;
    v25 = [objc_allocWithZone(NSError) initWithDomain:NSOSStatusErrorDomain code:a1 userInfo:0];
    v53 = sub_1001F61E8();
    *&v51 = v25;
    sub_1000125AC(&v51, &v48);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v46 = v6;
    sub_100185894(&v48, v22, v24, v26);
    v34 = v24;
LABEL_7:
    v34, v27, v28, v29, v30, v31, v32, v33, v44, v46, v48, *(&v48 + 1), v49, v50, v51, *(&v51 + 1), v52, v53;
    return v47;
  }

  return v6;
}

uint64_t sub_1001F460C()
{
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      return 5;
    }

    else if (*v0 == 0)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else if (*(v0 + 16))
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

unint64_t sub_1001F4660()
{
  result = qword_10029E7D8;
  if (!qword_10029E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029E7D8);
  }

  return result;
}

void sub_1001F46B4(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t *a4, unsigned int *a5, _BYTE *a6, uint64_t a7, unsigned __int8 a8, _TtC18TrustedPeersHelper6Client **a9, uint64_t a10, void *a11)
{
  v12 = a2;
  v15 = *a1;
  v14 = a1[1];
  v16 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v281 = a4;
      v282 = a5;
      v283 = a6;
      sub_100012558(a2, a3);

      sub_100002BF0(v15, v14, v32, v33, v34, v35, v36, v37);
      *&v288 = v15;
      *(&v288 + 1) = v14 & 0x3FFFFFFFFFFFFFFFLL;
      v277 = a1;
      *a1 = xmmword_10021D470;
      sub_100002BF0(0, 0xC000000000000000, v38, v39, v40, v41, v42, v43);
      sub_1002161A4();
      v44 = v288;
      v45 = *(v288 + 16);
      v46 = *(v288 + 24);
      v47 = sub_100216034();
      if (!v47)
      {
        sub_100002BF0(v12, a3, v48, v49, v50, v51, v52, v53);
        __break(1u);
        goto LABEL_151;
      }

      v54 = v47;
      v55 = sub_100216064();
      v56 = v45 - v55;
      if (__OFSUB__(v45, v55))
      {
        __break(1u);
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      v57 = __OFSUB__(v46, v45);
      v58 = v46 - v45;
      if (v57)
      {
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

      v59 = sub_100216054();
      if (v59 >= v58)
      {
        v60 = v58;
      }

      else
      {
        v60 = v59;
      }

      v61 = v54 + v56;
      v62 = a3 >> 62;
      if ((a3 >> 62) > 1)
      {
        if (v62 != 2)
        {
          memset(v287, 0, 14);
          v63 = *v281;
          v64 = v281[1];
          sub_100012558(*v281, v64);
          v272 = a11;
          v65 = &v60[v61];
          v269 = a10;
          v266 = a9;
          v263 = a8;
          v260 = a7;
          v70 = v287;
          v66 = v282;
          v67 = v63;
          v68 = v64;
          v69 = v61;
          goto LABEL_80;
        }

        v279 = v60;
        v124 = *(v12 + 16);
        v125 = *(v12 + 24);
        v126 = sub_100216034();
        if (v126)
        {
          v127 = sub_100216064();
          if (__OFSUB__(v124, v127))
          {
LABEL_146:
            __break(1u);
            goto LABEL_147;
          }

          v126 += v124 - v127;
        }

        v57 = __OFSUB__(v125, v124);
        v128 = v125 - v124;
        if (v57)
        {
          __break(1u);
LABEL_47:
          v100 = v277;
          if (v276 >> 32 >= v276)
          {
            v129 = sub_100216034();
            if (!v129)
            {
              v103 = 0;
LABEL_107:
              v211 = sub_100216054();
              if (v211 >= (v276 >> 32) - v276)
              {
                v210 = (v276 >> 32) - v276;
              }

              else
              {
                v210 = v211;
              }

              goto LABEL_110;
            }

            v130 = v129;
            v131 = sub_100216064();
            if (!__OFSUB__(v276, v131))
            {
              v103 = v276 - v131 + v130;
              goto LABEL_107;
            }

            goto LABEL_144;
          }

          goto LABEL_135;
        }
      }

      else
      {
        if (!v62)
        {
          v287[0] = v12;
          LOWORD(v287[1]) = a3;
          BYTE2(v287[1]) = BYTE2(a3);
          BYTE3(v287[1]) = BYTE3(a3);
          BYTE4(v287[1]) = BYTE4(a3);
          BYTE5(v287[1]) = BYTE5(a3);
          v63 = *v281;
          v64 = v281[1];
          sub_100012558(*v281, v64);
          v272 = a11;
          v65 = &v60[v61];
          v269 = a10;
          v266 = a9;
          v263 = a8;
          v260 = a7;
          v66 = v282;
          v67 = v63;
          v68 = v64;
          v69 = v61;
          v70 = v287 + BYTE6(a3);
LABEL_80:
          sub_1001F55A4(v67, v68, v66, v69, v65, v287, v70, v283, v260, v263, v266, v269, v272);
          v162 = v63;
LABEL_81:
          sub_100002BF0(v162, v64, v156, v157, v158, v159, v160, v161);
          sub_100002BF0(v12, a3, v163, v164, v165, v166, v167, v168);
          sub_100002BF0(v12, a3, v169, v170, v171, v172, v173, v174);
          *a1 = v44;
          a1[1] = *(&v44 + 1) | 0x8000000000000000;
          return;
        }

        v279 = v60;
        v128 = (v12 >> 32) - v12;
        if (v12 >> 32 < v12)
        {
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        v126 = sub_100216034();
        if (v126)
        {
          v150 = sub_100216064();
          if (__OFSUB__(v12, v150))
          {
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
          }

          v126 += v12 - v150;
        }
      }

      v151 = sub_100216054();
      if (v151 >= v128)
      {
        v152 = v128;
      }

      else
      {
        v152 = v151;
      }

      v153 = v152 + v126;
      if (v126)
      {
        v154 = v153;
      }

      else
      {
        v154 = 0;
      }

      v155 = *v281;
      v64 = v281[1];
      sub_100012558(*v281, v64);
      sub_1001F55A4(v155, v64, v282, v61, &v279[v61], v126, v154, v283, a7, a8, a9, a10, a11);
      v162 = v155;
      goto LABEL_81;
    }

    v86 = a3 >> 62;
    *(&v288 + 7) = 0;
    *&v288 = 0;
    if ((a3 >> 62) > 1)
    {
      if (v86 != 2)
      {
        memset(v287, 0, 14);
        v87 = *a4;
        v88 = a4[1];
        sub_100012558(*a4, v88);
        sub_1001F55A4(v87, v88, a5, &v288, &v288, v287, v287, a6, a7, a8, a9, a10, a11);
        goto LABEL_66;
      }

      v107 = *(a2 + 16);
      v108 = *(a2 + 24);
      v109 = sub_100216034();
      if (v109)
      {
        v110 = sub_100216064();
        if (__OFSUB__(v107, v110))
        {
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        v109 += v107 - v110;
      }

      v57 = __OFSUB__(v108, v107);
      v111 = v108 - v107;
      if (v57)
      {
        goto LABEL_137;
      }

      v112 = sub_100216054();
      if (v112 >= v111)
      {
        v113 = v111;
      }

      else
      {
        v113 = v112;
      }

      v114 = v113 + v109;
      if (v109)
      {
        v115 = v114;
      }

      else
      {
        v115 = 0;
      }

      v116 = *a4;
      v117 = a4[1];
      sub_100012558(*a4, v117);
      v273 = a11;
      v270 = a10;
      v267 = a9;
      v264 = a8;
      v261 = a7;
      v118 = v116;
      v119 = v117;
      v120 = a5;
      v121 = v109;
      v122 = v115;
      v123 = a6;
    }

    else
    {
      if (!v86)
      {
        v287[0] = a2;
        LOWORD(v287[1]) = a3;
        BYTE2(v287[1]) = BYTE2(a3);
        BYTE3(v287[1]) = BYTE3(a3);
        BYTE4(v287[1]) = BYTE4(a3);
        BYTE5(v287[1]) = BYTE5(a3);
        v87 = *a4;
        v88 = a4[1];
        sub_100012558(*a4, v88);
        sub_1001F55A4(v87, v88, a5, &v288, &v288, v287, v287 + BYTE6(a3), a6, a7, a8, a9, a10, a11);
LABEL_66:
        v141 = v87;
        v142 = v88;
        goto LABEL_67;
      }

      v132 = (a2 >> 32) - a2;
      if (a2 >> 32 < a2)
      {
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      v135 = sub_100216034();
      if (v135)
      {
        v136 = sub_100216064();
        if (__OFSUB__(v12, v136))
        {
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        v135 += v12 - v136;
      }

      v137 = sub_100216054();
      if (v137 >= v132)
      {
        v138 = (v12 >> 32) - v12;
      }

      else
      {
        v138 = v137;
      }

      v139 = v138 + v135;
      if (v135)
      {
        v140 = v139;
      }

      else
      {
        v140 = 0;
      }

      v116 = *a4;
      v117 = a4[1];
      sub_100012558(*a4, v117);
      v273 = a11;
      v270 = a10;
      v267 = a9;
      v264 = a8;
      v261 = a7;
      v118 = v116;
      v119 = v117;
      v120 = a5;
      v121 = v135;
      v122 = v140;
      v123 = a6;
    }

    sub_1001F55A4(v118, v119, v120, &v288, &v288, v121, v122, v123, v261, v264, v267, v270, v273);
    v141 = v116;
    v142 = v117;
LABEL_67:
    sub_100002BF0(v141, v142, v91, v92, v93, v94, v95, v96);
    sub_100002BF0(v12, a3, v144, v145, v146, v147, v148, v149);
    return;
  }

  v281 = a4;
  v282 = a5;
  v283 = a6;
  if (!v16)
  {
    v277 = a1;
    v279 = a3;
    v276 = a2;
    sub_100012558(a2, a3);
    sub_100002BF0(v15, v14, v17, v18, v19, v20, v21, v22);
    *&v288 = v15;
    WORD4(v288) = v14;
    BYTE10(v288) = BYTE2(v14);
    BYTE11(v288) = BYTE3(v14);
    BYTE12(v288) = BYTE4(v14);
    BYTE13(v288) = BYTE5(v14);
    v12 = &v288 + BYTE6(v14);
    v23 = v279 >> 62;
    BYTE14(v288) = BYTE6(v14);
    if ((v279 >> 62) > 1)
    {
      if (v23 != 2)
      {
        memset(v287, 0, 14);
        v24 = *v281;
        v25 = v281[1];
        sub_100012558(*v281, v25);
        sub_1001F55A4(v24, v25, v282, &v288, &v288 + BYTE6(v14), v287, v287, v283, a7, a8, a9, a10, a11);
        goto LABEL_64;
      }

      v97 = *(v276 + 16);
      v98 = *(v276 + 24);
      v99 = sub_100216034();
      v100 = v277;
      if (v99)
      {
        v101 = v99;
        v102 = sub_100216064();
        if (__OFSUB__(v97, v102))
        {
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        v103 = v97 - v102 + v101;
      }

      else
      {
        v103 = 0;
      }

      if (!__OFSUB__(v98, v97))
      {
        v209 = sub_100216054();
        if (v209 >= v98 - v97)
        {
          v210 = v98 - v97;
        }

        else
        {
          v210 = v209;
        }

LABEL_110:
        v212 = v210 + v103;
        if (v103)
        {
          v213 = v212;
        }

        else
        {
          v213 = 0;
        }

        v214 = *v281;
        v25 = v281[1];
        sub_100012558(*v281, v25);
        sub_1001F55A4(v214, v25, v282, &v288, v12, v103, v213, v283, a7, a8, a9, a10, a11);
        v143 = v214;
        goto LABEL_114;
      }

      goto LABEL_138;
    }

    if (!v23)
    {
      v287[0] = v276;
      LODWORD(v287[1]) = v279;
      WORD2(v287[1]) = WORD2(v279);
      v24 = *v281;
      v25 = v281[1];
      sub_100012558(*v281, v25);
      sub_1001F55A4(v24, v25, v282, &v288, &v288 + BYTE6(v14), v287, v287 + BYTE6(v279), v283, a7, a8, a9, a10, a11);
LABEL_64:
      v100 = v277;
      v143 = v24;
LABEL_114:
      sub_100002BF0(v143, v25, v26, v27, v28, v29, v30, v31);
      v215 = v288;
      v216 = DWORD2(v288) | ((WORD6(v288) | (BYTE14(v288) << 16)) << 32);
      sub_100002BF0(v276, v279, v217, v218, v219, v220, v221, v222);
      sub_100002BF0(v276, v279, v223, v224, v225, v226, v227, v228);
      *v100 = v215;
      v100[1] = v216;
      return;
    }

    goto LABEL_47;
  }

  v71 = v14 & 0x3FFFFFFFFFFFFFFFLL;
  sub_100012558(a2, a3);
  sub_100012558(v15, v14);
  sub_100002BF0(v15, v14, v72, v73, v74, v75, v76, v77);
  *a1 = xmmword_10021D470;
  sub_100002BF0(0, 0xC000000000000000, v78, v79, v80, v81, v82, v83);
  sub_100012558(v12, a3);
  v84 = v15;
  v85 = v15 >> 32;
  v275 = v15;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v85 < v15)
    {
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    if (sub_100216034() && __OFSUB__(v15, sub_100216064()))
    {
      goto LABEL_134;
    }

    sub_100216074();
    swift_allocObject();
    v175 = sub_100216014();

    v71 = v175;
  }

  v176 = v85 - v15;
  if (v85 < v15)
  {
    goto LABEL_130;
  }

  v177 = sub_100216034();
  if (v177)
  {
    v178 = v177;
    v179 = sub_100216064();
    v180 = v84 - v179;
    if (!__OFSUB__(v84, v179))
    {
      v181 = sub_100216054();
      if (v181 < v176)
      {
        v176 = v181;
      }

      v182 = v178 + v180;
      v183 = a3 >> 62;
      if ((a3 >> 62) > 1)
      {
        if (v183 != 2)
        {
          *(&v288 + 6) = 0;
          *&v288 = 0;
          v184 = *v281;
          v185 = v281[1];
          sub_100012558(*v281, v185);
          v274 = a11;
          v186 = v182 + v176;
          v271 = a10;
          v268 = a9;
          v265 = a8;
          v262 = a7;
          v191 = &v288;
          v187 = v282;
          v188 = v184;
          v189 = v185;
          v190 = v182;
          v192 = v283;
          goto LABEL_100;
        }

        v278 = v176;
        v280 = v178 + v180;
        v193 = *(v12 + 16);
        v194 = *(v12 + 24);
        v195 = sub_100216034();
        if (v195)
        {
          v196 = v195;
          v197 = sub_100216064();
          if (__OFSUB__(v193, v197))
          {
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

          v198 = v193 - v197 + v196;
        }

        else
        {
          v198 = 0;
        }

        if (__OFSUB__(v194, v193))
        {
          goto LABEL_141;
        }

        v229 = sub_100216054();
        if (v229 >= v194 - v193)
        {
          v230 = v194 - v193;
        }

        else
        {
          v230 = v229;
        }
      }

      else
      {
        if (!v183)
        {
          *&v288 = v12;
          WORD4(v288) = a3;
          BYTE10(v288) = BYTE2(a3);
          BYTE11(v288) = BYTE3(a3);
          BYTE12(v288) = BYTE4(a3);
          BYTE13(v288) = BYTE5(a3);
          v184 = *v281;
          v185 = v281[1];
          sub_100012558(*v281, v185);
          v274 = a11;
          v186 = v182 + v176;
          v271 = a10;
          v268 = a9;
          v265 = a8;
          v262 = a7;
          v187 = v282;
          v188 = v184;
          v189 = v185;
          v190 = v182;
          v191 = &v288 + BYTE6(a3);
          v192 = v283;
LABEL_100:
          sub_1001F55A4(v188, v189, v187, v190, v186, &v288, v191, v192, v262, v265, v268, v271, v274);
          v208 = v184;
LABEL_128:
          sub_100002BF0(v208, v185, v202, v203, v204, v205, v206, v207);
          v71, v235, v236, v237, v238, v239, v240, v241;
          sub_100002BF0(v12, a3, v242, v243, v244, v245, v246, v247);
          sub_100002BF0(v12, a3, v248, v249, v250, v251, v252, v253);
          sub_100002BF0(v12, a3, v254, v255, v256, v257, v258, v259);
          *a1 = v275;
          a1[1] = v71 | 0x4000000000000000;
          return;
        }

        v278 = v176;
        v280 = v178 + v180;
        if (v12 >> 32 < v12)
        {
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        v199 = sub_100216034();
        if (v199)
        {
          v200 = v199;
          v201 = sub_100216064();
          if (__OFSUB__(v12, v201))
          {
            goto LABEL_149;
          }

          v198 = v12 - v201 + v200;
        }

        else
        {
          v198 = 0;
        }

        v231 = sub_100216054();
        if (v231 >= (v12 >> 32) - v12)
        {
          v230 = (v12 >> 32) - v12;
        }

        else
        {
          v230 = v231;
        }
      }

      v232 = v230 + v198;
      if (v198)
      {
        v233 = v232;
      }

      else
      {
        v233 = 0;
      }

      v234 = *v281;
      v185 = v281[1];
      sub_100012558(*v281, v185);
      sub_1001F55A4(v234, v185, v282, v280, v280 + v278, v198, v233, v283, a7, a8, a9, a10, a11);
      v208 = v234;
      goto LABEL_128;
    }

    goto LABEL_132;
  }

LABEL_151:
  __break(1u);
}

void sub_1001F55A4(uint64_t a1, unint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, uint64_t a9, unsigned __int8 a10, _TtC18TrustedPeersHelper6Client **a11, uint64_t a12, void *a13)
{
  v16 = a3;
  v17 = a13;
  v18 = a11;
  v19 = a9;
  v20 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v20)
    {
      v195[0] = a1;
      LOWORD(v195[1]) = a2;
      BYTE2(v195[1]) = BYTE2(a2);
      BYTE3(v195[1]) = BYTE3(a2);
      BYTE4(v195[1]) = BYTE4(a2);
      BYTE5(v195[1]) = BYTE5(a2);
      ccsha384_di();
      if (a4)
      {
        if (a6)
        {
          if (a8)
          {
            key_deterministic = cchkdf();
            *v16 = key_deterministic;
            if (!key_deterministic)
            {
              if (a10 < 2u)
              {
                if (ccrng())
                {
                  key_deterministic = ccec_generate_key_deterministic();
                  *v16 = key_deterministic;
                  if (!key_deterministic)
                  {
                    if (a13)
                    {
                      v22 = sub_100019CD4(a13);
                      v202 = sub_10001393C(v22);
                      v203 = v23;
                      sub_100017104(&v202, a13, v24, v25, v26, v27, v28, v29);
                      v30 = v202;
                      v31 = v203;
                      v200 = &type metadata for Data;
                      v201 = &protocol witness table for Data;
                      v198 = v202;
                      v199 = v203;
                      v32 = sub_100006484(&v198, &type metadata for Data);
                      v33 = *v32;
                      v34 = v32[1];
                      v35 = v34 >> 62;
                      if ((v34 >> 62) <= 1)
                      {
                        if (!v35)
                        {
                          v36 = a11;
                          v194[0] = *v32;
                          LOWORD(v194[1]) = v34;
                          BYTE2(v194[1]) = BYTE2(v34);
                          BYTE3(v194[1]) = BYTE3(v34);
                          BYTE4(v194[1]) = BYTE4(v34);
                          BYTE5(v194[1]) = BYTE5(v34);
                          sub_100012558(v30, v31);
                          v37 = v194;
                          v38 = v194 + BYTE6(v34);
LABEL_124:
                          sub_100017EF0(v37, v38, &v196);
                          sub_100002BF0(v30, v31, v131, v132, v133, v134, v135, v136);
                          v137 = v196;
                          v138 = v197;
                          sub_100006128(&v198, v139, v140, v141, v142, v143, v144, v145);
                          v152 = *v36;
                          v153 = v36[1];
                          *v36 = v137;
                          v36[1] = v138;
LABEL_139:
                          sub_100002BF0(v152, v153, v146, v147, v148, v149, v150, v151);
                          return;
                        }

                        v119 = v33;
                        v120 = v33 >> 32;
                        v107 = v120 - v119;
                        if (v120 >= v119)
                        {
                          v36 = a11;
                          sub_100012558(v30, v31);
                          v104 = sub_100216034();
                          if (!v104)
                          {
LABEL_105:
                            v122 = sub_100216054();
                            if (v122 >= v107)
                            {
                              v123 = v107;
                            }

                            else
                            {
                              v123 = v122;
                            }

                            v124 = (v123 + v104);
                            if (v104)
                            {
                              v38 = v124;
                            }

                            else
                            {
                              v38 = 0;
                            }

                            v37 = v104;
                            goto LABEL_124;
                          }

                          v121 = sub_100216064();
                          if (!__OFSUB__(v119, v121))
                          {
                            v104 += v119 - v121;
                            goto LABEL_105;
                          }

                          goto LABEL_150;
                        }

                        goto LABEL_144;
                      }

                      v36 = a11;
                      if (v35 != 2)
                      {
                        memset(v194, 0, 14);
                        sub_100012558(v30, v31);
                        v37 = v194;
                        v38 = v194;
                        goto LABEL_124;
                      }

                      v102 = *(v33 + 16);
                      v103 = *(v33 + 24);
                      sub_100012558(v30, v31);
                      v104 = sub_100216034();
                      if (v104)
                      {
                        v105 = sub_100216064();
                        v85 = v102 - v105;
                        if (__OFSUB__(v102, v105))
                        {
LABEL_148:
                          __break(1u);
                          goto LABEL_149;
                        }

                        v104 += v85;
                      }

                      v106 = __OFSUB__(v103, v102);
                      v107 = v103 - v102;
                      if (!v106)
                      {
                        goto LABEL_105;
                      }

                      __break(1u);
                      goto LABEL_79;
                    }

                    goto LABEL_173;
                  }

                  goto LABEL_55;
                }

                goto LABEL_169;
              }

              if (a10 == 2)
              {
                goto LABEL_70;
              }

              return;
            }

LABEL_55:
            v74 = key_deterministic;
            sub_1001F4158();
            swift_allocError();
            *v75 = v74;
            *(v75 + 8) = 0;
            *(v75 + 16) = 2;
            swift_willThrow();
            return;
          }

          goto LABEL_159;
        }

        goto LABEL_157;
      }

      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
      goto LABEL_158;
    }

    goto LABEL_35;
  }

  if (v20 == 2)
  {
    v190 = a11;
    v17 = *(a1 + 16);
    v39 = *(a1 + 24);
    v40 = sub_100216034();
    if (v40)
    {
      v41 = sub_100216064();
      if (__OFSUB__(v17, v41))
      {
LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

      v40 += v17 - v41;
    }

    if (__OFSUB__(v39, v17))
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    sub_100216054();
    ccsha384_di();
    if (!a4)
    {
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

    v42 = a8;
    if (!a6)
    {
LABEL_163:
      __break(1u);
      goto LABEL_164;
    }

    if (!v40)
    {
LABEL_165:
      __break(1u);
      goto LABEL_166;
    }

    if (!a8)
    {
LABEL_167:
      __break(1u);
      goto LABEL_168;
    }

    v43 = a9 - a8;
    key_deterministic = cchkdf();
    *a3 = key_deterministic;
    if (key_deterministic)
    {
      goto LABEL_55;
    }

    v44 = a10 == 2;
    if (a10 >= 2u)
    {
      goto LABEL_64;
    }

    if (!ccrng())
    {
LABEL_171:
      __break(1u);
      goto LABEL_172;
    }

    key_deterministic = ccec_generate_key_deterministic();
    *a3 = key_deterministic;
    if (key_deterministic)
    {
      goto LABEL_55;
    }

    if (!a13)
    {
LABEL_175:
      __break(1u);
      goto LABEL_176;
    }

    v45 = sub_100019CD4(a13);
    v202 = sub_10001393C(v45);
    v203 = v46;
    sub_100017104(&v202, a13, v47, v48, v49, v50, v51, v52);
    v16 = v13;
    v30 = v202;
    v31 = v203;
    v200 = &type metadata for Data;
    v201 = &protocol witness table for Data;
    v198 = v202;
    v199 = v203;
    v53 = sub_100006484(&v198, &type metadata for Data);
    v54 = *v53;
    v55 = v53[1];
    v56 = v55 >> 62;
    if ((v55 >> 62) > 1)
    {
LABEL_86:
      if (v56 != 2)
      {
LABEL_100:
        memset(v195, 0, 14);
        sub_100012558(v30, v31);
        v72 = v195;
        v73 = v195;
        goto LABEL_138;
      }

      v113 = *(v54 + 16);
      v114 = *(v54 + 24);
      sub_100012558(v30, v31);
      v19 = sub_100216034();
      if (v19)
      {
        v115 = sub_100216064();
        v54 = v113 - v115;
        if (__OFSUB__(v113, v115))
        {
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        v19 += v54;
      }

      v106 = __OFSUB__(v114, v113);
      a6 = v114 - v113;
      if (!v106)
      {
        goto LABEL_131;
      }

      __break(1u);
LABEL_93:
      if (v71 == 2)
      {
        v116 = *(v54 + 16);
        v117 = *(v54 + 24);
        sub_100012558(v30, v31);
        v19 = sub_100216034();
        if (v19)
        {
          v118 = sub_100216064();
          if (__OFSUB__(v116, v118))
          {
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
          }

          v19 += v116 - v118;
        }

        v106 = __OFSUB__(v117, v116);
        a6 = v117 - v116;
        if (!v106)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      goto LABEL_100;
    }

    if (!v56)
    {
LABEL_50:
      v195[0] = v54;
      LOWORD(v195[1]) = v55;
      BYTE2(v195[1]) = BYTE2(v55);
      BYTE3(v195[1]) = BYTE3(v55);
      BYTE4(v195[1]) = BYTE4(v55);
      BYTE5(v195[1]) = BYTE5(v55);
      sub_100012558(v30, v31);
      v72 = v195;
      v73 = v195 + BYTE6(v55);
LABEL_138:
      sub_100017EF0(v72, v73, &v196);
      sub_100002BF0(v30, v31, v175, v176, v177, v178, v179, v180);
      v181 = v196;
      v182 = v197;
      sub_100006128(&v198, v183, v184, v185, v186, v187, v188, v189);
      v152 = *v190;
      v153 = v190[1];
      *v190 = v181;
      v190[1] = v182;
      goto LABEL_139;
    }

    a4 = v54;
    v57 = v54 >> 32;
    a6 = v57 - a4;
    if (v57 < a4)
    {
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    sub_100012558(v30, v31);
    v19 = sub_100216034();
    if (!v19)
    {
      goto LABEL_131;
    }

    v18 = (v55 & 0x3FFFFFFFFFFFFFFFLL);
    a1 = sub_100216064();
    v58 = a4 - a1;
    if (!__OFSUB__(a4, a1))
    {
LABEL_130:
      v19 += v58;
LABEL_131:
      v172 = sub_100216054();
      if (v172 >= a6)
      {
        v173 = a6;
      }

      else
      {
        v173 = v172;
      }

      v174 = (v173 + v19);
      if (v19)
      {
        v73 = v174;
      }

      else
      {
        v73 = 0;
      }

      v72 = v19;
      goto LABEL_138;
    }

    __break(1u);
LABEL_35:
    v59 = a1;
    if (a1 >> 32 >= a1)
    {
      v190 = v18;
      v192 = v16;
      v60 = sub_100216034();
      if (!v60)
      {
        goto LABEL_39;
      }

      v61 = sub_100216064();
      if (!__OFSUB__(v59, v61))
      {
        v60 += v59 - v61;
LABEL_39:
        sub_100216054();
        ccsha384_di();
        if (!a4)
        {
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        v42 = a8;
        if (!a6)
        {
LABEL_164:
          __break(1u);
          goto LABEL_165;
        }

        if (!v60)
        {
LABEL_166:
          __break(1u);
          goto LABEL_167;
        }

        if (!a8)
        {
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
          goto LABEL_170;
        }

        v43 = v19 - a8;
        key_deterministic = cchkdf();
        *v192 = key_deterministic;
        if (key_deterministic)
        {
          goto LABEL_55;
        }

        v44 = a10 == 2;
        if (a10 < 2u)
        {
          if (!ccrng())
          {
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
            goto LABEL_175;
          }

          key_deterministic = ccec_generate_key_deterministic();
          *v192 = key_deterministic;
          if (key_deterministic)
          {
            goto LABEL_55;
          }

          if (!v17)
          {
LABEL_176:
            __break(1u);
            return;
          }

          v62 = sub_100019CD4(v17);
          v202 = sub_10001393C(v62);
          v203 = v63;
          sub_100017104(&v202, v17, v64, v65, v66, v67, v68, v69);
          v30 = v202;
          v31 = v203;
          v200 = &type metadata for Data;
          v201 = &protocol witness table for Data;
          v198 = v202;
          v199 = v203;
          v70 = sub_100006484(&v198, &type metadata for Data);
          v54 = *v70;
          v55 = v70[1];
          v71 = v55 >> 62;
          if ((v55 >> 62) > 1)
          {
            goto LABEL_93;
          }

          if (!v71)
          {
            goto LABEL_50;
          }

          v169 = v54;
          v170 = v54 >> 32;
          a6 = v170 - v169;
          if (v170 < v169)
          {
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

          sub_100012558(v30, v31);
          v19 = sub_100216034();
          if (!v19)
          {
            goto LABEL_131;
          }

          v171 = sub_100216064();
          v58 = v169 - v171;
          if (__OFSUB__(v169, v171))
          {
            goto LABEL_154;
          }

          goto LABEL_130;
        }

LABEL_64:
        if (v44)
        {
          v90 = sub_1001F3F9C(v42, v43);
          v97 = *v190;
          v98 = v190[1];
          *v190 = v90;
          v190[1] = v99;
LABEL_71:
          sub_100002BF0(v97, v98, v91, v92, v93, v94, v95, v96);
          return;
        }

        return;
      }

LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    __break(1u);
    goto LABEL_141;
  }

  memset(v195, 0, 14);
  ccsha384_di();
  if (!a4)
  {
    goto LABEL_156;
  }

  if (!a6)
  {
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  if (!a8)
  {
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  v30 = a11;
  key_deterministic = cchkdf();
  *v16 = key_deterministic;
  if (key_deterministic)
  {
    goto LABEL_55;
  }

  if (a10 < 2u)
  {
    if (!ccrng())
    {
LABEL_170:
      __break(1u);
      goto LABEL_171;
    }

    key_deterministic = ccec_generate_key_deterministic();
    *v16 = key_deterministic;
    if (!key_deterministic)
    {
      if (a13)
      {
        v76 = sub_100019CD4(a13);
        v202 = sub_10001393C(v76);
        v203 = v77;
        sub_100017104(&v202, a13, v78, v79, v80, v81, v82, v83);
        v36 = v202;
        v31 = v203;
        v200 = &type metadata for Data;
        v201 = &protocol witness table for Data;
        v198 = v202;
        v199 = v203;
        v84 = sub_100006484(&v198, &type metadata for Data);
        v85 = *v84;
        v86 = v84[1];
        v87 = v86 >> 62;
        if ((v86 >> 62) <= 1)
        {
          if (v87)
          {
            v125 = v85;
            v126 = v85 >> 32;
            v112 = v126 - v125;
            if (v126 < v125)
            {
LABEL_145:
              __break(1u);
              goto LABEL_146;
            }

            sub_100012558(v36, v31);
            v110 = sub_100216034();
            if (v110)
            {
              v127 = sub_100216064();
              if (__OFSUB__(v125, v127))
              {
LABEL_151:
                __break(1u);
                goto LABEL_152;
              }

              v110 += v125 - v127;
            }

            goto LABEL_116;
          }

          v194[0] = *v84;
          LOWORD(v194[1]) = v86;
          BYTE2(v194[1]) = BYTE2(v86);
          BYTE3(v194[1]) = BYTE3(v86);
          BYTE4(v194[1]) = BYTE4(v86);
          BYTE5(v194[1]) = BYTE5(v86);
          sub_100012558(v36, v31);
          v88 = v194;
          v89 = v194 + BYTE6(v86);
          goto LABEL_126;
        }

LABEL_79:
        if (v87 == 2)
        {
          v108 = *(v85 + 16);
          v109 = *(v85 + 24);
          sub_100012558(v36, v31);
          v110 = sub_100216034();
          if (v110)
          {
            v111 = sub_100216064();
            v54 = v108 - v111;
            if (__OFSUB__(v108, v111))
            {
LABEL_149:
              __break(1u);
LABEL_150:
              __break(1u);
              goto LABEL_151;
            }

            v110 += v54;
          }

          v106 = __OFSUB__(v109, v108);
          v112 = v109 - v108;
          if (!v106)
          {
LABEL_116:
            v128 = sub_100216054();
            if (v128 >= v112)
            {
              v129 = v112;
            }

            else
            {
              v129 = v128;
            }

            v130 = (v129 + v110);
            if (v110)
            {
              v89 = v130;
            }

            else
            {
              v89 = 0;
            }

            v88 = v110;
            goto LABEL_126;
          }

          __break(1u);
          goto LABEL_86;
        }

        memset(v194, 0, 14);
        sub_100012558(v36, v31);
        v88 = v194;
        v89 = v194;
LABEL_126:
        sub_100017EF0(v88, v89, &v196);
        sub_100002BF0(v36, v31, v154, v155, v156, v157, v158, v159);
        v160 = v196;
        v161 = v197;
        sub_100006128(&v198, v162, v163, v164, v165, v166, v167, v168);
        v152 = *v30;
        v153 = v30[1];
        *v30 = v160;
        v30[1] = v161;
        goto LABEL_139;
      }

      goto LABEL_174;
    }

    goto LABEL_55;
  }

  if (a10 == 2)
  {
LABEL_70:
    v100 = sub_1001F3F9C(a8, a9 - a8);
    v97 = *a11;
    v98 = a11[1];
    *a11 = v100;
    a11[1] = v101;
    goto LABEL_71;
  }
}

unint64_t sub_1001F61E8()
{
  result = qword_100297CE8;
  if (!qword_100297CE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100297CE8);
  }

  return result;
}

void sub_1001F6234(unsigned __int8 a1, _TtC18TrustedPeersHelper6Client *a2, const char *a3, uint64_t a4, unint64_t a5)
{
  v197 = xmmword_10021D470;
  if (!a1)
  {
    v10 = "Escrowed Signing Key-%@";
    v11 = 0xD00000000000001ALL;
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v10 = "Escrow Signing Private Key";
    v11 = 0xD00000000000001DLL;
LABEL_5:
    v12 = sub_1001B43B8(v11, v10 | 0x8000000000000000);
    v13 = sub_1000139DC(v12[1]._TtCs12_SwiftObject_opaque, *v12->endpoint);
    v15 = v14;
    v12, v14, v16, v17, v18, v19, v20, v21;
    v198 = v13;
    v22 = 56;
    goto LABEL_7;
  }

  v23 = sub_1001B43B8(0xD000000000000014, 0x800000010023E960);
  v24 = sub_1000139DC(v23[1]._TtCs12_SwiftObject_opaque, *v23->endpoint);
  v15 = v25;
  v23, v25, v26, v27, v28, v29, v30, v31;
  v198 = v24;
  v22 = 32;
LABEL_7:
  v199 = v15;
  v32 = ccec_cp_384();
  if (!v32)
  {
    sub_1001F4158();
    swift_allocError();
    *v62 = 0;
    *(v62 + 8) = 0;
    *(v62 + 16) = 3;
    swift_willThrow();
LABEL_45:
    sub_100002BF0(v197, *(&v197 + 1), v63, v64, v65, v66, v67, v68);
    sub_100002BF0(v198, v199, v139, v140, v141, v142, v143, v144);
    return;
  }

  v33 = v32;
  v194 = 0;
  v34 = objc_opt_self();
  v192 = [v34 ccec384Context];
  v35 = sub_10001393C(v22);
  v37 = v36;
  v195 = a2;
  v196 = a3;
  v38 = sub_1001B43B8(a4, a5);
  if ((a5 & 0x1000000000000000) != 0)
  {
    v39 = sub_100216A44();
  }

  else if ((a5 & 0x2000000000000000) != 0)
  {
    v39 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v39 = a4 & 0xFFFFFFFFFFFFLL;
  }

  sub_100012558(a2, a3);
  v40 = sub_1000139DC(v38[1]._TtCs12_SwiftObject_opaque, v39);
  v42 = v41;
  v38, v41, v43, v44, v45, v46, v47, v48;
  v49 = v37 >> 62;
  if ((v37 >> 62) > 1)
  {
    if (v49 != 2)
    {
      *(&v193 + 7) = 0;
      *&v193 = 0;
      sub_1001F46B4(&v195, v40, v42, &v198, &v194, &v193, &v193, a1, &v197, v33, v192);
      if (v5)
      {
        goto LABEL_44;
      }

      v190 = v34;
      goto LABEL_47;
    }

    v190 = v34;
    sub_100012558(v40, v42);

    sub_100002BF0(v35, v37, v69, v70, v71, v72, v73, v74);
    *&v193 = v35;
    *(&v193 + 1) = v37 & 0x3FFFFFFFFFFFFFFFLL;
    sub_1002161A4();
    v75 = v37 & 0x3FFFFFFFFFFFFFFFLL;
    v76 = *(v35 + 16);
    v77 = *(v35 + 24);
    v78 = sub_100216034();
    if (!v78)
    {
      sub_100002BF0(v40, v42, v79, v80, v81, v82, v83, v84);
      __break(1u);
      goto LABEL_56;
    }

    v85 = v78;
    v86 = sub_100216064();
    v87 = v76 - v86;
    if (!__OFSUB__(v76, v86))
    {
      v88 = __OFSUB__(v77, v76);
      v89 = v77 - v76;
      if (!v88)
      {
        v90 = sub_100216054();
        if (v90 >= v89)
        {
          v91 = v89;
        }

        else
        {
          v91 = v90;
        }

        sub_1001F46B4(&v195, v40, v42, &v198, &v194, (v85 + v87), v85 + v87 + v91, a1, &v197, v33, v192);
        if (v5)
        {
          sub_100002BF0(v40, v42, v92, v93, v94, v95, v96, v97);
          v37 = v75 | 0x8000000000000000;
LABEL_43:
          v34 = v190;
          goto LABEL_44;
        }

        sub_100002BF0(v40, v42, v92, v93, v94, v95, v96, v97);
        v37 = v75 | 0x8000000000000000;
LABEL_47:
        v163 = v197;
        v164 = v195;
        v165 = v196;
        sub_100012558(v197, *(&v197 + 1));
        sub_100002BF0(v164, v165, v166, v167, v168, v169, v170, v171);
        [v190 contextFree:v192];
        sub_100002BF0(v35, v37, v172, v173, v174, v175, v176, v177);
        sub_100002BF0(v163, *(&v163 + 1), v178, v179, v180, v181, v182, v183);
        sub_100002BF0(v198, v199, v184, v185, v186, v187, v188, v189);
        return;
      }

      goto LABEL_51;
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (!v49)
  {
    *&v193 = v35;
    WORD4(v193) = v37;
    BYTE10(v193) = BYTE2(v37);
    BYTE11(v193) = BYTE3(v37);
    BYTE12(v193) = BYTE4(v37);
    BYTE13(v193) = BYTE5(v37);
    BYTE14(v193) = BYTE6(v37);
    sub_100012558(v40, v42);
    sub_1001F46B4(&v195, v40, v42, &v198, &v194, &v193, &v193 + BYTE6(v37), a1, &v197, v33, v192);
    if (v5)
    {
      v35 = v193;
      v37 = DWORD2(v193) | ((WORD6(v193) | (BYTE14(v193) << 16)) << 32);
      sub_100002BF0(v40, v42, v50, v51, v52, v53, v54, v55);
LABEL_44:
      sub_100002BF0(v195, v196, v56, v57, v58, v59, v60, v61);
      [v34 contextFree:v192];
      sub_100002BF0(v35, v37, v133, v134, v135, v136, v137, v138);
      goto LABEL_45;
    }

    v190 = v34;
    v35 = v193;
    v37 = DWORD2(v193) | ((WORD6(v193) | (BYTE14(v193) << 16)) << 32);
    sub_100002BF0(v40, v42, v50, v51, v52, v53, v54, v55);
    goto LABEL_47;
  }

  v98 = v37 & 0x3FFFFFFFFFFFFFFFLL;
  sub_100012558(v40, v42);
  sub_100012558(v40, v42);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v100 = v35 >> 32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v100 < v35)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (sub_100216034() && __OFSUB__(v35, sub_100216064()))
    {
LABEL_54:
      __break(1u);
    }

    sub_100216074();
    swift_allocObject();
    v101 = sub_100216014();

    v98 = v101;
    v100 = v35 >> 32;
  }

  v190 = v34;
  v102 = v100 - v35;
  if (v100 < v35)
  {
    goto LABEL_50;
  }

  v103 = sub_100216034();
  if (v103)
  {
    v104 = v103;
    v105 = sub_100216064();
    v106 = v35 - v105;
    if (!__OFSUB__(v35, v105))
    {
      v107 = sub_100216054();
      if (v107 < v102)
      {
        v102 = v107;
      }

      sub_100012558(v40, v42);
      sub_1001F46B4(&v195, v40, v42, &v198, &v194, (v104 + v106), v104 + v106 + v102, a1, &v197, v33, v192);
      if (v5)
      {
        v98, v108, v109, v110, v111, v112, v113, v114;
        sub_100002BF0(v40, v42, v115, v116, v117, v118, v119, v120);
        sub_100002BF0(v40, v42, v121, v122, v123, v124, v125, v126);
        sub_100002BF0(v40, v42, v127, v128, v129, v130, v131, v132);
        v37 = v98 | 0x4000000000000000;
        goto LABEL_43;
      }

      v98, v108, v109, v110, v111, v112, v113, v114;
      sub_100002BF0(v40, v42, v145, v146, v147, v148, v149, v150);
      sub_100002BF0(v40, v42, v151, v152, v153, v154, v155, v156);
      sub_100002BF0(v40, v42, v157, v158, v159, v160, v161, v162);
      v37 = v98 | 0x4000000000000000;
      goto LABEL_47;
    }

    goto LABEL_52;
  }

LABEL_56:
  __break(1u);
}

SecKeyRef sub_1001F693C(uint64_t a1, uint64_t a2)
{
  sub_10001148C(&qword_100297D48, &qword_10021D758);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D420;
  *(inited + 32) = kSecAttrKeyClass;
  *(inited + 40) = kSecAttrKeyClassPrivate;
  *(inited + 48) = kSecAttrKeyType;
  *(inited + 56) = kSecAttrKeyTypeEC;
  v3 = kSecAttrKeyClass;
  v4 = kSecAttrKeyClassPrivate;
  v5 = kSecAttrKeyType;
  v6 = kSecAttrKeyTypeEC;
  v7 = sub_100018514(inited);
  swift_setDeallocating();
  sub_10001148C(&qword_100297D50, &qword_10021D760);
  swift_arrayDestroy();
  isa = sub_100216204().super.isa;
  type metadata accessor for CFString(0);
  sub_1001F7554();
  v9 = sub_1002168C4().super.isa;
  v7, v10, v11, v12, v13, v14, v15, v16, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29;
  v17 = SecKeyCreateWithData(isa, v9, 0);

  if (!v17)
  {
    sub_1001F4158();
    swift_allocError();
    *v18 = 0;
    *(v18 + 8) = 0;
    *(v18 + 16) = 3;
    swift_willThrow();
  }

  return v17;
}

uint64_t sub_1001F6AD4(_TtC18TrustedPeersHelper6Client *a1)
{
  result[0] = 0;
  type metadata accessor for CFString(0);
  sub_1001F7554();
  isa = sub_1002168C4().super.isa;
  v3 = SecItemAdd(isa, result);

  if (v3)
  {
    if (v3 != -25299 || (v16 = a1, , sub_100015790(&v17, kSecClass), sub_100012480(&v17), v4 = sub_1002168C4().super.isa, v5 = sub_1002168C4().super.isa, v16, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17, *(&v17 + 1), v18, v19, result[0], result[1], result[2], result[3], v3 = SecItemUpdate(v4, v5), v4, v5, v3))
    {
      sub_1001F4158();
      swift_allocError();
      *v13 = v3;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      swift_willThrow();
    }
  }

  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_1001F6C68(void *a1, void *a2, void *a3, uint64_t a4)
{
  sub_10001148C(&qword_100297D28, &unk_10021D730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D5F0;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassKey;
  *(inited + 64) = v5;
  *(inited + 72) = kSecAttrAccessible;
  *(inited + 80) = kSecAttrAccessibleWhenUnlocked;
  *(inited + 104) = v5;
  *(inited + 112) = kSecUseDataProtectionKeychain;
  *(inited + 120) = 1;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 152) = kSecAttrAccessGroup;
  *(inited + 160) = 0xD00000000000001ALL;
  *(inited + 168) = 0x8000000100227BB0;
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = kSecAttrSynchronizable;
  *(inited + 200) = 0;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 232) = kSecAttrApplicationLabel;
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10021D600;
  v7 = objc_allocWithZone(NSUUID);
  v8 = kSecClass;
  v9 = kSecClassKey;
  v10 = kSecAttrAccessible;
  v11 = kSecAttrAccessibleWhenUnlocked;
  v12 = kSecUseDataProtectionKeychain;
  v13 = kSecAttrAccessGroup;
  v14 = kSecAttrSynchronizable;
  v15 = kSecAttrApplicationLabel;
  v16 = [v7 init];
  v17 = [v16 UUIDString];

  v18 = sub_100216974();
  v20 = v19;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100019BD0();
  *(v6 + 32) = v18;
  *(v6 + 40) = v20;
  *(inited + 240) = sub_100216984();
  *(inited + 248) = v21;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = kSecAttrLabel;
  *(inited + 280) = a3;
  *(inited + 288) = a4;
  *(inited + 304) = &type metadata for String;
  *(inited + 312) = kSecValueData;
  *(inited + 344) = &type metadata for Data;
  *(inited + 320) = a1;
  *(inited + 328) = a2;
  v22 = kSecAttrLabel;

  v23 = kSecValueData;
  sub_100012558(a1, a2);
  v24 = sub_100018728(inited);
  swift_setDeallocating();
  sub_10001148C(&unk_10029D970, &unk_10021D740);
  swift_arrayDestroy();
  v25 = sub_1001F6AD4(v24);
  v24, v26, v27, v28, v29, v30, v31, v32, v34, kSecClassKey, kSecClass, "Escrowed Encryption Key-%@", a3, a4, a1, a2, (inited + 32), v39;
  return v25 & 1;
}

uint64_t sub_1001F6F60(void *a1, void *a2, uint64_t a3, void *a4)
{
  sub_10001148C(&qword_100297D28, &unk_10021D730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D5F0;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassKey;
  *(inited + 64) = v7;
  *(inited + 72) = kSecAttrAccessible;
  *(inited + 80) = kSecAttrAccessibleWhenUnlocked;
  *(inited + 104) = v7;
  *(inited + 112) = kSecUseDataProtectionKeychain;
  *(inited + 120) = 1;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 152) = kSecAttrAccessGroup;
  *(inited + 160) = 0xD00000000000001ALL;
  *(inited + 168) = 0x8000000100227BB0;
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = kSecAttrSynchronizable;
  *(inited + 200) = 0;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 232) = kSecAttrLabel;
  *(inited + 240) = a3;
  *(inited + 248) = a4;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = kSecAttrApplicationLabel;
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10021D600;
  v9 = objc_allocWithZone(NSUUID);
  v10 = kSecClass;
  v11 = kSecClassKey;
  v12 = kSecAttrAccessible;
  v13 = kSecAttrAccessibleWhenUnlocked;
  v14 = kSecUseDataProtectionKeychain;
  v15 = kSecAttrAccessGroup;
  v16 = kSecAttrSynchronizable;
  v17 = kSecAttrLabel;

  v18 = kSecAttrApplicationLabel;
  v19 = [v9 init];
  v20 = [v19 UUIDString];

  v21 = sub_100216974();
  v23 = v22;

  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100019BD0();
  *(v8 + 32) = v21;
  *(v8 + 40) = v23;
  *(inited + 280) = sub_100216984();
  *(inited + 288) = v24;
  *(inited + 304) = &type metadata for String;
  *(inited + 312) = kSecValueData;
  *(inited + 344) = &type metadata for Data;
  *(inited + 320) = a1;
  *(inited + 328) = a2;
  v25 = kSecValueData;
  sub_100012558(a1, a2);
  v26 = sub_100018728(inited);
  swift_setDeallocating();
  sub_10001148C(&unk_10029D970, &unk_10021D740);
  swift_arrayDestroy();
  v27 = sub_1001F6AD4(v26);
  v26, v28, v29, v30, v31, v32, v33, v34, v36, a4, kSecAttrAccessibleWhenUnlocked, kSecClassKey, kSecClass, "Escrowed Symmetric Key-%@", a1, a2, (inited + 32), v40;
  return v27 & 1;
}

uint64_t sub_1001F725C(void *a1, void *a2, void *a3, uint64_t a4)
{
  sub_10001148C(&qword_100297D28, &unk_10021D730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D5F0;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassKey;
  *(inited + 64) = v5;
  *(inited + 72) = kSecAttrAccessible;
  *(inited + 80) = kSecAttrAccessibleWhenUnlocked;
  *(inited + 104) = v5;
  *(inited + 112) = kSecUseDataProtectionKeychain;
  *(inited + 120) = 1;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 152) = kSecAttrAccessGroup;
  *(inited + 160) = 0xD00000000000001ALL;
  *(inited + 168) = 0x8000000100227BB0;
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = kSecAttrSynchronizable;
  *(inited + 200) = 0;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 232) = kSecAttrApplicationLabel;
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10021D600;
  v7 = objc_allocWithZone(NSUUID);
  v8 = kSecClass;
  v9 = kSecClassKey;
  v10 = kSecAttrAccessible;
  v11 = kSecAttrAccessibleWhenUnlocked;
  v12 = kSecUseDataProtectionKeychain;
  v13 = kSecAttrAccessGroup;
  v14 = kSecAttrSynchronizable;
  v15 = kSecAttrApplicationLabel;
  v16 = [v7 init];
  v17 = [v16 UUIDString];

  v18 = sub_100216974();
  v20 = v19;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100019BD0();
  *(v6 + 32) = v18;
  *(v6 + 40) = v20;
  *(inited + 240) = sub_100216984();
  *(inited + 248) = v21;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = kSecAttrLabel;
  *(inited + 280) = a3;
  *(inited + 288) = a4;
  *(inited + 304) = &type metadata for String;
  *(inited + 312) = kSecValueData;
  *(inited + 344) = &type metadata for Data;
  *(inited + 320) = a1;
  *(inited + 328) = a2;
  v22 = kSecAttrLabel;

  v23 = kSecValueData;
  sub_100012558(a1, a2);
  v24 = sub_100018728(inited);
  swift_setDeallocating();
  sub_10001148C(&unk_10029D970, &unk_10021D740);
  swift_arrayDestroy();
  v25 = sub_1001F6AD4(v24);
  v24, v26, v27, v28, v29, v30, v31, v32, v34, kSecClassKey, kSecClass, "TrustedPeersHelper.EscrowKeys", a3, a4, a1, a2, (inited + 32), v39;
  return v25 & 1;
}

unint64_t sub_1001F7554()
{
  result = qword_1002978D0;
  if (!qword_1002978D0)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002978D0);
  }

  return result;
}

uint64_t sub_1001F75AC(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void sub_1001F75DC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_100216E84();
    type metadata accessor for EscrowRecordMO();
    sub_1001FC8B0();
    sub_100216C04();
    v1 = v28;
    v5 = v29;
    v6 = v30;
    v7 = v31;
    v8 = v32;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = (a1 + 56);
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v26 = v6;
  v27 = _swiftEmptyArrayStorage;
  while (1)
  {
    v12 = v7;
    v13 = v8;
    if ((v1 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_100216F14() || (type metadata accessor for EscrowRecordMO(), swift_dynamicCast(), (v16 = v33) == 0))
    {
LABEL_26:
      sub_10000D778(v1, v5, v26, v12, v13, v2, v3, v4);
      return;
    }

LABEL_18:
    v17 = [v16 escrowMetadata];
    if (v17 && (v18 = v17, v19 = [v17 bottleID], v18, v19))
    {
      v25 = sub_100216974();
      v21 = v20;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_100182D90(0, *(v27 + 2) + 1, 1, v27);
      }

      v23 = *(v27 + 2);
      v22 = *(v27 + 3);
      if (v23 >= v22 >> 1)
      {
        v27 = sub_100182D90((v22 > 1), v23 + 1, 1, v27);
      }

      *(v27 + 2) = v23 + 1;
      v24 = &v27[16 * v23];
      *(v24 + 4) = v25;
      *(v24 + 5) = v21;
    }

    else
    {
    }
  }

  v14 = v7;
  v15 = v8;
  if (v8)
  {
LABEL_14:
    v8 = (v15 - 1) & v15;
    v16 = *(*(v1 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v16)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= ((v6 + 64) >> 6))
    {
      v13 = 0;
      goto LABEL_26;
    }

    v15 = *&v5[8 * v7];
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1001F7878(void *a1, void *a2)
{
  v604 = a2;
  v4 = sub_10001148C(&qword_100298660, &qword_10021E878);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v633 = &v600 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6, v8);
  v631 = &v600 - v10;
  v12 = __chkstk_darwin(v9, v11);
  v627 = &v600 - v13;
  v15 = __chkstk_darwin(v12, v14);
  v624 = &v600 - v16;
  v18 = __chkstk_darwin(v15, v17);
  v621 = &v600 - v19;
  v21 = __chkstk_darwin(v18, v20);
  v617 = &v600 - v22;
  v24 = __chkstk_darwin(v21, v23);
  v614 = &v600 - v25;
  v27 = __chkstk_darwin(v24, v26);
  v610 = &v600 - v28;
  v30 = __chkstk_darwin(v27, v29);
  v636 = &v600 - v31;
  v33 = __chkstk_darwin(v30, v32);
  v639 = &v600 - v34;
  v36 = __chkstk_darwin(v33, v35);
  v648 = &v600 - v37;
  __chkstk_darwin(v36, v38);
  v646 = &v600 - v39;
  v683 = type metadata accessor for EscrowInformation.Metadata.ClientMetadata(0);
  v649 = *(v683 - 8);
  v41 = __chkstk_darwin(v683, v40);
  v632 = (&v600 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = __chkstk_darwin(v41, v43);
  v630 = (&v600 - v45);
  v47 = __chkstk_darwin(v44, v46);
  v626 = (&v600 - v48);
  v50 = __chkstk_darwin(v47, v49);
  v623 = (&v600 - v51);
  v53 = __chkstk_darwin(v50, v52);
  v620 = (&v600 - v54);
  v56 = __chkstk_darwin(v53, v55);
  v616 = (&v600 - v57);
  v59 = __chkstk_darwin(v56, v58);
  v613 = (&v600 - v60);
  v62 = __chkstk_darwin(v59, v61);
  v609 = (&v600 - v63);
  v65 = __chkstk_darwin(v62, v64);
  v634 = (&v600 - v66);
  v68 = __chkstk_darwin(v65, v67);
  v638 = (&v600 - v69);
  v71 = __chkstk_darwin(v68, v70);
  v647 = (&v600 - v72);
  __chkstk_darwin(v71, v73);
  v645 = (&v600 - v74);
  v671 = type metadata accessor for PasscodeGeneration(0);
  v664 = *(v671 - 1);
  __chkstk_darwin(v671, v75);
  v601 = (&v600 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = sub_10001148C(&qword_1002986A8, &qword_10021E880);
  v79 = __chkstk_darwin(v77 - 8, v78);
  v602 = &v600 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v79, v81);
  v663 = &v600 - v82;
  v83 = sub_10001148C(&unk_10029DAA0, &qword_10021E870);
  v85 = __chkstk_darwin(v83 - 8, v84);
  v629 = &v600 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __chkstk_darwin(v85, v87);
  v625 = &v600 - v89;
  v91 = __chkstk_darwin(v88, v90);
  v622 = &v600 - v92;
  v94 = __chkstk_darwin(v91, v93);
  v619 = &v600 - v95;
  v97 = __chkstk_darwin(v94, v96);
  v615 = &v600 - v98;
  v100 = __chkstk_darwin(v97, v99);
  v612 = &v600 - v101;
  v103 = __chkstk_darwin(v100, v102);
  v608 = &v600 - v104;
  v106 = __chkstk_darwin(v103, v105);
  v606 = &v600 - v107;
  v109 = __chkstk_darwin(v106, v108);
  v635 = &v600 - v110;
  v112 = __chkstk_darwin(v109, v111);
  v637 = &v600 - v113;
  v115 = __chkstk_darwin(v112, v114);
  v669 = &v600 - v116;
  v118 = __chkstk_darwin(v115, v117);
  v643 = &v600 - v119;
  v121 = __chkstk_darwin(v118, v120);
  v603 = &v600 - v122;
  v124 = __chkstk_darwin(v121, v123);
  v662 = &v600 - v125;
  v127 = __chkstk_darwin(v124, v126);
  v660 = &v600 - v128;
  v130 = __chkstk_darwin(v127, v129);
  v687 = &v600 - v131;
  v133 = __chkstk_darwin(v130, v132);
  v657 = &v600 - v134;
  v136 = __chkstk_darwin(v133, v135);
  v655 = &v600 - v137;
  v139 = __chkstk_darwin(v136, v138);
  v653 = &v600 - v140;
  v142 = __chkstk_darwin(v139, v141);
  v670 = &v600 - v143;
  v145 = __chkstk_darwin(v142, v144);
  v666 = &v600 - v146;
  __chkstk_darwin(v145, v147);
  v692 = (&v600 - v148);
  v149 = type metadata accessor for EscrowInformation.Metadata(0);
  v694 = *(v149 - 8);
  v151 = __chkstk_darwin(v149, v150);
  v628 = &v600 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __chkstk_darwin(v151, v153);
  v674 = &v600 - v155;
  v157 = __chkstk_darwin(v154, v156);
  v673 = &v600 - v158;
  v160 = __chkstk_darwin(v157, v159);
  v618 = &v600 - v161;
  v163 = __chkstk_darwin(v160, v162);
  v672 = &v600 - v164;
  v166 = __chkstk_darwin(v163, v165);
  v611 = &v600 - v167;
  v169 = __chkstk_darwin(v166, v168);
  v607 = &v600 - v170;
  v172 = __chkstk_darwin(v169, v171);
  v668 = &v600 - v173;
  v175 = __chkstk_darwin(v172, v174);
  v675 = &v600 - v176;
  v178 = __chkstk_darwin(v175, v177);
  v676 = &v600 - v179;
  v181 = __chkstk_darwin(v178, v180);
  v644 = &v600 - v182;
  v184 = __chkstk_darwin(v181, v183);
  v642 = &v600 - v185;
  v187 = __chkstk_darwin(v184, v186);
  v600 = &v600 - v188;
  v190 = __chkstk_darwin(v187, v189);
  v661 = &v600 - v191;
  v193 = __chkstk_darwin(v190, v192);
  v659 = &v600 - v194;
  v196 = __chkstk_darwin(v193, v195);
  v658 = &v600 - v197;
  v199 = __chkstk_darwin(v196, v198);
  v656 = &v600 - v200;
  v202 = __chkstk_darwin(v199, v201);
  v654 = &v600 - v203;
  v205 = __chkstk_darwin(v202, v204);
  v667 = &v600 - v206;
  v208 = __chkstk_darwin(v205, v207);
  v650 = &v600 - v209;
  v211 = __chkstk_darwin(v208, v210);
  v665 = &v600 - v212;
  __chkstk_darwin(v211, v213);
  v215 = &v600 - v214;
  v685 = sub_100216384();
  v686 = *(v685 - 8);
  __chkstk_darwin(v685, v216);
  v684 = &v600 - ((v217 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  v220 = __chkstk_darwin(v218 - 8, v219);
  v641 = &v600 - ((v221 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = __chkstk_darwin(v220, v222);
  v652 = &v600 - v224;
  __chkstk_darwin(v223, v225);
  v227 = &v600 - v226;
  v228 = sub_1002164A4();
  v229 = *(v228 - 8);
  v231 = __chkstk_darwin(v228, v230);
  v640 = &v600 - ((v232 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = __chkstk_darwin(v231, v233);
  v651 = &v600 - v235;
  __chkstk_darwin(v234, v236);
  v238 = &v600 - v237;
  type metadata accessor for EscrowRecordMO();
  v605 = v2;
  v239 = *(v2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
  v240 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v690 = v239;
  v241 = [v240 initWithContext:v239];
  v242 = sub_100216964();
  v682 = v241;
  [v241 setLabel:v242];

  v243 = type metadata accessor for EscrowInformation(0);
  v244 = *(v243 + 48);
  v691 = a1;
  sub_100019C6C(a1 + v244, v227, &qword_10029D780, &qword_1002265D0);
  v245 = *(v229 + 6);
  v246 = v245(v227, 1, v228);
  v681 = v229 + 48;
  if (v246 == 1)
  {
    sub_100216494();
    if (v245(v227, 1, v228) != 1)
    {
      sub_1000114D4(v227, &qword_10029D780, &qword_1002265D0);
    }
  }

  else
  {
    (*(v229 + 4))(v238, v227, v228);
  }

  v247 = v684;
  sub_100216474();
  v248 = *(v229 + 1);
  v688 = v228;
  v680 = v229 + 8;
  v679 = v248;
  v248(v238, v228);
  isa = sub_1002162F4().super.isa;
  v250 = *(v686 + 8);
  v686 += 8;
  v678 = v250;
  v250(v247, v685);
  v251 = v682;
  [v682 setCreationDate:isa];

  v252 = v691;
  if ((*v691 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_214;
  }

  [v251 setRemainingAttempts:?];
  if ((v252[3] & 0x8000000000000000) != 0)
  {
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
    goto LABEL_219;
  }

  [v251 setSilentAttemptAllowed:?];
  if (*(v252 + 40))
  {
    v253 = v252[4] != 0;
  }

  else
  {
    v253 = v252[4];
  }

  [v251 setRecordStatus:v253];
  [v251 setSosViability:v252[6]];
  v254 = sub_100216964();
  [v251 setFederationID:v254];

  v255 = sub_100216964();
  [v251 setExpectedFederationID:v255];

  type metadata accessor for EscrowMetadataMO();
  v256 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v689 = [v256 initWithContext:v690];
  v693 = *(v243 + 52);
  v257 = v692;
  sub_100019C6C(v252 + v693, v692, &unk_10029DAA0, &qword_10021E870);
  v258 = *(v694 + 48);
  v694 += 48;
  v259 = (v258)(v257, 1, v149);
  v677 = v245;
  if (v259 == 1)
  {
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v260 = *(v149 + 20);
    v261 = v687;
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *&v215[v260] = qword_100298568;
    v262 = v692;
    v263 = (v258)(v692, 1, v149);

    if (v263 != 1)
    {
      sub_1000114D4(v262, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    sub_1001FD72C(v257, v215, type metadata accessor for EscrowInformation.Metadata);
    v261 = v687;
  }

  v264 = *&v215[*(v149 + 20)];
  swift_beginAccess();
  v265 = *(v264 + 16);
  v266 = *(v264 + 24);
  sub_100012558(v265, v266);
  sub_1001FD6CC(v215, type metadata accessor for EscrowInformation.Metadata);
  v267 = sub_100216204().super.isa;
  sub_100002BF0(v265, v266, v268, v269, v270, v271, v272, v273);
  [v689 setBackupKeybagDigest:v267];

  v274 = v666;
  sub_100019C6C(v252 + v693, v666, &unk_10029DAA0, &qword_10021E870);
  v692 = v258;
  if ((v258)(v274, 1, v149) == 1)
  {
    v275 = v229;
    v276 = v261;
    v277 = v665;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v278 = *(v149 + 20);
    v279 = v667;
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v277 + v278) = qword_100298568;
    v280 = (v692)(v274, 1, v149);

    v281 = v274;
    v282 = v277;
    v261 = v276;
    v229 = v275;
    v252 = v691;
    if (v280 != 1)
    {
      sub_1000114D4(v281, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    v283 = v274;
    v282 = v665;
    sub_1001FD72C(v283, v665, type metadata accessor for EscrowInformation.Metadata);
    v279 = v667;
  }

  v284 = *(v282 + *(v149 + 20));
  v285 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupUsesMultipleIcscs;
  swift_beginAccess();
  v286 = *(v284 + v285);
  sub_1001FD6CC(v282, type metadata accessor for EscrowInformation.Metadata);
  if (v286 < 0)
  {
    goto LABEL_215;
  }

  v687 = v229;
  [v689 setSecureBackupUsesMultipleiCSCS:v286];
  v287 = v670;
  sub_100019C6C(v252 + v693, v670, &unk_10029DAA0, &qword_10021E870);
  v288 = v261;
  if ((v692)(v287, 1, v149) == 1)
  {
    v289 = v650;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v290 = *(v149 + 20);
    v291 = v653;
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v289 + v290) = qword_100298568;
    v292 = v670;
    v293 = (v692)(v670, 1, v149);

    if (v293 != 1)
    {
      sub_1000114D4(v292, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    v289 = v650;
    sub_1001FD72C(v287, v650, type metadata accessor for EscrowInformation.Metadata);
    v291 = v653;
  }

  v294 = *(v289 + *(v149 + 20)) + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottleID;
  swift_beginAccess();
  v295 = *(v294 + 8);

  sub_1001FD6CC(v289, type metadata accessor for EscrowInformation.Metadata);
  v296 = sub_100216964();
  v295, v297, v298, v299, v300, v301, v302, v303, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609;
  [v689 setBottleID:v296];

  sub_100019C6C(v252 + v693, v291, &unk_10029DAA0, &qword_10021E870);
  if ((v692)(v291, 1, v149) == 1)
  {
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v304 = *(v149 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v279 + v304) = qword_100298568;
    v305 = (v692)(v291, 1, v149);

    v306 = v288;
    if (v305 != 1)
    {
      sub_1000114D4(v291, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    sub_1001FD72C(v291, v279, type metadata accessor for EscrowInformation.Metadata);
    v306 = v288;
  }

  v307 = *(v279 + *(v149 + 20));
  v308 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__secureBackupTimestamp;
  swift_beginAccess();
  v309 = v652;
  sub_100019C6C(v307 + v308, v652, &qword_10029D780, &qword_1002265D0);
  v310 = v688;
  v311 = v677;
  if (v677(v309, 1, v688) == 1)
  {
    v312 = v651;
    sub_100216494();
    v313 = v312;
    if (v311(v309, 1, v310) != 1)
    {
      sub_1000114D4(v309, &qword_10029D780, &qword_1002265D0);
    }
  }

  else
  {
    v313 = v651;
    (*(v687 + 4))(v651, v309, v310);
  }

  sub_1001FD6CC(v279, type metadata accessor for EscrowInformation.Metadata);
  v314 = v684;
  sub_100216474();
  v679(v313, v310);
  v315 = sub_1002162F4().super.isa;
  v678(v314, v685);
  [v689 setSecureBackupTimestamp:v315];

  v316 = v655;
  sub_100019C6C(v252 + v693, v655, &unk_10029DAA0, &qword_10021E870);
  if ((v692)(v316, 1, v149) == 1)
  {
    v317 = v654;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v318 = *(v149 + 20);
    v319 = v656;
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v317 + v318) = qword_100298568;
    v320 = (v692)(v316, 1, v149);

    if (v320 != 1)
    {
      sub_1000114D4(v316, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    v317 = v654;
    sub_1001FD72C(v316, v654, type metadata accessor for EscrowInformation.Metadata);
    v319 = v656;
  }

  v321 = *(v317 + *(v149 + 20)) + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__escrowedSpki;
  swift_beginAccess();
  v323 = *v321;
  v322 = *(v321 + 8);
  sub_100012558(v323, v322);
  sub_1001FD6CC(v317, type metadata accessor for EscrowInformation.Metadata);
  v324 = sub_100216204().super.isa;
  sub_100002BF0(v323, v322, v325, v326, v327, v328, v329, v330);
  [v689 setEscrowedSPKI:v324];

  v331 = v657;
  sub_100019C6C(v252 + v693, v657, &unk_10029DAA0, &qword_10021E870);
  if ((v692)(v331, 1, v149) == 1)
  {
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v332 = *(v149 + 20);
    v333 = v660;
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v319 + v332) = qword_100298568;
    v334 = (v692)(v331, 1, v149);

    if (v334 != 1)
    {
      sub_1000114D4(v331, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    sub_1001FD72C(v331, v319, type metadata accessor for EscrowInformation.Metadata);
    v333 = v660;
  }

  v335 = *(v319 + *(v149 + 20)) + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peerInfo;
  swift_beginAccess();
  v337 = *v335;
  v336 = *(v335 + 8);
  sub_100012558(v337, v336);
  sub_1001FD6CC(v319, type metadata accessor for EscrowInformation.Metadata);
  v338 = sub_100216204().super.isa;
  sub_100002BF0(v337, v336, v339, v340, v341, v342, v343, v344);
  [v689 setPeerInfo:v338];

  sub_100019C6C(v252 + v693, v306, &unk_10029DAA0, &qword_10021E870);
  if ((v692)(v306, 1, v149) == 1)
  {
    v345 = v658;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v346 = *(v149 + 20);
    v347 = v662;
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v345 + v346) = qword_100298568;
    v348 = (v692)(v306, 1, v149);

    if (v348 != 1)
    {
      sub_1000114D4(v306, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    v345 = v658;
    sub_1001FD72C(v306, v658, type metadata accessor for EscrowInformation.Metadata);
    v347 = v662;
  }

  v349 = *(v345 + *(v149 + 20)) + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__serial;
  swift_beginAccess();
  v350 = *(v349 + 8);

  sub_1001FD6CC(v345, type metadata accessor for EscrowInformation.Metadata);
  v351 = sub_100216964();
  v350, v352, v353, v354, v355, v356, v357, v358, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609;
  [v689 setSerial:v351];

  sub_100019C6C(v252 + v693, v333, &unk_10029DAA0, &qword_10021E870);
  if ((v692)(v333, 1, v149) == 1)
  {
    v359 = v659;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v360 = *(v149 + 20);
    v361 = v661;
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v359 + v360) = qword_100298568;
    v362 = (v692)(v333, 1, v149);

    if (v362 != 1)
    {
      sub_1000114D4(v333, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    v359 = v659;
    sub_1001FD72C(v333, v659, type metadata accessor for EscrowInformation.Metadata);
    v361 = v661;
  }

  v363 = *(v359 + *(v149 + 20)) + OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__build;
  swift_beginAccess();
  v364 = *(v363 + 8);

  sub_1001FD6CC(v359, type metadata accessor for EscrowInformation.Metadata);
  v365 = sub_100216964();
  v364, v366, v367, v368, v369, v370, v371, v372, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609;
  [v689 setBuild:v365];

  sub_100019C6C(v252 + v693, v347, &unk_10029DAA0, &qword_10021E870);
  if ((v692)(v347, 1, v149) == 1)
  {
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v373 = *(v149 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v361 + v373) = qword_100298568;
    v374 = (v692)(v347, 1, v149);

    if (v374 != 1)
    {
      sub_1000114D4(v347, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    sub_1001FD72C(v347, v361, type metadata accessor for EscrowInformation.Metadata);
  }

  v375 = *(v361 + *(v149 + 20));
  v376 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
  swift_beginAccess();
  v377 = v663;
  sub_100019C6C(v375 + v376, v663, &qword_1002986A8, &qword_10021E880);
  v378 = *(v664 + 48);
  v379 = v664 + 48;
  LODWORD(v375) = v378(v377, 1, v671);
  sub_1000114D4(v377, &qword_1002986A8, &qword_10021E880);
  sub_1001FD6CC(v361, type metadata accessor for EscrowInformation.Metadata);
  if (v375 != 1)
  {
    type metadata accessor for PasscodeGen();
    v380 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v381 = [v380 initWithContext:v690];
    v382 = v603;
    sub_100019C6C(v691 + v693, v603, &unk_10029DAA0, &qword_10021E870);
    if ((v692)(v382, 1, v149) == 1)
    {
      v383 = v600;
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      v384 = *(v149 + 20);
      if (qword_1002974B8 != -1)
      {
        swift_once();
      }

      *&v383[v384] = qword_100298568;
      v385 = v603;
      v386 = (v692)(v603, 1, v149);

      if (v386 != 1)
      {
        sub_1000114D4(v385, &unk_10029DAA0, &qword_10021E870);
      }
    }

    else
    {
      v383 = v600;
      sub_1001FD72C(v382, v600, type metadata accessor for EscrowInformation.Metadata);
    }

    v387 = *&v383[*(v149 + 20)];
    v388 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__passcodeGeneration;
    swift_beginAccess();
    v389 = v387 + v388;
    v390 = v602;
    sub_100019C6C(v389, v602, &qword_1002986A8, &qword_10021E880);
    v391 = v671;
    if (v378(v390, 1, v671) == 1)
    {
      v392 = v601;
      *v601 = 0;
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      v393 = v378(v390, 1, v391);
      v394 = v689;
      if (v393 != 1)
      {
        sub_1000114D4(v390, &qword_1002986A8, &qword_10021E880);
      }
    }

    else
    {
      v392 = v601;
      sub_1001FD72C(v390, v601, type metadata accessor for PasscodeGeneration);
      v394 = v689;
    }

    sub_1001FD6CC(v383, type metadata accessor for EscrowInformation.Metadata);
    v395 = *v392;
    sub_1001FD6CC(v392, type metadata accessor for PasscodeGeneration);
    if (v395 < 0)
    {
      __break(1u);
LABEL_222:
      swift_once();
      goto LABEL_84;
    }

    [v381 setValue:v395];
    [v394 setPasscodeGen:v381];
  }

  [v682 setEscrowMetadata:v689];
  type metadata accessor for EscrowClientMetadataMO();
  v396 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v690 = [v396 initWithContext:v690];
  v395 = v643;
  sub_100019C6C(v691 + v693, v643, &unk_10029DAA0, &qword_10021E870);
  if ((v692)(v395, 1, v149) != 1)
  {
    v379 = v642;
    sub_1001FD72C(v395, v642, type metadata accessor for EscrowInformation.Metadata);
    goto LABEL_87;
  }

  v379 = v642;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v394 = *(v149 + 20);
  if (qword_1002974B8 != -1)
  {
    goto LABEL_222;
  }

LABEL_84:
  *(v394 + v379) = qword_100298568;
  v397 = (v692)(v395, 1, v149);

  if (v397 != 1)
  {
    sub_1000114D4(v395, &unk_10029DAA0, &qword_10021E870);
  }

LABEL_87:
  v398 = *(v379 + *(v149 + 20));
  v399 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  v400 = v398 + v399;
  v401 = v646;
  sub_100019C6C(v400, v646, &qword_100298660, &qword_10021E878);
  v402 = *(v649 + 48);
  v403 = v683;
  if (v402(v401, 1, v683) == 1)
  {
    v404 = v645;
    *v645 = 0u;
    v404[1] = 0u;
    *(v404 + 4) = 0xE000000000000000;
    *(v404 + 5) = 0;
    *(v404 + 6) = 0xE000000000000000;
    *(v404 + 7) = 0;
    *(v404 + 8) = 0xE000000000000000;
    *(v404 + 9) = 0;
    *(v404 + 10) = 0xE000000000000000;
    *(v404 + 11) = 0;
    *(v404 + 12) = 0xE000000000000000;
    *(v404 + 13) = 0;
    *(v404 + 14) = 0xE000000000000000;
    *(v404 + 15) = 0;
    *(v404 + 16) = 0xE000000000000000;
    *(v404 + 17) = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v405 = v688;
    (*(v687 + 7))(v404 + *(v403 + 64), 1, 1, v688);
    v406 = v402(v401, 1, v403);
    v407 = v640;
    if (v406 != 1)
    {
      sub_1000114D4(v401, &qword_100298660, &qword_10021E878);
    }
  }

  else
  {
    v404 = v645;
    sub_1001FD72C(v401, v645, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
    v407 = v640;
    v405 = v688;
  }

  sub_1001FD6CC(v379, type metadata accessor for EscrowInformation.Metadata);
  v408 = v641;
  sub_100019C6C(v404 + *(v683 + 64), v641, &qword_10029D780, &qword_1002265D0);
  v409 = v677;
  v410 = v677(v408, 1, v405);
  v671 = v402;
  if (v410 == 1)
  {
    sub_100216494();
    sub_1001FD6CC(v404, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
    v411 = v409(v408, 1, v405);
    v412 = v644;
    v413 = v405;
    if (v411 != 1)
    {
      sub_1000114D4(v408, &qword_10029D780, &qword_1002265D0);
    }
  }

  else
  {
    sub_1001FD6CC(v404, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
    (*(v687 + 4))(v407, v408, v405);
    v412 = v644;
    v413 = v405;
  }

  v414 = v684;
  sub_100216474();
  v679(v407, v413);
  v415 = sub_1002162F4().super.isa;
  v678(v414, v685);
  [v690 setSecureBackupMetadataTimestamp:v415];

  v416 = v669;
  sub_100019C6C(v691 + v693, v669, &unk_10029DAA0, &qword_10021E870);
  v417 = (v692)(v416, 1, v149);
  v418 = v648;
  if (v417 == 1)
  {
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v419 = *(v149 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v412 + v419) = qword_100298568;
    v420 = v669;
    v421 = (v692)(v669, 1, v149);

    if (v421 != 1)
    {
      sub_1000114D4(v420, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    sub_1001FD72C(v416, v412, type metadata accessor for EscrowInformation.Metadata);
  }

  v422 = *(v412 + *(v149 + 20));
  v423 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  sub_100019C6C(v422 + v423, v418, &qword_100298660, &qword_10021E878);
  v424 = v683;
  v425 = v671;
  if ((v671)(v418, 1, v683) == 1)
  {
    v426 = v647;
    *v647 = 0u;
    v426[1] = 0u;
    *(v426 + 4) = 0xE000000000000000;
    *(v426 + 5) = 0;
    *(v426 + 6) = 0xE000000000000000;
    *(v426 + 7) = 0;
    *(v426 + 8) = 0xE000000000000000;
    *(v426 + 9) = 0;
    *(v426 + 10) = 0xE000000000000000;
    *(v426 + 11) = 0;
    *(v426 + 12) = 0xE000000000000000;
    *(v426 + 13) = 0;
    *(v426 + 14) = 0xE000000000000000;
    *(v426 + 15) = 0;
    *(v426 + 16) = 0xE000000000000000;
    *(v426 + 17) = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    (*(v687 + 7))(v426 + *(v424 + 64), 1, 1, v413);
    v427 = v425(v418, 1, v424) == 1;
    v428 = v418;
    v429 = v692;
    if (!v427)
    {
      sub_1000114D4(v428, &qword_100298660, &qword_10021E878);
    }
  }

  else
  {
    v426 = v647;
    sub_1001FD72C(v418, v647, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
    v429 = v692;
  }

  sub_1001FD6CC(v412, type metadata accessor for EscrowInformation.Metadata);
  v430 = *v426;
  sub_1001FD6CC(v426, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  if (v430 < 0)
  {
    goto LABEL_216;
  }

  [v690 setSecureBackupNumericPassphraseLength:v430];
  v431 = v637;
  sub_100019C6C(v691 + v693, v637, &unk_10029DAA0, &qword_10021E870);
  if (v429(v431, 1, v149) == 1)
  {
    v432 = v676;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v433 = *(v149 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v432 + v433) = qword_100298568;
    v434 = v429(v431, 1, v149);

    if (v434 != 1)
    {
      sub_1000114D4(v431, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    v432 = v676;
    sub_1001FD72C(v431, v676, type metadata accessor for EscrowInformation.Metadata);
  }

  v435 = *(v432 + *(v149 + 20));
  v436 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  v437 = v639;
  sub_100019C6C(v435 + v436, v639, &qword_100298660, &qword_10021E878);
  if (v425(v437, 1, v424) == 1)
  {
    v438 = v638;
    *v638 = 0u;
    v438[1] = 0u;
    *(v438 + 4) = 0xE000000000000000;
    *(v438 + 5) = 0;
    *(v438 + 6) = 0xE000000000000000;
    *(v438 + 7) = 0;
    *(v438 + 8) = 0xE000000000000000;
    *(v438 + 9) = 0;
    *(v438 + 10) = 0xE000000000000000;
    *(v438 + 11) = 0;
    *(v438 + 12) = 0xE000000000000000;
    *(v438 + 13) = 0;
    *(v438 + 14) = 0xE000000000000000;
    *(v438 + 15) = 0;
    *(v438 + 16) = 0xE000000000000000;
    *(v438 + 17) = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    (*(v687 + 7))(v438 + *(v424 + 64), 1, 1, v688);
    if (v425(v437, 1, v424) != 1)
    {
      sub_1000114D4(v437, &qword_100298660, &qword_10021E878);
    }
  }

  else
  {
    v438 = v638;
    sub_1001FD72C(v437, v638, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  }

  sub_1001FD6CC(v676, type metadata accessor for EscrowInformation.Metadata);
  v439 = *(v438 + 1);
  sub_1001FD6CC(v438, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  if (v439 < 0)
  {
    goto LABEL_217;
  }

  [v690 setSecureBackupUsesComplexPassphrase:v439];
  v440 = v635;
  sub_100019C6C(v691 + v693, v635, &unk_10029DAA0, &qword_10021E870);
  if (v429(v440, 1, v149) == 1)
  {
    v441 = v675;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v442 = *(v149 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v441 + v442) = qword_100298568;
    v443 = v429(v440, 1, v149);

    if (v443 != 1)
    {
      sub_1000114D4(v440, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    v441 = v675;
    sub_1001FD72C(v440, v675, type metadata accessor for EscrowInformation.Metadata);
  }

  v444 = *(v441 + *(v149 + 20));
  v445 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  v446 = v636;
  sub_100019C6C(v444 + v445, v636, &qword_100298660, &qword_10021E878);
  if (v425(v446, 1, v424) == 1)
  {
    v447 = v634;
    *v634 = 0u;
    v447[1] = 0u;
    *(v447 + 4) = 0xE000000000000000;
    *(v447 + 5) = 0;
    *(v447 + 6) = 0xE000000000000000;
    *(v447 + 7) = 0;
    *(v447 + 8) = 0xE000000000000000;
    *(v447 + 9) = 0;
    *(v447 + 10) = 0xE000000000000000;
    *(v447 + 11) = 0;
    *(v447 + 12) = 0xE000000000000000;
    *(v447 + 13) = 0;
    *(v447 + 14) = 0xE000000000000000;
    *(v447 + 15) = 0;
    *(v447 + 16) = 0xE000000000000000;
    *(v447 + 17) = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    (*(v687 + 7))(v447 + *(v424 + 64), 1, 1, v688);
    v448 = v425(v446, 1, v424);
    v449 = v668;
    if (v448 != 1)
    {
      sub_1000114D4(v446, &qword_100298660, &qword_10021E878);
    }
  }

  else
  {
    v447 = v634;
    sub_1001FD72C(v446, v634, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
    v449 = v668;
  }

  sub_1001FD6CC(v675, type metadata accessor for EscrowInformation.Metadata);
  v450 = *(v447 + 2);
  sub_1001FD6CC(v447, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  if (v450 < 0)
  {
    goto LABEL_218;
  }

  [v690 setSecureBackupUsesNumericPassphrase:v450];
  v451 = v606;
  sub_100019C6C(v691 + v693, v606, &unk_10029DAA0, &qword_10021E870);
  if (v429(v451, 1, v149) == 1)
  {
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v452 = *(v149 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v449 + v452) = qword_100298568;
    v453 = v429(v451, 1, v149);

    if (v453 != 1)
    {
      sub_1000114D4(v451, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    sub_1001FD72C(v451, v449, type metadata accessor for EscrowInformation.Metadata);
  }

  v454 = *(v449 + *(v149 + 20));
  v455 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  v456 = v454 + v455;
  v457 = v610;
  sub_100019C6C(v456, v610, &qword_100298660, &qword_10021E878);
  if (v425(v457, 1, v424) == 1)
  {
    v458 = v609;
    *v609 = 0u;
    v458[1] = 0u;
    *(v458 + 4) = 0xE000000000000000;
    *(v458 + 5) = 0;
    *(v458 + 6) = 0xE000000000000000;
    *(v458 + 7) = 0;
    *(v458 + 8) = 0xE000000000000000;
    *(v458 + 9) = 0;
    *(v458 + 10) = 0xE000000000000000;
    *(v458 + 11) = 0;
    *(v458 + 12) = 0xE000000000000000;
    *(v458 + 13) = 0;
    *(v458 + 14) = 0xE000000000000000;
    *(v458 + 15) = 0;
    *(v458 + 16) = 0xE000000000000000;
    *(v458 + 17) = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    (*(v687 + 7))(v458 + *(v424 + 64), 1, 1, v688);
    v459 = v425(v457, 1, v424);
    v460 = v458;
    v449 = v668;
    if (v459 != 1)
    {
      sub_1000114D4(v457, &qword_100298660, &qword_10021E878);
    }
  }

  else
  {
    v460 = v609;
    sub_1001FD72C(v457, v609, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  }

  sub_1001FD6CC(v449, type metadata accessor for EscrowInformation.Metadata);
  v461 = *(v460 + 32);

  sub_1001FD6CC(v460, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  v462 = sub_100216964();
  v461, v463, v464, v465, v466, v467, v468, v469, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609;
  [v690 setDeviceColor:v462];

  v470 = v608;
  sub_100019C6C(v691 + v693, v608, &unk_10029DAA0, &qword_10021E870);
  if (v429(v470, 1, v149) == 1)
  {
    v471 = v607;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v472 = *(v149 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *&v471[v472] = qword_100298568;
    v473 = v429(v470, 1, v149);

    if (v473 != 1)
    {
      sub_1000114D4(v470, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    v471 = v607;
    sub_1001FD72C(v470, v607, type metadata accessor for EscrowInformation.Metadata);
  }

  v474 = *&v471[*(v149 + 20)];
  v475 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  v476 = v474 + v475;
  v477 = v614;
  sub_100019C6C(v476, v614, &qword_100298660, &qword_10021E878);
  if (v425(v477, 1, v424) == 1)
  {
    v478 = v613;
    *v613 = 0u;
    v478[1] = 0u;
    *(v478 + 4) = 0xE000000000000000;
    *(v478 + 5) = 0;
    *(v478 + 6) = 0xE000000000000000;
    *(v478 + 7) = 0;
    *(v478 + 8) = 0xE000000000000000;
    *(v478 + 9) = 0;
    *(v478 + 10) = 0xE000000000000000;
    *(v478 + 11) = 0;
    *(v478 + 12) = 0xE000000000000000;
    *(v478 + 13) = 0;
    *(v478 + 14) = 0xE000000000000000;
    *(v478 + 15) = 0;
    *(v478 + 16) = 0xE000000000000000;
    *(v478 + 17) = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    (*(v687 + 7))(v478 + *(v424 + 64), 1, 1, v688);
    if (v425(v477, 1, v424) != 1)
    {
      sub_1000114D4(v477, &qword_100298660, &qword_10021E878);
    }
  }

  else
  {
    v478 = v613;
    sub_1001FD72C(v477, v613, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  }

  sub_1001FD6CC(v471, type metadata accessor for EscrowInformation.Metadata);
  v479 = *(v478 + 6);

  sub_1001FD6CC(v478, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  v480 = sub_100216964();
  v479, v481, v482, v483, v484, v485, v486, v487, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609;
  [v690 setDeviceEnclosureColor:v480];

  v488 = v612;
  sub_100019C6C(v691 + v693, v612, &unk_10029DAA0, &qword_10021E870);
  if (v429(v488, 1, v149) == 1)
  {
    v489 = v611;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v490 = *(v149 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v489 + v490) = qword_100298568;
    v491 = v429(v488, 1, v149);

    if (v491 != 1)
    {
      sub_1000114D4(v488, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    v489 = v611;
    sub_1001FD72C(v488, v611, type metadata accessor for EscrowInformation.Metadata);
  }

  v492 = *(v489 + *(v149 + 20));
  v493 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  v494 = v617;
  sub_100019C6C(v492 + v493, v617, &qword_100298660, &qword_10021E878);
  if (v425(v494, 1, v424) == 1)
  {
    v495 = v616;
    *v616 = 0u;
    v495[1] = 0u;
    *(v495 + 4) = 0xE000000000000000;
    *(v495 + 5) = 0;
    *(v495 + 6) = 0xE000000000000000;
    *(v495 + 7) = 0;
    *(v495 + 8) = 0xE000000000000000;
    *(v495 + 9) = 0;
    *(v495 + 10) = 0xE000000000000000;
    *(v495 + 11) = 0;
    *(v495 + 12) = 0xE000000000000000;
    *(v495 + 13) = 0;
    *(v495 + 14) = 0xE000000000000000;
    *(v495 + 15) = 0;
    *(v495 + 16) = 0xE000000000000000;
    *(v495 + 17) = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    (*(v687 + 7))(v495 + *(v424 + 64), 1, 1, v688);
    if (v425(v494, 1, v424) != 1)
    {
      sub_1000114D4(v494, &qword_100298660, &qword_10021E878);
    }
  }

  else
  {
    v495 = v616;
    sub_1001FD72C(v494, v616, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  }

  sub_1001FD6CC(v489, type metadata accessor for EscrowInformation.Metadata);
  v496 = v495;
  v497 = *(v495 + 8);

  sub_1001FD6CC(v496, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  v498 = sub_100216964();
  v497, v499, v500, v501, v502, v503, v504, v505, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609;
  [v690 setDeviceMid:v498];

  v506 = v615;
  sub_100019C6C(v691 + v693, v615, &unk_10029DAA0, &qword_10021E870);
  if (v429(v506, 1, v149) == 1)
  {
    v507 = v672;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v508 = *(v149 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v507 + v508) = qword_100298568;
    v509 = v429(v506, 1, v149);

    if (v509 != 1)
    {
      sub_1000114D4(v506, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    v507 = v672;
    sub_1001FD72C(v506, v672, type metadata accessor for EscrowInformation.Metadata);
  }

  v510 = *(v507 + *(v149 + 20));
  v511 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  v512 = v621;
  sub_100019C6C(v510 + v511, v621, &qword_100298660, &qword_10021E878);
  if (v425(v512, 1, v424) == 1)
  {
    v513 = v620;
    *v620 = 0u;
    v513[1] = 0u;
    *(v513 + 4) = 0xE000000000000000;
    *(v513 + 5) = 0;
    *(v513 + 6) = 0xE000000000000000;
    *(v513 + 7) = 0;
    *(v513 + 8) = 0xE000000000000000;
    *(v513 + 9) = 0;
    *(v513 + 10) = 0xE000000000000000;
    *(v513 + 11) = 0;
    *(v513 + 12) = 0xE000000000000000;
    *(v513 + 13) = 0;
    *(v513 + 14) = 0xE000000000000000;
    *(v513 + 15) = 0;
    *(v513 + 16) = 0xE000000000000000;
    *(v513 + 17) = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    (*(v687 + 7))(v513 + *(v424 + 64), 1, 1, v688);
    if (v425(v512, 1, v424) != 1)
    {
      sub_1000114D4(v512, &qword_100298660, &qword_10021E878);
    }
  }

  else
  {
    v513 = v620;
    sub_1001FD72C(v512, v620, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  }

  sub_1001FD6CC(v672, type metadata accessor for EscrowInformation.Metadata);
  v514 = *(v513 + 10);

  sub_1001FD6CC(v513, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  v515 = sub_100216964();
  v514, v516, v517, v518, v519, v520, v521, v522, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609;
  [v690 setDeviceModel:v515];

  v523 = v619;
  sub_100019C6C(v691 + v693, v619, &unk_10029DAA0, &qword_10021E870);
  if (v429(v523, 1, v149) == 1)
  {
    v524 = v618;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v525 = *(v149 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v524 + v525) = qword_100298568;
    v526 = v429(v523, 1, v149);

    if (v526 != 1)
    {
      sub_1000114D4(v523, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    v524 = v618;
    sub_1001FD72C(v523, v618, type metadata accessor for EscrowInformation.Metadata);
  }

  v527 = *(v524 + *(v149 + 20));
  v528 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  v529 = v527 + v528;
  v530 = v624;
  sub_100019C6C(v529, v624, &qword_100298660, &qword_10021E878);
  if (v425(v530, 1, v424) == 1)
  {
    v531 = v623;
    *v623 = 0u;
    v531[1] = 0u;
    *(v531 + 4) = 0xE000000000000000;
    *(v531 + 5) = 0;
    *(v531 + 6) = 0xE000000000000000;
    *(v531 + 7) = 0;
    *(v531 + 8) = 0xE000000000000000;
    *(v531 + 9) = 0;
    *(v531 + 10) = 0xE000000000000000;
    *(v531 + 11) = 0;
    *(v531 + 12) = 0xE000000000000000;
    *(v531 + 13) = 0;
    *(v531 + 14) = 0xE000000000000000;
    *(v531 + 15) = 0;
    *(v531 + 16) = 0xE000000000000000;
    *(v531 + 17) = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    (*(v687 + 7))(v531 + *(v424 + 64), 1, 1, v688);
    if (v425(v530, 1, v424) != 1)
    {
      sub_1000114D4(v530, &qword_100298660, &qword_10021E878);
    }
  }

  else
  {
    v531 = v623;
    sub_1001FD72C(v530, v623, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  }

  sub_1001FD6CC(v524, type metadata accessor for EscrowInformation.Metadata);
  v532 = *(v531 + 12);

  sub_1001FD6CC(v531, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  v533 = sub_100216964();
  v532, v534, v535, v536, v537, v538, v539, v540, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609;
  [v690 setDeviceModelClass:v533];

  v541 = v622;
  sub_100019C6C(v691 + v693, v622, &unk_10029DAA0, &qword_10021E870);
  if (v429(v541, 1, v149) == 1)
  {
    v542 = v673;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v543 = *(v149 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v542 + v543) = qword_100298568;
    v544 = v429(v541, 1, v149);

    if (v544 != 1)
    {
      sub_1000114D4(v541, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    v542 = v673;
    sub_1001FD72C(v541, v673, type metadata accessor for EscrowInformation.Metadata);
  }

  v545 = *(v542 + *(v149 + 20));
  v546 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  v547 = v627;
  sub_100019C6C(v545 + v546, v627, &qword_100298660, &qword_10021E878);
  if (v425(v547, 1, v424) == 1)
  {
    v548 = v626;
    *v626 = 0u;
    v548[1] = 0u;
    *(v548 + 4) = 0xE000000000000000;
    *(v548 + 5) = 0;
    *(v548 + 6) = 0xE000000000000000;
    *(v548 + 7) = 0;
    *(v548 + 8) = 0xE000000000000000;
    *(v548 + 9) = 0;
    *(v548 + 10) = 0xE000000000000000;
    *(v548 + 11) = 0;
    *(v548 + 12) = 0xE000000000000000;
    *(v548 + 13) = 0;
    *(v548 + 14) = 0xE000000000000000;
    *(v548 + 15) = 0;
    *(v548 + 16) = 0xE000000000000000;
    *(v548 + 17) = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    (*(v687 + 7))(v548 + *(v424 + 64), 1, 1, v688);
    if (v425(v547, 1, v424) != 1)
    {
      sub_1000114D4(v547, &qword_100298660, &qword_10021E878);
    }
  }

  else
  {
    v548 = v626;
    sub_1001FD72C(v547, v626, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  }

  sub_1001FD6CC(v673, type metadata accessor for EscrowInformation.Metadata);
  v549 = v548;
  v550 = *(v548 + 14);

  sub_1001FD6CC(v549, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  v551 = sub_100216964();
  v550, v552, v553, v554, v555, v556, v557, v558, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609;
  [v690 setDeviceModelVersion:v551];

  v559 = v625;
  sub_100019C6C(v691 + v693, v625, &unk_10029DAA0, &qword_10021E870);
  if (v429(v559, 1, v149) == 1)
  {
    v560 = v674;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v561 = *(v149 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v560 + v561) = qword_100298568;
    v562 = v429(v559, 1, v149);

    if (v562 != 1)
    {
      sub_1000114D4(v559, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    v560 = v674;
    sub_1001FD72C(v559, v674, type metadata accessor for EscrowInformation.Metadata);
  }

  v563 = *(v560 + *(v149 + 20));
  v564 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  v565 = v563 + v564;
  v566 = v631;
  sub_100019C6C(v565, v631, &qword_100298660, &qword_10021E878);
  if (v425(v566, 1, v424) == 1)
  {
    v567 = v630;
    *v630 = 0u;
    v567[1] = 0u;
    *(v567 + 4) = 0xE000000000000000;
    *(v567 + 5) = 0;
    *(v567 + 6) = 0xE000000000000000;
    *(v567 + 7) = 0;
    *(v567 + 8) = 0xE000000000000000;
    *(v567 + 9) = 0;
    *(v567 + 10) = 0xE000000000000000;
    *(v567 + 11) = 0;
    *(v567 + 12) = 0xE000000000000000;
    *(v567 + 13) = 0;
    *(v567 + 14) = 0xE000000000000000;
    *(v567 + 15) = 0;
    *(v567 + 16) = 0xE000000000000000;
    *(v567 + 17) = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    (*(v687 + 7))(v567 + *(v424 + 64), 1, 1, v688);
    v568 = v567;
    if (v425(v566, 1, v424) != 1)
    {
      sub_1000114D4(v566, &qword_100298660, &qword_10021E878);
    }
  }

  else
  {
    v568 = v630;
    sub_1001FD72C(v566, v630, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  }

  sub_1001FD6CC(v674, type metadata accessor for EscrowInformation.Metadata);
  v569 = *(v568 + 16);

  sub_1001FD6CC(v568, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  v570 = sub_100216964();
  v569, v571, v572, v573, v574, v575, v576, v577, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609;
  [v690 setDeviceName:v570];

  v578 = v629;
  sub_100019C6C(v691 + v693, v629, &unk_10029DAA0, &qword_10021E870);
  if (v429(v578, 1, v149) == 1)
  {
    v579 = v628;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v580 = *(v149 + 20);
    if (qword_1002974B8 != -1)
    {
      swift_once();
    }

    *(v579 + v580) = qword_100298568;
    v581 = v429(v578, 1, v149);

    if (v581 != 1)
    {
      sub_1000114D4(v578, &unk_10029DAA0, &qword_10021E870);
    }
  }

  else
  {
    v579 = v628;
    sub_1001FD72C(v578, v628, type metadata accessor for EscrowInformation.Metadata);
  }

  v582 = *(v579 + *(v149 + 20));
  v583 = OBJC_IVAR____TtCVV18TrustedPeersHelper17EscrowInformation8MetadataP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__clientMetadata;
  swift_beginAccess();
  v584 = v582 + v583;
  v585 = v633;
  sub_100019C6C(v584, v633, &qword_100298660, &qword_10021E878);
  if (v425(v585, 1, v424) == 1)
  {
    v586 = v632;
    *v632 = 0u;
    v586[1] = 0u;
    *(v586 + 4) = 0xE000000000000000;
    *(v586 + 5) = 0;
    *(v586 + 6) = 0xE000000000000000;
    *(v586 + 7) = 0;
    *(v586 + 8) = 0xE000000000000000;
    *(v586 + 9) = 0;
    *(v586 + 10) = 0xE000000000000000;
    *(v586 + 11) = 0;
    *(v586 + 12) = 0xE000000000000000;
    *(v586 + 13) = 0;
    *(v586 + 14) = 0xE000000000000000;
    *(v586 + 15) = 0;
    *(v586 + 16) = 0xE000000000000000;
    *(v586 + 17) = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    (*(v687 + 7))(v586 + *(v424 + 64), 1, 1, v688);
    v587 = v425(v585, 1, v424);
    v588 = v689;
    if (v587 != 1)
    {
      sub_1000114D4(v585, &qword_100298660, &qword_10021E878);
    }
  }

  else
  {
    v586 = v632;
    sub_1001FD72C(v585, v632, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
    v588 = v689;
  }

  sub_1001FD6CC(v579, type metadata accessor for EscrowInformation.Metadata);
  v589 = *(v586 + 17);
  sub_1001FD6CC(v586, type metadata accessor for EscrowInformation.Metadata.ClientMetadata);
  if ((v589 & 0x8000000000000000) == 0)
  {
    v590 = v690;
    [v690 setDevicePlatform:v589];
    [v588 setClientMetadata:v590];
    if (qword_100297548 == -1)
    {
      goto LABEL_210;
    }

    goto LABEL_220;
  }

LABEL_219:
  __break(1u);
LABEL_220:
  swift_once();
LABEL_210:
  v591 = sub_100216774();
  sub_100002648(v591, qword_10029E7E0);
  v592 = v682;
  v593 = sub_100216754();
  v594 = sub_100216C54();

  if (os_log_type_enabled(v593, v594))
  {
    v595 = swift_slowAlloc();
    v596 = swift_slowAlloc();
    *v595 = 138543362;
    *(v595 + 4) = v592;
    *v596 = v592;
    v597 = v592;
    _os_log_impl(&_mh_execute_header, v593, v594, "setEscrowRecord saving new escrow record: %{public}@", v595, 0xCu);
    sub_1000114D4(v596, &qword_10029D580, &unk_10021CCC0);
  }

  v598 = (&off_100288EE8)[v604];
  v599 = *(v605 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO);
  [v599 *v598];
}

id sub_1001FBCB8()
{
  v1 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v2 = [*(v0 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) fullyViableEscrowRecords];
  if (v2)
  {
    v3 = v2;
    v27 = 0;
    type metadata accessor for EscrowRecordMO();
    sub_1001FC8B0();
    sub_100216BA4();
  }

  v4 = [*(v0 + v1) partiallyViableEscrowRecords];
  if (v4)
  {
    v5 = v4;
    v27 = 0;
    type metadata accessor for EscrowRecordMO();
    sub_1001FC8B0();
    sub_100216BA4();
  }

  v6 = objc_allocWithZone(TPCachedViableBottles);
  isa = sub_100216B14().super.isa;
  _swiftEmptyArrayStorage, v8, v9, v10, v11, v12, v13, v14, v25, v27, v29, v31, v33, v35, v37, v39, vars0, vars8;
  v15 = sub_100216B14().super.isa;
  _swiftEmptyArrayStorage, v16, v17, v18, v19, v20, v21, v22, v26, v28, v30, v32, v34, v36, v38, v40, vars0a, vars8a;
  v23 = [v6 initWithViableBottles:isa partialBottles:v15];

  return v23;
}

void sub_1001FBE54()
{
  v1 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v2 = [*(v0 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) fullyViableEscrowRecords];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for EscrowRecordMO();
    sub_1001FC8B0();
    sub_100216BA4();
  }

  v4 = [*(v0 + v1) partiallyViableEscrowRecords];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for EscrowRecordMO();
    sub_1001FC8B0();
    sub_100216BA4();
  }

  v6 = [*(v0 + v1) legacyEscrowRecords];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for EscrowRecordMO();
    sub_1001FC8B0();
    sub_100216BA4();
  }
}

uint64_t sub_1001FC534()
{
  v0 = sub_100216774();
  sub_1000025E4(v0, qword_10029E7E0);
  sub_100002648(v0, qword_10029E7E0);
  return sub_100216764();
}

uint64_t sub_1001FC5B8(_TtC18TrustedPeersHelper6Client *a1, char a2, void *a3, uint64_t (*a4)(void *, void *), void *a5, void *a6, void *a7, void *a8)
{
  sub_10010EEEC(0xD00000000000001ELL, 0x800000010023D900, a3, a4, a5, a6, a7, a8);
  if (a2)
  {
    if (qword_100297548 != -1)
    {
      swift_once();
    }

    v11 = sub_100216774();
    sub_100002648(v11, qword_10029E7E0);
    swift_errorRetain();
    v12 = sub_100216754();
    v13 = sub_100216C74();
    sub_1001ABC14(a1, 1, v14, v15, v16, v17, v18, v19, v70, v73, v76, v79, v80, v81, v82, v83, v84, v85);
    if (os_log_type_enabled(v12, v13))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 136446210;
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v86._countAndFlagsBits = sub_100216994();
      object = v86._object;
      sub_100216A14(v86);
      object, v23, v24, v25, v26, v27, v28, v29, a1, 0x203A726F727265, 0xE700000000000000, v21, v80, v81, v82, v83, v84, v85;
      sub_1001ABC14(a1, 1, v30, v31, v32, v33, v34, v35, v71, v74, v77, v79, v80, v81, v82, v83, v84, v85);
      v36 = sub_100005FB0(v75, v78, &v79);
      v78, v37, v38, v39, v40, v41, v42, v43, v72, v75, v78, v79, v80, v81, v82, v83, v84, v85;
      *(v20 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v12, v13, "fetchEscrowRecords failed with %{public}s", v20, 0xCu);
      sub_100006128(v21, v44, v45, v46, v47, v48, v49, v50);
    }

    v51 = 0;
    v52 = a1;
  }

  else
  {
    if (qword_100297548 != -1)
    {
      swift_once();
    }

    v53 = sub_100216774();
    sub_100002648(v53, qword_10029E7E0);

    v54 = sub_100216754();
    v55 = sub_100216C54();
    if (os_log_type_enabled(v54, v55))
    {
      v62 = swift_slowAlloc();
      *v62 = 134349056;
      *(v62 + 4) = *a1->endpoint;
      sub_1001ABC14(a1, 0, v63, v64, v65, v66, v67, v68, v70, v73, v76, v79, v80, v81, v82, v83, v84, v85);
      _os_log_impl(&_mh_execute_header, v54, v55, "fetchEscrowRecords succeeded with %{public}ld records", v62, 0xCu);
    }

    else
    {
      sub_1001ABC14(a1, 0, v56, v57, v58, v59, v60, v61, v70, v73, v76, v79, v80, v81, v82, v83, v84, v85);
    }

    v51 = a1;
    v52 = 0;
  }

  return a4(v51, v52);
}

unint64_t sub_1001FC8B0()
{
  result = qword_10029DA88;
  if (!qword_10029DA88)
  {
    type metadata accessor for EscrowRecordMO();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029DA88);
  }

  return result;
}

void sub_1001FC908(void *a1, unsigned __int8 a2)
{
  v4 = sub_100216384();
  v263 = *(v4 - 1);
  v6 = __chkstk_darwin(v4, v5);
  v258 = &v258 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6, v8);
  v259 = &v258 - v10;
  v12 = __chkstk_darwin(v9, v11);
  v14 = &v258 - v13;
  v16 = __chkstk_darwin(v12, v15);
  v18 = &v258 - v17;
  v20 = __chkstk_darwin(v16, v19);
  v22 = &v258 - v21;
  __chkstk_darwin(v20, v23);
  v25 = &v258 - v24;
  v26 = [objc_allocWithZone(OTEscrowRecord) init];
  v27 = [objc_allocWithZone(OTEscrowRecordMetadata) init];
  v28 = [objc_allocWithZone(OTEscrowRecordMetadataClientMetadata) init];
  if (!v26)
  {

    return;
  }

  v261 = v4;
  v262 = v28;
  v260 = v26;
  v29 = v26;
  v30 = [a1 creationDate];
  if (v30)
  {
    v31 = v30;
    sub_100216344();

    v32 = v22;
    v33 = v261;
    (*(v263 + 32))(v25, v32, v261);
    sub_100216334();
    if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    if (v34 <= -1.0)
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if (v34 >= 1.84467441e19)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    [v29 setCreationDate:v34];
    (*(v263 + 8))(v25, v33);
  }

  v35 = [a1 label];
  if (v35)
  {
    v36 = v35;
    sub_100216974();
    v38 = v37;
  }

  else
  {
    v38 = 0xE000000000000000;
  }

  v39 = sub_100216964();
  v38, v40, v41, v42, v43, v44, v45, v46, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267;
  [v29 setLabel:v39];

  v47 = [a1 remainingAttempts];
  if ((v47 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_91;
  }

  [v29 setRemainingAttempts:v47];
  v48 = [a1 silentAttemptAllowed];
  if ((v48 & 0x8000000000000000) != 0)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  [v29 setSilentAttemptAllowed:v48];
  [v29 setRecordStatus:{objc_msgSend(a1, "recordStatus") != 0}];
  v49 = [a1 federationID];
  if (v49)
  {
    v50 = v49;
    sub_100216974();
    v52 = v51;
  }

  else
  {
    v52 = 0xE000000000000000;
  }

  v53 = sub_100216964();
  v52, v54, v55, v56, v57, v58, v59, v60, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267;
  [v29 setFederationId:v53];

  v61 = [a1 expectedFederationID];
  if (v61)
  {
    v62 = v61;
    sub_100216974();
    v64 = v63;
  }

  else
  {
    v64 = 0xE000000000000000;
  }

  v65 = v262;
  v66 = sub_100216964();
  v64, v67, v68, v69, v70, v71, v72, v73, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267;
  [v29 setExpectedFederationId:v66];

  [v29 setRecordViability:a2];
  v74 = [a1 sosViability];
  if (v74 == 2)
  {
    v75 = 2;
  }

  else
  {
    v75 = v74 == 1;
  }

  [v29 setViabilityStatus:v75];
  if (!v27)
  {
    goto LABEL_89;
  }

  v76 = [a1 escrowMetadata];
  if (!v76)
  {
LABEL_88:
    v257 = v27;
    [v29 setEscrowInformationMetadata:v257];

LABEL_89:
    return;
  }

  v77 = v76;
  v78 = [v76 backupKeybagDigest];
  if (v78)
  {
    v79 = v78;
    v80 = sub_100216224();
    v82 = v81;
  }

  else
  {
    v80 = 0;
    v82 = 0xC000000000000000;
  }

  isa = sub_100216204().super.isa;
  sub_100002BF0(v80, v82, v84, v85, v86, v87, v88, v89);
  [v27 setBackupKeybagDigest:isa];

  v90 = [v77 secureBackupTimestamp];
  v91 = v261;
  if (v90)
  {
    v92 = v90;
    sub_100216344();

    (*(v263 + 32))(v18, v14, v91);
    sub_100216334();
    if ((*&v93 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    if (v93 <= -1.0)
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    if (v93 >= 1.84467441e19)
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    [v27 setSecureBackupTimestamp:v93];
    (*(v263 + 8))(v18, v91);
  }

  v94 = [v77 secureBackupUsesMultipleiCSCS];
  if ((v94 & 0x8000000000000000) != 0)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  [v27 setSecureBackupUsesMultipleIcscs:v94];
  v95 = [v77 bottleID];
  if (v95)
  {
    v96 = v95;
    sub_100216974();
    v98 = v97;
  }

  else
  {
    v98 = 0xE000000000000000;
  }

  v99 = sub_100216964();
  v98, v100, v101, v102, v103, v104, v105, v106, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267;
  [v27 setBottleId:v99];

  v107 = [v77 escrowedSPKI];
  if (v107)
  {
    v108 = v107;
    v109 = sub_100216224();
    v111 = v110;
  }

  else
  {
    v109 = 0;
    v111 = 0xC000000000000000;
  }

  v112 = sub_100216204().super.isa;
  sub_100002BF0(v109, v111, v113, v114, v115, v116, v117, v118);
  [v27 setEscrowedSpki:v112];

  v119 = [v77 peerInfo];
  if (v119)
  {
    v120 = v119;
    v121 = sub_100216224();
    v123 = v122;
  }

  else
  {
    v121 = 0;
    v123 = 0xC000000000000000;
  }

  v124 = sub_100216204().super.isa;
  sub_100002BF0(v121, v123, v125, v126, v127, v128, v129, v130);
  [v27 setPeerInfo:v124];

  v131 = [v77 serial];
  if (v131)
  {
    v132 = v131;
    sub_100216974();
    v134 = v133;
  }

  else
  {
    v134 = 0xE000000000000000;
  }

  v135 = sub_100216964();
  v134, v136, v137, v138, v139, v140, v141, v142, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267;
  [v27 setSerial:v135];

  v143 = [v77 build];
  if (v143)
  {
    v144 = v143;
    sub_100216974();
    v146 = v145;
  }

  else
  {
    v146 = 0xE000000000000000;
  }

  v65 = v262;
  v147 = sub_100216964();
  v146, v148, v149, v150, v151, v152, v153, v154, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267;
  [v27 setBuild:v147];

  v155 = [v77 passcodeGen];
  if (v155)
  {
    v156 = v155;
    v157 = [objc_allocWithZone(OTEscrowRecordMetadataPasscodeGeneration) init];
    if (!v157)
    {
LABEL_52:

      goto LABEL_53;
    }

    v158 = v157;
    v159 = [v156 value];
    if ((v159 & 0x8000000000000000) == 0)
    {
      [v158 setValue:v159];
      v160 = v158;
      [v27 setPasscodeGeneration:v160];

      goto LABEL_52;
    }

LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

LABEL_53:
  if (!v65)
  {
LABEL_87:
    [v27 setClientMetadata:v65];

    goto LABEL_88;
  }

  v161 = v65;
  v162 = [v77 clientMetadata];
  if (!v162)
  {
LABEL_86:

    goto LABEL_87;
  }

  v163 = v162;
  v164 = [v162 deviceMid];
  if (v164)
  {
    v165 = v164;
    sub_100216974();
    v167 = v166;
  }

  else
  {
    v167 = 0xE000000000000000;
  }

  v168 = sub_100216964();
  v167, v169, v170, v171, v172, v173, v174, v175, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267;
  [v161 setDeviceMid:v168];

  v176 = [v163 deviceColor];
  if (v176)
  {
    v177 = v176;
    sub_100216974();
    v179 = v178;
  }

  else
  {
    v179 = 0xE000000000000000;
  }

  v180 = sub_100216964();
  v179, v181, v182, v183, v184, v185, v186, v187, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267;
  [v161 setDeviceColor:v180];

  v188 = [v163 deviceModel];
  if (v188)
  {
    v189 = v188;
    sub_100216974();
    v191 = v190;
  }

  else
  {
    v191 = 0xE000000000000000;
  }

  v192 = sub_100216964();
  v191, v193, v194, v195, v196, v197, v198, v199, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267;
  [v161 setDeviceModel:v192];

  v200 = [v163 deviceName];
  if (v200)
  {
    v201 = v200;
    sub_100216974();
    v203 = v202;
  }

  else
  {
    v203 = 0xE000000000000000;
  }

  v204 = sub_100216964();
  v203, v205, v206, v207, v208, v209, v210, v211, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267;
  [v161 setDeviceName:v204];

  v212 = [v163 devicePlatform];
  if ((v212 & 0x8000000000000000) != 0)
  {
    goto LABEL_100;
  }

  [v161 setDevicePlatform:v212];
  v213 = [v163 deviceModelClass];
  if (v213)
  {
    v214 = v213;
    sub_100216974();
    v216 = v215;
  }

  else
  {
    v216 = 0xE000000000000000;
  }

  v217 = sub_100216964();
  v216, v218, v219, v220, v221, v222, v223, v224, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267;
  [v161 setDeviceModelClass:v217];

  v225 = [v163 deviceModelVersion];
  if (v225)
  {
    v226 = v225;
    sub_100216974();
    v228 = v227;
  }

  else
  {
    v228 = 0xE000000000000000;
  }

  v229 = sub_100216964();
  v228, v230, v231, v232, v233, v234, v235, v236, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267;
  [v161 setDeviceModelVersion:v229];

  v237 = [v163 deviceEnclosureColor];
  if (v237)
  {
    v238 = v237;
    sub_100216974();
    v240 = v239;
  }

  else
  {
    v240 = 0xE000000000000000;
  }

  v65 = v262;
  v241 = sub_100216964();
  v240, v242, v243, v244, v245, v246, v247, v248, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267;
  [v161 setDeviceEnclosureColor:v241];

  v249 = [v163 secureBackupMetadataTimestamp];
  if (!v249)
  {
LABEL_82:
    v254 = [v163 secureBackupUsesComplexPassphrase];
    if ((v254 & 0x8000000000000000) == 0)
    {
      [v161 setSecureBackupUsesComplexPassphrase:v254];
      v255 = [v163 secureBackupUsesNumericPassphrase];
      if ((v255 & 0x8000000000000000) == 0)
      {
        [v161 setSecureBackupUsesNumericPassphrase:v255];
        v256 = [v163 secureBackupNumericPassphraseLength];
        if ((v256 & 0x8000000000000000) == 0)
        {
          [v161 setSecureBackupNumericPassphraseLength:v256];

          goto LABEL_86;
        }

        goto LABEL_103;
      }

LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v250 = v258;
  v251 = v249;
  sub_100216344();

  v252 = v259;
  (*(v263 + 32))(v259, v250, v261);
  sub_100216334();
  if ((*&v253 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (v253 <= -1.0)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  if (v253 < 1.84467441e19)
  {
    [v161 setSecureBackupMetadataTimestamp:v253];
    (*(v263 + 8))(v252, v261);
    goto LABEL_82;
  }

LABEL_106:
  __break(1u);
}

uint64_t sub_1001FD6CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001FD72C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001FD794()
{
  v0 = sub_100216774();
  sub_1000025E4(v0, qword_10029E7F8);
  sub_100002648(v0, qword_10029E7F8);
  return sub_100216764();
}

uint64_t sub_1001FD814(uint64_t a1, _TtC18TrustedPeersHelper6Client *a2, void *a3, _TtC18TrustedPeersHelper6Client *a4, void *a5, void *a6, uint64_t a7, _TtC18TrustedPeersHelper6Client *a8)
{
  sub_100216074();
  swift_allocObject();
  v860 = 0x4800000000;
  v861 = sub_100216044();
  sub_100200D60(&v860);
  if (!v8)
  {
    v847 = a3;
    v848 = a1;
    v850 = a2;
    v851 = a4;
    v852 = a6;
    v854 = a5;
    v45 = v860;
    v46 = v861;
    v47 = v861 | 0x4000000000000000;
    v48 = &v858[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_secret];
    *v48 = v860;
    v48[1] = v47;
    objc_allocWithZone(type metadata accessor for EscrowKeys());
    sub_100012558(v45, v46 | 0x4000000000000000);

    v49 = sub_1001F3968(v45, (v46 | 0x4000000000000000), a7, a8);
    v857 = v46;
    v846 = v48;
    v50 = OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowKeys;
    *&v858[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowKeys] = v49;
    v16 = [objc_allocWithZone(OTBottleContents) init];
    if (!v16)
    {
      v107 = v858;
      v850, v51, v52, v53, v54, v55, v56, v57, v599, v622, v645, v668, v692, v717, v741, v765, v788, v812;
      a4, v225, v226, v227, v228, v229, v230, v231, v602, v625, v648, v672, v697, v721, v745, v768, v792, v816;
      a8, v232, v233, v234, v235, v236, v237, v238, v603, v626, v649, v673, v698, v722, v746, v769, v793, v817;
      sub_100200A30();
      swift_allocError();
      *v239 = 3;
      swift_willThrow();
      v46, v240, v241, v242, v243, v244, v245, v246;

      v247 = 0;
      LODWORD(v116) = 0;
      v248 = v846;
      goto LABEL_25;
    }

    v58 = [objc_allocWithZone(OTPrivateKey) init];
    if (!v58)
    {
      a2, v59, v60, v61, v62, v63, v64, v65, v599, v622, v645, v668, v692, v717, v741, v765, v788, v812;
      a4, v249, v250, v251, v252, v253, v254, v255, v605, v628, v651, v675, v700, v724, v748, v771, v795, v819;
      a8, v256, v257, v258, v259, v260, v261, v262, v606, v629, v652, v676, v701, v725, v749, v772, v796, v820;
      sub_100200A30();
      swift_allocError();
      *v263 = 5;
      swift_willThrow();
      v46, v264, v265, v266, v267, v268, v269, v270;

      v247 = 0;
      LODWORD(v116) = 0;
      v16 = 0;
      v107 = v858;
      v248 = v846;
      goto LABEL_25;
    }

    v66 = v58;
    v844 = v16;
    v845 = v50;
    [v58 setKeyType:1];
    v67 = [v854 keyData];
    v68 = sub_100216224();
    v70 = v69;

    isa = sub_100216204().super.isa;
    sub_100002BF0(v68, v70, v72, v73, v74, v75, v76, v77);
    [v66 setKeyData:isa];

    v78 = [objc_allocWithZone(OTPrivateKey) init];
    if (!v78)
    {
      a2, v79, v80, v81, v82, v83, v84, v85, v599, v622, v645, v668, v692, v717, v741, v765, v788, v812;
      v851, v271, v272, v273, v274, v275, v276, v277, v607, v630, v653, v677, v702, v726, v750, v773, v797, v821;
      a8, v278, v279, v280, v281, v282, v283, v284, v608, v631, v654, v678, v703, v727, v751, v774, v798, v822;
      sub_100200A30();
      swift_allocError();
      *v285 = 5;
      swift_willThrow();
      v46, v286, v287, v288, v289, v290, v291, v292;

      v247 = 0;
      LODWORD(v116) = 0;
      v16 = 0;
      v107 = v858;
LABEL_24:
      v50 = v845;
      v248 = v846;
      goto LABEL_25;
    }

    v86 = v78;
    [v78 setKeyType:1];
    v87 = [v852 keyData];
    v88 = sub_100216224();
    v90 = v89;

    v91 = sub_100216204().super.isa;
    sub_100002BF0(v88, v90, v92, v93, v94, v95, v96, v97);
    [v86 setKeyData:v91];

    [v844 setPeerSigningPrivKey:v66];
    [v844 setPeerEncryptionPrivKey:v86];
    v98 = [v844 data];
    v106 = v86;
    v107 = v858;
    if (v98)
    {
      v842 = v66;
      v843 = v106;
      v108 = v98;
      v109 = sub_100216224();
      v111 = v110;

      v112 = [objc_allocWithZone(_SFAESKeySpecifier) initWithBitSize:{objc_msgSend(objc_opt_self(), "aes256BitSize")}];
      v113 = [objc_allocWithZone(_SFAuthenticatedEncryptionOperation) initWithKeySpecifier:v112];

      v114 = sub_100216204().super.isa;
      v115 = *(*&v858[v845] + OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_symmetricKey);
      v860 = 0;
      v116 = [v113 encrypt:v114 withKey:v115 error:&v860];

      v117 = v860;
      if (!v116)
      {
        v315 = v860;
        v850, v316, v317, v318, v319, v320, v321, v322, v599, v622, v645, v668, v692, v717, v741, v765, v788, v812;
        v851, v323, v324, v325, v326, v327, v328, v329, v611, v634, v657, v681, v706, v730, v754, v777, v801, v825;
        a8, v330, v331, v332, v333, v334, v335, v336, v612, v635, v658, v682, v707, v731, v755, v778, v802, v826;
        sub_100216154();

        swift_willThrow();
        v857, v337, v338, v339, v340, v341, v342, v343;
        sub_100002BF0(v109, v111, v344, v345, v346, v347, v348, v349);

        v247 = 0;
LABEL_23:
        v16 = 0;
        goto LABEL_24;
      }

      v841 = v111;
      objc_opt_self();
      v118 = swift_dynamicCastObjCClass();
      if (v118)
      {
        v671 = v118;
        v50 = v845;
        v119 = *(*&v858[v845] + OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_signingKey);
        v120 = v117;
        v838 = v116;
        v121 = [v119 publicKey];
        objc_opt_self();
        v695 = swift_dynamicCastObjCClass();
        if (!v695)
        {
          goto LABEL_47;
        }

        v836 = v121;
        v121 = [*(*&v858[v845] + OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_encryptionKey) publicKey];
        objc_opt_self();
        v815 = v121;
        v744 = v109;
        v839 = swift_dynamicCastObjCClass();
        if (!v839)
        {
          goto LABEL_47;
        }

        v122 = [v854 publicKey];
        objc_opt_self();
        v720 = swift_dynamicCastObjCClass();
        if (!v720 || (v837 = v113, v791 = v122, v122 = [v852 publicKey], objc_opt_self(), (v123 = swift_dynamicCastObjCClass()) == 0))
        {

          goto LABEL_50;
        }

        v124 = v123;
        v125 = [objc_allocWithZone(OTBottle) init];
        if (v125)
        {
          v133 = v125;
          v134 = sub_100216964();
          [v133 setPeerID:v134];

          v135 = sub_100216964();
          [v133 setBottleID:v135];

          v136 = [v695 encodeSubjectPublicKeyInfo];
          v137 = sub_100216224();
          v696 = v124;
          v139 = v138;

          v140 = sub_100216204().super.isa;
          sub_100002BF0(v137, v139, v141, v142, v143, v144, v145, v146);
          [v133 setEscrowedSigningSPKI:v140];

          v147 = [v839 encodeSubjectPublicKeyInfo];
          v148 = sub_100216224();
          v150 = v149;

          v151 = sub_100216204().super.isa;
          sub_100002BF0(v148, v150, v152, v153, v154, v155, v156, v157);
          [v133 setEscrowedEncryptionSPKI:v151];

          v158 = [v720 encodeSubjectPublicKeyInfo];
          v159 = sub_100216224();
          v161 = v160;

          v162 = sub_100216204().super.isa;
          sub_100002BF0(v159, v161, v163, v164, v165, v166, v167, v168);
          [v133 setPeerSigningSPKI:v162];

          v169 = [v696 encodeSubjectPublicKeyInfo];
          v170 = sub_100216224();
          v172 = v171;

          v173 = sub_100216204().super.isa;
          sub_100002BF0(v170, v172, v174, v175, v176, v177, v178, v179);
          [v133 setPeerEncryptionSPKI:v173];

          v180 = [objc_allocWithZone(OTAuthenticatedCiphertext) init];
          if (v180)
          {
            v840 = v180;
            v188 = [v671 ciphertext];
            v189 = sub_100216224();
            v191 = v190;

            v192 = sub_100216204().super.isa;
            sub_100002BF0(v189, v191, v193, v194, v195, v196, v197, v198);
            [v840 setCiphertext:v192];

            v199 = [v671 authenticationCode];
            v200 = sub_100216224();
            v202 = v201;

            v203 = sub_100216204().super.isa;
            sub_100002BF0(v200, v202, v204, v205, v206, v207, v208, v209);
            [v840 setAuthenticationCode:v203];

            v210 = [v671 initializationVector];
            v211 = sub_100216224();
            v213 = v212;

            v214 = sub_100216204().super.isa;
            sub_100002BF0(v211, v213, v215, v216, v217, v218, v219, v220);
            [v840 setInitializationVector:v214];

            [v133 setContents:v840];
            v221 = &v858[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peerID];
            *v221 = v848;
            v221[1] = v850;
            v222 = &v858[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_bottleID];
            *v222 = v847;
            *(v222 + 1) = v851;
            v223 = objc_allocWithZone(type metadata accessor for OctagonSelfPeerKeys());
            swift_bridgeObjectRetain_n();

            v121 = v854;
            v224 = v852;
            v476 = sub_1000576E4(v848, v850, v121, v224);
            v849 = v121;
            v853 = v224;

            *&v858[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peerKeys] = v476;
            v477 = [v133 data];
            if (v477)
            {
              v478 = v477;
              v479 = sub_100216224();
              v481 = v480;

              v482 = &v858[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_contents];
              *v482 = v479;
              v482[1] = v481;
              v855 = v482;
              v483 = [*(*&v858[v845] + OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_signingKey) publicKey];
              objc_opt_self();
              v847 = v483;
              v484 = swift_dynamicCastObjCClass();
              if (!v484)
              {
                while (1)
                {

LABEL_50:
                  sub_1002170E4();
                  __break(1u);
                }
              }

              v492 = v484;
              v850, v485, v486, v487, v488, v489, v490, v491, v599, v622, v133, v671, v696, v720, v744, v122, v791, v815;
              v851, v493, v494, v495, v496, v497, v498, v499, v620, v643, v666, v690, v715, v739, v763, v786, v810, v834;
              a8, v500, v501, v502, v503, v504, v505, v506, v621, v644, v667, v691, v716, v740, v764, v787, v811, v835;
              v507 = [v492 keyData];
              v508 = sub_100216224();
              v510 = v509;

              v511 = &v858[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowSigningPublicKey];
              *v511 = v508;
              v511[1] = v510;
              v512 = [v492 encodeSubjectPublicKeyInfo];
              v513 = sub_100216224();
              v515 = v514;

              v516 = &v858[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowSigningSPKI];
              *v516 = v513;
              v516[1] = v515;
              v517 = [v723 encodeSubjectPublicKeyInfo];
              v518 = sub_100216224();
              v520 = v519;

              v521 = &v858[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peersigningSPKI];
              *v521 = v518;
              v521[1] = v520;
              v522 = [objc_allocWithZone(_SFECKeySpecifier) initWithCurve:4];
              v523 = [objc_allocWithZone(_SFSHA384DigestOperation) init];
              v524 = [objc_allocWithZone(_SFEC_X962SigningOperation) initWithKeySpecifier:v522 digestOperation:v523];

              v525 = *v855;
              v526 = v855[1];
              sub_100012558(*v855, v526);
              v527 = sub_100216204().super.isa;
              sub_100002BF0(v525, v526, v528, v529, v530, v531, v532, v533);
              v534 = *(*&v858[v845] + OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_signingKey);
              v860 = 0;
              v535 = [v524 sign:v527 withKey:v534 error:&v860];

              if (v535)
              {
                v536 = v860;
                v537 = [v535 signature];
                v538 = sub_100216224();
                v540 = v539;

                v541 = &v858[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingEscrowKey];
                *v541 = v538;
                v541[1] = v540;
                v542 = *v855;
                v543 = v855[1];
                sub_100012558(*v855, v543);
                v544 = sub_100216204().super.isa;
                sub_100002BF0(v542, v543, v545, v546, v547, v548, v549, v550);
                v860 = 0;
                v551 = [v524 sign:v544 withKey:v849 error:&v860];

                if (v551)
                {
                  v552 = v860;
                  v553 = [v551 signature];
                  v554 = sub_100216224();
                  v556 = v555;

                  v857, v557, v558, v559, v560, v561, v562, v563;
                  sub_100002BF0(v747, v841, v564, v565, v566, v567, v568, v569);

                  v570 = &v858[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingPeerKey];
                  *v570 = v554;
                  v570[1] = v556;
                  v859.receiver = v858;
                  v859.super_class = type metadata accessor for BottledPeer();
                  v16 = objc_msgSendSuper2(&v859, "init");

                  return v16;
                }

                v585 = v860;
                sub_100216154();

                swift_willThrow();
                v857, v586, v587, v588, v589, v590, v591, v592;
                sub_100002BF0(v747, v841, v593, v594, v595, v596, v597, v598);

                v247 = 1;
                LODWORD(v116) = 1;
                v16 = 1;
              }

              else
              {
                v571 = v860;
                sub_100216154();

                swift_willThrow();
                v857, v572, v573, v574, v575, v576, v577, v578;
                sub_100002BF0(v747, v841, v579, v580, v581, v582, v583, v584);

                v16 = 0;
                v247 = 1;
                LODWORD(v116) = 1;
              }

              goto LABEL_24;
            }

            __break(1u);
LABEL_47:

            goto LABEL_50;
          }

          v850, v181, v182, v183, v184, v185, v186, v187, v599, v622, v645, v671, v696, v720, v744, v122, v791, v815;
          v851, v455, v456, v457, v458, v459, v460, v461, v618, v641, v664, v688, v713, v737, v761, v784, v808, v832;
          a8, v462, v463, v464, v465, v466, v467, v468, v619, v642, v665, v689, v714, v738, v762, v785, v809, v833;
          sub_100200A30();
          swift_allocError();
          *v469 = 4;
          swift_willThrow();

          sub_100002BF0(v747, v841, v470, v471, v472, v473, v474, v475);
          v454 = v857;
        }

        else
        {
          v850, v126, v127, v128, v129, v130, v131, v132, v599, v622, v645, v671, v695, v720, v744, v122, v791, v121;
          v851, v426, v427, v428, v429, v430, v431, v432, v616, v639, v662, v686, v711, v735, v759, v782, v806, v830;
          a8, v433, v434, v435, v436, v437, v438, v439, v617, v640, v663, v687, v712, v736, v760, v783, v807, v831;
          sub_100200A30();
          swift_allocError();
          *v440 = 3;
          swift_willThrow();

          sub_100002BF0(v747, v841, v441, v442, v443, v444, v445, v446);
          v454 = v857;
        }

        v454, v447, v448, v449, v450, v451, v452, v453;

        v247 = 0;
        LODWORD(v116) = 0;
        v16 = 0;
        v248 = v846;
LABEL_25:

        sub_100002BF0(*v248, v248[1], v386, v387, v388, v389, v390, v391);
        if (v247)
        {
          *&v107[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peerID + 8], v392, v393, v394, v395, v396, v397, v398, v604, v627, v650, v674, v699, v723, v747, v770, v794, v818;
          *&v107[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_bottleID + 8], v399, v400, v401, v402, v403, v404, v405, v615, v638, v661, v685, v710, v734, v758, v781, v805, v829;
          if ((v116 & 1) == 0)
          {
LABEL_27:
            if (!v16)
            {
              goto LABEL_34;
            }

            v406 = OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingEscrowKey;
LABEL_33:
            sub_100002BF0(*&v107[v406], *&v107[v406 + 8], v393, v394, v395, v396, v397, v398);
            goto LABEL_34;
          }
        }

        else if (!v116)
        {
          goto LABEL_27;
        }

        if (v16)
        {
          sub_100002BF0(*&v107[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingEscrowKey], *&v107[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingEscrowKey + 8], v407, v408, v409, v410, v411, v412);
        }

        sub_100002BF0(*&v107[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowSigningPublicKey], *&v107[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowSigningPublicKey + 8], v407, v408, v409, v410, v411, v412);
        sub_100002BF0(*&v107[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowSigningSPKI], *&v107[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowSigningSPKI + 8], v413, v414, v415, v416, v417, v418);
        sub_100002BF0(*&v107[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peersigningSPKI], *&v107[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peersigningSPKI + 8], v419, v420, v421, v422, v423, v424);
        v406 = OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_contents;
        goto LABEL_33;
      }

      v350 = v117;
      v850, v351, v352, v353, v354, v355, v356, v357, v599, v622, v645, v668, v692, v717, v741, v765, v788, v812;
      v851, v358, v359, v360, v361, v362, v363, v364, v613, v636, v659, v683, v708, v732, v756, v779, v803, v827;
      a8, v365, v366, v367, v368, v369, v370, v371, v614, v637, v660, v684, v709, v733, v757, v780, v804, v828;
      sub_100200A30();
      swift_allocError();
      *v372 = 4;
      swift_willThrow();

      sub_100002BF0(v109, v111, v373, v374, v375, v376, v377, v378);
      v857, v379, v380, v381, v382, v383, v384, v385;
    }

    else
    {
      v850, v99, v100, v101, v102, v103, v104, v105, v599, v622, v645, v668, v692, v717, v741, v765, v788, v812;
      v851, v293, v294, v295, v296, v297, v298, v299, v609, v632, v655, v679, v704, v728, v752, v775, v799, v823;
      a8, v300, v301, v302, v303, v304, v305, v306, v610, v633, v656, v680, v705, v729, v753, v776, v800, v824;
      sub_100200A30();
      swift_allocError();
      *v307 = 3;
      swift_willThrow();
      v46, v308, v309, v310, v311, v312, v313, v314;
    }

    v247 = 0;
    LODWORD(v116) = 0;
    goto LABEL_23;
  }

  v16 = v861;

  a8, v17, v18, v19, v20, v21, v22, v23, v599, v622, v645, v668, v692, v717, v741, v765, v788, v812;
  v16, v24, v25, v26, v27, v28, v29, v30;

  a2, v31, v32, v33, v34, v35, v36, v37, v600, v623, v646, v669, v693, v718, v742, v766, v789, v813;
  a4, v38, v39, v40, v41, v42, v43, v44, v601, v624, v647, v670, v694, v719, v743, v767, v790, v814;
LABEL_34:
  type metadata accessor for BottledPeer();
  swift_deallocPartialClassInstance();
  return v16;
}

char *sub_1001FEE00(_TtC18TrustedPeersHelper6Client *a1, const char *a2, _TtC18TrustedPeersHelper6Client *a3, const char *a4, uint64_t a5, _TtC18TrustedPeersHelper6Client *a6, _TtC18TrustedPeersHelper6Client *a7, const char *a8, _TtC18TrustedPeersHelper6Client *a9, const char *a10)
{
  v16 = v10 + OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_secret;
  *v16 = a3;
  *(v16 + 8) = a4;
  objc_allocWithZone(type metadata accessor for EscrowKeys());
  sub_100012558(a3, a4);
  sub_100012558(a3, a4);

  v17 = sub_1001F3968(a3, a4, a5, a6);
  if (v11)
  {
    sub_100002BF0(a9, a10, v18, v19, v20, v21, v22, v23);
    sub_100002BF0(a7, a8, v24, v25, v26, v27, v28, v29);
    a6, v30, v31, v32, v33, v34, v35, v36, v872, v878, v884, v891, v897, v904, v911, v917, v923, v929;
    sub_100002BF0(a3, a4, v37, v38, v39, v40, v41, v42);
    sub_100002BF0(a1, a2, v43, v44, v45, v46, v47, v48);
    sub_100002BF0(*v16, *(v16 + 8), v49, v50, v51, v52, v53, v54);
    v55 = v945;
LABEL_49:
    type metadata accessor for BottledPeer();
    swift_deallocPartialClassInstance();
    return v55;
  }

  v940 = a6;
  v938 = a3;
  v939 = a4;
  v942 = OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowKeys;
  v943 = v16;
  v55 = v945;
  *&v945[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowKeys] = v17;
  [*&v17[OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_signingKey] publicKey];
  objc_opt_self();
  v56 = swift_dynamicCastObjCClass();
  v64 = v56;
  if (!v56)
  {
    v940, v57, v58, v59, v60, v61, v62, v63, v872, v878, v884, v891, v897, v904, v911, v917, v923, v929;
    swift_unknownObjectRelease();
    if (qword_100297550 != -1)
    {
      swift_once();
    }

    v125 = sub_100216774();
    sub_100002648(v125, qword_10029E7F8);
    v126 = sub_100216754();
    v127 = sub_100216C54();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      *v128 = 0;
      _os_log_impl(&_mh_execute_header, v126, v127, "escrow key not an SFECPublicKey?", v128, 2u);
    }

    sub_100200A30();
    swift_allocError();
    *v129 = 3;
    swift_willThrow();
    sub_100002BF0(a9, a10, v130, v131, v132, v133, v134, v135);
    sub_100002BF0(a7, a8, v136, v137, v138, v139, v140, v141);
    sub_100002BF0(a3, a4, v142, v143, v144, v145, v146, v147);
    sub_100002BF0(a1, a2, v148, v149, v150, v151, v152, v153);
    goto LABEL_15;
  }

  v937 = v56;
  v65 = [v56 encodeSubjectPublicKeyInfo];
  v66 = sub_100216224();
  v68 = v67;

  v69 = &v945[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowSigningSPKI];
  *v69 = v66;
  v69[1] = v68;
  v70 = objc_allocWithZone(OTBottle);
  sub_100012558(a1, a2);
  isa = sub_100216204().super.isa;
  sub_100002BF0(a1, a2, v72, v73, v74, v75, v76, v77);
  v78 = [v70 initWithData:isa];

  if (!v78)
  {
    v940, v79, v80, v81, v82, v83, v84, v85, v872, v878, v884, v891, v897, v904, v911, v917, v923, v929;
    v157 = v943;
    if (qword_100297550 != -1)
    {
      swift_once();
    }

    v158 = sub_100216774();
    sub_100002648(v158, qword_10029E7F8);
    v159 = sub_100216754();
    v160 = sub_100216C54();
    v64 = v937;
    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      *v161 = 0;
      _os_log_impl(&_mh_execute_header, v159, v160, "Unable to deserialize bottle", v161, 2u);
      v157 = v943;
    }

    sub_100200A30();
    swift_allocError();
    *v162 = 0;
    swift_willThrow();
    sub_100002BF0(a9, a10, v163, v164, v165, v166, v167, v168);
    sub_100002BF0(a7, a8, v169, v170, v171, v172, v173, v174);
    sub_100002BF0(v938, a4, v175, v176, v177, v178, v179, v180);
    sub_100002BF0(a1, a2, v181, v182, v183, v184, v185, v186);
    swift_unknownObjectRelease();
    goto LABEL_41;
  }

  v86 = [v78 escrowedSigningSPKI];
  v936 = v78;
  v930 = v69;
  if (!v86)
  {
    v88 = 0;
    v91 = *v69;
    v92 = v69[1];
    v90 = 0xF000000000000000;
LABEL_22:
    if (v92 >> 60 == 15)
    {
      sub_100012558(v91, v92);
      sub_10004CD18(v88, v90, v187, v188, v189, v190, v191, v192);
      goto LABEL_24;
    }

LABEL_34:
    sub_100012558(v91, v92);
    v940, v294, v295, v296, v297, v298, v299, v300, v872, v878, v884, v891, v897, v904, v911, v917, v923, v930;
    sub_10004CD18(v88, v90, v301, v302, v303, v304, v305, v306);
    sub_10004CD18(v91, v92, v307, v308, v309, v310, v311, v312);
    goto LABEL_35;
  }

  v87 = v86;
  v88 = sub_100216224();
  v90 = v89;

  v91 = *v69;
  v92 = v69[1];
  if (v90 >> 60 == 15)
  {
    goto LABEL_22;
  }

  if (v92 >> 60 == 15)
  {
    goto LABEL_34;
  }

  sub_100012558(v91, v92);
  sub_100012558(v91, v92);
  sub_1000602D0(v88, v90);
  v93 = sub_100052F18(v88, v90, v91, v92);
  sub_10004CD18(v91, v92, v94, v95, v96, v97, v98, v99);
  sub_100002BF0(v91, v92, v100, v101, v102, v103, v104, v105);
  sub_10004CD18(v88, v90, v106, v107, v108, v109, v110, v111);
  sub_10004CD18(v88, v90, v112, v113, v114, v115, v116, v117);
  if (!v93)
  {
    v940, v118, v119, v120, v121, v122, v123, v124, v872, v878, v884, v891, v897, v904, v911, v917, v923, v930;
LABEL_35:
    v157 = v943;
    v64 = v937;
    if (qword_100297550 != -1)
    {
      swift_once();
    }

    v313 = sub_100216774();
    sub_100002648(v313, qword_10029E7F8);
    v314 = sub_100216754();
    v315 = sub_100216C54();
    if (os_log_type_enabled(v314, v315))
    {
      v316 = swift_slowAlloc();
      *v316 = 0;
      _os_log_impl(&_mh_execute_header, v314, v315, "Bottled SPKI does not match re-created SPKI", v316, 2u);
      v55 = v945;
    }

    sub_100200A30();
    swift_allocError();
    *v317 = 8;
    swift_willThrow();
    sub_100002BF0(a9, a10, v318, v319, v320, v321, v322, v323);
    sub_100002BF0(a7, a8, v324, v325, v326, v327, v328, v329);
    sub_100002BF0(v938, a4, v330, v331, v332, v333, v334, v335);
    sub_100002BF0(a1, a2, v336, v337, v338, v339, v340, v341);
    swift_unknownObjectRelease();
    v342 = v936;
    goto LABEL_40;
  }

LABEL_24:
  v193 = [objc_allocWithZone(_SFECKeySpecifier) initWithCurve:4];
  v194 = [objc_allocWithZone(_SFSHA384DigestOperation) init];
  v935 = [objc_allocWithZone(_SFEC_X962SigningOperation) initWithKeySpecifier:v193 digestOperation:v194];

  v195 = objc_allocWithZone(_SFSignedData);
  sub_100012558(a1, a2);
  sub_100012558(a7, a8);
  v196 = sub_100216204().super.isa;
  v197 = sub_100216204().super.isa;
  v198 = [v195 initWithData:v196 signature:v197];

  sub_100002BF0(a7, a8, v199, v200, v201, v202, v203, v204);
  sub_100002BF0(a1, a2, v205, v206, v207, v208, v209, v210);
  v950 = 0;
  swift_unknownObjectRetain();
  v925 = v198;
  v64 = v937;
  v211 = [v935 verify:v198 withKey:v937 error:&v950];
  v212 = v950;
  if (!v211)
  {
    v383 = v212;
    v940, v213, v214, v215, v216, v217, v218, v219, v872, v878, v884, v891, v897, v904, v911, v917, v925, v930;
    swift_unknownObjectRelease();
    sub_100216154();

    swift_willThrow();
    sub_100002BF0(a9, a10, v384, v385, v386, v387, v388, v389);
    sub_100002BF0(a7, a8, v390, v391, v392, v393, v394, v395);
    sub_100002BF0(v938, a4, v396, v397, v398, v399, v400, v401);
    sub_100002BF0(a1, a2, v402, v403, v404, v405, v406, v407);
    swift_unknownObjectRelease();
LABEL_15:
    v154 = 0;
    v155 = 0;
    LODWORD(v156) = 0;
    v157 = v943;
    goto LABEL_42;
  }

  v220 = sub_100216224();
  sub_100002BF0(v220, v221, v222, v223, v224, v225, v226, v227);

  v228 = [objc_allocWithZone(_SFAESKeySpecifier) initWithBitSize:{objc_msgSend(objc_opt_self(), "aes256BitSize")}];
  v229 = [objc_allocWithZone(_SFAuthenticatedEncryptionOperation) initWithKeySpecifier:v228];

  result = [v78 contents];
  if (!result)
  {
    __break(1u);
    goto LABEL_101;
  }

  v231 = result;
  result = [result ciphertext];
  if (!result)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v232 = result;
  v233 = sub_100216224();
  v235 = v234;

  result = [v231 authenticationCode];
  if (!result)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v236 = result;
  v919 = v229;
  v237 = sub_100216224();
  v239 = v238;

  v913 = v231;
  result = [v231 initializationVector];
  if (!result)
  {
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v240 = result;
  v241 = sub_100216224();
  v243 = v242;

  v244 = objc_allocWithZone(_SFAuthenticatedCiphertext);
  v906 = v235;
  v245 = sub_100216204().super.isa;
  v899 = v233;
  v246 = v239;
  v247 = v237;
  v248 = sub_100216204().super.isa;
  v249 = sub_100216204().super.isa;
  v250 = [v244 initWithCiphertext:v245 authenticationCode:v248 initializationVector:v249];

  sub_100002BF0(v241, v243, v251, v252, v253, v254, v255, v256);
  sub_100002BF0(v247, v246, v257, v258, v259, v260, v261, v262);

  sub_100002BF0(v899, v906, v263, v264, v265, v266, v267, v268);
  v269 = *(*&v945[v942] + OBJC_IVAR____TtC18TrustedPeersHelper10EscrowKeys_symmetricKey);
  v950 = 0;
  v270 = v919;
  v271 = [v919 decrypt:v250 withKey:v269 error:&v950];
  v272 = v950;
  if (!v271)
  {
    v156 = v272;
    v940, v273, v274, v275, v276, v277, v278, v279, v872, v878, v884, v891, v899, v906, v913, v919, v925, v930;
    swift_unknownObjectRelease();
    sub_100216154();

    swift_willThrow();
    sub_100002BF0(a9, a10, v408, v409, v410, v411, v412, v413);
    sub_100002BF0(a7, a8, v414, v415, v416, v417, v418, v419);
    sub_100002BF0(v938, v939, v420, v421, v422, v423, v424, v425);
    sub_100002BF0(a1, a2, v426, v427, v428, v429, v430, v431);
    swift_unknownObjectRelease();

    v154 = 0;
    v155 = 0;
    LODWORD(v156) = 0;
LABEL_58:
    v157 = v943;
LABEL_59:
    v64 = v937;
    goto LABEL_42;
  }

  v900 = v250;
  v907 = sub_100216224();
  v281 = v280;

  v289 = v281 >> 62;
  v157 = v943;
  v64 = v937;
  v290 = v925;
  if ((v281 >> 62) > 1)
  {
    v291 = a7;
    v292 = v940;
    v293 = a9;
    if (v289 != 2)
    {
      goto LABEL_64;
    }

    v432 = *(v907 + 16);
    v433 = *(v907 + 24);
LABEL_63:
    if (v432 != v433)
    {
      goto LABEL_65;
    }

LABEL_64:
    v292, v282, v283, v284, v285, v286, v287, v288, v872, v878, v884, v891, v250, v907, v913, v919, v925, v930;
    swift_unknownObjectRelease();
    sub_100200A30();
    swift_allocError();
    *v434 = 1;
    swift_willThrow();
    sub_100002BF0(v293, a10, v435, v436, v437, v438, v439, v440);
    sub_100002BF0(v291, a8, v441, v442, v443, v444, v445, v446);
    sub_100002BF0(v938, v939, v447, v448, v449, v450, v451, v452);
    sub_100002BF0(a1, a2, v453, v454, v455, v456, v457, v458);
    sub_100002BF0(v905, v281, v459, v460, v461, v462, v463, v464);
    swift_unknownObjectRelease();

    v342 = v898;
LABEL_40:

LABEL_41:
    v154 = 0;
    v155 = 0;
    LODWORD(v156) = 0;
    goto LABEL_42;
  }

  v291 = a7;
  v292 = v940;
  v293 = a9;
  if (v289)
  {
    v432 = v907;
    v433 = v907 >> 32;
    goto LABEL_63;
  }

  if ((v281 & 0xFF000000000000) == 0)
  {
    goto LABEL_64;
  }

LABEL_65:
  v465 = objc_allocWithZone(OTBottleContents);
  v466 = v907;
  sub_100012558(v907, v281);
  v467 = sub_100216204().super.isa;
  sub_100002BF0(v907, v281, v468, v469, v470, v471, v472, v473);
  v156 = [v465 initWithData:v467];

  v894 = v156;
  if (!v156)
  {
    v940, v474, v475, v476, v477, v478, v479, v480, v872, v878, v884, 0, v900, v907, v913, v919, v925, v930;
    swift_unknownObjectRelease();
    sub_100200A30();
    swift_allocError();
    *v500 = 0;
    swift_willThrow();
    sub_100002BF0(a9, a10, v501, v502, v503, v504, v505, v506);
    sub_100002BF0(a7, a8, v507, v508, v509, v510, v511, v512);
    sub_100002BF0(v938, v939, v513, v514, v515, v516, v517, v518);
    sub_100002BF0(a1, a2, v519, v520, v521, v522, v523, v524);
    sub_100002BF0(v466, v281, v525, v526, v527, v528, v529, v530);
    swift_unknownObjectRelease();

    v154 = 0;
    v155 = 0;
    goto LABEL_42;
  }

  result = [v936 peerID];
  if (!result)
  {
    goto LABEL_104;
  }

  v481 = result;
  v482 = sub_100216974();
  v484 = v483;

  v485 = &v945[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peerID];
  *v485 = v482;
  v485[1] = v484;
  result = [v936 bottleID];
  v486 = v894;
  if (!result)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v487 = result;
  v488 = sub_100216974();
  v490 = v489;

  v491 = &v945[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_bottleID];
  *v491 = v488;
  v491[1] = v490;
  v156 = v485[1];
  v887 = *v485;

  result = [v894 peerSigningPrivKey];
  if (!result)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v492 = result;
  v950 = 0;
  v493 = [result asECKeyPair:&v950];

  if (!v493)
  {
    v531 = v950;
    v940, v532, v533, v534, v535, v536, v537, v538, v872, v878, v887, v894, v900, v907, v913, v919, v925, v930;
    v156, v539, v540, v541, v542, v543, v544, v545, v875, v881, v888, v895, v902, v909, v915, v921, v927, v933;
    swift_unknownObjectRelease();
    sub_100216154();

    swift_willThrow();
    sub_100002BF0(v905, v281, v546, v547, v548, v549, v550, v551);

    sub_100002BF0(a9, a10, v552, v553, v554, v555, v556, v557);
    sub_100002BF0(a7, a8, v558, v559, v560, v561, v562, v563);
    sub_100002BF0(v938, v939, v564, v565, v566, v567, v568, v569);
    sub_100002BF0(a1, a2, v570, v571, v572, v573, v574, v575);
    swift_unknownObjectRelease();

    v155 = 0;
    LODWORD(v156) = 0;
    v154 = 1;
    goto LABEL_59;
  }

  v494 = v950;
  result = [v894 peerEncryptionPrivKey];
  if (!result)
  {
    goto LABEL_107;
  }

  v495 = result;
  v950 = 0;
  v496 = [result asECKeyPair:&v950];

  v497 = v950;
  if (!v496)
  {
    v576 = v950;
    v940, v577, v578, v579, v580, v581, v582, v583, v872, v878, v887, v894, v900, v907, v913, v919, v925, v930;

    v156, v584, v585, v586, v587, v588, v589, v590, v876, v882, v889, v896, v903, v910, v916, v922, v928, v934;
    swift_unknownObjectRelease();
    sub_100216154();

    swift_willThrow();
    sub_100002BF0(v905, v281, v591, v592, v593, v594, v595, v596);

    sub_100002BF0(a9, a10, v597, v598, v599, v600, v601, v602);
    sub_100002BF0(a7, a8, v603, v604, v605, v606, v607, v608);
    sub_100002BF0(v938, v939, v609, v610, v611, v612, v613, v614);
    sub_100002BF0(a1, a2, v615, v616, v617, v618, v619, v620);
    swift_unknownObjectRelease();

    v155 = 0;
    LODWORD(v156) = 0;
    v154 = 1;
    goto LABEL_58;
  }

  objc_allocWithZone(type metadata accessor for OctagonSelfPeerKeys());
  v498 = v497;
  v499 = sub_1000576E4(v887, v156, v493, v496);
  v883 = OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peerKeys;
  *&v945[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peerKeys] = v499;
  v621 = &v945[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_contents];
  *v621 = a1;
  v621[1] = a2;
  sub_100012558(a1, a2);
  result = [v936 peerSigningSPKI];
  if (!result)
  {
    goto LABEL_108;
  }

  v622 = result;
  v877 = v621;
  v623 = sub_100216224();
  v625 = v624;

  v626 = &v945[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peersigningSPKI];
  *v626 = v623;
  v626[1] = v625;
  result = [v936 peerSigningSPKI];
  if (!result)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v627 = result;
  v628 = sub_100216224();
  v630 = v629;

  v631 = sub_100216204().super.isa;
  v632 = objc_opt_self();
  v890 = [v632 keyWithSubjectPublicKeyInfo:v631];

  sub_100002BF0(v628, v630, v633, v634, v635, v636, v637, v638);
  result = [v936 peerEncryptionSPKI];
  if (result)
  {
    v646 = result;
    v940, v639, v640, v641, v642, v643, v644, v645, v877, v883, v890, v894, v900, v907, v913, v919, v925, v930;
    v647 = sub_100216224();
    v649 = v648;

    v650 = sub_100216204().super.isa;
    v941 = [v632 keyWithSubjectPublicKeyInfo:v650];

    sub_100002BF0(v647, v649, v651, v652, v653, v654, v655, v656);
    v657 = [*(*&v879[v945] + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey) publicKey];
    if (v657)
    {
      v658 = v657;
      v157 = v943;
      v64 = v937;
      v659 = a10;
      v660 = v885;
      if (v885)
      {
        sub_100200D14();
        v661 = v885;
        v662 = sub_100216DC4();

        v660 = v885;
        if ((v662 & 1) == 0)
        {
          goto LABEL_89;
        }

LABEL_84:
        v663 = [*(*&v879[v945] + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_encryptionKey) publicKey];
        v664 = v935;
        if (v663)
        {
          v665 = v663;
          if (v941)
          {
            sub_100200D14();
            v666 = v941;
            v667 = sub_100216DC4();

            v664 = v935;
            if ((v667 & 1) == 0)
            {
              goto LABEL_95;
            }

            goto LABEL_91;
          }

          v664 = v935;
        }

        else if (!v941)
        {
LABEL_91:
          v699 = [v64 encodeSubjectPublicKeyInfo];
          v700 = sub_100216224();
          v702 = v701;

          v703 = *v931;
          v704 = v931[1];
          *v931 = v700;
          v931[1] = v702;
          sub_100002BF0(v703, v704, v705, v706, v707, v708, v709, v710);
          v711 = &v945[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingPeerKey];
          *v711 = a9;
          v711[1] = v659;
          v712 = &v945[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingEscrowKey];
          *v712 = a7;
          v712[1] = a8;
          sub_100012558(a7, a8);
          sub_100012558(a9, v659);
          v713 = [v64 keyData];
          swift_unknownObjectRelease();
          v714 = sub_100216224();
          v716 = v715;

          v717 = &v945[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowSigningPublicKey];
          *v717 = v714;
          v717[1] = v716;
          v718 = *v873;
          v719 = *(v873 + 1);
          v720 = objc_allocWithZone(_SFSignedData);
          sub_100012558(a9, v659);
          sub_100012558(v718, v719);
          v721 = sub_100216204().super.isa;
          v722 = sub_100216204().super.isa;
          v723 = [v720 initWithData:v721 signature:v722];

          sub_100002BF0(a9, a10, v724, v725, v726, v727, v728, v729);
          sub_100002BF0(v718, v719, v730, v731, v732, v733, v734, v735);
          v736 = *(*&v879[v945] + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_publicSigningKey);
          if (v736)
          {
            v950 = 0;
            v931 = v736;
            v737 = [v935 verify:v723 withKey:? error:?];
            v738 = v950;
            if (v737)
            {
              v739 = sub_100216224();
              v741 = v740;
              sub_100002BF0(v905, v281, v742, v743, v744, v745, v746, v747);
              swift_unknownObjectRelease();

              sub_100002BF0(v739, v741, v748, v749, v750, v751, v752, v753);
              v949.receiver = v945;
              v949.super_class = type metadata accessor for BottledPeer();
              v55 = [(Client *)&v949 init];
              sub_100002BF0(a9, a10, v754, v755, v756, v757, v758, v759);
              sub_100002BF0(a7, a8, v760, v761, v762, v763, v764, v765);
              sub_100002BF0(v938, v939, v766, v767, v768, v769, v770, v771);
              sub_100002BF0(a1, a2, v772, v773, v774, v775, v776, v777);
              return v55;
            }

            v841 = v738;
            sub_100216154();

            swift_willThrow();
            sub_100002BF0(v905, v281, v842, v843, v844, v845, v846, v847);

            sub_100002BF0(a9, a10, v848, v849, v850, v851, v852, v853);
            sub_100002BF0(a7, a8, v854, v855, v856, v857, v858, v859);
            sub_100002BF0(v938, v939, v860, v861, v862, v863, v864, v865);
            sub_100002BF0(a1, a2, v866, v867, v868, v869, v870, v871);
            swift_unknownObjectRelease();

            v840 = v931;
          }

          else
          {
            sub_100200A30();
            swift_allocError();
            *v809 = 2;
            swift_willThrow();
            sub_100002BF0(a9, a10, v810, v811, v812, v813, v814, v815);
            sub_100002BF0(a7, a8, v816, v817, v818, v819, v820, v821);
            sub_100002BF0(v938, v939, v822, v823, v824, v825, v826, v827);
            sub_100002BF0(a1, a2, v828, v829, v830, v831, v832, v833);

            sub_100002BF0(v905, v281, v834, v835, v836, v837, v838, v839);
            swift_unknownObjectRelease();

            v840 = v898;
          }

          v154 = 1;
          v155 = 1;
          LODWORD(v156) = 1;
          goto LABEL_58;
        }

LABEL_95:
        swift_unknownObjectRelease();
        sub_100200A30();
        swift_allocError();
        *v778 = 2;
        swift_willThrow();
        sub_100002BF0(a9, v659, v779, v780, v781, v782, v783, v784);
        sub_100002BF0(a7, a8, v785, v786, v787, v788, v789, v790);
        sub_100002BF0(v938, v939, v791, v792, v793, v794, v795, v796);
        sub_100002BF0(a1, a2, v797, v798, v799, v800, v801, v802);

        sub_100002BF0(v905, v281, v803, v804, v805, v806, v807, v808);
        swift_unknownObjectRelease();

        goto LABEL_96;
      }
    }

    else
    {
      v157 = v943;
      v64 = v937;
      v659 = a10;
      v660 = v885;
      if (!v885)
      {
        goto LABEL_84;
      }
    }

LABEL_89:
    swift_unknownObjectRelease();
    sub_100200A30();
    swift_allocError();
    *v668 = 2;
    swift_willThrow();
    sub_100002BF0(a9, v659, v669, v670, v671, v672, v673, v674);
    sub_100002BF0(a7, a8, v675, v676, v677, v678, v679, v680);
    sub_100002BF0(v938, v939, v681, v682, v683, v684, v685, v686);
    sub_100002BF0(a1, a2, v687, v688, v689, v690, v691, v692);

    sub_100002BF0(v905, v281, v693, v694, v695, v696, v697, v698);
    swift_unknownObjectRelease();

LABEL_96:
    LODWORD(v156) = 0;
    v154 = 1;
    v155 = 1;
LABEL_42:

    sub_100002BF0(*v157, *(v157 + 8), v343, v344, v345, v346, v347, v348);
    if (v154)
    {
      *&v55[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peerID + 8], v349, v350, v351, v352, v353, v354, v355, v873, v879, v885, v892, v898, v905, v912, v918, v924, v931;
      *&v55[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_bottleID + 8], v356, v357, v358, v359, v360, v361, v362, v874, v880, v886, v893, v901, v908, v914, v920, v926, v932;
      if ((v155 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else if (!v155)
    {
LABEL_44:
      v363 = 0;
      v364 = &off_10029E000;
      if (!v156)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

    v363 = 1;
    v364 = &off_10029E000;
    if ((v156 & 1) == 0)
    {
LABEL_46:
      if (v64)
      {
        sub_100002BF0(*(v364[266] + v55), *(v364[266] + v55 + 8), v350, v351, v352, v353, v354, v355);
        if ((v363 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      else if (!v363)
      {
        goto LABEL_49;
      }

      sub_100002BF0(*&v55[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peersigningSPKI], *&v55[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peersigningSPKI + 8], v350, v351, v352, v353, v354, v355);
      sub_100002BF0(*&v55[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_contents], *&v55[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_contents + 8], v377, v378, v379, v380, v381, v382);
      goto LABEL_49;
    }

LABEL_45:
    sub_100002BF0(*&v55[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingEscrowKey], *&v55[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingEscrowKey + 8], v350, v351, v352, v353, v354, v355);
    sub_100002BF0(*&v55[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingPeerKey], *&v55[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingPeerKey + 8], v365, v366, v367, v368, v369, v370);
    sub_100002BF0(*&v55[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowSigningPublicKey], *&v55[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowSigningPublicKey + 8], v371, v372, v373, v374, v375, v376);
    goto LABEL_46;
  }

LABEL_110:
  __break(1u);
  return result;
}

id sub_1002008D4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BottledPeer();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100200A30()
{
  result = qword_10029E890;
  if (!qword_10029E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029E890);
  }

  return result;
}

uint64_t sub_100200A84(uint64_t a1)
{
  v2 = sub_100200CC0();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100200AC0(uint64_t a1)
{
  v2 = sub_100200CC0();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100200AFC(unsigned __int8 a1, uint64_t a2)
{
  if (a1 <= 3u)
  {
    v6 = "t bottle contents";
    v7 = "failed to create bottle";
    v8 = 0xD000000000000017;
    if (a1 == 2)
    {
      v8 = 0xD000000000000031;
    }

    else
    {
      v7 = " authenticated ciphertext";
    }

    if (a1)
    {
      v6 = "keys do not match";
    }

    if (a1 <= 1u)
    {
      v4 = 0xD000000000000021;
    }

    else
    {
      v4 = v8;
    }

    if (a1 <= 1u)
    {
      v5 = v6;
    }

    else
    {
      v5 = v7;
    }
  }

  else if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      v4 = 0xD000000000000029;
    }

    else
    {
      v4 = 0xD00000000000001CLL;
    }

    if (a1 == 4)
    {
      v5 = "failed to create private key";
    }

    else
    {
      v5 = "failed to create escrow keys";
    }
  }

  else
  {
    v2 = "the bottle contents";
    v3 = 0xD000000000000018;
    if (a1 != 7)
    {
      v3 = 0xD000000000000043;
      v2 = "I";
    }

    if (a1 == 6)
    {
      v4 = 0xD00000000000001CLL;
    }

    else
    {
      v4 = v3;
    }

    if (a1 == 6)
    {
      v5 = "failed to create entropy";
    }

    else
    {
      v5 = v2;
    }
  }

  v9 = v5 | 0x8000000000000000;
  v10 = sub_100216974();
  v12 = v11;
  v29 = &type metadata for String;
  *&v27 = v4;
  *(&v27 + 1) = v9;
  sub_1000125AC(&v27, &v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100185894(&v24, v10, v12, isUniquelyReferenced_nonNull_native);
  v12, v14, v15, v16, v17, v18, v19, v20, v22, &_swiftEmptyDictionarySingleton, v24, *(&v24 + 1), v25, v26, v27, *(&v27 + 1), v28, v29;
  return v23;
}

unint64_t sub_100200CC0()
{
  result = qword_10029E898;
  if (!qword_10029E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029E898);
  }

  return result;
}

unint64_t sub_100200D14()
{
  result = qword_10029E8A0;
  if (!qword_10029E8A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10029E8A0);
  }

  return result;
}

void sub_100200D60(int *a1)
{
  sub_1002161B4();
  v2 = *a1;
  v3 = a1[1];
  if (v3 < v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = *(a1 + 1);

  v5 = sub_100216034();
  if (!v5)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = sub_100216064();
  v8 = v2 - v7;
  if (__OFSUB__(v2, v7))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v3 - v2;
  v10 = sub_100216054();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (SecRandomCopyBytes(kSecRandomDefault, v11, (v6 + v8)))
  {
    sub_100200A30();
    swift_allocError();
    *v19 = 7;
    swift_willThrow();
  }

  v4, v12, v13, v14, v15, v16, v17, v18;
}

uint64_t sub_100200E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = [objc_allocWithZone(_SFECKeySpecifier) initWithCurve:4];
  v7 = [objc_allocWithZone(_SFSHA384DigestOperation) init];
  v8 = [objc_allocWithZone(_SFEC_X962SigningOperation) initWithKeySpecifier:v6 digestOperation:v7];

  v9 = objc_allocWithZone(_SFSignedData);
  isa = sub_100216204().super.isa;
  v11 = sub_100216204().super.isa;
  v12 = [v9 initWithData:isa signature:v11];

  v26 = 0;
  v13 = [v8 verify:v12 withKey:a5 error:&v26];
  v14 = v26;
  if (v13)
  {
    v15 = sub_100216224();
    v17 = v16;

    sub_100002BF0(v15, v17, v18, v19, v20, v21, v22, v23);
  }

  else
  {
    v24 = v14;
    sub_100216154();

    swift_willThrow();
  }

  return 1;
}

uint64_t getEnumTagSinglePayload for BottledPeer.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BottledPeer.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10020115C()
{
  result = qword_10029E8A8;
  if (!qword_10029E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029E8A8);
  }

  return result;
}

void sub_1002011B0(void *a1, void *a2)
{
  v3 = v2;
  if (qword_100297558 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  sub_100002648(v6, qword_10029E8B0);
  v7 = sub_100216754();
  v8 = sub_100216C64();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "onqueueRemoveDuplicateVouchers start", v9, 2u);
  }

  v10 = objc_autoreleasePoolPush();
  sub_100201A60(a1, a2, v3, &v11);
  objc_autoreleasePoolPop(v10);
}

uint64_t sub_1002012E4()
{
  v0 = sub_100216774();
  sub_1000025E4(v0, qword_10029E8B0);
  sub_100002648(v0, qword_10029E8B0);
  return sub_100216764();
}

void sub_100201360(void *a1, void *a2, unint64_t a3, _TtC18TrustedPeersHelper6Client *a4, unint64_t a5)
{
  v7 = a4;
  v8 = a3;
  v10 = sub_10019CE9C(a1, a2, a3, a4);
  if (v5)
  {
    goto LABEL_2;
  }

  v75 = 0;
  if (!v10)
  {
    if (qword_100297558 != -1)
    {
      swift_once();
    }

    v41 = sub_100216774();
    sub_100002648(v41, qword_10029E8B0);

    v42 = sub_100216754();
    v43 = sub_100216C74();
    v7, v44, v45, v46, v47, v48, v49, v50, v72, v73, v74, 0, v76, v77, v78, v79, v80, v81;
    if (os_log_type_enabled(v42, v43))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v76 = v52;
      *v51 = 136446210;
      *(v51 + 4) = sub_100005FB0(v8, v7, &v76);
      _os_log_impl(&_mh_execute_header, v42, v43, "Could not find peerMO for beneficiary %{public}s", v51, 0xCu);
      sub_100006128(v52, v53, v54, v55, v56, v57, v58, v59);
    }

    if (a5 >> 62)
    {
      v60 = sub_1002170F4();
    }

    else
    {
      v60 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = a1;
    if (!v60)
    {
LABEL_44:

      return;
    }

    v8 = 0;
    while (1)
    {
      if ((a5 & 0xC000000000000001) != 0)
      {
        v61 = sub_100217014();
      }

      else
      {
        if (v8 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v61 = *(a5 + 8 * v8 + 32);
      }

      v62 = v61;
      v63 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_55;
      }

      [(Client *)v7 deleteObject:v61];

      ++v8;
      if (v63 == v60)
      {
        goto LABEL_44;
      }
    }
  }

  v73 = v7;
  v74 = a1;
  v72 = v8;
  if (a5 >> 62)
  {
    v71 = v10;
    v32 = sub_1002170F4();
    v10 = v71;
  }

  else
  {
    v32 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v10;
  if (v32)
  {
    v34 = 0;
    v8 = a5 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a5 & 0xC000000000000001) != 0)
      {
        v35 = sub_100217014();
      }

      else
      {
        if (v34 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v35 = *(a5 + 8 * v34 + 32);
      }

      v36 = v35;
      v7 = (v34 + 1);
      if (__OFADD__(v34, 1))
      {
        break;
      }

      [v33 addVouchersObject:v35];

      ++v34;
      if (v7 == v32)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_18:

  v76 = 0;
  if (![a1 save:&v76])
  {
    v64 = v76;
    sub_100216154();

    swift_willThrow();
    if (qword_100297558 != -1)
    {
      swift_once();
    }

    v65 = sub_100216774();
    sub_100002648(v65, qword_10029E8B0);
    swift_errorRetain();
    v66 = sub_100216754();
    v67 = sub_100216C74();

    v8 = v72;
    v7 = v73;
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v68 = 138543362;
      swift_errorRetain();
      v70 = _swift_stdlib_bridgeErrorToNSError();
      *(v68 + 4) = v70;
      *v69 = v70;
      _os_log_impl(&_mh_execute_header, v66, v67, "voucher cleanup unable to save %{public}@", v68, 0xCu);
      sub_10005707C(v69);
    }

    swift_willThrow();
LABEL_2:
    if (qword_100297558 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_59;
  }

  v37 = v76;
  v7 = a1;
  if (v32)
  {
    v8 = 0;
    while (1)
    {
      if ((a5 & 0xC000000000000001) != 0)
      {
        v38 = sub_100217014();
      }

      else
      {
        if (v8 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v38 = *(a5 + 8 * v8 + 32);
      }

      v39 = v38;
      v40 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (([v38 hasChanges] & 1) == 0)
      {
        [(Client *)v7 refreshObject:v39 mergeChanges:0];
      }

      ++v8;
      if (v40 == v32)
      {
        goto LABEL_50;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_3:
    v11 = sub_100216774();
    sub_100002648(v11, qword_10029E8B0);

    swift_errorRetain();
    v12 = sub_100216754();
    v13 = sub_100216C74();
    v7, v14, v15, v16, v17, v18, v19, v20, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81;

    if (os_log_type_enabled(v12, v13))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v76 = v23;
      *v21 = 136446466;
      *(v21 + 4) = sub_100005FB0(v8, v7, &v76);
      *(v21 + 12) = 2112;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v24;
      *v22 = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to move vouchers for beneficiary %{public}s): %@", v21, 0x16u);
      sub_10005707C(v22);

      sub_100006128(v23, v25, v26, v27, v28, v29, v30, v31);
    }

    else
    {
    }

    return;
  }

LABEL_50:

  if (![v33 hasChanges])
  {
    [(Client *)v7 refreshObject:v33 mergeChanges:0];
  }
}

void sub_100201A60(void *a1, void *a2, void *a3, void *a4)
{
  v9 = objc_allocWithZone(NSFetchRequest);
  v10 = sub_100216964();
  v11 = [v9 initWithEntityName:v10];

  sub_100006174();
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v12 = swift_allocObject();
  v54 = xmmword_10021D600;
  *(v12 + 16) = xmmword_10021D600;
  *(v12 + 56) = type metadata accessor for ContainerMO();
  *(v12 + 64) = sub_100006208(&qword_10029D5B0, type metadata accessor for ContainerMO);
  *(v12 + 32) = a1;
  v13 = a1;
  v14 = sub_100216C34();
  [v11 setPredicate:v14];

  sub_10001148C(&qword_10029D150, &qword_100226560);
  v15 = swift_allocObject();
  *(v15 + 16) = v54;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 32) = 0x444972656570;
  *(v15 + 40) = 0xE600000000000000;
  isa = sub_100216B14().super.isa;
  v15, v17, v18, v19, v20, v21, v22, v23, v54, *(&v54 + 1), v55[0], v55[1], v56, v57, v58[0], v58[1], v59, v60;
  [v11 setPropertiesToFetch:isa];

  [v11 setFetchBatchSize:10];
  v63 = 0;
  v59 = &v63;
  v60 = a3;
  v61 = v13;
  v62 = a2;
  v24 = swift_allocObject();
  *v24->endpoint = a2;
  v56 = sub_1000063FC;
  v57 = v24;
  v25 = a2;
  sub_10010994C(v11, sub_100005E50, v58, sub_1000062DC, v55);
  v24, v26, v27, v28, v29, v30, v31, v32;
  if (v4)
  {

    *a4 = v4;
  }

  else
  {
    if (v63 == 1)
    {
      if (qword_100297558 != -1)
      {
        swift_once();
      }

      v33 = sub_100216774();
      *&v54 = sub_100002648(v33, qword_10029E8B0);
      v34 = sub_100216754();
      v35 = sub_100216C94();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "voucher cleanup: have to iterate again", v36, 2u);
      }

      v63 = 0;
      __chkstk_darwin(v37, v38);
      v53[2] = &v63;
      v53[3] = a3;
      v53[4] = v13;
      v53[5] = v25;
      v39 = swift_allocObject();
      *v39->endpoint = v25;
      v52[2] = sub_100201F3C;
      v52[3] = __chkstk_darwin(v39, v40);
      v41 = v25;
      sub_10010994C(v11, sub_100005E38, v53, sub_100201FA0, v52);
      v39, v42, v43, v44, v45, v46, v47, v48;
      if (v63 == 1)
      {
        v49 = sub_100216754();
        v50 = sub_100216C74();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&_mh_execute_header, v49, v50, "voucher cleanup: Unexpectedly have to iterate again??", v51, 2u);
        }
      }
    }

    [v25 refreshAllObjects];
  }
}

unint64_t sub_100202100()
{
  result = qword_10029E8E0;
  if (!qword_10029E8E0)
  {
    sub_1000570E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029E8E0);
  }

  return result;
}

id VoucherMO.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id BottleMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for BottleMO();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id BottleMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BottleMO();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static BottleMO.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_100216964();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_100202334@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for BottleMO();
  result = sub_100216FF4();
  *a2 = result;
  return result;
}

id ContainerMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ContainerMO();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id ContainerMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContainerMO();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static ContainerMO.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_100216964();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_1002024F8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ContainerMO();
  result = sub_100216FF4();
  *a2 = result;
  return result;
}

id CustodianRecoveryKeyMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CustodianRecoveryKeyMO();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id CustodianRecoveryKeyMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustodianRecoveryKeyMO();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static CustodianRecoveryKeyMO.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_100216964();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_1002026BC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CustodianRecoveryKeyMO();
  result = sub_100216FF4();
  *a2 = result;
  return result;
}

id EscrowClientMetadataMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for EscrowClientMetadataMO();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id EscrowClientMetadataMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EscrowClientMetadataMO();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static EscrowClientMetadataMO.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_100216964();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_100202880@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EscrowClientMetadataMO();
  result = sub_100216FF4();
  *a2 = result;
  return result;
}

id EscrowMetadataMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for EscrowMetadataMO();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id EscrowMetadataMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EscrowMetadataMO();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static EscrowMetadataMO.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_100216964();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_100202A4C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EscrowMetadataMO();
  result = sub_100216FF4();
  *a2 = result;
  return result;
}

id EscrowRecordMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for EscrowRecordMO();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id EscrowRecordMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EscrowRecordMO();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static EscrowRecordMO.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_100216964();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_100202C14@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EscrowRecordMO();
  result = sub_100216FF4();
  *a2 = result;
  return result;
}

id MachineMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for MachineMO();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id MachineMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MachineMO();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static MachineMO.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_100216964();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_100202DD4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MachineMO();
  result = sub_100216FF4();
  *a2 = result;
  return result;
}

id PasscodeGen.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PasscodeGen();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id PasscodeGen.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PasscodeGen();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static PasscodeGen.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_100216964();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_100202F9C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PasscodeGen();
  result = sub_100216FF4();
  *a2 = result;
  return result;
}

id PeerMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PeerMO();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id PeerMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeerMO();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static PeerMO.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_100216964();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_1002030D8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PeerMO();
  result = sub_100216FF4();
  *a2 = result;
  return result;
}

id PolicyMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PolicyMO();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id PolicyMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PolicyMO();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static PolicyMO.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_100216964();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_100203294@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PolicyMO();
  result = sub_100216FF4();
  *a2 = result;
  return result;
}

id RecoveryVoucherMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for RecoveryVoucherMO();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id RecoveryVoucherMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecoveryVoucherMO();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static RecoveryVoucherMO.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_100216964();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_100203460@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for RecoveryVoucherMO();
  result = sub_100216FF4();
  *a2 = result;
  return result;
}

id VoucherMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for VoucherMO();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id VoucherMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoucherMO();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static VoucherMO.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_100216964();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_1002035A4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for VoucherMO();
  result = sub_100216FF4();
  *a2 = result;
  return result;
}

void sub_1002037A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002037BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002037D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 userInfo];
  obj = [v4 objectForKeyedSubscript:@"CKRetryAfter"];

  v5 = obj;
  if (obj)
  {
    v6 = *(*(a1 + 32) + 8);
    if (*(v6 + 40))
    {
      [obj doubleValue];
      v8 = v7;
      [*(*(*(a1 + 32) + 8) + 40) doubleValue];
      v5 = obj;
      if (v8 >= v9)
      {
        goto LABEL_6;
      }

      v6 = *(*(a1 + 32) + 8);
    }

    objc_storeStrong((v6 + 40), obj);
    v5 = obj;
  }

LABEL_6:
}

uint64_t sub_1002069B0(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 3)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = (&off_100289058)[v13];
        v15 = PBReaderReadData();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id TrustedPeersHelperSetupProtocol(void *a1)
{
  v1 = a1;
  if (qword_1002B02B8 != -1)
  {
    dispatch_once(&qword_1002B02B8, &stru_100289070);
  }

  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v33 count:2];
  v23 = [NSSet setWithArray:v2];

  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v3 = [NSArray arrayWithObjects:v32 count:2];
  v4 = [NSSet setWithArray:v3];

  v31[0] = objc_opt_class();
  v31[1] = objc_opt_class();
  v5 = [NSArray arrayWithObjects:v31 count:2];
  v24 = [NSSet setWithArray:v5];

  v21 = [NSSet setWithObject:objc_opt_class()];
  v22 = [NSSet setWithObject:objc_opt_class()];
  v19 = [NSSet setWithObject:objc_opt_class()];
  v18 = [NSSet setWithObject:objc_opt_class()];
  v30[0] = objc_opt_class();
  v30[1] = objc_opt_class();
  v6 = [NSArray arrayWithObjects:v30 count:2];
  v17 = [NSSet setWithArray:v6];

  v29[0] = objc_opt_class();
  v29[1] = objc_opt_class();
  v29[2] = objc_opt_class();
  v29[3] = objc_opt_class();
  v7 = [NSArray arrayWithObjects:v29 count:4];
  v20 = [NSSet setWithArray:v7];

  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v8 = [NSArray arrayWithObjects:v28 count:2];
  v16 = [NSSet setWithArray:v8];

  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v9 = [NSArray arrayWithObjects:v27 count:2];
  v15 = [NSSet setWithArray:v9];

  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v10 = [NSArray arrayWithObjects:v26 count:2];
  v14 = [NSSet setWithArray:v10];

  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v11 = [NSArray arrayWithObjects:v25 count:2];
  v13 = [NSSet setWithArray:v11];

  [v1 setXPCType:&_xpc_type_fd forSelector:"dumpWithSpecificUser:fileDescriptor:reply:" argumentIndex:1 ofReply:0];
  [v1 setClasses:qword_1002B02B0 forSelector:"dumpWithSpecificUser:fileDescriptor:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"honorIDMSListChangesForSpecificUser:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"octagonPeerIDGivenBottleIDWithSpecificUser:bottleID:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"trustedDeviceNamesByPeerIDWithSpecificUser:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"departByDistrustingSelfWithSpecificUser:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"distrustPeerIDsWithSpecificUser:peerIDs:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"dropPeerIDsWithSpecificUser:peerIDs:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"trustStatusWithSpecificUser:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"resetWithSpecificUser:resetReason:idmsTargetContext:idmsCuttlefishPassword:notifyIdMS:internalAccount:demoAccount:isGuitarfish:accountIsW:accountType:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"performCKServerUnreadableDataRemovalWithSpecificUser:isGuitarfish:accountIsW:internalAccount:demoAccount:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"localResetWithSpecificUser:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"setAllowedMachineIDsWithSpecificUser:allowedMachineIDs:userInitiatedRemovals:evictedRemovals:unknownReasonRemovals:honorIDMSListChanges:version:flowID:deviceSessionID:canSendMetrics:altDSID:trustedDeviceHash:deletedDeviceHash:trustedDevicesUpdateTimestamp:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"markTrustedDeviceListFetchFailed:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"fetchAllowedMachineIDsWithSpecificUser:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"fetchEgoEpochWithSpecificUser:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"prepareWithSpecificUser:epoch:machineID:bottleSalt:bottleID:modelID:deviceName:serialNumber:osVersion:policyVersion:policySecrets:syncUserControllableViews:secureElementIdentity:setting:signingPrivKeyPersistentRef:encPrivKeyPersistentRef:reply:" argumentIndex:6 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:"preflightVouchWithBottleWithSpecificUser:bottleID:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:3 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:"preflightVouchWithRecoveryKeyWithSpecificUser:recoveryKey:salt:reply:" argumentIndex:2 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:"joinWithSpecificUser:voucherData:voucherSig:ckksKeys:tlkShares:preapprovedKeys:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:3 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"preflightPreapprovedJoinWithSpecificUser:preapprovedKeys:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"attemptPreapprovedJoinWithSpecificUser:ckksKeys:tlkShares:preapprovedKeys:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:3 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:"setPreapprovedKeysWithSpecificUser:preapprovedKeys:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:"fetchViableBottlesWithSpecificUser:source:flowID:deviceSessionID:reply:" argumentIndex:2 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"fetchViableEscrowRecordsWithSpecificUser:source:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"fetchEscrowContentsWithSpecificUser:reply:" argumentIndex:3 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"fetchPolicyDocumentsWithSpecificUser:versions:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"fetchRecoverableTLKSharesWithSpecificUser:peerID:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"fetchCurrentPolicyWithSpecificUser:modelIDOverride:isInheritedAccount:reply:" argumentIndex:2 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:"setRecoveryKeyWithSpecificUser:recoveryKey:salt:ckksKeys:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"createCustodianRecoveryKeyWithSpecificUser:recoveryKey:salt:ckksKeys:uuid:kind:reply:" argumentIndex:2 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"removeCustodianRecoveryKeyWithSpecificUser:uuid:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:? argumentIndex:? ofReply:?];
  [v1 setClasses:qword_1002B02B0 forSelector:"getSupportAppInfoWithSpecificUser:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"resetAccountCDPContentsWithSpecificUser:idmsTargetContext:idmsCuttlefishPassword:notifyIdMS:internalAccount:demoAccount:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"removeEscrowCacheWithSpecificUser:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"fetchAccountSettingsWithSpecificUser:forceFetch:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"isRecoveryKeySet:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"removeRecoveryKey:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"performATOPRVActionsWithSpecificUser:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"testSemaphoreWithSpecificUser:arg:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"preflightRecoverOctagonUsingRecoveryKey:recoveryKey:salt:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"fetchTrustedPeerCountWithSpecificUser:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"fetchTrustedFullPeerCountWithSpecificUser:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"octagonContainsDistrustedRecoveryKeysWithSpecificUser:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"fetchCurrentItemWithSpecificUser:items:reply:" argumentIndex:2 ofReply:1];
  [v1 setClasses:qword_1002B02B0 forSelector:"fetchPCSIdentityByPublicKeyWithSpecificUser:pcsservices:reply:" argumentIndex:2 ofReply:1];
  [v1 setClasses:v20 forSelector:"fetchAccountSettingsWithSpecificUser:forceFetch:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v24 forSelector:"fetchRecoverableTLKSharesWithSpecificUser:peerID:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v23 forSelector:"establishWithSpecificUser:ckksKeys:tlkShares:preapprovedKeys:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:1 ofReply:0];
  [v1 setClasses:v4 forSelector:"establishWithSpecificUser:ckksKeys:tlkShares:preapprovedKeys:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:2 ofReply:0];
  [v1 setClasses:v24 forSelector:"establishWithSpecificUser:ckksKeys:tlkShares:preapprovedKeys:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:v23 forSelector:"joinWithSpecificUser:voucherData:voucherSig:ckksKeys:tlkShares:preapprovedKeys:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:3 ofReply:0];
  [v1 setClasses:v4 forSelector:"joinWithSpecificUser:voucherData:voucherSig:ckksKeys:tlkShares:preapprovedKeys:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:4 ofReply:0];
  [v1 setClasses:v24 forSelector:"joinWithSpecificUser:voucherData:voucherSig:ckksKeys:tlkShares:preapprovedKeys:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:v23 forSelector:"attemptPreapprovedJoinWithSpecificUser:ckksKeys:tlkShares:preapprovedKeys:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:1 ofReply:0];
  [v1 setClasses:v4 forSelector:"attemptPreapprovedJoinWithSpecificUser:ckksKeys:tlkShares:preapprovedKeys:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:2 ofReply:0];
  [v1 setClasses:v24 forSelector:"attemptPreapprovedJoinWithSpecificUser:ckksKeys:tlkShares:preapprovedKeys:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:v23 forSelector:"vouchWithSpecificUser:peerID:permanentInfo:permanentInfoSig:stableInfo:stableInfoSig:ckksKeys:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:6 ofReply:0];
  [v1 setClasses:v4 forSelector:"vouchWithBottleWithSpecificUser:bottleID:entropy:bottleSalt:tlkShares:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:4 ofReply:0];
  [v1 setClasses:v4 forSelector:"vouchWithBottleWithSpecificUser:bottleID:entropy:bottleSalt:tlkShares:altDSID:flowID:deviceSessionID:canSendMetrics:reply:" argumentIndex:2 ofReply:1];
  [v1 setClasses:v23 forSelector:"setRecoveryKeyWithSpecificUser:recoveryKey:salt:ckksKeys:reply:" argumentIndex:3 ofReply:0];
  [v1 setClasses:v24 forSelector:"setRecoveryKeyWithSpecificUser:recoveryKey:salt:ckksKeys:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v23 forSelector:"createCustodianRecoveryKeyWithSpecificUser:recoveryKey:salt:ckksKeys:uuid:kind:reply:" argumentIndex:3 ofReply:0];
  [v1 setClasses:v24 forSelector:"createCustodianRecoveryKeyWithSpecificUser:recoveryKey:salt:ckksKeys:uuid:kind:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v4 forSelector:"vouchWithRecoveryKeyWithSpecificUser:recoveryKey:salt:tlkShares:reply:" argumentIndex:3 ofReply:0];
  [v1 setClasses:v4 forSelector:"vouchWithRecoveryKeyWithSpecificUser:recoveryKey:salt:tlkShares:reply:" argumentIndex:2 ofReply:1];
  [v1 setClasses:v4 forSelector:"vouchWithCustodianRecoveryKeyWithSpecificUser:crk:tlkShares:reply:" argumentIndex:2 ofReply:0];
  [v1 setClasses:v4 forSelector:"vouchWithRerollWithSpecificUser:oldPeerID:tlkShares:reply:" argumentIndex:2 ofReply:0];
  [v1 setClasses:v24 forSelector:"prepareInheritancePeerWithSpecificUser:epoch:machineID:bottleSalt:bottleID:modelID:deviceName:serialNumber:osVersion:policyVersion:policySecrets:syncUserControllableViews:secureElementIdentity:signingPrivKeyPersistentRef:encPrivKeyPersistentRef:crk:reply:" argumentIndex:7 ofReply:1];
  [v1 setClasses:v4 forSelector:"vouchWithCustodianRecoveryKeyWithSpecificUser:crk:tlkShares:reply:" argumentIndex:2 ofReply:1];
  [v1 setClasses:v4 forSelector:"recoverTLKSharesForInheritorWithSpecificUser:crk:tlkShares:reply:" argumentIndex:2 ofReply:0];
  [v1 setClasses:v4 forSelector:"recoverTLKSharesForInheritorWithSpecificUser:crk:tlkShares:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v22 forSelector:"createCustodianRecoveryKeyWithSpecificUser:recoveryKey:salt:ckksKeys:uuid:kind:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:v22 forSelector:"preflightVouchWithCustodianRecoveryKeyWithSpecificUser:crk:reply:" argumentIndex:1 ofReply:0];
  [v1 setClasses:v22 forSelector:"vouchWithCustodianRecoveryKeyWithSpecificUser:crk:tlkShares:reply:" argumentIndex:1 ofReply:0];
  [v1 setClasses:v22 forSelector:"findCustodianRecoveryKeyWithSpecificUser:uuid:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v19 forSelector:"requestHealthCheckWithSpecificUser:requiresEscrowCheck:repair:danglingPeerCleanup:caesarPeerCleanup:updateIdMS:knownFederations:flowID:deviceSessionID:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v18 forSelector:"requestEscrowCheckWithSpecificUser:requiresEscrowCheck:passcodeGeneration:knownFederations:isBackgroundCheck:flowID:deviceSessionID:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v21 forSelector:"updateWithSpecificUser:forceRefetch:deviceName:serialNumber:osVersion:policyVersion:policySecrets:syncUserControllableViews:secureElementIdentity:walrusSetting:webAccess:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v21 forSelector:"fetchTrustStateWithSpecificUser:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v17 forSelector:"fetchTrustStateWithSpecificUser:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:v23 forSelector:"updateTLKsWithSpecificUser:ckksKeys:tlkShares:reply:" argumentIndex:1 ofReply:0];
  [v1 setClasses:v4 forSelector:"updateTLKsWithSpecificUser:ckksKeys:tlkShares:reply:" argumentIndex:2 ofReply:0];
  [v1 setClasses:v24 forSelector:"updateTLKsWithSpecificUser:ckksKeys:tlkShares:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v14 forSelector:"fetchCurrentItemWithSpecificUser:items:reply:" argumentIndex:1 ofReply:0];
  [v1 setClasses:v13 forSelector:"fetchCurrentItemWithSpecificUser:items:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v24 forSelector:"fetchCurrentItemWithSpecificUser:items:reply:" argumentIndex:1 ofReply:1];
  [v1 setClasses:v16 forSelector:"fetchPCSIdentityByPublicKeyWithSpecificUser:pcsservices:reply:" argumentIndex:1 ofReply:0];
  [v1 setClasses:v15 forSelector:"fetchPCSIdentityByPublicKeyWithSpecificUser:pcsservices:reply:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v24 forSelector:"fetchPCSIdentityByPublicKeyWithSpecificUser:pcsservices:reply:" argumentIndex:1 ofReply:1];

  return v1;
}

void sub_10020A538(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int128 buf)
{
  if (a2 == 1)
  {
    v37 = objc_begin_catch(a1);
    v38 = secLogObjForScope();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v37;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "TrustedPeersHelperSetupProtocol failed, continuing, but you might crash later: %@", &buf, 0xCu);
    }

    v39 = v37;
    objc_exception_throw(v37);
  }

  _Unwind_Resume(a1);
}

void sub_10020A610(id a1)
{
  v1 = CKAcceptableValueClasses();
  v2 = [NSMutableSet setWithSet:v1];
  v3 = qword_1002B02B0;
  qword_1002B02B0 = v2;

  v4 = qword_1002B02B0;
  v5 = +[SecXPCHelper safeErrorClasses];
  [v4 unionSet:v5];
}

id SecCKKSHostOSVersion()
{
  *&v0 = 0xAAAAAAAAAAAAAAAALL;
  *(&v0 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[14] = v0;
  v13 = v0;
  v12[12] = v0;
  v12[13] = v0;
  v12[10] = v0;
  v12[11] = v0;
  v12[8] = v0;
  v12[9] = v0;
  v12[6] = v0;
  v12[7] = v0;
  v12[4] = v0;
  v12[5] = v0;
  v12[2] = v0;
  v12[3] = v0;
  v12[0] = v0;
  v12[1] = v0;
  v9 = 256;
  v1 = sysctlbyname("kern.osrelease", v12, &v9, 0, 0);
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[14] = v2;
  v11 = v2;
  v10[12] = v2;
  v10[13] = v2;
  v10[10] = v2;
  v10[11] = v2;
  v10[8] = v2;
  v10[9] = v2;
  v10[6] = v2;
  v10[7] = v2;
  v10[4] = v2;
  v10[5] = v2;
  v10[2] = v2;
  v10[3] = v2;
  v10[0] = v2;
  v10[1] = v2;
  v8 = 256;
  if (sysctlbyname("kern.osversion", v10, &v8, 0, 0) | v1 || (HIBYTE(v13) = 0, HIBYTE(v11) = 0, [NSString stringWithFormat:@"%s (%s)", v12, v10], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = +[NSProcessInfo processInfo];
    v4 = [v3 operatingSystemVersionString];

    v5 = [v4 stringByReplacingOccurrencesOfString:@"Version" withString:&stru_10028A1A8];
  }

  v6 = [NSString stringWithFormat:@"%@ %@", @"iphone", v5];

  return v6;
}

uint64_t sub_10020DB78(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadData();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_10020F5C8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10020F740;
  v19 = sub_10020F750;
  v5 = &_os_log_disabled;
  v20 = &_os_log_disabled;
  if (qword_1002B02C8 != -1)
  {
    dispatch_once(&qword_1002B02C8, &stru_1002890D0);
  }

  v6 = qword_1002B02C0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020F758;
  block[3] = &unk_1002890F8;
  v12 = v4;
  v13 = v3;
  v14 = &v15;
  v7 = v3;
  v8 = v4;
  dispatch_sync(v6, block);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

uint64_t sub_10020F740(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10020F758(void *a1)
{
  if (!qword_1002B02D0)
  {
    v2 = +[NSMutableDictionary dictionary];
    v3 = qword_1002B02D0;
    qword_1002B02D0 = v2;
  }

  v4 = a1[5];
  if (a1[4])
  {
    v5 = [v4 stringByAppendingFormat:@"-%@", a1[4]];
  }

  else
  {
    v5 = v4;
  }

  v13 = v5;
  v6 = [qword_1002B02D0 objectForKeyedSubscript:v5];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (!*(*(a1[6] + 8) + 40))
  {
    v9 = v13;
    v10 = os_log_create("com.apple.security.ckks", [v13 cStringUsingEncoding:4]);
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    [qword_1002B02D0 setObject:*(*(a1[6] + 8) + 40) forKeyedSubscript:v13];
  }
}

void sub_10020F86C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("ckks-logger", v3);
  v2 = qword_1002B02C0;
  qword_1002B02C0 = v1;
}

void sub_100215E14(id a1)
{
  byte_1002B02D8 = _os_feature_enabled_impl();
  v1 = secLogObjForScope();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_1002B02D8)
    {
      v2 = "enabled";
    }

    else
    {
      v2 = "disabled";
    }

    v3 = 136315138;
    v4 = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SeparateUserKeychain set via feature flag to %s", &v3, 0xCu);
  }
}

CFURLRef SecCopyURLForFileInUserScopedKeychainDirectory(uint64_t a1)
{
  if (qword_1002B02E0 != -1)
  {
    dispatch_once(&qword_1002B02E0, &stru_100289128);
  }

  syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", byte_1002B02D8);
  v2 = SecCopyBaseFilesURL();
  if (a1)
  {
    Copy = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/%@", @"Library/Keychains", a1);
  }

  else
  {
    Copy = CFStringCreateCopy(kCFAllocatorDefault, @"Library/Keychains");
  }

  v4 = Copy;
  if (v2 && Copy)
  {
    v5 = CFURLCreateCopyAppendingPathComponent(kCFAllocatorDefault, v2, Copy, a1 == 0);
    CFRelease(v4);
LABEL_12:
    CFRelease(v2);
    return v5;
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  v5 = 0;
  if (v2)
  {
    goto LABEL_12;
  }

  return v5;
}