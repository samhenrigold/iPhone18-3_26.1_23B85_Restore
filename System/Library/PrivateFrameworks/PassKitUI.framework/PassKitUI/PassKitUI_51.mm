uint64_t sub_1BD56CEC0(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D194();
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C54();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1BD026000, v11, v12, a4, v13, 2u);
    MEMORY[0x1BFB45F20](v13, -1, -1);
  }

  result = (*(v8 + 8))(v10, v7);
  if (a1)
  {
    return a1(a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD56D028(unint64_t a1, char *a2, double a3)
{
  v45 = a2;
  v4 = sub_1BE051F54();
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1BE051FA4();
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  v14 = sub_1BE04AF64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - v19;
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v21);
  v24 = &v44 - v23;
  if (!a1)
  {
    goto LABEL_15;
  }

  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_15:
    (*(v15 + 56))(v13, 1, 1, v14, v22);
    return sub_1BD15D69C(v13);
  }

  result = sub_1BE053704();
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x1BFB40900](0, a1, v22);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v26 = *(a1 + 32);
  }

  v27 = v26;
  v28 = [v26 transactionDate];

  if (v28)
  {
    sub_1BE04AEE4();

    (*(v15 + 56))(v10, 0, 1, v14);
  }

  else
  {
    (*(v15 + 56))(v10, 1, 1, v14);
  }

  sub_1BD1CBBEC(v10, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_1BD15D69C(v13);
  }

  (*(v15 + 32))(v24, v13, v14);
  sub_1BE04AEF4();
  sub_1BE04AEA4();
  v29 = *(v15 + 8);
  v29(v17, v14);
  v30 = sub_1BE04AE74();
  v29(v20, v14);
  if (v30)
  {
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v44 = sub_1BE052D54();
    v31 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    aBlock[4] = sub_1BD56E974;
    v52 = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_71;
    v45 = _Block_copy(aBlock);
    v52, v33, v34, v35, v36, v37, v38, v39;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD56E888(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0);
    v40 = v47;
    v41 = v50;
    sub_1BE053664();
    v43 = v44;
    v42 = v45;
    MEMORY[0x1BFB3FDF0](0, v7, v40, v45);
    _Block_release(v42);

    (*(v49 + 8))(v40, v41);
    (*(v46 + 8))(v7, v48);
  }

  return (v29)(v24, v14);
}

void sub_1BD56D624(uint64_t a1)
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1BE04D194();
    v7 = sub_1BE04D204();
    v8 = sub_1BE052C54();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BD026000, v7, v8, "Found a recent transaction", v9, 2u);
      MEMORY[0x1BFB45F20](v9, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    v6[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_hasReceivedTransaction] = 1;
    sub_1BD56D7A8();
  }
}

uint64_t sub_1BD56D7A8()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_hasReceivedTransaction;
  v7 = *(v1 + OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_hasReceivedTransaction);
  v8 = OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_hasReceivedAccountUpdate;
  v9 = *(v1 + OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_hasReceivedAccountUpdate);
  sub_1BE04D194();
  v10 = sub_1BE04D204();
  v11 = sub_1BE052C54();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = v9;
    v14 = v12;
    *v12 = 67109376;
    *(v12 + 4) = v7;
    *(v12 + 8) = 1024;
    *(v12 + 10) = v13;
    _os_log_impl(&dword_1BD026000, v10, v11, "Check on timer,\nhasReceivedTransaction: %{BOOL}d,\nhasReceivedAccountUpdate: %{BOOL}d", v12, 0xEu);
    MEMORY[0x1BFB45F20](v14, -1, -1);
  }

  result = (*(v3 + 8))(v5, v2);
  if (*(v1 + v6) == 1 && *(v1 + v8) == 1)
  {
    if (*(v1 + OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_waitingForData))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1BE052E04();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1BD56DAA8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_hasReceivedAccountUpdate] = 1;
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_1BD56D7A8();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_accountService);
    v6 = v4;
    v7 = v5;

    if (v5)
    {
      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      [v7 unregisterObserver_];
    }
  }
}

void sub_1BD56DC14(void *a1, void (*a2)(void, void), uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v111 - v8;
  if (!a1)
  {
    __break(1u);
    goto LABEL_20;
  }

  v120 = v9;
  v10 = *(v3 + OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_scheduleTransferModel);
  v11 = *(v3 + OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_paymentRequest);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a2;
  v122 = v13;
  v13[4] = a3;
  v124 = v12;
  sub_1BE048964();
  v112 = a2;
  v111[1] = a3;
  sub_1BD0D44B8(a2, a3);
  [a1 selectedMethods];
  PKSetAccountServiceTransferPrefersBank();
  v14 = [a1 peerPaymentBalance];
  v15 = *(v10 + 48);
  *(v10 + 48) = v14;

  v129 = MEMORY[0x1BFB403C0](0);
  v17 = v16;
  LODWORD(v121) = v18;
  v19 = MEMORY[0x1BFB403C0](0);
  v21 = v20;
  v128 = v22;
  v123 = v11;
  v23 = [v11 _transactionAmount];
  if (!v23)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v24 = v23;
  [v23 decimalValue];
  v126 = v134;
  v25 = v135;
  v131 = v136;
  v127 = v137;
  v133 = v138;
  v132 = v139;
  v26 = v140;
  v130 = v141;
  v27 = v142;

  v28 = [a1 selectedMethods];
  v125 = v10;
  v29 = *(v10 + 48);
  if (v29 && (v30 = [v29 amount]) != 0 && (v30, (v28 & 2) != 0))
  {
    v37 = v25;
    v36 = v131;
    v33 = v133;
    v38 = v21 >> 16;
    v32 = v132;
    v40 = HIDWORD(v21);
    v31 = v26;
    v42 = v128;
    v43 = HIWORD(v128);
    v34 = v127;
    v35 = v126;
    v26 = HIWORD(v21);
    v39 = v21;
    v41 = HIWORD(v19);
    v25 = HIDWORD(v19);
    v44 = v19;
    v45 = v130;
  }

  else if (v28)
  {
    v35 = v129;
    v37 = HIDWORD(v129);
    v31 = HIWORD(v17);
    v33 = v17 >> 16;
    v34 = v17;
    v36 = HIWORD(v129);
    v32 = HIDWORD(v17);
    v43 = v27;
    v45 = v121;
    v27 = WORD1(v121);
    v42 = v130;
    v39 = v127;
    v44 = v126;
    v40 = v132;
    v38 = v133;
    v41 = v131;
  }

  else
  {
    v25 = HIDWORD(v19);
    v31 = HIWORD(v17);
    v32 = HIDWORD(v17);
    v33 = v17 >> 16;
    v34 = v17;
    v35 = v129;
    v36 = HIWORD(v129);
    v37 = HIDWORD(v129);
    v26 = HIWORD(v21);
    v38 = v21 >> 16;
    v39 = v21;
    v40 = HIDWORD(v21);
    v41 = HIWORD(v19);
    v42 = v128;
    v43 = HIWORD(v128);
    v44 = v19;
    v45 = v121;
    v27 = WORD1(v121);
  }

  v119 = v37;
  v115 = v36;
  v114 = v34;
  v116 = v32;
  v117 = v33;
  v118 = v31;
  v130 = v45;
  v121 = v25;
  v131 = v41;
  v132 = v40;
  v133 = v38;
  v113 = v43;
  v46 = v123;
  sub_1BD8597AC(v123, a1, v35 | (v37 << 32) | (v36 << 48), v34 | (v33 << 16) | (v32 << 32) | (v31 << 48), v45 | (v27 << 16), v44 | (v25 << 32) | (v41 << 48), v39 | (v38 << 16) | (v40 << 32) | (v26 << 48), v42 | (v43 << 16));
  if (v47)
  {
    v48 = v47;
    v126 = v44;
    v127 = v39;
    v112 = v26;
    v129 = v35;
    v128 = v42;
    v49 = swift_allocObject();
    v49[2] = 0;
    v50 = [a1 selectedMethods];
    v51 = [a1 bankAccountInformation];
    v52 = [v46 paymentSummaryItemsWithFundingSources:v50 bankAccount:v51];

    v53 = v122;
    if (!v52)
    {
      sub_1BD0E5E8C(0, &qword_1EBD3D4A0, 0x1E69B8E90);
      v54 = sub_1BE052744();
      v52 = sub_1BE052724();
      v54, v55, v56, v57, v58, v59, v60, v61;
    }

    v62 = [objc_allocWithZone(MEMORY[0x1E69B8D88]) initWithPaymentSummaryItems_];

    v63 = sub_1BE0528D4();
    v64 = v120;
    (*(*(v63 - 8) + 56))(v120, 1, 1, v63);
    sub_1BE0528A4();
    v65 = v46;
    v66 = v125;
    sub_1BE048964();
    v67 = v48;
    sub_1BE048964();
    sub_1BE048964();
    v68 = v62;
    v69 = sub_1BE052894();
    v70 = swift_allocObject();
    v71 = MEMORY[0x1E69E85E0];
    *(v70 + 16) = v69;
    *(v70 + 24) = v71;
    *(v70 + 32) = v65;
    *(v70 + 40) = v66;
    *(v70 + 48) = v67;
    *(v70 + 56) = v129;
    *(v70 + 60) = v119;
    *(v70 + 62) = v115;
    *(v70 + 64) = v114;
    LOWORD(v71) = v116;
    *(v70 + 66) = v117;
    *(v70 + 68) = v71;
    *(v70 + 70) = v118;
    *(v70 + 72) = v130;
    *(v70 + 74) = v27;
    *(v70 + 76) = v126;
    *(v70 + 80) = v121;
    *(v70 + 82) = v131;
    *(v70 + 84) = v127;
    LOWORD(v71) = v132;
    *(v70 + 86) = v133;
    *(v70 + 88) = v71;
    *(v70 + 90) = v112;
    *(v70 + 92) = v128;
    *(v70 + 94) = v113;
    *(v70 + 96) = v49;
    *(v70 + 104) = sub_1BD56E994;
    *(v70 + 112) = v53;
    *(v70 + 120) = v68;
    v72 = sub_1BD122C00(0, 0, v64, &unk_1BE0E1F28, v70);
    v124, v73, v74, v75, v76, v77, v78, v79;
    v49, v80, v81, v82, v83, v84, v85, v86;
    v72, v87, v88, v89, v90, v91, v92, v93;

    goto LABEL_18;
  }

  v101 = v124;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v53 = v122;
  if (Strong)
  {
    v103 = *&Strong[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_scheduleTransferRequest];
    *&Strong[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_scheduleTransferRequest] = 0;
  }

  if (v112)
  {
    v112(0, 0);
    v101, v104, v105, v106, v107, v108, v109, v110;
LABEL_18:
    v53, v94, v95, v96, v97, v98, v99, v100;
    return;
  }

LABEL_21:
  __break(1u);
}

void sub_1BD56E334(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v7 = [objc_allocWithZone(MEMORY[0x1E69B8468]) initWithApplePayTrustProtocol_];
  if (v7)
  {
    v8 = v7;
    [v7 setSignature_];
    KeyPath = swift_getKeyPath();
    v10 = swift_getKeyPath();
    sub_1BE04D8B4(aBlock);
    KeyPath, v11, v12, v13, v14, v15, v16, v17;
    v10, v18, v19, v20, v21, v22, v23, v24;
    v25 = aBlock[0];
    v26 = *&v3[OBJC_IVAR____TtC9PassKitUI38AccountTransferAuthorizationController_paymentWebService];
    if (v26)
    {
      v27 = swift_allocObject();
      v27[2] = v3;
      v27[3] = a2;
      v27[4] = a3;
      aBlock[4] = sub_1BD56E86C;
      v43 = v27;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD14E1D8;
      aBlock[3] = &block_descriptor_35_2;
      v28 = _Block_copy(aBlock);
      v29 = v43;
      v30 = v8;
      v31 = v25;
      v32 = v3;
      sub_1BD0D44B8(a2, a3);
      v29, v33, v34, v35, v36, v37, v38, v39;
      [v26 applePayTrustSignatureRequestWithRequest:v30 account:v31 completion:v28];

      _Block_release(v28);
    }

    else
    {
    }
  }

  else
  {
    v40 = [objc_allocWithZone(MEMORY[0x1E69B8B80]) initWithStatus:1 errors:0];
    if (a2)
    {
      v41 = v40;
      a2();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BD56E580()
{
  v0 = sub_1BE051F54();
  v18 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BE051FA4();
  v3 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v6 = sub_1BE052D54();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BD56E864;
  v20 = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_124;
  v8 = _Block_copy(aBlock);
  v20, v9, v10, v11, v12, v13, v14, v15;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD56E888(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v5, v2, v8);
  _Block_release(v8);

  (*(v18 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v17);
}

uint64_t sub_1BD56E888(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_44Tm(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (*(v8 + 16))
  {
    *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD56E9A0(uint64_t a1)
{
  v10 = v1[3];
  v11 = v1[2];
  v8 = v1[5];
  v9 = v1[4];
  v4 = v1[7];
  v12 = v1[8];
  v5 = v1[6];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BD0F985C;

  return sub_1BD858B20(a1, v11, v10, v9, v8, v5, v4, v12);
}

uint64_t type metadata accessor for PeerPaymentModel(uint64_t a1)
{
  result = qword_1EBD36460;
  if (!qword_1EBD36460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD56EB74(uint64_t a1)
{
  sub_1BD0E5E8C(319, &qword_1EBD4AD68, 0x1E69B8F00);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AvailablePass(319);
    if (v2 <= 0x3F)
    {
      sub_1BD56EC98();
      if (v3 <= 0x3F)
      {
        type metadata accessor for PKPaymentRequestType(319);
        if (v4 <= 0x3F)
        {
          sub_1BD56ECE8(319);
          if (v5 <= 0x3F)
          {
            sub_1BD0E5E8C(319, &qword_1EBD4AD80, 0x1E69B8B68);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1BD56EC98()
{
  if (!qword_1EBD4AD70)
  {
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4AD70);
    }
  }
}

void sub_1BD56ECE8(uint64_t a1)
{
  if (!qword_1EBD4AD78)
  {
    type metadata accessor for PKPeerPaymentRequestType(255);
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD4AD78);
    }
  }
}

void sub_1BD56ED40(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PeerPaymentModel(0);
  v8 = *(v7 - 1);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = [a1 peerPaymentPass];
  if (!v12)
  {

    v20 = 1;
LABEL_91:
    (*(v8 + 56))(a2, v20, 1, v7);
    return;
  }

  v88 = a2;

  v13 = [a1 paymentRequest];
  if (!v13)
  {
    __break(1u);
    goto LABEL_93;
  }

  v14 = v13;
  v15 = [v13 isPeerPaymentRequest];
  v16 = [v14 requestType];
  v17 = v16;
  v18 = v15;
  if ((v15 & 1) == 0)
  {
    v18 = v15;
    if (v16 == 2)
    {
      v18 = [v14 accountPaymentSupportsPeerPayment];
    }
  }

  v19 = [a1 itemForType_];
  v87 = v6;
  v85 = v17;
  if (v19)
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v92 = 0u;
    v93 = 0u;
  }

  v94 = v92;
  v95 = v93;
  if (*(&v93 + 1))
  {
    sub_1BD0E5E8C(0, &qword_1EBD3E6D0, 0x1E69B8BA0);
    if (swift_dynamicCast())
    {
      v21 = v90;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    sub_1BD0DE53C(&v94, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    v21 = 0;
  }

  if ([a1 itemForType_])
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v92 = 0u;
    v93 = 0u;
  }

  v94 = v92;
  v95 = v93;
  if (!*(&v93 + 1))
  {
    sub_1BD0DE53C(&v94, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    if (!v21)
    {
      goto LABEL_31;
    }

    v22 = 0;
LABEL_27:
    v23 = v21;
    goto LABEL_28;
  }

  sub_1BD0E5E8C(0, &qword_1EBD4AD98, 0x1E69B86A0);
  if (swift_dynamicCast())
  {
    v22 = v90;
  }

  else
  {
    v22 = 0;
  }

  if (v21)
  {
    goto LABEL_27;
  }

  if (v22)
  {
    v23 = v22;
    v22 = v90;
LABEL_28:
    v24 = [v23 showPeerPaymentBalance];
    if ((v18 | v24))
    {
      v81 = v18 ^ 1 | v24;
      goto LABEL_33;
    }

    goto LABEL_51;
  }

LABEL_31:
  if ((v18 & 1) == 0)
  {

LABEL_51:
    v20 = 1;
    a2 = v88;
    goto LABEL_91;
  }

  v22 = 0;
  v81 = 0;
LABEL_33:
  v80 = v21;
  if ([a1 itemForType_])
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v94 = 0u;
    v95 = 0u;
  }

  v92 = v94;
  v93 = v95;
  sub_1BD0DE19C(&v92, &v94, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  if (*(&v95 + 1))
  {
    sub_1BD0E5E8C(0, &qword_1EBD4AD90, 0x1E69B8F20);
    if (swift_dynamicCast())
    {
      v25 = v90;
      v82 = [v90 shouldShowDisclosure];

      v86 = 1;
      goto LABEL_41;
    }
  }

  else
  {
    sub_1BD0DE53C(&v94, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  }

  v86 = 0;
  v82 = 0;
LABEL_41:
  v84 = [a1 peerPaymentAccount];
  if (!v84)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v78 = v4;
  v79 = v8;
  v26 = [a1 peerPaymentQuote];
  v83 = v14;
  v77 = v22;
  if (v26)
  {
    v27 = v26;
    v28 = [v26 isRecurringPayment];

    v29 = v28 & v18;
    if (v28 & 1) != 0 || ((v18 ^ 1))
    {
LABEL_53:
      v34 = [v14 accountServiceTransferRequest];
      if (v34)
      {
        v35 = v34;
        if ([v34 transferType] == 3)
        {

          v36 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
          if (!v15)
          {
            goto LABEL_56;
          }

LABEL_59:
          v37 = [a1 usePeerPaymentBalance];
          if (v18)
          {
            v38 = [a1 shouldShowPeerPaymentBalanceToggle];
LABEL_61:
            LOBYTE(v18) = v38;
            goto LABEL_70;
          }

LABEL_69:
          LOBYTE(v18) = 0;
LABEL_70:
          v40 = PKOslo2024UIUpdatesEnabled();
          v41 = [a1 peerPaymentPass];
          if (v41)
          {
            v75 = v41;
            LODWORD(v85) = v37;
            v76 = [a1 peerPaymentQuote];
            v42 = [a1 v36[60]];
            if (v42)
            {
              v43 = v42;
              v44 = (v86 ^ 1) & v18;
              v74 = [v42 requestType];

              v45 = [a1 v36[60]];
              if (v45)
              {
                v46 = v45;
                objc_opt_self();
                v47 = swift_dynamicCastObjCClass();
                v73 = v47 == 0;
                if (v47)
                {
                  v72 = [v47 peerPaymentType];
                }

                else
                {
                  v72 = 0;
                }
              }

              else
              {
                v72 = 0;
                v73 = 1;
              }

              v48 = v81 | v44;
              v81 = [a1 supportsPreservePeerPaymentBalance];
              *(v11 + v7[17]) = a1;
              v49 = v84;
              *v11 = v84;
              v50 = a1;
              v51 = v49;
              if ([v50 itemForType_])
              {
                sub_1BE053624();
                swift_unknownObjectRelease();
              }

              else
              {
                v90 = 0u;
                v91 = 0u;
              }

              v52 = (v40 ^ 1) & v48;
              v94 = v90;
              v95 = v91;
              if (*(&v91 + 1))
              {
                sub_1BD0E5E8C(0, &qword_1EBD3E6D0, 0x1E69B8BA0);
                if (swift_dynamicCast())
                {
                  v53 = v89;
                }

                else
                {
                  v53 = 0;
                }
              }

              else
              {
                sub_1BD0DE53C(&v94, &qword_1EBD3EC90, &unk_1BE0BC6B0);
                v53 = 0;
              }

              v54 = v76;
              v55 = v76;
              sub_1BD335440(v54, v53, v51, &v94);
              v56 = (v11 + v7[6]);
              v57 = v97;
              v56[2] = v96;
              v56[3] = v57;
              v58 = v99;
              v56[4] = v98;
              v56[5] = v58;
              v59 = v95;
              *v56 = v94;
              v56[1] = v59;
              *(v11 + v7[7]) = v74;
              v60 = v11 + v7[8];
              *v60 = v72;
              v60[8] = v73;
              *(v11 + v7[9]) = v81;
              *(v11 + v7[10]) = v85;
              *(v11 + v7[12]) = v18 & 1;
              *(v11 + v7[11]) = v82;
              *(v11 + v7[13]) = v86;
              *(v11 + v7[14]) = v52;
              v61 = [v50 paymentRequest];
              if (v61)
              {
                v62 = v61;
                v63 = [v61 isPeerPaymentRequest];

                *(v11 + v7[15]) = v63;
                a2 = v88;
                v64 = v87;
                v65 = v83;
                v66 = v77;
                if (v55)
                {
                  v67 = [v55 isRecurringPayment];
                }

                else
                {
                  v67 = 0;
                }

                *(v11 + v7[16]) = v67;
                v68 = v75;
                *v64 = v75;
                swift_storeEnumTagMultiPayload();
                v69 = v7[5];
                v70 = v68;
                sub_1BD4954F8(v64, v50, v11 + v69);

                sub_1BD0DE53C(&v92, &qword_1EBD3EC90, &unk_1BE0BC6B0);
                sub_1BD1B9B60(v11, a2);
                v20 = 0;
                v8 = v79;
                goto LABEL_91;
              }

              goto LABEL_96;
            }

LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
            goto LABEL_97;
          }

LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        v39 = [v35 transferType];

        if (v39 != 2)
        {
          LOBYTE(v18) = v29;
        }

        v36 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
        if (v15)
        {
          goto LABEL_59;
        }
      }

      else
      {
        LOBYTE(v18) = v29;
        v36 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
        if (v15)
        {
          goto LABEL_59;
        }
      }

LABEL_56:
      if (v85 != 2)
      {
        v37 = 0;
        goto LABEL_70;
      }

      v37 = [a1 usePeerPaymentBalance];
      if ((v18 & 1) != 0 && [v14 accountPaymentSupportsPeerPayment])
      {
        v38 = [v14 deviceSupportsPeerPaymentAccountPayment];
        goto LABEL_61;
      }

      goto LABEL_69;
    }
  }

  else if (!v18)
  {
    v29 = 0;
    goto LABEL_53;
  }

  v30 = [v84 currentBalance];
  if (!v30)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v31 = v30;
  v32 = [v30 amount];

  if (v32)
  {
    [v32 decimalValue];

    v33 = MEMORY[0x1BFB403C0](0);
    v29 = MEMORY[0x1BFB403F0](v33);
    v14 = v83;
    goto LABEL_53;
  }

LABEL_98:
  __break(1u);
}

uint64_t sub_1BD56F844(void *a1, void *a2)
{
  sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
  if ((sub_1BE053074() & 1) == 0)
  {
    goto LABEL_24;
  }

  v4 = type metadata accessor for PeerPaymentModel(0);
  if ((sub_1BD495008(a1 + v4[5], a2 + v4[5]) & 1) == 0)
  {
    goto LABEL_24;
  }

  v5 = a1 + v4[6];
  v6 = *(v5 + 3);
  v56[2] = *(v5 + 2);
  v56[3] = v6;
  v7 = *(v5 + 5);
  v56[4] = *(v5 + 4);
  v56[5] = v7;
  v8 = *(v5 + 1);
  v56[0] = *v5;
  v56[1] = v8;
  v9 = a2 + v4[6];
  v10 = *(v9 + 3);
  v57[2] = *(v9 + 2);
  v57[3] = v10;
  v11 = *(v9 + 5);
  v57[4] = *(v9 + 4);
  v57[5] = v11;
  v12 = *(v9 + 1);
  v57[0] = *v9;
  v57[1] = v12;
  v13 = *&v56[0];
  v14 = *(v5 + 56);
  v52 = *(v5 + 40);
  v53 = v14;
  v54 = *(v5 + 72);
  v55 = *(v5 + 11);
  v15 = *(v5 + 24);
  v50 = *(v5 + 8);
  v51 = v15;
  if (*&v56[0] != 1)
  {
    if (*&v57[0] != 1)
    {
      *v34 = *&v57[0];
      *&v34[8] = *(v9 + 8);
      *&v34[24] = *(v9 + 24);
      *&v34[88] = *(v9 + 11);
      *&v34[72] = *(v9 + 72);
      *&v34[56] = *(v9 + 56);
      *&v34[40] = *(v9 + 40);
      *v42 = *v34;
      *&v42[16] = *&v34[16];
      *&v42[64] = *&v34[64];
      *&v42[80] = *&v34[80];
      *&v42[32] = *&v34[32];
      *&v42[48] = *&v34[48];
      v21 = *(v5 + 8);
      v60 = *(v5 + 24);
      v59 = v21;
      v22 = *(v5 + 40);
      v23 = *(v5 + 56);
      v24 = *(v5 + 72);
      v25 = *(v5 + 11);
      v63 = v24;
      v62 = v23;
      v61 = v22;
      v64 = v25;
      v58 = *&v56[0];
      sub_1BD0DE19C(v56, &v35, &unk_1EBD521D0, qword_1BE0BEDC0);
      sub_1BD0DE19C(v57, &v35, &unk_1EBD521D0, qword_1BE0BEDC0);
      v26 = sub_1BD334EE8(&v58, v42);
      sub_1BD0DE53C(v34, &unk_1EBD521D0, qword_1BE0BEDC0);
      v35 = v13;
      v38 = v52;
      v39 = v53;
      v40 = v54;
      v41 = v55;
      v36 = v50;
      v37 = v51;
      sub_1BD0DE53C(&v35, &unk_1EBD521D0, qword_1BE0BEDC0);
      if (!v26)
      {
        goto LABEL_24;
      }

      goto LABEL_9;
    }

LABEL_7:
    *&v42[40] = *(v5 + 40);
    *&v42[56] = *(v5 + 56);
    *&v42[72] = *(v5 + 72);
    v17 = *(v5 + 11);
    *v42 = *&v56[0];
    *&v42[88] = v17;
    v43 = *&v57[0];
    *&v42[8] = *(v5 + 8);
    *&v42[24] = *(v5 + 24);
    v45 = *(v9 + 24);
    v44 = *(v9 + 8);
    v18 = *(v9 + 40);
    v19 = *(v9 + 56);
    v20 = *(v9 + 72);
    v49 = *(v9 + 11);
    v48 = v20;
    v47 = v19;
    v46 = v18;
    sub_1BD0DE19C(v56, &v58, &unk_1EBD521D0, qword_1BE0BEDC0);
    sub_1BD0DE19C(v57, &v58, &unk_1EBD521D0, qword_1BE0BEDC0);
    sub_1BD0DE53C(v42, &qword_1EBD4AD88, &qword_1BE0E1F78);
    goto LABEL_24;
  }

  if (*&v57[0] != 1)
  {
    goto LABEL_7;
  }

  *&v42[40] = *(v5 + 40);
  *&v42[56] = *(v5 + 56);
  *&v42[72] = *(v5 + 72);
  v16 = *(v5 + 11);
  *v42 = 1;
  *&v42[88] = v16;
  *&v42[8] = *(v5 + 8);
  *&v42[24] = *(v5 + 24);
  sub_1BD0DE19C(v56, &v58, &unk_1EBD521D0, qword_1BE0BEDC0);
  sub_1BD0DE19C(v57, &v58, &unk_1EBD521D0, qword_1BE0BEDC0);
  sub_1BD0DE53C(v42, &unk_1EBD521D0, qword_1BE0BEDC0);
LABEL_9:
  if (*(a1 + v4[7]) == *(a2 + v4[7]))
  {
    v27 = v4[8];
    v28 = (a1 + v27);
    v29 = *(a1 + v27 + 8);
    v30 = (a2 + v27);
    v31 = *(a2 + v27 + 8);
    if (v29)
    {
      if (!v31)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (*v28 != *v30)
      {
        LOBYTE(v31) = 1;
      }

      if (v31)
      {
        goto LABEL_24;
      }
    }

    if (*(a1 + v4[9]) == *(a2 + v4[9]) && *(a1 + v4[10]) == *(a2 + v4[10]) && *(a1 + v4[11]) == *(a2 + v4[11]) && *(a1 + v4[12]) == *(a2 + v4[12]) && *(a1 + v4[13]) == *(a2 + v4[13]) && *(a1 + v4[14]) == *(a2 + v4[14]) && *(a1 + v4[15]) == *(a2 + v4[15]) && *(a1 + v4[16]) == *(a2 + v4[16]))
    {
      v32 = sub_1BE053074();
      return v32 & 1;
    }
  }

LABEL_24:
  v32 = 0;
  return v32 & 1;
}

void sub_1BD56FCC8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1BD39DBE0(Strong);
    swift_unknownObjectRelease();
  }
}

void sub_1BD56FD58(void *a1, char a2)
{
  v5 = [v2 viewControllers];
  sub_1BD28B6C0();
  v6 = sub_1BE052744();

  if (v6 >> 62)
  {
    v14 = sub_1BE053704();
  }

  else
  {
    v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6, v7, v8, v9, v10, v11, v12, v13;
  if (v14)
  {

    [v2 pushViewController:a1 animated:a2 & 1];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1BE0B7020;
    *(v15 + 32) = a1;
    v16 = a1;
    v24 = sub_1BE052724();
    v15, v17, v18, v19, v20, v21, v22, v23;
    [v2 setViewControllers_];
  }
}

unint64_t sub_1BD56FEB8(void *a1, char a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    if ([v6 transitioningDelegate])
    {
      swift_unknownObjectRelease();

      goto LABEL_15;
    }

    v8 = [v6 viewControllers];
    sub_1BD28B6C0();
    v9 = sub_1BE052744();

    if (v9 >> 62)
    {
      v17 = sub_1BE053704();
      if (v17)
      {
LABEL_6:
        v18 = __OFSUB__(v17, 1);
        result = v17 - 1;
        if (v18)
        {
          __break(1u);
        }

        else if ((v9 & 0xC000000000000001) == 0)
        {
          if ((result & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (result < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v20 = *(v9 + 8 * result + 32);
LABEL_11:
            v21 = v20;
LABEL_14:
            v9, v10, v11, v12, v13, v14, v15, v16;
            v22 = [v21 transitioningDelegate];

            [v6 setTransitioningDelegate_];
            swift_unknownObjectRelease();
            goto LABEL_15;
          }

          __break(1u);
          return result;
        }

        v20 = MEMORY[0x1BFB40900](result, v9);
        goto LABEL_11;
      }
    }

    else
    {
      v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_6;
      }
    }

    v21 = 0;
    goto LABEL_14;
  }

LABEL_15:

  return [v2 presentViewController:a1 animated:a2 & 1 completion:0];
}

uint64_t sub_1BD570078()
{
  v1 = [v0 viewControllers];
  sub_1BD28B6C0();
  v2 = sub_1BE052744();

  return v2;
}

void sub_1BD5700D0(uint64_t a1, char a2)
{
  sub_1BD28B6C0();
  v4 = sub_1BE052724();
  [v2 setViewControllers:v4 animated:a2 & 1];
}

id sub_1BD57016C()
{
  result = [objc_allocWithZone(PKPaymentSetupDismissibleNavigationController) initWithContext_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD5701C8(uint64_t a1, uint64_t a2)
{
  sub_1BD5707B0(a1, a2);

  return swift_unknownObjectRelease();
}

void sub_1BD570200(void *a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v35 = Strong;
  v5 = [Strong viewControllers];
  sub_1BD28B6C0();
  v6 = sub_1BE052744();

  v14 = v6;
  if (v6 >> 62)
  {
    v16 = v6;
    v17 = sub_1BE053704();
    v16, v18, v19, v20, v21, v22, v23, v24;
    if (v17)
    {
      goto LABEL_4;
    }

LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1BE0B7020;
    *(v25 + 32) = a1;
    v26 = a1;
    v27 = sub_1BE052724();
    v25, v28, v29, v30, v31, v32, v33, v34;
    [v35 setViewControllers_];

    goto LABEL_8;
  }

  v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v14, v7, v8, v9, v10, v11, v12, v13;
  if (!v15)
  {
    goto LABEL_7;
  }

LABEL_4:
  [v35 pushViewController:a1 animated:a2 & 1];
LABEL_8:
}

void sub_1BD570380(void *a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v23 = Strong;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    if ([v6 transitioningDelegate])
    {
      swift_unknownObjectRelease();

      goto LABEL_17;
    }

    v8 = [v6 viewControllers];
    sub_1BD28B6C0();
    v9 = sub_1BE052744();

    if (v9 >> 62)
    {
      v17 = sub_1BE053704();
      if (v17)
      {
LABEL_8:
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v18)
        {
          __break(1u);
        }

        else if ((v9 & 0xC000000000000001) == 0)
        {
          if ((v19 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v19 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v20 = *(v9 + 8 * v19 + 32);
LABEL_13:
            v21 = v20;
LABEL_16:
            v9, v10, v11, v12, v13, v14, v15, v16;
            v22 = [v21 transitioningDelegate];

            [v6 setTransitioningDelegate_];
            swift_unknownObjectRelease();
            goto LABEL_17;
          }

          __break(1u);
          return;
        }

        v20 = MEMORY[0x1BFB40900](v19, v9);
        goto LABEL_13;
      }
    }

    else
    {
      v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_8;
      }
    }

    v21 = 0;
    goto LABEL_16;
  }

LABEL_17:
  [v23 presentViewController:a1 animated:a2 & 1 completion:0];
}

uint64_t sub_1BD5705E8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = Strong;
  v2 = [Strong viewControllers];

  sub_1BD28B6C0();
  v3 = sub_1BE052744();

  return v3;
}

void sub_1BD570664(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1BD28B6C0();
    v3 = sub_1BE052724();
    [v2 setViewControllers:v3 animated:1];
  }
}

id sub_1BD570708()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    v1 = objc_allocWithZone(MEMORY[0x1E69DD258]);

    return [v1 init];
  }

  return result;
}

id sub_1BD57076C()
{
  result = [objc_allocWithZone(PKPaymentSetupDismissibleNavigationController) initWithContext_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_1BD5707B0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 24) = a2;
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v4;
  v15[4] = sub_1BD5708D8;
  v16 = v6;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1BD126964;
  v15[3] = &block_descriptor_125;
  v7 = _Block_copy(v15);
  v16, v8, v9, v10, v11, v12, v13, v14;
  [v2 setOnDismiss_];
  _Block_release(v7);
}

uint64_t type metadata accessor for ACHCredentialRow(uint64_t a1)
{
  result = qword_1EBD4ADA8;
  if (!qword_1EBD4ADA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD570958(uint64_t a1)
{
  result = sub_1BE049364();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BD5709F0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v107 = a2;
  v3 = sub_1BE04F6E4();
  v103 = *(v3 - 8);
  v104 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v100 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38BA8, &qword_1BE0B8930);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v102 = &v96 - v6;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ADC0, &qword_1BE0E20A8);
  MEMORY[0x1EEE9AC00](v110);
  v101 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v96 - v9;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ADC8, &qword_1BE0E20B0);
  MEMORY[0x1EEE9AC00](v106);
  v12 = &v96 - v11;
  v13 = sub_1BE04C744();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1BE04C734();
  v17 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v19 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ADD0, &qword_1BE0E20B8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v113 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v112 = &v96 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ADD8, &qword_1BE0E20C0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v111 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v96 - v27;
  v29 = PKPassKitUIBundle();
  v108 = sub_1BE0515F4();
  *v28 = sub_1BE04F7C4();
  *(v28 + 1) = 0;
  v28[16] = 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ADE0, &qword_1BE0E20C8);
  sub_1BD57123C(a1, &v28[*(v30 + 44)]);
  v31 = type metadata accessor for ACHCredentialRow(0);
  v32 = *(v31 + 24);
  v105 = a1;
  if (*(a1 + v32) == 1)
  {
    (*(v14 + 104))(v16, *MEMORY[0x1E69BC950], v13);
    sub_1BE04C724();
    v33 = v109;
    (*(v17 + 16))(v12, v19, v109);
    swift_storeEnumTagMultiPayload();
    sub_1BD571830(&qword_1EBD4ADE8, MEMORY[0x1E69BC938], MEMORY[0x1E69BC930]);
    sub_1BD5717A4();
    v34 = v112;
    sub_1BE04F9A4();
    (*(v17 + 8))(v19, v33);
  }

  else
  {
    v35 = v31;
    v36 = sub_1BE051574();
    v97 = v36;
    v37 = sub_1BE0502D4();
    KeyPath = swift_getKeyPath();
    v39 = sub_1BE0511E4();
    v40 = swift_getKeyPath();
    v99 = v12;
    v98 = v10;
    v41 = v40;
    v114 = v36;
    v115 = KeyPath;
    v116 = v37;
    v117 = v40;
    v118 = v39;
    v42 = v100;
    sub_1BE04F6B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49170, &qword_1BE0C8110);
    sub_1BD0F1430();
    v43 = v102;
    sub_1BE050DA4();
    (*(v103 + 8))(v42, v104);
    v39, v44, v45, v46, v47, v48, v49, v50;
    v41, v51, v52, v53, v54, v55, v56, v57;
    v37, v58, v59, v60, v61, v62, v63, v64;
    KeyPath, v65, v66, v67, v68, v69, v70, v71;
    v97, v72, v73, v74, v75, v76, v77, v78;
    if (*(v105 + *(v35 + 20)))
    {
      v79 = 1.0;
    }

    else
    {
      v79 = 0.0;
    }

    v80 = v101;
    sub_1BD0DE204(v43, v101, &qword_1EBD38BA8, &qword_1BE0B8930);
    *(v80 + *(v110 + 36)) = v79;
    v81 = v98;
    sub_1BD0DE204(v80, v98, &qword_1EBD4ADC0, &qword_1BE0E20A8);
    sub_1BD0DE19C(v81, v99, &qword_1EBD4ADC0, &qword_1BE0E20A8);
    swift_storeEnumTagMultiPayload();
    sub_1BD571830(&qword_1EBD4ADE8, MEMORY[0x1E69BC938], MEMORY[0x1E69BC930]);
    sub_1BD5717A4();
    v34 = v112;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v81, &qword_1EBD4ADC0, &qword_1BE0E20A8);
  }

  v82 = v111;
  sub_1BD0DE19C(v28, v111, &qword_1EBD4ADD8, &qword_1BE0E20C0);
  v83 = v113;
  sub_1BD0DE19C(v34, v113, &qword_1EBD4ADD0, &qword_1BE0E20B8);
  v84 = v28;
  v86 = v107;
  v85 = v108;
  *v107 = v108;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ADF8, &qword_1BE0E2130);
  sub_1BD0DE19C(v82, v86 + v87[12], &qword_1EBD4ADD8, &qword_1BE0E20C0);
  v88 = v86 + v87[16];
  *v88 = 0;
  v88[8] = 1;
  sub_1BD0DE19C(v83, v86 + v87[20], &qword_1EBD4ADD0, &qword_1BE0E20B8);
  sub_1BE048964();
  sub_1BD0DE53C(v34, &qword_1EBD4ADD0, &qword_1BE0E20B8);
  sub_1BD0DE53C(v84, &qword_1EBD4ADD8, &qword_1BE0E20C0);
  sub_1BD0DE53C(v83, &qword_1EBD4ADD0, &qword_1BE0E20B8);
  sub_1BD0DE53C(v82, &qword_1EBD4ADD8, &qword_1BE0E20C0);
  v85, v89, v90, v91, v92, v93, v94, v95;
}

uint64_t sub_1BD57123C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v172 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v171 = &v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v167 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v170 = &v167 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v173 = &v167 - v12;
  v13 = sub_1BE049344();
  if (v14)
  {
    v174 = v13;
    v175 = v14;
    sub_1BD0DDEBC();
    v15 = sub_1BE0506C4();
    v17 = v16;
    v19 = v18;
    v168 = v3;
    v169 = a1;
    v21 = v20;
    v22 = sub_1BE051464();
    v167 = v4;
    v23 = v22;
    v174 = v22;
    v24 = sub_1BE050574();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    sub_1BD0DDF10(v15, v17, (v19 & 1), v29, v31, v32, v33, v34);
    v23, v35, v36, v37, v38, v39, v40, v41;
    v21, v42, v43, v44, v45, v46, v47, v48;
    v174 = v24;
    v175 = v26;
    v176 = v28 & 1;
    v177 = v30;
    sub_1BE052434();
    v50 = v49;
    sub_1BE050DE4();
    v50, v51, v52, v53, v54, v55, v56, v57;
    sub_1BD0DDF10(v24, v26, (v28 & 1), v58, v59, v60, v61, v62);
    v30, v63, v64, v65, v66, v67, v68, v69;
    v70 = v8;
    v71 = v173;
    sub_1BD0DE204(v8, v173, &qword_1EBD452C0, &qword_1BE0B7620);
    (*(v167 + 56))(v71, 0, 1, v168);
  }

  else
  {
    (*(v4 + 56))(v173, 1, 1, v3);
    v70 = v8;
  }

  v72 = sub_1BE0492E4();
  v74 = v73;
  v75 = _s9PassKitUI22BankCredentialListViewV8lastFour10fullNumberS2S_tFZ_0(v72, v73);
  v77 = v76;
  v74, v76, v78, v79, v80, v81, v82, v83;
  v174 = v75;
  v175 = v77;
  sub_1BD0DDEBC();
  v84 = sub_1BE0506C4();
  v86 = v85;
  LOBYTE(v77) = v87;
  v89 = v88;
  v90 = sub_1BE051494();
  v174 = v90;
  v91 = sub_1BE050574();
  v93 = v92;
  v95 = v94;
  v97 = v96;
  sub_1BD0DDF10(v84, v86, (v77 & 1), v96, v98, v99, v100, v101);
  v90, v102, v103, v104, v105, v106, v107, v108;
  v89, v109, v110, v111, v112, v113, v114, v115;
  v116 = sub_1BE050454();
  v117 = sub_1BE0505F4();
  v119 = v118;
  LOBYTE(v86) = v120;
  v122 = v121;
  v116, v118, v120, v121, v123, v124, v125, v126;
  sub_1BD0DDF10(v91, v93, (v95 & 1), v127, v128, v129, v130, v131);
  v97, v132, v133, v134, v135, v136, v137, v138;
  v174 = v117;
  v175 = v119;
  v176 = v86 & 1;
  v177 = v122;
  sub_1BE052434();
  v140 = v139;
  v141 = v70;
  sub_1BE050DE4();
  v140, v142, v143, v144, v145, v146, v147, v148;
  sub_1BD0DDF10(v117, v119, (v86 & 1), v149, v150, v151, v152, v153);
  v122, v154, v155, v156, v157, v158, v159, v160;
  v161 = v173;
  v162 = v170;
  sub_1BD0DE19C(v173, v170, &unk_1EBD5BB60, &qword_1BE0C4580);
  v163 = v171;
  sub_1BD0DE19C(v70, v171, &qword_1EBD452C0, &qword_1BE0B7620);
  v164 = v172;
  sub_1BD0DE19C(v162, v172, &unk_1EBD5BB60, &qword_1BE0C4580);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AE00, &qword_1BE0E2138);
  sub_1BD0DE19C(v163, v164 + *(v165 + 48), &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v141, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v161, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v163, &qword_1EBD452C0, &qword_1BE0B7620);
  return sub_1BD0DE53C(v162, &unk_1EBD5BB60, &qword_1BE0C4580);
}

void sub_1BD571750(uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ADB8, &unk_1BE0E2098);
  sub_1BD5709F0(v2, (a2 + *(v4 + 44)));
}

unint64_t sub_1BD5717A4()
{
  result = qword_1EBD4ADF0;
  if (!qword_1EBD4ADF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4ADC0, &qword_1BE0E20A8);
    sub_1BD0F13A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4ADF0);
  }

  return result;
}

uint64_t sub_1BD571830(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1BD571878()
{
  v0 = objc_allocWithZone(type metadata accessor for FundingSourcesModel(0));

  return [v0 init];
}

uint64_t sub_1BD5718B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v103 = a1;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AE20, &qword_1BE0E22A8);
  MEMORY[0x1EEE9AC00](v98);
  v4 = v96 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AE28, &qword_1BE0E22B0);
  v6 = *(v5 - 8);
  v99 = v5;
  v100 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v104 = v96 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AE30, &qword_1BE0E22B8);
  v9 = *(v8 - 8);
  v101 = v8;
  v102 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v105 = v96 - v10;
  *v4 = sub_1BE04F7B4();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v97 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AE38, &qword_1BE0E22C0) + 44);
  *v112 = *(v1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AE40, &unk_1BE0E22C8);
  sub_1BE0516C4();
  *v112 = *&v109[0];
  *&v112[8] = *(v109 + 8);
  v106 = v1;
  v96[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AE40, &qword_1BE0BBF40);
  v96[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AE48, &qword_1BE0E22D8);
  sub_1BD0DE4F4(&qword_1EBD4AE50, &qword_1EBD3AE40, &qword_1BE0BBF40, MEMORY[0x1E69E6318]);
  sub_1BD0DE4F4(&qword_1EBD4AE58, &qword_1EBD3AE40, &qword_1BE0BBF40, MEMORY[0x1E69E6338]);
  sub_1BD0DE4F4(&qword_1EBD4AE60, &qword_1EBD3AE40, &qword_1BE0BBF40, MEMORY[0x1E69E6348]);
  v11 = type metadata accessor for CurrencyAmountPickerView(255);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AE68, &unk_1BE0E22E0);
  v13 = sub_1BD573CC0(&qword_1EBD4AE70, type metadata accessor for CurrencyAmountPickerView, &unk_1BE0F6A88);
  v14 = sub_1BD5738F0();
  v15 = sub_1BD573944();
  *&v109[0] = v11;
  *(&v109[0] + 1) = &type metadata for CurrencyAmountPickerView.Step;
  *&v109[1] = v12;
  *(&v109[1] + 1) = v13;
  v110 = v14;
  v111 = v15;
  swift_getOpaqueTypeConformance2();
  sub_1BE04EBF4();
  v113[0] = *v2;
  *v112 = *(&v113[0] + 1);
  v16 = swift_allocObject();
  v17 = *(v2 + 112);
  *(v16 + 112) = *(v2 + 96);
  *(v16 + 128) = v17;
  *(v16 + 144) = *(v2 + 128);
  *(v16 + 160) = *(v2 + 144);
  v18 = *(v2 + 48);
  *(v16 + 48) = *(v2 + 32);
  *(v16 + 64) = v18;
  v19 = *(v2 + 80);
  *(v16 + 80) = *(v2 + 64);
  *(v16 + 96) = v19;
  v20 = *(v2 + 16);
  *(v16 + 16) = *v2;
  *(v16 + 32) = v20;
  sub_1BD0DE19C(v113, v109, &qword_1EBD3AE38, &qword_1BE0BBF38);
  sub_1BD182A34(v2, v109);
  v97 = type metadata accessor for AccountModel(0);
  v21 = sub_1BD0DE4F4(&qword_1EBD4AE88, &qword_1EBD4AE20, &qword_1BE0E22A8, MEMORY[0x1E6981870]);
  v22 = sub_1BD573CC0(&qword_1EBD4AE90, type metadata accessor for AccountModel, MEMORY[0x1E69E81C0]);
  v23 = v98;
  sub_1BE051064();
  v16, v24, v25, v26, v27, v28, v29, v30;
  sub_1BD0DE53C(v113, &qword_1EBD3AE38, &qword_1BE0BBF38);
  sub_1BD086900(v4);
  type metadata accessor for FundingSourcesModel(0);
  sub_1BD573CC0(&qword_1EBD4AE18, type metadata accessor for FundingSourcesModel, &unk_1BE0EA794);
  v31 = sub_1BE04E3C4();
  KeyPath = swift_getKeyPath();
  v33 = swift_getKeyPath();
  sub_1BE04D8B4(v109);
  KeyPath, v34, v35, v36, v37, v38, v39, v40;
  v33, v41, v42, v43, v44, v45, v46, v47;

  v48 = *&v109[0];
  *v112 = *&v109[0];
  v49 = swift_allocObject();
  v50 = *(v2 + 112);
  *(v49 + 112) = *(v2 + 96);
  *(v49 + 128) = v50;
  *(v49 + 144) = *(v2 + 128);
  *(v49 + 160) = *(v2 + 144);
  v51 = *(v2 + 48);
  *(v49 + 48) = *(v2 + 32);
  *(v49 + 64) = v51;
  v52 = *(v2 + 80);
  *(v49 + 80) = *(v2 + 64);
  *(v49 + 96) = v52;
  v53 = *(v2 + 16);
  *(v49 + 16) = *v2;
  *(v49 + 32) = v53;
  sub_1BD182A34(v2, v109);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AE98, &qword_1BE0E22F0);
  *&v109[0] = v23;
  *(&v109[0] + 1) = v97;
  *&v109[1] = v21;
  *(&v109[1] + 1) = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = sub_1BD573A14();
  v57 = v104;
  v58 = v99;
  sub_1BE051064();
  v49, v59, v60, v61, v62, v63, v64, v65;
  v48, v66, v67, v68, v69, v70, v71, v72;
  (*(v100 + 8))(v57, v58);
  v73 = *(v2 + 104);
  v109[0] = *(v2 + 88);
  v109[1] = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42500, &unk_1BE0CD7C0);
  sub_1BE0516A4();
  v107 = *v112;
  v108 = *&v112[16];
  v74 = swift_allocObject();
  v75 = *(v2 + 112);
  *(v74 + 112) = *(v2 + 96);
  *(v74 + 128) = v75;
  *(v74 + 144) = *(v2 + 128);
  *(v74 + 160) = *(v2 + 144);
  v76 = *(v2 + 48);
  *(v74 + 48) = *(v2 + 32);
  *(v74 + 64) = v76;
  v77 = *(v2 + 80);
  *(v74 + 80) = *(v2 + 64);
  *(v74 + 96) = v77;
  v78 = *(v2 + 16);
  *(v74 + 16) = *v2;
  *(v74 + 32) = v78;
  sub_1BD182A34(v2, v109);
  type metadata accessor for Decimal(0);
  *&v109[0] = v58;
  *(&v109[0] + 1) = v54;
  *&v109[1] = OpaqueTypeConformance2;
  *(&v109[1] + 1) = v56;
  swift_getOpaqueTypeConformance2();
  sub_1BD573CC0(&qword_1EBD42530, type metadata accessor for Decimal, MEMORY[0x1E6969FE0]);
  v79 = v103;
  v80 = v101;
  v81 = v105;
  sub_1BE051064();
  v74, v82, v83, v84, v85, v86, v87, v88;
  (*(v102 + 8))(v81, v80);
  v89 = swift_allocObject();
  v90 = *(v2 + 112);
  *(v89 + 112) = *(v2 + 96);
  *(v89 + 128) = v90;
  *(v89 + 144) = *(v2 + 128);
  *(v89 + 160) = *(v2 + 144);
  v91 = *(v2 + 48);
  *(v89 + 48) = *(v2 + 32);
  *(v89 + 64) = v91;
  v92 = *(v2 + 80);
  *(v89 + 80) = *(v2 + 64);
  *(v89 + 96) = v92;
  v93 = *(v2 + 16);
  *(v89 + 16) = *v2;
  *(v89 + 32) = v93;
  v94 = (v79 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AEC0, &unk_1BE0E2300) + 36));
  *v94 = sub_1BD573B54;
  v94[1] = v89;
  v94[2] = 0;
  v94[3] = 0;
  return sub_1BD182A34(v2, v109);
}

uint64_t sub_1BD572154(uint64_t a1)
{
  v2 = type metadata accessor for CurrencyAmountPickerView(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1BD5722F8(0, v4);
  v5 = swift_allocObject();
  v6 = *(a1 + 112);
  *(v5 + 112) = *(a1 + 96);
  *(v5 + 128) = v6;
  *(v5 + 144) = *(a1 + 128);
  *(v5 + 160) = *(a1 + 144);
  v7 = *(a1 + 48);
  *(v5 + 48) = *(a1 + 32);
  *(v5 + 64) = v7;
  v8 = *(a1 + 80);
  *(v5 + 80) = *(a1 + 64);
  *(v5 + 96) = v8;
  v9 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v9;
  sub_1BD182A34(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AE68, &unk_1BE0E22E0);
  sub_1BD573CC0(&qword_1EBD4AE70, type metadata accessor for CurrencyAmountPickerView, &unk_1BE0F6A88);
  sub_1BD5738F0();
  sub_1BD573944();
  sub_1BE050D64();
  v5, v10, v11, v12, v13, v14, v15, v16;
  return sub_1BD573B64(v4);
}

uint64_t sub_1BD5722F8@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v86 = *v2;
  v7 = *(v2 + 48);
  v6 = *(v2 + 56);
  v84 = *(v2 + 64);
  v85 = v6;
  v8 = *(v2 + 104);
  v82 = *(v2 + 88);
  v83 = v8;
  v75 = *(&v86 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42500, &unk_1BE0CD7C0);
  sub_1BE0516C4();
  type metadata accessor for FundingSourcesModel(0);
  sub_1BD573CC0(&qword_1EBD4AE18, type metadata accessor for FundingSourcesModel, &unk_1BE0EA794);
  v79 = sub_1BE04E3C4();
  v82 = *(v2 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AE60, &qword_1BE0D8760);
  sub_1BE0516A4();
  v77 = *(v2 + 80);
  v78 = *(v2 + 72);
  v9 = swift_allocObject();
  v10 = *(v3 + 112);
  *(v9 + 112) = *(v3 + 96);
  *(v9 + 128) = v10;
  *(v9 + 144) = *(v3 + 128);
  *(v9 + 160) = *(v3 + 144);
  v11 = *(v3 + 48);
  *(v9 + 48) = *(v3 + 32);
  *(v9 + 64) = v11;
  v12 = *(v3 + 80);
  *(v9 + 80) = *(v3 + 64);
  *(v9 + 96) = v12;
  v13 = *(v3 + 16);
  *(v9 + 16) = *v3;
  *(v9 + 32) = v13;
  v14 = swift_allocObject();
  v15 = *(v3 + 112);
  *(v14 + 112) = *(v3 + 96);
  *(v14 + 128) = v15;
  *(v14 + 144) = *(v3 + 128);
  *(v14 + 160) = *(v3 + 144);
  v16 = *(v3 + 48);
  *(v14 + 48) = *(v3 + 32);
  *(v14 + 64) = v16;
  v17 = *(v3 + 80);
  *(v14 + 80) = *(v3 + 64);
  *(v14 + 96) = v17;
  v18 = *(v3 + 16);
  *(v14 + 16) = *v3;
  *(v14 + 32) = v18;
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD48, &qword_1BE0BD880);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for CurrencyAmountPickerView(0);
  v20 = v19[19];
  v74 = objc_opt_self();
  sub_1BD182A34(v3, &v82);
  sub_1BD182A34(v3, &v82);
  *(a2 + v20) = [v74 sharedService];
  v21 = a2 + v19[20];
  *v21 = sub_1BE04E274() & 1;
  *(v21 + 1) = v22;
  v21[16] = v23 & 1;
  v24 = a2 + v19[21];
  sub_1BE051694();
  v25 = *(&v82 + 1);
  *v24 = v82;
  *(v24 + 1) = v25;
  v26 = a2 + v19[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
  sub_1BE051694();
  v27 = v83;
  *v26 = v82;
  *(v26 + 2) = v27;
  v28 = v19[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC88, &unk_1BE0C88A0);
  sub_1BE051694();
  *(a2 + v28) = v82;
  v29 = a2 + v19[25];
  *v29 = sub_1BD791DB8;
  *(v29 + 1) = 0;
  v29[16] = 0;
  v30 = a2 + v19[26];
  sub_1BE051694();
  v31 = *(&v82 + 1);
  *v30 = v82;
  *(v30 + 1) = v31;
  v32 = a2 + v19[27];
  sub_1BE051694();
  v33 = *(&v82 + 1);
  *v32 = v82;
  *(v32 + 1) = v33;
  v34 = a2 + v19[28];
  sub_1BE051694();
  v35 = *(&v82 + 1);
  *v34 = v82;
  *(v34 + 1) = v35;
  v36 = v19[29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD40, &qword_1BE0F6A10);
  sub_1BE051694();
  *(a2 + v36) = v82;
  v37 = v19[30];
  *(a2 + v37) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880, &qword_1BE0B71D0);
  swift_storeEnumTagMultiPayload();
  *(a2 + v19[8]) = v7;
  *(a2 + v19[14]) = a1 & 1;
  v38 = (a2 + v19[5]);
  type metadata accessor for AccountModel(0);
  sub_1BD573CC0(&qword_1EBD3AE50, type metadata accessor for AccountModel, &unk_1BE0BFF20);
  v76 = v75;
  *v38 = sub_1BE04E954();
  v38[1] = v39;
  v40 = v84;
  *(a2 + v19[9]) = v85;
  *(a2 + v19[10]) = v40;
  v41 = a2 + v19[22];
  v42 = v87[1];
  *v41 = v87[0];
  *(v41 + 1) = v42;
  *(v41 + 8) = v88;
  v43 = (a2 + v19[6]);
  sub_1BD0DE19C(&v85, &v82, &qword_1EBD4AEC8, &qword_1BE0E2378);
  sub_1BD0DE19C(&v84, &v82, &qword_1EBD496C8, &unk_1BE0E2380);
  sub_1BD0DE19C(v87, &v82, &unk_1EBD4EED0, &qword_1BE0CEA30);
  v44 = v79;
  *v43 = sub_1BE04E954();
  v43[1] = v45;
  *(a2 + v19[15]) = v81;
  v46 = (a2 + v19[11]);
  *v46 = v78;
  v46[1] = v77;
  v47 = (a2 + v19[12]);
  *v47 = sub_1BD573C24;
  v47[1] = v9;
  v48 = (a2 + v19[13]);
  *v48 = sub_1BD573CB8;
  v48[1] = v14;
  type metadata accessor for AccountScheduleTransferModel();
  v49 = swift_allocObject();
  sub_1BD0DE19C(&v86, &v82, &qword_1EBD3AE38, &qword_1BE0BBF38);
  v80 = v81;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  v50 = [v74 sharedService];
  v49[5] = 0;
  v49[6] = 0;
  v49[4] = v50;
  swift_beginAccess();
  v51 = v76;
  v49[2] = sub_1BE04E954();
  v49[3] = v52;
  swift_endAccess();
  sub_1BD0DE53C(&v86, &qword_1EBD3AE38, &qword_1BE0BBF38);
  *(a2 + v19[7]) = v49;
  v53 = a2 + v19[16];
  sub_1BE051694();
  v54 = *(&v82 + 1);
  *v53 = v82;
  *(v53 + 1) = v54;
  v55 = a2 + v19[17];
  sub_1BE051694();
  v56 = *(&v82 + 1);
  *v55 = v82;
  *(v55 + 1) = v56;
  v57 = a2 + v19[18];
  sub_1BE051694();

  v9, v58, v59, v60, v61, v62, v63, v64;
  v14, v65, v66, v67, v68, v69, v70, v71;
  sub_1BD0DE53C(v87, &unk_1EBD4EED0, &qword_1BE0CEA30);
  result = sub_1BD0DE53C(&v86, &qword_1EBD3AE38, &qword_1BE0BBF38);
  v73 = *(&v82 + 1);
  *v57 = v82;
  *(v57 + 1) = v73;
  return result;
}

uint64_t sub_1BD572A44@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CurrencyAmountPickerView(0);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a1 == 1)
  {
    v12 = v5;
    sub_1BD5722F8(1, v8);
    sub_1BD573BC0(v8, a2);
    return (*(v12 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v10 = *(v5 + 56);

    return v10(a2, 1, 1, v4, v6);
  }
}

double sub_1BD572B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BD572D70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AE60, &qword_1BE0D8760);
  sub_1BE0516B4();
  return result;
}

void sub_1BD572BE8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = [*(v2 + 32) targetDevice];
    if (v4)
    {
      v5 = v4;
      if ([v4 respondsToSelector_] && (objc_msgSend(v5, sel_respondsToSelector_, sel_paymentWebService_deviceMetadataWithFields_completion_) & 1) != 0)
      {
        v19 = PKEdgeInsetsMake;
        v20 = 0;
        *&v16 = MEMORY[0x1E69E9820];
        *(&v16 + 1) = 1107296256;
        v17 = sub_1BD20815C;
        v18 = &block_descriptor_126;
        v6 = _Block_copy(&v16);
        v7 = v20;
        swift_unknownObjectRetain();
        v7, v8, v9, v10, v11, v12, v13, v14;
        [v5 paymentWebService:v3 deviceMetadataWithFields:128 completion:v6];
        _Block_release(v6);
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  v16 = *(a1 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AE60, &qword_1BE0D8760);
  sub_1BE0516A4();
  v15 = v21;
  if (v21)
  {
    sub_1BD85A4D8(v21);
  }
}

void sub_1BD572D70()
{
  v1 = v0;
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(v89);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  v18 = v89[0];
  if (v89[0])
  {
    v19 = [v89[0] currencyCode];

    if (v19)
    {
      sub_1BE052434();
      v18 = v20;
    }

    else
    {
      v18 = 0;
    }
  }

  v21 = swift_getKeyPath();
  v22 = swift_getKeyPath();
  sub_1BE04D8B4(v89);
  v21, v23, v24, v25, v26, v27, v28, v29;
  v22, v30, v31, v32, v33, v34, v35, v36;
  v37 = v89[0];
  type metadata accessor for FundingSourcesModel(0);
  sub_1BD573CC0(&qword_1EBD4AE18, type metadata accessor for FundingSourcesModel, &unk_1BE0EA794);
  v38 = sub_1BE04E3C4();
  v39 = swift_getKeyPath();
  v40 = swift_getKeyPath();
  sub_1BE04D8B4(v89);
  v39, v41, v42, v43, v44, v45, v46, v47;
  v40, v48, v49, v50, v51, v52, v53, v54;

  if (v89[0])
  {
    v55 = v89[0];
  }

  else
  {
    v55 = MEMORY[0x1E69E7CC0];
  }

  v56 = *(v1 + 104);
  *v89 = *(v1 + 88);
  v90 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42500, &unk_1BE0CD7C0);
  sub_1BE0516A4();
  v57 = sub_1BE053344();
  if (v18)
  {
    sub_1BE048C84();
    v58 = sub_1BE052404();
    v18, v59, v60, v61, v62, v63, v64, v65;
  }

  else
  {
    v58 = 0;
  }

  v66 = PKCurrencyAmountMake();

  if (v66)
  {
    v18, v67, v68, v69, v70, v71, v72, v73;
    v75 = *(v1 + 56);
    v74 = *(v1 + 64);
    v76 = *(v1 + 48);
    v77 = objc_allocWithZone(MEMORY[0x1E69B8410]);
    sub_1BD448C54();
    v78 = v37;
    v79 = sub_1BE052724();
    v55, v80, v81, v82, v83, v84, v85, v86;
    v87 = [v77 initWithAccount:v78 peerPaymentAccount:v75 peerPaymentPass:v74 transferType:v76 fundingSources:v79 currencyAmount:v66];

    if (v76 == 3)
    {
      if (v87)
      {
        [v87 setUseLocationBasedAuthorization_];
LABEL_17:
        v88 = v87;
        [v88 setUserWasShownAPCTransferSpeed_];
      }
    }

    else if (v87)
    {
      goto LABEL_17;
    }

    return;
  }

  __break(1u);
}

uint64_t sub_1BD5730C0(uint64_t a1)
{
  v1 = *(a1 + 120);
  v2 = *(a1 + 128);
  v12 = v2;
  v13 = v1;
  v11[2] = v1;
  v11[3] = v2;
  sub_1BD0DE19C(&v13, v11, &qword_1EBD3AE40, &qword_1BE0BBF40);
  sub_1BD0DE19C(&v12, v11, &qword_1EBD4AED0, &unk_1BE0E2390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AE40, &unk_1BE0E22C8);
  sub_1BE0516A4();
  v3 = v11[4];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BD1D925C(0, *(v3 + 2) + 1, 1, v3, v4, v5, v6, v7);
  }

  v9 = *(v3 + 2);
  v8 = *(v3 + 3);
  if (v9 >= v8 >> 1)
  {
    v3 = sub_1BD1D925C((v8 > 1), v9 + 1, 1, v3, v4, v5, v6, v7);
  }

  *(v3 + 2) = v9 + 1;
  v3[v9 + 32] = 1;
  v11[0] = v1;
  v11[1] = v2;
  sub_1BE0516B4();
  sub_1BD0DE53C(&v13, &qword_1EBD3AE40, &qword_1BE0BBF40);
  return sub_1BD0DE53C(&v12, &qword_1EBD4AED0, &unk_1BE0E2390);
}

double sub_1BD573214(uint64_t a1)
{
  sub_1BD572D70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AE60, &qword_1BE0D8760);
  sub_1BE0516B4();
  return result;
}

void sub_1BD5732CC(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD57334C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  v3 = v2;
  return sub_1BE04D8C4();
}

id sub_1BD5733C4(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return a2;
  }

  else
  {
    return sub_1BE048964();
  }
}

void destroy for CurrencyAmountPickerViewContainer(uint64_t a1)
{
  sub_1BD035CB4(*(a1 + 16), *(a1 + 24), *(a1 + 32), v2, v3, v4, v5, v6);
  *(a1 + 40), v7, v8, v9, v10, v11, v12, v13;

  *(a1 + 80), v14, v15, v16, v17, v18, v19, v20;
  *(a1 + 112), v21, v22, v23, v24, v25, v26, v27;
  *(a1 + 120), v28, v29, v30, v31, v32, v33, v34;
  *(a1 + 128), v35, v36, v37, v38, v39, v40, v41;

  v49 = *(a1 + 144);

  v49, v42, v43, v44, v45, v46, v47, v48;
}

uint64_t initializeWithCopy for CurrencyAmountPickerViewContainer(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = v4;
  sub_1BD5733C4(v5, v6, v7);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v9 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v9;
  v10 = *(a2 + 56);
  *(a1 + 56) = v10;
  v11 = *(a2 + 80);
  v18 = *(a2 + 64);
  *(a1 + 64) = v18;
  *(a1 + 80) = v11;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  v12 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v12;
  v13 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v13;
  *(a1 + 144) = *(a2 + 144);
  sub_1BE048964();
  v14 = v10;
  v15 = v18;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048C84();
  sub_1BE048964();
  v16 = v13;
  sub_1BE048964();
  return a1;
}

uint64_t assignWithCopy for CurrencyAmountPickerViewContainer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  v6 = v4;

  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  sub_1BD5733C4(v7, v8, v9);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  sub_1BD035CB4(v10, v11, v12, v13, v14, v15, v16, v17);
  v18 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  sub_1BE048964();
  v18, v19, v20, v21, v22, v23, v24, v25;
  *(a1 + 48) = *(a2 + 48);
  v26 = *(a1 + 56);
  v27 = *(a2 + 56);
  *(a1 + 56) = v27;
  v28 = v27;

  v29 = *(a1 + 64);
  v30 = *(a2 + 64);
  *(a1 + 64) = v30;
  v31 = v30;

  v32 = *(a2 + 80);
  v33 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v32;
  sub_1BE048964();
  v33, v34, v35, v36, v37, v38, v39, v40;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 94) = *(a2 + 94);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 98) = *(a2 + 98);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 102) = *(a2 + 102);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 106) = *(a2 + 106);
  v41 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  sub_1BE048964();
  v41, v42, v43, v44, v45, v46, v47, v48;
  v49 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);
  sub_1BE048C84();
  v49, v50, v51, v52, v53, v54, v55, v56;
  v57 = *(a1 + 128);
  *(a1 + 128) = *(a2 + 128);
  sub_1BE048964();
  v57, v58, v59, v60, v61, v62, v63, v64;
  v65 = *(a1 + 136);
  v66 = *(a2 + 136);
  *(a1 + 136) = v66;
  v67 = v66;

  v68 = *(a1 + 144);
  *(a1 + 144) = *(a2 + 144);
  sub_1BE048964();
  v68, v69, v70, v71, v72, v73, v74, v75;
  return a1;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t assignWithTake for CurrencyAmountPickerViewContainer(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v6 = *(a2 + 32);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v6;
  sub_1BD035CB4(v7, v8, v9, v10, v11, v12, v13, v14);
  v15 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  v15, v16, v17, v18, v19, v20, v21, v22;
  *(a1 + 48) = *(a2 + 48);

  v23 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);

  v24 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  v24, v25, v26, v27, v28, v29, v30, v31;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 112), v32, v33, v34, v35, v36, v37, v38;
  v39 = *(a1 + 120);
  *(a1 + 112) = *(a2 + 112);
  v39, v40, v41, v42, v43, v44, v45, v46;
  *(a1 + 128), v47, v48, v49, v50, v51, v52, v53;
  v54 = *(a1 + 136);
  *(a1 + 128) = *(a2 + 128);

  v55 = *(a1 + 144);
  *(a1 + 144) = *(a2 + 144);
  v55, v56, v57, v58, v59, v60, v61, v62;
  return a1;
}

uint64_t getEnumTagSinglePayload for CurrencyAmountPickerViewContainer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CurrencyAmountPickerViewContainer(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD5738F0()
{
  result = qword_1EBD4AE78;
  if (!qword_1EBD4AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4AE78);
  }

  return result;
}

unint64_t sub_1BD573944()
{
  result = qword_1EBD4AE80;
  if (!qword_1EBD4AE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AE68, &unk_1BE0E22E0);
    sub_1BD573CC0(&qword_1EBD4AE70, type metadata accessor for CurrencyAmountPickerView, &unk_1BE0F6A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4AE80);
  }

  return result;
}

unint64_t sub_1BD573A14()
{
  result = qword_1EBD4AEA0;
  if (!qword_1EBD4AEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AE98, &qword_1BE0E22F0);
    sub_1BD573A98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4AEA0);
  }

  return result;
}

unint64_t sub_1BD573A98()
{
  result = qword_1EBD4AEA8;
  if (!qword_1EBD4AEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AEB0, &qword_1BE0E22F8);
    sub_1BD573CC0(&qword_1EBD4AEB8, sub_1BD448C54, MEMORY[0x1E69E81C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4AEA8);
  }

  return result;
}

uint64_t sub_1BD573B64(uint64_t a1)
{
  v2 = type metadata accessor for CurrencyAmountPickerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD573BC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrencyAmountPickerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_58()
{
  sub_1BD035CB4(*(v0 + 32), *(v0 + 40), *(v0 + 48), v1, v2, v3, v4, v5);
  *(v0 + 56), v6, v7, v8, v9, v10, v11, v12;

  *(v0 + 96), v13, v14, v15, v16, v17, v18, v19;
  *(v0 + 128), v20, v21, v22, v23, v24, v25, v26;
  *(v0 + 136), v27, v28, v29, v30, v31, v32, v33;
  *(v0 + 144), v34, v35, v36, v37, v38, v39, v40;

  *(v0 + 160), v41, v42, v43, v44, v45, v46, v47;

  return swift_deallocObject();
}

uint64_t sub_1BD573CC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD573D08()
{
  result = qword_1EBD4AED8;
  if (!qword_1EBD4AED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AEC0, &unk_1BE0E2300);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AE30, &qword_1BE0E22B8);
    type metadata accessor for Decimal(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AE28, &qword_1BE0E22B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AE98, &qword_1BE0E22F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AE20, &qword_1BE0E22A8);
    type metadata accessor for AccountModel(255);
    sub_1BD0DE4F4(&qword_1EBD4AE88, &qword_1EBD4AE20, &qword_1BE0E22A8, MEMORY[0x1E6981870]);
    sub_1BD573CC0(&qword_1EBD4AE90, type metadata accessor for AccountModel, MEMORY[0x1E69E81C0]);
    swift_getOpaqueTypeConformance2();
    sub_1BD573A14();
    swift_getOpaqueTypeConformance2();
    sub_1BD573CC0(&qword_1EBD42530, type metadata accessor for Decimal, MEMORY[0x1E6969FE0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4AED8);
  }

  return result;
}

void sub_1BD573F5C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v95 = a2;
  v3 = sub_1BE04FB94();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AEE8, &qword_1BE0E2468);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v82 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AEF0, &qword_1BE0E2470);
  v11 = *(v10 - 8);
  v88 = v10;
  v89 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v82 - v12;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AEF8, &qword_1BE0E2478) - 8;
  MEMORY[0x1EEE9AC00](v93);
  v94 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v82 - v15;
  v16 = [objc_opt_self() systemGroupedBackgroundColor];
  v92 = sub_1BE0511C4();
  v91 = sub_1BE04EC54();
  v90 = sub_1BE0501D4();
  v96 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AF00, &qword_1BE0E2480);
  sub_1BD5767A0();
  sub_1BE0504E4();
  v83 = v7;
  v9[*(v7 + 36)] = 1;
  sub_1BE04FB84();
  v17 = sub_1BD5768F0();
  v82 = v3;
  sub_1BE051144();
  (*(v4 + 8))(v6, v3);
  sub_1BD0DE53C(v9, &qword_1EBD4AEE8, &qword_1BE0E2468);
  v101 = *(a1 + 1);
  v102[0] = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516C4();
  v19 = v97;
  v18 = v98;
  v20 = a1[1];
  v87 = *a1;
  v21 = a1[4];
  v22 = a1[5];
  v23 = swift_allocObject();
  v24 = *(a1 + 1);
  v23[1] = *a1;
  v23[2] = v24;
  v23[3] = *(a1 + 2);
  v85 = v20;
  sub_1BD0DE19C(v102, &v97, &qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BD0D44B8(v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AF48, &qword_1BE0E24A8);
  v97 = v83;
  v98 = v82;
  v99 = v17;
  v100 = MEMORY[0x1E697C750];
  swift_getOpaqueTypeConformance2();
  sub_1BD5769B0();
  v25 = v86;
  v26 = v88;
  v27 = v84;
  sub_1BE050F64();
  v18, v28, v29, v30, v31, v32, v33, v34;
  v23, v35, v36, v37, v38, v39, v40, v41;
  v19, v42, v43, v44, v45, v46, v47, v48;
  (*(v89 + 8))(v27, v26);
  v49 = swift_allocObject();
  v50 = *(a1 + 1);
  *(v49 + 1) = *a1;
  *(v49 + 2) = v50;
  *(v49 + 3) = *(a1 + 2);
  v51 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AF58, &qword_1BE0E24B0) + 36));
  *v51 = sub_1BD576A6C;
  v51[1] = v49;
  v51[2] = 0;
  v51[3] = 0;
  v52 = swift_allocObject();
  v53 = *(a1 + 1);
  v52[1] = *a1;
  v52[2] = v53;
  v52[3] = *(a1 + 2);
  v54 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AF60, &qword_1BE0E24B8) + 36));
  *v54 = 0;
  v54[1] = 0;
  v54[2] = sub_1BD576A74;
  v54[3] = v52;
  v55 = v85;
  sub_1BD0DE19C(v102, &v97, &qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BD0D44B8(v21, v22);
  v56 = v55;
  sub_1BD0DE19C(v102, &v97, &qword_1EBD54350, &unk_1BE0B8D00);
  v57 = v21;
  sub_1BD0D44B8(v21, v22);
  type metadata accessor for InStoreTopUpTokenModel(0);
  sub_1BD576DE4(&qword_1EBD40240, type metadata accessor for InStoreTopUpTokenModel, &unk_1BE0FDA70);
  v58 = sub_1BE04E964();
  KeyPath = swift_getKeyPath();
  v60 = v25 + *(v93 + 44);
  sub_1BE04E974();

  KeyPath, v61, v62, v63, v64, v65, v66, v67;
  v68 = (v60 + *(type metadata accessor for ErrorAlertModifier(0) + 20));
  *v68 = v57;
  v68[1] = v22;
  v69 = v94;
  sub_1BD0DE19C(v25, v94, &qword_1EBD4AEF8, &qword_1BE0E2478);
  v70 = v95;
  v71 = v91;
  v72 = v92;
  *v95 = v92;
  v70[1] = v71;
  *(v70 + 16) = v90;
  v73 = v70;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AF68, &unk_1BE0E24E8);
  sub_1BD0DE19C(v69, v73 + *(v74 + 48), &qword_1EBD4AEF8, &qword_1BE0E2478);
  sub_1BD0D44B8(v57, v22);
  sub_1BE048964();
  sub_1BD0DE53C(v25, &qword_1EBD4AEF8, &qword_1BE0E2478);
  sub_1BD0DE53C(v69, &qword_1EBD4AEF8, &qword_1BE0E2478);
  v72, v75, v76, v77, v78, v79, v80, v81;
}

uint64_t sub_1BD57467C(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v37[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v42[0] = 0;
  *(&v42[0] + 1) = 0xE000000000000000;
  sub_1BE053834();
  *(&v42[0] + 1), v6, v7, v8, v9, v10, v11, v12;
  *&v42[0] = 0xD000000000000016;
  *(&v42[0] + 1) = 0x80000001BE12EF40;
  v13 = sub_1BD85D55C();
  v15 = v14;
  MEMORY[0x1BFB3F610](v13);
  v15, v16, v17, v18, v19, v20, v21, v22;
  v23 = *(&v42[0] + 1);
  (*(v3 + 104))(v5, *MEMORY[0x1E69B8060], v2);
  v24 = sub_1BE04B714();
  v26 = v25;
  v23, v25, v27, v28, v29, v30, v31, v32;
  (*(v3 + 8))(v5, v2);
  *&v42[0] = v24;
  *(&v42[0] + 1) = v26;
  sub_1BD0DDEBC();
  v44 = sub_1BE0506C4();
  v45 = v33;
  v46 = v34 & 1;
  v47 = v35;
  sub_1BD574904(v42);
  v39 = v42[0];
  v40 = v42[1];
  v41[0] = v43[0];
  *(v41 + 9) = *(v43 + 9);
  v38 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AF18, &qword_1BE0E2488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AF28, &qword_1BE0E2490);
  sub_1BD0DE4F4(&qword_1EBD4AF10, &qword_1EBD4AF18, &qword_1BE0E2488, MEMORY[0x1E6981F48]);
  sub_1BD576864();
  return sub_1BE051A34();
}

double sub_1BD574904@<D0>(_OWORD *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(v20);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  if (*&v20[0] >= 2uLL)
  {
    sub_1BD576BB0(*&v20[0]);
    sub_1BD576398(v20);
  }

  else
  {
    sub_1BD576BB0(*&v20[0]);
  }

  sub_1BD10E4BC();
  sub_1BE04F9A4();
  v18 = v20[1];
  *a1 = v20[0];
  a1[1] = v18;
  a1[2] = v21[0];
  result = *(v21 + 9);
  *(a1 + 41) = *(v21 + 9);
  return result;
}

void sub_1BD574A24(void *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AF78, &qword_1BE0E2568);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  v9 = sub_1BE052404();
  v10 = PKUIImageNamed(v9);

  if (v10)
  {
    v11 = sub_1BE051544();
    v12 = sub_1BE04F794();
    v31 = sub_1BE051424();
    v13 = sub_1BE0518D4();
    *v8 = sub_1BE04F504();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AF80, &qword_1BE0E2570);
    sub_1BD574C6C(&v8[*(v14 + 44)]);
    v31 = sub_1BE051424();
    *&v8[*(v3 + 36)] = sub_1BE0518D4();
    sub_1BD0DE19C(v8, v5, &qword_1EBD4AF78, &qword_1BE0E2568);
    *a2 = v11;
    a2[1] = v12;
    a2[2] = sub_1BD574C64;
    a2[3] = 0;
    a2[4] = v13;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AF88, &qword_1BE0E2578);
    sub_1BD0DE19C(v5, a2 + *(v15 + 48), &qword_1EBD4AF78, &qword_1BE0E2568);
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD0DE53C(v8, &qword_1EBD4AF78, &qword_1BE0E2568);
    sub_1BD0DE53C(v5, &qword_1EBD4AF78, &qword_1BE0E2568);
    v13, v16, v17, v18, v19, v20, v21, v22;
    v11, v23, v24, v25, v26, v27, v28, v29;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD574C6C@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AF90, &qword_1BE0E2580);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  *v8 = sub_1BE04F7B4();
  *(v8 + 1) = 0x4018000000000000;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AF98, &qword_1BE0E2588);
  sub_1BD574DD8(&v8[*(v9 + 44)]);
  sub_1BD0DE19C(v8, v5, &qword_1EBD4AF90, &qword_1BE0E2580);
  *a2 = 0;
  *(a2 + 8) = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AFA0, &qword_1BE0E2590);
  sub_1BD0DE19C(v5, a2 + *(v10 + 48), &qword_1EBD4AF90, &qword_1BE0E2580);
  v11 = a2 + *(v10 + 64);
  *v11 = 0;
  *(v11 + 8) = 1;
  sub_1BD0DE53C(v8, &qword_1EBD4AF90, &qword_1BE0E2580);
  return sub_1BD0DE53C(v5, &qword_1EBD4AF90, &qword_1BE0E2580);
}

uint64_t sub_1BD574DD8@<X0>(void *a2@<X8>)
{
  v37 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AFA8, &unk_1BE0E2598);
  MEMORY[0x1EEE9AC00](v36);
  v3 = (&v33 - v2);
  v4 = sub_1BE04FEB4();
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330, &qword_1BE0BB6F0);
  v33 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AFB0, &qword_1BE0E25A8);
  MEMORY[0x1EEE9AC00](v35);
  v11 = &v33 - v10;
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  sub_1BE04D8B4(&v39);
  KeyPath, v14, v15, v16, v17, v18, v19, v20;
  v13, v21, v22, v23, v24, v25, v26, v27;
  v28 = v39;
  if (v39 >= 2)
  {
    sub_1BD575294(v39, BYTE8(v39) & 1, BYTE9(v39) & 1, &v39);
    v32 = v40;
    *v3 = v39;
    v3[1] = v32;
    v3[2] = v41[0];
    *(v3 + 44) = *(v41 + 12);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE19C(&v39, v38, &qword_1EBD4AFB8, &qword_1BE0E25B0);
    sub_1BD0DE19C(&v39, v38, &qword_1EBD4AFB8, &qword_1BE0E25B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AFB8, &qword_1BE0E25B0);
    sub_1BD576C98();
    sub_1BD576E2C();
    sub_1BE04F9A4();
    sub_1BD576BB0(v28);
    sub_1BD0DE53C(&v39, &qword_1EBD4AFB8, &qword_1BE0E25B0);
    return sub_1BD0DE53C(&v39, &qword_1EBD4AFB8, &qword_1BE0E25B0);
  }

  else
  {
    sub_1BE04E4F4();
    sub_1BE04FEA4();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    sub_1BD576DE4(&qword_1EBD4A670, MEMORY[0x1E697C9C8], MEMORY[0x1E697C9B0]);
    sub_1BE050804();
    (*(v34 + 8))(v6, v4);
    (*(v33 + 8))(v9, v7);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v29 = &v11[*(v35 + 36)];
    v30 = v40;
    *v29 = v39;
    *(v29 + 1) = v30;
    *(v29 + 2) = v41[0];
    sub_1BD0DE19C(v11, v3, &qword_1EBD4AFB0, &qword_1BE0E25A8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AFB8, &qword_1BE0E25B0);
    sub_1BD576C98();
    sub_1BD576E2C();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v11, &qword_1EBD4AFB0, &qword_1BE0E25A8);
  }
}

__n128 sub_1BD575294@<Q0>(void *a1@<X0>, char a2@<W1>, unsigned __int8 a3@<W2>, _OWORD *a4@<X8>)
{
  v92 = a4;
  v7 = sub_1BE051384();
  v89 = *(v7 - 8);
  v90 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v88 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BD85D214(v11);
  if (v14)
  {
    v91 = a3 & 1u | ((a2 & 1) == 0);
    v87 = v14;
    if (a3)
    {
      v15 = v14;
      (*(v10 + 104))(v13, *MEMORY[0x1E69B8060], v9);
      v16 = v15;
      v17 = sub_1BE04B714();
      v19 = v18;
      (*(v10 + 8))(v13, v9);
    }

    else
    {
      v21 = v14;
      v22 = [a1 displayableToken];
      v17 = sub_1BE052434();
      v19 = v23;
    }

    *&v113 = v17;
    *(&v113 + 1) = v19;
    sub_1BD0DDEBC();
    v24 = sub_1BE0506C4();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = sub_1BE050454();
    v32 = sub_1BE0505F4();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v31, v33, v35, v37, v39, v40, v41, v42;
    sub_1BD0DDF10(v24, v26, (v28 & 1), v43, v44, v45, v46, v47);
    v30, v48, v49, v50, v51, v52, v53, v54;
    if (v91)
    {
      (*(v89 + 104))(v88, *MEMORY[0x1E69814D8], v90);
      v55 = sub_1BE0514B4();
    }

    else
    {
      v55 = sub_1BE0513F4();
    }

    v56 = v55;
    v57 = sub_1BE050564();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v56, v58, v60, v62, v64, v65, v66, v67;
    sub_1BD0DDF10(v32, v34, (v36 & 1), v68, v69, v70, v71, v72);
    v38, v73, v74, v75, v76, v77, v78, v79;
    KeyPath = swift_getKeyPath();
    v109 = v61 & 1;
    *&v93 = v57;
    *(&v93 + 1) = v59;
    LOBYTE(v94[0]) = v61 & 1;
    *(v94 + 1) = *v108;
    DWORD1(v94[0]) = *&v108[3];
    *(&v94[0] + 1) = v63;
    *&v94[1] = KeyPath;
    WORD4(v94[1]) = 257;
    BYTE10(v94[1]) = 1;
    *(v96 + 11) = *(v94 + 11);
    v95[1] = v93;
    v96[0] = v94[0];
    *&v95[0] = v87;
    *(&v95[0] + 1) = v91;
    *(v107 + 11) = *(v96 + 11);
    v106 = v93;
    v107[0] = v94[0];
    v105 = v95[0];
    v97[0] = v57;
    v97[1] = v59;
    v98 = v61 & 1;
    *&v99[3] = *&v108[3];
    *v99 = *v108;
    v100 = v63;
    v101 = KeyPath;
    v102 = 257;
    v103 = 1;
    v81 = v87;
    sub_1BD0DE19C(&v93, &v113, &qword_1EBD4AFF0, &qword_1BE0E25F8);
    sub_1BD0DE53C(v97, &qword_1EBD4AFF0, &qword_1BE0E25F8);

    v104 = 0;
    v113 = v105;
    v114 = v106;
    *v115 = v107[0];
    *&v115[11] = *(v107 + 11);
    v115[27] = 0;
    sub_1BD0DE19C(v95, &v110, &qword_1EBD4AFF8, &qword_1BE0E2600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AFD8, &qword_1BE0E25B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AFE8, &qword_1BE0E25C0);
    v82 = MEMORY[0x1E6981F48];
    sub_1BD0DE4F4(&qword_1EBD4AFD0, &qword_1EBD4AFD8, &qword_1BE0E25B8, MEMORY[0x1E6981F48]);
    sub_1BD0DE4F4(&qword_1EBD4AFE0, &qword_1EBD4AFE8, &qword_1BE0E25C0, v82);
    sub_1BE04F9A4();

    sub_1BD0DE53C(v95, &qword_1EBD4AFF8, &qword_1BE0E2600);
    v113 = v110;
    v114 = v111;
    *v115 = *v112;
    *&v115[12] = *&v112[12];
  }

  else
  {
    sub_1BD575E44(&v113);
    LOBYTE(v105) = v115[8];
    LOBYTE(v95[0]) = 1;
    v110 = v113;
    v111 = v114;
    *v112 = *v115;
    v112[8] = v115[8];
    *&v112[16] = *&v115[16];
    v112[27] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AFD8, &qword_1BE0E25B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AFE8, &qword_1BE0E25C0);
    v20 = MEMORY[0x1E6981F48];
    sub_1BD0DE4F4(&qword_1EBD4AFD0, &qword_1EBD4AFD8, &qword_1BE0E25B8, MEMORY[0x1E6981F48]);
    sub_1BD0DE4F4(&qword_1EBD4AFE0, &qword_1EBD4AFE8, &qword_1BE0E25C0, v20);
    sub_1BE04F9A4();
  }

  v83 = v114;
  v84 = v92;
  *v92 = v113;
  v84[1] = v83;
  v84[2] = *v115;
  result = *&v115[12];
  *(v84 + 44) = *&v115[12];
  return result;
}

void *sub_1BD5758B0@<X0>(void *a2@<X8>)
{
  v34 = a2;
  v33 = type metadata accessor for SafariViewController(0);
  MEMORY[0x1EEE9AC00](v33);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AF70, &qword_1BE0E2560);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - v5;
  v7 = sub_1BE04AA64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  sub_1BE04D8B4(&v35);
  KeyPath, v16, v17, v18, v19, v20, v21, v22;
  v15, v23, v24, v25, v26, v27, v28, v29;
  v30 = v35;
  if (v35 >= 2)
  {
    v32 = [v35 termsURL];
    sub_1BD576BB0(v30);
    sub_1BE04A9F4();

    (*(v8 + 32))(v13, v10, v7);
    (*(v8 + 16))(v3, v13, v7);
    sub_1BD576BD0(v3, v6);
    swift_storeEnumTagMultiPayload();
    sub_1BD576DE4(&qword_1EBD394A8, type metadata accessor for SafariViewController, &unk_1BE0CA748);
    sub_1BE04F9A4();
    sub_1BD576C34(v3);
    return (*(v8 + 8))(v13, v7);
  }

  else
  {
    sub_1BD576BB0(v35);
    swift_storeEnumTagMultiPayload();
    sub_1BD576DE4(&qword_1EBD394A8, type metadata accessor for SafariViewController, &unk_1BE0CA748);
    return sub_1BE04F9A4();
  }
}

void sub_1BD575C08(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v2, v10, v11, v12, v13, v14, v15, v16;
  if (v17 > 1)
  {
    sub_1BD576BB0(v17);
    sub_1BD85C36C();
  }

  else
  {
    sub_1BD85D6DC();
  }
}

void sub_1BD575C9C(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(a2);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;

  v4, v12, v13, v14, v15, v16, v17, v18;
}

uint64_t sub_1BD575D18(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  sub_1BD0DE19C(a1, &v13 - v8, &qword_1EBD416C0, &unk_1BE0BC2A0);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v9, v6, &qword_1EBD416C0, &unk_1BE0BC2A0);
  v11 = v10;
  sub_1BE04D8C4();
  return sub_1BD0DE53C(v9, &qword_1EBD416C0, &unk_1BE0BC2A0);
}

void sub_1BD575E44(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130, &qword_1BE0C7180);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v148 = &v142 - v3;
  v146 = sub_1BE050474();
  v144 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v5 = &v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F00, &qword_1BE0CC620);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v142 - v11;
  v13 = sub_1BE051574();
  sub_1BE04F7F4();
  v14 = sub_1BE04F824();
  (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  v147 = sub_1BE0515B4();
  v13, v15, v16, v17, v18, v19, v20, v21;
  sub_1BD0DE53C(v12, &qword_1EBD41F00, &qword_1BE0CC620);
  v145 = sub_1BE050294();
  KeyPath = swift_getKeyPath();
  v149 = 0;
  v150 = 0xE000000000000000;
  sub_1BE053834();
  v150, v22, v23, v24, v25, v26, v27, v28;
  v149 = 0xD000000000000019;
  v150 = 0x80000001BE12EFA0;
  v29 = sub_1BD85D55C();
  v31 = v30;
  MEMORY[0x1BFB3F610](v29);
  v31, v32, v33, v34, v35, v36, v37, v38;
  v39 = v150;
  (*(v7 + 104))(v9, *MEMORY[0x1E69B8060], v6);
  v40 = sub_1BE04B714();
  v42 = v41;
  v39, v41, v43, v44, v45, v46, v47, v48;
  (*(v7 + 8))(v9, v6);
  v149 = v40;
  v150 = v42;
  sub_1BD0DDEBC();
  v49 = sub_1BE0506C4();
  v51 = v50;
  LOBYTE(v39) = v52;
  v54 = v53;
  v55 = v144;
  v56 = v146;
  (*(v144 + 104))(v5, *MEMORY[0x1E6980F20], v146);
  v57 = sub_1BE050354();
  v58 = v148;
  (*(*(v57 - 8) + 56))(v148, 1, 1, v57);
  v59 = sub_1BE0503C4();
  sub_1BD0DE53C(v58, &qword_1EBD49130, &qword_1BE0C7180);
  (*(v55 + 8))(v5, v56);
  v60 = sub_1BE0505F4();
  v62 = v61;
  LOBYTE(v56) = v63;
  v65 = v64;
  v59, v61, v63, v64, v66, v67, v68, v69;
  sub_1BD0DDF10(v49, v51, (v39 & 1), v70, v71, v72, v73, v74);
  v54, v75, v76, v77, v78, v79, v80, v81;
  v82 = sub_1BE0513B4();
  v83 = sub_1BE050564();
  v85 = v84;
  LOBYTE(v59) = v86;
  v88 = v87;
  v82, v84, v86, v87, v89, v90, v91, v92;
  sub_1BD0DDF10(v60, v62, (v56 & 1), v93, v94, v95, v96, v97);
  v65, v98, v99, v100, v101, v102, v103, v104;
  v105 = v147;
  v106 = KeyPath;
  *a1 = v147;
  *(a1 + 8) = v106;
  v107 = v145;
  *(a1 + 16) = v145;
  *(a1 + 24) = v83;
  *(a1 + 32) = v85;
  *(a1 + 40) = v59 & 1;
  *(a1 + 48) = v88;
  v108 = v105;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0D7F18(v83, v85, v59 & 1);
  sub_1BE048C84();
  sub_1BD0DDF10(v83, v85, (v59 & 1), v109, v110, v111, v112, v113);
  v107, v114, v115, v116, v117, v118, v119, v120;
  v106, v121, v122, v123, v124, v125, v126, v127;
  v108, v128, v129, v130, v131, v132, v133, v134;
  v88, v135, v136, v137, v138, v139, v140, v141;
}

void sub_1BD576398(void *a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = 0;
  v68 = 0xE000000000000000;
  sub_1BE053834();
  v68, v7, v8, v9, v10, v11, v12, v13;
  aBlock = 0xD000000000000016;
  v68 = 0x80000001BE12EFC0;
  v75 = *v1;
  v14 = sub_1BD85D55C();
  v16 = v15;
  MEMORY[0x1BFB3F610](v14);
  v16, v17, v18, v19, v20, v21, v22, v23;
  v24 = v68;
  v25 = *MEMORY[0x1E69B8060];
  v26 = *(v4 + 104);
  v26(v6, v25, v3);
  v27 = MEMORY[0x1E69E7CC0];
  v28 = sub_1BE04B714();
  v64 = v29;
  v65 = v28;
  v24, v29, v30, v31, v32, v33, v34, v35;
  v36 = *(v4 + 8);
  v36(v6, v3);
  v26(v6, v25, v3);
  sub_1BE04B714();
  v38 = v37;
  v36(v6, v3);
  v73 = v27;
  v74 = v2[1];
  v39 = *(v2 + 4);
  v40 = *(v2 + 5);
  v41 = swift_allocObject();
  v42 = v2[1];
  v41[1] = *v2;
  v41[2] = v42;
  v41[3] = v2[2];
  v43 = objc_allocWithZone(PKTextRangeHyperlink);
  sub_1BD0DE19C(&v75, &aBlock, &qword_1EBD4B000, &qword_1BE0E2638);
  sub_1BD0DE19C(&v74, &aBlock, &qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BD0D44B8(v39, v40);
  v44 = sub_1BE052404();
  v38, v45, v46, v47, v48, v49, v50, v51;
  v71 = sub_1BD576F5C;
  v72 = v41;
  aBlock = MEMORY[0x1E69E9820];
  v68 = 1107296256;
  v69 = sub_1BD126964;
  v70 = &block_descriptor_127;
  v52 = _Block_copy(&aBlock);
  v72, v53, v54, v55, v56, v57, v58, v59;
  v60 = [v43 initWithLinkText:v44 action:v52];
  _Block_release(v52);

  if (v60)
  {
    v61 = v60;
    MEMORY[0x1BFB3F7A0]();
    if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();

    v27 = v73;
  }

  v62 = v66;
  *v66 = v27;
  v62[1] = 4;
  *(v62 + 16) = 0;
  v63 = v64;
  v62[3] = v65;
  v62[4] = v63;
  v62[5] = 0;
  v62[6] = 0;
}

void sub_1BD576734(uint64_t *a2@<X8>)
{
  v4 = v2[1];
  v7[0] = *v2;
  v7[1] = v4;
  v7[2] = v2[2];
  *a2 = sub_1BE051CD4();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AEE0, &qword_1BE0E2460);
  sub_1BD573F5C(v7, (a2 + *(v6 + 44)));
}

unint64_t sub_1BD5767A0()
{
  result = qword_1EBD4AF08;
  if (!qword_1EBD4AF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AF00, &qword_1BE0E2480);
    sub_1BD0DE4F4(&qword_1EBD4AF10, &qword_1EBD4AF18, &qword_1BE0E2488, MEMORY[0x1E6981F48]);
    sub_1BD576864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4AF08);
  }

  return result;
}

unint64_t sub_1BD576864()
{
  result = qword_1EBD4AF20;
  if (!qword_1EBD4AF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AF28, &qword_1BE0E2490);
    sub_1BD10E4BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4AF20);
  }

  return result;
}

unint64_t sub_1BD5768F0()
{
  result = qword_1EBD4AF30;
  if (!qword_1EBD4AF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AEE8, &qword_1BE0E2468);
    sub_1BD0DE4F4(&qword_1EBD4AF38, &qword_1EBD4AF40, &unk_1BE0E2498, MEMORY[0x1E697CD20]);
    sub_1BD389FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4AF30);
  }

  return result;
}

unint64_t sub_1BD5769B0()
{
  result = qword_1EBD4AF50;
  if (!qword_1EBD4AF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AF48, &qword_1BE0E24A8);
    sub_1BD576DE4(&qword_1EBD394A8, type metadata accessor for SafariViewController, &unk_1BE0CA748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4AF50);
  }

  return result;
}

void sub_1BD576A98(uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v20);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  v19 = v21;
  *a2 = v20;
  *(a2 + 8) = v19;
}

uint64_t sub_1BD576B20(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  sub_1BD576BC0(v2);
  return sub_1BE04D8C4();
}

void sub_1BD576BB0(id a1)
{
  if (a1 >= 2)
  {
  }
}

id sub_1BD576BC0(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_1BD576BD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafariViewController(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD576C34(uint64_t a1)
{
  v2 = type metadata accessor for SafariViewController(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD576C98()
{
  result = qword_1EBD4AFC0;
  if (!qword_1EBD4AFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AFB0, &qword_1BE0E25A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD51330, &qword_1BE0BB6F0);
    sub_1BE04FEB4();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    sub_1BD576DE4(&qword_1EBD4A670, MEMORY[0x1E697C9C8], MEMORY[0x1E697C9B0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4AFC0);
  }

  return result;
}

uint64_t sub_1BD576DE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD576E2C()
{
  result = qword_1EBD4AFC8;
  if (!qword_1EBD4AFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4AFB8, &qword_1BE0E25B0);
    v1 = MEMORY[0x1E6981F48];
    sub_1BD0DE4F4(&qword_1EBD4AFD0, &qword_1EBD4AFD8, &qword_1BE0E25B8, MEMORY[0x1E6981F48]);
    sub_1BD0DE4F4(&qword_1EBD4AFE0, &qword_1EBD4AFE8, &qword_1BE0E25C0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4AFC8);
  }

  return result;
}

uint64_t objectdestroyTm_59()
{
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;
  if (*(v0 + 48))
  {
    *(v0 + 56), v8, v9, v10, v11, v12, v13, v14;
  }

  return swift_deallocObject();
}

double sub_1BD576F5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD576FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE050454();
  KeyPath = swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B018, &qword_1BE0E26F0);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B020, &qword_1BE0E26F8) + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  v8 = sub_1BE051234();
  v9 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B028, &unk_1BE0E2730);
  v11 = (a2 + *(result + 36));
  *v11 = v9;
  v11[1] = v8;
  return result;
}

unint64_t sub_1BD5770C4()
{
  result = qword_1EBD4B030;
  if (!qword_1EBD4B030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B028, &unk_1BE0E2730);
    sub_1BD57717C();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B030);
  }

  return result;
}

unint64_t sub_1BD57717C()
{
  result = qword_1EBD4B038;
  if (!qword_1EBD4B038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B020, &qword_1BE0E26F8);
    sub_1BD0DE4F4(&qword_1EBD4B040, &qword_1EBD4B018, &qword_1BE0E26F0, MEMORY[0x1E697FDF8]);
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B038);
  }

  return result;
}

uint64_t type metadata accessor for AdditionalInfoView(uint64_t a1)
{
  result = qword_1EBD4B048;
  if (!qword_1EBD4B048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD5772D4(uint64_t a1)
{
  result = type metadata accessor for PaymentAuthorizationModel.AdditionalInfo(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_1BD57735C@<X0>(void *a1@<X8>)
{
  v96 = a1;
  v77 = sub_1BE04BD74();
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v74 = &v71 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B058, &qword_1BE0E27A8);
  MEMORY[0x1EEE9AC00](v80);
  v81 = (&v71 - v2);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B060, &qword_1BE0E27B0);
  MEMORY[0x1EEE9AC00](v90);
  v82 = &v71 - v3;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B068, &qword_1BE0E27B8);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v71 - v4;
  v5 = type metadata accessor for PassEligibleRewardsInfo(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v73 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v71 - v8;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B070, &qword_1BE0E27C0);
  MEMORY[0x1EEE9AC00](v94);
  v95 = (&v71 - v9);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B078, &qword_1BE0E27C8);
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v71 - v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B080, &qword_1BE0E27D0);
  MEMORY[0x1EEE9AC00](v86);
  v85 = (&v71 - v11);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B088, &qword_1BE0E27D8);
  MEMORY[0x1EEE9AC00](v88);
  v84 = &v71 - v12;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B090, &unk_1BE0E27E0);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v71 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v83 = &v71 - v15;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B098, &qword_1BE0E27F0);
  MEMORY[0x1EEE9AC00](v72);
  v17 = &v71 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B0A0, &qword_1BE0E27F8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v71 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B0A8, &qword_1BE0E2800);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v71 - v22;
  v24 = type metadata accessor for PeerPaymentModel(0);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for PaymentAuthorizationModel.AdditionalInfo(0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD5788F4(v92, v30, type metadata accessor for PaymentAuthorizationModel.AdditionalInfo);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v79 = v25;
    v80 = v18;
    v81 = v20;
    v48 = v83;
    v92 = v21;
    v82 = v23;
    v49 = v85;
    v50 = v84;
    if (EnumCaseMultiPayload)
    {
      v68 = *(v30 + 2);
      v69 = *(v30 + 3);
      *v85 = *v30;
      *(v49 + 16) = v68;
      *(v49 + 24) = v69;
      swift_storeEnumTagMultiPayload();
      sub_1BD578444();
      sub_1BD57865C();
      sub_1BE04F9A4();
      v44 = &qword_1EBD4B088;
      v45 = &qword_1BE0E27D8;
      sub_1BD0DE19C(v50, v89, &qword_1EBD4B088, &qword_1BE0E27D8);
      swift_storeEnumTagMultiPayload();
      sub_1BD5783B8();
      sub_1BD5786B0();
      v46 = v91;
      sub_1BE04F9A4();
      v47 = v50;
      goto LABEL_13;
    }

    sub_1BD57888C(v30, v27, type metadata accessor for PeerPaymentModel);
    v51 = &v27[*(v24 + 24)];
    v52 = *v51;
    v53 = *(v51 + 2);
    v54 = *(v51 + 3);
    v55 = *(v51 + 4);
    v103 = *(v51 + 3);
    v104 = v55;
    v102 = *(v51 + 2);
    if (v52 == 1 || !v54)
    {
      sub_1BD5788F4(v27, v48, type metadata accessor for PeerPaymentModel);
      (*(v79 + 56))(v48, 0, 1, v24);
      sub_1BD6D4050(v48, v17);
      sub_1BD0DE19C(v17, v81, &qword_1EBD4B098, &qword_1BE0E27F0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B0D0, &qword_1BE0E2808);
      sub_1BD5784D0();
      sub_1BD5785A8();
      v58 = v82;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v17, &qword_1EBD4B098, &qword_1BE0E27F0);
    }

    else
    {
      v56 = v81;
      *v81 = v53;
      v56[1] = v54;
      v57 = *(v51 + 3);
      *(v56 + 1) = *(v51 + 2);
      *(v56 + 2) = v57;
      *(v56 + 3) = *(v51 + 4);
      swift_storeEnumTagMultiPayload();
      v98[0] = v53;
      v98[1] = v54;
      v99 = v102;
      v100 = v103;
      v101 = v104;
      sub_1BD5789BC(v98, v97);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B0D0, &qword_1BE0E2808);
      sub_1BD5784D0();
      sub_1BD5785A8();
      v58 = v82;
      sub_1BE04F9A4();
    }

    sub_1BD0DE19C(v58, v49, &qword_1EBD4B0A8, &qword_1BE0E2800);
    swift_storeEnumTagMultiPayload();
    sub_1BD578444();
    sub_1BD57865C();
    sub_1BE04F9A4();
    sub_1BD0DE19C(v50, v89, &qword_1EBD4B088, &qword_1BE0E27D8);
    swift_storeEnumTagMultiPayload();
    sub_1BD5783B8();
    sub_1BD5786B0();
    v70 = v91;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v50, &qword_1EBD4B088, &qword_1BE0E27D8);
    sub_1BD0DE19C(v70, v95, &qword_1EBD4B090, &unk_1BE0E27E0);
    swift_storeEnumTagMultiPayload();
    sub_1BD57832C();
    sub_1BD578838();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v70, &qword_1EBD4B090, &unk_1BE0E27E0);
    sub_1BD0DE53C(v58, &qword_1EBD4B0A8, &qword_1BE0E2800);
    v65 = type metadata accessor for PeerPaymentModel;
    v64 = v27;
    return sub_1BD57895C(v64, v65);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v59 = v75;
    sub_1BD57888C(v30, v75, type metadata accessor for PassEligibleRewardsInfo);
    v60 = v73;
    sub_1BD5788F4(v59, v73, type metadata accessor for PassEligibleRewardsInfo);
    v61 = v78;
    sub_1BD38BA78(v60, v78);
    sub_1BD0DE19C(v61, v81, &qword_1EBD4B068, &qword_1BE0E27B8);
    swift_storeEnumTagMultiPayload();
    sub_1BD57873C();
    sub_1BD2EE288();
    v62 = v82;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v62, v89, &qword_1EBD4B060, &qword_1BE0E27B0);
    swift_storeEnumTagMultiPayload();
    sub_1BD5783B8();
    sub_1BD5786B0();
    v63 = v91;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v62, &qword_1EBD4B060, &qword_1BE0E27B0);
    sub_1BD0DE19C(v63, v95, &qword_1EBD4B090, &unk_1BE0E27E0);
    swift_storeEnumTagMultiPayload();
    sub_1BD57832C();
    sub_1BD578838();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v63, &qword_1EBD4B090, &unk_1BE0E27E0);
    sub_1BD0DE53C(v61, &qword_1EBD4B068, &qword_1BE0E27B8);
    v64 = v59;
    v65 = type metadata accessor for PassEligibleRewardsInfo;
    return sub_1BD57895C(v64, v65);
  }

  if (EnumCaseMultiPayload != 3)
  {
    v66 = *(v30 + 2);
    v67 = v95;
    *v95 = *v30;
    *(v67 + 2) = v66;
    swift_storeEnumTagMultiPayload();
    sub_1BD57832C();
    sub_1BD578838();
    return sub_1BE04F9A4();
  }

  v32 = *v30;
  v33 = *(v30 + 1);
  v34 = v76;
  v35 = v74;
  v36 = v77;
  (*(v76 + 104))(v74, *MEMORY[0x1E69B8070], v77);
  result = PKPassKitBundle();
  if (result)
  {
    v38 = result;
    v39 = sub_1BE04B6F4();
    v41 = v40;

    (*(v34 + 8))(v35, v36);
    v42 = v81;
    *v81 = v39;
    v42[1] = v41;
    v42[2] = v32;
    v42[3] = v33;
    swift_storeEnumTagMultiPayload();
    sub_1BD57873C();
    sub_1BD2EE288();
    v43 = v82;
    sub_1BE04F9A4();
    v44 = &qword_1EBD4B060;
    v45 = &qword_1BE0E27B0;
    sub_1BD0DE19C(v43, v89, &qword_1EBD4B060, &qword_1BE0E27B0);
    swift_storeEnumTagMultiPayload();
    sub_1BD5783B8();
    sub_1BD5786B0();
    v46 = v91;
    sub_1BE04F9A4();
    v47 = v43;
LABEL_13:
    sub_1BD0DE53C(v47, v44, v45);
    sub_1BD0DE19C(v46, v95, &qword_1EBD4B090, &unk_1BE0E27E0);
    swift_storeEnumTagMultiPayload();
    sub_1BD57832C();
    sub_1BD578838();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v46, &qword_1EBD4B090, &unk_1BE0E27E0);
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD57832C()
{
  result = qword_1EBD4B0B0;
  if (!qword_1EBD4B0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B090, &unk_1BE0E27E0);
    sub_1BD5783B8();
    sub_1BD5786B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B0B0);
  }

  return result;
}

unint64_t sub_1BD5783B8()
{
  result = qword_1EBD4B0B8;
  if (!qword_1EBD4B0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B088, &qword_1BE0E27D8);
    sub_1BD578444();
    sub_1BD57865C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B0B8);
  }

  return result;
}

unint64_t sub_1BD578444()
{
  result = qword_1EBD4B0C0;
  if (!qword_1EBD4B0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B0A8, &qword_1BE0E2800);
    sub_1BD5784D0();
    sub_1BD5785A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B0C0);
  }

  return result;
}

unint64_t sub_1BD5784D0()
{
  result = qword_1EBD4B0C8;
  if (!qword_1EBD4B0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B0D0, &qword_1BE0E2808);
    sub_1BD578554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B0C8);
  }

  return result;
}

unint64_t sub_1BD578554()
{
  result = qword_1EBD4B0D8;
  if (!qword_1EBD4B0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B0D8);
  }

  return result;
}

unint64_t sub_1BD5785A8()
{
  result = qword_1EBD4B0E0;
  if (!qword_1EBD4B0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B098, &qword_1BE0E27F0);
    sub_1BD5787F0(&qword_1EBD4B0E8, type metadata accessor for CashPromotionView, &unk_1BE0F02E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B0E0);
  }

  return result;
}

unint64_t sub_1BD57865C()
{
  result = qword_1EBD4B0F0;
  if (!qword_1EBD4B0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B0F0);
  }

  return result;
}

unint64_t sub_1BD5786B0()
{
  result = qword_1EBD4B0F8;
  if (!qword_1EBD4B0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B060, &qword_1BE0E27B0);
    sub_1BD57873C();
    sub_1BD2EE288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B0F8);
  }

  return result;
}

unint64_t sub_1BD57873C()
{
  result = qword_1EBD4B100;
  if (!qword_1EBD4B100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B068, &qword_1BE0E27B8);
    sub_1BD5787F0(&qword_1EBD4B108, type metadata accessor for AppleCardRewardsInfoView, &unk_1BE0D02BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B100);
  }

  return result;
}

uint64_t sub_1BD5787F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD578838()
{
  result = qword_1EBD4B110;
  if (!qword_1EBD4B110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B110);
  }

  return result;
}

uint64_t sub_1BD57888C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD5788F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD57895C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD578A18()
{
  result = qword_1EBD4B118;
  if (!qword_1EBD4B118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B120, &unk_1BE0E2810);
    sub_1BD57832C();
    sub_1BD578838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B118);
  }

  return result;
}

uint64_t type metadata accessor for PassEligibleRewardsInfo(uint64_t a1)
{
  result = qword_1EBD365E8;
  if (!qword_1EBD365E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD578B18(uint64_t a1)
{
  sub_1BD578BC4();
  if (v1 <= 0x3F)
  {
    sub_1BD578C14(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PKPaymentAuthorizationFundingMode(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD578BC4()
{
  if (!qword_1EBD4B128)
  {
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4B128);
    }
  }
}

void sub_1BD578C14(uint64_t a1)
{
  if (!qword_1EBD36A40)
  {
    sub_1BE04AF64();
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD36A40);
    }
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1BD578C88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1BD578CE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_1BD578D58@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v118 = a3;
  v119 = a1;
  v113 = sub_1BE04AF64();
  v114 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v105 = &v100[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v110 = &v100[-v6];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v100[-v8];
  MEMORY[0x1EEE9AC00](v10);
  *&v107 = &v100[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v106 = &v100[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v100[-v15];
  MEMORY[0x1EEE9AC00](v17);
  v112 = &v100[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v115 = &v100[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v100[-v22];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v100[-v25];
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v100[-v28];
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v100[-v31];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C940, &unk_1BE0CDD90);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v111 = &v100[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v35);
  *&v108 = &v100[-v36];
  v37 = type metadata accessor for PassEligibleRewardsInfo(0);
  v116 = *(v37 - 8);
  v117 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v100[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v100[-v41];
  v44 = MEMORY[0x1EEE9AC00](v43);
  v109 = &v100[-v45];
  v120 = a2;
  result = [a2 paymentRequest];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v47 = result;
  v48 = [result requestType];

  if (!v48)
  {
    v52 = v119;
    v53 = WrappedPass.secureElementPass.getter();
    if (!v53)
    {
      v49 = v52;
      goto LABEL_4;
    }

    v54 = v53;
    if (([v53 isAppleCardPass] & 1) == 0)
    {
      sub_1BD0E8E44(v52);

      goto LABEL_5;
    }

    v104 = v54;
    v55 = [v54 paymentPass];
    v56 = [v120 enhancedMerchantInfoForPass_];

    if (v56)
    {
      sub_1BD57B078(v121);
      v107 = v121[1];
      v108 = v121[0];
      v103 = v122;
      v102 = v123;
      v101 = v124;
      sub_1BD579A5C(v125);
      v57 = [v56 paymentSheetOverrideStart];
      if (v57)
      {
        v58 = v115;
        v59 = v57;
        sub_1BE04AEE4();

        v60 = v114;
        v61 = v114[7];
        v62 = v58;
        v63 = 0;
      }

      else
      {
        v60 = v114;
        v62 = v115;
        v61 = v114[7];
        v63 = 1;
      }

      v68 = v113;
      v61(v62, v63, 1, v113);
      v69 = v120;
      v70 = v112;
      v71 = [v56 paymentSheetOverrideEnd];
      if (v71)
      {
        v72 = v71;
        sub_1BE04AEE4();

        v73 = 0;
      }

      else
      {
        v73 = 1;
      }

      v61(v70, v73, 1, v68);
      v74 = [v69 fundingMode];
      sub_1BD0DE19C(v115, v16, &unk_1EBD39970, &unk_1BE0B9F80);
      v75 = v60[6];
      if (v75(v16, 1, v68) == 1)
      {

        sub_1BD0E8E44(v119);
      }

      else
      {
        v113 = v74;
        v76 = v60[4];
        v76(v110, v16, v68);
        v16 = v106;
        sub_1BD0DE19C(v70, v106, &unk_1EBD39970, &unk_1BE0B9F80);
        if (v75(v16, 1, v68) != 1)
        {
          v93 = v105;
          v76(v105, v16, v68);
          v94 = v110;
          v95 = sub_1BE04AE74();

          sub_1BD0E8E44(v119);
          v96 = v60[1];
          v96(v93, v68);
          v96(v94, v68);
          v70 = v112;
          v74 = v113;
          if (v95)
          {
            sub_1BD0DE53C(v125, &qword_1EBD4B138, &unk_1BE0E28E0);
            sub_1BD57B3CC(v121);
            sub_1BD0DE53C(v70, &unk_1EBD39970, &unk_1BE0B9F80);
            sub_1BD0DE53C(v115, &unk_1EBD39970, &unk_1BE0B9F80);
            v82 = 1;
            v81 = v117;
            v80 = v111;
LABEL_27:
            v51 = v116;
            v83 = *(v116 + 56);
            v83(v80, v82, 1, v81);
            v84 = v81;
            if ((*(v51 + 48))(v80, 1, v81))
            {
LABEL_28:
              sub_1BD0DE53C(v80, &unk_1EBD4C940, &unk_1BE0CDD90);
              v50 = v84;
              return (*(v51 + 56))(v118, 1, 1, v50);
            }

LABEL_34:
            v90 = v109;
            sub_1BD57AE20(v80, v109);
            v91 = v90;
            v92 = v118;
            sub_1BD57AE20(v91, v118);
            return (v83)(v92, 0, 1, v84);
          }

LABEL_26:
          *v39 = 1;
          *(v39 + 24) = v107;
          *(v39 + 8) = v108;
          v77 = v102;
          *(v39 + 5) = v103;
          *(v39 + 6) = v77;
          v39[56] = v101;
          v78 = v125[1];
          *(v39 + 4) = v125[0];
          *(v39 + 5) = v78;
          *(v39 + 6) = v125[2];
          v39[112] = v126;
          v79 = v117;
          sub_1BD0DE204(v115, &v39[*(v117 + 28)], &unk_1EBD39970, &unk_1BE0B9F80);
          sub_1BD0DE204(v70, &v39[*(v79 + 32)], &unk_1EBD39970, &unk_1BE0B9F80);
          *&v39[*(v79 + 36)] = v74;
          v80 = v111;
          sub_1BD57AE20(v39, v111);
          v81 = v79;
          v82 = 0;
          goto LABEL_27;
        }

        sub_1BD0E8E44(v119);
        (v60[1])(v110, v68);
        v70 = v112;
        v74 = v113;
      }

      sub_1BD0DE53C(v16, &unk_1EBD39970, &unk_1BE0B9F80);
      goto LABEL_26;
    }

    v64 = v114;
    v65 = v114[7];
    v66 = v113;
    v65(v32, 1, 1, v113);
    v65(v29, 1, 1, v66);
    sub_1BD0DE19C(v32, v26, &unk_1EBD39970, &unk_1BE0B9F80);
    v67 = v64[6];
    if (v67(v26, 1, v66) == 1)
    {

      sub_1BD0E8E44(v119);
    }

    else
    {
      v85 = v26;
      v86 = v64[4];
      v86(v107, v85, v66);
      sub_1BD0DE19C(v29, v23, &unk_1EBD39970, &unk_1BE0B9F80);
      if (v67(v23, 1, v66) != 1)
      {
        v86(v9, v23, v66);
        v97 = v107;
        v98 = sub_1BE04AE74();

        sub_1BD0E8E44(v119);
        v99 = v114[1];
        v99(v9, v66);
        v99(v97, v66);
        v87 = v117;
        if (v98)
        {
          v84 = v117;
          sub_1BD0DE53C(v29, &unk_1EBD39970, &unk_1BE0B9F80);
          sub_1BD0DE53C(v32, &unk_1EBD39970, &unk_1BE0B9F80);
          v89 = 1;
          v80 = v108;
LABEL_33:
          v51 = v116;
          v83 = *(v116 + 56);
          v83(v80, v89, 1, v84);
          if ((*(v51 + 48))(v80, 1, v84))
          {
            goto LABEL_28;
          }

          goto LABEL_34;
        }

LABEL_32:
        *v42 = 0;
        *(v42 + 8) = xmmword_1BE0CB9B0;
        *(v42 + 24) = 0u;
        *(v42 + 40) = 0u;
        v42[56] = 0;
        *(v42 + 4) = xmmword_1BE0CB9B0;
        *(v42 + 5) = 0u;
        *(v42 + 6) = 0u;
        v42[112] = 0;
        v88 = v87;
        sub_1BD0DE204(v32, &v42[*(v87 + 28)], &unk_1EBD39970, &unk_1BE0B9F80);
        sub_1BD0DE204(v29, &v42[*(v88 + 32)], &unk_1EBD39970, &unk_1BE0B9F80);
        v84 = v88;
        *&v42[*(v88 + 36)] = 0;
        v80 = v108;
        sub_1BD57AE20(v42, v108);
        v89 = 0;
        goto LABEL_33;
      }

      sub_1BD0E8E44(v119);
      (v114[1])(v107, v66);
      v26 = v23;
    }

    sub_1BD0DE53C(v26, &unk_1EBD39970, &unk_1BE0B9F80);
    v87 = v117;
    goto LABEL_32;
  }

  v49 = v119;
LABEL_4:
  sub_1BD0E8E44(v49);

LABEL_5:
  v51 = v116;
  v50 = v117;
  return (*(v51 + 56))(v118, 1, 1, v50);
}

uint64_t sub_1BD579A00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1BD57A304(v5, v7) & 1;
}

void sub_1BD579A5C(uint64_t a1@<X8>)
{
  v3 = [v1 paymentSheetRewardsText];
  if (v3)
  {
    v4 = v3;
    sub_1BE052434();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v1 paymentSheetMerchantRewardsText];
  if (v7)
  {
    v8 = v7;
    sub_1BE052434();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v1 suppressPaymentSheetRewardsHint];
  if (v6)
  {
    v12 = sub_1BE052404();
    v6, v13, v14, v15, v16, v17, v18, v19;
    v20 = [v12 pk_stringIfNotEmpty];

    if (v20)
    {
      v6 = sub_1BE052434();
      v22 = v21;

      if (!v10)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v6 = 0;
      v22 = 0;
      if (!v10)
      {
LABEL_16:
        sub_1BE048C84();
        v32 = v6;
        v34 = v22;
        goto LABEL_17;
      }
    }
  }

  else
  {
    v22 = 0;
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  v23 = sub_1BE052404();
  v10, v24, v25, v26, v27, v28, v29, v30;
  v31 = [v23 pk_stringIfNotEmpty];

  if (!v31)
  {
    goto LABEL_16;
  }

  v32 = sub_1BE052434();
  v34 = v33;

LABEL_17:
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 24) = v22;
  *(a1 + 32) = v32;
  *(a1 + 40) = v34;
  *(a1 + 48) = v11;
}

uint64_t sub_1BD579C04()
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38810, &unk_1BE0B6F60);
  MEMORY[0x1EEE9AC00](v44);
  v46 = v40 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v47 = v40 - v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  MEMORY[0x1EEE9AC00](v45);
  v42 = v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v40 - v9;
  v11 = sub_1BE04AF64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v43 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v48 = v40 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v40 - v17;
  v19 = type metadata accessor for PassEligibleRewardsInfo(0);
  sub_1BD0DE19C(v0 + *(v19 + 28), v10, &unk_1EBD39970, &unk_1BE0B9F80);
  v20 = *(v12 + 48);
  if (v20(v10, 1, v11) == 1)
  {
    v21 = v12;
    sub_1BE04ADA4();
    if (v20(v10, 1, v11) != 1)
    {
      sub_1BD0DE53C(v10, &unk_1EBD39970, &unk_1BE0B9F80);
    }
  }

  else
  {
    v21 = v12;
    (*(v12 + 32))(v18, v10, v11);
  }

  sub_1BD0DE19C(v0 + *(v19 + 32), v7, &unk_1EBD39970, &unk_1BE0B9F80);
  if (v20(v7, 1, v11) == 1)
  {
    v22 = v48;
    sub_1BE04ADB4();
    v23 = v20(v7, 1, v11);
    v24 = v22;
    if (v23 != 1)
    {
      sub_1BD0DE53C(v7, &unk_1EBD39970, &unk_1BE0B9F80);
    }
  }

  else
  {
    v24 = v48;
    (*(v21 + 32))(v48, v7, v11);
  }

  v25 = sub_1BD57ADDC(&qword_1EBD525D0, MEMORY[0x1E6969548]);
  result = sub_1BE052314();
  if (result)
  {
    v27 = v21;
    v28 = *(v21 + 16);
    v29 = v18;
    v30 = v47;
    v41 = v29;
    v28(v47);
    v31 = v44;
    (v28)(v30 + *(v44 + 48), v24, v11);
    v40[1] = v25;
    v32 = v46;
    sub_1BD0DE19C(v30, v46, &unk_1EBD38810, &unk_1BE0B6F60);
    v33 = *(v31 + 48);
    v34 = v42;
    v35 = *(v27 + 32);
    v35(v42, v32, v11);
    v36 = *(v27 + 8);
    v36(v32 + v33, v11);
    sub_1BD0DE204(v30, v32, &unk_1EBD38810, &unk_1BE0B6F60);
    v35(&v34[*(v45 + 36)], v32 + *(v31 + 48), v11);
    v37 = v34;
    v36(v32, v11);
    v38 = v43;
    sub_1BE04AEF4();
    if (sub_1BE052314())
    {
      v39 = sub_1BE0522F4();
    }

    else
    {
      v39 = 0;
    }

    v36(v38, v11);
    sub_1BD0DE53C(v37, &qword_1EBD38DB8, &unk_1BE0BD340);
    v36(v48, v11);
    v36(v41, v11);
    return v39 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1BD57A1B8()
{
  if (sub_1BD579C04())
  {
    v1 = *(v0 + 72);
    if (v1 != 1)
    {
      v2 = *(v0 + 64);
      v4 = *(v0 + 80);
      v3 = *(v0 + 88);
      v6 = *(v0 + 96);
      v5 = *(v0 + 104);
      v7 = *(v0 + 112);
      sub_1BE048C84();
      sub_1BE048C84();
      sub_1BE048C84();
      if (PKOslo2024UIUpdatesEnabled())
      {
        if (v1 || (v7 & 1) != 0)
        {
          goto LABEL_13;
        }
      }

      else if ((v7 & 1) != 0 || v3)
      {
        goto LABEL_13;
      }

      sub_1BD38BF48(v2, v1, v4, v3, v6, v5, v7, v14);
    }
  }

  v1 = *(v0 + 16);
  if (v1 == 1)
  {
    return 0;
  }

  v5 = *(v0 + 48);
  v3 = *(v0 + 32);
  LOBYTE(v7) = *(v0 + 56);
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();
LABEL_13:
  if (*v0 == 1 && (v7 & 1) == 0)
  {
    v30 = PKOslo2024UIUpdatesEnabled();
    v1, v31, v32, v33, v34, v35, v36, v37;
    v3, v38, v39, v40, v41, v42, v43, v44;
    v5, v45, v46, v47, v48, v49, v50, v51;
    if (v30)
    {
      return v1 != 0;
    }

    else
    {
      return v3 != 0;
    }
  }

  else
  {
    v1, v8, v9, v10, v11, v12, v13, v14;
    v3, v16, v17, v18, v19, v20, v21, v22;
    v5, v23, v24, v25, v26, v27, v28, v29;
    return 0;
  }
}

uint64_t sub_1BD57A304(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_24;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_1BE053B84();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v3)
  {
    goto LABEL_24;
  }

  v9 = *(a1 + 24);
  v10 = *(a2 + 24);
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_24;
    }

    if (*(a1 + 16) != *(a2 + 16) || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_1BE053B84();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v10)
  {
    goto LABEL_24;
  }

  v15 = *(a1 + 40);
  v16 = *(a2 + 40);
  if (v15)
  {
    if (v16)
    {
      if (*(a1 + 32) == *(a2 + 32) && v15 == v16)
      {
        goto LABEL_22;
      }

      v17 = a1;
      v18 = a2;
      v19 = sub_1BE053B84();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if (v20)
      {
        goto LABEL_22;
      }
    }

LABEL_24:
    v21 = 0;
    return v21 & 1;
  }

  if (v16)
  {
    goto LABEL_24;
  }

LABEL_22:
  v21 = *(a1 + 48) ^ *(a2 + 48) ^ 1;
  return v21 & 1;
}

BOOL sub_1BD57A43C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v104 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A750, &unk_1BE0D3540);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  if (*a1 != *a2)
  {
    return 0;
  }

  v117 = v7;
  v118 = v13;
  v119 = v5;
  v120 = &v104 - v17;
  v116 = v10;
  v121 = v4;
  v19 = *(a1 + 1);
  v20 = *(a1 + 2);
  v21 = *(a1 + 3);
  v22 = *(a1 + 4);
  v23 = *(a1 + 5);
  v24 = *(a1 + 6);
  v25 = a1[56];
  v26 = *(a2 + 1);
  v27 = *(a2 + 2);
  v28 = *(a2 + 3);
  v29 = *(a2 + 4);
  v31 = *(a2 + 5);
  v30 = *(a2 + 6);
  v32 = a2[56];
  if (v20 == 1)
  {
    if (v27 == 1)
    {
      v110 = v18;
      v111 = v16;
      v33 = v19;
      v34 = v21;
      v114 = v22;
      v115 = v23;
      v122 = v24;
      LODWORD(v123) = v25;
      LODWORD(v113) = v32;
      sub_1BD57AD88(v19, 1, v21, v22, v23, v24);
      sub_1BD57AD88(v26, 1, v28, v29, v31, v30);
      sub_1BD38BF48(v33, 1, v34, v114, v115, v122, v123, v35);
      goto LABEL_8;
    }

LABEL_6:
    v124 = *(a1 + 1);
    v125 = v20;
    v126 = v21;
    v127 = v22;
    v128 = v23;
    v129 = v24;
    v130 = v25;
    v131 = v26;
    v132 = v27;
    v133 = v28;
    v134 = v29;
    v135 = v31;
    v136 = v30;
    v137 = v32;
    sub_1BD57AD88(v19, v20, v21, v22, v23, v24);
    v36 = v26;
    v37 = v27;
    v38 = v28;
    v39 = v29;
    v40 = v31;
    v41 = v30;
LABEL_13:
    sub_1BD57AD88(v36, v37, v38, v39, v40, v41);
    v66 = &unk_1EBD4B130;
    v67 = &unk_1BE0E28D0;
    v68 = &v124;
LABEL_14:
    sub_1BD0DE53C(v68, v66, v67);
    return 0;
  }

  if (v27 == 1)
  {
    goto LABEL_6;
  }

  v110 = v18;
  v111 = v16;
  v142[0] = v26;
  v142[1] = v27;
  v142[2] = v28;
  v142[3] = v29;
  v142[4] = v31;
  v142[5] = v30;
  v143 = v32 & 1;
  v140[0] = v19;
  v140[1] = v20;
  v140[2] = v21;
  v140[3] = v22;
  v140[4] = v23;
  v140[5] = v24;
  v141 = v25 & 1;
  v112 = v19;
  LODWORD(v123) = v25;
  v122 = v24;
  v105 = v31;
  v106 = v30;
  v42 = v23;
  v114 = v22;
  v115 = v23;
  v43 = v22;
  v107 = v21;
  v108 = a2;
  v44 = v21;
  LODWORD(v113) = v32;
  v109 = sub_1BD57A304(v140, v142);
  sub_1BD57AD88(v112, v20, v44, v43, v42, v122);
  v46 = v105;
  v45 = v106;
  v47 = v113;
  sub_1BD57AD88(v26, v27, v28, v29, v105, v106);
  sub_1BD38BF48(v26, v27, v28, v29, v46, v45, v47, v48);
  a2 = v108;
  sub_1BD38BF48(v112, v20, v107, v114, v115, v122, v123, v49);
  if ((v109 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v50 = *(a1 + 8);
  v51 = *(a1 + 9);
  v52 = *(a1 + 10);
  v53 = *(a1 + 11);
  v54 = *(a1 + 12);
  v55 = *(a1 + 13);
  v56 = a1[112];
  v58 = *(a2 + 8);
  v57 = *(a2 + 9);
  v59 = *(a2 + 10);
  v60 = *(a2 + 11);
  v62 = *(a2 + 12);
  v61 = *(a2 + 13);
  v63 = a2[112];
  if (v51 == 1)
  {
    if (v57 == 1)
    {
      v64 = *(a1 + 8);
      v114 = *(a1 + 10);
      v115 = v53;
      v113 = v54;
      v122 = v55;
      LODWORD(v123) = v56;
      sub_1BD57AD88(v50, 1, v52, v53, v54, v55);
      sub_1BD57AD88(v58, 1, v59, v60, v62, v61);
      sub_1BD38BF48(v64, 1, v114, v115, v113, v122, v123, v65);
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  if (v57 == 1)
  {
LABEL_12:
    v124 = *(a1 + 8);
    v125 = v51;
    v126 = v52;
    v127 = v53;
    v128 = v54;
    v129 = v55;
    v130 = v56;
    v131 = v58;
    v132 = v57;
    v133 = v59;
    v134 = v60;
    v135 = v62;
    v136 = v61;
    v137 = v63;
    sub_1BD57AD88(v50, v51, v52, v53, v54, v55);
    v36 = v58;
    v37 = v57;
    v38 = v59;
    v39 = v60;
    v40 = v62;
    v41 = v61;
    goto LABEL_13;
  }

  v124 = *(a2 + 8);
  v125 = v57;
  v126 = v59;
  v127 = v60;
  v128 = v62;
  v129 = v61;
  v130 = v63 & 1;
  v138[0] = v50;
  v138[1] = v51;
  v138[2] = v52;
  v138[3] = v53;
  v138[4] = v54;
  v138[5] = v55;
  v139 = v56 & 1;
  v107 = v62;
  v108 = v50;
  v70 = v50;
  v112 = v51;
  v113 = v54;
  LODWORD(v123) = v56;
  v122 = v55;
  LODWORD(v106) = v63;
  v71 = v54;
  v104 = v60;
  v105 = v61;
  v72 = v53;
  v114 = v52;
  v115 = v53;
  v73 = v52;
  v109 = sub_1BD57A304(v138, &v124);
  sub_1BD57AD88(v70, v112, v73, v72, v71, v122);
  v74 = v104;
  v75 = v105;
  v76 = v107;
  v77 = v106;
  sub_1BD57AD88(v58, v57, v59, v104, v107, v105);
  sub_1BD38BF48(v58, v57, v59, v74, v76, v75, v77, v78);
  sub_1BD38BF48(v108, v112, v114, v115, v113, v122, v123, v79);
  if ((v109 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v80 = type metadata accessor for PassEligibleRewardsInfo(0);
  v81 = v80[7];
  v82 = *(v111 + 48);
  v83 = v120;
  sub_1BD0DE19C(&a1[v81], v120, &unk_1EBD39970, &unk_1BE0B9F80);
  sub_1BD0DE19C(&a2[v81], v83 + v82, &unk_1EBD39970, &unk_1BE0B9F80);
  v84 = v119;
  v85 = *(v119 + 48);
  v86 = v121;
  if ((v85)(v83, 1, v121) == 1)
  {
    if ((v85)(v83 + v82, 1, v86) == 1)
    {
      v122 = v85;
      sub_1BD0DE53C(v83, &unk_1EBD39970, &unk_1BE0B9F80);
      goto LABEL_23;
    }

LABEL_28:
    v66 = &qword_1EBD3A750;
    v67 = &unk_1BE0D3540;
    v68 = v83;
    goto LABEL_14;
  }

  v123 = v80;
  v87 = v118;
  sub_1BD0DE19C(v83, v118, &unk_1EBD39970, &unk_1BE0B9F80);
  if ((v85)(v83 + v82, 1, v86) == 1)
  {
    (*(v84 + 8))(v87, v86);
    goto LABEL_28;
  }

  v122 = v85;
  v88 = v83 + v82;
  v89 = v117;
  (*(v84 + 32))(v117, v88, v86);
  sub_1BD57ADDC(&qword_1EBD3E460, MEMORY[0x1E6969550]);
  v90 = sub_1BE052334();
  v91 = *(v84 + 8);
  v91(v89, v86);
  v91(v87, v86);
  sub_1BD0DE53C(v120, &unk_1EBD39970, &unk_1BE0B9F80);
  v80 = v123;
  if ((v90 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v92 = v80[8];
  v83 = v110;
  v93 = *(v111 + 48);
  sub_1BD0DE19C(&a1[v92], v110, &unk_1EBD39970, &unk_1BE0B9F80);
  v94 = &a2[v92];
  v95 = v121;
  sub_1BD0DE19C(v94, v83 + v93, &unk_1EBD39970, &unk_1BE0B9F80);
  v96 = v122;
  if ((v122)(v83, 1, v95) != 1)
  {
    v97 = v116;
    sub_1BD0DE19C(v83, v116, &unk_1EBD39970, &unk_1BE0B9F80);
    if (v96(v83 + v93, 1, v95) == 1)
    {
      (*(v119 + 8))(v97, v95);
      goto LABEL_28;
    }

    v98 = v119;
    v99 = *(v119 + 32);
    v123 = v80;
    v100 = v117;
    v99(v117, v83 + v93, v95);
    sub_1BD57ADDC(&qword_1EBD3E460, MEMORY[0x1E6969550]);
    v101 = sub_1BE052334();
    v102 = *(v98 + 8);
    v103 = v100;
    v80 = v123;
    v102(v103, v95);
    v102(v97, v95);
    sub_1BD0DE53C(v83, &unk_1EBD39970, &unk_1BE0B9F80);
    if (v101)
    {
      return *&a1[v80[9]] == *&a2[v80[9]];
    }

    return 0;
  }

  if (v96(v83 + v93, 1, v95) != 1)
  {
    goto LABEL_28;
  }

  sub_1BD0DE53C(v83, &unk_1EBD39970, &unk_1BE0B9F80);
  return *&a1[v80[9]] == *&a2[v80[9]];
}

void sub_1BD57AD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
    sub_1BE048C84();
    sub_1BE048C84();

    sub_1BE048C84();
  }
}

uint64_t sub_1BD57ADDC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1BE04AF64();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BD57AE20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PassEligibleRewardsInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1BD57AE84()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - v6;
  v8 = *MEMORY[0x1E69B80B0];
  v9 = *(v1 + 104);
  v9(&v24 - v6, v8, v0, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v11 = result;
    v12 = sub_1BE04B6F4();
    v14 = v13;

    v15 = *(v1 + 8);
    v15(v7, v0);
    if (!PKOslo2024UIUpdatesEnabled())
    {
      return v12;
    }

    v14, v16, v17, v18, v19, v20, v21, v22;
    (v9)(v3, v8, v0);
    result = PKPassKitBundle();
    if (result)
    {
      v23 = result;
      v12 = sub_1BE04B6F4();

      v15(v3, v0);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD57B078(uint64_t *a1@<X8>)
{
  v74 = a1;
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v72 - v6;
  v72 = sub_1BD57AE84();
  v73 = v8;
  v9 = *MEMORY[0x1E69B80B0];
  v10 = *(v2 + 104);
  v10(v7, v9, v1);
  v11 = PKPassKitBundle();
  if (!v11)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v12 = v11;
  v75 = sub_1BE04B6F4();
  v14 = v13;

  v15 = *(v2 + 8);
  v15(v7, v1);
  if (PKOslo2024UIUpdatesEnabled())
  {
    v14, v16, v17, v18, v19, v20, v21, v22;
    v75 = 0;
    v14 = 0;
  }

  v10(v4, v9, v1);
  v23 = PKPassKitBundle();
  if (!v23)
  {
    goto LABEL_19;
  }

  v24 = v23;
  sub_1BE04B6F4();
  v26 = v25;

  v15(v4, v1);
  if (PKOslo2024UIUpdatesEnabled())
  {
    v26, v27, v28, v29, v30, v31, v32, v33;
    sub_1BD57AE84();
    v26 = v34;
  }

  v35 = v75;
  v36 = v73;
  v37 = sub_1BE052404();
  v36, v38, v39, v40, v41, v42, v43, v44;
  v45 = [v37 pk_stringIfNotEmpty];

  if (v45)
  {
    v46 = sub_1BE052434();
    v48 = v47;

    if (!v14)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v46 = 0;
    v48 = 0;
    if (!v14)
    {
      goto LABEL_14;
    }
  }

  v49 = sub_1BE052404();
  v14, v50, v51, v52, v53, v54, v55, v56;
  v57 = [v49 pk_stringIfNotEmpty];

  if (v57)
  {
    v35 = sub_1BE052434();
    v14 = v58;
  }

  else
  {
    v35 = 0;
    v14 = 0;
  }

LABEL_14:
  v59 = sub_1BE052404();
  v26, v60, v61, v62, v63, v64, v65, v66;
  v67 = [v59 pk_stringIfNotEmpty];

  if (v67)
  {
    v68 = sub_1BE052434();
    v70 = v69;
  }

  else
  {
    sub_1BE048C84();
    v68 = v35;
    v70 = v14;
  }

  v71 = v74;
  *v74 = v46;
  v71[1] = v48;
  v71[2] = v35;
  v71[3] = v14;
  v71[4] = v68;
  v71[5] = v70;
  *(v71 + 48) = 0;
}

uint64_t sub_1BD57B474(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790, &qword_1BE0D6710);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17[-v5];
  sub_1BD0DE19C(a1, &v17[-v5], &qword_1EBD3F790, &qword_1BE0D6710);
  v7 = *a2;
  KeyPath = swift_getKeyPath();
  v18 = v7;
  v19 = v6;
  v20 = v7;
  sub_1BD581934(&qword_1EBD49CC8, _s9ViewModelCMa_2, &unk_1BE0E2948);
  sub_1BE04B584();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  return sub_1BD0DE53C(v6, &qword_1EBD3F790, &qword_1BE0D6710);
}

uint64_t sub_1BD57B5E8@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  KeyPath = swift_getKeyPath();
  v20 = v5;
  sub_1BD581934(&qword_1EBD49CC8, _s9ViewModelCMa_2, &unk_1BE0E2948);
  sub_1BE04B594();
  KeyPath, v11, v12, v13, v14, v15, v16, v17;
  v18 = *a2;
  swift_beginAccess();
  return sub_1BD0DE19C(v20 + v18, a5, a3, a4);
}

uint64_t sub_1BD57B6C8@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD581934(&qword_1EBD49CC8, _s9ViewModelCMa_2, &unk_1BE0E2948);
  sub_1BE04B594();
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v19 = *a3;
  swift_beginAccess();
  return sub_1BD0DE19C(v10 + v19, a6, a4, a5);
}

uint64_t sub_1BD57B7AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788, &unk_1BE0E2970);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1BD0DE19C(a1, &v6 - v3, &qword_1EBD3F788, &unk_1BE0E2970);
  return sub_1BD57B858(v4);
}

uint64_t sub_1BD57B858(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788, &unk_1BE0E2970);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__historyToken;
  swift_beginAccess();
  sub_1BD0DE19C(v1 + v6, v5, &qword_1EBD3F788, &unk_1BE0E2970);
  v7 = sub_1BD580FA8(v5, a1);
  sub_1BD0DE53C(v5, &qword_1EBD3F788, &unk_1BE0E2970);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v17[-2] = v1;
    v17[-1] = a1;
    v17[2] = v1;
    sub_1BD581934(&qword_1EBD49CC8, _s9ViewModelCMa_2, &unk_1BE0E2948);
    sub_1BE04B584();
    KeyPath, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    sub_1BD0DE19C(a1, v5, &qword_1EBD3F788, &unk_1BE0E2970);
    swift_beginAccess();
    sub_1BD273C60(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_1BD0DE53C(a1, &qword_1EBD3F788, &unk_1BE0E2970);
}

uint64_t sub_1BD57BA60()
{
  KeyPath = swift_getKeyPath();
  sub_1BD581934(&qword_1EBD49CC8, _s9ViewModelCMa_2, &unk_1BE0E2948);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return *(v0 + OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__isLoading);
}

void sub_1BD57BB08(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD581934(&qword_1EBD49CC8, _s9ViewModelCMa_2, &unk_1BE0E2948);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__isLoading);
}

void sub_1BD57BBB8(char a1)
{
  if (*(v1 + OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__isLoading) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__isLoading) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD581934(&qword_1EBD49CC8, _s9ViewModelCMa_2, &unk_1BE0E2948);
    sub_1BE04B584();
    KeyPath, v3, v4, v5, v6, v7, v8, v9;
  }
}

uint64_t sub_1BD57BCD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = a2;
  v32 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788, &unk_1BE0E2970);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v30 = &v29 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790, &qword_1BE0D6710);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - v7;
  v9 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__brandViewDetails;
  v10 = _s22MerchantBrandViewModelVMa(0);
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__transactionContext;
  v12 = type metadata accessor for TransactionContext(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v3 + v11, 1, 1, v12);
  v14 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__historyToken;
  v15 = sub_1BE048F54();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v17(v3 + v14, 1, 1, v15);
  *(v3 + OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__isLoading) = 0;
  sub_1BE04B5C4();
  sub_1BD583204(v32, v8, type metadata accessor for TransactionContext);
  v13(v8, 0, 1, v12);
  KeyPath = swift_getKeyPath();
  v33 = v3;
  v34 = v8;
  v35 = v3;
  sub_1BD581934(&qword_1EBD49CC8, _s9ViewModelCMa_2, &unk_1BE0E2948);
  sub_1BE04B584();
  KeyPath, v19, v20, v21, v22, v23, v24, v25;
  sub_1BD0DE53C(v8, &qword_1EBD3F790, &qword_1BE0D6710);
  v26 = v30;
  v27 = v31;
  (*(v16 + 16))(v30, v31, v15);
  v17(v26, 0, 1, v15);
  sub_1BD57B858(v26);
  (*(v16 + 8))(v27, v15);
  sub_1BD5832D4(v32, type metadata accessor for TransactionContext);
  return v3;
}

uint64_t sub_1BD57C030()
{
  v1[20] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F780, &unk_1BE0DFFD0);
  v1[21] = swift_task_alloc();
  v2 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel(0);
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  v3 = sub_1BE04AFE4();
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();
  v4 = type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel(0);
  v1[28] = v4;
  v1[29] = *(v4 - 8);
  v1[30] = swift_task_alloc();
  v5 = type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0);
  v1[31] = v5;
  v1[32] = *(v5 - 8);
  v1[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0, &unk_1BE0D6570);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  type metadata accessor for FinanceKitSelectedTransactionView.ViewModel(0);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v6 = sub_1BE049A94();
  v1[38] = v6;
  v1[39] = *(v6 - 8);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790, &qword_1BE0D6710);
  v1[42] = swift_task_alloc();
  v7 = type metadata accessor for TransactionContext(0);
  v1[43] = v7;
  v1[44] = *(v7 - 8);
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CB8, &qword_1BE0DFF20);
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788, &unk_1BE0E2970);
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v8 = sub_1BE048F54();
  v1[52] = v8;
  v1[53] = *(v8 - 8);
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  sub_1BE0528A4();
  v1[56] = sub_1BE052894();
  v10 = sub_1BE052844();
  v1[57] = v10;
  v1[58] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD57C4F0, v10, v9);
}

uint64_t sub_1BD57C4F0()
{
  v1 = *(v0 + 160);
  KeyPath = swift_getKeyPath();
  *(v0 + 64) = v1;
  *(v0 + 472) = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel___observationRegistrar;
  *(v0 + 480) = sub_1BD581934(&qword_1EBD49CC8, _s9ViewModelCMa_2, &unk_1BE0E2948);
  sub_1BE04B594();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v17 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__isLoading;
  *(v0 + 488) = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__isLoading;
  if (*(v1 + v17))
  {
    *(v0 + 448), v10, v11, v12, v13, v14, v15, v16;
    goto LABEL_5;
  }

  v18 = *(v0 + 424);
  v85 = *(v0 + 408);
  v86 = *(v0 + 416);
  v19 = *(v0 + 160);
  v20 = swift_getKeyPath();
  *(v0 + 72) = v19;
  sub_1BE04B594();
  v20, v21, v22, v23, v24, v25, v26, v27;
  v28 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__historyToken;
  swift_beginAccess();
  sub_1BD0DE19C(v19 + v28, v85, &qword_1EBD3F788, &unk_1BE0E2970);
  if ((*(v18 + 48))(v85, 1, v86) == 1)
  {
    v36 = *(v0 + 408);
    *(v0 + 448), v29, v30, v31, v32, v33, v34, v35;
    sub_1BD0DE53C(v36, &qword_1EBD3F788, &unk_1BE0E2970);
    goto LABEL_5;
  }

  (*(*(v0 + 424) + 32))(*(v0 + 440), *(v0 + 408), *(v0 + 416));
  if (*(v1 + v17) == 1)
  {
    *(v1 + v17) = 1;
  }

  else
  {
    v39 = *(v0 + 160);
    v40 = swift_getKeyPath();
    v41 = swift_task_alloc();
    *(v41 + 16) = v39;
    *(v41 + 24) = 1;
    *(v0 + 80) = v39;
    sub_1BE04B584();
    v40, v42, v43, v44, v45, v46, v47, v48;
  }

  v49 = *(v0 + 392);
  v50 = *(v0 + 160);
  v51 = swift_getKeyPath();
  *(v0 + 88) = v50;
  sub_1BE04B594();
  v51, v52, v53, v54, v55, v56, v57, v58;
  v59 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__brandViewDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v50 + v59, v49, &qword_1EBD49CB8, &qword_1BE0DFF20);
  v60 = _s22MerchantBrandViewModelVMa(0);
  *(v0 + 496) = v60;
  v61 = *(v60 - 8);
  *(v0 + 504) = v61;
  if ((*(v61 + 48))(v49, 1, v60) != 1)
  {
    v71 = *(v0 + 392);
    *(v0 + 448), v62, v63, v64, v65, v66, v67, v68;
    sub_1BD0DE53C(v71, &qword_1EBD49CB8, &qword_1BE0DFF20);
    v72 = *(v0 + 488);
    v73 = *(v0 + 160);
    if (*(v73 + v72))
    {
      v87 = *(v0 + 440);
      v75 = *(v0 + 416);
      v74 = *(v0 + 424);
      v76 = swift_getKeyPath();
      v77 = swift_task_alloc();
      *(v77 + 16) = v73;
      *(v77 + 24) = 0;
      *(v0 + 104) = v73;
      sub_1BE04B584();
      v76, v78, v79, v80, v81, v82, v83, v84;
      (*(v74 + 8))(v87, v75);
    }

    else
    {
      (*(*(v0 + 424) + 8))(*(v0 + 440), *(v0 + 416));
      *(v73 + v72) = 0;
    }

LABEL_5:

    v37 = *(v0 + 8);

    return v37();
  }

  sub_1BD0DE53C(*(v0 + 392), &qword_1EBD49CB8, &qword_1BE0DFF20);
  v69 = swift_task_alloc();
  *(v0 + 512) = v69;
  *v69 = v0;
  v69[1] = sub_1BD57CAE4;
  v70 = *(v0 + 336);

  return sub_1BD57EFA0(v70);
}

uint64_t sub_1BD57CAE4()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  v3 = *(v2 + 464);
  v4 = *(v2 + 456);
  if (v0)
  {
    v5 = sub_1BD57E504;
  }

  else
  {
    v5 = sub_1BD57CC20;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD57CC20()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 336);
  if ((*(*(v0 + 352) + 48))(v2, 1, v1) == 1)
  {
    *(v0 + 448), v3, v4, v5, v6, v7, v8, v9;
    sub_1BD0DE53C(v2, &qword_1EBD3F790, &qword_1BE0D6710);
    v10 = *(v0 + 488);
    v11 = *(v0 + 160);
    if (*(v11 + v10))
    {
      v12 = *(v0 + 440);
      v13 = *(v0 + 416);
      v14 = *(v0 + 424);
      KeyPath = swift_getKeyPath();
      v16 = swift_task_alloc();
      *(v16 + 16) = v11;
      *(v16 + 24) = 0;
      *(v0 + 104) = v11;
      sub_1BE04B584();
      KeyPath, v17, v18, v19, v20, v21, v22, v23;
      (*(v14 + 8))(v12, v13);
    }

    else
    {
      (*(*(v0 + 424) + 8))(*(v0 + 440), *(v0 + 416));
      *(v11 + v10) = 0;
    }

    goto LABEL_12;
  }

  v24 = *(v0 + 432);
  v25 = *(v0 + 424);
  v70 = *(v0 + 416);
  v71 = *(v0 + 440);
  v27 = *(v0 + 360);
  v26 = *(v0 + 368);
  v28 = *(v0 + 328);
  v30 = *(v0 + 304);
  v29 = *(v0 + 312);
  v69 = *(v0 + 296);
  v72 = *(v0 + 280);
  v73 = *(v0 + 520);
  sub_1BD58326C(v2, v26, type metadata accessor for TransactionContext);
  v31 = *(v29 + 16);
  *(v0 + 528) = v31;
  *(v0 + 536) = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v31(v28, v26, v30);
  sub_1BD583204(v26, v27, type metadata accessor for TransactionContext);
  v32 = *(v25 + 16);
  *(v0 + 544) = v32;
  *(v0 + 552) = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v32(v24, v71, v70);
  sub_1BD60709C(v27, v24, v69);
  sub_1BD0DE19C(v26 + *(v1 + 28), v72, &qword_1EBD3F7C0, &unk_1BE0D6570);
  *(v0 + 560) = sub_1BD5812C8(v28, v72);
  *(v0 + 568) = v73;
  if (v73)
  {
    v40 = *(v0 + 488);
    v41 = *(v0 + 368);
    v42 = *(v0 + 328);
    v43 = *(v0 + 304);
    v44 = *(v0 + 312);
    v45 = *(v0 + 296);
    v46 = *(v0 + 280);
    v47 = *(v0 + 160);
    *(v0 + 448), v33, v34, v35, v36, v37, v38, v39;
    sub_1BD0DE53C(v46, &qword_1EBD3F7C0, &unk_1BE0D6570);
    sub_1BD5832D4(v45, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
    (*(v44 + 8))(v42, v43);
    sub_1BD5832D4(v41, type metadata accessor for TransactionContext);
    if (*(v47 + v40))
    {
      v48 = *(v0 + 440);
      v49 = *(v0 + 416);
      v50 = *(v0 + 424);
      v51 = *(v0 + 160);
      v52 = swift_getKeyPath();
      v53 = swift_task_alloc();
      *(v53 + 16) = v51;
      *(v53 + 24) = 0;
      *(v0 + 112) = v51;
      sub_1BE04B584();
      v52, v54, v55, v56, v57, v58, v59, v60;
      (*(v50 + 8))(v48, v49);
    }

    else
    {
      v66 = *(v0 + 488);
      v67 = *(v0 + 160);
      (*(*(v0 + 424) + 8))(*(v0 + 440), *(v0 + 416));
      *(v67 + v66) = 0;
    }

LABEL_12:

    v68 = *(v0 + 8);

    return v68();
  }

  v61 = swift_task_alloc();
  *(v0 + 576) = v61;
  *v61 = v0;
  v61[1] = sub_1BD57D2A0;
  v62 = *(v0 + 328);
  v63 = *(v0 + 280);
  v64 = *(v0 + 264);

  return sub_1BD4E0F68(v64, v62, v63);
}

uint64_t sub_1BD57D2A0()
{
  v1 = *v0;

  v2 = *(v1 + 464);
  v3 = *(v1 + 456);

  return MEMORY[0x1EEE6DFA0](sub_1BD57D3C0, v3, v2);
}

uint64_t sub_1BD57D3C0()
{
  v1 = v0[62];
  v2 = v0[63];
  v3 = v0[48];
  v4 = v0[37];
  v5 = v0[34];
  v6 = v0[32];
  v7 = v0[30];
  v34 = v0[31];
  v32 = v0[33];
  v33 = v7;
  v8 = v0[29];
  v35 = v0[28];
  v36 = v0[70];
  v9 = v0[23];
  v31 = v0[22];
  v37 = v0[20];
  sub_1BD0DE19C(v0[35], v5, &qword_1EBD3F7C0, &unk_1BE0D6570);
  sub_1BD51FF8C(v5, v7);
  sub_1BD583204(v4, &v3[v1[5]], type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  v10 = v1[6];
  v11 = *(v9 + 56);
  v0[73] = v11;
  v0[74] = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(&v3[v10], 1, 1, v31);
  v12 = v1[8];
  sub_1BD583204(v32, &v3[v12], type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  v13 = *(v6 + 56);
  v0[75] = v13;
  v0[76] = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v13(&v3[v12], 0, 1, v34);
  v14 = v1[9];
  sub_1BD583204(v33, &v3[v14], type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  v15 = *(v8 + 56);
  v0[77] = v15;
  v0[78] = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v15(&v3[v14], 0, 1, v35);
  *v3 = v36;
  v16 = &v3[v1[7]];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v17 = *(v2 + 56);
  v0[79] = v17;
  v0[80] = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v17(v3, 0, 1, v1);
  KeyPath = swift_getKeyPath();
  v19 = swift_task_alloc();
  *(v19 + 16) = v37;
  *(v19 + 24) = v3;
  v0[15] = v37;
  v20 = v36;
  sub_1BE04B584();
  KeyPath, v21, v22, v23, v24, v25, v26, v27;

  sub_1BD0DE53C(v3, &qword_1EBD49CB8, &qword_1BE0DFF20);
  v28 = swift_task_alloc();
  v0[81] = v28;
  *v28 = v0;
  v28[1] = sub_1BD57D6C4;
  v29 = v0[41];

  return sub_1BD581B04(v29);
}

uint64_t sub_1BD57D6C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 656) = a1;
  *(v4 + 664) = v1;

  v5 = *(v3 + 464);
  v6 = *(v3 + 456);
  if (v1)
  {
    v7 = sub_1BD57DA00;
  }

  else
  {
    v7 = sub_1BD57D80C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1BD57D80C()
{
  v1 = *(v0 + 656);
  sub_1BE0490F4();
  *(v0 + 672) = sub_1BE0490B4();
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = *(v0 + 656);
    v5 = *(v0 + 312);
    v6 = *(v0 + 208);
    v18 = MEMORY[0x1E69E7CC0];
    sub_1BD531F28(0, v2, 0);
    v3 = v18;
    v7 = v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v17 = *(v5 + 72);
    v8 = (v5 + 8);
    do
    {
      v9 = *(v0 + 320);
      v10 = *(v0 + 304);
      (*(v0 + 528))(v9, v7, v10);
      sub_1BE049A14();
      (*v8)(v9, v10);
      v12 = *(v18 + 16);
      v11 = *(v18 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1BD531F28((v11 > 1), v12 + 1, 1);
      }

      v13 = *(v0 + 216);
      v14 = *(v0 + 200);
      *(v18 + 16) = v12 + 1;
      (*(v6 + 32))(v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12, v13, v14);
      v7 += v17;
      --v2;
    }

    while (v2);
  }

  *(v0 + 680) = v3;
  v15 = swift_task_alloc();
  *(v0 + 688) = v15;
  *v15 = v0;
  v15[1] = sub_1BD57DD24;

  return MEMORY[0x1EEDC1510](v3);
}

uint64_t sub_1BD57DA00(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 560);
  v35 = *(v8 + 368);
  v36 = *(v8 + 488);
  v10 = *(v8 + 328);
  v11 = *(v8 + 304);
  v12 = *(v8 + 312);
  v13 = *(v8 + 296);
  v14 = *(v8 + 280);
  v15 = *(v8 + 264);
  v16 = *(v8 + 240);
  v17 = *(v8 + 160);
  *(v8 + 448), a2, a3, a4, a5, a6, a7, a8;

  sub_1BD5832D4(v16, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  sub_1BD5832D4(v15, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  sub_1BD0DE53C(v14, &qword_1EBD3F7C0, &unk_1BE0D6570);
  sub_1BD5832D4(v13, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  (*(v12 + 8))(v10, v11);
  sub_1BD5832D4(v35, type metadata accessor for TransactionContext);
  if (*(v17 + v36) == 1)
  {
    v18 = *(v8 + 440);
    v19 = *(v8 + 416);
    v20 = *(v8 + 424);
    v21 = *(v8 + 160);
    KeyPath = swift_getKeyPath();
    v23 = swift_task_alloc();
    *(v23 + 16) = v21;
    *(v23 + 24) = 0;
    *(v8 + 128) = v21;
    sub_1BE04B584();
    KeyPath, v24, v25, v26, v27, v28, v29, v30;
    (*(v20 + 8))(v18, v19);
  }

  else
  {
    v31 = *(v8 + 488);
    v32 = *(v8 + 160);
    (*(*(v8 + 424) + 8))(*(v8 + 440), *(v8 + 416));
    *(v32 + v31) = 0;
  }

  v33 = *(v8 + 8);

  return v33();
}

uint64_t sub_1BD57DD24(uint64_t a1)
{
  v4 = *v2;
  v4[87] = v1;

  v12 = v4[85];
  v13 = v4[84];
  if (v1)
  {
    v14 = v4[82];
    v12, v5, v6, v7, v8, v9, v10, v11;
    v13, v15, v16, v17, v18, v19, v20, v21;
    v14, v22, v23, v24, v25, v26, v27, v28;
    v29 = v4[57];
    v30 = v4[58];
    v31 = sub_1BD57E75C;
  }

  else
  {
    v12, v5, v6, v7, v8, v9, v10, v11;
    v13, v32, v33, v34, v35, v36, v37, v38;
    v4[88] = a1;
    v29 = v4[57];
    v30 = v4[58];
    v31 = sub_1BD57DE9C;
  }

  return MEMORY[0x1EEE6DFA0](v31, v29, v30);
}

uint64_t sub_1BD57DE9C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 704);
  v10 = *(v8 + 656);
  v89 = *(v8 + 544);
  v11 = *(v8 + 440);
  v13 = *(v8 + 416);
  v12 = *(v8 + 424);
  v14 = *(v8 + 400);
  v15 = *(v8 + 368);
  v98 = *(v8 + 296);
  v94 = *(v8 + 328);
  v96 = *(v8 + 288);
  v92 = *(v8 + 192);
  *(v8 + 448), a2, a3, a4, a5, a6, a7, a8;
  v16 = swift_task_alloc();
  *(v16 + 16) = v9;
  *(v16 + 24) = v15;
  sub_1BDA3DA80(sub_1BD582380, v16, v10);
  v18 = v17;
  v9, v19, v20, v21, v22, v23, v24, v25;

  v89(v14, v11, v13);
  v26 = 1;
  (*(v12 + 56))(v14, 0, 1, v13);
  sub_1BD720F44(v18, v14, v92);
  sub_1BD5823A0(v10, v94);
  v86 = v28;
  v87 = v27;
  v84 = v30;
  v85 = v29;
  sub_1BD583204(v98, v96, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  v31 = v10[2];
  v10, v32, v33, v34, v35, v36, v37, v38;
  if (v31)
  {
    sub_1BD583204(*(v8 + 192), *(v8 + 168), type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
    v26 = 0;
  }

  v81 = *(v8 + 632);
  v79 = *(v8 + 616);
  v39 = *(v8 + 600);
  v78 = *(v8 + 560);
  v40 = *(v8 + 496);
  v99 = *(v8 + 488);
  v41 = *(v8 + 376);
  v95 = *(v8 + 328);
  v97 = *(v8 + 368);
  v91 = *(v8 + 312);
  v93 = *(v8 + 304);
  v77 = *(v8 + 288);
  v88 = *(v8 + 280);
  v90 = *(v8 + 296);
  v42 = *(v8 + 264);
  v82 = v42;
  v44 = *(v8 + 240);
  v43 = *(v8 + 248);
  v45 = *(v8 + 224);
  v83 = *(v8 + 192);
  v46 = *(v8 + 168);
  v80 = *(v8 + 160);
  (*(v8 + 584))(v46, v26, 1, *(v8 + 176));
  v47 = v40[8];
  sub_1BD583204(v42, &v41[v47], type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  v39(&v41[v47], 0, 1, v43);
  v48 = v40[9];
  sub_1BD583204(v44, &v41[v48], type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  v79(&v41[v48], 0, 1, v45);
  *v41 = v78;
  sub_1BD58326C(v77, &v41[v40[5]], type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  sub_1BD0DE204(v46, &v41[v40[6]], &qword_1EBD3F780, &unk_1BE0DFFD0);
  v49 = &v41[v40[7]];
  *v49 = v87;
  *(v49 + 1) = v86;
  *(v49 + 2) = v85;
  *(v49 + 3) = v84;
  v81(v41, 0, 1, v40);
  KeyPath = swift_getKeyPath();
  v51 = swift_task_alloc();
  *(v51 + 16) = v80;
  *(v51 + 24) = v41;
  *(v8 + 144) = v80;
  v52 = v78;
  sub_1BE04B584();
  KeyPath, v53, v54, v55, v56, v57, v58, v59;

  sub_1BD5832D4(v83, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
  sub_1BD5832D4(v44, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  sub_1BD5832D4(v82, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  sub_1BD0DE53C(v88, &qword_1EBD3F7C0, &unk_1BE0D6570);
  sub_1BD5832D4(v90, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  (*(v91 + 8))(v95, v93);

  sub_1BD0DE53C(v41, &qword_1EBD49CB8, &qword_1BE0DFF20);
  sub_1BD5832D4(v97, type metadata accessor for TransactionContext);
  if (*(v80 + v99) == 1)
  {
    v60 = *(v8 + 440);
    v61 = *(v8 + 416);
    v62 = *(v8 + 424);
    v63 = *(v8 + 160);
    v64 = swift_getKeyPath();
    v65 = swift_task_alloc();
    *(v65 + 16) = v63;
    *(v65 + 24) = 0;
    *(v8 + 152) = v63;
    sub_1BE04B584();
    v64, v66, v67, v68, v69, v70, v71, v72;
    (*(v62 + 8))(v60, v61);
  }

  else
  {
    v73 = *(v8 + 488);
    v74 = *(v8 + 160);
    (*(*(v8 + 424) + 8))(*(v8 + 440), *(v8 + 416));
    *(v74 + v73) = 0;
  }

  v75 = *(v8 + 8);

  return v75();
}

uint64_t sub_1BD57E504(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 488);
  v10 = *(v8 + 160);
  *(v8 + 448), a2, a3, a4, a5, a6, a7, a8;
  if (*(v10 + v9) == 1)
  {
    v11 = *(v8 + 440);
    v12 = *(v8 + 416);
    v13 = *(v8 + 424);
    v14 = *(v8 + 160);
    KeyPath = swift_getKeyPath();
    v16 = swift_task_alloc();
    *(v16 + 16) = v14;
    *(v16 + 24) = 0;
    *(v8 + 96) = v14;
    sub_1BE04B584();
    KeyPath, v17, v18, v19, v20, v21, v22, v23;
    (*(v13 + 8))(v11, v12);
  }

  else
  {
    v24 = *(v8 + 488);
    v25 = *(v8 + 160);
    (*(*(v8 + 424) + 8))(*(v8 + 440), *(v8 + 416));
    *(v25 + v24) = 0;
  }

  v26 = *(v8 + 8);

  return v26();
}

uint64_t sub_1BD57E75C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 560);
  v35 = *(v8 + 368);
  v36 = *(v8 + 488);
  v10 = *(v8 + 328);
  v11 = *(v8 + 304);
  v12 = *(v8 + 312);
  v13 = *(v8 + 296);
  v14 = *(v8 + 280);
  v15 = *(v8 + 264);
  v16 = *(v8 + 240);
  v17 = *(v8 + 160);
  *(v8 + 448), a2, a3, a4, a5, a6, a7, a8;

  sub_1BD5832D4(v16, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  sub_1BD5832D4(v15, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  sub_1BD0DE53C(v14, &qword_1EBD3F7C0, &unk_1BE0D6570);
  sub_1BD5832D4(v13, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  (*(v12 + 8))(v10, v11);
  sub_1BD5832D4(v35, type metadata accessor for TransactionContext);
  if (*(v17 + v36) == 1)
  {
    v18 = *(v8 + 440);
    v19 = *(v8 + 416);
    v20 = *(v8 + 424);
    v21 = *(v8 + 160);
    KeyPath = swift_getKeyPath();
    v23 = swift_task_alloc();
    *(v23 + 16) = v21;
    *(v23 + 24) = 0;
    *(v8 + 136) = v21;
    sub_1BE04B584();
    KeyPath, v24, v25, v26, v27, v28, v29, v30;
    (*(v20 + 8))(v18, v19);
  }

  else
  {
    v31 = *(v8 + 488);
    v32 = *(v8 + 160);
    (*(*(v8 + 424) + 8))(*(v8 + 440), *(v8 + 416));
    *(v32 + v31) = 0;
  }

  v33 = *(v8 + 8);

  return v33();
}

uint64_t sub_1BD57EA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a4;
  v50 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7B8, &unk_1BE0E29B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0, &unk_1BE0D6570);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = &v49 - v9;
  v51 = sub_1BE049184();
  v58 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v57 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1BE0495A4();
  v11 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1BE049A94();
  v13 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE04AFE4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE049A14();
  if (*(a2 + 16) && (v20 = sub_1BD14951C(v19), (v21 & 1) != 0))
  {
    v22 = *(*(a2 + 56) + 8 * v20);
    v23 = *(v17 + 8);
    sub_1BE048C84();
    v23(v19, v16);
  }

  else
  {
    (*(v17 + 8))(v19, v16);
    v22 = 0;
  }

  v24 = v49;
  (*(v13 + 16))(v15, a1, v49);
  v25 = type metadata accessor for TransactionContext(0);
  v26 = v50;
  (*(v11 + 16))(v55, v50 + v25[5], v56);
  v27 = v51;
  (*(v58 + 16))(v57, v26 + v25[6], v51);
  v29 = v52;
  v28 = v53;
  if (v22)
  {
    v30 = sub_1BE048C84();
    sub_1BD735DE0(v30, v29);
    v22, v31, v32, v33, v34, v35, v36, v37;
    sub_1BD735E14(v22, v28);
    v22, v38, v39, v40, v41, v42, v43, v44;
  }

  else
  {
    v45 = sub_1BE0491B4();
    (*(*(v45 - 8) + 56))(v29, 1, 1, v45);
    v46 = sub_1BE049E04();
    (*(*(v46 - 8) + 56))(v28, 1, 1, v46);
  }

  v47 = v54;
  (*(v13 + 32))(v54, v15, v24);
  (*(v11 + 32))(v47 + v25[5], v55, v56);
  (*(v58 + 32))(v47 + v25[6], v57, v27);
  sub_1BD0DE204(v29, v47 + v25[7], &qword_1EBD3F7C0, &unk_1BE0D6570);
  return sub_1BD0DE204(v28, v47 + v25[8], &qword_1EBD3F7B8, &unk_1BE0E29B0);
}

uint64_t sub_1BD57EFA0(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_1BE04D214();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD0, &unk_1BE0B7DD0);
  v2[18] = swift_task_alloc();
  v4 = sub_1BE049D74();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v5 = sub_1BE049A94();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v6 = sub_1BE04AFE4();
  v2[25] = v6;
  v2[26] = *(v6 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790, &qword_1BE0D6710);
  v2[29] = swift_task_alloc();
  v7 = type metadata accessor for TransactionContext(0);
  v2[30] = v7;
  v2[31] = *(v7 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  sub_1BE0528A4();
  v2[34] = sub_1BE052894();
  v9 = sub_1BE052844();
  v2[35] = v9;
  v2[36] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BD57F298, v9, v8);
}

uint64_t sub_1BD57F298()
{
  v49 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = *(v0 + 104);
  KeyPath = swift_getKeyPath();
  *(v0 + 80) = v4;
  sub_1BD581934(&qword_1EBD49CC8, _s9ViewModelCMa_2, &unk_1BE0E2948);
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v13 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__transactionContext;
  swift_beginAccess();
  sub_1BD0DE19C(v4 + v13, v3, &qword_1EBD3F790, &qword_1BE0D6710);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v21 = *(v0 + 232);
    *(v0 + 272), v14, v15, v16, v17, v18, v19, v20;
    sub_1BD0DE53C(v21, &qword_1EBD3F790, &qword_1BE0D6710);
    sub_1BE04D114();
    v22 = sub_1BE04D204();
    v23 = sub_1BE052C34();
    v24 = os_log_type_enabled(v22, v23);
    v26 = *(v0 + 120);
    v25 = *(v0 + 128);
    v27 = *(v0 + 112);
    if (v24)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v48 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1BD123690(0xD000000000000012, 0x80000001BE12F150, &v48);
      _os_log_impl(&dword_1BD026000, v22, v23, "Failed to reload transaction. The %s object is nil.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29, v30, v31, v32, v33, v34, v35, v36);
      MEMORY[0x1BFB45F20](v29, -1, -1);
      MEMORY[0x1BFB45F20](v28, -1, -1);
    }

    (*(v26 + 8))(v25, v27);
    (*(*(v0 + 248) + 56))(*(v0 + 96), 1, 1, *(v0 + 240));

    v37 = *(v0 + 8);

    return v37();
  }

  else
  {
    v39 = *(v0 + 224);
    v40 = *(v0 + 176);
    v41 = *(v0 + 144);
    sub_1BD58326C(*(v0 + 232), *(v0 + 264), type metadata accessor for TransactionContext);
    sub_1BE049A14();
    sub_1BE0490F4();
    *(v0 + 296) = sub_1BE0490B4();
    v42 = swift_task_alloc();
    *(v0 + 304) = v42;
    *(v42 + 16) = v39;
    *(v0 + 88) = v40;
    sub_1BE04B444();
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0, &unk_1BE0E8DB0);
    (*(*(v43 - 8) + 56))(v41, 0, 1, v43);
    v44 = sub_1BE049CE4();
    v45 = MEMORY[0x1E6967BC8];
    *(v0 + 40) = v44;
    *(v0 + 48) = v45;
    __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    sub_1BE049CD4();
    v46 = swift_task_alloc();
    *(v0 + 312) = v46;
    *v46 = v0;
    v46[1] = sub_1BD57F72C;
    v47 = *(v0 + 168);

    return MEMORY[0x1EEDC14D8](v47, v0 + 16);
  }
}

uint64_t sub_1BD57F72C()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  *(*v1 + 320) = v0;

  v3, v4, v5, v6, v7, v8, v9, v10;
  if (v0)
  {
    v18 = *(v2 + 280);
    v19 = *(v2 + 288);
    v20 = sub_1BD57FD8C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16), v11, v12, v13, v14, v15, v16, v17);
    v18 = *(v2 + 280);
    v19 = *(v2 + 288);
    v20 = sub_1BD57F86C;
  }

  return MEMORY[0x1EEE6DFA0](v20, v18, v19);
}

uint64_t sub_1BD57F86C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v85 = v8;
  v10 = *(v8 + 160);
  v9 = *(v8 + 168);
  v11 = *(v8 + 152);
  *(v8 + 272), a2, a3, a4, a5, a6, a7, a8;
  v12 = sub_1BE049D54();
  (*(v10 + 8))(v9, v11);
  if (v12[2])
  {
    v20 = *(v8 + 264);
    v22 = *(v8 + 240);
    v21 = *(v8 + 248);
    v82 = *(v8 + 224);
    v23 = *(v8 + 208);
    v79 = *(v8 + 200);
    v24 = *(v8 + 184);
    v25 = *(v8 + 192);
    v26 = *(v8 + 176);
    v27 = *(v8 + 96);
    (*(v24 + 16))(v25, v12 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v26);
    v12, v28, v29, v30, v31, v32, v33, v34;
    (*(v24 + 32))(v27, v25, v26);
    v35 = v22[5];
    v36 = sub_1BE0495A4();
    (*(*(v36 - 8) + 16))(v27 + v35, v20 + v35, v36);
    v37 = v22[6];
    v38 = sub_1BE049184();
    (*(*(v38 - 8) + 16))(v27 + v37, v20 + v37, v38);
    sub_1BD0DE19C(v20 + v22[7], v27 + v22[7], &qword_1EBD3F7C0, &unk_1BE0D6570);
    sub_1BD0DE19C(v20 + v22[8], v27 + v22[8], &qword_1EBD3F7B8, &unk_1BE0E29B0);
    sub_1BD5832D4(v20, type metadata accessor for TransactionContext);
    (*(v21 + 56))(v27, 0, 1, v22);
    (*(v23 + 8))(v82, v79);
  }

  else
  {
    v39 = *(v8 + 256);
    v40 = *(v8 + 264);
    v12, v13, v14, v15, v16, v17, v18, v19;
    sub_1BE04D114();
    sub_1BD583204(v40, v39, type metadata accessor for TransactionContext);
    v41 = sub_1BE04D204();
    v42 = sub_1BE052C34();
    v43 = os_log_type_enabled(v41, v42);
    v45 = *(v8 + 256);
    v44 = *(v8 + 264);
    if (v43)
    {
      v83 = *(v8 + 264);
      v47 = *(v8 + 208);
      v46 = *(v8 + 216);
      v48 = *(v8 + 200);
      v78 = *(v8 + 120);
      v80 = *(v8 + 112);
      v81 = *(v8 + 136);
      v49 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v84 = v77;
      *v49 = 136315138;
      sub_1BE049A14();
      sub_1BD581934(&unk_1EBD39960, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v50 = sub_1BE053B24();
      v52 = v51;
      (*(v47 + 8))(v46, v48);
      sub_1BD5832D4(v45, type metadata accessor for TransactionContext);
      v53 = sub_1BD123690(v50, v52, &v84);
      v52, v54, v55, v56, v57, v58, v59, v60;
      *(v49 + 4) = v53;
      _os_log_impl(&dword_1BD026000, v41, v42, "Failed to reload transaction with ID:%s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v77, v61, v62, v63, v64, v65, v66, v67);
      MEMORY[0x1BFB45F20](v77, -1, -1);
      MEMORY[0x1BFB45F20](v49, -1, -1);

      (*(v78 + 8))(v81, v80);
      v68 = v83;
    }

    else
    {
      v69 = *(v8 + 136);
      v70 = *(v8 + 112);
      v71 = *(v8 + 120);

      sub_1BD5832D4(v45, type metadata accessor for TransactionContext);
      (*(v71 + 8))(v69, v70);
      v68 = v44;
    }

    sub_1BD5832D4(v68, type metadata accessor for TransactionContext);
    v72 = *(v8 + 224);
    v74 = *(v8 + 200);
    v73 = *(v8 + 208);
    (*(*(v8 + 248) + 56))(*(v8 + 96), 1, 1, *(v8 + 240));
    (*(v73 + 8))(v72, v74);
  }

  v75 = *(v8 + 8);

  return v75();
}

uint64_t sub_1BD57FD8C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 264);
  v10 = *(v8 + 224);
  v11 = *(v8 + 208);
  v12 = *(v8 + 200);
  *(v8 + 272), a2, a3, a4, a5, a6, a7, a8;
  sub_1BD5832D4(v9, type metadata accessor for TransactionContext);
  __swift_destroy_boxed_opaque_existential_0((v8 + 16), v13, v14, v15, v16, v17, v18, v19);
  (*(v11 + 8))(v10, v12);

  v20 = *(v8 + 8);

  return v20();
}

uint64_t sub_1BD57FECC@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v26[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F828, &unk_1BE0E8C00);
  v5 = *(v4 - 8);
  v27 = v4;
  v28 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE8, &qword_1BE0DF8F0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EF0, &qword_1BE0B7F50);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v26 - v14;
  sub_1BD0DE4F4(&qword_1EBD38F10, &qword_1EBD38EE8, &qword_1BE0DF8F0, MEMORY[0x1E6968DA8]);
  sub_1BE04A7C4();
  KeyPath = swift_getKeyPath();
  sub_1BE04A724();
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  (*(v9 + 8))(v11, v8);
  sub_1BE04AFE4();
  sub_1BE04A7B4();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F830, &qword_1BE0E29F0);
  a3[4] = sub_1BD58197C();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1BD0DE4F4(&qword_1EBD38F20, &qword_1EBD38EF0, &qword_1BE0B7F50, MEMORY[0x1E6968D58]);
  sub_1BD0DE4F4(&qword_1EBD3F850, &qword_1EBD3F828, &unk_1BE0E8C00, MEMORY[0x1E6968D20]);
  sub_1BD581934(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v24 = v27;
  sub_1BE04A714();
  (*(v28 + 8))(v7, v24);
  return (*(v13 + 8))(v15, v12);
}

BOOL sub_1BD580268(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v58 = a4;
  v57 = a3;
  v4 = sub_1BE049B44();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v48 - v7;
  v8 = sub_1BE049904();
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v48 - v11;
  v12 = sub_1BE0493F4();
  v56 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE04AF64();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE049974();
  sub_1BD581934(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if (sub_1BE052304())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0, "FM\r");
    v19 = sub_1BE052314();
    (*(v16 + 8))(v18, v15);
    if (v19)
    {
      sub_1BE0499A4();
      v20 = sub_1BE0493A4();
      v22 = v21;
      (*(v56 + 8))(v14, v12);
      if (v20 == v57 && v22 == v58)
      {
        v22, v23, v57, v58, v24, v25, v26, v27;
      }

      else
      {
        v29 = sub_1BE053B84();
        v22, v30, v31, v32, v33, v34, v35, v36;
        if ((v29 & 1) == 0)
        {
          return 0;
        }
      }

      v37 = v52;
      sub_1BE049A34();
      v39 = v53;
      v38 = v54;
      v40 = v55;
      (*(v54 + 104))(v53, *MEMORY[0x1E6967980], v55);
      sub_1BD581934(&qword_1EBD3F7A0, MEMORY[0x1E6967988], MEMORY[0x1E6967998]);
      v41 = sub_1BE052334();
      v42 = *(v38 + 8);
      v42(v39, v40);
      v42(v37, v40);
      if ((v41 & 1) == 0)
      {
        v43 = v48;
        sub_1BE0499E4();
        v45 = v49;
        v44 = v50;
        v46 = v51;
        (*(v50 + 104))(v49, *MEMORY[0x1E6967B10], v51);
        sub_1BD581934(&qword_1EBD3F7A8, MEMORY[0x1E6967B20], MEMORY[0x1E6967B40]);
        sub_1BE0526E4();
        sub_1BE0526E4();
        v47 = *(v44 + 8);
        v47(v45, v46);
        v47(v43, v46);
        return v60 == v59;
      }
    }
  }

  else
  {
    (*(v16 + 8))(v18, v15);
  }

  return 0;
}

uint64_t sub_1BD5807CC()
{
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__brandViewDetails, &qword_1EBD49CB8, &qword_1BE0DFF20);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__transactionContext, &qword_1EBD3F790, &qword_1BE0D6710);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__historyToken, &qword_1EBD3F788, &unk_1BE0E2970);
  v1 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1BD5808F0(uint64_t a1)
{
  sub_1BD580AAC(319, &qword_1EBD4B178, _s22MerchantBrandViewModelVMa);
  if (v1 <= 0x3F)
  {
    sub_1BD580AAC(319, &qword_1EBD3F760, type metadata accessor for TransactionContext);
    if (v2 <= 0x3F)
    {
      sub_1BD580AAC(319, &qword_1EBD3F768, MEMORY[0x1E69675F8]);
      if (v3 <= 0x3F)
      {
        sub_1BE04B5D4();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1BD580AAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BD580B28(uint64_t a1)
{
  sub_1BD580C60(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for FinanceKitSelectedTransactionView.ViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_1BD580AAC(319, &qword_1EBD3F758, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
      if (v3 <= 0x3F)
      {
        sub_1BD580CC8();
        if (v4 <= 0x3F)
        {
          sub_1BD580AAC(319, &qword_1EBD4B1A8, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
          if (v5 <= 0x3F)
          {
            sub_1BD580AAC(319, &qword_1EBD4B1B0, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1BD580C60(uint64_t a1)
{
  if (!qword_1EBD4B190)
  {
    sub_1BD0E5E8C(255, &qword_1EBD4B198, 0x1E696F440);
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD4B190);
    }
  }
}

void sub_1BD580CC8()
{
  if (!qword_1EBD4B1A0)
  {
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4B1A0);
    }
  }
}

uint64_t sub_1BD580D4C()
{
  v1 = v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = sub_1BE049B04();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 != *MEMORY[0x1E6967AA0])
  {
    if (v8 == *MEMORY[0x1E6967A68])
    {
      return 0x6E697264646F6F66;
    }

    else if (v8 == *MEMORY[0x1E6967AB8])
    {
      return 0x676E6970706F6873;
    }

    else if (v8 == *MEMORY[0x1E6967A98])
    {
      return 0x6C6576617274;
    }

    else if (v8 == *MEMORY[0x1E6967AB0])
    {
      return 0x7365636976726573;
    }

    else if (v8 == *MEMORY[0x1E6967A78])
    {
      return 7239014;
    }

    else if (v8 == *MEMORY[0x1E6967A88])
    {
      return 0x68746C616568;
    }

    else if (v8 == *MEMORY[0x1E6967AC8])
    {
      return 0x726F70736E617274;
    }

    else
    {
      (*(v4 + 8))(v7, v3);
    }
  }

  return v2;
}

uint64_t sub_1BD580FA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE048F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788, &unk_1BE0E2970);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F950, &unk_1BE0E2AB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1BD0DE19C(a1, &v21 - v12, &qword_1EBD3F788, &unk_1BE0E2970);
  sub_1BD0DE19C(a2, &v13[v15], &qword_1EBD3F788, &unk_1BE0E2970);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1BD0DE19C(v13, v10, &qword_1EBD3F788, &unk_1BE0E2970);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1BD581934(&qword_1EBD3F958, MEMORY[0x1E69675F8], MEMORY[0x1E6967600]);
      v18 = sub_1BE052334();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1BD0DE53C(v13, &qword_1EBD3F788, &unk_1BE0E2970);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1BD0DE53C(v13, &qword_1EBD3F950, &unk_1BE0E2AB0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1BD0DE53C(v13, &qword_1EBD3F788, &unk_1BE0E2970);
  v17 = 0;
  return v17 & 1;
}

void *sub_1BD5812C8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48360, &unk_1BE0DF0B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v89 = &v87 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0, &unk_1BE0D6570);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v87 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48358, &qword_1BE0DBE98);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v87 - v12;
  v14 = sub_1BE049B04();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v87 - v19;
  sub_1BE0499D4();
  v92 = v20;
  sub_1BE049AB4();
  v21 = *(v15 + 8);
  v93 = v15 + 8;
  v94 = v14;
  v91 = v21;
  v21(v17, v14);
  v90 = a2;
  sub_1BD0DE19C(a2, v10, &qword_1EBD3F7C0, &unk_1BE0D6570);
  v22 = sub_1BE0491B4();
  v23 = *(v22 - 1);
  v24 = *(v23 + 48);
  if (v24(v10, 1, v22) == 1)
  {
    v25 = &qword_1EBD3F7C0;
    v26 = &unk_1BE0D6570;
    v27 = v10;
LABEL_5:
    sub_1BD0DE53C(v27, v25, v26);
    v30 = 0;
    v31 = 0xF000000000000000;
    goto LABEL_6;
  }

  sub_1BE0491A4();
  (*(v23 + 8))(v10, v22);
  v28 = sub_1BE049294();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v13, 1, v28) == 1)
  {
    v25 = &qword_1EBD48358;
    v26 = &qword_1BE0DBE98;
    v27 = v13;
    goto LABEL_5;
  }

  v88 = sub_1BE049244();
  v65 = v64;
  (*(v29 + 8))(v13, v28);
  v44 = v65;
  if (v65 >> 60 != 15)
  {
    v43 = v88;
    goto LABEL_19;
  }

  v30 = v88;
  v31 = v65;
LABEL_6:
  sub_1BD0DE19C(v90, v7, &qword_1EBD3F7C0, &unk_1BE0D6570);
  if (v24(v7, 1, v22) == 1)
  {
    v32 = &qword_1EBD3F7C0;
    v33 = &unk_1BE0D6570;
    v34 = v7;
LABEL_10:
    sub_1BD0DE53C(v34, v32, v33);
    sub_1BD030220(v30, v31, v37, v38, v39, v40, v41, v42);
    v43 = 0;
    v44 = 0xF000000000000000;
    goto LABEL_11;
  }

  v35 = v89;
  sub_1BE049194();
  (*(v23 + 8))(v7, v22);
  v22 = sub_1BE04A0D4();
  v36 = *(v22 - 1);
  if ((*(v36 + 48))(v35, 1, v22) == 1)
  {
    v32 = &qword_1EBD48360;
    v33 = &unk_1BE0DF0B0;
    v34 = v35;
    goto LABEL_10;
  }

  v43 = sub_1BE04A094();
  v44 = v66;
  (*(v36 + 8))(v35, v22);
  sub_1BD030220(v30, v31, v67, v68, v69, v70, v71, v72);
  if (v44 >> 60 != 15)
  {
LABEL_19:
    sub_1BD041A38(v43, v44);
    sub_1BD0E5E8C(0, &qword_1EBD4B1B8, 0x1E696ACD0);
    sub_1BD0E5E8C(0, &qword_1EBD4B198, 0x1E696F440);
    v73 = v95;
    v74 = sub_1BE052CB4();
    if (!v73)
    {
      v22 = v74;
    }

    v91(v92, v94);
    sub_1BD1245AC(v43, v44, v75, v76, v77, v78, v79, v80);
    sub_1BD030220(v43, v44, v81, v82, v83, v84, v85, v86);
    return v22;
  }

LABEL_11:
  result = [objc_opt_self() sharedService];
  if (result)
  {
    v46 = result;
    v47 = v92;
    sub_1BD580D4C();
    v49 = v48;
    v50 = sub_1BE052404();
    v49, v51, v52, v53, v54, v55, v56, v57;
    v22 = [v46 stylingForWalletCategory_];

    sub_1BD030220(v43, v44, v58, v59, v60, v61, v62, v63);
    v91(v47, v94);
    return v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD581934(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD58197C()
{
  result = qword_1EBD3F8E0;
  if (!qword_1EBD3F8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F830, &qword_1BE0E29F0);
    sub_1BD581A08();
    sub_1BD2737D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F8E0);
  }

  return result;
}

unint64_t sub_1BD581A08()
{
  result = qword_1EBD38F70;
  if (!qword_1EBD38F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38EF0, &qword_1BE0B7F50);
    sub_1BD0DE4F4(&qword_1EBD38F78, &qword_1EBD38EE8, &qword_1BE0DF8F0, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38F70);
  }

  return result;
}

uint64_t sub_1BD581B04(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_1BE049C74();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v3 = sub_1BE049A94();
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v4 = sub_1BE049D74();
  v1[21] = v4;
  v1[22] = *(v4 - 8);
  v1[23] = swift_task_alloc();
  sub_1BE0528A4();
  v1[24] = sub_1BE052894();
  v6 = sub_1BE052844();
  v1[25] = v6;
  v1[26] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD581CC8, v6, v5);
}

uint64_t sub_1BD581CC8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  sub_1BE0490F4();
  *(v0 + 216) = sub_1BE0490B4();
  v8 = *(v3 + 16);
  *(v0 + 224) = v8;
  *(v0 + 232) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v7, v2);
  *(v0 + 80) = &type metadata for BankConnectFeatureFlags;
  *(v0 + 88) = sub_1BD1671B0();
  *(v0 + 56) = 2;
  LOBYTE(v7) = sub_1BE04C584();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56), v9, v10, v11, v12, v13, v14, v15);
  v16 = MEMORY[0x1E6967BA8];
  if ((v7 & 1) == 0)
  {
    v16 = MEMORY[0x1E6967BA0];
  }

  (*(v5 + 104))(v4, *v16, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD8, &unk_1BE0DF590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DE0, &qword_1BE0B7DE0);
  *(swift_allocObject() + 16) = xmmword_1BE0B69E0;
  swift_getKeyPath();
  sub_1BD581934(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  sub_1BE04A4F4();
  v17 = sub_1BE049C94();
  v18 = MEMORY[0x1E6967BB0];
  *(v0 + 40) = v17;
  *(v0 + 48) = v18;
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_1BE049C84();
  v19 = swift_task_alloc();
  *(v0 + 240) = v19;
  *v19 = v0;
  v19[1] = sub_1BD581F58;
  v20 = *(v0 + 184);

  return MEMORY[0x1EEDC14D8](v20, v0 + 16);
}

uint64_t sub_1BD581F58()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  *(*v1 + 248) = v0;

  v3, v4, v5, v6, v7, v8, v9, v10;
  if (v0)
  {
    v18 = *(v2 + 200);
    v19 = *(v2 + 208);
    v20 = sub_1BD5822D0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16), v11, v12, v13, v14, v15, v16, v17);
    v18 = *(v2 + 200);
    v19 = *(v2 + 208);
    v20 = sub_1BD582098;
  }

  return MEMORY[0x1EEE6DFA0](v20, v18, v19);
}

uint64_t sub_1BD582098(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 184);
  v11 = *(v8 + 168);
  v10 = *(v8 + 176);
  *(v8 + 192), a2, a3, a4, a5, a6, a7, a8;
  v12 = sub_1BE049D54();
  result = (*(v10 + 8))(v9, v11);
  v21 = v12[2];
  if (v21)
  {
    v22 = 0;
    v23 = *(v8 + 136);
    v24 = (v23 + 32);
    v25 = MEMORY[0x1E69E7CC0];
    v34 = v12[2];
    v35 = v12;
    while (v22 < v12[2])
    {
      v26 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v27 = *(v23 + 72);
      (*(v8 + 224))(*(v8 + 152), v12 + v26 + v27 * v22, *(v8 + 128));
      if (sub_1BE049A74())
      {
        v28 = *v24;
        (*v24)(*(v8 + 144), *(v8 + 152), *(v8 + 128));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BD531B68(0, *(v25 + 16) + 1, 1);
        }

        v30 = *(v25 + 16);
        v29 = *(v25 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1BD531B68((v29 > 1), v30 + 1, 1);
        }

        v31 = *(v8 + 144);
        v32 = *(v8 + 128);
        *(v25 + 16) = v30 + 1;
        v24 = (v23 + 32);
        result = v28(v25 + v26 + v30 * v27, v31, v32);
        v21 = v34;
        v12 = v35;
      }

      else
      {
        result = (*(v23 + 8))(*(v8 + 152), *(v8 + 128));
      }

      if (v21 == ++v22)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_13:
    v12, v14, v15, v16, v17, v18, v19, v20;

    v33 = *(v8 + 8);

    return v33(v25);
  }

  return result;
}

uint64_t sub_1BD5822D0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 192), a2, a3, a4, a5, a6, a7, a8;
  __swift_destroy_boxed_opaque_existential_0((v8 + 16), v9, v10, v11, v12, v13, v14, v15);

  v16 = *(v8 + 8);

  return v16();
}

void sub_1BD5823A0(uint64_t a1, uint64_t a2)
{
  v148 = a1;
  v130 = sub_1BE04BD74();
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v4 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1BE04B0F4();
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v126 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_1BE049A94();
  v139 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v137 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v116 = &v116 - v8;
  v134 = sub_1BE049B44();
  v119 = *(v134 - 1);
  MEMORY[0x1EEE9AC00](v134);
  v118 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v117 = &v116 - v11;
  v12 = sub_1BE049904();
  v145 = *(v12 - 8);
  v146 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v144 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v143 = &v116 - v15;
  v16 = sub_1BE0493F4();
  v17 = *(v16 - 8);
  v141 = v16;
  v142 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v140 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38810, &unk_1BE0B6F60);
  MEMORY[0x1EEE9AC00](v19);
  v138 = (&v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v116 - v22;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0, "FM\r");
  MEMORY[0x1EEE9AC00](v136);
  v131 = &v116 - v24;
  v132 = sub_1BE04AF64();
  v25 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v27 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v116 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v116 - v32;
  v34 = a2;
  sub_1BE049974();
  v35 = sub_1BE04AE64();
  v36 = PKStartOfMonth();

  if (!v36)
  {
    __break(1u);
    goto LABEL_20;
  }

  sub_1BE04AEE4();

  v125 = v33;
  v37 = sub_1BE04AE64();
  v38 = PKEndOfMonth();

  if (!v38)
  {
LABEL_20:
    __break(1u);
    return;
  }

  sub_1BE04AEE4();

  sub_1BD581934(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v39 = v132;
  if ((sub_1BE052314() & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v124 = v4;
  v40 = *(v25 + 32);
  v40(v23, v30, v39);
  v135 = v34;
  v40(&v23[*(v19 + 48)], v27, v39);
  v41 = v39;
  v42 = v138;
  sub_1BD0DE19C(v23, v138, &unk_1EBD38810, &unk_1BE0B6F60);
  v43 = *(v19 + 48);
  v44 = v131;
  v40(v131, v42, v41);
  v45 = *(v25 + 8);
  v45(&v42[v43], v41);
  sub_1BD0DE204(v23, v42, &unk_1EBD38810, &unk_1BE0B6F60);
  v40((v44 + *(v136 + 36)), &v42[*(v19 + 48)], v41);
  v123 = v25 + 8;
  v122 = v45;
  v45(v42, v41);
  v46 = v135;
  v47 = v140;
  sub_1BE0499A4();
  v48 = sub_1BE0493A4();
  v50 = v49;
  v51 = *(v142 + 8);
  v142 += 8;
  v138 = v51;
  v52 = (v51)(v47, v141);
  MEMORY[0x1EEE9AC00](v52);
  *(&v116 - 4) = v44;
  *(&v116 - 3) = v48;
  *(&v116 - 2) = v50;
  v53 = v148;
  sub_1BE048C84();
  sub_1BD1CEA30(sub_1BD583334, (&v116 - 6), v53);
  v133 = v54;
  v55 = v143;
  sub_1BE049A34();
  v57 = v144;
  v56 = v145;
  v58 = v146;
  (*(v145 + 104))(v144, *MEMORY[0x1E6967980], v146);
  sub_1BD581934(&qword_1EBD3F7A0, MEMORY[0x1E6967988], MEMORY[0x1E6967998]);
  LOBYTE(v44) = sub_1BE052334();
  v59 = *(v56 + 8);
  v59(v57, v58);
  v59(v55, v58);
  v121 = v48;
  v120 = v50;
  if ((v44 & 1) == 0)
  {
    v60 = v117;
    sub_1BE0499E4();
    v61 = v119;
    v62 = v118;
    v63 = v134;
    (*(v119 + 104))(v118, *MEMORY[0x1E6967B10], v134);
    sub_1BD581934(&qword_1EBD3F7A8, MEMORY[0x1E6967B20], MEMORY[0x1E6967B40]);
    sub_1BE0526E4();
    sub_1BE0526E4();
    v64 = *(v61 + 8);
    v64(v62, v63);
    v64(v60, v63);
    if (v150 == v149)
    {
      v19 = v116;
      v39 = v147;
      (*(v139 + 16))(v116, v46, v147);
      v33 = v133;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_7:
        v66 = *(v33 + 2);
        v65 = *(v33 + 3);
        if (v66 >= v65 >> 1)
        {
          v33 = sub_1BD1D825C((v65 > 1), v66 + 1, 1, v33);
        }

        *(v33 + 2) = v66 + 1;
        v67 = v139;
        (*(v139 + 32))(&v33[((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v66], v19, v39);
        goto LABEL_11;
      }

LABEL_18:
      v33 = sub_1BD1D825C(0, *(v33 + 2) + 1, 1, v33);
      goto LABEL_7;
    }
  }

  v67 = v139;
  v33 = v133;
LABEL_11:
  v144 = (MEMORY[0x1BFB403C0](0) >> 48);
  v75 = (v68 >> 16);
  v148 = v68 >> 48;
  v76 = *(v33 + 2);
  LODWORD(v145) = v69 >> 16;
  if (v76)
  {
    v78 = *(v67 + 16);
    v77 = v67 + 16;
    v79 = &v33[(*(v77 + 64) + 32) & ~*(v77 + 64)];
    v135 = *(v77 + 56);
    v136 = v78;
    v133 = v33;
    v134 = (v77 - 8);
    v80 = v137;
    v146 = v68 >> 32;
    v139 = v77;
    do
    {
      v143 = v75;
      v145 = v76;
      (v136)(v80, v79, v147);
      v81 = v140;
      sub_1BE0499A4();
      sub_1BE0493C4();
      LODWORD(v144) = v82;
      (v138)(v81, v141);
      v80 = v137;
      sub_1BE053384();
      v75 = (v83 >> 16);
      v146 = HIDWORD(v83);
      v148 = HIWORD(v83);
      v85 = HIWORD(v84);
      (*v134)(v80, v147);
      v79 += v135;
      v76 = v145 - 1;
    }

    while (v145 != 1);
    LODWORD(v145) = v85;
    v133, v86, v87, v88, v89, v90, v91, v92;
  }

  else
  {
    v33, v68, v69, v70, v71, v72, v73, v74;
  }

  v93 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v94 = sub_1BE052404();
  [v93 setDateFormat_];

  v95 = v140;
  sub_1BE049404();
  v96 = v126;
  sub_1BE04B054();
  v97 = sub_1BE0493E4();
  v147 = v98;
  v148 = v97;
  (*(v127 + 8))(v96, v128);
  (v138)(v95, v141);
  v99 = v129;
  v100 = v124;
  v101 = v130;
  (*(v129 + 104))(v124, *MEMORY[0x1E69B80B0], v130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_1BE0B69E0;
  v103 = v125;
  v104 = sub_1BE04AE64();
  v105 = [v93 stringFromDate_];

  v106 = sub_1BE052434();
  v108 = v107;

  *(v102 + 56) = MEMORY[0x1E69E6158];
  *(v102 + 64) = sub_1BD110550();
  *(v102 + 32) = v106;
  *(v102 + 40) = v108;
  sub_1BE04B714();

  v102, v109, v110, v111, v112, v113, v114, v115;
  (*(v99 + 8))(v100, v101);
  v122(v103, v132);
  sub_1BD0DE53C(v131, &unk_1EBD387B0, "FM\r");
}

uint64_t sub_1BD583204(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD58326C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD5832D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD5834A8(uint64_t (*a1)(unint64_t, unint64_t, void, uint64_t))
{
  v2 = v1;
  KeyPath = swift_getKeyPath();
  sub_1BD1875A0(v1, &v154);
  sub_1BD7CD0C0();
  v5 = *(&v154 + 1);
  if (!*(*(&v154 + 1) + 16))
  {
    v27 = 0;
    goto LABEL_25;
  }

  v150 = KeyPath;
  sub_1BE053D04();
  sub_1BE052524();
  v6 = sub_1BE053D64();
  v14 = -1 << *(v5 + 32);
  v15 = v6 & ~v14;
  if (((*(v5 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
    v27 = 0;
    goto LABEL_24;
  }

  v148 = v1;
  v16 = ~v14;
  while (1)
  {
    v17 = *(*(v5 + 48) + v15);
    v18 = 0xED00006572757470;
    if (v17 == 1)
    {
      goto LABEL_7;
    }

    if (v17 != 2)
    {
      break;
    }

    v18 = 0xEE006E6F69736976;
LABEL_7:
    v19 = sub_1BE053B84();
    v18, v20, v21, v22, v23, v24, v25, v26;
    if (v19)
    {
      goto LABEL_13;
    }

    v15 = (v15 + 1) & v16;
    if (((*(v5 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
LABEL_9:
      v27 = 0;
LABEL_22:
      v2 = v148;
      goto LABEL_24;
    }
  }

  0xEE007265626D754ELL, v7, v8, v9, v10, v11, v12, v13;
LABEL_13:
  v28 = v155;
  v2 = v148;
  if (*(v155 + 16))
  {
    sub_1BE053D04();
    sub_1BE052524();
    v29 = sub_1BE053D64();
    v37 = -1 << *(v28 + 32);
    v38 = v29 & ~v37;
    if ((*(v28 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
    {
      v39 = ~v37;
      while (1)
      {
        v40 = *(*(v28 + 48) + v38);
        v41 = 0xED00006572757470;
        if (v40 != 1)
        {
          if (v40 != 2)
          {
            0xEE007265626D754ELL, v30, v31, v32, v33, v34, v35, v36;
            goto LABEL_9;
          }

          v41 = 0xEE006E6F69736976;
        }

        v42 = sub_1BE053B84();
        v41, v43, v44, v45, v46, v47, v48, v49;
        if ((v42 & 1) == 0)
        {
          v38 = (v38 + 1) & v39;
          if ((*(v28 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
          {
            continue;
          }
        }

        v27 = v42 ^ 1;
        goto LABEL_22;
      }
    }
  }

  v27 = 1;
LABEL_24:
  KeyPath = v150;
LABEL_25:
  v157 = v154;
  v158 = v155;
  v159 = v156;
  v50 = v2;
  sub_1BD12F7B0(&v157, v50, KeyPath);

  KeyPath, v51, v52, v53, v54, v55, v56, v57;
  v160 = *(&v157 + 1);
  sub_1BD58532C(&v160);
  v161 = v158;
  sub_1BD58532C(&v161);
  v162 = *(&v158 + 1);
  sub_1BD58532C(&v162);
  if ((v27 & 1) == 0 && *(v50 + OBJC_IVAR____TtC9PassKitUI31ProvisioningManualEntryFlowItem_forceShow) != 1)
  {
    return a1(0xD00000000000002BLL, 0x80000001BE12F210, 0, 1);
  }

  v151 = a1;
  v147 = swift_getKeyPath();
  v149 = v50;
  sub_1BD1875A0(v50, &v154);
  v58 = v155;
  v146 = *(&v154 + 1);
  v59 = *(&v155 + 1);
  v144 = v156;
  v145 = v154;
  sub_1BE053D04();
  sub_1BE052524();
  v60 = sub_1BE053D64();
  v68 = -1 << *(v58 + 32);
  v69 = v60 & ~v68;
  if (((*(v58 + 56 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
  {
LABEL_34:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v152[0] = v58;
    sub_1BD2A939C(0, v69, isUniquelyReferenced_nonNull_native, v82, v83, v84, v85, v86);
    goto LABEL_35;
  }

  v70 = ~v68;
  while (2)
  {
    v71 = *(*(v58 + 48) + v69);
    v72 = 0xED00006572757470;
    if (v71 == 1)
    {
LABEL_32:
      v73 = sub_1BE053B84();
      v72, v74, v75, v76, v77, v78, v79, v80;
      if (v73)
      {
        goto LABEL_35;
      }

      v69 = (v69 + 1) & v70;
      if (((*(v58 + 56 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
      {
        goto LABEL_34;
      }

      continue;
    }

    break;
  }

  if (v71 == 2)
  {
    v72 = 0xEE006E6F69736976;
    goto LABEL_32;
  }

  0xEE007265626D754ELL, v61, v62, v63, v64, v65, v66, v67;
LABEL_35:
  sub_1BE053D04();
  sub_1BE052524();
  v87 = sub_1BE053D64();
  v95 = -1 << *(v59 + 32);
  v96 = v87 & ~v95;
  if (((*(v59 + 56 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96) & 1) == 0)
  {
LABEL_42:
    v108 = swift_isUniquelyReferenced_nonNull_native();
    v152[0] = v59;
    sub_1BD2A939C(0, v96, v108, v109, v110, v111, v112, v113);
    goto LABEL_43;
  }

  v97 = ~v95;
  while (2)
  {
    v98 = *(*(v59 + 48) + v96);
    v99 = 0xED00006572757470;
    if (v98 == 1)
    {
LABEL_40:
      v100 = sub_1BE053B84();
      v99, v101, v102, v103, v104, v105, v106, v107;
      if (v100)
      {
        goto LABEL_43;
      }

      v96 = (v96 + 1) & v97;
      if (((*(v59 + 56 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96) & 1) == 0)
      {
        goto LABEL_42;
      }

      continue;
    }

    break;
  }

  if (v98 == 2)
  {
    v99 = 0xEE006E6F69736976;
    goto LABEL_40;
  }

  0xEE007265626D754ELL, v88, v89, v90, v91, v92, v93, v94;
LABEL_43:
  LOBYTE(v152[0]) = v145;
  v152[1] = v146;
  v152[2] = v58;
  v152[3] = v59;
  v153 = v144;
  v114 = v149;
  sub_1BD12F7B0(v152, v114, v147);
  v59, v115, v116, v117, v118, v119, v120, v121;
  v58, v122, v123, v124, v125, v126, v127, v128;
  v146, v129, v130, v131, v132, v133, v134, v135;

  v147, v136, v137, v138, v139, v140, v141, v142;
  return v151(0, 0, 0, 0);
}

void sub_1BD583AF8()
{
  v0 = sub_1BE04BAC4();
  v367 = *(v0 - 8);
  v368 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v366 = &v358 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1BE04BD74();
  v360 = *(v2 - 8);
  v361 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v359 = &v358 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04B8D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v369 = &v358 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v363 = &v358 - v8;
  v372 = sub_1BE04B944();
  v9 = *(v372 - 8);
  MEMORY[0x1EEE9AC00](v372);
  v371 = &v358 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290, &qword_1BE0CC120);
  v11 = sub_1BE04C384();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  v370 = xmmword_1BE0B69E0;
  *(v14 + 16) = xmmword_1BE0B69E0;
  *(v14 + v13) = [objc_allocWithZone(MEMORY[0x1E69B91F0]) init];
  v15 = v14 + v13;
  v16 = v9;
  (*(v12 + 104))(v15, *MEMORY[0x1E69B8290], v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456E0, &unk_1BE0FF0F0);
  v17 = v362;
  *(swift_allocObject() + 16) = v370;
  v18 = *&v17[OBJC_IVAR____TtC9PassKitUI31ProvisioningManualEntryFlowItem_context];
  sub_1BE04BB94();
  sub_1BE04C3D4();
  swift_allocObject();
  *&v370 = sub_1BE04C394();
  if (PKShowFakePaymentSetupFields() && (v19 = [objc_opt_self() fakePaymentSetupProvisioningFields]) != 0 && (v20 = v19, v21 = sub_1BE052744(), v20, v22 = sub_1BD3FD320(v21), v21, v23, v24, v25, v26, v27, v28, v29, v22))
  {
    v377 = v22;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1BE0B7020;
    *(v30 + 32) = [objc_allocWithZone(MEMORY[0x1E69B8E18]) init];
    v377 = v30;
    v31 = sub_1BE04BBD4();
    v32 = [v31 suppressDefaultCardholderNameField];

    if ((v32 & 1) == 0)
    {
      v33 = [objc_allocWithZone(MEMORY[0x1E69B8DF8]) init];
      sub_1BD1DD148(0, 0, v33);
    }
  }

  v34 = v371;
  sub_1BE04BB94();
  v35 = v363;
  sub_1BE04B924();
  v364 = *(v16 + 8);
  v365 = v16 + 8;
  v364(v34, v372);
  v36 = v369;
  (*(v5 + 104))(v369, *MEMORY[0x1E69B7F80], v4);
  sub_1BD5852D4();
  v37 = sub_1BE052334();
  v38 = *(v5 + 8);
  v38(v36, v4);
  v38(v35, v4);
  if ((v37 & 1) == 0)
  {
    v47 = v359;
    v46 = v360;
    v48 = v361;
    (*(v360 + 104))(v359, *MEMORY[0x1E69B80D8], v361);
    sub_1BE04B714();
    v50 = v49;
    (*(v46 + 8))(v47, v48);
    v51 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v52 = sub_1BE052404();
    v50, v53, v54, v55, v56, v57, v58, v59;
    v60 = [v51 initWithString_];

    v61 = objc_allocWithZone(MEMORY[0x1E69B8E28]);
    v62 = sub_1BE052404();
    v63 = [v61 initWithIdentifier:v62 body:v60];

    [v63 setPosition_];
    [v63 setAlingment_];
    [v63 setFontScale_];
    v64 = v63;
    MEMORY[0x1BFB3F7A0]();
    if (*((v377 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v377 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
  }

  v369 = v18;
  v65 = MEMORY[0x1E69E7CC0];
  v66 = v377;
  v67 = sub_1BD3F0574(v377, v39, v40, v41, v42, v43, v44, v45);
  v68 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
  v69 = sub_1BE052724();
  v67, v70, v71, v72, v73, v74, v75, v76;
  v77 = [v68 initWithPaymentSetupFields_];

  if (!v77)
  {
    v77 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
  }

  if (*&v17[OBJC_IVAR____TtC9PassKitUI31ProvisioningManualEntryFlowItem_cameraCaptureObjects])
  {
    v78 = *&v17[OBJC_IVAR____TtC9PassKitUI31ProvisioningManualEntryFlowItem_cameraCaptureObjects];
  }

  else
  {
    v78 = v65;
  }

  sub_1BE048C84();
  v66, v79, v80, v81, v82, v83, v84, v85;
  v363 = sub_1BD9F46CC(v78, v77, v86);
  v78, v87, v88, v89, v90, v91, v92, v93;
  v94 = type metadata accessor for ProvisioningUICoordinator();
  v95 = objc_allocWithZone(v94);
  *&v95[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v95[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_manualEntryDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v96 = &v95[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer];
  *&v95[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v95[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex] = 0;
  *&v95[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_cameraCaptureObjects] = v65;
  *&v95[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer] = 0;
  *&v95[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel] = 0;
  v95[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_skipRequirements] = 0;
  *&v95[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError] = 0;
  *&v95[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses] = 0;
  *&v95[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion] = 0;
  *&v95[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_seStorageHandle] = 0;
  *&v95[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_termsPresenter] = 0;
  v97 = v369;
  v98 = v370;
  *&v95[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context] = v369;
  *&v95[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration] = v98;
  swift_unknownObjectWeakAssign();
  *(v96 + 1) = 0;
  swift_unknownObjectWeakAssign();
  v95[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_previouslyAcceptedTerms] = 0;
  sub_1BE048964();
  sub_1BE048964();
  *&v95[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter] = sub_1BE04BBB4();
  v376.receiver = v95;
  v376.super_class = v94;
  v99 = objc_msgSendSuper2(&v376, sel_init);
  v100 = *&v99[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_cameraCaptureObjects];
  *&v99[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_cameraCaptureObjects] = v363;
  v100, v101, v102, v103, v104, v105, v106, v107;
  v363 = v99;
  *&v99[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = &off_1F3BAE6C0;
  swift_unknownObjectWeakAssign();
  v108 = type metadata accessor for ProvisioningManualEntryViewController();
  v109 = objc_allocWithZone(v108);
  *&v109[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_coordinator] = 0;
  v109[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_showTapToProvisionButton] = 0;
  v109[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_showCameraCaptureButton] = 0;
  *&v109[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_provisioningContext] = v97;
  v109[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_isSecondaryEntry] = 0;
  *&v109[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_delegate + 8] = &off_1F3BAE6B0;
  swift_unknownObjectUnownedInit();
  sub_1BE052434();
  v111 = v110;
  sub_1BE048964();
  v112 = v77;
  v113 = sub_1BE04BB74();
  v111, v114, v115, v116, v117, v118, v119, v120;
  *&v109[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_reporter] = v113;
  v121 = v371;
  sub_1BE04BB94();
  v122 = sub_1BE04B8E4();
  v364(v121, v372);
  v123 = v366;
  sub_1BE04BC34();
  v124 = sub_1BE04B9A4();
  (*(v367 + 8))(v123, v368);
  v375.receiver = v109;
  v375.super_class = v108;
  v125 = v112;
  v126 = objc_msgSendSuper2(&v375, sel_initWithWebService_context_setupDelegate_setupFieldsModel_, v122, v124, 0, v125);

  v372 = v126;
  if (!v126)
  {
    __break(1u);
    return;
  }

  v371 = v125;

  KeyPath = swift_getKeyPath();
  sub_1BD1875A0(v17, &v389);
  sub_1BD7CD0C0();
  v128 = *(&v389 + 1);
  if (!*(*(&v389 + 1) + 16) || (sub_1BE053D04(), sub_1BE052524(), v129 = sub_1BE053D64(), v136 = -1 << *(v128 + 32), v137 = v129 & ~v136, ((*(v128 + 56 + ((v137 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v137) & 1) == 0))
  {
LABEL_25:
    v148 = 0;
    goto LABEL_26;
  }

  v138 = ~v136;
  while (1)
  {
    v139 = 0xEE007265626D754ELL;
    if (!*(*(v128 + 48) + v137))
    {
      goto LABEL_23;
    }

    if (*(*(v128 + 48) + v137) != 1)
    {
      break;
    }

    v139 = 0xED00006572757470;
LABEL_23:
    v140 = sub_1BE053B84();
    v139, v141, v142, v143, v144, v145, v146, v147;
    if (v140)
    {
      goto LABEL_55;
    }

    v137 = (v137 + 1) & v138;
    if (((*(v128 + 56 + ((v137 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v137) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  0xEE006E6F69736976, v130, 0x6F72506F54706174, v131, v132, v133, v134, v135;
LABEL_55:
  v316 = *(&v390 + 1);
  if (*(*(&v390 + 1) + 16))
  {
    sub_1BE053D04();
    sub_1BE052524();
    v317 = sub_1BE053D64();
    v325 = -1 << *(v316 + 32);
    v326 = v317 & ~v325;
    if ((*(v316 + 56 + ((v326 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v326))
    {
      v327 = ~v325;
      while (1)
      {
        v328 = 0xEE007265626D754ELL;
        if (*(*(v316 + 48) + v326))
        {
          if (*(*(v316 + 48) + v326) != 1)
          {
            0xEE006E6F69736976, v318, v319, v320, v321, v322, v323, v324;
            goto LABEL_25;
          }

          v328 = 0xED00006572757470;
        }

        v329 = sub_1BE053B84();
        v328, v330, v331, v332, v333, v334, v335, v336;
        if ((v329 & 1) == 0)
        {
          v326 = (v326 + 1) & v327;
          if ((*(v316 + 56 + ((v326 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v326))
          {
            continue;
          }
        }

        v148 = v329 ^ 1;
        goto LABEL_26;
      }
    }
  }

  v148 = 1;
LABEL_26:
  v392 = v389;
  v393 = v390;
  v394 = v391;
  v149 = v17;
  sub_1BD12F7B0(&v392, v149, KeyPath);

  KeyPath, v150, v151, v152, v153, v154, v155, v156;
  v395 = *(&v392 + 1);
  sub_1BD58532C(&v395);
  v396 = v393;
  sub_1BD58532C(&v396);
  v397 = *(&v393 + 1);
  sub_1BD58532C(&v397);
  *(v372 + OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_showTapToProvisionButton) = v148 & 1;
  v157 = swift_getKeyPath();
  sub_1BD1875A0(v149, v378);
  LODWORD(v367) = v378[0];
  v158 = v380;
  v368 = v379;
  v159 = v381;
  LODWORD(v366) = v382;
  sub_1BE053D04();
  sub_1BE052524();
  v160 = sub_1BE053D64();
  v168 = -1 << *(v159 + 32);
  v169 = v160 & ~v168;
  if ((*(v159 + 56 + ((v169 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v169))
  {
    v170 = ~v168;
    do
    {
      v171 = 0xEE007265626D754ELL;
      if (*(*(v159 + 48) + v169))
      {
        if (*(*(v159 + 48) + v169) != 1)
        {
          0xEE006E6F69736976, v161, v162, v163, v164, v165, v166, v167;
          goto LABEL_34;
        }

        v171 = 0xED00006572757470;
      }

      v172 = sub_1BE053B84();
      v171, v173, v174, v175, v176, v177, v178, v179;
      if (v172)
      {
        goto LABEL_34;
      }

      v169 = (v169 + 1) & v170;
    }

    while (((*(v159 + 56 + ((v169 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v169) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v373[0] = v159;
  sub_1BD2A939C(2, v169, isUniquelyReferenced_nonNull_native, v181, v182, v183, v184, v185);
  v159 = v373[0];
LABEL_34:
  LOBYTE(v389) = v367;
  v186 = v368;
  *(&v389 + 1) = v368;
  *&v390 = v158;
  *(&v390 + 1) = v159;
  v391 = v366;
  v187 = v149;
  sub_1BD12F7B0(&v389, v187, v157);
  v159, v188, v189, v190, v191, v192, v193, v194;
  v158, v195, v196, v197, v198, v199, v200, v201;
  v186, v202, v203, v204, v205, v206, v207, v208;

  v157, v209, v210, v211, v212, v213, v214, v215;
  v216 = swift_getKeyPath();
  sub_1BD1875A0(v187, &v383);
  sub_1BD7CD0C0();
  v217 = *(&v383 + 1);
  if (!*(*(&v383 + 1) + 16) || (sub_1BE053D04(), sub_1BE052524(), v218 = sub_1BE053D64(), v226 = -1 << *(v217 + 32), v227 = v218 & ~v226, ((*(v217 + 56 + ((v227 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v227) & 1) == 0))
  {
LABEL_42:
    v238 = 0;
    goto LABEL_43;
  }

  v228 = ~v226;
  while (2)
  {
    v229 = 0xEE007265626D754ELL;
    if (!*(*(v217 + 48) + v227))
    {
LABEL_40:
      v230 = sub_1BE053B84();
      v229, v231, v232, v233, v234, v235, v236, v237;
      if (v230)
      {
        goto LABEL_66;
      }

      v227 = (v227 + 1) & v228;
      if (((*(v217 + 56 + ((v227 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v227) & 1) == 0)
      {
        goto LABEL_42;
      }

      continue;
    }

    break;
  }

  if (*(*(v217 + 48) + v227) == 2)
  {
    v229 = 0xEE006E6F69736976;
    goto LABEL_40;
  }

  0xED00006572757470, v219, v220, v221, v222, v223, v224, v225;
LABEL_66:
  v337 = *(&v384 + 1);
  if (*(*(&v384 + 1) + 16))
  {
    sub_1BE053D04();
    sub_1BE052524();
    v338 = sub_1BE053D64();
    v346 = -1 << *(v337 + 32);
    v347 = v338 & ~v346;
    if ((*(v337 + 56 + ((v347 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v347))
    {
      v348 = ~v346;
      while (1)
      {
        v349 = 0xEE007265626D754ELL;
        if (*(*(v337 + 48) + v347))
        {
          if (*(*(v337 + 48) + v347) != 2)
          {
            0xED00006572757470, v339, v340, v341, v342, v343, v344, v345;
            goto LABEL_42;
          }

          v349 = 0xEE006E6F69736976;
        }

        v350 = sub_1BE053B84();
        v349, v351, v352, v353, v354, v355, v356, v357;
        if ((v350 & 1) == 0)
        {
          v347 = (v347 + 1) & v348;
          if ((*(v337 + 56 + ((v347 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v347))
          {
            continue;
          }
        }

        v238 = v350 ^ 1;
        goto LABEL_43;
      }
    }
  }

  v238 = 1;
LABEL_43:
  v386 = v383;
  v387 = v384;
  v388 = v385;
  v239 = v187;
  sub_1BD12F7B0(&v386, v239, v216);

  v216, v240, v241, v242, v243, v244, v245, v246;
  v398 = *(&v386 + 1);
  sub_1BD58532C(&v398);
  v399 = v387;
  sub_1BD58532C(&v399);
  v400[0] = *(&v387 + 1);
  sub_1BD58532C(v400);
  *(v372 + OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_showCameraCaptureButton) = v238 & 1;
  v247 = swift_getKeyPath();
  sub_1BD1875A0(v239, &v383);
  LODWORD(v368) = v383;
  v248 = v384;
  v369 = *(&v383 + 1);
  v249 = *(&v384 + 1);
  LODWORD(v367) = v385;
  sub_1BE053D04();
  sub_1BE052524();
  v250 = sub_1BE053D64();
  v258 = -1 << *(v249 + 32);
  v259 = v250 & ~v258;
  if (((*(v249 + 56 + ((v259 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v259) & 1) == 0)
  {
LABEL_50:
    v270 = swift_isUniquelyReferenced_nonNull_native();
    v373[0] = v249;
    sub_1BD2A939C(1, v259, v270, v271, v272, v273, v274, v275);
    v249 = v373[0];
    goto LABEL_51;
  }

  v260 = ~v258;
  while (2)
  {
    v261 = 0xEE007265626D754ELL;
    if (!*(*(v249 + 48) + v259))
    {
LABEL_48:
      v262 = sub_1BE053B84();
      v261, v263, v264, v265, v266, v267, v268, v269;
      if (v262)
      {
        goto LABEL_51;
      }

      v259 = (v259 + 1) & v260;
      if (((*(v249 + 56 + ((v259 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v259) & 1) == 0)
      {
        goto LABEL_50;
      }

      continue;
    }

    break;
  }

  if (*(*(v249 + 48) + v259) == 2)
  {
    v261 = 0xEE006E6F69736976;
    goto LABEL_48;
  }

  0xED00006572757470, v251, v252, v253, v254, v255, v256, v257;
LABEL_51:
  LOBYTE(v373[0]) = v368;
  v276 = v369;
  v373[1] = v369;
  v373[2] = v248;
  v373[3] = v249;
  v374 = v367;
  v277 = v239;
  sub_1BD12F7B0(v373, v277, v247);
  v370, v278, v279, v280, v281, v282, v283, v284;

  v249, v285, v286, v287, v288, v289, v290, v291;
  v248, v292, v293, v294, v295, v296, v297, v298;
  v276, v299, v300, v301, v302, v303, v304, v305;

  v247, v306, v307, v308, v309, v310, v311, v312;
  v313 = *(v372 + OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_coordinator);
  v314 = v363;
  *(v372 + OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_coordinator) = v363;
  v315 = v314;

  swift_unknownObjectWeakAssign();
  *&v315[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer + 8] = &off_1F3BB39D0;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1BD5850C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI31ProvisioningManualEntryFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD585100(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI31ProvisioningManualEntryFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD585154(uint64_t a1, void *a2, char a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1BD5851E4(v3, a2, a3 & 1, result, &off_1F3BAE6D0);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1BD5851E4(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = a4 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_provisioningResult;
  v9 = *(a4 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_provisioningResult);
  *v8 = a2;
  v10 = *(v8 + 8);
  *(v8 + 8) = a3 & 1;
  sub_1BD585394(v9, v10);
  v11 = a4 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    v14 = a2;
    sub_1BD8659A4(a1, a5, ObjectType, v12);

    return swift_unknownObjectRelease();
  }

  else
  {

    return a2;
  }
}

unint64_t sub_1BD5852D4()
{
  result = qword_1EBD55170;
  if (!qword_1EBD55170)
  {
    sub_1BE04B8D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55170);
  }

  return result;
}

uint64_t sub_1BD58532C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39F98, &qword_1BE0B9B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD585394(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

void sub_1BD5853A8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v190 = a2;
  v3 = sub_1BE04BD74();
  v185 = *(v3 - 8);
  v186 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v184 = &v183 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v183 - v8;
  v188 = a1;
  v10 = *(a1 + 48);
  if (!*(v10 + 16))
  {
    v192 = 0;
    v193 = 0;
    v196 = 0;
    v33 = 0;
    v189 = 0;
    v191 = 0;
    v34 = 1;
LABEL_60:
    v195 = 1;
    goto LABEL_61;
  }

  v191 = v7;
  sub_1BE053D04();
  sub_1BE052524();
  v11 = sub_1BE053D64();
  v18 = v10 + 56;
  v19 = -1 << *(v10 + 32);
  v20 = v11 & ~v19;
  if (((*(v10 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
    v33 = 0;
    v196 = 0;
    v193 = 0;
    v34 = 1;
    if (!*(v10 + 16))
    {
      goto LABEL_59;
    }

    goto LABEL_16;
  }

  v196 = v9;
  v21 = ~v19;
  v22 = 0x6C75466E49796170;
  do
  {
    if (*(*(v10 + 48) + v20) <= 1u)
    {
      if (!*(*(v10 + 48) + v20))
      {
        v23 = 0xE700000000000000;
        goto LABEL_10;
      }

      0xE90000000000006CLL, v12, v22, v13, v14, v15, v16, v17;
LABEL_29:
      v55 = sub_1BD59B6CC(*(v188 + 32));
      if (v56)
      {
        v33 = v55;
        v34 = v56;
      }

      else
      {
        v63 = v196;
        (*(v185 + 104))(v196, *MEMORY[0x1E69B8068], v186);
        v64 = PKPassKitBundle();
        if (!v64)
        {
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        v65 = v64;
        v33 = sub_1BE04B6F4();
        v34 = v66;

        (*(v185 + 8))(v63, v186);
      }

      if (*(v188 + 57) != 1)
      {
        v68 = 2;
        goto LABEL_58;
      }

      if (*(v188 + 56) > 1u)
      {
        if (*(v188 + 56) == 2)
        {
          v67 = 0xEC00000073746E65;
        }

        else
        {
          v67 = 0xE700000000000000;
        }
      }

      else
      {
        if (*(v188 + 56))
        {
          0xE90000000000006CLL, v56, v57, v58, v59, v60, v61, v62;
          v68 = 1;
          goto LABEL_58;
        }

        v67 = 0xE700000000000000;
      }

      v69 = sub_1BE053B84();
      v67, v70, v71, v72, v73, v74, v75, v76;
      v68 = 1;
      if ((v69 & 1) == 0)
      {
        v68 = 2;
      }

LABEL_58:
      v196 = v68;
      v92 = *MEMORY[0x1E69B9A10];
      sub_1BE048C84();
      v193 = v92;
      v93 = v92;
      if (!*(v10 + 16))
      {
        goto LABEL_59;
      }

      goto LABEL_16;
    }

    if (*(*(v10 + 48) + v20) == 2)
    {
      v23 = 0xEC00000073746E65;
    }

    else
    {
      v23 = 0xE700000000000000;
    }

LABEL_10:
    v24 = v22;
    v25 = sub_1BE053B84();
    v23, v26, v27, v28, v29, v30, v31, v32;
    if (v25)
    {
      goto LABEL_29;
    }

    v20 = (v20 + 1) & v21;
    v22 = v24;
  }

  while (((*(v18 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
  v33 = 0;
  v196 = 0;
  v193 = 0;
  v34 = 1;
  if (!*(v10 + 16))
  {
LABEL_59:
    v191 = 0;
    v192 = 0;
    v189 = 0;
    goto LABEL_60;
  }

LABEL_16:
  v187 = v33;
  sub_1BE053D04();
  sub_1BE052524();
  v35 = sub_1BE053D64();
  v43 = -1 << *(v10 + 32);
  v44 = v35 & ~v43;
  if (((*(v18 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
  {
    v191 = 0;
    v192 = 0;
    v189 = 0;
    v195 = 1;
    v33 = v187;
    goto LABEL_61;
  }

  v194 = v34;
  v45 = ~v43;
  v195 = 1;
  while (2)
  {
    if (*(*(v10 + 48) + v44) <= 1u)
    {
      if (*(*(v10 + 48) + v44))
      {
        v46 = 0xE90000000000006CLL;
      }

      else
      {
        v46 = 0xE700000000000000;
      }

LABEL_24:
      v47 = sub_1BE053B84();
      v46, v48, v49, v50, v51, v52, v53, v54;
      if (v47)
      {
        goto LABEL_45;
      }

      v44 = (v44 + 1) & v45;
      if (((*(v18 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
      {
        v191 = 0;
        v192 = 0;
        v189 = 0;
        v34 = v194;
        v33 = v187;
        goto LABEL_61;
      }

      continue;
    }

    break;
  }

  if (*(*(v10 + 48) + v44) == 3)
  {
    v46 = 0xE700000000000000;
    goto LABEL_24;
  }

  0xEC00000073746E65, v36, v37, v38, v39, v40, v41, v42;
LABEL_45:
  v77 = sub_1BD59B6D8(*(v188 + 32));
  v195 = v78;
  if (v78)
  {
    v192 = v77;
    v34 = v194;
    v33 = v187;
    goto LABEL_49;
  }

  v86 = v185;
  v85 = v186;
  v87 = v191;
  (*(v185 + 104))(v191, *MEMORY[0x1E69B8078], v186);
  v88 = PKPassKitBundle();
  v34 = v194;
  v33 = v187;
  if (!v88)
  {
LABEL_101:
    __break(1u);
    return;
  }

  v89 = v88;
  v192 = sub_1BE04B6F4();
  v195 = v90;

  (*(v86 + 8))(v87, v85);
LABEL_49:
  if (*(v188 + 57) == 1)
  {
    if (*(v188 + 56) > 1u)
    {
      if (*(v188 + 56) != 2)
      {
        v91 = 0xE700000000000000;
        goto LABEL_95;
      }

      0xEC00000073746E65, v78, v79, v80, v81, v82, v83, v84;
      v189 = 1;
    }

    else
    {
      if (*(v188 + 56))
      {
        v91 = 0xE90000000000006CLL;
      }

      else
      {
        v91 = 0xE700000000000000;
      }

LABEL_95:
      v172 = sub_1BE053B84();
      v91, v173, v174, v175, v176, v177, v178, v179;
      v180 = 1;
      if ((v172 & 1) == 0)
      {
        v180 = 2;
      }

      v189 = v180;
      v33 = v187;
    }
  }

  else
  {
    v189 = 2;
  }

  v181 = *MEMORY[0x1E69B98A0];
  sub_1BE048C84();
  v191 = v181;
  v182 = v181;
LABEL_61:
  v94 = *(v10 + 16);
  v194 = v34;
  if (!v94)
  {
    v115 = 0;
    v116 = 0;
    v117 = 0;
    v120 = 1;
LABEL_76:
    v118 = v190;
    v119 = v196;
    goto LABEL_93;
  }

  sub_1BE053D04();
  sub_1BE052524();
  v95 = sub_1BE053D64();
  v103 = -1 << *(v10 + 32);
  v104 = v95 & ~v103;
  if (((*(v10 + 56 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104) & 1) == 0)
  {
    v115 = 0;
    v116 = 0;
    v117 = 0;
    v120 = 1;
    v34 = v194;
    goto LABEL_76;
  }

  v187 = v33;
  v105 = ~v103;
  while (*(*(v10 + 48) + v104) <= 1u)
  {
    if (*(*(v10 + 48) + v104))
    {
      v106 = 0xE90000000000006CLL;
    }

    else
    {
      v106 = 0xE700000000000000;
    }

LABEL_71:
    v107 = sub_1BE053B84();
    v106, v108, v109, v110, v111, v112, v113, v114;
    if (v107)
    {
      goto LABEL_78;
    }

    v104 = (v104 + 1) & v105;
    if (((*(v10 + 56 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104) & 1) == 0)
    {
      v115 = 0;
      v116 = 0;
      v117 = 0;
      v34 = v194;
      v33 = v187;
      v118 = v190;
      v119 = v196;
      v120 = 1;
      goto LABEL_93;
    }
  }

  if (*(*(v10 + 48) + v104) == 2)
  {
    v106 = 0xEC00000073746E65;
    goto LABEL_71;
  }

  0xE700000000000000, v96, v97, v98, v99, v100, v101, v102;
LABEL_78:
  v122 = v185;
  v121 = v186;
  v123 = v184;
  (*(v185 + 104))(v184, *MEMORY[0x1E69B8088], v186);
  v124 = PKPassKitBundle();
  if (!v124)
  {
    __break(1u);
    goto LABEL_100;
  }

  v125 = v124;
  v115 = sub_1BE04B6F4();
  v127 = v126;

  (*(v122 + 8))(v123, v121);
  v33 = v187;
  v34 = v194;
  v119 = v196;
  if (*(v188 + 57) == 1)
  {
    if (*(v188 + 56) > 1u)
    {
      v118 = v190;
      if (*(v188 + 56) == 2)
      {
        v135 = 0xEC00000073746E65;
        goto LABEL_88;
      }

      0xE700000000000000, v128, v129, v130, v131, v132, v133, v134;
      v136 = 1;
    }

    else
    {
      if (*(v188 + 56))
      {
        v135 = 0xE90000000000006CLL;
      }

      else
      {
        v135 = 0xE700000000000000;
      }

      v118 = v190;
LABEL_88:
      v137 = sub_1BE053B84();
      v135, v138, v139, v140, v141, v142, v143, v144;
      if (v137)
      {
        v136 = 1;
      }

      else
      {
        v136 = 2;
      }
    }
  }

  else
  {
    v136 = 2;
    v118 = v190;
  }

  v145 = *MEMORY[0x1E69B9B90];
  sub_1BE048C84();
  v117 = v145;
  v146 = v145;
  v120 = v127;
  v116 = v136;
LABEL_93:
  v196 = v119;
  sub_1BD587110(v33, v34, 0, 0, v119, v193);
  v147 = v33;
  v148 = v191;
  v149 = v192;
  v150 = v195;
  v151 = v189;
  sub_1BD587110(v192, v195, 0, 0, v189, v191);
  sub_1BD587110(v115, v120, 0, 0, v116, v117);
  sub_1BD587160(v149, v150, 0, 0, v151, v148, v152, v153);
  v154 = v147;
  v155 = v147;
  v156 = v193;
  v157 = v194;
  v158 = v196;
  sub_1BD587160(v154, v194, 0, 0, v196, v193, v159, v160);
  sub_1BD587160(v115, v120, 0, 0, v116, v117, v161, v162);
  *v118 = v155;
  v118[1] = v157;
  v118[2] = 0;
  v118[3] = 0;
  v118[4] = v158;
  v118[5] = v156;
  v163 = v191;
  v164 = v192;
  v165 = v195;
  v118[6] = v192;
  v118[7] = v165;
  v118[8] = 0;
  v118[9] = 0;
  v118[10] = v151;
  v118[11] = v163;
  v118[12] = v115;
  v118[13] = v120;
  v118[14] = 0;
  v118[15] = 0;
  v118[16] = v116;
  v118[17] = v117;
  sub_1BD587160(v115, v120, 0, 0, v116, v117, v166, v167);
  sub_1BD587160(v164, v165, 0, 0, v151, v163, v168, v169);
  sub_1BD587160(v155, v194, 0, 0, v196, v193, v170, v171);
}

double sub_1BD585EFC@<D0>(uint64_t a2@<X8>)
{
  v4 = v2[1];
  v24[0] = *v2;
  v24[1] = v4;
  v25[0] = v2[2];
  *(v25 + 10) = *(v2 + 42);
  v5 = sub_1BE04F504();
  v23 = 0;
  sub_1BD5853A8(v24, &v13);
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v26 = v13;
  v27 = v14;
  v35[6] = v19;
  v35[7] = v20;
  v35[8] = v21;
  v35[2] = v15;
  v35[3] = v16;
  v35[4] = v17;
  v35[5] = v18;
  v35[0] = v13;
  v35[1] = v14;
  sub_1BD0DE19C(&v26, &v12, &qword_1EBD4B200, &qword_1BE0E2CA8);
  sub_1BD0DE53C(v35, &qword_1EBD4B200, &qword_1BE0E2CA8);
  *&v22[103] = v32;
  *&v22[87] = v31;
  *&v22[39] = v28;
  *&v22[23] = v27;
  *&v22[119] = v33;
  *&v22[135] = v34;
  *&v22[55] = v29;
  *&v22[71] = v30;
  *&v22[7] = v26;
  v6 = *&v22[112];
  *(a2 + 113) = *&v22[96];
  *(a2 + 129) = v6;
  *(a2 + 145) = *&v22[128];
  v7 = *&v22[48];
  *(a2 + 49) = *&v22[32];
  *(a2 + 65) = v7;
  v8 = *&v22[80];
  *(a2 + 81) = *&v22[64];
  *(a2 + 97) = v8;
  result = *v22;
  v10 = *&v22[16];
  *(a2 + 17) = *v22;
  v11 = v23;
  *a2 = v5;
  *(a2 + 8) = 0x4018000000000000;
  *(a2 + 16) = v11;
  *(a2 + 160) = *&v22[143];
  *(a2 + 33) = v10;
  return result;
}

uint64_t sub_1BD586080()
{
  v1 = *v0;
  sub_1BE053D04();
  v2 = 0xE700000000000000;
  v3 = 0xEC00000073746E65;
  if (v1 != 2)
  {
    v3 = 0xE700000000000000;
  }

  if (v1)
  {
    v2 = 0xE90000000000006CLL;
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_1BE052524();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1BE053D64();
}

void sub_1BD586150(uint64_t a1)
{
  v2 = 0xE700000000000000;
  v3 = 0xEC00000073746E65;
  if (*v1 != 2)
  {
    v3 = 0xE700000000000000;
  }

  if (*v1)
  {
    v2 = 0xE90000000000006CLL;
  }

  if (*v1 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_1BE052524();

  v4, v5, v6, v7, v8, v9, v10, v11;
}

uint64_t sub_1BD58620C(uint64_t a1)
{
  v2 = *v1;
  sub_1BE053D04();
  v3 = 0xE700000000000000;
  v4 = 0xEC00000073746E65;
  if (v2 != 2)
  {
    v4 = 0xE700000000000000;
  }

  if (v2)
  {
    v3 = 0xE90000000000006CLL;
  }

  if (v2 <= 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  sub_1BE052524();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return sub_1BE053D64();
}

unint64_t sub_1BD5862D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BD5870C4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1BD586308(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEC00000073746E65;
  v5 = 0x6D6C6C6174736E69;
  if (*v1 != 2)
  {
    v5 = 0x73647261776572;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x6C75466E49796170;
    v2 = 0xE90000000000006CLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1BD586394(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0xD000000000000011;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (v8)
  {
    v10 = 0xE700000000000000;
  }

  else
  {
    v10 = 0x80000001BE117CD0;
  }

  if (*a2)
  {
    v11 = 0xD000000000000011;
  }

  else
  {
    v11 = 0x746C7561666564;
  }

  if (*a2)
  {
    v12 = 0x80000001BE117CD0;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  if (v9 == v11 && v10 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1BE053B84();
  }

  v10, a2, v11, a4, a5, a6, a7, a8;
  v12, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}

uint64_t sub_1BD586440()
{
  v1 = *v0;
  sub_1BE053D04();
  if (v1)
  {
    v2 = 0x80000001BE117CD0;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  sub_1BE052524();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_1BE053D64();
}

void sub_1BD5864C8(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0x80000001BE117CD0;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  sub_1BE052524();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

uint64_t sub_1BD58653C(uint64_t a1)
{
  v2 = *v1;
  sub_1BE053D04();
  if (v2)
  {
    v3 = 0x80000001BE117CD0;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_1BE052524();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1BE053D64();
}

void sub_1BD5865C0(void *a1@<X0>, char *a2@<X8>)
{
  v3 = a1[1];
  v4 = sub_1BE053A44();
  v3, v5, v6, v7, v8, v9, v10, v11;
  if (v4 == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (!v4)
  {
    v12 = 0;
  }

  *a2 = v12;
}